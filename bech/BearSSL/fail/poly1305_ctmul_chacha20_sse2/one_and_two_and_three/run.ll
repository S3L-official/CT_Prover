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
  call void @llvm.dbg.value(metadata i8* %0, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i8* %1, metadata !69, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 %2, metadata !70, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i8* %3, metadata !71, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i64 %4, metadata !72, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata [8 x i32]* %6, metadata !73, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [3 x i32]* %7, metadata !76, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i8* %3, metadata !81, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i64 0, metadata !82, metadata !DIExpression()), !dbg !68
  br label %10, !dbg !83

10:                                               ; preds = %17, %5
  %.01 = phi i64 [ 0, %5 ], [ %18, %17 ], !dbg !85
  call void @llvm.dbg.value(metadata i64 %.01, metadata !82, metadata !DIExpression()), !dbg !68
  %11 = icmp ult i64 %.01, 8, !dbg !86
  br i1 %11, label %12, label %19, !dbg !88

12:                                               ; preds = %10
  %13 = shl i64 %.01, 2, !dbg !89
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !91
  %15 = call i32 @br_dec32le(i8* %14), !dbg !92
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %.01, !dbg !93
  store i32 %15, i32* %16, align 4, !dbg !94
  br label %17, !dbg !95

17:                                               ; preds = %12
  %18 = add i64 %.01, 1, !dbg !96
  call void @llvm.dbg.value(metadata i64 %18, metadata !82, metadata !DIExpression()), !dbg !68
  br label %10, !dbg !97, !llvm.loop !98

19:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 0, metadata !82, metadata !DIExpression()), !dbg !68
  br label %20, !dbg !101

20:                                               ; preds = %27, %19
  %.1 = phi i64 [ 0, %19 ], [ %28, %27 ], !dbg !103
  call void @llvm.dbg.value(metadata i64 %.1, metadata !82, metadata !DIExpression()), !dbg !68
  %21 = icmp ult i64 %.1, 3, !dbg !104
  br i1 %21, label %22, label %29, !dbg !106

22:                                               ; preds = %20
  %23 = shl i64 %.1, 2, !dbg !107
  %24 = getelementptr inbounds i8, i8* %1, i64 %23, !dbg !109
  %25 = call i32 @br_dec32le(i8* %24), !dbg !110
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %.1, !dbg !111
  store i32 %25, i32* %26, align 4, !dbg !112
  br label %27, !dbg !113

27:                                               ; preds = %22
  %28 = add i64 %.1, 1, !dbg !114
  call void @llvm.dbg.value(metadata i64 %28, metadata !82, metadata !DIExpression()), !dbg !68
  br label %20, !dbg !115, !llvm.loop !116

29:                                               ; preds = %20
  br label %30, !dbg !118

30:                                               ; preds = %705, %29
  %.04 = phi i64 [ %4, %29 ], [ %707, %705 ]
  %.03 = phi i8* [ %3, %29 ], [ %706, %705 ], !dbg !68
  %.02 = phi i32 [ %2, %29 ], [ %708, %705 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !70, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i8* %.03, metadata !81, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i64 %.04, metadata !72, metadata !DIExpression()), !dbg !68
  %31 = icmp ugt i64 %.04, 0, !dbg !119
  br i1 %31, label %32, label %709, !dbg !118

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i32]* %8, metadata !120, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !126, metadata !DIExpression()), !dbg !130
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !131
  %34 = bitcast i32* %33 to i8*, !dbg !132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([4 x i32]* @br_chacha20_ct_run.CW to i8*), i64 16, i1 false), !dbg !132
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !133
  %36 = bitcast i32* %35 to i8*, !dbg !134
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0, !dbg !134
  %38 = bitcast i32* %37 to i8*, !dbg !134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 %38, i64 32, i1 false), !dbg !134
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !135
  store i32 %.02, i32* %39, align 16, !dbg !136
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !137
  %41 = bitcast i32* %40 to i8*, !dbg !138
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0, !dbg !138
  %43 = bitcast i32* %42 to i8*, !dbg !138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %43, i64 12, i1 false), !dbg !138
  call void @llvm.dbg.value(metadata i32 0, metadata !139, metadata !DIExpression()), !dbg !141
  br label %44, !dbg !142

44:                                               ; preds = %639, %32
  %.0 = phi i32 [ 0, %32 ], [ %640, %639 ], !dbg !144
  call void @llvm.dbg.value(metadata i32 %.0, metadata !139, metadata !DIExpression()), !dbg !141
  %45 = icmp slt i32 %.0, 10, !dbg !145
  br i1 %45, label %46, label %641, !dbg !147

46:                                               ; preds = %44
  br label %47, !dbg !148

47:                                               ; preds = %46
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !150
  %49 = load i32, i32* %48, align 16, !dbg !150
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !150
  %51 = load i32, i32* %50, align 16, !dbg !150
  %52 = add i32 %51, %49, !dbg !150
  store i32 %52, i32* %50, align 16, !dbg !150
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !150
  %54 = load i32, i32* %53, align 16, !dbg !150
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !150
  %56 = load i32, i32* %55, align 16, !dbg !150
  %57 = xor i32 %56, %54, !dbg !150
  store i32 %57, i32* %55, align 16, !dbg !150
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !150
  %59 = load i32, i32* %58, align 16, !dbg !150
  %60 = shl i32 %59, 16, !dbg !150
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !150
  %62 = load i32, i32* %61, align 16, !dbg !150
  %63 = lshr i32 %62, 16, !dbg !150
  %64 = or i32 %60, %63, !dbg !150
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !150
  store i32 %64, i32* %65, align 16, !dbg !150
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !150
  %67 = load i32, i32* %66, align 16, !dbg !150
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !150
  %69 = load i32, i32* %68, align 16, !dbg !150
  %70 = add i32 %69, %67, !dbg !150
  store i32 %70, i32* %68, align 16, !dbg !150
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !150
  %72 = load i32, i32* %71, align 16, !dbg !150
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !150
  %74 = load i32, i32* %73, align 16, !dbg !150
  %75 = xor i32 %74, %72, !dbg !150
  store i32 %75, i32* %73, align 16, !dbg !150
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !150
  %77 = load i32, i32* %76, align 16, !dbg !150
  %78 = shl i32 %77, 12, !dbg !150
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !150
  %80 = load i32, i32* %79, align 16, !dbg !150
  %81 = lshr i32 %80, 20, !dbg !150
  %82 = or i32 %78, %81, !dbg !150
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !150
  store i32 %82, i32* %83, align 16, !dbg !150
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !150
  %85 = load i32, i32* %84, align 16, !dbg !150
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !150
  %87 = load i32, i32* %86, align 16, !dbg !150
  %88 = add i32 %87, %85, !dbg !150
  store i32 %88, i32* %86, align 16, !dbg !150
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !150
  %90 = load i32, i32* %89, align 16, !dbg !150
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !150
  %92 = load i32, i32* %91, align 16, !dbg !150
  %93 = xor i32 %92, %90, !dbg !150
  store i32 %93, i32* %91, align 16, !dbg !150
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !150
  %95 = load i32, i32* %94, align 16, !dbg !150
  %96 = shl i32 %95, 8, !dbg !150
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !150
  %98 = load i32, i32* %97, align 16, !dbg !150
  %99 = lshr i32 %98, 24, !dbg !150
  %100 = or i32 %96, %99, !dbg !150
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !150
  store i32 %100, i32* %101, align 16, !dbg !150
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !150
  %103 = load i32, i32* %102, align 16, !dbg !150
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !150
  %105 = load i32, i32* %104, align 16, !dbg !150
  %106 = add i32 %105, %103, !dbg !150
  store i32 %106, i32* %104, align 16, !dbg !150
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !150
  %108 = load i32, i32* %107, align 16, !dbg !150
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !150
  %110 = load i32, i32* %109, align 16, !dbg !150
  %111 = xor i32 %110, %108, !dbg !150
  store i32 %111, i32* %109, align 16, !dbg !150
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !150
  %113 = load i32, i32* %112, align 16, !dbg !150
  %114 = shl i32 %113, 7, !dbg !150
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !150
  %116 = load i32, i32* %115, align 16, !dbg !150
  %117 = lshr i32 %116, 25, !dbg !150
  %118 = or i32 %114, %117, !dbg !150
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !150
  store i32 %118, i32* %119, align 16, !dbg !150
  br label %120, !dbg !150

120:                                              ; preds = %47
  br label %121, !dbg !152

121:                                              ; preds = %120
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !153
  %123 = load i32, i32* %122, align 4, !dbg !153
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !153
  %125 = load i32, i32* %124, align 4, !dbg !153
  %126 = add i32 %125, %123, !dbg !153
  store i32 %126, i32* %124, align 4, !dbg !153
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !153
  %128 = load i32, i32* %127, align 4, !dbg !153
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !153
  %130 = load i32, i32* %129, align 4, !dbg !153
  %131 = xor i32 %130, %128, !dbg !153
  store i32 %131, i32* %129, align 4, !dbg !153
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !153
  %133 = load i32, i32* %132, align 4, !dbg !153
  %134 = shl i32 %133, 16, !dbg !153
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !153
  %136 = load i32, i32* %135, align 4, !dbg !153
  %137 = lshr i32 %136, 16, !dbg !153
  %138 = or i32 %134, %137, !dbg !153
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !153
  store i32 %138, i32* %139, align 4, !dbg !153
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !153
  %141 = load i32, i32* %140, align 4, !dbg !153
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !153
  %143 = load i32, i32* %142, align 4, !dbg !153
  %144 = add i32 %143, %141, !dbg !153
  store i32 %144, i32* %142, align 4, !dbg !153
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !153
  %146 = load i32, i32* %145, align 4, !dbg !153
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !153
  %148 = load i32, i32* %147, align 4, !dbg !153
  %149 = xor i32 %148, %146, !dbg !153
  store i32 %149, i32* %147, align 4, !dbg !153
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !153
  %151 = load i32, i32* %150, align 4, !dbg !153
  %152 = shl i32 %151, 12, !dbg !153
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !153
  %154 = load i32, i32* %153, align 4, !dbg !153
  %155 = lshr i32 %154, 20, !dbg !153
  %156 = or i32 %152, %155, !dbg !153
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !153
  store i32 %156, i32* %157, align 4, !dbg !153
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !153
  %159 = load i32, i32* %158, align 4, !dbg !153
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !153
  %161 = load i32, i32* %160, align 4, !dbg !153
  %162 = add i32 %161, %159, !dbg !153
  store i32 %162, i32* %160, align 4, !dbg !153
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !153
  %164 = load i32, i32* %163, align 4, !dbg !153
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !153
  %166 = load i32, i32* %165, align 4, !dbg !153
  %167 = xor i32 %166, %164, !dbg !153
  store i32 %167, i32* %165, align 4, !dbg !153
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !153
  %169 = load i32, i32* %168, align 4, !dbg !153
  %170 = shl i32 %169, 8, !dbg !153
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !153
  %172 = load i32, i32* %171, align 4, !dbg !153
  %173 = lshr i32 %172, 24, !dbg !153
  %174 = or i32 %170, %173, !dbg !153
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !153
  store i32 %174, i32* %175, align 4, !dbg !153
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !153
  %177 = load i32, i32* %176, align 4, !dbg !153
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !153
  %179 = load i32, i32* %178, align 4, !dbg !153
  %180 = add i32 %179, %177, !dbg !153
  store i32 %180, i32* %178, align 4, !dbg !153
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !153
  %182 = load i32, i32* %181, align 4, !dbg !153
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !153
  %184 = load i32, i32* %183, align 4, !dbg !153
  %185 = xor i32 %184, %182, !dbg !153
  store i32 %185, i32* %183, align 4, !dbg !153
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !153
  %187 = load i32, i32* %186, align 4, !dbg !153
  %188 = shl i32 %187, 7, !dbg !153
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !153
  %190 = load i32, i32* %189, align 4, !dbg !153
  %191 = lshr i32 %190, 25, !dbg !153
  %192 = or i32 %188, %191, !dbg !153
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !153
  store i32 %192, i32* %193, align 4, !dbg !153
  br label %194, !dbg !153

194:                                              ; preds = %121
  br label %195, !dbg !155

195:                                              ; preds = %194
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !156
  %197 = load i32, i32* %196, align 8, !dbg !156
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !156
  %199 = load i32, i32* %198, align 8, !dbg !156
  %200 = add i32 %199, %197, !dbg !156
  store i32 %200, i32* %198, align 8, !dbg !156
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !156
  %202 = load i32, i32* %201, align 8, !dbg !156
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !156
  %204 = load i32, i32* %203, align 8, !dbg !156
  %205 = xor i32 %204, %202, !dbg !156
  store i32 %205, i32* %203, align 8, !dbg !156
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !156
  %207 = load i32, i32* %206, align 8, !dbg !156
  %208 = shl i32 %207, 16, !dbg !156
  %209 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !156
  %210 = load i32, i32* %209, align 8, !dbg !156
  %211 = lshr i32 %210, 16, !dbg !156
  %212 = or i32 %208, %211, !dbg !156
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !156
  store i32 %212, i32* %213, align 8, !dbg !156
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !156
  %215 = load i32, i32* %214, align 8, !dbg !156
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !156
  %217 = load i32, i32* %216, align 8, !dbg !156
  %218 = add i32 %217, %215, !dbg !156
  store i32 %218, i32* %216, align 8, !dbg !156
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !156
  %220 = load i32, i32* %219, align 8, !dbg !156
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !156
  %222 = load i32, i32* %221, align 8, !dbg !156
  %223 = xor i32 %222, %220, !dbg !156
  store i32 %223, i32* %221, align 8, !dbg !156
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !156
  %225 = load i32, i32* %224, align 8, !dbg !156
  %226 = shl i32 %225, 12, !dbg !156
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !156
  %228 = load i32, i32* %227, align 8, !dbg !156
  %229 = lshr i32 %228, 20, !dbg !156
  %230 = or i32 %226, %229, !dbg !156
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !156
  store i32 %230, i32* %231, align 8, !dbg !156
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !156
  %233 = load i32, i32* %232, align 8, !dbg !156
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !156
  %235 = load i32, i32* %234, align 8, !dbg !156
  %236 = add i32 %235, %233, !dbg !156
  store i32 %236, i32* %234, align 8, !dbg !156
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !156
  %238 = load i32, i32* %237, align 8, !dbg !156
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !156
  %240 = load i32, i32* %239, align 8, !dbg !156
  %241 = xor i32 %240, %238, !dbg !156
  store i32 %241, i32* %239, align 8, !dbg !156
  %242 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !156
  %243 = load i32, i32* %242, align 8, !dbg !156
  %244 = shl i32 %243, 8, !dbg !156
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !156
  %246 = load i32, i32* %245, align 8, !dbg !156
  %247 = lshr i32 %246, 24, !dbg !156
  %248 = or i32 %244, %247, !dbg !156
  %249 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !156
  store i32 %248, i32* %249, align 8, !dbg !156
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !156
  %251 = load i32, i32* %250, align 8, !dbg !156
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !156
  %253 = load i32, i32* %252, align 8, !dbg !156
  %254 = add i32 %253, %251, !dbg !156
  store i32 %254, i32* %252, align 8, !dbg !156
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !156
  %256 = load i32, i32* %255, align 8, !dbg !156
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !156
  %258 = load i32, i32* %257, align 8, !dbg !156
  %259 = xor i32 %258, %256, !dbg !156
  store i32 %259, i32* %257, align 8, !dbg !156
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !156
  %261 = load i32, i32* %260, align 8, !dbg !156
  %262 = shl i32 %261, 7, !dbg !156
  %263 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !156
  %264 = load i32, i32* %263, align 8, !dbg !156
  %265 = lshr i32 %264, 25, !dbg !156
  %266 = or i32 %262, %265, !dbg !156
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !156
  store i32 %266, i32* %267, align 8, !dbg !156
  br label %268, !dbg !156

268:                                              ; preds = %195
  br label %269, !dbg !158

269:                                              ; preds = %268
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !159
  %271 = load i32, i32* %270, align 4, !dbg !159
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !159
  %273 = load i32, i32* %272, align 4, !dbg !159
  %274 = add i32 %273, %271, !dbg !159
  store i32 %274, i32* %272, align 4, !dbg !159
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !159
  %276 = load i32, i32* %275, align 4, !dbg !159
  %277 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !159
  %278 = load i32, i32* %277, align 4, !dbg !159
  %279 = xor i32 %278, %276, !dbg !159
  store i32 %279, i32* %277, align 4, !dbg !159
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !159
  %281 = load i32, i32* %280, align 4, !dbg !159
  %282 = shl i32 %281, 16, !dbg !159
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !159
  %284 = load i32, i32* %283, align 4, !dbg !159
  %285 = lshr i32 %284, 16, !dbg !159
  %286 = or i32 %282, %285, !dbg !159
  %287 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !159
  store i32 %286, i32* %287, align 4, !dbg !159
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !159
  %289 = load i32, i32* %288, align 4, !dbg !159
  %290 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !159
  %291 = load i32, i32* %290, align 4, !dbg !159
  %292 = add i32 %291, %289, !dbg !159
  store i32 %292, i32* %290, align 4, !dbg !159
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !159
  %294 = load i32, i32* %293, align 4, !dbg !159
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !159
  %296 = load i32, i32* %295, align 4, !dbg !159
  %297 = xor i32 %296, %294, !dbg !159
  store i32 %297, i32* %295, align 4, !dbg !159
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !159
  %299 = load i32, i32* %298, align 4, !dbg !159
  %300 = shl i32 %299, 12, !dbg !159
  %301 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !159
  %302 = load i32, i32* %301, align 4, !dbg !159
  %303 = lshr i32 %302, 20, !dbg !159
  %304 = or i32 %300, %303, !dbg !159
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !159
  store i32 %304, i32* %305, align 4, !dbg !159
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !159
  %307 = load i32, i32* %306, align 4, !dbg !159
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !159
  %309 = load i32, i32* %308, align 4, !dbg !159
  %310 = add i32 %309, %307, !dbg !159
  store i32 %310, i32* %308, align 4, !dbg !159
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !159
  %312 = load i32, i32* %311, align 4, !dbg !159
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !159
  %314 = load i32, i32* %313, align 4, !dbg !159
  %315 = xor i32 %314, %312, !dbg !159
  store i32 %315, i32* %313, align 4, !dbg !159
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !159
  %317 = load i32, i32* %316, align 4, !dbg !159
  %318 = shl i32 %317, 8, !dbg !159
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !159
  %320 = load i32, i32* %319, align 4, !dbg !159
  %321 = lshr i32 %320, 24, !dbg !159
  %322 = or i32 %318, %321, !dbg !159
  %323 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !159
  store i32 %322, i32* %323, align 4, !dbg !159
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !159
  %325 = load i32, i32* %324, align 4, !dbg !159
  %326 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !159
  %327 = load i32, i32* %326, align 4, !dbg !159
  %328 = add i32 %327, %325, !dbg !159
  store i32 %328, i32* %326, align 4, !dbg !159
  %329 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !159
  %330 = load i32, i32* %329, align 4, !dbg !159
  %331 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !159
  %332 = load i32, i32* %331, align 4, !dbg !159
  %333 = xor i32 %332, %330, !dbg !159
  store i32 %333, i32* %331, align 4, !dbg !159
  %334 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !159
  %335 = load i32, i32* %334, align 4, !dbg !159
  %336 = shl i32 %335, 7, !dbg !159
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !159
  %338 = load i32, i32* %337, align 4, !dbg !159
  %339 = lshr i32 %338, 25, !dbg !159
  %340 = or i32 %336, %339, !dbg !159
  %341 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !159
  store i32 %340, i32* %341, align 4, !dbg !159
  br label %342, !dbg !159

342:                                              ; preds = %269
  br label %343, !dbg !161

343:                                              ; preds = %342
  %344 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !162
  %345 = load i32, i32* %344, align 4, !dbg !162
  %346 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !162
  %347 = load i32, i32* %346, align 16, !dbg !162
  %348 = add i32 %347, %345, !dbg !162
  store i32 %348, i32* %346, align 16, !dbg !162
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !162
  %350 = load i32, i32* %349, align 16, !dbg !162
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %352 = load i32, i32* %351, align 4, !dbg !162
  %353 = xor i32 %352, %350, !dbg !162
  store i32 %353, i32* %351, align 4, !dbg !162
  %354 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %355 = load i32, i32* %354, align 4, !dbg !162
  %356 = shl i32 %355, 16, !dbg !162
  %357 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %358 = load i32, i32* %357, align 4, !dbg !162
  %359 = lshr i32 %358, 16, !dbg !162
  %360 = or i32 %356, %359, !dbg !162
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  store i32 %360, i32* %361, align 4, !dbg !162
  %362 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %363 = load i32, i32* %362, align 4, !dbg !162
  %364 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !162
  %365 = load i32, i32* %364, align 8, !dbg !162
  %366 = add i32 %365, %363, !dbg !162
  store i32 %366, i32* %364, align 8, !dbg !162
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !162
  %368 = load i32, i32* %367, align 8, !dbg !162
  %369 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !162
  %370 = load i32, i32* %369, align 4, !dbg !162
  %371 = xor i32 %370, %368, !dbg !162
  store i32 %371, i32* %369, align 4, !dbg !162
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !162
  %373 = load i32, i32* %372, align 4, !dbg !162
  %374 = shl i32 %373, 12, !dbg !162
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !162
  %376 = load i32, i32* %375, align 4, !dbg !162
  %377 = lshr i32 %376, 20, !dbg !162
  %378 = or i32 %374, %377, !dbg !162
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !162
  store i32 %378, i32* %379, align 4, !dbg !162
  %380 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !162
  %381 = load i32, i32* %380, align 4, !dbg !162
  %382 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !162
  %383 = load i32, i32* %382, align 16, !dbg !162
  %384 = add i32 %383, %381, !dbg !162
  store i32 %384, i32* %382, align 16, !dbg !162
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !162
  %386 = load i32, i32* %385, align 16, !dbg !162
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %388 = load i32, i32* %387, align 4, !dbg !162
  %389 = xor i32 %388, %386, !dbg !162
  store i32 %389, i32* %387, align 4, !dbg !162
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %391 = load i32, i32* %390, align 4, !dbg !162
  %392 = shl i32 %391, 8, !dbg !162
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %394 = load i32, i32* %393, align 4, !dbg !162
  %395 = lshr i32 %394, 24, !dbg !162
  %396 = or i32 %392, %395, !dbg !162
  %397 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  store i32 %396, i32* %397, align 4, !dbg !162
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !162
  %399 = load i32, i32* %398, align 4, !dbg !162
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !162
  %401 = load i32, i32* %400, align 8, !dbg !162
  %402 = add i32 %401, %399, !dbg !162
  store i32 %402, i32* %400, align 8, !dbg !162
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !162
  %404 = load i32, i32* %403, align 8, !dbg !162
  %405 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !162
  %406 = load i32, i32* %405, align 4, !dbg !162
  %407 = xor i32 %406, %404, !dbg !162
  store i32 %407, i32* %405, align 4, !dbg !162
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !162
  %409 = load i32, i32* %408, align 4, !dbg !162
  %410 = shl i32 %409, 7, !dbg !162
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !162
  %412 = load i32, i32* %411, align 4, !dbg !162
  %413 = lshr i32 %412, 25, !dbg !162
  %414 = or i32 %410, %413, !dbg !162
  %415 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !162
  store i32 %414, i32* %415, align 4, !dbg !162
  br label %416, !dbg !162

416:                                              ; preds = %343
  br label %417, !dbg !164

417:                                              ; preds = %416
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !165
  %419 = load i32, i32* %418, align 8, !dbg !165
  %420 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !165
  %421 = load i32, i32* %420, align 4, !dbg !165
  %422 = add i32 %421, %419, !dbg !165
  store i32 %422, i32* %420, align 4, !dbg !165
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !165
  %424 = load i32, i32* %423, align 4, !dbg !165
  %425 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !165
  %426 = load i32, i32* %425, align 16, !dbg !165
  %427 = xor i32 %426, %424, !dbg !165
  store i32 %427, i32* %425, align 16, !dbg !165
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !165
  %429 = load i32, i32* %428, align 16, !dbg !165
  %430 = shl i32 %429, 16, !dbg !165
  %431 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !165
  %432 = load i32, i32* %431, align 16, !dbg !165
  %433 = lshr i32 %432, 16, !dbg !165
  %434 = or i32 %430, %433, !dbg !165
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !165
  store i32 %434, i32* %435, align 16, !dbg !165
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !165
  %437 = load i32, i32* %436, align 16, !dbg !165
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !165
  %439 = load i32, i32* %438, align 4, !dbg !165
  %440 = add i32 %439, %437, !dbg !165
  store i32 %440, i32* %438, align 4, !dbg !165
  %441 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !165
  %442 = load i32, i32* %441, align 4, !dbg !165
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !165
  %444 = load i32, i32* %443, align 8, !dbg !165
  %445 = xor i32 %444, %442, !dbg !165
  store i32 %445, i32* %443, align 8, !dbg !165
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !165
  %447 = load i32, i32* %446, align 8, !dbg !165
  %448 = shl i32 %447, 12, !dbg !165
  %449 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !165
  %450 = load i32, i32* %449, align 8, !dbg !165
  %451 = lshr i32 %450, 20, !dbg !165
  %452 = or i32 %448, %451, !dbg !165
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !165
  store i32 %452, i32* %453, align 8, !dbg !165
  %454 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !165
  %455 = load i32, i32* %454, align 8, !dbg !165
  %456 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !165
  %457 = load i32, i32* %456, align 4, !dbg !165
  %458 = add i32 %457, %455, !dbg !165
  store i32 %458, i32* %456, align 4, !dbg !165
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !165
  %460 = load i32, i32* %459, align 4, !dbg !165
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !165
  %462 = load i32, i32* %461, align 16, !dbg !165
  %463 = xor i32 %462, %460, !dbg !165
  store i32 %463, i32* %461, align 16, !dbg !165
  %464 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !165
  %465 = load i32, i32* %464, align 16, !dbg !165
  %466 = shl i32 %465, 8, !dbg !165
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !165
  %468 = load i32, i32* %467, align 16, !dbg !165
  %469 = lshr i32 %468, 24, !dbg !165
  %470 = or i32 %466, %469, !dbg !165
  %471 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !165
  store i32 %470, i32* %471, align 16, !dbg !165
  %472 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !165
  %473 = load i32, i32* %472, align 16, !dbg !165
  %474 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !165
  %475 = load i32, i32* %474, align 4, !dbg !165
  %476 = add i32 %475, %473, !dbg !165
  store i32 %476, i32* %474, align 4, !dbg !165
  %477 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !165
  %478 = load i32, i32* %477, align 4, !dbg !165
  %479 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !165
  %480 = load i32, i32* %479, align 8, !dbg !165
  %481 = xor i32 %480, %478, !dbg !165
  store i32 %481, i32* %479, align 8, !dbg !165
  %482 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !165
  %483 = load i32, i32* %482, align 8, !dbg !165
  %484 = shl i32 %483, 7, !dbg !165
  %485 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !165
  %486 = load i32, i32* %485, align 8, !dbg !165
  %487 = lshr i32 %486, 25, !dbg !165
  %488 = or i32 %484, %487, !dbg !165
  %489 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !165
  store i32 %488, i32* %489, align 8, !dbg !165
  br label %490, !dbg !165

490:                                              ; preds = %417
  br label %491, !dbg !167

491:                                              ; preds = %490
  %492 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !168
  %493 = load i32, i32* %492, align 4, !dbg !168
  %494 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !168
  %495 = load i32, i32* %494, align 8, !dbg !168
  %496 = add i32 %495, %493, !dbg !168
  store i32 %496, i32* %494, align 8, !dbg !168
  %497 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !168
  %498 = load i32, i32* %497, align 8, !dbg !168
  %499 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !168
  %500 = load i32, i32* %499, align 4, !dbg !168
  %501 = xor i32 %500, %498, !dbg !168
  store i32 %501, i32* %499, align 4, !dbg !168
  %502 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !168
  %503 = load i32, i32* %502, align 4, !dbg !168
  %504 = shl i32 %503, 16, !dbg !168
  %505 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !168
  %506 = load i32, i32* %505, align 4, !dbg !168
  %507 = lshr i32 %506, 16, !dbg !168
  %508 = or i32 %504, %507, !dbg !168
  %509 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !168
  store i32 %508, i32* %509, align 4, !dbg !168
  %510 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !168
  %511 = load i32, i32* %510, align 4, !dbg !168
  %512 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !168
  %513 = load i32, i32* %512, align 16, !dbg !168
  %514 = add i32 %513, %511, !dbg !168
  store i32 %514, i32* %512, align 16, !dbg !168
  %515 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !168
  %516 = load i32, i32* %515, align 16, !dbg !168
  %517 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !168
  %518 = load i32, i32* %517, align 4, !dbg !168
  %519 = xor i32 %518, %516, !dbg !168
  store i32 %519, i32* %517, align 4, !dbg !168
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !168
  %521 = load i32, i32* %520, align 4, !dbg !168
  %522 = shl i32 %521, 12, !dbg !168
  %523 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !168
  %524 = load i32, i32* %523, align 4, !dbg !168
  %525 = lshr i32 %524, 20, !dbg !168
  %526 = or i32 %522, %525, !dbg !168
  %527 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !168
  store i32 %526, i32* %527, align 4, !dbg !168
  %528 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !168
  %529 = load i32, i32* %528, align 4, !dbg !168
  %530 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !168
  %531 = load i32, i32* %530, align 8, !dbg !168
  %532 = add i32 %531, %529, !dbg !168
  store i32 %532, i32* %530, align 8, !dbg !168
  %533 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !168
  %534 = load i32, i32* %533, align 8, !dbg !168
  %535 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !168
  %536 = load i32, i32* %535, align 4, !dbg !168
  %537 = xor i32 %536, %534, !dbg !168
  store i32 %537, i32* %535, align 4, !dbg !168
  %538 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !168
  %539 = load i32, i32* %538, align 4, !dbg !168
  %540 = shl i32 %539, 8, !dbg !168
  %541 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !168
  %542 = load i32, i32* %541, align 4, !dbg !168
  %543 = lshr i32 %542, 24, !dbg !168
  %544 = or i32 %540, %543, !dbg !168
  %545 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !168
  store i32 %544, i32* %545, align 4, !dbg !168
  %546 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !168
  %547 = load i32, i32* %546, align 4, !dbg !168
  %548 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !168
  %549 = load i32, i32* %548, align 16, !dbg !168
  %550 = add i32 %549, %547, !dbg !168
  store i32 %550, i32* %548, align 16, !dbg !168
  %551 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !168
  %552 = load i32, i32* %551, align 16, !dbg !168
  %553 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !168
  %554 = load i32, i32* %553, align 4, !dbg !168
  %555 = xor i32 %554, %552, !dbg !168
  store i32 %555, i32* %553, align 4, !dbg !168
  %556 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !168
  %557 = load i32, i32* %556, align 4, !dbg !168
  %558 = shl i32 %557, 7, !dbg !168
  %559 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !168
  %560 = load i32, i32* %559, align 4, !dbg !168
  %561 = lshr i32 %560, 25, !dbg !168
  %562 = or i32 %558, %561, !dbg !168
  %563 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !168
  store i32 %562, i32* %563, align 4, !dbg !168
  br label %564, !dbg !168

564:                                              ; preds = %491
  br label %565, !dbg !170

565:                                              ; preds = %564
  %566 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !171
  %567 = load i32, i32* %566, align 16, !dbg !171
  %568 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !171
  %569 = load i32, i32* %568, align 4, !dbg !171
  %570 = add i32 %569, %567, !dbg !171
  store i32 %570, i32* %568, align 4, !dbg !171
  %571 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !171
  %572 = load i32, i32* %571, align 4, !dbg !171
  %573 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !171
  %574 = load i32, i32* %573, align 8, !dbg !171
  %575 = xor i32 %574, %572, !dbg !171
  store i32 %575, i32* %573, align 8, !dbg !171
  %576 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !171
  %577 = load i32, i32* %576, align 8, !dbg !171
  %578 = shl i32 %577, 16, !dbg !171
  %579 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !171
  %580 = load i32, i32* %579, align 8, !dbg !171
  %581 = lshr i32 %580, 16, !dbg !171
  %582 = or i32 %578, %581, !dbg !171
  %583 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !171
  store i32 %582, i32* %583, align 8, !dbg !171
  %584 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !171
  %585 = load i32, i32* %584, align 8, !dbg !171
  %586 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !171
  %587 = load i32, i32* %586, align 4, !dbg !171
  %588 = add i32 %587, %585, !dbg !171
  store i32 %588, i32* %586, align 4, !dbg !171
  %589 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !171
  %590 = load i32, i32* %589, align 4, !dbg !171
  %591 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !171
  %592 = load i32, i32* %591, align 16, !dbg !171
  %593 = xor i32 %592, %590, !dbg !171
  store i32 %593, i32* %591, align 16, !dbg !171
  %594 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !171
  %595 = load i32, i32* %594, align 16, !dbg !171
  %596 = shl i32 %595, 12, !dbg !171
  %597 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !171
  %598 = load i32, i32* %597, align 16, !dbg !171
  %599 = lshr i32 %598, 20, !dbg !171
  %600 = or i32 %596, %599, !dbg !171
  %601 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !171
  store i32 %600, i32* %601, align 16, !dbg !171
  %602 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !171
  %603 = load i32, i32* %602, align 16, !dbg !171
  %604 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !171
  %605 = load i32, i32* %604, align 4, !dbg !171
  %606 = add i32 %605, %603, !dbg !171
  store i32 %606, i32* %604, align 4, !dbg !171
  %607 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !171
  %608 = load i32, i32* %607, align 4, !dbg !171
  %609 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !171
  %610 = load i32, i32* %609, align 8, !dbg !171
  %611 = xor i32 %610, %608, !dbg !171
  store i32 %611, i32* %609, align 8, !dbg !171
  %612 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !171
  %613 = load i32, i32* %612, align 8, !dbg !171
  %614 = shl i32 %613, 8, !dbg !171
  %615 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !171
  %616 = load i32, i32* %615, align 8, !dbg !171
  %617 = lshr i32 %616, 24, !dbg !171
  %618 = or i32 %614, %617, !dbg !171
  %619 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !171
  store i32 %618, i32* %619, align 8, !dbg !171
  %620 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !171
  %621 = load i32, i32* %620, align 8, !dbg !171
  %622 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !171
  %623 = load i32, i32* %622, align 4, !dbg !171
  %624 = add i32 %623, %621, !dbg !171
  store i32 %624, i32* %622, align 4, !dbg !171
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !171
  %626 = load i32, i32* %625, align 4, !dbg !171
  %627 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !171
  %628 = load i32, i32* %627, align 16, !dbg !171
  %629 = xor i32 %628, %626, !dbg !171
  store i32 %629, i32* %627, align 16, !dbg !171
  %630 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !171
  %631 = load i32, i32* %630, align 16, !dbg !171
  %632 = shl i32 %631, 7, !dbg !171
  %633 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !171
  %634 = load i32, i32* %633, align 16, !dbg !171
  %635 = lshr i32 %634, 25, !dbg !171
  %636 = or i32 %632, %635, !dbg !171
  %637 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !171
  store i32 %636, i32* %637, align 16, !dbg !171
  br label %638, !dbg !171

638:                                              ; preds = %565
  br label %639, !dbg !173

639:                                              ; preds = %638
  %640 = add nsw i32 %.0, 1, !dbg !174
  call void @llvm.dbg.value(metadata i32 %640, metadata !139, metadata !DIExpression()), !dbg !141
  br label %44, !dbg !175, !llvm.loop !176

641:                                              ; preds = %44
  call void @llvm.dbg.value(metadata i64 0, metadata !82, metadata !DIExpression()), !dbg !68
  br label %642, !dbg !178

642:                                              ; preds = %652, %641
  %.2 = phi i64 [ 0, %641 ], [ %653, %652 ], !dbg !180
  call void @llvm.dbg.value(metadata i64 %.2, metadata !82, metadata !DIExpression()), !dbg !68
  %643 = icmp ult i64 %.2, 4, !dbg !181
  br i1 %643, label %644, label %654, !dbg !183

644:                                              ; preds = %642
  %645 = shl i64 %.2, 2, !dbg !184
  %646 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %645, !dbg !186
  %647 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.2, !dbg !187
  %648 = load i32, i32* %647, align 4, !dbg !187
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* @br_chacha20_ct_run.CW, i64 0, i64 %.2, !dbg !188
  %650 = load i32, i32* %649, align 4, !dbg !188
  %651 = add i32 %648, %650, !dbg !189
  call void @br_enc32le(i8* %646, i32 %651), !dbg !190
  br label %652, !dbg !191

652:                                              ; preds = %644
  %653 = add i64 %.2, 1, !dbg !192
  call void @llvm.dbg.value(metadata i64 %653, metadata !82, metadata !DIExpression()), !dbg !68
  br label %642, !dbg !193, !llvm.loop !194

654:                                              ; preds = %642
  call void @llvm.dbg.value(metadata i64 4, metadata !82, metadata !DIExpression()), !dbg !68
  br label %655, !dbg !196

655:                                              ; preds = %666, %654
  %.3 = phi i64 [ 4, %654 ], [ %667, %666 ], !dbg !198
  call void @llvm.dbg.value(metadata i64 %.3, metadata !82, metadata !DIExpression()), !dbg !68
  %656 = icmp ult i64 %.3, 12, !dbg !199
  br i1 %656, label %657, label %668, !dbg !201

657:                                              ; preds = %655
  %658 = shl i64 %.3, 2, !dbg !202
  %659 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %658, !dbg !204
  %660 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.3, !dbg !205
  %661 = load i32, i32* %660, align 4, !dbg !205
  %662 = sub i64 %.3, 4, !dbg !206
  %663 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %662, !dbg !207
  %664 = load i32, i32* %663, align 4, !dbg !207
  %665 = add i32 %661, %664, !dbg !208
  call void @br_enc32le(i8* %659, i32 %665), !dbg !209
  br label %666, !dbg !210

666:                                              ; preds = %657
  %667 = add i64 %.3, 1, !dbg !211
  call void @llvm.dbg.value(metadata i64 %667, metadata !82, metadata !DIExpression()), !dbg !68
  br label %655, !dbg !212, !llvm.loop !213

668:                                              ; preds = %655
  %669 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 48, !dbg !215
  %670 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !216
  %671 = load i32, i32* %670, align 16, !dbg !216
  %672 = add i32 %671, %.02, !dbg !217
  call void @br_enc32le(i8* %669, i32 %672), !dbg !218
  call void @llvm.dbg.value(metadata i64 13, metadata !82, metadata !DIExpression()), !dbg !68
  br label %673, !dbg !219

673:                                              ; preds = %684, %668
  %.4 = phi i64 [ 13, %668 ], [ %685, %684 ], !dbg !221
  call void @llvm.dbg.value(metadata i64 %.4, metadata !82, metadata !DIExpression()), !dbg !68
  %674 = icmp ult i64 %.4, 16, !dbg !222
  br i1 %674, label %675, label %686, !dbg !224

675:                                              ; preds = %673
  %676 = shl i64 %.4, 2, !dbg !225
  %677 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %676, !dbg !227
  %678 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.4, !dbg !228
  %679 = load i32, i32* %678, align 4, !dbg !228
  %680 = sub i64 %.4, 13, !dbg !229
  %681 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %680, !dbg !230
  %682 = load i32, i32* %681, align 4, !dbg !230
  %683 = add i32 %679, %682, !dbg !231
  call void @br_enc32le(i8* %677, i32 %683), !dbg !232
  br label %684, !dbg !233

684:                                              ; preds = %675
  %685 = add i64 %.4, 1, !dbg !234
  call void @llvm.dbg.value(metadata i64 %685, metadata !82, metadata !DIExpression()), !dbg !68
  br label %673, !dbg !235, !llvm.loop !236

686:                                              ; preds = %673
  %687 = icmp ult i64 %.04, 64, !dbg !238
  br i1 %687, label %688, label %689, !dbg !239

688:                                              ; preds = %686
  br label %690, !dbg !239

689:                                              ; preds = %686
  br label %690, !dbg !239

690:                                              ; preds = %689, %688
  %691 = phi i64 [ %.04, %688 ], [ 64, %689 ], !dbg !239
  call void @llvm.dbg.value(metadata i64 %691, metadata !240, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 0, metadata !82, metadata !DIExpression()), !dbg !68
  br label %692, !dbg !241

692:                                              ; preds = %703, %690
  %.5 = phi i64 [ 0, %690 ], [ %704, %703 ], !dbg !243
  call void @llvm.dbg.value(metadata i64 %.5, metadata !82, metadata !DIExpression()), !dbg !68
  %693 = icmp ult i64 %.5, %691, !dbg !244
  br i1 %693, label %694, label %705, !dbg !246

694:                                              ; preds = %692
  %695 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %.5, !dbg !247
  %696 = load i8, i8* %695, align 1, !dbg !247
  %697 = zext i8 %696 to i32, !dbg !247
  %698 = getelementptr inbounds i8, i8* %.03, i64 %.5, !dbg !249
  %699 = load i8, i8* %698, align 1, !dbg !250
  %700 = zext i8 %699 to i32, !dbg !250
  %701 = xor i32 %700, %697, !dbg !250
  %702 = trunc i32 %701 to i8, !dbg !250
  store i8 %702, i8* %698, align 1, !dbg !250
  br label %703, !dbg !251

703:                                              ; preds = %694
  %704 = add i64 %.5, 1, !dbg !252
  call void @llvm.dbg.value(metadata i64 %704, metadata !82, metadata !DIExpression()), !dbg !68
  br label %692, !dbg !253, !llvm.loop !254

705:                                              ; preds = %692
  %706 = getelementptr inbounds i8, i8* %.03, i64 %691, !dbg !256
  call void @llvm.dbg.value(metadata i8* %706, metadata !81, metadata !DIExpression()), !dbg !68
  %707 = sub i64 %.04, %691, !dbg !257
  call void @llvm.dbg.value(metadata i64 %707, metadata !72, metadata !DIExpression()), !dbg !68
  %708 = add i32 %.02, 1, !dbg !258
  call void @llvm.dbg.value(metadata i32 %708, metadata !70, metadata !DIExpression()), !dbg !68
  br label %30, !dbg !118, !llvm.loop !259

709:                                              ; preds = %30
  ret i32 %.02, !dbg !261
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* %0) #0 !dbg !262 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !265, metadata !DIExpression()), !dbg !266
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !267
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !268
  %4 = load i32, i32* %3, align 4, !dbg !268
  ret i32 %4, !dbg !269
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le(i8* %0, i32 %1) #0 !dbg !270 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i32 %1, metadata !275, metadata !DIExpression()), !dbg !274
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !276
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !277
  store i32 %1, i32* %4, align 4, !dbg !278
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_poly1305_ctmul_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !280 {
  %10 = alloca [32 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca [5 x i32], align 16
  %13 = alloca [5 x i32], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i8* %1, metadata !288, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i8* %2, metadata !289, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 %3, metadata !290, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i8* %4, metadata !291, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 %5, metadata !292, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i8* %6, metadata !293, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !294, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 %8, metadata !295, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata [32 x i8]* %10, metadata !296, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata [16 x i8]* %11, metadata !301, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata [5 x i32]* %12, metadata !304, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.declare(metadata [5 x i32]* %13, metadata !309, metadata !DIExpression()), !dbg !310
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !311
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false), !dbg !311
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !312
  %16 = call i32 %7(i8* %0, i8* %1, i32 0, i8* %15, i64 32), !dbg !313
  %17 = icmp ne i32 %8, 0, !dbg !314
  br i1 %17, label %18, label %20, !dbg !316

18:                                               ; preds = %9
  %19 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !317
  br label %20, !dbg !319

20:                                               ; preds = %18, %9
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !320
  %22 = call i32 @br_dec32le.1(i8* %21), !dbg !321
  %23 = and i32 %22, 67108863, !dbg !322
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !323
  store i32 %23, i32* %24, align 16, !dbg !324
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !325
  %26 = getelementptr inbounds i8, i8* %25, i64 3, !dbg !326
  %27 = call i32 @br_dec32le.1(i8* %26), !dbg !327
  %28 = lshr i32 %27, 2, !dbg !328
  %29 = and i32 %28, 67108611, !dbg !329
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 1, !dbg !330
  store i32 %29, i32* %30, align 4, !dbg !331
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !332
  %32 = getelementptr inbounds i8, i8* %31, i64 6, !dbg !333
  %33 = call i32 @br_dec32le.1(i8* %32), !dbg !334
  %34 = lshr i32 %33, 4, !dbg !335
  %35 = and i32 %34, 67092735, !dbg !336
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 2, !dbg !337
  store i32 %35, i32* %36, align 8, !dbg !338
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !339
  %38 = getelementptr inbounds i8, i8* %37, i64 9, !dbg !340
  %39 = call i32 @br_dec32le.1(i8* %38), !dbg !341
  %40 = lshr i32 %39, 6, !dbg !342
  %41 = and i32 %40, 66076671, !dbg !343
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 3, !dbg !344
  store i32 %41, i32* %42, align 4, !dbg !345
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !346
  %44 = getelementptr inbounds i8, i8* %43, i64 12, !dbg !347
  %45 = call i32 @br_dec32le.1(i8* %44), !dbg !348
  %46 = lshr i32 %45, 8, !dbg !349
  %47 = and i32 %46, 1048575, !dbg !350
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 4, !dbg !351
  store i32 %47, i32* %48, align 16, !dbg !352
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !353
  %50 = bitcast i32* %49 to i8*, !dbg !353
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 20, i1 false), !dbg !353
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !354
  call void @br_enc64le(i8* %51, i64 %5), !dbg !355
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !356
  %53 = getelementptr inbounds i8, i8* %52, i64 8, !dbg !357
  call void @br_enc64le(i8* %53, i64 %3), !dbg !358
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !359
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !360
  call void @poly1305_inner(i32* %54, i32* %55, i8* %4, i64 %5), !dbg !361
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !362
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !363
  call void @poly1305_inner(i32* %56, i32* %57, i8* %2, i64 %3), !dbg !364
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !365
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !366
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !367
  call void @poly1305_inner(i32* %58, i32* %59, i8* %60, i64 16), !dbg !368
  call void @llvm.dbg.value(metadata i32 0, metadata !369, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 1, metadata !370, metadata !DIExpression()), !dbg !287
  br label %61, !dbg !371

61:                                               ; preds = %82, %20
  %.02 = phi i32 [ 0, %20 ], [ %77, %82 ], !dbg !287
  %.0 = phi i32 [ 1, %20 ], [ %83, %82 ], !dbg !373
  call void @llvm.dbg.value(metadata i32 %.0, metadata !370, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 %.02, metadata !369, metadata !DIExpression()), !dbg !287
  %62 = icmp sle i32 %.0, 6, !dbg !374
  br i1 %62, label %63, label %84, !dbg !376

63:                                               ; preds = %61
  %64 = icmp sge i32 %.0, 5, !dbg !377
  br i1 %64, label %65, label %67, !dbg !379

65:                                               ; preds = %63
  %66 = sub nsw i32 %.0, 5, !dbg !380
  br label %68, !dbg !379

67:                                               ; preds = %63
  br label %68, !dbg !379

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ %.0, %67 ], !dbg !379
  call void @llvm.dbg.value(metadata i32 %69, metadata !381, metadata !DIExpression()), !dbg !382
  %70 = sext i32 %69 to i64, !dbg !383
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %70, !dbg !383
  %72 = load i32, i32* %71, align 4, !dbg !384
  %73 = add i32 %72, %.02, !dbg !384
  store i32 %73, i32* %71, align 4, !dbg !384
  %74 = sext i32 %69 to i64, !dbg !385
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %74, !dbg !385
  %76 = load i32, i32* %75, align 4, !dbg !385
  %77 = lshr i32 %76, 26, !dbg !386
  call void @llvm.dbg.value(metadata i32 %77, metadata !369, metadata !DIExpression()), !dbg !287
  %78 = sext i32 %69 to i64, !dbg !387
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %78, !dbg !387
  %80 = load i32, i32* %79, align 4, !dbg !388
  %81 = and i32 %80, 67108863, !dbg !388
  store i32 %81, i32* %79, align 4, !dbg !388
  br label %82, !dbg !389

82:                                               ; preds = %68
  %83 = add nsw i32 %.0, 1, !dbg !390
  call void @llvm.dbg.value(metadata i32 %83, metadata !370, metadata !DIExpression()), !dbg !287
  br label %61, !dbg !391, !llvm.loop !392

84:                                               ; preds = %61
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !394
  %86 = load i32, i32* %85, align 16, !dbg !394
  %87 = call i32 @GT(i32 %86, i32 67108858), !dbg !395
  call void @llvm.dbg.value(metadata i32 %87, metadata !396, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 1, metadata !370, metadata !DIExpression()), !dbg !287
  br label %88, !dbg !397

88:                                               ; preds = %96, %84
  %.01 = phi i32 [ %87, %84 ], [ %95, %96 ], !dbg !287
  %.1 = phi i32 [ 1, %84 ], [ %97, %96 ], !dbg !399
  call void @llvm.dbg.value(metadata i32 %.1, metadata !370, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 %.01, metadata !396, metadata !DIExpression()), !dbg !287
  %89 = icmp slt i32 %.1, 5, !dbg !400
  br i1 %89, label %90, label %98, !dbg !402

90:                                               ; preds = %88
  %91 = sext i32 %.1 to i64, !dbg !403
  %92 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %91, !dbg !403
  %93 = load i32, i32* %92, align 4, !dbg !403
  %94 = call i32 @EQ(i32 %93, i32 67108863), !dbg !405
  %95 = and i32 %.01, %94, !dbg !406
  call void @llvm.dbg.value(metadata i32 %95, metadata !396, metadata !DIExpression()), !dbg !287
  br label %96, !dbg !407

96:                                               ; preds = %90
  %97 = add nsw i32 %.1, 1, !dbg !408
  call void @llvm.dbg.value(metadata i32 %97, metadata !370, metadata !DIExpression()), !dbg !287
  br label %88, !dbg !409, !llvm.loop !410

98:                                               ; preds = %88
  call void @llvm.dbg.value(metadata i32 5, metadata !369, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 0, metadata !370, metadata !DIExpression()), !dbg !287
  br label %99, !dbg !412

99:                                               ; preds = %114, %98
  %.13 = phi i32 [ 5, %98 ], [ %106, %114 ], !dbg !287
  %.2 = phi i32 [ 0, %98 ], [ %115, %114 ], !dbg !414
  call void @llvm.dbg.value(metadata i32 %.2, metadata !370, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 %.13, metadata !369, metadata !DIExpression()), !dbg !287
  %100 = icmp slt i32 %.2, 5, !dbg !415
  br i1 %100, label %101, label %116, !dbg !417

101:                                              ; preds = %99
  %102 = sext i32 %.2 to i64, !dbg !418
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %102, !dbg !418
  %104 = load i32, i32* %103, align 4, !dbg !418
  %105 = add i32 %104, %.13, !dbg !420
  call void @llvm.dbg.value(metadata i32 %105, metadata !421, metadata !DIExpression()), !dbg !422
  %106 = lshr i32 %105, 26, !dbg !423
  call void @llvm.dbg.value(metadata i32 %106, metadata !369, metadata !DIExpression()), !dbg !287
  %107 = and i32 %105, 67108863, !dbg !424
  call void @llvm.dbg.value(metadata i32 %107, metadata !421, metadata !DIExpression()), !dbg !422
  %108 = sext i32 %.2 to i64, !dbg !425
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %108, !dbg !425
  %110 = load i32, i32* %109, align 4, !dbg !425
  %111 = call i32 @MUX(i32 %.01, i32 %107, i32 %110), !dbg !426
  %112 = sext i32 %.2 to i64, !dbg !427
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %112, !dbg !427
  store i32 %111, i32* %113, align 4, !dbg !428
  br label %114, !dbg !429

114:                                              ; preds = %101
  %115 = add nsw i32 %.2, 1, !dbg !430
  call void @llvm.dbg.value(metadata i32 %115, metadata !370, metadata !DIExpression()), !dbg !287
  br label %99, !dbg !431, !llvm.loop !432

116:                                              ; preds = %99
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !434
  %118 = load i32, i32* %117, align 16, !dbg !434
  %119 = zext i32 %118 to i64, !dbg !435
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 1, !dbg !436
  %121 = load i32, i32* %120, align 4, !dbg !436
  %122 = zext i32 %121 to i64, !dbg !437
  %123 = shl i64 %122, 26, !dbg !438
  %124 = add i64 %119, %123, !dbg !439
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !440
  %126 = getelementptr inbounds i8, i8* %125, i64 16, !dbg !441
  %127 = call i32 @br_dec32le.1(i8* %126), !dbg !442
  %128 = zext i32 %127 to i64, !dbg !442
  %129 = add i64 %124, %128, !dbg !443
  call void @llvm.dbg.value(metadata i64 %129, metadata !444, metadata !DIExpression()), !dbg !287
  %130 = trunc i64 %129 to i32, !dbg !445
  call void @br_enc32le.2(i8* %6, i32 %130), !dbg !446
  %131 = lshr i64 %129, 32, !dbg !447
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 2, !dbg !448
  %133 = load i32, i32* %132, align 8, !dbg !448
  %134 = zext i32 %133 to i64, !dbg !449
  %135 = shl i64 %134, 20, !dbg !450
  %136 = add i64 %131, %135, !dbg !451
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !452
  %138 = getelementptr inbounds i8, i8* %137, i64 20, !dbg !453
  %139 = call i32 @br_dec32le.1(i8* %138), !dbg !454
  %140 = zext i32 %139 to i64, !dbg !454
  %141 = add i64 %136, %140, !dbg !455
  call void @llvm.dbg.value(metadata i64 %141, metadata !444, metadata !DIExpression()), !dbg !287
  %142 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !456
  %143 = trunc i64 %141 to i32, !dbg !457
  call void @br_enc32le.2(i8* %142, i32 %143), !dbg !458
  %144 = lshr i64 %141, 32, !dbg !459
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3, !dbg !460
  %146 = load i32, i32* %145, align 4, !dbg !460
  %147 = zext i32 %146 to i64, !dbg !461
  %148 = shl i64 %147, 14, !dbg !462
  %149 = add i64 %144, %148, !dbg !463
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !464
  %151 = getelementptr inbounds i8, i8* %150, i64 24, !dbg !465
  %152 = call i32 @br_dec32le.1(i8* %151), !dbg !466
  %153 = zext i32 %152 to i64, !dbg !466
  %154 = add i64 %149, %153, !dbg !467
  call void @llvm.dbg.value(metadata i64 %154, metadata !444, metadata !DIExpression()), !dbg !287
  %155 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !468
  %156 = trunc i64 %154 to i32, !dbg !469
  call void @br_enc32le.2(i8* %155, i32 %156), !dbg !470
  %157 = lshr i64 %154, 32, !dbg !471
  %158 = trunc i64 %157 to i32, !dbg !472
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 4, !dbg !473
  %160 = load i32, i32* %159, align 16, !dbg !473
  %161 = shl i32 %160, 8, !dbg !474
  %162 = add i32 %158, %161, !dbg !475
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !476
  %164 = getelementptr inbounds i8, i8* %163, i64 28, !dbg !477
  %165 = call i32 @br_dec32le.1(i8* %164), !dbg !478
  %166 = add i32 %162, %165, !dbg !479
  call void @llvm.dbg.value(metadata i32 %166, metadata !480, metadata !DIExpression()), !dbg !287
  %167 = getelementptr inbounds i8, i8* %6, i64 12, !dbg !481
  call void @br_enc32le.2(i8* %167, i32 %166), !dbg !482
  %168 = icmp ne i32 %8, 0, !dbg !483
  br i1 %168, label %171, label %169, !dbg !485

169:                                              ; preds = %116
  %170 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !486
  br label %171, !dbg !488

171:                                              ; preds = %169, %116
  ret void, !dbg !489
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le.1(i8* %0) #0 !dbg !490 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !491, metadata !DIExpression()), !dbg !492
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !493
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !494
  %4 = load i32, i32* %3, align 4, !dbg !494
  ret i32 %4, !dbg !495
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64le(i8* %0, i64 %1) #0 !dbg !496 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 %1, metadata !501, metadata !DIExpression()), !dbg !500
  %3 = bitcast i8* %0 to %union.br_union_u64*, !dbg !502
  %4 = bitcast %union.br_union_u64* %3 to i64*, !dbg !503
  store i64 %1, i64* %4, align 8, !dbg !504
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner(i32* %0, i32* %1, i8* %2, i64 %3) #0 !dbg !506 {
  %5 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32* %1, metadata !513, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i8* %2, metadata !514, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 %3, metadata !515, metadata !DIExpression()), !dbg !512
  %6 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !516
  %7 = load i32, i32* %6, align 4, !dbg !516
  call void @llvm.dbg.value(metadata i32 %7, metadata !517, metadata !DIExpression()), !dbg !512
  %8 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !518
  %9 = load i32, i32* %8, align 4, !dbg !518
  call void @llvm.dbg.value(metadata i32 %9, metadata !519, metadata !DIExpression()), !dbg !512
  %10 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !520
  %11 = load i32, i32* %10, align 4, !dbg !520
  call void @llvm.dbg.value(metadata i32 %11, metadata !521, metadata !DIExpression()), !dbg !512
  %12 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !522
  %13 = load i32, i32* %12, align 4, !dbg !522
  call void @llvm.dbg.value(metadata i32 %13, metadata !523, metadata !DIExpression()), !dbg !512
  %14 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !524
  %15 = load i32, i32* %14, align 4, !dbg !524
  call void @llvm.dbg.value(metadata i32 %15, metadata !525, metadata !DIExpression()), !dbg !512
  %16 = mul i32 %9, 5, !dbg !526
  call void @llvm.dbg.value(metadata i32 %16, metadata !527, metadata !DIExpression()), !dbg !512
  %17 = mul i32 %11, 5, !dbg !528
  call void @llvm.dbg.value(metadata i32 %17, metadata !529, metadata !DIExpression()), !dbg !512
  %18 = mul i32 %13, 5, !dbg !530
  call void @llvm.dbg.value(metadata i32 %18, metadata !531, metadata !DIExpression()), !dbg !512
  %19 = mul i32 %15, 5, !dbg !532
  call void @llvm.dbg.value(metadata i32 %19, metadata !533, metadata !DIExpression()), !dbg !512
  %20 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !534
  %21 = load i32, i32* %20, align 4, !dbg !534
  call void @llvm.dbg.value(metadata i32 %21, metadata !535, metadata !DIExpression()), !dbg !512
  %22 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !536
  %23 = load i32, i32* %22, align 4, !dbg !536
  call void @llvm.dbg.value(metadata i32 %23, metadata !537, metadata !DIExpression()), !dbg !512
  %24 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !538
  %25 = load i32, i32* %24, align 4, !dbg !538
  call void @llvm.dbg.value(metadata i32 %25, metadata !539, metadata !DIExpression()), !dbg !512
  %26 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !540
  %27 = load i32, i32* %26, align 4, !dbg !540
  call void @llvm.dbg.value(metadata i32 %27, metadata !541, metadata !DIExpression()), !dbg !512
  %28 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !542
  %29 = load i32, i32* %28, align 4, !dbg !542
  call void @llvm.dbg.value(metadata i32 %29, metadata !543, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i8* %2, metadata !544, metadata !DIExpression()), !dbg !512
  br label %30, !dbg !545

30:                                               ; preds = %38, %4
  %.07 = phi i32 [ %23, %4 ], [ %180, %38 ], !dbg !512
  %.06 = phi i32 [ %21, %4 ], [ %181, %38 ], !dbg !512
  %.04 = phi i8* [ %2, %4 ], [ %182, %38 ], !dbg !512
  %.03 = phi i64 [ %3, %4 ], [ %183, %38 ]
  %.02 = phi i32 [ %25, %4 ], [ %167, %38 ], !dbg !512
  %.01 = phi i32 [ %27, %4 ], [ %171, %38 ], !dbg !512
  %.0 = phi i32 [ %29, %4 ], [ %175, %38 ], !dbg !512
  call void @llvm.dbg.value(metadata i32 %.0, metadata !543, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %.01, metadata !541, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %.02, metadata !539, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 %.03, metadata !515, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i8* %.04, metadata !544, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %.06, metadata !535, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %.07, metadata !537, metadata !DIExpression()), !dbg !512
  %31 = icmp ugt i64 %.03, 0, !dbg !546
  br i1 %31, label %32, label %184, !dbg !545

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !547, metadata !DIExpression()), !dbg !549
  %33 = icmp ult i64 %.03, 16, !dbg !550
  br i1 %33, label %34, label %38, !dbg !552

34:                                               ; preds = %32
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !553
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 16, i1 false), !dbg !553
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !555
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 1 %.04, i64 %.03, i1 false), !dbg !555
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !556
  call void @llvm.dbg.value(metadata i8* %37, metadata !544, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 16, metadata !515, metadata !DIExpression()), !dbg !512
  br label %38, !dbg !557

38:                                               ; preds = %34, %32
  %.15 = phi i8* [ %37, %34 ], [ %.04, %32 ], !dbg !512
  %.1 = phi i64 [ 16, %34 ], [ %.03, %32 ]
  call void @llvm.dbg.value(metadata i64 %.1, metadata !515, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i8* %.15, metadata !544, metadata !DIExpression()), !dbg !512
  %39 = call i32 @br_dec32le.1(i8* %.15), !dbg !558
  %40 = and i32 %39, 67108863, !dbg !559
  %41 = add i32 %.06, %40, !dbg !560
  call void @llvm.dbg.value(metadata i32 %41, metadata !535, metadata !DIExpression()), !dbg !512
  %42 = getelementptr inbounds i8, i8* %.15, i64 3, !dbg !561
  %43 = call i32 @br_dec32le.1(i8* %42), !dbg !562
  %44 = lshr i32 %43, 2, !dbg !563
  %45 = and i32 %44, 67108863, !dbg !564
  %46 = add i32 %.07, %45, !dbg !565
  call void @llvm.dbg.value(metadata i32 %46, metadata !537, metadata !DIExpression()), !dbg !512
  %47 = getelementptr inbounds i8, i8* %.15, i64 6, !dbg !566
  %48 = call i32 @br_dec32le.1(i8* %47), !dbg !567
  %49 = lshr i32 %48, 4, !dbg !568
  %50 = and i32 %49, 67108863, !dbg !569
  %51 = add i32 %.02, %50, !dbg !570
  call void @llvm.dbg.value(metadata i32 %51, metadata !539, metadata !DIExpression()), !dbg !512
  %52 = getelementptr inbounds i8, i8* %.15, i64 9, !dbg !571
  %53 = call i32 @br_dec32le.1(i8* %52), !dbg !572
  %54 = lshr i32 %53, 6, !dbg !573
  %55 = and i32 %54, 67108863, !dbg !574
  %56 = add i32 %.01, %55, !dbg !575
  call void @llvm.dbg.value(metadata i32 %56, metadata !541, metadata !DIExpression()), !dbg !512
  %57 = getelementptr inbounds i8, i8* %.15, i64 12, !dbg !576
  %58 = call i32 @br_dec32le.1(i8* %57), !dbg !577
  %59 = lshr i32 %58, 8, !dbg !578
  %60 = or i32 %59, 16777216, !dbg !579
  %61 = add i32 %.0, %60, !dbg !580
  call void @llvm.dbg.value(metadata i32 %61, metadata !543, metadata !DIExpression()), !dbg !512
  %62 = zext i32 %41 to i64, !dbg !581
  %63 = zext i32 %7 to i64, !dbg !581
  %64 = mul i64 %62, %63, !dbg !581
  %65 = zext i32 %46 to i64, !dbg !582
  %66 = zext i32 %19 to i64, !dbg !582
  %67 = mul i64 %65, %66, !dbg !582
  %68 = add i64 %64, %67, !dbg !583
  %69 = zext i32 %51 to i64, !dbg !584
  %70 = zext i32 %18 to i64, !dbg !584
  %71 = mul i64 %69, %70, !dbg !584
  %72 = add i64 %68, %71, !dbg !585
  %73 = zext i32 %56 to i64, !dbg !586
  %74 = zext i32 %17 to i64, !dbg !586
  %75 = mul i64 %73, %74, !dbg !586
  %76 = add i64 %72, %75, !dbg !587
  %77 = zext i32 %61 to i64, !dbg !588
  %78 = zext i32 %16 to i64, !dbg !588
  %79 = mul i64 %77, %78, !dbg !588
  %80 = add i64 %76, %79, !dbg !589
  call void @llvm.dbg.value(metadata i64 %80, metadata !590, metadata !DIExpression()), !dbg !591
  %81 = zext i32 %41 to i64, !dbg !592
  %82 = zext i32 %9 to i64, !dbg !592
  %83 = mul i64 %81, %82, !dbg !592
  %84 = zext i32 %46 to i64, !dbg !593
  %85 = zext i32 %7 to i64, !dbg !593
  %86 = mul i64 %84, %85, !dbg !593
  %87 = add i64 %83, %86, !dbg !594
  %88 = zext i32 %51 to i64, !dbg !595
  %89 = zext i32 %19 to i64, !dbg !595
  %90 = mul i64 %88, %89, !dbg !595
  %91 = add i64 %87, %90, !dbg !596
  %92 = zext i32 %56 to i64, !dbg !597
  %93 = zext i32 %18 to i64, !dbg !597
  %94 = mul i64 %92, %93, !dbg !597
  %95 = add i64 %91, %94, !dbg !598
  %96 = zext i32 %61 to i64, !dbg !599
  %97 = zext i32 %17 to i64, !dbg !599
  %98 = mul i64 %96, %97, !dbg !599
  %99 = add i64 %95, %98, !dbg !600
  call void @llvm.dbg.value(metadata i64 %99, metadata !601, metadata !DIExpression()), !dbg !591
  %100 = zext i32 %41 to i64, !dbg !602
  %101 = zext i32 %11 to i64, !dbg !602
  %102 = mul i64 %100, %101, !dbg !602
  %103 = zext i32 %46 to i64, !dbg !603
  %104 = zext i32 %9 to i64, !dbg !603
  %105 = mul i64 %103, %104, !dbg !603
  %106 = add i64 %102, %105, !dbg !604
  %107 = zext i32 %51 to i64, !dbg !605
  %108 = zext i32 %7 to i64, !dbg !605
  %109 = mul i64 %107, %108, !dbg !605
  %110 = add i64 %106, %109, !dbg !606
  %111 = zext i32 %56 to i64, !dbg !607
  %112 = zext i32 %19 to i64, !dbg !607
  %113 = mul i64 %111, %112, !dbg !607
  %114 = add i64 %110, %113, !dbg !608
  %115 = zext i32 %61 to i64, !dbg !609
  %116 = zext i32 %18 to i64, !dbg !609
  %117 = mul i64 %115, %116, !dbg !609
  %118 = add i64 %114, %117, !dbg !610
  call void @llvm.dbg.value(metadata i64 %118, metadata !611, metadata !DIExpression()), !dbg !591
  %119 = zext i32 %41 to i64, !dbg !612
  %120 = zext i32 %13 to i64, !dbg !612
  %121 = mul i64 %119, %120, !dbg !612
  %122 = zext i32 %46 to i64, !dbg !613
  %123 = zext i32 %11 to i64, !dbg !613
  %124 = mul i64 %122, %123, !dbg !613
  %125 = add i64 %121, %124, !dbg !614
  %126 = zext i32 %51 to i64, !dbg !615
  %127 = zext i32 %9 to i64, !dbg !615
  %128 = mul i64 %126, %127, !dbg !615
  %129 = add i64 %125, %128, !dbg !616
  %130 = zext i32 %56 to i64, !dbg !617
  %131 = zext i32 %7 to i64, !dbg !617
  %132 = mul i64 %130, %131, !dbg !617
  %133 = add i64 %129, %132, !dbg !618
  %134 = zext i32 %61 to i64, !dbg !619
  %135 = zext i32 %19 to i64, !dbg !619
  %136 = mul i64 %134, %135, !dbg !619
  %137 = add i64 %133, %136, !dbg !620
  call void @llvm.dbg.value(metadata i64 %137, metadata !621, metadata !DIExpression()), !dbg !591
  %138 = zext i32 %41 to i64, !dbg !622
  %139 = zext i32 %15 to i64, !dbg !622
  %140 = mul i64 %138, %139, !dbg !622
  %141 = zext i32 %46 to i64, !dbg !623
  %142 = zext i32 %13 to i64, !dbg !623
  %143 = mul i64 %141, %142, !dbg !623
  %144 = add i64 %140, %143, !dbg !624
  %145 = zext i32 %51 to i64, !dbg !625
  %146 = zext i32 %11 to i64, !dbg !625
  %147 = mul i64 %145, %146, !dbg !625
  %148 = add i64 %144, %147, !dbg !626
  %149 = zext i32 %56 to i64, !dbg !627
  %150 = zext i32 %9 to i64, !dbg !627
  %151 = mul i64 %149, %150, !dbg !627
  %152 = add i64 %148, %151, !dbg !628
  %153 = zext i32 %61 to i64, !dbg !629
  %154 = zext i32 %7 to i64, !dbg !629
  %155 = mul i64 %153, %154, !dbg !629
  %156 = add i64 %152, %155, !dbg !630
  call void @llvm.dbg.value(metadata i64 %156, metadata !631, metadata !DIExpression()), !dbg !591
  %157 = lshr i64 %80, 26, !dbg !632
  call void @llvm.dbg.value(metadata i64 %157, metadata !633, metadata !DIExpression()), !dbg !591
  %158 = trunc i64 %80 to i32, !dbg !634
  %159 = and i32 %158, 67108863, !dbg !635
  call void @llvm.dbg.value(metadata i32 %159, metadata !535, metadata !DIExpression()), !dbg !512
  %160 = add i64 %99, %157, !dbg !636
  call void @llvm.dbg.value(metadata i64 %160, metadata !601, metadata !DIExpression()), !dbg !591
  %161 = lshr i64 %160, 26, !dbg !637
  call void @llvm.dbg.value(metadata i64 %161, metadata !633, metadata !DIExpression()), !dbg !591
  %162 = trunc i64 %160 to i32, !dbg !638
  %163 = and i32 %162, 67108863, !dbg !639
  call void @llvm.dbg.value(metadata i32 %163, metadata !537, metadata !DIExpression()), !dbg !512
  %164 = add i64 %118, %161, !dbg !640
  call void @llvm.dbg.value(metadata i64 %164, metadata !611, metadata !DIExpression()), !dbg !591
  %165 = lshr i64 %164, 26, !dbg !641
  call void @llvm.dbg.value(metadata i64 %165, metadata !633, metadata !DIExpression()), !dbg !591
  %166 = trunc i64 %164 to i32, !dbg !642
  %167 = and i32 %166, 67108863, !dbg !643
  call void @llvm.dbg.value(metadata i32 %167, metadata !539, metadata !DIExpression()), !dbg !512
  %168 = add i64 %137, %165, !dbg !644
  call void @llvm.dbg.value(metadata i64 %168, metadata !621, metadata !DIExpression()), !dbg !591
  %169 = lshr i64 %168, 26, !dbg !645
  call void @llvm.dbg.value(metadata i64 %169, metadata !633, metadata !DIExpression()), !dbg !591
  %170 = trunc i64 %168 to i32, !dbg !646
  %171 = and i32 %170, 67108863, !dbg !647
  call void @llvm.dbg.value(metadata i32 %171, metadata !541, metadata !DIExpression()), !dbg !512
  %172 = add i64 %156, %169, !dbg !648
  call void @llvm.dbg.value(metadata i64 %172, metadata !631, metadata !DIExpression()), !dbg !591
  %173 = lshr i64 %172, 26, !dbg !649
  call void @llvm.dbg.value(metadata i64 %173, metadata !633, metadata !DIExpression()), !dbg !591
  %174 = trunc i64 %172 to i32, !dbg !650
  %175 = and i32 %174, 67108863, !dbg !651
  call void @llvm.dbg.value(metadata i32 %175, metadata !543, metadata !DIExpression()), !dbg !512
  %176 = trunc i64 %173 to i32, !dbg !652
  %177 = mul i32 %176, 5, !dbg !653
  %178 = add i32 %159, %177, !dbg !654
  call void @llvm.dbg.value(metadata i32 %178, metadata !535, metadata !DIExpression()), !dbg !512
  %179 = lshr i32 %178, 26, !dbg !655
  %180 = add i32 %163, %179, !dbg !656
  call void @llvm.dbg.value(metadata i32 %180, metadata !537, metadata !DIExpression()), !dbg !512
  %181 = and i32 %178, 67108863, !dbg !657
  call void @llvm.dbg.value(metadata i32 %181, metadata !535, metadata !DIExpression()), !dbg !512
  %182 = getelementptr inbounds i8, i8* %.15, i64 16, !dbg !658
  call void @llvm.dbg.value(metadata i8* %182, metadata !544, metadata !DIExpression()), !dbg !512
  %183 = sub i64 %.1, 16, !dbg !659
  call void @llvm.dbg.value(metadata i64 %183, metadata !515, metadata !DIExpression()), !dbg !512
  br label %30, !dbg !545, !llvm.loop !660

184:                                              ; preds = %30
  %185 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !662
  store i32 %.06, i32* %185, align 4, !dbg !663
  %186 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !664
  store i32 %.07, i32* %186, align 4, !dbg !665
  %187 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !666
  store i32 %.02, i32* %187, align 4, !dbg !667
  %188 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !668
  store i32 %.01, i32* %188, align 4, !dbg !669
  %189 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !670
  store i32 %.0, i32* %189, align 4, !dbg !671
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !673 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !676, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %1, metadata !678, metadata !DIExpression()), !dbg !677
  %3 = sub i32 %1, %0, !dbg !679
  call void @llvm.dbg.value(metadata i32 %3, metadata !680, metadata !DIExpression()), !dbg !677
  %4 = xor i32 %0, %1, !dbg !681
  %5 = xor i32 %0, %3, !dbg !682
  %6 = and i32 %4, %5, !dbg !683
  %7 = xor i32 %3, %6, !dbg !684
  %8 = lshr i32 %7, 31, !dbg !685
  ret i32 %8, !dbg !686
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !687 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !688, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata i32 %1, metadata !690, metadata !DIExpression()), !dbg !689
  %3 = xor i32 %0, %1, !dbg !691
  call void @llvm.dbg.value(metadata i32 %3, metadata !692, metadata !DIExpression()), !dbg !689
  %4 = sub i32 0, %3, !dbg !693
  %5 = or i32 %3, %4, !dbg !694
  %6 = lshr i32 %5, 31, !dbg !695
  %7 = call i32 @NOT(i32 %6), !dbg !696
  ret i32 %7, !dbg !697
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !698 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !701, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata i32 %1, metadata !703, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata i32 %2, metadata !704, metadata !DIExpression()), !dbg !702
  %4 = sub i32 0, %0, !dbg !705
  %5 = xor i32 %1, %2, !dbg !706
  %6 = and i32 %4, %5, !dbg !707
  %7 = xor i32 %2, %6, !dbg !708
  ret i32 %7, !dbg !709
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le.2(i8* %0, i32 %1) #0 !dbg !710 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !711, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i32 %1, metadata !713, metadata !DIExpression()), !dbg !712
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !714
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !715
  store i32 %1, i32* %4, align 4, !dbg !716
  ret void, !dbg !717
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !721, metadata !DIExpression()), !dbg !722
  %2 = xor i32 %0, 1, !dbg !723
  ret i32 %2, !dbg !724
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !725 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !726, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8* %1, metadata !728, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8* %2, metadata !729, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i64 %3, metadata !730, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8* %4, metadata !731, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i64 %5, metadata !732, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8* %6, metadata !733, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !734, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32 %8, metadata !735, metadata !DIExpression()), !dbg !727
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !736
  call void @public_in(%struct.smack_value* %10), !dbg !737
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !738
  call void @public_in(%struct.smack_value* %11), !dbg !739
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !740
  call void @public_in(%struct.smack_value* %12), !dbg !741
  %13 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !742
  call void @public_in(%struct.smack_value* %13), !dbg !743
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !744
  call void @public_in(%struct.smack_value* %14), !dbg !745
  %15 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %5), !dbg !746
  call void @public_in(%struct.smack_value* %15), !dbg !747
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !748
  call void @public_in(%struct.smack_value* %16), !dbg !749
  %17 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %8), !dbg !750
  call void @public_in(%struct.smack_value* %17), !dbg !751
  %18 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !752
  call void @public_in(%struct.smack_value* %18), !dbg !753
  %19 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !754
  call void @public_in(%struct.smack_value* %19), !dbg !755
  %20 = call %struct.smack_value* (i8*, i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, i32, ...)*)(i8* %4, i32 32), !dbg !756
  call void @public_in(%struct.smack_value* %20), !dbg !757
  call void @br_poly1305_ctmul_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 %8), !dbg !758
  ret void, !dbg !759
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper_t() #0 !dbg !760 {
  %1 = call i8* (...) @getvoid1(), !dbg !763
  call void @llvm.dbg.value(metadata i8* %1, metadata !764, metadata !DIExpression()), !dbg !765
  %2 = call i8* (...) @getvoid2(), !dbg !766
  call void @llvm.dbg.value(metadata i8* %2, metadata !767, metadata !DIExpression()), !dbg !765
  %3 = call i8* (...) @getvoid5(), !dbg !768
  call void @llvm.dbg.value(metadata i8* %3, metadata !769, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i64 32, metadata !770, metadata !DIExpression()), !dbg !765
  %4 = call i8* (...) @getvoid3(), !dbg !771
  call void @llvm.dbg.value(metadata i8* %4, metadata !772, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i64 32, metadata !773, metadata !DIExpression()), !dbg !765
  %5 = call i8* (...) @getvoid6(), !dbg !774
  call void @llvm.dbg.value(metadata i8* %5, metadata !775, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i32 1, metadata !776, metadata !DIExpression()), !dbg !765
  call void @br_poly1305_ctmul_run(i8* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 1), !dbg !777
  ret void, !dbg !778
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

!llvm.dbg.cu = !{!17, !38, !61}
!llvm.ident = !{!63, !63, !63}
!llvm.module.flags = !{!64, !65, !66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CW", scope: !2, file: !3, line: 36, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "br_chacha20_ct_run", scope: !3, file: !3, line: 29, type: !4, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/chacha20_ct.c", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20")
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
!26 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20")
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
!39 = !DIFile(filename: "../BearSSL/src/symcipher/poly1305_ctmul.c", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20")
!40 = !{!41, !43, !6, !44, !51, !60}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !16)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u32", file: !26, line: 480, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 477, size: 32, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !47, file: !26, line: 478, baseType: !6, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !47, file: !26, line: 479, baseType: !31, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u64", file: !26, line: 485, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 482, size: 64, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !53, file: !26, line: 483, baseType: !41, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !53, file: !26, line: 484, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 8)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "run.c", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20")
!63 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!64 = !{i32 7, !"Dwarf Version", i32 4}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 29, type: !11)
!68 = !DILocation(line: 0, scope: !2)
!69 = !DILocalVariable(name: "iv", arg: 2, scope: !2, file: !3, line: 30, type: !11)
!70 = !DILocalVariable(name: "cc", arg: 3, scope: !2, file: !3, line: 30, type: !6)
!71 = !DILocalVariable(name: "data", arg: 4, scope: !2, file: !3, line: 30, type: !13)
!72 = !DILocalVariable(name: "len", arg: 5, scope: !2, file: !3, line: 30, type: !14)
!73 = !DILocalVariable(name: "kw", scope: !2, file: !3, line: 33, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !58)
!75 = !DILocation(line: 33, column: 11, scope: !2)
!76 = !DILocalVariable(name: "ivw", scope: !2, file: !3, line: 33, type: !77)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 3)
!80 = !DILocation(line: 33, column: 18, scope: !2)
!81 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 32, type: !43)
!82 = !DILocalVariable(name: "u", scope: !2, file: !3, line: 34, type: !14)
!83 = !DILocation(line: 41, column: 7, scope: !84)
!84 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!85 = !DILocation(line: 0, scope: !84)
!86 = !DILocation(line: 41, column: 16, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !3, line: 41, column: 2)
!88 = !DILocation(line: 41, column: 2, scope: !84)
!89 = !DILocation(line: 42, column: 54, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !3, line: 41, column: 27)
!91 = !DILocation(line: 42, column: 49, scope: !90)
!92 = !DILocation(line: 42, column: 11, scope: !90)
!93 = !DILocation(line: 42, column: 3, scope: !90)
!94 = !DILocation(line: 42, column: 9, scope: !90)
!95 = !DILocation(line: 43, column: 2, scope: !90)
!96 = !DILocation(line: 41, column: 23, scope: !87)
!97 = !DILocation(line: 41, column: 2, scope: !87)
!98 = distinct !{!98, !88, !99, !100}
!99 = !DILocation(line: 43, column: 2, scope: !84)
!100 = !{!"llvm.loop.mustprogress"}
!101 = !DILocation(line: 44, column: 7, scope: !102)
!102 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 2)
!103 = !DILocation(line: 0, scope: !102)
!104 = !DILocation(line: 44, column: 16, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !3, line: 44, column: 2)
!106 = !DILocation(line: 44, column: 2, scope: !102)
!107 = !DILocation(line: 45, column: 54, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !3, line: 44, column: 27)
!109 = !DILocation(line: 45, column: 49, scope: !108)
!110 = !DILocation(line: 45, column: 12, scope: !108)
!111 = !DILocation(line: 45, column: 3, scope: !108)
!112 = !DILocation(line: 45, column: 10, scope: !108)
!113 = !DILocation(line: 46, column: 2, scope: !108)
!114 = !DILocation(line: 44, column: 23, scope: !105)
!115 = !DILocation(line: 44, column: 2, scope: !105)
!116 = distinct !{!116, !106, !117, !100}
!117 = !DILocation(line: 46, column: 2, scope: !102)
!118 = !DILocation(line: 47, column: 2, scope: !2)
!119 = !DILocation(line: 47, column: 13, scope: !2)
!120 = !DILocalVariable(name: "state", scope: !121, file: !3, line: 48, type: !122)
!121 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 18)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 16)
!125 = !DILocation(line: 48, column: 12, scope: !121)
!126 = !DILocalVariable(name: "tmp", scope: !121, file: !3, line: 51, type: !127)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 64)
!130 = !DILocation(line: 51, column: 17, scope: !121)
!131 = !DILocation(line: 53, column: 11, scope: !121)
!132 = !DILocation(line: 53, column: 3, scope: !121)
!133 = !DILocation(line: 54, column: 11, scope: !121)
!134 = !DILocation(line: 54, column: 3, scope: !121)
!135 = !DILocation(line: 55, column: 3, scope: !121)
!136 = !DILocation(line: 55, column: 13, scope: !121)
!137 = !DILocation(line: 56, column: 11, scope: !121)
!138 = !DILocation(line: 56, column: 3, scope: !121)
!139 = !DILocalVariable(name: "i", scope: !121, file: !3, line: 49, type: !140)
!140 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!141 = !DILocation(line: 0, scope: !121)
!142 = !DILocation(line: 57, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !121, file: !3, line: 57, column: 3)
!144 = !DILocation(line: 0, scope: !143)
!145 = !DILocation(line: 57, column: 17, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !3, line: 57, column: 3)
!147 = !DILocation(line: 57, column: 3, scope: !143)
!148 = !DILocation(line: 74, column: 4, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !3, line: 57, column: 29)
!150 = !DILocation(line: 74, column: 4, scope: !151)
!151 = distinct !DILexicalBlock(scope: !149, file: !3, line: 74, column: 4)
!152 = !DILocation(line: 75, column: 4, scope: !149)
!153 = !DILocation(line: 75, column: 4, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !3, line: 75, column: 4)
!155 = !DILocation(line: 76, column: 4, scope: !149)
!156 = !DILocation(line: 76, column: 4, scope: !157)
!157 = distinct !DILexicalBlock(scope: !149, file: !3, line: 76, column: 4)
!158 = !DILocation(line: 77, column: 4, scope: !149)
!159 = !DILocation(line: 77, column: 4, scope: !160)
!160 = distinct !DILexicalBlock(scope: !149, file: !3, line: 77, column: 4)
!161 = !DILocation(line: 78, column: 4, scope: !149)
!162 = !DILocation(line: 78, column: 4, scope: !163)
!163 = distinct !DILexicalBlock(scope: !149, file: !3, line: 78, column: 4)
!164 = !DILocation(line: 79, column: 4, scope: !149)
!165 = !DILocation(line: 79, column: 4, scope: !166)
!166 = distinct !DILexicalBlock(scope: !149, file: !3, line: 79, column: 4)
!167 = !DILocation(line: 80, column: 4, scope: !149)
!168 = !DILocation(line: 80, column: 4, scope: !169)
!169 = distinct !DILexicalBlock(scope: !149, file: !3, line: 80, column: 4)
!170 = !DILocation(line: 81, column: 4, scope: !149)
!171 = !DILocation(line: 81, column: 4, scope: !172)
!172 = distinct !DILexicalBlock(scope: !149, file: !3, line: 81, column: 4)
!173 = !DILocation(line: 85, column: 3, scope: !149)
!174 = !DILocation(line: 57, column: 25, scope: !146)
!175 = !DILocation(line: 57, column: 3, scope: !146)
!176 = distinct !{!176, !147, !177, !100}
!177 = !DILocation(line: 85, column: 3, scope: !143)
!178 = !DILocation(line: 86, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !121, file: !3, line: 86, column: 3)
!180 = !DILocation(line: 0, scope: !179)
!181 = !DILocation(line: 86, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !3, line: 86, column: 3)
!183 = !DILocation(line: 86, column: 3, scope: !179)
!184 = !DILocation(line: 87, column: 22, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 86, column: 28)
!186 = !DILocation(line: 87, column: 16, scope: !185)
!187 = !DILocation(line: 87, column: 29, scope: !185)
!188 = !DILocation(line: 87, column: 40, scope: !185)
!189 = !DILocation(line: 87, column: 38, scope: !185)
!190 = !DILocation(line: 87, column: 4, scope: !185)
!191 = !DILocation(line: 88, column: 3, scope: !185)
!192 = !DILocation(line: 86, column: 24, scope: !182)
!193 = !DILocation(line: 86, column: 3, scope: !182)
!194 = distinct !{!194, !183, !195, !100}
!195 = !DILocation(line: 88, column: 3, scope: !179)
!196 = !DILocation(line: 89, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !121, file: !3, line: 89, column: 3)
!198 = !DILocation(line: 0, scope: !197)
!199 = !DILocation(line: 89, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !3, line: 89, column: 3)
!201 = !DILocation(line: 89, column: 3, scope: !197)
!202 = !DILocation(line: 90, column: 22, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 89, column: 29)
!204 = !DILocation(line: 90, column: 16, scope: !203)
!205 = !DILocation(line: 90, column: 29, scope: !203)
!206 = !DILocation(line: 90, column: 45, scope: !203)
!207 = !DILocation(line: 90, column: 40, scope: !203)
!208 = !DILocation(line: 90, column: 38, scope: !203)
!209 = !DILocation(line: 90, column: 4, scope: !203)
!210 = !DILocation(line: 91, column: 3, scope: !203)
!211 = !DILocation(line: 89, column: 25, scope: !200)
!212 = !DILocation(line: 89, column: 3, scope: !200)
!213 = distinct !{!213, !201, !214, !100}
!214 = !DILocation(line: 91, column: 3, scope: !197)
!215 = !DILocation(line: 92, column: 15, scope: !121)
!216 = !DILocation(line: 92, column: 24, scope: !121)
!217 = !DILocation(line: 92, column: 34, scope: !121)
!218 = !DILocation(line: 92, column: 3, scope: !121)
!219 = !DILocation(line: 93, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !121, file: !3, line: 93, column: 3)
!221 = !DILocation(line: 0, scope: !220)
!222 = !DILocation(line: 93, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 93, column: 3)
!224 = !DILocation(line: 93, column: 3, scope: !220)
!225 = !DILocation(line: 94, column: 22, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !3, line: 93, column: 30)
!227 = !DILocation(line: 94, column: 16, scope: !226)
!228 = !DILocation(line: 94, column: 29, scope: !226)
!229 = !DILocation(line: 94, column: 46, scope: !226)
!230 = !DILocation(line: 94, column: 40, scope: !226)
!231 = !DILocation(line: 94, column: 38, scope: !226)
!232 = !DILocation(line: 94, column: 4, scope: !226)
!233 = !DILocation(line: 95, column: 3, scope: !226)
!234 = !DILocation(line: 93, column: 26, scope: !223)
!235 = !DILocation(line: 93, column: 3, scope: !223)
!236 = distinct !{!236, !224, !237, !100}
!237 = !DILocation(line: 95, column: 3, scope: !220)
!238 = !DILocation(line: 97, column: 14, scope: !121)
!239 = !DILocation(line: 97, column: 10, scope: !121)
!240 = !DILocalVariable(name: "clen", scope: !121, file: !3, line: 50, type: !14)
!241 = !DILocation(line: 98, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !121, file: !3, line: 98, column: 3)
!243 = !DILocation(line: 0, scope: !242)
!244 = !DILocation(line: 98, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !3, line: 98, column: 3)
!246 = !DILocation(line: 98, column: 3, scope: !242)
!247 = !DILocation(line: 99, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !3, line: 98, column: 31)
!249 = !DILocation(line: 99, column: 4, scope: !248)
!250 = !DILocation(line: 99, column: 11, scope: !248)
!251 = !DILocation(line: 100, column: 3, scope: !248)
!252 = !DILocation(line: 98, column: 27, scope: !245)
!253 = !DILocation(line: 98, column: 3, scope: !245)
!254 = distinct !{!254, !246, !255, !100}
!255 = !DILocation(line: 100, column: 3, scope: !242)
!256 = !DILocation(line: 101, column: 7, scope: !121)
!257 = !DILocation(line: 102, column: 7, scope: !121)
!258 = !DILocation(line: 103, column: 6, scope: !121)
!259 = distinct !{!259, !118, !260, !100}
!260 = !DILocation(line: 104, column: 2, scope: !2)
!261 = !DILocation(line: 105, column: 2, scope: !2)
!262 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !263, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!263 = !DISubroutineType(types: !264)
!264 = !{!6, !11}
!265 = !DILocalVariable(name: "src", arg: 1, scope: !262, file: !26, line: 574, type: !11)
!266 = !DILocation(line: 0, scope: !262)
!267 = !DILocation(line: 577, column: 10, scope: !262)
!268 = !DILocation(line: 577, column: 38, scope: !262)
!269 = !DILocation(line: 577, column: 2, scope: !262)
!270 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !271, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !13, !6}
!273 = !DILocalVariable(name: "dst", arg: 1, scope: !270, file: !26, line: 542, type: !13)
!274 = !DILocation(line: 0, scope: !270)
!275 = !DILocalVariable(name: "x", arg: 2, scope: !270, file: !26, line: 542, type: !6)
!276 = !DILocation(line: 545, column: 3, scope: !270)
!277 = !DILocation(line: 545, column: 25, scope: !270)
!278 = !DILocation(line: 545, column: 27, scope: !270)
!279 = !DILocation(line: 555, column: 1, scope: !270)
!280 = distinct !DISubprogram(name: "br_poly1305_ctmul_run", scope: !39, file: !39, line: 148, type: !281, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !18)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !11, !11, !13, !14, !11, !14, !13, !283, !140}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_chacha20_run", file: !284, line: 2442, baseType: !285)
!284 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20")
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!286 = !DILocalVariable(name: "key", arg: 1, scope: !280, file: !39, line: 148, type: !11)
!287 = !DILocation(line: 0, scope: !280)
!288 = !DILocalVariable(name: "iv", arg: 2, scope: !280, file: !39, line: 148, type: !11)
!289 = !DILocalVariable(name: "data", arg: 3, scope: !280, file: !39, line: 149, type: !13)
!290 = !DILocalVariable(name: "len", arg: 4, scope: !280, file: !39, line: 149, type: !14)
!291 = !DILocalVariable(name: "aad", arg: 5, scope: !280, file: !39, line: 149, type: !11)
!292 = !DILocalVariable(name: "aad_len", arg: 6, scope: !280, file: !39, line: 149, type: !14)
!293 = !DILocalVariable(name: "tag", arg: 7, scope: !280, file: !39, line: 150, type: !13)
!294 = !DILocalVariable(name: "ichacha", arg: 8, scope: !280, file: !39, line: 150, type: !283)
!295 = !DILocalVariable(name: "encrypt", arg: 9, scope: !280, file: !39, line: 150, type: !140)
!296 = !DILocalVariable(name: "pkey", scope: !280, file: !39, line: 152, type: !297)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 32)
!300 = !DILocation(line: 152, column: 16, scope: !280)
!301 = !DILocalVariable(name: "foot", scope: !280, file: !39, line: 152, type: !302)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !123)
!303 = !DILocation(line: 152, column: 26, scope: !280)
!304 = !DILocalVariable(name: "r", scope: !280, file: !39, line: 153, type: !305)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 5)
!308 = !DILocation(line: 153, column: 11, scope: !280)
!309 = !DILocalVariable(name: "acc", scope: !280, file: !39, line: 153, type: !305)
!310 = !DILocation(line: 153, column: 17, scope: !280)
!311 = !DILocation(line: 161, column: 2, scope: !280)
!312 = !DILocation(line: 162, column: 22, scope: !280)
!313 = !DILocation(line: 162, column: 2, scope: !280)
!314 = !DILocation(line: 168, column: 6, scope: !315)
!315 = distinct !DILexicalBlock(scope: !280, file: !39, line: 168, column: 6)
!316 = !DILocation(line: 168, column: 6, scope: !280)
!317 = !DILocation(line: 169, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !39, line: 168, column: 15)
!319 = !DILocation(line: 170, column: 2, scope: !318)
!320 = !DILocation(line: 183, column: 20, scope: !280)
!321 = !DILocation(line: 183, column: 9, scope: !280)
!322 = !DILocation(line: 183, column: 26, scope: !280)
!323 = !DILocation(line: 183, column: 2, scope: !280)
!324 = !DILocation(line: 183, column: 7, scope: !280)
!325 = !DILocation(line: 184, column: 21, scope: !280)
!326 = !DILocation(line: 184, column: 26, scope: !280)
!327 = !DILocation(line: 184, column: 10, scope: !280)
!328 = !DILocation(line: 184, column: 32, scope: !280)
!329 = !DILocation(line: 184, column: 38, scope: !280)
!330 = !DILocation(line: 184, column: 2, scope: !280)
!331 = !DILocation(line: 184, column: 7, scope: !280)
!332 = !DILocation(line: 185, column: 21, scope: !280)
!333 = !DILocation(line: 185, column: 26, scope: !280)
!334 = !DILocation(line: 185, column: 10, scope: !280)
!335 = !DILocation(line: 185, column: 32, scope: !280)
!336 = !DILocation(line: 185, column: 38, scope: !280)
!337 = !DILocation(line: 185, column: 2, scope: !280)
!338 = !DILocation(line: 185, column: 7, scope: !280)
!339 = !DILocation(line: 186, column: 21, scope: !280)
!340 = !DILocation(line: 186, column: 26, scope: !280)
!341 = !DILocation(line: 186, column: 10, scope: !280)
!342 = !DILocation(line: 186, column: 32, scope: !280)
!343 = !DILocation(line: 186, column: 38, scope: !280)
!344 = !DILocation(line: 186, column: 2, scope: !280)
!345 = !DILocation(line: 186, column: 7, scope: !280)
!346 = !DILocation(line: 187, column: 21, scope: !280)
!347 = !DILocation(line: 187, column: 26, scope: !280)
!348 = !DILocation(line: 187, column: 10, scope: !280)
!349 = !DILocation(line: 187, column: 32, scope: !280)
!350 = !DILocation(line: 187, column: 38, scope: !280)
!351 = !DILocation(line: 187, column: 2, scope: !280)
!352 = !DILocation(line: 187, column: 7, scope: !280)
!353 = !DILocation(line: 192, column: 2, scope: !280)
!354 = !DILocation(line: 198, column: 13, scope: !280)
!355 = !DILocation(line: 198, column: 2, scope: !280)
!356 = !DILocation(line: 199, column: 13, scope: !280)
!357 = !DILocation(line: 199, column: 18, scope: !280)
!358 = !DILocation(line: 199, column: 2, scope: !280)
!359 = !DILocation(line: 200, column: 17, scope: !280)
!360 = !DILocation(line: 200, column: 22, scope: !280)
!361 = !DILocation(line: 200, column: 2, scope: !280)
!362 = !DILocation(line: 201, column: 17, scope: !280)
!363 = !DILocation(line: 201, column: 22, scope: !280)
!364 = !DILocation(line: 201, column: 2, scope: !280)
!365 = !DILocation(line: 202, column: 17, scope: !280)
!366 = !DILocation(line: 202, column: 22, scope: !280)
!367 = !DILocation(line: 202, column: 25, scope: !280)
!368 = !DILocation(line: 202, column: 2, scope: !280)
!369 = !DILocalVariable(name: "cc", scope: !280, file: !39, line: 153, type: !6)
!370 = !DILocalVariable(name: "i", scope: !280, file: !39, line: 155, type: !140)
!371 = !DILocation(line: 212, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !280, file: !39, line: 212, column: 2)
!373 = !DILocation(line: 0, scope: !372)
!374 = !DILocation(line: 212, column: 16, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !39, line: 212, column: 2)
!376 = !DILocation(line: 212, column: 2, scope: !372)
!377 = !DILocation(line: 215, column: 10, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !39, line: 212, column: 28)
!379 = !DILocation(line: 215, column: 7, scope: !378)
!380 = !DILocation(line: 215, column: 20, scope: !378)
!381 = !DILocalVariable(name: "j", scope: !378, file: !39, line: 213, type: !140)
!382 = !DILocation(line: 0, scope: !378)
!383 = !DILocation(line: 216, column: 3, scope: !378)
!384 = !DILocation(line: 216, column: 10, scope: !378)
!385 = !DILocation(line: 217, column: 8, scope: !378)
!386 = !DILocation(line: 217, column: 15, scope: !378)
!387 = !DILocation(line: 218, column: 3, scope: !378)
!388 = !DILocation(line: 218, column: 10, scope: !378)
!389 = !DILocation(line: 219, column: 2, scope: !378)
!390 = !DILocation(line: 212, column: 24, scope: !375)
!391 = !DILocation(line: 212, column: 2, scope: !375)
!392 = distinct !{!392, !376, !393, !100}
!393 = !DILocation(line: 219, column: 2, scope: !372)
!394 = !DILocation(line: 226, column: 11, scope: !280)
!395 = !DILocation(line: 226, column: 8, scope: !280)
!396 = !DILocalVariable(name: "ctl", scope: !280, file: !39, line: 153, type: !6)
!397 = !DILocation(line: 227, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !280, file: !39, line: 227, column: 2)
!399 = !DILocation(line: 0, scope: !398)
!400 = !DILocation(line: 227, column: 16, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !39, line: 227, column: 2)
!402 = !DILocation(line: 227, column: 2, scope: !398)
!403 = !DILocation(line: 228, column: 13, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !39, line: 227, column: 27)
!405 = !DILocation(line: 228, column: 10, scope: !404)
!406 = !DILocation(line: 228, column: 7, scope: !404)
!407 = !DILocation(line: 229, column: 2, scope: !404)
!408 = !DILocation(line: 227, column: 23, scope: !401)
!409 = !DILocation(line: 227, column: 2, scope: !401)
!410 = distinct !{!410, !402, !411, !100}
!411 = !DILocation(line: 229, column: 2, scope: !398)
!412 = !DILocation(line: 231, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !280, file: !39, line: 231, column: 2)
!414 = !DILocation(line: 0, scope: !413)
!415 = !DILocation(line: 231, column: 16, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !39, line: 231, column: 2)
!417 = !DILocation(line: 231, column: 2, scope: !413)
!418 = !DILocation(line: 234, column: 8, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !39, line: 231, column: 27)
!420 = !DILocation(line: 234, column: 15, scope: !419)
!421 = !DILocalVariable(name: "t", scope: !419, file: !39, line: 232, type: !6)
!422 = !DILocation(line: 0, scope: !419)
!423 = !DILocation(line: 235, column: 10, scope: !419)
!424 = !DILocation(line: 236, column: 5, scope: !419)
!425 = !DILocation(line: 237, column: 24, scope: !419)
!426 = !DILocation(line: 237, column: 12, scope: !419)
!427 = !DILocation(line: 237, column: 3, scope: !419)
!428 = !DILocation(line: 237, column: 10, scope: !419)
!429 = !DILocation(line: 238, column: 2, scope: !419)
!430 = !DILocation(line: 231, column: 23, scope: !416)
!431 = !DILocation(line: 231, column: 2, scope: !416)
!432 = distinct !{!432, !417, !433, !100}
!433 = !DILocation(line: 238, column: 2, scope: !413)
!434 = !DILocation(line: 245, column: 16, scope: !280)
!435 = !DILocation(line: 245, column: 6, scope: !280)
!436 = !DILocation(line: 245, column: 36, scope: !280)
!437 = !DILocation(line: 245, column: 26, scope: !280)
!438 = !DILocation(line: 245, column: 43, scope: !280)
!439 = !DILocation(line: 245, column: 23, scope: !280)
!440 = !DILocation(line: 245, column: 63, scope: !280)
!441 = !DILocation(line: 245, column: 68, scope: !280)
!442 = !DILocation(line: 245, column: 52, scope: !280)
!443 = !DILocation(line: 245, column: 50, scope: !280)
!444 = !DILocalVariable(name: "w", scope: !280, file: !39, line: 154, type: !41)
!445 = !DILocation(line: 246, column: 35, scope: !280)
!446 = !DILocation(line: 246, column: 2, scope: !280)
!447 = !DILocation(line: 247, column: 9, scope: !280)
!448 = !DILocation(line: 247, column: 29, scope: !280)
!449 = !DILocation(line: 247, column: 19, scope: !280)
!450 = !DILocation(line: 247, column: 36, scope: !280)
!451 = !DILocation(line: 247, column: 16, scope: !280)
!452 = !DILocation(line: 247, column: 56, scope: !280)
!453 = !DILocation(line: 247, column: 61, scope: !280)
!454 = !DILocation(line: 247, column: 45, scope: !280)
!455 = !DILocation(line: 247, column: 43, scope: !280)
!456 = !DILocation(line: 248, column: 34, scope: !280)
!457 = !DILocation(line: 248, column: 39, scope: !280)
!458 = !DILocation(line: 248, column: 2, scope: !280)
!459 = !DILocation(line: 249, column: 9, scope: !280)
!460 = !DILocation(line: 249, column: 29, scope: !280)
!461 = !DILocation(line: 249, column: 19, scope: !280)
!462 = !DILocation(line: 249, column: 36, scope: !280)
!463 = !DILocation(line: 249, column: 16, scope: !280)
!464 = !DILocation(line: 249, column: 56, scope: !280)
!465 = !DILocation(line: 249, column: 61, scope: !280)
!466 = !DILocation(line: 249, column: 45, scope: !280)
!467 = !DILocation(line: 249, column: 43, scope: !280)
!468 = !DILocation(line: 250, column: 34, scope: !280)
!469 = !DILocation(line: 250, column: 39, scope: !280)
!470 = !DILocation(line: 250, column: 2, scope: !280)
!471 = !DILocation(line: 251, column: 20, scope: !280)
!472 = !DILocation(line: 251, column: 7, scope: !280)
!473 = !DILocation(line: 251, column: 30, scope: !280)
!474 = !DILocation(line: 251, column: 37, scope: !280)
!475 = !DILocation(line: 251, column: 27, scope: !280)
!476 = !DILocation(line: 251, column: 56, scope: !280)
!477 = !DILocation(line: 251, column: 61, scope: !280)
!478 = !DILocation(line: 251, column: 45, scope: !280)
!479 = !DILocation(line: 251, column: 43, scope: !280)
!480 = !DILocalVariable(name: "hi", scope: !280, file: !39, line: 153, type: !6)
!481 = !DILocation(line: 252, column: 34, scope: !280)
!482 = !DILocation(line: 252, column: 2, scope: !280)
!483 = !DILocation(line: 257, column: 7, scope: !484)
!484 = distinct !DILexicalBlock(scope: !280, file: !39, line: 257, column: 6)
!485 = !DILocation(line: 257, column: 6, scope: !280)
!486 = !DILocation(line: 258, column: 3, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !39, line: 257, column: 16)
!488 = !DILocation(line: 259, column: 2, scope: !487)
!489 = !DILocation(line: 260, column: 1, scope: !280)
!490 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !263, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!491 = !DILocalVariable(name: "src", arg: 1, scope: !490, file: !26, line: 574, type: !11)
!492 = !DILocation(line: 0, scope: !490)
!493 = !DILocation(line: 577, column: 10, scope: !490)
!494 = !DILocation(line: 577, column: 38, scope: !490)
!495 = !DILocation(line: 577, column: 2, scope: !490)
!496 = distinct !DISubprogram(name: "br_enc64le", scope: !26, file: !26, line: 606, type: !497, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !13, !41}
!499 = !DILocalVariable(name: "dst", arg: 1, scope: !496, file: !26, line: 606, type: !13)
!500 = !DILocation(line: 0, scope: !496)
!501 = !DILocalVariable(name: "x", arg: 2, scope: !496, file: !26, line: 606, type: !41)
!502 = !DILocation(line: 609, column: 3, scope: !496)
!503 = !DILocation(line: 609, column: 25, scope: !496)
!504 = !DILocation(line: 609, column: 27, scope: !496)
!505 = !DILocation(line: 617, column: 1, scope: !496)
!506 = distinct !DISubprogram(name: "poly1305_inner", scope: !39, file: !39, line: 36, type: !507, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509, !510, !11, !14}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!511 = !DILocalVariable(name: "acc", arg: 1, scope: !506, file: !39, line: 36, type: !509)
!512 = !DILocation(line: 0, scope: !506)
!513 = !DILocalVariable(name: "r", arg: 2, scope: !506, file: !39, line: 36, type: !510)
!514 = !DILocalVariable(name: "data", arg: 3, scope: !506, file: !39, line: 36, type: !11)
!515 = !DILocalVariable(name: "len", arg: 4, scope: !506, file: !39, line: 36, type: !14)
!516 = !DILocation(line: 54, column: 7, scope: !506)
!517 = !DILocalVariable(name: "r0", scope: !506, file: !39, line: 51, type: !6)
!518 = !DILocation(line: 55, column: 7, scope: !506)
!519 = !DILocalVariable(name: "r1", scope: !506, file: !39, line: 51, type: !6)
!520 = !DILocation(line: 56, column: 7, scope: !506)
!521 = !DILocalVariable(name: "r2", scope: !506, file: !39, line: 51, type: !6)
!522 = !DILocation(line: 57, column: 7, scope: !506)
!523 = !DILocalVariable(name: "r3", scope: !506, file: !39, line: 51, type: !6)
!524 = !DILocation(line: 58, column: 7, scope: !506)
!525 = !DILocalVariable(name: "r4", scope: !506, file: !39, line: 51, type: !6)
!526 = !DILocation(line: 60, column: 10, scope: !506)
!527 = !DILocalVariable(name: "u1", scope: !506, file: !39, line: 52, type: !6)
!528 = !DILocation(line: 61, column: 10, scope: !506)
!529 = !DILocalVariable(name: "u2", scope: !506, file: !39, line: 52, type: !6)
!530 = !DILocation(line: 62, column: 10, scope: !506)
!531 = !DILocalVariable(name: "u3", scope: !506, file: !39, line: 52, type: !6)
!532 = !DILocation(line: 63, column: 10, scope: !506)
!533 = !DILocalVariable(name: "u4", scope: !506, file: !39, line: 52, type: !6)
!534 = !DILocation(line: 65, column: 7, scope: !506)
!535 = !DILocalVariable(name: "a0", scope: !506, file: !39, line: 50, type: !6)
!536 = !DILocation(line: 66, column: 7, scope: !506)
!537 = !DILocalVariable(name: "a1", scope: !506, file: !39, line: 50, type: !6)
!538 = !DILocation(line: 67, column: 7, scope: !506)
!539 = !DILocalVariable(name: "a2", scope: !506, file: !39, line: 50, type: !6)
!540 = !DILocation(line: 68, column: 7, scope: !506)
!541 = !DILocalVariable(name: "a3", scope: !506, file: !39, line: 50, type: !6)
!542 = !DILocation(line: 69, column: 7, scope: !506)
!543 = !DILocalVariable(name: "a4", scope: !506, file: !39, line: 50, type: !6)
!544 = !DILocalVariable(name: "buf", scope: !506, file: !39, line: 49, type: !20)
!545 = !DILocation(line: 72, column: 2, scope: !506)
!546 = !DILocation(line: 72, column: 13, scope: !506)
!547 = !DILocalVariable(name: "tmp", scope: !548, file: !39, line: 75, type: !302)
!548 = distinct !DILexicalBlock(scope: !506, file: !39, line: 72, column: 18)
!549 = !DILocation(line: 75, column: 17, scope: !548)
!550 = !DILocation(line: 80, column: 11, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !39, line: 80, column: 7)
!552 = !DILocation(line: 80, column: 7, scope: !548)
!553 = !DILocation(line: 81, column: 4, scope: !554)
!554 = distinct !DILexicalBlock(scope: !551, file: !39, line: 80, column: 17)
!555 = !DILocation(line: 82, column: 4, scope: !554)
!556 = !DILocation(line: 83, column: 10, scope: !554)
!557 = !DILocation(line: 85, column: 3, scope: !554)
!558 = !DILocation(line: 91, column: 9, scope: !548)
!559 = !DILocation(line: 91, column: 25, scope: !548)
!560 = !DILocation(line: 91, column: 6, scope: !548)
!561 = !DILocation(line: 92, column: 25, scope: !548)
!562 = !DILocation(line: 92, column: 10, scope: !548)
!563 = !DILocation(line: 92, column: 31, scope: !548)
!564 = !DILocation(line: 92, column: 37, scope: !548)
!565 = !DILocation(line: 92, column: 6, scope: !548)
!566 = !DILocation(line: 93, column: 25, scope: !548)
!567 = !DILocation(line: 93, column: 10, scope: !548)
!568 = !DILocation(line: 93, column: 31, scope: !548)
!569 = !DILocation(line: 93, column: 37, scope: !548)
!570 = !DILocation(line: 93, column: 6, scope: !548)
!571 = !DILocation(line: 94, column: 25, scope: !548)
!572 = !DILocation(line: 94, column: 10, scope: !548)
!573 = !DILocation(line: 94, column: 31, scope: !548)
!574 = !DILocation(line: 94, column: 37, scope: !548)
!575 = !DILocation(line: 94, column: 6, scope: !548)
!576 = !DILocation(line: 95, column: 25, scope: !548)
!577 = !DILocation(line: 95, column: 10, scope: !548)
!578 = !DILocation(line: 95, column: 31, scope: !548)
!579 = !DILocation(line: 95, column: 37, scope: !548)
!580 = !DILocation(line: 95, column: 6, scope: !548)
!581 = !DILocation(line: 102, column: 8, scope: !548)
!582 = !DILocation(line: 102, column: 20, scope: !548)
!583 = !DILocation(line: 102, column: 18, scope: !548)
!584 = !DILocation(line: 102, column: 32, scope: !548)
!585 = !DILocation(line: 102, column: 30, scope: !548)
!586 = !DILocation(line: 102, column: 44, scope: !548)
!587 = !DILocation(line: 102, column: 42, scope: !548)
!588 = !DILocation(line: 102, column: 56, scope: !548)
!589 = !DILocation(line: 102, column: 54, scope: !548)
!590 = !DILocalVariable(name: "w0", scope: !548, file: !39, line: 73, type: !41)
!591 = !DILocation(line: 0, scope: !548)
!592 = !DILocation(line: 103, column: 8, scope: !548)
!593 = !DILocation(line: 103, column: 20, scope: !548)
!594 = !DILocation(line: 103, column: 18, scope: !548)
!595 = !DILocation(line: 103, column: 32, scope: !548)
!596 = !DILocation(line: 103, column: 30, scope: !548)
!597 = !DILocation(line: 103, column: 44, scope: !548)
!598 = !DILocation(line: 103, column: 42, scope: !548)
!599 = !DILocation(line: 103, column: 56, scope: !548)
!600 = !DILocation(line: 103, column: 54, scope: !548)
!601 = !DILocalVariable(name: "w1", scope: !548, file: !39, line: 73, type: !41)
!602 = !DILocation(line: 104, column: 8, scope: !548)
!603 = !DILocation(line: 104, column: 20, scope: !548)
!604 = !DILocation(line: 104, column: 18, scope: !548)
!605 = !DILocation(line: 104, column: 32, scope: !548)
!606 = !DILocation(line: 104, column: 30, scope: !548)
!607 = !DILocation(line: 104, column: 44, scope: !548)
!608 = !DILocation(line: 104, column: 42, scope: !548)
!609 = !DILocation(line: 104, column: 56, scope: !548)
!610 = !DILocation(line: 104, column: 54, scope: !548)
!611 = !DILocalVariable(name: "w2", scope: !548, file: !39, line: 73, type: !41)
!612 = !DILocation(line: 105, column: 8, scope: !548)
!613 = !DILocation(line: 105, column: 20, scope: !548)
!614 = !DILocation(line: 105, column: 18, scope: !548)
!615 = !DILocation(line: 105, column: 32, scope: !548)
!616 = !DILocation(line: 105, column: 30, scope: !548)
!617 = !DILocation(line: 105, column: 44, scope: !548)
!618 = !DILocation(line: 105, column: 42, scope: !548)
!619 = !DILocation(line: 105, column: 56, scope: !548)
!620 = !DILocation(line: 105, column: 54, scope: !548)
!621 = !DILocalVariable(name: "w3", scope: !548, file: !39, line: 73, type: !41)
!622 = !DILocation(line: 106, column: 8, scope: !548)
!623 = !DILocation(line: 106, column: 20, scope: !548)
!624 = !DILocation(line: 106, column: 18, scope: !548)
!625 = !DILocation(line: 106, column: 32, scope: !548)
!626 = !DILocation(line: 106, column: 30, scope: !548)
!627 = !DILocation(line: 106, column: 44, scope: !548)
!628 = !DILocation(line: 106, column: 42, scope: !548)
!629 = !DILocation(line: 106, column: 56, scope: !548)
!630 = !DILocation(line: 106, column: 54, scope: !548)
!631 = !DILocalVariable(name: "w4", scope: !548, file: !39, line: 73, type: !41)
!632 = !DILocation(line: 117, column: 10, scope: !548)
!633 = !DILocalVariable(name: "c", scope: !548, file: !39, line: 74, type: !41)
!634 = !DILocation(line: 118, column: 8, scope: !548)
!635 = !DILocation(line: 118, column: 21, scope: !548)
!636 = !DILocation(line: 119, column: 6, scope: !548)
!637 = !DILocation(line: 120, column: 10, scope: !548)
!638 = !DILocation(line: 121, column: 8, scope: !548)
!639 = !DILocation(line: 121, column: 21, scope: !548)
!640 = !DILocation(line: 122, column: 6, scope: !548)
!641 = !DILocation(line: 123, column: 10, scope: !548)
!642 = !DILocation(line: 124, column: 8, scope: !548)
!643 = !DILocation(line: 124, column: 21, scope: !548)
!644 = !DILocation(line: 125, column: 6, scope: !548)
!645 = !DILocation(line: 126, column: 10, scope: !548)
!646 = !DILocation(line: 127, column: 8, scope: !548)
!647 = !DILocation(line: 127, column: 21, scope: !548)
!648 = !DILocation(line: 128, column: 6, scope: !548)
!649 = !DILocation(line: 129, column: 10, scope: !548)
!650 = !DILocation(line: 130, column: 8, scope: !548)
!651 = !DILocation(line: 130, column: 21, scope: !548)
!652 = !DILocation(line: 131, column: 9, scope: !548)
!653 = !DILocation(line: 131, column: 21, scope: !548)
!654 = !DILocation(line: 131, column: 6, scope: !548)
!655 = !DILocation(line: 132, column: 12, scope: !548)
!656 = !DILocation(line: 132, column: 6, scope: !548)
!657 = !DILocation(line: 133, column: 6, scope: !548)
!658 = !DILocation(line: 135, column: 7, scope: !548)
!659 = !DILocation(line: 136, column: 7, scope: !548)
!660 = distinct !{!660, !545, !661, !100}
!661 = !DILocation(line: 137, column: 2, scope: !506)
!662 = !DILocation(line: 139, column: 2, scope: !506)
!663 = !DILocation(line: 139, column: 9, scope: !506)
!664 = !DILocation(line: 140, column: 2, scope: !506)
!665 = !DILocation(line: 140, column: 9, scope: !506)
!666 = !DILocation(line: 141, column: 2, scope: !506)
!667 = !DILocation(line: 141, column: 9, scope: !506)
!668 = !DILocation(line: 142, column: 2, scope: !506)
!669 = !DILocation(line: 142, column: 9, scope: !506)
!670 = !DILocation(line: 143, column: 2, scope: !506)
!671 = !DILocation(line: 143, column: 9, scope: !506)
!672 = !DILocation(line: 144, column: 1, scope: !506)
!673 = distinct !DISubprogram(name: "GT", scope: !26, file: !26, line: 803, type: !674, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!674 = !DISubroutineType(types: !675)
!675 = !{!6, !6, !6}
!676 = !DILocalVariable(name: "x", arg: 1, scope: !673, file: !26, line: 803, type: !6)
!677 = !DILocation(line: 0, scope: !673)
!678 = !DILocalVariable(name: "y", arg: 2, scope: !673, file: !26, line: 803, type: !6)
!679 = !DILocation(line: 819, column: 8, scope: !673)
!680 = !DILocalVariable(name: "z", scope: !673, file: !26, line: 817, type: !6)
!681 = !DILocation(line: 820, column: 18, scope: !673)
!682 = !DILocation(line: 820, column: 28, scope: !673)
!683 = !DILocation(line: 820, column: 23, scope: !673)
!684 = !DILocation(line: 820, column: 12, scope: !673)
!685 = !DILocation(line: 820, column: 35, scope: !673)
!686 = !DILocation(line: 820, column: 2, scope: !673)
!687 = distinct !DISubprogram(name: "EQ", scope: !26, file: !26, line: 779, type: !674, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!688 = !DILocalVariable(name: "x", arg: 1, scope: !687, file: !26, line: 779, type: !6)
!689 = !DILocation(line: 0, scope: !687)
!690 = !DILocalVariable(name: "y", arg: 2, scope: !687, file: !26, line: 779, type: !6)
!691 = !DILocation(line: 783, column: 8, scope: !687)
!692 = !DILocalVariable(name: "q", scope: !687, file: !26, line: 781, type: !6)
!693 = !DILocation(line: 784, column: 18, scope: !687)
!694 = !DILocation(line: 784, column: 16, scope: !687)
!695 = !DILocation(line: 784, column: 22, scope: !687)
!696 = !DILocation(line: 784, column: 9, scope: !687)
!697 = !DILocation(line: 784, column: 2, scope: !687)
!698 = distinct !DISubprogram(name: "MUX", scope: !26, file: !26, line: 770, type: !699, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!699 = !DISubroutineType(types: !700)
!700 = !{!6, !6, !6, !6}
!701 = !DILocalVariable(name: "ctl", arg: 1, scope: !698, file: !26, line: 770, type: !6)
!702 = !DILocation(line: 0, scope: !698)
!703 = !DILocalVariable(name: "x", arg: 2, scope: !698, file: !26, line: 770, type: !6)
!704 = !DILocalVariable(name: "y", arg: 3, scope: !698, file: !26, line: 770, type: !6)
!705 = !DILocation(line: 772, column: 14, scope: !698)
!706 = !DILocation(line: 772, column: 24, scope: !698)
!707 = !DILocation(line: 772, column: 19, scope: !698)
!708 = !DILocation(line: 772, column: 11, scope: !698)
!709 = !DILocation(line: 772, column: 2, scope: !698)
!710 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !271, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!711 = !DILocalVariable(name: "dst", arg: 1, scope: !710, file: !26, line: 542, type: !13)
!712 = !DILocation(line: 0, scope: !710)
!713 = !DILocalVariable(name: "x", arg: 2, scope: !710, file: !26, line: 542, type: !6)
!714 = !DILocation(line: 545, column: 3, scope: !710)
!715 = !DILocation(line: 545, column: 25, scope: !710)
!716 = !DILocation(line: 545, column: 27, scope: !710)
!717 = !DILocation(line: 555, column: 1, scope: !710)
!718 = distinct !DISubprogram(name: "NOT", scope: !26, file: !26, line: 761, type: !719, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!719 = !DISubroutineType(types: !720)
!720 = !{!6, !6}
!721 = !DILocalVariable(name: "ctl", arg: 1, scope: !718, file: !26, line: 761, type: !6)
!722 = !DILocation(line: 0, scope: !718)
!723 = !DILocation(line: 763, column: 13, scope: !718)
!724 = !DILocation(line: 763, column: 2, scope: !718)
!725 = distinct !DISubprogram(name: "run_wrapper", scope: !62, file: !62, line: 3, type: !281, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !18)
!726 = !DILocalVariable(name: "key", arg: 1, scope: !725, file: !62, line: 3, type: !11)
!727 = !DILocation(line: 0, scope: !725)
!728 = !DILocalVariable(name: "iv", arg: 2, scope: !725, file: !62, line: 3, type: !11)
!729 = !DILocalVariable(name: "data", arg: 3, scope: !725, file: !62, line: 4, type: !13)
!730 = !DILocalVariable(name: "len", arg: 4, scope: !725, file: !62, line: 4, type: !14)
!731 = !DILocalVariable(name: "aad", arg: 5, scope: !725, file: !62, line: 4, type: !11)
!732 = !DILocalVariable(name: "aad_len", arg: 6, scope: !725, file: !62, line: 4, type: !14)
!733 = !DILocalVariable(name: "tag", arg: 7, scope: !725, file: !62, line: 5, type: !13)
!734 = !DILocalVariable(name: "ichacha", arg: 8, scope: !725, file: !62, line: 5, type: !283)
!735 = !DILocalVariable(name: "encrypt", arg: 9, scope: !725, file: !62, line: 5, type: !140)
!736 = !DILocation(line: 6, column: 12, scope: !725)
!737 = !DILocation(line: 6, column: 2, scope: !725)
!738 = !DILocation(line: 7, column: 12, scope: !725)
!739 = !DILocation(line: 7, column: 2, scope: !725)
!740 = !DILocation(line: 8, column: 12, scope: !725)
!741 = !DILocation(line: 8, column: 2, scope: !725)
!742 = !DILocation(line: 9, column: 12, scope: !725)
!743 = !DILocation(line: 9, column: 2, scope: !725)
!744 = !DILocation(line: 10, column: 12, scope: !725)
!745 = !DILocation(line: 10, column: 2, scope: !725)
!746 = !DILocation(line: 11, column: 12, scope: !725)
!747 = !DILocation(line: 11, column: 2, scope: !725)
!748 = !DILocation(line: 12, column: 12, scope: !725)
!749 = !DILocation(line: 12, column: 2, scope: !725)
!750 = !DILocation(line: 13, column: 12, scope: !725)
!751 = !DILocation(line: 13, column: 2, scope: !725)
!752 = !DILocation(line: 16, column: 12, scope: !725)
!753 = !DILocation(line: 16, column: 2, scope: !725)
!754 = !DILocation(line: 17, column: 12, scope: !725)
!755 = !DILocation(line: 17, column: 2, scope: !725)
!756 = !DILocation(line: 18, column: 12, scope: !725)
!757 = !DILocation(line: 18, column: 2, scope: !725)
!758 = !DILocation(line: 21, column: 2, scope: !725)
!759 = !DILocation(line: 22, column: 1, scope: !725)
!760 = distinct !DISubprogram(name: "run_wrapper_t", scope: !62, file: !62, line: 32, type: !761, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !18)
!761 = !DISubroutineType(types: !762)
!762 = !{null}
!763 = !DILocation(line: 34, column: 19, scope: !760)
!764 = !DILocalVariable(name: "key", scope: !760, file: !62, line: 34, type: !11)
!765 = !DILocation(line: 0, scope: !760)
!766 = !DILocation(line: 35, column: 19, scope: !760)
!767 = !DILocalVariable(name: "iv", scope: !760, file: !62, line: 35, type: !11)
!768 = !DILocation(line: 37, column: 15, scope: !760)
!769 = !DILocalVariable(name: "data", scope: !760, file: !62, line: 37, type: !13)
!770 = !DILocalVariable(name: "len", scope: !760, file: !62, line: 38, type: !14)
!771 = !DILocation(line: 39, column: 22, scope: !760)
!772 = !DILocalVariable(name: "aad", scope: !760, file: !62, line: 39, type: !11)
!773 = !DILocalVariable(name: "aad_len", scope: !760, file: !62, line: 40, type: !14)
!774 = !DILocation(line: 41, column: 14, scope: !760)
!775 = !DILocalVariable(name: "tag", scope: !760, file: !62, line: 41, type: !13)
!776 = !DILocalVariable(name: "encrypt", scope: !760, file: !62, line: 42, type: !140)
!777 = !DILocation(line: 44, column: 2, scope: !760)
!778 = !DILocation(line: 45, column: 1, scope: !760)
