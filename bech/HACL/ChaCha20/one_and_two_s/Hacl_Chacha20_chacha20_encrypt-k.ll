; ModuleID = 'Hacl_Chacha20_chacha20_encrypt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

@Hacl_Impl_Chacha20_Vec_chacha20_constants = dso_local constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !0
@chacha20_constants = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !12

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Impl_Chacha20_chacha20_init(i32* %0, i8* %1, i8* %2, i32 %3) #0 !dbg !24 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i8* %1, metadata !34, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i8* %2, metadata !35, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32 %3, metadata !36, metadata !DIExpression()), !dbg !33
  br label %5, !dbg !37

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i32* %0, metadata !41, metadata !DIExpression()), !dbg !43
  %6 = zext i32 0 to i64, !dbg !44
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* @chacha20_constants, i64 0, i64 %6, !dbg !44
  %8 = load i32, i32* %7, align 4, !dbg !44
  call void @llvm.dbg.value(metadata i32 %8, metadata !45, metadata !DIExpression()), !dbg !43
  %9 = zext i32 0 to i64, !dbg !44
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !44
  store i32 %8, i32* %10, align 4, !dbg !44
  %11 = add i32 0, 1, !dbg !44
  call void @llvm.dbg.value(metadata i32 %11, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i32* %0, metadata !46, metadata !DIExpression()), !dbg !48
  %12 = zext i32 %11 to i64, !dbg !49
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* @chacha20_constants, i64 0, i64 %12, !dbg !49
  %14 = load i32, i32* %13, align 4, !dbg !49
  call void @llvm.dbg.value(metadata i32 %14, metadata !50, metadata !DIExpression()), !dbg !48
  %15 = zext i32 %11 to i64, !dbg !49
  %16 = getelementptr inbounds i32, i32* %0, i64 %15, !dbg !49
  store i32 %14, i32* %16, align 4, !dbg !49
  %17 = add i32 %11, 1, !dbg !49
  call void @llvm.dbg.value(metadata i32 %17, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i32* %0, metadata !51, metadata !DIExpression()), !dbg !53
  %18 = zext i32 %17 to i64, !dbg !54
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @chacha20_constants, i64 0, i64 %18, !dbg !54
  %20 = load i32, i32* %19, align 4, !dbg !54
  call void @llvm.dbg.value(metadata i32 %20, metadata !55, metadata !DIExpression()), !dbg !53
  %21 = zext i32 %17 to i64, !dbg !54
  %22 = getelementptr inbounds i32, i32* %0, i64 %21, !dbg !54
  store i32 %20, i32* %22, align 4, !dbg !54
  %23 = add i32 %17, 1, !dbg !54
  call void @llvm.dbg.value(metadata i32 %23, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i32* %0, metadata !56, metadata !DIExpression()), !dbg !58
  %24 = zext i32 %23 to i64, !dbg !59
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* @chacha20_constants, i64 0, i64 %24, !dbg !59
  %26 = load i32, i32* %25, align 4, !dbg !59
  call void @llvm.dbg.value(metadata i32 %26, metadata !60, metadata !DIExpression()), !dbg !58
  %27 = zext i32 %23 to i64, !dbg !59
  %28 = getelementptr inbounds i32, i32* %0, i64 %27, !dbg !59
  store i32 %26, i32* %28, align 4, !dbg !59
  %29 = add i32 %23, 1, !dbg !59
  call void @llvm.dbg.value(metadata i32 %29, metadata !38, metadata !DIExpression()), !dbg !40
  br label %30, !dbg !61

30:                                               ; preds = %5
  br label %31, !dbg !62

31:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 0, metadata !63, metadata !DIExpression()), !dbg !65
  %32 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !66
  call void @llvm.dbg.value(metadata i32* %32, metadata !68, metadata !DIExpression()), !dbg !69
  %33 = mul i32 0, 4, !dbg !66
  %34 = zext i32 %33 to i64, !dbg !66
  %35 = getelementptr inbounds i8, i8* %1, i64 %34, !dbg !66
  call void @llvm.dbg.value(metadata i8* %35, metadata !70, metadata !DIExpression()), !dbg !69
  %36 = call i32 @load32(i8* %35), !dbg !66
  %37 = call i32 @__uint32_identity(i32 %36), !dbg !66
  call void @llvm.dbg.value(metadata i32 %37, metadata !71, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i32 %37, metadata !72, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i32 %37, metadata !73, metadata !DIExpression()), !dbg !69
  %38 = zext i32 0 to i64, !dbg !66
  %39 = getelementptr inbounds i32, i32* %32, i64 %38, !dbg !66
  store i32 %37, i32* %39, align 4, !dbg !66
  %40 = add i32 0, 1, !dbg !66
  call void @llvm.dbg.value(metadata i32 %40, metadata !63, metadata !DIExpression()), !dbg !65
  %41 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !74
  call void @llvm.dbg.value(metadata i32* %41, metadata !76, metadata !DIExpression()), !dbg !77
  %42 = mul i32 %40, 4, !dbg !74
  %43 = zext i32 %42 to i64, !dbg !74
  %44 = getelementptr inbounds i8, i8* %1, i64 %43, !dbg !74
  call void @llvm.dbg.value(metadata i8* %44, metadata !78, metadata !DIExpression()), !dbg !77
  %45 = call i32 @load32(i8* %44), !dbg !74
  %46 = call i32 @__uint32_identity(i32 %45), !dbg !74
  call void @llvm.dbg.value(metadata i32 %46, metadata !79, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i32 %46, metadata !80, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i32 %46, metadata !81, metadata !DIExpression()), !dbg !77
  %47 = zext i32 %40 to i64, !dbg !74
  %48 = getelementptr inbounds i32, i32* %41, i64 %47, !dbg !74
  store i32 %46, i32* %48, align 4, !dbg !74
  %49 = add i32 %40, 1, !dbg !74
  call void @llvm.dbg.value(metadata i32 %49, metadata !63, metadata !DIExpression()), !dbg !65
  %50 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !82
  call void @llvm.dbg.value(metadata i32* %50, metadata !84, metadata !DIExpression()), !dbg !85
  %51 = mul i32 %49, 4, !dbg !82
  %52 = zext i32 %51 to i64, !dbg !82
  %53 = getelementptr inbounds i8, i8* %1, i64 %52, !dbg !82
  call void @llvm.dbg.value(metadata i8* %53, metadata !86, metadata !DIExpression()), !dbg !85
  %54 = call i32 @load32(i8* %53), !dbg !82
  %55 = call i32 @__uint32_identity(i32 %54), !dbg !82
  call void @llvm.dbg.value(metadata i32 %55, metadata !87, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 %55, metadata !88, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 %55, metadata !89, metadata !DIExpression()), !dbg !85
  %56 = zext i32 %49 to i64, !dbg !82
  %57 = getelementptr inbounds i32, i32* %50, i64 %56, !dbg !82
  store i32 %55, i32* %57, align 4, !dbg !82
  %58 = add i32 %49, 1, !dbg !82
  call void @llvm.dbg.value(metadata i32 %58, metadata !63, metadata !DIExpression()), !dbg !65
  %59 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !90
  call void @llvm.dbg.value(metadata i32* %59, metadata !92, metadata !DIExpression()), !dbg !93
  %60 = mul i32 %58, 4, !dbg !90
  %61 = zext i32 %60 to i64, !dbg !90
  %62 = getelementptr inbounds i8, i8* %1, i64 %61, !dbg !90
  call void @llvm.dbg.value(metadata i8* %62, metadata !94, metadata !DIExpression()), !dbg !93
  %63 = call i32 @load32(i8* %62), !dbg !90
  %64 = call i32 @__uint32_identity(i32 %63), !dbg !90
  call void @llvm.dbg.value(metadata i32 %64, metadata !95, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i32 %64, metadata !96, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i32 %64, metadata !97, metadata !DIExpression()), !dbg !93
  %65 = zext i32 %58 to i64, !dbg !90
  %66 = getelementptr inbounds i32, i32* %59, i64 %65, !dbg !90
  store i32 %64, i32* %66, align 4, !dbg !90
  %67 = add i32 %58, 1, !dbg !90
  call void @llvm.dbg.value(metadata i32 %67, metadata !63, metadata !DIExpression()), !dbg !65
  %68 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !98
  call void @llvm.dbg.value(metadata i32* %68, metadata !100, metadata !DIExpression()), !dbg !101
  %69 = mul i32 %67, 4, !dbg !98
  %70 = zext i32 %69 to i64, !dbg !98
  %71 = getelementptr inbounds i8, i8* %1, i64 %70, !dbg !98
  call void @llvm.dbg.value(metadata i8* %71, metadata !102, metadata !DIExpression()), !dbg !101
  %72 = call i32 @load32(i8* %71), !dbg !98
  %73 = call i32 @__uint32_identity(i32 %72), !dbg !98
  call void @llvm.dbg.value(metadata i32 %73, metadata !103, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32 %73, metadata !104, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32 %73, metadata !105, metadata !DIExpression()), !dbg !101
  %74 = zext i32 %67 to i64, !dbg !98
  %75 = getelementptr inbounds i32, i32* %68, i64 %74, !dbg !98
  store i32 %73, i32* %75, align 4, !dbg !98
  %76 = add i32 %67, 1, !dbg !98
  call void @llvm.dbg.value(metadata i32 %76, metadata !63, metadata !DIExpression()), !dbg !65
  %77 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !106
  call void @llvm.dbg.value(metadata i32* %77, metadata !108, metadata !DIExpression()), !dbg !109
  %78 = mul i32 %76, 4, !dbg !106
  %79 = zext i32 %78 to i64, !dbg !106
  %80 = getelementptr inbounds i8, i8* %1, i64 %79, !dbg !106
  call void @llvm.dbg.value(metadata i8* %80, metadata !110, metadata !DIExpression()), !dbg !109
  %81 = call i32 @load32(i8* %80), !dbg !106
  %82 = call i32 @__uint32_identity(i32 %81), !dbg !106
  call void @llvm.dbg.value(metadata i32 %82, metadata !111, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i32 %82, metadata !112, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i32 %82, metadata !113, metadata !DIExpression()), !dbg !109
  %83 = zext i32 %76 to i64, !dbg !106
  %84 = getelementptr inbounds i32, i32* %77, i64 %83, !dbg !106
  store i32 %82, i32* %84, align 4, !dbg !106
  %85 = add i32 %76, 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %85, metadata !63, metadata !DIExpression()), !dbg !65
  %86 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !114
  call void @llvm.dbg.value(metadata i32* %86, metadata !116, metadata !DIExpression()), !dbg !117
  %87 = mul i32 %85, 4, !dbg !114
  %88 = zext i32 %87 to i64, !dbg !114
  %89 = getelementptr inbounds i8, i8* %1, i64 %88, !dbg !114
  call void @llvm.dbg.value(metadata i8* %89, metadata !118, metadata !DIExpression()), !dbg !117
  %90 = call i32 @load32(i8* %89), !dbg !114
  %91 = call i32 @__uint32_identity(i32 %90), !dbg !114
  call void @llvm.dbg.value(metadata i32 %91, metadata !119, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 %91, metadata !120, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 %91, metadata !121, metadata !DIExpression()), !dbg !117
  %92 = zext i32 %85 to i64, !dbg !114
  %93 = getelementptr inbounds i32, i32* %86, i64 %92, !dbg !114
  store i32 %91, i32* %93, align 4, !dbg !114
  %94 = add i32 %85, 1, !dbg !114
  call void @llvm.dbg.value(metadata i32 %94, metadata !63, metadata !DIExpression()), !dbg !65
  %95 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !122
  call void @llvm.dbg.value(metadata i32* %95, metadata !124, metadata !DIExpression()), !dbg !125
  %96 = mul i32 %94, 4, !dbg !122
  %97 = zext i32 %96 to i64, !dbg !122
  %98 = getelementptr inbounds i8, i8* %1, i64 %97, !dbg !122
  call void @llvm.dbg.value(metadata i8* %98, metadata !126, metadata !DIExpression()), !dbg !125
  %99 = call i32 @load32(i8* %98), !dbg !122
  %100 = call i32 @__uint32_identity(i32 %99), !dbg !122
  call void @llvm.dbg.value(metadata i32 %100, metadata !127, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i32 %100, metadata !128, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i32 %100, metadata !129, metadata !DIExpression()), !dbg !125
  %101 = zext i32 %94 to i64, !dbg !122
  %102 = getelementptr inbounds i32, i32* %95, i64 %101, !dbg !122
  store i32 %100, i32* %102, align 4, !dbg !122
  %103 = add i32 %94, 1, !dbg !122
  call void @llvm.dbg.value(metadata i32 %103, metadata !63, metadata !DIExpression()), !dbg !65
  br label %104, !dbg !130

104:                                              ; preds = %31
  %105 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !131
  store i32 %3, i32* %105, align 4, !dbg !132
  br label %106, !dbg !133

106:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i32 0, metadata !134, metadata !DIExpression()), !dbg !136
  %107 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !137
  call void @llvm.dbg.value(metadata i32* %107, metadata !139, metadata !DIExpression()), !dbg !140
  %108 = mul i32 0, 4, !dbg !137
  %109 = zext i32 %108 to i64, !dbg !137
  %110 = getelementptr inbounds i8, i8* %2, i64 %109, !dbg !137
  call void @llvm.dbg.value(metadata i8* %110, metadata !141, metadata !DIExpression()), !dbg !140
  %111 = call i32 @load32(i8* %110), !dbg !137
  %112 = call i32 @__uint32_identity(i32 %111), !dbg !137
  call void @llvm.dbg.value(metadata i32 %112, metadata !142, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i32 %112, metadata !143, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i32 %112, metadata !144, metadata !DIExpression()), !dbg !140
  %113 = zext i32 0 to i64, !dbg !137
  %114 = getelementptr inbounds i32, i32* %107, i64 %113, !dbg !137
  store i32 %112, i32* %114, align 4, !dbg !137
  %115 = add i32 0, 1, !dbg !137
  call void @llvm.dbg.value(metadata i32 %115, metadata !134, metadata !DIExpression()), !dbg !136
  %116 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !145
  call void @llvm.dbg.value(metadata i32* %116, metadata !147, metadata !DIExpression()), !dbg !148
  %117 = mul i32 %115, 4, !dbg !145
  %118 = zext i32 %117 to i64, !dbg !145
  %119 = getelementptr inbounds i8, i8* %2, i64 %118, !dbg !145
  call void @llvm.dbg.value(metadata i8* %119, metadata !149, metadata !DIExpression()), !dbg !148
  %120 = call i32 @load32(i8* %119), !dbg !145
  %121 = call i32 @__uint32_identity(i32 %120), !dbg !145
  call void @llvm.dbg.value(metadata i32 %121, metadata !150, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 %121, metadata !151, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 %121, metadata !152, metadata !DIExpression()), !dbg !148
  %122 = zext i32 %115 to i64, !dbg !145
  %123 = getelementptr inbounds i32, i32* %116, i64 %122, !dbg !145
  store i32 %121, i32* %123, align 4, !dbg !145
  %124 = add i32 %115, 1, !dbg !145
  call void @llvm.dbg.value(metadata i32 %124, metadata !134, metadata !DIExpression()), !dbg !136
  %125 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !153
  call void @llvm.dbg.value(metadata i32* %125, metadata !155, metadata !DIExpression()), !dbg !156
  %126 = mul i32 %124, 4, !dbg !153
  %127 = zext i32 %126 to i64, !dbg !153
  %128 = getelementptr inbounds i8, i8* %2, i64 %127, !dbg !153
  call void @llvm.dbg.value(metadata i8* %128, metadata !157, metadata !DIExpression()), !dbg !156
  %129 = call i32 @load32(i8* %128), !dbg !153
  %130 = call i32 @__uint32_identity(i32 %129), !dbg !153
  call void @llvm.dbg.value(metadata i32 %130, metadata !158, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i32 %130, metadata !159, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i32 %130, metadata !160, metadata !DIExpression()), !dbg !156
  %131 = zext i32 %124 to i64, !dbg !153
  %132 = getelementptr inbounds i32, i32* %125, i64 %131, !dbg !153
  store i32 %130, i32* %132, align 4, !dbg !153
  %133 = add i32 %124, 1, !dbg !153
  call void @llvm.dbg.value(metadata i32 %133, metadata !134, metadata !DIExpression()), !dbg !136
  br label %134, !dbg !161

134:                                              ; preds = %106
  ret void, !dbg !162
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @load32(i8* %0) #0 !dbg !163 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata i32* %2, metadata !169, metadata !DIExpression()), !dbg !170
  %3 = bitcast i32* %2 to i8*, !dbg !171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 1 %0, i64 4, i1 false), !dbg !171
  %4 = load i32, i32* %2, align 4, !dbg !172
  ret i32 %4, !dbg !173
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @__uint32_identity(i32 %0) #0 !dbg !174 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !178, metadata !DIExpression()), !dbg !179
  ret i32 %0, !dbg !180
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Impl_Chacha20_chacha20_update(i32* %0, i32 %1, i8* %2, i8* %3) #0 !dbg !181 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %1, metadata !186, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %2, metadata !187, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %3, metadata !188, metadata !DIExpression()), !dbg !185
  %5 = urem i32 %1, 64, !dbg !189
  call void @llvm.dbg.value(metadata i32 %5, metadata !190, metadata !DIExpression()), !dbg !185
  %6 = udiv i32 %1, 64, !dbg !191
  call void @llvm.dbg.value(metadata i32 %6, metadata !192, metadata !DIExpression()), !dbg !185
  %7 = urem i32 %1, 64, !dbg !193
  call void @llvm.dbg.value(metadata i32 %7, metadata !194, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 0, metadata !195, metadata !DIExpression()), !dbg !197
  br label %8, !dbg !198

8:                                                ; preds = %17, %4
  %.0 = phi i32 [ 0, %4 ], [ %18, %17 ], !dbg !197
  call void @llvm.dbg.value(metadata i32 %.0, metadata !195, metadata !DIExpression()), !dbg !197
  %9 = icmp ult i32 %.0, %6, !dbg !199
  br i1 %9, label %10, label %19, !dbg !201

10:                                               ; preds = %8
  %11 = mul i32 %.0, 64, !dbg !202
  %12 = zext i32 %11 to i64, !dbg !204
  %13 = getelementptr inbounds i8, i8* %2, i64 %12, !dbg !204
  %14 = mul i32 %.0, 64, !dbg !205
  %15 = zext i32 %14 to i64, !dbg !206
  %16 = getelementptr inbounds i8, i8* %3, i64 %15, !dbg !206
  call void @chacha20_encrypt_block(i32* %0, i8* %13, i32 %.0, i8* %16), !dbg !207
  br label %17, !dbg !208

17:                                               ; preds = %10
  %18 = add i32 %.0, 1, !dbg !209
  call void @llvm.dbg.value(metadata i32 %18, metadata !195, metadata !DIExpression()), !dbg !197
  br label %8, !dbg !210, !llvm.loop !211

19:                                               ; preds = %8
  %20 = icmp ugt i32 %7, 0, !dbg !214
  br i1 %20, label %21, label %28, !dbg !216

21:                                               ; preds = %19
  %22 = mul i32 %6, 64, !dbg !217
  %23 = zext i32 %22 to i64, !dbg !219
  %24 = getelementptr inbounds i8, i8* %2, i64 %23, !dbg !219
  %25 = mul i32 %6, 64, !dbg !220
  %26 = zext i32 %25 to i64, !dbg !221
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !221
  call void @chacha20_encrypt_last(i32* %0, i32 %5, i8* %24, i32 %6, i8* %27), !dbg !222
  br label %28, !dbg !223

28:                                               ; preds = %21, %19
  ret void, !dbg !224
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_encrypt_block(i32* %0, i8* %1, i32 %2, i8* %3) #0 !dbg !225 {
  %5 = alloca [16 x i32], align 16
  %6 = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i8* %1, metadata !230, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32 %2, metadata !231, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i8* %3, metadata !232, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata [16 x i32]* %5, metadata !233, metadata !DIExpression()), !dbg !237
  %7 = bitcast [16 x i32]* %5 to i8*, !dbg !237
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 64, i1 false), !dbg !237
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !238
  call void @chacha20_core(i32* %8, i32* %0, i32 %2), !dbg !239
  call void @llvm.dbg.declare(metadata [16 x i32]* %6, metadata !240, metadata !DIExpression()), !dbg !241
  %9 = bitcast [16 x i32]* %6 to i8*, !dbg !241
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 64, i1 false), !dbg !241
  br label %10, !dbg !242

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !243, metadata !DIExpression()), !dbg !245
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !246
  call void @llvm.dbg.value(metadata i32* %11, metadata !248, metadata !DIExpression()), !dbg !249
  %12 = mul i32 0, 4, !dbg !246
  %13 = zext i32 %12 to i64, !dbg !246
  %14 = getelementptr inbounds i8, i8* %3, i64 %13, !dbg !246
  call void @llvm.dbg.value(metadata i8* %14, metadata !250, metadata !DIExpression()), !dbg !249
  %15 = call i32 @load32(i8* %14), !dbg !246
  %16 = call i32 @__uint32_identity(i32 %15), !dbg !246
  call void @llvm.dbg.value(metadata i32 %16, metadata !251, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 %16, metadata !252, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 %16, metadata !253, metadata !DIExpression()), !dbg !249
  %17 = zext i32 0 to i64, !dbg !246
  %18 = getelementptr inbounds i32, i32* %11, i64 %17, !dbg !246
  store i32 %16, i32* %18, align 4, !dbg !246
  %19 = add i32 0, 1, !dbg !246
  call void @llvm.dbg.value(metadata i32 %19, metadata !243, metadata !DIExpression()), !dbg !245
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !254
  call void @llvm.dbg.value(metadata i32* %20, metadata !256, metadata !DIExpression()), !dbg !257
  %21 = mul i32 %19, 4, !dbg !254
  %22 = zext i32 %21 to i64, !dbg !254
  %23 = getelementptr inbounds i8, i8* %3, i64 %22, !dbg !254
  call void @llvm.dbg.value(metadata i8* %23, metadata !258, metadata !DIExpression()), !dbg !257
  %24 = call i32 @load32(i8* %23), !dbg !254
  %25 = call i32 @__uint32_identity(i32 %24), !dbg !254
  call void @llvm.dbg.value(metadata i32 %25, metadata !259, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i32 %25, metadata !260, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i32 %25, metadata !261, metadata !DIExpression()), !dbg !257
  %26 = zext i32 %19 to i64, !dbg !254
  %27 = getelementptr inbounds i32, i32* %20, i64 %26, !dbg !254
  store i32 %25, i32* %27, align 4, !dbg !254
  %28 = add i32 %19, 1, !dbg !254
  call void @llvm.dbg.value(metadata i32 %28, metadata !243, metadata !DIExpression()), !dbg !245
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !262
  call void @llvm.dbg.value(metadata i32* %29, metadata !264, metadata !DIExpression()), !dbg !265
  %30 = mul i32 %28, 4, !dbg !262
  %31 = zext i32 %30 to i64, !dbg !262
  %32 = getelementptr inbounds i8, i8* %3, i64 %31, !dbg !262
  call void @llvm.dbg.value(metadata i8* %32, metadata !266, metadata !DIExpression()), !dbg !265
  %33 = call i32 @load32(i8* %32), !dbg !262
  %34 = call i32 @__uint32_identity(i32 %33), !dbg !262
  call void @llvm.dbg.value(metadata i32 %34, metadata !267, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 %34, metadata !268, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 %34, metadata !269, metadata !DIExpression()), !dbg !265
  %35 = zext i32 %28 to i64, !dbg !262
  %36 = getelementptr inbounds i32, i32* %29, i64 %35, !dbg !262
  store i32 %34, i32* %36, align 4, !dbg !262
  %37 = add i32 %28, 1, !dbg !262
  call void @llvm.dbg.value(metadata i32 %37, metadata !243, metadata !DIExpression()), !dbg !245
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !270
  call void @llvm.dbg.value(metadata i32* %38, metadata !272, metadata !DIExpression()), !dbg !273
  %39 = mul i32 %37, 4, !dbg !270
  %40 = zext i32 %39 to i64, !dbg !270
  %41 = getelementptr inbounds i8, i8* %3, i64 %40, !dbg !270
  call void @llvm.dbg.value(metadata i8* %41, metadata !274, metadata !DIExpression()), !dbg !273
  %42 = call i32 @load32(i8* %41), !dbg !270
  %43 = call i32 @__uint32_identity(i32 %42), !dbg !270
  call void @llvm.dbg.value(metadata i32 %43, metadata !275, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 %43, metadata !276, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 %43, metadata !277, metadata !DIExpression()), !dbg !273
  %44 = zext i32 %37 to i64, !dbg !270
  %45 = getelementptr inbounds i32, i32* %38, i64 %44, !dbg !270
  store i32 %43, i32* %45, align 4, !dbg !270
  %46 = add i32 %37, 1, !dbg !270
  call void @llvm.dbg.value(metadata i32 %46, metadata !243, metadata !DIExpression()), !dbg !245
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !278
  call void @llvm.dbg.value(metadata i32* %47, metadata !280, metadata !DIExpression()), !dbg !281
  %48 = mul i32 %46, 4, !dbg !278
  %49 = zext i32 %48 to i64, !dbg !278
  %50 = getelementptr inbounds i8, i8* %3, i64 %49, !dbg !278
  call void @llvm.dbg.value(metadata i8* %50, metadata !282, metadata !DIExpression()), !dbg !281
  %51 = call i32 @load32(i8* %50), !dbg !278
  %52 = call i32 @__uint32_identity(i32 %51), !dbg !278
  call void @llvm.dbg.value(metadata i32 %52, metadata !283, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 %52, metadata !284, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 %52, metadata !285, metadata !DIExpression()), !dbg !281
  %53 = zext i32 %46 to i64, !dbg !278
  %54 = getelementptr inbounds i32, i32* %47, i64 %53, !dbg !278
  store i32 %52, i32* %54, align 4, !dbg !278
  %55 = add i32 %46, 1, !dbg !278
  call void @llvm.dbg.value(metadata i32 %55, metadata !243, metadata !DIExpression()), !dbg !245
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !286
  call void @llvm.dbg.value(metadata i32* %56, metadata !288, metadata !DIExpression()), !dbg !289
  %57 = mul i32 %55, 4, !dbg !286
  %58 = zext i32 %57 to i64, !dbg !286
  %59 = getelementptr inbounds i8, i8* %3, i64 %58, !dbg !286
  call void @llvm.dbg.value(metadata i8* %59, metadata !290, metadata !DIExpression()), !dbg !289
  %60 = call i32 @load32(i8* %59), !dbg !286
  %61 = call i32 @__uint32_identity(i32 %60), !dbg !286
  call void @llvm.dbg.value(metadata i32 %61, metadata !291, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata i32 %61, metadata !292, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata i32 %61, metadata !293, metadata !DIExpression()), !dbg !289
  %62 = zext i32 %55 to i64, !dbg !286
  %63 = getelementptr inbounds i32, i32* %56, i64 %62, !dbg !286
  store i32 %61, i32* %63, align 4, !dbg !286
  %64 = add i32 %55, 1, !dbg !286
  call void @llvm.dbg.value(metadata i32 %64, metadata !243, metadata !DIExpression()), !dbg !245
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !294
  call void @llvm.dbg.value(metadata i32* %65, metadata !296, metadata !DIExpression()), !dbg !297
  %66 = mul i32 %64, 4, !dbg !294
  %67 = zext i32 %66 to i64, !dbg !294
  %68 = getelementptr inbounds i8, i8* %3, i64 %67, !dbg !294
  call void @llvm.dbg.value(metadata i8* %68, metadata !298, metadata !DIExpression()), !dbg !297
  %69 = call i32 @load32(i8* %68), !dbg !294
  %70 = call i32 @__uint32_identity(i32 %69), !dbg !294
  call void @llvm.dbg.value(metadata i32 %70, metadata !299, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i32 %70, metadata !300, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i32 %70, metadata !301, metadata !DIExpression()), !dbg !297
  %71 = zext i32 %64 to i64, !dbg !294
  %72 = getelementptr inbounds i32, i32* %65, i64 %71, !dbg !294
  store i32 %70, i32* %72, align 4, !dbg !294
  %73 = add i32 %64, 1, !dbg !294
  call void @llvm.dbg.value(metadata i32 %73, metadata !243, metadata !DIExpression()), !dbg !245
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !302
  call void @llvm.dbg.value(metadata i32* %74, metadata !304, metadata !DIExpression()), !dbg !305
  %75 = mul i32 %73, 4, !dbg !302
  %76 = zext i32 %75 to i64, !dbg !302
  %77 = getelementptr inbounds i8, i8* %3, i64 %76, !dbg !302
  call void @llvm.dbg.value(metadata i8* %77, metadata !306, metadata !DIExpression()), !dbg !305
  %78 = call i32 @load32(i8* %77), !dbg !302
  %79 = call i32 @__uint32_identity(i32 %78), !dbg !302
  call void @llvm.dbg.value(metadata i32 %79, metadata !307, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 %79, metadata !308, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 %79, metadata !309, metadata !DIExpression()), !dbg !305
  %80 = zext i32 %73 to i64, !dbg !302
  %81 = getelementptr inbounds i32, i32* %74, i64 %80, !dbg !302
  store i32 %79, i32* %81, align 4, !dbg !302
  %82 = add i32 %73, 1, !dbg !302
  call void @llvm.dbg.value(metadata i32 %82, metadata !243, metadata !DIExpression()), !dbg !245
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !310
  call void @llvm.dbg.value(metadata i32* %83, metadata !312, metadata !DIExpression()), !dbg !313
  %84 = mul i32 %82, 4, !dbg !310
  %85 = zext i32 %84 to i64, !dbg !310
  %86 = getelementptr inbounds i8, i8* %3, i64 %85, !dbg !310
  call void @llvm.dbg.value(metadata i8* %86, metadata !314, metadata !DIExpression()), !dbg !313
  %87 = call i32 @load32(i8* %86), !dbg !310
  %88 = call i32 @__uint32_identity(i32 %87), !dbg !310
  call void @llvm.dbg.value(metadata i32 %88, metadata !315, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 %88, metadata !316, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 %88, metadata !317, metadata !DIExpression()), !dbg !313
  %89 = zext i32 %82 to i64, !dbg !310
  %90 = getelementptr inbounds i32, i32* %83, i64 %89, !dbg !310
  store i32 %88, i32* %90, align 4, !dbg !310
  %91 = add i32 %82, 1, !dbg !310
  call void @llvm.dbg.value(metadata i32 %91, metadata !243, metadata !DIExpression()), !dbg !245
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !318
  call void @llvm.dbg.value(metadata i32* %92, metadata !320, metadata !DIExpression()), !dbg !321
  %93 = mul i32 %91, 4, !dbg !318
  %94 = zext i32 %93 to i64, !dbg !318
  %95 = getelementptr inbounds i8, i8* %3, i64 %94, !dbg !318
  call void @llvm.dbg.value(metadata i8* %95, metadata !322, metadata !DIExpression()), !dbg !321
  %96 = call i32 @load32(i8* %95), !dbg !318
  %97 = call i32 @__uint32_identity(i32 %96), !dbg !318
  call void @llvm.dbg.value(metadata i32 %97, metadata !323, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 %97, metadata !324, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 %97, metadata !325, metadata !DIExpression()), !dbg !321
  %98 = zext i32 %91 to i64, !dbg !318
  %99 = getelementptr inbounds i32, i32* %92, i64 %98, !dbg !318
  store i32 %97, i32* %99, align 4, !dbg !318
  %100 = add i32 %91, 1, !dbg !318
  call void @llvm.dbg.value(metadata i32 %100, metadata !243, metadata !DIExpression()), !dbg !245
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !326
  call void @llvm.dbg.value(metadata i32* %101, metadata !328, metadata !DIExpression()), !dbg !329
  %102 = mul i32 %100, 4, !dbg !326
  %103 = zext i32 %102 to i64, !dbg !326
  %104 = getelementptr inbounds i8, i8* %3, i64 %103, !dbg !326
  call void @llvm.dbg.value(metadata i8* %104, metadata !330, metadata !DIExpression()), !dbg !329
  %105 = call i32 @load32(i8* %104), !dbg !326
  %106 = call i32 @__uint32_identity(i32 %105), !dbg !326
  call void @llvm.dbg.value(metadata i32 %106, metadata !331, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %106, metadata !332, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %106, metadata !333, metadata !DIExpression()), !dbg !329
  %107 = zext i32 %100 to i64, !dbg !326
  %108 = getelementptr inbounds i32, i32* %101, i64 %107, !dbg !326
  store i32 %106, i32* %108, align 4, !dbg !326
  %109 = add i32 %100, 1, !dbg !326
  call void @llvm.dbg.value(metadata i32 %109, metadata !243, metadata !DIExpression()), !dbg !245
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !334
  call void @llvm.dbg.value(metadata i32* %110, metadata !336, metadata !DIExpression()), !dbg !337
  %111 = mul i32 %109, 4, !dbg !334
  %112 = zext i32 %111 to i64, !dbg !334
  %113 = getelementptr inbounds i8, i8* %3, i64 %112, !dbg !334
  call void @llvm.dbg.value(metadata i8* %113, metadata !338, metadata !DIExpression()), !dbg !337
  %114 = call i32 @load32(i8* %113), !dbg !334
  %115 = call i32 @__uint32_identity(i32 %114), !dbg !334
  call void @llvm.dbg.value(metadata i32 %115, metadata !339, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 %115, metadata !340, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 %115, metadata !341, metadata !DIExpression()), !dbg !337
  %116 = zext i32 %109 to i64, !dbg !334
  %117 = getelementptr inbounds i32, i32* %110, i64 %116, !dbg !334
  store i32 %115, i32* %117, align 4, !dbg !334
  %118 = add i32 %109, 1, !dbg !334
  call void @llvm.dbg.value(metadata i32 %118, metadata !243, metadata !DIExpression()), !dbg !245
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !342
  call void @llvm.dbg.value(metadata i32* %119, metadata !344, metadata !DIExpression()), !dbg !345
  %120 = mul i32 %118, 4, !dbg !342
  %121 = zext i32 %120 to i64, !dbg !342
  %122 = getelementptr inbounds i8, i8* %3, i64 %121, !dbg !342
  call void @llvm.dbg.value(metadata i8* %122, metadata !346, metadata !DIExpression()), !dbg !345
  %123 = call i32 @load32(i8* %122), !dbg !342
  %124 = call i32 @__uint32_identity(i32 %123), !dbg !342
  call void @llvm.dbg.value(metadata i32 %124, metadata !347, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 %124, metadata !348, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 %124, metadata !349, metadata !DIExpression()), !dbg !345
  %125 = zext i32 %118 to i64, !dbg !342
  %126 = getelementptr inbounds i32, i32* %119, i64 %125, !dbg !342
  store i32 %124, i32* %126, align 4, !dbg !342
  %127 = add i32 %118, 1, !dbg !342
  call void @llvm.dbg.value(metadata i32 %127, metadata !243, metadata !DIExpression()), !dbg !245
  %128 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !350
  call void @llvm.dbg.value(metadata i32* %128, metadata !352, metadata !DIExpression()), !dbg !353
  %129 = mul i32 %127, 4, !dbg !350
  %130 = zext i32 %129 to i64, !dbg !350
  %131 = getelementptr inbounds i8, i8* %3, i64 %130, !dbg !350
  call void @llvm.dbg.value(metadata i8* %131, metadata !354, metadata !DIExpression()), !dbg !353
  %132 = call i32 @load32(i8* %131), !dbg !350
  %133 = call i32 @__uint32_identity(i32 %132), !dbg !350
  call void @llvm.dbg.value(metadata i32 %133, metadata !355, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i32 %133, metadata !356, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i32 %133, metadata !357, metadata !DIExpression()), !dbg !353
  %134 = zext i32 %127 to i64, !dbg !350
  %135 = getelementptr inbounds i32, i32* %128, i64 %134, !dbg !350
  store i32 %133, i32* %135, align 4, !dbg !350
  %136 = add i32 %127, 1, !dbg !350
  call void @llvm.dbg.value(metadata i32 %136, metadata !243, metadata !DIExpression()), !dbg !245
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !358
  call void @llvm.dbg.value(metadata i32* %137, metadata !360, metadata !DIExpression()), !dbg !361
  %138 = mul i32 %136, 4, !dbg !358
  %139 = zext i32 %138 to i64, !dbg !358
  %140 = getelementptr inbounds i8, i8* %3, i64 %139, !dbg !358
  call void @llvm.dbg.value(metadata i8* %140, metadata !362, metadata !DIExpression()), !dbg !361
  %141 = call i32 @load32(i8* %140), !dbg !358
  %142 = call i32 @__uint32_identity(i32 %141), !dbg !358
  call void @llvm.dbg.value(metadata i32 %142, metadata !363, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 %142, metadata !364, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 %142, metadata !365, metadata !DIExpression()), !dbg !361
  %143 = zext i32 %136 to i64, !dbg !358
  %144 = getelementptr inbounds i32, i32* %137, i64 %143, !dbg !358
  store i32 %142, i32* %144, align 4, !dbg !358
  %145 = add i32 %136, 1, !dbg !358
  call void @llvm.dbg.value(metadata i32 %145, metadata !243, metadata !DIExpression()), !dbg !245
  %146 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !366
  call void @llvm.dbg.value(metadata i32* %146, metadata !368, metadata !DIExpression()), !dbg !369
  %147 = mul i32 %145, 4, !dbg !366
  %148 = zext i32 %147 to i64, !dbg !366
  %149 = getelementptr inbounds i8, i8* %3, i64 %148, !dbg !366
  call void @llvm.dbg.value(metadata i8* %149, metadata !370, metadata !DIExpression()), !dbg !369
  %150 = call i32 @load32(i8* %149), !dbg !366
  %151 = call i32 @__uint32_identity(i32 %150), !dbg !366
  call void @llvm.dbg.value(metadata i32 %151, metadata !371, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %151, metadata !372, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 %151, metadata !373, metadata !DIExpression()), !dbg !369
  %152 = zext i32 %145 to i64, !dbg !366
  %153 = getelementptr inbounds i32, i32* %146, i64 %152, !dbg !366
  store i32 %151, i32* %153, align 4, !dbg !366
  %154 = add i32 %145, 1, !dbg !366
  call void @llvm.dbg.value(metadata i32 %154, metadata !243, metadata !DIExpression()), !dbg !245
  br label %155, !dbg !374

155:                                              ; preds = %10
  br label %156, !dbg !375

156:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 0, metadata !376, metadata !DIExpression()), !dbg !378
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !379
  call void @llvm.dbg.value(metadata i32* %157, metadata !381, metadata !DIExpression()), !dbg !382
  %158 = zext i32 0 to i64, !dbg !379
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %158, !dbg !379
  %160 = load i32, i32* %159, align 4, !dbg !379
  %161 = zext i32 0 to i64, !dbg !379
  %162 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %161, !dbg !379
  %163 = load i32, i32* %162, align 4, !dbg !379
  %164 = xor i32 %160, %163, !dbg !379
  call void @llvm.dbg.value(metadata i32 %164, metadata !383, metadata !DIExpression()), !dbg !382
  %165 = zext i32 0 to i64, !dbg !379
  %166 = getelementptr inbounds i32, i32* %157, i64 %165, !dbg !379
  store i32 %164, i32* %166, align 4, !dbg !379
  %167 = add i32 0, 1, !dbg !379
  call void @llvm.dbg.value(metadata i32 %167, metadata !376, metadata !DIExpression()), !dbg !378
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !384
  call void @llvm.dbg.value(metadata i32* %168, metadata !386, metadata !DIExpression()), !dbg !387
  %169 = zext i32 %167 to i64, !dbg !384
  %170 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %169, !dbg !384
  %171 = load i32, i32* %170, align 4, !dbg !384
  %172 = zext i32 %167 to i64, !dbg !384
  %173 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %172, !dbg !384
  %174 = load i32, i32* %173, align 4, !dbg !384
  %175 = xor i32 %171, %174, !dbg !384
  call void @llvm.dbg.value(metadata i32 %175, metadata !388, metadata !DIExpression()), !dbg !387
  %176 = zext i32 %167 to i64, !dbg !384
  %177 = getelementptr inbounds i32, i32* %168, i64 %176, !dbg !384
  store i32 %175, i32* %177, align 4, !dbg !384
  %178 = add i32 %167, 1, !dbg !384
  call void @llvm.dbg.value(metadata i32 %178, metadata !376, metadata !DIExpression()), !dbg !378
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !389
  call void @llvm.dbg.value(metadata i32* %179, metadata !391, metadata !DIExpression()), !dbg !392
  %180 = zext i32 %178 to i64, !dbg !389
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %180, !dbg !389
  %182 = load i32, i32* %181, align 4, !dbg !389
  %183 = zext i32 %178 to i64, !dbg !389
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %183, !dbg !389
  %185 = load i32, i32* %184, align 4, !dbg !389
  %186 = xor i32 %182, %185, !dbg !389
  call void @llvm.dbg.value(metadata i32 %186, metadata !393, metadata !DIExpression()), !dbg !392
  %187 = zext i32 %178 to i64, !dbg !389
  %188 = getelementptr inbounds i32, i32* %179, i64 %187, !dbg !389
  store i32 %186, i32* %188, align 4, !dbg !389
  %189 = add i32 %178, 1, !dbg !389
  call void @llvm.dbg.value(metadata i32 %189, metadata !376, metadata !DIExpression()), !dbg !378
  %190 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !394
  call void @llvm.dbg.value(metadata i32* %190, metadata !396, metadata !DIExpression()), !dbg !397
  %191 = zext i32 %189 to i64, !dbg !394
  %192 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %191, !dbg !394
  %193 = load i32, i32* %192, align 4, !dbg !394
  %194 = zext i32 %189 to i64, !dbg !394
  %195 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %194, !dbg !394
  %196 = load i32, i32* %195, align 4, !dbg !394
  %197 = xor i32 %193, %196, !dbg !394
  call void @llvm.dbg.value(metadata i32 %197, metadata !398, metadata !DIExpression()), !dbg !397
  %198 = zext i32 %189 to i64, !dbg !394
  %199 = getelementptr inbounds i32, i32* %190, i64 %198, !dbg !394
  store i32 %197, i32* %199, align 4, !dbg !394
  %200 = add i32 %189, 1, !dbg !394
  call void @llvm.dbg.value(metadata i32 %200, metadata !376, metadata !DIExpression()), !dbg !378
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !399
  call void @llvm.dbg.value(metadata i32* %201, metadata !401, metadata !DIExpression()), !dbg !402
  %202 = zext i32 %200 to i64, !dbg !399
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %202, !dbg !399
  %204 = load i32, i32* %203, align 4, !dbg !399
  %205 = zext i32 %200 to i64, !dbg !399
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %205, !dbg !399
  %207 = load i32, i32* %206, align 4, !dbg !399
  %208 = xor i32 %204, %207, !dbg !399
  call void @llvm.dbg.value(metadata i32 %208, metadata !403, metadata !DIExpression()), !dbg !402
  %209 = zext i32 %200 to i64, !dbg !399
  %210 = getelementptr inbounds i32, i32* %201, i64 %209, !dbg !399
  store i32 %208, i32* %210, align 4, !dbg !399
  %211 = add i32 %200, 1, !dbg !399
  call void @llvm.dbg.value(metadata i32 %211, metadata !376, metadata !DIExpression()), !dbg !378
  %212 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !404
  call void @llvm.dbg.value(metadata i32* %212, metadata !406, metadata !DIExpression()), !dbg !407
  %213 = zext i32 %211 to i64, !dbg !404
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %213, !dbg !404
  %215 = load i32, i32* %214, align 4, !dbg !404
  %216 = zext i32 %211 to i64, !dbg !404
  %217 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %216, !dbg !404
  %218 = load i32, i32* %217, align 4, !dbg !404
  %219 = xor i32 %215, %218, !dbg !404
  call void @llvm.dbg.value(metadata i32 %219, metadata !408, metadata !DIExpression()), !dbg !407
  %220 = zext i32 %211 to i64, !dbg !404
  %221 = getelementptr inbounds i32, i32* %212, i64 %220, !dbg !404
  store i32 %219, i32* %221, align 4, !dbg !404
  %222 = add i32 %211, 1, !dbg !404
  call void @llvm.dbg.value(metadata i32 %222, metadata !376, metadata !DIExpression()), !dbg !378
  %223 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !409
  call void @llvm.dbg.value(metadata i32* %223, metadata !411, metadata !DIExpression()), !dbg !412
  %224 = zext i32 %222 to i64, !dbg !409
  %225 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %224, !dbg !409
  %226 = load i32, i32* %225, align 4, !dbg !409
  %227 = zext i32 %222 to i64, !dbg !409
  %228 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %227, !dbg !409
  %229 = load i32, i32* %228, align 4, !dbg !409
  %230 = xor i32 %226, %229, !dbg !409
  call void @llvm.dbg.value(metadata i32 %230, metadata !413, metadata !DIExpression()), !dbg !412
  %231 = zext i32 %222 to i64, !dbg !409
  %232 = getelementptr inbounds i32, i32* %223, i64 %231, !dbg !409
  store i32 %230, i32* %232, align 4, !dbg !409
  %233 = add i32 %222, 1, !dbg !409
  call void @llvm.dbg.value(metadata i32 %233, metadata !376, metadata !DIExpression()), !dbg !378
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !414
  call void @llvm.dbg.value(metadata i32* %234, metadata !416, metadata !DIExpression()), !dbg !417
  %235 = zext i32 %233 to i64, !dbg !414
  %236 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %235, !dbg !414
  %237 = load i32, i32* %236, align 4, !dbg !414
  %238 = zext i32 %233 to i64, !dbg !414
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %238, !dbg !414
  %240 = load i32, i32* %239, align 4, !dbg !414
  %241 = xor i32 %237, %240, !dbg !414
  call void @llvm.dbg.value(metadata i32 %241, metadata !418, metadata !DIExpression()), !dbg !417
  %242 = zext i32 %233 to i64, !dbg !414
  %243 = getelementptr inbounds i32, i32* %234, i64 %242, !dbg !414
  store i32 %241, i32* %243, align 4, !dbg !414
  %244 = add i32 %233, 1, !dbg !414
  call void @llvm.dbg.value(metadata i32 %244, metadata !376, metadata !DIExpression()), !dbg !378
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !419
  call void @llvm.dbg.value(metadata i32* %245, metadata !421, metadata !DIExpression()), !dbg !422
  %246 = zext i32 %244 to i64, !dbg !419
  %247 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %246, !dbg !419
  %248 = load i32, i32* %247, align 4, !dbg !419
  %249 = zext i32 %244 to i64, !dbg !419
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %249, !dbg !419
  %251 = load i32, i32* %250, align 4, !dbg !419
  %252 = xor i32 %248, %251, !dbg !419
  call void @llvm.dbg.value(metadata i32 %252, metadata !423, metadata !DIExpression()), !dbg !422
  %253 = zext i32 %244 to i64, !dbg !419
  %254 = getelementptr inbounds i32, i32* %245, i64 %253, !dbg !419
  store i32 %252, i32* %254, align 4, !dbg !419
  %255 = add i32 %244, 1, !dbg !419
  call void @llvm.dbg.value(metadata i32 %255, metadata !376, metadata !DIExpression()), !dbg !378
  %256 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !424
  call void @llvm.dbg.value(metadata i32* %256, metadata !426, metadata !DIExpression()), !dbg !427
  %257 = zext i32 %255 to i64, !dbg !424
  %258 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %257, !dbg !424
  %259 = load i32, i32* %258, align 4, !dbg !424
  %260 = zext i32 %255 to i64, !dbg !424
  %261 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %260, !dbg !424
  %262 = load i32, i32* %261, align 4, !dbg !424
  %263 = xor i32 %259, %262, !dbg !424
  call void @llvm.dbg.value(metadata i32 %263, metadata !428, metadata !DIExpression()), !dbg !427
  %264 = zext i32 %255 to i64, !dbg !424
  %265 = getelementptr inbounds i32, i32* %256, i64 %264, !dbg !424
  store i32 %263, i32* %265, align 4, !dbg !424
  %266 = add i32 %255, 1, !dbg !424
  call void @llvm.dbg.value(metadata i32 %266, metadata !376, metadata !DIExpression()), !dbg !378
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !429
  call void @llvm.dbg.value(metadata i32* %267, metadata !431, metadata !DIExpression()), !dbg !432
  %268 = zext i32 %266 to i64, !dbg !429
  %269 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %268, !dbg !429
  %270 = load i32, i32* %269, align 4, !dbg !429
  %271 = zext i32 %266 to i64, !dbg !429
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %271, !dbg !429
  %273 = load i32, i32* %272, align 4, !dbg !429
  %274 = xor i32 %270, %273, !dbg !429
  call void @llvm.dbg.value(metadata i32 %274, metadata !433, metadata !DIExpression()), !dbg !432
  %275 = zext i32 %266 to i64, !dbg !429
  %276 = getelementptr inbounds i32, i32* %267, i64 %275, !dbg !429
  store i32 %274, i32* %276, align 4, !dbg !429
  %277 = add i32 %266, 1, !dbg !429
  call void @llvm.dbg.value(metadata i32 %277, metadata !376, metadata !DIExpression()), !dbg !378
  %278 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !434
  call void @llvm.dbg.value(metadata i32* %278, metadata !436, metadata !DIExpression()), !dbg !437
  %279 = zext i32 %277 to i64, !dbg !434
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %279, !dbg !434
  %281 = load i32, i32* %280, align 4, !dbg !434
  %282 = zext i32 %277 to i64, !dbg !434
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %282, !dbg !434
  %284 = load i32, i32* %283, align 4, !dbg !434
  %285 = xor i32 %281, %284, !dbg !434
  call void @llvm.dbg.value(metadata i32 %285, metadata !438, metadata !DIExpression()), !dbg !437
  %286 = zext i32 %277 to i64, !dbg !434
  %287 = getelementptr inbounds i32, i32* %278, i64 %286, !dbg !434
  store i32 %285, i32* %287, align 4, !dbg !434
  %288 = add i32 %277, 1, !dbg !434
  call void @llvm.dbg.value(metadata i32 %288, metadata !376, metadata !DIExpression()), !dbg !378
  %289 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !439
  call void @llvm.dbg.value(metadata i32* %289, metadata !441, metadata !DIExpression()), !dbg !442
  %290 = zext i32 %288 to i64, !dbg !439
  %291 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %290, !dbg !439
  %292 = load i32, i32* %291, align 4, !dbg !439
  %293 = zext i32 %288 to i64, !dbg !439
  %294 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %293, !dbg !439
  %295 = load i32, i32* %294, align 4, !dbg !439
  %296 = xor i32 %292, %295, !dbg !439
  call void @llvm.dbg.value(metadata i32 %296, metadata !443, metadata !DIExpression()), !dbg !442
  %297 = zext i32 %288 to i64, !dbg !439
  %298 = getelementptr inbounds i32, i32* %289, i64 %297, !dbg !439
  store i32 %296, i32* %298, align 4, !dbg !439
  %299 = add i32 %288, 1, !dbg !439
  call void @llvm.dbg.value(metadata i32 %299, metadata !376, metadata !DIExpression()), !dbg !378
  %300 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !444
  call void @llvm.dbg.value(metadata i32* %300, metadata !446, metadata !DIExpression()), !dbg !447
  %301 = zext i32 %299 to i64, !dbg !444
  %302 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %301, !dbg !444
  %303 = load i32, i32* %302, align 4, !dbg !444
  %304 = zext i32 %299 to i64, !dbg !444
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %304, !dbg !444
  %306 = load i32, i32* %305, align 4, !dbg !444
  %307 = xor i32 %303, %306, !dbg !444
  call void @llvm.dbg.value(metadata i32 %307, metadata !448, metadata !DIExpression()), !dbg !447
  %308 = zext i32 %299 to i64, !dbg !444
  %309 = getelementptr inbounds i32, i32* %300, i64 %308, !dbg !444
  store i32 %307, i32* %309, align 4, !dbg !444
  %310 = add i32 %299, 1, !dbg !444
  call void @llvm.dbg.value(metadata i32 %310, metadata !376, metadata !DIExpression()), !dbg !378
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !449
  call void @llvm.dbg.value(metadata i32* %311, metadata !451, metadata !DIExpression()), !dbg !452
  %312 = zext i32 %310 to i64, !dbg !449
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %312, !dbg !449
  %314 = load i32, i32* %313, align 4, !dbg !449
  %315 = zext i32 %310 to i64, !dbg !449
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %315, !dbg !449
  %317 = load i32, i32* %316, align 4, !dbg !449
  %318 = xor i32 %314, %317, !dbg !449
  call void @llvm.dbg.value(metadata i32 %318, metadata !453, metadata !DIExpression()), !dbg !452
  %319 = zext i32 %310 to i64, !dbg !449
  %320 = getelementptr inbounds i32, i32* %311, i64 %319, !dbg !449
  store i32 %318, i32* %320, align 4, !dbg !449
  %321 = add i32 %310, 1, !dbg !449
  call void @llvm.dbg.value(metadata i32 %321, metadata !376, metadata !DIExpression()), !dbg !378
  %322 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !454
  call void @llvm.dbg.value(metadata i32* %322, metadata !456, metadata !DIExpression()), !dbg !457
  %323 = zext i32 %321 to i64, !dbg !454
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %323, !dbg !454
  %325 = load i32, i32* %324, align 4, !dbg !454
  %326 = zext i32 %321 to i64, !dbg !454
  %327 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %326, !dbg !454
  %328 = load i32, i32* %327, align 4, !dbg !454
  %329 = xor i32 %325, %328, !dbg !454
  call void @llvm.dbg.value(metadata i32 %329, metadata !458, metadata !DIExpression()), !dbg !457
  %330 = zext i32 %321 to i64, !dbg !454
  %331 = getelementptr inbounds i32, i32* %322, i64 %330, !dbg !454
  store i32 %329, i32* %331, align 4, !dbg !454
  %332 = add i32 %321, 1, !dbg !454
  call void @llvm.dbg.value(metadata i32 %332, metadata !376, metadata !DIExpression()), !dbg !378
  br label %333, !dbg !459

333:                                              ; preds = %156
  br label %334, !dbg !460

334:                                              ; preds = %333
  call void @llvm.dbg.value(metadata i32 0, metadata !461, metadata !DIExpression()), !dbg !463
  %335 = mul i32 0, 4, !dbg !464
  %336 = zext i32 %335 to i64, !dbg !464
  %337 = getelementptr inbounds i8, i8* %1, i64 %336, !dbg !464
  %338 = zext i32 0 to i64, !dbg !464
  %339 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %338, !dbg !464
  %340 = load i32, i32* %339, align 4, !dbg !464
  %341 = call i32 @__uint32_identity(i32 %340), !dbg !464
  call void @store32(i8* %337, i32 %341), !dbg !464
  %342 = add i32 0, 1, !dbg !464
  call void @llvm.dbg.value(metadata i32 %342, metadata !461, metadata !DIExpression()), !dbg !463
  %343 = mul i32 %342, 4, !dbg !466
  %344 = zext i32 %343 to i64, !dbg !466
  %345 = getelementptr inbounds i8, i8* %1, i64 %344, !dbg !466
  %346 = zext i32 %342 to i64, !dbg !466
  %347 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %346, !dbg !466
  %348 = load i32, i32* %347, align 4, !dbg !466
  %349 = call i32 @__uint32_identity(i32 %348), !dbg !466
  call void @store32(i8* %345, i32 %349), !dbg !466
  %350 = add i32 %342, 1, !dbg !466
  call void @llvm.dbg.value(metadata i32 %350, metadata !461, metadata !DIExpression()), !dbg !463
  %351 = mul i32 %350, 4, !dbg !468
  %352 = zext i32 %351 to i64, !dbg !468
  %353 = getelementptr inbounds i8, i8* %1, i64 %352, !dbg !468
  %354 = zext i32 %350 to i64, !dbg !468
  %355 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %354, !dbg !468
  %356 = load i32, i32* %355, align 4, !dbg !468
  %357 = call i32 @__uint32_identity(i32 %356), !dbg !468
  call void @store32(i8* %353, i32 %357), !dbg !468
  %358 = add i32 %350, 1, !dbg !468
  call void @llvm.dbg.value(metadata i32 %358, metadata !461, metadata !DIExpression()), !dbg !463
  %359 = mul i32 %358, 4, !dbg !470
  %360 = zext i32 %359 to i64, !dbg !470
  %361 = getelementptr inbounds i8, i8* %1, i64 %360, !dbg !470
  %362 = zext i32 %358 to i64, !dbg !470
  %363 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %362, !dbg !470
  %364 = load i32, i32* %363, align 4, !dbg !470
  %365 = call i32 @__uint32_identity(i32 %364), !dbg !470
  call void @store32(i8* %361, i32 %365), !dbg !470
  %366 = add i32 %358, 1, !dbg !470
  call void @llvm.dbg.value(metadata i32 %366, metadata !461, metadata !DIExpression()), !dbg !463
  %367 = mul i32 %366, 4, !dbg !472
  %368 = zext i32 %367 to i64, !dbg !472
  %369 = getelementptr inbounds i8, i8* %1, i64 %368, !dbg !472
  %370 = zext i32 %366 to i64, !dbg !472
  %371 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %370, !dbg !472
  %372 = load i32, i32* %371, align 4, !dbg !472
  %373 = call i32 @__uint32_identity(i32 %372), !dbg !472
  call void @store32(i8* %369, i32 %373), !dbg !472
  %374 = add i32 %366, 1, !dbg !472
  call void @llvm.dbg.value(metadata i32 %374, metadata !461, metadata !DIExpression()), !dbg !463
  %375 = mul i32 %374, 4, !dbg !474
  %376 = zext i32 %375 to i64, !dbg !474
  %377 = getelementptr inbounds i8, i8* %1, i64 %376, !dbg !474
  %378 = zext i32 %374 to i64, !dbg !474
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %378, !dbg !474
  %380 = load i32, i32* %379, align 4, !dbg !474
  %381 = call i32 @__uint32_identity(i32 %380), !dbg !474
  call void @store32(i8* %377, i32 %381), !dbg !474
  %382 = add i32 %374, 1, !dbg !474
  call void @llvm.dbg.value(metadata i32 %382, metadata !461, metadata !DIExpression()), !dbg !463
  %383 = mul i32 %382, 4, !dbg !476
  %384 = zext i32 %383 to i64, !dbg !476
  %385 = getelementptr inbounds i8, i8* %1, i64 %384, !dbg !476
  %386 = zext i32 %382 to i64, !dbg !476
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %386, !dbg !476
  %388 = load i32, i32* %387, align 4, !dbg !476
  %389 = call i32 @__uint32_identity(i32 %388), !dbg !476
  call void @store32(i8* %385, i32 %389), !dbg !476
  %390 = add i32 %382, 1, !dbg !476
  call void @llvm.dbg.value(metadata i32 %390, metadata !461, metadata !DIExpression()), !dbg !463
  %391 = mul i32 %390, 4, !dbg !478
  %392 = zext i32 %391 to i64, !dbg !478
  %393 = getelementptr inbounds i8, i8* %1, i64 %392, !dbg !478
  %394 = zext i32 %390 to i64, !dbg !478
  %395 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %394, !dbg !478
  %396 = load i32, i32* %395, align 4, !dbg !478
  %397 = call i32 @__uint32_identity(i32 %396), !dbg !478
  call void @store32(i8* %393, i32 %397), !dbg !478
  %398 = add i32 %390, 1, !dbg !478
  call void @llvm.dbg.value(metadata i32 %398, metadata !461, metadata !DIExpression()), !dbg !463
  %399 = mul i32 %398, 4, !dbg !480
  %400 = zext i32 %399 to i64, !dbg !480
  %401 = getelementptr inbounds i8, i8* %1, i64 %400, !dbg !480
  %402 = zext i32 %398 to i64, !dbg !480
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %402, !dbg !480
  %404 = load i32, i32* %403, align 4, !dbg !480
  %405 = call i32 @__uint32_identity(i32 %404), !dbg !480
  call void @store32(i8* %401, i32 %405), !dbg !480
  %406 = add i32 %398, 1, !dbg !480
  call void @llvm.dbg.value(metadata i32 %406, metadata !461, metadata !DIExpression()), !dbg !463
  %407 = mul i32 %406, 4, !dbg !482
  %408 = zext i32 %407 to i64, !dbg !482
  %409 = getelementptr inbounds i8, i8* %1, i64 %408, !dbg !482
  %410 = zext i32 %406 to i64, !dbg !482
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %410, !dbg !482
  %412 = load i32, i32* %411, align 4, !dbg !482
  %413 = call i32 @__uint32_identity(i32 %412), !dbg !482
  call void @store32(i8* %409, i32 %413), !dbg !482
  %414 = add i32 %406, 1, !dbg !482
  call void @llvm.dbg.value(metadata i32 %414, metadata !461, metadata !DIExpression()), !dbg !463
  %415 = mul i32 %414, 4, !dbg !484
  %416 = zext i32 %415 to i64, !dbg !484
  %417 = getelementptr inbounds i8, i8* %1, i64 %416, !dbg !484
  %418 = zext i32 %414 to i64, !dbg !484
  %419 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %418, !dbg !484
  %420 = load i32, i32* %419, align 4, !dbg !484
  %421 = call i32 @__uint32_identity(i32 %420), !dbg !484
  call void @store32(i8* %417, i32 %421), !dbg !484
  %422 = add i32 %414, 1, !dbg !484
  call void @llvm.dbg.value(metadata i32 %422, metadata !461, metadata !DIExpression()), !dbg !463
  %423 = mul i32 %422, 4, !dbg !486
  %424 = zext i32 %423 to i64, !dbg !486
  %425 = getelementptr inbounds i8, i8* %1, i64 %424, !dbg !486
  %426 = zext i32 %422 to i64, !dbg !486
  %427 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %426, !dbg !486
  %428 = load i32, i32* %427, align 4, !dbg !486
  %429 = call i32 @__uint32_identity(i32 %428), !dbg !486
  call void @store32(i8* %425, i32 %429), !dbg !486
  %430 = add i32 %422, 1, !dbg !486
  call void @llvm.dbg.value(metadata i32 %430, metadata !461, metadata !DIExpression()), !dbg !463
  %431 = mul i32 %430, 4, !dbg !488
  %432 = zext i32 %431 to i64, !dbg !488
  %433 = getelementptr inbounds i8, i8* %1, i64 %432, !dbg !488
  %434 = zext i32 %430 to i64, !dbg !488
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %434, !dbg !488
  %436 = load i32, i32* %435, align 4, !dbg !488
  %437 = call i32 @__uint32_identity(i32 %436), !dbg !488
  call void @store32(i8* %433, i32 %437), !dbg !488
  %438 = add i32 %430, 1, !dbg !488
  call void @llvm.dbg.value(metadata i32 %438, metadata !461, metadata !DIExpression()), !dbg !463
  %439 = mul i32 %438, 4, !dbg !490
  %440 = zext i32 %439 to i64, !dbg !490
  %441 = getelementptr inbounds i8, i8* %1, i64 %440, !dbg !490
  %442 = zext i32 %438 to i64, !dbg !490
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %442, !dbg !490
  %444 = load i32, i32* %443, align 4, !dbg !490
  %445 = call i32 @__uint32_identity(i32 %444), !dbg !490
  call void @store32(i8* %441, i32 %445), !dbg !490
  %446 = add i32 %438, 1, !dbg !490
  call void @llvm.dbg.value(metadata i32 %446, metadata !461, metadata !DIExpression()), !dbg !463
  %447 = mul i32 %446, 4, !dbg !492
  %448 = zext i32 %447 to i64, !dbg !492
  %449 = getelementptr inbounds i8, i8* %1, i64 %448, !dbg !492
  %450 = zext i32 %446 to i64, !dbg !492
  %451 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %450, !dbg !492
  %452 = load i32, i32* %451, align 4, !dbg !492
  %453 = call i32 @__uint32_identity(i32 %452), !dbg !492
  call void @store32(i8* %449, i32 %453), !dbg !492
  %454 = add i32 %446, 1, !dbg !492
  call void @llvm.dbg.value(metadata i32 %454, metadata !461, metadata !DIExpression()), !dbg !463
  %455 = mul i32 %454, 4, !dbg !494
  %456 = zext i32 %455 to i64, !dbg !494
  %457 = getelementptr inbounds i8, i8* %1, i64 %456, !dbg !494
  %458 = zext i32 %454 to i64, !dbg !494
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %458, !dbg !494
  %460 = load i32, i32* %459, align 4, !dbg !494
  %461 = call i32 @__uint32_identity(i32 %460), !dbg !494
  call void @store32(i8* %457, i32 %461), !dbg !494
  %462 = add i32 %454, 1, !dbg !494
  call void @llvm.dbg.value(metadata i32 %462, metadata !461, metadata !DIExpression()), !dbg !463
  br label %463, !dbg !496

463:                                              ; preds = %334
  ret void, !dbg !497
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_encrypt_last(i32* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 !dbg !498 {
  %6 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !501, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i32 %1, metadata !503, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i8* %2, metadata !504, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i32 %3, metadata !505, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i8* %4, metadata !506, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.declare(metadata [64 x i8]* %6, metadata !507, metadata !DIExpression()), !dbg !511
  %7 = bitcast [64 x i8]* %6 to i8*, !dbg !511
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 64, i1 false), !dbg !511
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !512
  %9 = zext i32 %1 to i64, !dbg !513
  %10 = mul i64 %9, 1, !dbg !514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 1 %4, i64 %10, i1 false), !dbg !512
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !515
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !516
  call void @chacha20_encrypt_block(i32* %0, i8* %11, i32 %3, i8* %12), !dbg !517
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !518
  %14 = zext i32 %1 to i64, !dbg !519
  %15 = mul i64 %14, 1, !dbg !520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 16 %13, i64 %15, i1 false), !dbg !518
  ret void, !dbg !521
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_core(i32* %0, i32* %1, i32 %2) #0 !dbg !522 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !525, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i32* %1, metadata !527, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i32 %2, metadata !528, metadata !DIExpression()), !dbg !526
  %4 = bitcast i32* %0 to i8*, !dbg !529
  %5 = bitcast i32* %1 to i8*, !dbg !529
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 64, i1 false), !dbg !529
  call void @llvm.dbg.value(metadata i32 %2, metadata !530, metadata !DIExpression()), !dbg !526
  %6 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !531
  %7 = load i32, i32* %6, align 4, !dbg !531
  %8 = add i32 %7, %2, !dbg !532
  %9 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !533
  store i32 %8, i32* %9, align 4, !dbg !534
  call void @rounds(i32* %0), !dbg !535
  br label %10, !dbg !536

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !540, metadata !DIExpression()), !dbg !542
  %11 = zext i32 0 to i64, !dbg !543
  %12 = getelementptr inbounds i32, i32* %0, i64 %11, !dbg !543
  %13 = load i32, i32* %12, align 4, !dbg !543
  %14 = zext i32 0 to i64, !dbg !543
  %15 = getelementptr inbounds i32, i32* %1, i64 %14, !dbg !543
  %16 = load i32, i32* %15, align 4, !dbg !543
  %17 = add i32 %13, %16, !dbg !543
  call void @llvm.dbg.value(metadata i32 %17, metadata !544, metadata !DIExpression()), !dbg !542
  %18 = zext i32 0 to i64, !dbg !543
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !543
  store i32 %17, i32* %19, align 4, !dbg !543
  %20 = add i32 0, 1, !dbg !543
  call void @llvm.dbg.value(metadata i32 %20, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !545, metadata !DIExpression()), !dbg !547
  %21 = zext i32 %20 to i64, !dbg !548
  %22 = getelementptr inbounds i32, i32* %0, i64 %21, !dbg !548
  %23 = load i32, i32* %22, align 4, !dbg !548
  %24 = zext i32 %20 to i64, !dbg !548
  %25 = getelementptr inbounds i32, i32* %1, i64 %24, !dbg !548
  %26 = load i32, i32* %25, align 4, !dbg !548
  %27 = add i32 %23, %26, !dbg !548
  call void @llvm.dbg.value(metadata i32 %27, metadata !549, metadata !DIExpression()), !dbg !547
  %28 = zext i32 %20 to i64, !dbg !548
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !548
  store i32 %27, i32* %29, align 4, !dbg !548
  %30 = add i32 %20, 1, !dbg !548
  call void @llvm.dbg.value(metadata i32 %30, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !550, metadata !DIExpression()), !dbg !552
  %31 = zext i32 %30 to i64, !dbg !553
  %32 = getelementptr inbounds i32, i32* %0, i64 %31, !dbg !553
  %33 = load i32, i32* %32, align 4, !dbg !553
  %34 = zext i32 %30 to i64, !dbg !553
  %35 = getelementptr inbounds i32, i32* %1, i64 %34, !dbg !553
  %36 = load i32, i32* %35, align 4, !dbg !553
  %37 = add i32 %33, %36, !dbg !553
  call void @llvm.dbg.value(metadata i32 %37, metadata !554, metadata !DIExpression()), !dbg !552
  %38 = zext i32 %30 to i64, !dbg !553
  %39 = getelementptr inbounds i32, i32* %0, i64 %38, !dbg !553
  store i32 %37, i32* %39, align 4, !dbg !553
  %40 = add i32 %30, 1, !dbg !553
  call void @llvm.dbg.value(metadata i32 %40, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !555, metadata !DIExpression()), !dbg !557
  %41 = zext i32 %40 to i64, !dbg !558
  %42 = getelementptr inbounds i32, i32* %0, i64 %41, !dbg !558
  %43 = load i32, i32* %42, align 4, !dbg !558
  %44 = zext i32 %40 to i64, !dbg !558
  %45 = getelementptr inbounds i32, i32* %1, i64 %44, !dbg !558
  %46 = load i32, i32* %45, align 4, !dbg !558
  %47 = add i32 %43, %46, !dbg !558
  call void @llvm.dbg.value(metadata i32 %47, metadata !559, metadata !DIExpression()), !dbg !557
  %48 = zext i32 %40 to i64, !dbg !558
  %49 = getelementptr inbounds i32, i32* %0, i64 %48, !dbg !558
  store i32 %47, i32* %49, align 4, !dbg !558
  %50 = add i32 %40, 1, !dbg !558
  call void @llvm.dbg.value(metadata i32 %50, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !560, metadata !DIExpression()), !dbg !562
  %51 = zext i32 %50 to i64, !dbg !563
  %52 = getelementptr inbounds i32, i32* %0, i64 %51, !dbg !563
  %53 = load i32, i32* %52, align 4, !dbg !563
  %54 = zext i32 %50 to i64, !dbg !563
  %55 = getelementptr inbounds i32, i32* %1, i64 %54, !dbg !563
  %56 = load i32, i32* %55, align 4, !dbg !563
  %57 = add i32 %53, %56, !dbg !563
  call void @llvm.dbg.value(metadata i32 %57, metadata !564, metadata !DIExpression()), !dbg !562
  %58 = zext i32 %50 to i64, !dbg !563
  %59 = getelementptr inbounds i32, i32* %0, i64 %58, !dbg !563
  store i32 %57, i32* %59, align 4, !dbg !563
  %60 = add i32 %50, 1, !dbg !563
  call void @llvm.dbg.value(metadata i32 %60, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !565, metadata !DIExpression()), !dbg !567
  %61 = zext i32 %60 to i64, !dbg !568
  %62 = getelementptr inbounds i32, i32* %0, i64 %61, !dbg !568
  %63 = load i32, i32* %62, align 4, !dbg !568
  %64 = zext i32 %60 to i64, !dbg !568
  %65 = getelementptr inbounds i32, i32* %1, i64 %64, !dbg !568
  %66 = load i32, i32* %65, align 4, !dbg !568
  %67 = add i32 %63, %66, !dbg !568
  call void @llvm.dbg.value(metadata i32 %67, metadata !569, metadata !DIExpression()), !dbg !567
  %68 = zext i32 %60 to i64, !dbg !568
  %69 = getelementptr inbounds i32, i32* %0, i64 %68, !dbg !568
  store i32 %67, i32* %69, align 4, !dbg !568
  %70 = add i32 %60, 1, !dbg !568
  call void @llvm.dbg.value(metadata i32 %70, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !570, metadata !DIExpression()), !dbg !572
  %71 = zext i32 %70 to i64, !dbg !573
  %72 = getelementptr inbounds i32, i32* %0, i64 %71, !dbg !573
  %73 = load i32, i32* %72, align 4, !dbg !573
  %74 = zext i32 %70 to i64, !dbg !573
  %75 = getelementptr inbounds i32, i32* %1, i64 %74, !dbg !573
  %76 = load i32, i32* %75, align 4, !dbg !573
  %77 = add i32 %73, %76, !dbg !573
  call void @llvm.dbg.value(metadata i32 %77, metadata !574, metadata !DIExpression()), !dbg !572
  %78 = zext i32 %70 to i64, !dbg !573
  %79 = getelementptr inbounds i32, i32* %0, i64 %78, !dbg !573
  store i32 %77, i32* %79, align 4, !dbg !573
  %80 = add i32 %70, 1, !dbg !573
  call void @llvm.dbg.value(metadata i32 %80, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !575, metadata !DIExpression()), !dbg !577
  %81 = zext i32 %80 to i64, !dbg !578
  %82 = getelementptr inbounds i32, i32* %0, i64 %81, !dbg !578
  %83 = load i32, i32* %82, align 4, !dbg !578
  %84 = zext i32 %80 to i64, !dbg !578
  %85 = getelementptr inbounds i32, i32* %1, i64 %84, !dbg !578
  %86 = load i32, i32* %85, align 4, !dbg !578
  %87 = add i32 %83, %86, !dbg !578
  call void @llvm.dbg.value(metadata i32 %87, metadata !579, metadata !DIExpression()), !dbg !577
  %88 = zext i32 %80 to i64, !dbg !578
  %89 = getelementptr inbounds i32, i32* %0, i64 %88, !dbg !578
  store i32 %87, i32* %89, align 4, !dbg !578
  %90 = add i32 %80, 1, !dbg !578
  call void @llvm.dbg.value(metadata i32 %90, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !580, metadata !DIExpression()), !dbg !582
  %91 = zext i32 %90 to i64, !dbg !583
  %92 = getelementptr inbounds i32, i32* %0, i64 %91, !dbg !583
  %93 = load i32, i32* %92, align 4, !dbg !583
  %94 = zext i32 %90 to i64, !dbg !583
  %95 = getelementptr inbounds i32, i32* %1, i64 %94, !dbg !583
  %96 = load i32, i32* %95, align 4, !dbg !583
  %97 = add i32 %93, %96, !dbg !583
  call void @llvm.dbg.value(metadata i32 %97, metadata !584, metadata !DIExpression()), !dbg !582
  %98 = zext i32 %90 to i64, !dbg !583
  %99 = getelementptr inbounds i32, i32* %0, i64 %98, !dbg !583
  store i32 %97, i32* %99, align 4, !dbg !583
  %100 = add i32 %90, 1, !dbg !583
  call void @llvm.dbg.value(metadata i32 %100, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !585, metadata !DIExpression()), !dbg !587
  %101 = zext i32 %100 to i64, !dbg !588
  %102 = getelementptr inbounds i32, i32* %0, i64 %101, !dbg !588
  %103 = load i32, i32* %102, align 4, !dbg !588
  %104 = zext i32 %100 to i64, !dbg !588
  %105 = getelementptr inbounds i32, i32* %1, i64 %104, !dbg !588
  %106 = load i32, i32* %105, align 4, !dbg !588
  %107 = add i32 %103, %106, !dbg !588
  call void @llvm.dbg.value(metadata i32 %107, metadata !589, metadata !DIExpression()), !dbg !587
  %108 = zext i32 %100 to i64, !dbg !588
  %109 = getelementptr inbounds i32, i32* %0, i64 %108, !dbg !588
  store i32 %107, i32* %109, align 4, !dbg !588
  %110 = add i32 %100, 1, !dbg !588
  call void @llvm.dbg.value(metadata i32 %110, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !590, metadata !DIExpression()), !dbg !592
  %111 = zext i32 %110 to i64, !dbg !593
  %112 = getelementptr inbounds i32, i32* %0, i64 %111, !dbg !593
  %113 = load i32, i32* %112, align 4, !dbg !593
  %114 = zext i32 %110 to i64, !dbg !593
  %115 = getelementptr inbounds i32, i32* %1, i64 %114, !dbg !593
  %116 = load i32, i32* %115, align 4, !dbg !593
  %117 = add i32 %113, %116, !dbg !593
  call void @llvm.dbg.value(metadata i32 %117, metadata !594, metadata !DIExpression()), !dbg !592
  %118 = zext i32 %110 to i64, !dbg !593
  %119 = getelementptr inbounds i32, i32* %0, i64 %118, !dbg !593
  store i32 %117, i32* %119, align 4, !dbg !593
  %120 = add i32 %110, 1, !dbg !593
  call void @llvm.dbg.value(metadata i32 %120, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !595, metadata !DIExpression()), !dbg !597
  %121 = zext i32 %120 to i64, !dbg !598
  %122 = getelementptr inbounds i32, i32* %0, i64 %121, !dbg !598
  %123 = load i32, i32* %122, align 4, !dbg !598
  %124 = zext i32 %120 to i64, !dbg !598
  %125 = getelementptr inbounds i32, i32* %1, i64 %124, !dbg !598
  %126 = load i32, i32* %125, align 4, !dbg !598
  %127 = add i32 %123, %126, !dbg !598
  call void @llvm.dbg.value(metadata i32 %127, metadata !599, metadata !DIExpression()), !dbg !597
  %128 = zext i32 %120 to i64, !dbg !598
  %129 = getelementptr inbounds i32, i32* %0, i64 %128, !dbg !598
  store i32 %127, i32* %129, align 4, !dbg !598
  %130 = add i32 %120, 1, !dbg !598
  call void @llvm.dbg.value(metadata i32 %130, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !600, metadata !DIExpression()), !dbg !602
  %131 = zext i32 %130 to i64, !dbg !603
  %132 = getelementptr inbounds i32, i32* %0, i64 %131, !dbg !603
  %133 = load i32, i32* %132, align 4, !dbg !603
  %134 = zext i32 %130 to i64, !dbg !603
  %135 = getelementptr inbounds i32, i32* %1, i64 %134, !dbg !603
  %136 = load i32, i32* %135, align 4, !dbg !603
  %137 = add i32 %133, %136, !dbg !603
  call void @llvm.dbg.value(metadata i32 %137, metadata !604, metadata !DIExpression()), !dbg !602
  %138 = zext i32 %130 to i64, !dbg !603
  %139 = getelementptr inbounds i32, i32* %0, i64 %138, !dbg !603
  store i32 %137, i32* %139, align 4, !dbg !603
  %140 = add i32 %130, 1, !dbg !603
  call void @llvm.dbg.value(metadata i32 %140, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !605, metadata !DIExpression()), !dbg !607
  %141 = zext i32 %140 to i64, !dbg !608
  %142 = getelementptr inbounds i32, i32* %0, i64 %141, !dbg !608
  %143 = load i32, i32* %142, align 4, !dbg !608
  %144 = zext i32 %140 to i64, !dbg !608
  %145 = getelementptr inbounds i32, i32* %1, i64 %144, !dbg !608
  %146 = load i32, i32* %145, align 4, !dbg !608
  %147 = add i32 %143, %146, !dbg !608
  call void @llvm.dbg.value(metadata i32 %147, metadata !609, metadata !DIExpression()), !dbg !607
  %148 = zext i32 %140 to i64, !dbg !608
  %149 = getelementptr inbounds i32, i32* %0, i64 %148, !dbg !608
  store i32 %147, i32* %149, align 4, !dbg !608
  %150 = add i32 %140, 1, !dbg !608
  call void @llvm.dbg.value(metadata i32 %150, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !610, metadata !DIExpression()), !dbg !612
  %151 = zext i32 %150 to i64, !dbg !613
  %152 = getelementptr inbounds i32, i32* %0, i64 %151, !dbg !613
  %153 = load i32, i32* %152, align 4, !dbg !613
  %154 = zext i32 %150 to i64, !dbg !613
  %155 = getelementptr inbounds i32, i32* %1, i64 %154, !dbg !613
  %156 = load i32, i32* %155, align 4, !dbg !613
  %157 = add i32 %153, %156, !dbg !613
  call void @llvm.dbg.value(metadata i32 %157, metadata !614, metadata !DIExpression()), !dbg !612
  %158 = zext i32 %150 to i64, !dbg !613
  %159 = getelementptr inbounds i32, i32* %0, i64 %158, !dbg !613
  store i32 %157, i32* %159, align 4, !dbg !613
  %160 = add i32 %150, 1, !dbg !613
  call void @llvm.dbg.value(metadata i32 %160, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i32* %0, metadata !615, metadata !DIExpression()), !dbg !617
  %161 = zext i32 %160 to i64, !dbg !618
  %162 = getelementptr inbounds i32, i32* %0, i64 %161, !dbg !618
  %163 = load i32, i32* %162, align 4, !dbg !618
  %164 = zext i32 %160 to i64, !dbg !618
  %165 = getelementptr inbounds i32, i32* %1, i64 %164, !dbg !618
  %166 = load i32, i32* %165, align 4, !dbg !618
  %167 = add i32 %163, %166, !dbg !618
  call void @llvm.dbg.value(metadata i32 %167, metadata !619, metadata !DIExpression()), !dbg !617
  %168 = zext i32 %160 to i64, !dbg !618
  %169 = getelementptr inbounds i32, i32* %0, i64 %168, !dbg !618
  store i32 %167, i32* %169, align 4, !dbg !618
  %170 = add i32 %160, 1, !dbg !618
  call void @llvm.dbg.value(metadata i32 %170, metadata !537, metadata !DIExpression()), !dbg !539
  br label %171, !dbg !620

171:                                              ; preds = %10
  %172 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !621
  %173 = load i32, i32* %172, align 4, !dbg !621
  %174 = add i32 %173, %2, !dbg !622
  %175 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !623
  store i32 %174, i32* %175, align 4, !dbg !624
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind uwtable
define internal void @store32(i8* %0, i32 %1) #0 !dbg !626 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !629, metadata !DIExpression()), !dbg !630
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !631, metadata !DIExpression()), !dbg !632
  %4 = bitcast i32* %3 to i8*, !dbg !633
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 4 %4, i64 4, i1 false), !dbg !633
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind uwtable
define internal void @rounds(i32* %0) #0 !dbg !635 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !638, metadata !DIExpression()), !dbg !639
  call void @double_round(i32* %0), !dbg !640
  call void @double_round(i32* %0), !dbg !641
  call void @double_round(i32* %0), !dbg !642
  call void @double_round(i32* %0), !dbg !643
  call void @double_round(i32* %0), !dbg !644
  call void @double_round(i32* %0), !dbg !645
  call void @double_round(i32* %0), !dbg !646
  call void @double_round(i32* %0), !dbg !647
  call void @double_round(i32* %0), !dbg !648
  call void @double_round(i32* %0), !dbg !649
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind uwtable
define internal void @double_round(i32* %0) #0 !dbg !651 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !652, metadata !DIExpression()), !dbg !653
  call void @quarter_round(i32* %0, i32 0, i32 4, i32 8, i32 12), !dbg !654
  call void @quarter_round(i32* %0, i32 1, i32 5, i32 9, i32 13), !dbg !655
  call void @quarter_round(i32* %0, i32 2, i32 6, i32 10, i32 14), !dbg !656
  call void @quarter_round(i32* %0, i32 3, i32 7, i32 11, i32 15), !dbg !657
  call void @quarter_round(i32* %0, i32 0, i32 5, i32 10, i32 15), !dbg !658
  call void @quarter_round(i32* %0, i32 1, i32 6, i32 11, i32 12), !dbg !659
  call void @quarter_round(i32* %0, i32 2, i32 7, i32 8, i32 13), !dbg !660
  call void @quarter_round(i32* %0, i32 3, i32 4, i32 9, i32 14), !dbg !661
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind uwtable
define internal void @quarter_round(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 !dbg !663 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !666, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %1, metadata !668, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %2, metadata !669, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %3, metadata !670, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %4, metadata !671, metadata !DIExpression()), !dbg !667
  %6 = zext i32 %1 to i64, !dbg !672
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !672
  %8 = load i32, i32* %7, align 4, !dbg !672
  call void @llvm.dbg.value(metadata i32 %8, metadata !673, metadata !DIExpression()), !dbg !667
  %9 = zext i32 %2 to i64, !dbg !674
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !674
  %11 = load i32, i32* %10, align 4, !dbg !674
  call void @llvm.dbg.value(metadata i32 %11, metadata !675, metadata !DIExpression()), !dbg !667
  %12 = zext i32 %4 to i64, !dbg !676
  %13 = getelementptr inbounds i32, i32* %0, i64 %12, !dbg !676
  %14 = load i32, i32* %13, align 4, !dbg !676
  call void @llvm.dbg.value(metadata i32 %14, metadata !677, metadata !DIExpression()), !dbg !667
  %15 = add i32 %8, %11, !dbg !678
  call void @llvm.dbg.value(metadata i32 %15, metadata !679, metadata !DIExpression()), !dbg !667
  %16 = xor i32 %14, %15, !dbg !680
  call void @llvm.dbg.value(metadata i32 %16, metadata !681, metadata !DIExpression()), !dbg !667
  %17 = shl i32 %16, 16, !dbg !682
  %18 = lshr i32 %16, 16, !dbg !683
  %19 = or i32 %17, %18, !dbg !684
  call void @llvm.dbg.value(metadata i32 %19, metadata !685, metadata !DIExpression()), !dbg !667
  %20 = zext i32 %1 to i64, !dbg !686
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !686
  store i32 %15, i32* %21, align 4, !dbg !687
  %22 = zext i32 %4 to i64, !dbg !688
  %23 = getelementptr inbounds i32, i32* %0, i64 %22, !dbg !688
  store i32 %19, i32* %23, align 4, !dbg !689
  %24 = zext i32 %3 to i64, !dbg !690
  %25 = getelementptr inbounds i32, i32* %0, i64 %24, !dbg !690
  %26 = load i32, i32* %25, align 4, !dbg !690
  call void @llvm.dbg.value(metadata i32 %26, metadata !691, metadata !DIExpression()), !dbg !667
  %27 = zext i32 %4 to i64, !dbg !692
  %28 = getelementptr inbounds i32, i32* %0, i64 %27, !dbg !692
  %29 = load i32, i32* %28, align 4, !dbg !692
  call void @llvm.dbg.value(metadata i32 %29, metadata !693, metadata !DIExpression()), !dbg !667
  %30 = zext i32 %2 to i64, !dbg !694
  %31 = getelementptr inbounds i32, i32* %0, i64 %30, !dbg !694
  %32 = load i32, i32* %31, align 4, !dbg !694
  call void @llvm.dbg.value(metadata i32 %32, metadata !695, metadata !DIExpression()), !dbg !667
  %33 = add i32 %26, %29, !dbg !696
  call void @llvm.dbg.value(metadata i32 %33, metadata !697, metadata !DIExpression()), !dbg !667
  %34 = xor i32 %32, %33, !dbg !698
  call void @llvm.dbg.value(metadata i32 %34, metadata !699, metadata !DIExpression()), !dbg !667
  %35 = shl i32 %34, 12, !dbg !700
  %36 = lshr i32 %34, 20, !dbg !701
  %37 = or i32 %35, %36, !dbg !702
  call void @llvm.dbg.value(metadata i32 %37, metadata !703, metadata !DIExpression()), !dbg !667
  %38 = zext i32 %3 to i64, !dbg !704
  %39 = getelementptr inbounds i32, i32* %0, i64 %38, !dbg !704
  store i32 %33, i32* %39, align 4, !dbg !705
  %40 = zext i32 %2 to i64, !dbg !706
  %41 = getelementptr inbounds i32, i32* %0, i64 %40, !dbg !706
  store i32 %37, i32* %41, align 4, !dbg !707
  %42 = zext i32 %1 to i64, !dbg !708
  %43 = getelementptr inbounds i32, i32* %0, i64 %42, !dbg !708
  %44 = load i32, i32* %43, align 4, !dbg !708
  call void @llvm.dbg.value(metadata i32 %44, metadata !709, metadata !DIExpression()), !dbg !667
  %45 = zext i32 %2 to i64, !dbg !710
  %46 = getelementptr inbounds i32, i32* %0, i64 %45, !dbg !710
  %47 = load i32, i32* %46, align 4, !dbg !710
  call void @llvm.dbg.value(metadata i32 %47, metadata !711, metadata !DIExpression()), !dbg !667
  %48 = zext i32 %4 to i64, !dbg !712
  %49 = getelementptr inbounds i32, i32* %0, i64 %48, !dbg !712
  %50 = load i32, i32* %49, align 4, !dbg !712
  call void @llvm.dbg.value(metadata i32 %50, metadata !713, metadata !DIExpression()), !dbg !667
  %51 = add i32 %44, %47, !dbg !714
  call void @llvm.dbg.value(metadata i32 %51, metadata !715, metadata !DIExpression()), !dbg !667
  %52 = xor i32 %50, %51, !dbg !716
  call void @llvm.dbg.value(metadata i32 %52, metadata !717, metadata !DIExpression()), !dbg !667
  %53 = shl i32 %52, 8, !dbg !718
  %54 = lshr i32 %52, 24, !dbg !719
  %55 = or i32 %53, %54, !dbg !720
  call void @llvm.dbg.value(metadata i32 %55, metadata !721, metadata !DIExpression()), !dbg !667
  %56 = zext i32 %1 to i64, !dbg !722
  %57 = getelementptr inbounds i32, i32* %0, i64 %56, !dbg !722
  store i32 %51, i32* %57, align 4, !dbg !723
  %58 = zext i32 %4 to i64, !dbg !724
  %59 = getelementptr inbounds i32, i32* %0, i64 %58, !dbg !724
  store i32 %55, i32* %59, align 4, !dbg !725
  %60 = zext i32 %3 to i64, !dbg !726
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !726
  %62 = load i32, i32* %61, align 4, !dbg !726
  call void @llvm.dbg.value(metadata i32 %62, metadata !727, metadata !DIExpression()), !dbg !667
  %63 = zext i32 %4 to i64, !dbg !728
  %64 = getelementptr inbounds i32, i32* %0, i64 %63, !dbg !728
  %65 = load i32, i32* %64, align 4, !dbg !728
  call void @llvm.dbg.value(metadata i32 %65, metadata !729, metadata !DIExpression()), !dbg !667
  %66 = zext i32 %2 to i64, !dbg !730
  %67 = getelementptr inbounds i32, i32* %0, i64 %66, !dbg !730
  %68 = load i32, i32* %67, align 4, !dbg !730
  call void @llvm.dbg.value(metadata i32 %68, metadata !731, metadata !DIExpression()), !dbg !667
  %69 = add i32 %62, %65, !dbg !732
  call void @llvm.dbg.value(metadata i32 %69, metadata !733, metadata !DIExpression()), !dbg !667
  %70 = xor i32 %68, %69, !dbg !734
  call void @llvm.dbg.value(metadata i32 %70, metadata !735, metadata !DIExpression()), !dbg !667
  %71 = shl i32 %70, 7, !dbg !736
  %72 = lshr i32 %70, 25, !dbg !737
  %73 = or i32 %71, %72, !dbg !738
  call void @llvm.dbg.value(metadata i32 %73, metadata !739, metadata !DIExpression()), !dbg !667
  %74 = zext i32 %3 to i64, !dbg !740
  %75 = getelementptr inbounds i32, i32* %0, i64 %74, !dbg !740
  store i32 %69, i32* %75, align 4, !dbg !741
  %76 = zext i32 %2 to i64, !dbg !742
  %77 = getelementptr inbounds i32, i32* %0, i64 %76, !dbg !742
  store i32 %73, i32* %77, align 4, !dbg !743
  ret void, !dbg !744
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_encrypt(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 !dbg !745 {
  %7 = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !748, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i8* %1, metadata !750, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i8* %2, metadata !751, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i8* %3, metadata !752, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i8* %4, metadata !753, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i32 %5, metadata !754, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !755, metadata !DIExpression()), !dbg !756
  %8 = bitcast [16 x i32]* %7 to i8*, !dbg !756
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 64, i1 false), !dbg !756
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !757
  call void @Hacl_Impl_Chacha20_chacha20_init(i32* %9, i8* %3, i8* %4, i32 %5), !dbg !758
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !759
  call void @Hacl_Impl_Chacha20_chacha20_update(i32* %10, i32 %0, i8* %1, i8* %2), !dbg !760
  ret void, !dbg !761
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_decrypt(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 !dbg !762 {
  %7 = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !763, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8* %1, metadata !765, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8* %2, metadata !766, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8* %3, metadata !767, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8* %4, metadata !768, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i32 %5, metadata !769, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !770, metadata !DIExpression()), !dbg !771
  %8 = bitcast [16 x i32]* %7 to i8*, !dbg !771
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 64, i1 false), !dbg !771
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !772
  call void @Hacl_Impl_Chacha20_chacha20_init(i32* %9, i8* %3, i8* %4, i32 %5), !dbg !773
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !774
  call void @Hacl_Impl_Chacha20_chacha20_update(i32* %10, i32 %0, i8* %1, i8* %2), !dbg !775
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_encrypt_wrapper(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 !dbg !777 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !778, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8* %1, metadata !780, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8* %2, metadata !781, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8* %3, metadata !782, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8* %4, metadata !783, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i32 %5, metadata !784, metadata !DIExpression()), !dbg !779
  %7 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %0), !dbg !785
  call void @public_in(%struct.smack_value* %7), !dbg !786
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !787
  call void @public_in(%struct.smack_value* %8), !dbg !788
  %9 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !789
  call void @public_in(%struct.smack_value* %9), !dbg !790
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !791
  call void @public_in(%struct.smack_value* %10), !dbg !792
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !793
  call void @public_in(%struct.smack_value* %11), !dbg !794
  %12 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %5), !dbg !795
  call void @public_in(%struct.smack_value* %12), !dbg !796
  %13 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 64), !dbg !797
  call void @public_in(%struct.smack_value* %13), !dbg !798
  call void @Hacl_Chacha20_chacha20_encrypt(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5), !dbg !799
  ret void, !dbg !800
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_encrypt_wrapper_t() #0 !dbg !801 {
  %1 = call i8* (...) @getpt1(), !dbg !804
  call void @llvm.dbg.value(metadata i8* %1, metadata !805, metadata !DIExpression()), !dbg !806
  %2 = call i8* (...) @getpt2(), !dbg !807
  call void @llvm.dbg.value(metadata i8* %2, metadata !808, metadata !DIExpression()), !dbg !806
  %3 = call i8* (...) @getpt3(), !dbg !809
  call void @llvm.dbg.value(metadata i8* %3, metadata !810, metadata !DIExpression()), !dbg !806
  %4 = call i8* (...) @getpt4(), !dbg !811
  call void @llvm.dbg.value(metadata i8* %4, metadata !812, metadata !DIExpression()), !dbg !806
  %5 = call i32 (...) @getnum(), !dbg !813
  call void @llvm.dbg.value(metadata i32 %5, metadata !814, metadata !DIExpression()), !dbg !806
  %6 = call i32 (...) @getnum(), !dbg !815
  call void @llvm.dbg.value(metadata i32 %6, metadata !816, metadata !DIExpression()), !dbg !806
  call void @Hacl_Chacha20_chacha20_encrypt(i32 %5, i8* %1, i8* %2, i8* %3, i8* %4, i32 %6), !dbg !817
  ret void, !dbg !818
}

declare dso_local i8* @getpt1(...) #4

declare dso_local i8* @getpt2(...) #4

declare dso_local i8* @getpt3(...) #4

declare dso_local i8* @getpt4(...) #4

declare dso_local i32 @getnum(...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2, !18}
!llvm.ident = !{!20, !20}
!llvm.module.flags = !{!21, !22, !23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Hacl_Impl_Chacha20_Vec_chacha20_constants", scope: !2, file: !3, line: 30, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../hacl-star/dist/gcc-compatible/Hacl_Chacha20.c", directory: "/home/luwei/bech-back/HACL/ChaCha20")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!0, !12}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "chacha20_constants", scope: !2, file: !3, line: 113, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!16 = !{!17}
!17 = !DISubrange(count: 4)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "Hacl_Chacha20_chacha20_encrypt.c", directory: "/home/luwei/bech-back/HACL/ChaCha20")
!20 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!21 = !{i32 7, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_init", scope: !3, file: !3, line: 116, type: !25, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27, !28, !28, !6}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DILocalVariable(name: "ctx", arg: 1, scope: !24, file: !3, line: 116, type: !27)
!33 = !DILocation(line: 0, scope: !24)
!34 = !DILocalVariable(name: "k", arg: 2, scope: !24, file: !3, line: 116, type: !28)
!35 = !DILocalVariable(name: "n", arg: 3, scope: !24, file: !3, line: 116, type: !28)
!36 = !DILocalVariable(name: "ctr", arg: 4, scope: !24, file: !3, line: 116, type: !6)
!37 = !DILocation(line: 118, column: 3, scope: !24)
!38 = !DILocalVariable(name: "i", scope: !39, file: !3, line: 118, type: !6)
!39 = distinct !DILexicalBlock(scope: !24, file: !3, line: 118, column: 3)
!40 = !DILocation(line: 0, scope: !39)
!41 = !DILocalVariable(name: "os", scope: !42, file: !3, line: 118, type: !27)
!42 = distinct !DILexicalBlock(scope: !39, file: !3, line: 118, column: 3)
!43 = !DILocation(line: 0, scope: !42)
!44 = !DILocation(line: 118, column: 3, scope: !42)
!45 = !DILocalVariable(name: "x", scope: !42, file: !3, line: 118, type: !6)
!46 = !DILocalVariable(name: "os", scope: !47, file: !3, line: 118, type: !27)
!47 = distinct !DILexicalBlock(scope: !39, file: !3, line: 118, column: 3)
!48 = !DILocation(line: 0, scope: !47)
!49 = !DILocation(line: 118, column: 3, scope: !47)
!50 = !DILocalVariable(name: "x", scope: !47, file: !3, line: 118, type: !6)
!51 = !DILocalVariable(name: "os", scope: !52, file: !3, line: 118, type: !27)
!52 = distinct !DILexicalBlock(scope: !39, file: !3, line: 118, column: 3)
!53 = !DILocation(line: 0, scope: !52)
!54 = !DILocation(line: 118, column: 3, scope: !52)
!55 = !DILocalVariable(name: "x", scope: !52, file: !3, line: 118, type: !6)
!56 = !DILocalVariable(name: "os", scope: !57, file: !3, line: 118, type: !27)
!57 = distinct !DILexicalBlock(scope: !39, file: !3, line: 118, column: 3)
!58 = !DILocation(line: 0, scope: !57)
!59 = !DILocation(line: 118, column: 3, scope: !57)
!60 = !DILocalVariable(name: "x", scope: !57, file: !3, line: 118, type: !6)
!61 = !DILocation(line: 118, column: 3, scope: !39)
!62 = !DILocation(line: 125, column: 3, scope: !24)
!63 = !DILocalVariable(name: "i", scope: !64, file: !3, line: 125, type: !6)
!64 = distinct !DILexicalBlock(scope: !24, file: !3, line: 125, column: 3)
!65 = !DILocation(line: 0, scope: !64)
!66 = !DILocation(line: 125, column: 3, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !3, line: 125, column: 3)
!68 = !DILocalVariable(name: "os", scope: !67, file: !3, line: 125, type: !27)
!69 = !DILocation(line: 0, scope: !67)
!70 = !DILocalVariable(name: "bj", scope: !67, file: !3, line: 125, type: !28)
!71 = !DILocalVariable(name: "u", scope: !67, file: !3, line: 125, type: !6)
!72 = !DILocalVariable(name: "r", scope: !67, file: !3, line: 125, type: !6)
!73 = !DILocalVariable(name: "x", scope: !67, file: !3, line: 125, type: !6)
!74 = !DILocation(line: 125, column: 3, scope: !75)
!75 = distinct !DILexicalBlock(scope: !64, file: !3, line: 125, column: 3)
!76 = !DILocalVariable(name: "os", scope: !75, file: !3, line: 125, type: !27)
!77 = !DILocation(line: 0, scope: !75)
!78 = !DILocalVariable(name: "bj", scope: !75, file: !3, line: 125, type: !28)
!79 = !DILocalVariable(name: "u", scope: !75, file: !3, line: 125, type: !6)
!80 = !DILocalVariable(name: "r", scope: !75, file: !3, line: 125, type: !6)
!81 = !DILocalVariable(name: "x", scope: !75, file: !3, line: 125, type: !6)
!82 = !DILocation(line: 125, column: 3, scope: !83)
!83 = distinct !DILexicalBlock(scope: !64, file: !3, line: 125, column: 3)
!84 = !DILocalVariable(name: "os", scope: !83, file: !3, line: 125, type: !27)
!85 = !DILocation(line: 0, scope: !83)
!86 = !DILocalVariable(name: "bj", scope: !83, file: !3, line: 125, type: !28)
!87 = !DILocalVariable(name: "u", scope: !83, file: !3, line: 125, type: !6)
!88 = !DILocalVariable(name: "r", scope: !83, file: !3, line: 125, type: !6)
!89 = !DILocalVariable(name: "x", scope: !83, file: !3, line: 125, type: !6)
!90 = !DILocation(line: 125, column: 3, scope: !91)
!91 = distinct !DILexicalBlock(scope: !64, file: !3, line: 125, column: 3)
!92 = !DILocalVariable(name: "os", scope: !91, file: !3, line: 125, type: !27)
!93 = !DILocation(line: 0, scope: !91)
!94 = !DILocalVariable(name: "bj", scope: !91, file: !3, line: 125, type: !28)
!95 = !DILocalVariable(name: "u", scope: !91, file: !3, line: 125, type: !6)
!96 = !DILocalVariable(name: "r", scope: !91, file: !3, line: 125, type: !6)
!97 = !DILocalVariable(name: "x", scope: !91, file: !3, line: 125, type: !6)
!98 = !DILocation(line: 125, column: 3, scope: !99)
!99 = distinct !DILexicalBlock(scope: !64, file: !3, line: 125, column: 3)
!100 = !DILocalVariable(name: "os", scope: !99, file: !3, line: 125, type: !27)
!101 = !DILocation(line: 0, scope: !99)
!102 = !DILocalVariable(name: "bj", scope: !99, file: !3, line: 125, type: !28)
!103 = !DILocalVariable(name: "u", scope: !99, file: !3, line: 125, type: !6)
!104 = !DILocalVariable(name: "r", scope: !99, file: !3, line: 125, type: !6)
!105 = !DILocalVariable(name: "x", scope: !99, file: !3, line: 125, type: !6)
!106 = !DILocation(line: 125, column: 3, scope: !107)
!107 = distinct !DILexicalBlock(scope: !64, file: !3, line: 125, column: 3)
!108 = !DILocalVariable(name: "os", scope: !107, file: !3, line: 125, type: !27)
!109 = !DILocation(line: 0, scope: !107)
!110 = !DILocalVariable(name: "bj", scope: !107, file: !3, line: 125, type: !28)
!111 = !DILocalVariable(name: "u", scope: !107, file: !3, line: 125, type: !6)
!112 = !DILocalVariable(name: "r", scope: !107, file: !3, line: 125, type: !6)
!113 = !DILocalVariable(name: "x", scope: !107, file: !3, line: 125, type: !6)
!114 = !DILocation(line: 125, column: 3, scope: !115)
!115 = distinct !DILexicalBlock(scope: !64, file: !3, line: 125, column: 3)
!116 = !DILocalVariable(name: "os", scope: !115, file: !3, line: 125, type: !27)
!117 = !DILocation(line: 0, scope: !115)
!118 = !DILocalVariable(name: "bj", scope: !115, file: !3, line: 125, type: !28)
!119 = !DILocalVariable(name: "u", scope: !115, file: !3, line: 125, type: !6)
!120 = !DILocalVariable(name: "r", scope: !115, file: !3, line: 125, type: !6)
!121 = !DILocalVariable(name: "x", scope: !115, file: !3, line: 125, type: !6)
!122 = !DILocation(line: 125, column: 3, scope: !123)
!123 = distinct !DILexicalBlock(scope: !64, file: !3, line: 125, column: 3)
!124 = !DILocalVariable(name: "os", scope: !123, file: !3, line: 125, type: !27)
!125 = !DILocation(line: 0, scope: !123)
!126 = !DILocalVariable(name: "bj", scope: !123, file: !3, line: 125, type: !28)
!127 = !DILocalVariable(name: "u", scope: !123, file: !3, line: 125, type: !6)
!128 = !DILocalVariable(name: "r", scope: !123, file: !3, line: 125, type: !6)
!129 = !DILocalVariable(name: "x", scope: !123, file: !3, line: 125, type: !6)
!130 = !DILocation(line: 125, column: 3, scope: !64)
!131 = !DILocation(line: 135, column: 3, scope: !24)
!132 = !DILocation(line: 135, column: 12, scope: !24)
!133 = !DILocation(line: 136, column: 3, scope: !24)
!134 = !DILocalVariable(name: "i", scope: !135, file: !3, line: 136, type: !6)
!135 = distinct !DILexicalBlock(scope: !24, file: !3, line: 136, column: 3)
!136 = !DILocation(line: 0, scope: !135)
!137 = !DILocation(line: 136, column: 3, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 136, column: 3)
!139 = !DILocalVariable(name: "os", scope: !138, file: !3, line: 136, type: !27)
!140 = !DILocation(line: 0, scope: !138)
!141 = !DILocalVariable(name: "bj", scope: !138, file: !3, line: 136, type: !28)
!142 = !DILocalVariable(name: "u", scope: !138, file: !3, line: 136, type: !6)
!143 = !DILocalVariable(name: "r", scope: !138, file: !3, line: 136, type: !6)
!144 = !DILocalVariable(name: "x", scope: !138, file: !3, line: 136, type: !6)
!145 = !DILocation(line: 136, column: 3, scope: !146)
!146 = distinct !DILexicalBlock(scope: !135, file: !3, line: 136, column: 3)
!147 = !DILocalVariable(name: "os", scope: !146, file: !3, line: 136, type: !27)
!148 = !DILocation(line: 0, scope: !146)
!149 = !DILocalVariable(name: "bj", scope: !146, file: !3, line: 136, type: !28)
!150 = !DILocalVariable(name: "u", scope: !146, file: !3, line: 136, type: !6)
!151 = !DILocalVariable(name: "r", scope: !146, file: !3, line: 136, type: !6)
!152 = !DILocalVariable(name: "x", scope: !146, file: !3, line: 136, type: !6)
!153 = !DILocation(line: 136, column: 3, scope: !154)
!154 = distinct !DILexicalBlock(scope: !135, file: !3, line: 136, column: 3)
!155 = !DILocalVariable(name: "os", scope: !154, file: !3, line: 136, type: !27)
!156 = !DILocation(line: 0, scope: !154)
!157 = !DILocalVariable(name: "bj", scope: !154, file: !3, line: 136, type: !28)
!158 = !DILocalVariable(name: "u", scope: !154, file: !3, line: 136, type: !6)
!159 = !DILocalVariable(name: "r", scope: !154, file: !3, line: 136, type: !6)
!160 = !DILocalVariable(name: "x", scope: !154, file: !3, line: 136, type: !6)
!161 = !DILocation(line: 136, column: 3, scope: !135)
!162 = !DILocation(line: 146, column: 1, scope: !24)
!163 = distinct !DISubprogram(name: "load32", scope: !164, file: !164, line: 166, type: !165, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!164 = !DIFile(filename: "../hacl-star/dist/karamel/include/krml/lowstar_endianness.h", directory: "/home/luwei/bech-back/HACL/ChaCha20")
!165 = !DISubroutineType(types: !166)
!166 = !{!6, !28}
!167 = !DILocalVariable(name: "b", arg: 1, scope: !163, file: !164, line: 166, type: !28)
!168 = !DILocation(line: 0, scope: !163)
!169 = !DILocalVariable(name: "x", scope: !163, file: !164, line: 167, type: !6)
!170 = !DILocation(line: 167, column: 12, scope: !163)
!171 = !DILocation(line: 168, column: 3, scope: !163)
!172 = !DILocation(line: 169, column: 10, scope: !163)
!173 = !DILocation(line: 169, column: 3, scope: !163)
!174 = distinct !DISubprogram(name: "__uint32_identity", scope: !175, file: !175, line: 39, type: !176, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h", directory: "")
!176 = !DISubroutineType(types: !177)
!177 = !{!8, !8}
!178 = !DILocalVariable(name: "__x", arg: 1, scope: !174, file: !175, line: 39, type: !8)
!179 = !DILocation(line: 0, scope: !174)
!180 = !DILocation(line: 41, column: 3, scope: !174)
!181 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_update", scope: !3, file: !3, line: 187, type: !182, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !27, !6, !28, !28}
!184 = !DILocalVariable(name: "ctx", arg: 1, scope: !181, file: !3, line: 187, type: !27)
!185 = !DILocation(line: 0, scope: !181)
!186 = !DILocalVariable(name: "len", arg: 2, scope: !181, file: !3, line: 187, type: !6)
!187 = !DILocalVariable(name: "out", arg: 3, scope: !181, file: !3, line: 187, type: !28)
!188 = !DILocalVariable(name: "text", arg: 4, scope: !181, file: !3, line: 187, type: !28)
!189 = !DILocation(line: 189, column: 22, scope: !181)
!190 = !DILocalVariable(name: "rem", scope: !181, file: !3, line: 189, type: !6)
!191 = !DILocation(line: 190, column: 21, scope: !181)
!192 = !DILocalVariable(name: "nb", scope: !181, file: !3, line: 190, type: !6)
!193 = !DILocation(line: 191, column: 23, scope: !181)
!194 = !DILocalVariable(name: "rem1", scope: !181, file: !3, line: 191, type: !6)
!195 = !DILocalVariable(name: "i", scope: !196, file: !3, line: 192, type: !6)
!196 = distinct !DILexicalBlock(scope: !181, file: !3, line: 192, column: 3)
!197 = !DILocation(line: 0, scope: !196)
!198 = !DILocation(line: 192, column: 8, scope: !196)
!199 = !DILocation(line: 192, column: 37, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !3, line: 192, column: 3)
!201 = !DILocation(line: 192, column: 3, scope: !196)
!202 = !DILocation(line: 194, column: 41, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 193, column: 3)
!204 = !DILocation(line: 194, column: 37, scope: !203)
!205 = !DILocation(line: 194, column: 70, scope: !203)
!206 = !DILocation(line: 194, column: 66, scope: !203)
!207 = !DILocation(line: 194, column: 5, scope: !203)
!208 = !DILocation(line: 195, column: 3, scope: !203)
!209 = !DILocation(line: 192, column: 44, scope: !200)
!210 = !DILocation(line: 192, column: 3, scope: !200)
!211 = distinct !{!211, !201, !212, !213}
!212 = !DILocation(line: 195, column: 3, scope: !196)
!213 = !{!"llvm.loop.mustprogress"}
!214 = !DILocation(line: 196, column: 12, scope: !215)
!215 = distinct !DILexicalBlock(scope: !181, file: !3, line: 196, column: 7)
!216 = !DILocation(line: 196, column: 7, scope: !181)
!217 = !DILocation(line: 198, column: 46, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !3, line: 197, column: 3)
!219 = !DILocation(line: 198, column: 41, scope: !218)
!220 = !DILocation(line: 198, column: 77, scope: !218)
!221 = !DILocation(line: 198, column: 72, scope: !218)
!222 = !DILocation(line: 198, column: 5, scope: !218)
!223 = !DILocation(line: 199, column: 3, scope: !218)
!224 = !DILocation(line: 200, column: 1, scope: !181)
!225 = distinct !DISubprogram(name: "chacha20_encrypt_block", scope: !3, file: !3, line: 148, type: !226, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !27, !28, !6, !28}
!228 = !DILocalVariable(name: "ctx", arg: 1, scope: !225, file: !3, line: 148, type: !27)
!229 = !DILocation(line: 0, scope: !225)
!230 = !DILocalVariable(name: "out", arg: 2, scope: !225, file: !3, line: 148, type: !28)
!231 = !DILocalVariable(name: "incr", arg: 3, scope: !225, file: !3, line: 148, type: !6)
!232 = !DILocalVariable(name: "text", arg: 4, scope: !225, file: !3, line: 148, type: !28)
!233 = !DILocalVariable(name: "k", scope: !225, file: !3, line: 150, type: !234)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 16)
!237 = !DILocation(line: 150, column: 12, scope: !225)
!238 = !DILocation(line: 151, column: 17, scope: !225)
!239 = !DILocation(line: 151, column: 3, scope: !225)
!240 = !DILocalVariable(name: "bl", scope: !225, file: !3, line: 152, type: !234)
!241 = !DILocation(line: 152, column: 12, scope: !225)
!242 = !DILocation(line: 153, column: 3, scope: !225)
!243 = !DILocalVariable(name: "i", scope: !244, file: !3, line: 153, type: !6)
!244 = distinct !DILexicalBlock(scope: !225, file: !3, line: 153, column: 3)
!245 = !DILocation(line: 0, scope: !244)
!246 = !DILocation(line: 153, column: 3, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!248 = !DILocalVariable(name: "os", scope: !247, file: !3, line: 153, type: !27)
!249 = !DILocation(line: 0, scope: !247)
!250 = !DILocalVariable(name: "bj", scope: !247, file: !3, line: 153, type: !28)
!251 = !DILocalVariable(name: "u", scope: !247, file: !3, line: 153, type: !6)
!252 = !DILocalVariable(name: "r", scope: !247, file: !3, line: 153, type: !6)
!253 = !DILocalVariable(name: "x", scope: !247, file: !3, line: 153, type: !6)
!254 = !DILocation(line: 153, column: 3, scope: !255)
!255 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!256 = !DILocalVariable(name: "os", scope: !255, file: !3, line: 153, type: !27)
!257 = !DILocation(line: 0, scope: !255)
!258 = !DILocalVariable(name: "bj", scope: !255, file: !3, line: 153, type: !28)
!259 = !DILocalVariable(name: "u", scope: !255, file: !3, line: 153, type: !6)
!260 = !DILocalVariable(name: "r", scope: !255, file: !3, line: 153, type: !6)
!261 = !DILocalVariable(name: "x", scope: !255, file: !3, line: 153, type: !6)
!262 = !DILocation(line: 153, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!264 = !DILocalVariable(name: "os", scope: !263, file: !3, line: 153, type: !27)
!265 = !DILocation(line: 0, scope: !263)
!266 = !DILocalVariable(name: "bj", scope: !263, file: !3, line: 153, type: !28)
!267 = !DILocalVariable(name: "u", scope: !263, file: !3, line: 153, type: !6)
!268 = !DILocalVariable(name: "r", scope: !263, file: !3, line: 153, type: !6)
!269 = !DILocalVariable(name: "x", scope: !263, file: !3, line: 153, type: !6)
!270 = !DILocation(line: 153, column: 3, scope: !271)
!271 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!272 = !DILocalVariable(name: "os", scope: !271, file: !3, line: 153, type: !27)
!273 = !DILocation(line: 0, scope: !271)
!274 = !DILocalVariable(name: "bj", scope: !271, file: !3, line: 153, type: !28)
!275 = !DILocalVariable(name: "u", scope: !271, file: !3, line: 153, type: !6)
!276 = !DILocalVariable(name: "r", scope: !271, file: !3, line: 153, type: !6)
!277 = !DILocalVariable(name: "x", scope: !271, file: !3, line: 153, type: !6)
!278 = !DILocation(line: 153, column: 3, scope: !279)
!279 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!280 = !DILocalVariable(name: "os", scope: !279, file: !3, line: 153, type: !27)
!281 = !DILocation(line: 0, scope: !279)
!282 = !DILocalVariable(name: "bj", scope: !279, file: !3, line: 153, type: !28)
!283 = !DILocalVariable(name: "u", scope: !279, file: !3, line: 153, type: !6)
!284 = !DILocalVariable(name: "r", scope: !279, file: !3, line: 153, type: !6)
!285 = !DILocalVariable(name: "x", scope: !279, file: !3, line: 153, type: !6)
!286 = !DILocation(line: 153, column: 3, scope: !287)
!287 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!288 = !DILocalVariable(name: "os", scope: !287, file: !3, line: 153, type: !27)
!289 = !DILocation(line: 0, scope: !287)
!290 = !DILocalVariable(name: "bj", scope: !287, file: !3, line: 153, type: !28)
!291 = !DILocalVariable(name: "u", scope: !287, file: !3, line: 153, type: !6)
!292 = !DILocalVariable(name: "r", scope: !287, file: !3, line: 153, type: !6)
!293 = !DILocalVariable(name: "x", scope: !287, file: !3, line: 153, type: !6)
!294 = !DILocation(line: 153, column: 3, scope: !295)
!295 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!296 = !DILocalVariable(name: "os", scope: !295, file: !3, line: 153, type: !27)
!297 = !DILocation(line: 0, scope: !295)
!298 = !DILocalVariable(name: "bj", scope: !295, file: !3, line: 153, type: !28)
!299 = !DILocalVariable(name: "u", scope: !295, file: !3, line: 153, type: !6)
!300 = !DILocalVariable(name: "r", scope: !295, file: !3, line: 153, type: !6)
!301 = !DILocalVariable(name: "x", scope: !295, file: !3, line: 153, type: !6)
!302 = !DILocation(line: 153, column: 3, scope: !303)
!303 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!304 = !DILocalVariable(name: "os", scope: !303, file: !3, line: 153, type: !27)
!305 = !DILocation(line: 0, scope: !303)
!306 = !DILocalVariable(name: "bj", scope: !303, file: !3, line: 153, type: !28)
!307 = !DILocalVariable(name: "u", scope: !303, file: !3, line: 153, type: !6)
!308 = !DILocalVariable(name: "r", scope: !303, file: !3, line: 153, type: !6)
!309 = !DILocalVariable(name: "x", scope: !303, file: !3, line: 153, type: !6)
!310 = !DILocation(line: 153, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!312 = !DILocalVariable(name: "os", scope: !311, file: !3, line: 153, type: !27)
!313 = !DILocation(line: 0, scope: !311)
!314 = !DILocalVariable(name: "bj", scope: !311, file: !3, line: 153, type: !28)
!315 = !DILocalVariable(name: "u", scope: !311, file: !3, line: 153, type: !6)
!316 = !DILocalVariable(name: "r", scope: !311, file: !3, line: 153, type: !6)
!317 = !DILocalVariable(name: "x", scope: !311, file: !3, line: 153, type: !6)
!318 = !DILocation(line: 153, column: 3, scope: !319)
!319 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!320 = !DILocalVariable(name: "os", scope: !319, file: !3, line: 153, type: !27)
!321 = !DILocation(line: 0, scope: !319)
!322 = !DILocalVariable(name: "bj", scope: !319, file: !3, line: 153, type: !28)
!323 = !DILocalVariable(name: "u", scope: !319, file: !3, line: 153, type: !6)
!324 = !DILocalVariable(name: "r", scope: !319, file: !3, line: 153, type: !6)
!325 = !DILocalVariable(name: "x", scope: !319, file: !3, line: 153, type: !6)
!326 = !DILocation(line: 153, column: 3, scope: !327)
!327 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!328 = !DILocalVariable(name: "os", scope: !327, file: !3, line: 153, type: !27)
!329 = !DILocation(line: 0, scope: !327)
!330 = !DILocalVariable(name: "bj", scope: !327, file: !3, line: 153, type: !28)
!331 = !DILocalVariable(name: "u", scope: !327, file: !3, line: 153, type: !6)
!332 = !DILocalVariable(name: "r", scope: !327, file: !3, line: 153, type: !6)
!333 = !DILocalVariable(name: "x", scope: !327, file: !3, line: 153, type: !6)
!334 = !DILocation(line: 153, column: 3, scope: !335)
!335 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!336 = !DILocalVariable(name: "os", scope: !335, file: !3, line: 153, type: !27)
!337 = !DILocation(line: 0, scope: !335)
!338 = !DILocalVariable(name: "bj", scope: !335, file: !3, line: 153, type: !28)
!339 = !DILocalVariable(name: "u", scope: !335, file: !3, line: 153, type: !6)
!340 = !DILocalVariable(name: "r", scope: !335, file: !3, line: 153, type: !6)
!341 = !DILocalVariable(name: "x", scope: !335, file: !3, line: 153, type: !6)
!342 = !DILocation(line: 153, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!344 = !DILocalVariable(name: "os", scope: !343, file: !3, line: 153, type: !27)
!345 = !DILocation(line: 0, scope: !343)
!346 = !DILocalVariable(name: "bj", scope: !343, file: !3, line: 153, type: !28)
!347 = !DILocalVariable(name: "u", scope: !343, file: !3, line: 153, type: !6)
!348 = !DILocalVariable(name: "r", scope: !343, file: !3, line: 153, type: !6)
!349 = !DILocalVariable(name: "x", scope: !343, file: !3, line: 153, type: !6)
!350 = !DILocation(line: 153, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!352 = !DILocalVariable(name: "os", scope: !351, file: !3, line: 153, type: !27)
!353 = !DILocation(line: 0, scope: !351)
!354 = !DILocalVariable(name: "bj", scope: !351, file: !3, line: 153, type: !28)
!355 = !DILocalVariable(name: "u", scope: !351, file: !3, line: 153, type: !6)
!356 = !DILocalVariable(name: "r", scope: !351, file: !3, line: 153, type: !6)
!357 = !DILocalVariable(name: "x", scope: !351, file: !3, line: 153, type: !6)
!358 = !DILocation(line: 153, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!360 = !DILocalVariable(name: "os", scope: !359, file: !3, line: 153, type: !27)
!361 = !DILocation(line: 0, scope: !359)
!362 = !DILocalVariable(name: "bj", scope: !359, file: !3, line: 153, type: !28)
!363 = !DILocalVariable(name: "u", scope: !359, file: !3, line: 153, type: !6)
!364 = !DILocalVariable(name: "r", scope: !359, file: !3, line: 153, type: !6)
!365 = !DILocalVariable(name: "x", scope: !359, file: !3, line: 153, type: !6)
!366 = !DILocation(line: 153, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !244, file: !3, line: 153, column: 3)
!368 = !DILocalVariable(name: "os", scope: !367, file: !3, line: 153, type: !27)
!369 = !DILocation(line: 0, scope: !367)
!370 = !DILocalVariable(name: "bj", scope: !367, file: !3, line: 153, type: !28)
!371 = !DILocalVariable(name: "u", scope: !367, file: !3, line: 153, type: !6)
!372 = !DILocalVariable(name: "r", scope: !367, file: !3, line: 153, type: !6)
!373 = !DILocalVariable(name: "x", scope: !367, file: !3, line: 153, type: !6)
!374 = !DILocation(line: 153, column: 3, scope: !244)
!375 = !DILocation(line: 163, column: 3, scope: !225)
!376 = !DILocalVariable(name: "i", scope: !377, file: !3, line: 163, type: !6)
!377 = distinct !DILexicalBlock(scope: !225, file: !3, line: 163, column: 3)
!378 = !DILocation(line: 0, scope: !377)
!379 = !DILocation(line: 163, column: 3, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!381 = !DILocalVariable(name: "os", scope: !380, file: !3, line: 163, type: !27)
!382 = !DILocation(line: 0, scope: !380)
!383 = !DILocalVariable(name: "x", scope: !380, file: !3, line: 163, type: !6)
!384 = !DILocation(line: 163, column: 3, scope: !385)
!385 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!386 = !DILocalVariable(name: "os", scope: !385, file: !3, line: 163, type: !27)
!387 = !DILocation(line: 0, scope: !385)
!388 = !DILocalVariable(name: "x", scope: !385, file: !3, line: 163, type: !6)
!389 = !DILocation(line: 163, column: 3, scope: !390)
!390 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!391 = !DILocalVariable(name: "os", scope: !390, file: !3, line: 163, type: !27)
!392 = !DILocation(line: 0, scope: !390)
!393 = !DILocalVariable(name: "x", scope: !390, file: !3, line: 163, type: !6)
!394 = !DILocation(line: 163, column: 3, scope: !395)
!395 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!396 = !DILocalVariable(name: "os", scope: !395, file: !3, line: 163, type: !27)
!397 = !DILocation(line: 0, scope: !395)
!398 = !DILocalVariable(name: "x", scope: !395, file: !3, line: 163, type: !6)
!399 = !DILocation(line: 163, column: 3, scope: !400)
!400 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!401 = !DILocalVariable(name: "os", scope: !400, file: !3, line: 163, type: !27)
!402 = !DILocation(line: 0, scope: !400)
!403 = !DILocalVariable(name: "x", scope: !400, file: !3, line: 163, type: !6)
!404 = !DILocation(line: 163, column: 3, scope: !405)
!405 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!406 = !DILocalVariable(name: "os", scope: !405, file: !3, line: 163, type: !27)
!407 = !DILocation(line: 0, scope: !405)
!408 = !DILocalVariable(name: "x", scope: !405, file: !3, line: 163, type: !6)
!409 = !DILocation(line: 163, column: 3, scope: !410)
!410 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!411 = !DILocalVariable(name: "os", scope: !410, file: !3, line: 163, type: !27)
!412 = !DILocation(line: 0, scope: !410)
!413 = !DILocalVariable(name: "x", scope: !410, file: !3, line: 163, type: !6)
!414 = !DILocation(line: 163, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!416 = !DILocalVariable(name: "os", scope: !415, file: !3, line: 163, type: !27)
!417 = !DILocation(line: 0, scope: !415)
!418 = !DILocalVariable(name: "x", scope: !415, file: !3, line: 163, type: !6)
!419 = !DILocation(line: 163, column: 3, scope: !420)
!420 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!421 = !DILocalVariable(name: "os", scope: !420, file: !3, line: 163, type: !27)
!422 = !DILocation(line: 0, scope: !420)
!423 = !DILocalVariable(name: "x", scope: !420, file: !3, line: 163, type: !6)
!424 = !DILocation(line: 163, column: 3, scope: !425)
!425 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!426 = !DILocalVariable(name: "os", scope: !425, file: !3, line: 163, type: !27)
!427 = !DILocation(line: 0, scope: !425)
!428 = !DILocalVariable(name: "x", scope: !425, file: !3, line: 163, type: !6)
!429 = !DILocation(line: 163, column: 3, scope: !430)
!430 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!431 = !DILocalVariable(name: "os", scope: !430, file: !3, line: 163, type: !27)
!432 = !DILocation(line: 0, scope: !430)
!433 = !DILocalVariable(name: "x", scope: !430, file: !3, line: 163, type: !6)
!434 = !DILocation(line: 163, column: 3, scope: !435)
!435 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!436 = !DILocalVariable(name: "os", scope: !435, file: !3, line: 163, type: !27)
!437 = !DILocation(line: 0, scope: !435)
!438 = !DILocalVariable(name: "x", scope: !435, file: !3, line: 163, type: !6)
!439 = !DILocation(line: 163, column: 3, scope: !440)
!440 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!441 = !DILocalVariable(name: "os", scope: !440, file: !3, line: 163, type: !27)
!442 = !DILocation(line: 0, scope: !440)
!443 = !DILocalVariable(name: "x", scope: !440, file: !3, line: 163, type: !6)
!444 = !DILocation(line: 163, column: 3, scope: !445)
!445 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!446 = !DILocalVariable(name: "os", scope: !445, file: !3, line: 163, type: !27)
!447 = !DILocation(line: 0, scope: !445)
!448 = !DILocalVariable(name: "x", scope: !445, file: !3, line: 163, type: !6)
!449 = !DILocation(line: 163, column: 3, scope: !450)
!450 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!451 = !DILocalVariable(name: "os", scope: !450, file: !3, line: 163, type: !27)
!452 = !DILocation(line: 0, scope: !450)
!453 = !DILocalVariable(name: "x", scope: !450, file: !3, line: 163, type: !6)
!454 = !DILocation(line: 163, column: 3, scope: !455)
!455 = distinct !DILexicalBlock(scope: !377, file: !3, line: 163, column: 3)
!456 = !DILocalVariable(name: "os", scope: !455, file: !3, line: 163, type: !27)
!457 = !DILocation(line: 0, scope: !455)
!458 = !DILocalVariable(name: "x", scope: !455, file: !3, line: 163, type: !6)
!459 = !DILocation(line: 163, column: 3, scope: !377)
!460 = !DILocation(line: 170, column: 3, scope: !225)
!461 = !DILocalVariable(name: "i", scope: !462, file: !3, line: 170, type: !6)
!462 = distinct !DILexicalBlock(scope: !225, file: !3, line: 170, column: 3)
!463 = !DILocation(line: 0, scope: !462)
!464 = !DILocation(line: 170, column: 3, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!466 = !DILocation(line: 170, column: 3, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!468 = !DILocation(line: 170, column: 3, scope: !469)
!469 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!470 = !DILocation(line: 170, column: 3, scope: !471)
!471 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!472 = !DILocation(line: 170, column: 3, scope: !473)
!473 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!474 = !DILocation(line: 170, column: 3, scope: !475)
!475 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!476 = !DILocation(line: 170, column: 3, scope: !477)
!477 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!478 = !DILocation(line: 170, column: 3, scope: !479)
!479 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!480 = !DILocation(line: 170, column: 3, scope: !481)
!481 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!482 = !DILocation(line: 170, column: 3, scope: !483)
!483 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!484 = !DILocation(line: 170, column: 3, scope: !485)
!485 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!486 = !DILocation(line: 170, column: 3, scope: !487)
!487 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!488 = !DILocation(line: 170, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!490 = !DILocation(line: 170, column: 3, scope: !491)
!491 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!492 = !DILocation(line: 170, column: 3, scope: !493)
!493 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!494 = !DILocation(line: 170, column: 3, scope: !495)
!495 = distinct !DILexicalBlock(scope: !462, file: !3, line: 170, column: 3)
!496 = !DILocation(line: 170, column: 3, scope: !462)
!497 = !DILocation(line: 175, column: 1, scope: !225)
!498 = distinct !DISubprogram(name: "chacha20_encrypt_last", scope: !3, file: !3, line: 178, type: !499, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !27, !6, !28, !6, !28}
!501 = !DILocalVariable(name: "ctx", arg: 1, scope: !498, file: !3, line: 178, type: !27)
!502 = !DILocation(line: 0, scope: !498)
!503 = !DILocalVariable(name: "len", arg: 2, scope: !498, file: !3, line: 178, type: !6)
!504 = !DILocalVariable(name: "out", arg: 3, scope: !498, file: !3, line: 178, type: !28)
!505 = !DILocalVariable(name: "incr", arg: 4, scope: !498, file: !3, line: 178, type: !6)
!506 = !DILocalVariable(name: "text", arg: 5, scope: !498, file: !3, line: 178, type: !28)
!507 = !DILocalVariable(name: "plain", scope: !498, file: !3, line: 180, type: !508)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 512, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 64)
!511 = !DILocation(line: 180, column: 11, scope: !498)
!512 = !DILocation(line: 181, column: 3, scope: !498)
!513 = !DILocation(line: 181, column: 23, scope: !498)
!514 = !DILocation(line: 181, column: 27, scope: !498)
!515 = !DILocation(line: 182, column: 31, scope: !498)
!516 = !DILocation(line: 182, column: 44, scope: !498)
!517 = !DILocation(line: 182, column: 3, scope: !498)
!518 = !DILocation(line: 183, column: 3, scope: !498)
!519 = !DILocation(line: 183, column: 22, scope: !498)
!520 = !DILocation(line: 183, column: 26, scope: !498)
!521 = !DILocation(line: 184, column: 1, scope: !498)
!522 = distinct !DISubprogram(name: "chacha20_core", scope: !3, file: !3, line: 95, type: !523, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !27, !27, !6}
!525 = !DILocalVariable(name: "k", arg: 1, scope: !522, file: !3, line: 95, type: !27)
!526 = !DILocation(line: 0, scope: !522)
!527 = !DILocalVariable(name: "ctx", arg: 2, scope: !522, file: !3, line: 95, type: !27)
!528 = !DILocalVariable(name: "ctr", arg: 3, scope: !522, file: !3, line: 95, type: !6)
!529 = !DILocation(line: 97, column: 3, scope: !522)
!530 = !DILocalVariable(name: "ctr_u32", scope: !522, file: !3, line: 98, type: !6)
!531 = !DILocation(line: 99, column: 12, scope: !522)
!532 = !DILocation(line: 99, column: 19, scope: !522)
!533 = !DILocation(line: 99, column: 3, scope: !522)
!534 = !DILocation(line: 99, column: 10, scope: !522)
!535 = !DILocation(line: 100, column: 3, scope: !522)
!536 = !DILocation(line: 101, column: 3, scope: !522)
!537 = !DILocalVariable(name: "i", scope: !538, file: !3, line: 101, type: !6)
!538 = distinct !DILexicalBlock(scope: !522, file: !3, line: 101, column: 3)
!539 = !DILocation(line: 0, scope: !538)
!540 = !DILocalVariable(name: "os", scope: !541, file: !3, line: 101, type: !27)
!541 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!542 = !DILocation(line: 0, scope: !541)
!543 = !DILocation(line: 101, column: 3, scope: !541)
!544 = !DILocalVariable(name: "x", scope: !541, file: !3, line: 101, type: !6)
!545 = !DILocalVariable(name: "os", scope: !546, file: !3, line: 101, type: !27)
!546 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!547 = !DILocation(line: 0, scope: !546)
!548 = !DILocation(line: 101, column: 3, scope: !546)
!549 = !DILocalVariable(name: "x", scope: !546, file: !3, line: 101, type: !6)
!550 = !DILocalVariable(name: "os", scope: !551, file: !3, line: 101, type: !27)
!551 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!552 = !DILocation(line: 0, scope: !551)
!553 = !DILocation(line: 101, column: 3, scope: !551)
!554 = !DILocalVariable(name: "x", scope: !551, file: !3, line: 101, type: !6)
!555 = !DILocalVariable(name: "os", scope: !556, file: !3, line: 101, type: !27)
!556 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!557 = !DILocation(line: 0, scope: !556)
!558 = !DILocation(line: 101, column: 3, scope: !556)
!559 = !DILocalVariable(name: "x", scope: !556, file: !3, line: 101, type: !6)
!560 = !DILocalVariable(name: "os", scope: !561, file: !3, line: 101, type: !27)
!561 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!562 = !DILocation(line: 0, scope: !561)
!563 = !DILocation(line: 101, column: 3, scope: !561)
!564 = !DILocalVariable(name: "x", scope: !561, file: !3, line: 101, type: !6)
!565 = !DILocalVariable(name: "os", scope: !566, file: !3, line: 101, type: !27)
!566 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!567 = !DILocation(line: 0, scope: !566)
!568 = !DILocation(line: 101, column: 3, scope: !566)
!569 = !DILocalVariable(name: "x", scope: !566, file: !3, line: 101, type: !6)
!570 = !DILocalVariable(name: "os", scope: !571, file: !3, line: 101, type: !27)
!571 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!572 = !DILocation(line: 0, scope: !571)
!573 = !DILocation(line: 101, column: 3, scope: !571)
!574 = !DILocalVariable(name: "x", scope: !571, file: !3, line: 101, type: !6)
!575 = !DILocalVariable(name: "os", scope: !576, file: !3, line: 101, type: !27)
!576 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!577 = !DILocation(line: 0, scope: !576)
!578 = !DILocation(line: 101, column: 3, scope: !576)
!579 = !DILocalVariable(name: "x", scope: !576, file: !3, line: 101, type: !6)
!580 = !DILocalVariable(name: "os", scope: !581, file: !3, line: 101, type: !27)
!581 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!582 = !DILocation(line: 0, scope: !581)
!583 = !DILocation(line: 101, column: 3, scope: !581)
!584 = !DILocalVariable(name: "x", scope: !581, file: !3, line: 101, type: !6)
!585 = !DILocalVariable(name: "os", scope: !586, file: !3, line: 101, type: !27)
!586 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!587 = !DILocation(line: 0, scope: !586)
!588 = !DILocation(line: 101, column: 3, scope: !586)
!589 = !DILocalVariable(name: "x", scope: !586, file: !3, line: 101, type: !6)
!590 = !DILocalVariable(name: "os", scope: !591, file: !3, line: 101, type: !27)
!591 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!592 = !DILocation(line: 0, scope: !591)
!593 = !DILocation(line: 101, column: 3, scope: !591)
!594 = !DILocalVariable(name: "x", scope: !591, file: !3, line: 101, type: !6)
!595 = !DILocalVariable(name: "os", scope: !596, file: !3, line: 101, type: !27)
!596 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!597 = !DILocation(line: 0, scope: !596)
!598 = !DILocation(line: 101, column: 3, scope: !596)
!599 = !DILocalVariable(name: "x", scope: !596, file: !3, line: 101, type: !6)
!600 = !DILocalVariable(name: "os", scope: !601, file: !3, line: 101, type: !27)
!601 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!602 = !DILocation(line: 0, scope: !601)
!603 = !DILocation(line: 101, column: 3, scope: !601)
!604 = !DILocalVariable(name: "x", scope: !601, file: !3, line: 101, type: !6)
!605 = !DILocalVariable(name: "os", scope: !606, file: !3, line: 101, type: !27)
!606 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!607 = !DILocation(line: 0, scope: !606)
!608 = !DILocation(line: 101, column: 3, scope: !606)
!609 = !DILocalVariable(name: "x", scope: !606, file: !3, line: 101, type: !6)
!610 = !DILocalVariable(name: "os", scope: !611, file: !3, line: 101, type: !27)
!611 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!612 = !DILocation(line: 0, scope: !611)
!613 = !DILocation(line: 101, column: 3, scope: !611)
!614 = !DILocalVariable(name: "x", scope: !611, file: !3, line: 101, type: !6)
!615 = !DILocalVariable(name: "os", scope: !616, file: !3, line: 101, type: !27)
!616 = distinct !DILexicalBlock(scope: !538, file: !3, line: 101, column: 3)
!617 = !DILocation(line: 0, scope: !616)
!618 = !DILocation(line: 101, column: 3, scope: !616)
!619 = !DILocalVariable(name: "x", scope: !616, file: !3, line: 101, type: !6)
!620 = !DILocation(line: 101, column: 3, scope: !538)
!621 = !DILocation(line: 108, column: 12, scope: !522)
!622 = !DILocation(line: 108, column: 19, scope: !522)
!623 = !DILocation(line: 108, column: 3, scope: !522)
!624 = !DILocation(line: 108, column: 10, scope: !522)
!625 = !DILocation(line: 109, column: 1, scope: !522)
!626 = distinct !DISubprogram(name: "store32", scope: !164, file: !164, line: 182, type: !627, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !28, !6}
!629 = !DILocalVariable(name: "b", arg: 1, scope: !626, file: !164, line: 182, type: !28)
!630 = !DILocation(line: 0, scope: !626)
!631 = !DILocalVariable(name: "i", arg: 2, scope: !626, file: !164, line: 182, type: !6)
!632 = !DILocation(line: 182, column: 49, scope: !626)
!633 = !DILocation(line: 183, column: 3, scope: !626)
!634 = !DILocation(line: 184, column: 1, scope: !626)
!635 = distinct !DISubprogram(name: "rounds", scope: !3, file: !3, line: 81, type: !636, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !27}
!638 = !DILocalVariable(name: "st", arg: 1, scope: !635, file: !3, line: 81, type: !27)
!639 = !DILocation(line: 0, scope: !635)
!640 = !DILocation(line: 83, column: 3, scope: !635)
!641 = !DILocation(line: 84, column: 3, scope: !635)
!642 = !DILocation(line: 85, column: 3, scope: !635)
!643 = !DILocation(line: 86, column: 3, scope: !635)
!644 = !DILocation(line: 87, column: 3, scope: !635)
!645 = !DILocation(line: 88, column: 3, scope: !635)
!646 = !DILocation(line: 89, column: 3, scope: !635)
!647 = !DILocation(line: 90, column: 3, scope: !635)
!648 = !DILocation(line: 91, column: 3, scope: !635)
!649 = !DILocation(line: 92, column: 3, scope: !635)
!650 = !DILocation(line: 93, column: 1, scope: !635)
!651 = distinct !DISubprogram(name: "double_round", scope: !3, file: !3, line: 69, type: !636, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!652 = !DILocalVariable(name: "st", arg: 1, scope: !651, file: !3, line: 69, type: !27)
!653 = !DILocation(line: 0, scope: !651)
!654 = !DILocation(line: 71, column: 3, scope: !651)
!655 = !DILocation(line: 72, column: 3, scope: !651)
!656 = !DILocation(line: 73, column: 3, scope: !651)
!657 = !DILocation(line: 74, column: 3, scope: !651)
!658 = !DILocation(line: 75, column: 3, scope: !651)
!659 = !DILocation(line: 76, column: 3, scope: !651)
!660 = !DILocation(line: 77, column: 3, scope: !651)
!661 = !DILocation(line: 78, column: 3, scope: !651)
!662 = !DILocation(line: 79, column: 1, scope: !651)
!663 = distinct !DISubprogram(name: "quarter_round", scope: !3, file: !3, line: 33, type: !664, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !27, !6, !6, !6, !6}
!666 = !DILocalVariable(name: "st", arg: 1, scope: !663, file: !3, line: 33, type: !27)
!667 = !DILocation(line: 0, scope: !663)
!668 = !DILocalVariable(name: "a", arg: 2, scope: !663, file: !3, line: 33, type: !6)
!669 = !DILocalVariable(name: "b", arg: 3, scope: !663, file: !3, line: 33, type: !6)
!670 = !DILocalVariable(name: "c", arg: 4, scope: !663, file: !3, line: 33, type: !6)
!671 = !DILocalVariable(name: "d", arg: 5, scope: !663, file: !3, line: 33, type: !6)
!672 = !DILocation(line: 35, column: 18, scope: !663)
!673 = !DILocalVariable(name: "sta", scope: !663, file: !3, line: 35, type: !6)
!674 = !DILocation(line: 36, column: 19, scope: !663)
!675 = !DILocalVariable(name: "stb0", scope: !663, file: !3, line: 36, type: !6)
!676 = !DILocation(line: 37, column: 19, scope: !663)
!677 = !DILocalVariable(name: "std0", scope: !663, file: !3, line: 37, type: !6)
!678 = !DILocation(line: 38, column: 24, scope: !663)
!679 = !DILocalVariable(name: "sta10", scope: !663, file: !3, line: 38, type: !6)
!680 = !DILocation(line: 39, column: 25, scope: !663)
!681 = !DILocalVariable(name: "std10", scope: !663, file: !3, line: 39, type: !6)
!682 = !DILocation(line: 40, column: 25, scope: !663)
!683 = !DILocation(line: 40, column: 50, scope: !663)
!684 = !DILocation(line: 40, column: 42, scope: !663)
!685 = !DILocalVariable(name: "std2", scope: !663, file: !3, line: 40, type: !6)
!686 = !DILocation(line: 41, column: 3, scope: !663)
!687 = !DILocation(line: 41, column: 9, scope: !663)
!688 = !DILocation(line: 42, column: 3, scope: !663)
!689 = !DILocation(line: 42, column: 9, scope: !663)
!690 = !DILocation(line: 43, column: 19, scope: !663)
!691 = !DILocalVariable(name: "sta0", scope: !663, file: !3, line: 43, type: !6)
!692 = !DILocation(line: 44, column: 19, scope: !663)
!693 = !DILocalVariable(name: "stb1", scope: !663, file: !3, line: 44, type: !6)
!694 = !DILocation(line: 45, column: 19, scope: !663)
!695 = !DILocalVariable(name: "std3", scope: !663, file: !3, line: 45, type: !6)
!696 = !DILocation(line: 46, column: 25, scope: !663)
!697 = !DILocalVariable(name: "sta11", scope: !663, file: !3, line: 46, type: !6)
!698 = !DILocation(line: 47, column: 25, scope: !663)
!699 = !DILocalVariable(name: "std11", scope: !663, file: !3, line: 47, type: !6)
!700 = !DILocation(line: 48, column: 26, scope: !663)
!701 = !DILocation(line: 48, column: 51, scope: !663)
!702 = !DILocation(line: 48, column: 43, scope: !663)
!703 = !DILocalVariable(name: "std20", scope: !663, file: !3, line: 48, type: !6)
!704 = !DILocation(line: 49, column: 3, scope: !663)
!705 = !DILocation(line: 49, column: 9, scope: !663)
!706 = !DILocation(line: 50, column: 3, scope: !663)
!707 = !DILocation(line: 50, column: 9, scope: !663)
!708 = !DILocation(line: 51, column: 19, scope: !663)
!709 = !DILocalVariable(name: "sta2", scope: !663, file: !3, line: 51, type: !6)
!710 = !DILocation(line: 52, column: 19, scope: !663)
!711 = !DILocalVariable(name: "stb2", scope: !663, file: !3, line: 52, type: !6)
!712 = !DILocation(line: 53, column: 19, scope: !663)
!713 = !DILocalVariable(name: "std4", scope: !663, file: !3, line: 53, type: !6)
!714 = !DILocation(line: 54, column: 25, scope: !663)
!715 = !DILocalVariable(name: "sta12", scope: !663, file: !3, line: 54, type: !6)
!716 = !DILocation(line: 55, column: 25, scope: !663)
!717 = !DILocalVariable(name: "std12", scope: !663, file: !3, line: 55, type: !6)
!718 = !DILocation(line: 56, column: 26, scope: !663)
!719 = !DILocation(line: 56, column: 50, scope: !663)
!720 = !DILocation(line: 56, column: 42, scope: !663)
!721 = !DILocalVariable(name: "std21", scope: !663, file: !3, line: 56, type: !6)
!722 = !DILocation(line: 57, column: 3, scope: !663)
!723 = !DILocation(line: 57, column: 9, scope: !663)
!724 = !DILocation(line: 58, column: 3, scope: !663)
!725 = !DILocation(line: 58, column: 9, scope: !663)
!726 = !DILocation(line: 59, column: 19, scope: !663)
!727 = !DILocalVariable(name: "sta3", scope: !663, file: !3, line: 59, type: !6)
!728 = !DILocation(line: 60, column: 18, scope: !663)
!729 = !DILocalVariable(name: "stb", scope: !663, file: !3, line: 60, type: !6)
!730 = !DILocation(line: 61, column: 18, scope: !663)
!731 = !DILocalVariable(name: "std", scope: !663, file: !3, line: 61, type: !6)
!732 = !DILocation(line: 62, column: 24, scope: !663)
!733 = !DILocalVariable(name: "sta1", scope: !663, file: !3, line: 62, type: !6)
!734 = !DILocation(line: 63, column: 23, scope: !663)
!735 = !DILocalVariable(name: "std1", scope: !663, file: !3, line: 63, type: !6)
!736 = !DILocation(line: 64, column: 25, scope: !663)
!737 = !DILocation(line: 64, column: 48, scope: !663)
!738 = !DILocation(line: 64, column: 41, scope: !663)
!739 = !DILocalVariable(name: "std22", scope: !663, file: !3, line: 64, type: !6)
!740 = !DILocation(line: 65, column: 3, scope: !663)
!741 = !DILocation(line: 65, column: 9, scope: !663)
!742 = !DILocation(line: 66, column: 3, scope: !663)
!743 = !DILocation(line: 66, column: 9, scope: !663)
!744 = !DILocation(line: 67, column: 1, scope: !663)
!745 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_encrypt", scope: !3, file: !3, line: 203, type: !746, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !6, !28, !28, !28, !28, !6}
!748 = !DILocalVariable(name: "len", arg: 1, scope: !745, file: !3, line: 204, type: !6)
!749 = !DILocation(line: 0, scope: !745)
!750 = !DILocalVariable(name: "out", arg: 2, scope: !745, file: !3, line: 205, type: !28)
!751 = !DILocalVariable(name: "text", arg: 3, scope: !745, file: !3, line: 206, type: !28)
!752 = !DILocalVariable(name: "key", arg: 4, scope: !745, file: !3, line: 207, type: !28)
!753 = !DILocalVariable(name: "n", arg: 5, scope: !745, file: !3, line: 208, type: !28)
!754 = !DILocalVariable(name: "ctr", arg: 6, scope: !745, file: !3, line: 209, type: !6)
!755 = !DILocalVariable(name: "ctx", scope: !745, file: !3, line: 212, type: !234)
!756 = !DILocation(line: 212, column: 12, scope: !745)
!757 = !DILocation(line: 213, column: 36, scope: !745)
!758 = !DILocation(line: 213, column: 3, scope: !745)
!759 = !DILocation(line: 214, column: 38, scope: !745)
!760 = !DILocation(line: 214, column: 3, scope: !745)
!761 = !DILocation(line: 215, column: 1, scope: !745)
!762 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_decrypt", scope: !3, file: !3, line: 218, type: !746, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!763 = !DILocalVariable(name: "len", arg: 1, scope: !762, file: !3, line: 219, type: !6)
!764 = !DILocation(line: 0, scope: !762)
!765 = !DILocalVariable(name: "out", arg: 2, scope: !762, file: !3, line: 220, type: !28)
!766 = !DILocalVariable(name: "cipher", arg: 3, scope: !762, file: !3, line: 221, type: !28)
!767 = !DILocalVariable(name: "key", arg: 4, scope: !762, file: !3, line: 222, type: !28)
!768 = !DILocalVariable(name: "n", arg: 5, scope: !762, file: !3, line: 223, type: !28)
!769 = !DILocalVariable(name: "ctr", arg: 6, scope: !762, file: !3, line: 224, type: !6)
!770 = !DILocalVariable(name: "ctx", scope: !762, file: !3, line: 227, type: !234)
!771 = !DILocation(line: 227, column: 12, scope: !762)
!772 = !DILocation(line: 228, column: 36, scope: !762)
!773 = !DILocation(line: 228, column: 3, scope: !762)
!774 = !DILocation(line: 229, column: 38, scope: !762)
!775 = !DILocation(line: 229, column: 3, scope: !762)
!776 = !DILocation(line: 230, column: 1, scope: !762)
!777 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_encrypt_wrapper", scope: !19, file: !19, line: 3, type: !746, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!778 = !DILocalVariable(name: "len", arg: 1, scope: !777, file: !19, line: 3, type: !6)
!779 = !DILocation(line: 0, scope: !777)
!780 = !DILocalVariable(name: "out", arg: 2, scope: !777, file: !19, line: 4, type: !28)
!781 = !DILocalVariable(name: "cipher", arg: 3, scope: !777, file: !19, line: 5, type: !28)
!782 = !DILocalVariable(name: "key", arg: 4, scope: !777, file: !19, line: 6, type: !28)
!783 = !DILocalVariable(name: "n", arg: 5, scope: !777, file: !19, line: 7, type: !28)
!784 = !DILocalVariable(name: "ctr", arg: 6, scope: !777, file: !19, line: 8, type: !6)
!785 = !DILocation(line: 10, column: 13, scope: !777)
!786 = !DILocation(line: 10, column: 3, scope: !777)
!787 = !DILocation(line: 11, column: 13, scope: !777)
!788 = !DILocation(line: 11, column: 3, scope: !777)
!789 = !DILocation(line: 12, column: 13, scope: !777)
!790 = !DILocation(line: 12, column: 3, scope: !777)
!791 = !DILocation(line: 13, column: 13, scope: !777)
!792 = !DILocation(line: 13, column: 3, scope: !777)
!793 = !DILocation(line: 14, column: 13, scope: !777)
!794 = !DILocation(line: 14, column: 3, scope: !777)
!795 = !DILocation(line: 15, column: 13, scope: !777)
!796 = !DILocation(line: 15, column: 3, scope: !777)
!797 = !DILocation(line: 17, column: 13, scope: !777)
!798 = !DILocation(line: 17, column: 3, scope: !777)
!799 = !DILocation(line: 19, column: 3, scope: !777)
!800 = !DILocation(line: 20, column: 1, scope: !777)
!801 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_encrypt_wrapper_t", scope: !19, file: !19, line: 27, type: !802, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !4)
!802 = !DISubroutineType(types: !803)
!803 = !{null}
!804 = !DILocation(line: 28, column: 17, scope: !801)
!805 = !DILocalVariable(name: "out", scope: !801, file: !19, line: 28, type: !28)
!806 = !DILocation(line: 0, scope: !801)
!807 = !DILocation(line: 29, column: 20, scope: !801)
!808 = !DILocalVariable(name: "cipher", scope: !801, file: !19, line: 29, type: !28)
!809 = !DILocation(line: 30, column: 18, scope: !801)
!810 = !DILocalVariable(name: "key", scope: !801, file: !19, line: 30, type: !28)
!811 = !DILocation(line: 31, column: 16, scope: !801)
!812 = !DILocalVariable(name: "n", scope: !801, file: !19, line: 31, type: !28)
!813 = !DILocation(line: 32, column: 18, scope: !801)
!814 = !DILocalVariable(name: "len", scope: !801, file: !19, line: 32, type: !6)
!815 = !DILocation(line: 33, column: 18, scope: !801)
!816 = !DILocalVariable(name: "ctr", scope: !801, file: !19, line: 33, type: !6)
!817 = !DILocation(line: 35, column: 2, scope: !801)
!818 = !DILocation(line: 36, column: 1, scope: !801)
