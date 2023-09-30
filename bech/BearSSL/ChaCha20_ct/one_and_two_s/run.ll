; ModuleID = 'run.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.br_union_u32 = type { i32 }
%struct.smack_value = type { i8* }

@br_chacha20_ct_run.CW = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_chacha20_ct_run(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 !dbg !2 {
  %6 = alloca [8 x i32], align 16
  %7 = alloca [3 x i32], align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata i8* %1, metadata !46, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata i32 %2, metadata !47, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata i8* %3, metadata !48, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata i64 %4, metadata !49, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata [8 x i32]* %6, metadata !50, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata [3 x i32]* %7, metadata !55, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i8* %3, metadata !60, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata i64 0, metadata !62, metadata !DIExpression()), !dbg !45
  br label %10, !dbg !63

10:                                               ; preds = %17, %5
  %.01 = phi i64 [ 0, %5 ], [ %18, %17 ], !dbg !65
  call void @llvm.dbg.value(metadata i64 %.01, metadata !62, metadata !DIExpression()), !dbg !45
  %11 = icmp ult i64 %.01, 8, !dbg !66
  br i1 %11, label %12, label %19, !dbg !68

12:                                               ; preds = %10
  %13 = shl i64 %.01, 2, !dbg !69
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !71
  %15 = call i32 @br_dec32le(i8* %14), !dbg !72
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %.01, !dbg !73
  store i32 %15, i32* %16, align 4, !dbg !74
  br label %17, !dbg !75

17:                                               ; preds = %12
  %18 = add i64 %.01, 1, !dbg !76
  call void @llvm.dbg.value(metadata i64 %18, metadata !62, metadata !DIExpression()), !dbg !45
  br label %10, !dbg !77, !llvm.loop !78

19:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 0, metadata !62, metadata !DIExpression()), !dbg !45
  br label %20, !dbg !81

20:                                               ; preds = %27, %19
  %.1 = phi i64 [ 0, %19 ], [ %28, %27 ], !dbg !83
  call void @llvm.dbg.value(metadata i64 %.1, metadata !62, metadata !DIExpression()), !dbg !45
  %21 = icmp ult i64 %.1, 3, !dbg !84
  br i1 %21, label %22, label %29, !dbg !86

22:                                               ; preds = %20
  %23 = shl i64 %.1, 2, !dbg !87
  %24 = getelementptr inbounds i8, i8* %1, i64 %23, !dbg !89
  %25 = call i32 @br_dec32le(i8* %24), !dbg !90
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %.1, !dbg !91
  store i32 %25, i32* %26, align 4, !dbg !92
  br label %27, !dbg !93

27:                                               ; preds = %22
  %28 = add i64 %.1, 1, !dbg !94
  call void @llvm.dbg.value(metadata i64 %28, metadata !62, metadata !DIExpression()), !dbg !45
  br label %20, !dbg !95, !llvm.loop !96

29:                                               ; preds = %20
  br label %30, !dbg !98

30:                                               ; preds = %705, %29
  %.04 = phi i64 [ %4, %29 ], [ %707, %705 ]
  %.03 = phi i8* [ %3, %29 ], [ %706, %705 ], !dbg !45
  %.02 = phi i32 [ %2, %29 ], [ %708, %705 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !47, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata i8* %.03, metadata !60, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata i64 %.04, metadata !49, metadata !DIExpression()), !dbg !45
  %31 = icmp ugt i64 %.04, 0, !dbg !99
  br i1 %31, label %32, label %709, !dbg !98

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i32]* %8, metadata !100, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !106, metadata !DIExpression()), !dbg !110
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !111
  %34 = bitcast i32* %33 to i8*, !dbg !112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([4 x i32]* @br_chacha20_ct_run.CW to i8*), i64 16, i1 false), !dbg !112
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !113
  %36 = bitcast i32* %35 to i8*, !dbg !114
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0, !dbg !114
  %38 = bitcast i32* %37 to i8*, !dbg !114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 %38, i64 32, i1 false), !dbg !114
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !115
  store i32 %.02, i32* %39, align 16, !dbg !116
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !117
  %41 = bitcast i32* %40 to i8*, !dbg !118
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0, !dbg !118
  %43 = bitcast i32* %42 to i8*, !dbg !118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %43, i64 12, i1 false), !dbg !118
  call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()), !dbg !121
  br label %44, !dbg !122

44:                                               ; preds = %639, %32
  %.0 = phi i32 [ 0, %32 ], [ %640, %639 ], !dbg !124
  call void @llvm.dbg.value(metadata i32 %.0, metadata !119, metadata !DIExpression()), !dbg !121
  %45 = icmp slt i32 %.0, 10, !dbg !125
  br i1 %45, label %46, label %641, !dbg !127

46:                                               ; preds = %44
  br label %47, !dbg !128

47:                                               ; preds = %46
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !130
  %49 = load i32, i32* %48, align 16, !dbg !130
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !130
  %51 = load i32, i32* %50, align 16, !dbg !130
  %52 = add i32 %51, %49, !dbg !130
  store i32 %52, i32* %50, align 16, !dbg !130
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !130
  %54 = load i32, i32* %53, align 16, !dbg !130
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !130
  %56 = load i32, i32* %55, align 16, !dbg !130
  %57 = xor i32 %56, %54, !dbg !130
  store i32 %57, i32* %55, align 16, !dbg !130
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !130
  %59 = load i32, i32* %58, align 16, !dbg !130
  %60 = shl i32 %59, 16, !dbg !130
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !130
  %62 = load i32, i32* %61, align 16, !dbg !130
  %63 = lshr i32 %62, 16, !dbg !130
  %64 = or i32 %60, %63, !dbg !130
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !130
  store i32 %64, i32* %65, align 16, !dbg !130
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !130
  %67 = load i32, i32* %66, align 16, !dbg !130
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !130
  %69 = load i32, i32* %68, align 16, !dbg !130
  %70 = add i32 %69, %67, !dbg !130
  store i32 %70, i32* %68, align 16, !dbg !130
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !130
  %72 = load i32, i32* %71, align 16, !dbg !130
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !130
  %74 = load i32, i32* %73, align 16, !dbg !130
  %75 = xor i32 %74, %72, !dbg !130
  store i32 %75, i32* %73, align 16, !dbg !130
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !130
  %77 = load i32, i32* %76, align 16, !dbg !130
  %78 = shl i32 %77, 12, !dbg !130
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !130
  %80 = load i32, i32* %79, align 16, !dbg !130
  %81 = lshr i32 %80, 20, !dbg !130
  %82 = or i32 %78, %81, !dbg !130
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !130
  store i32 %82, i32* %83, align 16, !dbg !130
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !130
  %85 = load i32, i32* %84, align 16, !dbg !130
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !130
  %87 = load i32, i32* %86, align 16, !dbg !130
  %88 = add i32 %87, %85, !dbg !130
  store i32 %88, i32* %86, align 16, !dbg !130
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !130
  %90 = load i32, i32* %89, align 16, !dbg !130
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !130
  %92 = load i32, i32* %91, align 16, !dbg !130
  %93 = xor i32 %92, %90, !dbg !130
  store i32 %93, i32* %91, align 16, !dbg !130
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !130
  %95 = load i32, i32* %94, align 16, !dbg !130
  %96 = shl i32 %95, 8, !dbg !130
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !130
  %98 = load i32, i32* %97, align 16, !dbg !130
  %99 = lshr i32 %98, 24, !dbg !130
  %100 = or i32 %96, %99, !dbg !130
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !130
  store i32 %100, i32* %101, align 16, !dbg !130
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !130
  %103 = load i32, i32* %102, align 16, !dbg !130
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !130
  %105 = load i32, i32* %104, align 16, !dbg !130
  %106 = add i32 %105, %103, !dbg !130
  store i32 %106, i32* %104, align 16, !dbg !130
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !130
  %108 = load i32, i32* %107, align 16, !dbg !130
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !130
  %110 = load i32, i32* %109, align 16, !dbg !130
  %111 = xor i32 %110, %108, !dbg !130
  store i32 %111, i32* %109, align 16, !dbg !130
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !130
  %113 = load i32, i32* %112, align 16, !dbg !130
  %114 = shl i32 %113, 7, !dbg !130
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !130
  %116 = load i32, i32* %115, align 16, !dbg !130
  %117 = lshr i32 %116, 25, !dbg !130
  %118 = or i32 %114, %117, !dbg !130
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !130
  store i32 %118, i32* %119, align 16, !dbg !130
  br label %120, !dbg !130

120:                                              ; preds = %47
  br label %121, !dbg !132

121:                                              ; preds = %120
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !133
  %123 = load i32, i32* %122, align 4, !dbg !133
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !133
  %125 = load i32, i32* %124, align 4, !dbg !133
  %126 = add i32 %125, %123, !dbg !133
  store i32 %126, i32* %124, align 4, !dbg !133
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !133
  %128 = load i32, i32* %127, align 4, !dbg !133
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !133
  %130 = load i32, i32* %129, align 4, !dbg !133
  %131 = xor i32 %130, %128, !dbg !133
  store i32 %131, i32* %129, align 4, !dbg !133
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !133
  %133 = load i32, i32* %132, align 4, !dbg !133
  %134 = shl i32 %133, 16, !dbg !133
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !133
  %136 = load i32, i32* %135, align 4, !dbg !133
  %137 = lshr i32 %136, 16, !dbg !133
  %138 = or i32 %134, %137, !dbg !133
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !133
  store i32 %138, i32* %139, align 4, !dbg !133
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !133
  %141 = load i32, i32* %140, align 4, !dbg !133
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !133
  %143 = load i32, i32* %142, align 4, !dbg !133
  %144 = add i32 %143, %141, !dbg !133
  store i32 %144, i32* %142, align 4, !dbg !133
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !133
  %146 = load i32, i32* %145, align 4, !dbg !133
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !133
  %148 = load i32, i32* %147, align 4, !dbg !133
  %149 = xor i32 %148, %146, !dbg !133
  store i32 %149, i32* %147, align 4, !dbg !133
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !133
  %151 = load i32, i32* %150, align 4, !dbg !133
  %152 = shl i32 %151, 12, !dbg !133
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !133
  %154 = load i32, i32* %153, align 4, !dbg !133
  %155 = lshr i32 %154, 20, !dbg !133
  %156 = or i32 %152, %155, !dbg !133
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !133
  store i32 %156, i32* %157, align 4, !dbg !133
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !133
  %159 = load i32, i32* %158, align 4, !dbg !133
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !133
  %161 = load i32, i32* %160, align 4, !dbg !133
  %162 = add i32 %161, %159, !dbg !133
  store i32 %162, i32* %160, align 4, !dbg !133
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !133
  %164 = load i32, i32* %163, align 4, !dbg !133
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !133
  %166 = load i32, i32* %165, align 4, !dbg !133
  %167 = xor i32 %166, %164, !dbg !133
  store i32 %167, i32* %165, align 4, !dbg !133
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !133
  %169 = load i32, i32* %168, align 4, !dbg !133
  %170 = shl i32 %169, 8, !dbg !133
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !133
  %172 = load i32, i32* %171, align 4, !dbg !133
  %173 = lshr i32 %172, 24, !dbg !133
  %174 = or i32 %170, %173, !dbg !133
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !133
  store i32 %174, i32* %175, align 4, !dbg !133
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !133
  %177 = load i32, i32* %176, align 4, !dbg !133
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !133
  %179 = load i32, i32* %178, align 4, !dbg !133
  %180 = add i32 %179, %177, !dbg !133
  store i32 %180, i32* %178, align 4, !dbg !133
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !133
  %182 = load i32, i32* %181, align 4, !dbg !133
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !133
  %184 = load i32, i32* %183, align 4, !dbg !133
  %185 = xor i32 %184, %182, !dbg !133
  store i32 %185, i32* %183, align 4, !dbg !133
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !133
  %187 = load i32, i32* %186, align 4, !dbg !133
  %188 = shl i32 %187, 7, !dbg !133
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !133
  %190 = load i32, i32* %189, align 4, !dbg !133
  %191 = lshr i32 %190, 25, !dbg !133
  %192 = or i32 %188, %191, !dbg !133
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !133
  store i32 %192, i32* %193, align 4, !dbg !133
  br label %194, !dbg !133

194:                                              ; preds = %121
  br label %195, !dbg !135

195:                                              ; preds = %194
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !136
  %197 = load i32, i32* %196, align 8, !dbg !136
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !136
  %199 = load i32, i32* %198, align 8, !dbg !136
  %200 = add i32 %199, %197, !dbg !136
  store i32 %200, i32* %198, align 8, !dbg !136
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !136
  %202 = load i32, i32* %201, align 8, !dbg !136
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !136
  %204 = load i32, i32* %203, align 8, !dbg !136
  %205 = xor i32 %204, %202, !dbg !136
  store i32 %205, i32* %203, align 8, !dbg !136
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !136
  %207 = load i32, i32* %206, align 8, !dbg !136
  %208 = shl i32 %207, 16, !dbg !136
  %209 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !136
  %210 = load i32, i32* %209, align 8, !dbg !136
  %211 = lshr i32 %210, 16, !dbg !136
  %212 = or i32 %208, %211, !dbg !136
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !136
  store i32 %212, i32* %213, align 8, !dbg !136
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !136
  %215 = load i32, i32* %214, align 8, !dbg !136
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !136
  %217 = load i32, i32* %216, align 8, !dbg !136
  %218 = add i32 %217, %215, !dbg !136
  store i32 %218, i32* %216, align 8, !dbg !136
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !136
  %220 = load i32, i32* %219, align 8, !dbg !136
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !136
  %222 = load i32, i32* %221, align 8, !dbg !136
  %223 = xor i32 %222, %220, !dbg !136
  store i32 %223, i32* %221, align 8, !dbg !136
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !136
  %225 = load i32, i32* %224, align 8, !dbg !136
  %226 = shl i32 %225, 12, !dbg !136
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !136
  %228 = load i32, i32* %227, align 8, !dbg !136
  %229 = lshr i32 %228, 20, !dbg !136
  %230 = or i32 %226, %229, !dbg !136
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !136
  store i32 %230, i32* %231, align 8, !dbg !136
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !136
  %233 = load i32, i32* %232, align 8, !dbg !136
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !136
  %235 = load i32, i32* %234, align 8, !dbg !136
  %236 = add i32 %235, %233, !dbg !136
  store i32 %236, i32* %234, align 8, !dbg !136
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !136
  %238 = load i32, i32* %237, align 8, !dbg !136
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !136
  %240 = load i32, i32* %239, align 8, !dbg !136
  %241 = xor i32 %240, %238, !dbg !136
  store i32 %241, i32* %239, align 8, !dbg !136
  %242 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !136
  %243 = load i32, i32* %242, align 8, !dbg !136
  %244 = shl i32 %243, 8, !dbg !136
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !136
  %246 = load i32, i32* %245, align 8, !dbg !136
  %247 = lshr i32 %246, 24, !dbg !136
  %248 = or i32 %244, %247, !dbg !136
  %249 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !136
  store i32 %248, i32* %249, align 8, !dbg !136
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !136
  %251 = load i32, i32* %250, align 8, !dbg !136
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !136
  %253 = load i32, i32* %252, align 8, !dbg !136
  %254 = add i32 %253, %251, !dbg !136
  store i32 %254, i32* %252, align 8, !dbg !136
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !136
  %256 = load i32, i32* %255, align 8, !dbg !136
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !136
  %258 = load i32, i32* %257, align 8, !dbg !136
  %259 = xor i32 %258, %256, !dbg !136
  store i32 %259, i32* %257, align 8, !dbg !136
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !136
  %261 = load i32, i32* %260, align 8, !dbg !136
  %262 = shl i32 %261, 7, !dbg !136
  %263 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !136
  %264 = load i32, i32* %263, align 8, !dbg !136
  %265 = lshr i32 %264, 25, !dbg !136
  %266 = or i32 %262, %265, !dbg !136
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !136
  store i32 %266, i32* %267, align 8, !dbg !136
  br label %268, !dbg !136

268:                                              ; preds = %195
  br label %269, !dbg !138

269:                                              ; preds = %268
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !139
  %271 = load i32, i32* %270, align 4, !dbg !139
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !139
  %273 = load i32, i32* %272, align 4, !dbg !139
  %274 = add i32 %273, %271, !dbg !139
  store i32 %274, i32* %272, align 4, !dbg !139
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !139
  %276 = load i32, i32* %275, align 4, !dbg !139
  %277 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !139
  %278 = load i32, i32* %277, align 4, !dbg !139
  %279 = xor i32 %278, %276, !dbg !139
  store i32 %279, i32* %277, align 4, !dbg !139
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !139
  %281 = load i32, i32* %280, align 4, !dbg !139
  %282 = shl i32 %281, 16, !dbg !139
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !139
  %284 = load i32, i32* %283, align 4, !dbg !139
  %285 = lshr i32 %284, 16, !dbg !139
  %286 = or i32 %282, %285, !dbg !139
  %287 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !139
  store i32 %286, i32* %287, align 4, !dbg !139
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !139
  %289 = load i32, i32* %288, align 4, !dbg !139
  %290 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !139
  %291 = load i32, i32* %290, align 4, !dbg !139
  %292 = add i32 %291, %289, !dbg !139
  store i32 %292, i32* %290, align 4, !dbg !139
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !139
  %294 = load i32, i32* %293, align 4, !dbg !139
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !139
  %296 = load i32, i32* %295, align 4, !dbg !139
  %297 = xor i32 %296, %294, !dbg !139
  store i32 %297, i32* %295, align 4, !dbg !139
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !139
  %299 = load i32, i32* %298, align 4, !dbg !139
  %300 = shl i32 %299, 12, !dbg !139
  %301 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !139
  %302 = load i32, i32* %301, align 4, !dbg !139
  %303 = lshr i32 %302, 20, !dbg !139
  %304 = or i32 %300, %303, !dbg !139
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !139
  store i32 %304, i32* %305, align 4, !dbg !139
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !139
  %307 = load i32, i32* %306, align 4, !dbg !139
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !139
  %309 = load i32, i32* %308, align 4, !dbg !139
  %310 = add i32 %309, %307, !dbg !139
  store i32 %310, i32* %308, align 4, !dbg !139
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !139
  %312 = load i32, i32* %311, align 4, !dbg !139
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !139
  %314 = load i32, i32* %313, align 4, !dbg !139
  %315 = xor i32 %314, %312, !dbg !139
  store i32 %315, i32* %313, align 4, !dbg !139
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !139
  %317 = load i32, i32* %316, align 4, !dbg !139
  %318 = shl i32 %317, 8, !dbg !139
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !139
  %320 = load i32, i32* %319, align 4, !dbg !139
  %321 = lshr i32 %320, 24, !dbg !139
  %322 = or i32 %318, %321, !dbg !139
  %323 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !139
  store i32 %322, i32* %323, align 4, !dbg !139
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !139
  %325 = load i32, i32* %324, align 4, !dbg !139
  %326 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !139
  %327 = load i32, i32* %326, align 4, !dbg !139
  %328 = add i32 %327, %325, !dbg !139
  store i32 %328, i32* %326, align 4, !dbg !139
  %329 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !139
  %330 = load i32, i32* %329, align 4, !dbg !139
  %331 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !139
  %332 = load i32, i32* %331, align 4, !dbg !139
  %333 = xor i32 %332, %330, !dbg !139
  store i32 %333, i32* %331, align 4, !dbg !139
  %334 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !139
  %335 = load i32, i32* %334, align 4, !dbg !139
  %336 = shl i32 %335, 7, !dbg !139
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !139
  %338 = load i32, i32* %337, align 4, !dbg !139
  %339 = lshr i32 %338, 25, !dbg !139
  %340 = or i32 %336, %339, !dbg !139
  %341 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !139
  store i32 %340, i32* %341, align 4, !dbg !139
  br label %342, !dbg !139

342:                                              ; preds = %269
  br label %343, !dbg !141

343:                                              ; preds = %342
  %344 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !142
  %345 = load i32, i32* %344, align 4, !dbg !142
  %346 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !142
  %347 = load i32, i32* %346, align 16, !dbg !142
  %348 = add i32 %347, %345, !dbg !142
  store i32 %348, i32* %346, align 16, !dbg !142
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !142
  %350 = load i32, i32* %349, align 16, !dbg !142
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !142
  %352 = load i32, i32* %351, align 4, !dbg !142
  %353 = xor i32 %352, %350, !dbg !142
  store i32 %353, i32* %351, align 4, !dbg !142
  %354 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !142
  %355 = load i32, i32* %354, align 4, !dbg !142
  %356 = shl i32 %355, 16, !dbg !142
  %357 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !142
  %358 = load i32, i32* %357, align 4, !dbg !142
  %359 = lshr i32 %358, 16, !dbg !142
  %360 = or i32 %356, %359, !dbg !142
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !142
  store i32 %360, i32* %361, align 4, !dbg !142
  %362 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !142
  %363 = load i32, i32* %362, align 4, !dbg !142
  %364 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !142
  %365 = load i32, i32* %364, align 8, !dbg !142
  %366 = add i32 %365, %363, !dbg !142
  store i32 %366, i32* %364, align 8, !dbg !142
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !142
  %368 = load i32, i32* %367, align 8, !dbg !142
  %369 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !142
  %370 = load i32, i32* %369, align 4, !dbg !142
  %371 = xor i32 %370, %368, !dbg !142
  store i32 %371, i32* %369, align 4, !dbg !142
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !142
  %373 = load i32, i32* %372, align 4, !dbg !142
  %374 = shl i32 %373, 12, !dbg !142
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !142
  %376 = load i32, i32* %375, align 4, !dbg !142
  %377 = lshr i32 %376, 20, !dbg !142
  %378 = or i32 %374, %377, !dbg !142
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !142
  store i32 %378, i32* %379, align 4, !dbg !142
  %380 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !142
  %381 = load i32, i32* %380, align 4, !dbg !142
  %382 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !142
  %383 = load i32, i32* %382, align 16, !dbg !142
  %384 = add i32 %383, %381, !dbg !142
  store i32 %384, i32* %382, align 16, !dbg !142
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !142
  %386 = load i32, i32* %385, align 16, !dbg !142
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !142
  %388 = load i32, i32* %387, align 4, !dbg !142
  %389 = xor i32 %388, %386, !dbg !142
  store i32 %389, i32* %387, align 4, !dbg !142
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !142
  %391 = load i32, i32* %390, align 4, !dbg !142
  %392 = shl i32 %391, 8, !dbg !142
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !142
  %394 = load i32, i32* %393, align 4, !dbg !142
  %395 = lshr i32 %394, 24, !dbg !142
  %396 = or i32 %392, %395, !dbg !142
  %397 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !142
  store i32 %396, i32* %397, align 4, !dbg !142
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !142
  %399 = load i32, i32* %398, align 4, !dbg !142
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !142
  %401 = load i32, i32* %400, align 8, !dbg !142
  %402 = add i32 %401, %399, !dbg !142
  store i32 %402, i32* %400, align 8, !dbg !142
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !142
  %404 = load i32, i32* %403, align 8, !dbg !142
  %405 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !142
  %406 = load i32, i32* %405, align 4, !dbg !142
  %407 = xor i32 %406, %404, !dbg !142
  store i32 %407, i32* %405, align 4, !dbg !142
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !142
  %409 = load i32, i32* %408, align 4, !dbg !142
  %410 = shl i32 %409, 7, !dbg !142
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !142
  %412 = load i32, i32* %411, align 4, !dbg !142
  %413 = lshr i32 %412, 25, !dbg !142
  %414 = or i32 %410, %413, !dbg !142
  %415 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !142
  store i32 %414, i32* %415, align 4, !dbg !142
  br label %416, !dbg !142

416:                                              ; preds = %343
  br label %417, !dbg !144

417:                                              ; preds = %416
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !145
  %419 = load i32, i32* %418, align 8, !dbg !145
  %420 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !145
  %421 = load i32, i32* %420, align 4, !dbg !145
  %422 = add i32 %421, %419, !dbg !145
  store i32 %422, i32* %420, align 4, !dbg !145
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !145
  %424 = load i32, i32* %423, align 4, !dbg !145
  %425 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !145
  %426 = load i32, i32* %425, align 16, !dbg !145
  %427 = xor i32 %426, %424, !dbg !145
  store i32 %427, i32* %425, align 16, !dbg !145
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !145
  %429 = load i32, i32* %428, align 16, !dbg !145
  %430 = shl i32 %429, 16, !dbg !145
  %431 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !145
  %432 = load i32, i32* %431, align 16, !dbg !145
  %433 = lshr i32 %432, 16, !dbg !145
  %434 = or i32 %430, %433, !dbg !145
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !145
  store i32 %434, i32* %435, align 16, !dbg !145
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !145
  %437 = load i32, i32* %436, align 16, !dbg !145
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !145
  %439 = load i32, i32* %438, align 4, !dbg !145
  %440 = add i32 %439, %437, !dbg !145
  store i32 %440, i32* %438, align 4, !dbg !145
  %441 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !145
  %442 = load i32, i32* %441, align 4, !dbg !145
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !145
  %444 = load i32, i32* %443, align 8, !dbg !145
  %445 = xor i32 %444, %442, !dbg !145
  store i32 %445, i32* %443, align 8, !dbg !145
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !145
  %447 = load i32, i32* %446, align 8, !dbg !145
  %448 = shl i32 %447, 12, !dbg !145
  %449 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !145
  %450 = load i32, i32* %449, align 8, !dbg !145
  %451 = lshr i32 %450, 20, !dbg !145
  %452 = or i32 %448, %451, !dbg !145
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !145
  store i32 %452, i32* %453, align 8, !dbg !145
  %454 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !145
  %455 = load i32, i32* %454, align 8, !dbg !145
  %456 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !145
  %457 = load i32, i32* %456, align 4, !dbg !145
  %458 = add i32 %457, %455, !dbg !145
  store i32 %458, i32* %456, align 4, !dbg !145
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !145
  %460 = load i32, i32* %459, align 4, !dbg !145
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !145
  %462 = load i32, i32* %461, align 16, !dbg !145
  %463 = xor i32 %462, %460, !dbg !145
  store i32 %463, i32* %461, align 16, !dbg !145
  %464 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !145
  %465 = load i32, i32* %464, align 16, !dbg !145
  %466 = shl i32 %465, 8, !dbg !145
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !145
  %468 = load i32, i32* %467, align 16, !dbg !145
  %469 = lshr i32 %468, 24, !dbg !145
  %470 = or i32 %466, %469, !dbg !145
  %471 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !145
  store i32 %470, i32* %471, align 16, !dbg !145
  %472 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !145
  %473 = load i32, i32* %472, align 16, !dbg !145
  %474 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !145
  %475 = load i32, i32* %474, align 4, !dbg !145
  %476 = add i32 %475, %473, !dbg !145
  store i32 %476, i32* %474, align 4, !dbg !145
  %477 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !145
  %478 = load i32, i32* %477, align 4, !dbg !145
  %479 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !145
  %480 = load i32, i32* %479, align 8, !dbg !145
  %481 = xor i32 %480, %478, !dbg !145
  store i32 %481, i32* %479, align 8, !dbg !145
  %482 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !145
  %483 = load i32, i32* %482, align 8, !dbg !145
  %484 = shl i32 %483, 7, !dbg !145
  %485 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !145
  %486 = load i32, i32* %485, align 8, !dbg !145
  %487 = lshr i32 %486, 25, !dbg !145
  %488 = or i32 %484, %487, !dbg !145
  %489 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !145
  store i32 %488, i32* %489, align 8, !dbg !145
  br label %490, !dbg !145

490:                                              ; preds = %417
  br label %491, !dbg !147

491:                                              ; preds = %490
  %492 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !148
  %493 = load i32, i32* %492, align 4, !dbg !148
  %494 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !148
  %495 = load i32, i32* %494, align 8, !dbg !148
  %496 = add i32 %495, %493, !dbg !148
  store i32 %496, i32* %494, align 8, !dbg !148
  %497 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !148
  %498 = load i32, i32* %497, align 8, !dbg !148
  %499 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !148
  %500 = load i32, i32* %499, align 4, !dbg !148
  %501 = xor i32 %500, %498, !dbg !148
  store i32 %501, i32* %499, align 4, !dbg !148
  %502 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !148
  %503 = load i32, i32* %502, align 4, !dbg !148
  %504 = shl i32 %503, 16, !dbg !148
  %505 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !148
  %506 = load i32, i32* %505, align 4, !dbg !148
  %507 = lshr i32 %506, 16, !dbg !148
  %508 = or i32 %504, %507, !dbg !148
  %509 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !148
  store i32 %508, i32* %509, align 4, !dbg !148
  %510 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !148
  %511 = load i32, i32* %510, align 4, !dbg !148
  %512 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !148
  %513 = load i32, i32* %512, align 16, !dbg !148
  %514 = add i32 %513, %511, !dbg !148
  store i32 %514, i32* %512, align 16, !dbg !148
  %515 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !148
  %516 = load i32, i32* %515, align 16, !dbg !148
  %517 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !148
  %518 = load i32, i32* %517, align 4, !dbg !148
  %519 = xor i32 %518, %516, !dbg !148
  store i32 %519, i32* %517, align 4, !dbg !148
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !148
  %521 = load i32, i32* %520, align 4, !dbg !148
  %522 = shl i32 %521, 12, !dbg !148
  %523 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !148
  %524 = load i32, i32* %523, align 4, !dbg !148
  %525 = lshr i32 %524, 20, !dbg !148
  %526 = or i32 %522, %525, !dbg !148
  %527 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !148
  store i32 %526, i32* %527, align 4, !dbg !148
  %528 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !148
  %529 = load i32, i32* %528, align 4, !dbg !148
  %530 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !148
  %531 = load i32, i32* %530, align 8, !dbg !148
  %532 = add i32 %531, %529, !dbg !148
  store i32 %532, i32* %530, align 8, !dbg !148
  %533 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !148
  %534 = load i32, i32* %533, align 8, !dbg !148
  %535 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !148
  %536 = load i32, i32* %535, align 4, !dbg !148
  %537 = xor i32 %536, %534, !dbg !148
  store i32 %537, i32* %535, align 4, !dbg !148
  %538 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !148
  %539 = load i32, i32* %538, align 4, !dbg !148
  %540 = shl i32 %539, 8, !dbg !148
  %541 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !148
  %542 = load i32, i32* %541, align 4, !dbg !148
  %543 = lshr i32 %542, 24, !dbg !148
  %544 = or i32 %540, %543, !dbg !148
  %545 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !148
  store i32 %544, i32* %545, align 4, !dbg !148
  %546 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !148
  %547 = load i32, i32* %546, align 4, !dbg !148
  %548 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !148
  %549 = load i32, i32* %548, align 16, !dbg !148
  %550 = add i32 %549, %547, !dbg !148
  store i32 %550, i32* %548, align 16, !dbg !148
  %551 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !148
  %552 = load i32, i32* %551, align 16, !dbg !148
  %553 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !148
  %554 = load i32, i32* %553, align 4, !dbg !148
  %555 = xor i32 %554, %552, !dbg !148
  store i32 %555, i32* %553, align 4, !dbg !148
  %556 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !148
  %557 = load i32, i32* %556, align 4, !dbg !148
  %558 = shl i32 %557, 7, !dbg !148
  %559 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !148
  %560 = load i32, i32* %559, align 4, !dbg !148
  %561 = lshr i32 %560, 25, !dbg !148
  %562 = or i32 %558, %561, !dbg !148
  %563 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !148
  store i32 %562, i32* %563, align 4, !dbg !148
  br label %564, !dbg !148

564:                                              ; preds = %491
  br label %565, !dbg !150

565:                                              ; preds = %564
  %566 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !151
  %567 = load i32, i32* %566, align 16, !dbg !151
  %568 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !151
  %569 = load i32, i32* %568, align 4, !dbg !151
  %570 = add i32 %569, %567, !dbg !151
  store i32 %570, i32* %568, align 4, !dbg !151
  %571 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !151
  %572 = load i32, i32* %571, align 4, !dbg !151
  %573 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !151
  %574 = load i32, i32* %573, align 8, !dbg !151
  %575 = xor i32 %574, %572, !dbg !151
  store i32 %575, i32* %573, align 8, !dbg !151
  %576 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !151
  %577 = load i32, i32* %576, align 8, !dbg !151
  %578 = shl i32 %577, 16, !dbg !151
  %579 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !151
  %580 = load i32, i32* %579, align 8, !dbg !151
  %581 = lshr i32 %580, 16, !dbg !151
  %582 = or i32 %578, %581, !dbg !151
  %583 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !151
  store i32 %582, i32* %583, align 8, !dbg !151
  %584 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !151
  %585 = load i32, i32* %584, align 8, !dbg !151
  %586 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !151
  %587 = load i32, i32* %586, align 4, !dbg !151
  %588 = add i32 %587, %585, !dbg !151
  store i32 %588, i32* %586, align 4, !dbg !151
  %589 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !151
  %590 = load i32, i32* %589, align 4, !dbg !151
  %591 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !151
  %592 = load i32, i32* %591, align 16, !dbg !151
  %593 = xor i32 %592, %590, !dbg !151
  store i32 %593, i32* %591, align 16, !dbg !151
  %594 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !151
  %595 = load i32, i32* %594, align 16, !dbg !151
  %596 = shl i32 %595, 12, !dbg !151
  %597 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !151
  %598 = load i32, i32* %597, align 16, !dbg !151
  %599 = lshr i32 %598, 20, !dbg !151
  %600 = or i32 %596, %599, !dbg !151
  %601 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !151
  store i32 %600, i32* %601, align 16, !dbg !151
  %602 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !151
  %603 = load i32, i32* %602, align 16, !dbg !151
  %604 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !151
  %605 = load i32, i32* %604, align 4, !dbg !151
  %606 = add i32 %605, %603, !dbg !151
  store i32 %606, i32* %604, align 4, !dbg !151
  %607 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !151
  %608 = load i32, i32* %607, align 4, !dbg !151
  %609 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !151
  %610 = load i32, i32* %609, align 8, !dbg !151
  %611 = xor i32 %610, %608, !dbg !151
  store i32 %611, i32* %609, align 8, !dbg !151
  %612 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !151
  %613 = load i32, i32* %612, align 8, !dbg !151
  %614 = shl i32 %613, 8, !dbg !151
  %615 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !151
  %616 = load i32, i32* %615, align 8, !dbg !151
  %617 = lshr i32 %616, 24, !dbg !151
  %618 = or i32 %614, %617, !dbg !151
  %619 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !151
  store i32 %618, i32* %619, align 8, !dbg !151
  %620 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !151
  %621 = load i32, i32* %620, align 8, !dbg !151
  %622 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !151
  %623 = load i32, i32* %622, align 4, !dbg !151
  %624 = add i32 %623, %621, !dbg !151
  store i32 %624, i32* %622, align 4, !dbg !151
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !151
  %626 = load i32, i32* %625, align 4, !dbg !151
  %627 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !151
  %628 = load i32, i32* %627, align 16, !dbg !151
  %629 = xor i32 %628, %626, !dbg !151
  store i32 %629, i32* %627, align 16, !dbg !151
  %630 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !151
  %631 = load i32, i32* %630, align 16, !dbg !151
  %632 = shl i32 %631, 7, !dbg !151
  %633 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !151
  %634 = load i32, i32* %633, align 16, !dbg !151
  %635 = lshr i32 %634, 25, !dbg !151
  %636 = or i32 %632, %635, !dbg !151
  %637 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !151
  store i32 %636, i32* %637, align 16, !dbg !151
  br label %638, !dbg !151

638:                                              ; preds = %565
  br label %639, !dbg !153

639:                                              ; preds = %638
  %640 = add nsw i32 %.0, 1, !dbg !154
  call void @llvm.dbg.value(metadata i32 %640, metadata !119, metadata !DIExpression()), !dbg !121
  br label %44, !dbg !155, !llvm.loop !156

641:                                              ; preds = %44
  call void @llvm.dbg.value(metadata i64 0, metadata !62, metadata !DIExpression()), !dbg !45
  br label %642, !dbg !158

642:                                              ; preds = %652, %641
  %.2 = phi i64 [ 0, %641 ], [ %653, %652 ], !dbg !160
  call void @llvm.dbg.value(metadata i64 %.2, metadata !62, metadata !DIExpression()), !dbg !45
  %643 = icmp ult i64 %.2, 4, !dbg !161
  br i1 %643, label %644, label %654, !dbg !163

644:                                              ; preds = %642
  %645 = shl i64 %.2, 2, !dbg !164
  %646 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %645, !dbg !166
  %647 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.2, !dbg !167
  %648 = load i32, i32* %647, align 4, !dbg !167
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* @br_chacha20_ct_run.CW, i64 0, i64 %.2, !dbg !168
  %650 = load i32, i32* %649, align 4, !dbg !168
  %651 = add i32 %648, %650, !dbg !169
  call void @br_enc32le(i8* %646, i32 %651), !dbg !170
  br label %652, !dbg !171

652:                                              ; preds = %644
  %653 = add i64 %.2, 1, !dbg !172
  call void @llvm.dbg.value(metadata i64 %653, metadata !62, metadata !DIExpression()), !dbg !45
  br label %642, !dbg !173, !llvm.loop !174

654:                                              ; preds = %642
  call void @llvm.dbg.value(metadata i64 4, metadata !62, metadata !DIExpression()), !dbg !45
  br label %655, !dbg !176

655:                                              ; preds = %666, %654
  %.3 = phi i64 [ 4, %654 ], [ %667, %666 ], !dbg !178
  call void @llvm.dbg.value(metadata i64 %.3, metadata !62, metadata !DIExpression()), !dbg !45
  %656 = icmp ult i64 %.3, 12, !dbg !179
  br i1 %656, label %657, label %668, !dbg !181

657:                                              ; preds = %655
  %658 = shl i64 %.3, 2, !dbg !182
  %659 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %658, !dbg !184
  %660 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.3, !dbg !185
  %661 = load i32, i32* %660, align 4, !dbg !185
  %662 = sub i64 %.3, 4, !dbg !186
  %663 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %662, !dbg !187
  %664 = load i32, i32* %663, align 4, !dbg !187
  %665 = add i32 %661, %664, !dbg !188
  call void @br_enc32le(i8* %659, i32 %665), !dbg !189
  br label %666, !dbg !190

666:                                              ; preds = %657
  %667 = add i64 %.3, 1, !dbg !191
  call void @llvm.dbg.value(metadata i64 %667, metadata !62, metadata !DIExpression()), !dbg !45
  br label %655, !dbg !192, !llvm.loop !193

668:                                              ; preds = %655
  %669 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 48, !dbg !195
  %670 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !196
  %671 = load i32, i32* %670, align 16, !dbg !196
  %672 = add i32 %671, %.02, !dbg !197
  call void @br_enc32le(i8* %669, i32 %672), !dbg !198
  call void @llvm.dbg.value(metadata i64 13, metadata !62, metadata !DIExpression()), !dbg !45
  br label %673, !dbg !199

673:                                              ; preds = %684, %668
  %.4 = phi i64 [ 13, %668 ], [ %685, %684 ], !dbg !201
  call void @llvm.dbg.value(metadata i64 %.4, metadata !62, metadata !DIExpression()), !dbg !45
  %674 = icmp ult i64 %.4, 16, !dbg !202
  br i1 %674, label %675, label %686, !dbg !204

675:                                              ; preds = %673
  %676 = shl i64 %.4, 2, !dbg !205
  %677 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %676, !dbg !207
  %678 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.4, !dbg !208
  %679 = load i32, i32* %678, align 4, !dbg !208
  %680 = sub i64 %.4, 13, !dbg !209
  %681 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %680, !dbg !210
  %682 = load i32, i32* %681, align 4, !dbg !210
  %683 = add i32 %679, %682, !dbg !211
  call void @br_enc32le(i8* %677, i32 %683), !dbg !212
  br label %684, !dbg !213

684:                                              ; preds = %675
  %685 = add i64 %.4, 1, !dbg !214
  call void @llvm.dbg.value(metadata i64 %685, metadata !62, metadata !DIExpression()), !dbg !45
  br label %673, !dbg !215, !llvm.loop !216

686:                                              ; preds = %673
  %687 = icmp ult i64 %.04, 64, !dbg !218
  br i1 %687, label %688, label %689, !dbg !219

688:                                              ; preds = %686
  br label %690, !dbg !219

689:                                              ; preds = %686
  br label %690, !dbg !219

690:                                              ; preds = %689, %688
  %691 = phi i64 [ %.04, %688 ], [ 64, %689 ], !dbg !219
  call void @llvm.dbg.value(metadata i64 %691, metadata !220, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i64 0, metadata !62, metadata !DIExpression()), !dbg !45
  br label %692, !dbg !221

692:                                              ; preds = %703, %690
  %.5 = phi i64 [ 0, %690 ], [ %704, %703 ], !dbg !223
  call void @llvm.dbg.value(metadata i64 %.5, metadata !62, metadata !DIExpression()), !dbg !45
  %693 = icmp ult i64 %.5, %691, !dbg !224
  br i1 %693, label %694, label %705, !dbg !226

694:                                              ; preds = %692
  %695 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %.5, !dbg !227
  %696 = load i8, i8* %695, align 1, !dbg !227
  %697 = zext i8 %696 to i32, !dbg !227
  %698 = getelementptr inbounds i8, i8* %.03, i64 %.5, !dbg !229
  %699 = load i8, i8* %698, align 1, !dbg !230
  %700 = zext i8 %699 to i32, !dbg !230
  %701 = xor i32 %700, %697, !dbg !230
  %702 = trunc i32 %701 to i8, !dbg !230
  store i8 %702, i8* %698, align 1, !dbg !230
  br label %703, !dbg !231

703:                                              ; preds = %694
  %704 = add i64 %.5, 1, !dbg !232
  call void @llvm.dbg.value(metadata i64 %704, metadata !62, metadata !DIExpression()), !dbg !45
  br label %692, !dbg !233, !llvm.loop !234

705:                                              ; preds = %692
  %706 = getelementptr inbounds i8, i8* %.03, i64 %691, !dbg !236
  call void @llvm.dbg.value(metadata i8* %706, metadata !60, metadata !DIExpression()), !dbg !45
  %707 = sub i64 %.04, %691, !dbg !237
  call void @llvm.dbg.value(metadata i64 %707, metadata !49, metadata !DIExpression()), !dbg !45
  %708 = add i32 %.02, 1, !dbg !238
  call void @llvm.dbg.value(metadata i32 %708, metadata !47, metadata !DIExpression()), !dbg !45
  br label %30, !dbg !98, !llvm.loop !239

709:                                              ; preds = %30
  ret i32 %.02, !dbg !241
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* %0) #0 !dbg !242 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !245, metadata !DIExpression()), !dbg !246
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !247
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !248
  %4 = load i32, i32* %3, align 4, !dbg !248
  ret i32 %4, !dbg !249
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le(i8* %0, i32 %1) #0 !dbg !250 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32 %1, metadata !255, metadata !DIExpression()), !dbg !254
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !256
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !257
  store i32 %1, i32* %4, align 4, !dbg !258
  ret void, !dbg !259
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 !dbg !260 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i8* %1, metadata !265, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i32 %2, metadata !266, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i8* %3, metadata !267, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i64 %4, metadata !268, metadata !DIExpression()), !dbg !264
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !269
  call void @public_in(%struct.smack_value* %6), !dbg !270
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !271
  call void @public_in(%struct.smack_value* %7), !dbg !272
  %8 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %2), !dbg !273
  call void @public_in(%struct.smack_value* %8), !dbg !274
  %9 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !275
  call void @public_in(%struct.smack_value* %9), !dbg !276
  %10 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %4), !dbg !277
  call void @public_in(%struct.smack_value* %10), !dbg !278
  %11 = call %struct.smack_value* @__SMACK_values(i8* %3, i32 32), !dbg !279
  call void @public_in(%struct.smack_value* %11), !dbg !280
  %12 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !281
  call void @public_in(%struct.smack_value* %12), !dbg !282
  %13 = call i32 @br_chacha20_ct_run(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4), !dbg !283
  ret void, !dbg !284
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #3

declare dso_local void @public_in(%struct.smack_value*) #3

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper_t() #0 !dbg !285 {
  %1 = call i8* (...) @getvoid1(), !dbg !288
  call void @llvm.dbg.value(metadata i8* %1, metadata !289, metadata !DIExpression()), !dbg !290
  %2 = call i8* (...) @getvoid2(), !dbg !291
  call void @llvm.dbg.value(metadata i8* %2, metadata !292, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 32, metadata !293, metadata !DIExpression()), !dbg !290
  %3 = call i8* (...) @getvoid5(), !dbg !297
  call void @llvm.dbg.value(metadata i8* %3, metadata !298, metadata !DIExpression()), !dbg !290
  %4 = call i64 (...) @getsize_t(), !dbg !299
  call void @llvm.dbg.value(metadata i64 %4, metadata !300, metadata !DIExpression()), !dbg !290
  %5 = call i32 @br_chacha20_ct_run(i8* %1, i8* %2, i32 32, i8* %3, i64 %4), !dbg !301
  ret void, !dbg !302
}

declare dso_local i8* @getvoid1(...) #3

declare dso_local i8* @getvoid2(...) #3

declare dso_local i8* @getvoid5(...) #3

declare dso_local i64 @getsize_t(...) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!17, !38}
!llvm.ident = !{!40, !40}
!llvm.module.flags = !{!41, !42, !43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CW", scope: !2, file: !3, line: 36, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "br_chacha20_ct_run", scope: !3, file: !3, line: 29, type: !4, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/chacha20_ct.c", directory: "/home/luwei/bech-back/BearSSL/ChaCha20_ct")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !11, !11, !6, !13, !14}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 46, baseType: !16)
!15 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !19, globals: !35, splitDebugInlining: false, nameTableKind: None)
!18 = !{}
!19 = !{!20, !23, !34}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u32", file: !26, line: 480, baseType: !27)
!26 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/ChaCha20_ct")
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 477, size: 32, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !27, file: !26, line: 478, baseType: !6, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !27, file: !26, line: 479, baseType: !31, size: 32)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 4)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!35 = !{!0}
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !32)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "run.c", directory: "/home/luwei/bech-back/BearSSL/ChaCha20_ct")
!40 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!41 = !{i32 7, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 29, type: !11)
!45 = !DILocation(line: 0, scope: !2)
!46 = !DILocalVariable(name: "iv", arg: 2, scope: !2, file: !3, line: 30, type: !11)
!47 = !DILocalVariable(name: "cc", arg: 3, scope: !2, file: !3, line: 30, type: !6)
!48 = !DILocalVariable(name: "data", arg: 4, scope: !2, file: !3, line: 30, type: !13)
!49 = !DILocalVariable(name: "len", arg: 5, scope: !2, file: !3, line: 30, type: !14)
!50 = !DILocalVariable(name: "kw", scope: !2, file: !3, line: 33, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 8)
!54 = !DILocation(line: 33, column: 11, scope: !2)
!55 = !DILocalVariable(name: "ivw", scope: !2, file: !3, line: 33, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 3)
!59 = !DILocation(line: 33, column: 18, scope: !2)
!60 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 32, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!62 = !DILocalVariable(name: "u", scope: !2, file: !3, line: 34, type: !14)
!63 = !DILocation(line: 41, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!65 = !DILocation(line: 0, scope: !64)
!66 = !DILocation(line: 41, column: 16, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !3, line: 41, column: 2)
!68 = !DILocation(line: 41, column: 2, scope: !64)
!69 = !DILocation(line: 42, column: 54, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !3, line: 41, column: 27)
!71 = !DILocation(line: 42, column: 49, scope: !70)
!72 = !DILocation(line: 42, column: 11, scope: !70)
!73 = !DILocation(line: 42, column: 3, scope: !70)
!74 = !DILocation(line: 42, column: 9, scope: !70)
!75 = !DILocation(line: 43, column: 2, scope: !70)
!76 = !DILocation(line: 41, column: 23, scope: !67)
!77 = !DILocation(line: 41, column: 2, scope: !67)
!78 = distinct !{!78, !68, !79, !80}
!79 = !DILocation(line: 43, column: 2, scope: !64)
!80 = !{!"llvm.loop.mustprogress"}
!81 = !DILocation(line: 44, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 2)
!83 = !DILocation(line: 0, scope: !82)
!84 = !DILocation(line: 44, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !3, line: 44, column: 2)
!86 = !DILocation(line: 44, column: 2, scope: !82)
!87 = !DILocation(line: 45, column: 54, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 44, column: 27)
!89 = !DILocation(line: 45, column: 49, scope: !88)
!90 = !DILocation(line: 45, column: 12, scope: !88)
!91 = !DILocation(line: 45, column: 3, scope: !88)
!92 = !DILocation(line: 45, column: 10, scope: !88)
!93 = !DILocation(line: 46, column: 2, scope: !88)
!94 = !DILocation(line: 44, column: 23, scope: !85)
!95 = !DILocation(line: 44, column: 2, scope: !85)
!96 = distinct !{!96, !86, !97, !80}
!97 = !DILocation(line: 46, column: 2, scope: !82)
!98 = !DILocation(line: 47, column: 2, scope: !2)
!99 = !DILocation(line: 47, column: 13, scope: !2)
!100 = !DILocalVariable(name: "state", scope: !101, file: !3, line: 48, type: !102)
!101 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 18)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 16)
!105 = !DILocation(line: 48, column: 12, scope: !101)
!106 = !DILocalVariable(name: "tmp", scope: !101, file: !3, line: 51, type: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 64)
!110 = !DILocation(line: 51, column: 17, scope: !101)
!111 = !DILocation(line: 53, column: 11, scope: !101)
!112 = !DILocation(line: 53, column: 3, scope: !101)
!113 = !DILocation(line: 54, column: 11, scope: !101)
!114 = !DILocation(line: 54, column: 3, scope: !101)
!115 = !DILocation(line: 55, column: 3, scope: !101)
!116 = !DILocation(line: 55, column: 13, scope: !101)
!117 = !DILocation(line: 56, column: 11, scope: !101)
!118 = !DILocation(line: 56, column: 3, scope: !101)
!119 = !DILocalVariable(name: "i", scope: !101, file: !3, line: 49, type: !120)
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !DILocation(line: 0, scope: !101)
!122 = !DILocation(line: 57, column: 8, scope: !123)
!123 = distinct !DILexicalBlock(scope: !101, file: !3, line: 57, column: 3)
!124 = !DILocation(line: 0, scope: !123)
!125 = !DILocation(line: 57, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !3, line: 57, column: 3)
!127 = !DILocation(line: 57, column: 3, scope: !123)
!128 = !DILocation(line: 74, column: 4, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !3, line: 57, column: 29)
!130 = !DILocation(line: 74, column: 4, scope: !131)
!131 = distinct !DILexicalBlock(scope: !129, file: !3, line: 74, column: 4)
!132 = !DILocation(line: 75, column: 4, scope: !129)
!133 = !DILocation(line: 75, column: 4, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !3, line: 75, column: 4)
!135 = !DILocation(line: 76, column: 4, scope: !129)
!136 = !DILocation(line: 76, column: 4, scope: !137)
!137 = distinct !DILexicalBlock(scope: !129, file: !3, line: 76, column: 4)
!138 = !DILocation(line: 77, column: 4, scope: !129)
!139 = !DILocation(line: 77, column: 4, scope: !140)
!140 = distinct !DILexicalBlock(scope: !129, file: !3, line: 77, column: 4)
!141 = !DILocation(line: 78, column: 4, scope: !129)
!142 = !DILocation(line: 78, column: 4, scope: !143)
!143 = distinct !DILexicalBlock(scope: !129, file: !3, line: 78, column: 4)
!144 = !DILocation(line: 79, column: 4, scope: !129)
!145 = !DILocation(line: 79, column: 4, scope: !146)
!146 = distinct !DILexicalBlock(scope: !129, file: !3, line: 79, column: 4)
!147 = !DILocation(line: 80, column: 4, scope: !129)
!148 = !DILocation(line: 80, column: 4, scope: !149)
!149 = distinct !DILexicalBlock(scope: !129, file: !3, line: 80, column: 4)
!150 = !DILocation(line: 81, column: 4, scope: !129)
!151 = !DILocation(line: 81, column: 4, scope: !152)
!152 = distinct !DILexicalBlock(scope: !129, file: !3, line: 81, column: 4)
!153 = !DILocation(line: 85, column: 3, scope: !129)
!154 = !DILocation(line: 57, column: 25, scope: !126)
!155 = !DILocation(line: 57, column: 3, scope: !126)
!156 = distinct !{!156, !127, !157, !80}
!157 = !DILocation(line: 85, column: 3, scope: !123)
!158 = !DILocation(line: 86, column: 8, scope: !159)
!159 = distinct !DILexicalBlock(scope: !101, file: !3, line: 86, column: 3)
!160 = !DILocation(line: 0, scope: !159)
!161 = !DILocation(line: 86, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 86, column: 3)
!163 = !DILocation(line: 86, column: 3, scope: !159)
!164 = !DILocation(line: 87, column: 22, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !3, line: 86, column: 28)
!166 = !DILocation(line: 87, column: 16, scope: !165)
!167 = !DILocation(line: 87, column: 29, scope: !165)
!168 = !DILocation(line: 87, column: 40, scope: !165)
!169 = !DILocation(line: 87, column: 38, scope: !165)
!170 = !DILocation(line: 87, column: 4, scope: !165)
!171 = !DILocation(line: 88, column: 3, scope: !165)
!172 = !DILocation(line: 86, column: 24, scope: !162)
!173 = !DILocation(line: 86, column: 3, scope: !162)
!174 = distinct !{!174, !163, !175, !80}
!175 = !DILocation(line: 88, column: 3, scope: !159)
!176 = !DILocation(line: 89, column: 8, scope: !177)
!177 = distinct !DILexicalBlock(scope: !101, file: !3, line: 89, column: 3)
!178 = !DILocation(line: 0, scope: !177)
!179 = !DILocation(line: 89, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 89, column: 3)
!181 = !DILocation(line: 89, column: 3, scope: !177)
!182 = !DILocation(line: 90, column: 22, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !3, line: 89, column: 29)
!184 = !DILocation(line: 90, column: 16, scope: !183)
!185 = !DILocation(line: 90, column: 29, scope: !183)
!186 = !DILocation(line: 90, column: 45, scope: !183)
!187 = !DILocation(line: 90, column: 40, scope: !183)
!188 = !DILocation(line: 90, column: 38, scope: !183)
!189 = !DILocation(line: 90, column: 4, scope: !183)
!190 = !DILocation(line: 91, column: 3, scope: !183)
!191 = !DILocation(line: 89, column: 25, scope: !180)
!192 = !DILocation(line: 89, column: 3, scope: !180)
!193 = distinct !{!193, !181, !194, !80}
!194 = !DILocation(line: 91, column: 3, scope: !177)
!195 = !DILocation(line: 92, column: 15, scope: !101)
!196 = !DILocation(line: 92, column: 24, scope: !101)
!197 = !DILocation(line: 92, column: 34, scope: !101)
!198 = !DILocation(line: 92, column: 3, scope: !101)
!199 = !DILocation(line: 93, column: 8, scope: !200)
!200 = distinct !DILexicalBlock(scope: !101, file: !3, line: 93, column: 3)
!201 = !DILocation(line: 0, scope: !200)
!202 = !DILocation(line: 93, column: 18, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 93, column: 3)
!204 = !DILocation(line: 93, column: 3, scope: !200)
!205 = !DILocation(line: 94, column: 22, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 93, column: 30)
!207 = !DILocation(line: 94, column: 16, scope: !206)
!208 = !DILocation(line: 94, column: 29, scope: !206)
!209 = !DILocation(line: 94, column: 46, scope: !206)
!210 = !DILocation(line: 94, column: 40, scope: !206)
!211 = !DILocation(line: 94, column: 38, scope: !206)
!212 = !DILocation(line: 94, column: 4, scope: !206)
!213 = !DILocation(line: 95, column: 3, scope: !206)
!214 = !DILocation(line: 93, column: 26, scope: !203)
!215 = !DILocation(line: 93, column: 3, scope: !203)
!216 = distinct !{!216, !204, !217, !80}
!217 = !DILocation(line: 95, column: 3, scope: !200)
!218 = !DILocation(line: 97, column: 14, scope: !101)
!219 = !DILocation(line: 97, column: 10, scope: !101)
!220 = !DILocalVariable(name: "clen", scope: !101, file: !3, line: 50, type: !14)
!221 = !DILocation(line: 98, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !101, file: !3, line: 98, column: 3)
!223 = !DILocation(line: 0, scope: !222)
!224 = !DILocation(line: 98, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !3, line: 98, column: 3)
!226 = !DILocation(line: 98, column: 3, scope: !222)
!227 = !DILocation(line: 99, column: 14, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !3, line: 98, column: 31)
!229 = !DILocation(line: 99, column: 4, scope: !228)
!230 = !DILocation(line: 99, column: 11, scope: !228)
!231 = !DILocation(line: 100, column: 3, scope: !228)
!232 = !DILocation(line: 98, column: 27, scope: !225)
!233 = !DILocation(line: 98, column: 3, scope: !225)
!234 = distinct !{!234, !226, !235, !80}
!235 = !DILocation(line: 100, column: 3, scope: !222)
!236 = !DILocation(line: 101, column: 7, scope: !101)
!237 = !DILocation(line: 102, column: 7, scope: !101)
!238 = !DILocation(line: 103, column: 6, scope: !101)
!239 = distinct !{!239, !98, !240, !80}
!240 = !DILocation(line: 104, column: 2, scope: !2)
!241 = !DILocation(line: 105, column: 2, scope: !2)
!242 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !243, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!243 = !DISubroutineType(types: !244)
!244 = !{!6, !11}
!245 = !DILocalVariable(name: "src", arg: 1, scope: !242, file: !26, line: 574, type: !11)
!246 = !DILocation(line: 0, scope: !242)
!247 = !DILocation(line: 577, column: 10, scope: !242)
!248 = !DILocation(line: 577, column: 38, scope: !242)
!249 = !DILocation(line: 577, column: 2, scope: !242)
!250 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !251, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !13, !6}
!253 = !DILocalVariable(name: "dst", arg: 1, scope: !250, file: !26, line: 542, type: !13)
!254 = !DILocation(line: 0, scope: !250)
!255 = !DILocalVariable(name: "x", arg: 2, scope: !250, file: !26, line: 542, type: !6)
!256 = !DILocation(line: 545, column: 3, scope: !250)
!257 = !DILocation(line: 545, column: 25, scope: !250)
!258 = !DILocation(line: 545, column: 27, scope: !250)
!259 = !DILocation(line: 555, column: 1, scope: !250)
!260 = distinct !DISubprogram(name: "run_wrapper", scope: !39, file: !39, line: 3, type: !261, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !18)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !11, !11, !6, !13, !14}
!263 = !DILocalVariable(name: "key", arg: 1, scope: !260, file: !39, line: 3, type: !11)
!264 = !DILocation(line: 0, scope: !260)
!265 = !DILocalVariable(name: "iv", arg: 2, scope: !260, file: !39, line: 4, type: !11)
!266 = !DILocalVariable(name: "cc", arg: 3, scope: !260, file: !39, line: 4, type: !6)
!267 = !DILocalVariable(name: "data", arg: 4, scope: !260, file: !39, line: 4, type: !13)
!268 = !DILocalVariable(name: "len", arg: 5, scope: !260, file: !39, line: 4, type: !14)
!269 = !DILocation(line: 5, column: 12, scope: !260)
!270 = !DILocation(line: 5, column: 2, scope: !260)
!271 = !DILocation(line: 6, column: 12, scope: !260)
!272 = !DILocation(line: 6, column: 2, scope: !260)
!273 = !DILocation(line: 7, column: 12, scope: !260)
!274 = !DILocation(line: 7, column: 2, scope: !260)
!275 = !DILocation(line: 8, column: 12, scope: !260)
!276 = !DILocation(line: 8, column: 2, scope: !260)
!277 = !DILocation(line: 9, column: 12, scope: !260)
!278 = !DILocation(line: 9, column: 2, scope: !260)
!279 = !DILocation(line: 11, column: 12, scope: !260)
!280 = !DILocation(line: 11, column: 2, scope: !260)
!281 = !DILocation(line: 12, column: 12, scope: !260)
!282 = !DILocation(line: 12, column: 2, scope: !260)
!283 = !DILocation(line: 14, column: 2, scope: !260)
!284 = !DILocation(line: 15, column: 1, scope: !260)
!285 = distinct !DISubprogram(name: "run_wrapper_t", scope: !39, file: !39, line: 24, type: !286, scopeLine: 24, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !18)
!286 = !DISubroutineType(types: !287)
!287 = !{null}
!288 = !DILocation(line: 26, column: 20, scope: !285)
!289 = !DILocalVariable(name: "key", scope: !285, file: !39, line: 26, type: !11)
!290 = !DILocation(line: 0, scope: !285)
!291 = !DILocation(line: 27, column: 19, scope: !285)
!292 = !DILocalVariable(name: "iv", scope: !285, file: !39, line: 27, type: !11)
!293 = !DILocalVariable(name: "cc", scope: !285, file: !39, line: 28, type: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !295, line: 26, baseType: !296)
!295 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !9, line: 41, baseType: !120)
!297 = !DILocation(line: 29, column: 17, scope: !285)
!298 = !DILocalVariable(name: "data", scope: !285, file: !39, line: 29, type: !13)
!299 = !DILocation(line: 30, column: 16, scope: !285)
!300 = !DILocalVariable(name: "len", scope: !285, file: !39, line: 30, type: !14)
!301 = !DILocation(line: 32, column: 2, scope: !285)
!302 = !DILocation(line: 33, column: 1, scope: !285)
