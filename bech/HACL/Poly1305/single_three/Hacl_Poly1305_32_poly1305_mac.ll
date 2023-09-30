; ModuleID = 'Hacl_Poly1305_32_poly1305_mac.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_poly1305_init(i64* %0, i8* %1) #0 !dbg !18 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i8* %1, metadata !28, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64* %0, metadata !29, metadata !DIExpression()), !dbg !27
  %3 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !30
  call void @llvm.dbg.value(metadata i64* %3, metadata !31, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i8* %1, metadata !32, metadata !DIExpression()), !dbg !27
  %4 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !33
  store i64 0, i64* %4, align 8, !dbg !34
  %5 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !35
  store i64 0, i64* %5, align 8, !dbg !36
  %6 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !37
  store i64 0, i64* %6, align 8, !dbg !38
  %7 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !39
  store i64 0, i64* %7, align 8, !dbg !40
  %8 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !41
  store i64 0, i64* %8, align 8, !dbg !42
  %9 = call i64 @load64(i8* %1), !dbg !43
  %10 = call i64 @__uint64_identity(i64 %9), !dbg !43
  call void @llvm.dbg.value(metadata i64 %10, metadata !44, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 %10, metadata !45, metadata !DIExpression()), !dbg !27
  %11 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !46
  %12 = call i64 @load64(i8* %11), !dbg !46
  %13 = call i64 @__uint64_identity(i64 %12), !dbg !46
  call void @llvm.dbg.value(metadata i64 %13, metadata !47, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 %13, metadata !48, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 1152921487695413247, metadata !49, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 1152921487695413244, metadata !50, metadata !DIExpression()), !dbg !27
  %14 = and i64 %10, 1152921487695413247, !dbg !51
  call void @llvm.dbg.value(metadata i64 %14, metadata !52, metadata !DIExpression()), !dbg !27
  %15 = and i64 %13, 1152921487695413244, !dbg !53
  call void @llvm.dbg.value(metadata i64 %15, metadata !54, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64* %3, metadata !55, metadata !DIExpression()), !dbg !27
  %16 = getelementptr inbounds i64, i64* %3, i64 5, !dbg !56
  call void @llvm.dbg.value(metadata i64* %16, metadata !57, metadata !DIExpression()), !dbg !27
  %17 = getelementptr inbounds i64, i64* %3, i64 10, !dbg !58
  call void @llvm.dbg.value(metadata i64* %17, metadata !59, metadata !DIExpression()), !dbg !27
  %18 = getelementptr inbounds i64, i64* %3, i64 15, !dbg !60
  call void @llvm.dbg.value(metadata i64* %18, metadata !61, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 %14, metadata !62, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 %15, metadata !63, metadata !DIExpression()), !dbg !27
  %19 = and i64 %14, 67108863, !dbg !64
  call void @llvm.dbg.value(metadata i64 %19, metadata !65, metadata !DIExpression()), !dbg !27
  %20 = lshr i64 %14, 26, !dbg !66
  %21 = and i64 %20, 67108863, !dbg !67
  call void @llvm.dbg.value(metadata i64 %21, metadata !68, metadata !DIExpression()), !dbg !27
  %22 = lshr i64 %14, 52, !dbg !69
  %23 = and i64 %15, 16383, !dbg !70
  %24 = shl i64 %23, 12, !dbg !71
  %25 = or i64 %22, %24, !dbg !72
  call void @llvm.dbg.value(metadata i64 %25, metadata !73, metadata !DIExpression()), !dbg !27
  %26 = lshr i64 %15, 14, !dbg !74
  %27 = and i64 %26, 67108863, !dbg !75
  call void @llvm.dbg.value(metadata i64 %27, metadata !76, metadata !DIExpression()), !dbg !27
  %28 = lshr i64 %15, 40, !dbg !77
  call void @llvm.dbg.value(metadata i64 %28, metadata !78, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 %19, metadata !79, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 %21, metadata !80, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 %25, metadata !81, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 %27, metadata !82, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i64 %28, metadata !83, metadata !DIExpression()), !dbg !27
  %29 = getelementptr inbounds i64, i64* %3, i64 0, !dbg !84
  store i64 %19, i64* %29, align 8, !dbg !85
  %30 = getelementptr inbounds i64, i64* %3, i64 1, !dbg !86
  store i64 %21, i64* %30, align 8, !dbg !87
  %31 = getelementptr inbounds i64, i64* %3, i64 2, !dbg !88
  store i64 %25, i64* %31, align 8, !dbg !89
  %32 = getelementptr inbounds i64, i64* %3, i64 3, !dbg !90
  store i64 %27, i64* %32, align 8, !dbg !91
  %33 = getelementptr inbounds i64, i64* %3, i64 4, !dbg !92
  store i64 %28, i64* %33, align 8, !dbg !93
  %34 = getelementptr inbounds i64, i64* %3, i64 0, !dbg !94
  %35 = load i64, i64* %34, align 8, !dbg !94
  call void @llvm.dbg.value(metadata i64 %35, metadata !95, metadata !DIExpression()), !dbg !27
  %36 = getelementptr inbounds i64, i64* %3, i64 1, !dbg !96
  %37 = load i64, i64* %36, align 8, !dbg !96
  call void @llvm.dbg.value(metadata i64 %37, metadata !97, metadata !DIExpression()), !dbg !27
  %38 = getelementptr inbounds i64, i64* %3, i64 2, !dbg !98
  %39 = load i64, i64* %38, align 8, !dbg !98
  call void @llvm.dbg.value(metadata i64 %39, metadata !99, metadata !DIExpression()), !dbg !27
  %40 = getelementptr inbounds i64, i64* %3, i64 3, !dbg !100
  %41 = load i64, i64* %40, align 8, !dbg !100
  call void @llvm.dbg.value(metadata i64 %41, metadata !101, metadata !DIExpression()), !dbg !27
  %42 = getelementptr inbounds i64, i64* %3, i64 4, !dbg !102
  %43 = load i64, i64* %42, align 8, !dbg !102
  call void @llvm.dbg.value(metadata i64 %43, metadata !103, metadata !DIExpression()), !dbg !27
  %44 = mul i64 %35, 5, !dbg !104
  %45 = getelementptr inbounds i64, i64* %16, i64 0, !dbg !105
  store i64 %44, i64* %45, align 8, !dbg !106
  %46 = mul i64 %37, 5, !dbg !107
  %47 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !108
  store i64 %46, i64* %47, align 8, !dbg !109
  %48 = mul i64 %39, 5, !dbg !110
  %49 = getelementptr inbounds i64, i64* %16, i64 2, !dbg !111
  store i64 %48, i64* %49, align 8, !dbg !112
  %50 = mul i64 %41, 5, !dbg !113
  %51 = getelementptr inbounds i64, i64* %16, i64 3, !dbg !114
  store i64 %50, i64* %51, align 8, !dbg !115
  %52 = mul i64 %43, 5, !dbg !116
  %53 = getelementptr inbounds i64, i64* %16, i64 4, !dbg !117
  store i64 %52, i64* %53, align 8, !dbg !118
  %54 = getelementptr inbounds i64, i64* %3, i64 0, !dbg !119
  %55 = load i64, i64* %54, align 8, !dbg !119
  %56 = getelementptr inbounds i64, i64* %17, i64 0, !dbg !120
  store i64 %55, i64* %56, align 8, !dbg !121
  %57 = getelementptr inbounds i64, i64* %3, i64 1, !dbg !122
  %58 = load i64, i64* %57, align 8, !dbg !122
  %59 = getelementptr inbounds i64, i64* %17, i64 1, !dbg !123
  store i64 %58, i64* %59, align 8, !dbg !124
  %60 = getelementptr inbounds i64, i64* %3, i64 2, !dbg !125
  %61 = load i64, i64* %60, align 8, !dbg !125
  %62 = getelementptr inbounds i64, i64* %17, i64 2, !dbg !126
  store i64 %61, i64* %62, align 8, !dbg !127
  %63 = getelementptr inbounds i64, i64* %3, i64 3, !dbg !128
  %64 = load i64, i64* %63, align 8, !dbg !128
  %65 = getelementptr inbounds i64, i64* %17, i64 3, !dbg !129
  store i64 %64, i64* %65, align 8, !dbg !130
  %66 = getelementptr inbounds i64, i64* %3, i64 4, !dbg !131
  %67 = load i64, i64* %66, align 8, !dbg !131
  %68 = getelementptr inbounds i64, i64* %17, i64 4, !dbg !132
  store i64 %67, i64* %68, align 8, !dbg !133
  %69 = getelementptr inbounds i64, i64* %16, i64 0, !dbg !134
  %70 = load i64, i64* %69, align 8, !dbg !134
  %71 = getelementptr inbounds i64, i64* %18, i64 0, !dbg !135
  store i64 %70, i64* %71, align 8, !dbg !136
  %72 = getelementptr inbounds i64, i64* %16, i64 1, !dbg !137
  %73 = load i64, i64* %72, align 8, !dbg !137
  %74 = getelementptr inbounds i64, i64* %18, i64 1, !dbg !138
  store i64 %73, i64* %74, align 8, !dbg !139
  %75 = getelementptr inbounds i64, i64* %16, i64 2, !dbg !140
  %76 = load i64, i64* %75, align 8, !dbg !140
  %77 = getelementptr inbounds i64, i64* %18, i64 2, !dbg !141
  store i64 %76, i64* %77, align 8, !dbg !142
  %78 = getelementptr inbounds i64, i64* %16, i64 3, !dbg !143
  %79 = load i64, i64* %78, align 8, !dbg !143
  %80 = getelementptr inbounds i64, i64* %18, i64 3, !dbg !144
  store i64 %79, i64* %80, align 8, !dbg !145
  %81 = getelementptr inbounds i64, i64* %16, i64 4, !dbg !146
  %82 = load i64, i64* %81, align 8, !dbg !146
  %83 = getelementptr inbounds i64, i64* %18, i64 4, !dbg !147
  store i64 %82, i64* %83, align 8, !dbg !148
  ret void, !dbg !149
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @load64(i8* %0) #0 !dbg !150 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i64* %2, metadata !156, metadata !DIExpression()), !dbg !157
  %3 = bitcast i64* %2 to i8*, !dbg !158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 1 %0, i64 8, i1 false), !dbg !158
  %4 = load i64, i64* %2, align 8, !dbg !159
  ret i64 %4, !dbg !160
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @__uint64_identity(i64 %0) #0 !dbg !161 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !165, metadata !DIExpression()), !dbg !166
  ret i64 %0, !dbg !167
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_poly1305_update1(i64* %0, i8* %1) #0 !dbg !168 {
  %3 = alloca [5 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i8* %1, metadata !171, metadata !DIExpression()), !dbg !170
  %4 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !172
  call void @llvm.dbg.value(metadata i64* %4, metadata !173, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64* %0, metadata !174, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !175, metadata !DIExpression()), !dbg !179
  %5 = bitcast [5 x i64]* %3 to i8*, !dbg !179
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !179
  %6 = call i64 @load64(i8* %1), !dbg !180
  %7 = call i64 @__uint64_identity(i64 %6), !dbg !180
  call void @llvm.dbg.value(metadata i64 %7, metadata !181, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %7, metadata !182, metadata !DIExpression()), !dbg !170
  %8 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !183
  %9 = call i64 @load64(i8* %8), !dbg !183
  %10 = call i64 @__uint64_identity(i64 %9), !dbg !183
  call void @llvm.dbg.value(metadata i64 %10, metadata !184, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %10, metadata !185, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %7, metadata !186, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %10, metadata !187, metadata !DIExpression()), !dbg !170
  %11 = and i64 %7, 67108863, !dbg !188
  call void @llvm.dbg.value(metadata i64 %11, metadata !189, metadata !DIExpression()), !dbg !170
  %12 = lshr i64 %7, 26, !dbg !190
  %13 = and i64 %12, 67108863, !dbg !191
  call void @llvm.dbg.value(metadata i64 %13, metadata !192, metadata !DIExpression()), !dbg !170
  %14 = lshr i64 %7, 52, !dbg !193
  %15 = and i64 %10, 16383, !dbg !194
  %16 = shl i64 %15, 12, !dbg !195
  %17 = or i64 %14, %16, !dbg !196
  call void @llvm.dbg.value(metadata i64 %17, metadata !197, metadata !DIExpression()), !dbg !170
  %18 = lshr i64 %10, 14, !dbg !198
  %19 = and i64 %18, 67108863, !dbg !199
  call void @llvm.dbg.value(metadata i64 %19, metadata !200, metadata !DIExpression()), !dbg !170
  %20 = lshr i64 %10, 40, !dbg !201
  call void @llvm.dbg.value(metadata i64 %20, metadata !202, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %11, metadata !203, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %13, metadata !204, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %17, metadata !205, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %19, metadata !206, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %20, metadata !207, metadata !DIExpression()), !dbg !170
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !208
  store i64 %11, i64* %21, align 16, !dbg !209
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 1, !dbg !210
  store i64 %13, i64* %22, align 8, !dbg !211
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 2, !dbg !212
  store i64 %17, i64* %23, align 16, !dbg !213
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 3, !dbg !214
  store i64 %19, i64* %24, align 8, !dbg !215
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !216
  store i64 %20, i64* %25, align 16, !dbg !217
  call void @llvm.dbg.value(metadata i64 16777216, metadata !218, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 16777216, metadata !219, metadata !DIExpression()), !dbg !170
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !220
  %27 = load i64, i64* %26, align 16, !dbg !220
  call void @llvm.dbg.value(metadata i64 %27, metadata !221, metadata !DIExpression()), !dbg !170
  %28 = or i64 %27, 16777216, !dbg !222
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !223
  store i64 %28, i64* %29, align 16, !dbg !224
  call void @llvm.dbg.value(metadata i64* %4, metadata !225, metadata !DIExpression()), !dbg !170
  %30 = getelementptr inbounds i64, i64* %4, i64 5, !dbg !226
  call void @llvm.dbg.value(metadata i64* %30, metadata !227, metadata !DIExpression()), !dbg !170
  %31 = getelementptr inbounds i64, i64* %4, i64 0, !dbg !228
  %32 = load i64, i64* %31, align 8, !dbg !228
  call void @llvm.dbg.value(metadata i64 %32, metadata !229, metadata !DIExpression()), !dbg !170
  %33 = getelementptr inbounds i64, i64* %4, i64 1, !dbg !230
  %34 = load i64, i64* %33, align 8, !dbg !230
  call void @llvm.dbg.value(metadata i64 %34, metadata !231, metadata !DIExpression()), !dbg !170
  %35 = getelementptr inbounds i64, i64* %4, i64 2, !dbg !232
  %36 = load i64, i64* %35, align 8, !dbg !232
  call void @llvm.dbg.value(metadata i64 %36, metadata !233, metadata !DIExpression()), !dbg !170
  %37 = getelementptr inbounds i64, i64* %4, i64 3, !dbg !234
  %38 = load i64, i64* %37, align 8, !dbg !234
  call void @llvm.dbg.value(metadata i64 %38, metadata !235, metadata !DIExpression()), !dbg !170
  %39 = getelementptr inbounds i64, i64* %4, i64 4, !dbg !236
  %40 = load i64, i64* %39, align 8, !dbg !236
  call void @llvm.dbg.value(metadata i64 %40, metadata !237, metadata !DIExpression()), !dbg !170
  %41 = getelementptr inbounds i64, i64* %30, i64 1, !dbg !238
  %42 = load i64, i64* %41, align 8, !dbg !238
  call void @llvm.dbg.value(metadata i64 %42, metadata !239, metadata !DIExpression()), !dbg !170
  %43 = getelementptr inbounds i64, i64* %30, i64 2, !dbg !240
  %44 = load i64, i64* %43, align 8, !dbg !240
  call void @llvm.dbg.value(metadata i64 %44, metadata !241, metadata !DIExpression()), !dbg !170
  %45 = getelementptr inbounds i64, i64* %30, i64 3, !dbg !242
  %46 = load i64, i64* %45, align 8, !dbg !242
  call void @llvm.dbg.value(metadata i64 %46, metadata !243, metadata !DIExpression()), !dbg !170
  %47 = getelementptr inbounds i64, i64* %30, i64 4, !dbg !244
  %48 = load i64, i64* %47, align 8, !dbg !244
  call void @llvm.dbg.value(metadata i64 %48, metadata !245, metadata !DIExpression()), !dbg !170
  %49 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !246
  %50 = load i64, i64* %49, align 16, !dbg !246
  call void @llvm.dbg.value(metadata i64 %50, metadata !247, metadata !DIExpression()), !dbg !170
  %51 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 1, !dbg !248
  %52 = load i64, i64* %51, align 8, !dbg !248
  call void @llvm.dbg.value(metadata i64 %52, metadata !249, metadata !DIExpression()), !dbg !170
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 2, !dbg !250
  %54 = load i64, i64* %53, align 16, !dbg !250
  call void @llvm.dbg.value(metadata i64 %54, metadata !251, metadata !DIExpression()), !dbg !170
  %55 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 3, !dbg !252
  %56 = load i64, i64* %55, align 8, !dbg !252
  call void @llvm.dbg.value(metadata i64 %56, metadata !253, metadata !DIExpression()), !dbg !170
  %57 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !254
  %58 = load i64, i64* %57, align 16, !dbg !254
  call void @llvm.dbg.value(metadata i64 %58, metadata !255, metadata !DIExpression()), !dbg !170
  %59 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !256
  %60 = load i64, i64* %59, align 8, !dbg !256
  call void @llvm.dbg.value(metadata i64 %60, metadata !257, metadata !DIExpression()), !dbg !170
  %61 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !258
  %62 = load i64, i64* %61, align 8, !dbg !258
  call void @llvm.dbg.value(metadata i64 %62, metadata !259, metadata !DIExpression()), !dbg !170
  %63 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !260
  %64 = load i64, i64* %63, align 8, !dbg !260
  call void @llvm.dbg.value(metadata i64 %64, metadata !261, metadata !DIExpression()), !dbg !170
  %65 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !262
  %66 = load i64, i64* %65, align 8, !dbg !262
  call void @llvm.dbg.value(metadata i64 %66, metadata !263, metadata !DIExpression()), !dbg !170
  %67 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !264
  %68 = load i64, i64* %67, align 8, !dbg !264
  call void @llvm.dbg.value(metadata i64 %68, metadata !265, metadata !DIExpression()), !dbg !170
  %69 = add i64 %60, %50, !dbg !266
  call void @llvm.dbg.value(metadata i64 %69, metadata !267, metadata !DIExpression()), !dbg !170
  %70 = add i64 %62, %52, !dbg !268
  call void @llvm.dbg.value(metadata i64 %70, metadata !269, metadata !DIExpression()), !dbg !170
  %71 = add i64 %64, %54, !dbg !270
  call void @llvm.dbg.value(metadata i64 %71, metadata !271, metadata !DIExpression()), !dbg !170
  %72 = add i64 %66, %56, !dbg !272
  call void @llvm.dbg.value(metadata i64 %72, metadata !273, metadata !DIExpression()), !dbg !170
  %73 = add i64 %68, %58, !dbg !274
  call void @llvm.dbg.value(metadata i64 %73, metadata !275, metadata !DIExpression()), !dbg !170
  %74 = mul i64 %32, %69, !dbg !276
  call void @llvm.dbg.value(metadata i64 %74, metadata !277, metadata !DIExpression()), !dbg !170
  %75 = mul i64 %34, %69, !dbg !278
  call void @llvm.dbg.value(metadata i64 %75, metadata !279, metadata !DIExpression()), !dbg !170
  %76 = mul i64 %36, %69, !dbg !280
  call void @llvm.dbg.value(metadata i64 %76, metadata !281, metadata !DIExpression()), !dbg !170
  %77 = mul i64 %38, %69, !dbg !282
  call void @llvm.dbg.value(metadata i64 %77, metadata !283, metadata !DIExpression()), !dbg !170
  %78 = mul i64 %40, %69, !dbg !284
  call void @llvm.dbg.value(metadata i64 %78, metadata !285, metadata !DIExpression()), !dbg !170
  %79 = mul i64 %48, %70, !dbg !286
  %80 = add i64 %74, %79, !dbg !287
  call void @llvm.dbg.value(metadata i64 %80, metadata !288, metadata !DIExpression()), !dbg !170
  %81 = mul i64 %32, %70, !dbg !289
  %82 = add i64 %75, %81, !dbg !290
  call void @llvm.dbg.value(metadata i64 %82, metadata !291, metadata !DIExpression()), !dbg !170
  %83 = mul i64 %34, %70, !dbg !292
  %84 = add i64 %76, %83, !dbg !293
  call void @llvm.dbg.value(metadata i64 %84, metadata !294, metadata !DIExpression()), !dbg !170
  %85 = mul i64 %36, %70, !dbg !295
  %86 = add i64 %77, %85, !dbg !296
  call void @llvm.dbg.value(metadata i64 %86, metadata !297, metadata !DIExpression()), !dbg !170
  %87 = mul i64 %38, %70, !dbg !298
  %88 = add i64 %78, %87, !dbg !299
  call void @llvm.dbg.value(metadata i64 %88, metadata !300, metadata !DIExpression()), !dbg !170
  %89 = mul i64 %46, %71, !dbg !301
  %90 = add i64 %80, %89, !dbg !302
  call void @llvm.dbg.value(metadata i64 %90, metadata !303, metadata !DIExpression()), !dbg !170
  %91 = mul i64 %48, %71, !dbg !304
  %92 = add i64 %82, %91, !dbg !305
  call void @llvm.dbg.value(metadata i64 %92, metadata !306, metadata !DIExpression()), !dbg !170
  %93 = mul i64 %32, %71, !dbg !307
  %94 = add i64 %84, %93, !dbg !308
  call void @llvm.dbg.value(metadata i64 %94, metadata !309, metadata !DIExpression()), !dbg !170
  %95 = mul i64 %34, %71, !dbg !310
  %96 = add i64 %86, %95, !dbg !311
  call void @llvm.dbg.value(metadata i64 %96, metadata !312, metadata !DIExpression()), !dbg !170
  %97 = mul i64 %36, %71, !dbg !313
  %98 = add i64 %88, %97, !dbg !314
  call void @llvm.dbg.value(metadata i64 %98, metadata !315, metadata !DIExpression()), !dbg !170
  %99 = mul i64 %44, %72, !dbg !316
  %100 = add i64 %90, %99, !dbg !317
  call void @llvm.dbg.value(metadata i64 %100, metadata !318, metadata !DIExpression()), !dbg !170
  %101 = mul i64 %46, %72, !dbg !319
  %102 = add i64 %92, %101, !dbg !320
  call void @llvm.dbg.value(metadata i64 %102, metadata !321, metadata !DIExpression()), !dbg !170
  %103 = mul i64 %48, %72, !dbg !322
  %104 = add i64 %94, %103, !dbg !323
  call void @llvm.dbg.value(metadata i64 %104, metadata !324, metadata !DIExpression()), !dbg !170
  %105 = mul i64 %32, %72, !dbg !325
  %106 = add i64 %96, %105, !dbg !326
  call void @llvm.dbg.value(metadata i64 %106, metadata !327, metadata !DIExpression()), !dbg !170
  %107 = mul i64 %34, %72, !dbg !328
  %108 = add i64 %98, %107, !dbg !329
  call void @llvm.dbg.value(metadata i64 %108, metadata !330, metadata !DIExpression()), !dbg !170
  %109 = mul i64 %42, %73, !dbg !331
  %110 = add i64 %100, %109, !dbg !332
  call void @llvm.dbg.value(metadata i64 %110, metadata !333, metadata !DIExpression()), !dbg !170
  %111 = mul i64 %44, %73, !dbg !334
  %112 = add i64 %102, %111, !dbg !335
  call void @llvm.dbg.value(metadata i64 %112, metadata !336, metadata !DIExpression()), !dbg !170
  %113 = mul i64 %46, %73, !dbg !337
  %114 = add i64 %104, %113, !dbg !338
  call void @llvm.dbg.value(metadata i64 %114, metadata !339, metadata !DIExpression()), !dbg !170
  %115 = mul i64 %48, %73, !dbg !340
  %116 = add i64 %106, %115, !dbg !341
  call void @llvm.dbg.value(metadata i64 %116, metadata !342, metadata !DIExpression()), !dbg !170
  %117 = mul i64 %32, %73, !dbg !343
  %118 = add i64 %108, %117, !dbg !344
  call void @llvm.dbg.value(metadata i64 %118, metadata !345, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %110, metadata !346, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %112, metadata !347, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %114, metadata !348, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %116, metadata !349, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %118, metadata !350, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 67108863, metadata !351, metadata !DIExpression()), !dbg !170
  %119 = lshr i64 %110, 26, !dbg !352
  call void @llvm.dbg.value(metadata i64 %119, metadata !353, metadata !DIExpression()), !dbg !170
  %120 = lshr i64 %116, 26, !dbg !354
  call void @llvm.dbg.value(metadata i64 %120, metadata !355, metadata !DIExpression()), !dbg !170
  %121 = and i64 %110, 67108863, !dbg !356
  call void @llvm.dbg.value(metadata i64 %121, metadata !357, metadata !DIExpression()), !dbg !170
  %122 = and i64 %116, 67108863, !dbg !358
  call void @llvm.dbg.value(metadata i64 %122, metadata !359, metadata !DIExpression()), !dbg !170
  %123 = add i64 %112, %119, !dbg !360
  call void @llvm.dbg.value(metadata i64 %123, metadata !361, metadata !DIExpression()), !dbg !170
  %124 = add i64 %118, %120, !dbg !362
  call void @llvm.dbg.value(metadata i64 %124, metadata !363, metadata !DIExpression()), !dbg !170
  %125 = lshr i64 %123, 26, !dbg !364
  call void @llvm.dbg.value(metadata i64 %125, metadata !365, metadata !DIExpression()), !dbg !170
  %126 = lshr i64 %124, 26, !dbg !366
  call void @llvm.dbg.value(metadata i64 %126, metadata !367, metadata !DIExpression()), !dbg !170
  %127 = shl i64 %126, 2, !dbg !368
  call void @llvm.dbg.value(metadata i64 %127, metadata !369, metadata !DIExpression()), !dbg !170
  %128 = add i64 %126, %127, !dbg !370
  call void @llvm.dbg.value(metadata i64 %128, metadata !371, metadata !DIExpression()), !dbg !170
  %129 = and i64 %123, 67108863, !dbg !372
  call void @llvm.dbg.value(metadata i64 %129, metadata !373, metadata !DIExpression()), !dbg !170
  %130 = and i64 %124, 67108863, !dbg !374
  call void @llvm.dbg.value(metadata i64 %130, metadata !375, metadata !DIExpression()), !dbg !170
  %131 = add i64 %114, %125, !dbg !376
  call void @llvm.dbg.value(metadata i64 %131, metadata !377, metadata !DIExpression()), !dbg !170
  %132 = add i64 %121, %128, !dbg !378
  call void @llvm.dbg.value(metadata i64 %132, metadata !379, metadata !DIExpression()), !dbg !170
  %133 = lshr i64 %131, 26, !dbg !380
  call void @llvm.dbg.value(metadata i64 %133, metadata !381, metadata !DIExpression()), !dbg !170
  %134 = lshr i64 %132, 26, !dbg !382
  call void @llvm.dbg.value(metadata i64 %134, metadata !383, metadata !DIExpression()), !dbg !170
  %135 = and i64 %131, 67108863, !dbg !384
  call void @llvm.dbg.value(metadata i64 %135, metadata !385, metadata !DIExpression()), !dbg !170
  %136 = and i64 %132, 67108863, !dbg !386
  call void @llvm.dbg.value(metadata i64 %136, metadata !387, metadata !DIExpression()), !dbg !170
  %137 = add i64 %122, %133, !dbg !388
  call void @llvm.dbg.value(metadata i64 %137, metadata !389, metadata !DIExpression()), !dbg !170
  %138 = add i64 %129, %134, !dbg !390
  call void @llvm.dbg.value(metadata i64 %138, metadata !391, metadata !DIExpression()), !dbg !170
  %139 = lshr i64 %137, 26, !dbg !392
  call void @llvm.dbg.value(metadata i64 %139, metadata !393, metadata !DIExpression()), !dbg !170
  %140 = and i64 %137, 67108863, !dbg !394
  call void @llvm.dbg.value(metadata i64 %140, metadata !395, metadata !DIExpression()), !dbg !170
  %141 = add i64 %130, %139, !dbg !396
  call void @llvm.dbg.value(metadata i64 %141, metadata !397, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %136, metadata !398, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %138, metadata !399, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %135, metadata !400, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %140, metadata !401, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %141, metadata !402, metadata !DIExpression()), !dbg !170
  %142 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !403
  store i64 %136, i64* %142, align 8, !dbg !404
  %143 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !405
  store i64 %138, i64* %143, align 8, !dbg !406
  %144 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !407
  store i64 %135, i64* %144, align 8, !dbg !408
  %145 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !409
  store i64 %140, i64* %145, align 8, !dbg !410
  %146 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !411
  store i64 %141, i64* %146, align 8, !dbg !412
  ret void, !dbg !413
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_poly1305_update(i64* %0, i32 %1, i8* %2) #0 !dbg !414 {
  %4 = alloca [5 x i64], align 16
  %5 = alloca [5 x i64], align 16
  %6 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %1, metadata !419, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i8* %2, metadata !420, metadata !DIExpression()), !dbg !418
  %7 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !421
  call void @llvm.dbg.value(metadata i64* %7, metadata !422, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i64* %0, metadata !423, metadata !DIExpression()), !dbg !418
  %8 = udiv i32 %1, 16, !dbg !424
  call void @llvm.dbg.value(metadata i32 %8, metadata !425, metadata !DIExpression()), !dbg !418
  %9 = urem i32 %1, 16, !dbg !426
  call void @llvm.dbg.value(metadata i32 %9, metadata !427, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 0, metadata !428, metadata !DIExpression()), !dbg !430
  br label %10, !dbg !431

10:                                               ; preds = %158, %3
  %.0 = phi i32 [ 0, %3 ], [ %159, %158 ], !dbg !430
  call void @llvm.dbg.value(metadata i32 %.0, metadata !428, metadata !DIExpression()), !dbg !430
  %11 = icmp ult i32 %.0, %8, !dbg !432
  br i1 %11, label %12, label %160, !dbg !434

12:                                               ; preds = %10
  %13 = mul i32 %.0, 16, !dbg !435
  %14 = zext i32 %13 to i64, !dbg !437
  %15 = getelementptr inbounds i8, i8* %2, i64 %14, !dbg !437
  call void @llvm.dbg.value(metadata i8* %15, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !440, metadata !DIExpression()), !dbg !441
  %16 = bitcast [5 x i64]* %4 to i8*, !dbg !441
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false), !dbg !441
  %17 = call i64 @load64(i8* %15), !dbg !442
  %18 = call i64 @__uint64_identity(i64 %17), !dbg !442
  call void @llvm.dbg.value(metadata i64 %18, metadata !443, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %18, metadata !444, metadata !DIExpression()), !dbg !439
  %19 = getelementptr inbounds i8, i8* %15, i64 8, !dbg !445
  %20 = call i64 @load64(i8* %19), !dbg !445
  %21 = call i64 @__uint64_identity(i64 %20), !dbg !445
  call void @llvm.dbg.value(metadata i64 %21, metadata !446, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %21, metadata !447, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %18, metadata !448, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %21, metadata !449, metadata !DIExpression()), !dbg !439
  %22 = and i64 %18, 67108863, !dbg !450
  call void @llvm.dbg.value(metadata i64 %22, metadata !451, metadata !DIExpression()), !dbg !439
  %23 = lshr i64 %18, 26, !dbg !452
  %24 = and i64 %23, 67108863, !dbg !453
  call void @llvm.dbg.value(metadata i64 %24, metadata !454, metadata !DIExpression()), !dbg !439
  %25 = lshr i64 %18, 52, !dbg !455
  %26 = and i64 %21, 16383, !dbg !456
  %27 = shl i64 %26, 12, !dbg !457
  %28 = or i64 %25, %27, !dbg !458
  call void @llvm.dbg.value(metadata i64 %28, metadata !459, metadata !DIExpression()), !dbg !439
  %29 = lshr i64 %21, 14, !dbg !460
  %30 = and i64 %29, 67108863, !dbg !461
  call void @llvm.dbg.value(metadata i64 %30, metadata !462, metadata !DIExpression()), !dbg !439
  %31 = lshr i64 %21, 40, !dbg !463
  call void @llvm.dbg.value(metadata i64 %31, metadata !464, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %22, metadata !465, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %24, metadata !466, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %28, metadata !467, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %30, metadata !468, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %31, metadata !469, metadata !DIExpression()), !dbg !439
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !470
  store i64 %22, i64* %32, align 16, !dbg !471
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !472
  store i64 %24, i64* %33, align 8, !dbg !473
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !474
  store i64 %28, i64* %34, align 16, !dbg !475
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !476
  store i64 %30, i64* %35, align 8, !dbg !477
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !478
  store i64 %31, i64* %36, align 16, !dbg !479
  call void @llvm.dbg.value(metadata i64 16777216, metadata !480, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 16777216, metadata !481, metadata !DIExpression()), !dbg !439
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !482
  %38 = load i64, i64* %37, align 16, !dbg !482
  call void @llvm.dbg.value(metadata i64 %38, metadata !483, metadata !DIExpression()), !dbg !439
  %39 = or i64 %38, 16777216, !dbg !484
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !485
  store i64 %39, i64* %40, align 16, !dbg !486
  call void @llvm.dbg.value(metadata i64* %7, metadata !487, metadata !DIExpression()), !dbg !439
  %41 = getelementptr inbounds i64, i64* %7, i64 5, !dbg !488
  call void @llvm.dbg.value(metadata i64* %41, metadata !489, metadata !DIExpression()), !dbg !439
  %42 = getelementptr inbounds i64, i64* %7, i64 0, !dbg !490
  %43 = load i64, i64* %42, align 8, !dbg !490
  call void @llvm.dbg.value(metadata i64 %43, metadata !491, metadata !DIExpression()), !dbg !439
  %44 = getelementptr inbounds i64, i64* %7, i64 1, !dbg !492
  %45 = load i64, i64* %44, align 8, !dbg !492
  call void @llvm.dbg.value(metadata i64 %45, metadata !493, metadata !DIExpression()), !dbg !439
  %46 = getelementptr inbounds i64, i64* %7, i64 2, !dbg !494
  %47 = load i64, i64* %46, align 8, !dbg !494
  call void @llvm.dbg.value(metadata i64 %47, metadata !495, metadata !DIExpression()), !dbg !439
  %48 = getelementptr inbounds i64, i64* %7, i64 3, !dbg !496
  %49 = load i64, i64* %48, align 8, !dbg !496
  call void @llvm.dbg.value(metadata i64 %49, metadata !497, metadata !DIExpression()), !dbg !439
  %50 = getelementptr inbounds i64, i64* %7, i64 4, !dbg !498
  %51 = load i64, i64* %50, align 8, !dbg !498
  call void @llvm.dbg.value(metadata i64 %51, metadata !499, metadata !DIExpression()), !dbg !439
  %52 = getelementptr inbounds i64, i64* %41, i64 1, !dbg !500
  %53 = load i64, i64* %52, align 8, !dbg !500
  call void @llvm.dbg.value(metadata i64 %53, metadata !501, metadata !DIExpression()), !dbg !439
  %54 = getelementptr inbounds i64, i64* %41, i64 2, !dbg !502
  %55 = load i64, i64* %54, align 8, !dbg !502
  call void @llvm.dbg.value(metadata i64 %55, metadata !503, metadata !DIExpression()), !dbg !439
  %56 = getelementptr inbounds i64, i64* %41, i64 3, !dbg !504
  %57 = load i64, i64* %56, align 8, !dbg !504
  call void @llvm.dbg.value(metadata i64 %57, metadata !505, metadata !DIExpression()), !dbg !439
  %58 = getelementptr inbounds i64, i64* %41, i64 4, !dbg !506
  %59 = load i64, i64* %58, align 8, !dbg !506
  call void @llvm.dbg.value(metadata i64 %59, metadata !507, metadata !DIExpression()), !dbg !439
  %60 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !508
  %61 = load i64, i64* %60, align 16, !dbg !508
  call void @llvm.dbg.value(metadata i64 %61, metadata !509, metadata !DIExpression()), !dbg !439
  %62 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !510
  %63 = load i64, i64* %62, align 8, !dbg !510
  call void @llvm.dbg.value(metadata i64 %63, metadata !511, metadata !DIExpression()), !dbg !439
  %64 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !512
  %65 = load i64, i64* %64, align 16, !dbg !512
  call void @llvm.dbg.value(metadata i64 %65, metadata !513, metadata !DIExpression()), !dbg !439
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !514
  %67 = load i64, i64* %66, align 8, !dbg !514
  call void @llvm.dbg.value(metadata i64 %67, metadata !515, metadata !DIExpression()), !dbg !439
  %68 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !516
  %69 = load i64, i64* %68, align 16, !dbg !516
  call void @llvm.dbg.value(metadata i64 %69, metadata !517, metadata !DIExpression()), !dbg !439
  %70 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !518
  %71 = load i64, i64* %70, align 8, !dbg !518
  call void @llvm.dbg.value(metadata i64 %71, metadata !519, metadata !DIExpression()), !dbg !439
  %72 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !520
  %73 = load i64, i64* %72, align 8, !dbg !520
  call void @llvm.dbg.value(metadata i64 %73, metadata !521, metadata !DIExpression()), !dbg !439
  %74 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !522
  %75 = load i64, i64* %74, align 8, !dbg !522
  call void @llvm.dbg.value(metadata i64 %75, metadata !523, metadata !DIExpression()), !dbg !439
  %76 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !524
  %77 = load i64, i64* %76, align 8, !dbg !524
  call void @llvm.dbg.value(metadata i64 %77, metadata !525, metadata !DIExpression()), !dbg !439
  %78 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !526
  %79 = load i64, i64* %78, align 8, !dbg !526
  call void @llvm.dbg.value(metadata i64 %79, metadata !527, metadata !DIExpression()), !dbg !439
  %80 = add i64 %71, %61, !dbg !528
  call void @llvm.dbg.value(metadata i64 %80, metadata !529, metadata !DIExpression()), !dbg !439
  %81 = add i64 %73, %63, !dbg !530
  call void @llvm.dbg.value(metadata i64 %81, metadata !531, metadata !DIExpression()), !dbg !439
  %82 = add i64 %75, %65, !dbg !532
  call void @llvm.dbg.value(metadata i64 %82, metadata !533, metadata !DIExpression()), !dbg !439
  %83 = add i64 %77, %67, !dbg !534
  call void @llvm.dbg.value(metadata i64 %83, metadata !535, metadata !DIExpression()), !dbg !439
  %84 = add i64 %79, %69, !dbg !536
  call void @llvm.dbg.value(metadata i64 %84, metadata !537, metadata !DIExpression()), !dbg !439
  %85 = mul i64 %43, %80, !dbg !538
  call void @llvm.dbg.value(metadata i64 %85, metadata !539, metadata !DIExpression()), !dbg !439
  %86 = mul i64 %45, %80, !dbg !540
  call void @llvm.dbg.value(metadata i64 %86, metadata !541, metadata !DIExpression()), !dbg !439
  %87 = mul i64 %47, %80, !dbg !542
  call void @llvm.dbg.value(metadata i64 %87, metadata !543, metadata !DIExpression()), !dbg !439
  %88 = mul i64 %49, %80, !dbg !544
  call void @llvm.dbg.value(metadata i64 %88, metadata !545, metadata !DIExpression()), !dbg !439
  %89 = mul i64 %51, %80, !dbg !546
  call void @llvm.dbg.value(metadata i64 %89, metadata !547, metadata !DIExpression()), !dbg !439
  %90 = mul i64 %59, %81, !dbg !548
  %91 = add i64 %85, %90, !dbg !549
  call void @llvm.dbg.value(metadata i64 %91, metadata !550, metadata !DIExpression()), !dbg !439
  %92 = mul i64 %43, %81, !dbg !551
  %93 = add i64 %86, %92, !dbg !552
  call void @llvm.dbg.value(metadata i64 %93, metadata !553, metadata !DIExpression()), !dbg !439
  %94 = mul i64 %45, %81, !dbg !554
  %95 = add i64 %87, %94, !dbg !555
  call void @llvm.dbg.value(metadata i64 %95, metadata !556, metadata !DIExpression()), !dbg !439
  %96 = mul i64 %47, %81, !dbg !557
  %97 = add i64 %88, %96, !dbg !558
  call void @llvm.dbg.value(metadata i64 %97, metadata !559, metadata !DIExpression()), !dbg !439
  %98 = mul i64 %49, %81, !dbg !560
  %99 = add i64 %89, %98, !dbg !561
  call void @llvm.dbg.value(metadata i64 %99, metadata !562, metadata !DIExpression()), !dbg !439
  %100 = mul i64 %57, %82, !dbg !563
  %101 = add i64 %91, %100, !dbg !564
  call void @llvm.dbg.value(metadata i64 %101, metadata !565, metadata !DIExpression()), !dbg !439
  %102 = mul i64 %59, %82, !dbg !566
  %103 = add i64 %93, %102, !dbg !567
  call void @llvm.dbg.value(metadata i64 %103, metadata !568, metadata !DIExpression()), !dbg !439
  %104 = mul i64 %43, %82, !dbg !569
  %105 = add i64 %95, %104, !dbg !570
  call void @llvm.dbg.value(metadata i64 %105, metadata !571, metadata !DIExpression()), !dbg !439
  %106 = mul i64 %45, %82, !dbg !572
  %107 = add i64 %97, %106, !dbg !573
  call void @llvm.dbg.value(metadata i64 %107, metadata !574, metadata !DIExpression()), !dbg !439
  %108 = mul i64 %47, %82, !dbg !575
  %109 = add i64 %99, %108, !dbg !576
  call void @llvm.dbg.value(metadata i64 %109, metadata !577, metadata !DIExpression()), !dbg !439
  %110 = mul i64 %55, %83, !dbg !578
  %111 = add i64 %101, %110, !dbg !579
  call void @llvm.dbg.value(metadata i64 %111, metadata !580, metadata !DIExpression()), !dbg !439
  %112 = mul i64 %57, %83, !dbg !581
  %113 = add i64 %103, %112, !dbg !582
  call void @llvm.dbg.value(metadata i64 %113, metadata !583, metadata !DIExpression()), !dbg !439
  %114 = mul i64 %59, %83, !dbg !584
  %115 = add i64 %105, %114, !dbg !585
  call void @llvm.dbg.value(metadata i64 %115, metadata !586, metadata !DIExpression()), !dbg !439
  %116 = mul i64 %43, %83, !dbg !587
  %117 = add i64 %107, %116, !dbg !588
  call void @llvm.dbg.value(metadata i64 %117, metadata !589, metadata !DIExpression()), !dbg !439
  %118 = mul i64 %45, %83, !dbg !590
  %119 = add i64 %109, %118, !dbg !591
  call void @llvm.dbg.value(metadata i64 %119, metadata !592, metadata !DIExpression()), !dbg !439
  %120 = mul i64 %53, %84, !dbg !593
  %121 = add i64 %111, %120, !dbg !594
  call void @llvm.dbg.value(metadata i64 %121, metadata !595, metadata !DIExpression()), !dbg !439
  %122 = mul i64 %55, %84, !dbg !596
  %123 = add i64 %113, %122, !dbg !597
  call void @llvm.dbg.value(metadata i64 %123, metadata !598, metadata !DIExpression()), !dbg !439
  %124 = mul i64 %57, %84, !dbg !599
  %125 = add i64 %115, %124, !dbg !600
  call void @llvm.dbg.value(metadata i64 %125, metadata !601, metadata !DIExpression()), !dbg !439
  %126 = mul i64 %59, %84, !dbg !602
  %127 = add i64 %117, %126, !dbg !603
  call void @llvm.dbg.value(metadata i64 %127, metadata !604, metadata !DIExpression()), !dbg !439
  %128 = mul i64 %43, %84, !dbg !605
  %129 = add i64 %119, %128, !dbg !606
  call void @llvm.dbg.value(metadata i64 %129, metadata !607, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %121, metadata !608, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %123, metadata !609, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %125, metadata !610, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %127, metadata !611, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %129, metadata !612, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 67108863, metadata !613, metadata !DIExpression()), !dbg !439
  %130 = lshr i64 %121, 26, !dbg !614
  call void @llvm.dbg.value(metadata i64 %130, metadata !615, metadata !DIExpression()), !dbg !439
  %131 = lshr i64 %127, 26, !dbg !616
  call void @llvm.dbg.value(metadata i64 %131, metadata !617, metadata !DIExpression()), !dbg !439
  %132 = and i64 %121, 67108863, !dbg !618
  call void @llvm.dbg.value(metadata i64 %132, metadata !619, metadata !DIExpression()), !dbg !439
  %133 = and i64 %127, 67108863, !dbg !620
  call void @llvm.dbg.value(metadata i64 %133, metadata !621, metadata !DIExpression()), !dbg !439
  %134 = add i64 %123, %130, !dbg !622
  call void @llvm.dbg.value(metadata i64 %134, metadata !623, metadata !DIExpression()), !dbg !439
  %135 = add i64 %129, %131, !dbg !624
  call void @llvm.dbg.value(metadata i64 %135, metadata !625, metadata !DIExpression()), !dbg !439
  %136 = lshr i64 %134, 26, !dbg !626
  call void @llvm.dbg.value(metadata i64 %136, metadata !627, metadata !DIExpression()), !dbg !439
  %137 = lshr i64 %135, 26, !dbg !628
  call void @llvm.dbg.value(metadata i64 %137, metadata !629, metadata !DIExpression()), !dbg !439
  %138 = shl i64 %137, 2, !dbg !630
  call void @llvm.dbg.value(metadata i64 %138, metadata !631, metadata !DIExpression()), !dbg !439
  %139 = add i64 %137, %138, !dbg !632
  call void @llvm.dbg.value(metadata i64 %139, metadata !633, metadata !DIExpression()), !dbg !439
  %140 = and i64 %134, 67108863, !dbg !634
  call void @llvm.dbg.value(metadata i64 %140, metadata !635, metadata !DIExpression()), !dbg !439
  %141 = and i64 %135, 67108863, !dbg !636
  call void @llvm.dbg.value(metadata i64 %141, metadata !637, metadata !DIExpression()), !dbg !439
  %142 = add i64 %125, %136, !dbg !638
  call void @llvm.dbg.value(metadata i64 %142, metadata !639, metadata !DIExpression()), !dbg !439
  %143 = add i64 %132, %139, !dbg !640
  call void @llvm.dbg.value(metadata i64 %143, metadata !641, metadata !DIExpression()), !dbg !439
  %144 = lshr i64 %142, 26, !dbg !642
  call void @llvm.dbg.value(metadata i64 %144, metadata !643, metadata !DIExpression()), !dbg !439
  %145 = lshr i64 %143, 26, !dbg !644
  call void @llvm.dbg.value(metadata i64 %145, metadata !645, metadata !DIExpression()), !dbg !439
  %146 = and i64 %142, 67108863, !dbg !646
  call void @llvm.dbg.value(metadata i64 %146, metadata !647, metadata !DIExpression()), !dbg !439
  %147 = and i64 %143, 67108863, !dbg !648
  call void @llvm.dbg.value(metadata i64 %147, metadata !649, metadata !DIExpression()), !dbg !439
  %148 = add i64 %133, %144, !dbg !650
  call void @llvm.dbg.value(metadata i64 %148, metadata !651, metadata !DIExpression()), !dbg !439
  %149 = add i64 %140, %145, !dbg !652
  call void @llvm.dbg.value(metadata i64 %149, metadata !653, metadata !DIExpression()), !dbg !439
  %150 = lshr i64 %148, 26, !dbg !654
  call void @llvm.dbg.value(metadata i64 %150, metadata !655, metadata !DIExpression()), !dbg !439
  %151 = and i64 %148, 67108863, !dbg !656
  call void @llvm.dbg.value(metadata i64 %151, metadata !657, metadata !DIExpression()), !dbg !439
  %152 = add i64 %141, %150, !dbg !658
  call void @llvm.dbg.value(metadata i64 %152, metadata !659, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %147, metadata !660, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %149, metadata !661, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %146, metadata !662, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %151, metadata !663, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i64 %152, metadata !664, metadata !DIExpression()), !dbg !439
  %153 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !665
  store i64 %147, i64* %153, align 8, !dbg !666
  %154 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !667
  store i64 %149, i64* %154, align 8, !dbg !668
  %155 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !669
  store i64 %146, i64* %155, align 8, !dbg !670
  %156 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !671
  store i64 %151, i64* %156, align 8, !dbg !672
  %157 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !673
  store i64 %152, i64* %157, align 8, !dbg !674
  br label %158, !dbg !675

158:                                              ; preds = %12
  %159 = add i32 %.0, 1, !dbg !676
  call void @llvm.dbg.value(metadata i32 %159, metadata !428, metadata !DIExpression()), !dbg !430
  br label %10, !dbg !677, !llvm.loop !678

160:                                              ; preds = %10
  %161 = icmp ugt i32 %9, 0, !dbg !681
  br i1 %161, label %162, label %324, !dbg !683

162:                                              ; preds = %160
  %163 = mul i32 %8, 16, !dbg !684
  %164 = zext i32 %163 to i64, !dbg !686
  %165 = getelementptr inbounds i8, i8* %2, i64 %164, !dbg !686
  call void @llvm.dbg.value(metadata i8* %165, metadata !687, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.declare(metadata [5 x i64]* %5, metadata !689, metadata !DIExpression()), !dbg !690
  %166 = bitcast [5 x i64]* %5 to i8*, !dbg !690
  call void @llvm.memset.p0i8.i64(i8* align 16 %166, i8 0, i64 40, i1 false), !dbg !690
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !691, metadata !DIExpression()), !dbg !695
  %167 = bitcast [16 x i8]* %6 to i8*, !dbg !695
  call void @llvm.memset.p0i8.i64(i8* align 16 %167, i8 0, i64 16, i1 false), !dbg !695
  %168 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !696
  %169 = zext i32 %9 to i64, !dbg !697
  %170 = mul i64 %169, 1, !dbg !698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %168, i8* align 1 %165, i64 %170, i1 false), !dbg !696
  %171 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !699
  %172 = call i64 @load64(i8* %171), !dbg !699
  %173 = call i64 @__uint64_identity(i64 %172), !dbg !699
  call void @llvm.dbg.value(metadata i64 %173, metadata !700, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %173, metadata !701, metadata !DIExpression()), !dbg !688
  %174 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !702
  %175 = getelementptr inbounds i8, i8* %174, i64 8, !dbg !702
  %176 = call i64 @load64(i8* %175), !dbg !702
  %177 = call i64 @__uint64_identity(i64 %176), !dbg !702
  call void @llvm.dbg.value(metadata i64 %177, metadata !703, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %177, metadata !704, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %173, metadata !705, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %177, metadata !706, metadata !DIExpression()), !dbg !688
  %178 = and i64 %173, 67108863, !dbg !707
  call void @llvm.dbg.value(metadata i64 %178, metadata !708, metadata !DIExpression()), !dbg !688
  %179 = lshr i64 %173, 26, !dbg !709
  %180 = and i64 %179, 67108863, !dbg !710
  call void @llvm.dbg.value(metadata i64 %180, metadata !711, metadata !DIExpression()), !dbg !688
  %181 = lshr i64 %173, 52, !dbg !712
  %182 = and i64 %177, 16383, !dbg !713
  %183 = shl i64 %182, 12, !dbg !714
  %184 = or i64 %181, %183, !dbg !715
  call void @llvm.dbg.value(metadata i64 %184, metadata !716, metadata !DIExpression()), !dbg !688
  %185 = lshr i64 %177, 14, !dbg !717
  %186 = and i64 %185, 67108863, !dbg !718
  call void @llvm.dbg.value(metadata i64 %186, metadata !719, metadata !DIExpression()), !dbg !688
  %187 = lshr i64 %177, 40, !dbg !720
  call void @llvm.dbg.value(metadata i64 %187, metadata !721, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %178, metadata !722, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %180, metadata !723, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %184, metadata !724, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %186, metadata !725, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %187, metadata !726, metadata !DIExpression()), !dbg !688
  %188 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !727
  store i64 %178, i64* %188, align 16, !dbg !728
  %189 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 1, !dbg !729
  store i64 %180, i64* %189, align 8, !dbg !730
  %190 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 2, !dbg !731
  store i64 %184, i64* %190, align 16, !dbg !732
  %191 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 3, !dbg !733
  store i64 %186, i64* %191, align 8, !dbg !734
  %192 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 4, !dbg !735
  store i64 %187, i64* %192, align 16, !dbg !736
  %193 = mul i32 %9, 8, !dbg !737
  %194 = urem i32 %193, 26, !dbg !738
  %195 = zext i32 %194 to i64, !dbg !739
  %196 = shl i64 1, %195, !dbg !739
  call void @llvm.dbg.value(metadata i64 %196, metadata !740, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %196, metadata !741, metadata !DIExpression()), !dbg !688
  %197 = mul i32 %9, 8, !dbg !742
  %198 = udiv i32 %197, 26, !dbg !743
  %199 = zext i32 %198 to i64, !dbg !744
  %200 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 %199, !dbg !744
  %201 = load i64, i64* %200, align 8, !dbg !744
  call void @llvm.dbg.value(metadata i64 %201, metadata !745, metadata !DIExpression()), !dbg !688
  %202 = or i64 %201, %196, !dbg !746
  %203 = mul i32 %9, 8, !dbg !747
  %204 = udiv i32 %203, 26, !dbg !748
  %205 = zext i32 %204 to i64, !dbg !749
  %206 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 %205, !dbg !749
  store i64 %202, i64* %206, align 8, !dbg !750
  call void @llvm.dbg.value(metadata i64* %7, metadata !751, metadata !DIExpression()), !dbg !688
  %207 = getelementptr inbounds i64, i64* %7, i64 5, !dbg !752
  call void @llvm.dbg.value(metadata i64* %207, metadata !753, metadata !DIExpression()), !dbg !688
  %208 = getelementptr inbounds i64, i64* %7, i64 0, !dbg !754
  %209 = load i64, i64* %208, align 8, !dbg !754
  call void @llvm.dbg.value(metadata i64 %209, metadata !755, metadata !DIExpression()), !dbg !688
  %210 = getelementptr inbounds i64, i64* %7, i64 1, !dbg !756
  %211 = load i64, i64* %210, align 8, !dbg !756
  call void @llvm.dbg.value(metadata i64 %211, metadata !757, metadata !DIExpression()), !dbg !688
  %212 = getelementptr inbounds i64, i64* %7, i64 2, !dbg !758
  %213 = load i64, i64* %212, align 8, !dbg !758
  call void @llvm.dbg.value(metadata i64 %213, metadata !759, metadata !DIExpression()), !dbg !688
  %214 = getelementptr inbounds i64, i64* %7, i64 3, !dbg !760
  %215 = load i64, i64* %214, align 8, !dbg !760
  call void @llvm.dbg.value(metadata i64 %215, metadata !761, metadata !DIExpression()), !dbg !688
  %216 = getelementptr inbounds i64, i64* %7, i64 4, !dbg !762
  %217 = load i64, i64* %216, align 8, !dbg !762
  call void @llvm.dbg.value(metadata i64 %217, metadata !763, metadata !DIExpression()), !dbg !688
  %218 = getelementptr inbounds i64, i64* %207, i64 1, !dbg !764
  %219 = load i64, i64* %218, align 8, !dbg !764
  call void @llvm.dbg.value(metadata i64 %219, metadata !765, metadata !DIExpression()), !dbg !688
  %220 = getelementptr inbounds i64, i64* %207, i64 2, !dbg !766
  %221 = load i64, i64* %220, align 8, !dbg !766
  call void @llvm.dbg.value(metadata i64 %221, metadata !767, metadata !DIExpression()), !dbg !688
  %222 = getelementptr inbounds i64, i64* %207, i64 3, !dbg !768
  %223 = load i64, i64* %222, align 8, !dbg !768
  call void @llvm.dbg.value(metadata i64 %223, metadata !769, metadata !DIExpression()), !dbg !688
  %224 = getelementptr inbounds i64, i64* %207, i64 4, !dbg !770
  %225 = load i64, i64* %224, align 8, !dbg !770
  call void @llvm.dbg.value(metadata i64 %225, metadata !771, metadata !DIExpression()), !dbg !688
  %226 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !772
  %227 = load i64, i64* %226, align 16, !dbg !772
  call void @llvm.dbg.value(metadata i64 %227, metadata !773, metadata !DIExpression()), !dbg !688
  %228 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 1, !dbg !774
  %229 = load i64, i64* %228, align 8, !dbg !774
  call void @llvm.dbg.value(metadata i64 %229, metadata !775, metadata !DIExpression()), !dbg !688
  %230 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 2, !dbg !776
  %231 = load i64, i64* %230, align 16, !dbg !776
  call void @llvm.dbg.value(metadata i64 %231, metadata !777, metadata !DIExpression()), !dbg !688
  %232 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 3, !dbg !778
  %233 = load i64, i64* %232, align 8, !dbg !778
  call void @llvm.dbg.value(metadata i64 %233, metadata !779, metadata !DIExpression()), !dbg !688
  %234 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 4, !dbg !780
  %235 = load i64, i64* %234, align 16, !dbg !780
  call void @llvm.dbg.value(metadata i64 %235, metadata !781, metadata !DIExpression()), !dbg !688
  %236 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !782
  %237 = load i64, i64* %236, align 8, !dbg !782
  call void @llvm.dbg.value(metadata i64 %237, metadata !783, metadata !DIExpression()), !dbg !688
  %238 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !784
  %239 = load i64, i64* %238, align 8, !dbg !784
  call void @llvm.dbg.value(metadata i64 %239, metadata !785, metadata !DIExpression()), !dbg !688
  %240 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !786
  %241 = load i64, i64* %240, align 8, !dbg !786
  call void @llvm.dbg.value(metadata i64 %241, metadata !787, metadata !DIExpression()), !dbg !688
  %242 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !788
  %243 = load i64, i64* %242, align 8, !dbg !788
  call void @llvm.dbg.value(metadata i64 %243, metadata !789, metadata !DIExpression()), !dbg !688
  %244 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !790
  %245 = load i64, i64* %244, align 8, !dbg !790
  call void @llvm.dbg.value(metadata i64 %245, metadata !791, metadata !DIExpression()), !dbg !688
  %246 = add i64 %237, %227, !dbg !792
  call void @llvm.dbg.value(metadata i64 %246, metadata !793, metadata !DIExpression()), !dbg !688
  %247 = add i64 %239, %229, !dbg !794
  call void @llvm.dbg.value(metadata i64 %247, metadata !795, metadata !DIExpression()), !dbg !688
  %248 = add i64 %241, %231, !dbg !796
  call void @llvm.dbg.value(metadata i64 %248, metadata !797, metadata !DIExpression()), !dbg !688
  %249 = add i64 %243, %233, !dbg !798
  call void @llvm.dbg.value(metadata i64 %249, metadata !799, metadata !DIExpression()), !dbg !688
  %250 = add i64 %245, %235, !dbg !800
  call void @llvm.dbg.value(metadata i64 %250, metadata !801, metadata !DIExpression()), !dbg !688
  %251 = mul i64 %209, %246, !dbg !802
  call void @llvm.dbg.value(metadata i64 %251, metadata !803, metadata !DIExpression()), !dbg !688
  %252 = mul i64 %211, %246, !dbg !804
  call void @llvm.dbg.value(metadata i64 %252, metadata !805, metadata !DIExpression()), !dbg !688
  %253 = mul i64 %213, %246, !dbg !806
  call void @llvm.dbg.value(metadata i64 %253, metadata !807, metadata !DIExpression()), !dbg !688
  %254 = mul i64 %215, %246, !dbg !808
  call void @llvm.dbg.value(metadata i64 %254, metadata !809, metadata !DIExpression()), !dbg !688
  %255 = mul i64 %217, %246, !dbg !810
  call void @llvm.dbg.value(metadata i64 %255, metadata !811, metadata !DIExpression()), !dbg !688
  %256 = mul i64 %225, %247, !dbg !812
  %257 = add i64 %251, %256, !dbg !813
  call void @llvm.dbg.value(metadata i64 %257, metadata !814, metadata !DIExpression()), !dbg !688
  %258 = mul i64 %209, %247, !dbg !815
  %259 = add i64 %252, %258, !dbg !816
  call void @llvm.dbg.value(metadata i64 %259, metadata !817, metadata !DIExpression()), !dbg !688
  %260 = mul i64 %211, %247, !dbg !818
  %261 = add i64 %253, %260, !dbg !819
  call void @llvm.dbg.value(metadata i64 %261, metadata !820, metadata !DIExpression()), !dbg !688
  %262 = mul i64 %213, %247, !dbg !821
  %263 = add i64 %254, %262, !dbg !822
  call void @llvm.dbg.value(metadata i64 %263, metadata !823, metadata !DIExpression()), !dbg !688
  %264 = mul i64 %215, %247, !dbg !824
  %265 = add i64 %255, %264, !dbg !825
  call void @llvm.dbg.value(metadata i64 %265, metadata !826, metadata !DIExpression()), !dbg !688
  %266 = mul i64 %223, %248, !dbg !827
  %267 = add i64 %257, %266, !dbg !828
  call void @llvm.dbg.value(metadata i64 %267, metadata !829, metadata !DIExpression()), !dbg !688
  %268 = mul i64 %225, %248, !dbg !830
  %269 = add i64 %259, %268, !dbg !831
  call void @llvm.dbg.value(metadata i64 %269, metadata !832, metadata !DIExpression()), !dbg !688
  %270 = mul i64 %209, %248, !dbg !833
  %271 = add i64 %261, %270, !dbg !834
  call void @llvm.dbg.value(metadata i64 %271, metadata !835, metadata !DIExpression()), !dbg !688
  %272 = mul i64 %211, %248, !dbg !836
  %273 = add i64 %263, %272, !dbg !837
  call void @llvm.dbg.value(metadata i64 %273, metadata !838, metadata !DIExpression()), !dbg !688
  %274 = mul i64 %213, %248, !dbg !839
  %275 = add i64 %265, %274, !dbg !840
  call void @llvm.dbg.value(metadata i64 %275, metadata !841, metadata !DIExpression()), !dbg !688
  %276 = mul i64 %221, %249, !dbg !842
  %277 = add i64 %267, %276, !dbg !843
  call void @llvm.dbg.value(metadata i64 %277, metadata !844, metadata !DIExpression()), !dbg !688
  %278 = mul i64 %223, %249, !dbg !845
  %279 = add i64 %269, %278, !dbg !846
  call void @llvm.dbg.value(metadata i64 %279, metadata !847, metadata !DIExpression()), !dbg !688
  %280 = mul i64 %225, %249, !dbg !848
  %281 = add i64 %271, %280, !dbg !849
  call void @llvm.dbg.value(metadata i64 %281, metadata !850, metadata !DIExpression()), !dbg !688
  %282 = mul i64 %209, %249, !dbg !851
  %283 = add i64 %273, %282, !dbg !852
  call void @llvm.dbg.value(metadata i64 %283, metadata !853, metadata !DIExpression()), !dbg !688
  %284 = mul i64 %211, %249, !dbg !854
  %285 = add i64 %275, %284, !dbg !855
  call void @llvm.dbg.value(metadata i64 %285, metadata !856, metadata !DIExpression()), !dbg !688
  %286 = mul i64 %219, %250, !dbg !857
  %287 = add i64 %277, %286, !dbg !858
  call void @llvm.dbg.value(metadata i64 %287, metadata !859, metadata !DIExpression()), !dbg !688
  %288 = mul i64 %221, %250, !dbg !860
  %289 = add i64 %279, %288, !dbg !861
  call void @llvm.dbg.value(metadata i64 %289, metadata !862, metadata !DIExpression()), !dbg !688
  %290 = mul i64 %223, %250, !dbg !863
  %291 = add i64 %281, %290, !dbg !864
  call void @llvm.dbg.value(metadata i64 %291, metadata !865, metadata !DIExpression()), !dbg !688
  %292 = mul i64 %225, %250, !dbg !866
  %293 = add i64 %283, %292, !dbg !867
  call void @llvm.dbg.value(metadata i64 %293, metadata !868, metadata !DIExpression()), !dbg !688
  %294 = mul i64 %209, %250, !dbg !869
  %295 = add i64 %285, %294, !dbg !870
  call void @llvm.dbg.value(metadata i64 %295, metadata !871, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %287, metadata !872, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %289, metadata !873, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %291, metadata !874, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %293, metadata !875, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %295, metadata !876, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 67108863, metadata !877, metadata !DIExpression()), !dbg !688
  %296 = lshr i64 %287, 26, !dbg !878
  call void @llvm.dbg.value(metadata i64 %296, metadata !879, metadata !DIExpression()), !dbg !688
  %297 = lshr i64 %293, 26, !dbg !880
  call void @llvm.dbg.value(metadata i64 %297, metadata !881, metadata !DIExpression()), !dbg !688
  %298 = and i64 %287, 67108863, !dbg !882
  call void @llvm.dbg.value(metadata i64 %298, metadata !883, metadata !DIExpression()), !dbg !688
  %299 = and i64 %293, 67108863, !dbg !884
  call void @llvm.dbg.value(metadata i64 %299, metadata !885, metadata !DIExpression()), !dbg !688
  %300 = add i64 %289, %296, !dbg !886
  call void @llvm.dbg.value(metadata i64 %300, metadata !887, metadata !DIExpression()), !dbg !688
  %301 = add i64 %295, %297, !dbg !888
  call void @llvm.dbg.value(metadata i64 %301, metadata !889, metadata !DIExpression()), !dbg !688
  %302 = lshr i64 %300, 26, !dbg !890
  call void @llvm.dbg.value(metadata i64 %302, metadata !891, metadata !DIExpression()), !dbg !688
  %303 = lshr i64 %301, 26, !dbg !892
  call void @llvm.dbg.value(metadata i64 %303, metadata !893, metadata !DIExpression()), !dbg !688
  %304 = shl i64 %303, 2, !dbg !894
  call void @llvm.dbg.value(metadata i64 %304, metadata !895, metadata !DIExpression()), !dbg !688
  %305 = add i64 %303, %304, !dbg !896
  call void @llvm.dbg.value(metadata i64 %305, metadata !897, metadata !DIExpression()), !dbg !688
  %306 = and i64 %300, 67108863, !dbg !898
  call void @llvm.dbg.value(metadata i64 %306, metadata !899, metadata !DIExpression()), !dbg !688
  %307 = and i64 %301, 67108863, !dbg !900
  call void @llvm.dbg.value(metadata i64 %307, metadata !901, metadata !DIExpression()), !dbg !688
  %308 = add i64 %291, %302, !dbg !902
  call void @llvm.dbg.value(metadata i64 %308, metadata !903, metadata !DIExpression()), !dbg !688
  %309 = add i64 %298, %305, !dbg !904
  call void @llvm.dbg.value(metadata i64 %309, metadata !905, metadata !DIExpression()), !dbg !688
  %310 = lshr i64 %308, 26, !dbg !906
  call void @llvm.dbg.value(metadata i64 %310, metadata !907, metadata !DIExpression()), !dbg !688
  %311 = lshr i64 %309, 26, !dbg !908
  call void @llvm.dbg.value(metadata i64 %311, metadata !909, metadata !DIExpression()), !dbg !688
  %312 = and i64 %308, 67108863, !dbg !910
  call void @llvm.dbg.value(metadata i64 %312, metadata !911, metadata !DIExpression()), !dbg !688
  %313 = and i64 %309, 67108863, !dbg !912
  call void @llvm.dbg.value(metadata i64 %313, metadata !913, metadata !DIExpression()), !dbg !688
  %314 = add i64 %299, %310, !dbg !914
  call void @llvm.dbg.value(metadata i64 %314, metadata !915, metadata !DIExpression()), !dbg !688
  %315 = add i64 %306, %311, !dbg !916
  call void @llvm.dbg.value(metadata i64 %315, metadata !917, metadata !DIExpression()), !dbg !688
  %316 = lshr i64 %314, 26, !dbg !918
  call void @llvm.dbg.value(metadata i64 %316, metadata !919, metadata !DIExpression()), !dbg !688
  %317 = and i64 %314, 67108863, !dbg !920
  call void @llvm.dbg.value(metadata i64 %317, metadata !921, metadata !DIExpression()), !dbg !688
  %318 = add i64 %307, %316, !dbg !922
  call void @llvm.dbg.value(metadata i64 %318, metadata !923, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %313, metadata !924, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %315, metadata !925, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %312, metadata !926, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %317, metadata !927, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i64 %318, metadata !928, metadata !DIExpression()), !dbg !688
  %319 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !929
  store i64 %313, i64* %319, align 8, !dbg !930
  %320 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !931
  store i64 %315, i64* %320, align 8, !dbg !932
  %321 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !933
  store i64 %312, i64* %321, align 8, !dbg !934
  %322 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !935
  store i64 %317, i64* %322, align 8, !dbg !936
  %323 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !937
  store i64 %318, i64* %323, align 8, !dbg !938
  br label %324, !dbg !939

324:                                              ; preds = %162, %160
  ret void, !dbg !940
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_poly1305_finish(i8* %0, i8* %1, i64* %2) #0 !dbg !941 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i8* %1, metadata !946, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64* %2, metadata !947, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64* %2, metadata !948, metadata !DIExpression()), !dbg !945
  %4 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !949
  call void @llvm.dbg.value(metadata i8* %4, metadata !950, metadata !DIExpression()), !dbg !945
  %5 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !951
  %6 = load i64, i64* %5, align 8, !dbg !951
  call void @llvm.dbg.value(metadata i64 %6, metadata !952, metadata !DIExpression()), !dbg !945
  %7 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !953
  %8 = load i64, i64* %7, align 8, !dbg !953
  call void @llvm.dbg.value(metadata i64 %8, metadata !954, metadata !DIExpression()), !dbg !945
  %9 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !955
  %10 = load i64, i64* %9, align 8, !dbg !955
  call void @llvm.dbg.value(metadata i64 %10, metadata !956, metadata !DIExpression()), !dbg !945
  %11 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !957
  %12 = load i64, i64* %11, align 8, !dbg !957
  call void @llvm.dbg.value(metadata i64 %12, metadata !958, metadata !DIExpression()), !dbg !945
  %13 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !959
  %14 = load i64, i64* %13, align 8, !dbg !959
  call void @llvm.dbg.value(metadata i64 %14, metadata !960, metadata !DIExpression()), !dbg !945
  %15 = add i64 %6, 0, !dbg !961
  call void @llvm.dbg.value(metadata i64 %15, metadata !962, metadata !DIExpression()), !dbg !945
  %16 = and i64 %15, 67108863, !dbg !963
  call void @llvm.dbg.value(metadata i64 %16, metadata !964, metadata !DIExpression()), !dbg !945
  %17 = lshr i64 %15, 26, !dbg !965
  call void @llvm.dbg.value(metadata i64 %17, metadata !966, metadata !DIExpression()), !dbg !945
  %18 = add i64 %8, %17, !dbg !967
  call void @llvm.dbg.value(metadata i64 %18, metadata !968, metadata !DIExpression()), !dbg !945
  %19 = and i64 %18, 67108863, !dbg !969
  call void @llvm.dbg.value(metadata i64 %19, metadata !970, metadata !DIExpression()), !dbg !945
  %20 = lshr i64 %18, 26, !dbg !971
  call void @llvm.dbg.value(metadata i64 %20, metadata !972, metadata !DIExpression()), !dbg !945
  %21 = add i64 %10, %20, !dbg !973
  call void @llvm.dbg.value(metadata i64 %21, metadata !974, metadata !DIExpression()), !dbg !945
  %22 = and i64 %21, 67108863, !dbg !975
  call void @llvm.dbg.value(metadata i64 %22, metadata !976, metadata !DIExpression()), !dbg !945
  %23 = lshr i64 %21, 26, !dbg !977
  call void @llvm.dbg.value(metadata i64 %23, metadata !978, metadata !DIExpression()), !dbg !945
  %24 = add i64 %12, %23, !dbg !979
  call void @llvm.dbg.value(metadata i64 %24, metadata !980, metadata !DIExpression()), !dbg !945
  %25 = and i64 %24, 67108863, !dbg !981
  call void @llvm.dbg.value(metadata i64 %25, metadata !982, metadata !DIExpression()), !dbg !945
  %26 = lshr i64 %24, 26, !dbg !983
  call void @llvm.dbg.value(metadata i64 %26, metadata !984, metadata !DIExpression()), !dbg !945
  %27 = add i64 %14, %26, !dbg !985
  call void @llvm.dbg.value(metadata i64 %27, metadata !986, metadata !DIExpression()), !dbg !945
  %28 = and i64 %27, 67108863, !dbg !987
  call void @llvm.dbg.value(metadata i64 %28, metadata !988, metadata !DIExpression()), !dbg !945
  %29 = lshr i64 %27, 26, !dbg !989
  call void @llvm.dbg.value(metadata i64 %29, metadata !990, metadata !DIExpression()), !dbg !945
  %30 = mul i64 %29, 5, !dbg !991
  %31 = add i64 %16, %30, !dbg !992
  call void @llvm.dbg.value(metadata i64 %31, metadata !993, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %19, metadata !994, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %22, metadata !995, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %25, metadata !996, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %28, metadata !997, metadata !DIExpression()), !dbg !945
  %32 = add i64 %31, 0, !dbg !998
  call void @llvm.dbg.value(metadata i64 %32, metadata !999, metadata !DIExpression()), !dbg !945
  %33 = and i64 %32, 67108863, !dbg !1000
  call void @llvm.dbg.value(metadata i64 %33, metadata !1001, metadata !DIExpression()), !dbg !945
  %34 = lshr i64 %32, 26, !dbg !1002
  call void @llvm.dbg.value(metadata i64 %34, metadata !1003, metadata !DIExpression()), !dbg !945
  %35 = add i64 %19, %34, !dbg !1004
  call void @llvm.dbg.value(metadata i64 %35, metadata !1005, metadata !DIExpression()), !dbg !945
  %36 = and i64 %35, 67108863, !dbg !1006
  call void @llvm.dbg.value(metadata i64 %36, metadata !1007, metadata !DIExpression()), !dbg !945
  %37 = lshr i64 %35, 26, !dbg !1008
  call void @llvm.dbg.value(metadata i64 %37, metadata !1009, metadata !DIExpression()), !dbg !945
  %38 = add i64 %22, %37, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %38, metadata !1011, metadata !DIExpression()), !dbg !945
  %39 = and i64 %38, 67108863, !dbg !1012
  call void @llvm.dbg.value(metadata i64 %39, metadata !1013, metadata !DIExpression()), !dbg !945
  %40 = lshr i64 %38, 26, !dbg !1014
  call void @llvm.dbg.value(metadata i64 %40, metadata !1015, metadata !DIExpression()), !dbg !945
  %41 = add i64 %25, %40, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %41, metadata !1017, metadata !DIExpression()), !dbg !945
  %42 = and i64 %41, 67108863, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %42, metadata !1019, metadata !DIExpression()), !dbg !945
  %43 = lshr i64 %41, 26, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %43, metadata !1021, metadata !DIExpression()), !dbg !945
  %44 = add i64 %28, %43, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %44, metadata !1023, metadata !DIExpression()), !dbg !945
  %45 = and i64 %44, 67108863, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %45, metadata !1025, metadata !DIExpression()), !dbg !945
  %46 = lshr i64 %44, 26, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %46, metadata !1027, metadata !DIExpression()), !dbg !945
  %47 = mul i64 %46, 5, !dbg !1028
  %48 = add i64 %33, %47, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %48, metadata !1030, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %36, metadata !1031, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %39, metadata !1032, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %42, metadata !1033, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %45, metadata !1034, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 67108863, metadata !1035, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 67108859, metadata !1036, metadata !DIExpression()), !dbg !945
  %49 = call i64 @FStar_UInt64_eq_mask(i64 %45, i64 67108863), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %49, metadata !1038, metadata !DIExpression()), !dbg !945
  %50 = call i64 @FStar_UInt64_eq_mask(i64 %42, i64 67108863), !dbg !1039
  %51 = and i64 %49, %50, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %51, metadata !1041, metadata !DIExpression()), !dbg !945
  %52 = call i64 @FStar_UInt64_eq_mask(i64 %39, i64 67108863), !dbg !1042
  %53 = and i64 %51, %52, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %53, metadata !1044, metadata !DIExpression()), !dbg !945
  %54 = call i64 @FStar_UInt64_eq_mask(i64 %36, i64 67108863), !dbg !1045
  %55 = and i64 %53, %54, !dbg !1046
  call void @llvm.dbg.value(metadata i64 %55, metadata !1047, metadata !DIExpression()), !dbg !945
  %56 = call i64 @FStar_UInt64_gte_mask(i64 %48, i64 67108859), !dbg !1048
  %57 = xor i64 %56, -1, !dbg !1049
  %58 = xor i64 %57, -1, !dbg !1050
  %59 = and i64 %55, %58, !dbg !1051
  call void @llvm.dbg.value(metadata i64 %59, metadata !1052, metadata !DIExpression()), !dbg !945
  %60 = and i64 %59, 67108863, !dbg !1053
  call void @llvm.dbg.value(metadata i64 %60, metadata !1054, metadata !DIExpression()), !dbg !945
  %61 = and i64 %59, 67108859, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %61, metadata !1056, metadata !DIExpression()), !dbg !945
  %62 = sub i64 %48, %61, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %62, metadata !1058, metadata !DIExpression()), !dbg !945
  %63 = sub i64 %36, %60, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %63, metadata !1060, metadata !DIExpression()), !dbg !945
  %64 = sub i64 %39, %60, !dbg !1061
  call void @llvm.dbg.value(metadata i64 %64, metadata !1062, metadata !DIExpression()), !dbg !945
  %65 = sub i64 %42, %60, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %65, metadata !1064, metadata !DIExpression()), !dbg !945
  %66 = sub i64 %45, %60, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %66, metadata !1066, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %62, metadata !1067, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %63, metadata !1068, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %64, metadata !1069, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %65, metadata !1070, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %66, metadata !1071, metadata !DIExpression()), !dbg !945
  %67 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1072
  store i64 %62, i64* %67, align 8, !dbg !1073
  %68 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1074
  store i64 %63, i64* %68, align 8, !dbg !1075
  %69 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1076
  store i64 %64, i64* %69, align 8, !dbg !1077
  %70 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1078
  store i64 %65, i64* %70, align 8, !dbg !1079
  %71 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !1080
  store i64 %66, i64* %71, align 8, !dbg !1081
  %72 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1082
  %73 = load i64, i64* %72, align 8, !dbg !1082
  call void @llvm.dbg.value(metadata i64 %73, metadata !1083, metadata !DIExpression()), !dbg !945
  %74 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1084
  %75 = load i64, i64* %74, align 8, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %75, metadata !1085, metadata !DIExpression()), !dbg !945
  %76 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1086
  %77 = load i64, i64* %76, align 8, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %77, metadata !1087, metadata !DIExpression()), !dbg !945
  %78 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1088
  %79 = load i64, i64* %78, align 8, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %79, metadata !1089, metadata !DIExpression()), !dbg !945
  %80 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !1090
  %81 = load i64, i64* %80, align 8, !dbg !1090
  call void @llvm.dbg.value(metadata i64 %81, metadata !1091, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %73, metadata !1092, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %75, metadata !1093, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %77, metadata !1094, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %79, metadata !1095, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %81, metadata !1096, metadata !DIExpression()), !dbg !945
  %82 = shl i64 %75, 26, !dbg !1097
  %83 = or i64 %73, %82, !dbg !1098
  %84 = shl i64 %77, 52, !dbg !1099
  %85 = or i64 %83, %84, !dbg !1100
  call void @llvm.dbg.value(metadata i64 %85, metadata !1101, metadata !DIExpression()), !dbg !945
  %86 = lshr i64 %77, 12, !dbg !1102
  %87 = shl i64 %79, 14, !dbg !1103
  %88 = or i64 %86, %87, !dbg !1104
  %89 = shl i64 %81, 40, !dbg !1105
  %90 = or i64 %88, %89, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %90, metadata !1107, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %85, metadata !1108, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %90, metadata !1109, metadata !DIExpression()), !dbg !945
  %91 = call i64 @load64(i8* %4), !dbg !1110
  %92 = call i64 @__uint64_identity(i64 %91), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %92, metadata !1111, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %92, metadata !1112, metadata !DIExpression()), !dbg !945
  %93 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !1113
  %94 = call i64 @load64(i8* %93), !dbg !1113
  %95 = call i64 @__uint64_identity(i64 %94), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %95, metadata !1114, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %95, metadata !1115, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %92, metadata !1116, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %95, metadata !1117, metadata !DIExpression()), !dbg !945
  %96 = add i64 %85, %92, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %96, metadata !1119, metadata !DIExpression()), !dbg !945
  %97 = add i64 %90, %95, !dbg !1120
  call void @llvm.dbg.value(metadata i64 %97, metadata !1121, metadata !DIExpression()), !dbg !945
  %98 = xor i64 %96, %92, !dbg !1122
  %99 = sub i64 %96, %92, !dbg !1123
  %100 = xor i64 %99, %92, !dbg !1124
  %101 = or i64 %98, %100, !dbg !1125
  %102 = xor i64 %96, %101, !dbg !1126
  %103 = lshr i64 %102, 63, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %103, metadata !1128, metadata !DIExpression()), !dbg !945
  %104 = add i64 %97, %103, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %104, metadata !1130, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %96, metadata !1131, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %104, metadata !1132, metadata !DIExpression()), !dbg !945
  %105 = call i64 @__uint64_identity(i64 %96), !dbg !1133
  call void @store64(i8* %0, i64 %105), !dbg !1133
  %106 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1134
  %107 = call i64 @__uint64_identity(i64 %104), !dbg !1134
  call void @store64(i8* %106, i64 %107), !dbg !1134
  ret void, !dbg !1135
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt64_eq_mask(i64 %0, i64 %1) #0 !dbg !1136 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1140, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i64 %1, metadata !1142, metadata !DIExpression()), !dbg !1141
  %3 = xor i64 %0, %1, !dbg !1143
  call void @llvm.dbg.value(metadata i64 %3, metadata !1144, metadata !DIExpression()), !dbg !1141
  %4 = xor i64 %3, -1, !dbg !1145
  %5 = add i64 %4, 1, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %5, metadata !1147, metadata !DIExpression()), !dbg !1141
  %6 = or i64 %3, %5, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %6, metadata !1149, metadata !DIExpression()), !dbg !1141
  %7 = lshr i64 %6, 63, !dbg !1150
  call void @llvm.dbg.value(metadata i64 %7, metadata !1151, metadata !DIExpression()), !dbg !1141
  %8 = sub i64 %7, 1, !dbg !1152
  ret i64 %8, !dbg !1153
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt64_gte_mask(i64 %0, i64 %1) #0 !dbg !1154 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %1, metadata !1157, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %0, metadata !1158, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %1, metadata !1159, metadata !DIExpression()), !dbg !1156
  %3 = xor i64 %0, %1, !dbg !1160
  call void @llvm.dbg.value(metadata i64 %3, metadata !1161, metadata !DIExpression()), !dbg !1156
  %4 = sub i64 %0, %1, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %4, metadata !1163, metadata !DIExpression()), !dbg !1156
  %5 = xor i64 %4, %1, !dbg !1164
  call void @llvm.dbg.value(metadata i64 %5, metadata !1165, metadata !DIExpression()), !dbg !1156
  %6 = or i64 %3, %5, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %6, metadata !1167, metadata !DIExpression()), !dbg !1156
  %7 = xor i64 %0, %6, !dbg !1168
  call void @llvm.dbg.value(metadata i64 %7, metadata !1169, metadata !DIExpression()), !dbg !1156
  %8 = lshr i64 %7, 63, !dbg !1170
  call void @llvm.dbg.value(metadata i64 %8, metadata !1171, metadata !DIExpression()), !dbg !1156
  %9 = sub i64 %8, 1, !dbg !1172
  ret i64 %9, !dbg !1173
}

; Function Attrs: noinline nounwind uwtable
define internal void @store64(i8* %0, i64 %1) #0 !dbg !1174 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1177, metadata !DIExpression()), !dbg !1178
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1179, metadata !DIExpression()), !dbg !1180
  %4 = bitcast i64* %3 to i8*, !dbg !1181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 8 %4, i64 8, i1 false), !dbg !1181
  ret void, !dbg !1182
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_poly1305_mac(i8* %0, i32 %1, i8* %2, i8* %3) #0 !dbg !1183 {
  %5 = alloca [25 x i64], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1186, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i32 %1, metadata !1188, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8* %2, metadata !1189, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8* %3, metadata !1190, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.declare(metadata [25 x i64]* %5, metadata !1191, metadata !DIExpression()), !dbg !1195
  %6 = bitcast [25 x i64]* %5 to i8*, !dbg !1195
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 200, i1 false), !dbg !1195
  %7 = getelementptr inbounds [25 x i64], [25 x i64]* %5, i64 0, i64 0, !dbg !1196
  call void @Hacl_Poly1305_32_poly1305_init(i64* %7, i8* %3), !dbg !1197
  %8 = getelementptr inbounds [25 x i64], [25 x i64]* %5, i64 0, i64 0, !dbg !1198
  call void @Hacl_Poly1305_32_poly1305_update(i64* %8, i32 %1, i8* %2), !dbg !1199
  %9 = getelementptr inbounds [25 x i64], [25 x i64]* %5, i64 0, i64 0, !dbg !1200
  call void @Hacl_Poly1305_32_poly1305_finish(i8* %0, i8* %3, i64* %9), !dbg !1201
  ret void, !dbg !1202
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_poly1305_mac_wrapper(i8* %0, i32 %1, i8* %2, i8* %3) #0 !dbg !1203 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1204, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %1, metadata !1206, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %2, metadata !1207, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %3, metadata !1208, metadata !DIExpression()), !dbg !1205
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1209
  call void @public_in(%struct.smack_value* %5), !dbg !1210
  %6 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %1), !dbg !1211
  call void @public_in(%struct.smack_value* %6), !dbg !1212
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !1213
  call void @public_in(%struct.smack_value* %7), !dbg !1214
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !1215
  call void @public_in(%struct.smack_value* %8), !dbg !1216
  %9 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 16), !dbg !1217
  call void @public_in(%struct.smack_value* %9), !dbg !1218
  %10 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 16), !dbg !1219
  call void @public_in(%struct.smack_value* %10), !dbg !1220
  call void @Hacl_Poly1305_32_poly1305_mac(i8* %0, i32 %1, i8* %2, i8* %3), !dbg !1221
  ret void, !dbg !1222
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_32_poly1305_mac_wrapper_t() #0 !dbg !1223 {
  %1 = call i8* (...) @getpt1(), !dbg !1226
  call void @llvm.dbg.value(metadata i8* %1, metadata !1227, metadata !DIExpression()), !dbg !1228
  %2 = call i8* (...) @getpt2(), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %2, metadata !1230, metadata !DIExpression()), !dbg !1228
  %3 = call i8* (...) @getpt3(), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %3, metadata !1232, metadata !DIExpression()), !dbg !1228
  %4 = call zeroext i8 (...) @getnum2(), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %4, metadata !1234, metadata !DIExpression()), !dbg !1228
  %5 = zext i8 %4 to i32, !dbg !1235
  call void @Hacl_Poly1305_32_poly1305_mac(i8* %1, i32 %5, i8* %2, i8* %3), !dbg !1236
  ret void, !dbg !1237
}

declare dso_local i8* @getpt1(...) #4

declare dso_local i8* @getpt2(...) #4

declare dso_local i8* @getpt3(...) #4

declare dso_local zeroext i8 @getnum2(...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0, !12}
!llvm.ident = !{!14, !14}
!llvm.module.flags = !{!15, !16, !17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../hacl-star/dist/gcc-compatible/Hacl_Poly1305_32.c", directory: "/home/luwei/bech-back/HACL/Poly1305")
!2 = !{}
!3 = !{!4, !9}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !5, line: 26, baseType: !6)
!5 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 42, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !5, line: 27, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !7, line: 45, baseType: !11)
!11 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "Hacl_Poly1305_32_poly1305_mac.c", directory: "/home/luwei/bech-back/HACL/Poly1305")
!14 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = distinct !DISubprogram(name: "Hacl_Poly1305_32_poly1305_init", scope: !1, file: !1, line: 28, type: !19, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !22}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !5, line: 24, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !7, line: 38, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DILocalVariable(name: "ctx", arg: 1, scope: !18, file: !1, line: 28, type: !21)
!27 = !DILocation(line: 0, scope: !18)
!28 = !DILocalVariable(name: "key", arg: 2, scope: !18, file: !1, line: 28, type: !22)
!29 = !DILocalVariable(name: "acc", scope: !18, file: !1, line: 30, type: !21)
!30 = !DILocation(line: 31, column: 23, scope: !18)
!31 = !DILocalVariable(name: "pre", scope: !18, file: !1, line: 31, type: !21)
!32 = !DILocalVariable(name: "kr", scope: !18, file: !1, line: 32, type: !22)
!33 = !DILocation(line: 33, column: 3, scope: !18)
!34 = !DILocation(line: 33, column: 11, scope: !18)
!35 = !DILocation(line: 34, column: 3, scope: !18)
!36 = !DILocation(line: 34, column: 11, scope: !18)
!37 = !DILocation(line: 35, column: 3, scope: !18)
!38 = !DILocation(line: 35, column: 11, scope: !18)
!39 = !DILocation(line: 36, column: 3, scope: !18)
!40 = !DILocation(line: 36, column: 11, scope: !18)
!41 = !DILocation(line: 37, column: 3, scope: !18)
!42 = !DILocation(line: 37, column: 11, scope: !18)
!43 = !DILocation(line: 38, column: 17, scope: !18)
!44 = !DILocalVariable(name: "u0", scope: !18, file: !1, line: 38, type: !9)
!45 = !DILocalVariable(name: "lo", scope: !18, file: !1, line: 39, type: !9)
!46 = !DILocation(line: 40, column: 16, scope: !18)
!47 = !DILocalVariable(name: "u", scope: !18, file: !1, line: 40, type: !9)
!48 = !DILocalVariable(name: "hi", scope: !18, file: !1, line: 41, type: !9)
!49 = !DILocalVariable(name: "mask0", scope: !18, file: !1, line: 42, type: !9)
!50 = !DILocalVariable(name: "mask1", scope: !18, file: !1, line: 43, type: !9)
!51 = !DILocation(line: 44, column: 21, scope: !18)
!52 = !DILocalVariable(name: "lo1", scope: !18, file: !1, line: 44, type: !9)
!53 = !DILocation(line: 45, column: 21, scope: !18)
!54 = !DILocalVariable(name: "hi1", scope: !18, file: !1, line: 45, type: !9)
!55 = !DILocalVariable(name: "r", scope: !18, file: !1, line: 46, type: !21)
!56 = !DILocation(line: 47, column: 22, scope: !18)
!57 = !DILocalVariable(name: "r5", scope: !18, file: !1, line: 47, type: !21)
!58 = !DILocation(line: 48, column: 22, scope: !18)
!59 = !DILocalVariable(name: "rn", scope: !18, file: !1, line: 48, type: !21)
!60 = !DILocation(line: 49, column: 24, scope: !18)
!61 = !DILocalVariable(name: "rn_5", scope: !18, file: !1, line: 49, type: !21)
!62 = !DILocalVariable(name: "r_vec0", scope: !18, file: !1, line: 50, type: !9)
!63 = !DILocalVariable(name: "r_vec1", scope: !18, file: !1, line: 51, type: !9)
!64 = !DILocation(line: 52, column: 25, scope: !18)
!65 = !DILocalVariable(name: "f00", scope: !18, file: !1, line: 52, type: !9)
!66 = !DILocation(line: 53, column: 25, scope: !18)
!67 = !DILocation(line: 53, column: 42, scope: !18)
!68 = !DILocalVariable(name: "f10", scope: !18, file: !1, line: 53, type: !9)
!69 = !DILocation(line: 54, column: 25, scope: !18)
!70 = !DILocation(line: 54, column: 52, scope: !18)
!71 = !DILocation(line: 54, column: 73, scope: !18)
!72 = !DILocation(line: 54, column: 42, scope: !18)
!73 = !DILocalVariable(name: "f20", scope: !18, file: !1, line: 54, type: !9)
!74 = !DILocation(line: 55, column: 25, scope: !18)
!75 = !DILocation(line: 55, column: 42, scope: !18)
!76 = !DILocalVariable(name: "f30", scope: !18, file: !1, line: 55, type: !9)
!77 = !DILocation(line: 56, column: 25, scope: !18)
!78 = !DILocalVariable(name: "f40", scope: !18, file: !1, line: 56, type: !9)
!79 = !DILocalVariable(name: "f0", scope: !18, file: !1, line: 57, type: !9)
!80 = !DILocalVariable(name: "f1", scope: !18, file: !1, line: 58, type: !9)
!81 = !DILocalVariable(name: "f2", scope: !18, file: !1, line: 59, type: !9)
!82 = !DILocalVariable(name: "f3", scope: !18, file: !1, line: 60, type: !9)
!83 = !DILocalVariable(name: "f4", scope: !18, file: !1, line: 61, type: !9)
!84 = !DILocation(line: 62, column: 3, scope: !18)
!85 = !DILocation(line: 62, column: 9, scope: !18)
!86 = !DILocation(line: 63, column: 3, scope: !18)
!87 = !DILocation(line: 63, column: 9, scope: !18)
!88 = !DILocation(line: 64, column: 3, scope: !18)
!89 = !DILocation(line: 64, column: 9, scope: !18)
!90 = !DILocation(line: 65, column: 3, scope: !18)
!91 = !DILocation(line: 65, column: 9, scope: !18)
!92 = !DILocation(line: 66, column: 3, scope: !18)
!93 = !DILocation(line: 66, column: 9, scope: !18)
!94 = !DILocation(line: 67, column: 19, scope: !18)
!95 = !DILocalVariable(name: "f200", scope: !18, file: !1, line: 67, type: !9)
!96 = !DILocation(line: 68, column: 18, scope: !18)
!97 = !DILocalVariable(name: "f21", scope: !18, file: !1, line: 68, type: !9)
!98 = !DILocation(line: 69, column: 18, scope: !18)
!99 = !DILocalVariable(name: "f22", scope: !18, file: !1, line: 69, type: !9)
!100 = !DILocation(line: 70, column: 18, scope: !18)
!101 = !DILocalVariable(name: "f23", scope: !18, file: !1, line: 70, type: !9)
!102 = !DILocation(line: 71, column: 18, scope: !18)
!103 = !DILocalVariable(name: "f24", scope: !18, file: !1, line: 71, type: !9)
!104 = !DILocation(line: 72, column: 17, scope: !18)
!105 = !DILocation(line: 72, column: 3, scope: !18)
!106 = !DILocation(line: 72, column: 10, scope: !18)
!107 = !DILocation(line: 73, column: 16, scope: !18)
!108 = !DILocation(line: 73, column: 3, scope: !18)
!109 = !DILocation(line: 73, column: 10, scope: !18)
!110 = !DILocation(line: 74, column: 16, scope: !18)
!111 = !DILocation(line: 74, column: 3, scope: !18)
!112 = !DILocation(line: 74, column: 10, scope: !18)
!113 = !DILocation(line: 75, column: 16, scope: !18)
!114 = !DILocation(line: 75, column: 3, scope: !18)
!115 = !DILocation(line: 75, column: 10, scope: !18)
!116 = !DILocation(line: 76, column: 16, scope: !18)
!117 = !DILocation(line: 76, column: 3, scope: !18)
!118 = !DILocation(line: 76, column: 10, scope: !18)
!119 = !DILocation(line: 77, column: 12, scope: !18)
!120 = !DILocation(line: 77, column: 3, scope: !18)
!121 = !DILocation(line: 77, column: 10, scope: !18)
!122 = !DILocation(line: 78, column: 12, scope: !18)
!123 = !DILocation(line: 78, column: 3, scope: !18)
!124 = !DILocation(line: 78, column: 10, scope: !18)
!125 = !DILocation(line: 79, column: 12, scope: !18)
!126 = !DILocation(line: 79, column: 3, scope: !18)
!127 = !DILocation(line: 79, column: 10, scope: !18)
!128 = !DILocation(line: 80, column: 12, scope: !18)
!129 = !DILocation(line: 80, column: 3, scope: !18)
!130 = !DILocation(line: 80, column: 10, scope: !18)
!131 = !DILocation(line: 81, column: 12, scope: !18)
!132 = !DILocation(line: 81, column: 3, scope: !18)
!133 = !DILocation(line: 81, column: 10, scope: !18)
!134 = !DILocation(line: 82, column: 14, scope: !18)
!135 = !DILocation(line: 82, column: 3, scope: !18)
!136 = !DILocation(line: 82, column: 12, scope: !18)
!137 = !DILocation(line: 83, column: 14, scope: !18)
!138 = !DILocation(line: 83, column: 3, scope: !18)
!139 = !DILocation(line: 83, column: 12, scope: !18)
!140 = !DILocation(line: 84, column: 14, scope: !18)
!141 = !DILocation(line: 84, column: 3, scope: !18)
!142 = !DILocation(line: 84, column: 12, scope: !18)
!143 = !DILocation(line: 85, column: 14, scope: !18)
!144 = !DILocation(line: 85, column: 3, scope: !18)
!145 = !DILocation(line: 85, column: 12, scope: !18)
!146 = !DILocation(line: 86, column: 14, scope: !18)
!147 = !DILocation(line: 86, column: 3, scope: !18)
!148 = !DILocation(line: 86, column: 12, scope: !18)
!149 = !DILocation(line: 87, column: 1, scope: !18)
!150 = distinct !DISubprogram(name: "load64", scope: !151, file: !151, line: 172, type: !152, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!151 = !DIFile(filename: "../hacl-star/dist/karamel/include/krml/lowstar_endianness.h", directory: "/home/luwei/bech-back/HACL/Poly1305")
!152 = !DISubroutineType(types: !153)
!153 = !{!9, !22}
!154 = !DILocalVariable(name: "b", arg: 1, scope: !150, file: !151, line: 172, type: !22)
!155 = !DILocation(line: 0, scope: !150)
!156 = !DILocalVariable(name: "x", scope: !150, file: !151, line: 173, type: !9)
!157 = !DILocation(line: 173, column: 12, scope: !150)
!158 = !DILocation(line: 174, column: 3, scope: !150)
!159 = !DILocation(line: 175, column: 10, scope: !150)
!160 = !DILocation(line: 175, column: 3, scope: !150)
!161 = distinct !DISubprogram(name: "__uint64_identity", scope: !162, file: !162, line: 45, type: !163, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h", directory: "")
!163 = !DISubroutineType(types: !164)
!164 = !{!10, !10}
!165 = !DILocalVariable(name: "__x", arg: 1, scope: !161, file: !162, line: 45, type: !10)
!166 = !DILocation(line: 0, scope: !161)
!167 = !DILocation(line: 47, column: 3, scope: !161)
!168 = distinct !DISubprogram(name: "Hacl_Poly1305_32_poly1305_update1", scope: !1, file: !1, line: 89, type: !19, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!169 = !DILocalVariable(name: "ctx", arg: 1, scope: !168, file: !1, line: 89, type: !21)
!170 = !DILocation(line: 0, scope: !168)
!171 = !DILocalVariable(name: "text", arg: 2, scope: !168, file: !1, line: 89, type: !22)
!172 = !DILocation(line: 91, column: 23, scope: !168)
!173 = !DILocalVariable(name: "pre", scope: !168, file: !1, line: 91, type: !21)
!174 = !DILocalVariable(name: "acc", scope: !168, file: !1, line: 92, type: !21)
!175 = !DILocalVariable(name: "e", scope: !168, file: !1, line: 93, type: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 320, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 5)
!179 = !DILocation(line: 93, column: 12, scope: !168)
!180 = !DILocation(line: 94, column: 17, scope: !168)
!181 = !DILocalVariable(name: "u0", scope: !168, file: !1, line: 94, type: !9)
!182 = !DILocalVariable(name: "lo", scope: !168, file: !1, line: 95, type: !9)
!183 = !DILocation(line: 96, column: 16, scope: !168)
!184 = !DILocalVariable(name: "u", scope: !168, file: !1, line: 96, type: !9)
!185 = !DILocalVariable(name: "hi", scope: !168, file: !1, line: 97, type: !9)
!186 = !DILocalVariable(name: "f0", scope: !168, file: !1, line: 98, type: !9)
!187 = !DILocalVariable(name: "f1", scope: !168, file: !1, line: 99, type: !9)
!188 = !DILocation(line: 100, column: 22, scope: !168)
!189 = !DILocalVariable(name: "f010", scope: !168, file: !1, line: 100, type: !9)
!190 = !DILocation(line: 101, column: 22, scope: !168)
!191 = !DILocation(line: 101, column: 39, scope: !168)
!192 = !DILocalVariable(name: "f110", scope: !168, file: !1, line: 101, type: !9)
!193 = !DILocation(line: 102, column: 21, scope: !168)
!194 = !DILocation(line: 102, column: 44, scope: !168)
!195 = !DILocation(line: 102, column: 65, scope: !168)
!196 = !DILocation(line: 102, column: 38, scope: !168)
!197 = !DILocalVariable(name: "f20", scope: !168, file: !1, line: 102, type: !9)
!198 = !DILocation(line: 103, column: 21, scope: !168)
!199 = !DILocation(line: 103, column: 38, scope: !168)
!200 = !DILocalVariable(name: "f30", scope: !168, file: !1, line: 103, type: !9)
!201 = !DILocation(line: 104, column: 21, scope: !168)
!202 = !DILocalVariable(name: "f40", scope: !168, file: !1, line: 104, type: !9)
!203 = !DILocalVariable(name: "f01", scope: !168, file: !1, line: 105, type: !9)
!204 = !DILocalVariable(name: "f111", scope: !168, file: !1, line: 106, type: !9)
!205 = !DILocalVariable(name: "f2", scope: !168, file: !1, line: 107, type: !9)
!206 = !DILocalVariable(name: "f3", scope: !168, file: !1, line: 108, type: !9)
!207 = !DILocalVariable(name: "f41", scope: !168, file: !1, line: 109, type: !9)
!208 = !DILocation(line: 110, column: 3, scope: !168)
!209 = !DILocation(line: 110, column: 9, scope: !168)
!210 = !DILocation(line: 111, column: 3, scope: !168)
!211 = !DILocation(line: 111, column: 9, scope: !168)
!212 = !DILocation(line: 112, column: 3, scope: !168)
!213 = !DILocation(line: 112, column: 9, scope: !168)
!214 = !DILocation(line: 113, column: 3, scope: !168)
!215 = !DILocation(line: 113, column: 9, scope: !168)
!216 = !DILocation(line: 114, column: 3, scope: !168)
!217 = !DILocation(line: 114, column: 9, scope: !168)
!218 = !DILocalVariable(name: "b", scope: !168, file: !1, line: 115, type: !9)
!219 = !DILocalVariable(name: "mask", scope: !168, file: !1, line: 116, type: !9)
!220 = !DILocation(line: 117, column: 17, scope: !168)
!221 = !DILocalVariable(name: "f4", scope: !168, file: !1, line: 117, type: !9)
!222 = !DILocation(line: 118, column: 14, scope: !168)
!223 = !DILocation(line: 118, column: 3, scope: !168)
!224 = !DILocation(line: 118, column: 9, scope: !168)
!225 = !DILocalVariable(name: "r", scope: !168, file: !1, line: 119, type: !21)
!226 = !DILocation(line: 120, column: 22, scope: !168)
!227 = !DILocalVariable(name: "r5", scope: !168, file: !1, line: 120, type: !21)
!228 = !DILocation(line: 121, column: 17, scope: !168)
!229 = !DILocalVariable(name: "r0", scope: !168, file: !1, line: 121, type: !9)
!230 = !DILocation(line: 122, column: 17, scope: !168)
!231 = !DILocalVariable(name: "r1", scope: !168, file: !1, line: 122, type: !9)
!232 = !DILocation(line: 123, column: 17, scope: !168)
!233 = !DILocalVariable(name: "r2", scope: !168, file: !1, line: 123, type: !9)
!234 = !DILocation(line: 124, column: 17, scope: !168)
!235 = !DILocalVariable(name: "r3", scope: !168, file: !1, line: 124, type: !9)
!236 = !DILocation(line: 125, column: 17, scope: !168)
!237 = !DILocalVariable(name: "r4", scope: !168, file: !1, line: 125, type: !9)
!238 = !DILocation(line: 126, column: 18, scope: !168)
!239 = !DILocalVariable(name: "r51", scope: !168, file: !1, line: 126, type: !9)
!240 = !DILocation(line: 127, column: 18, scope: !168)
!241 = !DILocalVariable(name: "r52", scope: !168, file: !1, line: 127, type: !9)
!242 = !DILocation(line: 128, column: 18, scope: !168)
!243 = !DILocalVariable(name: "r53", scope: !168, file: !1, line: 128, type: !9)
!244 = !DILocation(line: 129, column: 18, scope: !168)
!245 = !DILocalVariable(name: "r54", scope: !168, file: !1, line: 129, type: !9)
!246 = !DILocation(line: 130, column: 18, scope: !168)
!247 = !DILocalVariable(name: "f10", scope: !168, file: !1, line: 130, type: !9)
!248 = !DILocation(line: 131, column: 18, scope: !168)
!249 = !DILocalVariable(name: "f11", scope: !168, file: !1, line: 131, type: !9)
!250 = !DILocation(line: 132, column: 18, scope: !168)
!251 = !DILocalVariable(name: "f12", scope: !168, file: !1, line: 132, type: !9)
!252 = !DILocation(line: 133, column: 18, scope: !168)
!253 = !DILocalVariable(name: "f13", scope: !168, file: !1, line: 133, type: !9)
!254 = !DILocation(line: 134, column: 18, scope: !168)
!255 = !DILocalVariable(name: "f14", scope: !168, file: !1, line: 134, type: !9)
!256 = !DILocation(line: 135, column: 17, scope: !168)
!257 = !DILocalVariable(name: "a0", scope: !168, file: !1, line: 135, type: !9)
!258 = !DILocation(line: 136, column: 17, scope: !168)
!259 = !DILocalVariable(name: "a1", scope: !168, file: !1, line: 136, type: !9)
!260 = !DILocation(line: 137, column: 17, scope: !168)
!261 = !DILocalVariable(name: "a2", scope: !168, file: !1, line: 137, type: !9)
!262 = !DILocation(line: 138, column: 17, scope: !168)
!263 = !DILocalVariable(name: "a3", scope: !168, file: !1, line: 138, type: !9)
!264 = !DILocation(line: 139, column: 17, scope: !168)
!265 = !DILocalVariable(name: "a4", scope: !168, file: !1, line: 139, type: !9)
!266 = !DILocation(line: 140, column: 21, scope: !168)
!267 = !DILocalVariable(name: "a01", scope: !168, file: !1, line: 140, type: !9)
!268 = !DILocation(line: 141, column: 21, scope: !168)
!269 = !DILocalVariable(name: "a11", scope: !168, file: !1, line: 141, type: !9)
!270 = !DILocation(line: 142, column: 21, scope: !168)
!271 = !DILocalVariable(name: "a21", scope: !168, file: !1, line: 142, type: !9)
!272 = !DILocation(line: 143, column: 21, scope: !168)
!273 = !DILocalVariable(name: "a31", scope: !168, file: !1, line: 143, type: !9)
!274 = !DILocation(line: 144, column: 21, scope: !168)
!275 = !DILocalVariable(name: "a41", scope: !168, file: !1, line: 144, type: !9)
!276 = !DILocation(line: 145, column: 21, scope: !168)
!277 = !DILocalVariable(name: "a02", scope: !168, file: !1, line: 145, type: !9)
!278 = !DILocation(line: 146, column: 21, scope: !168)
!279 = !DILocalVariable(name: "a12", scope: !168, file: !1, line: 146, type: !9)
!280 = !DILocation(line: 147, column: 21, scope: !168)
!281 = !DILocalVariable(name: "a22", scope: !168, file: !1, line: 147, type: !9)
!282 = !DILocation(line: 148, column: 21, scope: !168)
!283 = !DILocalVariable(name: "a32", scope: !168, file: !1, line: 148, type: !9)
!284 = !DILocation(line: 149, column: 21, scope: !168)
!285 = !DILocalVariable(name: "a42", scope: !168, file: !1, line: 149, type: !9)
!286 = !DILocation(line: 150, column: 28, scope: !168)
!287 = !DILocation(line: 150, column: 22, scope: !168)
!288 = !DILocalVariable(name: "a03", scope: !168, file: !1, line: 150, type: !9)
!289 = !DILocation(line: 151, column: 27, scope: !168)
!290 = !DILocation(line: 151, column: 22, scope: !168)
!291 = !DILocalVariable(name: "a13", scope: !168, file: !1, line: 151, type: !9)
!292 = !DILocation(line: 152, column: 27, scope: !168)
!293 = !DILocation(line: 152, column: 22, scope: !168)
!294 = !DILocalVariable(name: "a23", scope: !168, file: !1, line: 152, type: !9)
!295 = !DILocation(line: 153, column: 27, scope: !168)
!296 = !DILocation(line: 153, column: 22, scope: !168)
!297 = !DILocalVariable(name: "a33", scope: !168, file: !1, line: 153, type: !9)
!298 = !DILocation(line: 154, column: 27, scope: !168)
!299 = !DILocation(line: 154, column: 22, scope: !168)
!300 = !DILocalVariable(name: "a43", scope: !168, file: !1, line: 154, type: !9)
!301 = !DILocation(line: 155, column: 28, scope: !168)
!302 = !DILocation(line: 155, column: 22, scope: !168)
!303 = !DILocalVariable(name: "a04", scope: !168, file: !1, line: 155, type: !9)
!304 = !DILocation(line: 156, column: 28, scope: !168)
!305 = !DILocation(line: 156, column: 22, scope: !168)
!306 = !DILocalVariable(name: "a14", scope: !168, file: !1, line: 156, type: !9)
!307 = !DILocation(line: 157, column: 27, scope: !168)
!308 = !DILocation(line: 157, column: 22, scope: !168)
!309 = !DILocalVariable(name: "a24", scope: !168, file: !1, line: 157, type: !9)
!310 = !DILocation(line: 158, column: 27, scope: !168)
!311 = !DILocation(line: 158, column: 22, scope: !168)
!312 = !DILocalVariable(name: "a34", scope: !168, file: !1, line: 158, type: !9)
!313 = !DILocation(line: 159, column: 27, scope: !168)
!314 = !DILocation(line: 159, column: 22, scope: !168)
!315 = !DILocalVariable(name: "a44", scope: !168, file: !1, line: 159, type: !9)
!316 = !DILocation(line: 160, column: 28, scope: !168)
!317 = !DILocation(line: 160, column: 22, scope: !168)
!318 = !DILocalVariable(name: "a05", scope: !168, file: !1, line: 160, type: !9)
!319 = !DILocation(line: 161, column: 28, scope: !168)
!320 = !DILocation(line: 161, column: 22, scope: !168)
!321 = !DILocalVariable(name: "a15", scope: !168, file: !1, line: 161, type: !9)
!322 = !DILocation(line: 162, column: 28, scope: !168)
!323 = !DILocation(line: 162, column: 22, scope: !168)
!324 = !DILocalVariable(name: "a25", scope: !168, file: !1, line: 162, type: !9)
!325 = !DILocation(line: 163, column: 27, scope: !168)
!326 = !DILocation(line: 163, column: 22, scope: !168)
!327 = !DILocalVariable(name: "a35", scope: !168, file: !1, line: 163, type: !9)
!328 = !DILocation(line: 164, column: 27, scope: !168)
!329 = !DILocation(line: 164, column: 22, scope: !168)
!330 = !DILocalVariable(name: "a45", scope: !168, file: !1, line: 164, type: !9)
!331 = !DILocation(line: 165, column: 28, scope: !168)
!332 = !DILocation(line: 165, column: 22, scope: !168)
!333 = !DILocalVariable(name: "a06", scope: !168, file: !1, line: 165, type: !9)
!334 = !DILocation(line: 166, column: 28, scope: !168)
!335 = !DILocation(line: 166, column: 22, scope: !168)
!336 = !DILocalVariable(name: "a16", scope: !168, file: !1, line: 166, type: !9)
!337 = !DILocation(line: 167, column: 28, scope: !168)
!338 = !DILocation(line: 167, column: 22, scope: !168)
!339 = !DILocalVariable(name: "a26", scope: !168, file: !1, line: 167, type: !9)
!340 = !DILocation(line: 168, column: 28, scope: !168)
!341 = !DILocation(line: 168, column: 22, scope: !168)
!342 = !DILocalVariable(name: "a36", scope: !168, file: !1, line: 168, type: !9)
!343 = !DILocation(line: 169, column: 27, scope: !168)
!344 = !DILocation(line: 169, column: 22, scope: !168)
!345 = !DILocalVariable(name: "a46", scope: !168, file: !1, line: 169, type: !9)
!346 = !DILocalVariable(name: "t0", scope: !168, file: !1, line: 170, type: !9)
!347 = !DILocalVariable(name: "t1", scope: !168, file: !1, line: 171, type: !9)
!348 = !DILocalVariable(name: "t2", scope: !168, file: !1, line: 172, type: !9)
!349 = !DILocalVariable(name: "t3", scope: !168, file: !1, line: 173, type: !9)
!350 = !DILocalVariable(name: "t4", scope: !168, file: !1, line: 174, type: !9)
!351 = !DILocalVariable(name: "mask26", scope: !168, file: !1, line: 175, type: !9)
!352 = !DILocation(line: 176, column: 20, scope: !168)
!353 = !DILocalVariable(name: "z0", scope: !168, file: !1, line: 176, type: !9)
!354 = !DILocation(line: 177, column: 20, scope: !168)
!355 = !DILocalVariable(name: "z1", scope: !168, file: !1, line: 177, type: !9)
!356 = !DILocation(line: 178, column: 20, scope: !168)
!357 = !DILocalVariable(name: "x0", scope: !168, file: !1, line: 178, type: !9)
!358 = !DILocation(line: 179, column: 20, scope: !168)
!359 = !DILocalVariable(name: "x3", scope: !168, file: !1, line: 179, type: !9)
!360 = !DILocation(line: 180, column: 20, scope: !168)
!361 = !DILocalVariable(name: "x1", scope: !168, file: !1, line: 180, type: !9)
!362 = !DILocation(line: 181, column: 20, scope: !168)
!363 = !DILocalVariable(name: "x4", scope: !168, file: !1, line: 181, type: !9)
!364 = !DILocation(line: 182, column: 21, scope: !168)
!365 = !DILocalVariable(name: "z01", scope: !168, file: !1, line: 182, type: !9)
!366 = !DILocation(line: 183, column: 21, scope: !168)
!367 = !DILocalVariable(name: "z11", scope: !168, file: !1, line: 183, type: !9)
!368 = !DILocation(line: 184, column: 20, scope: !168)
!369 = !DILocalVariable(name: "t", scope: !168, file: !1, line: 184, type: !9)
!370 = !DILocation(line: 185, column: 22, scope: !168)
!371 = !DILocalVariable(name: "z12", scope: !168, file: !1, line: 185, type: !9)
!372 = !DILocation(line: 186, column: 21, scope: !168)
!373 = !DILocalVariable(name: "x11", scope: !168, file: !1, line: 186, type: !9)
!374 = !DILocation(line: 187, column: 21, scope: !168)
!375 = !DILocalVariable(name: "x41", scope: !168, file: !1, line: 187, type: !9)
!376 = !DILocation(line: 188, column: 20, scope: !168)
!377 = !DILocalVariable(name: "x2", scope: !168, file: !1, line: 188, type: !9)
!378 = !DILocation(line: 189, column: 21, scope: !168)
!379 = !DILocalVariable(name: "x01", scope: !168, file: !1, line: 189, type: !9)
!380 = !DILocation(line: 190, column: 21, scope: !168)
!381 = !DILocalVariable(name: "z02", scope: !168, file: !1, line: 190, type: !9)
!382 = !DILocation(line: 191, column: 22, scope: !168)
!383 = !DILocalVariable(name: "z13", scope: !168, file: !1, line: 191, type: !9)
!384 = !DILocation(line: 192, column: 21, scope: !168)
!385 = !DILocalVariable(name: "x21", scope: !168, file: !1, line: 192, type: !9)
!386 = !DILocation(line: 193, column: 22, scope: !168)
!387 = !DILocalVariable(name: "x02", scope: !168, file: !1, line: 193, type: !9)
!388 = !DILocation(line: 194, column: 21, scope: !168)
!389 = !DILocalVariable(name: "x31", scope: !168, file: !1, line: 194, type: !9)
!390 = !DILocation(line: 195, column: 22, scope: !168)
!391 = !DILocalVariable(name: "x12", scope: !168, file: !1, line: 195, type: !9)
!392 = !DILocation(line: 196, column: 22, scope: !168)
!393 = !DILocalVariable(name: "z03", scope: !168, file: !1, line: 196, type: !9)
!394 = !DILocation(line: 197, column: 22, scope: !168)
!395 = !DILocalVariable(name: "x32", scope: !168, file: !1, line: 197, type: !9)
!396 = !DILocation(line: 198, column: 22, scope: !168)
!397 = !DILocalVariable(name: "x42", scope: !168, file: !1, line: 198, type: !9)
!398 = !DILocalVariable(name: "o0", scope: !168, file: !1, line: 199, type: !9)
!399 = !DILocalVariable(name: "o1", scope: !168, file: !1, line: 200, type: !9)
!400 = !DILocalVariable(name: "o2", scope: !168, file: !1, line: 201, type: !9)
!401 = !DILocalVariable(name: "o3", scope: !168, file: !1, line: 202, type: !9)
!402 = !DILocalVariable(name: "o4", scope: !168, file: !1, line: 203, type: !9)
!403 = !DILocation(line: 204, column: 3, scope: !168)
!404 = !DILocation(line: 204, column: 11, scope: !168)
!405 = !DILocation(line: 205, column: 3, scope: !168)
!406 = !DILocation(line: 205, column: 11, scope: !168)
!407 = !DILocation(line: 206, column: 3, scope: !168)
!408 = !DILocation(line: 206, column: 11, scope: !168)
!409 = !DILocation(line: 207, column: 3, scope: !168)
!410 = !DILocation(line: 207, column: 11, scope: !168)
!411 = !DILocation(line: 208, column: 3, scope: !168)
!412 = !DILocation(line: 208, column: 11, scope: !168)
!413 = !DILocation(line: 209, column: 1, scope: !168)
!414 = distinct !DISubprogram(name: "Hacl_Poly1305_32_poly1305_update", scope: !1, file: !1, line: 211, type: !415, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !21, !4, !22}
!417 = !DILocalVariable(name: "ctx", arg: 1, scope: !414, file: !1, line: 211, type: !21)
!418 = !DILocation(line: 0, scope: !414)
!419 = !DILocalVariable(name: "len", arg: 2, scope: !414, file: !1, line: 211, type: !4)
!420 = !DILocalVariable(name: "text", arg: 3, scope: !414, file: !1, line: 211, type: !22)
!421 = !DILocation(line: 213, column: 23, scope: !414)
!422 = !DILocalVariable(name: "pre", scope: !414, file: !1, line: 213, type: !21)
!423 = !DILocalVariable(name: "acc", scope: !414, file: !1, line: 214, type: !21)
!424 = !DILocation(line: 215, column: 21, scope: !414)
!425 = !DILocalVariable(name: "nb", scope: !414, file: !1, line: 215, type: !4)
!426 = !DILocation(line: 216, column: 22, scope: !414)
!427 = !DILocalVariable(name: "rem", scope: !414, file: !1, line: 216, type: !4)
!428 = !DILocalVariable(name: "i", scope: !429, file: !1, line: 217, type: !4)
!429 = distinct !DILexicalBlock(scope: !414, file: !1, line: 217, column: 3)
!430 = !DILocation(line: 0, scope: !429)
!431 = !DILocation(line: 217, column: 8, scope: !429)
!432 = !DILocation(line: 217, column: 37, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !1, line: 217, column: 3)
!434 = !DILocation(line: 217, column: 3, scope: !429)
!435 = !DILocation(line: 219, column: 31, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !1, line: 218, column: 3)
!437 = !DILocation(line: 219, column: 27, scope: !436)
!438 = !DILocalVariable(name: "block", scope: !436, file: !1, line: 219, type: !22)
!439 = !DILocation(line: 0, scope: !436)
!440 = !DILocalVariable(name: "e", scope: !436, file: !1, line: 220, type: !176)
!441 = !DILocation(line: 220, column: 14, scope: !436)
!442 = !DILocation(line: 221, column: 19, scope: !436)
!443 = !DILocalVariable(name: "u0", scope: !436, file: !1, line: 221, type: !9)
!444 = !DILocalVariable(name: "lo", scope: !436, file: !1, line: 222, type: !9)
!445 = !DILocation(line: 223, column: 18, scope: !436)
!446 = !DILocalVariable(name: "u", scope: !436, file: !1, line: 223, type: !9)
!447 = !DILocalVariable(name: "hi", scope: !436, file: !1, line: 224, type: !9)
!448 = !DILocalVariable(name: "f0", scope: !436, file: !1, line: 225, type: !9)
!449 = !DILocalVariable(name: "f1", scope: !436, file: !1, line: 226, type: !9)
!450 = !DILocation(line: 227, column: 24, scope: !436)
!451 = !DILocalVariable(name: "f010", scope: !436, file: !1, line: 227, type: !9)
!452 = !DILocation(line: 228, column: 24, scope: !436)
!453 = !DILocation(line: 228, column: 41, scope: !436)
!454 = !DILocalVariable(name: "f110", scope: !436, file: !1, line: 228, type: !9)
!455 = !DILocation(line: 229, column: 23, scope: !436)
!456 = !DILocation(line: 229, column: 46, scope: !436)
!457 = !DILocation(line: 229, column: 67, scope: !436)
!458 = !DILocation(line: 229, column: 40, scope: !436)
!459 = !DILocalVariable(name: "f20", scope: !436, file: !1, line: 229, type: !9)
!460 = !DILocation(line: 230, column: 23, scope: !436)
!461 = !DILocation(line: 230, column: 40, scope: !436)
!462 = !DILocalVariable(name: "f30", scope: !436, file: !1, line: 230, type: !9)
!463 = !DILocation(line: 231, column: 23, scope: !436)
!464 = !DILocalVariable(name: "f40", scope: !436, file: !1, line: 231, type: !9)
!465 = !DILocalVariable(name: "f01", scope: !436, file: !1, line: 232, type: !9)
!466 = !DILocalVariable(name: "f111", scope: !436, file: !1, line: 233, type: !9)
!467 = !DILocalVariable(name: "f2", scope: !436, file: !1, line: 234, type: !9)
!468 = !DILocalVariable(name: "f3", scope: !436, file: !1, line: 235, type: !9)
!469 = !DILocalVariable(name: "f41", scope: !436, file: !1, line: 236, type: !9)
!470 = !DILocation(line: 237, column: 5, scope: !436)
!471 = !DILocation(line: 237, column: 11, scope: !436)
!472 = !DILocation(line: 238, column: 5, scope: !436)
!473 = !DILocation(line: 238, column: 11, scope: !436)
!474 = !DILocation(line: 239, column: 5, scope: !436)
!475 = !DILocation(line: 239, column: 11, scope: !436)
!476 = !DILocation(line: 240, column: 5, scope: !436)
!477 = !DILocation(line: 240, column: 11, scope: !436)
!478 = !DILocation(line: 241, column: 5, scope: !436)
!479 = !DILocation(line: 241, column: 11, scope: !436)
!480 = !DILocalVariable(name: "b", scope: !436, file: !1, line: 242, type: !9)
!481 = !DILocalVariable(name: "mask", scope: !436, file: !1, line: 243, type: !9)
!482 = !DILocation(line: 244, column: 19, scope: !436)
!483 = !DILocalVariable(name: "f4", scope: !436, file: !1, line: 244, type: !9)
!484 = !DILocation(line: 245, column: 16, scope: !436)
!485 = !DILocation(line: 245, column: 5, scope: !436)
!486 = !DILocation(line: 245, column: 11, scope: !436)
!487 = !DILocalVariable(name: "r", scope: !436, file: !1, line: 246, type: !21)
!488 = !DILocation(line: 247, column: 24, scope: !436)
!489 = !DILocalVariable(name: "r5", scope: !436, file: !1, line: 247, type: !21)
!490 = !DILocation(line: 248, column: 19, scope: !436)
!491 = !DILocalVariable(name: "r0", scope: !436, file: !1, line: 248, type: !9)
!492 = !DILocation(line: 249, column: 19, scope: !436)
!493 = !DILocalVariable(name: "r1", scope: !436, file: !1, line: 249, type: !9)
!494 = !DILocation(line: 250, column: 19, scope: !436)
!495 = !DILocalVariable(name: "r2", scope: !436, file: !1, line: 250, type: !9)
!496 = !DILocation(line: 251, column: 19, scope: !436)
!497 = !DILocalVariable(name: "r3", scope: !436, file: !1, line: 251, type: !9)
!498 = !DILocation(line: 252, column: 19, scope: !436)
!499 = !DILocalVariable(name: "r4", scope: !436, file: !1, line: 252, type: !9)
!500 = !DILocation(line: 253, column: 20, scope: !436)
!501 = !DILocalVariable(name: "r51", scope: !436, file: !1, line: 253, type: !9)
!502 = !DILocation(line: 254, column: 20, scope: !436)
!503 = !DILocalVariable(name: "r52", scope: !436, file: !1, line: 254, type: !9)
!504 = !DILocation(line: 255, column: 20, scope: !436)
!505 = !DILocalVariable(name: "r53", scope: !436, file: !1, line: 255, type: !9)
!506 = !DILocation(line: 256, column: 20, scope: !436)
!507 = !DILocalVariable(name: "r54", scope: !436, file: !1, line: 256, type: !9)
!508 = !DILocation(line: 257, column: 20, scope: !436)
!509 = !DILocalVariable(name: "f10", scope: !436, file: !1, line: 257, type: !9)
!510 = !DILocation(line: 258, column: 20, scope: !436)
!511 = !DILocalVariable(name: "f11", scope: !436, file: !1, line: 258, type: !9)
!512 = !DILocation(line: 259, column: 20, scope: !436)
!513 = !DILocalVariable(name: "f12", scope: !436, file: !1, line: 259, type: !9)
!514 = !DILocation(line: 260, column: 20, scope: !436)
!515 = !DILocalVariable(name: "f13", scope: !436, file: !1, line: 260, type: !9)
!516 = !DILocation(line: 261, column: 20, scope: !436)
!517 = !DILocalVariable(name: "f14", scope: !436, file: !1, line: 261, type: !9)
!518 = !DILocation(line: 262, column: 19, scope: !436)
!519 = !DILocalVariable(name: "a0", scope: !436, file: !1, line: 262, type: !9)
!520 = !DILocation(line: 263, column: 19, scope: !436)
!521 = !DILocalVariable(name: "a1", scope: !436, file: !1, line: 263, type: !9)
!522 = !DILocation(line: 264, column: 19, scope: !436)
!523 = !DILocalVariable(name: "a2", scope: !436, file: !1, line: 264, type: !9)
!524 = !DILocation(line: 265, column: 19, scope: !436)
!525 = !DILocalVariable(name: "a3", scope: !436, file: !1, line: 265, type: !9)
!526 = !DILocation(line: 266, column: 19, scope: !436)
!527 = !DILocalVariable(name: "a4", scope: !436, file: !1, line: 266, type: !9)
!528 = !DILocation(line: 267, column: 23, scope: !436)
!529 = !DILocalVariable(name: "a01", scope: !436, file: !1, line: 267, type: !9)
!530 = !DILocation(line: 268, column: 23, scope: !436)
!531 = !DILocalVariable(name: "a11", scope: !436, file: !1, line: 268, type: !9)
!532 = !DILocation(line: 269, column: 23, scope: !436)
!533 = !DILocalVariable(name: "a21", scope: !436, file: !1, line: 269, type: !9)
!534 = !DILocation(line: 270, column: 23, scope: !436)
!535 = !DILocalVariable(name: "a31", scope: !436, file: !1, line: 270, type: !9)
!536 = !DILocation(line: 271, column: 23, scope: !436)
!537 = !DILocalVariable(name: "a41", scope: !436, file: !1, line: 271, type: !9)
!538 = !DILocation(line: 272, column: 23, scope: !436)
!539 = !DILocalVariable(name: "a02", scope: !436, file: !1, line: 272, type: !9)
!540 = !DILocation(line: 273, column: 23, scope: !436)
!541 = !DILocalVariable(name: "a12", scope: !436, file: !1, line: 273, type: !9)
!542 = !DILocation(line: 274, column: 23, scope: !436)
!543 = !DILocalVariable(name: "a22", scope: !436, file: !1, line: 274, type: !9)
!544 = !DILocation(line: 275, column: 23, scope: !436)
!545 = !DILocalVariable(name: "a32", scope: !436, file: !1, line: 275, type: !9)
!546 = !DILocation(line: 276, column: 23, scope: !436)
!547 = !DILocalVariable(name: "a42", scope: !436, file: !1, line: 276, type: !9)
!548 = !DILocation(line: 277, column: 30, scope: !436)
!549 = !DILocation(line: 277, column: 24, scope: !436)
!550 = !DILocalVariable(name: "a03", scope: !436, file: !1, line: 277, type: !9)
!551 = !DILocation(line: 278, column: 29, scope: !436)
!552 = !DILocation(line: 278, column: 24, scope: !436)
!553 = !DILocalVariable(name: "a13", scope: !436, file: !1, line: 278, type: !9)
!554 = !DILocation(line: 279, column: 29, scope: !436)
!555 = !DILocation(line: 279, column: 24, scope: !436)
!556 = !DILocalVariable(name: "a23", scope: !436, file: !1, line: 279, type: !9)
!557 = !DILocation(line: 280, column: 29, scope: !436)
!558 = !DILocation(line: 280, column: 24, scope: !436)
!559 = !DILocalVariable(name: "a33", scope: !436, file: !1, line: 280, type: !9)
!560 = !DILocation(line: 281, column: 29, scope: !436)
!561 = !DILocation(line: 281, column: 24, scope: !436)
!562 = !DILocalVariable(name: "a43", scope: !436, file: !1, line: 281, type: !9)
!563 = !DILocation(line: 282, column: 30, scope: !436)
!564 = !DILocation(line: 282, column: 24, scope: !436)
!565 = !DILocalVariable(name: "a04", scope: !436, file: !1, line: 282, type: !9)
!566 = !DILocation(line: 283, column: 30, scope: !436)
!567 = !DILocation(line: 283, column: 24, scope: !436)
!568 = !DILocalVariable(name: "a14", scope: !436, file: !1, line: 283, type: !9)
!569 = !DILocation(line: 284, column: 29, scope: !436)
!570 = !DILocation(line: 284, column: 24, scope: !436)
!571 = !DILocalVariable(name: "a24", scope: !436, file: !1, line: 284, type: !9)
!572 = !DILocation(line: 285, column: 29, scope: !436)
!573 = !DILocation(line: 285, column: 24, scope: !436)
!574 = !DILocalVariable(name: "a34", scope: !436, file: !1, line: 285, type: !9)
!575 = !DILocation(line: 286, column: 29, scope: !436)
!576 = !DILocation(line: 286, column: 24, scope: !436)
!577 = !DILocalVariable(name: "a44", scope: !436, file: !1, line: 286, type: !9)
!578 = !DILocation(line: 287, column: 30, scope: !436)
!579 = !DILocation(line: 287, column: 24, scope: !436)
!580 = !DILocalVariable(name: "a05", scope: !436, file: !1, line: 287, type: !9)
!581 = !DILocation(line: 288, column: 30, scope: !436)
!582 = !DILocation(line: 288, column: 24, scope: !436)
!583 = !DILocalVariable(name: "a15", scope: !436, file: !1, line: 288, type: !9)
!584 = !DILocation(line: 289, column: 30, scope: !436)
!585 = !DILocation(line: 289, column: 24, scope: !436)
!586 = !DILocalVariable(name: "a25", scope: !436, file: !1, line: 289, type: !9)
!587 = !DILocation(line: 290, column: 29, scope: !436)
!588 = !DILocation(line: 290, column: 24, scope: !436)
!589 = !DILocalVariable(name: "a35", scope: !436, file: !1, line: 290, type: !9)
!590 = !DILocation(line: 291, column: 29, scope: !436)
!591 = !DILocation(line: 291, column: 24, scope: !436)
!592 = !DILocalVariable(name: "a45", scope: !436, file: !1, line: 291, type: !9)
!593 = !DILocation(line: 292, column: 30, scope: !436)
!594 = !DILocation(line: 292, column: 24, scope: !436)
!595 = !DILocalVariable(name: "a06", scope: !436, file: !1, line: 292, type: !9)
!596 = !DILocation(line: 293, column: 30, scope: !436)
!597 = !DILocation(line: 293, column: 24, scope: !436)
!598 = !DILocalVariable(name: "a16", scope: !436, file: !1, line: 293, type: !9)
!599 = !DILocation(line: 294, column: 30, scope: !436)
!600 = !DILocation(line: 294, column: 24, scope: !436)
!601 = !DILocalVariable(name: "a26", scope: !436, file: !1, line: 294, type: !9)
!602 = !DILocation(line: 295, column: 30, scope: !436)
!603 = !DILocation(line: 295, column: 24, scope: !436)
!604 = !DILocalVariable(name: "a36", scope: !436, file: !1, line: 295, type: !9)
!605 = !DILocation(line: 296, column: 29, scope: !436)
!606 = !DILocation(line: 296, column: 24, scope: !436)
!607 = !DILocalVariable(name: "a46", scope: !436, file: !1, line: 296, type: !9)
!608 = !DILocalVariable(name: "t0", scope: !436, file: !1, line: 297, type: !9)
!609 = !DILocalVariable(name: "t1", scope: !436, file: !1, line: 298, type: !9)
!610 = !DILocalVariable(name: "t2", scope: !436, file: !1, line: 299, type: !9)
!611 = !DILocalVariable(name: "t3", scope: !436, file: !1, line: 300, type: !9)
!612 = !DILocalVariable(name: "t4", scope: !436, file: !1, line: 301, type: !9)
!613 = !DILocalVariable(name: "mask26", scope: !436, file: !1, line: 302, type: !9)
!614 = !DILocation(line: 303, column: 22, scope: !436)
!615 = !DILocalVariable(name: "z0", scope: !436, file: !1, line: 303, type: !9)
!616 = !DILocation(line: 304, column: 22, scope: !436)
!617 = !DILocalVariable(name: "z1", scope: !436, file: !1, line: 304, type: !9)
!618 = !DILocation(line: 305, column: 22, scope: !436)
!619 = !DILocalVariable(name: "x0", scope: !436, file: !1, line: 305, type: !9)
!620 = !DILocation(line: 306, column: 22, scope: !436)
!621 = !DILocalVariable(name: "x3", scope: !436, file: !1, line: 306, type: !9)
!622 = !DILocation(line: 307, column: 22, scope: !436)
!623 = !DILocalVariable(name: "x1", scope: !436, file: !1, line: 307, type: !9)
!624 = !DILocation(line: 308, column: 22, scope: !436)
!625 = !DILocalVariable(name: "x4", scope: !436, file: !1, line: 308, type: !9)
!626 = !DILocation(line: 309, column: 23, scope: !436)
!627 = !DILocalVariable(name: "z01", scope: !436, file: !1, line: 309, type: !9)
!628 = !DILocation(line: 310, column: 23, scope: !436)
!629 = !DILocalVariable(name: "z11", scope: !436, file: !1, line: 310, type: !9)
!630 = !DILocation(line: 311, column: 22, scope: !436)
!631 = !DILocalVariable(name: "t", scope: !436, file: !1, line: 311, type: !9)
!632 = !DILocation(line: 312, column: 24, scope: !436)
!633 = !DILocalVariable(name: "z12", scope: !436, file: !1, line: 312, type: !9)
!634 = !DILocation(line: 313, column: 23, scope: !436)
!635 = !DILocalVariable(name: "x11", scope: !436, file: !1, line: 313, type: !9)
!636 = !DILocation(line: 314, column: 23, scope: !436)
!637 = !DILocalVariable(name: "x41", scope: !436, file: !1, line: 314, type: !9)
!638 = !DILocation(line: 315, column: 22, scope: !436)
!639 = !DILocalVariable(name: "x2", scope: !436, file: !1, line: 315, type: !9)
!640 = !DILocation(line: 316, column: 23, scope: !436)
!641 = !DILocalVariable(name: "x01", scope: !436, file: !1, line: 316, type: !9)
!642 = !DILocation(line: 317, column: 23, scope: !436)
!643 = !DILocalVariable(name: "z02", scope: !436, file: !1, line: 317, type: !9)
!644 = !DILocation(line: 318, column: 24, scope: !436)
!645 = !DILocalVariable(name: "z13", scope: !436, file: !1, line: 318, type: !9)
!646 = !DILocation(line: 319, column: 23, scope: !436)
!647 = !DILocalVariable(name: "x21", scope: !436, file: !1, line: 319, type: !9)
!648 = !DILocation(line: 320, column: 24, scope: !436)
!649 = !DILocalVariable(name: "x02", scope: !436, file: !1, line: 320, type: !9)
!650 = !DILocation(line: 321, column: 23, scope: !436)
!651 = !DILocalVariable(name: "x31", scope: !436, file: !1, line: 321, type: !9)
!652 = !DILocation(line: 322, column: 24, scope: !436)
!653 = !DILocalVariable(name: "x12", scope: !436, file: !1, line: 322, type: !9)
!654 = !DILocation(line: 323, column: 24, scope: !436)
!655 = !DILocalVariable(name: "z03", scope: !436, file: !1, line: 323, type: !9)
!656 = !DILocation(line: 324, column: 24, scope: !436)
!657 = !DILocalVariable(name: "x32", scope: !436, file: !1, line: 324, type: !9)
!658 = !DILocation(line: 325, column: 24, scope: !436)
!659 = !DILocalVariable(name: "x42", scope: !436, file: !1, line: 325, type: !9)
!660 = !DILocalVariable(name: "o0", scope: !436, file: !1, line: 326, type: !9)
!661 = !DILocalVariable(name: "o1", scope: !436, file: !1, line: 327, type: !9)
!662 = !DILocalVariable(name: "o2", scope: !436, file: !1, line: 328, type: !9)
!663 = !DILocalVariable(name: "o3", scope: !436, file: !1, line: 329, type: !9)
!664 = !DILocalVariable(name: "o4", scope: !436, file: !1, line: 330, type: !9)
!665 = !DILocation(line: 331, column: 5, scope: !436)
!666 = !DILocation(line: 331, column: 13, scope: !436)
!667 = !DILocation(line: 332, column: 5, scope: !436)
!668 = !DILocation(line: 332, column: 13, scope: !436)
!669 = !DILocation(line: 333, column: 5, scope: !436)
!670 = !DILocation(line: 333, column: 13, scope: !436)
!671 = !DILocation(line: 334, column: 5, scope: !436)
!672 = !DILocation(line: 334, column: 13, scope: !436)
!673 = !DILocation(line: 335, column: 5, scope: !436)
!674 = !DILocation(line: 335, column: 13, scope: !436)
!675 = !DILocation(line: 336, column: 3, scope: !436)
!676 = !DILocation(line: 217, column: 44, scope: !433)
!677 = !DILocation(line: 217, column: 3, scope: !433)
!678 = distinct !{!678, !434, !679, !680}
!679 = !DILocation(line: 336, column: 3, scope: !429)
!680 = !{!"llvm.loop.mustprogress"}
!681 = !DILocation(line: 337, column: 11, scope: !682)
!682 = distinct !DILexicalBlock(scope: !414, file: !1, line: 337, column: 7)
!683 = !DILocation(line: 337, column: 7, scope: !414)
!684 = !DILocation(line: 339, column: 31, scope: !685)
!685 = distinct !DILexicalBlock(scope: !682, file: !1, line: 338, column: 3)
!686 = !DILocation(line: 339, column: 26, scope: !685)
!687 = !DILocalVariable(name: "last", scope: !685, file: !1, line: 339, type: !22)
!688 = !DILocation(line: 0, scope: !685)
!689 = !DILocalVariable(name: "e", scope: !685, file: !1, line: 340, type: !176)
!690 = !DILocation(line: 340, column: 14, scope: !685)
!691 = !DILocalVariable(name: "tmp", scope: !685, file: !1, line: 341, type: !692)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 16)
!695 = !DILocation(line: 341, column: 13, scope: !685)
!696 = !DILocation(line: 342, column: 5, scope: !685)
!697 = !DILocation(line: 342, column: 23, scope: !685)
!698 = !DILocation(line: 342, column: 27, scope: !685)
!699 = !DILocation(line: 343, column: 19, scope: !685)
!700 = !DILocalVariable(name: "u0", scope: !685, file: !1, line: 343, type: !9)
!701 = !DILocalVariable(name: "lo", scope: !685, file: !1, line: 344, type: !9)
!702 = !DILocation(line: 345, column: 18, scope: !685)
!703 = !DILocalVariable(name: "u", scope: !685, file: !1, line: 345, type: !9)
!704 = !DILocalVariable(name: "hi", scope: !685, file: !1, line: 346, type: !9)
!705 = !DILocalVariable(name: "f0", scope: !685, file: !1, line: 347, type: !9)
!706 = !DILocalVariable(name: "f1", scope: !685, file: !1, line: 348, type: !9)
!707 = !DILocation(line: 349, column: 24, scope: !685)
!708 = !DILocalVariable(name: "f010", scope: !685, file: !1, line: 349, type: !9)
!709 = !DILocation(line: 350, column: 24, scope: !685)
!710 = !DILocation(line: 350, column: 41, scope: !685)
!711 = !DILocalVariable(name: "f110", scope: !685, file: !1, line: 350, type: !9)
!712 = !DILocation(line: 351, column: 23, scope: !685)
!713 = !DILocation(line: 351, column: 46, scope: !685)
!714 = !DILocation(line: 351, column: 67, scope: !685)
!715 = !DILocation(line: 351, column: 40, scope: !685)
!716 = !DILocalVariable(name: "f20", scope: !685, file: !1, line: 351, type: !9)
!717 = !DILocation(line: 352, column: 23, scope: !685)
!718 = !DILocation(line: 352, column: 40, scope: !685)
!719 = !DILocalVariable(name: "f30", scope: !685, file: !1, line: 352, type: !9)
!720 = !DILocation(line: 353, column: 23, scope: !685)
!721 = !DILocalVariable(name: "f40", scope: !685, file: !1, line: 353, type: !9)
!722 = !DILocalVariable(name: "f01", scope: !685, file: !1, line: 354, type: !9)
!723 = !DILocalVariable(name: "f111", scope: !685, file: !1, line: 355, type: !9)
!724 = !DILocalVariable(name: "f2", scope: !685, file: !1, line: 356, type: !9)
!725 = !DILocalVariable(name: "f3", scope: !685, file: !1, line: 357, type: !9)
!726 = !DILocalVariable(name: "f4", scope: !685, file: !1, line: 358, type: !9)
!727 = !DILocation(line: 359, column: 5, scope: !685)
!728 = !DILocation(line: 359, column: 11, scope: !685)
!729 = !DILocation(line: 360, column: 5, scope: !685)
!730 = !DILocation(line: 360, column: 11, scope: !685)
!731 = !DILocation(line: 361, column: 5, scope: !685)
!732 = !DILocation(line: 361, column: 11, scope: !685)
!733 = !DILocation(line: 362, column: 5, scope: !685)
!734 = !DILocation(line: 362, column: 11, scope: !685)
!735 = !DILocation(line: 363, column: 5, scope: !685)
!736 = !DILocation(line: 363, column: 11, scope: !685)
!737 = !DILocation(line: 364, column: 38, scope: !685)
!738 = !DILocation(line: 364, column: 53, scope: !685)
!739 = !DILocation(line: 364, column: 31, scope: !685)
!740 = !DILocalVariable(name: "b", scope: !685, file: !1, line: 364, type: !9)
!741 = !DILocalVariable(name: "mask", scope: !685, file: !1, line: 365, type: !9)
!742 = !DILocation(line: 366, column: 25, scope: !685)
!743 = !DILocation(line: 366, column: 40, scope: !685)
!744 = !DILocation(line: 366, column: 19, scope: !685)
!745 = !DILocalVariable(name: "fi", scope: !685, file: !1, line: 366, type: !9)
!746 = !DILocation(line: 367, column: 48, scope: !685)
!747 = !DILocation(line: 367, column: 11, scope: !685)
!748 = !DILocation(line: 367, column: 26, scope: !685)
!749 = !DILocation(line: 367, column: 5, scope: !685)
!750 = !DILocation(line: 367, column: 43, scope: !685)
!751 = !DILocalVariable(name: "r", scope: !685, file: !1, line: 368, type: !21)
!752 = !DILocation(line: 369, column: 24, scope: !685)
!753 = !DILocalVariable(name: "r5", scope: !685, file: !1, line: 369, type: !21)
!754 = !DILocation(line: 370, column: 19, scope: !685)
!755 = !DILocalVariable(name: "r0", scope: !685, file: !1, line: 370, type: !9)
!756 = !DILocation(line: 371, column: 19, scope: !685)
!757 = !DILocalVariable(name: "r1", scope: !685, file: !1, line: 371, type: !9)
!758 = !DILocation(line: 372, column: 19, scope: !685)
!759 = !DILocalVariable(name: "r2", scope: !685, file: !1, line: 372, type: !9)
!760 = !DILocation(line: 373, column: 19, scope: !685)
!761 = !DILocalVariable(name: "r3", scope: !685, file: !1, line: 373, type: !9)
!762 = !DILocation(line: 374, column: 19, scope: !685)
!763 = !DILocalVariable(name: "r4", scope: !685, file: !1, line: 374, type: !9)
!764 = !DILocation(line: 375, column: 20, scope: !685)
!765 = !DILocalVariable(name: "r51", scope: !685, file: !1, line: 375, type: !9)
!766 = !DILocation(line: 376, column: 20, scope: !685)
!767 = !DILocalVariable(name: "r52", scope: !685, file: !1, line: 376, type: !9)
!768 = !DILocation(line: 377, column: 20, scope: !685)
!769 = !DILocalVariable(name: "r53", scope: !685, file: !1, line: 377, type: !9)
!770 = !DILocation(line: 378, column: 20, scope: !685)
!771 = !DILocalVariable(name: "r54", scope: !685, file: !1, line: 378, type: !9)
!772 = !DILocation(line: 379, column: 20, scope: !685)
!773 = !DILocalVariable(name: "f10", scope: !685, file: !1, line: 379, type: !9)
!774 = !DILocation(line: 380, column: 20, scope: !685)
!775 = !DILocalVariable(name: "f11", scope: !685, file: !1, line: 380, type: !9)
!776 = !DILocation(line: 381, column: 20, scope: !685)
!777 = !DILocalVariable(name: "f12", scope: !685, file: !1, line: 381, type: !9)
!778 = !DILocation(line: 382, column: 20, scope: !685)
!779 = !DILocalVariable(name: "f13", scope: !685, file: !1, line: 382, type: !9)
!780 = !DILocation(line: 383, column: 20, scope: !685)
!781 = !DILocalVariable(name: "f14", scope: !685, file: !1, line: 383, type: !9)
!782 = !DILocation(line: 384, column: 19, scope: !685)
!783 = !DILocalVariable(name: "a0", scope: !685, file: !1, line: 384, type: !9)
!784 = !DILocation(line: 385, column: 19, scope: !685)
!785 = !DILocalVariable(name: "a1", scope: !685, file: !1, line: 385, type: !9)
!786 = !DILocation(line: 386, column: 19, scope: !685)
!787 = !DILocalVariable(name: "a2", scope: !685, file: !1, line: 386, type: !9)
!788 = !DILocation(line: 387, column: 19, scope: !685)
!789 = !DILocalVariable(name: "a3", scope: !685, file: !1, line: 387, type: !9)
!790 = !DILocation(line: 388, column: 19, scope: !685)
!791 = !DILocalVariable(name: "a4", scope: !685, file: !1, line: 388, type: !9)
!792 = !DILocation(line: 389, column: 23, scope: !685)
!793 = !DILocalVariable(name: "a01", scope: !685, file: !1, line: 389, type: !9)
!794 = !DILocation(line: 390, column: 23, scope: !685)
!795 = !DILocalVariable(name: "a11", scope: !685, file: !1, line: 390, type: !9)
!796 = !DILocation(line: 391, column: 23, scope: !685)
!797 = !DILocalVariable(name: "a21", scope: !685, file: !1, line: 391, type: !9)
!798 = !DILocation(line: 392, column: 23, scope: !685)
!799 = !DILocalVariable(name: "a31", scope: !685, file: !1, line: 392, type: !9)
!800 = !DILocation(line: 393, column: 23, scope: !685)
!801 = !DILocalVariable(name: "a41", scope: !685, file: !1, line: 393, type: !9)
!802 = !DILocation(line: 394, column: 23, scope: !685)
!803 = !DILocalVariable(name: "a02", scope: !685, file: !1, line: 394, type: !9)
!804 = !DILocation(line: 395, column: 23, scope: !685)
!805 = !DILocalVariable(name: "a12", scope: !685, file: !1, line: 395, type: !9)
!806 = !DILocation(line: 396, column: 23, scope: !685)
!807 = !DILocalVariable(name: "a22", scope: !685, file: !1, line: 396, type: !9)
!808 = !DILocation(line: 397, column: 23, scope: !685)
!809 = !DILocalVariable(name: "a32", scope: !685, file: !1, line: 397, type: !9)
!810 = !DILocation(line: 398, column: 23, scope: !685)
!811 = !DILocalVariable(name: "a42", scope: !685, file: !1, line: 398, type: !9)
!812 = !DILocation(line: 399, column: 30, scope: !685)
!813 = !DILocation(line: 399, column: 24, scope: !685)
!814 = !DILocalVariable(name: "a03", scope: !685, file: !1, line: 399, type: !9)
!815 = !DILocation(line: 400, column: 29, scope: !685)
!816 = !DILocation(line: 400, column: 24, scope: !685)
!817 = !DILocalVariable(name: "a13", scope: !685, file: !1, line: 400, type: !9)
!818 = !DILocation(line: 401, column: 29, scope: !685)
!819 = !DILocation(line: 401, column: 24, scope: !685)
!820 = !DILocalVariable(name: "a23", scope: !685, file: !1, line: 401, type: !9)
!821 = !DILocation(line: 402, column: 29, scope: !685)
!822 = !DILocation(line: 402, column: 24, scope: !685)
!823 = !DILocalVariable(name: "a33", scope: !685, file: !1, line: 402, type: !9)
!824 = !DILocation(line: 403, column: 29, scope: !685)
!825 = !DILocation(line: 403, column: 24, scope: !685)
!826 = !DILocalVariable(name: "a43", scope: !685, file: !1, line: 403, type: !9)
!827 = !DILocation(line: 404, column: 30, scope: !685)
!828 = !DILocation(line: 404, column: 24, scope: !685)
!829 = !DILocalVariable(name: "a04", scope: !685, file: !1, line: 404, type: !9)
!830 = !DILocation(line: 405, column: 30, scope: !685)
!831 = !DILocation(line: 405, column: 24, scope: !685)
!832 = !DILocalVariable(name: "a14", scope: !685, file: !1, line: 405, type: !9)
!833 = !DILocation(line: 406, column: 29, scope: !685)
!834 = !DILocation(line: 406, column: 24, scope: !685)
!835 = !DILocalVariable(name: "a24", scope: !685, file: !1, line: 406, type: !9)
!836 = !DILocation(line: 407, column: 29, scope: !685)
!837 = !DILocation(line: 407, column: 24, scope: !685)
!838 = !DILocalVariable(name: "a34", scope: !685, file: !1, line: 407, type: !9)
!839 = !DILocation(line: 408, column: 29, scope: !685)
!840 = !DILocation(line: 408, column: 24, scope: !685)
!841 = !DILocalVariable(name: "a44", scope: !685, file: !1, line: 408, type: !9)
!842 = !DILocation(line: 409, column: 30, scope: !685)
!843 = !DILocation(line: 409, column: 24, scope: !685)
!844 = !DILocalVariable(name: "a05", scope: !685, file: !1, line: 409, type: !9)
!845 = !DILocation(line: 410, column: 30, scope: !685)
!846 = !DILocation(line: 410, column: 24, scope: !685)
!847 = !DILocalVariable(name: "a15", scope: !685, file: !1, line: 410, type: !9)
!848 = !DILocation(line: 411, column: 30, scope: !685)
!849 = !DILocation(line: 411, column: 24, scope: !685)
!850 = !DILocalVariable(name: "a25", scope: !685, file: !1, line: 411, type: !9)
!851 = !DILocation(line: 412, column: 29, scope: !685)
!852 = !DILocation(line: 412, column: 24, scope: !685)
!853 = !DILocalVariable(name: "a35", scope: !685, file: !1, line: 412, type: !9)
!854 = !DILocation(line: 413, column: 29, scope: !685)
!855 = !DILocation(line: 413, column: 24, scope: !685)
!856 = !DILocalVariable(name: "a45", scope: !685, file: !1, line: 413, type: !9)
!857 = !DILocation(line: 414, column: 30, scope: !685)
!858 = !DILocation(line: 414, column: 24, scope: !685)
!859 = !DILocalVariable(name: "a06", scope: !685, file: !1, line: 414, type: !9)
!860 = !DILocation(line: 415, column: 30, scope: !685)
!861 = !DILocation(line: 415, column: 24, scope: !685)
!862 = !DILocalVariable(name: "a16", scope: !685, file: !1, line: 415, type: !9)
!863 = !DILocation(line: 416, column: 30, scope: !685)
!864 = !DILocation(line: 416, column: 24, scope: !685)
!865 = !DILocalVariable(name: "a26", scope: !685, file: !1, line: 416, type: !9)
!866 = !DILocation(line: 417, column: 30, scope: !685)
!867 = !DILocation(line: 417, column: 24, scope: !685)
!868 = !DILocalVariable(name: "a36", scope: !685, file: !1, line: 417, type: !9)
!869 = !DILocation(line: 418, column: 29, scope: !685)
!870 = !DILocation(line: 418, column: 24, scope: !685)
!871 = !DILocalVariable(name: "a46", scope: !685, file: !1, line: 418, type: !9)
!872 = !DILocalVariable(name: "t0", scope: !685, file: !1, line: 419, type: !9)
!873 = !DILocalVariable(name: "t1", scope: !685, file: !1, line: 420, type: !9)
!874 = !DILocalVariable(name: "t2", scope: !685, file: !1, line: 421, type: !9)
!875 = !DILocalVariable(name: "t3", scope: !685, file: !1, line: 422, type: !9)
!876 = !DILocalVariable(name: "t4", scope: !685, file: !1, line: 423, type: !9)
!877 = !DILocalVariable(name: "mask26", scope: !685, file: !1, line: 424, type: !9)
!878 = !DILocation(line: 425, column: 22, scope: !685)
!879 = !DILocalVariable(name: "z0", scope: !685, file: !1, line: 425, type: !9)
!880 = !DILocation(line: 426, column: 22, scope: !685)
!881 = !DILocalVariable(name: "z1", scope: !685, file: !1, line: 426, type: !9)
!882 = !DILocation(line: 427, column: 22, scope: !685)
!883 = !DILocalVariable(name: "x0", scope: !685, file: !1, line: 427, type: !9)
!884 = !DILocation(line: 428, column: 22, scope: !685)
!885 = !DILocalVariable(name: "x3", scope: !685, file: !1, line: 428, type: !9)
!886 = !DILocation(line: 429, column: 22, scope: !685)
!887 = !DILocalVariable(name: "x1", scope: !685, file: !1, line: 429, type: !9)
!888 = !DILocation(line: 430, column: 22, scope: !685)
!889 = !DILocalVariable(name: "x4", scope: !685, file: !1, line: 430, type: !9)
!890 = !DILocation(line: 431, column: 23, scope: !685)
!891 = !DILocalVariable(name: "z01", scope: !685, file: !1, line: 431, type: !9)
!892 = !DILocation(line: 432, column: 23, scope: !685)
!893 = !DILocalVariable(name: "z11", scope: !685, file: !1, line: 432, type: !9)
!894 = !DILocation(line: 433, column: 22, scope: !685)
!895 = !DILocalVariable(name: "t", scope: !685, file: !1, line: 433, type: !9)
!896 = !DILocation(line: 434, column: 24, scope: !685)
!897 = !DILocalVariable(name: "z12", scope: !685, file: !1, line: 434, type: !9)
!898 = !DILocation(line: 435, column: 23, scope: !685)
!899 = !DILocalVariable(name: "x11", scope: !685, file: !1, line: 435, type: !9)
!900 = !DILocation(line: 436, column: 23, scope: !685)
!901 = !DILocalVariable(name: "x41", scope: !685, file: !1, line: 436, type: !9)
!902 = !DILocation(line: 437, column: 22, scope: !685)
!903 = !DILocalVariable(name: "x2", scope: !685, file: !1, line: 437, type: !9)
!904 = !DILocation(line: 438, column: 23, scope: !685)
!905 = !DILocalVariable(name: "x01", scope: !685, file: !1, line: 438, type: !9)
!906 = !DILocation(line: 439, column: 23, scope: !685)
!907 = !DILocalVariable(name: "z02", scope: !685, file: !1, line: 439, type: !9)
!908 = !DILocation(line: 440, column: 24, scope: !685)
!909 = !DILocalVariable(name: "z13", scope: !685, file: !1, line: 440, type: !9)
!910 = !DILocation(line: 441, column: 23, scope: !685)
!911 = !DILocalVariable(name: "x21", scope: !685, file: !1, line: 441, type: !9)
!912 = !DILocation(line: 442, column: 24, scope: !685)
!913 = !DILocalVariable(name: "x02", scope: !685, file: !1, line: 442, type: !9)
!914 = !DILocation(line: 443, column: 23, scope: !685)
!915 = !DILocalVariable(name: "x31", scope: !685, file: !1, line: 443, type: !9)
!916 = !DILocation(line: 444, column: 24, scope: !685)
!917 = !DILocalVariable(name: "x12", scope: !685, file: !1, line: 444, type: !9)
!918 = !DILocation(line: 445, column: 24, scope: !685)
!919 = !DILocalVariable(name: "z03", scope: !685, file: !1, line: 445, type: !9)
!920 = !DILocation(line: 446, column: 24, scope: !685)
!921 = !DILocalVariable(name: "x32", scope: !685, file: !1, line: 446, type: !9)
!922 = !DILocation(line: 447, column: 24, scope: !685)
!923 = !DILocalVariable(name: "x42", scope: !685, file: !1, line: 447, type: !9)
!924 = !DILocalVariable(name: "o0", scope: !685, file: !1, line: 448, type: !9)
!925 = !DILocalVariable(name: "o1", scope: !685, file: !1, line: 449, type: !9)
!926 = !DILocalVariable(name: "o2", scope: !685, file: !1, line: 450, type: !9)
!927 = !DILocalVariable(name: "o3", scope: !685, file: !1, line: 451, type: !9)
!928 = !DILocalVariable(name: "o4", scope: !685, file: !1, line: 452, type: !9)
!929 = !DILocation(line: 453, column: 5, scope: !685)
!930 = !DILocation(line: 453, column: 13, scope: !685)
!931 = !DILocation(line: 454, column: 5, scope: !685)
!932 = !DILocation(line: 454, column: 13, scope: !685)
!933 = !DILocation(line: 455, column: 5, scope: !685)
!934 = !DILocation(line: 455, column: 13, scope: !685)
!935 = !DILocation(line: 456, column: 5, scope: !685)
!936 = !DILocation(line: 456, column: 13, scope: !685)
!937 = !DILocation(line: 457, column: 5, scope: !685)
!938 = !DILocation(line: 457, column: 13, scope: !685)
!939 = !DILocation(line: 458, column: 5, scope: !685)
!940 = !DILocation(line: 460, column: 1, scope: !414)
!941 = distinct !DISubprogram(name: "Hacl_Poly1305_32_poly1305_finish", scope: !1, file: !1, line: 462, type: !942, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !22, !22, !21}
!944 = !DILocalVariable(name: "tag", arg: 1, scope: !941, file: !1, line: 462, type: !22)
!945 = !DILocation(line: 0, scope: !941)
!946 = !DILocalVariable(name: "key", arg: 2, scope: !941, file: !1, line: 462, type: !22)
!947 = !DILocalVariable(name: "ctx", arg: 3, scope: !941, file: !1, line: 462, type: !21)
!948 = !DILocalVariable(name: "acc", scope: !941, file: !1, line: 464, type: !21)
!949 = !DILocation(line: 465, column: 21, scope: !941)
!950 = !DILocalVariable(name: "ks", scope: !941, file: !1, line: 465, type: !22)
!951 = !DILocation(line: 466, column: 17, scope: !941)
!952 = !DILocalVariable(name: "f0", scope: !941, file: !1, line: 466, type: !9)
!953 = !DILocation(line: 467, column: 18, scope: !941)
!954 = !DILocalVariable(name: "f13", scope: !941, file: !1, line: 467, type: !9)
!955 = !DILocation(line: 468, column: 18, scope: !941)
!956 = !DILocalVariable(name: "f23", scope: !941, file: !1, line: 468, type: !9)
!957 = !DILocation(line: 469, column: 18, scope: !941)
!958 = !DILocalVariable(name: "f33", scope: !941, file: !1, line: 469, type: !9)
!959 = !DILocation(line: 470, column: 18, scope: !941)
!960 = !DILocalVariable(name: "f40", scope: !941, file: !1, line: 470, type: !9)
!961 = !DILocation(line: 471, column: 20, scope: !941)
!962 = !DILocalVariable(name: "l0", scope: !941, file: !1, line: 471, type: !9)
!963 = !DILocation(line: 472, column: 23, scope: !941)
!964 = !DILocalVariable(name: "tmp00", scope: !941, file: !1, line: 472, type: !9)
!965 = !DILocation(line: 473, column: 21, scope: !941)
!966 = !DILocalVariable(name: "c00", scope: !941, file: !1, line: 473, type: !9)
!967 = !DILocation(line: 474, column: 21, scope: !941)
!968 = !DILocalVariable(name: "l1", scope: !941, file: !1, line: 474, type: !9)
!969 = !DILocation(line: 475, column: 23, scope: !941)
!970 = !DILocalVariable(name: "tmp10", scope: !941, file: !1, line: 475, type: !9)
!971 = !DILocation(line: 476, column: 21, scope: !941)
!972 = !DILocalVariable(name: "c10", scope: !941, file: !1, line: 476, type: !9)
!973 = !DILocation(line: 477, column: 21, scope: !941)
!974 = !DILocalVariable(name: "l2", scope: !941, file: !1, line: 477, type: !9)
!975 = !DILocation(line: 478, column: 23, scope: !941)
!976 = !DILocalVariable(name: "tmp20", scope: !941, file: !1, line: 478, type: !9)
!977 = !DILocation(line: 479, column: 21, scope: !941)
!978 = !DILocalVariable(name: "c20", scope: !941, file: !1, line: 479, type: !9)
!979 = !DILocation(line: 480, column: 21, scope: !941)
!980 = !DILocalVariable(name: "l3", scope: !941, file: !1, line: 480, type: !9)
!981 = !DILocation(line: 481, column: 23, scope: !941)
!982 = !DILocalVariable(name: "tmp30", scope: !941, file: !1, line: 481, type: !9)
!983 = !DILocation(line: 482, column: 21, scope: !941)
!984 = !DILocalVariable(name: "c30", scope: !941, file: !1, line: 482, type: !9)
!985 = !DILocation(line: 483, column: 21, scope: !941)
!986 = !DILocalVariable(name: "l4", scope: !941, file: !1, line: 483, type: !9)
!987 = !DILocation(line: 484, column: 23, scope: !941)
!988 = !DILocalVariable(name: "tmp40", scope: !941, file: !1, line: 484, type: !9)
!989 = !DILocation(line: 485, column: 21, scope: !941)
!990 = !DILocalVariable(name: "c40", scope: !941, file: !1, line: 485, type: !9)
!991 = !DILocation(line: 486, column: 31, scope: !941)
!992 = !DILocation(line: 486, column: 25, scope: !941)
!993 = !DILocalVariable(name: "f010", scope: !941, file: !1, line: 486, type: !9)
!994 = !DILocalVariable(name: "f110", scope: !941, file: !1, line: 487, type: !9)
!995 = !DILocalVariable(name: "f210", scope: !941, file: !1, line: 488, type: !9)
!996 = !DILocalVariable(name: "f310", scope: !941, file: !1, line: 489, type: !9)
!997 = !DILocalVariable(name: "f410", scope: !941, file: !1, line: 490, type: !9)
!998 = !DILocation(line: 491, column: 21, scope: !941)
!999 = !DILocalVariable(name: "l", scope: !941, file: !1, line: 491, type: !9)
!1000 = !DILocation(line: 492, column: 21, scope: !941)
!1001 = !DILocalVariable(name: "tmp0", scope: !941, file: !1, line: 492, type: !9)
!1002 = !DILocation(line: 493, column: 19, scope: !941)
!1003 = !DILocalVariable(name: "c0", scope: !941, file: !1, line: 493, type: !9)
!1004 = !DILocation(line: 494, column: 22, scope: !941)
!1005 = !DILocalVariable(name: "l5", scope: !941, file: !1, line: 494, type: !9)
!1006 = !DILocation(line: 495, column: 22, scope: !941)
!1007 = !DILocalVariable(name: "tmp1", scope: !941, file: !1, line: 495, type: !9)
!1008 = !DILocation(line: 496, column: 20, scope: !941)
!1009 = !DILocalVariable(name: "c1", scope: !941, file: !1, line: 496, type: !9)
!1010 = !DILocation(line: 497, column: 22, scope: !941)
!1011 = !DILocalVariable(name: "l6", scope: !941, file: !1, line: 497, type: !9)
!1012 = !DILocation(line: 498, column: 22, scope: !941)
!1013 = !DILocalVariable(name: "tmp2", scope: !941, file: !1, line: 498, type: !9)
!1014 = !DILocation(line: 499, column: 20, scope: !941)
!1015 = !DILocalVariable(name: "c2", scope: !941, file: !1, line: 499, type: !9)
!1016 = !DILocation(line: 500, column: 22, scope: !941)
!1017 = !DILocalVariable(name: "l7", scope: !941, file: !1, line: 500, type: !9)
!1018 = !DILocation(line: 501, column: 22, scope: !941)
!1019 = !DILocalVariable(name: "tmp3", scope: !941, file: !1, line: 501, type: !9)
!1020 = !DILocation(line: 502, column: 20, scope: !941)
!1021 = !DILocalVariable(name: "c3", scope: !941, file: !1, line: 502, type: !9)
!1022 = !DILocation(line: 503, column: 22, scope: !941)
!1023 = !DILocalVariable(name: "l8", scope: !941, file: !1, line: 503, type: !9)
!1024 = !DILocation(line: 504, column: 22, scope: !941)
!1025 = !DILocalVariable(name: "tmp4", scope: !941, file: !1, line: 504, type: !9)
!1026 = !DILocation(line: 505, column: 20, scope: !941)
!1027 = !DILocalVariable(name: "c4", scope: !941, file: !1, line: 505, type: !9)
!1028 = !DILocation(line: 506, column: 28, scope: !941)
!1029 = !DILocation(line: 506, column: 23, scope: !941)
!1030 = !DILocalVariable(name: "f02", scope: !941, file: !1, line: 506, type: !9)
!1031 = !DILocalVariable(name: "f12", scope: !941, file: !1, line: 507, type: !9)
!1032 = !DILocalVariable(name: "f22", scope: !941, file: !1, line: 508, type: !9)
!1033 = !DILocalVariable(name: "f32", scope: !941, file: !1, line: 509, type: !9)
!1034 = !DILocalVariable(name: "f42", scope: !941, file: !1, line: 510, type: !9)
!1035 = !DILocalVariable(name: "mh", scope: !941, file: !1, line: 511, type: !9)
!1036 = !DILocalVariable(name: "ml", scope: !941, file: !1, line: 512, type: !9)
!1037 = !DILocation(line: 513, column: 19, scope: !941)
!1038 = !DILocalVariable(name: "mask", scope: !941, file: !1, line: 513, type: !9)
!1039 = !DILocation(line: 514, column: 27, scope: !941)
!1040 = !DILocation(line: 514, column: 25, scope: !941)
!1041 = !DILocalVariable(name: "mask1", scope: !941, file: !1, line: 514, type: !9)
!1042 = !DILocation(line: 515, column: 28, scope: !941)
!1043 = !DILocation(line: 515, column: 26, scope: !941)
!1044 = !DILocalVariable(name: "mask2", scope: !941, file: !1, line: 515, type: !9)
!1045 = !DILocation(line: 516, column: 28, scope: !941)
!1046 = !DILocation(line: 516, column: 26, scope: !941)
!1047 = !DILocalVariable(name: "mask3", scope: !941, file: !1, line: 516, type: !9)
!1048 = !DILocation(line: 517, column: 30, scope: !941)
!1049 = !DILocation(line: 517, column: 29, scope: !941)
!1050 = !DILocation(line: 517, column: 28, scope: !941)
!1051 = !DILocation(line: 517, column: 26, scope: !941)
!1052 = !DILocalVariable(name: "mask4", scope: !941, file: !1, line: 517, type: !9)
!1053 = !DILocation(line: 518, column: 23, scope: !941)
!1054 = !DILocalVariable(name: "ph", scope: !941, file: !1, line: 518, type: !9)
!1055 = !DILocation(line: 519, column: 23, scope: !941)
!1056 = !DILocalVariable(name: "pl", scope: !941, file: !1, line: 519, type: !9)
!1057 = !DILocation(line: 520, column: 21, scope: !941)
!1058 = !DILocalVariable(name: "o0", scope: !941, file: !1, line: 520, type: !9)
!1059 = !DILocation(line: 521, column: 21, scope: !941)
!1060 = !DILocalVariable(name: "o1", scope: !941, file: !1, line: 521, type: !9)
!1061 = !DILocation(line: 522, column: 21, scope: !941)
!1062 = !DILocalVariable(name: "o2", scope: !941, file: !1, line: 522, type: !9)
!1063 = !DILocation(line: 523, column: 21, scope: !941)
!1064 = !DILocalVariable(name: "o3", scope: !941, file: !1, line: 523, type: !9)
!1065 = !DILocation(line: 524, column: 21, scope: !941)
!1066 = !DILocalVariable(name: "o4", scope: !941, file: !1, line: 524, type: !9)
!1067 = !DILocalVariable(name: "f011", scope: !941, file: !1, line: 525, type: !9)
!1068 = !DILocalVariable(name: "f111", scope: !941, file: !1, line: 526, type: !9)
!1069 = !DILocalVariable(name: "f211", scope: !941, file: !1, line: 527, type: !9)
!1070 = !DILocalVariable(name: "f311", scope: !941, file: !1, line: 528, type: !9)
!1071 = !DILocalVariable(name: "f411", scope: !941, file: !1, line: 529, type: !9)
!1072 = !DILocation(line: 530, column: 3, scope: !941)
!1073 = !DILocation(line: 530, column: 11, scope: !941)
!1074 = !DILocation(line: 531, column: 3, scope: !941)
!1075 = !DILocation(line: 531, column: 11, scope: !941)
!1076 = !DILocation(line: 532, column: 3, scope: !941)
!1077 = !DILocation(line: 532, column: 11, scope: !941)
!1078 = !DILocation(line: 533, column: 3, scope: !941)
!1079 = !DILocation(line: 533, column: 11, scope: !941)
!1080 = !DILocation(line: 534, column: 3, scope: !941)
!1081 = !DILocation(line: 534, column: 11, scope: !941)
!1082 = !DILocation(line: 535, column: 18, scope: !941)
!1083 = !DILocalVariable(name: "f00", scope: !941, file: !1, line: 535, type: !9)
!1084 = !DILocation(line: 536, column: 17, scope: !941)
!1085 = !DILocalVariable(name: "f1", scope: !941, file: !1, line: 536, type: !9)
!1086 = !DILocation(line: 537, column: 17, scope: !941)
!1087 = !DILocalVariable(name: "f2", scope: !941, file: !1, line: 537, type: !9)
!1088 = !DILocation(line: 538, column: 17, scope: !941)
!1089 = !DILocalVariable(name: "f3", scope: !941, file: !1, line: 538, type: !9)
!1090 = !DILocation(line: 539, column: 17, scope: !941)
!1091 = !DILocalVariable(name: "f4", scope: !941, file: !1, line: 539, type: !9)
!1092 = !DILocalVariable(name: "f01", scope: !941, file: !1, line: 540, type: !9)
!1093 = !DILocalVariable(name: "f112", scope: !941, file: !1, line: 541, type: !9)
!1094 = !DILocalVariable(name: "f212", scope: !941, file: !1, line: 542, type: !9)
!1095 = !DILocalVariable(name: "f312", scope: !941, file: !1, line: 543, type: !9)
!1096 = !DILocalVariable(name: "f41", scope: !941, file: !1, line: 544, type: !9)
!1097 = !DILocation(line: 545, column: 29, scope: !941)
!1098 = !DILocation(line: 545, column: 22, scope: !941)
!1099 = !DILocation(line: 545, column: 54, scope: !941)
!1100 = !DILocation(line: 545, column: 47, scope: !941)
!1101 = !DILocalVariable(name: "lo", scope: !941, file: !1, line: 545, type: !9)
!1102 = !DILocation(line: 546, column: 23, scope: !941)
!1103 = !DILocation(line: 546, column: 47, scope: !941)
!1104 = !DILocation(line: 546, column: 40, scope: !941)
!1105 = !DILocation(line: 546, column: 71, scope: !941)
!1106 = !DILocation(line: 546, column: 65, scope: !941)
!1107 = !DILocalVariable(name: "hi", scope: !941, file: !1, line: 546, type: !9)
!1108 = !DILocalVariable(name: "f10", scope: !941, file: !1, line: 547, type: !9)
!1109 = !DILocalVariable(name: "f11", scope: !941, file: !1, line: 548, type: !9)
!1110 = !DILocation(line: 549, column: 17, scope: !941)
!1111 = !DILocalVariable(name: "u0", scope: !941, file: !1, line: 549, type: !9)
!1112 = !DILocalVariable(name: "lo0", scope: !941, file: !1, line: 550, type: !9)
!1113 = !DILocation(line: 551, column: 16, scope: !941)
!1114 = !DILocalVariable(name: "u", scope: !941, file: !1, line: 551, type: !9)
!1115 = !DILocalVariable(name: "hi0", scope: !941, file: !1, line: 552, type: !9)
!1116 = !DILocalVariable(name: "f20", scope: !941, file: !1, line: 553, type: !9)
!1117 = !DILocalVariable(name: "f21", scope: !941, file: !1, line: 554, type: !9)
!1118 = !DILocation(line: 555, column: 21, scope: !941)
!1119 = !DILocalVariable(name: "r0", scope: !941, file: !1, line: 555, type: !9)
!1120 = !DILocation(line: 556, column: 21, scope: !941)
!1121 = !DILocalVariable(name: "r1", scope: !941, file: !1, line: 556, type: !9)
!1122 = !DILocation(line: 557, column: 27, scope: !941)
!1123 = !DILocation(line: 557, column: 41, scope: !941)
!1124 = !DILocation(line: 557, column: 48, scope: !941)
!1125 = !DILocation(line: 557, column: 34, scope: !941)
!1126 = !DILocation(line: 557, column: 20, scope: !941)
!1127 = !DILocation(line: 557, column: 57, scope: !941)
!1128 = !DILocalVariable(name: "c", scope: !941, file: !1, line: 557, type: !9)
!1129 = !DILocation(line: 558, column: 21, scope: !941)
!1130 = !DILocalVariable(name: "r11", scope: !941, file: !1, line: 558, type: !9)
!1131 = !DILocalVariable(name: "f30", scope: !941, file: !1, line: 559, type: !9)
!1132 = !DILocalVariable(name: "f31", scope: !941, file: !1, line: 560, type: !9)
!1133 = !DILocation(line: 561, column: 3, scope: !941)
!1134 = !DILocation(line: 562, column: 3, scope: !941)
!1135 = !DILocation(line: 563, column: 1, scope: !941)
!1136 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !1137, file: !1137, line: 35, type: !1138, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1137 = !DIFile(filename: "../hacl-star/dist/karamel/krmllib/dist/minimal/FStar_UInt_8_16_32_64.h", directory: "/home/luwei/bech-back/HACL/Poly1305")
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!9, !9, !9}
!1140 = !DILocalVariable(name: "a", arg: 1, scope: !1136, file: !1137, line: 35, type: !9)
!1141 = !DILocation(line: 0, scope: !1136)
!1142 = !DILocalVariable(name: "b", arg: 2, scope: !1136, file: !1137, line: 35, type: !9)
!1143 = !DILocation(line: 37, column: 18, scope: !1136)
!1144 = !DILocalVariable(name: "x", scope: !1136, file: !1137, line: 37, type: !9)
!1145 = !DILocation(line: 38, column: 22, scope: !1136)
!1146 = !DILocation(line: 38, column: 25, scope: !1136)
!1147 = !DILocalVariable(name: "minus_x", scope: !1136, file: !1137, line: 38, type: !9)
!1148 = !DILocation(line: 39, column: 29, scope: !1136)
!1149 = !DILocalVariable(name: "x_or_minus_x", scope: !1136, file: !1137, line: 39, type: !9)
!1150 = !DILocation(line: 40, column: 31, scope: !1136)
!1151 = !DILocalVariable(name: "xnx", scope: !1136, file: !1137, line: 40, type: !9)
!1152 = !DILocation(line: 41, column: 14, scope: !1136)
!1153 = !DILocation(line: 41, column: 3, scope: !1136)
!1154 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !1137, file: !1137, line: 44, type: !1138, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1155 = !DILocalVariable(name: "a", arg: 1, scope: !1154, file: !1137, line: 44, type: !9)
!1156 = !DILocation(line: 0, scope: !1154)
!1157 = !DILocalVariable(name: "b", arg: 2, scope: !1154, file: !1137, line: 44, type: !9)
!1158 = !DILocalVariable(name: "x", scope: !1154, file: !1137, line: 46, type: !9)
!1159 = !DILocalVariable(name: "y", scope: !1154, file: !1137, line: 47, type: !9)
!1160 = !DILocation(line: 48, column: 24, scope: !1154)
!1161 = !DILocalVariable(name: "x_xor_y", scope: !1154, file: !1137, line: 48, type: !9)
!1162 = !DILocation(line: 49, column: 24, scope: !1154)
!1163 = !DILocalVariable(name: "x_sub_y", scope: !1154, file: !1137, line: 49, type: !9)
!1164 = !DILocation(line: 50, column: 36, scope: !1154)
!1165 = !DILocalVariable(name: "x_sub_y_xor_y", scope: !1154, file: !1137, line: 50, type: !9)
!1166 = !DILocation(line: 51, column: 24, scope: !1154)
!1167 = !DILocalVariable(name: "q", scope: !1154, file: !1137, line: 51, type: !9)
!1168 = !DILocation(line: 52, column: 24, scope: !1154)
!1169 = !DILocalVariable(name: "x_xor_q", scope: !1154, file: !1137, line: 52, type: !9)
!1170 = !DILocation(line: 53, column: 31, scope: !1154)
!1171 = !DILocalVariable(name: "x_xor_q_", scope: !1154, file: !1137, line: 53, type: !9)
!1172 = !DILocation(line: 54, column: 19, scope: !1154)
!1173 = !DILocation(line: 54, column: 3, scope: !1154)
!1174 = distinct !DISubprogram(name: "store64", scope: !151, file: !151, line: 186, type: !1175, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !22, !9}
!1177 = !DILocalVariable(name: "b", arg: 1, scope: !1174, file: !151, line: 186, type: !22)
!1178 = !DILocation(line: 0, scope: !1174)
!1179 = !DILocalVariable(name: "i", arg: 2, scope: !1174, file: !151, line: 186, type: !9)
!1180 = !DILocation(line: 186, column: 49, scope: !1174)
!1181 = !DILocation(line: 187, column: 3, scope: !1174)
!1182 = !DILocation(line: 188, column: 1, scope: !1174)
!1183 = distinct !DISubprogram(name: "Hacl_Poly1305_32_poly1305_mac", scope: !1, file: !1, line: 565, type: !1184, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !22, !4, !22, !22}
!1186 = !DILocalVariable(name: "tag", arg: 1, scope: !1183, file: !1, line: 565, type: !22)
!1187 = !DILocation(line: 0, scope: !1183)
!1188 = !DILocalVariable(name: "len", arg: 2, scope: !1183, file: !1, line: 565, type: !4)
!1189 = !DILocalVariable(name: "text", arg: 3, scope: !1183, file: !1, line: 565, type: !22)
!1190 = !DILocalVariable(name: "key", arg: 4, scope: !1183, file: !1, line: 565, type: !22)
!1191 = !DILocalVariable(name: "ctx", scope: !1183, file: !1, line: 567, type: !1192)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1600, elements: !1193)
!1193 = !{!1194}
!1194 = !DISubrange(count: 25)
!1195 = !DILocation(line: 567, column: 12, scope: !1183)
!1196 = !DILocation(line: 568, column: 34, scope: !1183)
!1197 = !DILocation(line: 568, column: 3, scope: !1183)
!1198 = !DILocation(line: 569, column: 36, scope: !1183)
!1199 = !DILocation(line: 569, column: 3, scope: !1183)
!1200 = !DILocation(line: 570, column: 46, scope: !1183)
!1201 = !DILocation(line: 570, column: 3, scope: !1183)
!1202 = !DILocation(line: 571, column: 1, scope: !1183)
!1203 = distinct !DISubprogram(name: "Hacl_Poly1305_32_poly1305_mac_wrapper", scope: !13, file: !13, line: 3, type: !1184, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !2)
!1204 = !DILocalVariable(name: "tag", arg: 1, scope: !1203, file: !13, line: 3, type: !22)
!1205 = !DILocation(line: 0, scope: !1203)
!1206 = !DILocalVariable(name: "len", arg: 2, scope: !1203, file: !13, line: 3, type: !4)
!1207 = !DILocalVariable(name: "text", arg: 3, scope: !1203, file: !13, line: 3, type: !22)
!1208 = !DILocalVariable(name: "key", arg: 4, scope: !1203, file: !13, line: 3, type: !22)
!1209 = !DILocation(line: 5, column: 13, scope: !1203)
!1210 = !DILocation(line: 5, column: 3, scope: !1203)
!1211 = !DILocation(line: 6, column: 13, scope: !1203)
!1212 = !DILocation(line: 6, column: 3, scope: !1203)
!1213 = !DILocation(line: 7, column: 13, scope: !1203)
!1214 = !DILocation(line: 7, column: 3, scope: !1203)
!1215 = !DILocation(line: 8, column: 13, scope: !1203)
!1216 = !DILocation(line: 8, column: 3, scope: !1203)
!1217 = !DILocation(line: 11, column: 13, scope: !1203)
!1218 = !DILocation(line: 11, column: 3, scope: !1203)
!1219 = !DILocation(line: 12, column: 13, scope: !1203)
!1220 = !DILocation(line: 12, column: 3, scope: !1203)
!1221 = !DILocation(line: 14, column: 3, scope: !1203)
!1222 = !DILocation(line: 15, column: 1, scope: !1203)
!1223 = distinct !DISubprogram(name: "Hacl_Poly1305_32_poly1305_mac_wrapper_t", scope: !13, file: !13, line: 25, type: !1224, scopeLine: 25, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !2)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null}
!1226 = !DILocation(line: 26, column: 17, scope: !1223)
!1227 = !DILocalVariable(name: "tag", scope: !1223, file: !13, line: 26, type: !22)
!1228 = !DILocation(line: 0, scope: !1223)
!1229 = !DILocation(line: 27, column: 18, scope: !1223)
!1230 = !DILocalVariable(name: "text", scope: !1223, file: !13, line: 27, type: !22)
!1231 = !DILocation(line: 28, column: 18, scope: !1223)
!1232 = !DILocalVariable(name: "key", scope: !1223, file: !13, line: 28, type: !22)
!1233 = !DILocation(line: 29, column: 17, scope: !1223)
!1234 = !DILocalVariable(name: "len", scope: !1223, file: !13, line: 29, type: !23)
!1235 = !DILocation(line: 32, column: 36, scope: !1223)
!1236 = !DILocation(line: 32, column: 2, scope: !1223)
!1237 = !DILocation(line: 33, column: 1, scope: !1223)
