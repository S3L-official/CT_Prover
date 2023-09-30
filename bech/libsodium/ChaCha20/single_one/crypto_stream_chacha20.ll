; ModuleID = 'crypto_stream_chacha20.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.randombytes_implementation = type { i8* ()*, i32 ()*, void ()*, i32 (i32)*, void (i8*, i64)*, i32 ()* }
%struct.SysRandom_ = type { i32, i32, i32 }
%struct.smack_value = type { i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.chacha_ctx = type { [16 x i32] }

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
@sigma = internal constant [16 x i8] c"expand 32-byte k", align 16, !dbg !87
@canary = internal global [16 x i8] zeroinitializer, align 16, !dbg !101

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_wrapper(i8* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i64 %1, metadata !125, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8* %2, metadata !126, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8* %3, metadata !127, metadata !DIExpression()), !dbg !124
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !128
  call void @public_in(%struct.smack_value* %5), !dbg !129
  %6 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %1), !dbg !130
  call void @public_in(%struct.smack_value* %6), !dbg !131
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !132
  call void @public_in(%struct.smack_value* %7), !dbg !133
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !134
  call void @public_in(%struct.smack_value* %8), !dbg !135
  %9 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 8), !dbg !136
  call void @public_in(%struct.smack_value* %9), !dbg !137
  %10 = call i32 @crypto_stream_chacha20(i8* %0, i64 %1, i8* %2, i8* %3), !dbg !138
  ret i32 %10, !dbg !139
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypto_stream_chacha20_wrapper_t() #0 !dbg !140 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !141, metadata !DIExpression()), !dbg !142
  %4 = call zeroext i8 (...) @gout(), !dbg !143
  store i8 %4, i8* %1, align 1, !dbg !142
  call void @llvm.dbg.declare(metadata i8* %2, metadata !144, metadata !DIExpression()), !dbg !145
  %5 = call zeroext i8 (...) @gin(), !dbg !146
  store i8 %5, i8* %2, align 1, !dbg !145
  call void @llvm.dbg.declare(metadata i8* %3, metadata !147, metadata !DIExpression()), !dbg !148
  %6 = call zeroext i8 (...) @gk(), !dbg !149
  store i8 %6, i8* %3, align 1, !dbg !148
  %7 = call zeroext i8 (...) @gc(), !dbg !150
  call void @llvm.dbg.value(metadata i8 %7, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i8* %1, metadata !153, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i8* %2, metadata !154, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i8* %3, metadata !155, metadata !DIExpression()), !dbg !152
  %8 = call i64 (...) @gclen(), !dbg !156
  call void @llvm.dbg.value(metadata i64 %8, metadata !157, metadata !DIExpression()), !dbg !152
  %9 = call i32 @crypto_stream_chacha20(i8* %1, i64 %8, i8* %2, i8* %3), !dbg !158
  ret void, !dbg !159
}

declare dso_local zeroext i8 @gout(...) #2

declare dso_local zeroext i8 @gin(...) #2

declare dso_local zeroext i8 @gk(...) #2

declare dso_local zeroext i8 @gc(...) #2

declare dso_local i64 @gclen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* %0) #0 !dbg !160 {
  call void @llvm.dbg.value(metadata %struct.randombytes_implementation* %0, metadata !164, metadata !DIExpression()), !dbg !165
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** @implementation, align 8, !dbg !166
  ret i32 0, !dbg !167
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_implementation_name() #0 !dbg !168 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !169
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0, !dbg !170
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !170
  %4 = call i8* %3(), !dbg !169
  ret i8* %4, !dbg !171
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_random() #0 !dbg !172 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !173
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1, !dbg !174
  %3 = load i32 ()*, i32 ()** %2, align 8, !dbg !174
  %4 = call i32 %3(), !dbg !173
  ret i32 %4, !dbg !175
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_stir() #0 !dbg !176 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !177
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !179
  br i1 %2, label %3, label %12, !dbg !180

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !181
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2, !dbg !182
  %6 = load void ()*, void ()** %5, align 8, !dbg !182
  %7 = icmp ne void ()* %6, null, !dbg !183
  br i1 %7, label %8, label %12, !dbg !184

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !185
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2, !dbg !187
  %11 = load void ()*, void ()** %10, align 8, !dbg !187
  call void %11(), !dbg !185
  br label %12, !dbg !188

12:                                               ; preds = %8, %3, %0
  ret void, !dbg !189
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_uniform(i32 %0) #0 !dbg !190 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !191, metadata !DIExpression()), !dbg !192
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !193
  %3 = icmp ne %struct.randombytes_implementation* %2, null, !dbg !195
  br i1 %3, label %4, label %14, !dbg !196

4:                                                ; preds = %1
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !197
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 3, !dbg !198
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8, !dbg !198
  %8 = icmp ne i32 (i32)* %7, null, !dbg !199
  br i1 %8, label %9, label %14, !dbg !200

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !201
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 3, !dbg !203
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8, !dbg !203
  %13 = call i32 %12(i32 %0), !dbg !201
  br label %26, !dbg !204

14:                                               ; preds = %4, %1
  %15 = icmp ult i32 %0, 2, !dbg !205
  br i1 %15, label %16, label %17, !dbg !207

16:                                               ; preds = %14
  br label %26, !dbg !208

17:                                               ; preds = %14
  %18 = sub i32 0, %0, !dbg !210
  %19 = urem i32 %18, %0, !dbg !211
  call void @llvm.dbg.value(metadata i32 %19, metadata !212, metadata !DIExpression()), !dbg !192
  br label %20, !dbg !213

20:                                               ; preds = %22, %17
  %21 = call i32 @randombytes_random(), !dbg !214
  call void @llvm.dbg.value(metadata i32 %21, metadata !216, metadata !DIExpression()), !dbg !192
  br label %22, !dbg !217

22:                                               ; preds = %20
  %23 = icmp ult i32 %21, %19, !dbg !218
  br i1 %23, label %20, label %24, !dbg !217, !llvm.loop !219

24:                                               ; preds = %22
  %25 = urem i32 %21, %0, !dbg !222
  br label %26, !dbg !223

26:                                               ; preds = %24, %16, %9
  %.0 = phi i32 [ %13, %9 ], [ 0, %16 ], [ %25, %24 ], !dbg !192
  ret i32 %.0, !dbg !224
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_buf(i8* %0, i64 %1) #0 !dbg !225 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 %1, metadata !228, metadata !DIExpression()), !dbg !227
  %3 = icmp ugt i64 %1, 0, !dbg !229
  br i1 %3, label %4, label %8, !dbg !231

4:                                                ; preds = %2
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !232
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 4, !dbg !234
  %7 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !234
  call void %7(i8* %0, i64 %1), !dbg !232
  br label %8, !dbg !235

8:                                                ; preds = %4, %2
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_close() #0 !dbg !237 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !238
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !240
  br i1 %2, label %3, label %13, !dbg !241

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !242
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 5, !dbg !243
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !243
  %7 = icmp ne i32 ()* %6, null, !dbg !244
  br i1 %7, label %8, label %13, !dbg !245

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !246
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 5, !dbg !248
  %11 = load i32 ()*, i32 ()** %10, align 8, !dbg !248
  %12 = call i32 %11(), !dbg !246
  br label %14, !dbg !249

13:                                               ; preds = %3, %0
  br label %14, !dbg !250

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !251
  ret i32 %.0, !dbg !252
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(i8* %0, i64 %1) #0 !dbg !253 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %1, metadata !260, metadata !DIExpression()), !dbg !259
  %3 = icmp ule i64 %1, -1, !dbg !261
  br i1 %3, label %4, label %5, !dbg !264

4:                                                ; preds = %2
  br label %6, !dbg !264

5:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 142, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i64 0, i64 0)) #8, !dbg !261
  unreachable, !dbg !261

6:                                                ; preds = %4
  call void @randombytes_buf(i8* %0, i64 %1), !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 !dbg !267 {
  ret i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), !dbg !268
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom() #0 !dbg !269 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !270, metadata !DIExpression()), !dbg !271
  %2 = bitcast i32* %1 to i8*, !dbg !272
  call void @randombytes_sysrandom_buf(i8* %2, i64 4), !dbg !273
  %3 = load i32, i32* %1, align 4, !dbg !274
  ret i32 %3, !dbg !275
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_stir() #0 !dbg !276 {
  %1 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !277
  %2 = icmp eq i32 %1, 0, !dbg !279
  br i1 %2, label %3, label %4, !dbg !280

3:                                                ; preds = %0
  call void @randombytes_sysrandom_init(), !dbg !281
  store i32 1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !283
  br label %4, !dbg !284

4:                                                ; preds = %3, %0
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_buf(i8* %0, i64 %1) #0 !dbg !286 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i64 %1, metadata !289, metadata !DIExpression()), !dbg !288
  call void @randombytes_sysrandom_stir_if_needed(), !dbg !290
  %3 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !291
  %4 = icmp ne i32 %3, 0, !dbg !293
  br i1 %4, label %5, label %10, !dbg !294

5:                                                ; preds = %2
  %6 = call i32 @randombytes_linux_getrandom(i8* %0, i64 %1), !dbg !295
  %7 = icmp ne i32 %6, 0, !dbg !298
  br i1 %7, label %8, label %9, !dbg !299

8:                                                ; preds = %5
  call void @abort() #8, !dbg !300
  unreachable, !dbg !300

9:                                                ; preds = %5
  br label %18, !dbg !302

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !303
  %12 = icmp eq i32 %11, -1, !dbg !305
  br i1 %12, label %17, label %13, !dbg !306

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !307
  %15 = call i64 @safe_read(i32 %14, i8* %0, i64 %1), !dbg !308
  %16 = icmp ne i64 %15, %1, !dbg !309
  br i1 %16, label %17, label %18, !dbg !310

17:                                               ; preds = %13, %10
  call void @abort() #8, !dbg !311
  unreachable, !dbg !311

18:                                               ; preds = %13, %9
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 !dbg !314 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !315, metadata !DIExpression()), !dbg !316
  %1 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !317
  %2 = icmp ne i32 %1, -1, !dbg !319
  br i1 %2, label %3, label %8, !dbg !320

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !321
  %5 = call i32 @close(i32 %4), !dbg !322
  %6 = icmp eq i32 %5, 0, !dbg !323
  br i1 %6, label %7, label %8, !dbg !324

7:                                                ; preds = %3
  store i32 -1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !325
  store i32 0, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !327
  call void @llvm.dbg.value(metadata i32 0, metadata !315, metadata !DIExpression()), !dbg !316
  br label %8, !dbg !328

8:                                                ; preds = %7, %3, %0
  %.0 = phi i32 [ 0, %7 ], [ -1, %3 ], [ -1, %0 ], !dbg !316
  call void @llvm.dbg.value(metadata i32 %.0, metadata !315, metadata !DIExpression()), !dbg !316
  %9 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !329
  %10 = icmp ne i32 %9, 0, !dbg !331
  br i1 %10, label %11, label %12, !dbg !332

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 0, metadata !315, metadata !DIExpression()), !dbg !316
  br label %12, !dbg !333

12:                                               ; preds = %11, %8
  %.1 = phi i32 [ 0, %11 ], [ %.0, %8 ], !dbg !316
  call void @llvm.dbg.value(metadata i32 %.1, metadata !315, metadata !DIExpression()), !dbg !316
  ret i32 %.1, !dbg !335
}

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 !dbg !336 {
  %1 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !337
  %2 = icmp eq i32 %1, 0, !dbg !339
  br i1 %2, label %3, label %4, !dbg !340

3:                                                ; preds = %0
  call void @randombytes_sysrandom_stir(), !dbg !341
  br label %4, !dbg !343

4:                                                ; preds = %3, %0
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !345 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !348, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 %1, metadata !350, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i8* %0, metadata !351, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 256, metadata !352, metadata !DIExpression()), !dbg !349
  br label %3, !dbg !353

3:                                                ; preds = %17, %2
  %.03 = phi i8* [ %0, %2 ], [ %16, %17 ], !dbg !349
  %.02 = phi i64 [ %1, %2 ], [ %15, %17 ]
  %.01 = phi i64 [ 256, %2 ], [ %.1, %17 ], !dbg !349
  call void @llvm.dbg.value(metadata i64 %.01, metadata !352, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i64 %.02, metadata !350, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i8* %.03, metadata !351, metadata !DIExpression()), !dbg !349
  %4 = icmp ult i64 %.02, %.01, !dbg !354
  br i1 %4, label %5, label %10, !dbg !357

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 %.02, metadata !352, metadata !DIExpression()), !dbg !349
  %6 = icmp ugt i64 %.02, 0, !dbg !358
  br i1 %6, label %7, label %8, !dbg !362

7:                                                ; preds = %5
  br label %9, !dbg !362

8:                                                ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i64 0, i64 0)) #8, !dbg !358
  unreachable, !dbg !358

9:                                                ; preds = %7
  br label %10, !dbg !363

10:                                               ; preds = %9, %3
  %.1 = phi i64 [ %.02, %9 ], [ %.01, %3 ], !dbg !349
  call void @llvm.dbg.value(metadata i64 %.1, metadata !352, metadata !DIExpression()), !dbg !349
  %11 = call i32 @_randombytes_linux_getrandom(i8* %.03, i64 %.1), !dbg !364
  %12 = icmp ne i32 %11, 0, !dbg !366
  br i1 %12, label %13, label %14, !dbg !367

13:                                               ; preds = %10
  br label %20, !dbg !368

14:                                               ; preds = %10
  %15 = sub i64 %.02, %.1, !dbg !370
  call void @llvm.dbg.value(metadata i64 %15, metadata !350, metadata !DIExpression()), !dbg !349
  %16 = getelementptr inbounds i8, i8* %.03, i64 %.1, !dbg !371
  call void @llvm.dbg.value(metadata i8* %16, metadata !351, metadata !DIExpression()), !dbg !349
  br label %17, !dbg !372

17:                                               ; preds = %14
  %18 = icmp ugt i64 %15, 0, !dbg !373
  br i1 %18, label %3, label %19, !dbg !372, !llvm.loop !374

19:                                               ; preds = %17
  br label %20, !dbg !376

20:                                               ; preds = %19, %13
  %.0 = phi i32 [ -1, %13 ], [ 0, %19 ], !dbg !349
  ret i32 %.0, !dbg !377
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 !dbg !378 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* %1, metadata !384, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %2, metadata !385, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* %1, metadata !386, metadata !DIExpression()), !dbg !383
  %4 = icmp ugt i64 %2, 0, !dbg !387
  br i1 %4, label %5, label %6, !dbg !390

5:                                                ; preds = %3
  br label %7, !dbg !390

6:                                                ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i64 0, i64 0)) #8, !dbg !387
  unreachable, !dbg !387

7:                                                ; preds = %5
  br label %8, !dbg !391

8:                                                ; preds = %34, %7
  %.02 = phi i64 [ %2, %7 ], [ %32, %34 ]
  %.01 = phi i8* [ %1, %7 ], [ %33, %34 ], !dbg !383
  call void @llvm.dbg.value(metadata i8* %.01, metadata !386, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %.02, metadata !385, metadata !DIExpression()), !dbg !383
  br label %9, !dbg !392

9:                                                ; preds = %24, %8
  %10 = call i64 @read(i32 %0, i8* %.01, i64 %.02), !dbg !394
  call void @llvm.dbg.value(metadata i64 %10, metadata !395, metadata !DIExpression()), !dbg !383
  %11 = icmp slt i64 %10, 0, !dbg !396
  br i1 %11, label %12, label %22, !dbg !397

12:                                               ; preds = %9
  %13 = call i32* @__errno_location() #9, !dbg !398
  %14 = load i32, i32* %13, align 4, !dbg !398
  %15 = icmp eq i32 %14, 4, !dbg !399
  br i1 %15, label %20, label %16, !dbg !400

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #9, !dbg !401
  %18 = load i32, i32* %17, align 4, !dbg !401
  %19 = icmp eq i32 %18, 11, !dbg !402
  br label %20, !dbg !400

20:                                               ; preds = %16, %12
  %21 = phi i1 [ true, %12 ], [ %19, %16 ]
  br label %22

22:                                               ; preds = %20, %9
  %23 = phi i1 [ false, %9 ], [ %21, %20 ], !dbg !403
  br i1 %23, label %24, label %25, !dbg !392

24:                                               ; preds = %22
  br label %9, !dbg !392, !llvm.loop !404

25:                                               ; preds = %22
  %26 = icmp slt i64 %10, 0, !dbg !406
  br i1 %26, label %27, label %28, !dbg !408

27:                                               ; preds = %25
  br label %40, !dbg !409

28:                                               ; preds = %25
  %29 = icmp eq i64 %10, 0, !dbg !411
  br i1 %29, label %30, label %31, !dbg !413

30:                                               ; preds = %28
  br label %36, !dbg !414

31:                                               ; preds = %28
  %32 = sub i64 %.02, %10, !dbg !416
  call void @llvm.dbg.value(metadata i64 %32, metadata !385, metadata !DIExpression()), !dbg !383
  %33 = getelementptr inbounds i8, i8* %.01, i64 %10, !dbg !417
  call void @llvm.dbg.value(metadata i8* %33, metadata !386, metadata !DIExpression()), !dbg !383
  br label %34, !dbg !418

34:                                               ; preds = %31
  %35 = icmp ugt i64 %32, 0, !dbg !419
  br i1 %35, label %8, label %36, !dbg !418, !llvm.loop !420

36:                                               ; preds = %34, %30
  %.1 = phi i8* [ %.01, %30 ], [ %33, %34 ], !dbg !383
  call void @llvm.dbg.value(metadata i8* %.1, metadata !386, metadata !DIExpression()), !dbg !383
  %37 = ptrtoint i8* %.1 to i64, !dbg !422
  %38 = ptrtoint i8* %1 to i64, !dbg !422
  %39 = sub i64 %37, %38, !dbg !422
  br label %40, !dbg !423

40:                                               ; preds = %36, %27
  %.0 = phi i64 [ %10, %27 ], [ %39, %36 ], !dbg !383
  ret i64 %.0, !dbg !424
}

declare dso_local i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !425 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i64 %1, metadata !430, metadata !DIExpression()), !dbg !429
  %3 = icmp ule i64 %1, 256, !dbg !431
  br i1 %3, label %4, label %5, !dbg !434

4:                                                ; preds = %2
  br label %6, !dbg !434

5:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 142, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i64 0, i64 0)) #8, !dbg !431
  unreachable, !dbg !431

6:                                                ; preds = %4
  br label %7, !dbg !435

7:                                                ; preds = %23, %6
  %8 = trunc i64 %1 to i32, !dbg !436
  %9 = call i64 (i64, ...) @syscall(i64 318, i8* %0, i32 %8, i32 0) #10, !dbg !438
  %10 = trunc i64 %9 to i32, !dbg !438
  call void @llvm.dbg.value(metadata i32 %10, metadata !439, metadata !DIExpression()), !dbg !429
  br label %11, !dbg !440

11:                                               ; preds = %7
  %12 = icmp slt i32 %10, 0, !dbg !441
  br i1 %12, label %13, label %23, !dbg !442

13:                                               ; preds = %11
  %14 = call i32* @__errno_location() #9, !dbg !443
  %15 = load i32, i32* %14, align 4, !dbg !443
  %16 = icmp eq i32 %15, 4, !dbg !444
  br i1 %16, label %21, label %17, !dbg !445

17:                                               ; preds = %13
  %18 = call i32* @__errno_location() #9, !dbg !446
  %19 = load i32, i32* %18, align 4, !dbg !446
  %20 = icmp eq i32 %19, 11, !dbg !447
  br label %21, !dbg !445

21:                                               ; preds = %17, %13
  %22 = phi i1 [ true, %13 ], [ %20, %17 ]
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i1 [ false, %11 ], [ %22, %21 ], !dbg !429
  br i1 %24, label %7, label %25, !dbg !440, !llvm.loop !448

25:                                               ; preds = %23
  %26 = trunc i64 %1 to i32, !dbg !450
  %27 = icmp eq i32 %10, %26, !dbg !451
  %28 = zext i1 %27 to i32, !dbg !451
  %29 = sub nsw i32 %28, 1, !dbg !452
  ret i32 %29, !dbg !453
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #5

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_init() #0 !dbg !454 {
  %1 = alloca [16 x i8], align 16
  %2 = call i32* @__errno_location() #9, !dbg !455
  %3 = load i32, i32* %2, align 4, !dbg !455
  call void @llvm.dbg.value(metadata i32 %3, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !458, metadata !DIExpression()), !dbg !460
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !461
  %5 = call i32 @randombytes_linux_getrandom(i8* %4, i64 16), !dbg !463
  %6 = icmp eq i32 %5, 0, !dbg !464
  br i1 %6, label %7, label %9, !dbg !465

7:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !466
  %8 = call i32* @__errno_location() #9, !dbg !468
  store i32 %3, i32* %8, align 4, !dbg !469
  br label %15, !dbg !470

9:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !471
  %10 = call i32 @randombytes_sysrandom_random_dev_open(), !dbg !472
  store i32 %10, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !474
  %11 = icmp eq i32 %10, -1, !dbg !475
  br i1 %11, label %12, label %13, !dbg !476

12:                                               ; preds = %9
  call void @abort() #8, !dbg !477
  unreachable, !dbg !477

13:                                               ; preds = %9
  %14 = call i32* @__errno_location() #9, !dbg !479
  store i32 %3, i32* %14, align 4, !dbg !480
  br label %15, !dbg !481

15:                                               ; preds = %13, %7
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 !dbg !75 {
  %1 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !482, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), metadata !519, metadata !DIExpression()), !dbg !521
  br label %2, !dbg !522

2:                                                ; preds = %28, %0
  %.01 = phi i8** [ getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), %0 ], [ %.1, %28 ], !dbg !521
  call void @llvm.dbg.value(metadata i8** %.01, metadata !519, metadata !DIExpression()), !dbg !521
  %3 = load i8*, i8** %.01, align 8, !dbg !523
  %4 = call i32 (i8*, i32, ...) @open(i8* %3, i32 0), !dbg !525
  call void @llvm.dbg.value(metadata i32 %4, metadata !526, metadata !DIExpression()), !dbg !521
  %5 = icmp ne i32 %4, -1, !dbg !527
  br i1 %5, label %6, label %20, !dbg !529

6:                                                ; preds = %2
  %7 = call i32 @fstat(i32 %4, %struct.stat* %1) #10, !dbg !530
  %8 = icmp eq i32 %7, 0, !dbg !533
  br i1 %8, label %9, label %18, !dbg !534

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !535
  %11 = load i32, i32* %10, align 8, !dbg !535
  %12 = and i32 %11, 61440, !dbg !535
  %13 = icmp eq i32 %12, 8192, !dbg !535
  br i1 %13, label %14, label %18, !dbg !536

14:                                               ; preds = %9
  %15 = call i32 (i32, i32, ...) @fcntl(i32 %4, i32 1), !dbg !537
  %16 = or i32 %15, 1, !dbg !539
  %17 = call i32 (i32, i32, ...) @fcntl(i32 %4, i32 2, i32 %16), !dbg !540
  br label %33, !dbg !541

18:                                               ; preds = %9, %6
  %19 = call i32 @close(i32 %4), !dbg !542
  br label %26, !dbg !543

20:                                               ; preds = %2
  %21 = call i32* @__errno_location() #9, !dbg !544
  %22 = load i32, i32* %21, align 4, !dbg !544
  %23 = icmp eq i32 %22, 4, !dbg !546
  br i1 %23, label %24, label %25, !dbg !547

24:                                               ; preds = %20
  br label %28, !dbg !548

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %18
  %27 = getelementptr inbounds i8*, i8** %.01, i32 1, !dbg !550
  call void @llvm.dbg.value(metadata i8** %27, metadata !519, metadata !DIExpression()), !dbg !521
  br label %28, !dbg !551

28:                                               ; preds = %26, %24
  %.1 = phi i8** [ %27, %26 ], [ %.01, %24 ], !dbg !521
  call void @llvm.dbg.value(metadata i8** %.1, metadata !519, metadata !DIExpression()), !dbg !521
  %29 = load i8*, i8** %.1, align 8, !dbg !552
  %30 = icmp ne i8* %29, null, !dbg !553
  br i1 %30, label %2, label %31, !dbg !551, !llvm.loop !554

31:                                               ; preds = %28
  %32 = call i32* @__errno_location() #9, !dbg !556
  store i32 5, i32* %32, align 4, !dbg !557
  br label %33, !dbg !558

33:                                               ; preds = %31, %14
  %.0 = phi i32 [ %4, %14 ], [ -1, %31 ], !dbg !521
  ret i32 %.0, !dbg !559
}

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #5

declare dso_local i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_stream_chacha20_keybytes() #0 !dbg !560 {
  ret i64 32, !dbg !563
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_stream_chacha20_noncebytes() #0 !dbg !564 {
  ret i64 8, !dbg !565
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20(i8* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !567, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 %1, metadata !569, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i8* %2, metadata !570, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i8* %3, metadata !571, metadata !DIExpression()), !dbg !568
  %5 = call i32 @crypto_stream_chacha20_ref(i8* %0, i64 %1, i8* %2, i8* %3), !dbg !572
  ret i32 %5, !dbg !573
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 !dbg !574 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !579, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i8* %1, metadata !581, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i64 %2, metadata !582, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i8* %3, metadata !583, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i64 %4, metadata !584, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i8* %5, metadata !585, metadata !DIExpression()), !dbg !580
  %7 = call i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5), !dbg !586
  ret i32 %7, !dbg !587
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_xor(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 !dbg !588 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !591, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %1, metadata !593, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i64 %2, metadata !594, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %3, metadata !595, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i8* %4, metadata !596, metadata !DIExpression()), !dbg !592
  %6 = call i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 0, i8* %4), !dbg !597
  ret i32 %6, !dbg !598
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_ref(i8* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !599 {
  %5 = alloca %struct.chacha_ctx, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !600, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i64 %1, metadata !602, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i8* %2, metadata !603, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i8* %3, metadata !604, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.declare(metadata %struct.chacha_ctx* %5, metadata !605, metadata !DIExpression()), !dbg !610
  %6 = icmp ne i64 %1, 0, !dbg !611
  br i1 %6, label %8, label %7, !dbg !613

7:                                                ; preds = %4
  br label %10, !dbg !614

8:                                                ; preds = %4
  call void @chacha_keysetup(%struct.chacha_ctx* %5, i8* %3), !dbg !616
  call void @chacha_ivsetup(%struct.chacha_ctx* %5, i8* %2, i8* null), !dbg !617
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !618
  call void @chacha_encrypt_bytes(%struct.chacha_ctx* %5, i8* %0, i8* %0, i64 %1), !dbg !619
  %9 = bitcast %struct.chacha_ctx* %5 to i8*, !dbg !620
  call void @sodium_memzero(i8* %9, i64 64), !dbg !621
  br label %10, !dbg !622

10:                                               ; preds = %8, %7
  ret i32 0, !dbg !623
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_keysetup(%struct.chacha_ctx* %0, i8* %1) #0 !dbg !624 {
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !631, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i8* %1, metadata !633, metadata !DIExpression()), !dbg !632
  %3 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !634
  %4 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !634
  %5 = load i8, i8* %4, align 1, !dbg !634
  %6 = zext i8 %5 to i32, !dbg !634
  %7 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !634
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !634
  %9 = load i8, i8* %8, align 1, !dbg !634
  %10 = zext i8 %9 to i32, !dbg !634
  %11 = shl i32 %10, 8, !dbg !634
  %12 = or i32 %6, %11, !dbg !634
  %13 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !634
  %14 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !634
  %15 = load i8, i8* %14, align 1, !dbg !634
  %16 = zext i8 %15 to i32, !dbg !634
  %17 = shl i32 %16, 16, !dbg !634
  %18 = or i32 %12, %17, !dbg !634
  %19 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !634
  %20 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !634
  %21 = load i8, i8* %20, align 1, !dbg !634
  %22 = zext i8 %21 to i32, !dbg !634
  %23 = shl i32 %22, 24, !dbg !634
  %24 = or i32 %18, %23, !dbg !634
  %25 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !635
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 4, !dbg !636
  store i32 %24, i32* %26, align 4, !dbg !637
  %27 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !638
  %28 = getelementptr inbounds i8, i8* %27, i64 0, !dbg !638
  %29 = load i8, i8* %28, align 1, !dbg !638
  %30 = zext i8 %29 to i32, !dbg !638
  %31 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !638
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !638
  %33 = load i8, i8* %32, align 1, !dbg !638
  %34 = zext i8 %33 to i32, !dbg !638
  %35 = shl i32 %34, 8, !dbg !638
  %36 = or i32 %30, %35, !dbg !638
  %37 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !638
  %38 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !638
  %39 = load i8, i8* %38, align 1, !dbg !638
  %40 = zext i8 %39 to i32, !dbg !638
  %41 = shl i32 %40, 16, !dbg !638
  %42 = or i32 %36, %41, !dbg !638
  %43 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !638
  %44 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !638
  %45 = load i8, i8* %44, align 1, !dbg !638
  %46 = zext i8 %45 to i32, !dbg !638
  %47 = shl i32 %46, 24, !dbg !638
  %48 = or i32 %42, %47, !dbg !638
  %49 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !639
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %49, i64 0, i64 5, !dbg !640
  store i32 %48, i32* %50, align 4, !dbg !641
  %51 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !642
  %52 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !642
  %53 = load i8, i8* %52, align 1, !dbg !642
  %54 = zext i8 %53 to i32, !dbg !642
  %55 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !642
  %56 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !642
  %57 = load i8, i8* %56, align 1, !dbg !642
  %58 = zext i8 %57 to i32, !dbg !642
  %59 = shl i32 %58, 8, !dbg !642
  %60 = or i32 %54, %59, !dbg !642
  %61 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !642
  %62 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !642
  %63 = load i8, i8* %62, align 1, !dbg !642
  %64 = zext i8 %63 to i32, !dbg !642
  %65 = shl i32 %64, 16, !dbg !642
  %66 = or i32 %60, %65, !dbg !642
  %67 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !642
  %68 = getelementptr inbounds i8, i8* %67, i64 3, !dbg !642
  %69 = load i8, i8* %68, align 1, !dbg !642
  %70 = zext i8 %69 to i32, !dbg !642
  %71 = shl i32 %70, 24, !dbg !642
  %72 = or i32 %66, %71, !dbg !642
  %73 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !643
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %73, i64 0, i64 6, !dbg !644
  store i32 %72, i32* %74, align 4, !dbg !645
  %75 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !646
  %76 = getelementptr inbounds i8, i8* %75, i64 0, !dbg !646
  %77 = load i8, i8* %76, align 1, !dbg !646
  %78 = zext i8 %77 to i32, !dbg !646
  %79 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !646
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !646
  %81 = load i8, i8* %80, align 1, !dbg !646
  %82 = zext i8 %81 to i32, !dbg !646
  %83 = shl i32 %82, 8, !dbg !646
  %84 = or i32 %78, %83, !dbg !646
  %85 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !646
  %86 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !646
  %87 = load i8, i8* %86, align 1, !dbg !646
  %88 = zext i8 %87 to i32, !dbg !646
  %89 = shl i32 %88, 16, !dbg !646
  %90 = or i32 %84, %89, !dbg !646
  %91 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !646
  %92 = getelementptr inbounds i8, i8* %91, i64 3, !dbg !646
  %93 = load i8, i8* %92, align 1, !dbg !646
  %94 = zext i8 %93 to i32, !dbg !646
  %95 = shl i32 %94, 24, !dbg !646
  %96 = or i32 %90, %95, !dbg !646
  %97 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !647
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %97, i64 0, i64 7, !dbg !648
  store i32 %96, i32* %98, align 4, !dbg !649
  %99 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !650
  call void @llvm.dbg.value(metadata i8* %99, metadata !633, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), metadata !651, metadata !DIExpression()), !dbg !632
  %100 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !652
  %101 = getelementptr inbounds i8, i8* %100, i64 0, !dbg !652
  %102 = load i8, i8* %101, align 1, !dbg !652
  %103 = zext i8 %102 to i32, !dbg !652
  %104 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !652
  %105 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !652
  %106 = load i8, i8* %105, align 1, !dbg !652
  %107 = zext i8 %106 to i32, !dbg !652
  %108 = shl i32 %107, 8, !dbg !652
  %109 = or i32 %103, %108, !dbg !652
  %110 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !652
  %111 = getelementptr inbounds i8, i8* %110, i64 2, !dbg !652
  %112 = load i8, i8* %111, align 1, !dbg !652
  %113 = zext i8 %112 to i32, !dbg !652
  %114 = shl i32 %113, 16, !dbg !652
  %115 = or i32 %109, %114, !dbg !652
  %116 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !652
  %117 = getelementptr inbounds i8, i8* %116, i64 3, !dbg !652
  %118 = load i8, i8* %117, align 1, !dbg !652
  %119 = zext i8 %118 to i32, !dbg !652
  %120 = shl i32 %119, 24, !dbg !652
  %121 = or i32 %115, %120, !dbg !652
  %122 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !653
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %122, i64 0, i64 8, !dbg !654
  store i32 %121, i32* %123, align 4, !dbg !655
  %124 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !656
  %125 = getelementptr inbounds i8, i8* %124, i64 0, !dbg !656
  %126 = load i8, i8* %125, align 1, !dbg !656
  %127 = zext i8 %126 to i32, !dbg !656
  %128 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !656
  %129 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !656
  %130 = load i8, i8* %129, align 1, !dbg !656
  %131 = zext i8 %130 to i32, !dbg !656
  %132 = shl i32 %131, 8, !dbg !656
  %133 = or i32 %127, %132, !dbg !656
  %134 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !656
  %135 = getelementptr inbounds i8, i8* %134, i64 2, !dbg !656
  %136 = load i8, i8* %135, align 1, !dbg !656
  %137 = zext i8 %136 to i32, !dbg !656
  %138 = shl i32 %137, 16, !dbg !656
  %139 = or i32 %133, %138, !dbg !656
  %140 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !656
  %141 = getelementptr inbounds i8, i8* %140, i64 3, !dbg !656
  %142 = load i8, i8* %141, align 1, !dbg !656
  %143 = zext i8 %142 to i32, !dbg !656
  %144 = shl i32 %143, 24, !dbg !656
  %145 = or i32 %139, %144, !dbg !656
  %146 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !657
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %146, i64 0, i64 9, !dbg !658
  store i32 %145, i32* %147, align 4, !dbg !659
  %148 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !660
  %149 = getelementptr inbounds i8, i8* %148, i64 0, !dbg !660
  %150 = load i8, i8* %149, align 1, !dbg !660
  %151 = zext i8 %150 to i32, !dbg !660
  %152 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !660
  %153 = getelementptr inbounds i8, i8* %152, i64 1, !dbg !660
  %154 = load i8, i8* %153, align 1, !dbg !660
  %155 = zext i8 %154 to i32, !dbg !660
  %156 = shl i32 %155, 8, !dbg !660
  %157 = or i32 %151, %156, !dbg !660
  %158 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !660
  %159 = getelementptr inbounds i8, i8* %158, i64 2, !dbg !660
  %160 = load i8, i8* %159, align 1, !dbg !660
  %161 = zext i8 %160 to i32, !dbg !660
  %162 = shl i32 %161, 16, !dbg !660
  %163 = or i32 %157, %162, !dbg !660
  %164 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !660
  %165 = getelementptr inbounds i8, i8* %164, i64 3, !dbg !660
  %166 = load i8, i8* %165, align 1, !dbg !660
  %167 = zext i8 %166 to i32, !dbg !660
  %168 = shl i32 %167, 24, !dbg !660
  %169 = or i32 %163, %168, !dbg !660
  %170 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !661
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %170, i64 0, i64 10, !dbg !662
  store i32 %169, i32* %171, align 4, !dbg !663
  %172 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !664
  %173 = getelementptr inbounds i8, i8* %172, i64 0, !dbg !664
  %174 = load i8, i8* %173, align 1, !dbg !664
  %175 = zext i8 %174 to i32, !dbg !664
  %176 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !664
  %177 = getelementptr inbounds i8, i8* %176, i64 1, !dbg !664
  %178 = load i8, i8* %177, align 1, !dbg !664
  %179 = zext i8 %178 to i32, !dbg !664
  %180 = shl i32 %179, 8, !dbg !664
  %181 = or i32 %175, %180, !dbg !664
  %182 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !664
  %183 = getelementptr inbounds i8, i8* %182, i64 2, !dbg !664
  %184 = load i8, i8* %183, align 1, !dbg !664
  %185 = zext i8 %184 to i32, !dbg !664
  %186 = shl i32 %185, 16, !dbg !664
  %187 = or i32 %181, %186, !dbg !664
  %188 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !664
  %189 = getelementptr inbounds i8, i8* %188, i64 3, !dbg !664
  %190 = load i8, i8* %189, align 1, !dbg !664
  %191 = zext i8 %190 to i32, !dbg !664
  %192 = shl i32 %191, 24, !dbg !664
  %193 = or i32 %187, %192, !dbg !664
  %194 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !665
  %195 = getelementptr inbounds [16 x i32], [16 x i32]* %194, i64 0, i64 11, !dbg !666
  store i32 %193, i32* %195, align 4, !dbg !667
  %196 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 0, !dbg !668
  %197 = getelementptr inbounds i8, i8* %196, i64 0, !dbg !668
  %198 = load i8, i8* %197, align 1, !dbg !668
  %199 = zext i8 %198 to i32, !dbg !668
  %200 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 0, !dbg !668
  %201 = getelementptr inbounds i8, i8* %200, i64 1, !dbg !668
  %202 = load i8, i8* %201, align 1, !dbg !668
  %203 = zext i8 %202 to i32, !dbg !668
  %204 = shl i32 %203, 8, !dbg !668
  %205 = or i32 %199, %204, !dbg !668
  %206 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 0, !dbg !668
  %207 = getelementptr inbounds i8, i8* %206, i64 2, !dbg !668
  %208 = load i8, i8* %207, align 1, !dbg !668
  %209 = zext i8 %208 to i32, !dbg !668
  %210 = shl i32 %209, 16, !dbg !668
  %211 = or i32 %205, %210, !dbg !668
  %212 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 0, !dbg !668
  %213 = getelementptr inbounds i8, i8* %212, i64 3, !dbg !668
  %214 = load i8, i8* %213, align 1, !dbg !668
  %215 = zext i8 %214 to i32, !dbg !668
  %216 = shl i32 %215, 24, !dbg !668
  %217 = or i32 %211, %216, !dbg !668
  %218 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !669
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %218, i64 0, i64 0, !dbg !670
  store i32 %217, i32* %219, align 4, !dbg !671
  %220 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 4, !dbg !672
  %221 = getelementptr inbounds i8, i8* %220, i64 0, !dbg !672
  %222 = load i8, i8* %221, align 1, !dbg !672
  %223 = zext i8 %222 to i32, !dbg !672
  %224 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 4, !dbg !672
  %225 = getelementptr inbounds i8, i8* %224, i64 1, !dbg !672
  %226 = load i8, i8* %225, align 1, !dbg !672
  %227 = zext i8 %226 to i32, !dbg !672
  %228 = shl i32 %227, 8, !dbg !672
  %229 = or i32 %223, %228, !dbg !672
  %230 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 4, !dbg !672
  %231 = getelementptr inbounds i8, i8* %230, i64 2, !dbg !672
  %232 = load i8, i8* %231, align 1, !dbg !672
  %233 = zext i8 %232 to i32, !dbg !672
  %234 = shl i32 %233, 16, !dbg !672
  %235 = or i32 %229, %234, !dbg !672
  %236 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 4, !dbg !672
  %237 = getelementptr inbounds i8, i8* %236, i64 3, !dbg !672
  %238 = load i8, i8* %237, align 1, !dbg !672
  %239 = zext i8 %238 to i32, !dbg !672
  %240 = shl i32 %239, 24, !dbg !672
  %241 = or i32 %235, %240, !dbg !672
  %242 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !673
  %243 = getelementptr inbounds [16 x i32], [16 x i32]* %242, i64 0, i64 1, !dbg !674
  store i32 %241, i32* %243, align 4, !dbg !675
  %244 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 8, !dbg !676
  %245 = getelementptr inbounds i8, i8* %244, i64 0, !dbg !676
  %246 = load i8, i8* %245, align 1, !dbg !676
  %247 = zext i8 %246 to i32, !dbg !676
  %248 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 8, !dbg !676
  %249 = getelementptr inbounds i8, i8* %248, i64 1, !dbg !676
  %250 = load i8, i8* %249, align 1, !dbg !676
  %251 = zext i8 %250 to i32, !dbg !676
  %252 = shl i32 %251, 8, !dbg !676
  %253 = or i32 %247, %252, !dbg !676
  %254 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 8, !dbg !676
  %255 = getelementptr inbounds i8, i8* %254, i64 2, !dbg !676
  %256 = load i8, i8* %255, align 1, !dbg !676
  %257 = zext i8 %256 to i32, !dbg !676
  %258 = shl i32 %257, 16, !dbg !676
  %259 = or i32 %253, %258, !dbg !676
  %260 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 8, !dbg !676
  %261 = getelementptr inbounds i8, i8* %260, i64 3, !dbg !676
  %262 = load i8, i8* %261, align 1, !dbg !676
  %263 = zext i8 %262 to i32, !dbg !676
  %264 = shl i32 %263, 24, !dbg !676
  %265 = or i32 %259, %264, !dbg !676
  %266 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !677
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %266, i64 0, i64 2, !dbg !678
  store i32 %265, i32* %267, align 4, !dbg !679
  %268 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 12, !dbg !680
  %269 = getelementptr inbounds i8, i8* %268, i64 0, !dbg !680
  %270 = load i8, i8* %269, align 1, !dbg !680
  %271 = zext i8 %270 to i32, !dbg !680
  %272 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 12, !dbg !680
  %273 = getelementptr inbounds i8, i8* %272, i64 1, !dbg !680
  %274 = load i8, i8* %273, align 1, !dbg !680
  %275 = zext i8 %274 to i32, !dbg !680
  %276 = shl i32 %275, 8, !dbg !680
  %277 = or i32 %271, %276, !dbg !680
  %278 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 12, !dbg !680
  %279 = getelementptr inbounds i8, i8* %278, i64 2, !dbg !680
  %280 = load i8, i8* %279, align 1, !dbg !680
  %281 = zext i8 %280 to i32, !dbg !680
  %282 = shl i32 %281, 16, !dbg !680
  %283 = or i32 %277, %282, !dbg !680
  %284 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 12, !dbg !680
  %285 = getelementptr inbounds i8, i8* %284, i64 3, !dbg !680
  %286 = load i8, i8* %285, align 1, !dbg !680
  %287 = zext i8 %286 to i32, !dbg !680
  %288 = shl i32 %287, 24, !dbg !680
  %289 = or i32 %283, %288, !dbg !680
  %290 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !681
  %291 = getelementptr inbounds [16 x i32], [16 x i32]* %290, i64 0, i64 3, !dbg !682
  store i32 %289, i32* %291, align 4, !dbg !683
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_ivsetup(%struct.chacha_ctx* %0, i8* %1, i8* %2) #0 !dbg !685 {
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !688, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata i8* %1, metadata !690, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata i8* %2, metadata !691, metadata !DIExpression()), !dbg !689
  %4 = icmp eq i8* %2, null, !dbg !692
  br i1 %4, label %5, label %6, !dbg !693

5:                                                ; preds = %3
  br label %29, !dbg !693

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !694
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !694
  %9 = load i8, i8* %8, align 1, !dbg !694
  %10 = zext i8 %9 to i32, !dbg !694
  %11 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !694
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !694
  %13 = load i8, i8* %12, align 1, !dbg !694
  %14 = zext i8 %13 to i32, !dbg !694
  %15 = shl i32 %14, 8, !dbg !694
  %16 = or i32 %10, %15, !dbg !694
  %17 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !694
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !694
  %19 = load i8, i8* %18, align 1, !dbg !694
  %20 = zext i8 %19 to i32, !dbg !694
  %21 = shl i32 %20, 16, !dbg !694
  %22 = or i32 %16, %21, !dbg !694
  %23 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !694
  %24 = getelementptr inbounds i8, i8* %23, i64 3, !dbg !694
  %25 = load i8, i8* %24, align 1, !dbg !694
  %26 = zext i8 %25 to i32, !dbg !694
  %27 = shl i32 %26, 24, !dbg !694
  %28 = or i32 %22, %27, !dbg !694
  br label %29, !dbg !693

29:                                               ; preds = %6, %5
  %30 = phi i32 [ 0, %5 ], [ %28, %6 ], !dbg !693
  %31 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !695
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i64 0, i64 12, !dbg !696
  store i32 %30, i32* %32, align 4, !dbg !697
  %33 = icmp eq i8* %2, null, !dbg !698
  br i1 %33, label %34, label %35, !dbg !699

34:                                               ; preds = %29
  br label %58, !dbg !699

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !700
  %37 = getelementptr inbounds i8, i8* %36, i64 0, !dbg !700
  %38 = load i8, i8* %37, align 1, !dbg !700
  %39 = zext i8 %38 to i32, !dbg !700
  %40 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !700
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !700
  %42 = load i8, i8* %41, align 1, !dbg !700
  %43 = zext i8 %42 to i32, !dbg !700
  %44 = shl i32 %43, 8, !dbg !700
  %45 = or i32 %39, %44, !dbg !700
  %46 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !700
  %47 = getelementptr inbounds i8, i8* %46, i64 2, !dbg !700
  %48 = load i8, i8* %47, align 1, !dbg !700
  %49 = zext i8 %48 to i32, !dbg !700
  %50 = shl i32 %49, 16, !dbg !700
  %51 = or i32 %45, %50, !dbg !700
  %52 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !700
  %53 = getelementptr inbounds i8, i8* %52, i64 3, !dbg !700
  %54 = load i8, i8* %53, align 1, !dbg !700
  %55 = zext i8 %54 to i32, !dbg !700
  %56 = shl i32 %55, 24, !dbg !700
  %57 = or i32 %51, %56, !dbg !700
  br label %58, !dbg !699

58:                                               ; preds = %35, %34
  %59 = phi i32 [ 0, %34 ], [ %57, %35 ], !dbg !699
  %60 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !701
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %60, i64 0, i64 13, !dbg !702
  store i32 %59, i32* %61, align 4, !dbg !703
  %62 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !704
  %63 = getelementptr inbounds i8, i8* %62, i64 0, !dbg !704
  %64 = load i8, i8* %63, align 1, !dbg !704
  %65 = zext i8 %64 to i32, !dbg !704
  %66 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !704
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !704
  %68 = load i8, i8* %67, align 1, !dbg !704
  %69 = zext i8 %68 to i32, !dbg !704
  %70 = shl i32 %69, 8, !dbg !704
  %71 = or i32 %65, %70, !dbg !704
  %72 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !704
  %73 = getelementptr inbounds i8, i8* %72, i64 2, !dbg !704
  %74 = load i8, i8* %73, align 1, !dbg !704
  %75 = zext i8 %74 to i32, !dbg !704
  %76 = shl i32 %75, 16, !dbg !704
  %77 = or i32 %71, %76, !dbg !704
  %78 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !704
  %79 = getelementptr inbounds i8, i8* %78, i64 3, !dbg !704
  %80 = load i8, i8* %79, align 1, !dbg !704
  %81 = zext i8 %80 to i32, !dbg !704
  %82 = shl i32 %81, 24, !dbg !704
  %83 = or i32 %77, %82, !dbg !704
  %84 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !705
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %84, i64 0, i64 14, !dbg !706
  store i32 %83, i32* %85, align 4, !dbg !707
  %86 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !708
  %87 = getelementptr inbounds i8, i8* %86, i64 0, !dbg !708
  %88 = load i8, i8* %87, align 1, !dbg !708
  %89 = zext i8 %88 to i32, !dbg !708
  %90 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !708
  %91 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !708
  %92 = load i8, i8* %91, align 1, !dbg !708
  %93 = zext i8 %92 to i32, !dbg !708
  %94 = shl i32 %93, 8, !dbg !708
  %95 = or i32 %89, %94, !dbg !708
  %96 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !708
  %97 = getelementptr inbounds i8, i8* %96, i64 2, !dbg !708
  %98 = load i8, i8* %97, align 1, !dbg !708
  %99 = zext i8 %98 to i32, !dbg !708
  %100 = shl i32 %99, 16, !dbg !708
  %101 = or i32 %95, %100, !dbg !708
  %102 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !708
  %103 = getelementptr inbounds i8, i8* %102, i64 3, !dbg !708
  %104 = load i8, i8* %103, align 1, !dbg !708
  %105 = zext i8 %104 to i32, !dbg !708
  %106 = shl i32 %105, 24, !dbg !708
  %107 = or i32 %101, %106, !dbg !708
  %108 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !709
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %108, i64 0, i64 15, !dbg !710
  store i32 %107, i32* %109, align 4, !dbg !711
  ret void, !dbg !712
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_encrypt_bytes(%struct.chacha_ctx* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !713 {
  %5 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %1, metadata !719, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %2, metadata !720, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 %3, metadata !721, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* null, metadata !722, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata [64 x i8]* %5, metadata !723, metadata !DIExpression()), !dbg !727
  %6 = icmp ne i64 %3, 0, !dbg !728
  br i1 %6, label %8, label %7, !dbg !730

7:                                                ; preds = %4
  br label %1151, !dbg !731

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !733
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0, !dbg !734
  %11 = load i32, i32* %10, align 4, !dbg !734
  call void @llvm.dbg.value(metadata i32 %11, metadata !735, metadata !DIExpression()), !dbg !718
  %12 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !736
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 1, !dbg !737
  %14 = load i32, i32* %13, align 4, !dbg !737
  call void @llvm.dbg.value(metadata i32 %14, metadata !738, metadata !DIExpression()), !dbg !718
  %15 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !739
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2, !dbg !740
  %17 = load i32, i32* %16, align 4, !dbg !740
  call void @llvm.dbg.value(metadata i32 %17, metadata !741, metadata !DIExpression()), !dbg !718
  %18 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !742
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 3, !dbg !743
  %20 = load i32, i32* %19, align 4, !dbg !743
  call void @llvm.dbg.value(metadata i32 %20, metadata !744, metadata !DIExpression()), !dbg !718
  %21 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !745
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 4, !dbg !746
  %23 = load i32, i32* %22, align 4, !dbg !746
  call void @llvm.dbg.value(metadata i32 %23, metadata !747, metadata !DIExpression()), !dbg !718
  %24 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !748
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 5, !dbg !749
  %26 = load i32, i32* %25, align 4, !dbg !749
  call void @llvm.dbg.value(metadata i32 %26, metadata !750, metadata !DIExpression()), !dbg !718
  %27 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !751
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %27, i64 0, i64 6, !dbg !752
  %29 = load i32, i32* %28, align 4, !dbg !752
  call void @llvm.dbg.value(metadata i32 %29, metadata !753, metadata !DIExpression()), !dbg !718
  %30 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !754
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %30, i64 0, i64 7, !dbg !755
  %32 = load i32, i32* %31, align 4, !dbg !755
  call void @llvm.dbg.value(metadata i32 %32, metadata !756, metadata !DIExpression()), !dbg !718
  %33 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !757
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %33, i64 0, i64 8, !dbg !758
  %35 = load i32, i32* %34, align 4, !dbg !758
  call void @llvm.dbg.value(metadata i32 %35, metadata !759, metadata !DIExpression()), !dbg !718
  %36 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !760
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %36, i64 0, i64 9, !dbg !761
  %38 = load i32, i32* %37, align 4, !dbg !761
  call void @llvm.dbg.value(metadata i32 %38, metadata !762, metadata !DIExpression()), !dbg !718
  %39 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !763
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %39, i64 0, i64 10, !dbg !764
  %41 = load i32, i32* %40, align 4, !dbg !764
  call void @llvm.dbg.value(metadata i32 %41, metadata !765, metadata !DIExpression()), !dbg !718
  %42 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !766
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %42, i64 0, i64 11, !dbg !767
  %44 = load i32, i32* %43, align 4, !dbg !767
  call void @llvm.dbg.value(metadata i32 %44, metadata !768, metadata !DIExpression()), !dbg !718
  %45 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !769
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %45, i64 0, i64 12, !dbg !770
  %47 = load i32, i32* %46, align 4, !dbg !770
  call void @llvm.dbg.value(metadata i32 %47, metadata !771, metadata !DIExpression()), !dbg !718
  %48 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !772
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %48, i64 0, i64 13, !dbg !773
  %50 = load i32, i32* %49, align 4, !dbg !773
  call void @llvm.dbg.value(metadata i32 %50, metadata !774, metadata !DIExpression()), !dbg !718
  %51 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !775
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %51, i64 0, i64 14, !dbg !776
  %53 = load i32, i32* %52, align 4, !dbg !776
  call void @llvm.dbg.value(metadata i32 %53, metadata !777, metadata !DIExpression()), !dbg !718
  %54 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !778
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %54, i64 0, i64 15, !dbg !779
  %56 = load i32, i32* %55, align 4, !dbg !779
  call void @llvm.dbg.value(metadata i32 %56, metadata !780, metadata !DIExpression()), !dbg !718
  br label %57, !dbg !781

57:                                               ; preds = %1147, %8
  %.026 = phi i32 [ %47, %8 ], [ %657, %1147 ], !dbg !718
  %.024 = phi i32 [ %50, %8 ], [ %.125, %1147 ], !dbg !782
  %.022 = phi i8* [ null, %8 ], [ %.123, %1147 ], !dbg !718
  %.05 = phi i64 [ %3, %8 ], [ %1148, %1147 ]
  %.03 = phi i8* [ %2, %8 ], [ %1149, %1147 ]
  %.01 = phi i8* [ %1, %8 ], [ %1150, %1147 ]
  call void @llvm.dbg.value(metadata i8* %.01, metadata !719, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %.03, metadata !720, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 %.05, metadata !721, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %.022, metadata !722, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.024, metadata !774, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.026, metadata !771, metadata !DIExpression()), !dbg !718
  %58 = icmp ult i64 %.05, 64, !dbg !783
  br i1 %58, label %59, label %74, !dbg !788

59:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i32 0, metadata !789, metadata !DIExpression()), !dbg !718
  br label %60, !dbg !790

60:                                               ; preds = %69, %59
  %.0 = phi i32 [ 0, %59 ], [ %70, %69 ], !dbg !793
  call void @llvm.dbg.value(metadata i32 %.0, metadata !789, metadata !DIExpression()), !dbg !718
  %61 = zext i32 %.0 to i64, !dbg !794
  %62 = icmp ult i64 %61, %.05, !dbg !796
  br i1 %62, label %63, label %71, !dbg !797

63:                                               ; preds = %60
  %64 = zext i32 %.0 to i64, !dbg !798
  %65 = getelementptr inbounds i8, i8* %.01, i64 %64, !dbg !798
  %66 = load i8, i8* %65, align 1, !dbg !798
  %67 = zext i32 %.0 to i64, !dbg !800
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %67, !dbg !800
  store i8 %66, i8* %68, align 1, !dbg !801
  br label %69, !dbg !802

69:                                               ; preds = %63
  %70 = add i32 %.0, 1, !dbg !803
  call void @llvm.dbg.value(metadata i32 %70, metadata !789, metadata !DIExpression()), !dbg !718
  br label %60, !dbg !804, !llvm.loop !805

71:                                               ; preds = %60
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !807
  call void @llvm.dbg.value(metadata i8* %72, metadata !719, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %.03, metadata !722, metadata !DIExpression()), !dbg !718
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !808
  call void @llvm.dbg.value(metadata i8* %73, metadata !720, metadata !DIExpression()), !dbg !718
  br label %74, !dbg !809

74:                                               ; preds = %71, %57
  %.123 = phi i8* [ %.03, %71 ], [ %.022, %57 ], !dbg !718
  %.14 = phi i8* [ %73, %71 ], [ %.03, %57 ]
  %.12 = phi i8* [ %72, %71 ], [ %.01, %57 ]
  call void @llvm.dbg.value(metadata i8* %.12, metadata !719, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %.14, metadata !720, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %.123, metadata !722, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %11, metadata !810, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %14, metadata !811, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %17, metadata !812, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %20, metadata !813, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %23, metadata !814, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %26, metadata !815, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %29, metadata !816, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %32, metadata !817, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %35, metadata !818, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %38, metadata !819, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %41, metadata !820, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %44, metadata !821, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.026, metadata !822, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.024, metadata !823, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %53, metadata !824, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %56, metadata !825, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 20, metadata !789, metadata !DIExpression()), !dbg !718
  br label %75, !dbg !826

75:                                               ; preds = %270, %74
  %.021 = phi i32 [ %56, %74 ], [ %191, %270 ], !dbg !828
  %.020 = phi i32 [ %53, %74 ], [ %263, %270 ], !dbg !828
  %.019 = phi i32 [ %.024, %74 ], [ %239, %270 ], !dbg !828
  %.018 = phi i32 [ %.026, %74 ], [ %215, %270 ], !dbg !828
  %.017 = phi i32 [ %44, %74 ], [ %216, %270 ], !dbg !828
  %.016 = phi i32 [ %41, %74 ], [ %192, %270 ], !dbg !828
  %.015 = phi i32 [ %38, %74 ], [ %264, %270 ], !dbg !828
  %.014 = phi i32 [ %35, %74 ], [ %240, %270 ], !dbg !828
  %.013 = phi i32 [ %32, %74 ], [ %245, %270 ], !dbg !828
  %.012 = phi i32 [ %29, %74 ], [ %221, %270 ], !dbg !828
  %.011 = phi i32 [ %26, %74 ], [ %197, %270 ], !dbg !828
  %.010 = phi i32 [ %23, %74 ], [ %269, %270 ], !dbg !828
  %.09 = phi i32 [ %20, %74 ], [ %258, %270 ], !dbg !828
  %.08 = phi i32 [ %17, %74 ], [ %234, %270 ], !dbg !828
  %.07 = phi i32 [ %14, %74 ], [ %210, %270 ], !dbg !828
  %.06 = phi i32 [ %11, %74 ], [ %186, %270 ], !dbg !828
  %.1 = phi i32 [ 20, %74 ], [ %271, %270 ], !dbg !829
  call void @llvm.dbg.value(metadata i32 %.1, metadata !789, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.06, metadata !810, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.07, metadata !811, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.08, metadata !812, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.09, metadata !813, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.010, metadata !814, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.011, metadata !815, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.012, metadata !816, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.013, metadata !817, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.014, metadata !818, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.015, metadata !819, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.016, metadata !820, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.017, metadata !821, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.018, metadata !822, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.019, metadata !823, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.020, metadata !824, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %.021, metadata !825, metadata !DIExpression()), !dbg !718
  %76 = icmp ugt i32 %.1, 0, !dbg !830
  br i1 %76, label %77, label %272, !dbg !832

77:                                               ; preds = %75
  %78 = add i32 %.06, %.010, !dbg !833
  call void @llvm.dbg.value(metadata i32 %78, metadata !810, metadata !DIExpression()), !dbg !718
  %79 = xor i32 %.018, %78, !dbg !833
  %80 = shl i32 %79, 16, !dbg !833
  %81 = xor i32 %.018, %78, !dbg !833
  %82 = lshr i32 %81, 16, !dbg !833
  %83 = or i32 %80, %82, !dbg !833
  call void @llvm.dbg.value(metadata i32 %83, metadata !822, metadata !DIExpression()), !dbg !718
  %84 = add i32 %.014, %83, !dbg !833
  call void @llvm.dbg.value(metadata i32 %84, metadata !818, metadata !DIExpression()), !dbg !718
  %85 = xor i32 %.010, %84, !dbg !833
  %86 = shl i32 %85, 12, !dbg !833
  %87 = xor i32 %.010, %84, !dbg !833
  %88 = lshr i32 %87, 20, !dbg !833
  %89 = or i32 %86, %88, !dbg !833
  call void @llvm.dbg.value(metadata i32 %89, metadata !814, metadata !DIExpression()), !dbg !718
  %90 = add i32 %78, %89, !dbg !833
  call void @llvm.dbg.value(metadata i32 %90, metadata !810, metadata !DIExpression()), !dbg !718
  %91 = xor i32 %83, %90, !dbg !833
  %92 = shl i32 %91, 8, !dbg !833
  %93 = xor i32 %83, %90, !dbg !833
  %94 = lshr i32 %93, 24, !dbg !833
  %95 = or i32 %92, %94, !dbg !833
  call void @llvm.dbg.value(metadata i32 %95, metadata !822, metadata !DIExpression()), !dbg !718
  %96 = add i32 %84, %95, !dbg !833
  call void @llvm.dbg.value(metadata i32 %96, metadata !818, metadata !DIExpression()), !dbg !718
  %97 = xor i32 %89, %96, !dbg !833
  %98 = shl i32 %97, 7, !dbg !833
  %99 = xor i32 %89, %96, !dbg !833
  %100 = lshr i32 %99, 25, !dbg !833
  %101 = or i32 %98, %100, !dbg !833
  call void @llvm.dbg.value(metadata i32 %101, metadata !814, metadata !DIExpression()), !dbg !718
  %102 = add i32 %.07, %.011, !dbg !835
  call void @llvm.dbg.value(metadata i32 %102, metadata !811, metadata !DIExpression()), !dbg !718
  %103 = xor i32 %.019, %102, !dbg !835
  %104 = shl i32 %103, 16, !dbg !835
  %105 = xor i32 %.019, %102, !dbg !835
  %106 = lshr i32 %105, 16, !dbg !835
  %107 = or i32 %104, %106, !dbg !835
  call void @llvm.dbg.value(metadata i32 %107, metadata !823, metadata !DIExpression()), !dbg !718
  %108 = add i32 %.015, %107, !dbg !835
  call void @llvm.dbg.value(metadata i32 %108, metadata !819, metadata !DIExpression()), !dbg !718
  %109 = xor i32 %.011, %108, !dbg !835
  %110 = shl i32 %109, 12, !dbg !835
  %111 = xor i32 %.011, %108, !dbg !835
  %112 = lshr i32 %111, 20, !dbg !835
  %113 = or i32 %110, %112, !dbg !835
  call void @llvm.dbg.value(metadata i32 %113, metadata !815, metadata !DIExpression()), !dbg !718
  %114 = add i32 %102, %113, !dbg !835
  call void @llvm.dbg.value(metadata i32 %114, metadata !811, metadata !DIExpression()), !dbg !718
  %115 = xor i32 %107, %114, !dbg !835
  %116 = shl i32 %115, 8, !dbg !835
  %117 = xor i32 %107, %114, !dbg !835
  %118 = lshr i32 %117, 24, !dbg !835
  %119 = or i32 %116, %118, !dbg !835
  call void @llvm.dbg.value(metadata i32 %119, metadata !823, metadata !DIExpression()), !dbg !718
  %120 = add i32 %108, %119, !dbg !835
  call void @llvm.dbg.value(metadata i32 %120, metadata !819, metadata !DIExpression()), !dbg !718
  %121 = xor i32 %113, %120, !dbg !835
  %122 = shl i32 %121, 7, !dbg !835
  %123 = xor i32 %113, %120, !dbg !835
  %124 = lshr i32 %123, 25, !dbg !835
  %125 = or i32 %122, %124, !dbg !835
  call void @llvm.dbg.value(metadata i32 %125, metadata !815, metadata !DIExpression()), !dbg !718
  %126 = add i32 %.08, %.012, !dbg !836
  call void @llvm.dbg.value(metadata i32 %126, metadata !812, metadata !DIExpression()), !dbg !718
  %127 = xor i32 %.020, %126, !dbg !836
  %128 = shl i32 %127, 16, !dbg !836
  %129 = xor i32 %.020, %126, !dbg !836
  %130 = lshr i32 %129, 16, !dbg !836
  %131 = or i32 %128, %130, !dbg !836
  call void @llvm.dbg.value(metadata i32 %131, metadata !824, metadata !DIExpression()), !dbg !718
  %132 = add i32 %.016, %131, !dbg !836
  call void @llvm.dbg.value(metadata i32 %132, metadata !820, metadata !DIExpression()), !dbg !718
  %133 = xor i32 %.012, %132, !dbg !836
  %134 = shl i32 %133, 12, !dbg !836
  %135 = xor i32 %.012, %132, !dbg !836
  %136 = lshr i32 %135, 20, !dbg !836
  %137 = or i32 %134, %136, !dbg !836
  call void @llvm.dbg.value(metadata i32 %137, metadata !816, metadata !DIExpression()), !dbg !718
  %138 = add i32 %126, %137, !dbg !836
  call void @llvm.dbg.value(metadata i32 %138, metadata !812, metadata !DIExpression()), !dbg !718
  %139 = xor i32 %131, %138, !dbg !836
  %140 = shl i32 %139, 8, !dbg !836
  %141 = xor i32 %131, %138, !dbg !836
  %142 = lshr i32 %141, 24, !dbg !836
  %143 = or i32 %140, %142, !dbg !836
  call void @llvm.dbg.value(metadata i32 %143, metadata !824, metadata !DIExpression()), !dbg !718
  %144 = add i32 %132, %143, !dbg !836
  call void @llvm.dbg.value(metadata i32 %144, metadata !820, metadata !DIExpression()), !dbg !718
  %145 = xor i32 %137, %144, !dbg !836
  %146 = shl i32 %145, 7, !dbg !836
  %147 = xor i32 %137, %144, !dbg !836
  %148 = lshr i32 %147, 25, !dbg !836
  %149 = or i32 %146, %148, !dbg !836
  call void @llvm.dbg.value(metadata i32 %149, metadata !816, metadata !DIExpression()), !dbg !718
  %150 = add i32 %.09, %.013, !dbg !837
  call void @llvm.dbg.value(metadata i32 %150, metadata !813, metadata !DIExpression()), !dbg !718
  %151 = xor i32 %.021, %150, !dbg !837
  %152 = shl i32 %151, 16, !dbg !837
  %153 = xor i32 %.021, %150, !dbg !837
  %154 = lshr i32 %153, 16, !dbg !837
  %155 = or i32 %152, %154, !dbg !837
  call void @llvm.dbg.value(metadata i32 %155, metadata !825, metadata !DIExpression()), !dbg !718
  %156 = add i32 %.017, %155, !dbg !837
  call void @llvm.dbg.value(metadata i32 %156, metadata !821, metadata !DIExpression()), !dbg !718
  %157 = xor i32 %.013, %156, !dbg !837
  %158 = shl i32 %157, 12, !dbg !837
  %159 = xor i32 %.013, %156, !dbg !837
  %160 = lshr i32 %159, 20, !dbg !837
  %161 = or i32 %158, %160, !dbg !837
  call void @llvm.dbg.value(metadata i32 %161, metadata !817, metadata !DIExpression()), !dbg !718
  %162 = add i32 %150, %161, !dbg !837
  call void @llvm.dbg.value(metadata i32 %162, metadata !813, metadata !DIExpression()), !dbg !718
  %163 = xor i32 %155, %162, !dbg !837
  %164 = shl i32 %163, 8, !dbg !837
  %165 = xor i32 %155, %162, !dbg !837
  %166 = lshr i32 %165, 24, !dbg !837
  %167 = or i32 %164, %166, !dbg !837
  call void @llvm.dbg.value(metadata i32 %167, metadata !825, metadata !DIExpression()), !dbg !718
  %168 = add i32 %156, %167, !dbg !837
  call void @llvm.dbg.value(metadata i32 %168, metadata !821, metadata !DIExpression()), !dbg !718
  %169 = xor i32 %161, %168, !dbg !837
  %170 = shl i32 %169, 7, !dbg !837
  %171 = xor i32 %161, %168, !dbg !837
  %172 = lshr i32 %171, 25, !dbg !837
  %173 = or i32 %170, %172, !dbg !837
  call void @llvm.dbg.value(metadata i32 %173, metadata !817, metadata !DIExpression()), !dbg !718
  %174 = add i32 %90, %125, !dbg !838
  call void @llvm.dbg.value(metadata i32 %174, metadata !810, metadata !DIExpression()), !dbg !718
  %175 = xor i32 %167, %174, !dbg !838
  %176 = shl i32 %175, 16, !dbg !838
  %177 = xor i32 %167, %174, !dbg !838
  %178 = lshr i32 %177, 16, !dbg !838
  %179 = or i32 %176, %178, !dbg !838
  call void @llvm.dbg.value(metadata i32 %179, metadata !825, metadata !DIExpression()), !dbg !718
  %180 = add i32 %144, %179, !dbg !838
  call void @llvm.dbg.value(metadata i32 %180, metadata !820, metadata !DIExpression()), !dbg !718
  %181 = xor i32 %125, %180, !dbg !838
  %182 = shl i32 %181, 12, !dbg !838
  %183 = xor i32 %125, %180, !dbg !838
  %184 = lshr i32 %183, 20, !dbg !838
  %185 = or i32 %182, %184, !dbg !838
  call void @llvm.dbg.value(metadata i32 %185, metadata !815, metadata !DIExpression()), !dbg !718
  %186 = add i32 %174, %185, !dbg !838
  call void @llvm.dbg.value(metadata i32 %186, metadata !810, metadata !DIExpression()), !dbg !718
  %187 = xor i32 %179, %186, !dbg !838
  %188 = shl i32 %187, 8, !dbg !838
  %189 = xor i32 %179, %186, !dbg !838
  %190 = lshr i32 %189, 24, !dbg !838
  %191 = or i32 %188, %190, !dbg !838
  call void @llvm.dbg.value(metadata i32 %191, metadata !825, metadata !DIExpression()), !dbg !718
  %192 = add i32 %180, %191, !dbg !838
  call void @llvm.dbg.value(metadata i32 %192, metadata !820, metadata !DIExpression()), !dbg !718
  %193 = xor i32 %185, %192, !dbg !838
  %194 = shl i32 %193, 7, !dbg !838
  %195 = xor i32 %185, %192, !dbg !838
  %196 = lshr i32 %195, 25, !dbg !838
  %197 = or i32 %194, %196, !dbg !838
  call void @llvm.dbg.value(metadata i32 %197, metadata !815, metadata !DIExpression()), !dbg !718
  %198 = add i32 %114, %149, !dbg !839
  call void @llvm.dbg.value(metadata i32 %198, metadata !811, metadata !DIExpression()), !dbg !718
  %199 = xor i32 %95, %198, !dbg !839
  %200 = shl i32 %199, 16, !dbg !839
  %201 = xor i32 %95, %198, !dbg !839
  %202 = lshr i32 %201, 16, !dbg !839
  %203 = or i32 %200, %202, !dbg !839
  call void @llvm.dbg.value(metadata i32 %203, metadata !822, metadata !DIExpression()), !dbg !718
  %204 = add i32 %168, %203, !dbg !839
  call void @llvm.dbg.value(metadata i32 %204, metadata !821, metadata !DIExpression()), !dbg !718
  %205 = xor i32 %149, %204, !dbg !839
  %206 = shl i32 %205, 12, !dbg !839
  %207 = xor i32 %149, %204, !dbg !839
  %208 = lshr i32 %207, 20, !dbg !839
  %209 = or i32 %206, %208, !dbg !839
  call void @llvm.dbg.value(metadata i32 %209, metadata !816, metadata !DIExpression()), !dbg !718
  %210 = add i32 %198, %209, !dbg !839
  call void @llvm.dbg.value(metadata i32 %210, metadata !811, metadata !DIExpression()), !dbg !718
  %211 = xor i32 %203, %210, !dbg !839
  %212 = shl i32 %211, 8, !dbg !839
  %213 = xor i32 %203, %210, !dbg !839
  %214 = lshr i32 %213, 24, !dbg !839
  %215 = or i32 %212, %214, !dbg !839
  call void @llvm.dbg.value(metadata i32 %215, metadata !822, metadata !DIExpression()), !dbg !718
  %216 = add i32 %204, %215, !dbg !839
  call void @llvm.dbg.value(metadata i32 %216, metadata !821, metadata !DIExpression()), !dbg !718
  %217 = xor i32 %209, %216, !dbg !839
  %218 = shl i32 %217, 7, !dbg !839
  %219 = xor i32 %209, %216, !dbg !839
  %220 = lshr i32 %219, 25, !dbg !839
  %221 = or i32 %218, %220, !dbg !839
  call void @llvm.dbg.value(metadata i32 %221, metadata !816, metadata !DIExpression()), !dbg !718
  %222 = add i32 %138, %173, !dbg !840
  call void @llvm.dbg.value(metadata i32 %222, metadata !812, metadata !DIExpression()), !dbg !718
  %223 = xor i32 %119, %222, !dbg !840
  %224 = shl i32 %223, 16, !dbg !840
  %225 = xor i32 %119, %222, !dbg !840
  %226 = lshr i32 %225, 16, !dbg !840
  %227 = or i32 %224, %226, !dbg !840
  call void @llvm.dbg.value(metadata i32 %227, metadata !823, metadata !DIExpression()), !dbg !718
  %228 = add i32 %96, %227, !dbg !840
  call void @llvm.dbg.value(metadata i32 %228, metadata !818, metadata !DIExpression()), !dbg !718
  %229 = xor i32 %173, %228, !dbg !840
  %230 = shl i32 %229, 12, !dbg !840
  %231 = xor i32 %173, %228, !dbg !840
  %232 = lshr i32 %231, 20, !dbg !840
  %233 = or i32 %230, %232, !dbg !840
  call void @llvm.dbg.value(metadata i32 %233, metadata !817, metadata !DIExpression()), !dbg !718
  %234 = add i32 %222, %233, !dbg !840
  call void @llvm.dbg.value(metadata i32 %234, metadata !812, metadata !DIExpression()), !dbg !718
  %235 = xor i32 %227, %234, !dbg !840
  %236 = shl i32 %235, 8, !dbg !840
  %237 = xor i32 %227, %234, !dbg !840
  %238 = lshr i32 %237, 24, !dbg !840
  %239 = or i32 %236, %238, !dbg !840
  call void @llvm.dbg.value(metadata i32 %239, metadata !823, metadata !DIExpression()), !dbg !718
  %240 = add i32 %228, %239, !dbg !840
  call void @llvm.dbg.value(metadata i32 %240, metadata !818, metadata !DIExpression()), !dbg !718
  %241 = xor i32 %233, %240, !dbg !840
  %242 = shl i32 %241, 7, !dbg !840
  %243 = xor i32 %233, %240, !dbg !840
  %244 = lshr i32 %243, 25, !dbg !840
  %245 = or i32 %242, %244, !dbg !840
  call void @llvm.dbg.value(metadata i32 %245, metadata !817, metadata !DIExpression()), !dbg !718
  %246 = add i32 %162, %101, !dbg !841
  call void @llvm.dbg.value(metadata i32 %246, metadata !813, metadata !DIExpression()), !dbg !718
  %247 = xor i32 %143, %246, !dbg !841
  %248 = shl i32 %247, 16, !dbg !841
  %249 = xor i32 %143, %246, !dbg !841
  %250 = lshr i32 %249, 16, !dbg !841
  %251 = or i32 %248, %250, !dbg !841
  call void @llvm.dbg.value(metadata i32 %251, metadata !824, metadata !DIExpression()), !dbg !718
  %252 = add i32 %120, %251, !dbg !841
  call void @llvm.dbg.value(metadata i32 %252, metadata !819, metadata !DIExpression()), !dbg !718
  %253 = xor i32 %101, %252, !dbg !841
  %254 = shl i32 %253, 12, !dbg !841
  %255 = xor i32 %101, %252, !dbg !841
  %256 = lshr i32 %255, 20, !dbg !841
  %257 = or i32 %254, %256, !dbg !841
  call void @llvm.dbg.value(metadata i32 %257, metadata !814, metadata !DIExpression()), !dbg !718
  %258 = add i32 %246, %257, !dbg !841
  call void @llvm.dbg.value(metadata i32 %258, metadata !813, metadata !DIExpression()), !dbg !718
  %259 = xor i32 %251, %258, !dbg !841
  %260 = shl i32 %259, 8, !dbg !841
  %261 = xor i32 %251, %258, !dbg !841
  %262 = lshr i32 %261, 24, !dbg !841
  %263 = or i32 %260, %262, !dbg !841
  call void @llvm.dbg.value(metadata i32 %263, metadata !824, metadata !DIExpression()), !dbg !718
  %264 = add i32 %252, %263, !dbg !841
  call void @llvm.dbg.value(metadata i32 %264, metadata !819, metadata !DIExpression()), !dbg !718
  %265 = xor i32 %257, %264, !dbg !841
  %266 = shl i32 %265, 7, !dbg !841
  %267 = xor i32 %257, %264, !dbg !841
  %268 = lshr i32 %267, 25, !dbg !841
  %269 = or i32 %266, %268, !dbg !841
  call void @llvm.dbg.value(metadata i32 %269, metadata !814, metadata !DIExpression()), !dbg !718
  br label %270, !dbg !842

270:                                              ; preds = %77
  %271 = sub i32 %.1, 2, !dbg !843
  call void @llvm.dbg.value(metadata i32 %271, metadata !789, metadata !DIExpression()), !dbg !718
  br label %75, !dbg !844, !llvm.loop !845

272:                                              ; preds = %75
  %273 = add i32 %.06, %11, !dbg !847
  call void @llvm.dbg.value(metadata i32 %273, metadata !810, metadata !DIExpression()), !dbg !718
  %274 = add i32 %.07, %14, !dbg !848
  call void @llvm.dbg.value(metadata i32 %274, metadata !811, metadata !DIExpression()), !dbg !718
  %275 = add i32 %.08, %17, !dbg !849
  call void @llvm.dbg.value(metadata i32 %275, metadata !812, metadata !DIExpression()), !dbg !718
  %276 = add i32 %.09, %20, !dbg !850
  call void @llvm.dbg.value(metadata i32 %276, metadata !813, metadata !DIExpression()), !dbg !718
  %277 = add i32 %.010, %23, !dbg !851
  call void @llvm.dbg.value(metadata i32 %277, metadata !814, metadata !DIExpression()), !dbg !718
  %278 = add i32 %.011, %26, !dbg !852
  call void @llvm.dbg.value(metadata i32 %278, metadata !815, metadata !DIExpression()), !dbg !718
  %279 = add i32 %.012, %29, !dbg !853
  call void @llvm.dbg.value(metadata i32 %279, metadata !816, metadata !DIExpression()), !dbg !718
  %280 = add i32 %.013, %32, !dbg !854
  call void @llvm.dbg.value(metadata i32 %280, metadata !817, metadata !DIExpression()), !dbg !718
  %281 = add i32 %.014, %35, !dbg !855
  call void @llvm.dbg.value(metadata i32 %281, metadata !818, metadata !DIExpression()), !dbg !718
  %282 = add i32 %.015, %38, !dbg !856
  call void @llvm.dbg.value(metadata i32 %282, metadata !819, metadata !DIExpression()), !dbg !718
  %283 = add i32 %.016, %41, !dbg !857
  call void @llvm.dbg.value(metadata i32 %283, metadata !820, metadata !DIExpression()), !dbg !718
  %284 = add i32 %.017, %44, !dbg !858
  call void @llvm.dbg.value(metadata i32 %284, metadata !821, metadata !DIExpression()), !dbg !718
  %285 = add i32 %.018, %.026, !dbg !859
  call void @llvm.dbg.value(metadata i32 %285, metadata !822, metadata !DIExpression()), !dbg !718
  %286 = add i32 %.019, %.024, !dbg !860
  call void @llvm.dbg.value(metadata i32 %286, metadata !823, metadata !DIExpression()), !dbg !718
  %287 = add i32 %.020, %53, !dbg !861
  call void @llvm.dbg.value(metadata i32 %287, metadata !824, metadata !DIExpression()), !dbg !718
  %288 = add i32 %.021, %56, !dbg !862
  call void @llvm.dbg.value(metadata i32 %288, metadata !825, metadata !DIExpression()), !dbg !718
  %289 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !863
  %290 = getelementptr inbounds i8, i8* %289, i64 0, !dbg !863
  %291 = load i8, i8* %290, align 1, !dbg !863
  %292 = zext i8 %291 to i32, !dbg !863
  %293 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !863
  %294 = getelementptr inbounds i8, i8* %293, i64 1, !dbg !863
  %295 = load i8, i8* %294, align 1, !dbg !863
  %296 = zext i8 %295 to i32, !dbg !863
  %297 = shl i32 %296, 8, !dbg !863
  %298 = or i32 %292, %297, !dbg !863
  %299 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !863
  %300 = getelementptr inbounds i8, i8* %299, i64 2, !dbg !863
  %301 = load i8, i8* %300, align 1, !dbg !863
  %302 = zext i8 %301 to i32, !dbg !863
  %303 = shl i32 %302, 16, !dbg !863
  %304 = or i32 %298, %303, !dbg !863
  %305 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !863
  %306 = getelementptr inbounds i8, i8* %305, i64 3, !dbg !863
  %307 = load i8, i8* %306, align 1, !dbg !863
  %308 = zext i8 %307 to i32, !dbg !863
  %309 = shl i32 %308, 24, !dbg !863
  %310 = or i32 %304, %309, !dbg !863
  %311 = xor i32 %273, %310, !dbg !863
  call void @llvm.dbg.value(metadata i32 %311, metadata !810, metadata !DIExpression()), !dbg !718
  %312 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !864
  %313 = getelementptr inbounds i8, i8* %312, i64 0, !dbg !864
  %314 = load i8, i8* %313, align 1, !dbg !864
  %315 = zext i8 %314 to i32, !dbg !864
  %316 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !864
  %317 = getelementptr inbounds i8, i8* %316, i64 1, !dbg !864
  %318 = load i8, i8* %317, align 1, !dbg !864
  %319 = zext i8 %318 to i32, !dbg !864
  %320 = shl i32 %319, 8, !dbg !864
  %321 = or i32 %315, %320, !dbg !864
  %322 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !864
  %323 = getelementptr inbounds i8, i8* %322, i64 2, !dbg !864
  %324 = load i8, i8* %323, align 1, !dbg !864
  %325 = zext i8 %324 to i32, !dbg !864
  %326 = shl i32 %325, 16, !dbg !864
  %327 = or i32 %321, %326, !dbg !864
  %328 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !864
  %329 = getelementptr inbounds i8, i8* %328, i64 3, !dbg !864
  %330 = load i8, i8* %329, align 1, !dbg !864
  %331 = zext i8 %330 to i32, !dbg !864
  %332 = shl i32 %331, 24, !dbg !864
  %333 = or i32 %327, %332, !dbg !864
  %334 = xor i32 %274, %333, !dbg !864
  call void @llvm.dbg.value(metadata i32 %334, metadata !811, metadata !DIExpression()), !dbg !718
  %335 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !865
  %336 = getelementptr inbounds i8, i8* %335, i64 0, !dbg !865
  %337 = load i8, i8* %336, align 1, !dbg !865
  %338 = zext i8 %337 to i32, !dbg !865
  %339 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !865
  %340 = getelementptr inbounds i8, i8* %339, i64 1, !dbg !865
  %341 = load i8, i8* %340, align 1, !dbg !865
  %342 = zext i8 %341 to i32, !dbg !865
  %343 = shl i32 %342, 8, !dbg !865
  %344 = or i32 %338, %343, !dbg !865
  %345 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !865
  %346 = getelementptr inbounds i8, i8* %345, i64 2, !dbg !865
  %347 = load i8, i8* %346, align 1, !dbg !865
  %348 = zext i8 %347 to i32, !dbg !865
  %349 = shl i32 %348, 16, !dbg !865
  %350 = or i32 %344, %349, !dbg !865
  %351 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !865
  %352 = getelementptr inbounds i8, i8* %351, i64 3, !dbg !865
  %353 = load i8, i8* %352, align 1, !dbg !865
  %354 = zext i8 %353 to i32, !dbg !865
  %355 = shl i32 %354, 24, !dbg !865
  %356 = or i32 %350, %355, !dbg !865
  %357 = xor i32 %275, %356, !dbg !865
  call void @llvm.dbg.value(metadata i32 %357, metadata !812, metadata !DIExpression()), !dbg !718
  %358 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !866
  %359 = getelementptr inbounds i8, i8* %358, i64 0, !dbg !866
  %360 = load i8, i8* %359, align 1, !dbg !866
  %361 = zext i8 %360 to i32, !dbg !866
  %362 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !866
  %363 = getelementptr inbounds i8, i8* %362, i64 1, !dbg !866
  %364 = load i8, i8* %363, align 1, !dbg !866
  %365 = zext i8 %364 to i32, !dbg !866
  %366 = shl i32 %365, 8, !dbg !866
  %367 = or i32 %361, %366, !dbg !866
  %368 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !866
  %369 = getelementptr inbounds i8, i8* %368, i64 2, !dbg !866
  %370 = load i8, i8* %369, align 1, !dbg !866
  %371 = zext i8 %370 to i32, !dbg !866
  %372 = shl i32 %371, 16, !dbg !866
  %373 = or i32 %367, %372, !dbg !866
  %374 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !866
  %375 = getelementptr inbounds i8, i8* %374, i64 3, !dbg !866
  %376 = load i8, i8* %375, align 1, !dbg !866
  %377 = zext i8 %376 to i32, !dbg !866
  %378 = shl i32 %377, 24, !dbg !866
  %379 = or i32 %373, %378, !dbg !866
  %380 = xor i32 %276, %379, !dbg !866
  call void @llvm.dbg.value(metadata i32 %380, metadata !813, metadata !DIExpression()), !dbg !718
  %381 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !867
  %382 = getelementptr inbounds i8, i8* %381, i64 0, !dbg !867
  %383 = load i8, i8* %382, align 1, !dbg !867
  %384 = zext i8 %383 to i32, !dbg !867
  %385 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !867
  %386 = getelementptr inbounds i8, i8* %385, i64 1, !dbg !867
  %387 = load i8, i8* %386, align 1, !dbg !867
  %388 = zext i8 %387 to i32, !dbg !867
  %389 = shl i32 %388, 8, !dbg !867
  %390 = or i32 %384, %389, !dbg !867
  %391 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !867
  %392 = getelementptr inbounds i8, i8* %391, i64 2, !dbg !867
  %393 = load i8, i8* %392, align 1, !dbg !867
  %394 = zext i8 %393 to i32, !dbg !867
  %395 = shl i32 %394, 16, !dbg !867
  %396 = or i32 %390, %395, !dbg !867
  %397 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !867
  %398 = getelementptr inbounds i8, i8* %397, i64 3, !dbg !867
  %399 = load i8, i8* %398, align 1, !dbg !867
  %400 = zext i8 %399 to i32, !dbg !867
  %401 = shl i32 %400, 24, !dbg !867
  %402 = or i32 %396, %401, !dbg !867
  %403 = xor i32 %277, %402, !dbg !867
  call void @llvm.dbg.value(metadata i32 %403, metadata !814, metadata !DIExpression()), !dbg !718
  %404 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !868
  %405 = getelementptr inbounds i8, i8* %404, i64 0, !dbg !868
  %406 = load i8, i8* %405, align 1, !dbg !868
  %407 = zext i8 %406 to i32, !dbg !868
  %408 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !868
  %409 = getelementptr inbounds i8, i8* %408, i64 1, !dbg !868
  %410 = load i8, i8* %409, align 1, !dbg !868
  %411 = zext i8 %410 to i32, !dbg !868
  %412 = shl i32 %411, 8, !dbg !868
  %413 = or i32 %407, %412, !dbg !868
  %414 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !868
  %415 = getelementptr inbounds i8, i8* %414, i64 2, !dbg !868
  %416 = load i8, i8* %415, align 1, !dbg !868
  %417 = zext i8 %416 to i32, !dbg !868
  %418 = shl i32 %417, 16, !dbg !868
  %419 = or i32 %413, %418, !dbg !868
  %420 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !868
  %421 = getelementptr inbounds i8, i8* %420, i64 3, !dbg !868
  %422 = load i8, i8* %421, align 1, !dbg !868
  %423 = zext i8 %422 to i32, !dbg !868
  %424 = shl i32 %423, 24, !dbg !868
  %425 = or i32 %419, %424, !dbg !868
  %426 = xor i32 %278, %425, !dbg !868
  call void @llvm.dbg.value(metadata i32 %426, metadata !815, metadata !DIExpression()), !dbg !718
  %427 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !869
  %428 = getelementptr inbounds i8, i8* %427, i64 0, !dbg !869
  %429 = load i8, i8* %428, align 1, !dbg !869
  %430 = zext i8 %429 to i32, !dbg !869
  %431 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !869
  %432 = getelementptr inbounds i8, i8* %431, i64 1, !dbg !869
  %433 = load i8, i8* %432, align 1, !dbg !869
  %434 = zext i8 %433 to i32, !dbg !869
  %435 = shl i32 %434, 8, !dbg !869
  %436 = or i32 %430, %435, !dbg !869
  %437 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !869
  %438 = getelementptr inbounds i8, i8* %437, i64 2, !dbg !869
  %439 = load i8, i8* %438, align 1, !dbg !869
  %440 = zext i8 %439 to i32, !dbg !869
  %441 = shl i32 %440, 16, !dbg !869
  %442 = or i32 %436, %441, !dbg !869
  %443 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !869
  %444 = getelementptr inbounds i8, i8* %443, i64 3, !dbg !869
  %445 = load i8, i8* %444, align 1, !dbg !869
  %446 = zext i8 %445 to i32, !dbg !869
  %447 = shl i32 %446, 24, !dbg !869
  %448 = or i32 %442, %447, !dbg !869
  %449 = xor i32 %279, %448, !dbg !869
  call void @llvm.dbg.value(metadata i32 %449, metadata !816, metadata !DIExpression()), !dbg !718
  %450 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !870
  %451 = getelementptr inbounds i8, i8* %450, i64 0, !dbg !870
  %452 = load i8, i8* %451, align 1, !dbg !870
  %453 = zext i8 %452 to i32, !dbg !870
  %454 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !870
  %455 = getelementptr inbounds i8, i8* %454, i64 1, !dbg !870
  %456 = load i8, i8* %455, align 1, !dbg !870
  %457 = zext i8 %456 to i32, !dbg !870
  %458 = shl i32 %457, 8, !dbg !870
  %459 = or i32 %453, %458, !dbg !870
  %460 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !870
  %461 = getelementptr inbounds i8, i8* %460, i64 2, !dbg !870
  %462 = load i8, i8* %461, align 1, !dbg !870
  %463 = zext i8 %462 to i32, !dbg !870
  %464 = shl i32 %463, 16, !dbg !870
  %465 = or i32 %459, %464, !dbg !870
  %466 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !870
  %467 = getelementptr inbounds i8, i8* %466, i64 3, !dbg !870
  %468 = load i8, i8* %467, align 1, !dbg !870
  %469 = zext i8 %468 to i32, !dbg !870
  %470 = shl i32 %469, 24, !dbg !870
  %471 = or i32 %465, %470, !dbg !870
  %472 = xor i32 %280, %471, !dbg !870
  call void @llvm.dbg.value(metadata i32 %472, metadata !817, metadata !DIExpression()), !dbg !718
  %473 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !871
  %474 = getelementptr inbounds i8, i8* %473, i64 0, !dbg !871
  %475 = load i8, i8* %474, align 1, !dbg !871
  %476 = zext i8 %475 to i32, !dbg !871
  %477 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !871
  %478 = getelementptr inbounds i8, i8* %477, i64 1, !dbg !871
  %479 = load i8, i8* %478, align 1, !dbg !871
  %480 = zext i8 %479 to i32, !dbg !871
  %481 = shl i32 %480, 8, !dbg !871
  %482 = or i32 %476, %481, !dbg !871
  %483 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !871
  %484 = getelementptr inbounds i8, i8* %483, i64 2, !dbg !871
  %485 = load i8, i8* %484, align 1, !dbg !871
  %486 = zext i8 %485 to i32, !dbg !871
  %487 = shl i32 %486, 16, !dbg !871
  %488 = or i32 %482, %487, !dbg !871
  %489 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !871
  %490 = getelementptr inbounds i8, i8* %489, i64 3, !dbg !871
  %491 = load i8, i8* %490, align 1, !dbg !871
  %492 = zext i8 %491 to i32, !dbg !871
  %493 = shl i32 %492, 24, !dbg !871
  %494 = or i32 %488, %493, !dbg !871
  %495 = xor i32 %281, %494, !dbg !871
  call void @llvm.dbg.value(metadata i32 %495, metadata !818, metadata !DIExpression()), !dbg !718
  %496 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !872
  %497 = getelementptr inbounds i8, i8* %496, i64 0, !dbg !872
  %498 = load i8, i8* %497, align 1, !dbg !872
  %499 = zext i8 %498 to i32, !dbg !872
  %500 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !872
  %501 = getelementptr inbounds i8, i8* %500, i64 1, !dbg !872
  %502 = load i8, i8* %501, align 1, !dbg !872
  %503 = zext i8 %502 to i32, !dbg !872
  %504 = shl i32 %503, 8, !dbg !872
  %505 = or i32 %499, %504, !dbg !872
  %506 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !872
  %507 = getelementptr inbounds i8, i8* %506, i64 2, !dbg !872
  %508 = load i8, i8* %507, align 1, !dbg !872
  %509 = zext i8 %508 to i32, !dbg !872
  %510 = shl i32 %509, 16, !dbg !872
  %511 = or i32 %505, %510, !dbg !872
  %512 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !872
  %513 = getelementptr inbounds i8, i8* %512, i64 3, !dbg !872
  %514 = load i8, i8* %513, align 1, !dbg !872
  %515 = zext i8 %514 to i32, !dbg !872
  %516 = shl i32 %515, 24, !dbg !872
  %517 = or i32 %511, %516, !dbg !872
  %518 = xor i32 %282, %517, !dbg !872
  call void @llvm.dbg.value(metadata i32 %518, metadata !819, metadata !DIExpression()), !dbg !718
  %519 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !873
  %520 = getelementptr inbounds i8, i8* %519, i64 0, !dbg !873
  %521 = load i8, i8* %520, align 1, !dbg !873
  %522 = zext i8 %521 to i32, !dbg !873
  %523 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !873
  %524 = getelementptr inbounds i8, i8* %523, i64 1, !dbg !873
  %525 = load i8, i8* %524, align 1, !dbg !873
  %526 = zext i8 %525 to i32, !dbg !873
  %527 = shl i32 %526, 8, !dbg !873
  %528 = or i32 %522, %527, !dbg !873
  %529 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !873
  %530 = getelementptr inbounds i8, i8* %529, i64 2, !dbg !873
  %531 = load i8, i8* %530, align 1, !dbg !873
  %532 = zext i8 %531 to i32, !dbg !873
  %533 = shl i32 %532, 16, !dbg !873
  %534 = or i32 %528, %533, !dbg !873
  %535 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !873
  %536 = getelementptr inbounds i8, i8* %535, i64 3, !dbg !873
  %537 = load i8, i8* %536, align 1, !dbg !873
  %538 = zext i8 %537 to i32, !dbg !873
  %539 = shl i32 %538, 24, !dbg !873
  %540 = or i32 %534, %539, !dbg !873
  %541 = xor i32 %283, %540, !dbg !873
  call void @llvm.dbg.value(metadata i32 %541, metadata !820, metadata !DIExpression()), !dbg !718
  %542 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !874
  %543 = getelementptr inbounds i8, i8* %542, i64 0, !dbg !874
  %544 = load i8, i8* %543, align 1, !dbg !874
  %545 = zext i8 %544 to i32, !dbg !874
  %546 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !874
  %547 = getelementptr inbounds i8, i8* %546, i64 1, !dbg !874
  %548 = load i8, i8* %547, align 1, !dbg !874
  %549 = zext i8 %548 to i32, !dbg !874
  %550 = shl i32 %549, 8, !dbg !874
  %551 = or i32 %545, %550, !dbg !874
  %552 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !874
  %553 = getelementptr inbounds i8, i8* %552, i64 2, !dbg !874
  %554 = load i8, i8* %553, align 1, !dbg !874
  %555 = zext i8 %554 to i32, !dbg !874
  %556 = shl i32 %555, 16, !dbg !874
  %557 = or i32 %551, %556, !dbg !874
  %558 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !874
  %559 = getelementptr inbounds i8, i8* %558, i64 3, !dbg !874
  %560 = load i8, i8* %559, align 1, !dbg !874
  %561 = zext i8 %560 to i32, !dbg !874
  %562 = shl i32 %561, 24, !dbg !874
  %563 = or i32 %557, %562, !dbg !874
  %564 = xor i32 %284, %563, !dbg !874
  call void @llvm.dbg.value(metadata i32 %564, metadata !821, metadata !DIExpression()), !dbg !718
  %565 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !875
  %566 = getelementptr inbounds i8, i8* %565, i64 0, !dbg !875
  %567 = load i8, i8* %566, align 1, !dbg !875
  %568 = zext i8 %567 to i32, !dbg !875
  %569 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !875
  %570 = getelementptr inbounds i8, i8* %569, i64 1, !dbg !875
  %571 = load i8, i8* %570, align 1, !dbg !875
  %572 = zext i8 %571 to i32, !dbg !875
  %573 = shl i32 %572, 8, !dbg !875
  %574 = or i32 %568, %573, !dbg !875
  %575 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !875
  %576 = getelementptr inbounds i8, i8* %575, i64 2, !dbg !875
  %577 = load i8, i8* %576, align 1, !dbg !875
  %578 = zext i8 %577 to i32, !dbg !875
  %579 = shl i32 %578, 16, !dbg !875
  %580 = or i32 %574, %579, !dbg !875
  %581 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !875
  %582 = getelementptr inbounds i8, i8* %581, i64 3, !dbg !875
  %583 = load i8, i8* %582, align 1, !dbg !875
  %584 = zext i8 %583 to i32, !dbg !875
  %585 = shl i32 %584, 24, !dbg !875
  %586 = or i32 %580, %585, !dbg !875
  %587 = xor i32 %285, %586, !dbg !875
  call void @llvm.dbg.value(metadata i32 %587, metadata !822, metadata !DIExpression()), !dbg !718
  %588 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !876
  %589 = getelementptr inbounds i8, i8* %588, i64 0, !dbg !876
  %590 = load i8, i8* %589, align 1, !dbg !876
  %591 = zext i8 %590 to i32, !dbg !876
  %592 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !876
  %593 = getelementptr inbounds i8, i8* %592, i64 1, !dbg !876
  %594 = load i8, i8* %593, align 1, !dbg !876
  %595 = zext i8 %594 to i32, !dbg !876
  %596 = shl i32 %595, 8, !dbg !876
  %597 = or i32 %591, %596, !dbg !876
  %598 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !876
  %599 = getelementptr inbounds i8, i8* %598, i64 2, !dbg !876
  %600 = load i8, i8* %599, align 1, !dbg !876
  %601 = zext i8 %600 to i32, !dbg !876
  %602 = shl i32 %601, 16, !dbg !876
  %603 = or i32 %597, %602, !dbg !876
  %604 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !876
  %605 = getelementptr inbounds i8, i8* %604, i64 3, !dbg !876
  %606 = load i8, i8* %605, align 1, !dbg !876
  %607 = zext i8 %606 to i32, !dbg !876
  %608 = shl i32 %607, 24, !dbg !876
  %609 = or i32 %603, %608, !dbg !876
  %610 = xor i32 %286, %609, !dbg !876
  call void @llvm.dbg.value(metadata i32 %610, metadata !823, metadata !DIExpression()), !dbg !718
  %611 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !877
  %612 = getelementptr inbounds i8, i8* %611, i64 0, !dbg !877
  %613 = load i8, i8* %612, align 1, !dbg !877
  %614 = zext i8 %613 to i32, !dbg !877
  %615 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !877
  %616 = getelementptr inbounds i8, i8* %615, i64 1, !dbg !877
  %617 = load i8, i8* %616, align 1, !dbg !877
  %618 = zext i8 %617 to i32, !dbg !877
  %619 = shl i32 %618, 8, !dbg !877
  %620 = or i32 %614, %619, !dbg !877
  %621 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !877
  %622 = getelementptr inbounds i8, i8* %621, i64 2, !dbg !877
  %623 = load i8, i8* %622, align 1, !dbg !877
  %624 = zext i8 %623 to i32, !dbg !877
  %625 = shl i32 %624, 16, !dbg !877
  %626 = or i32 %620, %625, !dbg !877
  %627 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !877
  %628 = getelementptr inbounds i8, i8* %627, i64 3, !dbg !877
  %629 = load i8, i8* %628, align 1, !dbg !877
  %630 = zext i8 %629 to i32, !dbg !877
  %631 = shl i32 %630, 24, !dbg !877
  %632 = or i32 %626, %631, !dbg !877
  %633 = xor i32 %287, %632, !dbg !877
  call void @llvm.dbg.value(metadata i32 %633, metadata !824, metadata !DIExpression()), !dbg !718
  %634 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !878
  %635 = getelementptr inbounds i8, i8* %634, i64 0, !dbg !878
  %636 = load i8, i8* %635, align 1, !dbg !878
  %637 = zext i8 %636 to i32, !dbg !878
  %638 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !878
  %639 = getelementptr inbounds i8, i8* %638, i64 1, !dbg !878
  %640 = load i8, i8* %639, align 1, !dbg !878
  %641 = zext i8 %640 to i32, !dbg !878
  %642 = shl i32 %641, 8, !dbg !878
  %643 = or i32 %637, %642, !dbg !878
  %644 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !878
  %645 = getelementptr inbounds i8, i8* %644, i64 2, !dbg !878
  %646 = load i8, i8* %645, align 1, !dbg !878
  %647 = zext i8 %646 to i32, !dbg !878
  %648 = shl i32 %647, 16, !dbg !878
  %649 = or i32 %643, %648, !dbg !878
  %650 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !878
  %651 = getelementptr inbounds i8, i8* %650, i64 3, !dbg !878
  %652 = load i8, i8* %651, align 1, !dbg !878
  %653 = zext i8 %652 to i32, !dbg !878
  %654 = shl i32 %653, 24, !dbg !878
  %655 = or i32 %649, %654, !dbg !878
  %656 = xor i32 %288, %655, !dbg !878
  call void @llvm.dbg.value(metadata i32 %656, metadata !825, metadata !DIExpression()), !dbg !718
  %657 = add i32 %.026, 1, !dbg !879
  call void @llvm.dbg.value(metadata i32 %657, metadata !771, metadata !DIExpression()), !dbg !718
  %658 = icmp ne i32 %657, 0, !dbg !880
  br i1 %658, label %661, label %659, !dbg !882

659:                                              ; preds = %272
  %660 = add i32 %.024, 1, !dbg !883
  call void @llvm.dbg.value(metadata i32 %660, metadata !774, metadata !DIExpression()), !dbg !718
  br label %661, !dbg !885

661:                                              ; preds = %659, %272
  %.125 = phi i32 [ %.024, %272 ], [ %660, %659 ], !dbg !718
  call void @llvm.dbg.value(metadata i32 %.125, metadata !774, metadata !DIExpression()), !dbg !718
  br label %662, !dbg !886

662:                                              ; preds = %661
  %663 = trunc i32 %311 to i8, !dbg !887
  %664 = zext i8 %663 to i32, !dbg !887
  %665 = and i32 %664, 255, !dbg !887
  %666 = trunc i32 %665 to i8, !dbg !887
  %667 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !887
  %668 = getelementptr inbounds i8, i8* %667, i64 0, !dbg !887
  store i8 %666, i8* %668, align 1, !dbg !887
  %669 = lshr i32 %311, 8, !dbg !887
  %670 = trunc i32 %669 to i8, !dbg !887
  %671 = zext i8 %670 to i32, !dbg !887
  %672 = and i32 %671, 255, !dbg !887
  %673 = trunc i32 %672 to i8, !dbg !887
  %674 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !887
  %675 = getelementptr inbounds i8, i8* %674, i64 1, !dbg !887
  store i8 %673, i8* %675, align 1, !dbg !887
  %676 = lshr i32 %311, 16, !dbg !887
  %677 = trunc i32 %676 to i8, !dbg !887
  %678 = zext i8 %677 to i32, !dbg !887
  %679 = and i32 %678, 255, !dbg !887
  %680 = trunc i32 %679 to i8, !dbg !887
  %681 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !887
  %682 = getelementptr inbounds i8, i8* %681, i64 2, !dbg !887
  store i8 %680, i8* %682, align 1, !dbg !887
  %683 = lshr i32 %311, 24, !dbg !887
  %684 = trunc i32 %683 to i8, !dbg !887
  %685 = zext i8 %684 to i32, !dbg !887
  %686 = and i32 %685, 255, !dbg !887
  %687 = trunc i32 %686 to i8, !dbg !887
  %688 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !887
  %689 = getelementptr inbounds i8, i8* %688, i64 3, !dbg !887
  store i8 %687, i8* %689, align 1, !dbg !887
  br label %690, !dbg !887

690:                                              ; preds = %662
  br label %691, !dbg !889

691:                                              ; preds = %690
  %692 = trunc i32 %334 to i8, !dbg !890
  %693 = zext i8 %692 to i32, !dbg !890
  %694 = and i32 %693, 255, !dbg !890
  %695 = trunc i32 %694 to i8, !dbg !890
  %696 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !890
  %697 = getelementptr inbounds i8, i8* %696, i64 0, !dbg !890
  store i8 %695, i8* %697, align 1, !dbg !890
  %698 = lshr i32 %334, 8, !dbg !890
  %699 = trunc i32 %698 to i8, !dbg !890
  %700 = zext i8 %699 to i32, !dbg !890
  %701 = and i32 %700, 255, !dbg !890
  %702 = trunc i32 %701 to i8, !dbg !890
  %703 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !890
  %704 = getelementptr inbounds i8, i8* %703, i64 1, !dbg !890
  store i8 %702, i8* %704, align 1, !dbg !890
  %705 = lshr i32 %334, 16, !dbg !890
  %706 = trunc i32 %705 to i8, !dbg !890
  %707 = zext i8 %706 to i32, !dbg !890
  %708 = and i32 %707, 255, !dbg !890
  %709 = trunc i32 %708 to i8, !dbg !890
  %710 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !890
  %711 = getelementptr inbounds i8, i8* %710, i64 2, !dbg !890
  store i8 %709, i8* %711, align 1, !dbg !890
  %712 = lshr i32 %334, 24, !dbg !890
  %713 = trunc i32 %712 to i8, !dbg !890
  %714 = zext i8 %713 to i32, !dbg !890
  %715 = and i32 %714, 255, !dbg !890
  %716 = trunc i32 %715 to i8, !dbg !890
  %717 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !890
  %718 = getelementptr inbounds i8, i8* %717, i64 3, !dbg !890
  store i8 %716, i8* %718, align 1, !dbg !890
  br label %719, !dbg !890

719:                                              ; preds = %691
  br label %720, !dbg !892

720:                                              ; preds = %719
  %721 = trunc i32 %357 to i8, !dbg !893
  %722 = zext i8 %721 to i32, !dbg !893
  %723 = and i32 %722, 255, !dbg !893
  %724 = trunc i32 %723 to i8, !dbg !893
  %725 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !893
  %726 = getelementptr inbounds i8, i8* %725, i64 0, !dbg !893
  store i8 %724, i8* %726, align 1, !dbg !893
  %727 = lshr i32 %357, 8, !dbg !893
  %728 = trunc i32 %727 to i8, !dbg !893
  %729 = zext i8 %728 to i32, !dbg !893
  %730 = and i32 %729, 255, !dbg !893
  %731 = trunc i32 %730 to i8, !dbg !893
  %732 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !893
  %733 = getelementptr inbounds i8, i8* %732, i64 1, !dbg !893
  store i8 %731, i8* %733, align 1, !dbg !893
  %734 = lshr i32 %357, 16, !dbg !893
  %735 = trunc i32 %734 to i8, !dbg !893
  %736 = zext i8 %735 to i32, !dbg !893
  %737 = and i32 %736, 255, !dbg !893
  %738 = trunc i32 %737 to i8, !dbg !893
  %739 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !893
  %740 = getelementptr inbounds i8, i8* %739, i64 2, !dbg !893
  store i8 %738, i8* %740, align 1, !dbg !893
  %741 = lshr i32 %357, 24, !dbg !893
  %742 = trunc i32 %741 to i8, !dbg !893
  %743 = zext i8 %742 to i32, !dbg !893
  %744 = and i32 %743, 255, !dbg !893
  %745 = trunc i32 %744 to i8, !dbg !893
  %746 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !893
  %747 = getelementptr inbounds i8, i8* %746, i64 3, !dbg !893
  store i8 %745, i8* %747, align 1, !dbg !893
  br label %748, !dbg !893

748:                                              ; preds = %720
  br label %749, !dbg !895

749:                                              ; preds = %748
  %750 = trunc i32 %380 to i8, !dbg !896
  %751 = zext i8 %750 to i32, !dbg !896
  %752 = and i32 %751, 255, !dbg !896
  %753 = trunc i32 %752 to i8, !dbg !896
  %754 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !896
  %755 = getelementptr inbounds i8, i8* %754, i64 0, !dbg !896
  store i8 %753, i8* %755, align 1, !dbg !896
  %756 = lshr i32 %380, 8, !dbg !896
  %757 = trunc i32 %756 to i8, !dbg !896
  %758 = zext i8 %757 to i32, !dbg !896
  %759 = and i32 %758, 255, !dbg !896
  %760 = trunc i32 %759 to i8, !dbg !896
  %761 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !896
  %762 = getelementptr inbounds i8, i8* %761, i64 1, !dbg !896
  store i8 %760, i8* %762, align 1, !dbg !896
  %763 = lshr i32 %380, 16, !dbg !896
  %764 = trunc i32 %763 to i8, !dbg !896
  %765 = zext i8 %764 to i32, !dbg !896
  %766 = and i32 %765, 255, !dbg !896
  %767 = trunc i32 %766 to i8, !dbg !896
  %768 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !896
  %769 = getelementptr inbounds i8, i8* %768, i64 2, !dbg !896
  store i8 %767, i8* %769, align 1, !dbg !896
  %770 = lshr i32 %380, 24, !dbg !896
  %771 = trunc i32 %770 to i8, !dbg !896
  %772 = zext i8 %771 to i32, !dbg !896
  %773 = and i32 %772, 255, !dbg !896
  %774 = trunc i32 %773 to i8, !dbg !896
  %775 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !896
  %776 = getelementptr inbounds i8, i8* %775, i64 3, !dbg !896
  store i8 %774, i8* %776, align 1, !dbg !896
  br label %777, !dbg !896

777:                                              ; preds = %749
  br label %778, !dbg !898

778:                                              ; preds = %777
  %779 = trunc i32 %403 to i8, !dbg !899
  %780 = zext i8 %779 to i32, !dbg !899
  %781 = and i32 %780, 255, !dbg !899
  %782 = trunc i32 %781 to i8, !dbg !899
  %783 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !899
  %784 = getelementptr inbounds i8, i8* %783, i64 0, !dbg !899
  store i8 %782, i8* %784, align 1, !dbg !899
  %785 = lshr i32 %403, 8, !dbg !899
  %786 = trunc i32 %785 to i8, !dbg !899
  %787 = zext i8 %786 to i32, !dbg !899
  %788 = and i32 %787, 255, !dbg !899
  %789 = trunc i32 %788 to i8, !dbg !899
  %790 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !899
  %791 = getelementptr inbounds i8, i8* %790, i64 1, !dbg !899
  store i8 %789, i8* %791, align 1, !dbg !899
  %792 = lshr i32 %403, 16, !dbg !899
  %793 = trunc i32 %792 to i8, !dbg !899
  %794 = zext i8 %793 to i32, !dbg !899
  %795 = and i32 %794, 255, !dbg !899
  %796 = trunc i32 %795 to i8, !dbg !899
  %797 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !899
  %798 = getelementptr inbounds i8, i8* %797, i64 2, !dbg !899
  store i8 %796, i8* %798, align 1, !dbg !899
  %799 = lshr i32 %403, 24, !dbg !899
  %800 = trunc i32 %799 to i8, !dbg !899
  %801 = zext i8 %800 to i32, !dbg !899
  %802 = and i32 %801, 255, !dbg !899
  %803 = trunc i32 %802 to i8, !dbg !899
  %804 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !899
  %805 = getelementptr inbounds i8, i8* %804, i64 3, !dbg !899
  store i8 %803, i8* %805, align 1, !dbg !899
  br label %806, !dbg !899

806:                                              ; preds = %778
  br label %807, !dbg !901

807:                                              ; preds = %806
  %808 = trunc i32 %426 to i8, !dbg !902
  %809 = zext i8 %808 to i32, !dbg !902
  %810 = and i32 %809, 255, !dbg !902
  %811 = trunc i32 %810 to i8, !dbg !902
  %812 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !902
  %813 = getelementptr inbounds i8, i8* %812, i64 0, !dbg !902
  store i8 %811, i8* %813, align 1, !dbg !902
  %814 = lshr i32 %426, 8, !dbg !902
  %815 = trunc i32 %814 to i8, !dbg !902
  %816 = zext i8 %815 to i32, !dbg !902
  %817 = and i32 %816, 255, !dbg !902
  %818 = trunc i32 %817 to i8, !dbg !902
  %819 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !902
  %820 = getelementptr inbounds i8, i8* %819, i64 1, !dbg !902
  store i8 %818, i8* %820, align 1, !dbg !902
  %821 = lshr i32 %426, 16, !dbg !902
  %822 = trunc i32 %821 to i8, !dbg !902
  %823 = zext i8 %822 to i32, !dbg !902
  %824 = and i32 %823, 255, !dbg !902
  %825 = trunc i32 %824 to i8, !dbg !902
  %826 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !902
  %827 = getelementptr inbounds i8, i8* %826, i64 2, !dbg !902
  store i8 %825, i8* %827, align 1, !dbg !902
  %828 = lshr i32 %426, 24, !dbg !902
  %829 = trunc i32 %828 to i8, !dbg !902
  %830 = zext i8 %829 to i32, !dbg !902
  %831 = and i32 %830, 255, !dbg !902
  %832 = trunc i32 %831 to i8, !dbg !902
  %833 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !902
  %834 = getelementptr inbounds i8, i8* %833, i64 3, !dbg !902
  store i8 %832, i8* %834, align 1, !dbg !902
  br label %835, !dbg !902

835:                                              ; preds = %807
  br label %836, !dbg !904

836:                                              ; preds = %835
  %837 = trunc i32 %449 to i8, !dbg !905
  %838 = zext i8 %837 to i32, !dbg !905
  %839 = and i32 %838, 255, !dbg !905
  %840 = trunc i32 %839 to i8, !dbg !905
  %841 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !905
  %842 = getelementptr inbounds i8, i8* %841, i64 0, !dbg !905
  store i8 %840, i8* %842, align 1, !dbg !905
  %843 = lshr i32 %449, 8, !dbg !905
  %844 = trunc i32 %843 to i8, !dbg !905
  %845 = zext i8 %844 to i32, !dbg !905
  %846 = and i32 %845, 255, !dbg !905
  %847 = trunc i32 %846 to i8, !dbg !905
  %848 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !905
  %849 = getelementptr inbounds i8, i8* %848, i64 1, !dbg !905
  store i8 %847, i8* %849, align 1, !dbg !905
  %850 = lshr i32 %449, 16, !dbg !905
  %851 = trunc i32 %850 to i8, !dbg !905
  %852 = zext i8 %851 to i32, !dbg !905
  %853 = and i32 %852, 255, !dbg !905
  %854 = trunc i32 %853 to i8, !dbg !905
  %855 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !905
  %856 = getelementptr inbounds i8, i8* %855, i64 2, !dbg !905
  store i8 %854, i8* %856, align 1, !dbg !905
  %857 = lshr i32 %449, 24, !dbg !905
  %858 = trunc i32 %857 to i8, !dbg !905
  %859 = zext i8 %858 to i32, !dbg !905
  %860 = and i32 %859, 255, !dbg !905
  %861 = trunc i32 %860 to i8, !dbg !905
  %862 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !905
  %863 = getelementptr inbounds i8, i8* %862, i64 3, !dbg !905
  store i8 %861, i8* %863, align 1, !dbg !905
  br label %864, !dbg !905

864:                                              ; preds = %836
  br label %865, !dbg !907

865:                                              ; preds = %864
  %866 = trunc i32 %472 to i8, !dbg !908
  %867 = zext i8 %866 to i32, !dbg !908
  %868 = and i32 %867, 255, !dbg !908
  %869 = trunc i32 %868 to i8, !dbg !908
  %870 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !908
  %871 = getelementptr inbounds i8, i8* %870, i64 0, !dbg !908
  store i8 %869, i8* %871, align 1, !dbg !908
  %872 = lshr i32 %472, 8, !dbg !908
  %873 = trunc i32 %872 to i8, !dbg !908
  %874 = zext i8 %873 to i32, !dbg !908
  %875 = and i32 %874, 255, !dbg !908
  %876 = trunc i32 %875 to i8, !dbg !908
  %877 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !908
  %878 = getelementptr inbounds i8, i8* %877, i64 1, !dbg !908
  store i8 %876, i8* %878, align 1, !dbg !908
  %879 = lshr i32 %472, 16, !dbg !908
  %880 = trunc i32 %879 to i8, !dbg !908
  %881 = zext i8 %880 to i32, !dbg !908
  %882 = and i32 %881, 255, !dbg !908
  %883 = trunc i32 %882 to i8, !dbg !908
  %884 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !908
  %885 = getelementptr inbounds i8, i8* %884, i64 2, !dbg !908
  store i8 %883, i8* %885, align 1, !dbg !908
  %886 = lshr i32 %472, 24, !dbg !908
  %887 = trunc i32 %886 to i8, !dbg !908
  %888 = zext i8 %887 to i32, !dbg !908
  %889 = and i32 %888, 255, !dbg !908
  %890 = trunc i32 %889 to i8, !dbg !908
  %891 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !908
  %892 = getelementptr inbounds i8, i8* %891, i64 3, !dbg !908
  store i8 %890, i8* %892, align 1, !dbg !908
  br label %893, !dbg !908

893:                                              ; preds = %865
  br label %894, !dbg !910

894:                                              ; preds = %893
  %895 = trunc i32 %495 to i8, !dbg !911
  %896 = zext i8 %895 to i32, !dbg !911
  %897 = and i32 %896, 255, !dbg !911
  %898 = trunc i32 %897 to i8, !dbg !911
  %899 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !911
  %900 = getelementptr inbounds i8, i8* %899, i64 0, !dbg !911
  store i8 %898, i8* %900, align 1, !dbg !911
  %901 = lshr i32 %495, 8, !dbg !911
  %902 = trunc i32 %901 to i8, !dbg !911
  %903 = zext i8 %902 to i32, !dbg !911
  %904 = and i32 %903, 255, !dbg !911
  %905 = trunc i32 %904 to i8, !dbg !911
  %906 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !911
  %907 = getelementptr inbounds i8, i8* %906, i64 1, !dbg !911
  store i8 %905, i8* %907, align 1, !dbg !911
  %908 = lshr i32 %495, 16, !dbg !911
  %909 = trunc i32 %908 to i8, !dbg !911
  %910 = zext i8 %909 to i32, !dbg !911
  %911 = and i32 %910, 255, !dbg !911
  %912 = trunc i32 %911 to i8, !dbg !911
  %913 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !911
  %914 = getelementptr inbounds i8, i8* %913, i64 2, !dbg !911
  store i8 %912, i8* %914, align 1, !dbg !911
  %915 = lshr i32 %495, 24, !dbg !911
  %916 = trunc i32 %915 to i8, !dbg !911
  %917 = zext i8 %916 to i32, !dbg !911
  %918 = and i32 %917, 255, !dbg !911
  %919 = trunc i32 %918 to i8, !dbg !911
  %920 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !911
  %921 = getelementptr inbounds i8, i8* %920, i64 3, !dbg !911
  store i8 %919, i8* %921, align 1, !dbg !911
  br label %922, !dbg !911

922:                                              ; preds = %894
  br label %923, !dbg !913

923:                                              ; preds = %922
  %924 = trunc i32 %518 to i8, !dbg !914
  %925 = zext i8 %924 to i32, !dbg !914
  %926 = and i32 %925, 255, !dbg !914
  %927 = trunc i32 %926 to i8, !dbg !914
  %928 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !914
  %929 = getelementptr inbounds i8, i8* %928, i64 0, !dbg !914
  store i8 %927, i8* %929, align 1, !dbg !914
  %930 = lshr i32 %518, 8, !dbg !914
  %931 = trunc i32 %930 to i8, !dbg !914
  %932 = zext i8 %931 to i32, !dbg !914
  %933 = and i32 %932, 255, !dbg !914
  %934 = trunc i32 %933 to i8, !dbg !914
  %935 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !914
  %936 = getelementptr inbounds i8, i8* %935, i64 1, !dbg !914
  store i8 %934, i8* %936, align 1, !dbg !914
  %937 = lshr i32 %518, 16, !dbg !914
  %938 = trunc i32 %937 to i8, !dbg !914
  %939 = zext i8 %938 to i32, !dbg !914
  %940 = and i32 %939, 255, !dbg !914
  %941 = trunc i32 %940 to i8, !dbg !914
  %942 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !914
  %943 = getelementptr inbounds i8, i8* %942, i64 2, !dbg !914
  store i8 %941, i8* %943, align 1, !dbg !914
  %944 = lshr i32 %518, 24, !dbg !914
  %945 = trunc i32 %944 to i8, !dbg !914
  %946 = zext i8 %945 to i32, !dbg !914
  %947 = and i32 %946, 255, !dbg !914
  %948 = trunc i32 %947 to i8, !dbg !914
  %949 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !914
  %950 = getelementptr inbounds i8, i8* %949, i64 3, !dbg !914
  store i8 %948, i8* %950, align 1, !dbg !914
  br label %951, !dbg !914

951:                                              ; preds = %923
  br label %952, !dbg !916

952:                                              ; preds = %951
  %953 = trunc i32 %541 to i8, !dbg !917
  %954 = zext i8 %953 to i32, !dbg !917
  %955 = and i32 %954, 255, !dbg !917
  %956 = trunc i32 %955 to i8, !dbg !917
  %957 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !917
  %958 = getelementptr inbounds i8, i8* %957, i64 0, !dbg !917
  store i8 %956, i8* %958, align 1, !dbg !917
  %959 = lshr i32 %541, 8, !dbg !917
  %960 = trunc i32 %959 to i8, !dbg !917
  %961 = zext i8 %960 to i32, !dbg !917
  %962 = and i32 %961, 255, !dbg !917
  %963 = trunc i32 %962 to i8, !dbg !917
  %964 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !917
  %965 = getelementptr inbounds i8, i8* %964, i64 1, !dbg !917
  store i8 %963, i8* %965, align 1, !dbg !917
  %966 = lshr i32 %541, 16, !dbg !917
  %967 = trunc i32 %966 to i8, !dbg !917
  %968 = zext i8 %967 to i32, !dbg !917
  %969 = and i32 %968, 255, !dbg !917
  %970 = trunc i32 %969 to i8, !dbg !917
  %971 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !917
  %972 = getelementptr inbounds i8, i8* %971, i64 2, !dbg !917
  store i8 %970, i8* %972, align 1, !dbg !917
  %973 = lshr i32 %541, 24, !dbg !917
  %974 = trunc i32 %973 to i8, !dbg !917
  %975 = zext i8 %974 to i32, !dbg !917
  %976 = and i32 %975, 255, !dbg !917
  %977 = trunc i32 %976 to i8, !dbg !917
  %978 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !917
  %979 = getelementptr inbounds i8, i8* %978, i64 3, !dbg !917
  store i8 %977, i8* %979, align 1, !dbg !917
  br label %980, !dbg !917

980:                                              ; preds = %952
  br label %981, !dbg !919

981:                                              ; preds = %980
  %982 = trunc i32 %564 to i8, !dbg !920
  %983 = zext i8 %982 to i32, !dbg !920
  %984 = and i32 %983, 255, !dbg !920
  %985 = trunc i32 %984 to i8, !dbg !920
  %986 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !920
  %987 = getelementptr inbounds i8, i8* %986, i64 0, !dbg !920
  store i8 %985, i8* %987, align 1, !dbg !920
  %988 = lshr i32 %564, 8, !dbg !920
  %989 = trunc i32 %988 to i8, !dbg !920
  %990 = zext i8 %989 to i32, !dbg !920
  %991 = and i32 %990, 255, !dbg !920
  %992 = trunc i32 %991 to i8, !dbg !920
  %993 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !920
  %994 = getelementptr inbounds i8, i8* %993, i64 1, !dbg !920
  store i8 %992, i8* %994, align 1, !dbg !920
  %995 = lshr i32 %564, 16, !dbg !920
  %996 = trunc i32 %995 to i8, !dbg !920
  %997 = zext i8 %996 to i32, !dbg !920
  %998 = and i32 %997, 255, !dbg !920
  %999 = trunc i32 %998 to i8, !dbg !920
  %1000 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !920
  %1001 = getelementptr inbounds i8, i8* %1000, i64 2, !dbg !920
  store i8 %999, i8* %1001, align 1, !dbg !920
  %1002 = lshr i32 %564, 24, !dbg !920
  %1003 = trunc i32 %1002 to i8, !dbg !920
  %1004 = zext i8 %1003 to i32, !dbg !920
  %1005 = and i32 %1004, 255, !dbg !920
  %1006 = trunc i32 %1005 to i8, !dbg !920
  %1007 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !920
  %1008 = getelementptr inbounds i8, i8* %1007, i64 3, !dbg !920
  store i8 %1006, i8* %1008, align 1, !dbg !920
  br label %1009, !dbg !920

1009:                                             ; preds = %981
  br label %1010, !dbg !922

1010:                                             ; preds = %1009
  %1011 = trunc i32 %587 to i8, !dbg !923
  %1012 = zext i8 %1011 to i32, !dbg !923
  %1013 = and i32 %1012, 255, !dbg !923
  %1014 = trunc i32 %1013 to i8, !dbg !923
  %1015 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !923
  %1016 = getelementptr inbounds i8, i8* %1015, i64 0, !dbg !923
  store i8 %1014, i8* %1016, align 1, !dbg !923
  %1017 = lshr i32 %587, 8, !dbg !923
  %1018 = trunc i32 %1017 to i8, !dbg !923
  %1019 = zext i8 %1018 to i32, !dbg !923
  %1020 = and i32 %1019, 255, !dbg !923
  %1021 = trunc i32 %1020 to i8, !dbg !923
  %1022 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !923
  %1023 = getelementptr inbounds i8, i8* %1022, i64 1, !dbg !923
  store i8 %1021, i8* %1023, align 1, !dbg !923
  %1024 = lshr i32 %587, 16, !dbg !923
  %1025 = trunc i32 %1024 to i8, !dbg !923
  %1026 = zext i8 %1025 to i32, !dbg !923
  %1027 = and i32 %1026, 255, !dbg !923
  %1028 = trunc i32 %1027 to i8, !dbg !923
  %1029 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !923
  %1030 = getelementptr inbounds i8, i8* %1029, i64 2, !dbg !923
  store i8 %1028, i8* %1030, align 1, !dbg !923
  %1031 = lshr i32 %587, 24, !dbg !923
  %1032 = trunc i32 %1031 to i8, !dbg !923
  %1033 = zext i8 %1032 to i32, !dbg !923
  %1034 = and i32 %1033, 255, !dbg !923
  %1035 = trunc i32 %1034 to i8, !dbg !923
  %1036 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !923
  %1037 = getelementptr inbounds i8, i8* %1036, i64 3, !dbg !923
  store i8 %1035, i8* %1037, align 1, !dbg !923
  br label %1038, !dbg !923

1038:                                             ; preds = %1010
  br label %1039, !dbg !925

1039:                                             ; preds = %1038
  %1040 = trunc i32 %610 to i8, !dbg !926
  %1041 = zext i8 %1040 to i32, !dbg !926
  %1042 = and i32 %1041, 255, !dbg !926
  %1043 = trunc i32 %1042 to i8, !dbg !926
  %1044 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !926
  %1045 = getelementptr inbounds i8, i8* %1044, i64 0, !dbg !926
  store i8 %1043, i8* %1045, align 1, !dbg !926
  %1046 = lshr i32 %610, 8, !dbg !926
  %1047 = trunc i32 %1046 to i8, !dbg !926
  %1048 = zext i8 %1047 to i32, !dbg !926
  %1049 = and i32 %1048, 255, !dbg !926
  %1050 = trunc i32 %1049 to i8, !dbg !926
  %1051 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !926
  %1052 = getelementptr inbounds i8, i8* %1051, i64 1, !dbg !926
  store i8 %1050, i8* %1052, align 1, !dbg !926
  %1053 = lshr i32 %610, 16, !dbg !926
  %1054 = trunc i32 %1053 to i8, !dbg !926
  %1055 = zext i8 %1054 to i32, !dbg !926
  %1056 = and i32 %1055, 255, !dbg !926
  %1057 = trunc i32 %1056 to i8, !dbg !926
  %1058 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !926
  %1059 = getelementptr inbounds i8, i8* %1058, i64 2, !dbg !926
  store i8 %1057, i8* %1059, align 1, !dbg !926
  %1060 = lshr i32 %610, 24, !dbg !926
  %1061 = trunc i32 %1060 to i8, !dbg !926
  %1062 = zext i8 %1061 to i32, !dbg !926
  %1063 = and i32 %1062, 255, !dbg !926
  %1064 = trunc i32 %1063 to i8, !dbg !926
  %1065 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !926
  %1066 = getelementptr inbounds i8, i8* %1065, i64 3, !dbg !926
  store i8 %1064, i8* %1066, align 1, !dbg !926
  br label %1067, !dbg !926

1067:                                             ; preds = %1039
  br label %1068, !dbg !928

1068:                                             ; preds = %1067
  %1069 = trunc i32 %633 to i8, !dbg !929
  %1070 = zext i8 %1069 to i32, !dbg !929
  %1071 = and i32 %1070, 255, !dbg !929
  %1072 = trunc i32 %1071 to i8, !dbg !929
  %1073 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !929
  %1074 = getelementptr inbounds i8, i8* %1073, i64 0, !dbg !929
  store i8 %1072, i8* %1074, align 1, !dbg !929
  %1075 = lshr i32 %633, 8, !dbg !929
  %1076 = trunc i32 %1075 to i8, !dbg !929
  %1077 = zext i8 %1076 to i32, !dbg !929
  %1078 = and i32 %1077, 255, !dbg !929
  %1079 = trunc i32 %1078 to i8, !dbg !929
  %1080 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !929
  %1081 = getelementptr inbounds i8, i8* %1080, i64 1, !dbg !929
  store i8 %1079, i8* %1081, align 1, !dbg !929
  %1082 = lshr i32 %633, 16, !dbg !929
  %1083 = trunc i32 %1082 to i8, !dbg !929
  %1084 = zext i8 %1083 to i32, !dbg !929
  %1085 = and i32 %1084, 255, !dbg !929
  %1086 = trunc i32 %1085 to i8, !dbg !929
  %1087 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !929
  %1088 = getelementptr inbounds i8, i8* %1087, i64 2, !dbg !929
  store i8 %1086, i8* %1088, align 1, !dbg !929
  %1089 = lshr i32 %633, 24, !dbg !929
  %1090 = trunc i32 %1089 to i8, !dbg !929
  %1091 = zext i8 %1090 to i32, !dbg !929
  %1092 = and i32 %1091, 255, !dbg !929
  %1093 = trunc i32 %1092 to i8, !dbg !929
  %1094 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !929
  %1095 = getelementptr inbounds i8, i8* %1094, i64 3, !dbg !929
  store i8 %1093, i8* %1095, align 1, !dbg !929
  br label %1096, !dbg !929

1096:                                             ; preds = %1068
  br label %1097, !dbg !931

1097:                                             ; preds = %1096
  %1098 = trunc i32 %656 to i8, !dbg !932
  %1099 = zext i8 %1098 to i32, !dbg !932
  %1100 = and i32 %1099, 255, !dbg !932
  %1101 = trunc i32 %1100 to i8, !dbg !932
  %1102 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !932
  %1103 = getelementptr inbounds i8, i8* %1102, i64 0, !dbg !932
  store i8 %1101, i8* %1103, align 1, !dbg !932
  %1104 = lshr i32 %656, 8, !dbg !932
  %1105 = trunc i32 %1104 to i8, !dbg !932
  %1106 = zext i8 %1105 to i32, !dbg !932
  %1107 = and i32 %1106, 255, !dbg !932
  %1108 = trunc i32 %1107 to i8, !dbg !932
  %1109 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !932
  %1110 = getelementptr inbounds i8, i8* %1109, i64 1, !dbg !932
  store i8 %1108, i8* %1110, align 1, !dbg !932
  %1111 = lshr i32 %656, 16, !dbg !932
  %1112 = trunc i32 %1111 to i8, !dbg !932
  %1113 = zext i8 %1112 to i32, !dbg !932
  %1114 = and i32 %1113, 255, !dbg !932
  %1115 = trunc i32 %1114 to i8, !dbg !932
  %1116 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !932
  %1117 = getelementptr inbounds i8, i8* %1116, i64 2, !dbg !932
  store i8 %1115, i8* %1117, align 1, !dbg !932
  %1118 = lshr i32 %656, 24, !dbg !932
  %1119 = trunc i32 %1118 to i8, !dbg !932
  %1120 = zext i8 %1119 to i32, !dbg !932
  %1121 = and i32 %1120, 255, !dbg !932
  %1122 = trunc i32 %1121 to i8, !dbg !932
  %1123 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !932
  %1124 = getelementptr inbounds i8, i8* %1123, i64 3, !dbg !932
  store i8 %1122, i8* %1124, align 1, !dbg !932
  br label %1125, !dbg !932

1125:                                             ; preds = %1097
  %1126 = icmp ule i64 %.05, 64, !dbg !934
  br i1 %1126, label %1127, label %1147, !dbg !936

1127:                                             ; preds = %1125
  %1128 = icmp ult i64 %.05, 64, !dbg !937
  br i1 %1128, label %1129, label %1142, !dbg !940

1129:                                             ; preds = %1127
  call void @llvm.dbg.value(metadata i32 0, metadata !789, metadata !DIExpression()), !dbg !718
  br label %1130, !dbg !941

1130:                                             ; preds = %1139, %1129
  %.2 = phi i32 [ 0, %1129 ], [ %1140, %1139 ], !dbg !944
  call void @llvm.dbg.value(metadata i32 %.2, metadata !789, metadata !DIExpression()), !dbg !718
  %1131 = trunc i64 %.05 to i32, !dbg !945
  %1132 = icmp ult i32 %.2, %1131, !dbg !947
  br i1 %1132, label %1133, label %1141, !dbg !948

1133:                                             ; preds = %1130
  %1134 = zext i32 %.2 to i64, !dbg !949
  %1135 = getelementptr inbounds i8, i8* %.14, i64 %1134, !dbg !949
  %1136 = load i8, i8* %1135, align 1, !dbg !949
  %1137 = zext i32 %.2 to i64, !dbg !951
  %1138 = getelementptr inbounds i8, i8* %.123, i64 %1137, !dbg !951
  store i8 %1136, i8* %1138, align 1, !dbg !952
  br label %1139, !dbg !953

1139:                                             ; preds = %1133
  %1140 = add i32 %.2, 1, !dbg !954
  call void @llvm.dbg.value(metadata i32 %1140, metadata !789, metadata !DIExpression()), !dbg !718
  br label %1130, !dbg !955, !llvm.loop !956

1141:                                             ; preds = %1130
  br label %1142, !dbg !958

1142:                                             ; preds = %1141, %1127
  %1143 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !959
  %1144 = getelementptr inbounds [16 x i32], [16 x i32]* %1143, i64 0, i64 12, !dbg !960
  store i32 %657, i32* %1144, align 4, !dbg !961
  %1145 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !962
  %1146 = getelementptr inbounds [16 x i32], [16 x i32]* %1145, i64 0, i64 13, !dbg !963
  store i32 %.125, i32* %1146, align 4, !dbg !964
  br label %1151, !dbg !965

1147:                                             ; preds = %1125
  %1148 = sub i64 %.05, 64, !dbg !966
  call void @llvm.dbg.value(metadata i64 %1148, metadata !721, metadata !DIExpression()), !dbg !718
  %1149 = getelementptr inbounds i8, i8* %.14, i64 64, !dbg !967
  call void @llvm.dbg.value(metadata i8* %1149, metadata !720, metadata !DIExpression()), !dbg !718
  %1150 = getelementptr inbounds i8, i8* %.12, i64 64, !dbg !968
  call void @llvm.dbg.value(metadata i8* %1150, metadata !719, metadata !DIExpression()), !dbg !718
  br label %57, !dbg !969, !llvm.loop !970

1151:                                             ; preds = %1142, %7
  ret void, !dbg !973
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 !dbg !974 {
  %7 = alloca %struct.chacha_ctx, align 4
  %8 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i8* %1, metadata !977, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i64 %2, metadata !978, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i8* %3, metadata !979, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i64 %4, metadata !980, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i8* %5, metadata !981, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.declare(metadata %struct.chacha_ctx* %7, metadata !982, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.declare(metadata [8 x i8]* %8, metadata !984, metadata !DIExpression()), !dbg !988
  %9 = icmp ne i64 %2, 0, !dbg !989
  br i1 %9, label %11, label %10, !dbg !991

10:                                               ; preds = %6
  br label %76, !dbg !992

11:                                               ; preds = %6
  %12 = lshr i64 %4, 32, !dbg !994
  %13 = trunc i64 %12 to i32, !dbg !994
  call void @llvm.dbg.value(metadata i32 %13, metadata !995, metadata !DIExpression()), !dbg !976
  %14 = trunc i64 %4 to i32, !dbg !996
  call void @llvm.dbg.value(metadata i32 %14, metadata !997, metadata !DIExpression()), !dbg !976
  br label %15, !dbg !998

15:                                               ; preds = %11
  %16 = trunc i32 %14 to i8, !dbg !999
  %17 = zext i8 %16 to i32, !dbg !999
  %18 = and i32 %17, 255, !dbg !999
  %19 = trunc i32 %18 to i8, !dbg !999
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !999
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !999
  store i8 %19, i8* %21, align 1, !dbg !999
  %22 = lshr i32 %14, 8, !dbg !999
  %23 = trunc i32 %22 to i8, !dbg !999
  %24 = zext i8 %23 to i32, !dbg !999
  %25 = and i32 %24, 255, !dbg !999
  %26 = trunc i32 %25 to i8, !dbg !999
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !999
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !999
  store i8 %26, i8* %28, align 1, !dbg !999
  %29 = lshr i32 %14, 16, !dbg !999
  %30 = trunc i32 %29 to i8, !dbg !999
  %31 = zext i8 %30 to i32, !dbg !999
  %32 = and i32 %31, 255, !dbg !999
  %33 = trunc i32 %32 to i8, !dbg !999
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !999
  %35 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !999
  store i8 %33, i8* %35, align 1, !dbg !999
  %36 = lshr i32 %14, 24, !dbg !999
  %37 = trunc i32 %36 to i8, !dbg !999
  %38 = zext i8 %37 to i32, !dbg !999
  %39 = and i32 %38, 255, !dbg !999
  %40 = trunc i32 %39 to i8, !dbg !999
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !999
  %42 = getelementptr inbounds i8, i8* %41, i64 3, !dbg !999
  store i8 %40, i8* %42, align 1, !dbg !999
  br label %43, !dbg !999

43:                                               ; preds = %15
  br label %44, !dbg !1001

44:                                               ; preds = %43
  %45 = trunc i32 %13 to i8, !dbg !1002
  %46 = zext i8 %45 to i32, !dbg !1002
  %47 = and i32 %46, 255, !dbg !1002
  %48 = trunc i32 %47 to i8, !dbg !1002
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !1002
  %50 = getelementptr inbounds i8, i8* %49, i64 0, !dbg !1002
  store i8 %48, i8* %50, align 1, !dbg !1002
  %51 = lshr i32 %13, 8, !dbg !1002
  %52 = trunc i32 %51 to i8, !dbg !1002
  %53 = zext i8 %52 to i32, !dbg !1002
  %54 = and i32 %53, 255, !dbg !1002
  %55 = trunc i32 %54 to i8, !dbg !1002
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !1002
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1002
  store i8 %55, i8* %57, align 1, !dbg !1002
  %58 = lshr i32 %13, 16, !dbg !1002
  %59 = trunc i32 %58 to i8, !dbg !1002
  %60 = zext i8 %59 to i32, !dbg !1002
  %61 = and i32 %60, 255, !dbg !1002
  %62 = trunc i32 %61 to i8, !dbg !1002
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !1002
  %64 = getelementptr inbounds i8, i8* %63, i64 2, !dbg !1002
  store i8 %62, i8* %64, align 1, !dbg !1002
  %65 = lshr i32 %13, 24, !dbg !1002
  %66 = trunc i32 %65 to i8, !dbg !1002
  %67 = zext i8 %66 to i32, !dbg !1002
  %68 = and i32 %67, 255, !dbg !1002
  %69 = trunc i32 %68 to i8, !dbg !1002
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !1002
  %71 = getelementptr inbounds i8, i8* %70, i64 3, !dbg !1002
  store i8 %69, i8* %71, align 1, !dbg !1002
  br label %72, !dbg !1002

72:                                               ; preds = %44
  call void @chacha_keysetup(%struct.chacha_ctx* %7, i8* %5), !dbg !1004
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !1005
  call void @chacha_ivsetup(%struct.chacha_ctx* %7, i8* %3, i8* %73), !dbg !1006
  call void @chacha_encrypt_bytes(%struct.chacha_ctx* %7, i8* %1, i8* %0, i64 %2), !dbg !1007
  %74 = bitcast %struct.chacha_ctx* %7 to i8*, !dbg !1008
  call void @sodium_memzero(i8* %74, i64 64), !dbg !1009
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !1010
  call void @sodium_memzero(i8* %75, i64 8), !dbg !1011
  br label %76, !dbg !1012

76:                                               ; preds = %72, %10
  ret i32 0, !dbg !1013
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_memzero(i8* %0, i64 %1) #0 !dbg !1014 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1015, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %1, metadata !1017, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i8* %0, metadata !1018, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64 0, metadata !1019, metadata !DIExpression()), !dbg !1016
  br label %3, !dbg !1020

3:                                                ; preds = %5, %2
  %.0 = phi i64 [ 0, %2 ], [ %6, %5 ], !dbg !1016
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1019, metadata !DIExpression()), !dbg !1016
  %4 = icmp ult i64 %.0, %1, !dbg !1021
  br i1 %4, label %5, label %8, !dbg !1020

5:                                                ; preds = %3
  %6 = add i64 %.0, 1, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %6, metadata !1019, metadata !DIExpression()), !dbg !1016
  %7 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1024
  store volatile i8 0, i8* %7, align 1, !dbg !1025
  br label %3, !dbg !1020, !llvm.loop !1026

8:                                                ; preds = %3
  ret void, !dbg !1028
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !1029 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1035, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %1, metadata !1037, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %2, metadata !1038, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %0, metadata !1039, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %1, metadata !1040, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, metadata !1041, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 0, metadata !1042, metadata !DIExpression()), !dbg !1036
  br label %4, !dbg !1043

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !1045
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !1036
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1041, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1042, metadata !DIExpression()), !dbg !1036
  %5 = icmp ult i64 %.01, %2, !dbg !1046
  br i1 %5, label %6, label %19, !dbg !1048

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !1049
  %8 = load i8, i8* %7, align 1, !dbg !1049
  %9 = zext i8 %8 to i32, !dbg !1049
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !1051
  %11 = load i8, i8* %10, align 1, !dbg !1051
  %12 = zext i8 %11 to i32, !dbg !1051
  %13 = xor i32 %9, %12, !dbg !1052
  %14 = zext i8 %.0 to i32, !dbg !1053
  %15 = or i32 %14, %13, !dbg !1053
  %16 = trunc i32 %15 to i8, !dbg !1053
  call void @llvm.dbg.value(metadata i8 %16, metadata !1041, metadata !DIExpression()), !dbg !1036
  br label %17, !dbg !1054

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %18, metadata !1042, metadata !DIExpression()), !dbg !1036
  br label %4, !dbg !1056, !llvm.loop !1057

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !1059
  %21 = sub nsw i32 %20, 1, !dbg !1060
  %22 = ashr i32 %21, 8, !dbg !1061
  %23 = and i32 1, %22, !dbg !1062
  %24 = sub nsw i32 %23, 1, !dbg !1063
  ret i32 %24, !dbg !1064
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !1065 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1071, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %1, metadata !1073, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i8* %2, metadata !1074, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %3, metadata !1075, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 0, metadata !1076, metadata !DIExpression()), !dbg !1072
  %5 = icmp uge i64 %3, 9223372036854775807, !dbg !1077
  br i1 %5, label %9, label %6, !dbg !1079

6:                                                ; preds = %4
  %7 = mul i64 %3, 2, !dbg !1080
  %8 = icmp ult i64 %1, %7, !dbg !1081
  br i1 %8, label %9, label %10, !dbg !1082

9:                                                ; preds = %6, %4
  call void @abort() #8, !dbg !1083
  unreachable, !dbg !1083

10:                                               ; preds = %6
  br label %11, !dbg !1085

11:                                               ; preds = %13, %10
  %.0 = phi i64 [ 0, %10 ], [ %46, %13 ], !dbg !1072
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1076, metadata !DIExpression()), !dbg !1072
  %12 = icmp ult i64 %.0, %3, !dbg !1086
  br i1 %12, label %13, label %47, !dbg !1085

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1087
  %15 = load i8, i8* %14, align 1, !dbg !1087
  %16 = zext i8 %15 to i32, !dbg !1087
  %17 = and i32 %16, 15, !dbg !1089
  call void @llvm.dbg.value(metadata i32 %17, metadata !1090, metadata !DIExpression()), !dbg !1072
  %18 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1091
  %19 = load i8, i8* %18, align 1, !dbg !1091
  %20 = zext i8 %19 to i32, !dbg !1091
  %21 = ashr i32 %20, 4, !dbg !1092
  call void @llvm.dbg.value(metadata i32 %21, metadata !1093, metadata !DIExpression()), !dbg !1072
  %22 = add i32 87, %17, !dbg !1094
  %23 = sub i32 %17, 10, !dbg !1095
  %24 = lshr i32 %23, 8, !dbg !1096
  %25 = and i32 %24, -39, !dbg !1097
  %26 = add i32 %22, %25, !dbg !1098
  %27 = trunc i32 %26 to i8, !dbg !1099
  %28 = zext i8 %27 to i32, !dbg !1099
  %29 = shl i32 %28, 8, !dbg !1100
  %30 = add i32 87, %21, !dbg !1101
  %31 = sub i32 %21, 10, !dbg !1102
  %32 = lshr i32 %31, 8, !dbg !1103
  %33 = and i32 %32, -39, !dbg !1104
  %34 = add i32 %30, %33, !dbg !1105
  %35 = trunc i32 %34 to i8, !dbg !1106
  %36 = zext i8 %35 to i32, !dbg !1106
  %37 = or i32 %29, %36, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %37, metadata !1108, metadata !DIExpression()), !dbg !1072
  %38 = trunc i32 %37 to i8, !dbg !1109
  %39 = mul i64 %.0, 2, !dbg !1110
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !1111
  store i8 %38, i8* %40, align 1, !dbg !1112
  %41 = lshr i32 %37, 8, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %41, metadata !1108, metadata !DIExpression()), !dbg !1072
  %42 = trunc i32 %41 to i8, !dbg !1114
  %43 = mul i64 %.0, 2, !dbg !1115
  %44 = add i64 %43, 1, !dbg !1116
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !1117
  store i8 %42, i8* %45, align 1, !dbg !1118
  %46 = add i64 %.0, 1, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %46, metadata !1076, metadata !DIExpression()), !dbg !1072
  br label %11, !dbg !1085, !llvm.loop !1120

47:                                               ; preds = %11
  %48 = mul i64 %.0, 2, !dbg !1122
  %49 = getelementptr inbounds i8, i8* %0, i64 %48, !dbg !1123
  store i8 0, i8* %49, align 1, !dbg !1124
  ret i8* %0, !dbg !1125
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 !dbg !1126 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %1, metadata !1135, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %2, metadata !1136, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %3, metadata !1137, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %4, metadata !1138, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64* %5, metadata !1139, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8** %6, metadata !1140, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 0, metadata !1141, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 0, metadata !1142, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i32 0, metadata !1143, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 0, metadata !1144, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 0, metadata !1145, metadata !DIExpression()), !dbg !1134
  br label %8, !dbg !1146

8:                                                ; preds = %73, %44, %7
  %.05 = phi i64 [ 0, %7 ], [ %.05, %44 ], [ %.16, %73 ], !dbg !1147
  %.03 = phi i64 [ 0, %7 ], [ %45, %44 ], [ %77, %73 ], !dbg !1134
  %.01 = phi i8 [ 0, %7 ], [ %.01, %44 ], [ %.1, %73 ], !dbg !1134
  %.0 = phi i8 [ 0, %7 ], [ %.0, %44 ], [ %76, %73 ], !dbg !1134
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1145, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1144, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1142, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1141, metadata !DIExpression()), !dbg !1134
  %9 = icmp ult i64 %.03, %3, !dbg !1148
  br i1 %9, label %10, label %78, !dbg !1146

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %2, i64 %.03, !dbg !1149
  %12 = load i8, i8* %11, align 1, !dbg !1149
  call void @llvm.dbg.value(metadata i8 %12, metadata !1151, metadata !DIExpression()), !dbg !1134
  %13 = zext i8 %12 to i32, !dbg !1152
  %14 = xor i32 %13, 48, !dbg !1153
  %15 = trunc i32 %14 to i8, !dbg !1152
  call void @llvm.dbg.value(metadata i8 %15, metadata !1154, metadata !DIExpression()), !dbg !1134
  %16 = zext i8 %15 to i32, !dbg !1155
  %17 = sub i32 %16, 10, !dbg !1156
  %18 = lshr i32 %17, 8, !dbg !1157
  %19 = trunc i32 %18 to i8, !dbg !1158
  call void @llvm.dbg.value(metadata i8 %19, metadata !1159, metadata !DIExpression()), !dbg !1134
  %20 = zext i8 %12 to i32, !dbg !1160
  %21 = and i32 %20, -33, !dbg !1161
  %22 = sub i32 %21, 55, !dbg !1162
  %23 = trunc i32 %22 to i8, !dbg !1163
  call void @llvm.dbg.value(metadata i8 %23, metadata !1164, metadata !DIExpression()), !dbg !1134
  %24 = zext i8 %23 to i32, !dbg !1165
  %25 = sub i32 %24, 10, !dbg !1166
  %26 = zext i8 %23 to i32, !dbg !1167
  %27 = sub i32 %26, 16, !dbg !1168
  %28 = xor i32 %25, %27, !dbg !1169
  %29 = lshr i32 %28, 8, !dbg !1170
  %30 = trunc i32 %29 to i8, !dbg !1171
  call void @llvm.dbg.value(metadata i8 %30, metadata !1172, metadata !DIExpression()), !dbg !1134
  %31 = zext i8 %19 to i32, !dbg !1173
  %32 = zext i8 %30 to i32, !dbg !1175
  %33 = or i32 %31, %32, !dbg !1176
  %34 = icmp eq i32 %33, 0, !dbg !1177
  br i1 %34, label %35, label %47, !dbg !1178

35:                                               ; preds = %10
  %36 = icmp ne i8* %4, null, !dbg !1179
  br i1 %36, label %37, label %46, !dbg !1182

37:                                               ; preds = %35
  %38 = zext i8 %.0 to i32, !dbg !1183
  %39 = icmp eq i32 %38, 0, !dbg !1184
  br i1 %39, label %40, label %46, !dbg !1185

40:                                               ; preds = %37
  %41 = zext i8 %12 to i32, !dbg !1186
  %42 = call i8* @strchr(i8* %4, i32 %41) #11, !dbg !1187
  %43 = icmp ne i8* %42, null, !dbg !1188
  br i1 %43, label %44, label %46, !dbg !1189

44:                                               ; preds = %40
  %45 = add i64 %.03, 1, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %45, metadata !1142, metadata !DIExpression()), !dbg !1134
  br label %8, !dbg !1192, !llvm.loop !1193

46:                                               ; preds = %40, %37, %35
  br label %78, !dbg !1195

47:                                               ; preds = %10
  %48 = zext i8 %19 to i32, !dbg !1196
  %49 = zext i8 %15 to i32, !dbg !1197
  %50 = and i32 %48, %49, !dbg !1198
  %51 = zext i8 %30 to i32, !dbg !1199
  %52 = zext i8 %23 to i32, !dbg !1200
  %53 = and i32 %51, %52, !dbg !1201
  %54 = or i32 %50, %53, !dbg !1202
  %55 = trunc i32 %54 to i8, !dbg !1203
  call void @llvm.dbg.value(metadata i8 %55, metadata !1204, metadata !DIExpression()), !dbg !1134
  %56 = icmp uge i64 %.05, %1, !dbg !1205
  br i1 %56, label %57, label %59, !dbg !1207

57:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 -1, metadata !1143, metadata !DIExpression()), !dbg !1134
  %58 = call i32* @__errno_location() #9, !dbg !1208
  store i32 34, i32* %58, align 4, !dbg !1210
  br label %78, !dbg !1211

59:                                               ; preds = %47
  %60 = zext i8 %.0 to i32, !dbg !1212
  %61 = icmp eq i32 %60, 0, !dbg !1214
  br i1 %61, label %62, label %66, !dbg !1215

62:                                               ; preds = %59
  %63 = zext i8 %55 to i32, !dbg !1216
  %64 = mul i32 %63, 16, !dbg !1218
  %65 = trunc i32 %64 to i8, !dbg !1216
  call void @llvm.dbg.value(metadata i8 %65, metadata !1144, metadata !DIExpression()), !dbg !1134
  br label %73, !dbg !1219

66:                                               ; preds = %59
  %67 = zext i8 %.01 to i32, !dbg !1220
  %68 = zext i8 %55 to i32, !dbg !1222
  %69 = or i32 %67, %68, !dbg !1223
  %70 = trunc i32 %69 to i8, !dbg !1220
  %71 = add i64 %.05, 1, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %71, metadata !1141, metadata !DIExpression()), !dbg !1134
  %72 = getelementptr inbounds i8, i8* %0, i64 %.05, !dbg !1225
  store i8 %70, i8* %72, align 1, !dbg !1226
  br label %73

73:                                               ; preds = %66, %62
  %.16 = phi i64 [ %.05, %62 ], [ %71, %66 ], !dbg !1134
  %.1 = phi i8 [ %65, %62 ], [ %.01, %66 ], !dbg !1134
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1144, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %.16, metadata !1141, metadata !DIExpression()), !dbg !1134
  %74 = zext i8 %.0 to i32, !dbg !1227
  %75 = xor i32 %74, -1, !dbg !1228
  %76 = trunc i32 %75 to i8, !dbg !1228
  call void @llvm.dbg.value(metadata i8 %76, metadata !1145, metadata !DIExpression()), !dbg !1134
  %77 = add i64 %.03, 1, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %77, metadata !1142, metadata !DIExpression()), !dbg !1134
  br label %8, !dbg !1146, !llvm.loop !1193

78:                                               ; preds = %57, %46, %8
  %.02 = phi i32 [ 0, %46 ], [ -1, %57 ], [ 0, %8 ], !dbg !1134
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1143, metadata !DIExpression()), !dbg !1134
  %79 = zext i8 %.0 to i32, !dbg !1230
  %80 = icmp ne i32 %79, 0, !dbg !1232
  br i1 %80, label %81, label %83, !dbg !1233

81:                                               ; preds = %78
  %82 = add i64 %.03, -1, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %82, metadata !1142, metadata !DIExpression()), !dbg !1134
  br label %83, !dbg !1236

83:                                               ; preds = %81, %78
  %.14 = phi i64 [ %82, %81 ], [ %.03, %78 ], !dbg !1134
  call void @llvm.dbg.value(metadata i64 %.14, metadata !1142, metadata !DIExpression()), !dbg !1134
  %84 = icmp ne i8** %6, null, !dbg !1237
  br i1 %84, label %85, label %87, !dbg !1239

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, i8* %2, i64 %.14, !dbg !1240
  store i8* %86, i8** %6, align 8, !dbg !1242
  br label %87, !dbg !1243

87:                                               ; preds = %85, %83
  %88 = icmp ne i64* %5, null, !dbg !1244
  br i1 %88, label %89, label %90, !dbg !1246

89:                                               ; preds = %87
  store i64 %.05, i64* %5, align 8, !dbg !1247
  br label %90, !dbg !1249

90:                                               ; preds = %89, %87
  ret i32 %.02, !dbg !1250
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_sodium_alloc_init() #0 !dbg !1251 {
  call void @randombytes_buf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @canary, i64 0, i64 0), i64 16), !dbg !1252
  ret i32 0, !dbg !1253
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mlock(i8* %0, i64 %1) #0 !dbg !1254 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %1, metadata !1257, metadata !DIExpression()), !dbg !1256
  %3 = call i32* @__errno_location() #9, !dbg !1258
  store i32 38, i32* %3, align 4, !dbg !1259
  ret i32 -1, !dbg !1260
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_munlock(i8* %0, i64 %1) #0 !dbg !1261 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1262, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %1, metadata !1264, metadata !DIExpression()), !dbg !1263
  call void @sodium_memzero(i8* %0, i64 %1), !dbg !1265
  %3 = call i32* @__errno_location() #9, !dbg !1266
  store i32 38, i32* %3, align 4, !dbg !1267
  ret i32 -1, !dbg !1268
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_malloc(i64 %0) #0 !dbg !1269 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1272, metadata !DIExpression()), !dbg !1273
  %2 = call noalias i8* @_sodium_malloc(i64 %0), !dbg !1274
  call void @llvm.dbg.value(metadata i8* %2, metadata !1276, metadata !DIExpression()), !dbg !1273
  %3 = icmp eq i8* %2, null, !dbg !1277
  br i1 %3, label %4, label %5, !dbg !1278

4:                                                ; preds = %1
  br label %6, !dbg !1279

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 -48, i64 %0, i1 false), !dbg !1281
  br label %6, !dbg !1282

6:                                                ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %2, %5 ], !dbg !1273
  ret i8* %.0, !dbg !1283
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @_sodium_malloc(i64 %0) #0 !dbg !1284 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1285, metadata !DIExpression()), !dbg !1286
  %2 = call noalias i8* @malloc(i64 %0) #10, !dbg !1287
  ret i8* %2, !dbg !1288
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_allocarray(i64 %0, i64 %1) #0 !dbg !1289 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1292, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i64 %1, metadata !1294, metadata !DIExpression()), !dbg !1293
  %3 = icmp ugt i64 %0, 0, !dbg !1295
  br i1 %3, label %4, label %9, !dbg !1297

4:                                                ; preds = %2
  %5 = udiv i64 -1, %0, !dbg !1298
  %6 = icmp uge i64 %1, %5, !dbg !1299
  br i1 %6, label %7, label %9, !dbg !1300

7:                                                ; preds = %4
  %8 = call i32* @__errno_location() #9, !dbg !1301
  store i32 12, i32* %8, align 4, !dbg !1303
  br label %12, !dbg !1304

9:                                                ; preds = %4, %2
  %10 = mul i64 %0, %1, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %10, metadata !1306, metadata !DIExpression()), !dbg !1293
  %11 = call noalias i8* @sodium_malloc(i64 %10), !dbg !1307
  br label %12, !dbg !1308

12:                                               ; preds = %9, %7
  %.0 = phi i8* [ null, %7 ], [ %11, %9 ], !dbg !1293
  ret i8* %.0, !dbg !1309
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_free(i8* %0) #0 !dbg !1310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1313, metadata !DIExpression()), !dbg !1314
  call void @free(i8* %0) #10, !dbg !1315
  ret void, !dbg !1316
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* %0) #0 !dbg !1317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1320, metadata !DIExpression()), !dbg !1321
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_noaccess), !dbg !1322
  ret i32 %2, !dbg !1323
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_noaccess(i8* %0, i64 %1) #0 !dbg !1324 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1327, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %1, metadata !1329, metadata !DIExpression()), !dbg !1328
  %3 = call i32* @__errno_location() #9, !dbg !1330
  store i32 38, i32* %3, align 4, !dbg !1331
  ret i32 -1, !dbg !1332
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* %1) #0 !dbg !1333 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1337, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata i32 (i8*, i64)* %1, metadata !1339, metadata !DIExpression()), !dbg !1338
  %3 = call i32* @__errno_location() #9, !dbg !1340
  store i32 38, i32* %3, align 4, !dbg !1341
  ret i32 -1, !dbg !1342
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* %0) #0 !dbg !1343 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1344, metadata !DIExpression()), !dbg !1345
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readonly), !dbg !1346
  ret i32 %2, !dbg !1347
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readonly(i8* %0, i64 %1) #0 !dbg !1348 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1349, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %1, metadata !1351, metadata !DIExpression()), !dbg !1350
  %3 = call i32* @__errno_location() #9, !dbg !1352
  store i32 38, i32* %3, align 4, !dbg !1353
  ret i32 -1, !dbg !1354
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* %0) #0 !dbg !1355 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1356, metadata !DIExpression()), !dbg !1357
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readwrite), !dbg !1358
  ret i32 %2, !dbg !1359
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readwrite(i8* %0, i64 %1) #0 !dbg !1360 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1361, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %1, metadata !1363, metadata !DIExpression()), !dbg !1362
  %3 = call i32* @__errno_location() #9, !dbg !1364
  store i32 38, i32* %3, align 4, !dbg !1365
  ret i32 -1, !dbg !1366
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!111, !2, !55, !113, !89, !103}
!llvm.ident = !{!115, !115, !115, !115, !115, !115}
!llvm.module.flags = !{!116, !117, !118}

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
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "randombytes_sysrandom_implementation", scope: !55, file: !56, line: 297, type: !79, isLocal: false, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !64, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
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
!88 = distinct !DIGlobalVariable(name: "sigma", scope: !89, file: !90, line: 60, type: !97, isLocal: true, isDefinition: true)
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !91, globals: !96, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "../libsodium/src/libsodium/crypto_stream/chacha20/ref/stream_chacha20_ref.c", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
!91 = !{!92, !93, !6, !11}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !90, line: 22, baseType: !7)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !90, line: 21, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 38, baseType: !63)
!96 = !{!87}
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !99)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!99 = !{!100}
!100 = !DISubrange(count: 16)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "canary", scope: !103, file: !104, line: 46, type: !110, isLocal: true, isDefinition: true)
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !109, splitDebugInlining: false, nameTableKind: None)
!104 = !DIFile(filename: "../libsodium/src/libsodium/sodium/utils.c", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
!105 = !{!106, !12, !108, !63, !52, !28, !6}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!109 = !{!101}
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !99)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!112 = !DIFile(filename: "crypto_stream_chacha20.c", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!114 = !DIFile(filename: "../libsodium/src/libsodium/crypto_stream/chacha20/stream_chacha20_api.c", directory: "/home/luwei/bech-back/libsodium/ChaCha20")
!115 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!116 = !{i32 7, !"Dwarf Version", i32 4}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 4}
!119 = distinct !DISubprogram(name: "crypto_stream_chacha20_wrapper", scope: !112, file: !112, line: 5, type: !120, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !4)
!120 = !DISubroutineType(types: !121)
!121 = !{!52, !62, !122, !108, !108}
!122 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!123 = !DILocalVariable(name: "c", arg: 1, scope: !119, file: !112, line: 5, type: !62)
!124 = !DILocation(line: 0, scope: !119)
!125 = !DILocalVariable(name: "clen", arg: 2, scope: !119, file: !112, line: 5, type: !122)
!126 = !DILocalVariable(name: "n", arg: 3, scope: !119, file: !112, line: 6, type: !108)
!127 = !DILocalVariable(name: "k", arg: 4, scope: !119, file: !112, line: 6, type: !108)
!128 = !DILocation(line: 7, column: 13, scope: !119)
!129 = !DILocation(line: 7, column: 3, scope: !119)
!130 = !DILocation(line: 8, column: 13, scope: !119)
!131 = !DILocation(line: 8, column: 3, scope: !119)
!132 = !DILocation(line: 9, column: 13, scope: !119)
!133 = !DILocation(line: 9, column: 3, scope: !119)
!134 = !DILocation(line: 10, column: 13, scope: !119)
!135 = !DILocation(line: 10, column: 3, scope: !119)
!136 = !DILocation(line: 12, column: 13, scope: !119)
!137 = !DILocation(line: 12, column: 3, scope: !119)
!138 = !DILocation(line: 14, column: 10, scope: !119)
!139 = !DILocation(line: 14, column: 3, scope: !119)
!140 = distinct !DISubprogram(name: "crypto_stream_chacha20_wrapper_t", scope: !112, file: !112, line: 22, type: !35, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !4)
!141 = !DILocalVariable(name: "dout", scope: !140, file: !112, line: 24, type: !63)
!142 = !DILocation(line: 24, column: 17, scope: !140)
!143 = !DILocation(line: 24, column: 24, scope: !140)
!144 = !DILocalVariable(name: "din", scope: !140, file: !112, line: 25, type: !98)
!145 = !DILocation(line: 25, column: 24, scope: !140)
!146 = !DILocation(line: 25, column: 30, scope: !140)
!147 = !DILocalVariable(name: "dk", scope: !140, file: !112, line: 26, type: !98)
!148 = !DILocation(line: 26, column: 21, scope: !140)
!149 = !DILocation(line: 26, column: 26, scope: !140)
!150 = !DILocation(line: 27, column: 27, scope: !140)
!151 = !DILocalVariable(name: "dc", scope: !140, file: !112, line: 27, type: !98)
!152 = !DILocation(line: 0, scope: !140)
!153 = !DILocalVariable(name: "c", scope: !140, file: !112, line: 28, type: !62)
!154 = !DILocalVariable(name: "n", scope: !140, file: !112, line: 29, type: !108)
!155 = !DILocalVariable(name: "k", scope: !140, file: !112, line: 30, type: !108)
!156 = !DILocation(line: 31, column: 27, scope: !140)
!157 = !DILocalVariable(name: "clen", scope: !140, file: !112, line: 31, type: !122)
!158 = !DILocation(line: 32, column: 3, scope: !140)
!159 = !DILocation(line: 33, column: 1, scope: !140)
!160 = distinct !DISubprogram(name: "randombytes_set_implementation", scope: !3, file: !3, line: 23, type: !161, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!161 = !DISubroutineType(types: !162)
!162 = !{!52, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!164 = !DILocalVariable(name: "impl", arg: 1, scope: !160, file: !3, line: 23, type: !163)
!165 = !DILocation(line: 0, scope: !160)
!166 = !DILocation(line: 25, column: 20, scope: !160)
!167 = !DILocation(line: 27, column: 5, scope: !160)
!168 = distinct !DISubprogram(name: "randombytes_implementation_name", scope: !3, file: !3, line: 31, type: !24, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!169 = !DILocation(line: 34, column: 12, scope: !168)
!170 = !DILocation(line: 34, column: 28, scope: !168)
!171 = !DILocation(line: 34, column: 5, scope: !168)
!172 = distinct !DISubprogram(name: "randombytes_random", scope: !3, file: !3, line: 41, type: !31, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!173 = !DILocation(line: 44, column: 12, scope: !172)
!174 = !DILocation(line: 44, column: 28, scope: !172)
!175 = !DILocation(line: 44, column: 5, scope: !172)
!176 = distinct !DISubprogram(name: "randombytes_stir", scope: !3, file: !3, line: 53, type: !35, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!177 = !DILocation(line: 56, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !176, file: !3, line: 56, column: 9)
!179 = !DILocation(line: 56, column: 24, scope: !178)
!180 = !DILocation(line: 56, column: 32, scope: !178)
!181 = !DILocation(line: 56, column: 35, scope: !178)
!182 = !DILocation(line: 56, column: 51, scope: !178)
!183 = !DILocation(line: 56, column: 56, scope: !178)
!184 = !DILocation(line: 56, column: 9, scope: !176)
!185 = !DILocation(line: 57, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !3, line: 56, column: 65)
!187 = !DILocation(line: 57, column: 25, scope: !186)
!188 = !DILocation(line: 58, column: 5, scope: !186)
!189 = !DILocation(line: 87, column: 1, scope: !176)
!190 = distinct !DISubprogram(name: "randombytes_uniform", scope: !3, file: !3, line: 94, type: !39, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!191 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !190, file: !3, line: 94, type: !41)
!192 = !DILocation(line: 0, scope: !190)
!193 = !DILocation(line: 99, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !3, line: 99, column: 9)
!195 = !DILocation(line: 99, column: 24, scope: !194)
!196 = !DILocation(line: 99, column: 32, scope: !194)
!197 = !DILocation(line: 99, column: 35, scope: !194)
!198 = !DILocation(line: 99, column: 51, scope: !194)
!199 = !DILocation(line: 99, column: 59, scope: !194)
!200 = !DILocation(line: 99, column: 9, scope: !190)
!201 = !DILocation(line: 100, column: 16, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !3, line: 99, column: 68)
!203 = !DILocation(line: 100, column: 32, scope: !202)
!204 = !DILocation(line: 100, column: 9, scope: !202)
!205 = !DILocation(line: 102, column: 21, scope: !206)
!206 = distinct !DILexicalBlock(scope: !190, file: !3, line: 102, column: 9)
!207 = !DILocation(line: 102, column: 9, scope: !190)
!208 = !DILocation(line: 103, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !3, line: 102, column: 26)
!210 = !DILocation(line: 105, column: 23, scope: !190)
!211 = !DILocation(line: 105, column: 36, scope: !190)
!212 = !DILocalVariable(name: "min", scope: !190, file: !3, line: 96, type: !7)
!213 = !DILocation(line: 106, column: 5, scope: !190)
!214 = !DILocation(line: 107, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !190, file: !3, line: 106, column: 8)
!216 = !DILocalVariable(name: "r", scope: !190, file: !3, line: 97, type: !7)
!217 = !DILocation(line: 108, column: 5, scope: !215)
!218 = !DILocation(line: 108, column: 16, scope: !190)
!219 = distinct !{!219, !213, !220, !221}
!220 = !DILocation(line: 108, column: 21, scope: !190)
!221 = !{!"llvm.loop.mustprogress"}
!222 = !DILocation(line: 110, column: 14, scope: !190)
!223 = !DILocation(line: 110, column: 5, scope: !190)
!224 = !DILocation(line: 111, column: 1, scope: !190)
!225 = distinct !DISubprogram(name: "randombytes_buf", scope: !3, file: !3, line: 114, type: !44, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!226 = !DILocalVariable(name: "buf", arg: 1, scope: !225, file: !3, line: 114, type: !46)
!227 = !DILocation(line: 0, scope: !225)
!228 = !DILocalVariable(name: "size", arg: 2, scope: !225, file: !3, line: 114, type: !47)
!229 = !DILocation(line: 117, column: 14, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !3, line: 117, column: 9)
!231 = !DILocation(line: 117, column: 9, scope: !225)
!232 = !DILocation(line: 118, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !3, line: 117, column: 29)
!234 = !DILocation(line: 118, column: 25, scope: !233)
!235 = !DILocation(line: 119, column: 5, scope: !233)
!236 = !DILocation(line: 128, column: 1, scope: !225)
!237 = distinct !DISubprogram(name: "randombytes_close", scope: !3, file: !3, line: 131, type: !50, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!238 = !DILocation(line: 133, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !237, file: !3, line: 133, column: 9)
!240 = !DILocation(line: 133, column: 24, scope: !239)
!241 = !DILocation(line: 133, column: 32, scope: !239)
!242 = !DILocation(line: 133, column: 35, scope: !239)
!243 = !DILocation(line: 133, column: 51, scope: !239)
!244 = !DILocation(line: 133, column: 57, scope: !239)
!245 = !DILocation(line: 133, column: 9, scope: !237)
!246 = !DILocation(line: 134, column: 16, scope: !247)
!247 = distinct !DILexicalBlock(scope: !239, file: !3, line: 133, column: 66)
!248 = !DILocation(line: 134, column: 32, scope: !247)
!249 = !DILocation(line: 134, column: 9, scope: !247)
!250 = !DILocation(line: 136, column: 5, scope: !237)
!251 = !DILocation(line: 0, scope: !237)
!252 = !DILocation(line: 137, column: 1, scope: !237)
!253 = distinct !DISubprogram(name: "randombytes", scope: !3, file: !3, line: 140, type: !254, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !256, !257}
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!258 = !DILocalVariable(name: "buf", arg: 1, scope: !253, file: !3, line: 140, type: !256)
!259 = !DILocation(line: 0, scope: !253)
!260 = !DILocalVariable(name: "buf_len", arg: 2, scope: !253, file: !3, line: 140, type: !257)
!261 = !DILocation(line: 142, column: 5, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 142, column: 5)
!263 = distinct !DILexicalBlock(scope: !253, file: !3, line: 142, column: 5)
!264 = !DILocation(line: 142, column: 5, scope: !263)
!265 = !DILocation(line: 143, column: 5, scope: !253)
!266 = !DILocation(line: 144, column: 1, scope: !253)
!267 = distinct !DISubprogram(name: "randombytes_sysrandom_implementation_name", scope: !56, file: !56, line: 292, type: !24, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!268 = !DILocation(line: 294, column: 5, scope: !267)
!269 = distinct !DISubprogram(name: "randombytes_sysrandom", scope: !56, file: !56, line: 249, type: !31, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!270 = !DILocalVariable(name: "r", scope: !269, file: !56, line: 251, type: !7)
!271 = !DILocation(line: 251, column: 14, scope: !269)
!272 = !DILocation(line: 253, column: 31, scope: !269)
!273 = !DILocation(line: 253, column: 5, scope: !269)
!274 = !DILocation(line: 255, column: 12, scope: !269)
!275 = !DILocation(line: 255, column: 5, scope: !269)
!276 = distinct !DISubprogram(name: "randombytes_sysrandom_stir", scope: !56, file: !56, line: 206, type: !35, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!277 = !DILocation(line: 208, column: 16, scope: !278)
!278 = distinct !DILexicalBlock(scope: !276, file: !56, line: 208, column: 9)
!279 = !DILocation(line: 208, column: 28, scope: !278)
!280 = !DILocation(line: 208, column: 9, scope: !276)
!281 = !DILocation(line: 209, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !56, line: 208, column: 34)
!283 = !DILocation(line: 210, column: 28, scope: !282)
!284 = !DILocation(line: 211, column: 5, scope: !282)
!285 = !DILocation(line: 212, column: 1, scope: !276)
!286 = distinct !DISubprogram(name: "randombytes_sysrandom_buf", scope: !56, file: !56, line: 259, type: !44, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!287 = !DILocalVariable(name: "buf", arg: 1, scope: !286, file: !56, line: 259, type: !46)
!288 = !DILocation(line: 0, scope: !286)
!289 = !DILocalVariable(name: "size", arg: 2, scope: !286, file: !56, line: 259, type: !47)
!290 = !DILocation(line: 261, column: 5, scope: !286)
!291 = !DILocation(line: 268, column: 16, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !56, line: 268, column: 9)
!293 = !DILocation(line: 268, column: 36, scope: !292)
!294 = !DILocation(line: 268, column: 9, scope: !286)
!295 = !DILocation(line: 269, column: 13, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !56, line: 269, column: 13)
!297 = distinct !DILexicalBlock(scope: !292, file: !56, line: 268, column: 42)
!298 = !DILocation(line: 269, column: 52, scope: !296)
!299 = !DILocation(line: 269, column: 13, scope: !297)
!300 = !DILocation(line: 270, column: 13, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !56, line: 269, column: 58)
!302 = !DILocation(line: 272, column: 9, scope: !297)
!303 = !DILocation(line: 275, column: 16, scope: !304)
!304 = distinct !DILexicalBlock(scope: !286, file: !56, line: 275, column: 9)
!305 = !DILocation(line: 275, column: 38, scope: !304)
!306 = !DILocation(line: 275, column: 44, scope: !304)
!307 = !DILocation(line: 276, column: 26, scope: !304)
!308 = !DILocation(line: 276, column: 9, scope: !304)
!309 = !DILocation(line: 276, column: 60, scope: !304)
!310 = !DILocation(line: 275, column: 9, scope: !286)
!311 = !DILocation(line: 277, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !304, file: !56, line: 276, column: 79)
!313 = !DILocation(line: 287, column: 1, scope: !286)
!314 = distinct !DISubprogram(name: "randombytes_sysrandom_close", scope: !56, file: !56, line: 223, type: !50, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!315 = !DILocalVariable(name: "ret", scope: !314, file: !56, line: 225, type: !52)
!316 = !DILocation(line: 0, scope: !314)
!317 = !DILocation(line: 228, column: 16, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !56, line: 228, column: 9)
!319 = !DILocation(line: 228, column: 38, scope: !318)
!320 = !DILocation(line: 228, column: 44, scope: !318)
!321 = !DILocation(line: 229, column: 22, scope: !318)
!322 = !DILocation(line: 229, column: 9, scope: !318)
!323 = !DILocation(line: 229, column: 45, scope: !318)
!324 = !DILocation(line: 228, column: 9, scope: !314)
!325 = !DILocation(line: 230, column: 38, scope: !326)
!326 = distinct !DILexicalBlock(scope: !318, file: !56, line: 229, column: 51)
!327 = !DILocation(line: 231, column: 28, scope: !326)
!328 = !DILocation(line: 233, column: 5, scope: !326)
!329 = !DILocation(line: 235, column: 16, scope: !330)
!330 = distinct !DILexicalBlock(scope: !314, file: !56, line: 235, column: 9)
!331 = !DILocation(line: 235, column: 36, scope: !330)
!332 = !DILocation(line: 235, column: 9, scope: !314)
!333 = !DILocation(line: 237, column: 5, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !56, line: 235, column: 42)
!335 = !DILocation(line: 245, column: 5, scope: !314)
!336 = distinct !DISubprogram(name: "randombytes_sysrandom_stir_if_needed", scope: !56, file: !56, line: 215, type: !35, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !4)
!337 = !DILocation(line: 217, column: 16, scope: !338)
!338 = distinct !DILexicalBlock(scope: !336, file: !56, line: 217, column: 9)
!339 = !DILocation(line: 217, column: 28, scope: !338)
!340 = !DILocation(line: 217, column: 9, scope: !336)
!341 = !DILocation(line: 218, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !56, line: 217, column: 34)
!343 = !DILocation(line: 219, column: 5, scope: !342)
!344 = !DILocation(line: 220, column: 1, scope: !336)
!345 = distinct !DISubprogram(name: "randombytes_linux_getrandom", scope: !56, file: !56, line: 151, type: !346, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !4)
!346 = !DISubroutineType(types: !347)
!347 = !{!52, !46, !12}
!348 = !DILocalVariable(name: "buf_", arg: 1, scope: !345, file: !56, line: 151, type: !46)
!349 = !DILocation(line: 0, scope: !345)
!350 = !DILocalVariable(name: "size", arg: 2, scope: !345, file: !56, line: 151, type: !12)
!351 = !DILocalVariable(name: "buf", scope: !345, file: !56, line: 153, type: !62)
!352 = !DILocalVariable(name: "chunk_size", scope: !345, file: !56, line: 154, type: !12)
!353 = !DILocation(line: 156, column: 5, scope: !345)
!354 = !DILocation(line: 157, column: 18, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !56, line: 157, column: 13)
!356 = distinct !DILexicalBlock(scope: !345, file: !56, line: 156, column: 8)
!357 = !DILocation(line: 157, column: 13, scope: !356)
!358 = !DILocation(line: 159, column: 13, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !56, line: 159, column: 13)
!360 = distinct !DILexicalBlock(scope: !361, file: !56, line: 159, column: 13)
!361 = distinct !DILexicalBlock(scope: !355, file: !56, line: 157, column: 32)
!362 = !DILocation(line: 159, column: 13, scope: !360)
!363 = !DILocation(line: 160, column: 9, scope: !361)
!364 = !DILocation(line: 161, column: 13, scope: !365)
!365 = distinct !DILexicalBlock(scope: !356, file: !56, line: 161, column: 13)
!366 = !DILocation(line: 161, column: 59, scope: !365)
!367 = !DILocation(line: 161, column: 13, scope: !356)
!368 = !DILocation(line: 162, column: 13, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !56, line: 161, column: 65)
!370 = !DILocation(line: 164, column: 14, scope: !356)
!371 = !DILocation(line: 165, column: 13, scope: !356)
!372 = !DILocation(line: 166, column: 5, scope: !356)
!373 = !DILocation(line: 166, column: 19, scope: !345)
!374 = distinct !{!374, !353, !375, !221}
!375 = !DILocation(line: 166, column: 32, scope: !345)
!376 = !DILocation(line: 168, column: 5, scope: !345)
!377 = !DILocation(line: 169, column: 1, scope: !345)
!378 = distinct !DISubprogram(name: "safe_read", scope: !56, file: !56, line: 77, type: !379, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !4)
!379 = !DISubroutineType(types: !380)
!380 = !{!58, !381, !46, !12}
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!382 = !DILocalVariable(name: "fd", arg: 1, scope: !378, file: !56, line: 77, type: !381)
!383 = !DILocation(line: 0, scope: !378)
!384 = !DILocalVariable(name: "buf_", arg: 2, scope: !378, file: !56, line: 77, type: !46)
!385 = !DILocalVariable(name: "size", arg: 3, scope: !378, file: !56, line: 77, type: !12)
!386 = !DILocalVariable(name: "buf", scope: !378, file: !56, line: 79, type: !62)
!387 = !DILocation(line: 82, column: 5, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !56, line: 82, column: 5)
!389 = distinct !DILexicalBlock(scope: !378, file: !56, line: 82, column: 5)
!390 = !DILocation(line: 82, column: 5, scope: !389)
!391 = !DILocation(line: 83, column: 5, scope: !378)
!392 = !DILocation(line: 84, column: 9, scope: !393)
!393 = distinct !DILexicalBlock(scope: !378, file: !56, line: 83, column: 8)
!394 = !DILocation(line: 84, column: 26, scope: !393)
!395 = !DILocalVariable(name: "readnb", scope: !378, file: !56, line: 80, type: !58)
!396 = !DILocation(line: 84, column: 47, scope: !393)
!397 = !DILocation(line: 84, column: 61, scope: !393)
!398 = !DILocation(line: 85, column: 17, scope: !393)
!399 = !DILocation(line: 85, column: 23, scope: !393)
!400 = !DILocation(line: 85, column: 32, scope: !393)
!401 = !DILocation(line: 85, column: 35, scope: !393)
!402 = !DILocation(line: 85, column: 41, scope: !393)
!403 = !DILocation(line: 0, scope: !393)
!404 = distinct !{!404, !392, !405, !221}
!405 = !DILocation(line: 85, column: 52, scope: !393)
!406 = !DILocation(line: 86, column: 20, scope: !407)
!407 = distinct !DILexicalBlock(scope: !393, file: !56, line: 86, column: 13)
!408 = !DILocation(line: 86, column: 13, scope: !393)
!409 = !DILocation(line: 87, column: 13, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !56, line: 86, column: 35)
!411 = !DILocation(line: 89, column: 20, scope: !412)
!412 = distinct !DILexicalBlock(scope: !393, file: !56, line: 89, column: 13)
!413 = !DILocation(line: 89, column: 13, scope: !393)
!414 = !DILocation(line: 90, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !56, line: 89, column: 36)
!416 = !DILocation(line: 92, column: 14, scope: !393)
!417 = !DILocation(line: 93, column: 13, scope: !393)
!418 = !DILocation(line: 94, column: 5, scope: !393)
!419 = !DILocation(line: 94, column: 19, scope: !378)
!420 = distinct !{!420, !391, !421, !221}
!421 = !DILocation(line: 94, column: 32, scope: !378)
!422 = !DILocation(line: 96, column: 27, scope: !378)
!423 = !DILocation(line: 96, column: 5, scope: !378)
!424 = !DILocation(line: 97, column: 1, scope: !378)
!425 = distinct !DISubprogram(name: "_randombytes_linux_getrandom", scope: !56, file: !56, line: 138, type: !426, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !4)
!426 = !DISubroutineType(types: !427)
!427 = !{!52, !46, !47}
!428 = !DILocalVariable(name: "buf", arg: 1, scope: !425, file: !56, line: 138, type: !46)
!429 = !DILocation(line: 0, scope: !425)
!430 = !DILocalVariable(name: "size", arg: 2, scope: !425, file: !56, line: 138, type: !47)
!431 = !DILocation(line: 142, column: 5, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !56, line: 142, column: 5)
!433 = distinct !DILexicalBlock(scope: !425, file: !56, line: 142, column: 5)
!434 = !DILocation(line: 142, column: 5, scope: !433)
!435 = !DILocation(line: 143, column: 5, scope: !425)
!436 = !DILocation(line: 144, column: 46, scope: !437)
!437 = distinct !DILexicalBlock(scope: !425, file: !56, line: 143, column: 8)
!438 = !DILocation(line: 144, column: 18, scope: !437)
!439 = !DILocalVariable(name: "readnb", scope: !425, file: !56, line: 140, type: !52)
!440 = !DILocation(line: 145, column: 5, scope: !437)
!441 = !DILocation(line: 145, column: 21, scope: !425)
!442 = !DILocation(line: 145, column: 25, scope: !425)
!443 = !DILocation(line: 145, column: 29, scope: !425)
!444 = !DILocation(line: 145, column: 35, scope: !425)
!445 = !DILocation(line: 145, column: 44, scope: !425)
!446 = !DILocation(line: 145, column: 47, scope: !425)
!447 = !DILocation(line: 145, column: 53, scope: !425)
!448 = distinct !{!448, !435, !449, !221}
!449 = !DILocation(line: 145, column: 63, scope: !425)
!450 = !DILocation(line: 147, column: 23, scope: !425)
!451 = !DILocation(line: 147, column: 20, scope: !425)
!452 = !DILocation(line: 147, column: 35, scope: !425)
!453 = !DILocation(line: 147, column: 5, scope: !425)
!454 = distinct !DISubprogram(name: "randombytes_sysrandom_init", scope: !56, file: !56, line: 173, type: !35, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !4)
!455 = !DILocation(line: 175, column: 32, scope: !454)
!456 = !DILocalVariable(name: "errno_save", scope: !454, file: !56, line: 175, type: !381)
!457 = !DILocation(line: 0, scope: !454)
!458 = !DILocalVariable(name: "fodder", scope: !459, file: !56, line: 179, type: !110)
!459 = distinct !DILexicalBlock(scope: !454, file: !56, line: 178, column: 5)
!460 = !DILocation(line: 179, column: 16, scope: !459)
!461 = !DILocation(line: 181, column: 34, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !56, line: 181, column: 6)
!463 = !DILocation(line: 181, column: 6, scope: !462)
!464 = !DILocation(line: 181, column: 57, scope: !462)
!465 = !DILocation(line: 181, column: 6, scope: !459)
!466 = !DILocation(line: 182, column: 33, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !56, line: 181, column: 63)
!468 = !DILocation(line: 183, column: 6, scope: !467)
!469 = !DILocation(line: 183, column: 12, scope: !467)
!470 = !DILocation(line: 184, column: 6, scope: !467)
!471 = !DILocation(line: 186, column: 29, scope: !459)
!472 = !DILocation(line: 191, column: 10, scope: !473)
!473 = distinct !DILexicalBlock(scope: !454, file: !56, line: 190, column: 9)
!474 = !DILocation(line: 190, column: 39, scope: !473)
!475 = !DILocation(line: 191, column: 51, scope: !473)
!476 = !DILocation(line: 190, column: 9, scope: !454)
!477 = !DILocation(line: 192, column: 9, scope: !478)
!478 = distinct !DILexicalBlock(scope: !473, file: !56, line: 191, column: 58)
!479 = !DILocation(line: 194, column: 5, scope: !454)
!480 = !DILocation(line: 194, column: 11, scope: !454)
!481 = !DILocation(line: 195, column: 1, scope: !454)
!482 = !DILocalVariable(name: "st", scope: !75, file: !56, line: 105, type: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !484, line: 46, size: 1152, elements: !485)
!484 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!485 = !{!486, !488, !490, !492, !494, !496, !498, !499, !500, !502, !504, !506, !514, !515, !516}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !483, file: !484, line: 48, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !10, line: 145, baseType: !14)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !483, file: !484, line: 53, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !10, line: 148, baseType: !14)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !483, file: !484, line: 61, baseType: !491, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !10, line: 151, baseType: !14)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !483, file: !484, line: 62, baseType: !493, size: 32, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !10, line: 150, baseType: !11)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !483, file: !484, line: 64, baseType: !495, size: 32, offset: 224)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !10, line: 146, baseType: !11)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !483, file: !484, line: 65, baseType: !497, size: 32, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !10, line: 147, baseType: !11)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !483, file: !484, line: 67, baseType: !52, size: 32, offset: 288)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !483, file: !484, line: 69, baseType: !487, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !483, file: !484, line: 74, baseType: !501, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !10, line: 152, baseType: !61)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !483, file: !484, line: 78, baseType: !503, size: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !10, line: 174, baseType: !61)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !483, file: !484, line: 80, baseType: !505, size: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !10, line: 179, baseType: !61)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !483, file: !484, line: 91, baseType: !507, size: 128, offset: 576)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !508, line: 10, size: 128, elements: !509)
!508 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!509 = !{!510, !512}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !507, file: !508, line: 12, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !10, line: 160, baseType: !61)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !507, file: !508, line: 16, baseType: !513, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !10, line: 196, baseType: !61)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !483, file: !484, line: 92, baseType: !507, size: 128, offset: 704)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !483, file: !484, line: 93, baseType: !507, size: 128, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !483, file: !484, line: 106, baseType: !517, size: 192, offset: 960)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 192, elements: !77)
!518 = !DILocation(line: 105, column: 24, scope: !75)
!519 = !DILocalVariable(name: "device", scope: !75, file: !56, line: 112, type: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!521 = !DILocation(line: 0, scope: !75)
!522 = !DILocation(line: 115, column: 5, scope: !75)
!523 = !DILocation(line: 116, column: 19, scope: !524)
!524 = distinct !DILexicalBlock(scope: !75, file: !56, line: 115, column: 8)
!525 = !DILocation(line: 116, column: 14, scope: !524)
!526 = !DILocalVariable(name: "fd", scope: !75, file: !56, line: 113, type: !52)
!527 = !DILocation(line: 117, column: 16, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !56, line: 117, column: 13)
!529 = !DILocation(line: 117, column: 13, scope: !524)
!530 = !DILocation(line: 118, column: 17, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !56, line: 118, column: 17)
!532 = distinct !DILexicalBlock(scope: !528, file: !56, line: 117, column: 23)
!533 = !DILocation(line: 118, column: 32, scope: !531)
!534 = !DILocation(line: 118, column: 37, scope: !531)
!535 = !DILocation(line: 118, column: 40, scope: !531)
!536 = !DILocation(line: 118, column: 17, scope: !532)
!537 = !DILocation(line: 120, column: 43, scope: !538)
!538 = distinct !DILexicalBlock(scope: !531, file: !56, line: 118, column: 61)
!539 = !DILocation(line: 120, column: 62, scope: !538)
!540 = !DILocation(line: 120, column: 24, scope: !538)
!541 = !DILocation(line: 122, column: 17, scope: !538)
!542 = !DILocation(line: 124, column: 20, scope: !532)
!543 = !DILocation(line: 125, column: 9, scope: !532)
!544 = !DILocation(line: 125, column: 20, scope: !545)
!545 = distinct !DILexicalBlock(scope: !528, file: !56, line: 125, column: 20)
!546 = !DILocation(line: 125, column: 26, scope: !545)
!547 = !DILocation(line: 125, column: 20, scope: !528)
!548 = !DILocation(line: 126, column: 13, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !56, line: 125, column: 36)
!550 = !DILocation(line: 128, column: 15, scope: !524)
!551 = !DILocation(line: 129, column: 5, scope: !524)
!552 = !DILocation(line: 129, column: 14, scope: !75)
!553 = !DILocation(line: 129, column: 22, scope: !75)
!554 = distinct !{!554, !522, !555, !221}
!555 = !DILocation(line: 129, column: 29, scope: !75)
!556 = !DILocation(line: 131, column: 5, scope: !75)
!557 = !DILocation(line: 131, column: 11, scope: !75)
!558 = !DILocation(line: 132, column: 5, scope: !75)
!559 = !DILocation(line: 134, column: 1, scope: !75)
!560 = distinct !DISubprogram(name: "crypto_stream_chacha20_keybytes", scope: !114, file: !114, line: 5, type: !561, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!561 = !DISubroutineType(types: !562)
!562 = !{!12}
!563 = !DILocation(line: 6, column: 5, scope: !560)
!564 = distinct !DISubprogram(name: "crypto_stream_chacha20_noncebytes", scope: !114, file: !114, line: 10, type: !561, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!565 = !DILocation(line: 11, column: 5, scope: !564)
!566 = distinct !DISubprogram(name: "crypto_stream_chacha20", scope: !114, file: !114, line: 15, type: !120, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!567 = !DILocalVariable(name: "c", arg: 1, scope: !566, file: !114, line: 15, type: !62)
!568 = !DILocation(line: 0, scope: !566)
!569 = !DILocalVariable(name: "clen", arg: 2, scope: !566, file: !114, line: 15, type: !122)
!570 = !DILocalVariable(name: "n", arg: 3, scope: !566, file: !114, line: 16, type: !108)
!571 = !DILocalVariable(name: "k", arg: 4, scope: !566, file: !114, line: 16, type: !108)
!572 = !DILocation(line: 18, column: 12, scope: !566)
!573 = !DILocation(line: 18, column: 5, scope: !566)
!574 = distinct !DISubprogram(name: "crypto_stream_chacha20_xor_ic", scope: !114, file: !114, line: 22, type: !575, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!575 = !DISubroutineType(types: !576)
!576 = !{!52, !62, !108, !122, !108, !577, !108}
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 27, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 45, baseType: !14)
!579 = !DILocalVariable(name: "c", arg: 1, scope: !574, file: !114, line: 22, type: !62)
!580 = !DILocation(line: 0, scope: !574)
!581 = !DILocalVariable(name: "m", arg: 2, scope: !574, file: !114, line: 22, type: !108)
!582 = !DILocalVariable(name: "mlen", arg: 3, scope: !574, file: !114, line: 23, type: !122)
!583 = !DILocalVariable(name: "n", arg: 4, scope: !574, file: !114, line: 24, type: !108)
!584 = !DILocalVariable(name: "ic", arg: 5, scope: !574, file: !114, line: 24, type: !577)
!585 = !DILocalVariable(name: "k", arg: 6, scope: !574, file: !114, line: 25, type: !108)
!586 = !DILocation(line: 27, column: 12, scope: !574)
!587 = !DILocation(line: 27, column: 5, scope: !574)
!588 = distinct !DISubprogram(name: "crypto_stream_chacha20_xor", scope: !114, file: !114, line: 31, type: !589, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !4)
!589 = !DISubroutineType(types: !590)
!590 = !{!52, !62, !108, !122, !108, !108}
!591 = !DILocalVariable(name: "c", arg: 1, scope: !588, file: !114, line: 31, type: !62)
!592 = !DILocation(line: 0, scope: !588)
!593 = !DILocalVariable(name: "m", arg: 2, scope: !588, file: !114, line: 31, type: !108)
!594 = !DILocalVariable(name: "mlen", arg: 3, scope: !588, file: !114, line: 32, type: !122)
!595 = !DILocalVariable(name: "n", arg: 4, scope: !588, file: !114, line: 32, type: !108)
!596 = !DILocalVariable(name: "k", arg: 5, scope: !588, file: !114, line: 33, type: !108)
!597 = !DILocation(line: 35, column: 12, scope: !588)
!598 = !DILocation(line: 35, column: 5, scope: !588)
!599 = distinct !DISubprogram(name: "crypto_stream_chacha20_ref", scope: !90, file: !90, line: 233, type: !120, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!600 = !DILocalVariable(name: "c", arg: 1, scope: !599, file: !90, line: 233, type: !62)
!601 = !DILocation(line: 0, scope: !599)
!602 = !DILocalVariable(name: "clen", arg: 2, scope: !599, file: !90, line: 233, type: !122)
!603 = !DILocalVariable(name: "n", arg: 3, scope: !599, file: !90, line: 234, type: !108)
!604 = !DILocalVariable(name: "k", arg: 4, scope: !599, file: !90, line: 234, type: !108)
!605 = !DILocalVariable(name: "ctx", scope: !599, file: !90, line: 236, type: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chacha_ctx", file: !90, line: 17, size: 512, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !606, file: !90, line: 18, baseType: !609, size: 512)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !99)
!610 = !DILocation(line: 236, column: 23, scope: !599)
!611 = !DILocation(line: 238, column: 10, scope: !612)
!612 = distinct !DILexicalBlock(scope: !599, file: !90, line: 238, column: 9)
!613 = !DILocation(line: 238, column: 9, scope: !599)
!614 = !DILocation(line: 239, column: 9, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !90, line: 238, column: 16)
!616 = !DILocation(line: 242, column: 5, scope: !599)
!617 = !DILocation(line: 243, column: 5, scope: !599)
!618 = !DILocation(line: 244, column: 5, scope: !599)
!619 = !DILocation(line: 245, column: 5, scope: !599)
!620 = !DILocation(line: 246, column: 20, scope: !599)
!621 = !DILocation(line: 246, column: 5, scope: !599)
!622 = !DILocation(line: 248, column: 5, scope: !599)
!623 = !DILocation(line: 249, column: 1, scope: !599)
!624 = distinct !DISubprogram(name: "chacha_keysetup", scope: !90, file: !90, line: 65, type: !625, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !627, !629}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "chacha_ctx", file: !90, line: 24, baseType: !606)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!631 = !DILocalVariable(name: "x", arg: 1, scope: !624, file: !90, line: 65, type: !627)
!632 = !DILocation(line: 0, scope: !624)
!633 = !DILocalVariable(name: "k", arg: 2, scope: !624, file: !90, line: 65, type: !629)
!634 = !DILocation(line: 69, column: 19, scope: !624)
!635 = !DILocation(line: 69, column: 8, scope: !624)
!636 = !DILocation(line: 69, column: 5, scope: !624)
!637 = !DILocation(line: 69, column: 17, scope: !624)
!638 = !DILocation(line: 70, column: 19, scope: !624)
!639 = !DILocation(line: 70, column: 8, scope: !624)
!640 = !DILocation(line: 70, column: 5, scope: !624)
!641 = !DILocation(line: 70, column: 17, scope: !624)
!642 = !DILocation(line: 71, column: 19, scope: !624)
!643 = !DILocation(line: 71, column: 8, scope: !624)
!644 = !DILocation(line: 71, column: 5, scope: !624)
!645 = !DILocation(line: 71, column: 17, scope: !624)
!646 = !DILocation(line: 72, column: 19, scope: !624)
!647 = !DILocation(line: 72, column: 8, scope: !624)
!648 = !DILocation(line: 72, column: 5, scope: !624)
!649 = !DILocation(line: 72, column: 17, scope: !624)
!650 = !DILocation(line: 73, column: 7, scope: !624)
!651 = !DILocalVariable(name: "constants", scope: !624, file: !90, line: 67, type: !108)
!652 = !DILocation(line: 75, column: 19, scope: !624)
!653 = !DILocation(line: 75, column: 8, scope: !624)
!654 = !DILocation(line: 75, column: 5, scope: !624)
!655 = !DILocation(line: 75, column: 17, scope: !624)
!656 = !DILocation(line: 76, column: 19, scope: !624)
!657 = !DILocation(line: 76, column: 8, scope: !624)
!658 = !DILocation(line: 76, column: 5, scope: !624)
!659 = !DILocation(line: 76, column: 17, scope: !624)
!660 = !DILocation(line: 77, column: 20, scope: !624)
!661 = !DILocation(line: 77, column: 8, scope: !624)
!662 = !DILocation(line: 77, column: 5, scope: !624)
!663 = !DILocation(line: 77, column: 18, scope: !624)
!664 = !DILocation(line: 78, column: 20, scope: !624)
!665 = !DILocation(line: 78, column: 8, scope: !624)
!666 = !DILocation(line: 78, column: 5, scope: !624)
!667 = !DILocation(line: 78, column: 18, scope: !624)
!668 = !DILocation(line: 79, column: 19, scope: !624)
!669 = !DILocation(line: 79, column: 8, scope: !624)
!670 = !DILocation(line: 79, column: 5, scope: !624)
!671 = !DILocation(line: 79, column: 17, scope: !624)
!672 = !DILocation(line: 80, column: 19, scope: !624)
!673 = !DILocation(line: 80, column: 8, scope: !624)
!674 = !DILocation(line: 80, column: 5, scope: !624)
!675 = !DILocation(line: 80, column: 17, scope: !624)
!676 = !DILocation(line: 81, column: 19, scope: !624)
!677 = !DILocation(line: 81, column: 8, scope: !624)
!678 = !DILocation(line: 81, column: 5, scope: !624)
!679 = !DILocation(line: 81, column: 17, scope: !624)
!680 = !DILocation(line: 82, column: 19, scope: !624)
!681 = !DILocation(line: 82, column: 8, scope: !624)
!682 = !DILocation(line: 82, column: 5, scope: !624)
!683 = !DILocation(line: 82, column: 17, scope: !624)
!684 = !DILocation(line: 83, column: 1, scope: !624)
!685 = distinct !DISubprogram(name: "chacha_ivsetup", scope: !90, file: !90, line: 86, type: !686, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !627, !629, !629}
!688 = !DILocalVariable(name: "x", arg: 1, scope: !685, file: !90, line: 86, type: !627)
!689 = !DILocation(line: 0, scope: !685)
!690 = !DILocalVariable(name: "iv", arg: 2, scope: !685, file: !90, line: 86, type: !629)
!691 = !DILocalVariable(name: "counter", arg: 3, scope: !685, file: !90, line: 86, type: !629)
!692 = !DILocation(line: 88, column: 28, scope: !685)
!693 = !DILocation(line: 88, column: 20, scope: !685)
!694 = !DILocation(line: 88, column: 42, scope: !685)
!695 = !DILocation(line: 88, column: 8, scope: !685)
!696 = !DILocation(line: 88, column: 5, scope: !685)
!697 = !DILocation(line: 88, column: 18, scope: !685)
!698 = !DILocation(line: 89, column: 28, scope: !685)
!699 = !DILocation(line: 89, column: 20, scope: !685)
!700 = !DILocation(line: 89, column: 42, scope: !685)
!701 = !DILocation(line: 89, column: 8, scope: !685)
!702 = !DILocation(line: 89, column: 5, scope: !685)
!703 = !DILocation(line: 89, column: 18, scope: !685)
!704 = !DILocation(line: 90, column: 20, scope: !685)
!705 = !DILocation(line: 90, column: 8, scope: !685)
!706 = !DILocation(line: 90, column: 5, scope: !685)
!707 = !DILocation(line: 90, column: 18, scope: !685)
!708 = !DILocation(line: 91, column: 20, scope: !685)
!709 = !DILocation(line: 91, column: 8, scope: !685)
!710 = !DILocation(line: 91, column: 5, scope: !685)
!711 = !DILocation(line: 91, column: 18, scope: !685)
!712 = !DILocation(line: 92, column: 1, scope: !685)
!713 = distinct !DISubprogram(name: "chacha_encrypt_bytes", scope: !90, file: !90, line: 95, type: !714, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !627, !629, !716, !122}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!717 = !DILocalVariable(name: "x", arg: 1, scope: !713, file: !90, line: 95, type: !627)
!718 = !DILocation(line: 0, scope: !713)
!719 = !DILocalVariable(name: "m", arg: 2, scope: !713, file: !90, line: 95, type: !629)
!720 = !DILocalVariable(name: "c", arg: 3, scope: !713, file: !90, line: 95, type: !716)
!721 = !DILocalVariable(name: "bytes", arg: 4, scope: !713, file: !90, line: 95, type: !122)
!722 = !DILocalVariable(name: "ctarget", scope: !713, file: !90, line: 99, type: !716)
!723 = !DILocalVariable(name: "tmp", scope: !713, file: !90, line: 100, type: !724)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 512, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 64)
!727 = !DILocation(line: 100, column: 8, scope: !713)
!728 = !DILocation(line: 103, column: 10, scope: !729)
!729 = distinct !DILexicalBlock(scope: !713, file: !90, line: 103, column: 9)
!730 = !DILocation(line: 103, column: 9, scope: !713)
!731 = !DILocation(line: 104, column: 9, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !90, line: 103, column: 17)
!733 = !DILocation(line: 106, column: 13, scope: !713)
!734 = !DILocation(line: 106, column: 10, scope: !713)
!735 = !DILocalVariable(name: "j0", scope: !713, file: !90, line: 98, type: !92)
!736 = !DILocation(line: 107, column: 13, scope: !713)
!737 = !DILocation(line: 107, column: 10, scope: !713)
!738 = !DILocalVariable(name: "j1", scope: !713, file: !90, line: 98, type: !92)
!739 = !DILocation(line: 108, column: 13, scope: !713)
!740 = !DILocation(line: 108, column: 10, scope: !713)
!741 = !DILocalVariable(name: "j2", scope: !713, file: !90, line: 98, type: !92)
!742 = !DILocation(line: 109, column: 13, scope: !713)
!743 = !DILocation(line: 109, column: 10, scope: !713)
!744 = !DILocalVariable(name: "j3", scope: !713, file: !90, line: 98, type: !92)
!745 = !DILocation(line: 110, column: 13, scope: !713)
!746 = !DILocation(line: 110, column: 10, scope: !713)
!747 = !DILocalVariable(name: "j4", scope: !713, file: !90, line: 98, type: !92)
!748 = !DILocation(line: 111, column: 13, scope: !713)
!749 = !DILocation(line: 111, column: 10, scope: !713)
!750 = !DILocalVariable(name: "j5", scope: !713, file: !90, line: 98, type: !92)
!751 = !DILocation(line: 112, column: 13, scope: !713)
!752 = !DILocation(line: 112, column: 10, scope: !713)
!753 = !DILocalVariable(name: "j6", scope: !713, file: !90, line: 98, type: !92)
!754 = !DILocation(line: 113, column: 13, scope: !713)
!755 = !DILocation(line: 113, column: 10, scope: !713)
!756 = !DILocalVariable(name: "j7", scope: !713, file: !90, line: 98, type: !92)
!757 = !DILocation(line: 114, column: 13, scope: !713)
!758 = !DILocation(line: 114, column: 10, scope: !713)
!759 = !DILocalVariable(name: "j8", scope: !713, file: !90, line: 98, type: !92)
!760 = !DILocation(line: 115, column: 13, scope: !713)
!761 = !DILocation(line: 115, column: 10, scope: !713)
!762 = !DILocalVariable(name: "j9", scope: !713, file: !90, line: 98, type: !92)
!763 = !DILocation(line: 116, column: 14, scope: !713)
!764 = !DILocation(line: 116, column: 11, scope: !713)
!765 = !DILocalVariable(name: "j10", scope: !713, file: !90, line: 98, type: !92)
!766 = !DILocation(line: 117, column: 14, scope: !713)
!767 = !DILocation(line: 117, column: 11, scope: !713)
!768 = !DILocalVariable(name: "j11", scope: !713, file: !90, line: 98, type: !92)
!769 = !DILocation(line: 118, column: 14, scope: !713)
!770 = !DILocation(line: 118, column: 11, scope: !713)
!771 = !DILocalVariable(name: "j12", scope: !713, file: !90, line: 98, type: !92)
!772 = !DILocation(line: 119, column: 14, scope: !713)
!773 = !DILocation(line: 119, column: 11, scope: !713)
!774 = !DILocalVariable(name: "j13", scope: !713, file: !90, line: 98, type: !92)
!775 = !DILocation(line: 120, column: 14, scope: !713)
!776 = !DILocation(line: 120, column: 11, scope: !713)
!777 = !DILocalVariable(name: "j14", scope: !713, file: !90, line: 98, type: !92)
!778 = !DILocation(line: 121, column: 14, scope: !713)
!779 = !DILocation(line: 121, column: 11, scope: !713)
!780 = !DILocalVariable(name: "j15", scope: !713, file: !90, line: 98, type: !92)
!781 = !DILocation(line: 123, column: 5, scope: !713)
!782 = !DILocation(line: 119, column: 9, scope: !713)
!783 = !DILocation(line: 124, column: 19, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !90, line: 124, column: 13)
!785 = distinct !DILexicalBlock(scope: !786, file: !90, line: 123, column: 14)
!786 = distinct !DILexicalBlock(scope: !787, file: !90, line: 123, column: 5)
!787 = distinct !DILexicalBlock(scope: !713, file: !90, line: 123, column: 5)
!788 = !DILocation(line: 124, column: 13, scope: !785)
!789 = !DILocalVariable(name: "i", scope: !713, file: !90, line: 101, type: !11)
!790 = !DILocation(line: 125, column: 18, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !90, line: 125, column: 13)
!792 = distinct !DILexicalBlock(scope: !784, file: !90, line: 124, column: 25)
!793 = !DILocation(line: 0, scope: !791)
!794 = !DILocation(line: 125, column: 25, scope: !795)
!795 = distinct !DILexicalBlock(scope: !791, file: !90, line: 125, column: 13)
!796 = !DILocation(line: 125, column: 27, scope: !795)
!797 = !DILocation(line: 125, column: 13, scope: !791)
!798 = !DILocation(line: 126, column: 26, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !90, line: 125, column: 41)
!800 = !DILocation(line: 126, column: 17, scope: !799)
!801 = !DILocation(line: 126, column: 24, scope: !799)
!802 = !DILocation(line: 127, column: 13, scope: !799)
!803 = !DILocation(line: 125, column: 36, scope: !795)
!804 = !DILocation(line: 125, column: 13, scope: !795)
!805 = distinct !{!805, !797, !806, !221}
!806 = !DILocation(line: 127, column: 13, scope: !791)
!807 = !DILocation(line: 128, column: 17, scope: !792)
!808 = !DILocation(line: 130, column: 17, scope: !792)
!809 = !DILocation(line: 131, column: 9, scope: !792)
!810 = !DILocalVariable(name: "x0", scope: !713, file: !90, line: 97, type: !92)
!811 = !DILocalVariable(name: "x1", scope: !713, file: !90, line: 97, type: !92)
!812 = !DILocalVariable(name: "x2", scope: !713, file: !90, line: 97, type: !92)
!813 = !DILocalVariable(name: "x3", scope: !713, file: !90, line: 97, type: !92)
!814 = !DILocalVariable(name: "x4", scope: !713, file: !90, line: 97, type: !92)
!815 = !DILocalVariable(name: "x5", scope: !713, file: !90, line: 97, type: !92)
!816 = !DILocalVariable(name: "x6", scope: !713, file: !90, line: 97, type: !92)
!817 = !DILocalVariable(name: "x7", scope: !713, file: !90, line: 97, type: !92)
!818 = !DILocalVariable(name: "x8", scope: !713, file: !90, line: 97, type: !92)
!819 = !DILocalVariable(name: "x9", scope: !713, file: !90, line: 97, type: !92)
!820 = !DILocalVariable(name: "x10", scope: !713, file: !90, line: 97, type: !92)
!821 = !DILocalVariable(name: "x11", scope: !713, file: !90, line: 97, type: !92)
!822 = !DILocalVariable(name: "x12", scope: !713, file: !90, line: 97, type: !92)
!823 = !DILocalVariable(name: "x13", scope: !713, file: !90, line: 97, type: !92)
!824 = !DILocalVariable(name: "x14", scope: !713, file: !90, line: 97, type: !92)
!825 = !DILocalVariable(name: "x15", scope: !713, file: !90, line: 97, type: !92)
!826 = !DILocation(line: 148, column: 14, scope: !827)
!827 = distinct !DILexicalBlock(scope: !785, file: !90, line: 148, column: 9)
!828 = !DILocation(line: 0, scope: !785)
!829 = !DILocation(line: 0, scope: !827)
!830 = !DILocation(line: 148, column: 24, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !90, line: 148, column: 9)
!832 = !DILocation(line: 148, column: 9, scope: !827)
!833 = !DILocation(line: 149, column: 13, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !90, line: 148, column: 37)
!835 = !DILocation(line: 150, column: 13, scope: !834)
!836 = !DILocation(line: 151, column: 13, scope: !834)
!837 = !DILocation(line: 152, column: 13, scope: !834)
!838 = !DILocation(line: 153, column: 13, scope: !834)
!839 = !DILocation(line: 154, column: 13, scope: !834)
!840 = !DILocation(line: 155, column: 13, scope: !834)
!841 = !DILocation(line: 156, column: 13, scope: !834)
!842 = !DILocation(line: 157, column: 9, scope: !834)
!843 = !DILocation(line: 148, column: 31, scope: !831)
!844 = !DILocation(line: 148, column: 9, scope: !831)
!845 = distinct !{!845, !832, !846, !221}
!846 = !DILocation(line: 157, column: 9, scope: !827)
!847 = !DILocation(line: 158, column: 14, scope: !785)
!848 = !DILocation(line: 159, column: 14, scope: !785)
!849 = !DILocation(line: 160, column: 14, scope: !785)
!850 = !DILocation(line: 161, column: 14, scope: !785)
!851 = !DILocation(line: 162, column: 14, scope: !785)
!852 = !DILocation(line: 163, column: 14, scope: !785)
!853 = !DILocation(line: 164, column: 14, scope: !785)
!854 = !DILocation(line: 165, column: 14, scope: !785)
!855 = !DILocation(line: 166, column: 14, scope: !785)
!856 = !DILocation(line: 167, column: 14, scope: !785)
!857 = !DILocation(line: 168, column: 15, scope: !785)
!858 = !DILocation(line: 169, column: 15, scope: !785)
!859 = !DILocation(line: 170, column: 15, scope: !785)
!860 = !DILocation(line: 171, column: 15, scope: !785)
!861 = !DILocation(line: 172, column: 15, scope: !785)
!862 = !DILocation(line: 173, column: 15, scope: !785)
!863 = !DILocation(line: 175, column: 14, scope: !785)
!864 = !DILocation(line: 176, column: 14, scope: !785)
!865 = !DILocation(line: 177, column: 14, scope: !785)
!866 = !DILocation(line: 178, column: 14, scope: !785)
!867 = !DILocation(line: 179, column: 14, scope: !785)
!868 = !DILocation(line: 180, column: 14, scope: !785)
!869 = !DILocation(line: 181, column: 14, scope: !785)
!870 = !DILocation(line: 182, column: 14, scope: !785)
!871 = !DILocation(line: 183, column: 14, scope: !785)
!872 = !DILocation(line: 184, column: 14, scope: !785)
!873 = !DILocation(line: 185, column: 15, scope: !785)
!874 = !DILocation(line: 186, column: 15, scope: !785)
!875 = !DILocation(line: 187, column: 15, scope: !785)
!876 = !DILocation(line: 188, column: 15, scope: !785)
!877 = !DILocation(line: 189, column: 15, scope: !785)
!878 = !DILocation(line: 190, column: 15, scope: !785)
!879 = !DILocation(line: 192, column: 15, scope: !785)
!880 = !DILocation(line: 194, column: 14, scope: !881)
!881 = distinct !DILexicalBlock(scope: !785, file: !90, line: 194, column: 13)
!882 = !DILocation(line: 194, column: 13, scope: !785)
!883 = !DILocation(line: 195, column: 19, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !90, line: 194, column: 19)
!885 = !DILocation(line: 196, column: 9, scope: !884)
!886 = !DILocation(line: 199, column: 9, scope: !785)
!887 = !DILocation(line: 199, column: 9, scope: !888)
!888 = distinct !DILexicalBlock(scope: !785, file: !90, line: 199, column: 9)
!889 = !DILocation(line: 200, column: 9, scope: !785)
!890 = !DILocation(line: 200, column: 9, scope: !891)
!891 = distinct !DILexicalBlock(scope: !785, file: !90, line: 200, column: 9)
!892 = !DILocation(line: 201, column: 9, scope: !785)
!893 = !DILocation(line: 201, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !785, file: !90, line: 201, column: 9)
!895 = !DILocation(line: 202, column: 9, scope: !785)
!896 = !DILocation(line: 202, column: 9, scope: !897)
!897 = distinct !DILexicalBlock(scope: !785, file: !90, line: 202, column: 9)
!898 = !DILocation(line: 203, column: 9, scope: !785)
!899 = !DILocation(line: 203, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !785, file: !90, line: 203, column: 9)
!901 = !DILocation(line: 204, column: 9, scope: !785)
!902 = !DILocation(line: 204, column: 9, scope: !903)
!903 = distinct !DILexicalBlock(scope: !785, file: !90, line: 204, column: 9)
!904 = !DILocation(line: 205, column: 9, scope: !785)
!905 = !DILocation(line: 205, column: 9, scope: !906)
!906 = distinct !DILexicalBlock(scope: !785, file: !90, line: 205, column: 9)
!907 = !DILocation(line: 206, column: 9, scope: !785)
!908 = !DILocation(line: 206, column: 9, scope: !909)
!909 = distinct !DILexicalBlock(scope: !785, file: !90, line: 206, column: 9)
!910 = !DILocation(line: 207, column: 9, scope: !785)
!911 = !DILocation(line: 207, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !785, file: !90, line: 207, column: 9)
!913 = !DILocation(line: 208, column: 9, scope: !785)
!914 = !DILocation(line: 208, column: 9, scope: !915)
!915 = distinct !DILexicalBlock(scope: !785, file: !90, line: 208, column: 9)
!916 = !DILocation(line: 209, column: 9, scope: !785)
!917 = !DILocation(line: 209, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !785, file: !90, line: 209, column: 9)
!919 = !DILocation(line: 210, column: 9, scope: !785)
!920 = !DILocation(line: 210, column: 9, scope: !921)
!921 = distinct !DILexicalBlock(scope: !785, file: !90, line: 210, column: 9)
!922 = !DILocation(line: 211, column: 9, scope: !785)
!923 = !DILocation(line: 211, column: 9, scope: !924)
!924 = distinct !DILexicalBlock(scope: !785, file: !90, line: 211, column: 9)
!925 = !DILocation(line: 212, column: 9, scope: !785)
!926 = !DILocation(line: 212, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !785, file: !90, line: 212, column: 9)
!928 = !DILocation(line: 213, column: 9, scope: !785)
!929 = !DILocation(line: 213, column: 9, scope: !930)
!930 = distinct !DILexicalBlock(scope: !785, file: !90, line: 213, column: 9)
!931 = !DILocation(line: 214, column: 9, scope: !785)
!932 = !DILocation(line: 214, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !785, file: !90, line: 214, column: 9)
!934 = !DILocation(line: 216, column: 19, scope: !935)
!935 = distinct !DILexicalBlock(scope: !785, file: !90, line: 216, column: 13)
!936 = !DILocation(line: 216, column: 13, scope: !785)
!937 = !DILocation(line: 217, column: 23, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !90, line: 217, column: 17)
!939 = distinct !DILexicalBlock(scope: !935, file: !90, line: 216, column: 26)
!940 = !DILocation(line: 217, column: 17, scope: !939)
!941 = !DILocation(line: 218, column: 22, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !90, line: 218, column: 17)
!943 = distinct !DILexicalBlock(scope: !938, file: !90, line: 217, column: 29)
!944 = !DILocation(line: 0, scope: !942)
!945 = !DILocation(line: 218, column: 33, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !90, line: 218, column: 17)
!947 = !DILocation(line: 218, column: 31, scope: !946)
!948 = !DILocation(line: 218, column: 17, scope: !942)
!949 = !DILocation(line: 219, column: 34, scope: !950)
!950 = distinct !DILexicalBlock(scope: !946, file: !90, line: 218, column: 60)
!951 = !DILocation(line: 219, column: 21, scope: !950)
!952 = !DILocation(line: 219, column: 32, scope: !950)
!953 = !DILocation(line: 220, column: 17, scope: !950)
!954 = !DILocation(line: 218, column: 55, scope: !946)
!955 = !DILocation(line: 218, column: 17, scope: !946)
!956 = distinct !{!956, !948, !957, !221}
!957 = !DILocation(line: 220, column: 17, scope: !942)
!958 = !DILocation(line: 221, column: 13, scope: !943)
!959 = !DILocation(line: 222, column: 16, scope: !939)
!960 = !DILocation(line: 222, column: 13, scope: !939)
!961 = !DILocation(line: 222, column: 26, scope: !939)
!962 = !DILocation(line: 223, column: 16, scope: !939)
!963 = !DILocation(line: 223, column: 13, scope: !939)
!964 = !DILocation(line: 223, column: 26, scope: !939)
!965 = !DILocation(line: 224, column: 13, scope: !939)
!966 = !DILocation(line: 226, column: 15, scope: !785)
!967 = !DILocation(line: 227, column: 11, scope: !785)
!968 = !DILocation(line: 228, column: 11, scope: !785)
!969 = !DILocation(line: 123, column: 5, scope: !786)
!970 = distinct !{!970, !971, !972}
!971 = !DILocation(line: 123, column: 5, scope: !787)
!972 = !DILocation(line: 229, column: 5, scope: !787)
!973 = !DILocation(line: 230, column: 1, scope: !713)
!974 = distinct !DISubprogram(name: "crypto_stream_chacha20_ref_xor_ic", scope: !90, file: !90, line: 252, type: !575, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!975 = !DILocalVariable(name: "c", arg: 1, scope: !974, file: !90, line: 252, type: !62)
!976 = !DILocation(line: 0, scope: !974)
!977 = !DILocalVariable(name: "m", arg: 2, scope: !974, file: !90, line: 252, type: !108)
!978 = !DILocalVariable(name: "mlen", arg: 3, scope: !974, file: !90, line: 253, type: !122)
!979 = !DILocalVariable(name: "n", arg: 4, scope: !974, file: !90, line: 254, type: !108)
!980 = !DILocalVariable(name: "ic", arg: 5, scope: !974, file: !90, line: 254, type: !577)
!981 = !DILocalVariable(name: "k", arg: 6, scope: !974, file: !90, line: 255, type: !108)
!982 = !DILocalVariable(name: "ctx", scope: !974, file: !90, line: 257, type: !606)
!983 = !DILocation(line: 257, column: 23, scope: !974)
!984 = !DILocalVariable(name: "ic_bytes", scope: !974, file: !90, line: 258, type: !985)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 8)
!988 = !DILocation(line: 258, column: 23, scope: !974)
!989 = !DILocation(line: 262, column: 10, scope: !990)
!990 = distinct !DILexicalBlock(scope: !974, file: !90, line: 262, column: 9)
!991 = !DILocation(line: 262, column: 9, scope: !974)
!992 = !DILocation(line: 263, column: 9, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !90, line: 262, column: 16)
!994 = !DILocation(line: 265, column: 15, scope: !974)
!995 = !DILocalVariable(name: "ic_high", scope: !974, file: !90, line: 259, type: !7)
!996 = !DILocation(line: 266, column: 14, scope: !974)
!997 = !DILocalVariable(name: "ic_low", scope: !974, file: !90, line: 260, type: !7)
!998 = !DILocation(line: 267, column: 5, scope: !974)
!999 = !DILocation(line: 267, column: 5, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !974, file: !90, line: 267, column: 5)
!1001 = !DILocation(line: 268, column: 5, scope: !974)
!1002 = !DILocation(line: 268, column: 5, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !974, file: !90, line: 268, column: 5)
!1004 = !DILocation(line: 269, column: 5, scope: !974)
!1005 = !DILocation(line: 270, column: 29, scope: !974)
!1006 = !DILocation(line: 270, column: 5, scope: !974)
!1007 = !DILocation(line: 271, column: 5, scope: !974)
!1008 = !DILocation(line: 272, column: 20, scope: !974)
!1009 = !DILocation(line: 272, column: 5, scope: !974)
!1010 = !DILocation(line: 273, column: 20, scope: !974)
!1011 = !DILocation(line: 273, column: 5, scope: !974)
!1012 = !DILocation(line: 275, column: 5, scope: !974)
!1013 = !DILocation(line: 276, column: 1, scope: !974)
!1014 = distinct !DISubprogram(name: "sodium_memzero", scope: !104, file: !104, line: 58, type: !44, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1015 = !DILocalVariable(name: "pnt", arg: 1, scope: !1014, file: !104, line: 58, type: !46)
!1016 = !DILocation(line: 0, scope: !1014)
!1017 = !DILocalVariable(name: "len", arg: 2, scope: !1014, file: !104, line: 58, type: !47)
!1018 = !DILocalVariable(name: "pnt_", scope: !1014, file: !104, line: 72, type: !106)
!1019 = !DILocalVariable(name: "i", scope: !1014, file: !104, line: 73, type: !12)
!1020 = !DILocation(line: 75, column: 5, scope: !1014)
!1021 = !DILocation(line: 75, column: 14, scope: !1014)
!1022 = !DILocation(line: 76, column: 15, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1014, file: !104, line: 75, column: 21)
!1024 = !DILocation(line: 76, column: 9, scope: !1023)
!1025 = !DILocation(line: 76, column: 19, scope: !1023)
!1026 = distinct !{!1026, !1020, !1027, !221}
!1027 = !DILocation(line: 77, column: 5, scope: !1014)
!1028 = !DILocation(line: 79, column: 1, scope: !1014)
!1029 = distinct !DISubprogram(name: "sodium_memcmp", scope: !104, file: !104, line: 82, type: !1030, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!52, !1032, !1032, !12}
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1035 = !DILocalVariable(name: "b1_", arg: 1, scope: !1029, file: !104, line: 82, type: !1032)
!1036 = !DILocation(line: 0, scope: !1029)
!1037 = !DILocalVariable(name: "b2_", arg: 2, scope: !1029, file: !104, line: 82, type: !1032)
!1038 = !DILocalVariable(name: "len", arg: 3, scope: !1029, file: !104, line: 82, type: !12)
!1039 = !DILocalVariable(name: "b1", scope: !1029, file: !104, line: 84, type: !108)
!1040 = !DILocalVariable(name: "b2", scope: !1029, file: !104, line: 85, type: !108)
!1041 = !DILocalVariable(name: "d", scope: !1029, file: !104, line: 87, type: !63)
!1042 = !DILocalVariable(name: "i", scope: !1029, file: !104, line: 86, type: !12)
!1043 = !DILocation(line: 89, column: 10, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1029, file: !104, line: 89, column: 5)
!1045 = !DILocation(line: 0, scope: !1044)
!1046 = !DILocation(line: 89, column: 20, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !104, line: 89, column: 5)
!1048 = !DILocation(line: 89, column: 5, scope: !1044)
!1049 = !DILocation(line: 90, column: 14, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !104, line: 89, column: 32)
!1051 = !DILocation(line: 90, column: 22, scope: !1050)
!1052 = !DILocation(line: 90, column: 20, scope: !1050)
!1053 = !DILocation(line: 90, column: 11, scope: !1050)
!1054 = !DILocation(line: 91, column: 5, scope: !1050)
!1055 = !DILocation(line: 89, column: 28, scope: !1047)
!1056 = !DILocation(line: 89, column: 5, scope: !1047)
!1057 = distinct !{!1057, !1048, !1058, !221}
!1058 = !DILocation(line: 91, column: 5, scope: !1044)
!1059 = !DILocation(line: 92, column: 26, scope: !1029)
!1060 = !DILocation(line: 92, column: 28, scope: !1029)
!1061 = !DILocation(line: 92, column: 33, scope: !1029)
!1062 = !DILocation(line: 92, column: 22, scope: !1029)
!1063 = !DILocation(line: 92, column: 40, scope: !1029)
!1064 = !DILocation(line: 92, column: 5, scope: !1029)
!1065 = distinct !DISubprogram(name: "sodium_bin2hex", scope: !104, file: !104, line: 97, type: !1066, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!1068, !1069, !47, !1070, !47}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1068)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!1071 = !DILocalVariable(name: "hex", arg: 1, scope: !1065, file: !104, line: 97, type: !1069)
!1072 = !DILocation(line: 0, scope: !1065)
!1073 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !1065, file: !104, line: 97, type: !47)
!1074 = !DILocalVariable(name: "bin", arg: 3, scope: !1065, file: !104, line: 98, type: !1070)
!1075 = !DILocalVariable(name: "bin_len", arg: 4, scope: !1065, file: !104, line: 98, type: !47)
!1076 = !DILocalVariable(name: "i", scope: !1065, file: !104, line: 100, type: !12)
!1077 = !DILocation(line: 105, column: 17, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1065, file: !104, line: 105, column: 9)
!1079 = !DILocation(line: 105, column: 33, scope: !1078)
!1080 = !DILocation(line: 105, column: 57, scope: !1078)
!1081 = !DILocation(line: 105, column: 47, scope: !1078)
!1082 = !DILocation(line: 105, column: 9, scope: !1065)
!1083 = !DILocation(line: 106, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !104, line: 105, column: 63)
!1085 = !DILocation(line: 108, column: 5, scope: !1065)
!1086 = !DILocation(line: 108, column: 14, scope: !1065)
!1087 = !DILocation(line: 109, column: 13, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1065, file: !104, line: 108, column: 25)
!1089 = !DILocation(line: 109, column: 20, scope: !1088)
!1090 = !DILocalVariable(name: "c", scope: !1065, file: !104, line: 103, type: !52)
!1091 = !DILocation(line: 110, column: 13, scope: !1088)
!1092 = !DILocation(line: 110, column: 20, scope: !1088)
!1093 = !DILocalVariable(name: "b", scope: !1065, file: !104, line: 102, type: !52)
!1094 = !DILocation(line: 111, column: 34, scope: !1088)
!1095 = !DILocation(line: 111, column: 45, scope: !1088)
!1096 = !DILocation(line: 111, column: 52, scope: !1088)
!1097 = !DILocation(line: 111, column: 58, scope: !1088)
!1098 = !DILocation(line: 111, column: 38, scope: !1088)
!1099 = !DILocation(line: 111, column: 13, scope: !1088)
!1100 = !DILocation(line: 111, column: 67, scope: !1088)
!1101 = !DILocation(line: 112, column: 34, scope: !1088)
!1102 = !DILocation(line: 112, column: 45, scope: !1088)
!1103 = !DILocation(line: 112, column: 52, scope: !1088)
!1104 = !DILocation(line: 112, column: 58, scope: !1088)
!1105 = !DILocation(line: 112, column: 38, scope: !1088)
!1106 = !DILocation(line: 112, column: 13, scope: !1088)
!1107 = !DILocation(line: 111, column: 72, scope: !1088)
!1108 = !DILocalVariable(name: "x", scope: !1065, file: !104, line: 101, type: !11)
!1109 = !DILocation(line: 113, column: 23, scope: !1088)
!1110 = !DILocation(line: 113, column: 15, scope: !1088)
!1111 = !DILocation(line: 113, column: 9, scope: !1088)
!1112 = !DILocation(line: 113, column: 21, scope: !1088)
!1113 = !DILocation(line: 114, column: 11, scope: !1088)
!1114 = !DILocation(line: 115, column: 28, scope: !1088)
!1115 = !DILocation(line: 115, column: 15, scope: !1088)
!1116 = !DILocation(line: 115, column: 20, scope: !1088)
!1117 = !DILocation(line: 115, column: 9, scope: !1088)
!1118 = !DILocation(line: 115, column: 26, scope: !1088)
!1119 = !DILocation(line: 116, column: 10, scope: !1088)
!1120 = distinct !{!1120, !1085, !1121, !221}
!1121 = !DILocation(line: 117, column: 5, scope: !1065)
!1122 = !DILocation(line: 118, column: 11, scope: !1065)
!1123 = !DILocation(line: 118, column: 5, scope: !1065)
!1124 = !DILocation(line: 118, column: 17, scope: !1065)
!1125 = !DILocation(line: 120, column: 5, scope: !1065)
!1126 = distinct !DISubprogram(name: "sodium_hex2bin", scope: !104, file: !104, line: 124, type: !1127, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!52, !256, !47, !1129, !47, !1129, !1130, !1132}
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!1133 = !DILocalVariable(name: "bin", arg: 1, scope: !1126, file: !104, line: 124, type: !256)
!1134 = !DILocation(line: 0, scope: !1126)
!1135 = !DILocalVariable(name: "bin_maxlen", arg: 2, scope: !1126, file: !104, line: 124, type: !47)
!1136 = !DILocalVariable(name: "hex", arg: 3, scope: !1126, file: !104, line: 125, type: !1129)
!1137 = !DILocalVariable(name: "hex_len", arg: 4, scope: !1126, file: !104, line: 125, type: !47)
!1138 = !DILocalVariable(name: "ignore", arg: 5, scope: !1126, file: !104, line: 126, type: !1129)
!1139 = !DILocalVariable(name: "bin_len", arg: 6, scope: !1126, file: !104, line: 126, type: !1130)
!1140 = !DILocalVariable(name: "hex_end", arg: 7, scope: !1126, file: !104, line: 127, type: !1132)
!1141 = !DILocalVariable(name: "bin_pos", scope: !1126, file: !104, line: 129, type: !12)
!1142 = !DILocalVariable(name: "hex_pos", scope: !1126, file: !104, line: 130, type: !12)
!1143 = !DILocalVariable(name: "ret", scope: !1126, file: !104, line: 131, type: !52)
!1144 = !DILocalVariable(name: "c_acc", scope: !1126, file: !104, line: 133, type: !63)
!1145 = !DILocalVariable(name: "state", scope: !1126, file: !104, line: 137, type: !63)
!1146 = !DILocation(line: 139, column: 5, scope: !1126)
!1147 = !DILocation(line: 129, column: 19, scope: !1126)
!1148 = !DILocation(line: 139, column: 20, scope: !1126)
!1149 = !DILocation(line: 140, column: 29, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1126, file: !104, line: 139, column: 31)
!1151 = !DILocalVariable(name: "c", scope: !1126, file: !104, line: 132, type: !63)
!1152 = !DILocation(line: 141, column: 17, scope: !1150)
!1153 = !DILocation(line: 141, column: 19, scope: !1150)
!1154 = !DILocalVariable(name: "c_num", scope: !1126, file: !104, line: 135, type: !63)
!1155 = !DILocation(line: 142, column: 19, scope: !1150)
!1156 = !DILocation(line: 142, column: 25, scope: !1150)
!1157 = !DILocation(line: 142, column: 32, scope: !1150)
!1158 = !DILocation(line: 142, column: 18, scope: !1150)
!1159 = !DILocalVariable(name: "c_num0", scope: !1126, file: !104, line: 135, type: !63)
!1160 = !DILocation(line: 143, column: 20, scope: !1150)
!1161 = !DILocation(line: 143, column: 22, scope: !1150)
!1162 = !DILocation(line: 143, column: 30, scope: !1150)
!1163 = !DILocation(line: 143, column: 19, scope: !1150)
!1164 = !DILocalVariable(name: "c_alpha", scope: !1126, file: !104, line: 134, type: !63)
!1165 = !DILocation(line: 144, column: 22, scope: !1150)
!1166 = !DILocation(line: 144, column: 30, scope: !1150)
!1167 = !DILocation(line: 144, column: 40, scope: !1150)
!1168 = !DILocation(line: 144, column: 48, scope: !1150)
!1169 = !DILocation(line: 144, column: 37, scope: !1150)
!1170 = !DILocation(line: 144, column: 56, scope: !1150)
!1171 = !DILocation(line: 144, column: 20, scope: !1150)
!1172 = !DILocalVariable(name: "c_alpha0", scope: !1126, file: !104, line: 134, type: !63)
!1173 = !DILocation(line: 145, column: 14, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1150, file: !104, line: 145, column: 13)
!1175 = !DILocation(line: 145, column: 23, scope: !1174)
!1176 = !DILocation(line: 145, column: 21, scope: !1174)
!1177 = !DILocation(line: 145, column: 33, scope: !1174)
!1178 = !DILocation(line: 145, column: 13, scope: !1150)
!1179 = !DILocation(line: 146, column: 24, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !104, line: 146, column: 17)
!1181 = distinct !DILexicalBlock(scope: !1174, file: !104, line: 145, column: 40)
!1182 = !DILocation(line: 146, column: 32, scope: !1180)
!1183 = !DILocation(line: 146, column: 35, scope: !1180)
!1184 = !DILocation(line: 146, column: 41, scope: !1180)
!1185 = !DILocation(line: 146, column: 47, scope: !1180)
!1186 = !DILocation(line: 146, column: 65, scope: !1180)
!1187 = !DILocation(line: 146, column: 50, scope: !1180)
!1188 = !DILocation(line: 146, column: 68, scope: !1180)
!1189 = !DILocation(line: 146, column: 17, scope: !1181)
!1190 = !DILocation(line: 147, column: 24, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1180, file: !104, line: 146, column: 77)
!1192 = !DILocation(line: 148, column: 17, scope: !1191)
!1193 = distinct !{!1193, !1146, !1194, !221}
!1194 = !DILocation(line: 165, column: 5, scope: !1126)
!1195 = !DILocation(line: 150, column: 13, scope: !1181)
!1196 = !DILocation(line: 152, column: 18, scope: !1150)
!1197 = !DILocation(line: 152, column: 27, scope: !1150)
!1198 = !DILocation(line: 152, column: 25, scope: !1150)
!1199 = !DILocation(line: 152, column: 37, scope: !1150)
!1200 = !DILocation(line: 152, column: 48, scope: !1150)
!1201 = !DILocation(line: 152, column: 46, scope: !1150)
!1202 = !DILocation(line: 152, column: 34, scope: !1150)
!1203 = !DILocation(line: 152, column: 17, scope: !1150)
!1204 = !DILocalVariable(name: "c_val", scope: !1126, file: !104, line: 136, type: !63)
!1205 = !DILocation(line: 153, column: 21, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1150, file: !104, line: 153, column: 13)
!1207 = !DILocation(line: 153, column: 13, scope: !1150)
!1208 = !DILocation(line: 155, column: 13, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !104, line: 153, column: 36)
!1210 = !DILocation(line: 155, column: 19, scope: !1209)
!1211 = !DILocation(line: 156, column: 13, scope: !1209)
!1212 = !DILocation(line: 158, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1150, file: !104, line: 158, column: 13)
!1214 = !DILocation(line: 158, column: 19, scope: !1213)
!1215 = !DILocation(line: 158, column: 13, scope: !1150)
!1216 = !DILocation(line: 159, column: 21, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !104, line: 158, column: 26)
!1218 = !DILocation(line: 159, column: 27, scope: !1217)
!1219 = !DILocation(line: 160, column: 9, scope: !1217)
!1220 = !DILocation(line: 161, column: 30, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1213, file: !104, line: 160, column: 16)
!1222 = !DILocation(line: 161, column: 38, scope: !1221)
!1223 = !DILocation(line: 161, column: 36, scope: !1221)
!1224 = !DILocation(line: 161, column: 24, scope: !1221)
!1225 = !DILocation(line: 161, column: 13, scope: !1221)
!1226 = !DILocation(line: 161, column: 28, scope: !1221)
!1227 = !DILocation(line: 163, column: 18, scope: !1150)
!1228 = !DILocation(line: 163, column: 17, scope: !1150)
!1229 = !DILocation(line: 164, column: 16, scope: !1150)
!1230 = !DILocation(line: 166, column: 9, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1126, file: !104, line: 166, column: 9)
!1232 = !DILocation(line: 166, column: 15, scope: !1231)
!1233 = !DILocation(line: 166, column: 9, scope: !1126)
!1234 = !DILocation(line: 167, column: 16, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !104, line: 166, column: 22)
!1236 = !DILocation(line: 168, column: 5, scope: !1235)
!1237 = !DILocation(line: 169, column: 17, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1126, file: !104, line: 169, column: 9)
!1239 = !DILocation(line: 169, column: 9, scope: !1126)
!1240 = !DILocation(line: 170, column: 21, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !104, line: 169, column: 26)
!1242 = !DILocation(line: 170, column: 18, scope: !1241)
!1243 = !DILocation(line: 171, column: 5, scope: !1241)
!1244 = !DILocation(line: 172, column: 17, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1126, file: !104, line: 172, column: 9)
!1246 = !DILocation(line: 172, column: 9, scope: !1126)
!1247 = !DILocation(line: 173, column: 18, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !104, line: 172, column: 26)
!1249 = !DILocation(line: 174, column: 5, scope: !1248)
!1250 = !DILocation(line: 175, column: 5, scope: !1126)
!1251 = distinct !DISubprogram(name: "_sodium_alloc_init", scope: !104, file: !104, line: 179, type: !50, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1252 = !DILocation(line: 196, column: 5, scope: !1251)
!1253 = !DILocation(line: 198, column: 5, scope: !1251)
!1254 = distinct !DISubprogram(name: "sodium_mlock", scope: !104, file: !104, line: 202, type: !426, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1255 = !DILocalVariable(name: "addr", arg: 1, scope: !1254, file: !104, line: 202, type: !46)
!1256 = !DILocation(line: 0, scope: !1254)
!1257 = !DILocalVariable(name: "len", arg: 2, scope: !1254, file: !104, line: 202, type: !47)
!1258 = !DILocation(line: 212, column: 5, scope: !1254)
!1259 = !DILocation(line: 212, column: 11, scope: !1254)
!1260 = !DILocation(line: 213, column: 5, scope: !1254)
!1261 = distinct !DISubprogram(name: "sodium_munlock", scope: !104, file: !104, line: 218, type: !426, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1262 = !DILocalVariable(name: "addr", arg: 1, scope: !1261, file: !104, line: 218, type: !46)
!1263 = !DILocation(line: 0, scope: !1261)
!1264 = !DILocalVariable(name: "len", arg: 2, scope: !1261, file: !104, line: 218, type: !47)
!1265 = !DILocation(line: 220, column: 5, scope: !1261)
!1266 = !DILocation(line: 229, column: 5, scope: !1261)
!1267 = !DILocation(line: 229, column: 11, scope: !1261)
!1268 = !DILocation(line: 230, column: 5, scope: !1261)
!1269 = distinct !DISubprogram(name: "sodium_malloc", scope: !104, file: !104, line: 402, type: !1270, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!6, !47}
!1272 = !DILocalVariable(name: "size", arg: 1, scope: !1269, file: !104, line: 402, type: !47)
!1273 = !DILocation(line: 0, scope: !1269)
!1274 = !DILocation(line: 406, column: 16, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1269, file: !104, line: 406, column: 9)
!1276 = !DILocalVariable(name: "ptr", scope: !1269, file: !104, line: 404, type: !6)
!1277 = !DILocation(line: 406, column: 38, scope: !1275)
!1278 = !DILocation(line: 406, column: 9, scope: !1269)
!1279 = !DILocation(line: 407, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !104, line: 406, column: 47)
!1281 = !DILocation(line: 409, column: 5, scope: !1269)
!1282 = !DILocation(line: 411, column: 5, scope: !1269)
!1283 = !DILocation(line: 412, column: 1, scope: !1269)
!1284 = distinct !DISubprogram(name: "_sodium_malloc", scope: !104, file: !104, line: 353, type: !1270, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1285 = !DILocalVariable(name: "size", arg: 1, scope: !1284, file: !104, line: 353, type: !47)
!1286 = !DILocation(line: 0, scope: !1284)
!1287 = !DILocation(line: 355, column: 12, scope: !1284)
!1288 = !DILocation(line: 355, column: 5, scope: !1284)
!1289 = distinct !DISubprogram(name: "sodium_allocarray", scope: !104, file: !104, line: 415, type: !1290, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!6, !12, !12}
!1292 = !DILocalVariable(name: "count", arg: 1, scope: !1289, file: !104, line: 415, type: !12)
!1293 = !DILocation(line: 0, scope: !1289)
!1294 = !DILocalVariable(name: "size", arg: 2, scope: !1289, file: !104, line: 415, type: !12)
!1295 = !DILocation(line: 419, column: 15, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1289, file: !104, line: 419, column: 9)
!1297 = !DILocation(line: 419, column: 29, scope: !1296)
!1298 = !DILocation(line: 419, column: 58, scope: !1296)
!1299 = !DILocation(line: 419, column: 37, scope: !1296)
!1300 = !DILocation(line: 419, column: 9, scope: !1289)
!1301 = !DILocation(line: 420, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !104, line: 419, column: 67)
!1303 = !DILocation(line: 420, column: 15, scope: !1302)
!1304 = !DILocation(line: 421, column: 9, scope: !1302)
!1305 = !DILocation(line: 423, column: 24, scope: !1289)
!1306 = !DILocalVariable(name: "total_size", scope: !1289, file: !104, line: 417, type: !12)
!1307 = !DILocation(line: 425, column: 12, scope: !1289)
!1308 = !DILocation(line: 425, column: 5, scope: !1289)
!1309 = !DILocation(line: 426, column: 1, scope: !1289)
!1310 = distinct !DISubprogram(name: "sodium_free", scope: !104, file: !104, line: 430, type: !1311, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !6}
!1313 = !DILocalVariable(name: "ptr", arg: 1, scope: !1310, file: !104, line: 430, type: !6)
!1314 = !DILocation(line: 0, scope: !1310)
!1315 = !DILocation(line: 432, column: 5, scope: !1310)
!1316 = !DILocation(line: 433, column: 1, scope: !1310)
!1317 = distinct !DISubprogram(name: "sodium_mprotect_noaccess", scope: !104, file: !104, line: 493, type: !1318, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!52, !6}
!1320 = !DILocalVariable(name: "ptr", arg: 1, scope: !1317, file: !104, line: 493, type: !6)
!1321 = !DILocation(line: 0, scope: !1317)
!1322 = !DILocation(line: 495, column: 12, scope: !1317)
!1323 = !DILocation(line: 495, column: 5, scope: !1317)
!1324 = distinct !DISubprogram(name: "_mprotect_noaccess", scope: !104, file: !104, line: 235, type: !1325, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!52, !6, !12}
!1327 = !DILocalVariable(name: "ptr", arg: 1, scope: !1324, file: !104, line: 235, type: !6)
!1328 = !DILocation(line: 0, scope: !1324)
!1329 = !DILocalVariable(name: "size", arg: 2, scope: !1324, file: !104, line: 235, type: !12)
!1330 = !DILocation(line: 243, column: 5, scope: !1324)
!1331 = !DILocation(line: 243, column: 11, scope: !1324)
!1332 = !DILocation(line: 244, column: 5, scope: !1324)
!1333 = distinct !DISubprogram(name: "_sodium_mprotect", scope: !104, file: !104, line: 469, type: !1334, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!52, !6, !1336}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1337 = !DILocalVariable(name: "ptr", arg: 1, scope: !1333, file: !104, line: 469, type: !6)
!1338 = !DILocation(line: 0, scope: !1333)
!1339 = !DILocalVariable(name: "cb", arg: 2, scope: !1333, file: !104, line: 469, type: !1336)
!1340 = !DILocation(line: 473, column: 5, scope: !1333)
!1341 = !DILocation(line: 473, column: 11, scope: !1333)
!1342 = !DILocation(line: 474, column: 5, scope: !1333)
!1343 = distinct !DISubprogram(name: "sodium_mprotect_readonly", scope: !104, file: !104, line: 499, type: !1318, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1344 = !DILocalVariable(name: "ptr", arg: 1, scope: !1343, file: !104, line: 499, type: !6)
!1345 = !DILocation(line: 0, scope: !1343)
!1346 = !DILocation(line: 501, column: 12, scope: !1343)
!1347 = !DILocation(line: 501, column: 5, scope: !1343)
!1348 = distinct !DISubprogram(name: "_mprotect_readonly", scope: !104, file: !104, line: 249, type: !1325, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1349 = !DILocalVariable(name: "ptr", arg: 1, scope: !1348, file: !104, line: 249, type: !6)
!1350 = !DILocation(line: 0, scope: !1348)
!1351 = !DILocalVariable(name: "size", arg: 2, scope: !1348, file: !104, line: 249, type: !12)
!1352 = !DILocation(line: 257, column: 5, scope: !1348)
!1353 = !DILocation(line: 257, column: 11, scope: !1348)
!1354 = !DILocation(line: 258, column: 5, scope: !1348)
!1355 = distinct !DISubprogram(name: "sodium_mprotect_readwrite", scope: !104, file: !104, line: 505, type: !1318, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1356 = !DILocalVariable(name: "ptr", arg: 1, scope: !1355, file: !104, line: 505, type: !6)
!1357 = !DILocation(line: 0, scope: !1355)
!1358 = !DILocation(line: 507, column: 12, scope: !1355)
!1359 = !DILocation(line: 507, column: 5, scope: !1355)
!1360 = distinct !DISubprogram(name: "_mprotect_readwrite", scope: !104, file: !104, line: 263, type: !1325, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !103, retainedNodes: !4)
!1361 = !DILocalVariable(name: "ptr", arg: 1, scope: !1360, file: !104, line: 263, type: !6)
!1362 = !DILocation(line: 0, scope: !1360)
!1363 = !DILocalVariable(name: "size", arg: 2, scope: !1360, file: !104, line: 263, type: !12)
!1364 = !DILocation(line: 271, column: 5, scope: !1360)
!1365 = !DILocation(line: 271, column: 11, scope: !1360)
!1366 = !DILocation(line: 272, column: 5, scope: !1360)
