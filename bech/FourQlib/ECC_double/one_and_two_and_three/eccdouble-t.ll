; ModuleID = 'eccdouble-k.ll'
source_filename = "eccdouble.c"
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
  %2 = sub i32 0, %0, !dbg !896, !psr.id !897
  %3 = or i32 %0, %2, !dbg !898, !psr.id !899
  %4 = lshr i32 %3, 31, !dbg !900, !psr.id !901
  ret i32 %4, !dbg !902, !psr.id !903
}

declare dso_local void @fpneg1271(i32*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @table_lookup_fixed_base([1 x %struct.point_precomp]* %0, %struct.point_precomp* %1, i32 %2, i32 %3) #0 !dbg !904 {
  %5 = alloca [1 x %struct.point_precomp], align 16, !psr.id !908
  %6 = alloca [1 x %struct.point_precomp], align 16, !psr.id !909
  call void @llvm.dbg.value(metadata [1 x %struct.point_precomp]* %0, metadata !910, metadata !DIExpression()), !dbg !911, !psr.id !912
  call void @llvm.dbg.value(metadata %struct.point_precomp* %1, metadata !913, metadata !DIExpression()), !dbg !911, !psr.id !914
  call void @llvm.dbg.value(metadata i32 %2, metadata !915, metadata !DIExpression()), !dbg !911, !psr.id !916
  call void @llvm.dbg.value(metadata i32 %3, metadata !917, metadata !DIExpression()), !dbg !911, !psr.id !918
  call void @llvm.dbg.declare(metadata [1 x %struct.point_precomp]* %5, metadata !919, metadata !DIExpression()), !dbg !920, !psr.id !921
  call void @llvm.dbg.declare(metadata [1 x %struct.point_precomp]* %6, metadata !922, metadata !DIExpression()), !dbg !923, !psr.id !924
  %7 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 0, !dbg !925, !psr.id !926
  %8 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %7, i64 0, i64 0, !dbg !925, !psr.id !927
  %9 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %8, i32 0, i32 0, !dbg !925, !psr.id !928
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !925, !psr.id !929
  %11 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !925, !psr.id !930
  %12 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %11, i32 0, i32 0, !dbg !925, !psr.id !931
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %12, i64 0, i64 0, !dbg !925, !psr.id !932
  call void @fp2copy1271([4 x i32]* %10, [4 x i32]* %13), !dbg !925, !psr.id !933
  %14 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 0, !dbg !925, !psr.id !934
  %15 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %14, i64 0, i64 0, !dbg !925, !psr.id !935
  %16 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %15, i32 0, i32 1, !dbg !925, !psr.id !936
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %16, i64 0, i64 0, !dbg !925, !psr.id !937
  %18 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !925, !psr.id !938
  %19 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %18, i32 0, i32 1, !dbg !925, !psr.id !939
  %20 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %19, i64 0, i64 0, !dbg !925, !psr.id !940
  call void @fp2copy1271([4 x i32]* %17, [4 x i32]* %20), !dbg !925, !psr.id !941
  %21 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 0, !dbg !925, !psr.id !942
  %22 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %21, i64 0, i64 0, !dbg !925, !psr.id !943
  %23 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %22, i32 0, i32 2, !dbg !925, !psr.id !944
  %24 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %23, i64 0, i64 0, !dbg !925, !psr.id !945
  %25 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !925, !psr.id !946
  %26 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %25, i32 0, i32 2, !dbg !925, !psr.id !947
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !925, !psr.id !948
  call void @fp2copy1271([4 x i32]* %24, [4 x i32]* %27), !dbg !925, !psr.id !949
  call void @llvm.dbg.value(metadata i32 1, metadata !950, metadata !DIExpression()), !dbg !911, !psr.id !951
  br label %28, !dbg !952, !psr.id !954

28:                                               ; preds = %220, %4
  %.02 = phi i32 [ %2, %4 ], [ %31, %220 ], !psr.id !955
  %.01 = phi i32 [ 1, %4 ], [ %221, %220 ], !dbg !956, !psr.id !957
  call void @llvm.dbg.value(metadata i32 %.01, metadata !950, metadata !DIExpression()), !dbg !911, !psr.id !958
  call void @llvm.dbg.value(metadata i32 %.02, metadata !915, metadata !DIExpression()), !dbg !911, !psr.id !959
  %29 = icmp ult i32 %.01, 16, !dbg !960, !psr.id !962
  br i1 %29, label %30, label %222, !dbg !963, !psr.id !964

30:                                               ; preds = %28
  %31 = add i32 %.02, -1, !dbg !965, !psr.id !967
  call void @llvm.dbg.value(metadata i32 %31, metadata !915, metadata !DIExpression()), !dbg !911, !psr.id !968
  %32 = call i32 @is_digit_nonzero_ct(i32 %31), !dbg !969, !psr.id !970
  %33 = sub i32 %32, 1, !dbg !971, !psr.id !972
  call void @llvm.dbg.value(metadata i32 %33, metadata !973, metadata !DIExpression()), !dbg !911, !psr.id !974
  %34 = zext i32 %.01 to i64, !dbg !975, !psr.id !976
  %35 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %34, !dbg !975, !psr.id !977
  %36 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %35, i64 0, i64 0, !dbg !975, !psr.id !978
  %37 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %36, i32 0, i32 0, !dbg !975, !psr.id !979
  %38 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %37, i64 0, i64 0, !dbg !975, !psr.id !980
  %39 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !975, !psr.id !981
  %40 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %39, i32 0, i32 0, !dbg !975, !psr.id !982
  %41 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %40, i64 0, i64 0, !dbg !975, !psr.id !983
  call void @fp2copy1271([4 x i32]* %38, [4 x i32]* %41), !dbg !975, !psr.id !984
  %42 = zext i32 %.01 to i64, !dbg !975, !psr.id !985
  %43 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %42, !dbg !975, !psr.id !986
  %44 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %43, i64 0, i64 0, !dbg !975, !psr.id !987
  %45 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %44, i32 0, i32 1, !dbg !975, !psr.id !988
  %46 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %45, i64 0, i64 0, !dbg !975, !psr.id !989
  %47 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !975, !psr.id !990
  %48 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %47, i32 0, i32 1, !dbg !975, !psr.id !991
  %49 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %48, i64 0, i64 0, !dbg !975, !psr.id !992
  call void @fp2copy1271([4 x i32]* %46, [4 x i32]* %49), !dbg !975, !psr.id !993
  %50 = zext i32 %.01 to i64, !dbg !975, !psr.id !994
  %51 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %50, !dbg !975, !psr.id !995
  %52 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %51, i64 0, i64 0, !dbg !975, !psr.id !996
  %53 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %52, i32 0, i32 2, !dbg !975, !psr.id !997
  %54 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %53, i64 0, i64 0, !dbg !975, !psr.id !998
  %55 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !975, !psr.id !999
  %56 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %55, i32 0, i32 2, !dbg !975, !psr.id !1000
  %57 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %56, i64 0, i64 0, !dbg !975, !psr.id !1001
  call void @fp2copy1271([4 x i32]* %54, [4 x i32]* %57), !dbg !975, !psr.id !1002
  call void @llvm.dbg.value(metadata i32 0, metadata !1003, metadata !DIExpression()), !dbg !911, !psr.id !1004
  br label %58, !dbg !1005, !psr.id !1007

58:                                               ; preds = %217, %30
  %.0 = phi i32 [ 0, %30 ], [ %218, %217 ], !dbg !1008, !psr.id !1009
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1003, metadata !DIExpression()), !dbg !911, !psr.id !1010
  %59 = icmp ult i32 %.0, 4, !dbg !1011, !psr.id !1013
  br i1 %59, label %60, label %219, !dbg !1014, !psr.id !1015

60:                                               ; preds = %58
  %61 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1016, !psr.id !1018
  %62 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %61, i32 0, i32 0, !dbg !1016, !psr.id !1019
  %63 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %62, i64 0, i64 0, !dbg !1020, !psr.id !1021
  %64 = zext i32 %.0 to i64, !dbg !1020, !psr.id !1022
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i64 0, i64 %64, !dbg !1020, !psr.id !1023
  %66 = load i32, i32* %65, align 4, !dbg !1020, !psr.id !1024
  %67 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1025, !psr.id !1026
  %68 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %67, i32 0, i32 0, !dbg !1025, !psr.id !1027
  %69 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %68, i64 0, i64 0, !dbg !1028, !psr.id !1029
  %70 = zext i32 %.0 to i64, !dbg !1028, !psr.id !1030
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i64 0, i64 %70, !dbg !1028, !psr.id !1031
  %72 = load i32, i32* %71, align 4, !dbg !1028, !psr.id !1032
  %73 = xor i32 %66, %72, !dbg !1033, !psr.id !1034
  %74 = and i32 %33, %73, !dbg !1035, !psr.id !1036
  %75 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1037, !psr.id !1038
  %76 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %75, i32 0, i32 0, !dbg !1037, !psr.id !1039
  %77 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %76, i64 0, i64 0, !dbg !1040, !psr.id !1041
  %78 = zext i32 %.0 to i64, !dbg !1040, !psr.id !1042
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %77, i64 0, i64 %78, !dbg !1040, !psr.id !1043
  %80 = load i32, i32* %79, align 4, !dbg !1040, !psr.id !1044
  %81 = xor i32 %74, %80, !dbg !1045, !psr.id !1046
  %82 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1047, !psr.id !1048
  %83 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %82, i32 0, i32 0, !dbg !1047, !psr.id !1049
  %84 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %83, i64 0, i64 0, !dbg !1050, !psr.id !1051
  %85 = zext i32 %.0 to i64, !dbg !1050, !psr.id !1052
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %84, i64 0, i64 %85, !dbg !1050, !psr.id !1053
  store i32 %81, i32* %86, align 4, !dbg !1054, !psr.id !1055
  %87 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1056, !psr.id !1057
  %88 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %87, i32 0, i32 0, !dbg !1056, !psr.id !1058
  %89 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %88, i64 0, i64 1, !dbg !1059, !psr.id !1060
  %90 = zext i32 %.0 to i64, !dbg !1059, !psr.id !1061
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %89, i64 0, i64 %90, !dbg !1059, !psr.id !1062
  %92 = load i32, i32* %91, align 4, !dbg !1059, !psr.id !1063
  %93 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1064, !psr.id !1065
  %94 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %93, i32 0, i32 0, !dbg !1064, !psr.id !1066
  %95 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %94, i64 0, i64 1, !dbg !1067, !psr.id !1068
  %96 = zext i32 %.0 to i64, !dbg !1067, !psr.id !1069
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %95, i64 0, i64 %96, !dbg !1067, !psr.id !1070
  %98 = load i32, i32* %97, align 4, !dbg !1067, !psr.id !1071
  %99 = xor i32 %92, %98, !dbg !1072, !psr.id !1073
  %100 = and i32 %33, %99, !dbg !1074, !psr.id !1075
  %101 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1076, !psr.id !1077
  %102 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %101, i32 0, i32 0, !dbg !1076, !psr.id !1078
  %103 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %102, i64 0, i64 1, !dbg !1079, !psr.id !1080
  %104 = zext i32 %.0 to i64, !dbg !1079, !psr.id !1081
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %103, i64 0, i64 %104, !dbg !1079, !psr.id !1082
  %106 = load i32, i32* %105, align 4, !dbg !1079, !psr.id !1083
  %107 = xor i32 %100, %106, !dbg !1084, !psr.id !1085
  %108 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1086, !psr.id !1087
  %109 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %108, i32 0, i32 0, !dbg !1086, !psr.id !1088
  %110 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %109, i64 0, i64 1, !dbg !1089, !psr.id !1090
  %111 = zext i32 %.0 to i64, !dbg !1089, !psr.id !1091
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %110, i64 0, i64 %111, !dbg !1089, !psr.id !1092
  store i32 %107, i32* %112, align 4, !dbg !1093, !psr.id !1094
  %113 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1095, !psr.id !1096
  %114 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %113, i32 0, i32 1, !dbg !1095, !psr.id !1097
  %115 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %114, i64 0, i64 0, !dbg !1098, !psr.id !1099
  %116 = zext i32 %.0 to i64, !dbg !1098, !psr.id !1100
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %115, i64 0, i64 %116, !dbg !1098, !psr.id !1101
  %118 = load i32, i32* %117, align 4, !dbg !1098, !psr.id !1102
  %119 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1103, !psr.id !1104
  %120 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %119, i32 0, i32 1, !dbg !1103, !psr.id !1105
  %121 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %120, i64 0, i64 0, !dbg !1106, !psr.id !1107
  %122 = zext i32 %.0 to i64, !dbg !1106, !psr.id !1108
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %121, i64 0, i64 %122, !dbg !1106, !psr.id !1109
  %124 = load i32, i32* %123, align 4, !dbg !1106, !psr.id !1110
  %125 = xor i32 %118, %124, !dbg !1111, !psr.id !1112
  %126 = and i32 %33, %125, !dbg !1113, !psr.id !1114
  %127 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1115, !psr.id !1116
  %128 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %127, i32 0, i32 1, !dbg !1115, !psr.id !1117
  %129 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %128, i64 0, i64 0, !dbg !1118, !psr.id !1119
  %130 = zext i32 %.0 to i64, !dbg !1118, !psr.id !1120
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %129, i64 0, i64 %130, !dbg !1118, !psr.id !1121
  %132 = load i32, i32* %131, align 4, !dbg !1118, !psr.id !1122
  %133 = xor i32 %126, %132, !dbg !1123, !psr.id !1124
  %134 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1125, !psr.id !1126
  %135 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %134, i32 0, i32 1, !dbg !1125, !psr.id !1127
  %136 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %135, i64 0, i64 0, !dbg !1128, !psr.id !1129
  %137 = zext i32 %.0 to i64, !dbg !1128, !psr.id !1130
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %136, i64 0, i64 %137, !dbg !1128, !psr.id !1131
  store i32 %133, i32* %138, align 4, !dbg !1132, !psr.id !1133
  %139 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1134, !psr.id !1135
  %140 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %139, i32 0, i32 1, !dbg !1134, !psr.id !1136
  %141 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %140, i64 0, i64 1, !dbg !1137, !psr.id !1138
  %142 = zext i32 %.0 to i64, !dbg !1137, !psr.id !1139
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %141, i64 0, i64 %142, !dbg !1137, !psr.id !1140
  %144 = load i32, i32* %143, align 4, !dbg !1137, !psr.id !1141
  %145 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1142, !psr.id !1143
  %146 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %145, i32 0, i32 1, !dbg !1142, !psr.id !1144
  %147 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %146, i64 0, i64 1, !dbg !1145, !psr.id !1146
  %148 = zext i32 %.0 to i64, !dbg !1145, !psr.id !1147
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %147, i64 0, i64 %148, !dbg !1145, !psr.id !1148
  %150 = load i32, i32* %149, align 4, !dbg !1145, !psr.id !1149
  %151 = xor i32 %144, %150, !dbg !1150, !psr.id !1151
  %152 = and i32 %33, %151, !dbg !1152, !psr.id !1153
  %153 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1154, !psr.id !1155
  %154 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %153, i32 0, i32 1, !dbg !1154, !psr.id !1156
  %155 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %154, i64 0, i64 1, !dbg !1157, !psr.id !1158
  %156 = zext i32 %.0 to i64, !dbg !1157, !psr.id !1159
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %155, i64 0, i64 %156, !dbg !1157, !psr.id !1160
  %158 = load i32, i32* %157, align 4, !dbg !1157, !psr.id !1161
  %159 = xor i32 %152, %158, !dbg !1162, !psr.id !1163
  %160 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1164, !psr.id !1165
  %161 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %160, i32 0, i32 1, !dbg !1164, !psr.id !1166
  %162 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %161, i64 0, i64 1, !dbg !1167, !psr.id !1168
  %163 = zext i32 %.0 to i64, !dbg !1167, !psr.id !1169
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %162, i64 0, i64 %163, !dbg !1167, !psr.id !1170
  store i32 %159, i32* %164, align 4, !dbg !1171, !psr.id !1172
  %165 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1173, !psr.id !1174
  %166 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %165, i32 0, i32 2, !dbg !1173, !psr.id !1175
  %167 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %166, i64 0, i64 0, !dbg !1176, !psr.id !1177
  %168 = zext i32 %.0 to i64, !dbg !1176, !psr.id !1178
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %167, i64 0, i64 %168, !dbg !1176, !psr.id !1179
  %170 = load i32, i32* %169, align 4, !dbg !1176, !psr.id !1180
  %171 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1181, !psr.id !1182
  %172 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %171, i32 0, i32 2, !dbg !1181, !psr.id !1183
  %173 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %172, i64 0, i64 0, !dbg !1184, !psr.id !1185
  %174 = zext i32 %.0 to i64, !dbg !1184, !psr.id !1186
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %173, i64 0, i64 %174, !dbg !1184, !psr.id !1187
  %176 = load i32, i32* %175, align 4, !dbg !1184, !psr.id !1188
  %177 = xor i32 %170, %176, !dbg !1189, !psr.id !1190
  %178 = and i32 %33, %177, !dbg !1191, !psr.id !1192
  %179 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1193, !psr.id !1194
  %180 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %179, i32 0, i32 2, !dbg !1193, !psr.id !1195
  %181 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %180, i64 0, i64 0, !dbg !1196, !psr.id !1197
  %182 = zext i32 %.0 to i64, !dbg !1196, !psr.id !1198
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %181, i64 0, i64 %182, !dbg !1196, !psr.id !1199
  %184 = load i32, i32* %183, align 4, !dbg !1196, !psr.id !1200
  %185 = xor i32 %178, %184, !dbg !1201, !psr.id !1202
  %186 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1203, !psr.id !1204
  %187 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %186, i32 0, i32 2, !dbg !1203, !psr.id !1205
  %188 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %187, i64 0, i64 0, !dbg !1206, !psr.id !1207
  %189 = zext i32 %.0 to i64, !dbg !1206, !psr.id !1208
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %188, i64 0, i64 %189, !dbg !1206, !psr.id !1209
  store i32 %185, i32* %190, align 4, !dbg !1210, !psr.id !1211
  %191 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1212, !psr.id !1213
  %192 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %191, i32 0, i32 2, !dbg !1212, !psr.id !1214
  %193 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %192, i64 0, i64 1, !dbg !1215, !psr.id !1216
  %194 = zext i32 %.0 to i64, !dbg !1215, !psr.id !1217
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %193, i64 0, i64 %194, !dbg !1215, !psr.id !1218
  %196 = load i32, i32* %195, align 4, !dbg !1215, !psr.id !1219
  %197 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1220, !psr.id !1221
  %198 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %197, i32 0, i32 2, !dbg !1220, !psr.id !1222
  %199 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %198, i64 0, i64 1, !dbg !1223, !psr.id !1224
  %200 = zext i32 %.0 to i64, !dbg !1223, !psr.id !1225
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %199, i64 0, i64 %200, !dbg !1223, !psr.id !1226
  %202 = load i32, i32* %201, align 4, !dbg !1223, !psr.id !1227
  %203 = xor i32 %196, %202, !dbg !1228, !psr.id !1229
  %204 = and i32 %33, %203, !dbg !1230, !psr.id !1231
  %205 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1232, !psr.id !1233
  %206 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %205, i32 0, i32 2, !dbg !1232, !psr.id !1234
  %207 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %206, i64 0, i64 1, !dbg !1235, !psr.id !1236
  %208 = zext i32 %.0 to i64, !dbg !1235, !psr.id !1237
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %207, i64 0, i64 %208, !dbg !1235, !psr.id !1238
  %210 = load i32, i32* %209, align 4, !dbg !1235, !psr.id !1239
  %211 = xor i32 %204, %210, !dbg !1240, !psr.id !1241
  %212 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1242, !psr.id !1243
  %213 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %212, i32 0, i32 2, !dbg !1242, !psr.id !1244
  %214 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %213, i64 0, i64 1, !dbg !1245, !psr.id !1246
  %215 = zext i32 %.0 to i64, !dbg !1245, !psr.id !1247
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %214, i64 0, i64 %215, !dbg !1245, !psr.id !1248
  store i32 %211, i32* %216, align 4, !dbg !1249, !psr.id !1250
  br label %217, !dbg !1251, !psr.id !1252

217:                                              ; preds = %60
  %218 = add i32 %.0, 1, !dbg !1253, !psr.id !1254
  call void @llvm.dbg.value(metadata i32 %218, metadata !1003, metadata !DIExpression()), !dbg !911, !psr.id !1255
  br label %58, !dbg !1256, !llvm.loop !1257, !psr.id !1259

219:                                              ; preds = %58
  br label %220, !dbg !1260, !psr.id !1261

220:                                              ; preds = %219
  %221 = add i32 %.01, 1, !dbg !1262, !psr.id !1263
  call void @llvm.dbg.value(metadata i32 %221, metadata !950, metadata !DIExpression()), !dbg !911, !psr.id !1264
  br label %28, !dbg !1265, !llvm.loop !1266, !psr.id !1268

222:                                              ; preds = %28
  %223 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1269, !psr.id !1270
  %224 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %223, i32 0, i32 2, !dbg !1269, !psr.id !1271
  %225 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %224, i64 0, i64 0, !dbg !1272, !psr.id !1273
  %226 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1274, !psr.id !1275
  %227 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %226, i32 0, i32 2, !dbg !1274, !psr.id !1276
  %228 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %227, i64 0, i64 0, !dbg !1277, !psr.id !1278
  call void @fp2copy1271([4 x i32]* %225, [4 x i32]* %228), !dbg !1279, !psr.id !1280
  %229 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1281, !psr.id !1282
  %230 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %229, i32 0, i32 0, !dbg !1281, !psr.id !1283
  %231 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %230, i64 0, i64 0, !dbg !1284, !psr.id !1285
  %232 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1286, !psr.id !1287
  %233 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %232, i32 0, i32 1, !dbg !1286, !psr.id !1288
  %234 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %233, i64 0, i64 0, !dbg !1289, !psr.id !1290
  call void @fp2copy1271([4 x i32]* %231, [4 x i32]* %234), !dbg !1291, !psr.id !1292
  %235 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1293, !psr.id !1294
  %236 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %235, i32 0, i32 1, !dbg !1293, !psr.id !1295
  %237 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %236, i64 0, i64 0, !dbg !1296, !psr.id !1297
  %238 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1298, !psr.id !1299
  %239 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %238, i32 0, i32 0, !dbg !1298, !psr.id !1300
  %240 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %239, i64 0, i64 0, !dbg !1301, !psr.id !1302
  call void @fp2copy1271([4 x i32]* %237, [4 x i32]* %240), !dbg !1303, !psr.id !1304
  %241 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1305, !psr.id !1306
  %242 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %241, i32 0, i32 2, !dbg !1305, !psr.id !1307
  %243 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %242, i64 0, i64 0, !dbg !1308, !psr.id !1309
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %243, i64 0, i64 0, !dbg !1308, !psr.id !1310
  call void @fpneg1271(i32* %244), !dbg !1311, !psr.id !1312
  %245 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1313, !psr.id !1314
  %246 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %245, i32 0, i32 2, !dbg !1313, !psr.id !1315
  %247 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %246, i64 0, i64 1, !dbg !1316, !psr.id !1317
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %247, i64 0, i64 0, !dbg !1316, !psr.id !1318
  call void @fpneg1271(i32* %248), !dbg !1319, !psr.id !1320
  call void @llvm.dbg.value(metadata i32 0, metadata !1003, metadata !DIExpression()), !dbg !911, !psr.id !1321
  br label %249, !dbg !1322, !psr.id !1324

249:                                              ; preds = %408, %222
  %.1 = phi i32 [ 0, %222 ], [ %409, %408 ], !dbg !1325, !psr.id !1326
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1003, metadata !DIExpression()), !dbg !911, !psr.id !1327
  %250 = icmp ult i32 %.1, 4, !dbg !1328, !psr.id !1330
  br i1 %250, label %251, label %410, !dbg !1331, !psr.id !1332

251:                                              ; preds = %249
  %252 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1333, !psr.id !1335
  %253 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %252, i32 0, i32 0, !dbg !1333, !psr.id !1336
  %254 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %253, i64 0, i64 0, !dbg !1337, !psr.id !1338
  %255 = zext i32 %.1 to i64, !dbg !1337, !psr.id !1339
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %254, i64 0, i64 %255, !dbg !1337, !psr.id !1340
  %257 = load i32, i32* %256, align 4, !dbg !1337, !psr.id !1341
  %258 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1342, !psr.id !1343
  %259 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %258, i32 0, i32 0, !dbg !1342, !psr.id !1344
  %260 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %259, i64 0, i64 0, !dbg !1345, !psr.id !1346
  %261 = zext i32 %.1 to i64, !dbg !1345, !psr.id !1347
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* %260, i64 0, i64 %261, !dbg !1345, !psr.id !1348
  %263 = load i32, i32* %262, align 4, !dbg !1345, !psr.id !1349
  %264 = xor i32 %257, %263, !dbg !1350, !psr.id !1351
  %265 = and i32 %3, %264, !dbg !1352, !psr.id !1353
  %266 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1354, !psr.id !1355
  %267 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %266, i32 0, i32 0, !dbg !1354, !psr.id !1356
  %268 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %267, i64 0, i64 0, !dbg !1357, !psr.id !1358
  %269 = zext i32 %.1 to i64, !dbg !1357, !psr.id !1359
  %270 = getelementptr inbounds [4 x i32], [4 x i32]* %268, i64 0, i64 %269, !dbg !1357, !psr.id !1360
  %271 = load i32, i32* %270, align 4, !dbg !1357, !psr.id !1361
  %272 = xor i32 %265, %271, !dbg !1362, !psr.id !1363
  %273 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1364, !psr.id !1365
  %274 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %273, i32 0, i32 0, !dbg !1364, !psr.id !1366
  %275 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %274, i64 0, i64 0, !dbg !1367, !psr.id !1368
  %276 = zext i32 %.1 to i64, !dbg !1367, !psr.id !1369
  %277 = getelementptr inbounds [4 x i32], [4 x i32]* %275, i64 0, i64 %276, !dbg !1367, !psr.id !1370
  store i32 %272, i32* %277, align 4, !dbg !1371, !psr.id !1372
  %278 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1373, !psr.id !1374
  %279 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %278, i32 0, i32 0, !dbg !1373, !psr.id !1375
  %280 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %279, i64 0, i64 1, !dbg !1376, !psr.id !1377
  %281 = zext i32 %.1 to i64, !dbg !1376, !psr.id !1378
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %280, i64 0, i64 %281, !dbg !1376, !psr.id !1379
  %283 = load i32, i32* %282, align 4, !dbg !1376, !psr.id !1380
  %284 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1381, !psr.id !1382
  %285 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %284, i32 0, i32 0, !dbg !1381, !psr.id !1383
  %286 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %285, i64 0, i64 1, !dbg !1384, !psr.id !1385
  %287 = zext i32 %.1 to i64, !dbg !1384, !psr.id !1386
  %288 = getelementptr inbounds [4 x i32], [4 x i32]* %286, i64 0, i64 %287, !dbg !1384, !psr.id !1387
  %289 = load i32, i32* %288, align 4, !dbg !1384, !psr.id !1388
  %290 = xor i32 %283, %289, !dbg !1389, !psr.id !1390
  %291 = and i32 %3, %290, !dbg !1391, !psr.id !1392
  %292 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1393, !psr.id !1394
  %293 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %292, i32 0, i32 0, !dbg !1393, !psr.id !1395
  %294 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %293, i64 0, i64 1, !dbg !1396, !psr.id !1397
  %295 = zext i32 %.1 to i64, !dbg !1396, !psr.id !1398
  %296 = getelementptr inbounds [4 x i32], [4 x i32]* %294, i64 0, i64 %295, !dbg !1396, !psr.id !1399
  %297 = load i32, i32* %296, align 4, !dbg !1396, !psr.id !1400
  %298 = xor i32 %291, %297, !dbg !1401, !psr.id !1402
  %299 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1403, !psr.id !1404
  %300 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %299, i32 0, i32 0, !dbg !1403, !psr.id !1405
  %301 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %300, i64 0, i64 1, !dbg !1406, !psr.id !1407
  %302 = zext i32 %.1 to i64, !dbg !1406, !psr.id !1408
  %303 = getelementptr inbounds [4 x i32], [4 x i32]* %301, i64 0, i64 %302, !dbg !1406, !psr.id !1409
  store i32 %298, i32* %303, align 4, !dbg !1410, !psr.id !1411
  %304 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1412, !psr.id !1413
  %305 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %304, i32 0, i32 1, !dbg !1412, !psr.id !1414
  %306 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %305, i64 0, i64 0, !dbg !1415, !psr.id !1416
  %307 = zext i32 %.1 to i64, !dbg !1415, !psr.id !1417
  %308 = getelementptr inbounds [4 x i32], [4 x i32]* %306, i64 0, i64 %307, !dbg !1415, !psr.id !1418
  %309 = load i32, i32* %308, align 4, !dbg !1415, !psr.id !1419
  %310 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1420, !psr.id !1421
  %311 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %310, i32 0, i32 1, !dbg !1420, !psr.id !1422
  %312 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %311, i64 0, i64 0, !dbg !1423, !psr.id !1424
  %313 = zext i32 %.1 to i64, !dbg !1423, !psr.id !1425
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %312, i64 0, i64 %313, !dbg !1423, !psr.id !1426
  %315 = load i32, i32* %314, align 4, !dbg !1423, !psr.id !1427
  %316 = xor i32 %309, %315, !dbg !1428, !psr.id !1429
  %317 = and i32 %3, %316, !dbg !1430, !psr.id !1431
  %318 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1432, !psr.id !1433
  %319 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %318, i32 0, i32 1, !dbg !1432, !psr.id !1434
  %320 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %319, i64 0, i64 0, !dbg !1435, !psr.id !1436
  %321 = zext i32 %.1 to i64, !dbg !1435, !psr.id !1437
  %322 = getelementptr inbounds [4 x i32], [4 x i32]* %320, i64 0, i64 %321, !dbg !1435, !psr.id !1438
  %323 = load i32, i32* %322, align 4, !dbg !1435, !psr.id !1439
  %324 = xor i32 %317, %323, !dbg !1440, !psr.id !1441
  %325 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1442, !psr.id !1443
  %326 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %325, i32 0, i32 1, !dbg !1442, !psr.id !1444
  %327 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %326, i64 0, i64 0, !dbg !1445, !psr.id !1446
  %328 = zext i32 %.1 to i64, !dbg !1445, !psr.id !1447
  %329 = getelementptr inbounds [4 x i32], [4 x i32]* %327, i64 0, i64 %328, !dbg !1445, !psr.id !1448
  store i32 %324, i32* %329, align 4, !dbg !1449, !psr.id !1450
  %330 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1451, !psr.id !1452
  %331 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %330, i32 0, i32 1, !dbg !1451, !psr.id !1453
  %332 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %331, i64 0, i64 1, !dbg !1454, !psr.id !1455
  %333 = zext i32 %.1 to i64, !dbg !1454, !psr.id !1456
  %334 = getelementptr inbounds [4 x i32], [4 x i32]* %332, i64 0, i64 %333, !dbg !1454, !psr.id !1457
  %335 = load i32, i32* %334, align 4, !dbg !1454, !psr.id !1458
  %336 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1459, !psr.id !1460
  %337 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %336, i32 0, i32 1, !dbg !1459, !psr.id !1461
  %338 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %337, i64 0, i64 1, !dbg !1462, !psr.id !1463
  %339 = zext i32 %.1 to i64, !dbg !1462, !psr.id !1464
  %340 = getelementptr inbounds [4 x i32], [4 x i32]* %338, i64 0, i64 %339, !dbg !1462, !psr.id !1465
  %341 = load i32, i32* %340, align 4, !dbg !1462, !psr.id !1466
  %342 = xor i32 %335, %341, !dbg !1467, !psr.id !1468
  %343 = and i32 %3, %342, !dbg !1469, !psr.id !1470
  %344 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1471, !psr.id !1472
  %345 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %344, i32 0, i32 1, !dbg !1471, !psr.id !1473
  %346 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %345, i64 0, i64 1, !dbg !1474, !psr.id !1475
  %347 = zext i32 %.1 to i64, !dbg !1474, !psr.id !1476
  %348 = getelementptr inbounds [4 x i32], [4 x i32]* %346, i64 0, i64 %347, !dbg !1474, !psr.id !1477
  %349 = load i32, i32* %348, align 4, !dbg !1474, !psr.id !1478
  %350 = xor i32 %343, %349, !dbg !1479, !psr.id !1480
  %351 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1481, !psr.id !1482
  %352 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %351, i32 0, i32 1, !dbg !1481, !psr.id !1483
  %353 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %352, i64 0, i64 1, !dbg !1484, !psr.id !1485
  %354 = zext i32 %.1 to i64, !dbg !1484, !psr.id !1486
  %355 = getelementptr inbounds [4 x i32], [4 x i32]* %353, i64 0, i64 %354, !dbg !1484, !psr.id !1487
  store i32 %350, i32* %355, align 4, !dbg !1488, !psr.id !1489
  %356 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1490, !psr.id !1491
  %357 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %356, i32 0, i32 2, !dbg !1490, !psr.id !1492
  %358 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %357, i64 0, i64 0, !dbg !1493, !psr.id !1494
  %359 = zext i32 %.1 to i64, !dbg !1493, !psr.id !1495
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* %358, i64 0, i64 %359, !dbg !1493, !psr.id !1496
  %361 = load i32, i32* %360, align 4, !dbg !1493, !psr.id !1497
  %362 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1498, !psr.id !1499
  %363 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %362, i32 0, i32 2, !dbg !1498, !psr.id !1500
  %364 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %363, i64 0, i64 0, !dbg !1501, !psr.id !1502
  %365 = zext i32 %.1 to i64, !dbg !1501, !psr.id !1503
  %366 = getelementptr inbounds [4 x i32], [4 x i32]* %364, i64 0, i64 %365, !dbg !1501, !psr.id !1504
  %367 = load i32, i32* %366, align 4, !dbg !1501, !psr.id !1505
  %368 = xor i32 %361, %367, !dbg !1506, !psr.id !1507
  %369 = and i32 %3, %368, !dbg !1508, !psr.id !1509
  %370 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1510, !psr.id !1511
  %371 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %370, i32 0, i32 2, !dbg !1510, !psr.id !1512
  %372 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %371, i64 0, i64 0, !dbg !1513, !psr.id !1514
  %373 = zext i32 %.1 to i64, !dbg !1513, !psr.id !1515
  %374 = getelementptr inbounds [4 x i32], [4 x i32]* %372, i64 0, i64 %373, !dbg !1513, !psr.id !1516
  %375 = load i32, i32* %374, align 4, !dbg !1513, !psr.id !1517
  %376 = xor i32 %369, %375, !dbg !1518, !psr.id !1519
  %377 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1520, !psr.id !1521
  %378 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %377, i32 0, i32 2, !dbg !1520, !psr.id !1522
  %379 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %378, i64 0, i64 0, !dbg !1523, !psr.id !1524
  %380 = zext i32 %.1 to i64, !dbg !1523, !psr.id !1525
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %379, i64 0, i64 %380, !dbg !1523, !psr.id !1526
  store i32 %376, i32* %381, align 4, !dbg !1527, !psr.id !1528
  %382 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1529, !psr.id !1530
  %383 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %382, i32 0, i32 2, !dbg !1529, !psr.id !1531
  %384 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %383, i64 0, i64 1, !dbg !1532, !psr.id !1533
  %385 = zext i32 %.1 to i64, !dbg !1532, !psr.id !1534
  %386 = getelementptr inbounds [4 x i32], [4 x i32]* %384, i64 0, i64 %385, !dbg !1532, !psr.id !1535
  %387 = load i32, i32* %386, align 4, !dbg !1532, !psr.id !1536
  %388 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !1537, !psr.id !1538
  %389 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %388, i32 0, i32 2, !dbg !1537, !psr.id !1539
  %390 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %389, i64 0, i64 1, !dbg !1540, !psr.id !1541
  %391 = zext i32 %.1 to i64, !dbg !1540, !psr.id !1542
  %392 = getelementptr inbounds [4 x i32], [4 x i32]* %390, i64 0, i64 %391, !dbg !1540, !psr.id !1543
  %393 = load i32, i32* %392, align 4, !dbg !1540, !psr.id !1544
  %394 = xor i32 %387, %393, !dbg !1545, !psr.id !1546
  %395 = and i32 %3, %394, !dbg !1547, !psr.id !1548
  %396 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1549, !psr.id !1550
  %397 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %396, i32 0, i32 2, !dbg !1549, !psr.id !1551
  %398 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %397, i64 0, i64 1, !dbg !1552, !psr.id !1553
  %399 = zext i32 %.1 to i64, !dbg !1552, !psr.id !1554
  %400 = getelementptr inbounds [4 x i32], [4 x i32]* %398, i64 0, i64 %399, !dbg !1552, !psr.id !1555
  %401 = load i32, i32* %400, align 4, !dbg !1552, !psr.id !1556
  %402 = xor i32 %395, %401, !dbg !1557, !psr.id !1558
  %403 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1559, !psr.id !1560
  %404 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %403, i32 0, i32 2, !dbg !1559, !psr.id !1561
  %405 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %404, i64 0, i64 1, !dbg !1562, !psr.id !1563
  %406 = zext i32 %.1 to i64, !dbg !1562, !psr.id !1564
  %407 = getelementptr inbounds [4 x i32], [4 x i32]* %405, i64 0, i64 %406, !dbg !1562, !psr.id !1565
  store i32 %402, i32* %407, align 4, !dbg !1566, !psr.id !1567
  br label %408, !dbg !1568, !psr.id !1569

408:                                              ; preds = %251
  %409 = add i32 %.1, 1, !dbg !1570, !psr.id !1571
  call void @llvm.dbg.value(metadata i32 %409, metadata !1003, metadata !DIExpression()), !dbg !911, !psr.id !1572
  br label %249, !dbg !1573, !llvm.loop !1574, !psr.id !1576

410:                                              ; preds = %249
  %411 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1577, !psr.id !1578
  %412 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %411, i32 0, i32 0, !dbg !1577, !psr.id !1579
  %413 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %412, i64 0, i64 0, !dbg !1577, !psr.id !1580
  %414 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %1, i32 0, i32 0, !dbg !1577, !psr.id !1581
  %415 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %414, i64 0, i64 0, !dbg !1577, !psr.id !1582
  call void @fp2copy1271([4 x i32]* %413, [4 x i32]* %415), !dbg !1577, !psr.id !1583
  %416 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1577, !psr.id !1584
  %417 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %416, i32 0, i32 1, !dbg !1577, !psr.id !1585
  %418 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %417, i64 0, i64 0, !dbg !1577, !psr.id !1586
  %419 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %1, i32 0, i32 1, !dbg !1577, !psr.id !1587
  %420 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %419, i64 0, i64 0, !dbg !1577, !psr.id !1588
  call void @fp2copy1271([4 x i32]* %418, [4 x i32]* %420), !dbg !1577, !psr.id !1589
  %421 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !1577, !psr.id !1590
  %422 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %421, i32 0, i32 2, !dbg !1577, !psr.id !1591
  %423 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %422, i64 0, i64 0, !dbg !1577, !psr.id !1592
  %424 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %1, i32 0, i32 2, !dbg !1577, !psr.id !1593
  %425 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %424, i64 0, i64 0, !dbg !1577, !psr.id !1594
  call void @fp2copy1271([4 x i32]* %423, [4 x i32]* %425), !dbg !1577, !psr.id !1595
  ret void, !dbg !1596, !psr.id !1597
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @digit_x_digit(i32 %0, i32 %1, i32* %2) #0 !dbg !1598 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1601, metadata !DIExpression()), !dbg !1602, !psr.id !1603
  call void @llvm.dbg.value(metadata i32 %1, metadata !1604, metadata !DIExpression()), !dbg !1602, !psr.id !1605
  call void @llvm.dbg.value(metadata i32* %2, metadata !1606, metadata !DIExpression()), !dbg !1602, !psr.id !1607
  call void @llvm.dbg.value(metadata i32 65535, metadata !1608, metadata !DIExpression()), !dbg !1602, !psr.id !1609
  call void @llvm.dbg.value(metadata i32 -65536, metadata !1610, metadata !DIExpression()), !dbg !1602, !psr.id !1611
  %4 = and i32 %0, 65535, !dbg !1612, !psr.id !1613
  call void @llvm.dbg.value(metadata i32 %4, metadata !1614, metadata !DIExpression()), !dbg !1602, !psr.id !1615
  %5 = lshr i32 %0, 16, !dbg !1616, !psr.id !1617
  call void @llvm.dbg.value(metadata i32 %5, metadata !1618, metadata !DIExpression()), !dbg !1602, !psr.id !1619
  %6 = and i32 %1, 65535, !dbg !1620, !psr.id !1621
  call void @llvm.dbg.value(metadata i32 %6, metadata !1622, metadata !DIExpression()), !dbg !1602, !psr.id !1623
  %7 = lshr i32 %1, 16, !dbg !1624, !psr.id !1625
  call void @llvm.dbg.value(metadata i32 %7, metadata !1626, metadata !DIExpression()), !dbg !1602, !psr.id !1627
  %8 = mul i32 %4, %6, !dbg !1628, !psr.id !1629
  call void @llvm.dbg.value(metadata i32 %8, metadata !1630, metadata !DIExpression()), !dbg !1602, !psr.id !1631
  %9 = mul i32 %4, %7, !dbg !1632, !psr.id !1633
  call void @llvm.dbg.value(metadata i32 %9, metadata !1634, metadata !DIExpression()), !dbg !1602, !psr.id !1635
  %10 = mul i32 %5, %6, !dbg !1636, !psr.id !1637
  call void @llvm.dbg.value(metadata i32 %10, metadata !1638, metadata !DIExpression()), !dbg !1602, !psr.id !1639
  %11 = mul i32 %5, %7, !dbg !1640, !psr.id !1641
  call void @llvm.dbg.value(metadata i32 %11, metadata !1642, metadata !DIExpression()), !dbg !1602, !psr.id !1643
  %12 = and i32 %8, 65535, !dbg !1644, !psr.id !1645
  %13 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1646, !psr.id !1647
  store i32 %12, i32* %13, align 4, !dbg !1648, !psr.id !1649
  %14 = lshr i32 %8, 16, !dbg !1650, !psr.id !1651
  call void @llvm.dbg.value(metadata i32 %14, metadata !1652, metadata !DIExpression()), !dbg !1602, !psr.id !1653
  %15 = and i32 %10, 65535, !dbg !1654, !psr.id !1655
  call void @llvm.dbg.value(metadata i32 %15, metadata !1656, metadata !DIExpression()), !dbg !1602, !psr.id !1657
  %16 = and i32 %9, 65535, !dbg !1658, !psr.id !1659
  call void @llvm.dbg.value(metadata i32 %16, metadata !1660, metadata !DIExpression()), !dbg !1602, !psr.id !1661
  %17 = add i32 %14, %15, !dbg !1662, !psr.id !1663
  %18 = add i32 %17, %16, !dbg !1664, !psr.id !1665
  call void @llvm.dbg.value(metadata i32 %18, metadata !1666, metadata !DIExpression()), !dbg !1602, !psr.id !1667
  %19 = lshr i32 %18, 16, !dbg !1668, !psr.id !1669
  call void @llvm.dbg.value(metadata i32 %19, metadata !1670, metadata !DIExpression()), !dbg !1602, !psr.id !1671
  %20 = shl i32 %18, 16, !dbg !1672, !psr.id !1673
  %21 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1674, !psr.id !1675
  %22 = load i32, i32* %21, align 4, !dbg !1676, !psr.id !1677
  %23 = xor i32 %22, %20, !dbg !1676, !psr.id !1678
  store i32 %23, i32* %21, align 4, !dbg !1676, !psr.id !1679
  %24 = lshr i32 %10, 16, !dbg !1680, !psr.id !1681
  call void @llvm.dbg.value(metadata i32 %24, metadata !1652, metadata !DIExpression()), !dbg !1602, !psr.id !1682
  %25 = lshr i32 %9, 16, !dbg !1683, !psr.id !1684
  call void @llvm.dbg.value(metadata i32 %25, metadata !1656, metadata !DIExpression()), !dbg !1602, !psr.id !1685
  %26 = and i32 %11, 65535, !dbg !1686, !psr.id !1687
  call void @llvm.dbg.value(metadata i32 %26, metadata !1660, metadata !DIExpression()), !dbg !1602, !psr.id !1688
  %27 = add i32 %24, %25, !dbg !1689, !psr.id !1690
  %28 = add i32 %27, %26, !dbg !1691, !psr.id !1692
  %29 = add i32 %28, %19, !dbg !1693, !psr.id !1694
  call void @llvm.dbg.value(metadata i32 %29, metadata !1666, metadata !DIExpression()), !dbg !1602, !psr.id !1695
  %30 = and i32 %29, 65535, !dbg !1696, !psr.id !1697
  %31 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1698, !psr.id !1699
  store i32 %30, i32* %31, align 4, !dbg !1700, !psr.id !1701
  %32 = and i32 %29, -65536, !dbg !1702, !psr.id !1703
  call void @llvm.dbg.value(metadata i32 %32, metadata !1670, metadata !DIExpression()), !dbg !1602, !psr.id !1704
  %33 = and i32 %11, -65536, !dbg !1705, !psr.id !1706
  %34 = add i32 %33, %32, !dbg !1707, !psr.id !1708
  %35 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1709, !psr.id !1710
  %36 = load i32, i32* %35, align 4, !dbg !1711, !psr.id !1712
  %37 = xor i32 %36, %34, !dbg !1711, !psr.id !1713
  store i32 %37, i32* %35, align 4, !dbg !1711, !psr.id !1714
  ret void, !dbg !1715, !psr.id !1716
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fpmul1271(i32* %0, i32* %1, i32* %2) #0 !dbg !1717 {
  %4 = alloca [2 x i32], align 4, !psr.id !1720
  %5 = alloca [8 x i32], align 16, !psr.id !1721
  call void @llvm.dbg.value(metadata i32* %0, metadata !1722, metadata !DIExpression()), !dbg !1723, !psr.id !1724
  call void @llvm.dbg.value(metadata i32* %1, metadata !1725, metadata !DIExpression()), !dbg !1723, !psr.id !1726
  call void @llvm.dbg.value(metadata i32* %2, metadata !1727, metadata !DIExpression()), !dbg !1723, !psr.id !1728
  call void @llvm.dbg.declare(metadata [2 x i32]* %4, metadata !1729, metadata !DIExpression()), !dbg !1731, !psr.id !1732
  call void @llvm.dbg.declare(metadata [8 x i32]* %5, metadata !1733, metadata !DIExpression()), !dbg !1737, !psr.id !1738
  %6 = bitcast [8 x i32]* %5 to i8*, !dbg !1737, !psr.id !1739
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 32, i1 false), !dbg !1737, !psr.id !1740
  call void @llvm.dbg.value(metadata i32 0, metadata !1741, metadata !DIExpression()), !dbg !1723, !psr.id !1742
  call void @llvm.dbg.value(metadata i32 0, metadata !1743, metadata !DIExpression()), !dbg !1723, !psr.id !1744
  br label %7, !dbg !1745, !psr.id !1747

7:                                                ; preds = %49, %3
  %.03 = phi i32 [ 0, %3 ], [ %50, %49 ], !dbg !1748, !psr.id !1749
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1743, metadata !DIExpression()), !dbg !1723, !psr.id !1750
  %8 = icmp ult i32 %.03, 4, !dbg !1751, !psr.id !1753
  br i1 %8, label %9, label %51, !dbg !1754, !psr.id !1755

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1756, metadata !DIExpression()), !dbg !1723, !psr.id !1757
  call void @llvm.dbg.value(metadata i32 0, metadata !1758, metadata !DIExpression()), !dbg !1723, !psr.id !1759
  br label %10, !dbg !1760, !psr.id !1763

10:                                               ; preds = %43, %9
  %.05 = phi i32 [ 0, %9 ], [ %44, %43 ], !dbg !1764, !psr.id !1765
  %.02 = phi i32 [ 0, %9 ], [ %39, %43 ], !dbg !1766, !psr.id !1767
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1756, metadata !DIExpression()), !dbg !1723, !psr.id !1768
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1758, metadata !DIExpression()), !dbg !1723, !psr.id !1769
  %11 = icmp ult i32 %.05, 4, !dbg !1770, !psr.id !1772
  br i1 %11, label %12, label %45, !dbg !1773, !psr.id !1774

12:                                               ; preds = %10
  %13 = zext i32 %.03 to i64, !dbg !1775, !psr.id !1777
  %14 = getelementptr inbounds i32, i32* %0, i64 %13, !dbg !1775, !psr.id !1778
  %15 = load i32, i32* %14, align 4, !dbg !1775, !psr.id !1779
  %16 = zext i32 %.05 to i64, !dbg !1775, !psr.id !1780
  %17 = getelementptr inbounds i32, i32* %1, i64 %16, !dbg !1775, !psr.id !1781
  %18 = load i32, i32* %17, align 4, !dbg !1775, !psr.id !1782
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !1775, !psr.id !1783
  call void @digit_x_digit(i32 %15, i32 %18, i32* %19), !dbg !1775, !psr.id !1784
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !1785, !psr.id !1787
  %21 = load i32, i32* %20, align 4, !dbg !1785, !psr.id !1788
  %22 = add i32 %21, 0, !dbg !1785, !psr.id !1789
  call void @llvm.dbg.value(metadata i32 %22, metadata !1790, metadata !DIExpression()), !dbg !1791, !psr.id !1792
  %23 = add i32 %.02, %22, !dbg !1785, !psr.id !1793
  call void @llvm.dbg.value(metadata i32 %23, metadata !1794, metadata !DIExpression()), !dbg !1723, !psr.id !1795
  %24 = call i32 @is_digit_lessthan_ct(i32 %22, i32 0), !dbg !1785, !psr.id !1796
  %25 = call i32 @is_digit_lessthan_ct(i32 %23, i32 %22), !dbg !1785, !psr.id !1797
  %26 = or i32 %24, %25, !dbg !1785, !psr.id !1798
  call void @llvm.dbg.value(metadata i32 %26, metadata !1741, metadata !DIExpression()), !dbg !1723, !psr.id !1799
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !1800, !psr.id !1801
  %28 = load i32, i32* %27, align 4, !dbg !1800, !psr.id !1802
  %29 = add i32 %28, %26, !dbg !1803, !psr.id !1804
  call void @llvm.dbg.value(metadata i32 %29, metadata !1756, metadata !DIExpression()), !dbg !1723, !psr.id !1805
  %30 = add i32 %.03, %.05, !dbg !1806, !psr.id !1808
  %31 = zext i32 %30 to i64, !dbg !1806, !psr.id !1809
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %31, !dbg !1806, !psr.id !1810
  %33 = load i32, i32* %32, align 4, !dbg !1806, !psr.id !1811
  %34 = add i32 %33, 0, !dbg !1806, !psr.id !1812
  call void @llvm.dbg.value(metadata i32 %34, metadata !1813, metadata !DIExpression()), !dbg !1814, !psr.id !1815
  %35 = add i32 %23, %34, !dbg !1806, !psr.id !1816
  call void @llvm.dbg.value(metadata i32 %35, metadata !1794, metadata !DIExpression()), !dbg !1723, !psr.id !1817
  %36 = call i32 @is_digit_lessthan_ct(i32 %34, i32 0), !dbg !1806, !psr.id !1818
  %37 = call i32 @is_digit_lessthan_ct(i32 %35, i32 %34), !dbg !1806, !psr.id !1819
  %38 = or i32 %36, %37, !dbg !1806, !psr.id !1820
  call void @llvm.dbg.value(metadata i32 %38, metadata !1741, metadata !DIExpression()), !dbg !1723, !psr.id !1821
  %39 = add i32 %29, %38, !dbg !1822, !psr.id !1823
  call void @llvm.dbg.value(metadata i32 %39, metadata !1756, metadata !DIExpression()), !dbg !1723, !psr.id !1824
  %40 = add i32 %.03, %.05, !dbg !1825, !psr.id !1826
  %41 = zext i32 %40 to i64, !dbg !1827, !psr.id !1828
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %41, !dbg !1827, !psr.id !1829
  store i32 %35, i32* %42, align 4, !dbg !1830, !psr.id !1831
  br label %43, !dbg !1832, !psr.id !1833

43:                                               ; preds = %12
  %44 = add i32 %.05, 1, !dbg !1834, !psr.id !1835
  call void @llvm.dbg.value(metadata i32 %44, metadata !1758, metadata !DIExpression()), !dbg !1723, !psr.id !1836
  br label %10, !dbg !1837, !llvm.loop !1838, !psr.id !1840

45:                                               ; preds = %10
  %46 = add i32 4, %.03, !dbg !1841, !psr.id !1842
  %47 = zext i32 %46 to i64, !dbg !1843, !psr.id !1844
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %47, !dbg !1843, !psr.id !1845
  store i32 %.02, i32* %48, align 4, !dbg !1846, !psr.id !1847
  br label %49, !dbg !1848, !psr.id !1849

49:                                               ; preds = %45
  %50 = add i32 %.03, 1, !dbg !1850, !psr.id !1851
  call void @llvm.dbg.value(metadata i32 %50, metadata !1743, metadata !DIExpression()), !dbg !1723, !psr.id !1852
  br label %7, !dbg !1853, !llvm.loop !1854, !psr.id !1856

51:                                               ; preds = %7
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !1857, !psr.id !1858
  %53 = load i32, i32* %52, align 4, !dbg !1857, !psr.id !1859
  %54 = lshr i32 %53, 31, !dbg !1860, !psr.id !1861
  call void @llvm.dbg.value(metadata i32 %54, metadata !1862, metadata !DIExpression()), !dbg !1723, !psr.id !1863
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !1864, !psr.id !1865
  %56 = load i32, i32* %55, align 4, !dbg !1866, !psr.id !1867
  %57 = and i32 %56, 2147483647, !dbg !1866, !psr.id !1868
  store i32 %57, i32* %55, align 4, !dbg !1866, !psr.id !1869
  call void @llvm.dbg.value(metadata i32 0, metadata !1741, metadata !DIExpression()), !dbg !1723, !psr.id !1870
  call void @llvm.dbg.value(metadata i32 0, metadata !1743, metadata !DIExpression()), !dbg !1723, !psr.id !1871
  br label %58, !dbg !1872, !psr.id !1874

58:                                               ; preds = %92, %51
  %.14 = phi i32 [ 0, %51 ], [ %93, %92 ], !dbg !1875, !psr.id !1876
  %.01 = phi i32 [ %54, %51 ], [ %65, %92 ], !dbg !1723, !psr.id !1877
  %.0 = phi i32 [ 0, %51 ], [ %91, %92 ], !dbg !1723, !psr.id !1878
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1741, metadata !DIExpression()), !dbg !1723, !psr.id !1879
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1862, metadata !DIExpression()), !dbg !1723, !psr.id !1880
  call void @llvm.dbg.value(metadata i32 %.14, metadata !1743, metadata !DIExpression()), !dbg !1723, !psr.id !1881
  %59 = icmp ult i32 %.14, 4, !dbg !1882, !psr.id !1884
  br i1 %59, label %60, label %94, !dbg !1885, !psr.id !1886

60:                                               ; preds = %58
  %61 = add i32 4, %.14, !dbg !1887, !psr.id !1889
  %62 = zext i32 %61 to i64, !dbg !1890, !psr.id !1891
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %62, !dbg !1890, !psr.id !1892
  %64 = load i32, i32* %63, align 4, !dbg !1890, !psr.id !1893
  %65 = lshr i32 %64, 31, !dbg !1894, !psr.id !1895
  call void @llvm.dbg.value(metadata i32 %65, metadata !1896, metadata !DIExpression()), !dbg !1723, !psr.id !1897
  %66 = add i32 4, %.14, !dbg !1898, !psr.id !1899
  %67 = zext i32 %66 to i64, !dbg !1900, !psr.id !1901
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %67, !dbg !1900, !psr.id !1902
  %69 = load i32, i32* %68, align 4, !dbg !1900, !psr.id !1903
  %70 = shl i32 %69, 1, !dbg !1904, !psr.id !1905
  %71 = add i32 %70, %.01, !dbg !1906, !psr.id !1907
  %72 = add i32 4, %.14, !dbg !1908, !psr.id !1909
  %73 = zext i32 %72 to i64, !dbg !1910, !psr.id !1911
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %73, !dbg !1910, !psr.id !1912
  store i32 %71, i32* %74, align 4, !dbg !1913, !psr.id !1914
  call void @llvm.dbg.value(metadata i32 %65, metadata !1862, metadata !DIExpression()), !dbg !1723, !psr.id !1915
  %75 = zext i32 %.14 to i64, !dbg !1916, !psr.id !1918
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %75, !dbg !1916, !psr.id !1919
  %77 = load i32, i32* %76, align 4, !dbg !1916, !psr.id !1920
  %78 = add i32 %77, %.0, !dbg !1916, !psr.id !1921
  call void @llvm.dbg.value(metadata i32 %78, metadata !1922, metadata !DIExpression()), !dbg !1923, !psr.id !1924
  %79 = add i32 4, %.14, !dbg !1916, !psr.id !1925
  %80 = zext i32 %79 to i64, !dbg !1916, !psr.id !1926
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %80, !dbg !1916, !psr.id !1927
  %82 = load i32, i32* %81, align 4, !dbg !1916, !psr.id !1928
  %83 = add i32 %82, %78, !dbg !1916, !psr.id !1929
  %84 = zext i32 %.14 to i64, !dbg !1916, !psr.id !1930
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %84, !dbg !1916, !psr.id !1931
  store i32 %83, i32* %85, align 4, !dbg !1916, !psr.id !1932
  %86 = call i32 @is_digit_lessthan_ct(i32 %78, i32 %.0), !dbg !1916, !psr.id !1933
  %87 = zext i32 %.14 to i64, !dbg !1916, !psr.id !1934
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %87, !dbg !1916, !psr.id !1935
  %89 = load i32, i32* %88, align 4, !dbg !1916, !psr.id !1936
  %90 = call i32 @is_digit_lessthan_ct(i32 %89, i32 %78), !dbg !1916, !psr.id !1937
  %91 = or i32 %86, %90, !dbg !1916, !psr.id !1938
  call void @llvm.dbg.value(metadata i32 %91, metadata !1741, metadata !DIExpression()), !dbg !1723, !psr.id !1939
  br label %92, !dbg !1940, !psr.id !1941

92:                                               ; preds = %60
  %93 = add i32 %.14, 1, !dbg !1942, !psr.id !1943
  call void @llvm.dbg.value(metadata i32 %93, metadata !1743, metadata !DIExpression()), !dbg !1723, !psr.id !1944
  br label %58, !dbg !1945, !llvm.loop !1946, !psr.id !1948

94:                                               ; preds = %58
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !1949, !psr.id !1950
  %96 = load i32, i32* %95, align 4, !dbg !1949, !psr.id !1951
  %97 = lshr i32 %96, 31, !dbg !1952, !psr.id !1953
  call void @llvm.dbg.value(metadata i32 %97, metadata !1741, metadata !DIExpression()), !dbg !1723, !psr.id !1954
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !1955, !psr.id !1956
  %99 = load i32, i32* %98, align 4, !dbg !1957, !psr.id !1958
  %100 = and i32 %99, 2147483647, !dbg !1957, !psr.id !1959
  store i32 %100, i32* %98, align 4, !dbg !1957, !psr.id !1960
  call void @llvm.dbg.value(metadata i32 0, metadata !1743, metadata !DIExpression()), !dbg !1723, !psr.id !1961
  br label %101, !dbg !1962, !psr.id !1964

101:                                              ; preds = %117, %94
  %.2 = phi i32 [ 0, %94 ], [ %118, %117 ], !dbg !1965, !psr.id !1966
  %.1 = phi i32 [ %97, %94 ], [ %116, %117 ], !dbg !1723, !psr.id !1967
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1741, metadata !DIExpression()), !dbg !1723, !psr.id !1968
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1743, metadata !DIExpression()), !dbg !1723, !psr.id !1969
  %102 = icmp ult i32 %.2, 4, !dbg !1970, !psr.id !1972
  br i1 %102, label %103, label %119, !dbg !1973, !psr.id !1974

103:                                              ; preds = %101
  %104 = zext i32 %.2 to i64, !dbg !1975, !psr.id !1978
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %104, !dbg !1975, !psr.id !1979
  %106 = load i32, i32* %105, align 4, !dbg !1975, !psr.id !1980
  %107 = add i32 %106, %.1, !dbg !1975, !psr.id !1981
  call void @llvm.dbg.value(metadata i32 %107, metadata !1982, metadata !DIExpression()), !dbg !1983, !psr.id !1984
  %108 = add i32 0, %107, !dbg !1975, !psr.id !1985
  %109 = zext i32 %.2 to i64, !dbg !1975, !psr.id !1986
  %110 = getelementptr inbounds i32, i32* %2, i64 %109, !dbg !1975, !psr.id !1987
  store i32 %108, i32* %110, align 4, !dbg !1975, !psr.id !1988
  %111 = call i32 @is_digit_lessthan_ct(i32 %107, i32 %.1), !dbg !1975, !psr.id !1989
  %112 = zext i32 %.2 to i64, !dbg !1975, !psr.id !1990
  %113 = getelementptr inbounds i32, i32* %2, i64 %112, !dbg !1975, !psr.id !1991
  %114 = load i32, i32* %113, align 4, !dbg !1975, !psr.id !1992
  %115 = call i32 @is_digit_lessthan_ct(i32 %114, i32 %107), !dbg !1975, !psr.id !1993
  %116 = or i32 %111, %115, !dbg !1975, !psr.id !1994
  call void @llvm.dbg.value(metadata i32 %116, metadata !1741, metadata !DIExpression()), !dbg !1723, !psr.id !1995
  br label %117, !dbg !1996, !psr.id !1997

117:                                              ; preds = %103
  %118 = add i32 %.2, 1, !dbg !1998, !psr.id !1999
  call void @llvm.dbg.value(metadata i32 %118, metadata !1743, metadata !DIExpression()), !dbg !1723, !psr.id !2000
  br label %101, !dbg !2001, !llvm.loop !2002, !psr.id !2004

119:                                              ; preds = %101
  ret void, !dbg !2005, !psr.id !2006
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_digit_lessthan_ct(i32 %0, i32 %1) #0 !dbg !2007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2010, metadata !DIExpression()), !dbg !2011, !psr.id !2012
  call void @llvm.dbg.value(metadata i32 %1, metadata !2013, metadata !DIExpression()), !dbg !2011, !psr.id !2014
  %3 = xor i32 %0, %1, !dbg !2015, !psr.id !2016
  %4 = sub i32 %0, %1, !dbg !2017, !psr.id !2018
  %5 = xor i32 %4, %1, !dbg !2019, !psr.id !2020
  %6 = or i32 %3, %5, !dbg !2021, !psr.id !2022
  %7 = xor i32 %0, %6, !dbg !2023, !psr.id !2024
  %8 = lshr i32 %7, 31, !dbg !2025, !psr.id !2026
  ret i32 %8, !dbg !2027, !psr.id !2028
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fpsqr1271(i32* %0, i32* %1) #0 !dbg !2029 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2032, metadata !DIExpression()), !dbg !2033, !psr.id !2034
  call void @llvm.dbg.value(metadata i32* %1, metadata !2035, metadata !DIExpression()), !dbg !2033, !psr.id !2036
  call void @fpmul1271(i32* %0, i32* %0, i32* %1), !dbg !2037, !psr.id !2038
  ret void, !dbg !2039, !psr.id !2040
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mod1271(i32* %0) #0 !dbg !2041 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2044, metadata !DIExpression()), !dbg !2045, !psr.id !2046
  call void @llvm.dbg.value(metadata i32 0, metadata !2047, metadata !DIExpression()), !dbg !2045, !psr.id !2048
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2045, !psr.id !2050
  br label %2, !dbg !2051, !psr.id !2053

2:                                                ; preds = %19, %1
  %.01 = phi i32 [ 0, %1 ], [ %20, %19 ], !dbg !2054, !psr.id !2055
  %.0 = phi i32 [ 0, %1 ], [ %15, %19 ], !dbg !2045, !psr.id !2056
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2047, metadata !DIExpression()), !dbg !2045, !psr.id !2057
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2049, metadata !DIExpression()), !dbg !2045, !psr.id !2058
  %3 = icmp ult i32 %.01, 3, !dbg !2059, !psr.id !2061
  br i1 %3, label %4, label %21, !dbg !2062, !psr.id !2063

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64, !dbg !2064, !psr.id !2067
  %6 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !2064, !psr.id !2068
  %7 = load i32, i32* %6, align 4, !dbg !2064, !psr.id !2069
  %8 = sub i32 %7, -1, !dbg !2064, !psr.id !2070
  call void @llvm.dbg.value(metadata i32 %8, metadata !2071, metadata !DIExpression()), !dbg !2072, !psr.id !2073
  %9 = zext i32 %.01 to i64, !dbg !2064, !psr.id !2074
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !2064, !psr.id !2075
  %11 = load i32, i32* %10, align 4, !dbg !2064, !psr.id !2076
  %12 = call i32 @is_digit_lessthan_ct(i32 %11, i32 -1), !dbg !2064, !psr.id !2077
  %13 = call i32 @is_digit_zero_ct(i32 %8), !dbg !2064, !psr.id !2078
  %14 = and i32 %.0, %13, !dbg !2064, !psr.id !2079
  %15 = or i32 %12, %14, !dbg !2064, !psr.id !2080
  call void @llvm.dbg.value(metadata i32 %15, metadata !2081, metadata !DIExpression()), !dbg !2072, !psr.id !2082
  %16 = sub i32 %8, %.0, !dbg !2064, !psr.id !2083
  %17 = zext i32 %.01 to i64, !dbg !2064, !psr.id !2084
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !2064, !psr.id !2085
  store i32 %16, i32* %18, align 4, !dbg !2064, !psr.id !2086
  call void @llvm.dbg.value(metadata i32 %15, metadata !2047, metadata !DIExpression()), !dbg !2045, !psr.id !2087
  br label %19, !dbg !2088, !psr.id !2089

19:                                               ; preds = %4
  %20 = add i32 %.01, 1, !dbg !2090, !psr.id !2091
  call void @llvm.dbg.value(metadata i32 %20, metadata !2049, metadata !DIExpression()), !dbg !2045, !psr.id !2092
  br label %2, !dbg !2093, !llvm.loop !2094, !psr.id !2096

21:                                               ; preds = %2
  %22 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2097, !psr.id !2099
  %23 = load i32, i32* %22, align 4, !dbg !2097, !psr.id !2100
  %24 = sub i32 %23, 2147483647, !dbg !2097, !psr.id !2101
  call void @llvm.dbg.value(metadata i32 %24, metadata !2102, metadata !DIExpression()), !dbg !2103, !psr.id !2104
  %25 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2097, !psr.id !2105
  %26 = load i32, i32* %25, align 4, !dbg !2097, !psr.id !2106
  %27 = call i32 @is_digit_lessthan_ct(i32 %26, i32 2147483647), !dbg !2097, !psr.id !2107
  %28 = call i32 @is_digit_zero_ct(i32 %24), !dbg !2097, !psr.id !2108
  %29 = and i32 %.0, %28, !dbg !2097, !psr.id !2109
  %30 = or i32 %27, %29, !dbg !2097, !psr.id !2110
  call void @llvm.dbg.value(metadata i32 %30, metadata !2111, metadata !DIExpression()), !dbg !2103, !psr.id !2112
  %31 = sub i32 %24, %.0, !dbg !2097, !psr.id !2113
  %32 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2097, !psr.id !2114
  store i32 %31, i32* %32, align 4, !dbg !2097, !psr.id !2115
  call void @llvm.dbg.value(metadata i32 %30, metadata !2047, metadata !DIExpression()), !dbg !2045, !psr.id !2116
  %33 = sub i32 0, %30, !dbg !2117, !psr.id !2118
  call void @llvm.dbg.value(metadata i32 %33, metadata !2119, metadata !DIExpression()), !dbg !2045, !psr.id !2120
  call void @llvm.dbg.value(metadata i32 0, metadata !2047, metadata !DIExpression()), !dbg !2045, !psr.id !2121
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2045, !psr.id !2122
  br label %34, !dbg !2123, !psr.id !2125

34:                                               ; preds = %50, %21
  %.12 = phi i32 [ 0, %21 ], [ %51, %50 ], !dbg !2126, !psr.id !2127
  %.1 = phi i32 [ 0, %21 ], [ %49, %50 ], !dbg !2045, !psr.id !2128
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2047, metadata !DIExpression()), !dbg !2045, !psr.id !2129
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2049, metadata !DIExpression()), !dbg !2045, !psr.id !2130
  %35 = icmp ult i32 %.12, 3, !dbg !2131, !psr.id !2133
  br i1 %35, label %36, label %52, !dbg !2134, !psr.id !2135

36:                                               ; preds = %34
  %37 = zext i32 %.12 to i64, !dbg !2136, !psr.id !2139
  %38 = getelementptr inbounds i32, i32* %0, i64 %37, !dbg !2136, !psr.id !2140
  %39 = load i32, i32* %38, align 4, !dbg !2136, !psr.id !2141
  %40 = add i32 %39, %.1, !dbg !2136, !psr.id !2142
  call void @llvm.dbg.value(metadata i32 %40, metadata !2143, metadata !DIExpression()), !dbg !2144, !psr.id !2145
  %41 = add i32 %33, %40, !dbg !2136, !psr.id !2146
  %42 = zext i32 %.12 to i64, !dbg !2136, !psr.id !2147
  %43 = getelementptr inbounds i32, i32* %0, i64 %42, !dbg !2136, !psr.id !2148
  store i32 %41, i32* %43, align 4, !dbg !2136, !psr.id !2149
  %44 = call i32 @is_digit_lessthan_ct(i32 %40, i32 %.1), !dbg !2136, !psr.id !2150
  %45 = zext i32 %.12 to i64, !dbg !2136, !psr.id !2151
  %46 = getelementptr inbounds i32, i32* %0, i64 %45, !dbg !2136, !psr.id !2152
  %47 = load i32, i32* %46, align 4, !dbg !2136, !psr.id !2153
  %48 = call i32 @is_digit_lessthan_ct(i32 %47, i32 %40), !dbg !2136, !psr.id !2154
  %49 = or i32 %44, %48, !dbg !2136, !psr.id !2155
  call void @llvm.dbg.value(metadata i32 %49, metadata !2047, metadata !DIExpression()), !dbg !2045, !psr.id !2156
  br label %50, !dbg !2157, !psr.id !2158

50:                                               ; preds = %36
  %51 = add i32 %.12, 1, !dbg !2159, !psr.id !2160
  call void @llvm.dbg.value(metadata i32 %51, metadata !2049, metadata !DIExpression()), !dbg !2045, !psr.id !2161
  br label %34, !dbg !2162, !llvm.loop !2163, !psr.id !2165

52:                                               ; preds = %34
  %53 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2166, !psr.id !2168
  %54 = load i32, i32* %53, align 4, !dbg !2166, !psr.id !2169
  %55 = add i32 %54, %.1, !dbg !2166, !psr.id !2170
  call void @llvm.dbg.value(metadata i32 %55, metadata !2171, metadata !DIExpression()), !dbg !2172, !psr.id !2173
  %56 = lshr i32 %33, 1, !dbg !2166, !psr.id !2174
  %57 = add i32 %56, %55, !dbg !2166, !psr.id !2175
  %58 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2166, !psr.id !2176
  store i32 %57, i32* %58, align 4, !dbg !2166, !psr.id !2177
  %59 = call i32 @is_digit_lessthan_ct(i32 %55, i32 %.1), !dbg !2166, !psr.id !2178
  %60 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2166, !psr.id !2179
  %61 = load i32, i32* %60, align 4, !dbg !2166, !psr.id !2180
  %62 = call i32 @is_digit_lessthan_ct(i32 %61, i32 %55), !dbg !2166, !psr.id !2181
  %63 = or i32 %59, %62, !dbg !2166, !psr.id !2182
  call void @llvm.dbg.value(metadata i32 %63, metadata !2047, metadata !DIExpression()), !dbg !2045, !psr.id !2183
  ret void, !dbg !2184, !psr.id !2185
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_digit_zero_ct(i32 %0) #0 !dbg !2186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2187, metadata !DIExpression()), !dbg !2188, !psr.id !2189
  %2 = call i32 @is_digit_nonzero_ct(i32 %0), !dbg !2190, !psr.id !2191
  %3 = xor i32 1, %2, !dbg !2192, !psr.id !2193
  ret i32 %3, !dbg !2194, !psr.id !2195
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_mul(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !2196 {
  %5 = alloca [2 x i32], align 4, !psr.id !2199
  call void @llvm.dbg.value(metadata i32* %0, metadata !2200, metadata !DIExpression()), !dbg !2201, !psr.id !2202
  call void @llvm.dbg.value(metadata i32* %1, metadata !2203, metadata !DIExpression()), !dbg !2201, !psr.id !2204
  call void @llvm.dbg.value(metadata i32* %2, metadata !2205, metadata !DIExpression()), !dbg !2201, !psr.id !2206
  call void @llvm.dbg.value(metadata i32 %3, metadata !2207, metadata !DIExpression()), !dbg !2201, !psr.id !2208
  call void @llvm.dbg.declare(metadata [2 x i32]* %5, metadata !2209, metadata !DIExpression()), !dbg !2210, !psr.id !2211
  call void @llvm.dbg.value(metadata i32 0, metadata !2212, metadata !DIExpression()), !dbg !2201, !psr.id !2213
  call void @llvm.dbg.value(metadata i32 0, metadata !2214, metadata !DIExpression()), !dbg !2201, !psr.id !2215
  br label %6, !dbg !2216, !psr.id !2218

6:                                                ; preds = %12, %4
  %.02 = phi i32 [ 0, %4 ], [ %13, %12 ], !dbg !2219, !psr.id !2220
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2214, metadata !DIExpression()), !dbg !2201, !psr.id !2221
  %7 = mul i32 2, %3, !dbg !2222, !psr.id !2224
  %8 = icmp ult i32 %.02, %7, !dbg !2225, !psr.id !2226
  br i1 %8, label %9, label %14, !dbg !2227, !psr.id !2228

9:                                                ; preds = %6
  %10 = zext i32 %.02 to i64, !dbg !2229, !psr.id !2230
  %11 = getelementptr inbounds i32, i32* %2, i64 %10, !dbg !2229, !psr.id !2231
  store i32 0, i32* %11, align 4, !dbg !2232, !psr.id !2233
  br label %12, !dbg !2229, !psr.id !2234

12:                                               ; preds = %9
  %13 = add i32 %.02, 1, !dbg !2235, !psr.id !2236
  call void @llvm.dbg.value(metadata i32 %13, metadata !2214, metadata !DIExpression()), !dbg !2201, !psr.id !2237
  br label %6, !dbg !2238, !llvm.loop !2239, !psr.id !2241

14:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !2214, metadata !DIExpression()), !dbg !2201, !psr.id !2242
  br label %15, !dbg !2243, !psr.id !2245

15:                                               ; preds = %57, %14
  %.1 = phi i32 [ 0, %14 ], [ %58, %57 ], !dbg !2246, !psr.id !2247
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2214, metadata !DIExpression()), !dbg !2201, !psr.id !2248
  %16 = icmp ult i32 %.1, %3, !dbg !2249, !psr.id !2251
  br i1 %16, label %17, label %59, !dbg !2252, !psr.id !2253

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 0, metadata !2254, metadata !DIExpression()), !dbg !2201, !psr.id !2255
  call void @llvm.dbg.value(metadata i32 0, metadata !2256, metadata !DIExpression()), !dbg !2201, !psr.id !2257
  br label %18, !dbg !2258, !psr.id !2261

18:                                               ; preds = %51, %17
  %.01 = phi i32 [ 0, %17 ], [ %52, %51 ], !dbg !2262, !psr.id !2263
  %.0 = phi i32 [ 0, %17 ], [ %47, %51 ], !dbg !2264, !psr.id !2265
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2254, metadata !DIExpression()), !dbg !2201, !psr.id !2266
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2256, metadata !DIExpression()), !dbg !2201, !psr.id !2267
  %19 = icmp ult i32 %.01, %3, !dbg !2268, !psr.id !2270
  br i1 %19, label %20, label %53, !dbg !2271, !psr.id !2272

20:                                               ; preds = %18
  %21 = zext i32 %.1 to i64, !dbg !2273, !psr.id !2275
  %22 = getelementptr inbounds i32, i32* %0, i64 %21, !dbg !2273, !psr.id !2276
  %23 = load i32, i32* %22, align 4, !dbg !2273, !psr.id !2277
  %24 = zext i32 %.01 to i64, !dbg !2273, !psr.id !2278
  %25 = getelementptr inbounds i32, i32* %1, i64 %24, !dbg !2273, !psr.id !2279
  %26 = load i32, i32* %25, align 4, !dbg !2273, !psr.id !2280
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0, !dbg !2273, !psr.id !2281
  call void @digit_x_digit(i32 %23, i32 %26, i32* %27), !dbg !2273, !psr.id !2282
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0, !dbg !2283, !psr.id !2285
  %29 = load i32, i32* %28, align 4, !dbg !2283, !psr.id !2286
  %30 = add i32 %29, 0, !dbg !2283, !psr.id !2287
  call void @llvm.dbg.value(metadata i32 %30, metadata !2288, metadata !DIExpression()), !dbg !2289, !psr.id !2290
  %31 = add i32 %.0, %30, !dbg !2283, !psr.id !2291
  call void @llvm.dbg.value(metadata i32 %31, metadata !2292, metadata !DIExpression()), !dbg !2201, !psr.id !2293
  %32 = call i32 @is_digit_lessthan_ct(i32 %30, i32 0), !dbg !2283, !psr.id !2294
  %33 = call i32 @is_digit_lessthan_ct(i32 %31, i32 %30), !dbg !2283, !psr.id !2295
  %34 = or i32 %32, %33, !dbg !2283, !psr.id !2296
  call void @llvm.dbg.value(metadata i32 %34, metadata !2212, metadata !DIExpression()), !dbg !2201, !psr.id !2297
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1, !dbg !2298, !psr.id !2299
  %36 = load i32, i32* %35, align 4, !dbg !2298, !psr.id !2300
  %37 = add i32 %36, %34, !dbg !2301, !psr.id !2302
  call void @llvm.dbg.value(metadata i32 %37, metadata !2254, metadata !DIExpression()), !dbg !2201, !psr.id !2303
  %38 = add i32 %.1, %.01, !dbg !2304, !psr.id !2306
  %39 = zext i32 %38 to i64, !dbg !2304, !psr.id !2307
  %40 = getelementptr inbounds i32, i32* %2, i64 %39, !dbg !2304, !psr.id !2308
  %41 = load i32, i32* %40, align 4, !dbg !2304, !psr.id !2309
  %42 = add i32 %41, 0, !dbg !2304, !psr.id !2310
  call void @llvm.dbg.value(metadata i32 %42, metadata !2311, metadata !DIExpression()), !dbg !2312, !psr.id !2313
  %43 = add i32 %31, %42, !dbg !2304, !psr.id !2314
  call void @llvm.dbg.value(metadata i32 %43, metadata !2292, metadata !DIExpression()), !dbg !2201, !psr.id !2315
  %44 = call i32 @is_digit_lessthan_ct(i32 %42, i32 0), !dbg !2304, !psr.id !2316
  %45 = call i32 @is_digit_lessthan_ct(i32 %43, i32 %42), !dbg !2304, !psr.id !2317
  %46 = or i32 %44, %45, !dbg !2304, !psr.id !2318
  call void @llvm.dbg.value(metadata i32 %46, metadata !2212, metadata !DIExpression()), !dbg !2201, !psr.id !2319
  %47 = add i32 %37, %46, !dbg !2320, !psr.id !2321
  call void @llvm.dbg.value(metadata i32 %47, metadata !2254, metadata !DIExpression()), !dbg !2201, !psr.id !2322
  %48 = add i32 %.1, %.01, !dbg !2323, !psr.id !2324
  %49 = zext i32 %48 to i64, !dbg !2325, !psr.id !2326
  %50 = getelementptr inbounds i32, i32* %2, i64 %49, !dbg !2325, !psr.id !2327
  store i32 %43, i32* %50, align 4, !dbg !2328, !psr.id !2329
  br label %51, !dbg !2330, !psr.id !2331

51:                                               ; preds = %20
  %52 = add i32 %.01, 1, !dbg !2332, !psr.id !2333
  call void @llvm.dbg.value(metadata i32 %52, metadata !2256, metadata !DIExpression()), !dbg !2201, !psr.id !2334
  br label %18, !dbg !2335, !llvm.loop !2336, !psr.id !2338

53:                                               ; preds = %18
  %54 = add i32 %3, %.1, !dbg !2339, !psr.id !2340
  %55 = zext i32 %54 to i64, !dbg !2341, !psr.id !2342
  %56 = getelementptr inbounds i32, i32* %2, i64 %55, !dbg !2341, !psr.id !2343
  store i32 %.0, i32* %56, align 4, !dbg !2344, !psr.id !2345
  br label %57, !dbg !2346, !psr.id !2347

57:                                               ; preds = %53
  %58 = add i32 %.1, 1, !dbg !2348, !psr.id !2349
  call void @llvm.dbg.value(metadata i32 %58, metadata !2214, metadata !DIExpression()), !dbg !2201, !psr.id !2350
  br label %15, !dbg !2351, !llvm.loop !2352, !psr.id !2354

59:                                               ; preds = %15
  ret void, !dbg !2355, !psr.id !2356
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_add(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !2357 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2360, metadata !DIExpression()), !dbg !2361, !psr.id !2362
  call void @llvm.dbg.value(metadata i32* %1, metadata !2363, metadata !DIExpression()), !dbg !2361, !psr.id !2364
  call void @llvm.dbg.value(metadata i32* %2, metadata !2365, metadata !DIExpression()), !dbg !2361, !psr.id !2366
  call void @llvm.dbg.value(metadata i32 %3, metadata !2367, metadata !DIExpression()), !dbg !2361, !psr.id !2368
  call void @llvm.dbg.value(metadata i32 0, metadata !2369, metadata !DIExpression()), !dbg !2361, !psr.id !2370
  call void @llvm.dbg.value(metadata i32 0, metadata !2371, metadata !DIExpression()), !dbg !2361, !psr.id !2372
  br label %5, !dbg !2373, !psr.id !2375

5:                                                ; preds = %24, %4
  %.01 = phi i32 [ 0, %4 ], [ %25, %24 ], !dbg !2376, !psr.id !2377
  %.0 = phi i32 [ 0, %4 ], [ %23, %24 ], !dbg !2361, !psr.id !2378
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2369, metadata !DIExpression()), !dbg !2361, !psr.id !2379
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2371, metadata !DIExpression()), !dbg !2361, !psr.id !2380
  %6 = icmp ult i32 %.01, %3, !dbg !2381, !psr.id !2383
  br i1 %6, label %7, label %26, !dbg !2384, !psr.id !2385

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64, !dbg !2386, !psr.id !2389
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !2386, !psr.id !2390
  %10 = load i32, i32* %9, align 4, !dbg !2386, !psr.id !2391
  %11 = add i32 %10, %.0, !dbg !2386, !psr.id !2392
  call void @llvm.dbg.value(metadata i32 %11, metadata !2393, metadata !DIExpression()), !dbg !2394, !psr.id !2395
  %12 = zext i32 %.01 to i64, !dbg !2386, !psr.id !2396
  %13 = getelementptr inbounds i32, i32* %1, i64 %12, !dbg !2386, !psr.id !2397
  %14 = load i32, i32* %13, align 4, !dbg !2386, !psr.id !2398
  %15 = add i32 %14, %11, !dbg !2386, !psr.id !2399
  %16 = zext i32 %.01 to i64, !dbg !2386, !psr.id !2400
  %17 = getelementptr inbounds i32, i32* %2, i64 %16, !dbg !2386, !psr.id !2401
  store i32 %15, i32* %17, align 4, !dbg !2386, !psr.id !2402
  %18 = call i32 @is_digit_lessthan_ct(i32 %11, i32 %.0), !dbg !2386, !psr.id !2403
  %19 = zext i32 %.01 to i64, !dbg !2386, !psr.id !2404
  %20 = getelementptr inbounds i32, i32* %2, i64 %19, !dbg !2386, !psr.id !2405
  %21 = load i32, i32* %20, align 4, !dbg !2386, !psr.id !2406
  %22 = call i32 @is_digit_lessthan_ct(i32 %21, i32 %11), !dbg !2386, !psr.id !2407
  %23 = or i32 %18, %22, !dbg !2386, !psr.id !2408
  call void @llvm.dbg.value(metadata i32 %23, metadata !2369, metadata !DIExpression()), !dbg !2361, !psr.id !2409
  br label %24, !dbg !2410, !psr.id !2411

24:                                               ; preds = %7
  %25 = add i32 %.01, 1, !dbg !2412, !psr.id !2413
  call void @llvm.dbg.value(metadata i32 %25, metadata !2371, metadata !DIExpression()), !dbg !2361, !psr.id !2414
  br label %5, !dbg !2415, !llvm.loop !2416, !psr.id !2418

26:                                               ; preds = %5
  ret i32 %.0, !dbg !2419, !psr.id !2420
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fpinv1271(i32* %0) #0 !dbg !2421 {
  %2 = alloca [4 x i32], align 16, !psr.id !2422
  %3 = alloca [4 x i32], align 16, !psr.id !2423
  %4 = alloca [4 x i32], align 16, !psr.id !2424
  %5 = alloca [4 x i32], align 16, !psr.id !2425
  %6 = alloca [4 x i32], align 16, !psr.id !2426
  call void @llvm.dbg.value(metadata i32* %0, metadata !2427, metadata !DIExpression()), !dbg !2428, !psr.id !2429
  call void @llvm.dbg.declare(metadata [4 x i32]* %2, metadata !2430, metadata !DIExpression()), !dbg !2431, !psr.id !2432
  call void @llvm.dbg.declare(metadata [4 x i32]* %3, metadata !2433, metadata !DIExpression()), !dbg !2434, !psr.id !2435
  call void @llvm.dbg.declare(metadata [4 x i32]* %4, metadata !2436, metadata !DIExpression()), !dbg !2437, !psr.id !2438
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !2439, metadata !DIExpression()), !dbg !2440, !psr.id !2441
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !2442, metadata !DIExpression()), !dbg !2443, !psr.id !2444
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2445, !psr.id !2446
  call void @fpsqr1271(i32* %0, i32* %7), !dbg !2447, !psr.id !2448
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2449, !psr.id !2450
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2451, !psr.id !2452
  call void @fpmul1271(i32* %0, i32* %8, i32* %9), !dbg !2453, !psr.id !2454
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2455, !psr.id !2456
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2457, !psr.id !2458
  call void @fpsqr1271(i32* %10, i32* %11), !dbg !2459, !psr.id !2460
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2461, !psr.id !2462
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2463, !psr.id !2464
  call void @fpsqr1271(i32* %12, i32* %13), !dbg !2465, !psr.id !2466
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2467, !psr.id !2468
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2469, !psr.id !2470
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2471, !psr.id !2472
  call void @fpmul1271(i32* %14, i32* %15, i32* %16), !dbg !2473, !psr.id !2474
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2475, !psr.id !2476
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2477, !psr.id !2478
  call void @fpsqr1271(i32* %17, i32* %18), !dbg !2479, !psr.id !2480
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2481, !psr.id !2482
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2483, !psr.id !2484
  call void @fpsqr1271(i32* %19, i32* %20), !dbg !2485, !psr.id !2486
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2487, !psr.id !2488
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2489, !psr.id !2490
  call void @fpsqr1271(i32* %21, i32* %22), !dbg !2491, !psr.id !2492
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2493, !psr.id !2494
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2495, !psr.id !2496
  call void @fpsqr1271(i32* %23, i32* %24), !dbg !2497, !psr.id !2498
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2499, !psr.id !2500
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2501, !psr.id !2502
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2503, !psr.id !2504
  call void @fpmul1271(i32* %25, i32* %26, i32* %27), !dbg !2505, !psr.id !2506
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2507, !psr.id !2508
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2509, !psr.id !2510
  call void @fpsqr1271(i32* %28, i32* %29), !dbg !2511, !psr.id !2512
  call void @llvm.dbg.value(metadata i32 0, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2514
  br label %30, !dbg !2515, !psr.id !2517

30:                                               ; preds = %35, %1
  %.0 = phi i32 [ 0, %1 ], [ %36, %35 ], !dbg !2518, !psr.id !2519
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2520
  %31 = icmp slt i32 %.0, 7, !dbg !2521, !psr.id !2523
  br i1 %31, label %32, label %37, !dbg !2524, !psr.id !2525

32:                                               ; preds = %30
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2526, !psr.id !2527
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2528, !psr.id !2529
  call void @fpsqr1271(i32* %33, i32* %34), !dbg !2530, !psr.id !2531
  br label %35, !dbg !2530, !psr.id !2532

35:                                               ; preds = %32
  %36 = add nsw i32 %.0, 1, !dbg !2533, !psr.id !2534
  call void @llvm.dbg.value(metadata i32 %36, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2535
  br label %30, !dbg !2536, !llvm.loop !2537, !psr.id !2539

37:                                               ; preds = %30
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2540, !psr.id !2541
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2542, !psr.id !2543
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2544, !psr.id !2545
  call void @fpmul1271(i32* %38, i32* %39, i32* %40), !dbg !2546, !psr.id !2547
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2548, !psr.id !2549
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2550, !psr.id !2551
  call void @fpsqr1271(i32* %41, i32* %42), !dbg !2552, !psr.id !2553
  call void @llvm.dbg.value(metadata i32 0, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2554
  br label %43, !dbg !2555, !psr.id !2557

43:                                               ; preds = %48, %37
  %.1 = phi i32 [ 0, %37 ], [ %49, %48 ], !dbg !2558, !psr.id !2559
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2560
  %44 = icmp slt i32 %.1, 15, !dbg !2561, !psr.id !2563
  br i1 %44, label %45, label %50, !dbg !2564, !psr.id !2565

45:                                               ; preds = %43
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2566, !psr.id !2567
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2568, !psr.id !2569
  call void @fpsqr1271(i32* %46, i32* %47), !dbg !2570, !psr.id !2571
  br label %48, !dbg !2570, !psr.id !2572

48:                                               ; preds = %45
  %49 = add nsw i32 %.1, 1, !dbg !2573, !psr.id !2574
  call void @llvm.dbg.value(metadata i32 %49, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2575
  br label %43, !dbg !2576, !llvm.loop !2577, !psr.id !2579

50:                                               ; preds = %43
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2580, !psr.id !2581
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2582, !psr.id !2583
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2584, !psr.id !2585
  call void @fpmul1271(i32* %51, i32* %52, i32* %53), !dbg !2586, !psr.id !2587
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2588, !psr.id !2589
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2590, !psr.id !2591
  call void @fpsqr1271(i32* %54, i32* %55), !dbg !2592, !psr.id !2593
  call void @llvm.dbg.value(metadata i32 0, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2594
  br label %56, !dbg !2595, !psr.id !2597

56:                                               ; preds = %61, %50
  %.2 = phi i32 [ 0, %50 ], [ %62, %61 ], !dbg !2598, !psr.id !2599
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2600
  %57 = icmp slt i32 %.2, 31, !dbg !2601, !psr.id !2603
  br i1 %57, label %58, label %63, !dbg !2604, !psr.id !2605

58:                                               ; preds = %56
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2606, !psr.id !2607
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2608, !psr.id !2609
  call void @fpsqr1271(i32* %59, i32* %60), !dbg !2610, !psr.id !2611
  br label %61, !dbg !2610, !psr.id !2612

61:                                               ; preds = %58
  %62 = add nsw i32 %.2, 1, !dbg !2613, !psr.id !2614
  call void @llvm.dbg.value(metadata i32 %62, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2615
  br label %56, !dbg !2616, !llvm.loop !2617, !psr.id !2619

63:                                               ; preds = %56
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2620, !psr.id !2621
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2622, !psr.id !2623
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2624, !psr.id !2625
  call void @fpmul1271(i32* %64, i32* %65, i32* %66), !dbg !2626, !psr.id !2627
  call void @llvm.dbg.value(metadata i32 0, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2628
  br label %67, !dbg !2629, !psr.id !2631

67:                                               ; preds = %72, %63
  %.3 = phi i32 [ 0, %63 ], [ %73, %72 ], !dbg !2632, !psr.id !2633
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2634
  %68 = icmp slt i32 %.3, 32, !dbg !2635, !psr.id !2637
  br i1 %68, label %69, label %74, !dbg !2638, !psr.id !2639

69:                                               ; preds = %67
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2640, !psr.id !2641
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2642, !psr.id !2643
  call void @fpsqr1271(i32* %70, i32* %71), !dbg !2644, !psr.id !2645
  br label %72, !dbg !2644, !psr.id !2646

72:                                               ; preds = %69
  %73 = add nsw i32 %.3, 1, !dbg !2647, !psr.id !2648
  call void @llvm.dbg.value(metadata i32 %73, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2649
  br label %67, !dbg !2650, !llvm.loop !2651, !psr.id !2653

74:                                               ; preds = %67
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2654, !psr.id !2655
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !2656, !psr.id !2657
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2658, !psr.id !2659
  call void @fpmul1271(i32* %75, i32* %76, i32* %77), !dbg !2660, !psr.id !2661
  call void @llvm.dbg.value(metadata i32 0, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2662
  br label %78, !dbg !2663, !psr.id !2665

78:                                               ; preds = %83, %74
  %.4 = phi i32 [ 0, %74 ], [ %84, %83 ], !dbg !2666, !psr.id !2667
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2668
  %79 = icmp slt i32 %.4, 16, !dbg !2669, !psr.id !2671
  br i1 %79, label %80, label %85, !dbg !2672, !psr.id !2673

80:                                               ; preds = %78
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2674, !psr.id !2675
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2676, !psr.id !2677
  call void @fpsqr1271(i32* %81, i32* %82), !dbg !2678, !psr.id !2679
  br label %83, !dbg !2678, !psr.id !2680

83:                                               ; preds = %80
  %84 = add nsw i32 %.4, 1, !dbg !2681, !psr.id !2682
  call void @llvm.dbg.value(metadata i32 %84, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2683
  br label %78, !dbg !2684, !llvm.loop !2685, !psr.id !2687

85:                                               ; preds = %78
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !2688, !psr.id !2689
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2690, !psr.id !2691
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2692, !psr.id !2693
  call void @fpmul1271(i32* %86, i32* %87, i32* %88), !dbg !2694, !psr.id !2695
  call void @llvm.dbg.value(metadata i32 0, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2696
  br label %89, !dbg !2697, !psr.id !2699

89:                                               ; preds = %94, %85
  %.5 = phi i32 [ 0, %85 ], [ %95, %94 ], !dbg !2700, !psr.id !2701
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2702
  %90 = icmp slt i32 %.5, 8, !dbg !2703, !psr.id !2705
  br i1 %90, label %91, label %96, !dbg !2706, !psr.id !2707

91:                                               ; preds = %89
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2708, !psr.id !2709
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2710, !psr.id !2711
  call void @fpsqr1271(i32* %92, i32* %93), !dbg !2712, !psr.id !2713
  br label %94, !dbg !2712, !psr.id !2714

94:                                               ; preds = %91
  %95 = add nsw i32 %.5, 1, !dbg !2715, !psr.id !2716
  call void @llvm.dbg.value(metadata i32 %95, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2717
  br label %89, !dbg !2718, !llvm.loop !2719, !psr.id !2721

96:                                               ; preds = %89
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !2722, !psr.id !2723
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2724, !psr.id !2725
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2726, !psr.id !2727
  call void @fpmul1271(i32* %97, i32* %98, i32* %99), !dbg !2728, !psr.id !2729
  call void @llvm.dbg.value(metadata i32 0, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2730
  br label %100, !dbg !2731, !psr.id !2733

100:                                              ; preds = %105, %96
  %.6 = phi i32 [ 0, %96 ], [ %106, %105 ], !dbg !2734, !psr.id !2735
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2736
  %101 = icmp slt i32 %.6, 4, !dbg !2737, !psr.id !2739
  br i1 %101, label %102, label %107, !dbg !2740, !psr.id !2741

102:                                              ; preds = %100
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2742, !psr.id !2743
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2744, !psr.id !2745
  call void @fpsqr1271(i32* %103, i32* %104), !dbg !2746, !psr.id !2747
  br label %105, !dbg !2746, !psr.id !2748

105:                                              ; preds = %102
  %106 = add nsw i32 %.6, 1, !dbg !2749, !psr.id !2750
  call void @llvm.dbg.value(metadata i32 %106, metadata !2513, metadata !DIExpression()), !dbg !2428, !psr.id !2751
  br label %100, !dbg !2752, !llvm.loop !2753, !psr.id !2755

107:                                              ; preds = %100
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2756, !psr.id !2757
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2758, !psr.id !2759
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2760, !psr.id !2761
  call void @fpmul1271(i32* %108, i32* %109, i32* %110), !dbg !2762, !psr.id !2763
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2764, !psr.id !2765
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2766, !psr.id !2767
  call void @fpsqr1271(i32* %111, i32* %112), !dbg !2768, !psr.id !2769
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2770, !psr.id !2771
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2772, !psr.id !2773
  call void @fpmul1271(i32* %0, i32* %113, i32* %114), !dbg !2774, !psr.id !2775
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2776, !psr.id !2777
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2778, !psr.id !2779
  call void @fpsqr1271(i32* %115, i32* %116), !dbg !2780, !psr.id !2781
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2782, !psr.id !2783
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2784, !psr.id !2785
  call void @fpsqr1271(i32* %117, i32* %118), !dbg !2786, !psr.id !2787
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2788, !psr.id !2789
  call void @fpmul1271(i32* %0, i32* %119, i32* %0), !dbg !2790, !psr.id !2791
  ret void, !dbg !2792, !psr.id !2793
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subtract(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !2794 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2795, metadata !DIExpression()), !dbg !2796, !psr.id !2797
  call void @llvm.dbg.value(metadata i32* %1, metadata !2798, metadata !DIExpression()), !dbg !2796, !psr.id !2799
  call void @llvm.dbg.value(metadata i32* %2, metadata !2800, metadata !DIExpression()), !dbg !2796, !psr.id !2801
  call void @llvm.dbg.value(metadata i32 %3, metadata !2802, metadata !DIExpression()), !dbg !2796, !psr.id !2803
  call void @llvm.dbg.value(metadata i32 0, metadata !2804, metadata !DIExpression()), !dbg !2796, !psr.id !2805
  call void @llvm.dbg.value(metadata i32 0, metadata !2806, metadata !DIExpression()), !dbg !2796, !psr.id !2807
  br label %5, !dbg !2808, !psr.id !2810

5:                                                ; preds = %28, %4
  %.01 = phi i32 [ 0, %4 ], [ %29, %28 ], !dbg !2811, !psr.id !2812
  %.0 = phi i32 [ 0, %4 ], [ %24, %28 ], !dbg !2796, !psr.id !2813
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2804, metadata !DIExpression()), !dbg !2796, !psr.id !2814
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2806, metadata !DIExpression()), !dbg !2796, !psr.id !2815
  %6 = icmp ult i32 %.01, %3, !dbg !2816, !psr.id !2818
  br i1 %6, label %7, label %30, !dbg !2819, !psr.id !2820

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64, !dbg !2821, !psr.id !2824
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !2821, !psr.id !2825
  %10 = load i32, i32* %9, align 4, !dbg !2821, !psr.id !2826
  %11 = zext i32 %.01 to i64, !dbg !2821, !psr.id !2827
  %12 = getelementptr inbounds i32, i32* %1, i64 %11, !dbg !2821, !psr.id !2828
  %13 = load i32, i32* %12, align 4, !dbg !2821, !psr.id !2829
  %14 = sub i32 %10, %13, !dbg !2821, !psr.id !2830
  call void @llvm.dbg.value(metadata i32 %14, metadata !2831, metadata !DIExpression()), !dbg !2832, !psr.id !2833
  %15 = zext i32 %.01 to i64, !dbg !2821, !psr.id !2834
  %16 = getelementptr inbounds i32, i32* %0, i64 %15, !dbg !2821, !psr.id !2835
  %17 = load i32, i32* %16, align 4, !dbg !2821, !psr.id !2836
  %18 = zext i32 %.01 to i64, !dbg !2821, !psr.id !2837
  %19 = getelementptr inbounds i32, i32* %1, i64 %18, !dbg !2821, !psr.id !2838
  %20 = load i32, i32* %19, align 4, !dbg !2821, !psr.id !2839
  %21 = call i32 @is_digit_lessthan_ct(i32 %17, i32 %20), !dbg !2821, !psr.id !2840
  %22 = call i32 @is_digit_zero_ct(i32 %14), !dbg !2821, !psr.id !2841
  %23 = and i32 %.0, %22, !dbg !2821, !psr.id !2842
  %24 = or i32 %21, %23, !dbg !2821, !psr.id !2843
  call void @llvm.dbg.value(metadata i32 %24, metadata !2844, metadata !DIExpression()), !dbg !2832, !psr.id !2845
  %25 = sub i32 %14, %.0, !dbg !2821, !psr.id !2846
  %26 = zext i32 %.01 to i64, !dbg !2821, !psr.id !2847
  %27 = getelementptr inbounds i32, i32* %2, i64 %26, !dbg !2821, !psr.id !2848
  store i32 %25, i32* %27, align 4, !dbg !2821, !psr.id !2849
  call void @llvm.dbg.value(metadata i32 %24, metadata !2804, metadata !DIExpression()), !dbg !2796, !psr.id !2850
  br label %28, !dbg !2851, !psr.id !2852

28:                                               ; preds = %7
  %29 = add i32 %.01, 1, !dbg !2853, !psr.id !2854
  call void @llvm.dbg.value(metadata i32 %29, metadata !2806, metadata !DIExpression()), !dbg !2796, !psr.id !2855
  br label %5, !dbg !2856, !llvm.loop !2857, !psr.id !2859

30:                                               ; preds = %5
  ret i32 %.0, !dbg !2860, !psr.id !2861
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Montgomery_multiply(i32* %0, i32* %1, i32* %2, i32* %3) #0 !dbg !2862 {
  %5 = alloca [16 x i32], align 16, !psr.id !2865
  %6 = alloca [16 x i32], align 16, !psr.id !2866
  %7 = alloca [16 x i32], align 16, !psr.id !2867
  call void @llvm.dbg.value(metadata i32* %0, metadata !2868, metadata !DIExpression()), !dbg !2869, !psr.id !2870
  call void @llvm.dbg.value(metadata i32* %1, metadata !2871, metadata !DIExpression()), !dbg !2869, !psr.id !2872
  call void @llvm.dbg.value(metadata i32* %2, metadata !2873, metadata !DIExpression()), !dbg !2869, !psr.id !2874
  call void @llvm.dbg.value(metadata i32* %3, metadata !2875, metadata !DIExpression()), !dbg !2869, !psr.id !2876
  call void @llvm.dbg.declare(metadata [16 x i32]* %5, metadata !2877, metadata !DIExpression()), !dbg !2881, !psr.id !2882
  call void @llvm.dbg.declare(metadata [16 x i32]* %6, metadata !2883, metadata !DIExpression()), !dbg !2884, !psr.id !2885
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !2886, metadata !DIExpression()), !dbg !2887, !psr.id !2888
  call void @llvm.dbg.value(metadata i32 0, metadata !2889, metadata !DIExpression()), !dbg !2869, !psr.id !2890
  call void @llvm.dbg.value(metadata i32 0, metadata !2891, metadata !DIExpression()), !dbg !2869, !psr.id !2892
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !2893, !psr.id !2894
  call void @multiply(i32* %0, i32* %1, i32* %8), !dbg !2895, !psr.id !2896
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !2897, !psr.id !2898
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !2899, !psr.id !2900
  call void @multiply(i32* %9, i32* bitcast ([4 x i64]* @Montgomery_rprime to i32*), i32* %10), !dbg !2901, !psr.id !2902
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !2903, !psr.id !2904
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2905, !psr.id !2906
  call void @multiply(i32* %11, i32* %3, i32* %12), !dbg !2907, !psr.id !2908
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !2909, !psr.id !2910
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2911, !psr.id !2912
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2913, !psr.id !2914
  %16 = call i32 @add(i32* %13, i32* %14, i32* %15, i32 16), !dbg !2915, !psr.id !2916
  call void @llvm.dbg.value(metadata i32 %16, metadata !2889, metadata !DIExpression()), !dbg !2869, !psr.id !2917
  call void @llvm.dbg.value(metadata i32 0, metadata !2918, metadata !DIExpression()), !dbg !2869, !psr.id !2919
  br label %17, !dbg !2920, !psr.id !2922

17:                                               ; preds = %26, %4
  %.0 = phi i32 [ 0, %4 ], [ %27, %26 ], !dbg !2923, !psr.id !2924
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2918, metadata !DIExpression()), !dbg !2869, !psr.id !2925
  %18 = icmp ult i32 %.0, 8, !dbg !2926, !psr.id !2928
  br i1 %18, label %19, label %28, !dbg !2929, !psr.id !2930

19:                                               ; preds = %17
  %20 = add i32 8, %.0, !dbg !2931, !psr.id !2933
  %21 = zext i32 %20 to i64, !dbg !2934, !psr.id !2935
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %21, !dbg !2934, !psr.id !2936
  %23 = load i32, i32* %22, align 4, !dbg !2934, !psr.id !2937
  %24 = zext i32 %.0 to i64, !dbg !2938, !psr.id !2939
  %25 = getelementptr inbounds i32, i32* %2, i64 %24, !dbg !2938, !psr.id !2940
  store i32 %23, i32* %25, align 4, !dbg !2941, !psr.id !2942
  br label %26, !dbg !2943, !psr.id !2944

26:                                               ; preds = %19
  %27 = add i32 %.0, 1, !dbg !2945, !psr.id !2946
  call void @llvm.dbg.value(metadata i32 %27, metadata !2918, metadata !DIExpression()), !dbg !2869, !psr.id !2947
  br label %17, !dbg !2948, !llvm.loop !2949, !psr.id !2951

28:                                               ; preds = %17
  %29 = call i32 @subtract(i32* %2, i32* %3, i32* %2, i32 8), !dbg !2952, !psr.id !2953
  call void @llvm.dbg.value(metadata i32 %29, metadata !2891, metadata !DIExpression()), !dbg !2869, !psr.id !2954
  %30 = sub i32 %16, %29, !dbg !2955, !psr.id !2956
  call void @llvm.dbg.value(metadata i32 %30, metadata !2957, metadata !DIExpression()), !dbg !2869, !psr.id !2958
  call void @llvm.dbg.value(metadata i32 0, metadata !2918, metadata !DIExpression()), !dbg !2869, !psr.id !2959
  br label %31, !dbg !2960, !psr.id !2962

31:                                               ; preds = %40, %28
  %.1 = phi i32 [ 0, %28 ], [ %41, %40 ], !dbg !2963, !psr.id !2964
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2918, metadata !DIExpression()), !dbg !2869, !psr.id !2965
  %32 = icmp ult i32 %.1, 8, !dbg !2966, !psr.id !2968
  br i1 %32, label %33, label %42, !dbg !2969, !psr.id !2970

33:                                               ; preds = %31
  %34 = zext i32 %.1 to i64, !dbg !2971, !psr.id !2973
  %35 = getelementptr inbounds i32, i32* %3, i64 %34, !dbg !2971, !psr.id !2974
  %36 = load i32, i32* %35, align 4, !dbg !2971, !psr.id !2975
  %37 = and i32 %36, %30, !dbg !2976, !psr.id !2977
  %38 = zext i32 %.1 to i64, !dbg !2978, !psr.id !2979
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %38, !dbg !2978, !psr.id !2980
  store i32 %37, i32* %39, align 4, !dbg !2981, !psr.id !2982
  br label %40, !dbg !2983, !psr.id !2984

40:                                               ; preds = %33
  %41 = add i32 %.1, 1, !dbg !2985, !psr.id !2986
  call void @llvm.dbg.value(metadata i32 %41, metadata !2918, metadata !DIExpression()), !dbg !2869, !psr.id !2987
  br label %31, !dbg !2988, !llvm.loop !2989, !psr.id !2991

42:                                               ; preds = %31
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2992, !psr.id !2993
  %44 = call i32 @add(i32* %2, i32* %43, i32* %2, i32 8), !dbg !2994, !psr.id !2995
  ret void, !dbg !2996, !psr.id !2997
}

; Function Attrs: noinline nounwind uwtable
define internal void @multiply(i32* %0, i32* %1, i32* %2) #0 !dbg !2998 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2999, metadata !DIExpression()), !dbg !3000, !psr.id !3001
  call void @llvm.dbg.value(metadata i32* %1, metadata !3002, metadata !DIExpression()), !dbg !3000, !psr.id !3003
  call void @llvm.dbg.value(metadata i32* %2, metadata !3004, metadata !DIExpression()), !dbg !3000, !psr.id !3005
  call void @mp_mul(i32* %0, i32* %1, i32* %2, i32 8), !dbg !3006, !psr.id !3007
  ret void, !dbg !3008, !psr.id !3009
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @add(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !3010 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3011, metadata !DIExpression()), !dbg !3012, !psr.id !3013
  call void @llvm.dbg.value(metadata i32* %1, metadata !3014, metadata !DIExpression()), !dbg !3012, !psr.id !3015
  call void @llvm.dbg.value(metadata i32* %2, metadata !3016, metadata !DIExpression()), !dbg !3012, !psr.id !3017
  call void @llvm.dbg.value(metadata i32 %3, metadata !3018, metadata !DIExpression()), !dbg !3012, !psr.id !3019
  %5 = call i32 @mp_add(i32* %0, i32* %1, i32* %2, i32 %3), !dbg !3020, !psr.id !3021
  ret i32 %5, !dbg !3022, !psr.id !3023
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @modulo_order(i32* %0, i32* %1, %struct.CurveStruct* %2) #0 !dbg !3024 {
  %4 = alloca [8 x i32], align 16, !psr.id !3041
  %5 = alloca [8 x i32], align 16, !psr.id !3042
  call void @llvm.dbg.value(metadata i32* %0, metadata !3043, metadata !DIExpression()), !dbg !3044, !psr.id !3045
  call void @llvm.dbg.value(metadata i32* %1, metadata !3046, metadata !DIExpression()), !dbg !3044, !psr.id !3047
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !3048, metadata !DIExpression()), !dbg !3044, !psr.id !3049
  call void @llvm.dbg.declare(metadata [8 x i32]* %4, metadata !3050, metadata !DIExpression()), !dbg !3052, !psr.id !3053
  call void @llvm.dbg.declare(metadata [8 x i32]* %5, metadata !3054, metadata !DIExpression()), !dbg !3055, !psr.id !3056
  %6 = bitcast [8 x i32]* %5 to i8*, !dbg !3055, !psr.id !3057
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 32, i1 false), !dbg !3055, !psr.id !3058
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0, !dbg !3059, !psr.id !3060
  store i32 1, i32* %7, align 16, !dbg !3061, !psr.id !3062
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !3063, !psr.id !3064
  %9 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 5, !dbg !3065, !psr.id !3066
  %10 = bitcast [4 x i64]* %9 to i32*, !dbg !3067, !psr.id !3068
  call void @Montgomery_multiply(i32* %0, i32* bitcast ([4 x i64]* @Montgomery_Rprime to i32*), i32* %8, i32* %10), !dbg !3069, !psr.id !3070
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !3071, !psr.id !3072
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0, !dbg !3073, !psr.id !3074
  %13 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 5, !dbg !3075, !psr.id !3076
  %14 = bitcast [4 x i64]* %13 to i32*, !dbg !3077, !psr.id !3078
  call void @Montgomery_multiply(i32* %11, i32* %12, i32* %1, i32* %14), !dbg !3079, !psr.id !3080
  ret void, !dbg !3081, !psr.id !3082
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @conversion_to_odd(i32* %0, i32* %1, %struct.CurveStruct* %2) #0 !dbg !3083 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3084, metadata !DIExpression()), !dbg !3085, !psr.id !3086
  call void @llvm.dbg.value(metadata i32* %1, metadata !3087, metadata !DIExpression()), !dbg !3085, !psr.id !3088
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !3089, metadata !DIExpression()), !dbg !3085, !psr.id !3090
  %4 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 5, !dbg !3091, !psr.id !3092
  %5 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !3093, !psr.id !3094
  %6 = bitcast i64* %5 to i32*, !dbg !3095, !psr.id !3096
  call void @llvm.dbg.value(metadata i32* %6, metadata !3097, metadata !DIExpression()), !dbg !3085, !psr.id !3098
  call void @llvm.dbg.value(metadata i32 0, metadata !3099, metadata !DIExpression()), !dbg !3085, !psr.id !3100
  %7 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !3101, !psr.id !3102
  %8 = load i32, i32* %7, align 4, !dbg !3101, !psr.id !3103
  %9 = and i32 %8, 1, !dbg !3104, !psr.id !3105
  %10 = sub i32 0, %9, !dbg !3106, !psr.id !3107
  %11 = xor i32 %10, -1, !dbg !3108, !psr.id !3109
  call void @llvm.dbg.value(metadata i32 %11, metadata !3110, metadata !DIExpression()), !dbg !3085, !psr.id !3111
  call void @llvm.dbg.value(metadata i32 0, metadata !3112, metadata !DIExpression()), !dbg !3085, !psr.id !3113
  br label %12, !dbg !3114, !psr.id !3116

12:                                               ; preds = %32, %3
  %.01 = phi i32 [ 0, %3 ], [ %33, %32 ], !dbg !3117, !psr.id !3118
  %.0 = phi i32 [ 0, %3 ], [ %31, %32 ], !dbg !3085, !psr.id !3119
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3099, metadata !DIExpression()), !dbg !3085, !psr.id !3120
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3112, metadata !DIExpression()), !dbg !3085, !psr.id !3121
  %13 = icmp ult i32 %.01, 8, !dbg !3122, !psr.id !3124
  br i1 %13, label %14, label %34, !dbg !3125, !psr.id !3126

14:                                               ; preds = %12
  %15 = zext i32 %.01 to i64, !dbg !3127, !psr.id !3130
  %16 = getelementptr inbounds i32, i32* %6, i64 %15, !dbg !3127, !psr.id !3131
  %17 = load i32, i32* %16, align 4, !dbg !3127, !psr.id !3132
  %18 = and i32 %17, %11, !dbg !3127, !psr.id !3133
  %19 = add i32 %18, %.0, !dbg !3127, !psr.id !3134
  call void @llvm.dbg.value(metadata i32 %19, metadata !3135, metadata !DIExpression()), !dbg !3136, !psr.id !3137
  %20 = zext i32 %.01 to i64, !dbg !3127, !psr.id !3138
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !3127, !psr.id !3139
  %22 = load i32, i32* %21, align 4, !dbg !3127, !psr.id !3140
  %23 = add i32 %22, %19, !dbg !3127, !psr.id !3141
  %24 = zext i32 %.01 to i64, !dbg !3127, !psr.id !3142
  %25 = getelementptr inbounds i32, i32* %1, i64 %24, !dbg !3127, !psr.id !3143
  store i32 %23, i32* %25, align 4, !dbg !3127, !psr.id !3144
  %26 = call i32 @is_digit_lessthan_ct(i32 %19, i32 %.0), !dbg !3127, !psr.id !3145
  %27 = zext i32 %.01 to i64, !dbg !3127, !psr.id !3146
  %28 = getelementptr inbounds i32, i32* %1, i64 %27, !dbg !3127, !psr.id !3147
  %29 = load i32, i32* %28, align 4, !dbg !3127, !psr.id !3148
  %30 = call i32 @is_digit_lessthan_ct(i32 %29, i32 %19), !dbg !3127, !psr.id !3149
  %31 = or i32 %26, %30, !dbg !3127, !psr.id !3150
  call void @llvm.dbg.value(metadata i32 %31, metadata !3099, metadata !DIExpression()), !dbg !3085, !psr.id !3151
  br label %32, !dbg !3152, !psr.id !3153

32:                                               ; preds = %14
  %33 = add i32 %.01, 1, !dbg !3154, !psr.id !3155
  call void @llvm.dbg.value(metadata i32 %33, metadata !3112, metadata !DIExpression()), !dbg !3085, !psr.id !3156
  br label %12, !dbg !3157, !llvm.loop !3158, !psr.id !3160

34:                                               ; preds = %12
  ret void, !dbg !3161, !psr.id !3162
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpcopy1271(i32* %0, i32* %1) #0 !dbg !3163 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3164, metadata !DIExpression()), !dbg !3165, !psr.id !3166
  call void @llvm.dbg.value(metadata i32* %1, metadata !3167, metadata !DIExpression()), !dbg !3165, !psr.id !3168
  call void @llvm.dbg.value(metadata i32 0, metadata !3169, metadata !DIExpression()), !dbg !3165, !psr.id !3170
  br label %3, !dbg !3171, !psr.id !3173

3:                                                ; preds = %11, %2
  %.0 = phi i32 [ 0, %2 ], [ %12, %11 ], !dbg !3174, !psr.id !3175
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3169, metadata !DIExpression()), !dbg !3165, !psr.id !3176
  %4 = icmp ult i32 %.0, 4, !dbg !3177, !psr.id !3179
  br i1 %4, label %5, label %13, !dbg !3180, !psr.id !3181

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64, !dbg !3182, !psr.id !3183
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !3182, !psr.id !3184
  %8 = load i32, i32* %7, align 4, !dbg !3182, !psr.id !3185
  %9 = zext i32 %.0 to i64, !dbg !3186, !psr.id !3187
  %10 = getelementptr inbounds i32, i32* %1, i64 %9, !dbg !3186, !psr.id !3188
  store i32 %8, i32* %10, align 4, !dbg !3189, !psr.id !3190
  br label %11, !dbg !3186, !psr.id !3191

11:                                               ; preds = %5
  %12 = add i32 %.0, 1, !dbg !3192, !psr.id !3193
  call void @llvm.dbg.value(metadata i32 %12, metadata !3169, metadata !DIExpression()), !dbg !3165, !psr.id !3194
  br label %3, !dbg !3195, !llvm.loop !3196, !psr.id !3198

13:                                               ; preds = %3
  ret void, !dbg !3199, !psr.id !3200
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2zero1271([4 x i32]* %0) #0 !dbg !3201 {
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !3204, metadata !DIExpression()), !dbg !3205, !psr.id !3206
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3207, !psr.id !3208
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !3207, !psr.id !3209
  call void @fpzero1271(i32* %3), !dbg !3210, !psr.id !3211
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3212, !psr.id !3213
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3212, !psr.id !3214
  call void @fpzero1271(i32* %5), !dbg !3215, !psr.id !3216
  ret void, !dbg !3217, !psr.id !3218
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpzero1271(i32* %0) #0 !dbg !3219 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3220, metadata !DIExpression()), !dbg !3221, !psr.id !3222
  call void @llvm.dbg.value(metadata i32 0, metadata !3223, metadata !DIExpression()), !dbg !3221, !psr.id !3224
  br label %2, !dbg !3225, !psr.id !3227

2:                                                ; preds = %7, %1
  %.0 = phi i32 [ 0, %1 ], [ %8, %7 ], !dbg !3228, !psr.id !3229
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3223, metadata !DIExpression()), !dbg !3221, !psr.id !3230
  %3 = icmp ult i32 %.0, 4, !dbg !3231, !psr.id !3233
  br i1 %3, label %4, label %9, !dbg !3234, !psr.id !3235

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64, !dbg !3236, !psr.id !3237
  %6 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !3236, !psr.id !3238
  store i32 0, i32* %6, align 4, !dbg !3239, !psr.id !3240
  br label %7, !dbg !3236, !psr.id !3241

7:                                                ; preds = %4
  %8 = add i32 %.0, 1, !dbg !3242, !psr.id !3243
  call void @llvm.dbg.value(metadata i32 %8, metadata !3223, metadata !DIExpression()), !dbg !3221, !psr.id !3244
  br label %2, !dbg !3245, !llvm.loop !3246, !psr.id !3248

9:                                                ; preds = %2
  ret void, !dbg !3249, !psr.id !3250
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2neg1271([4 x i32]* %0) #0 !dbg !3251 {
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !3252, metadata !DIExpression()), !dbg !3253, !psr.id !3254
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3255, !psr.id !3256
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !3255, !psr.id !3257
  call void @fpneg1271(i32* %3), !dbg !3258, !psr.id !3259
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3260, !psr.id !3261
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3260, !psr.id !3262
  call void @fpneg1271(i32* %5), !dbg !3263, !psr.id !3264
  ret void, !dbg !3265, !psr.id !3266
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2sqr1271([4 x i32]* %0, [4 x i32]* %1) #0 !dbg !3267 {
  %3 = alloca [4 x i32], align 16, !psr.id !3268
  %4 = alloca [4 x i32], align 16, !psr.id !3269
  %5 = alloca [4 x i32], align 16, !psr.id !3270
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !3271, metadata !DIExpression()), !dbg !3272, !psr.id !3273
  call void @llvm.dbg.value(metadata [4 x i32]* %1, metadata !3274, metadata !DIExpression()), !dbg !3272, !psr.id !3275
  call void @llvm.dbg.declare(metadata [4 x i32]* %3, metadata !3276, metadata !DIExpression()), !dbg !3277, !psr.id !3278
  call void @llvm.dbg.declare(metadata [4 x i32]* %4, metadata !3279, metadata !DIExpression()), !dbg !3280, !psr.id !3281
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !3282, metadata !DIExpression()), !dbg !3283, !psr.id !3284
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3285, !psr.id !3286
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3285, !psr.id !3287
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3288, !psr.id !3289
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0, !dbg !3288, !psr.id !3290
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !3291, !psr.id !3292
  call void @fpadd1271(i32* %7, i32* %9, i32* %10), !dbg !3293, !psr.id !3294
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3295, !psr.id !3296
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0, !dbg !3295, !psr.id !3297
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3298, !psr.id !3299
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0, !dbg !3298, !psr.id !3300
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3301, !psr.id !3302
  call void @fpsub1271(i32* %12, i32* %14, i32* %15), !dbg !3303, !psr.id !3304
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3305, !psr.id !3306
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0, !dbg !3305, !psr.id !3307
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3308, !psr.id !3309
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0, !dbg !3308, !psr.id !3310
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3311, !psr.id !3312
  call void @fpmul1271(i32* %17, i32* %19, i32* %20), !dbg !3313, !psr.id !3314
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !3315, !psr.id !3316
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3317, !psr.id !3318
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, !dbg !3319, !psr.id !3320
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !3319, !psr.id !3321
  call void @fpmul1271(i32* %21, i32* %22, i32* %24), !dbg !3322, !psr.id !3323
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3324, !psr.id !3325
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3326, !psr.id !3327
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 1, !dbg !3328, !psr.id !3329
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0, !dbg !3328, !psr.id !3330
  call void @fpadd1271(i32* %25, i32* %26, i32* %28), !dbg !3331, !psr.id !3332
  ret void, !dbg !3333, !psr.id !3334
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpadd1271(i32* %0, i32* %1, i32* %2) #0 !dbg !3335 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3336, metadata !DIExpression()), !dbg !3337, !psr.id !3338
  call void @llvm.dbg.value(metadata i32* %1, metadata !3339, metadata !DIExpression()), !dbg !3337, !psr.id !3340
  call void @llvm.dbg.value(metadata i32* %2, metadata !3341, metadata !DIExpression()), !dbg !3337, !psr.id !3342
  call void @llvm.dbg.value(metadata i32 0, metadata !3343, metadata !DIExpression()), !dbg !3337, !psr.id !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3345, metadata !DIExpression()), !dbg !3337, !psr.id !3346
  br label %4, !dbg !3347, !psr.id !3349

4:                                                ; preds = %23, %3
  %.01 = phi i32 [ 0, %3 ], [ %24, %23 ], !dbg !3350, !psr.id !3351
  %.0 = phi i32 [ 0, %3 ], [ %22, %23 ], !dbg !3337, !psr.id !3352
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3343, metadata !DIExpression()), !dbg !3337, !psr.id !3353
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3345, metadata !DIExpression()), !dbg !3337, !psr.id !3354
  %5 = icmp ult i32 %.01, 4, !dbg !3355, !psr.id !3357
  br i1 %5, label %6, label %25, !dbg !3358, !psr.id !3359

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64, !dbg !3360, !psr.id !3363
  %8 = getelementptr inbounds i32, i32* %0, i64 %7, !dbg !3360, !psr.id !3364
  %9 = load i32, i32* %8, align 4, !dbg !3360, !psr.id !3365
  %10 = add i32 %9, %.0, !dbg !3360, !psr.id !3366
  call void @llvm.dbg.value(metadata i32 %10, metadata !3367, metadata !DIExpression()), !dbg !3368, !psr.id !3369
  %11 = zext i32 %.01 to i64, !dbg !3360, !psr.id !3370
  %12 = getelementptr inbounds i32, i32* %1, i64 %11, !dbg !3360, !psr.id !3371
  %13 = load i32, i32* %12, align 4, !dbg !3360, !psr.id !3372
  %14 = add i32 %13, %10, !dbg !3360, !psr.id !3373
  %15 = zext i32 %.01 to i64, !dbg !3360, !psr.id !3374
  %16 = getelementptr inbounds i32, i32* %2, i64 %15, !dbg !3360, !psr.id !3375
  store i32 %14, i32* %16, align 4, !dbg !3360, !psr.id !3376
  %17 = call i32 @is_digit_lessthan_ct(i32 %10, i32 %.0), !dbg !3360, !psr.id !3377
  %18 = zext i32 %.01 to i64, !dbg !3360, !psr.id !3378
  %19 = getelementptr inbounds i32, i32* %2, i64 %18, !dbg !3360, !psr.id !3379
  %20 = load i32, i32* %19, align 4, !dbg !3360, !psr.id !3380
  %21 = call i32 @is_digit_lessthan_ct(i32 %20, i32 %10), !dbg !3360, !psr.id !3381
  %22 = or i32 %17, %21, !dbg !3360, !psr.id !3382
  call void @llvm.dbg.value(metadata i32 %22, metadata !3343, metadata !DIExpression()), !dbg !3337, !psr.id !3383
  br label %23, !dbg !3384, !psr.id !3385

23:                                               ; preds = %6
  %24 = add i32 %.01, 1, !dbg !3386, !psr.id !3387
  call void @llvm.dbg.value(metadata i32 %24, metadata !3345, metadata !DIExpression()), !dbg !3337, !psr.id !3388
  br label %4, !dbg !3389, !llvm.loop !3390, !psr.id !3392

25:                                               ; preds = %4
  %26 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !3393, !psr.id !3394
  %27 = load i32, i32* %26, align 4, !dbg !3393, !psr.id !3395
  %28 = lshr i32 %27, 31, !dbg !3396, !psr.id !3397
  call void @llvm.dbg.value(metadata i32 %28, metadata !3343, metadata !DIExpression()), !dbg !3337, !psr.id !3398
  %29 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !3399, !psr.id !3400
  %30 = load i32, i32* %29, align 4, !dbg !3401, !psr.id !3402
  %31 = and i32 %30, 2147483647, !dbg !3401, !psr.id !3403
  store i32 %31, i32* %29, align 4, !dbg !3401, !psr.id !3404
  call void @llvm.dbg.value(metadata i32 0, metadata !3345, metadata !DIExpression()), !dbg !3337, !psr.id !3405
  br label %32, !dbg !3406, !psr.id !3408

32:                                               ; preds = %48, %25
  %.12 = phi i32 [ 0, %25 ], [ %49, %48 ], !dbg !3409, !psr.id !3410
  %.1 = phi i32 [ %28, %25 ], [ %47, %48 ], !dbg !3337, !psr.id !3411
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3343, metadata !DIExpression()), !dbg !3337, !psr.id !3412
  call void @llvm.dbg.value(metadata i32 %.12, metadata !3345, metadata !DIExpression()), !dbg !3337, !psr.id !3413
  %33 = icmp ult i32 %.12, 4, !dbg !3414, !psr.id !3416
  br i1 %33, label %34, label %50, !dbg !3417, !psr.id !3418

34:                                               ; preds = %32
  %35 = zext i32 %.12 to i64, !dbg !3419, !psr.id !3422
  %36 = getelementptr inbounds i32, i32* %2, i64 %35, !dbg !3419, !psr.id !3423
  %37 = load i32, i32* %36, align 4, !dbg !3419, !psr.id !3424
  %38 = add i32 %37, %.1, !dbg !3419, !psr.id !3425
  call void @llvm.dbg.value(metadata i32 %38, metadata !3426, metadata !DIExpression()), !dbg !3427, !psr.id !3428
  %39 = add i32 0, %38, !dbg !3419, !psr.id !3429
  %40 = zext i32 %.12 to i64, !dbg !3419, !psr.id !3430
  %41 = getelementptr inbounds i32, i32* %2, i64 %40, !dbg !3419, !psr.id !3431
  store i32 %39, i32* %41, align 4, !dbg !3419, !psr.id !3432
  %42 = call i32 @is_digit_lessthan_ct(i32 %38, i32 %.1), !dbg !3419, !psr.id !3433
  %43 = zext i32 %.12 to i64, !dbg !3419, !psr.id !3434
  %44 = getelementptr inbounds i32, i32* %2, i64 %43, !dbg !3419, !psr.id !3435
  %45 = load i32, i32* %44, align 4, !dbg !3419, !psr.id !3436
  %46 = call i32 @is_digit_lessthan_ct(i32 %45, i32 %38), !dbg !3419, !psr.id !3437
  %47 = or i32 %42, %46, !dbg !3419, !psr.id !3438
  call void @llvm.dbg.value(metadata i32 %47, metadata !3343, metadata !DIExpression()), !dbg !3337, !psr.id !3439
  br label %48, !dbg !3440, !psr.id !3441

48:                                               ; preds = %34
  %49 = add i32 %.12, 1, !dbg !3442, !psr.id !3443
  call void @llvm.dbg.value(metadata i32 %49, metadata !3345, metadata !DIExpression()), !dbg !3337, !psr.id !3444
  br label %32, !dbg !3445, !llvm.loop !3446, !psr.id !3448

50:                                               ; preds = %32
  ret void, !dbg !3449, !psr.id !3450
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpsub1271(i32* %0, i32* %1, i32* %2) #0 !dbg !3451 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3452, metadata !DIExpression()), !dbg !3453, !psr.id !3454
  call void @llvm.dbg.value(metadata i32* %1, metadata !3455, metadata !DIExpression()), !dbg !3453, !psr.id !3456
  call void @llvm.dbg.value(metadata i32* %2, metadata !3457, metadata !DIExpression()), !dbg !3453, !psr.id !3458
  call void @llvm.dbg.value(metadata i32 0, metadata !3459, metadata !DIExpression()), !dbg !3453, !psr.id !3460
  call void @llvm.dbg.value(metadata i32 0, metadata !3461, metadata !DIExpression()), !dbg !3453, !psr.id !3462
  br label %4, !dbg !3463, !psr.id !3465

4:                                                ; preds = %27, %3
  %.01 = phi i32 [ 0, %3 ], [ %28, %27 ], !dbg !3466, !psr.id !3467
  %.0 = phi i32 [ 0, %3 ], [ %23, %27 ], !dbg !3453, !psr.id !3468
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3459, metadata !DIExpression()), !dbg !3453, !psr.id !3469
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3461, metadata !DIExpression()), !dbg !3453, !psr.id !3470
  %5 = icmp ult i32 %.01, 4, !dbg !3471, !psr.id !3473
  br i1 %5, label %6, label %29, !dbg !3474, !psr.id !3475

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64, !dbg !3476, !psr.id !3479
  %8 = getelementptr inbounds i32, i32* %0, i64 %7, !dbg !3476, !psr.id !3480
  %9 = load i32, i32* %8, align 4, !dbg !3476, !psr.id !3481
  %10 = zext i32 %.01 to i64, !dbg !3476, !psr.id !3482
  %11 = getelementptr inbounds i32, i32* %1, i64 %10, !dbg !3476, !psr.id !3483
  %12 = load i32, i32* %11, align 4, !dbg !3476, !psr.id !3484
  %13 = sub i32 %9, %12, !dbg !3476, !psr.id !3485
  call void @llvm.dbg.value(metadata i32 %13, metadata !3486, metadata !DIExpression()), !dbg !3487, !psr.id !3488
  %14 = zext i32 %.01 to i64, !dbg !3476, !psr.id !3489
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !3476, !psr.id !3490
  %16 = load i32, i32* %15, align 4, !dbg !3476, !psr.id !3491
  %17 = zext i32 %.01 to i64, !dbg !3476, !psr.id !3492
  %18 = getelementptr inbounds i32, i32* %1, i64 %17, !dbg !3476, !psr.id !3493
  %19 = load i32, i32* %18, align 4, !dbg !3476, !psr.id !3494
  %20 = call i32 @is_digit_lessthan_ct(i32 %16, i32 %19), !dbg !3476, !psr.id !3495
  %21 = call i32 @is_digit_zero_ct(i32 %13), !dbg !3476, !psr.id !3496
  %22 = and i32 %.0, %21, !dbg !3476, !psr.id !3497
  %23 = or i32 %20, %22, !dbg !3476, !psr.id !3498
  call void @llvm.dbg.value(metadata i32 %23, metadata !3499, metadata !DIExpression()), !dbg !3487, !psr.id !3500
  %24 = sub i32 %13, %.0, !dbg !3476, !psr.id !3501
  %25 = zext i32 %.01 to i64, !dbg !3476, !psr.id !3502
  %26 = getelementptr inbounds i32, i32* %2, i64 %25, !dbg !3476, !psr.id !3503
  store i32 %24, i32* %26, align 4, !dbg !3476, !psr.id !3504
  call void @llvm.dbg.value(metadata i32 %23, metadata !3459, metadata !DIExpression()), !dbg !3453, !psr.id !3505
  br label %27, !dbg !3506, !psr.id !3507

27:                                               ; preds = %6
  %28 = add i32 %.01, 1, !dbg !3508, !psr.id !3509
  call void @llvm.dbg.value(metadata i32 %28, metadata !3461, metadata !DIExpression()), !dbg !3453, !psr.id !3510
  br label %4, !dbg !3511, !llvm.loop !3512, !psr.id !3514

29:                                               ; preds = %4
  %30 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !3515, !psr.id !3516
  %31 = load i32, i32* %30, align 4, !dbg !3515, !psr.id !3517
  %32 = lshr i32 %31, 31, !dbg !3518, !psr.id !3519
  call void @llvm.dbg.value(metadata i32 %32, metadata !3459, metadata !DIExpression()), !dbg !3453, !psr.id !3520
  %33 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !3521, !psr.id !3522
  %34 = load i32, i32* %33, align 4, !dbg !3523, !psr.id !3524
  %35 = and i32 %34, 2147483647, !dbg !3523, !psr.id !3525
  store i32 %35, i32* %33, align 4, !dbg !3523, !psr.id !3526
  call void @llvm.dbg.value(metadata i32 0, metadata !3461, metadata !DIExpression()), !dbg !3453, !psr.id !3527
  br label %36, !dbg !3528, !psr.id !3530

36:                                               ; preds = %53, %29
  %.12 = phi i32 [ 0, %29 ], [ %54, %53 ], !dbg !3531, !psr.id !3532
  %.1 = phi i32 [ %32, %29 ], [ %49, %53 ], !dbg !3453, !psr.id !3533
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3459, metadata !DIExpression()), !dbg !3453, !psr.id !3534
  call void @llvm.dbg.value(metadata i32 %.12, metadata !3461, metadata !DIExpression()), !dbg !3453, !psr.id !3535
  %37 = icmp ult i32 %.12, 4, !dbg !3536, !psr.id !3538
  br i1 %37, label %38, label %55, !dbg !3539, !psr.id !3540

38:                                               ; preds = %36
  %39 = zext i32 %.12 to i64, !dbg !3541, !psr.id !3544
  %40 = getelementptr inbounds i32, i32* %2, i64 %39, !dbg !3541, !psr.id !3545
  %41 = load i32, i32* %40, align 4, !dbg !3541, !psr.id !3546
  %42 = sub i32 %41, 0, !dbg !3541, !psr.id !3547
  call void @llvm.dbg.value(metadata i32 %42, metadata !3548, metadata !DIExpression()), !dbg !3549, !psr.id !3550
  %43 = zext i32 %.12 to i64, !dbg !3541, !psr.id !3551
  %44 = getelementptr inbounds i32, i32* %2, i64 %43, !dbg !3541, !psr.id !3552
  %45 = load i32, i32* %44, align 4, !dbg !3541, !psr.id !3553
  %46 = call i32 @is_digit_lessthan_ct(i32 %45, i32 0), !dbg !3541, !psr.id !3554
  %47 = call i32 @is_digit_zero_ct(i32 %42), !dbg !3541, !psr.id !3555
  %48 = and i32 %.1, %47, !dbg !3541, !psr.id !3556
  %49 = or i32 %46, %48, !dbg !3541, !psr.id !3557
  call void @llvm.dbg.value(metadata i32 %49, metadata !3558, metadata !DIExpression()), !dbg !3549, !psr.id !3559
  %50 = sub i32 %42, %.1, !dbg !3541, !psr.id !3560
  %51 = zext i32 %.12 to i64, !dbg !3541, !psr.id !3561
  %52 = getelementptr inbounds i32, i32* %2, i64 %51, !dbg !3541, !psr.id !3562
  store i32 %50, i32* %52, align 4, !dbg !3541, !psr.id !3563
  call void @llvm.dbg.value(metadata i32 %49, metadata !3459, metadata !DIExpression()), !dbg !3453, !psr.id !3564
  br label %53, !dbg !3565, !psr.id !3566

53:                                               ; preds = %38
  %54 = add i32 %.12, 1, !dbg !3567, !psr.id !3568
  call void @llvm.dbg.value(metadata i32 %54, metadata !3461, metadata !DIExpression()), !dbg !3453, !psr.id !3569
  br label %36, !dbg !3570, !llvm.loop !3571, !psr.id !3573

55:                                               ; preds = %36
  ret void, !dbg !3574, !psr.id !3575
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2mul1271([4 x i32]* %0, [4 x i32]* %1, [4 x i32]* %2) #0 !dbg !3576 {
  %4 = alloca [4 x i32], align 16, !psr.id !3579
  %5 = alloca [4 x i32], align 16, !psr.id !3580
  %6 = alloca [4 x i32], align 16, !psr.id !3581
  %7 = alloca [4 x i32], align 16, !psr.id !3582
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !3583, metadata !DIExpression()), !dbg !3584, !psr.id !3585
  call void @llvm.dbg.value(metadata [4 x i32]* %1, metadata !3586, metadata !DIExpression()), !dbg !3584, !psr.id !3587
  call void @llvm.dbg.value(metadata [4 x i32]* %2, metadata !3588, metadata !DIExpression()), !dbg !3584, !psr.id !3589
  call void @llvm.dbg.declare(metadata [4 x i32]* %4, metadata !3590, metadata !DIExpression()), !dbg !3591, !psr.id !3592
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !3593, metadata !DIExpression()), !dbg !3594, !psr.id !3595
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !3596, metadata !DIExpression()), !dbg !3597, !psr.id !3598
  call void @llvm.dbg.declare(metadata [4 x i32]* %7, metadata !3599, metadata !DIExpression()), !dbg !3600, !psr.id !3601
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3602, !psr.id !3603
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0, !dbg !3602, !psr.id !3604
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, !dbg !3605, !psr.id !3606
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0, !dbg !3605, !psr.id !3607
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3608, !psr.id !3609
  call void @fpmul1271(i32* %9, i32* %11, i32* %12), !dbg !3610, !psr.id !3611
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3612, !psr.id !3613
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0, !dbg !3612, !psr.id !3614
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 1, !dbg !3615, !psr.id !3616
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0, !dbg !3615, !psr.id !3617
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3618, !psr.id !3619
  call void @fpmul1271(i32* %14, i32* %16, i32* %17), !dbg !3620, !psr.id !3621
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3622, !psr.id !3623
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0, !dbg !3622, !psr.id !3624
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3625, !psr.id !3626
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0, !dbg !3625, !psr.id !3627
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3628, !psr.id !3629
  call void @fpadd1271(i32* %19, i32* %21, i32* %22), !dbg !3630, !psr.id !3631
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, !dbg !3632, !psr.id !3633
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !3632, !psr.id !3634
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 1, !dbg !3635, !psr.id !3636
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0, !dbg !3635, !psr.id !3637
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !3638, !psr.id !3639
  call void @fpadd1271(i32* %24, i32* %26, i32* %27), !dbg !3640, !psr.id !3641
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3642, !psr.id !3643
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3644, !psr.id !3645
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, !dbg !3646, !psr.id !3647
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0, !dbg !3646, !psr.id !3648
  call void @fpsub1271(i32* %28, i32* %29, i32* %31), !dbg !3649, !psr.id !3650
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3651, !psr.id !3652
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !3653, !psr.id !3654
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3655, !psr.id !3656
  call void @fpmul1271(i32* %32, i32* %33, i32* %34), !dbg !3657, !psr.id !3658
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3659, !psr.id !3660
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !3661, !psr.id !3662
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3663, !psr.id !3664
  call void @fpsub1271(i32* %35, i32* %36, i32* %37), !dbg !3665, !psr.id !3666
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !3667, !psr.id !3668
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3669, !psr.id !3670
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 1, !dbg !3671, !psr.id !3672
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i64 0, i64 0, !dbg !3671, !psr.id !3673
  call void @fpsub1271(i32* %38, i32* %39, i32* %41), !dbg !3674, !psr.id !3675
  ret void, !dbg !3676, !psr.id !3677
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2inv1271([4 x i32]* %0) #0 !dbg !3678 {
  %2 = alloca [2 x [4 x i32]], align 16, !psr.id !3679
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !3680, metadata !DIExpression()), !dbg !3681, !psr.id !3682
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %2, metadata !3683, metadata !DIExpression()), !dbg !3684, !psr.id !3685
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3686, !psr.id !3687
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !3686, !psr.id !3688
  %5 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3689, !psr.id !3690
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !3689, !psr.id !3691
  call void @fpsqr1271(i32* %4, i32* %6), !dbg !3692, !psr.id !3693
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3694, !psr.id !3695
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !3694, !psr.id !3696
  %9 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 1, !dbg !3697, !psr.id !3698
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0, !dbg !3697, !psr.id !3699
  call void @fpsqr1271(i32* %8, i32* %10), !dbg !3700, !psr.id !3701
  %11 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3702, !psr.id !3703
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0, !dbg !3702, !psr.id !3704
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 1, !dbg !3705, !psr.id !3706
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0, !dbg !3705, !psr.id !3707
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3708, !psr.id !3709
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0, !dbg !3708, !psr.id !3710
  call void @fpadd1271(i32* %12, i32* %14, i32* %16), !dbg !3711, !psr.id !3712
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3713, !psr.id !3714
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0, !dbg !3713, !psr.id !3715
  call void @fpinv1271(i32* %18), !dbg !3716, !psr.id !3717
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3718, !psr.id !3719
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0, !dbg !3718, !psr.id !3720
  call void @fpneg1271(i32* %20), !dbg !3721, !psr.id !3722
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3723, !psr.id !3724
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0, !dbg !3723, !psr.id !3725
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3726, !psr.id !3727
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !3726, !psr.id !3728
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !3729, !psr.id !3730
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0, !dbg !3729, !psr.id !3731
  call void @fpmul1271(i32* %22, i32* %24, i32* %26), !dbg !3732, !psr.id !3733
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3734, !psr.id !3735
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0, !dbg !3734, !psr.id !3736
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !3737, !psr.id !3738
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0, !dbg !3737, !psr.id !3739
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !3740, !psr.id !3741
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0, !dbg !3740, !psr.id !3742
  call void @fpmul1271(i32* %28, i32* %30, i32* %32), !dbg !3743, !psr.id !3744
  ret void, !dbg !3745, !psr.id !3746
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccset(%struct.point_affine* %0, %struct.CurveStruct* %1) #0 !dbg !3747 {
  call void @llvm.dbg.value(metadata %struct.point_affine* %0, metadata !3756, metadata !DIExpression()), !dbg !3757, !psr.id !3758
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %1, metadata !3759, metadata !DIExpression()), !dbg !3757, !psr.id !3760
  %3 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %1, i32 0, i32 6, !dbg !3761, !psr.id !3762
  %4 = bitcast [4 x i64]* %3 to [4 x i32]*, !dbg !3763, !psr.id !3764
  %5 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %0, i32 0, i32 0, !dbg !3765, !psr.id !3766
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !3767, !psr.id !3768
  call void @fp2copy1271([4 x i32]* %4, [4 x i32]* %6), !dbg !3769, !psr.id !3770
  %7 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %1, i32 0, i32 7, !dbg !3771, !psr.id !3772
  %8 = bitcast [4 x i64]* %7 to [4 x i32]*, !dbg !3773, !psr.id !3774
  %9 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %0, i32 0, i32 1, !dbg !3775, !psr.id !3776
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !3777, !psr.id !3778
  call void @fp2copy1271([4 x i32]* %8, [4 x i32]* %10), !dbg !3779, !psr.id !3780
  ret void, !dbg !3781, !psr.id !3782
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccnorm(%struct.point_extproj* %0, %struct.point_affine* %1) #0 !dbg !3783 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !3795, metadata !DIExpression()), !dbg !3796, !psr.id !3797
  call void @llvm.dbg.value(metadata %struct.point_affine* %1, metadata !3798, metadata !DIExpression()), !dbg !3796, !psr.id !3799
  %3 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !3800, !psr.id !3801
  %4 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !3802, !psr.id !3803
  call void @fp2inv1271([4 x i32]* %4), !dbg !3804, !psr.id !3805
  %5 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !3806, !psr.id !3807
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !3808, !psr.id !3809
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !3810, !psr.id !3811
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !3812, !psr.id !3813
  %9 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 0, !dbg !3814, !psr.id !3815
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !3816, !psr.id !3817
  call void @fp2mul1271([4 x i32]* %6, [4 x i32]* %8, [4 x i32]* %10), !dbg !3818, !psr.id !3819
  %11 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !3820, !psr.id !3821
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !3822, !psr.id !3823
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !3824, !psr.id !3825
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !3826, !psr.id !3827
  %15 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 1, !dbg !3828, !psr.id !3829
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %15, i64 0, i64 0, !dbg !3830, !psr.id !3831
  call void @fp2mul1271([4 x i32]* %12, [4 x i32]* %14, [4 x i32]* %16), !dbg !3832, !psr.id !3833
  %17 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 0, !dbg !3834, !psr.id !3835
  %18 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %17, i64 0, i64 0, !dbg !3836, !psr.id !3837
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0, !dbg !3836, !psr.id !3838
  call void @mod1271(i32* %19), !dbg !3839, !psr.id !3840
  %20 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 0, !dbg !3841, !psr.id !3842
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %20, i64 0, i64 1, !dbg !3843, !psr.id !3844
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0, !dbg !3843, !psr.id !3845
  call void @mod1271(i32* %22), !dbg !3846, !psr.id !3847
  %23 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 1, !dbg !3848, !psr.id !3849
  %24 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %23, i64 0, i64 0, !dbg !3850, !psr.id !3851
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0, !dbg !3850, !psr.id !3852
  call void @mod1271(i32* %25), !dbg !3853, !psr.id !3854
  %26 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 1, !dbg !3855, !psr.id !3856
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 1, !dbg !3857, !psr.id !3858
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0, !dbg !3857, !psr.id !3859
  call void @mod1271(i32* %28), !dbg !3860, !psr.id !3861
  ret void, !dbg !3862, !psr.id !3863
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @R1_to_R2(%struct.point_extproj* %0, %struct.point_extproj_precomp* %1, %struct.CurveStruct* %2) #0 !dbg !3864 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !3867, metadata !DIExpression()), !dbg !3868, !psr.id !3869
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %1, metadata !3870, metadata !DIExpression()), !dbg !3868, !psr.id !3871
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !3872, metadata !DIExpression()), !dbg !3868, !psr.id !3873
  %4 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 3, !dbg !3874, !psr.id !3875
  %5 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !3876, !psr.id !3877
  %6 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 3, !dbg !3878, !psr.id !3879
  %7 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %6, i64 0, i64 0, !dbg !3880, !psr.id !3881
  %8 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !3882, !psr.id !3883
  %9 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %8, i64 0, i64 0, !dbg !3884, !psr.id !3885
  call void @fp2add1271([4 x i32]* %5, [4 x i32]* %7, [4 x i32]* %9), !dbg !3886, !psr.id !3887
  %10 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !3888, !psr.id !3889
  %11 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %10, i64 0, i64 0, !dbg !3890, !psr.id !3891
  %12 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !3892, !psr.id !3893
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %12, i64 0, i64 0, !dbg !3894, !psr.id !3895
  %14 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 0, !dbg !3896, !psr.id !3897
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0, !dbg !3898, !psr.id !3899
  call void @fp2add1271([4 x i32]* %11, [4 x i32]* %13, [4 x i32]* %15), !dbg !3900, !psr.id !3901
  %16 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !3902, !psr.id !3903
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %16, i64 0, i64 0, !dbg !3904, !psr.id !3905
  %18 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !3906, !psr.id !3907
  %19 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %18, i64 0, i64 0, !dbg !3908, !psr.id !3909
  %20 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 1, !dbg !3910, !psr.id !3911
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %20, i64 0, i64 0, !dbg !3912, !psr.id !3913
  call void @fp2sub1271([4 x i32]* %17, [4 x i32]* %19, [4 x i32]* %21), !dbg !3914, !psr.id !3915
  %22 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !3916, !psr.id !3917
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %22, i64 0, i64 0, !dbg !3918, !psr.id !3919
  %24 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 4, !dbg !3920, !psr.id !3921
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %24, i64 0, i64 0, !dbg !3922, !psr.id !3923
  %26 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !3924, !psr.id !3925
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !3926, !psr.id !3927
  call void @fp2mul1271([4 x i32]* %23, [4 x i32]* %25, [4 x i32]* %27), !dbg !3928, !psr.id !3929
  %28 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !3930, !psr.id !3931
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %28, i64 0, i64 0, !dbg !3932, !psr.id !3933
  %30 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !3934, !psr.id !3935
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %30, i64 0, i64 0, !dbg !3936, !psr.id !3937
  %32 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 2, !dbg !3938, !psr.id !3939
  %33 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %32, i64 0, i64 0, !dbg !3940, !psr.id !3941
  call void @fp2add1271([4 x i32]* %29, [4 x i32]* %31, [4 x i32]* %33), !dbg !3942, !psr.id !3943
  %34 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !3944, !psr.id !3945
  %35 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %34, i64 0, i64 0, !dbg !3946, !psr.id !3947
  %36 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 4, !dbg !3948, !psr.id !3949
  %37 = bitcast [4 x i64]* %36 to [4 x i32]*, !dbg !3950, !psr.id !3951
  %38 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !3952, !psr.id !3953
  %39 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %38, i64 0, i64 0, !dbg !3954, !psr.id !3955
  call void @fp2mul1271([4 x i32]* %35, [4 x i32]* %37, [4 x i32]* %39), !dbg !3956, !psr.id !3957
  ret void, !dbg !3958, !psr.id !3959
}

declare dso_local void @fp2add1271([4 x i32]*, [4 x i32]*, [4 x i32]*) #2

declare dso_local void @fp2sub1271([4 x i32]*, [4 x i32]*, [4 x i32]*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @R1_to_R2_ni(%struct.point_extproj* %0, %struct.point_extproj_precomp* %1, %struct.CurveStruct* %2) #0 !dbg !3960 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !3961, metadata !DIExpression()), !dbg !3962, !psr.id !3963
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %1, metadata !3964, metadata !DIExpression()), !dbg !3962, !psr.id !3965
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !3966, metadata !DIExpression()), !dbg !3962, !psr.id !3967
  call void @R1_to_R2(%struct.point_extproj* %0, %struct.point_extproj_precomp* %1, %struct.CurveStruct* %2), !dbg !3968, !psr.id !3969
  ret void, !dbg !3970, !psr.id !3971
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @R2_to_R4(%struct.point_extproj_precomp* %0, %struct.point_extproj* %1) #0 !dbg !3972 {
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %0, metadata !3975, metadata !DIExpression()), !dbg !3976, !psr.id !3977
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !3978, metadata !DIExpression()), !dbg !3976, !psr.id !3979
  %3 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 0, !dbg !3980, !psr.id !3981
  %4 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !3982, !psr.id !3983
  %5 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 1, !dbg !3984, !psr.id !3985
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !3986, !psr.id !3987
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !3988, !psr.id !3989
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !3990, !psr.id !3991
  call void @fp2sub1271([4 x i32]* %4, [4 x i32]* %6, [4 x i32]* %8), !dbg !3992, !psr.id !3993
  %9 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 0, !dbg !3994, !psr.id !3995
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !3996, !psr.id !3997
  %11 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 1, !dbg !3998, !psr.id !3999
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !4000, !psr.id !4001
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !4002, !psr.id !4003
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !4004, !psr.id !4005
  call void @fp2add1271([4 x i32]* %10, [4 x i32]* %12, [4 x i32]* %14), !dbg !4006, !psr.id !4007
  %15 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 2, !dbg !4008, !psr.id !4009
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %15, i64 0, i64 0, !dbg !4010, !psr.id !4011
  %17 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4012, !psr.id !4013
  %18 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %17, i64 0, i64 0, !dbg !4014, !psr.id !4015
  call void @fp2copy1271([4 x i32]* %16, [4 x i32]* %18), !dbg !4016, !psr.id !4017
  ret void, !dbg !4018, !psr.id !4019
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccadd_ni(%struct.point_extproj_precomp* %0, %struct.point_extproj* %1) #0 !dbg !4020 {
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %0, metadata !4021, metadata !DIExpression()), !dbg !4022, !psr.id !4023
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !4024, metadata !DIExpression()), !dbg !4022, !psr.id !4025
  call void @eccadd(%struct.point_extproj_precomp* %0, %struct.point_extproj* %1), !dbg !4026, !psr.id !4027
  ret void, !dbg !4028, !psr.id !4029
}

declare dso_local void @eccadd(%struct.point_extproj_precomp*, %struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccdouble_ni(%struct.point_extproj* %0) #0 !dbg !4030 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !4033, metadata !DIExpression()), !dbg !4034, !psr.id !4035
  call void @eccdouble(%struct.point_extproj* %0), !dbg !4036, !psr.id !4037
  ret void, !dbg !4038, !psr.id !4039
}

declare dso_local void @eccdouble(%struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @point_setup_ni(%struct.point_affine* %0, %struct.point_extproj* %1) #0 !dbg !4040 {
  call void @llvm.dbg.value(metadata %struct.point_affine* %0, metadata !4043, metadata !DIExpression()), !dbg !4044, !psr.id !4045
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !4046, metadata !DIExpression()), !dbg !4044, !psr.id !4047
  call void @point_setup(%struct.point_affine* %0, %struct.point_extproj* %1), !dbg !4048, !psr.id !4049
  ret void, !dbg !4050, !psr.id !4051
}

declare dso_local void @point_setup(%struct.point_affine*, %struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ecc_point_validate(%struct.point_extproj* %0, %struct.CurveStruct* %1) #0 !dbg !4052 {
  %3 = alloca [2 x [4 x i32]], align 16, !psr.id !4056
  %4 = alloca [2 x [4 x i32]], align 16, !psr.id !4057
  %5 = alloca [2 x [4 x i32]], align 16, !psr.id !4058
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !4059, metadata !DIExpression()), !dbg !4060, !psr.id !4061
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %1, metadata !4062, metadata !DIExpression()), !dbg !4060, !psr.id !4063
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %3, metadata !4064, metadata !DIExpression()), !dbg !4065, !psr.id !4066
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %4, metadata !4067, metadata !DIExpression()), !dbg !4068, !psr.id !4069
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %5, metadata !4070, metadata !DIExpression()), !dbg !4071, !psr.id !4072
  %6 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !4073, !psr.id !4074
  %7 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %6, i64 0, i64 0, !dbg !4075, !psr.id !4076
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4077, !psr.id !4078
  call void @fp2sqr1271([4 x i32]* %7, [4 x i32]* %8), !dbg !4079, !psr.id !4080
  %9 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !4081, !psr.id !4082
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !4083, !psr.id !4084
  %11 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4085, !psr.id !4086
  call void @fp2sqr1271([4 x i32]* %10, [4 x i32]* %11), !dbg !4087, !psr.id !4088
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4089, !psr.id !4090
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4091, !psr.id !4092
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !4093, !psr.id !4094
  call void @fp2sub1271([4 x i32]* %12, [4 x i32]* %13, [4 x i32]* %14), !dbg !4095, !psr.id !4096
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4097, !psr.id !4098
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4099, !psr.id !4100
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4101, !psr.id !4102
  call void @fp2mul1271([4 x i32]* %15, [4 x i32]* %16, [4 x i32]* %17), !dbg !4103, !psr.id !4104
  %18 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %1, i32 0, i32 4, !dbg !4105, !psr.id !4106
  %19 = bitcast [4 x i64]* %18 to [4 x i32]*, !dbg !4107, !psr.id !4108
  %20 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4109, !psr.id !4110
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4111, !psr.id !4112
  call void @fp2mul1271([4 x i32]* %19, [4 x i32]* %20, [4 x i32]* %21), !dbg !4113, !psr.id !4114
  %22 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4115, !psr.id !4116
  call void @fp2zero1271([4 x i32]* %22), !dbg !4117, !psr.id !4118
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4119, !psr.id !4120
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !4119, !psr.id !4121
  store i32 1, i32* %24, align 16, !dbg !4122, !psr.id !4123
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4124, !psr.id !4125
  %26 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4126, !psr.id !4127
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4128, !psr.id !4129
  call void @fp2add1271([4 x i32]* %25, [4 x i32]* %26, [4 x i32]* %27), !dbg !4130, !psr.id !4131
  %28 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !4132, !psr.id !4133
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4134, !psr.id !4135
  %30 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4136, !psr.id !4137
  call void @fp2sub1271([4 x i32]* %28, [4 x i32]* %29, [4 x i32]* %30), !dbg !4138, !psr.id !4139
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4140, !psr.id !4141
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0, !dbg !4140, !psr.id !4142
  %33 = load i32, i32* %32, align 16, !dbg !4140, !psr.id !4143
  %34 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4144, !psr.id !4145
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0, i64 1, !dbg !4144, !psr.id !4146
  %36 = load i32, i32* %35, align 4, !dbg !4144, !psr.id !4147
  %37 = or i32 %33, %36, !dbg !4148, !psr.id !4149
  %38 = call i32 @is_digit_zero_ct(i32 %37), !dbg !4150, !psr.id !4151
  %39 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4152, !psr.id !4153
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0, !dbg !4152, !psr.id !4154
  %41 = load i32, i32* %40, align 16, !dbg !4152, !psr.id !4155
  %42 = add i32 %41, 1, !dbg !4156, !psr.id !4157
  %43 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4158, !psr.id !4159
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i64 0, i64 1, !dbg !4158, !psr.id !4160
  %45 = load i32, i32* %44, align 4, !dbg !4158, !psr.id !4161
  %46 = add i32 %45, 1, !dbg !4162, !psr.id !4163
  %47 = or i32 %42, %46, !dbg !4164, !psr.id !4165
  %48 = call i32 @is_digit_zero_ct(i32 %47), !dbg !4166, !psr.id !4167
  %49 = or i32 %38, %48, !dbg !4168, !psr.id !4169
  %50 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !4170, !psr.id !4171
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0, !dbg !4170, !psr.id !4172
  %52 = load i32, i32* %51, align 16, !dbg !4170, !psr.id !4173
  %53 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !4174, !psr.id !4175
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i64 0, i64 1, !dbg !4174, !psr.id !4176
  %55 = load i32, i32* %54, align 4, !dbg !4174, !psr.id !4177
  %56 = or i32 %52, %55, !dbg !4178, !psr.id !4179
  %57 = call i32 @is_digit_zero_ct(i32 %56), !dbg !4180, !psr.id !4181
  %58 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !4182, !psr.id !4183
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %58, i64 0, i64 0, !dbg !4182, !psr.id !4184
  %60 = load i32, i32* %59, align 16, !dbg !4182, !psr.id !4185
  %61 = add i32 %60, 1, !dbg !4186, !psr.id !4187
  %62 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !4188, !psr.id !4189
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 1, !dbg !4188, !psr.id !4190
  %64 = load i32, i32* %63, align 4, !dbg !4188, !psr.id !4191
  %65 = add i32 %64, 1, !dbg !4192, !psr.id !4193
  %66 = or i32 %61, %65, !dbg !4194, !psr.id !4195
  %67 = call i32 @is_digit_zero_ct(i32 %66), !dbg !4196, !psr.id !4197
  %68 = or i32 %57, %67, !dbg !4198, !psr.id !4199
  %69 = and i32 %49, %68, !dbg !4200, !psr.id !4201
  %70 = icmp ne i32 %69, 0, !dbg !4202, !psr.id !4203
  ret i1 %70, !dbg !4204, !psr.id !4205
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccmadd_ni(%struct.point_precomp* %0, %struct.point_extproj* %1) #0 !dbg !4206 {
  call void @llvm.dbg.value(metadata %struct.point_precomp* %0, metadata !4209, metadata !DIExpression()), !dbg !4210, !psr.id !4211
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !4212, metadata !DIExpression()), !dbg !4210, !psr.id !4213
  call void @eccmadd(%struct.point_precomp* %0, %struct.point_extproj* %1), !dbg !4214, !psr.id !4215
  ret void, !dbg !4216, !psr.id !4217
}

; Function Attrs: noinline nounwind uwtable
define internal void @eccmadd(%struct.point_precomp* %0, %struct.point_extproj* %1) #0 !dbg !4218 {
  %3 = alloca [2 x [4 x i32]], align 16, !psr.id !4219
  %4 = alloca [2 x [4 x i32]], align 16, !psr.id !4220
  call void @llvm.dbg.value(metadata %struct.point_precomp* %0, metadata !4221, metadata !DIExpression()), !dbg !4222, !psr.id !4223
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !4224, metadata !DIExpression()), !dbg !4222, !psr.id !4225
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %3, metadata !4226, metadata !DIExpression()), !dbg !4227, !psr.id !4228
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %4, metadata !4229, metadata !DIExpression()), !dbg !4230, !psr.id !4231
  %5 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4232, !psr.id !4233
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !4234, !psr.id !4235
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !4236, !psr.id !4237
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !4238, !psr.id !4239
  %9 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4240, !psr.id !4241
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !4242, !psr.id !4243
  call void @fp2mul1271([4 x i32]* %6, [4 x i32]* %8, [4 x i32]* %10), !dbg !4244, !psr.id !4245
  %11 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4246, !psr.id !4247
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !4248, !psr.id !4249
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4250, !psr.id !4251
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !4252, !psr.id !4253
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4254, !psr.id !4255
  call void @fp2add1271([4 x i32]* %12, [4 x i32]* %14, [4 x i32]* %15), !dbg !4256, !psr.id !4257
  %16 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4258, !psr.id !4259
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %16, i64 0, i64 0, !dbg !4260, !psr.id !4261
  %18 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 2, !dbg !4262, !psr.id !4263
  %19 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %18, i64 0, i64 0, !dbg !4264, !psr.id !4265
  %20 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4266, !psr.id !4267
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %20, i64 0, i64 0, !dbg !4268, !psr.id !4269
  call void @fp2mul1271([4 x i32]* %17, [4 x i32]* %19, [4 x i32]* %21), !dbg !4270, !psr.id !4271
  %22 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4272, !psr.id !4273
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %22, i64 0, i64 0, !dbg !4274, !psr.id !4275
  %24 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !4276, !psr.id !4277
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %24, i64 0, i64 0, !dbg !4278, !psr.id !4279
  %26 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4280, !psr.id !4281
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !4282, !psr.id !4283
  call void @fp2add1271([4 x i32]* %23, [4 x i32]* %25, [4 x i32]* %27), !dbg !4284, !psr.id !4285
  %28 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !4286, !psr.id !4287
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %28, i64 0, i64 0, !dbg !4288, !psr.id !4289
  %30 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4290, !psr.id !4291
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %30, i64 0, i64 0, !dbg !4292, !psr.id !4293
  %32 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !4294, !psr.id !4295
  %33 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %32, i64 0, i64 0, !dbg !4296, !psr.id !4297
  call void @fp2sub1271([4 x i32]* %29, [4 x i32]* %31, [4 x i32]* %33), !dbg !4298, !psr.id !4299
  %34 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4300, !psr.id !4301
  %35 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4302, !psr.id !4303
  %36 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %35, i64 0, i64 0, !dbg !4304, !psr.id !4305
  %37 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4306, !psr.id !4307
  call void @fp2sub1271([4 x i32]* %34, [4 x i32]* %36, [4 x i32]* %37), !dbg !4308, !psr.id !4309
  %38 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4310, !psr.id !4311
  %39 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4312, !psr.id !4313
  %40 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %39, i64 0, i64 0, !dbg !4314, !psr.id !4315
  %41 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4316, !psr.id !4317
  call void @fp2add1271([4 x i32]* %38, [4 x i32]* %40, [4 x i32]* %41), !dbg !4318, !psr.id !4319
  %42 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 0, !dbg !4320, !psr.id !4321
  %43 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %42, i64 0, i64 0, !dbg !4322, !psr.id !4323
  %44 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4324, !psr.id !4325
  %45 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %44, i64 0, i64 0, !dbg !4326, !psr.id !4327
  %46 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4328, !psr.id !4329
  %47 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %46, i64 0, i64 0, !dbg !4330, !psr.id !4331
  call void @fp2mul1271([4 x i32]* %43, [4 x i32]* %45, [4 x i32]* %47), !dbg !4332, !psr.id !4333
  %48 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 1, !dbg !4334, !psr.id !4335
  %49 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %48, i64 0, i64 0, !dbg !4336, !psr.id !4337
  %50 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !4338, !psr.id !4339
  %51 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %50, i64 0, i64 0, !dbg !4340, !psr.id !4341
  %52 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4342, !psr.id !4343
  %53 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %52, i64 0, i64 0, !dbg !4344, !psr.id !4345
  call void @fp2mul1271([4 x i32]* %49, [4 x i32]* %51, [4 x i32]* %53), !dbg !4346, !psr.id !4347
  %54 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4348, !psr.id !4349
  %55 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4350, !psr.id !4351
  %56 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !4352, !psr.id !4353
  %57 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %56, i64 0, i64 0, !dbg !4354, !psr.id !4355
  call void @fp2mul1271([4 x i32]* %54, [4 x i32]* %55, [4 x i32]* %57), !dbg !4356, !psr.id !4357
  %58 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4358, !psr.id !4359
  %59 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %58, i64 0, i64 0, !dbg !4360, !psr.id !4361
  %60 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4362, !psr.id !4363
  %61 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %60, i64 0, i64 0, !dbg !4364, !psr.id !4365
  %62 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !4366, !psr.id !4367
  %63 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %62, i64 0, i64 0, !dbg !4368, !psr.id !4369
  call void @fp2sub1271([4 x i32]* %59, [4 x i32]* %61, [4 x i32]* %63), !dbg !4370, !psr.id !4371
  %64 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4372, !psr.id !4373
  %65 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %64, i64 0, i64 0, !dbg !4374, !psr.id !4375
  %66 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4376, !psr.id !4377
  %67 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %66, i64 0, i64 0, !dbg !4378, !psr.id !4379
  %68 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4380, !psr.id !4381
  %69 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %68, i64 0, i64 0, !dbg !4382, !psr.id !4383
  call void @fp2add1271([4 x i32]* %65, [4 x i32]* %67, [4 x i32]* %69), !dbg !4384, !psr.id !4385
  %70 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !4386, !psr.id !4387
  %71 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %70, i64 0, i64 0, !dbg !4388, !psr.id !4389
  %72 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !4390, !psr.id !4391
  %73 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !4392, !psr.id !4393
  %74 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %73, i64 0, i64 0, !dbg !4394, !psr.id !4395
  call void @fp2mul1271([4 x i32]* %71, [4 x i32]* %72, [4 x i32]* %74), !dbg !4396, !psr.id !4397
  %75 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !4398, !psr.id !4399
  %76 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %75, i64 0, i64 0, !dbg !4400, !psr.id !4401
  %77 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !4402, !psr.id !4403
  %78 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !4404, !psr.id !4405
  %79 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %78, i64 0, i64 0, !dbg !4406, !psr.id !4407
  call void @fp2mul1271([4 x i32]* %76, [4 x i32]* %77, [4 x i32]* %79), !dbg !4408, !psr.id !4409
  ret void, !dbg !4410, !psr.id !4411
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ecc_mul_fixed([1 x %struct.point_precomp]* %0, i64* %1, %struct.point_affine* %2, %struct.CurveStruct* %3) #0 !dbg !4412 {
  %5 = alloca [271 x i32], align 16, !psr.id !4416
  %6 = alloca [4 x i64], align 16, !psr.id !4417
  %7 = alloca [1 x %struct.point_extproj], align 16, !psr.id !4418
  %8 = alloca [1 x %struct.point_precomp], align 16, !psr.id !4419
  call void @llvm.dbg.value(metadata [1 x %struct.point_precomp]* %0, metadata !4420, metadata !DIExpression()), !dbg !4421, !psr.id !4422
  call void @llvm.dbg.value(metadata i64* %1, metadata !4423, metadata !DIExpression()), !dbg !4421, !psr.id !4424
  call void @llvm.dbg.value(metadata %struct.point_affine* %2, metadata !4425, metadata !DIExpression()), !dbg !4421, !psr.id !4426
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %3, metadata !4427, metadata !DIExpression()), !dbg !4421, !psr.id !4428
  call void @llvm.dbg.value(metadata i32 5, metadata !4429, metadata !DIExpression()), !dbg !4421, !psr.id !4430
  call void @llvm.dbg.value(metadata i32 5, metadata !4431, metadata !DIExpression()), !dbg !4421, !psr.id !4432
  call void @llvm.dbg.value(metadata i32 50, metadata !4433, metadata !DIExpression()), !dbg !4421, !psr.id !4434
  call void @llvm.dbg.value(metadata i32 10, metadata !4435, metadata !DIExpression()), !dbg !4421, !psr.id !4436
  call void @llvm.dbg.value(metadata i32 0, metadata !4437, metadata !DIExpression()), !dbg !4421, !psr.id !4438
  call void @llvm.dbg.declare(metadata [271 x i32]* %5, metadata !4439, metadata !DIExpression()), !dbg !4443, !psr.id !4444
  %9 = bitcast [271 x i32]* %5 to i8*, !dbg !4443, !psr.id !4445
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 1084, i1 false), !dbg !4443, !psr.id !4446
  call void @llvm.dbg.declare(metadata [4 x i64]* %6, metadata !4447, metadata !DIExpression()), !dbg !4448, !psr.id !4449
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %7, metadata !4450, metadata !DIExpression()), !dbg !4453, !psr.id !4454
  call void @llvm.dbg.declare(metadata [1 x %struct.point_precomp]* %8, metadata !4455, metadata !DIExpression()), !dbg !4456, !psr.id !4457
  %10 = bitcast i64* %1 to i32*, !dbg !4458, !psr.id !4459
  %11 = bitcast i64* %1 to i32*, !dbg !4460, !psr.id !4461
  call void @modulo_order(i32* %10, i32* %11, %struct.CurveStruct* %3), !dbg !4462, !psr.id !4463
  %12 = bitcast i64* %1 to i32*, !dbg !4464, !psr.id !4465
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !4466, !psr.id !4467
  %14 = bitcast i64* %13 to i32*, !dbg !4468, !psr.id !4469
  call void @conversion_to_odd(i32* %12, i32* %14, %struct.CurveStruct* %3), !dbg !4470, !psr.id !4471
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !4472, !psr.id !4473
  %16 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 0, !dbg !4474, !psr.id !4475
  call void @mLSB_set_recode(i64* %15, i32* %16), !dbg !4476, !psr.id !4477
  %17 = mul i32 5, 50, !dbg !4478, !psr.id !4479
  %18 = sub i32 %17, 1, !dbg !4480, !psr.id !4481
  %19 = zext i32 %18 to i64, !dbg !4482, !psr.id !4483
  %20 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %19, !dbg !4482, !psr.id !4484
  %21 = load i32, i32* %20, align 4, !dbg !4482, !psr.id !4485
  call void @llvm.dbg.value(metadata i32 %21, metadata !4437, metadata !DIExpression()), !dbg !4421, !psr.id !4486
  %22 = sub i32 5, 1, !dbg !4487, !psr.id !4489
  %23 = mul i32 %22, 50, !dbg !4490, !psr.id !4491
  %24 = sub i32 %23, 1, !dbg !4492, !psr.id !4493
  call void @llvm.dbg.value(metadata i32 %24, metadata !4494, metadata !DIExpression()), !dbg !4421, !psr.id !4495
  br label %25, !dbg !4496, !psr.id !4497

25:                                               ; preds = %35, %4
  %.02 = phi i32 [ %21, %4 ], [ %34, %35 ], !dbg !4421, !psr.id !4498
  %.01 = phi i32 [ %24, %4 ], [ %36, %35 ], !dbg !4499, !psr.id !4500
  call void @llvm.dbg.value(metadata i32 %.01, metadata !4494, metadata !DIExpression()), !dbg !4421, !psr.id !4501
  call void @llvm.dbg.value(metadata i32 %.02, metadata !4437, metadata !DIExpression()), !dbg !4421, !psr.id !4502
  %26 = mul i32 2, 50, !dbg !4503, !psr.id !4505
  %27 = sub i32 %26, 1, !dbg !4506, !psr.id !4507
  %28 = icmp sge i32 %.01, %27, !dbg !4508, !psr.id !4509
  br i1 %28, label %29, label %37, !dbg !4510, !psr.id !4511

29:                                               ; preds = %25
  %30 = mul i32 2, %.02, !dbg !4512, !psr.id !4514
  %31 = sext i32 %.01 to i64, !dbg !4515, !psr.id !4516
  %32 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %31, !dbg !4515, !psr.id !4517
  %33 = load i32, i32* %32, align 4, !dbg !4515, !psr.id !4518
  %34 = add i32 %30, %33, !dbg !4519, !psr.id !4520
  call void @llvm.dbg.value(metadata i32 %34, metadata !4437, metadata !DIExpression()), !dbg !4421, !psr.id !4521
  br label %35, !dbg !4522, !psr.id !4523

35:                                               ; preds = %29
  %36 = sub i32 %.01, 50, !dbg !4524, !psr.id !4525
  call void @llvm.dbg.value(metadata i32 %36, metadata !4494, metadata !DIExpression()), !dbg !4421, !psr.id !4526
  br label %25, !dbg !4527, !llvm.loop !4528, !psr.id !4530

37:                                               ; preds = %25
  %38 = sub i32 5, 1, !dbg !4531, !psr.id !4532
  %39 = sub i32 5, 1, !dbg !4533, !psr.id !4534
  %40 = shl i32 1, %39, !dbg !4535, !psr.id !4536
  %41 = mul i32 %38, %40, !dbg !4537, !psr.id !4538
  %42 = zext i32 %41 to i64, !dbg !4539, !psr.id !4540
  %43 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %42, !dbg !4539, !psr.id !4541
  %44 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4542, !psr.id !4543
  %45 = sub i32 50, 1, !dbg !4544, !psr.id !4545
  %46 = zext i32 %45 to i64, !dbg !4546, !psr.id !4547
  %47 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %46, !dbg !4546, !psr.id !4548
  %48 = load i32, i32* %47, align 4, !dbg !4546, !psr.id !4549
  call void @table_lookup_fixed_base([1 x %struct.point_precomp]* %43, %struct.point_precomp* %44, i32 %.02, i32 %48), !dbg !4550, !psr.id !4551
  %49 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4552, !psr.id !4553
  %50 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !4554, !psr.id !4555
  call void @R5_to_R1(%struct.point_precomp* %49, %struct.point_extproj* %50), !dbg !4556, !psr.id !4557
  call void @llvm.dbg.value(metadata i32 0, metadata !4558, metadata !DIExpression()), !dbg !4421, !psr.id !4559
  br label %51, !dbg !4560, !psr.id !4562

51:                                               ; preds = %102, %37
  %.05 = phi i32 [ 0, %37 ], [ %103, %102 ], !dbg !4563, !psr.id !4564
  call void @llvm.dbg.value(metadata i32 %.05, metadata !4558, metadata !DIExpression()), !dbg !4421, !psr.id !4565
  %52 = sub i32 5, 1, !dbg !4566, !psr.id !4568
  %53 = icmp ult i32 %.05, %52, !dbg !4569, !psr.id !4570
  br i1 %53, label %54, label %104, !dbg !4571, !psr.id !4572

54:                                               ; preds = %51
  %55 = mul i32 5, 50, !dbg !4573, !psr.id !4575
  %56 = add i32 %.05, 1, !dbg !4576, !psr.id !4577
  %57 = mul i32 %56, 10, !dbg !4578, !psr.id !4579
  %58 = sub i32 %55, %57, !dbg !4580, !psr.id !4581
  %59 = sub i32 %58, 1, !dbg !4582, !psr.id !4583
  %60 = zext i32 %59 to i64, !dbg !4584, !psr.id !4585
  %61 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %60, !dbg !4584, !psr.id !4586
  %62 = load i32, i32* %61, align 4, !dbg !4584, !psr.id !4587
  call void @llvm.dbg.value(metadata i32 %62, metadata !4437, metadata !DIExpression()), !dbg !4421, !psr.id !4588
  %63 = sub i32 5, 1, !dbg !4589, !psr.id !4591
  %64 = mul i32 %63, 50, !dbg !4592, !psr.id !4593
  %65 = add i32 %.05, 1, !dbg !4594, !psr.id !4595
  %66 = mul i32 %65, 10, !dbg !4596, !psr.id !4597
  %67 = sub i32 %64, %66, !dbg !4598, !psr.id !4599
  %68 = sub i32 %67, 1, !dbg !4600, !psr.id !4601
  call void @llvm.dbg.value(metadata i32 %68, metadata !4494, metadata !DIExpression()), !dbg !4421, !psr.id !4602
  br label %69, !dbg !4603, !psr.id !4604

69:                                               ; preds = %82, %54
  %.13 = phi i32 [ %62, %54 ], [ %81, %82 ], !dbg !4605, !psr.id !4606
  %.1 = phi i32 [ %68, %54 ], [ %83, %82 ], !dbg !4607, !psr.id !4608
  call void @llvm.dbg.value(metadata i32 %.1, metadata !4494, metadata !DIExpression()), !dbg !4421, !psr.id !4609
  call void @llvm.dbg.value(metadata i32 %.13, metadata !4437, metadata !DIExpression()), !dbg !4421, !psr.id !4610
  %70 = mul i32 2, 50, !dbg !4611, !psr.id !4613
  %71 = add i32 %.05, 1, !dbg !4614, !psr.id !4615
  %72 = mul i32 %71, 10, !dbg !4616, !psr.id !4617
  %73 = sub i32 %70, %72, !dbg !4618, !psr.id !4619
  %74 = sub i32 %73, 1, !dbg !4620, !psr.id !4621
  %75 = icmp sge i32 %.1, %74, !dbg !4622, !psr.id !4623
  br i1 %75, label %76, label %84, !dbg !4624, !psr.id !4625

76:                                               ; preds = %69
  %77 = mul i32 2, %.13, !dbg !4626, !psr.id !4628
  %78 = sext i32 %.1 to i64, !dbg !4629, !psr.id !4630
  %79 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %78, !dbg !4629, !psr.id !4631
  %80 = load i32, i32* %79, align 4, !dbg !4629, !psr.id !4632
  %81 = add i32 %77, %80, !dbg !4633, !psr.id !4634
  call void @llvm.dbg.value(metadata i32 %81, metadata !4437, metadata !DIExpression()), !dbg !4421, !psr.id !4635
  br label %82, !dbg !4636, !psr.id !4637

82:                                               ; preds = %76
  %83 = sub i32 %.1, 50, !dbg !4638, !psr.id !4639
  call void @llvm.dbg.value(metadata i32 %83, metadata !4494, metadata !DIExpression()), !dbg !4421, !psr.id !4640
  br label %69, !dbg !4641, !llvm.loop !4642, !psr.id !4644

84:                                               ; preds = %69
  %85 = sub i32 5, %.05, !dbg !4645, !psr.id !4646
  %86 = sub i32 %85, 2, !dbg !4647, !psr.id !4648
  %87 = sub i32 5, 1, !dbg !4649, !psr.id !4650
  %88 = shl i32 1, %87, !dbg !4651, !psr.id !4652
  %89 = mul i32 %86, %88, !dbg !4653, !psr.id !4654
  %90 = zext i32 %89 to i64, !dbg !4655, !psr.id !4656
  %91 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %90, !dbg !4655, !psr.id !4657
  %92 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4658, !psr.id !4659
  %93 = add i32 %.05, 1, !dbg !4660, !psr.id !4661
  %94 = mul i32 %93, 10, !dbg !4662, !psr.id !4663
  %95 = sub i32 50, %94, !dbg !4664, !psr.id !4665
  %96 = sub i32 %95, 1, !dbg !4666, !psr.id !4667
  %97 = zext i32 %96 to i64, !dbg !4668, !psr.id !4669
  %98 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %97, !dbg !4668, !psr.id !4670
  %99 = load i32, i32* %98, align 4, !dbg !4668, !psr.id !4671
  call void @table_lookup_fixed_base([1 x %struct.point_precomp]* %91, %struct.point_precomp* %92, i32 %.13, i32 %99), !dbg !4672, !psr.id !4673
  %100 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4674, !psr.id !4675
  %101 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !4676, !psr.id !4677
  call void @eccmadd(%struct.point_precomp* %100, %struct.point_extproj* %101), !dbg !4678, !psr.id !4679
  br label %102, !dbg !4680, !psr.id !4681

102:                                              ; preds = %84
  %103 = add i32 %.05, 1, !dbg !4682, !psr.id !4683
  call void @llvm.dbg.value(metadata i32 %103, metadata !4558, metadata !DIExpression()), !dbg !4421, !psr.id !4684
  br label %51, !dbg !4685, !llvm.loop !4686, !psr.id !4688

104:                                              ; preds = %51
  %105 = sub i32 10, 2, !dbg !4689, !psr.id !4691
  call void @llvm.dbg.value(metadata i32 %105, metadata !4692, metadata !DIExpression()), !dbg !4421, !psr.id !4693
  br label %106, !dbg !4694, !psr.id !4695

106:                                              ; preds = %163, %104
  %.0 = phi i32 [ %105, %104 ], [ %164, %163 ], !dbg !4696, !psr.id !4697
  call void @llvm.dbg.value(metadata i32 %.0, metadata !4692, metadata !DIExpression()), !dbg !4421, !psr.id !4698
  %107 = icmp sge i32 %.0, 0, !dbg !4699, !psr.id !4701
  br i1 %107, label %108, label %165, !dbg !4702, !psr.id !4703

108:                                              ; preds = %106
  %109 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !4704, !psr.id !4706
  call void @eccdouble(%struct.point_extproj* %109), !dbg !4707, !psr.id !4708
  call void @llvm.dbg.value(metadata i32 0, metadata !4558, metadata !DIExpression()), !dbg !4421, !psr.id !4709
  br label %110, !dbg !4710, !psr.id !4712

110:                                              ; preds = %160, %108
  %.16 = phi i32 [ 0, %108 ], [ %161, %160 ], !dbg !4713, !psr.id !4714
  call void @llvm.dbg.value(metadata i32 %.16, metadata !4558, metadata !DIExpression()), !dbg !4421, !psr.id !4715
  %111 = icmp ult i32 %.16, 5, !dbg !4716, !psr.id !4718
  br i1 %111, label %112, label %162, !dbg !4719, !psr.id !4720

112:                                              ; preds = %110
  %113 = mul i32 5, 50, !dbg !4721, !psr.id !4723
  %114 = mul i32 %.16, 10, !dbg !4724, !psr.id !4725
  %115 = sub i32 %113, %114, !dbg !4726, !psr.id !4727
  %116 = add i32 %115, %.0, !dbg !4728, !psr.id !4729
  %117 = sub i32 %116, 10, !dbg !4730, !psr.id !4731
  %118 = zext i32 %117 to i64, !dbg !4732, !psr.id !4733
  %119 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %118, !dbg !4732, !psr.id !4734
  %120 = load i32, i32* %119, align 4, !dbg !4732, !psr.id !4735
  call void @llvm.dbg.value(metadata i32 %120, metadata !4437, metadata !DIExpression()), !dbg !4421, !psr.id !4736
  %121 = sub i32 5, 1, !dbg !4737, !psr.id !4739
  %122 = mul i32 %121, 50, !dbg !4740, !psr.id !4741
  %123 = mul i32 %.16, 10, !dbg !4742, !psr.id !4743
  %124 = sub i32 %122, %123, !dbg !4744, !psr.id !4745
  %125 = add i32 %124, %.0, !dbg !4746, !psr.id !4747
  %126 = sub i32 %125, 10, !dbg !4748, !psr.id !4749
  call void @llvm.dbg.value(metadata i32 %126, metadata !4494, metadata !DIExpression()), !dbg !4421, !psr.id !4750
  br label %127, !dbg !4751, !psr.id !4752

127:                                              ; preds = %140, %112
  %.24 = phi i32 [ %120, %112 ], [ %139, %140 ], !dbg !4753, !psr.id !4754
  %.2 = phi i32 [ %126, %112 ], [ %141, %140 ], !dbg !4755, !psr.id !4756
  call void @llvm.dbg.value(metadata i32 %.2, metadata !4494, metadata !DIExpression()), !dbg !4421, !psr.id !4757
  call void @llvm.dbg.value(metadata i32 %.24, metadata !4437, metadata !DIExpression()), !dbg !4421, !psr.id !4758
  %128 = mul i32 2, 50, !dbg !4759, !psr.id !4761
  %129 = mul i32 %.16, 10, !dbg !4762, !psr.id !4763
  %130 = sub i32 %128, %129, !dbg !4764, !psr.id !4765
  %131 = add i32 %130, %.0, !dbg !4766, !psr.id !4767
  %132 = sub i32 %131, 10, !dbg !4768, !psr.id !4769
  %133 = icmp sge i32 %.2, %132, !dbg !4770, !psr.id !4771
  br i1 %133, label %134, label %142, !dbg !4772, !psr.id !4773

134:                                              ; preds = %127
  %135 = mul i32 2, %.24, !dbg !4774, !psr.id !4776
  %136 = sext i32 %.2 to i64, !dbg !4777, !psr.id !4778
  %137 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %136, !dbg !4777, !psr.id !4779
  %138 = load i32, i32* %137, align 4, !dbg !4777, !psr.id !4780
  %139 = add i32 %135, %138, !dbg !4781, !psr.id !4782
  call void @llvm.dbg.value(metadata i32 %139, metadata !4437, metadata !DIExpression()), !dbg !4421, !psr.id !4783
  br label %140, !dbg !4784, !psr.id !4785

140:                                              ; preds = %134
  %141 = sub i32 %.2, 50, !dbg !4786, !psr.id !4787
  call void @llvm.dbg.value(metadata i32 %141, metadata !4494, metadata !DIExpression()), !dbg !4421, !psr.id !4788
  br label %127, !dbg !4789, !llvm.loop !4790, !psr.id !4792

142:                                              ; preds = %127
  %143 = sub i32 5, %.16, !dbg !4793, !psr.id !4794
  %144 = sub i32 %143, 1, !dbg !4795, !psr.id !4796
  %145 = sub i32 5, 1, !dbg !4797, !psr.id !4798
  %146 = shl i32 1, %145, !dbg !4799, !psr.id !4800
  %147 = mul i32 %144, %146, !dbg !4801, !psr.id !4802
  %148 = zext i32 %147 to i64, !dbg !4803, !psr.id !4804
  %149 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %148, !dbg !4803, !psr.id !4805
  %150 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4806, !psr.id !4807
  %151 = mul i32 %.16, 10, !dbg !4808, !psr.id !4809
  %152 = sub i32 50, %151, !dbg !4810, !psr.id !4811
  %153 = add i32 %152, %.0, !dbg !4812, !psr.id !4813
  %154 = sub i32 %153, 10, !dbg !4814, !psr.id !4815
  %155 = zext i32 %154 to i64, !dbg !4816, !psr.id !4817
  %156 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %155, !dbg !4816, !psr.id !4818
  %157 = load i32, i32* %156, align 4, !dbg !4816, !psr.id !4819
  call void @table_lookup_fixed_base([1 x %struct.point_precomp]* %149, %struct.point_precomp* %150, i32 %.24, i32 %157), !dbg !4820, !psr.id !4821
  %158 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !4822, !psr.id !4823
  %159 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !4824, !psr.id !4825
  call void @eccmadd(%struct.point_precomp* %158, %struct.point_extproj* %159), !dbg !4826, !psr.id !4827
  br label %160, !dbg !4828, !psr.id !4829

160:                                              ; preds = %142
  %161 = add i32 %.16, 1, !dbg !4830, !psr.id !4831
  call void @llvm.dbg.value(metadata i32 %161, metadata !4558, metadata !DIExpression()), !dbg !4421, !psr.id !4832
  br label %110, !dbg !4833, !llvm.loop !4834, !psr.id !4836

162:                                              ; preds = %110
  br label %163, !dbg !4837, !psr.id !4838

163:                                              ; preds = %162
  %164 = add nsw i32 %.0, -1, !dbg !4839, !psr.id !4840
  call void @llvm.dbg.value(metadata i32 %164, metadata !4692, metadata !DIExpression()), !dbg !4421, !psr.id !4841
  br label %106, !dbg !4842, !llvm.loop !4843, !psr.id !4845

165:                                              ; preds = %106
  %166 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !4846, !psr.id !4847
  call void @eccnorm(%struct.point_extproj* %166, %struct.point_affine* %2), !dbg !4848, !psr.id !4849
  ret i1 true, !dbg !4850, !psr.id !4851
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mLSB_set_recode(i64* %0, i32* %1) #0 !dbg !4852 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4856, metadata !DIExpression()), !dbg !4857, !psr.id !4858
  call void @llvm.dbg.value(metadata i32* %1, metadata !4859, metadata !DIExpression()), !dbg !4857, !psr.id !4860
  call void @llvm.dbg.value(metadata i32 50, metadata !4861, metadata !DIExpression()), !dbg !4857, !psr.id !4862
  call void @llvm.dbg.value(metadata i32 250, metadata !4863, metadata !DIExpression()), !dbg !4857, !psr.id !4864
  %3 = sub i32 50, 1, !dbg !4865, !psr.id !4866
  %4 = zext i32 %3 to i64, !dbg !4867, !psr.id !4868
  %5 = getelementptr inbounds i32, i32* %1, i64 %4, !dbg !4867, !psr.id !4869
  store i32 0, i32* %5, align 4, !dbg !4870, !psr.id !4871
  call void @llvm.dbg.value(metadata i32 0, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !4873
  br label %6, !dbg !4874, !psr.id !4876

6:                                                ; preds = %21, %2
  %.01 = phi i32 [ 0, %2 ], [ %22, %21 ], !dbg !4877, !psr.id !4878
  call void @llvm.dbg.value(metadata i32 %.01, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !4879
  %7 = icmp ult i32 %.01, 3, !dbg !4880, !psr.id !4882
  br i1 %7, label %8, label %23, !dbg !4883, !psr.id !4884

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64, !dbg !4885, !psr.id !4887
  %10 = getelementptr inbounds i64, i64* %0, i64 %9, !dbg !4885, !psr.id !4888
  %11 = load i64, i64* %10, align 8, !dbg !4885, !psr.id !4889
  %12 = lshr i64 %11, 1, !dbg !4885, !psr.id !4890
  %13 = add i32 %.01, 1, !dbg !4885, !psr.id !4891
  %14 = zext i32 %13 to i64, !dbg !4885, !psr.id !4892
  %15 = getelementptr inbounds i64, i64* %0, i64 %14, !dbg !4885, !psr.id !4893
  %16 = load i64, i64* %15, align 8, !dbg !4885, !psr.id !4894
  %17 = shl i64 %16, 63, !dbg !4885, !psr.id !4895
  %18 = xor i64 %12, %17, !dbg !4885, !psr.id !4896
  %19 = zext i32 %.01 to i64, !dbg !4885, !psr.id !4897
  %20 = getelementptr inbounds i64, i64* %0, i64 %19, !dbg !4885, !psr.id !4898
  store i64 %18, i64* %20, align 8, !dbg !4885, !psr.id !4899
  br label %21, !dbg !4900, !psr.id !4901

21:                                               ; preds = %8
  %22 = add i32 %.01, 1, !dbg !4902, !psr.id !4903
  call void @llvm.dbg.value(metadata i32 %22, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !4904
  br label %6, !dbg !4905, !llvm.loop !4906, !psr.id !4908

23:                                               ; preds = %6
  %24 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !4909, !psr.id !4910
  %25 = load i64, i64* %24, align 8, !dbg !4911, !psr.id !4912
  %26 = lshr i64 %25, 1, !dbg !4911, !psr.id !4913
  store i64 %26, i64* %24, align 8, !dbg !4911, !psr.id !4914
  call void @llvm.dbg.value(metadata i32 0, metadata !4915, metadata !DIExpression()), !dbg !4857, !psr.id !4916
  br label %27, !dbg !4917, !psr.id !4919

27:                                               ; preds = %59, %23
  %.02 = phi i32 [ 0, %23 ], [ %60, %59 ], !dbg !4920, !psr.id !4921
  call void @llvm.dbg.value(metadata i32 %.02, metadata !4915, metadata !DIExpression()), !dbg !4857, !psr.id !4922
  %28 = sub i32 50, 1, !dbg !4923, !psr.id !4925
  %29 = icmp ult i32 %.02, %28, !dbg !4926, !psr.id !4927
  br i1 %29, label %30, label %61, !dbg !4928, !psr.id !4929

30:                                               ; preds = %27
  %31 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !4930, !psr.id !4932
  %32 = load i64, i64* %31, align 8, !dbg !4930, !psr.id !4933
  %33 = and i64 %32, 1, !dbg !4934, !psr.id !4935
  %34 = sub i64 %33, 1, !dbg !4936, !psr.id !4937
  %35 = trunc i64 %34 to i32, !dbg !4938, !psr.id !4939
  %36 = zext i32 %.02 to i64, !dbg !4940, !psr.id !4941
  %37 = getelementptr inbounds i32, i32* %1, i64 %36, !dbg !4940, !psr.id !4942
  store i32 %35, i32* %37, align 4, !dbg !4943, !psr.id !4944
  call void @llvm.dbg.value(metadata i32 0, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !4945
  br label %38, !dbg !4946, !psr.id !4948

38:                                               ; preds = %53, %30
  %.1 = phi i32 [ 0, %30 ], [ %54, %53 ], !dbg !4949, !psr.id !4950
  call void @llvm.dbg.value(metadata i32 %.1, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !4951
  %39 = icmp ult i32 %.1, 3, !dbg !4952, !psr.id !4954
  br i1 %39, label %40, label %55, !dbg !4955, !psr.id !4956

40:                                               ; preds = %38
  %41 = zext i32 %.1 to i64, !dbg !4957, !psr.id !4959
  %42 = getelementptr inbounds i64, i64* %0, i64 %41, !dbg !4957, !psr.id !4960
  %43 = load i64, i64* %42, align 8, !dbg !4957, !psr.id !4961
  %44 = lshr i64 %43, 1, !dbg !4957, !psr.id !4962
  %45 = add i32 %.1, 1, !dbg !4957, !psr.id !4963
  %46 = zext i32 %45 to i64, !dbg !4957, !psr.id !4964
  %47 = getelementptr inbounds i64, i64* %0, i64 %46, !dbg !4957, !psr.id !4965
  %48 = load i64, i64* %47, align 8, !dbg !4957, !psr.id !4966
  %49 = shl i64 %48, 63, !dbg !4957, !psr.id !4967
  %50 = xor i64 %44, %49, !dbg !4957, !psr.id !4968
  %51 = zext i32 %.1 to i64, !dbg !4957, !psr.id !4969
  %52 = getelementptr inbounds i64, i64* %0, i64 %51, !dbg !4957, !psr.id !4970
  store i64 %50, i64* %52, align 8, !dbg !4957, !psr.id !4971
  br label %53, !dbg !4972, !psr.id !4973

53:                                               ; preds = %40
  %54 = add i32 %.1, 1, !dbg !4974, !psr.id !4975
  call void @llvm.dbg.value(metadata i32 %54, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !4976
  br label %38, !dbg !4977, !llvm.loop !4978, !psr.id !4980

55:                                               ; preds = %38
  %56 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !4981, !psr.id !4982
  %57 = load i64, i64* %56, align 8, !dbg !4983, !psr.id !4984
  %58 = lshr i64 %57, 1, !dbg !4983, !psr.id !4985
  store i64 %58, i64* %56, align 8, !dbg !4983, !psr.id !4986
  br label %59, !dbg !4987, !psr.id !4988

59:                                               ; preds = %55
  %60 = add i32 %.02, 1, !dbg !4989, !psr.id !4990
  call void @llvm.dbg.value(metadata i32 %60, metadata !4915, metadata !DIExpression()), !dbg !4857, !psr.id !4991
  br label %27, !dbg !4992, !llvm.loop !4993, !psr.id !4995

61:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 50, metadata !4915, metadata !DIExpression()), !dbg !4857, !psr.id !4996
  br label %62, !dbg !4997, !psr.id !4999

62:                                               ; preds = %133, %61
  %.13 = phi i32 [ 50, %61 ], [ %134, %133 ], !dbg !5000, !psr.id !5001
  call void @llvm.dbg.value(metadata i32 %.13, metadata !4915, metadata !DIExpression()), !dbg !4857, !psr.id !5002
  %63 = icmp ult i32 %.13, 250, !dbg !5003, !psr.id !5005
  br i1 %63, label %64, label %135, !dbg !5006, !psr.id !5007

64:                                               ; preds = %62
  %65 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !5008, !psr.id !5010
  %66 = load i64, i64* %65, align 8, !dbg !5008, !psr.id !5011
  %67 = and i64 %66, 1, !dbg !5012, !psr.id !5013
  %68 = trunc i64 %67 to i32, !dbg !5014, !psr.id !5015
  %69 = zext i32 %.13 to i64, !dbg !5016, !psr.id !5017
  %70 = getelementptr inbounds i32, i32* %1, i64 %69, !dbg !5016, !psr.id !5018
  store i32 %68, i32* %70, align 4, !dbg !5019, !psr.id !5020
  call void @llvm.dbg.value(metadata i32 0, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !5021
  br label %71, !dbg !5022, !psr.id !5024

71:                                               ; preds = %86, %64
  %.2 = phi i32 [ 0, %64 ], [ %87, %86 ], !dbg !5025, !psr.id !5026
  call void @llvm.dbg.value(metadata i32 %.2, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !5027
  %72 = icmp ult i32 %.2, 3, !dbg !5028, !psr.id !5030
  br i1 %72, label %73, label %88, !dbg !5031, !psr.id !5032

73:                                               ; preds = %71
  %74 = zext i32 %.2 to i64, !dbg !5033, !psr.id !5035
  %75 = getelementptr inbounds i64, i64* %0, i64 %74, !dbg !5033, !psr.id !5036
  %76 = load i64, i64* %75, align 8, !dbg !5033, !psr.id !5037
  %77 = lshr i64 %76, 1, !dbg !5033, !psr.id !5038
  %78 = add i32 %.2, 1, !dbg !5033, !psr.id !5039
  %79 = zext i32 %78 to i64, !dbg !5033, !psr.id !5040
  %80 = getelementptr inbounds i64, i64* %0, i64 %79, !dbg !5033, !psr.id !5041
  %81 = load i64, i64* %80, align 8, !dbg !5033, !psr.id !5042
  %82 = shl i64 %81, 63, !dbg !5033, !psr.id !5043
  %83 = xor i64 %77, %82, !dbg !5033, !psr.id !5044
  %84 = zext i32 %.2 to i64, !dbg !5033, !psr.id !5045
  %85 = getelementptr inbounds i64, i64* %0, i64 %84, !dbg !5033, !psr.id !5046
  store i64 %83, i64* %85, align 8, !dbg !5033, !psr.id !5047
  br label %86, !dbg !5048, !psr.id !5049

86:                                               ; preds = %73
  %87 = add i32 %.2, 1, !dbg !5050, !psr.id !5051
  call void @llvm.dbg.value(metadata i32 %87, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !5052
  br label %71, !dbg !5053, !llvm.loop !5054, !psr.id !5056

88:                                               ; preds = %71
  %89 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !5057, !psr.id !5058
  %90 = load i64, i64* %89, align 8, !dbg !5059, !psr.id !5060
  %91 = lshr i64 %90, 1, !dbg !5059, !psr.id !5061
  store i64 %91, i64* %89, align 8, !dbg !5059, !psr.id !5062
  %92 = udiv i32 %.13, 50, !dbg !5063, !psr.id !5064
  %93 = mul i32 %92, 50, !dbg !5065, !psr.id !5066
  %94 = sub i32 %.13, %93, !dbg !5067, !psr.id !5068
  %95 = zext i32 %94 to i64, !dbg !5069, !psr.id !5070
  %96 = getelementptr inbounds i32, i32* %1, i64 %95, !dbg !5069, !psr.id !5071
  %97 = load i32, i32* %96, align 4, !dbg !5069, !psr.id !5072
  %98 = sub i32 0, %97, !dbg !5073, !psr.id !5074
  %99 = zext i32 %.13 to i64, !dbg !5075, !psr.id !5076
  %100 = getelementptr inbounds i32, i32* %1, i64 %99, !dbg !5075, !psr.id !5077
  %101 = load i32, i32* %100, align 4, !dbg !5075, !psr.id !5078
  %102 = and i32 %98, %101, !dbg !5079, !psr.id !5080
  %103 = zext i32 %102 to i64, !dbg !5081, !psr.id !5082
  call void @llvm.dbg.value(metadata i64 %103, metadata !5083, metadata !DIExpression()), !dbg !4857, !psr.id !5084
  %104 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !5085, !psr.id !5086
  %105 = load i64, i64* %104, align 8, !dbg !5085, !psr.id !5087
  %106 = add i64 %105, %103, !dbg !5088, !psr.id !5089
  %107 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !5090, !psr.id !5091
  store i64 %106, i64* %107, align 8, !dbg !5092, !psr.id !5093
  %108 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !5094, !psr.id !5095
  %109 = load i64, i64* %108, align 8, !dbg !5094, !psr.id !5096
  %110 = trunc i64 %109 to i32, !dbg !5097, !psr.id !5098
  %111 = call i32 @is_digit_zero_ct(i32 %110), !dbg !5099, !psr.id !5100
  %112 = zext i32 %111 to i64, !dbg !5101, !psr.id !5102
  %113 = and i64 %103, %112, !dbg !5103, !psr.id !5104
  call void @llvm.dbg.value(metadata i64 %113, metadata !5105, metadata !DIExpression()), !dbg !4857, !psr.id !5106
  call void @llvm.dbg.value(metadata i32 1, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !5107
  br label %114, !dbg !5108, !psr.id !5110

114:                                              ; preds = %130, %88
  %.3 = phi i32 [ 1, %88 ], [ %131, %130 ], !dbg !5111, !psr.id !5112
  %.0 = phi i64 [ %113, %88 ], [ %129, %130 ], !dbg !5113, !psr.id !5114
  call void @llvm.dbg.value(metadata i64 %.0, metadata !5105, metadata !DIExpression()), !dbg !4857, !psr.id !5115
  call void @llvm.dbg.value(metadata i32 %.3, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !5116
  %115 = icmp ult i32 %.3, 4, !dbg !5117, !psr.id !5119
  br i1 %115, label %116, label %132, !dbg !5120, !psr.id !5121

116:                                              ; preds = %114
  %117 = zext i32 %.3 to i64, !dbg !5122, !psr.id !5124
  %118 = getelementptr inbounds i64, i64* %0, i64 %117, !dbg !5122, !psr.id !5125
  %119 = load i64, i64* %118, align 8, !dbg !5122, !psr.id !5126
  %120 = add i64 %119, %.0, !dbg !5127, !psr.id !5128
  %121 = zext i32 %.3 to i64, !dbg !5129, !psr.id !5130
  %122 = getelementptr inbounds i64, i64* %0, i64 %121, !dbg !5129, !psr.id !5131
  store i64 %120, i64* %122, align 8, !dbg !5132, !psr.id !5133
  %123 = zext i32 %.3 to i64, !dbg !5134, !psr.id !5135
  %124 = getelementptr inbounds i64, i64* %0, i64 %123, !dbg !5134, !psr.id !5136
  %125 = load i64, i64* %124, align 8, !dbg !5134, !psr.id !5137
  %126 = trunc i64 %125 to i32, !dbg !5138, !psr.id !5139
  %127 = call i32 @is_digit_zero_ct(i32 %126), !dbg !5140, !psr.id !5141
  %128 = zext i32 %127 to i64, !dbg !5142, !psr.id !5143
  %129 = and i64 %.0, %128, !dbg !5144, !psr.id !5145
  call void @llvm.dbg.value(metadata i64 %129, metadata !5105, metadata !DIExpression()), !dbg !4857, !psr.id !5146
  br label %130, !dbg !5147, !psr.id !5148

130:                                              ; preds = %116
  %131 = add i32 %.3, 1, !dbg !5149, !psr.id !5150
  call void @llvm.dbg.value(metadata i32 %131, metadata !4872, metadata !DIExpression()), !dbg !4857, !psr.id !5151
  br label %114, !dbg !5152, !llvm.loop !5153, !psr.id !5155

132:                                              ; preds = %114
  br label %133, !dbg !5156, !psr.id !5157

133:                                              ; preds = %132
  %134 = add i32 %.13, 1, !dbg !5158, !psr.id !5159
  call void @llvm.dbg.value(metadata i32 %134, metadata !4915, metadata !DIExpression()), !dbg !4857, !psr.id !5160
  br label %62, !dbg !5161, !llvm.loop !5162, !psr.id !5164

135:                                              ; preds = %62
  ret void, !dbg !5165, !psr.id !5166
}

; Function Attrs: noinline nounwind uwtable
define internal void @R5_to_R1(%struct.point_precomp* %0, %struct.point_extproj* %1) #0 !dbg !5167 {
  call void @llvm.dbg.value(metadata %struct.point_precomp* %0, metadata !5168, metadata !DIExpression()), !dbg !5169, !psr.id !5170
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !5171, metadata !DIExpression()), !dbg !5169, !psr.id !5172
  %3 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 0, !dbg !5173, !psr.id !5174
  %4 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !5175, !psr.id !5176
  %5 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 1, !dbg !5177, !psr.id !5178
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !5179, !psr.id !5180
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !5181, !psr.id !5182
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !5183, !psr.id !5184
  call void @fp2sub1271([4 x i32]* %4, [4 x i32]* %6, [4 x i32]* %8), !dbg !5185, !psr.id !5186
  %9 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 0, !dbg !5187, !psr.id !5188
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !5189, !psr.id !5190
  %11 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 1, !dbg !5191, !psr.id !5192
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !5193, !psr.id !5194
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !5195, !psr.id !5196
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !5197, !psr.id !5198
  call void @fp2add1271([4 x i32]* %10, [4 x i32]* %12, [4 x i32]* %14), !dbg !5199, !psr.id !5200
  %15 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !5201, !psr.id !5202
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %15, i64 0, i64 0, !dbg !5203, !psr.id !5204
  call void @fp2div1271([4 x i32]* %16), !dbg !5205, !psr.id !5206
  %17 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !5207, !psr.id !5208
  %18 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %17, i64 0, i64 0, !dbg !5209, !psr.id !5210
  call void @fp2div1271([4 x i32]* %18), !dbg !5211, !psr.id !5212
  %19 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !5213, !psr.id !5214
  %20 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %19, i64 0, i64 0, !dbg !5215, !psr.id !5216
  call void @fp2zero1271([4 x i32]* %20), !dbg !5217, !psr.id !5218
  %21 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !5219, !psr.id !5220
  %22 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %21, i64 0, i64 0, !dbg !5221, !psr.id !5222
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0, !dbg !5221, !psr.id !5223
  store i32 1, i32* %23, align 4, !dbg !5224, !psr.id !5225
  %24 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !5226, !psr.id !5227
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %24, i64 0, i64 0, !dbg !5228, !psr.id !5229
  %26 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !5230, !psr.id !5231
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !5232, !psr.id !5233
  call void @fp2copy1271([4 x i32]* %25, [4 x i32]* %27), !dbg !5234, !psr.id !5235
  %28 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !5236, !psr.id !5237
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %28, i64 0, i64 0, !dbg !5238, !psr.id !5239
  %30 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !5240, !psr.id !5241
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %30, i64 0, i64 0, !dbg !5242, !psr.id !5243
  call void @fp2copy1271([4 x i32]* %29, [4 x i32]* %31), !dbg !5244, !psr.id !5245
  ret void, !dbg !5246, !psr.id !5247
}

; Function Attrs: noinline nounwind uwtable
define dso_local [1 x %struct.point_precomp]* @ecc_allocate_precomp() #0 !dbg !5248 {
  %1 = call noalias i8* @calloc(i64 80, i64 96) #5, !dbg !5251, !psr.id !5252
  %2 = bitcast i8* %1 to [1 x %struct.point_precomp]*, !dbg !5253, !psr.id !5254
  ret [1 x %struct.point_precomp]* %2, !dbg !5255, !psr.id !5256
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ecc_precomp_fixed(%struct.point_affine* %0, [1 x %struct.point_precomp]* %1, i1 zeroext %2, %struct.CurveStruct* %3) #0 !dbg !5257 {
  %5 = alloca [1 x %struct.point_affine], align 16, !psr.id !5260
  %6 = alloca [1 x %struct.point_extproj], align 16, !psr.id !5261
  %7 = alloca [1 x %struct.point_extproj], align 16, !psr.id !5262
  %8 = alloca [5 x [1 x %struct.point_extproj]], align 16, !psr.id !5263
  %9 = alloca [5 x [1 x %struct.point_extproj_precomp]], align 16, !psr.id !5264
  %10 = alloca [1 x %struct.point_extproj_precomp], align 16, !psr.id !5265
  %11 = alloca [80 x [1 x %struct.point_extproj_precomp]], align 16, !psr.id !5266
  call void @llvm.dbg.value(metadata %struct.point_affine* %0, metadata !5267, metadata !DIExpression()), !dbg !5268, !psr.id !5269
  call void @llvm.dbg.value(metadata [1 x %struct.point_precomp]* %1, metadata !5270, metadata !DIExpression()), !dbg !5268, !psr.id !5271
  %12 = zext i1 %2 to i8, !psr.id !5272
  call void @llvm.dbg.value(metadata i8 %12, metadata !5273, metadata !DIExpression()), !dbg !5268, !psr.id !5274
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %3, metadata !5275, metadata !DIExpression()), !dbg !5268, !psr.id !5276
  call void @llvm.dbg.declare(metadata [1 x %struct.point_affine]* %5, metadata !5277, metadata !DIExpression()), !dbg !5280, !psr.id !5281
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %6, metadata !5282, metadata !DIExpression()), !dbg !5283, !psr.id !5284
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %7, metadata !5285, metadata !DIExpression()), !dbg !5286, !psr.id !5287
  call void @llvm.dbg.declare(metadata [5 x [1 x %struct.point_extproj]]* %8, metadata !5288, metadata !DIExpression()), !dbg !5292, !psr.id !5293
  call void @llvm.dbg.declare(metadata [5 x [1 x %struct.point_extproj_precomp]]* %9, metadata !5294, metadata !DIExpression()), !dbg !5296, !psr.id !5297
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj_precomp]* %10, metadata !5298, metadata !DIExpression()), !dbg !5299, !psr.id !5300
  call void @llvm.dbg.declare(metadata [80 x [1 x %struct.point_extproj_precomp]]* %11, metadata !5301, metadata !DIExpression()), !dbg !5305, !psr.id !5306
  call void @llvm.dbg.value(metadata i32 5, metadata !5307, metadata !DIExpression()), !dbg !5268, !psr.id !5308
  call void @llvm.dbg.value(metadata i32 5, metadata !5309, metadata !DIExpression()), !dbg !5268, !psr.id !5310
  call void @llvm.dbg.value(metadata i32 50, metadata !5311, metadata !DIExpression()), !dbg !5268, !psr.id !5312
  call void @llvm.dbg.value(metadata i32 10, metadata !5313, metadata !DIExpression()), !dbg !5268, !psr.id !5314
  %13 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5315, !psr.id !5316
  call void @point_setup(%struct.point_affine* %0, %struct.point_extproj* %13), !dbg !5317, !psr.id !5318
  %14 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5319, !psr.id !5321
  %15 = call zeroext i1 @ecc_point_validate(%struct.point_extproj* %14, %struct.CurveStruct* %3), !dbg !5322, !psr.id !5323
  %16 = zext i1 %15 to i32, !dbg !5322, !psr.id !5324
  %17 = icmp eq i32 %16, 0, !dbg !5325, !psr.id !5326
  br i1 %17, label %18, label %19, !dbg !5327, !psr.id !5328

18:                                               ; preds = %4
  br label %405, !dbg !5329, !psr.id !5331

19:                                               ; preds = %4
  %20 = trunc i8 %12 to i1, !dbg !5332, !psr.id !5334
  %21 = zext i1 %20 to i32, !dbg !5332, !psr.id !5335
  %22 = icmp eq i32 %21, 1, !dbg !5336, !psr.id !5337
  br i1 %22, label %23, label %29, !dbg !5338, !psr.id !5339

23:                                               ; preds = %19
  %24 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5340, !psr.id !5342
  call void @cofactor_clearing(%struct.point_extproj* %24, %struct.CurveStruct* %3), !dbg !5343, !psr.id !5344
  %25 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5345, !psr.id !5346
  %26 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5347, !psr.id !5348
  call void @eccnorm(%struct.point_extproj* %25, %struct.point_affine* %26), !dbg !5349, !psr.id !5350
  %27 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5351, !psr.id !5352
  %28 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5353, !psr.id !5354
  call void @point_setup(%struct.point_affine* %27, %struct.point_extproj* %28), !dbg !5355, !psr.id !5356
  br label %29, !dbg !5357, !psr.id !5358

29:                                               ; preds = %23, %19
  %30 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5359, !psr.id !5360
  %31 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %30, i32 0, i32 0, !dbg !5359, !psr.id !5361
  %32 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %31, i64 0, i64 0, !dbg !5359, !psr.id !5362
  %33 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !5359, !psr.id !5363
  %34 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %33, i64 0, i64 0, !dbg !5359, !psr.id !5364
  %35 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %34, i32 0, i32 0, !dbg !5359, !psr.id !5365
  %36 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %35, i64 0, i64 0, !dbg !5359, !psr.id !5366
  call void @fp2copy1271([4 x i32]* %32, [4 x i32]* %36), !dbg !5359, !psr.id !5367
  %37 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5359, !psr.id !5368
  %38 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %37, i32 0, i32 1, !dbg !5359, !psr.id !5369
  %39 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %38, i64 0, i64 0, !dbg !5359, !psr.id !5370
  %40 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !5359, !psr.id !5371
  %41 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %40, i64 0, i64 0, !dbg !5359, !psr.id !5372
  %42 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %41, i32 0, i32 1, !dbg !5359, !psr.id !5373
  %43 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %42, i64 0, i64 0, !dbg !5359, !psr.id !5374
  call void @fp2copy1271([4 x i32]* %39, [4 x i32]* %43), !dbg !5359, !psr.id !5375
  %44 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5359, !psr.id !5376
  %45 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %44, i32 0, i32 2, !dbg !5359, !psr.id !5377
  %46 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %45, i64 0, i64 0, !dbg !5359, !psr.id !5378
  %47 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !5359, !psr.id !5379
  %48 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %47, i64 0, i64 0, !dbg !5359, !psr.id !5380
  %49 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %48, i32 0, i32 2, !dbg !5359, !psr.id !5381
  %50 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %49, i64 0, i64 0, !dbg !5359, !psr.id !5382
  call void @fp2copy1271([4 x i32]* %46, [4 x i32]* %50), !dbg !5359, !psr.id !5383
  %51 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5359, !psr.id !5384
  %52 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %51, i32 0, i32 3, !dbg !5359, !psr.id !5385
  %53 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %52, i64 0, i64 0, !dbg !5359, !psr.id !5386
  %54 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !5359, !psr.id !5387
  %55 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %54, i64 0, i64 0, !dbg !5359, !psr.id !5388
  %56 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %55, i32 0, i32 3, !dbg !5359, !psr.id !5389
  %57 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %56, i64 0, i64 0, !dbg !5359, !psr.id !5390
  call void @fp2copy1271([4 x i32]* %53, [4 x i32]* %57), !dbg !5359, !psr.id !5391
  %58 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5359, !psr.id !5392
  %59 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %58, i32 0, i32 4, !dbg !5359, !psr.id !5393
  %60 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %59, i64 0, i64 0, !dbg !5359, !psr.id !5394
  %61 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !5359, !psr.id !5395
  %62 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %61, i64 0, i64 0, !dbg !5359, !psr.id !5396
  %63 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %62, i32 0, i32 4, !dbg !5359, !psr.id !5397
  %64 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %63, i64 0, i64 0, !dbg !5359, !psr.id !5398
  call void @fp2copy1271([4 x i32]* %60, [4 x i32]* %64), !dbg !5359, !psr.id !5399
  call void @llvm.dbg.value(metadata i32 0, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !5401
  br label %65, !dbg !5402, !psr.id !5404

65:                                               ; preds = %140, %29
  %.06 = phi i32 [ 0, %29 ], [ %141, %140 ], !dbg !5405, !psr.id !5406
  call void @llvm.dbg.value(metadata i32 %.06, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !5407
  %66 = sub i32 5, 1, !dbg !5408, !psr.id !5410
  %67 = icmp ult i32 %.06, %66, !dbg !5411, !psr.id !5412
  br i1 %67, label %68, label %142, !dbg !5413, !psr.id !5414

68:                                               ; preds = %65
  %69 = zext i32 %.06 to i64, !dbg !5415, !psr.id !5417
  %70 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %69, !dbg !5415, !psr.id !5418
  %71 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %70, i64 0, i64 0, !dbg !5415, !psr.id !5419
  %72 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %71, i32 0, i32 0, !dbg !5415, !psr.id !5420
  %73 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %72, i64 0, i64 0, !dbg !5415, !psr.id !5421
  %74 = add i32 %.06, 1, !dbg !5415, !psr.id !5422
  %75 = zext i32 %74 to i64, !dbg !5415, !psr.id !5423
  %76 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %75, !dbg !5415, !psr.id !5424
  %77 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %76, i64 0, i64 0, !dbg !5415, !psr.id !5425
  %78 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %77, i32 0, i32 0, !dbg !5415, !psr.id !5426
  %79 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %78, i64 0, i64 0, !dbg !5415, !psr.id !5427
  call void @fp2copy1271([4 x i32]* %73, [4 x i32]* %79), !dbg !5415, !psr.id !5428
  %80 = zext i32 %.06 to i64, !dbg !5415, !psr.id !5429
  %81 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %80, !dbg !5415, !psr.id !5430
  %82 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %81, i64 0, i64 0, !dbg !5415, !psr.id !5431
  %83 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %82, i32 0, i32 1, !dbg !5415, !psr.id !5432
  %84 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %83, i64 0, i64 0, !dbg !5415, !psr.id !5433
  %85 = add i32 %.06, 1, !dbg !5415, !psr.id !5434
  %86 = zext i32 %85 to i64, !dbg !5415, !psr.id !5435
  %87 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %86, !dbg !5415, !psr.id !5436
  %88 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %87, i64 0, i64 0, !dbg !5415, !psr.id !5437
  %89 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %88, i32 0, i32 1, !dbg !5415, !psr.id !5438
  %90 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %89, i64 0, i64 0, !dbg !5415, !psr.id !5439
  call void @fp2copy1271([4 x i32]* %84, [4 x i32]* %90), !dbg !5415, !psr.id !5440
  %91 = zext i32 %.06 to i64, !dbg !5415, !psr.id !5441
  %92 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %91, !dbg !5415, !psr.id !5442
  %93 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %92, i64 0, i64 0, !dbg !5415, !psr.id !5443
  %94 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %93, i32 0, i32 2, !dbg !5415, !psr.id !5444
  %95 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %94, i64 0, i64 0, !dbg !5415, !psr.id !5445
  %96 = add i32 %.06, 1, !dbg !5415, !psr.id !5446
  %97 = zext i32 %96 to i64, !dbg !5415, !psr.id !5447
  %98 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %97, !dbg !5415, !psr.id !5448
  %99 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %98, i64 0, i64 0, !dbg !5415, !psr.id !5449
  %100 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %99, i32 0, i32 2, !dbg !5415, !psr.id !5450
  %101 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %100, i64 0, i64 0, !dbg !5415, !psr.id !5451
  call void @fp2copy1271([4 x i32]* %95, [4 x i32]* %101), !dbg !5415, !psr.id !5452
  %102 = zext i32 %.06 to i64, !dbg !5415, !psr.id !5453
  %103 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %102, !dbg !5415, !psr.id !5454
  %104 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %103, i64 0, i64 0, !dbg !5415, !psr.id !5455
  %105 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %104, i32 0, i32 3, !dbg !5415, !psr.id !5456
  %106 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %105, i64 0, i64 0, !dbg !5415, !psr.id !5457
  %107 = add i32 %.06, 1, !dbg !5415, !psr.id !5458
  %108 = zext i32 %107 to i64, !dbg !5415, !psr.id !5459
  %109 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %108, !dbg !5415, !psr.id !5460
  %110 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %109, i64 0, i64 0, !dbg !5415, !psr.id !5461
  %111 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %110, i32 0, i32 3, !dbg !5415, !psr.id !5462
  %112 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %111, i64 0, i64 0, !dbg !5415, !psr.id !5463
  call void @fp2copy1271([4 x i32]* %106, [4 x i32]* %112), !dbg !5415, !psr.id !5464
  %113 = zext i32 %.06 to i64, !dbg !5415, !psr.id !5465
  %114 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %113, !dbg !5415, !psr.id !5466
  %115 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %114, i64 0, i64 0, !dbg !5415, !psr.id !5467
  %116 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %115, i32 0, i32 4, !dbg !5415, !psr.id !5468
  %117 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %116, i64 0, i64 0, !dbg !5415, !psr.id !5469
  %118 = add i32 %.06, 1, !dbg !5415, !psr.id !5470
  %119 = zext i32 %118 to i64, !dbg !5415, !psr.id !5471
  %120 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %119, !dbg !5415, !psr.id !5472
  %121 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %120, i64 0, i64 0, !dbg !5415, !psr.id !5473
  %122 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %121, i32 0, i32 4, !dbg !5415, !psr.id !5474
  %123 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %122, i64 0, i64 0, !dbg !5415, !psr.id !5475
  call void @fp2copy1271([4 x i32]* %117, [4 x i32]* %123), !dbg !5415, !psr.id !5476
  %124 = zext i32 %.06 to i64, !dbg !5477, !psr.id !5478
  %125 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %124, !dbg !5477, !psr.id !5479
  %126 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %125, i64 0, i64 0, !dbg !5477, !psr.id !5480
  %127 = zext i32 %.06 to i64, !dbg !5481, !psr.id !5482
  %128 = getelementptr inbounds [5 x [1 x %struct.point_extproj_precomp]], [5 x [1 x %struct.point_extproj_precomp]]* %9, i64 0, i64 %127, !dbg !5481, !psr.id !5483
  %129 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %128, i64 0, i64 0, !dbg !5481, !psr.id !5484
  call void @R1_to_R2(%struct.point_extproj* %126, %struct.point_extproj_precomp* %129, %struct.CurveStruct* %3), !dbg !5485, !psr.id !5486
  call void @llvm.dbg.value(metadata i32 0, metadata !5487, metadata !DIExpression()), !dbg !5268, !psr.id !5488
  br label %130, !dbg !5489, !psr.id !5491

130:                                              ; preds = %137, %68
  %.04 = phi i32 [ 0, %68 ], [ %138, %137 ], !dbg !5492, !psr.id !5493
  call void @llvm.dbg.value(metadata i32 %.04, metadata !5487, metadata !DIExpression()), !dbg !5268, !psr.id !5494
  %131 = icmp ult i32 %.04, 50, !dbg !5495, !psr.id !5497
  br i1 %131, label %132, label %139, !dbg !5498, !psr.id !5499

132:                                              ; preds = %130
  %133 = add i32 %.06, 1, !dbg !5500, !psr.id !5501
  %134 = zext i32 %133 to i64, !dbg !5502, !psr.id !5503
  %135 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %134, !dbg !5502, !psr.id !5504
  %136 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %135, i64 0, i64 0, !dbg !5502, !psr.id !5505
  call void @eccdouble_ni(%struct.point_extproj* %136), !dbg !5506, !psr.id !5507
  br label %137, !dbg !5506, !psr.id !5508

137:                                              ; preds = %132
  %138 = add i32 %.04, 1, !dbg !5509, !psr.id !5510
  call void @llvm.dbg.value(metadata i32 %138, metadata !5487, metadata !DIExpression()), !dbg !5268, !psr.id !5511
  br label %130, !dbg !5512, !llvm.loop !5513, !psr.id !5515

139:                                              ; preds = %130
  br label %140, !dbg !5516, !psr.id !5517

140:                                              ; preds = %139
  %141 = add i32 %.06, 1, !dbg !5518, !psr.id !5519
  call void @llvm.dbg.value(metadata i32 %141, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !5520
  br label %65, !dbg !5521, !llvm.loop !5522, !psr.id !5524

142:                                              ; preds = %65
  %143 = sub i32 5, 1, !dbg !5525, !psr.id !5526
  %144 = zext i32 %143 to i64, !dbg !5527, !psr.id !5528
  %145 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %144, !dbg !5527, !psr.id !5529
  %146 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %145, i64 0, i64 0, !dbg !5527, !psr.id !5530
  %147 = sub i32 5, 1, !dbg !5531, !psr.id !5532
  %148 = zext i32 %147 to i64, !dbg !5533, !psr.id !5534
  %149 = getelementptr inbounds [5 x [1 x %struct.point_extproj_precomp]], [5 x [1 x %struct.point_extproj_precomp]]* %9, i64 0, i64 %148, !dbg !5533, !psr.id !5535
  %150 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %149, i64 0, i64 0, !dbg !5533, !psr.id !5536
  call void @R1_to_R2(%struct.point_extproj* %146, %struct.point_extproj_precomp* %150, %struct.CurveStruct* %3), !dbg !5537, !psr.id !5538
  %151 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5539, !psr.id !5540
  %152 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %151, i32 0, i32 0, !dbg !5539, !psr.id !5541
  %153 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %152, i64 0, i64 0, !dbg !5542, !psr.id !5543
  %154 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 0, !dbg !5544, !psr.id !5545
  %155 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %154, i64 0, i64 0, !dbg !5546, !psr.id !5547
  %156 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %155, i32 0, i32 0, !dbg !5546, !psr.id !5548
  %157 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %156, i64 0, i64 0, !dbg !5544, !psr.id !5549
  call void @fp2copy1271([4 x i32]* %153, [4 x i32]* %157), !dbg !5550, !psr.id !5551
  %158 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !5552, !psr.id !5553
  %159 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %158, i32 0, i32 1, !dbg !5552, !psr.id !5554
  %160 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %159, i64 0, i64 0, !dbg !5555, !psr.id !5556
  %161 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 0, !dbg !5557, !psr.id !5558
  %162 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %161, i64 0, i64 0, !dbg !5559, !psr.id !5560
  %163 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %162, i32 0, i32 1, !dbg !5559, !psr.id !5561
  %164 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %163, i64 0, i64 0, !dbg !5557, !psr.id !5562
  call void @fp2copy1271([4 x i32]* %160, [4 x i32]* %164), !dbg !5563, !psr.id !5564
  call void @llvm.dbg.value(metadata i32 0, metadata !5565, metadata !DIExpression()), !dbg !5268, !psr.id !5566
  call void @llvm.dbg.value(metadata i64 1, metadata !5567, metadata !DIExpression()), !dbg !5268, !psr.id !5568
  call void @llvm.dbg.value(metadata i32 0, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !5569
  br label %165, !dbg !5570, !psr.id !5572

165:                                              ; preds = %250, %142
  %.17 = phi i32 [ 0, %142 ], [ %251, %250 ], !dbg !5573, !psr.id !5574
  %.02 = phi i32 [ 0, %142 ], [ %.1, %250 ], !dbg !5575, !psr.id !5576
  %.01 = phi i64 [ 1, %142 ], [ %249, %250 ], !dbg !5268, !psr.id !5577
  call void @llvm.dbg.value(metadata i64 %.01, metadata !5567, metadata !DIExpression()), !dbg !5268, !psr.id !5578
  call void @llvm.dbg.value(metadata i32 %.02, metadata !5565, metadata !DIExpression()), !dbg !5268, !psr.id !5579
  call void @llvm.dbg.value(metadata i32 %.17, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !5580
  %166 = sub i32 5, 1, !dbg !5581, !psr.id !5583
  %167 = icmp ult i32 %.17, %166, !dbg !5584, !psr.id !5585
  br i1 %167, label %168, label %252, !dbg !5586, !psr.id !5587

168:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i32 0, metadata !5487, metadata !DIExpression()), !dbg !5268, !psr.id !5588
  br label %169, !dbg !5589, !psr.id !5592

169:                                              ; preds = %246, %168
  %.15 = phi i32 [ 0, %168 ], [ %247, %246 ], !dbg !5593, !psr.id !5594
  %.1 = phi i32 [ %.02, %168 ], [ %225, %246 ], !dbg !5268, !psr.id !5595
  call void @llvm.dbg.value(metadata i32 %.1, metadata !5565, metadata !DIExpression()), !dbg !5268, !psr.id !5596
  call void @llvm.dbg.value(metadata i32 %.15, metadata !5487, metadata !DIExpression()), !dbg !5268, !psr.id !5597
  %170 = zext i32 %.15 to i64, !dbg !5598, !psr.id !5600
  %171 = icmp ult i64 %170, %.01, !dbg !5601, !psr.id !5602
  br i1 %171, label %172, label %248, !dbg !5603, !psr.id !5604

172:                                              ; preds = %169
  %173 = zext i32 %.15 to i64, !dbg !5605, !psr.id !5607
  %174 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %173, !dbg !5605, !psr.id !5608
  %175 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %174, i64 0, i64 0, !dbg !5609, !psr.id !5610
  %176 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %175, i32 0, i32 0, !dbg !5609, !psr.id !5611
  %177 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %176, i64 0, i64 0, !dbg !5605, !psr.id !5612
  %178 = zext i32 %.15 to i64, !dbg !5613, !psr.id !5614
  %179 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %178, !dbg !5613, !psr.id !5615
  %180 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %179, i64 0, i64 0, !dbg !5616, !psr.id !5617
  %181 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %180, i32 0, i32 1, !dbg !5616, !psr.id !5618
  %182 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %181, i64 0, i64 0, !dbg !5613, !psr.id !5619
  %183 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5620, !psr.id !5621
  %184 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %183, i32 0, i32 0, !dbg !5620, !psr.id !5622
  %185 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %184, i64 0, i64 0, !dbg !5623, !psr.id !5624
  call void @fp2add1271([4 x i32]* %177, [4 x i32]* %182, [4 x i32]* %185), !dbg !5625, !psr.id !5626
  %186 = zext i32 %.15 to i64, !dbg !5627, !psr.id !5628
  %187 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %186, !dbg !5627, !psr.id !5629
  %188 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %187, i64 0, i64 0, !dbg !5630, !psr.id !5631
  %189 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %188, i32 0, i32 1, !dbg !5630, !psr.id !5632
  %190 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %189, i64 0, i64 0, !dbg !5627, !psr.id !5633
  %191 = zext i32 %.15 to i64, !dbg !5634, !psr.id !5635
  %192 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %191, !dbg !5634, !psr.id !5636
  %193 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %192, i64 0, i64 0, !dbg !5637, !psr.id !5638
  %194 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %193, i32 0, i32 0, !dbg !5637, !psr.id !5639
  %195 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %194, i64 0, i64 0, !dbg !5634, !psr.id !5640
  %196 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5641, !psr.id !5642
  %197 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %196, i32 0, i32 1, !dbg !5641, !psr.id !5643
  %198 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %197, i64 0, i64 0, !dbg !5644, !psr.id !5645
  call void @fp2sub1271([4 x i32]* %190, [4 x i32]* %195, [4 x i32]* %198), !dbg !5646, !psr.id !5647
  %199 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5648, !psr.id !5649
  %200 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %199, i32 0, i32 2, !dbg !5648, !psr.id !5650
  %201 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %200, i64 0, i64 0, !dbg !5651, !psr.id !5652
  call void @fp2zero1271([4 x i32]* %201), !dbg !5653, !psr.id !5654
  %202 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5655, !psr.id !5656
  %203 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %202, i32 0, i32 2, !dbg !5655, !psr.id !5657
  %204 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %203, i64 0, i64 0, !dbg !5658, !psr.id !5659
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %204, i64 0, i64 0, !dbg !5658, !psr.id !5660
  store i32 1, i32* %205, align 16, !dbg !5661, !psr.id !5662
  %206 = zext i32 %.15 to i64, !dbg !5663, !psr.id !5664
  %207 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %206, !dbg !5663, !psr.id !5665
  %208 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %207, i64 0, i64 0, !dbg !5666, !psr.id !5667
  %209 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %208, i32 0, i32 0, !dbg !5666, !psr.id !5668
  %210 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %209, i64 0, i64 0, !dbg !5663, !psr.id !5669
  %211 = zext i32 %.15 to i64, !dbg !5670, !psr.id !5671
  %212 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %211, !dbg !5670, !psr.id !5672
  %213 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %212, i64 0, i64 0, !dbg !5673, !psr.id !5674
  %214 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %213, i32 0, i32 1, !dbg !5673, !psr.id !5675
  %215 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %214, i64 0, i64 0, !dbg !5670, !psr.id !5676
  %216 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5677, !psr.id !5678
  %217 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %216, i32 0, i32 3, !dbg !5677, !psr.id !5679
  %218 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %217, i64 0, i64 0, !dbg !5680, !psr.id !5681
  call void @fp2mul1271([4 x i32]* %210, [4 x i32]* %215, [4 x i32]* %218), !dbg !5682, !psr.id !5683
  %219 = add i32 %.17, 1, !dbg !5684, !psr.id !5685
  %220 = zext i32 %219 to i64, !dbg !5686, !psr.id !5687
  %221 = getelementptr inbounds [5 x [1 x %struct.point_extproj_precomp]], [5 x [1 x %struct.point_extproj_precomp]]* %9, i64 0, i64 %220, !dbg !5686, !psr.id !5688
  %222 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %221, i64 0, i64 0, !dbg !5686, !psr.id !5689
  %223 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !5690, !psr.id !5691
  %224 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5692, !psr.id !5693
  call void @eccadd_core(%struct.point_extproj_precomp* %222, %struct.point_extproj_precomp* %223, %struct.point_extproj* %224), !dbg !5694, !psr.id !5695
  %225 = add i32 %.1, 1, !dbg !5696, !psr.id !5697
  call void @llvm.dbg.value(metadata i32 %225, metadata !5565, metadata !DIExpression()), !dbg !5268, !psr.id !5698
  %226 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5699, !psr.id !5700
  %227 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5701, !psr.id !5702
  call void @eccnorm(%struct.point_extproj* %226, %struct.point_affine* %227), !dbg !5703, !psr.id !5704
  %228 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5705, !psr.id !5706
  %229 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5707, !psr.id !5708
  call void @point_setup(%struct.point_affine* %228, %struct.point_extproj* %229), !dbg !5709, !psr.id !5710
  %230 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5711, !psr.id !5712
  %231 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %230, i32 0, i32 0, !dbg !5711, !psr.id !5713
  %232 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %231, i64 0, i64 0, !dbg !5714, !psr.id !5715
  %233 = zext i32 %225 to i64, !dbg !5716, !psr.id !5717
  %234 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %233, !dbg !5716, !psr.id !5718
  %235 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %234, i64 0, i64 0, !dbg !5719, !psr.id !5720
  %236 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %235, i32 0, i32 0, !dbg !5719, !psr.id !5721
  %237 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %236, i64 0, i64 0, !dbg !5716, !psr.id !5722
  call void @fp2copy1271([4 x i32]* %232, [4 x i32]* %237), !dbg !5723, !psr.id !5724
  %238 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5725, !psr.id !5726
  %239 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %238, i32 0, i32 1, !dbg !5725, !psr.id !5727
  %240 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %239, i64 0, i64 0, !dbg !5728, !psr.id !5729
  %241 = zext i32 %225 to i64, !dbg !5730, !psr.id !5731
  %242 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %241, !dbg !5730, !psr.id !5732
  %243 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %242, i64 0, i64 0, !dbg !5733, !psr.id !5734
  %244 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %243, i32 0, i32 1, !dbg !5733, !psr.id !5735
  %245 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %244, i64 0, i64 0, !dbg !5730, !psr.id !5736
  call void @fp2copy1271([4 x i32]* %240, [4 x i32]* %245), !dbg !5737, !psr.id !5738
  br label %246, !dbg !5739, !psr.id !5740

246:                                              ; preds = %172
  %247 = add i32 %.15, 1, !dbg !5741, !psr.id !5742
  call void @llvm.dbg.value(metadata i32 %247, metadata !5487, metadata !DIExpression()), !dbg !5268, !psr.id !5743
  br label %169, !dbg !5744, !llvm.loop !5745, !psr.id !5747

248:                                              ; preds = %169
  %249 = mul i64 2, %.01, !dbg !5748, !psr.id !5749
  call void @llvm.dbg.value(metadata i64 %249, metadata !5567, metadata !DIExpression()), !dbg !5268, !psr.id !5750
  br label %250, !dbg !5751, !psr.id !5752

250:                                              ; preds = %248
  %251 = add i32 %.17, 1, !dbg !5753, !psr.id !5754
  call void @llvm.dbg.value(metadata i32 %251, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !5755
  br label %165, !dbg !5756, !llvm.loop !5757, !psr.id !5759

252:                                              ; preds = %165
  %253 = add i32 %.02, 1, !dbg !5760, !psr.id !5761
  call void @llvm.dbg.value(metadata i32 %253, metadata !5565, metadata !DIExpression()), !dbg !5268, !psr.id !5762
  call void @llvm.dbg.value(metadata i32 0, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !5763
  br label %254, !dbg !5764, !psr.id !5766

254:                                              ; preds = %324, %252
  %.28 = phi i32 [ 0, %252 ], [ %325, %324 ], !dbg !5767, !psr.id !5768
  call void @llvm.dbg.value(metadata i32 %.28, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !5769
  %255 = sub i32 5, 1, !dbg !5770, !psr.id !5772
  %256 = icmp ult i32 %.28, %255, !dbg !5773, !psr.id !5774
  br i1 %256, label %257, label %326, !dbg !5775, !psr.id !5776

257:                                              ; preds = %254
  call void @llvm.dbg.value(metadata i32 0, metadata !5487, metadata !DIExpression()), !dbg !5268, !psr.id !5777
  br label %258, !dbg !5778, !psr.id !5781

258:                                              ; preds = %321, %257
  %.2 = phi i32 [ 0, %257 ], [ %322, %321 ], !dbg !5782, !psr.id !5783
  call void @llvm.dbg.value(metadata i32 %.2, metadata !5487, metadata !DIExpression()), !dbg !5268, !psr.id !5784
  %259 = icmp ult i32 %.2, %253, !dbg !5785, !psr.id !5787
  br i1 %259, label %260, label %323, !dbg !5788, !psr.id !5789

260:                                              ; preds = %258
  %261 = mul i32 %.28, %253, !dbg !5790, !psr.id !5792
  %262 = add i32 %261, %.2, !dbg !5793, !psr.id !5794
  %263 = zext i32 %262 to i64, !dbg !5795, !psr.id !5796
  %264 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %263, !dbg !5795, !psr.id !5797
  %265 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %264, i64 0, i64 0, !dbg !5798, !psr.id !5799
  %266 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %265, i32 0, i32 0, !dbg !5798, !psr.id !5800
  %267 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %266, i64 0, i64 0, !dbg !5795, !psr.id !5801
  %268 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5802, !psr.id !5803
  %269 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %268, i32 0, i32 0, !dbg !5802, !psr.id !5804
  %270 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %269, i64 0, i64 0, !dbg !5805, !psr.id !5806
  call void @fp2copy1271([4 x i32]* %267, [4 x i32]* %270), !dbg !5807, !psr.id !5808
  %271 = mul i32 %.28, %253, !dbg !5809, !psr.id !5810
  %272 = add i32 %271, %.2, !dbg !5811, !psr.id !5812
  %273 = zext i32 %272 to i64, !dbg !5813, !psr.id !5814
  %274 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %273, !dbg !5813, !psr.id !5815
  %275 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %274, i64 0, i64 0, !dbg !5816, !psr.id !5817
  %276 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %275, i32 0, i32 1, !dbg !5816, !psr.id !5818
  %277 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %276, i64 0, i64 0, !dbg !5813, !psr.id !5819
  %278 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5820, !psr.id !5821
  %279 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %278, i32 0, i32 1, !dbg !5820, !psr.id !5822
  %280 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %279, i64 0, i64 0, !dbg !5823, !psr.id !5824
  call void @fp2copy1271([4 x i32]* %277, [4 x i32]* %280), !dbg !5825, !psr.id !5826
  %281 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5827, !psr.id !5828
  %282 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %281, i32 0, i32 2, !dbg !5827, !psr.id !5829
  %283 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %282, i64 0, i64 0, !dbg !5830, !psr.id !5831
  call void @fp2zero1271([4 x i32]* %283), !dbg !5832, !psr.id !5833
  %284 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5834, !psr.id !5835
  %285 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %284, i32 0, i32 2, !dbg !5834, !psr.id !5836
  %286 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %285, i64 0, i64 0, !dbg !5837, !psr.id !5838
  %287 = getelementptr inbounds [4 x i32], [4 x i32]* %286, i64 0, i64 0, !dbg !5837, !psr.id !5839
  store i32 1, i32* %287, align 16, !dbg !5840, !psr.id !5841
  call void @llvm.dbg.value(metadata i32 0, metadata !5842, metadata !DIExpression()), !dbg !5268, !psr.id !5843
  br label %288, !dbg !5844, !psr.id !5846

288:                                              ; preds = %292, %260
  %.03 = phi i32 [ 0, %260 ], [ %293, %292 ], !dbg !5847, !psr.id !5848
  call void @llvm.dbg.value(metadata i32 %.03, metadata !5842, metadata !DIExpression()), !dbg !5268, !psr.id !5849
  %289 = icmp ult i32 %.03, 10, !dbg !5850, !psr.id !5852
  br i1 %289, label %290, label %294, !dbg !5853, !psr.id !5854

290:                                              ; preds = %288
  %291 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5855, !psr.id !5856
  call void @eccdouble_ni(%struct.point_extproj* %291), !dbg !5857, !psr.id !5858
  br label %292, !dbg !5857, !psr.id !5859

292:                                              ; preds = %290
  %293 = add i32 %.03, 1, !dbg !5860, !psr.id !5861
  call void @llvm.dbg.value(metadata i32 %293, metadata !5842, metadata !DIExpression()), !dbg !5268, !psr.id !5862
  br label %288, !dbg !5863, !llvm.loop !5864, !psr.id !5866

294:                                              ; preds = %288
  %295 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5867, !psr.id !5868
  %296 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5869, !psr.id !5870
  call void @eccnorm(%struct.point_extproj* %295, %struct.point_affine* %296), !dbg !5871, !psr.id !5872
  %297 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !5873, !psr.id !5874
  %298 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5875, !psr.id !5876
  call void @point_setup(%struct.point_affine* %297, %struct.point_extproj* %298), !dbg !5877, !psr.id !5878
  %299 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5879, !psr.id !5880
  %300 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %299, i32 0, i32 0, !dbg !5879, !psr.id !5881
  %301 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %300, i64 0, i64 0, !dbg !5882, !psr.id !5883
  %302 = add i32 %.28, 1, !dbg !5884, !psr.id !5885
  %303 = mul i32 %302, %253, !dbg !5886, !psr.id !5887
  %304 = add i32 %303, %.2, !dbg !5888, !psr.id !5889
  %305 = zext i32 %304 to i64, !dbg !5890, !psr.id !5891
  %306 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %305, !dbg !5890, !psr.id !5892
  %307 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %306, i64 0, i64 0, !dbg !5893, !psr.id !5894
  %308 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %307, i32 0, i32 0, !dbg !5893, !psr.id !5895
  %309 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %308, i64 0, i64 0, !dbg !5890, !psr.id !5896
  call void @fp2copy1271([4 x i32]* %301, [4 x i32]* %309), !dbg !5897, !psr.id !5898
  %310 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !5899, !psr.id !5900
  %311 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %310, i32 0, i32 1, !dbg !5899, !psr.id !5901
  %312 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %311, i64 0, i64 0, !dbg !5902, !psr.id !5903
  %313 = add i32 %.28, 1, !dbg !5904, !psr.id !5905
  %314 = mul i32 %313, %253, !dbg !5906, !psr.id !5907
  %315 = add i32 %314, %.2, !dbg !5908, !psr.id !5909
  %316 = zext i32 %315 to i64, !dbg !5910, !psr.id !5911
  %317 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %316, !dbg !5910, !psr.id !5912
  %318 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %317, i64 0, i64 0, !dbg !5913, !psr.id !5914
  %319 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %318, i32 0, i32 1, !dbg !5913, !psr.id !5915
  %320 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %319, i64 0, i64 0, !dbg !5910, !psr.id !5916
  call void @fp2copy1271([4 x i32]* %312, [4 x i32]* %320), !dbg !5917, !psr.id !5918
  br label %321, !dbg !5919, !psr.id !5920

321:                                              ; preds = %294
  %322 = add i32 %.2, 1, !dbg !5921, !psr.id !5922
  call void @llvm.dbg.value(metadata i32 %322, metadata !5487, metadata !DIExpression()), !dbg !5268, !psr.id !5923
  br label %258, !dbg !5924, !llvm.loop !5925, !psr.id !5927

323:                                              ; preds = %258
  br label %324, !dbg !5928, !psr.id !5929

324:                                              ; preds = %323
  %325 = add i32 %.28, 1, !dbg !5930, !psr.id !5931
  call void @llvm.dbg.value(metadata i32 %325, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !5932
  br label %254, !dbg !5933, !llvm.loop !5934, !psr.id !5936

326:                                              ; preds = %254
  call void @llvm.dbg.value(metadata i32 0, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !5937
  br label %327, !dbg !5938, !psr.id !5940

327:                                              ; preds = %402, %326
  %.3 = phi i32 [ 0, %326 ], [ %403, %402 ], !dbg !5941, !psr.id !5942
  call void @llvm.dbg.value(metadata i32 %.3, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !5943
  %328 = icmp ult i32 %.3, 80, !dbg !5944, !psr.id !5946
  br i1 %328, label %329, label %404, !dbg !5947, !psr.id !5948

329:                                              ; preds = %327
  %330 = zext i32 %.3 to i64, !dbg !5949, !psr.id !5951
  %331 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %330, !dbg !5949, !psr.id !5952
  %332 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %331, i64 0, i64 0, !dbg !5953, !psr.id !5954
  %333 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %332, i32 0, i32 0, !dbg !5953, !psr.id !5955
  %334 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %333, i64 0, i64 0, !dbg !5949, !psr.id !5956
  %335 = zext i32 %.3 to i64, !dbg !5957, !psr.id !5958
  %336 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %335, !dbg !5957, !psr.id !5959
  %337 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %336, i64 0, i64 0, !dbg !5960, !psr.id !5961
  %338 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %337, i32 0, i32 1, !dbg !5960, !psr.id !5962
  %339 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %338, i64 0, i64 0, !dbg !5957, !psr.id !5963
  %340 = zext i32 %.3 to i64, !dbg !5964, !psr.id !5965
  %341 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %340, !dbg !5964, !psr.id !5966
  %342 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %341, i64 0, i64 0, !dbg !5967, !psr.id !5968
  %343 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %342, i32 0, i32 0, !dbg !5967, !psr.id !5969
  %344 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %343, i64 0, i64 0, !dbg !5964, !psr.id !5970
  call void @fp2mul1271([4 x i32]* %334, [4 x i32]* %339, [4 x i32]* %344), !dbg !5971, !psr.id !5972
  %345 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %3, i32 0, i32 4, !dbg !5973, !psr.id !5974
  %346 = bitcast [4 x i64]* %345 to [4 x i32]*, !dbg !5975, !psr.id !5976
  %347 = zext i32 %.3 to i64, !dbg !5977, !psr.id !5978
  %348 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %347, !dbg !5977, !psr.id !5979
  %349 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %348, i64 0, i64 0, !dbg !5980, !psr.id !5981
  %350 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %349, i32 0, i32 0, !dbg !5980, !psr.id !5982
  %351 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %350, i64 0, i64 0, !dbg !5977, !psr.id !5983
  %352 = zext i32 %.3 to i64, !dbg !5984, !psr.id !5985
  %353 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %352, !dbg !5984, !psr.id !5986
  %354 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %353, i64 0, i64 0, !dbg !5987, !psr.id !5988
  %355 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %354, i32 0, i32 2, !dbg !5987, !psr.id !5989
  %356 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %355, i64 0, i64 0, !dbg !5984, !psr.id !5990
  call void @fp2mul1271([4 x i32]* %346, [4 x i32]* %351, [4 x i32]* %356), !dbg !5991, !psr.id !5992
  %357 = zext i32 %.3 to i64, !dbg !5993, !psr.id !5994
  %358 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %357, !dbg !5993, !psr.id !5995
  %359 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %358, i64 0, i64 0, !dbg !5996, !psr.id !5997
  %360 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %359, i32 0, i32 2, !dbg !5996, !psr.id !5998
  %361 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %360, i64 0, i64 0, !dbg !5993, !psr.id !5999
  %362 = zext i32 %.3 to i64, !dbg !6000, !psr.id !6001
  %363 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %362, !dbg !6000, !psr.id !6002
  %364 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %363, i64 0, i64 0, !dbg !6003, !psr.id !6004
  %365 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %364, i32 0, i32 2, !dbg !6003, !psr.id !6005
  %366 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %365, i64 0, i64 0, !dbg !6000, !psr.id !6006
  %367 = zext i32 %.3 to i64, !dbg !6007, !psr.id !6008
  %368 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %367, !dbg !6007, !psr.id !6009
  %369 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %368, i64 0, i64 0, !dbg !6010, !psr.id !6011
  %370 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %369, i32 0, i32 2, !dbg !6010, !psr.id !6012
  %371 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %370, i64 0, i64 0, !dbg !6007, !psr.id !6013
  call void @fp2add1271([4 x i32]* %361, [4 x i32]* %366, [4 x i32]* %371), !dbg !6014, !psr.id !6015
  %372 = zext i32 %.3 to i64, !dbg !6016, !psr.id !6017
  %373 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %372, !dbg !6016, !psr.id !6018
  %374 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %373, i64 0, i64 0, !dbg !6019, !psr.id !6020
  %375 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %374, i32 0, i32 0, !dbg !6019, !psr.id !6021
  %376 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %375, i64 0, i64 0, !dbg !6016, !psr.id !6022
  %377 = zext i32 %.3 to i64, !dbg !6023, !psr.id !6024
  %378 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %377, !dbg !6023, !psr.id !6025
  %379 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %378, i64 0, i64 0, !dbg !6026, !psr.id !6027
  %380 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %379, i32 0, i32 1, !dbg !6026, !psr.id !6028
  %381 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %380, i64 0, i64 0, !dbg !6023, !psr.id !6029
  %382 = zext i32 %.3 to i64, !dbg !6030, !psr.id !6031
  %383 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %382, !dbg !6030, !psr.id !6032
  %384 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %383, i64 0, i64 0, !dbg !6033, !psr.id !6034
  %385 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %384, i32 0, i32 0, !dbg !6033, !psr.id !6035
  %386 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %385, i64 0, i64 0, !dbg !6030, !psr.id !6036
  call void @fp2add1271([4 x i32]* %376, [4 x i32]* %381, [4 x i32]* %386), !dbg !6037, !psr.id !6038
  %387 = zext i32 %.3 to i64, !dbg !6039, !psr.id !6040
  %388 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %387, !dbg !6039, !psr.id !6041
  %389 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %388, i64 0, i64 0, !dbg !6042, !psr.id !6043
  %390 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %389, i32 0, i32 1, !dbg !6042, !psr.id !6044
  %391 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %390, i64 0, i64 0, !dbg !6039, !psr.id !6045
  %392 = zext i32 %.3 to i64, !dbg !6046, !psr.id !6047
  %393 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %392, !dbg !6046, !psr.id !6048
  %394 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %393, i64 0, i64 0, !dbg !6049, !psr.id !6050
  %395 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %394, i32 0, i32 0, !dbg !6049, !psr.id !6051
  %396 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %395, i64 0, i64 0, !dbg !6046, !psr.id !6052
  %397 = zext i32 %.3 to i64, !dbg !6053, !psr.id !6054
  %398 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %397, !dbg !6053, !psr.id !6055
  %399 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %398, i64 0, i64 0, !dbg !6056, !psr.id !6057
  %400 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %399, i32 0, i32 1, !dbg !6056, !psr.id !6058
  %401 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %400, i64 0, i64 0, !dbg !6053, !psr.id !6059
  call void @fp2sub1271([4 x i32]* %391, [4 x i32]* %396, [4 x i32]* %401), !dbg !6060, !psr.id !6061
  br label %402, !dbg !6062, !psr.id !6063

402:                                              ; preds = %329
  %403 = add i32 %.3, 1, !dbg !6064, !psr.id !6065
  call void @llvm.dbg.value(metadata i32 %403, metadata !5400, metadata !DIExpression()), !dbg !5268, !psr.id !6066
  br label %327, !dbg !6067, !llvm.loop !6068, !psr.id !6070

404:                                              ; preds = %327
  br label %405, !dbg !6071, !psr.id !6072

405:                                              ; preds = %404, %18
  %.0 = phi i1 [ false, %18 ], [ true, %404 ], !dbg !5268, !psr.id !6073
  ret i1 %.0, !dbg !6074, !psr.id !6075
}

declare dso_local void @cofactor_clearing(%struct.point_extproj*, %struct.CurveStruct*) #2

declare dso_local void @eccadd_core(%struct.point_extproj_precomp*, %struct.point_extproj_precomp*, %struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccdouble_wrapper(%struct.point_extproj* %0) #0 !dbg !6076 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !6077, metadata !DIExpression()), !dbg !6078, !psr.id !6079
  %2 = call %struct.smack_value* (%struct.point_extproj*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.point_extproj*, ...)*)(%struct.point_extproj* %0), !dbg !6080, !psr.id !6081
  call void @public_in(%struct.smack_value* %2), !dbg !6082, !psr.id !6083
  call void @eccdouble(%struct.point_extproj* %0), !dbg !6084, !psr.id !6085
  ret void, !dbg !6086, !psr.id !6087
}

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccdouble_wrapper_t() #0 !dbg !6088 {
  %1 = alloca [1 x %struct.point_extproj], align 16, !psr.id !6091
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %1, metadata !6092, metadata !DIExpression()), !dbg !6093, !psr.id !6094
  %2 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %1, i64 0, i64 0, !dbg !6095, !psr.id !6096
  call void (%struct.point_extproj*, ...) @getpt(%struct.point_extproj* sret(%struct.point_extproj) align 4 %2), !dbg !6097, !psr.id !6098
  %3 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %1, i64 0, i64 0, !dbg !6099, !psr.id !6100
  call void @eccdouble(%struct.point_extproj* %3), !dbg !6101, !psr.id !6102
  ret void, !dbg !6103, !psr.id !6104
}

declare dso_local void @getpt(%struct.point_extproj* sret(%struct.point_extproj) align 4, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @fp2div1271([4 x i32]* %0) #0 !dbg !6105 {
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !6106, metadata !DIExpression()), !dbg !6107, !psr.id !6108
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !6109, !psr.id !6110
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !6109, !psr.id !6111
  call void @fpdiv1271(i32* %3), !dbg !6112, !psr.id !6113
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !6114, !psr.id !6115
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !6114, !psr.id !6116
  call void @fpdiv1271(i32* %5), !dbg !6117, !psr.id !6118
  ret void, !dbg !6119, !psr.id !6120
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpdiv1271(i32* %0) #0 !dbg !6121 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !6122, metadata !DIExpression()), !dbg !6123, !psr.id !6124
  call void @llvm.dbg.value(metadata i32 0, metadata !6125, metadata !DIExpression()), !dbg !6123, !psr.id !6126
  %2 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !6127, !psr.id !6128
  %3 = load i32, i32* %2, align 4, !dbg !6127, !psr.id !6129
  %4 = and i32 %3, 1, !dbg !6130, !psr.id !6131
  %5 = sub i32 0, %4, !dbg !6132, !psr.id !6133
  call void @llvm.dbg.value(metadata i32 %5, metadata !6134, metadata !DIExpression()), !dbg !6123, !psr.id !6135
  call void @llvm.dbg.value(metadata i32 0, metadata !6136, metadata !DIExpression()), !dbg !6123, !psr.id !6137
  br label %6, !dbg !6138, !psr.id !6140

6:                                                ; preds = %22, %1
  %.01 = phi i32 [ 0, %1 ], [ %21, %22 ], !dbg !6123, !psr.id !6141
  %.0 = phi i32 [ 0, %1 ], [ %23, %22 ], !dbg !6142, !psr.id !6143
  call void @llvm.dbg.value(metadata i32 %.0, metadata !6136, metadata !DIExpression()), !dbg !6123, !psr.id !6144
  call void @llvm.dbg.value(metadata i32 %.01, metadata !6125, metadata !DIExpression()), !dbg !6123, !psr.id !6145
  %7 = icmp ult i32 %.0, 3, !dbg !6146, !psr.id !6148
  br i1 %7, label %8, label %24, !dbg !6149, !psr.id !6150

8:                                                ; preds = %6
  %9 = add i32 %5, %.01, !dbg !6151, !psr.id !6154
  call void @llvm.dbg.value(metadata i32 %9, metadata !6155, metadata !DIExpression()), !dbg !6156, !psr.id !6157
  %10 = zext i32 %.0 to i64, !dbg !6151, !psr.id !6158
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !6151, !psr.id !6159
  %12 = load i32, i32* %11, align 4, !dbg !6151, !psr.id !6160
  %13 = add i32 %12, %9, !dbg !6151, !psr.id !6161
  %14 = zext i32 %.0 to i64, !dbg !6151, !psr.id !6162
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !6151, !psr.id !6163
  store i32 %13, i32* %15, align 4, !dbg !6151, !psr.id !6164
  %16 = call i32 @is_digit_lessthan_ct(i32 %9, i32 %.01), !dbg !6151, !psr.id !6165
  %17 = zext i32 %.0 to i64, !dbg !6151, !psr.id !6166
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !6151, !psr.id !6167
  %19 = load i32, i32* %18, align 4, !dbg !6151, !psr.id !6168
  %20 = call i32 @is_digit_lessthan_ct(i32 %19, i32 %9), !dbg !6151, !psr.id !6169
  %21 = or i32 %16, %20, !dbg !6151, !psr.id !6170
  call void @llvm.dbg.value(metadata i32 %21, metadata !6125, metadata !DIExpression()), !dbg !6123, !psr.id !6171
  br label %22, !dbg !6172, !psr.id !6173

22:                                               ; preds = %8
  %23 = add i32 %.0, 1, !dbg !6174, !psr.id !6175
  call void @llvm.dbg.value(metadata i32 %23, metadata !6136, metadata !DIExpression()), !dbg !6123, !psr.id !6176
  br label %6, !dbg !6177, !llvm.loop !6178, !psr.id !6180

24:                                               ; preds = %6
  %25 = lshr i32 %5, 1, !dbg !6181, !psr.id !6183
  %26 = add i32 %25, %.01, !dbg !6181, !psr.id !6184
  call void @llvm.dbg.value(metadata i32 %26, metadata !6185, metadata !DIExpression()), !dbg !6186, !psr.id !6187
  %27 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !6181, !psr.id !6188
  %28 = load i32, i32* %27, align 4, !dbg !6181, !psr.id !6189
  %29 = add i32 %28, %26, !dbg !6181, !psr.id !6190
  %30 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !6181, !psr.id !6191
  store i32 %29, i32* %30, align 4, !dbg !6181, !psr.id !6192
  %31 = call i32 @is_digit_lessthan_ct(i32 %26, i32 %.01), !dbg !6181, !psr.id !6193
  %32 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !6181, !psr.id !6194
  %33 = load i32, i32* %32, align 4, !dbg !6181, !psr.id !6195
  %34 = call i32 @is_digit_lessthan_ct(i32 %33, i32 %26), !dbg !6181, !psr.id !6196
  %35 = or i32 %31, %34, !dbg !6181, !psr.id !6197
  call void @llvm.dbg.value(metadata i32 %35, metadata !6125, metadata !DIExpression()), !dbg !6123, !psr.id !6198
  call void @llvm.dbg.value(metadata i32 0, metadata !6136, metadata !DIExpression()), !dbg !6123, !psr.id !6199
  br label %36, !dbg !6200, !psr.id !6202

36:                                               ; preds = %51, %24
  %.1 = phi i32 [ 0, %24 ], [ %52, %51 ], !dbg !6203, !psr.id !6204
  call void @llvm.dbg.value(metadata i32 %.1, metadata !6136, metadata !DIExpression()), !dbg !6123, !psr.id !6205
  %37 = icmp ult i32 %.1, 3, !dbg !6206, !psr.id !6208
  br i1 %37, label %38, label %53, !dbg !6209, !psr.id !6210

38:                                               ; preds = %36
  %39 = zext i32 %.1 to i64, !dbg !6211, !psr.id !6213
  %40 = getelementptr inbounds i32, i32* %0, i64 %39, !dbg !6211, !psr.id !6214
  %41 = load i32, i32* %40, align 4, !dbg !6211, !psr.id !6215
  %42 = lshr i32 %41, 1, !dbg !6211, !psr.id !6216
  %43 = add i32 %.1, 1, !dbg !6211, !psr.id !6217
  %44 = zext i32 %43 to i64, !dbg !6211, !psr.id !6218
  %45 = getelementptr inbounds i32, i32* %0, i64 %44, !dbg !6211, !psr.id !6219
  %46 = load i32, i32* %45, align 4, !dbg !6211, !psr.id !6220
  %47 = shl i32 %46, 31, !dbg !6211, !psr.id !6221
  %48 = xor i32 %42, %47, !dbg !6211, !psr.id !6222
  %49 = zext i32 %.1 to i64, !dbg !6211, !psr.id !6223
  %50 = getelementptr inbounds i32, i32* %0, i64 %49, !dbg !6211, !psr.id !6224
  store i32 %48, i32* %50, align 4, !dbg !6211, !psr.id !6225
  br label %51, !dbg !6226, !psr.id !6227

51:                                               ; preds = %38
  %52 = add i32 %.1, 1, !dbg !6228, !psr.id !6229
  call void @llvm.dbg.value(metadata i32 %52, metadata !6136, metadata !DIExpression()), !dbg !6123, !psr.id !6230
  br label %36, !dbg !6231, !llvm.loop !6232, !psr.id !6234

53:                                               ; preds = %36
  %54 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !6235, !psr.id !6236
  %55 = load i32, i32* %54, align 4, !dbg !6235, !psr.id !6237
  %56 = lshr i32 %55, 1, !dbg !6238, !psr.id !6239
  %57 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !6240, !psr.id !6241
  store i32 %56, i32* %57, align 4, !dbg !6242, !psr.id !6243
  ret void, !dbg !6244, !psr.id !6245
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @eccdouble_wrapper_t()
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
!3 = !DIFile(filename: "eccdouble.c", directory: "/home/luwei/bech-back/FourQlib/ECC_double")
!4 = !{}
!5 = !{!6, !13, !12, !14, !15, !20, !23}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "digit_t", file: !7, line: 94, baseType: !8)
!7 = !DIFile(filename: "./../fourq/fourqlib/FourQ.h", directory: "/home/luwei/bech-back/FourQlib/ECC_double")
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
!41 = !DIFile(filename: "./../fourq/fourqlib/generic/fp.h", directory: "/home/luwei/bech-back/FourQlib/ECC_double")
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
!57 = !DIFile(filename: "./../fourq/fourqlib/generic/../table_lookup.h", directory: "/home/luwei/bech-back/FourQlib/ECC_double")
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
!864 = !DIFile(filename: "./../fourq/fourqlib/eccp2_core.c", directory: "/home/luwei/bech-back/FourQlib/ECC_double")
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
!898 = !DILocation(line: 242, column: 30, scope: !890)
!899 = !{!"566"}
!900 = !DILocation(line: 242, column: 39, scope: !890)
!901 = !{!"567"}
!902 = !DILocation(line: 242, column: 5, scope: !890)
!903 = !{!"568"}
!904 = distinct !DISubprogram(name: "table_lookup_fixed_base", scope: !57, file: !57, line: 187, type: !905, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !23, !907, !12, !12}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!908 = !{!"569"}
!909 = !{!"570"}
!910 = !DILocalVariable(name: "table", arg: 1, scope: !904, file: !57, line: 187, type: !23)
!911 = !DILocation(line: 0, scope: !904)
!912 = !{!"571"}
!913 = !DILocalVariable(name: "P", arg: 2, scope: !904, file: !57, line: 187, type: !907)
!914 = !{!"572"}
!915 = !DILocalVariable(name: "digit", arg: 3, scope: !904, file: !57, line: 187, type: !12)
!916 = !{!"573"}
!917 = !DILocalVariable(name: "sign", arg: 4, scope: !904, file: !57, line: 187, type: !12)
!918 = !{!"574"}
!919 = !DILocalVariable(name: "point", scope: !904, file: !57, line: 269, type: !24)
!920 = !DILocation(line: 269, column: 21, scope: !904)
!921 = !{!"575"}
!922 = !DILocalVariable(name: "temp_point", scope: !904, file: !57, line: 269, type: !24)
!923 = !DILocation(line: 269, column: 28, scope: !904)
!924 = !{!"576"}
!925 = !DILocation(line: 273, column: 5, scope: !904)
!926 = !{!"577"}
!927 = !{!"578"}
!928 = !{!"579"}
!929 = !{!"580"}
!930 = !{!"581"}
!931 = !{!"582"}
!932 = !{!"583"}
!933 = !{!"584"}
!934 = !{!"585"}
!935 = !{!"586"}
!936 = !{!"587"}
!937 = !{!"588"}
!938 = !{!"589"}
!939 = !{!"590"}
!940 = !{!"591"}
!941 = !{!"592"}
!942 = !{!"593"}
!943 = !{!"594"}
!944 = !{!"595"}
!945 = !{!"596"}
!946 = !{!"597"}
!947 = !{!"598"}
!948 = !{!"599"}
!949 = !{!"600"}
!950 = !DILocalVariable(name: "i", scope: !904, file: !57, line: 270, type: !12)
!951 = !{!"601"}
!952 = !DILocation(line: 275, column: 10, scope: !953)
!953 = distinct !DILexicalBlock(scope: !904, file: !57, line: 275, column: 5)
!954 = !{!"602"}
!955 = !{!"603"}
!956 = !DILocation(line: 0, scope: !953)
!957 = !{!"604"}
!958 = !{!"605"}
!959 = !{!"606"}
!960 = !DILocation(line: 275, column: 19, scope: !961)
!961 = distinct !DILexicalBlock(scope: !953, file: !57, line: 275, column: 5)
!962 = !{!"607"}
!963 = !DILocation(line: 275, column: 5, scope: !953)
!964 = !{!"608"}
!965 = !DILocation(line: 277, column: 14, scope: !966)
!966 = distinct !DILexicalBlock(scope: !961, file: !57, line: 276, column: 5)
!967 = !{!"609"}
!968 = !{!"610"}
!969 = !DILocation(line: 279, column: 25, scope: !966)
!970 = !{!"611"}
!971 = !DILocation(line: 279, column: 61, scope: !966)
!972 = !{!"612"}
!973 = !DILocalVariable(name: "mask", scope: !904, file: !57, line: 271, type: !6)
!974 = !{!"613"}
!975 = !DILocation(line: 280, column: 9, scope: !966)
!976 = !{!"614"}
!977 = !{!"615"}
!978 = !{!"616"}
!979 = !{!"617"}
!980 = !{!"618"}
!981 = !{!"619"}
!982 = !{!"620"}
!983 = !{!"621"}
!984 = !{!"622"}
!985 = !{!"623"}
!986 = !{!"624"}
!987 = !{!"625"}
!988 = !{!"626"}
!989 = !{!"627"}
!990 = !{!"628"}
!991 = !{!"629"}
!992 = !{!"630"}
!993 = !{!"631"}
!994 = !{!"632"}
!995 = !{!"633"}
!996 = !{!"634"}
!997 = !{!"635"}
!998 = !{!"636"}
!999 = !{!"637"}
!1000 = !{!"638"}
!1001 = !{!"639"}
!1002 = !{!"640"}
!1003 = !DILocalVariable(name: "j", scope: !904, file: !57, line: 270, type: !12)
!1004 = !{!"641"}
!1005 = !DILocation(line: 282, column: 14, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !966, file: !57, line: 282, column: 9)
!1007 = !{!"642"}
!1008 = !DILocation(line: 0, scope: !1006)
!1009 = !{!"643"}
!1010 = !{!"644"}
!1011 = !DILocation(line: 282, column: 23, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !57, line: 282, column: 9)
!1013 = !{!"645"}
!1014 = !DILocation(line: 282, column: 9, scope: !1006)
!1015 = !{!"646"}
!1016 = !DILocation(line: 283, column: 47, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !57, line: 282, column: 44)
!1018 = !{!"647"}
!1019 = !{!"648"}
!1020 = !DILocation(line: 283, column: 40, scope: !1017)
!1021 = !{!"649"}
!1022 = !{!"650"}
!1023 = !{!"651"}
!1024 = !{!"652"}
!1025 = !DILocation(line: 283, column: 70, scope: !1017)
!1026 = !{!"653"}
!1027 = !{!"654"}
!1028 = !DILocation(line: 283, column: 58, scope: !1017)
!1029 = !{!"655"}
!1030 = !{!"656"}
!1031 = !{!"657"}
!1032 = !{!"658"}
!1033 = !DILocation(line: 283, column: 56, scope: !1017)
!1034 = !{!"659"}
!1035 = !DILocation(line: 283, column: 37, scope: !1017)
!1036 = !{!"660"}
!1037 = !DILocation(line: 283, column: 90, scope: !1017)
!1038 = !{!"661"}
!1039 = !{!"662"}
!1040 = !DILocation(line: 283, column: 83, scope: !1017)
!1041 = !{!"663"}
!1042 = !{!"664"}
!1043 = !{!"665"}
!1044 = !{!"666"}
!1045 = !DILocation(line: 283, column: 81, scope: !1017)
!1046 = !{!"667"}
!1047 = !DILocation(line: 283, column: 20, scope: !1017)
!1048 = !{!"668"}
!1049 = !{!"669"}
!1050 = !DILocation(line: 283, column: 13, scope: !1017)
!1051 = !{!"670"}
!1052 = !{!"671"}
!1053 = !{!"672"}
!1054 = !DILocation(line: 283, column: 29, scope: !1017)
!1055 = !{!"673"}
!1056 = !DILocation(line: 284, column: 47, scope: !1017)
!1057 = !{!"674"}
!1058 = !{!"675"}
!1059 = !DILocation(line: 284, column: 40, scope: !1017)
!1060 = !{!"676"}
!1061 = !{!"677"}
!1062 = !{!"678"}
!1063 = !{!"679"}
!1064 = !DILocation(line: 284, column: 70, scope: !1017)
!1065 = !{!"680"}
!1066 = !{!"681"}
!1067 = !DILocation(line: 284, column: 58, scope: !1017)
!1068 = !{!"682"}
!1069 = !{!"683"}
!1070 = !{!"684"}
!1071 = !{!"685"}
!1072 = !DILocation(line: 284, column: 56, scope: !1017)
!1073 = !{!"686"}
!1074 = !DILocation(line: 284, column: 37, scope: !1017)
!1075 = !{!"687"}
!1076 = !DILocation(line: 284, column: 90, scope: !1017)
!1077 = !{!"688"}
!1078 = !{!"689"}
!1079 = !DILocation(line: 284, column: 83, scope: !1017)
!1080 = !{!"690"}
!1081 = !{!"691"}
!1082 = !{!"692"}
!1083 = !{!"693"}
!1084 = !DILocation(line: 284, column: 81, scope: !1017)
!1085 = !{!"694"}
!1086 = !DILocation(line: 284, column: 20, scope: !1017)
!1087 = !{!"695"}
!1088 = !{!"696"}
!1089 = !DILocation(line: 284, column: 13, scope: !1017)
!1090 = !{!"697"}
!1091 = !{!"698"}
!1092 = !{!"699"}
!1093 = !DILocation(line: 284, column: 29, scope: !1017)
!1094 = !{!"700"}
!1095 = !DILocation(line: 285, column: 47, scope: !1017)
!1096 = !{!"701"}
!1097 = !{!"702"}
!1098 = !DILocation(line: 285, column: 40, scope: !1017)
!1099 = !{!"703"}
!1100 = !{!"704"}
!1101 = !{!"705"}
!1102 = !{!"706"}
!1103 = !DILocation(line: 285, column: 70, scope: !1017)
!1104 = !{!"707"}
!1105 = !{!"708"}
!1106 = !DILocation(line: 285, column: 58, scope: !1017)
!1107 = !{!"709"}
!1108 = !{!"710"}
!1109 = !{!"711"}
!1110 = !{!"712"}
!1111 = !DILocation(line: 285, column: 56, scope: !1017)
!1112 = !{!"713"}
!1113 = !DILocation(line: 285, column: 37, scope: !1017)
!1114 = !{!"714"}
!1115 = !DILocation(line: 285, column: 90, scope: !1017)
!1116 = !{!"715"}
!1117 = !{!"716"}
!1118 = !DILocation(line: 285, column: 83, scope: !1017)
!1119 = !{!"717"}
!1120 = !{!"718"}
!1121 = !{!"719"}
!1122 = !{!"720"}
!1123 = !DILocation(line: 285, column: 81, scope: !1017)
!1124 = !{!"721"}
!1125 = !DILocation(line: 285, column: 20, scope: !1017)
!1126 = !{!"722"}
!1127 = !{!"723"}
!1128 = !DILocation(line: 285, column: 13, scope: !1017)
!1129 = !{!"724"}
!1130 = !{!"725"}
!1131 = !{!"726"}
!1132 = !DILocation(line: 285, column: 29, scope: !1017)
!1133 = !{!"727"}
!1134 = !DILocation(line: 286, column: 47, scope: !1017)
!1135 = !{!"728"}
!1136 = !{!"729"}
!1137 = !DILocation(line: 286, column: 40, scope: !1017)
!1138 = !{!"730"}
!1139 = !{!"731"}
!1140 = !{!"732"}
!1141 = !{!"733"}
!1142 = !DILocation(line: 286, column: 70, scope: !1017)
!1143 = !{!"734"}
!1144 = !{!"735"}
!1145 = !DILocation(line: 286, column: 58, scope: !1017)
!1146 = !{!"736"}
!1147 = !{!"737"}
!1148 = !{!"738"}
!1149 = !{!"739"}
!1150 = !DILocation(line: 286, column: 56, scope: !1017)
!1151 = !{!"740"}
!1152 = !DILocation(line: 286, column: 37, scope: !1017)
!1153 = !{!"741"}
!1154 = !DILocation(line: 286, column: 90, scope: !1017)
!1155 = !{!"742"}
!1156 = !{!"743"}
!1157 = !DILocation(line: 286, column: 83, scope: !1017)
!1158 = !{!"744"}
!1159 = !{!"745"}
!1160 = !{!"746"}
!1161 = !{!"747"}
!1162 = !DILocation(line: 286, column: 81, scope: !1017)
!1163 = !{!"748"}
!1164 = !DILocation(line: 286, column: 20, scope: !1017)
!1165 = !{!"749"}
!1166 = !{!"750"}
!1167 = !DILocation(line: 286, column: 13, scope: !1017)
!1168 = !{!"751"}
!1169 = !{!"752"}
!1170 = !{!"753"}
!1171 = !DILocation(line: 286, column: 29, scope: !1017)
!1172 = !{!"754"}
!1173 = !DILocation(line: 287, column: 47, scope: !1017)
!1174 = !{!"755"}
!1175 = !{!"756"}
!1176 = !DILocation(line: 287, column: 40, scope: !1017)
!1177 = !{!"757"}
!1178 = !{!"758"}
!1179 = !{!"759"}
!1180 = !{!"760"}
!1181 = !DILocation(line: 287, column: 70, scope: !1017)
!1182 = !{!"761"}
!1183 = !{!"762"}
!1184 = !DILocation(line: 287, column: 58, scope: !1017)
!1185 = !{!"763"}
!1186 = !{!"764"}
!1187 = !{!"765"}
!1188 = !{!"766"}
!1189 = !DILocation(line: 287, column: 56, scope: !1017)
!1190 = !{!"767"}
!1191 = !DILocation(line: 287, column: 37, scope: !1017)
!1192 = !{!"768"}
!1193 = !DILocation(line: 287, column: 90, scope: !1017)
!1194 = !{!"769"}
!1195 = !{!"770"}
!1196 = !DILocation(line: 287, column: 83, scope: !1017)
!1197 = !{!"771"}
!1198 = !{!"772"}
!1199 = !{!"773"}
!1200 = !{!"774"}
!1201 = !DILocation(line: 287, column: 81, scope: !1017)
!1202 = !{!"775"}
!1203 = !DILocation(line: 287, column: 20, scope: !1017)
!1204 = !{!"776"}
!1205 = !{!"777"}
!1206 = !DILocation(line: 287, column: 13, scope: !1017)
!1207 = !{!"778"}
!1208 = !{!"779"}
!1209 = !{!"780"}
!1210 = !DILocation(line: 287, column: 29, scope: !1017)
!1211 = !{!"781"}
!1212 = !DILocation(line: 288, column: 47, scope: !1017)
!1213 = !{!"782"}
!1214 = !{!"783"}
!1215 = !DILocation(line: 288, column: 40, scope: !1017)
!1216 = !{!"784"}
!1217 = !{!"785"}
!1218 = !{!"786"}
!1219 = !{!"787"}
!1220 = !DILocation(line: 288, column: 70, scope: !1017)
!1221 = !{!"788"}
!1222 = !{!"789"}
!1223 = !DILocation(line: 288, column: 58, scope: !1017)
!1224 = !{!"790"}
!1225 = !{!"791"}
!1226 = !{!"792"}
!1227 = !{!"793"}
!1228 = !DILocation(line: 288, column: 56, scope: !1017)
!1229 = !{!"794"}
!1230 = !DILocation(line: 288, column: 37, scope: !1017)
!1231 = !{!"795"}
!1232 = !DILocation(line: 288, column: 90, scope: !1017)
!1233 = !{!"796"}
!1234 = !{!"797"}
!1235 = !DILocation(line: 288, column: 83, scope: !1017)
!1236 = !{!"798"}
!1237 = !{!"799"}
!1238 = !{!"800"}
!1239 = !{!"801"}
!1240 = !DILocation(line: 288, column: 81, scope: !1017)
!1241 = !{!"802"}
!1242 = !DILocation(line: 288, column: 20, scope: !1017)
!1243 = !{!"803"}
!1244 = !{!"804"}
!1245 = !DILocation(line: 288, column: 13, scope: !1017)
!1246 = !{!"805"}
!1247 = !{!"806"}
!1248 = !{!"807"}
!1249 = !DILocation(line: 288, column: 29, scope: !1017)
!1250 = !{!"808"}
!1251 = !DILocation(line: 289, column: 9, scope: !1017)
!1252 = !{!"809"}
!1253 = !DILocation(line: 282, column: 40, scope: !1012)
!1254 = !{!"810"}
!1255 = !{!"811"}
!1256 = !DILocation(line: 282, column: 9, scope: !1012)
!1257 = distinct !{!1257, !1014, !1258, !517}
!1258 = !DILocation(line: 289, column: 9, scope: !1006)
!1259 = !{!"812"}
!1260 = !DILocation(line: 290, column: 5, scope: !966)
!1261 = !{!"813"}
!1262 = !DILocation(line: 275, column: 41, scope: !961)
!1263 = !{!"814"}
!1264 = !{!"815"}
!1265 = !DILocation(line: 275, column: 5, scope: !961)
!1266 = distinct !{!1266, !963, !1267, !517}
!1267 = !DILocation(line: 290, column: 5, scope: !953)
!1268 = !{!"816"}
!1269 = !DILocation(line: 292, column: 24, scope: !904)
!1270 = !{!"817"}
!1271 = !{!"818"}
!1272 = !DILocation(line: 292, column: 17, scope: !904)
!1273 = !{!"819"}
!1274 = !DILocation(line: 292, column: 40, scope: !904)
!1275 = !{!"820"}
!1276 = !{!"821"}
!1277 = !DILocation(line: 292, column: 28, scope: !904)
!1278 = !{!"822"}
!1279 = !DILocation(line: 292, column: 5, scope: !904)
!1280 = !{!"823"}
!1281 = !DILocation(line: 293, column: 24, scope: !904)
!1282 = !{!"824"}
!1283 = !{!"825"}
!1284 = !DILocation(line: 293, column: 17, scope: !904)
!1285 = !{!"826"}
!1286 = !DILocation(line: 293, column: 40, scope: !904)
!1287 = !{!"827"}
!1288 = !{!"828"}
!1289 = !DILocation(line: 293, column: 28, scope: !904)
!1290 = !{!"829"}
!1291 = !DILocation(line: 293, column: 5, scope: !904)
!1292 = !{!"830"}
!1293 = !DILocation(line: 294, column: 24, scope: !904)
!1294 = !{!"831"}
!1295 = !{!"832"}
!1296 = !DILocation(line: 294, column: 17, scope: !904)
!1297 = !{!"833"}
!1298 = !DILocation(line: 294, column: 40, scope: !904)
!1299 = !{!"834"}
!1300 = !{!"835"}
!1301 = !DILocation(line: 294, column: 28, scope: !904)
!1302 = !{!"836"}
!1303 = !DILocation(line: 294, column: 5, scope: !904)
!1304 = !{!"837"}
!1305 = !DILocation(line: 295, column: 27, scope: !904)
!1306 = !{!"838"}
!1307 = !{!"839"}
!1308 = !DILocation(line: 295, column: 15, scope: !904)
!1309 = !{!"840"}
!1310 = !{!"841"}
!1311 = !DILocation(line: 295, column: 5, scope: !904)
!1312 = !{!"842"}
!1313 = !DILocation(line: 296, column: 27, scope: !904)
!1314 = !{!"843"}
!1315 = !{!"844"}
!1316 = !DILocation(line: 296, column: 15, scope: !904)
!1317 = !{!"845"}
!1318 = !{!"846"}
!1319 = !DILocation(line: 296, column: 5, scope: !904)
!1320 = !{!"847"}
!1321 = !{!"848"}
!1322 = !DILocation(line: 297, column: 10, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !904, file: !57, line: 297, column: 5)
!1324 = !{!"849"}
!1325 = !DILocation(line: 0, scope: !1323)
!1326 = !{!"850"}
!1327 = !{!"851"}
!1328 = !DILocation(line: 297, column: 19, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1323, file: !57, line: 297, column: 5)
!1330 = !{!"852"}
!1331 = !DILocation(line: 297, column: 5, scope: !1323)
!1332 = !{!"853"}
!1333 = !DILocation(line: 298, column: 59, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1329, file: !57, line: 297, column: 40)
!1335 = !{!"854"}
!1336 = !{!"855"}
!1337 = !DILocation(line: 298, column: 52, scope: !1334)
!1338 = !{!"856"}
!1339 = !{!"857"}
!1340 = !{!"858"}
!1341 = !{!"859"}
!1342 = !DILocation(line: 298, column: 82, scope: !1334)
!1343 = !{!"860"}
!1344 = !{!"861"}
!1345 = !DILocation(line: 298, column: 70, scope: !1334)
!1346 = !{!"862"}
!1347 = !{!"863"}
!1348 = !{!"864"}
!1349 = !{!"865"}
!1350 = !DILocation(line: 298, column: 68, scope: !1334)
!1351 = !{!"866"}
!1352 = !DILocation(line: 298, column: 49, scope: !1334)
!1353 = !{!"867"}
!1354 = !DILocation(line: 298, column: 102, scope: !1334)
!1355 = !{!"868"}
!1356 = !{!"869"}
!1357 = !DILocation(line: 298, column: 95, scope: !1334)
!1358 = !{!"870"}
!1359 = !{!"871"}
!1360 = !{!"872"}
!1361 = !{!"873"}
!1362 = !DILocation(line: 298, column: 93, scope: !1334)
!1363 = !{!"874"}
!1364 = !DILocation(line: 298, column: 16, scope: !1334)
!1365 = !{!"875"}
!1366 = !{!"876"}
!1367 = !DILocation(line: 298, column: 9, scope: !1334)
!1368 = !{!"877"}
!1369 = !{!"878"}
!1370 = !{!"879"}
!1371 = !DILocation(line: 298, column: 25, scope: !1334)
!1372 = !{!"880"}
!1373 = !DILocation(line: 299, column: 59, scope: !1334)
!1374 = !{!"881"}
!1375 = !{!"882"}
!1376 = !DILocation(line: 299, column: 52, scope: !1334)
!1377 = !{!"883"}
!1378 = !{!"884"}
!1379 = !{!"885"}
!1380 = !{!"886"}
!1381 = !DILocation(line: 299, column: 82, scope: !1334)
!1382 = !{!"887"}
!1383 = !{!"888"}
!1384 = !DILocation(line: 299, column: 70, scope: !1334)
!1385 = !{!"889"}
!1386 = !{!"890"}
!1387 = !{!"891"}
!1388 = !{!"892"}
!1389 = !DILocation(line: 299, column: 68, scope: !1334)
!1390 = !{!"893"}
!1391 = !DILocation(line: 299, column: 49, scope: !1334)
!1392 = !{!"894"}
!1393 = !DILocation(line: 299, column: 102, scope: !1334)
!1394 = !{!"895"}
!1395 = !{!"896"}
!1396 = !DILocation(line: 299, column: 95, scope: !1334)
!1397 = !{!"897"}
!1398 = !{!"898"}
!1399 = !{!"899"}
!1400 = !{!"900"}
!1401 = !DILocation(line: 299, column: 93, scope: !1334)
!1402 = !{!"901"}
!1403 = !DILocation(line: 299, column: 16, scope: !1334)
!1404 = !{!"902"}
!1405 = !{!"903"}
!1406 = !DILocation(line: 299, column: 9, scope: !1334)
!1407 = !{!"904"}
!1408 = !{!"905"}
!1409 = !{!"906"}
!1410 = !DILocation(line: 299, column: 25, scope: !1334)
!1411 = !{!"907"}
!1412 = !DILocation(line: 300, column: 59, scope: !1334)
!1413 = !{!"908"}
!1414 = !{!"909"}
!1415 = !DILocation(line: 300, column: 52, scope: !1334)
!1416 = !{!"910"}
!1417 = !{!"911"}
!1418 = !{!"912"}
!1419 = !{!"913"}
!1420 = !DILocation(line: 300, column: 82, scope: !1334)
!1421 = !{!"914"}
!1422 = !{!"915"}
!1423 = !DILocation(line: 300, column: 70, scope: !1334)
!1424 = !{!"916"}
!1425 = !{!"917"}
!1426 = !{!"918"}
!1427 = !{!"919"}
!1428 = !DILocation(line: 300, column: 68, scope: !1334)
!1429 = !{!"920"}
!1430 = !DILocation(line: 300, column: 49, scope: !1334)
!1431 = !{!"921"}
!1432 = !DILocation(line: 300, column: 102, scope: !1334)
!1433 = !{!"922"}
!1434 = !{!"923"}
!1435 = !DILocation(line: 300, column: 95, scope: !1334)
!1436 = !{!"924"}
!1437 = !{!"925"}
!1438 = !{!"926"}
!1439 = !{!"927"}
!1440 = !DILocation(line: 300, column: 93, scope: !1334)
!1441 = !{!"928"}
!1442 = !DILocation(line: 300, column: 16, scope: !1334)
!1443 = !{!"929"}
!1444 = !{!"930"}
!1445 = !DILocation(line: 300, column: 9, scope: !1334)
!1446 = !{!"931"}
!1447 = !{!"932"}
!1448 = !{!"933"}
!1449 = !DILocation(line: 300, column: 25, scope: !1334)
!1450 = !{!"934"}
!1451 = !DILocation(line: 301, column: 59, scope: !1334)
!1452 = !{!"935"}
!1453 = !{!"936"}
!1454 = !DILocation(line: 301, column: 52, scope: !1334)
!1455 = !{!"937"}
!1456 = !{!"938"}
!1457 = !{!"939"}
!1458 = !{!"940"}
!1459 = !DILocation(line: 301, column: 82, scope: !1334)
!1460 = !{!"941"}
!1461 = !{!"942"}
!1462 = !DILocation(line: 301, column: 70, scope: !1334)
!1463 = !{!"943"}
!1464 = !{!"944"}
!1465 = !{!"945"}
!1466 = !{!"946"}
!1467 = !DILocation(line: 301, column: 68, scope: !1334)
!1468 = !{!"947"}
!1469 = !DILocation(line: 301, column: 49, scope: !1334)
!1470 = !{!"948"}
!1471 = !DILocation(line: 301, column: 102, scope: !1334)
!1472 = !{!"949"}
!1473 = !{!"950"}
!1474 = !DILocation(line: 301, column: 95, scope: !1334)
!1475 = !{!"951"}
!1476 = !{!"952"}
!1477 = !{!"953"}
!1478 = !{!"954"}
!1479 = !DILocation(line: 301, column: 93, scope: !1334)
!1480 = !{!"955"}
!1481 = !DILocation(line: 301, column: 16, scope: !1334)
!1482 = !{!"956"}
!1483 = !{!"957"}
!1484 = !DILocation(line: 301, column: 9, scope: !1334)
!1485 = !{!"958"}
!1486 = !{!"959"}
!1487 = !{!"960"}
!1488 = !DILocation(line: 301, column: 25, scope: !1334)
!1489 = !{!"961"}
!1490 = !DILocation(line: 302, column: 59, scope: !1334)
!1491 = !{!"962"}
!1492 = !{!"963"}
!1493 = !DILocation(line: 302, column: 52, scope: !1334)
!1494 = !{!"964"}
!1495 = !{!"965"}
!1496 = !{!"966"}
!1497 = !{!"967"}
!1498 = !DILocation(line: 302, column: 82, scope: !1334)
!1499 = !{!"968"}
!1500 = !{!"969"}
!1501 = !DILocation(line: 302, column: 70, scope: !1334)
!1502 = !{!"970"}
!1503 = !{!"971"}
!1504 = !{!"972"}
!1505 = !{!"973"}
!1506 = !DILocation(line: 302, column: 68, scope: !1334)
!1507 = !{!"974"}
!1508 = !DILocation(line: 302, column: 49, scope: !1334)
!1509 = !{!"975"}
!1510 = !DILocation(line: 302, column: 102, scope: !1334)
!1511 = !{!"976"}
!1512 = !{!"977"}
!1513 = !DILocation(line: 302, column: 95, scope: !1334)
!1514 = !{!"978"}
!1515 = !{!"979"}
!1516 = !{!"980"}
!1517 = !{!"981"}
!1518 = !DILocation(line: 302, column: 93, scope: !1334)
!1519 = !{!"982"}
!1520 = !DILocation(line: 302, column: 16, scope: !1334)
!1521 = !{!"983"}
!1522 = !{!"984"}
!1523 = !DILocation(line: 302, column: 9, scope: !1334)
!1524 = !{!"985"}
!1525 = !{!"986"}
!1526 = !{!"987"}
!1527 = !DILocation(line: 302, column: 25, scope: !1334)
!1528 = !{!"988"}
!1529 = !DILocation(line: 303, column: 59, scope: !1334)
!1530 = !{!"989"}
!1531 = !{!"990"}
!1532 = !DILocation(line: 303, column: 52, scope: !1334)
!1533 = !{!"991"}
!1534 = !{!"992"}
!1535 = !{!"993"}
!1536 = !{!"994"}
!1537 = !DILocation(line: 303, column: 82, scope: !1334)
!1538 = !{!"995"}
!1539 = !{!"996"}
!1540 = !DILocation(line: 303, column: 70, scope: !1334)
!1541 = !{!"997"}
!1542 = !{!"998"}
!1543 = !{!"999"}
!1544 = !{!"1000"}
!1545 = !DILocation(line: 303, column: 68, scope: !1334)
!1546 = !{!"1001"}
!1547 = !DILocation(line: 303, column: 49, scope: !1334)
!1548 = !{!"1002"}
!1549 = !DILocation(line: 303, column: 102, scope: !1334)
!1550 = !{!"1003"}
!1551 = !{!"1004"}
!1552 = !DILocation(line: 303, column: 95, scope: !1334)
!1553 = !{!"1005"}
!1554 = !{!"1006"}
!1555 = !{!"1007"}
!1556 = !{!"1008"}
!1557 = !DILocation(line: 303, column: 93, scope: !1334)
!1558 = !{!"1009"}
!1559 = !DILocation(line: 303, column: 16, scope: !1334)
!1560 = !{!"1010"}
!1561 = !{!"1011"}
!1562 = !DILocation(line: 303, column: 9, scope: !1334)
!1563 = !{!"1012"}
!1564 = !{!"1013"}
!1565 = !{!"1014"}
!1566 = !DILocation(line: 303, column: 25, scope: !1334)
!1567 = !{!"1015"}
!1568 = !DILocation(line: 304, column: 5, scope: !1334)
!1569 = !{!"1016"}
!1570 = !DILocation(line: 297, column: 36, scope: !1329)
!1571 = !{!"1017"}
!1572 = !{!"1018"}
!1573 = !DILocation(line: 297, column: 5, scope: !1329)
!1574 = distinct !{!1574, !1331, !1575, !517}
!1575 = !DILocation(line: 304, column: 5, scope: !1323)
!1576 = !{!"1019"}
!1577 = !DILocation(line: 305, column: 5, scope: !904)
!1578 = !{!"1020"}
!1579 = !{!"1021"}
!1580 = !{!"1022"}
!1581 = !{!"1023"}
!1582 = !{!"1024"}
!1583 = !{!"1025"}
!1584 = !{!"1026"}
!1585 = !{!"1027"}
!1586 = !{!"1028"}
!1587 = !{!"1029"}
!1588 = !{!"1030"}
!1589 = !{!"1031"}
!1590 = !{!"1032"}
!1591 = !{!"1033"}
!1592 = !{!"1034"}
!1593 = !{!"1035"}
!1594 = !{!"1036"}
!1595 = !{!"1037"}
!1596 = !DILocation(line: 307, column: 1, scope: !904)
!1597 = !{!"1038"}
!1598 = distinct !DISubprogram(name: "digit_x_digit", scope: !41, file: !41, line: 53, type: !1599, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !6, !6, !14}
!1601 = !DILocalVariable(name: "a", arg: 1, scope: !1598, file: !41, line: 53, type: !6)
!1602 = !DILocation(line: 0, scope: !1598)
!1603 = !{!"1039"}
!1604 = !DILocalVariable(name: "b", arg: 2, scope: !1598, file: !41, line: 53, type: !6)
!1605 = !{!"1040"}
!1606 = !DILocalVariable(name: "c", arg: 3, scope: !1598, file: !41, line: 53, type: !14)
!1607 = !{!"1041"}
!1608 = !DILocalVariable(name: "mask_low", scope: !1598, file: !41, line: 57, type: !6)
!1609 = !{!"1042"}
!1610 = !DILocalVariable(name: "mask_high", scope: !1598, file: !41, line: 57, type: !6)
!1611 = !{!"1043"}
!1612 = !DILocation(line: 59, column: 12, scope: !1598)
!1613 = !{!"1044"}
!1614 = !DILocalVariable(name: "al", scope: !1598, file: !41, line: 55, type: !6)
!1615 = !{!"1045"}
!1616 = !DILocation(line: 60, column: 12, scope: !1598)
!1617 = !{!"1046"}
!1618 = !DILocalVariable(name: "ah", scope: !1598, file: !41, line: 55, type: !6)
!1619 = !{!"1047"}
!1620 = !DILocation(line: 61, column: 12, scope: !1598)
!1621 = !{!"1048"}
!1622 = !DILocalVariable(name: "bl", scope: !1598, file: !41, line: 55, type: !6)
!1623 = !{!"1049"}
!1624 = !DILocation(line: 62, column: 12, scope: !1598)
!1625 = !{!"1050"}
!1626 = !DILocalVariable(name: "bh", scope: !1598, file: !41, line: 55, type: !6)
!1627 = !{!"1051"}
!1628 = !DILocation(line: 64, column: 14, scope: !1598)
!1629 = !{!"1052"}
!1630 = !DILocalVariable(name: "albl", scope: !1598, file: !41, line: 56, type: !6)
!1631 = !{!"1053"}
!1632 = !DILocation(line: 65, column: 14, scope: !1598)
!1633 = !{!"1054"}
!1634 = !DILocalVariable(name: "albh", scope: !1598, file: !41, line: 56, type: !6)
!1635 = !{!"1055"}
!1636 = !DILocation(line: 66, column: 14, scope: !1598)
!1637 = !{!"1056"}
!1638 = !DILocalVariable(name: "ahbl", scope: !1598, file: !41, line: 56, type: !6)
!1639 = !{!"1057"}
!1640 = !DILocation(line: 67, column: 14, scope: !1598)
!1641 = !{!"1058"}
!1642 = !DILocalVariable(name: "ahbh", scope: !1598, file: !41, line: 56, type: !6)
!1643 = !{!"1059"}
!1644 = !DILocation(line: 68, column: 17, scope: !1598)
!1645 = !{!"1060"}
!1646 = !DILocation(line: 68, column: 5, scope: !1598)
!1647 = !{!"1061"}
!1648 = !DILocation(line: 68, column: 10, scope: !1598)
!1649 = !{!"1062"}
!1650 = !DILocation(line: 70, column: 17, scope: !1598)
!1651 = !{!"1063"}
!1652 = !DILocalVariable(name: "res1", scope: !1598, file: !41, line: 56, type: !6)
!1653 = !{!"1064"}
!1654 = !DILocation(line: 71, column: 17, scope: !1598)
!1655 = !{!"1065"}
!1656 = !DILocalVariable(name: "res2", scope: !1598, file: !41, line: 56, type: !6)
!1657 = !{!"1066"}
!1658 = !DILocation(line: 72, column: 17, scope: !1598)
!1659 = !{!"1067"}
!1660 = !DILocalVariable(name: "res3", scope: !1598, file: !41, line: 56, type: !6)
!1661 = !{!"1068"}
!1662 = !DILocation(line: 73, column: 17, scope: !1598)
!1663 = !{!"1069"}
!1664 = !DILocation(line: 73, column: 24, scope: !1598)
!1665 = !{!"1070"}
!1666 = !DILocalVariable(name: "temp", scope: !1598, file: !41, line: 55, type: !6)
!1667 = !{!"1071"}
!1668 = !DILocation(line: 74, column: 18, scope: !1598)
!1669 = !{!"1072"}
!1670 = !DILocalVariable(name: "carry", scope: !1598, file: !41, line: 56, type: !6)
!1671 = !{!"1073"}
!1672 = !DILocation(line: 75, column: 18, scope: !1598)
!1673 = !{!"1074"}
!1674 = !DILocation(line: 75, column: 5, scope: !1598)
!1675 = !{!"1075"}
!1676 = !DILocation(line: 75, column: 10, scope: !1598)
!1677 = !{!"1076"}
!1678 = !{!"1077"}
!1679 = !{!"1078"}
!1680 = !DILocation(line: 77, column: 17, scope: !1598)
!1681 = !{!"1079"}
!1682 = !{!"1080"}
!1683 = !DILocation(line: 78, column: 17, scope: !1598)
!1684 = !{!"1081"}
!1685 = !{!"1082"}
!1686 = !DILocation(line: 79, column: 17, scope: !1598)
!1687 = !{!"1083"}
!1688 = !{!"1084"}
!1689 = !DILocation(line: 80, column: 17, scope: !1598)
!1690 = !{!"1085"}
!1691 = !DILocation(line: 80, column: 24, scope: !1598)
!1692 = !{!"1086"}
!1693 = !DILocation(line: 80, column: 31, scope: !1598)
!1694 = !{!"1087"}
!1695 = !{!"1088"}
!1696 = !DILocation(line: 81, column: 17, scope: !1598)
!1697 = !{!"1089"}
!1698 = !DILocation(line: 81, column: 5, scope: !1598)
!1699 = !{!"1090"}
!1700 = !DILocation(line: 81, column: 10, scope: !1598)
!1701 = !{!"1091"}
!1702 = !DILocation(line: 82, column: 18, scope: !1598)
!1703 = !{!"1092"}
!1704 = !{!"1093"}
!1705 = !DILocation(line: 83, column: 19, scope: !1598)
!1706 = !{!"1094"}
!1707 = !DILocation(line: 83, column: 32, scope: !1598)
!1708 = !{!"1095"}
!1709 = !DILocation(line: 83, column: 5, scope: !1598)
!1710 = !{!"1096"}
!1711 = !DILocation(line: 83, column: 10, scope: !1598)
!1712 = !{!"1097"}
!1713 = !{!"1098"}
!1714 = !{!"1099"}
!1715 = !DILocation(line: 84, column: 1, scope: !1598)
!1716 = !{!"1100"}
!1717 = distinct !DISubprogram(name: "fpmul1271", scope: !41, file: !41, line: 149, type: !1718, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !14, !14, !14}
!1720 = !{!"1101"}
!1721 = !{!"1102"}
!1722 = !DILocalVariable(name: "a", arg: 1, scope: !1717, file: !41, line: 149, type: !14)
!1723 = !DILocation(line: 0, scope: !1717)
!1724 = !{!"1103"}
!1725 = !DILocalVariable(name: "b", arg: 2, scope: !1717, file: !41, line: 149, type: !14)
!1726 = !{!"1104"}
!1727 = !DILocalVariable(name: "c", arg: 3, scope: !1717, file: !41, line: 149, type: !14)
!1728 = !{!"1105"}
!1729 = !DILocalVariable(name: "UV", scope: !1717, file: !41, line: 152, type: !1730)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !32)
!1731 = !DILocation(line: 152, column: 19, scope: !1717)
!1732 = !{!"1106"}
!1733 = !DILocalVariable(name: "t", scope: !1717, file: !41, line: 153, type: !1734)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !1735)
!1735 = !{!1736}
!1736 = !DISubrange(count: 8)
!1737 = !DILocation(line: 153, column: 13, scope: !1717)
!1738 = !{!"1107"}
!1739 = !{!"1108"}
!1740 = !{!"1109"}
!1741 = !DILocalVariable(name: "carry", scope: !1717, file: !41, line: 154, type: !12)
!1742 = !{!"1110"}
!1743 = !DILocalVariable(name: "i", scope: !1717, file: !41, line: 151, type: !12)
!1744 = !{!"1111"}
!1745 = !DILocation(line: 156, column: 10, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1717, file: !41, line: 156, column: 5)
!1747 = !{!"1112"}
!1748 = !DILocation(line: 0, scope: !1746)
!1749 = !{!"1113"}
!1750 = !{!"1114"}
!1751 = !DILocation(line: 156, column: 19, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1746, file: !41, line: 156, column: 5)
!1753 = !{!"1115"}
!1754 = !DILocation(line: 156, column: 5, scope: !1746)
!1755 = !{!"1116"}
!1756 = !DILocalVariable(name: "u", scope: !1717, file: !41, line: 152, type: !6)
!1757 = !{!"1117"}
!1758 = !DILocalVariable(name: "j", scope: !1717, file: !41, line: 151, type: !12)
!1759 = !{!"1118"}
!1760 = !DILocation(line: 158, column: 15, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !41, line: 158, column: 10)
!1762 = distinct !DILexicalBlock(scope: !1752, file: !41, line: 156, column: 40)
!1763 = !{!"1119"}
!1764 = !DILocation(line: 0, scope: !1761)
!1765 = !{!"1120"}
!1766 = !DILocation(line: 0, scope: !1762)
!1767 = !{!"1121"}
!1768 = !{!"1122"}
!1769 = !{!"1123"}
!1770 = !DILocation(line: 158, column: 24, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1761, file: !41, line: 158, column: 10)
!1772 = !{!"1124"}
!1773 = !DILocation(line: 158, column: 10, scope: !1761)
!1774 = !{!"1125"}
!1775 = !DILocation(line: 159, column: 15, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1771, file: !41, line: 158, column: 45)
!1777 = !{!"1126"}
!1778 = !{!"1127"}
!1779 = !{!"1128"}
!1780 = !{!"1129"}
!1781 = !{!"1130"}
!1782 = !{!"1131"}
!1783 = !{!"1132"}
!1784 = !{!"1133"}
!1785 = !DILocation(line: 160, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1776, file: !41, line: 160, column: 15)
!1787 = !{!"1134"}
!1788 = !{!"1135"}
!1789 = !{!"1136"}
!1790 = !DILocalVariable(name: "tempReg", scope: !1786, file: !41, line: 160, type: !6)
!1791 = !DILocation(line: 0, scope: !1786)
!1792 = !{!"1137"}
!1793 = !{!"1138"}
!1794 = !DILocalVariable(name: "v", scope: !1717, file: !41, line: 152, type: !6)
!1795 = !{!"1139"}
!1796 = !{!"1140"}
!1797 = !{!"1141"}
!1798 = !{!"1142"}
!1799 = !{!"1143"}
!1800 = !DILocation(line: 161, column: 19, scope: !1776)
!1801 = !{!"1144"}
!1802 = !{!"1145"}
!1803 = !DILocation(line: 161, column: 25, scope: !1776)
!1804 = !{!"1146"}
!1805 = !{!"1147"}
!1806 = !DILocation(line: 162, column: 15, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1776, file: !41, line: 162, column: 15)
!1808 = !{!"1148"}
!1809 = !{!"1149"}
!1810 = !{!"1150"}
!1811 = !{!"1151"}
!1812 = !{!"1152"}
!1813 = !DILocalVariable(name: "tempReg", scope: !1807, file: !41, line: 162, type: !6)
!1814 = !DILocation(line: 0, scope: !1807)
!1815 = !{!"1153"}
!1816 = !{!"1154"}
!1817 = !{!"1155"}
!1818 = !{!"1156"}
!1819 = !{!"1157"}
!1820 = !{!"1158"}
!1821 = !{!"1159"}
!1822 = !DILocation(line: 163, column: 21, scope: !1776)
!1823 = !{!"1160"}
!1824 = !{!"1161"}
!1825 = !DILocation(line: 164, column: 18, scope: !1776)
!1826 = !{!"1162"}
!1827 = !DILocation(line: 164, column: 15, scope: !1776)
!1828 = !{!"1163"}
!1829 = !{!"1164"}
!1830 = !DILocation(line: 164, column: 22, scope: !1776)
!1831 = !{!"1165"}
!1832 = !DILocation(line: 165, column: 10, scope: !1776)
!1833 = !{!"1166"}
!1834 = !DILocation(line: 158, column: 41, scope: !1771)
!1835 = !{!"1167"}
!1836 = !{!"1168"}
!1837 = !DILocation(line: 158, column: 10, scope: !1771)
!1838 = distinct !{!1838, !1773, !1839, !517}
!1839 = !DILocation(line: 165, column: 10, scope: !1761)
!1840 = !{!"1169"}
!1841 = !DILocation(line: 166, column: 24, scope: !1762)
!1842 = !{!"1170"}
!1843 = !DILocation(line: 166, column: 10, scope: !1762)
!1844 = !{!"1171"}
!1845 = !{!"1172"}
!1846 = !DILocation(line: 166, column: 28, scope: !1762)
!1847 = !{!"1173"}
!1848 = !DILocation(line: 167, column: 5, scope: !1762)
!1849 = !{!"1174"}
!1850 = !DILocation(line: 156, column: 36, scope: !1752)
!1851 = !{!"1175"}
!1852 = !{!"1176"}
!1853 = !DILocation(line: 156, column: 5, scope: !1752)
!1854 = distinct !{!1854, !1754, !1855, !517}
!1855 = !DILocation(line: 167, column: 5, scope: !1746)
!1856 = !{!"1177"}
!1857 = !DILocation(line: 168, column: 17, scope: !1717)
!1858 = !{!"1178"}
!1859 = !{!"1179"}
!1860 = !DILocation(line: 168, column: 35, scope: !1717)
!1861 = !{!"1180"}
!1862 = !DILocalVariable(name: "bit_mask", scope: !1717, file: !41, line: 152, type: !6)
!1863 = !{!"1181"}
!1864 = !DILocation(line: 169, column: 5, scope: !1717)
!1865 = !{!"1182"}
!1866 = !DILocation(line: 169, column: 23, scope: !1717)
!1867 = !{!"1183"}
!1868 = !{!"1184"}
!1869 = !{!"1185"}
!1870 = !{!"1186"}
!1871 = !{!"1187"}
!1872 = !DILocation(line: 171, column: 10, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1717, file: !41, line: 171, column: 5)
!1874 = !{!"1188"}
!1875 = !DILocation(line: 0, scope: !1873)
!1876 = !{!"1189"}
!1877 = !{!"1190"}
!1878 = !{!"1191"}
!1879 = !{!"1192"}
!1880 = !{!"1193"}
!1881 = !{!"1194"}
!1882 = !DILocation(line: 171, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1873, file: !41, line: 171, column: 5)
!1884 = !{!"1195"}
!1885 = !DILocation(line: 171, column: 5, scope: !1873)
!1886 = !{!"1196"}
!1887 = !DILocation(line: 172, column: 31, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1883, file: !41, line: 171, column: 40)
!1889 = !{!"1197"}
!1890 = !DILocation(line: 172, column: 17, scope: !1888)
!1891 = !{!"1198"}
!1892 = !{!"1199"}
!1893 = !{!"1200"}
!1894 = !DILocation(line: 172, column: 35, scope: !1888)
!1895 = !{!"1201"}
!1896 = !DILocalVariable(name: "temp", scope: !1717, file: !41, line: 152, type: !6)
!1897 = !{!"1202"}
!1898 = !DILocation(line: 173, column: 44, scope: !1888)
!1899 = !{!"1203"}
!1900 = !DILocation(line: 173, column: 30, scope: !1888)
!1901 = !{!"1204"}
!1902 = !{!"1205"}
!1903 = !{!"1206"}
!1904 = !DILocation(line: 173, column: 48, scope: !1888)
!1905 = !{!"1207"}
!1906 = !DILocation(line: 173, column: 54, scope: !1888)
!1907 = !{!"1208"}
!1908 = !DILocation(line: 173, column: 23, scope: !1888)
!1909 = !{!"1209"}
!1910 = !DILocation(line: 173, column: 9, scope: !1888)
!1911 = !{!"1210"}
!1912 = !{!"1211"}
!1913 = !DILocation(line: 173, column: 27, scope: !1888)
!1914 = !{!"1212"}
!1915 = !{!"1213"}
!1916 = !DILocation(line: 175, column: 9, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1888, file: !41, line: 175, column: 9)
!1918 = !{!"1214"}
!1919 = !{!"1215"}
!1920 = !{!"1216"}
!1921 = !{!"1217"}
!1922 = !DILocalVariable(name: "tempReg", scope: !1917, file: !41, line: 175, type: !6)
!1923 = !DILocation(line: 0, scope: !1917)
!1924 = !{!"1218"}
!1925 = !{!"1219"}
!1926 = !{!"1220"}
!1927 = !{!"1221"}
!1928 = !{!"1222"}
!1929 = !{!"1223"}
!1930 = !{!"1224"}
!1931 = !{!"1225"}
!1932 = !{!"1226"}
!1933 = !{!"1227"}
!1934 = !{!"1228"}
!1935 = !{!"1229"}
!1936 = !{!"1230"}
!1937 = !{!"1231"}
!1938 = !{!"1232"}
!1939 = !{!"1233"}
!1940 = !DILocation(line: 176, column: 5, scope: !1888)
!1941 = !{!"1234"}
!1942 = !DILocation(line: 171, column: 36, scope: !1883)
!1943 = !{!"1235"}
!1944 = !{!"1236"}
!1945 = !DILocation(line: 171, column: 5, scope: !1883)
!1946 = distinct !{!1946, !1885, !1947, !517}
!1947 = !DILocation(line: 176, column: 5, scope: !1873)
!1948 = !{!"1237"}
!1949 = !DILocation(line: 177, column: 28, scope: !1717)
!1950 = !{!"1238"}
!1951 = !{!"1239"}
!1952 = !DILocation(line: 177, column: 46, scope: !1717)
!1953 = !{!"1240"}
!1954 = !{!"1241"}
!1955 = !DILocation(line: 178, column: 5, scope: !1717)
!1956 = !{!"1242"}
!1957 = !DILocation(line: 178, column: 23, scope: !1717)
!1958 = !{!"1243"}
!1959 = !{!"1244"}
!1960 = !{!"1245"}
!1961 = !{!"1246"}
!1962 = !DILocation(line: 179, column: 10, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1717, file: !41, line: 179, column: 5)
!1964 = !{!"1247"}
!1965 = !DILocation(line: 0, scope: !1963)
!1966 = !{!"1248"}
!1967 = !{!"1249"}
!1968 = !{!"1250"}
!1969 = !{!"1251"}
!1970 = !DILocation(line: 179, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1963, file: !41, line: 179, column: 5)
!1972 = !{!"1252"}
!1973 = !DILocation(line: 179, column: 5, scope: !1963)
!1974 = !{!"1253"}
!1975 = !DILocation(line: 180, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !41, line: 180, column: 9)
!1977 = distinct !DILexicalBlock(scope: !1971, file: !41, line: 179, column: 40)
!1978 = !{!"1254"}
!1979 = !{!"1255"}
!1980 = !{!"1256"}
!1981 = !{!"1257"}
!1982 = !DILocalVariable(name: "tempReg", scope: !1976, file: !41, line: 180, type: !6)
!1983 = !DILocation(line: 0, scope: !1976)
!1984 = !{!"1258"}
!1985 = !{!"1259"}
!1986 = !{!"1260"}
!1987 = !{!"1261"}
!1988 = !{!"1262"}
!1989 = !{!"1263"}
!1990 = !{!"1264"}
!1991 = !{!"1265"}
!1992 = !{!"1266"}
!1993 = !{!"1267"}
!1994 = !{!"1268"}
!1995 = !{!"1269"}
!1996 = !DILocation(line: 181, column: 5, scope: !1977)
!1997 = !{!"1270"}
!1998 = !DILocation(line: 179, column: 36, scope: !1971)
!1999 = !{!"1271"}
!2000 = !{!"1272"}
!2001 = !DILocation(line: 179, column: 5, scope: !1971)
!2002 = distinct !{!2002, !1973, !2003, !517}
!2003 = !DILocation(line: 181, column: 5, scope: !1963)
!2004 = !{!"1273"}
!2005 = !DILocation(line: 182, column: 1, scope: !1717)
!2006 = !{!"1274"}
!2007 = distinct !DISubprogram(name: "is_digit_lessthan_ct", scope: !7, file: !7, line: 250, type: !2008, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!12, !6, !6}
!2010 = !DILocalVariable(name: "x", arg: 1, scope: !2007, file: !7, line: 250, type: !6)
!2011 = !DILocation(line: 0, scope: !2007)
!2012 = !{!"1275"}
!2013 = !DILocalVariable(name: "y", arg: 2, scope: !2007, file: !7, line: 250, type: !6)
!2014 = !{!"1276"}
!2015 = !DILocation(line: 252, column: 36, scope: !2007)
!2016 = !{!"1277"}
!2017 = !DILocation(line: 252, column: 47, scope: !2007)
!2018 = !{!"1278"}
!2019 = !DILocation(line: 252, column: 52, scope: !2007)
!2020 = !{!"1279"}
!2021 = !DILocation(line: 252, column: 41, scope: !2007)
!2022 = !{!"1280"}
!2023 = !DILocation(line: 252, column: 30, scope: !2007)
!2024 = !{!"1281"}
!2025 = !DILocation(line: 252, column: 59, scope: !2007)
!2026 = !{!"1282"}
!2027 = !DILocation(line: 252, column: 5, scope: !2007)
!2028 = !{!"1283"}
!2029 = distinct !DISubprogram(name: "fpsqr1271", scope: !41, file: !41, line: 185, type: !2030, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !14, !14}
!2032 = !DILocalVariable(name: "a", arg: 1, scope: !2029, file: !41, line: 185, type: !14)
!2033 = !DILocation(line: 0, scope: !2029)
!2034 = !{!"1284"}
!2035 = !DILocalVariable(name: "c", arg: 2, scope: !2029, file: !41, line: 185, type: !14)
!2036 = !{!"1285"}
!2037 = !DILocation(line: 188, column: 5, scope: !2029)
!2038 = !{!"1286"}
!2039 = !DILocation(line: 189, column: 1, scope: !2029)
!2040 = !{!"1287"}
!2041 = distinct !DISubprogram(name: "mod1271", scope: !41, file: !41, line: 192, type: !2042, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !14}
!2044 = !DILocalVariable(name: "a", arg: 1, scope: !2041, file: !41, line: 192, type: !14)
!2045 = !DILocation(line: 0, scope: !2041)
!2046 = !{!"1288"}
!2047 = !DILocalVariable(name: "borrow", scope: !2041, file: !41, line: 196, type: !12)
!2048 = !{!"1289"}
!2049 = !DILocalVariable(name: "i", scope: !2041, file: !41, line: 195, type: !12)
!2050 = !{!"1290"}
!2051 = !DILocation(line: 198, column: 10, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2041, file: !41, line: 198, column: 5)
!2053 = !{!"1291"}
!2054 = !DILocation(line: 0, scope: !2052)
!2055 = !{!"1292"}
!2056 = !{!"1293"}
!2057 = !{!"1294"}
!2058 = !{!"1295"}
!2059 = !DILocation(line: 198, column: 19, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2052, file: !41, line: 198, column: 5)
!2061 = !{!"1296"}
!2062 = !DILocation(line: 198, column: 5, scope: !2052)
!2063 = !{!"1297"}
!2064 = !DILocation(line: 199, column: 9, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !41, line: 199, column: 9)
!2066 = distinct !DILexicalBlock(scope: !2060, file: !41, line: 198, column: 44)
!2067 = !{!"1298"}
!2068 = !{!"1299"}
!2069 = !{!"1300"}
!2070 = !{!"1301"}
!2071 = !DILocalVariable(name: "tempReg", scope: !2065, file: !41, line: 199, type: !6)
!2072 = !DILocation(line: 0, scope: !2065)
!2073 = !{!"1302"}
!2074 = !{!"1303"}
!2075 = !{!"1304"}
!2076 = !{!"1305"}
!2077 = !{!"1306"}
!2078 = !{!"1307"}
!2079 = !{!"1308"}
!2080 = !{!"1309"}
!2081 = !DILocalVariable(name: "borrowReg", scope: !2065, file: !41, line: 199, type: !12)
!2082 = !{!"1310"}
!2083 = !{!"1311"}
!2084 = !{!"1312"}
!2085 = !{!"1313"}
!2086 = !{!"1314"}
!2087 = !{!"1315"}
!2088 = !DILocation(line: 200, column: 5, scope: !2066)
!2089 = !{!"1316"}
!2090 = !DILocation(line: 198, column: 40, scope: !2060)
!2091 = !{!"1317"}
!2092 = !{!"1318"}
!2093 = !DILocation(line: 198, column: 5, scope: !2060)
!2094 = distinct !{!2094, !2062, !2095, !517}
!2095 = !DILocation(line: 200, column: 5, scope: !2052)
!2096 = !{!"1319"}
!2097 = !DILocation(line: 201, column: 5, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2041, file: !41, line: 201, column: 5)
!2099 = !{!"1320"}
!2100 = !{!"1321"}
!2101 = !{!"1322"}
!2102 = !DILocalVariable(name: "tempReg", scope: !2098, file: !41, line: 201, type: !6)
!2103 = !DILocation(line: 0, scope: !2098)
!2104 = !{!"1323"}
!2105 = !{!"1324"}
!2106 = !{!"1325"}
!2107 = !{!"1326"}
!2108 = !{!"1327"}
!2109 = !{!"1328"}
!2110 = !{!"1329"}
!2111 = !DILocalVariable(name: "borrowReg", scope: !2098, file: !41, line: 201, type: !12)
!2112 = !{!"1330"}
!2113 = !{!"1331"}
!2114 = !{!"1332"}
!2115 = !{!"1333"}
!2116 = !{!"1334"}
!2117 = !DILocation(line: 203, column: 14, scope: !2041)
!2118 = !{!"1335"}
!2119 = !DILocalVariable(name: "mask", scope: !2041, file: !41, line: 194, type: !6)
!2120 = !{!"1336"}
!2121 = !{!"1337"}
!2122 = !{!"1338"}
!2123 = !DILocation(line: 205, column: 10, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2041, file: !41, line: 205, column: 5)
!2125 = !{!"1339"}
!2126 = !DILocation(line: 0, scope: !2124)
!2127 = !{!"1340"}
!2128 = !{!"1341"}
!2129 = !{!"1342"}
!2130 = !{!"1343"}
!2131 = !DILocation(line: 205, column: 19, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2124, file: !41, line: 205, column: 5)
!2133 = !{!"1344"}
!2134 = !DILocation(line: 205, column: 5, scope: !2124)
!2135 = !{!"1345"}
!2136 = !DILocation(line: 206, column: 9, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !41, line: 206, column: 9)
!2138 = distinct !DILexicalBlock(scope: !2132, file: !41, line: 205, column: 44)
!2139 = !{!"1346"}
!2140 = !{!"1347"}
!2141 = !{!"1348"}
!2142 = !{!"1349"}
!2143 = !DILocalVariable(name: "tempReg", scope: !2137, file: !41, line: 206, type: !6)
!2144 = !DILocation(line: 0, scope: !2137)
!2145 = !{!"1350"}
!2146 = !{!"1351"}
!2147 = !{!"1352"}
!2148 = !{!"1353"}
!2149 = !{!"1354"}
!2150 = !{!"1355"}
!2151 = !{!"1356"}
!2152 = !{!"1357"}
!2153 = !{!"1358"}
!2154 = !{!"1359"}
!2155 = !{!"1360"}
!2156 = !{!"1361"}
!2157 = !DILocation(line: 207, column: 5, scope: !2138)
!2158 = !{!"1362"}
!2159 = !DILocation(line: 205, column: 40, scope: !2132)
!2160 = !{!"1363"}
!2161 = !{!"1364"}
!2162 = !DILocation(line: 205, column: 5, scope: !2132)
!2163 = distinct !{!2163, !2134, !2164, !517}
!2164 = !DILocation(line: 207, column: 5, scope: !2124)
!2165 = !{!"1365"}
!2166 = !DILocation(line: 208, column: 5, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2041, file: !41, line: 208, column: 5)
!2168 = !{!"1366"}
!2169 = !{!"1367"}
!2170 = !{!"1368"}
!2171 = !DILocalVariable(name: "tempReg", scope: !2167, file: !41, line: 208, type: !6)
!2172 = !DILocation(line: 0, scope: !2167)
!2173 = !{!"1369"}
!2174 = !{!"1370"}
!2175 = !{!"1371"}
!2176 = !{!"1372"}
!2177 = !{!"1373"}
!2178 = !{!"1374"}
!2179 = !{!"1375"}
!2180 = !{!"1376"}
!2181 = !{!"1377"}
!2182 = !{!"1378"}
!2183 = !{!"1379"}
!2184 = !DILocation(line: 209, column: 1, scope: !2041)
!2185 = !{!"1380"}
!2186 = distinct !DISubprogram(name: "is_digit_zero_ct", scope: !7, file: !7, line: 245, type: !891, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2187 = !DILocalVariable(name: "x", arg: 1, scope: !2186, file: !7, line: 245, type: !6)
!2188 = !DILocation(line: 0, scope: !2186)
!2189 = !{!"1381"}
!2190 = !DILocation(line: 247, column: 31, scope: !2186)
!2191 = !{!"1382"}
!2192 = !DILocation(line: 247, column: 29, scope: !2186)
!2193 = !{!"1383"}
!2194 = !DILocation(line: 247, column: 5, scope: !2186)
!2195 = !{!"1384"}
!2196 = distinct !DISubprogram(name: "mp_mul", scope: !41, file: !41, line: 212, type: !2197, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !14, !14, !14, !12}
!2199 = !{!"1385"}
!2200 = !DILocalVariable(name: "a", arg: 1, scope: !2196, file: !41, line: 212, type: !14)
!2201 = !DILocation(line: 0, scope: !2196)
!2202 = !{!"1386"}
!2203 = !DILocalVariable(name: "b", arg: 2, scope: !2196, file: !41, line: 212, type: !14)
!2204 = !{!"1387"}
!2205 = !DILocalVariable(name: "c", arg: 3, scope: !2196, file: !41, line: 212, type: !14)
!2206 = !{!"1388"}
!2207 = !DILocalVariable(name: "nwords", arg: 4, scope: !2196, file: !41, line: 212, type: !12)
!2208 = !{!"1389"}
!2209 = !DILocalVariable(name: "UV", scope: !2196, file: !41, line: 215, type: !1730)
!2210 = !DILocation(line: 215, column: 19, scope: !2196)
!2211 = !{!"1390"}
!2212 = !DILocalVariable(name: "carry", scope: !2196, file: !41, line: 216, type: !12)
!2213 = !{!"1391"}
!2214 = !DILocalVariable(name: "i", scope: !2196, file: !41, line: 214, type: !12)
!2215 = !{!"1392"}
!2216 = !DILocation(line: 218, column: 11, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2196, file: !41, line: 218, column: 6)
!2218 = !{!"1393"}
!2219 = !DILocation(line: 0, scope: !2217)
!2220 = !{!"1394"}
!2221 = !{!"1395"}
!2222 = !DILocation(line: 218, column: 24, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2217, file: !41, line: 218, column: 6)
!2224 = !{!"1396"}
!2225 = !DILocation(line: 218, column: 20, scope: !2223)
!2226 = !{!"1397"}
!2227 = !DILocation(line: 218, column: 6, scope: !2217)
!2228 = !{!"1398"}
!2229 = !DILocation(line: 218, column: 39, scope: !2223)
!2230 = !{!"1399"}
!2231 = !{!"1400"}
!2232 = !DILocation(line: 218, column: 44, scope: !2223)
!2233 = !{!"1401"}
!2234 = !{!"1402"}
!2235 = !DILocation(line: 218, column: 35, scope: !2223)
!2236 = !{!"1403"}
!2237 = !{!"1404"}
!2238 = !DILocation(line: 218, column: 6, scope: !2223)
!2239 = distinct !{!2239, !2227, !2240, !517}
!2240 = !DILocation(line: 218, column: 46, scope: !2217)
!2241 = !{!"1405"}
!2242 = !{!"1406"}
!2243 = !DILocation(line: 220, column: 11, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2196, file: !41, line: 220, column: 6)
!2245 = !{!"1407"}
!2246 = !DILocation(line: 0, scope: !2244)
!2247 = !{!"1408"}
!2248 = !{!"1409"}
!2249 = !DILocation(line: 220, column: 20, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2244, file: !41, line: 220, column: 6)
!2251 = !{!"1410"}
!2252 = !DILocation(line: 220, column: 6, scope: !2244)
!2253 = !{!"1411"}
!2254 = !DILocalVariable(name: "u", scope: !2196, file: !41, line: 215, type: !6)
!2255 = !{!"1412"}
!2256 = !DILocalVariable(name: "j", scope: !2196, file: !41, line: 214, type: !12)
!2257 = !{!"1413"}
!2258 = !DILocation(line: 222, column: 16, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !41, line: 222, column: 11)
!2260 = distinct !DILexicalBlock(scope: !2250, file: !41, line: 220, column: 35)
!2261 = !{!"1414"}
!2262 = !DILocation(line: 0, scope: !2259)
!2263 = !{!"1415"}
!2264 = !DILocation(line: 0, scope: !2260)
!2265 = !{!"1416"}
!2266 = !{!"1417"}
!2267 = !{!"1418"}
!2268 = !DILocation(line: 222, column: 25, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2259, file: !41, line: 222, column: 11)
!2270 = !{!"1419"}
!2271 = !DILocation(line: 222, column: 11, scope: !2259)
!2272 = !{!"1420"}
!2273 = !DILocation(line: 223, column: 16, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2269, file: !41, line: 222, column: 40)
!2275 = !{!"1421"}
!2276 = !{!"1422"}
!2277 = !{!"1423"}
!2278 = !{!"1424"}
!2279 = !{!"1425"}
!2280 = !{!"1426"}
!2281 = !{!"1427"}
!2282 = !{!"1428"}
!2283 = !DILocation(line: 224, column: 16, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2274, file: !41, line: 224, column: 16)
!2285 = !{!"1429"}
!2286 = !{!"1430"}
!2287 = !{!"1431"}
!2288 = !DILocalVariable(name: "tempReg", scope: !2284, file: !41, line: 224, type: !6)
!2289 = !DILocation(line: 0, scope: !2284)
!2290 = !{!"1432"}
!2291 = !{!"1433"}
!2292 = !DILocalVariable(name: "v", scope: !2196, file: !41, line: 215, type: !6)
!2293 = !{!"1434"}
!2294 = !{!"1435"}
!2295 = !{!"1436"}
!2296 = !{!"1437"}
!2297 = !{!"1438"}
!2298 = !DILocation(line: 225, column: 20, scope: !2274)
!2299 = !{!"1439"}
!2300 = !{!"1440"}
!2301 = !DILocation(line: 225, column: 26, scope: !2274)
!2302 = !{!"1441"}
!2303 = !{!"1442"}
!2304 = !DILocation(line: 226, column: 16, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2274, file: !41, line: 226, column: 16)
!2306 = !{!"1443"}
!2307 = !{!"1444"}
!2308 = !{!"1445"}
!2309 = !{!"1446"}
!2310 = !{!"1447"}
!2311 = !DILocalVariable(name: "tempReg", scope: !2305, file: !41, line: 226, type: !6)
!2312 = !DILocation(line: 0, scope: !2305)
!2313 = !{!"1448"}
!2314 = !{!"1449"}
!2315 = !{!"1450"}
!2316 = !{!"1451"}
!2317 = !{!"1452"}
!2318 = !{!"1453"}
!2319 = !{!"1454"}
!2320 = !DILocation(line: 227, column: 22, scope: !2274)
!2321 = !{!"1455"}
!2322 = !{!"1456"}
!2323 = !DILocation(line: 228, column: 19, scope: !2274)
!2324 = !{!"1457"}
!2325 = !DILocation(line: 228, column: 16, scope: !2274)
!2326 = !{!"1458"}
!2327 = !{!"1459"}
!2328 = !DILocation(line: 228, column: 23, scope: !2274)
!2329 = !{!"1460"}
!2330 = !DILocation(line: 229, column: 11, scope: !2274)
!2331 = !{!"1461"}
!2332 = !DILocation(line: 222, column: 36, scope: !2269)
!2333 = !{!"1462"}
!2334 = !{!"1463"}
!2335 = !DILocation(line: 222, column: 11, scope: !2269)
!2336 = distinct !{!2336, !2271, !2337, !517}
!2337 = !DILocation(line: 229, column: 11, scope: !2259)
!2338 = !{!"1464"}
!2339 = !DILocation(line: 230, column: 19, scope: !2260)
!2340 = !{!"1465"}
!2341 = !DILocation(line: 230, column: 11, scope: !2260)
!2342 = !{!"1466"}
!2343 = !{!"1467"}
!2344 = !DILocation(line: 230, column: 23, scope: !2260)
!2345 = !{!"1468"}
!2346 = !DILocation(line: 231, column: 6, scope: !2260)
!2347 = !{!"1469"}
!2348 = !DILocation(line: 220, column: 31, scope: !2250)
!2349 = !{!"1470"}
!2350 = !{!"1471"}
!2351 = !DILocation(line: 220, column: 6, scope: !2250)
!2352 = distinct !{!2352, !2252, !2353, !517}
!2353 = !DILocation(line: 231, column: 6, scope: !2244)
!2354 = !{!"1472"}
!2355 = !DILocation(line: 232, column: 1, scope: !2196)
!2356 = !{!"1473"}
!2357 = distinct !DISubprogram(name: "mp_add", scope: !41, file: !41, line: 235, type: !2358, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!12, !14, !14, !14, !12}
!2360 = !DILocalVariable(name: "a", arg: 1, scope: !2357, file: !41, line: 235, type: !14)
!2361 = !DILocation(line: 0, scope: !2357)
!2362 = !{!"1474"}
!2363 = !DILocalVariable(name: "b", arg: 2, scope: !2357, file: !41, line: 235, type: !14)
!2364 = !{!"1475"}
!2365 = !DILocalVariable(name: "c", arg: 3, scope: !2357, file: !41, line: 235, type: !14)
!2366 = !{!"1476"}
!2367 = !DILocalVariable(name: "nwords", arg: 4, scope: !2357, file: !41, line: 235, type: !12)
!2368 = !{!"1477"}
!2369 = !DILocalVariable(name: "carry", scope: !2357, file: !41, line: 237, type: !12)
!2370 = !{!"1478"}
!2371 = !DILocalVariable(name: "i", scope: !2357, file: !41, line: 237, type: !12)
!2372 = !{!"1479"}
!2373 = !DILocation(line: 239, column: 10, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2357, file: !41, line: 239, column: 5)
!2375 = !{!"1480"}
!2376 = !DILocation(line: 0, scope: !2374)
!2377 = !{!"1481"}
!2378 = !{!"1482"}
!2379 = !{!"1483"}
!2380 = !{!"1484"}
!2381 = !DILocation(line: 239, column: 19, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2374, file: !41, line: 239, column: 5)
!2383 = !{!"1485"}
!2384 = !DILocation(line: 239, column: 5, scope: !2374)
!2385 = !{!"1486"}
!2386 = !DILocation(line: 240, column: 9, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !41, line: 240, column: 9)
!2388 = distinct !DILexicalBlock(scope: !2382, file: !41, line: 239, column: 34)
!2389 = !{!"1487"}
!2390 = !{!"1488"}
!2391 = !{!"1489"}
!2392 = !{!"1490"}
!2393 = !DILocalVariable(name: "tempReg", scope: !2387, file: !41, line: 240, type: !6)
!2394 = !DILocation(line: 0, scope: !2387)
!2395 = !{!"1491"}
!2396 = !{!"1492"}
!2397 = !{!"1493"}
!2398 = !{!"1494"}
!2399 = !{!"1495"}
!2400 = !{!"1496"}
!2401 = !{!"1497"}
!2402 = !{!"1498"}
!2403 = !{!"1499"}
!2404 = !{!"1500"}
!2405 = !{!"1501"}
!2406 = !{!"1502"}
!2407 = !{!"1503"}
!2408 = !{!"1504"}
!2409 = !{!"1505"}
!2410 = !DILocation(line: 241, column: 5, scope: !2388)
!2411 = !{!"1506"}
!2412 = !DILocation(line: 239, column: 30, scope: !2382)
!2413 = !{!"1507"}
!2414 = !{!"1508"}
!2415 = !DILocation(line: 239, column: 5, scope: !2382)
!2416 = distinct !{!2416, !2384, !2417, !517}
!2417 = !DILocation(line: 241, column: 5, scope: !2374)
!2418 = !{!"1509"}
!2419 = !DILocation(line: 243, column: 5, scope: !2357)
!2420 = !{!"1510"}
!2421 = distinct !DISubprogram(name: "fpinv1271", scope: !41, file: !41, line: 247, type: !2042, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2422 = !{!"1511"}
!2423 = !{!"1512"}
!2424 = !{!"1513"}
!2425 = !{!"1514"}
!2426 = !{!"1515"}
!2427 = !DILocalVariable(name: "a", arg: 1, scope: !2421, file: !41, line: 247, type: !14)
!2428 = !DILocation(line: 0, scope: !2421)
!2429 = !{!"1516"}
!2430 = !DILocalVariable(name: "t1", scope: !2421, file: !41, line: 251, type: !16)
!2431 = !DILocation(line: 251, column: 12, scope: !2421)
!2432 = !{!"1517"}
!2433 = !DILocalVariable(name: "t2", scope: !2421, file: !41, line: 251, type: !16)
!2434 = !DILocation(line: 251, column: 16, scope: !2421)
!2435 = !{!"1518"}
!2436 = !DILocalVariable(name: "t3", scope: !2421, file: !41, line: 251, type: !16)
!2437 = !DILocation(line: 251, column: 20, scope: !2421)
!2438 = !{!"1519"}
!2439 = !DILocalVariable(name: "t4", scope: !2421, file: !41, line: 251, type: !16)
!2440 = !DILocation(line: 251, column: 24, scope: !2421)
!2441 = !{!"1520"}
!2442 = !DILocalVariable(name: "t5", scope: !2421, file: !41, line: 251, type: !16)
!2443 = !DILocation(line: 251, column: 28, scope: !2421)
!2444 = !{!"1521"}
!2445 = !DILocation(line: 253, column: 18, scope: !2421)
!2446 = !{!"1522"}
!2447 = !DILocation(line: 253, column: 5, scope: !2421)
!2448 = !{!"1523"}
!2449 = !DILocation(line: 254, column: 18, scope: !2421)
!2450 = !{!"1524"}
!2451 = !DILocation(line: 254, column: 22, scope: !2421)
!2452 = !{!"1525"}
!2453 = !DILocation(line: 254, column: 5, scope: !2421)
!2454 = !{!"1526"}
!2455 = !DILocation(line: 255, column: 15, scope: !2421)
!2456 = !{!"1527"}
!2457 = !DILocation(line: 255, column: 19, scope: !2421)
!2458 = !{!"1528"}
!2459 = !DILocation(line: 255, column: 5, scope: !2421)
!2460 = !{!"1529"}
!2461 = !DILocation(line: 256, column: 15, scope: !2421)
!2462 = !{!"1530"}
!2463 = !DILocation(line: 256, column: 19, scope: !2421)
!2464 = !{!"1531"}
!2465 = !DILocation(line: 256, column: 5, scope: !2421)
!2466 = !{!"1532"}
!2467 = !DILocation(line: 257, column: 15, scope: !2421)
!2468 = !{!"1533"}
!2469 = !DILocation(line: 257, column: 19, scope: !2421)
!2470 = !{!"1534"}
!2471 = !DILocation(line: 257, column: 23, scope: !2421)
!2472 = !{!"1535"}
!2473 = !DILocation(line: 257, column: 5, scope: !2421)
!2474 = !{!"1536"}
!2475 = !DILocation(line: 258, column: 15, scope: !2421)
!2476 = !{!"1537"}
!2477 = !DILocation(line: 258, column: 19, scope: !2421)
!2478 = !{!"1538"}
!2479 = !DILocation(line: 258, column: 5, scope: !2421)
!2480 = !{!"1539"}
!2481 = !DILocation(line: 259, column: 15, scope: !2421)
!2482 = !{!"1540"}
!2483 = !DILocation(line: 259, column: 19, scope: !2421)
!2484 = !{!"1541"}
!2485 = !DILocation(line: 259, column: 5, scope: !2421)
!2486 = !{!"1542"}
!2487 = !DILocation(line: 260, column: 15, scope: !2421)
!2488 = !{!"1543"}
!2489 = !DILocation(line: 260, column: 19, scope: !2421)
!2490 = !{!"1544"}
!2491 = !DILocation(line: 260, column: 5, scope: !2421)
!2492 = !{!"1545"}
!2493 = !DILocation(line: 261, column: 15, scope: !2421)
!2494 = !{!"1546"}
!2495 = !DILocation(line: 261, column: 19, scope: !2421)
!2496 = !{!"1547"}
!2497 = !DILocation(line: 261, column: 5, scope: !2421)
!2498 = !{!"1548"}
!2499 = !DILocation(line: 262, column: 15, scope: !2421)
!2500 = !{!"1549"}
!2501 = !DILocation(line: 262, column: 19, scope: !2421)
!2502 = !{!"1550"}
!2503 = !DILocation(line: 262, column: 23, scope: !2421)
!2504 = !{!"1551"}
!2505 = !DILocation(line: 262, column: 5, scope: !2421)
!2506 = !{!"1552"}
!2507 = !DILocation(line: 263, column: 15, scope: !2421)
!2508 = !{!"1553"}
!2509 = !DILocation(line: 263, column: 19, scope: !2421)
!2510 = !{!"1554"}
!2511 = !DILocation(line: 263, column: 5, scope: !2421)
!2512 = !{!"1555"}
!2513 = !DILocalVariable(name: "i", scope: !2421, file: !41, line: 250, type: !13)
!2514 = !{!"1556"}
!2515 = !DILocation(line: 264, column: 10, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2421, file: !41, line: 264, column: 5)
!2517 = !{!"1557"}
!2518 = !DILocation(line: 0, scope: !2516)
!2519 = !{!"1558"}
!2520 = !{!"1559"}
!2521 = !DILocation(line: 264, column: 16, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2516, file: !41, line: 264, column: 5)
!2523 = !{!"1560"}
!2524 = !DILocation(line: 264, column: 5, scope: !2516)
!2525 = !{!"1561"}
!2526 = !DILocation(line: 264, column: 35, scope: !2522)
!2527 = !{!"1562"}
!2528 = !DILocation(line: 264, column: 39, scope: !2522)
!2529 = !{!"1563"}
!2530 = !DILocation(line: 264, column: 25, scope: !2522)
!2531 = !{!"1564"}
!2532 = !{!"1565"}
!2533 = !DILocation(line: 264, column: 21, scope: !2522)
!2534 = !{!"1566"}
!2535 = !{!"1567"}
!2536 = !DILocation(line: 264, column: 5, scope: !2522)
!2537 = distinct !{!2537, !2524, !2538, !517}
!2538 = !DILocation(line: 264, column: 41, scope: !2516)
!2539 = !{!"1568"}
!2540 = !DILocation(line: 265, column: 15, scope: !2421)
!2541 = !{!"1569"}
!2542 = !DILocation(line: 265, column: 19, scope: !2421)
!2543 = !{!"1570"}
!2544 = !DILocation(line: 265, column: 23, scope: !2421)
!2545 = !{!"1571"}
!2546 = !DILocation(line: 265, column: 5, scope: !2421)
!2547 = !{!"1572"}
!2548 = !DILocation(line: 266, column: 15, scope: !2421)
!2549 = !{!"1573"}
!2550 = !DILocation(line: 266, column: 19, scope: !2421)
!2551 = !{!"1574"}
!2552 = !DILocation(line: 266, column: 5, scope: !2421)
!2553 = !{!"1575"}
!2554 = !{!"1576"}
!2555 = !DILocation(line: 267, column: 10, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2421, file: !41, line: 267, column: 5)
!2557 = !{!"1577"}
!2558 = !DILocation(line: 0, scope: !2556)
!2559 = !{!"1578"}
!2560 = !{!"1579"}
!2561 = !DILocation(line: 267, column: 16, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2556, file: !41, line: 267, column: 5)
!2563 = !{!"1580"}
!2564 = !DILocation(line: 267, column: 5, scope: !2556)
!2565 = !{!"1581"}
!2566 = !DILocation(line: 267, column: 36, scope: !2562)
!2567 = !{!"1582"}
!2568 = !DILocation(line: 267, column: 40, scope: !2562)
!2569 = !{!"1583"}
!2570 = !DILocation(line: 267, column: 26, scope: !2562)
!2571 = !{!"1584"}
!2572 = !{!"1585"}
!2573 = !DILocation(line: 267, column: 22, scope: !2562)
!2574 = !{!"1586"}
!2575 = !{!"1587"}
!2576 = !DILocation(line: 267, column: 5, scope: !2562)
!2577 = distinct !{!2577, !2564, !2578, !517}
!2578 = !DILocation(line: 267, column: 42, scope: !2556)
!2579 = !{!"1588"}
!2580 = !DILocation(line: 268, column: 15, scope: !2421)
!2581 = !{!"1589"}
!2582 = !DILocation(line: 268, column: 19, scope: !2421)
!2583 = !{!"1590"}
!2584 = !DILocation(line: 268, column: 23, scope: !2421)
!2585 = !{!"1591"}
!2586 = !DILocation(line: 268, column: 5, scope: !2421)
!2587 = !{!"1592"}
!2588 = !DILocation(line: 269, column: 15, scope: !2421)
!2589 = !{!"1593"}
!2590 = !DILocation(line: 269, column: 19, scope: !2421)
!2591 = !{!"1594"}
!2592 = !DILocation(line: 269, column: 5, scope: !2421)
!2593 = !{!"1595"}
!2594 = !{!"1596"}
!2595 = !DILocation(line: 270, column: 10, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2421, file: !41, line: 270, column: 5)
!2597 = !{!"1597"}
!2598 = !DILocation(line: 0, scope: !2596)
!2599 = !{!"1598"}
!2600 = !{!"1599"}
!2601 = !DILocation(line: 270, column: 16, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2596, file: !41, line: 270, column: 5)
!2603 = !{!"1600"}
!2604 = !DILocation(line: 270, column: 5, scope: !2596)
!2605 = !{!"1601"}
!2606 = !DILocation(line: 270, column: 36, scope: !2602)
!2607 = !{!"1602"}
!2608 = !DILocation(line: 270, column: 40, scope: !2602)
!2609 = !{!"1603"}
!2610 = !DILocation(line: 270, column: 26, scope: !2602)
!2611 = !{!"1604"}
!2612 = !{!"1605"}
!2613 = !DILocation(line: 270, column: 22, scope: !2602)
!2614 = !{!"1606"}
!2615 = !{!"1607"}
!2616 = !DILocation(line: 270, column: 5, scope: !2602)
!2617 = distinct !{!2617, !2604, !2618, !517}
!2618 = !DILocation(line: 270, column: 42, scope: !2596)
!2619 = !{!"1608"}
!2620 = !DILocation(line: 271, column: 15, scope: !2421)
!2621 = !{!"1609"}
!2622 = !DILocation(line: 271, column: 19, scope: !2421)
!2623 = !{!"1610"}
!2624 = !DILocation(line: 271, column: 23, scope: !2421)
!2625 = !{!"1611"}
!2626 = !DILocation(line: 271, column: 5, scope: !2421)
!2627 = !{!"1612"}
!2628 = !{!"1613"}
!2629 = !DILocation(line: 272, column: 10, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2421, file: !41, line: 272, column: 5)
!2631 = !{!"1614"}
!2632 = !DILocation(line: 0, scope: !2630)
!2633 = !{!"1615"}
!2634 = !{!"1616"}
!2635 = !DILocation(line: 272, column: 16, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2630, file: !41, line: 272, column: 5)
!2637 = !{!"1617"}
!2638 = !DILocation(line: 272, column: 5, scope: !2630)
!2639 = !{!"1618"}
!2640 = !DILocation(line: 272, column: 36, scope: !2636)
!2641 = !{!"1619"}
!2642 = !DILocation(line: 272, column: 40, scope: !2636)
!2643 = !{!"1620"}
!2644 = !DILocation(line: 272, column: 26, scope: !2636)
!2645 = !{!"1621"}
!2646 = !{!"1622"}
!2647 = !DILocation(line: 272, column: 22, scope: !2636)
!2648 = !{!"1623"}
!2649 = !{!"1624"}
!2650 = !DILocation(line: 272, column: 5, scope: !2636)
!2651 = distinct !{!2651, !2638, !2652, !517}
!2652 = !DILocation(line: 272, column: 42, scope: !2630)
!2653 = !{!"1625"}
!2654 = !DILocation(line: 273, column: 15, scope: !2421)
!2655 = !{!"1626"}
!2656 = !DILocation(line: 273, column: 19, scope: !2421)
!2657 = !{!"1627"}
!2658 = !DILocation(line: 273, column: 23, scope: !2421)
!2659 = !{!"1628"}
!2660 = !DILocation(line: 273, column: 5, scope: !2421)
!2661 = !{!"1629"}
!2662 = !{!"1630"}
!2663 = !DILocation(line: 274, column: 10, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2421, file: !41, line: 274, column: 5)
!2665 = !{!"1631"}
!2666 = !DILocation(line: 0, scope: !2664)
!2667 = !{!"1632"}
!2668 = !{!"1633"}
!2669 = !DILocation(line: 274, column: 16, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2664, file: !41, line: 274, column: 5)
!2671 = !{!"1634"}
!2672 = !DILocation(line: 274, column: 5, scope: !2664)
!2673 = !{!"1635"}
!2674 = !DILocation(line: 274, column: 36, scope: !2670)
!2675 = !{!"1636"}
!2676 = !DILocation(line: 274, column: 40, scope: !2670)
!2677 = !{!"1637"}
!2678 = !DILocation(line: 274, column: 26, scope: !2670)
!2679 = !{!"1638"}
!2680 = !{!"1639"}
!2681 = !DILocation(line: 274, column: 22, scope: !2670)
!2682 = !{!"1640"}
!2683 = !{!"1641"}
!2684 = !DILocation(line: 274, column: 5, scope: !2670)
!2685 = distinct !{!2685, !2672, !2686, !517}
!2686 = !DILocation(line: 274, column: 42, scope: !2664)
!2687 = !{!"1642"}
!2688 = !DILocation(line: 275, column: 15, scope: !2421)
!2689 = !{!"1643"}
!2690 = !DILocation(line: 275, column: 19, scope: !2421)
!2691 = !{!"1644"}
!2692 = !DILocation(line: 275, column: 23, scope: !2421)
!2693 = !{!"1645"}
!2694 = !DILocation(line: 275, column: 5, scope: !2421)
!2695 = !{!"1646"}
!2696 = !{!"1647"}
!2697 = !DILocation(line: 276, column: 10, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2421, file: !41, line: 276, column: 5)
!2699 = !{!"1648"}
!2700 = !DILocation(line: 0, scope: !2698)
!2701 = !{!"1649"}
!2702 = !{!"1650"}
!2703 = !DILocation(line: 276, column: 16, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2698, file: !41, line: 276, column: 5)
!2705 = !{!"1651"}
!2706 = !DILocation(line: 276, column: 5, scope: !2698)
!2707 = !{!"1652"}
!2708 = !DILocation(line: 276, column: 35, scope: !2704)
!2709 = !{!"1653"}
!2710 = !DILocation(line: 276, column: 39, scope: !2704)
!2711 = !{!"1654"}
!2712 = !DILocation(line: 276, column: 25, scope: !2704)
!2713 = !{!"1655"}
!2714 = !{!"1656"}
!2715 = !DILocation(line: 276, column: 21, scope: !2704)
!2716 = !{!"1657"}
!2717 = !{!"1658"}
!2718 = !DILocation(line: 276, column: 5, scope: !2704)
!2719 = distinct !{!2719, !2706, !2720, !517}
!2720 = !DILocation(line: 276, column: 41, scope: !2698)
!2721 = !{!"1659"}
!2722 = !DILocation(line: 277, column: 15, scope: !2421)
!2723 = !{!"1660"}
!2724 = !DILocation(line: 277, column: 19, scope: !2421)
!2725 = !{!"1661"}
!2726 = !DILocation(line: 277, column: 23, scope: !2421)
!2727 = !{!"1662"}
!2728 = !DILocation(line: 277, column: 5, scope: !2421)
!2729 = !{!"1663"}
!2730 = !{!"1664"}
!2731 = !DILocation(line: 278, column: 10, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2421, file: !41, line: 278, column: 5)
!2733 = !{!"1665"}
!2734 = !DILocation(line: 0, scope: !2732)
!2735 = !{!"1666"}
!2736 = !{!"1667"}
!2737 = !DILocation(line: 278, column: 16, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2732, file: !41, line: 278, column: 5)
!2739 = !{!"1668"}
!2740 = !DILocation(line: 278, column: 5, scope: !2732)
!2741 = !{!"1669"}
!2742 = !DILocation(line: 278, column: 35, scope: !2738)
!2743 = !{!"1670"}
!2744 = !DILocation(line: 278, column: 39, scope: !2738)
!2745 = !{!"1671"}
!2746 = !DILocation(line: 278, column: 25, scope: !2738)
!2747 = !{!"1672"}
!2748 = !{!"1673"}
!2749 = !DILocation(line: 278, column: 21, scope: !2738)
!2750 = !{!"1674"}
!2751 = !{!"1675"}
!2752 = !DILocation(line: 278, column: 5, scope: !2738)
!2753 = distinct !{!2753, !2740, !2754, !517}
!2754 = !DILocation(line: 278, column: 41, scope: !2732)
!2755 = !{!"1676"}
!2756 = !DILocation(line: 279, column: 15, scope: !2421)
!2757 = !{!"1677"}
!2758 = !DILocation(line: 279, column: 19, scope: !2421)
!2759 = !{!"1678"}
!2760 = !DILocation(line: 279, column: 23, scope: !2421)
!2761 = !{!"1679"}
!2762 = !DILocation(line: 279, column: 5, scope: !2421)
!2763 = !{!"1680"}
!2764 = !DILocation(line: 280, column: 15, scope: !2421)
!2765 = !{!"1681"}
!2766 = !DILocation(line: 280, column: 19, scope: !2421)
!2767 = !{!"1682"}
!2768 = !DILocation(line: 280, column: 5, scope: !2421)
!2769 = !{!"1683"}
!2770 = !DILocation(line: 281, column: 18, scope: !2421)
!2771 = !{!"1684"}
!2772 = !DILocation(line: 281, column: 22, scope: !2421)
!2773 = !{!"1685"}
!2774 = !DILocation(line: 281, column: 5, scope: !2421)
!2775 = !{!"1686"}
!2776 = !DILocation(line: 282, column: 15, scope: !2421)
!2777 = !{!"1687"}
!2778 = !DILocation(line: 282, column: 19, scope: !2421)
!2779 = !{!"1688"}
!2780 = !DILocation(line: 282, column: 5, scope: !2421)
!2781 = !{!"1689"}
!2782 = !DILocation(line: 283, column: 15, scope: !2421)
!2783 = !{!"1690"}
!2784 = !DILocation(line: 283, column: 19, scope: !2421)
!2785 = !{!"1691"}
!2786 = !DILocation(line: 283, column: 5, scope: !2421)
!2787 = !{!"1692"}
!2788 = !DILocation(line: 284, column: 18, scope: !2421)
!2789 = !{!"1693"}
!2790 = !DILocation(line: 284, column: 5, scope: !2421)
!2791 = !{!"1694"}
!2792 = !DILocation(line: 285, column: 1, scope: !2421)
!2793 = !{!"1695"}
!2794 = distinct !DISubprogram(name: "subtract", scope: !41, file: !41, line: 304, type: !2358, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2795 = !DILocalVariable(name: "a", arg: 1, scope: !2794, file: !41, line: 304, type: !14)
!2796 = !DILocation(line: 0, scope: !2794)
!2797 = !{!"1696"}
!2798 = !DILocalVariable(name: "b", arg: 2, scope: !2794, file: !41, line: 304, type: !14)
!2799 = !{!"1697"}
!2800 = !DILocalVariable(name: "c", arg: 3, scope: !2794, file: !41, line: 304, type: !14)
!2801 = !{!"1698"}
!2802 = !DILocalVariable(name: "nwords", arg: 4, scope: !2794, file: !41, line: 304, type: !12)
!2803 = !{!"1699"}
!2804 = !DILocalVariable(name: "borrow", scope: !2794, file: !41, line: 307, type: !12)
!2805 = !{!"1700"}
!2806 = !DILocalVariable(name: "i", scope: !2794, file: !41, line: 306, type: !12)
!2807 = !{!"1701"}
!2808 = !DILocation(line: 309, column: 10, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2794, file: !41, line: 309, column: 5)
!2810 = !{!"1702"}
!2811 = !DILocation(line: 0, scope: !2809)
!2812 = !{!"1703"}
!2813 = !{!"1704"}
!2814 = !{!"1705"}
!2815 = !{!"1706"}
!2816 = !DILocation(line: 309, column: 19, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2809, file: !41, line: 309, column: 5)
!2818 = !{!"1707"}
!2819 = !DILocation(line: 309, column: 5, scope: !2809)
!2820 = !{!"1708"}
!2821 = !DILocation(line: 310, column: 9, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !41, line: 310, column: 9)
!2823 = distinct !DILexicalBlock(scope: !2817, file: !41, line: 309, column: 34)
!2824 = !{!"1709"}
!2825 = !{!"1710"}
!2826 = !{!"1711"}
!2827 = !{!"1712"}
!2828 = !{!"1713"}
!2829 = !{!"1714"}
!2830 = !{!"1715"}
!2831 = !DILocalVariable(name: "tempReg", scope: !2822, file: !41, line: 310, type: !6)
!2832 = !DILocation(line: 0, scope: !2822)
!2833 = !{!"1716"}
!2834 = !{!"1717"}
!2835 = !{!"1718"}
!2836 = !{!"1719"}
!2837 = !{!"1720"}
!2838 = !{!"1721"}
!2839 = !{!"1722"}
!2840 = !{!"1723"}
!2841 = !{!"1724"}
!2842 = !{!"1725"}
!2843 = !{!"1726"}
!2844 = !DILocalVariable(name: "borrowReg", scope: !2822, file: !41, line: 310, type: !12)
!2845 = !{!"1727"}
!2846 = !{!"1728"}
!2847 = !{!"1729"}
!2848 = !{!"1730"}
!2849 = !{!"1731"}
!2850 = !{!"1732"}
!2851 = !DILocation(line: 311, column: 5, scope: !2823)
!2852 = !{!"1733"}
!2853 = !DILocation(line: 309, column: 30, scope: !2817)
!2854 = !{!"1734"}
!2855 = !{!"1735"}
!2856 = !DILocation(line: 309, column: 5, scope: !2817)
!2857 = distinct !{!2857, !2819, !2858, !517}
!2858 = !DILocation(line: 311, column: 5, scope: !2809)
!2859 = !{!"1736"}
!2860 = !DILocation(line: 313, column: 5, scope: !2794)
!2861 = !{!"1737"}
!2862 = distinct !DISubprogram(name: "Montgomery_multiply", scope: !41, file: !41, line: 320, type: !2863, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{null, !14, !14, !14, !14}
!2865 = !{!"1738"}
!2866 = !{!"1739"}
!2867 = !{!"1740"}
!2868 = !DILocalVariable(name: "ma", arg: 1, scope: !2862, file: !41, line: 320, type: !14)
!2869 = !DILocation(line: 0, scope: !2862)
!2870 = !{!"1741"}
!2871 = !DILocalVariable(name: "mb", arg: 2, scope: !2862, file: !41, line: 320, type: !14)
!2872 = !{!"1742"}
!2873 = !DILocalVariable(name: "mc", arg: 3, scope: !2862, file: !41, line: 320, type: !14)
!2874 = !{!"1743"}
!2875 = !DILocalVariable(name: "modulus", arg: 4, scope: !2862, file: !41, line: 320, type: !14)
!2876 = !{!"1744"}
!2877 = !DILocalVariable(name: "P", scope: !2862, file: !41, line: 325, type: !2878)
!2878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !2879)
!2879 = !{!2880}
!2880 = !DISubrange(count: 16)
!2881 = !DILocation(line: 325, column: 19, scope: !2862)
!2882 = !{!"1745"}
!2883 = !DILocalVariable(name: "Q", scope: !2862, file: !41, line: 325, type: !2878)
!2884 = !DILocation(line: 325, column: 38, scope: !2862)
!2885 = !{!"1746"}
!2886 = !DILocalVariable(name: "temp", scope: !2862, file: !41, line: 325, type: !2878)
!2887 = !DILocation(line: 325, column: 57, scope: !2862)
!2888 = !{!"1747"}
!2889 = !DILocalVariable(name: "cout", scope: !2862, file: !41, line: 326, type: !12)
!2890 = !{!"1748"}
!2891 = !DILocalVariable(name: "bout", scope: !2862, file: !41, line: 326, type: !12)
!2892 = !{!"1749"}
!2893 = !DILocation(line: 328, column: 22, scope: !2862)
!2894 = !{!"1750"}
!2895 = !DILocation(line: 328, column: 5, scope: !2862)
!2896 = !{!"1751"}
!2897 = !DILocation(line: 329, column: 14, scope: !2862)
!2898 = !{!"1752"}
!2899 = !DILocation(line: 329, column: 47, scope: !2862)
!2900 = !{!"1753"}
!2901 = !DILocation(line: 329, column: 5, scope: !2862)
!2902 = !{!"1754"}
!2903 = !DILocation(line: 330, column: 14, scope: !2862)
!2904 = !{!"1755"}
!2905 = !DILocation(line: 330, column: 26, scope: !2862)
!2906 = !{!"1756"}
!2907 = !DILocation(line: 330, column: 5, scope: !2862)
!2908 = !{!"1757"}
!2909 = !DILocation(line: 331, column: 16, scope: !2862)
!2910 = !{!"1758"}
!2911 = !DILocation(line: 331, column: 19, scope: !2862)
!2912 = !{!"1759"}
!2913 = !DILocation(line: 331, column: 25, scope: !2862)
!2914 = !{!"1760"}
!2915 = !DILocation(line: 331, column: 12, scope: !2862)
!2916 = !{!"1761"}
!2917 = !{!"1762"}
!2918 = !DILocalVariable(name: "i", scope: !2862, file: !41, line: 324, type: !12)
!2919 = !{!"1763"}
!2920 = !DILocation(line: 333, column: 10, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2862, file: !41, line: 333, column: 5)
!2922 = !{!"1764"}
!2923 = !DILocation(line: 0, scope: !2921)
!2924 = !{!"1765"}
!2925 = !{!"1766"}
!2926 = !DILocation(line: 333, column: 19, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2921, file: !41, line: 333, column: 5)
!2928 = !{!"1767"}
!2929 = !DILocation(line: 333, column: 5, scope: !2921)
!2930 = !{!"1768"}
!2931 = !DILocation(line: 334, column: 35, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2927, file: !41, line: 333, column: 40)
!2933 = !{!"1769"}
!2934 = !DILocation(line: 334, column: 17, scope: !2932)
!2935 = !{!"1770"}
!2936 = !{!"1771"}
!2937 = !{!"1772"}
!2938 = !DILocation(line: 334, column: 9, scope: !2932)
!2939 = !{!"1773"}
!2940 = !{!"1774"}
!2941 = !DILocation(line: 334, column: 15, scope: !2932)
!2942 = !{!"1775"}
!2943 = !DILocation(line: 335, column: 5, scope: !2932)
!2944 = !{!"1776"}
!2945 = !DILocation(line: 333, column: 36, scope: !2927)
!2946 = !{!"1777"}
!2947 = !{!"1778"}
!2948 = !DILocation(line: 333, column: 5, scope: !2927)
!2949 = distinct !{!2949, !2929, !2950, !517}
!2950 = !DILocation(line: 335, column: 5, scope: !2921)
!2951 = !{!"1779"}
!2952 = !DILocation(line: 338, column: 12, scope: !2862)
!2953 = !{!"1780"}
!2954 = !{!"1781"}
!2955 = !DILocation(line: 339, column: 26, scope: !2862)
!2956 = !{!"1782"}
!2957 = !DILocalVariable(name: "mask", scope: !2862, file: !41, line: 325, type: !6)
!2958 = !{!"1783"}
!2959 = !{!"1784"}
!2960 = !DILocation(line: 341, column: 10, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2862, file: !41, line: 341, column: 5)
!2962 = !{!"1785"}
!2963 = !DILocation(line: 0, scope: !2961)
!2964 = !{!"1786"}
!2965 = !{!"1787"}
!2966 = !DILocation(line: 341, column: 19, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2961, file: !41, line: 341, column: 5)
!2968 = !{!"1788"}
!2969 = !DILocation(line: 341, column: 5, scope: !2961)
!2970 = !{!"1789"}
!2971 = !DILocation(line: 342, column: 20, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2967, file: !41, line: 341, column: 40)
!2973 = !{!"1790"}
!2974 = !{!"1791"}
!2975 = !{!"1792"}
!2976 = !DILocation(line: 342, column: 31, scope: !2972)
!2977 = !{!"1793"}
!2978 = !DILocation(line: 342, column: 9, scope: !2972)
!2979 = !{!"1794"}
!2980 = !{!"1795"}
!2981 = !DILocation(line: 342, column: 17, scope: !2972)
!2982 = !{!"1796"}
!2983 = !DILocation(line: 343, column: 5, scope: !2972)
!2984 = !{!"1797"}
!2985 = !DILocation(line: 341, column: 36, scope: !2967)
!2986 = !{!"1798"}
!2987 = !{!"1799"}
!2988 = !DILocation(line: 341, column: 5, scope: !2967)
!2989 = distinct !{!2989, !2969, !2990, !517}
!2990 = !DILocation(line: 343, column: 5, scope: !2961)
!2991 = !{!"1800"}
!2992 = !DILocation(line: 344, column: 13, scope: !2862)
!2993 = !{!"1801"}
!2994 = !DILocation(line: 344, column: 5, scope: !2862)
!2995 = !{!"1802"}
!2996 = !DILocation(line: 346, column: 5, scope: !2862)
!2997 = !{!"1803"}
!2998 = distinct !DISubprogram(name: "multiply", scope: !41, file: !41, line: 290, type: !1718, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2999 = !DILocalVariable(name: "a", arg: 1, scope: !2998, file: !41, line: 290, type: !14)
!3000 = !DILocation(line: 0, scope: !2998)
!3001 = !{!"1804"}
!3002 = !DILocalVariable(name: "b", arg: 2, scope: !2998, file: !41, line: 290, type: !14)
!3003 = !{!"1805"}
!3004 = !DILocalVariable(name: "c", arg: 3, scope: !2998, file: !41, line: 290, type: !14)
!3005 = !{!"1806"}
!3006 = !DILocation(line: 293, column: 5, scope: !2998)
!3007 = !{!"1807"}
!3008 = !DILocation(line: 294, column: 1, scope: !2998)
!3009 = !{!"1808"}
!3010 = distinct !DISubprogram(name: "add", scope: !41, file: !41, line: 297, type: !2358, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3011 = !DILocalVariable(name: "a", arg: 1, scope: !3010, file: !41, line: 297, type: !14)
!3012 = !DILocation(line: 0, scope: !3010)
!3013 = !{!"1809"}
!3014 = !DILocalVariable(name: "b", arg: 2, scope: !3010, file: !41, line: 297, type: !14)
!3015 = !{!"1810"}
!3016 = !DILocalVariable(name: "c", arg: 3, scope: !3010, file: !41, line: 297, type: !14)
!3017 = !{!"1811"}
!3018 = !DILocalVariable(name: "nwords", arg: 4, scope: !3010, file: !41, line: 297, type: !12)
!3019 = !{!"1812"}
!3020 = !DILocation(line: 300, column: 12, scope: !3010)
!3021 = !{!"1813"}
!3022 = !DILocation(line: 300, column: 5, scope: !3010)
!3023 = !{!"1814"}
!3024 = distinct !DISubprogram(name: "modulo_order", scope: !41, file: !41, line: 350, type: !3025, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !14, !14, !3027}
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCurveStruct", file: !7, line: 229, baseType: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 218, size: 1536, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3035, !3036, !3037, !3038, !3039, !3040}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !3029, file: !7, line: 220, baseType: !12, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "rbits", scope: !3029, file: !7, line: 221, baseType: !12, size: 32, offset: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !3029, file: !7, line: 222, baseType: !3034, size: 128, offset: 64)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3029, file: !7, line: 223, baseType: !45, size: 256, offset: 192)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3029, file: !7, line: 224, baseType: !45, size: 256, offset: 448)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !3029, file: !7, line: 225, baseType: !45, size: 256, offset: 704)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "generator_x", scope: !3029, file: !7, line: 226, baseType: !45, size: 256, offset: 960)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "generator_y", scope: !3029, file: !7, line: 227, baseType: !45, size: 256, offset: 1216)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "cofactor", scope: !3029, file: !7, line: 228, baseType: !12, size: 32, offset: 1472)
!3041 = !{!"1815"}
!3042 = !{!"1816"}
!3043 = !DILocalVariable(name: "a", arg: 1, scope: !3024, file: !41, line: 350, type: !14)
!3044 = !DILocation(line: 0, scope: !3024)
!3045 = !{!"1817"}
!3046 = !DILocalVariable(name: "c", arg: 2, scope: !3024, file: !41, line: 350, type: !14)
!3047 = !{!"1818"}
!3048 = !DILocalVariable(name: "curve", arg: 3, scope: !3024, file: !41, line: 350, type: !3027)
!3049 = !{!"1819"}
!3050 = !DILocalVariable(name: "ma", scope: !3024, file: !41, line: 354, type: !3051)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "digit256_t", file: !7, line: 203, baseType: !1734)
!3052 = !DILocation(line: 354, column: 16, scope: !3024)
!3053 = !{!"1820"}
!3054 = !DILocalVariable(name: "one", scope: !3024, file: !41, line: 354, type: !3051)
!3055 = !DILocation(line: 354, column: 20, scope: !3024)
!3056 = !{!"1821"}
!3057 = !{!"1822"}
!3058 = !{!"1823"}
!3059 = !DILocation(line: 356, column: 5, scope: !3024)
!3060 = !{!"1824"}
!3061 = !DILocation(line: 356, column: 12, scope: !3024)
!3062 = !{!"1825"}
!3063 = !DILocation(line: 357, column: 58, scope: !3024)
!3064 = !{!"1826"}
!3065 = !DILocation(line: 357, column: 80, scope: !3024)
!3066 = !{!"1827"}
!3067 = !DILocation(line: 357, column: 62, scope: !3024)
!3068 = !{!"1828"}
!3069 = !DILocation(line: 357, column: 5, scope: !3024)
!3070 = !{!"1829"}
!3071 = !DILocation(line: 358, column: 25, scope: !3024)
!3072 = !{!"1830"}
!3073 = !DILocation(line: 358, column: 29, scope: !3024)
!3074 = !{!"1831"}
!3075 = !DILocation(line: 358, column: 55, scope: !3024)
!3076 = !{!"1832"}
!3077 = !DILocation(line: 358, column: 37, scope: !3024)
!3078 = !{!"1833"}
!3079 = !DILocation(line: 358, column: 5, scope: !3024)
!3080 = !{!"1834"}
!3081 = !DILocation(line: 359, column: 1, scope: !3024)
!3082 = !{!"1835"}
!3083 = distinct !DISubprogram(name: "conversion_to_odd", scope: !41, file: !41, line: 362, type: !3025, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3084 = !DILocalVariable(name: "k", arg: 1, scope: !3083, file: !41, line: 362, type: !14)
!3085 = !DILocation(line: 0, scope: !3083)
!3086 = !{!"1836"}
!3087 = !DILocalVariable(name: "k_odd", arg: 2, scope: !3083, file: !41, line: 362, type: !14)
!3088 = !{!"1837"}
!3089 = !DILocalVariable(name: "curve", arg: 3, scope: !3083, file: !41, line: 362, type: !3027)
!3090 = !{!"1838"}
!3091 = !DILocation(line: 365, column: 39, scope: !3083)
!3092 = !{!"1839"}
!3093 = !DILocation(line: 365, column: 32, scope: !3083)
!3094 = !{!"1840"}
!3095 = !DILocation(line: 365, column: 22, scope: !3083)
!3096 = !{!"1841"}
!3097 = !DILocalVariable(name: "order", scope: !3083, file: !41, line: 365, type: !14)
!3098 = !{!"1842"}
!3099 = !DILocalVariable(name: "carry", scope: !3083, file: !41, line: 366, type: !12)
!3100 = !{!"1843"}
!3101 = !DILocation(line: 368, column: 19, scope: !3083)
!3102 = !{!"1844"}
!3103 = !{!"1845"}
!3104 = !DILocation(line: 368, column: 24, scope: !3083)
!3105 = !{!"1846"}
!3106 = !DILocation(line: 368, column: 16, scope: !3083)
!3107 = !{!"1847"}
!3108 = !DILocation(line: 368, column: 12, scope: !3083)
!3109 = !{!"1848"}
!3110 = !DILocalVariable(name: "mask", scope: !3083, file: !41, line: 364, type: !6)
!3111 = !{!"1849"}
!3112 = !DILocalVariable(name: "i", scope: !3083, file: !41, line: 366, type: !12)
!3113 = !{!"1850"}
!3114 = !DILocation(line: 370, column: 10, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3083, file: !41, line: 370, column: 5)
!3116 = !{!"1851"}
!3117 = !DILocation(line: 0, scope: !3115)
!3118 = !{!"1852"}
!3119 = !{!"1853"}
!3120 = !{!"1854"}
!3121 = !{!"1855"}
!3122 = !DILocation(line: 370, column: 19, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3115, file: !41, line: 370, column: 5)
!3124 = !{!"1856"}
!3125 = !DILocation(line: 370, column: 5, scope: !3115)
!3126 = !{!"1857"}
!3127 = !DILocation(line: 371, column: 9, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !41, line: 371, column: 9)
!3129 = distinct !DILexicalBlock(scope: !3123, file: !41, line: 370, column: 40)
!3130 = !{!"1858"}
!3131 = !{!"1859"}
!3132 = !{!"1860"}
!3133 = !{!"1861"}
!3134 = !{!"1862"}
!3135 = !DILocalVariable(name: "tempReg", scope: !3128, file: !41, line: 371, type: !6)
!3136 = !DILocation(line: 0, scope: !3128)
!3137 = !{!"1863"}
!3138 = !{!"1864"}
!3139 = !{!"1865"}
!3140 = !{!"1866"}
!3141 = !{!"1867"}
!3142 = !{!"1868"}
!3143 = !{!"1869"}
!3144 = !{!"1870"}
!3145 = !{!"1871"}
!3146 = !{!"1872"}
!3147 = !{!"1873"}
!3148 = !{!"1874"}
!3149 = !{!"1875"}
!3150 = !{!"1876"}
!3151 = !{!"1877"}
!3152 = !DILocation(line: 372, column: 5, scope: !3129)
!3153 = !{!"1878"}
!3154 = !DILocation(line: 370, column: 36, scope: !3123)
!3155 = !{!"1879"}
!3156 = !{!"1880"}
!3157 = !DILocation(line: 370, column: 5, scope: !3123)
!3158 = distinct !{!3158, !3125, !3159, !517}
!3159 = !DILocation(line: 372, column: 5, scope: !3115)
!3160 = !{!"1881"}
!3161 = !DILocation(line: 373, column: 1, scope: !3083)
!3162 = !{!"1882"}
!3163 = distinct !DISubprogram(name: "fpcopy1271", scope: !41, file: !41, line: 87, type: !2030, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3164 = !DILocalVariable(name: "a", arg: 1, scope: !3163, file: !41, line: 87, type: !14)
!3165 = !DILocation(line: 0, scope: !3163)
!3166 = !{!"1883"}
!3167 = !DILocalVariable(name: "c", arg: 2, scope: !3163, file: !41, line: 87, type: !14)
!3168 = !{!"1884"}
!3169 = !DILocalVariable(name: "i", scope: !3163, file: !41, line: 89, type: !12)
!3170 = !{!"1885"}
!3171 = !DILocation(line: 91, column: 10, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3163, file: !41, line: 91, column: 5)
!3173 = !{!"1886"}
!3174 = !DILocation(line: 0, scope: !3172)
!3175 = !{!"1887"}
!3176 = !{!"1888"}
!3177 = !DILocation(line: 91, column: 19, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3172, file: !41, line: 91, column: 5)
!3179 = !{!"1889"}
!3180 = !DILocation(line: 91, column: 5, scope: !3172)
!3181 = !{!"1890"}
!3182 = !DILocation(line: 92, column: 16, scope: !3178)
!3183 = !{!"1891"}
!3184 = !{!"1892"}
!3185 = !{!"1893"}
!3186 = !DILocation(line: 92, column: 9, scope: !3178)
!3187 = !{!"1894"}
!3188 = !{!"1895"}
!3189 = !DILocation(line: 92, column: 14, scope: !3178)
!3190 = !{!"1896"}
!3191 = !{!"1897"}
!3192 = !DILocation(line: 91, column: 36, scope: !3178)
!3193 = !{!"1898"}
!3194 = !{!"1899"}
!3195 = !DILocation(line: 91, column: 5, scope: !3178)
!3196 = distinct !{!3196, !3180, !3197, !517}
!3197 = !DILocation(line: 92, column: 19, scope: !3172)
!3198 = !{!"1900"}
!3199 = !DILocation(line: 93, column: 1, scope: !3163)
!3200 = !{!"1901"}
!3201 = distinct !DISubprogram(name: "fp2zero1271", scope: !864, file: !864, line: 57, type: !3202, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !15}
!3204 = !DILocalVariable(name: "a", arg: 1, scope: !3201, file: !864, line: 57, type: !15)
!3205 = !DILocation(line: 0, scope: !3201)
!3206 = !{!"1902"}
!3207 = !DILocation(line: 59, column: 16, scope: !3201)
!3208 = !{!"1903"}
!3209 = !{!"1904"}
!3210 = !DILocation(line: 59, column: 5, scope: !3201)
!3211 = !{!"1905"}
!3212 = !DILocation(line: 60, column: 16, scope: !3201)
!3213 = !{!"1906"}
!3214 = !{!"1907"}
!3215 = !DILocation(line: 60, column: 5, scope: !3201)
!3216 = !{!"1908"}
!3217 = !DILocation(line: 61, column: 1, scope: !3201)
!3218 = !{!"1909"}
!3219 = distinct !DISubprogram(name: "fpzero1271", scope: !41, file: !41, line: 96, type: !2042, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3220 = !DILocalVariable(name: "a", arg: 1, scope: !3219, file: !41, line: 96, type: !14)
!3221 = !DILocation(line: 0, scope: !3219)
!3222 = !{!"1910"}
!3223 = !DILocalVariable(name: "i", scope: !3219, file: !41, line: 98, type: !12)
!3224 = !{!"1911"}
!3225 = !DILocation(line: 100, column: 10, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3219, file: !41, line: 100, column: 5)
!3227 = !{!"1912"}
!3228 = !DILocation(line: 0, scope: !3226)
!3229 = !{!"1913"}
!3230 = !{!"1914"}
!3231 = !DILocation(line: 100, column: 19, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3226, file: !41, line: 100, column: 5)
!3233 = !{!"1915"}
!3234 = !DILocation(line: 100, column: 5, scope: !3226)
!3235 = !{!"1916"}
!3236 = !DILocation(line: 101, column: 9, scope: !3232)
!3237 = !{!"1917"}
!3238 = !{!"1918"}
!3239 = !DILocation(line: 101, column: 14, scope: !3232)
!3240 = !{!"1919"}
!3241 = !{!"1920"}
!3242 = !DILocation(line: 100, column: 36, scope: !3232)
!3243 = !{!"1921"}
!3244 = !{!"1922"}
!3245 = !DILocation(line: 100, column: 5, scope: !3232)
!3246 = distinct !{!3246, !3234, !3247, !517}
!3247 = !DILocation(line: 101, column: 16, scope: !3226)
!3248 = !{!"1923"}
!3249 = !DILocation(line: 102, column: 1, scope: !3219)
!3250 = !{!"1924"}
!3251 = distinct !DISubprogram(name: "fp2neg1271", scope: !864, file: !864, line: 64, type: !3202, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3252 = !DILocalVariable(name: "a", arg: 1, scope: !3251, file: !864, line: 64, type: !15)
!3253 = !DILocation(line: 0, scope: !3251)
!3254 = !{!"1925"}
!3255 = !DILocation(line: 66, column: 15, scope: !3251)
!3256 = !{!"1926"}
!3257 = !{!"1927"}
!3258 = !DILocation(line: 66, column: 5, scope: !3251)
!3259 = !{!"1928"}
!3260 = !DILocation(line: 67, column: 15, scope: !3251)
!3261 = !{!"1929"}
!3262 = !{!"1930"}
!3263 = !DILocation(line: 67, column: 5, scope: !3251)
!3264 = !{!"1931"}
!3265 = !DILocation(line: 68, column: 1, scope: !3251)
!3266 = !{!"1932"}
!3267 = distinct !DISubprogram(name: "fp2sqr1271", scope: !864, file: !864, line: 71, type: !865, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3268 = !{!"1933"}
!3269 = !{!"1934"}
!3270 = !{!"1935"}
!3271 = !DILocalVariable(name: "a", arg: 1, scope: !3267, file: !864, line: 71, type: !15)
!3272 = !DILocation(line: 0, scope: !3267)
!3273 = !{!"1936"}
!3274 = !DILocalVariable(name: "c", arg: 2, scope: !3267, file: !864, line: 71, type: !15)
!3275 = !{!"1937"}
!3276 = !DILocalVariable(name: "t1", scope: !3267, file: !864, line: 77, type: !16)
!3277 = !DILocation(line: 77, column: 12, scope: !3267)
!3278 = !{!"1938"}
!3279 = !DILocalVariable(name: "t2", scope: !3267, file: !864, line: 77, type: !16)
!3280 = !DILocation(line: 77, column: 16, scope: !3267)
!3281 = !{!"1939"}
!3282 = !DILocalVariable(name: "t3", scope: !3267, file: !864, line: 77, type: !16)
!3283 = !DILocation(line: 77, column: 20, scope: !3267)
!3284 = !{!"1940"}
!3285 = !DILocation(line: 79, column: 15, scope: !3267)
!3286 = !{!"1941"}
!3287 = !{!"1942"}
!3288 = !DILocation(line: 79, column: 21, scope: !3267)
!3289 = !{!"1943"}
!3290 = !{!"1944"}
!3291 = !DILocation(line: 79, column: 27, scope: !3267)
!3292 = !{!"1945"}
!3293 = !DILocation(line: 79, column: 5, scope: !3267)
!3294 = !{!"1946"}
!3295 = !DILocation(line: 80, column: 15, scope: !3267)
!3296 = !{!"1947"}
!3297 = !{!"1948"}
!3298 = !DILocation(line: 80, column: 21, scope: !3267)
!3299 = !{!"1949"}
!3300 = !{!"1950"}
!3301 = !DILocation(line: 80, column: 27, scope: !3267)
!3302 = !{!"1951"}
!3303 = !DILocation(line: 80, column: 5, scope: !3267)
!3304 = !{!"1952"}
!3305 = !DILocation(line: 81, column: 15, scope: !3267)
!3306 = !{!"1953"}
!3307 = !{!"1954"}
!3308 = !DILocation(line: 81, column: 21, scope: !3267)
!3309 = !{!"1955"}
!3310 = !{!"1956"}
!3311 = !DILocation(line: 81, column: 27, scope: !3267)
!3312 = !{!"1957"}
!3313 = !DILocation(line: 81, column: 5, scope: !3267)
!3314 = !{!"1958"}
!3315 = !DILocation(line: 82, column: 15, scope: !3267)
!3316 = !{!"1959"}
!3317 = !DILocation(line: 82, column: 19, scope: !3267)
!3318 = !{!"1960"}
!3319 = !DILocation(line: 82, column: 23, scope: !3267)
!3320 = !{!"1961"}
!3321 = !{!"1962"}
!3322 = !DILocation(line: 82, column: 5, scope: !3267)
!3323 = !{!"1963"}
!3324 = !DILocation(line: 83, column: 15, scope: !3267)
!3325 = !{!"1964"}
!3326 = !DILocation(line: 83, column: 19, scope: !3267)
!3327 = !{!"1965"}
!3328 = !DILocation(line: 83, column: 23, scope: !3267)
!3329 = !{!"1966"}
!3330 = !{!"1967"}
!3331 = !DILocation(line: 83, column: 5, scope: !3267)
!3332 = !{!"1968"}
!3333 = !DILocation(line: 90, column: 1, scope: !3267)
!3334 = !{!"1969"}
!3335 = distinct !DISubprogram(name: "fpadd1271", scope: !41, file: !41, line: 105, type: !1718, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3336 = !DILocalVariable(name: "a", arg: 1, scope: !3335, file: !41, line: 105, type: !14)
!3337 = !DILocation(line: 0, scope: !3335)
!3338 = !{!"1970"}
!3339 = !DILocalVariable(name: "b", arg: 2, scope: !3335, file: !41, line: 105, type: !14)
!3340 = !{!"1971"}
!3341 = !DILocalVariable(name: "c", arg: 3, scope: !3335, file: !41, line: 105, type: !14)
!3342 = !{!"1972"}
!3343 = !DILocalVariable(name: "carry", scope: !3335, file: !41, line: 108, type: !12)
!3344 = !{!"1973"}
!3345 = !DILocalVariable(name: "i", scope: !3335, file: !41, line: 107, type: !12)
!3346 = !{!"1974"}
!3347 = !DILocation(line: 110, column: 10, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3335, file: !41, line: 110, column: 5)
!3349 = !{!"1975"}
!3350 = !DILocation(line: 0, scope: !3348)
!3351 = !{!"1976"}
!3352 = !{!"1977"}
!3353 = !{!"1978"}
!3354 = !{!"1979"}
!3355 = !DILocation(line: 110, column: 19, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3348, file: !41, line: 110, column: 5)
!3357 = !{!"1980"}
!3358 = !DILocation(line: 110, column: 5, scope: !3348)
!3359 = !{!"1981"}
!3360 = !DILocation(line: 111, column: 9, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !41, line: 111, column: 9)
!3362 = distinct !DILexicalBlock(scope: !3356, file: !41, line: 110, column: 40)
!3363 = !{!"1982"}
!3364 = !{!"1983"}
!3365 = !{!"1984"}
!3366 = !{!"1985"}
!3367 = !DILocalVariable(name: "tempReg", scope: !3361, file: !41, line: 111, type: !6)
!3368 = !DILocation(line: 0, scope: !3361)
!3369 = !{!"1986"}
!3370 = !{!"1987"}
!3371 = !{!"1988"}
!3372 = !{!"1989"}
!3373 = !{!"1990"}
!3374 = !{!"1991"}
!3375 = !{!"1992"}
!3376 = !{!"1993"}
!3377 = !{!"1994"}
!3378 = !{!"1995"}
!3379 = !{!"1996"}
!3380 = !{!"1997"}
!3381 = !{!"1998"}
!3382 = !{!"1999"}
!3383 = !{!"2000"}
!3384 = !DILocation(line: 112, column: 5, scope: !3362)
!3385 = !{!"2001"}
!3386 = !DILocation(line: 110, column: 36, scope: !3356)
!3387 = !{!"2002"}
!3388 = !{!"2003"}
!3389 = !DILocation(line: 110, column: 5, scope: !3356)
!3390 = distinct !{!3390, !3358, !3391, !517}
!3391 = !DILocation(line: 112, column: 5, scope: !3348)
!3392 = !{!"2004"}
!3393 = !DILocation(line: 113, column: 28, scope: !3335)
!3394 = !{!"2005"}
!3395 = !{!"2006"}
!3396 = !DILocation(line: 113, column: 46, scope: !3335)
!3397 = !{!"2007"}
!3398 = !{!"2008"}
!3399 = !DILocation(line: 114, column: 5, scope: !3335)
!3400 = !{!"2009"}
!3401 = !DILocation(line: 114, column: 23, scope: !3335)
!3402 = !{!"2010"}
!3403 = !{!"2011"}
!3404 = !{!"2012"}
!3405 = !{!"2013"}
!3406 = !DILocation(line: 115, column: 10, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3335, file: !41, line: 115, column: 5)
!3408 = !{!"2014"}
!3409 = !DILocation(line: 0, scope: !3407)
!3410 = !{!"2015"}
!3411 = !{!"2016"}
!3412 = !{!"2017"}
!3413 = !{!"2018"}
!3414 = !DILocation(line: 115, column: 19, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3407, file: !41, line: 115, column: 5)
!3416 = !{!"2019"}
!3417 = !DILocation(line: 115, column: 5, scope: !3407)
!3418 = !{!"2020"}
!3419 = !DILocation(line: 116, column: 9, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !41, line: 116, column: 9)
!3421 = distinct !DILexicalBlock(scope: !3415, file: !41, line: 115, column: 40)
!3422 = !{!"2021"}
!3423 = !{!"2022"}
!3424 = !{!"2023"}
!3425 = !{!"2024"}
!3426 = !DILocalVariable(name: "tempReg", scope: !3420, file: !41, line: 116, type: !6)
!3427 = !DILocation(line: 0, scope: !3420)
!3428 = !{!"2025"}
!3429 = !{!"2026"}
!3430 = !{!"2027"}
!3431 = !{!"2028"}
!3432 = !{!"2029"}
!3433 = !{!"2030"}
!3434 = !{!"2031"}
!3435 = !{!"2032"}
!3436 = !{!"2033"}
!3437 = !{!"2034"}
!3438 = !{!"2035"}
!3439 = !{!"2036"}
!3440 = !DILocation(line: 117, column: 5, scope: !3421)
!3441 = !{!"2037"}
!3442 = !DILocation(line: 115, column: 36, scope: !3415)
!3443 = !{!"2038"}
!3444 = !{!"2039"}
!3445 = !DILocation(line: 115, column: 5, scope: !3415)
!3446 = distinct !{!3446, !3417, !3447, !517}
!3447 = !DILocation(line: 117, column: 5, scope: !3407)
!3448 = !{!"2040"}
!3449 = !DILocation(line: 118, column: 1, scope: !3335)
!3450 = !{!"2041"}
!3451 = distinct !DISubprogram(name: "fpsub1271", scope: !41, file: !41, line: 121, type: !1718, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3452 = !DILocalVariable(name: "a", arg: 1, scope: !3451, file: !41, line: 121, type: !14)
!3453 = !DILocation(line: 0, scope: !3451)
!3454 = !{!"2042"}
!3455 = !DILocalVariable(name: "b", arg: 2, scope: !3451, file: !41, line: 121, type: !14)
!3456 = !{!"2043"}
!3457 = !DILocalVariable(name: "c", arg: 3, scope: !3451, file: !41, line: 121, type: !14)
!3458 = !{!"2044"}
!3459 = !DILocalVariable(name: "borrow", scope: !3451, file: !41, line: 124, type: !12)
!3460 = !{!"2045"}
!3461 = !DILocalVariable(name: "i", scope: !3451, file: !41, line: 123, type: !12)
!3462 = !{!"2046"}
!3463 = !DILocation(line: 126, column: 10, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3451, file: !41, line: 126, column: 5)
!3465 = !{!"2047"}
!3466 = !DILocation(line: 0, scope: !3464)
!3467 = !{!"2048"}
!3468 = !{!"2049"}
!3469 = !{!"2050"}
!3470 = !{!"2051"}
!3471 = !DILocation(line: 126, column: 19, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3464, file: !41, line: 126, column: 5)
!3473 = !{!"2052"}
!3474 = !DILocation(line: 126, column: 5, scope: !3464)
!3475 = !{!"2053"}
!3476 = !DILocation(line: 127, column: 9, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !41, line: 127, column: 9)
!3478 = distinct !DILexicalBlock(scope: !3472, file: !41, line: 126, column: 40)
!3479 = !{!"2054"}
!3480 = !{!"2055"}
!3481 = !{!"2056"}
!3482 = !{!"2057"}
!3483 = !{!"2058"}
!3484 = !{!"2059"}
!3485 = !{!"2060"}
!3486 = !DILocalVariable(name: "tempReg", scope: !3477, file: !41, line: 127, type: !6)
!3487 = !DILocation(line: 0, scope: !3477)
!3488 = !{!"2061"}
!3489 = !{!"2062"}
!3490 = !{!"2063"}
!3491 = !{!"2064"}
!3492 = !{!"2065"}
!3493 = !{!"2066"}
!3494 = !{!"2067"}
!3495 = !{!"2068"}
!3496 = !{!"2069"}
!3497 = !{!"2070"}
!3498 = !{!"2071"}
!3499 = !DILocalVariable(name: "borrowReg", scope: !3477, file: !41, line: 127, type: !12)
!3500 = !{!"2072"}
!3501 = !{!"2073"}
!3502 = !{!"2074"}
!3503 = !{!"2075"}
!3504 = !{!"2076"}
!3505 = !{!"2077"}
!3506 = !DILocation(line: 128, column: 5, scope: !3478)
!3507 = !{!"2078"}
!3508 = !DILocation(line: 126, column: 36, scope: !3472)
!3509 = !{!"2079"}
!3510 = !{!"2080"}
!3511 = !DILocation(line: 126, column: 5, scope: !3472)
!3512 = distinct !{!3512, !3474, !3513, !517}
!3513 = !DILocation(line: 128, column: 5, scope: !3464)
!3514 = !{!"2081"}
!3515 = !DILocation(line: 129, column: 29, scope: !3451)
!3516 = !{!"2082"}
!3517 = !{!"2083"}
!3518 = !DILocation(line: 129, column: 47, scope: !3451)
!3519 = !{!"2084"}
!3520 = !{!"2085"}
!3521 = !DILocation(line: 130, column: 5, scope: !3451)
!3522 = !{!"2086"}
!3523 = !DILocation(line: 130, column: 23, scope: !3451)
!3524 = !{!"2087"}
!3525 = !{!"2088"}
!3526 = !{!"2089"}
!3527 = !{!"2090"}
!3528 = !DILocation(line: 131, column: 10, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3451, file: !41, line: 131, column: 5)
!3530 = !{!"2091"}
!3531 = !DILocation(line: 0, scope: !3529)
!3532 = !{!"2092"}
!3533 = !{!"2093"}
!3534 = !{!"2094"}
!3535 = !{!"2095"}
!3536 = !DILocation(line: 131, column: 19, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3529, file: !41, line: 131, column: 5)
!3538 = !{!"2096"}
!3539 = !DILocation(line: 131, column: 5, scope: !3529)
!3540 = !{!"2097"}
!3541 = !DILocation(line: 132, column: 9, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !41, line: 132, column: 9)
!3543 = distinct !DILexicalBlock(scope: !3537, file: !41, line: 131, column: 40)
!3544 = !{!"2098"}
!3545 = !{!"2099"}
!3546 = !{!"2100"}
!3547 = !{!"2101"}
!3548 = !DILocalVariable(name: "tempReg", scope: !3542, file: !41, line: 132, type: !6)
!3549 = !DILocation(line: 0, scope: !3542)
!3550 = !{!"2102"}
!3551 = !{!"2103"}
!3552 = !{!"2104"}
!3553 = !{!"2105"}
!3554 = !{!"2106"}
!3555 = !{!"2107"}
!3556 = !{!"2108"}
!3557 = !{!"2109"}
!3558 = !DILocalVariable(name: "borrowReg", scope: !3542, file: !41, line: 132, type: !12)
!3559 = !{!"2110"}
!3560 = !{!"2111"}
!3561 = !{!"2112"}
!3562 = !{!"2113"}
!3563 = !{!"2114"}
!3564 = !{!"2115"}
!3565 = !DILocation(line: 133, column: 5, scope: !3543)
!3566 = !{!"2116"}
!3567 = !DILocation(line: 131, column: 36, scope: !3537)
!3568 = !{!"2117"}
!3569 = !{!"2118"}
!3570 = !DILocation(line: 131, column: 5, scope: !3537)
!3571 = distinct !{!3571, !3539, !3572, !517}
!3572 = !DILocation(line: 133, column: 5, scope: !3529)
!3573 = !{!"2119"}
!3574 = !DILocation(line: 134, column: 1, scope: !3451)
!3575 = !{!"2120"}
!3576 = distinct !DISubprogram(name: "fp2mul1271", scope: !864, file: !864, line: 93, type: !3577, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !15, !15, !15}
!3579 = !{!"2121"}
!3580 = !{!"2122"}
!3581 = !{!"2123"}
!3582 = !{!"2124"}
!3583 = !DILocalVariable(name: "a", arg: 1, scope: !3576, file: !864, line: 93, type: !15)
!3584 = !DILocation(line: 0, scope: !3576)
!3585 = !{!"2125"}
!3586 = !DILocalVariable(name: "b", arg: 2, scope: !3576, file: !864, line: 93, type: !15)
!3587 = !{!"2126"}
!3588 = !DILocalVariable(name: "c", arg: 3, scope: !3576, file: !864, line: 93, type: !15)
!3589 = !{!"2127"}
!3590 = !DILocalVariable(name: "t1", scope: !3576, file: !864, line: 99, type: !16)
!3591 = !DILocation(line: 99, column: 12, scope: !3576)
!3592 = !{!"2128"}
!3593 = !DILocalVariable(name: "t2", scope: !3576, file: !864, line: 99, type: !16)
!3594 = !DILocation(line: 99, column: 16, scope: !3576)
!3595 = !{!"2129"}
!3596 = !DILocalVariable(name: "t3", scope: !3576, file: !864, line: 99, type: !16)
!3597 = !DILocation(line: 99, column: 20, scope: !3576)
!3598 = !{!"2130"}
!3599 = !DILocalVariable(name: "t4", scope: !3576, file: !864, line: 99, type: !16)
!3600 = !DILocation(line: 99, column: 24, scope: !3576)
!3601 = !{!"2131"}
!3602 = !DILocation(line: 101, column: 15, scope: !3576)
!3603 = !{!"2132"}
!3604 = !{!"2133"}
!3605 = !DILocation(line: 101, column: 21, scope: !3576)
!3606 = !{!"2134"}
!3607 = !{!"2135"}
!3608 = !DILocation(line: 101, column: 27, scope: !3576)
!3609 = !{!"2136"}
!3610 = !DILocation(line: 101, column: 5, scope: !3576)
!3611 = !{!"2137"}
!3612 = !DILocation(line: 102, column: 15, scope: !3576)
!3613 = !{!"2138"}
!3614 = !{!"2139"}
!3615 = !DILocation(line: 102, column: 21, scope: !3576)
!3616 = !{!"2140"}
!3617 = !{!"2141"}
!3618 = !DILocation(line: 102, column: 27, scope: !3576)
!3619 = !{!"2142"}
!3620 = !DILocation(line: 102, column: 5, scope: !3576)
!3621 = !{!"2143"}
!3622 = !DILocation(line: 103, column: 15, scope: !3576)
!3623 = !{!"2144"}
!3624 = !{!"2145"}
!3625 = !DILocation(line: 103, column: 21, scope: !3576)
!3626 = !{!"2146"}
!3627 = !{!"2147"}
!3628 = !DILocation(line: 103, column: 27, scope: !3576)
!3629 = !{!"2148"}
!3630 = !DILocation(line: 103, column: 5, scope: !3576)
!3631 = !{!"2149"}
!3632 = !DILocation(line: 104, column: 15, scope: !3576)
!3633 = !{!"2150"}
!3634 = !{!"2151"}
!3635 = !DILocation(line: 104, column: 21, scope: !3576)
!3636 = !{!"2152"}
!3637 = !{!"2153"}
!3638 = !DILocation(line: 104, column: 27, scope: !3576)
!3639 = !{!"2154"}
!3640 = !DILocation(line: 104, column: 5, scope: !3576)
!3641 = !{!"2155"}
!3642 = !DILocation(line: 105, column: 15, scope: !3576)
!3643 = !{!"2156"}
!3644 = !DILocation(line: 105, column: 19, scope: !3576)
!3645 = !{!"2157"}
!3646 = !DILocation(line: 105, column: 23, scope: !3576)
!3647 = !{!"2158"}
!3648 = !{!"2159"}
!3649 = !DILocation(line: 105, column: 5, scope: !3576)
!3650 = !{!"2160"}
!3651 = !DILocation(line: 106, column: 15, scope: !3576)
!3652 = !{!"2161"}
!3653 = !DILocation(line: 106, column: 19, scope: !3576)
!3654 = !{!"2162"}
!3655 = !DILocation(line: 106, column: 23, scope: !3576)
!3656 = !{!"2163"}
!3657 = !DILocation(line: 106, column: 5, scope: !3576)
!3658 = !{!"2164"}
!3659 = !DILocation(line: 107, column: 15, scope: !3576)
!3660 = !{!"2165"}
!3661 = !DILocation(line: 107, column: 19, scope: !3576)
!3662 = !{!"2166"}
!3663 = !DILocation(line: 107, column: 23, scope: !3576)
!3664 = !{!"2167"}
!3665 = !DILocation(line: 107, column: 5, scope: !3576)
!3666 = !{!"2168"}
!3667 = !DILocation(line: 108, column: 15, scope: !3576)
!3668 = !{!"2169"}
!3669 = !DILocation(line: 108, column: 19, scope: !3576)
!3670 = !{!"2170"}
!3671 = !DILocation(line: 108, column: 23, scope: !3576)
!3672 = !{!"2171"}
!3673 = !{!"2172"}
!3674 = !DILocation(line: 108, column: 5, scope: !3576)
!3675 = !{!"2173"}
!3676 = !DILocation(line: 116, column: 1, scope: !3576)
!3677 = !{!"2174"}
!3678 = distinct !DISubprogram(name: "fp2inv1271", scope: !864, file: !864, line: 145, type: !3202, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3679 = !{!"2175"}
!3680 = !DILocalVariable(name: "a", arg: 1, scope: !3678, file: !864, line: 145, type: !15)
!3681 = !DILocation(line: 0, scope: !3678)
!3682 = !{!"2176"}
!3683 = !DILocalVariable(name: "t1", scope: !3678, file: !864, line: 147, type: !30)
!3684 = !DILocation(line: 147, column: 13, scope: !3678)
!3685 = !{!"2177"}
!3686 = !DILocation(line: 149, column: 15, scope: !3678)
!3687 = !{!"2178"}
!3688 = !{!"2179"}
!3689 = !DILocation(line: 149, column: 21, scope: !3678)
!3690 = !{!"2180"}
!3691 = !{!"2181"}
!3692 = !DILocation(line: 149, column: 5, scope: !3678)
!3693 = !{!"2182"}
!3694 = !DILocation(line: 150, column: 15, scope: !3678)
!3695 = !{!"2183"}
!3696 = !{!"2184"}
!3697 = !DILocation(line: 150, column: 21, scope: !3678)
!3698 = !{!"2185"}
!3699 = !{!"2186"}
!3700 = !DILocation(line: 150, column: 5, scope: !3678)
!3701 = !{!"2187"}
!3702 = !DILocation(line: 151, column: 15, scope: !3678)
!3703 = !{!"2188"}
!3704 = !{!"2189"}
!3705 = !DILocation(line: 151, column: 22, scope: !3678)
!3706 = !{!"2190"}
!3707 = !{!"2191"}
!3708 = !DILocation(line: 151, column: 29, scope: !3678)
!3709 = !{!"2192"}
!3710 = !{!"2193"}
!3711 = !DILocation(line: 151, column: 5, scope: !3678)
!3712 = !{!"2194"}
!3713 = !DILocation(line: 152, column: 15, scope: !3678)
!3714 = !{!"2195"}
!3715 = !{!"2196"}
!3716 = !DILocation(line: 152, column: 5, scope: !3678)
!3717 = !{!"2197"}
!3718 = !DILocation(line: 153, column: 15, scope: !3678)
!3719 = !{!"2198"}
!3720 = !{!"2199"}
!3721 = !DILocation(line: 153, column: 5, scope: !3678)
!3722 = !{!"2200"}
!3723 = !DILocation(line: 154, column: 15, scope: !3678)
!3724 = !{!"2201"}
!3725 = !{!"2202"}
!3726 = !DILocation(line: 154, column: 21, scope: !3678)
!3727 = !{!"2203"}
!3728 = !{!"2204"}
!3729 = !DILocation(line: 154, column: 28, scope: !3678)
!3730 = !{!"2205"}
!3731 = !{!"2206"}
!3732 = !DILocation(line: 154, column: 5, scope: !3678)
!3733 = !{!"2207"}
!3734 = !DILocation(line: 155, column: 15, scope: !3678)
!3735 = !{!"2208"}
!3736 = !{!"2209"}
!3737 = !DILocation(line: 155, column: 21, scope: !3678)
!3738 = !{!"2210"}
!3739 = !{!"2211"}
!3740 = !DILocation(line: 155, column: 28, scope: !3678)
!3741 = !{!"2212"}
!3742 = !{!"2213"}
!3743 = !DILocation(line: 155, column: 5, scope: !3678)
!3744 = !{!"2214"}
!3745 = !DILocation(line: 159, column: 1, scope: !3678)
!3746 = !{!"2215"}
!3747 = distinct !DISubprogram(name: "eccset", scope: !864, file: !864, line: 180, type: !3748, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3750, !3027}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_affine", file: !7, line: 207, baseType: !3752)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 207, size: 512, elements: !3753)
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3752, file: !7, line: 207, baseType: !30, size: 256)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3752, file: !7, line: 207, baseType: !30, size: 256, offset: 256)
!3756 = !DILocalVariable(name: "P", arg: 1, scope: !3747, file: !864, line: 180, type: !3750)
!3757 = !DILocation(line: 0, scope: !3747)
!3758 = !{!"2216"}
!3759 = !DILocalVariable(name: "curve", arg: 2, scope: !3747, file: !864, line: 180, type: !3027)
!3760 = !{!"2217"}
!3761 = !DILocation(line: 184, column: 34, scope: !3747)
!3762 = !{!"2218"}
!3763 = !DILocation(line: 184, column: 17, scope: !3747)
!3764 = !{!"2219"}
!3765 = !DILocation(line: 184, column: 50, scope: !3747)
!3766 = !{!"2220"}
!3767 = !DILocation(line: 184, column: 47, scope: !3747)
!3768 = !{!"2221"}
!3769 = !DILocation(line: 184, column: 5, scope: !3747)
!3770 = !{!"2222"}
!3771 = !DILocation(line: 185, column: 34, scope: !3747)
!3772 = !{!"2223"}
!3773 = !DILocation(line: 185, column: 17, scope: !3747)
!3774 = !{!"2224"}
!3775 = !DILocation(line: 185, column: 50, scope: !3747)
!3776 = !{!"2225"}
!3777 = !DILocation(line: 185, column: 47, scope: !3747)
!3778 = !{!"2226"}
!3779 = !DILocation(line: 185, column: 5, scope: !3747)
!3780 = !{!"2227"}
!3781 = !DILocation(line: 186, column: 1, scope: !3747)
!3782 = !{!"2228"}
!3783 = distinct !DISubprogram(name: "eccnorm", scope: !864, file: !864, line: 189, type: !3784, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{null, !3786, !3750}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_extproj", file: !7, line: 209, baseType: !3788)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 209, size: 1280, elements: !3789)
!3789 = !{!3790, !3791, !3792, !3793, !3794}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3788, file: !7, line: 209, baseType: !30, size: 256)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3788, file: !7, line: 209, baseType: !30, size: 256, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !3788, file: !7, line: 209, baseType: !30, size: 256, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ta", scope: !3788, file: !7, line: 209, baseType: !30, size: 256, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "tb", scope: !3788, file: !7, line: 209, baseType: !30, size: 256, offset: 1024)
!3795 = !DILocalVariable(name: "P", arg: 1, scope: !3783, file: !864, line: 189, type: !3786)
!3796 = !DILocation(line: 0, scope: !3783)
!3797 = !{!"2229"}
!3798 = !DILocalVariable(name: "Q", arg: 2, scope: !3783, file: !864, line: 189, type: !3750)
!3799 = !{!"2230"}
!3800 = !DILocation(line: 194, column: 19, scope: !3783)
!3801 = !{!"2231"}
!3802 = !DILocation(line: 194, column: 16, scope: !3783)
!3803 = !{!"2232"}
!3804 = !DILocation(line: 194, column: 5, scope: !3783)
!3805 = !{!"2233"}
!3806 = !DILocation(line: 195, column: 19, scope: !3783)
!3807 = !{!"2234"}
!3808 = !DILocation(line: 195, column: 16, scope: !3783)
!3809 = !{!"2235"}
!3810 = !DILocation(line: 195, column: 25, scope: !3783)
!3811 = !{!"2236"}
!3812 = !DILocation(line: 195, column: 22, scope: !3783)
!3813 = !{!"2237"}
!3814 = !DILocation(line: 195, column: 31, scope: !3783)
!3815 = !{!"2238"}
!3816 = !DILocation(line: 195, column: 28, scope: !3783)
!3817 = !{!"2239"}
!3818 = !DILocation(line: 195, column: 5, scope: !3783)
!3819 = !{!"2240"}
!3820 = !DILocation(line: 196, column: 19, scope: !3783)
!3821 = !{!"2241"}
!3822 = !DILocation(line: 196, column: 16, scope: !3783)
!3823 = !{!"2242"}
!3824 = !DILocation(line: 196, column: 25, scope: !3783)
!3825 = !{!"2243"}
!3826 = !DILocation(line: 196, column: 22, scope: !3783)
!3827 = !{!"2244"}
!3828 = !DILocation(line: 196, column: 31, scope: !3783)
!3829 = !{!"2245"}
!3830 = !DILocation(line: 196, column: 28, scope: !3783)
!3831 = !{!"2246"}
!3832 = !DILocation(line: 196, column: 5, scope: !3783)
!3833 = !{!"2247"}
!3834 = !DILocation(line: 197, column: 16, scope: !3783)
!3835 = !{!"2248"}
!3836 = !DILocation(line: 197, column: 13, scope: !3783)
!3837 = !{!"2249"}
!3838 = !{!"2250"}
!3839 = !DILocation(line: 197, column: 5, scope: !3783)
!3840 = !{!"2251"}
!3841 = !DILocation(line: 197, column: 34, scope: !3783)
!3842 = !{!"2252"}
!3843 = !DILocation(line: 197, column: 31, scope: !3783)
!3844 = !{!"2253"}
!3845 = !{!"2254"}
!3846 = !DILocation(line: 197, column: 23, scope: !3783)
!3847 = !{!"2255"}
!3848 = !DILocation(line: 198, column: 16, scope: !3783)
!3849 = !{!"2256"}
!3850 = !DILocation(line: 198, column: 13, scope: !3783)
!3851 = !{!"2257"}
!3852 = !{!"2258"}
!3853 = !DILocation(line: 198, column: 5, scope: !3783)
!3854 = !{!"2259"}
!3855 = !DILocation(line: 198, column: 34, scope: !3783)
!3856 = !{!"2260"}
!3857 = !DILocation(line: 198, column: 31, scope: !3783)
!3858 = !{!"2261"}
!3859 = !{!"2262"}
!3860 = !DILocation(line: 198, column: 23, scope: !3783)
!3861 = !{!"2263"}
!3862 = !DILocation(line: 199, column: 1, scope: !3783)
!3863 = !{!"2264"}
!3864 = distinct !DISubprogram(name: "R1_to_R2", scope: !864, file: !864, line: 202, type: !3865, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{null, !3786, !70, !3027}
!3867 = !DILocalVariable(name: "P", arg: 1, scope: !3864, file: !864, line: 202, type: !3786)
!3868 = !DILocation(line: 0, scope: !3864)
!3869 = !{!"2265"}
!3870 = !DILocalVariable(name: "Q", arg: 2, scope: !3864, file: !864, line: 202, type: !70)
!3871 = !{!"2266"}
!3872 = !DILocalVariable(name: "curve", arg: 3, scope: !3864, file: !864, line: 202, type: !3027)
!3873 = !{!"2267"}
!3874 = !DILocation(line: 207, column: 19, scope: !3864)
!3875 = !{!"2268"}
!3876 = !DILocation(line: 207, column: 16, scope: !3864)
!3877 = !{!"2269"}
!3878 = !DILocation(line: 207, column: 26, scope: !3864)
!3879 = !{!"2270"}
!3880 = !DILocation(line: 207, column: 23, scope: !3864)
!3881 = !{!"2271"}
!3882 = !DILocation(line: 207, column: 33, scope: !3864)
!3883 = !{!"2272"}
!3884 = !DILocation(line: 207, column: 30, scope: !3864)
!3885 = !{!"2273"}
!3886 = !DILocation(line: 207, column: 5, scope: !3864)
!3887 = !{!"2274"}
!3888 = !DILocation(line: 208, column: 19, scope: !3864)
!3889 = !{!"2275"}
!3890 = !DILocation(line: 208, column: 16, scope: !3864)
!3891 = !{!"2276"}
!3892 = !DILocation(line: 208, column: 25, scope: !3864)
!3893 = !{!"2277"}
!3894 = !DILocation(line: 208, column: 22, scope: !3864)
!3895 = !{!"2278"}
!3896 = !DILocation(line: 208, column: 31, scope: !3864)
!3897 = !{!"2279"}
!3898 = !DILocation(line: 208, column: 28, scope: !3864)
!3899 = !{!"2280"}
!3900 = !DILocation(line: 208, column: 5, scope: !3864)
!3901 = !{!"2281"}
!3902 = !DILocation(line: 209, column: 19, scope: !3864)
!3903 = !{!"2282"}
!3904 = !DILocation(line: 209, column: 16, scope: !3864)
!3905 = !{!"2283"}
!3906 = !DILocation(line: 209, column: 25, scope: !3864)
!3907 = !{!"2284"}
!3908 = !DILocation(line: 209, column: 22, scope: !3864)
!3909 = !{!"2285"}
!3910 = !DILocation(line: 209, column: 31, scope: !3864)
!3911 = !{!"2286"}
!3912 = !DILocation(line: 209, column: 28, scope: !3864)
!3913 = !{!"2287"}
!3914 = !DILocation(line: 209, column: 5, scope: !3864)
!3915 = !{!"2288"}
!3916 = !DILocation(line: 210, column: 19, scope: !3864)
!3917 = !{!"2289"}
!3918 = !DILocation(line: 210, column: 16, scope: !3864)
!3919 = !{!"2290"}
!3920 = !DILocation(line: 210, column: 26, scope: !3864)
!3921 = !{!"2291"}
!3922 = !DILocation(line: 210, column: 23, scope: !3864)
!3923 = !{!"2292"}
!3924 = !DILocation(line: 210, column: 33, scope: !3864)
!3925 = !{!"2293"}
!3926 = !DILocation(line: 210, column: 30, scope: !3864)
!3927 = !{!"2294"}
!3928 = !DILocation(line: 210, column: 5, scope: !3864)
!3929 = !{!"2295"}
!3930 = !DILocation(line: 211, column: 19, scope: !3864)
!3931 = !{!"2296"}
!3932 = !DILocation(line: 211, column: 16, scope: !3864)
!3933 = !{!"2297"}
!3934 = !DILocation(line: 211, column: 25, scope: !3864)
!3935 = !{!"2298"}
!3936 = !DILocation(line: 211, column: 22, scope: !3864)
!3937 = !{!"2299"}
!3938 = !DILocation(line: 211, column: 31, scope: !3864)
!3939 = !{!"2300"}
!3940 = !DILocation(line: 211, column: 28, scope: !3864)
!3941 = !{!"2301"}
!3942 = !DILocation(line: 211, column: 5, scope: !3864)
!3943 = !{!"2302"}
!3944 = !DILocation(line: 212, column: 19, scope: !3864)
!3945 = !{!"2303"}
!3946 = !DILocation(line: 212, column: 16, scope: !3864)
!3947 = !{!"2304"}
!3948 = !DILocation(line: 212, column: 40, scope: !3864)
!3949 = !{!"2305"}
!3950 = !DILocation(line: 212, column: 23, scope: !3864)
!3951 = !{!"2306"}
!3952 = !DILocation(line: 212, column: 46, scope: !3864)
!3953 = !{!"2307"}
!3954 = !DILocation(line: 212, column: 43, scope: !3864)
!3955 = !{!"2308"}
!3956 = !DILocation(line: 212, column: 5, scope: !3864)
!3957 = !{!"2309"}
!3958 = !DILocation(line: 213, column: 1, scope: !3864)
!3959 = !{!"2310"}
!3960 = distinct !DISubprogram(name: "R1_to_R2_ni", scope: !864, file: !864, line: 216, type: !3865, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3961 = !DILocalVariable(name: "P", arg: 1, scope: !3960, file: !864, line: 216, type: !3786)
!3962 = !DILocation(line: 0, scope: !3960)
!3963 = !{!"2311"}
!3964 = !DILocalVariable(name: "Q", arg: 2, scope: !3960, file: !864, line: 216, type: !70)
!3965 = !{!"2312"}
!3966 = !DILocalVariable(name: "curve", arg: 3, scope: !3960, file: !864, line: 216, type: !3027)
!3967 = !{!"2313"}
!3968 = !DILocation(line: 218, column: 5, scope: !3960)
!3969 = !{!"2314"}
!3970 = !DILocation(line: 219, column: 1, scope: !3960)
!3971 = !{!"2315"}
!3972 = distinct !DISubprogram(name: "R2_to_R4", scope: !864, file: !864, line: 234, type: !3973, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !70, !3786}
!3975 = !DILocalVariable(name: "P", arg: 1, scope: !3972, file: !864, line: 234, type: !70)
!3976 = !DILocation(line: 0, scope: !3972)
!3977 = !{!"2316"}
!3978 = !DILocalVariable(name: "Q", arg: 2, scope: !3972, file: !864, line: 234, type: !3786)
!3979 = !{!"2317"}
!3980 = !DILocation(line: 239, column: 19, scope: !3972)
!3981 = !{!"2318"}
!3982 = !DILocation(line: 239, column: 16, scope: !3972)
!3983 = !{!"2319"}
!3984 = !DILocation(line: 239, column: 26, scope: !3972)
!3985 = !{!"2320"}
!3986 = !DILocation(line: 239, column: 23, scope: !3972)
!3987 = !{!"2321"}
!3988 = !DILocation(line: 239, column: 33, scope: !3972)
!3989 = !{!"2322"}
!3990 = !DILocation(line: 239, column: 30, scope: !3972)
!3991 = !{!"2323"}
!3992 = !DILocation(line: 239, column: 5, scope: !3972)
!3993 = !{!"2324"}
!3994 = !DILocation(line: 240, column: 19, scope: !3972)
!3995 = !{!"2325"}
!3996 = !DILocation(line: 240, column: 16, scope: !3972)
!3997 = !{!"2326"}
!3998 = !DILocation(line: 240, column: 26, scope: !3972)
!3999 = !{!"2327"}
!4000 = !DILocation(line: 240, column: 23, scope: !3972)
!4001 = !{!"2328"}
!4002 = !DILocation(line: 240, column: 33, scope: !3972)
!4003 = !{!"2329"}
!4004 = !DILocation(line: 240, column: 30, scope: !3972)
!4005 = !{!"2330"}
!4006 = !DILocation(line: 240, column: 5, scope: !3972)
!4007 = !{!"2331"}
!4008 = !DILocation(line: 241, column: 20, scope: !3972)
!4009 = !{!"2332"}
!4010 = !DILocation(line: 241, column: 17, scope: !3972)
!4011 = !{!"2333"}
!4012 = !DILocation(line: 241, column: 27, scope: !3972)
!4013 = !{!"2334"}
!4014 = !DILocation(line: 241, column: 24, scope: !3972)
!4015 = !{!"2335"}
!4016 = !DILocation(line: 241, column: 5, scope: !3972)
!4017 = !{!"2336"}
!4018 = !DILocation(line: 242, column: 1, scope: !3972)
!4019 = !{!"2337"}
!4020 = distinct !DISubprogram(name: "eccadd_ni", scope: !864, file: !864, line: 314, type: !3973, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4021 = !DILocalVariable(name: "Q", arg: 1, scope: !4020, file: !864, line: 314, type: !70)
!4022 = !DILocation(line: 0, scope: !4020)
!4023 = !{!"2338"}
!4024 = !DILocalVariable(name: "P", arg: 2, scope: !4020, file: !864, line: 314, type: !3786)
!4025 = !{!"2339"}
!4026 = !DILocation(line: 316, column: 5, scope: !4020)
!4027 = !{!"2340"}
!4028 = !DILocation(line: 317, column: 1, scope: !4020)
!4029 = !{!"2341"}
!4030 = distinct !DISubprogram(name: "eccdouble_ni", scope: !864, file: !864, line: 320, type: !4031, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{null, !3786}
!4033 = !DILocalVariable(name: "P", arg: 1, scope: !4030, file: !864, line: 320, type: !3786)
!4034 = !DILocation(line: 0, scope: !4030)
!4035 = !{!"2342"}
!4036 = !DILocation(line: 322, column: 5, scope: !4030)
!4037 = !{!"2343"}
!4038 = !DILocation(line: 323, column: 1, scope: !4030)
!4039 = !{!"2344"}
!4040 = distinct !DISubprogram(name: "point_setup_ni", scope: !864, file: !864, line: 344, type: !4041, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{null, !3750, !3786}
!4043 = !DILocalVariable(name: "P", arg: 1, scope: !4040, file: !864, line: 344, type: !3750)
!4044 = !DILocation(line: 0, scope: !4040)
!4045 = !{!"2345"}
!4046 = !DILocalVariable(name: "Q", arg: 2, scope: !4040, file: !864, line: 344, type: !3786)
!4047 = !{!"2346"}
!4048 = !DILocation(line: 346, column: 5, scope: !4040)
!4049 = !{!"2347"}
!4050 = !DILocation(line: 347, column: 1, scope: !4040)
!4051 = !{!"2348"}
!4052 = distinct !DISubprogram(name: "ecc_point_validate", scope: !864, file: !864, line: 350, type: !4053, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!4055, !3786, !3027}
!4055 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!4056 = !{!"2349"}
!4057 = !{!"2350"}
!4058 = !{!"2351"}
!4059 = !DILocalVariable(name: "P", arg: 1, scope: !4052, file: !864, line: 350, type: !3786)
!4060 = !DILocation(line: 0, scope: !4052)
!4061 = !{!"2352"}
!4062 = !DILocalVariable(name: "curve", arg: 2, scope: !4052, file: !864, line: 350, type: !3027)
!4063 = !{!"2353"}
!4064 = !DILocalVariable(name: "t1", scope: !4052, file: !864, line: 355, type: !30)
!4065 = !DILocation(line: 355, column: 13, scope: !4052)
!4066 = !{!"2354"}
!4067 = !DILocalVariable(name: "t2", scope: !4052, file: !864, line: 355, type: !30)
!4068 = !DILocation(line: 355, column: 17, scope: !4052)
!4069 = !{!"2355"}
!4070 = !DILocalVariable(name: "t3", scope: !4052, file: !864, line: 355, type: !30)
!4071 = !DILocation(line: 355, column: 21, scope: !4052)
!4072 = !{!"2356"}
!4073 = !DILocation(line: 357, column: 19, scope: !4052)
!4074 = !{!"2357"}
!4075 = !DILocation(line: 357, column: 16, scope: !4052)
!4076 = !{!"2358"}
!4077 = !DILocation(line: 357, column: 22, scope: !4052)
!4078 = !{!"2359"}
!4079 = !DILocation(line: 357, column: 5, scope: !4052)
!4080 = !{!"2360"}
!4081 = !DILocation(line: 358, column: 19, scope: !4052)
!4082 = !{!"2361"}
!4083 = !DILocation(line: 358, column: 16, scope: !4052)
!4084 = !{!"2362"}
!4085 = !DILocation(line: 358, column: 22, scope: !4052)
!4086 = !{!"2363"}
!4087 = !DILocation(line: 358, column: 5, scope: !4052)
!4088 = !{!"2364"}
!4089 = !DILocation(line: 359, column: 16, scope: !4052)
!4090 = !{!"2365"}
!4091 = !DILocation(line: 359, column: 20, scope: !4052)
!4092 = !{!"2366"}
!4093 = !DILocation(line: 359, column: 24, scope: !4052)
!4094 = !{!"2367"}
!4095 = !DILocation(line: 359, column: 5, scope: !4052)
!4096 = !{!"2368"}
!4097 = !DILocation(line: 360, column: 16, scope: !4052)
!4098 = !{!"2369"}
!4099 = !DILocation(line: 360, column: 20, scope: !4052)
!4100 = !{!"2370"}
!4101 = !DILocation(line: 360, column: 24, scope: !4052)
!4102 = !{!"2371"}
!4103 = !DILocation(line: 360, column: 5, scope: !4052)
!4104 = !{!"2372"}
!4105 = !DILocation(line: 361, column: 33, scope: !4052)
!4106 = !{!"2373"}
!4107 = !DILocation(line: 361, column: 16, scope: !4052)
!4108 = !{!"2374"}
!4109 = !DILocation(line: 361, column: 36, scope: !4052)
!4110 = !{!"2375"}
!4111 = !DILocation(line: 361, column: 40, scope: !4052)
!4112 = !{!"2376"}
!4113 = !DILocation(line: 361, column: 5, scope: !4052)
!4114 = !{!"2377"}
!4115 = !DILocation(line: 362, column: 17, scope: !4052)
!4116 = !{!"2378"}
!4117 = !DILocation(line: 362, column: 5, scope: !4052)
!4118 = !{!"2379"}
!4119 = !DILocation(line: 362, column: 23, scope: !4052)
!4120 = !{!"2380"}
!4121 = !{!"2381"}
!4122 = !DILocation(line: 362, column: 32, scope: !4052)
!4123 = !{!"2382"}
!4124 = !DILocation(line: 363, column: 16, scope: !4052)
!4125 = !{!"2383"}
!4126 = !DILocation(line: 363, column: 20, scope: !4052)
!4127 = !{!"2384"}
!4128 = !DILocation(line: 363, column: 24, scope: !4052)
!4129 = !{!"2385"}
!4130 = !DILocation(line: 363, column: 5, scope: !4052)
!4131 = !{!"2386"}
!4132 = !DILocation(line: 364, column: 16, scope: !4052)
!4133 = !{!"2387"}
!4134 = !DILocation(line: 364, column: 20, scope: !4052)
!4135 = !{!"2388"}
!4136 = !DILocation(line: 364, column: 24, scope: !4052)
!4137 = !{!"2389"}
!4138 = !DILocation(line: 364, column: 5, scope: !4052)
!4139 = !{!"2390"}
!4140 = !DILocation(line: 366, column: 31, scope: !4052)
!4141 = !{!"2391"}
!4142 = !{!"2392"}
!4143 = !{!"2393"}
!4144 = !DILocation(line: 366, column: 42, scope: !4052)
!4145 = !{!"2394"}
!4146 = !{!"2395"}
!4147 = !{!"2396"}
!4148 = !DILocation(line: 366, column: 40, scope: !4052)
!4149 = !{!"2397"}
!4150 = !DILocation(line: 366, column: 14, scope: !4052)
!4151 = !{!"2398"}
!4152 = !DILocation(line: 366, column: 71, scope: !4052)
!4153 = !{!"2399"}
!4154 = !{!"2400"}
!4155 = !{!"2401"}
!4156 = !DILocation(line: 366, column: 79, scope: !4052)
!4157 = !{!"2402"}
!4158 = !DILocation(line: 366, column: 84, scope: !4052)
!4159 = !{!"2403"}
!4160 = !{!"2404"}
!4161 = !{!"2405"}
!4162 = !DILocation(line: 366, column: 92, scope: !4052)
!4163 = !{!"2406"}
!4164 = !DILocation(line: 366, column: 82, scope: !4052)
!4165 = !{!"2407"}
!4166 = !DILocation(line: 366, column: 54, scope: !4052)
!4167 = !{!"2408"}
!4168 = !DILocation(line: 366, column: 52, scope: !4052)
!4169 = !{!"2409"}
!4170 = !DILocation(line: 367, column: 31, scope: !4052)
!4171 = !{!"2410"}
!4172 = !{!"2411"}
!4173 = !{!"2412"}
!4174 = !DILocation(line: 367, column: 42, scope: !4052)
!4175 = !{!"2413"}
!4176 = !{!"2414"}
!4177 = !{!"2415"}
!4178 = !DILocation(line: 367, column: 40, scope: !4052)
!4179 = !{!"2416"}
!4180 = !DILocation(line: 367, column: 14, scope: !4052)
!4181 = !{!"2417"}
!4182 = !DILocation(line: 367, column: 71, scope: !4052)
!4183 = !{!"2418"}
!4184 = !{!"2419"}
!4185 = !{!"2420"}
!4186 = !DILocation(line: 367, column: 79, scope: !4052)
!4187 = !{!"2421"}
!4188 = !DILocation(line: 367, column: 84, scope: !4052)
!4189 = !{!"2422"}
!4190 = !{!"2423"}
!4191 = !{!"2424"}
!4192 = !DILocation(line: 367, column: 92, scope: !4052)
!4193 = !{!"2425"}
!4194 = !DILocation(line: 367, column: 82, scope: !4052)
!4195 = !{!"2426"}
!4196 = !DILocation(line: 367, column: 54, scope: !4052)
!4197 = !{!"2427"}
!4198 = !DILocation(line: 367, column: 52, scope: !4052)
!4199 = !{!"2428"}
!4200 = !DILocation(line: 366, column: 97, scope: !4052)
!4201 = !{!"2429"}
!4202 = !DILocation(line: 366, column: 12, scope: !4052)
!4203 = !{!"2430"}
!4204 = !DILocation(line: 366, column: 5, scope: !4052)
!4205 = !{!"2431"}
!4206 = distinct !DISubprogram(name: "eccmadd_ni", scope: !864, file: !864, line: 416, type: !4207, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{null, !907, !3786}
!4209 = !DILocalVariable(name: "Q", arg: 1, scope: !4206, file: !864, line: 416, type: !907)
!4210 = !DILocation(line: 0, scope: !4206)
!4211 = !{!"2432"}
!4212 = !DILocalVariable(name: "P", arg: 2, scope: !4206, file: !864, line: 416, type: !3786)
!4213 = !{!"2433"}
!4214 = !DILocation(line: 418, column: 5, scope: !4206)
!4215 = !{!"2434"}
!4216 = !DILocation(line: 419, column: 1, scope: !4206)
!4217 = !{!"2435"}
!4218 = distinct !DISubprogram(name: "eccmadd", scope: !864, file: !864, line: 387, type: !4207, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4219 = !{!"2436"}
!4220 = !{!"2437"}
!4221 = !DILocalVariable(name: "Q", arg: 1, scope: !4218, file: !864, line: 387, type: !907)
!4222 = !DILocation(line: 0, scope: !4218)
!4223 = !{!"2438"}
!4224 = !DILocalVariable(name: "P", arg: 2, scope: !4218, file: !864, line: 387, type: !3786)
!4225 = !{!"2439"}
!4226 = !DILocalVariable(name: "t1", scope: !4218, file: !864, line: 393, type: !30)
!4227 = !DILocation(line: 393, column: 13, scope: !4218)
!4228 = !{!"2440"}
!4229 = !DILocalVariable(name: "t2", scope: !4218, file: !864, line: 393, type: !30)
!4230 = !DILocation(line: 393, column: 17, scope: !4218)
!4231 = !{!"2441"}
!4232 = !DILocation(line: 395, column: 19, scope: !4218)
!4233 = !{!"2442"}
!4234 = !DILocation(line: 395, column: 16, scope: !4218)
!4235 = !{!"2443"}
!4236 = !DILocation(line: 395, column: 26, scope: !4218)
!4237 = !{!"2444"}
!4238 = !DILocation(line: 395, column: 23, scope: !4218)
!4239 = !{!"2445"}
!4240 = !DILocation(line: 395, column: 33, scope: !4218)
!4241 = !{!"2446"}
!4242 = !DILocation(line: 395, column: 30, scope: !4218)
!4243 = !{!"2447"}
!4244 = !DILocation(line: 395, column: 5, scope: !4218)
!4245 = !{!"2448"}
!4246 = !DILocation(line: 396, column: 19, scope: !4218)
!4247 = !{!"2449"}
!4248 = !DILocation(line: 396, column: 16, scope: !4218)
!4249 = !{!"2450"}
!4250 = !DILocation(line: 396, column: 25, scope: !4218)
!4251 = !{!"2451"}
!4252 = !DILocation(line: 396, column: 22, scope: !4218)
!4253 = !{!"2452"}
!4254 = !DILocation(line: 396, column: 28, scope: !4218)
!4255 = !{!"2453"}
!4256 = !DILocation(line: 396, column: 5, scope: !4218)
!4257 = !{!"2454"}
!4258 = !DILocation(line: 397, column: 19, scope: !4218)
!4259 = !{!"2455"}
!4260 = !DILocation(line: 397, column: 16, scope: !4218)
!4261 = !{!"2456"}
!4262 = !DILocation(line: 397, column: 26, scope: !4218)
!4263 = !{!"2457"}
!4264 = !DILocation(line: 397, column: 23, scope: !4218)
!4265 = !{!"2458"}
!4266 = !DILocation(line: 397, column: 33, scope: !4218)
!4267 = !{!"2459"}
!4268 = !DILocation(line: 397, column: 30, scope: !4218)
!4269 = !{!"2460"}
!4270 = !DILocation(line: 397, column: 5, scope: !4218)
!4271 = !{!"2461"}
!4272 = !DILocation(line: 398, column: 19, scope: !4218)
!4273 = !{!"2462"}
!4274 = !DILocation(line: 398, column: 16, scope: !4218)
!4275 = !{!"2463"}
!4276 = !DILocation(line: 398, column: 25, scope: !4218)
!4277 = !{!"2464"}
!4278 = !DILocation(line: 398, column: 22, scope: !4218)
!4279 = !{!"2465"}
!4280 = !DILocation(line: 398, column: 31, scope: !4218)
!4281 = !{!"2466"}
!4282 = !DILocation(line: 398, column: 28, scope: !4218)
!4283 = !{!"2467"}
!4284 = !DILocation(line: 398, column: 5, scope: !4218)
!4285 = !{!"2468"}
!4286 = !DILocation(line: 399, column: 19, scope: !4218)
!4287 = !{!"2469"}
!4288 = !DILocation(line: 399, column: 16, scope: !4218)
!4289 = !{!"2470"}
!4290 = !DILocation(line: 399, column: 25, scope: !4218)
!4291 = !{!"2471"}
!4292 = !DILocation(line: 399, column: 22, scope: !4218)
!4293 = !{!"2472"}
!4294 = !DILocation(line: 399, column: 31, scope: !4218)
!4295 = !{!"2473"}
!4296 = !DILocation(line: 399, column: 28, scope: !4218)
!4297 = !{!"2474"}
!4298 = !DILocation(line: 399, column: 5, scope: !4218)
!4299 = !{!"2475"}
!4300 = !DILocation(line: 400, column: 16, scope: !4218)
!4301 = !{!"2476"}
!4302 = !DILocation(line: 400, column: 23, scope: !4218)
!4303 = !{!"2477"}
!4304 = !DILocation(line: 400, column: 20, scope: !4218)
!4305 = !{!"2478"}
!4306 = !DILocation(line: 400, column: 27, scope: !4218)
!4307 = !{!"2479"}
!4308 = !DILocation(line: 400, column: 5, scope: !4218)
!4309 = !{!"2480"}
!4310 = !DILocation(line: 401, column: 16, scope: !4218)
!4311 = !{!"2481"}
!4312 = !DILocation(line: 401, column: 23, scope: !4218)
!4313 = !{!"2482"}
!4314 = !DILocation(line: 401, column: 20, scope: !4218)
!4315 = !{!"2483"}
!4316 = !DILocation(line: 401, column: 27, scope: !4218)
!4317 = !{!"2484"}
!4318 = !DILocation(line: 401, column: 5, scope: !4218)
!4319 = !{!"2485"}
!4320 = !DILocation(line: 402, column: 19, scope: !4218)
!4321 = !{!"2486"}
!4322 = !DILocation(line: 402, column: 16, scope: !4218)
!4323 = !{!"2487"}
!4324 = !DILocation(line: 402, column: 26, scope: !4218)
!4325 = !{!"2488"}
!4326 = !DILocation(line: 402, column: 23, scope: !4218)
!4327 = !{!"2489"}
!4328 = !DILocation(line: 402, column: 32, scope: !4218)
!4329 = !{!"2490"}
!4330 = !DILocation(line: 402, column: 29, scope: !4218)
!4331 = !{!"2491"}
!4332 = !DILocation(line: 402, column: 5, scope: !4218)
!4333 = !{!"2492"}
!4334 = !DILocation(line: 403, column: 19, scope: !4218)
!4335 = !{!"2493"}
!4336 = !DILocation(line: 403, column: 16, scope: !4218)
!4337 = !{!"2494"}
!4338 = !DILocation(line: 403, column: 26, scope: !4218)
!4339 = !{!"2495"}
!4340 = !DILocation(line: 403, column: 23, scope: !4218)
!4341 = !{!"2496"}
!4342 = !DILocation(line: 403, column: 33, scope: !4218)
!4343 = !{!"2497"}
!4344 = !DILocation(line: 403, column: 30, scope: !4218)
!4345 = !{!"2498"}
!4346 = !DILocation(line: 403, column: 5, scope: !4218)
!4347 = !{!"2499"}
!4348 = !DILocation(line: 404, column: 16, scope: !4218)
!4349 = !{!"2500"}
!4350 = !DILocation(line: 404, column: 20, scope: !4218)
!4351 = !{!"2501"}
!4352 = !DILocation(line: 404, column: 27, scope: !4218)
!4353 = !{!"2502"}
!4354 = !DILocation(line: 404, column: 24, scope: !4218)
!4355 = !{!"2503"}
!4356 = !DILocation(line: 404, column: 5, scope: !4218)
!4357 = !{!"2504"}
!4358 = !DILocation(line: 405, column: 19, scope: !4218)
!4359 = !{!"2505"}
!4360 = !DILocation(line: 405, column: 16, scope: !4218)
!4361 = !{!"2506"}
!4362 = !DILocation(line: 405, column: 26, scope: !4218)
!4363 = !{!"2507"}
!4364 = !DILocation(line: 405, column: 23, scope: !4218)
!4365 = !{!"2508"}
!4366 = !DILocation(line: 405, column: 32, scope: !4218)
!4367 = !{!"2509"}
!4368 = !DILocation(line: 405, column: 29, scope: !4218)
!4369 = !{!"2510"}
!4370 = !DILocation(line: 405, column: 5, scope: !4218)
!4371 = !{!"2511"}
!4372 = !DILocation(line: 406, column: 19, scope: !4218)
!4373 = !{!"2512"}
!4374 = !DILocation(line: 406, column: 16, scope: !4218)
!4375 = !{!"2513"}
!4376 = !DILocation(line: 406, column: 26, scope: !4218)
!4377 = !{!"2514"}
!4378 = !DILocation(line: 406, column: 23, scope: !4218)
!4379 = !{!"2515"}
!4380 = !DILocation(line: 406, column: 32, scope: !4218)
!4381 = !{!"2516"}
!4382 = !DILocation(line: 406, column: 29, scope: !4218)
!4383 = !{!"2517"}
!4384 = !DILocation(line: 406, column: 5, scope: !4218)
!4385 = !{!"2518"}
!4386 = !DILocation(line: 407, column: 19, scope: !4218)
!4387 = !{!"2519"}
!4388 = !DILocation(line: 407, column: 16, scope: !4218)
!4389 = !{!"2520"}
!4390 = !DILocation(line: 407, column: 23, scope: !4218)
!4391 = !{!"2521"}
!4392 = !DILocation(line: 407, column: 30, scope: !4218)
!4393 = !{!"2522"}
!4394 = !DILocation(line: 407, column: 27, scope: !4218)
!4395 = !{!"2523"}
!4396 = !DILocation(line: 407, column: 5, scope: !4218)
!4397 = !{!"2524"}
!4398 = !DILocation(line: 408, column: 19, scope: !4218)
!4399 = !{!"2525"}
!4400 = !DILocation(line: 408, column: 16, scope: !4218)
!4401 = !{!"2526"}
!4402 = !DILocation(line: 408, column: 23, scope: !4218)
!4403 = !{!"2527"}
!4404 = !DILocation(line: 408, column: 30, scope: !4218)
!4405 = !{!"2528"}
!4406 = !DILocation(line: 408, column: 27, scope: !4218)
!4407 = !{!"2529"}
!4408 = !DILocation(line: 408, column: 5, scope: !4218)
!4409 = !{!"2530"}
!4410 = !DILocation(line: 413, column: 1, scope: !4218)
!4411 = !{!"2531"}
!4412 = distinct !DISubprogram(name: "ecc_mul_fixed", scope: !864, file: !864, line: 422, type: !4413, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!4055, !23, !4415, !3750, !3027}
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!4416 = !{!"2532"}
!4417 = !{!"2533"}
!4418 = !{!"2534"}
!4419 = !{!"2535"}
!4420 = !DILocalVariable(name: "P_table", arg: 1, scope: !4412, file: !864, line: 422, type: !23)
!4421 = !DILocation(line: 0, scope: !4412)
!4422 = !{!"2536"}
!4423 = !DILocalVariable(name: "k", arg: 2, scope: !4412, file: !864, line: 422, type: !4415)
!4424 = !{!"2537"}
!4425 = !DILocalVariable(name: "Q", arg: 3, scope: !4412, file: !864, line: 422, type: !3750)
!4426 = !{!"2538"}
!4427 = !DILocalVariable(name: "curve", arg: 4, scope: !4412, file: !864, line: 422, type: !3027)
!4428 = !{!"2539"}
!4429 = !DILocalVariable(name: "w", scope: !4412, file: !864, line: 431, type: !12)
!4430 = !{!"2540"}
!4431 = !DILocalVariable(name: "v", scope: !4412, file: !864, line: 431, type: !12)
!4432 = !{!"2541"}
!4433 = !DILocalVariable(name: "d", scope: !4412, file: !864, line: 431, type: !12)
!4434 = !{!"2542"}
!4435 = !DILocalVariable(name: "e", scope: !4412, file: !864, line: 431, type: !12)
!4436 = !{!"2543"}
!4437 = !DILocalVariable(name: "digit", scope: !4412, file: !864, line: 432, type: !12)
!4438 = !{!"2544"}
!4439 = !DILocalVariable(name: "digits", scope: !4412, file: !864, line: 432, type: !4440)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8672, elements: !4441)
!4441 = !{!4442}
!4442 = !DISubrange(count: 271)
!4443 = !DILocation(line: 432, column: 29, scope: !4412)
!4444 = !{!"2545"}
!4445 = !{!"2546"}
!4446 = !{!"2547"}
!4447 = !DILocalVariable(name: "temp", scope: !4412, file: !864, line: 433, type: !45)
!4448 = !DILocation(line: 433, column: 14, scope: !4412)
!4449 = !{!"2548"}
!4450 = !DILocalVariable(name: "R", scope: !4412, file: !864, line: 434, type: !4451)
!4451 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_extproj_t", file: !7, line: 210, baseType: !4452)
!4452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3787, size: 1280, elements: !36)
!4453 = !DILocation(line: 434, column: 21, scope: !4412)
!4454 = !{!"2549"}
!4455 = !DILocalVariable(name: "S", scope: !4412, file: !864, line: 435, type: !24)
!4456 = !DILocation(line: 435, column: 21, scope: !4412)
!4457 = !{!"2550"}
!4458 = !DILocation(line: 438, column: 18, scope: !4412)
!4459 = !{!"2551"}
!4460 = !DILocation(line: 438, column: 31, scope: !4412)
!4461 = !{!"2552"}
!4462 = !DILocation(line: 438, column: 5, scope: !4412)
!4463 = !{!"2553"}
!4464 = !DILocation(line: 439, column: 23, scope: !4412)
!4465 = !{!"2554"}
!4466 = !DILocation(line: 439, column: 46, scope: !4412)
!4467 = !{!"2555"}
!4468 = !DILocation(line: 439, column: 36, scope: !4412)
!4469 = !{!"2556"}
!4470 = !DILocation(line: 439, column: 5, scope: !4412)
!4471 = !{!"2557"}
!4472 = !DILocation(line: 440, column: 21, scope: !4412)
!4473 = !{!"2558"}
!4474 = !DILocation(line: 440, column: 27, scope: !4412)
!4475 = !{!"2559"}
!4476 = !DILocation(line: 440, column: 5, scope: !4412)
!4477 = !{!"2560"}
!4478 = !DILocation(line: 443, column: 21, scope: !4412)
!4479 = !{!"2561"}
!4480 = !DILocation(line: 443, column: 23, scope: !4412)
!4481 = !{!"2562"}
!4482 = !DILocation(line: 443, column: 13, scope: !4412)
!4483 = !{!"2563"}
!4484 = !{!"2564"}
!4485 = !{!"2565"}
!4486 = !{!"2566"}
!4487 = !DILocation(line: 444, column: 22, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4412, file: !864, line: 444, column: 5)
!4489 = !{!"2567"}
!4490 = !DILocation(line: 444, column: 25, scope: !4488)
!4491 = !{!"2568"}
!4492 = !DILocation(line: 444, column: 27, scope: !4488)
!4493 = !{!"2569"}
!4494 = !DILocalVariable(name: "i", scope: !4412, file: !864, line: 436, type: !13)
!4495 = !{!"2570"}
!4496 = !DILocation(line: 444, column: 10, scope: !4488)
!4497 = !{!"2571"}
!4498 = !{!"2572"}
!4499 = !DILocation(line: 0, scope: !4488)
!4500 = !{!"2573"}
!4501 = !{!"2574"}
!4502 = !{!"2575"}
!4503 = !DILocation(line: 444, column: 44, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4488, file: !864, line: 444, column: 5)
!4505 = !{!"2576"}
!4506 = !DILocation(line: 444, column: 46, scope: !4504)
!4507 = !{!"2577"}
!4508 = !DILocation(line: 444, column: 34, scope: !4504)
!4509 = !{!"2578"}
!4510 = !DILocation(line: 444, column: 5, scope: !4488)
!4511 = !{!"2579"}
!4512 = !DILocation(line: 446, column: 18, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4504, file: !864, line: 445, column: 5)
!4514 = !{!"2580"}
!4515 = !DILocation(line: 446, column: 27, scope: !4513)
!4516 = !{!"2581"}
!4517 = !{!"2582"}
!4518 = !{!"2583"}
!4519 = !DILocation(line: 446, column: 25, scope: !4513)
!4520 = !{!"2584"}
!4521 = !{!"2585"}
!4522 = !DILocation(line: 447, column: 5, scope: !4513)
!4523 = !{!"2586"}
!4524 = !DILocation(line: 444, column: 56, scope: !4504)
!4525 = !{!"2587"}
!4526 = !{!"2588"}
!4527 = !DILocation(line: 444, column: 5, scope: !4504)
!4528 = distinct !{!4528, !4510, !4529, !517}
!4529 = !DILocation(line: 447, column: 5, scope: !4488)
!4530 = !{!"2589"}
!4531 = !DILocation(line: 449, column: 39, scope: !4412)
!4532 = !{!"2590"}
!4533 = !DILocation(line: 449, column: 51, scope: !4412)
!4534 = !{!"2591"}
!4535 = !DILocation(line: 449, column: 46, scope: !4412)
!4536 = !{!"2592"}
!4537 = !DILocation(line: 449, column: 42, scope: !4412)
!4538 = !{!"2593"}
!4539 = !DILocation(line: 449, column: 36, scope: !4412)
!4540 = !{!"2594"}
!4541 = !{!"2595"}
!4542 = !DILocation(line: 449, column: 57, scope: !4412)
!4543 = !{!"2596"}
!4544 = !DILocation(line: 449, column: 75, scope: !4412)
!4545 = !{!"2597"}
!4546 = !DILocation(line: 449, column: 67, scope: !4412)
!4547 = !{!"2598"}
!4548 = !{!"2599"}
!4549 = !{!"2600"}
!4550 = !DILocation(line: 449, column: 5, scope: !4412)
!4551 = !{!"2601"}
!4552 = !DILocation(line: 450, column: 14, scope: !4412)
!4553 = !{!"2602"}
!4554 = !DILocation(line: 450, column: 17, scope: !4412)
!4555 = !{!"2603"}
!4556 = !DILocation(line: 450, column: 5, scope: !4412)
!4557 = !{!"2604"}
!4558 = !DILocalVariable(name: "j", scope: !4412, file: !864, line: 431, type: !12)
!4559 = !{!"2605"}
!4560 = !DILocation(line: 452, column: 10, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4412, file: !864, line: 452, column: 5)
!4562 = !{!"2606"}
!4563 = !DILocation(line: 0, scope: !4561)
!4564 = !{!"2607"}
!4565 = !{!"2608"}
!4566 = !DILocation(line: 452, column: 23, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4561, file: !864, line: 452, column: 5)
!4568 = !{!"2609"}
!4569 = !DILocation(line: 452, column: 19, scope: !4567)
!4570 = !{!"2610"}
!4571 = !DILocation(line: 452, column: 5, scope: !4561)
!4572 = !{!"2611"}
!4573 = !DILocation(line: 454, column: 25, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4567, file: !864, line: 453, column: 5)
!4575 = !{!"2612"}
!4576 = !DILocation(line: 454, column: 30, scope: !4574)
!4577 = !{!"2613"}
!4578 = !DILocation(line: 454, column: 33, scope: !4574)
!4579 = !{!"2614"}
!4580 = !DILocation(line: 454, column: 27, scope: !4574)
!4581 = !{!"2615"}
!4582 = !DILocation(line: 454, column: 35, scope: !4574)
!4583 = !{!"2616"}
!4584 = !DILocation(line: 454, column: 17, scope: !4574)
!4585 = !{!"2617"}
!4586 = !{!"2618"}
!4587 = !{!"2619"}
!4588 = !{!"2620"}
!4589 = !DILocation(line: 455, column: 26, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4574, file: !864, line: 455, column: 9)
!4591 = !{!"2621"}
!4592 = !DILocation(line: 455, column: 29, scope: !4590)
!4593 = !{!"2622"}
!4594 = !DILocation(line: 455, column: 34, scope: !4590)
!4595 = !{!"2623"}
!4596 = !DILocation(line: 455, column: 37, scope: !4590)
!4597 = !{!"2624"}
!4598 = !DILocation(line: 455, column: 31, scope: !4590)
!4599 = !{!"2625"}
!4600 = !DILocation(line: 455, column: 39, scope: !4590)
!4601 = !{!"2626"}
!4602 = !{!"2627"}
!4603 = !DILocation(line: 455, column: 14, scope: !4590)
!4604 = !{!"2628"}
!4605 = !DILocation(line: 0, scope: !4574)
!4606 = !{!"2629"}
!4607 = !DILocation(line: 0, scope: !4590)
!4608 = !{!"2630"}
!4609 = !{!"2631"}
!4610 = !{!"2632"}
!4611 = !DILocation(line: 455, column: 56, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4590, file: !864, line: 455, column: 9)
!4613 = !{!"2633"}
!4614 = !DILocation(line: 455, column: 61, scope: !4612)
!4615 = !{!"2634"}
!4616 = !DILocation(line: 455, column: 64, scope: !4612)
!4617 = !{!"2635"}
!4618 = !DILocation(line: 455, column: 58, scope: !4612)
!4619 = !{!"2636"}
!4620 = !DILocation(line: 455, column: 66, scope: !4612)
!4621 = !{!"2637"}
!4622 = !DILocation(line: 455, column: 46, scope: !4612)
!4623 = !{!"2638"}
!4624 = !DILocation(line: 455, column: 9, scope: !4590)
!4625 = !{!"2639"}
!4626 = !DILocation(line: 457, column: 22, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4612, file: !864, line: 456, column: 9)
!4628 = !{!"2640"}
!4629 = !DILocation(line: 457, column: 31, scope: !4627)
!4630 = !{!"2641"}
!4631 = !{!"2642"}
!4632 = !{!"2643"}
!4633 = !DILocation(line: 457, column: 29, scope: !4627)
!4634 = !{!"2644"}
!4635 = !{!"2645"}
!4636 = !DILocation(line: 458, column: 9, scope: !4627)
!4637 = !{!"2646"}
!4638 = !DILocation(line: 455, column: 76, scope: !4612)
!4639 = !{!"2647"}
!4640 = !{!"2648"}
!4641 = !DILocation(line: 455, column: 9, scope: !4612)
!4642 = distinct !{!4642, !4624, !4643, !517}
!4643 = !DILocation(line: 458, column: 9, scope: !4590)
!4644 = !{!"2649"}
!4645 = !DILocation(line: 460, column: 43, scope: !4574)
!4646 = !{!"2650"}
!4647 = !DILocation(line: 460, column: 45, scope: !4574)
!4648 = !{!"2651"}
!4649 = !DILocation(line: 460, column: 57, scope: !4574)
!4650 = !{!"2652"}
!4651 = !DILocation(line: 460, column: 52, scope: !4574)
!4652 = !{!"2653"}
!4653 = !DILocation(line: 460, column: 48, scope: !4574)
!4654 = !{!"2654"}
!4655 = !DILocation(line: 460, column: 40, scope: !4574)
!4656 = !{!"2655"}
!4657 = !{!"2656"}
!4658 = !DILocation(line: 460, column: 63, scope: !4574)
!4659 = !{!"2657"}
!4660 = !DILocation(line: 460, column: 84, scope: !4574)
!4661 = !{!"2658"}
!4662 = !DILocation(line: 460, column: 87, scope: !4574)
!4663 = !{!"2659"}
!4664 = !DILocation(line: 460, column: 81, scope: !4574)
!4665 = !{!"2660"}
!4666 = !DILocation(line: 460, column: 89, scope: !4574)
!4667 = !{!"2661"}
!4668 = !DILocation(line: 460, column: 73, scope: !4574)
!4669 = !{!"2662"}
!4670 = !{!"2663"}
!4671 = !{!"2664"}
!4672 = !DILocation(line: 460, column: 9, scope: !4574)
!4673 = !{!"2665"}
!4674 = !DILocation(line: 461, column: 17, scope: !4574)
!4675 = !{!"2666"}
!4676 = !DILocation(line: 461, column: 20, scope: !4574)
!4677 = !{!"2667"}
!4678 = !DILocation(line: 461, column: 9, scope: !4574)
!4679 = !{!"2668"}
!4680 = !DILocation(line: 462, column: 5, scope: !4574)
!4681 = !{!"2669"}
!4682 = !DILocation(line: 452, column: 29, scope: !4567)
!4683 = !{!"2670"}
!4684 = !{!"2671"}
!4685 = !DILocation(line: 452, column: 5, scope: !4567)
!4686 = distinct !{!4686, !4571, !4687, !517}
!4687 = !DILocation(line: 462, column: 5, scope: !4561)
!4688 = !{!"2672"}
!4689 = !DILocation(line: 464, column: 17, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4412, file: !864, line: 464, column: 5)
!4691 = !{!"2673"}
!4692 = !DILocalVariable(name: "ii", scope: !4412, file: !864, line: 436, type: !13)
!4693 = !{!"2674"}
!4694 = !DILocation(line: 464, column: 10, scope: !4690)
!4695 = !{!"2675"}
!4696 = !DILocation(line: 0, scope: !4690)
!4697 = !{!"2676"}
!4698 = !{!"2677"}
!4699 = !DILocation(line: 464, column: 25, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4690, file: !864, line: 464, column: 5)
!4701 = !{!"2678"}
!4702 = !DILocation(line: 464, column: 5, scope: !4690)
!4703 = !{!"2679"}
!4704 = !DILocation(line: 466, column: 19, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4700, file: !864, line: 465, column: 5)
!4706 = !{!"2680"}
!4707 = !DILocation(line: 466, column: 9, scope: !4705)
!4708 = !{!"2681"}
!4709 = !{!"2682"}
!4710 = !DILocation(line: 467, column: 14, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4705, file: !864, line: 467, column: 9)
!4712 = !{!"2683"}
!4713 = !DILocation(line: 0, scope: !4711)
!4714 = !{!"2684"}
!4715 = !{!"2685"}
!4716 = !DILocation(line: 467, column: 23, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4711, file: !864, line: 467, column: 9)
!4718 = !{!"2686"}
!4719 = !DILocation(line: 467, column: 9, scope: !4711)
!4720 = !{!"2687"}
!4721 = !DILocation(line: 469, column: 29, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4717, file: !864, line: 468, column: 9)
!4723 = !{!"2688"}
!4724 = !DILocation(line: 469, column: 33, scope: !4722)
!4725 = !{!"2689"}
!4726 = !DILocation(line: 469, column: 31, scope: !4722)
!4727 = !{!"2690"}
!4728 = !DILocation(line: 469, column: 35, scope: !4722)
!4729 = !{!"2691"}
!4730 = !DILocation(line: 469, column: 38, scope: !4722)
!4731 = !{!"2692"}
!4732 = !DILocation(line: 469, column: 21, scope: !4722)
!4733 = !{!"2693"}
!4734 = !{!"2694"}
!4735 = !{!"2695"}
!4736 = !{!"2696"}
!4737 = !DILocation(line: 470, column: 30, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4722, file: !864, line: 470, column: 13)
!4739 = !{!"2697"}
!4740 = !DILocation(line: 470, column: 33, scope: !4738)
!4741 = !{!"2698"}
!4742 = !DILocation(line: 470, column: 37, scope: !4738)
!4743 = !{!"2699"}
!4744 = !DILocation(line: 470, column: 35, scope: !4738)
!4745 = !{!"2700"}
!4746 = !DILocation(line: 470, column: 39, scope: !4738)
!4747 = !{!"2701"}
!4748 = !DILocation(line: 470, column: 42, scope: !4738)
!4749 = !{!"2702"}
!4750 = !{!"2703"}
!4751 = !DILocation(line: 470, column: 18, scope: !4738)
!4752 = !{!"2704"}
!4753 = !DILocation(line: 0, scope: !4722)
!4754 = !{!"2705"}
!4755 = !DILocation(line: 0, scope: !4738)
!4756 = !{!"2706"}
!4757 = !{!"2707"}
!4758 = !{!"2708"}
!4759 = !DILocation(line: 470, column: 59, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4738, file: !864, line: 470, column: 13)
!4761 = !{!"2709"}
!4762 = !DILocation(line: 470, column: 63, scope: !4760)
!4763 = !{!"2710"}
!4764 = !DILocation(line: 470, column: 61, scope: !4760)
!4765 = !{!"2711"}
!4766 = !DILocation(line: 470, column: 65, scope: !4760)
!4767 = !{!"2712"}
!4768 = !DILocation(line: 470, column: 68, scope: !4760)
!4769 = !{!"2713"}
!4770 = !DILocation(line: 470, column: 49, scope: !4760)
!4771 = !{!"2714"}
!4772 = !DILocation(line: 470, column: 13, scope: !4738)
!4773 = !{!"2715"}
!4774 = !DILocation(line: 472, column: 26, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4760, file: !864, line: 471, column: 13)
!4776 = !{!"2716"}
!4777 = !DILocation(line: 472, column: 35, scope: !4775)
!4778 = !{!"2717"}
!4779 = !{!"2718"}
!4780 = !{!"2719"}
!4781 = !DILocation(line: 472, column: 33, scope: !4775)
!4782 = !{!"2720"}
!4783 = !{!"2721"}
!4784 = !DILocation(line: 473, column: 13, scope: !4775)
!4785 = !{!"2722"}
!4786 = !DILocation(line: 470, column: 78, scope: !4760)
!4787 = !{!"2723"}
!4788 = !{!"2724"}
!4789 = !DILocation(line: 470, column: 13, scope: !4760)
!4790 = distinct !{!4790, !4772, !4791, !517}
!4791 = !DILocation(line: 473, column: 13, scope: !4738)
!4792 = !{!"2725"}
!4793 = !DILocation(line: 475, column: 47, scope: !4722)
!4794 = !{!"2726"}
!4795 = !DILocation(line: 475, column: 49, scope: !4722)
!4796 = !{!"2727"}
!4797 = !DILocation(line: 475, column: 61, scope: !4722)
!4798 = !{!"2728"}
!4799 = !DILocation(line: 475, column: 56, scope: !4722)
!4800 = !{!"2729"}
!4801 = !DILocation(line: 475, column: 52, scope: !4722)
!4802 = !{!"2730"}
!4803 = !DILocation(line: 475, column: 44, scope: !4722)
!4804 = !{!"2731"}
!4805 = !{!"2732"}
!4806 = !DILocation(line: 475, column: 67, scope: !4722)
!4807 = !{!"2733"}
!4808 = !DILocation(line: 475, column: 87, scope: !4722)
!4809 = !{!"2734"}
!4810 = !DILocation(line: 475, column: 85, scope: !4722)
!4811 = !{!"2735"}
!4812 = !DILocation(line: 475, column: 89, scope: !4722)
!4813 = !{!"2736"}
!4814 = !DILocation(line: 475, column: 92, scope: !4722)
!4815 = !{!"2737"}
!4816 = !DILocation(line: 475, column: 77, scope: !4722)
!4817 = !{!"2738"}
!4818 = !{!"2739"}
!4819 = !{!"2740"}
!4820 = !DILocation(line: 475, column: 13, scope: !4722)
!4821 = !{!"2741"}
!4822 = !DILocation(line: 476, column: 21, scope: !4722)
!4823 = !{!"2742"}
!4824 = !DILocation(line: 476, column: 24, scope: !4722)
!4825 = !{!"2743"}
!4826 = !DILocation(line: 476, column: 13, scope: !4722)
!4827 = !{!"2744"}
!4828 = !DILocation(line: 477, column: 9, scope: !4722)
!4829 = !{!"2745"}
!4830 = !DILocation(line: 467, column: 29, scope: !4717)
!4831 = !{!"2746"}
!4832 = !{!"2747"}
!4833 = !DILocation(line: 467, column: 9, scope: !4717)
!4834 = distinct !{!4834, !4719, !4835, !517}
!4835 = !DILocation(line: 477, column: 9, scope: !4711)
!4836 = !{!"2748"}
!4837 = !DILocation(line: 478, column: 5, scope: !4705)
!4838 = !{!"2749"}
!4839 = !DILocation(line: 464, column: 33, scope: !4700)
!4840 = !{!"2750"}
!4841 = !{!"2751"}
!4842 = !DILocation(line: 464, column: 5, scope: !4700)
!4843 = distinct !{!4843, !4702, !4844, !517}
!4844 = !DILocation(line: 478, column: 5, scope: !4690)
!4845 = !{!"2752"}
!4846 = !DILocation(line: 479, column: 13, scope: !4412)
!4847 = !{!"2753"}
!4848 = !DILocation(line: 479, column: 5, scope: !4412)
!4849 = !{!"2754"}
!4850 = !DILocation(line: 485, column: 5, scope: !4412)
!4851 = !{!"2755"}
!4852 = distinct !DISubprogram(name: "mLSB_set_recode", scope: !864, file: !864, line: 489, type: !4853, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{null, !4415, !4855}
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!4856 = !DILocalVariable(name: "scalar", arg: 1, scope: !4852, file: !864, line: 489, type: !4415)
!4857 = !DILocation(line: 0, scope: !4852)
!4858 = !{!"2756"}
!4859 = !DILocalVariable(name: "digits", arg: 2, scope: !4852, file: !864, line: 489, type: !4855)
!4860 = !{!"2757"}
!4861 = !DILocalVariable(name: "d", scope: !4852, file: !864, line: 496, type: !12)
!4862 = !{!"2758"}
!4863 = !DILocalVariable(name: "l", scope: !4852, file: !864, line: 496, type: !12)
!4864 = !{!"2759"}
!4865 = !DILocation(line: 499, column: 13, scope: !4852)
!4866 = !{!"2760"}
!4867 = !DILocation(line: 499, column: 5, scope: !4852)
!4868 = !{!"2761"}
!4869 = !{!"2762"}
!4870 = !DILocation(line: 499, column: 17, scope: !4852)
!4871 = !{!"2763"}
!4872 = !DILocalVariable(name: "j", scope: !4852, file: !864, line: 496, type: !12)
!4873 = !{!"2764"}
!4874 = !DILocation(line: 502, column: 10, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4852, file: !864, line: 502, column: 5)
!4876 = !{!"2765"}
!4877 = !DILocation(line: 0, scope: !4875)
!4878 = !{!"2766"}
!4879 = !{!"2767"}
!4880 = !DILocation(line: 502, column: 19, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4875, file: !864, line: 502, column: 5)
!4882 = !{!"2768"}
!4883 = !DILocation(line: 502, column: 5, scope: !4875)
!4884 = !{!"2769"}
!4885 = !DILocation(line: 503, column: 9, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4881, file: !864, line: 502, column: 46)
!4887 = !{!"2770"}
!4888 = !{!"2771"}
!4889 = !{!"2772"}
!4890 = !{!"2773"}
!4891 = !{!"2774"}
!4892 = !{!"2775"}
!4893 = !{!"2776"}
!4894 = !{!"2777"}
!4895 = !{!"2778"}
!4896 = !{!"2779"}
!4897 = !{!"2780"}
!4898 = !{!"2781"}
!4899 = !{!"2782"}
!4900 = !DILocation(line: 504, column: 5, scope: !4886)
!4901 = !{!"2783"}
!4902 = !DILocation(line: 502, column: 42, scope: !4881)
!4903 = !{!"2784"}
!4904 = !{!"2785"}
!4905 = !DILocation(line: 502, column: 5, scope: !4881)
!4906 = distinct !{!4906, !4883, !4907, !517}
!4907 = !DILocation(line: 504, column: 5, scope: !4875)
!4908 = !{!"2786"}
!4909 = !DILocation(line: 505, column: 5, scope: !4852)
!4910 = !{!"2787"}
!4911 = !DILocation(line: 505, column: 30, scope: !4852)
!4912 = !{!"2788"}
!4913 = !{!"2789"}
!4914 = !{!"2790"}
!4915 = !DILocalVariable(name: "i", scope: !4852, file: !864, line: 496, type: !12)
!4916 = !{!"2791"}
!4917 = !DILocation(line: 507, column: 10, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4852, file: !864, line: 507, column: 5)
!4919 = !{!"2792"}
!4920 = !DILocation(line: 0, scope: !4918)
!4921 = !{!"2793"}
!4922 = !{!"2794"}
!4923 = !DILocation(line: 507, column: 23, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4918, file: !864, line: 507, column: 5)
!4925 = !{!"2795"}
!4926 = !DILocation(line: 507, column: 19, scope: !4924)
!4927 = !{!"2796"}
!4928 = !DILocation(line: 507, column: 5, scope: !4918)
!4929 = !{!"2797"}
!4930 = !DILocation(line: 509, column: 37, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4924, file: !864, line: 508, column: 5)
!4932 = !{!"2798"}
!4933 = !{!"2799"}
!4934 = !DILocation(line: 509, column: 47, scope: !4931)
!4935 = !{!"2800"}
!4936 = !DILocation(line: 509, column: 52, scope: !4931)
!4937 = !{!"2801"}
!4938 = !DILocation(line: 509, column: 21, scope: !4931)
!4939 = !{!"2802"}
!4940 = !DILocation(line: 509, column: 9, scope: !4931)
!4941 = !{!"2803"}
!4942 = !{!"2804"}
!4943 = !DILocation(line: 509, column: 19, scope: !4931)
!4944 = !{!"2805"}
!4945 = !{!"2806"}
!4946 = !DILocation(line: 512, column: 14, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4931, file: !864, line: 512, column: 9)
!4948 = !{!"2807"}
!4949 = !DILocation(line: 0, scope: !4947)
!4950 = !{!"2808"}
!4951 = !{!"2809"}
!4952 = !DILocation(line: 512, column: 23, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4947, file: !864, line: 512, column: 9)
!4954 = !{!"2810"}
!4955 = !DILocation(line: 512, column: 9, scope: !4947)
!4956 = !{!"2811"}
!4957 = !DILocation(line: 513, column: 13, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4953, file: !864, line: 512, column: 50)
!4959 = !{!"2812"}
!4960 = !{!"2813"}
!4961 = !{!"2814"}
!4962 = !{!"2815"}
!4963 = !{!"2816"}
!4964 = !{!"2817"}
!4965 = !{!"2818"}
!4966 = !{!"2819"}
!4967 = !{!"2820"}
!4968 = !{!"2821"}
!4969 = !{!"2822"}
!4970 = !{!"2823"}
!4971 = !{!"2824"}
!4972 = !DILocation(line: 514, column: 9, scope: !4958)
!4973 = !{!"2825"}
!4974 = !DILocation(line: 512, column: 46, scope: !4953)
!4975 = !{!"2826"}
!4976 = !{!"2827"}
!4977 = !DILocation(line: 512, column: 9, scope: !4953)
!4978 = distinct !{!4978, !4955, !4979, !517}
!4979 = !DILocation(line: 514, column: 9, scope: !4947)
!4980 = !{!"2828"}
!4981 = !DILocation(line: 515, column: 9, scope: !4931)
!4982 = !{!"2829"}
!4983 = !DILocation(line: 515, column: 34, scope: !4931)
!4984 = !{!"2830"}
!4985 = !{!"2831"}
!4986 = !{!"2832"}
!4987 = !DILocation(line: 516, column: 5, scope: !4931)
!4988 = !{!"2833"}
!4989 = !DILocation(line: 507, column: 29, scope: !4924)
!4990 = !{!"2834"}
!4991 = !{!"2835"}
!4992 = !DILocation(line: 507, column: 5, scope: !4924)
!4993 = distinct !{!4993, !4928, !4994, !517}
!4994 = !DILocation(line: 516, column: 5, scope: !4918)
!4995 = !{!"2836"}
!4996 = !{!"2837"}
!4997 = !DILocation(line: 518, column: 10, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4852, file: !864, line: 518, column: 5)
!4999 = !{!"2838"}
!5000 = !DILocation(line: 0, scope: !4998)
!5001 = !{!"2839"}
!5002 = !{!"2840"}
!5003 = !DILocation(line: 518, column: 19, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4998, file: !864, line: 518, column: 5)
!5005 = !{!"2841"}
!5006 = !DILocation(line: 518, column: 5, scope: !4998)
!5007 = !{!"2842"}
!5008 = !DILocation(line: 520, column: 36, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5004, file: !864, line: 519, column: 5)
!5010 = !{!"2843"}
!5011 = !{!"2844"}
!5012 = !DILocation(line: 520, column: 46, scope: !5009)
!5013 = !{!"2845"}
!5014 = !DILocation(line: 520, column: 21, scope: !5009)
!5015 = !{!"2846"}
!5016 = !DILocation(line: 520, column: 9, scope: !5009)
!5017 = !{!"2847"}
!5018 = !{!"2848"}
!5019 = !DILocation(line: 520, column: 19, scope: !5009)
!5020 = !{!"2849"}
!5021 = !{!"2850"}
!5022 = !DILocation(line: 523, column: 14, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5009, file: !864, line: 523, column: 9)
!5024 = !{!"2851"}
!5025 = !DILocation(line: 0, scope: !5023)
!5026 = !{!"2852"}
!5027 = !{!"2853"}
!5028 = !DILocation(line: 523, column: 23, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5023, file: !864, line: 523, column: 9)
!5030 = !{!"2854"}
!5031 = !DILocation(line: 523, column: 9, scope: !5023)
!5032 = !{!"2855"}
!5033 = !DILocation(line: 524, column: 13, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5029, file: !864, line: 523, column: 50)
!5035 = !{!"2856"}
!5036 = !{!"2857"}
!5037 = !{!"2858"}
!5038 = !{!"2859"}
!5039 = !{!"2860"}
!5040 = !{!"2861"}
!5041 = !{!"2862"}
!5042 = !{!"2863"}
!5043 = !{!"2864"}
!5044 = !{!"2865"}
!5045 = !{!"2866"}
!5046 = !{!"2867"}
!5047 = !{!"2868"}
!5048 = !DILocation(line: 525, column: 9, scope: !5034)
!5049 = !{!"2869"}
!5050 = !DILocation(line: 523, column: 46, scope: !5029)
!5051 = !{!"2870"}
!5052 = !{!"2871"}
!5053 = !DILocation(line: 523, column: 9, scope: !5029)
!5054 = distinct !{!5054, !5031, !5055, !517}
!5055 = !DILocation(line: 525, column: 9, scope: !5023)
!5056 = !{!"2872"}
!5057 = !DILocation(line: 526, column: 9, scope: !5009)
!5058 = !{!"2873"}
!5059 = !DILocation(line: 526, column: 34, scope: !5009)
!5060 = !{!"2874"}
!5061 = !{!"2875"}
!5062 = !{!"2876"}
!5063 = !DILocation(line: 528, column: 32, scope: !5009)
!5064 = !{!"2877"}
!5065 = !DILocation(line: 528, column: 35, scope: !5009)
!5066 = !{!"2878"}
!5067 = !DILocation(line: 528, column: 29, scope: !5009)
!5068 = !{!"2879"}
!5069 = !DILocation(line: 528, column: 21, scope: !5009)
!5070 = !{!"2880"}
!5071 = !{!"2881"}
!5072 = !{!"2882"}
!5073 = !DILocation(line: 528, column: 19, scope: !5009)
!5074 = !{!"2883"}
!5075 = !DILocation(line: 528, column: 42, scope: !5009)
!5076 = !{!"2884"}
!5077 = !{!"2885"}
!5078 = !{!"2886"}
!5079 = !DILocation(line: 528, column: 40, scope: !5009)
!5080 = !{!"2887"}
!5081 = !DILocation(line: 528, column: 16, scope: !5009)
!5082 = !{!"2888"}
!5083 = !DILocalVariable(name: "temp", scope: !4852, file: !864, line: 497, type: !20)
!5084 = !{!"2889"}
!5085 = !DILocation(line: 531, column: 21, scope: !5009)
!5086 = !{!"2890"}
!5087 = !{!"2891"}
!5088 = !DILocation(line: 531, column: 31, scope: !5009)
!5089 = !{!"2892"}
!5090 = !DILocation(line: 531, column: 9, scope: !5009)
!5091 = !{!"2893"}
!5092 = !DILocation(line: 531, column: 19, scope: !5009)
!5093 = !{!"2894"}
!5094 = !DILocation(line: 532, column: 61, scope: !5009)
!5095 = !{!"2895"}
!5096 = !{!"2896"}
!5097 = !DILocation(line: 532, column: 52, scope: !5009)
!5098 = !{!"2897"}
!5099 = !DILocation(line: 532, column: 35, scope: !5009)
!5100 = !{!"2898"}
!5101 = !DILocation(line: 532, column: 25, scope: !5009)
!5102 = !{!"2899"}
!5103 = !DILocation(line: 532, column: 23, scope: !5009)
!5104 = !{!"2900"}
!5105 = !DILocalVariable(name: "carry", scope: !4852, file: !864, line: 497, type: !20)
!5106 = !{!"2901"}
!5107 = !{!"2902"}
!5108 = !DILocation(line: 533, column: 14, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5009, file: !864, line: 533, column: 9)
!5110 = !{!"2903"}
!5111 = !DILocation(line: 0, scope: !5109)
!5112 = !{!"2904"}
!5113 = !DILocation(line: 0, scope: !5009)
!5114 = !{!"2905"}
!5115 = !{!"2906"}
!5116 = !{!"2907"}
!5117 = !DILocation(line: 533, column: 23, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5109, file: !864, line: 533, column: 9)
!5119 = !{!"2908"}
!5120 = !DILocation(line: 533, column: 9, scope: !5109)
!5121 = !{!"2909"}
!5122 = !DILocation(line: 535, column: 25, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5118, file: !864, line: 534, column: 9)
!5124 = !{!"2910"}
!5125 = !{!"2911"}
!5126 = !{!"2912"}
!5127 = !DILocation(line: 535, column: 35, scope: !5123)
!5128 = !{!"2913"}
!5129 = !DILocation(line: 535, column: 13, scope: !5123)
!5130 = !{!"2914"}
!5131 = !{!"2915"}
!5132 = !DILocation(line: 535, column: 23, scope: !5123)
!5133 = !{!"2916"}
!5134 = !DILocation(line: 536, column: 66, scope: !5123)
!5135 = !{!"2917"}
!5136 = !{!"2918"}
!5137 = !{!"2919"}
!5138 = !DILocation(line: 536, column: 57, scope: !5123)
!5139 = !{!"2920"}
!5140 = !DILocation(line: 536, column: 40, scope: !5123)
!5141 = !{!"2921"}
!5142 = !DILocation(line: 536, column: 30, scope: !5123)
!5143 = !{!"2922"}
!5144 = !DILocation(line: 536, column: 28, scope: !5123)
!5145 = !{!"2923"}
!5146 = !{!"2924"}
!5147 = !DILocation(line: 537, column: 9, scope: !5123)
!5148 = !{!"2925"}
!5149 = !DILocation(line: 533, column: 42, scope: !5118)
!5150 = !{!"2926"}
!5151 = !{!"2927"}
!5152 = !DILocation(line: 533, column: 9, scope: !5118)
!5153 = distinct !{!5153, !5120, !5154, !517}
!5154 = !DILocation(line: 537, column: 9, scope: !5109)
!5155 = !{!"2928"}
!5156 = !DILocation(line: 538, column: 5, scope: !5009)
!5157 = !{!"2929"}
!5158 = !DILocation(line: 518, column: 25, scope: !5004)
!5159 = !{!"2930"}
!5160 = !{!"2931"}
!5161 = !DILocation(line: 518, column: 5, scope: !5004)
!5162 = distinct !{!5162, !5006, !5163, !517}
!5163 = !DILocation(line: 538, column: 5, scope: !4998)
!5164 = !{!"2932"}
!5165 = !DILocation(line: 539, column: 5, scope: !4852)
!5166 = !{!"2933"}
!5167 = distinct !DISubprogram(name: "R5_to_R1", scope: !864, file: !864, line: 373, type: !4207, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5168 = !DILocalVariable(name: "P", arg: 1, scope: !5167, file: !864, line: 373, type: !907)
!5169 = !DILocation(line: 0, scope: !5167)
!5170 = !{!"2934"}
!5171 = !DILocalVariable(name: "Q", arg: 2, scope: !5167, file: !864, line: 373, type: !3786)
!5172 = !{!"2935"}
!5173 = !DILocation(line: 377, column: 19, scope: !5167)
!5174 = !{!"2936"}
!5175 = !DILocation(line: 377, column: 16, scope: !5167)
!5176 = !{!"2937"}
!5177 = !DILocation(line: 377, column: 26, scope: !5167)
!5178 = !{!"2938"}
!5179 = !DILocation(line: 377, column: 23, scope: !5167)
!5180 = !{!"2939"}
!5181 = !DILocation(line: 377, column: 33, scope: !5167)
!5182 = !{!"2940"}
!5183 = !DILocation(line: 377, column: 30, scope: !5167)
!5184 = !{!"2941"}
!5185 = !DILocation(line: 377, column: 5, scope: !5167)
!5186 = !{!"2942"}
!5187 = !DILocation(line: 378, column: 19, scope: !5167)
!5188 = !{!"2943"}
!5189 = !DILocation(line: 378, column: 16, scope: !5167)
!5190 = !{!"2944"}
!5191 = !DILocation(line: 378, column: 26, scope: !5167)
!5192 = !{!"2945"}
!5193 = !DILocation(line: 378, column: 23, scope: !5167)
!5194 = !{!"2946"}
!5195 = !DILocation(line: 378, column: 33, scope: !5167)
!5196 = !{!"2947"}
!5197 = !DILocation(line: 378, column: 30, scope: !5167)
!5198 = !{!"2948"}
!5199 = !DILocation(line: 378, column: 5, scope: !5167)
!5200 = !{!"2949"}
!5201 = !DILocation(line: 379, column: 19, scope: !5167)
!5202 = !{!"2950"}
!5203 = !DILocation(line: 379, column: 16, scope: !5167)
!5204 = !{!"2951"}
!5205 = !DILocation(line: 379, column: 5, scope: !5167)
!5206 = !{!"2952"}
!5207 = !DILocation(line: 380, column: 19, scope: !5167)
!5208 = !{!"2953"}
!5209 = !DILocation(line: 380, column: 16, scope: !5167)
!5210 = !{!"2954"}
!5211 = !DILocation(line: 380, column: 5, scope: !5167)
!5212 = !{!"2955"}
!5213 = !DILocation(line: 381, column: 20, scope: !5167)
!5214 = !{!"2956"}
!5215 = !DILocation(line: 381, column: 17, scope: !5167)
!5216 = !{!"2957"}
!5217 = !DILocation(line: 381, column: 5, scope: !5167)
!5218 = !{!"2958"}
!5219 = !DILocation(line: 381, column: 27, scope: !5167)
!5220 = !{!"2959"}
!5221 = !DILocation(line: 381, column: 24, scope: !5167)
!5222 = !{!"2960"}
!5223 = !{!"2961"}
!5224 = !DILocation(line: 381, column: 34, scope: !5167)
!5225 = !{!"2962"}
!5226 = !DILocation(line: 382, column: 20, scope: !5167)
!5227 = !{!"2963"}
!5228 = !DILocation(line: 382, column: 17, scope: !5167)
!5229 = !{!"2964"}
!5230 = !DILocation(line: 382, column: 26, scope: !5167)
!5231 = !{!"2965"}
!5232 = !DILocation(line: 382, column: 23, scope: !5167)
!5233 = !{!"2966"}
!5234 = !DILocation(line: 382, column: 5, scope: !5167)
!5235 = !{!"2967"}
!5236 = !DILocation(line: 383, column: 20, scope: !5167)
!5237 = !{!"2968"}
!5238 = !DILocation(line: 383, column: 17, scope: !5167)
!5239 = !{!"2969"}
!5240 = !DILocation(line: 383, column: 26, scope: !5167)
!5241 = !{!"2970"}
!5242 = !DILocation(line: 383, column: 23, scope: !5167)
!5243 = !{!"2971"}
!5244 = !DILocation(line: 383, column: 5, scope: !5167)
!5245 = !{!"2972"}
!5246 = !DILocation(line: 384, column: 1, scope: !5167)
!5247 = !{!"2973"}
!5248 = distinct !DISubprogram(name: "ecc_allocate_precomp", scope: !864, file: !864, line: 543, type: !5249, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!23}
!5251 = !DILocation(line: 547, column: 30, scope: !5248)
!5252 = !{!"2974"}
!5253 = !DILocation(line: 547, column: 12, scope: !5248)
!5254 = !{!"2975"}
!5255 = !DILocation(line: 547, column: 5, scope: !5248)
!5256 = !{!"2976"}
!5257 = distinct !DISubprogram(name: "ecc_precomp_fixed", scope: !864, file: !864, line: 551, type: !5258, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{!4055, !3750, !23, !4055, !3027}
!5260 = !{!"2977"}
!5261 = !{!"2978"}
!5262 = !{!"2979"}
!5263 = !{!"2980"}
!5264 = !{!"2981"}
!5265 = !{!"2982"}
!5266 = !{!"2983"}
!5267 = !DILocalVariable(name: "P", arg: 1, scope: !5257, file: !864, line: 551, type: !3750)
!5268 = !DILocation(line: 0, scope: !5257)
!5269 = !{!"2984"}
!5270 = !DILocalVariable(name: "Table", arg: 2, scope: !5257, file: !864, line: 551, type: !23)
!5271 = !{!"2985"}
!5272 = !{!"2986"}
!5273 = !DILocalVariable(name: "clear_cofactor", arg: 3, scope: !5257, file: !864, line: 551, type: !4055)
!5274 = !{!"2987"}
!5275 = !DILocalVariable(name: "curve", arg: 4, scope: !5257, file: !864, line: 551, type: !3027)
!5276 = !{!"2988"}
!5277 = !DILocalVariable(name: "S", scope: !5257, file: !864, line: 559, type: !5278)
!5278 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_t", file: !7, line: 208, baseType: !5279)
!5279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3751, size: 512, elements: !36)
!5280 = !DILocation(line: 559, column: 13, scope: !5257)
!5281 = !{!"2989"}
!5282 = !DILocalVariable(name: "A", scope: !5257, file: !864, line: 560, type: !4451)
!5283 = !DILocation(line: 560, column: 21, scope: !5257)
!5284 = !{!"2990"}
!5285 = !DILocalVariable(name: "R", scope: !5257, file: !864, line: 560, type: !4451)
!5286 = !DILocation(line: 560, column: 24, scope: !5257)
!5287 = !{!"2991"}
!5288 = !DILocalVariable(name: "base", scope: !5257, file: !864, line: 560, type: !5289)
!5289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4451, size: 6400, elements: !5290)
!5290 = !{!5291}
!5291 = !DISubrange(count: 5)
!5292 = !DILocation(line: 560, column: 27, scope: !5257)
!5293 = !{!"2992"}
!5294 = !DILocalVariable(name: "baseb", scope: !5257, file: !864, line: 561, type: !5295)
!5295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 5120, elements: !5290)
!5296 = !DILocation(line: 561, column: 29, scope: !5257)
!5297 = !{!"2993"}
!5298 = !DILocalVariable(name: "RR", scope: !5257, file: !864, line: 561, type: !61)
!5299 = !DILocation(line: 561, column: 49, scope: !5257)
!5300 = !{!"2994"}
!5301 = !DILocalVariable(name: "T", scope: !5257, file: !864, line: 561, type: !5302)
!5302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 81920, elements: !5303)
!5303 = !{!5304}
!5304 = !DISubrange(count: 80)
!5305 = !DILocation(line: 561, column: 53, scope: !5257)
!5306 = !{!"2995"}
!5307 = !DILocalVariable(name: "w", scope: !5257, file: !864, line: 562, type: !12)
!5308 = !{!"2996"}
!5309 = !DILocalVariable(name: "v", scope: !5257, file: !864, line: 562, type: !12)
!5310 = !{!"2997"}
!5311 = !DILocalVariable(name: "d", scope: !5257, file: !864, line: 562, type: !12)
!5312 = !{!"2998"}
!5313 = !DILocalVariable(name: "e", scope: !5257, file: !864, line: 562, type: !12)
!5314 = !{!"2999"}
!5315 = !DILocation(line: 565, column: 20, scope: !5257)
!5316 = !{!"3000"}
!5317 = !DILocation(line: 565, column: 5, scope: !5257)
!5318 = !{!"3001"}
!5319 = !DILocation(line: 567, column: 28, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5257, file: !864, line: 567, column: 9)
!5321 = !{!"3002"}
!5322 = !DILocation(line: 567, column: 9, scope: !5320)
!5323 = !{!"3003"}
!5324 = !{!"3004"}
!5325 = !DILocation(line: 567, column: 38, scope: !5320)
!5326 = !{!"3005"}
!5327 = !DILocation(line: 567, column: 9, scope: !5257)
!5328 = !{!"3006"}
!5329 = !DILocation(line: 568, column: 9, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5320, file: !864, line: 567, column: 48)
!5331 = !{!"3007"}
!5332 = !DILocation(line: 571, column: 9, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5257, file: !864, line: 571, column: 9)
!5334 = !{!"3008"}
!5335 = !{!"3009"}
!5336 = !DILocation(line: 571, column: 24, scope: !5333)
!5337 = !{!"3010"}
!5338 = !DILocation(line: 571, column: 9, scope: !5257)
!5339 = !{!"3011"}
!5340 = !DILocation(line: 572, column: 27, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5333, file: !864, line: 571, column: 33)
!5342 = !{!"3012"}
!5343 = !DILocation(line: 572, column: 9, scope: !5341)
!5344 = !{!"3013"}
!5345 = !DILocation(line: 573, column: 17, scope: !5341)
!5346 = !{!"3014"}
!5347 = !DILocation(line: 573, column: 20, scope: !5341)
!5348 = !{!"3015"}
!5349 = !DILocation(line: 573, column: 9, scope: !5341)
!5350 = !{!"3016"}
!5351 = !DILocation(line: 574, column: 21, scope: !5341)
!5352 = !{!"3017"}
!5353 = !DILocation(line: 574, column: 24, scope: !5341)
!5354 = !{!"3018"}
!5355 = !DILocation(line: 574, column: 9, scope: !5341)
!5356 = !{!"3019"}
!5357 = !DILocation(line: 575, column: 5, scope: !5341)
!5358 = !{!"3020"}
!5359 = !DILocation(line: 576, column: 5, scope: !5257)
!5360 = !{!"3021"}
!5361 = !{!"3022"}
!5362 = !{!"3023"}
!5363 = !{!"3024"}
!5364 = !{!"3025"}
!5365 = !{!"3026"}
!5366 = !{!"3027"}
!5367 = !{!"3028"}
!5368 = !{!"3029"}
!5369 = !{!"3030"}
!5370 = !{!"3031"}
!5371 = !{!"3032"}
!5372 = !{!"3033"}
!5373 = !{!"3034"}
!5374 = !{!"3035"}
!5375 = !{!"3036"}
!5376 = !{!"3037"}
!5377 = !{!"3038"}
!5378 = !{!"3039"}
!5379 = !{!"3040"}
!5380 = !{!"3041"}
!5381 = !{!"3042"}
!5382 = !{!"3043"}
!5383 = !{!"3044"}
!5384 = !{!"3045"}
!5385 = !{!"3046"}
!5386 = !{!"3047"}
!5387 = !{!"3048"}
!5388 = !{!"3049"}
!5389 = !{!"3050"}
!5390 = !{!"3051"}
!5391 = !{!"3052"}
!5392 = !{!"3053"}
!5393 = !{!"3054"}
!5394 = !{!"3055"}
!5395 = !{!"3056"}
!5396 = !{!"3057"}
!5397 = !{!"3058"}
!5398 = !{!"3059"}
!5399 = !{!"3060"}
!5400 = !DILocalVariable(name: "i", scope: !5257, file: !864, line: 562, type: !12)
!5401 = !{!"3061"}
!5402 = !DILocation(line: 579, column: 10, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5257, file: !864, line: 579, column: 5)
!5404 = !{!"3062"}
!5405 = !DILocation(line: 0, scope: !5403)
!5406 = !{!"3063"}
!5407 = !{!"3064"}
!5408 = !DILocation(line: 579, column: 23, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5403, file: !864, line: 579, column: 5)
!5410 = !{!"3065"}
!5411 = !DILocation(line: 579, column: 19, scope: !5409)
!5412 = !{!"3066"}
!5413 = !DILocation(line: 579, column: 5, scope: !5403)
!5414 = !{!"3067"}
!5415 = !DILocation(line: 580, column: 9, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5409, file: !864, line: 579, column: 33)
!5417 = !{!"3068"}
!5418 = !{!"3069"}
!5419 = !{!"3070"}
!5420 = !{!"3071"}
!5421 = !{!"3072"}
!5422 = !{!"3073"}
!5423 = !{!"3074"}
!5424 = !{!"3075"}
!5425 = !{!"3076"}
!5426 = !{!"3077"}
!5427 = !{!"3078"}
!5428 = !{!"3079"}
!5429 = !{!"3080"}
!5430 = !{!"3081"}
!5431 = !{!"3082"}
!5432 = !{!"3083"}
!5433 = !{!"3084"}
!5434 = !{!"3085"}
!5435 = !{!"3086"}
!5436 = !{!"3087"}
!5437 = !{!"3088"}
!5438 = !{!"3089"}
!5439 = !{!"3090"}
!5440 = !{!"3091"}
!5441 = !{!"3092"}
!5442 = !{!"3093"}
!5443 = !{!"3094"}
!5444 = !{!"3095"}
!5445 = !{!"3096"}
!5446 = !{!"3097"}
!5447 = !{!"3098"}
!5448 = !{!"3099"}
!5449 = !{!"3100"}
!5450 = !{!"3101"}
!5451 = !{!"3102"}
!5452 = !{!"3103"}
!5453 = !{!"3104"}
!5454 = !{!"3105"}
!5455 = !{!"3106"}
!5456 = !{!"3107"}
!5457 = !{!"3108"}
!5458 = !{!"3109"}
!5459 = !{!"3110"}
!5460 = !{!"3111"}
!5461 = !{!"3112"}
!5462 = !{!"3113"}
!5463 = !{!"3114"}
!5464 = !{!"3115"}
!5465 = !{!"3116"}
!5466 = !{!"3117"}
!5467 = !{!"3118"}
!5468 = !{!"3119"}
!5469 = !{!"3120"}
!5470 = !{!"3121"}
!5471 = !{!"3122"}
!5472 = !{!"3123"}
!5473 = !{!"3124"}
!5474 = !{!"3125"}
!5475 = !{!"3126"}
!5476 = !{!"3127"}
!5477 = !DILocation(line: 581, column: 18, scope: !5416)
!5478 = !{!"3128"}
!5479 = !{!"3129"}
!5480 = !{!"3130"}
!5481 = !DILocation(line: 581, column: 27, scope: !5416)
!5482 = !{!"3131"}
!5483 = !{!"3132"}
!5484 = !{!"3133"}
!5485 = !DILocation(line: 581, column: 9, scope: !5416)
!5486 = !{!"3134"}
!5487 = !DILocalVariable(name: "j", scope: !5257, file: !864, line: 562, type: !12)
!5488 = !{!"3135"}
!5489 = !DILocation(line: 582, column: 14, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5416, file: !864, line: 582, column: 9)
!5491 = !{!"3136"}
!5492 = !DILocation(line: 0, scope: !5490)
!5493 = !{!"3137"}
!5494 = !{!"3138"}
!5495 = !DILocation(line: 582, column: 23, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5490, file: !864, line: 582, column: 9)
!5497 = !{!"3139"}
!5498 = !DILocation(line: 582, column: 9, scope: !5490)
!5499 = !{!"3140"}
!5500 = !DILocation(line: 582, column: 52, scope: !5496)
!5501 = !{!"3141"}
!5502 = !DILocation(line: 582, column: 46, scope: !5496)
!5503 = !{!"3142"}
!5504 = !{!"3143"}
!5505 = !{!"3144"}
!5506 = !DILocation(line: 582, column: 33, scope: !5496)
!5507 = !{!"3145"}
!5508 = !{!"3146"}
!5509 = !DILocation(line: 582, column: 29, scope: !5496)
!5510 = !{!"3147"}
!5511 = !{!"3148"}
!5512 = !DILocation(line: 582, column: 9, scope: !5496)
!5513 = distinct !{!5513, !5498, !5514, !517}
!5514 = !DILocation(line: 582, column: 55, scope: !5490)
!5515 = !{!"3149"}
!5516 = !DILocation(line: 583, column: 5, scope: !5416)
!5517 = !{!"3150"}
!5518 = !DILocation(line: 579, column: 29, scope: !5409)
!5519 = !{!"3151"}
!5520 = !{!"3152"}
!5521 = !DILocation(line: 579, column: 5, scope: !5409)
!5522 = distinct !{!5522, !5413, !5523, !517}
!5523 = !DILocation(line: 583, column: 5, scope: !5403)
!5524 = !{!"3153"}
!5525 = !DILocation(line: 585, column: 20, scope: !5257)
!5526 = !{!"3154"}
!5527 = !DILocation(line: 585, column: 14, scope: !5257)
!5528 = !{!"3155"}
!5529 = !{!"3156"}
!5530 = !{!"3157"}
!5531 = !DILocation(line: 585, column: 32, scope: !5257)
!5532 = !{!"3158"}
!5533 = !DILocation(line: 585, column: 25, scope: !5257)
!5534 = !{!"3159"}
!5535 = !{!"3160"}
!5536 = !{!"3161"}
!5537 = !DILocation(line: 585, column: 5, scope: !5257)
!5538 = !{!"3162"}
!5539 = !DILocation(line: 586, column: 20, scope: !5257)
!5540 = !{!"3163"}
!5541 = !{!"3164"}
!5542 = !DILocation(line: 586, column: 17, scope: !5257)
!5543 = !{!"3165"}
!5544 = !DILocation(line: 586, column: 23, scope: !5257)
!5545 = !{!"3166"}
!5546 = !DILocation(line: 586, column: 29, scope: !5257)
!5547 = !{!"3167"}
!5548 = !{!"3168"}
!5549 = !{!"3169"}
!5550 = !DILocation(line: 586, column: 5, scope: !5257)
!5551 = !{!"3170"}
!5552 = !DILocation(line: 587, column: 20, scope: !5257)
!5553 = !{!"3171"}
!5554 = !{!"3172"}
!5555 = !DILocation(line: 587, column: 17, scope: !5257)
!5556 = !{!"3173"}
!5557 = !DILocation(line: 587, column: 23, scope: !5257)
!5558 = !{!"3174"}
!5559 = !DILocation(line: 587, column: 29, scope: !5257)
!5560 = !{!"3175"}
!5561 = !{!"3176"}
!5562 = !{!"3177"}
!5563 = !DILocation(line: 587, column: 5, scope: !5257)
!5564 = !{!"3178"}
!5565 = !DILocalVariable(name: "index", scope: !5257, file: !864, line: 562, type: !12)
!5566 = !{!"3179"}
!5567 = !DILocalVariable(name: "index_group", scope: !5257, file: !864, line: 563, type: !22)
!5568 = !{!"3180"}
!5569 = !{!"3181"}
!5570 = !DILocation(line: 592, column: 10, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5257, file: !864, line: 592, column: 5)
!5572 = !{!"3182"}
!5573 = !DILocation(line: 0, scope: !5571)
!5574 = !{!"3183"}
!5575 = !DILocation(line: 590, column: 11, scope: !5257)
!5576 = !{!"3184"}
!5577 = !{!"3185"}
!5578 = !{!"3186"}
!5579 = !{!"3187"}
!5580 = !{!"3188"}
!5581 = !DILocation(line: 592, column: 23, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5571, file: !864, line: 592, column: 5)
!5583 = !{!"3189"}
!5584 = !DILocation(line: 592, column: 19, scope: !5582)
!5585 = !{!"3190"}
!5586 = !DILocation(line: 592, column: 5, scope: !5571)
!5587 = !{!"3191"}
!5588 = !{!"3192"}
!5589 = !DILocation(line: 594, column: 14, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5591, file: !864, line: 594, column: 9)
!5591 = distinct !DILexicalBlock(scope: !5582, file: !864, line: 593, column: 5)
!5592 = !{!"3193"}
!5593 = !DILocation(line: 0, scope: !5590)
!5594 = !{!"3194"}
!5595 = !{!"3195"}
!5596 = !{!"3196"}
!5597 = !{!"3197"}
!5598 = !DILocation(line: 594, column: 21, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5590, file: !864, line: 594, column: 9)
!5600 = !{!"3198"}
!5601 = !DILocation(line: 594, column: 23, scope: !5599)
!5602 = !{!"3199"}
!5603 = !DILocation(line: 594, column: 9, scope: !5590)
!5604 = !{!"3200"}
!5605 = !DILocation(line: 596, column: 24, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5599, file: !864, line: 595, column: 9)
!5607 = !{!"3201"}
!5608 = !{!"3202"}
!5609 = !DILocation(line: 596, column: 30, scope: !5606)
!5610 = !{!"3203"}
!5611 = !{!"3204"}
!5612 = !{!"3205"}
!5613 = !DILocation(line: 596, column: 34, scope: !5606)
!5614 = !{!"3206"}
!5615 = !{!"3207"}
!5616 = !DILocation(line: 596, column: 40, scope: !5606)
!5617 = !{!"3208"}
!5618 = !{!"3209"}
!5619 = !{!"3210"}
!5620 = !DILocation(line: 596, column: 48, scope: !5606)
!5621 = !{!"3211"}
!5622 = !{!"3212"}
!5623 = !DILocation(line: 596, column: 44, scope: !5606)
!5624 = !{!"3213"}
!5625 = !DILocation(line: 596, column: 13, scope: !5606)
!5626 = !{!"3214"}
!5627 = !DILocation(line: 597, column: 24, scope: !5606)
!5628 = !{!"3215"}
!5629 = !{!"3216"}
!5630 = !DILocation(line: 597, column: 30, scope: !5606)
!5631 = !{!"3217"}
!5632 = !{!"3218"}
!5633 = !{!"3219"}
!5634 = !DILocation(line: 597, column: 34, scope: !5606)
!5635 = !{!"3220"}
!5636 = !{!"3221"}
!5637 = !DILocation(line: 597, column: 40, scope: !5606)
!5638 = !{!"3222"}
!5639 = !{!"3223"}
!5640 = !{!"3224"}
!5641 = !DILocation(line: 597, column: 48, scope: !5606)
!5642 = !{!"3225"}
!5643 = !{!"3226"}
!5644 = !DILocation(line: 597, column: 44, scope: !5606)
!5645 = !{!"3227"}
!5646 = !DILocation(line: 597, column: 13, scope: !5606)
!5647 = !{!"3228"}
!5648 = !DILocation(line: 598, column: 29, scope: !5606)
!5649 = !{!"3229"}
!5650 = !{!"3230"}
!5651 = !DILocation(line: 598, column: 25, scope: !5606)
!5652 = !{!"3231"}
!5653 = !DILocation(line: 598, column: 13, scope: !5606)
!5654 = !{!"3232"}
!5655 = !DILocation(line: 598, column: 38, scope: !5606)
!5656 = !{!"3233"}
!5657 = !{!"3234"}
!5658 = !DILocation(line: 598, column: 34, scope: !5606)
!5659 = !{!"3235"}
!5660 = !{!"3236"}
!5661 = !DILocation(line: 598, column: 47, scope: !5606)
!5662 = !{!"3237"}
!5663 = !DILocation(line: 599, column: 24, scope: !5606)
!5664 = !{!"3238"}
!5665 = !{!"3239"}
!5666 = !DILocation(line: 599, column: 30, scope: !5606)
!5667 = !{!"3240"}
!5668 = !{!"3241"}
!5669 = !{!"3242"}
!5670 = !DILocation(line: 599, column: 34, scope: !5606)
!5671 = !{!"3243"}
!5672 = !{!"3244"}
!5673 = !DILocation(line: 599, column: 40, scope: !5606)
!5674 = !{!"3245"}
!5675 = !{!"3246"}
!5676 = !{!"3247"}
!5677 = !DILocation(line: 599, column: 48, scope: !5606)
!5678 = !{!"3248"}
!5679 = !{!"3249"}
!5680 = !DILocation(line: 599, column: 44, scope: !5606)
!5681 = !{!"3250"}
!5682 = !DILocation(line: 599, column: 13, scope: !5606)
!5683 = !{!"3251"}
!5684 = !DILocation(line: 600, column: 32, scope: !5606)
!5685 = !{!"3252"}
!5686 = !DILocation(line: 600, column: 25, scope: !5606)
!5687 = !{!"3253"}
!5688 = !{!"3254"}
!5689 = !{!"3255"}
!5690 = !DILocation(line: 600, column: 37, scope: !5606)
!5691 = !{!"3256"}
!5692 = !DILocation(line: 600, column: 41, scope: !5606)
!5693 = !{!"3257"}
!5694 = !DILocation(line: 600, column: 13, scope: !5606)
!5695 = !{!"3258"}
!5696 = !DILocation(line: 601, column: 18, scope: !5606)
!5697 = !{!"3259"}
!5698 = !{!"3260"}
!5699 = !DILocation(line: 602, column: 21, scope: !5606)
!5700 = !{!"3261"}
!5701 = !DILocation(line: 602, column: 24, scope: !5606)
!5702 = !{!"3262"}
!5703 = !DILocation(line: 602, column: 13, scope: !5606)
!5704 = !{!"3263"}
!5705 = !DILocation(line: 603, column: 25, scope: !5606)
!5706 = !{!"3264"}
!5707 = !DILocation(line: 603, column: 28, scope: !5606)
!5708 = !{!"3265"}
!5709 = !DILocation(line: 603, column: 13, scope: !5606)
!5710 = !{!"3266"}
!5711 = !DILocation(line: 604, column: 28, scope: !5606)
!5712 = !{!"3267"}
!5713 = !{!"3268"}
!5714 = !DILocation(line: 604, column: 25, scope: !5606)
!5715 = !{!"3269"}
!5716 = !DILocation(line: 604, column: 31, scope: !5606)
!5717 = !{!"3270"}
!5718 = !{!"3271"}
!5719 = !DILocation(line: 604, column: 41, scope: !5606)
!5720 = !{!"3272"}
!5721 = !{!"3273"}
!5722 = !{!"3274"}
!5723 = !DILocation(line: 604, column: 13, scope: !5606)
!5724 = !{!"3275"}
!5725 = !DILocation(line: 605, column: 28, scope: !5606)
!5726 = !{!"3276"}
!5727 = !{!"3277"}
!5728 = !DILocation(line: 605, column: 25, scope: !5606)
!5729 = !{!"3278"}
!5730 = !DILocation(line: 605, column: 31, scope: !5606)
!5731 = !{!"3279"}
!5732 = !{!"3280"}
!5733 = !DILocation(line: 605, column: 41, scope: !5606)
!5734 = !{!"3281"}
!5735 = !{!"3282"}
!5736 = !{!"3283"}
!5737 = !DILocation(line: 605, column: 13, scope: !5606)
!5738 = !{!"3284"}
!5739 = !DILocation(line: 606, column: 9, scope: !5606)
!5740 = !{!"3285"}
!5741 = !DILocation(line: 594, column: 39, scope: !5599)
!5742 = !{!"3286"}
!5743 = !{!"3287"}
!5744 = !DILocation(line: 594, column: 9, scope: !5599)
!5745 = distinct !{!5745, !5603, !5746, !517}
!5746 = !DILocation(line: 606, column: 9, scope: !5590)
!5747 = !{!"3288"}
!5748 = !DILocation(line: 607, column: 24, scope: !5591)
!5749 = !{!"3289"}
!5750 = !{!"3290"}
!5751 = !DILocation(line: 608, column: 5, scope: !5591)
!5752 = !{!"3291"}
!5753 = !DILocation(line: 592, column: 29, scope: !5582)
!5754 = !{!"3292"}
!5755 = !{!"3293"}
!5756 = !DILocation(line: 592, column: 5, scope: !5582)
!5757 = distinct !{!5757, !5586, !5758, !517}
!5758 = !DILocation(line: 608, column: 5, scope: !5571)
!5759 = !{!"3294"}
!5760 = !DILocation(line: 611, column: 10, scope: !5257)
!5761 = !{!"3295"}
!5762 = !{!"3296"}
!5763 = !{!"3297"}
!5764 = !DILocation(line: 612, column: 10, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5257, file: !864, line: 612, column: 5)
!5766 = !{!"3298"}
!5767 = !DILocation(line: 0, scope: !5765)
!5768 = !{!"3299"}
!5769 = !{!"3300"}
!5770 = !DILocation(line: 612, column: 23, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5765, file: !864, line: 612, column: 5)
!5772 = !{!"3301"}
!5773 = !DILocation(line: 612, column: 19, scope: !5771)
!5774 = !{!"3302"}
!5775 = !DILocation(line: 612, column: 5, scope: !5765)
!5776 = !{!"3303"}
!5777 = !{!"3304"}
!5778 = !DILocation(line: 614, column: 14, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5780, file: !864, line: 614, column: 9)
!5780 = distinct !DILexicalBlock(scope: !5771, file: !864, line: 613, column: 5)
!5781 = !{!"3305"}
!5782 = !DILocation(line: 0, scope: !5779)
!5783 = !{!"3306"}
!5784 = !{!"3307"}
!5785 = !DILocation(line: 614, column: 23, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5779, file: !864, line: 614, column: 9)
!5787 = !{!"3308"}
!5788 = !DILocation(line: 614, column: 9, scope: !5779)
!5789 = !{!"3309"}
!5790 = !DILocation(line: 616, column: 28, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5786, file: !864, line: 615, column: 9)
!5792 = !{!"3310"}
!5793 = !DILocation(line: 616, column: 35, scope: !5791)
!5794 = !{!"3311"}
!5795 = !DILocation(line: 616, column: 25, scope: !5791)
!5796 = !{!"3312"}
!5797 = !{!"3313"}
!5798 = !DILocation(line: 616, column: 41, scope: !5791)
!5799 = !{!"3314"}
!5800 = !{!"3315"}
!5801 = !{!"3316"}
!5802 = !DILocation(line: 616, column: 48, scope: !5791)
!5803 = !{!"3317"}
!5804 = !{!"3318"}
!5805 = !DILocation(line: 616, column: 45, scope: !5791)
!5806 = !{!"3319"}
!5807 = !DILocation(line: 616, column: 13, scope: !5791)
!5808 = !{!"3320"}
!5809 = !DILocation(line: 617, column: 28, scope: !5791)
!5810 = !{!"3321"}
!5811 = !DILocation(line: 617, column: 35, scope: !5791)
!5812 = !{!"3322"}
!5813 = !DILocation(line: 617, column: 25, scope: !5791)
!5814 = !{!"3323"}
!5815 = !{!"3324"}
!5816 = !DILocation(line: 617, column: 41, scope: !5791)
!5817 = !{!"3325"}
!5818 = !{!"3326"}
!5819 = !{!"3327"}
!5820 = !DILocation(line: 617, column: 48, scope: !5791)
!5821 = !{!"3328"}
!5822 = !{!"3329"}
!5823 = !DILocation(line: 617, column: 45, scope: !5791)
!5824 = !{!"3330"}
!5825 = !DILocation(line: 617, column: 13, scope: !5791)
!5826 = !{!"3331"}
!5827 = !DILocation(line: 618, column: 28, scope: !5791)
!5828 = !{!"3332"}
!5829 = !{!"3333"}
!5830 = !DILocation(line: 618, column: 25, scope: !5791)
!5831 = !{!"3334"}
!5832 = !DILocation(line: 618, column: 13, scope: !5791)
!5833 = !{!"3335"}
!5834 = !DILocation(line: 618, column: 35, scope: !5791)
!5835 = !{!"3336"}
!5836 = !{!"3337"}
!5837 = !DILocation(line: 618, column: 32, scope: !5791)
!5838 = !{!"3338"}
!5839 = !{!"3339"}
!5840 = !DILocation(line: 618, column: 43, scope: !5791)
!5841 = !{!"3340"}
!5842 = !DILocalVariable(name: "k", scope: !5257, file: !864, line: 562, type: !12)
!5843 = !{!"3341"}
!5844 = !DILocation(line: 619, column: 18, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5791, file: !864, line: 619, column: 13)
!5846 = !{!"3342"}
!5847 = !DILocation(line: 0, scope: !5845)
!5848 = !{!"3343"}
!5849 = !{!"3344"}
!5850 = !DILocation(line: 619, column: 27, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5845, file: !864, line: 619, column: 13)
!5852 = !{!"3345"}
!5853 = !DILocation(line: 619, column: 13, scope: !5845)
!5854 = !{!"3346"}
!5855 = !DILocation(line: 619, column: 50, scope: !5851)
!5856 = !{!"3347"}
!5857 = !DILocation(line: 619, column: 37, scope: !5851)
!5858 = !{!"3348"}
!5859 = !{!"3349"}
!5860 = !DILocation(line: 619, column: 33, scope: !5851)
!5861 = !{!"3350"}
!5862 = !{!"3351"}
!5863 = !DILocation(line: 619, column: 13, scope: !5851)
!5864 = distinct !{!5864, !5853, !5865, !517}
!5865 = !DILocation(line: 619, column: 51, scope: !5845)
!5866 = !{!"3352"}
!5867 = !DILocation(line: 620, column: 21, scope: !5791)
!5868 = !{!"3353"}
!5869 = !DILocation(line: 620, column: 24, scope: !5791)
!5870 = !{!"3354"}
!5871 = !DILocation(line: 620, column: 13, scope: !5791)
!5872 = !{!"3355"}
!5873 = !DILocation(line: 621, column: 25, scope: !5791)
!5874 = !{!"3356"}
!5875 = !DILocation(line: 621, column: 28, scope: !5791)
!5876 = !{!"3357"}
!5877 = !DILocation(line: 621, column: 13, scope: !5791)
!5878 = !{!"3358"}
!5879 = !DILocation(line: 622, column: 28, scope: !5791)
!5880 = !{!"3359"}
!5881 = !{!"3360"}
!5882 = !DILocation(line: 622, column: 25, scope: !5791)
!5883 = !{!"3361"}
!5884 = !DILocation(line: 622, column: 35, scope: !5791)
!5885 = !{!"3362"}
!5886 = !DILocation(line: 622, column: 38, scope: !5791)
!5887 = !{!"3363"}
!5888 = !DILocation(line: 622, column: 45, scope: !5791)
!5889 = !{!"3364"}
!5890 = !DILocation(line: 622, column: 31, scope: !5791)
!5891 = !{!"3365"}
!5892 = !{!"3366"}
!5893 = !DILocation(line: 622, column: 51, scope: !5791)
!5894 = !{!"3367"}
!5895 = !{!"3368"}
!5896 = !{!"3369"}
!5897 = !DILocation(line: 622, column: 13, scope: !5791)
!5898 = !{!"3370"}
!5899 = !DILocation(line: 623, column: 28, scope: !5791)
!5900 = !{!"3371"}
!5901 = !{!"3372"}
!5902 = !DILocation(line: 623, column: 25, scope: !5791)
!5903 = !{!"3373"}
!5904 = !DILocation(line: 623, column: 35, scope: !5791)
!5905 = !{!"3374"}
!5906 = !DILocation(line: 623, column: 38, scope: !5791)
!5907 = !{!"3375"}
!5908 = !DILocation(line: 623, column: 45, scope: !5791)
!5909 = !{!"3376"}
!5910 = !DILocation(line: 623, column: 31, scope: !5791)
!5911 = !{!"3377"}
!5912 = !{!"3378"}
!5913 = !DILocation(line: 623, column: 51, scope: !5791)
!5914 = !{!"3379"}
!5915 = !{!"3380"}
!5916 = !{!"3381"}
!5917 = !DILocation(line: 623, column: 13, scope: !5791)
!5918 = !{!"3382"}
!5919 = !DILocation(line: 624, column: 9, scope: !5791)
!5920 = !{!"3383"}
!5921 = !DILocation(line: 614, column: 33, scope: !5786)
!5922 = !{!"3384"}
!5923 = !{!"3385"}
!5924 = !DILocation(line: 614, column: 9, scope: !5786)
!5925 = distinct !{!5925, !5788, !5926, !517}
!5926 = !DILocation(line: 624, column: 9, scope: !5779)
!5927 = !{!"3386"}
!5928 = !DILocation(line: 625, column: 5, scope: !5780)
!5929 = !{!"3387"}
!5930 = !DILocation(line: 612, column: 29, scope: !5771)
!5931 = !{!"3388"}
!5932 = !{!"3389"}
!5933 = !DILocation(line: 612, column: 5, scope: !5771)
!5934 = distinct !{!5934, !5775, !5935, !517}
!5935 = !DILocation(line: 625, column: 5, scope: !5765)
!5936 = !{!"3390"}
!5937 = !{!"3391"}
!5938 = !DILocation(line: 627, column: 10, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5257, file: !864, line: 627, column: 5)
!5940 = !{!"3392"}
!5941 = !DILocation(line: 0, scope: !5939)
!5942 = !{!"3393"}
!5943 = !{!"3394"}
!5944 = !DILocation(line: 627, column: 19, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5939, file: !864, line: 627, column: 5)
!5946 = !{!"3395"}
!5947 = !DILocation(line: 627, column: 5, scope: !5939)
!5948 = !{!"3396"}
!5949 = !DILocation(line: 629, column: 20, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5945, file: !864, line: 628, column: 5)
!5951 = !{!"3397"}
!5952 = !{!"3398"}
!5953 = !DILocation(line: 629, column: 26, scope: !5950)
!5954 = !{!"3399"}
!5955 = !{!"3400"}
!5956 = !{!"3401"}
!5957 = !DILocation(line: 629, column: 30, scope: !5950)
!5958 = !{!"3402"}
!5959 = !{!"3403"}
!5960 = !DILocation(line: 629, column: 36, scope: !5950)
!5961 = !{!"3404"}
!5962 = !{!"3405"}
!5963 = !{!"3406"}
!5964 = !DILocation(line: 629, column: 40, scope: !5950)
!5965 = !{!"3407"}
!5966 = !{!"3408"}
!5967 = !DILocation(line: 629, column: 50, scope: !5950)
!5968 = !{!"3409"}
!5969 = !{!"3410"}
!5970 = !{!"3411"}
!5971 = !DILocation(line: 629, column: 9, scope: !5950)
!5972 = !{!"3412"}
!5973 = !DILocation(line: 630, column: 37, scope: !5950)
!5974 = !{!"3413"}
!5975 = !DILocation(line: 630, column: 20, scope: !5950)
!5976 = !{!"3414"}
!5977 = !DILocation(line: 630, column: 40, scope: !5950)
!5978 = !{!"3415"}
!5979 = !{!"3416"}
!5980 = !DILocation(line: 630, column: 50, scope: !5950)
!5981 = !{!"3417"}
!5982 = !{!"3418"}
!5983 = !{!"3419"}
!5984 = !DILocation(line: 630, column: 54, scope: !5950)
!5985 = !{!"3420"}
!5986 = !{!"3421"}
!5987 = !DILocation(line: 630, column: 64, scope: !5950)
!5988 = !{!"3422"}
!5989 = !{!"3423"}
!5990 = !{!"3424"}
!5991 = !DILocation(line: 630, column: 9, scope: !5950)
!5992 = !{!"3425"}
!5993 = !DILocation(line: 631, column: 20, scope: !5950)
!5994 = !{!"3426"}
!5995 = !{!"3427"}
!5996 = !DILocation(line: 631, column: 30, scope: !5950)
!5997 = !{!"3428"}
!5998 = !{!"3429"}
!5999 = !{!"3430"}
!6000 = !DILocation(line: 631, column: 34, scope: !5950)
!6001 = !{!"3431"}
!6002 = !{!"3432"}
!6003 = !DILocation(line: 631, column: 44, scope: !5950)
!6004 = !{!"3433"}
!6005 = !{!"3434"}
!6006 = !{!"3435"}
!6007 = !DILocation(line: 631, column: 48, scope: !5950)
!6008 = !{!"3436"}
!6009 = !{!"3437"}
!6010 = !DILocation(line: 631, column: 58, scope: !5950)
!6011 = !{!"3438"}
!6012 = !{!"3439"}
!6013 = !{!"3440"}
!6014 = !DILocation(line: 631, column: 9, scope: !5950)
!6015 = !{!"3441"}
!6016 = !DILocation(line: 632, column: 20, scope: !5950)
!6017 = !{!"3442"}
!6018 = !{!"3443"}
!6019 = !DILocation(line: 632, column: 26, scope: !5950)
!6020 = !{!"3444"}
!6021 = !{!"3445"}
!6022 = !{!"3446"}
!6023 = !DILocation(line: 632, column: 30, scope: !5950)
!6024 = !{!"3447"}
!6025 = !{!"3448"}
!6026 = !DILocation(line: 632, column: 36, scope: !5950)
!6027 = !{!"3449"}
!6028 = !{!"3450"}
!6029 = !{!"3451"}
!6030 = !DILocation(line: 632, column: 40, scope: !5950)
!6031 = !{!"3452"}
!6032 = !{!"3453"}
!6033 = !DILocation(line: 632, column: 50, scope: !5950)
!6034 = !{!"3454"}
!6035 = !{!"3455"}
!6036 = !{!"3456"}
!6037 = !DILocation(line: 632, column: 9, scope: !5950)
!6038 = !{!"3457"}
!6039 = !DILocation(line: 633, column: 20, scope: !5950)
!6040 = !{!"3458"}
!6041 = !{!"3459"}
!6042 = !DILocation(line: 633, column: 26, scope: !5950)
!6043 = !{!"3460"}
!6044 = !{!"3461"}
!6045 = !{!"3462"}
!6046 = !DILocation(line: 633, column: 30, scope: !5950)
!6047 = !{!"3463"}
!6048 = !{!"3464"}
!6049 = !DILocation(line: 633, column: 36, scope: !5950)
!6050 = !{!"3465"}
!6051 = !{!"3466"}
!6052 = !{!"3467"}
!6053 = !DILocation(line: 633, column: 40, scope: !5950)
!6054 = !{!"3468"}
!6055 = !{!"3469"}
!6056 = !DILocation(line: 633, column: 50, scope: !5950)
!6057 = !{!"3470"}
!6058 = !{!"3471"}
!6059 = !{!"3472"}
!6060 = !DILocation(line: 633, column: 9, scope: !5950)
!6061 = !{!"3473"}
!6062 = !DILocation(line: 634, column: 5, scope: !5950)
!6063 = !{!"3474"}
!6064 = !DILocation(line: 627, column: 41, scope: !5945)
!6065 = !{!"3475"}
!6066 = !{!"3476"}
!6067 = !DILocation(line: 627, column: 5, scope: !5945)
!6068 = distinct !{!6068, !5947, !6069, !517}
!6069 = !DILocation(line: 634, column: 5, scope: !5939)
!6070 = !{!"3477"}
!6071 = !DILocation(line: 636, column: 5, scope: !5257)
!6072 = !{!"3478"}
!6073 = !{!"3479"}
!6074 = !DILocation(line: 637, column: 1, scope: !5257)
!6075 = !{!"3480"}
!6076 = distinct !DISubprogram(name: "eccdouble_wrapper", scope: !3, file: !3, line: 9, type: !4031, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!6077 = !DILocalVariable(name: "P", arg: 1, scope: !6076, file: !3, line: 9, type: !3786)
!6078 = !DILocation(line: 0, scope: !6076)
!6079 = !{!"3481"}
!6080 = !DILocation(line: 11, column: 13, scope: !6076)
!6081 = !{!"3482"}
!6082 = !DILocation(line: 11, column: 3, scope: !6076)
!6083 = !{!"3483"}
!6084 = !DILocation(line: 13, column: 3, scope: !6076)
!6085 = !{!"3484"}
!6086 = !DILocation(line: 14, column: 1, scope: !6076)
!6087 = !{!"3485"}
!6088 = distinct !DISubprogram(name: "eccdouble_wrapper_t", scope: !3, file: !3, line: 19, type: !6089, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!6089 = !DISubroutineType(types: !6090)
!6090 = !{null}
!6091 = !{!"3486"}
!6092 = !DILocalVariable(name: "P", scope: !6088, file: !3, line: 21, type: !4451)
!6093 = !DILocation(line: 21, column: 19, scope: !6088)
!6094 = !{!"3487"}
!6095 = !DILocation(line: 21, column: 23, scope: !6088)
!6096 = !{!"3488"}
!6097 = !DILocation(line: 21, column: 24, scope: !6088)
!6098 = !{!"3489"}
!6099 = !DILocation(line: 22, column: 13, scope: !6088)
!6100 = !{!"3490"}
!6101 = !DILocation(line: 22, column: 3, scope: !6088)
!6102 = !{!"3491"}
!6103 = !DILocation(line: 23, column: 1, scope: !6088)
!6104 = !{!"3492"}
!6105 = distinct !DISubprogram(name: "fp2div1271", scope: !41, file: !41, line: 400, type: !3202, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!6106 = !DILocalVariable(name: "a", arg: 1, scope: !6105, file: !41, line: 400, type: !15)
!6107 = !DILocation(line: 0, scope: !6105)
!6108 = !{!"3493"}
!6109 = !DILocation(line: 402, column: 15, scope: !6105)
!6110 = !{!"3494"}
!6111 = !{!"3495"}
!6112 = !DILocation(line: 402, column: 5, scope: !6105)
!6113 = !{!"3496"}
!6114 = !DILocation(line: 403, column: 15, scope: !6105)
!6115 = !{!"3497"}
!6116 = !{!"3498"}
!6117 = !DILocation(line: 403, column: 5, scope: !6105)
!6118 = !{!"3499"}
!6119 = !DILocation(line: 404, column: 1, scope: !6105)
!6120 = !{!"3500"}
!6121 = distinct !DISubprogram(name: "fpdiv1271", scope: !41, file: !41, line: 380, type: !2042, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!6122 = !DILocalVariable(name: "a", arg: 1, scope: !6121, file: !41, line: 380, type: !14)
!6123 = !DILocation(line: 0, scope: !6121)
!6124 = !{!"3501"}
!6125 = !DILocalVariable(name: "carry", scope: !6121, file: !41, line: 383, type: !12)
!6126 = !{!"3502"}
!6127 = !DILocation(line: 386, column: 17, scope: !6121)
!6128 = !{!"3503"}
!6129 = !{!"3504"}
!6130 = !DILocation(line: 386, column: 22, scope: !6121)
!6131 = !{!"3505"}
!6132 = !DILocation(line: 386, column: 14, scope: !6121)
!6133 = !{!"3506"}
!6134 = !DILocalVariable(name: "mask", scope: !6121, file: !41, line: 382, type: !6)
!6135 = !{!"3507"}
!6136 = !DILocalVariable(name: "i", scope: !6121, file: !41, line: 384, type: !12)
!6137 = !{!"3508"}
!6138 = !DILocation(line: 388, column: 10, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6121, file: !41, line: 388, column: 5)
!6140 = !{!"3509"}
!6141 = !{!"3510"}
!6142 = !DILocation(line: 0, scope: !6139)
!6143 = !{!"3511"}
!6144 = !{!"3512"}
!6145 = !{!"3513"}
!6146 = !DILocation(line: 388, column: 19, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6139, file: !41, line: 388, column: 5)
!6148 = !{!"3514"}
!6149 = !DILocation(line: 388, column: 5, scope: !6139)
!6150 = !{!"3515"}
!6151 = !DILocation(line: 389, column: 9, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6153, file: !41, line: 389, column: 9)
!6153 = distinct !DILexicalBlock(scope: !6147, file: !41, line: 388, column: 44)
!6154 = !{!"3516"}
!6155 = !DILocalVariable(name: "tempReg", scope: !6152, file: !41, line: 389, type: !6)
!6156 = !DILocation(line: 0, scope: !6152)
!6157 = !{!"3517"}
!6158 = !{!"3518"}
!6159 = !{!"3519"}
!6160 = !{!"3520"}
!6161 = !{!"3521"}
!6162 = !{!"3522"}
!6163 = !{!"3523"}
!6164 = !{!"3524"}
!6165 = !{!"3525"}
!6166 = !{!"3526"}
!6167 = !{!"3527"}
!6168 = !{!"3528"}
!6169 = !{!"3529"}
!6170 = !{!"3530"}
!6171 = !{!"3531"}
!6172 = !DILocation(line: 390, column: 5, scope: !6153)
!6173 = !{!"3532"}
!6174 = !DILocation(line: 388, column: 40, scope: !6147)
!6175 = !{!"3533"}
!6176 = !{!"3534"}
!6177 = !DILocation(line: 388, column: 5, scope: !6147)
!6178 = distinct !{!6178, !6149, !6179, !517}
!6179 = !DILocation(line: 390, column: 5, scope: !6139)
!6180 = !{!"3535"}
!6181 = !DILocation(line: 391, column: 5, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6121, file: !41, line: 391, column: 5)
!6183 = !{!"3536"}
!6184 = !{!"3537"}
!6185 = !DILocalVariable(name: "tempReg", scope: !6182, file: !41, line: 391, type: !6)
!6186 = !DILocation(line: 0, scope: !6182)
!6187 = !{!"3538"}
!6188 = !{!"3539"}
!6189 = !{!"3540"}
!6190 = !{!"3541"}
!6191 = !{!"3542"}
!6192 = !{!"3543"}
!6193 = !{!"3544"}
!6194 = !{!"3545"}
!6195 = !{!"3546"}
!6196 = !{!"3547"}
!6197 = !{!"3548"}
!6198 = !{!"3549"}
!6199 = !{!"3550"}
!6200 = !DILocation(line: 393, column: 10, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6121, file: !41, line: 393, column: 5)
!6202 = !{!"3551"}
!6203 = !DILocation(line: 0, scope: !6201)
!6204 = !{!"3552"}
!6205 = !{!"3553"}
!6206 = !DILocation(line: 393, column: 19, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6201, file: !41, line: 393, column: 5)
!6208 = !{!"3554"}
!6209 = !DILocation(line: 393, column: 5, scope: !6201)
!6210 = !{!"3555"}
!6211 = !DILocation(line: 394, column: 9, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6207, file: !41, line: 393, column: 44)
!6213 = !{!"3556"}
!6214 = !{!"3557"}
!6215 = !{!"3558"}
!6216 = !{!"3559"}
!6217 = !{!"3560"}
!6218 = !{!"3561"}
!6219 = !{!"3562"}
!6220 = !{!"3563"}
!6221 = !{!"3564"}
!6222 = !{!"3565"}
!6223 = !{!"3566"}
!6224 = !{!"3567"}
!6225 = !{!"3568"}
!6226 = !DILocation(line: 395, column: 5, scope: !6212)
!6227 = !{!"3569"}
!6228 = !DILocation(line: 393, column: 40, scope: !6207)
!6229 = !{!"3570"}
!6230 = !{!"3571"}
!6231 = !DILocation(line: 393, column: 5, scope: !6207)
!6232 = distinct !{!6232, !6209, !6233, !517}
!6233 = !DILocation(line: 395, column: 5, scope: !6201)
!6234 = !{!"3572"}
!6235 = !DILocation(line: 396, column: 26, scope: !6121)
!6236 = !{!"3573"}
!6237 = !{!"3574"}
!6238 = !DILocation(line: 396, column: 44, scope: !6121)
!6239 = !{!"3575"}
!6240 = !DILocation(line: 396, column: 5, scope: !6121)
!6241 = !{!"3576"}
!6242 = !DILocation(line: 396, column: 23, scope: !6121)
!6243 = !{!"3577"}
!6244 = !DILocation(line: 397, column: 1, scope: !6121)
!6245 = !{!"3578"}
