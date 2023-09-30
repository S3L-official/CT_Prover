; ModuleID = 'run.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.br_union_u32 = type { i32 }
%union.br_union_u64 = type { i64 }
%struct.smack_value = type { i8* }

@br_chacha20_ct_run.CW = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_chacha20_ct_run(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 !dbg !2 {
  %6 = alloca [8 x i32], align 16
  %7 = alloca [3 x i32], align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i8* %1, metadata !72, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 %2, metadata !73, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i8* %3, metadata !74, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i64 %4, metadata !75, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata [8 x i32]* %6, metadata !76, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata [3 x i32]* %7, metadata !79, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i8* %3, metadata !84, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i64 0, metadata !85, metadata !DIExpression()), !dbg !71
  br label %10, !dbg !86

10:                                               ; preds = %17, %5
  %.01 = phi i64 [ 0, %5 ], [ %18, %17 ], !dbg !88
  call void @llvm.dbg.value(metadata i64 %.01, metadata !85, metadata !DIExpression()), !dbg !71
  %11 = icmp ult i64 %.01, 8, !dbg !89
  br i1 %11, label %12, label %19, !dbg !91

12:                                               ; preds = %10
  %13 = shl i64 %.01, 2, !dbg !92
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !94
  %15 = call i32 @br_dec32le(i8* %14), !dbg !95
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %.01, !dbg !96
  store i32 %15, i32* %16, align 4, !dbg !97
  br label %17, !dbg !98

17:                                               ; preds = %12
  %18 = add i64 %.01, 1, !dbg !99
  call void @llvm.dbg.value(metadata i64 %18, metadata !85, metadata !DIExpression()), !dbg !71
  br label %10, !dbg !100, !llvm.loop !101

19:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 0, metadata !85, metadata !DIExpression()), !dbg !71
  br label %20, !dbg !104

20:                                               ; preds = %27, %19
  %.1 = phi i64 [ 0, %19 ], [ %28, %27 ], !dbg !106
  call void @llvm.dbg.value(metadata i64 %.1, metadata !85, metadata !DIExpression()), !dbg !71
  %21 = icmp ult i64 %.1, 3, !dbg !107
  br i1 %21, label %22, label %29, !dbg !109

22:                                               ; preds = %20
  %23 = shl i64 %.1, 2, !dbg !110
  %24 = getelementptr inbounds i8, i8* %1, i64 %23, !dbg !112
  %25 = call i32 @br_dec32le(i8* %24), !dbg !113
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %.1, !dbg !114
  store i32 %25, i32* %26, align 4, !dbg !115
  br label %27, !dbg !116

27:                                               ; preds = %22
  %28 = add i64 %.1, 1, !dbg !117
  call void @llvm.dbg.value(metadata i64 %28, metadata !85, metadata !DIExpression()), !dbg !71
  br label %20, !dbg !118, !llvm.loop !119

29:                                               ; preds = %20
  br label %30, !dbg !121

30:                                               ; preds = %705, %29
  %.04 = phi i64 [ %4, %29 ], [ %707, %705 ]
  %.03 = phi i8* [ %3, %29 ], [ %706, %705 ], !dbg !71
  %.02 = phi i32 [ %2, %29 ], [ %708, %705 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !73, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i8* %.03, metadata !84, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i64 %.04, metadata !75, metadata !DIExpression()), !dbg !71
  %31 = icmp ugt i64 %.04, 0, !dbg !122
  br i1 %31, label %32, label %709, !dbg !121

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i32]* %8, metadata !123, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !129, metadata !DIExpression()), !dbg !133
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !134
  %34 = bitcast i32* %33 to i8*, !dbg !135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([4 x i32]* @br_chacha20_ct_run.CW to i8*), i64 16, i1 false), !dbg !135
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !136
  %36 = bitcast i32* %35 to i8*, !dbg !137
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0, !dbg !137
  %38 = bitcast i32* %37 to i8*, !dbg !137
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 %38, i64 32, i1 false), !dbg !137
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !138
  store i32 %.02, i32* %39, align 16, !dbg !139
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !140
  %41 = bitcast i32* %40 to i8*, !dbg !141
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0, !dbg !141
  %43 = bitcast i32* %42 to i8*, !dbg !141
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %43, i64 12, i1 false), !dbg !141
  call void @llvm.dbg.value(metadata i32 0, metadata !142, metadata !DIExpression()), !dbg !144
  br label %44, !dbg !145

44:                                               ; preds = %639, %32
  %.0 = phi i32 [ 0, %32 ], [ %640, %639 ], !dbg !147
  call void @llvm.dbg.value(metadata i32 %.0, metadata !142, metadata !DIExpression()), !dbg !144
  %45 = icmp slt i32 %.0, 10, !dbg !148
  br i1 %45, label %46, label %641, !dbg !150

46:                                               ; preds = %44
  br label %47, !dbg !151

47:                                               ; preds = %46
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !153
  %49 = load i32, i32* %48, align 16, !dbg !153
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !153
  %51 = load i32, i32* %50, align 16, !dbg !153
  %52 = add i32 %51, %49, !dbg !153
  store i32 %52, i32* %50, align 16, !dbg !153
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !153
  %54 = load i32, i32* %53, align 16, !dbg !153
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !153
  %56 = load i32, i32* %55, align 16, !dbg !153
  %57 = xor i32 %56, %54, !dbg !153
  store i32 %57, i32* %55, align 16, !dbg !153
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !153
  %59 = load i32, i32* %58, align 16, !dbg !153
  %60 = shl i32 %59, 16, !dbg !153
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !153
  %62 = load i32, i32* %61, align 16, !dbg !153
  %63 = lshr i32 %62, 16, !dbg !153
  %64 = or i32 %60, %63, !dbg !153
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !153
  store i32 %64, i32* %65, align 16, !dbg !153
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !153
  %67 = load i32, i32* %66, align 16, !dbg !153
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !153
  %69 = load i32, i32* %68, align 16, !dbg !153
  %70 = add i32 %69, %67, !dbg !153
  store i32 %70, i32* %68, align 16, !dbg !153
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !153
  %72 = load i32, i32* %71, align 16, !dbg !153
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !153
  %74 = load i32, i32* %73, align 16, !dbg !153
  %75 = xor i32 %74, %72, !dbg !153
  store i32 %75, i32* %73, align 16, !dbg !153
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !153
  %77 = load i32, i32* %76, align 16, !dbg !153
  %78 = shl i32 %77, 12, !dbg !153
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !153
  %80 = load i32, i32* %79, align 16, !dbg !153
  %81 = lshr i32 %80, 20, !dbg !153
  %82 = or i32 %78, %81, !dbg !153
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !153
  store i32 %82, i32* %83, align 16, !dbg !153
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !153
  %85 = load i32, i32* %84, align 16, !dbg !153
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !153
  %87 = load i32, i32* %86, align 16, !dbg !153
  %88 = add i32 %87, %85, !dbg !153
  store i32 %88, i32* %86, align 16, !dbg !153
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !153
  %90 = load i32, i32* %89, align 16, !dbg !153
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !153
  %92 = load i32, i32* %91, align 16, !dbg !153
  %93 = xor i32 %92, %90, !dbg !153
  store i32 %93, i32* %91, align 16, !dbg !153
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !153
  %95 = load i32, i32* %94, align 16, !dbg !153
  %96 = shl i32 %95, 8, !dbg !153
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !153
  %98 = load i32, i32* %97, align 16, !dbg !153
  %99 = lshr i32 %98, 24, !dbg !153
  %100 = or i32 %96, %99, !dbg !153
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !153
  store i32 %100, i32* %101, align 16, !dbg !153
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !153
  %103 = load i32, i32* %102, align 16, !dbg !153
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !153
  %105 = load i32, i32* %104, align 16, !dbg !153
  %106 = add i32 %105, %103, !dbg !153
  store i32 %106, i32* %104, align 16, !dbg !153
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !153
  %108 = load i32, i32* %107, align 16, !dbg !153
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !153
  %110 = load i32, i32* %109, align 16, !dbg !153
  %111 = xor i32 %110, %108, !dbg !153
  store i32 %111, i32* %109, align 16, !dbg !153
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !153
  %113 = load i32, i32* %112, align 16, !dbg !153
  %114 = shl i32 %113, 7, !dbg !153
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !153
  %116 = load i32, i32* %115, align 16, !dbg !153
  %117 = lshr i32 %116, 25, !dbg !153
  %118 = or i32 %114, %117, !dbg !153
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !153
  store i32 %118, i32* %119, align 16, !dbg !153
  br label %120, !dbg !153

120:                                              ; preds = %47
  br label %121, !dbg !155

121:                                              ; preds = %120
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !156
  %123 = load i32, i32* %122, align 4, !dbg !156
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !156
  %125 = load i32, i32* %124, align 4, !dbg !156
  %126 = add i32 %125, %123, !dbg !156
  store i32 %126, i32* %124, align 4, !dbg !156
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !156
  %128 = load i32, i32* %127, align 4, !dbg !156
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !156
  %130 = load i32, i32* %129, align 4, !dbg !156
  %131 = xor i32 %130, %128, !dbg !156
  store i32 %131, i32* %129, align 4, !dbg !156
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !156
  %133 = load i32, i32* %132, align 4, !dbg !156
  %134 = shl i32 %133, 16, !dbg !156
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !156
  %136 = load i32, i32* %135, align 4, !dbg !156
  %137 = lshr i32 %136, 16, !dbg !156
  %138 = or i32 %134, %137, !dbg !156
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !156
  store i32 %138, i32* %139, align 4, !dbg !156
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !156
  %141 = load i32, i32* %140, align 4, !dbg !156
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !156
  %143 = load i32, i32* %142, align 4, !dbg !156
  %144 = add i32 %143, %141, !dbg !156
  store i32 %144, i32* %142, align 4, !dbg !156
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !156
  %146 = load i32, i32* %145, align 4, !dbg !156
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !156
  %148 = load i32, i32* %147, align 4, !dbg !156
  %149 = xor i32 %148, %146, !dbg !156
  store i32 %149, i32* %147, align 4, !dbg !156
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !156
  %151 = load i32, i32* %150, align 4, !dbg !156
  %152 = shl i32 %151, 12, !dbg !156
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !156
  %154 = load i32, i32* %153, align 4, !dbg !156
  %155 = lshr i32 %154, 20, !dbg !156
  %156 = or i32 %152, %155, !dbg !156
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !156
  store i32 %156, i32* %157, align 4, !dbg !156
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !156
  %159 = load i32, i32* %158, align 4, !dbg !156
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !156
  %161 = load i32, i32* %160, align 4, !dbg !156
  %162 = add i32 %161, %159, !dbg !156
  store i32 %162, i32* %160, align 4, !dbg !156
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !156
  %164 = load i32, i32* %163, align 4, !dbg !156
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !156
  %166 = load i32, i32* %165, align 4, !dbg !156
  %167 = xor i32 %166, %164, !dbg !156
  store i32 %167, i32* %165, align 4, !dbg !156
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !156
  %169 = load i32, i32* %168, align 4, !dbg !156
  %170 = shl i32 %169, 8, !dbg !156
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !156
  %172 = load i32, i32* %171, align 4, !dbg !156
  %173 = lshr i32 %172, 24, !dbg !156
  %174 = or i32 %170, %173, !dbg !156
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !156
  store i32 %174, i32* %175, align 4, !dbg !156
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !156
  %177 = load i32, i32* %176, align 4, !dbg !156
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !156
  %179 = load i32, i32* %178, align 4, !dbg !156
  %180 = add i32 %179, %177, !dbg !156
  store i32 %180, i32* %178, align 4, !dbg !156
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !156
  %182 = load i32, i32* %181, align 4, !dbg !156
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !156
  %184 = load i32, i32* %183, align 4, !dbg !156
  %185 = xor i32 %184, %182, !dbg !156
  store i32 %185, i32* %183, align 4, !dbg !156
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !156
  %187 = load i32, i32* %186, align 4, !dbg !156
  %188 = shl i32 %187, 7, !dbg !156
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !156
  %190 = load i32, i32* %189, align 4, !dbg !156
  %191 = lshr i32 %190, 25, !dbg !156
  %192 = or i32 %188, %191, !dbg !156
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !156
  store i32 %192, i32* %193, align 4, !dbg !156
  br label %194, !dbg !156

194:                                              ; preds = %121
  br label %195, !dbg !158

195:                                              ; preds = %194
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !159
  %197 = load i32, i32* %196, align 8, !dbg !159
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !159
  %199 = load i32, i32* %198, align 8, !dbg !159
  %200 = add i32 %199, %197, !dbg !159
  store i32 %200, i32* %198, align 8, !dbg !159
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !159
  %202 = load i32, i32* %201, align 8, !dbg !159
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !159
  %204 = load i32, i32* %203, align 8, !dbg !159
  %205 = xor i32 %204, %202, !dbg !159
  store i32 %205, i32* %203, align 8, !dbg !159
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !159
  %207 = load i32, i32* %206, align 8, !dbg !159
  %208 = shl i32 %207, 16, !dbg !159
  %209 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !159
  %210 = load i32, i32* %209, align 8, !dbg !159
  %211 = lshr i32 %210, 16, !dbg !159
  %212 = or i32 %208, %211, !dbg !159
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !159
  store i32 %212, i32* %213, align 8, !dbg !159
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !159
  %215 = load i32, i32* %214, align 8, !dbg !159
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !159
  %217 = load i32, i32* %216, align 8, !dbg !159
  %218 = add i32 %217, %215, !dbg !159
  store i32 %218, i32* %216, align 8, !dbg !159
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !159
  %220 = load i32, i32* %219, align 8, !dbg !159
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !159
  %222 = load i32, i32* %221, align 8, !dbg !159
  %223 = xor i32 %222, %220, !dbg !159
  store i32 %223, i32* %221, align 8, !dbg !159
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !159
  %225 = load i32, i32* %224, align 8, !dbg !159
  %226 = shl i32 %225, 12, !dbg !159
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !159
  %228 = load i32, i32* %227, align 8, !dbg !159
  %229 = lshr i32 %228, 20, !dbg !159
  %230 = or i32 %226, %229, !dbg !159
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !159
  store i32 %230, i32* %231, align 8, !dbg !159
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !159
  %233 = load i32, i32* %232, align 8, !dbg !159
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !159
  %235 = load i32, i32* %234, align 8, !dbg !159
  %236 = add i32 %235, %233, !dbg !159
  store i32 %236, i32* %234, align 8, !dbg !159
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !159
  %238 = load i32, i32* %237, align 8, !dbg !159
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !159
  %240 = load i32, i32* %239, align 8, !dbg !159
  %241 = xor i32 %240, %238, !dbg !159
  store i32 %241, i32* %239, align 8, !dbg !159
  %242 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !159
  %243 = load i32, i32* %242, align 8, !dbg !159
  %244 = shl i32 %243, 8, !dbg !159
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !159
  %246 = load i32, i32* %245, align 8, !dbg !159
  %247 = lshr i32 %246, 24, !dbg !159
  %248 = or i32 %244, %247, !dbg !159
  %249 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !159
  store i32 %248, i32* %249, align 8, !dbg !159
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !159
  %251 = load i32, i32* %250, align 8, !dbg !159
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !159
  %253 = load i32, i32* %252, align 8, !dbg !159
  %254 = add i32 %253, %251, !dbg !159
  store i32 %254, i32* %252, align 8, !dbg !159
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !159
  %256 = load i32, i32* %255, align 8, !dbg !159
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !159
  %258 = load i32, i32* %257, align 8, !dbg !159
  %259 = xor i32 %258, %256, !dbg !159
  store i32 %259, i32* %257, align 8, !dbg !159
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !159
  %261 = load i32, i32* %260, align 8, !dbg !159
  %262 = shl i32 %261, 7, !dbg !159
  %263 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !159
  %264 = load i32, i32* %263, align 8, !dbg !159
  %265 = lshr i32 %264, 25, !dbg !159
  %266 = or i32 %262, %265, !dbg !159
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !159
  store i32 %266, i32* %267, align 8, !dbg !159
  br label %268, !dbg !159

268:                                              ; preds = %195
  br label %269, !dbg !161

269:                                              ; preds = %268
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !162
  %271 = load i32, i32* %270, align 4, !dbg !162
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !162
  %273 = load i32, i32* %272, align 4, !dbg !162
  %274 = add i32 %273, %271, !dbg !162
  store i32 %274, i32* %272, align 4, !dbg !162
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !162
  %276 = load i32, i32* %275, align 4, !dbg !162
  %277 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %278 = load i32, i32* %277, align 4, !dbg !162
  %279 = xor i32 %278, %276, !dbg !162
  store i32 %279, i32* %277, align 4, !dbg !162
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %281 = load i32, i32* %280, align 4, !dbg !162
  %282 = shl i32 %281, 16, !dbg !162
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %284 = load i32, i32* %283, align 4, !dbg !162
  %285 = lshr i32 %284, 16, !dbg !162
  %286 = or i32 %282, %285, !dbg !162
  %287 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  store i32 %286, i32* %287, align 4, !dbg !162
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %289 = load i32, i32* %288, align 4, !dbg !162
  %290 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !162
  %291 = load i32, i32* %290, align 4, !dbg !162
  %292 = add i32 %291, %289, !dbg !162
  store i32 %292, i32* %290, align 4, !dbg !162
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !162
  %294 = load i32, i32* %293, align 4, !dbg !162
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !162
  %296 = load i32, i32* %295, align 4, !dbg !162
  %297 = xor i32 %296, %294, !dbg !162
  store i32 %297, i32* %295, align 4, !dbg !162
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !162
  %299 = load i32, i32* %298, align 4, !dbg !162
  %300 = shl i32 %299, 12, !dbg !162
  %301 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !162
  %302 = load i32, i32* %301, align 4, !dbg !162
  %303 = lshr i32 %302, 20, !dbg !162
  %304 = or i32 %300, %303, !dbg !162
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !162
  store i32 %304, i32* %305, align 4, !dbg !162
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !162
  %307 = load i32, i32* %306, align 4, !dbg !162
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !162
  %309 = load i32, i32* %308, align 4, !dbg !162
  %310 = add i32 %309, %307, !dbg !162
  store i32 %310, i32* %308, align 4, !dbg !162
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !162
  %312 = load i32, i32* %311, align 4, !dbg !162
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %314 = load i32, i32* %313, align 4, !dbg !162
  %315 = xor i32 %314, %312, !dbg !162
  store i32 %315, i32* %313, align 4, !dbg !162
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %317 = load i32, i32* %316, align 4, !dbg !162
  %318 = shl i32 %317, 8, !dbg !162
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %320 = load i32, i32* %319, align 4, !dbg !162
  %321 = lshr i32 %320, 24, !dbg !162
  %322 = or i32 %318, %321, !dbg !162
  %323 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  store i32 %322, i32* %323, align 4, !dbg !162
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %325 = load i32, i32* %324, align 4, !dbg !162
  %326 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !162
  %327 = load i32, i32* %326, align 4, !dbg !162
  %328 = add i32 %327, %325, !dbg !162
  store i32 %328, i32* %326, align 4, !dbg !162
  %329 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !162
  %330 = load i32, i32* %329, align 4, !dbg !162
  %331 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !162
  %332 = load i32, i32* %331, align 4, !dbg !162
  %333 = xor i32 %332, %330, !dbg !162
  store i32 %333, i32* %331, align 4, !dbg !162
  %334 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !162
  %335 = load i32, i32* %334, align 4, !dbg !162
  %336 = shl i32 %335, 7, !dbg !162
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !162
  %338 = load i32, i32* %337, align 4, !dbg !162
  %339 = lshr i32 %338, 25, !dbg !162
  %340 = or i32 %336, %339, !dbg !162
  %341 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !162
  store i32 %340, i32* %341, align 4, !dbg !162
  br label %342, !dbg !162

342:                                              ; preds = %269
  br label %343, !dbg !164

343:                                              ; preds = %342
  %344 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !165
  %345 = load i32, i32* %344, align 4, !dbg !165
  %346 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !165
  %347 = load i32, i32* %346, align 16, !dbg !165
  %348 = add i32 %347, %345, !dbg !165
  store i32 %348, i32* %346, align 16, !dbg !165
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !165
  %350 = load i32, i32* %349, align 16, !dbg !165
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !165
  %352 = load i32, i32* %351, align 4, !dbg !165
  %353 = xor i32 %352, %350, !dbg !165
  store i32 %353, i32* %351, align 4, !dbg !165
  %354 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !165
  %355 = load i32, i32* %354, align 4, !dbg !165
  %356 = shl i32 %355, 16, !dbg !165
  %357 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !165
  %358 = load i32, i32* %357, align 4, !dbg !165
  %359 = lshr i32 %358, 16, !dbg !165
  %360 = or i32 %356, %359, !dbg !165
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !165
  store i32 %360, i32* %361, align 4, !dbg !165
  %362 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !165
  %363 = load i32, i32* %362, align 4, !dbg !165
  %364 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !165
  %365 = load i32, i32* %364, align 8, !dbg !165
  %366 = add i32 %365, %363, !dbg !165
  store i32 %366, i32* %364, align 8, !dbg !165
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !165
  %368 = load i32, i32* %367, align 8, !dbg !165
  %369 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !165
  %370 = load i32, i32* %369, align 4, !dbg !165
  %371 = xor i32 %370, %368, !dbg !165
  store i32 %371, i32* %369, align 4, !dbg !165
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !165
  %373 = load i32, i32* %372, align 4, !dbg !165
  %374 = shl i32 %373, 12, !dbg !165
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !165
  %376 = load i32, i32* %375, align 4, !dbg !165
  %377 = lshr i32 %376, 20, !dbg !165
  %378 = or i32 %374, %377, !dbg !165
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !165
  store i32 %378, i32* %379, align 4, !dbg !165
  %380 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !165
  %381 = load i32, i32* %380, align 4, !dbg !165
  %382 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !165
  %383 = load i32, i32* %382, align 16, !dbg !165
  %384 = add i32 %383, %381, !dbg !165
  store i32 %384, i32* %382, align 16, !dbg !165
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !165
  %386 = load i32, i32* %385, align 16, !dbg !165
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !165
  %388 = load i32, i32* %387, align 4, !dbg !165
  %389 = xor i32 %388, %386, !dbg !165
  store i32 %389, i32* %387, align 4, !dbg !165
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !165
  %391 = load i32, i32* %390, align 4, !dbg !165
  %392 = shl i32 %391, 8, !dbg !165
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !165
  %394 = load i32, i32* %393, align 4, !dbg !165
  %395 = lshr i32 %394, 24, !dbg !165
  %396 = or i32 %392, %395, !dbg !165
  %397 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !165
  store i32 %396, i32* %397, align 4, !dbg !165
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !165
  %399 = load i32, i32* %398, align 4, !dbg !165
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !165
  %401 = load i32, i32* %400, align 8, !dbg !165
  %402 = add i32 %401, %399, !dbg !165
  store i32 %402, i32* %400, align 8, !dbg !165
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !165
  %404 = load i32, i32* %403, align 8, !dbg !165
  %405 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !165
  %406 = load i32, i32* %405, align 4, !dbg !165
  %407 = xor i32 %406, %404, !dbg !165
  store i32 %407, i32* %405, align 4, !dbg !165
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !165
  %409 = load i32, i32* %408, align 4, !dbg !165
  %410 = shl i32 %409, 7, !dbg !165
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !165
  %412 = load i32, i32* %411, align 4, !dbg !165
  %413 = lshr i32 %412, 25, !dbg !165
  %414 = or i32 %410, %413, !dbg !165
  %415 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !165
  store i32 %414, i32* %415, align 4, !dbg !165
  br label %416, !dbg !165

416:                                              ; preds = %343
  br label %417, !dbg !167

417:                                              ; preds = %416
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !168
  %419 = load i32, i32* %418, align 8, !dbg !168
  %420 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !168
  %421 = load i32, i32* %420, align 4, !dbg !168
  %422 = add i32 %421, %419, !dbg !168
  store i32 %422, i32* %420, align 4, !dbg !168
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !168
  %424 = load i32, i32* %423, align 4, !dbg !168
  %425 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !168
  %426 = load i32, i32* %425, align 16, !dbg !168
  %427 = xor i32 %426, %424, !dbg !168
  store i32 %427, i32* %425, align 16, !dbg !168
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !168
  %429 = load i32, i32* %428, align 16, !dbg !168
  %430 = shl i32 %429, 16, !dbg !168
  %431 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !168
  %432 = load i32, i32* %431, align 16, !dbg !168
  %433 = lshr i32 %432, 16, !dbg !168
  %434 = or i32 %430, %433, !dbg !168
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !168
  store i32 %434, i32* %435, align 16, !dbg !168
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !168
  %437 = load i32, i32* %436, align 16, !dbg !168
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !168
  %439 = load i32, i32* %438, align 4, !dbg !168
  %440 = add i32 %439, %437, !dbg !168
  store i32 %440, i32* %438, align 4, !dbg !168
  %441 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !168
  %442 = load i32, i32* %441, align 4, !dbg !168
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !168
  %444 = load i32, i32* %443, align 8, !dbg !168
  %445 = xor i32 %444, %442, !dbg !168
  store i32 %445, i32* %443, align 8, !dbg !168
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !168
  %447 = load i32, i32* %446, align 8, !dbg !168
  %448 = shl i32 %447, 12, !dbg !168
  %449 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !168
  %450 = load i32, i32* %449, align 8, !dbg !168
  %451 = lshr i32 %450, 20, !dbg !168
  %452 = or i32 %448, %451, !dbg !168
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !168
  store i32 %452, i32* %453, align 8, !dbg !168
  %454 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !168
  %455 = load i32, i32* %454, align 8, !dbg !168
  %456 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !168
  %457 = load i32, i32* %456, align 4, !dbg !168
  %458 = add i32 %457, %455, !dbg !168
  store i32 %458, i32* %456, align 4, !dbg !168
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !168
  %460 = load i32, i32* %459, align 4, !dbg !168
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !168
  %462 = load i32, i32* %461, align 16, !dbg !168
  %463 = xor i32 %462, %460, !dbg !168
  store i32 %463, i32* %461, align 16, !dbg !168
  %464 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !168
  %465 = load i32, i32* %464, align 16, !dbg !168
  %466 = shl i32 %465, 8, !dbg !168
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !168
  %468 = load i32, i32* %467, align 16, !dbg !168
  %469 = lshr i32 %468, 24, !dbg !168
  %470 = or i32 %466, %469, !dbg !168
  %471 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !168
  store i32 %470, i32* %471, align 16, !dbg !168
  %472 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !168
  %473 = load i32, i32* %472, align 16, !dbg !168
  %474 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !168
  %475 = load i32, i32* %474, align 4, !dbg !168
  %476 = add i32 %475, %473, !dbg !168
  store i32 %476, i32* %474, align 4, !dbg !168
  %477 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !168
  %478 = load i32, i32* %477, align 4, !dbg !168
  %479 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !168
  %480 = load i32, i32* %479, align 8, !dbg !168
  %481 = xor i32 %480, %478, !dbg !168
  store i32 %481, i32* %479, align 8, !dbg !168
  %482 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !168
  %483 = load i32, i32* %482, align 8, !dbg !168
  %484 = shl i32 %483, 7, !dbg !168
  %485 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !168
  %486 = load i32, i32* %485, align 8, !dbg !168
  %487 = lshr i32 %486, 25, !dbg !168
  %488 = or i32 %484, %487, !dbg !168
  %489 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !168
  store i32 %488, i32* %489, align 8, !dbg !168
  br label %490, !dbg !168

490:                                              ; preds = %417
  br label %491, !dbg !170

491:                                              ; preds = %490
  %492 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !171
  %493 = load i32, i32* %492, align 4, !dbg !171
  %494 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !171
  %495 = load i32, i32* %494, align 8, !dbg !171
  %496 = add i32 %495, %493, !dbg !171
  store i32 %496, i32* %494, align 8, !dbg !171
  %497 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !171
  %498 = load i32, i32* %497, align 8, !dbg !171
  %499 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !171
  %500 = load i32, i32* %499, align 4, !dbg !171
  %501 = xor i32 %500, %498, !dbg !171
  store i32 %501, i32* %499, align 4, !dbg !171
  %502 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !171
  %503 = load i32, i32* %502, align 4, !dbg !171
  %504 = shl i32 %503, 16, !dbg !171
  %505 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !171
  %506 = load i32, i32* %505, align 4, !dbg !171
  %507 = lshr i32 %506, 16, !dbg !171
  %508 = or i32 %504, %507, !dbg !171
  %509 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !171
  store i32 %508, i32* %509, align 4, !dbg !171
  %510 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !171
  %511 = load i32, i32* %510, align 4, !dbg !171
  %512 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !171
  %513 = load i32, i32* %512, align 16, !dbg !171
  %514 = add i32 %513, %511, !dbg !171
  store i32 %514, i32* %512, align 16, !dbg !171
  %515 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !171
  %516 = load i32, i32* %515, align 16, !dbg !171
  %517 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !171
  %518 = load i32, i32* %517, align 4, !dbg !171
  %519 = xor i32 %518, %516, !dbg !171
  store i32 %519, i32* %517, align 4, !dbg !171
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !171
  %521 = load i32, i32* %520, align 4, !dbg !171
  %522 = shl i32 %521, 12, !dbg !171
  %523 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !171
  %524 = load i32, i32* %523, align 4, !dbg !171
  %525 = lshr i32 %524, 20, !dbg !171
  %526 = or i32 %522, %525, !dbg !171
  %527 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !171
  store i32 %526, i32* %527, align 4, !dbg !171
  %528 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !171
  %529 = load i32, i32* %528, align 4, !dbg !171
  %530 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !171
  %531 = load i32, i32* %530, align 8, !dbg !171
  %532 = add i32 %531, %529, !dbg !171
  store i32 %532, i32* %530, align 8, !dbg !171
  %533 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !171
  %534 = load i32, i32* %533, align 8, !dbg !171
  %535 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !171
  %536 = load i32, i32* %535, align 4, !dbg !171
  %537 = xor i32 %536, %534, !dbg !171
  store i32 %537, i32* %535, align 4, !dbg !171
  %538 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !171
  %539 = load i32, i32* %538, align 4, !dbg !171
  %540 = shl i32 %539, 8, !dbg !171
  %541 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !171
  %542 = load i32, i32* %541, align 4, !dbg !171
  %543 = lshr i32 %542, 24, !dbg !171
  %544 = or i32 %540, %543, !dbg !171
  %545 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !171
  store i32 %544, i32* %545, align 4, !dbg !171
  %546 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !171
  %547 = load i32, i32* %546, align 4, !dbg !171
  %548 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !171
  %549 = load i32, i32* %548, align 16, !dbg !171
  %550 = add i32 %549, %547, !dbg !171
  store i32 %550, i32* %548, align 16, !dbg !171
  %551 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !171
  %552 = load i32, i32* %551, align 16, !dbg !171
  %553 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !171
  %554 = load i32, i32* %553, align 4, !dbg !171
  %555 = xor i32 %554, %552, !dbg !171
  store i32 %555, i32* %553, align 4, !dbg !171
  %556 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !171
  %557 = load i32, i32* %556, align 4, !dbg !171
  %558 = shl i32 %557, 7, !dbg !171
  %559 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !171
  %560 = load i32, i32* %559, align 4, !dbg !171
  %561 = lshr i32 %560, 25, !dbg !171
  %562 = or i32 %558, %561, !dbg !171
  %563 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !171
  store i32 %562, i32* %563, align 4, !dbg !171
  br label %564, !dbg !171

564:                                              ; preds = %491
  br label %565, !dbg !173

565:                                              ; preds = %564
  %566 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !174
  %567 = load i32, i32* %566, align 16, !dbg !174
  %568 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !174
  %569 = load i32, i32* %568, align 4, !dbg !174
  %570 = add i32 %569, %567, !dbg !174
  store i32 %570, i32* %568, align 4, !dbg !174
  %571 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !174
  %572 = load i32, i32* %571, align 4, !dbg !174
  %573 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !174
  %574 = load i32, i32* %573, align 8, !dbg !174
  %575 = xor i32 %574, %572, !dbg !174
  store i32 %575, i32* %573, align 8, !dbg !174
  %576 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !174
  %577 = load i32, i32* %576, align 8, !dbg !174
  %578 = shl i32 %577, 16, !dbg !174
  %579 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !174
  %580 = load i32, i32* %579, align 8, !dbg !174
  %581 = lshr i32 %580, 16, !dbg !174
  %582 = or i32 %578, %581, !dbg !174
  %583 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !174
  store i32 %582, i32* %583, align 8, !dbg !174
  %584 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !174
  %585 = load i32, i32* %584, align 8, !dbg !174
  %586 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !174
  %587 = load i32, i32* %586, align 4, !dbg !174
  %588 = add i32 %587, %585, !dbg !174
  store i32 %588, i32* %586, align 4, !dbg !174
  %589 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !174
  %590 = load i32, i32* %589, align 4, !dbg !174
  %591 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !174
  %592 = load i32, i32* %591, align 16, !dbg !174
  %593 = xor i32 %592, %590, !dbg !174
  store i32 %593, i32* %591, align 16, !dbg !174
  %594 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !174
  %595 = load i32, i32* %594, align 16, !dbg !174
  %596 = shl i32 %595, 12, !dbg !174
  %597 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !174
  %598 = load i32, i32* %597, align 16, !dbg !174
  %599 = lshr i32 %598, 20, !dbg !174
  %600 = or i32 %596, %599, !dbg !174
  %601 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !174
  store i32 %600, i32* %601, align 16, !dbg !174
  %602 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !174
  %603 = load i32, i32* %602, align 16, !dbg !174
  %604 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !174
  %605 = load i32, i32* %604, align 4, !dbg !174
  %606 = add i32 %605, %603, !dbg !174
  store i32 %606, i32* %604, align 4, !dbg !174
  %607 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !174
  %608 = load i32, i32* %607, align 4, !dbg !174
  %609 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !174
  %610 = load i32, i32* %609, align 8, !dbg !174
  %611 = xor i32 %610, %608, !dbg !174
  store i32 %611, i32* %609, align 8, !dbg !174
  %612 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !174
  %613 = load i32, i32* %612, align 8, !dbg !174
  %614 = shl i32 %613, 8, !dbg !174
  %615 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !174
  %616 = load i32, i32* %615, align 8, !dbg !174
  %617 = lshr i32 %616, 24, !dbg !174
  %618 = or i32 %614, %617, !dbg !174
  %619 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !174
  store i32 %618, i32* %619, align 8, !dbg !174
  %620 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !174
  %621 = load i32, i32* %620, align 8, !dbg !174
  %622 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !174
  %623 = load i32, i32* %622, align 4, !dbg !174
  %624 = add i32 %623, %621, !dbg !174
  store i32 %624, i32* %622, align 4, !dbg !174
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !174
  %626 = load i32, i32* %625, align 4, !dbg !174
  %627 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !174
  %628 = load i32, i32* %627, align 16, !dbg !174
  %629 = xor i32 %628, %626, !dbg !174
  store i32 %629, i32* %627, align 16, !dbg !174
  %630 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !174
  %631 = load i32, i32* %630, align 16, !dbg !174
  %632 = shl i32 %631, 7, !dbg !174
  %633 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !174
  %634 = load i32, i32* %633, align 16, !dbg !174
  %635 = lshr i32 %634, 25, !dbg !174
  %636 = or i32 %632, %635, !dbg !174
  %637 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !174
  store i32 %636, i32* %637, align 16, !dbg !174
  br label %638, !dbg !174

638:                                              ; preds = %565
  br label %639, !dbg !176

639:                                              ; preds = %638
  %640 = add nsw i32 %.0, 1, !dbg !177
  call void @llvm.dbg.value(metadata i32 %640, metadata !142, metadata !DIExpression()), !dbg !144
  br label %44, !dbg !178, !llvm.loop !179

641:                                              ; preds = %44
  call void @llvm.dbg.value(metadata i64 0, metadata !85, metadata !DIExpression()), !dbg !71
  br label %642, !dbg !181

642:                                              ; preds = %652, %641
  %.2 = phi i64 [ 0, %641 ], [ %653, %652 ], !dbg !183
  call void @llvm.dbg.value(metadata i64 %.2, metadata !85, metadata !DIExpression()), !dbg !71
  %643 = icmp ult i64 %.2, 4, !dbg !184
  br i1 %643, label %644, label %654, !dbg !186

644:                                              ; preds = %642
  %645 = shl i64 %.2, 2, !dbg !187
  %646 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %645, !dbg !189
  %647 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.2, !dbg !190
  %648 = load i32, i32* %647, align 4, !dbg !190
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* @br_chacha20_ct_run.CW, i64 0, i64 %.2, !dbg !191
  %650 = load i32, i32* %649, align 4, !dbg !191
  %651 = add i32 %648, %650, !dbg !192
  call void @br_enc32le(i8* %646, i32 %651), !dbg !193
  br label %652, !dbg !194

652:                                              ; preds = %644
  %653 = add i64 %.2, 1, !dbg !195
  call void @llvm.dbg.value(metadata i64 %653, metadata !85, metadata !DIExpression()), !dbg !71
  br label %642, !dbg !196, !llvm.loop !197

654:                                              ; preds = %642
  call void @llvm.dbg.value(metadata i64 4, metadata !85, metadata !DIExpression()), !dbg !71
  br label %655, !dbg !199

655:                                              ; preds = %666, %654
  %.3 = phi i64 [ 4, %654 ], [ %667, %666 ], !dbg !201
  call void @llvm.dbg.value(metadata i64 %.3, metadata !85, metadata !DIExpression()), !dbg !71
  %656 = icmp ult i64 %.3, 12, !dbg !202
  br i1 %656, label %657, label %668, !dbg !204

657:                                              ; preds = %655
  %658 = shl i64 %.3, 2, !dbg !205
  %659 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %658, !dbg !207
  %660 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.3, !dbg !208
  %661 = load i32, i32* %660, align 4, !dbg !208
  %662 = sub i64 %.3, 4, !dbg !209
  %663 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %662, !dbg !210
  %664 = load i32, i32* %663, align 4, !dbg !210
  %665 = add i32 %661, %664, !dbg !211
  call void @br_enc32le(i8* %659, i32 %665), !dbg !212
  br label %666, !dbg !213

666:                                              ; preds = %657
  %667 = add i64 %.3, 1, !dbg !214
  call void @llvm.dbg.value(metadata i64 %667, metadata !85, metadata !DIExpression()), !dbg !71
  br label %655, !dbg !215, !llvm.loop !216

668:                                              ; preds = %655
  %669 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 48, !dbg !218
  %670 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !219
  %671 = load i32, i32* %670, align 16, !dbg !219
  %672 = add i32 %671, %.02, !dbg !220
  call void @br_enc32le(i8* %669, i32 %672), !dbg !221
  call void @llvm.dbg.value(metadata i64 13, metadata !85, metadata !DIExpression()), !dbg !71
  br label %673, !dbg !222

673:                                              ; preds = %684, %668
  %.4 = phi i64 [ 13, %668 ], [ %685, %684 ], !dbg !224
  call void @llvm.dbg.value(metadata i64 %.4, metadata !85, metadata !DIExpression()), !dbg !71
  %674 = icmp ult i64 %.4, 16, !dbg !225
  br i1 %674, label %675, label %686, !dbg !227

675:                                              ; preds = %673
  %676 = shl i64 %.4, 2, !dbg !228
  %677 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %676, !dbg !230
  %678 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.4, !dbg !231
  %679 = load i32, i32* %678, align 4, !dbg !231
  %680 = sub i64 %.4, 13, !dbg !232
  %681 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %680, !dbg !233
  %682 = load i32, i32* %681, align 4, !dbg !233
  %683 = add i32 %679, %682, !dbg !234
  call void @br_enc32le(i8* %677, i32 %683), !dbg !235
  br label %684, !dbg !236

684:                                              ; preds = %675
  %685 = add i64 %.4, 1, !dbg !237
  call void @llvm.dbg.value(metadata i64 %685, metadata !85, metadata !DIExpression()), !dbg !71
  br label %673, !dbg !238, !llvm.loop !239

686:                                              ; preds = %673
  %687 = icmp ult i64 %.04, 64, !dbg !241
  br i1 %687, label %688, label %689, !dbg !242

688:                                              ; preds = %686
  br label %690, !dbg !242

689:                                              ; preds = %686
  br label %690, !dbg !242

690:                                              ; preds = %689, %688
  %691 = phi i64 [ %.04, %688 ], [ 64, %689 ], !dbg !242
  call void @llvm.dbg.value(metadata i64 %691, metadata !243, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i64 0, metadata !85, metadata !DIExpression()), !dbg !71
  br label %692, !dbg !244

692:                                              ; preds = %703, %690
  %.5 = phi i64 [ 0, %690 ], [ %704, %703 ], !dbg !246
  call void @llvm.dbg.value(metadata i64 %.5, metadata !85, metadata !DIExpression()), !dbg !71
  %693 = icmp ult i64 %.5, %691, !dbg !247
  br i1 %693, label %694, label %705, !dbg !249

694:                                              ; preds = %692
  %695 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %.5, !dbg !250
  %696 = load i8, i8* %695, align 1, !dbg !250
  %697 = zext i8 %696 to i32, !dbg !250
  %698 = getelementptr inbounds i8, i8* %.03, i64 %.5, !dbg !252
  %699 = load i8, i8* %698, align 1, !dbg !253
  %700 = zext i8 %699 to i32, !dbg !253
  %701 = xor i32 %700, %697, !dbg !253
  %702 = trunc i32 %701 to i8, !dbg !253
  store i8 %702, i8* %698, align 1, !dbg !253
  br label %703, !dbg !254

703:                                              ; preds = %694
  %704 = add i64 %.5, 1, !dbg !255
  call void @llvm.dbg.value(metadata i64 %704, metadata !85, metadata !DIExpression()), !dbg !71
  br label %692, !dbg !256, !llvm.loop !257

705:                                              ; preds = %692
  %706 = getelementptr inbounds i8, i8* %.03, i64 %691, !dbg !259
  call void @llvm.dbg.value(metadata i8* %706, metadata !84, metadata !DIExpression()), !dbg !71
  %707 = sub i64 %.04, %691, !dbg !260
  call void @llvm.dbg.value(metadata i64 %707, metadata !75, metadata !DIExpression()), !dbg !71
  %708 = add i32 %.02, 1, !dbg !261
  call void @llvm.dbg.value(metadata i32 %708, metadata !73, metadata !DIExpression()), !dbg !71
  br label %30, !dbg !121, !llvm.loop !262

709:                                              ; preds = %30
  ret i32 %.02, !dbg !264
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* %0) #0 !dbg !265 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !268, metadata !DIExpression()), !dbg !269
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !270
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !271
  %4 = load i32, i32* %3, align 4, !dbg !271
  ret i32 %4, !dbg !272
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le(i8* %0, i32 %1) #0 !dbg !273 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !277
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !279
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !280
  store i32 %1, i32* %4, align 4, !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_poly1305_ctmulq_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !283 {
  %10 = alloca [32 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca [6 x i64], align 16
  %13 = alloca [3 x i64], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i8* %1, metadata !291, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i8* %2, metadata !292, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %3, metadata !293, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i8* %4, metadata !294, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %5, metadata !295, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i8* %6, metadata !296, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !297, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 %8, metadata !298, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata [32 x i8]* %10, metadata !299, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata [16 x i8]* %11, metadata !304, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata [6 x i64]* %12, metadata !307, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata [3 x i64]* %13, metadata !312, metadata !DIExpression()), !dbg !314
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !315
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false), !dbg !315
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !316
  %16 = call i32 %7(i8* %0, i8* %1, i32 0, i8* %15, i64 32), !dbg !317
  %17 = icmp ne i32 %8, 0, !dbg !318
  br i1 %17, label %18, label %20, !dbg !320

18:                                               ; preds = %9
  %19 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !321
  br label %20, !dbg !323

20:                                               ; preds = %18, %9
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 3, !dbg !324
  %22 = load i8, i8* %21, align 1, !dbg !325
  %23 = zext i8 %22 to i32, !dbg !325
  %24 = and i32 %23, 15, !dbg !325
  %25 = trunc i32 %24 to i8, !dbg !325
  store i8 %25, i8* %21, align 1, !dbg !325
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 4, !dbg !326
  %27 = load i8, i8* %26, align 4, !dbg !327
  %28 = zext i8 %27 to i32, !dbg !327
  %29 = and i32 %28, 252, !dbg !327
  %30 = trunc i32 %29 to i8, !dbg !327
  store i8 %30, i8* %26, align 4, !dbg !327
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 7, !dbg !328
  %32 = load i8, i8* %31, align 1, !dbg !329
  %33 = zext i8 %32 to i32, !dbg !329
  %34 = and i32 %33, 15, !dbg !329
  %35 = trunc i32 %34 to i8, !dbg !329
  store i8 %35, i8* %31, align 1, !dbg !329
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 8, !dbg !330
  %37 = load i8, i8* %36, align 8, !dbg !331
  %38 = zext i8 %37 to i32, !dbg !331
  %39 = and i32 %38, 252, !dbg !331
  %40 = trunc i32 %39 to i8, !dbg !331
  store i8 %40, i8* %36, align 8, !dbg !331
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 11, !dbg !332
  %42 = load i8, i8* %41, align 1, !dbg !333
  %43 = zext i8 %42 to i32, !dbg !333
  %44 = and i32 %43, 15, !dbg !333
  %45 = trunc i32 %44 to i8, !dbg !333
  store i8 %45, i8* %41, align 1, !dbg !333
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 12, !dbg !334
  %47 = load i8, i8* %46, align 4, !dbg !335
  %48 = zext i8 %47 to i32, !dbg !335
  %49 = and i32 %48, 252, !dbg !335
  %50 = trunc i32 %49 to i8, !dbg !335
  store i8 %50, i8* %46, align 4, !dbg !335
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 15, !dbg !336
  %52 = load i8, i8* %51, align 1, !dbg !337
  %53 = zext i8 %52 to i32, !dbg !337
  %54 = and i32 %53, 15, !dbg !337
  %55 = trunc i32 %54 to i8, !dbg !337
  store i8 %55, i8* %51, align 1, !dbg !337
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !338
  %57 = getelementptr inbounds i8, i8* %56, i64 0, !dbg !339
  %58 = call i64 @br_dec64le(i8* %57), !dbg !340
  call void @llvm.dbg.value(metadata i64 %58, metadata !341, metadata !DIExpression()), !dbg !290
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !342
  %60 = getelementptr inbounds i8, i8* %59, i64 8, !dbg !343
  %61 = call i64 @br_dec64le(i8* %60), !dbg !344
  call void @llvm.dbg.value(metadata i64 %61, metadata !345, metadata !DIExpression()), !dbg !290
  %62 = shl i64 %58, 20, !dbg !346
  %63 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0, !dbg !347
  store i64 %62, i64* %63, align 16, !dbg !348
  %64 = lshr i64 %58, 24, !dbg !349
  %65 = shl i64 %61, 40, !dbg !350
  %66 = or i64 %64, %65, !dbg !351
  %67 = and i64 %66, -1048576, !dbg !352
  %68 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 1, !dbg !353
  store i64 %67, i64* %68, align 8, !dbg !354
  %69 = lshr i64 %61, 4, !dbg !355
  %70 = and i64 %69, -1048576, !dbg !356
  %71 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 2, !dbg !357
  store i64 %70, i64* %71, align 16, !dbg !358
  %72 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 1, !dbg !359
  %73 = load i64, i64* %72, align 8, !dbg !359
  %74 = lshr i64 %73, 20, !dbg !360
  %75 = mul i64 20, %74, !dbg !361
  call void @llvm.dbg.value(metadata i64 %75, metadata !345, metadata !DIExpression()), !dbg !290
  %76 = shl i64 %75, 20, !dbg !362
  %77 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 3, !dbg !363
  store i64 %76, i64* %77, align 8, !dbg !364
  %78 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 2, !dbg !365
  %79 = load i64, i64* %78, align 16, !dbg !365
  %80 = mul i64 20, %79, !dbg !366
  %81 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 5, !dbg !367
  store i64 %80, i64* %81, align 8, !dbg !368
  %82 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 5, !dbg !369
  %83 = load i64, i64* %82, align 8, !dbg !369
  %84 = lshr i64 %75, 24, !dbg !370
  %85 = add i64 %83, %84, !dbg !371
  %86 = and i64 %85, -1048576, !dbg !372
  %87 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 4, !dbg !373
  store i64 %86, i64* %87, align 16, !dbg !374
  %88 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !375
  store i64 0, i64* %88, align 16, !dbg !376
  %89 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !377
  store i64 0, i64* %89, align 8, !dbg !378
  %90 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !379
  store i64 0, i64* %90, align 16, !dbg !380
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !381
  call void @br_enc64le(i8* %91, i64 %5), !dbg !382
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !383
  %93 = getelementptr inbounds i8, i8* %92, i64 8, !dbg !384
  call void @br_enc64le(i8* %93, i64 %3), !dbg !385
  %94 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !386
  %95 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0, !dbg !387
  call void @poly1305_inner(i64* %94, i64* %95, i8* %4, i64 %5), !dbg !388
  %96 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !389
  %97 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0, !dbg !390
  call void @poly1305_inner(i64* %96, i64* %97, i8* %2, i64 %3), !dbg !391
  %98 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !392
  %99 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0, !dbg !393
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !394
  call void @poly1305_inner_small(i64* %98, i64* %99, i8* %100, i64 16), !dbg !395
  %101 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !396
  %102 = load i64, i64* %101, align 16, !dbg !396
  %103 = lshr i64 %102, 44, !dbg !397
  %104 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !398
  %105 = load i64, i64* %104, align 8, !dbg !399
  %106 = add i64 %105, %103, !dbg !399
  store i64 %106, i64* %104, align 8, !dbg !399
  %107 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !400
  %108 = load i64, i64* %107, align 16, !dbg !401
  %109 = and i64 %108, 17592186044415, !dbg !401
  store i64 %109, i64* %107, align 16, !dbg !401
  %110 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !402
  %111 = load i64, i64* %110, align 8, !dbg !402
  %112 = lshr i64 %111, 44, !dbg !403
  %113 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !404
  %114 = load i64, i64* %113, align 16, !dbg !405
  %115 = add i64 %114, %112, !dbg !405
  store i64 %115, i64* %113, align 16, !dbg !405
  %116 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !406
  %117 = load i64, i64* %116, align 8, !dbg !407
  %118 = and i64 %117, 17592186044415, !dbg !407
  store i64 %118, i64* %116, align 8, !dbg !407
  %119 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !408
  %120 = load i64, i64* %119, align 16, !dbg !408
  %121 = lshr i64 %120, 42, !dbg !409
  %122 = mul i64 5, %121, !dbg !410
  %123 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !411
  %124 = load i64, i64* %123, align 16, !dbg !412
  %125 = add i64 %124, %122, !dbg !412
  store i64 %125, i64* %123, align 16, !dbg !412
  %126 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !413
  %127 = load i64, i64* %126, align 16, !dbg !414
  %128 = and i64 %127, 4398046511103, !dbg !414
  store i64 %128, i64* %126, align 16, !dbg !414
  %129 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !415
  %130 = load i64, i64* %129, align 16, !dbg !415
  %131 = lshr i64 %130, 44, !dbg !416
  %132 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !417
  %133 = load i64, i64* %132, align 8, !dbg !418
  %134 = add i64 %133, %131, !dbg !418
  store i64 %134, i64* %132, align 8, !dbg !418
  %135 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !419
  %136 = load i64, i64* %135, align 16, !dbg !420
  %137 = and i64 %136, 17592186044415, !dbg !420
  store i64 %137, i64* %135, align 16, !dbg !420
  %138 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !421
  %139 = load i64, i64* %138, align 8, !dbg !421
  %140 = lshr i64 %139, 44, !dbg !422
  %141 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !423
  %142 = load i64, i64* %141, align 16, !dbg !424
  %143 = add i64 %142, %140, !dbg !424
  store i64 %143, i64* %141, align 16, !dbg !424
  %144 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !425
  %145 = load i64, i64* %144, align 8, !dbg !426
  %146 = and i64 %145, 17592186044415, !dbg !426
  store i64 %146, i64* %144, align 8, !dbg !426
  %147 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !427
  %148 = load i64, i64* %147, align 16, !dbg !427
  %149 = lshr i64 %148, 42, !dbg !428
  %150 = mul i64 5, %149, !dbg !429
  %151 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !430
  %152 = load i64, i64* %151, align 16, !dbg !431
  %153 = add i64 %152, %150, !dbg !431
  store i64 %153, i64* %151, align 16, !dbg !431
  %154 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !432
  %155 = load i64, i64* %154, align 16, !dbg !433
  %156 = and i64 %155, 4398046511103, !dbg !433
  store i64 %156, i64* %154, align 16, !dbg !433
  %157 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !434
  %158 = load i64, i64* %157, align 16, !dbg !434
  %159 = trunc i64 %158 to i32, !dbg !435
  call void @llvm.dbg.value(metadata i32 %159, metadata !436, metadata !DIExpression()), !dbg !290
  %160 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !437
  %161 = load i64, i64* %160, align 16, !dbg !437
  %162 = lshr i64 %161, 32, !dbg !438
  %163 = trunc i64 %162 to i32, !dbg !439
  %164 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !440
  %165 = load i64, i64* %164, align 8, !dbg !440
  %166 = trunc i64 %165 to i32, !dbg !441
  %167 = shl i32 %166, 12, !dbg !442
  %168 = or i32 %163, %167, !dbg !443
  call void @llvm.dbg.value(metadata i32 %168, metadata !444, metadata !DIExpression()), !dbg !290
  %169 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !445
  %170 = load i64, i64* %169, align 8, !dbg !445
  %171 = lshr i64 %170, 20, !dbg !446
  %172 = trunc i64 %171 to i32, !dbg !447
  %173 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !448
  %174 = load i64, i64* %173, align 16, !dbg !448
  %175 = trunc i64 %174 to i32, !dbg !449
  %176 = shl i32 %175, 24, !dbg !450
  %177 = or i32 %172, %176, !dbg !451
  call void @llvm.dbg.value(metadata i32 %177, metadata !452, metadata !DIExpression()), !dbg !290
  %178 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !453
  %179 = load i64, i64* %178, align 16, !dbg !453
  %180 = lshr i64 %179, 8, !dbg !454
  %181 = trunc i64 %180 to i32, !dbg !455
  call void @llvm.dbg.value(metadata i32 %181, metadata !456, metadata !DIExpression()), !dbg !290
  %182 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !457
  %183 = load i64, i64* %182, align 16, !dbg !457
  %184 = lshr i64 %183, 40, !dbg !458
  %185 = trunc i64 %184 to i32, !dbg !459
  call void @llvm.dbg.value(metadata i32 %185, metadata !460, metadata !DIExpression()), !dbg !290
  %186 = call i32 @GT(i32 %159, i32 -6), !dbg !461
  call void @llvm.dbg.value(metadata i32 %186, metadata !462, metadata !DIExpression()), !dbg !290
  %187 = call i32 @EQ(i32 %168, i32 -1), !dbg !463
  %188 = and i32 %186, %187, !dbg !464
  call void @llvm.dbg.value(metadata i32 %188, metadata !462, metadata !DIExpression()), !dbg !290
  %189 = call i32 @EQ(i32 %177, i32 -1), !dbg !465
  %190 = and i32 %188, %189, !dbg !466
  call void @llvm.dbg.value(metadata i32 %190, metadata !462, metadata !DIExpression()), !dbg !290
  %191 = call i32 @EQ(i32 %181, i32 -1), !dbg !467
  %192 = and i32 %190, %191, !dbg !468
  call void @llvm.dbg.value(metadata i32 %192, metadata !462, metadata !DIExpression()), !dbg !290
  %193 = call i32 @EQ(i32 %185, i32 3), !dbg !469
  %194 = and i32 %192, %193, !dbg !470
  call void @llvm.dbg.value(metadata i32 %194, metadata !462, metadata !DIExpression()), !dbg !290
  %195 = add i32 %159, 5, !dbg !471
  %196 = call i32 @MUX(i32 %194, i32 %195, i32 %159), !dbg !472
  call void @llvm.dbg.value(metadata i32 %196, metadata !436, metadata !DIExpression()), !dbg !290
  %197 = call i32 @MUX(i32 %194, i32 0, i32 %168), !dbg !473
  call void @llvm.dbg.value(metadata i32 %197, metadata !444, metadata !DIExpression()), !dbg !290
  %198 = call i32 @MUX(i32 %194, i32 0, i32 %177), !dbg !474
  call void @llvm.dbg.value(metadata i32 %198, metadata !452, metadata !DIExpression()), !dbg !290
  %199 = call i32 @MUX(i32 %194, i32 0, i32 %181), !dbg !475
  call void @llvm.dbg.value(metadata i32 %199, metadata !456, metadata !DIExpression()), !dbg !290
  %200 = zext i32 %196 to i64, !dbg !476
  %201 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !477
  %202 = getelementptr inbounds i8, i8* %201, i64 16, !dbg !478
  %203 = call i32 @br_dec32le.1(i8* %202), !dbg !479
  %204 = zext i32 %203 to i64, !dbg !480
  %205 = add i64 %200, %204, !dbg !481
  call void @llvm.dbg.value(metadata i64 %205, metadata !482, metadata !DIExpression()), !dbg !290
  %206 = zext i32 %197 to i64, !dbg !483
  %207 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !484
  %208 = getelementptr inbounds i8, i8* %207, i64 20, !dbg !485
  %209 = call i32 @br_dec32le.1(i8* %208), !dbg !486
  %210 = zext i32 %209 to i64, !dbg !487
  %211 = add i64 %206, %210, !dbg !488
  %212 = lshr i64 %205, 32, !dbg !489
  %213 = add i64 %211, %212, !dbg !490
  call void @llvm.dbg.value(metadata i64 %213, metadata !491, metadata !DIExpression()), !dbg !290
  %214 = zext i32 %198 to i64, !dbg !492
  %215 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !493
  %216 = getelementptr inbounds i8, i8* %215, i64 24, !dbg !494
  %217 = call i32 @br_dec32le.1(i8* %216), !dbg !495
  %218 = zext i32 %217 to i64, !dbg !496
  %219 = add i64 %214, %218, !dbg !497
  %220 = lshr i64 %213, 32, !dbg !498
  %221 = add i64 %219, %220, !dbg !499
  call void @llvm.dbg.value(metadata i64 %221, metadata !500, metadata !DIExpression()), !dbg !290
  %222 = zext i32 %199 to i64, !dbg !501
  %223 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !502
  %224 = getelementptr inbounds i8, i8* %223, i64 28, !dbg !503
  %225 = call i32 @br_dec32le.1(i8* %224), !dbg !504
  %226 = zext i32 %225 to i64, !dbg !505
  %227 = add i64 %222, %226, !dbg !506
  %228 = lshr i64 %221, 32, !dbg !507
  %229 = add i64 %227, %228, !dbg !508
  call void @llvm.dbg.value(metadata i64 %229, metadata !509, metadata !DIExpression()), !dbg !290
  %230 = trunc i64 %205 to i32, !dbg !510
  call void @llvm.dbg.value(metadata i32 %230, metadata !436, metadata !DIExpression()), !dbg !290
  %231 = trunc i64 %213 to i32, !dbg !511
  call void @llvm.dbg.value(metadata i32 %231, metadata !444, metadata !DIExpression()), !dbg !290
  %232 = trunc i64 %221 to i32, !dbg !512
  call void @llvm.dbg.value(metadata i32 %232, metadata !452, metadata !DIExpression()), !dbg !290
  %233 = trunc i64 %229 to i32, !dbg !513
  call void @llvm.dbg.value(metadata i32 %233, metadata !456, metadata !DIExpression()), !dbg !290
  %234 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !514
  call void @br_enc32le.2(i8* %234, i32 %230), !dbg !515
  %235 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !516
  call void @br_enc32le.2(i8* %235, i32 %231), !dbg !517
  %236 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !518
  call void @br_enc32le.2(i8* %236, i32 %232), !dbg !519
  %237 = getelementptr inbounds i8, i8* %6, i64 12, !dbg !520
  call void @br_enc32le.2(i8* %237, i32 %233), !dbg !521
  %238 = icmp ne i32 %8, 0, !dbg !522
  br i1 %238, label %241, label %239, !dbg !524

239:                                              ; preds = %20
  %240 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !525
  br label %241, !dbg !527

241:                                              ; preds = %239, %20
  ret void, !dbg !528
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @br_dec64le(i8* %0) #0 !dbg !529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !532, metadata !DIExpression()), !dbg !533
  %2 = bitcast i8* %0 to %union.br_union_u64*, !dbg !534
  %3 = bitcast %union.br_union_u64* %2 to i64*, !dbg !535
  %4 = load i64, i64* %3, align 8, !dbg !535
  ret i64 %4, !dbg !536
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64le(i8* %0, i64 %1) #0 !dbg !537 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !540, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i64 %1, metadata !542, metadata !DIExpression()), !dbg !541
  %3 = bitcast i8* %0 to %union.br_union_u64*, !dbg !543
  %4 = bitcast %union.br_union_u64* %3 to i64*, !dbg !544
  store i64 %1, i64* %4, align 8, !dbg !545
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner(i64* %0, i64* %1, i8* %2, i64 %3) #0 !dbg !547 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64* %1, metadata !553, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %2, metadata !554, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64 %3, metadata !555, metadata !DIExpression()), !dbg !552
  %5 = icmp uge i64 %3, 64, !dbg !556
  br i1 %5, label %6, label %10, !dbg !558

6:                                                ; preds = %4
  %7 = and i64 %3, -64, !dbg !559
  call void @llvm.dbg.value(metadata i64 %7, metadata !561, metadata !DIExpression()), !dbg !562
  call void @poly1305_inner_big(i64* %0, i64* %1, i8* %2, i64 %7), !dbg !563
  %8 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !564
  call void @llvm.dbg.value(metadata i8* %8, metadata !554, metadata !DIExpression()), !dbg !552
  %9 = sub i64 %3, %7, !dbg !565
  call void @llvm.dbg.value(metadata i64 %9, metadata !555, metadata !DIExpression()), !dbg !552
  br label %10, !dbg !566

10:                                               ; preds = %6, %4
  %.01 = phi i8* [ %8, %6 ], [ %2, %4 ]
  %.0 = phi i64 [ %9, %6 ], [ %3, %4 ]
  call void @llvm.dbg.value(metadata i64 %.0, metadata !555, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %.01, metadata !554, metadata !DIExpression()), !dbg !552
  %11 = icmp ugt i64 %.0, 0, !dbg !567
  br i1 %11, label %12, label %13, !dbg !569

12:                                               ; preds = %10
  call void @poly1305_inner_small(i64* %0, i64* %1, i8* %.01, i64 %.0), !dbg !570
  br label %13, !dbg !572

13:                                               ; preds = %12, %10
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner_small(i64* %0, i64* %1, i8* %2, i64 %3) #0 !dbg !574 {
  %5 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !575, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i64* %1, metadata !577, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i8* %2, metadata !578, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i64 %3, metadata !579, metadata !DIExpression()), !dbg !576
  %6 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !580
  %7 = load i64, i64* %6, align 8, !dbg !580
  call void @llvm.dbg.value(metadata i64 %7, metadata !581, metadata !DIExpression()), !dbg !576
  %8 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !582
  %9 = load i64, i64* %8, align 8, !dbg !582
  call void @llvm.dbg.value(metadata i64 %9, metadata !583, metadata !DIExpression()), !dbg !576
  %10 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !584
  %11 = load i64, i64* %10, align 8, !dbg !584
  call void @llvm.dbg.value(metadata i64 %11, metadata !585, metadata !DIExpression()), !dbg !576
  %12 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !586
  %13 = load i64, i64* %12, align 8, !dbg !586
  call void @llvm.dbg.value(metadata i64 %13, metadata !587, metadata !DIExpression()), !dbg !576
  %14 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !588
  %15 = load i64, i64* %14, align 8, !dbg !588
  call void @llvm.dbg.value(metadata i64 %15, metadata !589, metadata !DIExpression()), !dbg !576
  %16 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !590
  %17 = load i64, i64* %16, align 8, !dbg !590
  call void @llvm.dbg.value(metadata i64 %17, metadata !591, metadata !DIExpression()), !dbg !576
  %18 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !592
  %19 = load i64, i64* %18, align 8, !dbg !592
  call void @llvm.dbg.value(metadata i64 %19, metadata !593, metadata !DIExpression()), !dbg !576
  %20 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !594
  %21 = load i64, i64* %20, align 8, !dbg !594
  call void @llvm.dbg.value(metadata i64 %21, metadata !595, metadata !DIExpression()), !dbg !576
  %22 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !596
  %23 = load i64, i64* %22, align 8, !dbg !596
  call void @llvm.dbg.value(metadata i64 %23, metadata !597, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i8* %2, metadata !598, metadata !DIExpression()), !dbg !576
  br label %24, !dbg !599

24:                                               ; preds = %147, %4
  %.05 = phi i64 [ %23, %4 ], [ %161, %147 ], !dbg !576
  %.04 = phi i64 [ %21, %4 ], [ %157, %147 ], !dbg !576
  %.03 = phi i64 [ %19, %4 ], [ %160, %147 ], !dbg !576
  %.01 = phi i8* [ %2, %4 ], [ %162, %147 ], !dbg !576
  %.0 = phi i64 [ %3, %4 ], [ %163, %147 ]
  call void @llvm.dbg.value(metadata i64 %.0, metadata !579, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i8* %.01, metadata !598, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i64 %.03, metadata !593, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i64 %.04, metadata !595, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i64 %.05, metadata !597, metadata !DIExpression()), !dbg !576
  %25 = icmp ugt i64 %.0, 0, !dbg !600
  br i1 %25, label %26, label %164, !dbg !599

26:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !601, metadata !DIExpression()), !dbg !603
  %27 = icmp ult i64 %.0, 16, !dbg !604
  br i1 %27, label %28, label %34, !dbg !606

28:                                               ; preds = %26
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !607
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 1 %.01, i64 %.0, i1 false), !dbg !607
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !609
  %31 = getelementptr inbounds i8, i8* %30, i64 %.0, !dbg !610
  %32 = sub i64 16, %.0, !dbg !611
  call void @llvm.memset.p0i8.i64(i8* align 1 %31, i8 0, i64 %32, i1 false), !dbg !612
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !613
  call void @llvm.dbg.value(metadata i8* %33, metadata !598, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i64 16, metadata !579, metadata !DIExpression()), !dbg !576
  br label %34, !dbg !614

34:                                               ; preds = %28, %26
  %.12 = phi i8* [ %33, %28 ], [ %.01, %26 ], !dbg !576
  %.1 = phi i64 [ 16, %28 ], [ %.0, %26 ]
  call void @llvm.dbg.value(metadata i64 %.1, metadata !579, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i8* %.12, metadata !598, metadata !DIExpression()), !dbg !576
  %35 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !615
  %36 = call i64 @br_dec64le(i8* %35), !dbg !616
  call void @llvm.dbg.value(metadata i64 %36, metadata !617, metadata !DIExpression()), !dbg !618
  %37 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !619
  %38 = call i64 @br_dec64le(i8* %37), !dbg !620
  call void @llvm.dbg.value(metadata i64 %38, metadata !621, metadata !DIExpression()), !dbg !618
  %39 = lshr i64 %38, 24, !dbg !622
  call void @llvm.dbg.value(metadata i64 %39, metadata !623, metadata !DIExpression()), !dbg !618
  %40 = lshr i64 %36, 44, !dbg !624
  %41 = shl i64 %38, 20, !dbg !625
  %42 = or i64 %40, %41, !dbg !626
  %43 = and i64 %42, 17592186044415, !dbg !627
  call void @llvm.dbg.value(metadata i64 %43, metadata !621, metadata !DIExpression()), !dbg !618
  %44 = and i64 %36, 17592186044415, !dbg !628
  call void @llvm.dbg.value(metadata i64 %44, metadata !617, metadata !DIExpression()), !dbg !618
  %45 = add i64 %.03, %44, !dbg !629
  call void @llvm.dbg.value(metadata i64 %45, metadata !593, metadata !DIExpression()), !dbg !576
  %46 = add i64 %.04, %43, !dbg !630
  call void @llvm.dbg.value(metadata i64 %46, metadata !595, metadata !DIExpression()), !dbg !576
  %47 = add i64 %39, 1099511627776, !dbg !631
  %48 = add i64 %.05, %47, !dbg !632
  call void @llvm.dbg.value(metadata i64 %48, metadata !597, metadata !DIExpression()), !dbg !576
  br label %49, !dbg !633

49:                                               ; preds = %34
  br label %50, !dbg !634

50:                                               ; preds = %49
  %51 = zext i64 %45 to i128, !dbg !636
  %52 = zext i64 %7 to i128, !dbg !636
  %53 = mul i128 %51, %52, !dbg !636
  call void @llvm.dbg.value(metadata i128 %53, metadata !638, metadata !DIExpression()), !dbg !639
  %54 = lshr i128 %53, 64, !dbg !636
  %55 = trunc i128 %54 to i64, !dbg !636
  call void @llvm.dbg.value(metadata i64 %55, metadata !640, metadata !DIExpression()), !dbg !641
  %56 = trunc i128 %53 to i64, !dbg !636
  call void @llvm.dbg.value(metadata i64 %56, metadata !642, metadata !DIExpression()), !dbg !641
  br label %57, !dbg !636

57:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %55, metadata !643, metadata !DIExpression()), !dbg !618
  %58 = lshr i64 %56, 20, !dbg !634
  call void @llvm.dbg.value(metadata i64 %58, metadata !644, metadata !DIExpression()), !dbg !618
  br label %59, !dbg !634

59:                                               ; preds = %57
  %60 = zext i64 %46 to i128, !dbg !645
  %61 = zext i64 %17 to i128, !dbg !645
  %62 = mul i128 %60, %61, !dbg !645
  call void @llvm.dbg.value(metadata i128 %62, metadata !647, metadata !DIExpression()), !dbg !648
  %63 = lshr i128 %62, 64, !dbg !645
  %64 = trunc i128 %63 to i64, !dbg !645
  call void @llvm.dbg.value(metadata i64 %64, metadata !640, metadata !DIExpression()), !dbg !641
  %65 = trunc i128 %62 to i64, !dbg !645
  call void @llvm.dbg.value(metadata i64 %65, metadata !642, metadata !DIExpression()), !dbg !641
  br label %66, !dbg !645

66:                                               ; preds = %59
  %67 = add i64 %55, %64, !dbg !634
  call void @llvm.dbg.value(metadata i64 %67, metadata !643, metadata !DIExpression()), !dbg !618
  %68 = lshr i64 %65, 20, !dbg !634
  %69 = add i64 %58, %68, !dbg !634
  call void @llvm.dbg.value(metadata i64 %69, metadata !644, metadata !DIExpression()), !dbg !618
  br label %70, !dbg !634

70:                                               ; preds = %66
  %71 = zext i64 %48 to i128, !dbg !649
  %72 = zext i64 %13 to i128, !dbg !649
  %73 = mul i128 %71, %72, !dbg !649
  call void @llvm.dbg.value(metadata i128 %73, metadata !651, metadata !DIExpression()), !dbg !652
  %74 = lshr i128 %73, 64, !dbg !649
  %75 = trunc i128 %74 to i64, !dbg !649
  call void @llvm.dbg.value(metadata i64 %75, metadata !640, metadata !DIExpression()), !dbg !641
  %76 = trunc i128 %73 to i64, !dbg !649
  call void @llvm.dbg.value(metadata i64 %76, metadata !642, metadata !DIExpression()), !dbg !641
  br label %77, !dbg !649

77:                                               ; preds = %70
  %78 = add i64 %67, %75, !dbg !634
  call void @llvm.dbg.value(metadata i64 %78, metadata !643, metadata !DIExpression()), !dbg !618
  %79 = lshr i64 %76, 20, !dbg !634
  %80 = add i64 %69, %79, !dbg !634
  call void @llvm.dbg.value(metadata i64 %80, metadata !644, metadata !DIExpression()), !dbg !618
  br label %81, !dbg !634

81:                                               ; preds = %77
  br label %82, !dbg !653

82:                                               ; preds = %81
  br label %83, !dbg !654

83:                                               ; preds = %82
  %84 = zext i64 %45 to i128, !dbg !656
  %85 = zext i64 %9 to i128, !dbg !656
  %86 = mul i128 %84, %85, !dbg !656
  call void @llvm.dbg.value(metadata i128 %86, metadata !658, metadata !DIExpression()), !dbg !659
  %87 = lshr i128 %86, 64, !dbg !656
  %88 = trunc i128 %87 to i64, !dbg !656
  call void @llvm.dbg.value(metadata i64 %88, metadata !660, metadata !DIExpression()), !dbg !661
  %89 = trunc i128 %86 to i64, !dbg !656
  call void @llvm.dbg.value(metadata i64 %89, metadata !662, metadata !DIExpression()), !dbg !661
  br label %90, !dbg !656

90:                                               ; preds = %83
  call void @llvm.dbg.value(metadata i64 %88, metadata !663, metadata !DIExpression()), !dbg !618
  %91 = lshr i64 %89, 20, !dbg !654
  call void @llvm.dbg.value(metadata i64 %91, metadata !664, metadata !DIExpression()), !dbg !618
  br label %92, !dbg !654

92:                                               ; preds = %90
  %93 = zext i64 %46 to i128, !dbg !665
  %94 = zext i64 %7 to i128, !dbg !665
  %95 = mul i128 %93, %94, !dbg !665
  call void @llvm.dbg.value(metadata i128 %95, metadata !667, metadata !DIExpression()), !dbg !668
  %96 = lshr i128 %95, 64, !dbg !665
  %97 = trunc i128 %96 to i64, !dbg !665
  call void @llvm.dbg.value(metadata i64 %97, metadata !660, metadata !DIExpression()), !dbg !661
  %98 = trunc i128 %95 to i64, !dbg !665
  call void @llvm.dbg.value(metadata i64 %98, metadata !662, metadata !DIExpression()), !dbg !661
  br label %99, !dbg !665

99:                                               ; preds = %92
  %100 = add i64 %88, %97, !dbg !654
  call void @llvm.dbg.value(metadata i64 %100, metadata !663, metadata !DIExpression()), !dbg !618
  %101 = lshr i64 %98, 20, !dbg !654
  %102 = add i64 %91, %101, !dbg !654
  call void @llvm.dbg.value(metadata i64 %102, metadata !664, metadata !DIExpression()), !dbg !618
  br label %103, !dbg !654

103:                                              ; preds = %99
  %104 = zext i64 %48 to i128, !dbg !669
  %105 = zext i64 %15 to i128, !dbg !669
  %106 = mul i128 %104, %105, !dbg !669
  call void @llvm.dbg.value(metadata i128 %106, metadata !671, metadata !DIExpression()), !dbg !672
  %107 = lshr i128 %106, 64, !dbg !669
  %108 = trunc i128 %107 to i64, !dbg !669
  call void @llvm.dbg.value(metadata i64 %108, metadata !660, metadata !DIExpression()), !dbg !661
  %109 = trunc i128 %106 to i64, !dbg !669
  call void @llvm.dbg.value(metadata i64 %109, metadata !662, metadata !DIExpression()), !dbg !661
  br label %110, !dbg !669

110:                                              ; preds = %103
  %111 = add i64 %100, %108, !dbg !654
  call void @llvm.dbg.value(metadata i64 %111, metadata !663, metadata !DIExpression()), !dbg !618
  %112 = lshr i64 %109, 20, !dbg !654
  %113 = add i64 %102, %112, !dbg !654
  call void @llvm.dbg.value(metadata i64 %113, metadata !664, metadata !DIExpression()), !dbg !618
  br label %114, !dbg !654

114:                                              ; preds = %110
  br label %115, !dbg !673

115:                                              ; preds = %114
  br label %116, !dbg !674

116:                                              ; preds = %115
  %117 = zext i64 %45 to i128, !dbg !676
  %118 = zext i64 %11 to i128, !dbg !676
  %119 = mul i128 %117, %118, !dbg !676
  call void @llvm.dbg.value(metadata i128 %119, metadata !678, metadata !DIExpression()), !dbg !679
  %120 = lshr i128 %119, 64, !dbg !676
  %121 = trunc i128 %120 to i64, !dbg !676
  call void @llvm.dbg.value(metadata i64 %121, metadata !680, metadata !DIExpression()), !dbg !681
  %122 = trunc i128 %119 to i64, !dbg !676
  call void @llvm.dbg.value(metadata i64 %122, metadata !682, metadata !DIExpression()), !dbg !681
  br label %123, !dbg !676

123:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 %121, metadata !683, metadata !DIExpression()), !dbg !618
  %124 = lshr i64 %122, 20, !dbg !674
  call void @llvm.dbg.value(metadata i64 %124, metadata !684, metadata !DIExpression()), !dbg !618
  br label %125, !dbg !674

125:                                              ; preds = %123
  %126 = zext i64 %46 to i128, !dbg !685
  %127 = zext i64 %9 to i128, !dbg !685
  %128 = mul i128 %126, %127, !dbg !685
  call void @llvm.dbg.value(metadata i128 %128, metadata !687, metadata !DIExpression()), !dbg !688
  %129 = lshr i128 %128, 64, !dbg !685
  %130 = trunc i128 %129 to i64, !dbg !685
  call void @llvm.dbg.value(metadata i64 %130, metadata !680, metadata !DIExpression()), !dbg !681
  %131 = trunc i128 %128 to i64, !dbg !685
  call void @llvm.dbg.value(metadata i64 %131, metadata !682, metadata !DIExpression()), !dbg !681
  br label %132, !dbg !685

132:                                              ; preds = %125
  %133 = add i64 %121, %130, !dbg !674
  call void @llvm.dbg.value(metadata i64 %133, metadata !683, metadata !DIExpression()), !dbg !618
  %134 = lshr i64 %131, 20, !dbg !674
  %135 = add i64 %124, %134, !dbg !674
  call void @llvm.dbg.value(metadata i64 %135, metadata !684, metadata !DIExpression()), !dbg !618
  br label %136, !dbg !674

136:                                              ; preds = %132
  %137 = zext i64 %48 to i128, !dbg !689
  %138 = zext i64 %7 to i128, !dbg !689
  %139 = mul i128 %137, %138, !dbg !689
  call void @llvm.dbg.value(metadata i128 %139, metadata !691, metadata !DIExpression()), !dbg !692
  %140 = lshr i128 %139, 64, !dbg !689
  %141 = trunc i128 %140 to i64, !dbg !689
  call void @llvm.dbg.value(metadata i64 %141, metadata !680, metadata !DIExpression()), !dbg !681
  %142 = trunc i128 %139 to i64, !dbg !689
  call void @llvm.dbg.value(metadata i64 %142, metadata !682, metadata !DIExpression()), !dbg !681
  br label %143, !dbg !689

143:                                              ; preds = %136
  %144 = add i64 %133, %141, !dbg !674
  call void @llvm.dbg.value(metadata i64 %144, metadata !683, metadata !DIExpression()), !dbg !618
  %145 = lshr i64 %142, 20, !dbg !674
  %146 = add i64 %135, %145, !dbg !674
  call void @llvm.dbg.value(metadata i64 %146, metadata !684, metadata !DIExpression()), !dbg !618
  br label %147, !dbg !674

147:                                              ; preds = %143
  %148 = mul i64 20, %144, !dbg !693
  %149 = add i64 %80, %148, !dbg !694
  call void @llvm.dbg.value(metadata i64 %149, metadata !593, metadata !DIExpression()), !dbg !576
  %150 = add i64 %113, %78, !dbg !695
  call void @llvm.dbg.value(metadata i64 %150, metadata !595, metadata !DIExpression()), !dbg !576
  %151 = add i64 %146, %111, !dbg !696
  call void @llvm.dbg.value(metadata i64 %151, metadata !597, metadata !DIExpression()), !dbg !576
  %152 = lshr i64 %149, 44, !dbg !697
  %153 = add i64 %150, %152, !dbg !698
  call void @llvm.dbg.value(metadata i64 %153, metadata !595, metadata !DIExpression()), !dbg !576
  %154 = and i64 %149, 17592186044415, !dbg !699
  call void @llvm.dbg.value(metadata i64 %154, metadata !593, metadata !DIExpression()), !dbg !576
  %155 = lshr i64 %153, 44, !dbg !700
  %156 = add i64 %151, %155, !dbg !701
  call void @llvm.dbg.value(metadata i64 %156, metadata !597, metadata !DIExpression()), !dbg !576
  %157 = and i64 %153, 17592186044415, !dbg !702
  call void @llvm.dbg.value(metadata i64 %157, metadata !595, metadata !DIExpression()), !dbg !576
  %158 = lshr i64 %156, 44, !dbg !703
  %159 = mul i64 20, %158, !dbg !704
  %160 = add i64 %154, %159, !dbg !705
  call void @llvm.dbg.value(metadata i64 %160, metadata !593, metadata !DIExpression()), !dbg !576
  %161 = and i64 %156, 17592186044415, !dbg !706
  call void @llvm.dbg.value(metadata i64 %161, metadata !597, metadata !DIExpression()), !dbg !576
  %162 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !707
  call void @llvm.dbg.value(metadata i8* %162, metadata !598, metadata !DIExpression()), !dbg !576
  %163 = sub i64 %.1, 16, !dbg !708
  call void @llvm.dbg.value(metadata i64 %163, metadata !579, metadata !DIExpression()), !dbg !576
  br label %24, !dbg !599, !llvm.loop !709

164:                                              ; preds = %24
  %165 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !711
  store i64 %.03, i64* %165, align 8, !dbg !712
  %166 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !713
  store i64 %.04, i64* %166, align 8, !dbg !714
  %167 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !715
  store i64 %.05, i64* %167, align 8, !dbg !716
  ret void, !dbg !717
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !721, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata i32 %1, metadata !723, metadata !DIExpression()), !dbg !722
  %3 = sub i32 %1, %0, !dbg !724
  call void @llvm.dbg.value(metadata i32 %3, metadata !725, metadata !DIExpression()), !dbg !722
  %4 = xor i32 %0, %1, !dbg !726
  %5 = xor i32 %0, %3, !dbg !727
  %6 = and i32 %4, %5, !dbg !728
  %7 = xor i32 %3, %6, !dbg !729
  %8 = lshr i32 %7, 31, !dbg !730
  ret i32 %8, !dbg !731
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !732 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !733, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i32 %1, metadata !735, metadata !DIExpression()), !dbg !734
  %3 = xor i32 %0, %1, !dbg !736
  call void @llvm.dbg.value(metadata i32 %3, metadata !737, metadata !DIExpression()), !dbg !734
  %4 = sub i32 0, %3, !dbg !738
  %5 = or i32 %3, %4, !dbg !739
  %6 = lshr i32 %5, 31, !dbg !740
  %7 = call i32 @NOT(i32 %6), !dbg !741
  ret i32 %7, !dbg !742
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !746, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %1, metadata !748, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata i32 %2, metadata !749, metadata !DIExpression()), !dbg !747
  %4 = sub i32 0, %0, !dbg !750
  %5 = xor i32 %1, %2, !dbg !751
  %6 = and i32 %4, %5, !dbg !752
  %7 = xor i32 %2, %6, !dbg !753
  ret i32 %7, !dbg !754
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le.1(i8* %0) #0 !dbg !755 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !756, metadata !DIExpression()), !dbg !757
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !758
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !759
  %4 = load i32, i32* %3, align 4, !dbg !759
  ret i32 %4, !dbg !760
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le.2(i8* %0, i32 %1) #0 !dbg !761 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !762, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 %1, metadata !764, metadata !DIExpression()), !dbg !763
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !765
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !766
  store i32 %1, i32* %4, align 4, !dbg !767
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !769 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !772, metadata !DIExpression()), !dbg !773
  %2 = xor i32 %0, 1, !dbg !774
  ret i32 %2, !dbg !775
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner_big(i64* %0, i64* %1, i8* %2, i64 %3) #0 !dbg !776 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64* %1, metadata !779, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8* %2, metadata !780, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %3, metadata !781, metadata !DIExpression()), !dbg !778
  %5 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !782
  %6 = load i64, i64* %5, align 8, !dbg !782
  call void @llvm.dbg.value(metadata i64 %6, metadata !783, metadata !DIExpression()), !dbg !778
  %7 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !784
  %8 = load i64, i64* %7, align 8, !dbg !784
  call void @llvm.dbg.value(metadata i64 %8, metadata !785, metadata !DIExpression()), !dbg !778
  %9 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !786
  %10 = load i64, i64* %9, align 8, !dbg !786
  call void @llvm.dbg.value(metadata i64 %10, metadata !787, metadata !DIExpression()), !dbg !778
  %11 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !788
  %12 = load i64, i64* %11, align 8, !dbg !788
  call void @llvm.dbg.value(metadata i64 %12, metadata !789, metadata !DIExpression()), !dbg !778
  %13 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !790
  %14 = load i64, i64* %13, align 8, !dbg !790
  call void @llvm.dbg.value(metadata i64 %14, metadata !791, metadata !DIExpression()), !dbg !778
  %15 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !792
  %16 = load i64, i64* %15, align 8, !dbg !792
  call void @llvm.dbg.value(metadata i64 %16, metadata !793, metadata !DIExpression()), !dbg !778
  %17 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !794
  %18 = load i64, i64* %17, align 8, !dbg !794
  call void @llvm.dbg.value(metadata i64 %18, metadata !795, metadata !DIExpression()), !dbg !778
  %19 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !796
  %20 = load i64, i64* %19, align 8, !dbg !796
  call void @llvm.dbg.value(metadata i64 %20, metadata !797, metadata !DIExpression()), !dbg !778
  %21 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !798
  %22 = load i64, i64* %21, align 8, !dbg !798
  call void @llvm.dbg.value(metadata i64 %22, metadata !799, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8* %2, metadata !800, metadata !DIExpression()), !dbg !778
  br label %23, !dbg !801

23:                                               ; preds = %489, %4
  %.04 = phi i64 [ %22, %4 ], [ %503, %489 ], !dbg !778
  %.03 = phi i64 [ %20, %4 ], [ %499, %489 ], !dbg !778
  %.02 = phi i64 [ %18, %4 ], [ %502, %489 ], !dbg !778
  %.01 = phi i8* [ %2, %4 ], [ %504, %489 ], !dbg !778
  %.0 = phi i64 [ %3, %4 ], [ %505, %489 ]
  call void @llvm.dbg.value(metadata i64 %.0, metadata !781, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8* %.01, metadata !800, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %.02, metadata !795, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %.03, metadata !797, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %.04, metadata !799, metadata !DIExpression()), !dbg !778
  %24 = icmp ugt i64 %.0, 0, !dbg !802
  br i1 %24, label %25, label %506, !dbg !801

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, i8* %.01, i64 0, !dbg !803
  %27 = call i64 @br_dec64le(i8* %26), !dbg !805
  call void @llvm.dbg.value(metadata i64 %27, metadata !806, metadata !DIExpression()), !dbg !807
  %28 = getelementptr inbounds i8, i8* %.01, i64 8, !dbg !808
  %29 = call i64 @br_dec64le(i8* %28), !dbg !809
  call void @llvm.dbg.value(metadata i64 %29, metadata !810, metadata !DIExpression()), !dbg !807
  %30 = lshr i64 %29, 24, !dbg !811
  call void @llvm.dbg.value(metadata i64 %30, metadata !812, metadata !DIExpression()), !dbg !807
  %31 = lshr i64 %27, 44, !dbg !813
  %32 = shl i64 %29, 20, !dbg !814
  %33 = or i64 %31, %32, !dbg !815
  %34 = and i64 %33, 17592186044415, !dbg !816
  call void @llvm.dbg.value(metadata i64 %34, metadata !810, metadata !DIExpression()), !dbg !807
  %35 = and i64 %27, 17592186044415, !dbg !817
  call void @llvm.dbg.value(metadata i64 %35, metadata !806, metadata !DIExpression()), !dbg !807
  %36 = add i64 %.02, %35, !dbg !818
  call void @llvm.dbg.value(metadata i64 %36, metadata !795, metadata !DIExpression()), !dbg !778
  %37 = add i64 %.03, %34, !dbg !819
  call void @llvm.dbg.value(metadata i64 %37, metadata !797, metadata !DIExpression()), !dbg !778
  %38 = add i64 %30, 1099511627776, !dbg !820
  %39 = add i64 %.04, %38, !dbg !821
  call void @llvm.dbg.value(metadata i64 %39, metadata !799, metadata !DIExpression()), !dbg !778
  br label %40, !dbg !822

40:                                               ; preds = %25
  br label %41, !dbg !823

41:                                               ; preds = %40
  %42 = zext i64 %36 to i128, !dbg !825
  %43 = zext i64 %6 to i128, !dbg !825
  %44 = mul i128 %42, %43, !dbg !825
  call void @llvm.dbg.value(metadata i128 %44, metadata !827, metadata !DIExpression()), !dbg !828
  %45 = lshr i128 %44, 64, !dbg !825
  %46 = trunc i128 %45 to i64, !dbg !825
  call void @llvm.dbg.value(metadata i64 %46, metadata !829, metadata !DIExpression()), !dbg !830
  %47 = trunc i128 %44 to i64, !dbg !825
  call void @llvm.dbg.value(metadata i64 %47, metadata !831, metadata !DIExpression()), !dbg !830
  br label %48, !dbg !825

48:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i64 %46, metadata !832, metadata !DIExpression()), !dbg !807
  %49 = lshr i64 %47, 20, !dbg !823
  call void @llvm.dbg.value(metadata i64 %49, metadata !833, metadata !DIExpression()), !dbg !807
  br label %50, !dbg !823

50:                                               ; preds = %48
  %51 = zext i64 %37 to i128, !dbg !834
  %52 = zext i64 %16 to i128, !dbg !834
  %53 = mul i128 %51, %52, !dbg !834
  call void @llvm.dbg.value(metadata i128 %53, metadata !836, metadata !DIExpression()), !dbg !837
  %54 = lshr i128 %53, 64, !dbg !834
  %55 = trunc i128 %54 to i64, !dbg !834
  call void @llvm.dbg.value(metadata i64 %55, metadata !829, metadata !DIExpression()), !dbg !830
  %56 = trunc i128 %53 to i64, !dbg !834
  call void @llvm.dbg.value(metadata i64 %56, metadata !831, metadata !DIExpression()), !dbg !830
  br label %57, !dbg !834

57:                                               ; preds = %50
  %58 = add i64 %46, %55, !dbg !823
  call void @llvm.dbg.value(metadata i64 %58, metadata !832, metadata !DIExpression()), !dbg !807
  %59 = lshr i64 %56, 20, !dbg !823
  %60 = add i64 %49, %59, !dbg !823
  call void @llvm.dbg.value(metadata i64 %60, metadata !833, metadata !DIExpression()), !dbg !807
  br label %61, !dbg !823

61:                                               ; preds = %57
  %62 = zext i64 %39 to i128, !dbg !838
  %63 = zext i64 %12 to i128, !dbg !838
  %64 = mul i128 %62, %63, !dbg !838
  call void @llvm.dbg.value(metadata i128 %64, metadata !840, metadata !DIExpression()), !dbg !841
  %65 = lshr i128 %64, 64, !dbg !838
  %66 = trunc i128 %65 to i64, !dbg !838
  call void @llvm.dbg.value(metadata i64 %66, metadata !829, metadata !DIExpression()), !dbg !830
  %67 = trunc i128 %64 to i64, !dbg !838
  call void @llvm.dbg.value(metadata i64 %67, metadata !831, metadata !DIExpression()), !dbg !830
  br label %68, !dbg !838

68:                                               ; preds = %61
  %69 = add i64 %58, %66, !dbg !823
  call void @llvm.dbg.value(metadata i64 %69, metadata !832, metadata !DIExpression()), !dbg !807
  %70 = lshr i64 %67, 20, !dbg !823
  %71 = add i64 %60, %70, !dbg !823
  call void @llvm.dbg.value(metadata i64 %71, metadata !833, metadata !DIExpression()), !dbg !807
  br label %72, !dbg !823

72:                                               ; preds = %68
  br label %73, !dbg !842

73:                                               ; preds = %72
  br label %74, !dbg !843

74:                                               ; preds = %73
  %75 = zext i64 %36 to i128, !dbg !845
  %76 = zext i64 %8 to i128, !dbg !845
  %77 = mul i128 %75, %76, !dbg !845
  call void @llvm.dbg.value(metadata i128 %77, metadata !847, metadata !DIExpression()), !dbg !848
  %78 = lshr i128 %77, 64, !dbg !845
  %79 = trunc i128 %78 to i64, !dbg !845
  call void @llvm.dbg.value(metadata i64 %79, metadata !849, metadata !DIExpression()), !dbg !850
  %80 = trunc i128 %77 to i64, !dbg !845
  call void @llvm.dbg.value(metadata i64 %80, metadata !851, metadata !DIExpression()), !dbg !850
  br label %81, !dbg !845

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 %79, metadata !852, metadata !DIExpression()), !dbg !807
  %82 = lshr i64 %80, 20, !dbg !843
  call void @llvm.dbg.value(metadata i64 %82, metadata !853, metadata !DIExpression()), !dbg !807
  br label %83, !dbg !843

83:                                               ; preds = %81
  %84 = zext i64 %37 to i128, !dbg !854
  %85 = zext i64 %6 to i128, !dbg !854
  %86 = mul i128 %84, %85, !dbg !854
  call void @llvm.dbg.value(metadata i128 %86, metadata !856, metadata !DIExpression()), !dbg !857
  %87 = lshr i128 %86, 64, !dbg !854
  %88 = trunc i128 %87 to i64, !dbg !854
  call void @llvm.dbg.value(metadata i64 %88, metadata !849, metadata !DIExpression()), !dbg !850
  %89 = trunc i128 %86 to i64, !dbg !854
  call void @llvm.dbg.value(metadata i64 %89, metadata !851, metadata !DIExpression()), !dbg !850
  br label %90, !dbg !854

90:                                               ; preds = %83
  %91 = add i64 %79, %88, !dbg !843
  call void @llvm.dbg.value(metadata i64 %91, metadata !852, metadata !DIExpression()), !dbg !807
  %92 = lshr i64 %89, 20, !dbg !843
  %93 = add i64 %82, %92, !dbg !843
  call void @llvm.dbg.value(metadata i64 %93, metadata !853, metadata !DIExpression()), !dbg !807
  br label %94, !dbg !843

94:                                               ; preds = %90
  %95 = zext i64 %39 to i128, !dbg !858
  %96 = zext i64 %14 to i128, !dbg !858
  %97 = mul i128 %95, %96, !dbg !858
  call void @llvm.dbg.value(metadata i128 %97, metadata !860, metadata !DIExpression()), !dbg !861
  %98 = lshr i128 %97, 64, !dbg !858
  %99 = trunc i128 %98 to i64, !dbg !858
  call void @llvm.dbg.value(metadata i64 %99, metadata !849, metadata !DIExpression()), !dbg !850
  %100 = trunc i128 %97 to i64, !dbg !858
  call void @llvm.dbg.value(metadata i64 %100, metadata !851, metadata !DIExpression()), !dbg !850
  br label %101, !dbg !858

101:                                              ; preds = %94
  %102 = add i64 %91, %99, !dbg !843
  call void @llvm.dbg.value(metadata i64 %102, metadata !852, metadata !DIExpression()), !dbg !807
  %103 = lshr i64 %100, 20, !dbg !843
  %104 = add i64 %93, %103, !dbg !843
  call void @llvm.dbg.value(metadata i64 %104, metadata !853, metadata !DIExpression()), !dbg !807
  br label %105, !dbg !843

105:                                              ; preds = %101
  br label %106, !dbg !862

106:                                              ; preds = %105
  br label %107, !dbg !863

107:                                              ; preds = %106
  %108 = zext i64 %36 to i128, !dbg !865
  %109 = zext i64 %10 to i128, !dbg !865
  %110 = mul i128 %108, %109, !dbg !865
  call void @llvm.dbg.value(metadata i128 %110, metadata !867, metadata !DIExpression()), !dbg !868
  %111 = lshr i128 %110, 64, !dbg !865
  %112 = trunc i128 %111 to i64, !dbg !865
  call void @llvm.dbg.value(metadata i64 %112, metadata !869, metadata !DIExpression()), !dbg !870
  %113 = trunc i128 %110 to i64, !dbg !865
  call void @llvm.dbg.value(metadata i64 %113, metadata !871, metadata !DIExpression()), !dbg !870
  br label %114, !dbg !865

114:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i64 %112, metadata !872, metadata !DIExpression()), !dbg !807
  %115 = lshr i64 %113, 20, !dbg !863
  call void @llvm.dbg.value(metadata i64 %115, metadata !873, metadata !DIExpression()), !dbg !807
  br label %116, !dbg !863

116:                                              ; preds = %114
  %117 = zext i64 %37 to i128, !dbg !874
  %118 = zext i64 %8 to i128, !dbg !874
  %119 = mul i128 %117, %118, !dbg !874
  call void @llvm.dbg.value(metadata i128 %119, metadata !876, metadata !DIExpression()), !dbg !877
  %120 = lshr i128 %119, 64, !dbg !874
  %121 = trunc i128 %120 to i64, !dbg !874
  call void @llvm.dbg.value(metadata i64 %121, metadata !869, metadata !DIExpression()), !dbg !870
  %122 = trunc i128 %119 to i64, !dbg !874
  call void @llvm.dbg.value(metadata i64 %122, metadata !871, metadata !DIExpression()), !dbg !870
  br label %123, !dbg !874

123:                                              ; preds = %116
  %124 = add i64 %112, %121, !dbg !863
  call void @llvm.dbg.value(metadata i64 %124, metadata !872, metadata !DIExpression()), !dbg !807
  %125 = lshr i64 %122, 20, !dbg !863
  %126 = add i64 %115, %125, !dbg !863
  call void @llvm.dbg.value(metadata i64 %126, metadata !873, metadata !DIExpression()), !dbg !807
  br label %127, !dbg !863

127:                                              ; preds = %123
  %128 = zext i64 %39 to i128, !dbg !878
  %129 = zext i64 %6 to i128, !dbg !878
  %130 = mul i128 %128, %129, !dbg !878
  call void @llvm.dbg.value(metadata i128 %130, metadata !880, metadata !DIExpression()), !dbg !881
  %131 = lshr i128 %130, 64, !dbg !878
  %132 = trunc i128 %131 to i64, !dbg !878
  call void @llvm.dbg.value(metadata i64 %132, metadata !869, metadata !DIExpression()), !dbg !870
  %133 = trunc i128 %130 to i64, !dbg !878
  call void @llvm.dbg.value(metadata i64 %133, metadata !871, metadata !DIExpression()), !dbg !870
  br label %134, !dbg !878

134:                                              ; preds = %127
  %135 = add i64 %124, %132, !dbg !863
  call void @llvm.dbg.value(metadata i64 %135, metadata !872, metadata !DIExpression()), !dbg !807
  %136 = lshr i64 %133, 20, !dbg !863
  %137 = add i64 %126, %136, !dbg !863
  call void @llvm.dbg.value(metadata i64 %137, metadata !873, metadata !DIExpression()), !dbg !807
  br label %138, !dbg !863

138:                                              ; preds = %134
  %139 = mul i64 20, %135, !dbg !882
  %140 = add i64 %71, %139, !dbg !883
  call void @llvm.dbg.value(metadata i64 %140, metadata !795, metadata !DIExpression()), !dbg !778
  %141 = add i64 %104, %69, !dbg !884
  call void @llvm.dbg.value(metadata i64 %141, metadata !797, metadata !DIExpression()), !dbg !778
  %142 = add i64 %137, %102, !dbg !885
  call void @llvm.dbg.value(metadata i64 %142, metadata !799, metadata !DIExpression()), !dbg !778
  %143 = getelementptr inbounds i8, i8* %.01, i64 16, !dbg !886
  %144 = call i64 @br_dec64le(i8* %143), !dbg !887
  call void @llvm.dbg.value(metadata i64 %144, metadata !806, metadata !DIExpression()), !dbg !807
  %145 = getelementptr inbounds i8, i8* %.01, i64 24, !dbg !888
  %146 = call i64 @br_dec64le(i8* %145), !dbg !889
  call void @llvm.dbg.value(metadata i64 %146, metadata !810, metadata !DIExpression()), !dbg !807
  %147 = lshr i64 %146, 24, !dbg !890
  call void @llvm.dbg.value(metadata i64 %147, metadata !812, metadata !DIExpression()), !dbg !807
  %148 = lshr i64 %144, 44, !dbg !891
  %149 = shl i64 %146, 20, !dbg !892
  %150 = or i64 %148, %149, !dbg !893
  %151 = and i64 %150, 17592186044415, !dbg !894
  call void @llvm.dbg.value(metadata i64 %151, metadata !810, metadata !DIExpression()), !dbg !807
  %152 = and i64 %144, 17592186044415, !dbg !895
  call void @llvm.dbg.value(metadata i64 %152, metadata !806, metadata !DIExpression()), !dbg !807
  %153 = add i64 %140, %152, !dbg !896
  call void @llvm.dbg.value(metadata i64 %153, metadata !795, metadata !DIExpression()), !dbg !778
  %154 = add i64 %141, %151, !dbg !897
  call void @llvm.dbg.value(metadata i64 %154, metadata !797, metadata !DIExpression()), !dbg !778
  %155 = add i64 %147, 1099511627776, !dbg !898
  %156 = add i64 %142, %155, !dbg !899
  call void @llvm.dbg.value(metadata i64 %156, metadata !799, metadata !DIExpression()), !dbg !778
  br label %157, !dbg !900

157:                                              ; preds = %138
  br label %158, !dbg !901

158:                                              ; preds = %157
  %159 = zext i64 %153 to i128, !dbg !903
  %160 = zext i64 %6 to i128, !dbg !903
  %161 = mul i128 %159, %160, !dbg !903
  call void @llvm.dbg.value(metadata i128 %161, metadata !905, metadata !DIExpression()), !dbg !906
  %162 = lshr i128 %161, 64, !dbg !903
  %163 = trunc i128 %162 to i64, !dbg !903
  call void @llvm.dbg.value(metadata i64 %163, metadata !907, metadata !DIExpression()), !dbg !908
  %164 = trunc i128 %161 to i64, !dbg !903
  call void @llvm.dbg.value(metadata i64 %164, metadata !909, metadata !DIExpression()), !dbg !908
  br label %165, !dbg !903

165:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i64 %163, metadata !832, metadata !DIExpression()), !dbg !807
  %166 = lshr i64 %164, 20, !dbg !901
  call void @llvm.dbg.value(metadata i64 %166, metadata !833, metadata !DIExpression()), !dbg !807
  br label %167, !dbg !901

167:                                              ; preds = %165
  %168 = zext i64 %154 to i128, !dbg !910
  %169 = zext i64 %16 to i128, !dbg !910
  %170 = mul i128 %168, %169, !dbg !910
  call void @llvm.dbg.value(metadata i128 %170, metadata !912, metadata !DIExpression()), !dbg !913
  %171 = lshr i128 %170, 64, !dbg !910
  %172 = trunc i128 %171 to i64, !dbg !910
  call void @llvm.dbg.value(metadata i64 %172, metadata !907, metadata !DIExpression()), !dbg !908
  %173 = trunc i128 %170 to i64, !dbg !910
  call void @llvm.dbg.value(metadata i64 %173, metadata !909, metadata !DIExpression()), !dbg !908
  br label %174, !dbg !910

174:                                              ; preds = %167
  %175 = add i64 %163, %172, !dbg !901
  call void @llvm.dbg.value(metadata i64 %175, metadata !832, metadata !DIExpression()), !dbg !807
  %176 = lshr i64 %173, 20, !dbg !901
  %177 = add i64 %166, %176, !dbg !901
  call void @llvm.dbg.value(metadata i64 %177, metadata !833, metadata !DIExpression()), !dbg !807
  br label %178, !dbg !901

178:                                              ; preds = %174
  %179 = zext i64 %156 to i128, !dbg !914
  %180 = zext i64 %12 to i128, !dbg !914
  %181 = mul i128 %179, %180, !dbg !914
  call void @llvm.dbg.value(metadata i128 %181, metadata !916, metadata !DIExpression()), !dbg !917
  %182 = lshr i128 %181, 64, !dbg !914
  %183 = trunc i128 %182 to i64, !dbg !914
  call void @llvm.dbg.value(metadata i64 %183, metadata !907, metadata !DIExpression()), !dbg !908
  %184 = trunc i128 %181 to i64, !dbg !914
  call void @llvm.dbg.value(metadata i64 %184, metadata !909, metadata !DIExpression()), !dbg !908
  br label %185, !dbg !914

185:                                              ; preds = %178
  %186 = add i64 %175, %183, !dbg !901
  call void @llvm.dbg.value(metadata i64 %186, metadata !832, metadata !DIExpression()), !dbg !807
  %187 = lshr i64 %184, 20, !dbg !901
  %188 = add i64 %177, %187, !dbg !901
  call void @llvm.dbg.value(metadata i64 %188, metadata !833, metadata !DIExpression()), !dbg !807
  br label %189, !dbg !901

189:                                              ; preds = %185
  br label %190, !dbg !918

190:                                              ; preds = %189
  br label %191, !dbg !919

191:                                              ; preds = %190
  %192 = zext i64 %153 to i128, !dbg !921
  %193 = zext i64 %8 to i128, !dbg !921
  %194 = mul i128 %192, %193, !dbg !921
  call void @llvm.dbg.value(metadata i128 %194, metadata !923, metadata !DIExpression()), !dbg !924
  %195 = lshr i128 %194, 64, !dbg !921
  %196 = trunc i128 %195 to i64, !dbg !921
  call void @llvm.dbg.value(metadata i64 %196, metadata !925, metadata !DIExpression()), !dbg !926
  %197 = trunc i128 %194 to i64, !dbg !921
  call void @llvm.dbg.value(metadata i64 %197, metadata !927, metadata !DIExpression()), !dbg !926
  br label %198, !dbg !921

198:                                              ; preds = %191
  call void @llvm.dbg.value(metadata i64 %196, metadata !852, metadata !DIExpression()), !dbg !807
  %199 = lshr i64 %197, 20, !dbg !919
  call void @llvm.dbg.value(metadata i64 %199, metadata !853, metadata !DIExpression()), !dbg !807
  br label %200, !dbg !919

200:                                              ; preds = %198
  %201 = zext i64 %154 to i128, !dbg !928
  %202 = zext i64 %6 to i128, !dbg !928
  %203 = mul i128 %201, %202, !dbg !928
  call void @llvm.dbg.value(metadata i128 %203, metadata !930, metadata !DIExpression()), !dbg !931
  %204 = lshr i128 %203, 64, !dbg !928
  %205 = trunc i128 %204 to i64, !dbg !928
  call void @llvm.dbg.value(metadata i64 %205, metadata !925, metadata !DIExpression()), !dbg !926
  %206 = trunc i128 %203 to i64, !dbg !928
  call void @llvm.dbg.value(metadata i64 %206, metadata !927, metadata !DIExpression()), !dbg !926
  br label %207, !dbg !928

207:                                              ; preds = %200
  %208 = add i64 %196, %205, !dbg !919
  call void @llvm.dbg.value(metadata i64 %208, metadata !852, metadata !DIExpression()), !dbg !807
  %209 = lshr i64 %206, 20, !dbg !919
  %210 = add i64 %199, %209, !dbg !919
  call void @llvm.dbg.value(metadata i64 %210, metadata !853, metadata !DIExpression()), !dbg !807
  br label %211, !dbg !919

211:                                              ; preds = %207
  %212 = zext i64 %156 to i128, !dbg !932
  %213 = zext i64 %14 to i128, !dbg !932
  %214 = mul i128 %212, %213, !dbg !932
  call void @llvm.dbg.value(metadata i128 %214, metadata !934, metadata !DIExpression()), !dbg !935
  %215 = lshr i128 %214, 64, !dbg !932
  %216 = trunc i128 %215 to i64, !dbg !932
  call void @llvm.dbg.value(metadata i64 %216, metadata !925, metadata !DIExpression()), !dbg !926
  %217 = trunc i128 %214 to i64, !dbg !932
  call void @llvm.dbg.value(metadata i64 %217, metadata !927, metadata !DIExpression()), !dbg !926
  br label %218, !dbg !932

218:                                              ; preds = %211
  %219 = add i64 %208, %216, !dbg !919
  call void @llvm.dbg.value(metadata i64 %219, metadata !852, metadata !DIExpression()), !dbg !807
  %220 = lshr i64 %217, 20, !dbg !919
  %221 = add i64 %210, %220, !dbg !919
  call void @llvm.dbg.value(metadata i64 %221, metadata !853, metadata !DIExpression()), !dbg !807
  br label %222, !dbg !919

222:                                              ; preds = %218
  br label %223, !dbg !936

223:                                              ; preds = %222
  br label %224, !dbg !937

224:                                              ; preds = %223
  %225 = zext i64 %153 to i128, !dbg !939
  %226 = zext i64 %10 to i128, !dbg !939
  %227 = mul i128 %225, %226, !dbg !939
  call void @llvm.dbg.value(metadata i128 %227, metadata !941, metadata !DIExpression()), !dbg !942
  %228 = lshr i128 %227, 64, !dbg !939
  %229 = trunc i128 %228 to i64, !dbg !939
  call void @llvm.dbg.value(metadata i64 %229, metadata !943, metadata !DIExpression()), !dbg !944
  %230 = trunc i128 %227 to i64, !dbg !939
  call void @llvm.dbg.value(metadata i64 %230, metadata !945, metadata !DIExpression()), !dbg !944
  br label %231, !dbg !939

231:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i64 %229, metadata !872, metadata !DIExpression()), !dbg !807
  %232 = lshr i64 %230, 20, !dbg !937
  call void @llvm.dbg.value(metadata i64 %232, metadata !873, metadata !DIExpression()), !dbg !807
  br label %233, !dbg !937

233:                                              ; preds = %231
  %234 = zext i64 %154 to i128, !dbg !946
  %235 = zext i64 %8 to i128, !dbg !946
  %236 = mul i128 %234, %235, !dbg !946
  call void @llvm.dbg.value(metadata i128 %236, metadata !948, metadata !DIExpression()), !dbg !949
  %237 = lshr i128 %236, 64, !dbg !946
  %238 = trunc i128 %237 to i64, !dbg !946
  call void @llvm.dbg.value(metadata i64 %238, metadata !943, metadata !DIExpression()), !dbg !944
  %239 = trunc i128 %236 to i64, !dbg !946
  call void @llvm.dbg.value(metadata i64 %239, metadata !945, metadata !DIExpression()), !dbg !944
  br label %240, !dbg !946

240:                                              ; preds = %233
  %241 = add i64 %229, %238, !dbg !937
  call void @llvm.dbg.value(metadata i64 %241, metadata !872, metadata !DIExpression()), !dbg !807
  %242 = lshr i64 %239, 20, !dbg !937
  %243 = add i64 %232, %242, !dbg !937
  call void @llvm.dbg.value(metadata i64 %243, metadata !873, metadata !DIExpression()), !dbg !807
  br label %244, !dbg !937

244:                                              ; preds = %240
  %245 = zext i64 %156 to i128, !dbg !950
  %246 = zext i64 %6 to i128, !dbg !950
  %247 = mul i128 %245, %246, !dbg !950
  call void @llvm.dbg.value(metadata i128 %247, metadata !952, metadata !DIExpression()), !dbg !953
  %248 = lshr i128 %247, 64, !dbg !950
  %249 = trunc i128 %248 to i64, !dbg !950
  call void @llvm.dbg.value(metadata i64 %249, metadata !943, metadata !DIExpression()), !dbg !944
  %250 = trunc i128 %247 to i64, !dbg !950
  call void @llvm.dbg.value(metadata i64 %250, metadata !945, metadata !DIExpression()), !dbg !944
  br label %251, !dbg !950

251:                                              ; preds = %244
  %252 = add i64 %241, %249, !dbg !937
  call void @llvm.dbg.value(metadata i64 %252, metadata !872, metadata !DIExpression()), !dbg !807
  %253 = lshr i64 %250, 20, !dbg !937
  %254 = add i64 %243, %253, !dbg !937
  call void @llvm.dbg.value(metadata i64 %254, metadata !873, metadata !DIExpression()), !dbg !807
  br label %255, !dbg !937

255:                                              ; preds = %251
  %256 = mul i64 20, %252, !dbg !954
  %257 = add i64 %188, %256, !dbg !955
  call void @llvm.dbg.value(metadata i64 %257, metadata !795, metadata !DIExpression()), !dbg !778
  %258 = add i64 %221, %186, !dbg !956
  call void @llvm.dbg.value(metadata i64 %258, metadata !797, metadata !DIExpression()), !dbg !778
  %259 = add i64 %254, %219, !dbg !957
  call void @llvm.dbg.value(metadata i64 %259, metadata !799, metadata !DIExpression()), !dbg !778
  %260 = getelementptr inbounds i8, i8* %.01, i64 32, !dbg !958
  %261 = call i64 @br_dec64le(i8* %260), !dbg !959
  call void @llvm.dbg.value(metadata i64 %261, metadata !806, metadata !DIExpression()), !dbg !807
  %262 = getelementptr inbounds i8, i8* %.01, i64 40, !dbg !960
  %263 = call i64 @br_dec64le(i8* %262), !dbg !961
  call void @llvm.dbg.value(metadata i64 %263, metadata !810, metadata !DIExpression()), !dbg !807
  %264 = lshr i64 %263, 24, !dbg !962
  call void @llvm.dbg.value(metadata i64 %264, metadata !812, metadata !DIExpression()), !dbg !807
  %265 = lshr i64 %261, 44, !dbg !963
  %266 = shl i64 %263, 20, !dbg !964
  %267 = or i64 %265, %266, !dbg !965
  %268 = and i64 %267, 17592186044415, !dbg !966
  call void @llvm.dbg.value(metadata i64 %268, metadata !810, metadata !DIExpression()), !dbg !807
  %269 = and i64 %261, 17592186044415, !dbg !967
  call void @llvm.dbg.value(metadata i64 %269, metadata !806, metadata !DIExpression()), !dbg !807
  %270 = add i64 %257, %269, !dbg !968
  call void @llvm.dbg.value(metadata i64 %270, metadata !795, metadata !DIExpression()), !dbg !778
  %271 = add i64 %258, %268, !dbg !969
  call void @llvm.dbg.value(metadata i64 %271, metadata !797, metadata !DIExpression()), !dbg !778
  %272 = add i64 %264, 1099511627776, !dbg !970
  %273 = add i64 %259, %272, !dbg !971
  call void @llvm.dbg.value(metadata i64 %273, metadata !799, metadata !DIExpression()), !dbg !778
  br label %274, !dbg !972

274:                                              ; preds = %255
  br label %275, !dbg !973

275:                                              ; preds = %274
  %276 = zext i64 %270 to i128, !dbg !975
  %277 = zext i64 %6 to i128, !dbg !975
  %278 = mul i128 %276, %277, !dbg !975
  call void @llvm.dbg.value(metadata i128 %278, metadata !977, metadata !DIExpression()), !dbg !978
  %279 = lshr i128 %278, 64, !dbg !975
  %280 = trunc i128 %279 to i64, !dbg !975
  call void @llvm.dbg.value(metadata i64 %280, metadata !979, metadata !DIExpression()), !dbg !980
  %281 = trunc i128 %278 to i64, !dbg !975
  call void @llvm.dbg.value(metadata i64 %281, metadata !981, metadata !DIExpression()), !dbg !980
  br label %282, !dbg !975

282:                                              ; preds = %275
  call void @llvm.dbg.value(metadata i64 %280, metadata !832, metadata !DIExpression()), !dbg !807
  %283 = lshr i64 %281, 20, !dbg !973
  call void @llvm.dbg.value(metadata i64 %283, metadata !833, metadata !DIExpression()), !dbg !807
  br label %284, !dbg !973

284:                                              ; preds = %282
  %285 = zext i64 %271 to i128, !dbg !982
  %286 = zext i64 %16 to i128, !dbg !982
  %287 = mul i128 %285, %286, !dbg !982
  call void @llvm.dbg.value(metadata i128 %287, metadata !984, metadata !DIExpression()), !dbg !985
  %288 = lshr i128 %287, 64, !dbg !982
  %289 = trunc i128 %288 to i64, !dbg !982
  call void @llvm.dbg.value(metadata i64 %289, metadata !979, metadata !DIExpression()), !dbg !980
  %290 = trunc i128 %287 to i64, !dbg !982
  call void @llvm.dbg.value(metadata i64 %290, metadata !981, metadata !DIExpression()), !dbg !980
  br label %291, !dbg !982

291:                                              ; preds = %284
  %292 = add i64 %280, %289, !dbg !973
  call void @llvm.dbg.value(metadata i64 %292, metadata !832, metadata !DIExpression()), !dbg !807
  %293 = lshr i64 %290, 20, !dbg !973
  %294 = add i64 %283, %293, !dbg !973
  call void @llvm.dbg.value(metadata i64 %294, metadata !833, metadata !DIExpression()), !dbg !807
  br label %295, !dbg !973

295:                                              ; preds = %291
  %296 = zext i64 %273 to i128, !dbg !986
  %297 = zext i64 %12 to i128, !dbg !986
  %298 = mul i128 %296, %297, !dbg !986
  call void @llvm.dbg.value(metadata i128 %298, metadata !988, metadata !DIExpression()), !dbg !989
  %299 = lshr i128 %298, 64, !dbg !986
  %300 = trunc i128 %299 to i64, !dbg !986
  call void @llvm.dbg.value(metadata i64 %300, metadata !979, metadata !DIExpression()), !dbg !980
  %301 = trunc i128 %298 to i64, !dbg !986
  call void @llvm.dbg.value(metadata i64 %301, metadata !981, metadata !DIExpression()), !dbg !980
  br label %302, !dbg !986

302:                                              ; preds = %295
  %303 = add i64 %292, %300, !dbg !973
  call void @llvm.dbg.value(metadata i64 %303, metadata !832, metadata !DIExpression()), !dbg !807
  %304 = lshr i64 %301, 20, !dbg !973
  %305 = add i64 %294, %304, !dbg !973
  call void @llvm.dbg.value(metadata i64 %305, metadata !833, metadata !DIExpression()), !dbg !807
  br label %306, !dbg !973

306:                                              ; preds = %302
  br label %307, !dbg !990

307:                                              ; preds = %306
  br label %308, !dbg !991

308:                                              ; preds = %307
  %309 = zext i64 %270 to i128, !dbg !993
  %310 = zext i64 %8 to i128, !dbg !993
  %311 = mul i128 %309, %310, !dbg !993
  call void @llvm.dbg.value(metadata i128 %311, metadata !995, metadata !DIExpression()), !dbg !996
  %312 = lshr i128 %311, 64, !dbg !993
  %313 = trunc i128 %312 to i64, !dbg !993
  call void @llvm.dbg.value(metadata i64 %313, metadata !997, metadata !DIExpression()), !dbg !998
  %314 = trunc i128 %311 to i64, !dbg !993
  call void @llvm.dbg.value(metadata i64 %314, metadata !999, metadata !DIExpression()), !dbg !998
  br label %315, !dbg !993

315:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 %313, metadata !852, metadata !DIExpression()), !dbg !807
  %316 = lshr i64 %314, 20, !dbg !991
  call void @llvm.dbg.value(metadata i64 %316, metadata !853, metadata !DIExpression()), !dbg !807
  br label %317, !dbg !991

317:                                              ; preds = %315
  %318 = zext i64 %271 to i128, !dbg !1000
  %319 = zext i64 %6 to i128, !dbg !1000
  %320 = mul i128 %318, %319, !dbg !1000
  call void @llvm.dbg.value(metadata i128 %320, metadata !1002, metadata !DIExpression()), !dbg !1003
  %321 = lshr i128 %320, 64, !dbg !1000
  %322 = trunc i128 %321 to i64, !dbg !1000
  call void @llvm.dbg.value(metadata i64 %322, metadata !997, metadata !DIExpression()), !dbg !998
  %323 = trunc i128 %320 to i64, !dbg !1000
  call void @llvm.dbg.value(metadata i64 %323, metadata !999, metadata !DIExpression()), !dbg !998
  br label %324, !dbg !1000

324:                                              ; preds = %317
  %325 = add i64 %313, %322, !dbg !991
  call void @llvm.dbg.value(metadata i64 %325, metadata !852, metadata !DIExpression()), !dbg !807
  %326 = lshr i64 %323, 20, !dbg !991
  %327 = add i64 %316, %326, !dbg !991
  call void @llvm.dbg.value(metadata i64 %327, metadata !853, metadata !DIExpression()), !dbg !807
  br label %328, !dbg !991

328:                                              ; preds = %324
  %329 = zext i64 %273 to i128, !dbg !1004
  %330 = zext i64 %14 to i128, !dbg !1004
  %331 = mul i128 %329, %330, !dbg !1004
  call void @llvm.dbg.value(metadata i128 %331, metadata !1006, metadata !DIExpression()), !dbg !1007
  %332 = lshr i128 %331, 64, !dbg !1004
  %333 = trunc i128 %332 to i64, !dbg !1004
  call void @llvm.dbg.value(metadata i64 %333, metadata !997, metadata !DIExpression()), !dbg !998
  %334 = trunc i128 %331 to i64, !dbg !1004
  call void @llvm.dbg.value(metadata i64 %334, metadata !999, metadata !DIExpression()), !dbg !998
  br label %335, !dbg !1004

335:                                              ; preds = %328
  %336 = add i64 %325, %333, !dbg !991
  call void @llvm.dbg.value(metadata i64 %336, metadata !852, metadata !DIExpression()), !dbg !807
  %337 = lshr i64 %334, 20, !dbg !991
  %338 = add i64 %327, %337, !dbg !991
  call void @llvm.dbg.value(metadata i64 %338, metadata !853, metadata !DIExpression()), !dbg !807
  br label %339, !dbg !991

339:                                              ; preds = %335
  br label %340, !dbg !1008

340:                                              ; preds = %339
  br label %341, !dbg !1009

341:                                              ; preds = %340
  %342 = zext i64 %270 to i128, !dbg !1011
  %343 = zext i64 %10 to i128, !dbg !1011
  %344 = mul i128 %342, %343, !dbg !1011
  call void @llvm.dbg.value(metadata i128 %344, metadata !1013, metadata !DIExpression()), !dbg !1014
  %345 = lshr i128 %344, 64, !dbg !1011
  %346 = trunc i128 %345 to i64, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %346, metadata !1015, metadata !DIExpression()), !dbg !1016
  %347 = trunc i128 %344 to i64, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %347, metadata !1017, metadata !DIExpression()), !dbg !1016
  br label %348, !dbg !1011

348:                                              ; preds = %341
  call void @llvm.dbg.value(metadata i64 %346, metadata !872, metadata !DIExpression()), !dbg !807
  %349 = lshr i64 %347, 20, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %349, metadata !873, metadata !DIExpression()), !dbg !807
  br label %350, !dbg !1009

350:                                              ; preds = %348
  %351 = zext i64 %271 to i128, !dbg !1018
  %352 = zext i64 %8 to i128, !dbg !1018
  %353 = mul i128 %351, %352, !dbg !1018
  call void @llvm.dbg.value(metadata i128 %353, metadata !1020, metadata !DIExpression()), !dbg !1021
  %354 = lshr i128 %353, 64, !dbg !1018
  %355 = trunc i128 %354 to i64, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %355, metadata !1015, metadata !DIExpression()), !dbg !1016
  %356 = trunc i128 %353 to i64, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %356, metadata !1017, metadata !DIExpression()), !dbg !1016
  br label %357, !dbg !1018

357:                                              ; preds = %350
  %358 = add i64 %346, %355, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %358, metadata !872, metadata !DIExpression()), !dbg !807
  %359 = lshr i64 %356, 20, !dbg !1009
  %360 = add i64 %349, %359, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %360, metadata !873, metadata !DIExpression()), !dbg !807
  br label %361, !dbg !1009

361:                                              ; preds = %357
  %362 = zext i64 %273 to i128, !dbg !1022
  %363 = zext i64 %6 to i128, !dbg !1022
  %364 = mul i128 %362, %363, !dbg !1022
  call void @llvm.dbg.value(metadata i128 %364, metadata !1024, metadata !DIExpression()), !dbg !1025
  %365 = lshr i128 %364, 64, !dbg !1022
  %366 = trunc i128 %365 to i64, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %366, metadata !1015, metadata !DIExpression()), !dbg !1016
  %367 = trunc i128 %364 to i64, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %367, metadata !1017, metadata !DIExpression()), !dbg !1016
  br label %368, !dbg !1022

368:                                              ; preds = %361
  %369 = add i64 %358, %366, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %369, metadata !872, metadata !DIExpression()), !dbg !807
  %370 = lshr i64 %367, 20, !dbg !1009
  %371 = add i64 %360, %370, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %371, metadata !873, metadata !DIExpression()), !dbg !807
  br label %372, !dbg !1009

372:                                              ; preds = %368
  %373 = mul i64 20, %369, !dbg !1026
  %374 = add i64 %305, %373, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %374, metadata !795, metadata !DIExpression()), !dbg !778
  %375 = add i64 %338, %303, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %375, metadata !797, metadata !DIExpression()), !dbg !778
  %376 = add i64 %371, %336, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %376, metadata !799, metadata !DIExpression()), !dbg !778
  %377 = getelementptr inbounds i8, i8* %.01, i64 48, !dbg !1030
  %378 = call i64 @br_dec64le(i8* %377), !dbg !1031
  call void @llvm.dbg.value(metadata i64 %378, metadata !806, metadata !DIExpression()), !dbg !807
  %379 = getelementptr inbounds i8, i8* %.01, i64 56, !dbg !1032
  %380 = call i64 @br_dec64le(i8* %379), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %380, metadata !810, metadata !DIExpression()), !dbg !807
  %381 = lshr i64 %380, 24, !dbg !1034
  call void @llvm.dbg.value(metadata i64 %381, metadata !812, metadata !DIExpression()), !dbg !807
  %382 = lshr i64 %378, 44, !dbg !1035
  %383 = shl i64 %380, 20, !dbg !1036
  %384 = or i64 %382, %383, !dbg !1037
  %385 = and i64 %384, 17592186044415, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %385, metadata !810, metadata !DIExpression()), !dbg !807
  %386 = and i64 %378, 17592186044415, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %386, metadata !806, metadata !DIExpression()), !dbg !807
  %387 = add i64 %374, %386, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %387, metadata !795, metadata !DIExpression()), !dbg !778
  %388 = add i64 %375, %385, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %388, metadata !797, metadata !DIExpression()), !dbg !778
  %389 = add i64 %381, 1099511627776, !dbg !1042
  %390 = add i64 %376, %389, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %390, metadata !799, metadata !DIExpression()), !dbg !778
  br label %391, !dbg !1044

391:                                              ; preds = %372
  br label %392, !dbg !1045

392:                                              ; preds = %391
  %393 = zext i64 %387 to i128, !dbg !1047
  %394 = zext i64 %6 to i128, !dbg !1047
  %395 = mul i128 %393, %394, !dbg !1047
  call void @llvm.dbg.value(metadata i128 %395, metadata !1049, metadata !DIExpression()), !dbg !1050
  %396 = lshr i128 %395, 64, !dbg !1047
  %397 = trunc i128 %396 to i64, !dbg !1047
  call void @llvm.dbg.value(metadata i64 %397, metadata !1051, metadata !DIExpression()), !dbg !1052
  %398 = trunc i128 %395 to i64, !dbg !1047
  call void @llvm.dbg.value(metadata i64 %398, metadata !1053, metadata !DIExpression()), !dbg !1052
  br label %399, !dbg !1047

399:                                              ; preds = %392
  call void @llvm.dbg.value(metadata i64 %397, metadata !832, metadata !DIExpression()), !dbg !807
  %400 = lshr i64 %398, 20, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %400, metadata !833, metadata !DIExpression()), !dbg !807
  br label %401, !dbg !1045

401:                                              ; preds = %399
  %402 = zext i64 %388 to i128, !dbg !1054
  %403 = zext i64 %16 to i128, !dbg !1054
  %404 = mul i128 %402, %403, !dbg !1054
  call void @llvm.dbg.value(metadata i128 %404, metadata !1056, metadata !DIExpression()), !dbg !1057
  %405 = lshr i128 %404, 64, !dbg !1054
  %406 = trunc i128 %405 to i64, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %406, metadata !1051, metadata !DIExpression()), !dbg !1052
  %407 = trunc i128 %404 to i64, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %407, metadata !1053, metadata !DIExpression()), !dbg !1052
  br label %408, !dbg !1054

408:                                              ; preds = %401
  %409 = add i64 %397, %406, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %409, metadata !832, metadata !DIExpression()), !dbg !807
  %410 = lshr i64 %407, 20, !dbg !1045
  %411 = add i64 %400, %410, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %411, metadata !833, metadata !DIExpression()), !dbg !807
  br label %412, !dbg !1045

412:                                              ; preds = %408
  %413 = zext i64 %390 to i128, !dbg !1058
  %414 = zext i64 %12 to i128, !dbg !1058
  %415 = mul i128 %413, %414, !dbg !1058
  call void @llvm.dbg.value(metadata i128 %415, metadata !1060, metadata !DIExpression()), !dbg !1061
  %416 = lshr i128 %415, 64, !dbg !1058
  %417 = trunc i128 %416 to i64, !dbg !1058
  call void @llvm.dbg.value(metadata i64 %417, metadata !1051, metadata !DIExpression()), !dbg !1052
  %418 = trunc i128 %415 to i64, !dbg !1058
  call void @llvm.dbg.value(metadata i64 %418, metadata !1053, metadata !DIExpression()), !dbg !1052
  br label %419, !dbg !1058

419:                                              ; preds = %412
  %420 = add i64 %409, %417, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %420, metadata !832, metadata !DIExpression()), !dbg !807
  %421 = lshr i64 %418, 20, !dbg !1045
  %422 = add i64 %411, %421, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %422, metadata !833, metadata !DIExpression()), !dbg !807
  br label %423, !dbg !1045

423:                                              ; preds = %419
  br label %424, !dbg !1062

424:                                              ; preds = %423
  br label %425, !dbg !1063

425:                                              ; preds = %424
  %426 = zext i64 %387 to i128, !dbg !1065
  %427 = zext i64 %8 to i128, !dbg !1065
  %428 = mul i128 %426, %427, !dbg !1065
  call void @llvm.dbg.value(metadata i128 %428, metadata !1067, metadata !DIExpression()), !dbg !1068
  %429 = lshr i128 %428, 64, !dbg !1065
  %430 = trunc i128 %429 to i64, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %430, metadata !1069, metadata !DIExpression()), !dbg !1070
  %431 = trunc i128 %428 to i64, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %431, metadata !1071, metadata !DIExpression()), !dbg !1070
  br label %432, !dbg !1065

432:                                              ; preds = %425
  call void @llvm.dbg.value(metadata i64 %430, metadata !852, metadata !DIExpression()), !dbg !807
  %433 = lshr i64 %431, 20, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %433, metadata !853, metadata !DIExpression()), !dbg !807
  br label %434, !dbg !1063

434:                                              ; preds = %432
  %435 = zext i64 %388 to i128, !dbg !1072
  %436 = zext i64 %6 to i128, !dbg !1072
  %437 = mul i128 %435, %436, !dbg !1072
  call void @llvm.dbg.value(metadata i128 %437, metadata !1074, metadata !DIExpression()), !dbg !1075
  %438 = lshr i128 %437, 64, !dbg !1072
  %439 = trunc i128 %438 to i64, !dbg !1072
  call void @llvm.dbg.value(metadata i64 %439, metadata !1069, metadata !DIExpression()), !dbg !1070
  %440 = trunc i128 %437 to i64, !dbg !1072
  call void @llvm.dbg.value(metadata i64 %440, metadata !1071, metadata !DIExpression()), !dbg !1070
  br label %441, !dbg !1072

441:                                              ; preds = %434
  %442 = add i64 %430, %439, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %442, metadata !852, metadata !DIExpression()), !dbg !807
  %443 = lshr i64 %440, 20, !dbg !1063
  %444 = add i64 %433, %443, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %444, metadata !853, metadata !DIExpression()), !dbg !807
  br label %445, !dbg !1063

445:                                              ; preds = %441
  %446 = zext i64 %390 to i128, !dbg !1076
  %447 = zext i64 %14 to i128, !dbg !1076
  %448 = mul i128 %446, %447, !dbg !1076
  call void @llvm.dbg.value(metadata i128 %448, metadata !1078, metadata !DIExpression()), !dbg !1079
  %449 = lshr i128 %448, 64, !dbg !1076
  %450 = trunc i128 %449 to i64, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %450, metadata !1069, metadata !DIExpression()), !dbg !1070
  %451 = trunc i128 %448 to i64, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %451, metadata !1071, metadata !DIExpression()), !dbg !1070
  br label %452, !dbg !1076

452:                                              ; preds = %445
  %453 = add i64 %442, %450, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %453, metadata !852, metadata !DIExpression()), !dbg !807
  %454 = lshr i64 %451, 20, !dbg !1063
  %455 = add i64 %444, %454, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %455, metadata !853, metadata !DIExpression()), !dbg !807
  br label %456, !dbg !1063

456:                                              ; preds = %452
  br label %457, !dbg !1080

457:                                              ; preds = %456
  br label %458, !dbg !1081

458:                                              ; preds = %457
  %459 = zext i64 %387 to i128, !dbg !1083
  %460 = zext i64 %10 to i128, !dbg !1083
  %461 = mul i128 %459, %460, !dbg !1083
  call void @llvm.dbg.value(metadata i128 %461, metadata !1085, metadata !DIExpression()), !dbg !1086
  %462 = lshr i128 %461, 64, !dbg !1083
  %463 = trunc i128 %462 to i64, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %463, metadata !1087, metadata !DIExpression()), !dbg !1088
  %464 = trunc i128 %461 to i64, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %464, metadata !1089, metadata !DIExpression()), !dbg !1088
  br label %465, !dbg !1083

465:                                              ; preds = %458
  call void @llvm.dbg.value(metadata i64 %463, metadata !872, metadata !DIExpression()), !dbg !807
  %466 = lshr i64 %464, 20, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %466, metadata !873, metadata !DIExpression()), !dbg !807
  br label %467, !dbg !1081

467:                                              ; preds = %465
  %468 = zext i64 %388 to i128, !dbg !1090
  %469 = zext i64 %8 to i128, !dbg !1090
  %470 = mul i128 %468, %469, !dbg !1090
  call void @llvm.dbg.value(metadata i128 %470, metadata !1092, metadata !DIExpression()), !dbg !1093
  %471 = lshr i128 %470, 64, !dbg !1090
  %472 = trunc i128 %471 to i64, !dbg !1090
  call void @llvm.dbg.value(metadata i64 %472, metadata !1087, metadata !DIExpression()), !dbg !1088
  %473 = trunc i128 %470 to i64, !dbg !1090
  call void @llvm.dbg.value(metadata i64 %473, metadata !1089, metadata !DIExpression()), !dbg !1088
  br label %474, !dbg !1090

474:                                              ; preds = %467
  %475 = add i64 %463, %472, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %475, metadata !872, metadata !DIExpression()), !dbg !807
  %476 = lshr i64 %473, 20, !dbg !1081
  %477 = add i64 %466, %476, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %477, metadata !873, metadata !DIExpression()), !dbg !807
  br label %478, !dbg !1081

478:                                              ; preds = %474
  %479 = zext i64 %390 to i128, !dbg !1094
  %480 = zext i64 %6 to i128, !dbg !1094
  %481 = mul i128 %479, %480, !dbg !1094
  call void @llvm.dbg.value(metadata i128 %481, metadata !1096, metadata !DIExpression()), !dbg !1097
  %482 = lshr i128 %481, 64, !dbg !1094
  %483 = trunc i128 %482 to i64, !dbg !1094
  call void @llvm.dbg.value(metadata i64 %483, metadata !1087, metadata !DIExpression()), !dbg !1088
  %484 = trunc i128 %481 to i64, !dbg !1094
  call void @llvm.dbg.value(metadata i64 %484, metadata !1089, metadata !DIExpression()), !dbg !1088
  br label %485, !dbg !1094

485:                                              ; preds = %478
  %486 = add i64 %475, %483, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %486, metadata !872, metadata !DIExpression()), !dbg !807
  %487 = lshr i64 %484, 20, !dbg !1081
  %488 = add i64 %477, %487, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %488, metadata !873, metadata !DIExpression()), !dbg !807
  br label %489, !dbg !1081

489:                                              ; preds = %485
  %490 = mul i64 20, %486, !dbg !1098
  %491 = add i64 %422, %490, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %491, metadata !795, metadata !DIExpression()), !dbg !778
  %492 = add i64 %455, %420, !dbg !1100
  call void @llvm.dbg.value(metadata i64 %492, metadata !797, metadata !DIExpression()), !dbg !778
  %493 = add i64 %488, %453, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %493, metadata !799, metadata !DIExpression()), !dbg !778
  %494 = lshr i64 %491, 44, !dbg !1102
  %495 = add i64 %492, %494, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %495, metadata !797, metadata !DIExpression()), !dbg !778
  %496 = and i64 %491, 17592186044415, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %496, metadata !795, metadata !DIExpression()), !dbg !778
  %497 = lshr i64 %495, 44, !dbg !1105
  %498 = add i64 %493, %497, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %498, metadata !799, metadata !DIExpression()), !dbg !778
  %499 = and i64 %495, 17592186044415, !dbg !1107
  call void @llvm.dbg.value(metadata i64 %499, metadata !797, metadata !DIExpression()), !dbg !778
  %500 = lshr i64 %498, 44, !dbg !1108
  %501 = mul i64 20, %500, !dbg !1109
  %502 = add i64 %496, %501, !dbg !1110
  call void @llvm.dbg.value(metadata i64 %502, metadata !795, metadata !DIExpression()), !dbg !778
  %503 = and i64 %498, 17592186044415, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %503, metadata !799, metadata !DIExpression()), !dbg !778
  %504 = getelementptr inbounds i8, i8* %.01, i64 64, !dbg !1112
  call void @llvm.dbg.value(metadata i8* %504, metadata !800, metadata !DIExpression()), !dbg !778
  %505 = sub i64 %.0, 64, !dbg !1113
  call void @llvm.dbg.value(metadata i64 %505, metadata !781, metadata !DIExpression()), !dbg !778
  br label %23, !dbg !801, !llvm.loop !1114

506:                                              ; preds = %23
  %507 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1116
  store i64 %.02, i64* %507, align 8, !dbg !1117
  %508 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1118
  store i64 %.03, i64* %508, align 8, !dbg !1119
  %509 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1120
  store i64 %.04, i64* %509, align 8, !dbg !1121
  ret void, !dbg !1122
}

; Function Attrs: noinline nounwind uwtable
define dso_local void (i8*, i8*, i8*, i64, i8*, i64, i8*, i32 (i8*, i8*, i32, i8*, i64)*, i32)* @br_poly1305_ctmulq_get() #0 !dbg !1123 {
  ret void (i8*, i8*, i8*, i64, i8*, i64, i8*, i32 (i8*, i8*, i32, i8*, i64)*, i32)* @br_poly1305_ctmulq_run, !dbg !1128
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !1129 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8* %1, metadata !1132, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8* %2, metadata !1133, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i64 %3, metadata !1134, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8* %4, metadata !1135, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i64 %5, metadata !1136, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8* %6, metadata !1137, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !1138, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i32 %8, metadata !1139, metadata !DIExpression()), !dbg !1131
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1140
  call void @public_in(%struct.smack_value* %10), !dbg !1141
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1142
  call void @public_in(%struct.smack_value* %11), !dbg !1143
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !1144
  call void @public_in(%struct.smack_value* %12), !dbg !1145
  %13 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !1146
  call void @public_in(%struct.smack_value* %13), !dbg !1147
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !1148
  call void @public_in(%struct.smack_value* %14), !dbg !1149
  %15 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %5), !dbg !1150
  call void @public_in(%struct.smack_value* %15), !dbg !1151
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !1152
  call void @public_in(%struct.smack_value* %16), !dbg !1153
  %17 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %8), !dbg !1154
  call void @public_in(%struct.smack_value* %17), !dbg !1155
  %18 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !1156
  call void @public_in(%struct.smack_value* %18), !dbg !1157
  %19 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !1158
  call void @public_in(%struct.smack_value* %19), !dbg !1159
  %20 = call %struct.smack_value* (i8*, i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, i32, ...)*)(i8* %4, i32 32), !dbg !1160
  call void @public_in(%struct.smack_value* %20), !dbg !1161
  call void @br_poly1305_ctmulq_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 %8), !dbg !1162
  ret void, !dbg !1163
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper_t() #0 !dbg !1164 {
  %1 = call i8* (...) @getvoid1(), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %1, metadata !1168, metadata !DIExpression()), !dbg !1169
  %2 = call i8* (...) @getvoid2(), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %2, metadata !1171, metadata !DIExpression()), !dbg !1169
  %3 = call i8* (...) @getvoid5(), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %3, metadata !1173, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i64 32, metadata !1174, metadata !DIExpression()), !dbg !1169
  %4 = call i8* (...) @getvoid3(), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %4, metadata !1176, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i64 32, metadata !1177, metadata !DIExpression()), !dbg !1169
  %5 = call i8* (...) @getvoid6(), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %5, metadata !1179, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i32 1, metadata !1180, metadata !DIExpression()), !dbg !1169
  call void @br_poly1305_ctmulq_run(i8* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 1), !dbg !1181
  ret void, !dbg !1182
}

declare dso_local i8* @getvoid1(...) #4

declare dso_local i8* @getvoid2(...) #4

declare dso_local i8* @getvoid5(...) #4

declare dso_local i8* @getvoid3(...) #4

declare dso_local i8* @getvoid6(...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!17, !38, !64}
!llvm.ident = !{!66, !66, !66}
!llvm.module.flags = !{!67, !68, !69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CW", scope: !2, file: !3, line: 36, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "br_chacha20_ct_run", scope: !3, file: !3, line: 29, type: !4, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/chacha20_ct.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmulq_ChaCha20")
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
!26 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmulq_ChaCha20")
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
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../BearSSL/src/symcipher/poly1305_ctmulq.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmulq_ChaCha20")
!40 = !{!41, !6, !43, !44, !54, !14, !20, !55, !56, !63}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !16)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u64", file: !26, line: 485, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 482, size: 64, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !47, file: !26, line: 483, baseType: !41, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !47, file: !26, line: 484, baseType: !51, size: 64)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 8)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!55 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u32", file: !26, line: 480, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 477, size: 32, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !59, file: !26, line: 478, baseType: !6, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !59, file: !26, line: 479, baseType: !31, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "run.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmulq_ChaCha20")
!66 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!67 = !{i32 7, !"Dwarf Version", i32 4}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 29, type: !11)
!71 = !DILocation(line: 0, scope: !2)
!72 = !DILocalVariable(name: "iv", arg: 2, scope: !2, file: !3, line: 30, type: !11)
!73 = !DILocalVariable(name: "cc", arg: 3, scope: !2, file: !3, line: 30, type: !6)
!74 = !DILocalVariable(name: "data", arg: 4, scope: !2, file: !3, line: 30, type: !13)
!75 = !DILocalVariable(name: "len", arg: 5, scope: !2, file: !3, line: 30, type: !14)
!76 = !DILocalVariable(name: "kw", scope: !2, file: !3, line: 33, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !52)
!78 = !DILocation(line: 33, column: 11, scope: !2)
!79 = !DILocalVariable(name: "ivw", scope: !2, file: !3, line: 33, type: !80)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 3)
!83 = !DILocation(line: 33, column: 18, scope: !2)
!84 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 32, type: !43)
!85 = !DILocalVariable(name: "u", scope: !2, file: !3, line: 34, type: !14)
!86 = !DILocation(line: 41, column: 7, scope: !87)
!87 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!88 = !DILocation(line: 0, scope: !87)
!89 = !DILocation(line: 41, column: 16, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !3, line: 41, column: 2)
!91 = !DILocation(line: 41, column: 2, scope: !87)
!92 = !DILocation(line: 42, column: 54, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !3, line: 41, column: 27)
!94 = !DILocation(line: 42, column: 49, scope: !93)
!95 = !DILocation(line: 42, column: 11, scope: !93)
!96 = !DILocation(line: 42, column: 3, scope: !93)
!97 = !DILocation(line: 42, column: 9, scope: !93)
!98 = !DILocation(line: 43, column: 2, scope: !93)
!99 = !DILocation(line: 41, column: 23, scope: !90)
!100 = !DILocation(line: 41, column: 2, scope: !90)
!101 = distinct !{!101, !91, !102, !103}
!102 = !DILocation(line: 43, column: 2, scope: !87)
!103 = !{!"llvm.loop.mustprogress"}
!104 = !DILocation(line: 44, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 2)
!106 = !DILocation(line: 0, scope: !105)
!107 = !DILocation(line: 44, column: 16, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !3, line: 44, column: 2)
!109 = !DILocation(line: 44, column: 2, scope: !105)
!110 = !DILocation(line: 45, column: 54, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !3, line: 44, column: 27)
!112 = !DILocation(line: 45, column: 49, scope: !111)
!113 = !DILocation(line: 45, column: 12, scope: !111)
!114 = !DILocation(line: 45, column: 3, scope: !111)
!115 = !DILocation(line: 45, column: 10, scope: !111)
!116 = !DILocation(line: 46, column: 2, scope: !111)
!117 = !DILocation(line: 44, column: 23, scope: !108)
!118 = !DILocation(line: 44, column: 2, scope: !108)
!119 = distinct !{!119, !109, !120, !103}
!120 = !DILocation(line: 46, column: 2, scope: !105)
!121 = !DILocation(line: 47, column: 2, scope: !2)
!122 = !DILocation(line: 47, column: 13, scope: !2)
!123 = !DILocalVariable(name: "state", scope: !124, file: !3, line: 48, type: !125)
!124 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 18)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 16)
!128 = !DILocation(line: 48, column: 12, scope: !124)
!129 = !DILocalVariable(name: "tmp", scope: !124, file: !3, line: 51, type: !130)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 64)
!133 = !DILocation(line: 51, column: 17, scope: !124)
!134 = !DILocation(line: 53, column: 11, scope: !124)
!135 = !DILocation(line: 53, column: 3, scope: !124)
!136 = !DILocation(line: 54, column: 11, scope: !124)
!137 = !DILocation(line: 54, column: 3, scope: !124)
!138 = !DILocation(line: 55, column: 3, scope: !124)
!139 = !DILocation(line: 55, column: 13, scope: !124)
!140 = !DILocation(line: 56, column: 11, scope: !124)
!141 = !DILocation(line: 56, column: 3, scope: !124)
!142 = !DILocalVariable(name: "i", scope: !124, file: !3, line: 49, type: !143)
!143 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!144 = !DILocation(line: 0, scope: !124)
!145 = !DILocation(line: 57, column: 8, scope: !146)
!146 = distinct !DILexicalBlock(scope: !124, file: !3, line: 57, column: 3)
!147 = !DILocation(line: 0, scope: !146)
!148 = !DILocation(line: 57, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !3, line: 57, column: 3)
!150 = !DILocation(line: 57, column: 3, scope: !146)
!151 = !DILocation(line: 74, column: 4, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !3, line: 57, column: 29)
!153 = !DILocation(line: 74, column: 4, scope: !154)
!154 = distinct !DILexicalBlock(scope: !152, file: !3, line: 74, column: 4)
!155 = !DILocation(line: 75, column: 4, scope: !152)
!156 = !DILocation(line: 75, column: 4, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !3, line: 75, column: 4)
!158 = !DILocation(line: 76, column: 4, scope: !152)
!159 = !DILocation(line: 76, column: 4, scope: !160)
!160 = distinct !DILexicalBlock(scope: !152, file: !3, line: 76, column: 4)
!161 = !DILocation(line: 77, column: 4, scope: !152)
!162 = !DILocation(line: 77, column: 4, scope: !163)
!163 = distinct !DILexicalBlock(scope: !152, file: !3, line: 77, column: 4)
!164 = !DILocation(line: 78, column: 4, scope: !152)
!165 = !DILocation(line: 78, column: 4, scope: !166)
!166 = distinct !DILexicalBlock(scope: !152, file: !3, line: 78, column: 4)
!167 = !DILocation(line: 79, column: 4, scope: !152)
!168 = !DILocation(line: 79, column: 4, scope: !169)
!169 = distinct !DILexicalBlock(scope: !152, file: !3, line: 79, column: 4)
!170 = !DILocation(line: 80, column: 4, scope: !152)
!171 = !DILocation(line: 80, column: 4, scope: !172)
!172 = distinct !DILexicalBlock(scope: !152, file: !3, line: 80, column: 4)
!173 = !DILocation(line: 81, column: 4, scope: !152)
!174 = !DILocation(line: 81, column: 4, scope: !175)
!175 = distinct !DILexicalBlock(scope: !152, file: !3, line: 81, column: 4)
!176 = !DILocation(line: 85, column: 3, scope: !152)
!177 = !DILocation(line: 57, column: 25, scope: !149)
!178 = !DILocation(line: 57, column: 3, scope: !149)
!179 = distinct !{!179, !150, !180, !103}
!180 = !DILocation(line: 85, column: 3, scope: !146)
!181 = !DILocation(line: 86, column: 8, scope: !182)
!182 = distinct !DILexicalBlock(scope: !124, file: !3, line: 86, column: 3)
!183 = !DILocation(line: 0, scope: !182)
!184 = !DILocation(line: 86, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 86, column: 3)
!186 = !DILocation(line: 86, column: 3, scope: !182)
!187 = !DILocation(line: 87, column: 22, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 86, column: 28)
!189 = !DILocation(line: 87, column: 16, scope: !188)
!190 = !DILocation(line: 87, column: 29, scope: !188)
!191 = !DILocation(line: 87, column: 40, scope: !188)
!192 = !DILocation(line: 87, column: 38, scope: !188)
!193 = !DILocation(line: 87, column: 4, scope: !188)
!194 = !DILocation(line: 88, column: 3, scope: !188)
!195 = !DILocation(line: 86, column: 24, scope: !185)
!196 = !DILocation(line: 86, column: 3, scope: !185)
!197 = distinct !{!197, !186, !198, !103}
!198 = !DILocation(line: 88, column: 3, scope: !182)
!199 = !DILocation(line: 89, column: 8, scope: !200)
!200 = distinct !DILexicalBlock(scope: !124, file: !3, line: 89, column: 3)
!201 = !DILocation(line: 0, scope: !200)
!202 = !DILocation(line: 89, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 89, column: 3)
!204 = !DILocation(line: 89, column: 3, scope: !200)
!205 = !DILocation(line: 90, column: 22, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 89, column: 29)
!207 = !DILocation(line: 90, column: 16, scope: !206)
!208 = !DILocation(line: 90, column: 29, scope: !206)
!209 = !DILocation(line: 90, column: 45, scope: !206)
!210 = !DILocation(line: 90, column: 40, scope: !206)
!211 = !DILocation(line: 90, column: 38, scope: !206)
!212 = !DILocation(line: 90, column: 4, scope: !206)
!213 = !DILocation(line: 91, column: 3, scope: !206)
!214 = !DILocation(line: 89, column: 25, scope: !203)
!215 = !DILocation(line: 89, column: 3, scope: !203)
!216 = distinct !{!216, !204, !217, !103}
!217 = !DILocation(line: 91, column: 3, scope: !200)
!218 = !DILocation(line: 92, column: 15, scope: !124)
!219 = !DILocation(line: 92, column: 24, scope: !124)
!220 = !DILocation(line: 92, column: 34, scope: !124)
!221 = !DILocation(line: 92, column: 3, scope: !124)
!222 = !DILocation(line: 93, column: 8, scope: !223)
!223 = distinct !DILexicalBlock(scope: !124, file: !3, line: 93, column: 3)
!224 = !DILocation(line: 0, scope: !223)
!225 = !DILocation(line: 93, column: 18, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !3, line: 93, column: 3)
!227 = !DILocation(line: 93, column: 3, scope: !223)
!228 = !DILocation(line: 94, column: 22, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 93, column: 30)
!230 = !DILocation(line: 94, column: 16, scope: !229)
!231 = !DILocation(line: 94, column: 29, scope: !229)
!232 = !DILocation(line: 94, column: 46, scope: !229)
!233 = !DILocation(line: 94, column: 40, scope: !229)
!234 = !DILocation(line: 94, column: 38, scope: !229)
!235 = !DILocation(line: 94, column: 4, scope: !229)
!236 = !DILocation(line: 95, column: 3, scope: !229)
!237 = !DILocation(line: 93, column: 26, scope: !226)
!238 = !DILocation(line: 93, column: 3, scope: !226)
!239 = distinct !{!239, !227, !240, !103}
!240 = !DILocation(line: 95, column: 3, scope: !223)
!241 = !DILocation(line: 97, column: 14, scope: !124)
!242 = !DILocation(line: 97, column: 10, scope: !124)
!243 = !DILocalVariable(name: "clen", scope: !124, file: !3, line: 50, type: !14)
!244 = !DILocation(line: 98, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !124, file: !3, line: 98, column: 3)
!246 = !DILocation(line: 0, scope: !245)
!247 = !DILocation(line: 98, column: 17, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !3, line: 98, column: 3)
!249 = !DILocation(line: 98, column: 3, scope: !245)
!250 = !DILocation(line: 99, column: 14, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !3, line: 98, column: 31)
!252 = !DILocation(line: 99, column: 4, scope: !251)
!253 = !DILocation(line: 99, column: 11, scope: !251)
!254 = !DILocation(line: 100, column: 3, scope: !251)
!255 = !DILocation(line: 98, column: 27, scope: !248)
!256 = !DILocation(line: 98, column: 3, scope: !248)
!257 = distinct !{!257, !249, !258, !103}
!258 = !DILocation(line: 100, column: 3, scope: !245)
!259 = !DILocation(line: 101, column: 7, scope: !124)
!260 = !DILocation(line: 102, column: 7, scope: !124)
!261 = !DILocation(line: 103, column: 6, scope: !124)
!262 = distinct !{!262, !121, !263, !103}
!263 = !DILocation(line: 104, column: 2, scope: !2)
!264 = !DILocation(line: 105, column: 2, scope: !2)
!265 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !266, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!266 = !DISubroutineType(types: !267)
!267 = !{!6, !11}
!268 = !DILocalVariable(name: "src", arg: 1, scope: !265, file: !26, line: 574, type: !11)
!269 = !DILocation(line: 0, scope: !265)
!270 = !DILocation(line: 577, column: 10, scope: !265)
!271 = !DILocation(line: 577, column: 38, scope: !265)
!272 = !DILocation(line: 577, column: 2, scope: !265)
!273 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !274, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !13, !6}
!276 = !DILocalVariable(name: "dst", arg: 1, scope: !273, file: !26, line: 542, type: !13)
!277 = !DILocation(line: 0, scope: !273)
!278 = !DILocalVariable(name: "x", arg: 2, scope: !273, file: !26, line: 542, type: !6)
!279 = !DILocation(line: 545, column: 3, scope: !273)
!280 = !DILocation(line: 545, column: 25, scope: !273)
!281 = !DILocation(line: 545, column: 27, scope: !273)
!282 = !DILocation(line: 555, column: 1, scope: !273)
!283 = distinct !DISubprogram(name: "br_poly1305_ctmulq_run", scope: !39, file: !39, line: 316, type: !284, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !18)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !11, !11, !13, !14, !11, !14, !13, !286, !143}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_chacha20_run", file: !287, line: 2442, baseType: !288)
!287 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmulq_ChaCha20")
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!289 = !DILocalVariable(name: "key", arg: 1, scope: !283, file: !39, line: 316, type: !11)
!290 = !DILocation(line: 0, scope: !283)
!291 = !DILocalVariable(name: "iv", arg: 2, scope: !283, file: !39, line: 316, type: !11)
!292 = !DILocalVariable(name: "data", arg: 3, scope: !283, file: !39, line: 317, type: !13)
!293 = !DILocalVariable(name: "len", arg: 4, scope: !283, file: !39, line: 317, type: !14)
!294 = !DILocalVariable(name: "aad", arg: 5, scope: !283, file: !39, line: 317, type: !11)
!295 = !DILocalVariable(name: "aad_len", arg: 6, scope: !283, file: !39, line: 317, type: !14)
!296 = !DILocalVariable(name: "tag", arg: 7, scope: !283, file: !39, line: 318, type: !13)
!297 = !DILocalVariable(name: "ichacha", arg: 8, scope: !283, file: !39, line: 318, type: !286)
!298 = !DILocalVariable(name: "encrypt", arg: 9, scope: !283, file: !39, line: 318, type: !143)
!299 = !DILocalVariable(name: "pkey", scope: !283, file: !39, line: 320, type: !300)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 32)
!303 = !DILocation(line: 320, column: 16, scope: !283)
!304 = !DILocalVariable(name: "foot", scope: !283, file: !39, line: 320, type: !305)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !126)
!306 = !DILocation(line: 320, column: 26, scope: !283)
!307 = !DILocalVariable(name: "r", scope: !283, file: !39, line: 321, type: !308)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 384, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 6)
!311 = !DILocation(line: 321, column: 11, scope: !283)
!312 = !DILocalVariable(name: "acc", scope: !283, file: !39, line: 321, type: !313)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 192, elements: !81)
!314 = !DILocation(line: 321, column: 17, scope: !283)
!315 = !DILocation(line: 330, column: 2, scope: !283)
!316 = !DILocation(line: 331, column: 22, scope: !283)
!317 = !DILocation(line: 331, column: 2, scope: !283)
!318 = !DILocation(line: 337, column: 6, scope: !319)
!319 = distinct !DILexicalBlock(scope: !283, file: !39, line: 337, column: 6)
!320 = !DILocation(line: 337, column: 6, scope: !283)
!321 = !DILocation(line: 338, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !39, line: 337, column: 15)
!323 = !DILocation(line: 339, column: 2, scope: !322)
!324 = !DILocation(line: 351, column: 2, scope: !283)
!325 = !DILocation(line: 351, column: 11, scope: !283)
!326 = !DILocation(line: 352, column: 2, scope: !283)
!327 = !DILocation(line: 352, column: 11, scope: !283)
!328 = !DILocation(line: 353, column: 2, scope: !283)
!329 = !DILocation(line: 353, column: 11, scope: !283)
!330 = !DILocation(line: 354, column: 2, scope: !283)
!331 = !DILocation(line: 354, column: 11, scope: !283)
!332 = !DILocation(line: 355, column: 2, scope: !283)
!333 = !DILocation(line: 355, column: 11, scope: !283)
!334 = !DILocation(line: 356, column: 2, scope: !283)
!335 = !DILocation(line: 356, column: 11, scope: !283)
!336 = !DILocation(line: 357, column: 2, scope: !283)
!337 = !DILocation(line: 357, column: 11, scope: !283)
!338 = !DILocation(line: 363, column: 18, scope: !283)
!339 = !DILocation(line: 363, column: 23, scope: !283)
!340 = !DILocation(line: 363, column: 7, scope: !283)
!341 = !DILocalVariable(name: "r0", scope: !283, file: !39, line: 321, type: !41)
!342 = !DILocation(line: 364, column: 18, scope: !283)
!343 = !DILocation(line: 364, column: 23, scope: !283)
!344 = !DILocation(line: 364, column: 7, scope: !283)
!345 = !DILocalVariable(name: "r1", scope: !283, file: !39, line: 321, type: !41)
!346 = !DILocation(line: 365, column: 12, scope: !283)
!347 = !DILocation(line: 365, column: 2, scope: !283)
!348 = !DILocation(line: 365, column: 7, scope: !283)
!349 = !DILocation(line: 366, column: 14, scope: !283)
!350 = !DILocation(line: 366, column: 27, scope: !283)
!351 = !DILocation(line: 366, column: 21, scope: !283)
!352 = !DILocation(line: 366, column: 35, scope: !283)
!353 = !DILocation(line: 366, column: 2, scope: !283)
!354 = !DILocation(line: 366, column: 7, scope: !283)
!355 = !DILocation(line: 367, column: 13, scope: !283)
!356 = !DILocation(line: 367, column: 19, scope: !283)
!357 = !DILocation(line: 367, column: 2, scope: !283)
!358 = !DILocation(line: 367, column: 7, scope: !283)
!359 = !DILocation(line: 368, column: 13, scope: !283)
!360 = !DILocation(line: 368, column: 18, scope: !283)
!361 = !DILocation(line: 368, column: 10, scope: !283)
!362 = !DILocation(line: 369, column: 12, scope: !283)
!363 = !DILocation(line: 369, column: 2, scope: !283)
!364 = !DILocation(line: 369, column: 7, scope: !283)
!365 = !DILocation(line: 370, column: 14, scope: !283)
!366 = !DILocation(line: 370, column: 12, scope: !283)
!367 = !DILocation(line: 370, column: 2, scope: !283)
!368 = !DILocation(line: 370, column: 7, scope: !283)
!369 = !DILocation(line: 371, column: 10, scope: !283)
!370 = !DILocation(line: 371, column: 21, scope: !283)
!371 = !DILocation(line: 371, column: 15, scope: !283)
!372 = !DILocation(line: 371, column: 29, scope: !283)
!373 = !DILocation(line: 371, column: 2, scope: !283)
!374 = !DILocation(line: 371, column: 7, scope: !283)
!375 = !DILocation(line: 376, column: 2, scope: !283)
!376 = !DILocation(line: 376, column: 9, scope: !283)
!377 = !DILocation(line: 377, column: 2, scope: !283)
!378 = !DILocation(line: 377, column: 9, scope: !283)
!379 = !DILocation(line: 378, column: 2, scope: !283)
!380 = !DILocation(line: 378, column: 9, scope: !283)
!381 = !DILocation(line: 384, column: 13, scope: !283)
!382 = !DILocation(line: 384, column: 2, scope: !283)
!383 = !DILocation(line: 385, column: 13, scope: !283)
!384 = !DILocation(line: 385, column: 18, scope: !283)
!385 = !DILocation(line: 385, column: 2, scope: !283)
!386 = !DILocation(line: 386, column: 17, scope: !283)
!387 = !DILocation(line: 386, column: 22, scope: !283)
!388 = !DILocation(line: 386, column: 2, scope: !283)
!389 = !DILocation(line: 387, column: 17, scope: !283)
!390 = !DILocation(line: 387, column: 22, scope: !283)
!391 = !DILocation(line: 387, column: 2, scope: !283)
!392 = !DILocation(line: 388, column: 23, scope: !283)
!393 = !DILocation(line: 388, column: 28, scope: !283)
!394 = !DILocation(line: 388, column: 31, scope: !283)
!395 = !DILocation(line: 388, column: 2, scope: !283)
!396 = !DILocation(line: 395, column: 13, scope: !283)
!397 = !DILocation(line: 395, column: 20, scope: !283)
!398 = !DILocation(line: 395, column: 2, scope: !283)
!399 = !DILocation(line: 395, column: 9, scope: !283)
!400 = !DILocation(line: 396, column: 2, scope: !283)
!401 = !DILocation(line: 396, column: 9, scope: !283)
!402 = !DILocation(line: 397, column: 13, scope: !283)
!403 = !DILocation(line: 397, column: 20, scope: !283)
!404 = !DILocation(line: 397, column: 2, scope: !283)
!405 = !DILocation(line: 397, column: 9, scope: !283)
!406 = !DILocation(line: 398, column: 2, scope: !283)
!407 = !DILocation(line: 398, column: 9, scope: !283)
!408 = !DILocation(line: 399, column: 17, scope: !283)
!409 = !DILocation(line: 399, column: 24, scope: !283)
!410 = !DILocation(line: 399, column: 14, scope: !283)
!411 = !DILocation(line: 399, column: 2, scope: !283)
!412 = !DILocation(line: 399, column: 9, scope: !283)
!413 = !DILocation(line: 400, column: 2, scope: !283)
!414 = !DILocation(line: 400, column: 9, scope: !283)
!415 = !DILocation(line: 401, column: 13, scope: !283)
!416 = !DILocation(line: 401, column: 20, scope: !283)
!417 = !DILocation(line: 401, column: 2, scope: !283)
!418 = !DILocation(line: 401, column: 9, scope: !283)
!419 = !DILocation(line: 402, column: 2, scope: !283)
!420 = !DILocation(line: 402, column: 9, scope: !283)
!421 = !DILocation(line: 403, column: 13, scope: !283)
!422 = !DILocation(line: 403, column: 20, scope: !283)
!423 = !DILocation(line: 403, column: 2, scope: !283)
!424 = !DILocation(line: 403, column: 9, scope: !283)
!425 = !DILocation(line: 404, column: 2, scope: !283)
!426 = !DILocation(line: 404, column: 9, scope: !283)
!427 = !DILocation(line: 405, column: 17, scope: !283)
!428 = !DILocation(line: 405, column: 24, scope: !283)
!429 = !DILocation(line: 405, column: 14, scope: !283)
!430 = !DILocation(line: 405, column: 2, scope: !283)
!431 = !DILocation(line: 405, column: 9, scope: !283)
!432 = !DILocation(line: 406, column: 2, scope: !283)
!433 = !DILocation(line: 406, column: 9, scope: !283)
!434 = !DILocation(line: 414, column: 17, scope: !283)
!435 = !DILocation(line: 414, column: 7, scope: !283)
!436 = !DILocalVariable(name: "v0", scope: !283, file: !39, line: 322, type: !6)
!437 = !DILocation(line: 415, column: 18, scope: !283)
!438 = !DILocation(line: 415, column: 25, scope: !283)
!439 = !DILocation(line: 415, column: 7, scope: !283)
!440 = !DILocation(line: 415, column: 45, scope: !283)
!441 = !DILocation(line: 415, column: 35, scope: !283)
!442 = !DILocation(line: 415, column: 52, scope: !283)
!443 = !DILocation(line: 415, column: 32, scope: !283)
!444 = !DILocalVariable(name: "v1", scope: !283, file: !39, line: 322, type: !6)
!445 = !DILocation(line: 416, column: 18, scope: !283)
!446 = !DILocation(line: 416, column: 25, scope: !283)
!447 = !DILocation(line: 416, column: 7, scope: !283)
!448 = !DILocation(line: 416, column: 45, scope: !283)
!449 = !DILocation(line: 416, column: 35, scope: !283)
!450 = !DILocation(line: 416, column: 52, scope: !283)
!451 = !DILocation(line: 416, column: 32, scope: !283)
!452 = !DILocalVariable(name: "v2", scope: !283, file: !39, line: 322, type: !6)
!453 = !DILocation(line: 417, column: 18, scope: !283)
!454 = !DILocation(line: 417, column: 25, scope: !283)
!455 = !DILocation(line: 417, column: 7, scope: !283)
!456 = !DILocalVariable(name: "v3", scope: !283, file: !39, line: 322, type: !6)
!457 = !DILocation(line: 418, column: 18, scope: !283)
!458 = !DILocation(line: 418, column: 25, scope: !283)
!459 = !DILocation(line: 418, column: 7, scope: !283)
!460 = !DILocalVariable(name: "v4", scope: !283, file: !39, line: 322, type: !6)
!461 = !DILocation(line: 420, column: 8, scope: !283)
!462 = !DILocalVariable(name: "ctl", scope: !283, file: !39, line: 324, type: !6)
!463 = !DILocation(line: 421, column: 9, scope: !283)
!464 = !DILocation(line: 421, column: 6, scope: !283)
!465 = !DILocation(line: 422, column: 9, scope: !283)
!466 = !DILocation(line: 422, column: 6, scope: !283)
!467 = !DILocation(line: 423, column: 9, scope: !283)
!468 = !DILocation(line: 423, column: 6, scope: !283)
!469 = !DILocation(line: 424, column: 9, scope: !283)
!470 = !DILocation(line: 424, column: 6, scope: !283)
!471 = !DILocation(line: 425, column: 19, scope: !283)
!472 = !DILocation(line: 425, column: 7, scope: !283)
!473 = !DILocation(line: 426, column: 7, scope: !283)
!474 = !DILocation(line: 427, column: 7, scope: !283)
!475 = !DILocation(line: 428, column: 7, scope: !283)
!476 = !DILocation(line: 434, column: 7, scope: !283)
!477 = !DILocation(line: 434, column: 43, scope: !283)
!478 = !DILocation(line: 434, column: 48, scope: !283)
!479 = !DILocation(line: 434, column: 32, scope: !283)
!480 = !DILocation(line: 434, column: 22, scope: !283)
!481 = !DILocation(line: 434, column: 20, scope: !283)
!482 = !DILocalVariable(name: "w0", scope: !283, file: !39, line: 323, type: !41)
!483 = !DILocation(line: 435, column: 7, scope: !283)
!484 = !DILocation(line: 435, column: 43, scope: !283)
!485 = !DILocation(line: 435, column: 48, scope: !283)
!486 = !DILocation(line: 435, column: 32, scope: !283)
!487 = !DILocation(line: 435, column: 22, scope: !283)
!488 = !DILocation(line: 435, column: 20, scope: !283)
!489 = !DILocation(line: 435, column: 60, scope: !283)
!490 = !DILocation(line: 435, column: 54, scope: !283)
!491 = !DILocalVariable(name: "w1", scope: !283, file: !39, line: 323, type: !41)
!492 = !DILocation(line: 436, column: 7, scope: !283)
!493 = !DILocation(line: 436, column: 43, scope: !283)
!494 = !DILocation(line: 436, column: 48, scope: !283)
!495 = !DILocation(line: 436, column: 32, scope: !283)
!496 = !DILocation(line: 436, column: 22, scope: !283)
!497 = !DILocation(line: 436, column: 20, scope: !283)
!498 = !DILocation(line: 436, column: 60, scope: !283)
!499 = !DILocation(line: 436, column: 54, scope: !283)
!500 = !DILocalVariable(name: "w2", scope: !283, file: !39, line: 323, type: !41)
!501 = !DILocation(line: 437, column: 7, scope: !283)
!502 = !DILocation(line: 437, column: 43, scope: !283)
!503 = !DILocation(line: 437, column: 48, scope: !283)
!504 = !DILocation(line: 437, column: 32, scope: !283)
!505 = !DILocation(line: 437, column: 22, scope: !283)
!506 = !DILocation(line: 437, column: 20, scope: !283)
!507 = !DILocation(line: 437, column: 60, scope: !283)
!508 = !DILocation(line: 437, column: 54, scope: !283)
!509 = !DILocalVariable(name: "w3", scope: !283, file: !39, line: 323, type: !41)
!510 = !DILocation(line: 438, column: 7, scope: !283)
!511 = !DILocation(line: 439, column: 7, scope: !283)
!512 = !DILocation(line: 440, column: 7, scope: !283)
!513 = !DILocation(line: 441, column: 7, scope: !283)
!514 = !DILocation(line: 446, column: 34, scope: !283)
!515 = !DILocation(line: 446, column: 2, scope: !283)
!516 = !DILocation(line: 447, column: 34, scope: !283)
!517 = !DILocation(line: 447, column: 2, scope: !283)
!518 = !DILocation(line: 448, column: 34, scope: !283)
!519 = !DILocation(line: 448, column: 2, scope: !283)
!520 = !DILocation(line: 449, column: 34, scope: !283)
!521 = !DILocation(line: 449, column: 2, scope: !283)
!522 = !DILocation(line: 454, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !283, file: !39, line: 454, column: 6)
!524 = !DILocation(line: 454, column: 6, scope: !283)
!525 = !DILocation(line: 455, column: 3, scope: !526)
!526 = distinct !DILexicalBlock(scope: !523, file: !39, line: 454, column: 16)
!527 = !DILocation(line: 456, column: 2, scope: !526)
!528 = !DILocation(line: 457, column: 1, scope: !283)
!529 = distinct !DISubprogram(name: "br_dec64le", scope: !26, file: !26, line: 634, type: !530, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!530 = !DISubroutineType(types: !531)
!531 = !{!41, !11}
!532 = !DILocalVariable(name: "src", arg: 1, scope: !529, file: !26, line: 634, type: !11)
!533 = !DILocation(line: 0, scope: !529)
!534 = !DILocation(line: 637, column: 10, scope: !529)
!535 = !DILocation(line: 637, column: 38, scope: !529)
!536 = !DILocation(line: 637, column: 2, scope: !529)
!537 = distinct !DISubprogram(name: "br_enc64le", scope: !26, file: !26, line: 606, type: !538, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !13, !41}
!540 = !DILocalVariable(name: "dst", arg: 1, scope: !537, file: !26, line: 606, type: !13)
!541 = !DILocation(line: 0, scope: !537)
!542 = !DILocalVariable(name: "x", arg: 2, scope: !537, file: !26, line: 606, type: !41)
!543 = !DILocation(line: 609, column: 3, scope: !537)
!544 = !DILocation(line: 609, column: 25, scope: !537)
!545 = !DILocation(line: 609, column: 27, scope: !537)
!546 = !DILocation(line: 617, column: 1, scope: !537)
!547 = distinct !DISubprogram(name: "poly1305_inner", scope: !39, file: !39, line: 299, type: !548, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !550, !550, !11, !14}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!551 = !DILocalVariable(name: "acc", arg: 1, scope: !547, file: !39, line: 299, type: !550)
!552 = !DILocation(line: 0, scope: !547)
!553 = !DILocalVariable(name: "r", arg: 2, scope: !547, file: !39, line: 299, type: !550)
!554 = !DILocalVariable(name: "data", arg: 3, scope: !547, file: !39, line: 299, type: !11)
!555 = !DILocalVariable(name: "len", arg: 4, scope: !547, file: !39, line: 299, type: !14)
!556 = !DILocation(line: 301, column: 10, scope: !557)
!557 = distinct !DILexicalBlock(scope: !547, file: !39, line: 301, column: 6)
!558 = !DILocation(line: 301, column: 6, scope: !547)
!559 = !DILocation(line: 304, column: 14, scope: !560)
!560 = distinct !DILexicalBlock(scope: !557, file: !39, line: 301, column: 17)
!561 = !DILocalVariable(name: "len2", scope: !560, file: !39, line: 302, type: !14)
!562 = !DILocation(line: 0, scope: !560)
!563 = !DILocation(line: 305, column: 3, scope: !560)
!564 = !DILocation(line: 306, column: 38, scope: !560)
!565 = !DILocation(line: 307, column: 7, scope: !560)
!566 = !DILocation(line: 308, column: 2, scope: !560)
!567 = !DILocation(line: 309, column: 10, scope: !568)
!568 = distinct !DILexicalBlock(scope: !547, file: !39, line: 309, column: 6)
!569 = !DILocation(line: 309, column: 6, scope: !547)
!570 = !DILocation(line: 310, column: 3, scope: !571)
!571 = distinct !DILexicalBlock(scope: !568, file: !39, line: 309, column: 15)
!572 = !DILocation(line: 311, column: 2, scope: !571)
!573 = !DILocation(line: 312, column: 1, scope: !547)
!574 = distinct !DISubprogram(name: "poly1305_inner_small", scope: !39, file: !39, line: 221, type: !548, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!575 = !DILocalVariable(name: "acc", arg: 1, scope: !574, file: !39, line: 221, type: !550)
!576 = !DILocation(line: 0, scope: !574)
!577 = !DILocalVariable(name: "r", arg: 2, scope: !574, file: !39, line: 221, type: !550)
!578 = !DILocalVariable(name: "data", arg: 3, scope: !574, file: !39, line: 221, type: !11)
!579 = !DILocalVariable(name: "len", arg: 4, scope: !574, file: !39, line: 221, type: !14)
!580 = !DILocation(line: 227, column: 7, scope: !574)
!581 = !DILocalVariable(name: "r0", scope: !574, file: !39, line: 225, type: !41)
!582 = !DILocation(line: 228, column: 7, scope: !574)
!583 = !DILocalVariable(name: "r1", scope: !574, file: !39, line: 225, type: !41)
!584 = !DILocation(line: 229, column: 7, scope: !574)
!585 = !DILocalVariable(name: "r2", scope: !574, file: !39, line: 225, type: !41)
!586 = !DILocation(line: 230, column: 7, scope: !574)
!587 = !DILocalVariable(name: "t1", scope: !574, file: !39, line: 225, type: !41)
!588 = !DILocation(line: 231, column: 7, scope: !574)
!589 = !DILocalVariable(name: "t2", scope: !574, file: !39, line: 225, type: !41)
!590 = !DILocation(line: 232, column: 7, scope: !574)
!591 = !DILocalVariable(name: "u2", scope: !574, file: !39, line: 225, type: !41)
!592 = !DILocation(line: 233, column: 7, scope: !574)
!593 = !DILocalVariable(name: "a0", scope: !574, file: !39, line: 224, type: !41)
!594 = !DILocation(line: 234, column: 7, scope: !574)
!595 = !DILocalVariable(name: "a1", scope: !574, file: !39, line: 224, type: !41)
!596 = !DILocation(line: 235, column: 7, scope: !574)
!597 = !DILocalVariable(name: "a2", scope: !574, file: !39, line: 224, type: !41)
!598 = !DILocalVariable(name: "buf", scope: !574, file: !39, line: 223, type: !20)
!599 = !DILocation(line: 238, column: 2, scope: !574)
!600 = !DILocation(line: 238, column: 13, scope: !574)
!601 = !DILocalVariable(name: "tmp", scope: !602, file: !39, line: 241, type: !305)
!602 = distinct !DILexicalBlock(scope: !574, file: !39, line: 238, column: 18)
!603 = !DILocation(line: 241, column: 17, scope: !602)
!604 = !DILocation(line: 243, column: 11, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !39, line: 243, column: 7)
!606 = !DILocation(line: 243, column: 7, scope: !602)
!607 = !DILocation(line: 244, column: 4, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !39, line: 243, column: 17)
!609 = !DILocation(line: 245, column: 11, scope: !608)
!610 = !DILocation(line: 245, column: 15, scope: !608)
!611 = !DILocation(line: 245, column: 38, scope: !608)
!612 = !DILocation(line: 245, column: 4, scope: !608)
!613 = !DILocation(line: 246, column: 10, scope: !608)
!614 = !DILocation(line: 248, column: 3, scope: !608)
!615 = !DILocation(line: 249, column: 23, scope: !602)
!616 = !DILocation(line: 249, column: 8, scope: !602)
!617 = !DILocalVariable(name: "v0", scope: !602, file: !39, line: 239, type: !41)
!618 = !DILocation(line: 0, scope: !602)
!619 = !DILocation(line: 250, column: 23, scope: !602)
!620 = !DILocation(line: 250, column: 8, scope: !602)
!621 = !DILocalVariable(name: "v1", scope: !602, file: !39, line: 239, type: !41)
!622 = !DILocation(line: 252, column: 11, scope: !602)
!623 = !DILocalVariable(name: "v2", scope: !602, file: !39, line: 239, type: !41)
!624 = !DILocation(line: 253, column: 13, scope: !602)
!625 = !DILocation(line: 253, column: 26, scope: !602)
!626 = !DILocation(line: 253, column: 20, scope: !602)
!627 = !DILocation(line: 253, column: 34, scope: !602)
!628 = !DILocation(line: 254, column: 6, scope: !602)
!629 = !DILocation(line: 256, column: 6, scope: !602)
!630 = !DILocation(line: 257, column: 6, scope: !602)
!631 = !DILocation(line: 258, column: 12, scope: !602)
!632 = !DILocation(line: 258, column: 6, scope: !602)
!633 = !DILocation(line: 273, column: 3, scope: !602)
!634 = !DILocation(line: 273, column: 3, scope: !635)
!635 = distinct !DILexicalBlock(scope: !602, file: !39, line: 273, column: 3)
!636 = !DILocation(line: 273, column: 3, scope: !637)
!637 = distinct !DILexicalBlock(scope: !635, file: !39, line: 273, column: 3)
!638 = !DILocalVariable(name: "mul128tmp", scope: !637, file: !39, line: 273, type: !55)
!639 = !DILocation(line: 0, scope: !637)
!640 = !DILocalVariable(name: "mxhi", scope: !635, file: !39, line: 273, type: !41)
!641 = !DILocation(line: 0, scope: !635)
!642 = !DILocalVariable(name: "mxlo", scope: !635, file: !39, line: 273, type: !41)
!643 = !DILocalVariable(name: "d0", scope: !602, file: !39, line: 240, type: !41)
!644 = !DILocalVariable(name: "c0", scope: !602, file: !39, line: 240, type: !41)
!645 = !DILocation(line: 273, column: 3, scope: !646)
!646 = distinct !DILexicalBlock(scope: !635, file: !39, line: 273, column: 3)
!647 = !DILocalVariable(name: "mul128tmp", scope: !646, file: !39, line: 273, type: !55)
!648 = !DILocation(line: 0, scope: !646)
!649 = !DILocation(line: 273, column: 3, scope: !650)
!650 = distinct !DILexicalBlock(scope: !635, file: !39, line: 273, column: 3)
!651 = !DILocalVariable(name: "mul128tmp", scope: !650, file: !39, line: 273, type: !55)
!652 = !DILocation(line: 0, scope: !650)
!653 = !DILocation(line: 274, column: 3, scope: !602)
!654 = !DILocation(line: 274, column: 3, scope: !655)
!655 = distinct !DILexicalBlock(scope: !602, file: !39, line: 274, column: 3)
!656 = !DILocation(line: 274, column: 3, scope: !657)
!657 = distinct !DILexicalBlock(scope: !655, file: !39, line: 274, column: 3)
!658 = !DILocalVariable(name: "mul128tmp", scope: !657, file: !39, line: 274, type: !55)
!659 = !DILocation(line: 0, scope: !657)
!660 = !DILocalVariable(name: "mxhi", scope: !655, file: !39, line: 274, type: !41)
!661 = !DILocation(line: 0, scope: !655)
!662 = !DILocalVariable(name: "mxlo", scope: !655, file: !39, line: 274, type: !41)
!663 = !DILocalVariable(name: "d1", scope: !602, file: !39, line: 240, type: !41)
!664 = !DILocalVariable(name: "c1", scope: !602, file: !39, line: 240, type: !41)
!665 = !DILocation(line: 274, column: 3, scope: !666)
!666 = distinct !DILexicalBlock(scope: !655, file: !39, line: 274, column: 3)
!667 = !DILocalVariable(name: "mul128tmp", scope: !666, file: !39, line: 274, type: !55)
!668 = !DILocation(line: 0, scope: !666)
!669 = !DILocation(line: 274, column: 3, scope: !670)
!670 = distinct !DILexicalBlock(scope: !655, file: !39, line: 274, column: 3)
!671 = !DILocalVariable(name: "mul128tmp", scope: !670, file: !39, line: 274, type: !55)
!672 = !DILocation(line: 0, scope: !670)
!673 = !DILocation(line: 275, column: 3, scope: !602)
!674 = !DILocation(line: 275, column: 3, scope: !675)
!675 = distinct !DILexicalBlock(scope: !602, file: !39, line: 275, column: 3)
!676 = !DILocation(line: 275, column: 3, scope: !677)
!677 = distinct !DILexicalBlock(scope: !675, file: !39, line: 275, column: 3)
!678 = !DILocalVariable(name: "mul128tmp", scope: !677, file: !39, line: 275, type: !55)
!679 = !DILocation(line: 0, scope: !677)
!680 = !DILocalVariable(name: "mxhi", scope: !675, file: !39, line: 275, type: !41)
!681 = !DILocation(line: 0, scope: !675)
!682 = !DILocalVariable(name: "mxlo", scope: !675, file: !39, line: 275, type: !41)
!683 = !DILocalVariable(name: "d2", scope: !602, file: !39, line: 240, type: !41)
!684 = !DILocalVariable(name: "c2", scope: !602, file: !39, line: 240, type: !41)
!685 = !DILocation(line: 275, column: 3, scope: !686)
!686 = distinct !DILexicalBlock(scope: !675, file: !39, line: 275, column: 3)
!687 = !DILocalVariable(name: "mul128tmp", scope: !686, file: !39, line: 275, type: !55)
!688 = !DILocation(line: 0, scope: !686)
!689 = !DILocation(line: 275, column: 3, scope: !690)
!690 = distinct !DILexicalBlock(scope: !675, file: !39, line: 275, column: 3)
!691 = !DILocalVariable(name: "mul128tmp", scope: !690, file: !39, line: 275, type: !55)
!692 = !DILocation(line: 0, scope: !690)
!693 = !DILocation(line: 279, column: 16, scope: !602)
!694 = !DILocation(line: 279, column: 11, scope: !602)
!695 = !DILocation(line: 280, column: 11, scope: !602)
!696 = !DILocation(line: 281, column: 11, scope: !602)
!697 = !DILocation(line: 283, column: 12, scope: !602)
!698 = !DILocation(line: 283, column: 6, scope: !602)
!699 = !DILocation(line: 284, column: 6, scope: !602)
!700 = !DILocation(line: 285, column: 12, scope: !602)
!701 = !DILocation(line: 285, column: 6, scope: !602)
!702 = !DILocation(line: 286, column: 6, scope: !602)
!703 = !DILocation(line: 287, column: 18, scope: !602)
!704 = !DILocation(line: 287, column: 12, scope: !602)
!705 = !DILocation(line: 287, column: 6, scope: !602)
!706 = !DILocation(line: 288, column: 6, scope: !602)
!707 = !DILocation(line: 290, column: 7, scope: !602)
!708 = !DILocation(line: 291, column: 7, scope: !602)
!709 = distinct !{!709, !599, !710, !103}
!710 = !DILocation(line: 292, column: 2, scope: !574)
!711 = !DILocation(line: 293, column: 2, scope: !574)
!712 = !DILocation(line: 293, column: 9, scope: !574)
!713 = !DILocation(line: 294, column: 2, scope: !574)
!714 = !DILocation(line: 294, column: 9, scope: !574)
!715 = !DILocation(line: 295, column: 2, scope: !574)
!716 = !DILocation(line: 295, column: 9, scope: !574)
!717 = !DILocation(line: 296, column: 1, scope: !574)
!718 = distinct !DISubprogram(name: "GT", scope: !26, file: !26, line: 803, type: !719, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!719 = !DISubroutineType(types: !720)
!720 = !{!6, !6, !6}
!721 = !DILocalVariable(name: "x", arg: 1, scope: !718, file: !26, line: 803, type: !6)
!722 = !DILocation(line: 0, scope: !718)
!723 = !DILocalVariable(name: "y", arg: 2, scope: !718, file: !26, line: 803, type: !6)
!724 = !DILocation(line: 819, column: 8, scope: !718)
!725 = !DILocalVariable(name: "z", scope: !718, file: !26, line: 817, type: !6)
!726 = !DILocation(line: 820, column: 18, scope: !718)
!727 = !DILocation(line: 820, column: 28, scope: !718)
!728 = !DILocation(line: 820, column: 23, scope: !718)
!729 = !DILocation(line: 820, column: 12, scope: !718)
!730 = !DILocation(line: 820, column: 35, scope: !718)
!731 = !DILocation(line: 820, column: 2, scope: !718)
!732 = distinct !DISubprogram(name: "EQ", scope: !26, file: !26, line: 779, type: !719, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!733 = !DILocalVariable(name: "x", arg: 1, scope: !732, file: !26, line: 779, type: !6)
!734 = !DILocation(line: 0, scope: !732)
!735 = !DILocalVariable(name: "y", arg: 2, scope: !732, file: !26, line: 779, type: !6)
!736 = !DILocation(line: 783, column: 8, scope: !732)
!737 = !DILocalVariable(name: "q", scope: !732, file: !26, line: 781, type: !6)
!738 = !DILocation(line: 784, column: 18, scope: !732)
!739 = !DILocation(line: 784, column: 16, scope: !732)
!740 = !DILocation(line: 784, column: 22, scope: !732)
!741 = !DILocation(line: 784, column: 9, scope: !732)
!742 = !DILocation(line: 784, column: 2, scope: !732)
!743 = distinct !DISubprogram(name: "MUX", scope: !26, file: !26, line: 770, type: !744, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!744 = !DISubroutineType(types: !745)
!745 = !{!6, !6, !6, !6}
!746 = !DILocalVariable(name: "ctl", arg: 1, scope: !743, file: !26, line: 770, type: !6)
!747 = !DILocation(line: 0, scope: !743)
!748 = !DILocalVariable(name: "x", arg: 2, scope: !743, file: !26, line: 770, type: !6)
!749 = !DILocalVariable(name: "y", arg: 3, scope: !743, file: !26, line: 770, type: !6)
!750 = !DILocation(line: 772, column: 14, scope: !743)
!751 = !DILocation(line: 772, column: 24, scope: !743)
!752 = !DILocation(line: 772, column: 19, scope: !743)
!753 = !DILocation(line: 772, column: 11, scope: !743)
!754 = !DILocation(line: 772, column: 2, scope: !743)
!755 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !266, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!756 = !DILocalVariable(name: "src", arg: 1, scope: !755, file: !26, line: 574, type: !11)
!757 = !DILocation(line: 0, scope: !755)
!758 = !DILocation(line: 577, column: 10, scope: !755)
!759 = !DILocation(line: 577, column: 38, scope: !755)
!760 = !DILocation(line: 577, column: 2, scope: !755)
!761 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !274, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!762 = !DILocalVariable(name: "dst", arg: 1, scope: !761, file: !26, line: 542, type: !13)
!763 = !DILocation(line: 0, scope: !761)
!764 = !DILocalVariable(name: "x", arg: 2, scope: !761, file: !26, line: 542, type: !6)
!765 = !DILocation(line: 545, column: 3, scope: !761)
!766 = !DILocation(line: 545, column: 25, scope: !761)
!767 = !DILocation(line: 545, column: 27, scope: !761)
!768 = !DILocation(line: 555, column: 1, scope: !761)
!769 = distinct !DISubprogram(name: "NOT", scope: !26, file: !26, line: 761, type: !770, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!770 = !DISubroutineType(types: !771)
!771 = !{!6, !6}
!772 = !DILocalVariable(name: "ctl", arg: 1, scope: !769, file: !26, line: 761, type: !6)
!773 = !DILocation(line: 0, scope: !769)
!774 = !DILocation(line: 763, column: 13, scope: !769)
!775 = !DILocation(line: 763, column: 2, scope: !769)
!776 = distinct !DISubprogram(name: "poly1305_inner_big", scope: !39, file: !39, line: 108, type: !548, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!777 = !DILocalVariable(name: "acc", arg: 1, scope: !776, file: !39, line: 108, type: !550)
!778 = !DILocation(line: 0, scope: !776)
!779 = !DILocalVariable(name: "r", arg: 2, scope: !776, file: !39, line: 108, type: !550)
!780 = !DILocalVariable(name: "data", arg: 3, scope: !776, file: !39, line: 108, type: !11)
!781 = !DILocalVariable(name: "len", arg: 4, scope: !776, file: !39, line: 108, type: !14)
!782 = !DILocation(line: 128, column: 7, scope: !776)
!783 = !DILocalVariable(name: "r0", scope: !776, file: !39, line: 126, type: !41)
!784 = !DILocation(line: 129, column: 7, scope: !776)
!785 = !DILocalVariable(name: "r1", scope: !776, file: !39, line: 126, type: !41)
!786 = !DILocation(line: 130, column: 7, scope: !776)
!787 = !DILocalVariable(name: "r2", scope: !776, file: !39, line: 126, type: !41)
!788 = !DILocation(line: 131, column: 7, scope: !776)
!789 = !DILocalVariable(name: "t1", scope: !776, file: !39, line: 126, type: !41)
!790 = !DILocation(line: 132, column: 7, scope: !776)
!791 = !DILocalVariable(name: "t2", scope: !776, file: !39, line: 126, type: !41)
!792 = !DILocation(line: 133, column: 7, scope: !776)
!793 = !DILocalVariable(name: "u2", scope: !776, file: !39, line: 126, type: !41)
!794 = !DILocation(line: 134, column: 7, scope: !776)
!795 = !DILocalVariable(name: "a0", scope: !776, file: !39, line: 125, type: !41)
!796 = !DILocation(line: 135, column: 7, scope: !776)
!797 = !DILocalVariable(name: "a1", scope: !776, file: !39, line: 125, type: !41)
!798 = !DILocation(line: 136, column: 7, scope: !776)
!799 = !DILocalVariable(name: "a2", scope: !776, file: !39, line: 125, type: !41)
!800 = !DILocalVariable(name: "buf", scope: !776, file: !39, line: 124, type: !20)
!801 = !DILocation(line: 139, column: 2, scope: !776)
!802 = !DILocation(line: 139, column: 13, scope: !776)
!803 = !DILocation(line: 143, column: 23, scope: !804)
!804 = distinct !DILexicalBlock(scope: !776, file: !39, line: 139, column: 18)
!805 = !DILocation(line: 143, column: 8, scope: !804)
!806 = !DILocalVariable(name: "v0", scope: !804, file: !39, line: 140, type: !41)
!807 = !DILocation(line: 0, scope: !804)
!808 = !DILocation(line: 144, column: 23, scope: !804)
!809 = !DILocation(line: 144, column: 8, scope: !804)
!810 = !DILocalVariable(name: "v1", scope: !804, file: !39, line: 140, type: !41)
!811 = !DILocation(line: 145, column: 11, scope: !804)
!812 = !DILocalVariable(name: "v2", scope: !804, file: !39, line: 140, type: !41)
!813 = !DILocation(line: 146, column: 13, scope: !804)
!814 = !DILocation(line: 146, column: 26, scope: !804)
!815 = !DILocation(line: 146, column: 20, scope: !804)
!816 = !DILocation(line: 146, column: 34, scope: !804)
!817 = !DILocation(line: 147, column: 6, scope: !804)
!818 = !DILocation(line: 148, column: 6, scope: !804)
!819 = !DILocation(line: 149, column: 6, scope: !804)
!820 = !DILocation(line: 150, column: 12, scope: !804)
!821 = !DILocation(line: 150, column: 6, scope: !804)
!822 = !DILocation(line: 151, column: 3, scope: !804)
!823 = !DILocation(line: 151, column: 3, scope: !824)
!824 = distinct !DILexicalBlock(scope: !804, file: !39, line: 151, column: 3)
!825 = !DILocation(line: 151, column: 3, scope: !826)
!826 = distinct !DILexicalBlock(scope: !824, file: !39, line: 151, column: 3)
!827 = !DILocalVariable(name: "mul128tmp", scope: !826, file: !39, line: 151, type: !55)
!828 = !DILocation(line: 0, scope: !826)
!829 = !DILocalVariable(name: "mxhi", scope: !824, file: !39, line: 151, type: !41)
!830 = !DILocation(line: 0, scope: !824)
!831 = !DILocalVariable(name: "mxlo", scope: !824, file: !39, line: 151, type: !41)
!832 = !DILocalVariable(name: "d0", scope: !804, file: !39, line: 141, type: !41)
!833 = !DILocalVariable(name: "c0", scope: !804, file: !39, line: 141, type: !41)
!834 = !DILocation(line: 151, column: 3, scope: !835)
!835 = distinct !DILexicalBlock(scope: !824, file: !39, line: 151, column: 3)
!836 = !DILocalVariable(name: "mul128tmp", scope: !835, file: !39, line: 151, type: !55)
!837 = !DILocation(line: 0, scope: !835)
!838 = !DILocation(line: 151, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !824, file: !39, line: 151, column: 3)
!840 = !DILocalVariable(name: "mul128tmp", scope: !839, file: !39, line: 151, type: !55)
!841 = !DILocation(line: 0, scope: !839)
!842 = !DILocation(line: 152, column: 3, scope: !804)
!843 = !DILocation(line: 152, column: 3, scope: !844)
!844 = distinct !DILexicalBlock(scope: !804, file: !39, line: 152, column: 3)
!845 = !DILocation(line: 152, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !844, file: !39, line: 152, column: 3)
!847 = !DILocalVariable(name: "mul128tmp", scope: !846, file: !39, line: 152, type: !55)
!848 = !DILocation(line: 0, scope: !846)
!849 = !DILocalVariable(name: "mxhi", scope: !844, file: !39, line: 152, type: !41)
!850 = !DILocation(line: 0, scope: !844)
!851 = !DILocalVariable(name: "mxlo", scope: !844, file: !39, line: 152, type: !41)
!852 = !DILocalVariable(name: "d1", scope: !804, file: !39, line: 141, type: !41)
!853 = !DILocalVariable(name: "c1", scope: !804, file: !39, line: 141, type: !41)
!854 = !DILocation(line: 152, column: 3, scope: !855)
!855 = distinct !DILexicalBlock(scope: !844, file: !39, line: 152, column: 3)
!856 = !DILocalVariable(name: "mul128tmp", scope: !855, file: !39, line: 152, type: !55)
!857 = !DILocation(line: 0, scope: !855)
!858 = !DILocation(line: 152, column: 3, scope: !859)
!859 = distinct !DILexicalBlock(scope: !844, file: !39, line: 152, column: 3)
!860 = !DILocalVariable(name: "mul128tmp", scope: !859, file: !39, line: 152, type: !55)
!861 = !DILocation(line: 0, scope: !859)
!862 = !DILocation(line: 153, column: 3, scope: !804)
!863 = !DILocation(line: 153, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !804, file: !39, line: 153, column: 3)
!865 = !DILocation(line: 153, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !864, file: !39, line: 153, column: 3)
!867 = !DILocalVariable(name: "mul128tmp", scope: !866, file: !39, line: 153, type: !55)
!868 = !DILocation(line: 0, scope: !866)
!869 = !DILocalVariable(name: "mxhi", scope: !864, file: !39, line: 153, type: !41)
!870 = !DILocation(line: 0, scope: !864)
!871 = !DILocalVariable(name: "mxlo", scope: !864, file: !39, line: 153, type: !41)
!872 = !DILocalVariable(name: "d2", scope: !804, file: !39, line: 141, type: !41)
!873 = !DILocalVariable(name: "c2", scope: !804, file: !39, line: 141, type: !41)
!874 = !DILocation(line: 153, column: 3, scope: !875)
!875 = distinct !DILexicalBlock(scope: !864, file: !39, line: 153, column: 3)
!876 = !DILocalVariable(name: "mul128tmp", scope: !875, file: !39, line: 153, type: !55)
!877 = !DILocation(line: 0, scope: !875)
!878 = !DILocation(line: 153, column: 3, scope: !879)
!879 = distinct !DILexicalBlock(scope: !864, file: !39, line: 153, column: 3)
!880 = !DILocalVariable(name: "mul128tmp", scope: !879, file: !39, line: 153, type: !55)
!881 = !DILocation(line: 0, scope: !879)
!882 = !DILocation(line: 154, column: 16, scope: !804)
!883 = !DILocation(line: 154, column: 11, scope: !804)
!884 = !DILocation(line: 155, column: 11, scope: !804)
!885 = !DILocation(line: 156, column: 11, scope: !804)
!886 = !DILocation(line: 158, column: 23, scope: !804)
!887 = !DILocation(line: 158, column: 8, scope: !804)
!888 = !DILocation(line: 159, column: 23, scope: !804)
!889 = !DILocation(line: 159, column: 8, scope: !804)
!890 = !DILocation(line: 160, column: 11, scope: !804)
!891 = !DILocation(line: 161, column: 13, scope: !804)
!892 = !DILocation(line: 161, column: 26, scope: !804)
!893 = !DILocation(line: 161, column: 20, scope: !804)
!894 = !DILocation(line: 161, column: 34, scope: !804)
!895 = !DILocation(line: 162, column: 6, scope: !804)
!896 = !DILocation(line: 163, column: 6, scope: !804)
!897 = !DILocation(line: 164, column: 6, scope: !804)
!898 = !DILocation(line: 165, column: 12, scope: !804)
!899 = !DILocation(line: 165, column: 6, scope: !804)
!900 = !DILocation(line: 166, column: 3, scope: !804)
!901 = !DILocation(line: 166, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !804, file: !39, line: 166, column: 3)
!903 = !DILocation(line: 166, column: 3, scope: !904)
!904 = distinct !DILexicalBlock(scope: !902, file: !39, line: 166, column: 3)
!905 = !DILocalVariable(name: "mul128tmp", scope: !904, file: !39, line: 166, type: !55)
!906 = !DILocation(line: 0, scope: !904)
!907 = !DILocalVariable(name: "mxhi", scope: !902, file: !39, line: 166, type: !41)
!908 = !DILocation(line: 0, scope: !902)
!909 = !DILocalVariable(name: "mxlo", scope: !902, file: !39, line: 166, type: !41)
!910 = !DILocation(line: 166, column: 3, scope: !911)
!911 = distinct !DILexicalBlock(scope: !902, file: !39, line: 166, column: 3)
!912 = !DILocalVariable(name: "mul128tmp", scope: !911, file: !39, line: 166, type: !55)
!913 = !DILocation(line: 0, scope: !911)
!914 = !DILocation(line: 166, column: 3, scope: !915)
!915 = distinct !DILexicalBlock(scope: !902, file: !39, line: 166, column: 3)
!916 = !DILocalVariable(name: "mul128tmp", scope: !915, file: !39, line: 166, type: !55)
!917 = !DILocation(line: 0, scope: !915)
!918 = !DILocation(line: 167, column: 3, scope: !804)
!919 = !DILocation(line: 167, column: 3, scope: !920)
!920 = distinct !DILexicalBlock(scope: !804, file: !39, line: 167, column: 3)
!921 = !DILocation(line: 167, column: 3, scope: !922)
!922 = distinct !DILexicalBlock(scope: !920, file: !39, line: 167, column: 3)
!923 = !DILocalVariable(name: "mul128tmp", scope: !922, file: !39, line: 167, type: !55)
!924 = !DILocation(line: 0, scope: !922)
!925 = !DILocalVariable(name: "mxhi", scope: !920, file: !39, line: 167, type: !41)
!926 = !DILocation(line: 0, scope: !920)
!927 = !DILocalVariable(name: "mxlo", scope: !920, file: !39, line: 167, type: !41)
!928 = !DILocation(line: 167, column: 3, scope: !929)
!929 = distinct !DILexicalBlock(scope: !920, file: !39, line: 167, column: 3)
!930 = !DILocalVariable(name: "mul128tmp", scope: !929, file: !39, line: 167, type: !55)
!931 = !DILocation(line: 0, scope: !929)
!932 = !DILocation(line: 167, column: 3, scope: !933)
!933 = distinct !DILexicalBlock(scope: !920, file: !39, line: 167, column: 3)
!934 = !DILocalVariable(name: "mul128tmp", scope: !933, file: !39, line: 167, type: !55)
!935 = !DILocation(line: 0, scope: !933)
!936 = !DILocation(line: 168, column: 3, scope: !804)
!937 = !DILocation(line: 168, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !804, file: !39, line: 168, column: 3)
!939 = !DILocation(line: 168, column: 3, scope: !940)
!940 = distinct !DILexicalBlock(scope: !938, file: !39, line: 168, column: 3)
!941 = !DILocalVariable(name: "mul128tmp", scope: !940, file: !39, line: 168, type: !55)
!942 = !DILocation(line: 0, scope: !940)
!943 = !DILocalVariable(name: "mxhi", scope: !938, file: !39, line: 168, type: !41)
!944 = !DILocation(line: 0, scope: !938)
!945 = !DILocalVariable(name: "mxlo", scope: !938, file: !39, line: 168, type: !41)
!946 = !DILocation(line: 168, column: 3, scope: !947)
!947 = distinct !DILexicalBlock(scope: !938, file: !39, line: 168, column: 3)
!948 = !DILocalVariable(name: "mul128tmp", scope: !947, file: !39, line: 168, type: !55)
!949 = !DILocation(line: 0, scope: !947)
!950 = !DILocation(line: 168, column: 3, scope: !951)
!951 = distinct !DILexicalBlock(scope: !938, file: !39, line: 168, column: 3)
!952 = !DILocalVariable(name: "mul128tmp", scope: !951, file: !39, line: 168, type: !55)
!953 = !DILocation(line: 0, scope: !951)
!954 = !DILocation(line: 169, column: 16, scope: !804)
!955 = !DILocation(line: 169, column: 11, scope: !804)
!956 = !DILocation(line: 170, column: 11, scope: !804)
!957 = !DILocation(line: 171, column: 11, scope: !804)
!958 = !DILocation(line: 173, column: 23, scope: !804)
!959 = !DILocation(line: 173, column: 8, scope: !804)
!960 = !DILocation(line: 174, column: 23, scope: !804)
!961 = !DILocation(line: 174, column: 8, scope: !804)
!962 = !DILocation(line: 175, column: 11, scope: !804)
!963 = !DILocation(line: 176, column: 13, scope: !804)
!964 = !DILocation(line: 176, column: 26, scope: !804)
!965 = !DILocation(line: 176, column: 20, scope: !804)
!966 = !DILocation(line: 176, column: 34, scope: !804)
!967 = !DILocation(line: 177, column: 6, scope: !804)
!968 = !DILocation(line: 178, column: 6, scope: !804)
!969 = !DILocation(line: 179, column: 6, scope: !804)
!970 = !DILocation(line: 180, column: 12, scope: !804)
!971 = !DILocation(line: 180, column: 6, scope: !804)
!972 = !DILocation(line: 181, column: 3, scope: !804)
!973 = !DILocation(line: 181, column: 3, scope: !974)
!974 = distinct !DILexicalBlock(scope: !804, file: !39, line: 181, column: 3)
!975 = !DILocation(line: 181, column: 3, scope: !976)
!976 = distinct !DILexicalBlock(scope: !974, file: !39, line: 181, column: 3)
!977 = !DILocalVariable(name: "mul128tmp", scope: !976, file: !39, line: 181, type: !55)
!978 = !DILocation(line: 0, scope: !976)
!979 = !DILocalVariable(name: "mxhi", scope: !974, file: !39, line: 181, type: !41)
!980 = !DILocation(line: 0, scope: !974)
!981 = !DILocalVariable(name: "mxlo", scope: !974, file: !39, line: 181, type: !41)
!982 = !DILocation(line: 181, column: 3, scope: !983)
!983 = distinct !DILexicalBlock(scope: !974, file: !39, line: 181, column: 3)
!984 = !DILocalVariable(name: "mul128tmp", scope: !983, file: !39, line: 181, type: !55)
!985 = !DILocation(line: 0, scope: !983)
!986 = !DILocation(line: 181, column: 3, scope: !987)
!987 = distinct !DILexicalBlock(scope: !974, file: !39, line: 181, column: 3)
!988 = !DILocalVariable(name: "mul128tmp", scope: !987, file: !39, line: 181, type: !55)
!989 = !DILocation(line: 0, scope: !987)
!990 = !DILocation(line: 182, column: 3, scope: !804)
!991 = !DILocation(line: 182, column: 3, scope: !992)
!992 = distinct !DILexicalBlock(scope: !804, file: !39, line: 182, column: 3)
!993 = !DILocation(line: 182, column: 3, scope: !994)
!994 = distinct !DILexicalBlock(scope: !992, file: !39, line: 182, column: 3)
!995 = !DILocalVariable(name: "mul128tmp", scope: !994, file: !39, line: 182, type: !55)
!996 = !DILocation(line: 0, scope: !994)
!997 = !DILocalVariable(name: "mxhi", scope: !992, file: !39, line: 182, type: !41)
!998 = !DILocation(line: 0, scope: !992)
!999 = !DILocalVariable(name: "mxlo", scope: !992, file: !39, line: 182, type: !41)
!1000 = !DILocation(line: 182, column: 3, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !992, file: !39, line: 182, column: 3)
!1002 = !DILocalVariable(name: "mul128tmp", scope: !1001, file: !39, line: 182, type: !55)
!1003 = !DILocation(line: 0, scope: !1001)
!1004 = !DILocation(line: 182, column: 3, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !992, file: !39, line: 182, column: 3)
!1006 = !DILocalVariable(name: "mul128tmp", scope: !1005, file: !39, line: 182, type: !55)
!1007 = !DILocation(line: 0, scope: !1005)
!1008 = !DILocation(line: 183, column: 3, scope: !804)
!1009 = !DILocation(line: 183, column: 3, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !804, file: !39, line: 183, column: 3)
!1011 = !DILocation(line: 183, column: 3, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1010, file: !39, line: 183, column: 3)
!1013 = !DILocalVariable(name: "mul128tmp", scope: !1012, file: !39, line: 183, type: !55)
!1014 = !DILocation(line: 0, scope: !1012)
!1015 = !DILocalVariable(name: "mxhi", scope: !1010, file: !39, line: 183, type: !41)
!1016 = !DILocation(line: 0, scope: !1010)
!1017 = !DILocalVariable(name: "mxlo", scope: !1010, file: !39, line: 183, type: !41)
!1018 = !DILocation(line: 183, column: 3, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1010, file: !39, line: 183, column: 3)
!1020 = !DILocalVariable(name: "mul128tmp", scope: !1019, file: !39, line: 183, type: !55)
!1021 = !DILocation(line: 0, scope: !1019)
!1022 = !DILocation(line: 183, column: 3, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1010, file: !39, line: 183, column: 3)
!1024 = !DILocalVariable(name: "mul128tmp", scope: !1023, file: !39, line: 183, type: !55)
!1025 = !DILocation(line: 0, scope: !1023)
!1026 = !DILocation(line: 184, column: 16, scope: !804)
!1027 = !DILocation(line: 184, column: 11, scope: !804)
!1028 = !DILocation(line: 185, column: 11, scope: !804)
!1029 = !DILocation(line: 186, column: 11, scope: !804)
!1030 = !DILocation(line: 188, column: 23, scope: !804)
!1031 = !DILocation(line: 188, column: 8, scope: !804)
!1032 = !DILocation(line: 189, column: 23, scope: !804)
!1033 = !DILocation(line: 189, column: 8, scope: !804)
!1034 = !DILocation(line: 190, column: 11, scope: !804)
!1035 = !DILocation(line: 191, column: 13, scope: !804)
!1036 = !DILocation(line: 191, column: 26, scope: !804)
!1037 = !DILocation(line: 191, column: 20, scope: !804)
!1038 = !DILocation(line: 191, column: 34, scope: !804)
!1039 = !DILocation(line: 192, column: 6, scope: !804)
!1040 = !DILocation(line: 193, column: 6, scope: !804)
!1041 = !DILocation(line: 194, column: 6, scope: !804)
!1042 = !DILocation(line: 195, column: 12, scope: !804)
!1043 = !DILocation(line: 195, column: 6, scope: !804)
!1044 = !DILocation(line: 196, column: 3, scope: !804)
!1045 = !DILocation(line: 196, column: 3, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !804, file: !39, line: 196, column: 3)
!1047 = !DILocation(line: 196, column: 3, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1046, file: !39, line: 196, column: 3)
!1049 = !DILocalVariable(name: "mul128tmp", scope: !1048, file: !39, line: 196, type: !55)
!1050 = !DILocation(line: 0, scope: !1048)
!1051 = !DILocalVariable(name: "mxhi", scope: !1046, file: !39, line: 196, type: !41)
!1052 = !DILocation(line: 0, scope: !1046)
!1053 = !DILocalVariable(name: "mxlo", scope: !1046, file: !39, line: 196, type: !41)
!1054 = !DILocation(line: 196, column: 3, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1046, file: !39, line: 196, column: 3)
!1056 = !DILocalVariable(name: "mul128tmp", scope: !1055, file: !39, line: 196, type: !55)
!1057 = !DILocation(line: 0, scope: !1055)
!1058 = !DILocation(line: 196, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1046, file: !39, line: 196, column: 3)
!1060 = !DILocalVariable(name: "mul128tmp", scope: !1059, file: !39, line: 196, type: !55)
!1061 = !DILocation(line: 0, scope: !1059)
!1062 = !DILocation(line: 197, column: 3, scope: !804)
!1063 = !DILocation(line: 197, column: 3, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !804, file: !39, line: 197, column: 3)
!1065 = !DILocation(line: 197, column: 3, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !39, line: 197, column: 3)
!1067 = !DILocalVariable(name: "mul128tmp", scope: !1066, file: !39, line: 197, type: !55)
!1068 = !DILocation(line: 0, scope: !1066)
!1069 = !DILocalVariable(name: "mxhi", scope: !1064, file: !39, line: 197, type: !41)
!1070 = !DILocation(line: 0, scope: !1064)
!1071 = !DILocalVariable(name: "mxlo", scope: !1064, file: !39, line: 197, type: !41)
!1072 = !DILocation(line: 197, column: 3, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1064, file: !39, line: 197, column: 3)
!1074 = !DILocalVariable(name: "mul128tmp", scope: !1073, file: !39, line: 197, type: !55)
!1075 = !DILocation(line: 0, scope: !1073)
!1076 = !DILocation(line: 197, column: 3, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1064, file: !39, line: 197, column: 3)
!1078 = !DILocalVariable(name: "mul128tmp", scope: !1077, file: !39, line: 197, type: !55)
!1079 = !DILocation(line: 0, scope: !1077)
!1080 = !DILocation(line: 198, column: 3, scope: !804)
!1081 = !DILocation(line: 198, column: 3, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !804, file: !39, line: 198, column: 3)
!1083 = !DILocation(line: 198, column: 3, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1082, file: !39, line: 198, column: 3)
!1085 = !DILocalVariable(name: "mul128tmp", scope: !1084, file: !39, line: 198, type: !55)
!1086 = !DILocation(line: 0, scope: !1084)
!1087 = !DILocalVariable(name: "mxhi", scope: !1082, file: !39, line: 198, type: !41)
!1088 = !DILocation(line: 0, scope: !1082)
!1089 = !DILocalVariable(name: "mxlo", scope: !1082, file: !39, line: 198, type: !41)
!1090 = !DILocation(line: 198, column: 3, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1082, file: !39, line: 198, column: 3)
!1092 = !DILocalVariable(name: "mul128tmp", scope: !1091, file: !39, line: 198, type: !55)
!1093 = !DILocation(line: 0, scope: !1091)
!1094 = !DILocation(line: 198, column: 3, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1082, file: !39, line: 198, column: 3)
!1096 = !DILocalVariable(name: "mul128tmp", scope: !1095, file: !39, line: 198, type: !55)
!1097 = !DILocation(line: 0, scope: !1095)
!1098 = !DILocation(line: 199, column: 16, scope: !804)
!1099 = !DILocation(line: 199, column: 11, scope: !804)
!1100 = !DILocation(line: 200, column: 11, scope: !804)
!1101 = !DILocation(line: 201, column: 11, scope: !804)
!1102 = !DILocation(line: 203, column: 12, scope: !804)
!1103 = !DILocation(line: 203, column: 6, scope: !804)
!1104 = !DILocation(line: 204, column: 6, scope: !804)
!1105 = !DILocation(line: 205, column: 12, scope: !804)
!1106 = !DILocation(line: 205, column: 6, scope: !804)
!1107 = !DILocation(line: 206, column: 6, scope: !804)
!1108 = !DILocation(line: 207, column: 18, scope: !804)
!1109 = !DILocation(line: 207, column: 12, scope: !804)
!1110 = !DILocation(line: 207, column: 6, scope: !804)
!1111 = !DILocation(line: 208, column: 6, scope: !804)
!1112 = !DILocation(line: 210, column: 7, scope: !804)
!1113 = !DILocation(line: 211, column: 7, scope: !804)
!1114 = distinct !{!1114, !801, !1115, !103}
!1115 = !DILocation(line: 212, column: 2, scope: !776)
!1116 = !DILocation(line: 213, column: 2, scope: !776)
!1117 = !DILocation(line: 213, column: 9, scope: !776)
!1118 = !DILocation(line: 214, column: 2, scope: !776)
!1119 = !DILocation(line: 214, column: 9, scope: !776)
!1120 = !DILocation(line: 215, column: 2, scope: !776)
!1121 = !DILocation(line: 215, column: 9, scope: !776)
!1122 = !DILocation(line: 218, column: 1, scope: !776)
!1123 = distinct !DISubprogram(name: "br_poly1305_ctmulq_get", scope: !39, file: !39, line: 461, type: !1124, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !18)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_poly1305_run", file: !287, line: 2513, baseType: !1127)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!1128 = !DILocation(line: 463, column: 2, scope: !1123)
!1129 = distinct !DISubprogram(name: "run_wrapper", scope: !65, file: !65, line: 3, type: !284, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !18)
!1130 = !DILocalVariable(name: "key", arg: 1, scope: !1129, file: !65, line: 3, type: !11)
!1131 = !DILocation(line: 0, scope: !1129)
!1132 = !DILocalVariable(name: "iv", arg: 2, scope: !1129, file: !65, line: 3, type: !11)
!1133 = !DILocalVariable(name: "data", arg: 3, scope: !1129, file: !65, line: 4, type: !13)
!1134 = !DILocalVariable(name: "len", arg: 4, scope: !1129, file: !65, line: 4, type: !14)
!1135 = !DILocalVariable(name: "aad", arg: 5, scope: !1129, file: !65, line: 4, type: !11)
!1136 = !DILocalVariable(name: "aad_len", arg: 6, scope: !1129, file: !65, line: 4, type: !14)
!1137 = !DILocalVariable(name: "tag", arg: 7, scope: !1129, file: !65, line: 5, type: !13)
!1138 = !DILocalVariable(name: "ichacha", arg: 8, scope: !1129, file: !65, line: 5, type: !286)
!1139 = !DILocalVariable(name: "encrypt", arg: 9, scope: !1129, file: !65, line: 5, type: !143)
!1140 = !DILocation(line: 6, column: 12, scope: !1129)
!1141 = !DILocation(line: 6, column: 2, scope: !1129)
!1142 = !DILocation(line: 7, column: 12, scope: !1129)
!1143 = !DILocation(line: 7, column: 2, scope: !1129)
!1144 = !DILocation(line: 8, column: 12, scope: !1129)
!1145 = !DILocation(line: 8, column: 2, scope: !1129)
!1146 = !DILocation(line: 9, column: 12, scope: !1129)
!1147 = !DILocation(line: 9, column: 2, scope: !1129)
!1148 = !DILocation(line: 10, column: 12, scope: !1129)
!1149 = !DILocation(line: 10, column: 2, scope: !1129)
!1150 = !DILocation(line: 11, column: 12, scope: !1129)
!1151 = !DILocation(line: 11, column: 2, scope: !1129)
!1152 = !DILocation(line: 12, column: 12, scope: !1129)
!1153 = !DILocation(line: 12, column: 2, scope: !1129)
!1154 = !DILocation(line: 13, column: 12, scope: !1129)
!1155 = !DILocation(line: 13, column: 2, scope: !1129)
!1156 = !DILocation(line: 16, column: 12, scope: !1129)
!1157 = !DILocation(line: 16, column: 2, scope: !1129)
!1158 = !DILocation(line: 17, column: 12, scope: !1129)
!1159 = !DILocation(line: 17, column: 2, scope: !1129)
!1160 = !DILocation(line: 18, column: 12, scope: !1129)
!1161 = !DILocation(line: 18, column: 2, scope: !1129)
!1162 = !DILocation(line: 21, column: 2, scope: !1129)
!1163 = !DILocation(line: 22, column: 1, scope: !1129)
!1164 = distinct !DISubprogram(name: "run_wrapper_t", scope: !65, file: !65, line: 32, type: !1165, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !18)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null}
!1167 = !DILocation(line: 34, column: 19, scope: !1164)
!1168 = !DILocalVariable(name: "key", scope: !1164, file: !65, line: 34, type: !11)
!1169 = !DILocation(line: 0, scope: !1164)
!1170 = !DILocation(line: 35, column: 19, scope: !1164)
!1171 = !DILocalVariable(name: "iv", scope: !1164, file: !65, line: 35, type: !11)
!1172 = !DILocation(line: 37, column: 15, scope: !1164)
!1173 = !DILocalVariable(name: "data", scope: !1164, file: !65, line: 37, type: !13)
!1174 = !DILocalVariable(name: "len", scope: !1164, file: !65, line: 38, type: !14)
!1175 = !DILocation(line: 39, column: 22, scope: !1164)
!1176 = !DILocalVariable(name: "aad", scope: !1164, file: !65, line: 39, type: !11)
!1177 = !DILocalVariable(name: "aad_len", scope: !1164, file: !65, line: 40, type: !14)
!1178 = !DILocation(line: 41, column: 14, scope: !1164)
!1179 = !DILocalVariable(name: "tag", scope: !1164, file: !65, line: 41, type: !13)
!1180 = !DILocalVariable(name: "encrypt", scope: !1164, file: !65, line: 42, type: !143)
!1181 = !DILocation(line: 44, column: 2, scope: !1164)
!1182 = !DILocation(line: 45, column: 1, scope: !1164)
