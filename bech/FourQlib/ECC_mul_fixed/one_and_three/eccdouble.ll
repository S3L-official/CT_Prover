; ModuleID = 'eccdouble.ll'
source_filename = "eccdouble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.point_extproj_precomp = type { [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]] }
%struct.point_precomp = type { [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]] }
%struct.CurveStruct = type { i32, i32, [2 x i64], [4 x i64], [4 x i64], [4 x i64], [4 x i64], [4 x i64], i32 }
%struct.point_affine = type { [2 x [4 x i32]], [2 x [4 x i32]] }
%struct.point_extproj = type { [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]], [2 x [4 x i32]] }
%struct.smack_value = type { i8* }

@mask_7fff = dso_local constant i32 2147483647, align 4, !dbg !0
@prime1271_0 = dso_local constant i32 -1, align 4, !dbg !39
@Montgomery_rprime = internal global [4 x i64] [i64 -2220303270273074903, i64 -2927769972551918349, i64 -4835729184385541343, i64 -925767909802655628], align 16, !dbg !43
@Montgomery_Rprime = internal global [4 x i64] [i64 -4026859660358986207, i64 1674958264924321917, i64 4395996777173939740, i64 1871306157521363], align 16, !dbg !46

; Function Attrs: noinline nounwind uwtable
define dso_local void @table_lookup_1x8([1 x %struct.point_extproj_precomp]* %0, %struct.point_extproj_precomp* %1, i32 %2, i32 %3) #0 !dbg !52 {
  %5 = alloca [1 x %struct.point_extproj_precomp], align 16
  %6 = alloca [1 x %struct.point_extproj_precomp], align 16
  call void @llvm.dbg.value(metadata [1 x %struct.point_extproj_precomp]* %0, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %1, metadata !69, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 %2, metadata !70, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 %3, metadata !71, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj_precomp]* %5, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj_precomp]* %6, metadata !74, metadata !DIExpression()), !dbg !75
  %7 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 0, !dbg !76
  %8 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %7, i64 0, i64 0, !dbg !76
  %9 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %8, i32 0, i32 0, !dbg !76
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !76
  %11 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !76
  %12 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %11, i32 0, i32 0, !dbg !76
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %12, i64 0, i64 0, !dbg !76
  call void @fp2copy1271([4 x i32]* %10, [4 x i32]* %13), !dbg !76
  %14 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 0, !dbg !76
  %15 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %14, i64 0, i64 0, !dbg !76
  %16 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %15, i32 0, i32 1, !dbg !76
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %16, i64 0, i64 0, !dbg !76
  %18 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !76
  %19 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %18, i32 0, i32 1, !dbg !76
  %20 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %19, i64 0, i64 0, !dbg !76
  call void @fp2copy1271([4 x i32]* %17, [4 x i32]* %20), !dbg !76
  %21 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 0, !dbg !76
  %22 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %21, i64 0, i64 0, !dbg !76
  %23 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %22, i32 0, i32 2, !dbg !76
  %24 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %23, i64 0, i64 0, !dbg !76
  %25 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !76
  %26 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %25, i32 0, i32 2, !dbg !76
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !76
  call void @fp2copy1271([4 x i32]* %24, [4 x i32]* %27), !dbg !76
  %28 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 0, !dbg !76
  %29 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %28, i64 0, i64 0, !dbg !76
  %30 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %29, i32 0, i32 3, !dbg !76
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %30, i64 0, i64 0, !dbg !76
  %32 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !76
  %33 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %32, i32 0, i32 3, !dbg !76
  %34 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %33, i64 0, i64 0, !dbg !76
  call void @fp2copy1271([4 x i32]* %31, [4 x i32]* %34), !dbg !76
  call void @llvm.dbg.value(metadata i32 1, metadata !77, metadata !DIExpression()), !dbg !68
  br label %35, !dbg !78

35:                                               ; preds = %287, %4
  %.02 = phi i32 [ %2, %4 ], [ %38, %287 ]
  %.01 = phi i32 [ 1, %4 ], [ %288, %287 ], !dbg !80
  call void @llvm.dbg.value(metadata i32 %.01, metadata !77, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 %.02, metadata !70, metadata !DIExpression()), !dbg !68
  %36 = icmp ult i32 %.01, 8, !dbg !81
  br i1 %36, label %37, label %289, !dbg !83

37:                                               ; preds = %35
  %38 = add i32 %.02, -1, !dbg !84
  call void @llvm.dbg.value(metadata i32 %38, metadata !70, metadata !DIExpression()), !dbg !68
  %39 = call i32 @is_digit_nonzero_ct(i32 %38), !dbg !86
  %40 = sub i32 %39, 1, !dbg !87
  call void @llvm.dbg.value(metadata i32 %40, metadata !88, metadata !DIExpression()), !dbg !68
  %41 = zext i32 %.01 to i64, !dbg !89
  %42 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 %41, !dbg !89
  %43 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %42, i64 0, i64 0, !dbg !89
  %44 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %43, i32 0, i32 0, !dbg !89
  %45 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %44, i64 0, i64 0, !dbg !89
  %46 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !89
  %47 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %46, i32 0, i32 0, !dbg !89
  %48 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %47, i64 0, i64 0, !dbg !89
  call void @fp2copy1271([4 x i32]* %45, [4 x i32]* %48), !dbg !89
  %49 = zext i32 %.01 to i64, !dbg !89
  %50 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 %49, !dbg !89
  %51 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %50, i64 0, i64 0, !dbg !89
  %52 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %51, i32 0, i32 1, !dbg !89
  %53 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %52, i64 0, i64 0, !dbg !89
  %54 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !89
  %55 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %54, i32 0, i32 1, !dbg !89
  %56 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %55, i64 0, i64 0, !dbg !89
  call void @fp2copy1271([4 x i32]* %53, [4 x i32]* %56), !dbg !89
  %57 = zext i32 %.01 to i64, !dbg !89
  %58 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 %57, !dbg !89
  %59 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %58, i64 0, i64 0, !dbg !89
  %60 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %59, i32 0, i32 2, !dbg !89
  %61 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %60, i64 0, i64 0, !dbg !89
  %62 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !89
  %63 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %62, i32 0, i32 2, !dbg !89
  %64 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %63, i64 0, i64 0, !dbg !89
  call void @fp2copy1271([4 x i32]* %61, [4 x i32]* %64), !dbg !89
  %65 = zext i32 %.01 to i64, !dbg !89
  %66 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %0, i64 %65, !dbg !89
  %67 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %66, i64 0, i64 0, !dbg !89
  %68 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %67, i32 0, i32 3, !dbg !89
  %69 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %68, i64 0, i64 0, !dbg !89
  %70 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !89
  %71 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %70, i32 0, i32 3, !dbg !89
  %72 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %71, i64 0, i64 0, !dbg !89
  call void @fp2copy1271([4 x i32]* %69, [4 x i32]* %72), !dbg !89
  call void @llvm.dbg.value(metadata i32 0, metadata !90, metadata !DIExpression()), !dbg !68
  br label %73, !dbg !91

73:                                               ; preds = %284, %37
  %.0 = phi i32 [ 0, %37 ], [ %285, %284 ], !dbg !93
  call void @llvm.dbg.value(metadata i32 %.0, metadata !90, metadata !DIExpression()), !dbg !68
  %74 = icmp ult i32 %.0, 4, !dbg !94
  br i1 %74, label %75, label %286, !dbg !96

75:                                               ; preds = %73
  %76 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !97
  %77 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %76, i32 0, i32 0, !dbg !97
  %78 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %77, i64 0, i64 0, !dbg !99
  %79 = zext i32 %.0 to i64, !dbg !99
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %78, i64 0, i64 %79, !dbg !99
  %81 = load i32, i32* %80, align 4, !dbg !99
  %82 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !100
  %83 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %82, i32 0, i32 0, !dbg !100
  %84 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %83, i64 0, i64 0, !dbg !101
  %85 = zext i32 %.0 to i64, !dbg !101
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %84, i64 0, i64 %85, !dbg !101
  %87 = load i32, i32* %86, align 4, !dbg !101
  %88 = xor i32 %81, %87, !dbg !102
  %89 = and i32 %40, %88, !dbg !103
  %90 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !104
  %91 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %90, i32 0, i32 0, !dbg !104
  %92 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %91, i64 0, i64 0, !dbg !105
  %93 = zext i32 %.0 to i64, !dbg !105
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %92, i64 0, i64 %93, !dbg !105
  %95 = load i32, i32* %94, align 4, !dbg !105
  %96 = xor i32 %89, %95, !dbg !106
  %97 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !107
  %98 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %97, i32 0, i32 0, !dbg !107
  %99 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %98, i64 0, i64 0, !dbg !108
  %100 = zext i32 %.0 to i64, !dbg !108
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %99, i64 0, i64 %100, !dbg !108
  store i32 %96, i32* %101, align 4, !dbg !109
  %102 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !110
  %103 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %102, i32 0, i32 0, !dbg !110
  %104 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %103, i64 0, i64 1, !dbg !111
  %105 = zext i32 %.0 to i64, !dbg !111
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %104, i64 0, i64 %105, !dbg !111
  %107 = load i32, i32* %106, align 4, !dbg !111
  %108 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !112
  %109 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %108, i32 0, i32 0, !dbg !112
  %110 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %109, i64 0, i64 1, !dbg !113
  %111 = zext i32 %.0 to i64, !dbg !113
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %110, i64 0, i64 %111, !dbg !113
  %113 = load i32, i32* %112, align 4, !dbg !113
  %114 = xor i32 %107, %113, !dbg !114
  %115 = and i32 %40, %114, !dbg !115
  %116 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !116
  %117 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %116, i32 0, i32 0, !dbg !116
  %118 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %117, i64 0, i64 1, !dbg !117
  %119 = zext i32 %.0 to i64, !dbg !117
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %118, i64 0, i64 %119, !dbg !117
  %121 = load i32, i32* %120, align 4, !dbg !117
  %122 = xor i32 %115, %121, !dbg !118
  %123 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !119
  %124 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %123, i32 0, i32 0, !dbg !119
  %125 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %124, i64 0, i64 1, !dbg !120
  %126 = zext i32 %.0 to i64, !dbg !120
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %125, i64 0, i64 %126, !dbg !120
  store i32 %122, i32* %127, align 4, !dbg !121
  %128 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !122
  %129 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %128, i32 0, i32 1, !dbg !122
  %130 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %129, i64 0, i64 0, !dbg !123
  %131 = zext i32 %.0 to i64, !dbg !123
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %130, i64 0, i64 %131, !dbg !123
  %133 = load i32, i32* %132, align 4, !dbg !123
  %134 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !124
  %135 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %134, i32 0, i32 1, !dbg !124
  %136 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %135, i64 0, i64 0, !dbg !125
  %137 = zext i32 %.0 to i64, !dbg !125
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %136, i64 0, i64 %137, !dbg !125
  %139 = load i32, i32* %138, align 4, !dbg !125
  %140 = xor i32 %133, %139, !dbg !126
  %141 = and i32 %40, %140, !dbg !127
  %142 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !128
  %143 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %142, i32 0, i32 1, !dbg !128
  %144 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %143, i64 0, i64 0, !dbg !129
  %145 = zext i32 %.0 to i64, !dbg !129
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %144, i64 0, i64 %145, !dbg !129
  %147 = load i32, i32* %146, align 4, !dbg !129
  %148 = xor i32 %141, %147, !dbg !130
  %149 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !131
  %150 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %149, i32 0, i32 1, !dbg !131
  %151 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %150, i64 0, i64 0, !dbg !132
  %152 = zext i32 %.0 to i64, !dbg !132
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %151, i64 0, i64 %152, !dbg !132
  store i32 %148, i32* %153, align 4, !dbg !133
  %154 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !134
  %155 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %154, i32 0, i32 1, !dbg !134
  %156 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %155, i64 0, i64 1, !dbg !135
  %157 = zext i32 %.0 to i64, !dbg !135
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %156, i64 0, i64 %157, !dbg !135
  %159 = load i32, i32* %158, align 4, !dbg !135
  %160 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !136
  %161 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %160, i32 0, i32 1, !dbg !136
  %162 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %161, i64 0, i64 1, !dbg !137
  %163 = zext i32 %.0 to i64, !dbg !137
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %162, i64 0, i64 %163, !dbg !137
  %165 = load i32, i32* %164, align 4, !dbg !137
  %166 = xor i32 %159, %165, !dbg !138
  %167 = and i32 %40, %166, !dbg !139
  %168 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !140
  %169 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %168, i32 0, i32 1, !dbg !140
  %170 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %169, i64 0, i64 1, !dbg !141
  %171 = zext i32 %.0 to i64, !dbg !141
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %170, i64 0, i64 %171, !dbg !141
  %173 = load i32, i32* %172, align 4, !dbg !141
  %174 = xor i32 %167, %173, !dbg !142
  %175 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !143
  %176 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %175, i32 0, i32 1, !dbg !143
  %177 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %176, i64 0, i64 1, !dbg !144
  %178 = zext i32 %.0 to i64, !dbg !144
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %177, i64 0, i64 %178, !dbg !144
  store i32 %174, i32* %179, align 4, !dbg !145
  %180 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !146
  %181 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %180, i32 0, i32 2, !dbg !146
  %182 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %181, i64 0, i64 0, !dbg !147
  %183 = zext i32 %.0 to i64, !dbg !147
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %182, i64 0, i64 %183, !dbg !147
  %185 = load i32, i32* %184, align 4, !dbg !147
  %186 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !148
  %187 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %186, i32 0, i32 2, !dbg !148
  %188 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %187, i64 0, i64 0, !dbg !149
  %189 = zext i32 %.0 to i64, !dbg !149
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %188, i64 0, i64 %189, !dbg !149
  %191 = load i32, i32* %190, align 4, !dbg !149
  %192 = xor i32 %185, %191, !dbg !150
  %193 = and i32 %40, %192, !dbg !151
  %194 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !152
  %195 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %194, i32 0, i32 2, !dbg !152
  %196 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %195, i64 0, i64 0, !dbg !153
  %197 = zext i32 %.0 to i64, !dbg !153
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %196, i64 0, i64 %197, !dbg !153
  %199 = load i32, i32* %198, align 4, !dbg !153
  %200 = xor i32 %193, %199, !dbg !154
  %201 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !155
  %202 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %201, i32 0, i32 2, !dbg !155
  %203 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %202, i64 0, i64 0, !dbg !156
  %204 = zext i32 %.0 to i64, !dbg !156
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %203, i64 0, i64 %204, !dbg !156
  store i32 %200, i32* %205, align 4, !dbg !157
  %206 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !158
  %207 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %206, i32 0, i32 2, !dbg !158
  %208 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %207, i64 0, i64 1, !dbg !159
  %209 = zext i32 %.0 to i64, !dbg !159
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %208, i64 0, i64 %209, !dbg !159
  %211 = load i32, i32* %210, align 4, !dbg !159
  %212 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !160
  %213 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %212, i32 0, i32 2, !dbg !160
  %214 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %213, i64 0, i64 1, !dbg !161
  %215 = zext i32 %.0 to i64, !dbg !161
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %214, i64 0, i64 %215, !dbg !161
  %217 = load i32, i32* %216, align 4, !dbg !161
  %218 = xor i32 %211, %217, !dbg !162
  %219 = and i32 %40, %218, !dbg !163
  %220 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !164
  %221 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %220, i32 0, i32 2, !dbg !164
  %222 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %221, i64 0, i64 1, !dbg !165
  %223 = zext i32 %.0 to i64, !dbg !165
  %224 = getelementptr inbounds [4 x i32], [4 x i32]* %222, i64 0, i64 %223, !dbg !165
  %225 = load i32, i32* %224, align 4, !dbg !165
  %226 = xor i32 %219, %225, !dbg !166
  %227 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !167
  %228 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %227, i32 0, i32 2, !dbg !167
  %229 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %228, i64 0, i64 1, !dbg !168
  %230 = zext i32 %.0 to i64, !dbg !168
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %229, i64 0, i64 %230, !dbg !168
  store i32 %226, i32* %231, align 4, !dbg !169
  %232 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !170
  %233 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %232, i32 0, i32 3, !dbg !170
  %234 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %233, i64 0, i64 0, !dbg !171
  %235 = zext i32 %.0 to i64, !dbg !171
  %236 = getelementptr inbounds [4 x i32], [4 x i32]* %234, i64 0, i64 %235, !dbg !171
  %237 = load i32, i32* %236, align 4, !dbg !171
  %238 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !172
  %239 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %238, i32 0, i32 3, !dbg !172
  %240 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %239, i64 0, i64 0, !dbg !173
  %241 = zext i32 %.0 to i64, !dbg !173
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %240, i64 0, i64 %241, !dbg !173
  %243 = load i32, i32* %242, align 4, !dbg !173
  %244 = xor i32 %237, %243, !dbg !174
  %245 = and i32 %40, %244, !dbg !175
  %246 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !176
  %247 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %246, i32 0, i32 3, !dbg !176
  %248 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %247, i64 0, i64 0, !dbg !177
  %249 = zext i32 %.0 to i64, !dbg !177
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %248, i64 0, i64 %249, !dbg !177
  %251 = load i32, i32* %250, align 4, !dbg !177
  %252 = xor i32 %245, %251, !dbg !178
  %253 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !179
  %254 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %253, i32 0, i32 3, !dbg !179
  %255 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %254, i64 0, i64 0, !dbg !180
  %256 = zext i32 %.0 to i64, !dbg !180
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %255, i64 0, i64 %256, !dbg !180
  store i32 %252, i32* %257, align 4, !dbg !181
  %258 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !182
  %259 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %258, i32 0, i32 3, !dbg !182
  %260 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %259, i64 0, i64 1, !dbg !183
  %261 = zext i32 %.0 to i64, !dbg !183
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* %260, i64 0, i64 %261, !dbg !183
  %263 = load i32, i32* %262, align 4, !dbg !183
  %264 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !184
  %265 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %264, i32 0, i32 3, !dbg !184
  %266 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %265, i64 0, i64 1, !dbg !185
  %267 = zext i32 %.0 to i64, !dbg !185
  %268 = getelementptr inbounds [4 x i32], [4 x i32]* %266, i64 0, i64 %267, !dbg !185
  %269 = load i32, i32* %268, align 4, !dbg !185
  %270 = xor i32 %263, %269, !dbg !186
  %271 = and i32 %40, %270, !dbg !187
  %272 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !188
  %273 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %272, i32 0, i32 3, !dbg !188
  %274 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %273, i64 0, i64 1, !dbg !189
  %275 = zext i32 %.0 to i64, !dbg !189
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %274, i64 0, i64 %275, !dbg !189
  %277 = load i32, i32* %276, align 4, !dbg !189
  %278 = xor i32 %271, %277, !dbg !190
  %279 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !191
  %280 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %279, i32 0, i32 3, !dbg !191
  %281 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %280, i64 0, i64 1, !dbg !192
  %282 = zext i32 %.0 to i64, !dbg !192
  %283 = getelementptr inbounds [4 x i32], [4 x i32]* %281, i64 0, i64 %282, !dbg !192
  store i32 %278, i32* %283, align 4, !dbg !193
  br label %284, !dbg !194

284:                                              ; preds = %75
  %285 = add i32 %.0, 1, !dbg !195
  call void @llvm.dbg.value(metadata i32 %285, metadata !90, metadata !DIExpression()), !dbg !68
  br label %73, !dbg !196, !llvm.loop !197

286:                                              ; preds = %73
  br label %287, !dbg !200

287:                                              ; preds = %286
  %288 = add i32 %.01, 1, !dbg !201
  call void @llvm.dbg.value(metadata i32 %288, metadata !77, metadata !DIExpression()), !dbg !68
  br label %35, !dbg !202, !llvm.loop !203

289:                                              ; preds = %35
  %290 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !205
  %291 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %290, i32 0, i32 3, !dbg !205
  %292 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %291, i64 0, i64 0, !dbg !206
  %293 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !207
  %294 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %293, i32 0, i32 3, !dbg !207
  %295 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %294, i64 0, i64 0, !dbg !208
  call void @fp2copy1271([4 x i32]* %292, [4 x i32]* %295), !dbg !209
  %296 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !210
  %297 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %296, i32 0, i32 0, !dbg !210
  %298 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %297, i64 0, i64 0, !dbg !211
  %299 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !212
  %300 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %299, i32 0, i32 1, !dbg !212
  %301 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %300, i64 0, i64 0, !dbg !213
  call void @fp2copy1271([4 x i32]* %298, [4 x i32]* %301), !dbg !214
  %302 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !215
  %303 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %302, i32 0, i32 1, !dbg !215
  %304 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %303, i64 0, i64 0, !dbg !216
  %305 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !217
  %306 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %305, i32 0, i32 0, !dbg !217
  %307 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %306, i64 0, i64 0, !dbg !218
  call void @fp2copy1271([4 x i32]* %304, [4 x i32]* %307), !dbg !219
  %308 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !220
  %309 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %308, i32 0, i32 3, !dbg !220
  %310 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %309, i64 0, i64 0, !dbg !221
  %311 = getelementptr inbounds [4 x i32], [4 x i32]* %310, i64 0, i64 0, !dbg !221
  call void @fpneg1271(i32* %311), !dbg !222
  %312 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !223
  %313 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %312, i32 0, i32 3, !dbg !223
  %314 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %313, i64 0, i64 1, !dbg !224
  %315 = getelementptr inbounds [4 x i32], [4 x i32]* %314, i64 0, i64 0, !dbg !224
  call void @fpneg1271(i32* %315), !dbg !225
  call void @llvm.dbg.value(metadata i32 0, metadata !90, metadata !DIExpression()), !dbg !68
  br label %316, !dbg !226

316:                                              ; preds = %475, %289
  %.1 = phi i32 [ 0, %289 ], [ %476, %475 ], !dbg !228
  call void @llvm.dbg.value(metadata i32 %.1, metadata !90, metadata !DIExpression()), !dbg !68
  %317 = icmp ult i32 %.1, 4, !dbg !229
  br i1 %317, label %318, label %477, !dbg !231

318:                                              ; preds = %316
  %319 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !232
  %320 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %319, i32 0, i32 0, !dbg !232
  %321 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %320, i64 0, i64 0, !dbg !234
  %322 = zext i32 %.1 to i64, !dbg !234
  %323 = getelementptr inbounds [4 x i32], [4 x i32]* %321, i64 0, i64 %322, !dbg !234
  %324 = load i32, i32* %323, align 4, !dbg !234
  %325 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !235
  %326 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %325, i32 0, i32 0, !dbg !235
  %327 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %326, i64 0, i64 0, !dbg !236
  %328 = zext i32 %.1 to i64, !dbg !236
  %329 = getelementptr inbounds [4 x i32], [4 x i32]* %327, i64 0, i64 %328, !dbg !236
  %330 = load i32, i32* %329, align 4, !dbg !236
  %331 = xor i32 %324, %330, !dbg !237
  %332 = and i32 %3, %331, !dbg !238
  %333 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !239
  %334 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %333, i32 0, i32 0, !dbg !239
  %335 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %334, i64 0, i64 0, !dbg !240
  %336 = zext i32 %.1 to i64, !dbg !240
  %337 = getelementptr inbounds [4 x i32], [4 x i32]* %335, i64 0, i64 %336, !dbg !240
  %338 = load i32, i32* %337, align 4, !dbg !240
  %339 = xor i32 %332, %338, !dbg !241
  %340 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !242
  %341 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %340, i32 0, i32 0, !dbg !242
  %342 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %341, i64 0, i64 0, !dbg !243
  %343 = zext i32 %.1 to i64, !dbg !243
  %344 = getelementptr inbounds [4 x i32], [4 x i32]* %342, i64 0, i64 %343, !dbg !243
  store i32 %339, i32* %344, align 4, !dbg !244
  %345 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !245
  %346 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %345, i32 0, i32 0, !dbg !245
  %347 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %346, i64 0, i64 1, !dbg !246
  %348 = zext i32 %.1 to i64, !dbg !246
  %349 = getelementptr inbounds [4 x i32], [4 x i32]* %347, i64 0, i64 %348, !dbg !246
  %350 = load i32, i32* %349, align 4, !dbg !246
  %351 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !247
  %352 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %351, i32 0, i32 0, !dbg !247
  %353 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %352, i64 0, i64 1, !dbg !248
  %354 = zext i32 %.1 to i64, !dbg !248
  %355 = getelementptr inbounds [4 x i32], [4 x i32]* %353, i64 0, i64 %354, !dbg !248
  %356 = load i32, i32* %355, align 4, !dbg !248
  %357 = xor i32 %350, %356, !dbg !249
  %358 = and i32 %3, %357, !dbg !250
  %359 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !251
  %360 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %359, i32 0, i32 0, !dbg !251
  %361 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %360, i64 0, i64 1, !dbg !252
  %362 = zext i32 %.1 to i64, !dbg !252
  %363 = getelementptr inbounds [4 x i32], [4 x i32]* %361, i64 0, i64 %362, !dbg !252
  %364 = load i32, i32* %363, align 4, !dbg !252
  %365 = xor i32 %358, %364, !dbg !253
  %366 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !254
  %367 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %366, i32 0, i32 0, !dbg !254
  %368 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %367, i64 0, i64 1, !dbg !255
  %369 = zext i32 %.1 to i64, !dbg !255
  %370 = getelementptr inbounds [4 x i32], [4 x i32]* %368, i64 0, i64 %369, !dbg !255
  store i32 %365, i32* %370, align 4, !dbg !256
  %371 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !257
  %372 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %371, i32 0, i32 1, !dbg !257
  %373 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %372, i64 0, i64 0, !dbg !258
  %374 = zext i32 %.1 to i64, !dbg !258
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %373, i64 0, i64 %374, !dbg !258
  %376 = load i32, i32* %375, align 4, !dbg !258
  %377 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !259
  %378 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %377, i32 0, i32 1, !dbg !259
  %379 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %378, i64 0, i64 0, !dbg !260
  %380 = zext i32 %.1 to i64, !dbg !260
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %379, i64 0, i64 %380, !dbg !260
  %382 = load i32, i32* %381, align 4, !dbg !260
  %383 = xor i32 %376, %382, !dbg !261
  %384 = and i32 %3, %383, !dbg !262
  %385 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !263
  %386 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %385, i32 0, i32 1, !dbg !263
  %387 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %386, i64 0, i64 0, !dbg !264
  %388 = zext i32 %.1 to i64, !dbg !264
  %389 = getelementptr inbounds [4 x i32], [4 x i32]* %387, i64 0, i64 %388, !dbg !264
  %390 = load i32, i32* %389, align 4, !dbg !264
  %391 = xor i32 %384, %390, !dbg !265
  %392 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !266
  %393 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %392, i32 0, i32 1, !dbg !266
  %394 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %393, i64 0, i64 0, !dbg !267
  %395 = zext i32 %.1 to i64, !dbg !267
  %396 = getelementptr inbounds [4 x i32], [4 x i32]* %394, i64 0, i64 %395, !dbg !267
  store i32 %391, i32* %396, align 4, !dbg !268
  %397 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !269
  %398 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %397, i32 0, i32 1, !dbg !269
  %399 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %398, i64 0, i64 1, !dbg !270
  %400 = zext i32 %.1 to i64, !dbg !270
  %401 = getelementptr inbounds [4 x i32], [4 x i32]* %399, i64 0, i64 %400, !dbg !270
  %402 = load i32, i32* %401, align 4, !dbg !270
  %403 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !271
  %404 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %403, i32 0, i32 1, !dbg !271
  %405 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %404, i64 0, i64 1, !dbg !272
  %406 = zext i32 %.1 to i64, !dbg !272
  %407 = getelementptr inbounds [4 x i32], [4 x i32]* %405, i64 0, i64 %406, !dbg !272
  %408 = load i32, i32* %407, align 4, !dbg !272
  %409 = xor i32 %402, %408, !dbg !273
  %410 = and i32 %3, %409, !dbg !274
  %411 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !275
  %412 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %411, i32 0, i32 1, !dbg !275
  %413 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %412, i64 0, i64 1, !dbg !276
  %414 = zext i32 %.1 to i64, !dbg !276
  %415 = getelementptr inbounds [4 x i32], [4 x i32]* %413, i64 0, i64 %414, !dbg !276
  %416 = load i32, i32* %415, align 4, !dbg !276
  %417 = xor i32 %410, %416, !dbg !277
  %418 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !278
  %419 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %418, i32 0, i32 1, !dbg !278
  %420 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %419, i64 0, i64 1, !dbg !279
  %421 = zext i32 %.1 to i64, !dbg !279
  %422 = getelementptr inbounds [4 x i32], [4 x i32]* %420, i64 0, i64 %421, !dbg !279
  store i32 %417, i32* %422, align 4, !dbg !280
  %423 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !281
  %424 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %423, i32 0, i32 3, !dbg !281
  %425 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %424, i64 0, i64 0, !dbg !282
  %426 = zext i32 %.1 to i64, !dbg !282
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %425, i64 0, i64 %426, !dbg !282
  %428 = load i32, i32* %427, align 4, !dbg !282
  %429 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !283
  %430 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %429, i32 0, i32 3, !dbg !283
  %431 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %430, i64 0, i64 0, !dbg !284
  %432 = zext i32 %.1 to i64, !dbg !284
  %433 = getelementptr inbounds [4 x i32], [4 x i32]* %431, i64 0, i64 %432, !dbg !284
  %434 = load i32, i32* %433, align 4, !dbg !284
  %435 = xor i32 %428, %434, !dbg !285
  %436 = and i32 %3, %435, !dbg !286
  %437 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !287
  %438 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %437, i32 0, i32 3, !dbg !287
  %439 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %438, i64 0, i64 0, !dbg !288
  %440 = zext i32 %.1 to i64, !dbg !288
  %441 = getelementptr inbounds [4 x i32], [4 x i32]* %439, i64 0, i64 %440, !dbg !288
  %442 = load i32, i32* %441, align 4, !dbg !288
  %443 = xor i32 %436, %442, !dbg !289
  %444 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !290
  %445 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %444, i32 0, i32 3, !dbg !290
  %446 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %445, i64 0, i64 0, !dbg !291
  %447 = zext i32 %.1 to i64, !dbg !291
  %448 = getelementptr inbounds [4 x i32], [4 x i32]* %446, i64 0, i64 %447, !dbg !291
  store i32 %443, i32* %448, align 4, !dbg !292
  %449 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !293
  %450 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %449, i32 0, i32 3, !dbg !293
  %451 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %450, i64 0, i64 1, !dbg !294
  %452 = zext i32 %.1 to i64, !dbg !294
  %453 = getelementptr inbounds [4 x i32], [4 x i32]* %451, i64 0, i64 %452, !dbg !294
  %454 = load i32, i32* %453, align 4, !dbg !294
  %455 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !295
  %456 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %455, i32 0, i32 3, !dbg !295
  %457 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %456, i64 0, i64 1, !dbg !296
  %458 = zext i32 %.1 to i64, !dbg !296
  %459 = getelementptr inbounds [4 x i32], [4 x i32]* %457, i64 0, i64 %458, !dbg !296
  %460 = load i32, i32* %459, align 4, !dbg !296
  %461 = xor i32 %454, %460, !dbg !297
  %462 = and i32 %3, %461, !dbg !298
  %463 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %6, i64 0, i64 0, !dbg !299
  %464 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %463, i32 0, i32 3, !dbg !299
  %465 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %464, i64 0, i64 1, !dbg !300
  %466 = zext i32 %.1 to i64, !dbg !300
  %467 = getelementptr inbounds [4 x i32], [4 x i32]* %465, i64 0, i64 %466, !dbg !300
  %468 = load i32, i32* %467, align 4, !dbg !300
  %469 = xor i32 %462, %468, !dbg !301
  %470 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !302
  %471 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %470, i32 0, i32 3, !dbg !302
  %472 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %471, i64 0, i64 1, !dbg !303
  %473 = zext i32 %.1 to i64, !dbg !303
  %474 = getelementptr inbounds [4 x i32], [4 x i32]* %472, i64 0, i64 %473, !dbg !303
  store i32 %469, i32* %474, align 4, !dbg !304
  br label %475, !dbg !305

475:                                              ; preds = %318
  %476 = add i32 %.1, 1, !dbg !306
  call void @llvm.dbg.value(metadata i32 %476, metadata !90, metadata !DIExpression()), !dbg !68
  br label %316, !dbg !307, !llvm.loop !308

477:                                              ; preds = %316
  %478 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !310
  %479 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %478, i32 0, i32 0, !dbg !310
  %480 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %479, i64 0, i64 0, !dbg !310
  %481 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 0, !dbg !310
  %482 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %481, i64 0, i64 0, !dbg !310
  call void @fp2copy1271([4 x i32]* %480, [4 x i32]* %482), !dbg !310
  %483 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !310
  %484 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %483, i32 0, i32 1, !dbg !310
  %485 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %484, i64 0, i64 0, !dbg !310
  %486 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 1, !dbg !310
  %487 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %486, i64 0, i64 0, !dbg !310
  call void @fp2copy1271([4 x i32]* %485, [4 x i32]* %487), !dbg !310
  %488 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !310
  %489 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %488, i32 0, i32 2, !dbg !310
  %490 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %489, i64 0, i64 0, !dbg !310
  %491 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 2, !dbg !310
  %492 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %491, i64 0, i64 0, !dbg !310
  call void @fp2copy1271([4 x i32]* %490, [4 x i32]* %492), !dbg !310
  %493 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %5, i64 0, i64 0, !dbg !310
  %494 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %493, i32 0, i32 3, !dbg !310
  %495 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %494, i64 0, i64 0, !dbg !310
  %496 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !310
  %497 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %496, i64 0, i64 0, !dbg !310
  call void @fp2copy1271([4 x i32]* %495, [4 x i32]* %497), !dbg !310
  ret void, !dbg !311
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2copy1271([4 x i32]* %0, [4 x i32]* %1) #0 !dbg !312 {
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata [4 x i32]* %1, metadata !318, metadata !DIExpression()), !dbg !317
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !319
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !319
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, !dbg !320
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !320
  call void @fpcopy1271(i32* %4, i32* %6), !dbg !321
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !322
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !322
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 1, !dbg !323
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0, !dbg !323
  call void @fpcopy1271(i32* %8, i32* %10), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_digit_nonzero_ct(i32 %0) #0 !dbg !326 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !329, metadata !DIExpression()), !dbg !330
  %2 = sub i32 0, %0, !dbg !331
  %3 = or i32 %0, %2, !dbg !332
  %4 = lshr i32 %3, 31, !dbg !333
  ret i32 %4, !dbg !334
}

declare dso_local void @fpneg1271(i32*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @table_lookup_fixed_base([1 x %struct.point_precomp]* %0, %struct.point_precomp* %1, i32 %2, i32 %3) #0 !dbg !335 {
  %5 = alloca [1 x %struct.point_precomp], align 16
  %6 = alloca [1 x %struct.point_precomp], align 16
  call void @llvm.dbg.value(metadata [1 x %struct.point_precomp]* %0, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata %struct.point_precomp* %1, metadata !341, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %2, metadata !342, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %3, metadata !343, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata [1 x %struct.point_precomp]* %5, metadata !344, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata [1 x %struct.point_precomp]* %6, metadata !346, metadata !DIExpression()), !dbg !347
  %7 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 0, !dbg !348
  %8 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %7, i64 0, i64 0, !dbg !348
  %9 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %8, i32 0, i32 0, !dbg !348
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !348
  %11 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !348
  %12 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %11, i32 0, i32 0, !dbg !348
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %12, i64 0, i64 0, !dbg !348
  call void @fp2copy1271([4 x i32]* %10, [4 x i32]* %13), !dbg !348
  %14 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 0, !dbg !348
  %15 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %14, i64 0, i64 0, !dbg !348
  %16 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %15, i32 0, i32 1, !dbg !348
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %16, i64 0, i64 0, !dbg !348
  %18 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !348
  %19 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %18, i32 0, i32 1, !dbg !348
  %20 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %19, i64 0, i64 0, !dbg !348
  call void @fp2copy1271([4 x i32]* %17, [4 x i32]* %20), !dbg !348
  %21 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 0, !dbg !348
  %22 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %21, i64 0, i64 0, !dbg !348
  %23 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %22, i32 0, i32 2, !dbg !348
  %24 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %23, i64 0, i64 0, !dbg !348
  %25 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !348
  %26 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %25, i32 0, i32 2, !dbg !348
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !348
  call void @fp2copy1271([4 x i32]* %24, [4 x i32]* %27), !dbg !348
  call void @llvm.dbg.value(metadata i32 1, metadata !349, metadata !DIExpression()), !dbg !340
  br label %28, !dbg !350

28:                                               ; preds = %220, %4
  %.02 = phi i32 [ %2, %4 ], [ %31, %220 ]
  %.01 = phi i32 [ 1, %4 ], [ %221, %220 ], !dbg !352
  call void @llvm.dbg.value(metadata i32 %.01, metadata !349, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %.02, metadata !342, metadata !DIExpression()), !dbg !340
  %29 = icmp ult i32 %.01, 16, !dbg !353
  br i1 %29, label %30, label %222, !dbg !355

30:                                               ; preds = %28
  %31 = add i32 %.02, -1, !dbg !356
  call void @llvm.dbg.value(metadata i32 %31, metadata !342, metadata !DIExpression()), !dbg !340
  %32 = call i32 @is_digit_nonzero_ct(i32 %31), !dbg !358
  %33 = sub i32 %32, 1, !dbg !359
  call void @llvm.dbg.value(metadata i32 %33, metadata !360, metadata !DIExpression()), !dbg !340
  %34 = zext i32 %.01 to i64, !dbg !361
  %35 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %34, !dbg !361
  %36 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %35, i64 0, i64 0, !dbg !361
  %37 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %36, i32 0, i32 0, !dbg !361
  %38 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %37, i64 0, i64 0, !dbg !361
  %39 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !361
  %40 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %39, i32 0, i32 0, !dbg !361
  %41 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %40, i64 0, i64 0, !dbg !361
  call void @fp2copy1271([4 x i32]* %38, [4 x i32]* %41), !dbg !361
  %42 = zext i32 %.01 to i64, !dbg !361
  %43 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %42, !dbg !361
  %44 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %43, i64 0, i64 0, !dbg !361
  %45 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %44, i32 0, i32 1, !dbg !361
  %46 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %45, i64 0, i64 0, !dbg !361
  %47 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !361
  %48 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %47, i32 0, i32 1, !dbg !361
  %49 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %48, i64 0, i64 0, !dbg !361
  call void @fp2copy1271([4 x i32]* %46, [4 x i32]* %49), !dbg !361
  %50 = zext i32 %.01 to i64, !dbg !361
  %51 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %50, !dbg !361
  %52 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %51, i64 0, i64 0, !dbg !361
  %53 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %52, i32 0, i32 2, !dbg !361
  %54 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %53, i64 0, i64 0, !dbg !361
  %55 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !361
  %56 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %55, i32 0, i32 2, !dbg !361
  %57 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %56, i64 0, i64 0, !dbg !361
  call void @fp2copy1271([4 x i32]* %54, [4 x i32]* %57), !dbg !361
  call void @llvm.dbg.value(metadata i32 0, metadata !362, metadata !DIExpression()), !dbg !340
  br label %58, !dbg !363

58:                                               ; preds = %217, %30
  %.0 = phi i32 [ 0, %30 ], [ %218, %217 ], !dbg !365
  call void @llvm.dbg.value(metadata i32 %.0, metadata !362, metadata !DIExpression()), !dbg !340
  %59 = icmp ult i32 %.0, 4, !dbg !366
  br i1 %59, label %60, label %219, !dbg !368

60:                                               ; preds = %58
  %61 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !369
  %62 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %61, i32 0, i32 0, !dbg !369
  %63 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %62, i64 0, i64 0, !dbg !371
  %64 = zext i32 %.0 to i64, !dbg !371
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i64 0, i64 %64, !dbg !371
  %66 = load i32, i32* %65, align 4, !dbg !371
  %67 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !372
  %68 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %67, i32 0, i32 0, !dbg !372
  %69 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %68, i64 0, i64 0, !dbg !373
  %70 = zext i32 %.0 to i64, !dbg !373
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i64 0, i64 %70, !dbg !373
  %72 = load i32, i32* %71, align 4, !dbg !373
  %73 = xor i32 %66, %72, !dbg !374
  %74 = and i32 %33, %73, !dbg !375
  %75 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !376
  %76 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %75, i32 0, i32 0, !dbg !376
  %77 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %76, i64 0, i64 0, !dbg !377
  %78 = zext i32 %.0 to i64, !dbg !377
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %77, i64 0, i64 %78, !dbg !377
  %80 = load i32, i32* %79, align 4, !dbg !377
  %81 = xor i32 %74, %80, !dbg !378
  %82 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !379
  %83 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %82, i32 0, i32 0, !dbg !379
  %84 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %83, i64 0, i64 0, !dbg !380
  %85 = zext i32 %.0 to i64, !dbg !380
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %84, i64 0, i64 %85, !dbg !380
  store i32 %81, i32* %86, align 4, !dbg !381
  %87 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !382
  %88 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %87, i32 0, i32 0, !dbg !382
  %89 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %88, i64 0, i64 1, !dbg !383
  %90 = zext i32 %.0 to i64, !dbg !383
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %89, i64 0, i64 %90, !dbg !383
  %92 = load i32, i32* %91, align 4, !dbg !383
  %93 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !384
  %94 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %93, i32 0, i32 0, !dbg !384
  %95 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %94, i64 0, i64 1, !dbg !385
  %96 = zext i32 %.0 to i64, !dbg !385
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %95, i64 0, i64 %96, !dbg !385
  %98 = load i32, i32* %97, align 4, !dbg !385
  %99 = xor i32 %92, %98, !dbg !386
  %100 = and i32 %33, %99, !dbg !387
  %101 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !388
  %102 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %101, i32 0, i32 0, !dbg !388
  %103 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %102, i64 0, i64 1, !dbg !389
  %104 = zext i32 %.0 to i64, !dbg !389
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %103, i64 0, i64 %104, !dbg !389
  %106 = load i32, i32* %105, align 4, !dbg !389
  %107 = xor i32 %100, %106, !dbg !390
  %108 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !391
  %109 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %108, i32 0, i32 0, !dbg !391
  %110 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %109, i64 0, i64 1, !dbg !392
  %111 = zext i32 %.0 to i64, !dbg !392
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %110, i64 0, i64 %111, !dbg !392
  store i32 %107, i32* %112, align 4, !dbg !393
  %113 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !394
  %114 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %113, i32 0, i32 1, !dbg !394
  %115 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %114, i64 0, i64 0, !dbg !395
  %116 = zext i32 %.0 to i64, !dbg !395
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %115, i64 0, i64 %116, !dbg !395
  %118 = load i32, i32* %117, align 4, !dbg !395
  %119 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !396
  %120 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %119, i32 0, i32 1, !dbg !396
  %121 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %120, i64 0, i64 0, !dbg !397
  %122 = zext i32 %.0 to i64, !dbg !397
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %121, i64 0, i64 %122, !dbg !397
  %124 = load i32, i32* %123, align 4, !dbg !397
  %125 = xor i32 %118, %124, !dbg !398
  %126 = and i32 %33, %125, !dbg !399
  %127 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !400
  %128 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %127, i32 0, i32 1, !dbg !400
  %129 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %128, i64 0, i64 0, !dbg !401
  %130 = zext i32 %.0 to i64, !dbg !401
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %129, i64 0, i64 %130, !dbg !401
  %132 = load i32, i32* %131, align 4, !dbg !401
  %133 = xor i32 %126, %132, !dbg !402
  %134 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !403
  %135 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %134, i32 0, i32 1, !dbg !403
  %136 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %135, i64 0, i64 0, !dbg !404
  %137 = zext i32 %.0 to i64, !dbg !404
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %136, i64 0, i64 %137, !dbg !404
  store i32 %133, i32* %138, align 4, !dbg !405
  %139 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !406
  %140 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %139, i32 0, i32 1, !dbg !406
  %141 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %140, i64 0, i64 1, !dbg !407
  %142 = zext i32 %.0 to i64, !dbg !407
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %141, i64 0, i64 %142, !dbg !407
  %144 = load i32, i32* %143, align 4, !dbg !407
  %145 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !408
  %146 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %145, i32 0, i32 1, !dbg !408
  %147 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %146, i64 0, i64 1, !dbg !409
  %148 = zext i32 %.0 to i64, !dbg !409
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %147, i64 0, i64 %148, !dbg !409
  %150 = load i32, i32* %149, align 4, !dbg !409
  %151 = xor i32 %144, %150, !dbg !410
  %152 = and i32 %33, %151, !dbg !411
  %153 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !412
  %154 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %153, i32 0, i32 1, !dbg !412
  %155 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %154, i64 0, i64 1, !dbg !413
  %156 = zext i32 %.0 to i64, !dbg !413
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %155, i64 0, i64 %156, !dbg !413
  %158 = load i32, i32* %157, align 4, !dbg !413
  %159 = xor i32 %152, %158, !dbg !414
  %160 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !415
  %161 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %160, i32 0, i32 1, !dbg !415
  %162 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %161, i64 0, i64 1, !dbg !416
  %163 = zext i32 %.0 to i64, !dbg !416
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %162, i64 0, i64 %163, !dbg !416
  store i32 %159, i32* %164, align 4, !dbg !417
  %165 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !418
  %166 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %165, i32 0, i32 2, !dbg !418
  %167 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %166, i64 0, i64 0, !dbg !419
  %168 = zext i32 %.0 to i64, !dbg !419
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %167, i64 0, i64 %168, !dbg !419
  %170 = load i32, i32* %169, align 4, !dbg !419
  %171 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !420
  %172 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %171, i32 0, i32 2, !dbg !420
  %173 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %172, i64 0, i64 0, !dbg !421
  %174 = zext i32 %.0 to i64, !dbg !421
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %173, i64 0, i64 %174, !dbg !421
  %176 = load i32, i32* %175, align 4, !dbg !421
  %177 = xor i32 %170, %176, !dbg !422
  %178 = and i32 %33, %177, !dbg !423
  %179 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !424
  %180 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %179, i32 0, i32 2, !dbg !424
  %181 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %180, i64 0, i64 0, !dbg !425
  %182 = zext i32 %.0 to i64, !dbg !425
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %181, i64 0, i64 %182, !dbg !425
  %184 = load i32, i32* %183, align 4, !dbg !425
  %185 = xor i32 %178, %184, !dbg !426
  %186 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !427
  %187 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %186, i32 0, i32 2, !dbg !427
  %188 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %187, i64 0, i64 0, !dbg !428
  %189 = zext i32 %.0 to i64, !dbg !428
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %188, i64 0, i64 %189, !dbg !428
  store i32 %185, i32* %190, align 4, !dbg !429
  %191 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !430
  %192 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %191, i32 0, i32 2, !dbg !430
  %193 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %192, i64 0, i64 1, !dbg !431
  %194 = zext i32 %.0 to i64, !dbg !431
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %193, i64 0, i64 %194, !dbg !431
  %196 = load i32, i32* %195, align 4, !dbg !431
  %197 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !432
  %198 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %197, i32 0, i32 2, !dbg !432
  %199 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %198, i64 0, i64 1, !dbg !433
  %200 = zext i32 %.0 to i64, !dbg !433
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %199, i64 0, i64 %200, !dbg !433
  %202 = load i32, i32* %201, align 4, !dbg !433
  %203 = xor i32 %196, %202, !dbg !434
  %204 = and i32 %33, %203, !dbg !435
  %205 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !436
  %206 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %205, i32 0, i32 2, !dbg !436
  %207 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %206, i64 0, i64 1, !dbg !437
  %208 = zext i32 %.0 to i64, !dbg !437
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %207, i64 0, i64 %208, !dbg !437
  %210 = load i32, i32* %209, align 4, !dbg !437
  %211 = xor i32 %204, %210, !dbg !438
  %212 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !439
  %213 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %212, i32 0, i32 2, !dbg !439
  %214 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %213, i64 0, i64 1, !dbg !440
  %215 = zext i32 %.0 to i64, !dbg !440
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %214, i64 0, i64 %215, !dbg !440
  store i32 %211, i32* %216, align 4, !dbg !441
  br label %217, !dbg !442

217:                                              ; preds = %60
  %218 = add i32 %.0, 1, !dbg !443
  call void @llvm.dbg.value(metadata i32 %218, metadata !362, metadata !DIExpression()), !dbg !340
  br label %58, !dbg !444, !llvm.loop !445

219:                                              ; preds = %58
  br label %220, !dbg !447

220:                                              ; preds = %219
  %221 = add i32 %.01, 1, !dbg !448
  call void @llvm.dbg.value(metadata i32 %221, metadata !349, metadata !DIExpression()), !dbg !340
  br label %28, !dbg !449, !llvm.loop !450

222:                                              ; preds = %28
  %223 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !452
  %224 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %223, i32 0, i32 2, !dbg !452
  %225 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %224, i64 0, i64 0, !dbg !453
  %226 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !454
  %227 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %226, i32 0, i32 2, !dbg !454
  %228 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %227, i64 0, i64 0, !dbg !455
  call void @fp2copy1271([4 x i32]* %225, [4 x i32]* %228), !dbg !456
  %229 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !457
  %230 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %229, i32 0, i32 0, !dbg !457
  %231 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %230, i64 0, i64 0, !dbg !458
  %232 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !459
  %233 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %232, i32 0, i32 1, !dbg !459
  %234 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %233, i64 0, i64 0, !dbg !460
  call void @fp2copy1271([4 x i32]* %231, [4 x i32]* %234), !dbg !461
  %235 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !462
  %236 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %235, i32 0, i32 1, !dbg !462
  %237 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %236, i64 0, i64 0, !dbg !463
  %238 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !464
  %239 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %238, i32 0, i32 0, !dbg !464
  %240 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %239, i64 0, i64 0, !dbg !465
  call void @fp2copy1271([4 x i32]* %237, [4 x i32]* %240), !dbg !466
  %241 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !467
  %242 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %241, i32 0, i32 2, !dbg !467
  %243 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %242, i64 0, i64 0, !dbg !468
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %243, i64 0, i64 0, !dbg !468
  call void @fpneg1271(i32* %244), !dbg !469
  %245 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !470
  %246 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %245, i32 0, i32 2, !dbg !470
  %247 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %246, i64 0, i64 1, !dbg !471
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %247, i64 0, i64 0, !dbg !471
  call void @fpneg1271(i32* %248), !dbg !472
  call void @llvm.dbg.value(metadata i32 0, metadata !362, metadata !DIExpression()), !dbg !340
  br label %249, !dbg !473

249:                                              ; preds = %408, %222
  %.1 = phi i32 [ 0, %222 ], [ %409, %408 ], !dbg !475
  call void @llvm.dbg.value(metadata i32 %.1, metadata !362, metadata !DIExpression()), !dbg !340
  %250 = icmp ult i32 %.1, 4, !dbg !476
  br i1 %250, label %251, label %410, !dbg !478

251:                                              ; preds = %249
  %252 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !479
  %253 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %252, i32 0, i32 0, !dbg !479
  %254 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %253, i64 0, i64 0, !dbg !481
  %255 = zext i32 %.1 to i64, !dbg !481
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %254, i64 0, i64 %255, !dbg !481
  %257 = load i32, i32* %256, align 4, !dbg !481
  %258 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !482
  %259 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %258, i32 0, i32 0, !dbg !482
  %260 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %259, i64 0, i64 0, !dbg !483
  %261 = zext i32 %.1 to i64, !dbg !483
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* %260, i64 0, i64 %261, !dbg !483
  %263 = load i32, i32* %262, align 4, !dbg !483
  %264 = xor i32 %257, %263, !dbg !484
  %265 = and i32 %3, %264, !dbg !485
  %266 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !486
  %267 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %266, i32 0, i32 0, !dbg !486
  %268 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %267, i64 0, i64 0, !dbg !487
  %269 = zext i32 %.1 to i64, !dbg !487
  %270 = getelementptr inbounds [4 x i32], [4 x i32]* %268, i64 0, i64 %269, !dbg !487
  %271 = load i32, i32* %270, align 4, !dbg !487
  %272 = xor i32 %265, %271, !dbg !488
  %273 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !489
  %274 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %273, i32 0, i32 0, !dbg !489
  %275 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %274, i64 0, i64 0, !dbg !490
  %276 = zext i32 %.1 to i64, !dbg !490
  %277 = getelementptr inbounds [4 x i32], [4 x i32]* %275, i64 0, i64 %276, !dbg !490
  store i32 %272, i32* %277, align 4, !dbg !491
  %278 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !492
  %279 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %278, i32 0, i32 0, !dbg !492
  %280 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %279, i64 0, i64 1, !dbg !493
  %281 = zext i32 %.1 to i64, !dbg !493
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %280, i64 0, i64 %281, !dbg !493
  %283 = load i32, i32* %282, align 4, !dbg !493
  %284 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !494
  %285 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %284, i32 0, i32 0, !dbg !494
  %286 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %285, i64 0, i64 1, !dbg !495
  %287 = zext i32 %.1 to i64, !dbg !495
  %288 = getelementptr inbounds [4 x i32], [4 x i32]* %286, i64 0, i64 %287, !dbg !495
  %289 = load i32, i32* %288, align 4, !dbg !495
  %290 = xor i32 %283, %289, !dbg !496
  %291 = and i32 %3, %290, !dbg !497
  %292 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !498
  %293 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %292, i32 0, i32 0, !dbg !498
  %294 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %293, i64 0, i64 1, !dbg !499
  %295 = zext i32 %.1 to i64, !dbg !499
  %296 = getelementptr inbounds [4 x i32], [4 x i32]* %294, i64 0, i64 %295, !dbg !499
  %297 = load i32, i32* %296, align 4, !dbg !499
  %298 = xor i32 %291, %297, !dbg !500
  %299 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !501
  %300 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %299, i32 0, i32 0, !dbg !501
  %301 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %300, i64 0, i64 1, !dbg !502
  %302 = zext i32 %.1 to i64, !dbg !502
  %303 = getelementptr inbounds [4 x i32], [4 x i32]* %301, i64 0, i64 %302, !dbg !502
  store i32 %298, i32* %303, align 4, !dbg !503
  %304 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !504
  %305 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %304, i32 0, i32 1, !dbg !504
  %306 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %305, i64 0, i64 0, !dbg !505
  %307 = zext i32 %.1 to i64, !dbg !505
  %308 = getelementptr inbounds [4 x i32], [4 x i32]* %306, i64 0, i64 %307, !dbg !505
  %309 = load i32, i32* %308, align 4, !dbg !505
  %310 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !506
  %311 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %310, i32 0, i32 1, !dbg !506
  %312 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %311, i64 0, i64 0, !dbg !507
  %313 = zext i32 %.1 to i64, !dbg !507
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %312, i64 0, i64 %313, !dbg !507
  %315 = load i32, i32* %314, align 4, !dbg !507
  %316 = xor i32 %309, %315, !dbg !508
  %317 = and i32 %3, %316, !dbg !509
  %318 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !510
  %319 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %318, i32 0, i32 1, !dbg !510
  %320 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %319, i64 0, i64 0, !dbg !511
  %321 = zext i32 %.1 to i64, !dbg !511
  %322 = getelementptr inbounds [4 x i32], [4 x i32]* %320, i64 0, i64 %321, !dbg !511
  %323 = load i32, i32* %322, align 4, !dbg !511
  %324 = xor i32 %317, %323, !dbg !512
  %325 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !513
  %326 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %325, i32 0, i32 1, !dbg !513
  %327 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %326, i64 0, i64 0, !dbg !514
  %328 = zext i32 %.1 to i64, !dbg !514
  %329 = getelementptr inbounds [4 x i32], [4 x i32]* %327, i64 0, i64 %328, !dbg !514
  store i32 %324, i32* %329, align 4, !dbg !515
  %330 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !516
  %331 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %330, i32 0, i32 1, !dbg !516
  %332 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %331, i64 0, i64 1, !dbg !517
  %333 = zext i32 %.1 to i64, !dbg !517
  %334 = getelementptr inbounds [4 x i32], [4 x i32]* %332, i64 0, i64 %333, !dbg !517
  %335 = load i32, i32* %334, align 4, !dbg !517
  %336 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !518
  %337 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %336, i32 0, i32 1, !dbg !518
  %338 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %337, i64 0, i64 1, !dbg !519
  %339 = zext i32 %.1 to i64, !dbg !519
  %340 = getelementptr inbounds [4 x i32], [4 x i32]* %338, i64 0, i64 %339, !dbg !519
  %341 = load i32, i32* %340, align 4, !dbg !519
  %342 = xor i32 %335, %341, !dbg !520
  %343 = and i32 %3, %342, !dbg !521
  %344 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !522
  %345 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %344, i32 0, i32 1, !dbg !522
  %346 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %345, i64 0, i64 1, !dbg !523
  %347 = zext i32 %.1 to i64, !dbg !523
  %348 = getelementptr inbounds [4 x i32], [4 x i32]* %346, i64 0, i64 %347, !dbg !523
  %349 = load i32, i32* %348, align 4, !dbg !523
  %350 = xor i32 %343, %349, !dbg !524
  %351 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !525
  %352 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %351, i32 0, i32 1, !dbg !525
  %353 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %352, i64 0, i64 1, !dbg !526
  %354 = zext i32 %.1 to i64, !dbg !526
  %355 = getelementptr inbounds [4 x i32], [4 x i32]* %353, i64 0, i64 %354, !dbg !526
  store i32 %350, i32* %355, align 4, !dbg !527
  %356 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !528
  %357 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %356, i32 0, i32 2, !dbg !528
  %358 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %357, i64 0, i64 0, !dbg !529
  %359 = zext i32 %.1 to i64, !dbg !529
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* %358, i64 0, i64 %359, !dbg !529
  %361 = load i32, i32* %360, align 4, !dbg !529
  %362 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !530
  %363 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %362, i32 0, i32 2, !dbg !530
  %364 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %363, i64 0, i64 0, !dbg !531
  %365 = zext i32 %.1 to i64, !dbg !531
  %366 = getelementptr inbounds [4 x i32], [4 x i32]* %364, i64 0, i64 %365, !dbg !531
  %367 = load i32, i32* %366, align 4, !dbg !531
  %368 = xor i32 %361, %367, !dbg !532
  %369 = and i32 %3, %368, !dbg !533
  %370 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !534
  %371 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %370, i32 0, i32 2, !dbg !534
  %372 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %371, i64 0, i64 0, !dbg !535
  %373 = zext i32 %.1 to i64, !dbg !535
  %374 = getelementptr inbounds [4 x i32], [4 x i32]* %372, i64 0, i64 %373, !dbg !535
  %375 = load i32, i32* %374, align 4, !dbg !535
  %376 = xor i32 %369, %375, !dbg !536
  %377 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !537
  %378 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %377, i32 0, i32 2, !dbg !537
  %379 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %378, i64 0, i64 0, !dbg !538
  %380 = zext i32 %.1 to i64, !dbg !538
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %379, i64 0, i64 %380, !dbg !538
  store i32 %376, i32* %381, align 4, !dbg !539
  %382 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !540
  %383 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %382, i32 0, i32 2, !dbg !540
  %384 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %383, i64 0, i64 1, !dbg !541
  %385 = zext i32 %.1 to i64, !dbg !541
  %386 = getelementptr inbounds [4 x i32], [4 x i32]* %384, i64 0, i64 %385, !dbg !541
  %387 = load i32, i32* %386, align 4, !dbg !541
  %388 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %6, i64 0, i64 0, !dbg !542
  %389 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %388, i32 0, i32 2, !dbg !542
  %390 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %389, i64 0, i64 1, !dbg !543
  %391 = zext i32 %.1 to i64, !dbg !543
  %392 = getelementptr inbounds [4 x i32], [4 x i32]* %390, i64 0, i64 %391, !dbg !543
  %393 = load i32, i32* %392, align 4, !dbg !543
  %394 = xor i32 %387, %393, !dbg !544
  %395 = and i32 %3, %394, !dbg !545
  %396 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !546
  %397 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %396, i32 0, i32 2, !dbg !546
  %398 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %397, i64 0, i64 1, !dbg !547
  %399 = zext i32 %.1 to i64, !dbg !547
  %400 = getelementptr inbounds [4 x i32], [4 x i32]* %398, i64 0, i64 %399, !dbg !547
  %401 = load i32, i32* %400, align 4, !dbg !547
  %402 = xor i32 %395, %401, !dbg !548
  %403 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !549
  %404 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %403, i32 0, i32 2, !dbg !549
  %405 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %404, i64 0, i64 1, !dbg !550
  %406 = zext i32 %.1 to i64, !dbg !550
  %407 = getelementptr inbounds [4 x i32], [4 x i32]* %405, i64 0, i64 %406, !dbg !550
  store i32 %402, i32* %407, align 4, !dbg !551
  br label %408, !dbg !552

408:                                              ; preds = %251
  %409 = add i32 %.1, 1, !dbg !553
  call void @llvm.dbg.value(metadata i32 %409, metadata !362, metadata !DIExpression()), !dbg !340
  br label %249, !dbg !554, !llvm.loop !555

410:                                              ; preds = %249
  %411 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !557
  %412 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %411, i32 0, i32 0, !dbg !557
  %413 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %412, i64 0, i64 0, !dbg !557
  %414 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %1, i32 0, i32 0, !dbg !557
  %415 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %414, i64 0, i64 0, !dbg !557
  call void @fp2copy1271([4 x i32]* %413, [4 x i32]* %415), !dbg !557
  %416 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !557
  %417 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %416, i32 0, i32 1, !dbg !557
  %418 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %417, i64 0, i64 0, !dbg !557
  %419 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %1, i32 0, i32 1, !dbg !557
  %420 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %419, i64 0, i64 0, !dbg !557
  call void @fp2copy1271([4 x i32]* %418, [4 x i32]* %420), !dbg !557
  %421 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %5, i64 0, i64 0, !dbg !557
  %422 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %421, i32 0, i32 2, !dbg !557
  %423 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %422, i64 0, i64 0, !dbg !557
  %424 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %1, i32 0, i32 2, !dbg !557
  %425 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %424, i64 0, i64 0, !dbg !557
  call void @fp2copy1271([4 x i32]* %423, [4 x i32]* %425), !dbg !557
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @digit_x_digit(i32 %0, i32 %1, i32* %2) #0 !dbg !559 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i32 %1, metadata !564, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i32* %2, metadata !565, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i32 65535, metadata !566, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i32 -65536, metadata !567, metadata !DIExpression()), !dbg !563
  %4 = and i32 %0, 65535, !dbg !568
  call void @llvm.dbg.value(metadata i32 %4, metadata !569, metadata !DIExpression()), !dbg !563
  %5 = lshr i32 %0, 16, !dbg !570
  call void @llvm.dbg.value(metadata i32 %5, metadata !571, metadata !DIExpression()), !dbg !563
  %6 = and i32 %1, 65535, !dbg !572
  call void @llvm.dbg.value(metadata i32 %6, metadata !573, metadata !DIExpression()), !dbg !563
  %7 = lshr i32 %1, 16, !dbg !574
  call void @llvm.dbg.value(metadata i32 %7, metadata !575, metadata !DIExpression()), !dbg !563
  %8 = mul i32 %4, %6, !dbg !576
  call void @llvm.dbg.value(metadata i32 %8, metadata !577, metadata !DIExpression()), !dbg !563
  %9 = mul i32 %4, %7, !dbg !578
  call void @llvm.dbg.value(metadata i32 %9, metadata !579, metadata !DIExpression()), !dbg !563
  %10 = mul i32 %5, %6, !dbg !580
  call void @llvm.dbg.value(metadata i32 %10, metadata !581, metadata !DIExpression()), !dbg !563
  %11 = mul i32 %5, %7, !dbg !582
  call void @llvm.dbg.value(metadata i32 %11, metadata !583, metadata !DIExpression()), !dbg !563
  %12 = and i32 %8, 65535, !dbg !584
  %13 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !585
  store i32 %12, i32* %13, align 4, !dbg !586
  %14 = lshr i32 %8, 16, !dbg !587
  call void @llvm.dbg.value(metadata i32 %14, metadata !588, metadata !DIExpression()), !dbg !563
  %15 = and i32 %10, 65535, !dbg !589
  call void @llvm.dbg.value(metadata i32 %15, metadata !590, metadata !DIExpression()), !dbg !563
  %16 = and i32 %9, 65535, !dbg !591
  call void @llvm.dbg.value(metadata i32 %16, metadata !592, metadata !DIExpression()), !dbg !563
  %17 = add i32 %14, %15, !dbg !593
  %18 = add i32 %17, %16, !dbg !594
  call void @llvm.dbg.value(metadata i32 %18, metadata !595, metadata !DIExpression()), !dbg !563
  %19 = lshr i32 %18, 16, !dbg !596
  call void @llvm.dbg.value(metadata i32 %19, metadata !597, metadata !DIExpression()), !dbg !563
  %20 = shl i32 %18, 16, !dbg !598
  %21 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !599
  %22 = load i32, i32* %21, align 4, !dbg !600
  %23 = xor i32 %22, %20, !dbg !600
  store i32 %23, i32* %21, align 4, !dbg !600
  %24 = lshr i32 %10, 16, !dbg !601
  call void @llvm.dbg.value(metadata i32 %24, metadata !588, metadata !DIExpression()), !dbg !563
  %25 = lshr i32 %9, 16, !dbg !602
  call void @llvm.dbg.value(metadata i32 %25, metadata !590, metadata !DIExpression()), !dbg !563
  %26 = and i32 %11, 65535, !dbg !603
  call void @llvm.dbg.value(metadata i32 %26, metadata !592, metadata !DIExpression()), !dbg !563
  %27 = add i32 %24, %25, !dbg !604
  %28 = add i32 %27, %26, !dbg !605
  %29 = add i32 %28, %19, !dbg !606
  call void @llvm.dbg.value(metadata i32 %29, metadata !595, metadata !DIExpression()), !dbg !563
  %30 = and i32 %29, 65535, !dbg !607
  %31 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !608
  store i32 %30, i32* %31, align 4, !dbg !609
  %32 = and i32 %29, -65536, !dbg !610
  call void @llvm.dbg.value(metadata i32 %32, metadata !597, metadata !DIExpression()), !dbg !563
  %33 = and i32 %11, -65536, !dbg !611
  %34 = add i32 %33, %32, !dbg !612
  %35 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !613
  %36 = load i32, i32* %35, align 4, !dbg !614
  %37 = xor i32 %36, %34, !dbg !614
  store i32 %37, i32* %35, align 4, !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fpmul1271(i32* %0, i32* %1, i32* %2) #0 !dbg !616 {
  %4 = alloca [2 x i32], align 4
  %5 = alloca [8 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !619, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32* %1, metadata !621, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32* %2, metadata !622, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.declare(metadata [2 x i32]* %4, metadata !623, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata [8 x i32]* %5, metadata !626, metadata !DIExpression()), !dbg !630
  %6 = bitcast [8 x i32]* %5 to i8*, !dbg !630
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 32, i1 false), !dbg !630
  call void @llvm.dbg.value(metadata i32 0, metadata !631, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 0, metadata !632, metadata !DIExpression()), !dbg !620
  br label %7, !dbg !633

7:                                                ; preds = %49, %3
  %.03 = phi i32 [ 0, %3 ], [ %50, %49 ], !dbg !635
  call void @llvm.dbg.value(metadata i32 %.03, metadata !632, metadata !DIExpression()), !dbg !620
  %8 = icmp ult i32 %.03, 4, !dbg !636
  br i1 %8, label %9, label %51, !dbg !638

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !639, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 0, metadata !640, metadata !DIExpression()), !dbg !620
  br label %10, !dbg !641

10:                                               ; preds = %43, %9
  %.05 = phi i32 [ 0, %9 ], [ %44, %43 ], !dbg !644
  %.02 = phi i32 [ 0, %9 ], [ %39, %43 ], !dbg !645
  call void @llvm.dbg.value(metadata i32 %.02, metadata !639, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 %.05, metadata !640, metadata !DIExpression()), !dbg !620
  %11 = icmp ult i32 %.05, 4, !dbg !646
  br i1 %11, label %12, label %45, !dbg !648

12:                                               ; preds = %10
  %13 = zext i32 %.03 to i64, !dbg !649
  %14 = getelementptr inbounds i32, i32* %0, i64 %13, !dbg !649
  %15 = load i32, i32* %14, align 4, !dbg !649
  %16 = zext i32 %.05 to i64, !dbg !649
  %17 = getelementptr inbounds i32, i32* %1, i64 %16, !dbg !649
  %18 = load i32, i32* %17, align 4, !dbg !649
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !649
  call void @digit_x_digit(i32 %15, i32 %18, i32* %19), !dbg !649
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !651
  %21 = load i32, i32* %20, align 4, !dbg !651
  %22 = add i32 %21, 0, !dbg !651
  call void @llvm.dbg.value(metadata i32 %22, metadata !653, metadata !DIExpression()), !dbg !654
  %23 = add i32 %.02, %22, !dbg !651
  call void @llvm.dbg.value(metadata i32 %23, metadata !655, metadata !DIExpression()), !dbg !620
  %24 = call i32 @is_digit_lessthan_ct(i32 %22, i32 0), !dbg !651
  %25 = call i32 @is_digit_lessthan_ct(i32 %23, i32 %22), !dbg !651
  %26 = or i32 %24, %25, !dbg !651
  call void @llvm.dbg.value(metadata i32 %26, metadata !631, metadata !DIExpression()), !dbg !620
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !656
  %28 = load i32, i32* %27, align 4, !dbg !656
  %29 = add i32 %28, %26, !dbg !657
  call void @llvm.dbg.value(metadata i32 %29, metadata !639, metadata !DIExpression()), !dbg !620
  %30 = add i32 %.03, %.05, !dbg !658
  %31 = zext i32 %30 to i64, !dbg !658
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %31, !dbg !658
  %33 = load i32, i32* %32, align 4, !dbg !658
  %34 = add i32 %33, 0, !dbg !658
  call void @llvm.dbg.value(metadata i32 %34, metadata !660, metadata !DIExpression()), !dbg !661
  %35 = add i32 %23, %34, !dbg !658
  call void @llvm.dbg.value(metadata i32 %35, metadata !655, metadata !DIExpression()), !dbg !620
  %36 = call i32 @is_digit_lessthan_ct(i32 %34, i32 0), !dbg !658
  %37 = call i32 @is_digit_lessthan_ct(i32 %35, i32 %34), !dbg !658
  %38 = or i32 %36, %37, !dbg !658
  call void @llvm.dbg.value(metadata i32 %38, metadata !631, metadata !DIExpression()), !dbg !620
  %39 = add i32 %29, %38, !dbg !662
  call void @llvm.dbg.value(metadata i32 %39, metadata !639, metadata !DIExpression()), !dbg !620
  %40 = add i32 %.03, %.05, !dbg !663
  %41 = zext i32 %40 to i64, !dbg !664
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %41, !dbg !664
  store i32 %35, i32* %42, align 4, !dbg !665
  br label %43, !dbg !666

43:                                               ; preds = %12
  %44 = add i32 %.05, 1, !dbg !667
  call void @llvm.dbg.value(metadata i32 %44, metadata !640, metadata !DIExpression()), !dbg !620
  br label %10, !dbg !668, !llvm.loop !669

45:                                               ; preds = %10
  %46 = add i32 4, %.03, !dbg !671
  %47 = zext i32 %46 to i64, !dbg !672
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %47, !dbg !672
  store i32 %.02, i32* %48, align 4, !dbg !673
  br label %49, !dbg !674

49:                                               ; preds = %45
  %50 = add i32 %.03, 1, !dbg !675
  call void @llvm.dbg.value(metadata i32 %50, metadata !632, metadata !DIExpression()), !dbg !620
  br label %7, !dbg !676, !llvm.loop !677

51:                                               ; preds = %7
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !679
  %53 = load i32, i32* %52, align 4, !dbg !679
  %54 = lshr i32 %53, 31, !dbg !680
  call void @llvm.dbg.value(metadata i32 %54, metadata !681, metadata !DIExpression()), !dbg !620
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !682
  %56 = load i32, i32* %55, align 4, !dbg !683
  %57 = and i32 %56, 2147483647, !dbg !683
  store i32 %57, i32* %55, align 4, !dbg !683
  call void @llvm.dbg.value(metadata i32 0, metadata !631, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 0, metadata !632, metadata !DIExpression()), !dbg !620
  br label %58, !dbg !684

58:                                               ; preds = %92, %51
  %.14 = phi i32 [ 0, %51 ], [ %93, %92 ], !dbg !686
  %.01 = phi i32 [ %54, %51 ], [ %65, %92 ], !dbg !620
  %.0 = phi i32 [ 0, %51 ], [ %91, %92 ], !dbg !620
  call void @llvm.dbg.value(metadata i32 %.0, metadata !631, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 %.01, metadata !681, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 %.14, metadata !632, metadata !DIExpression()), !dbg !620
  %59 = icmp ult i32 %.14, 4, !dbg !687
  br i1 %59, label %60, label %94, !dbg !689

60:                                               ; preds = %58
  %61 = add i32 4, %.14, !dbg !690
  %62 = zext i32 %61 to i64, !dbg !692
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %62, !dbg !692
  %64 = load i32, i32* %63, align 4, !dbg !692
  %65 = lshr i32 %64, 31, !dbg !693
  call void @llvm.dbg.value(metadata i32 %65, metadata !694, metadata !DIExpression()), !dbg !620
  %66 = add i32 4, %.14, !dbg !695
  %67 = zext i32 %66 to i64, !dbg !696
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %67, !dbg !696
  %69 = load i32, i32* %68, align 4, !dbg !696
  %70 = shl i32 %69, 1, !dbg !697
  %71 = add i32 %70, %.01, !dbg !698
  %72 = add i32 4, %.14, !dbg !699
  %73 = zext i32 %72 to i64, !dbg !700
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %73, !dbg !700
  store i32 %71, i32* %74, align 4, !dbg !701
  call void @llvm.dbg.value(metadata i32 %65, metadata !681, metadata !DIExpression()), !dbg !620
  %75 = zext i32 %.14 to i64, !dbg !702
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %75, !dbg !702
  %77 = load i32, i32* %76, align 4, !dbg !702
  %78 = add i32 %77, %.0, !dbg !702
  call void @llvm.dbg.value(metadata i32 %78, metadata !704, metadata !DIExpression()), !dbg !705
  %79 = add i32 4, %.14, !dbg !702
  %80 = zext i32 %79 to i64, !dbg !702
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %80, !dbg !702
  %82 = load i32, i32* %81, align 4, !dbg !702
  %83 = add i32 %82, %78, !dbg !702
  %84 = zext i32 %.14 to i64, !dbg !702
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %84, !dbg !702
  store i32 %83, i32* %85, align 4, !dbg !702
  %86 = call i32 @is_digit_lessthan_ct(i32 %78, i32 %.0), !dbg !702
  %87 = zext i32 %.14 to i64, !dbg !702
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %87, !dbg !702
  %89 = load i32, i32* %88, align 4, !dbg !702
  %90 = call i32 @is_digit_lessthan_ct(i32 %89, i32 %78), !dbg !702
  %91 = or i32 %86, %90, !dbg !702
  call void @llvm.dbg.value(metadata i32 %91, metadata !631, metadata !DIExpression()), !dbg !620
  br label %92, !dbg !706

92:                                               ; preds = %60
  %93 = add i32 %.14, 1, !dbg !707
  call void @llvm.dbg.value(metadata i32 %93, metadata !632, metadata !DIExpression()), !dbg !620
  br label %58, !dbg !708, !llvm.loop !709

94:                                               ; preds = %58
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !711
  %96 = load i32, i32* %95, align 4, !dbg !711
  %97 = lshr i32 %96, 31, !dbg !712
  call void @llvm.dbg.value(metadata i32 %97, metadata !631, metadata !DIExpression()), !dbg !620
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3, !dbg !713
  %99 = load i32, i32* %98, align 4, !dbg !714
  %100 = and i32 %99, 2147483647, !dbg !714
  store i32 %100, i32* %98, align 4, !dbg !714
  call void @llvm.dbg.value(metadata i32 0, metadata !632, metadata !DIExpression()), !dbg !620
  br label %101, !dbg !715

101:                                              ; preds = %117, %94
  %.2 = phi i32 [ 0, %94 ], [ %118, %117 ], !dbg !717
  %.1 = phi i32 [ %97, %94 ], [ %116, %117 ], !dbg !620
  call void @llvm.dbg.value(metadata i32 %.1, metadata !631, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 %.2, metadata !632, metadata !DIExpression()), !dbg !620
  %102 = icmp ult i32 %.2, 4, !dbg !718
  br i1 %102, label %103, label %119, !dbg !720

103:                                              ; preds = %101
  %104 = zext i32 %.2 to i64, !dbg !721
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %104, !dbg !721
  %106 = load i32, i32* %105, align 4, !dbg !721
  %107 = add i32 %106, %.1, !dbg !721
  call void @llvm.dbg.value(metadata i32 %107, metadata !724, metadata !DIExpression()), !dbg !725
  %108 = add i32 0, %107, !dbg !721
  %109 = zext i32 %.2 to i64, !dbg !721
  %110 = getelementptr inbounds i32, i32* %2, i64 %109, !dbg !721
  store i32 %108, i32* %110, align 4, !dbg !721
  %111 = call i32 @is_digit_lessthan_ct(i32 %107, i32 %.1), !dbg !721
  %112 = zext i32 %.2 to i64, !dbg !721
  %113 = getelementptr inbounds i32, i32* %2, i64 %112, !dbg !721
  %114 = load i32, i32* %113, align 4, !dbg !721
  %115 = call i32 @is_digit_lessthan_ct(i32 %114, i32 %107), !dbg !721
  %116 = or i32 %111, %115, !dbg !721
  call void @llvm.dbg.value(metadata i32 %116, metadata !631, metadata !DIExpression()), !dbg !620
  br label %117, !dbg !726

117:                                              ; preds = %103
  %118 = add i32 %.2, 1, !dbg !727
  call void @llvm.dbg.value(metadata i32 %118, metadata !632, metadata !DIExpression()), !dbg !620
  br label %101, !dbg !728, !llvm.loop !729

119:                                              ; preds = %101
  ret void, !dbg !731
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_digit_lessthan_ct(i32 %0, i32 %1) #0 !dbg !732 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !735, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i32 %1, metadata !737, metadata !DIExpression()), !dbg !736
  %3 = xor i32 %0, %1, !dbg !738
  %4 = sub i32 %0, %1, !dbg !739
  %5 = xor i32 %4, %1, !dbg !740
  %6 = or i32 %3, %5, !dbg !741
  %7 = xor i32 %0, %6, !dbg !742
  %8 = lshr i32 %7, 31, !dbg !743
  ret i32 %8, !dbg !744
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fpsqr1271(i32* %0, i32* %1) #0 !dbg !745 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !748, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i32* %1, metadata !750, metadata !DIExpression()), !dbg !749
  call void @fpmul1271(i32* %0, i32* %0, i32* %1), !dbg !751
  ret void, !dbg !752
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mod1271(i32* %0) #0 !dbg !753 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !756, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 0, metadata !758, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 0, metadata !759, metadata !DIExpression()), !dbg !757
  br label %2, !dbg !760

2:                                                ; preds = %19, %1
  %.01 = phi i32 [ 0, %1 ], [ %20, %19 ], !dbg !762
  %.0 = phi i32 [ 0, %1 ], [ %15, %19 ], !dbg !757
  call void @llvm.dbg.value(metadata i32 %.0, metadata !758, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 %.01, metadata !759, metadata !DIExpression()), !dbg !757
  %3 = icmp ult i32 %.01, 3, !dbg !763
  br i1 %3, label %4, label %21, !dbg !765

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64, !dbg !766
  %6 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !766
  %7 = load i32, i32* %6, align 4, !dbg !766
  %8 = sub i32 %7, -1, !dbg !766
  call void @llvm.dbg.value(metadata i32 %8, metadata !769, metadata !DIExpression()), !dbg !770
  %9 = zext i32 %.01 to i64, !dbg !766
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !766
  %11 = load i32, i32* %10, align 4, !dbg !766
  %12 = call i32 @is_digit_lessthan_ct(i32 %11, i32 -1), !dbg !766
  %13 = call i32 @is_digit_zero_ct(i32 %8), !dbg !766
  %14 = and i32 %.0, %13, !dbg !766
  %15 = or i32 %12, %14, !dbg !766
  call void @llvm.dbg.value(metadata i32 %15, metadata !771, metadata !DIExpression()), !dbg !770
  %16 = sub i32 %8, %.0, !dbg !766
  %17 = zext i32 %.01 to i64, !dbg !766
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !766
  store i32 %16, i32* %18, align 4, !dbg !766
  call void @llvm.dbg.value(metadata i32 %15, metadata !758, metadata !DIExpression()), !dbg !757
  br label %19, !dbg !772

19:                                               ; preds = %4
  %20 = add i32 %.01, 1, !dbg !773
  call void @llvm.dbg.value(metadata i32 %20, metadata !759, metadata !DIExpression()), !dbg !757
  br label %2, !dbg !774, !llvm.loop !775

21:                                               ; preds = %2
  %22 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !777
  %23 = load i32, i32* %22, align 4, !dbg !777
  %24 = sub i32 %23, 2147483647, !dbg !777
  call void @llvm.dbg.value(metadata i32 %24, metadata !779, metadata !DIExpression()), !dbg !780
  %25 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !777
  %26 = load i32, i32* %25, align 4, !dbg !777
  %27 = call i32 @is_digit_lessthan_ct(i32 %26, i32 2147483647), !dbg !777
  %28 = call i32 @is_digit_zero_ct(i32 %24), !dbg !777
  %29 = and i32 %.0, %28, !dbg !777
  %30 = or i32 %27, %29, !dbg !777
  call void @llvm.dbg.value(metadata i32 %30, metadata !781, metadata !DIExpression()), !dbg !780
  %31 = sub i32 %24, %.0, !dbg !777
  %32 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !777
  store i32 %31, i32* %32, align 4, !dbg !777
  call void @llvm.dbg.value(metadata i32 %30, metadata !758, metadata !DIExpression()), !dbg !757
  %33 = sub i32 0, %30, !dbg !782
  call void @llvm.dbg.value(metadata i32 %33, metadata !783, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 0, metadata !758, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 0, metadata !759, metadata !DIExpression()), !dbg !757
  br label %34, !dbg !784

34:                                               ; preds = %50, %21
  %.12 = phi i32 [ 0, %21 ], [ %51, %50 ], !dbg !786
  %.1 = phi i32 [ 0, %21 ], [ %49, %50 ], !dbg !757
  call void @llvm.dbg.value(metadata i32 %.1, metadata !758, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 %.12, metadata !759, metadata !DIExpression()), !dbg !757
  %35 = icmp ult i32 %.12, 3, !dbg !787
  br i1 %35, label %36, label %52, !dbg !789

36:                                               ; preds = %34
  %37 = zext i32 %.12 to i64, !dbg !790
  %38 = getelementptr inbounds i32, i32* %0, i64 %37, !dbg !790
  %39 = load i32, i32* %38, align 4, !dbg !790
  %40 = add i32 %39, %.1, !dbg !790
  call void @llvm.dbg.value(metadata i32 %40, metadata !793, metadata !DIExpression()), !dbg !794
  %41 = add i32 %33, %40, !dbg !790
  %42 = zext i32 %.12 to i64, !dbg !790
  %43 = getelementptr inbounds i32, i32* %0, i64 %42, !dbg !790
  store i32 %41, i32* %43, align 4, !dbg !790
  %44 = call i32 @is_digit_lessthan_ct(i32 %40, i32 %.1), !dbg !790
  %45 = zext i32 %.12 to i64, !dbg !790
  %46 = getelementptr inbounds i32, i32* %0, i64 %45, !dbg !790
  %47 = load i32, i32* %46, align 4, !dbg !790
  %48 = call i32 @is_digit_lessthan_ct(i32 %47, i32 %40), !dbg !790
  %49 = or i32 %44, %48, !dbg !790
  call void @llvm.dbg.value(metadata i32 %49, metadata !758, metadata !DIExpression()), !dbg !757
  br label %50, !dbg !795

50:                                               ; preds = %36
  %51 = add i32 %.12, 1, !dbg !796
  call void @llvm.dbg.value(metadata i32 %51, metadata !759, metadata !DIExpression()), !dbg !757
  br label %34, !dbg !797, !llvm.loop !798

52:                                               ; preds = %34
  %53 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !800
  %54 = load i32, i32* %53, align 4, !dbg !800
  %55 = add i32 %54, %.1, !dbg !800
  call void @llvm.dbg.value(metadata i32 %55, metadata !802, metadata !DIExpression()), !dbg !803
  %56 = lshr i32 %33, 1, !dbg !800
  %57 = add i32 %56, %55, !dbg !800
  %58 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !800
  store i32 %57, i32* %58, align 4, !dbg !800
  %59 = call i32 @is_digit_lessthan_ct(i32 %55, i32 %.1), !dbg !800
  %60 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !800
  %61 = load i32, i32* %60, align 4, !dbg !800
  %62 = call i32 @is_digit_lessthan_ct(i32 %61, i32 %55), !dbg !800
  %63 = or i32 %59, %62, !dbg !800
  call void @llvm.dbg.value(metadata i32 %63, metadata !758, metadata !DIExpression()), !dbg !757
  ret void, !dbg !804
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_digit_zero_ct(i32 %0) #0 !dbg !805 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !806, metadata !DIExpression()), !dbg !807
  %2 = call i32 @is_digit_nonzero_ct(i32 %0), !dbg !808
  %3 = xor i32 1, %2, !dbg !809
  ret i32 %3, !dbg !810
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mp_mul(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !811 {
  %5 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i32* %1, metadata !816, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i32* %2, metadata !817, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i32 %3, metadata !818, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata [2 x i32]* %5, metadata !819, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i32 0, metadata !821, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i32 0, metadata !822, metadata !DIExpression()), !dbg !815
  br label %6, !dbg !823

6:                                                ; preds = %12, %4
  %.02 = phi i32 [ 0, %4 ], [ %13, %12 ], !dbg !825
  call void @llvm.dbg.value(metadata i32 %.02, metadata !822, metadata !DIExpression()), !dbg !815
  %7 = mul i32 2, %3, !dbg !826
  %8 = icmp ult i32 %.02, %7, !dbg !828
  br i1 %8, label %9, label %14, !dbg !829

9:                                                ; preds = %6
  %10 = zext i32 %.02 to i64, !dbg !830
  %11 = getelementptr inbounds i32, i32* %2, i64 %10, !dbg !830
  store i32 0, i32* %11, align 4, !dbg !831
  br label %12, !dbg !830

12:                                               ; preds = %9
  %13 = add i32 %.02, 1, !dbg !832
  call void @llvm.dbg.value(metadata i32 %13, metadata !822, metadata !DIExpression()), !dbg !815
  br label %6, !dbg !833, !llvm.loop !834

14:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !822, metadata !DIExpression()), !dbg !815
  br label %15, !dbg !836

15:                                               ; preds = %57, %14
  %.1 = phi i32 [ 0, %14 ], [ %58, %57 ], !dbg !838
  call void @llvm.dbg.value(metadata i32 %.1, metadata !822, metadata !DIExpression()), !dbg !815
  %16 = icmp ult i32 %.1, %3, !dbg !839
  br i1 %16, label %17, label %59, !dbg !841

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 0, metadata !842, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i32 0, metadata !843, metadata !DIExpression()), !dbg !815
  br label %18, !dbg !844

18:                                               ; preds = %51, %17
  %.01 = phi i32 [ 0, %17 ], [ %52, %51 ], !dbg !847
  %.0 = phi i32 [ 0, %17 ], [ %47, %51 ], !dbg !848
  call void @llvm.dbg.value(metadata i32 %.0, metadata !842, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i32 %.01, metadata !843, metadata !DIExpression()), !dbg !815
  %19 = icmp ult i32 %.01, %3, !dbg !849
  br i1 %19, label %20, label %53, !dbg !851

20:                                               ; preds = %18
  %21 = zext i32 %.1 to i64, !dbg !852
  %22 = getelementptr inbounds i32, i32* %0, i64 %21, !dbg !852
  %23 = load i32, i32* %22, align 4, !dbg !852
  %24 = zext i32 %.01 to i64, !dbg !852
  %25 = getelementptr inbounds i32, i32* %1, i64 %24, !dbg !852
  %26 = load i32, i32* %25, align 4, !dbg !852
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0, !dbg !852
  call void @digit_x_digit(i32 %23, i32 %26, i32* %27), !dbg !852
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0, !dbg !854
  %29 = load i32, i32* %28, align 4, !dbg !854
  %30 = add i32 %29, 0, !dbg !854
  call void @llvm.dbg.value(metadata i32 %30, metadata !856, metadata !DIExpression()), !dbg !857
  %31 = add i32 %.0, %30, !dbg !854
  call void @llvm.dbg.value(metadata i32 %31, metadata !858, metadata !DIExpression()), !dbg !815
  %32 = call i32 @is_digit_lessthan_ct(i32 %30, i32 0), !dbg !854
  %33 = call i32 @is_digit_lessthan_ct(i32 %31, i32 %30), !dbg !854
  %34 = or i32 %32, %33, !dbg !854
  call void @llvm.dbg.value(metadata i32 %34, metadata !821, metadata !DIExpression()), !dbg !815
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1, !dbg !859
  %36 = load i32, i32* %35, align 4, !dbg !859
  %37 = add i32 %36, %34, !dbg !860
  call void @llvm.dbg.value(metadata i32 %37, metadata !842, metadata !DIExpression()), !dbg !815
  %38 = add i32 %.1, %.01, !dbg !861
  %39 = zext i32 %38 to i64, !dbg !861
  %40 = getelementptr inbounds i32, i32* %2, i64 %39, !dbg !861
  %41 = load i32, i32* %40, align 4, !dbg !861
  %42 = add i32 %41, 0, !dbg !861
  call void @llvm.dbg.value(metadata i32 %42, metadata !863, metadata !DIExpression()), !dbg !864
  %43 = add i32 %31, %42, !dbg !861
  call void @llvm.dbg.value(metadata i32 %43, metadata !858, metadata !DIExpression()), !dbg !815
  %44 = call i32 @is_digit_lessthan_ct(i32 %42, i32 0), !dbg !861
  %45 = call i32 @is_digit_lessthan_ct(i32 %43, i32 %42), !dbg !861
  %46 = or i32 %44, %45, !dbg !861
  call void @llvm.dbg.value(metadata i32 %46, metadata !821, metadata !DIExpression()), !dbg !815
  %47 = add i32 %37, %46, !dbg !865
  call void @llvm.dbg.value(metadata i32 %47, metadata !842, metadata !DIExpression()), !dbg !815
  %48 = add i32 %.1, %.01, !dbg !866
  %49 = zext i32 %48 to i64, !dbg !867
  %50 = getelementptr inbounds i32, i32* %2, i64 %49, !dbg !867
  store i32 %43, i32* %50, align 4, !dbg !868
  br label %51, !dbg !869

51:                                               ; preds = %20
  %52 = add i32 %.01, 1, !dbg !870
  call void @llvm.dbg.value(metadata i32 %52, metadata !843, metadata !DIExpression()), !dbg !815
  br label %18, !dbg !871, !llvm.loop !872

53:                                               ; preds = %18
  %54 = add i32 %3, %.1, !dbg !874
  %55 = zext i32 %54 to i64, !dbg !875
  %56 = getelementptr inbounds i32, i32* %2, i64 %55, !dbg !875
  store i32 %.0, i32* %56, align 4, !dbg !876
  br label %57, !dbg !877

57:                                               ; preds = %53
  %58 = add i32 %.1, 1, !dbg !878
  call void @llvm.dbg.value(metadata i32 %58, metadata !822, metadata !DIExpression()), !dbg !815
  br label %15, !dbg !879, !llvm.loop !880

59:                                               ; preds = %15
  ret void, !dbg !882
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mp_add(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !883 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i32* %1, metadata !888, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i32* %2, metadata !889, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i32 %3, metadata !890, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i32 0, metadata !891, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i32 0, metadata !892, metadata !DIExpression()), !dbg !887
  br label %5, !dbg !893

5:                                                ; preds = %24, %4
  %.01 = phi i32 [ 0, %4 ], [ %25, %24 ], !dbg !895
  %.0 = phi i32 [ 0, %4 ], [ %23, %24 ], !dbg !887
  call void @llvm.dbg.value(metadata i32 %.0, metadata !891, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i32 %.01, metadata !892, metadata !DIExpression()), !dbg !887
  %6 = icmp ult i32 %.01, %3, !dbg !896
  br i1 %6, label %7, label %26, !dbg !898

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64, !dbg !899
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !899
  %10 = load i32, i32* %9, align 4, !dbg !899
  %11 = add i32 %10, %.0, !dbg !899
  call void @llvm.dbg.value(metadata i32 %11, metadata !902, metadata !DIExpression()), !dbg !903
  %12 = zext i32 %.01 to i64, !dbg !899
  %13 = getelementptr inbounds i32, i32* %1, i64 %12, !dbg !899
  %14 = load i32, i32* %13, align 4, !dbg !899
  %15 = add i32 %14, %11, !dbg !899
  %16 = zext i32 %.01 to i64, !dbg !899
  %17 = getelementptr inbounds i32, i32* %2, i64 %16, !dbg !899
  store i32 %15, i32* %17, align 4, !dbg !899
  %18 = call i32 @is_digit_lessthan_ct(i32 %11, i32 %.0), !dbg !899
  %19 = zext i32 %.01 to i64, !dbg !899
  %20 = getelementptr inbounds i32, i32* %2, i64 %19, !dbg !899
  %21 = load i32, i32* %20, align 4, !dbg !899
  %22 = call i32 @is_digit_lessthan_ct(i32 %21, i32 %11), !dbg !899
  %23 = or i32 %18, %22, !dbg !899
  call void @llvm.dbg.value(metadata i32 %23, metadata !891, metadata !DIExpression()), !dbg !887
  br label %24, !dbg !904

24:                                               ; preds = %7
  %25 = add i32 %.01, 1, !dbg !905
  call void @llvm.dbg.value(metadata i32 %25, metadata !892, metadata !DIExpression()), !dbg !887
  br label %5, !dbg !906, !llvm.loop !907

26:                                               ; preds = %5
  ret i32 %.0, !dbg !909
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fpinv1271(i32* %0) #0 !dbg !910 {
  %2 = alloca [4 x i32], align 16
  %3 = alloca [4 x i32], align 16
  %4 = alloca [4 x i32], align 16
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !911, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.declare(metadata [4 x i32]* %2, metadata !913, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.declare(metadata [4 x i32]* %3, metadata !915, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.declare(metadata [4 x i32]* %4, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !919, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !921, metadata !DIExpression()), !dbg !922
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !923
  call void @fpsqr1271(i32* %0, i32* %7), !dbg !924
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !925
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !926
  call void @fpmul1271(i32* %0, i32* %8, i32* %9), !dbg !927
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !928
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !929
  call void @fpsqr1271(i32* %10, i32* %11), !dbg !930
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !931
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !932
  call void @fpsqr1271(i32* %12, i32* %13), !dbg !933
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !934
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !935
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !936
  call void @fpmul1271(i32* %14, i32* %15, i32* %16), !dbg !937
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !938
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !939
  call void @fpsqr1271(i32* %17, i32* %18), !dbg !940
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !941
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !942
  call void @fpsqr1271(i32* %19, i32* %20), !dbg !943
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !944
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !945
  call void @fpsqr1271(i32* %21, i32* %22), !dbg !946
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !947
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !948
  call void @fpsqr1271(i32* %23, i32* %24), !dbg !949
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !950
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !951
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !952
  call void @fpmul1271(i32* %25, i32* %26, i32* %27), !dbg !953
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !954
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !955
  call void @fpsqr1271(i32* %28, i32* %29), !dbg !956
  call void @llvm.dbg.value(metadata i32 0, metadata !957, metadata !DIExpression()), !dbg !912
  br label %30, !dbg !958

30:                                               ; preds = %35, %1
  %.0 = phi i32 [ 0, %1 ], [ %36, %35 ], !dbg !960
  call void @llvm.dbg.value(metadata i32 %.0, metadata !957, metadata !DIExpression()), !dbg !912
  %31 = icmp slt i32 %.0, 7, !dbg !961
  br i1 %31, label %32, label %37, !dbg !963

32:                                               ; preds = %30
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !964
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !965
  call void @fpsqr1271(i32* %33, i32* %34), !dbg !966
  br label %35, !dbg !966

35:                                               ; preds = %32
  %36 = add nsw i32 %.0, 1, !dbg !967
  call void @llvm.dbg.value(metadata i32 %36, metadata !957, metadata !DIExpression()), !dbg !912
  br label %30, !dbg !968, !llvm.loop !969

37:                                               ; preds = %30
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !971
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !972
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !973
  call void @fpmul1271(i32* %38, i32* %39, i32* %40), !dbg !974
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !975
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !976
  call void @fpsqr1271(i32* %41, i32* %42), !dbg !977
  call void @llvm.dbg.value(metadata i32 0, metadata !957, metadata !DIExpression()), !dbg !912
  br label %43, !dbg !978

43:                                               ; preds = %48, %37
  %.1 = phi i32 [ 0, %37 ], [ %49, %48 ], !dbg !980
  call void @llvm.dbg.value(metadata i32 %.1, metadata !957, metadata !DIExpression()), !dbg !912
  %44 = icmp slt i32 %.1, 15, !dbg !981
  br i1 %44, label %45, label %50, !dbg !983

45:                                               ; preds = %43
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !984
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !985
  call void @fpsqr1271(i32* %46, i32* %47), !dbg !986
  br label %48, !dbg !986

48:                                               ; preds = %45
  %49 = add nsw i32 %.1, 1, !dbg !987
  call void @llvm.dbg.value(metadata i32 %49, metadata !957, metadata !DIExpression()), !dbg !912
  br label %43, !dbg !988, !llvm.loop !989

50:                                               ; preds = %43
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !991
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !992
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !993
  call void @fpmul1271(i32* %51, i32* %52, i32* %53), !dbg !994
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !995
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !996
  call void @fpsqr1271(i32* %54, i32* %55), !dbg !997
  call void @llvm.dbg.value(metadata i32 0, metadata !957, metadata !DIExpression()), !dbg !912
  br label %56, !dbg !998

56:                                               ; preds = %61, %50
  %.2 = phi i32 [ 0, %50 ], [ %62, %61 ], !dbg !1000
  call void @llvm.dbg.value(metadata i32 %.2, metadata !957, metadata !DIExpression()), !dbg !912
  %57 = icmp slt i32 %.2, 31, !dbg !1001
  br i1 %57, label %58, label %63, !dbg !1003

58:                                               ; preds = %56
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1004
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1005
  call void @fpsqr1271(i32* %59, i32* %60), !dbg !1006
  br label %61, !dbg !1006

61:                                               ; preds = %58
  %62 = add nsw i32 %.2, 1, !dbg !1007
  call void @llvm.dbg.value(metadata i32 %62, metadata !957, metadata !DIExpression()), !dbg !912
  br label %56, !dbg !1008, !llvm.loop !1009

63:                                               ; preds = %56
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !1011
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1012
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1013
  call void @fpmul1271(i32* %64, i32* %65, i32* %66), !dbg !1014
  call void @llvm.dbg.value(metadata i32 0, metadata !957, metadata !DIExpression()), !dbg !912
  br label %67, !dbg !1015

67:                                               ; preds = %72, %63
  %.3 = phi i32 [ 0, %63 ], [ %73, %72 ], !dbg !1017
  call void @llvm.dbg.value(metadata i32 %.3, metadata !957, metadata !DIExpression()), !dbg !912
  %68 = icmp slt i32 %.3, 32, !dbg !1018
  br i1 %68, label %69, label %74, !dbg !1020

69:                                               ; preds = %67
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1021
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1022
  call void @fpsqr1271(i32* %70, i32* %71), !dbg !1023
  br label %72, !dbg !1023

72:                                               ; preds = %69
  %73 = add nsw i32 %.3, 1, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %73, metadata !957, metadata !DIExpression()), !dbg !912
  br label %67, !dbg !1025, !llvm.loop !1026

74:                                               ; preds = %67
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1028
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !1029
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1030
  call void @fpmul1271(i32* %75, i32* %76, i32* %77), !dbg !1031
  call void @llvm.dbg.value(metadata i32 0, metadata !957, metadata !DIExpression()), !dbg !912
  br label %78, !dbg !1032

78:                                               ; preds = %83, %74
  %.4 = phi i32 [ 0, %74 ], [ %84, %83 ], !dbg !1034
  call void @llvm.dbg.value(metadata i32 %.4, metadata !957, metadata !DIExpression()), !dbg !912
  %79 = icmp slt i32 %.4, 16, !dbg !1035
  br i1 %79, label %80, label %85, !dbg !1037

80:                                               ; preds = %78
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1038
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1039
  call void @fpsqr1271(i32* %81, i32* %82), !dbg !1040
  br label %83, !dbg !1040

83:                                               ; preds = %80
  %84 = add nsw i32 %.4, 1, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %84, metadata !957, metadata !DIExpression()), !dbg !912
  br label %78, !dbg !1042, !llvm.loop !1043

85:                                               ; preds = %78
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !1045
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1046
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1047
  call void @fpmul1271(i32* %86, i32* %87, i32* %88), !dbg !1048
  call void @llvm.dbg.value(metadata i32 0, metadata !957, metadata !DIExpression()), !dbg !912
  br label %89, !dbg !1049

89:                                               ; preds = %94, %85
  %.5 = phi i32 [ 0, %85 ], [ %95, %94 ], !dbg !1051
  call void @llvm.dbg.value(metadata i32 %.5, metadata !957, metadata !DIExpression()), !dbg !912
  %90 = icmp slt i32 %.5, 8, !dbg !1052
  br i1 %90, label %91, label %96, !dbg !1054

91:                                               ; preds = %89
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1055
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1056
  call void @fpsqr1271(i32* %92, i32* %93), !dbg !1057
  br label %94, !dbg !1057

94:                                               ; preds = %91
  %95 = add nsw i32 %.5, 1, !dbg !1058
  call void @llvm.dbg.value(metadata i32 %95, metadata !957, metadata !DIExpression()), !dbg !912
  br label %89, !dbg !1059, !llvm.loop !1060

96:                                               ; preds = %89
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !1062
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1063
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1064
  call void @fpmul1271(i32* %97, i32* %98, i32* %99), !dbg !1065
  call void @llvm.dbg.value(metadata i32 0, metadata !957, metadata !DIExpression()), !dbg !912
  br label %100, !dbg !1066

100:                                              ; preds = %105, %96
  %.6 = phi i32 [ 0, %96 ], [ %106, %105 ], !dbg !1068
  call void @llvm.dbg.value(metadata i32 %.6, metadata !957, metadata !DIExpression()), !dbg !912
  %101 = icmp slt i32 %.6, 4, !dbg !1069
  br i1 %101, label %102, label %107, !dbg !1071

102:                                              ; preds = %100
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1072
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1073
  call void @fpsqr1271(i32* %103, i32* %104), !dbg !1074
  br label %105, !dbg !1074

105:                                              ; preds = %102
  %106 = add nsw i32 %.6, 1, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %106, metadata !957, metadata !DIExpression()), !dbg !912
  br label %100, !dbg !1076, !llvm.loop !1077

107:                                              ; preds = %100
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !1079
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1080
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1081
  call void @fpmul1271(i32* %108, i32* %109, i32* %110), !dbg !1082
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1083
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1084
  call void @fpsqr1271(i32* %111, i32* %112), !dbg !1085
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1086
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1087
  call void @fpmul1271(i32* %0, i32* %113, i32* %114), !dbg !1088
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1089
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1090
  call void @fpsqr1271(i32* %115, i32* %116), !dbg !1091
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1092
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1093
  call void @fpsqr1271(i32* %117, i32* %118), !dbg !1094
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1095
  call void @fpmul1271(i32* %0, i32* %119, i32* %0), !dbg !1096
  ret void, !dbg !1097
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subtract(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !1098 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1099, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32* %1, metadata !1101, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32* %2, metadata !1102, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %3, metadata !1103, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 0, metadata !1104, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()), !dbg !1100
  br label %5, !dbg !1106

5:                                                ; preds = %28, %4
  %.01 = phi i32 [ 0, %4 ], [ %29, %28 ], !dbg !1108
  %.0 = phi i32 [ 0, %4 ], [ %24, %28 ], !dbg !1100
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1104, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1105, metadata !DIExpression()), !dbg !1100
  %6 = icmp ult i32 %.01, %3, !dbg !1109
  br i1 %6, label %7, label %30, !dbg !1111

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64, !dbg !1112
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !1112
  %10 = load i32, i32* %9, align 4, !dbg !1112
  %11 = zext i32 %.01 to i64, !dbg !1112
  %12 = getelementptr inbounds i32, i32* %1, i64 %11, !dbg !1112
  %13 = load i32, i32* %12, align 4, !dbg !1112
  %14 = sub i32 %10, %13, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %14, metadata !1115, metadata !DIExpression()), !dbg !1116
  %15 = zext i32 %.01 to i64, !dbg !1112
  %16 = getelementptr inbounds i32, i32* %0, i64 %15, !dbg !1112
  %17 = load i32, i32* %16, align 4, !dbg !1112
  %18 = zext i32 %.01 to i64, !dbg !1112
  %19 = getelementptr inbounds i32, i32* %1, i64 %18, !dbg !1112
  %20 = load i32, i32* %19, align 4, !dbg !1112
  %21 = call i32 @is_digit_lessthan_ct(i32 %17, i32 %20), !dbg !1112
  %22 = call i32 @is_digit_zero_ct(i32 %14), !dbg !1112
  %23 = and i32 %.0, %22, !dbg !1112
  %24 = or i32 %21, %23, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %24, metadata !1117, metadata !DIExpression()), !dbg !1116
  %25 = sub i32 %14, %.0, !dbg !1112
  %26 = zext i32 %.01 to i64, !dbg !1112
  %27 = getelementptr inbounds i32, i32* %2, i64 %26, !dbg !1112
  store i32 %25, i32* %27, align 4, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %24, metadata !1104, metadata !DIExpression()), !dbg !1100
  br label %28, !dbg !1118

28:                                               ; preds = %7
  %29 = add i32 %.01, 1, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %29, metadata !1105, metadata !DIExpression()), !dbg !1100
  br label %5, !dbg !1120, !llvm.loop !1121

30:                                               ; preds = %5
  ret i32 %.0, !dbg !1123
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Montgomery_multiply(i32* %0, i32* %1, i32* %2, i32* %3) #0 !dbg !1124 {
  %5 = alloca [16 x i32], align 16
  %6 = alloca [16 x i32], align 16
  %7 = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !1127, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32* %1, metadata !1129, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32* %2, metadata !1130, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32* %3, metadata !1131, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.declare(metadata [16 x i32]* %5, metadata !1132, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.declare(metadata [16 x i32]* %6, metadata !1137, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !1139, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i32 0, metadata !1141, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32 0, metadata !1142, metadata !DIExpression()), !dbg !1128
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !1143
  call void @multiply(i32* %0, i32* %1, i32* %8), !dbg !1144
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !1145
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1146
  call void @multiply(i32* %9, i32* bitcast ([4 x i64]* @Montgomery_rprime to i32*), i32* %10), !dbg !1147
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1148
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !1149
  call void @multiply(i32* %11, i32* %3, i32* %12), !dbg !1150
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !1151
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !1152
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !1153
  %16 = call i32 @add(i32* %13, i32* %14, i32* %15, i32 16), !dbg !1154
  call void @llvm.dbg.value(metadata i32 %16, metadata !1141, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32 0, metadata !1155, metadata !DIExpression()), !dbg !1128
  br label %17, !dbg !1156

17:                                               ; preds = %26, %4
  %.0 = phi i32 [ 0, %4 ], [ %27, %26 ], !dbg !1158
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1155, metadata !DIExpression()), !dbg !1128
  %18 = icmp ult i32 %.0, 8, !dbg !1159
  br i1 %18, label %19, label %28, !dbg !1161

19:                                               ; preds = %17
  %20 = add i32 8, %.0, !dbg !1162
  %21 = zext i32 %20 to i64, !dbg !1164
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %21, !dbg !1164
  %23 = load i32, i32* %22, align 4, !dbg !1164
  %24 = zext i32 %.0 to i64, !dbg !1165
  %25 = getelementptr inbounds i32, i32* %2, i64 %24, !dbg !1165
  store i32 %23, i32* %25, align 4, !dbg !1166
  br label %26, !dbg !1167

26:                                               ; preds = %19
  %27 = add i32 %.0, 1, !dbg !1168
  call void @llvm.dbg.value(metadata i32 %27, metadata !1155, metadata !DIExpression()), !dbg !1128
  br label %17, !dbg !1169, !llvm.loop !1170

28:                                               ; preds = %17
  %29 = call i32 @subtract(i32* %2, i32* %3, i32* %2, i32 8), !dbg !1172
  call void @llvm.dbg.value(metadata i32 %29, metadata !1142, metadata !DIExpression()), !dbg !1128
  %30 = sub i32 %16, %29, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %30, metadata !1174, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32 0, metadata !1155, metadata !DIExpression()), !dbg !1128
  br label %31, !dbg !1175

31:                                               ; preds = %40, %28
  %.1 = phi i32 [ 0, %28 ], [ %41, %40 ], !dbg !1177
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1155, metadata !DIExpression()), !dbg !1128
  %32 = icmp ult i32 %.1, 8, !dbg !1178
  br i1 %32, label %33, label %42, !dbg !1180

33:                                               ; preds = %31
  %34 = zext i32 %.1 to i64, !dbg !1181
  %35 = getelementptr inbounds i32, i32* %3, i64 %34, !dbg !1181
  %36 = load i32, i32* %35, align 4, !dbg !1181
  %37 = and i32 %36, %30, !dbg !1183
  %38 = zext i32 %.1 to i64, !dbg !1184
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %38, !dbg !1184
  store i32 %37, i32* %39, align 4, !dbg !1185
  br label %40, !dbg !1186

40:                                               ; preds = %33
  %41 = add i32 %.1, 1, !dbg !1187
  call void @llvm.dbg.value(metadata i32 %41, metadata !1155, metadata !DIExpression()), !dbg !1128
  br label %31, !dbg !1188, !llvm.loop !1189

42:                                               ; preds = %31
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !1191
  %44 = call i32 @add(i32* %2, i32* %43, i32* %2, i32 8), !dbg !1192
  ret void, !dbg !1193
}

; Function Attrs: noinline nounwind uwtable
define internal void @multiply(i32* %0, i32* %1, i32* %2) #0 !dbg !1194 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1195, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i32* %1, metadata !1197, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i32* %2, metadata !1198, metadata !DIExpression()), !dbg !1196
  call void @mp_mul(i32* %0, i32* %1, i32* %2, i32 8), !dbg !1199
  ret void, !dbg !1200
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @add(i32* %0, i32* %1, i32* %2, i32 %3) #0 !dbg !1201 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1202, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i32* %1, metadata !1204, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i32* %2, metadata !1205, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i32 %3, metadata !1206, metadata !DIExpression()), !dbg !1203
  %5 = call i32 @mp_add(i32* %0, i32* %1, i32* %2, i32 %3), !dbg !1207
  ret i32 %5, !dbg !1208
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @modulo_order(i32* %0, i32* %1, %struct.CurveStruct* %2) #0 !dbg !1209 {
  %4 = alloca [8 x i32], align 16
  %5 = alloca [8 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !1226, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32* %1, metadata !1228, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !1229, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.declare(metadata [8 x i32]* %4, metadata !1230, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.declare(metadata [8 x i32]* %5, metadata !1233, metadata !DIExpression()), !dbg !1234
  %6 = bitcast [8 x i32]* %5 to i8*, !dbg !1234
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 32, i1 false), !dbg !1234
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0, !dbg !1235
  store i32 1, i32* %7, align 16, !dbg !1236
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !1237
  %9 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 5, !dbg !1238
  %10 = bitcast [4 x i64]* %9 to i32*, !dbg !1239
  call void @Montgomery_multiply(i32* %0, i32* bitcast ([4 x i64]* @Montgomery_Rprime to i32*), i32* %8, i32* %10), !dbg !1240
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !1241
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0, !dbg !1242
  %13 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 5, !dbg !1243
  %14 = bitcast [4 x i64]* %13 to i32*, !dbg !1244
  call void @Montgomery_multiply(i32* %11, i32* %12, i32* %1, i32* %14), !dbg !1245
  ret void, !dbg !1246
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @conversion_to_odd(i32* %0, i32* %1, %struct.CurveStruct* %2) #0 !dbg !1247 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1248, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32* %1, metadata !1250, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !1251, metadata !DIExpression()), !dbg !1249
  %4 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 5, !dbg !1252
  %5 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1253
  %6 = bitcast i64* %5 to i32*, !dbg !1254
  call void @llvm.dbg.value(metadata i32* %6, metadata !1255, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32 0, metadata !1256, metadata !DIExpression()), !dbg !1249
  %7 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1257
  %8 = load i32, i32* %7, align 4, !dbg !1257
  %9 = and i32 %8, 1, !dbg !1258
  %10 = sub i32 0, %9, !dbg !1259
  %11 = xor i32 %10, -1, !dbg !1260
  call void @llvm.dbg.value(metadata i32 %11, metadata !1261, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32 0, metadata !1262, metadata !DIExpression()), !dbg !1249
  br label %12, !dbg !1263

12:                                               ; preds = %32, %3
  %.01 = phi i32 [ 0, %3 ], [ %33, %32 ], !dbg !1265
  %.0 = phi i32 [ 0, %3 ], [ %31, %32 ], !dbg !1249
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1256, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1262, metadata !DIExpression()), !dbg !1249
  %13 = icmp ult i32 %.01, 8, !dbg !1266
  br i1 %13, label %14, label %34, !dbg !1268

14:                                               ; preds = %12
  %15 = zext i32 %.01 to i64, !dbg !1269
  %16 = getelementptr inbounds i32, i32* %6, i64 %15, !dbg !1269
  %17 = load i32, i32* %16, align 4, !dbg !1269
  %18 = and i32 %17, %11, !dbg !1269
  %19 = add i32 %18, %.0, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %19, metadata !1272, metadata !DIExpression()), !dbg !1273
  %20 = zext i32 %.01 to i64, !dbg !1269
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !1269
  %22 = load i32, i32* %21, align 4, !dbg !1269
  %23 = add i32 %22, %19, !dbg !1269
  %24 = zext i32 %.01 to i64, !dbg !1269
  %25 = getelementptr inbounds i32, i32* %1, i64 %24, !dbg !1269
  store i32 %23, i32* %25, align 4, !dbg !1269
  %26 = call i32 @is_digit_lessthan_ct(i32 %19, i32 %.0), !dbg !1269
  %27 = zext i32 %.01 to i64, !dbg !1269
  %28 = getelementptr inbounds i32, i32* %1, i64 %27, !dbg !1269
  %29 = load i32, i32* %28, align 4, !dbg !1269
  %30 = call i32 @is_digit_lessthan_ct(i32 %29, i32 %19), !dbg !1269
  %31 = or i32 %26, %30, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %31, metadata !1256, metadata !DIExpression()), !dbg !1249
  br label %32, !dbg !1274

32:                                               ; preds = %14
  %33 = add i32 %.01, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %33, metadata !1262, metadata !DIExpression()), !dbg !1249
  br label %12, !dbg !1276, !llvm.loop !1277

34:                                               ; preds = %12
  ret void, !dbg !1279
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpcopy1271(i32* %0, i32* %1) #0 !dbg !1280 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1281, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i32* %1, metadata !1283, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i32 0, metadata !1284, metadata !DIExpression()), !dbg !1282
  br label %3, !dbg !1285

3:                                                ; preds = %11, %2
  %.0 = phi i32 [ 0, %2 ], [ %12, %11 ], !dbg !1287
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1284, metadata !DIExpression()), !dbg !1282
  %4 = icmp ult i32 %.0, 4, !dbg !1288
  br i1 %4, label %5, label %13, !dbg !1290

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64, !dbg !1291
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !1291
  %8 = load i32, i32* %7, align 4, !dbg !1291
  %9 = zext i32 %.0 to i64, !dbg !1292
  %10 = getelementptr inbounds i32, i32* %1, i64 %9, !dbg !1292
  store i32 %8, i32* %10, align 4, !dbg !1293
  br label %11, !dbg !1292

11:                                               ; preds = %5
  %12 = add i32 %.0, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %12, metadata !1284, metadata !DIExpression()), !dbg !1282
  br label %3, !dbg !1295, !llvm.loop !1296

13:                                               ; preds = %3
  ret void, !dbg !1298
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2zero1271([4 x i32]* %0) #0 !dbg !1299 {
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !1302, metadata !DIExpression()), !dbg !1303
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !1304
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1304
  call void @fpzero1271(i32* %3), !dbg !1305
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !1306
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !1306
  call void @fpzero1271(i32* %5), !dbg !1307
  ret void, !dbg !1308
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpzero1271(i32* %0) #0 !dbg !1309 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1310, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 0, metadata !1312, metadata !DIExpression()), !dbg !1311
  br label %2, !dbg !1313

2:                                                ; preds = %7, %1
  %.0 = phi i32 [ 0, %1 ], [ %8, %7 ], !dbg !1315
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1312, metadata !DIExpression()), !dbg !1311
  %3 = icmp ult i32 %.0, 4, !dbg !1316
  br i1 %3, label %4, label %9, !dbg !1318

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64, !dbg !1319
  %6 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !1319
  store i32 0, i32* %6, align 4, !dbg !1320
  br label %7, !dbg !1319

7:                                                ; preds = %4
  %8 = add i32 %.0, 1, !dbg !1321
  call void @llvm.dbg.value(metadata i32 %8, metadata !1312, metadata !DIExpression()), !dbg !1311
  br label %2, !dbg !1322, !llvm.loop !1323

9:                                                ; preds = %2
  ret void, !dbg !1325
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2neg1271([4 x i32]* %0) #0 !dbg !1326 {
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !1327, metadata !DIExpression()), !dbg !1328
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !1329
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !1329
  call void @fpneg1271(i32* %3), !dbg !1330
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !1331
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !1331
  call void @fpneg1271(i32* %5), !dbg !1332
  ret void, !dbg !1333
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2sqr1271([4 x i32]* %0, [4 x i32]* %1) #0 !dbg !1334 {
  %3 = alloca [4 x i32], align 16
  %4 = alloca [4 x i32], align 16
  %5 = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !1335, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata [4 x i32]* %1, metadata !1337, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.declare(metadata [4 x i32]* %3, metadata !1338, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.declare(metadata [4 x i32]* %4, metadata !1340, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !1342, metadata !DIExpression()), !dbg !1343
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !1344
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !1344
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !1345
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0, !dbg !1345
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !1346
  call void @fpadd1271(i32* %7, i32* %9, i32* %10), !dbg !1347
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !1348
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0, !dbg !1348
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !1349
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0, !dbg !1349
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !1350
  call void @fpsub1271(i32* %12, i32* %14, i32* %15), !dbg !1351
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !1352
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0, !dbg !1352
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !1353
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0, !dbg !1353
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !1354
  call void @fpmul1271(i32* %17, i32* %19, i32* %20), !dbg !1355
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !1356
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !1357
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, !dbg !1358
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !1358
  call void @fpmul1271(i32* %21, i32* %22, i32* %24), !dbg !1359
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !1360
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !1361
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 1, !dbg !1362
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0, !dbg !1362
  call void @fpadd1271(i32* %25, i32* %26, i32* %28), !dbg !1363
  ret void, !dbg !1364
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpadd1271(i32* %0, i32* %1, i32* %2) #0 !dbg !1365 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1366, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32* %1, metadata !1368, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32* %2, metadata !1369, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 0, metadata !1371, metadata !DIExpression()), !dbg !1367
  br label %4, !dbg !1372

4:                                                ; preds = %23, %3
  %.01 = phi i32 [ 0, %3 ], [ %24, %23 ], !dbg !1374
  %.0 = phi i32 [ 0, %3 ], [ %22, %23 ], !dbg !1367
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1370, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1371, metadata !DIExpression()), !dbg !1367
  %5 = icmp ult i32 %.01, 4, !dbg !1375
  br i1 %5, label %6, label %25, !dbg !1377

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64, !dbg !1378
  %8 = getelementptr inbounds i32, i32* %0, i64 %7, !dbg !1378
  %9 = load i32, i32* %8, align 4, !dbg !1378
  %10 = add i32 %9, %.0, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %10, metadata !1381, metadata !DIExpression()), !dbg !1382
  %11 = zext i32 %.01 to i64, !dbg !1378
  %12 = getelementptr inbounds i32, i32* %1, i64 %11, !dbg !1378
  %13 = load i32, i32* %12, align 4, !dbg !1378
  %14 = add i32 %13, %10, !dbg !1378
  %15 = zext i32 %.01 to i64, !dbg !1378
  %16 = getelementptr inbounds i32, i32* %2, i64 %15, !dbg !1378
  store i32 %14, i32* %16, align 4, !dbg !1378
  %17 = call i32 @is_digit_lessthan_ct(i32 %10, i32 %.0), !dbg !1378
  %18 = zext i32 %.01 to i64, !dbg !1378
  %19 = getelementptr inbounds i32, i32* %2, i64 %18, !dbg !1378
  %20 = load i32, i32* %19, align 4, !dbg !1378
  %21 = call i32 @is_digit_lessthan_ct(i32 %20, i32 %10), !dbg !1378
  %22 = or i32 %17, %21, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %22, metadata !1370, metadata !DIExpression()), !dbg !1367
  br label %23, !dbg !1383

23:                                               ; preds = %6
  %24 = add i32 %.01, 1, !dbg !1384
  call void @llvm.dbg.value(metadata i32 %24, metadata !1371, metadata !DIExpression()), !dbg !1367
  br label %4, !dbg !1385, !llvm.loop !1386

25:                                               ; preds = %4
  %26 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1388
  %27 = load i32, i32* %26, align 4, !dbg !1388
  %28 = lshr i32 %27, 31, !dbg !1389
  call void @llvm.dbg.value(metadata i32 %28, metadata !1370, metadata !DIExpression()), !dbg !1367
  %29 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1390
  %30 = load i32, i32* %29, align 4, !dbg !1391
  %31 = and i32 %30, 2147483647, !dbg !1391
  store i32 %31, i32* %29, align 4, !dbg !1391
  call void @llvm.dbg.value(metadata i32 0, metadata !1371, metadata !DIExpression()), !dbg !1367
  br label %32, !dbg !1392

32:                                               ; preds = %48, %25
  %.12 = phi i32 [ 0, %25 ], [ %49, %48 ], !dbg !1394
  %.1 = phi i32 [ %28, %25 ], [ %47, %48 ], !dbg !1367
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1370, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 %.12, metadata !1371, metadata !DIExpression()), !dbg !1367
  %33 = icmp ult i32 %.12, 4, !dbg !1395
  br i1 %33, label %34, label %50, !dbg !1397

34:                                               ; preds = %32
  %35 = zext i32 %.12 to i64, !dbg !1398
  %36 = getelementptr inbounds i32, i32* %2, i64 %35, !dbg !1398
  %37 = load i32, i32* %36, align 4, !dbg !1398
  %38 = add i32 %37, %.1, !dbg !1398
  call void @llvm.dbg.value(metadata i32 %38, metadata !1401, metadata !DIExpression()), !dbg !1402
  %39 = add i32 0, %38, !dbg !1398
  %40 = zext i32 %.12 to i64, !dbg !1398
  %41 = getelementptr inbounds i32, i32* %2, i64 %40, !dbg !1398
  store i32 %39, i32* %41, align 4, !dbg !1398
  %42 = call i32 @is_digit_lessthan_ct(i32 %38, i32 %.1), !dbg !1398
  %43 = zext i32 %.12 to i64, !dbg !1398
  %44 = getelementptr inbounds i32, i32* %2, i64 %43, !dbg !1398
  %45 = load i32, i32* %44, align 4, !dbg !1398
  %46 = call i32 @is_digit_lessthan_ct(i32 %45, i32 %38), !dbg !1398
  %47 = or i32 %42, %46, !dbg !1398
  call void @llvm.dbg.value(metadata i32 %47, metadata !1370, metadata !DIExpression()), !dbg !1367
  br label %48, !dbg !1403

48:                                               ; preds = %34
  %49 = add i32 %.12, 1, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %49, metadata !1371, metadata !DIExpression()), !dbg !1367
  br label %32, !dbg !1405, !llvm.loop !1406

50:                                               ; preds = %32
  ret void, !dbg !1408
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpsub1271(i32* %0, i32* %1, i32* %2) #0 !dbg !1409 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1410, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i32* %1, metadata !1412, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i32* %2, metadata !1413, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i32 0, metadata !1414, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i32 0, metadata !1415, metadata !DIExpression()), !dbg !1411
  br label %4, !dbg !1416

4:                                                ; preds = %27, %3
  %.01 = phi i32 [ 0, %3 ], [ %28, %27 ], !dbg !1418
  %.0 = phi i32 [ 0, %3 ], [ %23, %27 ], !dbg !1411
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1414, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1415, metadata !DIExpression()), !dbg !1411
  %5 = icmp ult i32 %.01, 4, !dbg !1419
  br i1 %5, label %6, label %29, !dbg !1421

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64, !dbg !1422
  %8 = getelementptr inbounds i32, i32* %0, i64 %7, !dbg !1422
  %9 = load i32, i32* %8, align 4, !dbg !1422
  %10 = zext i32 %.01 to i64, !dbg !1422
  %11 = getelementptr inbounds i32, i32* %1, i64 %10, !dbg !1422
  %12 = load i32, i32* %11, align 4, !dbg !1422
  %13 = sub i32 %9, %12, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %13, metadata !1425, metadata !DIExpression()), !dbg !1426
  %14 = zext i32 %.01 to i64, !dbg !1422
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !1422
  %16 = load i32, i32* %15, align 4, !dbg !1422
  %17 = zext i32 %.01 to i64, !dbg !1422
  %18 = getelementptr inbounds i32, i32* %1, i64 %17, !dbg !1422
  %19 = load i32, i32* %18, align 4, !dbg !1422
  %20 = call i32 @is_digit_lessthan_ct(i32 %16, i32 %19), !dbg !1422
  %21 = call i32 @is_digit_zero_ct(i32 %13), !dbg !1422
  %22 = and i32 %.0, %21, !dbg !1422
  %23 = or i32 %20, %22, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %23, metadata !1427, metadata !DIExpression()), !dbg !1426
  %24 = sub i32 %13, %.0, !dbg !1422
  %25 = zext i32 %.01 to i64, !dbg !1422
  %26 = getelementptr inbounds i32, i32* %2, i64 %25, !dbg !1422
  store i32 %24, i32* %26, align 4, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %23, metadata !1414, metadata !DIExpression()), !dbg !1411
  br label %27, !dbg !1428

27:                                               ; preds = %6
  %28 = add i32 %.01, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i32 %28, metadata !1415, metadata !DIExpression()), !dbg !1411
  br label %4, !dbg !1430, !llvm.loop !1431

29:                                               ; preds = %4
  %30 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1433
  %31 = load i32, i32* %30, align 4, !dbg !1433
  %32 = lshr i32 %31, 31, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %32, metadata !1414, metadata !DIExpression()), !dbg !1411
  %33 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1435
  %34 = load i32, i32* %33, align 4, !dbg !1436
  %35 = and i32 %34, 2147483647, !dbg !1436
  store i32 %35, i32* %33, align 4, !dbg !1436
  call void @llvm.dbg.value(metadata i32 0, metadata !1415, metadata !DIExpression()), !dbg !1411
  br label %36, !dbg !1437

36:                                               ; preds = %53, %29
  %.12 = phi i32 [ 0, %29 ], [ %54, %53 ], !dbg !1439
  %.1 = phi i32 [ %32, %29 ], [ %49, %53 ], !dbg !1411
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1414, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i32 %.12, metadata !1415, metadata !DIExpression()), !dbg !1411
  %37 = icmp ult i32 %.12, 4, !dbg !1440
  br i1 %37, label %38, label %55, !dbg !1442

38:                                               ; preds = %36
  %39 = zext i32 %.12 to i64, !dbg !1443
  %40 = getelementptr inbounds i32, i32* %2, i64 %39, !dbg !1443
  %41 = load i32, i32* %40, align 4, !dbg !1443
  %42 = sub i32 %41, 0, !dbg !1443
  call void @llvm.dbg.value(metadata i32 %42, metadata !1446, metadata !DIExpression()), !dbg !1447
  %43 = zext i32 %.12 to i64, !dbg !1443
  %44 = getelementptr inbounds i32, i32* %2, i64 %43, !dbg !1443
  %45 = load i32, i32* %44, align 4, !dbg !1443
  %46 = call i32 @is_digit_lessthan_ct(i32 %45, i32 0), !dbg !1443
  %47 = call i32 @is_digit_zero_ct(i32 %42), !dbg !1443
  %48 = and i32 %.1, %47, !dbg !1443
  %49 = or i32 %46, %48, !dbg !1443
  call void @llvm.dbg.value(metadata i32 %49, metadata !1448, metadata !DIExpression()), !dbg !1447
  %50 = sub i32 %42, %.1, !dbg !1443
  %51 = zext i32 %.12 to i64, !dbg !1443
  %52 = getelementptr inbounds i32, i32* %2, i64 %51, !dbg !1443
  store i32 %50, i32* %52, align 4, !dbg !1443
  call void @llvm.dbg.value(metadata i32 %49, metadata !1414, metadata !DIExpression()), !dbg !1411
  br label %53, !dbg !1449

53:                                               ; preds = %38
  %54 = add i32 %.12, 1, !dbg !1450
  call void @llvm.dbg.value(metadata i32 %54, metadata !1415, metadata !DIExpression()), !dbg !1411
  br label %36, !dbg !1451, !llvm.loop !1452

55:                                               ; preds = %36
  ret void, !dbg !1454
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2mul1271([4 x i32]* %0, [4 x i32]* %1, [4 x i32]* %2) #0 !dbg !1455 {
  %4 = alloca [4 x i32], align 16
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !1458, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata [4 x i32]* %1, metadata !1460, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata [4 x i32]* %2, metadata !1461, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.declare(metadata [4 x i32]* %4, metadata !1462, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !1464, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !1466, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.declare(metadata [4 x i32]* %7, metadata !1468, metadata !DIExpression()), !dbg !1469
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !1470
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0, !dbg !1470
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, !dbg !1471
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0, !dbg !1471
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !1472
  call void @fpmul1271(i32* %9, i32* %11, i32* %12), !dbg !1473
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !1474
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0, !dbg !1474
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 1, !dbg !1475
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0, !dbg !1475
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !1476
  call void @fpmul1271(i32* %14, i32* %16, i32* %17), !dbg !1477
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !1478
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0, !dbg !1478
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !1479
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0, !dbg !1479
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !1480
  call void @fpadd1271(i32* %19, i32* %21, i32* %22), !dbg !1481
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, !dbg !1482
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !1482
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 1, !dbg !1483
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0, !dbg !1483
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !1484
  call void @fpadd1271(i32* %24, i32* %26, i32* %27), !dbg !1485
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !1486
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !1487
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, !dbg !1488
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0, !dbg !1488
  call void @fpsub1271(i32* %28, i32* %29, i32* %31), !dbg !1489
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !1490
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !1491
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !1492
  call void @fpmul1271(i32* %32, i32* %33, i32* %34), !dbg !1493
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !1494
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !1495
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !1496
  call void @fpsub1271(i32* %35, i32* %36, i32* %37), !dbg !1497
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !1498
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !1499
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 1, !dbg !1500
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i64 0, i64 0, !dbg !1500
  call void @fpsub1271(i32* %38, i32* %39, i32* %41), !dbg !1501
  ret void, !dbg !1502
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fp2inv1271([4 x i32]* %0) #0 !dbg !1503 {
  %2 = alloca [2 x [4 x i32]], align 16
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !1504, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %2, metadata !1506, metadata !DIExpression()), !dbg !1507
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !1508
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0, !dbg !1508
  %5 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !1509
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !1509
  call void @fpsqr1271(i32* %4, i32* %6), !dbg !1510
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !1511
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !1511
  %9 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 1, !dbg !1512
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0, !dbg !1512
  call void @fpsqr1271(i32* %8, i32* %10), !dbg !1513
  %11 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !1514
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0, !dbg !1514
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 1, !dbg !1515
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0, !dbg !1515
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !1516
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0, !dbg !1516
  call void @fpadd1271(i32* %12, i32* %14, i32* %16), !dbg !1517
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !1518
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0, !dbg !1518
  call void @fpinv1271(i32* %18), !dbg !1519
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !1520
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0, !dbg !1520
  call void @fpneg1271(i32* %20), !dbg !1521
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !1522
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0, !dbg !1522
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !1523
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !1523
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !1524
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0, !dbg !1524
  call void @fpmul1271(i32* %22, i32* %24, i32* %26), !dbg !1525
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !1526
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0, !dbg !1526
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %2, i64 0, i64 0, !dbg !1527
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0, !dbg !1527
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !1528
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0, !dbg !1528
  call void @fpmul1271(i32* %28, i32* %30, i32* %32), !dbg !1529
  ret void, !dbg !1530
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccset(%struct.point_affine* %0, %struct.CurveStruct* %1) #0 !dbg !1531 {
  call void @llvm.dbg.value(metadata %struct.point_affine* %0, metadata !1540, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %1, metadata !1542, metadata !DIExpression()), !dbg !1541
  %3 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %1, i32 0, i32 6, !dbg !1543
  %4 = bitcast [4 x i64]* %3 to [4 x i32]*, !dbg !1544
  %5 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %0, i32 0, i32 0, !dbg !1545
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !1546
  call void @fp2copy1271([4 x i32]* %4, [4 x i32]* %6), !dbg !1547
  %7 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %1, i32 0, i32 7, !dbg !1548
  %8 = bitcast [4 x i64]* %7 to [4 x i32]*, !dbg !1549
  %9 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %0, i32 0, i32 1, !dbg !1550
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !1551
  call void @fp2copy1271([4 x i32]* %8, [4 x i32]* %10), !dbg !1552
  ret void, !dbg !1553
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccnorm(%struct.point_extproj* %0, %struct.point_affine* %1) #0 !dbg !1554 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata %struct.point_affine* %1, metadata !1568, metadata !DIExpression()), !dbg !1567
  %3 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !1569
  %4 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1570
  call void @fp2inv1271([4 x i32]* %4), !dbg !1571
  %5 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !1572
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !1573
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !1574
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !1575
  %9 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 0, !dbg !1576
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !1577
  call void @fp2mul1271([4 x i32]* %6, [4 x i32]* %8, [4 x i32]* %10), !dbg !1578
  %11 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !1579
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !1580
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !1581
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !1582
  %15 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 1, !dbg !1583
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %15, i64 0, i64 0, !dbg !1584
  call void @fp2mul1271([4 x i32]* %12, [4 x i32]* %14, [4 x i32]* %16), !dbg !1585
  %17 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 0, !dbg !1586
  %18 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %17, i64 0, i64 0, !dbg !1587
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0, !dbg !1587
  call void @mod1271(i32* %19), !dbg !1588
  %20 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 0, !dbg !1589
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %20, i64 0, i64 1, !dbg !1590
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0, !dbg !1590
  call void @mod1271(i32* %22), !dbg !1591
  %23 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 1, !dbg !1592
  %24 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %23, i64 0, i64 0, !dbg !1593
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0, !dbg !1593
  call void @mod1271(i32* %25), !dbg !1594
  %26 = getelementptr inbounds %struct.point_affine, %struct.point_affine* %1, i32 0, i32 1, !dbg !1595
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 1, !dbg !1596
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0, !dbg !1596
  call void @mod1271(i32* %28), !dbg !1597
  ret void, !dbg !1598
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @R1_to_R2(%struct.point_extproj* %0, %struct.point_extproj_precomp* %1, %struct.CurveStruct* %2) #0 !dbg !1599 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !1602, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %1, metadata !1604, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !1605, metadata !DIExpression()), !dbg !1603
  %4 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 3, !dbg !1606
  %5 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !1607
  %6 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 3, !dbg !1608
  %7 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %6, i64 0, i64 0, !dbg !1609
  %8 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !1610
  %9 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %8, i64 0, i64 0, !dbg !1611
  call void @fp2add1271([4 x i32]* %5, [4 x i32]* %7, [4 x i32]* %9), !dbg !1612
  %10 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !1613
  %11 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %10, i64 0, i64 0, !dbg !1614
  %12 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !1615
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %12, i64 0, i64 0, !dbg !1616
  %14 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 0, !dbg !1617
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0, !dbg !1618
  call void @fp2add1271([4 x i32]* %11, [4 x i32]* %13, [4 x i32]* %15), !dbg !1619
  %16 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !1620
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %16, i64 0, i64 0, !dbg !1621
  %18 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !1622
  %19 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %18, i64 0, i64 0, !dbg !1623
  %20 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 1, !dbg !1624
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %20, i64 0, i64 0, !dbg !1625
  call void @fp2sub1271([4 x i32]* %17, [4 x i32]* %19, [4 x i32]* %21), !dbg !1626
  %22 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !1627
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %22, i64 0, i64 0, !dbg !1628
  %24 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 4, !dbg !1629
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %24, i64 0, i64 0, !dbg !1630
  %26 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !1631
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !1632
  call void @fp2mul1271([4 x i32]* %23, [4 x i32]* %25, [4 x i32]* %27), !dbg !1633
  %28 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !1634
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %28, i64 0, i64 0, !dbg !1635
  %30 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 2, !dbg !1636
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %30, i64 0, i64 0, !dbg !1637
  %32 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 2, !dbg !1638
  %33 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %32, i64 0, i64 0, !dbg !1639
  call void @fp2add1271([4 x i32]* %29, [4 x i32]* %31, [4 x i32]* %33), !dbg !1640
  %34 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !1641
  %35 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %34, i64 0, i64 0, !dbg !1642
  %36 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %2, i32 0, i32 4, !dbg !1643
  %37 = bitcast [4 x i64]* %36 to [4 x i32]*, !dbg !1644
  %38 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %1, i32 0, i32 3, !dbg !1645
  %39 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %38, i64 0, i64 0, !dbg !1646
  call void @fp2mul1271([4 x i32]* %35, [4 x i32]* %37, [4 x i32]* %39), !dbg !1647
  ret void, !dbg !1648
}

declare dso_local void @fp2add1271([4 x i32]*, [4 x i32]*, [4 x i32]*) #2

declare dso_local void @fp2sub1271([4 x i32]*, [4 x i32]*, [4 x i32]*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @R1_to_R2_ni(%struct.point_extproj* %0, %struct.point_extproj_precomp* %1, %struct.CurveStruct* %2) #0 !dbg !1649 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !1650, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %1, metadata !1652, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %2, metadata !1653, metadata !DIExpression()), !dbg !1651
  call void @R1_to_R2(%struct.point_extproj* %0, %struct.point_extproj_precomp* %1, %struct.CurveStruct* %2), !dbg !1654
  ret void, !dbg !1655
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @R2_to_R4(%struct.point_extproj_precomp* %0, %struct.point_extproj* %1) #0 !dbg !1656 {
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %0, metadata !1659, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !1661, metadata !DIExpression()), !dbg !1660
  %3 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 0, !dbg !1662
  %4 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1663
  %5 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 1, !dbg !1664
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !1665
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !1666
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !1667
  call void @fp2sub1271([4 x i32]* %4, [4 x i32]* %6, [4 x i32]* %8), !dbg !1668
  %9 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 0, !dbg !1669
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !1670
  %11 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 1, !dbg !1671
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !1672
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !1673
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !1674
  call void @fp2add1271([4 x i32]* %10, [4 x i32]* %12, [4 x i32]* %14), !dbg !1675
  %15 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %0, i32 0, i32 2, !dbg !1676
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %15, i64 0, i64 0, !dbg !1677
  %17 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !1678
  %18 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %17, i64 0, i64 0, !dbg !1679
  call void @fp2copy1271([4 x i32]* %16, [4 x i32]* %18), !dbg !1680
  ret void, !dbg !1681
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccadd_ni(%struct.point_extproj_precomp* %0, %struct.point_extproj* %1) #0 !dbg !1682 {
  call void @llvm.dbg.value(metadata %struct.point_extproj_precomp* %0, metadata !1683, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !1685, metadata !DIExpression()), !dbg !1684
  call void @eccadd(%struct.point_extproj_precomp* %0, %struct.point_extproj* %1), !dbg !1686
  ret void, !dbg !1687
}

declare dso_local void @eccadd(%struct.point_extproj_precomp*, %struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccdouble_ni(%struct.point_extproj* %0) #0 !dbg !1688 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @eccdouble(%struct.point_extproj* %0), !dbg !1693
  ret void, !dbg !1694
}

declare dso_local void @eccdouble(%struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @point_setup_ni(%struct.point_affine* %0, %struct.point_extproj* %1) #0 !dbg !1695 {
  call void @llvm.dbg.value(metadata %struct.point_affine* %0, metadata !1698, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !1700, metadata !DIExpression()), !dbg !1699
  call void @point_setup(%struct.point_affine* %0, %struct.point_extproj* %1), !dbg !1701
  ret void, !dbg !1702
}

declare dso_local void @point_setup(%struct.point_affine*, %struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ecc_point_validate(%struct.point_extproj* %0, %struct.CurveStruct* %1) #0 !dbg !1703 {
  %3 = alloca [2 x [4 x i32]], align 16
  %4 = alloca [2 x [4 x i32]], align 16
  %5 = alloca [2 x [4 x i32]], align 16
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !1707, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %1, metadata !1709, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %3, metadata !1710, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %4, metadata !1712, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %5, metadata !1714, metadata !DIExpression()), !dbg !1715
  %6 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 1, !dbg !1716
  %7 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %6, i64 0, i64 0, !dbg !1717
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1718
  call void @fp2sqr1271([4 x i32]* %7, [4 x i32]* %8), !dbg !1719
  %9 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %0, i32 0, i32 0, !dbg !1720
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !1721
  %11 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !1722
  call void @fp2sqr1271([4 x i32]* %10, [4 x i32]* %11), !dbg !1723
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1724
  %13 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !1725
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !1726
  call void @fp2sub1271([4 x i32]* %12, [4 x i32]* %13, [4 x i32]* %14), !dbg !1727
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1728
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !1729
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1730
  call void @fp2mul1271([4 x i32]* %15, [4 x i32]* %16, [4 x i32]* %17), !dbg !1731
  %18 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %1, i32 0, i32 4, !dbg !1732
  %19 = bitcast [4 x i64]* %18 to [4 x i32]*, !dbg !1733
  %20 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1734
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !1735
  call void @fp2mul1271([4 x i32]* %19, [4 x i32]* %20, [4 x i32]* %21), !dbg !1736
  %22 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1737
  call void @fp2zero1271([4 x i32]* %22), !dbg !1738
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1739
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0, !dbg !1739
  store i32 1, i32* %24, align 16, !dbg !1740
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !1741
  %26 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1742
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !1743
  call void @fp2add1271([4 x i32]* %25, [4 x i32]* %26, [4 x i32]* %27), !dbg !1744
  %28 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !1745
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !1746
  %30 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1747
  call void @fp2sub1271([4 x i32]* %28, [4 x i32]* %29, [4 x i32]* %30), !dbg !1748
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1749
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0, !dbg !1749
  %33 = load i32, i32* %32, align 16, !dbg !1749
  %34 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1750
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0, i64 1, !dbg !1750
  %36 = load i32, i32* %35, align 4, !dbg !1750
  %37 = or i32 %33, %36, !dbg !1751
  %38 = call i32 @is_digit_zero_ct(i32 %37), !dbg !1752
  %39 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1753
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0, !dbg !1753
  %41 = load i32, i32* %40, align 16, !dbg !1753
  %42 = add i32 %41, 1, !dbg !1754
  %43 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1755
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i64 0, i64 1, !dbg !1755
  %45 = load i32, i32* %44, align 4, !dbg !1755
  %46 = add i32 %45, 1, !dbg !1756
  %47 = or i32 %42, %46, !dbg !1757
  %48 = call i32 @is_digit_zero_ct(i32 %47), !dbg !1758
  %49 = or i32 %38, %48, !dbg !1759
  %50 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !1760
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0, !dbg !1760
  %52 = load i32, i32* %51, align 16, !dbg !1760
  %53 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !1761
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i64 0, i64 1, !dbg !1761
  %55 = load i32, i32* %54, align 4, !dbg !1761
  %56 = or i32 %52, %55, !dbg !1762
  %57 = call i32 @is_digit_zero_ct(i32 %56), !dbg !1763
  %58 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !1764
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %58, i64 0, i64 0, !dbg !1764
  %60 = load i32, i32* %59, align 16, !dbg !1764
  %61 = add i32 %60, 1, !dbg !1765
  %62 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 1, !dbg !1766
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 1, !dbg !1766
  %64 = load i32, i32* %63, align 4, !dbg !1766
  %65 = add i32 %64, 1, !dbg !1767
  %66 = or i32 %61, %65, !dbg !1768
  %67 = call i32 @is_digit_zero_ct(i32 %66), !dbg !1769
  %68 = or i32 %57, %67, !dbg !1770
  %69 = and i32 %49, %68, !dbg !1771
  %70 = icmp ne i32 %69, 0, !dbg !1772
  ret i1 %70, !dbg !1773
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccmadd_ni(%struct.point_precomp* %0, %struct.point_extproj* %1) #0 !dbg !1774 {
  call void @llvm.dbg.value(metadata %struct.point_precomp* %0, metadata !1777, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !1779, metadata !DIExpression()), !dbg !1778
  call void @eccmadd(%struct.point_precomp* %0, %struct.point_extproj* %1), !dbg !1780
  ret void, !dbg !1781
}

; Function Attrs: noinline nounwind uwtable
define internal void @eccmadd(%struct.point_precomp* %0, %struct.point_extproj* %1) #0 !dbg !1782 {
  %3 = alloca [2 x [4 x i32]], align 16
  %4 = alloca [2 x [4 x i32]], align 16
  call void @llvm.dbg.value(metadata %struct.point_precomp* %0, metadata !1783, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !1785, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %3, metadata !1786, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.declare(metadata [2 x [4 x i32]]* %4, metadata !1788, metadata !DIExpression()), !dbg !1789
  %5 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !1790
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !1791
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !1792
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !1793
  %9 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !1794
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !1795
  call void @fp2mul1271([4 x i32]* %6, [4 x i32]* %8, [4 x i32]* %10), !dbg !1796
  %11 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !1797
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !1798
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !1799
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !1800
  %15 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1801
  call void @fp2add1271([4 x i32]* %12, [4 x i32]* %14, [4 x i32]* %15), !dbg !1802
  %16 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !1803
  %17 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %16, i64 0, i64 0, !dbg !1804
  %18 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 2, !dbg !1805
  %19 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %18, i64 0, i64 0, !dbg !1806
  %20 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !1807
  %21 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %20, i64 0, i64 0, !dbg !1808
  call void @fp2mul1271([4 x i32]* %17, [4 x i32]* %19, [4 x i32]* %21), !dbg !1809
  %22 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !1810
  %23 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %22, i64 0, i64 0, !dbg !1811
  %24 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !1812
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %24, i64 0, i64 0, !dbg !1813
  %26 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !1814
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !1815
  call void @fp2add1271([4 x i32]* %23, [4 x i32]* %25, [4 x i32]* %27), !dbg !1816
  %28 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !1817
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %28, i64 0, i64 0, !dbg !1818
  %30 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !1819
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %30, i64 0, i64 0, !dbg !1820
  %32 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !1821
  %33 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %32, i64 0, i64 0, !dbg !1822
  call void @fp2sub1271([4 x i32]* %29, [4 x i32]* %31, [4 x i32]* %33), !dbg !1823
  %34 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1824
  %35 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !1825
  %36 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %35, i64 0, i64 0, !dbg !1826
  %37 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !1827
  call void @fp2sub1271([4 x i32]* %34, [4 x i32]* %36, [4 x i32]* %37), !dbg !1828
  %38 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1829
  %39 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !1830
  %40 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %39, i64 0, i64 0, !dbg !1831
  %41 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1832
  call void @fp2add1271([4 x i32]* %38, [4 x i32]* %40, [4 x i32]* %41), !dbg !1833
  %42 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 0, !dbg !1834
  %43 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %42, i64 0, i64 0, !dbg !1835
  %44 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !1836
  %45 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %44, i64 0, i64 0, !dbg !1837
  %46 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !1838
  %47 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %46, i64 0, i64 0, !dbg !1839
  call void @fp2mul1271([4 x i32]* %43, [4 x i32]* %45, [4 x i32]* %47), !dbg !1840
  %48 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 1, !dbg !1841
  %49 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %48, i64 0, i64 0, !dbg !1842
  %50 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !1843
  %51 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %50, i64 0, i64 0, !dbg !1844
  %52 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !1845
  %53 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %52, i64 0, i64 0, !dbg !1846
  call void @fp2mul1271([4 x i32]* %49, [4 x i32]* %51, [4 x i32]* %53), !dbg !1847
  %54 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1848
  %55 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !1849
  %56 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !1850
  %57 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %56, i64 0, i64 0, !dbg !1851
  call void @fp2mul1271([4 x i32]* %54, [4 x i32]* %55, [4 x i32]* %57), !dbg !1852
  %58 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !1853
  %59 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %58, i64 0, i64 0, !dbg !1854
  %60 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !1855
  %61 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %60, i64 0, i64 0, !dbg !1856
  %62 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !1857
  %63 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %62, i64 0, i64 0, !dbg !1858
  call void @fp2sub1271([4 x i32]* %59, [4 x i32]* %61, [4 x i32]* %63), !dbg !1859
  %64 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !1860
  %65 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %64, i64 0, i64 0, !dbg !1861
  %66 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !1862
  %67 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %66, i64 0, i64 0, !dbg !1863
  %68 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !1864
  %69 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %68, i64 0, i64 0, !dbg !1865
  call void @fp2add1271([4 x i32]* %65, [4 x i32]* %67, [4 x i32]* %69), !dbg !1866
  %70 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !1867
  %71 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %70, i64 0, i64 0, !dbg !1868
  %72 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %4, i64 0, i64 0, !dbg !1869
  %73 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !1870
  %74 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %73, i64 0, i64 0, !dbg !1871
  call void @fp2mul1271([4 x i32]* %71, [4 x i32]* %72, [4 x i32]* %74), !dbg !1872
  %75 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !1873
  %76 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %75, i64 0, i64 0, !dbg !1874
  %77 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !1875
  %78 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !1876
  %79 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %78, i64 0, i64 0, !dbg !1877
  call void @fp2mul1271([4 x i32]* %76, [4 x i32]* %77, [4 x i32]* %79), !dbg !1878
  ret void, !dbg !1879
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ecc_mul_fixed([1 x %struct.point_precomp]* %0, i64* %1, %struct.point_affine* %2, %struct.CurveStruct* %3) #0 !dbg !1880 {
  %5 = alloca [271 x i32], align 16
  %6 = alloca [4 x i64], align 16
  %7 = alloca [1 x %struct.point_extproj], align 16
  %8 = alloca [1 x %struct.point_precomp], align 16
  call void @llvm.dbg.value(metadata [1 x %struct.point_precomp]* %0, metadata !1884, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i64* %1, metadata !1886, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata %struct.point_affine* %2, metadata !1887, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %3, metadata !1888, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 5, metadata !1889, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 5, metadata !1890, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 50, metadata !1891, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 10, metadata !1892, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 0, metadata !1893, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.declare(metadata [271 x i32]* %5, metadata !1894, metadata !DIExpression()), !dbg !1898
  %9 = bitcast [271 x i32]* %5 to i8*, !dbg !1898
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 1084, i1 false), !dbg !1898
  call void @llvm.dbg.declare(metadata [4 x i64]* %6, metadata !1899, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %7, metadata !1901, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.declare(metadata [1 x %struct.point_precomp]* %8, metadata !1905, metadata !DIExpression()), !dbg !1906
  %10 = bitcast i64* %1 to i32*, !dbg !1907
  %11 = bitcast i64* %1 to i32*, !dbg !1908
  call void @modulo_order(i32* %10, i32* %11, %struct.CurveStruct* %3), !dbg !1909
  %12 = bitcast i64* %1 to i32*, !dbg !1910
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1911
  %14 = bitcast i64* %13 to i32*, !dbg !1912
  call void @conversion_to_odd(i32* %12, i32* %14, %struct.CurveStruct* %3), !dbg !1913
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1914
  %16 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 0, !dbg !1915
  call void @mLSB_set_recode(i64* %15, i32* %16), !dbg !1916
  %17 = mul i32 5, 50, !dbg !1917
  %18 = sub i32 %17, 1, !dbg !1918
  %19 = zext i32 %18 to i64, !dbg !1919
  %20 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %19, !dbg !1919
  %21 = load i32, i32* %20, align 4, !dbg !1919
  call void @llvm.dbg.value(metadata i32 %21, metadata !1893, metadata !DIExpression()), !dbg !1885
  %22 = sub i32 5, 1, !dbg !1920
  %23 = mul i32 %22, 50, !dbg !1922
  %24 = sub i32 %23, 1, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %24, metadata !1924, metadata !DIExpression()), !dbg !1885
  br label %25, !dbg !1925

25:                                               ; preds = %35, %4
  %.02 = phi i32 [ %21, %4 ], [ %34, %35 ], !dbg !1885
  %.01 = phi i32 [ %24, %4 ], [ %36, %35 ], !dbg !1926
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1924, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1893, metadata !DIExpression()), !dbg !1885
  %26 = mul i32 2, 50, !dbg !1927
  %27 = sub i32 %26, 1, !dbg !1929
  %28 = icmp sge i32 %.01, %27, !dbg !1930
  br i1 %28, label %29, label %37, !dbg !1931

29:                                               ; preds = %25
  %30 = mul i32 2, %.02, !dbg !1932
  %31 = sext i32 %.01 to i64, !dbg !1934
  %32 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %31, !dbg !1934
  %33 = load i32, i32* %32, align 4, !dbg !1934
  %34 = add i32 %30, %33, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %34, metadata !1893, metadata !DIExpression()), !dbg !1885
  br label %35, !dbg !1936

35:                                               ; preds = %29
  %36 = sub i32 %.01, 50, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %36, metadata !1924, metadata !DIExpression()), !dbg !1885
  br label %25, !dbg !1938, !llvm.loop !1939

37:                                               ; preds = %25
  %38 = sub i32 5, 1, !dbg !1941
  %39 = sub i32 5, 1, !dbg !1942
  %40 = shl i32 1, %39, !dbg !1943
  %41 = mul i32 %38, %40, !dbg !1944
  %42 = zext i32 %41 to i64, !dbg !1945
  %43 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %42, !dbg !1945
  %44 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !1946
  %45 = sub i32 50, 1, !dbg !1947
  %46 = zext i32 %45 to i64, !dbg !1948
  %47 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %46, !dbg !1948
  %48 = load i32, i32* %47, align 4, !dbg !1948
  call void @table_lookup_fixed_base([1 x %struct.point_precomp]* %43, %struct.point_precomp* %44, i32 %.02, i32 %48), !dbg !1949
  %49 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !1950
  %50 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !1951
  call void @R5_to_R1(%struct.point_precomp* %49, %struct.point_extproj* %50), !dbg !1952
  call void @llvm.dbg.value(metadata i32 0, metadata !1953, metadata !DIExpression()), !dbg !1885
  br label %51, !dbg !1954

51:                                               ; preds = %102, %37
  %.05 = phi i32 [ 0, %37 ], [ %103, %102 ], !dbg !1956
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1953, metadata !DIExpression()), !dbg !1885
  %52 = sub i32 5, 1, !dbg !1957
  %53 = icmp ult i32 %.05, %52, !dbg !1959
  br i1 %53, label %54, label %104, !dbg !1960

54:                                               ; preds = %51
  %55 = mul i32 5, 50, !dbg !1961
  %56 = add i32 %.05, 1, !dbg !1963
  %57 = mul i32 %56, 10, !dbg !1964
  %58 = sub i32 %55, %57, !dbg !1965
  %59 = sub i32 %58, 1, !dbg !1966
  %60 = zext i32 %59 to i64, !dbg !1967
  %61 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %60, !dbg !1967
  %62 = load i32, i32* %61, align 4, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %62, metadata !1893, metadata !DIExpression()), !dbg !1885
  %63 = sub i32 5, 1, !dbg !1968
  %64 = mul i32 %63, 50, !dbg !1970
  %65 = add i32 %.05, 1, !dbg !1971
  %66 = mul i32 %65, 10, !dbg !1972
  %67 = sub i32 %64, %66, !dbg !1973
  %68 = sub i32 %67, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %68, metadata !1924, metadata !DIExpression()), !dbg !1885
  br label %69, !dbg !1975

69:                                               ; preds = %82, %54
  %.13 = phi i32 [ %62, %54 ], [ %81, %82 ], !dbg !1976
  %.1 = phi i32 [ %68, %54 ], [ %83, %82 ], !dbg !1977
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1924, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1893, metadata !DIExpression()), !dbg !1885
  %70 = mul i32 2, 50, !dbg !1978
  %71 = add i32 %.05, 1, !dbg !1980
  %72 = mul i32 %71, 10, !dbg !1981
  %73 = sub i32 %70, %72, !dbg !1982
  %74 = sub i32 %73, 1, !dbg !1983
  %75 = icmp sge i32 %.1, %74, !dbg !1984
  br i1 %75, label %76, label %84, !dbg !1985

76:                                               ; preds = %69
  %77 = mul i32 2, %.13, !dbg !1986
  %78 = sext i32 %.1 to i64, !dbg !1988
  %79 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %78, !dbg !1988
  %80 = load i32, i32* %79, align 4, !dbg !1988
  %81 = add i32 %77, %80, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %81, metadata !1893, metadata !DIExpression()), !dbg !1885
  br label %82, !dbg !1990

82:                                               ; preds = %76
  %83 = sub i32 %.1, 50, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %83, metadata !1924, metadata !DIExpression()), !dbg !1885
  br label %69, !dbg !1992, !llvm.loop !1993

84:                                               ; preds = %69
  %85 = sub i32 5, %.05, !dbg !1995
  %86 = sub i32 %85, 2, !dbg !1996
  %87 = sub i32 5, 1, !dbg !1997
  %88 = shl i32 1, %87, !dbg !1998
  %89 = mul i32 %86, %88, !dbg !1999
  %90 = zext i32 %89 to i64, !dbg !2000
  %91 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %90, !dbg !2000
  %92 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !2001
  %93 = add i32 %.05, 1, !dbg !2002
  %94 = mul i32 %93, 10, !dbg !2003
  %95 = sub i32 50, %94, !dbg !2004
  %96 = sub i32 %95, 1, !dbg !2005
  %97 = zext i32 %96 to i64, !dbg !2006
  %98 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %97, !dbg !2006
  %99 = load i32, i32* %98, align 4, !dbg !2006
  call void @table_lookup_fixed_base([1 x %struct.point_precomp]* %91, %struct.point_precomp* %92, i32 %.13, i32 %99), !dbg !2007
  %100 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !2008
  %101 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2009
  call void @eccmadd(%struct.point_precomp* %100, %struct.point_extproj* %101), !dbg !2010
  br label %102, !dbg !2011

102:                                              ; preds = %84
  %103 = add i32 %.05, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i32 %103, metadata !1953, metadata !DIExpression()), !dbg !1885
  br label %51, !dbg !2013, !llvm.loop !2014

104:                                              ; preds = %51
  %105 = sub i32 10, 2, !dbg !2016
  call void @llvm.dbg.value(metadata i32 %105, metadata !2018, metadata !DIExpression()), !dbg !1885
  br label %106, !dbg !2019

106:                                              ; preds = %163, %104
  %.0 = phi i32 [ %105, %104 ], [ %164, %163 ], !dbg !2020
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2018, metadata !DIExpression()), !dbg !1885
  %107 = icmp sge i32 %.0, 0, !dbg !2021
  br i1 %107, label %108, label %165, !dbg !2023

108:                                              ; preds = %106
  %109 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2024
  call void @eccdouble(%struct.point_extproj* %109), !dbg !2026
  call void @llvm.dbg.value(metadata i32 0, metadata !1953, metadata !DIExpression()), !dbg !1885
  br label %110, !dbg !2027

110:                                              ; preds = %160, %108
  %.16 = phi i32 [ 0, %108 ], [ %161, %160 ], !dbg !2029
  call void @llvm.dbg.value(metadata i32 %.16, metadata !1953, metadata !DIExpression()), !dbg !1885
  %111 = icmp ult i32 %.16, 5, !dbg !2030
  br i1 %111, label %112, label %162, !dbg !2032

112:                                              ; preds = %110
  %113 = mul i32 5, 50, !dbg !2033
  %114 = mul i32 %.16, 10, !dbg !2035
  %115 = sub i32 %113, %114, !dbg !2036
  %116 = add i32 %115, %.0, !dbg !2037
  %117 = sub i32 %116, 10, !dbg !2038
  %118 = zext i32 %117 to i64, !dbg !2039
  %119 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %118, !dbg !2039
  %120 = load i32, i32* %119, align 4, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %120, metadata !1893, metadata !DIExpression()), !dbg !1885
  %121 = sub i32 5, 1, !dbg !2040
  %122 = mul i32 %121, 50, !dbg !2042
  %123 = mul i32 %.16, 10, !dbg !2043
  %124 = sub i32 %122, %123, !dbg !2044
  %125 = add i32 %124, %.0, !dbg !2045
  %126 = sub i32 %125, 10, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %126, metadata !1924, metadata !DIExpression()), !dbg !1885
  br label %127, !dbg !2047

127:                                              ; preds = %140, %112
  %.24 = phi i32 [ %120, %112 ], [ %139, %140 ], !dbg !2048
  %.2 = phi i32 [ %126, %112 ], [ %141, %140 ], !dbg !2049
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1924, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 %.24, metadata !1893, metadata !DIExpression()), !dbg !1885
  %128 = mul i32 2, 50, !dbg !2050
  %129 = mul i32 %.16, 10, !dbg !2052
  %130 = sub i32 %128, %129, !dbg !2053
  %131 = add i32 %130, %.0, !dbg !2054
  %132 = sub i32 %131, 10, !dbg !2055
  %133 = icmp sge i32 %.2, %132, !dbg !2056
  br i1 %133, label %134, label %142, !dbg !2057

134:                                              ; preds = %127
  %135 = mul i32 2, %.24, !dbg !2058
  %136 = sext i32 %.2 to i64, !dbg !2060
  %137 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %136, !dbg !2060
  %138 = load i32, i32* %137, align 4, !dbg !2060
  %139 = add i32 %135, %138, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %139, metadata !1893, metadata !DIExpression()), !dbg !1885
  br label %140, !dbg !2062

140:                                              ; preds = %134
  %141 = sub i32 %.2, 50, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %141, metadata !1924, metadata !DIExpression()), !dbg !1885
  br label %127, !dbg !2064, !llvm.loop !2065

142:                                              ; preds = %127
  %143 = sub i32 5, %.16, !dbg !2067
  %144 = sub i32 %143, 1, !dbg !2068
  %145 = sub i32 5, 1, !dbg !2069
  %146 = shl i32 1, %145, !dbg !2070
  %147 = mul i32 %144, %146, !dbg !2071
  %148 = zext i32 %147 to i64, !dbg !2072
  %149 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %0, i64 %148, !dbg !2072
  %150 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !2073
  %151 = mul i32 %.16, 10, !dbg !2074
  %152 = sub i32 50, %151, !dbg !2075
  %153 = add i32 %152, %.0, !dbg !2076
  %154 = sub i32 %153, 10, !dbg !2077
  %155 = zext i32 %154 to i64, !dbg !2078
  %156 = getelementptr inbounds [271 x i32], [271 x i32]* %5, i64 0, i64 %155, !dbg !2078
  %157 = load i32, i32* %156, align 4, !dbg !2078
  call void @table_lookup_fixed_base([1 x %struct.point_precomp]* %149, %struct.point_precomp* %150, i32 %.24, i32 %157), !dbg !2079
  %158 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %8, i64 0, i64 0, !dbg !2080
  %159 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2081
  call void @eccmadd(%struct.point_precomp* %158, %struct.point_extproj* %159), !dbg !2082
  br label %160, !dbg !2083

160:                                              ; preds = %142
  %161 = add i32 %.16, 1, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %161, metadata !1953, metadata !DIExpression()), !dbg !1885
  br label %110, !dbg !2085, !llvm.loop !2086

162:                                              ; preds = %110
  br label %163, !dbg !2088

163:                                              ; preds = %162
  %164 = add nsw i32 %.0, -1, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %164, metadata !2018, metadata !DIExpression()), !dbg !1885
  br label %106, !dbg !2090, !llvm.loop !2091

165:                                              ; preds = %106
  %166 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2093
  call void @eccnorm(%struct.point_extproj* %166, %struct.point_affine* %2), !dbg !2094
  ret i1 true, !dbg !2095
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mLSB_set_recode(i64* %0, i32* %1) #0 !dbg !2096 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2100, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32* %1, metadata !2102, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 50, metadata !2103, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 250, metadata !2104, metadata !DIExpression()), !dbg !2101
  %3 = sub i32 50, 1, !dbg !2105
  %4 = zext i32 %3 to i64, !dbg !2106
  %5 = getelementptr inbounds i32, i32* %1, i64 %4, !dbg !2106
  store i32 0, i32* %5, align 4, !dbg !2107
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2101
  br label %6, !dbg !2109

6:                                                ; preds = %21, %2
  %.01 = phi i32 [ 0, %2 ], [ %22, %21 ], !dbg !2111
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2108, metadata !DIExpression()), !dbg !2101
  %7 = icmp ult i32 %.01, 3, !dbg !2112
  br i1 %7, label %8, label %23, !dbg !2114

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64, !dbg !2115
  %10 = getelementptr inbounds i64, i64* %0, i64 %9, !dbg !2115
  %11 = load i64, i64* %10, align 8, !dbg !2115
  %12 = lshr i64 %11, 1, !dbg !2115
  %13 = add i32 %.01, 1, !dbg !2115
  %14 = zext i32 %13 to i64, !dbg !2115
  %15 = getelementptr inbounds i64, i64* %0, i64 %14, !dbg !2115
  %16 = load i64, i64* %15, align 8, !dbg !2115
  %17 = shl i64 %16, 63, !dbg !2115
  %18 = xor i64 %12, %17, !dbg !2115
  %19 = zext i32 %.01 to i64, !dbg !2115
  %20 = getelementptr inbounds i64, i64* %0, i64 %19, !dbg !2115
  store i64 %18, i64* %20, align 8, !dbg !2115
  br label %21, !dbg !2117

21:                                               ; preds = %8
  %22 = add i32 %.01, 1, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %22, metadata !2108, metadata !DIExpression()), !dbg !2101
  br label %6, !dbg !2119, !llvm.loop !2120

23:                                               ; preds = %6
  %24 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2122
  %25 = load i64, i64* %24, align 8, !dbg !2123
  %26 = lshr i64 %25, 1, !dbg !2123
  store i64 %26, i64* %24, align 8, !dbg !2123
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()), !dbg !2101
  br label %27, !dbg !2125

27:                                               ; preds = %59, %23
  %.02 = phi i32 [ 0, %23 ], [ %60, %59 ], !dbg !2127
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2124, metadata !DIExpression()), !dbg !2101
  %28 = sub i32 50, 1, !dbg !2128
  %29 = icmp ult i32 %.02, %28, !dbg !2130
  br i1 %29, label %30, label %61, !dbg !2131

30:                                               ; preds = %27
  %31 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2132
  %32 = load i64, i64* %31, align 8, !dbg !2132
  %33 = and i64 %32, 1, !dbg !2134
  %34 = sub i64 %33, 1, !dbg !2135
  %35 = trunc i64 %34 to i32, !dbg !2136
  %36 = zext i32 %.02 to i64, !dbg !2137
  %37 = getelementptr inbounds i32, i32* %1, i64 %36, !dbg !2137
  store i32 %35, i32* %37, align 4, !dbg !2138
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2101
  br label %38, !dbg !2139

38:                                               ; preds = %53, %30
  %.1 = phi i32 [ 0, %30 ], [ %54, %53 ], !dbg !2141
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2108, metadata !DIExpression()), !dbg !2101
  %39 = icmp ult i32 %.1, 3, !dbg !2142
  br i1 %39, label %40, label %55, !dbg !2144

40:                                               ; preds = %38
  %41 = zext i32 %.1 to i64, !dbg !2145
  %42 = getelementptr inbounds i64, i64* %0, i64 %41, !dbg !2145
  %43 = load i64, i64* %42, align 8, !dbg !2145
  %44 = lshr i64 %43, 1, !dbg !2145
  %45 = add i32 %.1, 1, !dbg !2145
  %46 = zext i32 %45 to i64, !dbg !2145
  %47 = getelementptr inbounds i64, i64* %0, i64 %46, !dbg !2145
  %48 = load i64, i64* %47, align 8, !dbg !2145
  %49 = shl i64 %48, 63, !dbg !2145
  %50 = xor i64 %44, %49, !dbg !2145
  %51 = zext i32 %.1 to i64, !dbg !2145
  %52 = getelementptr inbounds i64, i64* %0, i64 %51, !dbg !2145
  store i64 %50, i64* %52, align 8, !dbg !2145
  br label %53, !dbg !2147

53:                                               ; preds = %40
  %54 = add i32 %.1, 1, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %54, metadata !2108, metadata !DIExpression()), !dbg !2101
  br label %38, !dbg !2149, !llvm.loop !2150

55:                                               ; preds = %38
  %56 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2152
  %57 = load i64, i64* %56, align 8, !dbg !2153
  %58 = lshr i64 %57, 1, !dbg !2153
  store i64 %58, i64* %56, align 8, !dbg !2153
  br label %59, !dbg !2154

59:                                               ; preds = %55
  %60 = add i32 %.02, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %60, metadata !2124, metadata !DIExpression()), !dbg !2101
  br label %27, !dbg !2156, !llvm.loop !2157

61:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 50, metadata !2124, metadata !DIExpression()), !dbg !2101
  br label %62, !dbg !2159

62:                                               ; preds = %133, %61
  %.13 = phi i32 [ 50, %61 ], [ %134, %133 ], !dbg !2161
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2124, metadata !DIExpression()), !dbg !2101
  %63 = icmp ult i32 %.13, 250, !dbg !2162
  br i1 %63, label %64, label %135, !dbg !2164

64:                                               ; preds = %62
  %65 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2165
  %66 = load i64, i64* %65, align 8, !dbg !2165
  %67 = and i64 %66, 1, !dbg !2167
  %68 = trunc i64 %67 to i32, !dbg !2168
  %69 = zext i32 %.13 to i64, !dbg !2169
  %70 = getelementptr inbounds i32, i32* %1, i64 %69, !dbg !2169
  store i32 %68, i32* %70, align 4, !dbg !2170
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2101
  br label %71, !dbg !2171

71:                                               ; preds = %86, %64
  %.2 = phi i32 [ 0, %64 ], [ %87, %86 ], !dbg !2173
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2108, metadata !DIExpression()), !dbg !2101
  %72 = icmp ult i32 %.2, 3, !dbg !2174
  br i1 %72, label %73, label %88, !dbg !2176

73:                                               ; preds = %71
  %74 = zext i32 %.2 to i64, !dbg !2177
  %75 = getelementptr inbounds i64, i64* %0, i64 %74, !dbg !2177
  %76 = load i64, i64* %75, align 8, !dbg !2177
  %77 = lshr i64 %76, 1, !dbg !2177
  %78 = add i32 %.2, 1, !dbg !2177
  %79 = zext i32 %78 to i64, !dbg !2177
  %80 = getelementptr inbounds i64, i64* %0, i64 %79, !dbg !2177
  %81 = load i64, i64* %80, align 8, !dbg !2177
  %82 = shl i64 %81, 63, !dbg !2177
  %83 = xor i64 %77, %82, !dbg !2177
  %84 = zext i32 %.2 to i64, !dbg !2177
  %85 = getelementptr inbounds i64, i64* %0, i64 %84, !dbg !2177
  store i64 %83, i64* %85, align 8, !dbg !2177
  br label %86, !dbg !2179

86:                                               ; preds = %73
  %87 = add i32 %.2, 1, !dbg !2180
  call void @llvm.dbg.value(metadata i32 %87, metadata !2108, metadata !DIExpression()), !dbg !2101
  br label %71, !dbg !2181, !llvm.loop !2182

88:                                               ; preds = %71
  %89 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2184
  %90 = load i64, i64* %89, align 8, !dbg !2185
  %91 = lshr i64 %90, 1, !dbg !2185
  store i64 %91, i64* %89, align 8, !dbg !2185
  %92 = udiv i32 %.13, 50, !dbg !2186
  %93 = mul i32 %92, 50, !dbg !2187
  %94 = sub i32 %.13, %93, !dbg !2188
  %95 = zext i32 %94 to i64, !dbg !2189
  %96 = getelementptr inbounds i32, i32* %1, i64 %95, !dbg !2189
  %97 = load i32, i32* %96, align 4, !dbg !2189
  %98 = sub i32 0, %97, !dbg !2190
  %99 = zext i32 %.13 to i64, !dbg !2191
  %100 = getelementptr inbounds i32, i32* %1, i64 %99, !dbg !2191
  %101 = load i32, i32* %100, align 4, !dbg !2191
  %102 = and i32 %98, %101, !dbg !2192
  %103 = zext i32 %102 to i64, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %103, metadata !2194, metadata !DIExpression()), !dbg !2101
  %104 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2195
  %105 = load i64, i64* %104, align 8, !dbg !2195
  %106 = add i64 %105, %103, !dbg !2196
  %107 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2197
  store i64 %106, i64* %107, align 8, !dbg !2198
  %108 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2199
  %109 = load i64, i64* %108, align 8, !dbg !2199
  %110 = trunc i64 %109 to i32, !dbg !2200
  %111 = call i32 @is_digit_zero_ct(i32 %110), !dbg !2201
  %112 = zext i32 %111 to i64, !dbg !2202
  %113 = and i64 %103, %112, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %113, metadata !2204, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 1, metadata !2108, metadata !DIExpression()), !dbg !2101
  br label %114, !dbg !2205

114:                                              ; preds = %130, %88
  %.3 = phi i32 [ 1, %88 ], [ %131, %130 ], !dbg !2207
  %.0 = phi i64 [ %113, %88 ], [ %129, %130 ], !dbg !2208
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2204, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2108, metadata !DIExpression()), !dbg !2101
  %115 = icmp ult i32 %.3, 4, !dbg !2209
  br i1 %115, label %116, label %132, !dbg !2211

116:                                              ; preds = %114
  %117 = zext i32 %.3 to i64, !dbg !2212
  %118 = getelementptr inbounds i64, i64* %0, i64 %117, !dbg !2212
  %119 = load i64, i64* %118, align 8, !dbg !2212
  %120 = add i64 %119, %.0, !dbg !2214
  %121 = zext i32 %.3 to i64, !dbg !2215
  %122 = getelementptr inbounds i64, i64* %0, i64 %121, !dbg !2215
  store i64 %120, i64* %122, align 8, !dbg !2216
  %123 = zext i32 %.3 to i64, !dbg !2217
  %124 = getelementptr inbounds i64, i64* %0, i64 %123, !dbg !2217
  %125 = load i64, i64* %124, align 8, !dbg !2217
  %126 = trunc i64 %125 to i32, !dbg !2218
  %127 = call i32 @is_digit_zero_ct(i32 %126), !dbg !2219
  %128 = zext i32 %127 to i64, !dbg !2220
  %129 = and i64 %.0, %128, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %129, metadata !2204, metadata !DIExpression()), !dbg !2101
  br label %130, !dbg !2222

130:                                              ; preds = %116
  %131 = add i32 %.3, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %131, metadata !2108, metadata !DIExpression()), !dbg !2101
  br label %114, !dbg !2224, !llvm.loop !2225

132:                                              ; preds = %114
  br label %133, !dbg !2227

133:                                              ; preds = %132
  %134 = add i32 %.13, 1, !dbg !2228
  call void @llvm.dbg.value(metadata i32 %134, metadata !2124, metadata !DIExpression()), !dbg !2101
  br label %62, !dbg !2229, !llvm.loop !2230

135:                                              ; preds = %62
  ret void, !dbg !2232
}

; Function Attrs: noinline nounwind uwtable
define internal void @R5_to_R1(%struct.point_precomp* %0, %struct.point_extproj* %1) #0 !dbg !2233 {
  call void @llvm.dbg.value(metadata %struct.point_precomp* %0, metadata !2234, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata %struct.point_extproj* %1, metadata !2236, metadata !DIExpression()), !dbg !2235
  %3 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 0, !dbg !2237
  %4 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %3, i64 0, i64 0, !dbg !2238
  %5 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 1, !dbg !2239
  %6 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %5, i64 0, i64 0, !dbg !2240
  %7 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !2241
  %8 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %7, i64 0, i64 0, !dbg !2242
  call void @fp2sub1271([4 x i32]* %4, [4 x i32]* %6, [4 x i32]* %8), !dbg !2243
  %9 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 0, !dbg !2244
  %10 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0, !dbg !2245
  %11 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %0, i32 0, i32 1, !dbg !2246
  %12 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %11, i64 0, i64 0, !dbg !2247
  %13 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !2248
  %14 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %13, i64 0, i64 0, !dbg !2249
  call void @fp2add1271([4 x i32]* %10, [4 x i32]* %12, [4 x i32]* %14), !dbg !2250
  %15 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !2251
  %16 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %15, i64 0, i64 0, !dbg !2252
  call void @fp2div1271([4 x i32]* %16), !dbg !2253
  %17 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !2254
  %18 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %17, i64 0, i64 0, !dbg !2255
  call void @fp2div1271([4 x i32]* %18), !dbg !2256
  %19 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !2257
  %20 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %19, i64 0, i64 0, !dbg !2258
  call void @fp2zero1271([4 x i32]* %20), !dbg !2259
  %21 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 2, !dbg !2260
  %22 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %21, i64 0, i64 0, !dbg !2261
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0, !dbg !2261
  store i32 1, i32* %23, align 4, !dbg !2262
  %24 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 0, !dbg !2263
  %25 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %24, i64 0, i64 0, !dbg !2264
  %26 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 3, !dbg !2265
  %27 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %26, i64 0, i64 0, !dbg !2266
  call void @fp2copy1271([4 x i32]* %25, [4 x i32]* %27), !dbg !2267
  %28 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 1, !dbg !2268
  %29 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %28, i64 0, i64 0, !dbg !2269
  %30 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %1, i32 0, i32 4, !dbg !2270
  %31 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %30, i64 0, i64 0, !dbg !2271
  call void @fp2copy1271([4 x i32]* %29, [4 x i32]* %31), !dbg !2272
  ret void, !dbg !2273
}

; Function Attrs: noinline nounwind uwtable
define dso_local [1 x %struct.point_precomp]* @ecc_allocate_precomp() #0 !dbg !2274 {
  %1 = call noalias i8* @calloc(i64 80, i64 96) #5, !dbg !2277
  %2 = bitcast i8* %1 to [1 x %struct.point_precomp]*, !dbg !2278
  ret [1 x %struct.point_precomp]* %2, !dbg !2279
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @ecc_precomp_fixed(%struct.point_affine* %0, [1 x %struct.point_precomp]* %1, i1 zeroext %2, %struct.CurveStruct* %3) #0 !dbg !2280 {
  %5 = alloca [1 x %struct.point_affine], align 16
  %6 = alloca [1 x %struct.point_extproj], align 16
  %7 = alloca [1 x %struct.point_extproj], align 16
  %8 = alloca [5 x [1 x %struct.point_extproj]], align 16
  %9 = alloca [5 x [1 x %struct.point_extproj_precomp]], align 16
  %10 = alloca [1 x %struct.point_extproj_precomp], align 16
  %11 = alloca [80 x [1 x %struct.point_extproj_precomp]], align 16
  call void @llvm.dbg.value(metadata %struct.point_affine* %0, metadata !2283, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata [1 x %struct.point_precomp]* %1, metadata !2285, metadata !DIExpression()), !dbg !2284
  %12 = zext i1 %2 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !2286, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata %struct.CurveStruct* %3, metadata !2287, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.declare(metadata [1 x %struct.point_affine]* %5, metadata !2288, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %6, metadata !2292, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %7, metadata !2294, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.declare(metadata [5 x [1 x %struct.point_extproj]]* %8, metadata !2296, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.declare(metadata [5 x [1 x %struct.point_extproj_precomp]]* %9, metadata !2301, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj_precomp]* %10, metadata !2304, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.declare(metadata [80 x [1 x %struct.point_extproj_precomp]]* %11, metadata !2306, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i32 5, metadata !2311, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 5, metadata !2312, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 50, metadata !2313, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 10, metadata !2314, metadata !DIExpression()), !dbg !2284
  %13 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2315
  call void @point_setup(%struct.point_affine* %0, %struct.point_extproj* %13), !dbg !2316
  %14 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2317
  %15 = call zeroext i1 @ecc_point_validate(%struct.point_extproj* %14, %struct.CurveStruct* %3), !dbg !2319
  %16 = zext i1 %15 to i32, !dbg !2319
  %17 = icmp eq i32 %16, 0, !dbg !2320
  br i1 %17, label %18, label %19, !dbg !2321

18:                                               ; preds = %4
  br label %405, !dbg !2322

19:                                               ; preds = %4
  %20 = trunc i8 %12 to i1, !dbg !2324
  %21 = zext i1 %20 to i32, !dbg !2324
  %22 = icmp eq i32 %21, 1, !dbg !2326
  br i1 %22, label %23, label %29, !dbg !2327

23:                                               ; preds = %19
  %24 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2328
  call void @cofactor_clearing(%struct.point_extproj* %24, %struct.CurveStruct* %3), !dbg !2330
  %25 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2331
  %26 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !2332
  call void @eccnorm(%struct.point_extproj* %25, %struct.point_affine* %26), !dbg !2333
  %27 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !2334
  %28 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2335
  call void @point_setup(%struct.point_affine* %27, %struct.point_extproj* %28), !dbg !2336
  br label %29, !dbg !2337

29:                                               ; preds = %23, %19
  %30 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2338
  %31 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %30, i32 0, i32 0, !dbg !2338
  %32 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %31, i64 0, i64 0, !dbg !2338
  %33 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !2338
  %34 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %33, i64 0, i64 0, !dbg !2338
  %35 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %34, i32 0, i32 0, !dbg !2338
  %36 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %35, i64 0, i64 0, !dbg !2338
  call void @fp2copy1271([4 x i32]* %32, [4 x i32]* %36), !dbg !2338
  %37 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2338
  %38 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %37, i32 0, i32 1, !dbg !2338
  %39 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %38, i64 0, i64 0, !dbg !2338
  %40 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !2338
  %41 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %40, i64 0, i64 0, !dbg !2338
  %42 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %41, i32 0, i32 1, !dbg !2338
  %43 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %42, i64 0, i64 0, !dbg !2338
  call void @fp2copy1271([4 x i32]* %39, [4 x i32]* %43), !dbg !2338
  %44 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2338
  %45 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %44, i32 0, i32 2, !dbg !2338
  %46 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %45, i64 0, i64 0, !dbg !2338
  %47 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !2338
  %48 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %47, i64 0, i64 0, !dbg !2338
  %49 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %48, i32 0, i32 2, !dbg !2338
  %50 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %49, i64 0, i64 0, !dbg !2338
  call void @fp2copy1271([4 x i32]* %46, [4 x i32]* %50), !dbg !2338
  %51 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2338
  %52 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %51, i32 0, i32 3, !dbg !2338
  %53 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %52, i64 0, i64 0, !dbg !2338
  %54 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !2338
  %55 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %54, i64 0, i64 0, !dbg !2338
  %56 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %55, i32 0, i32 3, !dbg !2338
  %57 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %56, i64 0, i64 0, !dbg !2338
  call void @fp2copy1271([4 x i32]* %53, [4 x i32]* %57), !dbg !2338
  %58 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2338
  %59 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %58, i32 0, i32 4, !dbg !2338
  %60 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %59, i64 0, i64 0, !dbg !2338
  %61 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 0, !dbg !2338
  %62 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %61, i64 0, i64 0, !dbg !2338
  %63 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %62, i32 0, i32 4, !dbg !2338
  %64 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %63, i64 0, i64 0, !dbg !2338
  call void @fp2copy1271([4 x i32]* %60, [4 x i32]* %64), !dbg !2338
  call void @llvm.dbg.value(metadata i32 0, metadata !2339, metadata !DIExpression()), !dbg !2284
  br label %65, !dbg !2340

65:                                               ; preds = %140, %29
  %.06 = phi i32 [ 0, %29 ], [ %141, %140 ], !dbg !2342
  call void @llvm.dbg.value(metadata i32 %.06, metadata !2339, metadata !DIExpression()), !dbg !2284
  %66 = sub i32 5, 1, !dbg !2343
  %67 = icmp ult i32 %.06, %66, !dbg !2345
  br i1 %67, label %68, label %142, !dbg !2346

68:                                               ; preds = %65
  %69 = zext i32 %.06 to i64, !dbg !2347
  %70 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %69, !dbg !2347
  %71 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %70, i64 0, i64 0, !dbg !2347
  %72 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %71, i32 0, i32 0, !dbg !2347
  %73 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %72, i64 0, i64 0, !dbg !2347
  %74 = add i32 %.06, 1, !dbg !2347
  %75 = zext i32 %74 to i64, !dbg !2347
  %76 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %75, !dbg !2347
  %77 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %76, i64 0, i64 0, !dbg !2347
  %78 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %77, i32 0, i32 0, !dbg !2347
  %79 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %78, i64 0, i64 0, !dbg !2347
  call void @fp2copy1271([4 x i32]* %73, [4 x i32]* %79), !dbg !2347
  %80 = zext i32 %.06 to i64, !dbg !2347
  %81 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %80, !dbg !2347
  %82 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %81, i64 0, i64 0, !dbg !2347
  %83 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %82, i32 0, i32 1, !dbg !2347
  %84 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %83, i64 0, i64 0, !dbg !2347
  %85 = add i32 %.06, 1, !dbg !2347
  %86 = zext i32 %85 to i64, !dbg !2347
  %87 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %86, !dbg !2347
  %88 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %87, i64 0, i64 0, !dbg !2347
  %89 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %88, i32 0, i32 1, !dbg !2347
  %90 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %89, i64 0, i64 0, !dbg !2347
  call void @fp2copy1271([4 x i32]* %84, [4 x i32]* %90), !dbg !2347
  %91 = zext i32 %.06 to i64, !dbg !2347
  %92 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %91, !dbg !2347
  %93 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %92, i64 0, i64 0, !dbg !2347
  %94 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %93, i32 0, i32 2, !dbg !2347
  %95 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %94, i64 0, i64 0, !dbg !2347
  %96 = add i32 %.06, 1, !dbg !2347
  %97 = zext i32 %96 to i64, !dbg !2347
  %98 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %97, !dbg !2347
  %99 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %98, i64 0, i64 0, !dbg !2347
  %100 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %99, i32 0, i32 2, !dbg !2347
  %101 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %100, i64 0, i64 0, !dbg !2347
  call void @fp2copy1271([4 x i32]* %95, [4 x i32]* %101), !dbg !2347
  %102 = zext i32 %.06 to i64, !dbg !2347
  %103 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %102, !dbg !2347
  %104 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %103, i64 0, i64 0, !dbg !2347
  %105 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %104, i32 0, i32 3, !dbg !2347
  %106 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %105, i64 0, i64 0, !dbg !2347
  %107 = add i32 %.06, 1, !dbg !2347
  %108 = zext i32 %107 to i64, !dbg !2347
  %109 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %108, !dbg !2347
  %110 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %109, i64 0, i64 0, !dbg !2347
  %111 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %110, i32 0, i32 3, !dbg !2347
  %112 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %111, i64 0, i64 0, !dbg !2347
  call void @fp2copy1271([4 x i32]* %106, [4 x i32]* %112), !dbg !2347
  %113 = zext i32 %.06 to i64, !dbg !2347
  %114 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %113, !dbg !2347
  %115 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %114, i64 0, i64 0, !dbg !2347
  %116 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %115, i32 0, i32 4, !dbg !2347
  %117 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %116, i64 0, i64 0, !dbg !2347
  %118 = add i32 %.06, 1, !dbg !2347
  %119 = zext i32 %118 to i64, !dbg !2347
  %120 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %119, !dbg !2347
  %121 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %120, i64 0, i64 0, !dbg !2347
  %122 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %121, i32 0, i32 4, !dbg !2347
  %123 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %122, i64 0, i64 0, !dbg !2347
  call void @fp2copy1271([4 x i32]* %117, [4 x i32]* %123), !dbg !2347
  %124 = zext i32 %.06 to i64, !dbg !2349
  %125 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %124, !dbg !2349
  %126 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %125, i64 0, i64 0, !dbg !2349
  %127 = zext i32 %.06 to i64, !dbg !2350
  %128 = getelementptr inbounds [5 x [1 x %struct.point_extproj_precomp]], [5 x [1 x %struct.point_extproj_precomp]]* %9, i64 0, i64 %127, !dbg !2350
  %129 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %128, i64 0, i64 0, !dbg !2350
  call void @R1_to_R2(%struct.point_extproj* %126, %struct.point_extproj_precomp* %129, %struct.CurveStruct* %3), !dbg !2351
  call void @llvm.dbg.value(metadata i32 0, metadata !2352, metadata !DIExpression()), !dbg !2284
  br label %130, !dbg !2353

130:                                              ; preds = %137, %68
  %.04 = phi i32 [ 0, %68 ], [ %138, %137 ], !dbg !2355
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2352, metadata !DIExpression()), !dbg !2284
  %131 = icmp ult i32 %.04, 50, !dbg !2356
  br i1 %131, label %132, label %139, !dbg !2358

132:                                              ; preds = %130
  %133 = add i32 %.06, 1, !dbg !2359
  %134 = zext i32 %133 to i64, !dbg !2360
  %135 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %134, !dbg !2360
  %136 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %135, i64 0, i64 0, !dbg !2360
  call void @eccdouble_ni(%struct.point_extproj* %136), !dbg !2361
  br label %137, !dbg !2361

137:                                              ; preds = %132
  %138 = add i32 %.04, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %138, metadata !2352, metadata !DIExpression()), !dbg !2284
  br label %130, !dbg !2363, !llvm.loop !2364

139:                                              ; preds = %130
  br label %140, !dbg !2366

140:                                              ; preds = %139
  %141 = add i32 %.06, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i32 %141, metadata !2339, metadata !DIExpression()), !dbg !2284
  br label %65, !dbg !2368, !llvm.loop !2369

142:                                              ; preds = %65
  %143 = sub i32 5, 1, !dbg !2371
  %144 = zext i32 %143 to i64, !dbg !2372
  %145 = getelementptr inbounds [5 x [1 x %struct.point_extproj]], [5 x [1 x %struct.point_extproj]]* %8, i64 0, i64 %144, !dbg !2372
  %146 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %145, i64 0, i64 0, !dbg !2372
  %147 = sub i32 5, 1, !dbg !2373
  %148 = zext i32 %147 to i64, !dbg !2374
  %149 = getelementptr inbounds [5 x [1 x %struct.point_extproj_precomp]], [5 x [1 x %struct.point_extproj_precomp]]* %9, i64 0, i64 %148, !dbg !2374
  %150 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %149, i64 0, i64 0, !dbg !2374
  call void @R1_to_R2(%struct.point_extproj* %146, %struct.point_extproj_precomp* %150, %struct.CurveStruct* %3), !dbg !2375
  %151 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2376
  %152 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %151, i32 0, i32 0, !dbg !2376
  %153 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %152, i64 0, i64 0, !dbg !2377
  %154 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 0, !dbg !2378
  %155 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %154, i64 0, i64 0, !dbg !2379
  %156 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %155, i32 0, i32 0, !dbg !2379
  %157 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %156, i64 0, i64 0, !dbg !2378
  call void @fp2copy1271([4 x i32]* %153, [4 x i32]* %157), !dbg !2380
  %158 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %6, i64 0, i64 0, !dbg !2381
  %159 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %158, i32 0, i32 1, !dbg !2381
  %160 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %159, i64 0, i64 0, !dbg !2382
  %161 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 0, !dbg !2383
  %162 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %161, i64 0, i64 0, !dbg !2384
  %163 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %162, i32 0, i32 1, !dbg !2384
  %164 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %163, i64 0, i64 0, !dbg !2383
  call void @fp2copy1271([4 x i32]* %160, [4 x i32]* %164), !dbg !2385
  call void @llvm.dbg.value(metadata i32 0, metadata !2386, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i64 1, metadata !2387, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 0, metadata !2339, metadata !DIExpression()), !dbg !2284
  br label %165, !dbg !2388

165:                                              ; preds = %250, %142
  %.17 = phi i32 [ 0, %142 ], [ %251, %250 ], !dbg !2390
  %.02 = phi i32 [ 0, %142 ], [ %.1, %250 ], !dbg !2391
  %.01 = phi i64 [ 1, %142 ], [ %249, %250 ], !dbg !2284
  call void @llvm.dbg.value(metadata i64 %.01, metadata !2387, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2386, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %.17, metadata !2339, metadata !DIExpression()), !dbg !2284
  %166 = sub i32 5, 1, !dbg !2392
  %167 = icmp ult i32 %.17, %166, !dbg !2394
  br i1 %167, label %168, label %252, !dbg !2395

168:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i32 0, metadata !2352, metadata !DIExpression()), !dbg !2284
  br label %169, !dbg !2396

169:                                              ; preds = %246, %168
  %.15 = phi i32 [ 0, %168 ], [ %247, %246 ], !dbg !2399
  %.1 = phi i32 [ %.02, %168 ], [ %225, %246 ], !dbg !2284
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2386, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2352, metadata !DIExpression()), !dbg !2284
  %170 = zext i32 %.15 to i64, !dbg !2400
  %171 = icmp ult i64 %170, %.01, !dbg !2402
  br i1 %171, label %172, label %248, !dbg !2403

172:                                              ; preds = %169
  %173 = zext i32 %.15 to i64, !dbg !2404
  %174 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %173, !dbg !2404
  %175 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %174, i64 0, i64 0, !dbg !2406
  %176 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %175, i32 0, i32 0, !dbg !2406
  %177 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %176, i64 0, i64 0, !dbg !2404
  %178 = zext i32 %.15 to i64, !dbg !2407
  %179 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %178, !dbg !2407
  %180 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %179, i64 0, i64 0, !dbg !2408
  %181 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %180, i32 0, i32 1, !dbg !2408
  %182 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %181, i64 0, i64 0, !dbg !2407
  %183 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !2409
  %184 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %183, i32 0, i32 0, !dbg !2409
  %185 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %184, i64 0, i64 0, !dbg !2410
  call void @fp2add1271([4 x i32]* %177, [4 x i32]* %182, [4 x i32]* %185), !dbg !2411
  %186 = zext i32 %.15 to i64, !dbg !2412
  %187 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %186, !dbg !2412
  %188 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %187, i64 0, i64 0, !dbg !2413
  %189 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %188, i32 0, i32 1, !dbg !2413
  %190 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %189, i64 0, i64 0, !dbg !2412
  %191 = zext i32 %.15 to i64, !dbg !2414
  %192 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %191, !dbg !2414
  %193 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %192, i64 0, i64 0, !dbg !2415
  %194 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %193, i32 0, i32 0, !dbg !2415
  %195 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %194, i64 0, i64 0, !dbg !2414
  %196 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !2416
  %197 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %196, i32 0, i32 1, !dbg !2416
  %198 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %197, i64 0, i64 0, !dbg !2417
  call void @fp2sub1271([4 x i32]* %190, [4 x i32]* %195, [4 x i32]* %198), !dbg !2418
  %199 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !2419
  %200 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %199, i32 0, i32 2, !dbg !2419
  %201 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %200, i64 0, i64 0, !dbg !2420
  call void @fp2zero1271([4 x i32]* %201), !dbg !2421
  %202 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !2422
  %203 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %202, i32 0, i32 2, !dbg !2422
  %204 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %203, i64 0, i64 0, !dbg !2423
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %204, i64 0, i64 0, !dbg !2423
  store i32 1, i32* %205, align 16, !dbg !2424
  %206 = zext i32 %.15 to i64, !dbg !2425
  %207 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %206, !dbg !2425
  %208 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %207, i64 0, i64 0, !dbg !2426
  %209 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %208, i32 0, i32 0, !dbg !2426
  %210 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %209, i64 0, i64 0, !dbg !2425
  %211 = zext i32 %.15 to i64, !dbg !2427
  %212 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %211, !dbg !2427
  %213 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %212, i64 0, i64 0, !dbg !2428
  %214 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %213, i32 0, i32 1, !dbg !2428
  %215 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %214, i64 0, i64 0, !dbg !2427
  %216 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !2429
  %217 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %216, i32 0, i32 3, !dbg !2429
  %218 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %217, i64 0, i64 0, !dbg !2430
  call void @fp2mul1271([4 x i32]* %210, [4 x i32]* %215, [4 x i32]* %218), !dbg !2431
  %219 = add i32 %.17, 1, !dbg !2432
  %220 = zext i32 %219 to i64, !dbg !2433
  %221 = getelementptr inbounds [5 x [1 x %struct.point_extproj_precomp]], [5 x [1 x %struct.point_extproj_precomp]]* %9, i64 0, i64 %220, !dbg !2433
  %222 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %221, i64 0, i64 0, !dbg !2433
  %223 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %10, i64 0, i64 0, !dbg !2434
  %224 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2435
  call void @eccadd_core(%struct.point_extproj_precomp* %222, %struct.point_extproj_precomp* %223, %struct.point_extproj* %224), !dbg !2436
  %225 = add i32 %.1, 1, !dbg !2437
  call void @llvm.dbg.value(metadata i32 %225, metadata !2386, metadata !DIExpression()), !dbg !2284
  %226 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2438
  %227 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !2439
  call void @eccnorm(%struct.point_extproj* %226, %struct.point_affine* %227), !dbg !2440
  %228 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !2441
  %229 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2442
  call void @point_setup(%struct.point_affine* %228, %struct.point_extproj* %229), !dbg !2443
  %230 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2444
  %231 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %230, i32 0, i32 0, !dbg !2444
  %232 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %231, i64 0, i64 0, !dbg !2445
  %233 = zext i32 %225 to i64, !dbg !2446
  %234 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %233, !dbg !2446
  %235 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %234, i64 0, i64 0, !dbg !2447
  %236 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %235, i32 0, i32 0, !dbg !2447
  %237 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %236, i64 0, i64 0, !dbg !2446
  call void @fp2copy1271([4 x i32]* %232, [4 x i32]* %237), !dbg !2448
  %238 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2449
  %239 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %238, i32 0, i32 1, !dbg !2449
  %240 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %239, i64 0, i64 0, !dbg !2450
  %241 = zext i32 %225 to i64, !dbg !2451
  %242 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %241, !dbg !2451
  %243 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %242, i64 0, i64 0, !dbg !2452
  %244 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %243, i32 0, i32 1, !dbg !2452
  %245 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %244, i64 0, i64 0, !dbg !2451
  call void @fp2copy1271([4 x i32]* %240, [4 x i32]* %245), !dbg !2453
  br label %246, !dbg !2454

246:                                              ; preds = %172
  %247 = add i32 %.15, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %247, metadata !2352, metadata !DIExpression()), !dbg !2284
  br label %169, !dbg !2456, !llvm.loop !2457

248:                                              ; preds = %169
  %249 = mul i64 2, %.01, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %249, metadata !2387, metadata !DIExpression()), !dbg !2284
  br label %250, !dbg !2460

250:                                              ; preds = %248
  %251 = add i32 %.17, 1, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %251, metadata !2339, metadata !DIExpression()), !dbg !2284
  br label %165, !dbg !2462, !llvm.loop !2463

252:                                              ; preds = %165
  %253 = add i32 %.02, 1, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %253, metadata !2386, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 0, metadata !2339, metadata !DIExpression()), !dbg !2284
  br label %254, !dbg !2466

254:                                              ; preds = %324, %252
  %.28 = phi i32 [ 0, %252 ], [ %325, %324 ], !dbg !2468
  call void @llvm.dbg.value(metadata i32 %.28, metadata !2339, metadata !DIExpression()), !dbg !2284
  %255 = sub i32 5, 1, !dbg !2469
  %256 = icmp ult i32 %.28, %255, !dbg !2471
  br i1 %256, label %257, label %326, !dbg !2472

257:                                              ; preds = %254
  call void @llvm.dbg.value(metadata i32 0, metadata !2352, metadata !DIExpression()), !dbg !2284
  br label %258, !dbg !2473

258:                                              ; preds = %321, %257
  %.2 = phi i32 [ 0, %257 ], [ %322, %321 ], !dbg !2476
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2352, metadata !DIExpression()), !dbg !2284
  %259 = icmp ult i32 %.2, %253, !dbg !2477
  br i1 %259, label %260, label %323, !dbg !2479

260:                                              ; preds = %258
  %261 = mul i32 %.28, %253, !dbg !2480
  %262 = add i32 %261, %.2, !dbg !2482
  %263 = zext i32 %262 to i64, !dbg !2483
  %264 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %263, !dbg !2483
  %265 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %264, i64 0, i64 0, !dbg !2484
  %266 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %265, i32 0, i32 0, !dbg !2484
  %267 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %266, i64 0, i64 0, !dbg !2483
  %268 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2485
  %269 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %268, i32 0, i32 0, !dbg !2485
  %270 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %269, i64 0, i64 0, !dbg !2486
  call void @fp2copy1271([4 x i32]* %267, [4 x i32]* %270), !dbg !2487
  %271 = mul i32 %.28, %253, !dbg !2488
  %272 = add i32 %271, %.2, !dbg !2489
  %273 = zext i32 %272 to i64, !dbg !2490
  %274 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %273, !dbg !2490
  %275 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %274, i64 0, i64 0, !dbg !2491
  %276 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %275, i32 0, i32 1, !dbg !2491
  %277 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %276, i64 0, i64 0, !dbg !2490
  %278 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2492
  %279 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %278, i32 0, i32 1, !dbg !2492
  %280 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %279, i64 0, i64 0, !dbg !2493
  call void @fp2copy1271([4 x i32]* %277, [4 x i32]* %280), !dbg !2494
  %281 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2495
  %282 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %281, i32 0, i32 2, !dbg !2495
  %283 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %282, i64 0, i64 0, !dbg !2496
  call void @fp2zero1271([4 x i32]* %283), !dbg !2497
  %284 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2498
  %285 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %284, i32 0, i32 2, !dbg !2498
  %286 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %285, i64 0, i64 0, !dbg !2499
  %287 = getelementptr inbounds [4 x i32], [4 x i32]* %286, i64 0, i64 0, !dbg !2499
  store i32 1, i32* %287, align 16, !dbg !2500
  call void @llvm.dbg.value(metadata i32 0, metadata !2501, metadata !DIExpression()), !dbg !2284
  br label %288, !dbg !2502

288:                                              ; preds = %292, %260
  %.03 = phi i32 [ 0, %260 ], [ %293, %292 ], !dbg !2504
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2501, metadata !DIExpression()), !dbg !2284
  %289 = icmp ult i32 %.03, 10, !dbg !2505
  br i1 %289, label %290, label %294, !dbg !2507

290:                                              ; preds = %288
  %291 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2508
  call void @eccdouble_ni(%struct.point_extproj* %291), !dbg !2509
  br label %292, !dbg !2509

292:                                              ; preds = %290
  %293 = add i32 %.03, 1, !dbg !2510
  call void @llvm.dbg.value(metadata i32 %293, metadata !2501, metadata !DIExpression()), !dbg !2284
  br label %288, !dbg !2511, !llvm.loop !2512

294:                                              ; preds = %288
  %295 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2514
  %296 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !2515
  call void @eccnorm(%struct.point_extproj* %295, %struct.point_affine* %296), !dbg !2516
  %297 = getelementptr inbounds [1 x %struct.point_affine], [1 x %struct.point_affine]* %5, i64 0, i64 0, !dbg !2517
  %298 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2518
  call void @point_setup(%struct.point_affine* %297, %struct.point_extproj* %298), !dbg !2519
  %299 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2520
  %300 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %299, i32 0, i32 0, !dbg !2520
  %301 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %300, i64 0, i64 0, !dbg !2521
  %302 = add i32 %.28, 1, !dbg !2522
  %303 = mul i32 %302, %253, !dbg !2523
  %304 = add i32 %303, %.2, !dbg !2524
  %305 = zext i32 %304 to i64, !dbg !2525
  %306 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %305, !dbg !2525
  %307 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %306, i64 0, i64 0, !dbg !2526
  %308 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %307, i32 0, i32 0, !dbg !2526
  %309 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %308, i64 0, i64 0, !dbg !2525
  call void @fp2copy1271([4 x i32]* %301, [4 x i32]* %309), !dbg !2527
  %310 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %7, i64 0, i64 0, !dbg !2528
  %311 = getelementptr inbounds %struct.point_extproj, %struct.point_extproj* %310, i32 0, i32 1, !dbg !2528
  %312 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %311, i64 0, i64 0, !dbg !2529
  %313 = add i32 %.28, 1, !dbg !2530
  %314 = mul i32 %313, %253, !dbg !2531
  %315 = add i32 %314, %.2, !dbg !2532
  %316 = zext i32 %315 to i64, !dbg !2533
  %317 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %316, !dbg !2533
  %318 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %317, i64 0, i64 0, !dbg !2534
  %319 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %318, i32 0, i32 1, !dbg !2534
  %320 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %319, i64 0, i64 0, !dbg !2533
  call void @fp2copy1271([4 x i32]* %312, [4 x i32]* %320), !dbg !2535
  br label %321, !dbg !2536

321:                                              ; preds = %294
  %322 = add i32 %.2, 1, !dbg !2537
  call void @llvm.dbg.value(metadata i32 %322, metadata !2352, metadata !DIExpression()), !dbg !2284
  br label %258, !dbg !2538, !llvm.loop !2539

323:                                              ; preds = %258
  br label %324, !dbg !2541

324:                                              ; preds = %323
  %325 = add i32 %.28, 1, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %325, metadata !2339, metadata !DIExpression()), !dbg !2284
  br label %254, !dbg !2543, !llvm.loop !2544

326:                                              ; preds = %254
  call void @llvm.dbg.value(metadata i32 0, metadata !2339, metadata !DIExpression()), !dbg !2284
  br label %327, !dbg !2546

327:                                              ; preds = %402, %326
  %.3 = phi i32 [ 0, %326 ], [ %403, %402 ], !dbg !2548
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2339, metadata !DIExpression()), !dbg !2284
  %328 = icmp ult i32 %.3, 80, !dbg !2549
  br i1 %328, label %329, label %404, !dbg !2551

329:                                              ; preds = %327
  %330 = zext i32 %.3 to i64, !dbg !2552
  %331 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %330, !dbg !2552
  %332 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %331, i64 0, i64 0, !dbg !2554
  %333 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %332, i32 0, i32 0, !dbg !2554
  %334 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %333, i64 0, i64 0, !dbg !2552
  %335 = zext i32 %.3 to i64, !dbg !2555
  %336 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %335, !dbg !2555
  %337 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %336, i64 0, i64 0, !dbg !2556
  %338 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %337, i32 0, i32 1, !dbg !2556
  %339 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %338, i64 0, i64 0, !dbg !2555
  %340 = zext i32 %.3 to i64, !dbg !2557
  %341 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %340, !dbg !2557
  %342 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %341, i64 0, i64 0, !dbg !2558
  %343 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %342, i32 0, i32 0, !dbg !2558
  %344 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %343, i64 0, i64 0, !dbg !2557
  call void @fp2mul1271([4 x i32]* %334, [4 x i32]* %339, [4 x i32]* %344), !dbg !2559
  %345 = getelementptr inbounds %struct.CurveStruct, %struct.CurveStruct* %3, i32 0, i32 4, !dbg !2560
  %346 = bitcast [4 x i64]* %345 to [4 x i32]*, !dbg !2561
  %347 = zext i32 %.3 to i64, !dbg !2562
  %348 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %347, !dbg !2562
  %349 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %348, i64 0, i64 0, !dbg !2563
  %350 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %349, i32 0, i32 0, !dbg !2563
  %351 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %350, i64 0, i64 0, !dbg !2562
  %352 = zext i32 %.3 to i64, !dbg !2564
  %353 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %352, !dbg !2564
  %354 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %353, i64 0, i64 0, !dbg !2565
  %355 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %354, i32 0, i32 2, !dbg !2565
  %356 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %355, i64 0, i64 0, !dbg !2564
  call void @fp2mul1271([4 x i32]* %346, [4 x i32]* %351, [4 x i32]* %356), !dbg !2566
  %357 = zext i32 %.3 to i64, !dbg !2567
  %358 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %357, !dbg !2567
  %359 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %358, i64 0, i64 0, !dbg !2568
  %360 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %359, i32 0, i32 2, !dbg !2568
  %361 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %360, i64 0, i64 0, !dbg !2567
  %362 = zext i32 %.3 to i64, !dbg !2569
  %363 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %362, !dbg !2569
  %364 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %363, i64 0, i64 0, !dbg !2570
  %365 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %364, i32 0, i32 2, !dbg !2570
  %366 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %365, i64 0, i64 0, !dbg !2569
  %367 = zext i32 %.3 to i64, !dbg !2571
  %368 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %367, !dbg !2571
  %369 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %368, i64 0, i64 0, !dbg !2572
  %370 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %369, i32 0, i32 2, !dbg !2572
  %371 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %370, i64 0, i64 0, !dbg !2571
  call void @fp2add1271([4 x i32]* %361, [4 x i32]* %366, [4 x i32]* %371), !dbg !2573
  %372 = zext i32 %.3 to i64, !dbg !2574
  %373 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %372, !dbg !2574
  %374 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %373, i64 0, i64 0, !dbg !2575
  %375 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %374, i32 0, i32 0, !dbg !2575
  %376 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %375, i64 0, i64 0, !dbg !2574
  %377 = zext i32 %.3 to i64, !dbg !2576
  %378 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %377, !dbg !2576
  %379 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %378, i64 0, i64 0, !dbg !2577
  %380 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %379, i32 0, i32 1, !dbg !2577
  %381 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %380, i64 0, i64 0, !dbg !2576
  %382 = zext i32 %.3 to i64, !dbg !2578
  %383 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %382, !dbg !2578
  %384 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %383, i64 0, i64 0, !dbg !2579
  %385 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %384, i32 0, i32 0, !dbg !2579
  %386 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %385, i64 0, i64 0, !dbg !2578
  call void @fp2add1271([4 x i32]* %376, [4 x i32]* %381, [4 x i32]* %386), !dbg !2580
  %387 = zext i32 %.3 to i64, !dbg !2581
  %388 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %387, !dbg !2581
  %389 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %388, i64 0, i64 0, !dbg !2582
  %390 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %389, i32 0, i32 1, !dbg !2582
  %391 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %390, i64 0, i64 0, !dbg !2581
  %392 = zext i32 %.3 to i64, !dbg !2583
  %393 = getelementptr inbounds [80 x [1 x %struct.point_extproj_precomp]], [80 x [1 x %struct.point_extproj_precomp]]* %11, i64 0, i64 %392, !dbg !2583
  %394 = getelementptr inbounds [1 x %struct.point_extproj_precomp], [1 x %struct.point_extproj_precomp]* %393, i64 0, i64 0, !dbg !2584
  %395 = getelementptr inbounds %struct.point_extproj_precomp, %struct.point_extproj_precomp* %394, i32 0, i32 0, !dbg !2584
  %396 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %395, i64 0, i64 0, !dbg !2583
  %397 = zext i32 %.3 to i64, !dbg !2585
  %398 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %1, i64 %397, !dbg !2585
  %399 = getelementptr inbounds [1 x %struct.point_precomp], [1 x %struct.point_precomp]* %398, i64 0, i64 0, !dbg !2586
  %400 = getelementptr inbounds %struct.point_precomp, %struct.point_precomp* %399, i32 0, i32 1, !dbg !2586
  %401 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %400, i64 0, i64 0, !dbg !2585
  call void @fp2sub1271([4 x i32]* %391, [4 x i32]* %396, [4 x i32]* %401), !dbg !2587
  br label %402, !dbg !2588

402:                                              ; preds = %329
  %403 = add i32 %.3, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %403, metadata !2339, metadata !DIExpression()), !dbg !2284
  br label %327, !dbg !2590, !llvm.loop !2591

404:                                              ; preds = %327
  br label %405, !dbg !2593

405:                                              ; preds = %404, %18
  %.0 = phi i1 [ false, %18 ], [ true, %404 ], !dbg !2284
  ret i1 %.0, !dbg !2594
}

declare dso_local void @cofactor_clearing(%struct.point_extproj*, %struct.CurveStruct*) #2

declare dso_local void @eccadd_core(%struct.point_extproj_precomp*, %struct.point_extproj_precomp*, %struct.point_extproj*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccdouble_wrapper(%struct.point_extproj* %0) #0 !dbg !2595 {
  call void @llvm.dbg.value(metadata %struct.point_extproj* %0, metadata !2596, metadata !DIExpression()), !dbg !2597
  %2 = call %struct.smack_value* (%struct.point_extproj*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.point_extproj*, ...)*)(%struct.point_extproj* %0), !dbg !2598
  call void @public_in(%struct.smack_value* %2), !dbg !2599
  call void @eccdouble(%struct.point_extproj* %0), !dbg !2600
  ret void, !dbg !2601
}

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @eccdouble_wrapper_t() #0 !dbg !2602 {
  %1 = alloca [1 x %struct.point_extproj], align 16
  call void @llvm.dbg.declare(metadata [1 x %struct.point_extproj]* %1, metadata !2605, metadata !DIExpression()), !dbg !2606
  %2 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %1, i64 0, i64 0, !dbg !2607
  call void (%struct.point_extproj*, ...) @getpt(%struct.point_extproj* sret(%struct.point_extproj) align 4 %2), !dbg !2608
  %3 = getelementptr inbounds [1 x %struct.point_extproj], [1 x %struct.point_extproj]* %1, i64 0, i64 0, !dbg !2609
  call void @eccdouble(%struct.point_extproj* %3), !dbg !2610
  ret void, !dbg !2611
}

declare dso_local void @getpt(%struct.point_extproj* sret(%struct.point_extproj) align 4, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @fp2div1271([4 x i32]* %0) #0 !dbg !2612 {
  call void @llvm.dbg.value(metadata [4 x i32]* %0, metadata !2613, metadata !DIExpression()), !dbg !2614
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 0, !dbg !2615
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0, !dbg !2615
  call void @fpdiv1271(i32* %3), !dbg !2616
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %0, i64 1, !dbg !2617
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0, !dbg !2617
  call void @fpdiv1271(i32* %5), !dbg !2618
  ret void, !dbg !2619
}

; Function Attrs: noinline nounwind uwtable
define internal void @fpdiv1271(i32* %0) #0 !dbg !2620 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2621, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 0, metadata !2623, metadata !DIExpression()), !dbg !2622
  %2 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !2624
  %3 = load i32, i32* %2, align 4, !dbg !2624
  %4 = and i32 %3, 1, !dbg !2625
  %5 = sub i32 0, %4, !dbg !2626
  call void @llvm.dbg.value(metadata i32 %5, metadata !2627, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 0, metadata !2628, metadata !DIExpression()), !dbg !2622
  br label %6, !dbg !2629

6:                                                ; preds = %22, %1
  %.01 = phi i32 [ 0, %1 ], [ %21, %22 ], !dbg !2622
  %.0 = phi i32 [ 0, %1 ], [ %23, %22 ], !dbg !2631
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2628, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2623, metadata !DIExpression()), !dbg !2622
  %7 = icmp ult i32 %.0, 3, !dbg !2632
  br i1 %7, label %8, label %24, !dbg !2634

8:                                                ; preds = %6
  %9 = add i32 %5, %.01, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %9, metadata !2638, metadata !DIExpression()), !dbg !2639
  %10 = zext i32 %.0 to i64, !dbg !2635
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !2635
  %12 = load i32, i32* %11, align 4, !dbg !2635
  %13 = add i32 %12, %9, !dbg !2635
  %14 = zext i32 %.0 to i64, !dbg !2635
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !2635
  store i32 %13, i32* %15, align 4, !dbg !2635
  %16 = call i32 @is_digit_lessthan_ct(i32 %9, i32 %.01), !dbg !2635
  %17 = zext i32 %.0 to i64, !dbg !2635
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !2635
  %19 = load i32, i32* %18, align 4, !dbg !2635
  %20 = call i32 @is_digit_lessthan_ct(i32 %19, i32 %9), !dbg !2635
  %21 = or i32 %16, %20, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %21, metadata !2623, metadata !DIExpression()), !dbg !2622
  br label %22, !dbg !2640

22:                                               ; preds = %8
  %23 = add i32 %.0, 1, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %23, metadata !2628, metadata !DIExpression()), !dbg !2622
  br label %6, !dbg !2642, !llvm.loop !2643

24:                                               ; preds = %6
  %25 = lshr i32 %5, 1, !dbg !2645
  %26 = add i32 %25, %.01, !dbg !2645
  call void @llvm.dbg.value(metadata i32 %26, metadata !2647, metadata !DIExpression()), !dbg !2648
  %27 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2645
  %28 = load i32, i32* %27, align 4, !dbg !2645
  %29 = add i32 %28, %26, !dbg !2645
  %30 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2645
  store i32 %29, i32* %30, align 4, !dbg !2645
  %31 = call i32 @is_digit_lessthan_ct(i32 %26, i32 %.01), !dbg !2645
  %32 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2645
  %33 = load i32, i32* %32, align 4, !dbg !2645
  %34 = call i32 @is_digit_lessthan_ct(i32 %33, i32 %26), !dbg !2645
  %35 = or i32 %31, %34, !dbg !2645
  call void @llvm.dbg.value(metadata i32 %35, metadata !2623, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 0, metadata !2628, metadata !DIExpression()), !dbg !2622
  br label %36, !dbg !2649

36:                                               ; preds = %51, %24
  %.1 = phi i32 [ 0, %24 ], [ %52, %51 ], !dbg !2651
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2628, metadata !DIExpression()), !dbg !2622
  %37 = icmp ult i32 %.1, 3, !dbg !2652
  br i1 %37, label %38, label %53, !dbg !2654

38:                                               ; preds = %36
  %39 = zext i32 %.1 to i64, !dbg !2655
  %40 = getelementptr inbounds i32, i32* %0, i64 %39, !dbg !2655
  %41 = load i32, i32* %40, align 4, !dbg !2655
  %42 = lshr i32 %41, 1, !dbg !2655
  %43 = add i32 %.1, 1, !dbg !2655
  %44 = zext i32 %43 to i64, !dbg !2655
  %45 = getelementptr inbounds i32, i32* %0, i64 %44, !dbg !2655
  %46 = load i32, i32* %45, align 4, !dbg !2655
  %47 = shl i32 %46, 31, !dbg !2655
  %48 = xor i32 %42, %47, !dbg !2655
  %49 = zext i32 %.1 to i64, !dbg !2655
  %50 = getelementptr inbounds i32, i32* %0, i64 %49, !dbg !2655
  store i32 %48, i32* %50, align 4, !dbg !2655
  br label %51, !dbg !2657

51:                                               ; preds = %38
  %52 = add i32 %.1, 1, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %52, metadata !2628, metadata !DIExpression()), !dbg !2622
  br label %36, !dbg !2659, !llvm.loop !2660

53:                                               ; preds = %36
  %54 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2662
  %55 = load i32, i32* %54, align 4, !dbg !2662
  %56 = lshr i32 %55, 1, !dbg !2663
  %57 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2664
  store i32 %56, i32* %57, align 4, !dbg !2665
  ret void, !dbg !2666
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mask_7fff", scope: !2, file: !41, line: 48, type: !42, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "eccdouble.c", directory: "/home/luwei/bech-back/fourq/eccdouble")
!4 = !{}
!5 = !{!6, !13, !12, !14, !15, !20, !23}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "digit_t", file: !7, line: 94, baseType: !8)
!7 = !DIFile(filename: "./../fourq/fourqlib/FourQ.h", directory: "/home/luwei/bech-back/fourq/eccdouble")
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
!41 = !DIFile(filename: "./../fourq/fourqlib/generic/fp.h", directory: "/home/luwei/bech-back/fourq/eccdouble")
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "Montgomery_rprime", scope: !2, file: !41, line: 318, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !18)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "Montgomery_Rprime", scope: !2, file: !41, line: 317, type: !45, isLocal: true, isDefinition: true)
!48 = !{i32 7, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!52 = distinct !DISubprogram(name: "table_lookup_1x8", scope: !53, file: !53, line: 52, type: !54, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!53 = !DIFile(filename: "./../fourq/fourqlib/generic/../table_lookup.h", directory: "/home/luwei/bech-back/fourq/eccdouble")
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56, !66, !12, !12}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_extproj_precomp_t", file: !7, line: 212, baseType: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 1024, elements: !36)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_extproj_precomp", file: !7, line: 211, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 211, size: 1024, elements: !61)
!61 = !{!62, !63, !64, !65}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "xy", scope: !60, file: !7, line: 211, baseType: !30, size: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "yx", scope: !60, file: !7, line: 211, baseType: !30, size: 256, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "z2", scope: !60, file: !7, line: 211, baseType: !30, size: 256, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !60, file: !7, line: 211, baseType: !30, size: 256, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!67 = !DILocalVariable(name: "table", arg: 1, scope: !52, file: !53, line: 52, type: !56)
!68 = !DILocation(line: 0, scope: !52)
!69 = !DILocalVariable(name: "P", arg: 2, scope: !52, file: !53, line: 52, type: !66)
!70 = !DILocalVariable(name: "digit", arg: 3, scope: !52, file: !53, line: 52, type: !12)
!71 = !DILocalVariable(name: "sign_mask", arg: 4, scope: !52, file: !53, line: 52, type: !12)
!72 = !DILocalVariable(name: "point", scope: !52, file: !53, line: 142, type: !57)
!73 = !DILocation(line: 142, column: 29, scope: !52)
!74 = !DILocalVariable(name: "temp_point", scope: !52, file: !53, line: 142, type: !57)
!75 = !DILocation(line: 142, column: 36, scope: !52)
!76 = !DILocation(line: 146, column: 5, scope: !52)
!77 = !DILocalVariable(name: "i", scope: !52, file: !53, line: 143, type: !12)
!78 = !DILocation(line: 148, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !52, file: !53, line: 148, column: 5)
!80 = !DILocation(line: 0, scope: !79)
!81 = !DILocation(line: 148, column: 19, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !53, line: 148, column: 5)
!83 = !DILocation(line: 148, column: 5, scope: !79)
!84 = !DILocation(line: 150, column: 14, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !53, line: 149, column: 5)
!86 = !DILocation(line: 152, column: 25, scope: !85)
!87 = !DILocation(line: 152, column: 61, scope: !85)
!88 = !DILocalVariable(name: "mask", scope: !52, file: !53, line: 144, type: !6)
!89 = !DILocation(line: 153, column: 9, scope: !85)
!90 = !DILocalVariable(name: "j", scope: !52, file: !53, line: 143, type: !12)
!91 = !DILocation(line: 155, column: 14, scope: !92)
!92 = distinct !DILexicalBlock(scope: !85, file: !53, line: 155, column: 9)
!93 = !DILocation(line: 0, scope: !92)
!94 = !DILocation(line: 155, column: 23, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !53, line: 155, column: 9)
!96 = !DILocation(line: 155, column: 9, scope: !92)
!97 = !DILocation(line: 156, column: 47, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !53, line: 155, column: 44)
!99 = !DILocation(line: 156, column: 40, scope: !98)
!100 = !DILocation(line: 156, column: 70, scope: !98)
!101 = !DILocation(line: 156, column: 58, scope: !98)
!102 = !DILocation(line: 156, column: 56, scope: !98)
!103 = !DILocation(line: 156, column: 37, scope: !98)
!104 = !DILocation(line: 156, column: 90, scope: !98)
!105 = !DILocation(line: 156, column: 83, scope: !98)
!106 = !DILocation(line: 156, column: 81, scope: !98)
!107 = !DILocation(line: 156, column: 20, scope: !98)
!108 = !DILocation(line: 156, column: 13, scope: !98)
!109 = !DILocation(line: 156, column: 29, scope: !98)
!110 = !DILocation(line: 157, column: 47, scope: !98)
!111 = !DILocation(line: 157, column: 40, scope: !98)
!112 = !DILocation(line: 157, column: 70, scope: !98)
!113 = !DILocation(line: 157, column: 58, scope: !98)
!114 = !DILocation(line: 157, column: 56, scope: !98)
!115 = !DILocation(line: 157, column: 37, scope: !98)
!116 = !DILocation(line: 157, column: 90, scope: !98)
!117 = !DILocation(line: 157, column: 83, scope: !98)
!118 = !DILocation(line: 157, column: 81, scope: !98)
!119 = !DILocation(line: 157, column: 20, scope: !98)
!120 = !DILocation(line: 157, column: 13, scope: !98)
!121 = !DILocation(line: 157, column: 29, scope: !98)
!122 = !DILocation(line: 158, column: 47, scope: !98)
!123 = !DILocation(line: 158, column: 40, scope: !98)
!124 = !DILocation(line: 158, column: 70, scope: !98)
!125 = !DILocation(line: 158, column: 58, scope: !98)
!126 = !DILocation(line: 158, column: 56, scope: !98)
!127 = !DILocation(line: 158, column: 37, scope: !98)
!128 = !DILocation(line: 158, column: 90, scope: !98)
!129 = !DILocation(line: 158, column: 83, scope: !98)
!130 = !DILocation(line: 158, column: 81, scope: !98)
!131 = !DILocation(line: 158, column: 20, scope: !98)
!132 = !DILocation(line: 158, column: 13, scope: !98)
!133 = !DILocation(line: 158, column: 29, scope: !98)
!134 = !DILocation(line: 159, column: 47, scope: !98)
!135 = !DILocation(line: 159, column: 40, scope: !98)
!136 = !DILocation(line: 159, column: 70, scope: !98)
!137 = !DILocation(line: 159, column: 58, scope: !98)
!138 = !DILocation(line: 159, column: 56, scope: !98)
!139 = !DILocation(line: 159, column: 37, scope: !98)
!140 = !DILocation(line: 159, column: 90, scope: !98)
!141 = !DILocation(line: 159, column: 83, scope: !98)
!142 = !DILocation(line: 159, column: 81, scope: !98)
!143 = !DILocation(line: 159, column: 20, scope: !98)
!144 = !DILocation(line: 159, column: 13, scope: !98)
!145 = !DILocation(line: 159, column: 29, scope: !98)
!146 = !DILocation(line: 160, column: 47, scope: !98)
!147 = !DILocation(line: 160, column: 40, scope: !98)
!148 = !DILocation(line: 160, column: 70, scope: !98)
!149 = !DILocation(line: 160, column: 58, scope: !98)
!150 = !DILocation(line: 160, column: 56, scope: !98)
!151 = !DILocation(line: 160, column: 37, scope: !98)
!152 = !DILocation(line: 160, column: 90, scope: !98)
!153 = !DILocation(line: 160, column: 83, scope: !98)
!154 = !DILocation(line: 160, column: 81, scope: !98)
!155 = !DILocation(line: 160, column: 20, scope: !98)
!156 = !DILocation(line: 160, column: 13, scope: !98)
!157 = !DILocation(line: 160, column: 29, scope: !98)
!158 = !DILocation(line: 161, column: 47, scope: !98)
!159 = !DILocation(line: 161, column: 40, scope: !98)
!160 = !DILocation(line: 161, column: 70, scope: !98)
!161 = !DILocation(line: 161, column: 58, scope: !98)
!162 = !DILocation(line: 161, column: 56, scope: !98)
!163 = !DILocation(line: 161, column: 37, scope: !98)
!164 = !DILocation(line: 161, column: 90, scope: !98)
!165 = !DILocation(line: 161, column: 83, scope: !98)
!166 = !DILocation(line: 161, column: 81, scope: !98)
!167 = !DILocation(line: 161, column: 20, scope: !98)
!168 = !DILocation(line: 161, column: 13, scope: !98)
!169 = !DILocation(line: 161, column: 29, scope: !98)
!170 = !DILocation(line: 162, column: 47, scope: !98)
!171 = !DILocation(line: 162, column: 40, scope: !98)
!172 = !DILocation(line: 162, column: 70, scope: !98)
!173 = !DILocation(line: 162, column: 58, scope: !98)
!174 = !DILocation(line: 162, column: 56, scope: !98)
!175 = !DILocation(line: 162, column: 37, scope: !98)
!176 = !DILocation(line: 162, column: 90, scope: !98)
!177 = !DILocation(line: 162, column: 83, scope: !98)
!178 = !DILocation(line: 162, column: 81, scope: !98)
!179 = !DILocation(line: 162, column: 20, scope: !98)
!180 = !DILocation(line: 162, column: 13, scope: !98)
!181 = !DILocation(line: 162, column: 29, scope: !98)
!182 = !DILocation(line: 163, column: 47, scope: !98)
!183 = !DILocation(line: 163, column: 40, scope: !98)
!184 = !DILocation(line: 163, column: 70, scope: !98)
!185 = !DILocation(line: 163, column: 58, scope: !98)
!186 = !DILocation(line: 163, column: 56, scope: !98)
!187 = !DILocation(line: 163, column: 37, scope: !98)
!188 = !DILocation(line: 163, column: 90, scope: !98)
!189 = !DILocation(line: 163, column: 83, scope: !98)
!190 = !DILocation(line: 163, column: 81, scope: !98)
!191 = !DILocation(line: 163, column: 20, scope: !98)
!192 = !DILocation(line: 163, column: 13, scope: !98)
!193 = !DILocation(line: 163, column: 29, scope: !98)
!194 = !DILocation(line: 164, column: 9, scope: !98)
!195 = !DILocation(line: 155, column: 40, scope: !95)
!196 = !DILocation(line: 155, column: 9, scope: !95)
!197 = distinct !{!197, !96, !198, !199}
!198 = !DILocation(line: 164, column: 9, scope: !92)
!199 = !{!"llvm.loop.mustprogress"}
!200 = !DILocation(line: 165, column: 5, scope: !85)
!201 = !DILocation(line: 148, column: 25, scope: !82)
!202 = !DILocation(line: 148, column: 5, scope: !82)
!203 = distinct !{!203, !83, !204, !199}
!204 = !DILocation(line: 165, column: 5, scope: !79)
!205 = !DILocation(line: 167, column: 24, scope: !52)
!206 = !DILocation(line: 167, column: 17, scope: !52)
!207 = !DILocation(line: 167, column: 40, scope: !52)
!208 = !DILocation(line: 167, column: 28, scope: !52)
!209 = !DILocation(line: 167, column: 5, scope: !52)
!210 = !DILocation(line: 168, column: 24, scope: !52)
!211 = !DILocation(line: 168, column: 17, scope: !52)
!212 = !DILocation(line: 168, column: 40, scope: !52)
!213 = !DILocation(line: 168, column: 28, scope: !52)
!214 = !DILocation(line: 168, column: 5, scope: !52)
!215 = !DILocation(line: 169, column: 24, scope: !52)
!216 = !DILocation(line: 169, column: 17, scope: !52)
!217 = !DILocation(line: 169, column: 40, scope: !52)
!218 = !DILocation(line: 169, column: 28, scope: !52)
!219 = !DILocation(line: 169, column: 5, scope: !52)
!220 = !DILocation(line: 170, column: 27, scope: !52)
!221 = !DILocation(line: 170, column: 15, scope: !52)
!222 = !DILocation(line: 170, column: 5, scope: !52)
!223 = !DILocation(line: 171, column: 27, scope: !52)
!224 = !DILocation(line: 171, column: 15, scope: !52)
!225 = !DILocation(line: 171, column: 5, scope: !52)
!226 = !DILocation(line: 172, column: 10, scope: !227)
!227 = distinct !DILexicalBlock(scope: !52, file: !53, line: 172, column: 5)
!228 = !DILocation(line: 0, scope: !227)
!229 = !DILocation(line: 172, column: 19, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !53, line: 172, column: 5)
!231 = !DILocation(line: 172, column: 5, scope: !227)
!232 = !DILocation(line: 173, column: 64, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !53, line: 172, column: 40)
!234 = !DILocation(line: 173, column: 57, scope: !233)
!235 = !DILocation(line: 173, column: 87, scope: !233)
!236 = !DILocation(line: 173, column: 75, scope: !233)
!237 = !DILocation(line: 173, column: 73, scope: !233)
!238 = !DILocation(line: 173, column: 54, scope: !233)
!239 = !DILocation(line: 173, column: 112, scope: !233)
!240 = !DILocation(line: 173, column: 100, scope: !233)
!241 = !DILocation(line: 173, column: 98, scope: !233)
!242 = !DILocation(line: 173, column: 16, scope: !233)
!243 = !DILocation(line: 173, column: 9, scope: !233)
!244 = !DILocation(line: 173, column: 25, scope: !233)
!245 = !DILocation(line: 174, column: 64, scope: !233)
!246 = !DILocation(line: 174, column: 57, scope: !233)
!247 = !DILocation(line: 174, column: 87, scope: !233)
!248 = !DILocation(line: 174, column: 75, scope: !233)
!249 = !DILocation(line: 174, column: 73, scope: !233)
!250 = !DILocation(line: 174, column: 54, scope: !233)
!251 = !DILocation(line: 174, column: 112, scope: !233)
!252 = !DILocation(line: 174, column: 100, scope: !233)
!253 = !DILocation(line: 174, column: 98, scope: !233)
!254 = !DILocation(line: 174, column: 16, scope: !233)
!255 = !DILocation(line: 174, column: 9, scope: !233)
!256 = !DILocation(line: 174, column: 25, scope: !233)
!257 = !DILocation(line: 175, column: 64, scope: !233)
!258 = !DILocation(line: 175, column: 57, scope: !233)
!259 = !DILocation(line: 175, column: 87, scope: !233)
!260 = !DILocation(line: 175, column: 75, scope: !233)
!261 = !DILocation(line: 175, column: 73, scope: !233)
!262 = !DILocation(line: 175, column: 54, scope: !233)
!263 = !DILocation(line: 175, column: 112, scope: !233)
!264 = !DILocation(line: 175, column: 100, scope: !233)
!265 = !DILocation(line: 175, column: 98, scope: !233)
!266 = !DILocation(line: 175, column: 16, scope: !233)
!267 = !DILocation(line: 175, column: 9, scope: !233)
!268 = !DILocation(line: 175, column: 25, scope: !233)
!269 = !DILocation(line: 176, column: 64, scope: !233)
!270 = !DILocation(line: 176, column: 57, scope: !233)
!271 = !DILocation(line: 176, column: 87, scope: !233)
!272 = !DILocation(line: 176, column: 75, scope: !233)
!273 = !DILocation(line: 176, column: 73, scope: !233)
!274 = !DILocation(line: 176, column: 54, scope: !233)
!275 = !DILocation(line: 176, column: 112, scope: !233)
!276 = !DILocation(line: 176, column: 100, scope: !233)
!277 = !DILocation(line: 176, column: 98, scope: !233)
!278 = !DILocation(line: 176, column: 16, scope: !233)
!279 = !DILocation(line: 176, column: 9, scope: !233)
!280 = !DILocation(line: 176, column: 25, scope: !233)
!281 = !DILocation(line: 177, column: 64, scope: !233)
!282 = !DILocation(line: 177, column: 57, scope: !233)
!283 = !DILocation(line: 177, column: 87, scope: !233)
!284 = !DILocation(line: 177, column: 75, scope: !233)
!285 = !DILocation(line: 177, column: 73, scope: !233)
!286 = !DILocation(line: 177, column: 54, scope: !233)
!287 = !DILocation(line: 177, column: 112, scope: !233)
!288 = !DILocation(line: 177, column: 100, scope: !233)
!289 = !DILocation(line: 177, column: 98, scope: !233)
!290 = !DILocation(line: 177, column: 16, scope: !233)
!291 = !DILocation(line: 177, column: 9, scope: !233)
!292 = !DILocation(line: 177, column: 25, scope: !233)
!293 = !DILocation(line: 178, column: 64, scope: !233)
!294 = !DILocation(line: 178, column: 57, scope: !233)
!295 = !DILocation(line: 178, column: 87, scope: !233)
!296 = !DILocation(line: 178, column: 75, scope: !233)
!297 = !DILocation(line: 178, column: 73, scope: !233)
!298 = !DILocation(line: 178, column: 54, scope: !233)
!299 = !DILocation(line: 178, column: 112, scope: !233)
!300 = !DILocation(line: 178, column: 100, scope: !233)
!301 = !DILocation(line: 178, column: 98, scope: !233)
!302 = !DILocation(line: 178, column: 16, scope: !233)
!303 = !DILocation(line: 178, column: 9, scope: !233)
!304 = !DILocation(line: 178, column: 25, scope: !233)
!305 = !DILocation(line: 179, column: 5, scope: !233)
!306 = !DILocation(line: 172, column: 36, scope: !230)
!307 = !DILocation(line: 172, column: 5, scope: !230)
!308 = distinct !{!308, !231, !309, !199}
!309 = !DILocation(line: 179, column: 5, scope: !227)
!310 = !DILocation(line: 180, column: 5, scope: !52)
!311 = !DILocation(line: 182, column: 1, scope: !52)
!312 = distinct !DISubprogram(name: "fp2copy1271", scope: !313, file: !313, line: 50, type: !314, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!313 = !DIFile(filename: "./../fourq/fourqlib/eccp2_core.c", directory: "/home/luwei/bech-back/fourq/eccdouble")
!314 = !DISubroutineType(types: !315)
!315 = !{null, !15, !15}
!316 = !DILocalVariable(name: "a", arg: 1, scope: !312, file: !313, line: 50, type: !15)
!317 = !DILocation(line: 0, scope: !312)
!318 = !DILocalVariable(name: "c", arg: 2, scope: !312, file: !313, line: 50, type: !15)
!319 = !DILocation(line: 52, column: 16, scope: !312)
!320 = !DILocation(line: 52, column: 22, scope: !312)
!321 = !DILocation(line: 52, column: 5, scope: !312)
!322 = !DILocation(line: 53, column: 16, scope: !312)
!323 = !DILocation(line: 53, column: 22, scope: !312)
!324 = !DILocation(line: 53, column: 5, scope: !312)
!325 = !DILocation(line: 54, column: 1, scope: !312)
!326 = distinct !DISubprogram(name: "is_digit_nonzero_ct", scope: !7, file: !7, line: 240, type: !327, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!327 = !DISubroutineType(types: !328)
!328 = !{!12, !6}
!329 = !DILocalVariable(name: "x", arg: 1, scope: !326, file: !7, line: 240, type: !6)
!330 = !DILocation(line: 0, scope: !326)
!331 = !DILocation(line: 242, column: 34, scope: !326)
!332 = !DILocation(line: 242, column: 30, scope: !326)
!333 = !DILocation(line: 242, column: 39, scope: !326)
!334 = !DILocation(line: 242, column: 5, scope: !326)
!335 = distinct !DISubprogram(name: "table_lookup_fixed_base", scope: !53, file: !53, line: 187, type: !336, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !23, !338, !12, !12}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!339 = !DILocalVariable(name: "table", arg: 1, scope: !335, file: !53, line: 187, type: !23)
!340 = !DILocation(line: 0, scope: !335)
!341 = !DILocalVariable(name: "P", arg: 2, scope: !335, file: !53, line: 187, type: !338)
!342 = !DILocalVariable(name: "digit", arg: 3, scope: !335, file: !53, line: 187, type: !12)
!343 = !DILocalVariable(name: "sign", arg: 4, scope: !335, file: !53, line: 187, type: !12)
!344 = !DILocalVariable(name: "point", scope: !335, file: !53, line: 269, type: !24)
!345 = !DILocation(line: 269, column: 21, scope: !335)
!346 = !DILocalVariable(name: "temp_point", scope: !335, file: !53, line: 269, type: !24)
!347 = !DILocation(line: 269, column: 28, scope: !335)
!348 = !DILocation(line: 273, column: 5, scope: !335)
!349 = !DILocalVariable(name: "i", scope: !335, file: !53, line: 270, type: !12)
!350 = !DILocation(line: 275, column: 10, scope: !351)
!351 = distinct !DILexicalBlock(scope: !335, file: !53, line: 275, column: 5)
!352 = !DILocation(line: 0, scope: !351)
!353 = !DILocation(line: 275, column: 19, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !53, line: 275, column: 5)
!355 = !DILocation(line: 275, column: 5, scope: !351)
!356 = !DILocation(line: 277, column: 14, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !53, line: 276, column: 5)
!358 = !DILocation(line: 279, column: 25, scope: !357)
!359 = !DILocation(line: 279, column: 61, scope: !357)
!360 = !DILocalVariable(name: "mask", scope: !335, file: !53, line: 271, type: !6)
!361 = !DILocation(line: 280, column: 9, scope: !357)
!362 = !DILocalVariable(name: "j", scope: !335, file: !53, line: 270, type: !12)
!363 = !DILocation(line: 282, column: 14, scope: !364)
!364 = distinct !DILexicalBlock(scope: !357, file: !53, line: 282, column: 9)
!365 = !DILocation(line: 0, scope: !364)
!366 = !DILocation(line: 282, column: 23, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !53, line: 282, column: 9)
!368 = !DILocation(line: 282, column: 9, scope: !364)
!369 = !DILocation(line: 283, column: 47, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !53, line: 282, column: 44)
!371 = !DILocation(line: 283, column: 40, scope: !370)
!372 = !DILocation(line: 283, column: 70, scope: !370)
!373 = !DILocation(line: 283, column: 58, scope: !370)
!374 = !DILocation(line: 283, column: 56, scope: !370)
!375 = !DILocation(line: 283, column: 37, scope: !370)
!376 = !DILocation(line: 283, column: 90, scope: !370)
!377 = !DILocation(line: 283, column: 83, scope: !370)
!378 = !DILocation(line: 283, column: 81, scope: !370)
!379 = !DILocation(line: 283, column: 20, scope: !370)
!380 = !DILocation(line: 283, column: 13, scope: !370)
!381 = !DILocation(line: 283, column: 29, scope: !370)
!382 = !DILocation(line: 284, column: 47, scope: !370)
!383 = !DILocation(line: 284, column: 40, scope: !370)
!384 = !DILocation(line: 284, column: 70, scope: !370)
!385 = !DILocation(line: 284, column: 58, scope: !370)
!386 = !DILocation(line: 284, column: 56, scope: !370)
!387 = !DILocation(line: 284, column: 37, scope: !370)
!388 = !DILocation(line: 284, column: 90, scope: !370)
!389 = !DILocation(line: 284, column: 83, scope: !370)
!390 = !DILocation(line: 284, column: 81, scope: !370)
!391 = !DILocation(line: 284, column: 20, scope: !370)
!392 = !DILocation(line: 284, column: 13, scope: !370)
!393 = !DILocation(line: 284, column: 29, scope: !370)
!394 = !DILocation(line: 285, column: 47, scope: !370)
!395 = !DILocation(line: 285, column: 40, scope: !370)
!396 = !DILocation(line: 285, column: 70, scope: !370)
!397 = !DILocation(line: 285, column: 58, scope: !370)
!398 = !DILocation(line: 285, column: 56, scope: !370)
!399 = !DILocation(line: 285, column: 37, scope: !370)
!400 = !DILocation(line: 285, column: 90, scope: !370)
!401 = !DILocation(line: 285, column: 83, scope: !370)
!402 = !DILocation(line: 285, column: 81, scope: !370)
!403 = !DILocation(line: 285, column: 20, scope: !370)
!404 = !DILocation(line: 285, column: 13, scope: !370)
!405 = !DILocation(line: 285, column: 29, scope: !370)
!406 = !DILocation(line: 286, column: 47, scope: !370)
!407 = !DILocation(line: 286, column: 40, scope: !370)
!408 = !DILocation(line: 286, column: 70, scope: !370)
!409 = !DILocation(line: 286, column: 58, scope: !370)
!410 = !DILocation(line: 286, column: 56, scope: !370)
!411 = !DILocation(line: 286, column: 37, scope: !370)
!412 = !DILocation(line: 286, column: 90, scope: !370)
!413 = !DILocation(line: 286, column: 83, scope: !370)
!414 = !DILocation(line: 286, column: 81, scope: !370)
!415 = !DILocation(line: 286, column: 20, scope: !370)
!416 = !DILocation(line: 286, column: 13, scope: !370)
!417 = !DILocation(line: 286, column: 29, scope: !370)
!418 = !DILocation(line: 287, column: 47, scope: !370)
!419 = !DILocation(line: 287, column: 40, scope: !370)
!420 = !DILocation(line: 287, column: 70, scope: !370)
!421 = !DILocation(line: 287, column: 58, scope: !370)
!422 = !DILocation(line: 287, column: 56, scope: !370)
!423 = !DILocation(line: 287, column: 37, scope: !370)
!424 = !DILocation(line: 287, column: 90, scope: !370)
!425 = !DILocation(line: 287, column: 83, scope: !370)
!426 = !DILocation(line: 287, column: 81, scope: !370)
!427 = !DILocation(line: 287, column: 20, scope: !370)
!428 = !DILocation(line: 287, column: 13, scope: !370)
!429 = !DILocation(line: 287, column: 29, scope: !370)
!430 = !DILocation(line: 288, column: 47, scope: !370)
!431 = !DILocation(line: 288, column: 40, scope: !370)
!432 = !DILocation(line: 288, column: 70, scope: !370)
!433 = !DILocation(line: 288, column: 58, scope: !370)
!434 = !DILocation(line: 288, column: 56, scope: !370)
!435 = !DILocation(line: 288, column: 37, scope: !370)
!436 = !DILocation(line: 288, column: 90, scope: !370)
!437 = !DILocation(line: 288, column: 83, scope: !370)
!438 = !DILocation(line: 288, column: 81, scope: !370)
!439 = !DILocation(line: 288, column: 20, scope: !370)
!440 = !DILocation(line: 288, column: 13, scope: !370)
!441 = !DILocation(line: 288, column: 29, scope: !370)
!442 = !DILocation(line: 289, column: 9, scope: !370)
!443 = !DILocation(line: 282, column: 40, scope: !367)
!444 = !DILocation(line: 282, column: 9, scope: !367)
!445 = distinct !{!445, !368, !446, !199}
!446 = !DILocation(line: 289, column: 9, scope: !364)
!447 = !DILocation(line: 290, column: 5, scope: !357)
!448 = !DILocation(line: 275, column: 41, scope: !354)
!449 = !DILocation(line: 275, column: 5, scope: !354)
!450 = distinct !{!450, !355, !451, !199}
!451 = !DILocation(line: 290, column: 5, scope: !351)
!452 = !DILocation(line: 292, column: 24, scope: !335)
!453 = !DILocation(line: 292, column: 17, scope: !335)
!454 = !DILocation(line: 292, column: 40, scope: !335)
!455 = !DILocation(line: 292, column: 28, scope: !335)
!456 = !DILocation(line: 292, column: 5, scope: !335)
!457 = !DILocation(line: 293, column: 24, scope: !335)
!458 = !DILocation(line: 293, column: 17, scope: !335)
!459 = !DILocation(line: 293, column: 40, scope: !335)
!460 = !DILocation(line: 293, column: 28, scope: !335)
!461 = !DILocation(line: 293, column: 5, scope: !335)
!462 = !DILocation(line: 294, column: 24, scope: !335)
!463 = !DILocation(line: 294, column: 17, scope: !335)
!464 = !DILocation(line: 294, column: 40, scope: !335)
!465 = !DILocation(line: 294, column: 28, scope: !335)
!466 = !DILocation(line: 294, column: 5, scope: !335)
!467 = !DILocation(line: 295, column: 27, scope: !335)
!468 = !DILocation(line: 295, column: 15, scope: !335)
!469 = !DILocation(line: 295, column: 5, scope: !335)
!470 = !DILocation(line: 296, column: 27, scope: !335)
!471 = !DILocation(line: 296, column: 15, scope: !335)
!472 = !DILocation(line: 296, column: 5, scope: !335)
!473 = !DILocation(line: 297, column: 10, scope: !474)
!474 = distinct !DILexicalBlock(scope: !335, file: !53, line: 297, column: 5)
!475 = !DILocation(line: 0, scope: !474)
!476 = !DILocation(line: 297, column: 19, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !53, line: 297, column: 5)
!478 = !DILocation(line: 297, column: 5, scope: !474)
!479 = !DILocation(line: 298, column: 59, scope: !480)
!480 = distinct !DILexicalBlock(scope: !477, file: !53, line: 297, column: 40)
!481 = !DILocation(line: 298, column: 52, scope: !480)
!482 = !DILocation(line: 298, column: 82, scope: !480)
!483 = !DILocation(line: 298, column: 70, scope: !480)
!484 = !DILocation(line: 298, column: 68, scope: !480)
!485 = !DILocation(line: 298, column: 49, scope: !480)
!486 = !DILocation(line: 298, column: 102, scope: !480)
!487 = !DILocation(line: 298, column: 95, scope: !480)
!488 = !DILocation(line: 298, column: 93, scope: !480)
!489 = !DILocation(line: 298, column: 16, scope: !480)
!490 = !DILocation(line: 298, column: 9, scope: !480)
!491 = !DILocation(line: 298, column: 25, scope: !480)
!492 = !DILocation(line: 299, column: 59, scope: !480)
!493 = !DILocation(line: 299, column: 52, scope: !480)
!494 = !DILocation(line: 299, column: 82, scope: !480)
!495 = !DILocation(line: 299, column: 70, scope: !480)
!496 = !DILocation(line: 299, column: 68, scope: !480)
!497 = !DILocation(line: 299, column: 49, scope: !480)
!498 = !DILocation(line: 299, column: 102, scope: !480)
!499 = !DILocation(line: 299, column: 95, scope: !480)
!500 = !DILocation(line: 299, column: 93, scope: !480)
!501 = !DILocation(line: 299, column: 16, scope: !480)
!502 = !DILocation(line: 299, column: 9, scope: !480)
!503 = !DILocation(line: 299, column: 25, scope: !480)
!504 = !DILocation(line: 300, column: 59, scope: !480)
!505 = !DILocation(line: 300, column: 52, scope: !480)
!506 = !DILocation(line: 300, column: 82, scope: !480)
!507 = !DILocation(line: 300, column: 70, scope: !480)
!508 = !DILocation(line: 300, column: 68, scope: !480)
!509 = !DILocation(line: 300, column: 49, scope: !480)
!510 = !DILocation(line: 300, column: 102, scope: !480)
!511 = !DILocation(line: 300, column: 95, scope: !480)
!512 = !DILocation(line: 300, column: 93, scope: !480)
!513 = !DILocation(line: 300, column: 16, scope: !480)
!514 = !DILocation(line: 300, column: 9, scope: !480)
!515 = !DILocation(line: 300, column: 25, scope: !480)
!516 = !DILocation(line: 301, column: 59, scope: !480)
!517 = !DILocation(line: 301, column: 52, scope: !480)
!518 = !DILocation(line: 301, column: 82, scope: !480)
!519 = !DILocation(line: 301, column: 70, scope: !480)
!520 = !DILocation(line: 301, column: 68, scope: !480)
!521 = !DILocation(line: 301, column: 49, scope: !480)
!522 = !DILocation(line: 301, column: 102, scope: !480)
!523 = !DILocation(line: 301, column: 95, scope: !480)
!524 = !DILocation(line: 301, column: 93, scope: !480)
!525 = !DILocation(line: 301, column: 16, scope: !480)
!526 = !DILocation(line: 301, column: 9, scope: !480)
!527 = !DILocation(line: 301, column: 25, scope: !480)
!528 = !DILocation(line: 302, column: 59, scope: !480)
!529 = !DILocation(line: 302, column: 52, scope: !480)
!530 = !DILocation(line: 302, column: 82, scope: !480)
!531 = !DILocation(line: 302, column: 70, scope: !480)
!532 = !DILocation(line: 302, column: 68, scope: !480)
!533 = !DILocation(line: 302, column: 49, scope: !480)
!534 = !DILocation(line: 302, column: 102, scope: !480)
!535 = !DILocation(line: 302, column: 95, scope: !480)
!536 = !DILocation(line: 302, column: 93, scope: !480)
!537 = !DILocation(line: 302, column: 16, scope: !480)
!538 = !DILocation(line: 302, column: 9, scope: !480)
!539 = !DILocation(line: 302, column: 25, scope: !480)
!540 = !DILocation(line: 303, column: 59, scope: !480)
!541 = !DILocation(line: 303, column: 52, scope: !480)
!542 = !DILocation(line: 303, column: 82, scope: !480)
!543 = !DILocation(line: 303, column: 70, scope: !480)
!544 = !DILocation(line: 303, column: 68, scope: !480)
!545 = !DILocation(line: 303, column: 49, scope: !480)
!546 = !DILocation(line: 303, column: 102, scope: !480)
!547 = !DILocation(line: 303, column: 95, scope: !480)
!548 = !DILocation(line: 303, column: 93, scope: !480)
!549 = !DILocation(line: 303, column: 16, scope: !480)
!550 = !DILocation(line: 303, column: 9, scope: !480)
!551 = !DILocation(line: 303, column: 25, scope: !480)
!552 = !DILocation(line: 304, column: 5, scope: !480)
!553 = !DILocation(line: 297, column: 36, scope: !477)
!554 = !DILocation(line: 297, column: 5, scope: !477)
!555 = distinct !{!555, !478, !556, !199}
!556 = !DILocation(line: 304, column: 5, scope: !474)
!557 = !DILocation(line: 305, column: 5, scope: !335)
!558 = !DILocation(line: 307, column: 1, scope: !335)
!559 = distinct !DISubprogram(name: "digit_x_digit", scope: !41, file: !41, line: 53, type: !560, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !6, !6, !14}
!562 = !DILocalVariable(name: "a", arg: 1, scope: !559, file: !41, line: 53, type: !6)
!563 = !DILocation(line: 0, scope: !559)
!564 = !DILocalVariable(name: "b", arg: 2, scope: !559, file: !41, line: 53, type: !6)
!565 = !DILocalVariable(name: "c", arg: 3, scope: !559, file: !41, line: 53, type: !14)
!566 = !DILocalVariable(name: "mask_low", scope: !559, file: !41, line: 57, type: !6)
!567 = !DILocalVariable(name: "mask_high", scope: !559, file: !41, line: 57, type: !6)
!568 = !DILocation(line: 59, column: 12, scope: !559)
!569 = !DILocalVariable(name: "al", scope: !559, file: !41, line: 55, type: !6)
!570 = !DILocation(line: 60, column: 12, scope: !559)
!571 = !DILocalVariable(name: "ah", scope: !559, file: !41, line: 55, type: !6)
!572 = !DILocation(line: 61, column: 12, scope: !559)
!573 = !DILocalVariable(name: "bl", scope: !559, file: !41, line: 55, type: !6)
!574 = !DILocation(line: 62, column: 12, scope: !559)
!575 = !DILocalVariable(name: "bh", scope: !559, file: !41, line: 55, type: !6)
!576 = !DILocation(line: 64, column: 14, scope: !559)
!577 = !DILocalVariable(name: "albl", scope: !559, file: !41, line: 56, type: !6)
!578 = !DILocation(line: 65, column: 14, scope: !559)
!579 = !DILocalVariable(name: "albh", scope: !559, file: !41, line: 56, type: !6)
!580 = !DILocation(line: 66, column: 14, scope: !559)
!581 = !DILocalVariable(name: "ahbl", scope: !559, file: !41, line: 56, type: !6)
!582 = !DILocation(line: 67, column: 14, scope: !559)
!583 = !DILocalVariable(name: "ahbh", scope: !559, file: !41, line: 56, type: !6)
!584 = !DILocation(line: 68, column: 17, scope: !559)
!585 = !DILocation(line: 68, column: 5, scope: !559)
!586 = !DILocation(line: 68, column: 10, scope: !559)
!587 = !DILocation(line: 70, column: 17, scope: !559)
!588 = !DILocalVariable(name: "res1", scope: !559, file: !41, line: 56, type: !6)
!589 = !DILocation(line: 71, column: 17, scope: !559)
!590 = !DILocalVariable(name: "res2", scope: !559, file: !41, line: 56, type: !6)
!591 = !DILocation(line: 72, column: 17, scope: !559)
!592 = !DILocalVariable(name: "res3", scope: !559, file: !41, line: 56, type: !6)
!593 = !DILocation(line: 73, column: 17, scope: !559)
!594 = !DILocation(line: 73, column: 24, scope: !559)
!595 = !DILocalVariable(name: "temp", scope: !559, file: !41, line: 55, type: !6)
!596 = !DILocation(line: 74, column: 18, scope: !559)
!597 = !DILocalVariable(name: "carry", scope: !559, file: !41, line: 56, type: !6)
!598 = !DILocation(line: 75, column: 18, scope: !559)
!599 = !DILocation(line: 75, column: 5, scope: !559)
!600 = !DILocation(line: 75, column: 10, scope: !559)
!601 = !DILocation(line: 77, column: 17, scope: !559)
!602 = !DILocation(line: 78, column: 17, scope: !559)
!603 = !DILocation(line: 79, column: 17, scope: !559)
!604 = !DILocation(line: 80, column: 17, scope: !559)
!605 = !DILocation(line: 80, column: 24, scope: !559)
!606 = !DILocation(line: 80, column: 31, scope: !559)
!607 = !DILocation(line: 81, column: 17, scope: !559)
!608 = !DILocation(line: 81, column: 5, scope: !559)
!609 = !DILocation(line: 81, column: 10, scope: !559)
!610 = !DILocation(line: 82, column: 18, scope: !559)
!611 = !DILocation(line: 83, column: 19, scope: !559)
!612 = !DILocation(line: 83, column: 32, scope: !559)
!613 = !DILocation(line: 83, column: 5, scope: !559)
!614 = !DILocation(line: 83, column: 10, scope: !559)
!615 = !DILocation(line: 84, column: 1, scope: !559)
!616 = distinct !DISubprogram(name: "fpmul1271", scope: !41, file: !41, line: 149, type: !617, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !14, !14, !14}
!619 = !DILocalVariable(name: "a", arg: 1, scope: !616, file: !41, line: 149, type: !14)
!620 = !DILocation(line: 0, scope: !616)
!621 = !DILocalVariable(name: "b", arg: 2, scope: !616, file: !41, line: 149, type: !14)
!622 = !DILocalVariable(name: "c", arg: 3, scope: !616, file: !41, line: 149, type: !14)
!623 = !DILocalVariable(name: "UV", scope: !616, file: !41, line: 152, type: !624)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !32)
!625 = !DILocation(line: 152, column: 19, scope: !616)
!626 = !DILocalVariable(name: "t", scope: !616, file: !41, line: 153, type: !627)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 8)
!630 = !DILocation(line: 153, column: 13, scope: !616)
!631 = !DILocalVariable(name: "carry", scope: !616, file: !41, line: 154, type: !12)
!632 = !DILocalVariable(name: "i", scope: !616, file: !41, line: 151, type: !12)
!633 = !DILocation(line: 156, column: 10, scope: !634)
!634 = distinct !DILexicalBlock(scope: !616, file: !41, line: 156, column: 5)
!635 = !DILocation(line: 0, scope: !634)
!636 = !DILocation(line: 156, column: 19, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !41, line: 156, column: 5)
!638 = !DILocation(line: 156, column: 5, scope: !634)
!639 = !DILocalVariable(name: "u", scope: !616, file: !41, line: 152, type: !6)
!640 = !DILocalVariable(name: "j", scope: !616, file: !41, line: 151, type: !12)
!641 = !DILocation(line: 158, column: 15, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !41, line: 158, column: 10)
!643 = distinct !DILexicalBlock(scope: !637, file: !41, line: 156, column: 40)
!644 = !DILocation(line: 0, scope: !642)
!645 = !DILocation(line: 0, scope: !643)
!646 = !DILocation(line: 158, column: 24, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !41, line: 158, column: 10)
!648 = !DILocation(line: 158, column: 10, scope: !642)
!649 = !DILocation(line: 159, column: 15, scope: !650)
!650 = distinct !DILexicalBlock(scope: !647, file: !41, line: 158, column: 45)
!651 = !DILocation(line: 160, column: 15, scope: !652)
!652 = distinct !DILexicalBlock(scope: !650, file: !41, line: 160, column: 15)
!653 = !DILocalVariable(name: "tempReg", scope: !652, file: !41, line: 160, type: !6)
!654 = !DILocation(line: 0, scope: !652)
!655 = !DILocalVariable(name: "v", scope: !616, file: !41, line: 152, type: !6)
!656 = !DILocation(line: 161, column: 19, scope: !650)
!657 = !DILocation(line: 161, column: 25, scope: !650)
!658 = !DILocation(line: 162, column: 15, scope: !659)
!659 = distinct !DILexicalBlock(scope: !650, file: !41, line: 162, column: 15)
!660 = !DILocalVariable(name: "tempReg", scope: !659, file: !41, line: 162, type: !6)
!661 = !DILocation(line: 0, scope: !659)
!662 = !DILocation(line: 163, column: 21, scope: !650)
!663 = !DILocation(line: 164, column: 18, scope: !650)
!664 = !DILocation(line: 164, column: 15, scope: !650)
!665 = !DILocation(line: 164, column: 22, scope: !650)
!666 = !DILocation(line: 165, column: 10, scope: !650)
!667 = !DILocation(line: 158, column: 41, scope: !647)
!668 = !DILocation(line: 158, column: 10, scope: !647)
!669 = distinct !{!669, !648, !670, !199}
!670 = !DILocation(line: 165, column: 10, scope: !642)
!671 = !DILocation(line: 166, column: 24, scope: !643)
!672 = !DILocation(line: 166, column: 10, scope: !643)
!673 = !DILocation(line: 166, column: 28, scope: !643)
!674 = !DILocation(line: 167, column: 5, scope: !643)
!675 = !DILocation(line: 156, column: 36, scope: !637)
!676 = !DILocation(line: 156, column: 5, scope: !637)
!677 = distinct !{!677, !638, !678, !199}
!678 = !DILocation(line: 167, column: 5, scope: !634)
!679 = !DILocation(line: 168, column: 17, scope: !616)
!680 = !DILocation(line: 168, column: 35, scope: !616)
!681 = !DILocalVariable(name: "bit_mask", scope: !616, file: !41, line: 152, type: !6)
!682 = !DILocation(line: 169, column: 5, scope: !616)
!683 = !DILocation(line: 169, column: 23, scope: !616)
!684 = !DILocation(line: 171, column: 10, scope: !685)
!685 = distinct !DILexicalBlock(scope: !616, file: !41, line: 171, column: 5)
!686 = !DILocation(line: 0, scope: !685)
!687 = !DILocation(line: 171, column: 19, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !41, line: 171, column: 5)
!689 = !DILocation(line: 171, column: 5, scope: !685)
!690 = !DILocation(line: 172, column: 31, scope: !691)
!691 = distinct !DILexicalBlock(scope: !688, file: !41, line: 171, column: 40)
!692 = !DILocation(line: 172, column: 17, scope: !691)
!693 = !DILocation(line: 172, column: 35, scope: !691)
!694 = !DILocalVariable(name: "temp", scope: !616, file: !41, line: 152, type: !6)
!695 = !DILocation(line: 173, column: 44, scope: !691)
!696 = !DILocation(line: 173, column: 30, scope: !691)
!697 = !DILocation(line: 173, column: 48, scope: !691)
!698 = !DILocation(line: 173, column: 54, scope: !691)
!699 = !DILocation(line: 173, column: 23, scope: !691)
!700 = !DILocation(line: 173, column: 9, scope: !691)
!701 = !DILocation(line: 173, column: 27, scope: !691)
!702 = !DILocation(line: 175, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !691, file: !41, line: 175, column: 9)
!704 = !DILocalVariable(name: "tempReg", scope: !703, file: !41, line: 175, type: !6)
!705 = !DILocation(line: 0, scope: !703)
!706 = !DILocation(line: 176, column: 5, scope: !691)
!707 = !DILocation(line: 171, column: 36, scope: !688)
!708 = !DILocation(line: 171, column: 5, scope: !688)
!709 = distinct !{!709, !689, !710, !199}
!710 = !DILocation(line: 176, column: 5, scope: !685)
!711 = !DILocation(line: 177, column: 28, scope: !616)
!712 = !DILocation(line: 177, column: 46, scope: !616)
!713 = !DILocation(line: 178, column: 5, scope: !616)
!714 = !DILocation(line: 178, column: 23, scope: !616)
!715 = !DILocation(line: 179, column: 10, scope: !716)
!716 = distinct !DILexicalBlock(scope: !616, file: !41, line: 179, column: 5)
!717 = !DILocation(line: 0, scope: !716)
!718 = !DILocation(line: 179, column: 19, scope: !719)
!719 = distinct !DILexicalBlock(scope: !716, file: !41, line: 179, column: 5)
!720 = !DILocation(line: 179, column: 5, scope: !716)
!721 = !DILocation(line: 180, column: 9, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !41, line: 180, column: 9)
!723 = distinct !DILexicalBlock(scope: !719, file: !41, line: 179, column: 40)
!724 = !DILocalVariable(name: "tempReg", scope: !722, file: !41, line: 180, type: !6)
!725 = !DILocation(line: 0, scope: !722)
!726 = !DILocation(line: 181, column: 5, scope: !723)
!727 = !DILocation(line: 179, column: 36, scope: !719)
!728 = !DILocation(line: 179, column: 5, scope: !719)
!729 = distinct !{!729, !720, !730, !199}
!730 = !DILocation(line: 181, column: 5, scope: !716)
!731 = !DILocation(line: 182, column: 1, scope: !616)
!732 = distinct !DISubprogram(name: "is_digit_lessthan_ct", scope: !7, file: !7, line: 250, type: !733, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!733 = !DISubroutineType(types: !734)
!734 = !{!12, !6, !6}
!735 = !DILocalVariable(name: "x", arg: 1, scope: !732, file: !7, line: 250, type: !6)
!736 = !DILocation(line: 0, scope: !732)
!737 = !DILocalVariable(name: "y", arg: 2, scope: !732, file: !7, line: 250, type: !6)
!738 = !DILocation(line: 252, column: 36, scope: !732)
!739 = !DILocation(line: 252, column: 47, scope: !732)
!740 = !DILocation(line: 252, column: 52, scope: !732)
!741 = !DILocation(line: 252, column: 41, scope: !732)
!742 = !DILocation(line: 252, column: 30, scope: !732)
!743 = !DILocation(line: 252, column: 59, scope: !732)
!744 = !DILocation(line: 252, column: 5, scope: !732)
!745 = distinct !DISubprogram(name: "fpsqr1271", scope: !41, file: !41, line: 185, type: !746, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !14, !14}
!748 = !DILocalVariable(name: "a", arg: 1, scope: !745, file: !41, line: 185, type: !14)
!749 = !DILocation(line: 0, scope: !745)
!750 = !DILocalVariable(name: "c", arg: 2, scope: !745, file: !41, line: 185, type: !14)
!751 = !DILocation(line: 188, column: 5, scope: !745)
!752 = !DILocation(line: 189, column: 1, scope: !745)
!753 = distinct !DISubprogram(name: "mod1271", scope: !41, file: !41, line: 192, type: !754, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !14}
!756 = !DILocalVariable(name: "a", arg: 1, scope: !753, file: !41, line: 192, type: !14)
!757 = !DILocation(line: 0, scope: !753)
!758 = !DILocalVariable(name: "borrow", scope: !753, file: !41, line: 196, type: !12)
!759 = !DILocalVariable(name: "i", scope: !753, file: !41, line: 195, type: !12)
!760 = !DILocation(line: 198, column: 10, scope: !761)
!761 = distinct !DILexicalBlock(scope: !753, file: !41, line: 198, column: 5)
!762 = !DILocation(line: 0, scope: !761)
!763 = !DILocation(line: 198, column: 19, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !41, line: 198, column: 5)
!765 = !DILocation(line: 198, column: 5, scope: !761)
!766 = !DILocation(line: 199, column: 9, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !41, line: 199, column: 9)
!768 = distinct !DILexicalBlock(scope: !764, file: !41, line: 198, column: 44)
!769 = !DILocalVariable(name: "tempReg", scope: !767, file: !41, line: 199, type: !6)
!770 = !DILocation(line: 0, scope: !767)
!771 = !DILocalVariable(name: "borrowReg", scope: !767, file: !41, line: 199, type: !12)
!772 = !DILocation(line: 200, column: 5, scope: !768)
!773 = !DILocation(line: 198, column: 40, scope: !764)
!774 = !DILocation(line: 198, column: 5, scope: !764)
!775 = distinct !{!775, !765, !776, !199}
!776 = !DILocation(line: 200, column: 5, scope: !761)
!777 = !DILocation(line: 201, column: 5, scope: !778)
!778 = distinct !DILexicalBlock(scope: !753, file: !41, line: 201, column: 5)
!779 = !DILocalVariable(name: "tempReg", scope: !778, file: !41, line: 201, type: !6)
!780 = !DILocation(line: 0, scope: !778)
!781 = !DILocalVariable(name: "borrowReg", scope: !778, file: !41, line: 201, type: !12)
!782 = !DILocation(line: 203, column: 14, scope: !753)
!783 = !DILocalVariable(name: "mask", scope: !753, file: !41, line: 194, type: !6)
!784 = !DILocation(line: 205, column: 10, scope: !785)
!785 = distinct !DILexicalBlock(scope: !753, file: !41, line: 205, column: 5)
!786 = !DILocation(line: 0, scope: !785)
!787 = !DILocation(line: 205, column: 19, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !41, line: 205, column: 5)
!789 = !DILocation(line: 205, column: 5, scope: !785)
!790 = !DILocation(line: 206, column: 9, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !41, line: 206, column: 9)
!792 = distinct !DILexicalBlock(scope: !788, file: !41, line: 205, column: 44)
!793 = !DILocalVariable(name: "tempReg", scope: !791, file: !41, line: 206, type: !6)
!794 = !DILocation(line: 0, scope: !791)
!795 = !DILocation(line: 207, column: 5, scope: !792)
!796 = !DILocation(line: 205, column: 40, scope: !788)
!797 = !DILocation(line: 205, column: 5, scope: !788)
!798 = distinct !{!798, !789, !799, !199}
!799 = !DILocation(line: 207, column: 5, scope: !785)
!800 = !DILocation(line: 208, column: 5, scope: !801)
!801 = distinct !DILexicalBlock(scope: !753, file: !41, line: 208, column: 5)
!802 = !DILocalVariable(name: "tempReg", scope: !801, file: !41, line: 208, type: !6)
!803 = !DILocation(line: 0, scope: !801)
!804 = !DILocation(line: 209, column: 1, scope: !753)
!805 = distinct !DISubprogram(name: "is_digit_zero_ct", scope: !7, file: !7, line: 245, type: !327, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!806 = !DILocalVariable(name: "x", arg: 1, scope: !805, file: !7, line: 245, type: !6)
!807 = !DILocation(line: 0, scope: !805)
!808 = !DILocation(line: 247, column: 31, scope: !805)
!809 = !DILocation(line: 247, column: 29, scope: !805)
!810 = !DILocation(line: 247, column: 5, scope: !805)
!811 = distinct !DISubprogram(name: "mp_mul", scope: !41, file: !41, line: 212, type: !812, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !14, !14, !14, !12}
!814 = !DILocalVariable(name: "a", arg: 1, scope: !811, file: !41, line: 212, type: !14)
!815 = !DILocation(line: 0, scope: !811)
!816 = !DILocalVariable(name: "b", arg: 2, scope: !811, file: !41, line: 212, type: !14)
!817 = !DILocalVariable(name: "c", arg: 3, scope: !811, file: !41, line: 212, type: !14)
!818 = !DILocalVariable(name: "nwords", arg: 4, scope: !811, file: !41, line: 212, type: !12)
!819 = !DILocalVariable(name: "UV", scope: !811, file: !41, line: 215, type: !624)
!820 = !DILocation(line: 215, column: 19, scope: !811)
!821 = !DILocalVariable(name: "carry", scope: !811, file: !41, line: 216, type: !12)
!822 = !DILocalVariable(name: "i", scope: !811, file: !41, line: 214, type: !12)
!823 = !DILocation(line: 218, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !811, file: !41, line: 218, column: 6)
!825 = !DILocation(line: 0, scope: !824)
!826 = !DILocation(line: 218, column: 24, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !41, line: 218, column: 6)
!828 = !DILocation(line: 218, column: 20, scope: !827)
!829 = !DILocation(line: 218, column: 6, scope: !824)
!830 = !DILocation(line: 218, column: 39, scope: !827)
!831 = !DILocation(line: 218, column: 44, scope: !827)
!832 = !DILocation(line: 218, column: 35, scope: !827)
!833 = !DILocation(line: 218, column: 6, scope: !827)
!834 = distinct !{!834, !829, !835, !199}
!835 = !DILocation(line: 218, column: 46, scope: !824)
!836 = !DILocation(line: 220, column: 11, scope: !837)
!837 = distinct !DILexicalBlock(scope: !811, file: !41, line: 220, column: 6)
!838 = !DILocation(line: 0, scope: !837)
!839 = !DILocation(line: 220, column: 20, scope: !840)
!840 = distinct !DILexicalBlock(scope: !837, file: !41, line: 220, column: 6)
!841 = !DILocation(line: 220, column: 6, scope: !837)
!842 = !DILocalVariable(name: "u", scope: !811, file: !41, line: 215, type: !6)
!843 = !DILocalVariable(name: "j", scope: !811, file: !41, line: 214, type: !12)
!844 = !DILocation(line: 222, column: 16, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !41, line: 222, column: 11)
!846 = distinct !DILexicalBlock(scope: !840, file: !41, line: 220, column: 35)
!847 = !DILocation(line: 0, scope: !845)
!848 = !DILocation(line: 0, scope: !846)
!849 = !DILocation(line: 222, column: 25, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !41, line: 222, column: 11)
!851 = !DILocation(line: 222, column: 11, scope: !845)
!852 = !DILocation(line: 223, column: 16, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !41, line: 222, column: 40)
!854 = !DILocation(line: 224, column: 16, scope: !855)
!855 = distinct !DILexicalBlock(scope: !853, file: !41, line: 224, column: 16)
!856 = !DILocalVariable(name: "tempReg", scope: !855, file: !41, line: 224, type: !6)
!857 = !DILocation(line: 0, scope: !855)
!858 = !DILocalVariable(name: "v", scope: !811, file: !41, line: 215, type: !6)
!859 = !DILocation(line: 225, column: 20, scope: !853)
!860 = !DILocation(line: 225, column: 26, scope: !853)
!861 = !DILocation(line: 226, column: 16, scope: !862)
!862 = distinct !DILexicalBlock(scope: !853, file: !41, line: 226, column: 16)
!863 = !DILocalVariable(name: "tempReg", scope: !862, file: !41, line: 226, type: !6)
!864 = !DILocation(line: 0, scope: !862)
!865 = !DILocation(line: 227, column: 22, scope: !853)
!866 = !DILocation(line: 228, column: 19, scope: !853)
!867 = !DILocation(line: 228, column: 16, scope: !853)
!868 = !DILocation(line: 228, column: 23, scope: !853)
!869 = !DILocation(line: 229, column: 11, scope: !853)
!870 = !DILocation(line: 222, column: 36, scope: !850)
!871 = !DILocation(line: 222, column: 11, scope: !850)
!872 = distinct !{!872, !851, !873, !199}
!873 = !DILocation(line: 229, column: 11, scope: !845)
!874 = !DILocation(line: 230, column: 19, scope: !846)
!875 = !DILocation(line: 230, column: 11, scope: !846)
!876 = !DILocation(line: 230, column: 23, scope: !846)
!877 = !DILocation(line: 231, column: 6, scope: !846)
!878 = !DILocation(line: 220, column: 31, scope: !840)
!879 = !DILocation(line: 220, column: 6, scope: !840)
!880 = distinct !{!880, !841, !881, !199}
!881 = !DILocation(line: 231, column: 6, scope: !837)
!882 = !DILocation(line: 232, column: 1, scope: !811)
!883 = distinct !DISubprogram(name: "mp_add", scope: !41, file: !41, line: 235, type: !884, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!884 = !DISubroutineType(types: !885)
!885 = !{!12, !14, !14, !14, !12}
!886 = !DILocalVariable(name: "a", arg: 1, scope: !883, file: !41, line: 235, type: !14)
!887 = !DILocation(line: 0, scope: !883)
!888 = !DILocalVariable(name: "b", arg: 2, scope: !883, file: !41, line: 235, type: !14)
!889 = !DILocalVariable(name: "c", arg: 3, scope: !883, file: !41, line: 235, type: !14)
!890 = !DILocalVariable(name: "nwords", arg: 4, scope: !883, file: !41, line: 235, type: !12)
!891 = !DILocalVariable(name: "carry", scope: !883, file: !41, line: 237, type: !12)
!892 = !DILocalVariable(name: "i", scope: !883, file: !41, line: 237, type: !12)
!893 = !DILocation(line: 239, column: 10, scope: !894)
!894 = distinct !DILexicalBlock(scope: !883, file: !41, line: 239, column: 5)
!895 = !DILocation(line: 0, scope: !894)
!896 = !DILocation(line: 239, column: 19, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !41, line: 239, column: 5)
!898 = !DILocation(line: 239, column: 5, scope: !894)
!899 = !DILocation(line: 240, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !41, line: 240, column: 9)
!901 = distinct !DILexicalBlock(scope: !897, file: !41, line: 239, column: 34)
!902 = !DILocalVariable(name: "tempReg", scope: !900, file: !41, line: 240, type: !6)
!903 = !DILocation(line: 0, scope: !900)
!904 = !DILocation(line: 241, column: 5, scope: !901)
!905 = !DILocation(line: 239, column: 30, scope: !897)
!906 = !DILocation(line: 239, column: 5, scope: !897)
!907 = distinct !{!907, !898, !908, !199}
!908 = !DILocation(line: 241, column: 5, scope: !894)
!909 = !DILocation(line: 243, column: 5, scope: !883)
!910 = distinct !DISubprogram(name: "fpinv1271", scope: !41, file: !41, line: 247, type: !754, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!911 = !DILocalVariable(name: "a", arg: 1, scope: !910, file: !41, line: 247, type: !14)
!912 = !DILocation(line: 0, scope: !910)
!913 = !DILocalVariable(name: "t1", scope: !910, file: !41, line: 251, type: !16)
!914 = !DILocation(line: 251, column: 12, scope: !910)
!915 = !DILocalVariable(name: "t2", scope: !910, file: !41, line: 251, type: !16)
!916 = !DILocation(line: 251, column: 16, scope: !910)
!917 = !DILocalVariable(name: "t3", scope: !910, file: !41, line: 251, type: !16)
!918 = !DILocation(line: 251, column: 20, scope: !910)
!919 = !DILocalVariable(name: "t4", scope: !910, file: !41, line: 251, type: !16)
!920 = !DILocation(line: 251, column: 24, scope: !910)
!921 = !DILocalVariable(name: "t5", scope: !910, file: !41, line: 251, type: !16)
!922 = !DILocation(line: 251, column: 28, scope: !910)
!923 = !DILocation(line: 253, column: 18, scope: !910)
!924 = !DILocation(line: 253, column: 5, scope: !910)
!925 = !DILocation(line: 254, column: 18, scope: !910)
!926 = !DILocation(line: 254, column: 22, scope: !910)
!927 = !DILocation(line: 254, column: 5, scope: !910)
!928 = !DILocation(line: 255, column: 15, scope: !910)
!929 = !DILocation(line: 255, column: 19, scope: !910)
!930 = !DILocation(line: 255, column: 5, scope: !910)
!931 = !DILocation(line: 256, column: 15, scope: !910)
!932 = !DILocation(line: 256, column: 19, scope: !910)
!933 = !DILocation(line: 256, column: 5, scope: !910)
!934 = !DILocation(line: 257, column: 15, scope: !910)
!935 = !DILocation(line: 257, column: 19, scope: !910)
!936 = !DILocation(line: 257, column: 23, scope: !910)
!937 = !DILocation(line: 257, column: 5, scope: !910)
!938 = !DILocation(line: 258, column: 15, scope: !910)
!939 = !DILocation(line: 258, column: 19, scope: !910)
!940 = !DILocation(line: 258, column: 5, scope: !910)
!941 = !DILocation(line: 259, column: 15, scope: !910)
!942 = !DILocation(line: 259, column: 19, scope: !910)
!943 = !DILocation(line: 259, column: 5, scope: !910)
!944 = !DILocation(line: 260, column: 15, scope: !910)
!945 = !DILocation(line: 260, column: 19, scope: !910)
!946 = !DILocation(line: 260, column: 5, scope: !910)
!947 = !DILocation(line: 261, column: 15, scope: !910)
!948 = !DILocation(line: 261, column: 19, scope: !910)
!949 = !DILocation(line: 261, column: 5, scope: !910)
!950 = !DILocation(line: 262, column: 15, scope: !910)
!951 = !DILocation(line: 262, column: 19, scope: !910)
!952 = !DILocation(line: 262, column: 23, scope: !910)
!953 = !DILocation(line: 262, column: 5, scope: !910)
!954 = !DILocation(line: 263, column: 15, scope: !910)
!955 = !DILocation(line: 263, column: 19, scope: !910)
!956 = !DILocation(line: 263, column: 5, scope: !910)
!957 = !DILocalVariable(name: "i", scope: !910, file: !41, line: 250, type: !13)
!958 = !DILocation(line: 264, column: 10, scope: !959)
!959 = distinct !DILexicalBlock(scope: !910, file: !41, line: 264, column: 5)
!960 = !DILocation(line: 0, scope: !959)
!961 = !DILocation(line: 264, column: 16, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !41, line: 264, column: 5)
!963 = !DILocation(line: 264, column: 5, scope: !959)
!964 = !DILocation(line: 264, column: 35, scope: !962)
!965 = !DILocation(line: 264, column: 39, scope: !962)
!966 = !DILocation(line: 264, column: 25, scope: !962)
!967 = !DILocation(line: 264, column: 21, scope: !962)
!968 = !DILocation(line: 264, column: 5, scope: !962)
!969 = distinct !{!969, !963, !970, !199}
!970 = !DILocation(line: 264, column: 41, scope: !959)
!971 = !DILocation(line: 265, column: 15, scope: !910)
!972 = !DILocation(line: 265, column: 19, scope: !910)
!973 = !DILocation(line: 265, column: 23, scope: !910)
!974 = !DILocation(line: 265, column: 5, scope: !910)
!975 = !DILocation(line: 266, column: 15, scope: !910)
!976 = !DILocation(line: 266, column: 19, scope: !910)
!977 = !DILocation(line: 266, column: 5, scope: !910)
!978 = !DILocation(line: 267, column: 10, scope: !979)
!979 = distinct !DILexicalBlock(scope: !910, file: !41, line: 267, column: 5)
!980 = !DILocation(line: 0, scope: !979)
!981 = !DILocation(line: 267, column: 16, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !41, line: 267, column: 5)
!983 = !DILocation(line: 267, column: 5, scope: !979)
!984 = !DILocation(line: 267, column: 36, scope: !982)
!985 = !DILocation(line: 267, column: 40, scope: !982)
!986 = !DILocation(line: 267, column: 26, scope: !982)
!987 = !DILocation(line: 267, column: 22, scope: !982)
!988 = !DILocation(line: 267, column: 5, scope: !982)
!989 = distinct !{!989, !983, !990, !199}
!990 = !DILocation(line: 267, column: 42, scope: !979)
!991 = !DILocation(line: 268, column: 15, scope: !910)
!992 = !DILocation(line: 268, column: 19, scope: !910)
!993 = !DILocation(line: 268, column: 23, scope: !910)
!994 = !DILocation(line: 268, column: 5, scope: !910)
!995 = !DILocation(line: 269, column: 15, scope: !910)
!996 = !DILocation(line: 269, column: 19, scope: !910)
!997 = !DILocation(line: 269, column: 5, scope: !910)
!998 = !DILocation(line: 270, column: 10, scope: !999)
!999 = distinct !DILexicalBlock(scope: !910, file: !41, line: 270, column: 5)
!1000 = !DILocation(line: 0, scope: !999)
!1001 = !DILocation(line: 270, column: 16, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !41, line: 270, column: 5)
!1003 = !DILocation(line: 270, column: 5, scope: !999)
!1004 = !DILocation(line: 270, column: 36, scope: !1002)
!1005 = !DILocation(line: 270, column: 40, scope: !1002)
!1006 = !DILocation(line: 270, column: 26, scope: !1002)
!1007 = !DILocation(line: 270, column: 22, scope: !1002)
!1008 = !DILocation(line: 270, column: 5, scope: !1002)
!1009 = distinct !{!1009, !1003, !1010, !199}
!1010 = !DILocation(line: 270, column: 42, scope: !999)
!1011 = !DILocation(line: 271, column: 15, scope: !910)
!1012 = !DILocation(line: 271, column: 19, scope: !910)
!1013 = !DILocation(line: 271, column: 23, scope: !910)
!1014 = !DILocation(line: 271, column: 5, scope: !910)
!1015 = !DILocation(line: 272, column: 10, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !910, file: !41, line: 272, column: 5)
!1017 = !DILocation(line: 0, scope: !1016)
!1018 = !DILocation(line: 272, column: 16, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !41, line: 272, column: 5)
!1020 = !DILocation(line: 272, column: 5, scope: !1016)
!1021 = !DILocation(line: 272, column: 36, scope: !1019)
!1022 = !DILocation(line: 272, column: 40, scope: !1019)
!1023 = !DILocation(line: 272, column: 26, scope: !1019)
!1024 = !DILocation(line: 272, column: 22, scope: !1019)
!1025 = !DILocation(line: 272, column: 5, scope: !1019)
!1026 = distinct !{!1026, !1020, !1027, !199}
!1027 = !DILocation(line: 272, column: 42, scope: !1016)
!1028 = !DILocation(line: 273, column: 15, scope: !910)
!1029 = !DILocation(line: 273, column: 19, scope: !910)
!1030 = !DILocation(line: 273, column: 23, scope: !910)
!1031 = !DILocation(line: 273, column: 5, scope: !910)
!1032 = !DILocation(line: 274, column: 10, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !910, file: !41, line: 274, column: 5)
!1034 = !DILocation(line: 0, scope: !1033)
!1035 = !DILocation(line: 274, column: 16, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1033, file: !41, line: 274, column: 5)
!1037 = !DILocation(line: 274, column: 5, scope: !1033)
!1038 = !DILocation(line: 274, column: 36, scope: !1036)
!1039 = !DILocation(line: 274, column: 40, scope: !1036)
!1040 = !DILocation(line: 274, column: 26, scope: !1036)
!1041 = !DILocation(line: 274, column: 22, scope: !1036)
!1042 = !DILocation(line: 274, column: 5, scope: !1036)
!1043 = distinct !{!1043, !1037, !1044, !199}
!1044 = !DILocation(line: 274, column: 42, scope: !1033)
!1045 = !DILocation(line: 275, column: 15, scope: !910)
!1046 = !DILocation(line: 275, column: 19, scope: !910)
!1047 = !DILocation(line: 275, column: 23, scope: !910)
!1048 = !DILocation(line: 275, column: 5, scope: !910)
!1049 = !DILocation(line: 276, column: 10, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !910, file: !41, line: 276, column: 5)
!1051 = !DILocation(line: 0, scope: !1050)
!1052 = !DILocation(line: 276, column: 16, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !41, line: 276, column: 5)
!1054 = !DILocation(line: 276, column: 5, scope: !1050)
!1055 = !DILocation(line: 276, column: 35, scope: !1053)
!1056 = !DILocation(line: 276, column: 39, scope: !1053)
!1057 = !DILocation(line: 276, column: 25, scope: !1053)
!1058 = !DILocation(line: 276, column: 21, scope: !1053)
!1059 = !DILocation(line: 276, column: 5, scope: !1053)
!1060 = distinct !{!1060, !1054, !1061, !199}
!1061 = !DILocation(line: 276, column: 41, scope: !1050)
!1062 = !DILocation(line: 277, column: 15, scope: !910)
!1063 = !DILocation(line: 277, column: 19, scope: !910)
!1064 = !DILocation(line: 277, column: 23, scope: !910)
!1065 = !DILocation(line: 277, column: 5, scope: !910)
!1066 = !DILocation(line: 278, column: 10, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !910, file: !41, line: 278, column: 5)
!1068 = !DILocation(line: 0, scope: !1067)
!1069 = !DILocation(line: 278, column: 16, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !41, line: 278, column: 5)
!1071 = !DILocation(line: 278, column: 5, scope: !1067)
!1072 = !DILocation(line: 278, column: 35, scope: !1070)
!1073 = !DILocation(line: 278, column: 39, scope: !1070)
!1074 = !DILocation(line: 278, column: 25, scope: !1070)
!1075 = !DILocation(line: 278, column: 21, scope: !1070)
!1076 = !DILocation(line: 278, column: 5, scope: !1070)
!1077 = distinct !{!1077, !1071, !1078, !199}
!1078 = !DILocation(line: 278, column: 41, scope: !1067)
!1079 = !DILocation(line: 279, column: 15, scope: !910)
!1080 = !DILocation(line: 279, column: 19, scope: !910)
!1081 = !DILocation(line: 279, column: 23, scope: !910)
!1082 = !DILocation(line: 279, column: 5, scope: !910)
!1083 = !DILocation(line: 280, column: 15, scope: !910)
!1084 = !DILocation(line: 280, column: 19, scope: !910)
!1085 = !DILocation(line: 280, column: 5, scope: !910)
!1086 = !DILocation(line: 281, column: 18, scope: !910)
!1087 = !DILocation(line: 281, column: 22, scope: !910)
!1088 = !DILocation(line: 281, column: 5, scope: !910)
!1089 = !DILocation(line: 282, column: 15, scope: !910)
!1090 = !DILocation(line: 282, column: 19, scope: !910)
!1091 = !DILocation(line: 282, column: 5, scope: !910)
!1092 = !DILocation(line: 283, column: 15, scope: !910)
!1093 = !DILocation(line: 283, column: 19, scope: !910)
!1094 = !DILocation(line: 283, column: 5, scope: !910)
!1095 = !DILocation(line: 284, column: 18, scope: !910)
!1096 = !DILocation(line: 284, column: 5, scope: !910)
!1097 = !DILocation(line: 285, column: 1, scope: !910)
!1098 = distinct !DISubprogram(name: "subtract", scope: !41, file: !41, line: 304, type: !884, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1099 = !DILocalVariable(name: "a", arg: 1, scope: !1098, file: !41, line: 304, type: !14)
!1100 = !DILocation(line: 0, scope: !1098)
!1101 = !DILocalVariable(name: "b", arg: 2, scope: !1098, file: !41, line: 304, type: !14)
!1102 = !DILocalVariable(name: "c", arg: 3, scope: !1098, file: !41, line: 304, type: !14)
!1103 = !DILocalVariable(name: "nwords", arg: 4, scope: !1098, file: !41, line: 304, type: !12)
!1104 = !DILocalVariable(name: "borrow", scope: !1098, file: !41, line: 307, type: !12)
!1105 = !DILocalVariable(name: "i", scope: !1098, file: !41, line: 306, type: !12)
!1106 = !DILocation(line: 309, column: 10, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1098, file: !41, line: 309, column: 5)
!1108 = !DILocation(line: 0, scope: !1107)
!1109 = !DILocation(line: 309, column: 19, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !41, line: 309, column: 5)
!1111 = !DILocation(line: 309, column: 5, scope: !1107)
!1112 = !DILocation(line: 310, column: 9, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !41, line: 310, column: 9)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !41, line: 309, column: 34)
!1115 = !DILocalVariable(name: "tempReg", scope: !1113, file: !41, line: 310, type: !6)
!1116 = !DILocation(line: 0, scope: !1113)
!1117 = !DILocalVariable(name: "borrowReg", scope: !1113, file: !41, line: 310, type: !12)
!1118 = !DILocation(line: 311, column: 5, scope: !1114)
!1119 = !DILocation(line: 309, column: 30, scope: !1110)
!1120 = !DILocation(line: 309, column: 5, scope: !1110)
!1121 = distinct !{!1121, !1111, !1122, !199}
!1122 = !DILocation(line: 311, column: 5, scope: !1107)
!1123 = !DILocation(line: 313, column: 5, scope: !1098)
!1124 = distinct !DISubprogram(name: "Montgomery_multiply", scope: !41, file: !41, line: 320, type: !1125, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !14, !14, !14, !14}
!1127 = !DILocalVariable(name: "ma", arg: 1, scope: !1124, file: !41, line: 320, type: !14)
!1128 = !DILocation(line: 0, scope: !1124)
!1129 = !DILocalVariable(name: "mb", arg: 2, scope: !1124, file: !41, line: 320, type: !14)
!1130 = !DILocalVariable(name: "mc", arg: 3, scope: !1124, file: !41, line: 320, type: !14)
!1131 = !DILocalVariable(name: "modulus", arg: 4, scope: !1124, file: !41, line: 320, type: !14)
!1132 = !DILocalVariable(name: "P", scope: !1124, file: !41, line: 325, type: !1133)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !1134)
!1134 = !{!1135}
!1135 = !DISubrange(count: 16)
!1136 = !DILocation(line: 325, column: 19, scope: !1124)
!1137 = !DILocalVariable(name: "Q", scope: !1124, file: !41, line: 325, type: !1133)
!1138 = !DILocation(line: 325, column: 38, scope: !1124)
!1139 = !DILocalVariable(name: "temp", scope: !1124, file: !41, line: 325, type: !1133)
!1140 = !DILocation(line: 325, column: 57, scope: !1124)
!1141 = !DILocalVariable(name: "cout", scope: !1124, file: !41, line: 326, type: !12)
!1142 = !DILocalVariable(name: "bout", scope: !1124, file: !41, line: 326, type: !12)
!1143 = !DILocation(line: 328, column: 22, scope: !1124)
!1144 = !DILocation(line: 328, column: 5, scope: !1124)
!1145 = !DILocation(line: 329, column: 14, scope: !1124)
!1146 = !DILocation(line: 329, column: 47, scope: !1124)
!1147 = !DILocation(line: 329, column: 5, scope: !1124)
!1148 = !DILocation(line: 330, column: 14, scope: !1124)
!1149 = !DILocation(line: 330, column: 26, scope: !1124)
!1150 = !DILocation(line: 330, column: 5, scope: !1124)
!1151 = !DILocation(line: 331, column: 16, scope: !1124)
!1152 = !DILocation(line: 331, column: 19, scope: !1124)
!1153 = !DILocation(line: 331, column: 25, scope: !1124)
!1154 = !DILocation(line: 331, column: 12, scope: !1124)
!1155 = !DILocalVariable(name: "i", scope: !1124, file: !41, line: 324, type: !12)
!1156 = !DILocation(line: 333, column: 10, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1124, file: !41, line: 333, column: 5)
!1158 = !DILocation(line: 0, scope: !1157)
!1159 = !DILocation(line: 333, column: 19, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !41, line: 333, column: 5)
!1161 = !DILocation(line: 333, column: 5, scope: !1157)
!1162 = !DILocation(line: 334, column: 35, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !41, line: 333, column: 40)
!1164 = !DILocation(line: 334, column: 17, scope: !1163)
!1165 = !DILocation(line: 334, column: 9, scope: !1163)
!1166 = !DILocation(line: 334, column: 15, scope: !1163)
!1167 = !DILocation(line: 335, column: 5, scope: !1163)
!1168 = !DILocation(line: 333, column: 36, scope: !1160)
!1169 = !DILocation(line: 333, column: 5, scope: !1160)
!1170 = distinct !{!1170, !1161, !1171, !199}
!1171 = !DILocation(line: 335, column: 5, scope: !1157)
!1172 = !DILocation(line: 338, column: 12, scope: !1124)
!1173 = !DILocation(line: 339, column: 26, scope: !1124)
!1174 = !DILocalVariable(name: "mask", scope: !1124, file: !41, line: 325, type: !6)
!1175 = !DILocation(line: 341, column: 10, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1124, file: !41, line: 341, column: 5)
!1177 = !DILocation(line: 0, scope: !1176)
!1178 = !DILocation(line: 341, column: 19, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !41, line: 341, column: 5)
!1180 = !DILocation(line: 341, column: 5, scope: !1176)
!1181 = !DILocation(line: 342, column: 20, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !41, line: 341, column: 40)
!1183 = !DILocation(line: 342, column: 31, scope: !1182)
!1184 = !DILocation(line: 342, column: 9, scope: !1182)
!1185 = !DILocation(line: 342, column: 17, scope: !1182)
!1186 = !DILocation(line: 343, column: 5, scope: !1182)
!1187 = !DILocation(line: 341, column: 36, scope: !1179)
!1188 = !DILocation(line: 341, column: 5, scope: !1179)
!1189 = distinct !{!1189, !1180, !1190, !199}
!1190 = !DILocation(line: 343, column: 5, scope: !1176)
!1191 = !DILocation(line: 344, column: 13, scope: !1124)
!1192 = !DILocation(line: 344, column: 5, scope: !1124)
!1193 = !DILocation(line: 346, column: 5, scope: !1124)
!1194 = distinct !DISubprogram(name: "multiply", scope: !41, file: !41, line: 290, type: !617, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1195 = !DILocalVariable(name: "a", arg: 1, scope: !1194, file: !41, line: 290, type: !14)
!1196 = !DILocation(line: 0, scope: !1194)
!1197 = !DILocalVariable(name: "b", arg: 2, scope: !1194, file: !41, line: 290, type: !14)
!1198 = !DILocalVariable(name: "c", arg: 3, scope: !1194, file: !41, line: 290, type: !14)
!1199 = !DILocation(line: 293, column: 5, scope: !1194)
!1200 = !DILocation(line: 294, column: 1, scope: !1194)
!1201 = distinct !DISubprogram(name: "add", scope: !41, file: !41, line: 297, type: !884, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1202 = !DILocalVariable(name: "a", arg: 1, scope: !1201, file: !41, line: 297, type: !14)
!1203 = !DILocation(line: 0, scope: !1201)
!1204 = !DILocalVariable(name: "b", arg: 2, scope: !1201, file: !41, line: 297, type: !14)
!1205 = !DILocalVariable(name: "c", arg: 3, scope: !1201, file: !41, line: 297, type: !14)
!1206 = !DILocalVariable(name: "nwords", arg: 4, scope: !1201, file: !41, line: 297, type: !12)
!1207 = !DILocation(line: 300, column: 12, scope: !1201)
!1208 = !DILocation(line: 300, column: 5, scope: !1201)
!1209 = distinct !DISubprogram(name: "modulo_order", scope: !41, file: !41, line: 350, type: !1210, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !14, !14, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCurveStruct", file: !7, line: 229, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 218, size: 1536, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1220, !1221, !1222, !1223, !1224, !1225}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !1214, file: !7, line: 220, baseType: !12, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rbits", scope: !1214, file: !7, line: 221, baseType: !12, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !1214, file: !7, line: 222, baseType: !1219, size: 128, offset: 64)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1214, file: !7, line: 223, baseType: !45, size: 256, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1214, file: !7, line: 224, baseType: !45, size: 256, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !1214, file: !7, line: 225, baseType: !45, size: 256, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "generator_x", scope: !1214, file: !7, line: 226, baseType: !45, size: 256, offset: 960)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "generator_y", scope: !1214, file: !7, line: 227, baseType: !45, size: 256, offset: 1216)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cofactor", scope: !1214, file: !7, line: 228, baseType: !12, size: 32, offset: 1472)
!1226 = !DILocalVariable(name: "a", arg: 1, scope: !1209, file: !41, line: 350, type: !14)
!1227 = !DILocation(line: 0, scope: !1209)
!1228 = !DILocalVariable(name: "c", arg: 2, scope: !1209, file: !41, line: 350, type: !14)
!1229 = !DILocalVariable(name: "curve", arg: 3, scope: !1209, file: !41, line: 350, type: !1212)
!1230 = !DILocalVariable(name: "ma", scope: !1209, file: !41, line: 354, type: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "digit256_t", file: !7, line: 203, baseType: !627)
!1232 = !DILocation(line: 354, column: 16, scope: !1209)
!1233 = !DILocalVariable(name: "one", scope: !1209, file: !41, line: 354, type: !1231)
!1234 = !DILocation(line: 354, column: 20, scope: !1209)
!1235 = !DILocation(line: 356, column: 5, scope: !1209)
!1236 = !DILocation(line: 356, column: 12, scope: !1209)
!1237 = !DILocation(line: 357, column: 58, scope: !1209)
!1238 = !DILocation(line: 357, column: 80, scope: !1209)
!1239 = !DILocation(line: 357, column: 62, scope: !1209)
!1240 = !DILocation(line: 357, column: 5, scope: !1209)
!1241 = !DILocation(line: 358, column: 25, scope: !1209)
!1242 = !DILocation(line: 358, column: 29, scope: !1209)
!1243 = !DILocation(line: 358, column: 55, scope: !1209)
!1244 = !DILocation(line: 358, column: 37, scope: !1209)
!1245 = !DILocation(line: 358, column: 5, scope: !1209)
!1246 = !DILocation(line: 359, column: 1, scope: !1209)
!1247 = distinct !DISubprogram(name: "conversion_to_odd", scope: !41, file: !41, line: 362, type: !1210, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1248 = !DILocalVariable(name: "k", arg: 1, scope: !1247, file: !41, line: 362, type: !14)
!1249 = !DILocation(line: 0, scope: !1247)
!1250 = !DILocalVariable(name: "k_odd", arg: 2, scope: !1247, file: !41, line: 362, type: !14)
!1251 = !DILocalVariable(name: "curve", arg: 3, scope: !1247, file: !41, line: 362, type: !1212)
!1252 = !DILocation(line: 365, column: 39, scope: !1247)
!1253 = !DILocation(line: 365, column: 32, scope: !1247)
!1254 = !DILocation(line: 365, column: 22, scope: !1247)
!1255 = !DILocalVariable(name: "order", scope: !1247, file: !41, line: 365, type: !14)
!1256 = !DILocalVariable(name: "carry", scope: !1247, file: !41, line: 366, type: !12)
!1257 = !DILocation(line: 368, column: 19, scope: !1247)
!1258 = !DILocation(line: 368, column: 24, scope: !1247)
!1259 = !DILocation(line: 368, column: 16, scope: !1247)
!1260 = !DILocation(line: 368, column: 12, scope: !1247)
!1261 = !DILocalVariable(name: "mask", scope: !1247, file: !41, line: 364, type: !6)
!1262 = !DILocalVariable(name: "i", scope: !1247, file: !41, line: 366, type: !12)
!1263 = !DILocation(line: 370, column: 10, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1247, file: !41, line: 370, column: 5)
!1265 = !DILocation(line: 0, scope: !1264)
!1266 = !DILocation(line: 370, column: 19, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !41, line: 370, column: 5)
!1268 = !DILocation(line: 370, column: 5, scope: !1264)
!1269 = !DILocation(line: 371, column: 9, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !41, line: 371, column: 9)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !41, line: 370, column: 40)
!1272 = !DILocalVariable(name: "tempReg", scope: !1270, file: !41, line: 371, type: !6)
!1273 = !DILocation(line: 0, scope: !1270)
!1274 = !DILocation(line: 372, column: 5, scope: !1271)
!1275 = !DILocation(line: 370, column: 36, scope: !1267)
!1276 = !DILocation(line: 370, column: 5, scope: !1267)
!1277 = distinct !{!1277, !1268, !1278, !199}
!1278 = !DILocation(line: 372, column: 5, scope: !1264)
!1279 = !DILocation(line: 373, column: 1, scope: !1247)
!1280 = distinct !DISubprogram(name: "fpcopy1271", scope: !41, file: !41, line: 87, type: !746, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1281 = !DILocalVariable(name: "a", arg: 1, scope: !1280, file: !41, line: 87, type: !14)
!1282 = !DILocation(line: 0, scope: !1280)
!1283 = !DILocalVariable(name: "c", arg: 2, scope: !1280, file: !41, line: 87, type: !14)
!1284 = !DILocalVariable(name: "i", scope: !1280, file: !41, line: 89, type: !12)
!1285 = !DILocation(line: 91, column: 10, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1280, file: !41, line: 91, column: 5)
!1287 = !DILocation(line: 0, scope: !1286)
!1288 = !DILocation(line: 91, column: 19, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1286, file: !41, line: 91, column: 5)
!1290 = !DILocation(line: 91, column: 5, scope: !1286)
!1291 = !DILocation(line: 92, column: 16, scope: !1289)
!1292 = !DILocation(line: 92, column: 9, scope: !1289)
!1293 = !DILocation(line: 92, column: 14, scope: !1289)
!1294 = !DILocation(line: 91, column: 36, scope: !1289)
!1295 = !DILocation(line: 91, column: 5, scope: !1289)
!1296 = distinct !{!1296, !1290, !1297, !199}
!1297 = !DILocation(line: 92, column: 19, scope: !1286)
!1298 = !DILocation(line: 93, column: 1, scope: !1280)
!1299 = distinct !DISubprogram(name: "fp2zero1271", scope: !313, file: !313, line: 57, type: !1300, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !15}
!1302 = !DILocalVariable(name: "a", arg: 1, scope: !1299, file: !313, line: 57, type: !15)
!1303 = !DILocation(line: 0, scope: !1299)
!1304 = !DILocation(line: 59, column: 16, scope: !1299)
!1305 = !DILocation(line: 59, column: 5, scope: !1299)
!1306 = !DILocation(line: 60, column: 16, scope: !1299)
!1307 = !DILocation(line: 60, column: 5, scope: !1299)
!1308 = !DILocation(line: 61, column: 1, scope: !1299)
!1309 = distinct !DISubprogram(name: "fpzero1271", scope: !41, file: !41, line: 96, type: !754, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1310 = !DILocalVariable(name: "a", arg: 1, scope: !1309, file: !41, line: 96, type: !14)
!1311 = !DILocation(line: 0, scope: !1309)
!1312 = !DILocalVariable(name: "i", scope: !1309, file: !41, line: 98, type: !12)
!1313 = !DILocation(line: 100, column: 10, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !41, line: 100, column: 5)
!1315 = !DILocation(line: 0, scope: !1314)
!1316 = !DILocation(line: 100, column: 19, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !41, line: 100, column: 5)
!1318 = !DILocation(line: 100, column: 5, scope: !1314)
!1319 = !DILocation(line: 101, column: 9, scope: !1317)
!1320 = !DILocation(line: 101, column: 14, scope: !1317)
!1321 = !DILocation(line: 100, column: 36, scope: !1317)
!1322 = !DILocation(line: 100, column: 5, scope: !1317)
!1323 = distinct !{!1323, !1318, !1324, !199}
!1324 = !DILocation(line: 101, column: 16, scope: !1314)
!1325 = !DILocation(line: 102, column: 1, scope: !1309)
!1326 = distinct !DISubprogram(name: "fp2neg1271", scope: !313, file: !313, line: 64, type: !1300, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1327 = !DILocalVariable(name: "a", arg: 1, scope: !1326, file: !313, line: 64, type: !15)
!1328 = !DILocation(line: 0, scope: !1326)
!1329 = !DILocation(line: 66, column: 15, scope: !1326)
!1330 = !DILocation(line: 66, column: 5, scope: !1326)
!1331 = !DILocation(line: 67, column: 15, scope: !1326)
!1332 = !DILocation(line: 67, column: 5, scope: !1326)
!1333 = !DILocation(line: 68, column: 1, scope: !1326)
!1334 = distinct !DISubprogram(name: "fp2sqr1271", scope: !313, file: !313, line: 71, type: !314, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1335 = !DILocalVariable(name: "a", arg: 1, scope: !1334, file: !313, line: 71, type: !15)
!1336 = !DILocation(line: 0, scope: !1334)
!1337 = !DILocalVariable(name: "c", arg: 2, scope: !1334, file: !313, line: 71, type: !15)
!1338 = !DILocalVariable(name: "t1", scope: !1334, file: !313, line: 77, type: !16)
!1339 = !DILocation(line: 77, column: 12, scope: !1334)
!1340 = !DILocalVariable(name: "t2", scope: !1334, file: !313, line: 77, type: !16)
!1341 = !DILocation(line: 77, column: 16, scope: !1334)
!1342 = !DILocalVariable(name: "t3", scope: !1334, file: !313, line: 77, type: !16)
!1343 = !DILocation(line: 77, column: 20, scope: !1334)
!1344 = !DILocation(line: 79, column: 15, scope: !1334)
!1345 = !DILocation(line: 79, column: 21, scope: !1334)
!1346 = !DILocation(line: 79, column: 27, scope: !1334)
!1347 = !DILocation(line: 79, column: 5, scope: !1334)
!1348 = !DILocation(line: 80, column: 15, scope: !1334)
!1349 = !DILocation(line: 80, column: 21, scope: !1334)
!1350 = !DILocation(line: 80, column: 27, scope: !1334)
!1351 = !DILocation(line: 80, column: 5, scope: !1334)
!1352 = !DILocation(line: 81, column: 15, scope: !1334)
!1353 = !DILocation(line: 81, column: 21, scope: !1334)
!1354 = !DILocation(line: 81, column: 27, scope: !1334)
!1355 = !DILocation(line: 81, column: 5, scope: !1334)
!1356 = !DILocation(line: 82, column: 15, scope: !1334)
!1357 = !DILocation(line: 82, column: 19, scope: !1334)
!1358 = !DILocation(line: 82, column: 23, scope: !1334)
!1359 = !DILocation(line: 82, column: 5, scope: !1334)
!1360 = !DILocation(line: 83, column: 15, scope: !1334)
!1361 = !DILocation(line: 83, column: 19, scope: !1334)
!1362 = !DILocation(line: 83, column: 23, scope: !1334)
!1363 = !DILocation(line: 83, column: 5, scope: !1334)
!1364 = !DILocation(line: 90, column: 1, scope: !1334)
!1365 = distinct !DISubprogram(name: "fpadd1271", scope: !41, file: !41, line: 105, type: !617, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1366 = !DILocalVariable(name: "a", arg: 1, scope: !1365, file: !41, line: 105, type: !14)
!1367 = !DILocation(line: 0, scope: !1365)
!1368 = !DILocalVariable(name: "b", arg: 2, scope: !1365, file: !41, line: 105, type: !14)
!1369 = !DILocalVariable(name: "c", arg: 3, scope: !1365, file: !41, line: 105, type: !14)
!1370 = !DILocalVariable(name: "carry", scope: !1365, file: !41, line: 108, type: !12)
!1371 = !DILocalVariable(name: "i", scope: !1365, file: !41, line: 107, type: !12)
!1372 = !DILocation(line: 110, column: 10, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1365, file: !41, line: 110, column: 5)
!1374 = !DILocation(line: 0, scope: !1373)
!1375 = !DILocation(line: 110, column: 19, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !41, line: 110, column: 5)
!1377 = !DILocation(line: 110, column: 5, scope: !1373)
!1378 = !DILocation(line: 111, column: 9, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !41, line: 111, column: 9)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !41, line: 110, column: 40)
!1381 = !DILocalVariable(name: "tempReg", scope: !1379, file: !41, line: 111, type: !6)
!1382 = !DILocation(line: 0, scope: !1379)
!1383 = !DILocation(line: 112, column: 5, scope: !1380)
!1384 = !DILocation(line: 110, column: 36, scope: !1376)
!1385 = !DILocation(line: 110, column: 5, scope: !1376)
!1386 = distinct !{!1386, !1377, !1387, !199}
!1387 = !DILocation(line: 112, column: 5, scope: !1373)
!1388 = !DILocation(line: 113, column: 28, scope: !1365)
!1389 = !DILocation(line: 113, column: 46, scope: !1365)
!1390 = !DILocation(line: 114, column: 5, scope: !1365)
!1391 = !DILocation(line: 114, column: 23, scope: !1365)
!1392 = !DILocation(line: 115, column: 10, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1365, file: !41, line: 115, column: 5)
!1394 = !DILocation(line: 0, scope: !1393)
!1395 = !DILocation(line: 115, column: 19, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !41, line: 115, column: 5)
!1397 = !DILocation(line: 115, column: 5, scope: !1393)
!1398 = !DILocation(line: 116, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !41, line: 116, column: 9)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !41, line: 115, column: 40)
!1401 = !DILocalVariable(name: "tempReg", scope: !1399, file: !41, line: 116, type: !6)
!1402 = !DILocation(line: 0, scope: !1399)
!1403 = !DILocation(line: 117, column: 5, scope: !1400)
!1404 = !DILocation(line: 115, column: 36, scope: !1396)
!1405 = !DILocation(line: 115, column: 5, scope: !1396)
!1406 = distinct !{!1406, !1397, !1407, !199}
!1407 = !DILocation(line: 117, column: 5, scope: !1393)
!1408 = !DILocation(line: 118, column: 1, scope: !1365)
!1409 = distinct !DISubprogram(name: "fpsub1271", scope: !41, file: !41, line: 121, type: !617, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1410 = !DILocalVariable(name: "a", arg: 1, scope: !1409, file: !41, line: 121, type: !14)
!1411 = !DILocation(line: 0, scope: !1409)
!1412 = !DILocalVariable(name: "b", arg: 2, scope: !1409, file: !41, line: 121, type: !14)
!1413 = !DILocalVariable(name: "c", arg: 3, scope: !1409, file: !41, line: 121, type: !14)
!1414 = !DILocalVariable(name: "borrow", scope: !1409, file: !41, line: 124, type: !12)
!1415 = !DILocalVariable(name: "i", scope: !1409, file: !41, line: 123, type: !12)
!1416 = !DILocation(line: 126, column: 10, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1409, file: !41, line: 126, column: 5)
!1418 = !DILocation(line: 0, scope: !1417)
!1419 = !DILocation(line: 126, column: 19, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !41, line: 126, column: 5)
!1421 = !DILocation(line: 126, column: 5, scope: !1417)
!1422 = !DILocation(line: 127, column: 9, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !41, line: 127, column: 9)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !41, line: 126, column: 40)
!1425 = !DILocalVariable(name: "tempReg", scope: !1423, file: !41, line: 127, type: !6)
!1426 = !DILocation(line: 0, scope: !1423)
!1427 = !DILocalVariable(name: "borrowReg", scope: !1423, file: !41, line: 127, type: !12)
!1428 = !DILocation(line: 128, column: 5, scope: !1424)
!1429 = !DILocation(line: 126, column: 36, scope: !1420)
!1430 = !DILocation(line: 126, column: 5, scope: !1420)
!1431 = distinct !{!1431, !1421, !1432, !199}
!1432 = !DILocation(line: 128, column: 5, scope: !1417)
!1433 = !DILocation(line: 129, column: 29, scope: !1409)
!1434 = !DILocation(line: 129, column: 47, scope: !1409)
!1435 = !DILocation(line: 130, column: 5, scope: !1409)
!1436 = !DILocation(line: 130, column: 23, scope: !1409)
!1437 = !DILocation(line: 131, column: 10, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1409, file: !41, line: 131, column: 5)
!1439 = !DILocation(line: 0, scope: !1438)
!1440 = !DILocation(line: 131, column: 19, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1438, file: !41, line: 131, column: 5)
!1442 = !DILocation(line: 131, column: 5, scope: !1438)
!1443 = !DILocation(line: 132, column: 9, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !41, line: 132, column: 9)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !41, line: 131, column: 40)
!1446 = !DILocalVariable(name: "tempReg", scope: !1444, file: !41, line: 132, type: !6)
!1447 = !DILocation(line: 0, scope: !1444)
!1448 = !DILocalVariable(name: "borrowReg", scope: !1444, file: !41, line: 132, type: !12)
!1449 = !DILocation(line: 133, column: 5, scope: !1445)
!1450 = !DILocation(line: 131, column: 36, scope: !1441)
!1451 = !DILocation(line: 131, column: 5, scope: !1441)
!1452 = distinct !{!1452, !1442, !1453, !199}
!1453 = !DILocation(line: 133, column: 5, scope: !1438)
!1454 = !DILocation(line: 134, column: 1, scope: !1409)
!1455 = distinct !DISubprogram(name: "fp2mul1271", scope: !313, file: !313, line: 93, type: !1456, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !15, !15, !15}
!1458 = !DILocalVariable(name: "a", arg: 1, scope: !1455, file: !313, line: 93, type: !15)
!1459 = !DILocation(line: 0, scope: !1455)
!1460 = !DILocalVariable(name: "b", arg: 2, scope: !1455, file: !313, line: 93, type: !15)
!1461 = !DILocalVariable(name: "c", arg: 3, scope: !1455, file: !313, line: 93, type: !15)
!1462 = !DILocalVariable(name: "t1", scope: !1455, file: !313, line: 99, type: !16)
!1463 = !DILocation(line: 99, column: 12, scope: !1455)
!1464 = !DILocalVariable(name: "t2", scope: !1455, file: !313, line: 99, type: !16)
!1465 = !DILocation(line: 99, column: 16, scope: !1455)
!1466 = !DILocalVariable(name: "t3", scope: !1455, file: !313, line: 99, type: !16)
!1467 = !DILocation(line: 99, column: 20, scope: !1455)
!1468 = !DILocalVariable(name: "t4", scope: !1455, file: !313, line: 99, type: !16)
!1469 = !DILocation(line: 99, column: 24, scope: !1455)
!1470 = !DILocation(line: 101, column: 15, scope: !1455)
!1471 = !DILocation(line: 101, column: 21, scope: !1455)
!1472 = !DILocation(line: 101, column: 27, scope: !1455)
!1473 = !DILocation(line: 101, column: 5, scope: !1455)
!1474 = !DILocation(line: 102, column: 15, scope: !1455)
!1475 = !DILocation(line: 102, column: 21, scope: !1455)
!1476 = !DILocation(line: 102, column: 27, scope: !1455)
!1477 = !DILocation(line: 102, column: 5, scope: !1455)
!1478 = !DILocation(line: 103, column: 15, scope: !1455)
!1479 = !DILocation(line: 103, column: 21, scope: !1455)
!1480 = !DILocation(line: 103, column: 27, scope: !1455)
!1481 = !DILocation(line: 103, column: 5, scope: !1455)
!1482 = !DILocation(line: 104, column: 15, scope: !1455)
!1483 = !DILocation(line: 104, column: 21, scope: !1455)
!1484 = !DILocation(line: 104, column: 27, scope: !1455)
!1485 = !DILocation(line: 104, column: 5, scope: !1455)
!1486 = !DILocation(line: 105, column: 15, scope: !1455)
!1487 = !DILocation(line: 105, column: 19, scope: !1455)
!1488 = !DILocation(line: 105, column: 23, scope: !1455)
!1489 = !DILocation(line: 105, column: 5, scope: !1455)
!1490 = !DILocation(line: 106, column: 15, scope: !1455)
!1491 = !DILocation(line: 106, column: 19, scope: !1455)
!1492 = !DILocation(line: 106, column: 23, scope: !1455)
!1493 = !DILocation(line: 106, column: 5, scope: !1455)
!1494 = !DILocation(line: 107, column: 15, scope: !1455)
!1495 = !DILocation(line: 107, column: 19, scope: !1455)
!1496 = !DILocation(line: 107, column: 23, scope: !1455)
!1497 = !DILocation(line: 107, column: 5, scope: !1455)
!1498 = !DILocation(line: 108, column: 15, scope: !1455)
!1499 = !DILocation(line: 108, column: 19, scope: !1455)
!1500 = !DILocation(line: 108, column: 23, scope: !1455)
!1501 = !DILocation(line: 108, column: 5, scope: !1455)
!1502 = !DILocation(line: 116, column: 1, scope: !1455)
!1503 = distinct !DISubprogram(name: "fp2inv1271", scope: !313, file: !313, line: 145, type: !1300, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1504 = !DILocalVariable(name: "a", arg: 1, scope: !1503, file: !313, line: 145, type: !15)
!1505 = !DILocation(line: 0, scope: !1503)
!1506 = !DILocalVariable(name: "t1", scope: !1503, file: !313, line: 147, type: !30)
!1507 = !DILocation(line: 147, column: 13, scope: !1503)
!1508 = !DILocation(line: 149, column: 15, scope: !1503)
!1509 = !DILocation(line: 149, column: 21, scope: !1503)
!1510 = !DILocation(line: 149, column: 5, scope: !1503)
!1511 = !DILocation(line: 150, column: 15, scope: !1503)
!1512 = !DILocation(line: 150, column: 21, scope: !1503)
!1513 = !DILocation(line: 150, column: 5, scope: !1503)
!1514 = !DILocation(line: 151, column: 15, scope: !1503)
!1515 = !DILocation(line: 151, column: 22, scope: !1503)
!1516 = !DILocation(line: 151, column: 29, scope: !1503)
!1517 = !DILocation(line: 151, column: 5, scope: !1503)
!1518 = !DILocation(line: 152, column: 15, scope: !1503)
!1519 = !DILocation(line: 152, column: 5, scope: !1503)
!1520 = !DILocation(line: 153, column: 15, scope: !1503)
!1521 = !DILocation(line: 153, column: 5, scope: !1503)
!1522 = !DILocation(line: 154, column: 15, scope: !1503)
!1523 = !DILocation(line: 154, column: 21, scope: !1503)
!1524 = !DILocation(line: 154, column: 28, scope: !1503)
!1525 = !DILocation(line: 154, column: 5, scope: !1503)
!1526 = !DILocation(line: 155, column: 15, scope: !1503)
!1527 = !DILocation(line: 155, column: 21, scope: !1503)
!1528 = !DILocation(line: 155, column: 28, scope: !1503)
!1529 = !DILocation(line: 155, column: 5, scope: !1503)
!1530 = !DILocation(line: 159, column: 1, scope: !1503)
!1531 = distinct !DISubprogram(name: "eccset", scope: !313, file: !313, line: 180, type: !1532, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !1534, !1212}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_affine", file: !7, line: 207, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 207, size: 512, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1536, file: !7, line: 207, baseType: !30, size: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1536, file: !7, line: 207, baseType: !30, size: 256, offset: 256)
!1540 = !DILocalVariable(name: "P", arg: 1, scope: !1531, file: !313, line: 180, type: !1534)
!1541 = !DILocation(line: 0, scope: !1531)
!1542 = !DILocalVariable(name: "curve", arg: 2, scope: !1531, file: !313, line: 180, type: !1212)
!1543 = !DILocation(line: 184, column: 34, scope: !1531)
!1544 = !DILocation(line: 184, column: 17, scope: !1531)
!1545 = !DILocation(line: 184, column: 50, scope: !1531)
!1546 = !DILocation(line: 184, column: 47, scope: !1531)
!1547 = !DILocation(line: 184, column: 5, scope: !1531)
!1548 = !DILocation(line: 185, column: 34, scope: !1531)
!1549 = !DILocation(line: 185, column: 17, scope: !1531)
!1550 = !DILocation(line: 185, column: 50, scope: !1531)
!1551 = !DILocation(line: 185, column: 47, scope: !1531)
!1552 = !DILocation(line: 185, column: 5, scope: !1531)
!1553 = !DILocation(line: 186, column: 1, scope: !1531)
!1554 = distinct !DISubprogram(name: "eccnorm", scope: !313, file: !313, line: 189, type: !1555, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !1557, !1534}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_extproj", file: !7, line: 209, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 209, size: 1280, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1559, file: !7, line: 209, baseType: !30, size: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1559, file: !7, line: 209, baseType: !30, size: 256, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !1559, file: !7, line: 209, baseType: !30, size: 256, offset: 512)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ta", scope: !1559, file: !7, line: 209, baseType: !30, size: 256, offset: 768)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tb", scope: !1559, file: !7, line: 209, baseType: !30, size: 256, offset: 1024)
!1566 = !DILocalVariable(name: "P", arg: 1, scope: !1554, file: !313, line: 189, type: !1557)
!1567 = !DILocation(line: 0, scope: !1554)
!1568 = !DILocalVariable(name: "Q", arg: 2, scope: !1554, file: !313, line: 189, type: !1534)
!1569 = !DILocation(line: 194, column: 19, scope: !1554)
!1570 = !DILocation(line: 194, column: 16, scope: !1554)
!1571 = !DILocation(line: 194, column: 5, scope: !1554)
!1572 = !DILocation(line: 195, column: 19, scope: !1554)
!1573 = !DILocation(line: 195, column: 16, scope: !1554)
!1574 = !DILocation(line: 195, column: 25, scope: !1554)
!1575 = !DILocation(line: 195, column: 22, scope: !1554)
!1576 = !DILocation(line: 195, column: 31, scope: !1554)
!1577 = !DILocation(line: 195, column: 28, scope: !1554)
!1578 = !DILocation(line: 195, column: 5, scope: !1554)
!1579 = !DILocation(line: 196, column: 19, scope: !1554)
!1580 = !DILocation(line: 196, column: 16, scope: !1554)
!1581 = !DILocation(line: 196, column: 25, scope: !1554)
!1582 = !DILocation(line: 196, column: 22, scope: !1554)
!1583 = !DILocation(line: 196, column: 31, scope: !1554)
!1584 = !DILocation(line: 196, column: 28, scope: !1554)
!1585 = !DILocation(line: 196, column: 5, scope: !1554)
!1586 = !DILocation(line: 197, column: 16, scope: !1554)
!1587 = !DILocation(line: 197, column: 13, scope: !1554)
!1588 = !DILocation(line: 197, column: 5, scope: !1554)
!1589 = !DILocation(line: 197, column: 34, scope: !1554)
!1590 = !DILocation(line: 197, column: 31, scope: !1554)
!1591 = !DILocation(line: 197, column: 23, scope: !1554)
!1592 = !DILocation(line: 198, column: 16, scope: !1554)
!1593 = !DILocation(line: 198, column: 13, scope: !1554)
!1594 = !DILocation(line: 198, column: 5, scope: !1554)
!1595 = !DILocation(line: 198, column: 34, scope: !1554)
!1596 = !DILocation(line: 198, column: 31, scope: !1554)
!1597 = !DILocation(line: 198, column: 23, scope: !1554)
!1598 = !DILocation(line: 199, column: 1, scope: !1554)
!1599 = distinct !DISubprogram(name: "R1_to_R2", scope: !313, file: !313, line: 202, type: !1600, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1557, !66, !1212}
!1602 = !DILocalVariable(name: "P", arg: 1, scope: !1599, file: !313, line: 202, type: !1557)
!1603 = !DILocation(line: 0, scope: !1599)
!1604 = !DILocalVariable(name: "Q", arg: 2, scope: !1599, file: !313, line: 202, type: !66)
!1605 = !DILocalVariable(name: "curve", arg: 3, scope: !1599, file: !313, line: 202, type: !1212)
!1606 = !DILocation(line: 207, column: 19, scope: !1599)
!1607 = !DILocation(line: 207, column: 16, scope: !1599)
!1608 = !DILocation(line: 207, column: 26, scope: !1599)
!1609 = !DILocation(line: 207, column: 23, scope: !1599)
!1610 = !DILocation(line: 207, column: 33, scope: !1599)
!1611 = !DILocation(line: 207, column: 30, scope: !1599)
!1612 = !DILocation(line: 207, column: 5, scope: !1599)
!1613 = !DILocation(line: 208, column: 19, scope: !1599)
!1614 = !DILocation(line: 208, column: 16, scope: !1599)
!1615 = !DILocation(line: 208, column: 25, scope: !1599)
!1616 = !DILocation(line: 208, column: 22, scope: !1599)
!1617 = !DILocation(line: 208, column: 31, scope: !1599)
!1618 = !DILocation(line: 208, column: 28, scope: !1599)
!1619 = !DILocation(line: 208, column: 5, scope: !1599)
!1620 = !DILocation(line: 209, column: 19, scope: !1599)
!1621 = !DILocation(line: 209, column: 16, scope: !1599)
!1622 = !DILocation(line: 209, column: 25, scope: !1599)
!1623 = !DILocation(line: 209, column: 22, scope: !1599)
!1624 = !DILocation(line: 209, column: 31, scope: !1599)
!1625 = !DILocation(line: 209, column: 28, scope: !1599)
!1626 = !DILocation(line: 209, column: 5, scope: !1599)
!1627 = !DILocation(line: 210, column: 19, scope: !1599)
!1628 = !DILocation(line: 210, column: 16, scope: !1599)
!1629 = !DILocation(line: 210, column: 26, scope: !1599)
!1630 = !DILocation(line: 210, column: 23, scope: !1599)
!1631 = !DILocation(line: 210, column: 33, scope: !1599)
!1632 = !DILocation(line: 210, column: 30, scope: !1599)
!1633 = !DILocation(line: 210, column: 5, scope: !1599)
!1634 = !DILocation(line: 211, column: 19, scope: !1599)
!1635 = !DILocation(line: 211, column: 16, scope: !1599)
!1636 = !DILocation(line: 211, column: 25, scope: !1599)
!1637 = !DILocation(line: 211, column: 22, scope: !1599)
!1638 = !DILocation(line: 211, column: 31, scope: !1599)
!1639 = !DILocation(line: 211, column: 28, scope: !1599)
!1640 = !DILocation(line: 211, column: 5, scope: !1599)
!1641 = !DILocation(line: 212, column: 19, scope: !1599)
!1642 = !DILocation(line: 212, column: 16, scope: !1599)
!1643 = !DILocation(line: 212, column: 40, scope: !1599)
!1644 = !DILocation(line: 212, column: 23, scope: !1599)
!1645 = !DILocation(line: 212, column: 46, scope: !1599)
!1646 = !DILocation(line: 212, column: 43, scope: !1599)
!1647 = !DILocation(line: 212, column: 5, scope: !1599)
!1648 = !DILocation(line: 213, column: 1, scope: !1599)
!1649 = distinct !DISubprogram(name: "R1_to_R2_ni", scope: !313, file: !313, line: 216, type: !1600, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1650 = !DILocalVariable(name: "P", arg: 1, scope: !1649, file: !313, line: 216, type: !1557)
!1651 = !DILocation(line: 0, scope: !1649)
!1652 = !DILocalVariable(name: "Q", arg: 2, scope: !1649, file: !313, line: 216, type: !66)
!1653 = !DILocalVariable(name: "curve", arg: 3, scope: !1649, file: !313, line: 216, type: !1212)
!1654 = !DILocation(line: 218, column: 5, scope: !1649)
!1655 = !DILocation(line: 219, column: 1, scope: !1649)
!1656 = distinct !DISubprogram(name: "R2_to_R4", scope: !313, file: !313, line: 234, type: !1657, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !66, !1557}
!1659 = !DILocalVariable(name: "P", arg: 1, scope: !1656, file: !313, line: 234, type: !66)
!1660 = !DILocation(line: 0, scope: !1656)
!1661 = !DILocalVariable(name: "Q", arg: 2, scope: !1656, file: !313, line: 234, type: !1557)
!1662 = !DILocation(line: 239, column: 19, scope: !1656)
!1663 = !DILocation(line: 239, column: 16, scope: !1656)
!1664 = !DILocation(line: 239, column: 26, scope: !1656)
!1665 = !DILocation(line: 239, column: 23, scope: !1656)
!1666 = !DILocation(line: 239, column: 33, scope: !1656)
!1667 = !DILocation(line: 239, column: 30, scope: !1656)
!1668 = !DILocation(line: 239, column: 5, scope: !1656)
!1669 = !DILocation(line: 240, column: 19, scope: !1656)
!1670 = !DILocation(line: 240, column: 16, scope: !1656)
!1671 = !DILocation(line: 240, column: 26, scope: !1656)
!1672 = !DILocation(line: 240, column: 23, scope: !1656)
!1673 = !DILocation(line: 240, column: 33, scope: !1656)
!1674 = !DILocation(line: 240, column: 30, scope: !1656)
!1675 = !DILocation(line: 240, column: 5, scope: !1656)
!1676 = !DILocation(line: 241, column: 20, scope: !1656)
!1677 = !DILocation(line: 241, column: 17, scope: !1656)
!1678 = !DILocation(line: 241, column: 27, scope: !1656)
!1679 = !DILocation(line: 241, column: 24, scope: !1656)
!1680 = !DILocation(line: 241, column: 5, scope: !1656)
!1681 = !DILocation(line: 242, column: 1, scope: !1656)
!1682 = distinct !DISubprogram(name: "eccadd_ni", scope: !313, file: !313, line: 314, type: !1657, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1683 = !DILocalVariable(name: "Q", arg: 1, scope: !1682, file: !313, line: 314, type: !66)
!1684 = !DILocation(line: 0, scope: !1682)
!1685 = !DILocalVariable(name: "P", arg: 2, scope: !1682, file: !313, line: 314, type: !1557)
!1686 = !DILocation(line: 316, column: 5, scope: !1682)
!1687 = !DILocation(line: 317, column: 1, scope: !1682)
!1688 = distinct !DISubprogram(name: "eccdouble_ni", scope: !313, file: !313, line: 320, type: !1689, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1557}
!1691 = !DILocalVariable(name: "P", arg: 1, scope: !1688, file: !313, line: 320, type: !1557)
!1692 = !DILocation(line: 0, scope: !1688)
!1693 = !DILocation(line: 322, column: 5, scope: !1688)
!1694 = !DILocation(line: 323, column: 1, scope: !1688)
!1695 = distinct !DISubprogram(name: "point_setup_ni", scope: !313, file: !313, line: 344, type: !1696, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !1534, !1557}
!1698 = !DILocalVariable(name: "P", arg: 1, scope: !1695, file: !313, line: 344, type: !1534)
!1699 = !DILocation(line: 0, scope: !1695)
!1700 = !DILocalVariable(name: "Q", arg: 2, scope: !1695, file: !313, line: 344, type: !1557)
!1701 = !DILocation(line: 346, column: 5, scope: !1695)
!1702 = !DILocation(line: 347, column: 1, scope: !1695)
!1703 = distinct !DISubprogram(name: "ecc_point_validate", scope: !313, file: !313, line: 350, type: !1704, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!1706, !1557, !1212}
!1706 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1707 = !DILocalVariable(name: "P", arg: 1, scope: !1703, file: !313, line: 350, type: !1557)
!1708 = !DILocation(line: 0, scope: !1703)
!1709 = !DILocalVariable(name: "curve", arg: 2, scope: !1703, file: !313, line: 350, type: !1212)
!1710 = !DILocalVariable(name: "t1", scope: !1703, file: !313, line: 355, type: !30)
!1711 = !DILocation(line: 355, column: 13, scope: !1703)
!1712 = !DILocalVariable(name: "t2", scope: !1703, file: !313, line: 355, type: !30)
!1713 = !DILocation(line: 355, column: 17, scope: !1703)
!1714 = !DILocalVariable(name: "t3", scope: !1703, file: !313, line: 355, type: !30)
!1715 = !DILocation(line: 355, column: 21, scope: !1703)
!1716 = !DILocation(line: 357, column: 19, scope: !1703)
!1717 = !DILocation(line: 357, column: 16, scope: !1703)
!1718 = !DILocation(line: 357, column: 22, scope: !1703)
!1719 = !DILocation(line: 357, column: 5, scope: !1703)
!1720 = !DILocation(line: 358, column: 19, scope: !1703)
!1721 = !DILocation(line: 358, column: 16, scope: !1703)
!1722 = !DILocation(line: 358, column: 22, scope: !1703)
!1723 = !DILocation(line: 358, column: 5, scope: !1703)
!1724 = !DILocation(line: 359, column: 16, scope: !1703)
!1725 = !DILocation(line: 359, column: 20, scope: !1703)
!1726 = !DILocation(line: 359, column: 24, scope: !1703)
!1727 = !DILocation(line: 359, column: 5, scope: !1703)
!1728 = !DILocation(line: 360, column: 16, scope: !1703)
!1729 = !DILocation(line: 360, column: 20, scope: !1703)
!1730 = !DILocation(line: 360, column: 24, scope: !1703)
!1731 = !DILocation(line: 360, column: 5, scope: !1703)
!1732 = !DILocation(line: 361, column: 33, scope: !1703)
!1733 = !DILocation(line: 361, column: 16, scope: !1703)
!1734 = !DILocation(line: 361, column: 36, scope: !1703)
!1735 = !DILocation(line: 361, column: 40, scope: !1703)
!1736 = !DILocation(line: 361, column: 5, scope: !1703)
!1737 = !DILocation(line: 362, column: 17, scope: !1703)
!1738 = !DILocation(line: 362, column: 5, scope: !1703)
!1739 = !DILocation(line: 362, column: 23, scope: !1703)
!1740 = !DILocation(line: 362, column: 32, scope: !1703)
!1741 = !DILocation(line: 363, column: 16, scope: !1703)
!1742 = !DILocation(line: 363, column: 20, scope: !1703)
!1743 = !DILocation(line: 363, column: 24, scope: !1703)
!1744 = !DILocation(line: 363, column: 5, scope: !1703)
!1745 = !DILocation(line: 364, column: 16, scope: !1703)
!1746 = !DILocation(line: 364, column: 20, scope: !1703)
!1747 = !DILocation(line: 364, column: 24, scope: !1703)
!1748 = !DILocation(line: 364, column: 5, scope: !1703)
!1749 = !DILocation(line: 366, column: 31, scope: !1703)
!1750 = !DILocation(line: 366, column: 42, scope: !1703)
!1751 = !DILocation(line: 366, column: 40, scope: !1703)
!1752 = !DILocation(line: 366, column: 14, scope: !1703)
!1753 = !DILocation(line: 366, column: 71, scope: !1703)
!1754 = !DILocation(line: 366, column: 79, scope: !1703)
!1755 = !DILocation(line: 366, column: 84, scope: !1703)
!1756 = !DILocation(line: 366, column: 92, scope: !1703)
!1757 = !DILocation(line: 366, column: 82, scope: !1703)
!1758 = !DILocation(line: 366, column: 54, scope: !1703)
!1759 = !DILocation(line: 366, column: 52, scope: !1703)
!1760 = !DILocation(line: 367, column: 31, scope: !1703)
!1761 = !DILocation(line: 367, column: 42, scope: !1703)
!1762 = !DILocation(line: 367, column: 40, scope: !1703)
!1763 = !DILocation(line: 367, column: 14, scope: !1703)
!1764 = !DILocation(line: 367, column: 71, scope: !1703)
!1765 = !DILocation(line: 367, column: 79, scope: !1703)
!1766 = !DILocation(line: 367, column: 84, scope: !1703)
!1767 = !DILocation(line: 367, column: 92, scope: !1703)
!1768 = !DILocation(line: 367, column: 82, scope: !1703)
!1769 = !DILocation(line: 367, column: 54, scope: !1703)
!1770 = !DILocation(line: 367, column: 52, scope: !1703)
!1771 = !DILocation(line: 366, column: 97, scope: !1703)
!1772 = !DILocation(line: 366, column: 12, scope: !1703)
!1773 = !DILocation(line: 366, column: 5, scope: !1703)
!1774 = distinct !DISubprogram(name: "eccmadd_ni", scope: !313, file: !313, line: 416, type: !1775, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !338, !1557}
!1777 = !DILocalVariable(name: "Q", arg: 1, scope: !1774, file: !313, line: 416, type: !338)
!1778 = !DILocation(line: 0, scope: !1774)
!1779 = !DILocalVariable(name: "P", arg: 2, scope: !1774, file: !313, line: 416, type: !1557)
!1780 = !DILocation(line: 418, column: 5, scope: !1774)
!1781 = !DILocation(line: 419, column: 1, scope: !1774)
!1782 = distinct !DISubprogram(name: "eccmadd", scope: !313, file: !313, line: 387, type: !1775, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1783 = !DILocalVariable(name: "Q", arg: 1, scope: !1782, file: !313, line: 387, type: !338)
!1784 = !DILocation(line: 0, scope: !1782)
!1785 = !DILocalVariable(name: "P", arg: 2, scope: !1782, file: !313, line: 387, type: !1557)
!1786 = !DILocalVariable(name: "t1", scope: !1782, file: !313, line: 393, type: !30)
!1787 = !DILocation(line: 393, column: 13, scope: !1782)
!1788 = !DILocalVariable(name: "t2", scope: !1782, file: !313, line: 393, type: !30)
!1789 = !DILocation(line: 393, column: 17, scope: !1782)
!1790 = !DILocation(line: 395, column: 19, scope: !1782)
!1791 = !DILocation(line: 395, column: 16, scope: !1782)
!1792 = !DILocation(line: 395, column: 26, scope: !1782)
!1793 = !DILocation(line: 395, column: 23, scope: !1782)
!1794 = !DILocation(line: 395, column: 33, scope: !1782)
!1795 = !DILocation(line: 395, column: 30, scope: !1782)
!1796 = !DILocation(line: 395, column: 5, scope: !1782)
!1797 = !DILocation(line: 396, column: 19, scope: !1782)
!1798 = !DILocation(line: 396, column: 16, scope: !1782)
!1799 = !DILocation(line: 396, column: 25, scope: !1782)
!1800 = !DILocation(line: 396, column: 22, scope: !1782)
!1801 = !DILocation(line: 396, column: 28, scope: !1782)
!1802 = !DILocation(line: 396, column: 5, scope: !1782)
!1803 = !DILocation(line: 397, column: 19, scope: !1782)
!1804 = !DILocation(line: 397, column: 16, scope: !1782)
!1805 = !DILocation(line: 397, column: 26, scope: !1782)
!1806 = !DILocation(line: 397, column: 23, scope: !1782)
!1807 = !DILocation(line: 397, column: 33, scope: !1782)
!1808 = !DILocation(line: 397, column: 30, scope: !1782)
!1809 = !DILocation(line: 397, column: 5, scope: !1782)
!1810 = !DILocation(line: 398, column: 19, scope: !1782)
!1811 = !DILocation(line: 398, column: 16, scope: !1782)
!1812 = !DILocation(line: 398, column: 25, scope: !1782)
!1813 = !DILocation(line: 398, column: 22, scope: !1782)
!1814 = !DILocation(line: 398, column: 31, scope: !1782)
!1815 = !DILocation(line: 398, column: 28, scope: !1782)
!1816 = !DILocation(line: 398, column: 5, scope: !1782)
!1817 = !DILocation(line: 399, column: 19, scope: !1782)
!1818 = !DILocation(line: 399, column: 16, scope: !1782)
!1819 = !DILocation(line: 399, column: 25, scope: !1782)
!1820 = !DILocation(line: 399, column: 22, scope: !1782)
!1821 = !DILocation(line: 399, column: 31, scope: !1782)
!1822 = !DILocation(line: 399, column: 28, scope: !1782)
!1823 = !DILocation(line: 399, column: 5, scope: !1782)
!1824 = !DILocation(line: 400, column: 16, scope: !1782)
!1825 = !DILocation(line: 400, column: 23, scope: !1782)
!1826 = !DILocation(line: 400, column: 20, scope: !1782)
!1827 = !DILocation(line: 400, column: 27, scope: !1782)
!1828 = !DILocation(line: 400, column: 5, scope: !1782)
!1829 = !DILocation(line: 401, column: 16, scope: !1782)
!1830 = !DILocation(line: 401, column: 23, scope: !1782)
!1831 = !DILocation(line: 401, column: 20, scope: !1782)
!1832 = !DILocation(line: 401, column: 27, scope: !1782)
!1833 = !DILocation(line: 401, column: 5, scope: !1782)
!1834 = !DILocation(line: 402, column: 19, scope: !1782)
!1835 = !DILocation(line: 402, column: 16, scope: !1782)
!1836 = !DILocation(line: 402, column: 26, scope: !1782)
!1837 = !DILocation(line: 402, column: 23, scope: !1782)
!1838 = !DILocation(line: 402, column: 32, scope: !1782)
!1839 = !DILocation(line: 402, column: 29, scope: !1782)
!1840 = !DILocation(line: 402, column: 5, scope: !1782)
!1841 = !DILocation(line: 403, column: 19, scope: !1782)
!1842 = !DILocation(line: 403, column: 16, scope: !1782)
!1843 = !DILocation(line: 403, column: 26, scope: !1782)
!1844 = !DILocation(line: 403, column: 23, scope: !1782)
!1845 = !DILocation(line: 403, column: 33, scope: !1782)
!1846 = !DILocation(line: 403, column: 30, scope: !1782)
!1847 = !DILocation(line: 403, column: 5, scope: !1782)
!1848 = !DILocation(line: 404, column: 16, scope: !1782)
!1849 = !DILocation(line: 404, column: 20, scope: !1782)
!1850 = !DILocation(line: 404, column: 27, scope: !1782)
!1851 = !DILocation(line: 404, column: 24, scope: !1782)
!1852 = !DILocation(line: 404, column: 5, scope: !1782)
!1853 = !DILocation(line: 405, column: 19, scope: !1782)
!1854 = !DILocation(line: 405, column: 16, scope: !1782)
!1855 = !DILocation(line: 405, column: 26, scope: !1782)
!1856 = !DILocation(line: 405, column: 23, scope: !1782)
!1857 = !DILocation(line: 405, column: 32, scope: !1782)
!1858 = !DILocation(line: 405, column: 29, scope: !1782)
!1859 = !DILocation(line: 405, column: 5, scope: !1782)
!1860 = !DILocation(line: 406, column: 19, scope: !1782)
!1861 = !DILocation(line: 406, column: 16, scope: !1782)
!1862 = !DILocation(line: 406, column: 26, scope: !1782)
!1863 = !DILocation(line: 406, column: 23, scope: !1782)
!1864 = !DILocation(line: 406, column: 32, scope: !1782)
!1865 = !DILocation(line: 406, column: 29, scope: !1782)
!1866 = !DILocation(line: 406, column: 5, scope: !1782)
!1867 = !DILocation(line: 407, column: 19, scope: !1782)
!1868 = !DILocation(line: 407, column: 16, scope: !1782)
!1869 = !DILocation(line: 407, column: 23, scope: !1782)
!1870 = !DILocation(line: 407, column: 30, scope: !1782)
!1871 = !DILocation(line: 407, column: 27, scope: !1782)
!1872 = !DILocation(line: 407, column: 5, scope: !1782)
!1873 = !DILocation(line: 408, column: 19, scope: !1782)
!1874 = !DILocation(line: 408, column: 16, scope: !1782)
!1875 = !DILocation(line: 408, column: 23, scope: !1782)
!1876 = !DILocation(line: 408, column: 30, scope: !1782)
!1877 = !DILocation(line: 408, column: 27, scope: !1782)
!1878 = !DILocation(line: 408, column: 5, scope: !1782)
!1879 = !DILocation(line: 413, column: 1, scope: !1782)
!1880 = distinct !DISubprogram(name: "ecc_mul_fixed", scope: !313, file: !313, line: 422, type: !1881, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!1706, !23, !1883, !1534, !1212}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1884 = !DILocalVariable(name: "P_table", arg: 1, scope: !1880, file: !313, line: 422, type: !23)
!1885 = !DILocation(line: 0, scope: !1880)
!1886 = !DILocalVariable(name: "k", arg: 2, scope: !1880, file: !313, line: 422, type: !1883)
!1887 = !DILocalVariable(name: "Q", arg: 3, scope: !1880, file: !313, line: 422, type: !1534)
!1888 = !DILocalVariable(name: "curve", arg: 4, scope: !1880, file: !313, line: 422, type: !1212)
!1889 = !DILocalVariable(name: "w", scope: !1880, file: !313, line: 431, type: !12)
!1890 = !DILocalVariable(name: "v", scope: !1880, file: !313, line: 431, type: !12)
!1891 = !DILocalVariable(name: "d", scope: !1880, file: !313, line: 431, type: !12)
!1892 = !DILocalVariable(name: "e", scope: !1880, file: !313, line: 431, type: !12)
!1893 = !DILocalVariable(name: "digit", scope: !1880, file: !313, line: 432, type: !12)
!1894 = !DILocalVariable(name: "digits", scope: !1880, file: !313, line: 432, type: !1895)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8672, elements: !1896)
!1896 = !{!1897}
!1897 = !DISubrange(count: 271)
!1898 = !DILocation(line: 432, column: 29, scope: !1880)
!1899 = !DILocalVariable(name: "temp", scope: !1880, file: !313, line: 433, type: !45)
!1900 = !DILocation(line: 433, column: 14, scope: !1880)
!1901 = !DILocalVariable(name: "R", scope: !1880, file: !313, line: 434, type: !1902)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_extproj_t", file: !7, line: 210, baseType: !1903)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1558, size: 1280, elements: !36)
!1904 = !DILocation(line: 434, column: 21, scope: !1880)
!1905 = !DILocalVariable(name: "S", scope: !1880, file: !313, line: 435, type: !24)
!1906 = !DILocation(line: 435, column: 21, scope: !1880)
!1907 = !DILocation(line: 438, column: 18, scope: !1880)
!1908 = !DILocation(line: 438, column: 31, scope: !1880)
!1909 = !DILocation(line: 438, column: 5, scope: !1880)
!1910 = !DILocation(line: 439, column: 23, scope: !1880)
!1911 = !DILocation(line: 439, column: 46, scope: !1880)
!1912 = !DILocation(line: 439, column: 36, scope: !1880)
!1913 = !DILocation(line: 439, column: 5, scope: !1880)
!1914 = !DILocation(line: 440, column: 21, scope: !1880)
!1915 = !DILocation(line: 440, column: 27, scope: !1880)
!1916 = !DILocation(line: 440, column: 5, scope: !1880)
!1917 = !DILocation(line: 443, column: 21, scope: !1880)
!1918 = !DILocation(line: 443, column: 23, scope: !1880)
!1919 = !DILocation(line: 443, column: 13, scope: !1880)
!1920 = !DILocation(line: 444, column: 22, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1880, file: !313, line: 444, column: 5)
!1922 = !DILocation(line: 444, column: 25, scope: !1921)
!1923 = !DILocation(line: 444, column: 27, scope: !1921)
!1924 = !DILocalVariable(name: "i", scope: !1880, file: !313, line: 436, type: !13)
!1925 = !DILocation(line: 444, column: 10, scope: !1921)
!1926 = !DILocation(line: 0, scope: !1921)
!1927 = !DILocation(line: 444, column: 44, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1921, file: !313, line: 444, column: 5)
!1929 = !DILocation(line: 444, column: 46, scope: !1928)
!1930 = !DILocation(line: 444, column: 34, scope: !1928)
!1931 = !DILocation(line: 444, column: 5, scope: !1921)
!1932 = !DILocation(line: 446, column: 18, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1928, file: !313, line: 445, column: 5)
!1934 = !DILocation(line: 446, column: 27, scope: !1933)
!1935 = !DILocation(line: 446, column: 25, scope: !1933)
!1936 = !DILocation(line: 447, column: 5, scope: !1933)
!1937 = !DILocation(line: 444, column: 56, scope: !1928)
!1938 = !DILocation(line: 444, column: 5, scope: !1928)
!1939 = distinct !{!1939, !1931, !1940, !199}
!1940 = !DILocation(line: 447, column: 5, scope: !1921)
!1941 = !DILocation(line: 449, column: 39, scope: !1880)
!1942 = !DILocation(line: 449, column: 51, scope: !1880)
!1943 = !DILocation(line: 449, column: 46, scope: !1880)
!1944 = !DILocation(line: 449, column: 42, scope: !1880)
!1945 = !DILocation(line: 449, column: 36, scope: !1880)
!1946 = !DILocation(line: 449, column: 57, scope: !1880)
!1947 = !DILocation(line: 449, column: 75, scope: !1880)
!1948 = !DILocation(line: 449, column: 67, scope: !1880)
!1949 = !DILocation(line: 449, column: 5, scope: !1880)
!1950 = !DILocation(line: 450, column: 14, scope: !1880)
!1951 = !DILocation(line: 450, column: 17, scope: !1880)
!1952 = !DILocation(line: 450, column: 5, scope: !1880)
!1953 = !DILocalVariable(name: "j", scope: !1880, file: !313, line: 431, type: !12)
!1954 = !DILocation(line: 452, column: 10, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1880, file: !313, line: 452, column: 5)
!1956 = !DILocation(line: 0, scope: !1955)
!1957 = !DILocation(line: 452, column: 23, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !313, line: 452, column: 5)
!1959 = !DILocation(line: 452, column: 19, scope: !1958)
!1960 = !DILocation(line: 452, column: 5, scope: !1955)
!1961 = !DILocation(line: 454, column: 25, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !313, line: 453, column: 5)
!1963 = !DILocation(line: 454, column: 30, scope: !1962)
!1964 = !DILocation(line: 454, column: 33, scope: !1962)
!1965 = !DILocation(line: 454, column: 27, scope: !1962)
!1966 = !DILocation(line: 454, column: 35, scope: !1962)
!1967 = !DILocation(line: 454, column: 17, scope: !1962)
!1968 = !DILocation(line: 455, column: 26, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1962, file: !313, line: 455, column: 9)
!1970 = !DILocation(line: 455, column: 29, scope: !1969)
!1971 = !DILocation(line: 455, column: 34, scope: !1969)
!1972 = !DILocation(line: 455, column: 37, scope: !1969)
!1973 = !DILocation(line: 455, column: 31, scope: !1969)
!1974 = !DILocation(line: 455, column: 39, scope: !1969)
!1975 = !DILocation(line: 455, column: 14, scope: !1969)
!1976 = !DILocation(line: 0, scope: !1962)
!1977 = !DILocation(line: 0, scope: !1969)
!1978 = !DILocation(line: 455, column: 56, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1969, file: !313, line: 455, column: 9)
!1980 = !DILocation(line: 455, column: 61, scope: !1979)
!1981 = !DILocation(line: 455, column: 64, scope: !1979)
!1982 = !DILocation(line: 455, column: 58, scope: !1979)
!1983 = !DILocation(line: 455, column: 66, scope: !1979)
!1984 = !DILocation(line: 455, column: 46, scope: !1979)
!1985 = !DILocation(line: 455, column: 9, scope: !1969)
!1986 = !DILocation(line: 457, column: 22, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1979, file: !313, line: 456, column: 9)
!1988 = !DILocation(line: 457, column: 31, scope: !1987)
!1989 = !DILocation(line: 457, column: 29, scope: !1987)
!1990 = !DILocation(line: 458, column: 9, scope: !1987)
!1991 = !DILocation(line: 455, column: 76, scope: !1979)
!1992 = !DILocation(line: 455, column: 9, scope: !1979)
!1993 = distinct !{!1993, !1985, !1994, !199}
!1994 = !DILocation(line: 458, column: 9, scope: !1969)
!1995 = !DILocation(line: 460, column: 43, scope: !1962)
!1996 = !DILocation(line: 460, column: 45, scope: !1962)
!1997 = !DILocation(line: 460, column: 57, scope: !1962)
!1998 = !DILocation(line: 460, column: 52, scope: !1962)
!1999 = !DILocation(line: 460, column: 48, scope: !1962)
!2000 = !DILocation(line: 460, column: 40, scope: !1962)
!2001 = !DILocation(line: 460, column: 63, scope: !1962)
!2002 = !DILocation(line: 460, column: 84, scope: !1962)
!2003 = !DILocation(line: 460, column: 87, scope: !1962)
!2004 = !DILocation(line: 460, column: 81, scope: !1962)
!2005 = !DILocation(line: 460, column: 89, scope: !1962)
!2006 = !DILocation(line: 460, column: 73, scope: !1962)
!2007 = !DILocation(line: 460, column: 9, scope: !1962)
!2008 = !DILocation(line: 461, column: 17, scope: !1962)
!2009 = !DILocation(line: 461, column: 20, scope: !1962)
!2010 = !DILocation(line: 461, column: 9, scope: !1962)
!2011 = !DILocation(line: 462, column: 5, scope: !1962)
!2012 = !DILocation(line: 452, column: 29, scope: !1958)
!2013 = !DILocation(line: 452, column: 5, scope: !1958)
!2014 = distinct !{!2014, !1960, !2015, !199}
!2015 = !DILocation(line: 462, column: 5, scope: !1955)
!2016 = !DILocation(line: 464, column: 17, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1880, file: !313, line: 464, column: 5)
!2018 = !DILocalVariable(name: "ii", scope: !1880, file: !313, line: 436, type: !13)
!2019 = !DILocation(line: 464, column: 10, scope: !2017)
!2020 = !DILocation(line: 0, scope: !2017)
!2021 = !DILocation(line: 464, column: 25, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2017, file: !313, line: 464, column: 5)
!2023 = !DILocation(line: 464, column: 5, scope: !2017)
!2024 = !DILocation(line: 466, column: 19, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2022, file: !313, line: 465, column: 5)
!2026 = !DILocation(line: 466, column: 9, scope: !2025)
!2027 = !DILocation(line: 467, column: 14, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !313, line: 467, column: 9)
!2029 = !DILocation(line: 0, scope: !2028)
!2030 = !DILocation(line: 467, column: 23, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !313, line: 467, column: 9)
!2032 = !DILocation(line: 467, column: 9, scope: !2028)
!2033 = !DILocation(line: 469, column: 29, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2031, file: !313, line: 468, column: 9)
!2035 = !DILocation(line: 469, column: 33, scope: !2034)
!2036 = !DILocation(line: 469, column: 31, scope: !2034)
!2037 = !DILocation(line: 469, column: 35, scope: !2034)
!2038 = !DILocation(line: 469, column: 38, scope: !2034)
!2039 = !DILocation(line: 469, column: 21, scope: !2034)
!2040 = !DILocation(line: 470, column: 30, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2034, file: !313, line: 470, column: 13)
!2042 = !DILocation(line: 470, column: 33, scope: !2041)
!2043 = !DILocation(line: 470, column: 37, scope: !2041)
!2044 = !DILocation(line: 470, column: 35, scope: !2041)
!2045 = !DILocation(line: 470, column: 39, scope: !2041)
!2046 = !DILocation(line: 470, column: 42, scope: !2041)
!2047 = !DILocation(line: 470, column: 18, scope: !2041)
!2048 = !DILocation(line: 0, scope: !2034)
!2049 = !DILocation(line: 0, scope: !2041)
!2050 = !DILocation(line: 470, column: 59, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2041, file: !313, line: 470, column: 13)
!2052 = !DILocation(line: 470, column: 63, scope: !2051)
!2053 = !DILocation(line: 470, column: 61, scope: !2051)
!2054 = !DILocation(line: 470, column: 65, scope: !2051)
!2055 = !DILocation(line: 470, column: 68, scope: !2051)
!2056 = !DILocation(line: 470, column: 49, scope: !2051)
!2057 = !DILocation(line: 470, column: 13, scope: !2041)
!2058 = !DILocation(line: 472, column: 26, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2051, file: !313, line: 471, column: 13)
!2060 = !DILocation(line: 472, column: 35, scope: !2059)
!2061 = !DILocation(line: 472, column: 33, scope: !2059)
!2062 = !DILocation(line: 473, column: 13, scope: !2059)
!2063 = !DILocation(line: 470, column: 78, scope: !2051)
!2064 = !DILocation(line: 470, column: 13, scope: !2051)
!2065 = distinct !{!2065, !2057, !2066, !199}
!2066 = !DILocation(line: 473, column: 13, scope: !2041)
!2067 = !DILocation(line: 475, column: 47, scope: !2034)
!2068 = !DILocation(line: 475, column: 49, scope: !2034)
!2069 = !DILocation(line: 475, column: 61, scope: !2034)
!2070 = !DILocation(line: 475, column: 56, scope: !2034)
!2071 = !DILocation(line: 475, column: 52, scope: !2034)
!2072 = !DILocation(line: 475, column: 44, scope: !2034)
!2073 = !DILocation(line: 475, column: 67, scope: !2034)
!2074 = !DILocation(line: 475, column: 87, scope: !2034)
!2075 = !DILocation(line: 475, column: 85, scope: !2034)
!2076 = !DILocation(line: 475, column: 89, scope: !2034)
!2077 = !DILocation(line: 475, column: 92, scope: !2034)
!2078 = !DILocation(line: 475, column: 77, scope: !2034)
!2079 = !DILocation(line: 475, column: 13, scope: !2034)
!2080 = !DILocation(line: 476, column: 21, scope: !2034)
!2081 = !DILocation(line: 476, column: 24, scope: !2034)
!2082 = !DILocation(line: 476, column: 13, scope: !2034)
!2083 = !DILocation(line: 477, column: 9, scope: !2034)
!2084 = !DILocation(line: 467, column: 29, scope: !2031)
!2085 = !DILocation(line: 467, column: 9, scope: !2031)
!2086 = distinct !{!2086, !2032, !2087, !199}
!2087 = !DILocation(line: 477, column: 9, scope: !2028)
!2088 = !DILocation(line: 478, column: 5, scope: !2025)
!2089 = !DILocation(line: 464, column: 33, scope: !2022)
!2090 = !DILocation(line: 464, column: 5, scope: !2022)
!2091 = distinct !{!2091, !2023, !2092, !199}
!2092 = !DILocation(line: 478, column: 5, scope: !2017)
!2093 = !DILocation(line: 479, column: 13, scope: !1880)
!2094 = !DILocation(line: 479, column: 5, scope: !1880)
!2095 = !DILocation(line: 485, column: 5, scope: !1880)
!2096 = distinct !DISubprogram(name: "mLSB_set_recode", scope: !313, file: !313, line: 489, type: !2097, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !1883, !2099}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!2100 = !DILocalVariable(name: "scalar", arg: 1, scope: !2096, file: !313, line: 489, type: !1883)
!2101 = !DILocation(line: 0, scope: !2096)
!2102 = !DILocalVariable(name: "digits", arg: 2, scope: !2096, file: !313, line: 489, type: !2099)
!2103 = !DILocalVariable(name: "d", scope: !2096, file: !313, line: 496, type: !12)
!2104 = !DILocalVariable(name: "l", scope: !2096, file: !313, line: 496, type: !12)
!2105 = !DILocation(line: 499, column: 13, scope: !2096)
!2106 = !DILocation(line: 499, column: 5, scope: !2096)
!2107 = !DILocation(line: 499, column: 17, scope: !2096)
!2108 = !DILocalVariable(name: "j", scope: !2096, file: !313, line: 496, type: !12)
!2109 = !DILocation(line: 502, column: 10, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2096, file: !313, line: 502, column: 5)
!2111 = !DILocation(line: 0, scope: !2110)
!2112 = !DILocation(line: 502, column: 19, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !313, line: 502, column: 5)
!2114 = !DILocation(line: 502, column: 5, scope: !2110)
!2115 = !DILocation(line: 503, column: 9, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !313, line: 502, column: 46)
!2117 = !DILocation(line: 504, column: 5, scope: !2116)
!2118 = !DILocation(line: 502, column: 42, scope: !2113)
!2119 = !DILocation(line: 502, column: 5, scope: !2113)
!2120 = distinct !{!2120, !2114, !2121, !199}
!2121 = !DILocation(line: 504, column: 5, scope: !2110)
!2122 = !DILocation(line: 505, column: 5, scope: !2096)
!2123 = !DILocation(line: 505, column: 30, scope: !2096)
!2124 = !DILocalVariable(name: "i", scope: !2096, file: !313, line: 496, type: !12)
!2125 = !DILocation(line: 507, column: 10, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2096, file: !313, line: 507, column: 5)
!2127 = !DILocation(line: 0, scope: !2126)
!2128 = !DILocation(line: 507, column: 23, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !313, line: 507, column: 5)
!2130 = !DILocation(line: 507, column: 19, scope: !2129)
!2131 = !DILocation(line: 507, column: 5, scope: !2126)
!2132 = !DILocation(line: 509, column: 37, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !313, line: 508, column: 5)
!2134 = !DILocation(line: 509, column: 47, scope: !2133)
!2135 = !DILocation(line: 509, column: 52, scope: !2133)
!2136 = !DILocation(line: 509, column: 21, scope: !2133)
!2137 = !DILocation(line: 509, column: 9, scope: !2133)
!2138 = !DILocation(line: 509, column: 19, scope: !2133)
!2139 = !DILocation(line: 512, column: 14, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2133, file: !313, line: 512, column: 9)
!2141 = !DILocation(line: 0, scope: !2140)
!2142 = !DILocation(line: 512, column: 23, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !313, line: 512, column: 9)
!2144 = !DILocation(line: 512, column: 9, scope: !2140)
!2145 = !DILocation(line: 513, column: 13, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !313, line: 512, column: 50)
!2147 = !DILocation(line: 514, column: 9, scope: !2146)
!2148 = !DILocation(line: 512, column: 46, scope: !2143)
!2149 = !DILocation(line: 512, column: 9, scope: !2143)
!2150 = distinct !{!2150, !2144, !2151, !199}
!2151 = !DILocation(line: 514, column: 9, scope: !2140)
!2152 = !DILocation(line: 515, column: 9, scope: !2133)
!2153 = !DILocation(line: 515, column: 34, scope: !2133)
!2154 = !DILocation(line: 516, column: 5, scope: !2133)
!2155 = !DILocation(line: 507, column: 29, scope: !2129)
!2156 = !DILocation(line: 507, column: 5, scope: !2129)
!2157 = distinct !{!2157, !2131, !2158, !199}
!2158 = !DILocation(line: 516, column: 5, scope: !2126)
!2159 = !DILocation(line: 518, column: 10, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2096, file: !313, line: 518, column: 5)
!2161 = !DILocation(line: 0, scope: !2160)
!2162 = !DILocation(line: 518, column: 19, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !313, line: 518, column: 5)
!2164 = !DILocation(line: 518, column: 5, scope: !2160)
!2165 = !DILocation(line: 520, column: 36, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !313, line: 519, column: 5)
!2167 = !DILocation(line: 520, column: 46, scope: !2166)
!2168 = !DILocation(line: 520, column: 21, scope: !2166)
!2169 = !DILocation(line: 520, column: 9, scope: !2166)
!2170 = !DILocation(line: 520, column: 19, scope: !2166)
!2171 = !DILocation(line: 523, column: 14, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2166, file: !313, line: 523, column: 9)
!2173 = !DILocation(line: 0, scope: !2172)
!2174 = !DILocation(line: 523, column: 23, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !313, line: 523, column: 9)
!2176 = !DILocation(line: 523, column: 9, scope: !2172)
!2177 = !DILocation(line: 524, column: 13, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2175, file: !313, line: 523, column: 50)
!2179 = !DILocation(line: 525, column: 9, scope: !2178)
!2180 = !DILocation(line: 523, column: 46, scope: !2175)
!2181 = !DILocation(line: 523, column: 9, scope: !2175)
!2182 = distinct !{!2182, !2176, !2183, !199}
!2183 = !DILocation(line: 525, column: 9, scope: !2172)
!2184 = !DILocation(line: 526, column: 9, scope: !2166)
!2185 = !DILocation(line: 526, column: 34, scope: !2166)
!2186 = !DILocation(line: 528, column: 32, scope: !2166)
!2187 = !DILocation(line: 528, column: 35, scope: !2166)
!2188 = !DILocation(line: 528, column: 29, scope: !2166)
!2189 = !DILocation(line: 528, column: 21, scope: !2166)
!2190 = !DILocation(line: 528, column: 19, scope: !2166)
!2191 = !DILocation(line: 528, column: 42, scope: !2166)
!2192 = !DILocation(line: 528, column: 40, scope: !2166)
!2193 = !DILocation(line: 528, column: 16, scope: !2166)
!2194 = !DILocalVariable(name: "temp", scope: !2096, file: !313, line: 497, type: !20)
!2195 = !DILocation(line: 531, column: 21, scope: !2166)
!2196 = !DILocation(line: 531, column: 31, scope: !2166)
!2197 = !DILocation(line: 531, column: 9, scope: !2166)
!2198 = !DILocation(line: 531, column: 19, scope: !2166)
!2199 = !DILocation(line: 532, column: 61, scope: !2166)
!2200 = !DILocation(line: 532, column: 52, scope: !2166)
!2201 = !DILocation(line: 532, column: 35, scope: !2166)
!2202 = !DILocation(line: 532, column: 25, scope: !2166)
!2203 = !DILocation(line: 532, column: 23, scope: !2166)
!2204 = !DILocalVariable(name: "carry", scope: !2096, file: !313, line: 497, type: !20)
!2205 = !DILocation(line: 533, column: 14, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2166, file: !313, line: 533, column: 9)
!2207 = !DILocation(line: 0, scope: !2206)
!2208 = !DILocation(line: 0, scope: !2166)
!2209 = !DILocation(line: 533, column: 23, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2206, file: !313, line: 533, column: 9)
!2211 = !DILocation(line: 533, column: 9, scope: !2206)
!2212 = !DILocation(line: 535, column: 25, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !313, line: 534, column: 9)
!2214 = !DILocation(line: 535, column: 35, scope: !2213)
!2215 = !DILocation(line: 535, column: 13, scope: !2213)
!2216 = !DILocation(line: 535, column: 23, scope: !2213)
!2217 = !DILocation(line: 536, column: 66, scope: !2213)
!2218 = !DILocation(line: 536, column: 57, scope: !2213)
!2219 = !DILocation(line: 536, column: 40, scope: !2213)
!2220 = !DILocation(line: 536, column: 30, scope: !2213)
!2221 = !DILocation(line: 536, column: 28, scope: !2213)
!2222 = !DILocation(line: 537, column: 9, scope: !2213)
!2223 = !DILocation(line: 533, column: 42, scope: !2210)
!2224 = !DILocation(line: 533, column: 9, scope: !2210)
!2225 = distinct !{!2225, !2211, !2226, !199}
!2226 = !DILocation(line: 537, column: 9, scope: !2206)
!2227 = !DILocation(line: 538, column: 5, scope: !2166)
!2228 = !DILocation(line: 518, column: 25, scope: !2163)
!2229 = !DILocation(line: 518, column: 5, scope: !2163)
!2230 = distinct !{!2230, !2164, !2231, !199}
!2231 = !DILocation(line: 538, column: 5, scope: !2160)
!2232 = !DILocation(line: 539, column: 5, scope: !2096)
!2233 = distinct !DISubprogram(name: "R5_to_R1", scope: !313, file: !313, line: 373, type: !1775, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2234 = !DILocalVariable(name: "P", arg: 1, scope: !2233, file: !313, line: 373, type: !338)
!2235 = !DILocation(line: 0, scope: !2233)
!2236 = !DILocalVariable(name: "Q", arg: 2, scope: !2233, file: !313, line: 373, type: !1557)
!2237 = !DILocation(line: 377, column: 19, scope: !2233)
!2238 = !DILocation(line: 377, column: 16, scope: !2233)
!2239 = !DILocation(line: 377, column: 26, scope: !2233)
!2240 = !DILocation(line: 377, column: 23, scope: !2233)
!2241 = !DILocation(line: 377, column: 33, scope: !2233)
!2242 = !DILocation(line: 377, column: 30, scope: !2233)
!2243 = !DILocation(line: 377, column: 5, scope: !2233)
!2244 = !DILocation(line: 378, column: 19, scope: !2233)
!2245 = !DILocation(line: 378, column: 16, scope: !2233)
!2246 = !DILocation(line: 378, column: 26, scope: !2233)
!2247 = !DILocation(line: 378, column: 23, scope: !2233)
!2248 = !DILocation(line: 378, column: 33, scope: !2233)
!2249 = !DILocation(line: 378, column: 30, scope: !2233)
!2250 = !DILocation(line: 378, column: 5, scope: !2233)
!2251 = !DILocation(line: 379, column: 19, scope: !2233)
!2252 = !DILocation(line: 379, column: 16, scope: !2233)
!2253 = !DILocation(line: 379, column: 5, scope: !2233)
!2254 = !DILocation(line: 380, column: 19, scope: !2233)
!2255 = !DILocation(line: 380, column: 16, scope: !2233)
!2256 = !DILocation(line: 380, column: 5, scope: !2233)
!2257 = !DILocation(line: 381, column: 20, scope: !2233)
!2258 = !DILocation(line: 381, column: 17, scope: !2233)
!2259 = !DILocation(line: 381, column: 5, scope: !2233)
!2260 = !DILocation(line: 381, column: 27, scope: !2233)
!2261 = !DILocation(line: 381, column: 24, scope: !2233)
!2262 = !DILocation(line: 381, column: 34, scope: !2233)
!2263 = !DILocation(line: 382, column: 20, scope: !2233)
!2264 = !DILocation(line: 382, column: 17, scope: !2233)
!2265 = !DILocation(line: 382, column: 26, scope: !2233)
!2266 = !DILocation(line: 382, column: 23, scope: !2233)
!2267 = !DILocation(line: 382, column: 5, scope: !2233)
!2268 = !DILocation(line: 383, column: 20, scope: !2233)
!2269 = !DILocation(line: 383, column: 17, scope: !2233)
!2270 = !DILocation(line: 383, column: 26, scope: !2233)
!2271 = !DILocation(line: 383, column: 23, scope: !2233)
!2272 = !DILocation(line: 383, column: 5, scope: !2233)
!2273 = !DILocation(line: 384, column: 1, scope: !2233)
!2274 = distinct !DISubprogram(name: "ecc_allocate_precomp", scope: !313, file: !313, line: 543, type: !2275, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!23}
!2277 = !DILocation(line: 547, column: 30, scope: !2274)
!2278 = !DILocation(line: 547, column: 12, scope: !2274)
!2279 = !DILocation(line: 547, column: 5, scope: !2274)
!2280 = distinct !DISubprogram(name: "ecc_precomp_fixed", scope: !313, file: !313, line: 551, type: !2281, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!1706, !1534, !23, !1706, !1212}
!2283 = !DILocalVariable(name: "P", arg: 1, scope: !2280, file: !313, line: 551, type: !1534)
!2284 = !DILocation(line: 0, scope: !2280)
!2285 = !DILocalVariable(name: "Table", arg: 2, scope: !2280, file: !313, line: 551, type: !23)
!2286 = !DILocalVariable(name: "clear_cofactor", arg: 3, scope: !2280, file: !313, line: 551, type: !1706)
!2287 = !DILocalVariable(name: "curve", arg: 4, scope: !2280, file: !313, line: 551, type: !1212)
!2288 = !DILocalVariable(name: "S", scope: !2280, file: !313, line: 559, type: !2289)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "point_t", file: !7, line: 208, baseType: !2290)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1535, size: 512, elements: !36)
!2291 = !DILocation(line: 559, column: 13, scope: !2280)
!2292 = !DILocalVariable(name: "A", scope: !2280, file: !313, line: 560, type: !1902)
!2293 = !DILocation(line: 560, column: 21, scope: !2280)
!2294 = !DILocalVariable(name: "R", scope: !2280, file: !313, line: 560, type: !1902)
!2295 = !DILocation(line: 560, column: 24, scope: !2280)
!2296 = !DILocalVariable(name: "base", scope: !2280, file: !313, line: 560, type: !2297)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1902, size: 6400, elements: !2298)
!2298 = !{!2299}
!2299 = !DISubrange(count: 5)
!2300 = !DILocation(line: 560, column: 27, scope: !2280)
!2301 = !DILocalVariable(name: "baseb", scope: !2280, file: !313, line: 561, type: !2302)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 5120, elements: !2298)
!2303 = !DILocation(line: 561, column: 29, scope: !2280)
!2304 = !DILocalVariable(name: "RR", scope: !2280, file: !313, line: 561, type: !57)
!2305 = !DILocation(line: 561, column: 49, scope: !2280)
!2306 = !DILocalVariable(name: "T", scope: !2280, file: !313, line: 561, type: !2307)
!2307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 81920, elements: !2308)
!2308 = !{!2309}
!2309 = !DISubrange(count: 80)
!2310 = !DILocation(line: 561, column: 53, scope: !2280)
!2311 = !DILocalVariable(name: "w", scope: !2280, file: !313, line: 562, type: !12)
!2312 = !DILocalVariable(name: "v", scope: !2280, file: !313, line: 562, type: !12)
!2313 = !DILocalVariable(name: "d", scope: !2280, file: !313, line: 562, type: !12)
!2314 = !DILocalVariable(name: "e", scope: !2280, file: !313, line: 562, type: !12)
!2315 = !DILocation(line: 565, column: 20, scope: !2280)
!2316 = !DILocation(line: 565, column: 5, scope: !2280)
!2317 = !DILocation(line: 567, column: 28, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2280, file: !313, line: 567, column: 9)
!2319 = !DILocation(line: 567, column: 9, scope: !2318)
!2320 = !DILocation(line: 567, column: 38, scope: !2318)
!2321 = !DILocation(line: 567, column: 9, scope: !2280)
!2322 = !DILocation(line: 568, column: 9, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !313, line: 567, column: 48)
!2324 = !DILocation(line: 571, column: 9, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2280, file: !313, line: 571, column: 9)
!2326 = !DILocation(line: 571, column: 24, scope: !2325)
!2327 = !DILocation(line: 571, column: 9, scope: !2280)
!2328 = !DILocation(line: 572, column: 27, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !313, line: 571, column: 33)
!2330 = !DILocation(line: 572, column: 9, scope: !2329)
!2331 = !DILocation(line: 573, column: 17, scope: !2329)
!2332 = !DILocation(line: 573, column: 20, scope: !2329)
!2333 = !DILocation(line: 573, column: 9, scope: !2329)
!2334 = !DILocation(line: 574, column: 21, scope: !2329)
!2335 = !DILocation(line: 574, column: 24, scope: !2329)
!2336 = !DILocation(line: 574, column: 9, scope: !2329)
!2337 = !DILocation(line: 575, column: 5, scope: !2329)
!2338 = !DILocation(line: 576, column: 5, scope: !2280)
!2339 = !DILocalVariable(name: "i", scope: !2280, file: !313, line: 562, type: !12)
!2340 = !DILocation(line: 579, column: 10, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2280, file: !313, line: 579, column: 5)
!2342 = !DILocation(line: 0, scope: !2341)
!2343 = !DILocation(line: 579, column: 23, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2341, file: !313, line: 579, column: 5)
!2345 = !DILocation(line: 579, column: 19, scope: !2344)
!2346 = !DILocation(line: 579, column: 5, scope: !2341)
!2347 = !DILocation(line: 580, column: 9, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2344, file: !313, line: 579, column: 33)
!2349 = !DILocation(line: 581, column: 18, scope: !2348)
!2350 = !DILocation(line: 581, column: 27, scope: !2348)
!2351 = !DILocation(line: 581, column: 9, scope: !2348)
!2352 = !DILocalVariable(name: "j", scope: !2280, file: !313, line: 562, type: !12)
!2353 = !DILocation(line: 582, column: 14, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2348, file: !313, line: 582, column: 9)
!2355 = !DILocation(line: 0, scope: !2354)
!2356 = !DILocation(line: 582, column: 23, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2354, file: !313, line: 582, column: 9)
!2358 = !DILocation(line: 582, column: 9, scope: !2354)
!2359 = !DILocation(line: 582, column: 52, scope: !2357)
!2360 = !DILocation(line: 582, column: 46, scope: !2357)
!2361 = !DILocation(line: 582, column: 33, scope: !2357)
!2362 = !DILocation(line: 582, column: 29, scope: !2357)
!2363 = !DILocation(line: 582, column: 9, scope: !2357)
!2364 = distinct !{!2364, !2358, !2365, !199}
!2365 = !DILocation(line: 582, column: 55, scope: !2354)
!2366 = !DILocation(line: 583, column: 5, scope: !2348)
!2367 = !DILocation(line: 579, column: 29, scope: !2344)
!2368 = !DILocation(line: 579, column: 5, scope: !2344)
!2369 = distinct !{!2369, !2346, !2370, !199}
!2370 = !DILocation(line: 583, column: 5, scope: !2341)
!2371 = !DILocation(line: 585, column: 20, scope: !2280)
!2372 = !DILocation(line: 585, column: 14, scope: !2280)
!2373 = !DILocation(line: 585, column: 32, scope: !2280)
!2374 = !DILocation(line: 585, column: 25, scope: !2280)
!2375 = !DILocation(line: 585, column: 5, scope: !2280)
!2376 = !DILocation(line: 586, column: 20, scope: !2280)
!2377 = !DILocation(line: 586, column: 17, scope: !2280)
!2378 = !DILocation(line: 586, column: 23, scope: !2280)
!2379 = !DILocation(line: 586, column: 29, scope: !2280)
!2380 = !DILocation(line: 586, column: 5, scope: !2280)
!2381 = !DILocation(line: 587, column: 20, scope: !2280)
!2382 = !DILocation(line: 587, column: 17, scope: !2280)
!2383 = !DILocation(line: 587, column: 23, scope: !2280)
!2384 = !DILocation(line: 587, column: 29, scope: !2280)
!2385 = !DILocation(line: 587, column: 5, scope: !2280)
!2386 = !DILocalVariable(name: "index", scope: !2280, file: !313, line: 562, type: !12)
!2387 = !DILocalVariable(name: "index_group", scope: !2280, file: !313, line: 563, type: !22)
!2388 = !DILocation(line: 592, column: 10, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2280, file: !313, line: 592, column: 5)
!2390 = !DILocation(line: 0, scope: !2389)
!2391 = !DILocation(line: 590, column: 11, scope: !2280)
!2392 = !DILocation(line: 592, column: 23, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !313, line: 592, column: 5)
!2394 = !DILocation(line: 592, column: 19, scope: !2393)
!2395 = !DILocation(line: 592, column: 5, scope: !2389)
!2396 = !DILocation(line: 594, column: 14, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !313, line: 594, column: 9)
!2398 = distinct !DILexicalBlock(scope: !2393, file: !313, line: 593, column: 5)
!2399 = !DILocation(line: 0, scope: !2397)
!2400 = !DILocation(line: 594, column: 21, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !313, line: 594, column: 9)
!2402 = !DILocation(line: 594, column: 23, scope: !2401)
!2403 = !DILocation(line: 594, column: 9, scope: !2397)
!2404 = !DILocation(line: 596, column: 24, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !313, line: 595, column: 9)
!2406 = !DILocation(line: 596, column: 30, scope: !2405)
!2407 = !DILocation(line: 596, column: 34, scope: !2405)
!2408 = !DILocation(line: 596, column: 40, scope: !2405)
!2409 = !DILocation(line: 596, column: 48, scope: !2405)
!2410 = !DILocation(line: 596, column: 44, scope: !2405)
!2411 = !DILocation(line: 596, column: 13, scope: !2405)
!2412 = !DILocation(line: 597, column: 24, scope: !2405)
!2413 = !DILocation(line: 597, column: 30, scope: !2405)
!2414 = !DILocation(line: 597, column: 34, scope: !2405)
!2415 = !DILocation(line: 597, column: 40, scope: !2405)
!2416 = !DILocation(line: 597, column: 48, scope: !2405)
!2417 = !DILocation(line: 597, column: 44, scope: !2405)
!2418 = !DILocation(line: 597, column: 13, scope: !2405)
!2419 = !DILocation(line: 598, column: 29, scope: !2405)
!2420 = !DILocation(line: 598, column: 25, scope: !2405)
!2421 = !DILocation(line: 598, column: 13, scope: !2405)
!2422 = !DILocation(line: 598, column: 38, scope: !2405)
!2423 = !DILocation(line: 598, column: 34, scope: !2405)
!2424 = !DILocation(line: 598, column: 47, scope: !2405)
!2425 = !DILocation(line: 599, column: 24, scope: !2405)
!2426 = !DILocation(line: 599, column: 30, scope: !2405)
!2427 = !DILocation(line: 599, column: 34, scope: !2405)
!2428 = !DILocation(line: 599, column: 40, scope: !2405)
!2429 = !DILocation(line: 599, column: 48, scope: !2405)
!2430 = !DILocation(line: 599, column: 44, scope: !2405)
!2431 = !DILocation(line: 599, column: 13, scope: !2405)
!2432 = !DILocation(line: 600, column: 32, scope: !2405)
!2433 = !DILocation(line: 600, column: 25, scope: !2405)
!2434 = !DILocation(line: 600, column: 37, scope: !2405)
!2435 = !DILocation(line: 600, column: 41, scope: !2405)
!2436 = !DILocation(line: 600, column: 13, scope: !2405)
!2437 = !DILocation(line: 601, column: 18, scope: !2405)
!2438 = !DILocation(line: 602, column: 21, scope: !2405)
!2439 = !DILocation(line: 602, column: 24, scope: !2405)
!2440 = !DILocation(line: 602, column: 13, scope: !2405)
!2441 = !DILocation(line: 603, column: 25, scope: !2405)
!2442 = !DILocation(line: 603, column: 28, scope: !2405)
!2443 = !DILocation(line: 603, column: 13, scope: !2405)
!2444 = !DILocation(line: 604, column: 28, scope: !2405)
!2445 = !DILocation(line: 604, column: 25, scope: !2405)
!2446 = !DILocation(line: 604, column: 31, scope: !2405)
!2447 = !DILocation(line: 604, column: 41, scope: !2405)
!2448 = !DILocation(line: 604, column: 13, scope: !2405)
!2449 = !DILocation(line: 605, column: 28, scope: !2405)
!2450 = !DILocation(line: 605, column: 25, scope: !2405)
!2451 = !DILocation(line: 605, column: 31, scope: !2405)
!2452 = !DILocation(line: 605, column: 41, scope: !2405)
!2453 = !DILocation(line: 605, column: 13, scope: !2405)
!2454 = !DILocation(line: 606, column: 9, scope: !2405)
!2455 = !DILocation(line: 594, column: 39, scope: !2401)
!2456 = !DILocation(line: 594, column: 9, scope: !2401)
!2457 = distinct !{!2457, !2403, !2458, !199}
!2458 = !DILocation(line: 606, column: 9, scope: !2397)
!2459 = !DILocation(line: 607, column: 24, scope: !2398)
!2460 = !DILocation(line: 608, column: 5, scope: !2398)
!2461 = !DILocation(line: 592, column: 29, scope: !2393)
!2462 = !DILocation(line: 592, column: 5, scope: !2393)
!2463 = distinct !{!2463, !2395, !2464, !199}
!2464 = !DILocation(line: 608, column: 5, scope: !2389)
!2465 = !DILocation(line: 611, column: 10, scope: !2280)
!2466 = !DILocation(line: 612, column: 10, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2280, file: !313, line: 612, column: 5)
!2468 = !DILocation(line: 0, scope: !2467)
!2469 = !DILocation(line: 612, column: 23, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !313, line: 612, column: 5)
!2471 = !DILocation(line: 612, column: 19, scope: !2470)
!2472 = !DILocation(line: 612, column: 5, scope: !2467)
!2473 = !DILocation(line: 614, column: 14, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !313, line: 614, column: 9)
!2475 = distinct !DILexicalBlock(scope: !2470, file: !313, line: 613, column: 5)
!2476 = !DILocation(line: 0, scope: !2474)
!2477 = !DILocation(line: 614, column: 23, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2474, file: !313, line: 614, column: 9)
!2479 = !DILocation(line: 614, column: 9, scope: !2474)
!2480 = !DILocation(line: 616, column: 28, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2478, file: !313, line: 615, column: 9)
!2482 = !DILocation(line: 616, column: 35, scope: !2481)
!2483 = !DILocation(line: 616, column: 25, scope: !2481)
!2484 = !DILocation(line: 616, column: 41, scope: !2481)
!2485 = !DILocation(line: 616, column: 48, scope: !2481)
!2486 = !DILocation(line: 616, column: 45, scope: !2481)
!2487 = !DILocation(line: 616, column: 13, scope: !2481)
!2488 = !DILocation(line: 617, column: 28, scope: !2481)
!2489 = !DILocation(line: 617, column: 35, scope: !2481)
!2490 = !DILocation(line: 617, column: 25, scope: !2481)
!2491 = !DILocation(line: 617, column: 41, scope: !2481)
!2492 = !DILocation(line: 617, column: 48, scope: !2481)
!2493 = !DILocation(line: 617, column: 45, scope: !2481)
!2494 = !DILocation(line: 617, column: 13, scope: !2481)
!2495 = !DILocation(line: 618, column: 28, scope: !2481)
!2496 = !DILocation(line: 618, column: 25, scope: !2481)
!2497 = !DILocation(line: 618, column: 13, scope: !2481)
!2498 = !DILocation(line: 618, column: 35, scope: !2481)
!2499 = !DILocation(line: 618, column: 32, scope: !2481)
!2500 = !DILocation(line: 618, column: 43, scope: !2481)
!2501 = !DILocalVariable(name: "k", scope: !2280, file: !313, line: 562, type: !12)
!2502 = !DILocation(line: 619, column: 18, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2481, file: !313, line: 619, column: 13)
!2504 = !DILocation(line: 0, scope: !2503)
!2505 = !DILocation(line: 619, column: 27, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2503, file: !313, line: 619, column: 13)
!2507 = !DILocation(line: 619, column: 13, scope: !2503)
!2508 = !DILocation(line: 619, column: 50, scope: !2506)
!2509 = !DILocation(line: 619, column: 37, scope: !2506)
!2510 = !DILocation(line: 619, column: 33, scope: !2506)
!2511 = !DILocation(line: 619, column: 13, scope: !2506)
!2512 = distinct !{!2512, !2507, !2513, !199}
!2513 = !DILocation(line: 619, column: 51, scope: !2503)
!2514 = !DILocation(line: 620, column: 21, scope: !2481)
!2515 = !DILocation(line: 620, column: 24, scope: !2481)
!2516 = !DILocation(line: 620, column: 13, scope: !2481)
!2517 = !DILocation(line: 621, column: 25, scope: !2481)
!2518 = !DILocation(line: 621, column: 28, scope: !2481)
!2519 = !DILocation(line: 621, column: 13, scope: !2481)
!2520 = !DILocation(line: 622, column: 28, scope: !2481)
!2521 = !DILocation(line: 622, column: 25, scope: !2481)
!2522 = !DILocation(line: 622, column: 35, scope: !2481)
!2523 = !DILocation(line: 622, column: 38, scope: !2481)
!2524 = !DILocation(line: 622, column: 45, scope: !2481)
!2525 = !DILocation(line: 622, column: 31, scope: !2481)
!2526 = !DILocation(line: 622, column: 51, scope: !2481)
!2527 = !DILocation(line: 622, column: 13, scope: !2481)
!2528 = !DILocation(line: 623, column: 28, scope: !2481)
!2529 = !DILocation(line: 623, column: 25, scope: !2481)
!2530 = !DILocation(line: 623, column: 35, scope: !2481)
!2531 = !DILocation(line: 623, column: 38, scope: !2481)
!2532 = !DILocation(line: 623, column: 45, scope: !2481)
!2533 = !DILocation(line: 623, column: 31, scope: !2481)
!2534 = !DILocation(line: 623, column: 51, scope: !2481)
!2535 = !DILocation(line: 623, column: 13, scope: !2481)
!2536 = !DILocation(line: 624, column: 9, scope: !2481)
!2537 = !DILocation(line: 614, column: 33, scope: !2478)
!2538 = !DILocation(line: 614, column: 9, scope: !2478)
!2539 = distinct !{!2539, !2479, !2540, !199}
!2540 = !DILocation(line: 624, column: 9, scope: !2474)
!2541 = !DILocation(line: 625, column: 5, scope: !2475)
!2542 = !DILocation(line: 612, column: 29, scope: !2470)
!2543 = !DILocation(line: 612, column: 5, scope: !2470)
!2544 = distinct !{!2544, !2472, !2545, !199}
!2545 = !DILocation(line: 625, column: 5, scope: !2467)
!2546 = !DILocation(line: 627, column: 10, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2280, file: !313, line: 627, column: 5)
!2548 = !DILocation(line: 0, scope: !2547)
!2549 = !DILocation(line: 627, column: 19, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !313, line: 627, column: 5)
!2551 = !DILocation(line: 627, column: 5, scope: !2547)
!2552 = !DILocation(line: 629, column: 20, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2550, file: !313, line: 628, column: 5)
!2554 = !DILocation(line: 629, column: 26, scope: !2553)
!2555 = !DILocation(line: 629, column: 30, scope: !2553)
!2556 = !DILocation(line: 629, column: 36, scope: !2553)
!2557 = !DILocation(line: 629, column: 40, scope: !2553)
!2558 = !DILocation(line: 629, column: 50, scope: !2553)
!2559 = !DILocation(line: 629, column: 9, scope: !2553)
!2560 = !DILocation(line: 630, column: 37, scope: !2553)
!2561 = !DILocation(line: 630, column: 20, scope: !2553)
!2562 = !DILocation(line: 630, column: 40, scope: !2553)
!2563 = !DILocation(line: 630, column: 50, scope: !2553)
!2564 = !DILocation(line: 630, column: 54, scope: !2553)
!2565 = !DILocation(line: 630, column: 64, scope: !2553)
!2566 = !DILocation(line: 630, column: 9, scope: !2553)
!2567 = !DILocation(line: 631, column: 20, scope: !2553)
!2568 = !DILocation(line: 631, column: 30, scope: !2553)
!2569 = !DILocation(line: 631, column: 34, scope: !2553)
!2570 = !DILocation(line: 631, column: 44, scope: !2553)
!2571 = !DILocation(line: 631, column: 48, scope: !2553)
!2572 = !DILocation(line: 631, column: 58, scope: !2553)
!2573 = !DILocation(line: 631, column: 9, scope: !2553)
!2574 = !DILocation(line: 632, column: 20, scope: !2553)
!2575 = !DILocation(line: 632, column: 26, scope: !2553)
!2576 = !DILocation(line: 632, column: 30, scope: !2553)
!2577 = !DILocation(line: 632, column: 36, scope: !2553)
!2578 = !DILocation(line: 632, column: 40, scope: !2553)
!2579 = !DILocation(line: 632, column: 50, scope: !2553)
!2580 = !DILocation(line: 632, column: 9, scope: !2553)
!2581 = !DILocation(line: 633, column: 20, scope: !2553)
!2582 = !DILocation(line: 633, column: 26, scope: !2553)
!2583 = !DILocation(line: 633, column: 30, scope: !2553)
!2584 = !DILocation(line: 633, column: 36, scope: !2553)
!2585 = !DILocation(line: 633, column: 40, scope: !2553)
!2586 = !DILocation(line: 633, column: 50, scope: !2553)
!2587 = !DILocation(line: 633, column: 9, scope: !2553)
!2588 = !DILocation(line: 634, column: 5, scope: !2553)
!2589 = !DILocation(line: 627, column: 41, scope: !2550)
!2590 = !DILocation(line: 627, column: 5, scope: !2550)
!2591 = distinct !{!2591, !2551, !2592, !199}
!2592 = !DILocation(line: 634, column: 5, scope: !2547)
!2593 = !DILocation(line: 636, column: 5, scope: !2280)
!2594 = !DILocation(line: 637, column: 1, scope: !2280)
!2595 = distinct !DISubprogram(name: "eccdouble_wrapper", scope: !3, file: !3, line: 9, type: !1689, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2596 = !DILocalVariable(name: "P", arg: 1, scope: !2595, file: !3, line: 9, type: !1557)
!2597 = !DILocation(line: 0, scope: !2595)
!2598 = !DILocation(line: 11, column: 13, scope: !2595)
!2599 = !DILocation(line: 11, column: 3, scope: !2595)
!2600 = !DILocation(line: 13, column: 3, scope: !2595)
!2601 = !DILocation(line: 14, column: 1, scope: !2595)
!2602 = distinct !DISubprogram(name: "eccdouble_wrapper_t", scope: !3, file: !3, line: 19, type: !2603, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{null}
!2605 = !DILocalVariable(name: "P", scope: !2602, file: !3, line: 21, type: !1902)
!2606 = !DILocation(line: 21, column: 19, scope: !2602)
!2607 = !DILocation(line: 21, column: 23, scope: !2602)
!2608 = !DILocation(line: 21, column: 24, scope: !2602)
!2609 = !DILocation(line: 22, column: 13, scope: !2602)
!2610 = !DILocation(line: 22, column: 3, scope: !2602)
!2611 = !DILocation(line: 23, column: 1, scope: !2602)
!2612 = distinct !DISubprogram(name: "fp2div1271", scope: !41, file: !41, line: 400, type: !1300, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2613 = !DILocalVariable(name: "a", arg: 1, scope: !2612, file: !41, line: 400, type: !15)
!2614 = !DILocation(line: 0, scope: !2612)
!2615 = !DILocation(line: 402, column: 15, scope: !2612)
!2616 = !DILocation(line: 402, column: 5, scope: !2612)
!2617 = !DILocation(line: 403, column: 15, scope: !2612)
!2618 = !DILocation(line: 403, column: 5, scope: !2612)
!2619 = !DILocation(line: 404, column: 1, scope: !2612)
!2620 = distinct !DISubprogram(name: "fpdiv1271", scope: !41, file: !41, line: 380, type: !754, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2621 = !DILocalVariable(name: "a", arg: 1, scope: !2620, file: !41, line: 380, type: !14)
!2622 = !DILocation(line: 0, scope: !2620)
!2623 = !DILocalVariable(name: "carry", scope: !2620, file: !41, line: 383, type: !12)
!2624 = !DILocation(line: 386, column: 17, scope: !2620)
!2625 = !DILocation(line: 386, column: 22, scope: !2620)
!2626 = !DILocation(line: 386, column: 14, scope: !2620)
!2627 = !DILocalVariable(name: "mask", scope: !2620, file: !41, line: 382, type: !6)
!2628 = !DILocalVariable(name: "i", scope: !2620, file: !41, line: 384, type: !12)
!2629 = !DILocation(line: 388, column: 10, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2620, file: !41, line: 388, column: 5)
!2631 = !DILocation(line: 0, scope: !2630)
!2632 = !DILocation(line: 388, column: 19, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2630, file: !41, line: 388, column: 5)
!2634 = !DILocation(line: 388, column: 5, scope: !2630)
!2635 = !DILocation(line: 389, column: 9, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !41, line: 389, column: 9)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !41, line: 388, column: 44)
!2638 = !DILocalVariable(name: "tempReg", scope: !2636, file: !41, line: 389, type: !6)
!2639 = !DILocation(line: 0, scope: !2636)
!2640 = !DILocation(line: 390, column: 5, scope: !2637)
!2641 = !DILocation(line: 388, column: 40, scope: !2633)
!2642 = !DILocation(line: 388, column: 5, scope: !2633)
!2643 = distinct !{!2643, !2634, !2644, !199}
!2644 = !DILocation(line: 390, column: 5, scope: !2630)
!2645 = !DILocation(line: 391, column: 5, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2620, file: !41, line: 391, column: 5)
!2647 = !DILocalVariable(name: "tempReg", scope: !2646, file: !41, line: 391, type: !6)
!2648 = !DILocation(line: 0, scope: !2646)
!2649 = !DILocation(line: 393, column: 10, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2620, file: !41, line: 393, column: 5)
!2651 = !DILocation(line: 0, scope: !2650)
!2652 = !DILocation(line: 393, column: 19, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2650, file: !41, line: 393, column: 5)
!2654 = !DILocation(line: 393, column: 5, scope: !2650)
!2655 = !DILocation(line: 394, column: 9, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !41, line: 393, column: 44)
!2657 = !DILocation(line: 395, column: 5, scope: !2656)
!2658 = !DILocation(line: 393, column: 40, scope: !2653)
!2659 = !DILocation(line: 393, column: 5, scope: !2653)
!2660 = distinct !{!2660, !2654, !2661, !199}
!2661 = !DILocation(line: 395, column: 5, scope: !2650)
!2662 = !DILocation(line: 396, column: 26, scope: !2620)
!2663 = !DILocation(line: 396, column: 44, scope: !2620)
!2664 = !DILocation(line: 396, column: 5, scope: !2620)
!2665 = !DILocation(line: 396, column: 23, scope: !2620)
!2666 = !DILocation(line: 397, column: 1, scope: !2620)
