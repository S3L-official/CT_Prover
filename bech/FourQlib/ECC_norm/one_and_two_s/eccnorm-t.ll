; ModuleID = 'eccnorm-k.ll'
source_filename = "eccnorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.point_extproj_precomp = type { [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]] }
%struct.point_precomp = type { [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]] }
%struct.CurveStruct = type { i32, i32, [2 x i64], [4 x i64], [4 x i64], [4 x i64], [4 x i64], [4 x i64], i32 }
%struct.point_affine = type { [2 x [4 x i32]], [2 x [4 x i32]] }
%struct.point_extproj = type { [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]] }
%struct.smack_value = type { i8* }

@mask_7fff = dso_local constant i32 2147483647, align 4, !dbg !0, !psr.id !48
@prime1271_0 = dso_local constant i32 -1, align 4, !dbg !39, !psr.id !49
@Montgomery_rprime = internal global [4 x i64] [i64 -2220303270273074903, i64 -2927769972551918349, i64 -4835729184385541343, i64 -925767909802655628], align 16, !dbg !43, !psr.id !50
@Montgomery_Rprime = internal global [4 x i64] [i64 -4026859660358986207, i64 1674958264924321917, i64 4395996777173939740, i64 1871306157521363], align 16, !dbg !46, !psr.id !51

; Function Attrs: noinline nounwind uwtable
define dso_local void @table_lookup_1x8([1 x %struct.point_extproj_precomp]* %0, %struct.point_extproj_precomp* %1, i32 %2, i32 %3) #0 !dbg !56 {
  %5 = alloca [1 x %struct.point_extproj_precomp], align 16, !psr.id !71
  %6 = alloca [1 x %struct.point_extproj_precomp], align 16, !psr.id !72
  call void @llvm.dbg.value(metadata [1 x %struct.point_extproj_precomp]* %0, metadata !73, metadata !DIExpression()), !dbg !74, !psr.id !75
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %1, metadata !76, metadata !DIExpression()), !dbg !74, !psr.id !77
  call void @llvm.dbg.value(metadata i32 %2, metadata !78, metadata !DIExpression()), !dbg !74, !psr.id !79
  call void @llvm.dbg.value(metadata i32 %3, metadata !80, metadata !DIExpression()), !dbg !74, !psr.id !81
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj_precomp]* %5, metadata !82, metadata !DIExpression()), !dbg !83, !psr.id !84
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj_precomp]* %6, metadata !85, metadata !DIExpression()), !dbg !86, !psr.id !87
  %7 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 0, !dbg !88, !psr.id !89
  %8 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %7, i64 0, i64 0, !dbg !88, !psr.id !90
  %9 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %8, i32 0, i32 0, !dbg !88, !psr.id !91
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !88, !psr.id !92
  %11 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !88, !psr.id !93
  %12 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %11, i32 0, i32 0, !dbg !88, !psr.id !94
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %12, i64 0, i64 0, !dbg !88, !psr.id !95
  call void @fp2copy1271([4 x i32]* %10, [4 x i32]* %13), !dbg !88, !psr.id !96
  %14 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 0, !dbg !88, !psr.id !97
  %15 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %14, i64 0, i64 0, !dbg !88, !psr.id !98
  %16 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %15, i32 0, i32 1, !dbg !88, !psr.id !99
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %16, i64 0, i64 0, !dbg !88, !psr.id !100
  %18 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !88, !psr.id !101
  %19 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %18, i32 0, i32 1, !dbg !88, !psr.id !102
  %20 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %19, i64 0, i64 0, !dbg !88, !psr.id !103
  call void @fp2copy1271([4 x i32]* %17, [4 x i32]* %20), !dbg !88, !psr.id !104
  %21 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 0, !dbg !88, !psr.id !105
  %22 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %21, i64 0, i64 0, !dbg !88, !psr.id !106
  %23 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %22, i32 0, i32 2, !dbg !88, !psr.id !107
  %24 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %23, i64 0, i64 0, !dbg !88, !psr.id !108
  %25 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !88, !psr.id !109
  %26 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %25, i32 0, i32 2, !dbg !88, !psr.id !110
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !88, !psr.id !111
  call void @fp2copy1271([4 x i32]* %24, [4 x i32]* %27), !dbg !88, !psr.id !112
  %28 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 0, !dbg !88, !psr.id !113
  %29 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %28, i64 0, i64 0, !dbg !88, !psr.id !114
  %30 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %29, i32 0, i32 3, !dbg !88, !psr.id !115
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %30, i64 0, i64 0, !dbg !88, !psr.id !116
  %32 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !88, !psr.id !117
  %33 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %32, i32 0, i32 3, !dbg !88, !psr.id !118
  %34 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %33, i64 0, i64 0, !dbg !88, !psr.id !119
  call void @fp2copy1271([4 x i32]* %31, [4 x i32]* %34), !dbg !88, !psr.id !120
  call void @llvm.dbg.value(metadata i32 1, metadata !121, metadata !DIExpression()), !dbg !74, !psr.id !122
  br label %35, !dbg !123, !psr.id !125

35:                                               ; preds = %287, %4
  %.02 = phi i32 [ %2, %4 ], [ %38, %287 ], !psr.id !126
  %.01 = phi i32 [ 1, %4 ], [ %288, %287 ], !dbg !127, !psr.id !128
  call void @llvm.dbg.value(metadata i32 %.01, metadata !121, metadata !DIExpression()), !dbg !74, !psr.id !129
  call void @llvm.dbg.value(metadata i32 %.02, metadata !78, metadata !DIExpression()), !dbg !74, !psr.id !130
  %36 = icmp ult i32 %.01, 8, !dbg !131, !psr.id !133
  br i1 %36, label %37, label %289, !dbg !134, !psr.id !135

37:                                               ; preds = %35
  %38 = add i32 %.02, -1, !dbg !136, !psr.id !138
  call void @llvm.dbg.value(metadata i32 %38, metadata !78, metadata !DIExpression()), !dbg !74, !psr.id !139
  %39 = call i32 @is_digit_nonzero_ct(i32 %38), !dbg !140, !psr.id !141
  %40 = sub i32 %39, 1, !dbg !142, !psr.id !143
  call void @llvm.dbg.value(metadata i32 %40, metadata !144, metadata !DIExpression()), !dbg !74, !psr.id !145
  %41 = zext i32 %.01 to i64, !dbg !146, !psr.id !147
  %42 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 %41, !dbg !146, !psr.id !148
  %43 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %42, i64 0, i64 0, !dbg !146, !psr.id !149
  %44 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %43, i32 0, i32 0, !dbg !146, !psr.id !150
  %45 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %44, i64 0, i64 0, !dbg !146, !psr.id !151
  %46 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !146, !psr.id !152
  %47 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %46, i32 0, i32 0, !dbg !146, !psr.id !153
  %48 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %47, i64 0, i64 0, !dbg !146, !psr.id !154
  call void @fp2copy1271([4 x i32]* %45, [4 x i32]* %48), !dbg !146, !psr.id !155
  %49 = zext i32 %.01 to i64, !dbg !146, !psr.id !156
  %50 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 %49, !dbg !146, !psr.id !157
  %51 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %50, i64 0, i64 0, !dbg !146, !psr.id !158
  %52 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %51, i32 0, i32 1, !dbg !146, !psr.id !159
  %53 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %52, i64 0, i64 0, !dbg !146, !psr.id !160
  %54 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !146, !psr.id !161
  %55 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %54, i32 0, i32 1, !dbg !146, !psr.id !162
  %56 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %55, i64 0, i64 0, !dbg !146, !psr.id !163
  call void @fp2copy1271([4 x i32]* %53, [4 x i32]* %56), !dbg !146, !psr.id !164
  %57 = zext i32 %.01 to i64, !dbg !146, !psr.id !165
  %58 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 %57, !dbg !146, !psr.id !166
  %59 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %58, i64 0, i64 0, !dbg !146, !psr.id !167
  %60 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %59, i32 0, i32 2, !dbg !146, !psr.id !168
  %61 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %60, i64 0, i64 0, !dbg !146, !psr.id !169
  %62 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !146, !psr.id !170
  %63 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %62, i32 0, i32 2, !dbg !146, !psr.id !171
  %64 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %63, i64 0, i64 0, !dbg !146, !psr.id !172
  call void @fp2copy1271([4 x i32]* %61, [4 x i32]* %64), !dbg !146, !psr.id !173
  %65 = zext i32 %.01 to i64, !dbg !146, !psr.id !174
  %66 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 %65, !dbg !146, !psr.id !175
  %67 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %66, i64 0, i64 0, !dbg !146, !psr.id !176
  %68 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %67, i32 0, i32 3, !dbg !146, !psr.id !177
  %69 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %68, i64 0, i64 0, !dbg !146, !psr.id !178
  %70 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !146, !psr.id !179
  %71 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %70, i32 0, i32 3, !dbg !146, !psr.id !180
  %72 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %71, i64 0, i64 0, !dbg !146, !psr.id !181
  call void @fp2copy1271([4 x i32]* %69, [4 x i32]* %72), !dbg !146, !psr.id !182
  call void @llvm.dbg.value(metadata i32 0, metadata !183, metadata !DIExpression()), !dbg !74, !psr.id !184
  br label %73, !dbg !185, !psr.id !187

73:                                               ; preds = %284, %37
  %.0 = phi i32 [ 0, %37 ], [ %285, %284 ], !dbg !188, !psr.id !189
  call void @llvm.dbg.value(metadata i32 %.0, metadata !183, metadata !DIExpression()), !dbg !74, !psr.id !190
  %74 = icmp ult i32 %.0, 4, !dbg !191, !psr.id !193
  br i1 %74, label %75, label %286, !dbg !194, !psr.id !195

75:                                               ; preds = %73
  %76 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !196, !psr.id !198
  %77 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %76, i32 0, i32 0, !dbg !196, !psr.id !199
  %78 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %77, i64 0, i64 0, !dbg !200, !psr.id !201
  %79 = zext i32 %.0 to i64, !dbg !200, !psr.id !202
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %78, i64 0, i64 %79, !dbg !200, !psr.id !203
  %81 = load i32, i32* %80, align 4, !dbg !200, !psr.id !204
  %82 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !205, !psr.id !206
  %83 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %82, i32 0, i32 0, !dbg !205, !psr.id !207
  %84 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %83, i64 0, i64 0, !dbg !208, !psr.id !209
  %85 = zext i32 %.0 to i64, !dbg !208, !psr.id !210
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %84, i64 0, i64 %85, !dbg !208, !psr.id !211
  %87 = load i32, i32* %86, align 4, !dbg !208, !psr.id !212
  %88 = xor i32 %81, %87, !dbg !213, !psr.id !214
  %89 = and i32 %40, %88, !dbg !215, !psr.id !216
  %90 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !217, !psr.id !218
  %91 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %90, i32 0, i32 0, !dbg !217, !psr.id !219
  %92 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %91, i64 0, i64 0, !dbg !220, !psr.id !221
  %93 = zext i32 %.0 to i64, !dbg !220, !psr.id !222
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %92, i64 0, i64 %93, !dbg !220, !psr.id !223
  %95 = load i32, i32* %94, align 4, !dbg !220, !psr.id !224
  %96 = xor i32 %89, %95, !dbg !225, !psr.id !226
  %97 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !227, !psr.id !228
  %98 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %97, i32 0, i32 0, !dbg !227, !psr.id !229
  %99 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %98, i64 0, i64 0, !dbg !230, !psr.id !231
  %100 = zext i32 %.0 to i64, !dbg !230, !psr.id !232
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %99, i64 0, i64 %100, !dbg !230, !psr.id !233
  store i32 %96, i32* %101, align 4, !dbg !234, !psr.id !235
  %102 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !236, !psr.id !237
  %103 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %102, i32 0, i32 0, !dbg !236, !psr.id !238
  %104 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %103, i64 0, i64 1, !dbg !239, !psr.id !240
  %105 = zext i32 %.0 to i64, !dbg !239, !psr.id !241
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %104, i64 0, i64 %105, !dbg !239, !psr.id !242
  %107 = load i32, i32* %106, align 4, !dbg !239, !psr.id !243
  %108 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !244, !psr.id !245
  %109 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %108, i32 0, i32 0, !dbg !244, !psr.id !246
  %110 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %109, i64 0, i64 1, !dbg !247, !psr.id !248
  %111 = zext i32 %.0 to i64, !dbg !247, !psr.id !249
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %110, i64 0, i64 %111, !dbg !247, !psr.id !250
  %113 = load i32, i32* %112, align 4, !dbg !247, !psr.id !251
  %114 = xor i32 %107, %113, !dbg !252, !psr.id !253
  %115 = and i32 %40, %114, !dbg !254, !psr.id !255
  %116 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !256, !psr.id !257
  %117 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %116, i32 0, i32 0, !dbg !256, !psr.id !258
  %118 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %117, i64 0, i64 1, !dbg !259, !psr.id !260
  %119 = zext i32 %.0 to i64, !dbg !259, !psr.id !261
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %118, i64 0, i64 %119, !dbg !259, !psr.id !262
  %121 = load i32, i32* %120, align 4, !dbg !259, !psr.id !263
  %122 = xor i32 %115, %121, !dbg !264, !psr.id !265
  %123 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !266, !psr.id !267
  %124 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %123, i32 0, i32 0, !dbg !266, !psr.id !268
  %125 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %124, i64 0, i64 1, !dbg !269, !psr.id !270
  %126 = zext i32 %.0 to i64, !dbg !269, !psr.id !271
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %125, i64 0, i64 %126, !dbg !269, !psr.id !272
  store i32 %122, i32* %127, align 4, !dbg !273, !psr.id !274
  %128 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !275, !psr.id !276
  %129 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %128, i32 0, i32 1, !dbg !275, !psr.id !277
  %130 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %129, i64 0, i64 0, !dbg !278, !psr.id !279
  %131 = zext i32 %.0 to i64, !dbg !278, !psr.id !280
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %130, i64 0, i64 %131, !dbg !278, !psr.id !281
  %133 = load i32, i32* %132, align 4, !dbg !278, !psr.id !282
  %134 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !283, !psr.id !284
  %135 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %134, i32 0, i32 1, !dbg !283, !psr.id !285
  %136 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %135, i64 0, i64 0, !dbg !286, !psr.id !287
  %137 = zext i32 %.0 to i64, !dbg !286, !psr.id !288
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %136, i64 0, i64 %137, !dbg !286, !psr.id !289
  %139 = load i32, i32* %138, align 4, !dbg !286, !psr.id !290
  %140 = xor i32 %133, %139, !dbg !291, !psr.id !292
  %141 = and i32 %40, %140, !dbg !293, !psr.id !294
  %142 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !295, !psr.id !296
  %143 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %142, i32 0, i32 1, !dbg !295, !psr.id !297
  %144 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %143, i64 0, i64 0, !dbg !298, !psr.id !299
  %145 = zext i32 %.0 to i64, !dbg !298, !psr.id !300
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %144, i64 0, i64 %145, !dbg !298, !psr.id !301
  %147 = load i32, i32* %146, align 4, !dbg !298, !psr.id !302
  %148 = xor i32 %141, %147, !dbg !303, !psr.id !304
  %149 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !305, !psr.id !306
  %150 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %149, i32 0, i32 1, !dbg !305, !psr.id !307
  %151 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %150, i64 0, i64 0, !dbg !308, !psr.id !309
  %152 = zext i32 %.0 to i64, !dbg !308, !psr.id !310
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %151, i64 0, i64 %152, !dbg !308, !psr.id !311
  store i32 %148, i32* %153, align 4, !dbg !312, !psr.id !313
  %154 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !314, !psr.id !315
  %155 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %154, i32 0, i32 1, !dbg !314, !psr.id !316
  %156 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %155, i64 0, i64 1, !dbg !317, !psr.id !318
  %157 = zext i32 %.0 to i64, !dbg !317, !psr.id !319
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %156, i64 0, i64 %157, !dbg !317, !psr.id !320
  %159 = load i32, i32* %158, align 4, !dbg !317, !psr.id !321
  %160 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !322, !psr.id !323
  %161 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %160, i32 0, i32 1, !dbg !322, !psr.id !324
  %162 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %161, i64 0, i64 1, !dbg !325, !psr.id !326
  %163 = zext i32 %.0 to i64, !dbg !325, !psr.id !327
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %162, i64 0, i64 %163, !dbg !325, !psr.id !328
  %165 = load i32, i32* %164, align 4, !dbg !325, !psr.id !329
  %166 = xor i32 %159, %165, !dbg !330, !psr.id !331
  %167 = and i32 %40, %166, !dbg !332, !psr.id !333
  %168 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !334, !psr.id !335
  %169 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %168, i32 0, i32 1, !dbg !334, !psr.id !336
  %170 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %169, i64 0, i64 1, !dbg !337, !psr.id !338
  %171 = zext i32 %.0 to i64, !dbg !337, !psr.id !339
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %170, i64 0, i64 %171, !dbg !337, !psr.id !340
  %173 = load i32, i32* %172, align 4, !dbg !337, !psr.id !341
  %174 = xor i32 %167, %173, !dbg !342, !psr.id !343
  %175 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !344, !psr.id !345
  %176 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %175, i32 0, i32 1, !dbg !344, !psr.id !346
  %177 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %176, i64 0, i64 1, !dbg !347, !psr.id !348
  %178 = zext i32 %.0 to i64, !dbg !347, !psr.id !349
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %177, i64 0, i64 %178, !dbg !347, !psr.id !350
  store i32 %174, i32* %179, align 4, !dbg !351, !psr.id !352
  %180 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !353, !psr.id !354
  %181 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %180, i32 0, i32 2, !dbg !353, !psr.id !355
  %182 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %181, i64 0, i64 0, !dbg !356, !psr.id !357
  %183 = zext i32 %.0 to i64, !dbg !356, !psr.id !358
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %182, i64 0, i64 %183, !dbg !356, !psr.id !359
  %185 = load i32, i32* %184, align 4, !dbg !356, !psr.id !360
  %186 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !361, !psr.id !362
  %187 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %186, i32 0, i32 2, !dbg !361, !psr.id !363
  %188 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %187, i64 0, i64 0, !dbg !364, !psr.id !365
  %189 = zext i32 %.0 to i64, !dbg !364, !psr.id !366
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %188, i64 0, i64 %189, !dbg !364, !psr.id !367
  %191 = load i32, i32* %190, align 4, !dbg !364, !psr.id !368
  %192 = xor i32 %185, %191, !dbg !369, !psr.id !370
  %193 = and i32 %40, %192, !dbg !371, !psr.id !372
  %194 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !373, !psr.id !374
  %195 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %194, i32 0, i32 2, !dbg !373, !psr.id !375
  %196 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %195, i64 0, i64 0, !dbg !376, !psr.id !377
  %197 = zext i32 %.0 to i64, !dbg !376, !psr.id !378
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %196, i64 0, i64 %197, !dbg !376, !psr.id !379
  %199 = load i32, i32* %198, align 4, !dbg !376, !psr.id !380
  %200 = xor i32 %193, %199, !dbg !381, !psr.id !382
  %201 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !383, !psr.id !384
  %202 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %201, i32 0, i32 2, !dbg !383, !psr.id !385
  %203 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %202, i64 0, i64 0, !dbg !386, !psr.id !387
  %204 = zext i32 %.0 to i64, !dbg !386, !psr.id !388
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %203, i64 0, i64 %204, !dbg !386, !psr.id !389
  store i32 %200, i32* %205, align 4, !dbg !390, !psr.id !391
  %206 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !392, !psr.id !393
  %207 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %206, i32 0, i32 2, !dbg !392, !psr.id !394
  %208 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %207, i64 0, i64 1, !dbg !395, !psr.id !396
  %209 = zext i32 %.0 to i64, !dbg !395, !psr.id !397
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %208, i64 0, i64 %209, !dbg !395, !psr.id !398
  %211 = load i32, i32* %210, align 4, !dbg !395, !psr.id !399
  %212 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !400, !psr.id !401
  %213 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %212, i32 0, i32 2, !dbg !400, !psr.id !402
  %214 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %213, i64 0, i64 1, !dbg !403, !psr.id !404
  %215 = zext i32 %.0 to i64, !dbg !403, !psr.id !405
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %214, i64 0, i64 %215, !dbg !403, !psr.id !406
  %217 = load i32, i32* %216, align 4, !dbg !403, !psr.id !407
  %218 = xor i32 %211, %217, !dbg !408, !psr.id !409
  %219 = and i32 %40, %218, !dbg !410, !psr.id !411
  %220 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !412, !psr.id !413
  %221 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %220, i32 0, i32 2, !dbg !412, !psr.id !414
  %222 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %221, i64 0, i64 1, !dbg !415, !psr.id !416
  %223 = zext i32 %.0 to i64, !dbg !415, !psr.id !417
  %224 = getelementptr inbounds [4 x i32], [4 x i32]* %222, i64 0, i64 %223, !dbg !415, !psr.id !418
  %225 = load i32, i32* %224, align 4, !dbg !415, !psr.id !419
  %226 = xor i32 %219, %225, !dbg !420, !psr.id !421
  %227 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !422, !psr.id !423
  %228 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %227, i32 0, i32 2, !dbg !422, !psr.id !424
  %229 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %228, i64 0, i64 1, !dbg !425, !psr.id !426
  %230 = zext i32 %.0 to i64, !dbg !425, !psr.id !427
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %229, i64 0, i64 %230, !dbg !425, !psr.id !428
  store i32 %226, i32* %231, align 4, !dbg !429, !psr.id !430
  %232 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !431, !psr.id !432
  %233 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %232, i32 0, i32 3, !dbg !431, !psr.id !433
  %234 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %233, i64 0, i64 0, !dbg !434, !psr.id !435
  %235 = zext i32 %.0 to i64, !dbg !434, !psr.id !436
  %236 = getelementptr inbounds [4 x i32], [4 x i32]* %234, i64 0, i64 %235, !dbg !434, !psr.id !437
  %237 = load i32, i32* %236, align 4, !dbg !434, !psr.id !438
  %238 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !439, !psr.id !440
  %239 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %238, i32 0, i32 3, !dbg !439, !psr.id !441
  %240 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %239, i64 0, i64 0, !dbg !442, !psr.id !443
  %241 = zext i32 %.0 to i64, !dbg !442, !psr.id !444
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %240, i64 0, i64 %241, !dbg !442, !psr.id !445
  %243 = load i32, i32* %242, align 4, !dbg !442, !psr.id !446
  %244 = xor i32 %237, %243, !dbg !447, !psr.id !448
  %245 = and i32 %40, %244, !dbg !449, !psr.id !450
  %246 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !451, !psr.id !452
  %247 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %246, i32 0, i32 3, !dbg !451, !psr.id !453
  %248 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %247, i64 0, i64 0, !dbg !454, !psr.id !455
  %249 = zext i32 %.0 to i64, !dbg !454, !psr.id !456
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %248, i64 0, i64 %249, !dbg !454, !psr.id !457
  %251 = load i32, i32* %250, align 4, !dbg !454, !psr.id !458
  %252 = xor i32 %245, %251, !dbg !459, !psr.id !460
  %253 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !461, !psr.id !462
  %254 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %253, i32 0, i32 3, !dbg !461, !psr.id !463
  %255 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %254, i64 0, i64 0, !dbg !464, !psr.id !465
  %256 = zext i32 %.0 to i64, !dbg !464, !psr.id !466
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %255, i64 0, i64 %256, !dbg !464, !psr.id !467
  store i32 %252, i32* %257, align 4, !dbg !468, !psr.id !469
  %258 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !470, !psr.id !471
  %259 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %258, i32 0, i32 3, !dbg !470, !psr.id !472
  %260 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %259, i64 0, i64 1, !dbg !473, !psr.id !474
  %261 = zext i32 %.0 to i64, !dbg !473, !psr.id !475
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* %260, i64 0, i64 %261, !dbg !473, !psr.id !476
  %263 = load i32, i32* %262, align 4, !dbg !473, !psr.id !477
  %264 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !478, !psr.id !479
  %265 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %264, i32 0, i32 3, !dbg !478, !psr.id !480
  %266 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %265, i64 0, i64 1, !dbg !481, !psr.id !482
  %267 = zext i32 %.0 to i64, !dbg !481, !psr.id !483
  %268 = getelementptr inbounds [4 x i32], [4 x i32]* %266, i64 0, i64 %267, !dbg !481, !psr.id !484
  %269 = load i32, i32* %268, align 4, !dbg !481, !psr.id !485
  %270 = xor i32 %263, %269, !dbg !486, !psr.id !487
  %271 = and i32 %40, %270, !dbg !488, !psr.id !489
  %272 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !490, !psr.id !491
  %273 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %272, i32 0, i32 3, !dbg !490, !psr.id !492
  %274 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %273, i64 0, i64 1, !dbg !493, !psr.id !494
  %275 = zext i32 %.0 to i64, !dbg !493, !psr.id !495
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %274, i64 0, i64 %275, !dbg !493, !psr.id !496
  %277 = load i32, i32* %276, align 4, !dbg !493, !psr.id !497
  %278 = xor i32 %271, %277, !dbg !498, !psr.id !499
  %279 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !500, !psr.id !501
  %280 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %279, i32 0, i32 3, !dbg !500, !psr.id !502
  %281 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %280, i64 0, i64 1, !dbg !503, !psr.id !504
  %282 = zext i32 %.0 to i64, !dbg !503, !psr.id !505
  %283 = getelementptr inbounds [4 x i32], [4 x i32]* %281, i64 0, i64 %282, !dbg !503, !psr.id !506
  store i32 %278, i32* %283, align 4, !dbg !507, !psr.id !508
  br label %284, !dbg !509, !psr.id !510

284:                                              ; preds = %75
  %285 = add i32 %.0, 1, !dbg !511, !psr.id !512
  call void @llvm.dbg.value(metadata i32 %285, metadata !183, metadata !DIExpression()), !dbg !74, !psr.id !513
  br label %73, !dbg !514, !llvm.loop !515, !psr.id !518

286:                                              ; preds = %73
  br label %287, !dbg !519, !psr.id !520

287:                                              ; preds = %286
  %288 = add i32 %.01, 1, !dbg !521, !psr.id !522
  call void @llvm.dbg.value(metadata i32 %288, metadata !121, metadata !DIExpression()), !dbg !74, !psr.id !523
  br label %35, !dbg !524, !llvm.loop !525, !psr.id !527

289:                                              ; preds = %35
  %290 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !528, !psr.id !529
  %291 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %290, i32 0, i32 3, !dbg !528, !psr.id !530
  %292 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %291, i64 0, i64 0, !dbg !531, !psr.id !532
  %293 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !533, !psr.id !534
  %294 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %293, i32 0, i32 3, !dbg !533, !psr.id !535
  %295 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %294, i64 0, i64 0, !dbg !536, !psr.id !537
  call void @fp2copy1271([4 x i32]* %292, [4 x i32]* %295), !dbg !538, !psr.id !539
  %296 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !540, !psr.id !541
  %297 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %296, i32 0, i32 0, !dbg !540, !psr.id !542
  %298 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %297, i64 0, i64 0, !dbg !543, !psr.id !544
  %299 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !545, !psr.id !546
  %300 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %299, i32 0, i32 1, !dbg !545, !psr.id !547
  %301 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %300, i64 0, i64 0, !dbg !548, !psr.id !549
  call void @fp2copy1271([4 x i32]* %298, [4 x i32]* %301), !dbg !550, !psr.id !551
  %302 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !552, !psr.id !553
  %303 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %302, i32 0, i32 1, !dbg !552, !psr.id !554
  %304 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %303, i64 0, i64 0, !dbg !555, !psr.id !556
  %305 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !557, !psr.id !558
  %306 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %305, i32 0, i32 0, !dbg !557, !psr.id !559
  %307 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %306, i64 0, i64 0, !dbg !560, !psr.id !561
  call void @fp2copy1271([4 x i32]* %304, [4 x i32]* %307), !dbg !562, !psr.id !563
  %308 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !564, !psr.id !565
  %309 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %308, i32 0, i32 3, !dbg !564, !psr.id !566
  %310 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %309, i64 0, i64 0, !dbg !567, !psr.id !568
  %311 = getelementptr inbounds [4 x i32], [4 x i32]* %310, i64 0, i64 0, !dbg !567, !psr.id !569
  call void @fpneg1271(i32* %311), !dbg !570, !psr.id !571
  %312 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !572, !psr.id !573
  %313 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %312, i32 0, i32 3, !dbg !572, !psr.id !574
  %314 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %313, i64 0, i64 1, !dbg !575, !psr.id !576
  %315 = getelementptr inbounds [4 x i32], [4 x i32]* %314, i64 0, i64 0, !dbg !575, !psr.id !577
  call void @fpneg1271(i32* %315), !dbg !578, !psr.id !579
  call void @llvm.dbg.value(metadata i32 0, metadata !183, metadata !DIExpression()), !dbg !74, !psr.id !580
  br label %316, !dbg !581, !psr.id !583

316:                                              ; preds = %475, %289
  %.1 = phi i32 [ 0, %289 ], [ %476, %475 ], !dbg !584, !psr.id !585
  call void @llvm.dbg.value(metadata i32 %.1, metadata !183, metadata !DIExpression()), !dbg !74, !psr.id !586
  %317 = icmp ult i32 %.1, 4, !dbg !587, !psr.id !589
  br i1 %317, label %318, label %477, !dbg !590, !psr.id !591

318:                                              ; preds = %316
  %319 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !592, !psr.id !594
  %320 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %319, i32 0, i32 0, !dbg !592, !psr.id !595
  %321 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %320, i64 0, i64 0, !dbg !596, !psr.id !597
  %322 = zext i32 %.1 to i64, !dbg !596, !psr.id !598
  %323 = getelementptr inbounds [4 x i32], [4 x i32]* %321, i64 0, i64 %322, !dbg !596, !psr.id !599
  %324 = load i32, i32* %323, align 4, !dbg !596, !psr.id !600
  %325 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !601, !psr.id !602
  %326 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %325, i32 0, i32 0, !dbg !601, !psr.id !603
  %327 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %326, i64 0, i64 0, !dbg !604, !psr.id !605
  %328 = zext i32 %.1 to i64, !dbg !604, !psr.id !606
  %329 = getelementptr inbounds [4 x i32], [4 x i32]* %327, i64 0, i64 %328, !dbg !604, !psr.id !607
  %330 = load i32, i32* %329, align 4, !dbg !604, !psr.id !608
  %331 = xor i32 %324, %330, !dbg !609, !psr.id !610
  %332 = and i32 %3, %331, !dbg !611, !psr.id !612
  %333 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !613, !psr.id !614
  %334 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %333, i32 0, i32 0, !dbg !613, !psr.id !615
  %335 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %334, i64 0, i64 0, !dbg !616, !psr.id !617
  %336 = zext i32 %.1 to i64, !dbg !616, !psr.id !618
  %337 = getelementptr inbounds [4 x i32], [4 x i32]* %335, i64 0, i64 %336, !dbg !616, !psr.id !619
  %338 = load i32, i32* %337, align 4, !dbg !616, !psr.id !620
  %339 = xor i32 %332, %338, !dbg !621, !psr.id !622
  %340 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !623, !psr.id !624
  %341 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %340, i32 0, i32 0, !dbg !623, !psr.id !625
  %342 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %341, i64 0, i64 0, !dbg !626, !psr.id !627
  %343 = zext i32 %.1 to i64, !dbg !626, !psr.id !628
  %344 = getelementptr inbounds [4 x i32], [4 x i32]* %342, i64 0, i64 %343, !dbg !626, !psr.id !629
  store i32 %339, i32* %344, align 4, !dbg !630, !psr.id !631
  %345 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !632, !psr.id !633
  %346 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %345, i32 0, i32 0, !dbg !632, !psr.id !634
  %347 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %346, i64 0, i64 1, !dbg !635, !psr.id !636
  %348 = zext i32 %.1 to i64, !dbg !635, !psr.id !637
  %349 = getelementptr inbounds [4 x i32], [4 x i32]* %347, i64 0, i64 %348, !dbg !635, !psr.id !638
  %350 = load i32, i32* %349, align 4, !dbg !635, !psr.id !639
  %351 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !640, !psr.id !641
  %352 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %351, i32 0, i32 0, !dbg !640, !psr.id !642
  %353 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %352, i64 0, i64 1, !dbg !643, !psr.id !644
  %354 = zext i32 %.1 to i64, !dbg !643, !psr.id !645
  %355 = getelementptr inbounds [4 x i32], [4 x i32]* %353, i64 0, i64 %354, !dbg !643, !psr.id !646
  %356 = load i32, i32* %355, align 4, !dbg !643, !psr.id !647
  %357 = xor i32 %350, %356, !dbg !648, !psr.id !649
  %358 = and i32 %3, %357, !dbg !650, !psr.id !651
  %359 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !652, !psr.id !653
  %360 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %359, i32 0, i32 0, !dbg !652, !psr.id !654
  %361 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %360, i64 0, i64 1, !dbg !655, !psr.id !656
  %362 = zext i32 %.1 to i64, !dbg !655, !psr.id !657
  %363 = getelementptr inbounds [4 x i32], [4 x i32]* %361, i64 0, i64 %362, !dbg !655, !psr.id !658
  %364 = load i32, i32* %363, align 4, !dbg !655, !psr.id !659
  %365 = xor i32 %358, %364, !dbg !660, !psr.id !661
  %366 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !662, !psr.id !663
  %367 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %366, i32 0, i32 0, !dbg !662, !psr.id !664
  %368 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %367, i64 0, i64 1, !dbg !665, !psr.id !666
  %369 = zext i32 %.1 to i64, !dbg !665, !psr.id !667
  %370 = getelementptr inbounds [4 x i32], [4 x i32]* %368, i64 0, i64 %369, !dbg !665, !psr.id !668
  store i32 %365, i32* %370, align 4, !dbg !669, !psr.id !670
  %371 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !671, !psr.id !672
  %372 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %371, i32 0, i32 1, !dbg !671, !psr.id !673
  %373 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %372, i64 0, i64 0, !dbg !674, !psr.id !675
  %374 = zext i32 %.1 to i64, !dbg !674, !psr.id !676
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %373, i64 0, i64 %374, !dbg !674, !psr.id !677
  %376 = load i32, i32* %375, align 4, !dbg !674, !psr.id !678
  %377 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !679, !psr.id !680
  %378 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %377, i32 0, i32 1, !dbg !679, !psr.id !681
  %379 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %378, i64 0, i64 0, !dbg !682, !psr.id !683
  %380 = zext i32 %.1 to i64, !dbg !682, !psr.id !684
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %379, i64 0, i64 %380, !dbg !682, !psr.id !685
  %382 = load i32, i32* %381, align 4, !dbg !682, !psr.id !686
  %383 = xor i32 %376, %382, !dbg !687, !psr.id !688
  %384 = and i32 %3, %383, !dbg !689, !psr.id !690
  %385 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !691, !psr.id !692
  %386 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %385, i32 0, i32 1, !dbg !691, !psr.id !693
  %387 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %386, i64 0, i64 0, !dbg !694, !psr.id !695
  %388 = zext i32 %.1 to i64, !dbg !694, !psr.id !696
  %389 = getelementptr inbounds [4 x i32], [4 x i32]* %387, i64 0, i64 %388, !dbg !694, !psr.id !697
  %390 = load i32, i32* %389, align 4, !dbg !694, !psr.id !698
  %391 = xor i32 %384, %390, !dbg !699, !psr.id !700
  %392 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !701, !psr.id !702
  %393 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %392, i32 0, i32 1, !dbg !701, !psr.id !703
  %394 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %393, i64 0, i64 0, !dbg !704, !psr.id !705
  %395 = zext i32 %.1 to i64, !dbg !704, !psr.id !706
  %396 = getelementptr inbounds [4 x i32], [4 x i32]* %394, i64 0, i64 %395, !dbg !704, !psr.id !707
  store i32 %391, i32* %396, align 4, !dbg !708, !psr.id !709
  %397 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !710, !psr.id !711
  %398 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %397, i32 0, i32 1, !dbg !710, !psr.id !712
  %399 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %398, i64 0, i64 1, !dbg !713, !psr.id !714
  %400 = zext i32 %.1 to i64, !dbg !713, !psr.id !715
  %401 = getelementptr inbounds [4 x i32], [4 x i32]* %399, i64 0, i64 %400, !dbg !713, !psr.id !716
  %402 = load i32, i32* %401, align 4, !dbg !713, !psr.id !717
  %403 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !718, !psr.id !719
  %404 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %403, i32 0, i32 1, !dbg !718, !psr.id !720
  %405 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %404, i64 0, i64 1, !dbg !721, !psr.id !722
  %406 = zext i32 %.1 to i64, !dbg !721, !psr.id !723
  %407 = getelementptr inbounds [4 x i32], [4 x i32]* %405, i64 0, i64 %406, !dbg !721, !psr.id !724
  %408 = load i32, i32* %407, align 4, !dbg !721, !psr.id !725
  %409 = xor i32 %402, %408, !dbg !726, !psr.id !727
  %410 = and i32 %3, %409, !dbg !728, !psr.id !729
  %411 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !730, !psr.id !731
  %412 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %411, i32 0, i32 1, !dbg !730, !psr.id !732
  %413 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %412, i64 0, i64 1, !dbg !733, !psr.id !734
  %414 = zext i32 %.1 to i64, !dbg !733, !psr.id !735
  %415 = getelementptr inbounds [4 x i32], [4 x i32]* %413, i64 0, i64 %414, !dbg !733, !psr.id !736
  %416 = load i32, i32* %415, align 4, !dbg !733, !psr.id !737
  %417 = xor i32 %410, %416, !dbg !738, !psr.id !739
  %418 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !740, !psr.id !741
  %419 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %418, i32 0, i32 1, !dbg !740, !psr.id !742
  %420 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %419, i64 0, i64 1, !dbg !743, !psr.id !744
  %421 = zext i32 %.1 to i64, !dbg !743, !psr.id !745
  %422 = getelementptr inbounds [4 x i32], [4 x i32]* %420, i64 0, i64 %421, !dbg !743, !psr.id !746
  store i32 %417, i32* %422, align 4, !dbg !747, !psr.id !748
  %423 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !749, !psr.id !750
  %424 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %423, i32 0, i32 3, !dbg !749, !psr.id !751
  %425 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %424, i64 0, i64 0, !dbg !752, !psr.id !753
  %426 = zext i32 %.1 to i64, !dbg !752, !psr.id !754
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %425, i64 0, i64 %426, !dbg !752, !psr.id !755
  %428 = load i32, i32* %427, align 4, !dbg !752, !psr.id !756
  %429 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !757, !psr.id !758
  %430 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %429, i32 0, i32 3, !dbg !757, !psr.id !759
  %431 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %430, i64 0, i64 0, !dbg !760, !psr.id !761
  %432 = zext i32 %.1 to i64, !dbg !760, !psr.id !762
  %433 = getelementptr inbounds [4 x i32], [4 x i32]* %431, i64 0, i64 %432, !dbg !760, !psr.id !763
  %434 = load i32, i32* %433, align 4, !dbg !760, !psr.id !764
  %435 = xor i32 %428, %434, !dbg !765, !psr.id !766
  %436 = and i32 %3, %435, !dbg !767, !psr.id !768
  %437 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !769, !psr.id !770
  %438 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %437, i32 0, i32 3, !dbg !769, !psr.id !771
  %439 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %438, i64 0, i64 0, !dbg !772, !psr.id !773
  %440 = zext i32 %.1 to i64, !dbg !772, !psr.id !774
  %441 = getelementptr inbounds [4 x i32], [4 x i32]* %439, i64 0, i64 %440, !dbg !772, !psr.id !775
  %442 = load i32, i32* %441, align 4, !dbg !772, !psr.id !776
  %443 = xor i32 %436, %442, !dbg !777, !psr.id !778
  %444 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !779, !psr.id !780
  %445 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %444, i32 0, i32 3, !dbg !779, !psr.id !781
  %446 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %445, i64 0, i64 0, !dbg !782, !psr.id !783
  %447 = zext i32 %.1 to i64, !dbg !782, !psr.id !784
  %448 = getelementptr inbounds [4 x i32], [4 x i32]* %446, i64 0, i64 %447, !dbg !782, !psr.id !785
  store i32 %443, i32* %448, align 4, !dbg !786, !psr.id !787
  %449 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !788, !psr.id !789
  %450 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %449, i32 0, i32 3, !dbg !788, !psr.id !790
  %451 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %450, i64 0, i64 1, !dbg !791, !psr.id !792
  %452 = zext i32 %.1 to i64, !dbg !791, !psr.id !793
  %453 = getelementptr inbounds [4 x i32], [4 x i32]* %451, i64 0, i64 %452, !dbg !791, !psr.id !794
  %454 = load i32, i32* %453, align 4, !dbg !791, !psr.id !795
  %455 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !796, !psr.id !797
  %456 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %455, i32 0, i32 3, !dbg !796, !psr.id !798
  %457 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %456, i64 0, i64 1, !dbg !799, !psr.id !800
  %458 = zext i32 %.1 to i64, !dbg !799, !psr.id !801
  %459 = getelementptr inbounds [4 x i32], [4 x i32]* %457, i64 0, i64 %458, !dbg !799, !psr.id !802
  %460 = load i32, i32* %459, align 4, !dbg !799, !psr.id !803
  %461 = xor i32 %454, %460, !dbg !804, !psr.id !805
  %462 = and i32 %3, %461, !dbg !806, !psr.id !807
  %463 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !808, !psr.id !809
  %464 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %463, i32 0, i32 3, !dbg !808, !psr.id !810
  %465 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %464, i64 0, i64 1, !dbg !811, !psr.id !812
  %466 = zext i32 %.1 to i64, !dbg !811, !psr.id !813
  %467 = getelementptr inbounds [4 x i32], [4 x i32]* %465, i64 0, i64 %466, !dbg !811, !psr.id !814
  %468 = load i32, i32* %467, align 4, !dbg !811, !psr.id !815
  %469 = xor i32 %462, %468, !dbg !816, !psr.id !817
  %470 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !818, !psr.id !819
  %471 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %470, i32 0, i32 3, !dbg !818, !psr.id !820
  %472 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %471, i64 0, i64 1, !dbg !821, !psr.id !822
  %473 = zext i32 %.1 to i64, !dbg !821, !psr.id !823
  %474 = getelementptr inbounds [4 x i32], [4 x i32]* %472, i64 0, i64 %473, !dbg !821, !psr.id !824
  store i32 %469, i32* %474, align 4, !dbg !825, !psr.id !826
  br label %475, !dbg !827, !psr.id !828

475:                                              ; preds = %318
  %476 = add i32 %.1, 1, !dbg !829, !psr.id !830
  call void @llvm.dbg.value(metadata i32 %476, metadata !183, metadata !DIExpression()), !dbg !74, !psr.id !831
  br label %316, !dbg !832, !llvm.loop !833, !psr.id !835

477:                                              ; preds = %316
  %478 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !836, !psr.id !837
  %479 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %478, i32 0, i32 0, !dbg !836, !psr.id !838
  %480 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %479, i64 0, i64 0, !dbg !836, !psr.id !839
  %481 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 0, !dbg !836, !psr.id !840
  %482 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %481, i64 0, i64 0, !dbg !836, !psr.id !841
  call void @fp2copy1271([4 x i32]* %480, [4 x i32]* %482), !dbg !836, !psr.id !842
  %483 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !836, !psr.id !843
  %484 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %483, i32 0, i32 1, !dbg !836, !psr.id !844
  %485 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %484, i64 0, i64 0, !dbg !836, !psr.id !845
  %486 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 1, !dbg !836, !psr.id !846
  %487 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %486, i64 0, i64 0, !dbg !836, !psr.id !847
  call void @fp2copy1271([4 x i32]* %485, [4 x i32]* %487), !dbg !836, !psr.id !848
  %488 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !836, !psr.id !849
  %489 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %488, i32 0, i32 2, !dbg !836, !psr.id !850
  %490 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %489, i64 0, i64 0, !dbg !836, !psr.id !851
  %491 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 2, !dbg !836, !psr.id !852
  %492 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %491, i64 0, i64 0, !dbg !836, !psr.id !853
  call void @fp2copy1271([4 x i32]* %490, [4 x i32]* %492), !dbg !836, !psr.id !854
  %493 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !836, !psr.id !855
  %494 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %493, i32 0, i32 3, !dbg !836, !psr.id !856
  %495 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %494, i64 0, i64 0, !dbg !836, !psr.id !857
  %496 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !836, !psr.id !858
  %497 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %496, i64 0, i64 0, !dbg !836, !psr.id !859
  call void @fp2copy1271([4 x i32]* %495, [4 x i32]* %497), !dbg !836, !psr.id !860
  ret void, !dbg !861, !psr.id !862
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2copy1271([4 x i32]* %0, [4 x i32]* %1) #0 !dbg !863 {
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !867, metadata !DIExpression()), !dbg !868, !psr.id !869
  call void @llvm.dbg.value(metadata [4 x i32]* %1, metadata !870, metadata !DIExpression()), !dbg !868, !psr.id !871
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !872, !psr.id !873
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !872, !psr.id !874
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, !dbg !875, !psr.id !876
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !875, !psr.id !877
  call void @fpcopy1271(i32* %4, i32* %6), !dbg !878, !psr.id !879
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !880, !psr.id !881
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !880, !psr.id !882
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 1, !dbg !883, !psr.id !884
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0, !dbg !883, !psr.id !885
  call void @fpcopy1271(i32* %8, i32* %10), !dbg !886, !psr.id !887
  ret void, !dbg !888, !psr.id !889
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_digit_nonzero_ct(i32 %0) #0 !dbg !890 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !893, metadata !DIExpression()), !dbg !894, !psr.id !895
  %2 = sub i32 0, %0, !dbg !896, !psr.id !897, !ValueTainted !898
  %3 = or i32 %0, %2, !dbg !899, !psr.id !900, !ValueTainted !898
  %4 = lshr i32 %3, 31, !dbg !901, !psr.id !902, !ValueTainted !898
  ret i32 %4, !dbg !903, !psr.id !904
}

declare dso_local void @fpneg1271(i32*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @table_lookup_fixed_base([1 x %struct.point_precomp]* %0, %struct.point_precomp* %1, i32 %2, i32 %3) #0 !dbg !905 {
  %5 = alloca [1 x %struct.point_precomp], align 16, !psr.id !909
  %6 = alloca [1 x %struct.point_precomp], align 16, !psr.id !910
  call void @llvm.dbg.value(metadata [1 x %struct.point_precomp]* %0, metadata !911, metadata !DIExpression()), !dbg !912, !psr.id !913
  call void @llvm.dbg.value(metadata %struct.point_precomp* %1, metadata !914, metadata !DIExpression()), !dbg !912, !psr.id !915
  call void @llvm.dbg.value(metadata i32 %2, metadata !916, metadata !DIExpression()), !dbg !912, !psr.id !917
  call void @llvm.dbg.value(metadata i32 %3, metadata !918, metadata !DIExpression()), !dbg !912, !psr.id !919
  call void @llvm.dbg.declare(metadata [1 x %struct.point_precomp]* %5, metadata !920, metadata !DIExpression()), !dbg !921, !psr.id !922
  call void @llvm.dbg.declare(metadata [1 x %struct.point_precomp]* %6, metadata !923, metadata !DIExpression()), !dbg !924, !psr.id !925
  %7 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 0, !dbg !926, !psr.id !927
  %8 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %7, i64 0, i64 0, !dbg !926, !psr.id !928
  %9 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %8, i32 0, i32 0, !dbg !926, !psr.id !929
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !926, !psr.id !930
  %11 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !926, !psr.id !931
  %12 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %11, i32 0, i32 0, !dbg !926, !psr.id !932
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %12, i64 0, i64 0, !dbg !926, !psr.id !933
  call void @fp2copy1271([4 x i32]* %10, [4 x i32]* %13), !dbg !926, !psr.id !934
  %14 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 0, !dbg !926, !psr.id !935
  %15 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %14, i64 0, i64 0, !dbg !926, !psr.id !936
  %16 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %15, i32 0, i32 1, !dbg !926, !psr.id !937
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %16, i64 0, i64 0, !dbg !926, !psr.id !938
  %18 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !926, !psr.id !939
  %19 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %18, i32 0, i32 1, !dbg !926, !psr.id !940
  %20 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %19, i64 0, i64 0, !dbg !926, !psr.id !941
  call void @fp2copy1271([4 x i32]* %17, [4 x i32]* %20), !dbg !926, !psr.id !942
  %21 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 0, !dbg !926, !psr.id !943
  %22 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %21, i64 0, i64 0, !dbg !926, !psr.id !944
  %23 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %22, i32 0, i32 2, !dbg !926, !psr.id !945
  %24 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %23, i64 0, i64 0, !dbg !926, !psr.id !946
  %25 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !926, !psr.id !947
  %26 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %25, i32 0, i32 2, !dbg !926, !psr.id !948
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !926, !psr.id !949
  call void @fp2copy1271([4 x i32]* %24, [4 x i32]* %27), !dbg !926, !psr.id !950
  call void @llvm.dbg.value(metadata i32 1, metadata !951, metadata !DIExpression()), !dbg !912, !psr.id !952
  br label %28, !dbg !953, !psr.id !955

28:                                               ; preds = %220, %4
  %.02 = phi i32 [ %2, %4 ], [ %31, %220 ], !psr.id !956
  %.01 = phi i32 [ 1, %4 ], [ %221, %220 ], !dbg !957, !psr.id !958
  call void @llvm.dbg.value(metadata i32 %.01, metadata !951, metadata !DIExpression()), !dbg !912, !psr.id !959
  call void @llvm.dbg.value(metadata i32 %.02, metadata !916, metadata !DIExpression()), !dbg !912, !psr.id !960
  %29 = icmp ult i32 %.01, 16, !dbg !961, !psr.id !963
  br i1 %29, label %30, label %222, !dbg !964, !psr.id !965

30:                                               ; preds = %28
  %31 = add i32 %.02, -1, !dbg !966, !psr.id !968
  call void @llvm.dbg.value(metadata i32 %31, metadata !916, metadata !DIExpression()), !dbg !912, !psr.id !969
  %32 = call i32 @is_digit_nonzero_ct(i32 %31), !dbg !970, !psr.id !971
  %33 = sub i32 %32, 1, !dbg !972, !psr.id !973
  call void @llvm.dbg.value(metadata i32 %33, metadata !974, metadata !DIExpression()), !dbg !912, !psr.id !975
  %34 = zext i32 %.01 to i64, !dbg !976, !psr.id !977
  %35 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %34, !dbg !976, !psr.id !978
  %36 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %35, i64 0, i64 0, !dbg !976, !psr.id !979
  %37 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %36, i32 0, i32 0, !dbg !976, !psr.id !980
  %38 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %37, i64 0, i64 0, !dbg !976, !psr.id !981
  %39 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !976, !psr.id !982
  %40 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %39, i32 0, i32 0, !dbg !976, !psr.id !983
  %41 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %40, i64 0, i64 0, !dbg !976, !psr.id !984
  call void @fp2copy1271([4 x i32]* %38, [4 x i32]* %41), !dbg !976, !psr.id !985
  %42 = zext i32 %.01 to i64, !dbg !976, !psr.id !986
  %43 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %42, !dbg !976, !psr.id !987
  %44 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %43, i64 0, i64 0, !dbg !976, !psr.id !988
  %45 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %44, i32 0, i32 1, !dbg !976, !psr.id !989
  %46 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %45, i64 0, i64 0, !dbg !976, !psr.id !990
  %47 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !976, !psr.id !991
  %48 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %47, i32 0, i32 1, !dbg !976, !psr.id !992
  %49 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %48, i64 0, i64 0, !dbg !976, !psr.id !993
  call void @fp2copy1271([4 x i32]* %46, [4 x i32]* %49), !dbg !976, !psr.id !994
  %50 = zext i32 %.01 to i64, !dbg !976, !psr.id !995
  %51 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %50, !dbg !976, !psr.id !996
  %52 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %51, i64 0, i64 0, !dbg !976, !psr.id !997
  %53 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %52, i32 0, i32 2, !dbg !976, !psr.id !998
  %54 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %53, i64 0, i64 0, !dbg !976, !psr.id !999
  %55 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !976, !psr.id !1000
  %56 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %55, i32 0, i32 2, !dbg !976, !psr.id !1001
  %57 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %56, i64 0, i64 0, !dbg !976, !psr.id !1002
  call void @fp2copy1271([4 x i32]* %54, [4 x i32]* %57), !dbg !976, !psr.id !1003
  call void @llvm.dbg.value(metadata i32 0, metadata !1004, metadata !DIExpression()), !dbg !912, !psr.id !1005
  br label %58, !dbg !1006, !psr.id !1008

58:                                               ; preds = %217, %30
  %.0 = phi i32 [ 0, %30 ], [ %218, %217 ], !dbg !1009, !psr.id !1010
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1004, metadata !DIExpression()), !dbg !912, !psr.id !1011
  %59 = icmp ult i32 %.0, 4, !dbg !1012, !psr.id !1014
  br i1 %59, label %60, label %219, !dbg !1015, !psr.id !1016

60:                                               ; preds = %58
  %61 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1017, !psr.id !1019
  %62 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %61, i32 0, i32 0, !dbg !1017, !psr.id !1020
  %63 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %62, i64 0, i64 0, !dbg !1021, !psr.id !1022
  %64 = zext i32 %.0 to i64, !dbg !1021, !psr.id !1023
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i64 0, i64 %64, !dbg !1021, !psr.id !1024
  %66 = load i32, i32* %65, align 4, !dbg !1021, !psr.id !1025
  %67 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1026, !psr.id !1027
  %68 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %67, i32 0, i32 0, !dbg !1026, !psr.id !1028
  %69 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %68, i64 0, i64 0, !dbg !1029, !psr.id !1030
  %70 = zext i32 %.0 to i64, !dbg !1029, !psr.id !1031
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i64 0, i64 %70, !dbg !1029, !psr.id !1032
  %72 = load i32, i32* %71, align 4, !dbg !1029, !psr.id !1033
  %73 = xor i32 %66, %72, !dbg !1034, !psr.id !1035
  %74 = and i32 %33, %73, !dbg !1036, !psr.id !1037
  %75 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1038, !psr.id !1039
  %76 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %75, i32 0, i32 0, !dbg !1038, !psr.id !1040
  %77 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %76, i64 0, i64 0, !dbg !1041, !psr.id !1042
  %78 = zext i32 %.0 to i64, !dbg !1041, !psr.id !1043
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %77, i64 0, i64 %78, !dbg !1041, !psr.id !1044
  %80 = load i32, i32* %79, align 4, !dbg !1041, !psr.id !1045
  %81 = xor i32 %74, %80, !dbg !1046, !psr.id !1047
  %82 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1048, !psr.id !1049
  %83 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %82, i32 0, i32 0, !dbg !1048, !psr.id !1050
  %84 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %83, i64 0, i64 0, !dbg !1051, !psr.id !1052
  %85 = zext i32 %.0 to i64, !dbg !1051, !psr.id !1053
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %84, i64 0, i64 %85, !dbg !1051, !psr.id !1054
  store i32 %81, i32* %86, align 4, !dbg !1055, !psr.id !1056
  %87 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1057, !psr.id !1058
  %88 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %87, i32 0, i32 0, !dbg !1057, !psr.id !1059
  %89 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %88, i64 0, i64 1, !dbg !1060, !psr.id !1061
  %90 = zext i32 %.0 to i64, !dbg !1060, !psr.id !1062
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %89, i64 0, i64 %90, !dbg !1060, !psr.id !1063
  %92 = load i32, i32* %91, align 4, !dbg !1060, !psr.id !1064
  %93 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1065, !psr.id !1066
  %94 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %93, i32 0, i32 0, !dbg !1065, !psr.id !1067
  %95 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %94, i64 0, i64 1, !dbg !1068, !psr.id !1069
  %96 = zext i32 %.0 to i64, !dbg !1068, !psr.id !1070
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %95, i64 0, i64 %96, !dbg !1068, !psr.id !1071
  %98 = load i32, i32* %97, align 4, !dbg !1068, !psr.id !1072
  %99 = xor i32 %92, %98, !dbg !1073, !psr.id !1074
  %100 = and i32 %33, %99, !dbg !1075, !psr.id !1076
  %101 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1077, !psr.id !1078
  %102 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %101, i32 0, i32 0, !dbg !1077, !psr.id !1079
  %103 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %102, i64 0, i64 1, !dbg !1080, !psr.id !1081
  %104 = zext i32 %.0 to i64, !dbg !1080, !psr.id !1082
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %103, i64 0, i64 %104, !dbg !1080, !psr.id !1083
  %106 = load i32, i32* %105, align 4, !dbg !1080, !psr.id !1084
  %107 = xor i32 %100, %106, !dbg !1085, !psr.id !1086
  %108 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1087, !psr.id !1088
  %109 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %108, i32 0, i32 0, !dbg !1087, !psr.id !1089
  %110 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %109, i64 0, i64 1, !dbg !1090, !psr.id !1091
  %111 = zext i32 %.0 to i64, !dbg !1090, !psr.id !1092
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %110, i64 0, i64 %111, !dbg !1090, !psr.id !1093
  store i32 %107, i32* %112, align 4, !dbg !1094, !psr.id !1095
  %113 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1096, !psr.id !1097
  %114 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %113, i32 0, i32 1, !dbg !1096, !psr.id !1098
  %115 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %114, i64 0, i64 0, !dbg !1099, !psr.id !1100
  %116 = zext i32 %.0 to i64, !dbg !1099, !psr.id !1101
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %115, i64 0, i64 %116, !dbg !1099, !psr.id !1102
  %118 = load i32, i32* %117, align 4, !dbg !1099, !psr.id !1103
  %119 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1104, !psr.id !1105
  %120 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %119, i32 0, i32 1, !dbg !1104, !psr.id !1106
  %121 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %120, i64 0, i64 0, !dbg !1107, !psr.id !1108
  %122 = zext i32 %.0 to i64, !dbg !1107, !psr.id !1109
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %121, i64 0, i64 %122, !dbg !1107, !psr.id !1110
  %124 = load i32, i32* %123, align 4, !dbg !1107, !psr.id !1111
  %125 = xor i32 %118, %124, !dbg !1112, !psr.id !1113
  %126 = and i32 %33, %125, !dbg !1114, !psr.id !1115
  %127 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1116, !psr.id !1117
  %128 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %127, i32 0, i32 1, !dbg !1116, !psr.id !1118
  %129 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %128, i64 0, i64 0, !dbg !1119, !psr.id !1120
  %130 = zext i32 %.0 to i64, !dbg !1119, !psr.id !1121
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %129, i64 0, i64 %130, !dbg !1119, !psr.id !1122
  %132 = load i32, i32* %131, align 4, !dbg !1119, !psr.id !1123
  %133 = xor i32 %126, %132, !dbg !1124, !psr.id !1125
  %134 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1126, !psr.id !1127
  %135 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %134, i32 0, i32 1, !dbg !1126, !psr.id !1128
  %136 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %135, i64 0, i64 0, !dbg !1129, !psr.id !1130
  %137 = zext i32 %.0 to i64, !dbg !1129, !psr.id !1131
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %136, i64 0, i64 %137, !dbg !1129, !psr.id !1132
  store i32 %133, i32* %138, align 4, !dbg !1133, !psr.id !1134
  %139 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1135, !psr.id !1136
  %140 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %139, i32 0, i32 1, !dbg !1135, !psr.id !1137
  %141 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %140, i64 0, i64 1, !dbg !1138, !psr.id !1139
  %142 = zext i32 %.0 to i64, !dbg !1138, !psr.id !1140
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %141, i64 0, i64 %142, !dbg !1138, !psr.id !1141
  %144 = load i32, i32* %143, align 4, !dbg !1138, !psr.id !1142
  %145 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1143, !psr.id !1144
  %146 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %145, i32 0, i32 1, !dbg !1143, !psr.id !1145
  %147 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %146, i64 0, i64 1, !dbg !1146, !psr.id !1147
  %148 = zext i32 %.0 to i64, !dbg !1146, !psr.id !1148
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %147, i64 0, i64 %148, !dbg !1146, !psr.id !1149
  %150 = load i32, i32* %149, align 4, !dbg !1146, !psr.id !1150
  %151 = xor i32 %144, %150, !dbg !1151, !psr.id !1152
  %152 = and i32 %33, %151, !dbg !1153, !psr.id !1154
  %153 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1155, !psr.id !1156
  %154 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %153, i32 0, i32 1, !dbg !1155, !psr.id !1157
  %155 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %154, i64 0, i64 1, !dbg !1158, !psr.id !1159
  %156 = zext i32 %.0 to i64, !dbg !1158, !psr.id !1160
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %155, i64 0, i64 %156, !dbg !1158, !psr.id !1161
  %158 = load i32, i32* %157, align 4, !dbg !1158, !psr.id !1162
  %159 = xor i32 %152, %158, !dbg !1163, !psr.id !1164
  %160 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1165, !psr.id !1166
  %161 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %160, i32 0, i32 1, !dbg !1165, !psr.id !1167
  %162 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %161, i64 0, i64 1, !dbg !1168, !psr.id !1169
  %163 = zext i32 %.0 to i64, !dbg !1168, !psr.id !1170
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %162, i64 0, i64 %163, !dbg !1168, !psr.id !1171
  store i32 %159, i32* %164, align 4, !dbg !1172, !psr.id !1173
  %165 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1174, !psr.id !1175
  %166 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %165, i32 0, i32 2, !dbg !1174, !psr.id !1176
  %167 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %166, i64 0, i64 0, !dbg !1177, !psr.id !1178
  %168 = zext i32 %.0 to i64, !dbg !1177, !psr.id !1179
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %167, i64 0, i64 %168, !dbg !1177, !psr.id !1180
  %170 = load i32, i32* %169, align 4, !dbg !1177, !psr.id !1181
  %171 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1182, !psr.id !1183
  %172 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %171, i32 0, i32 2, !dbg !1182, !psr.id !1184
  %173 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %172, i64 0, i64 0, !dbg !1185, !psr.id !1186
  %174 = zext i32 %.0 to i64, !dbg !1185, !psr.id !1187
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %173, i64 0, i64 %174, !dbg !1185, !psr.id !1188
  %176 = load i32, i32* %175, align 4, !dbg !1185, !psr.id !1189
  %177 = xor i32 %170, %176, !dbg !1190, !psr.id !1191
  %178 = and i32 %33, %177, !dbg !1192, !psr.id !1193
  %179 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1194, !psr.id !1195
  %180 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %179, i32 0, i32 2, !dbg !1194, !psr.id !1196
  %181 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %180, i64 0, i64 0, !dbg !1197, !psr.id !1198
  %182 = zext i32 %.0 to i64, !dbg !1197, !psr.id !1199
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %181, i64 0, i64 %182, !dbg !1197, !psr.id !1200
  %184 = load i32, i32* %183, align 4, !dbg !1197, !psr.id !1201
  %185 = xor i32 %178, %184, !dbg !1202, !psr.id !1203
  %186 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1204, !psr.id !1205
  %187 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %186, i32 0, i32 2, !dbg !1204, !psr.id !1206
  %188 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %187, i64 0, i64 0, !dbg !1207, !psr.id !1208
  %189 = zext i32 %.0 to i64, !dbg !1207, !psr.id !1209
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %188, i64 0, i64 %189, !dbg !1207, !psr.id !1210
  store i32 %185, i32* %190, align 4, !dbg !1211, !psr.id !1212
  %191 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1213, !psr.id !1214
  %192 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %191, i32 0, i32 2, !dbg !1213, !psr.id !1215
  %193 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %192, i64 0, i64 1, !dbg !1216, !psr.id !1217
  %194 = zext i32 %.0 to i64, !dbg !1216, !psr.id !1218
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %193, i64 0, i64 %194, !dbg !1216, !psr.id !1219
  %196 = load i32, i32* %195, align 4, !dbg !1216, !psr.id !1220
  %197 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1221, !psr.id !1222
  %198 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %197, i32 0, i32 2, !dbg !1221, !psr.id !1223
  %199 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %198, i64 0, i64 1, !dbg !1224, !psr.id !1225
  %200 = zext i32 %.0 to i64, !dbg !1224, !psr.id !1226
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %199, i64 0, i64 %200, !dbg !1224, !psr.id !1227
  %202 = load i32, i32* %201, align 4, !dbg !1224, !psr.id !1228
  %203 = xor i32 %196, %202, !dbg !1229, !psr.id !1230
  %204 = and i32 %33, %203, !dbg !1231, !psr.id !1232
  %205 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1233, !psr.id !1234
  %206 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %205, i32 0, i32 2, !dbg !1233, !psr.id !1235
  %207 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %206, i64 0, i64 1, !dbg !1236, !psr.id !1237
  %208 = zext i32 %.0 to i64, !dbg !1236, !psr.id !1238
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %207, i64 0, i64 %208, !dbg !1236, !psr.id !1239
  %210 = load i32, i32* %209, align 4, !dbg !1236, !psr.id !1240
  %211 = xor i32 %204, %210, !dbg !1241, !psr.id !1242
  %212 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1243, !psr.id !1244
  %213 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %212, i32 0, i32 2, !dbg !1243, !psr.id !1245
  %214 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %213, i64 0, i64 1, !dbg !1246, !psr.id !1247
  %215 = zext i32 %.0 to i64, !dbg !1246, !psr.id !1248
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %214, i64 0, i64 %215, !dbg !1246, !psr.id !1249
  store i32 %211, i32* %216, align 4, !dbg !1250, !psr.id !1251
  br label %217, !dbg !1252, !psr.id !1253

217:                                              ; preds = %60
  %218 = add i32 %.0, 1, !dbg !1254, !psr.id !1255
  call void @llvm.dbg.value(metadata i32 %218, metadata !1004, metadata !DIExpression()), !dbg !912, !psr.id !1256
  br label %58, !dbg !1257, !llvm.loop !1258, !psr.id !1260

219:                                              ; preds = %58
  br label %220, !dbg !1261, !psr.id !1262

220:                                              ; preds = %219
  %221 = add i32 %.01, 1, !dbg !1263, !psr.id !1264
  call void @llvm.dbg.value(metadata i32 %221, metadata !951, metadata !DIExpression()), !dbg !912, !psr.id !1265
  br label %28, !dbg !1266, !llvm.loop !1267, !psr.id !1269

222:                                              ; preds = %28
  %223 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1270, !psr.id !1271
  %224 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %223, i32 0, i32 2, !dbg !1270, !psr.id !1272
  %225 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %224, i64 0, i64 0, !dbg !1273, !psr.id !1274
  %226 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1275, !psr.id !1276
  %227 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %226, i32 0, i32 2, !dbg !1275, !psr.id !1277
  %228 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %227, i64 0, i64 0, !dbg !1278, !psr.id !1279
  call void @fp2copy1271([4 x i32]* %225, [4 x i32]* %228), !dbg !1280, !psr.id !1281
  %229 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1282, !psr.id !1283
  %230 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %229, i32 0, i32 0, !dbg !1282, !psr.id !1284
  %231 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %230, i64 0, i64 0, !dbg !1285, !psr.id !1286
  %232 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1287, !psr.id !1288
  %233 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %232, i32 0, i32 1, !dbg !1287, !psr.id !1289
  %234 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %233, i64 0, i64 0, !dbg !1290, !psr.id !1291
  call void @fp2copy1271([4 x i32]* %231, [4 x i32]* %234), !dbg !1292, !psr.id !1293
  %235 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1294, !psr.id !1295
  %236 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %235, i32 0, i32 1, !dbg !1294, !psr.id !1296
  %237 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %236, i64 0, i64 0, !dbg !1297, !psr.id !1298
  %238 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1299, !psr.id !1300
  %239 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %238, i32 0, i32 0, !dbg !1299, !psr.id !1301
  %240 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %239, i64 0, i64 0, !dbg !1302, !psr.id !1303
  call void @fp2copy1271([4 x i32]* %237, [4 x i32]* %240), !dbg !1304, !psr.id !1305
  %241 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1306, !psr.id !1307
  %242 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %241, i32 0, i32 2, !dbg !1306, !psr.id !1308
  %243 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %242, i64 0, i64 0, !dbg !1309, !psr.id !1310
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %243, i64 0, i64 0, !dbg !1309, !psr.id !1311
  call void @fpneg1271(i32* %244), !dbg !1312, !psr.id !1313
  %245 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1314, !psr.id !1315
  %246 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %245, i32 0, i32 2, !dbg !1314, !psr.id !1316
  %247 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %246, i64 0, i64 1, !dbg !1317, !psr.id !1318
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %247, i64 0, i64 0, !dbg !1317, !psr.id !1319
  call void @fpneg1271(i32* %248), !dbg !1320, !psr.id !1321
  call void @llvm.dbg.value(metadata i32 0, metadata !1004, metadata !DIExpression()), !dbg !912, !psr.id !1322
  br label %249, !dbg !1323, !psr.id !1325

249:                                              ; preds = %408, %222
  %.1 = phi i32 [ 0, %222 ], [ %409, %408 ], !dbg !1326, !psr.id !1327
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1004, metadata !DIExpression()), !dbg !912, !psr.id !1328
  %250 = icmp ult i32 %.1, 4, !dbg !1329, !psr.id !1331
  br i1 %250, label %251, label %410, !dbg !1332, !psr.id !1333

251:                                              ; preds = %249
  %252 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1334, !psr.id !1336
  %253 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %252, i32 0, i32 0, !dbg !1334, !psr.id !1337
  %254 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %253, i64 0, i64 0, !dbg !1338, !psr.id !1339
  %255 = zext i32 %.1 to i64, !dbg !1338, !psr.id !1340
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %254, i64 0, i64 %255, !dbg !1338, !psr.id !1341
  %257 = load i32, i32* %256, align 4, !dbg !1338, !psr.id !1342
  %258 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1343, !psr.id !1344
  %259 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %258, i32 0, i32 0, !dbg !1343, !psr.id !1345
  %260 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %259, i64 0, i64 0, !dbg !1346, !psr.id !1347
  %261 = zext i32 %.1 to i64, !dbg !1346, !psr.id !1348
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* %260, i64 0, i64 %261, !dbg !1346, !psr.id !1349
  %263 = load i32, i32* %262, align 4, !dbg !1346, !psr.id !1350
  %264 = xor i32 %257, %263, !dbg !1351, !psr.id !1352
  %265 = and i32 %3, %264, !dbg !1353, !psr.id !1354
  %266 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1355, !psr.id !1356
  %267 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %266, i32 0, i32 0, !dbg !1355, !psr.id !1357
  %268 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %267, i64 0, i64 0, !dbg !1358, !psr.id !1359
  %269 = zext i32 %.1 to i64, !dbg !1358, !psr.id !1360
  %270 = getelementptr inbounds [4 x i32], [4 x i32]* %268, i64 0, i64 %269, !dbg !1358, !psr.id !1361
  %271 = load i32, i32* %270, align 4, !dbg !1358, !psr.id !1362
  %272 = xor i32 %265, %271, !dbg !1363, !psr.id !1364
  %273 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1365, !psr.id !1366
  %274 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %273, i32 0, i32 0, !dbg !1365, !psr.id !1367
  %275 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %274, i64 0, i64 0, !dbg !1368, !psr.id !1369
  %276 = zext i32 %.1 to i64, !dbg !1368, !psr.id !1370
  %277 = getelementptr inbounds [4 x i32], [4 x i32]* %275, i64 0, i64 %276, !dbg !1368, !psr.id !1371
  store i32 %272, i32* %277, align 4, !dbg !1372, !psr.id !1373
  %278 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1374, !psr.id !1375
  %279 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %278, i32 0, i32 0, !dbg !1374, !psr.id !1376
  %280 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %279, i64 0, i64 1, !dbg !1377, !psr.id !1378
  %281 = zext i32 %.1 to i64, !dbg !1377, !psr.id !1379
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %280, i64 0, i64 %281, !dbg !1377, !psr.id !1380
  %283 = load i32, i32* %282, align 4, !dbg !1377, !psr.id !1381
  %284 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1382, !psr.id !1383
  %285 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %284, i32 0, i32 0, !dbg !1382, !psr.id !1384
  %286 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %285, i64 0, i64 1, !dbg !1385, !psr.id !1386
  %287 = zext i32 %.1 to i64, !dbg !1385, !psr.id !1387
  %288 = getelementptr inbounds [4 x i32], [4 x i32]* %286, i64 0, i64 %287, !dbg !1385, !psr.id !1388
  %289 = load i32, i32* %288, align 4, !dbg !1385, !psr.id !1389
  %290 = xor i32 %283, %289, !dbg !1390, !psr.id !1391
  %291 = and i32 %3, %290, !dbg !1392, !psr.id !1393
  %292 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1394, !psr.id !1395
  %293 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %292, i32 0, i32 0, !dbg !1394, !psr.id !1396
  %294 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %293, i64 0, i64 1, !dbg !1397, !psr.id !1398
  %295 = zext i32 %.1 to i64, !dbg !1397, !psr.id !1399
  %296 = getelementptr inbounds [4 x i32], [4 x i32]* %294, i64 0, i64 %295, !dbg !1397, !psr.id !1400
  %297 = load i32, i32* %296, align 4, !dbg !1397, !psr.id !1401
  %298 = xor i32 %291, %297, !dbg !1402, !psr.id !1403
  %299 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1404, !psr.id !1405
  %300 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %299, i32 0, i32 0, !dbg !1404, !psr.id !1406
  %301 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %300, i64 0, i64 1, !dbg !1407, !psr.id !1408
  %302 = zext i32 %.1 to i64, !dbg !1407, !psr.id !1409
  %303 = getelementptr inbounds [4 x i32], [4 x i32]* %301, i64 0, i64 %302, !dbg !1407, !psr.id !1410
  store i32 %298, i32* %303, align 4, !dbg !1411, !psr.id !1412
  %304 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1413, !psr.id !1414
  %305 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %304, i32 0, i32 1, !dbg !1413, !psr.id !1415
  %306 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %305, i64 0, i64 0, !dbg !1416, !psr.id !1417
  %307 = zext i32 %.1 to i64, !dbg !1416, !psr.id !1418
  %308 = getelementptr inbounds [4 x i32], [4 x i32]* %306, i64 0, i64 %307, !dbg !1416, !psr.id !1419
  %309 = load i32, i32* %308, align 4, !dbg !1416, !psr.id !1420
  %310 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1421, !psr.id !1422
  %311 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %310, i32 0, i32 1, !dbg !1421, !psr.id !1423
  %312 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %311, i64 0, i64 0, !dbg !1424, !psr.id !1425
  %313 = zext i32 %.1 to i64, !dbg !1424, !psr.id !1426
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %312, i64 0, i64 %313, !dbg !1424, !psr.id !1427
  %315 = load i32, i32* %314, align 4, !dbg !1424, !psr.id !1428
  %316 = xor i32 %309, %315, !dbg !1429, !psr.id !1430
  %317 = and i32 %3, %316, !dbg !1431, !psr.id !1432
  %318 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1433, !psr.id !1434
  %319 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %318, i32 0, i32 1, !dbg !1433, !psr.id !1435
  %320 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %319, i64 0, i64 0, !dbg !1436, !psr.id !1437
  %321 = zext i32 %.1 to i64, !dbg !1436, !psr.id !1438
  %322 = getelementptr inbounds [4 x i32], [4 x i32]* %320, i64 0, i64 %321, !dbg !1436, !psr.id !1439
  %323 = load i32, i32* %322, align 4, !dbg !1436, !psr.id !1440
  %324 = xor i32 %317, %323, !dbg !1441, !psr.id !1442
  %325 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1443, !psr.id !1444
  %326 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %325, i32 0, i32 1, !dbg !1443, !psr.id !1445
  %327 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %326, i64 0, i64 0, !dbg !1446, !psr.id !1447
  %328 = zext i32 %.1 to i64, !dbg !1446, !psr.id !1448
  %329 = getelementptr inbounds [4 x i32], [4 x i32]* %327, i64 0, i64 %328, !dbg !1446, !psr.id !1449
  store i32 %324, i32* %329, align 4, !dbg !1450, !psr.id !1451
  %330 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1452, !psr.id !1453
  %331 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %330, i32 0, i32 1, !dbg !1452, !psr.id !1454
  %332 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %331, i64 0, i64 1, !dbg !1455, !psr.id !1456
  %333 = zext i32 %.1 to i64, !dbg !1455, !psr.id !1457
  %334 = getelementptr inbounds [4 x i32], [4 x i32]* %332, i64 0, i64 %333, !dbg !1455, !psr.id !1458
  %335 = load i32, i32* %334, align 4, !dbg !1455, !psr.id !1459
  %336 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1460, !psr.id !1461
  %337 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %336, i32 0, i32 1, !dbg !1460, !psr.id !1462
  %338 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %337, i64 0, i64 1, !dbg !1463, !psr.id !1464
  %339 = zext i32 %.1 to i64, !dbg !1463, !psr.id !1465
  %340 = getelementptr inbounds [4 x i32], [4 x i32]* %338, i64 0, i64 %339, !dbg !1463, !psr.id !1466
  %341 = load i32, i32* %340, align 4, !dbg !1463, !psr.id !1467
  %342 = xor i32 %335, %341, !dbg !1468, !psr.id !1469
  %343 = and i32 %3, %342, !dbg !1470, !psr.id !1471
  %344 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1472, !psr.id !1473
  %345 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %344, i32 0, i32 1, !dbg !1472, !psr.id !1474
  %346 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %345, i64 0, i64 1, !dbg !1475, !psr.id !1476
  %347 = zext i32 %.1 to i64, !dbg !1475, !psr.id !1477
  %348 = getelementptr inbounds [4 x i32], [4 x i32]* %346, i64 0, i64 %347, !dbg !1475, !psr.id !1478
  %349 = load i32, i32* %348, align 4, !dbg !1475, !psr.id !1479
  %350 = xor i32 %343, %349, !dbg !1480, !psr.id !1481
  %351 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1482, !psr.id !1483
  %352 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %351, i32 0, i32 1, !dbg !1482, !psr.id !1484
  %353 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %352, i64 0, i64 1, !dbg !1485, !psr.id !1486
  %354 = zext i32 %.1 to i64, !dbg !1485, !psr.id !1487
  %355 = getelementptr inbounds [4 x i32], [4 x i32]* %353, i64 0, i64 %354, !dbg !1485, !psr.id !1488
  store i32 %350, i32* %355, align 4, !dbg !1489, !psr.id !1490
  %356 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1491, !psr.id !1492
  %357 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %356, i32 0, i32 2, !dbg !1491, !psr.id !1493
  %358 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %357, i64 0, i64 0, !dbg !1494, !psr.id !1495
  %359 = zext i32 %.1 to i64, !dbg !1494, !psr.id !1496
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* %358, i64 0, i64 %359, !dbg !1494, !psr.id !1497
  %361 = load i32, i32* %360, align 4, !dbg !1494, !psr.id !1498
  %362 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1499, !psr.id !1500
  %363 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %362, i32 0, i32 2, !dbg !1499, !psr.id !1501
  %364 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %363, i64 0, i64 0, !dbg !1502, !psr.id !1503
  %365 = zext i32 %.1 to i64, !dbg !1502, !psr.id !1504
  %366 = getelementptr inbounds [4 x i32], [4 x i32]* %364, i64 0, i64 %365, !dbg !1502, !psr.id !1505
  %367 = load i32, i32* %366, align 4, !dbg !1502, !psr.id !1506
  %368 = xor i32 %361, %367, !dbg !1507, !psr.id !1508
  %369 = and i32 %3, %368, !dbg !1509, !psr.id !1510
  %370 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1511, !psr.id !1512
  %371 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %370, i32 0, i32 2, !dbg !1511, !psr.id !1513
  %372 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %371, i64 0, i64 0, !dbg !1514, !psr.id !1515
  %373 = zext i32 %.1 to i64, !dbg !1514, !psr.id !1516
  %374 = getelementptr inbounds [4 x i32], [4 x i32]* %372, i64 0, i64 %373, !dbg !1514, !psr.id !1517
  %375 = load i32, i32* %374, align 4, !dbg !1514, !psr.id !1518
  %376 = xor i32 %369, %375, !dbg !1519, !psr.id !1520
  %377 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1521, !psr.id !1522
  %378 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %377, i32 0, i32 2, !dbg !1521, !psr.id !1523
  %379 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %378, i64 0, i64 0, !dbg !1524, !psr.id !1525
  %380 = zext i32 %.1 to i64, !dbg !1524, !psr.id !1526
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %379, i64 0, i64 %380, !dbg !1524, !psr.id !1527
  store i32 %376, i32* %381, align 4, !dbg !1528, !psr.id !1529
  %382 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1530, !psr.id !1531
  %383 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %382, i32 0, i32 2, !dbg !1530, !psr.id !1532
  %384 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %383, i64 0, i64 1, !dbg !1533, !psr.id !1534
  %385 = zext i32 %.1 to i64, !dbg !1533, !psr.id !1535
  %386 = getelementptr inbounds [4 x i32], [4 x i32]* %384, i64 0, i64 %385, !dbg !1533, !psr.id !1536
  %387 = load i32, i32* %386, align 4, !dbg !1533, !psr.id !1537
  %388 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1538, !psr.id !1539
  %389 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %388, i32 0, i32 2, !dbg !1538, !psr.id !1540
  %390 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %389, i64 0, i64 1, !dbg !1541, !psr.id !1542
  %391 = zext i32 %.1 to i64, !dbg !1541, !psr.id !1543
  %392 = getelementptr inbounds [4 x i32], [4 x i32]* %390, i64 0, i64 %391, !dbg !1541, !psr.id !1544
  %393 = load i32, i32* %392, align 4, !dbg !1541, !psr.id !1545
  %394 = xor i32 %387, %393, !dbg !1546, !psr.id !1547
  %395 = and i32 %3, %394, !dbg !1548, !psr.id !1549
  %396 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1550, !psr.id !1551
  %397 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %396, i32 0, i32 2, !dbg !1550, !psr.id !1552
  %398 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %397, i64 0, i64 1, !dbg !1553, !psr.id !1554
  %399 = zext i32 %.1 to i64, !dbg !1553, !psr.id !1555
  %400 = getelementptr inbounds [4 x i32], [4 x i32]* %398, i64 0, i64 %399, !dbg !1553, !psr.id !1556
  %401 = load i32, i32* %400, align 4, !dbg !1553, !psr.id !1557
  %402 = xor i32 %395, %401, !dbg !1558, !psr.id !1559
  %403 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1560, !psr.id !1561
  %404 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %403, i32 0, i32 2, !dbg !1560, !psr.id !1562
  %405 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %404, i64 0, i64 1, !dbg !1563, !psr.id !1564
  %406 = zext i32 %.1 to i64, !dbg !1563, !psr.id !1565
  %407 = getelementptr inbounds [4 x i32], [4 x i32]* %405, i64 0, i64 %406, !dbg !1563, !psr.id !1566
  store i32 %402, i32* %407, align 4, !dbg !1567, !psr.id !1568
  br label %408, !dbg !1569, !psr.id !1570

408:                                              ; preds = %251
  %409 = add i32 %.1, 1, !dbg !1571, !psr.id !1572
  call void @llvm.dbg.value(metadata i32 %409, metadata !1004, metadata !DIExpression()), !dbg !912, !psr.id !1573
  br label %249, !dbg !1574, !llvm.loop !1575, !psr.id !1577

410:                                              ; preds = %249
  %411 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1578, !psr.id !1579
  %412 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %411, i32 0, i32 0, !dbg !1578, !psr.id !1580
  %413 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %412, i64 0, i64 0, !dbg !1578, !psr.id !1581
  %414 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %1, i32 0, i32 0, !dbg !1578, !psr.id !1582
  %415 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %414, i64 0, i64 0, !dbg !1578, !psr.id !1583
  call void @fp2copy1271([4 x i32]* %413, [4 x i32]* %415), !dbg !1578, !psr.id !1584
  %416 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1578, !psr.id !1585
  %417 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %416, i32 0, i32 1, !dbg !1578, !psr.id !1586
  %418 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %417, i64 0, i64 0, !dbg !1578, !psr.id !1587
  %419 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %1, i32 0, i32 1, !dbg !1578, !psr.id !1588
  %420 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %419, i64 0, i64 0, !dbg !1578, !psr.id !1589
  call void @fp2copy1271([4 x i32]* %418, [4 x i32]* %420), !dbg !1578, !psr.id !1590
  %421 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1578, !psr.id !1591
  %422 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %421, i32 0, i32 2, !dbg !1578, !psr.id !1592
  %423 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %422, i64 0, i64 0, !dbg !1578, !psr.id !1593
  %424 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %1, i32 0, i32 2, !dbg !1578, !psr.id !1594
  %425 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %424, i64 0, i64 0, !dbg !1578, !psr.id !1595
  call void @fp2copy1271([4 x i32]* %423, [4 x i32]* %425), !dbg !1578, !psr.id !1596
  ret void, !dbg !1597, !psr.id !1598
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @digit_x_digit(i32 %0, i32 %1, i32* %2) #0 !dbg !1599 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1602, metadata !DIExpression()), !dbg !1603, !psr.id !1604
  call void @llvm.dbg.value(metadata i32 %1, metadata !1605, metadata !DIExpression()), !dbg !1603, !psr.id !1606
  call void @llvm.dbg.value(metadata i32* %2, metadata !1607, metadata !DIExpression()), !dbg !1603, !psr.id !1608
  call void @llvm.dbg.value(metadata i32 65535, metadata !1609, metadata !DIExpression()), !dbg !1603, !psr.id !1610
  call void @llvm.dbg.value(metadata i32 -65536, metadata !1611, metadata !DIExpression()), !dbg !1603, !psr.id !1612
  %4 = and i32 %0, 65535, !dbg !1613, !psr.id !1614, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %4, metadata !1615, metadata !DIExpression()), !dbg !1603, !psr.id !1616
  %5 = lshr i32 %0, 16, !dbg !1617, !psr.id !1618, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %5, metadata !1619, metadata !DIExpression()), !dbg !1603, !psr.id !1620
  %6 = and i32 %1, 65535, !dbg !1621, !psr.id !1622, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %6, metadata !1623, metadata !DIExpression()), !dbg !1603, !psr.id !1624
  %7 = lshr i32 %1, 16, !dbg !1625, !psr.id !1626, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %7, metadata !1627, metadata !DIExpression()), !dbg !1603, !psr.id !1628
  %8 = mul i32 %4, %6, !dbg !1629, !psr.id !1630, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %8, metadata !1631, metadata !DIExpression()), !dbg !1603, !psr.id !1632
  %9 = mul i32 %4, %7, !dbg !1633, !psr.id !1634, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %9, metadata !1635, metadata !DIExpression()), !dbg !1603, !psr.id !1636
  %10 = mul i32 %5, %6, !dbg !1637, !psr.id !1638, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %10, metadata !1639, metadata !DIExpression()), !dbg !1603, !psr.id !1640
  %11 = mul i32 %5, %7, !dbg !1641, !psr.id !1642, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %11, metadata !1643, metadata !DIExpression()), !dbg !1603, !psr.id !1644
  %12 = and i32 %8, 65535, !dbg !1645, !psr.id !1646, !ValueTainted !898
  %13 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1647, !psr.id !1648
  store i32 %12, i32* %13, align 4, !dbg !1649, !psr.id !1650
  %14 = lshr i32 %8, 16, !dbg !1651, !psr.id !1652, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %14, metadata !1653, metadata !DIExpression()), !dbg !1603, !psr.id !1654
  %15 = and i32 %10, 65535, !dbg !1655, !psr.id !1656, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %15, metadata !1657, metadata !DIExpression()), !dbg !1603, !psr.id !1658
  %16 = and i32 %9, 65535, !dbg !1659, !psr.id !1660, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %16, metadata !1661, metadata !DIExpression()), !dbg !1603, !psr.id !1662
  %17 = add i32 %14, %15, !dbg !1663, !psr.id !1664, !ValueTainted !898
  %18 = add i32 %17, %16, !dbg !1665, !psr.id !1666, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %18, metadata !1667, metadata !DIExpression()), !dbg !1603, !psr.id !1668
  %19 = lshr i32 %18, 16, !dbg !1669, !psr.id !1670, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %19, metadata !1671, metadata !DIExpression()), !dbg !1603, !psr.id !1672
  %20 = shl i32 %18, 16, !dbg !1673, !psr.id !1674, !ValueTainted !898
  %21 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1675, !psr.id !1676
  %22 = load i32, i32* %21, align 4, !dbg !1677, !psr.id !1678, !ValueTainted !898
  %23 = xor i32 %22, %20, !dbg !1677, !psr.id !1679, !ValueTainted !898
  store i32 %23, i32* %21, align 4, !dbg !1677, !psr.id !1680
  %24 = lshr i32 %10, 16, !dbg !1681, !psr.id !1682, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %24, metadata !1653, metadata !DIExpression()), !dbg !1603, !psr.id !1683
  %25 = lshr i32 %9, 16, !dbg !1684, !psr.id !1685, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %25, metadata !1657, metadata !DIExpression()), !dbg !1603, !psr.id !1686
  %26 = and i32 %11, 65535, !dbg !1687, !psr.id !1688, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %26, metadata !1661, metadata !DIExpression()), !dbg !1603, !psr.id !1689
  %27 = add i32 %24, %25, !dbg !1690, !psr.id !1691, !ValueTainted !898
  %28 = add i32 %27, %26, !dbg !1692, !psr.id !1693, !ValueTainted !898
  %29 = add i32 %28, %19, !dbg !1694, !psr.id !1695, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %29, metadata !1667, metadata !DIExpression()), !dbg !1603, !psr.id !1696
  %30 = and i32 %29, 65535, !dbg !1697, !psr.id !1698, !ValueTainted !898
  %31 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1699, !psr.id !1700
  store i32 %30, i32* %31, align 4, !dbg !1701, !psr.id !1702
  %32 = and i32 %29, -65536, !dbg !1703, !psr.id !1704, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %32, metadata !1671, metadata !DIExpression()), !dbg !1603, !psr.id !1705
  %33 = and i32 %11, -65536, !dbg !1706, !psr.id !1707, !ValueTainted !898
  %34 = add i32 %33, %32, !dbg !1708, !psr.id !1709, !ValueTainted !898
  %35 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1710, !psr.id !1711, !PointTainted !1712
  %36 = load i32, i32* %35, align 4, !dbg !1713, !psr.id !1714, !ValueTainted !898
  %37 = xor i32 %36, %34, !dbg !1713, !psr.id !1715, !ValueTainted !898
  store i32 %37, i32* %35, align 4, !dbg !1713, !psr.id !1716
  ret void, !dbg !1717, !psr.id !1718
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fpmul1271(i32* %0, i32* %1, i32* %2) #0 !dbg !1719 {
  %4 = alloca [2 x i32], align 4, !psr.id !1722
  %5 = alloca [8 x i32], align 16, !psr.id !1723
  call void @llvm.dbg.value(metadata i32* %0, metadata !1724, metadata !DIExpression()), !dbg !1725, !psr.id !1726
  call void @llvm.dbg.value(metadata i32* %1, metadata !1727, metadata !DIExpression()), !dbg !1725, !psr.id !1728
  call void @llvm.dbg.value(metadata i32* %2, metadata !1729, metadata !DIExpression()), !dbg !1725, !psr.id !1730
  call void @llvm.dbg.declare(metadata [2 x i32]* %4, metadata !1731, metadata !DIExpression()), !dbg !1733, !psr.id !1734
  call void @llvm.dbg.declare(metadata [8 x i32]* %5, metadata !1735, metadata !DIExpression()), !dbg !1739, !psr.id !1740
  %6 = bitcast [8 x i32]* %5 to i8*, !dbg !1739, !psr.id !1741
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 32, i1 false), !dbg !1739, !psr.id !1742
  call void @llvm.dbg.value(metadata i32 0, metadata !1743, metadata !DIExpression()), !dbg !1725, !psr.id !1744
  call void @llvm.dbg.value(metadata i32 0, metadata !1745, metadata !DIExpression()), !dbg !1725, !psr.id !1746
  br label %7, !dbg !1747, !psr.id !1749

7:                                                ; preds = %49, %3
  %.03 = phi i32 [ 0, %3 ], [ %50, %49 ], !dbg !1750, !psr.id !1751
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1745, metadata !DIExpression()), !dbg !1725, !psr.id !1752
  %8 = icmp ult i32 %.03, 4, !dbg !1753, !psr.id !1755
  br i1 %8, label %9, label %51, !dbg !1756, !psr.id !1757

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1758, metadata !DIExpression()), !dbg !1725, !psr.id !1759
  call void @llvm.dbg.value(metadata i32 0, metadata !1760, metadata !DIExpression()), !dbg !1725, !psr.id !1761
  br label %10, !dbg !1762, !psr.id !1765

10:                                               ; preds = %43, %9
  %.05 = phi i32 [ 0, %9 ], [ %44, %43 ], !dbg !1766, !psr.id !1767
  %.02 = phi i32 [ 0, %9 ], [ %39, %43 ], !dbg !1768, !psr.id !1769, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1758, metadata !DIExpression()), !dbg !1725, !psr.id !1770
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1760, metadata !DIExpression()), !dbg !1725, !psr.id !1771
  %11 = icmp ult i32 %.05, 4, !dbg !1772, !psr.id !1774
  br i1 %11, label %12, label %45, !dbg !1775, !psr.id !1776

12:                                               ; preds = %10
  %13 = zext i32 %.03 to i64, !dbg !1777, !psr.id !1779
  %14 = getelementptr inbounds i32, i32* %0, i64 %13, !dbg !1777, !psr.id !1780, !PointTainted !1712
  %15 = load i32, i32* %14, align 4, !dbg !1777, !psr.id !1781, !ValueTainted !898
  %16 = zext i32 %.05 to i64, !dbg !1777, !psr.id !1782
  %17 = getelementptr inbounds i32, i32* %1, i64 %16, !dbg !1777, !psr.id !1783, !PointTainted !1712
  %18 = load i32, i32* %17, align 4, !dbg !1777, !psr.id !1784, !ValueTainted !898
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !1777, !psr.id !1785
  call void @digit_x_digit(i32 %15, i32 %18, i32* %19), !dbg !1777, !psr.id !1786
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !1787, !psr.id !1789
  %21 = load i32, i32* %20, align 4, !dbg !1787, !psr.id !1790, !ValueTainted !898
  %22 = add i32 %21, 0, !dbg !1787, !psr.id !1791, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %22, metadata !1792, metadata !DIExpression()), !dbg !1793, !psr.id !1794
  %23 = add i32 %.02, %22, !dbg !1787, !psr.id !1795, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %23, metadata !1796, metadata !DIExpression()), !dbg !1725, !psr.id !1797
  %24 = call i32 @is_digit_lessthan_ct(i32 %22, i32 0), !dbg !1787, !psr.id !1798, !ValueTainted !898
  %25 = call i32 @is_digit_lessthan_ct(i32 %23, i32 %22), !dbg !1787, !psr.id !1799, !ValueTainted !898
  %26 = or i32 %24, %25, !dbg !1787, !psr.id !1800, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %26, metadata !1743, metadata !DIExpression()), !dbg !1725, !psr.id !1801
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !1802, !psr.id !1803
  %28 = load i32, i32* %27, align 4, !dbg !1802, !psr.id !1804, !ValueTainted !898
  %29 = add i32 %28, %26, !dbg !1805, !psr.id !1806, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %29, metadata !1758, metadata !DIExpression()), !dbg !1725, !psr.id !1807
  %30 = add i32 %.03, %.05, !dbg !1808, !psr.id !1810
  %31 = zext i32 %30 to i64, !dbg !1808, !psr.id !1811
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %31, !dbg !1808, !psr.id !1812
  %33 = load i32, i32* %32, align 4, !dbg !1808, !psr.id !1813, !ValueTainted !898
  %34 = add i32 %33, 0, !dbg !1808, !psr.id !1814, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %34, metadata !1815, metadata !DIExpression()), !dbg !1816, !psr.id !1817
  %35 = add i32 %23, %34, !dbg !1808, !psr.id !1818, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %35, metadata !1796, metadata !DIExpression()), !dbg !1725, !psr.id !1819
  %36 = call i32 @is_digit_lessthan_ct(i32 %34, i32 0), !dbg !1808, !psr.id !1820, !ValueTainted !898
  %37 = call i32 @is_digit_lessthan_ct(i32 %35, i32 %34), !dbg !1808, !psr.id !1821, !ValueTainted !898
  %38 = or i32 %36, %37, !dbg !1808, !psr.id !1822, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %38, metadata !1743, metadata !DIExpression()), !dbg !1725, !psr.id !1823
  %39 = add i32 %29, %38, !dbg !1824, !psr.id !1825, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %39, metadata !1758, metadata !DIExpression()), !dbg !1725, !psr.id !1826
  %40 = add i32 %.03, %.05, !dbg !1827, !psr.id !1828
  %41 = zext i32 %40 to i64, !dbg !1829, !psr.id !1830
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %41, !dbg !1829, !psr.id !1831, !PointTainted !1712
  store i32 %35, i32* %42, align 4, !dbg !1832, !psr.id !1833
  br label %43, !dbg !1834, !psr.id !1835

43:                                               ; preds = %12
  %44 = add i32 %.05, 1, !dbg !1836, !psr.id !1837
  call void @llvm.dbg.value(metadata i32 %44, metadata !1760, metadata !DIExpression()), !dbg !1725, !psr.id !1838
  br label %10, !dbg !1839, !llvm.loop !1840, !psr.id !1842

45:                                               ; preds = %10
  %46 = add i32 4, %.03, !dbg !1843, !psr.id !1844
  %47 = zext i32 %46 to i64, !dbg !1845, !psr.id !1846
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %47, !dbg !1845, !psr.id !1847, !PointTainted !1712
  store i32 %.02, i32* %48, align 4, !dbg !1848, !psr.id !1849
  br label %49, !dbg !1850, !psr.id !1851

49:                                               ; preds = %45
  %50 = add i32 %.03, 1, !dbg !1852, !psr.id !1853
  call void @llvm.dbg.value(metadata i32 %50, metadata !1745, metadata !DIExpression()), !dbg !1725, !psr.id !1854
  br label %7, !dbg !1855, !llvm.loop !1856, !psr.id !1858

51:                                               ; preds = %7
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !1859, !psr.id !1860
  %53 = load i32, i32* %52, align 4, !dbg !1859, !psr.id !1861, !ValueTainted !898
  %54 = lshr i32 %53, 31, !dbg !1862, !psr.id !1863, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %54, metadata !1864, metadata !DIExpression()), !dbg !1725, !psr.id !1865
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !1866, !psr.id !1867
  %56 = load i32, i32* %55, align 4, !dbg !1868, !psr.id !1869, !ValueTainted !898
  %57 = and i32 %56, 2147483647, !dbg !1868, !psr.id !1870, !ValueTainted !898
  store i32 %57, i32* %55, align 4, !dbg !1868, !psr.id !1871
  call void @llvm.dbg.value(metadata i32 0, metadata !1743, metadata !DIExpression()), !dbg !1725, !psr.id !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1745, metadata !DIExpression()), !dbg !1725, !psr.id !1873
  br label %58, !dbg !1874, !psr.id !1876

58:                                               ; preds = %92, %51
  %.14 = phi i32 [ 0, %51 ], [ %93, %92 ], !dbg !1877, !psr.id !1878
  %.01 = phi i32 [ %54, %51 ], [ %65, %92 ], !dbg !1725, !psr.id !1879, !ValueTainted !898
  %.0 = phi i32 [ 0, %51 ], [ %91, %92 ], !dbg !1725, !psr.id !1880, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1743, metadata !DIExpression()), !dbg !1725, !psr.id !1881
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1864, metadata !DIExpression()), !dbg !1725, !psr.id !1882
  call void @llvm.dbg.value(metadata i32 %.14, metadata !1745, metadata !DIExpression()), !dbg !1725, !psr.id !1883
  %59 = icmp ult i32 %.14, 4, !dbg !1884, !psr.id !1886
  br i1 %59, label %60, label %94, !dbg !1887, !psr.id !1888

60:                                               ; preds = %58
  %61 = add i32 4, %.14, !dbg !1889, !psr.id !1891
  %62 = zext i32 %61 to i64, !dbg !1892, !psr.id !1893
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %62, !dbg !1892, !psr.id !1894
  %64 = load i32, i32* %63, align 4, !dbg !1892, !psr.id !1895, !ValueTainted !898
  %65 = lshr i32 %64, 31, !dbg !1896, !psr.id !1897, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %65, metadata !1898, metadata !DIExpression()), !dbg !1725, !psr.id !1899
  %66 = add i32 4, %.14, !dbg !1900, !psr.id !1901
  %67 = zext i32 %66 to i64, !dbg !1902, !psr.id !1903
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %67, !dbg !1902, !psr.id !1904
  %69 = load i32, i32* %68, align 4, !dbg !1902, !psr.id !1905, !ValueTainted !898
  %70 = shl i32 %69, 1, !dbg !1906, !psr.id !1907, !ValueTainted !898
  %71 = add i32 %70, %.01, !dbg !1908, !psr.id !1909, !ValueTainted !898
  %72 = add i32 4, %.14, !dbg !1910, !psr.id !1911
  %73 = zext i32 %72 to i64, !dbg !1912, !psr.id !1913
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %73, !dbg !1912, !psr.id !1914, !PointTainted !1712
  store i32 %71, i32* %74, align 4, !dbg !1915, !psr.id !1916
  call void @llvm.dbg.value(metadata i32 %65, metadata !1864, metadata !DIExpression()), !dbg !1725, !psr.id !1917
  %75 = zext i32 %.14 to i64, !dbg !1918, !psr.id !1920
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %75, !dbg !1918, !psr.id !1921
  %77 = load i32, i32* %76, align 4, !dbg !1918, !psr.id !1922, !ValueTainted !898
  %78 = add i32 %77, %.0, !dbg !1918, !psr.id !1923, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %78, metadata !1924, metadata !DIExpression()), !dbg !1925, !psr.id !1926
  %79 = add i32 4, %.14, !dbg !1918, !psr.id !1927
  %80 = zext i32 %79 to i64, !dbg !1918, !psr.id !1928
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %80, !dbg !1918, !psr.id !1929
  %82 = load i32, i32* %81, align 4, !dbg !1918, !psr.id !1930, !ValueTainted !898
  %83 = add i32 %82, %78, !dbg !1918, !psr.id !1931, !ValueTainted !898
  %84 = zext i32 %.14 to i64, !dbg !1918, !psr.id !1932
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %84, !dbg !1918, !psr.id !1933, !PointTainted !1712
  store i32 %83, i32* %85, align 4, !dbg !1918, !psr.id !1934
  %86 = call i32 @is_digit_lessthan_ct(i32 %78, i32 %.0), !dbg !1918, !psr.id !1935, !ValueTainted !898
  %87 = zext i32 %.14 to i64, !dbg !1918, !psr.id !1936
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %87, !dbg !1918, !psr.id !1937
  %89 = load i32, i32* %88, align 4, !dbg !1918, !psr.id !1938, !ValueTainted !898
  %90 = call i32 @is_digit_lessthan_ct(i32 %89, i32 %78), !dbg !1918, !psr.id !1939, !ValueTainted !898
  %91 = or i32 %86, %90, !dbg !1918, !psr.id !1940, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %91, metadata !1743, metadata !DIExpression()), !dbg !1725, !psr.id !1941
  br label %92, !dbg !1942, !psr.id !1943

92:                                               ; preds = %60
  %93 = add i32 %.14, 1, !dbg !1944, !psr.id !1945
  call void @llvm.dbg.value(metadata i32 %93, metadata !1745, metadata !DIExpression()), !dbg !1725, !psr.id !1946
  br label %58, !dbg !1947, !llvm.loop !1948, !psr.id !1950

94:                                               ; preds = %58
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !1951, !psr.id !1952
  %96 = load i32, i32* %95, align 4, !dbg !1951, !psr.id !1953, !ValueTainted !898
  %97 = lshr i32 %96, 31, !dbg !1954, !psr.id !1955, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %97, metadata !1743, metadata !DIExpression()), !dbg !1725, !psr.id !1956
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !1957, !psr.id !1958
  %99 = load i32, i32* %98, align 4, !dbg !1959, !psr.id !1960, !ValueTainted !898
  %100 = and i32 %99, 2147483647, !dbg !1959, !psr.id !1961, !ValueTainted !898
  store i32 %100, i32* %98, align 4, !dbg !1959, !psr.id !1962
  call void @llvm.dbg.value(metadata i32 0, metadata !1745, metadata !DIExpression()), !dbg !1725, !psr.id !1963
  br label %101, !dbg !1964, !psr.id !1966

101:                                              ; preds = %117, %94
  %.2 = phi i32 [ 0, %94 ], [ %118, %117 ], !dbg !1967, !psr.id !1968
  %.1 = phi i32 [ %97, %94 ], [ %116, %117 ], !dbg !1725, !psr.id !1969, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1743, metadata !DIExpression()), !dbg !1725, !psr.id !1970
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1745, metadata !DIExpression()), !dbg !1725, !psr.id !1971
  %102 = icmp ult i32 %.2, 4, !dbg !1972, !psr.id !1974
  br i1 %102, label %103, label %119, !dbg !1975, !psr.id !1976

103:                                              ; preds = %101
  %104 = zext i32 %.2 to i64, !dbg !1977, !psr.id !1980
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %104, !dbg !1977, !psr.id !1981
  %106 = load i32, i32* %105, align 4, !dbg !1977, !psr.id !1982, !ValueTainted !898
  %107 = add i32 %106, %.1, !dbg !1977, !psr.id !1983, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %107, metadata !1984, metadata !DIExpression()), !dbg !1985, !psr.id !1986
  %108 = add i32 0, %107, !dbg !1977, !psr.id !1987, !ValueTainted !898
  %109 = zext i32 %.2 to i64, !dbg !1977, !psr.id !1988
  %110 = getelementptr inbounds i32, i32* %2, i64 %109, !dbg !1977, !psr.id !1989, !PointTainted !1712
  store i32 %108, i32* %110, align 4, !dbg !1977, !psr.id !1990
  %111 = call i32 @is_digit_lessthan_ct(i32 %107, i32 %.1), !dbg !1977, !psr.id !1991, !ValueTainted !898
  %112 = zext i32 %.2 to i64, !dbg !1977, !psr.id !1992
  %113 = getelementptr inbounds i32, i32* %2, i64 %112, !dbg !1977, !psr.id !1993, !PointTainted !1712
  %114 = load i32, i32* %113, align 4, !dbg !1977, !psr.id !1994, !ValueTainted !898
  %115 = call i32 @is_digit_lessthan_ct(i32 %114, i32 %107), !dbg !1977, !psr.id !1995, !ValueTainted !898
  %116 = or i32 %111, %115, !dbg !1977, !psr.id !1996, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %116, metadata !1743, metadata !DIExpression()), !dbg !1725, !psr.id !1997
  br label %117, !dbg !1998, !psr.id !1999

117:                                              ; preds = %103
  %118 = add i32 %.2, 1, !dbg !2000, !psr.id !2001
  call void @llvm.dbg.value(metadata i32 %118, metadata !1745, metadata !DIExpression()), !dbg !1725, !psr.id !2002
  br label %101, !dbg !2003, !llvm.loop !2004, !psr.id !2006

119:                                              ; preds = %101
  ret void, !dbg !2007, !psr.id !2008
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_digit_lessthan_ct(i32 %0, i32 %1) #0 !dbg !2009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2012, metadata !DIExpression()), !dbg !2013, !psr.id !2014
  call void @llvm.dbg.value(metadata i32 %1, metadata !2015, metadata !DIExpression()), !dbg !2013, !psr.id !2016
  %3 = xor i32 %0, %1, !dbg !2017, !psr.id !2018, !ValueTainted !898
  %4 = sub i32 %0, %1, !dbg !2019, !psr.id !2020, !ValueTainted !898
  %5 = xor i32 %4, %1, !dbg !2021, !psr.id !2022, !ValueTainted !898
  %6 = or i32 %3, %5, !dbg !2023, !psr.id !2024, !ValueTainted !898
  %7 = xor i32 %0, %6, !dbg !2025, !psr.id !2026, !ValueTainted !898
  %8 = lshr i32 %7, 31, !dbg !2027, !psr.id !2028, !ValueTainted !898
  ret i32 %8, !dbg !2029, !psr.id !2030
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fpsqr1271(i32* %0, i32* %1) #0 !dbg !2031 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2034, metadata !DIExpression()), !dbg !2035, !psr.id !2036
  call void @llvm.dbg.value(metadata i32* %1, metadata !2037, metadata !DIExpression()), !dbg !2035, !psr.id !2038
  call void @fpmul1271(i32* %0, i32* %0, i32* %1), !dbg !2039, !psr.id !2040
  ret void, !dbg !2041, !psr.id !2042
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mod1271(i32* %0) #0 !dbg !2043 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2046, metadata !DIExpression()), !dbg !2047, !psr.id !2048
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2047, !psr.id !2050
  call void @llvm.dbg.value(metadata i32 0, metadata !2051, metadata !DIExpression()), !dbg !2047, !psr.id !2052
  br label %2, !dbg !2053, !psr.id !2055

2:                                                ; preds = %19, %1
  %.01 = phi i32 [ 0, %1 ], [ %20, %19 ], !dbg !2056, !psr.id !2057
  %.0 = phi i32 [ 0, %1 ], [ %15, %19 ], !dbg !2047, !psr.id !2058, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2049, metadata !DIExpression()), !dbg !2047, !psr.id !2059
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2051, metadata !DIExpression()), !dbg !2047, !psr.id !2060
  %3 = icmp ult i32 %.01, 3, !dbg !2061, !psr.id !2063
  br i1 %3, label %4, label %21, !dbg !2064, !psr.id !2065

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64, !dbg !2066, !psr.id !2069
  %6 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !2066, !psr.id !2070, !PointTainted !1712
  %7 = load i32, i32* %6, align 4, !dbg !2066, !psr.id !2071, !ValueTainted !898
  %8 = sub i32 %7, -1, !dbg !2066, !psr.id !2072, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %8, metadata !2073, metadata !DIExpression()), !dbg !2074, !psr.id !2075
  %9 = zext i32 %.01 to i64, !dbg !2066, !psr.id !2076
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !2066, !psr.id !2077, !PointTainted !1712
  %11 = load i32, i32* %10, align 4, !dbg !2066, !psr.id !2078
  %12 = call i32 @is_digit_lessthan_ct(i32 %11, i32 -1), !dbg !2066, !psr.id !2079, !ValueTainted !898
  %13 = call i32 @is_digit_zero_ct(i32 %8), !dbg !2066, !psr.id !2080, !ValueTainted !898
  %14 = and i32 %.0, %13, !dbg !2066, !psr.id !2081, !ValueTainted !898
  %15 = or i32 %12, %14, !dbg !2066, !psr.id !2082, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %15, metadata !2083, metadata !DIExpression()), !dbg !2074, !psr.id !2084
  %16 = sub i32 %8, %.0, !dbg !2066, !psr.id !2085, !ValueTainted !898
  %17 = zext i32 %.01 to i64, !dbg !2066, !psr.id !2086
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !2066, !psr.id !2087, !PointTainted !1712
  store i32 %16, i32* %18, align 4, !dbg !2066, !psr.id !2088
  call void @llvm.dbg.value(metadata i32 %15, metadata !2049, metadata !DIExpression()), !dbg !2047, !psr.id !2089
  br label %19, !dbg !2090, !psr.id !2091

19:                                               ; preds = %4
  %20 = add i32 %.01, 1, !dbg !2092, !psr.id !2093
  call void @llvm.dbg.value(metadata i32 %20, metadata !2051, metadata !DIExpression()), !dbg !2047, !psr.id !2094
  br label %2, !dbg !2095, !llvm.loop !2096, !psr.id !2098

21:                                               ; preds = %2
  %22 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2099, !psr.id !2101, !PointTainted !1712
  %23 = load i32, i32* %22, align 4, !dbg !2099, !psr.id !2102, !ValueTainted !898
  %24 = sub i32 %23, 2147483647, !dbg !2099, !psr.id !2103, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %24, metadata !2104, metadata !DIExpression()), !dbg !2105, !psr.id !2106
  %25 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2099, !psr.id !2107, !PointTainted !1712
  %26 = load i32, i32* %25, align 4, !dbg !2099, !psr.id !2108
  %27 = call i32 @is_digit_lessthan_ct(i32 %26, i32 2147483647), !dbg !2099, !psr.id !2109, !ValueTainted !898
  %28 = call i32 @is_digit_zero_ct(i32 %24), !dbg !2099, !psr.id !2110, !ValueTainted !898
  %29 = and i32 %.0, %28, !dbg !2099, !psr.id !2111, !ValueTainted !898
  %30 = or i32 %27, %29, !dbg !2099, !psr.id !2112, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %30, metadata !2113, metadata !DIExpression()), !dbg !2105, !psr.id !2114
  %31 = sub i32 %24, %.0, !dbg !2099, !psr.id !2115, !ValueTainted !898
  %32 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2099, !psr.id !2116, !PointTainted !1712
  store i32 %31, i32* %32, align 4, !dbg !2099, !psr.id !2117
  call void @llvm.dbg.value(metadata i32 %30, metadata !2049, metadata !DIExpression()), !dbg !2047, !psr.id !2118
  %33 = sub i32 0, %30, !dbg !2119, !psr.id !2120, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %33, metadata !2121, metadata !DIExpression()), !dbg !2047, !psr.id !2122
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2047, !psr.id !2123
  call void @llvm.dbg.value(metadata i32 0, metadata !2051, metadata !DIExpression()), !dbg !2047, !psr.id !2124
  br label %34, !dbg !2125, !psr.id !2127

34:                                               ; preds = %50, %21
  %.12 = phi i32 [ 0, %21 ], [ %51, %50 ], !dbg !2128, !psr.id !2129
  %.1 = phi i32 [ 0, %21 ], [ %49, %50 ], !dbg !2047, !psr.id !2130, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2049, metadata !DIExpression()), !dbg !2047, !psr.id !2131
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2051, metadata !DIExpression()), !dbg !2047, !psr.id !2132
  %35 = icmp ult i32 %.12, 3, !dbg !2133, !psr.id !2135
  br i1 %35, label %36, label %52, !dbg !2136, !psr.id !2137

36:                                               ; preds = %34
  %37 = zext i32 %.12 to i64, !dbg !2138, !psr.id !2141
  %38 = getelementptr inbounds i32, i32* %0, i64 %37, !dbg !2138, !psr.id !2142, !PointTainted !1712
  %39 = load i32, i32* %38, align 4, !dbg !2138, !psr.id !2143, !ValueTainted !898
  %40 = add i32 %39, %.1, !dbg !2138, !psr.id !2144, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %40, metadata !2145, metadata !DIExpression()), !dbg !2146, !psr.id !2147
  %41 = add i32 %33, %40, !dbg !2138, !psr.id !2148, !ValueTainted !898
  %42 = zext i32 %.12 to i64, !dbg !2138, !psr.id !2149
  %43 = getelementptr inbounds i32, i32* %0, i64 %42, !dbg !2138, !psr.id !2150, !PointTainted !1712
  store i32 %41, i32* %43, align 4, !dbg !2138, !psr.id !2151
  %44 = call i32 @is_digit_lessthan_ct(i32 %40, i32 %.1), !dbg !2138, !psr.id !2152, !ValueTainted !898
  %45 = zext i32 %.12 to i64, !dbg !2138, !psr.id !2153
  %46 = getelementptr inbounds i32, i32* %0, i64 %45, !dbg !2138, !psr.id !2154, !PointTainted !1712
  %47 = load i32, i32* %46, align 4, !dbg !2138, !psr.id !2155, !ValueTainted !898
  %48 = call i32 @is_digit_lessthan_ct(i32 %47, i32 %40), !dbg !2138, !psr.id !2156, !ValueTainted !898
  %49 = or i32 %44, %48, !dbg !2138, !psr.id !2157, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %49, metadata !2049, metadata !DIExpression()), !dbg !2047, !psr.id !2158
  br label %50, !dbg !2159, !psr.id !2160

50:                                               ; preds = %36
  %51 = add i32 %.12, 1, !dbg !2161, !psr.id !2162
  call void @llvm.dbg.value(metadata i32 %51, metadata !2051, metadata !DIExpression()), !dbg !2047, !psr.id !2163
  br label %34, !dbg !2164, !llvm.loop !2165, !psr.id !2167

52:                                               ; preds = %34
  %53 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2168, !psr.id !2170, !PointTainted !1712
  %54 = load i32, i32* %53, align 4, !dbg !2168, !psr.id !2171, !ValueTainted !898
  %55 = add i32 %54, %.1, !dbg !2168, !psr.id !2172, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %55, metadata !2173, metadata !DIExpression()), !dbg !2174, !psr.id !2175
  %56 = lshr i32 %33, 1, !dbg !2168, !psr.id !2176, !ValueTainted !898
  %57 = add i32 %56, %55, !dbg !2168, !psr.id !2177, !ValueTainted !898
  %58 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2168, !psr.id !2178, !PointTainted !1712
  store i32 %57, i32* %58, align 4, !dbg !2168, !psr.id !2179
  %59 = call i32 @is_digit_lessthan_ct(i32 %55, i32 %.1), !dbg !2168, !psr.id !2180, !ValueTainted !898
  %60 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2168, !psr.id !2181, !PointTainted !1712
  %61 = load i32, i32* %60, align 4, !dbg !2168, !psr.id !2182, !ValueTainted !898
  %62 = call i32 @is_digit_lessthan_ct(i32 %61, i32 %55), !dbg !2168, !psr.id !2183, !ValueTainted !898
  %63 = or i32 %59, %62, !dbg !2168, !psr.id !2184
  call void @llvm.dbg.value(metadata i32 %63, metadata !2049, metadata !DIExpression()), !dbg !2047, !psr.id !2185
  ret void, !dbg !2186, !psr.id !2187
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_digit_zero_ct(i32 %0) #0 !dbg !2188 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2189, metadata !DIExpression()), !dbg !2190, !psr.id !2191
  %2 = call i32 @is_digit_nonzero_ct(i32 %0), !dbg !2192, !psr.id !2193, !ValueTainted !898
  %3 = xor i32 1, %2, !dbg !2194, !psr.id !2195, !ValueTainted !898
  ret i32 %3, !dbg !2196, !psr.id !2197
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_mul(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !2198 {
  %5 = alloca [2 x i32], align 4, !psr.id !2201
  call void @llvm.dbg.value(metadata i32* %0, metadata !2202, metadata !DIExpression()), !dbg !2203, !psr.id !2204
  call void @llvm.dbg.value(metadata i32* %1, metadata !2205, metadata !DIExpression()), !dbg !2203, !psr.id !2206
  call void @llvm.dbg.value(metadata i32* %2, metadata !2207, metadata !DIExpression()), !dbg !2203, !psr.id !2208
  call void @llvm.dbg.value(metadata i32 %3, metadata !2209, metadata !DIExpression()), !dbg !2203, !psr.id !2210
  call void @llvm.dbg.declare(metadata [2 x i32]* %5, metadata !2211, metadata !DIExpression()), !dbg !2212, !psr.id !2213
  call void @llvm.dbg.value(metadata i32 0, metadata !2214, metadata !DIExpression()), !dbg !2203, !psr.id !2215
  call void @llvm.dbg.value(metadata i32 0, metadata !2216, metadata !DIExpression()), !dbg !2203, !psr.id !2217
  br label %6, !dbg !2218, !psr.id !2220

6:                                                ; preds = %12, %4
  %.02 = phi i32 [ 0, %4 ], [ %13, %12 ], !dbg !2221, !psr.id !2222
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2216, metadata !DIExpression()), !dbg !2203, !psr.id !2223
  %7 = mul i32 2, %3, !dbg !2224, !psr.id !2226
  %8 = icmp ult i32 %.02, %7, !dbg !2227, !psr.id !2228
  br i1 %8, label %9, label %14, !dbg !2229, !psr.id !2230

9:                                                ; preds = %6
  %10 = zext i32 %.02 to i64, !dbg !2231, !psr.id !2232
  %11 = getelementptr inbounds i32, i32* %2, i64 %10, !dbg !2231, !psr.id !2233
  store i32 0, i32* %11, align 4, !dbg !2234, !psr.id !2235
  br label %12, !dbg !2231, !psr.id !2236

12:                                               ; preds = %9
  %13 = add i32 %.02, 1, !dbg !2237, !psr.id !2238
  call void @llvm.dbg.value(metadata i32 %13, metadata !2216, metadata !DIExpression()), !dbg !2203, !psr.id !2239
  br label %6, !dbg !2240, !llvm.loop !2241, !psr.id !2243

14:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !2216, metadata !DIExpression()), !dbg !2203, !psr.id !2244
  br label %15, !dbg !2245, !psr.id !2247

15:                                               ; preds = %57, %14
  %.1 = phi i32 [ 0, %14 ], [ %58, %57 ], !dbg !2248, !psr.id !2249
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2216, metadata !DIExpression()), !dbg !2203, !psr.id !2250
  %16 = icmp ult i32 %.1, %3, !dbg !2251, !psr.id !2253
  br i1 %16, label %17, label %59, !dbg !2254, !psr.id !2255

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 0, metadata !2256, metadata !DIExpression()), !dbg !2203, !psr.id !2257
  call void @llvm.dbg.value(metadata i32 0, metadata !2258, metadata !DIExpression()), !dbg !2203, !psr.id !2259
  br label %18, !dbg !2260, !psr.id !2263

18:                                               ; preds = %51, %17
  %.01 = phi i32 [ 0, %17 ], [ %52, %51 ], !dbg !2264, !psr.id !2265
  %.0 = phi i32 [ 0, %17 ], [ %47, %51 ], !dbg !2266, !psr.id !2267
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2256, metadata !DIExpression()), !dbg !2203, !psr.id !2268
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2258, metadata !DIExpression()), !dbg !2203, !psr.id !2269
  %19 = icmp ult i32 %.01, %3, !dbg !2270, !psr.id !2272
  br i1 %19, label %20, label %53, !dbg !2273, !psr.id !2274

20:                                               ; preds = %18
  %21 = zext i32 %.1 to i64, !dbg !2275, !psr.id !2277
  %22 = getelementptr inbounds i32, i32* %0, i64 %21, !dbg !2275, !psr.id !2278
  %23 = load i32, i32* %22, align 4, !dbg !2275, !psr.id !2279
  %24 = zext i32 %.01 to i64, !dbg !2275, !psr.id !2280
  %25 = getelementptr inbounds i32, i32* %1, i64 %24, !dbg !2275, !psr.id !2281
  %26 = load i32, i32* %25, align 4, !dbg !2275, !psr.id !2282
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0, !dbg !2275, !psr.id !2283
  call void @digit_x_digit(i32 %23, i32 %26, i32* %27), !dbg !2275, !psr.id !2284
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0, !dbg !2285, !psr.id !2287
  %29 = load i32, i32* %28, align 4, !dbg !2285, !psr.id !2288
  %30 = add i32 %29, 0, !dbg !2285, !psr.id !2289
  call void @llvm.dbg.value(metadata i32 %30, metadata !2290, metadata !DIExpression()), !dbg !2291, !psr.id !2292
  %31 = add i32 %.0, %30, !dbg !2285, !psr.id !2293
  call void @llvm.dbg.value(metadata i32 %31, metadata !2294, metadata !DIExpression()), !dbg !2203, !psr.id !2295
  %32 = call i32 @is_digit_lessthan_ct(i32 %30, i32 0), !dbg !2285, !psr.id !2296
  %33 = call i32 @is_digit_lessthan_ct(i32 %31, i32 %30), !dbg !2285, !psr.id !2297
  %34 = or i32 %32, %33, !dbg !2285, !psr.id !2298
  call void @llvm.dbg.value(metadata i32 %34, metadata !2214, metadata !DIExpression()), !dbg !2203, !psr.id !2299
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1, !dbg !2300, !psr.id !2301
  %36 = load i32, i32* %35, align 4, !dbg !2300, !psr.id !2302
  %37 = add i32 %36, %34, !dbg !2303, !psr.id !2304
  call void @llvm.dbg.value(metadata i32 %37, metadata !2256, metadata !DIExpression()), !dbg !2203, !psr.id !2305
  %38 = add i32 %.1, %.01, !dbg !2306, !psr.id !2308
  %39 = zext i32 %38 to i64, !dbg !2306, !psr.id !2309
  %40 = getelementptr inbounds i32, i32* %2, i64 %39, !dbg !2306, !psr.id !2310
  %41 = load i32, i32* %40, align 4, !dbg !2306, !psr.id !2311
  %42 = add i32 %41, 0, !dbg !2306, !psr.id !2312
  call void @llvm.dbg.value(metadata i32 %42, metadata !2313, metadata !DIExpression()), !dbg !2314, !psr.id !2315
  %43 = add i32 %31, %42, !dbg !2306, !psr.id !2316
  call void @llvm.dbg.value(metadata i32 %43, metadata !2294, metadata !DIExpression()), !dbg !2203, !psr.id !2317
  %44 = call i32 @is_digit_lessthan_ct(i32 %42, i32 0), !dbg !2306, !psr.id !2318
  %45 = call i32 @is_digit_lessthan_ct(i32 %43, i32 %42), !dbg !2306, !psr.id !2319
  %46 = or i32 %44, %45, !dbg !2306, !psr.id !2320
  call void @llvm.dbg.value(metadata i32 %46, metadata !2214, metadata !DIExpression()), !dbg !2203, !psr.id !2321
  %47 = add i32 %37, %46, !dbg !2322, !psr.id !2323
  call void @llvm.dbg.value(metadata i32 %47, metadata !2256, metadata !DIExpression()), !dbg !2203, !psr.id !2324
  %48 = add i32 %.1, %.01, !dbg !2325, !psr.id !2326
  %49 = zext i32 %48 to i64, !dbg !2327, !psr.id !2328
  %50 = getelementptr inbounds i32, i32* %2, i64 %49, !dbg !2327, !psr.id !2329
  store i32 %43, i32* %50, align 4, !dbg !2330, !psr.id !2331
  br label %51, !dbg !2332, !psr.id !2333

51:                                               ; preds = %20
  %52 = add i32 %.01, 1, !dbg !2334, !psr.id !2335
  call void @llvm.dbg.value(metadata i32 %52, metadata !2258, metadata !DIExpression()), !dbg !2203, !psr.id !2336
  br label %18, !dbg !2337, !llvm.loop !2338, !psr.id !2340

53:                                               ; preds = %18
  %54 = add i32 %3, %.1, !dbg !2341, !psr.id !2342
  %55 = zext i32 %54 to i64, !dbg !2343, !psr.id !2344
  %56 = getelementptr inbounds i32, i32* %2, i64 %55, !dbg !2343, !psr.id !2345
  store i32 %.0, i32* %56, align 4, !dbg !2346, !psr.id !2347
  br label %57, !dbg !2348, !psr.id !2349

57:                                               ; preds = %53
  %58 = add i32 %.1, 1, !dbg !2350, !psr.id !2351
  call void @llvm.dbg.value(metadata i32 %58, metadata !2216, metadata !DIExpression()), !dbg !2203, !psr.id !2352
  br label %15, !dbg !2353, !llvm.loop !2354, !psr.id !2356

59:                                               ; preds = %15
  ret void, !dbg !2357, !psr.id !2358
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_add(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !2359 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2362, metadata !DIExpression()), !dbg !2363, !psr.id !2364
  call void @llvm.dbg.value(metadata i32* %1, metadata !2365, metadata !DIExpression()), !dbg !2363, !psr.id !2366
  call void @llvm.dbg.value(metadata i32* %2, metadata !2367, metadata !DIExpression()), !dbg !2363, !psr.id !2368
  call void @llvm.dbg.value(metadata i32 %3, metadata !2369, metadata !DIExpression()), !dbg !2363, !psr.id !2370
  call void @llvm.dbg.value(metadata i32 0, metadata !2371, metadata !DIExpression()), !dbg !2363, !psr.id !2372
  call void @llvm.dbg.value(metadata i32 0, metadata !2373, metadata !DIExpression()), !dbg !2363, !psr.id !2374
  br label %5, !dbg !2375, !psr.id !2377

5:                                                ; preds = %24, %4
  %.01 = phi i32 [ 0, %4 ], [ %25, %24 ], !dbg !2378, !psr.id !2379
  %.0 = phi i32 [ 0, %4 ], [ %23, %24 ], !dbg !2363, !psr.id !2380
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2371, metadata !DIExpression()), !dbg !2363, !psr.id !2381
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2373, metadata !DIExpression()), !dbg !2363, !psr.id !2382
  %6 = icmp ult i32 %.01, %3, !dbg !2383, !psr.id !2385
  br i1 %6, label %7, label %26, !dbg !2386, !psr.id !2387

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64, !dbg !2388, !psr.id !2391
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !2388, !psr.id !2392
  %10 = load i32, i32* %9, align 4, !dbg !2388, !psr.id !2393
  %11 = add i32 %10, %.0, !dbg !2388, !psr.id !2394
  call void @llvm.dbg.value(metadata i32 %11, metadata !2395, metadata !DIExpression()), !dbg !2396, !psr.id !2397
  %12 = zext i32 %.01 to i64, !dbg !2388, !psr.id !2398
  %13 = getelementptr inbounds i32, i32* %1, i64 %12, !dbg !2388, !psr.id !2399
  %14 = load i32, i32* %13, align 4, !dbg !2388, !psr.id !2400
  %15 = add i32 %14, %11, !dbg !2388, !psr.id !2401
  %16 = zext i32 %.01 to i64, !dbg !2388, !psr.id !2402
  %17 = getelementptr inbounds i32, i32* %2, i64 %16, !dbg !2388, !psr.id !2403
  store i32 %15, i32* %17, align 4, !dbg !2388, !psr.id !2404
  %18 = call i32 @is_digit_lessthan_ct(i32 %11, i32 %.0), !dbg !2388, !psr.id !2405
  %19 = zext i32 %.01 to i64, !dbg !2388, !psr.id !2406
  %20 = getelementptr inbounds i32, i32* %2, i64 %19, !dbg !2388, !psr.id !2407
  %21 = load i32, i32* %20, align 4, !dbg !2388, !psr.id !2408
  %22 = call i32 @is_digit_lessthan_ct(i32 %21, i32 %11), !dbg !2388, !psr.id !2409
  %23 = or i32 %18, %22, !dbg !2388, !psr.id !2410
  call void @llvm.dbg.value(metadata i32 %23, metadata !2371, metadata !DIExpression()), !dbg !2363, !psr.id !2411
  br label %24, !dbg !2412, !psr.id !2413

24:                                               ; preds = %7
  %25 = add i32 %.01, 1, !dbg !2414, !psr.id !2415
  call void @llvm.dbg.value(metadata i32 %25, metadata !2373, metadata !DIExpression()), !dbg !2363, !psr.id !2416
  br label %5, !dbg !2417, !llvm.loop !2418, !psr.id !2420

26:                                               ; preds = %5
  ret i32 %.0, !dbg !2421, !psr.id !2422
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fpinv1271(i32* %0) #0 !dbg !2423 {
  %2 = alloca [4 x i32], align 16, !psr.id !2424
  %3 = alloca [4 x i32], align 16, !psr.id !2425
  %4 = alloca [4 x i32], align 16, !psr.id !2426
  %5 = alloca [4 x i32], align 16, !psr.id !2427
  %6 = alloca [4 x i32], align 16, !psr.id !2428
  call void @llvm.dbg.value(metadata i32* %0, metadata !2429, metadata !DIExpression()), !dbg !2430, !psr.id !2431
  call void @llvm.dbg.declare(metadata [4 x i32]* %2, metadata !2432, metadata !DIExpression()), !dbg !2433, !psr.id !2434
  call void @llvm.dbg.declare(metadata [4 x i32]* %3, metadata !2435, metadata !DIExpression()), !dbg !2436, !psr.id !2437
  call void @llvm.dbg.declare(metadata [4 x i32]* %4, metadata !2438, metadata !DIExpression()), !dbg !2439, !psr.id !2440
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !2441, metadata !DIExpression()), !dbg !2442, !psr.id !2443
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !2444, metadata !DIExpression()), !dbg !2445, !psr.id !2446
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2447, !psr.id !2448
  call void @fpsqr1271(i32* %0, i32* %7), !dbg !2449, !psr.id !2450
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2451, !psr.id !2452
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2453, !psr.id !2454
  call void @fpmul1271(i32* %0, i32* %8, i32* %9), !dbg !2455, !psr.id !2456
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2457, !psr.id !2458
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2459, !psr.id !2460
  call void @fpsqr1271(i32* %10, i32* %11), !dbg !2461, !psr.id !2462
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2463, !psr.id !2464
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2465, !psr.id !2466
  call void @fpsqr1271(i32* %12, i32* %13), !dbg !2467, !psr.id !2468
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2469, !psr.id !2470
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2471, !psr.id !2472
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2473, !psr.id !2474
  call void @fpmul1271(i32* %14, i32* %15, i32* %16), !dbg !2475, !psr.id !2476
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2477, !psr.id !2478
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2479, !psr.id !2480
  call void @fpsqr1271(i32* %17, i32* %18), !dbg !2481, !psr.id !2482
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2483, !psr.id !2484
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2485, !psr.id !2486
  call void @fpsqr1271(i32* %19, i32* %20), !dbg !2487, !psr.id !2488
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2489, !psr.id !2490
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2491, !psr.id !2492
  call void @fpsqr1271(i32* %21, i32* %22), !dbg !2493, !psr.id !2494
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2495, !psr.id !2496
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2497, !psr.id !2498
  call void @fpsqr1271(i32* %23, i32* %24), !dbg !2499, !psr.id !2500
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2501, !psr.id !2502
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2503, !psr.id !2504
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2505, !psr.id !2506
  call void @fpmul1271(i32* %25, i32* %26, i32* %27), !dbg !2507, !psr.id !2508
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2509, !psr.id !2510
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2511, !psr.id !2512
  call void @fpsqr1271(i32* %28, i32* %29), !dbg !2513, !psr.id !2514
  call void @llvm.dbg.value(metadata i32 0, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2516
  br label %30, !dbg !2517, !psr.id !2519

30:                                               ; preds = %35, %1
  %.0 = phi i32 [ 0, %1 ], [ %36, %35 ], !dbg !2520, !psr.id !2521
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2522
  %31 = icmp slt i32 %.0, 7, !dbg !2523, !psr.id !2525
  br i1 %31, label %32, label %37, !dbg !2526, !psr.id !2527

32:                                               ; preds = %30
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2528, !psr.id !2529
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2530, !psr.id !2531
  call void @fpsqr1271(i32* %33, i32* %34), !dbg !2532, !psr.id !2533
  br label %35, !dbg !2532, !psr.id !2534

35:                                               ; preds = %32
  %36 = add nsw i32 %.0, 1, !dbg !2535, !psr.id !2536
  call void @llvm.dbg.value(metadata i32 %36, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2537
  br label %30, !dbg !2538, !llvm.loop !2539, !psr.id !2541

37:                                               ; preds = %30
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2542, !psr.id !2543
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2544, !psr.id !2545
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2546, !psr.id !2547
  call void @fpmul1271(i32* %38, i32* %39, i32* %40), !dbg !2548, !psr.id !2549
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2550, !psr.id !2551
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2552, !psr.id !2553
  call void @fpsqr1271(i32* %41, i32* %42), !dbg !2554, !psr.id !2555
  call void @llvm.dbg.value(metadata i32 0, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2556
  br label %43, !dbg !2557, !psr.id !2559

43:                                               ; preds = %48, %37
  %.1 = phi i32 [ 0, %37 ], [ %49, %48 ], !dbg !2560, !psr.id !2561
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2562
  %44 = icmp slt i32 %.1, 15, !dbg !2563, !psr.id !2565
  br i1 %44, label %45, label %50, !dbg !2566, !psr.id !2567

45:                                               ; preds = %43
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2568, !psr.id !2569
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2570, !psr.id !2571
  call void @fpsqr1271(i32* %46, i32* %47), !dbg !2572, !psr.id !2573
  br label %48, !dbg !2572, !psr.id !2574

48:                                               ; preds = %45
  %49 = add nsw i32 %.1, 1, !dbg !2575, !psr.id !2576
  call void @llvm.dbg.value(metadata i32 %49, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2577
  br label %43, !dbg !2578, !llvm.loop !2579, !psr.id !2581

50:                                               ; preds = %43
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2582, !psr.id !2583
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2584, !psr.id !2585
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2586, !psr.id !2587
  call void @fpmul1271(i32* %51, i32* %52, i32* %53), !dbg !2588, !psr.id !2589
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2590, !psr.id !2591
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2592, !psr.id !2593
  call void @fpsqr1271(i32* %54, i32* %55), !dbg !2594, !psr.id !2595
  call void @llvm.dbg.value(metadata i32 0, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2596
  br label %56, !dbg !2597, !psr.id !2599

56:                                               ; preds = %61, %50
  %.2 = phi i32 [ 0, %50 ], [ %62, %61 ], !dbg !2600, !psr.id !2601
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2602
  %57 = icmp slt i32 %.2, 31, !dbg !2603, !psr.id !2605
  br i1 %57, label %58, label %63, !dbg !2606, !psr.id !2607

58:                                               ; preds = %56
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2608, !psr.id !2609
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2610, !psr.id !2611
  call void @fpsqr1271(i32* %59, i32* %60), !dbg !2612, !psr.id !2613
  br label %61, !dbg !2612, !psr.id !2614

61:                                               ; preds = %58
  %62 = add nsw i32 %.2, 1, !dbg !2615, !psr.id !2616
  call void @llvm.dbg.value(metadata i32 %62, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2617
  br label %56, !dbg !2618, !llvm.loop !2619, !psr.id !2621

63:                                               ; preds = %56
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2622, !psr.id !2623
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2624, !psr.id !2625
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2626, !psr.id !2627
  call void @fpmul1271(i32* %64, i32* %65, i32* %66), !dbg !2628, !psr.id !2629
  call void @llvm.dbg.value(metadata i32 0, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2630
  br label %67, !dbg !2631, !psr.id !2633

67:                                               ; preds = %72, %63
  %.3 = phi i32 [ 0, %63 ], [ %73, %72 ], !dbg !2634, !psr.id !2635
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2636
  %68 = icmp slt i32 %.3, 32, !dbg !2637, !psr.id !2639
  br i1 %68, label %69, label %74, !dbg !2640, !psr.id !2641

69:                                               ; preds = %67
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2642, !psr.id !2643
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2644, !psr.id !2645
  call void @fpsqr1271(i32* %70, i32* %71), !dbg !2646, !psr.id !2647
  br label %72, !dbg !2646, !psr.id !2648

72:                                               ; preds = %69
  %73 = add nsw i32 %.3, 1, !dbg !2649, !psr.id !2650
  call void @llvm.dbg.value(metadata i32 %73, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2651
  br label %67, !dbg !2652, !llvm.loop !2653, !psr.id !2655

74:                                               ; preds = %67
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2656, !psr.id !2657
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2658, !psr.id !2659
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2660, !psr.id !2661
  call void @fpmul1271(i32* %75, i32* %76, i32* %77), !dbg !2662, !psr.id !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2664
  br label %78, !dbg !2665, !psr.id !2667

78:                                               ; preds = %83, %74
  %.4 = phi i32 [ 0, %74 ], [ %84, %83 ], !dbg !2668, !psr.id !2669
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2670
  %79 = icmp slt i32 %.4, 16, !dbg !2671, !psr.id !2673
  br i1 %79, label %80, label %85, !dbg !2674, !psr.id !2675

80:                                               ; preds = %78
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2676, !psr.id !2677
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2678, !psr.id !2679
  call void @fpsqr1271(i32* %81, i32* %82), !dbg !2680, !psr.id !2681
  br label %83, !dbg !2680, !psr.id !2682

83:                                               ; preds = %80
  %84 = add nsw i32 %.4, 1, !dbg !2683, !psr.id !2684
  call void @llvm.dbg.value(metadata i32 %84, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2685
  br label %78, !dbg !2686, !llvm.loop !2687, !psr.id !2689

85:                                               ; preds = %78
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2690, !psr.id !2691
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2692, !psr.id !2693
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2694, !psr.id !2695
  call void @fpmul1271(i32* %86, i32* %87, i32* %88), !dbg !2696, !psr.id !2697
  call void @llvm.dbg.value(metadata i32 0, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2698
  br label %89, !dbg !2699, !psr.id !2701

89:                                               ; preds = %94, %85
  %.5 = phi i32 [ 0, %85 ], [ %95, %94 ], !dbg !2702, !psr.id !2703
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2704
  %90 = icmp slt i32 %.5, 8, !dbg !2705, !psr.id !2707
  br i1 %90, label %91, label %96, !dbg !2708, !psr.id !2709

91:                                               ; preds = %89
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2710, !psr.id !2711
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2712, !psr.id !2713
  call void @fpsqr1271(i32* %92, i32* %93), !dbg !2714, !psr.id !2715
  br label %94, !dbg !2714, !psr.id !2716

94:                                               ; preds = %91
  %95 = add nsw i32 %.5, 1, !dbg !2717, !psr.id !2718
  call void @llvm.dbg.value(metadata i32 %95, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2719
  br label %89, !dbg !2720, !llvm.loop !2721, !psr.id !2723

96:                                               ; preds = %89
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2724, !psr.id !2725
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2726, !psr.id !2727
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2728, !psr.id !2729
  call void @fpmul1271(i32* %97, i32* %98, i32* %99), !dbg !2730, !psr.id !2731
  call void @llvm.dbg.value(metadata i32 0, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2732
  br label %100, !dbg !2733, !psr.id !2735

100:                                              ; preds = %105, %96
  %.6 = phi i32 [ 0, %96 ], [ %106, %105 ], !dbg !2736, !psr.id !2737
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2738
  %101 = icmp slt i32 %.6, 4, !dbg !2739, !psr.id !2741
  br i1 %101, label %102, label %107, !dbg !2742, !psr.id !2743

102:                                              ; preds = %100
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2744, !psr.id !2745
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2746, !psr.id !2747
  call void @fpsqr1271(i32* %103, i32* %104), !dbg !2748, !psr.id !2749
  br label %105, !dbg !2748, !psr.id !2750

105:                                              ; preds = %102
  %106 = add nsw i32 %.6, 1, !dbg !2751, !psr.id !2752
  call void @llvm.dbg.value(metadata i32 %106, metadata !2515, metadata !DIExpression()), !dbg !2430, !psr.id !2753
  br label %100, !dbg !2754, !llvm.loop !2755, !psr.id !2757

107:                                              ; preds = %100
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2758, !psr.id !2759
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2760, !psr.id !2761
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2762, !psr.id !2763
  call void @fpmul1271(i32* %108, i32* %109, i32* %110), !dbg !2764, !psr.id !2765
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2766, !psr.id !2767
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2768, !psr.id !2769
  call void @fpsqr1271(i32* %111, i32* %112), !dbg !2770, !psr.id !2771
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2772, !psr.id !2773
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2774, !psr.id !2775
  call void @fpmul1271(i32* %0, i32* %113, i32* %114), !dbg !2776, !psr.id !2777
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2778, !psr.id !2779
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2780, !psr.id !2781
  call void @fpsqr1271(i32* %115, i32* %116), !dbg !2782, !psr.id !2783
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2784, !psr.id !2785
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2786, !psr.id !2787
  call void @fpsqr1271(i32* %117, i32* %118), !dbg !2788, !psr.id !2789
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2790, !psr.id !2791
  call void @fpmul1271(i32* %0, i32* %119, i32* %0), !dbg !2792, !psr.id !2793
  ret void, !dbg !2794, !psr.id !2795
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subtract(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !2796 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2797, metadata !DIExpression()), !dbg !2798, !psr.id !2799
  call void @llvm.dbg.value(metadata i32* %1, metadata !2800, metadata !DIExpression()), !dbg !2798, !psr.id !2801
  call void @llvm.dbg.value(metadata i32* %2, metadata !2802, metadata !DIExpression()), !dbg !2798, !psr.id !2803
  call void @llvm.dbg.value(metadata i32 %3, metadata !2804, metadata !DIExpression()), !dbg !2798, !psr.id !2805
  call void @llvm.dbg.value(metadata i32 0, metadata !2806, metadata !DIExpression()), !dbg !2798, !psr.id !2807
  call void @llvm.dbg.value(metadata i32 0, metadata !2808, metadata !DIExpression()), !dbg !2798, !psr.id !2809
  br label %5, !dbg !2810, !psr.id !2812

5:                                                ; preds = %28, %4
  %.01 = phi i32 [ 0, %4 ], [ %29, %28 ], !dbg !2813, !psr.id !2814
  %.0 = phi i32 [ 0, %4 ], [ %24, %28 ], !dbg !2798, !psr.id !2815
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2806, metadata !DIExpression()), !dbg !2798, !psr.id !2816
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2808, metadata !DIExpression()), !dbg !2798, !psr.id !2817
  %6 = icmp ult i32 %.01, %3, !dbg !2818, !psr.id !2820
  br i1 %6, label %7, label %30, !dbg !2821, !psr.id !2822

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64, !dbg !2823, !psr.id !2826
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !2823, !psr.id !2827
  %10 = load i32, i32* %9, align 4, !dbg !2823, !psr.id !2828
  %11 = zext i32 %.01 to i64, !dbg !2823, !psr.id !2829
  %12 = getelementptr inbounds i32, i32* %1, i64 %11, !dbg !2823, !psr.id !2830
  %13 = load i32, i32* %12, align 4, !dbg !2823, !psr.id !2831
  %14 = sub i32 %10, %13, !dbg !2823, !psr.id !2832
  call void @llvm.dbg.value(metadata i32 %14, metadata !2833, metadata !DIExpression()), !dbg !2834, !psr.id !2835
  %15 = zext i32 %.01 to i64, !dbg !2823, !psr.id !2836
  %16 = getelementptr inbounds i32, i32* %0, i64 %15, !dbg !2823, !psr.id !2837
  %17 = load i32, i32* %16, align 4, !dbg !2823, !psr.id !2838
  %18 = zext i32 %.01 to i64, !dbg !2823, !psr.id !2839
  %19 = getelementptr inbounds i32, i32* %1, i64 %18, !dbg !2823, !psr.id !2840
  %20 = load i32, i32* %19, align 4, !dbg !2823, !psr.id !2841
  %21 = call i32 @is_digit_lessthan_ct(i32 %17, i32 %20), !dbg !2823, !psr.id !2842
  %22 = call i32 @is_digit_zero_ct(i32 %14), !dbg !2823, !psr.id !2843
  %23 = and i32 %.0, %22, !dbg !2823, !psr.id !2844
  %24 = or i32 %21, %23, !dbg !2823, !psr.id !2845
  call void @llvm.dbg.value(metadata i32 %24, metadata !2846, metadata !DIExpression()), !dbg !2834, !psr.id !2847
  %25 = sub i32 %14, %.0, !dbg !2823, !psr.id !2848
  %26 = zext i32 %.01 to i64, !dbg !2823, !psr.id !2849
  %27 = getelementptr inbounds i32, i32* %2, i64 %26, !dbg !2823, !psr.id !2850
  store i32 %25, i32* %27, align 4, !dbg !2823, !psr.id !2851
  call void @llvm.dbg.value(metadata i32 %24, metadata !2806, metadata !DIExpression()), !dbg !2798, !psr.id !2852
  br label %28, !dbg !2853, !psr.id !2854

28:                                               ; preds = %7
  %29 = add i32 %.01, 1, !dbg !2855, !psr.id !2856
  call void @llvm.dbg.value(metadata i32 %29, metadata !2808, metadata !DIExpression()), !dbg !2798, !psr.id !2857
  br label %5, !dbg !2858, !llvm.loop !2859, !psr.id !2861

30:                                               ; preds = %5
  ret i32 %.0, !dbg !2862, !psr.id !2863
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Montgomery_multiply(i32* %0, i32* %1, i32* %2, i32* %3) #0 !dbg !2864 {
  %5 = alloca [16 x i32], align 16, !psr.id !2867
  %6 = alloca [16 x i32], align 16, !psr.id !2868
  %7 = alloca [16 x i32], align 16, !psr.id !2869
  call void @llvm.dbg.value(metadata i32* %0, metadata !2870, metadata !DIExpression()), !dbg !2871, !psr.id !2872
  call void @llvm.dbg.value(metadata i32* %1, metadata !2873, metadata !DIExpression()), !dbg !2871, !psr.id !2874
  call void @llvm.dbg.value(metadata i32* %2, metadata !2875, metadata !DIExpression()), !dbg !2871, !psr.id !2876
  call void @llvm.dbg.value(metadata i32* %3, metadata !2877, metadata !DIExpression()), !dbg !2871, !psr.id !2878
  call void @llvm.dbg.declare(metadata [16 x i32]* %5, metadata !2879, metadata !DIExpression()), !dbg !2883, !psr.id !2884
  call void @llvm.dbg.declare(metadata [16 x i32]* %6, metadata !2885, metadata !DIExpression()), !dbg !2886, !psr.id !2887
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !2888, metadata !DIExpression()), !dbg !2889, !psr.id !2890
  call void @llvm.dbg.value(metadata i32 0, metadata !2891, metadata !DIExpression()), !dbg !2871, !psr.id !2892
  call void @llvm.dbg.value(metadata i32 0, metadata !2893, metadata !DIExpression()), !dbg !2871, !psr.id !2894
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !2895, !psr.id !2896
  call void @multiply(i32* %0, i32* %1, i32* %8), !dbg !2897, !psr.id !2898
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !2899, !psr.id !2900
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !2901, !psr.id !2902
  call void @multiply(i32* %9, i32* bitcast ([4 x i64]* @Montgomery_rprime to i32*), i32* %10), !dbg !2903, !psr.id !2904
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !2905, !psr.id !2906
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2907, !psr.id !2908
  call void @multiply(i32* %11, i32* %3, i32* %12), !dbg !2909, !psr.id !2910
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !2911, !psr.id !2912
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2913, !psr.id !2914
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2915, !psr.id !2916
  %16 = call i32 @add(i32* %13, i32* %14, i32* %15, i32 16), !dbg !2917, !psr.id !2918
  call void @llvm.dbg.value(metadata i32 %16, metadata !2891, metadata !DIExpression()), !dbg !2871, !psr.id !2919
  call void @llvm.dbg.value(metadata i32 0, metadata !2920, metadata !DIExpression()), !dbg !2871, !psr.id !2921
  br label %17, !dbg !2922, !psr.id !2924

17:                                               ; preds = %26, %4
  %.0 = phi i32 [ 0, %4 ], [ %27, %26 ], !dbg !2925, !psr.id !2926
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2920, metadata !DIExpression()), !dbg !2871, !psr.id !2927
  %18 = icmp ult i32 %.0, 8, !dbg !2928, !psr.id !2930
  br i1 %18, label %19, label %28, !dbg !2931, !psr.id !2932

19:                                               ; preds = %17
  %20 = add i32 8, %.0, !dbg !2933, !psr.id !2935
  %21 = zext i32 %20 to i64, !dbg !2936, !psr.id !2937
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %21, !dbg !2936, !psr.id !2938
  %23 = load i32, i32* %22, align 4, !dbg !2936, !psr.id !2939
  %24 = zext i32 %.0 to i64, !dbg !2940, !psr.id !2941
  %25 = getelementptr inbounds i32, i32* %2, i64 %24, !dbg !2940, !psr.id !2942
  store i32 %23, i32* %25, align 4, !dbg !2943, !psr.id !2944
  br label %26, !dbg !2945, !psr.id !2946

26:                                               ; preds = %19
  %27 = add i32 %.0, 1, !dbg !2947, !psr.id !2948
  call void @llvm.dbg.value(metadata i32 %27, metadata !2920, metadata !DIExpression()), !dbg !2871, !psr.id !2949
  br label %17, !dbg !2950, !llvm.loop !2951, !psr.id !2953

28:                                               ; preds = %17
  %29 = call i32 @subtract(i32* %2, i32* %3, i32* %2, i32 8), !dbg !2954, !psr.id !2955
  call void @llvm.dbg.value(metadata i32 %29, metadata !2893, metadata !DIExpression()), !dbg !2871, !psr.id !2956
  %30 = sub i32 %16, %29, !dbg !2957, !psr.id !2958
  call void @llvm.dbg.value(metadata i32 %30, metadata !2959, metadata !DIExpression()), !dbg !2871, !psr.id !2960
  call void @llvm.dbg.value(metadata i32 0, metadata !2920, metadata !DIExpression()), !dbg !2871, !psr.id !2961
  br label %31, !dbg !2962, !psr.id !2964

31:                                               ; preds = %40, %28
  %.1 = phi i32 [ 0, %28 ], [ %41, %40 ], !dbg !2965, !psr.id !2966
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2920, metadata !DIExpression()), !dbg !2871, !psr.id !2967
  %32 = icmp ult i32 %.1, 8, !dbg !2968, !psr.id !2970
  br i1 %32, label %33, label %42, !dbg !2971, !psr.id !2972

33:                                               ; preds = %31
  %34 = zext i32 %.1 to i64, !dbg !2973, !psr.id !2975
  %35 = getelementptr inbounds i32, i32* %3, i64 %34, !dbg !2973, !psr.id !2976
  %36 = load i32, i32* %35, align 4, !dbg !2973, !psr.id !2977
  %37 = and i32 %36, %30, !dbg !2978, !psr.id !2979
  %38 = zext i32 %.1 to i64, !dbg !2980, !psr.id !2981
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %38, !dbg !2980, !psr.id !2982
  store i32 %37, i32* %39, align 4, !dbg !2983, !psr.id !2984
  br label %40, !dbg !2985, !psr.id !2986

40:                                               ; preds = %33
  %41 = add i32 %.1, 1, !dbg !2987, !psr.id !2988
  call void @llvm.dbg.value(metadata i32 %41, metadata !2920, metadata !DIExpression()), !dbg !2871, !psr.id !2989
  br label %31, !dbg !2990, !llvm.loop !2991, !psr.id !2993

42:                                               ; preds = %31
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2994, !psr.id !2995
  %44 = call i32 @add(i32* %2, i32* %43, i32* %2, i32 8), !dbg !2996, !psr.id !2997
  ret void, !dbg !2998, !psr.id !2999
}

; Function Attrs: noinline nounwind uwtable
define internal void @multiply(i32* %0, i32* %1, i32* %2) #0 !dbg !3000 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3001, metadata !DIExpression()), !dbg !3002, !psr.id !3003
  call void @llvm.dbg.value(metadata i32* %1, metadata !3004, metadata !DIExpression()), !dbg !3002, !psr.id !3005
  call void @llvm.dbg.value(metadata i32* %2, metadata !3006, metadata !DIExpression()), !dbg !3002, !psr.id !3007
  call void @mp_mul(i32* %0, i32* %1, i32* %2, i32 8), !dbg !3008, !psr.id !3009
  ret void, !dbg !3010, !psr.id !3011
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @add(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !3012 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3013, metadata !DIExpression()), !dbg !3014, !psr.id !3015
  call void @llvm.dbg.value(metadata i32* %1, metadata !3016, metadata !DIExpression()), !dbg !3014, !psr.id !3017
  call void @llvm.dbg.value(metadata i32* %2, metadata !3018, metadata !DIExpression()), !dbg !3014, !psr.id !3019
  call void @llvm.dbg.value(metadata i32 %3, metadata !3020, metadata !DIExpression()), !dbg !3014, !psr.id !3021
  %5 = call i32 @mp_add(i32* %0, i32* %1, i32* %2, i32 %3), !dbg !3022, !psr.id !3023
  ret i32 %5, !dbg !3024, !psr.id !3025
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @modulo_order(i32* %0, i32* %1, %struct.CurveStruct* %2) #0 !dbg !3026 {
  %4 = alloca [8 x i32], align 16, !psr.id !3043
  %5 = alloca [8 x i32], align 16, !psr.id !3044
  call void @llvm.dbg.value(metadata i32* %0, metadata !3045, metadata !DIExpression()), !dbg !3046, !psr.id !3047
  call void @llvm.dbg.value(metadata i32* %1, metadata !3048, metadata !DIExpression()), !dbg !3046, !psr.id !3049
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !3050, metadata !DIExpression()), !dbg !3046, !psr.id !3051
  call void @llvm.dbg.declare(metadata [8 x i32]* %4, metadata !3052, metadata !DIExpression()), !dbg !3054, !psr.id !3055
  call void @llvm.dbg.declare(metadata [8 x i32]* %5, metadata !3056, metadata !DIExpression()), !dbg !3057, !psr.id !3058
  %6 = bitcast [8 x i32]* %5 to i8*, !dbg !3057, !psr.id !3059
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 32, i1 false), !dbg !3057, !psr.id !3060
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0, !dbg !3061, !psr.id !3062
  store i32 1, i32* %7, align 16, !dbg !3063, !psr.id !3064
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !3065, !psr.id !3066
  %9 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 5, !dbg !3067, !psr.id !3068
  %10 = bitcast [4 x i64]* %9 to i32*, !dbg !3069, !psr.id !3070
  call void @Montgomery_multiply(i32* %0, i32* bitcast ([4 x i64]* @Montgomery_Rprime to i32*), i32* %8, i32* %10), !dbg !3071, !psr.id !3072
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !3073, !psr.id !3074
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0, !dbg !3075, !psr.id !3076
  %13 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 5, !dbg !3077, !psr.id !3078
  %14 = bitcast [4 x i64]* %13 to i32*, !dbg !3079, !psr.id !3080
  call void @Montgomery_multiply(i32* %11, i32* %12, i32* %1, i32* %14), !dbg !3081, !psr.id !3082
  ret void, !dbg !3083, !psr.id !3084
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @conversion_to_odd(i32* %0, i32* %1, %struct.CurveStruct* %2) #0 !dbg !3085 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3086, metadata !DIExpression()), !dbg !3087, !psr.id !3088
  call void @llvm.dbg.value(metadata i32* %1, metadata !3089, metadata !DIExpression()), !dbg !3087, !psr.id !3090
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !3091, metadata !DIExpression()), !dbg !3087, !psr.id !3092
  %4 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 5, !dbg !3093, !psr.id !3094
  %5 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !3095, !psr.id !3096
  %6 = bitcast i64* %5 to i32*, !dbg !3097, !psr.id !3098
  call void @llvm.dbg.value(metadata i32* %6, metadata !3099, metadata !DIExpression()), !dbg !3087, !psr.id !3100
  call void @llvm.dbg.value(metadata i32 0, metadata !3101, metadata !DIExpression()), !dbg !3087, !psr.id !3102
  %7 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !3103, !psr.id !3104
  %8 = load i32, i32* %7, align 4, !dbg !3103, !psr.id !3105
  %9 = and i32 %8, 1, !dbg !3106, !psr.id !3107
  %10 = sub i32 0, %9, !dbg !3108, !psr.id !3109
  %11 = xor i32 %10, -1, !dbg !3110, !psr.id !3111
  call void @llvm.dbg.value(metadata i32 %11, metadata !3112, metadata !DIExpression()), !dbg !3087, !psr.id !3113
  call void @llvm.dbg.value(metadata i32 0, metadata !3114, metadata !DIExpression()), !dbg !3087, !psr.id !3115
  br label %12, !dbg !3116, !psr.id !3118

12:                                               ; preds = %32, %3
  %.01 = phi i32 [ 0, %3 ], [ %33, %32 ], !dbg !3119, !psr.id !3120
  %.0 = phi i32 [ 0, %3 ], [ %31, %32 ], !dbg !3087, !psr.id !3121
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3101, metadata !DIExpression()), !dbg !3087, !psr.id !3122
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3114, metadata !DIExpression()), !dbg !3087, !psr.id !3123
  %13 = icmp ult i32 %.01, 8, !dbg !3124, !psr.id !3126
  br i1 %13, label %14, label %34, !dbg !3127, !psr.id !3128

14:                                               ; preds = %12
  %15 = zext i32 %.01 to i64, !dbg !3129, !psr.id !3132
  %16 = getelementptr inbounds i32, i32* %6, i64 %15, !dbg !3129, !psr.id !3133
  %17 = load i32, i32* %16, align 4, !dbg !3129, !psr.id !3134
  %18 = and i32 %17, %11, !dbg !3129, !psr.id !3135
  %19 = add i32 %18, %.0, !dbg !3129, !psr.id !3136
  call void @llvm.dbg.value(metadata i32 %19, metadata !3137, metadata !DIExpression()), !dbg !3138, !psr.id !3139
  %20 = zext i32 %.01 to i64, !dbg !3129, !psr.id !3140
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !3129, !psr.id !3141
  %22 = load i32, i32* %21, align 4, !dbg !3129, !psr.id !3142
  %23 = add i32 %22, %19, !dbg !3129, !psr.id !3143
  %24 = zext i32 %.01 to i64, !dbg !3129, !psr.id !3144
  %25 = getelementptr inbounds i32, i32* %1, i64 %24, !dbg !3129, !psr.id !3145
  store i32 %23, i32* %25, align 4, !dbg !3129, !psr.id !3146
  %26 = call i32 @is_digit_lessthan_ct(i32 %19, i32 %.0), !dbg !3129, !psr.id !3147
  %27 = zext i32 %.01 to i64, !dbg !3129, !psr.id !3148
  %28 = getelementptr inbounds i32, i32* %1, i64 %27, !dbg !3129, !psr.id !3149
  %29 = load i32, i32* %28, align 4, !dbg !3129, !psr.id !3150
  %30 = call i32 @is_digit_lessthan_ct(i32 %29, i32 %19), !dbg !3129, !psr.id !3151
  %31 = or i32 %26, %30, !dbg !3129, !psr.id !3152
  call void @llvm.dbg.value(metadata i32 %31, metadata !3101, metadata !DIExpression()), !dbg !3087, !psr.id !3153
  br label %32, !dbg !3154, !psr.id !3155

32:                                               ; preds = %14
  %33 = add i32 %.01, 1, !dbg !3156, !psr.id !3157
  call void @llvm.dbg.value(metadata i32 %33, metadata !3114, metadata !DIExpression()), !dbg !3087, !psr.id !3158
  br label %12, !dbg !3159, !llvm.loop !3160, !psr.id !3162

34:                                               ; preds = %12
  ret void, !dbg !3163, !psr.id !3164
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpcopy1271(i32* %0, i32* %1) #0 !dbg !3165 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3166, metadata !DIExpression()), !dbg !3167, !psr.id !3168
  call void @llvm.dbg.value(metadata i32* %1, metadata !3169, metadata !DIExpression()), !dbg !3167, !psr.id !3170
  call void @llvm.dbg.value(metadata i32 0, metadata !3171, metadata !DIExpression()), !dbg !3167, !psr.id !3172
  br label %3, !dbg !3173, !psr.id !3175

3:                                                ; preds = %11, %2
  %.0 = phi i32 [ 0, %2 ], [ %12, %11 ], !dbg !3176, !psr.id !3177
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3171, metadata !DIExpression()), !dbg !3167, !psr.id !3178
  %4 = icmp ult i32 %.0, 4, !dbg !3179, !psr.id !3181
  br i1 %4, label %5, label %13, !dbg !3182, !psr.id !3183

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64, !dbg !3184, !psr.id !3185
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !3184, !psr.id !3186
  %8 = load i32, i32* %7, align 4, !dbg !3184, !psr.id !3187
  %9 = zext i32 %.0 to i64, !dbg !3188, !psr.id !3189
  %10 = getelementptr inbounds i32, i32* %1, i64 %9, !dbg !3188, !psr.id !3190
  store i32 %8, i32* %10, align 4, !dbg !3191, !psr.id !3192
  br label %11, !dbg !3188, !psr.id !3193

11:                                               ; preds = %5
  %12 = add i32 %.0, 1, !dbg !3194, !psr.id !3195
  call void @llvm.dbg.value(metadata i32 %12, metadata !3171, metadata !DIExpression()), !dbg !3167, !psr.id !3196
  br label %3, !dbg !3197, !llvm.loop !3198, !psr.id !3200

13:                                               ; preds = %3
  ret void, !dbg !3201, !psr.id !3202
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2zero1271([4 x i32]* %0) #0 !dbg !3203 {
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !3206, metadata !DIExpression()), !dbg !3207, !psr.id !3208
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3209, !psr.id !3210
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !3209, !psr.id !3211
  call void @fpzero1271(i32* %3), !dbg !3212, !psr.id !3213
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3214, !psr.id !3215
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3214, !psr.id !3216
  call void @fpzero1271(i32* %5), !dbg !3217, !psr.id !3218
  ret void, !dbg !3219, !psr.id !3220
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpzero1271(i32* %0) #0 !dbg !3221 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3222, metadata !DIExpression()), !dbg !3223, !psr.id !3224
  call void @llvm.dbg.value(metadata i32 0, metadata !3225, metadata !DIExpression()), !dbg !3223, !psr.id !3226
  br label %2, !dbg !3227, !psr.id !3229

2:                                                ; preds = %7, %1
  %.0 = phi i32 [ 0, %1 ], [ %8, %7 ], !dbg !3230, !psr.id !3231
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3225, metadata !DIExpression()), !dbg !3223, !psr.id !3232
  %3 = icmp ult i32 %.0, 4, !dbg !3233, !psr.id !3235
  br i1 %3, label %4, label %9, !dbg !3236, !psr.id !3237

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64, !dbg !3238, !psr.id !3239
  %6 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !3238, !psr.id !3240
  store i32 0, i32* %6, align 4, !dbg !3241, !psr.id !3242
  br label %7, !dbg !3238, !psr.id !3243

7:                                                ; preds = %4
  %8 = add i32 %.0, 1, !dbg !3244, !psr.id !3245
  call void @llvm.dbg.value(metadata i32 %8, metadata !3225, metadata !DIExpression()), !dbg !3223, !psr.id !3246
  br label %2, !dbg !3247, !llvm.loop !3248, !psr.id !3250

9:                                                ; preds = %2
  ret void, !dbg !3251, !psr.id !3252
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2neg1271([4 x i32]* %0) #0 !dbg !3253 {
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !3254, metadata !DIExpression()), !dbg !3255, !psr.id !3256
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3257, !psr.id !3258
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !3257, !psr.id !3259
  call void @fpneg1271(i32* %3), !dbg !3260, !psr.id !3261
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3262, !psr.id !3263
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3262, !psr.id !3264
  call void @fpneg1271(i32* %5), !dbg !3265, !psr.id !3266
  ret void, !dbg !3267, !psr.id !3268
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2sqr1271([4 x i32]* %0, [4 x i32]* %1) #0 !dbg !3269 {
  %3 = alloca [4 x i32], align 16, !psr.id !3270
  %4 = alloca [4 x i32], align 16, !psr.id !3271
  %5 = alloca [4 x i32], align 16, !psr.id !3272
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !3273, metadata !DIExpression()), !dbg !3274, !psr.id !3275
  call void @llvm.dbg.value(metadata [4 x i32]* %1, metadata !3276, metadata !DIExpression()), !dbg !3274, !psr.id !3277
  call void @llvm.dbg.declare(metadata [4 x i32]* %3, metadata !3278, metadata !DIExpression()), !dbg !3279, !psr.id !3280
  call void @llvm.dbg.declare(metadata [4 x i32]* %4, metadata !3281, metadata !DIExpression()), !dbg !3282, !psr.id !3283
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !3284, metadata !DIExpression()), !dbg !3285, !psr.id !3286
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3287, !psr.id !3288
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3287, !psr.id !3289
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3290, !psr.id !3291
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0, !dbg !3290, !psr.id !3292
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !3293, !psr.id !3294
  call void @fpadd1271(i32* %7, i32* %9, i32* %10), !dbg !3295, !psr.id !3296
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3297, !psr.id !3298
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0, !dbg !3297, !psr.id !3299
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3300, !psr.id !3301
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0, !dbg !3300, !psr.id !3302
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3303, !psr.id !3304
  call void @fpsub1271(i32* %12, i32* %14, i32* %15), !dbg !3305, !psr.id !3306
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3307, !psr.id !3308
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0, !dbg !3307, !psr.id !3309
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3310, !psr.id !3311
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0, !dbg !3310, !psr.id !3312
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3313, !psr.id !3314
  call void @fpmul1271(i32* %17, i32* %19, i32* %20), !dbg !3315, !psr.id !3316
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !3317, !psr.id !3318
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3319, !psr.id !3320
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, !dbg !3321, !psr.id !3322
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !3321, !psr.id !3323
  call void @fpmul1271(i32* %21, i32* %22, i32* %24), !dbg !3324, !psr.id !3325
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3326, !psr.id !3327
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3328, !psr.id !3329
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 1, !dbg !3330, !psr.id !3331
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0, !dbg !3330, !psr.id !3332
  call void @fpadd1271(i32* %25, i32* %26, i32* %28), !dbg !3333, !psr.id !3334
  ret void, !dbg !3335, !psr.id !3336
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpadd1271(i32* %0, i32* %1, i32* %2) #0 !dbg !3337 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3338, metadata !DIExpression()), !dbg !3339, !psr.id !3340
  call void @llvm.dbg.value(metadata i32* %1, metadata !3341, metadata !DIExpression()), !dbg !3339, !psr.id !3342
  call void @llvm.dbg.value(metadata i32* %2, metadata !3343, metadata !DIExpression()), !dbg !3339, !psr.id !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3345, metadata !DIExpression()), !dbg !3339, !psr.id !3346
  call void @llvm.dbg.value(metadata i32 0, metadata !3347, metadata !DIExpression()), !dbg !3339, !psr.id !3348
  br label %4, !dbg !3349, !psr.id !3351

4:                                                ; preds = %23, %3
  %.01 = phi i32 [ 0, %3 ], [ %24, %23 ], !dbg !3352, !psr.id !3353
  %.0 = phi i32 [ 0, %3 ], [ %22, %23 ], !dbg !3339, !psr.id !3354, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3345, metadata !DIExpression()), !dbg !3339, !psr.id !3355
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3347, metadata !DIExpression()), !dbg !3339, !psr.id !3356
  %5 = icmp ult i32 %.01, 4, !dbg !3357, !psr.id !3359
  br i1 %5, label %6, label %25, !dbg !3360, !psr.id !3361

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64, !dbg !3362, !psr.id !3365
  %8 = getelementptr inbounds i32, i32* %0, i64 %7, !dbg !3362, !psr.id !3366, !PointTainted !1712
  %9 = load i32, i32* %8, align 4, !dbg !3362, !psr.id !3367, !ValueTainted !898
  %10 = add i32 %9, %.0, !dbg !3362, !psr.id !3368, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %10, metadata !3369, metadata !DIExpression()), !dbg !3370, !psr.id !3371
  %11 = zext i32 %.01 to i64, !dbg !3362, !psr.id !3372
  %12 = getelementptr inbounds i32, i32* %1, i64 %11, !dbg !3362, !psr.id !3373, !PointTainted !1712
  %13 = load i32, i32* %12, align 4, !dbg !3362, !psr.id !3374, !ValueTainted !898
  %14 = add i32 %13, %10, !dbg !3362, !psr.id !3375, !ValueTainted !898
  %15 = zext i32 %.01 to i64, !dbg !3362, !psr.id !3376
  %16 = getelementptr inbounds i32, i32* %2, i64 %15, !dbg !3362, !psr.id !3377, !PointTainted !1712
  store i32 %14, i32* %16, align 4, !dbg !3362, !psr.id !3378
  %17 = call i32 @is_digit_lessthan_ct(i32 %10, i32 %.0), !dbg !3362, !psr.id !3379, !ValueTainted !898
  %18 = zext i32 %.01 to i64, !dbg !3362, !psr.id !3380
  %19 = getelementptr inbounds i32, i32* %2, i64 %18, !dbg !3362, !psr.id !3381
  %20 = load i32, i32* %19, align 4, !dbg !3362, !psr.id !3382, !ValueTainted !898
  %21 = call i32 @is_digit_lessthan_ct(i32 %20, i32 %10), !dbg !3362, !psr.id !3383, !ValueTainted !898
  %22 = or i32 %17, %21, !dbg !3362, !psr.id !3384, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %22, metadata !3345, metadata !DIExpression()), !dbg !3339, !psr.id !3385
  br label %23, !dbg !3386, !psr.id !3387

23:                                               ; preds = %6
  %24 = add i32 %.01, 1, !dbg !3388, !psr.id !3389
  call void @llvm.dbg.value(metadata i32 %24, metadata !3347, metadata !DIExpression()), !dbg !3339, !psr.id !3390
  br label %4, !dbg !3391, !llvm.loop !3392, !psr.id !3394

25:                                               ; preds = %4
  %26 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !3395, !psr.id !3396
  %27 = load i32, i32* %26, align 4, !dbg !3395, !psr.id !3397, !ValueTainted !898
  %28 = lshr i32 %27, 31, !dbg !3398, !psr.id !3399, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %28, metadata !3345, metadata !DIExpression()), !dbg !3339, !psr.id !3400
  %29 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !3401, !psr.id !3402
  %30 = load i32, i32* %29, align 4, !dbg !3403, !psr.id !3404, !ValueTainted !898
  %31 = and i32 %30, 2147483647, !dbg !3403, !psr.id !3405, !ValueTainted !898
  store i32 %31, i32* %29, align 4, !dbg !3403, !psr.id !3406
  call void @llvm.dbg.value(metadata i32 0, metadata !3347, metadata !DIExpression()), !dbg !3339, !psr.id !3407
  br label %32, !dbg !3408, !psr.id !3410

32:                                               ; preds = %48, %25
  %.12 = phi i32 [ 0, %25 ], [ %49, %48 ], !dbg !3411, !psr.id !3412
  %.1 = phi i32 [ %28, %25 ], [ %47, %48 ], !dbg !3339, !psr.id !3413, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3345, metadata !DIExpression()), !dbg !3339, !psr.id !3414
  call void @llvm.dbg.value(metadata i32 %.12, metadata !3347, metadata !DIExpression()), !dbg !3339, !psr.id !3415
  %33 = icmp ult i32 %.12, 4, !dbg !3416, !psr.id !3418
  br i1 %33, label %34, label %50, !dbg !3419, !psr.id !3420

34:                                               ; preds = %32
  %35 = zext i32 %.12 to i64, !dbg !3421, !psr.id !3424
  %36 = getelementptr inbounds i32, i32* %2, i64 %35, !dbg !3421, !psr.id !3425
  %37 = load i32, i32* %36, align 4, !dbg !3421, !psr.id !3426, !ValueTainted !898
  %38 = add i32 %37, %.1, !dbg !3421, !psr.id !3427, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %38, metadata !3428, metadata !DIExpression()), !dbg !3429, !psr.id !3430
  %39 = add i32 0, %38, !dbg !3421, !psr.id !3431, !ValueTainted !898
  %40 = zext i32 %.12 to i64, !dbg !3421, !psr.id !3432
  %41 = getelementptr inbounds i32, i32* %2, i64 %40, !dbg !3421, !psr.id !3433, !PointTainted !1712
  store i32 %39, i32* %41, align 4, !dbg !3421, !psr.id !3434
  %42 = call i32 @is_digit_lessthan_ct(i32 %38, i32 %.1), !dbg !3421, !psr.id !3435, !ValueTainted !898
  %43 = zext i32 %.12 to i64, !dbg !3421, !psr.id !3436
  %44 = getelementptr inbounds i32, i32* %2, i64 %43, !dbg !3421, !psr.id !3437
  %45 = load i32, i32* %44, align 4, !dbg !3421, !psr.id !3438, !ValueTainted !898
  %46 = call i32 @is_digit_lessthan_ct(i32 %45, i32 %38), !dbg !3421, !psr.id !3439, !ValueTainted !898
  %47 = or i32 %42, %46, !dbg !3421, !psr.id !3440, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %47, metadata !3345, metadata !DIExpression()), !dbg !3339, !psr.id !3441
  br label %48, !dbg !3442, !psr.id !3443

48:                                               ; preds = %34
  %49 = add i32 %.12, 1, !dbg !3444, !psr.id !3445
  call void @llvm.dbg.value(metadata i32 %49, metadata !3347, metadata !DIExpression()), !dbg !3339, !psr.id !3446
  br label %32, !dbg !3447, !llvm.loop !3448, !psr.id !3450

50:                                               ; preds = %32
  ret void, !dbg !3451, !psr.id !3452
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpsub1271(i32* %0, i32* %1, i32* %2) #0 !dbg !3453 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3454, metadata !DIExpression()), !dbg !3455, !psr.id !3456
  call void @llvm.dbg.value(metadata i32* %1, metadata !3457, metadata !DIExpression()), !dbg !3455, !psr.id !3458
  call void @llvm.dbg.value(metadata i32* %2, metadata !3459, metadata !DIExpression()), !dbg !3455, !psr.id !3460
  call void @llvm.dbg.value(metadata i32 0, metadata !3461, metadata !DIExpression()), !dbg !3455, !psr.id !3462
  call void @llvm.dbg.value(metadata i32 0, metadata !3463, metadata !DIExpression()), !dbg !3455, !psr.id !3464
  br label %4, !dbg !3465, !psr.id !3467

4:                                                ; preds = %27, %3
  %.01 = phi i32 [ 0, %3 ], [ %28, %27 ], !dbg !3468, !psr.id !3469
  %.0 = phi i32 [ 0, %3 ], [ %23, %27 ], !dbg !3455, !psr.id !3470, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3461, metadata !DIExpression()), !dbg !3455, !psr.id !3471
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3463, metadata !DIExpression()), !dbg !3455, !psr.id !3472
  %5 = icmp ult i32 %.01, 4, !dbg !3473, !psr.id !3475
  br i1 %5, label %6, label %29, !dbg !3476, !psr.id !3477

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64, !dbg !3478, !psr.id !3481
  %8 = getelementptr inbounds i32, i32* %0, i64 %7, !dbg !3478, !psr.id !3482
  %9 = load i32, i32* %8, align 4, !dbg !3478, !psr.id !3483, !ValueTainted !898
  %10 = zext i32 %.01 to i64, !dbg !3478, !psr.id !3484
  %11 = getelementptr inbounds i32, i32* %1, i64 %10, !dbg !3478, !psr.id !3485
  %12 = load i32, i32* %11, align 4, !dbg !3478, !psr.id !3486, !ValueTainted !898
  %13 = sub i32 %9, %12, !dbg !3478, !psr.id !3487, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %13, metadata !3488, metadata !DIExpression()), !dbg !3489, !psr.id !3490
  %14 = zext i32 %.01 to i64, !dbg !3478, !psr.id !3491
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !3478, !psr.id !3492
  %16 = load i32, i32* %15, align 4, !dbg !3478, !psr.id !3493
  %17 = zext i32 %.01 to i64, !dbg !3478, !psr.id !3494
  %18 = getelementptr inbounds i32, i32* %1, i64 %17, !dbg !3478, !psr.id !3495
  %19 = load i32, i32* %18, align 4, !dbg !3478, !psr.id !3496
  %20 = call i32 @is_digit_lessthan_ct(i32 %16, i32 %19), !dbg !3478, !psr.id !3497, !ValueTainted !898
  %21 = call i32 @is_digit_zero_ct(i32 %13), !dbg !3478, !psr.id !3498, !ValueTainted !898
  %22 = and i32 %.0, %21, !dbg !3478, !psr.id !3499, !ValueTainted !898
  %23 = or i32 %20, %22, !dbg !3478, !psr.id !3500, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %23, metadata !3501, metadata !DIExpression()), !dbg !3489, !psr.id !3502
  %24 = sub i32 %13, %.0, !dbg !3478, !psr.id !3503, !ValueTainted !898
  %25 = zext i32 %.01 to i64, !dbg !3478, !psr.id !3504
  %26 = getelementptr inbounds i32, i32* %2, i64 %25, !dbg !3478, !psr.id !3505, !PointTainted !1712
  store i32 %24, i32* %26, align 4, !dbg !3478, !psr.id !3506
  call void @llvm.dbg.value(metadata i32 %23, metadata !3461, metadata !DIExpression()), !dbg !3455, !psr.id !3507
  br label %27, !dbg !3508, !psr.id !3509

27:                                               ; preds = %6
  %28 = add i32 %.01, 1, !dbg !3510, !psr.id !3511
  call void @llvm.dbg.value(metadata i32 %28, metadata !3463, metadata !DIExpression()), !dbg !3455, !psr.id !3512
  br label %4, !dbg !3513, !llvm.loop !3514, !psr.id !3516

29:                                               ; preds = %4
  %30 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !3517, !psr.id !3518, !PointTainted !1712
  %31 = load i32, i32* %30, align 4, !dbg !3517, !psr.id !3519, !ValueTainted !898
  %32 = lshr i32 %31, 31, !dbg !3520, !psr.id !3521, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %32, metadata !3461, metadata !DIExpression()), !dbg !3455, !psr.id !3522
  %33 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !3523, !psr.id !3524, !PointTainted !1712
  %34 = load i32, i32* %33, align 4, !dbg !3525, !psr.id !3526, !ValueTainted !898
  %35 = and i32 %34, 2147483647, !dbg !3525, !psr.id !3527, !ValueTainted !898
  store i32 %35, i32* %33, align 4, !dbg !3525, !psr.id !3528
  call void @llvm.dbg.value(metadata i32 0, metadata !3463, metadata !DIExpression()), !dbg !3455, !psr.id !3529
  br label %36, !dbg !3530, !psr.id !3532

36:                                               ; preds = %53, %29
  %.12 = phi i32 [ 0, %29 ], [ %54, %53 ], !dbg !3533, !psr.id !3534
  %.1 = phi i32 [ %32, %29 ], [ %49, %53 ], !dbg !3455, !psr.id !3535, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3461, metadata !DIExpression()), !dbg !3455, !psr.id !3536
  call void @llvm.dbg.value(metadata i32 %.12, metadata !3463, metadata !DIExpression()), !dbg !3455, !psr.id !3537
  %37 = icmp ult i32 %.12, 4, !dbg !3538, !psr.id !3540
  br i1 %37, label %38, label %55, !dbg !3541, !psr.id !3542

38:                                               ; preds = %36
  %39 = zext i32 %.12 to i64, !dbg !3543, !psr.id !3546
  %40 = getelementptr inbounds i32, i32* %2, i64 %39, !dbg !3543, !psr.id !3547, !PointTainted !1712
  %41 = load i32, i32* %40, align 4, !dbg !3543, !psr.id !3548, !ValueTainted !898
  %42 = sub i32 %41, 0, !dbg !3543, !psr.id !3549, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %42, metadata !3550, metadata !DIExpression()), !dbg !3551, !psr.id !3552
  %43 = zext i32 %.12 to i64, !dbg !3543, !psr.id !3553
  %44 = getelementptr inbounds i32, i32* %2, i64 %43, !dbg !3543, !psr.id !3554, !PointTainted !1712
  %45 = load i32, i32* %44, align 4, !dbg !3543, !psr.id !3555
  %46 = call i32 @is_digit_lessthan_ct(i32 %45, i32 0), !dbg !3543, !psr.id !3556, !ValueTainted !898
  %47 = call i32 @is_digit_zero_ct(i32 %42), !dbg !3543, !psr.id !3557, !ValueTainted !898
  %48 = and i32 %.1, %47, !dbg !3543, !psr.id !3558, !ValueTainted !898
  %49 = or i32 %46, %48, !dbg !3543, !psr.id !3559, !ValueTainted !898
  call void @llvm.dbg.value(metadata i32 %49, metadata !3560, metadata !DIExpression()), !dbg !3551, !psr.id !3561
  %50 = sub i32 %42, %.1, !dbg !3543, !psr.id !3562, !ValueTainted !898
  %51 = zext i32 %.12 to i64, !dbg !3543, !psr.id !3563
  %52 = getelementptr inbounds i32, i32* %2, i64 %51, !dbg !3543, !psr.id !3564, !PointTainted !1712
  store i32 %50, i32* %52, align 4, !dbg !3543, !psr.id !3565
  call void @llvm.dbg.value(metadata i32 %49, metadata !3461, metadata !DIExpression()), !dbg !3455, !psr.id !3566
  br label %53, !dbg !3567, !psr.id !3568

53:                                               ; preds = %38
  %54 = add i32 %.12, 1, !dbg !3569, !psr.id !3570
  call void @llvm.dbg.value(metadata i32 %54, metadata !3463, metadata !DIExpression()), !dbg !3455, !psr.id !3571
  br label %36, !dbg !3572, !llvm.loop !3573, !psr.id !3575

55:                                               ; preds = %36
  ret void, !dbg !3576, !psr.id !3577
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2mul1271([4 x i32]* %0, [4 x i32]* %1, [4 x i32]* %2) #0 !dbg !3578 {
  %4 = alloca [4 x i32], align 16, !psr.id !3581
  %5 = alloca [4 x i32], align 16, !psr.id !3582
  %6 = alloca [4 x i32], align 16, !psr.id !3583
  %7 = alloca [4 x i32], align 16, !psr.id !3584
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !3585, metadata !DIExpression()), !dbg !3586, !psr.id !3587
  call void @llvm.dbg.value(metadata [4 x i32]* %1, metadata !3588, metadata !DIExpression()), !dbg !3586, !psr.id !3589
  call void @llvm.dbg.value(metadata [4 x i32]* %2, metadata !3590, metadata !DIExpression()), !dbg !3586, !psr.id !3591
  call void @llvm.dbg.declare(metadata [4 x i32]* %4, metadata !3592, metadata !DIExpression()), !dbg !3593, !psr.id !3594
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !3595, metadata !DIExpression()), !dbg !3596, !psr.id !3597
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !3598, metadata !DIExpression()), !dbg !3599, !psr.id !3600
  call void @llvm.dbg.declare(metadata [4 x i32]* %7, metadata !3601, metadata !DIExpression()), !dbg !3602, !psr.id !3603
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3604, !psr.id !3605, !PointTainted !1712
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0, !dbg !3604, !psr.id !3606, !PointTainted !1712
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, !dbg !3607, !psr.id !3608, !PointTainted !1712
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0, !dbg !3607, !psr.id !3609, !PointTainted !1712
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3610, !psr.id !3611
  call void @fpmul1271(i32* %9, i32* %11, i32* %12), !dbg !3612, !psr.id !3613
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3614, !psr.id !3615, !PointTainted !1712
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0, !dbg !3614, !psr.id !3616, !PointTainted !1712
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 1, !dbg !3617, !psr.id !3618, !PointTainted !1712
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0, !dbg !3617, !psr.id !3619, !PointTainted !1712
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3620, !psr.id !3621
  call void @fpmul1271(i32* %14, i32* %16, i32* %17), !dbg !3622, !psr.id !3623
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3624, !psr.id !3625, !PointTainted !1712
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0, !dbg !3624, !psr.id !3626, !PointTainted !1712
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3627, !psr.id !3628, !PointTainted !1712
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0, !dbg !3627, !psr.id !3629, !PointTainted !1712
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3630, !psr.id !3631
  call void @fpadd1271(i32* %19, i32* %21, i32* %22), !dbg !3632, !psr.id !3633
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, !dbg !3634, !psr.id !3635, !PointTainted !1712
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !3634, !psr.id !3636, !PointTainted !1712
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 1, !dbg !3637, !psr.id !3638, !PointTainted !1712
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0, !dbg !3637, !psr.id !3639, !PointTainted !1712
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !3640, !psr.id !3641
  call void @fpadd1271(i32* %24, i32* %26, i32* %27), !dbg !3642, !psr.id !3643
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3644, !psr.id !3645
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3646, !psr.id !3647
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, !dbg !3648, !psr.id !3649, !PointTainted !1712
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0, !dbg !3648, !psr.id !3650, !PointTainted !1712
  call void @fpsub1271(i32* %28, i32* %29, i32* %31), !dbg !3651, !psr.id !3652
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3653, !psr.id !3654
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !3655, !psr.id !3656
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3657, !psr.id !3658
  call void @fpmul1271(i32* %32, i32* %33, i32* %34), !dbg !3659, !psr.id !3660
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3661, !psr.id !3662
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3663, !psr.id !3664
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3665, !psr.id !3666
  call void @fpsub1271(i32* %35, i32* %36, i32* %37), !dbg !3667, !psr.id !3668
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3669, !psr.id !3670
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3671, !psr.id !3672
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 1, !dbg !3673, !psr.id !3674, !PointTainted !1712
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i64 0, i64 0, !dbg !3673, !psr.id !3675, !PointTainted !1712
  call void @fpsub1271(i32* %38, i32* %39, i32* %41), !dbg !3676, !psr.id !3677
  ret void, !dbg !3678, !psr.id !3679
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2inv1271([4 x i32]* %0) #0 !dbg !3680 {
  %2 = alloca [2 x [4 x i32]], align 16, !psr.id !3681
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !3682, metadata !DIExpression()), !dbg !3683, !psr.id !3684
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %2, metadata !3685, metadata !DIExpression()), !dbg !3686, !psr.id !3687
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3688, !psr.id !3689, !PointTainted !1712
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !3688, !psr.id !3690, !PointTainted !1712
  %5 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3691, !psr.id !3692
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3691, !psr.id !3693
  call void @fpsqr1271(i32* %4, i32* %6), !dbg !3694, !psr.id !3695
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3696, !psr.id !3697, !PointTainted !1712
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !3696, !psr.id !3698, !PointTainted !1712
  %9 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 1, !dbg !3699, !psr.id !3700
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0, !dbg !3699, !psr.id !3701
  call void @fpsqr1271(i32* %8, i32* %10), !dbg !3702, !psr.id !3703
  %11 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3704, !psr.id !3705
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0, !dbg !3704, !psr.id !3706
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 1, !dbg !3707, !psr.id !3708
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0, !dbg !3707, !psr.id !3709
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3710, !psr.id !3711
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0, !dbg !3710, !psr.id !3712
  call void @fpadd1271(i32* %12, i32* %14, i32* %16), !dbg !3713, !psr.id !3714
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3715, !psr.id !3716
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0, !dbg !3715, !psr.id !3717
  call void @fpinv1271(i32* %18), !dbg !3718, !psr.id !3719
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3720, !psr.id !3721, !PointTainted !1712
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0, !dbg !3720, !psr.id !3722, !PointTainted !1712
  call void @fpneg1271(i32* %20), !dbg !3723, !psr.id !3724
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3725, !psr.id !3726, !PointTainted !1712
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0, !dbg !3725, !psr.id !3727, !PointTainted !1712
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3728, !psr.id !3729
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !3728, !psr.id !3730
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3731, !psr.id !3732, !PointTainted !1712
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0, !dbg !3731, !psr.id !3733, !PointTainted !1712
  call void @fpmul1271(i32* %22, i32* %24, i32* %26), !dbg !3734, !psr.id !3735
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3736, !psr.id !3737, !PointTainted !1712
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0, !dbg !3736, !psr.id !3738, !PointTainted !1712
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3739, !psr.id !3740
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0, !dbg !3739, !psr.id !3741
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3742, !psr.id !3743, !PointTainted !1712
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0, !dbg !3742, !psr.id !3744, !PointTainted !1712
  call void @fpmul1271(i32* %28, i32* %30, i32* %32), !dbg !3745, !psr.id !3746
  ret void, !dbg !3747, !psr.id !3748
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccset(%struct.point_affine* %0, %struct.CurveStruct* %1) #0 !dbg !3749 {
  call void @llvm.dbg.value(metadata %struct.point_affine* %0, metadata !3758, metadata !DIExpression()), !dbg !3759, !psr.id !3760
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %1, metadata !3761, metadata !DIExpression()), !dbg !3759, !psr.id !3762
  %3 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %1, i32 0, i32 6, !dbg !3763, !psr.id !3764
  %4 = bitcast [4 x i64]* %3 to [4 x i32]*, !dbg !3765, !psr.id !3766
  %5 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %0, i32 0, i32 0, !dbg !3767, !psr.id !3768
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !3769, !psr.id !3770
  call void @fp2copy1271([4 x i32]* %4, [4 x i32]* %6), !dbg !3771, !psr.id !3772
  %7 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %1, i32 0, i32 7, !dbg !3773, !psr.id !3774
  %8 = bitcast [4 x i64]* %7 to [4 x i32]*, !dbg !3775, !psr.id !3776
  %9 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %0, i32 0, i32 1, !dbg !3777, !psr.id !3778
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !3779, !psr.id !3780
  call void @fp2copy1271([4 x i32]* %8, [4 x i32]* %10), !dbg !3781, !psr.id !3782
  ret void, !dbg !3783, !psr.id !3784
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccnorm(%struct.point_extproj* %0, %struct.point_affine* %1) #0 !dbg !3785 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !3797, metadata !DIExpression()), !dbg !3798, !psr.id !3799
  call void @llvm.dbg.value(metadata %struct.point_affine* %1, metadata !3800, metadata !DIExpression()), !dbg !3798, !psr.id !3801
  %3 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !3802, !psr.id !3803, !PointTainted !1712
  %4 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !3804, !psr.id !3805, !PointTainted !1712
  call void @fp2inv1271([4 x i32]* %4), !dbg !3806, !psr.id !3807
  %5 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !3808, !psr.id !3809, !PointTainted !1712
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !3810, !psr.id !3811, !PointTainted !1712
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !3812, !psr.id !3813, !PointTainted !1712
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !3814, !psr.id !3815, !PointTainted !1712
  %9 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 0, !dbg !3816, !psr.id !3817, !PointTainted !1712
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !3818, !psr.id !3819, !PointTainted !1712
  call void @fp2mul1271([4 x i32]* %6, [4 x i32]* %8, [4 x i32]* %10), !dbg !3820, !psr.id !3821
  %11 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !3822, !psr.id !3823, !PointTainted !1712
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !3824, !psr.id !3825, !PointTainted !1712
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !3826, !psr.id !3827, !PointTainted !1712
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !3828, !psr.id !3829, !PointTainted !1712
  %15 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 1, !dbg !3830, !psr.id !3831, !PointTainted !1712
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %15, i64 0, i64 0, !dbg !3832, !psr.id !3833, !PointTainted !1712
  call void @fp2mul1271([4 x i32]* %12, [4 x i32]* %14, [4 x i32]* %16), !dbg !3834, !psr.id !3835
  %17 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 0, !dbg !3836, !psr.id !3837, !PointTainted !1712
  %18 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %17, i64 0, i64 0, !dbg !3838, !psr.id !3839, !PointTainted !1712
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0, !dbg !3838, !psr.id !3840, !PointTainted !1712
  call void @mod1271(i32* %19), !dbg !3841, !psr.id !3842
  %20 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 0, !dbg !3843, !psr.id !3844, !PointTainted !1712
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %20, i64 0, i64 1, !dbg !3845, !psr.id !3846, !PointTainted !1712
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0, !dbg !3845, !psr.id !3847, !PointTainted !1712
  call void @mod1271(i32* %22), !dbg !3848, !psr.id !3849
  %23 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 1, !dbg !3850, !psr.id !3851, !PointTainted !1712
  %24 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %23, i64 0, i64 0, !dbg !3852, !psr.id !3853, !PointTainted !1712
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0, !dbg !3852, !psr.id !3854, !PointTainted !1712
  call void @mod1271(i32* %25), !dbg !3855, !psr.id !3856
  %26 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 1, !dbg !3857, !psr.id !3858, !PointTainted !1712
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 1, !dbg !3859, !psr.id !3860, !PointTainted !1712
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0, !dbg !3859, !psr.id !3861, !PointTainted !1712
  call void @mod1271(i32* %28), !dbg !3862, !psr.id !3863
  ret void, !dbg !3864, !psr.id !3865
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @R1_to_R2(%struct.point_extproj* %0, %struct.point_extproj_precomp* %1, %struct.CurveStruct* %2) #0 !dbg !3866 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !3869, metadata !DIExpression()), !dbg !3870, !psr.id !3871
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %1, metadata !3872, metadata !DIExpression()), !dbg !3870, !psr.id !3873
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !3874, metadata !DIExpression()), !dbg !3870, !psr.id !3875
  %4 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 3, !dbg !3876, !psr.id !3877
  %5 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !3878, !psr.id !3879
  %6 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 3, !dbg !3880, !psr.id !3881
  %7 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %6, i64 0, i64 0, !dbg !3882, !psr.id !3883
  %8 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !3884, !psr.id !3885
  %9 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %8, i64 0, i64 0, !dbg !3886, !psr.id !3887
  call void @fp2add1271([4 x i32]* %5, [4 x i32]* %7, [4 x i32]* %9), !dbg !3888, !psr.id !3889
  %10 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !3890, !psr.id !3891
  %11 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %10, i64 0, i64 0, !dbg !3892, !psr.id !3893
  %12 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !3894, !psr.id !3895
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %12, i64 0, i64 0, !dbg !3896, !psr.id !3897
  %14 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 0, !dbg !3898, !psr.id !3899
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0, !dbg !3900, !psr.id !3901
  call void @fp2add1271([4 x i32]* %11, [4 x i32]* %13, [4 x i32]* %15), !dbg !3902, !psr.id !3903
  %16 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !3904, !psr.id !3905
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %16, i64 0, i64 0, !dbg !3906, !psr.id !3907
  %18 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !3908, !psr.id !3909
  %19 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %18, i64 0, i64 0, !dbg !3910, !psr.id !3911
  %20 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 1, !dbg !3912, !psr.id !3913
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %20, i64 0, i64 0, !dbg !3914, !psr.id !3915
  call void @fp2sub1271([4 x i32]* %17, [4 x i32]* %19, [4 x i32]* %21), !dbg !3916, !psr.id !3917
  %22 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !3918, !psr.id !3919
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %22, i64 0, i64 0, !dbg !3920, !psr.id !3921
  %24 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 4, !dbg !3922, !psr.id !3923
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %24, i64 0, i64 0, !dbg !3924, !psr.id !3925
  %26 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !3926, !psr.id !3927
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !3928, !psr.id !3929
  call void @fp2mul1271([4 x i32]* %23, [4 x i32]* %25, [4 x i32]* %27), !dbg !3930, !psr.id !3931
  %28 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !3932, !psr.id !3933
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %28, i64 0, i64 0, !dbg !3934, !psr.id !3935
  %30 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !3936, !psr.id !3937
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %30, i64 0, i64 0, !dbg !3938, !psr.id !3939
  %32 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 2, !dbg !3940, !psr.id !3941
  %33 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %32, i64 0, i64 0, !dbg !3942, !psr.id !3943
  call void @fp2add1271([4 x i32]* %29, [4 x i32]* %31, [4 x i32]* %33), !dbg !3944, !psr.id !3945
  %34 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !3946, !psr.id !3947
  %35 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %34, i64 0, i64 0, !dbg !3948, !psr.id !3949
  %36 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 4, !dbg !3950, !psr.id !3951
  %37 = bitcast [4 x i64]* %36 to [4 x i32]*, !dbg !3952, !psr.id !3953
  %38 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !3954, !psr.id !3955
  %39 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %38, i64 0, i64 0, !dbg !3956, !psr.id !3957
  call void @fp2mul1271([4 x i32]* %35, [4 x i32]* %37, [4 x i32]* %39), !dbg !3958, !psr.id !3959
  ret void, !dbg !3960, !psr.id !3961
}

declare dso_local void @fp2add1271([4 x i32]*, [4 x i32]*, [4 x i32]*) #2

declare dso_local void @fp2sub1271([4 x i32]*, [4 x i32]*, [4 x i32]*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @R1_to_R2_ni(%struct.point_extproj* %0, %struct.point_extproj_precomp* %1, %struct.CurveStruct* %2) #0 !dbg !3962 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !3963, metadata !DIExpression()), !dbg !3964, !psr.id !3965
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %1, metadata !3966, metadata !DIExpression()), !dbg !3964, !psr.id !3967
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !3968, metadata !DIExpression()), !dbg !3964, !psr.id !3969
  call void @R1_to_R2(%struct.point_extproj* %0, %struct.point_extproj_precomp* %1, %struct.CurveStruct* %2), !dbg !3970, !psr.id !3971
  ret void, !dbg !3972, !psr.id !3973
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @R2_to_R4(%struct.point_extproj_precomp* %0, %struct.point_extproj* %1) #0 !dbg !3974 {
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %0, metadata !3977, metadata !DIExpression()), !dbg !3978, !psr.id !3979
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !3980, metadata !DIExpression()), !dbg !3978, !psr.id !3981
  %3 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 0, !dbg !3982, !psr.id !3983
  %4 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !3984, !psr.id !3985
  %5 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 1, !dbg !3986, !psr.id !3987
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !3988, !psr.id !3989
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !3990, !psr.id !3991
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !3992, !psr.id !3993
  call void @fp2sub1271([4 x i32]* %4, [4 x i32]* %6, [4 x i32]* %8), !dbg !3994, !psr.id !3995
  %9 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 0, !dbg !3996, !psr.id !3997
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !3998, !psr.id !3999
  %11 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 1, !dbg !4000, !psr.id !4001
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !4002, !psr.id !4003
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !4004, !psr.id !4005
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !4006, !psr.id !4007
  call void @fp2add1271([4 x i32]* %10, [4 x i32]* %12, [4 x i32]* %14), !dbg !4008, !psr.id !4009
  %15 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 2, !dbg !4010, !psr.id !4011
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %15, i64 0, i64 0, !dbg !4012, !psr.id !4013
  %17 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4014, !psr.id !4015
  %18 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %17, i64 0, i64 0, !dbg !4016, !psr.id !4017
  call void @fp2copy1271([4 x i32]* %16, [4 x i32]* %18), !dbg !4018, !psr.id !4019
  ret void, !dbg !4020, !psr.id !4021
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccadd_ni(%struct.point_extproj_precomp* %0, %struct.point_extproj* %1) #0 !dbg !4022 {
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %0, metadata !4023, metadata !DIExpression()), !dbg !4024, !psr.id !4025
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !4026, metadata !DIExpression()), !dbg !4024, !psr.id !4027
  call void @eccadd(%struct.point_extproj_precomp* %0, %struct.point_extproj* %1), !dbg !4028, !psr.id !4029
  ret void, !dbg !4030, !psr.id !4031
}

declare dso_local void @eccadd(%struct.point_extproj_precomp*, %struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccdouble_ni(%struct.point_extproj* %0) #0 !dbg !4032 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !4035, metadata !DIExpression()), !dbg !4036, !psr.id !4037
  call void @eccdouble(%struct.point_extproj* %0), !dbg !4038, !psr.id !4039
  ret void, !dbg !4040, !psr.id !4041
}

declare dso_local void @eccdouble(%struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @point_setup_ni(%struct.point_affine* %0, %struct.point_extproj* %1) #0 !dbg !4042 {
  call void @llvm.dbg.value(metadata %struct.point_affine* %0, metadata !4045, metadata !DIExpression()), !dbg !4046, !psr.id !4047
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !4048, metadata !DIExpression()), !dbg !4046, !psr.id !4049
  call void @point_setup(%struct.point_affine* %0, %struct.point_extproj* %1), !dbg !4050, !psr.id !4051
  ret void, !dbg !4052, !psr.id !4053
}

declare dso_local void @point_setup(%struct.point_affine*, %struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ecc_point_validate(%struct.point_extproj* %0, %struct.CurveStruct* %1) #0 !dbg !4054 {
  %3 = alloca [2 x [4 x i32]], align 16, !psr.id !4058
  %4 = alloca [2 x [4 x i32]], align 16, !psr.id !4059
  %5 = alloca [2 x [4 x i32]], align 16, !psr.id !4060
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !4061, metadata !DIExpression()), !dbg !4062, !psr.id !4063
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %1, metadata !4064, metadata !DIExpression()), !dbg !4062, !psr.id !4065
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %3, metadata !4066, metadata !DIExpression()), !dbg !4067, !psr.id !4068
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %4, metadata !4069, metadata !DIExpression()), !dbg !4070, !psr.id !4071
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %5, metadata !4072, metadata !DIExpression()), !dbg !4073, !psr.id !4074
  %6 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !4075, !psr.id !4076
  %7 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %6, i64 0, i64 0, !dbg !4077, !psr.id !4078
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4079, !psr.id !4080
  call void @fp2sqr1271([4 x i32]* %7, [4 x i32]* %8), !dbg !4081, !psr.id !4082
  %9 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !4083, !psr.id !4084
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !4085, !psr.id !4086
  %11 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4087, !psr.id !4088
  call void @fp2sqr1271([4 x i32]* %10, [4 x i32]* %11), !dbg !4089, !psr.id !4090
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4091, !psr.id !4092
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4093, !psr.id !4094
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !4095, !psr.id !4096
  call void @fp2sub1271([4 x i32]* %12, [4 x i32]* %13, [4 x i32]* %14), !dbg !4097, !psr.id !4098
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4099, !psr.id !4100
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4101, !psr.id !4102
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4103, !psr.id !4104
  call void @fp2mul1271([4 x i32]* %15, [4 x i32]* %16, [4 x i32]* %17), !dbg !4105, !psr.id !4106
  %18 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %1, i32 0, i32 4, !dbg !4107, !psr.id !4108
  %19 = bitcast [4 x i64]* %18 to [4 x i32]*, !dbg !4109, !psr.id !4110
  %20 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4111, !psr.id !4112
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4113, !psr.id !4114
  call void @fp2mul1271([4 x i32]* %19, [4 x i32]* %20, [4 x i32]* %21), !dbg !4115, !psr.id !4116
  %22 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4117, !psr.id !4118
  call void @fp2zero1271([4 x i32]* %22), !dbg !4119, !psr.id !4120
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4121, !psr.id !4122
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !4121, !psr.id !4123
  store i32 1, i32* %24, align 16, !dbg !4124, !psr.id !4125
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4126, !psr.id !4127
  %26 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4128, !psr.id !4129
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4130, !psr.id !4131
  call void @fp2add1271([4 x i32]* %25, [4 x i32]* %26, [4 x i32]* %27), !dbg !4132, !psr.id !4133
  %28 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !4134, !psr.id !4135
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4136, !psr.id !4137
  %30 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4138, !psr.id !4139
  call void @fp2sub1271([4 x i32]* %28, [4 x i32]* %29, [4 x i32]* %30), !dbg !4140, !psr.id !4141
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4142, !psr.id !4143
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0, !dbg !4142, !psr.id !4144
  %33 = load i32, i32* %32, align 16, !dbg !4142, !psr.id !4145
  %34 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4146, !psr.id !4147
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0, i64 1, !dbg !4146, !psr.id !4148
  %36 = load i32, i32* %35, align 4, !dbg !4146, !psr.id !4149
  %37 = or i32 %33, %36, !dbg !4150, !psr.id !4151
  %38 = call i32 @is_digit_zero_ct(i32 %37), !dbg !4152, !psr.id !4153
  %39 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4154, !psr.id !4155
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0, !dbg !4154, !psr.id !4156
  %41 = load i32, i32* %40, align 16, !dbg !4154, !psr.id !4157
  %42 = add i32 %41, 1, !dbg !4158, !psr.id !4159
  %43 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4160, !psr.id !4161
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i64 0, i64 1, !dbg !4160, !psr.id !4162
  %45 = load i32, i32* %44, align 4, !dbg !4160, !psr.id !4163
  %46 = add i32 %45, 1, !dbg !4164, !psr.id !4165
  %47 = or i32 %42, %46, !dbg !4166, !psr.id !4167
  %48 = call i32 @is_digit_zero_ct(i32 %47), !dbg !4168, !psr.id !4169
  %49 = or i32 %38, %48, !dbg !4170, !psr.id !4171
  %50 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !4172, !psr.id !4173
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0, !dbg !4172, !psr.id !4174
  %52 = load i32, i32* %51, align 16, !dbg !4172, !psr.id !4175
  %53 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !4176, !psr.id !4177
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i64 0, i64 1, !dbg !4176, !psr.id !4178
  %55 = load i32, i32* %54, align 4, !dbg !4176, !psr.id !4179
  %56 = or i32 %52, %55, !dbg !4180, !psr.id !4181
  %57 = call i32 @is_digit_zero_ct(i32 %56), !dbg !4182, !psr.id !4183
  %58 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !4184, !psr.id !4185
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %58, i64 0, i64 0, !dbg !4184, !psr.id !4186
  %60 = load i32, i32* %59, align 16, !dbg !4184, !psr.id !4187
  %61 = add i32 %60, 1, !dbg !4188, !psr.id !4189
  %62 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !4190, !psr.id !4191
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 1, !dbg !4190, !psr.id !4192
  %64 = load i32, i32* %63, align 4, !dbg !4190, !psr.id !4193
  %65 = add i32 %64, 1, !dbg !4194, !psr.id !4195
  %66 = or i32 %61, %65, !dbg !4196, !psr.id !4197
  %67 = call i32 @is_digit_zero_ct(i32 %66), !dbg !4198, !psr.id !4199
  %68 = or i32 %57, %67, !dbg !4200, !psr.id !4201
  %69 = and i32 %49, %68, !dbg !4202, !psr.id !4203
  %70 = icmp ne i32 %69, 0, !dbg !4204, !psr.id !4205
  ret i1 %70, !dbg !4206, !psr.id !4207
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccmadd_ni(%struct.point_precomp* %0, %struct.point_extproj* %1) #0 !dbg !4208 {
  call void @llvm.dbg.value(metadata %struct.point_precomp* %0, metadata !4211, metadata !DIExpression()), !dbg !4212, !psr.id !4213
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !4214, metadata !DIExpression()), !dbg !4212, !psr.id !4215
  call void @eccmadd(%struct.point_precomp* %0, %struct.point_extproj* %1), !dbg !4216, !psr.id !4217
  ret void, !dbg !4218, !psr.id !4219
}

; Function Attrs: noinline nounwind uwtable
define internal void @eccmadd(%struct.point_precomp* %0, %struct.point_extproj* %1) #0 !dbg !4220 {
  %3 = alloca [2 x [4 x i32]], align 16, !psr.id !4221
  %4 = alloca [2 x [4 x i32]], align 16, !psr.id !4222
  call void @llvm.dbg.value(metadata %struct.point_precomp* %0, metadata !4223, metadata !DIExpression()), !dbg !4224, !psr.id !4225
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !4226, metadata !DIExpression()), !dbg !4224, !psr.id !4227
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %3, metadata !4228, metadata !DIExpression()), !dbg !4229, !psr.id !4230
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %4, metadata !4231, metadata !DIExpression()), !dbg !4232, !psr.id !4233
  %5 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4234, !psr.id !4235
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !4236, !psr.id !4237
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !4238, !psr.id !4239
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !4240, !psr.id !4241
  %9 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4242, !psr.id !4243
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !4244, !psr.id !4245
  call void @fp2mul1271([4 x i32]* %6, [4 x i32]* %8, [4 x i32]* %10), !dbg !4246, !psr.id !4247
  %11 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4248, !psr.id !4249
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !4250, !psr.id !4251
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4252, !psr.id !4253
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !4254, !psr.id !4255
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4256, !psr.id !4257
  call void @fp2add1271([4 x i32]* %12, [4 x i32]* %14, [4 x i32]* %15), !dbg !4258, !psr.id !4259
  %16 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4260, !psr.id !4261
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %16, i64 0, i64 0, !dbg !4262, !psr.id !4263
  %18 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 2, !dbg !4264, !psr.id !4265
  %19 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %18, i64 0, i64 0, !dbg !4266, !psr.id !4267
  %20 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4268, !psr.id !4269
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %20, i64 0, i64 0, !dbg !4270, !psr.id !4271
  call void @fp2mul1271([4 x i32]* %17, [4 x i32]* %19, [4 x i32]* %21), !dbg !4272, !psr.id !4273
  %22 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4274, !psr.id !4275
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %22, i64 0, i64 0, !dbg !4276, !psr.id !4277
  %24 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !4278, !psr.id !4279
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %24, i64 0, i64 0, !dbg !4280, !psr.id !4281
  %26 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4282, !psr.id !4283
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !4284, !psr.id !4285
  call void @fp2add1271([4 x i32]* %23, [4 x i32]* %25, [4 x i32]* %27), !dbg !4286, !psr.id !4287
  %28 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !4288, !psr.id !4289
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %28, i64 0, i64 0, !dbg !4290, !psr.id !4291
  %30 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4292, !psr.id !4293
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %30, i64 0, i64 0, !dbg !4294, !psr.id !4295
  %32 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !4296, !psr.id !4297
  %33 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %32, i64 0, i64 0, !dbg !4298, !psr.id !4299
  call void @fp2sub1271([4 x i32]* %29, [4 x i32]* %31, [4 x i32]* %33), !dbg !4300, !psr.id !4301
  %34 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4302, !psr.id !4303
  %35 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4304, !psr.id !4305
  %36 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %35, i64 0, i64 0, !dbg !4306, !psr.id !4307
  %37 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4308, !psr.id !4309
  call void @fp2sub1271([4 x i32]* %34, [4 x i32]* %36, [4 x i32]* %37), !dbg !4310, !psr.id !4311
  %38 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4312, !psr.id !4313
  %39 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4314, !psr.id !4315
  %40 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %39, i64 0, i64 0, !dbg !4316, !psr.id !4317
  %41 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4318, !psr.id !4319
  call void @fp2add1271([4 x i32]* %38, [4 x i32]* %40, [4 x i32]* %41), !dbg !4320, !psr.id !4321
  %42 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 0, !dbg !4322, !psr.id !4323
  %43 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %42, i64 0, i64 0, !dbg !4324, !psr.id !4325
  %44 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4326, !psr.id !4327
  %45 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %44, i64 0, i64 0, !dbg !4328, !psr.id !4329
  %46 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4330, !psr.id !4331
  %47 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %46, i64 0, i64 0, !dbg !4332, !psr.id !4333
  call void @fp2mul1271([4 x i32]* %43, [4 x i32]* %45, [4 x i32]* %47), !dbg !4334, !psr.id !4335
  %48 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 1, !dbg !4336, !psr.id !4337
  %49 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %48, i64 0, i64 0, !dbg !4338, !psr.id !4339
  %50 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !4340, !psr.id !4341
  %51 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %50, i64 0, i64 0, !dbg !4342, !psr.id !4343
  %52 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4344, !psr.id !4345
  %53 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %52, i64 0, i64 0, !dbg !4346, !psr.id !4347
  call void @fp2mul1271([4 x i32]* %49, [4 x i32]* %51, [4 x i32]* %53), !dbg !4348, !psr.id !4349
  %54 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4350, !psr.id !4351
  %55 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4352, !psr.id !4353
  %56 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4354, !psr.id !4355
  %57 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %56, i64 0, i64 0, !dbg !4356, !psr.id !4357
  call void @fp2mul1271([4 x i32]* %54, [4 x i32]* %55, [4 x i32]* %57), !dbg !4358, !psr.id !4359
  %58 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4360, !psr.id !4361
  %59 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %58, i64 0, i64 0, !dbg !4362, !psr.id !4363
  %60 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4364, !psr.id !4365
  %61 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %60, i64 0, i64 0, !dbg !4366, !psr.id !4367
  %62 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !4368, !psr.id !4369
  %63 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %62, i64 0, i64 0, !dbg !4370, !psr.id !4371
  call void @fp2sub1271([4 x i32]* %59, [4 x i32]* %61, [4 x i32]* %63), !dbg !4372, !psr.id !4373
  %64 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4374, !psr.id !4375
  %65 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %64, i64 0, i64 0, !dbg !4376, !psr.id !4377
  %66 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4378, !psr.id !4379
  %67 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %66, i64 0, i64 0, !dbg !4380, !psr.id !4381
  %68 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4382, !psr.id !4383
  %69 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %68, i64 0, i64 0, !dbg !4384, !psr.id !4385
  call void @fp2add1271([4 x i32]* %65, [4 x i32]* %67, [4 x i32]* %69), !dbg !4386, !psr.id !4387
  %70 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !4388, !psr.id !4389
  %71 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %70, i64 0, i64 0, !dbg !4390, !psr.id !4391
  %72 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4392, !psr.id !4393
  %73 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4394, !psr.id !4395
  %74 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %73, i64 0, i64 0, !dbg !4396, !psr.id !4397
  call void @fp2mul1271([4 x i32]* %71, [4 x i32]* %72, [4 x i32]* %74), !dbg !4398, !psr.id !4399
  %75 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4400, !psr.id !4401
  %76 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %75, i64 0, i64 0, !dbg !4402, !psr.id !4403
  %77 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4404, !psr.id !4405
  %78 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !4406, !psr.id !4407
  %79 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %78, i64 0, i64 0, !dbg !4408, !psr.id !4409
  call void @fp2mul1271([4 x i32]* %76, [4 x i32]* %77, [4 x i32]* %79), !dbg !4410, !psr.id !4411
  ret void, !dbg !4412, !psr.id !4413
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ecc_mul_fixed([1 x %struct.point_precomp]* %0, i64* %1, %struct.point_affine* %2, %struct.CurveStruct* %3) #0 !dbg !4414 {
  %5 = alloca [271 x i32], align 16, !psr.id !4418
  %6 = alloca [4 x i64], align 16, !psr.id !4419
  %7 = alloca [1 x %struct.point_extproj], align 16, !psr.id !4420
  %8 = alloca [1 x %struct.point_precomp], align 16, !psr.id !4421
  call void @llvm.dbg.value(metadata [1 x %struct.point_precomp]* %0, metadata !4422, metadata !DIExpression()), !dbg !4423, !psr.id !4424
  call void @llvm.dbg.value(metadata i64* %1, metadata !4425, metadata !DIExpression()), !dbg !4423, !psr.id !4426
  call void @llvm.dbg.value(metadata %struct.point_affine* %2, metadata !4427, metadata !DIExpression()), !dbg !4423, !psr.id !4428
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %3, metadata !4429, metadata !DIExpression()), !dbg !4423, !psr.id !4430
  call void @llvm.dbg.value(metadata i32 5, metadata !4431, metadata !DIExpression()), !dbg !4423, !psr.id !4432
  call void @llvm.dbg.value(metadata i32 5, metadata !4433, metadata !DIExpression()), !dbg !4423, !psr.id !4434
  call void @llvm.dbg.value(metadata i32 50, metadata !4435, metadata !DIExpression()), !dbg !4423, !psr.id !4436
  call void @llvm.dbg.value(metadata i32 10, metadata !4437, metadata !DIExpression()), !dbg !4423, !psr.id !4438
  call void @llvm.dbg.value(metadata i32 0, metadata !4439, metadata !DIExpression()), !dbg !4423, !psr.id !4440
  call void @llvm.dbg.declare(metadata [271 x i32]* %5, metadata !4441, metadata !DIExpression()), !dbg !4445, !psr.id !4446
  %9 = bitcast [271 x i32]* %5 to i8*, !dbg !4445, !psr.id !4447
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 1084, i1 false), !dbg !4445, !psr.id !4448
  call void @llvm.dbg.declare(metadata [4 x i64]* %6, metadata !4449, metadata !DIExpression()), !dbg !4450, !psr.id !4451
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %7, metadata !4452, metadata !DIExpression()), !dbg !4455, !psr.id !4456
  call void @llvm.dbg.declare(metadata [1 x %struct.point_precomp]* %8, metadata !4457, metadata !DIExpression()), !dbg !4458, !psr.id !4459
  %10 = bitcast i64* %1 to i32*, !dbg !4460, !psr.id !4461
  %11 = bitcast i64* %1 to i32*, !dbg !4462, !psr.id !4463
  call void @modulo_order(i32* %10, i32* %11, %struct.CurveStruct* %3), !dbg !4464, !psr.id !4465
  %12 = bitcast i64* %1 to i32*, !dbg !4466, !psr.id !4467
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !4468, !psr.id !4469
  %14 = bitcast i64* %13 to i32*, !dbg !4470, !psr.id !4471
  call void @conversion_to_odd(i32* %12, i32* %14, %struct.CurveStruct* %3), !dbg !4472, !psr.id !4473
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !4474, !psr.id !4475
  %16 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 0, !dbg !4476, !psr.id !4477
  call void @mLSB_set_recode(i64* %15, i32* %16), !dbg !4478, !psr.id !4479
  %17 = mul i32 5, 50, !dbg !4480, !psr.id !4481
  %18 = sub i32 %17, 1, !dbg !4482, !psr.id !4483
  %19 = zext i32 %18 to i64, !dbg !4484, !psr.id !4485
  %20 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %19, !dbg !4484, !psr.id !4486
  %21 = load i32, i32* %20, align 4, !dbg !4484, !psr.id !4487
  call void @llvm.dbg.value(metadata i32 %21, metadata !4439, metadata !DIExpression()), !dbg !4423, !psr.id !4488
  %22 = sub i32 5, 1, !dbg !4489, !psr.id !4491
  %23 = mul i32 %22, 50, !dbg !4492, !psr.id !4493
  %24 = sub i32 %23, 1, !dbg !4494, !psr.id !4495
  call void @llvm.dbg.value(metadata i32 %24, metadata !4496, metadata !DIExpression()), !dbg !4423, !psr.id !4497
  br label %25, !dbg !4498, !psr.id !4499

25:                                               ; preds = %35, %4
  %.02 = phi i32 [ %21, %4 ], [ %34, %35 ], !dbg !4423, !psr.id !4500
  %.01 = phi i32 [ %24, %4 ], [ %36, %35 ], !dbg !4501, !psr.id !4502
  call void @llvm.dbg.value(metadata i32 %.01, metadata !4496, metadata !DIExpression()), !dbg !4423, !psr.id !4503
  call void @llvm.dbg.value(metadata i32 %.02, metadata !4439, metadata !DIExpression()), !dbg !4423, !psr.id !4504
  %26 = mul i32 2, 50, !dbg !4505, !psr.id !4507
  %27 = sub i32 %26, 1, !dbg !4508, !psr.id !4509
  %28 = icmp sge i32 %.01, %27, !dbg !4510, !psr.id !4511
  br i1 %28, label %29, label %37, !dbg !4512, !psr.id !4513

29:                                               ; preds = %25
  %30 = mul i32 2, %.02, !dbg !4514, !psr.id !4516
  %31 = sext i32 %.01 to i64, !dbg !4517, !psr.id !4518
  %32 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %31, !dbg !4517, !psr.id !4519
  %33 = load i32, i32* %32, align 4, !dbg !4517, !psr.id !4520
  %34 = add i32 %30, %33, !dbg !4521, !psr.id !4522
  call void @llvm.dbg.value(metadata i32 %34, metadata !4439, metadata !DIExpression()), !dbg !4423, !psr.id !4523
  br label %35, !dbg !4524, !psr.id !4525

35:                                               ; preds = %29
  %36 = sub i32 %.01, 50, !dbg !4526, !psr.id !4527
  call void @llvm.dbg.value(metadata i32 %36, metadata !4496, metadata !DIExpression()), !dbg !4423, !psr.id !4528
  br label %25, !dbg !4529, !llvm.loop !4530, !psr.id !4532

37:                                               ; preds = %25
  %38 = sub i32 5, 1, !dbg !4533, !psr.id !4534
  %39 = sub i32 5, 1, !dbg !4535, !psr.id !4536
  %40 = shl i32 1, %39, !dbg !4537, !psr.id !4538
  %41 = mul i32 %38, %40, !dbg !4539, !psr.id !4540
  %42 = zext i32 %41 to i64, !dbg !4541, !psr.id !4542
  %43 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %42, !dbg !4541, !psr.id !4543
  %44 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4544, !psr.id !4545
  %45 = sub i32 50, 1, !dbg !4546, !psr.id !4547
  %46 = zext i32 %45 to i64, !dbg !4548, !psr.id !4549
  %47 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %46, !dbg !4548, !psr.id !4550
  %48 = load i32, i32* %47, align 4, !dbg !4548, !psr.id !4551
  call void @table_lookup_fixed_base([1 x %struct.point_precomp]* %43, %struct.point_precomp* %44, i32 %.02, i32 %48), !dbg !4552, !psr.id !4553
  %49 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4554, !psr.id !4555
  %50 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !4556, !psr.id !4557
  call void @R5_to_R1(%struct.point_precomp* %49, %struct.point_extproj* %50), !dbg !4558, !psr.id !4559
  call void @llvm.dbg.value(metadata i32 0, metadata !4560, metadata !DIExpression()), !dbg !4423, !psr.id !4561
  br label %51, !dbg !4562, !psr.id !4564

51:                                               ; preds = %102, %37
  %.05 = phi i32 [ 0, %37 ], [ %103, %102 ], !dbg !4565, !psr.id !4566
  call void @llvm.dbg.value(metadata i32 %.05, metadata !4560, metadata !DIExpression()), !dbg !4423, !psr.id !4567
  %52 = sub i32 5, 1, !dbg !4568, !psr.id !4570
  %53 = icmp ult i32 %.05, %52, !dbg !4571, !psr.id !4572
  br i1 %53, label %54, label %104, !dbg !4573, !psr.id !4574

54:                                               ; preds = %51
  %55 = mul i32 5, 50, !dbg !4575, !psr.id !4577
  %56 = add i32 %.05, 1, !dbg !4578, !psr.id !4579
  %57 = mul i32 %56, 10, !dbg !4580, !psr.id !4581
  %58 = sub i32 %55, %57, !dbg !4582, !psr.id !4583
  %59 = sub i32 %58, 1, !dbg !4584, !psr.id !4585
  %60 = zext i32 %59 to i64, !dbg !4586, !psr.id !4587
  %61 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %60, !dbg !4586, !psr.id !4588
  %62 = load i32, i32* %61, align 4, !dbg !4586, !psr.id !4589
  call void @llvm.dbg.value(metadata i32 %62, metadata !4439, metadata !DIExpression()), !dbg !4423, !psr.id !4590
  %63 = sub i32 5, 1, !dbg !4591, !psr.id !4593
  %64 = mul i32 %63, 50, !dbg !4594, !psr.id !4595
  %65 = add i32 %.05, 1, !dbg !4596, !psr.id !4597
  %66 = mul i32 %65, 10, !dbg !4598, !psr.id !4599
  %67 = sub i32 %64, %66, !dbg !4600, !psr.id !4601
  %68 = sub i32 %67, 1, !dbg !4602, !psr.id !4603
  call void @llvm.dbg.value(metadata i32 %68, metadata !4496, metadata !DIExpression()), !dbg !4423, !psr.id !4604
  br label %69, !dbg !4605, !psr.id !4606

69:                                               ; preds = %82, %54
  %.13 = phi i32 [ %62, %54 ], [ %81, %82 ], !dbg !4607, !psr.id !4608
  %.1 = phi i32 [ %68, %54 ], [ %83, %82 ], !dbg !4609, !psr.id !4610
  call void @llvm.dbg.value(metadata i32 %.1, metadata !4496, metadata !DIExpression()), !dbg !4423, !psr.id !4611
  call void @llvm.dbg.value(metadata i32 %.13, metadata !4439, metadata !DIExpression()), !dbg !4423, !psr.id !4612
  %70 = mul i32 2, 50, !dbg !4613, !psr.id !4615
  %71 = add i32 %.05, 1, !dbg !4616, !psr.id !4617
  %72 = mul i32 %71, 10, !dbg !4618, !psr.id !4619
  %73 = sub i32 %70, %72, !dbg !4620, !psr.id !4621
  %74 = sub i32 %73, 1, !dbg !4622, !psr.id !4623
  %75 = icmp sge i32 %.1, %74, !dbg !4624, !psr.id !4625
  br i1 %75, label %76, label %84, !dbg !4626, !psr.id !4627

76:                                               ; preds = %69
  %77 = mul i32 2, %.13, !dbg !4628, !psr.id !4630
  %78 = sext i32 %.1 to i64, !dbg !4631, !psr.id !4632
  %79 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %78, !dbg !4631, !psr.id !4633
  %80 = load i32, i32* %79, align 4, !dbg !4631, !psr.id !4634
  %81 = add i32 %77, %80, !dbg !4635, !psr.id !4636
  call void @llvm.dbg.value(metadata i32 %81, metadata !4439, metadata !DIExpression()), !dbg !4423, !psr.id !4637
  br label %82, !dbg !4638, !psr.id !4639

82:                                               ; preds = %76
  %83 = sub i32 %.1, 50, !dbg !4640, !psr.id !4641
  call void @llvm.dbg.value(metadata i32 %83, metadata !4496, metadata !DIExpression()), !dbg !4423, !psr.id !4642
  br label %69, !dbg !4643, !llvm.loop !4644, !psr.id !4646

84:                                               ; preds = %69
  %85 = sub i32 5, %.05, !dbg !4647, !psr.id !4648
  %86 = sub i32 %85, 2, !dbg !4649, !psr.id !4650
  %87 = sub i32 5, 1, !dbg !4651, !psr.id !4652
  %88 = shl i32 1, %87, !dbg !4653, !psr.id !4654
  %89 = mul i32 %86, %88, !dbg !4655, !psr.id !4656
  %90 = zext i32 %89 to i64, !dbg !4657, !psr.id !4658
  %91 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %90, !dbg !4657, !psr.id !4659
  %92 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4660, !psr.id !4661
  %93 = add i32 %.05, 1, !dbg !4662, !psr.id !4663
  %94 = mul i32 %93, 10, !dbg !4664, !psr.id !4665
  %95 = sub i32 50, %94, !dbg !4666, !psr.id !4667
  %96 = sub i32 %95, 1, !dbg !4668, !psr.id !4669
  %97 = zext i32 %96 to i64, !dbg !4670, !psr.id !4671
  %98 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %97, !dbg !4670, !psr.id !4672
  %99 = load i32, i32* %98, align 4, !dbg !4670, !psr.id !4673
  call void @table_lookup_fixed_base([1 x %struct.point_precomp]* %91, %struct.point_precomp* %92, i32 %.13, i32 %99), !dbg !4674, !psr.id !4675
  %100 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4676, !psr.id !4677
  %101 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !4678, !psr.id !4679
  call void @eccmadd(%struct.point_precomp* %100, %struct.point_extproj* %101), !dbg !4680, !psr.id !4681
  br label %102, !dbg !4682, !psr.id !4683

102:                                              ; preds = %84
  %103 = add i32 %.05, 1, !dbg !4684, !psr.id !4685
  call void @llvm.dbg.value(metadata i32 %103, metadata !4560, metadata !DIExpression()), !dbg !4423, !psr.id !4686
  br label %51, !dbg !4687, !llvm.loop !4688, !psr.id !4690

104:                                              ; preds = %51
  %105 = sub i32 10, 2, !dbg !4691, !psr.id !4693
  call void @llvm.dbg.value(metadata i32 %105, metadata !4694, metadata !DIExpression()), !dbg !4423, !psr.id !4695
  br label %106, !dbg !4696, !psr.id !4697

106:                                              ; preds = %163, %104
  %.0 = phi i32 [ %105, %104 ], [ %164, %163 ], !dbg !4698, !psr.id !4699
  call void @llvm.dbg.value(metadata i32 %.0, metadata !4694, metadata !DIExpression()), !dbg !4423, !psr.id !4700
  %107 = icmp sge i32 %.0, 0, !dbg !4701, !psr.id !4703
  br i1 %107, label %108, label %165, !dbg !4704, !psr.id !4705

108:                                              ; preds = %106
  %109 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !4706, !psr.id !4708
  call void @eccdouble(%struct.point_extproj* %109), !dbg !4709, !psr.id !4710
  call void @llvm.dbg.value(metadata i32 0, metadata !4560, metadata !DIExpression()), !dbg !4423, !psr.id !4711
  br label %110, !dbg !4712, !psr.id !4714

110:                                              ; preds = %160, %108
  %.16 = phi i32 [ 0, %108 ], [ %161, %160 ], !dbg !4715, !psr.id !4716
  call void @llvm.dbg.value(metadata i32 %.16, metadata !4560, metadata !DIExpression()), !dbg !4423, !psr.id !4717
  %111 = icmp ult i32 %.16, 5, !dbg !4718, !psr.id !4720
  br i1 %111, label %112, label %162, !dbg !4721, !psr.id !4722

112:                                              ; preds = %110
  %113 = mul i32 5, 50, !dbg !4723, !psr.id !4725
  %114 = mul i32 %.16, 10, !dbg !4726, !psr.id !4727
  %115 = sub i32 %113, %114, !dbg !4728, !psr.id !4729
  %116 = add i32 %115, %.0, !dbg !4730, !psr.id !4731
  %117 = sub i32 %116, 10, !dbg !4732, !psr.id !4733
  %118 = zext i32 %117 to i64, !dbg !4734, !psr.id !4735
  %119 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %118, !dbg !4734, !psr.id !4736
  %120 = load i32, i32* %119, align 4, !dbg !4734, !psr.id !4737
  call void @llvm.dbg.value(metadata i32 %120, metadata !4439, metadata !DIExpression()), !dbg !4423, !psr.id !4738
  %121 = sub i32 5, 1, !dbg !4739, !psr.id !4741
  %122 = mul i32 %121, 50, !dbg !4742, !psr.id !4743
  %123 = mul i32 %.16, 10, !dbg !4744, !psr.id !4745
  %124 = sub i32 %122, %123, !dbg !4746, !psr.id !4747
  %125 = add i32 %124, %.0, !dbg !4748, !psr.id !4749
  %126 = sub i32 %125, 10, !dbg !4750, !psr.id !4751
  call void @llvm.dbg.value(metadata i32 %126, metadata !4496, metadata !DIExpression()), !dbg !4423, !psr.id !4752
  br label %127, !dbg !4753, !psr.id !4754

127:                                              ; preds = %140, %112
  %.24 = phi i32 [ %120, %112 ], [ %139, %140 ], !dbg !4755, !psr.id !4756
  %.2 = phi i32 [ %126, %112 ], [ %141, %140 ], !dbg !4757, !psr.id !4758
  call void @llvm.dbg.value(metadata i32 %.2, metadata !4496, metadata !DIExpression()), !dbg !4423, !psr.id !4759
  call void @llvm.dbg.value(metadata i32 %.24, metadata !4439, metadata !DIExpression()), !dbg !4423, !psr.id !4760
  %128 = mul i32 2, 50, !dbg !4761, !psr.id !4763
  %129 = mul i32 %.16, 10, !dbg !4764, !psr.id !4765
  %130 = sub i32 %128, %129, !dbg !4766, !psr.id !4767
  %131 = add i32 %130, %.0, !dbg !4768, !psr.id !4769
  %132 = sub i32 %131, 10, !dbg !4770, !psr.id !4771
  %133 = icmp sge i32 %.2, %132, !dbg !4772, !psr.id !4773
  br i1 %133, label %134, label %142, !dbg !4774, !psr.id !4775

134:                                              ; preds = %127
  %135 = mul i32 2, %.24, !dbg !4776, !psr.id !4778
  %136 = sext i32 %.2 to i64, !dbg !4779, !psr.id !4780
  %137 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %136, !dbg !4779, !psr.id !4781
  %138 = load i32, i32* %137, align 4, !dbg !4779, !psr.id !4782
  %139 = add i32 %135, %138, !dbg !4783, !psr.id !4784
  call void @llvm.dbg.value(metadata i32 %139, metadata !4439, metadata !DIExpression()), !dbg !4423, !psr.id !4785
  br label %140, !dbg !4786, !psr.id !4787

140:                                              ; preds = %134
  %141 = sub i32 %.2, 50, !dbg !4788, !psr.id !4789
  call void @llvm.dbg.value(metadata i32 %141, metadata !4496, metadata !DIExpression()), !dbg !4423, !psr.id !4790
  br label %127, !dbg !4791, !llvm.loop !4792, !psr.id !4794

142:                                              ; preds = %127
  %143 = sub i32 5, %.16, !dbg !4795, !psr.id !4796
  %144 = sub i32 %143, 1, !dbg !4797, !psr.id !4798
  %145 = sub i32 5, 1, !dbg !4799, !psr.id !4800
  %146 = shl i32 1, %145, !dbg !4801, !psr.id !4802
  %147 = mul i32 %144, %146, !dbg !4803, !psr.id !4804
  %148 = zext i32 %147 to i64, !dbg !4805, !psr.id !4806
  %149 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %148, !dbg !4805, !psr.id !4807
  %150 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4808, !psr.id !4809
  %151 = mul i32 %.16, 10, !dbg !4810, !psr.id !4811
  %152 = sub i32 50, %151, !dbg !4812, !psr.id !4813
  %153 = add i32 %152, %.0, !dbg !4814, !psr.id !4815
  %154 = sub i32 %153, 10, !dbg !4816, !psr.id !4817
  %155 = zext i32 %154 to i64, !dbg !4818, !psr.id !4819
  %156 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %155, !dbg !4818, !psr.id !4820
  %157 = load i32, i32* %156, align 4, !dbg !4818, !psr.id !4821
  call void @table_lookup_fixed_base([1 x %struct.point_precomp]* %149, %struct.point_precomp* %150, i32 %.24, i32 %157), !dbg !4822, !psr.id !4823
  %158 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4824, !psr.id !4825
  %159 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !4826, !psr.id !4827
  call void @eccmadd(%struct.point_precomp* %158, %struct.point_extproj* %159), !dbg !4828, !psr.id !4829
  br label %160, !dbg !4830, !psr.id !4831

160:                                              ; preds = %142
  %161 = add i32 %.16, 1, !dbg !4832, !psr.id !4833
  call void @llvm.dbg.value(metadata i32 %161, metadata !4560, metadata !DIExpression()), !dbg !4423, !psr.id !4834
  br label %110, !dbg !4835, !llvm.loop !4836, !psr.id !4838

162:                                              ; preds = %110
  br label %163, !dbg !4839, !psr.id !4840

163:                                              ; preds = %162
  %164 = add nsw i32 %.0, -1, !dbg !4841, !psr.id !4842
  call void @llvm.dbg.value(metadata i32 %164, metadata !4694, metadata !DIExpression()), !dbg !4423, !psr.id !4843
  br label %106, !dbg !4844, !llvm.loop !4845, !psr.id !4847

165:                                              ; preds = %106
  %166 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !4848, !psr.id !4849
  call void @eccnorm(%struct.point_extproj* %166, %struct.point_affine* %2), !dbg !4850, !psr.id !4851
  ret i1 true, !dbg !4852, !psr.id !4853
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mLSB_set_recode(i64* %0, i32* %1) #0 !dbg !4854 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4858, metadata !DIExpression()), !dbg !4859, !psr.id !4860
  call void @llvm.dbg.value(metadata i32* %1, metadata !4861, metadata !DIExpression()), !dbg !4859, !psr.id !4862
  call void @llvm.dbg.value(metadata i32 50, metadata !4863, metadata !DIExpression()), !dbg !4859, !psr.id !4864
  call void @llvm.dbg.value(metadata i32 250, metadata !4865, metadata !DIExpression()), !dbg !4859, !psr.id !4866
  %3 = sub i32 50, 1, !dbg !4867, !psr.id !4868
  %4 = zext i32 %3 to i64, !dbg !4869, !psr.id !4870
  %5 = getelementptr inbounds i32, i32* %1, i64 %4, !dbg !4869, !psr.id !4871
  store i32 0, i32* %5, align 4, !dbg !4872, !psr.id !4873
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !4875
  br label %6, !dbg !4876, !psr.id !4878

6:                                                ; preds = %21, %2
  %.01 = phi i32 [ 0, %2 ], [ %22, %21 ], !dbg !4879, !psr.id !4880
  call void @llvm.dbg.value(metadata i32 %.01, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !4881
  %7 = icmp ult i32 %.01, 3, !dbg !4882, !psr.id !4884
  br i1 %7, label %8, label %23, !dbg !4885, !psr.id !4886

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64, !dbg !4887, !psr.id !4889
  %10 = getelementptr inbounds i64, i64* %0, i64 %9, !dbg !4887, !psr.id !4890
  %11 = load i64, i64* %10, align 8, !dbg !4887, !psr.id !4891
  %12 = lshr i64 %11, 1, !dbg !4887, !psr.id !4892
  %13 = add i32 %.01, 1, !dbg !4887, !psr.id !4893
  %14 = zext i32 %13 to i64, !dbg !4887, !psr.id !4894
  %15 = getelementptr inbounds i64, i64* %0, i64 %14, !dbg !4887, !psr.id !4895
  %16 = load i64, i64* %15, align 8, !dbg !4887, !psr.id !4896
  %17 = shl i64 %16, 63, !dbg !4887, !psr.id !4897
  %18 = xor i64 %12, %17, !dbg !4887, !psr.id !4898
  %19 = zext i32 %.01 to i64, !dbg !4887, !psr.id !4899
  %20 = getelementptr inbounds i64, i64* %0, i64 %19, !dbg !4887, !psr.id !4900
  store i64 %18, i64* %20, align 8, !dbg !4887, !psr.id !4901
  br label %21, !dbg !4902, !psr.id !4903

21:                                               ; preds = %8
  %22 = add i32 %.01, 1, !dbg !4904, !psr.id !4905
  call void @llvm.dbg.value(metadata i32 %22, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !4906
  br label %6, !dbg !4907, !llvm.loop !4908, !psr.id !4910

23:                                               ; preds = %6
  %24 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !4911, !psr.id !4912
  %25 = load i64, i64* %24, align 8, !dbg !4913, !psr.id !4914
  %26 = lshr i64 %25, 1, !dbg !4913, !psr.id !4915
  store i64 %26, i64* %24, align 8, !dbg !4913, !psr.id !4916
  call void @llvm.dbg.value(metadata i32 0, metadata !4917, metadata !DIExpression()), !dbg !4859, !psr.id !4918
  br label %27, !dbg !4919, !psr.id !4921

27:                                               ; preds = %59, %23
  %.02 = phi i32 [ 0, %23 ], [ %60, %59 ], !dbg !4922, !psr.id !4923
  call void @llvm.dbg.value(metadata i32 %.02, metadata !4917, metadata !DIExpression()), !dbg !4859, !psr.id !4924
  %28 = sub i32 50, 1, !dbg !4925, !psr.id !4927
  %29 = icmp ult i32 %.02, %28, !dbg !4928, !psr.id !4929
  br i1 %29, label %30, label %61, !dbg !4930, !psr.id !4931

30:                                               ; preds = %27
  %31 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !4932, !psr.id !4934
  %32 = load i64, i64* %31, align 8, !dbg !4932, !psr.id !4935
  %33 = and i64 %32, 1, !dbg !4936, !psr.id !4937
  %34 = sub i64 %33, 1, !dbg !4938, !psr.id !4939
  %35 = trunc i64 %34 to i32, !dbg !4940, !psr.id !4941
  %36 = zext i32 %.02 to i64, !dbg !4942, !psr.id !4943
  %37 = getelementptr inbounds i32, i32* %1, i64 %36, !dbg !4942, !psr.id !4944
  store i32 %35, i32* %37, align 4, !dbg !4945, !psr.id !4946
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !4947
  br label %38, !dbg !4948, !psr.id !4950

38:                                               ; preds = %53, %30
  %.1 = phi i32 [ 0, %30 ], [ %54, %53 ], !dbg !4951, !psr.id !4952
  call void @llvm.dbg.value(metadata i32 %.1, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !4953
  %39 = icmp ult i32 %.1, 3, !dbg !4954, !psr.id !4956
  br i1 %39, label %40, label %55, !dbg !4957, !psr.id !4958

40:                                               ; preds = %38
  %41 = zext i32 %.1 to i64, !dbg !4959, !psr.id !4961
  %42 = getelementptr inbounds i64, i64* %0, i64 %41, !dbg !4959, !psr.id !4962
  %43 = load i64, i64* %42, align 8, !dbg !4959, !psr.id !4963
  %44 = lshr i64 %43, 1, !dbg !4959, !psr.id !4964
  %45 = add i32 %.1, 1, !dbg !4959, !psr.id !4965
  %46 = zext i32 %45 to i64, !dbg !4959, !psr.id !4966
  %47 = getelementptr inbounds i64, i64* %0, i64 %46, !dbg !4959, !psr.id !4967
  %48 = load i64, i64* %47, align 8, !dbg !4959, !psr.id !4968
  %49 = shl i64 %48, 63, !dbg !4959, !psr.id !4969
  %50 = xor i64 %44, %49, !dbg !4959, !psr.id !4970
  %51 = zext i32 %.1 to i64, !dbg !4959, !psr.id !4971
  %52 = getelementptr inbounds i64, i64* %0, i64 %51, !dbg !4959, !psr.id !4972
  store i64 %50, i64* %52, align 8, !dbg !4959, !psr.id !4973
  br label %53, !dbg !4974, !psr.id !4975

53:                                               ; preds = %40
  %54 = add i32 %.1, 1, !dbg !4976, !psr.id !4977
  call void @llvm.dbg.value(metadata i32 %54, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !4978
  br label %38, !dbg !4979, !llvm.loop !4980, !psr.id !4982

55:                                               ; preds = %38
  %56 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !4983, !psr.id !4984
  %57 = load i64, i64* %56, align 8, !dbg !4985, !psr.id !4986
  %58 = lshr i64 %57, 1, !dbg !4985, !psr.id !4987
  store i64 %58, i64* %56, align 8, !dbg !4985, !psr.id !4988
  br label %59, !dbg !4989, !psr.id !4990

59:                                               ; preds = %55
  %60 = add i32 %.02, 1, !dbg !4991, !psr.id !4992
  call void @llvm.dbg.value(metadata i32 %60, metadata !4917, metadata !DIExpression()), !dbg !4859, !psr.id !4993
  br label %27, !dbg !4994, !llvm.loop !4995, !psr.id !4997

61:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 50, metadata !4917, metadata !DIExpression()), !dbg !4859, !psr.id !4998
  br label %62, !dbg !4999, !psr.id !5001

62:                                               ; preds = %133, %61
  %.13 = phi i32 [ 50, %61 ], [ %134, %133 ], !dbg !5002, !psr.id !5003
  call void @llvm.dbg.value(metadata i32 %.13, metadata !4917, metadata !DIExpression()), !dbg !4859, !psr.id !5004
  %63 = icmp ult i32 %.13, 250, !dbg !5005, !psr.id !5007
  br i1 %63, label %64, label %135, !dbg !5008, !psr.id !5009

64:                                               ; preds = %62
  %65 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !5010, !psr.id !5012
  %66 = load i64, i64* %65, align 8, !dbg !5010, !psr.id !5013
  %67 = and i64 %66, 1, !dbg !5014, !psr.id !5015
  %68 = trunc i64 %67 to i32, !dbg !5016, !psr.id !5017
  %69 = zext i32 %.13 to i64, !dbg !5018, !psr.id !5019
  %70 = getelementptr inbounds i32, i32* %1, i64 %69, !dbg !5018, !psr.id !5020
  store i32 %68, i32* %70, align 4, !dbg !5021, !psr.id !5022
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !5023
  br label %71, !dbg !5024, !psr.id !5026

71:                                               ; preds = %86, %64
  %.2 = phi i32 [ 0, %64 ], [ %87, %86 ], !dbg !5027, !psr.id !5028
  call void @llvm.dbg.value(metadata i32 %.2, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !5029
  %72 = icmp ult i32 %.2, 3, !dbg !5030, !psr.id !5032
  br i1 %72, label %73, label %88, !dbg !5033, !psr.id !5034

73:                                               ; preds = %71
  %74 = zext i32 %.2 to i64, !dbg !5035, !psr.id !5037
  %75 = getelementptr inbounds i64, i64* %0, i64 %74, !dbg !5035, !psr.id !5038
  %76 = load i64, i64* %75, align 8, !dbg !5035, !psr.id !5039
  %77 = lshr i64 %76, 1, !dbg !5035, !psr.id !5040
  %78 = add i32 %.2, 1, !dbg !5035, !psr.id !5041
  %79 = zext i32 %78 to i64, !dbg !5035, !psr.id !5042
  %80 = getelementptr inbounds i64, i64* %0, i64 %79, !dbg !5035, !psr.id !5043
  %81 = load i64, i64* %80, align 8, !dbg !5035, !psr.id !5044
  %82 = shl i64 %81, 63, !dbg !5035, !psr.id !5045
  %83 = xor i64 %77, %82, !dbg !5035, !psr.id !5046
  %84 = zext i32 %.2 to i64, !dbg !5035, !psr.id !5047
  %85 = getelementptr inbounds i64, i64* %0, i64 %84, !dbg !5035, !psr.id !5048
  store i64 %83, i64* %85, align 8, !dbg !5035, !psr.id !5049
  br label %86, !dbg !5050, !psr.id !5051

86:                                               ; preds = %73
  %87 = add i32 %.2, 1, !dbg !5052, !psr.id !5053
  call void @llvm.dbg.value(metadata i32 %87, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !5054
  br label %71, !dbg !5055, !llvm.loop !5056, !psr.id !5058

88:                                               ; preds = %71
  %89 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !5059, !psr.id !5060
  %90 = load i64, i64* %89, align 8, !dbg !5061, !psr.id !5062
  %91 = lshr i64 %90, 1, !dbg !5061, !psr.id !5063
  store i64 %91, i64* %89, align 8, !dbg !5061, !psr.id !5064
  %92 = udiv i32 %.13, 50, !dbg !5065, !psr.id !5066
  %93 = mul i32 %92, 50, !dbg !5067, !psr.id !5068
  %94 = sub i32 %.13, %93, !dbg !5069, !psr.id !5070
  %95 = zext i32 %94 to i64, !dbg !5071, !psr.id !5072
  %96 = getelementptr inbounds i32, i32* %1, i64 %95, !dbg !5071, !psr.id !5073
  %97 = load i32, i32* %96, align 4, !dbg !5071, !psr.id !5074
  %98 = sub i32 0, %97, !dbg !5075, !psr.id !5076
  %99 = zext i32 %.13 to i64, !dbg !5077, !psr.id !5078
  %100 = getelementptr inbounds i32, i32* %1, i64 %99, !dbg !5077, !psr.id !5079
  %101 = load i32, i32* %100, align 4, !dbg !5077, !psr.id !5080
  %102 = and i32 %98, %101, !dbg !5081, !psr.id !5082
  %103 = zext i32 %102 to i64, !dbg !5083, !psr.id !5084
  call void @llvm.dbg.value(metadata i64 %103, metadata !5085, metadata !DIExpression()), !dbg !4859, !psr.id !5086
  %104 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !5087, !psr.id !5088
  %105 = load i64, i64* %104, align 8, !dbg !5087, !psr.id !5089
  %106 = add i64 %105, %103, !dbg !5090, !psr.id !5091
  %107 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !5092, !psr.id !5093
  store i64 %106, i64* %107, align 8, !dbg !5094, !psr.id !5095
  %108 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !5096, !psr.id !5097
  %109 = load i64, i64* %108, align 8, !dbg !5096, !psr.id !5098
  %110 = trunc i64 %109 to i32, !dbg !5099, !psr.id !5100
  %111 = call i32 @is_digit_zero_ct(i32 %110), !dbg !5101, !psr.id !5102
  %112 = zext i32 %111 to i64, !dbg !5103, !psr.id !5104
  %113 = and i64 %103, %112, !dbg !5105, !psr.id !5106
  call void @llvm.dbg.value(metadata i64 %113, metadata !5107, metadata !DIExpression()), !dbg !4859, !psr.id !5108
  call void @llvm.dbg.value(metadata i32 1, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !5109
  br label %114, !dbg !5110, !psr.id !5112

114:                                              ; preds = %130, %88
  %.3 = phi i32 [ 1, %88 ], [ %131, %130 ], !dbg !5113, !psr.id !5114
  %.0 = phi i64 [ %113, %88 ], [ %129, %130 ], !dbg !5115, !psr.id !5116
  call void @llvm.dbg.value(metadata i64 %.0, metadata !5107, metadata !DIExpression()), !dbg !4859, !psr.id !5117
  call void @llvm.dbg.value(metadata i32 %.3, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !5118
  %115 = icmp ult i32 %.3, 4, !dbg !5119, !psr.id !5121
  br i1 %115, label %116, label %132, !dbg !5122, !psr.id !5123

116:                                              ; preds = %114
  %117 = zext i32 %.3 to i64, !dbg !5124, !psr.id !5126
  %118 = getelementptr inbounds i64, i64* %0, i64 %117, !dbg !5124, !psr.id !5127
  %119 = load i64, i64* %118, align 8, !dbg !5124, !psr.id !5128
  %120 = add i64 %119, %.0, !dbg !5129, !psr.id !5130
  %121 = zext i32 %.3 to i64, !dbg !5131, !psr.id !5132
  %122 = getelementptr inbounds i64, i64* %0, i64 %121, !dbg !5131, !psr.id !5133
  store i64 %120, i64* %122, align 8, !dbg !5134, !psr.id !5135
  %123 = zext i32 %.3 to i64, !dbg !5136, !psr.id !5137
  %124 = getelementptr inbounds i64, i64* %0, i64 %123, !dbg !5136, !psr.id !5138
  %125 = load i64, i64* %124, align 8, !dbg !5136, !psr.id !5139
  %126 = trunc i64 %125 to i32, !dbg !5140, !psr.id !5141
  %127 = call i32 @is_digit_zero_ct(i32 %126), !dbg !5142, !psr.id !5143
  %128 = zext i32 %127 to i64, !dbg !5144, !psr.id !5145
  %129 = and i64 %.0, %128, !dbg !5146, !psr.id !5147
  call void @llvm.dbg.value(metadata i64 %129, metadata !5107, metadata !DIExpression()), !dbg !4859, !psr.id !5148
  br label %130, !dbg !5149, !psr.id !5150

130:                                              ; preds = %116
  %131 = add i32 %.3, 1, !dbg !5151, !psr.id !5152
  call void @llvm.dbg.value(metadata i32 %131, metadata !4874, metadata !DIExpression()), !dbg !4859, !psr.id !5153
  br label %114, !dbg !5154, !llvm.loop !5155, !psr.id !5157

132:                                              ; preds = %114
  br label %133, !dbg !5158, !psr.id !5159

133:                                              ; preds = %132
  %134 = add i32 %.13, 1, !dbg !5160, !psr.id !5161
  call void @llvm.dbg.value(metadata i32 %134, metadata !4917, metadata !DIExpression()), !dbg !4859, !psr.id !5162
  br label %62, !dbg !5163, !llvm.loop !5164, !psr.id !5166

135:                                              ; preds = %62
  ret void, !dbg !5167, !psr.id !5168
}

; Function Attrs: noinline nounwind uwtable
define internal void @R5_to_R1(%struct.point_precomp* %0, %struct.point_extproj* %1) #0 !dbg !5169 {
  call void @llvm.dbg.value(metadata %struct.point_precomp* %0, metadata !5170, metadata !DIExpression()), !dbg !5171, !psr.id !5172
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !5173, metadata !DIExpression()), !dbg !5171, !psr.id !5174
  %3 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 0, !dbg !5175, !psr.id !5176
  %4 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !5177, !psr.id !5178
  %5 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 1, !dbg !5179, !psr.id !5180
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !5181, !psr.id !5182
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !5183, !psr.id !5184
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !5185, !psr.id !5186
  call void @fp2sub1271([4 x i32]* %4, [4 x i32]* %6, [4 x i32]* %8), !dbg !5187, !psr.id !5188
  %9 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 0, !dbg !5189, !psr.id !5190
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !5191, !psr.id !5192
  %11 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 1, !dbg !5193, !psr.id !5194
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !5195, !psr.id !5196
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !5197, !psr.id !5198
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !5199, !psr.id !5200
  call void @fp2add1271([4 x i32]* %10, [4 x i32]* %12, [4 x i32]* %14), !dbg !5201, !psr.id !5202
  %15 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !5203, !psr.id !5204
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %15, i64 0, i64 0, !dbg !5205, !psr.id !5206
  call void @fp2div1271([4 x i32]* %16), !dbg !5207, !psr.id !5208
  %17 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !5209, !psr.id !5210
  %18 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %17, i64 0, i64 0, !dbg !5211, !psr.id !5212
  call void @fp2div1271([4 x i32]* %18), !dbg !5213, !psr.id !5214
  %19 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !5215, !psr.id !5216
  %20 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %19, i64 0, i64 0, !dbg !5217, !psr.id !5218
  call void @fp2zero1271([4 x i32]* %20), !dbg !5219, !psr.id !5220
  %21 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !5221, !psr.id !5222
  %22 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %21, i64 0, i64 0, !dbg !5223, !psr.id !5224
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0, !dbg !5223, !psr.id !5225
  store i32 1, i32* %23, align 4, !dbg !5226, !psr.id !5227
  %24 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !5228, !psr.id !5229
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %24, i64 0, i64 0, !dbg !5230, !psr.id !5231
  %26 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !5232, !psr.id !5233
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !5234, !psr.id !5235
  call void @fp2copy1271([4 x i32]* %25, [4 x i32]* %27), !dbg !5236, !psr.id !5237
  %28 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !5238, !psr.id !5239
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %28, i64 0, i64 0, !dbg !5240, !psr.id !5241
  %30 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !5242, !psr.id !5243
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %30, i64 0, i64 0, !dbg !5244, !psr.id !5245
  call void @fp2copy1271([4 x i32]* %29, [4 x i32]* %31), !dbg !5246, !psr.id !5247
  ret void, !dbg !5248, !psr.id !5249
}

; Function Attrs: noinline nounwind uwtable
define dso_local [1 x %struct.point_precomp]* @ecc_allocate_precomp() #0 !dbg !5250 {
  %1 = call noalias i8* @calloc(i64 80, i64 96) #5, !dbg !5253, !psr.id !5254
  %2 = bitcast i8* %1 to [1 x %struct.point_precomp]*, !dbg !5255, !psr.id !5256
  ret [1 x %struct.point_precomp]* %2, !dbg !5257, !psr.id !5258
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ecc_precomp_fixed(%struct.point_affine* %0, [1 x %struct.point_precomp]* %1, i1 zeroext %2, %struct.CurveStruct* %3) #0 !dbg !5259 {
  %5 = alloca [1 x %struct.point_affine], align 16, !psr.id !5262
  %6 = alloca [1 x %struct.point_extproj], align 16, !psr.id !5263
  %7 = alloca [1 x %struct.point_extproj], align 16, !psr.id !5264
  %8 = alloca [5 x [1 x %struct.point_extproj]], align 16, !psr.id !5265
  %9 = alloca [5 x [1 x %struct.point_extproj_precomp]], align 16, !psr.id !5266
  %10 = alloca [1 x %struct.point_extproj_precomp], align 16, !psr.id !5267
  %11 = alloca [80 x [1 x %struct.point_extproj_precomp]], align 16, !psr.id !5268
  call void @llvm.dbg.value(metadata %struct.point_affine* %0, metadata !5269, metadata !DIExpression()), !dbg !5270, !psr.id !5271
  call void @llvm.dbg.value(metadata [1 x %struct.point_precomp]* %1, metadata !5272, metadata !DIExpression()), !dbg !5270, !psr.id !5273
  %12 = zext i1 %2 to i8, !psr.id !5274
  call void @llvm.dbg.value(metadata i8 %12, metadata !5275, metadata !DIExpression()), !dbg !5270, !psr.id !5276
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %3, metadata !5277, metadata !DIExpression()), !dbg !5270, !psr.id !5278
  call void @llvm.dbg.declare(metadata [1 x %struct.point_affine]* %5, metadata !5279, metadata !DIExpression()), !dbg !5282, !psr.id !5283
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %6, metadata !5284, metadata !DIExpression()), !dbg !5285, !psr.id !5286
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %7, metadata !5287, metadata !DIExpression()), !dbg !5288, !psr.id !5289
  call void @llvm.dbg.declare(metadata [5 x [1 x %struct.point_extproj]]* %8, metadata !5290, metadata !DIExpression()), !dbg !5294, !psr.id !5295
  call void @llvm.dbg.declare(metadata [5 x [1 x %struct.point_extproj_precomp]]* %9, metadata !5296, metadata !DIExpression()), !dbg !5298, !psr.id !5299
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj_precomp]* %10, metadata !5300, metadata !DIExpression()), !dbg !5301, !psr.id !5302
  call void @llvm.dbg.declare(metadata [80 x [1 x %struct.point_extproj_precomp]]* %11, metadata !5303, metadata !DIExpression()), !dbg !5307, !psr.id !5308
  call void @llvm.dbg.value(metadata i32 5, metadata !5309, metadata !DIExpression()), !dbg !5270, !psr.id !5310
  call void @llvm.dbg.value(metadata i32 5, metadata !5311, metadata !DIExpression()), !dbg !5270, !psr.id !5312
  call void @llvm.dbg.value(metadata i32 50, metadata !5313, metadata !DIExpression()), !dbg !5270, !psr.id !5314
  call void @llvm.dbg.value(metadata i32 10, metadata !5315, metadata !DIExpression()), !dbg !5270, !psr.id !5316
  %13 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5317, !psr.id !5318
  call void @point_setup(%struct.point_affine* %0, %struct.point_extproj* %13), !dbg !5319, !psr.id !5320
  %14 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5321, !psr.id !5323
  %15 = call zeroext i1 @ecc_point_validate(%struct.point_extproj* %14, %struct.CurveStruct* %3), !dbg !5324, !psr.id !5325
  %16 = zext i1 %15 to i32, !dbg !5324, !psr.id !5326
  %17 = icmp eq i32 %16, 0, !dbg !5327, !psr.id !5328
  br i1 %17, label %18, label %19, !dbg !5329, !psr.id !5330

18:                                               ; preds = %4
  br label %405, !dbg !5331, !psr.id !5333

19:                                               ; preds = %4
  %20 = trunc i8 %12 to i1, !dbg !5334, !psr.id !5336
  %21 = zext i1 %20 to i32, !dbg !5334, !psr.id !5337
  %22 = icmp eq i32 %21, 1, !dbg !5338, !psr.id !5339
  br i1 %22, label %23, label %29, !dbg !5340, !psr.id !5341

23:                                               ; preds = %19
  %24 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5342, !psr.id !5344
  call void @cofactor_clearing(%struct.point_extproj* %24, %struct.CurveStruct* %3), !dbg !5345, !psr.id !5346
  %25 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5347, !psr.id !5348
  %26 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5349, !psr.id !5350
  call void @eccnorm(%struct.point_extproj* %25, %struct.point_affine* %26), !dbg !5351, !psr.id !5352
  %27 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5353, !psr.id !5354
  %28 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5355, !psr.id !5356
  call void @point_setup(%struct.point_affine* %27, %struct.point_extproj* %28), !dbg !5357, !psr.id !5358
  br label %29, !dbg !5359, !psr.id !5360

29:                                               ; preds = %23, %19
  %30 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5361, !psr.id !5362
  %31 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %30, i32 0, i32 0, !dbg !5361, !psr.id !5363
  %32 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %31, i64 0, i64 0, !dbg !5361, !psr.id !5364
  %33 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !5361, !psr.id !5365
  %34 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %33, i64 0, i64 0, !dbg !5361, !psr.id !5366
  %35 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %34, i32 0, i32 0, !dbg !5361, !psr.id !5367
  %36 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %35, i64 0, i64 0, !dbg !5361, !psr.id !5368
  call void @fp2copy1271([4 x i32]* %32, [4 x i32]* %36), !dbg !5361, !psr.id !5369
  %37 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5361, !psr.id !5370
  %38 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %37, i32 0, i32 1, !dbg !5361, !psr.id !5371
  %39 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %38, i64 0, i64 0, !dbg !5361, !psr.id !5372
  %40 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !5361, !psr.id !5373
  %41 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %40, i64 0, i64 0, !dbg !5361, !psr.id !5374
  %42 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %41, i32 0, i32 1, !dbg !5361, !psr.id !5375
  %43 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %42, i64 0, i64 0, !dbg !5361, !psr.id !5376
  call void @fp2copy1271([4 x i32]* %39, [4 x i32]* %43), !dbg !5361, !psr.id !5377
  %44 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5361, !psr.id !5378
  %45 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %44, i32 0, i32 2, !dbg !5361, !psr.id !5379
  %46 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %45, i64 0, i64 0, !dbg !5361, !psr.id !5380
  %47 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !5361, !psr.id !5381
  %48 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %47, i64 0, i64 0, !dbg !5361, !psr.id !5382
  %49 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %48, i32 0, i32 2, !dbg !5361, !psr.id !5383
  %50 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %49, i64 0, i64 0, !dbg !5361, !psr.id !5384
  call void @fp2copy1271([4 x i32]* %46, [4 x i32]* %50), !dbg !5361, !psr.id !5385
  %51 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5361, !psr.id !5386
  %52 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %51, i32 0, i32 3, !dbg !5361, !psr.id !5387
  %53 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %52, i64 0, i64 0, !dbg !5361, !psr.id !5388
  %54 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !5361, !psr.id !5389
  %55 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %54, i64 0, i64 0, !dbg !5361, !psr.id !5390
  %56 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %55, i32 0, i32 3, !dbg !5361, !psr.id !5391
  %57 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %56, i64 0, i64 0, !dbg !5361, !psr.id !5392
  call void @fp2copy1271([4 x i32]* %53, [4 x i32]* %57), !dbg !5361, !psr.id !5393
  %58 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5361, !psr.id !5394
  %59 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %58, i32 0, i32 4, !dbg !5361, !psr.id !5395
  %60 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %59, i64 0, i64 0, !dbg !5361, !psr.id !5396
  %61 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !5361, !psr.id !5397
  %62 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %61, i64 0, i64 0, !dbg !5361, !psr.id !5398
  %63 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %62, i32 0, i32 4, !dbg !5361, !psr.id !5399
  %64 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %63, i64 0, i64 0, !dbg !5361, !psr.id !5400
  call void @fp2copy1271([4 x i32]* %60, [4 x i32]* %64), !dbg !5361, !psr.id !5401
  call void @llvm.dbg.value(metadata i32 0, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !5403
  br label %65, !dbg !5404, !psr.id !5406

65:                                               ; preds = %140, %29
  %.06 = phi i32 [ 0, %29 ], [ %141, %140 ], !dbg !5407, !psr.id !5408
  call void @llvm.dbg.value(metadata i32 %.06, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !5409
  %66 = sub i32 5, 1, !dbg !5410, !psr.id !5412
  %67 = icmp ult i32 %.06, %66, !dbg !5413, !psr.id !5414
  br i1 %67, label %68, label %142, !dbg !5415, !psr.id !5416

68:                                               ; preds = %65
  %69 = zext i32 %.06 to i64, !dbg !5417, !psr.id !5419
  %70 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %69, !dbg !5417, !psr.id !5420
  %71 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %70, i64 0, i64 0, !dbg !5417, !psr.id !5421
  %72 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %71, i32 0, i32 0, !dbg !5417, !psr.id !5422
  %73 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %72, i64 0, i64 0, !dbg !5417, !psr.id !5423
  %74 = add i32 %.06, 1, !dbg !5417, !psr.id !5424
  %75 = zext i32 %74 to i64, !dbg !5417, !psr.id !5425
  %76 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %75, !dbg !5417, !psr.id !5426
  %77 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %76, i64 0, i64 0, !dbg !5417, !psr.id !5427
  %78 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %77, i32 0, i32 0, !dbg !5417, !psr.id !5428
  %79 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %78, i64 0, i64 0, !dbg !5417, !psr.id !5429
  call void @fp2copy1271([4 x i32]* %73, [4 x i32]* %79), !dbg !5417, !psr.id !5430
  %80 = zext i32 %.06 to i64, !dbg !5417, !psr.id !5431
  %81 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %80, !dbg !5417, !psr.id !5432
  %82 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %81, i64 0, i64 0, !dbg !5417, !psr.id !5433
  %83 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %82, i32 0, i32 1, !dbg !5417, !psr.id !5434
  %84 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %83, i64 0, i64 0, !dbg !5417, !psr.id !5435
  %85 = add i32 %.06, 1, !dbg !5417, !psr.id !5436
  %86 = zext i32 %85 to i64, !dbg !5417, !psr.id !5437
  %87 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %86, !dbg !5417, !psr.id !5438
  %88 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %87, i64 0, i64 0, !dbg !5417, !psr.id !5439
  %89 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %88, i32 0, i32 1, !dbg !5417, !psr.id !5440
  %90 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %89, i64 0, i64 0, !dbg !5417, !psr.id !5441
  call void @fp2copy1271([4 x i32]* %84, [4 x i32]* %90), !dbg !5417, !psr.id !5442
  %91 = zext i32 %.06 to i64, !dbg !5417, !psr.id !5443
  %92 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %91, !dbg !5417, !psr.id !5444
  %93 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %92, i64 0, i64 0, !dbg !5417, !psr.id !5445
  %94 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %93, i32 0, i32 2, !dbg !5417, !psr.id !5446
  %95 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %94, i64 0, i64 0, !dbg !5417, !psr.id !5447
  %96 = add i32 %.06, 1, !dbg !5417, !psr.id !5448
  %97 = zext i32 %96 to i64, !dbg !5417, !psr.id !5449
  %98 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %97, !dbg !5417, !psr.id !5450
  %99 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %98, i64 0, i64 0, !dbg !5417, !psr.id !5451
  %100 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %99, i32 0, i32 2, !dbg !5417, !psr.id !5452
  %101 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %100, i64 0, i64 0, !dbg !5417, !psr.id !5453
  call void @fp2copy1271([4 x i32]* %95, [4 x i32]* %101), !dbg !5417, !psr.id !5454
  %102 = zext i32 %.06 to i64, !dbg !5417, !psr.id !5455
  %103 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %102, !dbg !5417, !psr.id !5456
  %104 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %103, i64 0, i64 0, !dbg !5417, !psr.id !5457
  %105 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %104, i32 0, i32 3, !dbg !5417, !psr.id !5458
  %106 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %105, i64 0, i64 0, !dbg !5417, !psr.id !5459
  %107 = add i32 %.06, 1, !dbg !5417, !psr.id !5460
  %108 = zext i32 %107 to i64, !dbg !5417, !psr.id !5461
  %109 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %108, !dbg !5417, !psr.id !5462
  %110 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %109, i64 0, i64 0, !dbg !5417, !psr.id !5463
  %111 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %110, i32 0, i32 3, !dbg !5417, !psr.id !5464
  %112 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %111, i64 0, i64 0, !dbg !5417, !psr.id !5465
  call void @fp2copy1271([4 x i32]* %106, [4 x i32]* %112), !dbg !5417, !psr.id !5466
  %113 = zext i32 %.06 to i64, !dbg !5417, !psr.id !5467
  %114 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %113, !dbg !5417, !psr.id !5468
  %115 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %114, i64 0, i64 0, !dbg !5417, !psr.id !5469
  %116 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %115, i32 0, i32 4, !dbg !5417, !psr.id !5470
  %117 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %116, i64 0, i64 0, !dbg !5417, !psr.id !5471
  %118 = add i32 %.06, 1, !dbg !5417, !psr.id !5472
  %119 = zext i32 %118 to i64, !dbg !5417, !psr.id !5473
  %120 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %119, !dbg !5417, !psr.id !5474
  %121 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %120, i64 0, i64 0, !dbg !5417, !psr.id !5475
  %122 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %121, i32 0, i32 4, !dbg !5417, !psr.id !5476
  %123 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %122, i64 0, i64 0, !dbg !5417, !psr.id !5477
  call void @fp2copy1271([4 x i32]* %117, [4 x i32]* %123), !dbg !5417, !psr.id !5478
  %124 = zext i32 %.06 to i64, !dbg !5479, !psr.id !5480
  %125 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %124, !dbg !5479, !psr.id !5481
  %126 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %125, i64 0, i64 0, !dbg !5479, !psr.id !5482
  %127 = zext i32 %.06 to i64, !dbg !5483, !psr.id !5484
  %128 = getelementptr inbounds [5 x [1 x %struct.point_extproj_precomp]], [5 x [1 x %struct.point_extproj_precomp]]* %9, i64 0, i64 %127, !dbg !5483, !psr.id !5485
  %129 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %128, i64 0, i64 0, !dbg !5483, !psr.id !5486
  call void @R1_to_R2(%struct.point_extproj* %126, %struct.point_extproj_precomp* %129, %struct.CurveStruct* %3), !dbg !5487, !psr.id !5488
  call void @llvm.dbg.value(metadata i32 0, metadata !5489, metadata !DIExpression()), !dbg !5270, !psr.id !5490
  br label %130, !dbg !5491, !psr.id !5493

130:                                              ; preds = %137, %68
  %.04 = phi i32 [ 0, %68 ], [ %138, %137 ], !dbg !5494, !psr.id !5495
  call void @llvm.dbg.value(metadata i32 %.04, metadata !5489, metadata !DIExpression()), !dbg !5270, !psr.id !5496
  %131 = icmp ult i32 %.04, 50, !dbg !5497, !psr.id !5499
  br i1 %131, label %132, label %139, !dbg !5500, !psr.id !5501

132:                                              ; preds = %130
  %133 = add i32 %.06, 1, !dbg !5502, !psr.id !5503
  %134 = zext i32 %133 to i64, !dbg !5504, !psr.id !5505
  %135 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %134, !dbg !5504, !psr.id !5506
  %136 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %135, i64 0, i64 0, !dbg !5504, !psr.id !5507
  call void @eccdouble_ni(%struct.point_extproj* %136), !dbg !5508, !psr.id !5509
  br label %137, !dbg !5508, !psr.id !5510

137:                                              ; preds = %132
  %138 = add i32 %.04, 1, !dbg !5511, !psr.id !5512
  call void @llvm.dbg.value(metadata i32 %138, metadata !5489, metadata !DIExpression()), !dbg !5270, !psr.id !5513
  br label %130, !dbg !5514, !llvm.loop !5515, !psr.id !5517

139:                                              ; preds = %130
  br label %140, !dbg !5518, !psr.id !5519

140:                                              ; preds = %139
  %141 = add i32 %.06, 1, !dbg !5520, !psr.id !5521
  call void @llvm.dbg.value(metadata i32 %141, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !5522
  br label %65, !dbg !5523, !llvm.loop !5524, !psr.id !5526

142:                                              ; preds = %65
  %143 = sub i32 5, 1, !dbg !5527, !psr.id !5528
  %144 = zext i32 %143 to i64, !dbg !5529, !psr.id !5530
  %145 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %144, !dbg !5529, !psr.id !5531
  %146 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %145, i64 0, i64 0, !dbg !5529, !psr.id !5532
  %147 = sub i32 5, 1, !dbg !5533, !psr.id !5534
  %148 = zext i32 %147 to i64, !dbg !5535, !psr.id !5536
  %149 = getelementptr inbounds [5 x [1 x %struct.point_extproj_precomp]], [5 x [1 x %struct.point_extproj_precomp]]* %9, i64 0, i64 %148, !dbg !5535, !psr.id !5537
  %150 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %149, i64 0, i64 0, !dbg !5535, !psr.id !5538
  call void @R1_to_R2(%struct.point_extproj* %146, %struct.point_extproj_precomp* %150, %struct.CurveStruct* %3), !dbg !5539, !psr.id !5540
  %151 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5541, !psr.id !5542
  %152 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %151, i32 0, i32 0, !dbg !5541, !psr.id !5543
  %153 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %152, i64 0, i64 0, !dbg !5544, !psr.id !5545
  %154 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 0, !dbg !5546, !psr.id !5547
  %155 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %154, i64 0, i64 0, !dbg !5548, !psr.id !5549
  %156 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %155, i32 0, i32 0, !dbg !5548, !psr.id !5550
  %157 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %156, i64 0, i64 0, !dbg !5546, !psr.id !5551
  call void @fp2copy1271([4 x i32]* %153, [4 x i32]* %157), !dbg !5552, !psr.id !5553
  %158 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5554, !psr.id !5555
  %159 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %158, i32 0, i32 1, !dbg !5554, !psr.id !5556
  %160 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %159, i64 0, i64 0, !dbg !5557, !psr.id !5558
  %161 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 0, !dbg !5559, !psr.id !5560
  %162 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %161, i64 0, i64 0, !dbg !5561, !psr.id !5562
  %163 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %162, i32 0, i32 1, !dbg !5561, !psr.id !5563
  %164 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %163, i64 0, i64 0, !dbg !5559, !psr.id !5564
  call void @fp2copy1271([4 x i32]* %160, [4 x i32]* %164), !dbg !5565, !psr.id !5566
  call void @llvm.dbg.value(metadata i32 0, metadata !5567, metadata !DIExpression()), !dbg !5270, !psr.id !5568
  call void @llvm.dbg.value(metadata i64 1, metadata !5569, metadata !DIExpression()), !dbg !5270, !psr.id !5570
  call void @llvm.dbg.value(metadata i32 0, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !5571
  br label %165, !dbg !5572, !psr.id !5574

165:                                              ; preds = %250, %142
  %.17 = phi i32 [ 0, %142 ], [ %251, %250 ], !dbg !5575, !psr.id !5576
  %.02 = phi i32 [ 0, %142 ], [ %.1, %250 ], !dbg !5577, !psr.id !5578
  %.01 = phi i64 [ 1, %142 ], [ %249, %250 ], !dbg !5270, !psr.id !5579
  call void @llvm.dbg.value(metadata i64 %.01, metadata !5569, metadata !DIExpression()), !dbg !5270, !psr.id !5580
  call void @llvm.dbg.value(metadata i32 %.02, metadata !5567, metadata !DIExpression()), !dbg !5270, !psr.id !5581
  call void @llvm.dbg.value(metadata i32 %.17, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !5582
  %166 = sub i32 5, 1, !dbg !5583, !psr.id !5585
  %167 = icmp ult i32 %.17, %166, !dbg !5586, !psr.id !5587
  br i1 %167, label %168, label %252, !dbg !5588, !psr.id !5589

168:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i32 0, metadata !5489, metadata !DIExpression()), !dbg !5270, !psr.id !5590
  br label %169, !dbg !5591, !psr.id !5594

169:                                              ; preds = %246, %168
  %.15 = phi i32 [ 0, %168 ], [ %247, %246 ], !dbg !5595, !psr.id !5596
  %.1 = phi i32 [ %.02, %168 ], [ %225, %246 ], !dbg !5270, !psr.id !5597
  call void @llvm.dbg.value(metadata i32 %.1, metadata !5567, metadata !DIExpression()), !dbg !5270, !psr.id !5598
  call void @llvm.dbg.value(metadata i32 %.15, metadata !5489, metadata !DIExpression()), !dbg !5270, !psr.id !5599
  %170 = zext i32 %.15 to i64, !dbg !5600, !psr.id !5602
  %171 = icmp ult i64 %170, %.01, !dbg !5603, !psr.id !5604
  br i1 %171, label %172, label %248, !dbg !5605, !psr.id !5606

172:                                              ; preds = %169
  %173 = zext i32 %.15 to i64, !dbg !5607, !psr.id !5609
  %174 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %173, !dbg !5607, !psr.id !5610
  %175 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %174, i64 0, i64 0, !dbg !5611, !psr.id !5612
  %176 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %175, i32 0, i32 0, !dbg !5611, !psr.id !5613
  %177 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %176, i64 0, i64 0, !dbg !5607, !psr.id !5614
  %178 = zext i32 %.15 to i64, !dbg !5615, !psr.id !5616
  %179 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %178, !dbg !5615, !psr.id !5617
  %180 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %179, i64 0, i64 0, !dbg !5618, !psr.id !5619
  %181 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %180, i32 0, i32 1, !dbg !5618, !psr.id !5620
  %182 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %181, i64 0, i64 0, !dbg !5615, !psr.id !5621
  %183 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5622, !psr.id !5623
  %184 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %183, i32 0, i32 0, !dbg !5622, !psr.id !5624
  %185 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %184, i64 0, i64 0, !dbg !5625, !psr.id !5626
  call void @fp2add1271([4 x i32]* %177, [4 x i32]* %182, [4 x i32]* %185), !dbg !5627, !psr.id !5628
  %186 = zext i32 %.15 to i64, !dbg !5629, !psr.id !5630
  %187 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %186, !dbg !5629, !psr.id !5631
  %188 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %187, i64 0, i64 0, !dbg !5632, !psr.id !5633
  %189 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %188, i32 0, i32 1, !dbg !5632, !psr.id !5634
  %190 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %189, i64 0, i64 0, !dbg !5629, !psr.id !5635
  %191 = zext i32 %.15 to i64, !dbg !5636, !psr.id !5637
  %192 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %191, !dbg !5636, !psr.id !5638
  %193 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %192, i64 0, i64 0, !dbg !5639, !psr.id !5640
  %194 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %193, i32 0, i32 0, !dbg !5639, !psr.id !5641
  %195 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %194, i64 0, i64 0, !dbg !5636, !psr.id !5642
  %196 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5643, !psr.id !5644
  %197 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %196, i32 0, i32 1, !dbg !5643, !psr.id !5645
  %198 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %197, i64 0, i64 0, !dbg !5646, !psr.id !5647
  call void @fp2sub1271([4 x i32]* %190, [4 x i32]* %195, [4 x i32]* %198), !dbg !5648, !psr.id !5649
  %199 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5650, !psr.id !5651
  %200 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %199, i32 0, i32 2, !dbg !5650, !psr.id !5652
  %201 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %200, i64 0, i64 0, !dbg !5653, !psr.id !5654
  call void @fp2zero1271([4 x i32]* %201), !dbg !5655, !psr.id !5656
  %202 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5657, !psr.id !5658
  %203 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %202, i32 0, i32 2, !dbg !5657, !psr.id !5659
  %204 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %203, i64 0, i64 0, !dbg !5660, !psr.id !5661
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %204, i64 0, i64 0, !dbg !5660, !psr.id !5662
  store i32 1, i32* %205, align 16, !dbg !5663, !psr.id !5664
  %206 = zext i32 %.15 to i64, !dbg !5665, !psr.id !5666
  %207 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %206, !dbg !5665, !psr.id !5667
  %208 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %207, i64 0, i64 0, !dbg !5668, !psr.id !5669
  %209 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %208, i32 0, i32 0, !dbg !5668, !psr.id !5670
  %210 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %209, i64 0, i64 0, !dbg !5665, !psr.id !5671
  %211 = zext i32 %.15 to i64, !dbg !5672, !psr.id !5673
  %212 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %211, !dbg !5672, !psr.id !5674
  %213 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %212, i64 0, i64 0, !dbg !5675, !psr.id !5676
  %214 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %213, i32 0, i32 1, !dbg !5675, !psr.id !5677
  %215 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %214, i64 0, i64 0, !dbg !5672, !psr.id !5678
  %216 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5679, !psr.id !5680
  %217 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %216, i32 0, i32 3, !dbg !5679, !psr.id !5681
  %218 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %217, i64 0, i64 0, !dbg !5682, !psr.id !5683
  call void @fp2mul1271([4 x i32]* %210, [4 x i32]* %215, [4 x i32]* %218), !dbg !5684, !psr.id !5685
  %219 = add i32 %.17, 1, !dbg !5686, !psr.id !5687
  %220 = zext i32 %219 to i64, !dbg !5688, !psr.id !5689
  %221 = getelementptr inbounds [5 x [1 x %struct.point_extproj_precomp]], [5 x [1 x %struct.point_extproj_precomp]]* %9, i64 0, i64 %220, !dbg !5688, !psr.id !5690
  %222 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %221, i64 0, i64 0, !dbg !5688, !psr.id !5691
  %223 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5692, !psr.id !5693
  %224 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5694, !psr.id !5695
  call void @eccadd_core(%struct.point_extproj_precomp* %222, %struct.point_extproj_precomp* %223, %struct.point_extproj* %224), !dbg !5696, !psr.id !5697
  %225 = add i32 %.1, 1, !dbg !5698, !psr.id !5699
  call void @llvm.dbg.value(metadata i32 %225, metadata !5567, metadata !DIExpression()), !dbg !5270, !psr.id !5700
  %226 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5701, !psr.id !5702
  %227 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5703, !psr.id !5704
  call void @eccnorm(%struct.point_extproj* %226, %struct.point_affine* %227), !dbg !5705, !psr.id !5706
  %228 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5707, !psr.id !5708
  %229 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5709, !psr.id !5710
  call void @point_setup(%struct.point_affine* %228, %struct.point_extproj* %229), !dbg !5711, !psr.id !5712
  %230 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5713, !psr.id !5714
  %231 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %230, i32 0, i32 0, !dbg !5713, !psr.id !5715
  %232 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %231, i64 0, i64 0, !dbg !5716, !psr.id !5717
  %233 = zext i32 %225 to i64, !dbg !5718, !psr.id !5719
  %234 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %233, !dbg !5718, !psr.id !5720
  %235 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %234, i64 0, i64 0, !dbg !5721, !psr.id !5722
  %236 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %235, i32 0, i32 0, !dbg !5721, !psr.id !5723
  %237 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %236, i64 0, i64 0, !dbg !5718, !psr.id !5724
  call void @fp2copy1271([4 x i32]* %232, [4 x i32]* %237), !dbg !5725, !psr.id !5726
  %238 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5727, !psr.id !5728
  %239 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %238, i32 0, i32 1, !dbg !5727, !psr.id !5729
  %240 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %239, i64 0, i64 0, !dbg !5730, !psr.id !5731
  %241 = zext i32 %225 to i64, !dbg !5732, !psr.id !5733
  %242 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %241, !dbg !5732, !psr.id !5734
  %243 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %242, i64 0, i64 0, !dbg !5735, !psr.id !5736
  %244 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %243, i32 0, i32 1, !dbg !5735, !psr.id !5737
  %245 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %244, i64 0, i64 0, !dbg !5732, !psr.id !5738
  call void @fp2copy1271([4 x i32]* %240, [4 x i32]* %245), !dbg !5739, !psr.id !5740
  br label %246, !dbg !5741, !psr.id !5742

246:                                              ; preds = %172
  %247 = add i32 %.15, 1, !dbg !5743, !psr.id !5744
  call void @llvm.dbg.value(metadata i32 %247, metadata !5489, metadata !DIExpression()), !dbg !5270, !psr.id !5745
  br label %169, !dbg !5746, !llvm.loop !5747, !psr.id !5749

248:                                              ; preds = %169
  %249 = mul i64 2, %.01, !dbg !5750, !psr.id !5751
  call void @llvm.dbg.value(metadata i64 %249, metadata !5569, metadata !DIExpression()), !dbg !5270, !psr.id !5752
  br label %250, !dbg !5753, !psr.id !5754

250:                                              ; preds = %248
  %251 = add i32 %.17, 1, !dbg !5755, !psr.id !5756
  call void @llvm.dbg.value(metadata i32 %251, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !5757
  br label %165, !dbg !5758, !llvm.loop !5759, !psr.id !5761

252:                                              ; preds = %165
  %253 = add i32 %.02, 1, !dbg !5762, !psr.id !5763
  call void @llvm.dbg.value(metadata i32 %253, metadata !5567, metadata !DIExpression()), !dbg !5270, !psr.id !5764
  call void @llvm.dbg.value(metadata i32 0, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !5765
  br label %254, !dbg !5766, !psr.id !5768

254:                                              ; preds = %324, %252
  %.28 = phi i32 [ 0, %252 ], [ %325, %324 ], !dbg !5769, !psr.id !5770
  call void @llvm.dbg.value(metadata i32 %.28, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !5771
  %255 = sub i32 5, 1, !dbg !5772, !psr.id !5774
  %256 = icmp ult i32 %.28, %255, !dbg !5775, !psr.id !5776
  br i1 %256, label %257, label %326, !dbg !5777, !psr.id !5778

257:                                              ; preds = %254
  call void @llvm.dbg.value(metadata i32 0, metadata !5489, metadata !DIExpression()), !dbg !5270, !psr.id !5779
  br label %258, !dbg !5780, !psr.id !5783

258:                                              ; preds = %321, %257
  %.2 = phi i32 [ 0, %257 ], [ %322, %321 ], !dbg !5784, !psr.id !5785
  call void @llvm.dbg.value(metadata i32 %.2, metadata !5489, metadata !DIExpression()), !dbg !5270, !psr.id !5786
  %259 = icmp ult i32 %.2, %253, !dbg !5787, !psr.id !5789
  br i1 %259, label %260, label %323, !dbg !5790, !psr.id !5791

260:                                              ; preds = %258
  %261 = mul i32 %.28, %253, !dbg !5792, !psr.id !5794
  %262 = add i32 %261, %.2, !dbg !5795, !psr.id !5796
  %263 = zext i32 %262 to i64, !dbg !5797, !psr.id !5798
  %264 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %263, !dbg !5797, !psr.id !5799
  %265 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %264, i64 0, i64 0, !dbg !5800, !psr.id !5801
  %266 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %265, i32 0, i32 0, !dbg !5800, !psr.id !5802
  %267 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %266, i64 0, i64 0, !dbg !5797, !psr.id !5803
  %268 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5804, !psr.id !5805
  %269 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %268, i32 0, i32 0, !dbg !5804, !psr.id !5806
  %270 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %269, i64 0, i64 0, !dbg !5807, !psr.id !5808
  call void @fp2copy1271([4 x i32]* %267, [4 x i32]* %270), !dbg !5809, !psr.id !5810
  %271 = mul i32 %.28, %253, !dbg !5811, !psr.id !5812
  %272 = add i32 %271, %.2, !dbg !5813, !psr.id !5814
  %273 = zext i32 %272 to i64, !dbg !5815, !psr.id !5816
  %274 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %273, !dbg !5815, !psr.id !5817
  %275 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %274, i64 0, i64 0, !dbg !5818, !psr.id !5819
  %276 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %275, i32 0, i32 1, !dbg !5818, !psr.id !5820
  %277 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %276, i64 0, i64 0, !dbg !5815, !psr.id !5821
  %278 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5822, !psr.id !5823
  %279 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %278, i32 0, i32 1, !dbg !5822, !psr.id !5824
  %280 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %279, i64 0, i64 0, !dbg !5825, !psr.id !5826
  call void @fp2copy1271([4 x i32]* %277, [4 x i32]* %280), !dbg !5827, !psr.id !5828
  %281 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5829, !psr.id !5830
  %282 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %281, i32 0, i32 2, !dbg !5829, !psr.id !5831
  %283 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %282, i64 0, i64 0, !dbg !5832, !psr.id !5833
  call void @fp2zero1271([4 x i32]* %283), !dbg !5834, !psr.id !5835
  %284 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5836, !psr.id !5837
  %285 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %284, i32 0, i32 2, !dbg !5836, !psr.id !5838
  %286 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %285, i64 0, i64 0, !dbg !5839, !psr.id !5840
  %287 = getelementptr inbounds [4 x i32], [4 x i32]* %286, i64 0, i64 0, !dbg !5839, !psr.id !5841
  store i32 1, i32* %287, align 16, !dbg !5842, !psr.id !5843
  call void @llvm.dbg.value(metadata i32 0, metadata !5844, metadata !DIExpression()), !dbg !5270, !psr.id !5845
  br label %288, !dbg !5846, !psr.id !5848

288:                                              ; preds = %292, %260
  %.03 = phi i32 [ 0, %260 ], [ %293, %292 ], !dbg !5849, !psr.id !5850
  call void @llvm.dbg.value(metadata i32 %.03, metadata !5844, metadata !DIExpression()), !dbg !5270, !psr.id !5851
  %289 = icmp ult i32 %.03, 10, !dbg !5852, !psr.id !5854
  br i1 %289, label %290, label %294, !dbg !5855, !psr.id !5856

290:                                              ; preds = %288
  %291 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5857, !psr.id !5858
  call void @eccdouble_ni(%struct.point_extproj* %291), !dbg !5859, !psr.id !5860
  br label %292, !dbg !5859, !psr.id !5861

292:                                              ; preds = %290
  %293 = add i32 %.03, 1, !dbg !5862, !psr.id !5863
  call void @llvm.dbg.value(metadata i32 %293, metadata !5844, metadata !DIExpression()), !dbg !5270, !psr.id !5864
  br label %288, !dbg !5865, !llvm.loop !5866, !psr.id !5868

294:                                              ; preds = %288
  %295 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5869, !psr.id !5870
  %296 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5871, !psr.id !5872
  call void @eccnorm(%struct.point_extproj* %295, %struct.point_affine* %296), !dbg !5873, !psr.id !5874
  %297 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5875, !psr.id !5876
  %298 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5877, !psr.id !5878
  call void @point_setup(%struct.point_affine* %297, %struct.point_extproj* %298), !dbg !5879, !psr.id !5880
  %299 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5881, !psr.id !5882
  %300 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %299, i32 0, i32 0, !dbg !5881, !psr.id !5883
  %301 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %300, i64 0, i64 0, !dbg !5884, !psr.id !5885
  %302 = add i32 %.28, 1, !dbg !5886, !psr.id !5887
  %303 = mul i32 %302, %253, !dbg !5888, !psr.id !5889
  %304 = add i32 %303, %.2, !dbg !5890, !psr.id !5891
  %305 = zext i32 %304 to i64, !dbg !5892, !psr.id !5893
  %306 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %305, !dbg !5892, !psr.id !5894
  %307 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %306, i64 0, i64 0, !dbg !5895, !psr.id !5896
  %308 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %307, i32 0, i32 0, !dbg !5895, !psr.id !5897
  %309 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %308, i64 0, i64 0, !dbg !5892, !psr.id !5898
  call void @fp2copy1271([4 x i32]* %301, [4 x i32]* %309), !dbg !5899, !psr.id !5900
  %310 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5901, !psr.id !5902
  %311 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %310, i32 0, i32 1, !dbg !5901, !psr.id !5903
  %312 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %311, i64 0, i64 0, !dbg !5904, !psr.id !5905
  %313 = add i32 %.28, 1, !dbg !5906, !psr.id !5907
  %314 = mul i32 %313, %253, !dbg !5908, !psr.id !5909
  %315 = add i32 %314, %.2, !dbg !5910, !psr.id !5911
  %316 = zext i32 %315 to i64, !dbg !5912, !psr.id !5913
  %317 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %316, !dbg !5912, !psr.id !5914
  %318 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %317, i64 0, i64 0, !dbg !5915, !psr.id !5916
  %319 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %318, i32 0, i32 1, !dbg !5915, !psr.id !5917
  %320 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %319, i64 0, i64 0, !dbg !5912, !psr.id !5918
  call void @fp2copy1271([4 x i32]* %312, [4 x i32]* %320), !dbg !5919, !psr.id !5920
  br label %321, !dbg !5921, !psr.id !5922

321:                                              ; preds = %294
  %322 = add i32 %.2, 1, !dbg !5923, !psr.id !5924
  call void @llvm.dbg.value(metadata i32 %322, metadata !5489, metadata !DIExpression()), !dbg !5270, !psr.id !5925
  br label %258, !dbg !5926, !llvm.loop !5927, !psr.id !5929

323:                                              ; preds = %258
  br label %324, !dbg !5930, !psr.id !5931

324:                                              ; preds = %323
  %325 = add i32 %.28, 1, !dbg !5932, !psr.id !5933
  call void @llvm.dbg.value(metadata i32 %325, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !5934
  br label %254, !dbg !5935, !llvm.loop !5936, !psr.id !5938

326:                                              ; preds = %254
  call void @llvm.dbg.value(metadata i32 0, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !5939
  br label %327, !dbg !5940, !psr.id !5942

327:                                              ; preds = %402, %326
  %.3 = phi i32 [ 0, %326 ], [ %403, %402 ], !dbg !5943, !psr.id !5944
  call void @llvm.dbg.value(metadata i32 %.3, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !5945
  %328 = icmp ult i32 %.3, 80, !dbg !5946, !psr.id !5948
  br i1 %328, label %329, label %404, !dbg !5949, !psr.id !5950

329:                                              ; preds = %327
  %330 = zext i32 %.3 to i64, !dbg !5951, !psr.id !5953
  %331 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %330, !dbg !5951, !psr.id !5954
  %332 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %331, i64 0, i64 0, !dbg !5955, !psr.id !5956
  %333 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %332, i32 0, i32 0, !dbg !5955, !psr.id !5957
  %334 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %333, i64 0, i64 0, !dbg !5951, !psr.id !5958
  %335 = zext i32 %.3 to i64, !dbg !5959, !psr.id !5960
  %336 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %335, !dbg !5959, !psr.id !5961
  %337 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %336, i64 0, i64 0, !dbg !5962, !psr.id !5963
  %338 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %337, i32 0, i32 1, !dbg !5962, !psr.id !5964
  %339 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %338, i64 0, i64 0, !dbg !5959, !psr.id !5965
  %340 = zext i32 %.3 to i64, !dbg !5966, !psr.id !5967
  %341 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %340, !dbg !5966, !psr.id !5968
  %342 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %341, i64 0, i64 0, !dbg !5969, !psr.id !5970
  %343 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %342, i32 0, i32 0, !dbg !5969, !psr.id !5971
  %344 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %343, i64 0, i64 0, !dbg !5966, !psr.id !5972
  call void @fp2mul1271([4 x i32]* %334, [4 x i32]* %339, [4 x i32]* %344), !dbg !5973, !psr.id !5974
  %345 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %3, i32 0, i32 4, !dbg !5975, !psr.id !5976
  %346 = bitcast [4 x i64]* %345 to [4 x i32]*, !dbg !5977, !psr.id !5978
  %347 = zext i32 %.3 to i64, !dbg !5979, !psr.id !5980
  %348 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %347, !dbg !5979, !psr.id !5981
  %349 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %348, i64 0, i64 0, !dbg !5982, !psr.id !5983
  %350 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %349, i32 0, i32 0, !dbg !5982, !psr.id !5984
  %351 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %350, i64 0, i64 0, !dbg !5979, !psr.id !5985
  %352 = zext i32 %.3 to i64, !dbg !5986, !psr.id !5987
  %353 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %352, !dbg !5986, !psr.id !5988
  %354 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %353, i64 0, i64 0, !dbg !5989, !psr.id !5990
  %355 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %354, i32 0, i32 2, !dbg !5989, !psr.id !5991
  %356 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %355, i64 0, i64 0, !dbg !5986, !psr.id !5992
  call void @fp2mul1271([4 x i32]* %346, [4 x i32]* %351, [4 x i32]* %356), !dbg !5993, !psr.id !5994
  %357 = zext i32 %.3 to i64, !dbg !5995, !psr.id !5996
  %358 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %357, !dbg !5995, !psr.id !5997
  %359 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %358, i64 0, i64 0, !dbg !5998, !psr.id !5999
  %360 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %359, i32 0, i32 2, !dbg !5998, !psr.id !6000
  %361 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %360, i64 0, i64 0, !dbg !5995, !psr.id !6001
  %362 = zext i32 %.3 to i64, !dbg !6002, !psr.id !6003
  %363 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %362, !dbg !6002, !psr.id !6004
  %364 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %363, i64 0, i64 0, !dbg !6005, !psr.id !6006
  %365 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %364, i32 0, i32 2, !dbg !6005, !psr.id !6007
  %366 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %365, i64 0, i64 0, !dbg !6002, !psr.id !6008
  %367 = zext i32 %.3 to i64, !dbg !6009, !psr.id !6010
  %368 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %367, !dbg !6009, !psr.id !6011
  %369 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %368, i64 0, i64 0, !dbg !6012, !psr.id !6013
  %370 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %369, i32 0, i32 2, !dbg !6012, !psr.id !6014
  %371 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %370, i64 0, i64 0, !dbg !6009, !psr.id !6015
  call void @fp2add1271([4 x i32]* %361, [4 x i32]* %366, [4 x i32]* %371), !dbg !6016, !psr.id !6017
  %372 = zext i32 %.3 to i64, !dbg !6018, !psr.id !6019
  %373 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %372, !dbg !6018, !psr.id !6020
  %374 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %373, i64 0, i64 0, !dbg !6021, !psr.id !6022
  %375 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %374, i32 0, i32 0, !dbg !6021, !psr.id !6023
  %376 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %375, i64 0, i64 0, !dbg !6018, !psr.id !6024
  %377 = zext i32 %.3 to i64, !dbg !6025, !psr.id !6026
  %378 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %377, !dbg !6025, !psr.id !6027
  %379 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %378, i64 0, i64 0, !dbg !6028, !psr.id !6029
  %380 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %379, i32 0, i32 1, !dbg !6028, !psr.id !6030
  %381 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %380, i64 0, i64 0, !dbg !6025, !psr.id !6031
  %382 = zext i32 %.3 to i64, !dbg !6032, !psr.id !6033
  %383 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %382, !dbg !6032, !psr.id !6034
  %384 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %383, i64 0, i64 0, !dbg !6035, !psr.id !6036
  %385 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %384, i32 0, i32 0, !dbg !6035, !psr.id !6037
  %386 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %385, i64 0, i64 0, !dbg !6032, !psr.id !6038
  call void @fp2add1271([4 x i32]* %376, [4 x i32]* %381, [4 x i32]* %386), !dbg !6039, !psr.id !6040
  %387 = zext i32 %.3 to i64, !dbg !6041, !psr.id !6042
  %388 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %387, !dbg !6041, !psr.id !6043
  %389 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %388, i64 0, i64 0, !dbg !6044, !psr.id !6045
  %390 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %389, i32 0, i32 1, !dbg !6044, !psr.id !6046
  %391 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %390, i64 0, i64 0, !dbg !6041, !psr.id !6047
  %392 = zext i32 %.3 to i64, !dbg !6048, !psr.id !6049
  %393 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %392, !dbg !6048, !psr.id !6050
  %394 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %393, i64 0, i64 0, !dbg !6051, !psr.id !6052
  %395 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %394, i32 0, i32 0, !dbg !6051, !psr.id !6053
  %396 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %395, i64 0, i64 0, !dbg !6048, !psr.id !6054
  %397 = zext i32 %.3 to i64, !dbg !6055, !psr.id !6056
  %398 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %397, !dbg !6055, !psr.id !6057
  %399 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %398, i64 0, i64 0, !dbg !6058, !psr.id !6059
  %400 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %399, i32 0, i32 1, !dbg !6058, !psr.id !6060
  %401 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %400, i64 0, i64 0, !dbg !6055, !psr.id !6061
  call void @fp2sub1271([4 x i32]* %391, [4 x i32]* %396, [4 x i32]* %401), !dbg !6062, !psr.id !6063
  br label %402, !dbg !6064, !psr.id !6065

402:                                              ; preds = %329
  %403 = add i32 %.3, 1, !dbg !6066, !psr.id !6067
  call void @llvm.dbg.value(metadata i32 %403, metadata !5402, metadata !DIExpression()), !dbg !5270, !psr.id !6068
  br label %327, !dbg !6069, !llvm.loop !6070, !psr.id !6072

404:                                              ; preds = %327
  br label %405, !dbg !6073, !psr.id !6074

405:                                              ; preds = %404, %18
  %.0 = phi i1 [ false, %18 ], [ true, %404 ], !dbg !5270, !psr.id !6075
  ret i1 %.0, !dbg !6076, !psr.id !6077
}

declare dso_local void @cofactor_clearing(%struct.point_extproj*, %struct.CurveStruct*) #2

declare dso_local void @eccadd_core(%struct.point_extproj_precomp*, %struct.point_extproj_precomp*, %struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccnorm_wrapper(%struct.point_extproj* %0, %struct.point_affine* %1) #0 !dbg !6078 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !6079, metadata !DIExpression()), !dbg !6080, !psr.id !6081
  call void @llvm.dbg.value(metadata %struct.point_affine* %1, metadata !6082, metadata !DIExpression()), !dbg !6080, !psr.id !6083
  %3 = call %struct.smack_value* (%struct.point_extproj*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.point_extproj*, ...)*)(%struct.point_extproj* %0), !dbg !6084, !psr.id !6085
  call void @public_in(%struct.smack_value* %3), !dbg !6086, !psr.id !6087
  %4 = call %struct.smack_value* (%struct.point_affine*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.point_affine*, ...)*)(%struct.point_affine* %1), !dbg !6088, !psr.id !6089
  call void @public_in(%struct.smack_value* %4), !dbg !6090, !psr.id !6091
  call void @eccnorm(%struct.point_extproj* %0, %struct.point_affine* %1), !dbg !6092, !psr.id !6093
  ret void, !dbg !6094, !psr.id !6095
}

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccnorm_wrapper_t() #0 !dbg !6096 {
  %1 = alloca [1 x %struct.point_extproj], align 16, !psr.id !6099
  %2 = alloca [1 x %struct.point_affine], align 16, !psr.id !6100
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %1, metadata !6101, metadata !DIExpression()), !dbg !6102, !psr.id !6103
  %3 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %1, i64 0, i64 0, !dbg !6104, !psr.id !6105
  call void (%struct.point_extproj*, ...) @getpt(%struct.point_extproj* sret(%struct.point_extproj) align 4 %3), !dbg !6106, !psr.id !6107
  call void @llvm.dbg.declare(metadata [1 x %struct.point_affine]* %2, metadata !6108, metadata !DIExpression()), !dbg !6109, !psr.id !6110
  %4 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %2, i64 0, i64 0, !dbg !6111, !psr.id !6112
  call void (%struct.point_affine*, ...) @getpt2(%struct.point_affine* sret(%struct.point_affine) align 4 %4), !dbg !6113, !psr.id !6114
  %5 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %1, i64 0, i64 0, !dbg !6115, !psr.id !6116
  %6 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %2, i64 0, i64 0, !dbg !6117, !psr.id !6118
  call void @eccnorm(%struct.point_extproj* %5, %struct.point_affine* %6), !dbg !6119, !psr.id !6120
  ret void, !dbg !6121, !psr.id !6122
}

declare dso_local void @getpt(%struct.point_extproj* sret(%struct.point_extproj) align 4, ...) #2

declare dso_local void @getpt2(%struct.point_affine* sret(%struct.point_affine) align 4, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @fp2div1271([4 x i32]* %0) #0 !dbg !6123 {
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !6124, metadata !DIExpression()), !dbg !6125, !psr.id !6126
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !6127, !psr.id !6128
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !6127, !psr.id !6129
  call void @fpdiv1271(i32* %3), !dbg !6130, !psr.id !6131
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !6132, !psr.id !6133
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !6132, !psr.id !6134
  call void @fpdiv1271(i32* %5), !dbg !6135, !psr.id !6136
  ret void, !dbg !6137, !psr.id !6138
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpdiv1271(i32* %0) #0 !dbg !6139 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !6140, metadata !DIExpression()), !dbg !6141, !psr.id !6142
  call void @llvm.dbg.value(metadata i32 0, metadata !6143, metadata !DIExpression()), !dbg !6141, !psr.id !6144
  %2 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !6145, !psr.id !6146
  %3 = load i32, i32* %2, align 4, !dbg !6145, !psr.id !6147
  %4 = and i32 %3, 1, !dbg !6148, !psr.id !6149
  %5 = sub i32 0, %4, !dbg !6150, !psr.id !6151
  call void @llvm.dbg.value(metadata i32 %5, metadata !6152, metadata !DIExpression()), !dbg !6141, !psr.id !6153
  call void @llvm.dbg.value(metadata i32 0, metadata !6154, metadata !DIExpression()), !dbg !6141, !psr.id !6155
  br label %6, !dbg !6156, !psr.id !6158

6:                                                ; preds = %22, %1
  %.01 = phi i32 [ 0, %1 ], [ %21, %22 ], !dbg !6141, !psr.id !6159
  %.0 = phi i32 [ 0, %1 ], [ %23, %22 ], !dbg !6160, !psr.id !6161
  call void @llvm.dbg.value(metadata i32 %.0, metadata !6154, metadata !DIExpression()), !dbg !6141, !psr.id !6162
  call void @llvm.dbg.value(metadata i32 %.01, metadata !6143, metadata !DIExpression()), !dbg !6141, !psr.id !6163
  %7 = icmp ult i32 %.0, 3, !dbg !6164, !psr.id !6166
  br i1 %7, label %8, label %24, !dbg !6167, !psr.id !6168

8:                                                ; preds = %6
  %9 = add i32 %5, %.01, !dbg !6169, !psr.id !6172
  call void @llvm.dbg.value(metadata i32 %9, metadata !6173, metadata !DIExpression()), !dbg !6174, !psr.id !6175
  %10 = zext i32 %.0 to i64, !dbg !6169, !psr.id !6176
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !6169, !psr.id !6177
  %12 = load i32, i32* %11, align 4, !dbg !6169, !psr.id !6178
  %13 = add i32 %12, %9, !dbg !6169, !psr.id !6179
  %14 = zext i32 %.0 to i64, !dbg !6169, !psr.id !6180
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !6169, !psr.id !6181
  store i32 %13, i32* %15, align 4, !dbg !6169, !psr.id !6182
  %16 = call i32 @is_digit_lessthan_ct(i32 %9, i32 %.01), !dbg !6169, !psr.id !6183
  %17 = zext i32 %.0 to i64, !dbg !6169, !psr.id !6184
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !6169, !psr.id !6185
  %19 = load i32, i32* %18, align 4, !dbg !6169, !psr.id !6186
  %20 = call i32 @is_digit_lessthan_ct(i32 %19, i32 %9), !dbg !6169, !psr.id !6187
  %21 = or i32 %16, %20, !dbg !6169, !psr.id !6188
  call void @llvm.dbg.value(metadata i32 %21, metadata !6143, metadata !DIExpression()), !dbg !6141, !psr.id !6189
  br label %22, !dbg !6190, !psr.id !6191

22:                                               ; preds = %8
  %23 = add i32 %.0, 1, !dbg !6192, !psr.id !6193
  call void @llvm.dbg.value(metadata i32 %23, metadata !6154, metadata !DIExpression()), !dbg !6141, !psr.id !6194
  br label %6, !dbg !6195, !llvm.loop !6196, !psr.id !6198

24:                                               ; preds = %6
  %25 = lshr i32 %5, 1, !dbg !6199, !psr.id !6201
  %26 = add i32 %25, %.01, !dbg !6199, !psr.id !6202
  call void @llvm.dbg.value(metadata i32 %26, metadata !6203, metadata !DIExpression()), !dbg !6204, !psr.id !6205
  %27 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !6199, !psr.id !6206
  %28 = load i32, i32* %27, align 4, !dbg !6199, !psr.id !6207
  %29 = add i32 %28, %26, !dbg !6199, !psr.id !6208
  %30 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !6199, !psr.id !6209
  store i32 %29, i32* %30, align 4, !dbg !6199, !psr.id !6210
  %31 = call i32 @is_digit_lessthan_ct(i32 %26, i32 %.01), !dbg !6199, !psr.id !6211
  %32 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !6199, !psr.id !6212
  %33 = load i32, i32* %32, align 4, !dbg !6199, !psr.id !6213
  %34 = call i32 @is_digit_lessthan_ct(i32 %33, i32 %26), !dbg !6199, !psr.id !6214
  %35 = or i32 %31, %34, !dbg !6199, !psr.id !6215
  call void @llvm.dbg.value(metadata i32 %35, metadata !6143, metadata !DIExpression()), !dbg !6141, !psr.id !6216
  call void @llvm.dbg.value(metadata i32 0, metadata !6154, metadata !DIExpression()), !dbg !6141, !psr.id !6217
  br label %36, !dbg !6218, !psr.id !6220

36:                                               ; preds = %51, %24
  %.1 = phi i32 [ 0, %24 ], [ %52, %51 ], !dbg !6221, !psr.id !6222
  call void @llvm.dbg.value(metadata i32 %.1, metadata !6154, metadata !DIExpression()), !dbg !6141, !psr.id !6223
  %37 = icmp ult i32 %.1, 3, !dbg !6224, !psr.id !6226
  br i1 %37, label %38, label %53, !dbg !6227, !psr.id !6228

38:                                               ; preds = %36
  %39 = zext i32 %.1 to i64, !dbg !6229, !psr.id !6231
  %40 = getelementptr inbounds i32, i32* %0, i64 %39, !dbg !6229, !psr.id !6232
  %41 = load i32, i32* %40, align 4, !dbg !6229, !psr.id !6233
  %42 = lshr i32 %41, 1, !dbg !6229, !psr.id !6234
  %43 = add i32 %.1, 1, !dbg !6229, !psr.id !6235
  %44 = zext i32 %43 to i64, !dbg !6229, !psr.id !6236
  %45 = getelementptr inbounds i32, i32* %0, i64 %44, !dbg !6229, !psr.id !6237
  %46 = load i32, i32* %45, align 4, !dbg !6229, !psr.id !6238
  %47 = shl i32 %46, 31, !dbg !6229, !psr.id !6239
  %48 = xor i32 %42, %47, !dbg !6229, !psr.id !6240
  %49 = zext i32 %.1 to i64, !dbg !6229, !psr.id !6241
  %50 = getelementptr inbounds i32, i32* %0, i64 %49, !dbg !6229, !psr.id !6242
  store i32 %48, i32* %50, align 4, !dbg !6229, !psr.id !6243
  br label %51, !dbg !6244, !psr.id !6245

51:                                               ; preds = %38
  %52 = add i32 %.1, 1, !dbg !6246, !psr.id !6247
  call void @llvm.dbg.value(metadata i32 %52, metadata !6154, metadata !DIExpression()), !dbg !6141, !psr.id !6248
  br label %36, !dbg !6249, !llvm.loop !6250, !psr.id !6252

53:                                               ; preds = %36
  %54 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !6253, !psr.id !6254
  %55 = load i32, i32* %54, align 4, !dbg !6253, !psr.id !6255
  %56 = lshr i32 %55, 1, !dbg !6256, !psr.id !6257
  %57 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !6258, !psr.id !6259
  store i32 %56, i32* %57, align 4, !dbg !6260, !psr.id !6261
  ret void, !dbg !6262, !psr.id !6263
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @eccnorm_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!52, !53, !54}
!llvm.ident = !{!55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mask_7fff", scope: !2, file: !41, line: 48, type: !42, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "eccnorm.c", directory: "/home/luwei/bech-back/FourQlib/ECC_norm")
!4 = !{}
!5 = !{!6, !13, !12, !14, !15, !20, !23}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "digit_t", file: !7, line: 94, baseType: !8)
!7 = !DIFile(filename: "./../fourq/fourqlib/FourQ.h", directory: "/home/luwei/bech-back/FourQlib/ECC_norm")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 26, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !11, line: 42, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "felm_t", file: !7, line: 202, baseType: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 4)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 27, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !11, line: 45, baseType: !22)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_precomp_t", file: !7, line: 214, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 768, elements: !36)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_precomp", file: !7, line: 213, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 213, size: 768, elements: !28)
!28 = !{!29, !34, !35}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "xy", scope: !27, file: !7, line: 213, baseType: !30, size: 256)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "f2elm_t", file: !7, line: 204, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 2)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "yx", scope: !27, file: !7, line: 213, baseType: !30, size: 256, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !27, file: !7, line: 213, baseType: !30, size: 256, offset: 512)
!36 = !{!37}
!37 = !DISubrange(count: 1)
!38 = !{!0, !39, !43, !46}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "prime1271_0", scope: !2, file: !41, line: 49, type: !42, isLocal: false, isDefinition: true)
!41 = !DIFile(filename: "./../fourq/fourqlib/generic/fp.h", directory: "/home/luwei/bech-back/FourQlib/ECC_norm")
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "Montgomery_rprime", scope: !2, file: !41, line: 318, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !18)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "Montgomery_Rprime", scope: !2, file: !41, line: 317, type: !45, isLocal: true, isDefinition: true)
!48 = !{!"0"}
!49 = !{!"1"}
!50 = !{!"2"}
!51 = !{!"3"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!56 = distinct !DISubprogram(name: "table_lookup_1x8", scope: !57, file: !57, line: 52, type: !58, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!57 = !DIFile(filename: "./../fourq/fourqlib/generic/../table_lookup.h", directory: "/home/luwei/bech-back/FourQlib/ECC_norm")
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !70, !12, !12}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_extproj_precomp_t", file: !7, line: 212, baseType: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 1024, elements: !36)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_extproj_precomp", file: !7, line: 211, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 211, size: 1024, elements: !65)
!65 = !{!66, !67, !68, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "xy", scope: !64, file: !7, line: 211, baseType: !30, size: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "yx", scope: !64, file: !7, line: 211, baseType: !30, size: 256, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "z2", scope: !64, file: !7, line: 211, baseType: !30, size: 256, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !64, file: !7, line: 211, baseType: !30, size: 256, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!71 = !{!"4"}
!72 = !{!"5"}
!73 = !DILocalVariable(name: "table", arg: 1, scope: !56, file: !57, line: 52, type: !60)
!74 = !DILocation(line: 0, scope: !56)
!75 = !{!"6"}
!76 = !DILocalVariable(name: "P", arg: 2, scope: !56, file: !57, line: 52, type: !70)
!77 = !{!"7"}
!78 = !DILocalVariable(name: "digit", arg: 3, scope: !56, file: !57, line: 52, type: !12)
!79 = !{!"8"}
!80 = !DILocalVariable(name: "sign_mask", arg: 4, scope: !56, file: !57, line: 52, type: !12)
!81 = !{!"9"}
!82 = !DILocalVariable(name: "point", scope: !56, file: !57, line: 142, type: !61)
!83 = !DILocation(line: 142, column: 29, scope: !56)
!84 = !{!"10"}
!85 = !DILocalVariable(name: "temp_point", scope: !56, file: !57, line: 142, type: !61)
!86 = !DILocation(line: 142, column: 36, scope: !56)
!87 = !{!"11"}
!88 = !DILocation(line: 146, column: 5, scope: !56)
!89 = !{!"12"}
!90 = !{!"13"}
!91 = !{!"14"}
!92 = !{!"15"}
!93 = !{!"16"}
!94 = !{!"17"}
!95 = !{!"18"}
!96 = !{!"19"}
!97 = !{!"20"}
!98 = !{!"21"}
!99 = !{!"22"}
!100 = !{!"23"}
!101 = !{!"24"}
!102 = !{!"25"}
!103 = !{!"26"}
!104 = !{!"27"}
!105 = !{!"28"}
!106 = !{!"29"}
!107 = !{!"30"}
!108 = !{!"31"}
!109 = !{!"32"}
!110 = !{!"33"}
!111 = !{!"34"}
!112 = !{!"35"}
!113 = !{!"36"}
!114 = !{!"37"}
!115 = !{!"38"}
!116 = !{!"39"}
!117 = !{!"40"}
!118 = !{!"41"}
!119 = !{!"42"}
!120 = !{!"43"}
!121 = !DILocalVariable(name: "i", scope: !56, file: !57, line: 143, type: !12)
!122 = !{!"44"}
!123 = !DILocation(line: 148, column: 10, scope: !124)
!124 = distinct !DILexicalBlock(scope: !56, file: !57, line: 148, column: 5)
!125 = !{!"45"}
!126 = !{!"46"}
!127 = !DILocation(line: 0, scope: !124)
!128 = !{!"47"}
!129 = !{!"48"}
!130 = !{!"49"}
!131 = !DILocation(line: 148, column: 19, scope: !132)
!132 = distinct !DILexicalBlock(scope: !124, file: !57, line: 148, column: 5)
!133 = !{!"50"}
!134 = !DILocation(line: 148, column: 5, scope: !124)
!135 = !{!"51"}
!136 = !DILocation(line: 150, column: 14, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !57, line: 149, column: 5)
!138 = !{!"52"}
!139 = !{!"53"}
!140 = !DILocation(line: 152, column: 25, scope: !137)
!141 = !{!"54"}
!142 = !DILocation(line: 152, column: 61, scope: !137)
!143 = !{!"55"}
!144 = !DILocalVariable(name: "mask", scope: !56, file: !57, line: 144, type: !6)
!145 = !{!"56"}
!146 = !DILocation(line: 153, column: 9, scope: !137)
!147 = !{!"57"}
!148 = !{!"58"}
!149 = !{!"59"}
!150 = !{!"60"}
!151 = !{!"61"}
!152 = !{!"62"}
!153 = !{!"63"}
!154 = !{!"64"}
!155 = !{!"65"}
!156 = !{!"66"}
!157 = !{!"67"}
!158 = !{!"68"}
!159 = !{!"69"}
!160 = !{!"70"}
!161 = !{!"71"}
!162 = !{!"72"}
!163 = !{!"73"}
!164 = !{!"74"}
!165 = !{!"75"}
!166 = !{!"76"}
!167 = !{!"77"}
!168 = !{!"78"}
!169 = !{!"79"}
!170 = !{!"80"}
!171 = !{!"81"}
!172 = !{!"82"}
!173 = !{!"83"}
!174 = !{!"84"}
!175 = !{!"85"}
!176 = !{!"86"}
!177 = !{!"87"}
!178 = !{!"88"}
!179 = !{!"89"}
!180 = !{!"90"}
!181 = !{!"91"}
!182 = !{!"92"}
!183 = !DILocalVariable(name: "j", scope: !56, file: !57, line: 143, type: !12)
!184 = !{!"93"}
!185 = !DILocation(line: 155, column: 14, scope: !186)
!186 = distinct !DILexicalBlock(scope: !137, file: !57, line: 155, column: 9)
!187 = !{!"94"}
!188 = !DILocation(line: 0, scope: !186)
!189 = !{!"95"}
!190 = !{!"96"}
!191 = !DILocation(line: 155, column: 23, scope: !192)
!192 = distinct !DILexicalBlock(scope: !186, file: !57, line: 155, column: 9)
!193 = !{!"97"}
!194 = !DILocation(line: 155, column: 9, scope: !186)
!195 = !{!"98"}
!196 = !DILocation(line: 156, column: 47, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !57, line: 155, column: 44)
!198 = !{!"99"}
!199 = !{!"100"}
!200 = !DILocation(line: 156, column: 40, scope: !197)
!201 = !{!"101"}
!202 = !{!"102"}
!203 = !{!"103"}
!204 = !{!"104"}
!205 = !DILocation(line: 156, column: 70, scope: !197)
!206 = !{!"105"}
!207 = !{!"106"}
!208 = !DILocation(line: 156, column: 58, scope: !197)
!209 = !{!"107"}
!210 = !{!"108"}
!211 = !{!"109"}
!212 = !{!"110"}
!213 = !DILocation(line: 156, column: 56, scope: !197)
!214 = !{!"111"}
!215 = !DILocation(line: 156, column: 37, scope: !197)
!216 = !{!"112"}
!217 = !DILocation(line: 156, column: 90, scope: !197)
!218 = !{!"113"}
!219 = !{!"114"}
!220 = !DILocation(line: 156, column: 83, scope: !197)
!221 = !{!"115"}
!222 = !{!"116"}
!223 = !{!"117"}
!224 = !{!"118"}
!225 = !DILocation(line: 156, column: 81, scope: !197)
!226 = !{!"119"}
!227 = !DILocation(line: 156, column: 20, scope: !197)
!228 = !{!"120"}
!229 = !{!"121"}
!230 = !DILocation(line: 156, column: 13, scope: !197)
!231 = !{!"122"}
!232 = !{!"123"}
!233 = !{!"124"}
!234 = !DILocation(line: 156, column: 29, scope: !197)
!235 = !{!"125"}
!236 = !DILocation(line: 157, column: 47, scope: !197)
!237 = !{!"126"}
!238 = !{!"127"}
!239 = !DILocation(line: 157, column: 40, scope: !197)
!240 = !{!"128"}
!241 = !{!"129"}
!242 = !{!"130"}
!243 = !{!"131"}
!244 = !DILocation(line: 157, column: 70, scope: !197)
!245 = !{!"132"}
!246 = !{!"133"}
!247 = !DILocation(line: 157, column: 58, scope: !197)
!248 = !{!"134"}
!249 = !{!"135"}
!250 = !{!"136"}
!251 = !{!"137"}
!252 = !DILocation(line: 157, column: 56, scope: !197)
!253 = !{!"138"}
!254 = !DILocation(line: 157, column: 37, scope: !197)
!255 = !{!"139"}
!256 = !DILocation(line: 157, column: 90, scope: !197)
!257 = !{!"140"}
!258 = !{!"141"}
!259 = !DILocation(line: 157, column: 83, scope: !197)
!260 = !{!"142"}
!261 = !{!"143"}
!262 = !{!"144"}
!263 = !{!"145"}
!264 = !DILocation(line: 157, column: 81, scope: !197)
!265 = !{!"146"}
!266 = !DILocation(line: 157, column: 20, scope: !197)
!267 = !{!"147"}
!268 = !{!"148"}
!269 = !DILocation(line: 157, column: 13, scope: !197)
!270 = !{!"149"}
!271 = !{!"150"}
!272 = !{!"151"}
!273 = !DILocation(line: 157, column: 29, scope: !197)
!274 = !{!"152"}
!275 = !DILocation(line: 158, column: 47, scope: !197)
!276 = !{!"153"}
!277 = !{!"154"}
!278 = !DILocation(line: 158, column: 40, scope: !197)
!279 = !{!"155"}
!280 = !{!"156"}
!281 = !{!"157"}
!282 = !{!"158"}
!283 = !DILocation(line: 158, column: 70, scope: !197)
!284 = !{!"159"}
!285 = !{!"160"}
!286 = !DILocation(line: 158, column: 58, scope: !197)
!287 = !{!"161"}
!288 = !{!"162"}
!289 = !{!"163"}
!290 = !{!"164"}
!291 = !DILocation(line: 158, column: 56, scope: !197)
!292 = !{!"165"}
!293 = !DILocation(line: 158, column: 37, scope: !197)
!294 = !{!"166"}
!295 = !DILocation(line: 158, column: 90, scope: !197)
!296 = !{!"167"}
!297 = !{!"168"}
!298 = !DILocation(line: 158, column: 83, scope: !197)
!299 = !{!"169"}
!300 = !{!"170"}
!301 = !{!"171"}
!302 = !{!"172"}
!303 = !DILocation(line: 158, column: 81, scope: !197)
!304 = !{!"173"}
!305 = !DILocation(line: 158, column: 20, scope: !197)
!306 = !{!"174"}
!307 = !{!"175"}
!308 = !DILocation(line: 158, column: 13, scope: !197)
!309 = !{!"176"}
!310 = !{!"177"}
!311 = !{!"178"}
!312 = !DILocation(line: 158, column: 29, scope: !197)
!313 = !{!"179"}
!314 = !DILocation(line: 159, column: 47, scope: !197)
!315 = !{!"180"}
!316 = !{!"181"}
!317 = !DILocation(line: 159, column: 40, scope: !197)
!318 = !{!"182"}
!319 = !{!"183"}
!320 = !{!"184"}
!321 = !{!"185"}
!322 = !DILocation(line: 159, column: 70, scope: !197)
!323 = !{!"186"}
!324 = !{!"187"}
!325 = !DILocation(line: 159, column: 58, scope: !197)
!326 = !{!"188"}
!327 = !{!"189"}
!328 = !{!"190"}
!329 = !{!"191"}
!330 = !DILocation(line: 159, column: 56, scope: !197)
!331 = !{!"192"}
!332 = !DILocation(line: 159, column: 37, scope: !197)
!333 = !{!"193"}
!334 = !DILocation(line: 159, column: 90, scope: !197)
!335 = !{!"194"}
!336 = !{!"195"}
!337 = !DILocation(line: 159, column: 83, scope: !197)
!338 = !{!"196"}
!339 = !{!"197"}
!340 = !{!"198"}
!341 = !{!"199"}
!342 = !DILocation(line: 159, column: 81, scope: !197)
!343 = !{!"200"}
!344 = !DILocation(line: 159, column: 20, scope: !197)
!345 = !{!"201"}
!346 = !{!"202"}
!347 = !DILocation(line: 159, column: 13, scope: !197)
!348 = !{!"203"}
!349 = !{!"204"}
!350 = !{!"205"}
!351 = !DILocation(line: 159, column: 29, scope: !197)
!352 = !{!"206"}
!353 = !DILocation(line: 160, column: 47, scope: !197)
!354 = !{!"207"}
!355 = !{!"208"}
!356 = !DILocation(line: 160, column: 40, scope: !197)
!357 = !{!"209"}
!358 = !{!"210"}
!359 = !{!"211"}
!360 = !{!"212"}
!361 = !DILocation(line: 160, column: 70, scope: !197)
!362 = !{!"213"}
!363 = !{!"214"}
!364 = !DILocation(line: 160, column: 58, scope: !197)
!365 = !{!"215"}
!366 = !{!"216"}
!367 = !{!"217"}
!368 = !{!"218"}
!369 = !DILocation(line: 160, column: 56, scope: !197)
!370 = !{!"219"}
!371 = !DILocation(line: 160, column: 37, scope: !197)
!372 = !{!"220"}
!373 = !DILocation(line: 160, column: 90, scope: !197)
!374 = !{!"221"}
!375 = !{!"222"}
!376 = !DILocation(line: 160, column: 83, scope: !197)
!377 = !{!"223"}
!378 = !{!"224"}
!379 = !{!"225"}
!380 = !{!"226"}
!381 = !DILocation(line: 160, column: 81, scope: !197)
!382 = !{!"227"}
!383 = !DILocation(line: 160, column: 20, scope: !197)
!384 = !{!"228"}
!385 = !{!"229"}
!386 = !DILocation(line: 160, column: 13, scope: !197)
!387 = !{!"230"}
!388 = !{!"231"}
!389 = !{!"232"}
!390 = !DILocation(line: 160, column: 29, scope: !197)
!391 = !{!"233"}
!392 = !DILocation(line: 161, column: 47, scope: !197)
!393 = !{!"234"}
!394 = !{!"235"}
!395 = !DILocation(line: 161, column: 40, scope: !197)
!396 = !{!"236"}
!397 = !{!"237"}
!398 = !{!"238"}
!399 = !{!"239"}
!400 = !DILocation(line: 161, column: 70, scope: !197)
!401 = !{!"240"}
!402 = !{!"241"}
!403 = !DILocation(line: 161, column: 58, scope: !197)
!404 = !{!"242"}
!405 = !{!"243"}
!406 = !{!"244"}
!407 = !{!"245"}
!408 = !DILocation(line: 161, column: 56, scope: !197)
!409 = !{!"246"}
!410 = !DILocation(line: 161, column: 37, scope: !197)
!411 = !{!"247"}
!412 = !DILocation(line: 161, column: 90, scope: !197)
!413 = !{!"248"}
!414 = !{!"249"}
!415 = !DILocation(line: 161, column: 83, scope: !197)
!416 = !{!"250"}
!417 = !{!"251"}
!418 = !{!"252"}
!419 = !{!"253"}
!420 = !DILocation(line: 161, column: 81, scope: !197)
!421 = !{!"254"}
!422 = !DILocation(line: 161, column: 20, scope: !197)
!423 = !{!"255"}
!424 = !{!"256"}
!425 = !DILocation(line: 161, column: 13, scope: !197)
!426 = !{!"257"}
!427 = !{!"258"}
!428 = !{!"259"}
!429 = !DILocation(line: 161, column: 29, scope: !197)
!430 = !{!"260"}
!431 = !DILocation(line: 162, column: 47, scope: !197)
!432 = !{!"261"}
!433 = !{!"262"}
!434 = !DILocation(line: 162, column: 40, scope: !197)
!435 = !{!"263"}
!436 = !{!"264"}
!437 = !{!"265"}
!438 = !{!"266"}
!439 = !DILocation(line: 162, column: 70, scope: !197)
!440 = !{!"267"}
!441 = !{!"268"}
!442 = !DILocation(line: 162, column: 58, scope: !197)
!443 = !{!"269"}
!444 = !{!"270"}
!445 = !{!"271"}
!446 = !{!"272"}
!447 = !DILocation(line: 162, column: 56, scope: !197)
!448 = !{!"273"}
!449 = !DILocation(line: 162, column: 37, scope: !197)
!450 = !{!"274"}
!451 = !DILocation(line: 162, column: 90, scope: !197)
!452 = !{!"275"}
!453 = !{!"276"}
!454 = !DILocation(line: 162, column: 83, scope: !197)
!455 = !{!"277"}
!456 = !{!"278"}
!457 = !{!"279"}
!458 = !{!"280"}
!459 = !DILocation(line: 162, column: 81, scope: !197)
!460 = !{!"281"}
!461 = !DILocation(line: 162, column: 20, scope: !197)
!462 = !{!"282"}
!463 = !{!"283"}
!464 = !DILocation(line: 162, column: 13, scope: !197)
!465 = !{!"284"}
!466 = !{!"285"}
!467 = !{!"286"}
!468 = !DILocation(line: 162, column: 29, scope: !197)
!469 = !{!"287"}
!470 = !DILocation(line: 163, column: 47, scope: !197)
!471 = !{!"288"}
!472 = !{!"289"}
!473 = !DILocation(line: 163, column: 40, scope: !197)
!474 = !{!"290"}
!475 = !{!"291"}
!476 = !{!"292"}
!477 = !{!"293"}
!478 = !DILocation(line: 163, column: 70, scope: !197)
!479 = !{!"294"}
!480 = !{!"295"}
!481 = !DILocation(line: 163, column: 58, scope: !197)
!482 = !{!"296"}
!483 = !{!"297"}
!484 = !{!"298"}
!485 = !{!"299"}
!486 = !DILocation(line: 163, column: 56, scope: !197)
!487 = !{!"300"}
!488 = !DILocation(line: 163, column: 37, scope: !197)
!489 = !{!"301"}
!490 = !DILocation(line: 163, column: 90, scope: !197)
!491 = !{!"302"}
!492 = !{!"303"}
!493 = !DILocation(line: 163, column: 83, scope: !197)
!494 = !{!"304"}
!495 = !{!"305"}
!496 = !{!"306"}
!497 = !{!"307"}
!498 = !DILocation(line: 163, column: 81, scope: !197)
!499 = !{!"308"}
!500 = !DILocation(line: 163, column: 20, scope: !197)
!501 = !{!"309"}
!502 = !{!"310"}
!503 = !DILocation(line: 163, column: 13, scope: !197)
!504 = !{!"311"}
!505 = !{!"312"}
!506 = !{!"313"}
!507 = !DILocation(line: 163, column: 29, scope: !197)
!508 = !{!"314"}
!509 = !DILocation(line: 164, column: 9, scope: !197)
!510 = !{!"315"}
!511 = !DILocation(line: 155, column: 40, scope: !192)
!512 = !{!"316"}
!513 = !{!"317"}
!514 = !DILocation(line: 155, column: 9, scope: !192)
!515 = distinct !{!515, !194, !516, !517}
!516 = !DILocation(line: 164, column: 9, scope: !186)
!517 = !{!"llvm.loop.mustprogress"}
!518 = !{!"318"}
!519 = !DILocation(line: 165, column: 5, scope: !137)
!520 = !{!"319"}
!521 = !DILocation(line: 148, column: 25, scope: !132)
!522 = !{!"320"}
!523 = !{!"321"}
!524 = !DILocation(line: 148, column: 5, scope: !132)
!525 = distinct !{!525, !134, !526, !517}
!526 = !DILocation(line: 165, column: 5, scope: !124)
!527 = !{!"322"}
!528 = !DILocation(line: 167, column: 24, scope: !56)
!529 = !{!"323"}
!530 = !{!"324"}
!531 = !DILocation(line: 167, column: 17, scope: !56)
!532 = !{!"325"}
!533 = !DILocation(line: 167, column: 40, scope: !56)
!534 = !{!"326"}
!535 = !{!"327"}
!536 = !DILocation(line: 167, column: 28, scope: !56)
!537 = !{!"328"}
!538 = !DILocation(line: 167, column: 5, scope: !56)
!539 = !{!"329"}
!540 = !DILocation(line: 168, column: 24, scope: !56)
!541 = !{!"330"}
!542 = !{!"331"}
!543 = !DILocation(line: 168, column: 17, scope: !56)
!544 = !{!"332"}
!545 = !DILocation(line: 168, column: 40, scope: !56)
!546 = !{!"333"}
!547 = !{!"334"}
!548 = !DILocation(line: 168, column: 28, scope: !56)
!549 = !{!"335"}
!550 = !DILocation(line: 168, column: 5, scope: !56)
!551 = !{!"336"}
!552 = !DILocation(line: 169, column: 24, scope: !56)
!553 = !{!"337"}
!554 = !{!"338"}
!555 = !DILocation(line: 169, column: 17, scope: !56)
!556 = !{!"339"}
!557 = !DILocation(line: 169, column: 40, scope: !56)
!558 = !{!"340"}
!559 = !{!"341"}
!560 = !DILocation(line: 169, column: 28, scope: !56)
!561 = !{!"342"}
!562 = !DILocation(line: 169, column: 5, scope: !56)
!563 = !{!"343"}
!564 = !DILocation(line: 170, column: 27, scope: !56)
!565 = !{!"344"}
!566 = !{!"345"}
!567 = !DILocation(line: 170, column: 15, scope: !56)
!568 = !{!"346"}
!569 = !{!"347"}
!570 = !DILocation(line: 170, column: 5, scope: !56)
!571 = !{!"348"}
!572 = !DILocation(line: 171, column: 27, scope: !56)
!573 = !{!"349"}
!574 = !{!"350"}
!575 = !DILocation(line: 171, column: 15, scope: !56)
!576 = !{!"351"}
!577 = !{!"352"}
!578 = !DILocation(line: 171, column: 5, scope: !56)
!579 = !{!"353"}
!580 = !{!"354"}
!581 = !DILocation(line: 172, column: 10, scope: !582)
!582 = distinct !DILexicalBlock(scope: !56, file: !57, line: 172, column: 5)
!583 = !{!"355"}
!584 = !DILocation(line: 0, scope: !582)
!585 = !{!"356"}
!586 = !{!"357"}
!587 = !DILocation(line: 172, column: 19, scope: !588)
!588 = distinct !DILexicalBlock(scope: !582, file: !57, line: 172, column: 5)
!589 = !{!"358"}
!590 = !DILocation(line: 172, column: 5, scope: !582)
!591 = !{!"359"}
!592 = !DILocation(line: 173, column: 64, scope: !593)
!593 = distinct !DILexicalBlock(scope: !588, file: !57, line: 172, column: 40)
!594 = !{!"360"}
!595 = !{!"361"}
!596 = !DILocation(line: 173, column: 57, scope: !593)
!597 = !{!"362"}
!598 = !{!"363"}
!599 = !{!"364"}
!600 = !{!"365"}
!601 = !DILocation(line: 173, column: 87, scope: !593)
!602 = !{!"366"}
!603 = !{!"367"}
!604 = !DILocation(line: 173, column: 75, scope: !593)
!605 = !{!"368"}
!606 = !{!"369"}
!607 = !{!"370"}
!608 = !{!"371"}
!609 = !DILocation(line: 173, column: 73, scope: !593)
!610 = !{!"372"}
!611 = !DILocation(line: 173, column: 54, scope: !593)
!612 = !{!"373"}
!613 = !DILocation(line: 173, column: 112, scope: !593)
!614 = !{!"374"}
!615 = !{!"375"}
!616 = !DILocation(line: 173, column: 100, scope: !593)
!617 = !{!"376"}
!618 = !{!"377"}
!619 = !{!"378"}
!620 = !{!"379"}
!621 = !DILocation(line: 173, column: 98, scope: !593)
!622 = !{!"380"}
!623 = !DILocation(line: 173, column: 16, scope: !593)
!624 = !{!"381"}
!625 = !{!"382"}
!626 = !DILocation(line: 173, column: 9, scope: !593)
!627 = !{!"383"}
!628 = !{!"384"}
!629 = !{!"385"}
!630 = !DILocation(line: 173, column: 25, scope: !593)
!631 = !{!"386"}
!632 = !DILocation(line: 174, column: 64, scope: !593)
!633 = !{!"387"}
!634 = !{!"388"}
!635 = !DILocation(line: 174, column: 57, scope: !593)
!636 = !{!"389"}
!637 = !{!"390"}
!638 = !{!"391"}
!639 = !{!"392"}
!640 = !DILocation(line: 174, column: 87, scope: !593)
!641 = !{!"393"}
!642 = !{!"394"}
!643 = !DILocation(line: 174, column: 75, scope: !593)
!644 = !{!"395"}
!645 = !{!"396"}
!646 = !{!"397"}
!647 = !{!"398"}
!648 = !DILocation(line: 174, column: 73, scope: !593)
!649 = !{!"399"}
!650 = !DILocation(line: 174, column: 54, scope: !593)
!651 = !{!"400"}
!652 = !DILocation(line: 174, column: 112, scope: !593)
!653 = !{!"401"}
!654 = !{!"402"}
!655 = !DILocation(line: 174, column: 100, scope: !593)
!656 = !{!"403"}
!657 = !{!"404"}
!658 = !{!"405"}
!659 = !{!"406"}
!660 = !DILocation(line: 174, column: 98, scope: !593)
!661 = !{!"407"}
!662 = !DILocation(line: 174, column: 16, scope: !593)
!663 = !{!"408"}
!664 = !{!"409"}
!665 = !DILocation(line: 174, column: 9, scope: !593)
!666 = !{!"410"}
!667 = !{!"411"}
!668 = !{!"412"}
!669 = !DILocation(line: 174, column: 25, scope: !593)
!670 = !{!"413"}
!671 = !DILocation(line: 175, column: 64, scope: !593)
!672 = !{!"414"}
!673 = !{!"415"}
!674 = !DILocation(line: 175, column: 57, scope: !593)
!675 = !{!"416"}
!676 = !{!"417"}
!677 = !{!"418"}
!678 = !{!"419"}
!679 = !DILocation(line: 175, column: 87, scope: !593)
!680 = !{!"420"}
!681 = !{!"421"}
!682 = !DILocation(line: 175, column: 75, scope: !593)
!683 = !{!"422"}
!684 = !{!"423"}
!685 = !{!"424"}
!686 = !{!"425"}
!687 = !DILocation(line: 175, column: 73, scope: !593)
!688 = !{!"426"}
!689 = !DILocation(line: 175, column: 54, scope: !593)
!690 = !{!"427"}
!691 = !DILocation(line: 175, column: 112, scope: !593)
!692 = !{!"428"}
!693 = !{!"429"}
!694 = !DILocation(line: 175, column: 100, scope: !593)
!695 = !{!"430"}
!696 = !{!"431"}
!697 = !{!"432"}
!698 = !{!"433"}
!699 = !DILocation(line: 175, column: 98, scope: !593)
!700 = !{!"434"}
!701 = !DILocation(line: 175, column: 16, scope: !593)
!702 = !{!"435"}
!703 = !{!"436"}
!704 = !DILocation(line: 175, column: 9, scope: !593)
!705 = !{!"437"}
!706 = !{!"438"}
!707 = !{!"439"}
!708 = !DILocation(line: 175, column: 25, scope: !593)
!709 = !{!"440"}
!710 = !DILocation(line: 176, column: 64, scope: !593)
!711 = !{!"441"}
!712 = !{!"442"}
!713 = !DILocation(line: 176, column: 57, scope: !593)
!714 = !{!"443"}
!715 = !{!"444"}
!716 = !{!"445"}
!717 = !{!"446"}
!718 = !DILocation(line: 176, column: 87, scope: !593)
!719 = !{!"447"}
!720 = !{!"448"}
!721 = !DILocation(line: 176, column: 75, scope: !593)
!722 = !{!"449"}
!723 = !{!"450"}
!724 = !{!"451"}
!725 = !{!"452"}
!726 = !DILocation(line: 176, column: 73, scope: !593)
!727 = !{!"453"}
!728 = !DILocation(line: 176, column: 54, scope: !593)
!729 = !{!"454"}
!730 = !DILocation(line: 176, column: 112, scope: !593)
!731 = !{!"455"}
!732 = !{!"456"}
!733 = !DILocation(line: 176, column: 100, scope: !593)
!734 = !{!"457"}
!735 = !{!"458"}
!736 = !{!"459"}
!737 = !{!"460"}
!738 = !DILocation(line: 176, column: 98, scope: !593)
!739 = !{!"461"}
!740 = !DILocation(line: 176, column: 16, scope: !593)
!741 = !{!"462"}
!742 = !{!"463"}
!743 = !DILocation(line: 176, column: 9, scope: !593)
!744 = !{!"464"}
!745 = !{!"465"}
!746 = !{!"466"}
!747 = !DILocation(line: 176, column: 25, scope: !593)
!748 = !{!"467"}
!749 = !DILocation(line: 177, column: 64, scope: !593)
!750 = !{!"468"}
!751 = !{!"469"}
!752 = !DILocation(line: 177, column: 57, scope: !593)
!753 = !{!"470"}
!754 = !{!"471"}
!755 = !{!"472"}
!756 = !{!"473"}
!757 = !DILocation(line: 177, column: 87, scope: !593)
!758 = !{!"474"}
!759 = !{!"475"}
!760 = !DILocation(line: 177, column: 75, scope: !593)
!761 = !{!"476"}
!762 = !{!"477"}
!763 = !{!"478"}
!764 = !{!"479"}
!765 = !DILocation(line: 177, column: 73, scope: !593)
!766 = !{!"480"}
!767 = !DILocation(line: 177, column: 54, scope: !593)
!768 = !{!"481"}
!769 = !DILocation(line: 177, column: 112, scope: !593)
!770 = !{!"482"}
!771 = !{!"483"}
!772 = !DILocation(line: 177, column: 100, scope: !593)
!773 = !{!"484"}
!774 = !{!"485"}
!775 = !{!"486"}
!776 = !{!"487"}
!777 = !DILocation(line: 177, column: 98, scope: !593)
!778 = !{!"488"}
!779 = !DILocation(line: 177, column: 16, scope: !593)
!780 = !{!"489"}
!781 = !{!"490"}
!782 = !DILocation(line: 177, column: 9, scope: !593)
!783 = !{!"491"}
!784 = !{!"492"}
!785 = !{!"493"}
!786 = !DILocation(line: 177, column: 25, scope: !593)
!787 = !{!"494"}
!788 = !DILocation(line: 178, column: 64, scope: !593)
!789 = !{!"495"}
!790 = !{!"496"}
!791 = !DILocation(line: 178, column: 57, scope: !593)
!792 = !{!"497"}
!793 = !{!"498"}
!794 = !{!"499"}
!795 = !{!"500"}
!796 = !DILocation(line: 178, column: 87, scope: !593)
!797 = !{!"501"}
!798 = !{!"502"}
!799 = !DILocation(line: 178, column: 75, scope: !593)
!800 = !{!"503"}
!801 = !{!"504"}
!802 = !{!"505"}
!803 = !{!"506"}
!804 = !DILocation(line: 178, column: 73, scope: !593)
!805 = !{!"507"}
!806 = !DILocation(line: 178, column: 54, scope: !593)
!807 = !{!"508"}
!808 = !DILocation(line: 178, column: 112, scope: !593)
!809 = !{!"509"}
!810 = !{!"510"}
!811 = !DILocation(line: 178, column: 100, scope: !593)
!812 = !{!"511"}
!813 = !{!"512"}
!814 = !{!"513"}
!815 = !{!"514"}
!816 = !DILocation(line: 178, column: 98, scope: !593)
!817 = !{!"515"}
!818 = !DILocation(line: 178, column: 16, scope: !593)
!819 = !{!"516"}
!820 = !{!"517"}
!821 = !DILocation(line: 178, column: 9, scope: !593)
!822 = !{!"518"}
!823 = !{!"519"}
!824 = !{!"520"}
!825 = !DILocation(line: 178, column: 25, scope: !593)
!826 = !{!"521"}
!827 = !DILocation(line: 179, column: 5, scope: !593)
!828 = !{!"522"}
!829 = !DILocation(line: 172, column: 36, scope: !588)
!830 = !{!"523"}
!831 = !{!"524"}
!832 = !DILocation(line: 172, column: 5, scope: !588)
!833 = distinct !{!833, !590, !834, !517}
!834 = !DILocation(line: 179, column: 5, scope: !582)
!835 = !{!"525"}
!836 = !DILocation(line: 180, column: 5, scope: !56)
!837 = !{!"526"}
!838 = !{!"527"}
!839 = !{!"528"}
!840 = !{!"529"}
!841 = !{!"530"}
!842 = !{!"531"}
!843 = !{!"532"}
!844 = !{!"533"}
!845 = !{!"534"}
!846 = !{!"535"}
!847 = !{!"536"}
!848 = !{!"537"}
!849 = !{!"538"}
!850 = !{!"539"}
!851 = !{!"540"}
!852 = !{!"541"}
!853 = !{!"542"}
!854 = !{!"543"}
!855 = !{!"544"}
!856 = !{!"545"}
!857 = !{!"546"}
!858 = !{!"547"}
!859 = !{!"548"}
!860 = !{!"549"}
!861 = !DILocation(line: 182, column: 1, scope: !56)
!862 = !{!"550"}
!863 = distinct !DISubprogram(name: "fp2copy1271", scope: !864, file: !864, line: 50, type: !865, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!864 = !DIFile(filename: "./../fourq/fourqlib/eccp2_core.c", directory: "/home/luwei/bech-back/FourQlib/ECC_norm")
!865 = !DISubroutineType(types: !866)
!866 = !{null, !15, !15}
!867 = !DILocalVariable(name: "a", arg: 1, scope: !863, file: !864, line: 50, type: !15)
!868 = !DILocation(line: 0, scope: !863)
!869 = !{!"551"}
!870 = !DILocalVariable(name: "c", arg: 2, scope: !863, file: !864, line: 50, type: !15)
!871 = !{!"552"}
!872 = !DILocation(line: 52, column: 16, scope: !863)
!873 = !{!"553"}
!874 = !{!"554"}
!875 = !DILocation(line: 52, column: 22, scope: !863)
!876 = !{!"555"}
!877 = !{!"556"}
!878 = !DILocation(line: 52, column: 5, scope: !863)
!879 = !{!"557"}
!880 = !DILocation(line: 53, column: 16, scope: !863)
!881 = !{!"558"}
!882 = !{!"559"}
!883 = !DILocation(line: 53, column: 22, scope: !863)
!884 = !{!"560"}
!885 = !{!"561"}
!886 = !DILocation(line: 53, column: 5, scope: !863)
!887 = !{!"562"}
!888 = !DILocation(line: 54, column: 1, scope: !863)
!889 = !{!"563"}
!890 = distinct !DISubprogram(name: "is_digit_nonzero_ct", scope: !7, file: !7, line: 240, type: !891, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!891 = !DISubroutineType(types: !892)
!892 = !{!12, !6}
!893 = !DILocalVariable(name: "x", arg: 1, scope: !890, file: !7, line: 240, type: !6)
!894 = !DILocation(line: 0, scope: !890)
!895 = !{!"564"}
!896 = !DILocation(line: 242, column: 34, scope: !890)
!897 = !{!"565"}
!898 = !{!"ValueTainted"}
!899 = !DILocation(line: 242, column: 30, scope: !890)
!900 = !{!"566"}
!901 = !DILocation(line: 242, column: 39, scope: !890)
!902 = !{!"567"}
!903 = !DILocation(line: 242, column: 5, scope: !890)
!904 = !{!"568"}
!905 = distinct !DISubprogram(name: "table_lookup_fixed_base", scope: !57, file: !57, line: 187, type: !906, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !23, !908, !12, !12}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!909 = !{!"569"}
!910 = !{!"570"}
!911 = !DILocalVariable(name: "table", arg: 1, scope: !905, file: !57, line: 187, type: !23)
!912 = !DILocation(line: 0, scope: !905)
!913 = !{!"571"}
!914 = !DILocalVariable(name: "P", arg: 2, scope: !905, file: !57, line: 187, type: !908)
!915 = !{!"572"}
!916 = !DILocalVariable(name: "digit", arg: 3, scope: !905, file: !57, line: 187, type: !12)
!917 = !{!"573"}
!918 = !DILocalVariable(name: "sign", arg: 4, scope: !905, file: !57, line: 187, type: !12)
!919 = !{!"574"}
!920 = !DILocalVariable(name: "point", scope: !905, file: !57, line: 269, type: !24)
!921 = !DILocation(line: 269, column: 21, scope: !905)
!922 = !{!"575"}
!923 = !DILocalVariable(name: "temp_point", scope: !905, file: !57, line: 269, type: !24)
!924 = !DILocation(line: 269, column: 28, scope: !905)
!925 = !{!"576"}
!926 = !DILocation(line: 273, column: 5, scope: !905)
!927 = !{!"577"}
!928 = !{!"578"}
!929 = !{!"579"}
!930 = !{!"580"}
!931 = !{!"581"}
!932 = !{!"582"}
!933 = !{!"583"}
!934 = !{!"584"}
!935 = !{!"585"}
!936 = !{!"586"}
!937 = !{!"587"}
!938 = !{!"588"}
!939 = !{!"589"}
!940 = !{!"590"}
!941 = !{!"591"}
!942 = !{!"592"}
!943 = !{!"593"}
!944 = !{!"594"}
!945 = !{!"595"}
!946 = !{!"596"}
!947 = !{!"597"}
!948 = !{!"598"}
!949 = !{!"599"}
!950 = !{!"600"}
!951 = !DILocalVariable(name: "i", scope: !905, file: !57, line: 270, type: !12)
!952 = !{!"601"}
!953 = !DILocation(line: 275, column: 10, scope: !954)
!954 = distinct !DILexicalBlock(scope: !905, file: !57, line: 275, column: 5)
!955 = !{!"602"}
!956 = !{!"603"}
!957 = !DILocation(line: 0, scope: !954)
!958 = !{!"604"}
!959 = !{!"605"}
!960 = !{!"606"}
!961 = !DILocation(line: 275, column: 19, scope: !962)
!962 = distinct !DILexicalBlock(scope: !954, file: !57, line: 275, column: 5)
!963 = !{!"607"}
!964 = !DILocation(line: 275, column: 5, scope: !954)
!965 = !{!"608"}
!966 = !DILocation(line: 277, column: 14, scope: !967)
!967 = distinct !DILexicalBlock(scope: !962, file: !57, line: 276, column: 5)
!968 = !{!"609"}
!969 = !{!"610"}
!970 = !DILocation(line: 279, column: 25, scope: !967)
!971 = !{!"611"}
!972 = !DILocation(line: 279, column: 61, scope: !967)
!973 = !{!"612"}
!974 = !DILocalVariable(name: "mask", scope: !905, file: !57, line: 271, type: !6)
!975 = !{!"613"}
!976 = !DILocation(line: 280, column: 9, scope: !967)
!977 = !{!"614"}
!978 = !{!"615"}
!979 = !{!"616"}
!980 = !{!"617"}
!981 = !{!"618"}
!982 = !{!"619"}
!983 = !{!"620"}
!984 = !{!"621"}
!985 = !{!"622"}
!986 = !{!"623"}
!987 = !{!"624"}
!988 = !{!"625"}
!989 = !{!"626"}
!990 = !{!"627"}
!991 = !{!"628"}
!992 = !{!"629"}
!993 = !{!"630"}
!994 = !{!"631"}
!995 = !{!"632"}
!996 = !{!"633"}
!997 = !{!"634"}
!998 = !{!"635"}
!999 = !{!"636"}
!1000 = !{!"637"}
!1001 = !{!"638"}
!1002 = !{!"639"}
!1003 = !{!"640"}
!1004 = !DILocalVariable(name: "j", scope: !905, file: !57, line: 270, type: !12)
!1005 = !{!"641"}
!1006 = !DILocation(line: 282, column: 14, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !967, file: !57, line: 282, column: 9)
!1008 = !{!"642"}
!1009 = !DILocation(line: 0, scope: !1007)
!1010 = !{!"643"}
!1011 = !{!"644"}
!1012 = !DILocation(line: 282, column: 23, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1007, file: !57, line: 282, column: 9)
!1014 = !{!"645"}
!1015 = !DILocation(line: 282, column: 9, scope: !1007)
!1016 = !{!"646"}
!1017 = !DILocation(line: 283, column: 47, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !57, line: 282, column: 44)
!1019 = !{!"647"}
!1020 = !{!"648"}
!1021 = !DILocation(line: 283, column: 40, scope: !1018)
!1022 = !{!"649"}
!1023 = !{!"650"}
!1024 = !{!"651"}
!1025 = !{!"652"}
!1026 = !DILocation(line: 283, column: 70, scope: !1018)
!1027 = !{!"653"}
!1028 = !{!"654"}
!1029 = !DILocation(line: 283, column: 58, scope: !1018)
!1030 = !{!"655"}
!1031 = !{!"656"}
!1032 = !{!"657"}
!1033 = !{!"658"}
!1034 = !DILocation(line: 283, column: 56, scope: !1018)
!1035 = !{!"659"}
!1036 = !DILocation(line: 283, column: 37, scope: !1018)
!1037 = !{!"660"}
!1038 = !DILocation(line: 283, column: 90, scope: !1018)
!1039 = !{!"661"}
!1040 = !{!"662"}
!1041 = !DILocation(line: 283, column: 83, scope: !1018)
!1042 = !{!"663"}
!1043 = !{!"664"}
!1044 = !{!"665"}
!1045 = !{!"666"}
!1046 = !DILocation(line: 283, column: 81, scope: !1018)
!1047 = !{!"667"}
!1048 = !DILocation(line: 283, column: 20, scope: !1018)
!1049 = !{!"668"}
!1050 = !{!"669"}
!1051 = !DILocation(line: 283, column: 13, scope: !1018)
!1052 = !{!"670"}
!1053 = !{!"671"}
!1054 = !{!"672"}
!1055 = !DILocation(line: 283, column: 29, scope: !1018)
!1056 = !{!"673"}
!1057 = !DILocation(line: 284, column: 47, scope: !1018)
!1058 = !{!"674"}
!1059 = !{!"675"}
!1060 = !DILocation(line: 284, column: 40, scope: !1018)
!1061 = !{!"676"}
!1062 = !{!"677"}
!1063 = !{!"678"}
!1064 = !{!"679"}
!1065 = !DILocation(line: 284, column: 70, scope: !1018)
!1066 = !{!"680"}
!1067 = !{!"681"}
!1068 = !DILocation(line: 284, column: 58, scope: !1018)
!1069 = !{!"682"}
!1070 = !{!"683"}
!1071 = !{!"684"}
!1072 = !{!"685"}
!1073 = !DILocation(line: 284, column: 56, scope: !1018)
!1074 = !{!"686"}
!1075 = !DILocation(line: 284, column: 37, scope: !1018)
!1076 = !{!"687"}
!1077 = !DILocation(line: 284, column: 90, scope: !1018)
!1078 = !{!"688"}
!1079 = !{!"689"}
!1080 = !DILocation(line: 284, column: 83, scope: !1018)
!1081 = !{!"690"}
!1082 = !{!"691"}
!1083 = !{!"692"}
!1084 = !{!"693"}
!1085 = !DILocation(line: 284, column: 81, scope: !1018)
!1086 = !{!"694"}
!1087 = !DILocation(line: 284, column: 20, scope: !1018)
!1088 = !{!"695"}
!1089 = !{!"696"}
!1090 = !DILocation(line: 284, column: 13, scope: !1018)
!1091 = !{!"697"}
!1092 = !{!"698"}
!1093 = !{!"699"}
!1094 = !DILocation(line: 284, column: 29, scope: !1018)
!1095 = !{!"700"}
!1096 = !DILocation(line: 285, column: 47, scope: !1018)
!1097 = !{!"701"}
!1098 = !{!"702"}
!1099 = !DILocation(line: 285, column: 40, scope: !1018)
!1100 = !{!"703"}
!1101 = !{!"704"}
!1102 = !{!"705"}
!1103 = !{!"706"}
!1104 = !DILocation(line: 285, column: 70, scope: !1018)
!1105 = !{!"707"}
!1106 = !{!"708"}
!1107 = !DILocation(line: 285, column: 58, scope: !1018)
!1108 = !{!"709"}
!1109 = !{!"710"}
!1110 = !{!"711"}
!1111 = !{!"712"}
!1112 = !DILocation(line: 285, column: 56, scope: !1018)
!1113 = !{!"713"}
!1114 = !DILocation(line: 285, column: 37, scope: !1018)
!1115 = !{!"714"}
!1116 = !DILocation(line: 285, column: 90, scope: !1018)
!1117 = !{!"715"}
!1118 = !{!"716"}
!1119 = !DILocation(line: 285, column: 83, scope: !1018)
!1120 = !{!"717"}
!1121 = !{!"718"}
!1122 = !{!"719"}
!1123 = !{!"720"}
!1124 = !DILocation(line: 285, column: 81, scope: !1018)
!1125 = !{!"721"}
!1126 = !DILocation(line: 285, column: 20, scope: !1018)
!1127 = !{!"722"}
!1128 = !{!"723"}
!1129 = !DILocation(line: 285, column: 13, scope: !1018)
!1130 = !{!"724"}
!1131 = !{!"725"}
!1132 = !{!"726"}
!1133 = !DILocation(line: 285, column: 29, scope: !1018)
!1134 = !{!"727"}
!1135 = !DILocation(line: 286, column: 47, scope: !1018)
!1136 = !{!"728"}
!1137 = !{!"729"}
!1138 = !DILocation(line: 286, column: 40, scope: !1018)
!1139 = !{!"730"}
!1140 = !{!"731"}
!1141 = !{!"732"}
!1142 = !{!"733"}
!1143 = !DILocation(line: 286, column: 70, scope: !1018)
!1144 = !{!"734"}
!1145 = !{!"735"}
!1146 = !DILocation(line: 286, column: 58, scope: !1018)
!1147 = !{!"736"}
!1148 = !{!"737"}
!1149 = !{!"738"}
!1150 = !{!"739"}
!1151 = !DILocation(line: 286, column: 56, scope: !1018)
!1152 = !{!"740"}
!1153 = !DILocation(line: 286, column: 37, scope: !1018)
!1154 = !{!"741"}
!1155 = !DILocation(line: 286, column: 90, scope: !1018)
!1156 = !{!"742"}
!1157 = !{!"743"}
!1158 = !DILocation(line: 286, column: 83, scope: !1018)
!1159 = !{!"744"}
!1160 = !{!"745"}
!1161 = !{!"746"}
!1162 = !{!"747"}
!1163 = !DILocation(line: 286, column: 81, scope: !1018)
!1164 = !{!"748"}
!1165 = !DILocation(line: 286, column: 20, scope: !1018)
!1166 = !{!"749"}
!1167 = !{!"750"}
!1168 = !DILocation(line: 286, column: 13, scope: !1018)
!1169 = !{!"751"}
!1170 = !{!"752"}
!1171 = !{!"753"}
!1172 = !DILocation(line: 286, column: 29, scope: !1018)
!1173 = !{!"754"}
!1174 = !DILocation(line: 287, column: 47, scope: !1018)
!1175 = !{!"755"}
!1176 = !{!"756"}
!1177 = !DILocation(line: 287, column: 40, scope: !1018)
!1178 = !{!"757"}
!1179 = !{!"758"}
!1180 = !{!"759"}
!1181 = !{!"760"}
!1182 = !DILocation(line: 287, column: 70, scope: !1018)
!1183 = !{!"761"}
!1184 = !{!"762"}
!1185 = !DILocation(line: 287, column: 58, scope: !1018)
!1186 = !{!"763"}
!1187 = !{!"764"}
!1188 = !{!"765"}
!1189 = !{!"766"}
!1190 = !DILocation(line: 287, column: 56, scope: !1018)
!1191 = !{!"767"}
!1192 = !DILocation(line: 287, column: 37, scope: !1018)
!1193 = !{!"768"}
!1194 = !DILocation(line: 287, column: 90, scope: !1018)
!1195 = !{!"769"}
!1196 = !{!"770"}
!1197 = !DILocation(line: 287, column: 83, scope: !1018)
!1198 = !{!"771"}
!1199 = !{!"772"}
!1200 = !{!"773"}
!1201 = !{!"774"}
!1202 = !DILocation(line: 287, column: 81, scope: !1018)
!1203 = !{!"775"}
!1204 = !DILocation(line: 287, column: 20, scope: !1018)
!1205 = !{!"776"}
!1206 = !{!"777"}
!1207 = !DILocation(line: 287, column: 13, scope: !1018)
!1208 = !{!"778"}
!1209 = !{!"779"}
!1210 = !{!"780"}
!1211 = !DILocation(line: 287, column: 29, scope: !1018)
!1212 = !{!"781"}
!1213 = !DILocation(line: 288, column: 47, scope: !1018)
!1214 = !{!"782"}
!1215 = !{!"783"}
!1216 = !DILocation(line: 288, column: 40, scope: !1018)
!1217 = !{!"784"}
!1218 = !{!"785"}
!1219 = !{!"786"}
!1220 = !{!"787"}
!1221 = !DILocation(line: 288, column: 70, scope: !1018)
!1222 = !{!"788"}
!1223 = !{!"789"}
!1224 = !DILocation(line: 288, column: 58, scope: !1018)
!1225 = !{!"790"}
!1226 = !{!"791"}
!1227 = !{!"792"}
!1228 = !{!"793"}
!1229 = !DILocation(line: 288, column: 56, scope: !1018)
!1230 = !{!"794"}
!1231 = !DILocation(line: 288, column: 37, scope: !1018)
!1232 = !{!"795"}
!1233 = !DILocation(line: 288, column: 90, scope: !1018)
!1234 = !{!"796"}
!1235 = !{!"797"}
!1236 = !DILocation(line: 288, column: 83, scope: !1018)
!1237 = !{!"798"}
!1238 = !{!"799"}
!1239 = !{!"800"}
!1240 = !{!"801"}
!1241 = !DILocation(line: 288, column: 81, scope: !1018)
!1242 = !{!"802"}
!1243 = !DILocation(line: 288, column: 20, scope: !1018)
!1244 = !{!"803"}
!1245 = !{!"804"}
!1246 = !DILocation(line: 288, column: 13, scope: !1018)
!1247 = !{!"805"}
!1248 = !{!"806"}
!1249 = !{!"807"}
!1250 = !DILocation(line: 288, column: 29, scope: !1018)
!1251 = !{!"808"}
!1252 = !DILocation(line: 289, column: 9, scope: !1018)
!1253 = !{!"809"}
!1254 = !DILocation(line: 282, column: 40, scope: !1013)
!1255 = !{!"810"}
!1256 = !{!"811"}
!1257 = !DILocation(line: 282, column: 9, scope: !1013)
!1258 = distinct !{!1258, !1015, !1259, !517}
!1259 = !DILocation(line: 289, column: 9, scope: !1007)
!1260 = !{!"812"}
!1261 = !DILocation(line: 290, column: 5, scope: !967)
!1262 = !{!"813"}
!1263 = !DILocation(line: 275, column: 41, scope: !962)
!1264 = !{!"814"}
!1265 = !{!"815"}
!1266 = !DILocation(line: 275, column: 5, scope: !962)
!1267 = distinct !{!1267, !964, !1268, !517}
!1268 = !DILocation(line: 290, column: 5, scope: !954)
!1269 = !{!"816"}
!1270 = !DILocation(line: 292, column: 24, scope: !905)
!1271 = !{!"817"}
!1272 = !{!"818"}
!1273 = !DILocation(line: 292, column: 17, scope: !905)
!1274 = !{!"819"}
!1275 = !DILocation(line: 292, column: 40, scope: !905)
!1276 = !{!"820"}
!1277 = !{!"821"}
!1278 = !DILocation(line: 292, column: 28, scope: !905)
!1279 = !{!"822"}
!1280 = !DILocation(line: 292, column: 5, scope: !905)
!1281 = !{!"823"}
!1282 = !DILocation(line: 293, column: 24, scope: !905)
!1283 = !{!"824"}
!1284 = !{!"825"}
!1285 = !DILocation(line: 293, column: 17, scope: !905)
!1286 = !{!"826"}
!1287 = !DILocation(line: 293, column: 40, scope: !905)
!1288 = !{!"827"}
!1289 = !{!"828"}
!1290 = !DILocation(line: 293, column: 28, scope: !905)
!1291 = !{!"829"}
!1292 = !DILocation(line: 293, column: 5, scope: !905)
!1293 = !{!"830"}
!1294 = !DILocation(line: 294, column: 24, scope: !905)
!1295 = !{!"831"}
!1296 = !{!"832"}
!1297 = !DILocation(line: 294, column: 17, scope: !905)
!1298 = !{!"833"}
!1299 = !DILocation(line: 294, column: 40, scope: !905)
!1300 = !{!"834"}
!1301 = !{!"835"}
!1302 = !DILocation(line: 294, column: 28, scope: !905)
!1303 = !{!"836"}
!1304 = !DILocation(line: 294, column: 5, scope: !905)
!1305 = !{!"837"}
!1306 = !DILocation(line: 295, column: 27, scope: !905)
!1307 = !{!"838"}
!1308 = !{!"839"}
!1309 = !DILocation(line: 295, column: 15, scope: !905)
!1310 = !{!"840"}
!1311 = !{!"841"}
!1312 = !DILocation(line: 295, column: 5, scope: !905)
!1313 = !{!"842"}
!1314 = !DILocation(line: 296, column: 27, scope: !905)
!1315 = !{!"843"}
!1316 = !{!"844"}
!1317 = !DILocation(line: 296, column: 15, scope: !905)
!1318 = !{!"845"}
!1319 = !{!"846"}
!1320 = !DILocation(line: 296, column: 5, scope: !905)
!1321 = !{!"847"}
!1322 = !{!"848"}
!1323 = !DILocation(line: 297, column: 10, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !905, file: !57, line: 297, column: 5)
!1325 = !{!"849"}
!1326 = !DILocation(line: 0, scope: !1324)
!1327 = !{!"850"}
!1328 = !{!"851"}
!1329 = !DILocation(line: 297, column: 19, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1324, file: !57, line: 297, column: 5)
!1331 = !{!"852"}
!1332 = !DILocation(line: 297, column: 5, scope: !1324)
!1333 = !{!"853"}
!1334 = !DILocation(line: 298, column: 59, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !57, line: 297, column: 40)
!1336 = !{!"854"}
!1337 = !{!"855"}
!1338 = !DILocation(line: 298, column: 52, scope: !1335)
!1339 = !{!"856"}
!1340 = !{!"857"}
!1341 = !{!"858"}
!1342 = !{!"859"}
!1343 = !DILocation(line: 298, column: 82, scope: !1335)
!1344 = !{!"860"}
!1345 = !{!"861"}
!1346 = !DILocation(line: 298, column: 70, scope: !1335)
!1347 = !{!"862"}
!1348 = !{!"863"}
!1349 = !{!"864"}
!1350 = !{!"865"}
!1351 = !DILocation(line: 298, column: 68, scope: !1335)
!1352 = !{!"866"}
!1353 = !DILocation(line: 298, column: 49, scope: !1335)
!1354 = !{!"867"}
!1355 = !DILocation(line: 298, column: 102, scope: !1335)
!1356 = !{!"868"}
!1357 = !{!"869"}
!1358 = !DILocation(line: 298, column: 95, scope: !1335)
!1359 = !{!"870"}
!1360 = !{!"871"}
!1361 = !{!"872"}
!1362 = !{!"873"}
!1363 = !DILocation(line: 298, column: 93, scope: !1335)
!1364 = !{!"874"}
!1365 = !DILocation(line: 298, column: 16, scope: !1335)
!1366 = !{!"875"}
!1367 = !{!"876"}
!1368 = !DILocation(line: 298, column: 9, scope: !1335)
!1369 = !{!"877"}
!1370 = !{!"878"}
!1371 = !{!"879"}
!1372 = !DILocation(line: 298, column: 25, scope: !1335)
!1373 = !{!"880"}
!1374 = !DILocation(line: 299, column: 59, scope: !1335)
!1375 = !{!"881"}
!1376 = !{!"882"}
!1377 = !DILocation(line: 299, column: 52, scope: !1335)
!1378 = !{!"883"}
!1379 = !{!"884"}
!1380 = !{!"885"}
!1381 = !{!"886"}
!1382 = !DILocation(line: 299, column: 82, scope: !1335)
!1383 = !{!"887"}
!1384 = !{!"888"}
!1385 = !DILocation(line: 299, column: 70, scope: !1335)
!1386 = !{!"889"}
!1387 = !{!"890"}
!1388 = !{!"891"}
!1389 = !{!"892"}
!1390 = !DILocation(line: 299, column: 68, scope: !1335)
!1391 = !{!"893"}
!1392 = !DILocation(line: 299, column: 49, scope: !1335)
!1393 = !{!"894"}
!1394 = !DILocation(line: 299, column: 102, scope: !1335)
!1395 = !{!"895"}
!1396 = !{!"896"}
!1397 = !DILocation(line: 299, column: 95, scope: !1335)
!1398 = !{!"897"}
!1399 = !{!"898"}
!1400 = !{!"899"}
!1401 = !{!"900"}
!1402 = !DILocation(line: 299, column: 93, scope: !1335)
!1403 = !{!"901"}
!1404 = !DILocation(line: 299, column: 16, scope: !1335)
!1405 = !{!"902"}
!1406 = !{!"903"}
!1407 = !DILocation(line: 299, column: 9, scope: !1335)
!1408 = !{!"904"}
!1409 = !{!"905"}
!1410 = !{!"906"}
!1411 = !DILocation(line: 299, column: 25, scope: !1335)
!1412 = !{!"907"}
!1413 = !DILocation(line: 300, column: 59, scope: !1335)
!1414 = !{!"908"}
!1415 = !{!"909"}
!1416 = !DILocation(line: 300, column: 52, scope: !1335)
!1417 = !{!"910"}
!1418 = !{!"911"}
!1419 = !{!"912"}
!1420 = !{!"913"}
!1421 = !DILocation(line: 300, column: 82, scope: !1335)
!1422 = !{!"914"}
!1423 = !{!"915"}
!1424 = !DILocation(line: 300, column: 70, scope: !1335)
!1425 = !{!"916"}
!1426 = !{!"917"}
!1427 = !{!"918"}
!1428 = !{!"919"}
!1429 = !DILocation(line: 300, column: 68, scope: !1335)
!1430 = !{!"920"}
!1431 = !DILocation(line: 300, column: 49, scope: !1335)
!1432 = !{!"921"}
!1433 = !DILocation(line: 300, column: 102, scope: !1335)
!1434 = !{!"922"}
!1435 = !{!"923"}
!1436 = !DILocation(line: 300, column: 95, scope: !1335)
!1437 = !{!"924"}
!1438 = !{!"925"}
!1439 = !{!"926"}
!1440 = !{!"927"}
!1441 = !DILocation(line: 300, column: 93, scope: !1335)
!1442 = !{!"928"}
!1443 = !DILocation(line: 300, column: 16, scope: !1335)
!1444 = !{!"929"}
!1445 = !{!"930"}
!1446 = !DILocation(line: 300, column: 9, scope: !1335)
!1447 = !{!"931"}
!1448 = !{!"932"}
!1449 = !{!"933"}
!1450 = !DILocation(line: 300, column: 25, scope: !1335)
!1451 = !{!"934"}
!1452 = !DILocation(line: 301, column: 59, scope: !1335)
!1453 = !{!"935"}
!1454 = !{!"936"}
!1455 = !DILocation(line: 301, column: 52, scope: !1335)
!1456 = !{!"937"}
!1457 = !{!"938"}
!1458 = !{!"939"}
!1459 = !{!"940"}
!1460 = !DILocation(line: 301, column: 82, scope: !1335)
!1461 = !{!"941"}
!1462 = !{!"942"}
!1463 = !DILocation(line: 301, column: 70, scope: !1335)
!1464 = !{!"943"}
!1465 = !{!"944"}
!1466 = !{!"945"}
!1467 = !{!"946"}
!1468 = !DILocation(line: 301, column: 68, scope: !1335)
!1469 = !{!"947"}
!1470 = !DILocation(line: 301, column: 49, scope: !1335)
!1471 = !{!"948"}
!1472 = !DILocation(line: 301, column: 102, scope: !1335)
!1473 = !{!"949"}
!1474 = !{!"950"}
!1475 = !DILocation(line: 301, column: 95, scope: !1335)
!1476 = !{!"951"}
!1477 = !{!"952"}
!1478 = !{!"953"}
!1479 = !{!"954"}
!1480 = !DILocation(line: 301, column: 93, scope: !1335)
!1481 = !{!"955"}
!1482 = !DILocation(line: 301, column: 16, scope: !1335)
!1483 = !{!"956"}
!1484 = !{!"957"}
!1485 = !DILocation(line: 301, column: 9, scope: !1335)
!1486 = !{!"958"}
!1487 = !{!"959"}
!1488 = !{!"960"}
!1489 = !DILocation(line: 301, column: 25, scope: !1335)
!1490 = !{!"961"}
!1491 = !DILocation(line: 302, column: 59, scope: !1335)
!1492 = !{!"962"}
!1493 = !{!"963"}
!1494 = !DILocation(line: 302, column: 52, scope: !1335)
!1495 = !{!"964"}
!1496 = !{!"965"}
!1497 = !{!"966"}
!1498 = !{!"967"}
!1499 = !DILocation(line: 302, column: 82, scope: !1335)
!1500 = !{!"968"}
!1501 = !{!"969"}
!1502 = !DILocation(line: 302, column: 70, scope: !1335)
!1503 = !{!"970"}
!1504 = !{!"971"}
!1505 = !{!"972"}
!1506 = !{!"973"}
!1507 = !DILocation(line: 302, column: 68, scope: !1335)
!1508 = !{!"974"}
!1509 = !DILocation(line: 302, column: 49, scope: !1335)
!1510 = !{!"975"}
!1511 = !DILocation(line: 302, column: 102, scope: !1335)
!1512 = !{!"976"}
!1513 = !{!"977"}
!1514 = !DILocation(line: 302, column: 95, scope: !1335)
!1515 = !{!"978"}
!1516 = !{!"979"}
!1517 = !{!"980"}
!1518 = !{!"981"}
!1519 = !DILocation(line: 302, column: 93, scope: !1335)
!1520 = !{!"982"}
!1521 = !DILocation(line: 302, column: 16, scope: !1335)
!1522 = !{!"983"}
!1523 = !{!"984"}
!1524 = !DILocation(line: 302, column: 9, scope: !1335)
!1525 = !{!"985"}
!1526 = !{!"986"}
!1527 = !{!"987"}
!1528 = !DILocation(line: 302, column: 25, scope: !1335)
!1529 = !{!"988"}
!1530 = !DILocation(line: 303, column: 59, scope: !1335)
!1531 = !{!"989"}
!1532 = !{!"990"}
!1533 = !DILocation(line: 303, column: 52, scope: !1335)
!1534 = !{!"991"}
!1535 = !{!"992"}
!1536 = !{!"993"}
!1537 = !{!"994"}
!1538 = !DILocation(line: 303, column: 82, scope: !1335)
!1539 = !{!"995"}
!1540 = !{!"996"}
!1541 = !DILocation(line: 303, column: 70, scope: !1335)
!1542 = !{!"997"}
!1543 = !{!"998"}
!1544 = !{!"999"}
!1545 = !{!"1000"}
!1546 = !DILocation(line: 303, column: 68, scope: !1335)
!1547 = !{!"1001"}
!1548 = !DILocation(line: 303, column: 49, scope: !1335)
!1549 = !{!"1002"}
!1550 = !DILocation(line: 303, column: 102, scope: !1335)
!1551 = !{!"1003"}
!1552 = !{!"1004"}
!1553 = !DILocation(line: 303, column: 95, scope: !1335)
!1554 = !{!"1005"}
!1555 = !{!"1006"}
!1556 = !{!"1007"}
!1557 = !{!"1008"}
!1558 = !DILocation(line: 303, column: 93, scope: !1335)
!1559 = !{!"1009"}
!1560 = !DILocation(line: 303, column: 16, scope: !1335)
!1561 = !{!"1010"}
!1562 = !{!"1011"}
!1563 = !DILocation(line: 303, column: 9, scope: !1335)
!1564 = !{!"1012"}
!1565 = !{!"1013"}
!1566 = !{!"1014"}
!1567 = !DILocation(line: 303, column: 25, scope: !1335)
!1568 = !{!"1015"}
!1569 = !DILocation(line: 304, column: 5, scope: !1335)
!1570 = !{!"1016"}
!1571 = !DILocation(line: 297, column: 36, scope: !1330)
!1572 = !{!"1017"}
!1573 = !{!"1018"}
!1574 = !DILocation(line: 297, column: 5, scope: !1330)
!1575 = distinct !{!1575, !1332, !1576, !517}
!1576 = !DILocation(line: 304, column: 5, scope: !1324)
!1577 = !{!"1019"}
!1578 = !DILocation(line: 305, column: 5, scope: !905)
!1579 = !{!"1020"}
!1580 = !{!"1021"}
!1581 = !{!"1022"}
!1582 = !{!"1023"}
!1583 = !{!"1024"}
!1584 = !{!"1025"}
!1585 = !{!"1026"}
!1586 = !{!"1027"}
!1587 = !{!"1028"}
!1588 = !{!"1029"}
!1589 = !{!"1030"}
!1590 = !{!"1031"}
!1591 = !{!"1032"}
!1592 = !{!"1033"}
!1593 = !{!"1034"}
!1594 = !{!"1035"}
!1595 = !{!"1036"}
!1596 = !{!"1037"}
!1597 = !DILocation(line: 307, column: 1, scope: !905)
!1598 = !{!"1038"}
!1599 = distinct !DISubprogram(name: "digit_x_digit", scope: !41, file: !41, line: 53, type: !1600, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !6, !6, !14}
!1602 = !DILocalVariable(name: "a", arg: 1, scope: !1599, file: !41, line: 53, type: !6)
!1603 = !DILocation(line: 0, scope: !1599)
!1604 = !{!"1039"}
!1605 = !DILocalVariable(name: "b", arg: 2, scope: !1599, file: !41, line: 53, type: !6)
!1606 = !{!"1040"}
!1607 = !DILocalVariable(name: "c", arg: 3, scope: !1599, file: !41, line: 53, type: !14)
!1608 = !{!"1041"}
!1609 = !DILocalVariable(name: "mask_low", scope: !1599, file: !41, line: 57, type: !6)
!1610 = !{!"1042"}
!1611 = !DILocalVariable(name: "mask_high", scope: !1599, file: !41, line: 57, type: !6)
!1612 = !{!"1043"}
!1613 = !DILocation(line: 59, column: 12, scope: !1599)
!1614 = !{!"1044"}
!1615 = !DILocalVariable(name: "al", scope: !1599, file: !41, line: 55, type: !6)
!1616 = !{!"1045"}
!1617 = !DILocation(line: 60, column: 12, scope: !1599)
!1618 = !{!"1046"}
!1619 = !DILocalVariable(name: "ah", scope: !1599, file: !41, line: 55, type: !6)
!1620 = !{!"1047"}
!1621 = !DILocation(line: 61, column: 12, scope: !1599)
!1622 = !{!"1048"}
!1623 = !DILocalVariable(name: "bl", scope: !1599, file: !41, line: 55, type: !6)
!1624 = !{!"1049"}
!1625 = !DILocation(line: 62, column: 12, scope: !1599)
!1626 = !{!"1050"}
!1627 = !DILocalVariable(name: "bh", scope: !1599, file: !41, line: 55, type: !6)
!1628 = !{!"1051"}
!1629 = !DILocation(line: 64, column: 14, scope: !1599)
!1630 = !{!"1052"}
!1631 = !DILocalVariable(name: "albl", scope: !1599, file: !41, line: 56, type: !6)
!1632 = !{!"1053"}
!1633 = !DILocation(line: 65, column: 14, scope: !1599)
!1634 = !{!"1054"}
!1635 = !DILocalVariable(name: "albh", scope: !1599, file: !41, line: 56, type: !6)
!1636 = !{!"1055"}
!1637 = !DILocation(line: 66, column: 14, scope: !1599)
!1638 = !{!"1056"}
!1639 = !DILocalVariable(name: "ahbl", scope: !1599, file: !41, line: 56, type: !6)
!1640 = !{!"1057"}
!1641 = !DILocation(line: 67, column: 14, scope: !1599)
!1642 = !{!"1058"}
!1643 = !DILocalVariable(name: "ahbh", scope: !1599, file: !41, line: 56, type: !6)
!1644 = !{!"1059"}
!1645 = !DILocation(line: 68, column: 17, scope: !1599)
!1646 = !{!"1060"}
!1647 = !DILocation(line: 68, column: 5, scope: !1599)
!1648 = !{!"1061"}
!1649 = !DILocation(line: 68, column: 10, scope: !1599)
!1650 = !{!"1062"}
!1651 = !DILocation(line: 70, column: 17, scope: !1599)
!1652 = !{!"1063"}
!1653 = !DILocalVariable(name: "res1", scope: !1599, file: !41, line: 56, type: !6)
!1654 = !{!"1064"}
!1655 = !DILocation(line: 71, column: 17, scope: !1599)
!1656 = !{!"1065"}
!1657 = !DILocalVariable(name: "res2", scope: !1599, file: !41, line: 56, type: !6)
!1658 = !{!"1066"}
!1659 = !DILocation(line: 72, column: 17, scope: !1599)
!1660 = !{!"1067"}
!1661 = !DILocalVariable(name: "res3", scope: !1599, file: !41, line: 56, type: !6)
!1662 = !{!"1068"}
!1663 = !DILocation(line: 73, column: 17, scope: !1599)
!1664 = !{!"1069"}
!1665 = !DILocation(line: 73, column: 24, scope: !1599)
!1666 = !{!"1070"}
!1667 = !DILocalVariable(name: "temp", scope: !1599, file: !41, line: 55, type: !6)
!1668 = !{!"1071"}
!1669 = !DILocation(line: 74, column: 18, scope: !1599)
!1670 = !{!"1072"}
!1671 = !DILocalVariable(name: "carry", scope: !1599, file: !41, line: 56, type: !6)
!1672 = !{!"1073"}
!1673 = !DILocation(line: 75, column: 18, scope: !1599)
!1674 = !{!"1074"}
!1675 = !DILocation(line: 75, column: 5, scope: !1599)
!1676 = !{!"1075"}
!1677 = !DILocation(line: 75, column: 10, scope: !1599)
!1678 = !{!"1076"}
!1679 = !{!"1077"}
!1680 = !{!"1078"}
!1681 = !DILocation(line: 77, column: 17, scope: !1599)
!1682 = !{!"1079"}
!1683 = !{!"1080"}
!1684 = !DILocation(line: 78, column: 17, scope: !1599)
!1685 = !{!"1081"}
!1686 = !{!"1082"}
!1687 = !DILocation(line: 79, column: 17, scope: !1599)
!1688 = !{!"1083"}
!1689 = !{!"1084"}
!1690 = !DILocation(line: 80, column: 17, scope: !1599)
!1691 = !{!"1085"}
!1692 = !DILocation(line: 80, column: 24, scope: !1599)
!1693 = !{!"1086"}
!1694 = !DILocation(line: 80, column: 31, scope: !1599)
!1695 = !{!"1087"}
!1696 = !{!"1088"}
!1697 = !DILocation(line: 81, column: 17, scope: !1599)
!1698 = !{!"1089"}
!1699 = !DILocation(line: 81, column: 5, scope: !1599)
!1700 = !{!"1090"}
!1701 = !DILocation(line: 81, column: 10, scope: !1599)
!1702 = !{!"1091"}
!1703 = !DILocation(line: 82, column: 18, scope: !1599)
!1704 = !{!"1092"}
!1705 = !{!"1093"}
!1706 = !DILocation(line: 83, column: 19, scope: !1599)
!1707 = !{!"1094"}
!1708 = !DILocation(line: 83, column: 32, scope: !1599)
!1709 = !{!"1095"}
!1710 = !DILocation(line: 83, column: 5, scope: !1599)
!1711 = !{!"1096"}
!1712 = !{!"PointTainted"}
!1713 = !DILocation(line: 83, column: 10, scope: !1599)
!1714 = !{!"1097"}
!1715 = !{!"1098"}
!1716 = !{!"1099"}
!1717 = !DILocation(line: 84, column: 1, scope: !1599)
!1718 = !{!"1100"}
!1719 = distinct !DISubprogram(name: "fpmul1271", scope: !41, file: !41, line: 149, type: !1720, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !14, !14, !14}
!1722 = !{!"1101"}
!1723 = !{!"1102"}
!1724 = !DILocalVariable(name: "a", arg: 1, scope: !1719, file: !41, line: 149, type: !14)
!1725 = !DILocation(line: 0, scope: !1719)
!1726 = !{!"1103"}
!1727 = !DILocalVariable(name: "b", arg: 2, scope: !1719, file: !41, line: 149, type: !14)
!1728 = !{!"1104"}
!1729 = !DILocalVariable(name: "c", arg: 3, scope: !1719, file: !41, line: 149, type: !14)
!1730 = !{!"1105"}
!1731 = !DILocalVariable(name: "UV", scope: !1719, file: !41, line: 152, type: !1732)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !32)
!1733 = !DILocation(line: 152, column: 19, scope: !1719)
!1734 = !{!"1106"}
!1735 = !DILocalVariable(name: "t", scope: !1719, file: !41, line: 153, type: !1736)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !1737)
!1737 = !{!1738}
!1738 = !DISubrange(count: 8)
!1739 = !DILocation(line: 153, column: 13, scope: !1719)
!1740 = !{!"1107"}
!1741 = !{!"1108"}
!1742 = !{!"1109"}
!1743 = !DILocalVariable(name: "carry", scope: !1719, file: !41, line: 154, type: !12)
!1744 = !{!"1110"}
!1745 = !DILocalVariable(name: "i", scope: !1719, file: !41, line: 151, type: !12)
!1746 = !{!"1111"}
!1747 = !DILocation(line: 156, column: 10, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1719, file: !41, line: 156, column: 5)
!1749 = !{!"1112"}
!1750 = !DILocation(line: 0, scope: !1748)
!1751 = !{!"1113"}
!1752 = !{!"1114"}
!1753 = !DILocation(line: 156, column: 19, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1748, file: !41, line: 156, column: 5)
!1755 = !{!"1115"}
!1756 = !DILocation(line: 156, column: 5, scope: !1748)
!1757 = !{!"1116"}
!1758 = !DILocalVariable(name: "u", scope: !1719, file: !41, line: 152, type: !6)
!1759 = !{!"1117"}
!1760 = !DILocalVariable(name: "j", scope: !1719, file: !41, line: 151, type: !12)
!1761 = !{!"1118"}
!1762 = !DILocation(line: 158, column: 15, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !41, line: 158, column: 10)
!1764 = distinct !DILexicalBlock(scope: !1754, file: !41, line: 156, column: 40)
!1765 = !{!"1119"}
!1766 = !DILocation(line: 0, scope: !1763)
!1767 = !{!"1120"}
!1768 = !DILocation(line: 0, scope: !1764)
!1769 = !{!"1121"}
!1770 = !{!"1122"}
!1771 = !{!"1123"}
!1772 = !DILocation(line: 158, column: 24, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1763, file: !41, line: 158, column: 10)
!1774 = !{!"1124"}
!1775 = !DILocation(line: 158, column: 10, scope: !1763)
!1776 = !{!"1125"}
!1777 = !DILocation(line: 159, column: 15, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !41, line: 158, column: 45)
!1779 = !{!"1126"}
!1780 = !{!"1127"}
!1781 = !{!"1128"}
!1782 = !{!"1129"}
!1783 = !{!"1130"}
!1784 = !{!"1131"}
!1785 = !{!"1132"}
!1786 = !{!"1133"}
!1787 = !DILocation(line: 160, column: 15, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1778, file: !41, line: 160, column: 15)
!1789 = !{!"1134"}
!1790 = !{!"1135"}
!1791 = !{!"1136"}
!1792 = !DILocalVariable(name: "tempReg", scope: !1788, file: !41, line: 160, type: !6)
!1793 = !DILocation(line: 0, scope: !1788)
!1794 = !{!"1137"}
!1795 = !{!"1138"}
!1796 = !DILocalVariable(name: "v", scope: !1719, file: !41, line: 152, type: !6)
!1797 = !{!"1139"}
!1798 = !{!"1140"}
!1799 = !{!"1141"}
!1800 = !{!"1142"}
!1801 = !{!"1143"}
!1802 = !DILocation(line: 161, column: 19, scope: !1778)
!1803 = !{!"1144"}
!1804 = !{!"1145"}
!1805 = !DILocation(line: 161, column: 25, scope: !1778)
!1806 = !{!"1146"}
!1807 = !{!"1147"}
!1808 = !DILocation(line: 162, column: 15, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1778, file: !41, line: 162, column: 15)
!1810 = !{!"1148"}
!1811 = !{!"1149"}
!1812 = !{!"1150"}
!1813 = !{!"1151"}
!1814 = !{!"1152"}
!1815 = !DILocalVariable(name: "tempReg", scope: !1809, file: !41, line: 162, type: !6)
!1816 = !DILocation(line: 0, scope: !1809)
!1817 = !{!"1153"}
!1818 = !{!"1154"}
!1819 = !{!"1155"}
!1820 = !{!"1156"}
!1821 = !{!"1157"}
!1822 = !{!"1158"}
!1823 = !{!"1159"}
!1824 = !DILocation(line: 163, column: 21, scope: !1778)
!1825 = !{!"1160"}
!1826 = !{!"1161"}
!1827 = !DILocation(line: 164, column: 18, scope: !1778)
!1828 = !{!"1162"}
!1829 = !DILocation(line: 164, column: 15, scope: !1778)
!1830 = !{!"1163"}
!1831 = !{!"1164"}
!1832 = !DILocation(line: 164, column: 22, scope: !1778)
!1833 = !{!"1165"}
!1834 = !DILocation(line: 165, column: 10, scope: !1778)
!1835 = !{!"1166"}
!1836 = !DILocation(line: 158, column: 41, scope: !1773)
!1837 = !{!"1167"}
!1838 = !{!"1168"}
!1839 = !DILocation(line: 158, column: 10, scope: !1773)
!1840 = distinct !{!1840, !1775, !1841, !517}
!1841 = !DILocation(line: 165, column: 10, scope: !1763)
!1842 = !{!"1169"}
!1843 = !DILocation(line: 166, column: 24, scope: !1764)
!1844 = !{!"1170"}
!1845 = !DILocation(line: 166, column: 10, scope: !1764)
!1846 = !{!"1171"}
!1847 = !{!"1172"}
!1848 = !DILocation(line: 166, column: 28, scope: !1764)
!1849 = !{!"1173"}
!1850 = !DILocation(line: 167, column: 5, scope: !1764)
!1851 = !{!"1174"}
!1852 = !DILocation(line: 156, column: 36, scope: !1754)
!1853 = !{!"1175"}
!1854 = !{!"1176"}
!1855 = !DILocation(line: 156, column: 5, scope: !1754)
!1856 = distinct !{!1856, !1756, !1857, !517}
!1857 = !DILocation(line: 167, column: 5, scope: !1748)
!1858 = !{!"1177"}
!1859 = !DILocation(line: 168, column: 17, scope: !1719)
!1860 = !{!"1178"}
!1861 = !{!"1179"}
!1862 = !DILocation(line: 168, column: 35, scope: !1719)
!1863 = !{!"1180"}
!1864 = !DILocalVariable(name: "bit_mask", scope: !1719, file: !41, line: 152, type: !6)
!1865 = !{!"1181"}
!1866 = !DILocation(line: 169, column: 5, scope: !1719)
!1867 = !{!"1182"}
!1868 = !DILocation(line: 169, column: 23, scope: !1719)
!1869 = !{!"1183"}
!1870 = !{!"1184"}
!1871 = !{!"1185"}
!1872 = !{!"1186"}
!1873 = !{!"1187"}
!1874 = !DILocation(line: 171, column: 10, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1719, file: !41, line: 171, column: 5)
!1876 = !{!"1188"}
!1877 = !DILocation(line: 0, scope: !1875)
!1878 = !{!"1189"}
!1879 = !{!"1190"}
!1880 = !{!"1191"}
!1881 = !{!"1192"}
!1882 = !{!"1193"}
!1883 = !{!"1194"}
!1884 = !DILocation(line: 171, column: 19, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1875, file: !41, line: 171, column: 5)
!1886 = !{!"1195"}
!1887 = !DILocation(line: 171, column: 5, scope: !1875)
!1888 = !{!"1196"}
!1889 = !DILocation(line: 172, column: 31, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1885, file: !41, line: 171, column: 40)
!1891 = !{!"1197"}
!1892 = !DILocation(line: 172, column: 17, scope: !1890)
!1893 = !{!"1198"}
!1894 = !{!"1199"}
!1895 = !{!"1200"}
!1896 = !DILocation(line: 172, column: 35, scope: !1890)
!1897 = !{!"1201"}
!1898 = !DILocalVariable(name: "temp", scope: !1719, file: !41, line: 152, type: !6)
!1899 = !{!"1202"}
!1900 = !DILocation(line: 173, column: 44, scope: !1890)
!1901 = !{!"1203"}
!1902 = !DILocation(line: 173, column: 30, scope: !1890)
!1903 = !{!"1204"}
!1904 = !{!"1205"}
!1905 = !{!"1206"}
!1906 = !DILocation(line: 173, column: 48, scope: !1890)
!1907 = !{!"1207"}
!1908 = !DILocation(line: 173, column: 54, scope: !1890)
!1909 = !{!"1208"}
!1910 = !DILocation(line: 173, column: 23, scope: !1890)
!1911 = !{!"1209"}
!1912 = !DILocation(line: 173, column: 9, scope: !1890)
!1913 = !{!"1210"}
!1914 = !{!"1211"}
!1915 = !DILocation(line: 173, column: 27, scope: !1890)
!1916 = !{!"1212"}
!1917 = !{!"1213"}
!1918 = !DILocation(line: 175, column: 9, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1890, file: !41, line: 175, column: 9)
!1920 = !{!"1214"}
!1921 = !{!"1215"}
!1922 = !{!"1216"}
!1923 = !{!"1217"}
!1924 = !DILocalVariable(name: "tempReg", scope: !1919, file: !41, line: 175, type: !6)
!1925 = !DILocation(line: 0, scope: !1919)
!1926 = !{!"1218"}
!1927 = !{!"1219"}
!1928 = !{!"1220"}
!1929 = !{!"1221"}
!1930 = !{!"1222"}
!1931 = !{!"1223"}
!1932 = !{!"1224"}
!1933 = !{!"1225"}
!1934 = !{!"1226"}
!1935 = !{!"1227"}
!1936 = !{!"1228"}
!1937 = !{!"1229"}
!1938 = !{!"1230"}
!1939 = !{!"1231"}
!1940 = !{!"1232"}
!1941 = !{!"1233"}
!1942 = !DILocation(line: 176, column: 5, scope: !1890)
!1943 = !{!"1234"}
!1944 = !DILocation(line: 171, column: 36, scope: !1885)
!1945 = !{!"1235"}
!1946 = !{!"1236"}
!1947 = !DILocation(line: 171, column: 5, scope: !1885)
!1948 = distinct !{!1948, !1887, !1949, !517}
!1949 = !DILocation(line: 176, column: 5, scope: !1875)
!1950 = !{!"1237"}
!1951 = !DILocation(line: 177, column: 28, scope: !1719)
!1952 = !{!"1238"}
!1953 = !{!"1239"}
!1954 = !DILocation(line: 177, column: 46, scope: !1719)
!1955 = !{!"1240"}
!1956 = !{!"1241"}
!1957 = !DILocation(line: 178, column: 5, scope: !1719)
!1958 = !{!"1242"}
!1959 = !DILocation(line: 178, column: 23, scope: !1719)
!1960 = !{!"1243"}
!1961 = !{!"1244"}
!1962 = !{!"1245"}
!1963 = !{!"1246"}
!1964 = !DILocation(line: 179, column: 10, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1719, file: !41, line: 179, column: 5)
!1966 = !{!"1247"}
!1967 = !DILocation(line: 0, scope: !1965)
!1968 = !{!"1248"}
!1969 = !{!"1249"}
!1970 = !{!"1250"}
!1971 = !{!"1251"}
!1972 = !DILocation(line: 179, column: 19, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1965, file: !41, line: 179, column: 5)
!1974 = !{!"1252"}
!1975 = !DILocation(line: 179, column: 5, scope: !1965)
!1976 = !{!"1253"}
!1977 = !DILocation(line: 180, column: 9, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !41, line: 180, column: 9)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !41, line: 179, column: 40)
!1980 = !{!"1254"}
!1981 = !{!"1255"}
!1982 = !{!"1256"}
!1983 = !{!"1257"}
!1984 = !DILocalVariable(name: "tempReg", scope: !1978, file: !41, line: 180, type: !6)
!1985 = !DILocation(line: 0, scope: !1978)
!1986 = !{!"1258"}
!1987 = !{!"1259"}
!1988 = !{!"1260"}
!1989 = !{!"1261"}
!1990 = !{!"1262"}
!1991 = !{!"1263"}
!1992 = !{!"1264"}
!1993 = !{!"1265"}
!1994 = !{!"1266"}
!1995 = !{!"1267"}
!1996 = !{!"1268"}
!1997 = !{!"1269"}
!1998 = !DILocation(line: 181, column: 5, scope: !1979)
!1999 = !{!"1270"}
!2000 = !DILocation(line: 179, column: 36, scope: !1973)
!2001 = !{!"1271"}
!2002 = !{!"1272"}
!2003 = !DILocation(line: 179, column: 5, scope: !1973)
!2004 = distinct !{!2004, !1975, !2005, !517}
!2005 = !DILocation(line: 181, column: 5, scope: !1965)
!2006 = !{!"1273"}
!2007 = !DILocation(line: 182, column: 1, scope: !1719)
!2008 = !{!"1274"}
!2009 = distinct !DISubprogram(name: "is_digit_lessthan_ct", scope: !7, file: !7, line: 250, type: !2010, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!12, !6, !6}
!2012 = !DILocalVariable(name: "x", arg: 1, scope: !2009, file: !7, line: 250, type: !6)
!2013 = !DILocation(line: 0, scope: !2009)
!2014 = !{!"1275"}
!2015 = !DILocalVariable(name: "y", arg: 2, scope: !2009, file: !7, line: 250, type: !6)
!2016 = !{!"1276"}
!2017 = !DILocation(line: 252, column: 36, scope: !2009)
!2018 = !{!"1277"}
!2019 = !DILocation(line: 252, column: 47, scope: !2009)
!2020 = !{!"1278"}
!2021 = !DILocation(line: 252, column: 52, scope: !2009)
!2022 = !{!"1279"}
!2023 = !DILocation(line: 252, column: 41, scope: !2009)
!2024 = !{!"1280"}
!2025 = !DILocation(line: 252, column: 30, scope: !2009)
!2026 = !{!"1281"}
!2027 = !DILocation(line: 252, column: 59, scope: !2009)
!2028 = !{!"1282"}
!2029 = !DILocation(line: 252, column: 5, scope: !2009)
!2030 = !{!"1283"}
!2031 = distinct !DISubprogram(name: "fpsqr1271", scope: !41, file: !41, line: 185, type: !2032, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !14, !14}
!2034 = !DILocalVariable(name: "a", arg: 1, scope: !2031, file: !41, line: 185, type: !14)
!2035 = !DILocation(line: 0, scope: !2031)
!2036 = !{!"1284"}
!2037 = !DILocalVariable(name: "c", arg: 2, scope: !2031, file: !41, line: 185, type: !14)
!2038 = !{!"1285"}
!2039 = !DILocation(line: 188, column: 5, scope: !2031)
!2040 = !{!"1286"}
!2041 = !DILocation(line: 189, column: 1, scope: !2031)
!2042 = !{!"1287"}
!2043 = distinct !DISubprogram(name: "mod1271", scope: !41, file: !41, line: 192, type: !2044, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !14}
!2046 = !DILocalVariable(name: "a", arg: 1, scope: !2043, file: !41, line: 192, type: !14)
!2047 = !DILocation(line: 0, scope: !2043)
!2048 = !{!"1288"}
!2049 = !DILocalVariable(name: "borrow", scope: !2043, file: !41, line: 196, type: !12)
!2050 = !{!"1289"}
!2051 = !DILocalVariable(name: "i", scope: !2043, file: !41, line: 195, type: !12)
!2052 = !{!"1290"}
!2053 = !DILocation(line: 198, column: 10, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2043, file: !41, line: 198, column: 5)
!2055 = !{!"1291"}
!2056 = !DILocation(line: 0, scope: !2054)
!2057 = !{!"1292"}
!2058 = !{!"1293"}
!2059 = !{!"1294"}
!2060 = !{!"1295"}
!2061 = !DILocation(line: 198, column: 19, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2054, file: !41, line: 198, column: 5)
!2063 = !{!"1296"}
!2064 = !DILocation(line: 198, column: 5, scope: !2054)
!2065 = !{!"1297"}
!2066 = !DILocation(line: 199, column: 9, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !41, line: 199, column: 9)
!2068 = distinct !DILexicalBlock(scope: !2062, file: !41, line: 198, column: 44)
!2069 = !{!"1298"}
!2070 = !{!"1299"}
!2071 = !{!"1300"}
!2072 = !{!"1301"}
!2073 = !DILocalVariable(name: "tempReg", scope: !2067, file: !41, line: 199, type: !6)
!2074 = !DILocation(line: 0, scope: !2067)
!2075 = !{!"1302"}
!2076 = !{!"1303"}
!2077 = !{!"1304"}
!2078 = !{!"1305"}
!2079 = !{!"1306"}
!2080 = !{!"1307"}
!2081 = !{!"1308"}
!2082 = !{!"1309"}
!2083 = !DILocalVariable(name: "borrowReg", scope: !2067, file: !41, line: 199, type: !12)
!2084 = !{!"1310"}
!2085 = !{!"1311"}
!2086 = !{!"1312"}
!2087 = !{!"1313"}
!2088 = !{!"1314"}
!2089 = !{!"1315"}
!2090 = !DILocation(line: 200, column: 5, scope: !2068)
!2091 = !{!"1316"}
!2092 = !DILocation(line: 198, column: 40, scope: !2062)
!2093 = !{!"1317"}
!2094 = !{!"1318"}
!2095 = !DILocation(line: 198, column: 5, scope: !2062)
!2096 = distinct !{!2096, !2064, !2097, !517}
!2097 = !DILocation(line: 200, column: 5, scope: !2054)
!2098 = !{!"1319"}
!2099 = !DILocation(line: 201, column: 5, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2043, file: !41, line: 201, column: 5)
!2101 = !{!"1320"}
!2102 = !{!"1321"}
!2103 = !{!"1322"}
!2104 = !DILocalVariable(name: "tempReg", scope: !2100, file: !41, line: 201, type: !6)
!2105 = !DILocation(line: 0, scope: !2100)
!2106 = !{!"1323"}
!2107 = !{!"1324"}
!2108 = !{!"1325"}
!2109 = !{!"1326"}
!2110 = !{!"1327"}
!2111 = !{!"1328"}
!2112 = !{!"1329"}
!2113 = !DILocalVariable(name: "borrowReg", scope: !2100, file: !41, line: 201, type: !12)
!2114 = !{!"1330"}
!2115 = !{!"1331"}
!2116 = !{!"1332"}
!2117 = !{!"1333"}
!2118 = !{!"1334"}
!2119 = !DILocation(line: 203, column: 14, scope: !2043)
!2120 = !{!"1335"}
!2121 = !DILocalVariable(name: "mask", scope: !2043, file: !41, line: 194, type: !6)
!2122 = !{!"1336"}
!2123 = !{!"1337"}
!2124 = !{!"1338"}
!2125 = !DILocation(line: 205, column: 10, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2043, file: !41, line: 205, column: 5)
!2127 = !{!"1339"}
!2128 = !DILocation(line: 0, scope: !2126)
!2129 = !{!"1340"}
!2130 = !{!"1341"}
!2131 = !{!"1342"}
!2132 = !{!"1343"}
!2133 = !DILocation(line: 205, column: 19, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2126, file: !41, line: 205, column: 5)
!2135 = !{!"1344"}
!2136 = !DILocation(line: 205, column: 5, scope: !2126)
!2137 = !{!"1345"}
!2138 = !DILocation(line: 206, column: 9, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !41, line: 206, column: 9)
!2140 = distinct !DILexicalBlock(scope: !2134, file: !41, line: 205, column: 44)
!2141 = !{!"1346"}
!2142 = !{!"1347"}
!2143 = !{!"1348"}
!2144 = !{!"1349"}
!2145 = !DILocalVariable(name: "tempReg", scope: !2139, file: !41, line: 206, type: !6)
!2146 = !DILocation(line: 0, scope: !2139)
!2147 = !{!"1350"}
!2148 = !{!"1351"}
!2149 = !{!"1352"}
!2150 = !{!"1353"}
!2151 = !{!"1354"}
!2152 = !{!"1355"}
!2153 = !{!"1356"}
!2154 = !{!"1357"}
!2155 = !{!"1358"}
!2156 = !{!"1359"}
!2157 = !{!"1360"}
!2158 = !{!"1361"}
!2159 = !DILocation(line: 207, column: 5, scope: !2140)
!2160 = !{!"1362"}
!2161 = !DILocation(line: 205, column: 40, scope: !2134)
!2162 = !{!"1363"}
!2163 = !{!"1364"}
!2164 = !DILocation(line: 205, column: 5, scope: !2134)
!2165 = distinct !{!2165, !2136, !2166, !517}
!2166 = !DILocation(line: 207, column: 5, scope: !2126)
!2167 = !{!"1365"}
!2168 = !DILocation(line: 208, column: 5, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2043, file: !41, line: 208, column: 5)
!2170 = !{!"1366"}
!2171 = !{!"1367"}
!2172 = !{!"1368"}
!2173 = !DILocalVariable(name: "tempReg", scope: !2169, file: !41, line: 208, type: !6)
!2174 = !DILocation(line: 0, scope: !2169)
!2175 = !{!"1369"}
!2176 = !{!"1370"}
!2177 = !{!"1371"}
!2178 = !{!"1372"}
!2179 = !{!"1373"}
!2180 = !{!"1374"}
!2181 = !{!"1375"}
!2182 = !{!"1376"}
!2183 = !{!"1377"}
!2184 = !{!"1378"}
!2185 = !{!"1379"}
!2186 = !DILocation(line: 209, column: 1, scope: !2043)
!2187 = !{!"1380"}
!2188 = distinct !DISubprogram(name: "is_digit_zero_ct", scope: !7, file: !7, line: 245, type: !891, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2189 = !DILocalVariable(name: "x", arg: 1, scope: !2188, file: !7, line: 245, type: !6)
!2190 = !DILocation(line: 0, scope: !2188)
!2191 = !{!"1381"}
!2192 = !DILocation(line: 247, column: 31, scope: !2188)
!2193 = !{!"1382"}
!2194 = !DILocation(line: 247, column: 29, scope: !2188)
!2195 = !{!"1383"}
!2196 = !DILocation(line: 247, column: 5, scope: !2188)
!2197 = !{!"1384"}
!2198 = distinct !DISubprogram(name: "mp_mul", scope: !41, file: !41, line: 212, type: !2199, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !14, !14, !14, !12}
!2201 = !{!"1385"}
!2202 = !DILocalVariable(name: "a", arg: 1, scope: !2198, file: !41, line: 212, type: !14)
!2203 = !DILocation(line: 0, scope: !2198)
!2204 = !{!"1386"}
!2205 = !DILocalVariable(name: "b", arg: 2, scope: !2198, file: !41, line: 212, type: !14)
!2206 = !{!"1387"}
!2207 = !DILocalVariable(name: "c", arg: 3, scope: !2198, file: !41, line: 212, type: !14)
!2208 = !{!"1388"}
!2209 = !DILocalVariable(name: "nwords", arg: 4, scope: !2198, file: !41, line: 212, type: !12)
!2210 = !{!"1389"}
!2211 = !DILocalVariable(name: "UV", scope: !2198, file: !41, line: 215, type: !1732)
!2212 = !DILocation(line: 215, column: 19, scope: !2198)
!2213 = !{!"1390"}
!2214 = !DILocalVariable(name: "carry", scope: !2198, file: !41, line: 216, type: !12)
!2215 = !{!"1391"}
!2216 = !DILocalVariable(name: "i", scope: !2198, file: !41, line: 214, type: !12)
!2217 = !{!"1392"}
!2218 = !DILocation(line: 218, column: 11, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2198, file: !41, line: 218, column: 6)
!2220 = !{!"1393"}
!2221 = !DILocation(line: 0, scope: !2219)
!2222 = !{!"1394"}
!2223 = !{!"1395"}
!2224 = !DILocation(line: 218, column: 24, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2219, file: !41, line: 218, column: 6)
!2226 = !{!"1396"}
!2227 = !DILocation(line: 218, column: 20, scope: !2225)
!2228 = !{!"1397"}
!2229 = !DILocation(line: 218, column: 6, scope: !2219)
!2230 = !{!"1398"}
!2231 = !DILocation(line: 218, column: 39, scope: !2225)
!2232 = !{!"1399"}
!2233 = !{!"1400"}
!2234 = !DILocation(line: 218, column: 44, scope: !2225)
!2235 = !{!"1401"}
!2236 = !{!"1402"}
!2237 = !DILocation(line: 218, column: 35, scope: !2225)
!2238 = !{!"1403"}
!2239 = !{!"1404"}
!2240 = !DILocation(line: 218, column: 6, scope: !2225)
!2241 = distinct !{!2241, !2229, !2242, !517}
!2242 = !DILocation(line: 218, column: 46, scope: !2219)
!2243 = !{!"1405"}
!2244 = !{!"1406"}
!2245 = !DILocation(line: 220, column: 11, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2198, file: !41, line: 220, column: 6)
!2247 = !{!"1407"}
!2248 = !DILocation(line: 0, scope: !2246)
!2249 = !{!"1408"}
!2250 = !{!"1409"}
!2251 = !DILocation(line: 220, column: 20, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2246, file: !41, line: 220, column: 6)
!2253 = !{!"1410"}
!2254 = !DILocation(line: 220, column: 6, scope: !2246)
!2255 = !{!"1411"}
!2256 = !DILocalVariable(name: "u", scope: !2198, file: !41, line: 215, type: !6)
!2257 = !{!"1412"}
!2258 = !DILocalVariable(name: "j", scope: !2198, file: !41, line: 214, type: !12)
!2259 = !{!"1413"}
!2260 = !DILocation(line: 222, column: 16, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !41, line: 222, column: 11)
!2262 = distinct !DILexicalBlock(scope: !2252, file: !41, line: 220, column: 35)
!2263 = !{!"1414"}
!2264 = !DILocation(line: 0, scope: !2261)
!2265 = !{!"1415"}
!2266 = !DILocation(line: 0, scope: !2262)
!2267 = !{!"1416"}
!2268 = !{!"1417"}
!2269 = !{!"1418"}
!2270 = !DILocation(line: 222, column: 25, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2261, file: !41, line: 222, column: 11)
!2272 = !{!"1419"}
!2273 = !DILocation(line: 222, column: 11, scope: !2261)
!2274 = !{!"1420"}
!2275 = !DILocation(line: 223, column: 16, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2271, file: !41, line: 222, column: 40)
!2277 = !{!"1421"}
!2278 = !{!"1422"}
!2279 = !{!"1423"}
!2280 = !{!"1424"}
!2281 = !{!"1425"}
!2282 = !{!"1426"}
!2283 = !{!"1427"}
!2284 = !{!"1428"}
!2285 = !DILocation(line: 224, column: 16, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2276, file: !41, line: 224, column: 16)
!2287 = !{!"1429"}
!2288 = !{!"1430"}
!2289 = !{!"1431"}
!2290 = !DILocalVariable(name: "tempReg", scope: !2286, file: !41, line: 224, type: !6)
!2291 = !DILocation(line: 0, scope: !2286)
!2292 = !{!"1432"}
!2293 = !{!"1433"}
!2294 = !DILocalVariable(name: "v", scope: !2198, file: !41, line: 215, type: !6)
!2295 = !{!"1434"}
!2296 = !{!"1435"}
!2297 = !{!"1436"}
!2298 = !{!"1437"}
!2299 = !{!"1438"}
!2300 = !DILocation(line: 225, column: 20, scope: !2276)
!2301 = !{!"1439"}
!2302 = !{!"1440"}
!2303 = !DILocation(line: 225, column: 26, scope: !2276)
!2304 = !{!"1441"}
!2305 = !{!"1442"}
!2306 = !DILocation(line: 226, column: 16, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2276, file: !41, line: 226, column: 16)
!2308 = !{!"1443"}
!2309 = !{!"1444"}
!2310 = !{!"1445"}
!2311 = !{!"1446"}
!2312 = !{!"1447"}
!2313 = !DILocalVariable(name: "tempReg", scope: !2307, file: !41, line: 226, type: !6)
!2314 = !DILocation(line: 0, scope: !2307)
!2315 = !{!"1448"}
!2316 = !{!"1449"}
!2317 = !{!"1450"}
!2318 = !{!"1451"}
!2319 = !{!"1452"}
!2320 = !{!"1453"}
!2321 = !{!"1454"}
!2322 = !DILocation(line: 227, column: 22, scope: !2276)
!2323 = !{!"1455"}
!2324 = !{!"1456"}
!2325 = !DILocation(line: 228, column: 19, scope: !2276)
!2326 = !{!"1457"}
!2327 = !DILocation(line: 228, column: 16, scope: !2276)
!2328 = !{!"1458"}
!2329 = !{!"1459"}
!2330 = !DILocation(line: 228, column: 23, scope: !2276)
!2331 = !{!"1460"}
!2332 = !DILocation(line: 229, column: 11, scope: !2276)
!2333 = !{!"1461"}
!2334 = !DILocation(line: 222, column: 36, scope: !2271)
!2335 = !{!"1462"}
!2336 = !{!"1463"}
!2337 = !DILocation(line: 222, column: 11, scope: !2271)
!2338 = distinct !{!2338, !2273, !2339, !517}
!2339 = !DILocation(line: 229, column: 11, scope: !2261)
!2340 = !{!"1464"}
!2341 = !DILocation(line: 230, column: 19, scope: !2262)
!2342 = !{!"1465"}
!2343 = !DILocation(line: 230, column: 11, scope: !2262)
!2344 = !{!"1466"}
!2345 = !{!"1467"}
!2346 = !DILocation(line: 230, column: 23, scope: !2262)
!2347 = !{!"1468"}
!2348 = !DILocation(line: 231, column: 6, scope: !2262)
!2349 = !{!"1469"}
!2350 = !DILocation(line: 220, column: 31, scope: !2252)
!2351 = !{!"1470"}
!2352 = !{!"1471"}
!2353 = !DILocation(line: 220, column: 6, scope: !2252)
!2354 = distinct !{!2354, !2254, !2355, !517}
!2355 = !DILocation(line: 231, column: 6, scope: !2246)
!2356 = !{!"1472"}
!2357 = !DILocation(line: 232, column: 1, scope: !2198)
!2358 = !{!"1473"}
!2359 = distinct !DISubprogram(name: "mp_add", scope: !41, file: !41, line: 235, type: !2360, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!12, !14, !14, !14, !12}
!2362 = !DILocalVariable(name: "a", arg: 1, scope: !2359, file: !41, line: 235, type: !14)
!2363 = !DILocation(line: 0, scope: !2359)
!2364 = !{!"1474"}
!2365 = !DILocalVariable(name: "b", arg: 2, scope: !2359, file: !41, line: 235, type: !14)
!2366 = !{!"1475"}
!2367 = !DILocalVariable(name: "c", arg: 3, scope: !2359, file: !41, line: 235, type: !14)
!2368 = !{!"1476"}
!2369 = !DILocalVariable(name: "nwords", arg: 4, scope: !2359, file: !41, line: 235, type: !12)
!2370 = !{!"1477"}
!2371 = !DILocalVariable(name: "carry", scope: !2359, file: !41, line: 237, type: !12)
!2372 = !{!"1478"}
!2373 = !DILocalVariable(name: "i", scope: !2359, file: !41, line: 237, type: !12)
!2374 = !{!"1479"}
!2375 = !DILocation(line: 239, column: 10, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2359, file: !41, line: 239, column: 5)
!2377 = !{!"1480"}
!2378 = !DILocation(line: 0, scope: !2376)
!2379 = !{!"1481"}
!2380 = !{!"1482"}
!2381 = !{!"1483"}
!2382 = !{!"1484"}
!2383 = !DILocation(line: 239, column: 19, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2376, file: !41, line: 239, column: 5)
!2385 = !{!"1485"}
!2386 = !DILocation(line: 239, column: 5, scope: !2376)
!2387 = !{!"1486"}
!2388 = !DILocation(line: 240, column: 9, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !41, line: 240, column: 9)
!2390 = distinct !DILexicalBlock(scope: !2384, file: !41, line: 239, column: 34)
!2391 = !{!"1487"}
!2392 = !{!"1488"}
!2393 = !{!"1489"}
!2394 = !{!"1490"}
!2395 = !DILocalVariable(name: "tempReg", scope: !2389, file: !41, line: 240, type: !6)
!2396 = !DILocation(line: 0, scope: !2389)
!2397 = !{!"1491"}
!2398 = !{!"1492"}
!2399 = !{!"1493"}
!2400 = !{!"1494"}
!2401 = !{!"1495"}
!2402 = !{!"1496"}
!2403 = !{!"1497"}
!2404 = !{!"1498"}
!2405 = !{!"1499"}
!2406 = !{!"1500"}
!2407 = !{!"1501"}
!2408 = !{!"1502"}
!2409 = !{!"1503"}
!2410 = !{!"1504"}
!2411 = !{!"1505"}
!2412 = !DILocation(line: 241, column: 5, scope: !2390)
!2413 = !{!"1506"}
!2414 = !DILocation(line: 239, column: 30, scope: !2384)
!2415 = !{!"1507"}
!2416 = !{!"1508"}
!2417 = !DILocation(line: 239, column: 5, scope: !2384)
!2418 = distinct !{!2418, !2386, !2419, !517}
!2419 = !DILocation(line: 241, column: 5, scope: !2376)
!2420 = !{!"1509"}
!2421 = !DILocation(line: 243, column: 5, scope: !2359)
!2422 = !{!"1510"}
!2423 = distinct !DISubprogram(name: "fpinv1271", scope: !41, file: !41, line: 247, type: !2044, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2424 = !{!"1511"}
!2425 = !{!"1512"}
!2426 = !{!"1513"}
!2427 = !{!"1514"}
!2428 = !{!"1515"}
!2429 = !DILocalVariable(name: "a", arg: 1, scope: !2423, file: !41, line: 247, type: !14)
!2430 = !DILocation(line: 0, scope: !2423)
!2431 = !{!"1516"}
!2432 = !DILocalVariable(name: "t1", scope: !2423, file: !41, line: 251, type: !16)
!2433 = !DILocation(line: 251, column: 12, scope: !2423)
!2434 = !{!"1517"}
!2435 = !DILocalVariable(name: "t2", scope: !2423, file: !41, line: 251, type: !16)
!2436 = !DILocation(line: 251, column: 16, scope: !2423)
!2437 = !{!"1518"}
!2438 = !DILocalVariable(name: "t3", scope: !2423, file: !41, line: 251, type: !16)
!2439 = !DILocation(line: 251, column: 20, scope: !2423)
!2440 = !{!"1519"}
!2441 = !DILocalVariable(name: "t4", scope: !2423, file: !41, line: 251, type: !16)
!2442 = !DILocation(line: 251, column: 24, scope: !2423)
!2443 = !{!"1520"}
!2444 = !DILocalVariable(name: "t5", scope: !2423, file: !41, line: 251, type: !16)
!2445 = !DILocation(line: 251, column: 28, scope: !2423)
!2446 = !{!"1521"}
!2447 = !DILocation(line: 253, column: 18, scope: !2423)
!2448 = !{!"1522"}
!2449 = !DILocation(line: 253, column: 5, scope: !2423)
!2450 = !{!"1523"}
!2451 = !DILocation(line: 254, column: 18, scope: !2423)
!2452 = !{!"1524"}
!2453 = !DILocation(line: 254, column: 22, scope: !2423)
!2454 = !{!"1525"}
!2455 = !DILocation(line: 254, column: 5, scope: !2423)
!2456 = !{!"1526"}
!2457 = !DILocation(line: 255, column: 15, scope: !2423)
!2458 = !{!"1527"}
!2459 = !DILocation(line: 255, column: 19, scope: !2423)
!2460 = !{!"1528"}
!2461 = !DILocation(line: 255, column: 5, scope: !2423)
!2462 = !{!"1529"}
!2463 = !DILocation(line: 256, column: 15, scope: !2423)
!2464 = !{!"1530"}
!2465 = !DILocation(line: 256, column: 19, scope: !2423)
!2466 = !{!"1531"}
!2467 = !DILocation(line: 256, column: 5, scope: !2423)
!2468 = !{!"1532"}
!2469 = !DILocation(line: 257, column: 15, scope: !2423)
!2470 = !{!"1533"}
!2471 = !DILocation(line: 257, column: 19, scope: !2423)
!2472 = !{!"1534"}
!2473 = !DILocation(line: 257, column: 23, scope: !2423)
!2474 = !{!"1535"}
!2475 = !DILocation(line: 257, column: 5, scope: !2423)
!2476 = !{!"1536"}
!2477 = !DILocation(line: 258, column: 15, scope: !2423)
!2478 = !{!"1537"}
!2479 = !DILocation(line: 258, column: 19, scope: !2423)
!2480 = !{!"1538"}
!2481 = !DILocation(line: 258, column: 5, scope: !2423)
!2482 = !{!"1539"}
!2483 = !DILocation(line: 259, column: 15, scope: !2423)
!2484 = !{!"1540"}
!2485 = !DILocation(line: 259, column: 19, scope: !2423)
!2486 = !{!"1541"}
!2487 = !DILocation(line: 259, column: 5, scope: !2423)
!2488 = !{!"1542"}
!2489 = !DILocation(line: 260, column: 15, scope: !2423)
!2490 = !{!"1543"}
!2491 = !DILocation(line: 260, column: 19, scope: !2423)
!2492 = !{!"1544"}
!2493 = !DILocation(line: 260, column: 5, scope: !2423)
!2494 = !{!"1545"}
!2495 = !DILocation(line: 261, column: 15, scope: !2423)
!2496 = !{!"1546"}
!2497 = !DILocation(line: 261, column: 19, scope: !2423)
!2498 = !{!"1547"}
!2499 = !DILocation(line: 261, column: 5, scope: !2423)
!2500 = !{!"1548"}
!2501 = !DILocation(line: 262, column: 15, scope: !2423)
!2502 = !{!"1549"}
!2503 = !DILocation(line: 262, column: 19, scope: !2423)
!2504 = !{!"1550"}
!2505 = !DILocation(line: 262, column: 23, scope: !2423)
!2506 = !{!"1551"}
!2507 = !DILocation(line: 262, column: 5, scope: !2423)
!2508 = !{!"1552"}
!2509 = !DILocation(line: 263, column: 15, scope: !2423)
!2510 = !{!"1553"}
!2511 = !DILocation(line: 263, column: 19, scope: !2423)
!2512 = !{!"1554"}
!2513 = !DILocation(line: 263, column: 5, scope: !2423)
!2514 = !{!"1555"}
!2515 = !DILocalVariable(name: "i", scope: !2423, file: !41, line: 250, type: !13)
!2516 = !{!"1556"}
!2517 = !DILocation(line: 264, column: 10, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2423, file: !41, line: 264, column: 5)
!2519 = !{!"1557"}
!2520 = !DILocation(line: 0, scope: !2518)
!2521 = !{!"1558"}
!2522 = !{!"1559"}
!2523 = !DILocation(line: 264, column: 16, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2518, file: !41, line: 264, column: 5)
!2525 = !{!"1560"}
!2526 = !DILocation(line: 264, column: 5, scope: !2518)
!2527 = !{!"1561"}
!2528 = !DILocation(line: 264, column: 35, scope: !2524)
!2529 = !{!"1562"}
!2530 = !DILocation(line: 264, column: 39, scope: !2524)
!2531 = !{!"1563"}
!2532 = !DILocation(line: 264, column: 25, scope: !2524)
!2533 = !{!"1564"}
!2534 = !{!"1565"}
!2535 = !DILocation(line: 264, column: 21, scope: !2524)
!2536 = !{!"1566"}
!2537 = !{!"1567"}
!2538 = !DILocation(line: 264, column: 5, scope: !2524)
!2539 = distinct !{!2539, !2526, !2540, !517}
!2540 = !DILocation(line: 264, column: 41, scope: !2518)
!2541 = !{!"1568"}
!2542 = !DILocation(line: 265, column: 15, scope: !2423)
!2543 = !{!"1569"}
!2544 = !DILocation(line: 265, column: 19, scope: !2423)
!2545 = !{!"1570"}
!2546 = !DILocation(line: 265, column: 23, scope: !2423)
!2547 = !{!"1571"}
!2548 = !DILocation(line: 265, column: 5, scope: !2423)
!2549 = !{!"1572"}
!2550 = !DILocation(line: 266, column: 15, scope: !2423)
!2551 = !{!"1573"}
!2552 = !DILocation(line: 266, column: 19, scope: !2423)
!2553 = !{!"1574"}
!2554 = !DILocation(line: 266, column: 5, scope: !2423)
!2555 = !{!"1575"}
!2556 = !{!"1576"}
!2557 = !DILocation(line: 267, column: 10, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2423, file: !41, line: 267, column: 5)
!2559 = !{!"1577"}
!2560 = !DILocation(line: 0, scope: !2558)
!2561 = !{!"1578"}
!2562 = !{!"1579"}
!2563 = !DILocation(line: 267, column: 16, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2558, file: !41, line: 267, column: 5)
!2565 = !{!"1580"}
!2566 = !DILocation(line: 267, column: 5, scope: !2558)
!2567 = !{!"1581"}
!2568 = !DILocation(line: 267, column: 36, scope: !2564)
!2569 = !{!"1582"}
!2570 = !DILocation(line: 267, column: 40, scope: !2564)
!2571 = !{!"1583"}
!2572 = !DILocation(line: 267, column: 26, scope: !2564)
!2573 = !{!"1584"}
!2574 = !{!"1585"}
!2575 = !DILocation(line: 267, column: 22, scope: !2564)
!2576 = !{!"1586"}
!2577 = !{!"1587"}
!2578 = !DILocation(line: 267, column: 5, scope: !2564)
!2579 = distinct !{!2579, !2566, !2580, !517}
!2580 = !DILocation(line: 267, column: 42, scope: !2558)
!2581 = !{!"1588"}
!2582 = !DILocation(line: 268, column: 15, scope: !2423)
!2583 = !{!"1589"}
!2584 = !DILocation(line: 268, column: 19, scope: !2423)
!2585 = !{!"1590"}
!2586 = !DILocation(line: 268, column: 23, scope: !2423)
!2587 = !{!"1591"}
!2588 = !DILocation(line: 268, column: 5, scope: !2423)
!2589 = !{!"1592"}
!2590 = !DILocation(line: 269, column: 15, scope: !2423)
!2591 = !{!"1593"}
!2592 = !DILocation(line: 269, column: 19, scope: !2423)
!2593 = !{!"1594"}
!2594 = !DILocation(line: 269, column: 5, scope: !2423)
!2595 = !{!"1595"}
!2596 = !{!"1596"}
!2597 = !DILocation(line: 270, column: 10, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2423, file: !41, line: 270, column: 5)
!2599 = !{!"1597"}
!2600 = !DILocation(line: 0, scope: !2598)
!2601 = !{!"1598"}
!2602 = !{!"1599"}
!2603 = !DILocation(line: 270, column: 16, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2598, file: !41, line: 270, column: 5)
!2605 = !{!"1600"}
!2606 = !DILocation(line: 270, column: 5, scope: !2598)
!2607 = !{!"1601"}
!2608 = !DILocation(line: 270, column: 36, scope: !2604)
!2609 = !{!"1602"}
!2610 = !DILocation(line: 270, column: 40, scope: !2604)
!2611 = !{!"1603"}
!2612 = !DILocation(line: 270, column: 26, scope: !2604)
!2613 = !{!"1604"}
!2614 = !{!"1605"}
!2615 = !DILocation(line: 270, column: 22, scope: !2604)
!2616 = !{!"1606"}
!2617 = !{!"1607"}
!2618 = !DILocation(line: 270, column: 5, scope: !2604)
!2619 = distinct !{!2619, !2606, !2620, !517}
!2620 = !DILocation(line: 270, column: 42, scope: !2598)
!2621 = !{!"1608"}
!2622 = !DILocation(line: 271, column: 15, scope: !2423)
!2623 = !{!"1609"}
!2624 = !DILocation(line: 271, column: 19, scope: !2423)
!2625 = !{!"1610"}
!2626 = !DILocation(line: 271, column: 23, scope: !2423)
!2627 = !{!"1611"}
!2628 = !DILocation(line: 271, column: 5, scope: !2423)
!2629 = !{!"1612"}
!2630 = !{!"1613"}
!2631 = !DILocation(line: 272, column: 10, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2423, file: !41, line: 272, column: 5)
!2633 = !{!"1614"}
!2634 = !DILocation(line: 0, scope: !2632)
!2635 = !{!"1615"}
!2636 = !{!"1616"}
!2637 = !DILocation(line: 272, column: 16, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2632, file: !41, line: 272, column: 5)
!2639 = !{!"1617"}
!2640 = !DILocation(line: 272, column: 5, scope: !2632)
!2641 = !{!"1618"}
!2642 = !DILocation(line: 272, column: 36, scope: !2638)
!2643 = !{!"1619"}
!2644 = !DILocation(line: 272, column: 40, scope: !2638)
!2645 = !{!"1620"}
!2646 = !DILocation(line: 272, column: 26, scope: !2638)
!2647 = !{!"1621"}
!2648 = !{!"1622"}
!2649 = !DILocation(line: 272, column: 22, scope: !2638)
!2650 = !{!"1623"}
!2651 = !{!"1624"}
!2652 = !DILocation(line: 272, column: 5, scope: !2638)
!2653 = distinct !{!2653, !2640, !2654, !517}
!2654 = !DILocation(line: 272, column: 42, scope: !2632)
!2655 = !{!"1625"}
!2656 = !DILocation(line: 273, column: 15, scope: !2423)
!2657 = !{!"1626"}
!2658 = !DILocation(line: 273, column: 19, scope: !2423)
!2659 = !{!"1627"}
!2660 = !DILocation(line: 273, column: 23, scope: !2423)
!2661 = !{!"1628"}
!2662 = !DILocation(line: 273, column: 5, scope: !2423)
!2663 = !{!"1629"}
!2664 = !{!"1630"}
!2665 = !DILocation(line: 274, column: 10, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2423, file: !41, line: 274, column: 5)
!2667 = !{!"1631"}
!2668 = !DILocation(line: 0, scope: !2666)
!2669 = !{!"1632"}
!2670 = !{!"1633"}
!2671 = !DILocation(line: 274, column: 16, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2666, file: !41, line: 274, column: 5)
!2673 = !{!"1634"}
!2674 = !DILocation(line: 274, column: 5, scope: !2666)
!2675 = !{!"1635"}
!2676 = !DILocation(line: 274, column: 36, scope: !2672)
!2677 = !{!"1636"}
!2678 = !DILocation(line: 274, column: 40, scope: !2672)
!2679 = !{!"1637"}
!2680 = !DILocation(line: 274, column: 26, scope: !2672)
!2681 = !{!"1638"}
!2682 = !{!"1639"}
!2683 = !DILocation(line: 274, column: 22, scope: !2672)
!2684 = !{!"1640"}
!2685 = !{!"1641"}
!2686 = !DILocation(line: 274, column: 5, scope: !2672)
!2687 = distinct !{!2687, !2674, !2688, !517}
!2688 = !DILocation(line: 274, column: 42, scope: !2666)
!2689 = !{!"1642"}
!2690 = !DILocation(line: 275, column: 15, scope: !2423)
!2691 = !{!"1643"}
!2692 = !DILocation(line: 275, column: 19, scope: !2423)
!2693 = !{!"1644"}
!2694 = !DILocation(line: 275, column: 23, scope: !2423)
!2695 = !{!"1645"}
!2696 = !DILocation(line: 275, column: 5, scope: !2423)
!2697 = !{!"1646"}
!2698 = !{!"1647"}
!2699 = !DILocation(line: 276, column: 10, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2423, file: !41, line: 276, column: 5)
!2701 = !{!"1648"}
!2702 = !DILocation(line: 0, scope: !2700)
!2703 = !{!"1649"}
!2704 = !{!"1650"}
!2705 = !DILocation(line: 276, column: 16, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2700, file: !41, line: 276, column: 5)
!2707 = !{!"1651"}
!2708 = !DILocation(line: 276, column: 5, scope: !2700)
!2709 = !{!"1652"}
!2710 = !DILocation(line: 276, column: 35, scope: !2706)
!2711 = !{!"1653"}
!2712 = !DILocation(line: 276, column: 39, scope: !2706)
!2713 = !{!"1654"}
!2714 = !DILocation(line: 276, column: 25, scope: !2706)
!2715 = !{!"1655"}
!2716 = !{!"1656"}
!2717 = !DILocation(line: 276, column: 21, scope: !2706)
!2718 = !{!"1657"}
!2719 = !{!"1658"}
!2720 = !DILocation(line: 276, column: 5, scope: !2706)
!2721 = distinct !{!2721, !2708, !2722, !517}
!2722 = !DILocation(line: 276, column: 41, scope: !2700)
!2723 = !{!"1659"}
!2724 = !DILocation(line: 277, column: 15, scope: !2423)
!2725 = !{!"1660"}
!2726 = !DILocation(line: 277, column: 19, scope: !2423)
!2727 = !{!"1661"}
!2728 = !DILocation(line: 277, column: 23, scope: !2423)
!2729 = !{!"1662"}
!2730 = !DILocation(line: 277, column: 5, scope: !2423)
!2731 = !{!"1663"}
!2732 = !{!"1664"}
!2733 = !DILocation(line: 278, column: 10, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2423, file: !41, line: 278, column: 5)
!2735 = !{!"1665"}
!2736 = !DILocation(line: 0, scope: !2734)
!2737 = !{!"1666"}
!2738 = !{!"1667"}
!2739 = !DILocation(line: 278, column: 16, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2734, file: !41, line: 278, column: 5)
!2741 = !{!"1668"}
!2742 = !DILocation(line: 278, column: 5, scope: !2734)
!2743 = !{!"1669"}
!2744 = !DILocation(line: 278, column: 35, scope: !2740)
!2745 = !{!"1670"}
!2746 = !DILocation(line: 278, column: 39, scope: !2740)
!2747 = !{!"1671"}
!2748 = !DILocation(line: 278, column: 25, scope: !2740)
!2749 = !{!"1672"}
!2750 = !{!"1673"}
!2751 = !DILocation(line: 278, column: 21, scope: !2740)
!2752 = !{!"1674"}
!2753 = !{!"1675"}
!2754 = !DILocation(line: 278, column: 5, scope: !2740)
!2755 = distinct !{!2755, !2742, !2756, !517}
!2756 = !DILocation(line: 278, column: 41, scope: !2734)
!2757 = !{!"1676"}
!2758 = !DILocation(line: 279, column: 15, scope: !2423)
!2759 = !{!"1677"}
!2760 = !DILocation(line: 279, column: 19, scope: !2423)
!2761 = !{!"1678"}
!2762 = !DILocation(line: 279, column: 23, scope: !2423)
!2763 = !{!"1679"}
!2764 = !DILocation(line: 279, column: 5, scope: !2423)
!2765 = !{!"1680"}
!2766 = !DILocation(line: 280, column: 15, scope: !2423)
!2767 = !{!"1681"}
!2768 = !DILocation(line: 280, column: 19, scope: !2423)
!2769 = !{!"1682"}
!2770 = !DILocation(line: 280, column: 5, scope: !2423)
!2771 = !{!"1683"}
!2772 = !DILocation(line: 281, column: 18, scope: !2423)
!2773 = !{!"1684"}
!2774 = !DILocation(line: 281, column: 22, scope: !2423)
!2775 = !{!"1685"}
!2776 = !DILocation(line: 281, column: 5, scope: !2423)
!2777 = !{!"1686"}
!2778 = !DILocation(line: 282, column: 15, scope: !2423)
!2779 = !{!"1687"}
!2780 = !DILocation(line: 282, column: 19, scope: !2423)
!2781 = !{!"1688"}
!2782 = !DILocation(line: 282, column: 5, scope: !2423)
!2783 = !{!"1689"}
!2784 = !DILocation(line: 283, column: 15, scope: !2423)
!2785 = !{!"1690"}
!2786 = !DILocation(line: 283, column: 19, scope: !2423)
!2787 = !{!"1691"}
!2788 = !DILocation(line: 283, column: 5, scope: !2423)
!2789 = !{!"1692"}
!2790 = !DILocation(line: 284, column: 18, scope: !2423)
!2791 = !{!"1693"}
!2792 = !DILocation(line: 284, column: 5, scope: !2423)
!2793 = !{!"1694"}
!2794 = !DILocation(line: 285, column: 1, scope: !2423)
!2795 = !{!"1695"}
!2796 = distinct !DISubprogram(name: "subtract", scope: !41, file: !41, line: 304, type: !2360, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2797 = !DILocalVariable(name: "a", arg: 1, scope: !2796, file: !41, line: 304, type: !14)
!2798 = !DILocation(line: 0, scope: !2796)
!2799 = !{!"1696"}
!2800 = !DILocalVariable(name: "b", arg: 2, scope: !2796, file: !41, line: 304, type: !14)
!2801 = !{!"1697"}
!2802 = !DILocalVariable(name: "c", arg: 3, scope: !2796, file: !41, line: 304, type: !14)
!2803 = !{!"1698"}
!2804 = !DILocalVariable(name: "nwords", arg: 4, scope: !2796, file: !41, line: 304, type: !12)
!2805 = !{!"1699"}
!2806 = !DILocalVariable(name: "borrow", scope: !2796, file: !41, line: 307, type: !12)
!2807 = !{!"1700"}
!2808 = !DILocalVariable(name: "i", scope: !2796, file: !41, line: 306, type: !12)
!2809 = !{!"1701"}
!2810 = !DILocation(line: 309, column: 10, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2796, file: !41, line: 309, column: 5)
!2812 = !{!"1702"}
!2813 = !DILocation(line: 0, scope: !2811)
!2814 = !{!"1703"}
!2815 = !{!"1704"}
!2816 = !{!"1705"}
!2817 = !{!"1706"}
!2818 = !DILocation(line: 309, column: 19, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2811, file: !41, line: 309, column: 5)
!2820 = !{!"1707"}
!2821 = !DILocation(line: 309, column: 5, scope: !2811)
!2822 = !{!"1708"}
!2823 = !DILocation(line: 310, column: 9, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !41, line: 310, column: 9)
!2825 = distinct !DILexicalBlock(scope: !2819, file: !41, line: 309, column: 34)
!2826 = !{!"1709"}
!2827 = !{!"1710"}
!2828 = !{!"1711"}
!2829 = !{!"1712"}
!2830 = !{!"1713"}
!2831 = !{!"1714"}
!2832 = !{!"1715"}
!2833 = !DILocalVariable(name: "tempReg", scope: !2824, file: !41, line: 310, type: !6)
!2834 = !DILocation(line: 0, scope: !2824)
!2835 = !{!"1716"}
!2836 = !{!"1717"}
!2837 = !{!"1718"}
!2838 = !{!"1719"}
!2839 = !{!"1720"}
!2840 = !{!"1721"}
!2841 = !{!"1722"}
!2842 = !{!"1723"}
!2843 = !{!"1724"}
!2844 = !{!"1725"}
!2845 = !{!"1726"}
!2846 = !DILocalVariable(name: "borrowReg", scope: !2824, file: !41, line: 310, type: !12)
!2847 = !{!"1727"}
!2848 = !{!"1728"}
!2849 = !{!"1729"}
!2850 = !{!"1730"}
!2851 = !{!"1731"}
!2852 = !{!"1732"}
!2853 = !DILocation(line: 311, column: 5, scope: !2825)
!2854 = !{!"1733"}
!2855 = !DILocation(line: 309, column: 30, scope: !2819)
!2856 = !{!"1734"}
!2857 = !{!"1735"}
!2858 = !DILocation(line: 309, column: 5, scope: !2819)
!2859 = distinct !{!2859, !2821, !2860, !517}
!2860 = !DILocation(line: 311, column: 5, scope: !2811)
!2861 = !{!"1736"}
!2862 = !DILocation(line: 313, column: 5, scope: !2796)
!2863 = !{!"1737"}
!2864 = distinct !DISubprogram(name: "Montgomery_multiply", scope: !41, file: !41, line: 320, type: !2865, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !14, !14, !14, !14}
!2867 = !{!"1738"}
!2868 = !{!"1739"}
!2869 = !{!"1740"}
!2870 = !DILocalVariable(name: "ma", arg: 1, scope: !2864, file: !41, line: 320, type: !14)
!2871 = !DILocation(line: 0, scope: !2864)
!2872 = !{!"1741"}
!2873 = !DILocalVariable(name: "mb", arg: 2, scope: !2864, file: !41, line: 320, type: !14)
!2874 = !{!"1742"}
!2875 = !DILocalVariable(name: "mc", arg: 3, scope: !2864, file: !41, line: 320, type: !14)
!2876 = !{!"1743"}
!2877 = !DILocalVariable(name: "modulus", arg: 4, scope: !2864, file: !41, line: 320, type: !14)
!2878 = !{!"1744"}
!2879 = !DILocalVariable(name: "P", scope: !2864, file: !41, line: 325, type: !2880)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !2881)
!2881 = !{!2882}
!2882 = !DISubrange(count: 16)
!2883 = !DILocation(line: 325, column: 19, scope: !2864)
!2884 = !{!"1745"}
!2885 = !DILocalVariable(name: "Q", scope: !2864, file: !41, line: 325, type: !2880)
!2886 = !DILocation(line: 325, column: 38, scope: !2864)
!2887 = !{!"1746"}
!2888 = !DILocalVariable(name: "temp", scope: !2864, file: !41, line: 325, type: !2880)
!2889 = !DILocation(line: 325, column: 57, scope: !2864)
!2890 = !{!"1747"}
!2891 = !DILocalVariable(name: "cout", scope: !2864, file: !41, line: 326, type: !12)
!2892 = !{!"1748"}
!2893 = !DILocalVariable(name: "bout", scope: !2864, file: !41, line: 326, type: !12)
!2894 = !{!"1749"}
!2895 = !DILocation(line: 328, column: 22, scope: !2864)
!2896 = !{!"1750"}
!2897 = !DILocation(line: 328, column: 5, scope: !2864)
!2898 = !{!"1751"}
!2899 = !DILocation(line: 329, column: 14, scope: !2864)
!2900 = !{!"1752"}
!2901 = !DILocation(line: 329, column: 47, scope: !2864)
!2902 = !{!"1753"}
!2903 = !DILocation(line: 329, column: 5, scope: !2864)
!2904 = !{!"1754"}
!2905 = !DILocation(line: 330, column: 14, scope: !2864)
!2906 = !{!"1755"}
!2907 = !DILocation(line: 330, column: 26, scope: !2864)
!2908 = !{!"1756"}
!2909 = !DILocation(line: 330, column: 5, scope: !2864)
!2910 = !{!"1757"}
!2911 = !DILocation(line: 331, column: 16, scope: !2864)
!2912 = !{!"1758"}
!2913 = !DILocation(line: 331, column: 19, scope: !2864)
!2914 = !{!"1759"}
!2915 = !DILocation(line: 331, column: 25, scope: !2864)
!2916 = !{!"1760"}
!2917 = !DILocation(line: 331, column: 12, scope: !2864)
!2918 = !{!"1761"}
!2919 = !{!"1762"}
!2920 = !DILocalVariable(name: "i", scope: !2864, file: !41, line: 324, type: !12)
!2921 = !{!"1763"}
!2922 = !DILocation(line: 333, column: 10, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2864, file: !41, line: 333, column: 5)
!2924 = !{!"1764"}
!2925 = !DILocation(line: 0, scope: !2923)
!2926 = !{!"1765"}
!2927 = !{!"1766"}
!2928 = !DILocation(line: 333, column: 19, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2923, file: !41, line: 333, column: 5)
!2930 = !{!"1767"}
!2931 = !DILocation(line: 333, column: 5, scope: !2923)
!2932 = !{!"1768"}
!2933 = !DILocation(line: 334, column: 35, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !41, line: 333, column: 40)
!2935 = !{!"1769"}
!2936 = !DILocation(line: 334, column: 17, scope: !2934)
!2937 = !{!"1770"}
!2938 = !{!"1771"}
!2939 = !{!"1772"}
!2940 = !DILocation(line: 334, column: 9, scope: !2934)
!2941 = !{!"1773"}
!2942 = !{!"1774"}
!2943 = !DILocation(line: 334, column: 15, scope: !2934)
!2944 = !{!"1775"}
!2945 = !DILocation(line: 335, column: 5, scope: !2934)
!2946 = !{!"1776"}
!2947 = !DILocation(line: 333, column: 36, scope: !2929)
!2948 = !{!"1777"}
!2949 = !{!"1778"}
!2950 = !DILocation(line: 333, column: 5, scope: !2929)
!2951 = distinct !{!2951, !2931, !2952, !517}
!2952 = !DILocation(line: 335, column: 5, scope: !2923)
!2953 = !{!"1779"}
!2954 = !DILocation(line: 338, column: 12, scope: !2864)
!2955 = !{!"1780"}
!2956 = !{!"1781"}
!2957 = !DILocation(line: 339, column: 26, scope: !2864)
!2958 = !{!"1782"}
!2959 = !DILocalVariable(name: "mask", scope: !2864, file: !41, line: 325, type: !6)
!2960 = !{!"1783"}
!2961 = !{!"1784"}
!2962 = !DILocation(line: 341, column: 10, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2864, file: !41, line: 341, column: 5)
!2964 = !{!"1785"}
!2965 = !DILocation(line: 0, scope: !2963)
!2966 = !{!"1786"}
!2967 = !{!"1787"}
!2968 = !DILocation(line: 341, column: 19, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2963, file: !41, line: 341, column: 5)
!2970 = !{!"1788"}
!2971 = !DILocation(line: 341, column: 5, scope: !2963)
!2972 = !{!"1789"}
!2973 = !DILocation(line: 342, column: 20, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !41, line: 341, column: 40)
!2975 = !{!"1790"}
!2976 = !{!"1791"}
!2977 = !{!"1792"}
!2978 = !DILocation(line: 342, column: 31, scope: !2974)
!2979 = !{!"1793"}
!2980 = !DILocation(line: 342, column: 9, scope: !2974)
!2981 = !{!"1794"}
!2982 = !{!"1795"}
!2983 = !DILocation(line: 342, column: 17, scope: !2974)
!2984 = !{!"1796"}
!2985 = !DILocation(line: 343, column: 5, scope: !2974)
!2986 = !{!"1797"}
!2987 = !DILocation(line: 341, column: 36, scope: !2969)
!2988 = !{!"1798"}
!2989 = !{!"1799"}
!2990 = !DILocation(line: 341, column: 5, scope: !2969)
!2991 = distinct !{!2991, !2971, !2992, !517}
!2992 = !DILocation(line: 343, column: 5, scope: !2963)
!2993 = !{!"1800"}
!2994 = !DILocation(line: 344, column: 13, scope: !2864)
!2995 = !{!"1801"}
!2996 = !DILocation(line: 344, column: 5, scope: !2864)
!2997 = !{!"1802"}
!2998 = !DILocation(line: 346, column: 5, scope: !2864)
!2999 = !{!"1803"}
!3000 = distinct !DISubprogram(name: "multiply", scope: !41, file: !41, line: 290, type: !1720, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3001 = !DILocalVariable(name: "a", arg: 1, scope: !3000, file: !41, line: 290, type: !14)
!3002 = !DILocation(line: 0, scope: !3000)
!3003 = !{!"1804"}
!3004 = !DILocalVariable(name: "b", arg: 2, scope: !3000, file: !41, line: 290, type: !14)
!3005 = !{!"1805"}
!3006 = !DILocalVariable(name: "c", arg: 3, scope: !3000, file: !41, line: 290, type: !14)
!3007 = !{!"1806"}
!3008 = !DILocation(line: 293, column: 5, scope: !3000)
!3009 = !{!"1807"}
!3010 = !DILocation(line: 294, column: 1, scope: !3000)
!3011 = !{!"1808"}
!3012 = distinct !DISubprogram(name: "add", scope: !41, file: !41, line: 297, type: !2360, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3013 = !DILocalVariable(name: "a", arg: 1, scope: !3012, file: !41, line: 297, type: !14)
!3014 = !DILocation(line: 0, scope: !3012)
!3015 = !{!"1809"}
!3016 = !DILocalVariable(name: "b", arg: 2, scope: !3012, file: !41, line: 297, type: !14)
!3017 = !{!"1810"}
!3018 = !DILocalVariable(name: "c", arg: 3, scope: !3012, file: !41, line: 297, type: !14)
!3019 = !{!"1811"}
!3020 = !DILocalVariable(name: "nwords", arg: 4, scope: !3012, file: !41, line: 297, type: !12)
!3021 = !{!"1812"}
!3022 = !DILocation(line: 300, column: 12, scope: !3012)
!3023 = !{!"1813"}
!3024 = !DILocation(line: 300, column: 5, scope: !3012)
!3025 = !{!"1814"}
!3026 = distinct !DISubprogram(name: "modulo_order", scope: !41, file: !41, line: 350, type: !3027, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !14, !14, !3029}
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCurveStruct", file: !7, line: 229, baseType: !3030)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 218, size: 1536, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3037, !3038, !3039, !3040, !3041, !3042}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !3031, file: !7, line: 220, baseType: !12, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "rbits", scope: !3031, file: !7, line: 221, baseType: !12, size: 32, offset: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !3031, file: !7, line: 222, baseType: !3036, size: 128, offset: 64)
!3036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3031, file: !7, line: 223, baseType: !45, size: 256, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3031, file: !7, line: 224, baseType: !45, size: 256, offset: 448)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !3031, file: !7, line: 225, baseType: !45, size: 256, offset: 704)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "generator_x", scope: !3031, file: !7, line: 226, baseType: !45, size: 256, offset: 960)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "generator_y", scope: !3031, file: !7, line: 227, baseType: !45, size: 256, offset: 1216)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cofactor", scope: !3031, file: !7, line: 228, baseType: !12, size: 32, offset: 1472)
!3043 = !{!"1815"}
!3044 = !{!"1816"}
!3045 = !DILocalVariable(name: "a", arg: 1, scope: !3026, file: !41, line: 350, type: !14)
!3046 = !DILocation(line: 0, scope: !3026)
!3047 = !{!"1817"}
!3048 = !DILocalVariable(name: "c", arg: 2, scope: !3026, file: !41, line: 350, type: !14)
!3049 = !{!"1818"}
!3050 = !DILocalVariable(name: "curve", arg: 3, scope: !3026, file: !41, line: 350, type: !3029)
!3051 = !{!"1819"}
!3052 = !DILocalVariable(name: "ma", scope: !3026, file: !41, line: 354, type: !3053)
!3053 = !DIDerivedType(tag: DW_TAG_typedef, name: "digit256_t", file: !7, line: 203, baseType: !1736)
!3054 = !DILocation(line: 354, column: 16, scope: !3026)
!3055 = !{!"1820"}
!3056 = !DILocalVariable(name: "one", scope: !3026, file: !41, line: 354, type: !3053)
!3057 = !DILocation(line: 354, column: 20, scope: !3026)
!3058 = !{!"1821"}
!3059 = !{!"1822"}
!3060 = !{!"1823"}
!3061 = !DILocation(line: 356, column: 5, scope: !3026)
!3062 = !{!"1824"}
!3063 = !DILocation(line: 356, column: 12, scope: !3026)
!3064 = !{!"1825"}
!3065 = !DILocation(line: 357, column: 58, scope: !3026)
!3066 = !{!"1826"}
!3067 = !DILocation(line: 357, column: 80, scope: !3026)
!3068 = !{!"1827"}
!3069 = !DILocation(line: 357, column: 62, scope: !3026)
!3070 = !{!"1828"}
!3071 = !DILocation(line: 357, column: 5, scope: !3026)
!3072 = !{!"1829"}
!3073 = !DILocation(line: 358, column: 25, scope: !3026)
!3074 = !{!"1830"}
!3075 = !DILocation(line: 358, column: 29, scope: !3026)
!3076 = !{!"1831"}
!3077 = !DILocation(line: 358, column: 55, scope: !3026)
!3078 = !{!"1832"}
!3079 = !DILocation(line: 358, column: 37, scope: !3026)
!3080 = !{!"1833"}
!3081 = !DILocation(line: 358, column: 5, scope: !3026)
!3082 = !{!"1834"}
!3083 = !DILocation(line: 359, column: 1, scope: !3026)
!3084 = !{!"1835"}
!3085 = distinct !DISubprogram(name: "conversion_to_odd", scope: !41, file: !41, line: 362, type: !3027, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3086 = !DILocalVariable(name: "k", arg: 1, scope: !3085, file: !41, line: 362, type: !14)
!3087 = !DILocation(line: 0, scope: !3085)
!3088 = !{!"1836"}
!3089 = !DILocalVariable(name: "k_odd", arg: 2, scope: !3085, file: !41, line: 362, type: !14)
!3090 = !{!"1837"}
!3091 = !DILocalVariable(name: "curve", arg: 3, scope: !3085, file: !41, line: 362, type: !3029)
!3092 = !{!"1838"}
!3093 = !DILocation(line: 365, column: 39, scope: !3085)
!3094 = !{!"1839"}
!3095 = !DILocation(line: 365, column: 32, scope: !3085)
!3096 = !{!"1840"}
!3097 = !DILocation(line: 365, column: 22, scope: !3085)
!3098 = !{!"1841"}
!3099 = !DILocalVariable(name: "order", scope: !3085, file: !41, line: 365, type: !14)
!3100 = !{!"1842"}
!3101 = !DILocalVariable(name: "carry", scope: !3085, file: !41, line: 366, type: !12)
!3102 = !{!"1843"}
!3103 = !DILocation(line: 368, column: 19, scope: !3085)
!3104 = !{!"1844"}
!3105 = !{!"1845"}
!3106 = !DILocation(line: 368, column: 24, scope: !3085)
!3107 = !{!"1846"}
!3108 = !DILocation(line: 368, column: 16, scope: !3085)
!3109 = !{!"1847"}
!3110 = !DILocation(line: 368, column: 12, scope: !3085)
!3111 = !{!"1848"}
!3112 = !DILocalVariable(name: "mask", scope: !3085, file: !41, line: 364, type: !6)
!3113 = !{!"1849"}
!3114 = !DILocalVariable(name: "i", scope: !3085, file: !41, line: 366, type: !12)
!3115 = !{!"1850"}
!3116 = !DILocation(line: 370, column: 10, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3085, file: !41, line: 370, column: 5)
!3118 = !{!"1851"}
!3119 = !DILocation(line: 0, scope: !3117)
!3120 = !{!"1852"}
!3121 = !{!"1853"}
!3122 = !{!"1854"}
!3123 = !{!"1855"}
!3124 = !DILocation(line: 370, column: 19, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3117, file: !41, line: 370, column: 5)
!3126 = !{!"1856"}
!3127 = !DILocation(line: 370, column: 5, scope: !3117)
!3128 = !{!"1857"}
!3129 = !DILocation(line: 371, column: 9, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !41, line: 371, column: 9)
!3131 = distinct !DILexicalBlock(scope: !3125, file: !41, line: 370, column: 40)
!3132 = !{!"1858"}
!3133 = !{!"1859"}
!3134 = !{!"1860"}
!3135 = !{!"1861"}
!3136 = !{!"1862"}
!3137 = !DILocalVariable(name: "tempReg", scope: !3130, file: !41, line: 371, type: !6)
!3138 = !DILocation(line: 0, scope: !3130)
!3139 = !{!"1863"}
!3140 = !{!"1864"}
!3141 = !{!"1865"}
!3142 = !{!"1866"}
!3143 = !{!"1867"}
!3144 = !{!"1868"}
!3145 = !{!"1869"}
!3146 = !{!"1870"}
!3147 = !{!"1871"}
!3148 = !{!"1872"}
!3149 = !{!"1873"}
!3150 = !{!"1874"}
!3151 = !{!"1875"}
!3152 = !{!"1876"}
!3153 = !{!"1877"}
!3154 = !DILocation(line: 372, column: 5, scope: !3131)
!3155 = !{!"1878"}
!3156 = !DILocation(line: 370, column: 36, scope: !3125)
!3157 = !{!"1879"}
!3158 = !{!"1880"}
!3159 = !DILocation(line: 370, column: 5, scope: !3125)
!3160 = distinct !{!3160, !3127, !3161, !517}
!3161 = !DILocation(line: 372, column: 5, scope: !3117)
!3162 = !{!"1881"}
!3163 = !DILocation(line: 373, column: 1, scope: !3085)
!3164 = !{!"1882"}
!3165 = distinct !DISubprogram(name: "fpcopy1271", scope: !41, file: !41, line: 87, type: !2032, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3166 = !DILocalVariable(name: "a", arg: 1, scope: !3165, file: !41, line: 87, type: !14)
!3167 = !DILocation(line: 0, scope: !3165)
!3168 = !{!"1883"}
!3169 = !DILocalVariable(name: "c", arg: 2, scope: !3165, file: !41, line: 87, type: !14)
!3170 = !{!"1884"}
!3171 = !DILocalVariable(name: "i", scope: !3165, file: !41, line: 89, type: !12)
!3172 = !{!"1885"}
!3173 = !DILocation(line: 91, column: 10, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3165, file: !41, line: 91, column: 5)
!3175 = !{!"1886"}
!3176 = !DILocation(line: 0, scope: !3174)
!3177 = !{!"1887"}
!3178 = !{!"1888"}
!3179 = !DILocation(line: 91, column: 19, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3174, file: !41, line: 91, column: 5)
!3181 = !{!"1889"}
!3182 = !DILocation(line: 91, column: 5, scope: !3174)
!3183 = !{!"1890"}
!3184 = !DILocation(line: 92, column: 16, scope: !3180)
!3185 = !{!"1891"}
!3186 = !{!"1892"}
!3187 = !{!"1893"}
!3188 = !DILocation(line: 92, column: 9, scope: !3180)
!3189 = !{!"1894"}
!3190 = !{!"1895"}
!3191 = !DILocation(line: 92, column: 14, scope: !3180)
!3192 = !{!"1896"}
!3193 = !{!"1897"}
!3194 = !DILocation(line: 91, column: 36, scope: !3180)
!3195 = !{!"1898"}
!3196 = !{!"1899"}
!3197 = !DILocation(line: 91, column: 5, scope: !3180)
!3198 = distinct !{!3198, !3182, !3199, !517}
!3199 = !DILocation(line: 92, column: 19, scope: !3174)
!3200 = !{!"1900"}
!3201 = !DILocation(line: 93, column: 1, scope: !3165)
!3202 = !{!"1901"}
!3203 = distinct !DISubprogram(name: "fp2zero1271", scope: !864, file: !864, line: 57, type: !3204, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !15}
!3206 = !DILocalVariable(name: "a", arg: 1, scope: !3203, file: !864, line: 57, type: !15)
!3207 = !DILocation(line: 0, scope: !3203)
!3208 = !{!"1902"}
!3209 = !DILocation(line: 59, column: 16, scope: !3203)
!3210 = !{!"1903"}
!3211 = !{!"1904"}
!3212 = !DILocation(line: 59, column: 5, scope: !3203)
!3213 = !{!"1905"}
!3214 = !DILocation(line: 60, column: 16, scope: !3203)
!3215 = !{!"1906"}
!3216 = !{!"1907"}
!3217 = !DILocation(line: 60, column: 5, scope: !3203)
!3218 = !{!"1908"}
!3219 = !DILocation(line: 61, column: 1, scope: !3203)
!3220 = !{!"1909"}
!3221 = distinct !DISubprogram(name: "fpzero1271", scope: !41, file: !41, line: 96, type: !2044, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3222 = !DILocalVariable(name: "a", arg: 1, scope: !3221, file: !41, line: 96, type: !14)
!3223 = !DILocation(line: 0, scope: !3221)
!3224 = !{!"1910"}
!3225 = !DILocalVariable(name: "i", scope: !3221, file: !41, line: 98, type: !12)
!3226 = !{!"1911"}
!3227 = !DILocation(line: 100, column: 10, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3221, file: !41, line: 100, column: 5)
!3229 = !{!"1912"}
!3230 = !DILocation(line: 0, scope: !3228)
!3231 = !{!"1913"}
!3232 = !{!"1914"}
!3233 = !DILocation(line: 100, column: 19, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3228, file: !41, line: 100, column: 5)
!3235 = !{!"1915"}
!3236 = !DILocation(line: 100, column: 5, scope: !3228)
!3237 = !{!"1916"}
!3238 = !DILocation(line: 101, column: 9, scope: !3234)
!3239 = !{!"1917"}
!3240 = !{!"1918"}
!3241 = !DILocation(line: 101, column: 14, scope: !3234)
!3242 = !{!"1919"}
!3243 = !{!"1920"}
!3244 = !DILocation(line: 100, column: 36, scope: !3234)
!3245 = !{!"1921"}
!3246 = !{!"1922"}
!3247 = !DILocation(line: 100, column: 5, scope: !3234)
!3248 = distinct !{!3248, !3236, !3249, !517}
!3249 = !DILocation(line: 101, column: 16, scope: !3228)
!3250 = !{!"1923"}
!3251 = !DILocation(line: 102, column: 1, scope: !3221)
!3252 = !{!"1924"}
!3253 = distinct !DISubprogram(name: "fp2neg1271", scope: !864, file: !864, line: 64, type: !3204, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3254 = !DILocalVariable(name: "a", arg: 1, scope: !3253, file: !864, line: 64, type: !15)
!3255 = !DILocation(line: 0, scope: !3253)
!3256 = !{!"1925"}
!3257 = !DILocation(line: 66, column: 15, scope: !3253)
!3258 = !{!"1926"}
!3259 = !{!"1927"}
!3260 = !DILocation(line: 66, column: 5, scope: !3253)
!3261 = !{!"1928"}
!3262 = !DILocation(line: 67, column: 15, scope: !3253)
!3263 = !{!"1929"}
!3264 = !{!"1930"}
!3265 = !DILocation(line: 67, column: 5, scope: !3253)
!3266 = !{!"1931"}
!3267 = !DILocation(line: 68, column: 1, scope: !3253)
!3268 = !{!"1932"}
!3269 = distinct !DISubprogram(name: "fp2sqr1271", scope: !864, file: !864, line: 71, type: !865, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3270 = !{!"1933"}
!3271 = !{!"1934"}
!3272 = !{!"1935"}
!3273 = !DILocalVariable(name: "a", arg: 1, scope: !3269, file: !864, line: 71, type: !15)
!3274 = !DILocation(line: 0, scope: !3269)
!3275 = !{!"1936"}
!3276 = !DILocalVariable(name: "c", arg: 2, scope: !3269, file: !864, line: 71, type: !15)
!3277 = !{!"1937"}
!3278 = !DILocalVariable(name: "t1", scope: !3269, file: !864, line: 77, type: !16)
!3279 = !DILocation(line: 77, column: 12, scope: !3269)
!3280 = !{!"1938"}
!3281 = !DILocalVariable(name: "t2", scope: !3269, file: !864, line: 77, type: !16)
!3282 = !DILocation(line: 77, column: 16, scope: !3269)
!3283 = !{!"1939"}
!3284 = !DILocalVariable(name: "t3", scope: !3269, file: !864, line: 77, type: !16)
!3285 = !DILocation(line: 77, column: 20, scope: !3269)
!3286 = !{!"1940"}
!3287 = !DILocation(line: 79, column: 15, scope: !3269)
!3288 = !{!"1941"}
!3289 = !{!"1942"}
!3290 = !DILocation(line: 79, column: 21, scope: !3269)
!3291 = !{!"1943"}
!3292 = !{!"1944"}
!3293 = !DILocation(line: 79, column: 27, scope: !3269)
!3294 = !{!"1945"}
!3295 = !DILocation(line: 79, column: 5, scope: !3269)
!3296 = !{!"1946"}
!3297 = !DILocation(line: 80, column: 15, scope: !3269)
!3298 = !{!"1947"}
!3299 = !{!"1948"}
!3300 = !DILocation(line: 80, column: 21, scope: !3269)
!3301 = !{!"1949"}
!3302 = !{!"1950"}
!3303 = !DILocation(line: 80, column: 27, scope: !3269)
!3304 = !{!"1951"}
!3305 = !DILocation(line: 80, column: 5, scope: !3269)
!3306 = !{!"1952"}
!3307 = !DILocation(line: 81, column: 15, scope: !3269)
!3308 = !{!"1953"}
!3309 = !{!"1954"}
!3310 = !DILocation(line: 81, column: 21, scope: !3269)
!3311 = !{!"1955"}
!3312 = !{!"1956"}
!3313 = !DILocation(line: 81, column: 27, scope: !3269)
!3314 = !{!"1957"}
!3315 = !DILocation(line: 81, column: 5, scope: !3269)
!3316 = !{!"1958"}
!3317 = !DILocation(line: 82, column: 15, scope: !3269)
!3318 = !{!"1959"}
!3319 = !DILocation(line: 82, column: 19, scope: !3269)
!3320 = !{!"1960"}
!3321 = !DILocation(line: 82, column: 23, scope: !3269)
!3322 = !{!"1961"}
!3323 = !{!"1962"}
!3324 = !DILocation(line: 82, column: 5, scope: !3269)
!3325 = !{!"1963"}
!3326 = !DILocation(line: 83, column: 15, scope: !3269)
!3327 = !{!"1964"}
!3328 = !DILocation(line: 83, column: 19, scope: !3269)
!3329 = !{!"1965"}
!3330 = !DILocation(line: 83, column: 23, scope: !3269)
!3331 = !{!"1966"}
!3332 = !{!"1967"}
!3333 = !DILocation(line: 83, column: 5, scope: !3269)
!3334 = !{!"1968"}
!3335 = !DILocation(line: 90, column: 1, scope: !3269)
!3336 = !{!"1969"}
!3337 = distinct !DISubprogram(name: "fpadd1271", scope: !41, file: !41, line: 105, type: !1720, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3338 = !DILocalVariable(name: "a", arg: 1, scope: !3337, file: !41, line: 105, type: !14)
!3339 = !DILocation(line: 0, scope: !3337)
!3340 = !{!"1970"}
!3341 = !DILocalVariable(name: "b", arg: 2, scope: !3337, file: !41, line: 105, type: !14)
!3342 = !{!"1971"}
!3343 = !DILocalVariable(name: "c", arg: 3, scope: !3337, file: !41, line: 105, type: !14)
!3344 = !{!"1972"}
!3345 = !DILocalVariable(name: "carry", scope: !3337, file: !41, line: 108, type: !12)
!3346 = !{!"1973"}
!3347 = !DILocalVariable(name: "i", scope: !3337, file: !41, line: 107, type: !12)
!3348 = !{!"1974"}
!3349 = !DILocation(line: 110, column: 10, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3337, file: !41, line: 110, column: 5)
!3351 = !{!"1975"}
!3352 = !DILocation(line: 0, scope: !3350)
!3353 = !{!"1976"}
!3354 = !{!"1977"}
!3355 = !{!"1978"}
!3356 = !{!"1979"}
!3357 = !DILocation(line: 110, column: 19, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3350, file: !41, line: 110, column: 5)
!3359 = !{!"1980"}
!3360 = !DILocation(line: 110, column: 5, scope: !3350)
!3361 = !{!"1981"}
!3362 = !DILocation(line: 111, column: 9, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !41, line: 111, column: 9)
!3364 = distinct !DILexicalBlock(scope: !3358, file: !41, line: 110, column: 40)
!3365 = !{!"1982"}
!3366 = !{!"1983"}
!3367 = !{!"1984"}
!3368 = !{!"1985"}
!3369 = !DILocalVariable(name: "tempReg", scope: !3363, file: !41, line: 111, type: !6)
!3370 = !DILocation(line: 0, scope: !3363)
!3371 = !{!"1986"}
!3372 = !{!"1987"}
!3373 = !{!"1988"}
!3374 = !{!"1989"}
!3375 = !{!"1990"}
!3376 = !{!"1991"}
!3377 = !{!"1992"}
!3378 = !{!"1993"}
!3379 = !{!"1994"}
!3380 = !{!"1995"}
!3381 = !{!"1996"}
!3382 = !{!"1997"}
!3383 = !{!"1998"}
!3384 = !{!"1999"}
!3385 = !{!"2000"}
!3386 = !DILocation(line: 112, column: 5, scope: !3364)
!3387 = !{!"2001"}
!3388 = !DILocation(line: 110, column: 36, scope: !3358)
!3389 = !{!"2002"}
!3390 = !{!"2003"}
!3391 = !DILocation(line: 110, column: 5, scope: !3358)
!3392 = distinct !{!3392, !3360, !3393, !517}
!3393 = !DILocation(line: 112, column: 5, scope: !3350)
!3394 = !{!"2004"}
!3395 = !DILocation(line: 113, column: 28, scope: !3337)
!3396 = !{!"2005"}
!3397 = !{!"2006"}
!3398 = !DILocation(line: 113, column: 46, scope: !3337)
!3399 = !{!"2007"}
!3400 = !{!"2008"}
!3401 = !DILocation(line: 114, column: 5, scope: !3337)
!3402 = !{!"2009"}
!3403 = !DILocation(line: 114, column: 23, scope: !3337)
!3404 = !{!"2010"}
!3405 = !{!"2011"}
!3406 = !{!"2012"}
!3407 = !{!"2013"}
!3408 = !DILocation(line: 115, column: 10, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3337, file: !41, line: 115, column: 5)
!3410 = !{!"2014"}
!3411 = !DILocation(line: 0, scope: !3409)
!3412 = !{!"2015"}
!3413 = !{!"2016"}
!3414 = !{!"2017"}
!3415 = !{!"2018"}
!3416 = !DILocation(line: 115, column: 19, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3409, file: !41, line: 115, column: 5)
!3418 = !{!"2019"}
!3419 = !DILocation(line: 115, column: 5, scope: !3409)
!3420 = !{!"2020"}
!3421 = !DILocation(line: 116, column: 9, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !41, line: 116, column: 9)
!3423 = distinct !DILexicalBlock(scope: !3417, file: !41, line: 115, column: 40)
!3424 = !{!"2021"}
!3425 = !{!"2022"}
!3426 = !{!"2023"}
!3427 = !{!"2024"}
!3428 = !DILocalVariable(name: "tempReg", scope: !3422, file: !41, line: 116, type: !6)
!3429 = !DILocation(line: 0, scope: !3422)
!3430 = !{!"2025"}
!3431 = !{!"2026"}
!3432 = !{!"2027"}
!3433 = !{!"2028"}
!3434 = !{!"2029"}
!3435 = !{!"2030"}
!3436 = !{!"2031"}
!3437 = !{!"2032"}
!3438 = !{!"2033"}
!3439 = !{!"2034"}
!3440 = !{!"2035"}
!3441 = !{!"2036"}
!3442 = !DILocation(line: 117, column: 5, scope: !3423)
!3443 = !{!"2037"}
!3444 = !DILocation(line: 115, column: 36, scope: !3417)
!3445 = !{!"2038"}
!3446 = !{!"2039"}
!3447 = !DILocation(line: 115, column: 5, scope: !3417)
!3448 = distinct !{!3448, !3419, !3449, !517}
!3449 = !DILocation(line: 117, column: 5, scope: !3409)
!3450 = !{!"2040"}
!3451 = !DILocation(line: 118, column: 1, scope: !3337)
!3452 = !{!"2041"}
!3453 = distinct !DISubprogram(name: "fpsub1271", scope: !41, file: !41, line: 121, type: !1720, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3454 = !DILocalVariable(name: "a", arg: 1, scope: !3453, file: !41, line: 121, type: !14)
!3455 = !DILocation(line: 0, scope: !3453)
!3456 = !{!"2042"}
!3457 = !DILocalVariable(name: "b", arg: 2, scope: !3453, file: !41, line: 121, type: !14)
!3458 = !{!"2043"}
!3459 = !DILocalVariable(name: "c", arg: 3, scope: !3453, file: !41, line: 121, type: !14)
!3460 = !{!"2044"}
!3461 = !DILocalVariable(name: "borrow", scope: !3453, file: !41, line: 124, type: !12)
!3462 = !{!"2045"}
!3463 = !DILocalVariable(name: "i", scope: !3453, file: !41, line: 123, type: !12)
!3464 = !{!"2046"}
!3465 = !DILocation(line: 126, column: 10, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3453, file: !41, line: 126, column: 5)
!3467 = !{!"2047"}
!3468 = !DILocation(line: 0, scope: !3466)
!3469 = !{!"2048"}
!3470 = !{!"2049"}
!3471 = !{!"2050"}
!3472 = !{!"2051"}
!3473 = !DILocation(line: 126, column: 19, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3466, file: !41, line: 126, column: 5)
!3475 = !{!"2052"}
!3476 = !DILocation(line: 126, column: 5, scope: !3466)
!3477 = !{!"2053"}
!3478 = !DILocation(line: 127, column: 9, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !41, line: 127, column: 9)
!3480 = distinct !DILexicalBlock(scope: !3474, file: !41, line: 126, column: 40)
!3481 = !{!"2054"}
!3482 = !{!"2055"}
!3483 = !{!"2056"}
!3484 = !{!"2057"}
!3485 = !{!"2058"}
!3486 = !{!"2059"}
!3487 = !{!"2060"}
!3488 = !DILocalVariable(name: "tempReg", scope: !3479, file: !41, line: 127, type: !6)
!3489 = !DILocation(line: 0, scope: !3479)
!3490 = !{!"2061"}
!3491 = !{!"2062"}
!3492 = !{!"2063"}
!3493 = !{!"2064"}
!3494 = !{!"2065"}
!3495 = !{!"2066"}
!3496 = !{!"2067"}
!3497 = !{!"2068"}
!3498 = !{!"2069"}
!3499 = !{!"2070"}
!3500 = !{!"2071"}
!3501 = !DILocalVariable(name: "borrowReg", scope: !3479, file: !41, line: 127, type: !12)
!3502 = !{!"2072"}
!3503 = !{!"2073"}
!3504 = !{!"2074"}
!3505 = !{!"2075"}
!3506 = !{!"2076"}
!3507 = !{!"2077"}
!3508 = !DILocation(line: 128, column: 5, scope: !3480)
!3509 = !{!"2078"}
!3510 = !DILocation(line: 126, column: 36, scope: !3474)
!3511 = !{!"2079"}
!3512 = !{!"2080"}
!3513 = !DILocation(line: 126, column: 5, scope: !3474)
!3514 = distinct !{!3514, !3476, !3515, !517}
!3515 = !DILocation(line: 128, column: 5, scope: !3466)
!3516 = !{!"2081"}
!3517 = !DILocation(line: 129, column: 29, scope: !3453)
!3518 = !{!"2082"}
!3519 = !{!"2083"}
!3520 = !DILocation(line: 129, column: 47, scope: !3453)
!3521 = !{!"2084"}
!3522 = !{!"2085"}
!3523 = !DILocation(line: 130, column: 5, scope: !3453)
!3524 = !{!"2086"}
!3525 = !DILocation(line: 130, column: 23, scope: !3453)
!3526 = !{!"2087"}
!3527 = !{!"2088"}
!3528 = !{!"2089"}
!3529 = !{!"2090"}
!3530 = !DILocation(line: 131, column: 10, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3453, file: !41, line: 131, column: 5)
!3532 = !{!"2091"}
!3533 = !DILocation(line: 0, scope: !3531)
!3534 = !{!"2092"}
!3535 = !{!"2093"}
!3536 = !{!"2094"}
!3537 = !{!"2095"}
!3538 = !DILocation(line: 131, column: 19, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3531, file: !41, line: 131, column: 5)
!3540 = !{!"2096"}
!3541 = !DILocation(line: 131, column: 5, scope: !3531)
!3542 = !{!"2097"}
!3543 = !DILocation(line: 132, column: 9, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !41, line: 132, column: 9)
!3545 = distinct !DILexicalBlock(scope: !3539, file: !41, line: 131, column: 40)
!3546 = !{!"2098"}
!3547 = !{!"2099"}
!3548 = !{!"2100"}
!3549 = !{!"2101"}
!3550 = !DILocalVariable(name: "tempReg", scope: !3544, file: !41, line: 132, type: !6)
!3551 = !DILocation(line: 0, scope: !3544)
!3552 = !{!"2102"}
!3553 = !{!"2103"}
!3554 = !{!"2104"}
!3555 = !{!"2105"}
!3556 = !{!"2106"}
!3557 = !{!"2107"}
!3558 = !{!"2108"}
!3559 = !{!"2109"}
!3560 = !DILocalVariable(name: "borrowReg", scope: !3544, file: !41, line: 132, type: !12)
!3561 = !{!"2110"}
!3562 = !{!"2111"}
!3563 = !{!"2112"}
!3564 = !{!"2113"}
!3565 = !{!"2114"}
!3566 = !{!"2115"}
!3567 = !DILocation(line: 133, column: 5, scope: !3545)
!3568 = !{!"2116"}
!3569 = !DILocation(line: 131, column: 36, scope: !3539)
!3570 = !{!"2117"}
!3571 = !{!"2118"}
!3572 = !DILocation(line: 131, column: 5, scope: !3539)
!3573 = distinct !{!3573, !3541, !3574, !517}
!3574 = !DILocation(line: 133, column: 5, scope: !3531)
!3575 = !{!"2119"}
!3576 = !DILocation(line: 134, column: 1, scope: !3453)
!3577 = !{!"2120"}
!3578 = distinct !DISubprogram(name: "fp2mul1271", scope: !864, file: !864, line: 93, type: !3579, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !15, !15, !15}
!3581 = !{!"2121"}
!3582 = !{!"2122"}
!3583 = !{!"2123"}
!3584 = !{!"2124"}
!3585 = !DILocalVariable(name: "a", arg: 1, scope: !3578, file: !864, line: 93, type: !15)
!3586 = !DILocation(line: 0, scope: !3578)
!3587 = !{!"2125"}
!3588 = !DILocalVariable(name: "b", arg: 2, scope: !3578, file: !864, line: 93, type: !15)
!3589 = !{!"2126"}
!3590 = !DILocalVariable(name: "c", arg: 3, scope: !3578, file: !864, line: 93, type: !15)
!3591 = !{!"2127"}
!3592 = !DILocalVariable(name: "t1", scope: !3578, file: !864, line: 99, type: !16)
!3593 = !DILocation(line: 99, column: 12, scope: !3578)
!3594 = !{!"2128"}
!3595 = !DILocalVariable(name: "t2", scope: !3578, file: !864, line: 99, type: !16)
!3596 = !DILocation(line: 99, column: 16, scope: !3578)
!3597 = !{!"2129"}
!3598 = !DILocalVariable(name: "t3", scope: !3578, file: !864, line: 99, type: !16)
!3599 = !DILocation(line: 99, column: 20, scope: !3578)
!3600 = !{!"2130"}
!3601 = !DILocalVariable(name: "t4", scope: !3578, file: !864, line: 99, type: !16)
!3602 = !DILocation(line: 99, column: 24, scope: !3578)
!3603 = !{!"2131"}
!3604 = !DILocation(line: 101, column: 15, scope: !3578)
!3605 = !{!"2132"}
!3606 = !{!"2133"}
!3607 = !DILocation(line: 101, column: 21, scope: !3578)
!3608 = !{!"2134"}
!3609 = !{!"2135"}
!3610 = !DILocation(line: 101, column: 27, scope: !3578)
!3611 = !{!"2136"}
!3612 = !DILocation(line: 101, column: 5, scope: !3578)
!3613 = !{!"2137"}
!3614 = !DILocation(line: 102, column: 15, scope: !3578)
!3615 = !{!"2138"}
!3616 = !{!"2139"}
!3617 = !DILocation(line: 102, column: 21, scope: !3578)
!3618 = !{!"2140"}
!3619 = !{!"2141"}
!3620 = !DILocation(line: 102, column: 27, scope: !3578)
!3621 = !{!"2142"}
!3622 = !DILocation(line: 102, column: 5, scope: !3578)
!3623 = !{!"2143"}
!3624 = !DILocation(line: 103, column: 15, scope: !3578)
!3625 = !{!"2144"}
!3626 = !{!"2145"}
!3627 = !DILocation(line: 103, column: 21, scope: !3578)
!3628 = !{!"2146"}
!3629 = !{!"2147"}
!3630 = !DILocation(line: 103, column: 27, scope: !3578)
!3631 = !{!"2148"}
!3632 = !DILocation(line: 103, column: 5, scope: !3578)
!3633 = !{!"2149"}
!3634 = !DILocation(line: 104, column: 15, scope: !3578)
!3635 = !{!"2150"}
!3636 = !{!"2151"}
!3637 = !DILocation(line: 104, column: 21, scope: !3578)
!3638 = !{!"2152"}
!3639 = !{!"2153"}
!3640 = !DILocation(line: 104, column: 27, scope: !3578)
!3641 = !{!"2154"}
!3642 = !DILocation(line: 104, column: 5, scope: !3578)
!3643 = !{!"2155"}
!3644 = !DILocation(line: 105, column: 15, scope: !3578)
!3645 = !{!"2156"}
!3646 = !DILocation(line: 105, column: 19, scope: !3578)
!3647 = !{!"2157"}
!3648 = !DILocation(line: 105, column: 23, scope: !3578)
!3649 = !{!"2158"}
!3650 = !{!"2159"}
!3651 = !DILocation(line: 105, column: 5, scope: !3578)
!3652 = !{!"2160"}
!3653 = !DILocation(line: 106, column: 15, scope: !3578)
!3654 = !{!"2161"}
!3655 = !DILocation(line: 106, column: 19, scope: !3578)
!3656 = !{!"2162"}
!3657 = !DILocation(line: 106, column: 23, scope: !3578)
!3658 = !{!"2163"}
!3659 = !DILocation(line: 106, column: 5, scope: !3578)
!3660 = !{!"2164"}
!3661 = !DILocation(line: 107, column: 15, scope: !3578)
!3662 = !{!"2165"}
!3663 = !DILocation(line: 107, column: 19, scope: !3578)
!3664 = !{!"2166"}
!3665 = !DILocation(line: 107, column: 23, scope: !3578)
!3666 = !{!"2167"}
!3667 = !DILocation(line: 107, column: 5, scope: !3578)
!3668 = !{!"2168"}
!3669 = !DILocation(line: 108, column: 15, scope: !3578)
!3670 = !{!"2169"}
!3671 = !DILocation(line: 108, column: 19, scope: !3578)
!3672 = !{!"2170"}
!3673 = !DILocation(line: 108, column: 23, scope: !3578)
!3674 = !{!"2171"}
!3675 = !{!"2172"}
!3676 = !DILocation(line: 108, column: 5, scope: !3578)
!3677 = !{!"2173"}
!3678 = !DILocation(line: 116, column: 1, scope: !3578)
!3679 = !{!"2174"}
!3680 = distinct !DISubprogram(name: "fp2inv1271", scope: !864, file: !864, line: 145, type: !3204, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3681 = !{!"2175"}
!3682 = !DILocalVariable(name: "a", arg: 1, scope: !3680, file: !864, line: 145, type: !15)
!3683 = !DILocation(line: 0, scope: !3680)
!3684 = !{!"2176"}
!3685 = !DILocalVariable(name: "t1", scope: !3680, file: !864, line: 147, type: !30)
!3686 = !DILocation(line: 147, column: 13, scope: !3680)
!3687 = !{!"2177"}
!3688 = !DILocation(line: 149, column: 15, scope: !3680)
!3689 = !{!"2178"}
!3690 = !{!"2179"}
!3691 = !DILocation(line: 149, column: 21, scope: !3680)
!3692 = !{!"2180"}
!3693 = !{!"2181"}
!3694 = !DILocation(line: 149, column: 5, scope: !3680)
!3695 = !{!"2182"}
!3696 = !DILocation(line: 150, column: 15, scope: !3680)
!3697 = !{!"2183"}
!3698 = !{!"2184"}
!3699 = !DILocation(line: 150, column: 21, scope: !3680)
!3700 = !{!"2185"}
!3701 = !{!"2186"}
!3702 = !DILocation(line: 150, column: 5, scope: !3680)
!3703 = !{!"2187"}
!3704 = !DILocation(line: 151, column: 15, scope: !3680)
!3705 = !{!"2188"}
!3706 = !{!"2189"}
!3707 = !DILocation(line: 151, column: 22, scope: !3680)
!3708 = !{!"2190"}
!3709 = !{!"2191"}
!3710 = !DILocation(line: 151, column: 29, scope: !3680)
!3711 = !{!"2192"}
!3712 = !{!"2193"}
!3713 = !DILocation(line: 151, column: 5, scope: !3680)
!3714 = !{!"2194"}
!3715 = !DILocation(line: 152, column: 15, scope: !3680)
!3716 = !{!"2195"}
!3717 = !{!"2196"}
!3718 = !DILocation(line: 152, column: 5, scope: !3680)
!3719 = !{!"2197"}
!3720 = !DILocation(line: 153, column: 15, scope: !3680)
!3721 = !{!"2198"}
!3722 = !{!"2199"}
!3723 = !DILocation(line: 153, column: 5, scope: !3680)
!3724 = !{!"2200"}
!3725 = !DILocation(line: 154, column: 15, scope: !3680)
!3726 = !{!"2201"}
!3727 = !{!"2202"}
!3728 = !DILocation(line: 154, column: 21, scope: !3680)
!3729 = !{!"2203"}
!3730 = !{!"2204"}
!3731 = !DILocation(line: 154, column: 28, scope: !3680)
!3732 = !{!"2205"}
!3733 = !{!"2206"}
!3734 = !DILocation(line: 154, column: 5, scope: !3680)
!3735 = !{!"2207"}
!3736 = !DILocation(line: 155, column: 15, scope: !3680)
!3737 = !{!"2208"}
!3738 = !{!"2209"}
!3739 = !DILocation(line: 155, column: 21, scope: !3680)
!3740 = !{!"2210"}
!3741 = !{!"2211"}
!3742 = !DILocation(line: 155, column: 28, scope: !3680)
!3743 = !{!"2212"}
!3744 = !{!"2213"}
!3745 = !DILocation(line: 155, column: 5, scope: !3680)
!3746 = !{!"2214"}
!3747 = !DILocation(line: 159, column: 1, scope: !3680)
!3748 = !{!"2215"}
!3749 = distinct !DISubprogram(name: "eccset", scope: !864, file: !864, line: 180, type: !3750, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{null, !3752, !3029}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_affine", file: !7, line: 207, baseType: !3754)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 207, size: 512, elements: !3755)
!3755 = !{!3756, !3757}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3754, file: !7, line: 207, baseType: !30, size: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3754, file: !7, line: 207, baseType: !30, size: 256, offset: 256)
!3758 = !DILocalVariable(name: "P", arg: 1, scope: !3749, file: !864, line: 180, type: !3752)
!3759 = !DILocation(line: 0, scope: !3749)
!3760 = !{!"2216"}
!3761 = !DILocalVariable(name: "curve", arg: 2, scope: !3749, file: !864, line: 180, type: !3029)
!3762 = !{!"2217"}
!3763 = !DILocation(line: 184, column: 34, scope: !3749)
!3764 = !{!"2218"}
!3765 = !DILocation(line: 184, column: 17, scope: !3749)
!3766 = !{!"2219"}
!3767 = !DILocation(line: 184, column: 50, scope: !3749)
!3768 = !{!"2220"}
!3769 = !DILocation(line: 184, column: 47, scope: !3749)
!3770 = !{!"2221"}
!3771 = !DILocation(line: 184, column: 5, scope: !3749)
!3772 = !{!"2222"}
!3773 = !DILocation(line: 185, column: 34, scope: !3749)
!3774 = !{!"2223"}
!3775 = !DILocation(line: 185, column: 17, scope: !3749)
!3776 = !{!"2224"}
!3777 = !DILocation(line: 185, column: 50, scope: !3749)
!3778 = !{!"2225"}
!3779 = !DILocation(line: 185, column: 47, scope: !3749)
!3780 = !{!"2226"}
!3781 = !DILocation(line: 185, column: 5, scope: !3749)
!3782 = !{!"2227"}
!3783 = !DILocation(line: 186, column: 1, scope: !3749)
!3784 = !{!"2228"}
!3785 = distinct !DISubprogram(name: "eccnorm", scope: !864, file: !864, line: 189, type: !3786, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !3788, !3752}
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_extproj", file: !7, line: 209, baseType: !3790)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 209, size: 1280, elements: !3791)
!3791 = !{!3792, !3793, !3794, !3795, !3796}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3790, file: !7, line: 209, baseType: !30, size: 256)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3790, file: !7, line: 209, baseType: !30, size: 256, offset: 256)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !3790, file: !7, line: 209, baseType: !30, size: 256, offset: 512)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "ta", scope: !3790, file: !7, line: 209, baseType: !30, size: 256, offset: 768)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "tb", scope: !3790, file: !7, line: 209, baseType: !30, size: 256, offset: 1024)
!3797 = !DILocalVariable(name: "P", arg: 1, scope: !3785, file: !864, line: 189, type: !3788)
!3798 = !DILocation(line: 0, scope: !3785)
!3799 = !{!"2229"}
!3800 = !DILocalVariable(name: "Q", arg: 2, scope: !3785, file: !864, line: 189, type: !3752)
!3801 = !{!"2230"}
!3802 = !DILocation(line: 194, column: 19, scope: !3785)
!3803 = !{!"2231"}
!3804 = !DILocation(line: 194, column: 16, scope: !3785)
!3805 = !{!"2232"}
!3806 = !DILocation(line: 194, column: 5, scope: !3785)
!3807 = !{!"2233"}
!3808 = !DILocation(line: 195, column: 19, scope: !3785)
!3809 = !{!"2234"}
!3810 = !DILocation(line: 195, column: 16, scope: !3785)
!3811 = !{!"2235"}
!3812 = !DILocation(line: 195, column: 25, scope: !3785)
!3813 = !{!"2236"}
!3814 = !DILocation(line: 195, column: 22, scope: !3785)
!3815 = !{!"2237"}
!3816 = !DILocation(line: 195, column: 31, scope: !3785)
!3817 = !{!"2238"}
!3818 = !DILocation(line: 195, column: 28, scope: !3785)
!3819 = !{!"2239"}
!3820 = !DILocation(line: 195, column: 5, scope: !3785)
!3821 = !{!"2240"}
!3822 = !DILocation(line: 196, column: 19, scope: !3785)
!3823 = !{!"2241"}
!3824 = !DILocation(line: 196, column: 16, scope: !3785)
!3825 = !{!"2242"}
!3826 = !DILocation(line: 196, column: 25, scope: !3785)
!3827 = !{!"2243"}
!3828 = !DILocation(line: 196, column: 22, scope: !3785)
!3829 = !{!"2244"}
!3830 = !DILocation(line: 196, column: 31, scope: !3785)
!3831 = !{!"2245"}
!3832 = !DILocation(line: 196, column: 28, scope: !3785)
!3833 = !{!"2246"}
!3834 = !DILocation(line: 196, column: 5, scope: !3785)
!3835 = !{!"2247"}
!3836 = !DILocation(line: 197, column: 16, scope: !3785)
!3837 = !{!"2248"}
!3838 = !DILocation(line: 197, column: 13, scope: !3785)
!3839 = !{!"2249"}
!3840 = !{!"2250"}
!3841 = !DILocation(line: 197, column: 5, scope: !3785)
!3842 = !{!"2251"}
!3843 = !DILocation(line: 197, column: 34, scope: !3785)
!3844 = !{!"2252"}
!3845 = !DILocation(line: 197, column: 31, scope: !3785)
!3846 = !{!"2253"}
!3847 = !{!"2254"}
!3848 = !DILocation(line: 197, column: 23, scope: !3785)
!3849 = !{!"2255"}
!3850 = !DILocation(line: 198, column: 16, scope: !3785)
!3851 = !{!"2256"}
!3852 = !DILocation(line: 198, column: 13, scope: !3785)
!3853 = !{!"2257"}
!3854 = !{!"2258"}
!3855 = !DILocation(line: 198, column: 5, scope: !3785)
!3856 = !{!"2259"}
!3857 = !DILocation(line: 198, column: 34, scope: !3785)
!3858 = !{!"2260"}
!3859 = !DILocation(line: 198, column: 31, scope: !3785)
!3860 = !{!"2261"}
!3861 = !{!"2262"}
!3862 = !DILocation(line: 198, column: 23, scope: !3785)
!3863 = !{!"2263"}
!3864 = !DILocation(line: 199, column: 1, scope: !3785)
!3865 = !{!"2264"}
!3866 = distinct !DISubprogram(name: "R1_to_R2", scope: !864, file: !864, line: 202, type: !3867, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{null, !3788, !70, !3029}
!3869 = !DILocalVariable(name: "P", arg: 1, scope: !3866, file: !864, line: 202, type: !3788)
!3870 = !DILocation(line: 0, scope: !3866)
!3871 = !{!"2265"}
!3872 = !DILocalVariable(name: "Q", arg: 2, scope: !3866, file: !864, line: 202, type: !70)
!3873 = !{!"2266"}
!3874 = !DILocalVariable(name: "curve", arg: 3, scope: !3866, file: !864, line: 202, type: !3029)
!3875 = !{!"2267"}
!3876 = !DILocation(line: 207, column: 19, scope: !3866)
!3877 = !{!"2268"}
!3878 = !DILocation(line: 207, column: 16, scope: !3866)
!3879 = !{!"2269"}
!3880 = !DILocation(line: 207, column: 26, scope: !3866)
!3881 = !{!"2270"}
!3882 = !DILocation(line: 207, column: 23, scope: !3866)
!3883 = !{!"2271"}
!3884 = !DILocation(line: 207, column: 33, scope: !3866)
!3885 = !{!"2272"}
!3886 = !DILocation(line: 207, column: 30, scope: !3866)
!3887 = !{!"2273"}
!3888 = !DILocation(line: 207, column: 5, scope: !3866)
!3889 = !{!"2274"}
!3890 = !DILocation(line: 208, column: 19, scope: !3866)
!3891 = !{!"2275"}
!3892 = !DILocation(line: 208, column: 16, scope: !3866)
!3893 = !{!"2276"}
!3894 = !DILocation(line: 208, column: 25, scope: !3866)
!3895 = !{!"2277"}
!3896 = !DILocation(line: 208, column: 22, scope: !3866)
!3897 = !{!"2278"}
!3898 = !DILocation(line: 208, column: 31, scope: !3866)
!3899 = !{!"2279"}
!3900 = !DILocation(line: 208, column: 28, scope: !3866)
!3901 = !{!"2280"}
!3902 = !DILocation(line: 208, column: 5, scope: !3866)
!3903 = !{!"2281"}
!3904 = !DILocation(line: 209, column: 19, scope: !3866)
!3905 = !{!"2282"}
!3906 = !DILocation(line: 209, column: 16, scope: !3866)
!3907 = !{!"2283"}
!3908 = !DILocation(line: 209, column: 25, scope: !3866)
!3909 = !{!"2284"}
!3910 = !DILocation(line: 209, column: 22, scope: !3866)
!3911 = !{!"2285"}
!3912 = !DILocation(line: 209, column: 31, scope: !3866)
!3913 = !{!"2286"}
!3914 = !DILocation(line: 209, column: 28, scope: !3866)
!3915 = !{!"2287"}
!3916 = !DILocation(line: 209, column: 5, scope: !3866)
!3917 = !{!"2288"}
!3918 = !DILocation(line: 210, column: 19, scope: !3866)
!3919 = !{!"2289"}
!3920 = !DILocation(line: 210, column: 16, scope: !3866)
!3921 = !{!"2290"}
!3922 = !DILocation(line: 210, column: 26, scope: !3866)
!3923 = !{!"2291"}
!3924 = !DILocation(line: 210, column: 23, scope: !3866)
!3925 = !{!"2292"}
!3926 = !DILocation(line: 210, column: 33, scope: !3866)
!3927 = !{!"2293"}
!3928 = !DILocation(line: 210, column: 30, scope: !3866)
!3929 = !{!"2294"}
!3930 = !DILocation(line: 210, column: 5, scope: !3866)
!3931 = !{!"2295"}
!3932 = !DILocation(line: 211, column: 19, scope: !3866)
!3933 = !{!"2296"}
!3934 = !DILocation(line: 211, column: 16, scope: !3866)
!3935 = !{!"2297"}
!3936 = !DILocation(line: 211, column: 25, scope: !3866)
!3937 = !{!"2298"}
!3938 = !DILocation(line: 211, column: 22, scope: !3866)
!3939 = !{!"2299"}
!3940 = !DILocation(line: 211, column: 31, scope: !3866)
!3941 = !{!"2300"}
!3942 = !DILocation(line: 211, column: 28, scope: !3866)
!3943 = !{!"2301"}
!3944 = !DILocation(line: 211, column: 5, scope: !3866)
!3945 = !{!"2302"}
!3946 = !DILocation(line: 212, column: 19, scope: !3866)
!3947 = !{!"2303"}
!3948 = !DILocation(line: 212, column: 16, scope: !3866)
!3949 = !{!"2304"}
!3950 = !DILocation(line: 212, column: 40, scope: !3866)
!3951 = !{!"2305"}
!3952 = !DILocation(line: 212, column: 23, scope: !3866)
!3953 = !{!"2306"}
!3954 = !DILocation(line: 212, column: 46, scope: !3866)
!3955 = !{!"2307"}
!3956 = !DILocation(line: 212, column: 43, scope: !3866)
!3957 = !{!"2308"}
!3958 = !DILocation(line: 212, column: 5, scope: !3866)
!3959 = !{!"2309"}
!3960 = !DILocation(line: 213, column: 1, scope: !3866)
!3961 = !{!"2310"}
!3962 = distinct !DISubprogram(name: "R1_to_R2_ni", scope: !864, file: !864, line: 216, type: !3867, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3963 = !DILocalVariable(name: "P", arg: 1, scope: !3962, file: !864, line: 216, type: !3788)
!3964 = !DILocation(line: 0, scope: !3962)
!3965 = !{!"2311"}
!3966 = !DILocalVariable(name: "Q", arg: 2, scope: !3962, file: !864, line: 216, type: !70)
!3967 = !{!"2312"}
!3968 = !DILocalVariable(name: "curve", arg: 3, scope: !3962, file: !864, line: 216, type: !3029)
!3969 = !{!"2313"}
!3970 = !DILocation(line: 218, column: 5, scope: !3962)
!3971 = !{!"2314"}
!3972 = !DILocation(line: 219, column: 1, scope: !3962)
!3973 = !{!"2315"}
!3974 = distinct !DISubprogram(name: "R2_to_R4", scope: !864, file: !864, line: 234, type: !3975, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{null, !70, !3788}
!3977 = !DILocalVariable(name: "P", arg: 1, scope: !3974, file: !864, line: 234, type: !70)
!3978 = !DILocation(line: 0, scope: !3974)
!3979 = !{!"2316"}
!3980 = !DILocalVariable(name: "Q", arg: 2, scope: !3974, file: !864, line: 234, type: !3788)
!3981 = !{!"2317"}
!3982 = !DILocation(line: 239, column: 19, scope: !3974)
!3983 = !{!"2318"}
!3984 = !DILocation(line: 239, column: 16, scope: !3974)
!3985 = !{!"2319"}
!3986 = !DILocation(line: 239, column: 26, scope: !3974)
!3987 = !{!"2320"}
!3988 = !DILocation(line: 239, column: 23, scope: !3974)
!3989 = !{!"2321"}
!3990 = !DILocation(line: 239, column: 33, scope: !3974)
!3991 = !{!"2322"}
!3992 = !DILocation(line: 239, column: 30, scope: !3974)
!3993 = !{!"2323"}
!3994 = !DILocation(line: 239, column: 5, scope: !3974)
!3995 = !{!"2324"}
!3996 = !DILocation(line: 240, column: 19, scope: !3974)
!3997 = !{!"2325"}
!3998 = !DILocation(line: 240, column: 16, scope: !3974)
!3999 = !{!"2326"}
!4000 = !DILocation(line: 240, column: 26, scope: !3974)
!4001 = !{!"2327"}
!4002 = !DILocation(line: 240, column: 23, scope: !3974)
!4003 = !{!"2328"}
!4004 = !DILocation(line: 240, column: 33, scope: !3974)
!4005 = !{!"2329"}
!4006 = !DILocation(line: 240, column: 30, scope: !3974)
!4007 = !{!"2330"}
!4008 = !DILocation(line: 240, column: 5, scope: !3974)
!4009 = !{!"2331"}
!4010 = !DILocation(line: 241, column: 20, scope: !3974)
!4011 = !{!"2332"}
!4012 = !DILocation(line: 241, column: 17, scope: !3974)
!4013 = !{!"2333"}
!4014 = !DILocation(line: 241, column: 27, scope: !3974)
!4015 = !{!"2334"}
!4016 = !DILocation(line: 241, column: 24, scope: !3974)
!4017 = !{!"2335"}
!4018 = !DILocation(line: 241, column: 5, scope: !3974)
!4019 = !{!"2336"}
!4020 = !DILocation(line: 242, column: 1, scope: !3974)
!4021 = !{!"2337"}
!4022 = distinct !DISubprogram(name: "eccadd_ni", scope: !864, file: !864, line: 314, type: !3975, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4023 = !DILocalVariable(name: "Q", arg: 1, scope: !4022, file: !864, line: 314, type: !70)
!4024 = !DILocation(line: 0, scope: !4022)
!4025 = !{!"2338"}
!4026 = !DILocalVariable(name: "P", arg: 2, scope: !4022, file: !864, line: 314, type: !3788)
!4027 = !{!"2339"}
!4028 = !DILocation(line: 316, column: 5, scope: !4022)
!4029 = !{!"2340"}
!4030 = !DILocation(line: 317, column: 1, scope: !4022)
!4031 = !{!"2341"}
!4032 = distinct !DISubprogram(name: "eccdouble_ni", scope: !864, file: !864, line: 320, type: !4033, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null, !3788}
!4035 = !DILocalVariable(name: "P", arg: 1, scope: !4032, file: !864, line: 320, type: !3788)
!4036 = !DILocation(line: 0, scope: !4032)
!4037 = !{!"2342"}
!4038 = !DILocation(line: 322, column: 5, scope: !4032)
!4039 = !{!"2343"}
!4040 = !DILocation(line: 323, column: 1, scope: !4032)
!4041 = !{!"2344"}
!4042 = distinct !DISubprogram(name: "point_setup_ni", scope: !864, file: !864, line: 344, type: !4043, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{null, !3752, !3788}
!4045 = !DILocalVariable(name: "P", arg: 1, scope: !4042, file: !864, line: 344, type: !3752)
!4046 = !DILocation(line: 0, scope: !4042)
!4047 = !{!"2345"}
!4048 = !DILocalVariable(name: "Q", arg: 2, scope: !4042, file: !864, line: 344, type: !3788)
!4049 = !{!"2346"}
!4050 = !DILocation(line: 346, column: 5, scope: !4042)
!4051 = !{!"2347"}
!4052 = !DILocation(line: 347, column: 1, scope: !4042)
!4053 = !{!"2348"}
!4054 = distinct !DISubprogram(name: "ecc_point_validate", scope: !864, file: !864, line: 350, type: !4055, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!4057, !3788, !3029}
!4057 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!4058 = !{!"2349"}
!4059 = !{!"2350"}
!4060 = !{!"2351"}
!4061 = !DILocalVariable(name: "P", arg: 1, scope: !4054, file: !864, line: 350, type: !3788)
!4062 = !DILocation(line: 0, scope: !4054)
!4063 = !{!"2352"}
!4064 = !DILocalVariable(name: "curve", arg: 2, scope: !4054, file: !864, line: 350, type: !3029)
!4065 = !{!"2353"}
!4066 = !DILocalVariable(name: "t1", scope: !4054, file: !864, line: 355, type: !30)
!4067 = !DILocation(line: 355, column: 13, scope: !4054)
!4068 = !{!"2354"}
!4069 = !DILocalVariable(name: "t2", scope: !4054, file: !864, line: 355, type: !30)
!4070 = !DILocation(line: 355, column: 17, scope: !4054)
!4071 = !{!"2355"}
!4072 = !DILocalVariable(name: "t3", scope: !4054, file: !864, line: 355, type: !30)
!4073 = !DILocation(line: 355, column: 21, scope: !4054)
!4074 = !{!"2356"}
!4075 = !DILocation(line: 357, column: 19, scope: !4054)
!4076 = !{!"2357"}
!4077 = !DILocation(line: 357, column: 16, scope: !4054)
!4078 = !{!"2358"}
!4079 = !DILocation(line: 357, column: 22, scope: !4054)
!4080 = !{!"2359"}
!4081 = !DILocation(line: 357, column: 5, scope: !4054)
!4082 = !{!"2360"}
!4083 = !DILocation(line: 358, column: 19, scope: !4054)
!4084 = !{!"2361"}
!4085 = !DILocation(line: 358, column: 16, scope: !4054)
!4086 = !{!"2362"}
!4087 = !DILocation(line: 358, column: 22, scope: !4054)
!4088 = !{!"2363"}
!4089 = !DILocation(line: 358, column: 5, scope: !4054)
!4090 = !{!"2364"}
!4091 = !DILocation(line: 359, column: 16, scope: !4054)
!4092 = !{!"2365"}
!4093 = !DILocation(line: 359, column: 20, scope: !4054)
!4094 = !{!"2366"}
!4095 = !DILocation(line: 359, column: 24, scope: !4054)
!4096 = !{!"2367"}
!4097 = !DILocation(line: 359, column: 5, scope: !4054)
!4098 = !{!"2368"}
!4099 = !DILocation(line: 360, column: 16, scope: !4054)
!4100 = !{!"2369"}
!4101 = !DILocation(line: 360, column: 20, scope: !4054)
!4102 = !{!"2370"}
!4103 = !DILocation(line: 360, column: 24, scope: !4054)
!4104 = !{!"2371"}
!4105 = !DILocation(line: 360, column: 5, scope: !4054)
!4106 = !{!"2372"}
!4107 = !DILocation(line: 361, column: 33, scope: !4054)
!4108 = !{!"2373"}
!4109 = !DILocation(line: 361, column: 16, scope: !4054)
!4110 = !{!"2374"}
!4111 = !DILocation(line: 361, column: 36, scope: !4054)
!4112 = !{!"2375"}
!4113 = !DILocation(line: 361, column: 40, scope: !4054)
!4114 = !{!"2376"}
!4115 = !DILocation(line: 361, column: 5, scope: !4054)
!4116 = !{!"2377"}
!4117 = !DILocation(line: 362, column: 17, scope: !4054)
!4118 = !{!"2378"}
!4119 = !DILocation(line: 362, column: 5, scope: !4054)
!4120 = !{!"2379"}
!4121 = !DILocation(line: 362, column: 23, scope: !4054)
!4122 = !{!"2380"}
!4123 = !{!"2381"}
!4124 = !DILocation(line: 362, column: 32, scope: !4054)
!4125 = !{!"2382"}
!4126 = !DILocation(line: 363, column: 16, scope: !4054)
!4127 = !{!"2383"}
!4128 = !DILocation(line: 363, column: 20, scope: !4054)
!4129 = !{!"2384"}
!4130 = !DILocation(line: 363, column: 24, scope: !4054)
!4131 = !{!"2385"}
!4132 = !DILocation(line: 363, column: 5, scope: !4054)
!4133 = !{!"2386"}
!4134 = !DILocation(line: 364, column: 16, scope: !4054)
!4135 = !{!"2387"}
!4136 = !DILocation(line: 364, column: 20, scope: !4054)
!4137 = !{!"2388"}
!4138 = !DILocation(line: 364, column: 24, scope: !4054)
!4139 = !{!"2389"}
!4140 = !DILocation(line: 364, column: 5, scope: !4054)
!4141 = !{!"2390"}
!4142 = !DILocation(line: 366, column: 31, scope: !4054)
!4143 = !{!"2391"}
!4144 = !{!"2392"}
!4145 = !{!"2393"}
!4146 = !DILocation(line: 366, column: 42, scope: !4054)
!4147 = !{!"2394"}
!4148 = !{!"2395"}
!4149 = !{!"2396"}
!4150 = !DILocation(line: 366, column: 40, scope: !4054)
!4151 = !{!"2397"}
!4152 = !DILocation(line: 366, column: 14, scope: !4054)
!4153 = !{!"2398"}
!4154 = !DILocation(line: 366, column: 71, scope: !4054)
!4155 = !{!"2399"}
!4156 = !{!"2400"}
!4157 = !{!"2401"}
!4158 = !DILocation(line: 366, column: 79, scope: !4054)
!4159 = !{!"2402"}
!4160 = !DILocation(line: 366, column: 84, scope: !4054)
!4161 = !{!"2403"}
!4162 = !{!"2404"}
!4163 = !{!"2405"}
!4164 = !DILocation(line: 366, column: 92, scope: !4054)
!4165 = !{!"2406"}
!4166 = !DILocation(line: 366, column: 82, scope: !4054)
!4167 = !{!"2407"}
!4168 = !DILocation(line: 366, column: 54, scope: !4054)
!4169 = !{!"2408"}
!4170 = !DILocation(line: 366, column: 52, scope: !4054)
!4171 = !{!"2409"}
!4172 = !DILocation(line: 367, column: 31, scope: !4054)
!4173 = !{!"2410"}
!4174 = !{!"2411"}
!4175 = !{!"2412"}
!4176 = !DILocation(line: 367, column: 42, scope: !4054)
!4177 = !{!"2413"}
!4178 = !{!"2414"}
!4179 = !{!"2415"}
!4180 = !DILocation(line: 367, column: 40, scope: !4054)
!4181 = !{!"2416"}
!4182 = !DILocation(line: 367, column: 14, scope: !4054)
!4183 = !{!"2417"}
!4184 = !DILocation(line: 367, column: 71, scope: !4054)
!4185 = !{!"2418"}
!4186 = !{!"2419"}
!4187 = !{!"2420"}
!4188 = !DILocation(line: 367, column: 79, scope: !4054)
!4189 = !{!"2421"}
!4190 = !DILocation(line: 367, column: 84, scope: !4054)
!4191 = !{!"2422"}
!4192 = !{!"2423"}
!4193 = !{!"2424"}
!4194 = !DILocation(line: 367, column: 92, scope: !4054)
!4195 = !{!"2425"}
!4196 = !DILocation(line: 367, column: 82, scope: !4054)
!4197 = !{!"2426"}
!4198 = !DILocation(line: 367, column: 54, scope: !4054)
!4199 = !{!"2427"}
!4200 = !DILocation(line: 367, column: 52, scope: !4054)
!4201 = !{!"2428"}
!4202 = !DILocation(line: 366, column: 97, scope: !4054)
!4203 = !{!"2429"}
!4204 = !DILocation(line: 366, column: 12, scope: !4054)
!4205 = !{!"2430"}
!4206 = !DILocation(line: 366, column: 5, scope: !4054)
!4207 = !{!"2431"}
!4208 = distinct !DISubprogram(name: "eccmadd_ni", scope: !864, file: !864, line: 416, type: !4209, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{null, !908, !3788}
!4211 = !DILocalVariable(name: "Q", arg: 1, scope: !4208, file: !864, line: 416, type: !908)
!4212 = !DILocation(line: 0, scope: !4208)
!4213 = !{!"2432"}
!4214 = !DILocalVariable(name: "P", arg: 2, scope: !4208, file: !864, line: 416, type: !3788)
!4215 = !{!"2433"}
!4216 = !DILocation(line: 418, column: 5, scope: !4208)
!4217 = !{!"2434"}
!4218 = !DILocation(line: 419, column: 1, scope: !4208)
!4219 = !{!"2435"}
!4220 = distinct !DISubprogram(name: "eccmadd", scope: !864, file: !864, line: 387, type: !4209, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4221 = !{!"2436"}
!4222 = !{!"2437"}
!4223 = !DILocalVariable(name: "Q", arg: 1, scope: !4220, file: !864, line: 387, type: !908)
!4224 = !DILocation(line: 0, scope: !4220)
!4225 = !{!"2438"}
!4226 = !DILocalVariable(name: "P", arg: 2, scope: !4220, file: !864, line: 387, type: !3788)
!4227 = !{!"2439"}
!4228 = !DILocalVariable(name: "t1", scope: !4220, file: !864, line: 393, type: !30)
!4229 = !DILocation(line: 393, column: 13, scope: !4220)
!4230 = !{!"2440"}
!4231 = !DILocalVariable(name: "t2", scope: !4220, file: !864, line: 393, type: !30)
!4232 = !DILocation(line: 393, column: 17, scope: !4220)
!4233 = !{!"2441"}
!4234 = !DILocation(line: 395, column: 19, scope: !4220)
!4235 = !{!"2442"}
!4236 = !DILocation(line: 395, column: 16, scope: !4220)
!4237 = !{!"2443"}
!4238 = !DILocation(line: 395, column: 26, scope: !4220)
!4239 = !{!"2444"}
!4240 = !DILocation(line: 395, column: 23, scope: !4220)
!4241 = !{!"2445"}
!4242 = !DILocation(line: 395, column: 33, scope: !4220)
!4243 = !{!"2446"}
!4244 = !DILocation(line: 395, column: 30, scope: !4220)
!4245 = !{!"2447"}
!4246 = !DILocation(line: 395, column: 5, scope: !4220)
!4247 = !{!"2448"}
!4248 = !DILocation(line: 396, column: 19, scope: !4220)
!4249 = !{!"2449"}
!4250 = !DILocation(line: 396, column: 16, scope: !4220)
!4251 = !{!"2450"}
!4252 = !DILocation(line: 396, column: 25, scope: !4220)
!4253 = !{!"2451"}
!4254 = !DILocation(line: 396, column: 22, scope: !4220)
!4255 = !{!"2452"}
!4256 = !DILocation(line: 396, column: 28, scope: !4220)
!4257 = !{!"2453"}
!4258 = !DILocation(line: 396, column: 5, scope: !4220)
!4259 = !{!"2454"}
!4260 = !DILocation(line: 397, column: 19, scope: !4220)
!4261 = !{!"2455"}
!4262 = !DILocation(line: 397, column: 16, scope: !4220)
!4263 = !{!"2456"}
!4264 = !DILocation(line: 397, column: 26, scope: !4220)
!4265 = !{!"2457"}
!4266 = !DILocation(line: 397, column: 23, scope: !4220)
!4267 = !{!"2458"}
!4268 = !DILocation(line: 397, column: 33, scope: !4220)
!4269 = !{!"2459"}
!4270 = !DILocation(line: 397, column: 30, scope: !4220)
!4271 = !{!"2460"}
!4272 = !DILocation(line: 397, column: 5, scope: !4220)
!4273 = !{!"2461"}
!4274 = !DILocation(line: 398, column: 19, scope: !4220)
!4275 = !{!"2462"}
!4276 = !DILocation(line: 398, column: 16, scope: !4220)
!4277 = !{!"2463"}
!4278 = !DILocation(line: 398, column: 25, scope: !4220)
!4279 = !{!"2464"}
!4280 = !DILocation(line: 398, column: 22, scope: !4220)
!4281 = !{!"2465"}
!4282 = !DILocation(line: 398, column: 31, scope: !4220)
!4283 = !{!"2466"}
!4284 = !DILocation(line: 398, column: 28, scope: !4220)
!4285 = !{!"2467"}
!4286 = !DILocation(line: 398, column: 5, scope: !4220)
!4287 = !{!"2468"}
!4288 = !DILocation(line: 399, column: 19, scope: !4220)
!4289 = !{!"2469"}
!4290 = !DILocation(line: 399, column: 16, scope: !4220)
!4291 = !{!"2470"}
!4292 = !DILocation(line: 399, column: 25, scope: !4220)
!4293 = !{!"2471"}
!4294 = !DILocation(line: 399, column: 22, scope: !4220)
!4295 = !{!"2472"}
!4296 = !DILocation(line: 399, column: 31, scope: !4220)
!4297 = !{!"2473"}
!4298 = !DILocation(line: 399, column: 28, scope: !4220)
!4299 = !{!"2474"}
!4300 = !DILocation(line: 399, column: 5, scope: !4220)
!4301 = !{!"2475"}
!4302 = !DILocation(line: 400, column: 16, scope: !4220)
!4303 = !{!"2476"}
!4304 = !DILocation(line: 400, column: 23, scope: !4220)
!4305 = !{!"2477"}
!4306 = !DILocation(line: 400, column: 20, scope: !4220)
!4307 = !{!"2478"}
!4308 = !DILocation(line: 400, column: 27, scope: !4220)
!4309 = !{!"2479"}
!4310 = !DILocation(line: 400, column: 5, scope: !4220)
!4311 = !{!"2480"}
!4312 = !DILocation(line: 401, column: 16, scope: !4220)
!4313 = !{!"2481"}
!4314 = !DILocation(line: 401, column: 23, scope: !4220)
!4315 = !{!"2482"}
!4316 = !DILocation(line: 401, column: 20, scope: !4220)
!4317 = !{!"2483"}
!4318 = !DILocation(line: 401, column: 27, scope: !4220)
!4319 = !{!"2484"}
!4320 = !DILocation(line: 401, column: 5, scope: !4220)
!4321 = !{!"2485"}
!4322 = !DILocation(line: 402, column: 19, scope: !4220)
!4323 = !{!"2486"}
!4324 = !DILocation(line: 402, column: 16, scope: !4220)
!4325 = !{!"2487"}
!4326 = !DILocation(line: 402, column: 26, scope: !4220)
!4327 = !{!"2488"}
!4328 = !DILocation(line: 402, column: 23, scope: !4220)
!4329 = !{!"2489"}
!4330 = !DILocation(line: 402, column: 32, scope: !4220)
!4331 = !{!"2490"}
!4332 = !DILocation(line: 402, column: 29, scope: !4220)
!4333 = !{!"2491"}
!4334 = !DILocation(line: 402, column: 5, scope: !4220)
!4335 = !{!"2492"}
!4336 = !DILocation(line: 403, column: 19, scope: !4220)
!4337 = !{!"2493"}
!4338 = !DILocation(line: 403, column: 16, scope: !4220)
!4339 = !{!"2494"}
!4340 = !DILocation(line: 403, column: 26, scope: !4220)
!4341 = !{!"2495"}
!4342 = !DILocation(line: 403, column: 23, scope: !4220)
!4343 = !{!"2496"}
!4344 = !DILocation(line: 403, column: 33, scope: !4220)
!4345 = !{!"2497"}
!4346 = !DILocation(line: 403, column: 30, scope: !4220)
!4347 = !{!"2498"}
!4348 = !DILocation(line: 403, column: 5, scope: !4220)
!4349 = !{!"2499"}
!4350 = !DILocation(line: 404, column: 16, scope: !4220)
!4351 = !{!"2500"}
!4352 = !DILocation(line: 404, column: 20, scope: !4220)
!4353 = !{!"2501"}
!4354 = !DILocation(line: 404, column: 27, scope: !4220)
!4355 = !{!"2502"}
!4356 = !DILocation(line: 404, column: 24, scope: !4220)
!4357 = !{!"2503"}
!4358 = !DILocation(line: 404, column: 5, scope: !4220)
!4359 = !{!"2504"}
!4360 = !DILocation(line: 405, column: 19, scope: !4220)
!4361 = !{!"2505"}
!4362 = !DILocation(line: 405, column: 16, scope: !4220)
!4363 = !{!"2506"}
!4364 = !DILocation(line: 405, column: 26, scope: !4220)
!4365 = !{!"2507"}
!4366 = !DILocation(line: 405, column: 23, scope: !4220)
!4367 = !{!"2508"}
!4368 = !DILocation(line: 405, column: 32, scope: !4220)
!4369 = !{!"2509"}
!4370 = !DILocation(line: 405, column: 29, scope: !4220)
!4371 = !{!"2510"}
!4372 = !DILocation(line: 405, column: 5, scope: !4220)
!4373 = !{!"2511"}
!4374 = !DILocation(line: 406, column: 19, scope: !4220)
!4375 = !{!"2512"}
!4376 = !DILocation(line: 406, column: 16, scope: !4220)
!4377 = !{!"2513"}
!4378 = !DILocation(line: 406, column: 26, scope: !4220)
!4379 = !{!"2514"}
!4380 = !DILocation(line: 406, column: 23, scope: !4220)
!4381 = !{!"2515"}
!4382 = !DILocation(line: 406, column: 32, scope: !4220)
!4383 = !{!"2516"}
!4384 = !DILocation(line: 406, column: 29, scope: !4220)
!4385 = !{!"2517"}
!4386 = !DILocation(line: 406, column: 5, scope: !4220)
!4387 = !{!"2518"}
!4388 = !DILocation(line: 407, column: 19, scope: !4220)
!4389 = !{!"2519"}
!4390 = !DILocation(line: 407, column: 16, scope: !4220)
!4391 = !{!"2520"}
!4392 = !DILocation(line: 407, column: 23, scope: !4220)
!4393 = !{!"2521"}
!4394 = !DILocation(line: 407, column: 30, scope: !4220)
!4395 = !{!"2522"}
!4396 = !DILocation(line: 407, column: 27, scope: !4220)
!4397 = !{!"2523"}
!4398 = !DILocation(line: 407, column: 5, scope: !4220)
!4399 = !{!"2524"}
!4400 = !DILocation(line: 408, column: 19, scope: !4220)
!4401 = !{!"2525"}
!4402 = !DILocation(line: 408, column: 16, scope: !4220)
!4403 = !{!"2526"}
!4404 = !DILocation(line: 408, column: 23, scope: !4220)
!4405 = !{!"2527"}
!4406 = !DILocation(line: 408, column: 30, scope: !4220)
!4407 = !{!"2528"}
!4408 = !DILocation(line: 408, column: 27, scope: !4220)
!4409 = !{!"2529"}
!4410 = !DILocation(line: 408, column: 5, scope: !4220)
!4411 = !{!"2530"}
!4412 = !DILocation(line: 413, column: 1, scope: !4220)
!4413 = !{!"2531"}
!4414 = distinct !DISubprogram(name: "ecc_mul_fixed", scope: !864, file: !864, line: 422, type: !4415, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!4057, !23, !4417, !3752, !3029}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!4418 = !{!"2532"}
!4419 = !{!"2533"}
!4420 = !{!"2534"}
!4421 = !{!"2535"}
!4422 = !DILocalVariable(name: "P_table", arg: 1, scope: !4414, file: !864, line: 422, type: !23)
!4423 = !DILocation(line: 0, scope: !4414)
!4424 = !{!"2536"}
!4425 = !DILocalVariable(name: "k", arg: 2, scope: !4414, file: !864, line: 422, type: !4417)
!4426 = !{!"2537"}
!4427 = !DILocalVariable(name: "Q", arg: 3, scope: !4414, file: !864, line: 422, type: !3752)
!4428 = !{!"2538"}
!4429 = !DILocalVariable(name: "curve", arg: 4, scope: !4414, file: !864, line: 422, type: !3029)
!4430 = !{!"2539"}
!4431 = !DILocalVariable(name: "w", scope: !4414, file: !864, line: 431, type: !12)
!4432 = !{!"2540"}
!4433 = !DILocalVariable(name: "v", scope: !4414, file: !864, line: 431, type: !12)
!4434 = !{!"2541"}
!4435 = !DILocalVariable(name: "d", scope: !4414, file: !864, line: 431, type: !12)
!4436 = !{!"2542"}
!4437 = !DILocalVariable(name: "e", scope: !4414, file: !864, line: 431, type: !12)
!4438 = !{!"2543"}
!4439 = !DILocalVariable(name: "digit", scope: !4414, file: !864, line: 432, type: !12)
!4440 = !{!"2544"}
!4441 = !DILocalVariable(name: "digits", scope: !4414, file: !864, line: 432, type: !4442)
!4442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8672, elements: !4443)
!4443 = !{!4444}
!4444 = !DISubrange(count: 271)
!4445 = !DILocation(line: 432, column: 29, scope: !4414)
!4446 = !{!"2545"}
!4447 = !{!"2546"}
!4448 = !{!"2547"}
!4449 = !DILocalVariable(name: "temp", scope: !4414, file: !864, line: 433, type: !45)
!4450 = !DILocation(line: 433, column: 14, scope: !4414)
!4451 = !{!"2548"}
!4452 = !DILocalVariable(name: "R", scope: !4414, file: !864, line: 434, type: !4453)
!4453 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_extproj_t", file: !7, line: 210, baseType: !4454)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3789, size: 1280, elements: !36)
!4455 = !DILocation(line: 434, column: 21, scope: !4414)
!4456 = !{!"2549"}
!4457 = !DILocalVariable(name: "S", scope: !4414, file: !864, line: 435, type: !24)
!4458 = !DILocation(line: 435, column: 21, scope: !4414)
!4459 = !{!"2550"}
!4460 = !DILocation(line: 438, column: 18, scope: !4414)
!4461 = !{!"2551"}
!4462 = !DILocation(line: 438, column: 31, scope: !4414)
!4463 = !{!"2552"}
!4464 = !DILocation(line: 438, column: 5, scope: !4414)
!4465 = !{!"2553"}
!4466 = !DILocation(line: 439, column: 23, scope: !4414)
!4467 = !{!"2554"}
!4468 = !DILocation(line: 439, column: 46, scope: !4414)
!4469 = !{!"2555"}
!4470 = !DILocation(line: 439, column: 36, scope: !4414)
!4471 = !{!"2556"}
!4472 = !DILocation(line: 439, column: 5, scope: !4414)
!4473 = !{!"2557"}
!4474 = !DILocation(line: 440, column: 21, scope: !4414)
!4475 = !{!"2558"}
!4476 = !DILocation(line: 440, column: 27, scope: !4414)
!4477 = !{!"2559"}
!4478 = !DILocation(line: 440, column: 5, scope: !4414)
!4479 = !{!"2560"}
!4480 = !DILocation(line: 443, column: 21, scope: !4414)
!4481 = !{!"2561"}
!4482 = !DILocation(line: 443, column: 23, scope: !4414)
!4483 = !{!"2562"}
!4484 = !DILocation(line: 443, column: 13, scope: !4414)
!4485 = !{!"2563"}
!4486 = !{!"2564"}
!4487 = !{!"2565"}
!4488 = !{!"2566"}
!4489 = !DILocation(line: 444, column: 22, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4414, file: !864, line: 444, column: 5)
!4491 = !{!"2567"}
!4492 = !DILocation(line: 444, column: 25, scope: !4490)
!4493 = !{!"2568"}
!4494 = !DILocation(line: 444, column: 27, scope: !4490)
!4495 = !{!"2569"}
!4496 = !DILocalVariable(name: "i", scope: !4414, file: !864, line: 436, type: !13)
!4497 = !{!"2570"}
!4498 = !DILocation(line: 444, column: 10, scope: !4490)
!4499 = !{!"2571"}
!4500 = !{!"2572"}
!4501 = !DILocation(line: 0, scope: !4490)
!4502 = !{!"2573"}
!4503 = !{!"2574"}
!4504 = !{!"2575"}
!4505 = !DILocation(line: 444, column: 44, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4490, file: !864, line: 444, column: 5)
!4507 = !{!"2576"}
!4508 = !DILocation(line: 444, column: 46, scope: !4506)
!4509 = !{!"2577"}
!4510 = !DILocation(line: 444, column: 34, scope: !4506)
!4511 = !{!"2578"}
!4512 = !DILocation(line: 444, column: 5, scope: !4490)
!4513 = !{!"2579"}
!4514 = !DILocation(line: 446, column: 18, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4506, file: !864, line: 445, column: 5)
!4516 = !{!"2580"}
!4517 = !DILocation(line: 446, column: 27, scope: !4515)
!4518 = !{!"2581"}
!4519 = !{!"2582"}
!4520 = !{!"2583"}
!4521 = !DILocation(line: 446, column: 25, scope: !4515)
!4522 = !{!"2584"}
!4523 = !{!"2585"}
!4524 = !DILocation(line: 447, column: 5, scope: !4515)
!4525 = !{!"2586"}
!4526 = !DILocation(line: 444, column: 56, scope: !4506)
!4527 = !{!"2587"}
!4528 = !{!"2588"}
!4529 = !DILocation(line: 444, column: 5, scope: !4506)
!4530 = distinct !{!4530, !4512, !4531, !517}
!4531 = !DILocation(line: 447, column: 5, scope: !4490)
!4532 = !{!"2589"}
!4533 = !DILocation(line: 449, column: 39, scope: !4414)
!4534 = !{!"2590"}
!4535 = !DILocation(line: 449, column: 51, scope: !4414)
!4536 = !{!"2591"}
!4537 = !DILocation(line: 449, column: 46, scope: !4414)
!4538 = !{!"2592"}
!4539 = !DILocation(line: 449, column: 42, scope: !4414)
!4540 = !{!"2593"}
!4541 = !DILocation(line: 449, column: 36, scope: !4414)
!4542 = !{!"2594"}
!4543 = !{!"2595"}
!4544 = !DILocation(line: 449, column: 57, scope: !4414)
!4545 = !{!"2596"}
!4546 = !DILocation(line: 449, column: 75, scope: !4414)
!4547 = !{!"2597"}
!4548 = !DILocation(line: 449, column: 67, scope: !4414)
!4549 = !{!"2598"}
!4550 = !{!"2599"}
!4551 = !{!"2600"}
!4552 = !DILocation(line: 449, column: 5, scope: !4414)
!4553 = !{!"2601"}
!4554 = !DILocation(line: 450, column: 14, scope: !4414)
!4555 = !{!"2602"}
!4556 = !DILocation(line: 450, column: 17, scope: !4414)
!4557 = !{!"2603"}
!4558 = !DILocation(line: 450, column: 5, scope: !4414)
!4559 = !{!"2604"}
!4560 = !DILocalVariable(name: "j", scope: !4414, file: !864, line: 431, type: !12)
!4561 = !{!"2605"}
!4562 = !DILocation(line: 452, column: 10, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4414, file: !864, line: 452, column: 5)
!4564 = !{!"2606"}
!4565 = !DILocation(line: 0, scope: !4563)
!4566 = !{!"2607"}
!4567 = !{!"2608"}
!4568 = !DILocation(line: 452, column: 23, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4563, file: !864, line: 452, column: 5)
!4570 = !{!"2609"}
!4571 = !DILocation(line: 452, column: 19, scope: !4569)
!4572 = !{!"2610"}
!4573 = !DILocation(line: 452, column: 5, scope: !4563)
!4574 = !{!"2611"}
!4575 = !DILocation(line: 454, column: 25, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4569, file: !864, line: 453, column: 5)
!4577 = !{!"2612"}
!4578 = !DILocation(line: 454, column: 30, scope: !4576)
!4579 = !{!"2613"}
!4580 = !DILocation(line: 454, column: 33, scope: !4576)
!4581 = !{!"2614"}
!4582 = !DILocation(line: 454, column: 27, scope: !4576)
!4583 = !{!"2615"}
!4584 = !DILocation(line: 454, column: 35, scope: !4576)
!4585 = !{!"2616"}
!4586 = !DILocation(line: 454, column: 17, scope: !4576)
!4587 = !{!"2617"}
!4588 = !{!"2618"}
!4589 = !{!"2619"}
!4590 = !{!"2620"}
!4591 = !DILocation(line: 455, column: 26, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4576, file: !864, line: 455, column: 9)
!4593 = !{!"2621"}
!4594 = !DILocation(line: 455, column: 29, scope: !4592)
!4595 = !{!"2622"}
!4596 = !DILocation(line: 455, column: 34, scope: !4592)
!4597 = !{!"2623"}
!4598 = !DILocation(line: 455, column: 37, scope: !4592)
!4599 = !{!"2624"}
!4600 = !DILocation(line: 455, column: 31, scope: !4592)
!4601 = !{!"2625"}
!4602 = !DILocation(line: 455, column: 39, scope: !4592)
!4603 = !{!"2626"}
!4604 = !{!"2627"}
!4605 = !DILocation(line: 455, column: 14, scope: !4592)
!4606 = !{!"2628"}
!4607 = !DILocation(line: 0, scope: !4576)
!4608 = !{!"2629"}
!4609 = !DILocation(line: 0, scope: !4592)
!4610 = !{!"2630"}
!4611 = !{!"2631"}
!4612 = !{!"2632"}
!4613 = !DILocation(line: 455, column: 56, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4592, file: !864, line: 455, column: 9)
!4615 = !{!"2633"}
!4616 = !DILocation(line: 455, column: 61, scope: !4614)
!4617 = !{!"2634"}
!4618 = !DILocation(line: 455, column: 64, scope: !4614)
!4619 = !{!"2635"}
!4620 = !DILocation(line: 455, column: 58, scope: !4614)
!4621 = !{!"2636"}
!4622 = !DILocation(line: 455, column: 66, scope: !4614)
!4623 = !{!"2637"}
!4624 = !DILocation(line: 455, column: 46, scope: !4614)
!4625 = !{!"2638"}
!4626 = !DILocation(line: 455, column: 9, scope: !4592)
!4627 = !{!"2639"}
!4628 = !DILocation(line: 457, column: 22, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4614, file: !864, line: 456, column: 9)
!4630 = !{!"2640"}
!4631 = !DILocation(line: 457, column: 31, scope: !4629)
!4632 = !{!"2641"}
!4633 = !{!"2642"}
!4634 = !{!"2643"}
!4635 = !DILocation(line: 457, column: 29, scope: !4629)
!4636 = !{!"2644"}
!4637 = !{!"2645"}
!4638 = !DILocation(line: 458, column: 9, scope: !4629)
!4639 = !{!"2646"}
!4640 = !DILocation(line: 455, column: 76, scope: !4614)
!4641 = !{!"2647"}
!4642 = !{!"2648"}
!4643 = !DILocation(line: 455, column: 9, scope: !4614)
!4644 = distinct !{!4644, !4626, !4645, !517}
!4645 = !DILocation(line: 458, column: 9, scope: !4592)
!4646 = !{!"2649"}
!4647 = !DILocation(line: 460, column: 43, scope: !4576)
!4648 = !{!"2650"}
!4649 = !DILocation(line: 460, column: 45, scope: !4576)
!4650 = !{!"2651"}
!4651 = !DILocation(line: 460, column: 57, scope: !4576)
!4652 = !{!"2652"}
!4653 = !DILocation(line: 460, column: 52, scope: !4576)
!4654 = !{!"2653"}
!4655 = !DILocation(line: 460, column: 48, scope: !4576)
!4656 = !{!"2654"}
!4657 = !DILocation(line: 460, column: 40, scope: !4576)
!4658 = !{!"2655"}
!4659 = !{!"2656"}
!4660 = !DILocation(line: 460, column: 63, scope: !4576)
!4661 = !{!"2657"}
!4662 = !DILocation(line: 460, column: 84, scope: !4576)
!4663 = !{!"2658"}
!4664 = !DILocation(line: 460, column: 87, scope: !4576)
!4665 = !{!"2659"}
!4666 = !DILocation(line: 460, column: 81, scope: !4576)
!4667 = !{!"2660"}
!4668 = !DILocation(line: 460, column: 89, scope: !4576)
!4669 = !{!"2661"}
!4670 = !DILocation(line: 460, column: 73, scope: !4576)
!4671 = !{!"2662"}
!4672 = !{!"2663"}
!4673 = !{!"2664"}
!4674 = !DILocation(line: 460, column: 9, scope: !4576)
!4675 = !{!"2665"}
!4676 = !DILocation(line: 461, column: 17, scope: !4576)
!4677 = !{!"2666"}
!4678 = !DILocation(line: 461, column: 20, scope: !4576)
!4679 = !{!"2667"}
!4680 = !DILocation(line: 461, column: 9, scope: !4576)
!4681 = !{!"2668"}
!4682 = !DILocation(line: 462, column: 5, scope: !4576)
!4683 = !{!"2669"}
!4684 = !DILocation(line: 452, column: 29, scope: !4569)
!4685 = !{!"2670"}
!4686 = !{!"2671"}
!4687 = !DILocation(line: 452, column: 5, scope: !4569)
!4688 = distinct !{!4688, !4573, !4689, !517}
!4689 = !DILocation(line: 462, column: 5, scope: !4563)
!4690 = !{!"2672"}
!4691 = !DILocation(line: 464, column: 17, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4414, file: !864, line: 464, column: 5)
!4693 = !{!"2673"}
!4694 = !DILocalVariable(name: "ii", scope: !4414, file: !864, line: 436, type: !13)
!4695 = !{!"2674"}
!4696 = !DILocation(line: 464, column: 10, scope: !4692)
!4697 = !{!"2675"}
!4698 = !DILocation(line: 0, scope: !4692)
!4699 = !{!"2676"}
!4700 = !{!"2677"}
!4701 = !DILocation(line: 464, column: 25, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4692, file: !864, line: 464, column: 5)
!4703 = !{!"2678"}
!4704 = !DILocation(line: 464, column: 5, scope: !4692)
!4705 = !{!"2679"}
!4706 = !DILocation(line: 466, column: 19, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4702, file: !864, line: 465, column: 5)
!4708 = !{!"2680"}
!4709 = !DILocation(line: 466, column: 9, scope: !4707)
!4710 = !{!"2681"}
!4711 = !{!"2682"}
!4712 = !DILocation(line: 467, column: 14, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4707, file: !864, line: 467, column: 9)
!4714 = !{!"2683"}
!4715 = !DILocation(line: 0, scope: !4713)
!4716 = !{!"2684"}
!4717 = !{!"2685"}
!4718 = !DILocation(line: 467, column: 23, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4713, file: !864, line: 467, column: 9)
!4720 = !{!"2686"}
!4721 = !DILocation(line: 467, column: 9, scope: !4713)
!4722 = !{!"2687"}
!4723 = !DILocation(line: 469, column: 29, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4719, file: !864, line: 468, column: 9)
!4725 = !{!"2688"}
!4726 = !DILocation(line: 469, column: 33, scope: !4724)
!4727 = !{!"2689"}
!4728 = !DILocation(line: 469, column: 31, scope: !4724)
!4729 = !{!"2690"}
!4730 = !DILocation(line: 469, column: 35, scope: !4724)
!4731 = !{!"2691"}
!4732 = !DILocation(line: 469, column: 38, scope: !4724)
!4733 = !{!"2692"}
!4734 = !DILocation(line: 469, column: 21, scope: !4724)
!4735 = !{!"2693"}
!4736 = !{!"2694"}
!4737 = !{!"2695"}
!4738 = !{!"2696"}
!4739 = !DILocation(line: 470, column: 30, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4724, file: !864, line: 470, column: 13)
!4741 = !{!"2697"}
!4742 = !DILocation(line: 470, column: 33, scope: !4740)
!4743 = !{!"2698"}
!4744 = !DILocation(line: 470, column: 37, scope: !4740)
!4745 = !{!"2699"}
!4746 = !DILocation(line: 470, column: 35, scope: !4740)
!4747 = !{!"2700"}
!4748 = !DILocation(line: 470, column: 39, scope: !4740)
!4749 = !{!"2701"}
!4750 = !DILocation(line: 470, column: 42, scope: !4740)
!4751 = !{!"2702"}
!4752 = !{!"2703"}
!4753 = !DILocation(line: 470, column: 18, scope: !4740)
!4754 = !{!"2704"}
!4755 = !DILocation(line: 0, scope: !4724)
!4756 = !{!"2705"}
!4757 = !DILocation(line: 0, scope: !4740)
!4758 = !{!"2706"}
!4759 = !{!"2707"}
!4760 = !{!"2708"}
!4761 = !DILocation(line: 470, column: 59, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4740, file: !864, line: 470, column: 13)
!4763 = !{!"2709"}
!4764 = !DILocation(line: 470, column: 63, scope: !4762)
!4765 = !{!"2710"}
!4766 = !DILocation(line: 470, column: 61, scope: !4762)
!4767 = !{!"2711"}
!4768 = !DILocation(line: 470, column: 65, scope: !4762)
!4769 = !{!"2712"}
!4770 = !DILocation(line: 470, column: 68, scope: !4762)
!4771 = !{!"2713"}
!4772 = !DILocation(line: 470, column: 49, scope: !4762)
!4773 = !{!"2714"}
!4774 = !DILocation(line: 470, column: 13, scope: !4740)
!4775 = !{!"2715"}
!4776 = !DILocation(line: 472, column: 26, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4762, file: !864, line: 471, column: 13)
!4778 = !{!"2716"}
!4779 = !DILocation(line: 472, column: 35, scope: !4777)
!4780 = !{!"2717"}
!4781 = !{!"2718"}
!4782 = !{!"2719"}
!4783 = !DILocation(line: 472, column: 33, scope: !4777)
!4784 = !{!"2720"}
!4785 = !{!"2721"}
!4786 = !DILocation(line: 473, column: 13, scope: !4777)
!4787 = !{!"2722"}
!4788 = !DILocation(line: 470, column: 78, scope: !4762)
!4789 = !{!"2723"}
!4790 = !{!"2724"}
!4791 = !DILocation(line: 470, column: 13, scope: !4762)
!4792 = distinct !{!4792, !4774, !4793, !517}
!4793 = !DILocation(line: 473, column: 13, scope: !4740)
!4794 = !{!"2725"}
!4795 = !DILocation(line: 475, column: 47, scope: !4724)
!4796 = !{!"2726"}
!4797 = !DILocation(line: 475, column: 49, scope: !4724)
!4798 = !{!"2727"}
!4799 = !DILocation(line: 475, column: 61, scope: !4724)
!4800 = !{!"2728"}
!4801 = !DILocation(line: 475, column: 56, scope: !4724)
!4802 = !{!"2729"}
!4803 = !DILocation(line: 475, column: 52, scope: !4724)
!4804 = !{!"2730"}
!4805 = !DILocation(line: 475, column: 44, scope: !4724)
!4806 = !{!"2731"}
!4807 = !{!"2732"}
!4808 = !DILocation(line: 475, column: 67, scope: !4724)
!4809 = !{!"2733"}
!4810 = !DILocation(line: 475, column: 87, scope: !4724)
!4811 = !{!"2734"}
!4812 = !DILocation(line: 475, column: 85, scope: !4724)
!4813 = !{!"2735"}
!4814 = !DILocation(line: 475, column: 89, scope: !4724)
!4815 = !{!"2736"}
!4816 = !DILocation(line: 475, column: 92, scope: !4724)
!4817 = !{!"2737"}
!4818 = !DILocation(line: 475, column: 77, scope: !4724)
!4819 = !{!"2738"}
!4820 = !{!"2739"}
!4821 = !{!"2740"}
!4822 = !DILocation(line: 475, column: 13, scope: !4724)
!4823 = !{!"2741"}
!4824 = !DILocation(line: 476, column: 21, scope: !4724)
!4825 = !{!"2742"}
!4826 = !DILocation(line: 476, column: 24, scope: !4724)
!4827 = !{!"2743"}
!4828 = !DILocation(line: 476, column: 13, scope: !4724)
!4829 = !{!"2744"}
!4830 = !DILocation(line: 477, column: 9, scope: !4724)
!4831 = !{!"2745"}
!4832 = !DILocation(line: 467, column: 29, scope: !4719)
!4833 = !{!"2746"}
!4834 = !{!"2747"}
!4835 = !DILocation(line: 467, column: 9, scope: !4719)
!4836 = distinct !{!4836, !4721, !4837, !517}
!4837 = !DILocation(line: 477, column: 9, scope: !4713)
!4838 = !{!"2748"}
!4839 = !DILocation(line: 478, column: 5, scope: !4707)
!4840 = !{!"2749"}
!4841 = !DILocation(line: 464, column: 33, scope: !4702)
!4842 = !{!"2750"}
!4843 = !{!"2751"}
!4844 = !DILocation(line: 464, column: 5, scope: !4702)
!4845 = distinct !{!4845, !4704, !4846, !517}
!4846 = !DILocation(line: 478, column: 5, scope: !4692)
!4847 = !{!"2752"}
!4848 = !DILocation(line: 479, column: 13, scope: !4414)
!4849 = !{!"2753"}
!4850 = !DILocation(line: 479, column: 5, scope: !4414)
!4851 = !{!"2754"}
!4852 = !DILocation(line: 485, column: 5, scope: !4414)
!4853 = !{!"2755"}
!4854 = distinct !DISubprogram(name: "mLSB_set_recode", scope: !864, file: !864, line: 489, type: !4855, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{null, !4417, !4857}
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!4858 = !DILocalVariable(name: "scalar", arg: 1, scope: !4854, file: !864, line: 489, type: !4417)
!4859 = !DILocation(line: 0, scope: !4854)
!4860 = !{!"2756"}
!4861 = !DILocalVariable(name: "digits", arg: 2, scope: !4854, file: !864, line: 489, type: !4857)
!4862 = !{!"2757"}
!4863 = !DILocalVariable(name: "d", scope: !4854, file: !864, line: 496, type: !12)
!4864 = !{!"2758"}
!4865 = !DILocalVariable(name: "l", scope: !4854, file: !864, line: 496, type: !12)
!4866 = !{!"2759"}
!4867 = !DILocation(line: 499, column: 13, scope: !4854)
!4868 = !{!"2760"}
!4869 = !DILocation(line: 499, column: 5, scope: !4854)
!4870 = !{!"2761"}
!4871 = !{!"2762"}
!4872 = !DILocation(line: 499, column: 17, scope: !4854)
!4873 = !{!"2763"}
!4874 = !DILocalVariable(name: "j", scope: !4854, file: !864, line: 496, type: !12)
!4875 = !{!"2764"}
!4876 = !DILocation(line: 502, column: 10, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4854, file: !864, line: 502, column: 5)
!4878 = !{!"2765"}
!4879 = !DILocation(line: 0, scope: !4877)
!4880 = !{!"2766"}
!4881 = !{!"2767"}
!4882 = !DILocation(line: 502, column: 19, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4877, file: !864, line: 502, column: 5)
!4884 = !{!"2768"}
!4885 = !DILocation(line: 502, column: 5, scope: !4877)
!4886 = !{!"2769"}
!4887 = !DILocation(line: 503, column: 9, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4883, file: !864, line: 502, column: 46)
!4889 = !{!"2770"}
!4890 = !{!"2771"}
!4891 = !{!"2772"}
!4892 = !{!"2773"}
!4893 = !{!"2774"}
!4894 = !{!"2775"}
!4895 = !{!"2776"}
!4896 = !{!"2777"}
!4897 = !{!"2778"}
!4898 = !{!"2779"}
!4899 = !{!"2780"}
!4900 = !{!"2781"}
!4901 = !{!"2782"}
!4902 = !DILocation(line: 504, column: 5, scope: !4888)
!4903 = !{!"2783"}
!4904 = !DILocation(line: 502, column: 42, scope: !4883)
!4905 = !{!"2784"}
!4906 = !{!"2785"}
!4907 = !DILocation(line: 502, column: 5, scope: !4883)
!4908 = distinct !{!4908, !4885, !4909, !517}
!4909 = !DILocation(line: 504, column: 5, scope: !4877)
!4910 = !{!"2786"}
!4911 = !DILocation(line: 505, column: 5, scope: !4854)
!4912 = !{!"2787"}
!4913 = !DILocation(line: 505, column: 30, scope: !4854)
!4914 = !{!"2788"}
!4915 = !{!"2789"}
!4916 = !{!"2790"}
!4917 = !DILocalVariable(name: "i", scope: !4854, file: !864, line: 496, type: !12)
!4918 = !{!"2791"}
!4919 = !DILocation(line: 507, column: 10, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4854, file: !864, line: 507, column: 5)
!4921 = !{!"2792"}
!4922 = !DILocation(line: 0, scope: !4920)
!4923 = !{!"2793"}
!4924 = !{!"2794"}
!4925 = !DILocation(line: 507, column: 23, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4920, file: !864, line: 507, column: 5)
!4927 = !{!"2795"}
!4928 = !DILocation(line: 507, column: 19, scope: !4926)
!4929 = !{!"2796"}
!4930 = !DILocation(line: 507, column: 5, scope: !4920)
!4931 = !{!"2797"}
!4932 = !DILocation(line: 509, column: 37, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4926, file: !864, line: 508, column: 5)
!4934 = !{!"2798"}
!4935 = !{!"2799"}
!4936 = !DILocation(line: 509, column: 47, scope: !4933)
!4937 = !{!"2800"}
!4938 = !DILocation(line: 509, column: 52, scope: !4933)
!4939 = !{!"2801"}
!4940 = !DILocation(line: 509, column: 21, scope: !4933)
!4941 = !{!"2802"}
!4942 = !DILocation(line: 509, column: 9, scope: !4933)
!4943 = !{!"2803"}
!4944 = !{!"2804"}
!4945 = !DILocation(line: 509, column: 19, scope: !4933)
!4946 = !{!"2805"}
!4947 = !{!"2806"}
!4948 = !DILocation(line: 512, column: 14, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4933, file: !864, line: 512, column: 9)
!4950 = !{!"2807"}
!4951 = !DILocation(line: 0, scope: !4949)
!4952 = !{!"2808"}
!4953 = !{!"2809"}
!4954 = !DILocation(line: 512, column: 23, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4949, file: !864, line: 512, column: 9)
!4956 = !{!"2810"}
!4957 = !DILocation(line: 512, column: 9, scope: !4949)
!4958 = !{!"2811"}
!4959 = !DILocation(line: 513, column: 13, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4955, file: !864, line: 512, column: 50)
!4961 = !{!"2812"}
!4962 = !{!"2813"}
!4963 = !{!"2814"}
!4964 = !{!"2815"}
!4965 = !{!"2816"}
!4966 = !{!"2817"}
!4967 = !{!"2818"}
!4968 = !{!"2819"}
!4969 = !{!"2820"}
!4970 = !{!"2821"}
!4971 = !{!"2822"}
!4972 = !{!"2823"}
!4973 = !{!"2824"}
!4974 = !DILocation(line: 514, column: 9, scope: !4960)
!4975 = !{!"2825"}
!4976 = !DILocation(line: 512, column: 46, scope: !4955)
!4977 = !{!"2826"}
!4978 = !{!"2827"}
!4979 = !DILocation(line: 512, column: 9, scope: !4955)
!4980 = distinct !{!4980, !4957, !4981, !517}
!4981 = !DILocation(line: 514, column: 9, scope: !4949)
!4982 = !{!"2828"}
!4983 = !DILocation(line: 515, column: 9, scope: !4933)
!4984 = !{!"2829"}
!4985 = !DILocation(line: 515, column: 34, scope: !4933)
!4986 = !{!"2830"}
!4987 = !{!"2831"}
!4988 = !{!"2832"}
!4989 = !DILocation(line: 516, column: 5, scope: !4933)
!4990 = !{!"2833"}
!4991 = !DILocation(line: 507, column: 29, scope: !4926)
!4992 = !{!"2834"}
!4993 = !{!"2835"}
!4994 = !DILocation(line: 507, column: 5, scope: !4926)
!4995 = distinct !{!4995, !4930, !4996, !517}
!4996 = !DILocation(line: 516, column: 5, scope: !4920)
!4997 = !{!"2836"}
!4998 = !{!"2837"}
!4999 = !DILocation(line: 518, column: 10, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4854, file: !864, line: 518, column: 5)
!5001 = !{!"2838"}
!5002 = !DILocation(line: 0, scope: !5000)
!5003 = !{!"2839"}
!5004 = !{!"2840"}
!5005 = !DILocation(line: 518, column: 19, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5000, file: !864, line: 518, column: 5)
!5007 = !{!"2841"}
!5008 = !DILocation(line: 518, column: 5, scope: !5000)
!5009 = !{!"2842"}
!5010 = !DILocation(line: 520, column: 36, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5006, file: !864, line: 519, column: 5)
!5012 = !{!"2843"}
!5013 = !{!"2844"}
!5014 = !DILocation(line: 520, column: 46, scope: !5011)
!5015 = !{!"2845"}
!5016 = !DILocation(line: 520, column: 21, scope: !5011)
!5017 = !{!"2846"}
!5018 = !DILocation(line: 520, column: 9, scope: !5011)
!5019 = !{!"2847"}
!5020 = !{!"2848"}
!5021 = !DILocation(line: 520, column: 19, scope: !5011)
!5022 = !{!"2849"}
!5023 = !{!"2850"}
!5024 = !DILocation(line: 523, column: 14, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5011, file: !864, line: 523, column: 9)
!5026 = !{!"2851"}
!5027 = !DILocation(line: 0, scope: !5025)
!5028 = !{!"2852"}
!5029 = !{!"2853"}
!5030 = !DILocation(line: 523, column: 23, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5025, file: !864, line: 523, column: 9)
!5032 = !{!"2854"}
!5033 = !DILocation(line: 523, column: 9, scope: !5025)
!5034 = !{!"2855"}
!5035 = !DILocation(line: 524, column: 13, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5031, file: !864, line: 523, column: 50)
!5037 = !{!"2856"}
!5038 = !{!"2857"}
!5039 = !{!"2858"}
!5040 = !{!"2859"}
!5041 = !{!"2860"}
!5042 = !{!"2861"}
!5043 = !{!"2862"}
!5044 = !{!"2863"}
!5045 = !{!"2864"}
!5046 = !{!"2865"}
!5047 = !{!"2866"}
!5048 = !{!"2867"}
!5049 = !{!"2868"}
!5050 = !DILocation(line: 525, column: 9, scope: !5036)
!5051 = !{!"2869"}
!5052 = !DILocation(line: 523, column: 46, scope: !5031)
!5053 = !{!"2870"}
!5054 = !{!"2871"}
!5055 = !DILocation(line: 523, column: 9, scope: !5031)
!5056 = distinct !{!5056, !5033, !5057, !517}
!5057 = !DILocation(line: 525, column: 9, scope: !5025)
!5058 = !{!"2872"}
!5059 = !DILocation(line: 526, column: 9, scope: !5011)
!5060 = !{!"2873"}
!5061 = !DILocation(line: 526, column: 34, scope: !5011)
!5062 = !{!"2874"}
!5063 = !{!"2875"}
!5064 = !{!"2876"}
!5065 = !DILocation(line: 528, column: 32, scope: !5011)
!5066 = !{!"2877"}
!5067 = !DILocation(line: 528, column: 35, scope: !5011)
!5068 = !{!"2878"}
!5069 = !DILocation(line: 528, column: 29, scope: !5011)
!5070 = !{!"2879"}
!5071 = !DILocation(line: 528, column: 21, scope: !5011)
!5072 = !{!"2880"}
!5073 = !{!"2881"}
!5074 = !{!"2882"}
!5075 = !DILocation(line: 528, column: 19, scope: !5011)
!5076 = !{!"2883"}
!5077 = !DILocation(line: 528, column: 42, scope: !5011)
!5078 = !{!"2884"}
!5079 = !{!"2885"}
!5080 = !{!"2886"}
!5081 = !DILocation(line: 528, column: 40, scope: !5011)
!5082 = !{!"2887"}
!5083 = !DILocation(line: 528, column: 16, scope: !5011)
!5084 = !{!"2888"}
!5085 = !DILocalVariable(name: "temp", scope: !4854, file: !864, line: 497, type: !20)
!5086 = !{!"2889"}
!5087 = !DILocation(line: 531, column: 21, scope: !5011)
!5088 = !{!"2890"}
!5089 = !{!"2891"}
!5090 = !DILocation(line: 531, column: 31, scope: !5011)
!5091 = !{!"2892"}
!5092 = !DILocation(line: 531, column: 9, scope: !5011)
!5093 = !{!"2893"}
!5094 = !DILocation(line: 531, column: 19, scope: !5011)
!5095 = !{!"2894"}
!5096 = !DILocation(line: 532, column: 61, scope: !5011)
!5097 = !{!"2895"}
!5098 = !{!"2896"}
!5099 = !DILocation(line: 532, column: 52, scope: !5011)
!5100 = !{!"2897"}
!5101 = !DILocation(line: 532, column: 35, scope: !5011)
!5102 = !{!"2898"}
!5103 = !DILocation(line: 532, column: 25, scope: !5011)
!5104 = !{!"2899"}
!5105 = !DILocation(line: 532, column: 23, scope: !5011)
!5106 = !{!"2900"}
!5107 = !DILocalVariable(name: "carry", scope: !4854, file: !864, line: 497, type: !20)
!5108 = !{!"2901"}
!5109 = !{!"2902"}
!5110 = !DILocation(line: 533, column: 14, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5011, file: !864, line: 533, column: 9)
!5112 = !{!"2903"}
!5113 = !DILocation(line: 0, scope: !5111)
!5114 = !{!"2904"}
!5115 = !DILocation(line: 0, scope: !5011)
!5116 = !{!"2905"}
!5117 = !{!"2906"}
!5118 = !{!"2907"}
!5119 = !DILocation(line: 533, column: 23, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5111, file: !864, line: 533, column: 9)
!5121 = !{!"2908"}
!5122 = !DILocation(line: 533, column: 9, scope: !5111)
!5123 = !{!"2909"}
!5124 = !DILocation(line: 535, column: 25, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5120, file: !864, line: 534, column: 9)
!5126 = !{!"2910"}
!5127 = !{!"2911"}
!5128 = !{!"2912"}
!5129 = !DILocation(line: 535, column: 35, scope: !5125)
!5130 = !{!"2913"}
!5131 = !DILocation(line: 535, column: 13, scope: !5125)
!5132 = !{!"2914"}
!5133 = !{!"2915"}
!5134 = !DILocation(line: 535, column: 23, scope: !5125)
!5135 = !{!"2916"}
!5136 = !DILocation(line: 536, column: 66, scope: !5125)
!5137 = !{!"2917"}
!5138 = !{!"2918"}
!5139 = !{!"2919"}
!5140 = !DILocation(line: 536, column: 57, scope: !5125)
!5141 = !{!"2920"}
!5142 = !DILocation(line: 536, column: 40, scope: !5125)
!5143 = !{!"2921"}
!5144 = !DILocation(line: 536, column: 30, scope: !5125)
!5145 = !{!"2922"}
!5146 = !DILocation(line: 536, column: 28, scope: !5125)
!5147 = !{!"2923"}
!5148 = !{!"2924"}
!5149 = !DILocation(line: 537, column: 9, scope: !5125)
!5150 = !{!"2925"}
!5151 = !DILocation(line: 533, column: 42, scope: !5120)
!5152 = !{!"2926"}
!5153 = !{!"2927"}
!5154 = !DILocation(line: 533, column: 9, scope: !5120)
!5155 = distinct !{!5155, !5122, !5156, !517}
!5156 = !DILocation(line: 537, column: 9, scope: !5111)
!5157 = !{!"2928"}
!5158 = !DILocation(line: 538, column: 5, scope: !5011)
!5159 = !{!"2929"}
!5160 = !DILocation(line: 518, column: 25, scope: !5006)
!5161 = !{!"2930"}
!5162 = !{!"2931"}
!5163 = !DILocation(line: 518, column: 5, scope: !5006)
!5164 = distinct !{!5164, !5008, !5165, !517}
!5165 = !DILocation(line: 538, column: 5, scope: !5000)
!5166 = !{!"2932"}
!5167 = !DILocation(line: 539, column: 5, scope: !4854)
!5168 = !{!"2933"}
!5169 = distinct !DISubprogram(name: "R5_to_R1", scope: !864, file: !864, line: 373, type: !4209, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5170 = !DILocalVariable(name: "P", arg: 1, scope: !5169, file: !864, line: 373, type: !908)
!5171 = !DILocation(line: 0, scope: !5169)
!5172 = !{!"2934"}
!5173 = !DILocalVariable(name: "Q", arg: 2, scope: !5169, file: !864, line: 373, type: !3788)
!5174 = !{!"2935"}
!5175 = !DILocation(line: 377, column: 19, scope: !5169)
!5176 = !{!"2936"}
!5177 = !DILocation(line: 377, column: 16, scope: !5169)
!5178 = !{!"2937"}
!5179 = !DILocation(line: 377, column: 26, scope: !5169)
!5180 = !{!"2938"}
!5181 = !DILocation(line: 377, column: 23, scope: !5169)
!5182 = !{!"2939"}
!5183 = !DILocation(line: 377, column: 33, scope: !5169)
!5184 = !{!"2940"}
!5185 = !DILocation(line: 377, column: 30, scope: !5169)
!5186 = !{!"2941"}
!5187 = !DILocation(line: 377, column: 5, scope: !5169)
!5188 = !{!"2942"}
!5189 = !DILocation(line: 378, column: 19, scope: !5169)
!5190 = !{!"2943"}
!5191 = !DILocation(line: 378, column: 16, scope: !5169)
!5192 = !{!"2944"}
!5193 = !DILocation(line: 378, column: 26, scope: !5169)
!5194 = !{!"2945"}
!5195 = !DILocation(line: 378, column: 23, scope: !5169)
!5196 = !{!"2946"}
!5197 = !DILocation(line: 378, column: 33, scope: !5169)
!5198 = !{!"2947"}
!5199 = !DILocation(line: 378, column: 30, scope: !5169)
!5200 = !{!"2948"}
!5201 = !DILocation(line: 378, column: 5, scope: !5169)
!5202 = !{!"2949"}
!5203 = !DILocation(line: 379, column: 19, scope: !5169)
!5204 = !{!"2950"}
!5205 = !DILocation(line: 379, column: 16, scope: !5169)
!5206 = !{!"2951"}
!5207 = !DILocation(line: 379, column: 5, scope: !5169)
!5208 = !{!"2952"}
!5209 = !DILocation(line: 380, column: 19, scope: !5169)
!5210 = !{!"2953"}
!5211 = !DILocation(line: 380, column: 16, scope: !5169)
!5212 = !{!"2954"}
!5213 = !DILocation(line: 380, column: 5, scope: !5169)
!5214 = !{!"2955"}
!5215 = !DILocation(line: 381, column: 20, scope: !5169)
!5216 = !{!"2956"}
!5217 = !DILocation(line: 381, column: 17, scope: !5169)
!5218 = !{!"2957"}
!5219 = !DILocation(line: 381, column: 5, scope: !5169)
!5220 = !{!"2958"}
!5221 = !DILocation(line: 381, column: 27, scope: !5169)
!5222 = !{!"2959"}
!5223 = !DILocation(line: 381, column: 24, scope: !5169)
!5224 = !{!"2960"}
!5225 = !{!"2961"}
!5226 = !DILocation(line: 381, column: 34, scope: !5169)
!5227 = !{!"2962"}
!5228 = !DILocation(line: 382, column: 20, scope: !5169)
!5229 = !{!"2963"}
!5230 = !DILocation(line: 382, column: 17, scope: !5169)
!5231 = !{!"2964"}
!5232 = !DILocation(line: 382, column: 26, scope: !5169)
!5233 = !{!"2965"}
!5234 = !DILocation(line: 382, column: 23, scope: !5169)
!5235 = !{!"2966"}
!5236 = !DILocation(line: 382, column: 5, scope: !5169)
!5237 = !{!"2967"}
!5238 = !DILocation(line: 383, column: 20, scope: !5169)
!5239 = !{!"2968"}
!5240 = !DILocation(line: 383, column: 17, scope: !5169)
!5241 = !{!"2969"}
!5242 = !DILocation(line: 383, column: 26, scope: !5169)
!5243 = !{!"2970"}
!5244 = !DILocation(line: 383, column: 23, scope: !5169)
!5245 = !{!"2971"}
!5246 = !DILocation(line: 383, column: 5, scope: !5169)
!5247 = !{!"2972"}
!5248 = !DILocation(line: 384, column: 1, scope: !5169)
!5249 = !{!"2973"}
!5250 = distinct !DISubprogram(name: "ecc_allocate_precomp", scope: !864, file: !864, line: 543, type: !5251, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!23}
!5253 = !DILocation(line: 547, column: 30, scope: !5250)
!5254 = !{!"2974"}
!5255 = !DILocation(line: 547, column: 12, scope: !5250)
!5256 = !{!"2975"}
!5257 = !DILocation(line: 547, column: 5, scope: !5250)
!5258 = !{!"2976"}
!5259 = distinct !DISubprogram(name: "ecc_precomp_fixed", scope: !864, file: !864, line: 551, type: !5260, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!4057, !3752, !23, !4057, !3029}
!5262 = !{!"2977"}
!5263 = !{!"2978"}
!5264 = !{!"2979"}
!5265 = !{!"2980"}
!5266 = !{!"2981"}
!5267 = !{!"2982"}
!5268 = !{!"2983"}
!5269 = !DILocalVariable(name: "P", arg: 1, scope: !5259, file: !864, line: 551, type: !3752)
!5270 = !DILocation(line: 0, scope: !5259)
!5271 = !{!"2984"}
!5272 = !DILocalVariable(name: "Table", arg: 2, scope: !5259, file: !864, line: 551, type: !23)
!5273 = !{!"2985"}
!5274 = !{!"2986"}
!5275 = !DILocalVariable(name: "clear_cofactor", arg: 3, scope: !5259, file: !864, line: 551, type: !4057)
!5276 = !{!"2987"}
!5277 = !DILocalVariable(name: "curve", arg: 4, scope: !5259, file: !864, line: 551, type: !3029)
!5278 = !{!"2988"}
!5279 = !DILocalVariable(name: "S", scope: !5259, file: !864, line: 559, type: !5280)
!5280 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_t", file: !7, line: 208, baseType: !5281)
!5281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3753, size: 512, elements: !36)
!5282 = !DILocation(line: 559, column: 13, scope: !5259)
!5283 = !{!"2989"}
!5284 = !DILocalVariable(name: "A", scope: !5259, file: !864, line: 560, type: !4453)
!5285 = !DILocation(line: 560, column: 21, scope: !5259)
!5286 = !{!"2990"}
!5287 = !DILocalVariable(name: "R", scope: !5259, file: !864, line: 560, type: !4453)
!5288 = !DILocation(line: 560, column: 24, scope: !5259)
!5289 = !{!"2991"}
!5290 = !DILocalVariable(name: "base", scope: !5259, file: !864, line: 560, type: !5291)
!5291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4453, size: 6400, elements: !5292)
!5292 = !{!5293}
!5293 = !DISubrange(count: 5)
!5294 = !DILocation(line: 560, column: 27, scope: !5259)
!5295 = !{!"2992"}
!5296 = !DILocalVariable(name: "baseb", scope: !5259, file: !864, line: 561, type: !5297)
!5297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 5120, elements: !5292)
!5298 = !DILocation(line: 561, column: 29, scope: !5259)
!5299 = !{!"2993"}
!5300 = !DILocalVariable(name: "RR", scope: !5259, file: !864, line: 561, type: !61)
!5301 = !DILocation(line: 561, column: 49, scope: !5259)
!5302 = !{!"2994"}
!5303 = !DILocalVariable(name: "T", scope: !5259, file: !864, line: 561, type: !5304)
!5304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 81920, elements: !5305)
!5305 = !{!5306}
!5306 = !DISubrange(count: 80)
!5307 = !DILocation(line: 561, column: 53, scope: !5259)
!5308 = !{!"2995"}
!5309 = !DILocalVariable(name: "w", scope: !5259, file: !864, line: 562, type: !12)
!5310 = !{!"2996"}
!5311 = !DILocalVariable(name: "v", scope: !5259, file: !864, line: 562, type: !12)
!5312 = !{!"2997"}
!5313 = !DILocalVariable(name: "d", scope: !5259, file: !864, line: 562, type: !12)
!5314 = !{!"2998"}
!5315 = !DILocalVariable(name: "e", scope: !5259, file: !864, line: 562, type: !12)
!5316 = !{!"2999"}
!5317 = !DILocation(line: 565, column: 20, scope: !5259)
!5318 = !{!"3000"}
!5319 = !DILocation(line: 565, column: 5, scope: !5259)
!5320 = !{!"3001"}
!5321 = !DILocation(line: 567, column: 28, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5259, file: !864, line: 567, column: 9)
!5323 = !{!"3002"}
!5324 = !DILocation(line: 567, column: 9, scope: !5322)
!5325 = !{!"3003"}
!5326 = !{!"3004"}
!5327 = !DILocation(line: 567, column: 38, scope: !5322)
!5328 = !{!"3005"}
!5329 = !DILocation(line: 567, column: 9, scope: !5259)
!5330 = !{!"3006"}
!5331 = !DILocation(line: 568, column: 9, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5322, file: !864, line: 567, column: 48)
!5333 = !{!"3007"}
!5334 = !DILocation(line: 571, column: 9, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5259, file: !864, line: 571, column: 9)
!5336 = !{!"3008"}
!5337 = !{!"3009"}
!5338 = !DILocation(line: 571, column: 24, scope: !5335)
!5339 = !{!"3010"}
!5340 = !DILocation(line: 571, column: 9, scope: !5259)
!5341 = !{!"3011"}
!5342 = !DILocation(line: 572, column: 27, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5335, file: !864, line: 571, column: 33)
!5344 = !{!"3012"}
!5345 = !DILocation(line: 572, column: 9, scope: !5343)
!5346 = !{!"3013"}
!5347 = !DILocation(line: 573, column: 17, scope: !5343)
!5348 = !{!"3014"}
!5349 = !DILocation(line: 573, column: 20, scope: !5343)
!5350 = !{!"3015"}
!5351 = !DILocation(line: 573, column: 9, scope: !5343)
!5352 = !{!"3016"}
!5353 = !DILocation(line: 574, column: 21, scope: !5343)
!5354 = !{!"3017"}
!5355 = !DILocation(line: 574, column: 24, scope: !5343)
!5356 = !{!"3018"}
!5357 = !DILocation(line: 574, column: 9, scope: !5343)
!5358 = !{!"3019"}
!5359 = !DILocation(line: 575, column: 5, scope: !5343)
!5360 = !{!"3020"}
!5361 = !DILocation(line: 576, column: 5, scope: !5259)
!5362 = !{!"3021"}
!5363 = !{!"3022"}
!5364 = !{!"3023"}
!5365 = !{!"3024"}
!5366 = !{!"3025"}
!5367 = !{!"3026"}
!5368 = !{!"3027"}
!5369 = !{!"3028"}
!5370 = !{!"3029"}
!5371 = !{!"3030"}
!5372 = !{!"3031"}
!5373 = !{!"3032"}
!5374 = !{!"3033"}
!5375 = !{!"3034"}
!5376 = !{!"3035"}
!5377 = !{!"3036"}
!5378 = !{!"3037"}
!5379 = !{!"3038"}
!5380 = !{!"3039"}
!5381 = !{!"3040"}
!5382 = !{!"3041"}
!5383 = !{!"3042"}
!5384 = !{!"3043"}
!5385 = !{!"3044"}
!5386 = !{!"3045"}
!5387 = !{!"3046"}
!5388 = !{!"3047"}
!5389 = !{!"3048"}
!5390 = !{!"3049"}
!5391 = !{!"3050"}
!5392 = !{!"3051"}
!5393 = !{!"3052"}
!5394 = !{!"3053"}
!5395 = !{!"3054"}
!5396 = !{!"3055"}
!5397 = !{!"3056"}
!5398 = !{!"3057"}
!5399 = !{!"3058"}
!5400 = !{!"3059"}
!5401 = !{!"3060"}
!5402 = !DILocalVariable(name: "i", scope: !5259, file: !864, line: 562, type: !12)
!5403 = !{!"3061"}
!5404 = !DILocation(line: 579, column: 10, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5259, file: !864, line: 579, column: 5)
!5406 = !{!"3062"}
!5407 = !DILocation(line: 0, scope: !5405)
!5408 = !{!"3063"}
!5409 = !{!"3064"}
!5410 = !DILocation(line: 579, column: 23, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5405, file: !864, line: 579, column: 5)
!5412 = !{!"3065"}
!5413 = !DILocation(line: 579, column: 19, scope: !5411)
!5414 = !{!"3066"}
!5415 = !DILocation(line: 579, column: 5, scope: !5405)
!5416 = !{!"3067"}
!5417 = !DILocation(line: 580, column: 9, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5411, file: !864, line: 579, column: 33)
!5419 = !{!"3068"}
!5420 = !{!"3069"}
!5421 = !{!"3070"}
!5422 = !{!"3071"}
!5423 = !{!"3072"}
!5424 = !{!"3073"}
!5425 = !{!"3074"}
!5426 = !{!"3075"}
!5427 = !{!"3076"}
!5428 = !{!"3077"}
!5429 = !{!"3078"}
!5430 = !{!"3079"}
!5431 = !{!"3080"}
!5432 = !{!"3081"}
!5433 = !{!"3082"}
!5434 = !{!"3083"}
!5435 = !{!"3084"}
!5436 = !{!"3085"}
!5437 = !{!"3086"}
!5438 = !{!"3087"}
!5439 = !{!"3088"}
!5440 = !{!"3089"}
!5441 = !{!"3090"}
!5442 = !{!"3091"}
!5443 = !{!"3092"}
!5444 = !{!"3093"}
!5445 = !{!"3094"}
!5446 = !{!"3095"}
!5447 = !{!"3096"}
!5448 = !{!"3097"}
!5449 = !{!"3098"}
!5450 = !{!"3099"}
!5451 = !{!"3100"}
!5452 = !{!"3101"}
!5453 = !{!"3102"}
!5454 = !{!"3103"}
!5455 = !{!"3104"}
!5456 = !{!"3105"}
!5457 = !{!"3106"}
!5458 = !{!"3107"}
!5459 = !{!"3108"}
!5460 = !{!"3109"}
!5461 = !{!"3110"}
!5462 = !{!"3111"}
!5463 = !{!"3112"}
!5464 = !{!"3113"}
!5465 = !{!"3114"}
!5466 = !{!"3115"}
!5467 = !{!"3116"}
!5468 = !{!"3117"}
!5469 = !{!"3118"}
!5470 = !{!"3119"}
!5471 = !{!"3120"}
!5472 = !{!"3121"}
!5473 = !{!"3122"}
!5474 = !{!"3123"}
!5475 = !{!"3124"}
!5476 = !{!"3125"}
!5477 = !{!"3126"}
!5478 = !{!"3127"}
!5479 = !DILocation(line: 581, column: 18, scope: !5418)
!5480 = !{!"3128"}
!5481 = !{!"3129"}
!5482 = !{!"3130"}
!5483 = !DILocation(line: 581, column: 27, scope: !5418)
!5484 = !{!"3131"}
!5485 = !{!"3132"}
!5486 = !{!"3133"}
!5487 = !DILocation(line: 581, column: 9, scope: !5418)
!5488 = !{!"3134"}
!5489 = !DILocalVariable(name: "j", scope: !5259, file: !864, line: 562, type: !12)
!5490 = !{!"3135"}
!5491 = !DILocation(line: 582, column: 14, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5418, file: !864, line: 582, column: 9)
!5493 = !{!"3136"}
!5494 = !DILocation(line: 0, scope: !5492)
!5495 = !{!"3137"}
!5496 = !{!"3138"}
!5497 = !DILocation(line: 582, column: 23, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5492, file: !864, line: 582, column: 9)
!5499 = !{!"3139"}
!5500 = !DILocation(line: 582, column: 9, scope: !5492)
!5501 = !{!"3140"}
!5502 = !DILocation(line: 582, column: 52, scope: !5498)
!5503 = !{!"3141"}
!5504 = !DILocation(line: 582, column: 46, scope: !5498)
!5505 = !{!"3142"}
!5506 = !{!"3143"}
!5507 = !{!"3144"}
!5508 = !DILocation(line: 582, column: 33, scope: !5498)
!5509 = !{!"3145"}
!5510 = !{!"3146"}
!5511 = !DILocation(line: 582, column: 29, scope: !5498)
!5512 = !{!"3147"}
!5513 = !{!"3148"}
!5514 = !DILocation(line: 582, column: 9, scope: !5498)
!5515 = distinct !{!5515, !5500, !5516, !517}
!5516 = !DILocation(line: 582, column: 55, scope: !5492)
!5517 = !{!"3149"}
!5518 = !DILocation(line: 583, column: 5, scope: !5418)
!5519 = !{!"3150"}
!5520 = !DILocation(line: 579, column: 29, scope: !5411)
!5521 = !{!"3151"}
!5522 = !{!"3152"}
!5523 = !DILocation(line: 579, column: 5, scope: !5411)
!5524 = distinct !{!5524, !5415, !5525, !517}
!5525 = !DILocation(line: 583, column: 5, scope: !5405)
!5526 = !{!"3153"}
!5527 = !DILocation(line: 585, column: 20, scope: !5259)
!5528 = !{!"3154"}
!5529 = !DILocation(line: 585, column: 14, scope: !5259)
!5530 = !{!"3155"}
!5531 = !{!"3156"}
!5532 = !{!"3157"}
!5533 = !DILocation(line: 585, column: 32, scope: !5259)
!5534 = !{!"3158"}
!5535 = !DILocation(line: 585, column: 25, scope: !5259)
!5536 = !{!"3159"}
!5537 = !{!"3160"}
!5538 = !{!"3161"}
!5539 = !DILocation(line: 585, column: 5, scope: !5259)
!5540 = !{!"3162"}
!5541 = !DILocation(line: 586, column: 20, scope: !5259)
!5542 = !{!"3163"}
!5543 = !{!"3164"}
!5544 = !DILocation(line: 586, column: 17, scope: !5259)
!5545 = !{!"3165"}
!5546 = !DILocation(line: 586, column: 23, scope: !5259)
!5547 = !{!"3166"}
!5548 = !DILocation(line: 586, column: 29, scope: !5259)
!5549 = !{!"3167"}
!5550 = !{!"3168"}
!5551 = !{!"3169"}
!5552 = !DILocation(line: 586, column: 5, scope: !5259)
!5553 = !{!"3170"}
!5554 = !DILocation(line: 587, column: 20, scope: !5259)
!5555 = !{!"3171"}
!5556 = !{!"3172"}
!5557 = !DILocation(line: 587, column: 17, scope: !5259)
!5558 = !{!"3173"}
!5559 = !DILocation(line: 587, column: 23, scope: !5259)
!5560 = !{!"3174"}
!5561 = !DILocation(line: 587, column: 29, scope: !5259)
!5562 = !{!"3175"}
!5563 = !{!"3176"}
!5564 = !{!"3177"}
!5565 = !DILocation(line: 587, column: 5, scope: !5259)
!5566 = !{!"3178"}
!5567 = !DILocalVariable(name: "index", scope: !5259, file: !864, line: 562, type: !12)
!5568 = !{!"3179"}
!5569 = !DILocalVariable(name: "index_group", scope: !5259, file: !864, line: 563, type: !22)
!5570 = !{!"3180"}
!5571 = !{!"3181"}
!5572 = !DILocation(line: 592, column: 10, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5259, file: !864, line: 592, column: 5)
!5574 = !{!"3182"}
!5575 = !DILocation(line: 0, scope: !5573)
!5576 = !{!"3183"}
!5577 = !DILocation(line: 590, column: 11, scope: !5259)
!5578 = !{!"3184"}
!5579 = !{!"3185"}
!5580 = !{!"3186"}
!5581 = !{!"3187"}
!5582 = !{!"3188"}
!5583 = !DILocation(line: 592, column: 23, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5573, file: !864, line: 592, column: 5)
!5585 = !{!"3189"}
!5586 = !DILocation(line: 592, column: 19, scope: !5584)
!5587 = !{!"3190"}
!5588 = !DILocation(line: 592, column: 5, scope: !5573)
!5589 = !{!"3191"}
!5590 = !{!"3192"}
!5591 = !DILocation(line: 594, column: 14, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5593, file: !864, line: 594, column: 9)
!5593 = distinct !DILexicalBlock(scope: !5584, file: !864, line: 593, column: 5)
!5594 = !{!"3193"}
!5595 = !DILocation(line: 0, scope: !5592)
!5596 = !{!"3194"}
!5597 = !{!"3195"}
!5598 = !{!"3196"}
!5599 = !{!"3197"}
!5600 = !DILocation(line: 594, column: 21, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5592, file: !864, line: 594, column: 9)
!5602 = !{!"3198"}
!5603 = !DILocation(line: 594, column: 23, scope: !5601)
!5604 = !{!"3199"}
!5605 = !DILocation(line: 594, column: 9, scope: !5592)
!5606 = !{!"3200"}
!5607 = !DILocation(line: 596, column: 24, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5601, file: !864, line: 595, column: 9)
!5609 = !{!"3201"}
!5610 = !{!"3202"}
!5611 = !DILocation(line: 596, column: 30, scope: !5608)
!5612 = !{!"3203"}
!5613 = !{!"3204"}
!5614 = !{!"3205"}
!5615 = !DILocation(line: 596, column: 34, scope: !5608)
!5616 = !{!"3206"}
!5617 = !{!"3207"}
!5618 = !DILocation(line: 596, column: 40, scope: !5608)
!5619 = !{!"3208"}
!5620 = !{!"3209"}
!5621 = !{!"3210"}
!5622 = !DILocation(line: 596, column: 48, scope: !5608)
!5623 = !{!"3211"}
!5624 = !{!"3212"}
!5625 = !DILocation(line: 596, column: 44, scope: !5608)
!5626 = !{!"3213"}
!5627 = !DILocation(line: 596, column: 13, scope: !5608)
!5628 = !{!"3214"}
!5629 = !DILocation(line: 597, column: 24, scope: !5608)
!5630 = !{!"3215"}
!5631 = !{!"3216"}
!5632 = !DILocation(line: 597, column: 30, scope: !5608)
!5633 = !{!"3217"}
!5634 = !{!"3218"}
!5635 = !{!"3219"}
!5636 = !DILocation(line: 597, column: 34, scope: !5608)
!5637 = !{!"3220"}
!5638 = !{!"3221"}
!5639 = !DILocation(line: 597, column: 40, scope: !5608)
!5640 = !{!"3222"}
!5641 = !{!"3223"}
!5642 = !{!"3224"}
!5643 = !DILocation(line: 597, column: 48, scope: !5608)
!5644 = !{!"3225"}
!5645 = !{!"3226"}
!5646 = !DILocation(line: 597, column: 44, scope: !5608)
!5647 = !{!"3227"}
!5648 = !DILocation(line: 597, column: 13, scope: !5608)
!5649 = !{!"3228"}
!5650 = !DILocation(line: 598, column: 29, scope: !5608)
!5651 = !{!"3229"}
!5652 = !{!"3230"}
!5653 = !DILocation(line: 598, column: 25, scope: !5608)
!5654 = !{!"3231"}
!5655 = !DILocation(line: 598, column: 13, scope: !5608)
!5656 = !{!"3232"}
!5657 = !DILocation(line: 598, column: 38, scope: !5608)
!5658 = !{!"3233"}
!5659 = !{!"3234"}
!5660 = !DILocation(line: 598, column: 34, scope: !5608)
!5661 = !{!"3235"}
!5662 = !{!"3236"}
!5663 = !DILocation(line: 598, column: 47, scope: !5608)
!5664 = !{!"3237"}
!5665 = !DILocation(line: 599, column: 24, scope: !5608)
!5666 = !{!"3238"}
!5667 = !{!"3239"}
!5668 = !DILocation(line: 599, column: 30, scope: !5608)
!5669 = !{!"3240"}
!5670 = !{!"3241"}
!5671 = !{!"3242"}
!5672 = !DILocation(line: 599, column: 34, scope: !5608)
!5673 = !{!"3243"}
!5674 = !{!"3244"}
!5675 = !DILocation(line: 599, column: 40, scope: !5608)
!5676 = !{!"3245"}
!5677 = !{!"3246"}
!5678 = !{!"3247"}
!5679 = !DILocation(line: 599, column: 48, scope: !5608)
!5680 = !{!"3248"}
!5681 = !{!"3249"}
!5682 = !DILocation(line: 599, column: 44, scope: !5608)
!5683 = !{!"3250"}
!5684 = !DILocation(line: 599, column: 13, scope: !5608)
!5685 = !{!"3251"}
!5686 = !DILocation(line: 600, column: 32, scope: !5608)
!5687 = !{!"3252"}
!5688 = !DILocation(line: 600, column: 25, scope: !5608)
!5689 = !{!"3253"}
!5690 = !{!"3254"}
!5691 = !{!"3255"}
!5692 = !DILocation(line: 600, column: 37, scope: !5608)
!5693 = !{!"3256"}
!5694 = !DILocation(line: 600, column: 41, scope: !5608)
!5695 = !{!"3257"}
!5696 = !DILocation(line: 600, column: 13, scope: !5608)
!5697 = !{!"3258"}
!5698 = !DILocation(line: 601, column: 18, scope: !5608)
!5699 = !{!"3259"}
!5700 = !{!"3260"}
!5701 = !DILocation(line: 602, column: 21, scope: !5608)
!5702 = !{!"3261"}
!5703 = !DILocation(line: 602, column: 24, scope: !5608)
!5704 = !{!"3262"}
!5705 = !DILocation(line: 602, column: 13, scope: !5608)
!5706 = !{!"3263"}
!5707 = !DILocation(line: 603, column: 25, scope: !5608)
!5708 = !{!"3264"}
!5709 = !DILocation(line: 603, column: 28, scope: !5608)
!5710 = !{!"3265"}
!5711 = !DILocation(line: 603, column: 13, scope: !5608)
!5712 = !{!"3266"}
!5713 = !DILocation(line: 604, column: 28, scope: !5608)
!5714 = !{!"3267"}
!5715 = !{!"3268"}
!5716 = !DILocation(line: 604, column: 25, scope: !5608)
!5717 = !{!"3269"}
!5718 = !DILocation(line: 604, column: 31, scope: !5608)
!5719 = !{!"3270"}
!5720 = !{!"3271"}
!5721 = !DILocation(line: 604, column: 41, scope: !5608)
!5722 = !{!"3272"}
!5723 = !{!"3273"}
!5724 = !{!"3274"}
!5725 = !DILocation(line: 604, column: 13, scope: !5608)
!5726 = !{!"3275"}
!5727 = !DILocation(line: 605, column: 28, scope: !5608)
!5728 = !{!"3276"}
!5729 = !{!"3277"}
!5730 = !DILocation(line: 605, column: 25, scope: !5608)
!5731 = !{!"3278"}
!5732 = !DILocation(line: 605, column: 31, scope: !5608)
!5733 = !{!"3279"}
!5734 = !{!"3280"}
!5735 = !DILocation(line: 605, column: 41, scope: !5608)
!5736 = !{!"3281"}
!5737 = !{!"3282"}
!5738 = !{!"3283"}
!5739 = !DILocation(line: 605, column: 13, scope: !5608)
!5740 = !{!"3284"}
!5741 = !DILocation(line: 606, column: 9, scope: !5608)
!5742 = !{!"3285"}
!5743 = !DILocation(line: 594, column: 39, scope: !5601)
!5744 = !{!"3286"}
!5745 = !{!"3287"}
!5746 = !DILocation(line: 594, column: 9, scope: !5601)
!5747 = distinct !{!5747, !5605, !5748, !517}
!5748 = !DILocation(line: 606, column: 9, scope: !5592)
!5749 = !{!"3288"}
!5750 = !DILocation(line: 607, column: 24, scope: !5593)
!5751 = !{!"3289"}
!5752 = !{!"3290"}
!5753 = !DILocation(line: 608, column: 5, scope: !5593)
!5754 = !{!"3291"}
!5755 = !DILocation(line: 592, column: 29, scope: !5584)
!5756 = !{!"3292"}
!5757 = !{!"3293"}
!5758 = !DILocation(line: 592, column: 5, scope: !5584)
!5759 = distinct !{!5759, !5588, !5760, !517}
!5760 = !DILocation(line: 608, column: 5, scope: !5573)
!5761 = !{!"3294"}
!5762 = !DILocation(line: 611, column: 10, scope: !5259)
!5763 = !{!"3295"}
!5764 = !{!"3296"}
!5765 = !{!"3297"}
!5766 = !DILocation(line: 612, column: 10, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5259, file: !864, line: 612, column: 5)
!5768 = !{!"3298"}
!5769 = !DILocation(line: 0, scope: !5767)
!5770 = !{!"3299"}
!5771 = !{!"3300"}
!5772 = !DILocation(line: 612, column: 23, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5767, file: !864, line: 612, column: 5)
!5774 = !{!"3301"}
!5775 = !DILocation(line: 612, column: 19, scope: !5773)
!5776 = !{!"3302"}
!5777 = !DILocation(line: 612, column: 5, scope: !5767)
!5778 = !{!"3303"}
!5779 = !{!"3304"}
!5780 = !DILocation(line: 614, column: 14, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5782, file: !864, line: 614, column: 9)
!5782 = distinct !DILexicalBlock(scope: !5773, file: !864, line: 613, column: 5)
!5783 = !{!"3305"}
!5784 = !DILocation(line: 0, scope: !5781)
!5785 = !{!"3306"}
!5786 = !{!"3307"}
!5787 = !DILocation(line: 614, column: 23, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5781, file: !864, line: 614, column: 9)
!5789 = !{!"3308"}
!5790 = !DILocation(line: 614, column: 9, scope: !5781)
!5791 = !{!"3309"}
!5792 = !DILocation(line: 616, column: 28, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5788, file: !864, line: 615, column: 9)
!5794 = !{!"3310"}
!5795 = !DILocation(line: 616, column: 35, scope: !5793)
!5796 = !{!"3311"}
!5797 = !DILocation(line: 616, column: 25, scope: !5793)
!5798 = !{!"3312"}
!5799 = !{!"3313"}
!5800 = !DILocation(line: 616, column: 41, scope: !5793)
!5801 = !{!"3314"}
!5802 = !{!"3315"}
!5803 = !{!"3316"}
!5804 = !DILocation(line: 616, column: 48, scope: !5793)
!5805 = !{!"3317"}
!5806 = !{!"3318"}
!5807 = !DILocation(line: 616, column: 45, scope: !5793)
!5808 = !{!"3319"}
!5809 = !DILocation(line: 616, column: 13, scope: !5793)
!5810 = !{!"3320"}
!5811 = !DILocation(line: 617, column: 28, scope: !5793)
!5812 = !{!"3321"}
!5813 = !DILocation(line: 617, column: 35, scope: !5793)
!5814 = !{!"3322"}
!5815 = !DILocation(line: 617, column: 25, scope: !5793)
!5816 = !{!"3323"}
!5817 = !{!"3324"}
!5818 = !DILocation(line: 617, column: 41, scope: !5793)
!5819 = !{!"3325"}
!5820 = !{!"3326"}
!5821 = !{!"3327"}
!5822 = !DILocation(line: 617, column: 48, scope: !5793)
!5823 = !{!"3328"}
!5824 = !{!"3329"}
!5825 = !DILocation(line: 617, column: 45, scope: !5793)
!5826 = !{!"3330"}
!5827 = !DILocation(line: 617, column: 13, scope: !5793)
!5828 = !{!"3331"}
!5829 = !DILocation(line: 618, column: 28, scope: !5793)
!5830 = !{!"3332"}
!5831 = !{!"3333"}
!5832 = !DILocation(line: 618, column: 25, scope: !5793)
!5833 = !{!"3334"}
!5834 = !DILocation(line: 618, column: 13, scope: !5793)
!5835 = !{!"3335"}
!5836 = !DILocation(line: 618, column: 35, scope: !5793)
!5837 = !{!"3336"}
!5838 = !{!"3337"}
!5839 = !DILocation(line: 618, column: 32, scope: !5793)
!5840 = !{!"3338"}
!5841 = !{!"3339"}
!5842 = !DILocation(line: 618, column: 43, scope: !5793)
!5843 = !{!"3340"}
!5844 = !DILocalVariable(name: "k", scope: !5259, file: !864, line: 562, type: !12)
!5845 = !{!"3341"}
!5846 = !DILocation(line: 619, column: 18, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5793, file: !864, line: 619, column: 13)
!5848 = !{!"3342"}
!5849 = !DILocation(line: 0, scope: !5847)
!5850 = !{!"3343"}
!5851 = !{!"3344"}
!5852 = !DILocation(line: 619, column: 27, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5847, file: !864, line: 619, column: 13)
!5854 = !{!"3345"}
!5855 = !DILocation(line: 619, column: 13, scope: !5847)
!5856 = !{!"3346"}
!5857 = !DILocation(line: 619, column: 50, scope: !5853)
!5858 = !{!"3347"}
!5859 = !DILocation(line: 619, column: 37, scope: !5853)
!5860 = !{!"3348"}
!5861 = !{!"3349"}
!5862 = !DILocation(line: 619, column: 33, scope: !5853)
!5863 = !{!"3350"}
!5864 = !{!"3351"}
!5865 = !DILocation(line: 619, column: 13, scope: !5853)
!5866 = distinct !{!5866, !5855, !5867, !517}
!5867 = !DILocation(line: 619, column: 51, scope: !5847)
!5868 = !{!"3352"}
!5869 = !DILocation(line: 620, column: 21, scope: !5793)
!5870 = !{!"3353"}
!5871 = !DILocation(line: 620, column: 24, scope: !5793)
!5872 = !{!"3354"}
!5873 = !DILocation(line: 620, column: 13, scope: !5793)
!5874 = !{!"3355"}
!5875 = !DILocation(line: 621, column: 25, scope: !5793)
!5876 = !{!"3356"}
!5877 = !DILocation(line: 621, column: 28, scope: !5793)
!5878 = !{!"3357"}
!5879 = !DILocation(line: 621, column: 13, scope: !5793)
!5880 = !{!"3358"}
!5881 = !DILocation(line: 622, column: 28, scope: !5793)
!5882 = !{!"3359"}
!5883 = !{!"3360"}
!5884 = !DILocation(line: 622, column: 25, scope: !5793)
!5885 = !{!"3361"}
!5886 = !DILocation(line: 622, column: 35, scope: !5793)
!5887 = !{!"3362"}
!5888 = !DILocation(line: 622, column: 38, scope: !5793)
!5889 = !{!"3363"}
!5890 = !DILocation(line: 622, column: 45, scope: !5793)
!5891 = !{!"3364"}
!5892 = !DILocation(line: 622, column: 31, scope: !5793)
!5893 = !{!"3365"}
!5894 = !{!"3366"}
!5895 = !DILocation(line: 622, column: 51, scope: !5793)
!5896 = !{!"3367"}
!5897 = !{!"3368"}
!5898 = !{!"3369"}
!5899 = !DILocation(line: 622, column: 13, scope: !5793)
!5900 = !{!"3370"}
!5901 = !DILocation(line: 623, column: 28, scope: !5793)
!5902 = !{!"3371"}
!5903 = !{!"3372"}
!5904 = !DILocation(line: 623, column: 25, scope: !5793)
!5905 = !{!"3373"}
!5906 = !DILocation(line: 623, column: 35, scope: !5793)
!5907 = !{!"3374"}
!5908 = !DILocation(line: 623, column: 38, scope: !5793)
!5909 = !{!"3375"}
!5910 = !DILocation(line: 623, column: 45, scope: !5793)
!5911 = !{!"3376"}
!5912 = !DILocation(line: 623, column: 31, scope: !5793)
!5913 = !{!"3377"}
!5914 = !{!"3378"}
!5915 = !DILocation(line: 623, column: 51, scope: !5793)
!5916 = !{!"3379"}
!5917 = !{!"3380"}
!5918 = !{!"3381"}
!5919 = !DILocation(line: 623, column: 13, scope: !5793)
!5920 = !{!"3382"}
!5921 = !DILocation(line: 624, column: 9, scope: !5793)
!5922 = !{!"3383"}
!5923 = !DILocation(line: 614, column: 33, scope: !5788)
!5924 = !{!"3384"}
!5925 = !{!"3385"}
!5926 = !DILocation(line: 614, column: 9, scope: !5788)
!5927 = distinct !{!5927, !5790, !5928, !517}
!5928 = !DILocation(line: 624, column: 9, scope: !5781)
!5929 = !{!"3386"}
!5930 = !DILocation(line: 625, column: 5, scope: !5782)
!5931 = !{!"3387"}
!5932 = !DILocation(line: 612, column: 29, scope: !5773)
!5933 = !{!"3388"}
!5934 = !{!"3389"}
!5935 = !DILocation(line: 612, column: 5, scope: !5773)
!5936 = distinct !{!5936, !5777, !5937, !517}
!5937 = !DILocation(line: 625, column: 5, scope: !5767)
!5938 = !{!"3390"}
!5939 = !{!"3391"}
!5940 = !DILocation(line: 627, column: 10, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5259, file: !864, line: 627, column: 5)
!5942 = !{!"3392"}
!5943 = !DILocation(line: 0, scope: !5941)
!5944 = !{!"3393"}
!5945 = !{!"3394"}
!5946 = !DILocation(line: 627, column: 19, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5941, file: !864, line: 627, column: 5)
!5948 = !{!"3395"}
!5949 = !DILocation(line: 627, column: 5, scope: !5941)
!5950 = !{!"3396"}
!5951 = !DILocation(line: 629, column: 20, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5947, file: !864, line: 628, column: 5)
!5953 = !{!"3397"}
!5954 = !{!"3398"}
!5955 = !DILocation(line: 629, column: 26, scope: !5952)
!5956 = !{!"3399"}
!5957 = !{!"3400"}
!5958 = !{!"3401"}
!5959 = !DILocation(line: 629, column: 30, scope: !5952)
!5960 = !{!"3402"}
!5961 = !{!"3403"}
!5962 = !DILocation(line: 629, column: 36, scope: !5952)
!5963 = !{!"3404"}
!5964 = !{!"3405"}
!5965 = !{!"3406"}
!5966 = !DILocation(line: 629, column: 40, scope: !5952)
!5967 = !{!"3407"}
!5968 = !{!"3408"}
!5969 = !DILocation(line: 629, column: 50, scope: !5952)
!5970 = !{!"3409"}
!5971 = !{!"3410"}
!5972 = !{!"3411"}
!5973 = !DILocation(line: 629, column: 9, scope: !5952)
!5974 = !{!"3412"}
!5975 = !DILocation(line: 630, column: 37, scope: !5952)
!5976 = !{!"3413"}
!5977 = !DILocation(line: 630, column: 20, scope: !5952)
!5978 = !{!"3414"}
!5979 = !DILocation(line: 630, column: 40, scope: !5952)
!5980 = !{!"3415"}
!5981 = !{!"3416"}
!5982 = !DILocation(line: 630, column: 50, scope: !5952)
!5983 = !{!"3417"}
!5984 = !{!"3418"}
!5985 = !{!"3419"}
!5986 = !DILocation(line: 630, column: 54, scope: !5952)
!5987 = !{!"3420"}
!5988 = !{!"3421"}
!5989 = !DILocation(line: 630, column: 64, scope: !5952)
!5990 = !{!"3422"}
!5991 = !{!"3423"}
!5992 = !{!"3424"}
!5993 = !DILocation(line: 630, column: 9, scope: !5952)
!5994 = !{!"3425"}
!5995 = !DILocation(line: 631, column: 20, scope: !5952)
!5996 = !{!"3426"}
!5997 = !{!"3427"}
!5998 = !DILocation(line: 631, column: 30, scope: !5952)
!5999 = !{!"3428"}
!6000 = !{!"3429"}
!6001 = !{!"3430"}
!6002 = !DILocation(line: 631, column: 34, scope: !5952)
!6003 = !{!"3431"}
!6004 = !{!"3432"}
!6005 = !DILocation(line: 631, column: 44, scope: !5952)
!6006 = !{!"3433"}
!6007 = !{!"3434"}
!6008 = !{!"3435"}
!6009 = !DILocation(line: 631, column: 48, scope: !5952)
!6010 = !{!"3436"}
!6011 = !{!"3437"}
!6012 = !DILocation(line: 631, column: 58, scope: !5952)
!6013 = !{!"3438"}
!6014 = !{!"3439"}
!6015 = !{!"3440"}
!6016 = !DILocation(line: 631, column: 9, scope: !5952)
!6017 = !{!"3441"}
!6018 = !DILocation(line: 632, column: 20, scope: !5952)
!6019 = !{!"3442"}
!6020 = !{!"3443"}
!6021 = !DILocation(line: 632, column: 26, scope: !5952)
!6022 = !{!"3444"}
!6023 = !{!"3445"}
!6024 = !{!"3446"}
!6025 = !DILocation(line: 632, column: 30, scope: !5952)
!6026 = !{!"3447"}
!6027 = !{!"3448"}
!6028 = !DILocation(line: 632, column: 36, scope: !5952)
!6029 = !{!"3449"}
!6030 = !{!"3450"}
!6031 = !{!"3451"}
!6032 = !DILocation(line: 632, column: 40, scope: !5952)
!6033 = !{!"3452"}
!6034 = !{!"3453"}
!6035 = !DILocation(line: 632, column: 50, scope: !5952)
!6036 = !{!"3454"}
!6037 = !{!"3455"}
!6038 = !{!"3456"}
!6039 = !DILocation(line: 632, column: 9, scope: !5952)
!6040 = !{!"3457"}
!6041 = !DILocation(line: 633, column: 20, scope: !5952)
!6042 = !{!"3458"}
!6043 = !{!"3459"}
!6044 = !DILocation(line: 633, column: 26, scope: !5952)
!6045 = !{!"3460"}
!6046 = !{!"3461"}
!6047 = !{!"3462"}
!6048 = !DILocation(line: 633, column: 30, scope: !5952)
!6049 = !{!"3463"}
!6050 = !{!"3464"}
!6051 = !DILocation(line: 633, column: 36, scope: !5952)
!6052 = !{!"3465"}
!6053 = !{!"3466"}
!6054 = !{!"3467"}
!6055 = !DILocation(line: 633, column: 40, scope: !5952)
!6056 = !{!"3468"}
!6057 = !{!"3469"}
!6058 = !DILocation(line: 633, column: 50, scope: !5952)
!6059 = !{!"3470"}
!6060 = !{!"3471"}
!6061 = !{!"3472"}
!6062 = !DILocation(line: 633, column: 9, scope: !5952)
!6063 = !{!"3473"}
!6064 = !DILocation(line: 634, column: 5, scope: !5952)
!6065 = !{!"3474"}
!6066 = !DILocation(line: 627, column: 41, scope: !5947)
!6067 = !{!"3475"}
!6068 = !{!"3476"}
!6069 = !DILocation(line: 627, column: 5, scope: !5947)
!6070 = distinct !{!6070, !5949, !6071, !517}
!6071 = !DILocation(line: 634, column: 5, scope: !5941)
!6072 = !{!"3477"}
!6073 = !DILocation(line: 636, column: 5, scope: !5259)
!6074 = !{!"3478"}
!6075 = !{!"3479"}
!6076 = !DILocation(line: 637, column: 1, scope: !5259)
!6077 = !{!"3480"}
!6078 = distinct !DISubprogram(name: "eccnorm_wrapper", scope: !3, file: !3, line: 9, type: !3786, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!6079 = !DILocalVariable(name: "P", arg: 1, scope: !6078, file: !3, line: 9, type: !3788)
!6080 = !DILocation(line: 0, scope: !6078)
!6081 = !{!"3481"}
!6082 = !DILocalVariable(name: "Q", arg: 2, scope: !6078, file: !3, line: 9, type: !3752)
!6083 = !{!"3482"}
!6084 = !DILocation(line: 11, column: 13, scope: !6078)
!6085 = !{!"3483"}
!6086 = !DILocation(line: 11, column: 3, scope: !6078)
!6087 = !{!"3484"}
!6088 = !DILocation(line: 12, column: 13, scope: !6078)
!6089 = !{!"3485"}
!6090 = !DILocation(line: 12, column: 3, scope: !6078)
!6091 = !{!"3486"}
!6092 = !DILocation(line: 14, column: 3, scope: !6078)
!6093 = !{!"3487"}
!6094 = !DILocation(line: 15, column: 1, scope: !6078)
!6095 = !{!"3488"}
!6096 = distinct !DISubprogram(name: "eccnorm_wrapper_t", scope: !3, file: !3, line: 20, type: !6097, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!6097 = !DISubroutineType(types: !6098)
!6098 = !{null}
!6099 = !{!"3489"}
!6100 = !{!"3490"}
!6101 = !DILocalVariable(name: "P", scope: !6096, file: !3, line: 22, type: !4453)
!6102 = !DILocation(line: 22, column: 19, scope: !6096)
!6103 = !{!"3491"}
!6104 = !DILocation(line: 22, column: 23, scope: !6096)
!6105 = !{!"3492"}
!6106 = !DILocation(line: 22, column: 24, scope: !6096)
!6107 = !{!"3493"}
!6108 = !DILocalVariable(name: "Q", scope: !6096, file: !3, line: 23, type: !5280)
!6109 = !DILocation(line: 23, column: 11, scope: !6096)
!6110 = !{!"3494"}
!6111 = !DILocation(line: 23, column: 15, scope: !6096)
!6112 = !{!"3495"}
!6113 = !DILocation(line: 23, column: 16, scope: !6096)
!6114 = !{!"3496"}
!6115 = !DILocation(line: 24, column: 11, scope: !6096)
!6116 = !{!"3497"}
!6117 = !DILocation(line: 24, column: 13, scope: !6096)
!6118 = !{!"3498"}
!6119 = !DILocation(line: 24, column: 3, scope: !6096)
!6120 = !{!"3499"}
!6121 = !DILocation(line: 25, column: 1, scope: !6096)
!6122 = !{!"3500"}
!6123 = distinct !DISubprogram(name: "fp2div1271", scope: !41, file: !41, line: 400, type: !3204, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!6124 = !DILocalVariable(name: "a", arg: 1, scope: !6123, file: !41, line: 400, type: !15)
!6125 = !DILocation(line: 0, scope: !6123)
!6126 = !{!"3501"}
!6127 = !DILocation(line: 402, column: 15, scope: !6123)
!6128 = !{!"3502"}
!6129 = !{!"3503"}
!6130 = !DILocation(line: 402, column: 5, scope: !6123)
!6131 = !{!"3504"}
!6132 = !DILocation(line: 403, column: 15, scope: !6123)
!6133 = !{!"3505"}
!6134 = !{!"3506"}
!6135 = !DILocation(line: 403, column: 5, scope: !6123)
!6136 = !{!"3507"}
!6137 = !DILocation(line: 404, column: 1, scope: !6123)
!6138 = !{!"3508"}
!6139 = distinct !DISubprogram(name: "fpdiv1271", scope: !41, file: !41, line: 380, type: !2044, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!6140 = !DILocalVariable(name: "a", arg: 1, scope: !6139, file: !41, line: 380, type: !14)
!6141 = !DILocation(line: 0, scope: !6139)
!6142 = !{!"3509"}
!6143 = !DILocalVariable(name: "carry", scope: !6139, file: !41, line: 383, type: !12)
!6144 = !{!"3510"}
!6145 = !DILocation(line: 386, column: 17, scope: !6139)
!6146 = !{!"3511"}
!6147 = !{!"3512"}
!6148 = !DILocation(line: 386, column: 22, scope: !6139)
!6149 = !{!"3513"}
!6150 = !DILocation(line: 386, column: 14, scope: !6139)
!6151 = !{!"3514"}
!6152 = !DILocalVariable(name: "mask", scope: !6139, file: !41, line: 382, type: !6)
!6153 = !{!"3515"}
!6154 = !DILocalVariable(name: "i", scope: !6139, file: !41, line: 384, type: !12)
!6155 = !{!"3516"}
!6156 = !DILocation(line: 388, column: 10, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6139, file: !41, line: 388, column: 5)
!6158 = !{!"3517"}
!6159 = !{!"3518"}
!6160 = !DILocation(line: 0, scope: !6157)
!6161 = !{!"3519"}
!6162 = !{!"3520"}
!6163 = !{!"3521"}
!6164 = !DILocation(line: 388, column: 19, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6157, file: !41, line: 388, column: 5)
!6166 = !{!"3522"}
!6167 = !DILocation(line: 388, column: 5, scope: !6157)
!6168 = !{!"3523"}
!6169 = !DILocation(line: 389, column: 9, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6171, file: !41, line: 389, column: 9)
!6171 = distinct !DILexicalBlock(scope: !6165, file: !41, line: 388, column: 44)
!6172 = !{!"3524"}
!6173 = !DILocalVariable(name: "tempReg", scope: !6170, file: !41, line: 389, type: !6)
!6174 = !DILocation(line: 0, scope: !6170)
!6175 = !{!"3525"}
!6176 = !{!"3526"}
!6177 = !{!"3527"}
!6178 = !{!"3528"}
!6179 = !{!"3529"}
!6180 = !{!"3530"}
!6181 = !{!"3531"}
!6182 = !{!"3532"}
!6183 = !{!"3533"}
!6184 = !{!"3534"}
!6185 = !{!"3535"}
!6186 = !{!"3536"}
!6187 = !{!"3537"}
!6188 = !{!"3538"}
!6189 = !{!"3539"}
!6190 = !DILocation(line: 390, column: 5, scope: !6171)
!6191 = !{!"3540"}
!6192 = !DILocation(line: 388, column: 40, scope: !6165)
!6193 = !{!"3541"}
!6194 = !{!"3542"}
!6195 = !DILocation(line: 388, column: 5, scope: !6165)
!6196 = distinct !{!6196, !6167, !6197, !517}
!6197 = !DILocation(line: 390, column: 5, scope: !6157)
!6198 = !{!"3543"}
!6199 = !DILocation(line: 391, column: 5, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6139, file: !41, line: 391, column: 5)
!6201 = !{!"3544"}
!6202 = !{!"3545"}
!6203 = !DILocalVariable(name: "tempReg", scope: !6200, file: !41, line: 391, type: !6)
!6204 = !DILocation(line: 0, scope: !6200)
!6205 = !{!"3546"}
!6206 = !{!"3547"}
!6207 = !{!"3548"}
!6208 = !{!"3549"}
!6209 = !{!"3550"}
!6210 = !{!"3551"}
!6211 = !{!"3552"}
!6212 = !{!"3553"}
!6213 = !{!"3554"}
!6214 = !{!"3555"}
!6215 = !{!"3556"}
!6216 = !{!"3557"}
!6217 = !{!"3558"}
!6218 = !DILocation(line: 393, column: 10, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6139, file: !41, line: 393, column: 5)
!6220 = !{!"3559"}
!6221 = !DILocation(line: 0, scope: !6219)
!6222 = !{!"3560"}
!6223 = !{!"3561"}
!6224 = !DILocation(line: 393, column: 19, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6219, file: !41, line: 393, column: 5)
!6226 = !{!"3562"}
!6227 = !DILocation(line: 393, column: 5, scope: !6219)
!6228 = !{!"3563"}
!6229 = !DILocation(line: 394, column: 9, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6225, file: !41, line: 393, column: 44)
!6231 = !{!"3564"}
!6232 = !{!"3565"}
!6233 = !{!"3566"}
!6234 = !{!"3567"}
!6235 = !{!"3568"}
!6236 = !{!"3569"}
!6237 = !{!"3570"}
!6238 = !{!"3571"}
!6239 = !{!"3572"}
!6240 = !{!"3573"}
!6241 = !{!"3574"}
!6242 = !{!"3575"}
!6243 = !{!"3576"}
!6244 = !DILocation(line: 395, column: 5, scope: !6230)
!6245 = !{!"3577"}
!6246 = !DILocation(line: 393, column: 40, scope: !6225)
!6247 = !{!"3578"}
!6248 = !{!"3579"}
!6249 = !DILocation(line: 393, column: 5, scope: !6225)
!6250 = distinct !{!6250, !6227, !6251, !517}
!6251 = !DILocation(line: 395, column: 5, scope: !6219)
!6252 = !{!"3580"}
!6253 = !DILocation(line: 396, column: 26, scope: !6139)
!6254 = !{!"3581"}
!6255 = !{!"3582"}
!6256 = !DILocation(line: 396, column: 44, scope: !6139)
!6257 = !{!"3583"}
!6258 = !DILocation(line: 396, column: 5, scope: !6139)
!6259 = !{!"3584"}
!6260 = !DILocation(line: 396, column: 23, scope: !6139)
!6261 = !{!"3585"}
!6262 = !DILocation(line: 397, column: 1, scope: !6139)
!6263 = !{!"3586"}
