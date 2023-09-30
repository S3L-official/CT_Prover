; ModuleID = 'crypto_stream_chacha20-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.randombytes_implementation = type { i8* ()*, i32 ()*, void ()*, i32 (i32)*, void (i8*, i64)*, i32 ()* }
%struct.SysRandom_ = type { i32, i32, i32 }
%struct.smack_value = type { i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.chacha_ctx = type { [16 x i32] }

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
@sigma = internal constant [16 x i8] c"expand 32-byte k", align 16, !dbg !104, !psr.id !118
@canary = internal global [16 x i8] zeroinitializer, align 16, !dbg !119, !psr.id !129

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_wrapper(i8* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !138 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !142, metadata !DIExpression()), !dbg !143, !psr.id !144
  call void @llvm.dbg.value(metadata i64 %1, metadata !145, metadata !DIExpression()), !dbg !143, !psr.id !146
  call void @llvm.dbg.value(metadata i8* %2, metadata !147, metadata !DIExpression()), !dbg !143, !psr.id !148
  call void @llvm.dbg.value(metadata i8* %3, metadata !149, metadata !DIExpression()), !dbg !143, !psr.id !150
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !151, !psr.id !152
  call void @public_in(%struct.smack_value* %5), !dbg !153, !psr.id !154
  %6 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %1), !dbg !155, !psr.id !156
  call void @public_in(%struct.smack_value* %6), !dbg !157, !psr.id !158
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !159, !psr.id !160
  call void @public_in(%struct.smack_value* %7), !dbg !161, !psr.id !162
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !163, !psr.id !164
  call void @public_in(%struct.smack_value* %8), !dbg !165, !psr.id !166
  %9 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 8), !dbg !167, !psr.id !168
  call void @public_in(%struct.smack_value* %9), !dbg !169, !psr.id !170
  %10 = call i32 @crypto_stream_chacha20(i8* %0, i64 %1, i8* %2, i8* %3), !dbg !171, !psr.id !172
  ret i32 %10, !dbg !173, !psr.id !174
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypto_stream_chacha20_wrapper_t() #0 !dbg !175 {
  %1 = alloca i8, align 1, !psr.id !176
  %2 = alloca i8, align 1, !psr.id !177
  %3 = alloca i8, align 1, !psr.id !178
  call void @llvm.dbg.declare(metadata i8* %1, metadata !179, metadata !DIExpression()), !dbg !180, !psr.id !181
  %4 = call zeroext i8 (...) @gout(), !dbg !182, !psr.id !183
  store i8 %4, i8* %1, align 1, !dbg !180, !psr.id !184
  call void @llvm.dbg.declare(metadata i8* %2, metadata !185, metadata !DIExpression()), !dbg !186, !psr.id !187
  %5 = call zeroext i8 (...) @gin(), !dbg !188, !psr.id !189
  store i8 %5, i8* %2, align 1, !dbg !186, !psr.id !190
  call void @llvm.dbg.declare(metadata i8* %3, metadata !191, metadata !DIExpression()), !dbg !192, !psr.id !193
  %6 = call zeroext i8 (...) @gk(), !dbg !194, !psr.id !195
  store i8 %6, i8* %3, align 1, !dbg !192, !psr.id !196
  %7 = call zeroext i8 (...) @gc(), !dbg !197, !psr.id !198
  call void @llvm.dbg.value(metadata i8 %7, metadata !199, metadata !DIExpression()), !dbg !200, !psr.id !201
  call void @llvm.dbg.value(metadata i8* %1, metadata !202, metadata !DIExpression()), !dbg !200, !psr.id !203
  call void @llvm.dbg.value(metadata i8* %2, metadata !204, metadata !DIExpression()), !dbg !200, !psr.id !205
  call void @llvm.dbg.value(metadata i8* %3, metadata !206, metadata !DIExpression()), !dbg !200, !psr.id !207
  %8 = call i64 (...) @gclen(), !dbg !208, !psr.id !209
  call void @llvm.dbg.value(metadata i64 %8, metadata !210, metadata !DIExpression()), !dbg !200, !psr.id !211
  %9 = call i32 @crypto_stream_chacha20(i8* %1, i64 %8, i8* %2, i8* %3), !dbg !212, !psr.id !213
  ret void, !dbg !214, !psr.id !215
}

declare dso_local zeroext i8 @gout(...) #2

declare dso_local zeroext i8 @gin(...) #2

declare dso_local zeroext i8 @gk(...) #2

declare dso_local zeroext i8 @gc(...) #2

declare dso_local i64 @gclen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* %0) #0 !dbg !216 {
  call void @llvm.dbg.value(metadata %struct.randombytes_implementation* %0, metadata !220, metadata !DIExpression()), !dbg !221, !psr.id !222
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** @implementation, align 8, !dbg !223, !psr.id !224
  ret i32 0, !dbg !225, !psr.id !226
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_implementation_name() #0 !dbg !227 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !228, !psr.id !229
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0, !dbg !230, !psr.id !231
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !230, !psr.id !232
  %4 = call i8* %3(), !dbg !228, !psr.id !233
  ret i8* %4, !dbg !234, !psr.id !235
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_random() #0 !dbg !236 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !237, !psr.id !238
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1, !dbg !239, !psr.id !240
  %3 = load i32 ()*, i32 ()** %2, align 8, !dbg !239, !psr.id !241
  %4 = call i32 %3(), !dbg !237, !psr.id !242
  ret i32 %4, !dbg !243, !psr.id !244
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_stir() #0 !dbg !245 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !246, !psr.id !248
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !249, !psr.id !250
  br i1 %2, label %3, label %12, !dbg !251, !psr.id !252

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !253, !psr.id !254
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2, !dbg !255, !psr.id !256
  %6 = load void ()*, void ()** %5, align 8, !dbg !255, !psr.id !257
  %7 = icmp ne void ()* %6, null, !dbg !258, !psr.id !259
  br i1 %7, label %8, label %12, !dbg !260, !psr.id !261

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !262, !psr.id !264
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2, !dbg !265, !psr.id !266
  %11 = load void ()*, void ()** %10, align 8, !dbg !265, !psr.id !267
  call void %11(), !dbg !262, !psr.id !268
  br label %12, !dbg !269, !psr.id !270

12:                                               ; preds = %8, %3, %0
  ret void, !dbg !271, !psr.id !272
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_uniform(i32 %0) #0 !dbg !273 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !274, metadata !DIExpression()), !dbg !275, !psr.id !276
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !277, !psr.id !279
  %3 = icmp ne %struct.randombytes_implementation* %2, null, !dbg !280, !psr.id !281
  br i1 %3, label %4, label %14, !dbg !282, !psr.id !283

4:                                                ; preds = %1
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !284, !psr.id !285
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 3, !dbg !286, !psr.id !287
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8, !dbg !286, !psr.id !288
  %8 = icmp ne i32 (i32)* %7, null, !dbg !289, !psr.id !290
  br i1 %8, label %9, label %14, !dbg !291, !psr.id !292

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !293, !psr.id !295
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 3, !dbg !296, !psr.id !297
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8, !dbg !296, !psr.id !298
  %13 = call i32 %12(i32 %0), !dbg !293, !psr.id !299
  br label %26, !dbg !300, !psr.id !301

14:                                               ; preds = %4, %1
  %15 = icmp ult i32 %0, 2, !dbg !302, !psr.id !304
  br i1 %15, label %16, label %17, !dbg !305, !psr.id !306

16:                                               ; preds = %14
  br label %26, !dbg !307, !psr.id !309

17:                                               ; preds = %14
  %18 = sub i32 0, %0, !dbg !310, !psr.id !311
  %19 = urem i32 %18, %0, !dbg !312, !psr.id !313
  call void @llvm.dbg.value(metadata i32 %19, metadata !314, metadata !DIExpression()), !dbg !275, !psr.id !315
  br label %20, !dbg !316, !psr.id !317

20:                                               ; preds = %22, %17
  %21 = call i32 @randombytes_random(), !dbg !318, !psr.id !320
  call void @llvm.dbg.value(metadata i32 %21, metadata !321, metadata !DIExpression()), !dbg !275, !psr.id !322
  br label %22, !dbg !323, !psr.id !324

22:                                               ; preds = %20
  %23 = icmp ult i32 %21, %19, !dbg !325, !psr.id !326
  br i1 %23, label %20, label %24, !dbg !323, !llvm.loop !327, !psr.id !330

24:                                               ; preds = %22
  %25 = urem i32 %21, %0, !dbg !331, !psr.id !332
  br label %26, !dbg !333, !psr.id !334

26:                                               ; preds = %24, %16, %9
  %.0 = phi i32 [ %13, %9 ], [ 0, %16 ], [ %25, %24 ], !dbg !275, !psr.id !335
  ret i32 %.0, !dbg !336, !psr.id !337
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_buf(i8* %0, i64 %1) #0 !dbg !338 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !339, metadata !DIExpression()), !dbg !340, !psr.id !341
  call void @llvm.dbg.value(metadata i64 %1, metadata !342, metadata !DIExpression()), !dbg !340, !psr.id !343
  %3 = icmp ugt i64 %1, 0, !dbg !344, !psr.id !346
  br i1 %3, label %4, label %8, !dbg !347, !psr.id !348

4:                                                ; preds = %2
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !349, !psr.id !351
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 4, !dbg !352, !psr.id !353
  %7 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !352, !psr.id !354
  call void %7(i8* %0, i64 %1), !dbg !349, !psr.id !355
  br label %8, !dbg !356, !psr.id !357

8:                                                ; preds = %4, %2
  ret void, !dbg !358, !psr.id !359
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_close() #0 !dbg !360 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !361, !psr.id !363
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !364, !psr.id !365
  br i1 %2, label %3, label %13, !dbg !366, !psr.id !367

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !368, !psr.id !369
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 5, !dbg !370, !psr.id !371
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !370, !psr.id !372
  %7 = icmp ne i32 ()* %6, null, !dbg !373, !psr.id !374
  br i1 %7, label %8, label %13, !dbg !375, !psr.id !376

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !377, !psr.id !379
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 5, !dbg !380, !psr.id !381
  %11 = load i32 ()*, i32 ()** %10, align 8, !dbg !380, !psr.id !382
  %12 = call i32 %11(), !dbg !377, !psr.id !383
  br label %14, !dbg !384, !psr.id !385

13:                                               ; preds = %3, %0
  br label %14, !dbg !386, !psr.id !387

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !388, !psr.id !389
  ret i32 %.0, !dbg !390, !psr.id !391
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(i8* %0, i64 %1) #0 !dbg !392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !397, metadata !DIExpression()), !dbg !398, !psr.id !399
  call void @llvm.dbg.value(metadata i64 %1, metadata !400, metadata !DIExpression()), !dbg !398, !psr.id !401
  %3 = icmp ule i64 %1, -1, !dbg !402, !psr.id !405
  br i1 %3, label %4, label %5, !dbg !406, !psr.id !407

4:                                                ; preds = %2
  br label %9, !dbg !406, !psr.id !408

5:                                                ; preds = %2
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* @.str, i64 0, i64 0, !psr.id !409
  %7 = getelementptr inbounds [53 x i8], [53 x i8]* @.str.1, i64 0, i64 0, !psr.id !410
  %8 = getelementptr inbounds [65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i64 0, i64 0, !psr.id !411
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !402, !psr.id !412
  unreachable, !dbg !402, !psr.id !413

9:                                                ; preds = %4
  call void @randombytes_buf(i8* %0, i64 %1), !dbg !414, !psr.id !415
  ret void, !dbg !416, !psr.id !417
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 !dbg !418 {
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.7, i64 0, i64 0, !psr.id !419
  ret i8* %1, !dbg !420, !psr.id !421
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom() #0 !dbg !422 {
  %1 = alloca i32, align 4, !psr.id !423
  call void @llvm.dbg.declare(metadata i32* %1, metadata !424, metadata !DIExpression()), !dbg !425, !psr.id !426
  %2 = bitcast i32* %1 to i8*, !dbg !427, !psr.id !428
  call void @randombytes_sysrandom_buf(i8* %2, i64 4), !dbg !429, !psr.id !430
  %3 = load i32, i32* %1, align 4, !dbg !431, !psr.id !432
  ret i32 %3, !dbg !433, !psr.id !434
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_stir() #0 !dbg !435 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !436
  %2 = load i32, i32* %1, align 4, !dbg !437, !psr.id !439
  %3 = icmp eq i32 %2, 0, !dbg !440, !psr.id !441
  br i1 %3, label %4, label %6, !dbg !442, !psr.id !443

4:                                                ; preds = %0
  call void @randombytes_sysrandom_init(), !dbg !444, !psr.id !446
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !447
  store i32 1, i32* %5, align 4, !dbg !448, !psr.id !449
  br label %6, !dbg !450, !psr.id !451

6:                                                ; preds = %4, %0
  ret void, !dbg !452, !psr.id !453
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_buf(i8* %0, i64 %1) #0 !dbg !454 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !455, metadata !DIExpression()), !dbg !456, !psr.id !457
  call void @llvm.dbg.value(metadata i64 %1, metadata !458, metadata !DIExpression()), !dbg !456, !psr.id !459
  call void @randombytes_sysrandom_stir_if_needed(), !dbg !460, !psr.id !461
  %3 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !462
  %4 = load i32, i32* %3, align 4, !dbg !463, !psr.id !465
  %5 = icmp ne i32 %4, 0, !dbg !466, !psr.id !467
  br i1 %5, label %6, label %11, !dbg !468, !psr.id !469

6:                                                ; preds = %2
  %7 = call i32 @randombytes_linux_getrandom(i8* %0, i64 %1), !dbg !470, !psr.id !473
  %8 = icmp ne i32 %7, 0, !dbg !474, !psr.id !475
  br i1 %8, label %9, label %10, !dbg !476, !psr.id !477

9:                                                ; preds = %6
  call void @abort() #8, !dbg !478, !psr.id !480
  br label %UnifiedUnreachableBlock, !psr.id !481

10:                                               ; preds = %6
  br label %21, !dbg !482, !psr.id !483

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !484
  %13 = load i32, i32* %12, align 4, !dbg !485, !psr.id !487
  %14 = icmp eq i32 %13, -1, !dbg !488, !psr.id !489
  br i1 %14, label %20, label %15, !dbg !490, !psr.id !491

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !492
  %17 = load i32, i32* %16, align 4, !dbg !493, !psr.id !494
  %18 = call i64 @safe_read(i32 %17, i8* %0, i64 %1), !dbg !495, !psr.id !496
  %19 = icmp ne i64 %18, %1, !dbg !497, !psr.id !498
  br i1 %19, label %20, label %21, !dbg !499, !psr.id !500

20:                                               ; preds = %15, %11
  call void @abort() #8, !dbg !501, !psr.id !503
  br label %UnifiedUnreachableBlock, !psr.id !504

21:                                               ; preds = %15, %10
  ret void, !dbg !505, !psr.id !506

UnifiedUnreachableBlock:                          ; preds = %20, %9
  unreachable, !psr.id !507
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 !dbg !508 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !509, metadata !DIExpression()), !dbg !510, !psr.id !511
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !512
  %2 = load i32, i32* %1, align 4, !dbg !513, !psr.id !515
  %3 = icmp ne i32 %2, -1, !dbg !516, !psr.id !517
  br i1 %3, label %4, label %12, !dbg !518, !psr.id !519

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !520
  %6 = load i32, i32* %5, align 4, !dbg !521, !psr.id !522
  %7 = call i32 @close(i32 %6), !dbg !523, !psr.id !524
  %8 = icmp eq i32 %7, 0, !dbg !525, !psr.id !526
  br i1 %8, label %9, label %12, !dbg !527, !psr.id !528

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !529
  store i32 -1, i32* %10, align 4, !dbg !530, !psr.id !532
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !533
  store i32 0, i32* %11, align 4, !dbg !534, !psr.id !535
  call void @llvm.dbg.value(metadata i32 0, metadata !509, metadata !DIExpression()), !dbg !510, !psr.id !536
  br label %12, !dbg !537, !psr.id !538

12:                                               ; preds = %9, %4, %0
  %.0 = phi i32 [ 0, %9 ], [ -1, %4 ], [ -1, %0 ], !dbg !510, !psr.id !539
  call void @llvm.dbg.value(metadata i32 %.0, metadata !509, metadata !DIExpression()), !dbg !510, !psr.id !540
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !541
  %14 = load i32, i32* %13, align 4, !dbg !542, !psr.id !544
  %15 = icmp ne i32 %14, 0, !dbg !545, !psr.id !546
  br i1 %15, label %16, label %17, !dbg !547, !psr.id !548

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !509, metadata !DIExpression()), !dbg !510, !psr.id !549
  br label %17, !dbg !550, !psr.id !552

17:                                               ; preds = %16, %12
  %.1 = phi i32 [ 0, %16 ], [ %.0, %12 ], !dbg !510, !psr.id !553
  call void @llvm.dbg.value(metadata i32 %.1, metadata !509, metadata !DIExpression()), !dbg !510, !psr.id !554
  ret i32 %.1, !dbg !555, !psr.id !556
}

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 !dbg !557 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !558
  %2 = load i32, i32* %1, align 4, !dbg !559, !psr.id !561
  %3 = icmp eq i32 %2, 0, !dbg !562, !psr.id !563
  br i1 %3, label %4, label %5, !dbg !564, !psr.id !565

4:                                                ; preds = %0
  call void @randombytes_sysrandom_stir(), !dbg !566, !psr.id !568
  br label %5, !dbg !569, !psr.id !570

5:                                                ; preds = %4, %0
  ret void, !dbg !571, !psr.id !572
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !573 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !576, metadata !DIExpression()), !dbg !577, !psr.id !578
  call void @llvm.dbg.value(metadata i64 %1, metadata !579, metadata !DIExpression()), !dbg !577, !psr.id !580
  call void @llvm.dbg.value(metadata i8* %0, metadata !581, metadata !DIExpression()), !dbg !577, !psr.id !582
  call void @llvm.dbg.value(metadata i64 256, metadata !583, metadata !DIExpression()), !dbg !577, !psr.id !584
  br label %3, !dbg !585, !psr.id !586

3:                                                ; preds = %20, %2
  %.03 = phi i8* [ %0, %2 ], [ %19, %20 ], !dbg !577, !psr.id !587
  %.02 = phi i64 [ %1, %2 ], [ %18, %20 ], !psr.id !588
  %.01 = phi i64 [ 256, %2 ], [ %.1, %20 ], !dbg !577, !psr.id !589
  call void @llvm.dbg.value(metadata i64 %.01, metadata !583, metadata !DIExpression()), !dbg !577, !psr.id !590
  call void @llvm.dbg.value(metadata i64 %.02, metadata !579, metadata !DIExpression()), !dbg !577, !psr.id !591
  call void @llvm.dbg.value(metadata i8* %.03, metadata !581, metadata !DIExpression()), !dbg !577, !psr.id !592
  %4 = icmp ult i64 %.02, %.01, !dbg !593, !psr.id !596
  br i1 %4, label %5, label %13, !dbg !597, !psr.id !598

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 %.02, metadata !583, metadata !DIExpression()), !dbg !577, !psr.id !599
  %6 = icmp ugt i64 %.02, 0, !dbg !600, !psr.id !604
  br i1 %6, label %7, label %8, !dbg !605, !psr.id !606

7:                                                ; preds = %5
  br label %12, !dbg !605, !psr.id !607

8:                                                ; preds = %5
  %9 = getelementptr inbounds [25 x i8], [25 x i8]* @.str.3, i64 0, i64 0, !psr.id !608
  %10 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !609
  %11 = getelementptr inbounds [53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i64 0, i64 0, !psr.id !610
  call void @__assert_fail(i8* %9, i8* %10, i32 159, i8* %11) #8, !dbg !600, !psr.id !611
  unreachable, !dbg !600, !psr.id !612

12:                                               ; preds = %7
  br label %13, !dbg !613, !psr.id !614

13:                                               ; preds = %12, %3
  %.1 = phi i64 [ %.02, %12 ], [ %.01, %3 ], !dbg !577, !psr.id !615
  call void @llvm.dbg.value(metadata i64 %.1, metadata !583, metadata !DIExpression()), !dbg !577, !psr.id !616
  %14 = call i32 @_randombytes_linux_getrandom(i8* %.03, i64 %.1), !dbg !617, !psr.id !619
  %15 = icmp ne i32 %14, 0, !dbg !620, !psr.id !621
  br i1 %15, label %16, label %17, !dbg !622, !psr.id !623

16:                                               ; preds = %13
  br label %23, !dbg !624, !psr.id !626

17:                                               ; preds = %13
  %18 = sub i64 %.02, %.1, !dbg !627, !psr.id !628
  call void @llvm.dbg.value(metadata i64 %18, metadata !579, metadata !DIExpression()), !dbg !577, !psr.id !629
  %19 = getelementptr inbounds i8, i8* %.03, i64 %.1, !dbg !630, !psr.id !631
  call void @llvm.dbg.value(metadata i8* %19, metadata !581, metadata !DIExpression()), !dbg !577, !psr.id !632
  br label %20, !dbg !633, !psr.id !634

20:                                               ; preds = %17
  %21 = icmp ugt i64 %18, 0, !dbg !635, !psr.id !636
  br i1 %21, label %3, label %22, !dbg !633, !llvm.loop !637, !psr.id !639

22:                                               ; preds = %20
  br label %23, !dbg !640, !psr.id !641

23:                                               ; preds = %22, %16
  %.0 = phi i32 [ -1, %16 ], [ 0, %22 ], !dbg !577, !psr.id !642
  ret i32 %.0, !dbg !643, !psr.id !644
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 !dbg !645 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !649, metadata !DIExpression()), !dbg !650, !psr.id !651
  call void @llvm.dbg.value(metadata i8* %1, metadata !652, metadata !DIExpression()), !dbg !650, !psr.id !653
  call void @llvm.dbg.value(metadata i64 %2, metadata !654, metadata !DIExpression()), !dbg !650, !psr.id !655
  call void @llvm.dbg.value(metadata i8* %1, metadata !656, metadata !DIExpression()), !dbg !650, !psr.id !657
  %4 = icmp ugt i64 %2, 0, !dbg !658, !psr.id !661
  br i1 %4, label %5, label %6, !dbg !662, !psr.id !663

5:                                                ; preds = %3
  br label %10, !dbg !662, !psr.id !664

6:                                                ; preds = %3
  %7 = getelementptr inbounds [19 x i8], [19 x i8]* @.str.6, i64 0, i64 0, !psr.id !665
  %8 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !666
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i64 0, i64 0, !psr.id !667
  call void @__assert_fail(i8* %7, i8* %8, i32 82, i8* %9) #8, !dbg !658, !psr.id !668
  unreachable, !dbg !658, !psr.id !669

10:                                               ; preds = %5
  br label %11, !dbg !670, !psr.id !671

11:                                               ; preds = %37, %10
  %.02 = phi i64 [ %2, %10 ], [ %35, %37 ], !psr.id !672
  %.01 = phi i8* [ %1, %10 ], [ %36, %37 ], !dbg !650, !psr.id !673
  call void @llvm.dbg.value(metadata i8* %.01, metadata !656, metadata !DIExpression()), !dbg !650, !psr.id !674
  call void @llvm.dbg.value(metadata i64 %.02, metadata !654, metadata !DIExpression()), !dbg !650, !psr.id !675
  br label %12, !dbg !676, !psr.id !678

12:                                               ; preds = %27, %11
  %13 = call i64 @read(i32 %0, i8* %.01, i64 %.02), !dbg !679, !psr.id !680
  call void @llvm.dbg.value(metadata i64 %13, metadata !681, metadata !DIExpression()), !dbg !650, !psr.id !682
  %14 = icmp slt i64 %13, 0, !dbg !683, !psr.id !684
  br i1 %14, label %15, label %25, !dbg !685, !psr.id !686

15:                                               ; preds = %12
  %16 = call i32* @__errno_location() #9, !dbg !687, !psr.id !688
  %17 = load i32, i32* %16, align 4, !dbg !687, !psr.id !689
  %18 = icmp eq i32 %17, 4, !dbg !690, !psr.id !691
  br i1 %18, label %23, label %19, !dbg !692, !psr.id !693

19:                                               ; preds = %15
  %20 = call i32* @__errno_location() #9, !dbg !694, !psr.id !695
  %21 = load i32, i32* %20, align 4, !dbg !694, !psr.id !696
  %22 = icmp eq i32 %21, 11, !dbg !697, !psr.id !698
  br label %23, !dbg !692, !psr.id !699

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ], !psr.id !700
  br label %25, !psr.id !701

25:                                               ; preds = %23, %12
  %26 = phi i1 [ false, %12 ], [ %24, %23 ], !dbg !702, !psr.id !703
  br i1 %26, label %27, label %28, !dbg !676, !psr.id !704

27:                                               ; preds = %25
  br label %12, !dbg !676, !llvm.loop !705, !psr.id !707

28:                                               ; preds = %25
  %29 = icmp slt i64 %13, 0, !dbg !708, !psr.id !710
  br i1 %29, label %30, label %31, !dbg !711, !psr.id !712

30:                                               ; preds = %28
  br label %43, !dbg !713, !psr.id !715

31:                                               ; preds = %28
  %32 = icmp eq i64 %13, 0, !dbg !716, !psr.id !718
  br i1 %32, label %33, label %34, !dbg !719, !psr.id !720

33:                                               ; preds = %31
  br label %39, !dbg !721, !psr.id !723

34:                                               ; preds = %31
  %35 = sub i64 %.02, %13, !dbg !724, !psr.id !725
  call void @llvm.dbg.value(metadata i64 %35, metadata !654, metadata !DIExpression()), !dbg !650, !psr.id !726
  %36 = getelementptr inbounds i8, i8* %.01, i64 %13, !dbg !727, !psr.id !728
  call void @llvm.dbg.value(metadata i8* %36, metadata !656, metadata !DIExpression()), !dbg !650, !psr.id !729
  br label %37, !dbg !730, !psr.id !731

37:                                               ; preds = %34
  %38 = icmp ugt i64 %35, 0, !dbg !732, !psr.id !733
  br i1 %38, label %11, label %39, !dbg !730, !llvm.loop !734, !psr.id !736

39:                                               ; preds = %37, %33
  %.1 = phi i8* [ %.01, %33 ], [ %36, %37 ], !dbg !650, !psr.id !737
  call void @llvm.dbg.value(metadata i8* %.1, metadata !656, metadata !DIExpression()), !dbg !650, !psr.id !738
  %40 = ptrtoint i8* %.1 to i64, !dbg !739, !psr.id !740
  %41 = ptrtoint i8* %1 to i64, !dbg !739, !psr.id !741
  %42 = sub i64 %40, %41, !dbg !739, !psr.id !742
  br label %43, !dbg !743, !psr.id !744

43:                                               ; preds = %39, %30
  %.0 = phi i64 [ %13, %30 ], [ %42, %39 ], !dbg !650, !psr.id !745
  ret i64 %.0, !dbg !746, !psr.id !747
}

declare dso_local i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !748 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !751, metadata !DIExpression()), !dbg !752, !psr.id !753
  call void @llvm.dbg.value(metadata i64 %1, metadata !754, metadata !DIExpression()), !dbg !752, !psr.id !755
  %3 = icmp ule i64 %1, 256, !dbg !756, !psr.id !759
  br i1 %3, label %4, label %5, !dbg !760, !psr.id !761

4:                                                ; preds = %2
  br label %9, !dbg !760, !psr.id !762

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.5, i64 0, i64 0, !psr.id !763
  %7 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !764
  %8 = getelementptr inbounds [60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i64 0, i64 0, !psr.id !765
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !756, !psr.id !766
  unreachable, !dbg !756, !psr.id !767

9:                                                ; preds = %4
  br label %10, !dbg !768, !psr.id !769

10:                                               ; preds = %26, %9
  %11 = trunc i64 %1 to i32, !dbg !770, !psr.id !772
  %12 = call i64 (i64, ...) @syscall(i64 318, i8* %0, i32 %11, i32 0) #10, !dbg !773, !psr.id !774
  %13 = trunc i64 %12 to i32, !dbg !773, !psr.id !775
  call void @llvm.dbg.value(metadata i32 %13, metadata !776, metadata !DIExpression()), !dbg !752, !psr.id !777
  br label %14, !dbg !778, !psr.id !779

14:                                               ; preds = %10
  %15 = icmp slt i32 %13, 0, !dbg !780, !psr.id !781
  br i1 %15, label %16, label %26, !dbg !782, !psr.id !783

16:                                               ; preds = %14
  %17 = call i32* @__errno_location() #9, !dbg !784, !psr.id !785
  %18 = load i32, i32* %17, align 4, !dbg !784, !psr.id !786
  %19 = icmp eq i32 %18, 4, !dbg !787, !psr.id !788
  br i1 %19, label %24, label %20, !dbg !789, !psr.id !790

20:                                               ; preds = %16
  %21 = call i32* @__errno_location() #9, !dbg !791, !psr.id !792
  %22 = load i32, i32* %21, align 4, !dbg !791, !psr.id !793
  %23 = icmp eq i32 %22, 11, !dbg !794, !psr.id !795
  br label %24, !dbg !789, !psr.id !796

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ], !psr.id !797
  br label %26, !psr.id !798

26:                                               ; preds = %24, %14
  %27 = phi i1 [ false, %14 ], [ %25, %24 ], !dbg !752, !psr.id !799
  br i1 %27, label %10, label %28, !dbg !778, !llvm.loop !800, !psr.id !802

28:                                               ; preds = %26
  %29 = trunc i64 %1 to i32, !dbg !803, !psr.id !804
  %30 = icmp eq i32 %13, %29, !dbg !805, !psr.id !806
  %31 = zext i1 %30 to i32, !dbg !805, !psr.id !807
  %32 = sub nsw i32 %31, 1, !dbg !808, !psr.id !809
  ret i32 %32, !dbg !810, !psr.id !811
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #5

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_init() #0 !dbg !812 {
  %1 = alloca [16 x i8], align 16, !psr.id !813
  %2 = call i32* @__errno_location() #9, !dbg !814, !psr.id !815
  %3 = load i32, i32* %2, align 4, !dbg !814, !psr.id !816
  call void @llvm.dbg.value(metadata i32 %3, metadata !817, metadata !DIExpression()), !dbg !818, !psr.id !819
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !820, metadata !DIExpression()), !dbg !822, !psr.id !823
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !824, !psr.id !826
  %5 = call i32 @randombytes_linux_getrandom(i8* %4, i64 16), !dbg !827, !psr.id !828
  %6 = icmp eq i32 %5, 0, !dbg !829, !psr.id !830
  br i1 %6, label %7, label %10, !dbg !831, !psr.id !832

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !833
  store i32 1, i32* %8, align 4, !dbg !834, !psr.id !836
  %9 = call i32* @__errno_location() #9, !dbg !837, !psr.id !838
  store i32 %3, i32* %9, align 4, !dbg !839, !psr.id !840
  br label %18, !dbg !841, !psr.id !842

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !843
  store i32 0, i32* %11, align 4, !dbg !844, !psr.id !845
  %12 = call i32 @randombytes_sysrandom_random_dev_open(), !dbg !846, !psr.id !848
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !849
  store i32 %12, i32* %13, align 4, !dbg !850, !psr.id !851
  %14 = icmp eq i32 %12, -1, !dbg !852, !psr.id !853
  br i1 %14, label %15, label %16, !dbg !854, !psr.id !855

15:                                               ; preds = %10
  call void @abort() #8, !dbg !856, !psr.id !858
  unreachable, !dbg !856, !psr.id !859

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #9, !dbg !860, !psr.id !861
  store i32 %3, i32* %17, align 4, !dbg !862, !psr.id !863
  br label %18, !dbg !864, !psr.id !865

18:                                               ; preds = %16, %7
  ret void, !dbg !864, !psr.id !866
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 !dbg !79 {
  %1 = alloca %struct.stat, align 8, !psr.id !867
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !868, metadata !DIExpression()), !dbg !904, !psr.id !905
  call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), metadata !906, metadata !DIExpression()), !dbg !908, !psr.id !909
  %2 = getelementptr inbounds [3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0, !psr.id !910
  br label %3, !dbg !911, !psr.id !912

3:                                                ; preds = %29, %0
  %.01 = phi i8** [ %2, %0 ], [ %.1, %29 ], !dbg !908, !psr.id !913
  call void @llvm.dbg.value(metadata i8** %.01, metadata !906, metadata !DIExpression()), !dbg !908, !psr.id !914
  %4 = load i8*, i8** %.01, align 8, !dbg !915, !psr.id !917
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 0), !dbg !918, !psr.id !919
  call void @llvm.dbg.value(metadata i32 %5, metadata !920, metadata !DIExpression()), !dbg !908, !psr.id !921
  %6 = icmp ne i32 %5, -1, !dbg !922, !psr.id !924
  br i1 %6, label %7, label %21, !dbg !925, !psr.id !926

7:                                                ; preds = %3
  %8 = call i32 @fstat(i32 %5, %struct.stat* %1) #10, !dbg !927, !psr.id !930
  %9 = icmp eq i32 %8, 0, !dbg !931, !psr.id !932
  br i1 %9, label %10, label %19, !dbg !933, !psr.id !934

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !935, !psr.id !936
  %12 = load i32, i32* %11, align 8, !dbg !935, !psr.id !937
  %13 = and i32 %12, 61440, !dbg !935, !psr.id !938
  %14 = icmp eq i32 %13, 8192, !dbg !935, !psr.id !939
  br i1 %14, label %15, label %19, !dbg !940, !psr.id !941

15:                                               ; preds = %10
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 1), !dbg !942, !psr.id !944
  %17 = or i32 %16, 1, !dbg !945, !psr.id !946
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 2, i32 %17), !dbg !947, !psr.id !948
  br label %34, !dbg !949, !psr.id !950

19:                                               ; preds = %10, %7
  %20 = call i32 @close(i32 %5), !dbg !951, !psr.id !952
  br label %27, !dbg !953, !psr.id !954

21:                                               ; preds = %3
  %22 = call i32* @__errno_location() #9, !dbg !955, !psr.id !957
  %23 = load i32, i32* %22, align 4, !dbg !955, !psr.id !958
  %24 = icmp eq i32 %23, 4, !dbg !959, !psr.id !960
  br i1 %24, label %25, label %26, !dbg !961, !psr.id !962

25:                                               ; preds = %21
  br label %29, !dbg !963, !psr.id !965

26:                                               ; preds = %21
  br label %27, !psr.id !966

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds i8*, i8** %.01, i32 1, !dbg !967, !psr.id !968
  call void @llvm.dbg.value(metadata i8** %28, metadata !906, metadata !DIExpression()), !dbg !908, !psr.id !969
  br label %29, !dbg !970, !psr.id !971

29:                                               ; preds = %27, %25
  %.1 = phi i8** [ %28, %27 ], [ %.01, %25 ], !dbg !908, !psr.id !972
  call void @llvm.dbg.value(metadata i8** %.1, metadata !906, metadata !DIExpression()), !dbg !908, !psr.id !973
  %30 = load i8*, i8** %.1, align 8, !dbg !974, !psr.id !975
  %31 = icmp ne i8* %30, null, !dbg !976, !psr.id !977
  br i1 %31, label %3, label %32, !dbg !970, !llvm.loop !978, !psr.id !980

32:                                               ; preds = %29
  %33 = call i32* @__errno_location() #9, !dbg !981, !psr.id !982
  store i32 5, i32* %33, align 4, !dbg !983, !psr.id !984
  br label %34, !dbg !985, !psr.id !986

34:                                               ; preds = %32, %15
  %.0 = phi i32 [ %5, %15 ], [ -1, %32 ], !dbg !908, !psr.id !987
  ret i32 %.0, !dbg !988, !psr.id !989
}

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #5

declare dso_local i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_stream_chacha20_keybytes() #0 !dbg !990 {
  ret i64 32, !dbg !993, !psr.id !994
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_stream_chacha20_noncebytes() #0 !dbg !995 {
  ret i64 8, !dbg !996, !psr.id !997
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20(i8* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !998 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !999, metadata !DIExpression()), !dbg !1000, !psr.id !1001
  call void @llvm.dbg.value(metadata i64 %1, metadata !1002, metadata !DIExpression()), !dbg !1000, !psr.id !1003
  call void @llvm.dbg.value(metadata i8* %2, metadata !1004, metadata !DIExpression()), !dbg !1000, !psr.id !1005
  call void @llvm.dbg.value(metadata i8* %3, metadata !1006, metadata !DIExpression()), !dbg !1000, !psr.id !1007
  %5 = call i32 @crypto_stream_chacha20_ref(i8* %0, i64 %1, i8* %2, i8* %3), !dbg !1008, !psr.id !1009
  ret i32 %5, !dbg !1010, !psr.id !1011
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 !dbg !1012 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1017, metadata !DIExpression()), !dbg !1018, !psr.id !1019
  call void @llvm.dbg.value(metadata i8* %1, metadata !1020, metadata !DIExpression()), !dbg !1018, !psr.id !1021
  call void @llvm.dbg.value(metadata i64 %2, metadata !1022, metadata !DIExpression()), !dbg !1018, !psr.id !1023
  call void @llvm.dbg.value(metadata i8* %3, metadata !1024, metadata !DIExpression()), !dbg !1018, !psr.id !1025
  call void @llvm.dbg.value(metadata i64 %4, metadata !1026, metadata !DIExpression()), !dbg !1018, !psr.id !1027
  call void @llvm.dbg.value(metadata i8* %5, metadata !1028, metadata !DIExpression()), !dbg !1018, !psr.id !1029
  %7 = call i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5), !dbg !1030, !psr.id !1031
  ret i32 %7, !dbg !1032, !psr.id !1033
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_xor(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 !dbg !1034 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1037, metadata !DIExpression()), !dbg !1038, !psr.id !1039
  call void @llvm.dbg.value(metadata i8* %1, metadata !1040, metadata !DIExpression()), !dbg !1038, !psr.id !1041
  call void @llvm.dbg.value(metadata i64 %2, metadata !1042, metadata !DIExpression()), !dbg !1038, !psr.id !1043
  call void @llvm.dbg.value(metadata i8* %3, metadata !1044, metadata !DIExpression()), !dbg !1038, !psr.id !1045
  call void @llvm.dbg.value(metadata i8* %4, metadata !1046, metadata !DIExpression()), !dbg !1038, !psr.id !1047
  %6 = call i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 0, i8* %4), !dbg !1048, !psr.id !1049
  ret i32 %6, !dbg !1050, !psr.id !1051
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_ref(i8* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !1052 {
  %5 = alloca %struct.chacha_ctx, align 4, !psr.id !1053
  call void @llvm.dbg.value(metadata i8* %0, metadata !1054, metadata !DIExpression()), !dbg !1055, !psr.id !1056
  call void @llvm.dbg.value(metadata i64 %1, metadata !1057, metadata !DIExpression()), !dbg !1055, !psr.id !1058
  call void @llvm.dbg.value(metadata i8* %2, metadata !1059, metadata !DIExpression()), !dbg !1055, !psr.id !1060
  call void @llvm.dbg.value(metadata i8* %3, metadata !1061, metadata !DIExpression()), !dbg !1055, !psr.id !1062
  call void @llvm.dbg.declare(metadata %struct.chacha_ctx* %5, metadata !1063, metadata !DIExpression()), !dbg !1068, !psr.id !1069
  %6 = icmp ne i64 %1, 0, !dbg !1070, !psr.id !1072
  br i1 %6, label %8, label %7, !dbg !1073, !psr.id !1074

7:                                                ; preds = %4
  br label %10, !dbg !1075, !psr.id !1077

8:                                                ; preds = %4
  call void @chacha_keysetup(%struct.chacha_ctx* %5, i8* %3), !dbg !1078, !psr.id !1079
  call void @chacha_ivsetup(%struct.chacha_ctx* %5, i8* %2, i8* null), !dbg !1080, !psr.id !1081
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !1082, !psr.id !1083
  call void @chacha_encrypt_bytes(%struct.chacha_ctx* %5, i8* %0, i8* %0, i64 %1), !dbg !1084, !psr.id !1085
  %9 = bitcast %struct.chacha_ctx* %5 to i8*, !dbg !1086, !psr.id !1087
  call void @sodium_memzero(i8* %9, i64 64), !dbg !1088, !psr.id !1089
  br label %10, !dbg !1090, !psr.id !1091

10:                                               ; preds = %8, %7
  ret i32 0, !dbg !1092, !psr.id !1093
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_keysetup(%struct.chacha_ctx* %0, i8* %1) #0 !dbg !1094 {
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !1101, metadata !DIExpression()), !dbg !1102, !psr.id !1103
  call void @llvm.dbg.value(metadata i8* %1, metadata !1104, metadata !DIExpression()), !dbg !1102, !psr.id !1105
  %3 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1106, !psr.id !1107, !PointTainted !1108
  %4 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !1106, !psr.id !1109, !PointTainted !1108
  %5 = load i8, i8* %4, align 1, !dbg !1106, !psr.id !1110, !ValueTainted !1111
  %6 = zext i8 %5 to i32, !dbg !1106, !psr.id !1112, !ValueTainted !1111
  %7 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1106, !psr.id !1113, !PointTainted !1108
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1106, !psr.id !1114, !PointTainted !1108
  %9 = load i8, i8* %8, align 1, !dbg !1106, !psr.id !1115, !ValueTainted !1111
  %10 = zext i8 %9 to i32, !dbg !1106, !psr.id !1116, !ValueTainted !1111
  %11 = shl i32 %10, 8, !dbg !1106, !psr.id !1117, !ValueTainted !1111
  %12 = or i32 %6, %11, !dbg !1106, !psr.id !1118, !ValueTainted !1111
  %13 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1106, !psr.id !1119, !PointTainted !1108
  %14 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !1106, !psr.id !1120, !PointTainted !1108
  %15 = load i8, i8* %14, align 1, !dbg !1106, !psr.id !1121, !ValueTainted !1111
  %16 = zext i8 %15 to i32, !dbg !1106, !psr.id !1122, !ValueTainted !1111
  %17 = shl i32 %16, 16, !dbg !1106, !psr.id !1123, !ValueTainted !1111
  %18 = or i32 %12, %17, !dbg !1106, !psr.id !1124, !ValueTainted !1111
  %19 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1106, !psr.id !1125, !PointTainted !1108
  %20 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !1106, !psr.id !1126, !PointTainted !1108
  %21 = load i8, i8* %20, align 1, !dbg !1106, !psr.id !1127, !ValueTainted !1111
  %22 = zext i8 %21 to i32, !dbg !1106, !psr.id !1128, !ValueTainted !1111
  %23 = shl i32 %22, 24, !dbg !1106, !psr.id !1129, !ValueTainted !1111
  %24 = or i32 %18, %23, !dbg !1106, !psr.id !1130, !ValueTainted !1111
  %25 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1131, !psr.id !1132
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 4, !dbg !1133, !psr.id !1134
  store i32 %24, i32* %26, align 4, !dbg !1135, !psr.id !1136
  %27 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1137, !psr.id !1138, !PointTainted !1108
  %28 = getelementptr inbounds i8, i8* %27, i64 0, !dbg !1137, !psr.id !1139, !PointTainted !1108
  %29 = load i8, i8* %28, align 1, !dbg !1137, !psr.id !1140, !ValueTainted !1111
  %30 = zext i8 %29 to i32, !dbg !1137, !psr.id !1141, !ValueTainted !1111
  %31 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1137, !psr.id !1142, !PointTainted !1108
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1137, !psr.id !1143, !PointTainted !1108
  %33 = load i8, i8* %32, align 1, !dbg !1137, !psr.id !1144, !ValueTainted !1111
  %34 = zext i8 %33 to i32, !dbg !1137, !psr.id !1145, !ValueTainted !1111
  %35 = shl i32 %34, 8, !dbg !1137, !psr.id !1146, !ValueTainted !1111
  %36 = or i32 %30, %35, !dbg !1137, !psr.id !1147, !ValueTainted !1111
  %37 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1137, !psr.id !1148, !PointTainted !1108
  %38 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !1137, !psr.id !1149, !PointTainted !1108
  %39 = load i8, i8* %38, align 1, !dbg !1137, !psr.id !1150, !ValueTainted !1111
  %40 = zext i8 %39 to i32, !dbg !1137, !psr.id !1151, !ValueTainted !1111
  %41 = shl i32 %40, 16, !dbg !1137, !psr.id !1152, !ValueTainted !1111
  %42 = or i32 %36, %41, !dbg !1137, !psr.id !1153, !ValueTainted !1111
  %43 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1137, !psr.id !1154, !PointTainted !1108
  %44 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !1137, !psr.id !1155, !PointTainted !1108
  %45 = load i8, i8* %44, align 1, !dbg !1137, !psr.id !1156, !ValueTainted !1111
  %46 = zext i8 %45 to i32, !dbg !1137, !psr.id !1157, !ValueTainted !1111
  %47 = shl i32 %46, 24, !dbg !1137, !psr.id !1158, !ValueTainted !1111
  %48 = or i32 %42, %47, !dbg !1137, !psr.id !1159, !ValueTainted !1111
  %49 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1160, !psr.id !1161
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %49, i64 0, i64 5, !dbg !1162, !psr.id !1163
  store i32 %48, i32* %50, align 4, !dbg !1164, !psr.id !1165
  %51 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1166, !psr.id !1167, !PointTainted !1108
  %52 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !1166, !psr.id !1168, !PointTainted !1108
  %53 = load i8, i8* %52, align 1, !dbg !1166, !psr.id !1169, !ValueTainted !1111
  %54 = zext i8 %53 to i32, !dbg !1166, !psr.id !1170, !ValueTainted !1111
  %55 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1166, !psr.id !1171, !PointTainted !1108
  %56 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1166, !psr.id !1172, !PointTainted !1108
  %57 = load i8, i8* %56, align 1, !dbg !1166, !psr.id !1173, !ValueTainted !1111
  %58 = zext i8 %57 to i32, !dbg !1166, !psr.id !1174, !ValueTainted !1111
  %59 = shl i32 %58, 8, !dbg !1166, !psr.id !1175, !ValueTainted !1111
  %60 = or i32 %54, %59, !dbg !1166, !psr.id !1176, !ValueTainted !1111
  %61 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1166, !psr.id !1177, !PointTainted !1108
  %62 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !1166, !psr.id !1178, !PointTainted !1108
  %63 = load i8, i8* %62, align 1, !dbg !1166, !psr.id !1179, !ValueTainted !1111
  %64 = zext i8 %63 to i32, !dbg !1166, !psr.id !1180, !ValueTainted !1111
  %65 = shl i32 %64, 16, !dbg !1166, !psr.id !1181, !ValueTainted !1111
  %66 = or i32 %60, %65, !dbg !1166, !psr.id !1182, !ValueTainted !1111
  %67 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1166, !psr.id !1183, !PointTainted !1108
  %68 = getelementptr inbounds i8, i8* %67, i64 3, !dbg !1166, !psr.id !1184, !PointTainted !1108
  %69 = load i8, i8* %68, align 1, !dbg !1166, !psr.id !1185, !ValueTainted !1111
  %70 = zext i8 %69 to i32, !dbg !1166, !psr.id !1186, !ValueTainted !1111
  %71 = shl i32 %70, 24, !dbg !1166, !psr.id !1187, !ValueTainted !1111
  %72 = or i32 %66, %71, !dbg !1166, !psr.id !1188, !ValueTainted !1111
  %73 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1189, !psr.id !1190
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %73, i64 0, i64 6, !dbg !1191, !psr.id !1192
  store i32 %72, i32* %74, align 4, !dbg !1193, !psr.id !1194
  %75 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1195, !psr.id !1196, !PointTainted !1108
  %76 = getelementptr inbounds i8, i8* %75, i64 0, !dbg !1195, !psr.id !1197, !PointTainted !1108
  %77 = load i8, i8* %76, align 1, !dbg !1195, !psr.id !1198, !ValueTainted !1111
  %78 = zext i8 %77 to i32, !dbg !1195, !psr.id !1199, !ValueTainted !1111
  %79 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1195, !psr.id !1200, !PointTainted !1108
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1195, !psr.id !1201, !PointTainted !1108
  %81 = load i8, i8* %80, align 1, !dbg !1195, !psr.id !1202, !ValueTainted !1111
  %82 = zext i8 %81 to i32, !dbg !1195, !psr.id !1203, !ValueTainted !1111
  %83 = shl i32 %82, 8, !dbg !1195, !psr.id !1204, !ValueTainted !1111
  %84 = or i32 %78, %83, !dbg !1195, !psr.id !1205, !ValueTainted !1111
  %85 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1195, !psr.id !1206, !PointTainted !1108
  %86 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !1195, !psr.id !1207, !PointTainted !1108
  %87 = load i8, i8* %86, align 1, !dbg !1195, !psr.id !1208, !ValueTainted !1111
  %88 = zext i8 %87 to i32, !dbg !1195, !psr.id !1209, !ValueTainted !1111
  %89 = shl i32 %88, 16, !dbg !1195, !psr.id !1210, !ValueTainted !1111
  %90 = or i32 %84, %89, !dbg !1195, !psr.id !1211, !ValueTainted !1111
  %91 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1195, !psr.id !1212, !PointTainted !1108
  %92 = getelementptr inbounds i8, i8* %91, i64 3, !dbg !1195, !psr.id !1213, !PointTainted !1108
  %93 = load i8, i8* %92, align 1, !dbg !1195, !psr.id !1214, !ValueTainted !1111
  %94 = zext i8 %93 to i32, !dbg !1195, !psr.id !1215, !ValueTainted !1111
  %95 = shl i32 %94, 24, !dbg !1195, !psr.id !1216, !ValueTainted !1111
  %96 = or i32 %90, %95, !dbg !1195, !psr.id !1217, !ValueTainted !1111
  %97 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1218, !psr.id !1219
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %97, i64 0, i64 7, !dbg !1220, !psr.id !1221
  store i32 %96, i32* %98, align 4, !dbg !1222, !psr.id !1223
  %99 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1224, !psr.id !1225, !PointTainted !1108
  call void @llvm.dbg.value(metadata i8* %99, metadata !1104, metadata !DIExpression()), !dbg !1102, !psr.id !1226
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), metadata !1227, metadata !DIExpression()), !dbg !1102, !psr.id !1228
  %100 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !1229, !psr.id !1230, !PointTainted !1108
  %101 = getelementptr inbounds i8, i8* %100, i64 0, !dbg !1229, !psr.id !1231, !PointTainted !1108
  %102 = load i8, i8* %101, align 1, !dbg !1229, !psr.id !1232, !ValueTainted !1111
  %103 = zext i8 %102 to i32, !dbg !1229, !psr.id !1233, !ValueTainted !1111
  %104 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !1229, !psr.id !1234, !PointTainted !1108
  %105 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !1229, !psr.id !1235, !PointTainted !1108
  %106 = load i8, i8* %105, align 1, !dbg !1229, !psr.id !1236, !ValueTainted !1111
  %107 = zext i8 %106 to i32, !dbg !1229, !psr.id !1237, !ValueTainted !1111
  %108 = shl i32 %107, 8, !dbg !1229, !psr.id !1238, !ValueTainted !1111
  %109 = or i32 %103, %108, !dbg !1229, !psr.id !1239, !ValueTainted !1111
  %110 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !1229, !psr.id !1240, !PointTainted !1108
  %111 = getelementptr inbounds i8, i8* %110, i64 2, !dbg !1229, !psr.id !1241, !PointTainted !1108
  %112 = load i8, i8* %111, align 1, !dbg !1229, !psr.id !1242, !ValueTainted !1111
  %113 = zext i8 %112 to i32, !dbg !1229, !psr.id !1243, !ValueTainted !1111
  %114 = shl i32 %113, 16, !dbg !1229, !psr.id !1244, !ValueTainted !1111
  %115 = or i32 %109, %114, !dbg !1229, !psr.id !1245, !ValueTainted !1111
  %116 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !1229, !psr.id !1246, !PointTainted !1108
  %117 = getelementptr inbounds i8, i8* %116, i64 3, !dbg !1229, !psr.id !1247, !PointTainted !1108
  %118 = load i8, i8* %117, align 1, !dbg !1229, !psr.id !1248, !ValueTainted !1111
  %119 = zext i8 %118 to i32, !dbg !1229, !psr.id !1249, !ValueTainted !1111
  %120 = shl i32 %119, 24, !dbg !1229, !psr.id !1250, !ValueTainted !1111
  %121 = or i32 %115, %120, !dbg !1229, !psr.id !1251, !ValueTainted !1111
  %122 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1252, !psr.id !1253
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %122, i64 0, i64 8, !dbg !1254, !psr.id !1255
  store i32 %121, i32* %123, align 4, !dbg !1256, !psr.id !1257
  %124 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !1258, !psr.id !1259, !PointTainted !1108
  %125 = getelementptr inbounds i8, i8* %124, i64 0, !dbg !1258, !psr.id !1260, !PointTainted !1108
  %126 = load i8, i8* %125, align 1, !dbg !1258, !psr.id !1261, !ValueTainted !1111
  %127 = zext i8 %126 to i32, !dbg !1258, !psr.id !1262, !ValueTainted !1111
  %128 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !1258, !psr.id !1263, !PointTainted !1108
  %129 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !1258, !psr.id !1264, !PointTainted !1108
  %130 = load i8, i8* %129, align 1, !dbg !1258, !psr.id !1265, !ValueTainted !1111
  %131 = zext i8 %130 to i32, !dbg !1258, !psr.id !1266, !ValueTainted !1111
  %132 = shl i32 %131, 8, !dbg !1258, !psr.id !1267, !ValueTainted !1111
  %133 = or i32 %127, %132, !dbg !1258, !psr.id !1268, !ValueTainted !1111
  %134 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !1258, !psr.id !1269, !PointTainted !1108
  %135 = getelementptr inbounds i8, i8* %134, i64 2, !dbg !1258, !psr.id !1270, !PointTainted !1108
  %136 = load i8, i8* %135, align 1, !dbg !1258, !psr.id !1271, !ValueTainted !1111
  %137 = zext i8 %136 to i32, !dbg !1258, !psr.id !1272, !ValueTainted !1111
  %138 = shl i32 %137, 16, !dbg !1258, !psr.id !1273, !ValueTainted !1111
  %139 = or i32 %133, %138, !dbg !1258, !psr.id !1274, !ValueTainted !1111
  %140 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !1258, !psr.id !1275, !PointTainted !1108
  %141 = getelementptr inbounds i8, i8* %140, i64 3, !dbg !1258, !psr.id !1276, !PointTainted !1108
  %142 = load i8, i8* %141, align 1, !dbg !1258, !psr.id !1277, !ValueTainted !1111
  %143 = zext i8 %142 to i32, !dbg !1258, !psr.id !1278, !ValueTainted !1111
  %144 = shl i32 %143, 24, !dbg !1258, !psr.id !1279, !ValueTainted !1111
  %145 = or i32 %139, %144, !dbg !1258, !psr.id !1280, !ValueTainted !1111
  %146 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1281, !psr.id !1282
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %146, i64 0, i64 9, !dbg !1283, !psr.id !1284
  store i32 %145, i32* %147, align 4, !dbg !1285, !psr.id !1286
  %148 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !1287, !psr.id !1288, !PointTainted !1108
  %149 = getelementptr inbounds i8, i8* %148, i64 0, !dbg !1287, !psr.id !1289, !PointTainted !1108
  %150 = load i8, i8* %149, align 1, !dbg !1287, !psr.id !1290, !ValueTainted !1111
  %151 = zext i8 %150 to i32, !dbg !1287, !psr.id !1291, !ValueTainted !1111
  %152 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !1287, !psr.id !1292, !PointTainted !1108
  %153 = getelementptr inbounds i8, i8* %152, i64 1, !dbg !1287, !psr.id !1293, !PointTainted !1108
  %154 = load i8, i8* %153, align 1, !dbg !1287, !psr.id !1294, !ValueTainted !1111
  %155 = zext i8 %154 to i32, !dbg !1287, !psr.id !1295, !ValueTainted !1111
  %156 = shl i32 %155, 8, !dbg !1287, !psr.id !1296, !ValueTainted !1111
  %157 = or i32 %151, %156, !dbg !1287, !psr.id !1297, !ValueTainted !1111
  %158 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !1287, !psr.id !1298, !PointTainted !1108
  %159 = getelementptr inbounds i8, i8* %158, i64 2, !dbg !1287, !psr.id !1299, !PointTainted !1108
  %160 = load i8, i8* %159, align 1, !dbg !1287, !psr.id !1300, !ValueTainted !1111
  %161 = zext i8 %160 to i32, !dbg !1287, !psr.id !1301, !ValueTainted !1111
  %162 = shl i32 %161, 16, !dbg !1287, !psr.id !1302, !ValueTainted !1111
  %163 = or i32 %157, %162, !dbg !1287, !psr.id !1303, !ValueTainted !1111
  %164 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !1287, !psr.id !1304, !PointTainted !1108
  %165 = getelementptr inbounds i8, i8* %164, i64 3, !dbg !1287, !psr.id !1305, !PointTainted !1108
  %166 = load i8, i8* %165, align 1, !dbg !1287, !psr.id !1306, !ValueTainted !1111
  %167 = zext i8 %166 to i32, !dbg !1287, !psr.id !1307, !ValueTainted !1111
  %168 = shl i32 %167, 24, !dbg !1287, !psr.id !1308, !ValueTainted !1111
  %169 = or i32 %163, %168, !dbg !1287, !psr.id !1309, !ValueTainted !1111
  %170 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1310, !psr.id !1311
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %170, i64 0, i64 10, !dbg !1312, !psr.id !1313
  store i32 %169, i32* %171, align 4, !dbg !1314, !psr.id !1315
  %172 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !1316, !psr.id !1317, !PointTainted !1108
  %173 = getelementptr inbounds i8, i8* %172, i64 0, !dbg !1316, !psr.id !1318, !PointTainted !1108
  %174 = load i8, i8* %173, align 1, !dbg !1316, !psr.id !1319, !ValueTainted !1111
  %175 = zext i8 %174 to i32, !dbg !1316, !psr.id !1320, !ValueTainted !1111
  %176 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !1316, !psr.id !1321, !PointTainted !1108
  %177 = getelementptr inbounds i8, i8* %176, i64 1, !dbg !1316, !psr.id !1322, !PointTainted !1108
  %178 = load i8, i8* %177, align 1, !dbg !1316, !psr.id !1323, !ValueTainted !1111
  %179 = zext i8 %178 to i32, !dbg !1316, !psr.id !1324, !ValueTainted !1111
  %180 = shl i32 %179, 8, !dbg !1316, !psr.id !1325, !ValueTainted !1111
  %181 = or i32 %175, %180, !dbg !1316, !psr.id !1326, !ValueTainted !1111
  %182 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !1316, !psr.id !1327, !PointTainted !1108
  %183 = getelementptr inbounds i8, i8* %182, i64 2, !dbg !1316, !psr.id !1328, !PointTainted !1108
  %184 = load i8, i8* %183, align 1, !dbg !1316, !psr.id !1329, !ValueTainted !1111
  %185 = zext i8 %184 to i32, !dbg !1316, !psr.id !1330, !ValueTainted !1111
  %186 = shl i32 %185, 16, !dbg !1316, !psr.id !1331, !ValueTainted !1111
  %187 = or i32 %181, %186, !dbg !1316, !psr.id !1332, !ValueTainted !1111
  %188 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !1316, !psr.id !1333, !PointTainted !1108
  %189 = getelementptr inbounds i8, i8* %188, i64 3, !dbg !1316, !psr.id !1334, !PointTainted !1108
  %190 = load i8, i8* %189, align 1, !dbg !1316, !psr.id !1335, !ValueTainted !1111
  %191 = zext i8 %190 to i32, !dbg !1316, !psr.id !1336, !ValueTainted !1111
  %192 = shl i32 %191, 24, !dbg !1316, !psr.id !1337, !ValueTainted !1111
  %193 = or i32 %187, %192, !dbg !1316, !psr.id !1338, !ValueTainted !1111
  %194 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1339, !psr.id !1340
  %195 = getelementptr inbounds [16 x i32], [16 x i32]* %194, i64 0, i64 11, !dbg !1341, !psr.id !1342
  store i32 %193, i32* %195, align 4, !dbg !1343, !psr.id !1344
  %196 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1345
  %197 = getelementptr inbounds i8, i8* %196, i64 0, !dbg !1346, !psr.id !1347
  %198 = getelementptr inbounds i8, i8* %197, i64 0, !dbg !1346, !psr.id !1348
  %199 = load i8, i8* %198, align 1, !dbg !1346, !psr.id !1349
  %200 = zext i8 %199 to i32, !dbg !1346, !psr.id !1350
  %201 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1351
  %202 = getelementptr inbounds i8, i8* %201, i64 0, !dbg !1346, !psr.id !1352
  %203 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !1346, !psr.id !1353
  %204 = load i8, i8* %203, align 1, !dbg !1346, !psr.id !1354
  %205 = zext i8 %204 to i32, !dbg !1346, !psr.id !1355
  %206 = shl i32 %205, 8, !dbg !1346, !psr.id !1356
  %207 = or i32 %200, %206, !dbg !1346, !psr.id !1357
  %208 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1358
  %209 = getelementptr inbounds i8, i8* %208, i64 0, !dbg !1346, !psr.id !1359
  %210 = getelementptr inbounds i8, i8* %209, i64 2, !dbg !1346, !psr.id !1360
  %211 = load i8, i8* %210, align 1, !dbg !1346, !psr.id !1361
  %212 = zext i8 %211 to i32, !dbg !1346, !psr.id !1362
  %213 = shl i32 %212, 16, !dbg !1346, !psr.id !1363
  %214 = or i32 %207, %213, !dbg !1346, !psr.id !1364
  %215 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1365
  %216 = getelementptr inbounds i8, i8* %215, i64 0, !dbg !1346, !psr.id !1366
  %217 = getelementptr inbounds i8, i8* %216, i64 3, !dbg !1346, !psr.id !1367
  %218 = load i8, i8* %217, align 1, !dbg !1346, !psr.id !1368
  %219 = zext i8 %218 to i32, !dbg !1346, !psr.id !1369
  %220 = shl i32 %219, 24, !dbg !1346, !psr.id !1370
  %221 = or i32 %214, %220, !dbg !1346, !psr.id !1371
  %222 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1372, !psr.id !1373
  %223 = getelementptr inbounds [16 x i32], [16 x i32]* %222, i64 0, i64 0, !dbg !1374, !psr.id !1375
  store i32 %221, i32* %223, align 4, !dbg !1376, !psr.id !1377
  %224 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1378
  %225 = getelementptr inbounds i8, i8* %224, i64 4, !dbg !1379, !psr.id !1380
  %226 = getelementptr inbounds i8, i8* %225, i64 0, !dbg !1379, !psr.id !1381
  %227 = load i8, i8* %226, align 1, !dbg !1379, !psr.id !1382
  %228 = zext i8 %227 to i32, !dbg !1379, !psr.id !1383
  %229 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1384
  %230 = getelementptr inbounds i8, i8* %229, i64 4, !dbg !1379, !psr.id !1385
  %231 = getelementptr inbounds i8, i8* %230, i64 1, !dbg !1379, !psr.id !1386
  %232 = load i8, i8* %231, align 1, !dbg !1379, !psr.id !1387
  %233 = zext i8 %232 to i32, !dbg !1379, !psr.id !1388
  %234 = shl i32 %233, 8, !dbg !1379, !psr.id !1389
  %235 = or i32 %228, %234, !dbg !1379, !psr.id !1390
  %236 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1391
  %237 = getelementptr inbounds i8, i8* %236, i64 4, !dbg !1379, !psr.id !1392
  %238 = getelementptr inbounds i8, i8* %237, i64 2, !dbg !1379, !psr.id !1393
  %239 = load i8, i8* %238, align 1, !dbg !1379, !psr.id !1394
  %240 = zext i8 %239 to i32, !dbg !1379, !psr.id !1395
  %241 = shl i32 %240, 16, !dbg !1379, !psr.id !1396
  %242 = or i32 %235, %241, !dbg !1379, !psr.id !1397
  %243 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1398
  %244 = getelementptr inbounds i8, i8* %243, i64 4, !dbg !1379, !psr.id !1399
  %245 = getelementptr inbounds i8, i8* %244, i64 3, !dbg !1379, !psr.id !1400
  %246 = load i8, i8* %245, align 1, !dbg !1379, !psr.id !1401
  %247 = zext i8 %246 to i32, !dbg !1379, !psr.id !1402
  %248 = shl i32 %247, 24, !dbg !1379, !psr.id !1403
  %249 = or i32 %242, %248, !dbg !1379, !psr.id !1404
  %250 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1405, !psr.id !1406
  %251 = getelementptr inbounds [16 x i32], [16 x i32]* %250, i64 0, i64 1, !dbg !1407, !psr.id !1408
  store i32 %249, i32* %251, align 4, !dbg !1409, !psr.id !1410
  %252 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1411
  %253 = getelementptr inbounds i8, i8* %252, i64 8, !dbg !1412, !psr.id !1413
  %254 = getelementptr inbounds i8, i8* %253, i64 0, !dbg !1412, !psr.id !1414
  %255 = load i8, i8* %254, align 1, !dbg !1412, !psr.id !1415
  %256 = zext i8 %255 to i32, !dbg !1412, !psr.id !1416
  %257 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1417
  %258 = getelementptr inbounds i8, i8* %257, i64 8, !dbg !1412, !psr.id !1418
  %259 = getelementptr inbounds i8, i8* %258, i64 1, !dbg !1412, !psr.id !1419
  %260 = load i8, i8* %259, align 1, !dbg !1412, !psr.id !1420
  %261 = zext i8 %260 to i32, !dbg !1412, !psr.id !1421
  %262 = shl i32 %261, 8, !dbg !1412, !psr.id !1422
  %263 = or i32 %256, %262, !dbg !1412, !psr.id !1423
  %264 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1424
  %265 = getelementptr inbounds i8, i8* %264, i64 8, !dbg !1412, !psr.id !1425
  %266 = getelementptr inbounds i8, i8* %265, i64 2, !dbg !1412, !psr.id !1426
  %267 = load i8, i8* %266, align 1, !dbg !1412, !psr.id !1427
  %268 = zext i8 %267 to i32, !dbg !1412, !psr.id !1428
  %269 = shl i32 %268, 16, !dbg !1412, !psr.id !1429
  %270 = or i32 %263, %269, !dbg !1412, !psr.id !1430
  %271 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1431
  %272 = getelementptr inbounds i8, i8* %271, i64 8, !dbg !1412, !psr.id !1432
  %273 = getelementptr inbounds i8, i8* %272, i64 3, !dbg !1412, !psr.id !1433
  %274 = load i8, i8* %273, align 1, !dbg !1412, !psr.id !1434
  %275 = zext i8 %274 to i32, !dbg !1412, !psr.id !1435
  %276 = shl i32 %275, 24, !dbg !1412, !psr.id !1436
  %277 = or i32 %270, %276, !dbg !1412, !psr.id !1437
  %278 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1438, !psr.id !1439
  %279 = getelementptr inbounds [16 x i32], [16 x i32]* %278, i64 0, i64 2, !dbg !1440, !psr.id !1441
  store i32 %277, i32* %279, align 4, !dbg !1442, !psr.id !1443
  %280 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1444
  %281 = getelementptr inbounds i8, i8* %280, i64 12, !dbg !1445, !psr.id !1446
  %282 = getelementptr inbounds i8, i8* %281, i64 0, !dbg !1445, !psr.id !1447
  %283 = load i8, i8* %282, align 1, !dbg !1445, !psr.id !1448
  %284 = zext i8 %283 to i32, !dbg !1445, !psr.id !1449
  %285 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1450
  %286 = getelementptr inbounds i8, i8* %285, i64 12, !dbg !1445, !psr.id !1451
  %287 = getelementptr inbounds i8, i8* %286, i64 1, !dbg !1445, !psr.id !1452
  %288 = load i8, i8* %287, align 1, !dbg !1445, !psr.id !1453
  %289 = zext i8 %288 to i32, !dbg !1445, !psr.id !1454
  %290 = shl i32 %289, 8, !dbg !1445, !psr.id !1455
  %291 = or i32 %284, %290, !dbg !1445, !psr.id !1456
  %292 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1457
  %293 = getelementptr inbounds i8, i8* %292, i64 12, !dbg !1445, !psr.id !1458
  %294 = getelementptr inbounds i8, i8* %293, i64 2, !dbg !1445, !psr.id !1459
  %295 = load i8, i8* %294, align 1, !dbg !1445, !psr.id !1460
  %296 = zext i8 %295 to i32, !dbg !1445, !psr.id !1461
  %297 = shl i32 %296, 16, !dbg !1445, !psr.id !1462
  %298 = or i32 %291, %297, !dbg !1445, !psr.id !1463
  %299 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !1464
  %300 = getelementptr inbounds i8, i8* %299, i64 12, !dbg !1445, !psr.id !1465
  %301 = getelementptr inbounds i8, i8* %300, i64 3, !dbg !1445, !psr.id !1466
  %302 = load i8, i8* %301, align 1, !dbg !1445, !psr.id !1467
  %303 = zext i8 %302 to i32, !dbg !1445, !psr.id !1468
  %304 = shl i32 %303, 24, !dbg !1445, !psr.id !1469
  %305 = or i32 %298, %304, !dbg !1445, !psr.id !1470
  %306 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1471, !psr.id !1472
  %307 = getelementptr inbounds [16 x i32], [16 x i32]* %306, i64 0, i64 3, !dbg !1473, !psr.id !1474
  store i32 %305, i32* %307, align 4, !dbg !1475, !psr.id !1476
  ret void, !dbg !1477, !psr.id !1478
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_ivsetup(%struct.chacha_ctx* %0, i8* %1, i8* %2) #0 !dbg !1479 {
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !1482, metadata !DIExpression()), !dbg !1483, !psr.id !1484
  call void @llvm.dbg.value(metadata i8* %1, metadata !1485, metadata !DIExpression()), !dbg !1483, !psr.id !1486
  call void @llvm.dbg.value(metadata i8* %2, metadata !1487, metadata !DIExpression()), !dbg !1483, !psr.id !1488
  %4 = icmp eq i8* %2, null, !dbg !1489, !psr.id !1490
  br i1 %4, label %5, label %6, !dbg !1491, !psr.id !1492

5:                                                ; preds = %3
  br label %29, !dbg !1491, !psr.id !1493

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1494, !psr.id !1495
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !1494, !psr.id !1496
  %9 = load i8, i8* %8, align 1, !dbg !1494, !psr.id !1497
  %10 = zext i8 %9 to i32, !dbg !1494, !psr.id !1498
  %11 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1494, !psr.id !1499
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1494, !psr.id !1500
  %13 = load i8, i8* %12, align 1, !dbg !1494, !psr.id !1501
  %14 = zext i8 %13 to i32, !dbg !1494, !psr.id !1502
  %15 = shl i32 %14, 8, !dbg !1494, !psr.id !1503
  %16 = or i32 %10, %15, !dbg !1494, !psr.id !1504
  %17 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1494, !psr.id !1505
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1494, !psr.id !1506
  %19 = load i8, i8* %18, align 1, !dbg !1494, !psr.id !1507
  %20 = zext i8 %19 to i32, !dbg !1494, !psr.id !1508
  %21 = shl i32 %20, 16, !dbg !1494, !psr.id !1509
  %22 = or i32 %16, %21, !dbg !1494, !psr.id !1510
  %23 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1494, !psr.id !1511
  %24 = getelementptr inbounds i8, i8* %23, i64 3, !dbg !1494, !psr.id !1512
  %25 = load i8, i8* %24, align 1, !dbg !1494, !psr.id !1513
  %26 = zext i8 %25 to i32, !dbg !1494, !psr.id !1514
  %27 = shl i32 %26, 24, !dbg !1494, !psr.id !1515
  %28 = or i32 %22, %27, !dbg !1494, !psr.id !1516
  br label %29, !dbg !1491, !psr.id !1517

29:                                               ; preds = %6, %5
  %30 = phi i32 [ 0, %5 ], [ %28, %6 ], !dbg !1491, !psr.id !1518
  %31 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1519, !psr.id !1520
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i64 0, i64 12, !dbg !1521, !psr.id !1522
  store i32 %30, i32* %32, align 4, !dbg !1523, !psr.id !1524
  %33 = icmp eq i8* %2, null, !dbg !1525, !psr.id !1526
  br i1 %33, label %34, label %35, !dbg !1527, !psr.id !1528

34:                                               ; preds = %29
  br label %58, !dbg !1527, !psr.id !1529

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1530, !psr.id !1531
  %37 = getelementptr inbounds i8, i8* %36, i64 0, !dbg !1530, !psr.id !1532
  %38 = load i8, i8* %37, align 1, !dbg !1530, !psr.id !1533
  %39 = zext i8 %38 to i32, !dbg !1530, !psr.id !1534
  %40 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1530, !psr.id !1535
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1530, !psr.id !1536
  %42 = load i8, i8* %41, align 1, !dbg !1530, !psr.id !1537
  %43 = zext i8 %42 to i32, !dbg !1530, !psr.id !1538
  %44 = shl i32 %43, 8, !dbg !1530, !psr.id !1539
  %45 = or i32 %39, %44, !dbg !1530, !psr.id !1540
  %46 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1530, !psr.id !1541
  %47 = getelementptr inbounds i8, i8* %46, i64 2, !dbg !1530, !psr.id !1542
  %48 = load i8, i8* %47, align 1, !dbg !1530, !psr.id !1543
  %49 = zext i8 %48 to i32, !dbg !1530, !psr.id !1544
  %50 = shl i32 %49, 16, !dbg !1530, !psr.id !1545
  %51 = or i32 %45, %50, !dbg !1530, !psr.id !1546
  %52 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1530, !psr.id !1547
  %53 = getelementptr inbounds i8, i8* %52, i64 3, !dbg !1530, !psr.id !1548
  %54 = load i8, i8* %53, align 1, !dbg !1530, !psr.id !1549
  %55 = zext i8 %54 to i32, !dbg !1530, !psr.id !1550
  %56 = shl i32 %55, 24, !dbg !1530, !psr.id !1551
  %57 = or i32 %51, %56, !dbg !1530, !psr.id !1552
  br label %58, !dbg !1527, !psr.id !1553

58:                                               ; preds = %35, %34
  %59 = phi i32 [ 0, %34 ], [ %57, %35 ], !dbg !1527, !psr.id !1554
  %60 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1555, !psr.id !1556
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %60, i64 0, i64 13, !dbg !1557, !psr.id !1558
  store i32 %59, i32* %61, align 4, !dbg !1559, !psr.id !1560
  %62 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1561, !psr.id !1562
  %63 = getelementptr inbounds i8, i8* %62, i64 0, !dbg !1561, !psr.id !1563
  %64 = load i8, i8* %63, align 1, !dbg !1561, !psr.id !1564
  %65 = zext i8 %64 to i32, !dbg !1561, !psr.id !1565
  %66 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1561, !psr.id !1566
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1561, !psr.id !1567
  %68 = load i8, i8* %67, align 1, !dbg !1561, !psr.id !1568
  %69 = zext i8 %68 to i32, !dbg !1561, !psr.id !1569
  %70 = shl i32 %69, 8, !dbg !1561, !psr.id !1570
  %71 = or i32 %65, %70, !dbg !1561, !psr.id !1571
  %72 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1561, !psr.id !1572
  %73 = getelementptr inbounds i8, i8* %72, i64 2, !dbg !1561, !psr.id !1573
  %74 = load i8, i8* %73, align 1, !dbg !1561, !psr.id !1574
  %75 = zext i8 %74 to i32, !dbg !1561, !psr.id !1575
  %76 = shl i32 %75, 16, !dbg !1561, !psr.id !1576
  %77 = or i32 %71, %76, !dbg !1561, !psr.id !1577
  %78 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1561, !psr.id !1578
  %79 = getelementptr inbounds i8, i8* %78, i64 3, !dbg !1561, !psr.id !1579
  %80 = load i8, i8* %79, align 1, !dbg !1561, !psr.id !1580
  %81 = zext i8 %80 to i32, !dbg !1561, !psr.id !1581
  %82 = shl i32 %81, 24, !dbg !1561, !psr.id !1582
  %83 = or i32 %77, %82, !dbg !1561, !psr.id !1583
  %84 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1584, !psr.id !1585
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %84, i64 0, i64 14, !dbg !1586, !psr.id !1587
  store i32 %83, i32* %85, align 4, !dbg !1588, !psr.id !1589
  %86 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1590, !psr.id !1591
  %87 = getelementptr inbounds i8, i8* %86, i64 0, !dbg !1590, !psr.id !1592
  %88 = load i8, i8* %87, align 1, !dbg !1590, !psr.id !1593
  %89 = zext i8 %88 to i32, !dbg !1590, !psr.id !1594
  %90 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1590, !psr.id !1595
  %91 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1590, !psr.id !1596
  %92 = load i8, i8* %91, align 1, !dbg !1590, !psr.id !1597
  %93 = zext i8 %92 to i32, !dbg !1590, !psr.id !1598
  %94 = shl i32 %93, 8, !dbg !1590, !psr.id !1599
  %95 = or i32 %89, %94, !dbg !1590, !psr.id !1600
  %96 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1590, !psr.id !1601
  %97 = getelementptr inbounds i8, i8* %96, i64 2, !dbg !1590, !psr.id !1602
  %98 = load i8, i8* %97, align 1, !dbg !1590, !psr.id !1603
  %99 = zext i8 %98 to i32, !dbg !1590, !psr.id !1604
  %100 = shl i32 %99, 16, !dbg !1590, !psr.id !1605
  %101 = or i32 %95, %100, !dbg !1590, !psr.id !1606
  %102 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1590, !psr.id !1607
  %103 = getelementptr inbounds i8, i8* %102, i64 3, !dbg !1590, !psr.id !1608
  %104 = load i8, i8* %103, align 1, !dbg !1590, !psr.id !1609
  %105 = zext i8 %104 to i32, !dbg !1590, !psr.id !1610
  %106 = shl i32 %105, 24, !dbg !1590, !psr.id !1611
  %107 = or i32 %101, %106, !dbg !1590, !psr.id !1612
  %108 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1613, !psr.id !1614
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %108, i64 0, i64 15, !dbg !1615, !psr.id !1616
  store i32 %107, i32* %109, align 4, !dbg !1617, !psr.id !1618
  ret void, !dbg !1619, !psr.id !1620
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_encrypt_bytes(%struct.chacha_ctx* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !1621 {
  %5 = alloca [64 x i8], align 16, !psr.id !1625
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !1626, metadata !DIExpression()), !dbg !1627, !psr.id !1628
  call void @llvm.dbg.value(metadata i8* %1, metadata !1629, metadata !DIExpression()), !dbg !1627, !psr.id !1630
  call void @llvm.dbg.value(metadata i8* %2, metadata !1631, metadata !DIExpression()), !dbg !1627, !psr.id !1632
  call void @llvm.dbg.value(metadata i64 %3, metadata !1633, metadata !DIExpression()), !dbg !1627, !psr.id !1634
  call void @llvm.dbg.value(metadata i8* null, metadata !1635, metadata !DIExpression()), !dbg !1627, !psr.id !1636
  call void @llvm.dbg.declare(metadata [64 x i8]* %5, metadata !1637, metadata !DIExpression()), !dbg !1641, !psr.id !1642
  %6 = icmp ne i64 %3, 0, !dbg !1643, !psr.id !1645
  br i1 %6, label %8, label %7, !dbg !1646, !psr.id !1647

7:                                                ; preds = %4
  br label %1151, !dbg !1648, !psr.id !1650

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1651, !psr.id !1652
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0, !dbg !1653, !psr.id !1654
  %11 = load i32, i32* %10, align 4, !dbg !1653, !psr.id !1655, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %11, metadata !1656, metadata !DIExpression()), !dbg !1627, !psr.id !1657
  %12 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1658, !psr.id !1659
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 1, !dbg !1660, !psr.id !1661
  %14 = load i32, i32* %13, align 4, !dbg !1660, !psr.id !1662, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %14, metadata !1663, metadata !DIExpression()), !dbg !1627, !psr.id !1664
  %15 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1665, !psr.id !1666
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2, !dbg !1667, !psr.id !1668
  %17 = load i32, i32* %16, align 4, !dbg !1667, !psr.id !1669, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %17, metadata !1670, metadata !DIExpression()), !dbg !1627, !psr.id !1671
  %18 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1672, !psr.id !1673
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 3, !dbg !1674, !psr.id !1675
  %20 = load i32, i32* %19, align 4, !dbg !1674, !psr.id !1676, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %20, metadata !1677, metadata !DIExpression()), !dbg !1627, !psr.id !1678
  %21 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1679, !psr.id !1680
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 4, !dbg !1681, !psr.id !1682
  %23 = load i32, i32* %22, align 4, !dbg !1681, !psr.id !1683, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %23, metadata !1684, metadata !DIExpression()), !dbg !1627, !psr.id !1685
  %24 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1686, !psr.id !1687
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 5, !dbg !1688, !psr.id !1689
  %26 = load i32, i32* %25, align 4, !dbg !1688, !psr.id !1690, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %26, metadata !1691, metadata !DIExpression()), !dbg !1627, !psr.id !1692
  %27 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1693, !psr.id !1694
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %27, i64 0, i64 6, !dbg !1695, !psr.id !1696
  %29 = load i32, i32* %28, align 4, !dbg !1695, !psr.id !1697, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %29, metadata !1698, metadata !DIExpression()), !dbg !1627, !psr.id !1699
  %30 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1700, !psr.id !1701
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %30, i64 0, i64 7, !dbg !1702, !psr.id !1703
  %32 = load i32, i32* %31, align 4, !dbg !1702, !psr.id !1704, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %32, metadata !1705, metadata !DIExpression()), !dbg !1627, !psr.id !1706
  %33 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1707, !psr.id !1708
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %33, i64 0, i64 8, !dbg !1709, !psr.id !1710
  %35 = load i32, i32* %34, align 4, !dbg !1709, !psr.id !1711, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %35, metadata !1712, metadata !DIExpression()), !dbg !1627, !psr.id !1713
  %36 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1714, !psr.id !1715
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %36, i64 0, i64 9, !dbg !1716, !psr.id !1717
  %38 = load i32, i32* %37, align 4, !dbg !1716, !psr.id !1718, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %38, metadata !1719, metadata !DIExpression()), !dbg !1627, !psr.id !1720
  %39 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1721, !psr.id !1722
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %39, i64 0, i64 10, !dbg !1723, !psr.id !1724
  %41 = load i32, i32* %40, align 4, !dbg !1723, !psr.id !1725, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %41, metadata !1726, metadata !DIExpression()), !dbg !1627, !psr.id !1727
  %42 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1728, !psr.id !1729
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %42, i64 0, i64 11, !dbg !1730, !psr.id !1731
  %44 = load i32, i32* %43, align 4, !dbg !1730, !psr.id !1732, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %44, metadata !1733, metadata !DIExpression()), !dbg !1627, !psr.id !1734
  %45 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1735, !psr.id !1736
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %45, i64 0, i64 12, !dbg !1737, !psr.id !1738
  %47 = load i32, i32* %46, align 4, !dbg !1737, !psr.id !1739, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %47, metadata !1740, metadata !DIExpression()), !dbg !1627, !psr.id !1741
  %48 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1742, !psr.id !1743
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %48, i64 0, i64 13, !dbg !1744, !psr.id !1745
  %50 = load i32, i32* %49, align 4, !dbg !1744, !psr.id !1746, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %50, metadata !1747, metadata !DIExpression()), !dbg !1627, !psr.id !1748
  %51 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1749, !psr.id !1750
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %51, i64 0, i64 14, !dbg !1751, !psr.id !1752
  %53 = load i32, i32* %52, align 4, !dbg !1751, !psr.id !1753, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %53, metadata !1754, metadata !DIExpression()), !dbg !1627, !psr.id !1755
  %54 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1756, !psr.id !1757
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %54, i64 0, i64 15, !dbg !1758, !psr.id !1759
  %56 = load i32, i32* %55, align 4, !dbg !1758, !psr.id !1760, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %56, metadata !1761, metadata !DIExpression()), !dbg !1627, !psr.id !1762
  br label %57, !dbg !1763, !psr.id !1764

57:                                               ; preds = %1147, %8
  %.026 = phi i32 [ %47, %8 ], [ %657, %1147 ], !dbg !1627, !psr.id !1765, !ValueTainted !1111
  %.024 = phi i32 [ %50, %8 ], [ %.125, %1147 ], !dbg !1766, !psr.id !1767, !ValueTainted !1111
  %.022 = phi i8* [ null, %8 ], [ %.123, %1147 ], !dbg !1627, !psr.id !1768, !PointTainted !1108
  %.05 = phi i64 [ %3, %8 ], [ %1148, %1147 ], !psr.id !1769
  %.03 = phi i8* [ %2, %8 ], [ %1149, %1147 ], !psr.id !1770, !PointTainted !1108
  %.01 = phi i8* [ %1, %8 ], [ %1150, %1147 ], !psr.id !1771, !PointTainted !1108
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1629, metadata !DIExpression()), !dbg !1627, !psr.id !1772
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1631, metadata !DIExpression()), !dbg !1627, !psr.id !1773
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1633, metadata !DIExpression()), !dbg !1627, !psr.id !1774
  call void @llvm.dbg.value(metadata i8* %.022, metadata !1635, metadata !DIExpression()), !dbg !1627, !psr.id !1775
  call void @llvm.dbg.value(metadata i32 %.024, metadata !1747, metadata !DIExpression()), !dbg !1627, !psr.id !1776
  call void @llvm.dbg.value(metadata i32 %.026, metadata !1740, metadata !DIExpression()), !dbg !1627, !psr.id !1777
  %58 = icmp ult i64 %.05, 64, !dbg !1778, !psr.id !1783
  br i1 %58, label %59, label %74, !dbg !1784, !psr.id !1785

59:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i32 0, metadata !1786, metadata !DIExpression()), !dbg !1627, !psr.id !1787
  br label %60, !dbg !1788, !psr.id !1791

60:                                               ; preds = %69, %59
  %.0 = phi i32 [ 0, %59 ], [ %70, %69 ], !dbg !1792, !psr.id !1793
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1786, metadata !DIExpression()), !dbg !1627, !psr.id !1794
  %61 = zext i32 %.0 to i64, !dbg !1795, !psr.id !1797
  %62 = icmp ult i64 %61, %.05, !dbg !1798, !psr.id !1799
  br i1 %62, label %63, label %71, !dbg !1800, !psr.id !1801

63:                                               ; preds = %60
  %64 = zext i32 %.0 to i64, !dbg !1802, !psr.id !1804
  %65 = getelementptr inbounds i8, i8* %.01, i64 %64, !dbg !1802, !psr.id !1805, !PointTainted !1108
  %66 = load i8, i8* %65, align 1, !dbg !1802, !psr.id !1806, !ValueTainted !1111
  %67 = zext i32 %.0 to i64, !dbg !1807, !psr.id !1808
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %67, !dbg !1807, !psr.id !1809, !PointTainted !1108
  store i8 %66, i8* %68, align 1, !dbg !1810, !psr.id !1811
  br label %69, !dbg !1812, !psr.id !1813

69:                                               ; preds = %63
  %70 = add i32 %.0, 1, !dbg !1814, !psr.id !1815
  call void @llvm.dbg.value(metadata i32 %70, metadata !1786, metadata !DIExpression()), !dbg !1627, !psr.id !1816
  br label %60, !dbg !1817, !llvm.loop !1818, !psr.id !1820

71:                                               ; preds = %60
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !1821, !psr.id !1822
  call void @llvm.dbg.value(metadata i8* %72, metadata !1629, metadata !DIExpression()), !dbg !1627, !psr.id !1823
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1635, metadata !DIExpression()), !dbg !1627, !psr.id !1824
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !1825, !psr.id !1826
  call void @llvm.dbg.value(metadata i8* %73, metadata !1631, metadata !DIExpression()), !dbg !1627, !psr.id !1827
  br label %74, !dbg !1828, !psr.id !1829

74:                                               ; preds = %71, %57
  %.123 = phi i8* [ %.03, %71 ], [ %.022, %57 ], !dbg !1627, !psr.id !1830, !PointTainted !1108
  %.14 = phi i8* [ %73, %71 ], [ %.03, %57 ], !psr.id !1831, !PointTainted !1108
  %.12 = phi i8* [ %72, %71 ], [ %.01, %57 ], !psr.id !1832, !PointTainted !1108
  call void @llvm.dbg.value(metadata i8* %.12, metadata !1629, metadata !DIExpression()), !dbg !1627, !psr.id !1833
  call void @llvm.dbg.value(metadata i8* %.14, metadata !1631, metadata !DIExpression()), !dbg !1627, !psr.id !1834
  call void @llvm.dbg.value(metadata i8* %.123, metadata !1635, metadata !DIExpression()), !dbg !1627, !psr.id !1835
  call void @llvm.dbg.value(metadata i32 %11, metadata !1836, metadata !DIExpression()), !dbg !1627, !psr.id !1837
  call void @llvm.dbg.value(metadata i32 %14, metadata !1838, metadata !DIExpression()), !dbg !1627, !psr.id !1839
  call void @llvm.dbg.value(metadata i32 %17, metadata !1840, metadata !DIExpression()), !dbg !1627, !psr.id !1841
  call void @llvm.dbg.value(metadata i32 %20, metadata !1842, metadata !DIExpression()), !dbg !1627, !psr.id !1843
  call void @llvm.dbg.value(metadata i32 %23, metadata !1844, metadata !DIExpression()), !dbg !1627, !psr.id !1845
  call void @llvm.dbg.value(metadata i32 %26, metadata !1846, metadata !DIExpression()), !dbg !1627, !psr.id !1847
  call void @llvm.dbg.value(metadata i32 %29, metadata !1848, metadata !DIExpression()), !dbg !1627, !psr.id !1849
  call void @llvm.dbg.value(metadata i32 %32, metadata !1850, metadata !DIExpression()), !dbg !1627, !psr.id !1851
  call void @llvm.dbg.value(metadata i32 %35, metadata !1852, metadata !DIExpression()), !dbg !1627, !psr.id !1853
  call void @llvm.dbg.value(metadata i32 %38, metadata !1854, metadata !DIExpression()), !dbg !1627, !psr.id !1855
  call void @llvm.dbg.value(metadata i32 %41, metadata !1856, metadata !DIExpression()), !dbg !1627, !psr.id !1857
  call void @llvm.dbg.value(metadata i32 %44, metadata !1858, metadata !DIExpression()), !dbg !1627, !psr.id !1859
  call void @llvm.dbg.value(metadata i32 %.026, metadata !1860, metadata !DIExpression()), !dbg !1627, !psr.id !1861
  call void @llvm.dbg.value(metadata i32 %.024, metadata !1862, metadata !DIExpression()), !dbg !1627, !psr.id !1863
  call void @llvm.dbg.value(metadata i32 %53, metadata !1864, metadata !DIExpression()), !dbg !1627, !psr.id !1865
  call void @llvm.dbg.value(metadata i32 %56, metadata !1866, metadata !DIExpression()), !dbg !1627, !psr.id !1867
  call void @llvm.dbg.value(metadata i32 20, metadata !1786, metadata !DIExpression()), !dbg !1627, !psr.id !1868
  br label %75, !dbg !1869, !psr.id !1871

75:                                               ; preds = %270, %74
  %.021 = phi i32 [ %56, %74 ], [ %191, %270 ], !dbg !1872, !psr.id !1873, !ValueTainted !1111
  %.020 = phi i32 [ %53, %74 ], [ %263, %270 ], !dbg !1872, !psr.id !1874, !ValueTainted !1111
  %.019 = phi i32 [ %.024, %74 ], [ %239, %270 ], !dbg !1872, !psr.id !1875, !ValueTainted !1111
  %.018 = phi i32 [ %.026, %74 ], [ %215, %270 ], !dbg !1872, !psr.id !1876, !ValueTainted !1111
  %.017 = phi i32 [ %44, %74 ], [ %216, %270 ], !dbg !1872, !psr.id !1877, !ValueTainted !1111
  %.016 = phi i32 [ %41, %74 ], [ %192, %270 ], !dbg !1872, !psr.id !1878, !ValueTainted !1111
  %.015 = phi i32 [ %38, %74 ], [ %264, %270 ], !dbg !1872, !psr.id !1879, !ValueTainted !1111
  %.014 = phi i32 [ %35, %74 ], [ %240, %270 ], !dbg !1872, !psr.id !1880, !ValueTainted !1111
  %.013 = phi i32 [ %32, %74 ], [ %245, %270 ], !dbg !1872, !psr.id !1881, !ValueTainted !1111
  %.012 = phi i32 [ %29, %74 ], [ %221, %270 ], !dbg !1872, !psr.id !1882, !ValueTainted !1111
  %.011 = phi i32 [ %26, %74 ], [ %197, %270 ], !dbg !1872, !psr.id !1883, !ValueTainted !1111
  %.010 = phi i32 [ %23, %74 ], [ %269, %270 ], !dbg !1872, !psr.id !1884, !ValueTainted !1111
  %.09 = phi i32 [ %20, %74 ], [ %258, %270 ], !dbg !1872, !psr.id !1885, !ValueTainted !1111
  %.08 = phi i32 [ %17, %74 ], [ %234, %270 ], !dbg !1872, !psr.id !1886, !ValueTainted !1111
  %.07 = phi i32 [ %14, %74 ], [ %210, %270 ], !dbg !1872, !psr.id !1887, !ValueTainted !1111
  %.06 = phi i32 [ %11, %74 ], [ %186, %270 ], !dbg !1872, !psr.id !1888, !ValueTainted !1111
  %.1 = phi i32 [ 20, %74 ], [ %271, %270 ], !dbg !1889, !psr.id !1890
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1786, metadata !DIExpression()), !dbg !1627, !psr.id !1891
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1836, metadata !DIExpression()), !dbg !1627, !psr.id !1892
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1838, metadata !DIExpression()), !dbg !1627, !psr.id !1893
  call void @llvm.dbg.value(metadata i32 %.08, metadata !1840, metadata !DIExpression()), !dbg !1627, !psr.id !1894
  call void @llvm.dbg.value(metadata i32 %.09, metadata !1842, metadata !DIExpression()), !dbg !1627, !psr.id !1895
  call void @llvm.dbg.value(metadata i32 %.010, metadata !1844, metadata !DIExpression()), !dbg !1627, !psr.id !1896
  call void @llvm.dbg.value(metadata i32 %.011, metadata !1846, metadata !DIExpression()), !dbg !1627, !psr.id !1897
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1848, metadata !DIExpression()), !dbg !1627, !psr.id !1898
  call void @llvm.dbg.value(metadata i32 %.013, metadata !1850, metadata !DIExpression()), !dbg !1627, !psr.id !1899
  call void @llvm.dbg.value(metadata i32 %.014, metadata !1852, metadata !DIExpression()), !dbg !1627, !psr.id !1900
  call void @llvm.dbg.value(metadata i32 %.015, metadata !1854, metadata !DIExpression()), !dbg !1627, !psr.id !1901
  call void @llvm.dbg.value(metadata i32 %.016, metadata !1856, metadata !DIExpression()), !dbg !1627, !psr.id !1902
  call void @llvm.dbg.value(metadata i32 %.017, metadata !1858, metadata !DIExpression()), !dbg !1627, !psr.id !1903
  call void @llvm.dbg.value(metadata i32 %.018, metadata !1860, metadata !DIExpression()), !dbg !1627, !psr.id !1904
  call void @llvm.dbg.value(metadata i32 %.019, metadata !1862, metadata !DIExpression()), !dbg !1627, !psr.id !1905
  call void @llvm.dbg.value(metadata i32 %.020, metadata !1864, metadata !DIExpression()), !dbg !1627, !psr.id !1906
  call void @llvm.dbg.value(metadata i32 %.021, metadata !1866, metadata !DIExpression()), !dbg !1627, !psr.id !1907
  %76 = icmp ugt i32 %.1, 0, !dbg !1908, !psr.id !1910
  br i1 %76, label %77, label %272, !dbg !1911, !psr.id !1912

77:                                               ; preds = %75
  %78 = add i32 %.06, %.010, !dbg !1913, !psr.id !1915, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %78, metadata !1836, metadata !DIExpression()), !dbg !1627, !psr.id !1916
  %79 = xor i32 %.018, %78, !dbg !1913, !psr.id !1917, !ValueTainted !1111
  %80 = shl i32 %79, 16, !dbg !1913, !psr.id !1918, !ValueTainted !1111
  %81 = xor i32 %.018, %78, !dbg !1913, !psr.id !1919, !ValueTainted !1111
  %82 = lshr i32 %81, 16, !dbg !1913, !psr.id !1920, !ValueTainted !1111
  %83 = or i32 %80, %82, !dbg !1913, !psr.id !1921, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %83, metadata !1860, metadata !DIExpression()), !dbg !1627, !psr.id !1922
  %84 = add i32 %.014, %83, !dbg !1913, !psr.id !1923, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %84, metadata !1852, metadata !DIExpression()), !dbg !1627, !psr.id !1924
  %85 = xor i32 %.010, %84, !dbg !1913, !psr.id !1925, !ValueTainted !1111
  %86 = shl i32 %85, 12, !dbg !1913, !psr.id !1926, !ValueTainted !1111
  %87 = xor i32 %.010, %84, !dbg !1913, !psr.id !1927, !ValueTainted !1111
  %88 = lshr i32 %87, 20, !dbg !1913, !psr.id !1928, !ValueTainted !1111
  %89 = or i32 %86, %88, !dbg !1913, !psr.id !1929, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %89, metadata !1844, metadata !DIExpression()), !dbg !1627, !psr.id !1930
  %90 = add i32 %78, %89, !dbg !1913, !psr.id !1931, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %90, metadata !1836, metadata !DIExpression()), !dbg !1627, !psr.id !1932
  %91 = xor i32 %83, %90, !dbg !1913, !psr.id !1933, !ValueTainted !1111
  %92 = shl i32 %91, 8, !dbg !1913, !psr.id !1934, !ValueTainted !1111
  %93 = xor i32 %83, %90, !dbg !1913, !psr.id !1935, !ValueTainted !1111
  %94 = lshr i32 %93, 24, !dbg !1913, !psr.id !1936, !ValueTainted !1111
  %95 = or i32 %92, %94, !dbg !1913, !psr.id !1937, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %95, metadata !1860, metadata !DIExpression()), !dbg !1627, !psr.id !1938
  %96 = add i32 %84, %95, !dbg !1913, !psr.id !1939, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %96, metadata !1852, metadata !DIExpression()), !dbg !1627, !psr.id !1940
  %97 = xor i32 %89, %96, !dbg !1913, !psr.id !1941, !ValueTainted !1111
  %98 = shl i32 %97, 7, !dbg !1913, !psr.id !1942, !ValueTainted !1111
  %99 = xor i32 %89, %96, !dbg !1913, !psr.id !1943, !ValueTainted !1111
  %100 = lshr i32 %99, 25, !dbg !1913, !psr.id !1944, !ValueTainted !1111
  %101 = or i32 %98, %100, !dbg !1913, !psr.id !1945, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %101, metadata !1844, metadata !DIExpression()), !dbg !1627, !psr.id !1946
  %102 = add i32 %.07, %.011, !dbg !1947, !psr.id !1948, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %102, metadata !1838, metadata !DIExpression()), !dbg !1627, !psr.id !1949
  %103 = xor i32 %.019, %102, !dbg !1947, !psr.id !1950, !ValueTainted !1111
  %104 = shl i32 %103, 16, !dbg !1947, !psr.id !1951, !ValueTainted !1111
  %105 = xor i32 %.019, %102, !dbg !1947, !psr.id !1952, !ValueTainted !1111
  %106 = lshr i32 %105, 16, !dbg !1947, !psr.id !1953, !ValueTainted !1111
  %107 = or i32 %104, %106, !dbg !1947, !psr.id !1954, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %107, metadata !1862, metadata !DIExpression()), !dbg !1627, !psr.id !1955
  %108 = add i32 %.015, %107, !dbg !1947, !psr.id !1956, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %108, metadata !1854, metadata !DIExpression()), !dbg !1627, !psr.id !1957
  %109 = xor i32 %.011, %108, !dbg !1947, !psr.id !1958, !ValueTainted !1111
  %110 = shl i32 %109, 12, !dbg !1947, !psr.id !1959, !ValueTainted !1111
  %111 = xor i32 %.011, %108, !dbg !1947, !psr.id !1960, !ValueTainted !1111
  %112 = lshr i32 %111, 20, !dbg !1947, !psr.id !1961, !ValueTainted !1111
  %113 = or i32 %110, %112, !dbg !1947, !psr.id !1962, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %113, metadata !1846, metadata !DIExpression()), !dbg !1627, !psr.id !1963
  %114 = add i32 %102, %113, !dbg !1947, !psr.id !1964, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %114, metadata !1838, metadata !DIExpression()), !dbg !1627, !psr.id !1965
  %115 = xor i32 %107, %114, !dbg !1947, !psr.id !1966, !ValueTainted !1111
  %116 = shl i32 %115, 8, !dbg !1947, !psr.id !1967, !ValueTainted !1111
  %117 = xor i32 %107, %114, !dbg !1947, !psr.id !1968, !ValueTainted !1111
  %118 = lshr i32 %117, 24, !dbg !1947, !psr.id !1969, !ValueTainted !1111
  %119 = or i32 %116, %118, !dbg !1947, !psr.id !1970, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %119, metadata !1862, metadata !DIExpression()), !dbg !1627, !psr.id !1971
  %120 = add i32 %108, %119, !dbg !1947, !psr.id !1972, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %120, metadata !1854, metadata !DIExpression()), !dbg !1627, !psr.id !1973
  %121 = xor i32 %113, %120, !dbg !1947, !psr.id !1974, !ValueTainted !1111
  %122 = shl i32 %121, 7, !dbg !1947, !psr.id !1975, !ValueTainted !1111
  %123 = xor i32 %113, %120, !dbg !1947, !psr.id !1976, !ValueTainted !1111
  %124 = lshr i32 %123, 25, !dbg !1947, !psr.id !1977, !ValueTainted !1111
  %125 = or i32 %122, %124, !dbg !1947, !psr.id !1978, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %125, metadata !1846, metadata !DIExpression()), !dbg !1627, !psr.id !1979
  %126 = add i32 %.08, %.012, !dbg !1980, !psr.id !1981, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %126, metadata !1840, metadata !DIExpression()), !dbg !1627, !psr.id !1982
  %127 = xor i32 %.020, %126, !dbg !1980, !psr.id !1983, !ValueTainted !1111
  %128 = shl i32 %127, 16, !dbg !1980, !psr.id !1984, !ValueTainted !1111
  %129 = xor i32 %.020, %126, !dbg !1980, !psr.id !1985, !ValueTainted !1111
  %130 = lshr i32 %129, 16, !dbg !1980, !psr.id !1986, !ValueTainted !1111
  %131 = or i32 %128, %130, !dbg !1980, !psr.id !1987, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %131, metadata !1864, metadata !DIExpression()), !dbg !1627, !psr.id !1988
  %132 = add i32 %.016, %131, !dbg !1980, !psr.id !1989, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %132, metadata !1856, metadata !DIExpression()), !dbg !1627, !psr.id !1990
  %133 = xor i32 %.012, %132, !dbg !1980, !psr.id !1991, !ValueTainted !1111
  %134 = shl i32 %133, 12, !dbg !1980, !psr.id !1992, !ValueTainted !1111
  %135 = xor i32 %.012, %132, !dbg !1980, !psr.id !1993, !ValueTainted !1111
  %136 = lshr i32 %135, 20, !dbg !1980, !psr.id !1994, !ValueTainted !1111
  %137 = or i32 %134, %136, !dbg !1980, !psr.id !1995, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %137, metadata !1848, metadata !DIExpression()), !dbg !1627, !psr.id !1996
  %138 = add i32 %126, %137, !dbg !1980, !psr.id !1997, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %138, metadata !1840, metadata !DIExpression()), !dbg !1627, !psr.id !1998
  %139 = xor i32 %131, %138, !dbg !1980, !psr.id !1999, !ValueTainted !1111
  %140 = shl i32 %139, 8, !dbg !1980, !psr.id !2000, !ValueTainted !1111
  %141 = xor i32 %131, %138, !dbg !1980, !psr.id !2001, !ValueTainted !1111
  %142 = lshr i32 %141, 24, !dbg !1980, !psr.id !2002, !ValueTainted !1111
  %143 = or i32 %140, %142, !dbg !1980, !psr.id !2003, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %143, metadata !1864, metadata !DIExpression()), !dbg !1627, !psr.id !2004
  %144 = add i32 %132, %143, !dbg !1980, !psr.id !2005, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %144, metadata !1856, metadata !DIExpression()), !dbg !1627, !psr.id !2006
  %145 = xor i32 %137, %144, !dbg !1980, !psr.id !2007, !ValueTainted !1111
  %146 = shl i32 %145, 7, !dbg !1980, !psr.id !2008, !ValueTainted !1111
  %147 = xor i32 %137, %144, !dbg !1980, !psr.id !2009, !ValueTainted !1111
  %148 = lshr i32 %147, 25, !dbg !1980, !psr.id !2010, !ValueTainted !1111
  %149 = or i32 %146, %148, !dbg !1980, !psr.id !2011, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %149, metadata !1848, metadata !DIExpression()), !dbg !1627, !psr.id !2012
  %150 = add i32 %.09, %.013, !dbg !2013, !psr.id !2014, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %150, metadata !1842, metadata !DIExpression()), !dbg !1627, !psr.id !2015
  %151 = xor i32 %.021, %150, !dbg !2013, !psr.id !2016, !ValueTainted !1111
  %152 = shl i32 %151, 16, !dbg !2013, !psr.id !2017, !ValueTainted !1111
  %153 = xor i32 %.021, %150, !dbg !2013, !psr.id !2018, !ValueTainted !1111
  %154 = lshr i32 %153, 16, !dbg !2013, !psr.id !2019, !ValueTainted !1111
  %155 = or i32 %152, %154, !dbg !2013, !psr.id !2020, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %155, metadata !1866, metadata !DIExpression()), !dbg !1627, !psr.id !2021
  %156 = add i32 %.017, %155, !dbg !2013, !psr.id !2022, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %156, metadata !1858, metadata !DIExpression()), !dbg !1627, !psr.id !2023
  %157 = xor i32 %.013, %156, !dbg !2013, !psr.id !2024, !ValueTainted !1111
  %158 = shl i32 %157, 12, !dbg !2013, !psr.id !2025, !ValueTainted !1111
  %159 = xor i32 %.013, %156, !dbg !2013, !psr.id !2026, !ValueTainted !1111
  %160 = lshr i32 %159, 20, !dbg !2013, !psr.id !2027, !ValueTainted !1111
  %161 = or i32 %158, %160, !dbg !2013, !psr.id !2028, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %161, metadata !1850, metadata !DIExpression()), !dbg !1627, !psr.id !2029
  %162 = add i32 %150, %161, !dbg !2013, !psr.id !2030, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %162, metadata !1842, metadata !DIExpression()), !dbg !1627, !psr.id !2031
  %163 = xor i32 %155, %162, !dbg !2013, !psr.id !2032, !ValueTainted !1111
  %164 = shl i32 %163, 8, !dbg !2013, !psr.id !2033, !ValueTainted !1111
  %165 = xor i32 %155, %162, !dbg !2013, !psr.id !2034, !ValueTainted !1111
  %166 = lshr i32 %165, 24, !dbg !2013, !psr.id !2035, !ValueTainted !1111
  %167 = or i32 %164, %166, !dbg !2013, !psr.id !2036, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %167, metadata !1866, metadata !DIExpression()), !dbg !1627, !psr.id !2037
  %168 = add i32 %156, %167, !dbg !2013, !psr.id !2038, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %168, metadata !1858, metadata !DIExpression()), !dbg !1627, !psr.id !2039
  %169 = xor i32 %161, %168, !dbg !2013, !psr.id !2040, !ValueTainted !1111
  %170 = shl i32 %169, 7, !dbg !2013, !psr.id !2041, !ValueTainted !1111
  %171 = xor i32 %161, %168, !dbg !2013, !psr.id !2042, !ValueTainted !1111
  %172 = lshr i32 %171, 25, !dbg !2013, !psr.id !2043, !ValueTainted !1111
  %173 = or i32 %170, %172, !dbg !2013, !psr.id !2044, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %173, metadata !1850, metadata !DIExpression()), !dbg !1627, !psr.id !2045
  %174 = add i32 %90, %125, !dbg !2046, !psr.id !2047, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %174, metadata !1836, metadata !DIExpression()), !dbg !1627, !psr.id !2048
  %175 = xor i32 %167, %174, !dbg !2046, !psr.id !2049, !ValueTainted !1111
  %176 = shl i32 %175, 16, !dbg !2046, !psr.id !2050, !ValueTainted !1111
  %177 = xor i32 %167, %174, !dbg !2046, !psr.id !2051, !ValueTainted !1111
  %178 = lshr i32 %177, 16, !dbg !2046, !psr.id !2052, !ValueTainted !1111
  %179 = or i32 %176, %178, !dbg !2046, !psr.id !2053, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %179, metadata !1866, metadata !DIExpression()), !dbg !1627, !psr.id !2054
  %180 = add i32 %144, %179, !dbg !2046, !psr.id !2055, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %180, metadata !1856, metadata !DIExpression()), !dbg !1627, !psr.id !2056
  %181 = xor i32 %125, %180, !dbg !2046, !psr.id !2057, !ValueTainted !1111
  %182 = shl i32 %181, 12, !dbg !2046, !psr.id !2058, !ValueTainted !1111
  %183 = xor i32 %125, %180, !dbg !2046, !psr.id !2059, !ValueTainted !1111
  %184 = lshr i32 %183, 20, !dbg !2046, !psr.id !2060, !ValueTainted !1111
  %185 = or i32 %182, %184, !dbg !2046, !psr.id !2061, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %185, metadata !1846, metadata !DIExpression()), !dbg !1627, !psr.id !2062
  %186 = add i32 %174, %185, !dbg !2046, !psr.id !2063, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %186, metadata !1836, metadata !DIExpression()), !dbg !1627, !psr.id !2064
  %187 = xor i32 %179, %186, !dbg !2046, !psr.id !2065, !ValueTainted !1111
  %188 = shl i32 %187, 8, !dbg !2046, !psr.id !2066, !ValueTainted !1111
  %189 = xor i32 %179, %186, !dbg !2046, !psr.id !2067, !ValueTainted !1111
  %190 = lshr i32 %189, 24, !dbg !2046, !psr.id !2068, !ValueTainted !1111
  %191 = or i32 %188, %190, !dbg !2046, !psr.id !2069, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %191, metadata !1866, metadata !DIExpression()), !dbg !1627, !psr.id !2070
  %192 = add i32 %180, %191, !dbg !2046, !psr.id !2071, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %192, metadata !1856, metadata !DIExpression()), !dbg !1627, !psr.id !2072
  %193 = xor i32 %185, %192, !dbg !2046, !psr.id !2073, !ValueTainted !1111
  %194 = shl i32 %193, 7, !dbg !2046, !psr.id !2074, !ValueTainted !1111
  %195 = xor i32 %185, %192, !dbg !2046, !psr.id !2075, !ValueTainted !1111
  %196 = lshr i32 %195, 25, !dbg !2046, !psr.id !2076, !ValueTainted !1111
  %197 = or i32 %194, %196, !dbg !2046, !psr.id !2077, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %197, metadata !1846, metadata !DIExpression()), !dbg !1627, !psr.id !2078
  %198 = add i32 %114, %149, !dbg !2079, !psr.id !2080, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %198, metadata !1838, metadata !DIExpression()), !dbg !1627, !psr.id !2081
  %199 = xor i32 %95, %198, !dbg !2079, !psr.id !2082, !ValueTainted !1111
  %200 = shl i32 %199, 16, !dbg !2079, !psr.id !2083, !ValueTainted !1111
  %201 = xor i32 %95, %198, !dbg !2079, !psr.id !2084, !ValueTainted !1111
  %202 = lshr i32 %201, 16, !dbg !2079, !psr.id !2085, !ValueTainted !1111
  %203 = or i32 %200, %202, !dbg !2079, !psr.id !2086, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %203, metadata !1860, metadata !DIExpression()), !dbg !1627, !psr.id !2087
  %204 = add i32 %168, %203, !dbg !2079, !psr.id !2088, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %204, metadata !1858, metadata !DIExpression()), !dbg !1627, !psr.id !2089
  %205 = xor i32 %149, %204, !dbg !2079, !psr.id !2090, !ValueTainted !1111
  %206 = shl i32 %205, 12, !dbg !2079, !psr.id !2091, !ValueTainted !1111
  %207 = xor i32 %149, %204, !dbg !2079, !psr.id !2092, !ValueTainted !1111
  %208 = lshr i32 %207, 20, !dbg !2079, !psr.id !2093, !ValueTainted !1111
  %209 = or i32 %206, %208, !dbg !2079, !psr.id !2094, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %209, metadata !1848, metadata !DIExpression()), !dbg !1627, !psr.id !2095
  %210 = add i32 %198, %209, !dbg !2079, !psr.id !2096, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %210, metadata !1838, metadata !DIExpression()), !dbg !1627, !psr.id !2097
  %211 = xor i32 %203, %210, !dbg !2079, !psr.id !2098, !ValueTainted !1111
  %212 = shl i32 %211, 8, !dbg !2079, !psr.id !2099, !ValueTainted !1111
  %213 = xor i32 %203, %210, !dbg !2079, !psr.id !2100, !ValueTainted !1111
  %214 = lshr i32 %213, 24, !dbg !2079, !psr.id !2101, !ValueTainted !1111
  %215 = or i32 %212, %214, !dbg !2079, !psr.id !2102, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %215, metadata !1860, metadata !DIExpression()), !dbg !1627, !psr.id !2103
  %216 = add i32 %204, %215, !dbg !2079, !psr.id !2104, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %216, metadata !1858, metadata !DIExpression()), !dbg !1627, !psr.id !2105
  %217 = xor i32 %209, %216, !dbg !2079, !psr.id !2106, !ValueTainted !1111
  %218 = shl i32 %217, 7, !dbg !2079, !psr.id !2107, !ValueTainted !1111
  %219 = xor i32 %209, %216, !dbg !2079, !psr.id !2108, !ValueTainted !1111
  %220 = lshr i32 %219, 25, !dbg !2079, !psr.id !2109, !ValueTainted !1111
  %221 = or i32 %218, %220, !dbg !2079, !psr.id !2110, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %221, metadata !1848, metadata !DIExpression()), !dbg !1627, !psr.id !2111
  %222 = add i32 %138, %173, !dbg !2112, !psr.id !2113, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %222, metadata !1840, metadata !DIExpression()), !dbg !1627, !psr.id !2114
  %223 = xor i32 %119, %222, !dbg !2112, !psr.id !2115, !ValueTainted !1111
  %224 = shl i32 %223, 16, !dbg !2112, !psr.id !2116, !ValueTainted !1111
  %225 = xor i32 %119, %222, !dbg !2112, !psr.id !2117, !ValueTainted !1111
  %226 = lshr i32 %225, 16, !dbg !2112, !psr.id !2118, !ValueTainted !1111
  %227 = or i32 %224, %226, !dbg !2112, !psr.id !2119, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %227, metadata !1862, metadata !DIExpression()), !dbg !1627, !psr.id !2120
  %228 = add i32 %96, %227, !dbg !2112, !psr.id !2121, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %228, metadata !1852, metadata !DIExpression()), !dbg !1627, !psr.id !2122
  %229 = xor i32 %173, %228, !dbg !2112, !psr.id !2123, !ValueTainted !1111
  %230 = shl i32 %229, 12, !dbg !2112, !psr.id !2124, !ValueTainted !1111
  %231 = xor i32 %173, %228, !dbg !2112, !psr.id !2125, !ValueTainted !1111
  %232 = lshr i32 %231, 20, !dbg !2112, !psr.id !2126, !ValueTainted !1111
  %233 = or i32 %230, %232, !dbg !2112, !psr.id !2127, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %233, metadata !1850, metadata !DIExpression()), !dbg !1627, !psr.id !2128
  %234 = add i32 %222, %233, !dbg !2112, !psr.id !2129, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %234, metadata !1840, metadata !DIExpression()), !dbg !1627, !psr.id !2130
  %235 = xor i32 %227, %234, !dbg !2112, !psr.id !2131, !ValueTainted !1111
  %236 = shl i32 %235, 8, !dbg !2112, !psr.id !2132, !ValueTainted !1111
  %237 = xor i32 %227, %234, !dbg !2112, !psr.id !2133, !ValueTainted !1111
  %238 = lshr i32 %237, 24, !dbg !2112, !psr.id !2134, !ValueTainted !1111
  %239 = or i32 %236, %238, !dbg !2112, !psr.id !2135, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %239, metadata !1862, metadata !DIExpression()), !dbg !1627, !psr.id !2136
  %240 = add i32 %228, %239, !dbg !2112, !psr.id !2137, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %240, metadata !1852, metadata !DIExpression()), !dbg !1627, !psr.id !2138
  %241 = xor i32 %233, %240, !dbg !2112, !psr.id !2139, !ValueTainted !1111
  %242 = shl i32 %241, 7, !dbg !2112, !psr.id !2140, !ValueTainted !1111
  %243 = xor i32 %233, %240, !dbg !2112, !psr.id !2141, !ValueTainted !1111
  %244 = lshr i32 %243, 25, !dbg !2112, !psr.id !2142, !ValueTainted !1111
  %245 = or i32 %242, %244, !dbg !2112, !psr.id !2143, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %245, metadata !1850, metadata !DIExpression()), !dbg !1627, !psr.id !2144
  %246 = add i32 %162, %101, !dbg !2145, !psr.id !2146, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %246, metadata !1842, metadata !DIExpression()), !dbg !1627, !psr.id !2147
  %247 = xor i32 %143, %246, !dbg !2145, !psr.id !2148, !ValueTainted !1111
  %248 = shl i32 %247, 16, !dbg !2145, !psr.id !2149, !ValueTainted !1111
  %249 = xor i32 %143, %246, !dbg !2145, !psr.id !2150, !ValueTainted !1111
  %250 = lshr i32 %249, 16, !dbg !2145, !psr.id !2151, !ValueTainted !1111
  %251 = or i32 %248, %250, !dbg !2145, !psr.id !2152, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %251, metadata !1864, metadata !DIExpression()), !dbg !1627, !psr.id !2153
  %252 = add i32 %120, %251, !dbg !2145, !psr.id !2154, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %252, metadata !1854, metadata !DIExpression()), !dbg !1627, !psr.id !2155
  %253 = xor i32 %101, %252, !dbg !2145, !psr.id !2156, !ValueTainted !1111
  %254 = shl i32 %253, 12, !dbg !2145, !psr.id !2157, !ValueTainted !1111
  %255 = xor i32 %101, %252, !dbg !2145, !psr.id !2158, !ValueTainted !1111
  %256 = lshr i32 %255, 20, !dbg !2145, !psr.id !2159, !ValueTainted !1111
  %257 = or i32 %254, %256, !dbg !2145, !psr.id !2160, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %257, metadata !1844, metadata !DIExpression()), !dbg !1627, !psr.id !2161
  %258 = add i32 %246, %257, !dbg !2145, !psr.id !2162, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %258, metadata !1842, metadata !DIExpression()), !dbg !1627, !psr.id !2163
  %259 = xor i32 %251, %258, !dbg !2145, !psr.id !2164, !ValueTainted !1111
  %260 = shl i32 %259, 8, !dbg !2145, !psr.id !2165, !ValueTainted !1111
  %261 = xor i32 %251, %258, !dbg !2145, !psr.id !2166, !ValueTainted !1111
  %262 = lshr i32 %261, 24, !dbg !2145, !psr.id !2167, !ValueTainted !1111
  %263 = or i32 %260, %262, !dbg !2145, !psr.id !2168, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %263, metadata !1864, metadata !DIExpression()), !dbg !1627, !psr.id !2169
  %264 = add i32 %252, %263, !dbg !2145, !psr.id !2170, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %264, metadata !1854, metadata !DIExpression()), !dbg !1627, !psr.id !2171
  %265 = xor i32 %257, %264, !dbg !2145, !psr.id !2172, !ValueTainted !1111
  %266 = shl i32 %265, 7, !dbg !2145, !psr.id !2173, !ValueTainted !1111
  %267 = xor i32 %257, %264, !dbg !2145, !psr.id !2174, !ValueTainted !1111
  %268 = lshr i32 %267, 25, !dbg !2145, !psr.id !2175, !ValueTainted !1111
  %269 = or i32 %266, %268, !dbg !2145, !psr.id !2176, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %269, metadata !1844, metadata !DIExpression()), !dbg !1627, !psr.id !2177
  br label %270, !dbg !2178, !psr.id !2179

270:                                              ; preds = %77
  %271 = sub i32 %.1, 2, !dbg !2180, !psr.id !2181
  call void @llvm.dbg.value(metadata i32 %271, metadata !1786, metadata !DIExpression()), !dbg !1627, !psr.id !2182
  br label %75, !dbg !2183, !llvm.loop !2184, !psr.id !2186

272:                                              ; preds = %75
  %273 = add i32 %.06, %11, !dbg !2187, !psr.id !2188, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %273, metadata !1836, metadata !DIExpression()), !dbg !1627, !psr.id !2189
  %274 = add i32 %.07, %14, !dbg !2190, !psr.id !2191, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %274, metadata !1838, metadata !DIExpression()), !dbg !1627, !psr.id !2192
  %275 = add i32 %.08, %17, !dbg !2193, !psr.id !2194, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %275, metadata !1840, metadata !DIExpression()), !dbg !1627, !psr.id !2195
  %276 = add i32 %.09, %20, !dbg !2196, !psr.id !2197, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %276, metadata !1842, metadata !DIExpression()), !dbg !1627, !psr.id !2198
  %277 = add i32 %.010, %23, !dbg !2199, !psr.id !2200, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %277, metadata !1844, metadata !DIExpression()), !dbg !1627, !psr.id !2201
  %278 = add i32 %.011, %26, !dbg !2202, !psr.id !2203, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %278, metadata !1846, metadata !DIExpression()), !dbg !1627, !psr.id !2204
  %279 = add i32 %.012, %29, !dbg !2205, !psr.id !2206, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %279, metadata !1848, metadata !DIExpression()), !dbg !1627, !psr.id !2207
  %280 = add i32 %.013, %32, !dbg !2208, !psr.id !2209, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %280, metadata !1850, metadata !DIExpression()), !dbg !1627, !psr.id !2210
  %281 = add i32 %.014, %35, !dbg !2211, !psr.id !2212, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %281, metadata !1852, metadata !DIExpression()), !dbg !1627, !psr.id !2213
  %282 = add i32 %.015, %38, !dbg !2214, !psr.id !2215, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %282, metadata !1854, metadata !DIExpression()), !dbg !1627, !psr.id !2216
  %283 = add i32 %.016, %41, !dbg !2217, !psr.id !2218, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %283, metadata !1856, metadata !DIExpression()), !dbg !1627, !psr.id !2219
  %284 = add i32 %.017, %44, !dbg !2220, !psr.id !2221, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %284, metadata !1858, metadata !DIExpression()), !dbg !1627, !psr.id !2222
  %285 = add i32 %.018, %.026, !dbg !2223, !psr.id !2224, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %285, metadata !1860, metadata !DIExpression()), !dbg !1627, !psr.id !2225
  %286 = add i32 %.019, %.024, !dbg !2226, !psr.id !2227, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %286, metadata !1862, metadata !DIExpression()), !dbg !1627, !psr.id !2228
  %287 = add i32 %.020, %53, !dbg !2229, !psr.id !2230, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %287, metadata !1864, metadata !DIExpression()), !dbg !1627, !psr.id !2231
  %288 = add i32 %.021, %56, !dbg !2232, !psr.id !2233, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %288, metadata !1866, metadata !DIExpression()), !dbg !1627, !psr.id !2234
  %289 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !2235, !psr.id !2236, !PointTainted !1108
  %290 = getelementptr inbounds i8, i8* %289, i64 0, !dbg !2235, !psr.id !2237, !PointTainted !1108
  %291 = load i8, i8* %290, align 1, !dbg !2235, !psr.id !2238, !ValueTainted !1111
  %292 = zext i8 %291 to i32, !dbg !2235, !psr.id !2239, !ValueTainted !1111
  %293 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !2235, !psr.id !2240, !PointTainted !1108
  %294 = getelementptr inbounds i8, i8* %293, i64 1, !dbg !2235, !psr.id !2241, !PointTainted !1108
  %295 = load i8, i8* %294, align 1, !dbg !2235, !psr.id !2242, !ValueTainted !1111
  %296 = zext i8 %295 to i32, !dbg !2235, !psr.id !2243, !ValueTainted !1111
  %297 = shl i32 %296, 8, !dbg !2235, !psr.id !2244, !ValueTainted !1111
  %298 = or i32 %292, %297, !dbg !2235, !psr.id !2245, !ValueTainted !1111
  %299 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !2235, !psr.id !2246, !PointTainted !1108
  %300 = getelementptr inbounds i8, i8* %299, i64 2, !dbg !2235, !psr.id !2247, !PointTainted !1108
  %301 = load i8, i8* %300, align 1, !dbg !2235, !psr.id !2248, !ValueTainted !1111
  %302 = zext i8 %301 to i32, !dbg !2235, !psr.id !2249, !ValueTainted !1111
  %303 = shl i32 %302, 16, !dbg !2235, !psr.id !2250, !ValueTainted !1111
  %304 = or i32 %298, %303, !dbg !2235, !psr.id !2251, !ValueTainted !1111
  %305 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !2235, !psr.id !2252, !PointTainted !1108
  %306 = getelementptr inbounds i8, i8* %305, i64 3, !dbg !2235, !psr.id !2253, !PointTainted !1108
  %307 = load i8, i8* %306, align 1, !dbg !2235, !psr.id !2254, !ValueTainted !1111
  %308 = zext i8 %307 to i32, !dbg !2235, !psr.id !2255, !ValueTainted !1111
  %309 = shl i32 %308, 24, !dbg !2235, !psr.id !2256, !ValueTainted !1111
  %310 = or i32 %304, %309, !dbg !2235, !psr.id !2257, !ValueTainted !1111
  %311 = xor i32 %273, %310, !dbg !2235, !psr.id !2258, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %311, metadata !1836, metadata !DIExpression()), !dbg !1627, !psr.id !2259
  %312 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !2260, !psr.id !2261, !PointTainted !1108
  %313 = getelementptr inbounds i8, i8* %312, i64 0, !dbg !2260, !psr.id !2262, !PointTainted !1108
  %314 = load i8, i8* %313, align 1, !dbg !2260, !psr.id !2263, !ValueTainted !1111
  %315 = zext i8 %314 to i32, !dbg !2260, !psr.id !2264, !ValueTainted !1111
  %316 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !2260, !psr.id !2265, !PointTainted !1108
  %317 = getelementptr inbounds i8, i8* %316, i64 1, !dbg !2260, !psr.id !2266, !PointTainted !1108
  %318 = load i8, i8* %317, align 1, !dbg !2260, !psr.id !2267, !ValueTainted !1111
  %319 = zext i8 %318 to i32, !dbg !2260, !psr.id !2268, !ValueTainted !1111
  %320 = shl i32 %319, 8, !dbg !2260, !psr.id !2269, !ValueTainted !1111
  %321 = or i32 %315, %320, !dbg !2260, !psr.id !2270, !ValueTainted !1111
  %322 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !2260, !psr.id !2271, !PointTainted !1108
  %323 = getelementptr inbounds i8, i8* %322, i64 2, !dbg !2260, !psr.id !2272, !PointTainted !1108
  %324 = load i8, i8* %323, align 1, !dbg !2260, !psr.id !2273, !ValueTainted !1111
  %325 = zext i8 %324 to i32, !dbg !2260, !psr.id !2274, !ValueTainted !1111
  %326 = shl i32 %325, 16, !dbg !2260, !psr.id !2275, !ValueTainted !1111
  %327 = or i32 %321, %326, !dbg !2260, !psr.id !2276, !ValueTainted !1111
  %328 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !2260, !psr.id !2277, !PointTainted !1108
  %329 = getelementptr inbounds i8, i8* %328, i64 3, !dbg !2260, !psr.id !2278, !PointTainted !1108
  %330 = load i8, i8* %329, align 1, !dbg !2260, !psr.id !2279, !ValueTainted !1111
  %331 = zext i8 %330 to i32, !dbg !2260, !psr.id !2280, !ValueTainted !1111
  %332 = shl i32 %331, 24, !dbg !2260, !psr.id !2281, !ValueTainted !1111
  %333 = or i32 %327, %332, !dbg !2260, !psr.id !2282, !ValueTainted !1111
  %334 = xor i32 %274, %333, !dbg !2260, !psr.id !2283, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %334, metadata !1838, metadata !DIExpression()), !dbg !1627, !psr.id !2284
  %335 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !2285, !psr.id !2286, !PointTainted !1108
  %336 = getelementptr inbounds i8, i8* %335, i64 0, !dbg !2285, !psr.id !2287, !PointTainted !1108
  %337 = load i8, i8* %336, align 1, !dbg !2285, !psr.id !2288, !ValueTainted !1111
  %338 = zext i8 %337 to i32, !dbg !2285, !psr.id !2289, !ValueTainted !1111
  %339 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !2285, !psr.id !2290, !PointTainted !1108
  %340 = getelementptr inbounds i8, i8* %339, i64 1, !dbg !2285, !psr.id !2291, !PointTainted !1108
  %341 = load i8, i8* %340, align 1, !dbg !2285, !psr.id !2292, !ValueTainted !1111
  %342 = zext i8 %341 to i32, !dbg !2285, !psr.id !2293, !ValueTainted !1111
  %343 = shl i32 %342, 8, !dbg !2285, !psr.id !2294, !ValueTainted !1111
  %344 = or i32 %338, %343, !dbg !2285, !psr.id !2295, !ValueTainted !1111
  %345 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !2285, !psr.id !2296, !PointTainted !1108
  %346 = getelementptr inbounds i8, i8* %345, i64 2, !dbg !2285, !psr.id !2297, !PointTainted !1108
  %347 = load i8, i8* %346, align 1, !dbg !2285, !psr.id !2298, !ValueTainted !1111
  %348 = zext i8 %347 to i32, !dbg !2285, !psr.id !2299, !ValueTainted !1111
  %349 = shl i32 %348, 16, !dbg !2285, !psr.id !2300, !ValueTainted !1111
  %350 = or i32 %344, %349, !dbg !2285, !psr.id !2301, !ValueTainted !1111
  %351 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !2285, !psr.id !2302, !PointTainted !1108
  %352 = getelementptr inbounds i8, i8* %351, i64 3, !dbg !2285, !psr.id !2303, !PointTainted !1108
  %353 = load i8, i8* %352, align 1, !dbg !2285, !psr.id !2304, !ValueTainted !1111
  %354 = zext i8 %353 to i32, !dbg !2285, !psr.id !2305, !ValueTainted !1111
  %355 = shl i32 %354, 24, !dbg !2285, !psr.id !2306, !ValueTainted !1111
  %356 = or i32 %350, %355, !dbg !2285, !psr.id !2307, !ValueTainted !1111
  %357 = xor i32 %275, %356, !dbg !2285, !psr.id !2308, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %357, metadata !1840, metadata !DIExpression()), !dbg !1627, !psr.id !2309
  %358 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !2310, !psr.id !2311, !PointTainted !1108
  %359 = getelementptr inbounds i8, i8* %358, i64 0, !dbg !2310, !psr.id !2312, !PointTainted !1108
  %360 = load i8, i8* %359, align 1, !dbg !2310, !psr.id !2313, !ValueTainted !1111
  %361 = zext i8 %360 to i32, !dbg !2310, !psr.id !2314, !ValueTainted !1111
  %362 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !2310, !psr.id !2315, !PointTainted !1108
  %363 = getelementptr inbounds i8, i8* %362, i64 1, !dbg !2310, !psr.id !2316, !PointTainted !1108
  %364 = load i8, i8* %363, align 1, !dbg !2310, !psr.id !2317, !ValueTainted !1111
  %365 = zext i8 %364 to i32, !dbg !2310, !psr.id !2318, !ValueTainted !1111
  %366 = shl i32 %365, 8, !dbg !2310, !psr.id !2319, !ValueTainted !1111
  %367 = or i32 %361, %366, !dbg !2310, !psr.id !2320, !ValueTainted !1111
  %368 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !2310, !psr.id !2321, !PointTainted !1108
  %369 = getelementptr inbounds i8, i8* %368, i64 2, !dbg !2310, !psr.id !2322, !PointTainted !1108
  %370 = load i8, i8* %369, align 1, !dbg !2310, !psr.id !2323, !ValueTainted !1111
  %371 = zext i8 %370 to i32, !dbg !2310, !psr.id !2324, !ValueTainted !1111
  %372 = shl i32 %371, 16, !dbg !2310, !psr.id !2325, !ValueTainted !1111
  %373 = or i32 %367, %372, !dbg !2310, !psr.id !2326, !ValueTainted !1111
  %374 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !2310, !psr.id !2327, !PointTainted !1108
  %375 = getelementptr inbounds i8, i8* %374, i64 3, !dbg !2310, !psr.id !2328, !PointTainted !1108
  %376 = load i8, i8* %375, align 1, !dbg !2310, !psr.id !2329, !ValueTainted !1111
  %377 = zext i8 %376 to i32, !dbg !2310, !psr.id !2330, !ValueTainted !1111
  %378 = shl i32 %377, 24, !dbg !2310, !psr.id !2331, !ValueTainted !1111
  %379 = or i32 %373, %378, !dbg !2310, !psr.id !2332, !ValueTainted !1111
  %380 = xor i32 %276, %379, !dbg !2310, !psr.id !2333, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %380, metadata !1842, metadata !DIExpression()), !dbg !1627, !psr.id !2334
  %381 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !2335, !psr.id !2336, !PointTainted !1108
  %382 = getelementptr inbounds i8, i8* %381, i64 0, !dbg !2335, !psr.id !2337, !PointTainted !1108
  %383 = load i8, i8* %382, align 1, !dbg !2335, !psr.id !2338, !ValueTainted !1111
  %384 = zext i8 %383 to i32, !dbg !2335, !psr.id !2339, !ValueTainted !1111
  %385 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !2335, !psr.id !2340, !PointTainted !1108
  %386 = getelementptr inbounds i8, i8* %385, i64 1, !dbg !2335, !psr.id !2341, !PointTainted !1108
  %387 = load i8, i8* %386, align 1, !dbg !2335, !psr.id !2342, !ValueTainted !1111
  %388 = zext i8 %387 to i32, !dbg !2335, !psr.id !2343, !ValueTainted !1111
  %389 = shl i32 %388, 8, !dbg !2335, !psr.id !2344, !ValueTainted !1111
  %390 = or i32 %384, %389, !dbg !2335, !psr.id !2345, !ValueTainted !1111
  %391 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !2335, !psr.id !2346, !PointTainted !1108
  %392 = getelementptr inbounds i8, i8* %391, i64 2, !dbg !2335, !psr.id !2347, !PointTainted !1108
  %393 = load i8, i8* %392, align 1, !dbg !2335, !psr.id !2348, !ValueTainted !1111
  %394 = zext i8 %393 to i32, !dbg !2335, !psr.id !2349, !ValueTainted !1111
  %395 = shl i32 %394, 16, !dbg !2335, !psr.id !2350, !ValueTainted !1111
  %396 = or i32 %390, %395, !dbg !2335, !psr.id !2351, !ValueTainted !1111
  %397 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !2335, !psr.id !2352, !PointTainted !1108
  %398 = getelementptr inbounds i8, i8* %397, i64 3, !dbg !2335, !psr.id !2353, !PointTainted !1108
  %399 = load i8, i8* %398, align 1, !dbg !2335, !psr.id !2354, !ValueTainted !1111
  %400 = zext i8 %399 to i32, !dbg !2335, !psr.id !2355, !ValueTainted !1111
  %401 = shl i32 %400, 24, !dbg !2335, !psr.id !2356, !ValueTainted !1111
  %402 = or i32 %396, %401, !dbg !2335, !psr.id !2357, !ValueTainted !1111
  %403 = xor i32 %277, %402, !dbg !2335, !psr.id !2358, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %403, metadata !1844, metadata !DIExpression()), !dbg !1627, !psr.id !2359
  %404 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !2360, !psr.id !2361, !PointTainted !1108
  %405 = getelementptr inbounds i8, i8* %404, i64 0, !dbg !2360, !psr.id !2362, !PointTainted !1108
  %406 = load i8, i8* %405, align 1, !dbg !2360, !psr.id !2363, !ValueTainted !1111
  %407 = zext i8 %406 to i32, !dbg !2360, !psr.id !2364, !ValueTainted !1111
  %408 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !2360, !psr.id !2365, !PointTainted !1108
  %409 = getelementptr inbounds i8, i8* %408, i64 1, !dbg !2360, !psr.id !2366, !PointTainted !1108
  %410 = load i8, i8* %409, align 1, !dbg !2360, !psr.id !2367, !ValueTainted !1111
  %411 = zext i8 %410 to i32, !dbg !2360, !psr.id !2368, !ValueTainted !1111
  %412 = shl i32 %411, 8, !dbg !2360, !psr.id !2369, !ValueTainted !1111
  %413 = or i32 %407, %412, !dbg !2360, !psr.id !2370, !ValueTainted !1111
  %414 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !2360, !psr.id !2371, !PointTainted !1108
  %415 = getelementptr inbounds i8, i8* %414, i64 2, !dbg !2360, !psr.id !2372, !PointTainted !1108
  %416 = load i8, i8* %415, align 1, !dbg !2360, !psr.id !2373, !ValueTainted !1111
  %417 = zext i8 %416 to i32, !dbg !2360, !psr.id !2374, !ValueTainted !1111
  %418 = shl i32 %417, 16, !dbg !2360, !psr.id !2375, !ValueTainted !1111
  %419 = or i32 %413, %418, !dbg !2360, !psr.id !2376, !ValueTainted !1111
  %420 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !2360, !psr.id !2377, !PointTainted !1108
  %421 = getelementptr inbounds i8, i8* %420, i64 3, !dbg !2360, !psr.id !2378, !PointTainted !1108
  %422 = load i8, i8* %421, align 1, !dbg !2360, !psr.id !2379, !ValueTainted !1111
  %423 = zext i8 %422 to i32, !dbg !2360, !psr.id !2380, !ValueTainted !1111
  %424 = shl i32 %423, 24, !dbg !2360, !psr.id !2381, !ValueTainted !1111
  %425 = or i32 %419, %424, !dbg !2360, !psr.id !2382, !ValueTainted !1111
  %426 = xor i32 %278, %425, !dbg !2360, !psr.id !2383, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %426, metadata !1846, metadata !DIExpression()), !dbg !1627, !psr.id !2384
  %427 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !2385, !psr.id !2386, !PointTainted !1108
  %428 = getelementptr inbounds i8, i8* %427, i64 0, !dbg !2385, !psr.id !2387, !PointTainted !1108
  %429 = load i8, i8* %428, align 1, !dbg !2385, !psr.id !2388, !ValueTainted !1111
  %430 = zext i8 %429 to i32, !dbg !2385, !psr.id !2389, !ValueTainted !1111
  %431 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !2385, !psr.id !2390, !PointTainted !1108
  %432 = getelementptr inbounds i8, i8* %431, i64 1, !dbg !2385, !psr.id !2391, !PointTainted !1108
  %433 = load i8, i8* %432, align 1, !dbg !2385, !psr.id !2392, !ValueTainted !1111
  %434 = zext i8 %433 to i32, !dbg !2385, !psr.id !2393, !ValueTainted !1111
  %435 = shl i32 %434, 8, !dbg !2385, !psr.id !2394, !ValueTainted !1111
  %436 = or i32 %430, %435, !dbg !2385, !psr.id !2395, !ValueTainted !1111
  %437 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !2385, !psr.id !2396, !PointTainted !1108
  %438 = getelementptr inbounds i8, i8* %437, i64 2, !dbg !2385, !psr.id !2397, !PointTainted !1108
  %439 = load i8, i8* %438, align 1, !dbg !2385, !psr.id !2398, !ValueTainted !1111
  %440 = zext i8 %439 to i32, !dbg !2385, !psr.id !2399, !ValueTainted !1111
  %441 = shl i32 %440, 16, !dbg !2385, !psr.id !2400, !ValueTainted !1111
  %442 = or i32 %436, %441, !dbg !2385, !psr.id !2401, !ValueTainted !1111
  %443 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !2385, !psr.id !2402, !PointTainted !1108
  %444 = getelementptr inbounds i8, i8* %443, i64 3, !dbg !2385, !psr.id !2403, !PointTainted !1108
  %445 = load i8, i8* %444, align 1, !dbg !2385, !psr.id !2404, !ValueTainted !1111
  %446 = zext i8 %445 to i32, !dbg !2385, !psr.id !2405, !ValueTainted !1111
  %447 = shl i32 %446, 24, !dbg !2385, !psr.id !2406, !ValueTainted !1111
  %448 = or i32 %442, %447, !dbg !2385, !psr.id !2407, !ValueTainted !1111
  %449 = xor i32 %279, %448, !dbg !2385, !psr.id !2408, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %449, metadata !1848, metadata !DIExpression()), !dbg !1627, !psr.id !2409
  %450 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !2410, !psr.id !2411, !PointTainted !1108
  %451 = getelementptr inbounds i8, i8* %450, i64 0, !dbg !2410, !psr.id !2412, !PointTainted !1108
  %452 = load i8, i8* %451, align 1, !dbg !2410, !psr.id !2413, !ValueTainted !1111
  %453 = zext i8 %452 to i32, !dbg !2410, !psr.id !2414, !ValueTainted !1111
  %454 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !2410, !psr.id !2415, !PointTainted !1108
  %455 = getelementptr inbounds i8, i8* %454, i64 1, !dbg !2410, !psr.id !2416, !PointTainted !1108
  %456 = load i8, i8* %455, align 1, !dbg !2410, !psr.id !2417, !ValueTainted !1111
  %457 = zext i8 %456 to i32, !dbg !2410, !psr.id !2418, !ValueTainted !1111
  %458 = shl i32 %457, 8, !dbg !2410, !psr.id !2419, !ValueTainted !1111
  %459 = or i32 %453, %458, !dbg !2410, !psr.id !2420, !ValueTainted !1111
  %460 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !2410, !psr.id !2421, !PointTainted !1108
  %461 = getelementptr inbounds i8, i8* %460, i64 2, !dbg !2410, !psr.id !2422, !PointTainted !1108
  %462 = load i8, i8* %461, align 1, !dbg !2410, !psr.id !2423, !ValueTainted !1111
  %463 = zext i8 %462 to i32, !dbg !2410, !psr.id !2424, !ValueTainted !1111
  %464 = shl i32 %463, 16, !dbg !2410, !psr.id !2425, !ValueTainted !1111
  %465 = or i32 %459, %464, !dbg !2410, !psr.id !2426, !ValueTainted !1111
  %466 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !2410, !psr.id !2427, !PointTainted !1108
  %467 = getelementptr inbounds i8, i8* %466, i64 3, !dbg !2410, !psr.id !2428, !PointTainted !1108
  %468 = load i8, i8* %467, align 1, !dbg !2410, !psr.id !2429, !ValueTainted !1111
  %469 = zext i8 %468 to i32, !dbg !2410, !psr.id !2430, !ValueTainted !1111
  %470 = shl i32 %469, 24, !dbg !2410, !psr.id !2431, !ValueTainted !1111
  %471 = or i32 %465, %470, !dbg !2410, !psr.id !2432, !ValueTainted !1111
  %472 = xor i32 %280, %471, !dbg !2410, !psr.id !2433, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %472, metadata !1850, metadata !DIExpression()), !dbg !1627, !psr.id !2434
  %473 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !2435, !psr.id !2436, !PointTainted !1108
  %474 = getelementptr inbounds i8, i8* %473, i64 0, !dbg !2435, !psr.id !2437, !PointTainted !1108
  %475 = load i8, i8* %474, align 1, !dbg !2435, !psr.id !2438, !ValueTainted !1111
  %476 = zext i8 %475 to i32, !dbg !2435, !psr.id !2439, !ValueTainted !1111
  %477 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !2435, !psr.id !2440, !PointTainted !1108
  %478 = getelementptr inbounds i8, i8* %477, i64 1, !dbg !2435, !psr.id !2441, !PointTainted !1108
  %479 = load i8, i8* %478, align 1, !dbg !2435, !psr.id !2442, !ValueTainted !1111
  %480 = zext i8 %479 to i32, !dbg !2435, !psr.id !2443, !ValueTainted !1111
  %481 = shl i32 %480, 8, !dbg !2435, !psr.id !2444, !ValueTainted !1111
  %482 = or i32 %476, %481, !dbg !2435, !psr.id !2445, !ValueTainted !1111
  %483 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !2435, !psr.id !2446, !PointTainted !1108
  %484 = getelementptr inbounds i8, i8* %483, i64 2, !dbg !2435, !psr.id !2447, !PointTainted !1108
  %485 = load i8, i8* %484, align 1, !dbg !2435, !psr.id !2448, !ValueTainted !1111
  %486 = zext i8 %485 to i32, !dbg !2435, !psr.id !2449, !ValueTainted !1111
  %487 = shl i32 %486, 16, !dbg !2435, !psr.id !2450, !ValueTainted !1111
  %488 = or i32 %482, %487, !dbg !2435, !psr.id !2451, !ValueTainted !1111
  %489 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !2435, !psr.id !2452, !PointTainted !1108
  %490 = getelementptr inbounds i8, i8* %489, i64 3, !dbg !2435, !psr.id !2453, !PointTainted !1108
  %491 = load i8, i8* %490, align 1, !dbg !2435, !psr.id !2454, !ValueTainted !1111
  %492 = zext i8 %491 to i32, !dbg !2435, !psr.id !2455, !ValueTainted !1111
  %493 = shl i32 %492, 24, !dbg !2435, !psr.id !2456, !ValueTainted !1111
  %494 = or i32 %488, %493, !dbg !2435, !psr.id !2457, !ValueTainted !1111
  %495 = xor i32 %281, %494, !dbg !2435, !psr.id !2458, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %495, metadata !1852, metadata !DIExpression()), !dbg !1627, !psr.id !2459
  %496 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !2460, !psr.id !2461, !PointTainted !1108
  %497 = getelementptr inbounds i8, i8* %496, i64 0, !dbg !2460, !psr.id !2462, !PointTainted !1108
  %498 = load i8, i8* %497, align 1, !dbg !2460, !psr.id !2463, !ValueTainted !1111
  %499 = zext i8 %498 to i32, !dbg !2460, !psr.id !2464, !ValueTainted !1111
  %500 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !2460, !psr.id !2465, !PointTainted !1108
  %501 = getelementptr inbounds i8, i8* %500, i64 1, !dbg !2460, !psr.id !2466, !PointTainted !1108
  %502 = load i8, i8* %501, align 1, !dbg !2460, !psr.id !2467, !ValueTainted !1111
  %503 = zext i8 %502 to i32, !dbg !2460, !psr.id !2468, !ValueTainted !1111
  %504 = shl i32 %503, 8, !dbg !2460, !psr.id !2469, !ValueTainted !1111
  %505 = or i32 %499, %504, !dbg !2460, !psr.id !2470, !ValueTainted !1111
  %506 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !2460, !psr.id !2471, !PointTainted !1108
  %507 = getelementptr inbounds i8, i8* %506, i64 2, !dbg !2460, !psr.id !2472, !PointTainted !1108
  %508 = load i8, i8* %507, align 1, !dbg !2460, !psr.id !2473, !ValueTainted !1111
  %509 = zext i8 %508 to i32, !dbg !2460, !psr.id !2474, !ValueTainted !1111
  %510 = shl i32 %509, 16, !dbg !2460, !psr.id !2475, !ValueTainted !1111
  %511 = or i32 %505, %510, !dbg !2460, !psr.id !2476, !ValueTainted !1111
  %512 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !2460, !psr.id !2477, !PointTainted !1108
  %513 = getelementptr inbounds i8, i8* %512, i64 3, !dbg !2460, !psr.id !2478, !PointTainted !1108
  %514 = load i8, i8* %513, align 1, !dbg !2460, !psr.id !2479, !ValueTainted !1111
  %515 = zext i8 %514 to i32, !dbg !2460, !psr.id !2480, !ValueTainted !1111
  %516 = shl i32 %515, 24, !dbg !2460, !psr.id !2481, !ValueTainted !1111
  %517 = or i32 %511, %516, !dbg !2460, !psr.id !2482, !ValueTainted !1111
  %518 = xor i32 %282, %517, !dbg !2460, !psr.id !2483, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %518, metadata !1854, metadata !DIExpression()), !dbg !1627, !psr.id !2484
  %519 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !2485, !psr.id !2486, !PointTainted !1108
  %520 = getelementptr inbounds i8, i8* %519, i64 0, !dbg !2485, !psr.id !2487, !PointTainted !1108
  %521 = load i8, i8* %520, align 1, !dbg !2485, !psr.id !2488, !ValueTainted !1111
  %522 = zext i8 %521 to i32, !dbg !2485, !psr.id !2489, !ValueTainted !1111
  %523 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !2485, !psr.id !2490, !PointTainted !1108
  %524 = getelementptr inbounds i8, i8* %523, i64 1, !dbg !2485, !psr.id !2491, !PointTainted !1108
  %525 = load i8, i8* %524, align 1, !dbg !2485, !psr.id !2492, !ValueTainted !1111
  %526 = zext i8 %525 to i32, !dbg !2485, !psr.id !2493, !ValueTainted !1111
  %527 = shl i32 %526, 8, !dbg !2485, !psr.id !2494, !ValueTainted !1111
  %528 = or i32 %522, %527, !dbg !2485, !psr.id !2495, !ValueTainted !1111
  %529 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !2485, !psr.id !2496, !PointTainted !1108
  %530 = getelementptr inbounds i8, i8* %529, i64 2, !dbg !2485, !psr.id !2497, !PointTainted !1108
  %531 = load i8, i8* %530, align 1, !dbg !2485, !psr.id !2498, !ValueTainted !1111
  %532 = zext i8 %531 to i32, !dbg !2485, !psr.id !2499, !ValueTainted !1111
  %533 = shl i32 %532, 16, !dbg !2485, !psr.id !2500, !ValueTainted !1111
  %534 = or i32 %528, %533, !dbg !2485, !psr.id !2501, !ValueTainted !1111
  %535 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !2485, !psr.id !2502, !PointTainted !1108
  %536 = getelementptr inbounds i8, i8* %535, i64 3, !dbg !2485, !psr.id !2503, !PointTainted !1108
  %537 = load i8, i8* %536, align 1, !dbg !2485, !psr.id !2504, !ValueTainted !1111
  %538 = zext i8 %537 to i32, !dbg !2485, !psr.id !2505, !ValueTainted !1111
  %539 = shl i32 %538, 24, !dbg !2485, !psr.id !2506, !ValueTainted !1111
  %540 = or i32 %534, %539, !dbg !2485, !psr.id !2507, !ValueTainted !1111
  %541 = xor i32 %283, %540, !dbg !2485, !psr.id !2508, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %541, metadata !1856, metadata !DIExpression()), !dbg !1627, !psr.id !2509
  %542 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !2510, !psr.id !2511, !PointTainted !1108
  %543 = getelementptr inbounds i8, i8* %542, i64 0, !dbg !2510, !psr.id !2512, !PointTainted !1108
  %544 = load i8, i8* %543, align 1, !dbg !2510, !psr.id !2513, !ValueTainted !1111
  %545 = zext i8 %544 to i32, !dbg !2510, !psr.id !2514, !ValueTainted !1111
  %546 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !2510, !psr.id !2515, !PointTainted !1108
  %547 = getelementptr inbounds i8, i8* %546, i64 1, !dbg !2510, !psr.id !2516, !PointTainted !1108
  %548 = load i8, i8* %547, align 1, !dbg !2510, !psr.id !2517, !ValueTainted !1111
  %549 = zext i8 %548 to i32, !dbg !2510, !psr.id !2518, !ValueTainted !1111
  %550 = shl i32 %549, 8, !dbg !2510, !psr.id !2519, !ValueTainted !1111
  %551 = or i32 %545, %550, !dbg !2510, !psr.id !2520, !ValueTainted !1111
  %552 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !2510, !psr.id !2521, !PointTainted !1108
  %553 = getelementptr inbounds i8, i8* %552, i64 2, !dbg !2510, !psr.id !2522, !PointTainted !1108
  %554 = load i8, i8* %553, align 1, !dbg !2510, !psr.id !2523, !ValueTainted !1111
  %555 = zext i8 %554 to i32, !dbg !2510, !psr.id !2524, !ValueTainted !1111
  %556 = shl i32 %555, 16, !dbg !2510, !psr.id !2525, !ValueTainted !1111
  %557 = or i32 %551, %556, !dbg !2510, !psr.id !2526, !ValueTainted !1111
  %558 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !2510, !psr.id !2527, !PointTainted !1108
  %559 = getelementptr inbounds i8, i8* %558, i64 3, !dbg !2510, !psr.id !2528, !PointTainted !1108
  %560 = load i8, i8* %559, align 1, !dbg !2510, !psr.id !2529, !ValueTainted !1111
  %561 = zext i8 %560 to i32, !dbg !2510, !psr.id !2530, !ValueTainted !1111
  %562 = shl i32 %561, 24, !dbg !2510, !psr.id !2531, !ValueTainted !1111
  %563 = or i32 %557, %562, !dbg !2510, !psr.id !2532, !ValueTainted !1111
  %564 = xor i32 %284, %563, !dbg !2510, !psr.id !2533, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %564, metadata !1858, metadata !DIExpression()), !dbg !1627, !psr.id !2534
  %565 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !2535, !psr.id !2536, !PointTainted !1108
  %566 = getelementptr inbounds i8, i8* %565, i64 0, !dbg !2535, !psr.id !2537, !PointTainted !1108
  %567 = load i8, i8* %566, align 1, !dbg !2535, !psr.id !2538, !ValueTainted !1111
  %568 = zext i8 %567 to i32, !dbg !2535, !psr.id !2539, !ValueTainted !1111
  %569 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !2535, !psr.id !2540, !PointTainted !1108
  %570 = getelementptr inbounds i8, i8* %569, i64 1, !dbg !2535, !psr.id !2541, !PointTainted !1108
  %571 = load i8, i8* %570, align 1, !dbg !2535, !psr.id !2542, !ValueTainted !1111
  %572 = zext i8 %571 to i32, !dbg !2535, !psr.id !2543, !ValueTainted !1111
  %573 = shl i32 %572, 8, !dbg !2535, !psr.id !2544, !ValueTainted !1111
  %574 = or i32 %568, %573, !dbg !2535, !psr.id !2545, !ValueTainted !1111
  %575 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !2535, !psr.id !2546, !PointTainted !1108
  %576 = getelementptr inbounds i8, i8* %575, i64 2, !dbg !2535, !psr.id !2547, !PointTainted !1108
  %577 = load i8, i8* %576, align 1, !dbg !2535, !psr.id !2548, !ValueTainted !1111
  %578 = zext i8 %577 to i32, !dbg !2535, !psr.id !2549, !ValueTainted !1111
  %579 = shl i32 %578, 16, !dbg !2535, !psr.id !2550, !ValueTainted !1111
  %580 = or i32 %574, %579, !dbg !2535, !psr.id !2551, !ValueTainted !1111
  %581 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !2535, !psr.id !2552, !PointTainted !1108
  %582 = getelementptr inbounds i8, i8* %581, i64 3, !dbg !2535, !psr.id !2553, !PointTainted !1108
  %583 = load i8, i8* %582, align 1, !dbg !2535, !psr.id !2554, !ValueTainted !1111
  %584 = zext i8 %583 to i32, !dbg !2535, !psr.id !2555, !ValueTainted !1111
  %585 = shl i32 %584, 24, !dbg !2535, !psr.id !2556, !ValueTainted !1111
  %586 = or i32 %580, %585, !dbg !2535, !psr.id !2557, !ValueTainted !1111
  %587 = xor i32 %285, %586, !dbg !2535, !psr.id !2558, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %587, metadata !1860, metadata !DIExpression()), !dbg !1627, !psr.id !2559
  %588 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !2560, !psr.id !2561, !PointTainted !1108
  %589 = getelementptr inbounds i8, i8* %588, i64 0, !dbg !2560, !psr.id !2562, !PointTainted !1108
  %590 = load i8, i8* %589, align 1, !dbg !2560, !psr.id !2563, !ValueTainted !1111
  %591 = zext i8 %590 to i32, !dbg !2560, !psr.id !2564, !ValueTainted !1111
  %592 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !2560, !psr.id !2565, !PointTainted !1108
  %593 = getelementptr inbounds i8, i8* %592, i64 1, !dbg !2560, !psr.id !2566, !PointTainted !1108
  %594 = load i8, i8* %593, align 1, !dbg !2560, !psr.id !2567, !ValueTainted !1111
  %595 = zext i8 %594 to i32, !dbg !2560, !psr.id !2568, !ValueTainted !1111
  %596 = shl i32 %595, 8, !dbg !2560, !psr.id !2569, !ValueTainted !1111
  %597 = or i32 %591, %596, !dbg !2560, !psr.id !2570, !ValueTainted !1111
  %598 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !2560, !psr.id !2571, !PointTainted !1108
  %599 = getelementptr inbounds i8, i8* %598, i64 2, !dbg !2560, !psr.id !2572, !PointTainted !1108
  %600 = load i8, i8* %599, align 1, !dbg !2560, !psr.id !2573, !ValueTainted !1111
  %601 = zext i8 %600 to i32, !dbg !2560, !psr.id !2574, !ValueTainted !1111
  %602 = shl i32 %601, 16, !dbg !2560, !psr.id !2575, !ValueTainted !1111
  %603 = or i32 %597, %602, !dbg !2560, !psr.id !2576, !ValueTainted !1111
  %604 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !2560, !psr.id !2577, !PointTainted !1108
  %605 = getelementptr inbounds i8, i8* %604, i64 3, !dbg !2560, !psr.id !2578, !PointTainted !1108
  %606 = load i8, i8* %605, align 1, !dbg !2560, !psr.id !2579, !ValueTainted !1111
  %607 = zext i8 %606 to i32, !dbg !2560, !psr.id !2580, !ValueTainted !1111
  %608 = shl i32 %607, 24, !dbg !2560, !psr.id !2581, !ValueTainted !1111
  %609 = or i32 %603, %608, !dbg !2560, !psr.id !2582, !ValueTainted !1111
  %610 = xor i32 %286, %609, !dbg !2560, !psr.id !2583, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %610, metadata !1862, metadata !DIExpression()), !dbg !1627, !psr.id !2584
  %611 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !2585, !psr.id !2586, !PointTainted !1108
  %612 = getelementptr inbounds i8, i8* %611, i64 0, !dbg !2585, !psr.id !2587, !PointTainted !1108
  %613 = load i8, i8* %612, align 1, !dbg !2585, !psr.id !2588, !ValueTainted !1111
  %614 = zext i8 %613 to i32, !dbg !2585, !psr.id !2589, !ValueTainted !1111
  %615 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !2585, !psr.id !2590, !PointTainted !1108
  %616 = getelementptr inbounds i8, i8* %615, i64 1, !dbg !2585, !psr.id !2591, !PointTainted !1108
  %617 = load i8, i8* %616, align 1, !dbg !2585, !psr.id !2592, !ValueTainted !1111
  %618 = zext i8 %617 to i32, !dbg !2585, !psr.id !2593, !ValueTainted !1111
  %619 = shl i32 %618, 8, !dbg !2585, !psr.id !2594, !ValueTainted !1111
  %620 = or i32 %614, %619, !dbg !2585, !psr.id !2595, !ValueTainted !1111
  %621 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !2585, !psr.id !2596, !PointTainted !1108
  %622 = getelementptr inbounds i8, i8* %621, i64 2, !dbg !2585, !psr.id !2597, !PointTainted !1108
  %623 = load i8, i8* %622, align 1, !dbg !2585, !psr.id !2598, !ValueTainted !1111
  %624 = zext i8 %623 to i32, !dbg !2585, !psr.id !2599, !ValueTainted !1111
  %625 = shl i32 %624, 16, !dbg !2585, !psr.id !2600, !ValueTainted !1111
  %626 = or i32 %620, %625, !dbg !2585, !psr.id !2601, !ValueTainted !1111
  %627 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !2585, !psr.id !2602, !PointTainted !1108
  %628 = getelementptr inbounds i8, i8* %627, i64 3, !dbg !2585, !psr.id !2603, !PointTainted !1108
  %629 = load i8, i8* %628, align 1, !dbg !2585, !psr.id !2604, !ValueTainted !1111
  %630 = zext i8 %629 to i32, !dbg !2585, !psr.id !2605, !ValueTainted !1111
  %631 = shl i32 %630, 24, !dbg !2585, !psr.id !2606, !ValueTainted !1111
  %632 = or i32 %626, %631, !dbg !2585, !psr.id !2607, !ValueTainted !1111
  %633 = xor i32 %287, %632, !dbg !2585, !psr.id !2608, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %633, metadata !1864, metadata !DIExpression()), !dbg !1627, !psr.id !2609
  %634 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !2610, !psr.id !2611, !PointTainted !1108
  %635 = getelementptr inbounds i8, i8* %634, i64 0, !dbg !2610, !psr.id !2612, !PointTainted !1108
  %636 = load i8, i8* %635, align 1, !dbg !2610, !psr.id !2613, !ValueTainted !1111
  %637 = zext i8 %636 to i32, !dbg !2610, !psr.id !2614, !ValueTainted !1111
  %638 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !2610, !psr.id !2615, !PointTainted !1108
  %639 = getelementptr inbounds i8, i8* %638, i64 1, !dbg !2610, !psr.id !2616, !PointTainted !1108
  %640 = load i8, i8* %639, align 1, !dbg !2610, !psr.id !2617, !ValueTainted !1111
  %641 = zext i8 %640 to i32, !dbg !2610, !psr.id !2618, !ValueTainted !1111
  %642 = shl i32 %641, 8, !dbg !2610, !psr.id !2619, !ValueTainted !1111
  %643 = or i32 %637, %642, !dbg !2610, !psr.id !2620, !ValueTainted !1111
  %644 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !2610, !psr.id !2621, !PointTainted !1108
  %645 = getelementptr inbounds i8, i8* %644, i64 2, !dbg !2610, !psr.id !2622, !PointTainted !1108
  %646 = load i8, i8* %645, align 1, !dbg !2610, !psr.id !2623, !ValueTainted !1111
  %647 = zext i8 %646 to i32, !dbg !2610, !psr.id !2624, !ValueTainted !1111
  %648 = shl i32 %647, 16, !dbg !2610, !psr.id !2625, !ValueTainted !1111
  %649 = or i32 %643, %648, !dbg !2610, !psr.id !2626, !ValueTainted !1111
  %650 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !2610, !psr.id !2627, !PointTainted !1108
  %651 = getelementptr inbounds i8, i8* %650, i64 3, !dbg !2610, !psr.id !2628, !PointTainted !1108
  %652 = load i8, i8* %651, align 1, !dbg !2610, !psr.id !2629, !ValueTainted !1111
  %653 = zext i8 %652 to i32, !dbg !2610, !psr.id !2630, !ValueTainted !1111
  %654 = shl i32 %653, 24, !dbg !2610, !psr.id !2631, !ValueTainted !1111
  %655 = or i32 %649, %654, !dbg !2610, !psr.id !2632, !ValueTainted !1111
  %656 = xor i32 %288, %655, !dbg !2610, !psr.id !2633, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %656, metadata !1866, metadata !DIExpression()), !dbg !1627, !psr.id !2634
  %657 = add i32 %.026, 1, !dbg !2635, !psr.id !2636, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %657, metadata !1740, metadata !DIExpression()), !dbg !1627, !psr.id !2637
  %658 = icmp ne i32 %657, 0, !dbg !2638, !psr.id !2640, !ValueTainted !1111
  br i1 %658, label %661, label %659, !dbg !2641, !psr.id !2642, !Tainted !2643

659:                                              ; preds = %272
  %660 = add i32 %.024, 1, !dbg !2644, !psr.id !2646, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %660, metadata !1747, metadata !DIExpression()), !dbg !1627, !psr.id !2647
  br label %661, !dbg !2648, !psr.id !2649

661:                                              ; preds = %659, %272
  %.125 = phi i32 [ %.024, %272 ], [ %660, %659 ], !dbg !1627, !psr.id !2650, !ValueTainted !1111
  call void @llvm.dbg.value(metadata i32 %.125, metadata !1747, metadata !DIExpression()), !dbg !1627, !psr.id !2651
  br label %662, !dbg !2652, !psr.id !2653

662:                                              ; preds = %661
  %663 = trunc i32 %311 to i8, !dbg !2654, !psr.id !2656, !ValueTainted !1111
  %664 = zext i8 %663 to i32, !dbg !2654, !psr.id !2657, !ValueTainted !1111
  %665 = and i32 %664, 255, !dbg !2654, !psr.id !2658, !ValueTainted !1111
  %666 = trunc i32 %665 to i8, !dbg !2654, !psr.id !2659, !ValueTainted !1111
  %667 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !2654, !psr.id !2660, !PointTainted !1108
  %668 = getelementptr inbounds i8, i8* %667, i64 0, !dbg !2654, !psr.id !2661, !PointTainted !1108
  store i8 %666, i8* %668, align 1, !dbg !2654, !psr.id !2662
  %669 = lshr i32 %311, 8, !dbg !2654, !psr.id !2663, !ValueTainted !1111
  %670 = trunc i32 %669 to i8, !dbg !2654, !psr.id !2664, !ValueTainted !1111
  %671 = zext i8 %670 to i32, !dbg !2654, !psr.id !2665, !ValueTainted !1111
  %672 = and i32 %671, 255, !dbg !2654, !psr.id !2666, !ValueTainted !1111
  %673 = trunc i32 %672 to i8, !dbg !2654, !psr.id !2667, !ValueTainted !1111
  %674 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !2654, !psr.id !2668, !PointTainted !1108
  %675 = getelementptr inbounds i8, i8* %674, i64 1, !dbg !2654, !psr.id !2669, !PointTainted !1108
  store i8 %673, i8* %675, align 1, !dbg !2654, !psr.id !2670
  %676 = lshr i32 %311, 16, !dbg !2654, !psr.id !2671, !ValueTainted !1111
  %677 = trunc i32 %676 to i8, !dbg !2654, !psr.id !2672, !ValueTainted !1111
  %678 = zext i8 %677 to i32, !dbg !2654, !psr.id !2673, !ValueTainted !1111
  %679 = and i32 %678, 255, !dbg !2654, !psr.id !2674, !ValueTainted !1111
  %680 = trunc i32 %679 to i8, !dbg !2654, !psr.id !2675, !ValueTainted !1111
  %681 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !2654, !psr.id !2676, !PointTainted !1108
  %682 = getelementptr inbounds i8, i8* %681, i64 2, !dbg !2654, !psr.id !2677, !PointTainted !1108
  store i8 %680, i8* %682, align 1, !dbg !2654, !psr.id !2678
  %683 = lshr i32 %311, 24, !dbg !2654, !psr.id !2679, !ValueTainted !1111
  %684 = trunc i32 %683 to i8, !dbg !2654, !psr.id !2680, !ValueTainted !1111
  %685 = zext i8 %684 to i32, !dbg !2654, !psr.id !2681, !ValueTainted !1111
  %686 = and i32 %685, 255, !dbg !2654, !psr.id !2682, !ValueTainted !1111
  %687 = trunc i32 %686 to i8, !dbg !2654, !psr.id !2683, !ValueTainted !1111
  %688 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !2654, !psr.id !2684, !PointTainted !1108
  %689 = getelementptr inbounds i8, i8* %688, i64 3, !dbg !2654, !psr.id !2685, !PointTainted !1108
  store i8 %687, i8* %689, align 1, !dbg !2654, !psr.id !2686
  br label %690, !dbg !2654, !psr.id !2687

690:                                              ; preds = %662
  br label %691, !dbg !2688, !psr.id !2689

691:                                              ; preds = %690
  %692 = trunc i32 %334 to i8, !dbg !2690, !psr.id !2692, !ValueTainted !1111
  %693 = zext i8 %692 to i32, !dbg !2690, !psr.id !2693, !ValueTainted !1111
  %694 = and i32 %693, 255, !dbg !2690, !psr.id !2694, !ValueTainted !1111
  %695 = trunc i32 %694 to i8, !dbg !2690, !psr.id !2695, !ValueTainted !1111
  %696 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !2690, !psr.id !2696, !PointTainted !1108
  %697 = getelementptr inbounds i8, i8* %696, i64 0, !dbg !2690, !psr.id !2697, !PointTainted !1108
  store i8 %695, i8* %697, align 1, !dbg !2690, !psr.id !2698
  %698 = lshr i32 %334, 8, !dbg !2690, !psr.id !2699, !ValueTainted !1111
  %699 = trunc i32 %698 to i8, !dbg !2690, !psr.id !2700, !ValueTainted !1111
  %700 = zext i8 %699 to i32, !dbg !2690, !psr.id !2701, !ValueTainted !1111
  %701 = and i32 %700, 255, !dbg !2690, !psr.id !2702, !ValueTainted !1111
  %702 = trunc i32 %701 to i8, !dbg !2690, !psr.id !2703, !ValueTainted !1111
  %703 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !2690, !psr.id !2704, !PointTainted !1108
  %704 = getelementptr inbounds i8, i8* %703, i64 1, !dbg !2690, !psr.id !2705, !PointTainted !1108
  store i8 %702, i8* %704, align 1, !dbg !2690, !psr.id !2706
  %705 = lshr i32 %334, 16, !dbg !2690, !psr.id !2707, !ValueTainted !1111
  %706 = trunc i32 %705 to i8, !dbg !2690, !psr.id !2708, !ValueTainted !1111
  %707 = zext i8 %706 to i32, !dbg !2690, !psr.id !2709, !ValueTainted !1111
  %708 = and i32 %707, 255, !dbg !2690, !psr.id !2710, !ValueTainted !1111
  %709 = trunc i32 %708 to i8, !dbg !2690, !psr.id !2711, !ValueTainted !1111
  %710 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !2690, !psr.id !2712, !PointTainted !1108
  %711 = getelementptr inbounds i8, i8* %710, i64 2, !dbg !2690, !psr.id !2713, !PointTainted !1108
  store i8 %709, i8* %711, align 1, !dbg !2690, !psr.id !2714
  %712 = lshr i32 %334, 24, !dbg !2690, !psr.id !2715, !ValueTainted !1111
  %713 = trunc i32 %712 to i8, !dbg !2690, !psr.id !2716, !ValueTainted !1111
  %714 = zext i8 %713 to i32, !dbg !2690, !psr.id !2717, !ValueTainted !1111
  %715 = and i32 %714, 255, !dbg !2690, !psr.id !2718, !ValueTainted !1111
  %716 = trunc i32 %715 to i8, !dbg !2690, !psr.id !2719, !ValueTainted !1111
  %717 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !2690, !psr.id !2720, !PointTainted !1108
  %718 = getelementptr inbounds i8, i8* %717, i64 3, !dbg !2690, !psr.id !2721, !PointTainted !1108
  store i8 %716, i8* %718, align 1, !dbg !2690, !psr.id !2722
  br label %719, !dbg !2690, !psr.id !2723

719:                                              ; preds = %691
  br label %720, !dbg !2724, !psr.id !2725

720:                                              ; preds = %719
  %721 = trunc i32 %357 to i8, !dbg !2726, !psr.id !2728, !ValueTainted !1111
  %722 = zext i8 %721 to i32, !dbg !2726, !psr.id !2729, !ValueTainted !1111
  %723 = and i32 %722, 255, !dbg !2726, !psr.id !2730, !ValueTainted !1111
  %724 = trunc i32 %723 to i8, !dbg !2726, !psr.id !2731, !ValueTainted !1111
  %725 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !2726, !psr.id !2732, !PointTainted !1108
  %726 = getelementptr inbounds i8, i8* %725, i64 0, !dbg !2726, !psr.id !2733, !PointTainted !1108
  store i8 %724, i8* %726, align 1, !dbg !2726, !psr.id !2734
  %727 = lshr i32 %357, 8, !dbg !2726, !psr.id !2735, !ValueTainted !1111
  %728 = trunc i32 %727 to i8, !dbg !2726, !psr.id !2736, !ValueTainted !1111
  %729 = zext i8 %728 to i32, !dbg !2726, !psr.id !2737, !ValueTainted !1111
  %730 = and i32 %729, 255, !dbg !2726, !psr.id !2738, !ValueTainted !1111
  %731 = trunc i32 %730 to i8, !dbg !2726, !psr.id !2739, !ValueTainted !1111
  %732 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !2726, !psr.id !2740, !PointTainted !1108
  %733 = getelementptr inbounds i8, i8* %732, i64 1, !dbg !2726, !psr.id !2741, !PointTainted !1108
  store i8 %731, i8* %733, align 1, !dbg !2726, !psr.id !2742
  %734 = lshr i32 %357, 16, !dbg !2726, !psr.id !2743, !ValueTainted !1111
  %735 = trunc i32 %734 to i8, !dbg !2726, !psr.id !2744, !ValueTainted !1111
  %736 = zext i8 %735 to i32, !dbg !2726, !psr.id !2745, !ValueTainted !1111
  %737 = and i32 %736, 255, !dbg !2726, !psr.id !2746, !ValueTainted !1111
  %738 = trunc i32 %737 to i8, !dbg !2726, !psr.id !2747, !ValueTainted !1111
  %739 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !2726, !psr.id !2748, !PointTainted !1108
  %740 = getelementptr inbounds i8, i8* %739, i64 2, !dbg !2726, !psr.id !2749, !PointTainted !1108
  store i8 %738, i8* %740, align 1, !dbg !2726, !psr.id !2750
  %741 = lshr i32 %357, 24, !dbg !2726, !psr.id !2751, !ValueTainted !1111
  %742 = trunc i32 %741 to i8, !dbg !2726, !psr.id !2752, !ValueTainted !1111
  %743 = zext i8 %742 to i32, !dbg !2726, !psr.id !2753, !ValueTainted !1111
  %744 = and i32 %743, 255, !dbg !2726, !psr.id !2754, !ValueTainted !1111
  %745 = trunc i32 %744 to i8, !dbg !2726, !psr.id !2755, !ValueTainted !1111
  %746 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !2726, !psr.id !2756, !PointTainted !1108
  %747 = getelementptr inbounds i8, i8* %746, i64 3, !dbg !2726, !psr.id !2757, !PointTainted !1108
  store i8 %745, i8* %747, align 1, !dbg !2726, !psr.id !2758
  br label %748, !dbg !2726, !psr.id !2759

748:                                              ; preds = %720
  br label %749, !dbg !2760, !psr.id !2761

749:                                              ; preds = %748
  %750 = trunc i32 %380 to i8, !dbg !2762, !psr.id !2764, !ValueTainted !1111
  %751 = zext i8 %750 to i32, !dbg !2762, !psr.id !2765, !ValueTainted !1111
  %752 = and i32 %751, 255, !dbg !2762, !psr.id !2766, !ValueTainted !1111
  %753 = trunc i32 %752 to i8, !dbg !2762, !psr.id !2767, !ValueTainted !1111
  %754 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !2762, !psr.id !2768, !PointTainted !1108
  %755 = getelementptr inbounds i8, i8* %754, i64 0, !dbg !2762, !psr.id !2769, !PointTainted !1108
  store i8 %753, i8* %755, align 1, !dbg !2762, !psr.id !2770
  %756 = lshr i32 %380, 8, !dbg !2762, !psr.id !2771, !ValueTainted !1111
  %757 = trunc i32 %756 to i8, !dbg !2762, !psr.id !2772, !ValueTainted !1111
  %758 = zext i8 %757 to i32, !dbg !2762, !psr.id !2773, !ValueTainted !1111
  %759 = and i32 %758, 255, !dbg !2762, !psr.id !2774, !ValueTainted !1111
  %760 = trunc i32 %759 to i8, !dbg !2762, !psr.id !2775, !ValueTainted !1111
  %761 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !2762, !psr.id !2776, !PointTainted !1108
  %762 = getelementptr inbounds i8, i8* %761, i64 1, !dbg !2762, !psr.id !2777, !PointTainted !1108
  store i8 %760, i8* %762, align 1, !dbg !2762, !psr.id !2778
  %763 = lshr i32 %380, 16, !dbg !2762, !psr.id !2779, !ValueTainted !1111
  %764 = trunc i32 %763 to i8, !dbg !2762, !psr.id !2780, !ValueTainted !1111
  %765 = zext i8 %764 to i32, !dbg !2762, !psr.id !2781, !ValueTainted !1111
  %766 = and i32 %765, 255, !dbg !2762, !psr.id !2782, !ValueTainted !1111
  %767 = trunc i32 %766 to i8, !dbg !2762, !psr.id !2783, !ValueTainted !1111
  %768 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !2762, !psr.id !2784, !PointTainted !1108
  %769 = getelementptr inbounds i8, i8* %768, i64 2, !dbg !2762, !psr.id !2785, !PointTainted !1108
  store i8 %767, i8* %769, align 1, !dbg !2762, !psr.id !2786
  %770 = lshr i32 %380, 24, !dbg !2762, !psr.id !2787, !ValueTainted !1111
  %771 = trunc i32 %770 to i8, !dbg !2762, !psr.id !2788, !ValueTainted !1111
  %772 = zext i8 %771 to i32, !dbg !2762, !psr.id !2789, !ValueTainted !1111
  %773 = and i32 %772, 255, !dbg !2762, !psr.id !2790, !ValueTainted !1111
  %774 = trunc i32 %773 to i8, !dbg !2762, !psr.id !2791, !ValueTainted !1111
  %775 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !2762, !psr.id !2792, !PointTainted !1108
  %776 = getelementptr inbounds i8, i8* %775, i64 3, !dbg !2762, !psr.id !2793, !PointTainted !1108
  store i8 %774, i8* %776, align 1, !dbg !2762, !psr.id !2794
  br label %777, !dbg !2762, !psr.id !2795

777:                                              ; preds = %749
  br label %778, !dbg !2796, !psr.id !2797

778:                                              ; preds = %777
  %779 = trunc i32 %403 to i8, !dbg !2798, !psr.id !2800, !ValueTainted !1111
  %780 = zext i8 %779 to i32, !dbg !2798, !psr.id !2801, !ValueTainted !1111
  %781 = and i32 %780, 255, !dbg !2798, !psr.id !2802, !ValueTainted !1111
  %782 = trunc i32 %781 to i8, !dbg !2798, !psr.id !2803, !ValueTainted !1111
  %783 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !2798, !psr.id !2804, !PointTainted !1108
  %784 = getelementptr inbounds i8, i8* %783, i64 0, !dbg !2798, !psr.id !2805, !PointTainted !1108
  store i8 %782, i8* %784, align 1, !dbg !2798, !psr.id !2806
  %785 = lshr i32 %403, 8, !dbg !2798, !psr.id !2807, !ValueTainted !1111
  %786 = trunc i32 %785 to i8, !dbg !2798, !psr.id !2808, !ValueTainted !1111
  %787 = zext i8 %786 to i32, !dbg !2798, !psr.id !2809, !ValueTainted !1111
  %788 = and i32 %787, 255, !dbg !2798, !psr.id !2810, !ValueTainted !1111
  %789 = trunc i32 %788 to i8, !dbg !2798, !psr.id !2811, !ValueTainted !1111
  %790 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !2798, !psr.id !2812, !PointTainted !1108
  %791 = getelementptr inbounds i8, i8* %790, i64 1, !dbg !2798, !psr.id !2813, !PointTainted !1108
  store i8 %789, i8* %791, align 1, !dbg !2798, !psr.id !2814
  %792 = lshr i32 %403, 16, !dbg !2798, !psr.id !2815, !ValueTainted !1111
  %793 = trunc i32 %792 to i8, !dbg !2798, !psr.id !2816, !ValueTainted !1111
  %794 = zext i8 %793 to i32, !dbg !2798, !psr.id !2817, !ValueTainted !1111
  %795 = and i32 %794, 255, !dbg !2798, !psr.id !2818, !ValueTainted !1111
  %796 = trunc i32 %795 to i8, !dbg !2798, !psr.id !2819, !ValueTainted !1111
  %797 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !2798, !psr.id !2820, !PointTainted !1108
  %798 = getelementptr inbounds i8, i8* %797, i64 2, !dbg !2798, !psr.id !2821, !PointTainted !1108
  store i8 %796, i8* %798, align 1, !dbg !2798, !psr.id !2822
  %799 = lshr i32 %403, 24, !dbg !2798, !psr.id !2823, !ValueTainted !1111
  %800 = trunc i32 %799 to i8, !dbg !2798, !psr.id !2824, !ValueTainted !1111
  %801 = zext i8 %800 to i32, !dbg !2798, !psr.id !2825, !ValueTainted !1111
  %802 = and i32 %801, 255, !dbg !2798, !psr.id !2826, !ValueTainted !1111
  %803 = trunc i32 %802 to i8, !dbg !2798, !psr.id !2827, !ValueTainted !1111
  %804 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !2798, !psr.id !2828, !PointTainted !1108
  %805 = getelementptr inbounds i8, i8* %804, i64 3, !dbg !2798, !psr.id !2829, !PointTainted !1108
  store i8 %803, i8* %805, align 1, !dbg !2798, !psr.id !2830
  br label %806, !dbg !2798, !psr.id !2831

806:                                              ; preds = %778
  br label %807, !dbg !2832, !psr.id !2833

807:                                              ; preds = %806
  %808 = trunc i32 %426 to i8, !dbg !2834, !psr.id !2836, !ValueTainted !1111
  %809 = zext i8 %808 to i32, !dbg !2834, !psr.id !2837, !ValueTainted !1111
  %810 = and i32 %809, 255, !dbg !2834, !psr.id !2838, !ValueTainted !1111
  %811 = trunc i32 %810 to i8, !dbg !2834, !psr.id !2839, !ValueTainted !1111
  %812 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !2834, !psr.id !2840, !PointTainted !1108
  %813 = getelementptr inbounds i8, i8* %812, i64 0, !dbg !2834, !psr.id !2841, !PointTainted !1108
  store i8 %811, i8* %813, align 1, !dbg !2834, !psr.id !2842
  %814 = lshr i32 %426, 8, !dbg !2834, !psr.id !2843, !ValueTainted !1111
  %815 = trunc i32 %814 to i8, !dbg !2834, !psr.id !2844, !ValueTainted !1111
  %816 = zext i8 %815 to i32, !dbg !2834, !psr.id !2845, !ValueTainted !1111
  %817 = and i32 %816, 255, !dbg !2834, !psr.id !2846, !ValueTainted !1111
  %818 = trunc i32 %817 to i8, !dbg !2834, !psr.id !2847, !ValueTainted !1111
  %819 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !2834, !psr.id !2848, !PointTainted !1108
  %820 = getelementptr inbounds i8, i8* %819, i64 1, !dbg !2834, !psr.id !2849, !PointTainted !1108
  store i8 %818, i8* %820, align 1, !dbg !2834, !psr.id !2850
  %821 = lshr i32 %426, 16, !dbg !2834, !psr.id !2851, !ValueTainted !1111
  %822 = trunc i32 %821 to i8, !dbg !2834, !psr.id !2852, !ValueTainted !1111
  %823 = zext i8 %822 to i32, !dbg !2834, !psr.id !2853, !ValueTainted !1111
  %824 = and i32 %823, 255, !dbg !2834, !psr.id !2854, !ValueTainted !1111
  %825 = trunc i32 %824 to i8, !dbg !2834, !psr.id !2855, !ValueTainted !1111
  %826 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !2834, !psr.id !2856, !PointTainted !1108
  %827 = getelementptr inbounds i8, i8* %826, i64 2, !dbg !2834, !psr.id !2857, !PointTainted !1108
  store i8 %825, i8* %827, align 1, !dbg !2834, !psr.id !2858
  %828 = lshr i32 %426, 24, !dbg !2834, !psr.id !2859, !ValueTainted !1111
  %829 = trunc i32 %828 to i8, !dbg !2834, !psr.id !2860, !ValueTainted !1111
  %830 = zext i8 %829 to i32, !dbg !2834, !psr.id !2861, !ValueTainted !1111
  %831 = and i32 %830, 255, !dbg !2834, !psr.id !2862, !ValueTainted !1111
  %832 = trunc i32 %831 to i8, !dbg !2834, !psr.id !2863, !ValueTainted !1111
  %833 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !2834, !psr.id !2864, !PointTainted !1108
  %834 = getelementptr inbounds i8, i8* %833, i64 3, !dbg !2834, !psr.id !2865, !PointTainted !1108
  store i8 %832, i8* %834, align 1, !dbg !2834, !psr.id !2866
  br label %835, !dbg !2834, !psr.id !2867

835:                                              ; preds = %807
  br label %836, !dbg !2868, !psr.id !2869

836:                                              ; preds = %835
  %837 = trunc i32 %449 to i8, !dbg !2870, !psr.id !2872, !ValueTainted !1111
  %838 = zext i8 %837 to i32, !dbg !2870, !psr.id !2873, !ValueTainted !1111
  %839 = and i32 %838, 255, !dbg !2870, !psr.id !2874, !ValueTainted !1111
  %840 = trunc i32 %839 to i8, !dbg !2870, !psr.id !2875, !ValueTainted !1111
  %841 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !2870, !psr.id !2876, !PointTainted !1108
  %842 = getelementptr inbounds i8, i8* %841, i64 0, !dbg !2870, !psr.id !2877, !PointTainted !1108
  store i8 %840, i8* %842, align 1, !dbg !2870, !psr.id !2878
  %843 = lshr i32 %449, 8, !dbg !2870, !psr.id !2879, !ValueTainted !1111
  %844 = trunc i32 %843 to i8, !dbg !2870, !psr.id !2880, !ValueTainted !1111
  %845 = zext i8 %844 to i32, !dbg !2870, !psr.id !2881, !ValueTainted !1111
  %846 = and i32 %845, 255, !dbg !2870, !psr.id !2882, !ValueTainted !1111
  %847 = trunc i32 %846 to i8, !dbg !2870, !psr.id !2883, !ValueTainted !1111
  %848 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !2870, !psr.id !2884, !PointTainted !1108
  %849 = getelementptr inbounds i8, i8* %848, i64 1, !dbg !2870, !psr.id !2885, !PointTainted !1108
  store i8 %847, i8* %849, align 1, !dbg !2870, !psr.id !2886
  %850 = lshr i32 %449, 16, !dbg !2870, !psr.id !2887, !ValueTainted !1111
  %851 = trunc i32 %850 to i8, !dbg !2870, !psr.id !2888, !ValueTainted !1111
  %852 = zext i8 %851 to i32, !dbg !2870, !psr.id !2889, !ValueTainted !1111
  %853 = and i32 %852, 255, !dbg !2870, !psr.id !2890, !ValueTainted !1111
  %854 = trunc i32 %853 to i8, !dbg !2870, !psr.id !2891, !ValueTainted !1111
  %855 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !2870, !psr.id !2892, !PointTainted !1108
  %856 = getelementptr inbounds i8, i8* %855, i64 2, !dbg !2870, !psr.id !2893, !PointTainted !1108
  store i8 %854, i8* %856, align 1, !dbg !2870, !psr.id !2894
  %857 = lshr i32 %449, 24, !dbg !2870, !psr.id !2895, !ValueTainted !1111
  %858 = trunc i32 %857 to i8, !dbg !2870, !psr.id !2896, !ValueTainted !1111
  %859 = zext i8 %858 to i32, !dbg !2870, !psr.id !2897, !ValueTainted !1111
  %860 = and i32 %859, 255, !dbg !2870, !psr.id !2898, !ValueTainted !1111
  %861 = trunc i32 %860 to i8, !dbg !2870, !psr.id !2899, !ValueTainted !1111
  %862 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !2870, !psr.id !2900, !PointTainted !1108
  %863 = getelementptr inbounds i8, i8* %862, i64 3, !dbg !2870, !psr.id !2901, !PointTainted !1108
  store i8 %861, i8* %863, align 1, !dbg !2870, !psr.id !2902
  br label %864, !dbg !2870, !psr.id !2903

864:                                              ; preds = %836
  br label %865, !dbg !2904, !psr.id !2905

865:                                              ; preds = %864
  %866 = trunc i32 %472 to i8, !dbg !2906, !psr.id !2908, !ValueTainted !1111
  %867 = zext i8 %866 to i32, !dbg !2906, !psr.id !2909, !ValueTainted !1111
  %868 = and i32 %867, 255, !dbg !2906, !psr.id !2910, !ValueTainted !1111
  %869 = trunc i32 %868 to i8, !dbg !2906, !psr.id !2911, !ValueTainted !1111
  %870 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !2906, !psr.id !2912, !PointTainted !1108
  %871 = getelementptr inbounds i8, i8* %870, i64 0, !dbg !2906, !psr.id !2913, !PointTainted !1108
  store i8 %869, i8* %871, align 1, !dbg !2906, !psr.id !2914
  %872 = lshr i32 %472, 8, !dbg !2906, !psr.id !2915, !ValueTainted !1111
  %873 = trunc i32 %872 to i8, !dbg !2906, !psr.id !2916, !ValueTainted !1111
  %874 = zext i8 %873 to i32, !dbg !2906, !psr.id !2917, !ValueTainted !1111
  %875 = and i32 %874, 255, !dbg !2906, !psr.id !2918, !ValueTainted !1111
  %876 = trunc i32 %875 to i8, !dbg !2906, !psr.id !2919, !ValueTainted !1111
  %877 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !2906, !psr.id !2920, !PointTainted !1108
  %878 = getelementptr inbounds i8, i8* %877, i64 1, !dbg !2906, !psr.id !2921, !PointTainted !1108
  store i8 %876, i8* %878, align 1, !dbg !2906, !psr.id !2922
  %879 = lshr i32 %472, 16, !dbg !2906, !psr.id !2923, !ValueTainted !1111
  %880 = trunc i32 %879 to i8, !dbg !2906, !psr.id !2924, !ValueTainted !1111
  %881 = zext i8 %880 to i32, !dbg !2906, !psr.id !2925, !ValueTainted !1111
  %882 = and i32 %881, 255, !dbg !2906, !psr.id !2926, !ValueTainted !1111
  %883 = trunc i32 %882 to i8, !dbg !2906, !psr.id !2927, !ValueTainted !1111
  %884 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !2906, !psr.id !2928, !PointTainted !1108
  %885 = getelementptr inbounds i8, i8* %884, i64 2, !dbg !2906, !psr.id !2929, !PointTainted !1108
  store i8 %883, i8* %885, align 1, !dbg !2906, !psr.id !2930
  %886 = lshr i32 %472, 24, !dbg !2906, !psr.id !2931, !ValueTainted !1111
  %887 = trunc i32 %886 to i8, !dbg !2906, !psr.id !2932, !ValueTainted !1111
  %888 = zext i8 %887 to i32, !dbg !2906, !psr.id !2933, !ValueTainted !1111
  %889 = and i32 %888, 255, !dbg !2906, !psr.id !2934, !ValueTainted !1111
  %890 = trunc i32 %889 to i8, !dbg !2906, !psr.id !2935, !ValueTainted !1111
  %891 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !2906, !psr.id !2936, !PointTainted !1108
  %892 = getelementptr inbounds i8, i8* %891, i64 3, !dbg !2906, !psr.id !2937, !PointTainted !1108
  store i8 %890, i8* %892, align 1, !dbg !2906, !psr.id !2938
  br label %893, !dbg !2906, !psr.id !2939

893:                                              ; preds = %865
  br label %894, !dbg !2940, !psr.id !2941

894:                                              ; preds = %893
  %895 = trunc i32 %495 to i8, !dbg !2942, !psr.id !2944, !ValueTainted !1111
  %896 = zext i8 %895 to i32, !dbg !2942, !psr.id !2945, !ValueTainted !1111
  %897 = and i32 %896, 255, !dbg !2942, !psr.id !2946, !ValueTainted !1111
  %898 = trunc i32 %897 to i8, !dbg !2942, !psr.id !2947, !ValueTainted !1111
  %899 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !2942, !psr.id !2948, !PointTainted !1108
  %900 = getelementptr inbounds i8, i8* %899, i64 0, !dbg !2942, !psr.id !2949, !PointTainted !1108
  store i8 %898, i8* %900, align 1, !dbg !2942, !psr.id !2950
  %901 = lshr i32 %495, 8, !dbg !2942, !psr.id !2951, !ValueTainted !1111
  %902 = trunc i32 %901 to i8, !dbg !2942, !psr.id !2952, !ValueTainted !1111
  %903 = zext i8 %902 to i32, !dbg !2942, !psr.id !2953, !ValueTainted !1111
  %904 = and i32 %903, 255, !dbg !2942, !psr.id !2954, !ValueTainted !1111
  %905 = trunc i32 %904 to i8, !dbg !2942, !psr.id !2955, !ValueTainted !1111
  %906 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !2942, !psr.id !2956, !PointTainted !1108
  %907 = getelementptr inbounds i8, i8* %906, i64 1, !dbg !2942, !psr.id !2957, !PointTainted !1108
  store i8 %905, i8* %907, align 1, !dbg !2942, !psr.id !2958
  %908 = lshr i32 %495, 16, !dbg !2942, !psr.id !2959, !ValueTainted !1111
  %909 = trunc i32 %908 to i8, !dbg !2942, !psr.id !2960, !ValueTainted !1111
  %910 = zext i8 %909 to i32, !dbg !2942, !psr.id !2961, !ValueTainted !1111
  %911 = and i32 %910, 255, !dbg !2942, !psr.id !2962, !ValueTainted !1111
  %912 = trunc i32 %911 to i8, !dbg !2942, !psr.id !2963, !ValueTainted !1111
  %913 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !2942, !psr.id !2964, !PointTainted !1108
  %914 = getelementptr inbounds i8, i8* %913, i64 2, !dbg !2942, !psr.id !2965, !PointTainted !1108
  store i8 %912, i8* %914, align 1, !dbg !2942, !psr.id !2966
  %915 = lshr i32 %495, 24, !dbg !2942, !psr.id !2967, !ValueTainted !1111
  %916 = trunc i32 %915 to i8, !dbg !2942, !psr.id !2968, !ValueTainted !1111
  %917 = zext i8 %916 to i32, !dbg !2942, !psr.id !2969, !ValueTainted !1111
  %918 = and i32 %917, 255, !dbg !2942, !psr.id !2970, !ValueTainted !1111
  %919 = trunc i32 %918 to i8, !dbg !2942, !psr.id !2971, !ValueTainted !1111
  %920 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !2942, !psr.id !2972, !PointTainted !1108
  %921 = getelementptr inbounds i8, i8* %920, i64 3, !dbg !2942, !psr.id !2973, !PointTainted !1108
  store i8 %919, i8* %921, align 1, !dbg !2942, !psr.id !2974
  br label %922, !dbg !2942, !psr.id !2975

922:                                              ; preds = %894
  br label %923, !dbg !2976, !psr.id !2977

923:                                              ; preds = %922
  %924 = trunc i32 %518 to i8, !dbg !2978, !psr.id !2980, !ValueTainted !1111
  %925 = zext i8 %924 to i32, !dbg !2978, !psr.id !2981, !ValueTainted !1111
  %926 = and i32 %925, 255, !dbg !2978, !psr.id !2982, !ValueTainted !1111
  %927 = trunc i32 %926 to i8, !dbg !2978, !psr.id !2983, !ValueTainted !1111
  %928 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !2978, !psr.id !2984, !PointTainted !1108
  %929 = getelementptr inbounds i8, i8* %928, i64 0, !dbg !2978, !psr.id !2985, !PointTainted !1108
  store i8 %927, i8* %929, align 1, !dbg !2978, !psr.id !2986
  %930 = lshr i32 %518, 8, !dbg !2978, !psr.id !2987, !ValueTainted !1111
  %931 = trunc i32 %930 to i8, !dbg !2978, !psr.id !2988, !ValueTainted !1111
  %932 = zext i8 %931 to i32, !dbg !2978, !psr.id !2989, !ValueTainted !1111
  %933 = and i32 %932, 255, !dbg !2978, !psr.id !2990, !ValueTainted !1111
  %934 = trunc i32 %933 to i8, !dbg !2978, !psr.id !2991, !ValueTainted !1111
  %935 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !2978, !psr.id !2992, !PointTainted !1108
  %936 = getelementptr inbounds i8, i8* %935, i64 1, !dbg !2978, !psr.id !2993, !PointTainted !1108
  store i8 %934, i8* %936, align 1, !dbg !2978, !psr.id !2994
  %937 = lshr i32 %518, 16, !dbg !2978, !psr.id !2995, !ValueTainted !1111
  %938 = trunc i32 %937 to i8, !dbg !2978, !psr.id !2996, !ValueTainted !1111
  %939 = zext i8 %938 to i32, !dbg !2978, !psr.id !2997, !ValueTainted !1111
  %940 = and i32 %939, 255, !dbg !2978, !psr.id !2998, !ValueTainted !1111
  %941 = trunc i32 %940 to i8, !dbg !2978, !psr.id !2999, !ValueTainted !1111
  %942 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !2978, !psr.id !3000, !PointTainted !1108
  %943 = getelementptr inbounds i8, i8* %942, i64 2, !dbg !2978, !psr.id !3001, !PointTainted !1108
  store i8 %941, i8* %943, align 1, !dbg !2978, !psr.id !3002
  %944 = lshr i32 %518, 24, !dbg !2978, !psr.id !3003, !ValueTainted !1111
  %945 = trunc i32 %944 to i8, !dbg !2978, !psr.id !3004, !ValueTainted !1111
  %946 = zext i8 %945 to i32, !dbg !2978, !psr.id !3005, !ValueTainted !1111
  %947 = and i32 %946, 255, !dbg !2978, !psr.id !3006, !ValueTainted !1111
  %948 = trunc i32 %947 to i8, !dbg !2978, !psr.id !3007, !ValueTainted !1111
  %949 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !2978, !psr.id !3008, !PointTainted !1108
  %950 = getelementptr inbounds i8, i8* %949, i64 3, !dbg !2978, !psr.id !3009, !PointTainted !1108
  store i8 %948, i8* %950, align 1, !dbg !2978, !psr.id !3010
  br label %951, !dbg !2978, !psr.id !3011

951:                                              ; preds = %923
  br label %952, !dbg !3012, !psr.id !3013

952:                                              ; preds = %951
  %953 = trunc i32 %541 to i8, !dbg !3014, !psr.id !3016, !ValueTainted !1111
  %954 = zext i8 %953 to i32, !dbg !3014, !psr.id !3017, !ValueTainted !1111
  %955 = and i32 %954, 255, !dbg !3014, !psr.id !3018, !ValueTainted !1111
  %956 = trunc i32 %955 to i8, !dbg !3014, !psr.id !3019, !ValueTainted !1111
  %957 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !3014, !psr.id !3020, !PointTainted !1108
  %958 = getelementptr inbounds i8, i8* %957, i64 0, !dbg !3014, !psr.id !3021, !PointTainted !1108
  store i8 %956, i8* %958, align 1, !dbg !3014, !psr.id !3022
  %959 = lshr i32 %541, 8, !dbg !3014, !psr.id !3023, !ValueTainted !1111
  %960 = trunc i32 %959 to i8, !dbg !3014, !psr.id !3024, !ValueTainted !1111
  %961 = zext i8 %960 to i32, !dbg !3014, !psr.id !3025, !ValueTainted !1111
  %962 = and i32 %961, 255, !dbg !3014, !psr.id !3026, !ValueTainted !1111
  %963 = trunc i32 %962 to i8, !dbg !3014, !psr.id !3027, !ValueTainted !1111
  %964 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !3014, !psr.id !3028, !PointTainted !1108
  %965 = getelementptr inbounds i8, i8* %964, i64 1, !dbg !3014, !psr.id !3029, !PointTainted !1108
  store i8 %963, i8* %965, align 1, !dbg !3014, !psr.id !3030
  %966 = lshr i32 %541, 16, !dbg !3014, !psr.id !3031, !ValueTainted !1111
  %967 = trunc i32 %966 to i8, !dbg !3014, !psr.id !3032, !ValueTainted !1111
  %968 = zext i8 %967 to i32, !dbg !3014, !psr.id !3033, !ValueTainted !1111
  %969 = and i32 %968, 255, !dbg !3014, !psr.id !3034, !ValueTainted !1111
  %970 = trunc i32 %969 to i8, !dbg !3014, !psr.id !3035, !ValueTainted !1111
  %971 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !3014, !psr.id !3036, !PointTainted !1108
  %972 = getelementptr inbounds i8, i8* %971, i64 2, !dbg !3014, !psr.id !3037, !PointTainted !1108
  store i8 %970, i8* %972, align 1, !dbg !3014, !psr.id !3038
  %973 = lshr i32 %541, 24, !dbg !3014, !psr.id !3039, !ValueTainted !1111
  %974 = trunc i32 %973 to i8, !dbg !3014, !psr.id !3040, !ValueTainted !1111
  %975 = zext i8 %974 to i32, !dbg !3014, !psr.id !3041, !ValueTainted !1111
  %976 = and i32 %975, 255, !dbg !3014, !psr.id !3042, !ValueTainted !1111
  %977 = trunc i32 %976 to i8, !dbg !3014, !psr.id !3043, !ValueTainted !1111
  %978 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !3014, !psr.id !3044, !PointTainted !1108
  %979 = getelementptr inbounds i8, i8* %978, i64 3, !dbg !3014, !psr.id !3045, !PointTainted !1108
  store i8 %977, i8* %979, align 1, !dbg !3014, !psr.id !3046
  br label %980, !dbg !3014, !psr.id !3047

980:                                              ; preds = %952
  br label %981, !dbg !3048, !psr.id !3049

981:                                              ; preds = %980
  %982 = trunc i32 %564 to i8, !dbg !3050, !psr.id !3052, !ValueTainted !1111
  %983 = zext i8 %982 to i32, !dbg !3050, !psr.id !3053, !ValueTainted !1111
  %984 = and i32 %983, 255, !dbg !3050, !psr.id !3054, !ValueTainted !1111
  %985 = trunc i32 %984 to i8, !dbg !3050, !psr.id !3055, !ValueTainted !1111
  %986 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !3050, !psr.id !3056, !PointTainted !1108
  %987 = getelementptr inbounds i8, i8* %986, i64 0, !dbg !3050, !psr.id !3057, !PointTainted !1108
  store i8 %985, i8* %987, align 1, !dbg !3050, !psr.id !3058
  %988 = lshr i32 %564, 8, !dbg !3050, !psr.id !3059, !ValueTainted !1111
  %989 = trunc i32 %988 to i8, !dbg !3050, !psr.id !3060, !ValueTainted !1111
  %990 = zext i8 %989 to i32, !dbg !3050, !psr.id !3061, !ValueTainted !1111
  %991 = and i32 %990, 255, !dbg !3050, !psr.id !3062, !ValueTainted !1111
  %992 = trunc i32 %991 to i8, !dbg !3050, !psr.id !3063, !ValueTainted !1111
  %993 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !3050, !psr.id !3064, !PointTainted !1108
  %994 = getelementptr inbounds i8, i8* %993, i64 1, !dbg !3050, !psr.id !3065, !PointTainted !1108
  store i8 %992, i8* %994, align 1, !dbg !3050, !psr.id !3066
  %995 = lshr i32 %564, 16, !dbg !3050, !psr.id !3067, !ValueTainted !1111
  %996 = trunc i32 %995 to i8, !dbg !3050, !psr.id !3068, !ValueTainted !1111
  %997 = zext i8 %996 to i32, !dbg !3050, !psr.id !3069, !ValueTainted !1111
  %998 = and i32 %997, 255, !dbg !3050, !psr.id !3070, !ValueTainted !1111
  %999 = trunc i32 %998 to i8, !dbg !3050, !psr.id !3071, !ValueTainted !1111
  %1000 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !3050, !psr.id !3072, !PointTainted !1108
  %1001 = getelementptr inbounds i8, i8* %1000, i64 2, !dbg !3050, !psr.id !3073, !PointTainted !1108
  store i8 %999, i8* %1001, align 1, !dbg !3050, !psr.id !3074
  %1002 = lshr i32 %564, 24, !dbg !3050, !psr.id !3075, !ValueTainted !1111
  %1003 = trunc i32 %1002 to i8, !dbg !3050, !psr.id !3076, !ValueTainted !1111
  %1004 = zext i8 %1003 to i32, !dbg !3050, !psr.id !3077, !ValueTainted !1111
  %1005 = and i32 %1004, 255, !dbg !3050, !psr.id !3078, !ValueTainted !1111
  %1006 = trunc i32 %1005 to i8, !dbg !3050, !psr.id !3079, !ValueTainted !1111
  %1007 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !3050, !psr.id !3080, !PointTainted !1108
  %1008 = getelementptr inbounds i8, i8* %1007, i64 3, !dbg !3050, !psr.id !3081, !PointTainted !1108
  store i8 %1006, i8* %1008, align 1, !dbg !3050, !psr.id !3082
  br label %1009, !dbg !3050, !psr.id !3083

1009:                                             ; preds = %981
  br label %1010, !dbg !3084, !psr.id !3085

1010:                                             ; preds = %1009
  %1011 = trunc i32 %587 to i8, !dbg !3086, !psr.id !3088, !ValueTainted !1111
  %1012 = zext i8 %1011 to i32, !dbg !3086, !psr.id !3089, !ValueTainted !1111
  %1013 = and i32 %1012, 255, !dbg !3086, !psr.id !3090, !ValueTainted !1111
  %1014 = trunc i32 %1013 to i8, !dbg !3086, !psr.id !3091, !ValueTainted !1111
  %1015 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !3086, !psr.id !3092, !PointTainted !1108
  %1016 = getelementptr inbounds i8, i8* %1015, i64 0, !dbg !3086, !psr.id !3093, !PointTainted !1108
  store i8 %1014, i8* %1016, align 1, !dbg !3086, !psr.id !3094
  %1017 = lshr i32 %587, 8, !dbg !3086, !psr.id !3095, !ValueTainted !1111
  %1018 = trunc i32 %1017 to i8, !dbg !3086, !psr.id !3096, !ValueTainted !1111
  %1019 = zext i8 %1018 to i32, !dbg !3086, !psr.id !3097, !ValueTainted !1111
  %1020 = and i32 %1019, 255, !dbg !3086, !psr.id !3098, !ValueTainted !1111
  %1021 = trunc i32 %1020 to i8, !dbg !3086, !psr.id !3099, !ValueTainted !1111
  %1022 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !3086, !psr.id !3100, !PointTainted !1108
  %1023 = getelementptr inbounds i8, i8* %1022, i64 1, !dbg !3086, !psr.id !3101, !PointTainted !1108
  store i8 %1021, i8* %1023, align 1, !dbg !3086, !psr.id !3102
  %1024 = lshr i32 %587, 16, !dbg !3086, !psr.id !3103, !ValueTainted !1111
  %1025 = trunc i32 %1024 to i8, !dbg !3086, !psr.id !3104, !ValueTainted !1111
  %1026 = zext i8 %1025 to i32, !dbg !3086, !psr.id !3105, !ValueTainted !1111
  %1027 = and i32 %1026, 255, !dbg !3086, !psr.id !3106, !ValueTainted !1111
  %1028 = trunc i32 %1027 to i8, !dbg !3086, !psr.id !3107, !ValueTainted !1111
  %1029 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !3086, !psr.id !3108, !PointTainted !1108
  %1030 = getelementptr inbounds i8, i8* %1029, i64 2, !dbg !3086, !psr.id !3109, !PointTainted !1108
  store i8 %1028, i8* %1030, align 1, !dbg !3086, !psr.id !3110
  %1031 = lshr i32 %587, 24, !dbg !3086, !psr.id !3111, !ValueTainted !1111
  %1032 = trunc i32 %1031 to i8, !dbg !3086, !psr.id !3112, !ValueTainted !1111
  %1033 = zext i8 %1032 to i32, !dbg !3086, !psr.id !3113, !ValueTainted !1111
  %1034 = and i32 %1033, 255, !dbg !3086, !psr.id !3114, !ValueTainted !1111
  %1035 = trunc i32 %1034 to i8, !dbg !3086, !psr.id !3115, !ValueTainted !1111
  %1036 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !3086, !psr.id !3116, !PointTainted !1108
  %1037 = getelementptr inbounds i8, i8* %1036, i64 3, !dbg !3086, !psr.id !3117, !PointTainted !1108
  store i8 %1035, i8* %1037, align 1, !dbg !3086, !psr.id !3118
  br label %1038, !dbg !3086, !psr.id !3119

1038:                                             ; preds = %1010
  br label %1039, !dbg !3120, !psr.id !3121

1039:                                             ; preds = %1038
  %1040 = trunc i32 %610 to i8, !dbg !3122, !psr.id !3124, !ValueTainted !1111
  %1041 = zext i8 %1040 to i32, !dbg !3122, !psr.id !3125, !ValueTainted !1111
  %1042 = and i32 %1041, 255, !dbg !3122, !psr.id !3126, !ValueTainted !1111
  %1043 = trunc i32 %1042 to i8, !dbg !3122, !psr.id !3127, !ValueTainted !1111
  %1044 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !3122, !psr.id !3128, !PointTainted !1108
  %1045 = getelementptr inbounds i8, i8* %1044, i64 0, !dbg !3122, !psr.id !3129, !PointTainted !1108
  store i8 %1043, i8* %1045, align 1, !dbg !3122, !psr.id !3130
  %1046 = lshr i32 %610, 8, !dbg !3122, !psr.id !3131, !ValueTainted !1111
  %1047 = trunc i32 %1046 to i8, !dbg !3122, !psr.id !3132, !ValueTainted !1111
  %1048 = zext i8 %1047 to i32, !dbg !3122, !psr.id !3133, !ValueTainted !1111
  %1049 = and i32 %1048, 255, !dbg !3122, !psr.id !3134, !ValueTainted !1111
  %1050 = trunc i32 %1049 to i8, !dbg !3122, !psr.id !3135, !ValueTainted !1111
  %1051 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !3122, !psr.id !3136, !PointTainted !1108
  %1052 = getelementptr inbounds i8, i8* %1051, i64 1, !dbg !3122, !psr.id !3137, !PointTainted !1108
  store i8 %1050, i8* %1052, align 1, !dbg !3122, !psr.id !3138
  %1053 = lshr i32 %610, 16, !dbg !3122, !psr.id !3139, !ValueTainted !1111
  %1054 = trunc i32 %1053 to i8, !dbg !3122, !psr.id !3140, !ValueTainted !1111
  %1055 = zext i8 %1054 to i32, !dbg !3122, !psr.id !3141, !ValueTainted !1111
  %1056 = and i32 %1055, 255, !dbg !3122, !psr.id !3142, !ValueTainted !1111
  %1057 = trunc i32 %1056 to i8, !dbg !3122, !psr.id !3143, !ValueTainted !1111
  %1058 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !3122, !psr.id !3144, !PointTainted !1108
  %1059 = getelementptr inbounds i8, i8* %1058, i64 2, !dbg !3122, !psr.id !3145, !PointTainted !1108
  store i8 %1057, i8* %1059, align 1, !dbg !3122, !psr.id !3146
  %1060 = lshr i32 %610, 24, !dbg !3122, !psr.id !3147, !ValueTainted !1111
  %1061 = trunc i32 %1060 to i8, !dbg !3122, !psr.id !3148, !ValueTainted !1111
  %1062 = zext i8 %1061 to i32, !dbg !3122, !psr.id !3149, !ValueTainted !1111
  %1063 = and i32 %1062, 255, !dbg !3122, !psr.id !3150, !ValueTainted !1111
  %1064 = trunc i32 %1063 to i8, !dbg !3122, !psr.id !3151, !ValueTainted !1111
  %1065 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !3122, !psr.id !3152, !PointTainted !1108
  %1066 = getelementptr inbounds i8, i8* %1065, i64 3, !dbg !3122, !psr.id !3153, !PointTainted !1108
  store i8 %1064, i8* %1066, align 1, !dbg !3122, !psr.id !3154
  br label %1067, !dbg !3122, !psr.id !3155

1067:                                             ; preds = %1039
  br label %1068, !dbg !3156, !psr.id !3157

1068:                                             ; preds = %1067
  %1069 = trunc i32 %633 to i8, !dbg !3158, !psr.id !3160, !ValueTainted !1111
  %1070 = zext i8 %1069 to i32, !dbg !3158, !psr.id !3161, !ValueTainted !1111
  %1071 = and i32 %1070, 255, !dbg !3158, !psr.id !3162, !ValueTainted !1111
  %1072 = trunc i32 %1071 to i8, !dbg !3158, !psr.id !3163, !ValueTainted !1111
  %1073 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !3158, !psr.id !3164, !PointTainted !1108
  %1074 = getelementptr inbounds i8, i8* %1073, i64 0, !dbg !3158, !psr.id !3165, !PointTainted !1108
  store i8 %1072, i8* %1074, align 1, !dbg !3158, !psr.id !3166
  %1075 = lshr i32 %633, 8, !dbg !3158, !psr.id !3167, !ValueTainted !1111
  %1076 = trunc i32 %1075 to i8, !dbg !3158, !psr.id !3168, !ValueTainted !1111
  %1077 = zext i8 %1076 to i32, !dbg !3158, !psr.id !3169, !ValueTainted !1111
  %1078 = and i32 %1077, 255, !dbg !3158, !psr.id !3170, !ValueTainted !1111
  %1079 = trunc i32 %1078 to i8, !dbg !3158, !psr.id !3171, !ValueTainted !1111
  %1080 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !3158, !psr.id !3172, !PointTainted !1108
  %1081 = getelementptr inbounds i8, i8* %1080, i64 1, !dbg !3158, !psr.id !3173, !PointTainted !1108
  store i8 %1079, i8* %1081, align 1, !dbg !3158, !psr.id !3174
  %1082 = lshr i32 %633, 16, !dbg !3158, !psr.id !3175, !ValueTainted !1111
  %1083 = trunc i32 %1082 to i8, !dbg !3158, !psr.id !3176, !ValueTainted !1111
  %1084 = zext i8 %1083 to i32, !dbg !3158, !psr.id !3177, !ValueTainted !1111
  %1085 = and i32 %1084, 255, !dbg !3158, !psr.id !3178, !ValueTainted !1111
  %1086 = trunc i32 %1085 to i8, !dbg !3158, !psr.id !3179, !ValueTainted !1111
  %1087 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !3158, !psr.id !3180, !PointTainted !1108
  %1088 = getelementptr inbounds i8, i8* %1087, i64 2, !dbg !3158, !psr.id !3181, !PointTainted !1108
  store i8 %1086, i8* %1088, align 1, !dbg !3158, !psr.id !3182
  %1089 = lshr i32 %633, 24, !dbg !3158, !psr.id !3183, !ValueTainted !1111
  %1090 = trunc i32 %1089 to i8, !dbg !3158, !psr.id !3184, !ValueTainted !1111
  %1091 = zext i8 %1090 to i32, !dbg !3158, !psr.id !3185, !ValueTainted !1111
  %1092 = and i32 %1091, 255, !dbg !3158, !psr.id !3186, !ValueTainted !1111
  %1093 = trunc i32 %1092 to i8, !dbg !3158, !psr.id !3187, !ValueTainted !1111
  %1094 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !3158, !psr.id !3188, !PointTainted !1108
  %1095 = getelementptr inbounds i8, i8* %1094, i64 3, !dbg !3158, !psr.id !3189, !PointTainted !1108
  store i8 %1093, i8* %1095, align 1, !dbg !3158, !psr.id !3190
  br label %1096, !dbg !3158, !psr.id !3191

1096:                                             ; preds = %1068
  br label %1097, !dbg !3192, !psr.id !3193

1097:                                             ; preds = %1096
  %1098 = trunc i32 %656 to i8, !dbg !3194, !psr.id !3196, !ValueTainted !1111
  %1099 = zext i8 %1098 to i32, !dbg !3194, !psr.id !3197, !ValueTainted !1111
  %1100 = and i32 %1099, 255, !dbg !3194, !psr.id !3198, !ValueTainted !1111
  %1101 = trunc i32 %1100 to i8, !dbg !3194, !psr.id !3199, !ValueTainted !1111
  %1102 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !3194, !psr.id !3200, !PointTainted !1108
  %1103 = getelementptr inbounds i8, i8* %1102, i64 0, !dbg !3194, !psr.id !3201, !PointTainted !1108
  store i8 %1101, i8* %1103, align 1, !dbg !3194, !psr.id !3202
  %1104 = lshr i32 %656, 8, !dbg !3194, !psr.id !3203, !ValueTainted !1111
  %1105 = trunc i32 %1104 to i8, !dbg !3194, !psr.id !3204, !ValueTainted !1111
  %1106 = zext i8 %1105 to i32, !dbg !3194, !psr.id !3205, !ValueTainted !1111
  %1107 = and i32 %1106, 255, !dbg !3194, !psr.id !3206, !ValueTainted !1111
  %1108 = trunc i32 %1107 to i8, !dbg !3194, !psr.id !3207, !ValueTainted !1111
  %1109 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !3194, !psr.id !3208, !PointTainted !1108
  %1110 = getelementptr inbounds i8, i8* %1109, i64 1, !dbg !3194, !psr.id !3209, !PointTainted !1108
  store i8 %1108, i8* %1110, align 1, !dbg !3194, !psr.id !3210
  %1111 = lshr i32 %656, 16, !dbg !3194, !psr.id !3211, !ValueTainted !1111
  %1112 = trunc i32 %1111 to i8, !dbg !3194, !psr.id !3212, !ValueTainted !1111
  %1113 = zext i8 %1112 to i32, !dbg !3194, !psr.id !3213, !ValueTainted !1111
  %1114 = and i32 %1113, 255, !dbg !3194, !psr.id !3214, !ValueTainted !1111
  %1115 = trunc i32 %1114 to i8, !dbg !3194, !psr.id !3215, !ValueTainted !1111
  %1116 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !3194, !psr.id !3216, !PointTainted !1108
  %1117 = getelementptr inbounds i8, i8* %1116, i64 2, !dbg !3194, !psr.id !3217, !PointTainted !1108
  store i8 %1115, i8* %1117, align 1, !dbg !3194, !psr.id !3218
  %1118 = lshr i32 %656, 24, !dbg !3194, !psr.id !3219, !ValueTainted !1111
  %1119 = trunc i32 %1118 to i8, !dbg !3194, !psr.id !3220, !ValueTainted !1111
  %1120 = zext i8 %1119 to i32, !dbg !3194, !psr.id !3221, !ValueTainted !1111
  %1121 = and i32 %1120, 255, !dbg !3194, !psr.id !3222, !ValueTainted !1111
  %1122 = trunc i32 %1121 to i8, !dbg !3194, !psr.id !3223, !ValueTainted !1111
  %1123 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !3194, !psr.id !3224, !PointTainted !1108
  %1124 = getelementptr inbounds i8, i8* %1123, i64 3, !dbg !3194, !psr.id !3225, !PointTainted !1108
  store i8 %1122, i8* %1124, align 1, !dbg !3194, !psr.id !3226
  br label %1125, !dbg !3194, !psr.id !3227

1125:                                             ; preds = %1097
  %1126 = icmp ule i64 %.05, 64, !dbg !3228, !psr.id !3230
  br i1 %1126, label %1127, label %1147, !dbg !3231, !psr.id !3232

1127:                                             ; preds = %1125
  %1128 = icmp ult i64 %.05, 64, !dbg !3233, !psr.id !3236
  br i1 %1128, label %1129, label %1142, !dbg !3237, !psr.id !3238

1129:                                             ; preds = %1127
  call void @llvm.dbg.value(metadata i32 0, metadata !1786, metadata !DIExpression()), !dbg !1627, !psr.id !3239
  br label %1130, !dbg !3240, !psr.id !3243

1130:                                             ; preds = %1139, %1129
  %.2 = phi i32 [ 0, %1129 ], [ %1140, %1139 ], !dbg !3244, !psr.id !3245
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1786, metadata !DIExpression()), !dbg !1627, !psr.id !3246
  %1131 = trunc i64 %.05 to i32, !dbg !3247, !psr.id !3249
  %1132 = icmp ult i32 %.2, %1131, !dbg !3250, !psr.id !3251
  br i1 %1132, label %1133, label %1141, !dbg !3252, !psr.id !3253

1133:                                             ; preds = %1130
  %1134 = zext i32 %.2 to i64, !dbg !3254, !psr.id !3256
  %1135 = getelementptr inbounds i8, i8* %.14, i64 %1134, !dbg !3254, !psr.id !3257, !PointTainted !1108
  %1136 = load i8, i8* %1135, align 1, !dbg !3254, !psr.id !3258, !ValueTainted !1111
  %1137 = zext i32 %.2 to i64, !dbg !3259, !psr.id !3260
  %1138 = getelementptr inbounds i8, i8* %.123, i64 %1137, !dbg !3259, !psr.id !3261, !PointTainted !1108
  store i8 %1136, i8* %1138, align 1, !dbg !3262, !psr.id !3263
  br label %1139, !dbg !3264, !psr.id !3265

1139:                                             ; preds = %1133
  %1140 = add i32 %.2, 1, !dbg !3266, !psr.id !3267
  call void @llvm.dbg.value(metadata i32 %1140, metadata !1786, metadata !DIExpression()), !dbg !1627, !psr.id !3268
  br label %1130, !dbg !3269, !llvm.loop !3270, !psr.id !3272

1141:                                             ; preds = %1130
  br label %1142, !dbg !3273, !psr.id !3274

1142:                                             ; preds = %1141, %1127
  %1143 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3275, !psr.id !3276
  %1144 = getelementptr inbounds [16 x i32], [16 x i32]* %1143, i64 0, i64 12, !dbg !3277, !psr.id !3278
  store i32 %657, i32* %1144, align 4, !dbg !3279, !psr.id !3280
  %1145 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3281, !psr.id !3282
  %1146 = getelementptr inbounds [16 x i32], [16 x i32]* %1145, i64 0, i64 13, !dbg !3283, !psr.id !3284
  store i32 %.125, i32* %1146, align 4, !dbg !3285, !psr.id !3286
  br label %1151, !dbg !3287, !psr.id !3288

1147:                                             ; preds = %1125
  %1148 = sub i64 %.05, 64, !dbg !3289, !psr.id !3290
  call void @llvm.dbg.value(metadata i64 %1148, metadata !1633, metadata !DIExpression()), !dbg !1627, !psr.id !3291
  %1149 = getelementptr inbounds i8, i8* %.14, i64 64, !dbg !3292, !psr.id !3293, !PointTainted !1108
  call void @llvm.dbg.value(metadata i8* %1149, metadata !1631, metadata !DIExpression()), !dbg !1627, !psr.id !3294
  %1150 = getelementptr inbounds i8, i8* %.12, i64 64, !dbg !3295, !psr.id !3296, !PointTainted !1108
  call void @llvm.dbg.value(metadata i8* %1150, metadata !1629, metadata !DIExpression()), !dbg !1627, !psr.id !3297
  br label %57, !dbg !3298, !llvm.loop !3299, !psr.id !3302

1151:                                             ; preds = %1142, %7
  ret void, !dbg !3303, !psr.id !3304
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 !dbg !3305 {
  %7 = alloca %struct.chacha_ctx, align 4, !psr.id !3306
  %8 = alloca [8 x i8], align 1, !psr.id !3307
  call void @llvm.dbg.value(metadata i8* %0, metadata !3308, metadata !DIExpression()), !dbg !3309, !psr.id !3310
  call void @llvm.dbg.value(metadata i8* %1, metadata !3311, metadata !DIExpression()), !dbg !3309, !psr.id !3312
  call void @llvm.dbg.value(metadata i64 %2, metadata !3313, metadata !DIExpression()), !dbg !3309, !psr.id !3314
  call void @llvm.dbg.value(metadata i8* %3, metadata !3315, metadata !DIExpression()), !dbg !3309, !psr.id !3316
  call void @llvm.dbg.value(metadata i64 %4, metadata !3317, metadata !DIExpression()), !dbg !3309, !psr.id !3318
  call void @llvm.dbg.value(metadata i8* %5, metadata !3319, metadata !DIExpression()), !dbg !3309, !psr.id !3320
  call void @llvm.dbg.declare(metadata %struct.chacha_ctx* %7, metadata !3321, metadata !DIExpression()), !dbg !3322, !psr.id !3323
  call void @llvm.dbg.declare(metadata [8 x i8]* %8, metadata !3324, metadata !DIExpression()), !dbg !3328, !psr.id !3329
  %9 = icmp ne i64 %2, 0, !dbg !3330, !psr.id !3332
  br i1 %9, label %11, label %10, !dbg !3333, !psr.id !3334

10:                                               ; preds = %6
  br label %76, !dbg !3335, !psr.id !3337

11:                                               ; preds = %6
  %12 = lshr i64 %4, 32, !dbg !3338, !psr.id !3339
  %13 = trunc i64 %12 to i32, !dbg !3338, !psr.id !3340
  call void @llvm.dbg.value(metadata i32 %13, metadata !3341, metadata !DIExpression()), !dbg !3309, !psr.id !3342
  %14 = trunc i64 %4 to i32, !dbg !3343, !psr.id !3344
  call void @llvm.dbg.value(metadata i32 %14, metadata !3345, metadata !DIExpression()), !dbg !3309, !psr.id !3346
  br label %15, !dbg !3347, !psr.id !3348

15:                                               ; preds = %11
  %16 = trunc i32 %14 to i8, !dbg !3349, !psr.id !3351
  %17 = zext i8 %16 to i32, !dbg !3349, !psr.id !3352
  %18 = and i32 %17, 255, !dbg !3349, !psr.id !3353
  %19 = trunc i32 %18 to i8, !dbg !3349, !psr.id !3354
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !3349, !psr.id !3355
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !3349, !psr.id !3356
  store i8 %19, i8* %21, align 1, !dbg !3349, !psr.id !3357
  %22 = lshr i32 %14, 8, !dbg !3349, !psr.id !3358
  %23 = trunc i32 %22 to i8, !dbg !3349, !psr.id !3359
  %24 = zext i8 %23 to i32, !dbg !3349, !psr.id !3360
  %25 = and i32 %24, 255, !dbg !3349, !psr.id !3361
  %26 = trunc i32 %25 to i8, !dbg !3349, !psr.id !3362
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !3349, !psr.id !3363
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !3349, !psr.id !3364
  store i8 %26, i8* %28, align 1, !dbg !3349, !psr.id !3365
  %29 = lshr i32 %14, 16, !dbg !3349, !psr.id !3366
  %30 = trunc i32 %29 to i8, !dbg !3349, !psr.id !3367
  %31 = zext i8 %30 to i32, !dbg !3349, !psr.id !3368
  %32 = and i32 %31, 255, !dbg !3349, !psr.id !3369
  %33 = trunc i32 %32 to i8, !dbg !3349, !psr.id !3370
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !3349, !psr.id !3371
  %35 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !3349, !psr.id !3372
  store i8 %33, i8* %35, align 1, !dbg !3349, !psr.id !3373
  %36 = lshr i32 %14, 24, !dbg !3349, !psr.id !3374
  %37 = trunc i32 %36 to i8, !dbg !3349, !psr.id !3375
  %38 = zext i8 %37 to i32, !dbg !3349, !psr.id !3376
  %39 = and i32 %38, 255, !dbg !3349, !psr.id !3377
  %40 = trunc i32 %39 to i8, !dbg !3349, !psr.id !3378
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !3349, !psr.id !3379
  %42 = getelementptr inbounds i8, i8* %41, i64 3, !dbg !3349, !psr.id !3380
  store i8 %40, i8* %42, align 1, !dbg !3349, !psr.id !3381
  br label %43, !dbg !3349, !psr.id !3382

43:                                               ; preds = %15
  br label %44, !dbg !3383, !psr.id !3384

44:                                               ; preds = %43
  %45 = trunc i32 %13 to i8, !dbg !3385, !psr.id !3387
  %46 = zext i8 %45 to i32, !dbg !3385, !psr.id !3388
  %47 = and i32 %46, 255, !dbg !3385, !psr.id !3389
  %48 = trunc i32 %47 to i8, !dbg !3385, !psr.id !3390
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !3385, !psr.id !3391
  %50 = getelementptr inbounds i8, i8* %49, i64 0, !dbg !3385, !psr.id !3392
  store i8 %48, i8* %50, align 1, !dbg !3385, !psr.id !3393
  %51 = lshr i32 %13, 8, !dbg !3385, !psr.id !3394
  %52 = trunc i32 %51 to i8, !dbg !3385, !psr.id !3395
  %53 = zext i8 %52 to i32, !dbg !3385, !psr.id !3396
  %54 = and i32 %53, 255, !dbg !3385, !psr.id !3397
  %55 = trunc i32 %54 to i8, !dbg !3385, !psr.id !3398
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !3385, !psr.id !3399
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !3385, !psr.id !3400
  store i8 %55, i8* %57, align 1, !dbg !3385, !psr.id !3401
  %58 = lshr i32 %13, 16, !dbg !3385, !psr.id !3402
  %59 = trunc i32 %58 to i8, !dbg !3385, !psr.id !3403
  %60 = zext i8 %59 to i32, !dbg !3385, !psr.id !3404
  %61 = and i32 %60, 255, !dbg !3385, !psr.id !3405
  %62 = trunc i32 %61 to i8, !dbg !3385, !psr.id !3406
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !3385, !psr.id !3407
  %64 = getelementptr inbounds i8, i8* %63, i64 2, !dbg !3385, !psr.id !3408
  store i8 %62, i8* %64, align 1, !dbg !3385, !psr.id !3409
  %65 = lshr i32 %13, 24, !dbg !3385, !psr.id !3410
  %66 = trunc i32 %65 to i8, !dbg !3385, !psr.id !3411
  %67 = zext i8 %66 to i32, !dbg !3385, !psr.id !3412
  %68 = and i32 %67, 255, !dbg !3385, !psr.id !3413
  %69 = trunc i32 %68 to i8, !dbg !3385, !psr.id !3414
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !3385, !psr.id !3415
  %71 = getelementptr inbounds i8, i8* %70, i64 3, !dbg !3385, !psr.id !3416
  store i8 %69, i8* %71, align 1, !dbg !3385, !psr.id !3417
  br label %72, !dbg !3385, !psr.id !3418

72:                                               ; preds = %44
  call void @chacha_keysetup(%struct.chacha_ctx* %7, i8* %5), !dbg !3419, !psr.id !3420
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !3421, !psr.id !3422
  call void @chacha_ivsetup(%struct.chacha_ctx* %7, i8* %3, i8* %73), !dbg !3423, !psr.id !3424
  call void @chacha_encrypt_bytes(%struct.chacha_ctx* %7, i8* %1, i8* %0, i64 %2), !dbg !3425, !psr.id !3426
  %74 = bitcast %struct.chacha_ctx* %7 to i8*, !dbg !3427, !psr.id !3428
  call void @sodium_memzero(i8* %74, i64 64), !dbg !3429, !psr.id !3430
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !3431, !psr.id !3432
  call void @sodium_memzero(i8* %75, i64 8), !dbg !3433, !psr.id !3434
  br label %76, !dbg !3435, !psr.id !3436

76:                                               ; preds = %72, %10
  ret i32 0, !dbg !3437, !psr.id !3438
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_memzero(i8* %0, i64 %1) #0 !dbg !3439 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3440, metadata !DIExpression()), !dbg !3441, !psr.id !3442
  call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3441, !psr.id !3444
  call void @llvm.dbg.value(metadata i8* %0, metadata !3445, metadata !DIExpression()), !dbg !3441, !psr.id !3446
  call void @llvm.dbg.value(metadata i64 0, metadata !3447, metadata !DIExpression()), !dbg !3441, !psr.id !3448
  br label %3, !dbg !3449, !psr.id !3450

3:                                                ; preds = %5, %2
  %.0 = phi i64 [ 0, %2 ], [ %6, %5 ], !dbg !3441, !psr.id !3451
  call void @llvm.dbg.value(metadata i64 %.0, metadata !3447, metadata !DIExpression()), !dbg !3441, !psr.id !3452
  %4 = icmp ult i64 %.0, %1, !dbg !3453, !psr.id !3454
  br i1 %4, label %5, label %8, !dbg !3449, !psr.id !3455

5:                                                ; preds = %3
  %6 = add i64 %.0, 1, !dbg !3456, !psr.id !3458
  call void @llvm.dbg.value(metadata i64 %6, metadata !3447, metadata !DIExpression()), !dbg !3441, !psr.id !3459
  %7 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !3460, !psr.id !3461
  store volatile i8 0, i8* %7, align 1, !dbg !3462, !psr.id !3463
  br label %3, !dbg !3449, !llvm.loop !3464, !psr.id !3466

8:                                                ; preds = %3
  ret void, !dbg !3467, !psr.id !3468
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !3469 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3475, metadata !DIExpression()), !dbg !3476, !psr.id !3477
  call void @llvm.dbg.value(metadata i8* %1, metadata !3478, metadata !DIExpression()), !dbg !3476, !psr.id !3479
  call void @llvm.dbg.value(metadata i64 %2, metadata !3480, metadata !DIExpression()), !dbg !3476, !psr.id !3481
  call void @llvm.dbg.value(metadata i8* %0, metadata !3482, metadata !DIExpression()), !dbg !3476, !psr.id !3483
  call void @llvm.dbg.value(metadata i8* %1, metadata !3484, metadata !DIExpression()), !dbg !3476, !psr.id !3485
  call void @llvm.dbg.value(metadata i8 0, metadata !3486, metadata !DIExpression()), !dbg !3476, !psr.id !3487
  call void @llvm.dbg.value(metadata i64 0, metadata !3488, metadata !DIExpression()), !dbg !3476, !psr.id !3489
  br label %4, !dbg !3490, !psr.id !3492

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !3493, !psr.id !3494
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !3476, !psr.id !3495
  call void @llvm.dbg.value(metadata i8 %.0, metadata !3486, metadata !DIExpression()), !dbg !3476, !psr.id !3496
  call void @llvm.dbg.value(metadata i64 %.01, metadata !3488, metadata !DIExpression()), !dbg !3476, !psr.id !3497
  %5 = icmp ult i64 %.01, %2, !dbg !3498, !psr.id !3500
  br i1 %5, label %6, label %19, !dbg !3501, !psr.id !3502

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !3503, !psr.id !3505
  %8 = load i8, i8* %7, align 1, !dbg !3503, !psr.id !3506
  %9 = zext i8 %8 to i32, !dbg !3503, !psr.id !3507
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !3508, !psr.id !3509
  %11 = load i8, i8* %10, align 1, !dbg !3508, !psr.id !3510
  %12 = zext i8 %11 to i32, !dbg !3508, !psr.id !3511
  %13 = xor i32 %9, %12, !dbg !3512, !psr.id !3513
  %14 = zext i8 %.0 to i32, !dbg !3514, !psr.id !3515
  %15 = or i32 %14, %13, !dbg !3514, !psr.id !3516
  %16 = trunc i32 %15 to i8, !dbg !3514, !psr.id !3517
  call void @llvm.dbg.value(metadata i8 %16, metadata !3486, metadata !DIExpression()), !dbg !3476, !psr.id !3518
  br label %17, !dbg !3519, !psr.id !3520

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !3521, !psr.id !3522
  call void @llvm.dbg.value(metadata i64 %18, metadata !3488, metadata !DIExpression()), !dbg !3476, !psr.id !3523
  br label %4, !dbg !3524, !llvm.loop !3525, !psr.id !3527

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !3528, !psr.id !3529
  %21 = sub nsw i32 %20, 1, !dbg !3530, !psr.id !3531
  %22 = ashr i32 %21, 8, !dbg !3532, !psr.id !3533
  %23 = and i32 1, %22, !dbg !3534, !psr.id !3535
  %24 = sub nsw i32 %23, 1, !dbg !3536, !psr.id !3537
  ret i32 %24, !dbg !3538, !psr.id !3539
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !3540 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3546, metadata !DIExpression()), !dbg !3547, !psr.id !3548
  call void @llvm.dbg.value(metadata i64 %1, metadata !3549, metadata !DIExpression()), !dbg !3547, !psr.id !3550
  call void @llvm.dbg.value(metadata i8* %2, metadata !3551, metadata !DIExpression()), !dbg !3547, !psr.id !3552
  call void @llvm.dbg.value(metadata i64 %3, metadata !3553, metadata !DIExpression()), !dbg !3547, !psr.id !3554
  call void @llvm.dbg.value(metadata i64 0, metadata !3555, metadata !DIExpression()), !dbg !3547, !psr.id !3556
  %5 = icmp uge i64 %3, 9223372036854775807, !dbg !3557, !psr.id !3559
  br i1 %5, label %9, label %6, !dbg !3560, !psr.id !3561

6:                                                ; preds = %4
  %7 = mul i64 %3, 2, !dbg !3562, !psr.id !3563
  %8 = icmp ult i64 %1, %7, !dbg !3564, !psr.id !3565
  br i1 %8, label %9, label %10, !dbg !3566, !psr.id !3567

9:                                                ; preds = %6, %4
  call void @abort() #8, !dbg !3568, !psr.id !3570
  unreachable, !dbg !3568, !psr.id !3571

10:                                               ; preds = %6
  br label %11, !dbg !3572, !psr.id !3573

11:                                               ; preds = %13, %10
  %.0 = phi i64 [ 0, %10 ], [ %46, %13 ], !dbg !3547, !psr.id !3574
  call void @llvm.dbg.value(metadata i64 %.0, metadata !3555, metadata !DIExpression()), !dbg !3547, !psr.id !3575
  %12 = icmp ult i64 %.0, %3, !dbg !3576, !psr.id !3577
  br i1 %12, label %13, label %47, !dbg !3572, !psr.id !3578

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !3579, !psr.id !3581
  %15 = load i8, i8* %14, align 1, !dbg !3579, !psr.id !3582
  %16 = zext i8 %15 to i32, !dbg !3579, !psr.id !3583
  %17 = and i32 %16, 15, !dbg !3584, !psr.id !3585
  call void @llvm.dbg.value(metadata i32 %17, metadata !3586, metadata !DIExpression()), !dbg !3547, !psr.id !3587
  %18 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !3588, !psr.id !3589
  %19 = load i8, i8* %18, align 1, !dbg !3588, !psr.id !3590
  %20 = zext i8 %19 to i32, !dbg !3588, !psr.id !3591
  %21 = ashr i32 %20, 4, !dbg !3592, !psr.id !3593
  call void @llvm.dbg.value(metadata i32 %21, metadata !3594, metadata !DIExpression()), !dbg !3547, !psr.id !3595
  %22 = add i32 87, %17, !dbg !3596, !psr.id !3597
  %23 = sub i32 %17, 10, !dbg !3598, !psr.id !3599
  %24 = lshr i32 %23, 8, !dbg !3600, !psr.id !3601
  %25 = and i32 %24, -39, !dbg !3602, !psr.id !3603
  %26 = add i32 %22, %25, !dbg !3604, !psr.id !3605
  %27 = trunc i32 %26 to i8, !dbg !3606, !psr.id !3607
  %28 = zext i8 %27 to i32, !dbg !3606, !psr.id !3608
  %29 = shl i32 %28, 8, !dbg !3609, !psr.id !3610
  %30 = add i32 87, %21, !dbg !3611, !psr.id !3612
  %31 = sub i32 %21, 10, !dbg !3613, !psr.id !3614
  %32 = lshr i32 %31, 8, !dbg !3615, !psr.id !3616
  %33 = and i32 %32, -39, !dbg !3617, !psr.id !3618
  %34 = add i32 %30, %33, !dbg !3619, !psr.id !3620
  %35 = trunc i32 %34 to i8, !dbg !3621, !psr.id !3622
  %36 = zext i8 %35 to i32, !dbg !3621, !psr.id !3623
  %37 = or i32 %29, %36, !dbg !3624, !psr.id !3625
  call void @llvm.dbg.value(metadata i32 %37, metadata !3626, metadata !DIExpression()), !dbg !3547, !psr.id !3627
  %38 = trunc i32 %37 to i8, !dbg !3628, !psr.id !3629
  %39 = mul i64 %.0, 2, !dbg !3630, !psr.id !3631
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !3632, !psr.id !3633
  store i8 %38, i8* %40, align 1, !dbg !3634, !psr.id !3635
  %41 = lshr i32 %37, 8, !dbg !3636, !psr.id !3637
  call void @llvm.dbg.value(metadata i32 %41, metadata !3626, metadata !DIExpression()), !dbg !3547, !psr.id !3638
  %42 = trunc i32 %41 to i8, !dbg !3639, !psr.id !3640
  %43 = mul i64 %.0, 2, !dbg !3641, !psr.id !3642
  %44 = add i64 %43, 1, !dbg !3643, !psr.id !3644
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !3645, !psr.id !3646
  store i8 %42, i8* %45, align 1, !dbg !3647, !psr.id !3648
  %46 = add i64 %.0, 1, !dbg !3649, !psr.id !3650
  call void @llvm.dbg.value(metadata i64 %46, metadata !3555, metadata !DIExpression()), !dbg !3547, !psr.id !3651
  br label %11, !dbg !3572, !llvm.loop !3652, !psr.id !3654

47:                                               ; preds = %11
  %48 = mul i64 %.0, 2, !dbg !3655, !psr.id !3656
  %49 = getelementptr inbounds i8, i8* %0, i64 %48, !dbg !3657, !psr.id !3658
  store i8 0, i8* %49, align 1, !dbg !3659, !psr.id !3660
  ret i8* %0, !dbg !3661, !psr.id !3662
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 !dbg !3663 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3670, metadata !DIExpression()), !dbg !3671, !psr.id !3672
  call void @llvm.dbg.value(metadata i64 %1, metadata !3673, metadata !DIExpression()), !dbg !3671, !psr.id !3674
  call void @llvm.dbg.value(metadata i8* %2, metadata !3675, metadata !DIExpression()), !dbg !3671, !psr.id !3676
  call void @llvm.dbg.value(metadata i64 %3, metadata !3677, metadata !DIExpression()), !dbg !3671, !psr.id !3678
  call void @llvm.dbg.value(metadata i8* %4, metadata !3679, metadata !DIExpression()), !dbg !3671, !psr.id !3680
  call void @llvm.dbg.value(metadata i64* %5, metadata !3681, metadata !DIExpression()), !dbg !3671, !psr.id !3682
  call void @llvm.dbg.value(metadata i8** %6, metadata !3683, metadata !DIExpression()), !dbg !3671, !psr.id !3684
  call void @llvm.dbg.value(metadata i64 0, metadata !3685, metadata !DIExpression()), !dbg !3671, !psr.id !3686
  call void @llvm.dbg.value(metadata i64 0, metadata !3687, metadata !DIExpression()), !dbg !3671, !psr.id !3688
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()), !dbg !3671, !psr.id !3690
  call void @llvm.dbg.value(metadata i8 0, metadata !3691, metadata !DIExpression()), !dbg !3671, !psr.id !3692
  call void @llvm.dbg.value(metadata i8 0, metadata !3693, metadata !DIExpression()), !dbg !3671, !psr.id !3694
  br label %8, !dbg !3695, !psr.id !3696

8:                                                ; preds = %73, %44, %7
  %.05 = phi i64 [ 0, %7 ], [ %.05, %44 ], [ %.16, %73 ], !dbg !3697, !psr.id !3698
  %.03 = phi i64 [ 0, %7 ], [ %45, %44 ], [ %77, %73 ], !dbg !3671, !psr.id !3699
  %.01 = phi i8 [ 0, %7 ], [ %.01, %44 ], [ %.1, %73 ], !dbg !3671, !psr.id !3700
  %.0 = phi i8 [ 0, %7 ], [ %.0, %44 ], [ %76, %73 ], !dbg !3671, !psr.id !3701
  call void @llvm.dbg.value(metadata i8 %.0, metadata !3693, metadata !DIExpression()), !dbg !3671, !psr.id !3702
  call void @llvm.dbg.value(metadata i8 %.01, metadata !3691, metadata !DIExpression()), !dbg !3671, !psr.id !3703
  call void @llvm.dbg.value(metadata i64 %.03, metadata !3687, metadata !DIExpression()), !dbg !3671, !psr.id !3704
  call void @llvm.dbg.value(metadata i64 %.05, metadata !3685, metadata !DIExpression()), !dbg !3671, !psr.id !3705
  %9 = icmp ult i64 %.03, %3, !dbg !3706, !psr.id !3707
  br i1 %9, label %10, label %78, !dbg !3695, !psr.id !3708

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %2, i64 %.03, !dbg !3709, !psr.id !3711
  %12 = load i8, i8* %11, align 1, !dbg !3709, !psr.id !3712
  call void @llvm.dbg.value(metadata i8 %12, metadata !3713, metadata !DIExpression()), !dbg !3671, !psr.id !3714
  %13 = zext i8 %12 to i32, !dbg !3715, !psr.id !3716
  %14 = xor i32 %13, 48, !dbg !3717, !psr.id !3718
  %15 = trunc i32 %14 to i8, !dbg !3715, !psr.id !3719
  call void @llvm.dbg.value(metadata i8 %15, metadata !3720, metadata !DIExpression()), !dbg !3671, !psr.id !3721
  %16 = zext i8 %15 to i32, !dbg !3722, !psr.id !3723
  %17 = sub i32 %16, 10, !dbg !3724, !psr.id !3725
  %18 = lshr i32 %17, 8, !dbg !3726, !psr.id !3727
  %19 = trunc i32 %18 to i8, !dbg !3728, !psr.id !3729
  call void @llvm.dbg.value(metadata i8 %19, metadata !3730, metadata !DIExpression()), !dbg !3671, !psr.id !3731
  %20 = zext i8 %12 to i32, !dbg !3732, !psr.id !3733
  %21 = and i32 %20, -33, !dbg !3734, !psr.id !3735
  %22 = sub i32 %21, 55, !dbg !3736, !psr.id !3737
  %23 = trunc i32 %22 to i8, !dbg !3738, !psr.id !3739
  call void @llvm.dbg.value(metadata i8 %23, metadata !3740, metadata !DIExpression()), !dbg !3671, !psr.id !3741
  %24 = zext i8 %23 to i32, !dbg !3742, !psr.id !3743
  %25 = sub i32 %24, 10, !dbg !3744, !psr.id !3745
  %26 = zext i8 %23 to i32, !dbg !3746, !psr.id !3747
  %27 = sub i32 %26, 16, !dbg !3748, !psr.id !3749
  %28 = xor i32 %25, %27, !dbg !3750, !psr.id !3751
  %29 = lshr i32 %28, 8, !dbg !3752, !psr.id !3753
  %30 = trunc i32 %29 to i8, !dbg !3754, !psr.id !3755
  call void @llvm.dbg.value(metadata i8 %30, metadata !3756, metadata !DIExpression()), !dbg !3671, !psr.id !3757
  %31 = zext i8 %19 to i32, !dbg !3758, !psr.id !3760
  %32 = zext i8 %30 to i32, !dbg !3761, !psr.id !3762
  %33 = or i32 %31, %32, !dbg !3763, !psr.id !3764
  %34 = icmp eq i32 %33, 0, !dbg !3765, !psr.id !3766
  br i1 %34, label %35, label %47, !dbg !3767, !psr.id !3768

35:                                               ; preds = %10
  %36 = icmp ne i8* %4, null, !dbg !3769, !psr.id !3772
  br i1 %36, label %37, label %46, !dbg !3773, !psr.id !3774

37:                                               ; preds = %35
  %38 = zext i8 %.0 to i32, !dbg !3775, !psr.id !3776
  %39 = icmp eq i32 %38, 0, !dbg !3777, !psr.id !3778
  br i1 %39, label %40, label %46, !dbg !3779, !psr.id !3780

40:                                               ; preds = %37
  %41 = zext i8 %12 to i32, !dbg !3781, !psr.id !3782
  %42 = call i8* @strchr(i8* %4, i32 %41) #11, !dbg !3783, !psr.id !3784
  %43 = icmp ne i8* %42, null, !dbg !3785, !psr.id !3786
  br i1 %43, label %44, label %46, !dbg !3787, !psr.id !3788

44:                                               ; preds = %40
  %45 = add i64 %.03, 1, !dbg !3789, !psr.id !3791
  call void @llvm.dbg.value(metadata i64 %45, metadata !3687, metadata !DIExpression()), !dbg !3671, !psr.id !3792
  br label %8, !dbg !3793, !llvm.loop !3794, !psr.id !3796

46:                                               ; preds = %40, %37, %35
  br label %78, !dbg !3797, !psr.id !3798

47:                                               ; preds = %10
  %48 = zext i8 %19 to i32, !dbg !3799, !psr.id !3800
  %49 = zext i8 %15 to i32, !dbg !3801, !psr.id !3802
  %50 = and i32 %48, %49, !dbg !3803, !psr.id !3804
  %51 = zext i8 %30 to i32, !dbg !3805, !psr.id !3806
  %52 = zext i8 %23 to i32, !dbg !3807, !psr.id !3808
  %53 = and i32 %51, %52, !dbg !3809, !psr.id !3810
  %54 = or i32 %50, %53, !dbg !3811, !psr.id !3812
  %55 = trunc i32 %54 to i8, !dbg !3813, !psr.id !3814
  call void @llvm.dbg.value(metadata i8 %55, metadata !3815, metadata !DIExpression()), !dbg !3671, !psr.id !3816
  %56 = icmp uge i64 %.05, %1, !dbg !3817, !psr.id !3819
  br i1 %56, label %57, label %59, !dbg !3820, !psr.id !3821

57:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 -1, metadata !3689, metadata !DIExpression()), !dbg !3671, !psr.id !3822
  %58 = call i32* @__errno_location() #9, !dbg !3823, !psr.id !3825
  store i32 34, i32* %58, align 4, !dbg !3826, !psr.id !3827
  br label %78, !dbg !3828, !psr.id !3829

59:                                               ; preds = %47
  %60 = zext i8 %.0 to i32, !dbg !3830, !psr.id !3832
  %61 = icmp eq i32 %60, 0, !dbg !3833, !psr.id !3834
  br i1 %61, label %62, label %66, !dbg !3835, !psr.id !3836

62:                                               ; preds = %59
  %63 = zext i8 %55 to i32, !dbg !3837, !psr.id !3839
  %64 = mul i32 %63, 16, !dbg !3840, !psr.id !3841
  %65 = trunc i32 %64 to i8, !dbg !3837, !psr.id !3842
  call void @llvm.dbg.value(metadata i8 %65, metadata !3691, metadata !DIExpression()), !dbg !3671, !psr.id !3843
  br label %73, !dbg !3844, !psr.id !3845

66:                                               ; preds = %59
  %67 = zext i8 %.01 to i32, !dbg !3846, !psr.id !3848
  %68 = zext i8 %55 to i32, !dbg !3849, !psr.id !3850
  %69 = or i32 %67, %68, !dbg !3851, !psr.id !3852
  %70 = trunc i32 %69 to i8, !dbg !3846, !psr.id !3853
  %71 = add i64 %.05, 1, !dbg !3854, !psr.id !3855
  call void @llvm.dbg.value(metadata i64 %71, metadata !3685, metadata !DIExpression()), !dbg !3671, !psr.id !3856
  %72 = getelementptr inbounds i8, i8* %0, i64 %.05, !dbg !3857, !psr.id !3858
  store i8 %70, i8* %72, align 1, !dbg !3859, !psr.id !3860
  br label %73, !psr.id !3861

73:                                               ; preds = %66, %62
  %.16 = phi i64 [ %.05, %62 ], [ %71, %66 ], !dbg !3671, !psr.id !3862
  %.1 = phi i8 [ %65, %62 ], [ %.01, %66 ], !dbg !3671, !psr.id !3863
  call void @llvm.dbg.value(metadata i8 %.1, metadata !3691, metadata !DIExpression()), !dbg !3671, !psr.id !3864
  call void @llvm.dbg.value(metadata i64 %.16, metadata !3685, metadata !DIExpression()), !dbg !3671, !psr.id !3865
  %74 = zext i8 %.0 to i32, !dbg !3866, !psr.id !3867
  %75 = xor i32 %74, -1, !dbg !3868, !psr.id !3869
  %76 = trunc i32 %75 to i8, !dbg !3868, !psr.id !3870
  call void @llvm.dbg.value(metadata i8 %76, metadata !3693, metadata !DIExpression()), !dbg !3671, !psr.id !3871
  %77 = add i64 %.03, 1, !dbg !3872, !psr.id !3873
  call void @llvm.dbg.value(metadata i64 %77, metadata !3687, metadata !DIExpression()), !dbg !3671, !psr.id !3874
  br label %8, !dbg !3695, !llvm.loop !3794, !psr.id !3875

78:                                               ; preds = %57, %46, %8
  %.02 = phi i32 [ 0, %46 ], [ -1, %57 ], [ 0, %8 ], !dbg !3671, !psr.id !3876
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3689, metadata !DIExpression()), !dbg !3671, !psr.id !3877
  %79 = zext i8 %.0 to i32, !dbg !3878, !psr.id !3880
  %80 = icmp ne i32 %79, 0, !dbg !3881, !psr.id !3882
  br i1 %80, label %81, label %83, !dbg !3883, !psr.id !3884

81:                                               ; preds = %78
  %82 = add i64 %.03, -1, !dbg !3885, !psr.id !3887
  call void @llvm.dbg.value(metadata i64 %82, metadata !3687, metadata !DIExpression()), !dbg !3671, !psr.id !3888
  br label %83, !dbg !3889, !psr.id !3890

83:                                               ; preds = %81, %78
  %.14 = phi i64 [ %82, %81 ], [ %.03, %78 ], !dbg !3671, !psr.id !3891
  call void @llvm.dbg.value(metadata i64 %.14, metadata !3687, metadata !DIExpression()), !dbg !3671, !psr.id !3892
  %84 = icmp ne i8** %6, null, !dbg !3893, !psr.id !3895
  br i1 %84, label %85, label %87, !dbg !3896, !psr.id !3897

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, i8* %2, i64 %.14, !dbg !3898, !psr.id !3900
  store i8* %86, i8** %6, align 8, !dbg !3901, !psr.id !3902
  br label %87, !dbg !3903, !psr.id !3904

87:                                               ; preds = %85, %83
  %88 = icmp ne i64* %5, null, !dbg !3905, !psr.id !3907
  br i1 %88, label %89, label %90, !dbg !3908, !psr.id !3909

89:                                               ; preds = %87
  store i64 %.05, i64* %5, align 8, !dbg !3910, !psr.id !3912
  br label %90, !dbg !3913, !psr.id !3914

90:                                               ; preds = %89, %87
  ret i32 %.02, !dbg !3915, !psr.id !3916
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_sodium_alloc_init() #0 !dbg !3917 {
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* @canary, i64 0, i64 0, !psr.id !3918
  call void @randombytes_buf(i8* %1, i64 16), !dbg !3919, !psr.id !3920
  ret i32 0, !dbg !3921, !psr.id !3922
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mlock(i8* %0, i64 %1) #0 !dbg !3923 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3924, metadata !DIExpression()), !dbg !3925, !psr.id !3926
  call void @llvm.dbg.value(metadata i64 %1, metadata !3927, metadata !DIExpression()), !dbg !3925, !psr.id !3928
  %3 = call i32* @__errno_location() #9, !dbg !3929, !psr.id !3930
  store i32 38, i32* %3, align 4, !dbg !3931, !psr.id !3932
  ret i32 -1, !dbg !3933, !psr.id !3934
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_munlock(i8* %0, i64 %1) #0 !dbg !3935 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()), !dbg !3937, !psr.id !3938
  call void @llvm.dbg.value(metadata i64 %1, metadata !3939, metadata !DIExpression()), !dbg !3937, !psr.id !3940
  call void @sodium_memzero(i8* %0, i64 %1), !dbg !3941, !psr.id !3942
  %3 = call i32* @__errno_location() #9, !dbg !3943, !psr.id !3944
  store i32 38, i32* %3, align 4, !dbg !3945, !psr.id !3946
  ret i32 -1, !dbg !3947, !psr.id !3948
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_malloc(i64 %0) #0 !dbg !3949 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3952, metadata !DIExpression()), !dbg !3953, !psr.id !3954
  %2 = call noalias i8* @_sodium_malloc(i64 %0), !dbg !3955, !psr.id !3957
  call void @llvm.dbg.value(metadata i8* %2, metadata !3958, metadata !DIExpression()), !dbg !3953, !psr.id !3959
  %3 = icmp eq i8* %2, null, !dbg !3960, !psr.id !3961
  br i1 %3, label %4, label %5, !dbg !3962, !psr.id !3963

4:                                                ; preds = %1
  br label %6, !dbg !3964, !psr.id !3966

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 -48, i64 %0, i1 false), !dbg !3967, !psr.id !3968
  br label %6, !dbg !3969, !psr.id !3970

6:                                                ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %2, %5 ], !dbg !3953, !psr.id !3971
  ret i8* %.0, !dbg !3972, !psr.id !3973
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @_sodium_malloc(i64 %0) #0 !dbg !3974 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3975, metadata !DIExpression()), !dbg !3976, !psr.id !3977
  %2 = call noalias i8* @malloc(i64 %0) #10, !dbg !3978, !psr.id !3979
  ret i8* %2, !dbg !3980, !psr.id !3981
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_allocarray(i64 %0, i64 %1) #0 !dbg !3982 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3985, metadata !DIExpression()), !dbg !3986, !psr.id !3987
  call void @llvm.dbg.value(metadata i64 %1, metadata !3988, metadata !DIExpression()), !dbg !3986, !psr.id !3989
  %3 = icmp ugt i64 %0, 0, !dbg !3990, !psr.id !3992
  br i1 %3, label %4, label %9, !dbg !3993, !psr.id !3994

4:                                                ; preds = %2
  %5 = udiv i64 -1, %0, !dbg !3995, !psr.id !3996
  %6 = icmp uge i64 %1, %5, !dbg !3997, !psr.id !3998
  br i1 %6, label %7, label %9, !dbg !3999, !psr.id !4000

7:                                                ; preds = %4
  %8 = call i32* @__errno_location() #9, !dbg !4001, !psr.id !4003
  store i32 12, i32* %8, align 4, !dbg !4004, !psr.id !4005
  br label %12, !dbg !4006, !psr.id !4007

9:                                                ; preds = %4, %2
  %10 = mul i64 %0, %1, !dbg !4008, !psr.id !4009
  call void @llvm.dbg.value(metadata i64 %10, metadata !4010, metadata !DIExpression()), !dbg !3986, !psr.id !4011
  %11 = call noalias i8* @sodium_malloc(i64 %10), !dbg !4012, !psr.id !4013
  br label %12, !dbg !4014, !psr.id !4015

12:                                               ; preds = %9, %7
  %.0 = phi i8* [ null, %7 ], [ %11, %9 ], !dbg !3986, !psr.id !4016
  ret i8* %.0, !dbg !4017, !psr.id !4018
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_free(i8* %0) #0 !dbg !4019 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4022, metadata !DIExpression()), !dbg !4023, !psr.id !4024
  call void @free(i8* %0) #10, !dbg !4025, !psr.id !4026
  ret void, !dbg !4027, !psr.id !4028
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* %0) #0 !dbg !4029 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4032, metadata !DIExpression()), !dbg !4033, !psr.id !4034
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_noaccess), !dbg !4035, !psr.id !4036
  ret i32 %2, !dbg !4037, !psr.id !4038
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_noaccess(i8* %0, i64 %1) #0 !dbg !4039 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4042, metadata !DIExpression()), !dbg !4043, !psr.id !4044
  call void @llvm.dbg.value(metadata i64 %1, metadata !4045, metadata !DIExpression()), !dbg !4043, !psr.id !4046
  %3 = call i32* @__errno_location() #9, !dbg !4047, !psr.id !4048
  store i32 38, i32* %3, align 4, !dbg !4049, !psr.id !4050
  ret i32 -1, !dbg !4051, !psr.id !4052
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* %1) #0 !dbg !4053 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4057, metadata !DIExpression()), !dbg !4058, !psr.id !4059
  call void @llvm.dbg.value(metadata i32 (i8*, i64)* %1, metadata !4060, metadata !DIExpression()), !dbg !4058, !psr.id !4061
  %3 = call i32* @__errno_location() #9, !dbg !4062, !psr.id !4063
  store i32 38, i32* %3, align 4, !dbg !4064, !psr.id !4065
  ret i32 -1, !dbg !4066, !psr.id !4067
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* %0) #0 !dbg !4068 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4069, metadata !DIExpression()), !dbg !4070, !psr.id !4071
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readonly), !dbg !4072, !psr.id !4073
  ret i32 %2, !dbg !4074, !psr.id !4075
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readonly(i8* %0, i64 %1) #0 !dbg !4076 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4077, metadata !DIExpression()), !dbg !4078, !psr.id !4079
  call void @llvm.dbg.value(metadata i64 %1, metadata !4080, metadata !DIExpression()), !dbg !4078, !psr.id !4081
  %3 = call i32* @__errno_location() #9, !dbg !4082, !psr.id !4083
  store i32 38, i32* %3, align 4, !dbg !4084, !psr.id !4085
  ret i32 -1, !dbg !4086, !psr.id !4087
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* %0) #0 !dbg !4088 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4089, metadata !DIExpression()), !dbg !4090, !psr.id !4091
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readwrite), !dbg !4092, !psr.id !4093
  ret i32 %2, !dbg !4094, !psr.id !4095
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readwrite(i8* %0, i64 %1) #0 !dbg !4096 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4097, metadata !DIExpression()), !dbg !4098, !psr.id !4099
  call void @llvm.dbg.value(metadata i64 %1, metadata !4100, metadata !DIExpression()), !dbg !4098, !psr.id !4101
  %3 = call i32* @__errno_location() #9, !dbg !4102, !psr.id !4103
  store i32 38, i32* %3, align 4, !dbg !4104, !psr.id !4105
  ret i32 -1, !dbg !4106, !psr.id !4107
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @crypto_stream_chacha20_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!130, !2, !59, !132, !106, !121}
!llvm.ident = !{!134, !134, !134, !134, !134, !134}
!llvm.module.flags = !{!135, !136, !137}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "implementation", scope: !2, file: !3, line: 16, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/randombytes.c", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
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
!19 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/randombytes.h", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
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
!60 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
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
!105 = distinct !DIGlobalVariable(name: "sigma", scope: !106, file: !107, line: 60, type: !114, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !108, globals: !113, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../libsodium/src/libsodium/crypto_stream/chacha20/ref/stream_chacha20_ref.c", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
!108 = !{!109, !110, !6, !11}
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !107, line: 22, baseType: !7)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !107, line: 21, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 38, baseType: !67)
!113 = !{!104}
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 128, elements: !116)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!116 = !{!117}
!117 = !DISubrange(count: 16)
!118 = !{!"17"}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "canary", scope: !121, file: !122, line: 46, type: !128, isLocal: true, isDefinition: true)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !123, globals: !127, splitDebugInlining: false, nameTableKind: None)
!122 = !DIFile(filename: "../libsodium/src/libsodium/sodium/utils.c", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
!123 = !{!124, !12, !126, !67, !52, !28, !6}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!127 = !{!119}
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 128, elements: !116)
!129 = !{!"18"}
!130 = distinct !DICompileUnit(language: DW_LANG_C99, file: !131, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!131 = !DIFile(filename: "crypto_stream_chacha20.c", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!133 = !DIFile(filename: "../libsodium/src/libsodium/crypto_stream/chacha20/stream_chacha20_api.c", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
!134 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!135 = !{i32 7, !"Dwarf Version", i32 4}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{i32 1, !"wchar_size", i32 4}
!138 = distinct !DISubprogram(name: "crypto_stream_chacha20_wrapper", scope: !131, file: !131, line: 5, type: !139, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !130, retainedNodes: !4)
!139 = !DISubroutineType(types: !140)
!140 = !{!52, !66, !141, !126, !126}
!141 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!142 = !DILocalVariable(name: "c", arg: 1, scope: !138, file: !131, line: 5, type: !66)
!143 = !DILocation(line: 0, scope: !138)
!144 = !{!"19"}
!145 = !DILocalVariable(name: "clen", arg: 2, scope: !138, file: !131, line: 5, type: !141)
!146 = !{!"20"}
!147 = !DILocalVariable(name: "n", arg: 3, scope: !138, file: !131, line: 6, type: !126)
!148 = !{!"21"}
!149 = !DILocalVariable(name: "k", arg: 4, scope: !138, file: !131, line: 6, type: !126)
!150 = !{!"22"}
!151 = !DILocation(line: 7, column: 13, scope: !138)
!152 = !{!"23"}
!153 = !DILocation(line: 7, column: 3, scope: !138)
!154 = !{!"24"}
!155 = !DILocation(line: 8, column: 13, scope: !138)
!156 = !{!"25"}
!157 = !DILocation(line: 8, column: 3, scope: !138)
!158 = !{!"26"}
!159 = !DILocation(line: 9, column: 13, scope: !138)
!160 = !{!"27"}
!161 = !DILocation(line: 9, column: 3, scope: !138)
!162 = !{!"28"}
!163 = !DILocation(line: 10, column: 13, scope: !138)
!164 = !{!"29"}
!165 = !DILocation(line: 10, column: 3, scope: !138)
!166 = !{!"30"}
!167 = !DILocation(line: 12, column: 13, scope: !138)
!168 = !{!"31"}
!169 = !DILocation(line: 12, column: 3, scope: !138)
!170 = !{!"32"}
!171 = !DILocation(line: 14, column: 10, scope: !138)
!172 = !{!"33"}
!173 = !DILocation(line: 14, column: 3, scope: !138)
!174 = !{!"34"}
!175 = distinct !DISubprogram(name: "crypto_stream_chacha20_wrapper_t", scope: !131, file: !131, line: 22, type: !35, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !130, retainedNodes: !4)
!176 = !{!"35"}
!177 = !{!"36"}
!178 = !{!"37"}
!179 = !DILocalVariable(name: "dout", scope: !175, file: !131, line: 24, type: !67)
!180 = !DILocation(line: 24, column: 17, scope: !175)
!181 = !{!"38"}
!182 = !DILocation(line: 24, column: 24, scope: !175)
!183 = !{!"39"}
!184 = !{!"40"}
!185 = !DILocalVariable(name: "din", scope: !175, file: !131, line: 25, type: !115)
!186 = !DILocation(line: 25, column: 24, scope: !175)
!187 = !{!"41"}
!188 = !DILocation(line: 25, column: 30, scope: !175)
!189 = !{!"42"}
!190 = !{!"43"}
!191 = !DILocalVariable(name: "dk", scope: !175, file: !131, line: 26, type: !115)
!192 = !DILocation(line: 26, column: 21, scope: !175)
!193 = !{!"44"}
!194 = !DILocation(line: 26, column: 26, scope: !175)
!195 = !{!"45"}
!196 = !{!"46"}
!197 = !DILocation(line: 27, column: 27, scope: !175)
!198 = !{!"47"}
!199 = !DILocalVariable(name: "dc", scope: !175, file: !131, line: 27, type: !115)
!200 = !DILocation(line: 0, scope: !175)
!201 = !{!"48"}
!202 = !DILocalVariable(name: "c", scope: !175, file: !131, line: 28, type: !66)
!203 = !{!"49"}
!204 = !DILocalVariable(name: "n", scope: !175, file: !131, line: 29, type: !126)
!205 = !{!"50"}
!206 = !DILocalVariable(name: "k", scope: !175, file: !131, line: 30, type: !126)
!207 = !{!"51"}
!208 = !DILocation(line: 31, column: 27, scope: !175)
!209 = !{!"52"}
!210 = !DILocalVariable(name: "clen", scope: !175, file: !131, line: 31, type: !141)
!211 = !{!"53"}
!212 = !DILocation(line: 32, column: 3, scope: !175)
!213 = !{!"54"}
!214 = !DILocation(line: 33, column: 1, scope: !175)
!215 = !{!"55"}
!216 = distinct !DISubprogram(name: "randombytes_set_implementation", scope: !3, file: !3, line: 23, type: !217, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!217 = !DISubroutineType(types: !218)
!218 = !{!52, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!220 = !DILocalVariable(name: "impl", arg: 1, scope: !216, file: !3, line: 23, type: !219)
!221 = !DILocation(line: 0, scope: !216)
!222 = !{!"56"}
!223 = !DILocation(line: 25, column: 20, scope: !216)
!224 = !{!"57"}
!225 = !DILocation(line: 27, column: 5, scope: !216)
!226 = !{!"58"}
!227 = distinct !DISubprogram(name: "randombytes_implementation_name", scope: !3, file: !3, line: 31, type: !24, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!228 = !DILocation(line: 34, column: 12, scope: !227)
!229 = !{!"59"}
!230 = !DILocation(line: 34, column: 28, scope: !227)
!231 = !{!"60"}
!232 = !{!"61"}
!233 = !{!"62"}
!234 = !DILocation(line: 34, column: 5, scope: !227)
!235 = !{!"63"}
!236 = distinct !DISubprogram(name: "randombytes_random", scope: !3, file: !3, line: 41, type: !31, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!237 = !DILocation(line: 44, column: 12, scope: !236)
!238 = !{!"64"}
!239 = !DILocation(line: 44, column: 28, scope: !236)
!240 = !{!"65"}
!241 = !{!"66"}
!242 = !{!"67"}
!243 = !DILocation(line: 44, column: 5, scope: !236)
!244 = !{!"68"}
!245 = distinct !DISubprogram(name: "randombytes_stir", scope: !3, file: !3, line: 53, type: !35, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!246 = !DILocation(line: 56, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !245, file: !3, line: 56, column: 9)
!248 = !{!"69"}
!249 = !DILocation(line: 56, column: 24, scope: !247)
!250 = !{!"70"}
!251 = !DILocation(line: 56, column: 32, scope: !247)
!252 = !{!"71"}
!253 = !DILocation(line: 56, column: 35, scope: !247)
!254 = !{!"72"}
!255 = !DILocation(line: 56, column: 51, scope: !247)
!256 = !{!"73"}
!257 = !{!"74"}
!258 = !DILocation(line: 56, column: 56, scope: !247)
!259 = !{!"75"}
!260 = !DILocation(line: 56, column: 9, scope: !245)
!261 = !{!"76"}
!262 = !DILocation(line: 57, column: 9, scope: !263)
!263 = distinct !DILexicalBlock(scope: !247, file: !3, line: 56, column: 65)
!264 = !{!"77"}
!265 = !DILocation(line: 57, column: 25, scope: !263)
!266 = !{!"78"}
!267 = !{!"79"}
!268 = !{!"80"}
!269 = !DILocation(line: 58, column: 5, scope: !263)
!270 = !{!"81"}
!271 = !DILocation(line: 87, column: 1, scope: !245)
!272 = !{!"82"}
!273 = distinct !DISubprogram(name: "randombytes_uniform", scope: !3, file: !3, line: 94, type: !39, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!274 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !273, file: !3, line: 94, type: !41)
!275 = !DILocation(line: 0, scope: !273)
!276 = !{!"83"}
!277 = !DILocation(line: 99, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !3, line: 99, column: 9)
!279 = !{!"84"}
!280 = !DILocation(line: 99, column: 24, scope: !278)
!281 = !{!"85"}
!282 = !DILocation(line: 99, column: 32, scope: !278)
!283 = !{!"86"}
!284 = !DILocation(line: 99, column: 35, scope: !278)
!285 = !{!"87"}
!286 = !DILocation(line: 99, column: 51, scope: !278)
!287 = !{!"88"}
!288 = !{!"89"}
!289 = !DILocation(line: 99, column: 59, scope: !278)
!290 = !{!"90"}
!291 = !DILocation(line: 99, column: 9, scope: !273)
!292 = !{!"91"}
!293 = !DILocation(line: 100, column: 16, scope: !294)
!294 = distinct !DILexicalBlock(scope: !278, file: !3, line: 99, column: 68)
!295 = !{!"92"}
!296 = !DILocation(line: 100, column: 32, scope: !294)
!297 = !{!"93"}
!298 = !{!"94"}
!299 = !{!"95"}
!300 = !DILocation(line: 100, column: 9, scope: !294)
!301 = !{!"96"}
!302 = !DILocation(line: 102, column: 21, scope: !303)
!303 = distinct !DILexicalBlock(scope: !273, file: !3, line: 102, column: 9)
!304 = !{!"97"}
!305 = !DILocation(line: 102, column: 9, scope: !273)
!306 = !{!"98"}
!307 = !DILocation(line: 103, column: 9, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !3, line: 102, column: 26)
!309 = !{!"99"}
!310 = !DILocation(line: 105, column: 23, scope: !273)
!311 = !{!"100"}
!312 = !DILocation(line: 105, column: 36, scope: !273)
!313 = !{!"101"}
!314 = !DILocalVariable(name: "min", scope: !273, file: !3, line: 96, type: !7)
!315 = !{!"102"}
!316 = !DILocation(line: 106, column: 5, scope: !273)
!317 = !{!"103"}
!318 = !DILocation(line: 107, column: 13, scope: !319)
!319 = distinct !DILexicalBlock(scope: !273, file: !3, line: 106, column: 8)
!320 = !{!"104"}
!321 = !DILocalVariable(name: "r", scope: !273, file: !3, line: 97, type: !7)
!322 = !{!"105"}
!323 = !DILocation(line: 108, column: 5, scope: !319)
!324 = !{!"106"}
!325 = !DILocation(line: 108, column: 16, scope: !273)
!326 = !{!"107"}
!327 = distinct !{!327, !316, !328, !329}
!328 = !DILocation(line: 108, column: 21, scope: !273)
!329 = !{!"llvm.loop.mustprogress"}
!330 = !{!"108"}
!331 = !DILocation(line: 110, column: 14, scope: !273)
!332 = !{!"109"}
!333 = !DILocation(line: 110, column: 5, scope: !273)
!334 = !{!"110"}
!335 = !{!"111"}
!336 = !DILocation(line: 111, column: 1, scope: !273)
!337 = !{!"112"}
!338 = distinct !DISubprogram(name: "randombytes_buf", scope: !3, file: !3, line: 114, type: !44, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!339 = !DILocalVariable(name: "buf", arg: 1, scope: !338, file: !3, line: 114, type: !46)
!340 = !DILocation(line: 0, scope: !338)
!341 = !{!"113"}
!342 = !DILocalVariable(name: "size", arg: 2, scope: !338, file: !3, line: 114, type: !47)
!343 = !{!"114"}
!344 = !DILocation(line: 117, column: 14, scope: !345)
!345 = distinct !DILexicalBlock(scope: !338, file: !3, line: 117, column: 9)
!346 = !{!"115"}
!347 = !DILocation(line: 117, column: 9, scope: !338)
!348 = !{!"116"}
!349 = !DILocation(line: 118, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !3, line: 117, column: 29)
!351 = !{!"117"}
!352 = !DILocation(line: 118, column: 25, scope: !350)
!353 = !{!"118"}
!354 = !{!"119"}
!355 = !{!"120"}
!356 = !DILocation(line: 119, column: 5, scope: !350)
!357 = !{!"121"}
!358 = !DILocation(line: 128, column: 1, scope: !338)
!359 = !{!"122"}
!360 = distinct !DISubprogram(name: "randombytes_close", scope: !3, file: !3, line: 131, type: !50, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!361 = !DILocation(line: 133, column: 9, scope: !362)
!362 = distinct !DILexicalBlock(scope: !360, file: !3, line: 133, column: 9)
!363 = !{!"123"}
!364 = !DILocation(line: 133, column: 24, scope: !362)
!365 = !{!"124"}
!366 = !DILocation(line: 133, column: 32, scope: !362)
!367 = !{!"125"}
!368 = !DILocation(line: 133, column: 35, scope: !362)
!369 = !{!"126"}
!370 = !DILocation(line: 133, column: 51, scope: !362)
!371 = !{!"127"}
!372 = !{!"128"}
!373 = !DILocation(line: 133, column: 57, scope: !362)
!374 = !{!"129"}
!375 = !DILocation(line: 133, column: 9, scope: !360)
!376 = !{!"130"}
!377 = !DILocation(line: 134, column: 16, scope: !378)
!378 = distinct !DILexicalBlock(scope: !362, file: !3, line: 133, column: 66)
!379 = !{!"131"}
!380 = !DILocation(line: 134, column: 32, scope: !378)
!381 = !{!"132"}
!382 = !{!"133"}
!383 = !{!"134"}
!384 = !DILocation(line: 134, column: 9, scope: !378)
!385 = !{!"135"}
!386 = !DILocation(line: 136, column: 5, scope: !360)
!387 = !{!"136"}
!388 = !DILocation(line: 0, scope: !360)
!389 = !{!"137"}
!390 = !DILocation(line: 137, column: 1, scope: !360)
!391 = !{!"138"}
!392 = distinct !DISubprogram(name: "randombytes", scope: !3, file: !3, line: 140, type: !393, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !395, !396}
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!397 = !DILocalVariable(name: "buf", arg: 1, scope: !392, file: !3, line: 140, type: !395)
!398 = !DILocation(line: 0, scope: !392)
!399 = !{!"139"}
!400 = !DILocalVariable(name: "buf_len", arg: 2, scope: !392, file: !3, line: 140, type: !396)
!401 = !{!"140"}
!402 = !DILocation(line: 142, column: 5, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !3, line: 142, column: 5)
!404 = distinct !DILexicalBlock(scope: !392, file: !3, line: 142, column: 5)
!405 = !{!"141"}
!406 = !DILocation(line: 142, column: 5, scope: !404)
!407 = !{!"142"}
!408 = !{!"143"}
!409 = !{!"144"}
!410 = !{!"145"}
!411 = !{!"146"}
!412 = !{!"147"}
!413 = !{!"148"}
!414 = !DILocation(line: 143, column: 5, scope: !392)
!415 = !{!"149"}
!416 = !DILocation(line: 144, column: 1, scope: !392)
!417 = !{!"150"}
!418 = distinct !DISubprogram(name: "randombytes_sysrandom_implementation_name", scope: !60, file: !60, line: 292, type: !24, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!419 = !{!"151"}
!420 = !DILocation(line: 294, column: 5, scope: !418)
!421 = !{!"152"}
!422 = distinct !DISubprogram(name: "randombytes_sysrandom", scope: !60, file: !60, line: 249, type: !31, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!423 = !{!"153"}
!424 = !DILocalVariable(name: "r", scope: !422, file: !60, line: 251, type: !7)
!425 = !DILocation(line: 251, column: 14, scope: !422)
!426 = !{!"154"}
!427 = !DILocation(line: 253, column: 31, scope: !422)
!428 = !{!"155"}
!429 = !DILocation(line: 253, column: 5, scope: !422)
!430 = !{!"156"}
!431 = !DILocation(line: 255, column: 12, scope: !422)
!432 = !{!"157"}
!433 = !DILocation(line: 255, column: 5, scope: !422)
!434 = !{!"158"}
!435 = distinct !DISubprogram(name: "randombytes_sysrandom_stir", scope: !60, file: !60, line: 206, type: !35, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!436 = !{!"159"}
!437 = !DILocation(line: 208, column: 16, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !60, line: 208, column: 9)
!439 = !{!"160"}
!440 = !DILocation(line: 208, column: 28, scope: !438)
!441 = !{!"161"}
!442 = !DILocation(line: 208, column: 9, scope: !435)
!443 = !{!"162"}
!444 = !DILocation(line: 209, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !438, file: !60, line: 208, column: 34)
!446 = !{!"163"}
!447 = !{!"164"}
!448 = !DILocation(line: 210, column: 28, scope: !445)
!449 = !{!"165"}
!450 = !DILocation(line: 211, column: 5, scope: !445)
!451 = !{!"166"}
!452 = !DILocation(line: 212, column: 1, scope: !435)
!453 = !{!"167"}
!454 = distinct !DISubprogram(name: "randombytes_sysrandom_buf", scope: !60, file: !60, line: 259, type: !44, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!455 = !DILocalVariable(name: "buf", arg: 1, scope: !454, file: !60, line: 259, type: !46)
!456 = !DILocation(line: 0, scope: !454)
!457 = !{!"168"}
!458 = !DILocalVariable(name: "size", arg: 2, scope: !454, file: !60, line: 259, type: !47)
!459 = !{!"169"}
!460 = !DILocation(line: 261, column: 5, scope: !454)
!461 = !{!"170"}
!462 = !{!"171"}
!463 = !DILocation(line: 268, column: 16, scope: !464)
!464 = distinct !DILexicalBlock(scope: !454, file: !60, line: 268, column: 9)
!465 = !{!"172"}
!466 = !DILocation(line: 268, column: 36, scope: !464)
!467 = !{!"173"}
!468 = !DILocation(line: 268, column: 9, scope: !454)
!469 = !{!"174"}
!470 = !DILocation(line: 269, column: 13, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !60, line: 269, column: 13)
!472 = distinct !DILexicalBlock(scope: !464, file: !60, line: 268, column: 42)
!473 = !{!"175"}
!474 = !DILocation(line: 269, column: 52, scope: !471)
!475 = !{!"176"}
!476 = !DILocation(line: 269, column: 13, scope: !472)
!477 = !{!"177"}
!478 = !DILocation(line: 270, column: 13, scope: !479)
!479 = distinct !DILexicalBlock(scope: !471, file: !60, line: 269, column: 58)
!480 = !{!"178"}
!481 = !{!"179"}
!482 = !DILocation(line: 272, column: 9, scope: !472)
!483 = !{!"180"}
!484 = !{!"181"}
!485 = !DILocation(line: 275, column: 16, scope: !486)
!486 = distinct !DILexicalBlock(scope: !454, file: !60, line: 275, column: 9)
!487 = !{!"182"}
!488 = !DILocation(line: 275, column: 38, scope: !486)
!489 = !{!"183"}
!490 = !DILocation(line: 275, column: 44, scope: !486)
!491 = !{!"184"}
!492 = !{!"185"}
!493 = !DILocation(line: 276, column: 26, scope: !486)
!494 = !{!"186"}
!495 = !DILocation(line: 276, column: 9, scope: !486)
!496 = !{!"187"}
!497 = !DILocation(line: 276, column: 60, scope: !486)
!498 = !{!"188"}
!499 = !DILocation(line: 275, column: 9, scope: !454)
!500 = !{!"189"}
!501 = !DILocation(line: 277, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !486, file: !60, line: 276, column: 79)
!503 = !{!"190"}
!504 = !{!"191"}
!505 = !DILocation(line: 287, column: 1, scope: !454)
!506 = !{!"192"}
!507 = !{!"193"}
!508 = distinct !DISubprogram(name: "randombytes_sysrandom_close", scope: !60, file: !60, line: 223, type: !50, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!509 = !DILocalVariable(name: "ret", scope: !508, file: !60, line: 225, type: !52)
!510 = !DILocation(line: 0, scope: !508)
!511 = !{!"194"}
!512 = !{!"195"}
!513 = !DILocation(line: 228, column: 16, scope: !514)
!514 = distinct !DILexicalBlock(scope: !508, file: !60, line: 228, column: 9)
!515 = !{!"196"}
!516 = !DILocation(line: 228, column: 38, scope: !514)
!517 = !{!"197"}
!518 = !DILocation(line: 228, column: 44, scope: !514)
!519 = !{!"198"}
!520 = !{!"199"}
!521 = !DILocation(line: 229, column: 22, scope: !514)
!522 = !{!"200"}
!523 = !DILocation(line: 229, column: 9, scope: !514)
!524 = !{!"201"}
!525 = !DILocation(line: 229, column: 45, scope: !514)
!526 = !{!"202"}
!527 = !DILocation(line: 228, column: 9, scope: !508)
!528 = !{!"203"}
!529 = !{!"204"}
!530 = !DILocation(line: 230, column: 38, scope: !531)
!531 = distinct !DILexicalBlock(scope: !514, file: !60, line: 229, column: 51)
!532 = !{!"205"}
!533 = !{!"206"}
!534 = !DILocation(line: 231, column: 28, scope: !531)
!535 = !{!"207"}
!536 = !{!"208"}
!537 = !DILocation(line: 233, column: 5, scope: !531)
!538 = !{!"209"}
!539 = !{!"210"}
!540 = !{!"211"}
!541 = !{!"212"}
!542 = !DILocation(line: 235, column: 16, scope: !543)
!543 = distinct !DILexicalBlock(scope: !508, file: !60, line: 235, column: 9)
!544 = !{!"213"}
!545 = !DILocation(line: 235, column: 36, scope: !543)
!546 = !{!"214"}
!547 = !DILocation(line: 235, column: 9, scope: !508)
!548 = !{!"215"}
!549 = !{!"216"}
!550 = !DILocation(line: 237, column: 5, scope: !551)
!551 = distinct !DILexicalBlock(scope: !543, file: !60, line: 235, column: 42)
!552 = !{!"217"}
!553 = !{!"218"}
!554 = !{!"219"}
!555 = !DILocation(line: 245, column: 5, scope: !508)
!556 = !{!"220"}
!557 = distinct !DISubprogram(name: "randombytes_sysrandom_stir_if_needed", scope: !60, file: !60, line: 215, type: !35, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!558 = !{!"221"}
!559 = !DILocation(line: 217, column: 16, scope: !560)
!560 = distinct !DILexicalBlock(scope: !557, file: !60, line: 217, column: 9)
!561 = !{!"222"}
!562 = !DILocation(line: 217, column: 28, scope: !560)
!563 = !{!"223"}
!564 = !DILocation(line: 217, column: 9, scope: !557)
!565 = !{!"224"}
!566 = !DILocation(line: 218, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !560, file: !60, line: 217, column: 34)
!568 = !{!"225"}
!569 = !DILocation(line: 219, column: 5, scope: !567)
!570 = !{!"226"}
!571 = !DILocation(line: 220, column: 1, scope: !557)
!572 = !{!"227"}
!573 = distinct !DISubprogram(name: "randombytes_linux_getrandom", scope: !60, file: !60, line: 151, type: !574, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!574 = !DISubroutineType(types: !575)
!575 = !{!52, !46, !12}
!576 = !DILocalVariable(name: "buf_", arg: 1, scope: !573, file: !60, line: 151, type: !46)
!577 = !DILocation(line: 0, scope: !573)
!578 = !{!"228"}
!579 = !DILocalVariable(name: "size", arg: 2, scope: !573, file: !60, line: 151, type: !12)
!580 = !{!"229"}
!581 = !DILocalVariable(name: "buf", scope: !573, file: !60, line: 153, type: !66)
!582 = !{!"230"}
!583 = !DILocalVariable(name: "chunk_size", scope: !573, file: !60, line: 154, type: !12)
!584 = !{!"231"}
!585 = !DILocation(line: 156, column: 5, scope: !573)
!586 = !{!"232"}
!587 = !{!"233"}
!588 = !{!"234"}
!589 = !{!"235"}
!590 = !{!"236"}
!591 = !{!"237"}
!592 = !{!"238"}
!593 = !DILocation(line: 157, column: 18, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !60, line: 157, column: 13)
!595 = distinct !DILexicalBlock(scope: !573, file: !60, line: 156, column: 8)
!596 = !{!"239"}
!597 = !DILocation(line: 157, column: 13, scope: !595)
!598 = !{!"240"}
!599 = !{!"241"}
!600 = !DILocation(line: 159, column: 13, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !60, line: 159, column: 13)
!602 = distinct !DILexicalBlock(scope: !603, file: !60, line: 159, column: 13)
!603 = distinct !DILexicalBlock(scope: !594, file: !60, line: 157, column: 32)
!604 = !{!"242"}
!605 = !DILocation(line: 159, column: 13, scope: !602)
!606 = !{!"243"}
!607 = !{!"244"}
!608 = !{!"245"}
!609 = !{!"246"}
!610 = !{!"247"}
!611 = !{!"248"}
!612 = !{!"249"}
!613 = !DILocation(line: 160, column: 9, scope: !603)
!614 = !{!"250"}
!615 = !{!"251"}
!616 = !{!"252"}
!617 = !DILocation(line: 161, column: 13, scope: !618)
!618 = distinct !DILexicalBlock(scope: !595, file: !60, line: 161, column: 13)
!619 = !{!"253"}
!620 = !DILocation(line: 161, column: 59, scope: !618)
!621 = !{!"254"}
!622 = !DILocation(line: 161, column: 13, scope: !595)
!623 = !{!"255"}
!624 = !DILocation(line: 162, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !618, file: !60, line: 161, column: 65)
!626 = !{!"256"}
!627 = !DILocation(line: 164, column: 14, scope: !595)
!628 = !{!"257"}
!629 = !{!"258"}
!630 = !DILocation(line: 165, column: 13, scope: !595)
!631 = !{!"259"}
!632 = !{!"260"}
!633 = !DILocation(line: 166, column: 5, scope: !595)
!634 = !{!"261"}
!635 = !DILocation(line: 166, column: 19, scope: !573)
!636 = !{!"262"}
!637 = distinct !{!637, !585, !638, !329}
!638 = !DILocation(line: 166, column: 32, scope: !573)
!639 = !{!"263"}
!640 = !DILocation(line: 168, column: 5, scope: !573)
!641 = !{!"264"}
!642 = !{!"265"}
!643 = !DILocation(line: 169, column: 1, scope: !573)
!644 = !{!"266"}
!645 = distinct !DISubprogram(name: "safe_read", scope: !60, file: !60, line: 77, type: !646, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!646 = !DISubroutineType(types: !647)
!647 = !{!62, !648, !46, !12}
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!649 = !DILocalVariable(name: "fd", arg: 1, scope: !645, file: !60, line: 77, type: !648)
!650 = !DILocation(line: 0, scope: !645)
!651 = !{!"267"}
!652 = !DILocalVariable(name: "buf_", arg: 2, scope: !645, file: !60, line: 77, type: !46)
!653 = !{!"268"}
!654 = !DILocalVariable(name: "size", arg: 3, scope: !645, file: !60, line: 77, type: !12)
!655 = !{!"269"}
!656 = !DILocalVariable(name: "buf", scope: !645, file: !60, line: 79, type: !66)
!657 = !{!"270"}
!658 = !DILocation(line: 82, column: 5, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !60, line: 82, column: 5)
!660 = distinct !DILexicalBlock(scope: !645, file: !60, line: 82, column: 5)
!661 = !{!"271"}
!662 = !DILocation(line: 82, column: 5, scope: !660)
!663 = !{!"272"}
!664 = !{!"273"}
!665 = !{!"274"}
!666 = !{!"275"}
!667 = !{!"276"}
!668 = !{!"277"}
!669 = !{!"278"}
!670 = !DILocation(line: 83, column: 5, scope: !645)
!671 = !{!"279"}
!672 = !{!"280"}
!673 = !{!"281"}
!674 = !{!"282"}
!675 = !{!"283"}
!676 = !DILocation(line: 84, column: 9, scope: !677)
!677 = distinct !DILexicalBlock(scope: !645, file: !60, line: 83, column: 8)
!678 = !{!"284"}
!679 = !DILocation(line: 84, column: 26, scope: !677)
!680 = !{!"285"}
!681 = !DILocalVariable(name: "readnb", scope: !645, file: !60, line: 80, type: !62)
!682 = !{!"286"}
!683 = !DILocation(line: 84, column: 47, scope: !677)
!684 = !{!"287"}
!685 = !DILocation(line: 84, column: 61, scope: !677)
!686 = !{!"288"}
!687 = !DILocation(line: 85, column: 17, scope: !677)
!688 = !{!"289"}
!689 = !{!"290"}
!690 = !DILocation(line: 85, column: 23, scope: !677)
!691 = !{!"291"}
!692 = !DILocation(line: 85, column: 32, scope: !677)
!693 = !{!"292"}
!694 = !DILocation(line: 85, column: 35, scope: !677)
!695 = !{!"293"}
!696 = !{!"294"}
!697 = !DILocation(line: 85, column: 41, scope: !677)
!698 = !{!"295"}
!699 = !{!"296"}
!700 = !{!"297"}
!701 = !{!"298"}
!702 = !DILocation(line: 0, scope: !677)
!703 = !{!"299"}
!704 = !{!"300"}
!705 = distinct !{!705, !676, !706, !329}
!706 = !DILocation(line: 85, column: 52, scope: !677)
!707 = !{!"301"}
!708 = !DILocation(line: 86, column: 20, scope: !709)
!709 = distinct !DILexicalBlock(scope: !677, file: !60, line: 86, column: 13)
!710 = !{!"302"}
!711 = !DILocation(line: 86, column: 13, scope: !677)
!712 = !{!"303"}
!713 = !DILocation(line: 87, column: 13, scope: !714)
!714 = distinct !DILexicalBlock(scope: !709, file: !60, line: 86, column: 35)
!715 = !{!"304"}
!716 = !DILocation(line: 89, column: 20, scope: !717)
!717 = distinct !DILexicalBlock(scope: !677, file: !60, line: 89, column: 13)
!718 = !{!"305"}
!719 = !DILocation(line: 89, column: 13, scope: !677)
!720 = !{!"306"}
!721 = !DILocation(line: 90, column: 13, scope: !722)
!722 = distinct !DILexicalBlock(scope: !717, file: !60, line: 89, column: 36)
!723 = !{!"307"}
!724 = !DILocation(line: 92, column: 14, scope: !677)
!725 = !{!"308"}
!726 = !{!"309"}
!727 = !DILocation(line: 93, column: 13, scope: !677)
!728 = !{!"310"}
!729 = !{!"311"}
!730 = !DILocation(line: 94, column: 5, scope: !677)
!731 = !{!"312"}
!732 = !DILocation(line: 94, column: 19, scope: !645)
!733 = !{!"313"}
!734 = distinct !{!734, !670, !735, !329}
!735 = !DILocation(line: 94, column: 32, scope: !645)
!736 = !{!"314"}
!737 = !{!"315"}
!738 = !{!"316"}
!739 = !DILocation(line: 96, column: 27, scope: !645)
!740 = !{!"317"}
!741 = !{!"318"}
!742 = !{!"319"}
!743 = !DILocation(line: 96, column: 5, scope: !645)
!744 = !{!"320"}
!745 = !{!"321"}
!746 = !DILocation(line: 97, column: 1, scope: !645)
!747 = !{!"322"}
!748 = distinct !DISubprogram(name: "_randombytes_linux_getrandom", scope: !60, file: !60, line: 138, type: !749, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!749 = !DISubroutineType(types: !750)
!750 = !{!52, !46, !47}
!751 = !DILocalVariable(name: "buf", arg: 1, scope: !748, file: !60, line: 138, type: !46)
!752 = !DILocation(line: 0, scope: !748)
!753 = !{!"323"}
!754 = !DILocalVariable(name: "size", arg: 2, scope: !748, file: !60, line: 138, type: !47)
!755 = !{!"324"}
!756 = !DILocation(line: 142, column: 5, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !60, line: 142, column: 5)
!758 = distinct !DILexicalBlock(scope: !748, file: !60, line: 142, column: 5)
!759 = !{!"325"}
!760 = !DILocation(line: 142, column: 5, scope: !758)
!761 = !{!"326"}
!762 = !{!"327"}
!763 = !{!"328"}
!764 = !{!"329"}
!765 = !{!"330"}
!766 = !{!"331"}
!767 = !{!"332"}
!768 = !DILocation(line: 143, column: 5, scope: !748)
!769 = !{!"333"}
!770 = !DILocation(line: 144, column: 46, scope: !771)
!771 = distinct !DILexicalBlock(scope: !748, file: !60, line: 143, column: 8)
!772 = !{!"334"}
!773 = !DILocation(line: 144, column: 18, scope: !771)
!774 = !{!"335"}
!775 = !{!"336"}
!776 = !DILocalVariable(name: "readnb", scope: !748, file: !60, line: 140, type: !52)
!777 = !{!"337"}
!778 = !DILocation(line: 145, column: 5, scope: !771)
!779 = !{!"338"}
!780 = !DILocation(line: 145, column: 21, scope: !748)
!781 = !{!"339"}
!782 = !DILocation(line: 145, column: 25, scope: !748)
!783 = !{!"340"}
!784 = !DILocation(line: 145, column: 29, scope: !748)
!785 = !{!"341"}
!786 = !{!"342"}
!787 = !DILocation(line: 145, column: 35, scope: !748)
!788 = !{!"343"}
!789 = !DILocation(line: 145, column: 44, scope: !748)
!790 = !{!"344"}
!791 = !DILocation(line: 145, column: 47, scope: !748)
!792 = !{!"345"}
!793 = !{!"346"}
!794 = !DILocation(line: 145, column: 53, scope: !748)
!795 = !{!"347"}
!796 = !{!"348"}
!797 = !{!"349"}
!798 = !{!"350"}
!799 = !{!"351"}
!800 = distinct !{!800, !768, !801, !329}
!801 = !DILocation(line: 145, column: 63, scope: !748)
!802 = !{!"352"}
!803 = !DILocation(line: 147, column: 23, scope: !748)
!804 = !{!"353"}
!805 = !DILocation(line: 147, column: 20, scope: !748)
!806 = !{!"354"}
!807 = !{!"355"}
!808 = !DILocation(line: 147, column: 35, scope: !748)
!809 = !{!"356"}
!810 = !DILocation(line: 147, column: 5, scope: !748)
!811 = !{!"357"}
!812 = distinct !DISubprogram(name: "randombytes_sysrandom_init", scope: !60, file: !60, line: 173, type: !35, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!813 = !{!"358"}
!814 = !DILocation(line: 175, column: 32, scope: !812)
!815 = !{!"359"}
!816 = !{!"360"}
!817 = !DILocalVariable(name: "errno_save", scope: !812, file: !60, line: 175, type: !648)
!818 = !DILocation(line: 0, scope: !812)
!819 = !{!"361"}
!820 = !DILocalVariable(name: "fodder", scope: !821, file: !60, line: 179, type: !128)
!821 = distinct !DILexicalBlock(scope: !812, file: !60, line: 178, column: 5)
!822 = !DILocation(line: 179, column: 16, scope: !821)
!823 = !{!"362"}
!824 = !DILocation(line: 181, column: 34, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !60, line: 181, column: 6)
!826 = !{!"363"}
!827 = !DILocation(line: 181, column: 6, scope: !825)
!828 = !{!"364"}
!829 = !DILocation(line: 181, column: 57, scope: !825)
!830 = !{!"365"}
!831 = !DILocation(line: 181, column: 6, scope: !821)
!832 = !{!"366"}
!833 = !{!"367"}
!834 = !DILocation(line: 182, column: 33, scope: !835)
!835 = distinct !DILexicalBlock(scope: !825, file: !60, line: 181, column: 63)
!836 = !{!"368"}
!837 = !DILocation(line: 183, column: 6, scope: !835)
!838 = !{!"369"}
!839 = !DILocation(line: 183, column: 12, scope: !835)
!840 = !{!"370"}
!841 = !DILocation(line: 184, column: 6, scope: !835)
!842 = !{!"371"}
!843 = !{!"372"}
!844 = !DILocation(line: 186, column: 29, scope: !821)
!845 = !{!"373"}
!846 = !DILocation(line: 191, column: 10, scope: !847)
!847 = distinct !DILexicalBlock(scope: !812, file: !60, line: 190, column: 9)
!848 = !{!"374"}
!849 = !{!"375"}
!850 = !DILocation(line: 190, column: 39, scope: !847)
!851 = !{!"376"}
!852 = !DILocation(line: 191, column: 51, scope: !847)
!853 = !{!"377"}
!854 = !DILocation(line: 190, column: 9, scope: !812)
!855 = !{!"378"}
!856 = !DILocation(line: 192, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !847, file: !60, line: 191, column: 58)
!858 = !{!"379"}
!859 = !{!"380"}
!860 = !DILocation(line: 194, column: 5, scope: !812)
!861 = !{!"381"}
!862 = !DILocation(line: 194, column: 11, scope: !812)
!863 = !{!"382"}
!864 = !DILocation(line: 195, column: 1, scope: !812)
!865 = !{!"383"}
!866 = !{!"384"}
!867 = !{!"385"}
!868 = !DILocalVariable(name: "st", scope: !79, file: !60, line: 105, type: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !870, line: 46, size: 1152, elements: !871)
!870 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!871 = !{!872, !874, !876, !878, !880, !882, !884, !885, !886, !888, !890, !892, !900, !901, !902}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !869, file: !870, line: 48, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !10, line: 145, baseType: !14)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !869, file: !870, line: 53, baseType: !875, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !10, line: 148, baseType: !14)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !869, file: !870, line: 61, baseType: !877, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !10, line: 151, baseType: !14)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !869, file: !870, line: 62, baseType: !879, size: 32, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !10, line: 150, baseType: !11)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !869, file: !870, line: 64, baseType: !881, size: 32, offset: 224)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !10, line: 146, baseType: !11)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !869, file: !870, line: 65, baseType: !883, size: 32, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !10, line: 147, baseType: !11)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !869, file: !870, line: 67, baseType: !52, size: 32, offset: 288)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !869, file: !870, line: 69, baseType: !873, size: 64, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !869, file: !870, line: 74, baseType: !887, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !10, line: 152, baseType: !65)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !869, file: !870, line: 78, baseType: !889, size: 64, offset: 448)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !10, line: 174, baseType: !65)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !869, file: !870, line: 80, baseType: !891, size: 64, offset: 512)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !10, line: 179, baseType: !65)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !869, file: !870, line: 91, baseType: !893, size: 128, offset: 576)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !894, line: 10, size: 128, elements: !895)
!894 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!895 = !{!896, !898}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !893, file: !894, line: 12, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !10, line: 160, baseType: !65)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !893, file: !894, line: 16, baseType: !899, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !10, line: 196, baseType: !65)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !869, file: !870, line: 92, baseType: !893, size: 128, offset: 704)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !869, file: !870, line: 93, baseType: !893, size: 128, offset: 832)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !869, file: !870, line: 106, baseType: !903, size: 192, offset: 960)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !899, size: 192, elements: !81)
!904 = !DILocation(line: 105, column: 24, scope: !79)
!905 = !{!"386"}
!906 = !DILocalVariable(name: "device", scope: !79, file: !60, line: 112, type: !907)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!908 = !DILocation(line: 0, scope: !79)
!909 = !{!"387"}
!910 = !{!"388"}
!911 = !DILocation(line: 115, column: 5, scope: !79)
!912 = !{!"389"}
!913 = !{!"390"}
!914 = !{!"391"}
!915 = !DILocation(line: 116, column: 19, scope: !916)
!916 = distinct !DILexicalBlock(scope: !79, file: !60, line: 115, column: 8)
!917 = !{!"392"}
!918 = !DILocation(line: 116, column: 14, scope: !916)
!919 = !{!"393"}
!920 = !DILocalVariable(name: "fd", scope: !79, file: !60, line: 113, type: !52)
!921 = !{!"394"}
!922 = !DILocation(line: 117, column: 16, scope: !923)
!923 = distinct !DILexicalBlock(scope: !916, file: !60, line: 117, column: 13)
!924 = !{!"395"}
!925 = !DILocation(line: 117, column: 13, scope: !916)
!926 = !{!"396"}
!927 = !DILocation(line: 118, column: 17, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !60, line: 118, column: 17)
!929 = distinct !DILexicalBlock(scope: !923, file: !60, line: 117, column: 23)
!930 = !{!"397"}
!931 = !DILocation(line: 118, column: 32, scope: !928)
!932 = !{!"398"}
!933 = !DILocation(line: 118, column: 37, scope: !928)
!934 = !{!"399"}
!935 = !DILocation(line: 118, column: 40, scope: !928)
!936 = !{!"400"}
!937 = !{!"401"}
!938 = !{!"402"}
!939 = !{!"403"}
!940 = !DILocation(line: 118, column: 17, scope: !929)
!941 = !{!"404"}
!942 = !DILocation(line: 120, column: 43, scope: !943)
!943 = distinct !DILexicalBlock(scope: !928, file: !60, line: 118, column: 61)
!944 = !{!"405"}
!945 = !DILocation(line: 120, column: 62, scope: !943)
!946 = !{!"406"}
!947 = !DILocation(line: 120, column: 24, scope: !943)
!948 = !{!"407"}
!949 = !DILocation(line: 122, column: 17, scope: !943)
!950 = !{!"408"}
!951 = !DILocation(line: 124, column: 20, scope: !929)
!952 = !{!"409"}
!953 = !DILocation(line: 125, column: 9, scope: !929)
!954 = !{!"410"}
!955 = !DILocation(line: 125, column: 20, scope: !956)
!956 = distinct !DILexicalBlock(scope: !923, file: !60, line: 125, column: 20)
!957 = !{!"411"}
!958 = !{!"412"}
!959 = !DILocation(line: 125, column: 26, scope: !956)
!960 = !{!"413"}
!961 = !DILocation(line: 125, column: 20, scope: !923)
!962 = !{!"414"}
!963 = !DILocation(line: 126, column: 13, scope: !964)
!964 = distinct !DILexicalBlock(scope: !956, file: !60, line: 125, column: 36)
!965 = !{!"415"}
!966 = !{!"416"}
!967 = !DILocation(line: 128, column: 15, scope: !916)
!968 = !{!"417"}
!969 = !{!"418"}
!970 = !DILocation(line: 129, column: 5, scope: !916)
!971 = !{!"419"}
!972 = !{!"420"}
!973 = !{!"421"}
!974 = !DILocation(line: 129, column: 14, scope: !79)
!975 = !{!"422"}
!976 = !DILocation(line: 129, column: 22, scope: !79)
!977 = !{!"423"}
!978 = distinct !{!978, !911, !979, !329}
!979 = !DILocation(line: 129, column: 29, scope: !79)
!980 = !{!"424"}
!981 = !DILocation(line: 131, column: 5, scope: !79)
!982 = !{!"425"}
!983 = !DILocation(line: 131, column: 11, scope: !79)
!984 = !{!"426"}
!985 = !DILocation(line: 132, column: 5, scope: !79)
!986 = !{!"427"}
!987 = !{!"428"}
!988 = !DILocation(line: 134, column: 1, scope: !79)
!989 = !{!"429"}
!990 = distinct !DISubprogram(name: "crypto_stream_chacha20_keybytes", scope: !133, file: !133, line: 5, type: !991, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !4)
!991 = !DISubroutineType(types: !992)
!992 = !{!12}
!993 = !DILocation(line: 6, column: 5, scope: !990)
!994 = !{!"430"}
!995 = distinct !DISubprogram(name: "crypto_stream_chacha20_noncebytes", scope: !133, file: !133, line: 10, type: !991, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !4)
!996 = !DILocation(line: 11, column: 5, scope: !995)
!997 = !{!"431"}
!998 = distinct !DISubprogram(name: "crypto_stream_chacha20", scope: !133, file: !133, line: 15, type: !139, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !4)
!999 = !DILocalVariable(name: "c", arg: 1, scope: !998, file: !133, line: 15, type: !66)
!1000 = !DILocation(line: 0, scope: !998)
!1001 = !{!"432"}
!1002 = !DILocalVariable(name: "clen", arg: 2, scope: !998, file: !133, line: 15, type: !141)
!1003 = !{!"433"}
!1004 = !DILocalVariable(name: "n", arg: 3, scope: !998, file: !133, line: 16, type: !126)
!1005 = !{!"434"}
!1006 = !DILocalVariable(name: "k", arg: 4, scope: !998, file: !133, line: 16, type: !126)
!1007 = !{!"435"}
!1008 = !DILocation(line: 18, column: 12, scope: !998)
!1009 = !{!"436"}
!1010 = !DILocation(line: 18, column: 5, scope: !998)
!1011 = !{!"437"}
!1012 = distinct !DISubprogram(name: "crypto_stream_chacha20_xor_ic", scope: !133, file: !133, line: 22, type: !1013, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !4)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!52, !66, !126, !141, !126, !1015, !126}
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 27, baseType: !1016)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 45, baseType: !14)
!1017 = !DILocalVariable(name: "c", arg: 1, scope: !1012, file: !133, line: 22, type: !66)
!1018 = !DILocation(line: 0, scope: !1012)
!1019 = !{!"438"}
!1020 = !DILocalVariable(name: "m", arg: 2, scope: !1012, file: !133, line: 22, type: !126)
!1021 = !{!"439"}
!1022 = !DILocalVariable(name: "mlen", arg: 3, scope: !1012, file: !133, line: 23, type: !141)
!1023 = !{!"440"}
!1024 = !DILocalVariable(name: "n", arg: 4, scope: !1012, file: !133, line: 24, type: !126)
!1025 = !{!"441"}
!1026 = !DILocalVariable(name: "ic", arg: 5, scope: !1012, file: !133, line: 24, type: !1015)
!1027 = !{!"442"}
!1028 = !DILocalVariable(name: "k", arg: 6, scope: !1012, file: !133, line: 25, type: !126)
!1029 = !{!"443"}
!1030 = !DILocation(line: 27, column: 12, scope: !1012)
!1031 = !{!"444"}
!1032 = !DILocation(line: 27, column: 5, scope: !1012)
!1033 = !{!"445"}
!1034 = distinct !DISubprogram(name: "crypto_stream_chacha20_xor", scope: !133, file: !133, line: 31, type: !1035, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !4)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!52, !66, !126, !141, !126, !126}
!1037 = !DILocalVariable(name: "c", arg: 1, scope: !1034, file: !133, line: 31, type: !66)
!1038 = !DILocation(line: 0, scope: !1034)
!1039 = !{!"446"}
!1040 = !DILocalVariable(name: "m", arg: 2, scope: !1034, file: !133, line: 31, type: !126)
!1041 = !{!"447"}
!1042 = !DILocalVariable(name: "mlen", arg: 3, scope: !1034, file: !133, line: 32, type: !141)
!1043 = !{!"448"}
!1044 = !DILocalVariable(name: "n", arg: 4, scope: !1034, file: !133, line: 32, type: !126)
!1045 = !{!"449"}
!1046 = !DILocalVariable(name: "k", arg: 5, scope: !1034, file: !133, line: 33, type: !126)
!1047 = !{!"450"}
!1048 = !DILocation(line: 35, column: 12, scope: !1034)
!1049 = !{!"451"}
!1050 = !DILocation(line: 35, column: 5, scope: !1034)
!1051 = !{!"452"}
!1052 = distinct !DISubprogram(name: "crypto_stream_chacha20_ref", scope: !107, file: !107, line: 233, type: !139, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1053 = !{!"453"}
!1054 = !DILocalVariable(name: "c", arg: 1, scope: !1052, file: !107, line: 233, type: !66)
!1055 = !DILocation(line: 0, scope: !1052)
!1056 = !{!"454"}
!1057 = !DILocalVariable(name: "clen", arg: 2, scope: !1052, file: !107, line: 233, type: !141)
!1058 = !{!"455"}
!1059 = !DILocalVariable(name: "n", arg: 3, scope: !1052, file: !107, line: 234, type: !126)
!1060 = !{!"456"}
!1061 = !DILocalVariable(name: "k", arg: 4, scope: !1052, file: !107, line: 234, type: !126)
!1062 = !{!"457"}
!1063 = !DILocalVariable(name: "ctx", scope: !1052, file: !107, line: 236, type: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chacha_ctx", file: !107, line: 17, size: 512, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1064, file: !107, line: 18, baseType: !1067, size: 512)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !116)
!1068 = !DILocation(line: 236, column: 23, scope: !1052)
!1069 = !{!"458"}
!1070 = !DILocation(line: 238, column: 10, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1052, file: !107, line: 238, column: 9)
!1072 = !{!"459"}
!1073 = !DILocation(line: 238, column: 9, scope: !1052)
!1074 = !{!"460"}
!1075 = !DILocation(line: 239, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !107, line: 238, column: 16)
!1077 = !{!"461"}
!1078 = !DILocation(line: 242, column: 5, scope: !1052)
!1079 = !{!"462"}
!1080 = !DILocation(line: 243, column: 5, scope: !1052)
!1081 = !{!"463"}
!1082 = !DILocation(line: 244, column: 5, scope: !1052)
!1083 = !{!"464"}
!1084 = !DILocation(line: 245, column: 5, scope: !1052)
!1085 = !{!"465"}
!1086 = !DILocation(line: 246, column: 20, scope: !1052)
!1087 = !{!"466"}
!1088 = !DILocation(line: 246, column: 5, scope: !1052)
!1089 = !{!"467"}
!1090 = !DILocation(line: 248, column: 5, scope: !1052)
!1091 = !{!"468"}
!1092 = !DILocation(line: 249, column: 1, scope: !1052)
!1093 = !{!"469"}
!1094 = distinct !DISubprogram(name: "chacha_keysetup", scope: !107, file: !107, line: 65, type: !1095, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1097, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "chacha_ctx", file: !107, line: 24, baseType: !1064)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!1101 = !DILocalVariable(name: "x", arg: 1, scope: !1094, file: !107, line: 65, type: !1097)
!1102 = !DILocation(line: 0, scope: !1094)
!1103 = !{!"470"}
!1104 = !DILocalVariable(name: "k", arg: 2, scope: !1094, file: !107, line: 65, type: !1099)
!1105 = !{!"471"}
!1106 = !DILocation(line: 69, column: 19, scope: !1094)
!1107 = !{!"472"}
!1108 = !{!"PointTainted"}
!1109 = !{!"473"}
!1110 = !{!"474"}
!1111 = !{!"ValueTainted"}
!1112 = !{!"475"}
!1113 = !{!"476"}
!1114 = !{!"477"}
!1115 = !{!"478"}
!1116 = !{!"479"}
!1117 = !{!"480"}
!1118 = !{!"481"}
!1119 = !{!"482"}
!1120 = !{!"483"}
!1121 = !{!"484"}
!1122 = !{!"485"}
!1123 = !{!"486"}
!1124 = !{!"487"}
!1125 = !{!"488"}
!1126 = !{!"489"}
!1127 = !{!"490"}
!1128 = !{!"491"}
!1129 = !{!"492"}
!1130 = !{!"493"}
!1131 = !DILocation(line: 69, column: 8, scope: !1094)
!1132 = !{!"494"}
!1133 = !DILocation(line: 69, column: 5, scope: !1094)
!1134 = !{!"495"}
!1135 = !DILocation(line: 69, column: 17, scope: !1094)
!1136 = !{!"496"}
!1137 = !DILocation(line: 70, column: 19, scope: !1094)
!1138 = !{!"497"}
!1139 = !{!"498"}
!1140 = !{!"499"}
!1141 = !{!"500"}
!1142 = !{!"501"}
!1143 = !{!"502"}
!1144 = !{!"503"}
!1145 = !{!"504"}
!1146 = !{!"505"}
!1147 = !{!"506"}
!1148 = !{!"507"}
!1149 = !{!"508"}
!1150 = !{!"509"}
!1151 = !{!"510"}
!1152 = !{!"511"}
!1153 = !{!"512"}
!1154 = !{!"513"}
!1155 = !{!"514"}
!1156 = !{!"515"}
!1157 = !{!"516"}
!1158 = !{!"517"}
!1159 = !{!"518"}
!1160 = !DILocation(line: 70, column: 8, scope: !1094)
!1161 = !{!"519"}
!1162 = !DILocation(line: 70, column: 5, scope: !1094)
!1163 = !{!"520"}
!1164 = !DILocation(line: 70, column: 17, scope: !1094)
!1165 = !{!"521"}
!1166 = !DILocation(line: 71, column: 19, scope: !1094)
!1167 = !{!"522"}
!1168 = !{!"523"}
!1169 = !{!"524"}
!1170 = !{!"525"}
!1171 = !{!"526"}
!1172 = !{!"527"}
!1173 = !{!"528"}
!1174 = !{!"529"}
!1175 = !{!"530"}
!1176 = !{!"531"}
!1177 = !{!"532"}
!1178 = !{!"533"}
!1179 = !{!"534"}
!1180 = !{!"535"}
!1181 = !{!"536"}
!1182 = !{!"537"}
!1183 = !{!"538"}
!1184 = !{!"539"}
!1185 = !{!"540"}
!1186 = !{!"541"}
!1187 = !{!"542"}
!1188 = !{!"543"}
!1189 = !DILocation(line: 71, column: 8, scope: !1094)
!1190 = !{!"544"}
!1191 = !DILocation(line: 71, column: 5, scope: !1094)
!1192 = !{!"545"}
!1193 = !DILocation(line: 71, column: 17, scope: !1094)
!1194 = !{!"546"}
!1195 = !DILocation(line: 72, column: 19, scope: !1094)
!1196 = !{!"547"}
!1197 = !{!"548"}
!1198 = !{!"549"}
!1199 = !{!"550"}
!1200 = !{!"551"}
!1201 = !{!"552"}
!1202 = !{!"553"}
!1203 = !{!"554"}
!1204 = !{!"555"}
!1205 = !{!"556"}
!1206 = !{!"557"}
!1207 = !{!"558"}
!1208 = !{!"559"}
!1209 = !{!"560"}
!1210 = !{!"561"}
!1211 = !{!"562"}
!1212 = !{!"563"}
!1213 = !{!"564"}
!1214 = !{!"565"}
!1215 = !{!"566"}
!1216 = !{!"567"}
!1217 = !{!"568"}
!1218 = !DILocation(line: 72, column: 8, scope: !1094)
!1219 = !{!"569"}
!1220 = !DILocation(line: 72, column: 5, scope: !1094)
!1221 = !{!"570"}
!1222 = !DILocation(line: 72, column: 17, scope: !1094)
!1223 = !{!"571"}
!1224 = !DILocation(line: 73, column: 7, scope: !1094)
!1225 = !{!"572"}
!1226 = !{!"573"}
!1227 = !DILocalVariable(name: "constants", scope: !1094, file: !107, line: 67, type: !126)
!1228 = !{!"574"}
!1229 = !DILocation(line: 75, column: 19, scope: !1094)
!1230 = !{!"575"}
!1231 = !{!"576"}
!1232 = !{!"577"}
!1233 = !{!"578"}
!1234 = !{!"579"}
!1235 = !{!"580"}
!1236 = !{!"581"}
!1237 = !{!"582"}
!1238 = !{!"583"}
!1239 = !{!"584"}
!1240 = !{!"585"}
!1241 = !{!"586"}
!1242 = !{!"587"}
!1243 = !{!"588"}
!1244 = !{!"589"}
!1245 = !{!"590"}
!1246 = !{!"591"}
!1247 = !{!"592"}
!1248 = !{!"593"}
!1249 = !{!"594"}
!1250 = !{!"595"}
!1251 = !{!"596"}
!1252 = !DILocation(line: 75, column: 8, scope: !1094)
!1253 = !{!"597"}
!1254 = !DILocation(line: 75, column: 5, scope: !1094)
!1255 = !{!"598"}
!1256 = !DILocation(line: 75, column: 17, scope: !1094)
!1257 = !{!"599"}
!1258 = !DILocation(line: 76, column: 19, scope: !1094)
!1259 = !{!"600"}
!1260 = !{!"601"}
!1261 = !{!"602"}
!1262 = !{!"603"}
!1263 = !{!"604"}
!1264 = !{!"605"}
!1265 = !{!"606"}
!1266 = !{!"607"}
!1267 = !{!"608"}
!1268 = !{!"609"}
!1269 = !{!"610"}
!1270 = !{!"611"}
!1271 = !{!"612"}
!1272 = !{!"613"}
!1273 = !{!"614"}
!1274 = !{!"615"}
!1275 = !{!"616"}
!1276 = !{!"617"}
!1277 = !{!"618"}
!1278 = !{!"619"}
!1279 = !{!"620"}
!1280 = !{!"621"}
!1281 = !DILocation(line: 76, column: 8, scope: !1094)
!1282 = !{!"622"}
!1283 = !DILocation(line: 76, column: 5, scope: !1094)
!1284 = !{!"623"}
!1285 = !DILocation(line: 76, column: 17, scope: !1094)
!1286 = !{!"624"}
!1287 = !DILocation(line: 77, column: 20, scope: !1094)
!1288 = !{!"625"}
!1289 = !{!"626"}
!1290 = !{!"627"}
!1291 = !{!"628"}
!1292 = !{!"629"}
!1293 = !{!"630"}
!1294 = !{!"631"}
!1295 = !{!"632"}
!1296 = !{!"633"}
!1297 = !{!"634"}
!1298 = !{!"635"}
!1299 = !{!"636"}
!1300 = !{!"637"}
!1301 = !{!"638"}
!1302 = !{!"639"}
!1303 = !{!"640"}
!1304 = !{!"641"}
!1305 = !{!"642"}
!1306 = !{!"643"}
!1307 = !{!"644"}
!1308 = !{!"645"}
!1309 = !{!"646"}
!1310 = !DILocation(line: 77, column: 8, scope: !1094)
!1311 = !{!"647"}
!1312 = !DILocation(line: 77, column: 5, scope: !1094)
!1313 = !{!"648"}
!1314 = !DILocation(line: 77, column: 18, scope: !1094)
!1315 = !{!"649"}
!1316 = !DILocation(line: 78, column: 20, scope: !1094)
!1317 = !{!"650"}
!1318 = !{!"651"}
!1319 = !{!"652"}
!1320 = !{!"653"}
!1321 = !{!"654"}
!1322 = !{!"655"}
!1323 = !{!"656"}
!1324 = !{!"657"}
!1325 = !{!"658"}
!1326 = !{!"659"}
!1327 = !{!"660"}
!1328 = !{!"661"}
!1329 = !{!"662"}
!1330 = !{!"663"}
!1331 = !{!"664"}
!1332 = !{!"665"}
!1333 = !{!"666"}
!1334 = !{!"667"}
!1335 = !{!"668"}
!1336 = !{!"669"}
!1337 = !{!"670"}
!1338 = !{!"671"}
!1339 = !DILocation(line: 78, column: 8, scope: !1094)
!1340 = !{!"672"}
!1341 = !DILocation(line: 78, column: 5, scope: !1094)
!1342 = !{!"673"}
!1343 = !DILocation(line: 78, column: 18, scope: !1094)
!1344 = !{!"674"}
!1345 = !{!"675"}
!1346 = !DILocation(line: 79, column: 19, scope: !1094)
!1347 = !{!"676"}
!1348 = !{!"677"}
!1349 = !{!"678"}
!1350 = !{!"679"}
!1351 = !{!"680"}
!1352 = !{!"681"}
!1353 = !{!"682"}
!1354 = !{!"683"}
!1355 = !{!"684"}
!1356 = !{!"685"}
!1357 = !{!"686"}
!1358 = !{!"687"}
!1359 = !{!"688"}
!1360 = !{!"689"}
!1361 = !{!"690"}
!1362 = !{!"691"}
!1363 = !{!"692"}
!1364 = !{!"693"}
!1365 = !{!"694"}
!1366 = !{!"695"}
!1367 = !{!"696"}
!1368 = !{!"697"}
!1369 = !{!"698"}
!1370 = !{!"699"}
!1371 = !{!"700"}
!1372 = !DILocation(line: 79, column: 8, scope: !1094)
!1373 = !{!"701"}
!1374 = !DILocation(line: 79, column: 5, scope: !1094)
!1375 = !{!"702"}
!1376 = !DILocation(line: 79, column: 17, scope: !1094)
!1377 = !{!"703"}
!1378 = !{!"704"}
!1379 = !DILocation(line: 80, column: 19, scope: !1094)
!1380 = !{!"705"}
!1381 = !{!"706"}
!1382 = !{!"707"}
!1383 = !{!"708"}
!1384 = !{!"709"}
!1385 = !{!"710"}
!1386 = !{!"711"}
!1387 = !{!"712"}
!1388 = !{!"713"}
!1389 = !{!"714"}
!1390 = !{!"715"}
!1391 = !{!"716"}
!1392 = !{!"717"}
!1393 = !{!"718"}
!1394 = !{!"719"}
!1395 = !{!"720"}
!1396 = !{!"721"}
!1397 = !{!"722"}
!1398 = !{!"723"}
!1399 = !{!"724"}
!1400 = !{!"725"}
!1401 = !{!"726"}
!1402 = !{!"727"}
!1403 = !{!"728"}
!1404 = !{!"729"}
!1405 = !DILocation(line: 80, column: 8, scope: !1094)
!1406 = !{!"730"}
!1407 = !DILocation(line: 80, column: 5, scope: !1094)
!1408 = !{!"731"}
!1409 = !DILocation(line: 80, column: 17, scope: !1094)
!1410 = !{!"732"}
!1411 = !{!"733"}
!1412 = !DILocation(line: 81, column: 19, scope: !1094)
!1413 = !{!"734"}
!1414 = !{!"735"}
!1415 = !{!"736"}
!1416 = !{!"737"}
!1417 = !{!"738"}
!1418 = !{!"739"}
!1419 = !{!"740"}
!1420 = !{!"741"}
!1421 = !{!"742"}
!1422 = !{!"743"}
!1423 = !{!"744"}
!1424 = !{!"745"}
!1425 = !{!"746"}
!1426 = !{!"747"}
!1427 = !{!"748"}
!1428 = !{!"749"}
!1429 = !{!"750"}
!1430 = !{!"751"}
!1431 = !{!"752"}
!1432 = !{!"753"}
!1433 = !{!"754"}
!1434 = !{!"755"}
!1435 = !{!"756"}
!1436 = !{!"757"}
!1437 = !{!"758"}
!1438 = !DILocation(line: 81, column: 8, scope: !1094)
!1439 = !{!"759"}
!1440 = !DILocation(line: 81, column: 5, scope: !1094)
!1441 = !{!"760"}
!1442 = !DILocation(line: 81, column: 17, scope: !1094)
!1443 = !{!"761"}
!1444 = !{!"762"}
!1445 = !DILocation(line: 82, column: 19, scope: !1094)
!1446 = !{!"763"}
!1447 = !{!"764"}
!1448 = !{!"765"}
!1449 = !{!"766"}
!1450 = !{!"767"}
!1451 = !{!"768"}
!1452 = !{!"769"}
!1453 = !{!"770"}
!1454 = !{!"771"}
!1455 = !{!"772"}
!1456 = !{!"773"}
!1457 = !{!"774"}
!1458 = !{!"775"}
!1459 = !{!"776"}
!1460 = !{!"777"}
!1461 = !{!"778"}
!1462 = !{!"779"}
!1463 = !{!"780"}
!1464 = !{!"781"}
!1465 = !{!"782"}
!1466 = !{!"783"}
!1467 = !{!"784"}
!1468 = !{!"785"}
!1469 = !{!"786"}
!1470 = !{!"787"}
!1471 = !DILocation(line: 82, column: 8, scope: !1094)
!1472 = !{!"788"}
!1473 = !DILocation(line: 82, column: 5, scope: !1094)
!1474 = !{!"789"}
!1475 = !DILocation(line: 82, column: 17, scope: !1094)
!1476 = !{!"790"}
!1477 = !DILocation(line: 83, column: 1, scope: !1094)
!1478 = !{!"791"}
!1479 = distinct !DISubprogram(name: "chacha_ivsetup", scope: !107, file: !107, line: 86, type: !1480, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !1097, !1099, !1099}
!1482 = !DILocalVariable(name: "x", arg: 1, scope: !1479, file: !107, line: 86, type: !1097)
!1483 = !DILocation(line: 0, scope: !1479)
!1484 = !{!"792"}
!1485 = !DILocalVariable(name: "iv", arg: 2, scope: !1479, file: !107, line: 86, type: !1099)
!1486 = !{!"793"}
!1487 = !DILocalVariable(name: "counter", arg: 3, scope: !1479, file: !107, line: 86, type: !1099)
!1488 = !{!"794"}
!1489 = !DILocation(line: 88, column: 28, scope: !1479)
!1490 = !{!"795"}
!1491 = !DILocation(line: 88, column: 20, scope: !1479)
!1492 = !{!"796"}
!1493 = !{!"797"}
!1494 = !DILocation(line: 88, column: 42, scope: !1479)
!1495 = !{!"798"}
!1496 = !{!"799"}
!1497 = !{!"800"}
!1498 = !{!"801"}
!1499 = !{!"802"}
!1500 = !{!"803"}
!1501 = !{!"804"}
!1502 = !{!"805"}
!1503 = !{!"806"}
!1504 = !{!"807"}
!1505 = !{!"808"}
!1506 = !{!"809"}
!1507 = !{!"810"}
!1508 = !{!"811"}
!1509 = !{!"812"}
!1510 = !{!"813"}
!1511 = !{!"814"}
!1512 = !{!"815"}
!1513 = !{!"816"}
!1514 = !{!"817"}
!1515 = !{!"818"}
!1516 = !{!"819"}
!1517 = !{!"820"}
!1518 = !{!"821"}
!1519 = !DILocation(line: 88, column: 8, scope: !1479)
!1520 = !{!"822"}
!1521 = !DILocation(line: 88, column: 5, scope: !1479)
!1522 = !{!"823"}
!1523 = !DILocation(line: 88, column: 18, scope: !1479)
!1524 = !{!"824"}
!1525 = !DILocation(line: 89, column: 28, scope: !1479)
!1526 = !{!"825"}
!1527 = !DILocation(line: 89, column: 20, scope: !1479)
!1528 = !{!"826"}
!1529 = !{!"827"}
!1530 = !DILocation(line: 89, column: 42, scope: !1479)
!1531 = !{!"828"}
!1532 = !{!"829"}
!1533 = !{!"830"}
!1534 = !{!"831"}
!1535 = !{!"832"}
!1536 = !{!"833"}
!1537 = !{!"834"}
!1538 = !{!"835"}
!1539 = !{!"836"}
!1540 = !{!"837"}
!1541 = !{!"838"}
!1542 = !{!"839"}
!1543 = !{!"840"}
!1544 = !{!"841"}
!1545 = !{!"842"}
!1546 = !{!"843"}
!1547 = !{!"844"}
!1548 = !{!"845"}
!1549 = !{!"846"}
!1550 = !{!"847"}
!1551 = !{!"848"}
!1552 = !{!"849"}
!1553 = !{!"850"}
!1554 = !{!"851"}
!1555 = !DILocation(line: 89, column: 8, scope: !1479)
!1556 = !{!"852"}
!1557 = !DILocation(line: 89, column: 5, scope: !1479)
!1558 = !{!"853"}
!1559 = !DILocation(line: 89, column: 18, scope: !1479)
!1560 = !{!"854"}
!1561 = !DILocation(line: 90, column: 20, scope: !1479)
!1562 = !{!"855"}
!1563 = !{!"856"}
!1564 = !{!"857"}
!1565 = !{!"858"}
!1566 = !{!"859"}
!1567 = !{!"860"}
!1568 = !{!"861"}
!1569 = !{!"862"}
!1570 = !{!"863"}
!1571 = !{!"864"}
!1572 = !{!"865"}
!1573 = !{!"866"}
!1574 = !{!"867"}
!1575 = !{!"868"}
!1576 = !{!"869"}
!1577 = !{!"870"}
!1578 = !{!"871"}
!1579 = !{!"872"}
!1580 = !{!"873"}
!1581 = !{!"874"}
!1582 = !{!"875"}
!1583 = !{!"876"}
!1584 = !DILocation(line: 90, column: 8, scope: !1479)
!1585 = !{!"877"}
!1586 = !DILocation(line: 90, column: 5, scope: !1479)
!1587 = !{!"878"}
!1588 = !DILocation(line: 90, column: 18, scope: !1479)
!1589 = !{!"879"}
!1590 = !DILocation(line: 91, column: 20, scope: !1479)
!1591 = !{!"880"}
!1592 = !{!"881"}
!1593 = !{!"882"}
!1594 = !{!"883"}
!1595 = !{!"884"}
!1596 = !{!"885"}
!1597 = !{!"886"}
!1598 = !{!"887"}
!1599 = !{!"888"}
!1600 = !{!"889"}
!1601 = !{!"890"}
!1602 = !{!"891"}
!1603 = !{!"892"}
!1604 = !{!"893"}
!1605 = !{!"894"}
!1606 = !{!"895"}
!1607 = !{!"896"}
!1608 = !{!"897"}
!1609 = !{!"898"}
!1610 = !{!"899"}
!1611 = !{!"900"}
!1612 = !{!"901"}
!1613 = !DILocation(line: 91, column: 8, scope: !1479)
!1614 = !{!"902"}
!1615 = !DILocation(line: 91, column: 5, scope: !1479)
!1616 = !{!"903"}
!1617 = !DILocation(line: 91, column: 18, scope: !1479)
!1618 = !{!"904"}
!1619 = !DILocation(line: 92, column: 1, scope: !1479)
!1620 = !{!"905"}
!1621 = distinct !DISubprogram(name: "chacha_encrypt_bytes", scope: !107, file: !107, line: 95, type: !1622, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !1097, !1099, !1624, !141}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1625 = !{!"906"}
!1626 = !DILocalVariable(name: "x", arg: 1, scope: !1621, file: !107, line: 95, type: !1097)
!1627 = !DILocation(line: 0, scope: !1621)
!1628 = !{!"907"}
!1629 = !DILocalVariable(name: "m", arg: 2, scope: !1621, file: !107, line: 95, type: !1099)
!1630 = !{!"908"}
!1631 = !DILocalVariable(name: "c", arg: 3, scope: !1621, file: !107, line: 95, type: !1624)
!1632 = !{!"909"}
!1633 = !DILocalVariable(name: "bytes", arg: 4, scope: !1621, file: !107, line: 95, type: !141)
!1634 = !{!"910"}
!1635 = !DILocalVariable(name: "ctarget", scope: !1621, file: !107, line: 99, type: !1624)
!1636 = !{!"911"}
!1637 = !DILocalVariable(name: "tmp", scope: !1621, file: !107, line: 100, type: !1638)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 512, elements: !1639)
!1639 = !{!1640}
!1640 = !DISubrange(count: 64)
!1641 = !DILocation(line: 100, column: 8, scope: !1621)
!1642 = !{!"912"}
!1643 = !DILocation(line: 103, column: 10, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1621, file: !107, line: 103, column: 9)
!1645 = !{!"913"}
!1646 = !DILocation(line: 103, column: 9, scope: !1621)
!1647 = !{!"914"}
!1648 = !DILocation(line: 104, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1644, file: !107, line: 103, column: 17)
!1650 = !{!"915"}
!1651 = !DILocation(line: 106, column: 13, scope: !1621)
!1652 = !{!"916"}
!1653 = !DILocation(line: 106, column: 10, scope: !1621)
!1654 = !{!"917"}
!1655 = !{!"918"}
!1656 = !DILocalVariable(name: "j0", scope: !1621, file: !107, line: 98, type: !109)
!1657 = !{!"919"}
!1658 = !DILocation(line: 107, column: 13, scope: !1621)
!1659 = !{!"920"}
!1660 = !DILocation(line: 107, column: 10, scope: !1621)
!1661 = !{!"921"}
!1662 = !{!"922"}
!1663 = !DILocalVariable(name: "j1", scope: !1621, file: !107, line: 98, type: !109)
!1664 = !{!"923"}
!1665 = !DILocation(line: 108, column: 13, scope: !1621)
!1666 = !{!"924"}
!1667 = !DILocation(line: 108, column: 10, scope: !1621)
!1668 = !{!"925"}
!1669 = !{!"926"}
!1670 = !DILocalVariable(name: "j2", scope: !1621, file: !107, line: 98, type: !109)
!1671 = !{!"927"}
!1672 = !DILocation(line: 109, column: 13, scope: !1621)
!1673 = !{!"928"}
!1674 = !DILocation(line: 109, column: 10, scope: !1621)
!1675 = !{!"929"}
!1676 = !{!"930"}
!1677 = !DILocalVariable(name: "j3", scope: !1621, file: !107, line: 98, type: !109)
!1678 = !{!"931"}
!1679 = !DILocation(line: 110, column: 13, scope: !1621)
!1680 = !{!"932"}
!1681 = !DILocation(line: 110, column: 10, scope: !1621)
!1682 = !{!"933"}
!1683 = !{!"934"}
!1684 = !DILocalVariable(name: "j4", scope: !1621, file: !107, line: 98, type: !109)
!1685 = !{!"935"}
!1686 = !DILocation(line: 111, column: 13, scope: !1621)
!1687 = !{!"936"}
!1688 = !DILocation(line: 111, column: 10, scope: !1621)
!1689 = !{!"937"}
!1690 = !{!"938"}
!1691 = !DILocalVariable(name: "j5", scope: !1621, file: !107, line: 98, type: !109)
!1692 = !{!"939"}
!1693 = !DILocation(line: 112, column: 13, scope: !1621)
!1694 = !{!"940"}
!1695 = !DILocation(line: 112, column: 10, scope: !1621)
!1696 = !{!"941"}
!1697 = !{!"942"}
!1698 = !DILocalVariable(name: "j6", scope: !1621, file: !107, line: 98, type: !109)
!1699 = !{!"943"}
!1700 = !DILocation(line: 113, column: 13, scope: !1621)
!1701 = !{!"944"}
!1702 = !DILocation(line: 113, column: 10, scope: !1621)
!1703 = !{!"945"}
!1704 = !{!"946"}
!1705 = !DILocalVariable(name: "j7", scope: !1621, file: !107, line: 98, type: !109)
!1706 = !{!"947"}
!1707 = !DILocation(line: 114, column: 13, scope: !1621)
!1708 = !{!"948"}
!1709 = !DILocation(line: 114, column: 10, scope: !1621)
!1710 = !{!"949"}
!1711 = !{!"950"}
!1712 = !DILocalVariable(name: "j8", scope: !1621, file: !107, line: 98, type: !109)
!1713 = !{!"951"}
!1714 = !DILocation(line: 115, column: 13, scope: !1621)
!1715 = !{!"952"}
!1716 = !DILocation(line: 115, column: 10, scope: !1621)
!1717 = !{!"953"}
!1718 = !{!"954"}
!1719 = !DILocalVariable(name: "j9", scope: !1621, file: !107, line: 98, type: !109)
!1720 = !{!"955"}
!1721 = !DILocation(line: 116, column: 14, scope: !1621)
!1722 = !{!"956"}
!1723 = !DILocation(line: 116, column: 11, scope: !1621)
!1724 = !{!"957"}
!1725 = !{!"958"}
!1726 = !DILocalVariable(name: "j10", scope: !1621, file: !107, line: 98, type: !109)
!1727 = !{!"959"}
!1728 = !DILocation(line: 117, column: 14, scope: !1621)
!1729 = !{!"960"}
!1730 = !DILocation(line: 117, column: 11, scope: !1621)
!1731 = !{!"961"}
!1732 = !{!"962"}
!1733 = !DILocalVariable(name: "j11", scope: !1621, file: !107, line: 98, type: !109)
!1734 = !{!"963"}
!1735 = !DILocation(line: 118, column: 14, scope: !1621)
!1736 = !{!"964"}
!1737 = !DILocation(line: 118, column: 11, scope: !1621)
!1738 = !{!"965"}
!1739 = !{!"966"}
!1740 = !DILocalVariable(name: "j12", scope: !1621, file: !107, line: 98, type: !109)
!1741 = !{!"967"}
!1742 = !DILocation(line: 119, column: 14, scope: !1621)
!1743 = !{!"968"}
!1744 = !DILocation(line: 119, column: 11, scope: !1621)
!1745 = !{!"969"}
!1746 = !{!"970"}
!1747 = !DILocalVariable(name: "j13", scope: !1621, file: !107, line: 98, type: !109)
!1748 = !{!"971"}
!1749 = !DILocation(line: 120, column: 14, scope: !1621)
!1750 = !{!"972"}
!1751 = !DILocation(line: 120, column: 11, scope: !1621)
!1752 = !{!"973"}
!1753 = !{!"974"}
!1754 = !DILocalVariable(name: "j14", scope: !1621, file: !107, line: 98, type: !109)
!1755 = !{!"975"}
!1756 = !DILocation(line: 121, column: 14, scope: !1621)
!1757 = !{!"976"}
!1758 = !DILocation(line: 121, column: 11, scope: !1621)
!1759 = !{!"977"}
!1760 = !{!"978"}
!1761 = !DILocalVariable(name: "j15", scope: !1621, file: !107, line: 98, type: !109)
!1762 = !{!"979"}
!1763 = !DILocation(line: 123, column: 5, scope: !1621)
!1764 = !{!"980"}
!1765 = !{!"981"}
!1766 = !DILocation(line: 119, column: 9, scope: !1621)
!1767 = !{!"982"}
!1768 = !{!"983"}
!1769 = !{!"984"}
!1770 = !{!"985"}
!1771 = !{!"986"}
!1772 = !{!"987"}
!1773 = !{!"988"}
!1774 = !{!"989"}
!1775 = !{!"990"}
!1776 = !{!"991"}
!1777 = !{!"992"}
!1778 = !DILocation(line: 124, column: 19, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 124, column: 13)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !107, line: 123, column: 14)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !107, line: 123, column: 5)
!1782 = distinct !DILexicalBlock(scope: !1621, file: !107, line: 123, column: 5)
!1783 = !{!"993"}
!1784 = !DILocation(line: 124, column: 13, scope: !1780)
!1785 = !{!"994"}
!1786 = !DILocalVariable(name: "i", scope: !1621, file: !107, line: 101, type: !11)
!1787 = !{!"995"}
!1788 = !DILocation(line: 125, column: 18, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !107, line: 125, column: 13)
!1790 = distinct !DILexicalBlock(scope: !1779, file: !107, line: 124, column: 25)
!1791 = !{!"996"}
!1792 = !DILocation(line: 0, scope: !1789)
!1793 = !{!"997"}
!1794 = !{!"998"}
!1795 = !DILocation(line: 125, column: 25, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1789, file: !107, line: 125, column: 13)
!1797 = !{!"999"}
!1798 = !DILocation(line: 125, column: 27, scope: !1796)
!1799 = !{!"1000"}
!1800 = !DILocation(line: 125, column: 13, scope: !1789)
!1801 = !{!"1001"}
!1802 = !DILocation(line: 126, column: 26, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1796, file: !107, line: 125, column: 41)
!1804 = !{!"1002"}
!1805 = !{!"1003"}
!1806 = !{!"1004"}
!1807 = !DILocation(line: 126, column: 17, scope: !1803)
!1808 = !{!"1005"}
!1809 = !{!"1006"}
!1810 = !DILocation(line: 126, column: 24, scope: !1803)
!1811 = !{!"1007"}
!1812 = !DILocation(line: 127, column: 13, scope: !1803)
!1813 = !{!"1008"}
!1814 = !DILocation(line: 125, column: 36, scope: !1796)
!1815 = !{!"1009"}
!1816 = !{!"1010"}
!1817 = !DILocation(line: 125, column: 13, scope: !1796)
!1818 = distinct !{!1818, !1800, !1819, !329}
!1819 = !DILocation(line: 127, column: 13, scope: !1789)
!1820 = !{!"1011"}
!1821 = !DILocation(line: 128, column: 17, scope: !1790)
!1822 = !{!"1012"}
!1823 = !{!"1013"}
!1824 = !{!"1014"}
!1825 = !DILocation(line: 130, column: 17, scope: !1790)
!1826 = !{!"1015"}
!1827 = !{!"1016"}
!1828 = !DILocation(line: 131, column: 9, scope: !1790)
!1829 = !{!"1017"}
!1830 = !{!"1018"}
!1831 = !{!"1019"}
!1832 = !{!"1020"}
!1833 = !{!"1021"}
!1834 = !{!"1022"}
!1835 = !{!"1023"}
!1836 = !DILocalVariable(name: "x0", scope: !1621, file: !107, line: 97, type: !109)
!1837 = !{!"1024"}
!1838 = !DILocalVariable(name: "x1", scope: !1621, file: !107, line: 97, type: !109)
!1839 = !{!"1025"}
!1840 = !DILocalVariable(name: "x2", scope: !1621, file: !107, line: 97, type: !109)
!1841 = !{!"1026"}
!1842 = !DILocalVariable(name: "x3", scope: !1621, file: !107, line: 97, type: !109)
!1843 = !{!"1027"}
!1844 = !DILocalVariable(name: "x4", scope: !1621, file: !107, line: 97, type: !109)
!1845 = !{!"1028"}
!1846 = !DILocalVariable(name: "x5", scope: !1621, file: !107, line: 97, type: !109)
!1847 = !{!"1029"}
!1848 = !DILocalVariable(name: "x6", scope: !1621, file: !107, line: 97, type: !109)
!1849 = !{!"1030"}
!1850 = !DILocalVariable(name: "x7", scope: !1621, file: !107, line: 97, type: !109)
!1851 = !{!"1031"}
!1852 = !DILocalVariable(name: "x8", scope: !1621, file: !107, line: 97, type: !109)
!1853 = !{!"1032"}
!1854 = !DILocalVariable(name: "x9", scope: !1621, file: !107, line: 97, type: !109)
!1855 = !{!"1033"}
!1856 = !DILocalVariable(name: "x10", scope: !1621, file: !107, line: 97, type: !109)
!1857 = !{!"1034"}
!1858 = !DILocalVariable(name: "x11", scope: !1621, file: !107, line: 97, type: !109)
!1859 = !{!"1035"}
!1860 = !DILocalVariable(name: "x12", scope: !1621, file: !107, line: 97, type: !109)
!1861 = !{!"1036"}
!1862 = !DILocalVariable(name: "x13", scope: !1621, file: !107, line: 97, type: !109)
!1863 = !{!"1037"}
!1864 = !DILocalVariable(name: "x14", scope: !1621, file: !107, line: 97, type: !109)
!1865 = !{!"1038"}
!1866 = !DILocalVariable(name: "x15", scope: !1621, file: !107, line: 97, type: !109)
!1867 = !{!"1039"}
!1868 = !{!"1040"}
!1869 = !DILocation(line: 148, column: 14, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 148, column: 9)
!1871 = !{!"1041"}
!1872 = !DILocation(line: 0, scope: !1780)
!1873 = !{!"1042"}
!1874 = !{!"1043"}
!1875 = !{!"1044"}
!1876 = !{!"1045"}
!1877 = !{!"1046"}
!1878 = !{!"1047"}
!1879 = !{!"1048"}
!1880 = !{!"1049"}
!1881 = !{!"1050"}
!1882 = !{!"1051"}
!1883 = !{!"1052"}
!1884 = !{!"1053"}
!1885 = !{!"1054"}
!1886 = !{!"1055"}
!1887 = !{!"1056"}
!1888 = !{!"1057"}
!1889 = !DILocation(line: 0, scope: !1870)
!1890 = !{!"1058"}
!1891 = !{!"1059"}
!1892 = !{!"1060"}
!1893 = !{!"1061"}
!1894 = !{!"1062"}
!1895 = !{!"1063"}
!1896 = !{!"1064"}
!1897 = !{!"1065"}
!1898 = !{!"1066"}
!1899 = !{!"1067"}
!1900 = !{!"1068"}
!1901 = !{!"1069"}
!1902 = !{!"1070"}
!1903 = !{!"1071"}
!1904 = !{!"1072"}
!1905 = !{!"1073"}
!1906 = !{!"1074"}
!1907 = !{!"1075"}
!1908 = !DILocation(line: 148, column: 24, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1870, file: !107, line: 148, column: 9)
!1910 = !{!"1076"}
!1911 = !DILocation(line: 148, column: 9, scope: !1870)
!1912 = !{!"1077"}
!1913 = !DILocation(line: 149, column: 13, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1909, file: !107, line: 148, column: 37)
!1915 = !{!"1078"}
!1916 = !{!"1079"}
!1917 = !{!"1080"}
!1918 = !{!"1081"}
!1919 = !{!"1082"}
!1920 = !{!"1083"}
!1921 = !{!"1084"}
!1922 = !{!"1085"}
!1923 = !{!"1086"}
!1924 = !{!"1087"}
!1925 = !{!"1088"}
!1926 = !{!"1089"}
!1927 = !{!"1090"}
!1928 = !{!"1091"}
!1929 = !{!"1092"}
!1930 = !{!"1093"}
!1931 = !{!"1094"}
!1932 = !{!"1095"}
!1933 = !{!"1096"}
!1934 = !{!"1097"}
!1935 = !{!"1098"}
!1936 = !{!"1099"}
!1937 = !{!"1100"}
!1938 = !{!"1101"}
!1939 = !{!"1102"}
!1940 = !{!"1103"}
!1941 = !{!"1104"}
!1942 = !{!"1105"}
!1943 = !{!"1106"}
!1944 = !{!"1107"}
!1945 = !{!"1108"}
!1946 = !{!"1109"}
!1947 = !DILocation(line: 150, column: 13, scope: !1914)
!1948 = !{!"1110"}
!1949 = !{!"1111"}
!1950 = !{!"1112"}
!1951 = !{!"1113"}
!1952 = !{!"1114"}
!1953 = !{!"1115"}
!1954 = !{!"1116"}
!1955 = !{!"1117"}
!1956 = !{!"1118"}
!1957 = !{!"1119"}
!1958 = !{!"1120"}
!1959 = !{!"1121"}
!1960 = !{!"1122"}
!1961 = !{!"1123"}
!1962 = !{!"1124"}
!1963 = !{!"1125"}
!1964 = !{!"1126"}
!1965 = !{!"1127"}
!1966 = !{!"1128"}
!1967 = !{!"1129"}
!1968 = !{!"1130"}
!1969 = !{!"1131"}
!1970 = !{!"1132"}
!1971 = !{!"1133"}
!1972 = !{!"1134"}
!1973 = !{!"1135"}
!1974 = !{!"1136"}
!1975 = !{!"1137"}
!1976 = !{!"1138"}
!1977 = !{!"1139"}
!1978 = !{!"1140"}
!1979 = !{!"1141"}
!1980 = !DILocation(line: 151, column: 13, scope: !1914)
!1981 = !{!"1142"}
!1982 = !{!"1143"}
!1983 = !{!"1144"}
!1984 = !{!"1145"}
!1985 = !{!"1146"}
!1986 = !{!"1147"}
!1987 = !{!"1148"}
!1988 = !{!"1149"}
!1989 = !{!"1150"}
!1990 = !{!"1151"}
!1991 = !{!"1152"}
!1992 = !{!"1153"}
!1993 = !{!"1154"}
!1994 = !{!"1155"}
!1995 = !{!"1156"}
!1996 = !{!"1157"}
!1997 = !{!"1158"}
!1998 = !{!"1159"}
!1999 = !{!"1160"}
!2000 = !{!"1161"}
!2001 = !{!"1162"}
!2002 = !{!"1163"}
!2003 = !{!"1164"}
!2004 = !{!"1165"}
!2005 = !{!"1166"}
!2006 = !{!"1167"}
!2007 = !{!"1168"}
!2008 = !{!"1169"}
!2009 = !{!"1170"}
!2010 = !{!"1171"}
!2011 = !{!"1172"}
!2012 = !{!"1173"}
!2013 = !DILocation(line: 152, column: 13, scope: !1914)
!2014 = !{!"1174"}
!2015 = !{!"1175"}
!2016 = !{!"1176"}
!2017 = !{!"1177"}
!2018 = !{!"1178"}
!2019 = !{!"1179"}
!2020 = !{!"1180"}
!2021 = !{!"1181"}
!2022 = !{!"1182"}
!2023 = !{!"1183"}
!2024 = !{!"1184"}
!2025 = !{!"1185"}
!2026 = !{!"1186"}
!2027 = !{!"1187"}
!2028 = !{!"1188"}
!2029 = !{!"1189"}
!2030 = !{!"1190"}
!2031 = !{!"1191"}
!2032 = !{!"1192"}
!2033 = !{!"1193"}
!2034 = !{!"1194"}
!2035 = !{!"1195"}
!2036 = !{!"1196"}
!2037 = !{!"1197"}
!2038 = !{!"1198"}
!2039 = !{!"1199"}
!2040 = !{!"1200"}
!2041 = !{!"1201"}
!2042 = !{!"1202"}
!2043 = !{!"1203"}
!2044 = !{!"1204"}
!2045 = !{!"1205"}
!2046 = !DILocation(line: 153, column: 13, scope: !1914)
!2047 = !{!"1206"}
!2048 = !{!"1207"}
!2049 = !{!"1208"}
!2050 = !{!"1209"}
!2051 = !{!"1210"}
!2052 = !{!"1211"}
!2053 = !{!"1212"}
!2054 = !{!"1213"}
!2055 = !{!"1214"}
!2056 = !{!"1215"}
!2057 = !{!"1216"}
!2058 = !{!"1217"}
!2059 = !{!"1218"}
!2060 = !{!"1219"}
!2061 = !{!"1220"}
!2062 = !{!"1221"}
!2063 = !{!"1222"}
!2064 = !{!"1223"}
!2065 = !{!"1224"}
!2066 = !{!"1225"}
!2067 = !{!"1226"}
!2068 = !{!"1227"}
!2069 = !{!"1228"}
!2070 = !{!"1229"}
!2071 = !{!"1230"}
!2072 = !{!"1231"}
!2073 = !{!"1232"}
!2074 = !{!"1233"}
!2075 = !{!"1234"}
!2076 = !{!"1235"}
!2077 = !{!"1236"}
!2078 = !{!"1237"}
!2079 = !DILocation(line: 154, column: 13, scope: !1914)
!2080 = !{!"1238"}
!2081 = !{!"1239"}
!2082 = !{!"1240"}
!2083 = !{!"1241"}
!2084 = !{!"1242"}
!2085 = !{!"1243"}
!2086 = !{!"1244"}
!2087 = !{!"1245"}
!2088 = !{!"1246"}
!2089 = !{!"1247"}
!2090 = !{!"1248"}
!2091 = !{!"1249"}
!2092 = !{!"1250"}
!2093 = !{!"1251"}
!2094 = !{!"1252"}
!2095 = !{!"1253"}
!2096 = !{!"1254"}
!2097 = !{!"1255"}
!2098 = !{!"1256"}
!2099 = !{!"1257"}
!2100 = !{!"1258"}
!2101 = !{!"1259"}
!2102 = !{!"1260"}
!2103 = !{!"1261"}
!2104 = !{!"1262"}
!2105 = !{!"1263"}
!2106 = !{!"1264"}
!2107 = !{!"1265"}
!2108 = !{!"1266"}
!2109 = !{!"1267"}
!2110 = !{!"1268"}
!2111 = !{!"1269"}
!2112 = !DILocation(line: 155, column: 13, scope: !1914)
!2113 = !{!"1270"}
!2114 = !{!"1271"}
!2115 = !{!"1272"}
!2116 = !{!"1273"}
!2117 = !{!"1274"}
!2118 = !{!"1275"}
!2119 = !{!"1276"}
!2120 = !{!"1277"}
!2121 = !{!"1278"}
!2122 = !{!"1279"}
!2123 = !{!"1280"}
!2124 = !{!"1281"}
!2125 = !{!"1282"}
!2126 = !{!"1283"}
!2127 = !{!"1284"}
!2128 = !{!"1285"}
!2129 = !{!"1286"}
!2130 = !{!"1287"}
!2131 = !{!"1288"}
!2132 = !{!"1289"}
!2133 = !{!"1290"}
!2134 = !{!"1291"}
!2135 = !{!"1292"}
!2136 = !{!"1293"}
!2137 = !{!"1294"}
!2138 = !{!"1295"}
!2139 = !{!"1296"}
!2140 = !{!"1297"}
!2141 = !{!"1298"}
!2142 = !{!"1299"}
!2143 = !{!"1300"}
!2144 = !{!"1301"}
!2145 = !DILocation(line: 156, column: 13, scope: !1914)
!2146 = !{!"1302"}
!2147 = !{!"1303"}
!2148 = !{!"1304"}
!2149 = !{!"1305"}
!2150 = !{!"1306"}
!2151 = !{!"1307"}
!2152 = !{!"1308"}
!2153 = !{!"1309"}
!2154 = !{!"1310"}
!2155 = !{!"1311"}
!2156 = !{!"1312"}
!2157 = !{!"1313"}
!2158 = !{!"1314"}
!2159 = !{!"1315"}
!2160 = !{!"1316"}
!2161 = !{!"1317"}
!2162 = !{!"1318"}
!2163 = !{!"1319"}
!2164 = !{!"1320"}
!2165 = !{!"1321"}
!2166 = !{!"1322"}
!2167 = !{!"1323"}
!2168 = !{!"1324"}
!2169 = !{!"1325"}
!2170 = !{!"1326"}
!2171 = !{!"1327"}
!2172 = !{!"1328"}
!2173 = !{!"1329"}
!2174 = !{!"1330"}
!2175 = !{!"1331"}
!2176 = !{!"1332"}
!2177 = !{!"1333"}
!2178 = !DILocation(line: 157, column: 9, scope: !1914)
!2179 = !{!"1334"}
!2180 = !DILocation(line: 148, column: 31, scope: !1909)
!2181 = !{!"1335"}
!2182 = !{!"1336"}
!2183 = !DILocation(line: 148, column: 9, scope: !1909)
!2184 = distinct !{!2184, !1911, !2185, !329}
!2185 = !DILocation(line: 157, column: 9, scope: !1870)
!2186 = !{!"1337"}
!2187 = !DILocation(line: 158, column: 14, scope: !1780)
!2188 = !{!"1338"}
!2189 = !{!"1339"}
!2190 = !DILocation(line: 159, column: 14, scope: !1780)
!2191 = !{!"1340"}
!2192 = !{!"1341"}
!2193 = !DILocation(line: 160, column: 14, scope: !1780)
!2194 = !{!"1342"}
!2195 = !{!"1343"}
!2196 = !DILocation(line: 161, column: 14, scope: !1780)
!2197 = !{!"1344"}
!2198 = !{!"1345"}
!2199 = !DILocation(line: 162, column: 14, scope: !1780)
!2200 = !{!"1346"}
!2201 = !{!"1347"}
!2202 = !DILocation(line: 163, column: 14, scope: !1780)
!2203 = !{!"1348"}
!2204 = !{!"1349"}
!2205 = !DILocation(line: 164, column: 14, scope: !1780)
!2206 = !{!"1350"}
!2207 = !{!"1351"}
!2208 = !DILocation(line: 165, column: 14, scope: !1780)
!2209 = !{!"1352"}
!2210 = !{!"1353"}
!2211 = !DILocation(line: 166, column: 14, scope: !1780)
!2212 = !{!"1354"}
!2213 = !{!"1355"}
!2214 = !DILocation(line: 167, column: 14, scope: !1780)
!2215 = !{!"1356"}
!2216 = !{!"1357"}
!2217 = !DILocation(line: 168, column: 15, scope: !1780)
!2218 = !{!"1358"}
!2219 = !{!"1359"}
!2220 = !DILocation(line: 169, column: 15, scope: !1780)
!2221 = !{!"1360"}
!2222 = !{!"1361"}
!2223 = !DILocation(line: 170, column: 15, scope: !1780)
!2224 = !{!"1362"}
!2225 = !{!"1363"}
!2226 = !DILocation(line: 171, column: 15, scope: !1780)
!2227 = !{!"1364"}
!2228 = !{!"1365"}
!2229 = !DILocation(line: 172, column: 15, scope: !1780)
!2230 = !{!"1366"}
!2231 = !{!"1367"}
!2232 = !DILocation(line: 173, column: 15, scope: !1780)
!2233 = !{!"1368"}
!2234 = !{!"1369"}
!2235 = !DILocation(line: 175, column: 14, scope: !1780)
!2236 = !{!"1370"}
!2237 = !{!"1371"}
!2238 = !{!"1372"}
!2239 = !{!"1373"}
!2240 = !{!"1374"}
!2241 = !{!"1375"}
!2242 = !{!"1376"}
!2243 = !{!"1377"}
!2244 = !{!"1378"}
!2245 = !{!"1379"}
!2246 = !{!"1380"}
!2247 = !{!"1381"}
!2248 = !{!"1382"}
!2249 = !{!"1383"}
!2250 = !{!"1384"}
!2251 = !{!"1385"}
!2252 = !{!"1386"}
!2253 = !{!"1387"}
!2254 = !{!"1388"}
!2255 = !{!"1389"}
!2256 = !{!"1390"}
!2257 = !{!"1391"}
!2258 = !{!"1392"}
!2259 = !{!"1393"}
!2260 = !DILocation(line: 176, column: 14, scope: !1780)
!2261 = !{!"1394"}
!2262 = !{!"1395"}
!2263 = !{!"1396"}
!2264 = !{!"1397"}
!2265 = !{!"1398"}
!2266 = !{!"1399"}
!2267 = !{!"1400"}
!2268 = !{!"1401"}
!2269 = !{!"1402"}
!2270 = !{!"1403"}
!2271 = !{!"1404"}
!2272 = !{!"1405"}
!2273 = !{!"1406"}
!2274 = !{!"1407"}
!2275 = !{!"1408"}
!2276 = !{!"1409"}
!2277 = !{!"1410"}
!2278 = !{!"1411"}
!2279 = !{!"1412"}
!2280 = !{!"1413"}
!2281 = !{!"1414"}
!2282 = !{!"1415"}
!2283 = !{!"1416"}
!2284 = !{!"1417"}
!2285 = !DILocation(line: 177, column: 14, scope: !1780)
!2286 = !{!"1418"}
!2287 = !{!"1419"}
!2288 = !{!"1420"}
!2289 = !{!"1421"}
!2290 = !{!"1422"}
!2291 = !{!"1423"}
!2292 = !{!"1424"}
!2293 = !{!"1425"}
!2294 = !{!"1426"}
!2295 = !{!"1427"}
!2296 = !{!"1428"}
!2297 = !{!"1429"}
!2298 = !{!"1430"}
!2299 = !{!"1431"}
!2300 = !{!"1432"}
!2301 = !{!"1433"}
!2302 = !{!"1434"}
!2303 = !{!"1435"}
!2304 = !{!"1436"}
!2305 = !{!"1437"}
!2306 = !{!"1438"}
!2307 = !{!"1439"}
!2308 = !{!"1440"}
!2309 = !{!"1441"}
!2310 = !DILocation(line: 178, column: 14, scope: !1780)
!2311 = !{!"1442"}
!2312 = !{!"1443"}
!2313 = !{!"1444"}
!2314 = !{!"1445"}
!2315 = !{!"1446"}
!2316 = !{!"1447"}
!2317 = !{!"1448"}
!2318 = !{!"1449"}
!2319 = !{!"1450"}
!2320 = !{!"1451"}
!2321 = !{!"1452"}
!2322 = !{!"1453"}
!2323 = !{!"1454"}
!2324 = !{!"1455"}
!2325 = !{!"1456"}
!2326 = !{!"1457"}
!2327 = !{!"1458"}
!2328 = !{!"1459"}
!2329 = !{!"1460"}
!2330 = !{!"1461"}
!2331 = !{!"1462"}
!2332 = !{!"1463"}
!2333 = !{!"1464"}
!2334 = !{!"1465"}
!2335 = !DILocation(line: 179, column: 14, scope: !1780)
!2336 = !{!"1466"}
!2337 = !{!"1467"}
!2338 = !{!"1468"}
!2339 = !{!"1469"}
!2340 = !{!"1470"}
!2341 = !{!"1471"}
!2342 = !{!"1472"}
!2343 = !{!"1473"}
!2344 = !{!"1474"}
!2345 = !{!"1475"}
!2346 = !{!"1476"}
!2347 = !{!"1477"}
!2348 = !{!"1478"}
!2349 = !{!"1479"}
!2350 = !{!"1480"}
!2351 = !{!"1481"}
!2352 = !{!"1482"}
!2353 = !{!"1483"}
!2354 = !{!"1484"}
!2355 = !{!"1485"}
!2356 = !{!"1486"}
!2357 = !{!"1487"}
!2358 = !{!"1488"}
!2359 = !{!"1489"}
!2360 = !DILocation(line: 180, column: 14, scope: !1780)
!2361 = !{!"1490"}
!2362 = !{!"1491"}
!2363 = !{!"1492"}
!2364 = !{!"1493"}
!2365 = !{!"1494"}
!2366 = !{!"1495"}
!2367 = !{!"1496"}
!2368 = !{!"1497"}
!2369 = !{!"1498"}
!2370 = !{!"1499"}
!2371 = !{!"1500"}
!2372 = !{!"1501"}
!2373 = !{!"1502"}
!2374 = !{!"1503"}
!2375 = !{!"1504"}
!2376 = !{!"1505"}
!2377 = !{!"1506"}
!2378 = !{!"1507"}
!2379 = !{!"1508"}
!2380 = !{!"1509"}
!2381 = !{!"1510"}
!2382 = !{!"1511"}
!2383 = !{!"1512"}
!2384 = !{!"1513"}
!2385 = !DILocation(line: 181, column: 14, scope: !1780)
!2386 = !{!"1514"}
!2387 = !{!"1515"}
!2388 = !{!"1516"}
!2389 = !{!"1517"}
!2390 = !{!"1518"}
!2391 = !{!"1519"}
!2392 = !{!"1520"}
!2393 = !{!"1521"}
!2394 = !{!"1522"}
!2395 = !{!"1523"}
!2396 = !{!"1524"}
!2397 = !{!"1525"}
!2398 = !{!"1526"}
!2399 = !{!"1527"}
!2400 = !{!"1528"}
!2401 = !{!"1529"}
!2402 = !{!"1530"}
!2403 = !{!"1531"}
!2404 = !{!"1532"}
!2405 = !{!"1533"}
!2406 = !{!"1534"}
!2407 = !{!"1535"}
!2408 = !{!"1536"}
!2409 = !{!"1537"}
!2410 = !DILocation(line: 182, column: 14, scope: !1780)
!2411 = !{!"1538"}
!2412 = !{!"1539"}
!2413 = !{!"1540"}
!2414 = !{!"1541"}
!2415 = !{!"1542"}
!2416 = !{!"1543"}
!2417 = !{!"1544"}
!2418 = !{!"1545"}
!2419 = !{!"1546"}
!2420 = !{!"1547"}
!2421 = !{!"1548"}
!2422 = !{!"1549"}
!2423 = !{!"1550"}
!2424 = !{!"1551"}
!2425 = !{!"1552"}
!2426 = !{!"1553"}
!2427 = !{!"1554"}
!2428 = !{!"1555"}
!2429 = !{!"1556"}
!2430 = !{!"1557"}
!2431 = !{!"1558"}
!2432 = !{!"1559"}
!2433 = !{!"1560"}
!2434 = !{!"1561"}
!2435 = !DILocation(line: 183, column: 14, scope: !1780)
!2436 = !{!"1562"}
!2437 = !{!"1563"}
!2438 = !{!"1564"}
!2439 = !{!"1565"}
!2440 = !{!"1566"}
!2441 = !{!"1567"}
!2442 = !{!"1568"}
!2443 = !{!"1569"}
!2444 = !{!"1570"}
!2445 = !{!"1571"}
!2446 = !{!"1572"}
!2447 = !{!"1573"}
!2448 = !{!"1574"}
!2449 = !{!"1575"}
!2450 = !{!"1576"}
!2451 = !{!"1577"}
!2452 = !{!"1578"}
!2453 = !{!"1579"}
!2454 = !{!"1580"}
!2455 = !{!"1581"}
!2456 = !{!"1582"}
!2457 = !{!"1583"}
!2458 = !{!"1584"}
!2459 = !{!"1585"}
!2460 = !DILocation(line: 184, column: 14, scope: !1780)
!2461 = !{!"1586"}
!2462 = !{!"1587"}
!2463 = !{!"1588"}
!2464 = !{!"1589"}
!2465 = !{!"1590"}
!2466 = !{!"1591"}
!2467 = !{!"1592"}
!2468 = !{!"1593"}
!2469 = !{!"1594"}
!2470 = !{!"1595"}
!2471 = !{!"1596"}
!2472 = !{!"1597"}
!2473 = !{!"1598"}
!2474 = !{!"1599"}
!2475 = !{!"1600"}
!2476 = !{!"1601"}
!2477 = !{!"1602"}
!2478 = !{!"1603"}
!2479 = !{!"1604"}
!2480 = !{!"1605"}
!2481 = !{!"1606"}
!2482 = !{!"1607"}
!2483 = !{!"1608"}
!2484 = !{!"1609"}
!2485 = !DILocation(line: 185, column: 15, scope: !1780)
!2486 = !{!"1610"}
!2487 = !{!"1611"}
!2488 = !{!"1612"}
!2489 = !{!"1613"}
!2490 = !{!"1614"}
!2491 = !{!"1615"}
!2492 = !{!"1616"}
!2493 = !{!"1617"}
!2494 = !{!"1618"}
!2495 = !{!"1619"}
!2496 = !{!"1620"}
!2497 = !{!"1621"}
!2498 = !{!"1622"}
!2499 = !{!"1623"}
!2500 = !{!"1624"}
!2501 = !{!"1625"}
!2502 = !{!"1626"}
!2503 = !{!"1627"}
!2504 = !{!"1628"}
!2505 = !{!"1629"}
!2506 = !{!"1630"}
!2507 = !{!"1631"}
!2508 = !{!"1632"}
!2509 = !{!"1633"}
!2510 = !DILocation(line: 186, column: 15, scope: !1780)
!2511 = !{!"1634"}
!2512 = !{!"1635"}
!2513 = !{!"1636"}
!2514 = !{!"1637"}
!2515 = !{!"1638"}
!2516 = !{!"1639"}
!2517 = !{!"1640"}
!2518 = !{!"1641"}
!2519 = !{!"1642"}
!2520 = !{!"1643"}
!2521 = !{!"1644"}
!2522 = !{!"1645"}
!2523 = !{!"1646"}
!2524 = !{!"1647"}
!2525 = !{!"1648"}
!2526 = !{!"1649"}
!2527 = !{!"1650"}
!2528 = !{!"1651"}
!2529 = !{!"1652"}
!2530 = !{!"1653"}
!2531 = !{!"1654"}
!2532 = !{!"1655"}
!2533 = !{!"1656"}
!2534 = !{!"1657"}
!2535 = !DILocation(line: 187, column: 15, scope: !1780)
!2536 = !{!"1658"}
!2537 = !{!"1659"}
!2538 = !{!"1660"}
!2539 = !{!"1661"}
!2540 = !{!"1662"}
!2541 = !{!"1663"}
!2542 = !{!"1664"}
!2543 = !{!"1665"}
!2544 = !{!"1666"}
!2545 = !{!"1667"}
!2546 = !{!"1668"}
!2547 = !{!"1669"}
!2548 = !{!"1670"}
!2549 = !{!"1671"}
!2550 = !{!"1672"}
!2551 = !{!"1673"}
!2552 = !{!"1674"}
!2553 = !{!"1675"}
!2554 = !{!"1676"}
!2555 = !{!"1677"}
!2556 = !{!"1678"}
!2557 = !{!"1679"}
!2558 = !{!"1680"}
!2559 = !{!"1681"}
!2560 = !DILocation(line: 188, column: 15, scope: !1780)
!2561 = !{!"1682"}
!2562 = !{!"1683"}
!2563 = !{!"1684"}
!2564 = !{!"1685"}
!2565 = !{!"1686"}
!2566 = !{!"1687"}
!2567 = !{!"1688"}
!2568 = !{!"1689"}
!2569 = !{!"1690"}
!2570 = !{!"1691"}
!2571 = !{!"1692"}
!2572 = !{!"1693"}
!2573 = !{!"1694"}
!2574 = !{!"1695"}
!2575 = !{!"1696"}
!2576 = !{!"1697"}
!2577 = !{!"1698"}
!2578 = !{!"1699"}
!2579 = !{!"1700"}
!2580 = !{!"1701"}
!2581 = !{!"1702"}
!2582 = !{!"1703"}
!2583 = !{!"1704"}
!2584 = !{!"1705"}
!2585 = !DILocation(line: 189, column: 15, scope: !1780)
!2586 = !{!"1706"}
!2587 = !{!"1707"}
!2588 = !{!"1708"}
!2589 = !{!"1709"}
!2590 = !{!"1710"}
!2591 = !{!"1711"}
!2592 = !{!"1712"}
!2593 = !{!"1713"}
!2594 = !{!"1714"}
!2595 = !{!"1715"}
!2596 = !{!"1716"}
!2597 = !{!"1717"}
!2598 = !{!"1718"}
!2599 = !{!"1719"}
!2600 = !{!"1720"}
!2601 = !{!"1721"}
!2602 = !{!"1722"}
!2603 = !{!"1723"}
!2604 = !{!"1724"}
!2605 = !{!"1725"}
!2606 = !{!"1726"}
!2607 = !{!"1727"}
!2608 = !{!"1728"}
!2609 = !{!"1729"}
!2610 = !DILocation(line: 190, column: 15, scope: !1780)
!2611 = !{!"1730"}
!2612 = !{!"1731"}
!2613 = !{!"1732"}
!2614 = !{!"1733"}
!2615 = !{!"1734"}
!2616 = !{!"1735"}
!2617 = !{!"1736"}
!2618 = !{!"1737"}
!2619 = !{!"1738"}
!2620 = !{!"1739"}
!2621 = !{!"1740"}
!2622 = !{!"1741"}
!2623 = !{!"1742"}
!2624 = !{!"1743"}
!2625 = !{!"1744"}
!2626 = !{!"1745"}
!2627 = !{!"1746"}
!2628 = !{!"1747"}
!2629 = !{!"1748"}
!2630 = !{!"1749"}
!2631 = !{!"1750"}
!2632 = !{!"1751"}
!2633 = !{!"1752"}
!2634 = !{!"1753"}
!2635 = !DILocation(line: 192, column: 15, scope: !1780)
!2636 = !{!"1754"}
!2637 = !{!"1755"}
!2638 = !DILocation(line: 194, column: 14, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 194, column: 13)
!2640 = !{!"1756"}
!2641 = !DILocation(line: 194, column: 13, scope: !1780)
!2642 = !{!"1757"}
!2643 = !{!"Tainted"}
!2644 = !DILocation(line: 195, column: 19, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2639, file: !107, line: 194, column: 19)
!2646 = !{!"1758"}
!2647 = !{!"1759"}
!2648 = !DILocation(line: 196, column: 9, scope: !2645)
!2649 = !{!"1760"}
!2650 = !{!"1761"}
!2651 = !{!"1762"}
!2652 = !DILocation(line: 199, column: 9, scope: !1780)
!2653 = !{!"1763"}
!2654 = !DILocation(line: 199, column: 9, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 199, column: 9)
!2656 = !{!"1764"}
!2657 = !{!"1765"}
!2658 = !{!"1766"}
!2659 = !{!"1767"}
!2660 = !{!"1768"}
!2661 = !{!"1769"}
!2662 = !{!"1770"}
!2663 = !{!"1771"}
!2664 = !{!"1772"}
!2665 = !{!"1773"}
!2666 = !{!"1774"}
!2667 = !{!"1775"}
!2668 = !{!"1776"}
!2669 = !{!"1777"}
!2670 = !{!"1778"}
!2671 = !{!"1779"}
!2672 = !{!"1780"}
!2673 = !{!"1781"}
!2674 = !{!"1782"}
!2675 = !{!"1783"}
!2676 = !{!"1784"}
!2677 = !{!"1785"}
!2678 = !{!"1786"}
!2679 = !{!"1787"}
!2680 = !{!"1788"}
!2681 = !{!"1789"}
!2682 = !{!"1790"}
!2683 = !{!"1791"}
!2684 = !{!"1792"}
!2685 = !{!"1793"}
!2686 = !{!"1794"}
!2687 = !{!"1795"}
!2688 = !DILocation(line: 200, column: 9, scope: !1780)
!2689 = !{!"1796"}
!2690 = !DILocation(line: 200, column: 9, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 200, column: 9)
!2692 = !{!"1797"}
!2693 = !{!"1798"}
!2694 = !{!"1799"}
!2695 = !{!"1800"}
!2696 = !{!"1801"}
!2697 = !{!"1802"}
!2698 = !{!"1803"}
!2699 = !{!"1804"}
!2700 = !{!"1805"}
!2701 = !{!"1806"}
!2702 = !{!"1807"}
!2703 = !{!"1808"}
!2704 = !{!"1809"}
!2705 = !{!"1810"}
!2706 = !{!"1811"}
!2707 = !{!"1812"}
!2708 = !{!"1813"}
!2709 = !{!"1814"}
!2710 = !{!"1815"}
!2711 = !{!"1816"}
!2712 = !{!"1817"}
!2713 = !{!"1818"}
!2714 = !{!"1819"}
!2715 = !{!"1820"}
!2716 = !{!"1821"}
!2717 = !{!"1822"}
!2718 = !{!"1823"}
!2719 = !{!"1824"}
!2720 = !{!"1825"}
!2721 = !{!"1826"}
!2722 = !{!"1827"}
!2723 = !{!"1828"}
!2724 = !DILocation(line: 201, column: 9, scope: !1780)
!2725 = !{!"1829"}
!2726 = !DILocation(line: 201, column: 9, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 201, column: 9)
!2728 = !{!"1830"}
!2729 = !{!"1831"}
!2730 = !{!"1832"}
!2731 = !{!"1833"}
!2732 = !{!"1834"}
!2733 = !{!"1835"}
!2734 = !{!"1836"}
!2735 = !{!"1837"}
!2736 = !{!"1838"}
!2737 = !{!"1839"}
!2738 = !{!"1840"}
!2739 = !{!"1841"}
!2740 = !{!"1842"}
!2741 = !{!"1843"}
!2742 = !{!"1844"}
!2743 = !{!"1845"}
!2744 = !{!"1846"}
!2745 = !{!"1847"}
!2746 = !{!"1848"}
!2747 = !{!"1849"}
!2748 = !{!"1850"}
!2749 = !{!"1851"}
!2750 = !{!"1852"}
!2751 = !{!"1853"}
!2752 = !{!"1854"}
!2753 = !{!"1855"}
!2754 = !{!"1856"}
!2755 = !{!"1857"}
!2756 = !{!"1858"}
!2757 = !{!"1859"}
!2758 = !{!"1860"}
!2759 = !{!"1861"}
!2760 = !DILocation(line: 202, column: 9, scope: !1780)
!2761 = !{!"1862"}
!2762 = !DILocation(line: 202, column: 9, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 202, column: 9)
!2764 = !{!"1863"}
!2765 = !{!"1864"}
!2766 = !{!"1865"}
!2767 = !{!"1866"}
!2768 = !{!"1867"}
!2769 = !{!"1868"}
!2770 = !{!"1869"}
!2771 = !{!"1870"}
!2772 = !{!"1871"}
!2773 = !{!"1872"}
!2774 = !{!"1873"}
!2775 = !{!"1874"}
!2776 = !{!"1875"}
!2777 = !{!"1876"}
!2778 = !{!"1877"}
!2779 = !{!"1878"}
!2780 = !{!"1879"}
!2781 = !{!"1880"}
!2782 = !{!"1881"}
!2783 = !{!"1882"}
!2784 = !{!"1883"}
!2785 = !{!"1884"}
!2786 = !{!"1885"}
!2787 = !{!"1886"}
!2788 = !{!"1887"}
!2789 = !{!"1888"}
!2790 = !{!"1889"}
!2791 = !{!"1890"}
!2792 = !{!"1891"}
!2793 = !{!"1892"}
!2794 = !{!"1893"}
!2795 = !{!"1894"}
!2796 = !DILocation(line: 203, column: 9, scope: !1780)
!2797 = !{!"1895"}
!2798 = !DILocation(line: 203, column: 9, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 203, column: 9)
!2800 = !{!"1896"}
!2801 = !{!"1897"}
!2802 = !{!"1898"}
!2803 = !{!"1899"}
!2804 = !{!"1900"}
!2805 = !{!"1901"}
!2806 = !{!"1902"}
!2807 = !{!"1903"}
!2808 = !{!"1904"}
!2809 = !{!"1905"}
!2810 = !{!"1906"}
!2811 = !{!"1907"}
!2812 = !{!"1908"}
!2813 = !{!"1909"}
!2814 = !{!"1910"}
!2815 = !{!"1911"}
!2816 = !{!"1912"}
!2817 = !{!"1913"}
!2818 = !{!"1914"}
!2819 = !{!"1915"}
!2820 = !{!"1916"}
!2821 = !{!"1917"}
!2822 = !{!"1918"}
!2823 = !{!"1919"}
!2824 = !{!"1920"}
!2825 = !{!"1921"}
!2826 = !{!"1922"}
!2827 = !{!"1923"}
!2828 = !{!"1924"}
!2829 = !{!"1925"}
!2830 = !{!"1926"}
!2831 = !{!"1927"}
!2832 = !DILocation(line: 204, column: 9, scope: !1780)
!2833 = !{!"1928"}
!2834 = !DILocation(line: 204, column: 9, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 204, column: 9)
!2836 = !{!"1929"}
!2837 = !{!"1930"}
!2838 = !{!"1931"}
!2839 = !{!"1932"}
!2840 = !{!"1933"}
!2841 = !{!"1934"}
!2842 = !{!"1935"}
!2843 = !{!"1936"}
!2844 = !{!"1937"}
!2845 = !{!"1938"}
!2846 = !{!"1939"}
!2847 = !{!"1940"}
!2848 = !{!"1941"}
!2849 = !{!"1942"}
!2850 = !{!"1943"}
!2851 = !{!"1944"}
!2852 = !{!"1945"}
!2853 = !{!"1946"}
!2854 = !{!"1947"}
!2855 = !{!"1948"}
!2856 = !{!"1949"}
!2857 = !{!"1950"}
!2858 = !{!"1951"}
!2859 = !{!"1952"}
!2860 = !{!"1953"}
!2861 = !{!"1954"}
!2862 = !{!"1955"}
!2863 = !{!"1956"}
!2864 = !{!"1957"}
!2865 = !{!"1958"}
!2866 = !{!"1959"}
!2867 = !{!"1960"}
!2868 = !DILocation(line: 205, column: 9, scope: !1780)
!2869 = !{!"1961"}
!2870 = !DILocation(line: 205, column: 9, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 205, column: 9)
!2872 = !{!"1962"}
!2873 = !{!"1963"}
!2874 = !{!"1964"}
!2875 = !{!"1965"}
!2876 = !{!"1966"}
!2877 = !{!"1967"}
!2878 = !{!"1968"}
!2879 = !{!"1969"}
!2880 = !{!"1970"}
!2881 = !{!"1971"}
!2882 = !{!"1972"}
!2883 = !{!"1973"}
!2884 = !{!"1974"}
!2885 = !{!"1975"}
!2886 = !{!"1976"}
!2887 = !{!"1977"}
!2888 = !{!"1978"}
!2889 = !{!"1979"}
!2890 = !{!"1980"}
!2891 = !{!"1981"}
!2892 = !{!"1982"}
!2893 = !{!"1983"}
!2894 = !{!"1984"}
!2895 = !{!"1985"}
!2896 = !{!"1986"}
!2897 = !{!"1987"}
!2898 = !{!"1988"}
!2899 = !{!"1989"}
!2900 = !{!"1990"}
!2901 = !{!"1991"}
!2902 = !{!"1992"}
!2903 = !{!"1993"}
!2904 = !DILocation(line: 206, column: 9, scope: !1780)
!2905 = !{!"1994"}
!2906 = !DILocation(line: 206, column: 9, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 206, column: 9)
!2908 = !{!"1995"}
!2909 = !{!"1996"}
!2910 = !{!"1997"}
!2911 = !{!"1998"}
!2912 = !{!"1999"}
!2913 = !{!"2000"}
!2914 = !{!"2001"}
!2915 = !{!"2002"}
!2916 = !{!"2003"}
!2917 = !{!"2004"}
!2918 = !{!"2005"}
!2919 = !{!"2006"}
!2920 = !{!"2007"}
!2921 = !{!"2008"}
!2922 = !{!"2009"}
!2923 = !{!"2010"}
!2924 = !{!"2011"}
!2925 = !{!"2012"}
!2926 = !{!"2013"}
!2927 = !{!"2014"}
!2928 = !{!"2015"}
!2929 = !{!"2016"}
!2930 = !{!"2017"}
!2931 = !{!"2018"}
!2932 = !{!"2019"}
!2933 = !{!"2020"}
!2934 = !{!"2021"}
!2935 = !{!"2022"}
!2936 = !{!"2023"}
!2937 = !{!"2024"}
!2938 = !{!"2025"}
!2939 = !{!"2026"}
!2940 = !DILocation(line: 207, column: 9, scope: !1780)
!2941 = !{!"2027"}
!2942 = !DILocation(line: 207, column: 9, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 207, column: 9)
!2944 = !{!"2028"}
!2945 = !{!"2029"}
!2946 = !{!"2030"}
!2947 = !{!"2031"}
!2948 = !{!"2032"}
!2949 = !{!"2033"}
!2950 = !{!"2034"}
!2951 = !{!"2035"}
!2952 = !{!"2036"}
!2953 = !{!"2037"}
!2954 = !{!"2038"}
!2955 = !{!"2039"}
!2956 = !{!"2040"}
!2957 = !{!"2041"}
!2958 = !{!"2042"}
!2959 = !{!"2043"}
!2960 = !{!"2044"}
!2961 = !{!"2045"}
!2962 = !{!"2046"}
!2963 = !{!"2047"}
!2964 = !{!"2048"}
!2965 = !{!"2049"}
!2966 = !{!"2050"}
!2967 = !{!"2051"}
!2968 = !{!"2052"}
!2969 = !{!"2053"}
!2970 = !{!"2054"}
!2971 = !{!"2055"}
!2972 = !{!"2056"}
!2973 = !{!"2057"}
!2974 = !{!"2058"}
!2975 = !{!"2059"}
!2976 = !DILocation(line: 208, column: 9, scope: !1780)
!2977 = !{!"2060"}
!2978 = !DILocation(line: 208, column: 9, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 208, column: 9)
!2980 = !{!"2061"}
!2981 = !{!"2062"}
!2982 = !{!"2063"}
!2983 = !{!"2064"}
!2984 = !{!"2065"}
!2985 = !{!"2066"}
!2986 = !{!"2067"}
!2987 = !{!"2068"}
!2988 = !{!"2069"}
!2989 = !{!"2070"}
!2990 = !{!"2071"}
!2991 = !{!"2072"}
!2992 = !{!"2073"}
!2993 = !{!"2074"}
!2994 = !{!"2075"}
!2995 = !{!"2076"}
!2996 = !{!"2077"}
!2997 = !{!"2078"}
!2998 = !{!"2079"}
!2999 = !{!"2080"}
!3000 = !{!"2081"}
!3001 = !{!"2082"}
!3002 = !{!"2083"}
!3003 = !{!"2084"}
!3004 = !{!"2085"}
!3005 = !{!"2086"}
!3006 = !{!"2087"}
!3007 = !{!"2088"}
!3008 = !{!"2089"}
!3009 = !{!"2090"}
!3010 = !{!"2091"}
!3011 = !{!"2092"}
!3012 = !DILocation(line: 209, column: 9, scope: !1780)
!3013 = !{!"2093"}
!3014 = !DILocation(line: 209, column: 9, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 209, column: 9)
!3016 = !{!"2094"}
!3017 = !{!"2095"}
!3018 = !{!"2096"}
!3019 = !{!"2097"}
!3020 = !{!"2098"}
!3021 = !{!"2099"}
!3022 = !{!"2100"}
!3023 = !{!"2101"}
!3024 = !{!"2102"}
!3025 = !{!"2103"}
!3026 = !{!"2104"}
!3027 = !{!"2105"}
!3028 = !{!"2106"}
!3029 = !{!"2107"}
!3030 = !{!"2108"}
!3031 = !{!"2109"}
!3032 = !{!"2110"}
!3033 = !{!"2111"}
!3034 = !{!"2112"}
!3035 = !{!"2113"}
!3036 = !{!"2114"}
!3037 = !{!"2115"}
!3038 = !{!"2116"}
!3039 = !{!"2117"}
!3040 = !{!"2118"}
!3041 = !{!"2119"}
!3042 = !{!"2120"}
!3043 = !{!"2121"}
!3044 = !{!"2122"}
!3045 = !{!"2123"}
!3046 = !{!"2124"}
!3047 = !{!"2125"}
!3048 = !DILocation(line: 210, column: 9, scope: !1780)
!3049 = !{!"2126"}
!3050 = !DILocation(line: 210, column: 9, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 210, column: 9)
!3052 = !{!"2127"}
!3053 = !{!"2128"}
!3054 = !{!"2129"}
!3055 = !{!"2130"}
!3056 = !{!"2131"}
!3057 = !{!"2132"}
!3058 = !{!"2133"}
!3059 = !{!"2134"}
!3060 = !{!"2135"}
!3061 = !{!"2136"}
!3062 = !{!"2137"}
!3063 = !{!"2138"}
!3064 = !{!"2139"}
!3065 = !{!"2140"}
!3066 = !{!"2141"}
!3067 = !{!"2142"}
!3068 = !{!"2143"}
!3069 = !{!"2144"}
!3070 = !{!"2145"}
!3071 = !{!"2146"}
!3072 = !{!"2147"}
!3073 = !{!"2148"}
!3074 = !{!"2149"}
!3075 = !{!"2150"}
!3076 = !{!"2151"}
!3077 = !{!"2152"}
!3078 = !{!"2153"}
!3079 = !{!"2154"}
!3080 = !{!"2155"}
!3081 = !{!"2156"}
!3082 = !{!"2157"}
!3083 = !{!"2158"}
!3084 = !DILocation(line: 211, column: 9, scope: !1780)
!3085 = !{!"2159"}
!3086 = !DILocation(line: 211, column: 9, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 211, column: 9)
!3088 = !{!"2160"}
!3089 = !{!"2161"}
!3090 = !{!"2162"}
!3091 = !{!"2163"}
!3092 = !{!"2164"}
!3093 = !{!"2165"}
!3094 = !{!"2166"}
!3095 = !{!"2167"}
!3096 = !{!"2168"}
!3097 = !{!"2169"}
!3098 = !{!"2170"}
!3099 = !{!"2171"}
!3100 = !{!"2172"}
!3101 = !{!"2173"}
!3102 = !{!"2174"}
!3103 = !{!"2175"}
!3104 = !{!"2176"}
!3105 = !{!"2177"}
!3106 = !{!"2178"}
!3107 = !{!"2179"}
!3108 = !{!"2180"}
!3109 = !{!"2181"}
!3110 = !{!"2182"}
!3111 = !{!"2183"}
!3112 = !{!"2184"}
!3113 = !{!"2185"}
!3114 = !{!"2186"}
!3115 = !{!"2187"}
!3116 = !{!"2188"}
!3117 = !{!"2189"}
!3118 = !{!"2190"}
!3119 = !{!"2191"}
!3120 = !DILocation(line: 212, column: 9, scope: !1780)
!3121 = !{!"2192"}
!3122 = !DILocation(line: 212, column: 9, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 212, column: 9)
!3124 = !{!"2193"}
!3125 = !{!"2194"}
!3126 = !{!"2195"}
!3127 = !{!"2196"}
!3128 = !{!"2197"}
!3129 = !{!"2198"}
!3130 = !{!"2199"}
!3131 = !{!"2200"}
!3132 = !{!"2201"}
!3133 = !{!"2202"}
!3134 = !{!"2203"}
!3135 = !{!"2204"}
!3136 = !{!"2205"}
!3137 = !{!"2206"}
!3138 = !{!"2207"}
!3139 = !{!"2208"}
!3140 = !{!"2209"}
!3141 = !{!"2210"}
!3142 = !{!"2211"}
!3143 = !{!"2212"}
!3144 = !{!"2213"}
!3145 = !{!"2214"}
!3146 = !{!"2215"}
!3147 = !{!"2216"}
!3148 = !{!"2217"}
!3149 = !{!"2218"}
!3150 = !{!"2219"}
!3151 = !{!"2220"}
!3152 = !{!"2221"}
!3153 = !{!"2222"}
!3154 = !{!"2223"}
!3155 = !{!"2224"}
!3156 = !DILocation(line: 213, column: 9, scope: !1780)
!3157 = !{!"2225"}
!3158 = !DILocation(line: 213, column: 9, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 213, column: 9)
!3160 = !{!"2226"}
!3161 = !{!"2227"}
!3162 = !{!"2228"}
!3163 = !{!"2229"}
!3164 = !{!"2230"}
!3165 = !{!"2231"}
!3166 = !{!"2232"}
!3167 = !{!"2233"}
!3168 = !{!"2234"}
!3169 = !{!"2235"}
!3170 = !{!"2236"}
!3171 = !{!"2237"}
!3172 = !{!"2238"}
!3173 = !{!"2239"}
!3174 = !{!"2240"}
!3175 = !{!"2241"}
!3176 = !{!"2242"}
!3177 = !{!"2243"}
!3178 = !{!"2244"}
!3179 = !{!"2245"}
!3180 = !{!"2246"}
!3181 = !{!"2247"}
!3182 = !{!"2248"}
!3183 = !{!"2249"}
!3184 = !{!"2250"}
!3185 = !{!"2251"}
!3186 = !{!"2252"}
!3187 = !{!"2253"}
!3188 = !{!"2254"}
!3189 = !{!"2255"}
!3190 = !{!"2256"}
!3191 = !{!"2257"}
!3192 = !DILocation(line: 214, column: 9, scope: !1780)
!3193 = !{!"2258"}
!3194 = !DILocation(line: 214, column: 9, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 214, column: 9)
!3196 = !{!"2259"}
!3197 = !{!"2260"}
!3198 = !{!"2261"}
!3199 = !{!"2262"}
!3200 = !{!"2263"}
!3201 = !{!"2264"}
!3202 = !{!"2265"}
!3203 = !{!"2266"}
!3204 = !{!"2267"}
!3205 = !{!"2268"}
!3206 = !{!"2269"}
!3207 = !{!"2270"}
!3208 = !{!"2271"}
!3209 = !{!"2272"}
!3210 = !{!"2273"}
!3211 = !{!"2274"}
!3212 = !{!"2275"}
!3213 = !{!"2276"}
!3214 = !{!"2277"}
!3215 = !{!"2278"}
!3216 = !{!"2279"}
!3217 = !{!"2280"}
!3218 = !{!"2281"}
!3219 = !{!"2282"}
!3220 = !{!"2283"}
!3221 = !{!"2284"}
!3222 = !{!"2285"}
!3223 = !{!"2286"}
!3224 = !{!"2287"}
!3225 = !{!"2288"}
!3226 = !{!"2289"}
!3227 = !{!"2290"}
!3228 = !DILocation(line: 216, column: 19, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !1780, file: !107, line: 216, column: 13)
!3230 = !{!"2291"}
!3231 = !DILocation(line: 216, column: 13, scope: !1780)
!3232 = !{!"2292"}
!3233 = !DILocation(line: 217, column: 23, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !107, line: 217, column: 17)
!3235 = distinct !DILexicalBlock(scope: !3229, file: !107, line: 216, column: 26)
!3236 = !{!"2293"}
!3237 = !DILocation(line: 217, column: 17, scope: !3235)
!3238 = !{!"2294"}
!3239 = !{!"2295"}
!3240 = !DILocation(line: 218, column: 22, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !107, line: 218, column: 17)
!3242 = distinct !DILexicalBlock(scope: !3234, file: !107, line: 217, column: 29)
!3243 = !{!"2296"}
!3244 = !DILocation(line: 0, scope: !3241)
!3245 = !{!"2297"}
!3246 = !{!"2298"}
!3247 = !DILocation(line: 218, column: 33, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3241, file: !107, line: 218, column: 17)
!3249 = !{!"2299"}
!3250 = !DILocation(line: 218, column: 31, scope: !3248)
!3251 = !{!"2300"}
!3252 = !DILocation(line: 218, column: 17, scope: !3241)
!3253 = !{!"2301"}
!3254 = !DILocation(line: 219, column: 34, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3248, file: !107, line: 218, column: 60)
!3256 = !{!"2302"}
!3257 = !{!"2303"}
!3258 = !{!"2304"}
!3259 = !DILocation(line: 219, column: 21, scope: !3255)
!3260 = !{!"2305"}
!3261 = !{!"2306"}
!3262 = !DILocation(line: 219, column: 32, scope: !3255)
!3263 = !{!"2307"}
!3264 = !DILocation(line: 220, column: 17, scope: !3255)
!3265 = !{!"2308"}
!3266 = !DILocation(line: 218, column: 55, scope: !3248)
!3267 = !{!"2309"}
!3268 = !{!"2310"}
!3269 = !DILocation(line: 218, column: 17, scope: !3248)
!3270 = distinct !{!3270, !3252, !3271, !329}
!3271 = !DILocation(line: 220, column: 17, scope: !3241)
!3272 = !{!"2311"}
!3273 = !DILocation(line: 221, column: 13, scope: !3242)
!3274 = !{!"2312"}
!3275 = !DILocation(line: 222, column: 16, scope: !3235)
!3276 = !{!"2313"}
!3277 = !DILocation(line: 222, column: 13, scope: !3235)
!3278 = !{!"2314"}
!3279 = !DILocation(line: 222, column: 26, scope: !3235)
!3280 = !{!"2315"}
!3281 = !DILocation(line: 223, column: 16, scope: !3235)
!3282 = !{!"2316"}
!3283 = !DILocation(line: 223, column: 13, scope: !3235)
!3284 = !{!"2317"}
!3285 = !DILocation(line: 223, column: 26, scope: !3235)
!3286 = !{!"2318"}
!3287 = !DILocation(line: 224, column: 13, scope: !3235)
!3288 = !{!"2319"}
!3289 = !DILocation(line: 226, column: 15, scope: !1780)
!3290 = !{!"2320"}
!3291 = !{!"2321"}
!3292 = !DILocation(line: 227, column: 11, scope: !1780)
!3293 = !{!"2322"}
!3294 = !{!"2323"}
!3295 = !DILocation(line: 228, column: 11, scope: !1780)
!3296 = !{!"2324"}
!3297 = !{!"2325"}
!3298 = !DILocation(line: 123, column: 5, scope: !1781)
!3299 = distinct !{!3299, !3300, !3301}
!3300 = !DILocation(line: 123, column: 5, scope: !1782)
!3301 = !DILocation(line: 229, column: 5, scope: !1782)
!3302 = !{!"2326"}
!3303 = !DILocation(line: 230, column: 1, scope: !1621)
!3304 = !{!"2327"}
!3305 = distinct !DISubprogram(name: "crypto_stream_chacha20_ref_xor_ic", scope: !107, file: !107, line: 252, type: !1013, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!3306 = !{!"2328"}
!3307 = !{!"2329"}
!3308 = !DILocalVariable(name: "c", arg: 1, scope: !3305, file: !107, line: 252, type: !66)
!3309 = !DILocation(line: 0, scope: !3305)
!3310 = !{!"2330"}
!3311 = !DILocalVariable(name: "m", arg: 2, scope: !3305, file: !107, line: 252, type: !126)
!3312 = !{!"2331"}
!3313 = !DILocalVariable(name: "mlen", arg: 3, scope: !3305, file: !107, line: 253, type: !141)
!3314 = !{!"2332"}
!3315 = !DILocalVariable(name: "n", arg: 4, scope: !3305, file: !107, line: 254, type: !126)
!3316 = !{!"2333"}
!3317 = !DILocalVariable(name: "ic", arg: 5, scope: !3305, file: !107, line: 254, type: !1015)
!3318 = !{!"2334"}
!3319 = !DILocalVariable(name: "k", arg: 6, scope: !3305, file: !107, line: 255, type: !126)
!3320 = !{!"2335"}
!3321 = !DILocalVariable(name: "ctx", scope: !3305, file: !107, line: 257, type: !1064)
!3322 = !DILocation(line: 257, column: 23, scope: !3305)
!3323 = !{!"2336"}
!3324 = !DILocalVariable(name: "ic_bytes", scope: !3305, file: !107, line: 258, type: !3325)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !3326)
!3326 = !{!3327}
!3327 = !DISubrange(count: 8)
!3328 = !DILocation(line: 258, column: 23, scope: !3305)
!3329 = !{!"2337"}
!3330 = !DILocation(line: 262, column: 10, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3305, file: !107, line: 262, column: 9)
!3332 = !{!"2338"}
!3333 = !DILocation(line: 262, column: 9, scope: !3305)
!3334 = !{!"2339"}
!3335 = !DILocation(line: 263, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3331, file: !107, line: 262, column: 16)
!3337 = !{!"2340"}
!3338 = !DILocation(line: 265, column: 15, scope: !3305)
!3339 = !{!"2341"}
!3340 = !{!"2342"}
!3341 = !DILocalVariable(name: "ic_high", scope: !3305, file: !107, line: 259, type: !7)
!3342 = !{!"2343"}
!3343 = !DILocation(line: 266, column: 14, scope: !3305)
!3344 = !{!"2344"}
!3345 = !DILocalVariable(name: "ic_low", scope: !3305, file: !107, line: 260, type: !7)
!3346 = !{!"2345"}
!3347 = !DILocation(line: 267, column: 5, scope: !3305)
!3348 = !{!"2346"}
!3349 = !DILocation(line: 267, column: 5, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3305, file: !107, line: 267, column: 5)
!3351 = !{!"2347"}
!3352 = !{!"2348"}
!3353 = !{!"2349"}
!3354 = !{!"2350"}
!3355 = !{!"2351"}
!3356 = !{!"2352"}
!3357 = !{!"2353"}
!3358 = !{!"2354"}
!3359 = !{!"2355"}
!3360 = !{!"2356"}
!3361 = !{!"2357"}
!3362 = !{!"2358"}
!3363 = !{!"2359"}
!3364 = !{!"2360"}
!3365 = !{!"2361"}
!3366 = !{!"2362"}
!3367 = !{!"2363"}
!3368 = !{!"2364"}
!3369 = !{!"2365"}
!3370 = !{!"2366"}
!3371 = !{!"2367"}
!3372 = !{!"2368"}
!3373 = !{!"2369"}
!3374 = !{!"2370"}
!3375 = !{!"2371"}
!3376 = !{!"2372"}
!3377 = !{!"2373"}
!3378 = !{!"2374"}
!3379 = !{!"2375"}
!3380 = !{!"2376"}
!3381 = !{!"2377"}
!3382 = !{!"2378"}
!3383 = !DILocation(line: 268, column: 5, scope: !3305)
!3384 = !{!"2379"}
!3385 = !DILocation(line: 268, column: 5, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3305, file: !107, line: 268, column: 5)
!3387 = !{!"2380"}
!3388 = !{!"2381"}
!3389 = !{!"2382"}
!3390 = !{!"2383"}
!3391 = !{!"2384"}
!3392 = !{!"2385"}
!3393 = !{!"2386"}
!3394 = !{!"2387"}
!3395 = !{!"2388"}
!3396 = !{!"2389"}
!3397 = !{!"2390"}
!3398 = !{!"2391"}
!3399 = !{!"2392"}
!3400 = !{!"2393"}
!3401 = !{!"2394"}
!3402 = !{!"2395"}
!3403 = !{!"2396"}
!3404 = !{!"2397"}
!3405 = !{!"2398"}
!3406 = !{!"2399"}
!3407 = !{!"2400"}
!3408 = !{!"2401"}
!3409 = !{!"2402"}
!3410 = !{!"2403"}
!3411 = !{!"2404"}
!3412 = !{!"2405"}
!3413 = !{!"2406"}
!3414 = !{!"2407"}
!3415 = !{!"2408"}
!3416 = !{!"2409"}
!3417 = !{!"2410"}
!3418 = !{!"2411"}
!3419 = !DILocation(line: 269, column: 5, scope: !3305)
!3420 = !{!"2412"}
!3421 = !DILocation(line: 270, column: 29, scope: !3305)
!3422 = !{!"2413"}
!3423 = !DILocation(line: 270, column: 5, scope: !3305)
!3424 = !{!"2414"}
!3425 = !DILocation(line: 271, column: 5, scope: !3305)
!3426 = !{!"2415"}
!3427 = !DILocation(line: 272, column: 20, scope: !3305)
!3428 = !{!"2416"}
!3429 = !DILocation(line: 272, column: 5, scope: !3305)
!3430 = !{!"2417"}
!3431 = !DILocation(line: 273, column: 20, scope: !3305)
!3432 = !{!"2418"}
!3433 = !DILocation(line: 273, column: 5, scope: !3305)
!3434 = !{!"2419"}
!3435 = !DILocation(line: 275, column: 5, scope: !3305)
!3436 = !{!"2420"}
!3437 = !DILocation(line: 276, column: 1, scope: !3305)
!3438 = !{!"2421"}
!3439 = distinct !DISubprogram(name: "sodium_memzero", scope: !122, file: !122, line: 58, type: !44, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!3440 = !DILocalVariable(name: "pnt", arg: 1, scope: !3439, file: !122, line: 58, type: !46)
!3441 = !DILocation(line: 0, scope: !3439)
!3442 = !{!"2422"}
!3443 = !DILocalVariable(name: "len", arg: 2, scope: !3439, file: !122, line: 58, type: !47)
!3444 = !{!"2423"}
!3445 = !DILocalVariable(name: "pnt_", scope: !3439, file: !122, line: 72, type: !124)
!3446 = !{!"2424"}
!3447 = !DILocalVariable(name: "i", scope: !3439, file: !122, line: 73, type: !12)
!3448 = !{!"2425"}
!3449 = !DILocation(line: 75, column: 5, scope: !3439)
!3450 = !{!"2426"}
!3451 = !{!"2427"}
!3452 = !{!"2428"}
!3453 = !DILocation(line: 75, column: 14, scope: !3439)
!3454 = !{!"2429"}
!3455 = !{!"2430"}
!3456 = !DILocation(line: 76, column: 15, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3439, file: !122, line: 75, column: 21)
!3458 = !{!"2431"}
!3459 = !{!"2432"}
!3460 = !DILocation(line: 76, column: 9, scope: !3457)
!3461 = !{!"2433"}
!3462 = !DILocation(line: 76, column: 19, scope: !3457)
!3463 = !{!"2434"}
!3464 = distinct !{!3464, !3449, !3465, !329}
!3465 = !DILocation(line: 77, column: 5, scope: !3439)
!3466 = !{!"2435"}
!3467 = !DILocation(line: 79, column: 1, scope: !3439)
!3468 = !{!"2436"}
!3469 = distinct !DISubprogram(name: "sodium_memcmp", scope: !122, file: !122, line: 82, type: !3470, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!52, !3472, !3472, !12}
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3473)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3475 = !DILocalVariable(name: "b1_", arg: 1, scope: !3469, file: !122, line: 82, type: !3472)
!3476 = !DILocation(line: 0, scope: !3469)
!3477 = !{!"2437"}
!3478 = !DILocalVariable(name: "b2_", arg: 2, scope: !3469, file: !122, line: 82, type: !3472)
!3479 = !{!"2438"}
!3480 = !DILocalVariable(name: "len", arg: 3, scope: !3469, file: !122, line: 82, type: !12)
!3481 = !{!"2439"}
!3482 = !DILocalVariable(name: "b1", scope: !3469, file: !122, line: 84, type: !126)
!3483 = !{!"2440"}
!3484 = !DILocalVariable(name: "b2", scope: !3469, file: !122, line: 85, type: !126)
!3485 = !{!"2441"}
!3486 = !DILocalVariable(name: "d", scope: !3469, file: !122, line: 87, type: !67)
!3487 = !{!"2442"}
!3488 = !DILocalVariable(name: "i", scope: !3469, file: !122, line: 86, type: !12)
!3489 = !{!"2443"}
!3490 = !DILocation(line: 89, column: 10, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3469, file: !122, line: 89, column: 5)
!3492 = !{!"2444"}
!3493 = !DILocation(line: 0, scope: !3491)
!3494 = !{!"2445"}
!3495 = !{!"2446"}
!3496 = !{!"2447"}
!3497 = !{!"2448"}
!3498 = !DILocation(line: 89, column: 20, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3491, file: !122, line: 89, column: 5)
!3500 = !{!"2449"}
!3501 = !DILocation(line: 89, column: 5, scope: !3491)
!3502 = !{!"2450"}
!3503 = !DILocation(line: 90, column: 14, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3499, file: !122, line: 89, column: 32)
!3505 = !{!"2451"}
!3506 = !{!"2452"}
!3507 = !{!"2453"}
!3508 = !DILocation(line: 90, column: 22, scope: !3504)
!3509 = !{!"2454"}
!3510 = !{!"2455"}
!3511 = !{!"2456"}
!3512 = !DILocation(line: 90, column: 20, scope: !3504)
!3513 = !{!"2457"}
!3514 = !DILocation(line: 90, column: 11, scope: !3504)
!3515 = !{!"2458"}
!3516 = !{!"2459"}
!3517 = !{!"2460"}
!3518 = !{!"2461"}
!3519 = !DILocation(line: 91, column: 5, scope: !3504)
!3520 = !{!"2462"}
!3521 = !DILocation(line: 89, column: 28, scope: !3499)
!3522 = !{!"2463"}
!3523 = !{!"2464"}
!3524 = !DILocation(line: 89, column: 5, scope: !3499)
!3525 = distinct !{!3525, !3501, !3526, !329}
!3526 = !DILocation(line: 91, column: 5, scope: !3491)
!3527 = !{!"2465"}
!3528 = !DILocation(line: 92, column: 26, scope: !3469)
!3529 = !{!"2466"}
!3530 = !DILocation(line: 92, column: 28, scope: !3469)
!3531 = !{!"2467"}
!3532 = !DILocation(line: 92, column: 33, scope: !3469)
!3533 = !{!"2468"}
!3534 = !DILocation(line: 92, column: 22, scope: !3469)
!3535 = !{!"2469"}
!3536 = !DILocation(line: 92, column: 40, scope: !3469)
!3537 = !{!"2470"}
!3538 = !DILocation(line: 92, column: 5, scope: !3469)
!3539 = !{!"2471"}
!3540 = distinct !DISubprogram(name: "sodium_bin2hex", scope: !122, file: !122, line: 97, type: !3541, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!3543, !3544, !47, !3545, !47}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3543)
!3545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!3546 = !DILocalVariable(name: "hex", arg: 1, scope: !3540, file: !122, line: 97, type: !3544)
!3547 = !DILocation(line: 0, scope: !3540)
!3548 = !{!"2472"}
!3549 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !3540, file: !122, line: 97, type: !47)
!3550 = !{!"2473"}
!3551 = !DILocalVariable(name: "bin", arg: 3, scope: !3540, file: !122, line: 98, type: !3545)
!3552 = !{!"2474"}
!3553 = !DILocalVariable(name: "bin_len", arg: 4, scope: !3540, file: !122, line: 98, type: !47)
!3554 = !{!"2475"}
!3555 = !DILocalVariable(name: "i", scope: !3540, file: !122, line: 100, type: !12)
!3556 = !{!"2476"}
!3557 = !DILocation(line: 105, column: 17, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3540, file: !122, line: 105, column: 9)
!3559 = !{!"2477"}
!3560 = !DILocation(line: 105, column: 33, scope: !3558)
!3561 = !{!"2478"}
!3562 = !DILocation(line: 105, column: 57, scope: !3558)
!3563 = !{!"2479"}
!3564 = !DILocation(line: 105, column: 47, scope: !3558)
!3565 = !{!"2480"}
!3566 = !DILocation(line: 105, column: 9, scope: !3540)
!3567 = !{!"2481"}
!3568 = !DILocation(line: 106, column: 9, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3558, file: !122, line: 105, column: 63)
!3570 = !{!"2482"}
!3571 = !{!"2483"}
!3572 = !DILocation(line: 108, column: 5, scope: !3540)
!3573 = !{!"2484"}
!3574 = !{!"2485"}
!3575 = !{!"2486"}
!3576 = !DILocation(line: 108, column: 14, scope: !3540)
!3577 = !{!"2487"}
!3578 = !{!"2488"}
!3579 = !DILocation(line: 109, column: 13, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3540, file: !122, line: 108, column: 25)
!3581 = !{!"2489"}
!3582 = !{!"2490"}
!3583 = !{!"2491"}
!3584 = !DILocation(line: 109, column: 20, scope: !3580)
!3585 = !{!"2492"}
!3586 = !DILocalVariable(name: "c", scope: !3540, file: !122, line: 103, type: !52)
!3587 = !{!"2493"}
!3588 = !DILocation(line: 110, column: 13, scope: !3580)
!3589 = !{!"2494"}
!3590 = !{!"2495"}
!3591 = !{!"2496"}
!3592 = !DILocation(line: 110, column: 20, scope: !3580)
!3593 = !{!"2497"}
!3594 = !DILocalVariable(name: "b", scope: !3540, file: !122, line: 102, type: !52)
!3595 = !{!"2498"}
!3596 = !DILocation(line: 111, column: 34, scope: !3580)
!3597 = !{!"2499"}
!3598 = !DILocation(line: 111, column: 45, scope: !3580)
!3599 = !{!"2500"}
!3600 = !DILocation(line: 111, column: 52, scope: !3580)
!3601 = !{!"2501"}
!3602 = !DILocation(line: 111, column: 58, scope: !3580)
!3603 = !{!"2502"}
!3604 = !DILocation(line: 111, column: 38, scope: !3580)
!3605 = !{!"2503"}
!3606 = !DILocation(line: 111, column: 13, scope: !3580)
!3607 = !{!"2504"}
!3608 = !{!"2505"}
!3609 = !DILocation(line: 111, column: 67, scope: !3580)
!3610 = !{!"2506"}
!3611 = !DILocation(line: 112, column: 34, scope: !3580)
!3612 = !{!"2507"}
!3613 = !DILocation(line: 112, column: 45, scope: !3580)
!3614 = !{!"2508"}
!3615 = !DILocation(line: 112, column: 52, scope: !3580)
!3616 = !{!"2509"}
!3617 = !DILocation(line: 112, column: 58, scope: !3580)
!3618 = !{!"2510"}
!3619 = !DILocation(line: 112, column: 38, scope: !3580)
!3620 = !{!"2511"}
!3621 = !DILocation(line: 112, column: 13, scope: !3580)
!3622 = !{!"2512"}
!3623 = !{!"2513"}
!3624 = !DILocation(line: 111, column: 72, scope: !3580)
!3625 = !{!"2514"}
!3626 = !DILocalVariable(name: "x", scope: !3540, file: !122, line: 101, type: !11)
!3627 = !{!"2515"}
!3628 = !DILocation(line: 113, column: 23, scope: !3580)
!3629 = !{!"2516"}
!3630 = !DILocation(line: 113, column: 15, scope: !3580)
!3631 = !{!"2517"}
!3632 = !DILocation(line: 113, column: 9, scope: !3580)
!3633 = !{!"2518"}
!3634 = !DILocation(line: 113, column: 21, scope: !3580)
!3635 = !{!"2519"}
!3636 = !DILocation(line: 114, column: 11, scope: !3580)
!3637 = !{!"2520"}
!3638 = !{!"2521"}
!3639 = !DILocation(line: 115, column: 28, scope: !3580)
!3640 = !{!"2522"}
!3641 = !DILocation(line: 115, column: 15, scope: !3580)
!3642 = !{!"2523"}
!3643 = !DILocation(line: 115, column: 20, scope: !3580)
!3644 = !{!"2524"}
!3645 = !DILocation(line: 115, column: 9, scope: !3580)
!3646 = !{!"2525"}
!3647 = !DILocation(line: 115, column: 26, scope: !3580)
!3648 = !{!"2526"}
!3649 = !DILocation(line: 116, column: 10, scope: !3580)
!3650 = !{!"2527"}
!3651 = !{!"2528"}
!3652 = distinct !{!3652, !3572, !3653, !329}
!3653 = !DILocation(line: 117, column: 5, scope: !3540)
!3654 = !{!"2529"}
!3655 = !DILocation(line: 118, column: 11, scope: !3540)
!3656 = !{!"2530"}
!3657 = !DILocation(line: 118, column: 5, scope: !3540)
!3658 = !{!"2531"}
!3659 = !DILocation(line: 118, column: 17, scope: !3540)
!3660 = !{!"2532"}
!3661 = !DILocation(line: 120, column: 5, scope: !3540)
!3662 = !{!"2533"}
!3663 = distinct !DISubprogram(name: "sodium_hex2bin", scope: !122, file: !122, line: 124, type: !3664, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!52, !395, !47, !3666, !47, !3666, !3667, !3669}
!3666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!3667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3668)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!3670 = !DILocalVariable(name: "bin", arg: 1, scope: !3663, file: !122, line: 124, type: !395)
!3671 = !DILocation(line: 0, scope: !3663)
!3672 = !{!"2534"}
!3673 = !DILocalVariable(name: "bin_maxlen", arg: 2, scope: !3663, file: !122, line: 124, type: !47)
!3674 = !{!"2535"}
!3675 = !DILocalVariable(name: "hex", arg: 3, scope: !3663, file: !122, line: 125, type: !3666)
!3676 = !{!"2536"}
!3677 = !DILocalVariable(name: "hex_len", arg: 4, scope: !3663, file: !122, line: 125, type: !47)
!3678 = !{!"2537"}
!3679 = !DILocalVariable(name: "ignore", arg: 5, scope: !3663, file: !122, line: 126, type: !3666)
!3680 = !{!"2538"}
!3681 = !DILocalVariable(name: "bin_len", arg: 6, scope: !3663, file: !122, line: 126, type: !3667)
!3682 = !{!"2539"}
!3683 = !DILocalVariable(name: "hex_end", arg: 7, scope: !3663, file: !122, line: 127, type: !3669)
!3684 = !{!"2540"}
!3685 = !DILocalVariable(name: "bin_pos", scope: !3663, file: !122, line: 129, type: !12)
!3686 = !{!"2541"}
!3687 = !DILocalVariable(name: "hex_pos", scope: !3663, file: !122, line: 130, type: !12)
!3688 = !{!"2542"}
!3689 = !DILocalVariable(name: "ret", scope: !3663, file: !122, line: 131, type: !52)
!3690 = !{!"2543"}
!3691 = !DILocalVariable(name: "c_acc", scope: !3663, file: !122, line: 133, type: !67)
!3692 = !{!"2544"}
!3693 = !DILocalVariable(name: "state", scope: !3663, file: !122, line: 137, type: !67)
!3694 = !{!"2545"}
!3695 = !DILocation(line: 139, column: 5, scope: !3663)
!3696 = !{!"2546"}
!3697 = !DILocation(line: 129, column: 19, scope: !3663)
!3698 = !{!"2547"}
!3699 = !{!"2548"}
!3700 = !{!"2549"}
!3701 = !{!"2550"}
!3702 = !{!"2551"}
!3703 = !{!"2552"}
!3704 = !{!"2553"}
!3705 = !{!"2554"}
!3706 = !DILocation(line: 139, column: 20, scope: !3663)
!3707 = !{!"2555"}
!3708 = !{!"2556"}
!3709 = !DILocation(line: 140, column: 29, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3663, file: !122, line: 139, column: 31)
!3711 = !{!"2557"}
!3712 = !{!"2558"}
!3713 = !DILocalVariable(name: "c", scope: !3663, file: !122, line: 132, type: !67)
!3714 = !{!"2559"}
!3715 = !DILocation(line: 141, column: 17, scope: !3710)
!3716 = !{!"2560"}
!3717 = !DILocation(line: 141, column: 19, scope: !3710)
!3718 = !{!"2561"}
!3719 = !{!"2562"}
!3720 = !DILocalVariable(name: "c_num", scope: !3663, file: !122, line: 135, type: !67)
!3721 = !{!"2563"}
!3722 = !DILocation(line: 142, column: 19, scope: !3710)
!3723 = !{!"2564"}
!3724 = !DILocation(line: 142, column: 25, scope: !3710)
!3725 = !{!"2565"}
!3726 = !DILocation(line: 142, column: 32, scope: !3710)
!3727 = !{!"2566"}
!3728 = !DILocation(line: 142, column: 18, scope: !3710)
!3729 = !{!"2567"}
!3730 = !DILocalVariable(name: "c_num0", scope: !3663, file: !122, line: 135, type: !67)
!3731 = !{!"2568"}
!3732 = !DILocation(line: 143, column: 20, scope: !3710)
!3733 = !{!"2569"}
!3734 = !DILocation(line: 143, column: 22, scope: !3710)
!3735 = !{!"2570"}
!3736 = !DILocation(line: 143, column: 30, scope: !3710)
!3737 = !{!"2571"}
!3738 = !DILocation(line: 143, column: 19, scope: !3710)
!3739 = !{!"2572"}
!3740 = !DILocalVariable(name: "c_alpha", scope: !3663, file: !122, line: 134, type: !67)
!3741 = !{!"2573"}
!3742 = !DILocation(line: 144, column: 22, scope: !3710)
!3743 = !{!"2574"}
!3744 = !DILocation(line: 144, column: 30, scope: !3710)
!3745 = !{!"2575"}
!3746 = !DILocation(line: 144, column: 40, scope: !3710)
!3747 = !{!"2576"}
!3748 = !DILocation(line: 144, column: 48, scope: !3710)
!3749 = !{!"2577"}
!3750 = !DILocation(line: 144, column: 37, scope: !3710)
!3751 = !{!"2578"}
!3752 = !DILocation(line: 144, column: 56, scope: !3710)
!3753 = !{!"2579"}
!3754 = !DILocation(line: 144, column: 20, scope: !3710)
!3755 = !{!"2580"}
!3756 = !DILocalVariable(name: "c_alpha0", scope: !3663, file: !122, line: 134, type: !67)
!3757 = !{!"2581"}
!3758 = !DILocation(line: 145, column: 14, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3710, file: !122, line: 145, column: 13)
!3760 = !{!"2582"}
!3761 = !DILocation(line: 145, column: 23, scope: !3759)
!3762 = !{!"2583"}
!3763 = !DILocation(line: 145, column: 21, scope: !3759)
!3764 = !{!"2584"}
!3765 = !DILocation(line: 145, column: 33, scope: !3759)
!3766 = !{!"2585"}
!3767 = !DILocation(line: 145, column: 13, scope: !3710)
!3768 = !{!"2586"}
!3769 = !DILocation(line: 146, column: 24, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !122, line: 146, column: 17)
!3771 = distinct !DILexicalBlock(scope: !3759, file: !122, line: 145, column: 40)
!3772 = !{!"2587"}
!3773 = !DILocation(line: 146, column: 32, scope: !3770)
!3774 = !{!"2588"}
!3775 = !DILocation(line: 146, column: 35, scope: !3770)
!3776 = !{!"2589"}
!3777 = !DILocation(line: 146, column: 41, scope: !3770)
!3778 = !{!"2590"}
!3779 = !DILocation(line: 146, column: 47, scope: !3770)
!3780 = !{!"2591"}
!3781 = !DILocation(line: 146, column: 65, scope: !3770)
!3782 = !{!"2592"}
!3783 = !DILocation(line: 146, column: 50, scope: !3770)
!3784 = !{!"2593"}
!3785 = !DILocation(line: 146, column: 68, scope: !3770)
!3786 = !{!"2594"}
!3787 = !DILocation(line: 146, column: 17, scope: !3771)
!3788 = !{!"2595"}
!3789 = !DILocation(line: 147, column: 24, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3770, file: !122, line: 146, column: 77)
!3791 = !{!"2596"}
!3792 = !{!"2597"}
!3793 = !DILocation(line: 148, column: 17, scope: !3790)
!3794 = distinct !{!3794, !3695, !3795, !329}
!3795 = !DILocation(line: 165, column: 5, scope: !3663)
!3796 = !{!"2598"}
!3797 = !DILocation(line: 150, column: 13, scope: !3771)
!3798 = !{!"2599"}
!3799 = !DILocation(line: 152, column: 18, scope: !3710)
!3800 = !{!"2600"}
!3801 = !DILocation(line: 152, column: 27, scope: !3710)
!3802 = !{!"2601"}
!3803 = !DILocation(line: 152, column: 25, scope: !3710)
!3804 = !{!"2602"}
!3805 = !DILocation(line: 152, column: 37, scope: !3710)
!3806 = !{!"2603"}
!3807 = !DILocation(line: 152, column: 48, scope: !3710)
!3808 = !{!"2604"}
!3809 = !DILocation(line: 152, column: 46, scope: !3710)
!3810 = !{!"2605"}
!3811 = !DILocation(line: 152, column: 34, scope: !3710)
!3812 = !{!"2606"}
!3813 = !DILocation(line: 152, column: 17, scope: !3710)
!3814 = !{!"2607"}
!3815 = !DILocalVariable(name: "c_val", scope: !3663, file: !122, line: 136, type: !67)
!3816 = !{!"2608"}
!3817 = !DILocation(line: 153, column: 21, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3710, file: !122, line: 153, column: 13)
!3819 = !{!"2609"}
!3820 = !DILocation(line: 153, column: 13, scope: !3710)
!3821 = !{!"2610"}
!3822 = !{!"2611"}
!3823 = !DILocation(line: 155, column: 13, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3818, file: !122, line: 153, column: 36)
!3825 = !{!"2612"}
!3826 = !DILocation(line: 155, column: 19, scope: !3824)
!3827 = !{!"2613"}
!3828 = !DILocation(line: 156, column: 13, scope: !3824)
!3829 = !{!"2614"}
!3830 = !DILocation(line: 158, column: 13, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3710, file: !122, line: 158, column: 13)
!3832 = !{!"2615"}
!3833 = !DILocation(line: 158, column: 19, scope: !3831)
!3834 = !{!"2616"}
!3835 = !DILocation(line: 158, column: 13, scope: !3710)
!3836 = !{!"2617"}
!3837 = !DILocation(line: 159, column: 21, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3831, file: !122, line: 158, column: 26)
!3839 = !{!"2618"}
!3840 = !DILocation(line: 159, column: 27, scope: !3838)
!3841 = !{!"2619"}
!3842 = !{!"2620"}
!3843 = !{!"2621"}
!3844 = !DILocation(line: 160, column: 9, scope: !3838)
!3845 = !{!"2622"}
!3846 = !DILocation(line: 161, column: 30, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3831, file: !122, line: 160, column: 16)
!3848 = !{!"2623"}
!3849 = !DILocation(line: 161, column: 38, scope: !3847)
!3850 = !{!"2624"}
!3851 = !DILocation(line: 161, column: 36, scope: !3847)
!3852 = !{!"2625"}
!3853 = !{!"2626"}
!3854 = !DILocation(line: 161, column: 24, scope: !3847)
!3855 = !{!"2627"}
!3856 = !{!"2628"}
!3857 = !DILocation(line: 161, column: 13, scope: !3847)
!3858 = !{!"2629"}
!3859 = !DILocation(line: 161, column: 28, scope: !3847)
!3860 = !{!"2630"}
!3861 = !{!"2631"}
!3862 = !{!"2632"}
!3863 = !{!"2633"}
!3864 = !{!"2634"}
!3865 = !{!"2635"}
!3866 = !DILocation(line: 163, column: 18, scope: !3710)
!3867 = !{!"2636"}
!3868 = !DILocation(line: 163, column: 17, scope: !3710)
!3869 = !{!"2637"}
!3870 = !{!"2638"}
!3871 = !{!"2639"}
!3872 = !DILocation(line: 164, column: 16, scope: !3710)
!3873 = !{!"2640"}
!3874 = !{!"2641"}
!3875 = !{!"2642"}
!3876 = !{!"2643"}
!3877 = !{!"2644"}
!3878 = !DILocation(line: 166, column: 9, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3663, file: !122, line: 166, column: 9)
!3880 = !{!"2645"}
!3881 = !DILocation(line: 166, column: 15, scope: !3879)
!3882 = !{!"2646"}
!3883 = !DILocation(line: 166, column: 9, scope: !3663)
!3884 = !{!"2647"}
!3885 = !DILocation(line: 167, column: 16, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3879, file: !122, line: 166, column: 22)
!3887 = !{!"2648"}
!3888 = !{!"2649"}
!3889 = !DILocation(line: 168, column: 5, scope: !3886)
!3890 = !{!"2650"}
!3891 = !{!"2651"}
!3892 = !{!"2652"}
!3893 = !DILocation(line: 169, column: 17, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3663, file: !122, line: 169, column: 9)
!3895 = !{!"2653"}
!3896 = !DILocation(line: 169, column: 9, scope: !3663)
!3897 = !{!"2654"}
!3898 = !DILocation(line: 170, column: 21, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3894, file: !122, line: 169, column: 26)
!3900 = !{!"2655"}
!3901 = !DILocation(line: 170, column: 18, scope: !3899)
!3902 = !{!"2656"}
!3903 = !DILocation(line: 171, column: 5, scope: !3899)
!3904 = !{!"2657"}
!3905 = !DILocation(line: 172, column: 17, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3663, file: !122, line: 172, column: 9)
!3907 = !{!"2658"}
!3908 = !DILocation(line: 172, column: 9, scope: !3663)
!3909 = !{!"2659"}
!3910 = !DILocation(line: 173, column: 18, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3906, file: !122, line: 172, column: 26)
!3912 = !{!"2660"}
!3913 = !DILocation(line: 174, column: 5, scope: !3911)
!3914 = !{!"2661"}
!3915 = !DILocation(line: 175, column: 5, scope: !3663)
!3916 = !{!"2662"}
!3917 = distinct !DISubprogram(name: "_sodium_alloc_init", scope: !122, file: !122, line: 179, type: !50, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!3918 = !{!"2663"}
!3919 = !DILocation(line: 196, column: 5, scope: !3917)
!3920 = !{!"2664"}
!3921 = !DILocation(line: 198, column: 5, scope: !3917)
!3922 = !{!"2665"}
!3923 = distinct !DISubprogram(name: "sodium_mlock", scope: !122, file: !122, line: 202, type: !749, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!3924 = !DILocalVariable(name: "addr", arg: 1, scope: !3923, file: !122, line: 202, type: !46)
!3925 = !DILocation(line: 0, scope: !3923)
!3926 = !{!"2666"}
!3927 = !DILocalVariable(name: "len", arg: 2, scope: !3923, file: !122, line: 202, type: !47)
!3928 = !{!"2667"}
!3929 = !DILocation(line: 212, column: 5, scope: !3923)
!3930 = !{!"2668"}
!3931 = !DILocation(line: 212, column: 11, scope: !3923)
!3932 = !{!"2669"}
!3933 = !DILocation(line: 213, column: 5, scope: !3923)
!3934 = !{!"2670"}
!3935 = distinct !DISubprogram(name: "sodium_munlock", scope: !122, file: !122, line: 218, type: !749, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!3936 = !DILocalVariable(name: "addr", arg: 1, scope: !3935, file: !122, line: 218, type: !46)
!3937 = !DILocation(line: 0, scope: !3935)
!3938 = !{!"2671"}
!3939 = !DILocalVariable(name: "len", arg: 2, scope: !3935, file: !122, line: 218, type: !47)
!3940 = !{!"2672"}
!3941 = !DILocation(line: 220, column: 5, scope: !3935)
!3942 = !{!"2673"}
!3943 = !DILocation(line: 229, column: 5, scope: !3935)
!3944 = !{!"2674"}
!3945 = !DILocation(line: 229, column: 11, scope: !3935)
!3946 = !{!"2675"}
!3947 = !DILocation(line: 230, column: 5, scope: !3935)
!3948 = !{!"2676"}
!3949 = distinct !DISubprogram(name: "sodium_malloc", scope: !122, file: !122, line: 402, type: !3950, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!6, !47}
!3952 = !DILocalVariable(name: "size", arg: 1, scope: !3949, file: !122, line: 402, type: !47)
!3953 = !DILocation(line: 0, scope: !3949)
!3954 = !{!"2677"}
!3955 = !DILocation(line: 406, column: 16, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3949, file: !122, line: 406, column: 9)
!3957 = !{!"2678"}
!3958 = !DILocalVariable(name: "ptr", scope: !3949, file: !122, line: 404, type: !6)
!3959 = !{!"2679"}
!3960 = !DILocation(line: 406, column: 38, scope: !3956)
!3961 = !{!"2680"}
!3962 = !DILocation(line: 406, column: 9, scope: !3949)
!3963 = !{!"2681"}
!3964 = !DILocation(line: 407, column: 9, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3956, file: !122, line: 406, column: 47)
!3966 = !{!"2682"}
!3967 = !DILocation(line: 409, column: 5, scope: !3949)
!3968 = !{!"2683"}
!3969 = !DILocation(line: 411, column: 5, scope: !3949)
!3970 = !{!"2684"}
!3971 = !{!"2685"}
!3972 = !DILocation(line: 412, column: 1, scope: !3949)
!3973 = !{!"2686"}
!3974 = distinct !DISubprogram(name: "_sodium_malloc", scope: !122, file: !122, line: 353, type: !3950, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !121, retainedNodes: !4)
!3975 = !DILocalVariable(name: "size", arg: 1, scope: !3974, file: !122, line: 353, type: !47)
!3976 = !DILocation(line: 0, scope: !3974)
!3977 = !{!"2687"}
!3978 = !DILocation(line: 355, column: 12, scope: !3974)
!3979 = !{!"2688"}
!3980 = !DILocation(line: 355, column: 5, scope: !3974)
!3981 = !{!"2689"}
!3982 = distinct !DISubprogram(name: "sodium_allocarray", scope: !122, file: !122, line: 415, type: !3983, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!6, !12, !12}
!3985 = !DILocalVariable(name: "count", arg: 1, scope: !3982, file: !122, line: 415, type: !12)
!3986 = !DILocation(line: 0, scope: !3982)
!3987 = !{!"2690"}
!3988 = !DILocalVariable(name: "size", arg: 2, scope: !3982, file: !122, line: 415, type: !12)
!3989 = !{!"2691"}
!3990 = !DILocation(line: 419, column: 15, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3982, file: !122, line: 419, column: 9)
!3992 = !{!"2692"}
!3993 = !DILocation(line: 419, column: 29, scope: !3991)
!3994 = !{!"2693"}
!3995 = !DILocation(line: 419, column: 58, scope: !3991)
!3996 = !{!"2694"}
!3997 = !DILocation(line: 419, column: 37, scope: !3991)
!3998 = !{!"2695"}
!3999 = !DILocation(line: 419, column: 9, scope: !3982)
!4000 = !{!"2696"}
!4001 = !DILocation(line: 420, column: 9, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3991, file: !122, line: 419, column: 67)
!4003 = !{!"2697"}
!4004 = !DILocation(line: 420, column: 15, scope: !4002)
!4005 = !{!"2698"}
!4006 = !DILocation(line: 421, column: 9, scope: !4002)
!4007 = !{!"2699"}
!4008 = !DILocation(line: 423, column: 24, scope: !3982)
!4009 = !{!"2700"}
!4010 = !DILocalVariable(name: "total_size", scope: !3982, file: !122, line: 417, type: !12)
!4011 = !{!"2701"}
!4012 = !DILocation(line: 425, column: 12, scope: !3982)
!4013 = !{!"2702"}
!4014 = !DILocation(line: 425, column: 5, scope: !3982)
!4015 = !{!"2703"}
!4016 = !{!"2704"}
!4017 = !DILocation(line: 426, column: 1, scope: !3982)
!4018 = !{!"2705"}
!4019 = distinct !DISubprogram(name: "sodium_free", scope: !122, file: !122, line: 430, type: !4020, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !6}
!4022 = !DILocalVariable(name: "ptr", arg: 1, scope: !4019, file: !122, line: 430, type: !6)
!4023 = !DILocation(line: 0, scope: !4019)
!4024 = !{!"2706"}
!4025 = !DILocation(line: 432, column: 5, scope: !4019)
!4026 = !{!"2707"}
!4027 = !DILocation(line: 433, column: 1, scope: !4019)
!4028 = !{!"2708"}
!4029 = distinct !DISubprogram(name: "sodium_mprotect_noaccess", scope: !122, file: !122, line: 493, type: !4030, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!52, !6}
!4032 = !DILocalVariable(name: "ptr", arg: 1, scope: !4029, file: !122, line: 493, type: !6)
!4033 = !DILocation(line: 0, scope: !4029)
!4034 = !{!"2709"}
!4035 = !DILocation(line: 495, column: 12, scope: !4029)
!4036 = !{!"2710"}
!4037 = !DILocation(line: 495, column: 5, scope: !4029)
!4038 = !{!"2711"}
!4039 = distinct !DISubprogram(name: "_mprotect_noaccess", scope: !122, file: !122, line: 235, type: !4040, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !121, retainedNodes: !4)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!52, !6, !12}
!4042 = !DILocalVariable(name: "ptr", arg: 1, scope: !4039, file: !122, line: 235, type: !6)
!4043 = !DILocation(line: 0, scope: !4039)
!4044 = !{!"2712"}
!4045 = !DILocalVariable(name: "size", arg: 2, scope: !4039, file: !122, line: 235, type: !12)
!4046 = !{!"2713"}
!4047 = !DILocation(line: 243, column: 5, scope: !4039)
!4048 = !{!"2714"}
!4049 = !DILocation(line: 243, column: 11, scope: !4039)
!4050 = !{!"2715"}
!4051 = !DILocation(line: 244, column: 5, scope: !4039)
!4052 = !{!"2716"}
!4053 = distinct !DISubprogram(name: "_sodium_mprotect", scope: !122, file: !122, line: 469, type: !4054, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !121, retainedNodes: !4)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!52, !6, !4056}
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4057 = !DILocalVariable(name: "ptr", arg: 1, scope: !4053, file: !122, line: 469, type: !6)
!4058 = !DILocation(line: 0, scope: !4053)
!4059 = !{!"2717"}
!4060 = !DILocalVariable(name: "cb", arg: 2, scope: !4053, file: !122, line: 469, type: !4056)
!4061 = !{!"2718"}
!4062 = !DILocation(line: 473, column: 5, scope: !4053)
!4063 = !{!"2719"}
!4064 = !DILocation(line: 473, column: 11, scope: !4053)
!4065 = !{!"2720"}
!4066 = !DILocation(line: 474, column: 5, scope: !4053)
!4067 = !{!"2721"}
!4068 = distinct !DISubprogram(name: "sodium_mprotect_readonly", scope: !122, file: !122, line: 499, type: !4030, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!4069 = !DILocalVariable(name: "ptr", arg: 1, scope: !4068, file: !122, line: 499, type: !6)
!4070 = !DILocation(line: 0, scope: !4068)
!4071 = !{!"2722"}
!4072 = !DILocation(line: 501, column: 12, scope: !4068)
!4073 = !{!"2723"}
!4074 = !DILocation(line: 501, column: 5, scope: !4068)
!4075 = !{!"2724"}
!4076 = distinct !DISubprogram(name: "_mprotect_readonly", scope: !122, file: !122, line: 249, type: !4040, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !121, retainedNodes: !4)
!4077 = !DILocalVariable(name: "ptr", arg: 1, scope: !4076, file: !122, line: 249, type: !6)
!4078 = !DILocation(line: 0, scope: !4076)
!4079 = !{!"2725"}
!4080 = !DILocalVariable(name: "size", arg: 2, scope: !4076, file: !122, line: 249, type: !12)
!4081 = !{!"2726"}
!4082 = !DILocation(line: 257, column: 5, scope: !4076)
!4083 = !{!"2727"}
!4084 = !DILocation(line: 257, column: 11, scope: !4076)
!4085 = !{!"2728"}
!4086 = !DILocation(line: 258, column: 5, scope: !4076)
!4087 = !{!"2729"}
!4088 = distinct !DISubprogram(name: "sodium_mprotect_readwrite", scope: !122, file: !122, line: 505, type: !4030, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !121, retainedNodes: !4)
!4089 = !DILocalVariable(name: "ptr", arg: 1, scope: !4088, file: !122, line: 505, type: !6)
!4090 = !DILocation(line: 0, scope: !4088)
!4091 = !{!"2730"}
!4092 = !DILocation(line: 507, column: 12, scope: !4088)
!4093 = !{!"2731"}
!4094 = !DILocation(line: 507, column: 5, scope: !4088)
!4095 = !{!"2732"}
!4096 = distinct !DISubprogram(name: "_mprotect_readwrite", scope: !122, file: !122, line: 263, type: !4040, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !121, retainedNodes: !4)
!4097 = !DILocalVariable(name: "ptr", arg: 1, scope: !4096, file: !122, line: 263, type: !6)
!4098 = !DILocation(line: 0, scope: !4096)
!4099 = !{!"2733"}
!4100 = !DILocalVariable(name: "size", arg: 2, scope: !4096, file: !122, line: 263, type: !12)
!4101 = !{!"2734"}
!4102 = !DILocation(line: 271, column: 5, scope: !4096)
!4103 = !{!"2735"}
!4104 = !DILocation(line: 271, column: 11, scope: !4096)
!4105 = !{!"2736"}
!4106 = !DILocation(line: 272, column: 5, scope: !4096)
!4107 = !{!"2737"}
