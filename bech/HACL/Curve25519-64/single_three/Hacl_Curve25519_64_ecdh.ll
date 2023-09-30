; ModuleID = 'Hacl_Curve25519_64_ecdh.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

@g25519 = internal constant <{ i8, [31 x i8] }> <{ i8 9, [31 x i8] zeroinitializer }>, align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_64_scalarmult(i8* %0, i8* %1, i8* %2) #0 !dbg !28 {
  %4 = alloca [8 x i64], align 16
  %5 = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i8* %1, metadata !34, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i8* %2, metadata !35, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata [8 x i64]* %4, metadata !36, metadata !DIExpression()), !dbg !40
  %6 = bitcast [8 x i64]* %4 to i8*, !dbg !40
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 64, i1 false), !dbg !40
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !41, metadata !DIExpression()), !dbg !45
  %7 = bitcast [4 x i64]* %5 to i8*, !dbg !45
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false), !dbg !45
  br label %8, !dbg !46

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !47, metadata !DIExpression()), !dbg !49
  %9 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !50
  call void @llvm.dbg.value(metadata i64* %9, metadata !52, metadata !DIExpression()), !dbg !54
  %10 = mul i32 0, 8, !dbg !50
  %11 = zext i32 %10 to i64, !dbg !50
  %12 = getelementptr inbounds i8, i8* %2, i64 %11, !dbg !50
  call void @llvm.dbg.value(metadata i8* %12, metadata !55, metadata !DIExpression()), !dbg !54
  %13 = call i64 @load64(i8* %12), !dbg !50
  %14 = call i64 @__uint64_identity(i64 %13), !dbg !50
  call void @llvm.dbg.value(metadata i64 %14, metadata !56, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i64 %14, metadata !57, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i64 %14, metadata !58, metadata !DIExpression()), !dbg !54
  %15 = zext i32 0 to i64, !dbg !50
  %16 = getelementptr inbounds i64, i64* %9, i64 %15, !dbg !50
  store i64 %14, i64* %16, align 8, !dbg !50
  %17 = add i32 0, 1, !dbg !50
  call void @llvm.dbg.value(metadata i32 %17, metadata !47, metadata !DIExpression()), !dbg !49
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !59
  call void @llvm.dbg.value(metadata i64* %18, metadata !61, metadata !DIExpression()), !dbg !62
  %19 = mul i32 %17, 8, !dbg !59
  %20 = zext i32 %19 to i64, !dbg !59
  %21 = getelementptr inbounds i8, i8* %2, i64 %20, !dbg !59
  call void @llvm.dbg.value(metadata i8* %21, metadata !63, metadata !DIExpression()), !dbg !62
  %22 = call i64 @load64(i8* %21), !dbg !59
  %23 = call i64 @__uint64_identity(i64 %22), !dbg !59
  call void @llvm.dbg.value(metadata i64 %23, metadata !64, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i64 %23, metadata !65, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i64 %23, metadata !66, metadata !DIExpression()), !dbg !62
  %24 = zext i32 %17 to i64, !dbg !59
  %25 = getelementptr inbounds i64, i64* %18, i64 %24, !dbg !59
  store i64 %23, i64* %25, align 8, !dbg !59
  %26 = add i32 %17, 1, !dbg !59
  call void @llvm.dbg.value(metadata i32 %26, metadata !47, metadata !DIExpression()), !dbg !49
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !67
  call void @llvm.dbg.value(metadata i64* %27, metadata !69, metadata !DIExpression()), !dbg !70
  %28 = mul i32 %26, 8, !dbg !67
  %29 = zext i32 %28 to i64, !dbg !67
  %30 = getelementptr inbounds i8, i8* %2, i64 %29, !dbg !67
  call void @llvm.dbg.value(metadata i8* %30, metadata !71, metadata !DIExpression()), !dbg !70
  %31 = call i64 @load64(i8* %30), !dbg !67
  %32 = call i64 @__uint64_identity(i64 %31), !dbg !67
  call void @llvm.dbg.value(metadata i64 %32, metadata !72, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %32, metadata !73, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i64 %32, metadata !74, metadata !DIExpression()), !dbg !70
  %33 = zext i32 %26 to i64, !dbg !67
  %34 = getelementptr inbounds i64, i64* %27, i64 %33, !dbg !67
  store i64 %32, i64* %34, align 8, !dbg !67
  %35 = add i32 %26, 1, !dbg !67
  call void @llvm.dbg.value(metadata i32 %35, metadata !47, metadata !DIExpression()), !dbg !49
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !75
  call void @llvm.dbg.value(metadata i64* %36, metadata !77, metadata !DIExpression()), !dbg !78
  %37 = mul i32 %35, 8, !dbg !75
  %38 = zext i32 %37 to i64, !dbg !75
  %39 = getelementptr inbounds i8, i8* %2, i64 %38, !dbg !75
  call void @llvm.dbg.value(metadata i8* %39, metadata !79, metadata !DIExpression()), !dbg !78
  %40 = call i64 @load64(i8* %39), !dbg !75
  %41 = call i64 @__uint64_identity(i64 %40), !dbg !75
  call void @llvm.dbg.value(metadata i64 %41, metadata !80, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i64 %41, metadata !81, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i64 %41, metadata !82, metadata !DIExpression()), !dbg !78
  %42 = zext i32 %35 to i64, !dbg !75
  %43 = getelementptr inbounds i64, i64* %36, i64 %42, !dbg !75
  store i64 %41, i64* %43, align 8, !dbg !75
  %44 = add i32 %35, 1, !dbg !75
  call void @llvm.dbg.value(metadata i32 %44, metadata !47, metadata !DIExpression()), !dbg !49
  br label %45, !dbg !83

45:                                               ; preds = %8
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !84
  %47 = load i64, i64* %46, align 8, !dbg !84
  call void @llvm.dbg.value(metadata i64 %47, metadata !85, metadata !DIExpression()), !dbg !33
  %48 = and i64 %47, 9223372036854775807, !dbg !86
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !87
  store i64 %48, i64* %49, align 8, !dbg !88
  %50 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !89
  call void @llvm.dbg.value(metadata i64* %50, metadata !90, metadata !DIExpression()), !dbg !33
  %51 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !91
  %52 = getelementptr inbounds i64, i64* %51, i64 4, !dbg !92
  call void @llvm.dbg.value(metadata i64* %52, metadata !93, metadata !DIExpression()), !dbg !33
  %53 = getelementptr inbounds i64, i64* %52, i64 0, !dbg !94
  store i64 1, i64* %53, align 8, !dbg !95
  %54 = getelementptr inbounds i64, i64* %52, i64 1, !dbg !96
  store i64 0, i64* %54, align 8, !dbg !97
  %55 = getelementptr inbounds i64, i64* %52, i64 2, !dbg !98
  store i64 0, i64* %55, align 8, !dbg !99
  %56 = getelementptr inbounds i64, i64* %52, i64 3, !dbg !100
  store i64 0, i64* %56, align 8, !dbg !101
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !102
  %58 = load i64, i64* %57, align 16, !dbg !102
  %59 = getelementptr inbounds i64, i64* %50, i64 0, !dbg !103
  store i64 %58, i64* %59, align 8, !dbg !104
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1, !dbg !105
  %61 = load i64, i64* %60, align 8, !dbg !105
  %62 = getelementptr inbounds i64, i64* %50, i64 1, !dbg !106
  store i64 %61, i64* %62, align 8, !dbg !107
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2, !dbg !108
  %64 = load i64, i64* %63, align 16, !dbg !108
  %65 = getelementptr inbounds i64, i64* %50, i64 2, !dbg !109
  store i64 %64, i64* %65, align 8, !dbg !110
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !111
  %67 = load i64, i64* %66, align 8, !dbg !111
  %68 = getelementptr inbounds i64, i64* %50, i64 3, !dbg !112
  store i64 %67, i64* %68, align 8, !dbg !113
  %69 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !114
  %70 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !115
  call void @montgomery_ladder(i64* %69, i8* %1, i64* %70), !dbg !116
  %71 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !117
  call void @encode_point(i8* %0, i64* %71), !dbg !118
  ret void, !dbg !119
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @load64(i8* %0) #0 !dbg !120 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i64* %2, metadata !126, metadata !DIExpression()), !dbg !127
  %3 = bitcast i64* %2 to i8*, !dbg !128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 1 %0, i64 8, i1 false), !dbg !128
  %4 = load i64, i64* %2, align 8, !dbg !129
  ret i64 %4, !dbg !130
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @__uint64_identity(i64 %0) #0 !dbg !131 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !135, metadata !DIExpression()), !dbg !136
  ret i64 %0, !dbg !137
}

; Function Attrs: noinline nounwind uwtable
define internal void @montgomery_ladder(i64* %0, i8* %1, i64* %2) #0 !dbg !138 {
  %4 = alloca [16 x i64], align 16
  %5 = alloca [33 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i8* %1, metadata !143, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64* %2, metadata !144, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata [16 x i64]* %4, metadata !145, metadata !DIExpression()), !dbg !149
  %6 = bitcast [16 x i64]* %4 to i8*, !dbg !149
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 128, i1 false), !dbg !149
  call void @llvm.dbg.declare(metadata [33 x i64]* %5, metadata !150, metadata !DIExpression()), !dbg !154
  %7 = bitcast [33 x i64]* %5 to i8*, !dbg !154
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 264, i1 false), !dbg !154
  %8 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !155
  call void @llvm.dbg.value(metadata i64* %8, metadata !156, metadata !DIExpression()), !dbg !142
  %9 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !157
  call void @llvm.dbg.value(metadata i64* %9, metadata !158, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64* %9, metadata !159, metadata !DIExpression()), !dbg !142
  %10 = getelementptr inbounds i64, i64* %9, i64 8, !dbg !160
  call void @llvm.dbg.value(metadata i64* %10, metadata !161, metadata !DIExpression()), !dbg !142
  %11 = bitcast i64* %10 to i8*, !dbg !162
  %12 = bitcast i64* %2 to i8*, !dbg !162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 64, i1 false), !dbg !162
  call void @llvm.dbg.value(metadata i64* %9, metadata !163, metadata !DIExpression()), !dbg !142
  %13 = getelementptr inbounds i64, i64* %9, i64 4, !dbg !164
  call void @llvm.dbg.value(metadata i64* %13, metadata !165, metadata !DIExpression()), !dbg !142
  %14 = getelementptr inbounds i64, i64* %9, i64 0, !dbg !166
  store i64 1, i64* %14, align 8, !dbg !167
  %15 = getelementptr inbounds i64, i64* %9, i64 1, !dbg !168
  store i64 0, i64* %15, align 8, !dbg !169
  %16 = getelementptr inbounds i64, i64* %9, i64 2, !dbg !170
  store i64 0, i64* %16, align 8, !dbg !171
  %17 = getelementptr inbounds i64, i64* %9, i64 3, !dbg !172
  store i64 0, i64* %17, align 8, !dbg !173
  %18 = getelementptr inbounds i64, i64* %13, i64 0, !dbg !174
  store i64 0, i64* %18, align 8, !dbg !175
  %19 = getelementptr inbounds i64, i64* %13, i64 1, !dbg !176
  store i64 0, i64* %19, align 8, !dbg !177
  %20 = getelementptr inbounds i64, i64* %13, i64 2, !dbg !178
  store i64 0, i64* %20, align 8, !dbg !179
  %21 = getelementptr inbounds i64, i64* %13, i64 3, !dbg !180
  store i64 0, i64* %21, align 8, !dbg !181
  %22 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !182
  call void @llvm.dbg.value(metadata i64* %22, metadata !183, metadata !DIExpression()), !dbg !142
  %23 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !184
  call void @llvm.dbg.value(metadata i64* %23, metadata !185, metadata !DIExpression()), !dbg !142
  %24 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !186
  call void @llvm.dbg.value(metadata i64* %24, metadata !187, metadata !DIExpression()), !dbg !142
  %25 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !188
  %26 = getelementptr inbounds i64, i64* %25, i64 8, !dbg !189
  call void @llvm.dbg.value(metadata i64* %26, metadata !190, metadata !DIExpression()), !dbg !142
  %27 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !191
  %28 = getelementptr inbounds i64, i64* %27, i64 32, !dbg !192
  call void @llvm.dbg.value(metadata i64* %28, metadata !193, metadata !DIExpression()), !dbg !142
  call void @cswap20(i64 1, i64* %24, i64* %26), !dbg !194
  %29 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !195
  call void @point_add_and_double(i64* %2, i64* %23, i64* %29), !dbg !196
  %30 = getelementptr inbounds i64, i64* %28, i64 0, !dbg !197
  store i64 1, i64* %30, align 8, !dbg !198
  call void @llvm.dbg.value(metadata i32 0, metadata !199, metadata !DIExpression()), !dbg !201
  br label %31, !dbg !202

31:                                               ; preds = %54, %3
  %.0 = phi i32 [ 0, %3 ], [ %55, %54 ], !dbg !201
  call void @llvm.dbg.value(metadata i32 %.0, metadata !199, metadata !DIExpression()), !dbg !201
  %32 = icmp ult i32 %.0, 251, !dbg !203
  br i1 %32, label %33, label %56, !dbg !205

33:                                               ; preds = %31
  %34 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !206
  call void @llvm.dbg.value(metadata i64* %34, metadata !208, metadata !DIExpression()), !dbg !209
  %35 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !210
  %36 = getelementptr inbounds i64, i64* %35, i64 32, !dbg !211
  call void @llvm.dbg.value(metadata i64* %36, metadata !212, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i64* %34, metadata !213, metadata !DIExpression()), !dbg !209
  %37 = getelementptr inbounds i64, i64* %34, i64 8, !dbg !214
  call void @llvm.dbg.value(metadata i64* %37, metadata !215, metadata !DIExpression()), !dbg !209
  %38 = sub i32 253, %.0, !dbg !216
  %39 = udiv i32 %38, 8, !dbg !217
  %40 = zext i32 %39 to i64, !dbg !218
  %41 = getelementptr inbounds i8, i8* %1, i64 %40, !dbg !218
  %42 = load i8, i8* %41, align 1, !dbg !218
  %43 = zext i8 %42 to i32, !dbg !218
  %44 = sub i32 253, %.0, !dbg !219
  %45 = urem i32 %44, 8, !dbg !220
  %46 = ashr i32 %43, %45, !dbg !221
  %47 = and i32 %46, 1, !dbg !222
  %48 = sext i32 %47 to i64, !dbg !223
  call void @llvm.dbg.value(metadata i64 %48, metadata !224, metadata !DIExpression()), !dbg !209
  %49 = getelementptr inbounds i64, i64* %36, i64 0, !dbg !225
  %50 = load i64, i64* %49, align 8, !dbg !225
  %51 = xor i64 %50, %48, !dbg !226
  call void @llvm.dbg.value(metadata i64 %51, metadata !227, metadata !DIExpression()), !dbg !209
  call void @cswap20(i64 %51, i64* %34, i64* %37), !dbg !228
  %52 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !229
  call void @point_add_and_double(i64* %2, i64* %34, i64* %52), !dbg !230
  %53 = getelementptr inbounds i64, i64* %36, i64 0, !dbg !231
  store i64 %48, i64* %53, align 8, !dbg !232
  br label %54, !dbg !233

54:                                               ; preds = %33
  %55 = add i32 %.0, 1, !dbg !234
  call void @llvm.dbg.value(metadata i32 %55, metadata !199, metadata !DIExpression()), !dbg !201
  br label %31, !dbg !235, !llvm.loop !236

56:                                               ; preds = %31
  %57 = getelementptr inbounds i64, i64* %28, i64 0, !dbg !239
  %58 = load i64, i64* %57, align 8, !dbg !239
  call void @llvm.dbg.value(metadata i64 %58, metadata !240, metadata !DIExpression()), !dbg !142
  call void @cswap20(i64 %58, i64* %24, i64* %26), !dbg !241
  call void @llvm.dbg.value(metadata i64* %22, metadata !242, metadata !DIExpression()), !dbg !142
  %59 = getelementptr inbounds i64, i64* %22, i64 16, !dbg !243
  call void @llvm.dbg.value(metadata i64* %59, metadata !244, metadata !DIExpression()), !dbg !142
  %60 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !245
  call void @point_double(i64* %22, i64* %59, i64* %60), !dbg !246
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !247
  call void @point_double(i64* %22, i64* %59, i64* %61), !dbg !248
  %62 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !249
  call void @point_double(i64* %22, i64* %59, i64* %62), !dbg !250
  %63 = bitcast i64* %0 to i8*, !dbg !251
  %64 = bitcast i64* %8 to i8*, !dbg !251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 64, i1 false), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind uwtable
define internal void @encode_point(i8* %0, i64* %1) #0 !dbg !253 {
  %3 = alloca [4 x i64], align 16
  %4 = alloca [4 x i64], align 16
  %5 = alloca [16 x i64], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i64* %1, metadata !258, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i64* %1, metadata !259, metadata !DIExpression()), !dbg !257
  %6 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !260
  call void @llvm.dbg.value(metadata i64* %6, metadata !261, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !262, metadata !DIExpression()), !dbg !263
  %7 = bitcast [4 x i64]* %3 to i8*, !dbg !263
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false), !dbg !263
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !264, metadata !DIExpression()), !dbg !265
  %8 = bitcast [4 x i64]* %4 to i8*, !dbg !265
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 32, i1 false), !dbg !265
  call void @llvm.dbg.declare(metadata [16 x i64]* %5, metadata !266, metadata !DIExpression()), !dbg !267
  %9 = bitcast [16 x i64]* %5 to i8*, !dbg !267
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 128, i1 false), !dbg !267
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !268
  %11 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0, !dbg !269
  call void @finv(i64* %10, i64* %6, i64* %11), !dbg !270
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !271
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !272
  %14 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0, !dbg !273
  call void @fmul0(i64* %12, i64* %13, i64* %1, i64* %14), !dbg !274
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !275
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !276
  call void @store_felem(i64* %15, i64* %16), !dbg !277
  br label %17, !dbg !278

17:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !279, metadata !DIExpression()), !dbg !281
  %18 = mul i32 0, 8, !dbg !282
  %19 = zext i32 %18 to i64, !dbg !282
  %20 = getelementptr inbounds i8, i8* %0, i64 %19, !dbg !282
  %21 = zext i32 0 to i64, !dbg !282
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %21, !dbg !282
  %23 = load i64, i64* %22, align 8, !dbg !282
  %24 = call i64 @__uint64_identity(i64 %23), !dbg !282
  call void @store64(i8* %20, i64 %24), !dbg !282
  %25 = add i32 0, 1, !dbg !282
  call void @llvm.dbg.value(metadata i32 %25, metadata !279, metadata !DIExpression()), !dbg !281
  %26 = mul i32 %25, 8, !dbg !284
  %27 = zext i32 %26 to i64, !dbg !284
  %28 = getelementptr inbounds i8, i8* %0, i64 %27, !dbg !284
  %29 = zext i32 %25 to i64, !dbg !284
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %29, !dbg !284
  %31 = load i64, i64* %30, align 8, !dbg !284
  %32 = call i64 @__uint64_identity(i64 %31), !dbg !284
  call void @store64(i8* %28, i64 %32), !dbg !284
  %33 = add i32 %25, 1, !dbg !284
  call void @llvm.dbg.value(metadata i32 %33, metadata !279, metadata !DIExpression()), !dbg !281
  %34 = mul i32 %33, 8, !dbg !286
  %35 = zext i32 %34 to i64, !dbg !286
  %36 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !286
  %37 = zext i32 %33 to i64, !dbg !286
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %37, !dbg !286
  %39 = load i64, i64* %38, align 8, !dbg !286
  %40 = call i64 @__uint64_identity(i64 %39), !dbg !286
  call void @store64(i8* %36, i64 %40), !dbg !286
  %41 = add i32 %33, 1, !dbg !286
  call void @llvm.dbg.value(metadata i32 %41, metadata !279, metadata !DIExpression()), !dbg !281
  %42 = mul i32 %41, 8, !dbg !288
  %43 = zext i32 %42 to i64, !dbg !288
  %44 = getelementptr inbounds i8, i8* %0, i64 %43, !dbg !288
  %45 = zext i32 %41 to i64, !dbg !288
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %45, !dbg !288
  %47 = load i64, i64* %46, align 8, !dbg !288
  %48 = call i64 @__uint64_identity(i64 %47), !dbg !288
  call void @store64(i8* %44, i64 %48), !dbg !288
  %49 = add i32 %41, 1, !dbg !288
  call void @llvm.dbg.value(metadata i32 %49, metadata !279, metadata !DIExpression()), !dbg !281
  br label %50, !dbg !290

50:                                               ; preds = %17
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind uwtable
define internal void @finv(i64* %0, i64* %1, i64* %2) #0 !dbg !292 {
  %4 = alloca [16 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64* %1, metadata !297, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64* %2, metadata !298, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata [16 x i64]* %4, metadata !299, metadata !DIExpression()), !dbg !300
  %5 = bitcast [16 x i64]* %4 to i8*, !dbg !300
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 128, i1 false), !dbg !300
  %6 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !301
  call void @llvm.dbg.value(metadata i64* %6, metadata !302, metadata !DIExpression()), !dbg !296
  %7 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !303
  %8 = getelementptr inbounds i64, i64* %7, i64 4, !dbg !304
  call void @llvm.dbg.value(metadata i64* %8, metadata !305, metadata !DIExpression()), !dbg !296
  %9 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !306
  %10 = getelementptr inbounds i64, i64* %9, i64 12, !dbg !307
  call void @llvm.dbg.value(metadata i64* %10, metadata !308, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64* %2, metadata !309, metadata !DIExpression()), !dbg !296
  call void @fsquare_times(i64* %6, i64* %1, i64* %2, i32 1), !dbg !310
  call void @fsquare_times(i64* %10, i64* %6, i64* %2, i32 2), !dbg !311
  call void @fmul0(i64* %8, i64* %10, i64* %1, i64* %2), !dbg !312
  call void @fmul0(i64* %6, i64* %8, i64* %6, i64* %2), !dbg !313
  call void @fsquare_times(i64* %10, i64* %6, i64* %2, i32 1), !dbg !314
  call void @fmul0(i64* %8, i64* %10, i64* %8, i64* %2), !dbg !315
  call void @fsquare_times(i64* %10, i64* %8, i64* %2, i32 5), !dbg !316
  call void @fmul0(i64* %8, i64* %10, i64* %8, i64* %2), !dbg !317
  %11 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !318
  %12 = getelementptr inbounds i64, i64* %11, i64 4, !dbg !319
  call void @llvm.dbg.value(metadata i64* %12, metadata !320, metadata !DIExpression()), !dbg !296
  %13 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !321
  %14 = getelementptr inbounds i64, i64* %13, i64 8, !dbg !322
  call void @llvm.dbg.value(metadata i64* %14, metadata !323, metadata !DIExpression()), !dbg !296
  %15 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !324
  %16 = getelementptr inbounds i64, i64* %15, i64 12, !dbg !325
  call void @llvm.dbg.value(metadata i64* %16, metadata !326, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64* %2, metadata !327, metadata !DIExpression()), !dbg !296
  call void @fsquare_times(i64* %16, i64* %12, i64* %2, i32 10), !dbg !328
  call void @fmul0(i64* %14, i64* %16, i64* %12, i64* %2), !dbg !329
  call void @fsquare_times(i64* %16, i64* %14, i64* %2, i32 20), !dbg !330
  call void @fmul0(i64* %16, i64* %16, i64* %14, i64* %2), !dbg !331
  call void @fsquare_times(i64* %16, i64* %16, i64* %2, i32 10), !dbg !332
  call void @fmul0(i64* %12, i64* %16, i64* %12, i64* %2), !dbg !333
  call void @fsquare_times(i64* %16, i64* %12, i64* %2, i32 50), !dbg !334
  call void @fmul0(i64* %14, i64* %16, i64* %12, i64* %2), !dbg !335
  %17 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !336
  %18 = getelementptr inbounds i64, i64* %17, i64 4, !dbg !337
  call void @llvm.dbg.value(metadata i64* %18, metadata !338, metadata !DIExpression()), !dbg !296
  %19 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !339
  %20 = getelementptr inbounds i64, i64* %19, i64 8, !dbg !340
  call void @llvm.dbg.value(metadata i64* %20, metadata !341, metadata !DIExpression()), !dbg !296
  %21 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !342
  %22 = getelementptr inbounds i64, i64* %21, i64 12, !dbg !343
  call void @llvm.dbg.value(metadata i64* %22, metadata !344, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i64* %2, metadata !345, metadata !DIExpression()), !dbg !296
  call void @fsquare_times(i64* %22, i64* %20, i64* %2, i32 100), !dbg !346
  call void @fmul0(i64* %22, i64* %22, i64* %20, i64* %2), !dbg !347
  call void @fsquare_times(i64* %22, i64* %22, i64* %2, i32 50), !dbg !348
  call void @fmul0(i64* %22, i64* %22, i64* %18, i64* %2), !dbg !349
  call void @fsquare_times(i64* %22, i64* %22, i64* %2, i32 5), !dbg !350
  %23 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !351
  call void @llvm.dbg.value(metadata i64* %23, metadata !352, metadata !DIExpression()), !dbg !296
  %24 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !353
  %25 = getelementptr inbounds i64, i64* %24, i64 12, !dbg !354
  call void @llvm.dbg.value(metadata i64* %25, metadata !355, metadata !DIExpression()), !dbg !296
  call void @fmul0(i64* %0, i64* %25, i64* %23, i64* %2), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul0(i64* %0, i64* %1, i64* %2, i64* %3) #0 !dbg !358 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i64* %1, metadata !363, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i64* %2, metadata !364, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i64* %3, metadata !365, metadata !DIExpression()), !dbg !362
  call void @fmul(i64* %0, i64* %1, i64* %2, i64* %3), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind uwtable
define internal void @store_felem(i64* %0, i64* %1) #0 !dbg !368 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64* %1, metadata !373, metadata !DIExpression()), !dbg !372
  %3 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !374
  %4 = load i64, i64* %3, align 8, !dbg !374
  call void @llvm.dbg.value(metadata i64 %4, metadata !375, metadata !DIExpression()), !dbg !372
  %5 = lshr i64 %4, 63, !dbg !376
  call void @llvm.dbg.value(metadata i64 %5, metadata !377, metadata !DIExpression()), !dbg !372
  %6 = and i64 %4, 9223372036854775807, !dbg !378
  %7 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !379
  store i64 %6, i64* %7, align 8, !dbg !380
  %8 = mul i64 19, %5, !dbg !381
  call void @add_scalar0(i64* %1, i64* %1, i64 %8), !dbg !382
  %9 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !383
  %10 = load i64, i64* %9, align 8, !dbg !383
  call void @llvm.dbg.value(metadata i64 %10, metadata !384, metadata !DIExpression()), !dbg !372
  %11 = lshr i64 %10, 63, !dbg !385
  call void @llvm.dbg.value(metadata i64 %11, metadata !386, metadata !DIExpression()), !dbg !372
  %12 = and i64 %10, 9223372036854775807, !dbg !387
  %13 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !388
  store i64 %12, i64* %13, align 8, !dbg !389
  %14 = mul i64 19, %11, !dbg !390
  call void @add_scalar0(i64* %1, i64* %1, i64 %14), !dbg !391
  %15 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !392
  %16 = load i64, i64* %15, align 8, !dbg !392
  call void @llvm.dbg.value(metadata i64 %16, metadata !393, metadata !DIExpression()), !dbg !372
  %17 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !394
  %18 = load i64, i64* %17, align 8, !dbg !394
  call void @llvm.dbg.value(metadata i64 %18, metadata !395, metadata !DIExpression()), !dbg !372
  %19 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !396
  %20 = load i64, i64* %19, align 8, !dbg !396
  call void @llvm.dbg.value(metadata i64 %20, metadata !397, metadata !DIExpression()), !dbg !372
  %21 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !398
  %22 = load i64, i64* %21, align 8, !dbg !398
  call void @llvm.dbg.value(metadata i64 %22, metadata !399, metadata !DIExpression()), !dbg !372
  %23 = call i64 @FStar_UInt64_gte_mask(i64 %16, i64 -19), !dbg !400
  call void @llvm.dbg.value(metadata i64 %23, metadata !401, metadata !DIExpression()), !dbg !372
  %24 = call i64 @FStar_UInt64_eq_mask(i64 %18, i64 -1), !dbg !402
  call void @llvm.dbg.value(metadata i64 %24, metadata !403, metadata !DIExpression()), !dbg !372
  %25 = call i64 @FStar_UInt64_eq_mask(i64 %20, i64 -1), !dbg !404
  call void @llvm.dbg.value(metadata i64 %25, metadata !405, metadata !DIExpression()), !dbg !372
  %26 = call i64 @FStar_UInt64_eq_mask(i64 %22, i64 9223372036854775807), !dbg !406
  call void @llvm.dbg.value(metadata i64 %26, metadata !407, metadata !DIExpression()), !dbg !372
  %27 = and i64 %23, %24, !dbg !408
  %28 = and i64 %27, %25, !dbg !409
  %29 = and i64 %28, %26, !dbg !410
  call void @llvm.dbg.value(metadata i64 %29, metadata !411, metadata !DIExpression()), !dbg !372
  %30 = and i64 %29, -19, !dbg !412
  %31 = sub i64 %16, %30, !dbg !413
  call void @llvm.dbg.value(metadata i64 %31, metadata !414, metadata !DIExpression()), !dbg !372
  %32 = sub i64 %18, %29, !dbg !415
  call void @llvm.dbg.value(metadata i64 %32, metadata !416, metadata !DIExpression()), !dbg !372
  %33 = sub i64 %20, %29, !dbg !417
  call void @llvm.dbg.value(metadata i64 %33, metadata !418, metadata !DIExpression()), !dbg !372
  %34 = and i64 %29, 9223372036854775807, !dbg !419
  %35 = sub i64 %22, %34, !dbg !420
  call void @llvm.dbg.value(metadata i64 %35, metadata !421, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %31, metadata !422, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %32, metadata !423, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %33, metadata !424, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %35, metadata !425, metadata !DIExpression()), !dbg !372
  %36 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !426
  store i64 %31, i64* %36, align 8, !dbg !427
  %37 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !428
  store i64 %32, i64* %37, align 8, !dbg !429
  %38 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !430
  store i64 %33, i64* %38, align 8, !dbg !431
  %39 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !432
  store i64 %35, i64* %39, align 8, !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind uwtable
define internal void @store64(i8* %0, i64 %1) #0 !dbg !435 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !438, metadata !DIExpression()), !dbg !439
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !440, metadata !DIExpression()), !dbg !441
  %4 = bitcast i64* %3 to i8*, !dbg !442
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 8 %4, i64 8, i1 false), !dbg !442
  ret void, !dbg !443
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @add_scalar0(i64* %0, i64* %1, i64 %2) #0 !dbg !444 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !447, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i64* %1, metadata !449, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i64 %2, metadata !450, metadata !DIExpression()), !dbg !448
  call void @add_scalar(i64* %0, i64* %1, i64 %2), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt64_gte_mask(i64 %0, i64 %1) #0 !dbg !453 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %1, metadata !459, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %0, metadata !460, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %1, metadata !461, metadata !DIExpression()), !dbg !458
  %3 = xor i64 %0, %1, !dbg !462
  call void @llvm.dbg.value(metadata i64 %3, metadata !463, metadata !DIExpression()), !dbg !458
  %4 = sub i64 %0, %1, !dbg !464
  call void @llvm.dbg.value(metadata i64 %4, metadata !465, metadata !DIExpression()), !dbg !458
  %5 = xor i64 %4, %1, !dbg !466
  call void @llvm.dbg.value(metadata i64 %5, metadata !467, metadata !DIExpression()), !dbg !458
  %6 = or i64 %3, %5, !dbg !468
  call void @llvm.dbg.value(metadata i64 %6, metadata !469, metadata !DIExpression()), !dbg !458
  %7 = xor i64 %0, %6, !dbg !470
  call void @llvm.dbg.value(metadata i64 %7, metadata !471, metadata !DIExpression()), !dbg !458
  %8 = lshr i64 %7, 63, !dbg !472
  call void @llvm.dbg.value(metadata i64 %8, metadata !473, metadata !DIExpression()), !dbg !458
  %9 = sub i64 %8, 1, !dbg !474
  ret i64 %9, !dbg !475
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt64_eq_mask(i64 %0, i64 %1) #0 !dbg !476 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i64 %1, metadata !479, metadata !DIExpression()), !dbg !478
  %3 = xor i64 %0, %1, !dbg !480
  call void @llvm.dbg.value(metadata i64 %3, metadata !481, metadata !DIExpression()), !dbg !478
  %4 = xor i64 %3, -1, !dbg !482
  %5 = add i64 %4, 1, !dbg !483
  call void @llvm.dbg.value(metadata i64 %5, metadata !484, metadata !DIExpression()), !dbg !478
  %6 = or i64 %3, %5, !dbg !485
  call void @llvm.dbg.value(metadata i64 %6, metadata !486, metadata !DIExpression()), !dbg !478
  %7 = lshr i64 %6, 63, !dbg !487
  call void @llvm.dbg.value(metadata i64 %7, metadata !488, metadata !DIExpression()), !dbg !478
  %8 = sub i64 %7, 1, !dbg !489
  ret i64 %8, !dbg !490
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_scalar(i64* %0, i64* %1, i64 %2) #0 !dbg !491 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i64* %1, metadata !495, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i64 %2, metadata !496, metadata !DIExpression()), !dbg !494
  %4 = call i64 asm sideeffect "  xor %r8d, %r8d;  xor %r9d, %r9d;  xor %r10d, %r10d;  xor %r11d, %r11d;  xor %eax, %eax;  addq 0($2), $0;  movq $0, 0($1);  adcxq 8($2), %r8;  movq %r8, 8($1);  adcxq 16($2), %r9;  movq %r9, 16($1);  adcxq 24($2), %r10;  movq %r10, 24($1);  adcx %r11, %rax;", "=&r,r,r,0,~{rax},~{r8},~{r9},~{r10},~{r11},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64 %2) #5, !dbg !497, !srcloc !498
  call void @llvm.dbg.value(metadata i64 %4, metadata !496, metadata !DIExpression()), !dbg !494
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul(i64* %0, i64* %1, i64* %2, i64* %3) #0 !dbg !500 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !501, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i64* %1, metadata !503, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i64* %2, metadata !504, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i64* %3, metadata !505, metadata !DIExpression()), !dbg !502
  %5 = call { i64*, i64*, i64* } asm sideeffect "  movq 0($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  movq %r8, 0($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  movq %r10, 8($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  mov $$0, %rax;  adox %rdx, %rax;  movq 8($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 8($2), %r8;  movq %r8, 8($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 16($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 16($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 16($2), %r8;  movq %r8, 16($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 24($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 24($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 24($2), %r8;  movq %r8, 24($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 32($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  movq %rbx, 40($2);  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  movq %r14, 48($2);  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq %rax, 56($2);  mov $2, $0;  mov $3, $2;  mov $$38, %rdx;  mulxq 32($0), %r8, %r13;  xor ${1:k}, ${1:k};  adoxq 0($0), %r8;  mulxq 40($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 8($0), %r9;  mulxq 48($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 16($0), %r10;  mulxq 56($0), %r11, %rax;  adcx %r13, %r11;  adoxq 24($0), %r11;  adcx $1, %rax;  adox $1, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx $1, %r9;  movq %r9, 8($2);  adcx $1, %r10;  movq %r10, 16($2);  adcx $1, %r11;  movq %r11, 24($2);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 0($2);", "=&r,=&r,=&r,r,0,1,2,~{rax},~{rbx},~{rdx},~{r8},~{r9},~{r10},~{r11},~{r13},~{r14},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2, i64* %3) #5, !dbg !506, !srcloc !507
  %6 = extractvalue { i64*, i64*, i64* } %5, 0, !dbg !506
  %7 = extractvalue { i64*, i64*, i64* } %5, 1, !dbg !506
  %8 = extractvalue { i64*, i64*, i64* } %5, 2, !dbg !506
  call void @llvm.dbg.value(metadata i64* %6, metadata !503, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i64* %7, metadata !504, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i64* %8, metadata !505, metadata !DIExpression()), !dbg !502
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsquare_times(i64* %0, i64* %1, i64* %2, i32 %3) #0 !dbg !509 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !512, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i64* %1, metadata !514, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i64* %2, metadata !515, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 %3, metadata !516, metadata !DIExpression()), !dbg !513
  call void @fsqr0(i64* %0, i64* %1, i64* %2), !dbg !517
  call void @llvm.dbg.value(metadata i32 0, metadata !518, metadata !DIExpression()), !dbg !520
  br label %5, !dbg !521

5:                                                ; preds = %9, %4
  %.0 = phi i32 [ 0, %4 ], [ %10, %9 ], !dbg !520
  call void @llvm.dbg.value(metadata i32 %.0, metadata !518, metadata !DIExpression()), !dbg !520
  %6 = sub i32 %3, 1, !dbg !522
  %7 = icmp ult i32 %.0, %6, !dbg !524
  br i1 %7, label %8, label %11, !dbg !525

8:                                                ; preds = %5
  call void @fsqr0(i64* %0, i64* %0, i64* %2), !dbg !526
  br label %9, !dbg !528

9:                                                ; preds = %8
  %10 = add i32 %.0, 1, !dbg !529
  call void @llvm.dbg.value(metadata i32 %10, metadata !518, metadata !DIExpression()), !dbg !520
  br label %5, !dbg !530, !llvm.loop !531

11:                                               ; preds = %5
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsqr0(i64* %0, i64* %1, i64* %2) #0 !dbg !534 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i64* %1, metadata !537, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i64* %2, metadata !538, metadata !DIExpression()), !dbg !536
  call void @fsqr(i64* %0, i64* %1, i64* %2), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsqr(i64* %0, i64* %1, i64* %2) #0 !dbg !541 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !542, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata i64* %1, metadata !544, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata i64* %2, metadata !545, metadata !DIExpression()), !dbg !543
  %4 = call { i64*, i64* } asm sideeffect "  movq 0($0), %rdx;  mulxq 8($0), %r8, %r14;  xor %r15d, %r15d;  mulxq 16($0), %r9, %r10;  adcx %r14, %r9;  mulxq 24($0), %rax, %rcx;  adcx %rax, %r10;  movq 24($0), %rdx;  mulxq 8($0), %r11, %rbx;  adcx %rcx, %r11;  mulxq 16($0), %rax, %r13;  adcx %rax, %rbx;  movq 8($0), %rdx;  adcx %r15, %r13;  mulxq 16($0), %rax, %rcx;  mov $$0, %r14;  xor %r15d, %r15d;  adox %rax, %r10;  adcx %r8, %r8;  adox %rcx, %r11;  adcx %r9, %r9;  adox %r15, %rbx;  adcx %r10, %r10;  adox %r15, %r13;  adcx %r11, %r11;  adox %r15, %r14;  adcx %rbx, %rbx;  adcx %r13, %r13;  adcx %r14, %r14;  movq 0($0), %rdx;  mulx %rdx, %rax, %rcx;  movq %rax, 0($1);  add %rcx, %r8;  movq %r8, 8($1);  movq 8($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r9;  movq %r9, 16($1);  adcx %rcx, %r10;  movq %r10, 24($1);  movq 16($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r11;  movq %r11, 32($1);  adcx %rcx, %rbx;  movq %rbx, 40($1);  movq 24($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r13;  movq %r13, 48($1);  adcx %rcx, %r14;  movq %r14, 56($1);  mov $1, $0;  mov $2, $1;  mov $$38, %rdx;  mulxq 32($0), %r8, %r13;  xor %ecx, %ecx;  adoxq 0($0), %r8;  mulxq 40($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 8($0), %r9;  mulxq 48($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 16($0), %r10;  mulxq 56($0), %r11, %rax;  adcx %r13, %r11;  adoxq 24($0), %r11;  adcx %rcx, %rax;  adox %rcx, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx %rcx, %r9;  movq %r9, 8($1);  adcx %rcx, %r10;  movq %r10, 16($1);  adcx %rcx, %r11;  movq %r11, 24($1);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 0($1);", "=&r,=&r,r,0,1,~{rax},~{rbx},~{rcx},~{rdx},~{r8},~{r9},~{r10},~{r11},~{r13},~{r14},~{r15},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2) #5, !dbg !546, !srcloc !547
  %5 = extractvalue { i64*, i64* } %4, 0, !dbg !546
  %6 = extractvalue { i64*, i64* } %4, 1, !dbg !546
  call void @llvm.dbg.value(metadata i64* %5, metadata !544, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata i64* %6, metadata !545, metadata !DIExpression()), !dbg !543
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind uwtable
define internal void @cswap20(i64 %0, i64* %1, i64* %2) #0 !dbg !549 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i64* %1, metadata !554, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i64* %2, metadata !555, metadata !DIExpression()), !dbg !553
  call void @cswap2(i64 %0, i64* %1, i64* %2), !dbg !556
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind uwtable
define internal void @point_add_and_double(i64* %0, i64* %1, i64* %2) #0 !dbg !558 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !559, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64* %1, metadata !561, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64* %2, metadata !562, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64* %1, metadata !563, metadata !DIExpression()), !dbg !560
  %4 = getelementptr inbounds i64, i64* %1, i64 8, !dbg !564
  call void @llvm.dbg.value(metadata i64* %4, metadata !565, metadata !DIExpression()), !dbg !560
  %5 = getelementptr inbounds i64, i64* %1, i64 16, !dbg !566
  call void @llvm.dbg.value(metadata i64* %5, metadata !567, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64* %0, metadata !568, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64* %1, metadata !569, metadata !DIExpression()), !dbg !560
  %6 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !570
  call void @llvm.dbg.value(metadata i64* %6, metadata !571, metadata !DIExpression()), !dbg !560
  %7 = getelementptr inbounds i64, i64* %4, i64 4, !dbg !572
  call void @llvm.dbg.value(metadata i64* %7, metadata !573, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64* %5, metadata !574, metadata !DIExpression()), !dbg !560
  %8 = getelementptr inbounds i64, i64* %5, i64 4, !dbg !575
  call void @llvm.dbg.value(metadata i64* %8, metadata !576, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64* %5, metadata !577, metadata !DIExpression()), !dbg !560
  %9 = getelementptr inbounds i64, i64* %5, i64 8, !dbg !578
  call void @llvm.dbg.value(metadata i64* %9, metadata !579, metadata !DIExpression()), !dbg !560
  call void @fadd0(i64* %5, i64* %1, i64* %6), !dbg !580
  call void @fsub0(i64* %8, i64* %1, i64* %6), !dbg !581
  call void @llvm.dbg.value(metadata i64* %4, metadata !582, metadata !DIExpression()), !dbg !560
  %10 = getelementptr inbounds i64, i64* %4, i64 4, !dbg !583
  call void @llvm.dbg.value(metadata i64* %10, metadata !584, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64* %9, metadata !585, metadata !DIExpression()), !dbg !560
  %11 = getelementptr inbounds i64, i64* %9, i64 4, !dbg !586
  call void @llvm.dbg.value(metadata i64* %11, metadata !587, metadata !DIExpression()), !dbg !560
  call void @fadd0(i64* %11, i64* %4, i64* %10), !dbg !588
  call void @fsub0(i64* %9, i64* %4, i64* %10), !dbg !589
  call void @fmul20(i64* %9, i64* %9, i64* %5, i64* %2), !dbg !590
  call void @fadd0(i64* %4, i64* %9, i64* %11), !dbg !591
  call void @fsub0(i64* %10, i64* %9, i64* %11), !dbg !592
  call void @llvm.dbg.value(metadata i64* %5, metadata !593, metadata !DIExpression()), !dbg !560
  %12 = getelementptr inbounds i64, i64* %5, i64 4, !dbg !594
  call void @llvm.dbg.value(metadata i64* %12, metadata !595, metadata !DIExpression()), !dbg !560
  %13 = getelementptr inbounds i64, i64* %5, i64 8, !dbg !596
  call void @llvm.dbg.value(metadata i64* %13, metadata !597, metadata !DIExpression()), !dbg !560
  %14 = getelementptr inbounds i64, i64* %5, i64 12, !dbg !598
  call void @llvm.dbg.value(metadata i64* %14, metadata !599, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64* %5, metadata !600, metadata !DIExpression()), !dbg !560
  %15 = getelementptr inbounds i64, i64* %5, i64 8, !dbg !601
  call void @llvm.dbg.value(metadata i64* %15, metadata !602, metadata !DIExpression()), !dbg !560
  call void @fsqr20(i64* %15, i64* %5, i64* %2), !dbg !603
  call void @fsqr20(i64* %4, i64* %4, i64* %2), !dbg !604
  %16 = getelementptr inbounds i64, i64* %14, i64 0, !dbg !605
  %17 = load i64, i64* %16, align 8, !dbg !605
  %18 = getelementptr inbounds i64, i64* %5, i64 0, !dbg !606
  store i64 %17, i64* %18, align 8, !dbg !607
  %19 = getelementptr inbounds i64, i64* %14, i64 1, !dbg !608
  %20 = load i64, i64* %19, align 8, !dbg !608
  %21 = getelementptr inbounds i64, i64* %5, i64 1, !dbg !609
  store i64 %20, i64* %21, align 8, !dbg !610
  %22 = getelementptr inbounds i64, i64* %14, i64 2, !dbg !611
  %23 = load i64, i64* %22, align 8, !dbg !611
  %24 = getelementptr inbounds i64, i64* %5, i64 2, !dbg !612
  store i64 %23, i64* %24, align 8, !dbg !613
  %25 = getelementptr inbounds i64, i64* %14, i64 3, !dbg !614
  %26 = load i64, i64* %25, align 8, !dbg !614
  %27 = getelementptr inbounds i64, i64* %5, i64 3, !dbg !615
  store i64 %26, i64* %27, align 8, !dbg !616
  call void @fsub0(i64* %14, i64* %13, i64* %14), !dbg !617
  call void @fmul_scalar0(i64* %12, i64* %14, i64 121665), !dbg !618
  call void @fadd0(i64* %12, i64* %12, i64* %13), !dbg !619
  call void @fmul20(i64* %1, i64* %15, i64* %5, i64* %2), !dbg !620
  call void @fmul0(i64* %7, i64* %7, i64* %0, i64* %2), !dbg !621
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind uwtable
define internal void @point_double(i64* %0, i64* %1, i64* %2) #0 !dbg !623 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !624, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64* %1, metadata !626, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64* %2, metadata !627, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64* %0, metadata !628, metadata !DIExpression()), !dbg !625
  %4 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !629
  call void @llvm.dbg.value(metadata i64* %4, metadata !630, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64* %1, metadata !631, metadata !DIExpression()), !dbg !625
  %5 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !632
  call void @llvm.dbg.value(metadata i64* %5, metadata !633, metadata !DIExpression()), !dbg !625
  %6 = getelementptr inbounds i64, i64* %1, i64 8, !dbg !634
  call void @llvm.dbg.value(metadata i64* %6, metadata !635, metadata !DIExpression()), !dbg !625
  %7 = getelementptr inbounds i64, i64* %1, i64 12, !dbg !636
  call void @llvm.dbg.value(metadata i64* %7, metadata !637, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64* %1, metadata !638, metadata !DIExpression()), !dbg !625
  %8 = getelementptr inbounds i64, i64* %1, i64 8, !dbg !639
  call void @llvm.dbg.value(metadata i64* %8, metadata !640, metadata !DIExpression()), !dbg !625
  call void @fadd0(i64* %1, i64* %0, i64* %4), !dbg !641
  call void @fsub0(i64* %5, i64* %0, i64* %4), !dbg !642
  call void @fsqr20(i64* %8, i64* %1, i64* %2), !dbg !643
  %9 = getelementptr inbounds i64, i64* %7, i64 0, !dbg !644
  %10 = load i64, i64* %9, align 8, !dbg !644
  %11 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !645
  store i64 %10, i64* %11, align 8, !dbg !646
  %12 = getelementptr inbounds i64, i64* %7, i64 1, !dbg !647
  %13 = load i64, i64* %12, align 8, !dbg !647
  %14 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !648
  store i64 %13, i64* %14, align 8, !dbg !649
  %15 = getelementptr inbounds i64, i64* %7, i64 2, !dbg !650
  %16 = load i64, i64* %15, align 8, !dbg !650
  %17 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !651
  store i64 %16, i64* %17, align 8, !dbg !652
  %18 = getelementptr inbounds i64, i64* %7, i64 3, !dbg !653
  %19 = load i64, i64* %18, align 8, !dbg !653
  %20 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !654
  store i64 %19, i64* %20, align 8, !dbg !655
  call void @fsub0(i64* %7, i64* %6, i64* %7), !dbg !656
  call void @fmul_scalar0(i64* %5, i64* %7, i64 121665), !dbg !657
  call void @fadd0(i64* %5, i64* %5, i64* %6), !dbg !658
  call void @fmul20(i64* %0, i64* %8, i64* %1, i64* %2), !dbg !659
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind uwtable
define internal void @fadd0(i64* %0, i64* %1, i64* %2) #0 !dbg !661 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !662, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i64* %1, metadata !664, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i64* %2, metadata !665, metadata !DIExpression()), !dbg !663
  call void @fadd(i64* %0, i64* %1, i64* %2), !dbg !666
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsub0(i64* %0, i64* %1, i64* %2) #0 !dbg !668 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !669, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i64* %1, metadata !671, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i64* %2, metadata !672, metadata !DIExpression()), !dbg !670
  call void @fsub(i64* %0, i64* %1, i64* %2), !dbg !673
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsqr20(i64* %0, i64* %1, i64* %2) #0 !dbg !675 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !676, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i64* %1, metadata !678, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i64* %2, metadata !679, metadata !DIExpression()), !dbg !677
  call void @fsqr2(i64* %0, i64* %1, i64* %2), !dbg !680
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul_scalar0(i64* %0, i64* %1, i64 %2) #0 !dbg !682 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !683, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i64* %1, metadata !685, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i64 %2, metadata !686, metadata !DIExpression()), !dbg !684
  call void @fmul_scalar(i64* %0, i64* %1, i64 %2), !dbg !687
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul20(i64* %0, i64* %1, i64* %2, i64* %3) #0 !dbg !689 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !690, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i64* %1, metadata !692, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i64* %2, metadata !693, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i64* %3, metadata !694, metadata !DIExpression()), !dbg !691
  call void @fmul2(i64* %0, i64* %1, i64* %2, i64* %3), !dbg !695
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul2(i64* %0, i64* %1, i64* %2, i64* %3) #0 !dbg !697 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !698, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i64* %1, metadata !700, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i64* %2, metadata !701, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i64* %3, metadata !702, metadata !DIExpression()), !dbg !699
  %5 = call { i64*, i64*, i64* } asm sideeffect "  movq 0($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  movq %r8, 0($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  movq %r10, 8($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  mov $$0, %rax;  adox %rdx, %rax;  movq 8($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 8($2), %r8;  movq %r8, 8($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 16($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 16($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 16($2), %r8;  movq %r8, 16($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 24($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 24($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 24($2), %r8;  movq %r8, 24($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 32($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  movq %rbx, 40($2);  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  movq %r14, 48($2);  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq %rax, 56($2);  movq 32($0), %rdx;  mulxq 32($1), %r8, %r9;  xor %r10d, %r10d;  movq %r8, 64($2);  mulxq 40($1), %r10, %r11;  adox %r9, %r10;  movq %r10, 72($2);  mulxq 48($1), %rbx, %r13;  adox %r11, %rbx;  mulxq 56($1), %r14, %rdx;  adox %r13, %r14;  mov $$0, %rax;  adox %rdx, %rax;  movq 40($0), %rdx;  mulxq 32($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 72($2), %r8;  movq %r8, 72($2);  mulxq 40($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 80($2);  mulxq 48($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 56($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 48($0), %rdx;  mulxq 32($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 80($2), %r8;  movq %r8, 80($2);  mulxq 40($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 88($2);  mulxq 48($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 56($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 56($0), %rdx;  mulxq 32($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 88($2), %r8;  movq %r8, 88($2);  mulxq 40($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 96($2);  mulxq 48($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  movq %rbx, 104($2);  mov $$0, %r8;  mulxq 56($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  movq %r14, 112($2);  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq %rax, 120($2);  mov $2, $0;  mov $3, $2;  mov $$38, %rdx;  mulxq 32($0), %r8, %r13;  xor ${1:k}, ${1:k};  adoxq 0($0), %r8;  mulxq 40($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 8($0), %r9;  mulxq 48($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 16($0), %r10;  mulxq 56($0), %r11, %rax;  adcx %r13, %r11;  adoxq 24($0), %r11;  adcx $1, %rax;  adox $1, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx $1, %r9;  movq %r9, 8($2);  adcx $1, %r10;  movq %r10, 16($2);  adcx $1, %r11;  movq %r11, 24($2);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 0($2);  mov $$38, %rdx;  mulxq 96($0), %r8, %r13;  xor ${1:k}, ${1:k};  adoxq 64($0), %r8;  mulxq 104($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 72($0), %r9;  mulxq 112($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 80($0), %r10;  mulxq 120($0), %r11, %rax;  adcx %r13, %r11;  adoxq 88($0), %r11;  adcx $1, %rax;  adox $1, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx $1, %r9;  movq %r9, 40($2);  adcx $1, %r10;  movq %r10, 48($2);  adcx $1, %r11;  movq %r11, 56($2);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 32($2);", "=&r,=&r,=&r,r,0,1,2,~{rax},~{rbx},~{rdx},~{r8},~{r9},~{r10},~{r11},~{r13},~{r14},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2, i64* %3) #5, !dbg !703, !srcloc !704
  %6 = extractvalue { i64*, i64*, i64* } %5, 0, !dbg !703
  %7 = extractvalue { i64*, i64*, i64* } %5, 1, !dbg !703
  %8 = extractvalue { i64*, i64*, i64* } %5, 2, !dbg !703
  call void @llvm.dbg.value(metadata i64* %6, metadata !700, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i64* %7, metadata !701, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i64* %8, metadata !702, metadata !DIExpression()), !dbg !699
  ret void, !dbg !705
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul_scalar(i64* %0, i64* %1, i64 %2) #0 !dbg !706 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !707, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64* %1, metadata !709, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64 %2, metadata !710, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64 %2, metadata !711, metadata !DIExpression()), !dbg !708
  %4 = call i64 asm sideeffect "  mulxq 0($2), %r8, %rcx;  mulxq 8($2), %r9, %rbx;  add %rcx, %r9;  mov $$0, %rcx;  mulxq 16($2), %r10, %r13;  adcx %rbx, %r10;  mulxq 24($2), %r11, %rax;  adcx %r13, %r11;  adcx %rcx, %rax;  mov $$38, %rdx;  imul %rdx, %rax;  add %rax, %r8;  adcx %rcx, %r9;  movq %r9, 8($1);  adcx %rcx, %r10;  movq %r10, 16($1);  adcx %rcx, %r11;  movq %r11, 24($1);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 0($1);", "=&{rdx},r,r,0,~{rax},~{rbx},~{rcx},~{r8},~{r9},~{r10},~{r11},~{r13},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64 %2) #5, !dbg !712, !srcloc !713
  call void @llvm.dbg.value(metadata i64 %4, metadata !711, metadata !DIExpression()), !dbg !708
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsqr2(i64* %0, i64* %1, i64* %2) #0 !dbg !715 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !716, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64* %1, metadata !718, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64* %2, metadata !719, metadata !DIExpression()), !dbg !717
  %4 = call { i64*, i64* } asm sideeffect "  movq 0($0), %rdx;  mulxq 8($0), %r8, %r14;  xor %r15d, %r15d;  mulxq 16($0), %r9, %r10;  adcx %r14, %r9;  mulxq 24($0), %rax, %rcx;  adcx %rax, %r10;  movq 24($0), %rdx;  mulxq 8($0), %r11, %rbx;  adcx %rcx, %r11;  mulxq 16($0), %rax, %r13;  adcx %rax, %rbx;  movq 8($0), %rdx;  adcx %r15, %r13;  mulxq 16($0), %rax, %rcx;  mov $$0, %r14;  xor %r15d, %r15d;  adox %rax, %r10;  adcx %r8, %r8;  adox %rcx, %r11;  adcx %r9, %r9;  adox %r15, %rbx;  adcx %r10, %r10;  adox %r15, %r13;  adcx %r11, %r11;  adox %r15, %r14;  adcx %rbx, %rbx;  adcx %r13, %r13;  adcx %r14, %r14;  movq 0($0), %rdx;  mulx %rdx, %rax, %rcx;  movq %rax, 0($1);  add %rcx, %r8;  movq %r8, 8($1);  movq 8($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r9;  movq %r9, 16($1);  adcx %rcx, %r10;  movq %r10, 24($1);  movq 16($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r11;  movq %r11, 32($1);  adcx %rcx, %rbx;  movq %rbx, 40($1);  movq 24($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r13;  movq %r13, 48($1);  adcx %rcx, %r14;  movq %r14, 56($1);  movq 32($0), %rdx;  mulxq 40($0), %r8, %r14;  xor %r15d, %r15d;  mulxq 48($0), %r9, %r10;  adcx %r14, %r9;  mulxq 56($0), %rax, %rcx;  adcx %rax, %r10;  movq 56($0), %rdx;  mulxq 40($0), %r11, %rbx;  adcx %rcx, %r11;  mulxq 48($0), %rax, %r13;  adcx %rax, %rbx;  movq 40($0), %rdx;  adcx %r15, %r13;  mulxq 48($0), %rax, %rcx;  mov $$0, %r14;  xor %r15d, %r15d;  adox %rax, %r10;  adcx %r8, %r8;  adox %rcx, %r11;  adcx %r9, %r9;  adox %r15, %rbx;  adcx %r10, %r10;  adox %r15, %r13;  adcx %r11, %r11;  adox %r15, %r14;  adcx %rbx, %rbx;  adcx %r13, %r13;  adcx %r14, %r14;  movq 32($0), %rdx;  mulx %rdx, %rax, %rcx;  movq %rax, 64($1);  add %rcx, %r8;  movq %r8, 72($1);  movq 40($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r9;  movq %r9, 80($1);  adcx %rcx, %r10;  movq %r10, 88($1);  movq 48($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r11;  movq %r11, 96($1);  adcx %rcx, %rbx;  movq %rbx, 104($1);  movq 56($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r13;  movq %r13, 112($1);  adcx %rcx, %r14;  movq %r14, 120($1);  mov $1, $0;  mov $2, $1;  mov $$38, %rdx;  mulxq 32($0), %r8, %r13;  xor %ecx, %ecx;  adoxq 0($0), %r8;  mulxq 40($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 8($0), %r9;  mulxq 48($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 16($0), %r10;  mulxq 56($0), %r11, %rax;  adcx %r13, %r11;  adoxq 24($0), %r11;  adcx %rcx, %rax;  adox %rcx, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx %rcx, %r9;  movq %r9, 8($1);  adcx %rcx, %r10;  movq %r10, 16($1);  adcx %rcx, %r11;  movq %r11, 24($1);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 0($1);  mov $$38, %rdx;  mulxq 96($0), %r8, %r13;  xor %ecx, %ecx;  adoxq 64($0), %r8;  mulxq 104($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 72($0), %r9;  mulxq 112($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 80($0), %r10;  mulxq 120($0), %r11, %rax;  adcx %r13, %r11;  adoxq 88($0), %r11;  adcx %rcx, %rax;  adox %rcx, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx %rcx, %r9;  movq %r9, 40($1);  adcx %rcx, %r10;  movq %r10, 48($1);  adcx %rcx, %r11;  movq %r11, 56($1);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 32($1);", "=&r,=&r,r,0,1,~{rax},~{rbx},~{rcx},~{rdx},~{r8},~{r9},~{r10},~{r11},~{r13},~{r14},~{r15},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2) #5, !dbg !720, !srcloc !721
  %5 = extractvalue { i64*, i64* } %4, 0, !dbg !720
  %6 = extractvalue { i64*, i64* } %4, 1, !dbg !720
  call void @llvm.dbg.value(metadata i64* %5, metadata !718, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64* %6, metadata !719, metadata !DIExpression()), !dbg !717
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsub(i64* %0, i64* %1, i64* %2) #0 !dbg !723 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !724, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64* %1, metadata !726, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64* %2, metadata !727, metadata !DIExpression()), !dbg !725
  call void asm sideeffect "  movq 0($1), %r8;  subq 0($2), %r8;  movq 8($1), %r9;  sbbq 8($2), %r9;  movq 16($1), %r10;  sbbq 16($2), %r10;  movq 24($1), %r11;  sbbq 24($2), %r11;  mov $$0, %rax;  mov $$38, %rcx;  cmovc %rcx, %rax;  sub %rax, %r8;  sbb $$0, %r9;  sbb $$0, %r10;  sbb $$0, %r11;  mov $$0, %rax;  cmovc %rcx, %rax;  sub %rax, %r8;  movq %r8, 0($0);  movq %r9, 8($0);  movq %r10, 16($0);  movq %r11, 24($0);", "r,r,r,~{rax},~{rcx},~{r8},~{r9},~{r10},~{r11},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2) #5, !dbg !728, !srcloc !729
  ret void, !dbg !730
}

; Function Attrs: noinline nounwind uwtable
define internal void @fadd(i64* %0, i64* %1, i64* %2) #0 !dbg !731 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !732, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i64* %1, metadata !734, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i64* %2, metadata !735, metadata !DIExpression()), !dbg !733
  %4 = call i64* asm sideeffect "  movq 0($0), %r8;  addq 0($2), %r8;  movq 8($0), %r9;  adcxq 8($2), %r9;  movq 16($0), %r10;  adcxq 16($2), %r10;  movq 24($0), %r11;  adcxq 24($2), %r11;  mov $$0, %rax;  mov $$38, $0;  cmovc $0, %rax;  xor %ecx, %ecx;  add %rax, %r8;  adcx %rcx, %r9;  movq %r9, 8($1);  adcx %rcx, %r10;  movq %r10, 16($1);  adcx %rcx, %r11;  movq %r11, 24($1);  mov $$0, %rax;  cmovc $0, %rax;  add %rax, %r8;  movq %r8, 0($1);", "=&r,r,r,0,~{rax},~{rcx},~{r8},~{r9},~{r10},~{r11},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2) #5, !dbg !736, !srcloc !737
  call void @llvm.dbg.value(metadata i64* %4, metadata !735, metadata !DIExpression()), !dbg !733
  ret void, !dbg !738
}

; Function Attrs: noinline nounwind uwtable
define internal void @cswap2(i64 %0, i64* %1, i64* %2) #0 !dbg !739 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !740, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i64* %1, metadata !742, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i64* %2, metadata !743, metadata !DIExpression()), !dbg !741
  %4 = call i64 asm sideeffect "  add $$18446744073709551615, $0;  movq 0($1), %r8;  movq 0($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 0($1);  movq %r9, 0($2);  movq 8($1), %r8;  movq 8($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 8($1);  movq %r9, 8($2);  movq 16($1), %r8;  movq 16($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 16($1);  movq %r9, 16($2);  movq 24($1), %r8;  movq 24($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 24($1);  movq %r9, 24($2);  movq 32($1), %r8;  movq 32($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 32($1);  movq %r9, 32($2);  movq 40($1), %r8;  movq 40($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 40($1);  movq %r9, 40($2);  movq 48($1), %r8;  movq 48($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 48($1);  movq %r9, 48($2);  movq 56($1), %r8;  movq 56($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 56($1);  movq %r9, 56($2);", "=&r,r,r,0,~{r8},~{r9},~{r10},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %1, i64* %2, i64 %0) #5, !dbg !744, !srcloc !745
  call void @llvm.dbg.value(metadata i64 %4, metadata !740, metadata !DIExpression()), !dbg !741
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_64_secret_to_public(i8* %0, i8* %1) #0 !dbg !747 {
  %3 = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !750, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i8* %1, metadata !752, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !753, metadata !DIExpression()), !dbg !755
  %4 = bitcast [32 x i8]* %3 to i8*, !dbg !755
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 32, i1 false), !dbg !755
  call void @llvm.dbg.value(metadata i32 0, metadata !756, metadata !DIExpression()), !dbg !758
  br label %5, !dbg !759

5:                                                ; preds = %14, %2
  %.0 = phi i32 [ 0, %2 ], [ %15, %14 ], !dbg !758
  call void @llvm.dbg.value(metadata i32 %.0, metadata !756, metadata !DIExpression()), !dbg !758
  %6 = icmp ult i32 %.0, 32, !dbg !760
  br i1 %6, label %7, label %16, !dbg !762

7:                                                ; preds = %5
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !763
  call void @llvm.dbg.value(metadata i8* %8, metadata !765, metadata !DIExpression()), !dbg !766
  %9 = zext i32 %.0 to i64, !dbg !767
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ i8, [31 x i8] }>* @g25519 to [32 x i8]*), i64 0, i64 %9, !dbg !767
  %11 = load i8, i8* %10, align 1, !dbg !767
  call void @llvm.dbg.value(metadata i8 %11, metadata !768, metadata !DIExpression()), !dbg !766
  %12 = zext i32 %.0 to i64, !dbg !769
  %13 = getelementptr inbounds i8, i8* %8, i64 %12, !dbg !769
  store i8 %11, i8* %13, align 1, !dbg !770
  br label %14, !dbg !771

14:                                               ; preds = %7
  %15 = add i32 %.0, 1, !dbg !772
  call void @llvm.dbg.value(metadata i32 %15, metadata !756, metadata !DIExpression()), !dbg !758
  br label %5, !dbg !773, !llvm.loop !774

16:                                               ; preds = %5
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !776
  call void @Hacl_Curve25519_64_scalarmult(i8* %0, i8* %1, i8* %17), !dbg !777
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Hacl_Curve25519_64_ecdh(i8* %0, i8* %1, i8* %2) #0 !dbg !779 {
  %4 = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !783, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8* %1, metadata !785, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i8* %2, metadata !786, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !787, metadata !DIExpression()), !dbg !788
  %5 = bitcast [32 x i8]* %4 to i8*, !dbg !788
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 32, i1 false), !dbg !788
  call void @Hacl_Curve25519_64_scalarmult(i8* %0, i8* %1, i8* %2), !dbg !789
  call void @llvm.dbg.value(metadata i8 -1, metadata !790, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata i32 0, metadata !791, metadata !DIExpression()), !dbg !793
  br label %6, !dbg !794

6:                                                ; preds = %20, %3
  %.01 = phi i8 [ -1, %3 ], [ %19, %20 ], !dbg !784
  %.0 = phi i32 [ 0, %3 ], [ %21, %20 ], !dbg !793
  call void @llvm.dbg.value(metadata i32 %.0, metadata !791, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i8 %.01, metadata !790, metadata !DIExpression()), !dbg !784
  %7 = icmp ult i32 %.0, 32, !dbg !795
  br i1 %7, label %8, label %22, !dbg !797

8:                                                ; preds = %6
  %9 = zext i32 %.0 to i64, !dbg !798
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !798
  %11 = load i8, i8* %10, align 1, !dbg !798
  %12 = zext i32 %.0 to i64, !dbg !800
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %12, !dbg !800
  %14 = load i8, i8* %13, align 1, !dbg !800
  %15 = call zeroext i8 @FStar_UInt8_eq_mask(i8 zeroext %11, i8 zeroext %14), !dbg !801
  call void @llvm.dbg.value(metadata i8 %15, metadata !802, metadata !DIExpression()), !dbg !803
  %16 = zext i8 %15 to i32, !dbg !804
  %17 = zext i8 %.01 to i32, !dbg !805
  %18 = and i32 %16, %17, !dbg !806
  %19 = trunc i32 %18 to i8, !dbg !804
  call void @llvm.dbg.value(metadata i8 %19, metadata !790, metadata !DIExpression()), !dbg !784
  br label %20, !dbg !807

20:                                               ; preds = %8
  %21 = add i32 %.0, 1, !dbg !808
  call void @llvm.dbg.value(metadata i32 %21, metadata !791, metadata !DIExpression()), !dbg !793
  br label %6, !dbg !809, !llvm.loop !810

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8 %.01, metadata !812, metadata !DIExpression()), !dbg !784
  %23 = zext i8 %.01 to i32, !dbg !813
  %24 = icmp eq i32 %23, 255, !dbg !814
  %25 = zext i1 %24 to i8, !dbg !815
  call void @llvm.dbg.value(metadata i8 %25, metadata !816, metadata !DIExpression()), !dbg !784
  %26 = trunc i8 %25 to i1, !dbg !817
  %27 = xor i1 %26, true, !dbg !818
  ret i1 %27, !dbg !819
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @FStar_UInt8_eq_mask(i8 zeroext %0, i8 zeroext %1) #0 !dbg !820 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !823, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i8 %1, metadata !825, metadata !DIExpression()), !dbg !824
  %3 = zext i8 %0 to i32, !dbg !826
  %4 = zext i8 %1 to i32, !dbg !827
  %5 = xor i32 %3, %4, !dbg !828
  %6 = trunc i32 %5 to i8, !dbg !826
  call void @llvm.dbg.value(metadata i8 %6, metadata !829, metadata !DIExpression()), !dbg !824
  %7 = zext i8 %6 to i32, !dbg !830
  %8 = xor i32 %7, -1, !dbg !831
  %9 = add nsw i32 %8, 1, !dbg !832
  %10 = trunc i32 %9 to i8, !dbg !831
  call void @llvm.dbg.value(metadata i8 %10, metadata !833, metadata !DIExpression()), !dbg !824
  %11 = zext i8 %6 to i32, !dbg !834
  %12 = zext i8 %10 to i32, !dbg !835
  %13 = or i32 %11, %12, !dbg !836
  %14 = trunc i32 %13 to i8, !dbg !834
  call void @llvm.dbg.value(metadata i8 %14, metadata !837, metadata !DIExpression()), !dbg !824
  %15 = zext i8 %14 to i32, !dbg !838
  %16 = ashr i32 %15, 7, !dbg !839
  %17 = trunc i32 %16 to i8, !dbg !838
  call void @llvm.dbg.value(metadata i8 %17, metadata !840, metadata !DIExpression()), !dbg !824
  %18 = zext i8 %17 to i32, !dbg !841
  %19 = sub nsw i32 %18, 1, !dbg !842
  %20 = trunc i32 %19 to i8, !dbg !841
  ret i8 %20, !dbg !843
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_64_ecdh_wrapper(i8* %0, i8* %1, i8* %2) #0 !dbg !844 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !845, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i8* %1, metadata !847, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i8* %2, metadata !848, metadata !DIExpression()), !dbg !846
  %4 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !849
  call void @public_in(%struct.smack_value* %4), !dbg !850
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !851
  call void @public_in(%struct.smack_value* %5), !dbg !852
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !853
  call void @public_in(%struct.smack_value* %6), !dbg !854
  %7 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !855
  call void @public_in(%struct.smack_value* %7), !dbg !856
  %8 = call zeroext i1 @Hacl_Curve25519_64_ecdh(i8* %0, i8* %1, i8* %2), !dbg !857
  ret void, !dbg !858
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_64_ecdh_wrapper_t() #0 !dbg !859 {
  %1 = call i8* (...) @getpt1(), !dbg !862
  call void @llvm.dbg.value(metadata i8* %1, metadata !863, metadata !DIExpression()), !dbg !864
  %2 = call i8* (...) @getpt2(), !dbg !865
  call void @llvm.dbg.value(metadata i8* %2, metadata !866, metadata !DIExpression()), !dbg !864
  %3 = call i8* (...) @getpt3(), !dbg !867
  call void @llvm.dbg.value(metadata i8* %3, metadata !868, metadata !DIExpression()), !dbg !864
  %4 = call zeroext i1 @Hacl_Curve25519_64_ecdh(i8* %3, i8* %2, i8* %1), !dbg !869
  ret void, !dbg !870
}

declare dso_local i8* @getpt1(...) #4

declare dso_local i8* @getpt2(...) #4

declare dso_local i8* @getpt3(...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2, !22}
!llvm.ident = !{!24, !24}
!llvm.module.flags = !{!25, !26, !27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g25519", scope: !2, file: !3, line: 114, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../hacl-star/dist/gcc-compatible/Hacl_Curve25519_64.c", directory: "/home/luwei/bech-back/HACL/Curve25519-64")
!4 = !{}
!5 = !{!6, !11, !14}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !13)
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !{!0}
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !20)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!20 = !{!21}
!21 = !DISubrange(count: 32)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "Hacl_Curve25519_64_ecdh.c", directory: "/home/luwei/bech-back/HACL/Curve25519-64")
!24 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = distinct !DISubprogram(name: "Hacl_Curve25519_64_scalarmult", scope: !3, file: !3, line: 343, type: !29, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!32 = !DILocalVariable(name: "out", arg: 1, scope: !28, file: !3, line: 343, type: !31)
!33 = !DILocation(line: 0, scope: !28)
!34 = !DILocalVariable(name: "priv", arg: 2, scope: !28, file: !3, line: 343, type: !31)
!35 = !DILocalVariable(name: "pub", arg: 3, scope: !28, file: !3, line: 343, type: !31)
!36 = !DILocalVariable(name: "init", scope: !28, file: !3, line: 345, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 8)
!40 = !DILocation(line: 345, column: 12, scope: !28)
!41 = !DILocalVariable(name: "tmp", scope: !28, file: !3, line: 346, type: !42)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 4)
!45 = !DILocation(line: 346, column: 12, scope: !28)
!46 = !DILocation(line: 347, column: 3, scope: !28)
!47 = !DILocalVariable(name: "i", scope: !48, file: !3, line: 347, type: !6)
!48 = distinct !DILexicalBlock(scope: !28, file: !3, line: 347, column: 3)
!49 = !DILocation(line: 0, scope: !48)
!50 = !DILocation(line: 347, column: 3, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !3, line: 347, column: 3)
!52 = !DILocalVariable(name: "os", scope: !51, file: !3, line: 347, type: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!54 = !DILocation(line: 0, scope: !51)
!55 = !DILocalVariable(name: "bj", scope: !51, file: !3, line: 347, type: !31)
!56 = !DILocalVariable(name: "u", scope: !51, file: !3, line: 347, type: !11)
!57 = !DILocalVariable(name: "r", scope: !51, file: !3, line: 347, type: !11)
!58 = !DILocalVariable(name: "x", scope: !51, file: !3, line: 347, type: !11)
!59 = !DILocation(line: 347, column: 3, scope: !60)
!60 = distinct !DILexicalBlock(scope: !48, file: !3, line: 347, column: 3)
!61 = !DILocalVariable(name: "os", scope: !60, file: !3, line: 347, type: !53)
!62 = !DILocation(line: 0, scope: !60)
!63 = !DILocalVariable(name: "bj", scope: !60, file: !3, line: 347, type: !31)
!64 = !DILocalVariable(name: "u", scope: !60, file: !3, line: 347, type: !11)
!65 = !DILocalVariable(name: "r", scope: !60, file: !3, line: 347, type: !11)
!66 = !DILocalVariable(name: "x", scope: !60, file: !3, line: 347, type: !11)
!67 = !DILocation(line: 347, column: 3, scope: !68)
!68 = distinct !DILexicalBlock(scope: !48, file: !3, line: 347, column: 3)
!69 = !DILocalVariable(name: "os", scope: !68, file: !3, line: 347, type: !53)
!70 = !DILocation(line: 0, scope: !68)
!71 = !DILocalVariable(name: "bj", scope: !68, file: !3, line: 347, type: !31)
!72 = !DILocalVariable(name: "u", scope: !68, file: !3, line: 347, type: !11)
!73 = !DILocalVariable(name: "r", scope: !68, file: !3, line: 347, type: !11)
!74 = !DILocalVariable(name: "x", scope: !68, file: !3, line: 347, type: !11)
!75 = !DILocation(line: 347, column: 3, scope: !76)
!76 = distinct !DILexicalBlock(scope: !48, file: !3, line: 347, column: 3)
!77 = !DILocalVariable(name: "os", scope: !76, file: !3, line: 347, type: !53)
!78 = !DILocation(line: 0, scope: !76)
!79 = !DILocalVariable(name: "bj", scope: !76, file: !3, line: 347, type: !31)
!80 = !DILocalVariable(name: "u", scope: !76, file: !3, line: 347, type: !11)
!81 = !DILocalVariable(name: "r", scope: !76, file: !3, line: 347, type: !11)
!82 = !DILocalVariable(name: "x", scope: !76, file: !3, line: 347, type: !11)
!83 = !DILocation(line: 347, column: 3, scope: !48)
!84 = !DILocation(line: 357, column: 19, scope: !28)
!85 = !DILocalVariable(name: "tmp3", scope: !28, file: !3, line: 357, type: !11)
!86 = !DILocation(line: 358, column: 18, scope: !28)
!87 = !DILocation(line: 358, column: 3, scope: !28)
!88 = !DILocation(line: 358, column: 11, scope: !28)
!89 = !DILocation(line: 359, column: 17, scope: !28)
!90 = !DILocalVariable(name: "x", scope: !28, file: !3, line: 359, type: !53)
!91 = !DILocation(line: 360, column: 17, scope: !28)
!92 = !DILocation(line: 360, column: 22, scope: !28)
!93 = !DILocalVariable(name: "z", scope: !28, file: !3, line: 360, type: !53)
!94 = !DILocation(line: 361, column: 3, scope: !28)
!95 = !DILocation(line: 361, column: 9, scope: !28)
!96 = !DILocation(line: 362, column: 3, scope: !28)
!97 = !DILocation(line: 362, column: 9, scope: !28)
!98 = !DILocation(line: 363, column: 3, scope: !28)
!99 = !DILocation(line: 363, column: 9, scope: !28)
!100 = !DILocation(line: 364, column: 3, scope: !28)
!101 = !DILocation(line: 364, column: 9, scope: !28)
!102 = !DILocation(line: 365, column: 11, scope: !28)
!103 = !DILocation(line: 365, column: 3, scope: !28)
!104 = !DILocation(line: 365, column: 9, scope: !28)
!105 = !DILocation(line: 366, column: 11, scope: !28)
!106 = !DILocation(line: 366, column: 3, scope: !28)
!107 = !DILocation(line: 366, column: 9, scope: !28)
!108 = !DILocation(line: 367, column: 11, scope: !28)
!109 = !DILocation(line: 367, column: 3, scope: !28)
!110 = !DILocation(line: 367, column: 9, scope: !28)
!111 = !DILocation(line: 368, column: 11, scope: !28)
!112 = !DILocation(line: 368, column: 3, scope: !28)
!113 = !DILocation(line: 368, column: 9, scope: !28)
!114 = !DILocation(line: 369, column: 21, scope: !28)
!115 = !DILocation(line: 369, column: 33, scope: !28)
!116 = !DILocation(line: 369, column: 3, scope: !28)
!117 = !DILocation(line: 370, column: 21, scope: !28)
!118 = !DILocation(line: 370, column: 3, scope: !28)
!119 = !DILocation(line: 371, column: 1, scope: !28)
!120 = distinct !DISubprogram(name: "load64", scope: !121, file: !121, line: 172, type: !122, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!121 = !DIFile(filename: "../hacl-star/dist/karamel/include/krml/lowstar_endianness.h", directory: "/home/luwei/bech-back/HACL/Curve25519-64")
!122 = !DISubroutineType(types: !123)
!123 = !{!11, !31}
!124 = !DILocalVariable(name: "b", arg: 1, scope: !120, file: !121, line: 172, type: !31)
!125 = !DILocation(line: 0, scope: !120)
!126 = !DILocalVariable(name: "x", scope: !120, file: !121, line: 173, type: !11)
!127 = !DILocation(line: 173, column: 12, scope: !120)
!128 = !DILocation(line: 174, column: 3, scope: !120)
!129 = !DILocation(line: 175, column: 10, scope: !120)
!130 = !DILocation(line: 175, column: 3, scope: !120)
!131 = distinct !DISubprogram(name: "__uint64_identity", scope: !132, file: !132, line: 45, type: !133, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h", directory: "")
!133 = !DISubroutineType(types: !134)
!134 = !{!12, !12}
!135 = !DILocalVariable(name: "__x", arg: 1, scope: !131, file: !132, line: 45, type: !12)
!136 = !DILocation(line: 0, scope: !131)
!137 = !DILocation(line: 47, column: 3, scope: !131)
!138 = distinct !DISubprogram(name: "montgomery_ladder", scope: !3, file: !3, line: 182, type: !139, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !53, !31, !53}
!141 = !DILocalVariable(name: "out", arg: 1, scope: !138, file: !3, line: 182, type: !53)
!142 = !DILocation(line: 0, scope: !138)
!143 = !DILocalVariable(name: "key", arg: 2, scope: !138, file: !3, line: 182, type: !31)
!144 = !DILocalVariable(name: "init", arg: 3, scope: !138, file: !3, line: 182, type: !53)
!145 = !DILocalVariable(name: "tmp2", scope: !138, file: !3, line: 184, type: !146)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 16)
!149 = !DILocation(line: 184, column: 12, scope: !138)
!150 = !DILocalVariable(name: "p01_tmp1_swap", scope: !138, file: !3, line: 185, type: !151)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2112, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 33)
!154 = !DILocation(line: 185, column: 12, scope: !138)
!155 = !DILocation(line: 186, column: 18, scope: !138)
!156 = !DILocalVariable(name: "p0", scope: !138, file: !3, line: 186, type: !53)
!157 = !DILocation(line: 187, column: 19, scope: !138)
!158 = !DILocalVariable(name: "p01", scope: !138, file: !3, line: 187, type: !53)
!159 = !DILocalVariable(name: "p03", scope: !138, file: !3, line: 188, type: !53)
!160 = !DILocation(line: 189, column: 23, scope: !138)
!161 = !DILocalVariable(name: "p11", scope: !138, file: !3, line: 189, type: !53)
!162 = !DILocation(line: 190, column: 3, scope: !138)
!163 = !DILocalVariable(name: "x0", scope: !138, file: !3, line: 191, type: !53)
!164 = !DILocation(line: 192, column: 22, scope: !138)
!165 = !DILocalVariable(name: "z0", scope: !138, file: !3, line: 192, type: !53)
!166 = !DILocation(line: 193, column: 3, scope: !138)
!167 = !DILocation(line: 193, column: 10, scope: !138)
!168 = !DILocation(line: 194, column: 3, scope: !138)
!169 = !DILocation(line: 194, column: 10, scope: !138)
!170 = !DILocation(line: 195, column: 3, scope: !138)
!171 = !DILocation(line: 195, column: 10, scope: !138)
!172 = !DILocation(line: 196, column: 3, scope: !138)
!173 = !DILocation(line: 196, column: 10, scope: !138)
!174 = !DILocation(line: 197, column: 3, scope: !138)
!175 = !DILocation(line: 197, column: 10, scope: !138)
!176 = !DILocation(line: 198, column: 3, scope: !138)
!177 = !DILocation(line: 198, column: 10, scope: !138)
!178 = !DILocation(line: 199, column: 3, scope: !138)
!179 = !DILocation(line: 199, column: 10, scope: !138)
!180 = !DILocation(line: 200, column: 3, scope: !138)
!181 = !DILocation(line: 200, column: 10, scope: !138)
!182 = !DILocation(line: 201, column: 24, scope: !138)
!183 = !DILocalVariable(name: "p01_tmp1", scope: !138, file: !3, line: 201, type: !53)
!184 = !DILocation(line: 202, column: 25, scope: !138)
!185 = !DILocalVariable(name: "p01_tmp11", scope: !138, file: !3, line: 202, type: !53)
!186 = !DILocation(line: 203, column: 19, scope: !138)
!187 = !DILocalVariable(name: "nq1", scope: !138, file: !3, line: 203, type: !53)
!188 = !DILocation(line: 204, column: 22, scope: !138)
!189 = !DILocation(line: 204, column: 36, scope: !138)
!190 = !DILocalVariable(name: "nq_p11", scope: !138, file: !3, line: 204, type: !53)
!191 = !DILocation(line: 205, column: 20, scope: !138)
!192 = !DILocation(line: 205, column: 34, scope: !138)
!193 = !DILocalVariable(name: "swap", scope: !138, file: !3, line: 205, type: !53)
!194 = !DILocation(line: 206, column: 3, scope: !138)
!195 = !DILocation(line: 207, column: 41, scope: !138)
!196 = !DILocation(line: 207, column: 3, scope: !138)
!197 = !DILocation(line: 208, column: 3, scope: !138)
!198 = !DILocation(line: 208, column: 12, scope: !138)
!199 = !DILocalVariable(name: "i", scope: !200, file: !3, line: 209, type: !6)
!200 = distinct !DILexicalBlock(scope: !138, file: !3, line: 209, column: 3)
!201 = !DILocation(line: 0, scope: !200)
!202 = !DILocation(line: 209, column: 8, scope: !200)
!203 = !DILocation(line: 209, column: 37, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !3, line: 209, column: 3)
!205 = !DILocation(line: 209, column: 3, scope: !200)
!206 = !DILocation(line: 211, column: 27, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !3, line: 210, column: 3)
!208 = !DILocalVariable(name: "p01_tmp12", scope: !207, file: !3, line: 211, type: !53)
!209 = !DILocation(line: 0, scope: !207)
!210 = !DILocation(line: 212, column: 23, scope: !207)
!211 = !DILocation(line: 212, column: 37, scope: !207)
!212 = !DILocalVariable(name: "swap1", scope: !207, file: !3, line: 212, type: !53)
!213 = !DILocalVariable(name: "nq2", scope: !207, file: !3, line: 213, type: !53)
!214 = !DILocation(line: 214, column: 34, scope: !207)
!215 = !DILocalVariable(name: "nq_p12", scope: !207, file: !3, line: 214, type: !53)
!216 = !DILocation(line: 217, column: 38, scope: !207)
!217 = !DILocation(line: 218, column: 7, scope: !207)
!218 = !DILocation(line: 217, column: 18, scope: !207)
!219 = !DILocation(line: 219, column: 26, scope: !207)
!220 = !DILocation(line: 219, column: 31, scope: !207)
!221 = !DILocation(line: 219, column: 7, scope: !207)
!222 = !DILocation(line: 220, column: 7, scope: !207)
!223 = !DILocation(line: 217, column: 7, scope: !207)
!224 = !DILocalVariable(name: "bit", scope: !207, file: !3, line: 216, type: !11)
!225 = !DILocation(line: 221, column: 19, scope: !207)
!226 = !DILocation(line: 221, column: 29, scope: !207)
!227 = !DILocalVariable(name: "sw", scope: !207, file: !3, line: 221, type: !11)
!228 = !DILocation(line: 222, column: 5, scope: !207)
!229 = !DILocation(line: 223, column: 43, scope: !207)
!230 = !DILocation(line: 223, column: 5, scope: !207)
!231 = !DILocation(line: 224, column: 5, scope: !207)
!232 = !DILocation(line: 224, column: 15, scope: !207)
!233 = !DILocation(line: 225, column: 3, scope: !207)
!234 = !DILocation(line: 209, column: 56, scope: !204)
!235 = !DILocation(line: 209, column: 3, scope: !204)
!236 = distinct !{!236, !205, !237, !238}
!237 = !DILocation(line: 225, column: 3, scope: !200)
!238 = !{!"llvm.loop.mustprogress"}
!239 = !DILocation(line: 226, column: 17, scope: !138)
!240 = !DILocalVariable(name: "sw", scope: !138, file: !3, line: 226, type: !11)
!241 = !DILocation(line: 227, column: 3, scope: !138)
!242 = !DILocalVariable(name: "nq10", scope: !138, file: !3, line: 228, type: !53)
!243 = !DILocation(line: 229, column: 29, scope: !138)
!244 = !DILocalVariable(name: "tmp1", scope: !138, file: !3, line: 229, type: !53)
!245 = !DILocation(line: 230, column: 28, scope: !138)
!246 = !DILocation(line: 230, column: 3, scope: !138)
!247 = !DILocation(line: 231, column: 28, scope: !138)
!248 = !DILocation(line: 231, column: 3, scope: !138)
!249 = !DILocation(line: 232, column: 28, scope: !138)
!250 = !DILocation(line: 232, column: 3, scope: !138)
!251 = !DILocation(line: 233, column: 3, scope: !138)
!252 = !DILocation(line: 234, column: 1, scope: !138)
!253 = distinct !DISubprogram(name: "encode_point", scope: !3, file: !3, line: 319, type: !254, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !31, !53}
!256 = !DILocalVariable(name: "o", arg: 1, scope: !253, file: !3, line: 319, type: !31)
!257 = !DILocation(line: 0, scope: !253)
!258 = !DILocalVariable(name: "i", arg: 2, scope: !253, file: !3, line: 319, type: !53)
!259 = !DILocalVariable(name: "x", scope: !253, file: !3, line: 321, type: !53)
!260 = !DILocation(line: 322, column: 19, scope: !253)
!261 = !DILocalVariable(name: "z", scope: !253, file: !3, line: 322, type: !53)
!262 = !DILocalVariable(name: "tmp", scope: !253, file: !3, line: 323, type: !42)
!263 = !DILocation(line: 323, column: 12, scope: !253)
!264 = !DILocalVariable(name: "u64s", scope: !253, file: !3, line: 324, type: !42)
!265 = !DILocation(line: 324, column: 12, scope: !253)
!266 = !DILocalVariable(name: "tmp_w", scope: !253, file: !3, line: 325, type: !146)
!267 = !DILocation(line: 325, column: 12, scope: !253)
!268 = !DILocation(line: 326, column: 8, scope: !253)
!269 = !DILocation(line: 326, column: 16, scope: !253)
!270 = !DILocation(line: 326, column: 3, scope: !253)
!271 = !DILocation(line: 327, column: 9, scope: !253)
!272 = !DILocation(line: 327, column: 14, scope: !253)
!273 = !DILocation(line: 327, column: 22, scope: !253)
!274 = !DILocation(line: 327, column: 3, scope: !253)
!275 = !DILocation(line: 328, column: 15, scope: !253)
!276 = !DILocation(line: 328, column: 21, scope: !253)
!277 = !DILocation(line: 328, column: 3, scope: !253)
!278 = !DILocation(line: 329, column: 3, scope: !253)
!279 = !DILocalVariable(name: "i0", scope: !280, file: !3, line: 329, type: !6)
!280 = distinct !DILexicalBlock(scope: !253, file: !3, line: 329, column: 3)
!281 = !DILocation(line: 0, scope: !280)
!282 = !DILocation(line: 329, column: 3, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 329, column: 3)
!284 = !DILocation(line: 329, column: 3, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !3, line: 329, column: 3)
!286 = !DILocation(line: 329, column: 3, scope: !287)
!287 = distinct !DILexicalBlock(scope: !280, file: !3, line: 329, column: 3)
!288 = !DILocation(line: 329, column: 3, scope: !289)
!289 = distinct !DILexicalBlock(scope: !280, file: !3, line: 329, column: 3)
!290 = !DILocation(line: 329, column: 3, scope: !280)
!291 = !DILocation(line: 334, column: 1, scope: !253)
!292 = distinct !DISubprogram(name: "finv", scope: !3, file: !3, line: 245, type: !293, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !53, !53, !53}
!295 = !DILocalVariable(name: "o", arg: 1, scope: !292, file: !3, line: 245, type: !53)
!296 = !DILocation(line: 0, scope: !292)
!297 = !DILocalVariable(name: "i", arg: 2, scope: !292, file: !3, line: 245, type: !53)
!298 = !DILocalVariable(name: "tmp", arg: 3, scope: !292, file: !3, line: 245, type: !53)
!299 = !DILocalVariable(name: "t1", scope: !292, file: !3, line: 247, type: !146)
!300 = !DILocation(line: 247, column: 12, scope: !292)
!301 = !DILocation(line: 248, column: 18, scope: !292)
!302 = !DILocalVariable(name: "a1", scope: !292, file: !3, line: 248, type: !53)
!303 = !DILocation(line: 249, column: 18, scope: !292)
!304 = !DILocation(line: 249, column: 21, scope: !292)
!305 = !DILocalVariable(name: "b1", scope: !292, file: !3, line: 249, type: !53)
!306 = !DILocation(line: 250, column: 20, scope: !292)
!307 = !DILocation(line: 250, column: 23, scope: !292)
!308 = !DILocalVariable(name: "t010", scope: !292, file: !3, line: 250, type: !53)
!309 = !DILocalVariable(name: "tmp10", scope: !292, file: !3, line: 251, type: !53)
!310 = !DILocation(line: 252, column: 3, scope: !292)
!311 = !DILocation(line: 253, column: 3, scope: !292)
!312 = !DILocation(line: 254, column: 3, scope: !292)
!313 = !DILocation(line: 255, column: 3, scope: !292)
!314 = !DILocation(line: 256, column: 3, scope: !292)
!315 = !DILocation(line: 257, column: 3, scope: !292)
!316 = !DILocation(line: 258, column: 3, scope: !292)
!317 = !DILocation(line: 259, column: 3, scope: !292)
!318 = !DILocation(line: 260, column: 19, scope: !292)
!319 = !DILocation(line: 260, column: 22, scope: !292)
!320 = !DILocalVariable(name: "b10", scope: !292, file: !3, line: 260, type: !53)
!321 = !DILocation(line: 261, column: 19, scope: !292)
!322 = !DILocation(line: 261, column: 22, scope: !292)
!323 = !DILocalVariable(name: "c10", scope: !292, file: !3, line: 261, type: !53)
!324 = !DILocation(line: 262, column: 20, scope: !292)
!325 = !DILocation(line: 262, column: 23, scope: !292)
!326 = !DILocalVariable(name: "t011", scope: !292, file: !3, line: 262, type: !53)
!327 = !DILocalVariable(name: "tmp11", scope: !292, file: !3, line: 263, type: !53)
!328 = !DILocation(line: 264, column: 3, scope: !292)
!329 = !DILocation(line: 265, column: 3, scope: !292)
!330 = !DILocation(line: 266, column: 3, scope: !292)
!331 = !DILocation(line: 267, column: 3, scope: !292)
!332 = !DILocation(line: 268, column: 3, scope: !292)
!333 = !DILocation(line: 269, column: 3, scope: !292)
!334 = !DILocation(line: 270, column: 3, scope: !292)
!335 = !DILocation(line: 271, column: 3, scope: !292)
!336 = !DILocation(line: 272, column: 19, scope: !292)
!337 = !DILocation(line: 272, column: 22, scope: !292)
!338 = !DILocalVariable(name: "b11", scope: !292, file: !3, line: 272, type: !53)
!339 = !DILocation(line: 273, column: 18, scope: !292)
!340 = !DILocation(line: 273, column: 21, scope: !292)
!341 = !DILocalVariable(name: "c1", scope: !292, file: !3, line: 273, type: !53)
!342 = !DILocation(line: 274, column: 19, scope: !292)
!343 = !DILocation(line: 274, column: 22, scope: !292)
!344 = !DILocalVariable(name: "t01", scope: !292, file: !3, line: 274, type: !53)
!345 = !DILocalVariable(name: "tmp1", scope: !292, file: !3, line: 275, type: !53)
!346 = !DILocation(line: 276, column: 3, scope: !292)
!347 = !DILocation(line: 277, column: 3, scope: !292)
!348 = !DILocation(line: 278, column: 3, scope: !292)
!349 = !DILocation(line: 279, column: 3, scope: !292)
!350 = !DILocation(line: 280, column: 3, scope: !292)
!351 = !DILocation(line: 281, column: 17, scope: !292)
!352 = !DILocalVariable(name: "a", scope: !292, file: !3, line: 281, type: !53)
!353 = !DILocation(line: 282, column: 18, scope: !292)
!354 = !DILocation(line: 282, column: 21, scope: !292)
!355 = !DILocalVariable(name: "t0", scope: !292, file: !3, line: 282, type: !53)
!356 = !DILocation(line: 283, column: 3, scope: !292)
!357 = !DILocation(line: 284, column: 1, scope: !292)
!358 = distinct !DISubprogram(name: "fmul0", scope: !3, file: !3, line: 60, type: !359, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !53, !53, !53, !53}
!361 = !DILocalVariable(name: "out", arg: 1, scope: !358, file: !3, line: 60, type: !53)
!362 = !DILocation(line: 0, scope: !358)
!363 = !DILocalVariable(name: "f1", arg: 2, scope: !358, file: !3, line: 60, type: !53)
!364 = !DILocalVariable(name: "f2", arg: 3, scope: !358, file: !3, line: 60, type: !53)
!365 = !DILocalVariable(name: "tmp", arg: 4, scope: !358, file: !3, line: 60, type: !53)
!366 = !DILocation(line: 63, column: 3, scope: !358)
!367 = !DILocation(line: 67, column: 1, scope: !358)
!368 = distinct !DISubprogram(name: "store_felem", scope: !3, file: !3, line: 286, type: !369, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !53, !53}
!371 = !DILocalVariable(name: "b", arg: 1, scope: !368, file: !3, line: 286, type: !53)
!372 = !DILocation(line: 0, scope: !368)
!373 = !DILocalVariable(name: "f", arg: 2, scope: !368, file: !3, line: 286, type: !53)
!374 = !DILocation(line: 288, column: 18, scope: !368)
!375 = !DILocalVariable(name: "f30", scope: !368, file: !3, line: 288, type: !11)
!376 = !DILocation(line: 289, column: 27, scope: !368)
!377 = !DILocalVariable(name: "top_bit0", scope: !368, file: !3, line: 289, type: !11)
!378 = !DILocation(line: 290, column: 15, scope: !368)
!379 = !DILocation(line: 290, column: 3, scope: !368)
!380 = !DILocation(line: 290, column: 9, scope: !368)
!381 = !DILocation(line: 291, column: 35, scope: !368)
!382 = !DILocation(line: 291, column: 3, scope: !368)
!383 = !DILocation(line: 292, column: 18, scope: !368)
!384 = !DILocalVariable(name: "f31", scope: !368, file: !3, line: 292, type: !11)
!385 = !DILocation(line: 293, column: 26, scope: !368)
!386 = !DILocalVariable(name: "top_bit", scope: !368, file: !3, line: 293, type: !11)
!387 = !DILocation(line: 294, column: 15, scope: !368)
!388 = !DILocation(line: 294, column: 3, scope: !368)
!389 = !DILocation(line: 294, column: 9, scope: !368)
!390 = !DILocation(line: 295, column: 35, scope: !368)
!391 = !DILocation(line: 295, column: 3, scope: !368)
!392 = !DILocation(line: 296, column: 17, scope: !368)
!393 = !DILocalVariable(name: "f0", scope: !368, file: !3, line: 296, type: !11)
!394 = !DILocation(line: 297, column: 17, scope: !368)
!395 = !DILocalVariable(name: "f1", scope: !368, file: !3, line: 297, type: !11)
!396 = !DILocation(line: 298, column: 17, scope: !368)
!397 = !DILocalVariable(name: "f2", scope: !368, file: !3, line: 298, type: !11)
!398 = !DILocation(line: 299, column: 17, scope: !368)
!399 = !DILocalVariable(name: "f3", scope: !368, file: !3, line: 299, type: !11)
!400 = !DILocation(line: 300, column: 17, scope: !368)
!401 = !DILocalVariable(name: "m0", scope: !368, file: !3, line: 300, type: !11)
!402 = !DILocation(line: 301, column: 17, scope: !368)
!403 = !DILocalVariable(name: "m1", scope: !368, file: !3, line: 301, type: !11)
!404 = !DILocation(line: 302, column: 17, scope: !368)
!405 = !DILocalVariable(name: "m2", scope: !368, file: !3, line: 302, type: !11)
!406 = !DILocation(line: 303, column: 17, scope: !368)
!407 = !DILocalVariable(name: "m3", scope: !368, file: !3, line: 303, type: !11)
!408 = !DILocation(line: 304, column: 24, scope: !368)
!409 = !DILocation(line: 304, column: 30, scope: !368)
!410 = !DILocation(line: 304, column: 36, scope: !368)
!411 = !DILocalVariable(name: "mask", scope: !368, file: !3, line: 304, type: !11)
!412 = !DILocation(line: 305, column: 29, scope: !368)
!413 = !DILocation(line: 305, column: 21, scope: !368)
!414 = !DILocalVariable(name: "f0_", scope: !368, file: !3, line: 305, type: !11)
!415 = !DILocation(line: 306, column: 21, scope: !368)
!416 = !DILocalVariable(name: "f1_", scope: !368, file: !3, line: 306, type: !11)
!417 = !DILocation(line: 307, column: 21, scope: !368)
!418 = !DILocalVariable(name: "f2_", scope: !368, file: !3, line: 307, type: !11)
!419 = !DILocation(line: 308, column: 29, scope: !368)
!420 = !DILocation(line: 308, column: 21, scope: !368)
!421 = !DILocalVariable(name: "f3_", scope: !368, file: !3, line: 308, type: !11)
!422 = !DILocalVariable(name: "o0", scope: !368, file: !3, line: 309, type: !11)
!423 = !DILocalVariable(name: "o1", scope: !368, file: !3, line: 310, type: !11)
!424 = !DILocalVariable(name: "o2", scope: !368, file: !3, line: 311, type: !11)
!425 = !DILocalVariable(name: "o3", scope: !368, file: !3, line: 312, type: !11)
!426 = !DILocation(line: 313, column: 3, scope: !368)
!427 = !DILocation(line: 313, column: 9, scope: !368)
!428 = !DILocation(line: 314, column: 3, scope: !368)
!429 = !DILocation(line: 314, column: 9, scope: !368)
!430 = !DILocation(line: 315, column: 3, scope: !368)
!431 = !DILocation(line: 315, column: 9, scope: !368)
!432 = !DILocation(line: 316, column: 3, scope: !368)
!433 = !DILocation(line: 316, column: 9, scope: !368)
!434 = !DILocation(line: 317, column: 1, scope: !368)
!435 = distinct !DISubprogram(name: "store64", scope: !121, file: !121, line: 186, type: !436, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !31, !11}
!438 = !DILocalVariable(name: "b", arg: 1, scope: !435, file: !121, line: 186, type: !31)
!439 = !DILocation(line: 0, scope: !435)
!440 = !DILocalVariable(name: "i", arg: 2, scope: !435, file: !121, line: 186, type: !11)
!441 = !DILocation(line: 186, column: 49, scope: !435)
!442 = !DILocation(line: 187, column: 3, scope: !435)
!443 = !DILocation(line: 188, column: 1, scope: !435)
!444 = distinct !DISubprogram(name: "add_scalar0", scope: !3, file: !3, line: 33, type: !445, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !53, !53, !11}
!447 = !DILocalVariable(name: "out", arg: 1, scope: !444, file: !3, line: 33, type: !53)
!448 = !DILocation(line: 0, scope: !444)
!449 = !DILocalVariable(name: "f1", arg: 2, scope: !444, file: !3, line: 33, type: !53)
!450 = !DILocalVariable(name: "f2", arg: 3, scope: !444, file: !3, line: 33, type: !11)
!451 = !DILocation(line: 36, column: 3, scope: !444)
!452 = !DILocation(line: 40, column: 1, scope: !444)
!453 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !454, file: !454, line: 44, type: !455, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!454 = !DIFile(filename: "../hacl-star/dist/karamel/krmllib/dist/minimal/FStar_UInt_8_16_32_64.h", directory: "/home/luwei/bech-back/HACL/Curve25519-64")
!455 = !DISubroutineType(types: !456)
!456 = !{!11, !11, !11}
!457 = !DILocalVariable(name: "a", arg: 1, scope: !453, file: !454, line: 44, type: !11)
!458 = !DILocation(line: 0, scope: !453)
!459 = !DILocalVariable(name: "b", arg: 2, scope: !453, file: !454, line: 44, type: !11)
!460 = !DILocalVariable(name: "x", scope: !453, file: !454, line: 46, type: !11)
!461 = !DILocalVariable(name: "y", scope: !453, file: !454, line: 47, type: !11)
!462 = !DILocation(line: 48, column: 24, scope: !453)
!463 = !DILocalVariable(name: "x_xor_y", scope: !453, file: !454, line: 48, type: !11)
!464 = !DILocation(line: 49, column: 24, scope: !453)
!465 = !DILocalVariable(name: "x_sub_y", scope: !453, file: !454, line: 49, type: !11)
!466 = !DILocation(line: 50, column: 36, scope: !453)
!467 = !DILocalVariable(name: "x_sub_y_xor_y", scope: !453, file: !454, line: 50, type: !11)
!468 = !DILocation(line: 51, column: 24, scope: !453)
!469 = !DILocalVariable(name: "q", scope: !453, file: !454, line: 51, type: !11)
!470 = !DILocation(line: 52, column: 24, scope: !453)
!471 = !DILocalVariable(name: "x_xor_q", scope: !453, file: !454, line: 52, type: !11)
!472 = !DILocation(line: 53, column: 31, scope: !453)
!473 = !DILocalVariable(name: "x_xor_q_", scope: !453, file: !454, line: 53, type: !11)
!474 = !DILocation(line: 54, column: 19, scope: !453)
!475 = !DILocation(line: 54, column: 3, scope: !453)
!476 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !454, file: !454, line: 35, type: !455, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!477 = !DILocalVariable(name: "a", arg: 1, scope: !476, file: !454, line: 35, type: !11)
!478 = !DILocation(line: 0, scope: !476)
!479 = !DILocalVariable(name: "b", arg: 2, scope: !476, file: !454, line: 35, type: !11)
!480 = !DILocation(line: 37, column: 18, scope: !476)
!481 = !DILocalVariable(name: "x", scope: !476, file: !454, line: 37, type: !11)
!482 = !DILocation(line: 38, column: 22, scope: !476)
!483 = !DILocation(line: 38, column: 25, scope: !476)
!484 = !DILocalVariable(name: "minus_x", scope: !476, file: !454, line: 38, type: !11)
!485 = !DILocation(line: 39, column: 29, scope: !476)
!486 = !DILocalVariable(name: "x_or_minus_x", scope: !476, file: !454, line: 39, type: !11)
!487 = !DILocation(line: 40, column: 31, scope: !476)
!488 = !DILocalVariable(name: "xnx", scope: !476, file: !454, line: 40, type: !11)
!489 = !DILocation(line: 41, column: 14, scope: !476)
!490 = !DILocation(line: 41, column: 3, scope: !476)
!491 = distinct !DISubprogram(name: "add_scalar", scope: !492, file: !492, line: 8, type: !445, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!492 = !DIFile(filename: "../hacl-star/dist/gcc-compatible/curve25519-inline.h", directory: "/home/luwei/bech-back/HACL/Curve25519-64")
!493 = !DILocalVariable(name: "out", arg: 1, scope: !491, file: !492, line: 8, type: !53)
!494 = !DILocation(line: 0, scope: !491)
!495 = !DILocalVariable(name: "f1", arg: 2, scope: !491, file: !492, line: 8, type: !53)
!496 = !DILocalVariable(name: "f2", arg: 3, scope: !491, file: !492, line: 8, type: !11)
!497 = !DILocation(line: 10, column: 3, scope: !491)
!498 = !{i32 493920}
!499 = !DILocation(line: 34, column: 1, scope: !491)
!500 = distinct !DISubprogram(name: "fmul", scope: !492, file: !492, line: 123, type: !359, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!501 = !DILocalVariable(name: "out", arg: 1, scope: !500, file: !492, line: 123, type: !53)
!502 = !DILocation(line: 0, scope: !500)
!503 = !DILocalVariable(name: "f1", arg: 2, scope: !500, file: !492, line: 123, type: !53)
!504 = !DILocalVariable(name: "f2", arg: 3, scope: !500, file: !492, line: 123, type: !53)
!505 = !DILocalVariable(name: "tmp", arg: 4, scope: !500, file: !492, line: 123, type: !53)
!506 = !DILocation(line: 125, column: 3, scope: !500)
!507 = !{i32 497042}
!508 = !DILocation(line: 205, column: 1, scope: !500)
!509 = distinct !DISubprogram(name: "fsquare_times", scope: !3, file: !3, line: 236, type: !510, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !53, !53, !53, !6}
!512 = !DILocalVariable(name: "o", arg: 1, scope: !509, file: !3, line: 236, type: !53)
!513 = !DILocation(line: 0, scope: !509)
!514 = !DILocalVariable(name: "inp", arg: 2, scope: !509, file: !3, line: 236, type: !53)
!515 = !DILocalVariable(name: "tmp", arg: 3, scope: !509, file: !3, line: 236, type: !53)
!516 = !DILocalVariable(name: "n", arg: 4, scope: !509, file: !3, line: 236, type: !6)
!517 = !DILocation(line: 238, column: 3, scope: !509)
!518 = !DILocalVariable(name: "i", scope: !519, file: !3, line: 239, type: !6)
!519 = distinct !DILexicalBlock(scope: !509, file: !3, line: 239, column: 3)
!520 = !DILocation(line: 0, scope: !519)
!521 = !DILocation(line: 239, column: 8, scope: !519)
!522 = !DILocation(line: 239, column: 41, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !3, line: 239, column: 3)
!524 = !DILocation(line: 239, column: 37, scope: !523)
!525 = !DILocation(line: 239, column: 3, scope: !519)
!526 = !DILocation(line: 241, column: 5, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !3, line: 240, column: 3)
!528 = !DILocation(line: 242, column: 3, scope: !527)
!529 = !DILocation(line: 239, column: 58, scope: !523)
!530 = !DILocation(line: 239, column: 3, scope: !523)
!531 = distinct !{!531, !525, !532, !238}
!532 = !DILocation(line: 242, column: 3, scope: !519)
!533 = !DILocation(line: 243, column: 1, scope: !509)
!534 = distinct !DISubprogram(name: "fsqr0", scope: !3, file: !3, line: 87, type: !293, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!535 = !DILocalVariable(name: "out", arg: 1, scope: !534, file: !3, line: 87, type: !53)
!536 = !DILocation(line: 0, scope: !534)
!537 = !DILocalVariable(name: "f1", arg: 2, scope: !534, file: !3, line: 87, type: !53)
!538 = !DILocalVariable(name: "tmp", arg: 3, scope: !534, file: !3, line: 87, type: !53)
!539 = !DILocation(line: 90, column: 3, scope: !534)
!540 = !DILocation(line: 94, column: 1, scope: !534)
!541 = distinct !DISubprogram(name: "fsqr", scope: !492, file: !492, line: 494, type: !293, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!542 = !DILocalVariable(name: "out", arg: 1, scope: !541, file: !492, line: 494, type: !53)
!543 = !DILocation(line: 0, scope: !541)
!544 = !DILocalVariable(name: "f", arg: 2, scope: !541, file: !492, line: 494, type: !53)
!545 = !DILocalVariable(name: "tmp", arg: 3, scope: !541, file: !492, line: 494, type: !53)
!546 = !DILocation(line: 496, column: 3, scope: !541)
!547 = !{i32 511339}
!548 = !DILocation(line: 582, column: 1, scope: !541)
!549 = distinct !DISubprogram(name: "cswap20", scope: !3, file: !3, line: 105, type: !550, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !11, !53, !53}
!552 = !DILocalVariable(name: "bit", arg: 1, scope: !549, file: !3, line: 105, type: !11)
!553 = !DILocation(line: 0, scope: !549)
!554 = !DILocalVariable(name: "p1", arg: 2, scope: !549, file: !3, line: 105, type: !53)
!555 = !DILocalVariable(name: "p2", arg: 3, scope: !549, file: !3, line: 105, type: !53)
!556 = !DILocation(line: 108, column: 3, scope: !549)
!557 = !DILocation(line: 112, column: 1, scope: !549)
!558 = distinct !DISubprogram(name: "point_add_and_double", scope: !3, file: !3, line: 116, type: !293, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!559 = !DILocalVariable(name: "q", arg: 1, scope: !558, file: !3, line: 116, type: !53)
!560 = !DILocation(line: 0, scope: !558)
!561 = !DILocalVariable(name: "p01_tmp1", arg: 2, scope: !558, file: !3, line: 116, type: !53)
!562 = !DILocalVariable(name: "tmp2", arg: 3, scope: !558, file: !3, line: 116, type: !53)
!563 = !DILocalVariable(name: "nq", scope: !558, file: !3, line: 118, type: !53)
!564 = !DILocation(line: 119, column: 30, scope: !558)
!565 = !DILocalVariable(name: "nq_p1", scope: !558, file: !3, line: 119, type: !53)
!566 = !DILocation(line: 120, column: 29, scope: !558)
!567 = !DILocalVariable(name: "tmp1", scope: !558, file: !3, line: 120, type: !53)
!568 = !DILocalVariable(name: "x1", scope: !558, file: !3, line: 121, type: !53)
!569 = !DILocalVariable(name: "x2", scope: !558, file: !3, line: 122, type: !53)
!570 = !DILocation(line: 123, column: 21, scope: !558)
!571 = !DILocalVariable(name: "z2", scope: !558, file: !3, line: 123, type: !53)
!572 = !DILocation(line: 124, column: 24, scope: !558)
!573 = !DILocalVariable(name: "z3", scope: !558, file: !3, line: 124, type: !53)
!574 = !DILocalVariable(name: "a", scope: !558, file: !3, line: 125, type: !53)
!575 = !DILocation(line: 126, column: 22, scope: !558)
!576 = !DILocalVariable(name: "b", scope: !558, file: !3, line: 126, type: !53)
!577 = !DILocalVariable(name: "ab", scope: !558, file: !3, line: 127, type: !53)
!578 = !DILocation(line: 128, column: 23, scope: !558)
!579 = !DILocalVariable(name: "dc", scope: !558, file: !3, line: 128, type: !53)
!580 = !DILocation(line: 129, column: 3, scope: !558)
!581 = !DILocation(line: 130, column: 3, scope: !558)
!582 = !DILocalVariable(name: "x3", scope: !558, file: !3, line: 131, type: !53)
!583 = !DILocation(line: 132, column: 25, scope: !558)
!584 = !DILocalVariable(name: "z31", scope: !558, file: !3, line: 132, type: !53)
!585 = !DILocalVariable(name: "d0", scope: !558, file: !3, line: 133, type: !53)
!586 = !DILocation(line: 134, column: 21, scope: !558)
!587 = !DILocalVariable(name: "c0", scope: !558, file: !3, line: 134, type: !53)
!588 = !DILocation(line: 135, column: 3, scope: !558)
!589 = !DILocation(line: 136, column: 3, scope: !558)
!590 = !DILocation(line: 137, column: 3, scope: !558)
!591 = !DILocation(line: 138, column: 3, scope: !558)
!592 = !DILocation(line: 139, column: 3, scope: !558)
!593 = !DILocalVariable(name: "a1", scope: !558, file: !3, line: 140, type: !53)
!594 = !DILocation(line: 141, column: 23, scope: !558)
!595 = !DILocalVariable(name: "b1", scope: !558, file: !3, line: 141, type: !53)
!596 = !DILocation(line: 142, column: 22, scope: !558)
!597 = !DILocalVariable(name: "d", scope: !558, file: !3, line: 142, type: !53)
!598 = !DILocation(line: 143, column: 22, scope: !558)
!599 = !DILocalVariable(name: "c", scope: !558, file: !3, line: 143, type: !53)
!600 = !DILocalVariable(name: "ab1", scope: !558, file: !3, line: 144, type: !53)
!601 = !DILocation(line: 145, column: 24, scope: !558)
!602 = !DILocalVariable(name: "dc1", scope: !558, file: !3, line: 145, type: !53)
!603 = !DILocation(line: 146, column: 3, scope: !558)
!604 = !DILocation(line: 147, column: 3, scope: !558)
!605 = !DILocation(line: 148, column: 12, scope: !558)
!606 = !DILocation(line: 148, column: 3, scope: !558)
!607 = !DILocation(line: 148, column: 10, scope: !558)
!608 = !DILocation(line: 149, column: 12, scope: !558)
!609 = !DILocation(line: 149, column: 3, scope: !558)
!610 = !DILocation(line: 149, column: 10, scope: !558)
!611 = !DILocation(line: 150, column: 12, scope: !558)
!612 = !DILocation(line: 150, column: 3, scope: !558)
!613 = !DILocation(line: 150, column: 10, scope: !558)
!614 = !DILocation(line: 151, column: 12, scope: !558)
!615 = !DILocation(line: 151, column: 3, scope: !558)
!616 = !DILocation(line: 151, column: 10, scope: !558)
!617 = !DILocation(line: 152, column: 3, scope: !558)
!618 = !DILocation(line: 153, column: 3, scope: !558)
!619 = !DILocation(line: 154, column: 3, scope: !558)
!620 = !DILocation(line: 155, column: 3, scope: !558)
!621 = !DILocation(line: 156, column: 3, scope: !558)
!622 = !DILocation(line: 157, column: 1, scope: !558)
!623 = distinct !DISubprogram(name: "point_double", scope: !3, file: !3, line: 159, type: !293, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!624 = !DILocalVariable(name: "nq", arg: 1, scope: !623, file: !3, line: 159, type: !53)
!625 = !DILocation(line: 0, scope: !623)
!626 = !DILocalVariable(name: "tmp1", arg: 2, scope: !623, file: !3, line: 159, type: !53)
!627 = !DILocalVariable(name: "tmp2", arg: 3, scope: !623, file: !3, line: 159, type: !53)
!628 = !DILocalVariable(name: "x2", scope: !623, file: !3, line: 161, type: !53)
!629 = !DILocation(line: 162, column: 21, scope: !623)
!630 = !DILocalVariable(name: "z2", scope: !623, file: !3, line: 162, type: !53)
!631 = !DILocalVariable(name: "a", scope: !623, file: !3, line: 163, type: !53)
!632 = !DILocation(line: 164, column: 22, scope: !623)
!633 = !DILocalVariable(name: "b", scope: !623, file: !3, line: 164, type: !53)
!634 = !DILocation(line: 165, column: 22, scope: !623)
!635 = !DILocalVariable(name: "d", scope: !623, file: !3, line: 165, type: !53)
!636 = !DILocation(line: 166, column: 22, scope: !623)
!637 = !DILocalVariable(name: "c", scope: !623, file: !3, line: 166, type: !53)
!638 = !DILocalVariable(name: "ab", scope: !623, file: !3, line: 167, type: !53)
!639 = !DILocation(line: 168, column: 23, scope: !623)
!640 = !DILocalVariable(name: "dc", scope: !623, file: !3, line: 168, type: !53)
!641 = !DILocation(line: 169, column: 3, scope: !623)
!642 = !DILocation(line: 170, column: 3, scope: !623)
!643 = !DILocation(line: 171, column: 3, scope: !623)
!644 = !DILocation(line: 172, column: 11, scope: !623)
!645 = !DILocation(line: 172, column: 3, scope: !623)
!646 = !DILocation(line: 172, column: 9, scope: !623)
!647 = !DILocation(line: 173, column: 11, scope: !623)
!648 = !DILocation(line: 173, column: 3, scope: !623)
!649 = !DILocation(line: 173, column: 9, scope: !623)
!650 = !DILocation(line: 174, column: 11, scope: !623)
!651 = !DILocation(line: 174, column: 3, scope: !623)
!652 = !DILocation(line: 174, column: 9, scope: !623)
!653 = !DILocation(line: 175, column: 11, scope: !623)
!654 = !DILocation(line: 175, column: 3, scope: !623)
!655 = !DILocation(line: 175, column: 9, scope: !623)
!656 = !DILocation(line: 176, column: 3, scope: !623)
!657 = !DILocation(line: 177, column: 3, scope: !623)
!658 = !DILocation(line: 178, column: 3, scope: !623)
!659 = !DILocation(line: 179, column: 3, scope: !623)
!660 = !DILocation(line: 180, column: 1, scope: !623)
!661 = distinct !DISubprogram(name: "fadd0", scope: !3, file: !3, line: 42, type: !293, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!662 = !DILocalVariable(name: "out", arg: 1, scope: !661, file: !3, line: 42, type: !53)
!663 = !DILocation(line: 0, scope: !661)
!664 = !DILocalVariable(name: "f1", arg: 2, scope: !661, file: !3, line: 42, type: !53)
!665 = !DILocalVariable(name: "f2", arg: 3, scope: !661, file: !3, line: 42, type: !53)
!666 = !DILocation(line: 45, column: 3, scope: !661)
!667 = !DILocation(line: 49, column: 1, scope: !661)
!668 = distinct !DISubprogram(name: "fsub0", scope: !3, file: !3, line: 51, type: !293, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!669 = !DILocalVariable(name: "out", arg: 1, scope: !668, file: !3, line: 51, type: !53)
!670 = !DILocation(line: 0, scope: !668)
!671 = !DILocalVariable(name: "f1", arg: 2, scope: !668, file: !3, line: 51, type: !53)
!672 = !DILocalVariable(name: "f2", arg: 3, scope: !668, file: !3, line: 51, type: !53)
!673 = !DILocation(line: 54, column: 3, scope: !668)
!674 = !DILocation(line: 58, column: 1, scope: !668)
!675 = distinct !DISubprogram(name: "fsqr20", scope: !3, file: !3, line: 96, type: !293, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!676 = !DILocalVariable(name: "out", arg: 1, scope: !675, file: !3, line: 96, type: !53)
!677 = !DILocation(line: 0, scope: !675)
!678 = !DILocalVariable(name: "f", arg: 2, scope: !675, file: !3, line: 96, type: !53)
!679 = !DILocalVariable(name: "tmp", arg: 3, scope: !675, file: !3, line: 96, type: !53)
!680 = !DILocation(line: 99, column: 3, scope: !675)
!681 = !DILocation(line: 103, column: 1, scope: !675)
!682 = distinct !DISubprogram(name: "fmul_scalar0", scope: !3, file: !3, line: 78, type: !445, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!683 = !DILocalVariable(name: "out", arg: 1, scope: !682, file: !3, line: 78, type: !53)
!684 = !DILocation(line: 0, scope: !682)
!685 = !DILocalVariable(name: "f1", arg: 2, scope: !682, file: !3, line: 78, type: !53)
!686 = !DILocalVariable(name: "f2", arg: 3, scope: !682, file: !3, line: 78, type: !11)
!687 = !DILocation(line: 81, column: 3, scope: !682)
!688 = !DILocation(line: 85, column: 1, scope: !682)
!689 = distinct !DISubprogram(name: "fmul20", scope: !3, file: !3, line: 69, type: !359, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!690 = !DILocalVariable(name: "out", arg: 1, scope: !689, file: !3, line: 69, type: !53)
!691 = !DILocation(line: 0, scope: !689)
!692 = !DILocalVariable(name: "f1", arg: 2, scope: !689, file: !3, line: 69, type: !53)
!693 = !DILocalVariable(name: "f2", arg: 3, scope: !689, file: !3, line: 69, type: !53)
!694 = !DILocalVariable(name: "tmp", arg: 4, scope: !689, file: !3, line: 69, type: !53)
!695 = !DILocation(line: 72, column: 3, scope: !689)
!696 = !DILocation(line: 76, column: 1, scope: !689)
!697 = distinct !DISubprogram(name: "fmul2", scope: !492, file: !492, line: 211, type: !359, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!698 = !DILocalVariable(name: "out", arg: 1, scope: !697, file: !492, line: 211, type: !53)
!699 = !DILocation(line: 0, scope: !697)
!700 = !DILocalVariable(name: "f1", arg: 2, scope: !697, file: !492, line: 211, type: !53)
!701 = !DILocalVariable(name: "f2", arg: 3, scope: !697, file: !492, line: 211, type: !53)
!702 = !DILocalVariable(name: "tmp", arg: 4, scope: !697, file: !492, line: 211, type: !53)
!703 = !DILocation(line: 213, column: 3, scope: !697)
!704 = !{i32 500890}
!705 = !DILocation(line: 362, column: 1, scope: !697)
!706 = distinct !DISubprogram(name: "fmul_scalar", scope: !492, file: !492, line: 366, type: !445, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!707 = !DILocalVariable(name: "out", arg: 1, scope: !706, file: !492, line: 366, type: !53)
!708 = !DILocation(line: 0, scope: !706)
!709 = !DILocalVariable(name: "f1", arg: 2, scope: !706, file: !492, line: 366, type: !53)
!710 = !DILocalVariable(name: "f2", arg: 3, scope: !706, file: !492, line: 366, type: !11)
!711 = !DILocalVariable(name: "f2_r", scope: !706, file: !492, line: 368, type: !11)
!712 = !DILocation(line: 370, column: 3, scope: !706)
!713 = !{i32 508006}
!714 = !DILocation(line: 406, column: 1, scope: !706)
!715 = distinct !DISubprogram(name: "fsqr2", scope: !492, file: !492, line: 588, type: !293, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!716 = !DILocalVariable(name: "out", arg: 1, scope: !715, file: !492, line: 588, type: !53)
!717 = !DILocation(line: 0, scope: !715)
!718 = !DILocalVariable(name: "f", arg: 2, scope: !715, file: !492, line: 588, type: !53)
!719 = !DILocalVariable(name: "tmp", arg: 3, scope: !715, file: !492, line: 588, type: !53)
!720 = !DILocation(line: 590, column: 3, scope: !715)
!721 = !{i32 514700}
!722 = !DILocation(line: 744, column: 1, scope: !715)
!723 = distinct !DISubprogram(name: "fsub", scope: !492, file: !492, line: 79, type: !293, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!724 = !DILocalVariable(name: "out", arg: 1, scope: !723, file: !492, line: 79, type: !53)
!725 = !DILocation(line: 0, scope: !723)
!726 = !DILocalVariable(name: "f1", arg: 2, scope: !723, file: !492, line: 79, type: !53)
!727 = !DILocalVariable(name: "f2", arg: 3, scope: !723, file: !492, line: 79, type: !53)
!728 = !DILocation(line: 81, column: 3, scope: !723)
!729 = !{i32 495783}
!730 = !DILocation(line: 119, column: 1, scope: !723)
!731 = distinct !DISubprogram(name: "fadd", scope: !492, file: !492, line: 37, type: !293, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!732 = !DILocalVariable(name: "out", arg: 1, scope: !731, file: !492, line: 37, type: !53)
!733 = !DILocation(line: 0, scope: !731)
!734 = !DILocalVariable(name: "f1", arg: 2, scope: !731, file: !492, line: 37, type: !53)
!735 = !DILocalVariable(name: "f2", arg: 3, scope: !731, file: !492, line: 37, type: !53)
!736 = !DILocation(line: 39, column: 3, scope: !731)
!737 = !{i32 494657}
!738 = !DILocation(line: 76, column: 1, scope: !731)
!739 = distinct !DISubprogram(name: "cswap2", scope: !492, file: !492, line: 409, type: !550, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!740 = !DILocalVariable(name: "bit", arg: 1, scope: !739, file: !492, line: 409, type: !11)
!741 = !DILocation(line: 0, scope: !739)
!742 = !DILocalVariable(name: "p1", arg: 2, scope: !739, file: !492, line: 409, type: !53)
!743 = !DILocalVariable(name: "p2", arg: 3, scope: !739, file: !492, line: 409, type: !53)
!744 = !DILocation(line: 411, column: 3, scope: !739)
!745 = !{i32 509200}
!746 = !DILocation(line: 490, column: 1, scope: !739)
!747 = distinct !DISubprogram(name: "Hacl_Curve25519_64_secret_to_public", scope: !3, file: !3, line: 381, type: !748, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !31, !31}
!750 = !DILocalVariable(name: "pub", arg: 1, scope: !747, file: !3, line: 381, type: !31)
!751 = !DILocation(line: 0, scope: !747)
!752 = !DILocalVariable(name: "priv", arg: 2, scope: !747, file: !3, line: 381, type: !31)
!753 = !DILocalVariable(name: "basepoint", scope: !747, file: !3, line: 383, type: !754)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !20)
!755 = !DILocation(line: 383, column: 11, scope: !747)
!756 = !DILocalVariable(name: "i", scope: !757, file: !3, line: 384, type: !6)
!757 = distinct !DILexicalBlock(scope: !747, file: !3, line: 384, column: 3)
!758 = !DILocation(line: 0, scope: !757)
!759 = !DILocation(line: 384, column: 8, scope: !757)
!760 = !DILocation(line: 384, column: 37, scope: !761)
!761 = distinct !DILexicalBlock(scope: !757, file: !3, line: 384, column: 3)
!762 = !DILocation(line: 384, column: 3, scope: !757)
!763 = !DILocation(line: 386, column: 19, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !3, line: 385, column: 3)
!765 = !DILocalVariable(name: "os", scope: !764, file: !3, line: 386, type: !31)
!766 = !DILocation(line: 0, scope: !764)
!767 = !DILocation(line: 387, column: 17, scope: !764)
!768 = !DILocalVariable(name: "x", scope: !764, file: !3, line: 387, type: !14)
!769 = !DILocation(line: 388, column: 5, scope: !764)
!770 = !DILocation(line: 388, column: 11, scope: !764)
!771 = !DILocation(line: 389, column: 3, scope: !764)
!772 = !DILocation(line: 384, column: 55, scope: !761)
!773 = !DILocation(line: 384, column: 3, scope: !761)
!774 = distinct !{!774, !762, !775, !238}
!775 = !DILocation(line: 389, column: 3, scope: !757)
!776 = !DILocation(line: 390, column: 44, scope: !747)
!777 = !DILocation(line: 390, column: 3, scope: !747)
!778 = !DILocation(line: 391, column: 1, scope: !747)
!779 = distinct !DISubprogram(name: "Hacl_Curve25519_64_ecdh", scope: !3, file: !3, line: 400, type: !780, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!780 = !DISubroutineType(types: !781)
!781 = !{!782, !31, !31, !31}
!782 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!783 = !DILocalVariable(name: "out", arg: 1, scope: !779, file: !3, line: 400, type: !31)
!784 = !DILocation(line: 0, scope: !779)
!785 = !DILocalVariable(name: "priv", arg: 2, scope: !779, file: !3, line: 400, type: !31)
!786 = !DILocalVariable(name: "pub", arg: 3, scope: !779, file: !3, line: 400, type: !31)
!787 = !DILocalVariable(name: "zeros", scope: !779, file: !3, line: 402, type: !754)
!788 = !DILocation(line: 402, column: 11, scope: !779)
!789 = !DILocation(line: 403, column: 3, scope: !779)
!790 = !DILocalVariable(name: "res", scope: !779, file: !3, line: 404, type: !14)
!791 = !DILocalVariable(name: "i", scope: !792, file: !3, line: 405, type: !6)
!792 = distinct !DILexicalBlock(scope: !779, file: !3, line: 405, column: 3)
!793 = !DILocation(line: 0, scope: !792)
!794 = !DILocation(line: 405, column: 8, scope: !792)
!795 = !DILocation(line: 405, column: 37, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !3, line: 405, column: 3)
!797 = !DILocation(line: 405, column: 3, scope: !792)
!798 = !DILocation(line: 407, column: 43, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !3, line: 406, column: 3)
!800 = !DILocation(line: 407, column: 51, scope: !799)
!801 = !DILocation(line: 407, column: 23, scope: !799)
!802 = !DILocalVariable(name: "uu____0", scope: !799, file: !3, line: 407, type: !14)
!803 = !DILocation(line: 0, scope: !799)
!804 = !DILocation(line: 408, column: 11, scope: !799)
!805 = !DILocation(line: 408, column: 21, scope: !799)
!806 = !DILocation(line: 408, column: 19, scope: !799)
!807 = !DILocation(line: 409, column: 3, scope: !799)
!808 = !DILocation(line: 405, column: 55, scope: !796)
!809 = !DILocation(line: 405, column: 3, scope: !796)
!810 = distinct !{!810, !797, !811, !238}
!811 = !DILocation(line: 409, column: 3, scope: !792)
!812 = !DILocalVariable(name: "z", scope: !779, file: !3, line: 410, type: !14)
!813 = !DILocation(line: 411, column: 12, scope: !779)
!814 = !DILocation(line: 411, column: 14, scope: !779)
!815 = !DILocation(line: 411, column: 8, scope: !779)
!816 = !DILocalVariable(name: "r", scope: !779, file: !3, line: 411, type: !782)
!817 = !DILocation(line: 412, column: 11, scope: !779)
!818 = !DILocation(line: 412, column: 10, scope: !779)
!819 = !DILocation(line: 412, column: 3, scope: !779)
!820 = distinct !DISubprogram(name: "FStar_UInt8_eq_mask", scope: !454, file: !454, line: 179, type: !821, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!821 = !DISubroutineType(types: !822)
!822 = !{!14, !14, !14}
!823 = !DILocalVariable(name: "a", arg: 1, scope: !820, file: !454, line: 179, type: !14)
!824 = !DILocation(line: 0, scope: !820)
!825 = !DILocalVariable(name: "b", arg: 2, scope: !820, file: !454, line: 179, type: !14)
!826 = !DILocation(line: 181, column: 15, scope: !820)
!827 = !DILocation(line: 181, column: 19, scope: !820)
!828 = !DILocation(line: 181, column: 17, scope: !820)
!829 = !DILocalVariable(name: "x", scope: !820, file: !454, line: 181, type: !14)
!830 = !DILocation(line: 182, column: 22, scope: !820)
!831 = !DILocation(line: 182, column: 21, scope: !820)
!832 = !DILocation(line: 182, column: 24, scope: !820)
!833 = !DILocalVariable(name: "minus_x", scope: !820, file: !454, line: 182, type: !14)
!834 = !DILocation(line: 183, column: 26, scope: !820)
!835 = !DILocation(line: 183, column: 30, scope: !820)
!836 = !DILocation(line: 183, column: 28, scope: !820)
!837 = !DILocalVariable(name: "x_or_minus_x", scope: !820, file: !454, line: 183, type: !14)
!838 = !DILocation(line: 184, column: 17, scope: !820)
!839 = !DILocation(line: 184, column: 30, scope: !820)
!840 = !DILocalVariable(name: "xnx", scope: !820, file: !454, line: 184, type: !14)
!841 = !DILocation(line: 185, column: 10, scope: !820)
!842 = !DILocation(line: 185, column: 14, scope: !820)
!843 = !DILocation(line: 185, column: 3, scope: !820)
!844 = distinct !DISubprogram(name: "Hacl_Curve25519_64_ecdh_wrapper", scope: !23, file: !23, line: 3, type: !29, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !4)
!845 = !DILocalVariable(name: "out", arg: 1, scope: !844, file: !23, line: 3, type: !31)
!846 = !DILocation(line: 0, scope: !844)
!847 = !DILocalVariable(name: "priv", arg: 2, scope: !844, file: !23, line: 3, type: !31)
!848 = !DILocalVariable(name: "pub", arg: 3, scope: !844, file: !23, line: 3, type: !31)
!849 = !DILocation(line: 5, column: 13, scope: !844)
!850 = !DILocation(line: 5, column: 3, scope: !844)
!851 = !DILocation(line: 6, column: 13, scope: !844)
!852 = !DILocation(line: 6, column: 3, scope: !844)
!853 = !DILocation(line: 7, column: 13, scope: !844)
!854 = !DILocation(line: 7, column: 3, scope: !844)
!855 = !DILocation(line: 8, column: 13, scope: !844)
!856 = !DILocation(line: 8, column: 3, scope: !844)
!857 = !DILocation(line: 9, column: 3, scope: !844)
!858 = !DILocation(line: 10, column: 1, scope: !844)
!859 = distinct !DISubprogram(name: "Hacl_Curve25519_64_ecdh_wrapper_t", scope: !23, file: !23, line: 16, type: !860, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !4)
!860 = !DISubroutineType(types: !861)
!861 = !{null}
!862 = !DILocation(line: 17, column: 17, scope: !859)
!863 = !DILocalVariable(name: "pub", scope: !859, file: !23, line: 17, type: !31)
!864 = !DILocation(line: 0, scope: !859)
!865 = !DILocation(line: 18, column: 18, scope: !859)
!866 = !DILocalVariable(name: "priv", scope: !859, file: !23, line: 18, type: !31)
!867 = !DILocation(line: 19, column: 18, scope: !859)
!868 = !DILocalVariable(name: "out", scope: !859, file: !23, line: 19, type: !31)
!869 = !DILocation(line: 20, column: 2, scope: !859)
!870 = !DILocation(line: 21, column: 1, scope: !859)
