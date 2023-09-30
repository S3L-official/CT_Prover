; ModuleID = 'run.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.br_union_u32 = type { i32 }
%union.br_union_u64 = type { i64 }
%union.br_union_u16 = type { i16 }
%struct.smack_value = type { i8* }

@br_chacha20_ct_run.CW = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_chacha20_ct_run(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 !dbg !2 {
  %6 = alloca [8 x i32], align 16
  %7 = alloca [3 x i32], align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i8* %1, metadata !82, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 %2, metadata !83, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i8* %3, metadata !84, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64 %4, metadata !85, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata [8 x i32]* %6, metadata !86, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata [3 x i32]* %7, metadata !89, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i8* %3, metadata !94, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64 0, metadata !95, metadata !DIExpression()), !dbg !81
  br label %10, !dbg !96

10:                                               ; preds = %17, %5
  %.01 = phi i64 [ 0, %5 ], [ %18, %17 ], !dbg !98
  call void @llvm.dbg.value(metadata i64 %.01, metadata !95, metadata !DIExpression()), !dbg !81
  %11 = icmp ult i64 %.01, 8, !dbg !99
  br i1 %11, label %12, label %19, !dbg !101

12:                                               ; preds = %10
  %13 = shl i64 %.01, 2, !dbg !102
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !104
  %15 = call i32 @br_dec32le(i8* %14), !dbg !105
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %.01, !dbg !106
  store i32 %15, i32* %16, align 4, !dbg !107
  br label %17, !dbg !108

17:                                               ; preds = %12
  %18 = add i64 %.01, 1, !dbg !109
  call void @llvm.dbg.value(metadata i64 %18, metadata !95, metadata !DIExpression()), !dbg !81
  br label %10, !dbg !110, !llvm.loop !111

19:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 0, metadata !95, metadata !DIExpression()), !dbg !81
  br label %20, !dbg !114

20:                                               ; preds = %27, %19
  %.1 = phi i64 [ 0, %19 ], [ %28, %27 ], !dbg !116
  call void @llvm.dbg.value(metadata i64 %.1, metadata !95, metadata !DIExpression()), !dbg !81
  %21 = icmp ult i64 %.1, 3, !dbg !117
  br i1 %21, label %22, label %29, !dbg !119

22:                                               ; preds = %20
  %23 = shl i64 %.1, 2, !dbg !120
  %24 = getelementptr inbounds i8, i8* %1, i64 %23, !dbg !122
  %25 = call i32 @br_dec32le(i8* %24), !dbg !123
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %.1, !dbg !124
  store i32 %25, i32* %26, align 4, !dbg !125
  br label %27, !dbg !126

27:                                               ; preds = %22
  %28 = add i64 %.1, 1, !dbg !127
  call void @llvm.dbg.value(metadata i64 %28, metadata !95, metadata !DIExpression()), !dbg !81
  br label %20, !dbg !128, !llvm.loop !129

29:                                               ; preds = %20
  br label %30, !dbg !131

30:                                               ; preds = %705, %29
  %.04 = phi i64 [ %4, %29 ], [ %707, %705 ]
  %.03 = phi i8* [ %3, %29 ], [ %706, %705 ], !dbg !81
  %.02 = phi i32 [ %2, %29 ], [ %708, %705 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !83, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i8* %.03, metadata !94, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64 %.04, metadata !85, metadata !DIExpression()), !dbg !81
  %31 = icmp ugt i64 %.04, 0, !dbg !132
  br i1 %31, label %32, label %709, !dbg !131

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i32]* %8, metadata !133, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !139, metadata !DIExpression()), !dbg !143
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !144
  %34 = bitcast i32* %33 to i8*, !dbg !145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([4 x i32]* @br_chacha20_ct_run.CW to i8*), i64 16, i1 false), !dbg !145
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !146
  %36 = bitcast i32* %35 to i8*, !dbg !147
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0, !dbg !147
  %38 = bitcast i32* %37 to i8*, !dbg !147
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 %38, i64 32, i1 false), !dbg !147
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !148
  store i32 %.02, i32* %39, align 16, !dbg !149
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !150
  %41 = bitcast i32* %40 to i8*, !dbg !151
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0, !dbg !151
  %43 = bitcast i32* %42 to i8*, !dbg !151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %43, i64 12, i1 false), !dbg !151
  call void @llvm.dbg.value(metadata i32 0, metadata !152, metadata !DIExpression()), !dbg !154
  br label %44, !dbg !155

44:                                               ; preds = %639, %32
  %.0 = phi i32 [ 0, %32 ], [ %640, %639 ], !dbg !157
  call void @llvm.dbg.value(metadata i32 %.0, metadata !152, metadata !DIExpression()), !dbg !154
  %45 = icmp slt i32 %.0, 10, !dbg !158
  br i1 %45, label %46, label %641, !dbg !160

46:                                               ; preds = %44
  br label %47, !dbg !161

47:                                               ; preds = %46
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !163
  %49 = load i32, i32* %48, align 16, !dbg !163
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !163
  %51 = load i32, i32* %50, align 16, !dbg !163
  %52 = add i32 %51, %49, !dbg !163
  store i32 %52, i32* %50, align 16, !dbg !163
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !163
  %54 = load i32, i32* %53, align 16, !dbg !163
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !163
  %56 = load i32, i32* %55, align 16, !dbg !163
  %57 = xor i32 %56, %54, !dbg !163
  store i32 %57, i32* %55, align 16, !dbg !163
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !163
  %59 = load i32, i32* %58, align 16, !dbg !163
  %60 = shl i32 %59, 16, !dbg !163
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !163
  %62 = load i32, i32* %61, align 16, !dbg !163
  %63 = lshr i32 %62, 16, !dbg !163
  %64 = or i32 %60, %63, !dbg !163
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !163
  store i32 %64, i32* %65, align 16, !dbg !163
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !163
  %67 = load i32, i32* %66, align 16, !dbg !163
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !163
  %69 = load i32, i32* %68, align 16, !dbg !163
  %70 = add i32 %69, %67, !dbg !163
  store i32 %70, i32* %68, align 16, !dbg !163
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !163
  %72 = load i32, i32* %71, align 16, !dbg !163
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !163
  %74 = load i32, i32* %73, align 16, !dbg !163
  %75 = xor i32 %74, %72, !dbg !163
  store i32 %75, i32* %73, align 16, !dbg !163
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !163
  %77 = load i32, i32* %76, align 16, !dbg !163
  %78 = shl i32 %77, 12, !dbg !163
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !163
  %80 = load i32, i32* %79, align 16, !dbg !163
  %81 = lshr i32 %80, 20, !dbg !163
  %82 = or i32 %78, %81, !dbg !163
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !163
  store i32 %82, i32* %83, align 16, !dbg !163
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !163
  %85 = load i32, i32* %84, align 16, !dbg !163
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !163
  %87 = load i32, i32* %86, align 16, !dbg !163
  %88 = add i32 %87, %85, !dbg !163
  store i32 %88, i32* %86, align 16, !dbg !163
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !163
  %90 = load i32, i32* %89, align 16, !dbg !163
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !163
  %92 = load i32, i32* %91, align 16, !dbg !163
  %93 = xor i32 %92, %90, !dbg !163
  store i32 %93, i32* %91, align 16, !dbg !163
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !163
  %95 = load i32, i32* %94, align 16, !dbg !163
  %96 = shl i32 %95, 8, !dbg !163
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !163
  %98 = load i32, i32* %97, align 16, !dbg !163
  %99 = lshr i32 %98, 24, !dbg !163
  %100 = or i32 %96, %99, !dbg !163
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !163
  store i32 %100, i32* %101, align 16, !dbg !163
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !163
  %103 = load i32, i32* %102, align 16, !dbg !163
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !163
  %105 = load i32, i32* %104, align 16, !dbg !163
  %106 = add i32 %105, %103, !dbg !163
  store i32 %106, i32* %104, align 16, !dbg !163
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !163
  %108 = load i32, i32* %107, align 16, !dbg !163
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !163
  %110 = load i32, i32* %109, align 16, !dbg !163
  %111 = xor i32 %110, %108, !dbg !163
  store i32 %111, i32* %109, align 16, !dbg !163
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !163
  %113 = load i32, i32* %112, align 16, !dbg !163
  %114 = shl i32 %113, 7, !dbg !163
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !163
  %116 = load i32, i32* %115, align 16, !dbg !163
  %117 = lshr i32 %116, 25, !dbg !163
  %118 = or i32 %114, %117, !dbg !163
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !163
  store i32 %118, i32* %119, align 16, !dbg !163
  br label %120, !dbg !163

120:                                              ; preds = %47
  br label %121, !dbg !165

121:                                              ; preds = %120
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %123 = load i32, i32* %122, align 4, !dbg !166
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !166
  %125 = load i32, i32* %124, align 4, !dbg !166
  %126 = add i32 %125, %123, !dbg !166
  store i32 %126, i32* %124, align 4, !dbg !166
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !166
  %128 = load i32, i32* %127, align 4, !dbg !166
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !166
  %130 = load i32, i32* %129, align 4, !dbg !166
  %131 = xor i32 %130, %128, !dbg !166
  store i32 %131, i32* %129, align 4, !dbg !166
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !166
  %133 = load i32, i32* %132, align 4, !dbg !166
  %134 = shl i32 %133, 16, !dbg !166
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !166
  %136 = load i32, i32* %135, align 4, !dbg !166
  %137 = lshr i32 %136, 16, !dbg !166
  %138 = or i32 %134, %137, !dbg !166
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !166
  store i32 %138, i32* %139, align 4, !dbg !166
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !166
  %141 = load i32, i32* %140, align 4, !dbg !166
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !166
  %143 = load i32, i32* %142, align 4, !dbg !166
  %144 = add i32 %143, %141, !dbg !166
  store i32 %144, i32* %142, align 4, !dbg !166
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !166
  %146 = load i32, i32* %145, align 4, !dbg !166
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %148 = load i32, i32* %147, align 4, !dbg !166
  %149 = xor i32 %148, %146, !dbg !166
  store i32 %149, i32* %147, align 4, !dbg !166
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %151 = load i32, i32* %150, align 4, !dbg !166
  %152 = shl i32 %151, 12, !dbg !166
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %154 = load i32, i32* %153, align 4, !dbg !166
  %155 = lshr i32 %154, 20, !dbg !166
  %156 = or i32 %152, %155, !dbg !166
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  store i32 %156, i32* %157, align 4, !dbg !166
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %159 = load i32, i32* %158, align 4, !dbg !166
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !166
  %161 = load i32, i32* %160, align 4, !dbg !166
  %162 = add i32 %161, %159, !dbg !166
  store i32 %162, i32* %160, align 4, !dbg !166
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !166
  %164 = load i32, i32* %163, align 4, !dbg !166
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !166
  %166 = load i32, i32* %165, align 4, !dbg !166
  %167 = xor i32 %166, %164, !dbg !166
  store i32 %167, i32* %165, align 4, !dbg !166
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !166
  %169 = load i32, i32* %168, align 4, !dbg !166
  %170 = shl i32 %169, 8, !dbg !166
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !166
  %172 = load i32, i32* %171, align 4, !dbg !166
  %173 = lshr i32 %172, 24, !dbg !166
  %174 = or i32 %170, %173, !dbg !166
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !166
  store i32 %174, i32* %175, align 4, !dbg !166
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !166
  %177 = load i32, i32* %176, align 4, !dbg !166
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !166
  %179 = load i32, i32* %178, align 4, !dbg !166
  %180 = add i32 %179, %177, !dbg !166
  store i32 %180, i32* %178, align 4, !dbg !166
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !166
  %182 = load i32, i32* %181, align 4, !dbg !166
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %184 = load i32, i32* %183, align 4, !dbg !166
  %185 = xor i32 %184, %182, !dbg !166
  store i32 %185, i32* %183, align 4, !dbg !166
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %187 = load i32, i32* %186, align 4, !dbg !166
  %188 = shl i32 %187, 7, !dbg !166
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %190 = load i32, i32* %189, align 4, !dbg !166
  %191 = lshr i32 %190, 25, !dbg !166
  %192 = or i32 %188, %191, !dbg !166
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  store i32 %192, i32* %193, align 4, !dbg !166
  br label %194, !dbg !166

194:                                              ; preds = %121
  br label %195, !dbg !168

195:                                              ; preds = %194
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %197 = load i32, i32* %196, align 8, !dbg !169
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !169
  %199 = load i32, i32* %198, align 8, !dbg !169
  %200 = add i32 %199, %197, !dbg !169
  store i32 %200, i32* %198, align 8, !dbg !169
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !169
  %202 = load i32, i32* %201, align 8, !dbg !169
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !169
  %204 = load i32, i32* %203, align 8, !dbg !169
  %205 = xor i32 %204, %202, !dbg !169
  store i32 %205, i32* %203, align 8, !dbg !169
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !169
  %207 = load i32, i32* %206, align 8, !dbg !169
  %208 = shl i32 %207, 16, !dbg !169
  %209 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !169
  %210 = load i32, i32* %209, align 8, !dbg !169
  %211 = lshr i32 %210, 16, !dbg !169
  %212 = or i32 %208, %211, !dbg !169
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !169
  store i32 %212, i32* %213, align 8, !dbg !169
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !169
  %215 = load i32, i32* %214, align 8, !dbg !169
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !169
  %217 = load i32, i32* %216, align 8, !dbg !169
  %218 = add i32 %217, %215, !dbg !169
  store i32 %218, i32* %216, align 8, !dbg !169
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !169
  %220 = load i32, i32* %219, align 8, !dbg !169
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %222 = load i32, i32* %221, align 8, !dbg !169
  %223 = xor i32 %222, %220, !dbg !169
  store i32 %223, i32* %221, align 8, !dbg !169
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %225 = load i32, i32* %224, align 8, !dbg !169
  %226 = shl i32 %225, 12, !dbg !169
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %228 = load i32, i32* %227, align 8, !dbg !169
  %229 = lshr i32 %228, 20, !dbg !169
  %230 = or i32 %226, %229, !dbg !169
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  store i32 %230, i32* %231, align 8, !dbg !169
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %233 = load i32, i32* %232, align 8, !dbg !169
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !169
  %235 = load i32, i32* %234, align 8, !dbg !169
  %236 = add i32 %235, %233, !dbg !169
  store i32 %236, i32* %234, align 8, !dbg !169
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !169
  %238 = load i32, i32* %237, align 8, !dbg !169
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !169
  %240 = load i32, i32* %239, align 8, !dbg !169
  %241 = xor i32 %240, %238, !dbg !169
  store i32 %241, i32* %239, align 8, !dbg !169
  %242 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !169
  %243 = load i32, i32* %242, align 8, !dbg !169
  %244 = shl i32 %243, 8, !dbg !169
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !169
  %246 = load i32, i32* %245, align 8, !dbg !169
  %247 = lshr i32 %246, 24, !dbg !169
  %248 = or i32 %244, %247, !dbg !169
  %249 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !169
  store i32 %248, i32* %249, align 8, !dbg !169
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !169
  %251 = load i32, i32* %250, align 8, !dbg !169
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !169
  %253 = load i32, i32* %252, align 8, !dbg !169
  %254 = add i32 %253, %251, !dbg !169
  store i32 %254, i32* %252, align 8, !dbg !169
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !169
  %256 = load i32, i32* %255, align 8, !dbg !169
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %258 = load i32, i32* %257, align 8, !dbg !169
  %259 = xor i32 %258, %256, !dbg !169
  store i32 %259, i32* %257, align 8, !dbg !169
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %261 = load i32, i32* %260, align 8, !dbg !169
  %262 = shl i32 %261, 7, !dbg !169
  %263 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %264 = load i32, i32* %263, align 8, !dbg !169
  %265 = lshr i32 %264, 25, !dbg !169
  %266 = or i32 %262, %265, !dbg !169
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  store i32 %266, i32* %267, align 8, !dbg !169
  br label %268, !dbg !169

268:                                              ; preds = %195
  br label %269, !dbg !171

269:                                              ; preds = %268
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %271 = load i32, i32* %270, align 4, !dbg !172
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !172
  %273 = load i32, i32* %272, align 4, !dbg !172
  %274 = add i32 %273, %271, !dbg !172
  store i32 %274, i32* %272, align 4, !dbg !172
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !172
  %276 = load i32, i32* %275, align 4, !dbg !172
  %277 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !172
  %278 = load i32, i32* %277, align 4, !dbg !172
  %279 = xor i32 %278, %276, !dbg !172
  store i32 %279, i32* %277, align 4, !dbg !172
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !172
  %281 = load i32, i32* %280, align 4, !dbg !172
  %282 = shl i32 %281, 16, !dbg !172
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !172
  %284 = load i32, i32* %283, align 4, !dbg !172
  %285 = lshr i32 %284, 16, !dbg !172
  %286 = or i32 %282, %285, !dbg !172
  %287 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !172
  store i32 %286, i32* %287, align 4, !dbg !172
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !172
  %289 = load i32, i32* %288, align 4, !dbg !172
  %290 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !172
  %291 = load i32, i32* %290, align 4, !dbg !172
  %292 = add i32 %291, %289, !dbg !172
  store i32 %292, i32* %290, align 4, !dbg !172
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !172
  %294 = load i32, i32* %293, align 4, !dbg !172
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %296 = load i32, i32* %295, align 4, !dbg !172
  %297 = xor i32 %296, %294, !dbg !172
  store i32 %297, i32* %295, align 4, !dbg !172
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %299 = load i32, i32* %298, align 4, !dbg !172
  %300 = shl i32 %299, 12, !dbg !172
  %301 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %302 = load i32, i32* %301, align 4, !dbg !172
  %303 = lshr i32 %302, 20, !dbg !172
  %304 = or i32 %300, %303, !dbg !172
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  store i32 %304, i32* %305, align 4, !dbg !172
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %307 = load i32, i32* %306, align 4, !dbg !172
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !172
  %309 = load i32, i32* %308, align 4, !dbg !172
  %310 = add i32 %309, %307, !dbg !172
  store i32 %310, i32* %308, align 4, !dbg !172
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !172
  %312 = load i32, i32* %311, align 4, !dbg !172
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !172
  %314 = load i32, i32* %313, align 4, !dbg !172
  %315 = xor i32 %314, %312, !dbg !172
  store i32 %315, i32* %313, align 4, !dbg !172
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !172
  %317 = load i32, i32* %316, align 4, !dbg !172
  %318 = shl i32 %317, 8, !dbg !172
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !172
  %320 = load i32, i32* %319, align 4, !dbg !172
  %321 = lshr i32 %320, 24, !dbg !172
  %322 = or i32 %318, %321, !dbg !172
  %323 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !172
  store i32 %322, i32* %323, align 4, !dbg !172
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !172
  %325 = load i32, i32* %324, align 4, !dbg !172
  %326 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !172
  %327 = load i32, i32* %326, align 4, !dbg !172
  %328 = add i32 %327, %325, !dbg !172
  store i32 %328, i32* %326, align 4, !dbg !172
  %329 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !172
  %330 = load i32, i32* %329, align 4, !dbg !172
  %331 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %332 = load i32, i32* %331, align 4, !dbg !172
  %333 = xor i32 %332, %330, !dbg !172
  store i32 %333, i32* %331, align 4, !dbg !172
  %334 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %335 = load i32, i32* %334, align 4, !dbg !172
  %336 = shl i32 %335, 7, !dbg !172
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %338 = load i32, i32* %337, align 4, !dbg !172
  %339 = lshr i32 %338, 25, !dbg !172
  %340 = or i32 %336, %339, !dbg !172
  %341 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  store i32 %340, i32* %341, align 4, !dbg !172
  br label %342, !dbg !172

342:                                              ; preds = %269
  br label %343, !dbg !174

343:                                              ; preds = %342
  %344 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !175
  %345 = load i32, i32* %344, align 4, !dbg !175
  %346 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !175
  %347 = load i32, i32* %346, align 16, !dbg !175
  %348 = add i32 %347, %345, !dbg !175
  store i32 %348, i32* %346, align 16, !dbg !175
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !175
  %350 = load i32, i32* %349, align 16, !dbg !175
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !175
  %352 = load i32, i32* %351, align 4, !dbg !175
  %353 = xor i32 %352, %350, !dbg !175
  store i32 %353, i32* %351, align 4, !dbg !175
  %354 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !175
  %355 = load i32, i32* %354, align 4, !dbg !175
  %356 = shl i32 %355, 16, !dbg !175
  %357 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !175
  %358 = load i32, i32* %357, align 4, !dbg !175
  %359 = lshr i32 %358, 16, !dbg !175
  %360 = or i32 %356, %359, !dbg !175
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !175
  store i32 %360, i32* %361, align 4, !dbg !175
  %362 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !175
  %363 = load i32, i32* %362, align 4, !dbg !175
  %364 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !175
  %365 = load i32, i32* %364, align 8, !dbg !175
  %366 = add i32 %365, %363, !dbg !175
  store i32 %366, i32* %364, align 8, !dbg !175
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !175
  %368 = load i32, i32* %367, align 8, !dbg !175
  %369 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !175
  %370 = load i32, i32* %369, align 4, !dbg !175
  %371 = xor i32 %370, %368, !dbg !175
  store i32 %371, i32* %369, align 4, !dbg !175
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !175
  %373 = load i32, i32* %372, align 4, !dbg !175
  %374 = shl i32 %373, 12, !dbg !175
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !175
  %376 = load i32, i32* %375, align 4, !dbg !175
  %377 = lshr i32 %376, 20, !dbg !175
  %378 = or i32 %374, %377, !dbg !175
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !175
  store i32 %378, i32* %379, align 4, !dbg !175
  %380 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !175
  %381 = load i32, i32* %380, align 4, !dbg !175
  %382 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !175
  %383 = load i32, i32* %382, align 16, !dbg !175
  %384 = add i32 %383, %381, !dbg !175
  store i32 %384, i32* %382, align 16, !dbg !175
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !175
  %386 = load i32, i32* %385, align 16, !dbg !175
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !175
  %388 = load i32, i32* %387, align 4, !dbg !175
  %389 = xor i32 %388, %386, !dbg !175
  store i32 %389, i32* %387, align 4, !dbg !175
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !175
  %391 = load i32, i32* %390, align 4, !dbg !175
  %392 = shl i32 %391, 8, !dbg !175
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !175
  %394 = load i32, i32* %393, align 4, !dbg !175
  %395 = lshr i32 %394, 24, !dbg !175
  %396 = or i32 %392, %395, !dbg !175
  %397 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !175
  store i32 %396, i32* %397, align 4, !dbg !175
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !175
  %399 = load i32, i32* %398, align 4, !dbg !175
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !175
  %401 = load i32, i32* %400, align 8, !dbg !175
  %402 = add i32 %401, %399, !dbg !175
  store i32 %402, i32* %400, align 8, !dbg !175
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !175
  %404 = load i32, i32* %403, align 8, !dbg !175
  %405 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !175
  %406 = load i32, i32* %405, align 4, !dbg !175
  %407 = xor i32 %406, %404, !dbg !175
  store i32 %407, i32* %405, align 4, !dbg !175
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !175
  %409 = load i32, i32* %408, align 4, !dbg !175
  %410 = shl i32 %409, 7, !dbg !175
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !175
  %412 = load i32, i32* %411, align 4, !dbg !175
  %413 = lshr i32 %412, 25, !dbg !175
  %414 = or i32 %410, %413, !dbg !175
  %415 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !175
  store i32 %414, i32* %415, align 4, !dbg !175
  br label %416, !dbg !175

416:                                              ; preds = %343
  br label %417, !dbg !177

417:                                              ; preds = %416
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !178
  %419 = load i32, i32* %418, align 8, !dbg !178
  %420 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !178
  %421 = load i32, i32* %420, align 4, !dbg !178
  %422 = add i32 %421, %419, !dbg !178
  store i32 %422, i32* %420, align 4, !dbg !178
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !178
  %424 = load i32, i32* %423, align 4, !dbg !178
  %425 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !178
  %426 = load i32, i32* %425, align 16, !dbg !178
  %427 = xor i32 %426, %424, !dbg !178
  store i32 %427, i32* %425, align 16, !dbg !178
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !178
  %429 = load i32, i32* %428, align 16, !dbg !178
  %430 = shl i32 %429, 16, !dbg !178
  %431 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !178
  %432 = load i32, i32* %431, align 16, !dbg !178
  %433 = lshr i32 %432, 16, !dbg !178
  %434 = or i32 %430, %433, !dbg !178
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !178
  store i32 %434, i32* %435, align 16, !dbg !178
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !178
  %437 = load i32, i32* %436, align 16, !dbg !178
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !178
  %439 = load i32, i32* %438, align 4, !dbg !178
  %440 = add i32 %439, %437, !dbg !178
  store i32 %440, i32* %438, align 4, !dbg !178
  %441 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !178
  %442 = load i32, i32* %441, align 4, !dbg !178
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !178
  %444 = load i32, i32* %443, align 8, !dbg !178
  %445 = xor i32 %444, %442, !dbg !178
  store i32 %445, i32* %443, align 8, !dbg !178
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !178
  %447 = load i32, i32* %446, align 8, !dbg !178
  %448 = shl i32 %447, 12, !dbg !178
  %449 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !178
  %450 = load i32, i32* %449, align 8, !dbg !178
  %451 = lshr i32 %450, 20, !dbg !178
  %452 = or i32 %448, %451, !dbg !178
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !178
  store i32 %452, i32* %453, align 8, !dbg !178
  %454 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !178
  %455 = load i32, i32* %454, align 8, !dbg !178
  %456 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !178
  %457 = load i32, i32* %456, align 4, !dbg !178
  %458 = add i32 %457, %455, !dbg !178
  store i32 %458, i32* %456, align 4, !dbg !178
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !178
  %460 = load i32, i32* %459, align 4, !dbg !178
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !178
  %462 = load i32, i32* %461, align 16, !dbg !178
  %463 = xor i32 %462, %460, !dbg !178
  store i32 %463, i32* %461, align 16, !dbg !178
  %464 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !178
  %465 = load i32, i32* %464, align 16, !dbg !178
  %466 = shl i32 %465, 8, !dbg !178
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !178
  %468 = load i32, i32* %467, align 16, !dbg !178
  %469 = lshr i32 %468, 24, !dbg !178
  %470 = or i32 %466, %469, !dbg !178
  %471 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !178
  store i32 %470, i32* %471, align 16, !dbg !178
  %472 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !178
  %473 = load i32, i32* %472, align 16, !dbg !178
  %474 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !178
  %475 = load i32, i32* %474, align 4, !dbg !178
  %476 = add i32 %475, %473, !dbg !178
  store i32 %476, i32* %474, align 4, !dbg !178
  %477 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !178
  %478 = load i32, i32* %477, align 4, !dbg !178
  %479 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !178
  %480 = load i32, i32* %479, align 8, !dbg !178
  %481 = xor i32 %480, %478, !dbg !178
  store i32 %481, i32* %479, align 8, !dbg !178
  %482 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !178
  %483 = load i32, i32* %482, align 8, !dbg !178
  %484 = shl i32 %483, 7, !dbg !178
  %485 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !178
  %486 = load i32, i32* %485, align 8, !dbg !178
  %487 = lshr i32 %486, 25, !dbg !178
  %488 = or i32 %484, %487, !dbg !178
  %489 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !178
  store i32 %488, i32* %489, align 8, !dbg !178
  br label %490, !dbg !178

490:                                              ; preds = %417
  br label %491, !dbg !180

491:                                              ; preds = %490
  %492 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !181
  %493 = load i32, i32* %492, align 4, !dbg !181
  %494 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !181
  %495 = load i32, i32* %494, align 8, !dbg !181
  %496 = add i32 %495, %493, !dbg !181
  store i32 %496, i32* %494, align 8, !dbg !181
  %497 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !181
  %498 = load i32, i32* %497, align 8, !dbg !181
  %499 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !181
  %500 = load i32, i32* %499, align 4, !dbg !181
  %501 = xor i32 %500, %498, !dbg !181
  store i32 %501, i32* %499, align 4, !dbg !181
  %502 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !181
  %503 = load i32, i32* %502, align 4, !dbg !181
  %504 = shl i32 %503, 16, !dbg !181
  %505 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !181
  %506 = load i32, i32* %505, align 4, !dbg !181
  %507 = lshr i32 %506, 16, !dbg !181
  %508 = or i32 %504, %507, !dbg !181
  %509 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !181
  store i32 %508, i32* %509, align 4, !dbg !181
  %510 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !181
  %511 = load i32, i32* %510, align 4, !dbg !181
  %512 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !181
  %513 = load i32, i32* %512, align 16, !dbg !181
  %514 = add i32 %513, %511, !dbg !181
  store i32 %514, i32* %512, align 16, !dbg !181
  %515 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !181
  %516 = load i32, i32* %515, align 16, !dbg !181
  %517 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !181
  %518 = load i32, i32* %517, align 4, !dbg !181
  %519 = xor i32 %518, %516, !dbg !181
  store i32 %519, i32* %517, align 4, !dbg !181
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !181
  %521 = load i32, i32* %520, align 4, !dbg !181
  %522 = shl i32 %521, 12, !dbg !181
  %523 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !181
  %524 = load i32, i32* %523, align 4, !dbg !181
  %525 = lshr i32 %524, 20, !dbg !181
  %526 = or i32 %522, %525, !dbg !181
  %527 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !181
  store i32 %526, i32* %527, align 4, !dbg !181
  %528 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !181
  %529 = load i32, i32* %528, align 4, !dbg !181
  %530 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !181
  %531 = load i32, i32* %530, align 8, !dbg !181
  %532 = add i32 %531, %529, !dbg !181
  store i32 %532, i32* %530, align 8, !dbg !181
  %533 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !181
  %534 = load i32, i32* %533, align 8, !dbg !181
  %535 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !181
  %536 = load i32, i32* %535, align 4, !dbg !181
  %537 = xor i32 %536, %534, !dbg !181
  store i32 %537, i32* %535, align 4, !dbg !181
  %538 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !181
  %539 = load i32, i32* %538, align 4, !dbg !181
  %540 = shl i32 %539, 8, !dbg !181
  %541 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !181
  %542 = load i32, i32* %541, align 4, !dbg !181
  %543 = lshr i32 %542, 24, !dbg !181
  %544 = or i32 %540, %543, !dbg !181
  %545 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !181
  store i32 %544, i32* %545, align 4, !dbg !181
  %546 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !181
  %547 = load i32, i32* %546, align 4, !dbg !181
  %548 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !181
  %549 = load i32, i32* %548, align 16, !dbg !181
  %550 = add i32 %549, %547, !dbg !181
  store i32 %550, i32* %548, align 16, !dbg !181
  %551 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !181
  %552 = load i32, i32* %551, align 16, !dbg !181
  %553 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !181
  %554 = load i32, i32* %553, align 4, !dbg !181
  %555 = xor i32 %554, %552, !dbg !181
  store i32 %555, i32* %553, align 4, !dbg !181
  %556 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !181
  %557 = load i32, i32* %556, align 4, !dbg !181
  %558 = shl i32 %557, 7, !dbg !181
  %559 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !181
  %560 = load i32, i32* %559, align 4, !dbg !181
  %561 = lshr i32 %560, 25, !dbg !181
  %562 = or i32 %558, %561, !dbg !181
  %563 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !181
  store i32 %562, i32* %563, align 4, !dbg !181
  br label %564, !dbg !181

564:                                              ; preds = %491
  br label %565, !dbg !183

565:                                              ; preds = %564
  %566 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !184
  %567 = load i32, i32* %566, align 16, !dbg !184
  %568 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !184
  %569 = load i32, i32* %568, align 4, !dbg !184
  %570 = add i32 %569, %567, !dbg !184
  store i32 %570, i32* %568, align 4, !dbg !184
  %571 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !184
  %572 = load i32, i32* %571, align 4, !dbg !184
  %573 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !184
  %574 = load i32, i32* %573, align 8, !dbg !184
  %575 = xor i32 %574, %572, !dbg !184
  store i32 %575, i32* %573, align 8, !dbg !184
  %576 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !184
  %577 = load i32, i32* %576, align 8, !dbg !184
  %578 = shl i32 %577, 16, !dbg !184
  %579 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !184
  %580 = load i32, i32* %579, align 8, !dbg !184
  %581 = lshr i32 %580, 16, !dbg !184
  %582 = or i32 %578, %581, !dbg !184
  %583 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !184
  store i32 %582, i32* %583, align 8, !dbg !184
  %584 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !184
  %585 = load i32, i32* %584, align 8, !dbg !184
  %586 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !184
  %587 = load i32, i32* %586, align 4, !dbg !184
  %588 = add i32 %587, %585, !dbg !184
  store i32 %588, i32* %586, align 4, !dbg !184
  %589 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !184
  %590 = load i32, i32* %589, align 4, !dbg !184
  %591 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !184
  %592 = load i32, i32* %591, align 16, !dbg !184
  %593 = xor i32 %592, %590, !dbg !184
  store i32 %593, i32* %591, align 16, !dbg !184
  %594 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !184
  %595 = load i32, i32* %594, align 16, !dbg !184
  %596 = shl i32 %595, 12, !dbg !184
  %597 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !184
  %598 = load i32, i32* %597, align 16, !dbg !184
  %599 = lshr i32 %598, 20, !dbg !184
  %600 = or i32 %596, %599, !dbg !184
  %601 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !184
  store i32 %600, i32* %601, align 16, !dbg !184
  %602 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !184
  %603 = load i32, i32* %602, align 16, !dbg !184
  %604 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !184
  %605 = load i32, i32* %604, align 4, !dbg !184
  %606 = add i32 %605, %603, !dbg !184
  store i32 %606, i32* %604, align 4, !dbg !184
  %607 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !184
  %608 = load i32, i32* %607, align 4, !dbg !184
  %609 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !184
  %610 = load i32, i32* %609, align 8, !dbg !184
  %611 = xor i32 %610, %608, !dbg !184
  store i32 %611, i32* %609, align 8, !dbg !184
  %612 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !184
  %613 = load i32, i32* %612, align 8, !dbg !184
  %614 = shl i32 %613, 8, !dbg !184
  %615 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !184
  %616 = load i32, i32* %615, align 8, !dbg !184
  %617 = lshr i32 %616, 24, !dbg !184
  %618 = or i32 %614, %617, !dbg !184
  %619 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !184
  store i32 %618, i32* %619, align 8, !dbg !184
  %620 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !184
  %621 = load i32, i32* %620, align 8, !dbg !184
  %622 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !184
  %623 = load i32, i32* %622, align 4, !dbg !184
  %624 = add i32 %623, %621, !dbg !184
  store i32 %624, i32* %622, align 4, !dbg !184
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !184
  %626 = load i32, i32* %625, align 4, !dbg !184
  %627 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !184
  %628 = load i32, i32* %627, align 16, !dbg !184
  %629 = xor i32 %628, %626, !dbg !184
  store i32 %629, i32* %627, align 16, !dbg !184
  %630 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !184
  %631 = load i32, i32* %630, align 16, !dbg !184
  %632 = shl i32 %631, 7, !dbg !184
  %633 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !184
  %634 = load i32, i32* %633, align 16, !dbg !184
  %635 = lshr i32 %634, 25, !dbg !184
  %636 = or i32 %632, %635, !dbg !184
  %637 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !184
  store i32 %636, i32* %637, align 16, !dbg !184
  br label %638, !dbg !184

638:                                              ; preds = %565
  br label %639, !dbg !186

639:                                              ; preds = %638
  %640 = add nsw i32 %.0, 1, !dbg !187
  call void @llvm.dbg.value(metadata i32 %640, metadata !152, metadata !DIExpression()), !dbg !154
  br label %44, !dbg !188, !llvm.loop !189

641:                                              ; preds = %44
  call void @llvm.dbg.value(metadata i64 0, metadata !95, metadata !DIExpression()), !dbg !81
  br label %642, !dbg !191

642:                                              ; preds = %652, %641
  %.2 = phi i64 [ 0, %641 ], [ %653, %652 ], !dbg !193
  call void @llvm.dbg.value(metadata i64 %.2, metadata !95, metadata !DIExpression()), !dbg !81
  %643 = icmp ult i64 %.2, 4, !dbg !194
  br i1 %643, label %644, label %654, !dbg !196

644:                                              ; preds = %642
  %645 = shl i64 %.2, 2, !dbg !197
  %646 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %645, !dbg !199
  %647 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.2, !dbg !200
  %648 = load i32, i32* %647, align 4, !dbg !200
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* @br_chacha20_ct_run.CW, i64 0, i64 %.2, !dbg !201
  %650 = load i32, i32* %649, align 4, !dbg !201
  %651 = add i32 %648, %650, !dbg !202
  call void @br_enc32le(i8* %646, i32 %651), !dbg !203
  br label %652, !dbg !204

652:                                              ; preds = %644
  %653 = add i64 %.2, 1, !dbg !205
  call void @llvm.dbg.value(metadata i64 %653, metadata !95, metadata !DIExpression()), !dbg !81
  br label %642, !dbg !206, !llvm.loop !207

654:                                              ; preds = %642
  call void @llvm.dbg.value(metadata i64 4, metadata !95, metadata !DIExpression()), !dbg !81
  br label %655, !dbg !209

655:                                              ; preds = %666, %654
  %.3 = phi i64 [ 4, %654 ], [ %667, %666 ], !dbg !211
  call void @llvm.dbg.value(metadata i64 %.3, metadata !95, metadata !DIExpression()), !dbg !81
  %656 = icmp ult i64 %.3, 12, !dbg !212
  br i1 %656, label %657, label %668, !dbg !214

657:                                              ; preds = %655
  %658 = shl i64 %.3, 2, !dbg !215
  %659 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %658, !dbg !217
  %660 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.3, !dbg !218
  %661 = load i32, i32* %660, align 4, !dbg !218
  %662 = sub i64 %.3, 4, !dbg !219
  %663 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %662, !dbg !220
  %664 = load i32, i32* %663, align 4, !dbg !220
  %665 = add i32 %661, %664, !dbg !221
  call void @br_enc32le(i8* %659, i32 %665), !dbg !222
  br label %666, !dbg !223

666:                                              ; preds = %657
  %667 = add i64 %.3, 1, !dbg !224
  call void @llvm.dbg.value(metadata i64 %667, metadata !95, metadata !DIExpression()), !dbg !81
  br label %655, !dbg !225, !llvm.loop !226

668:                                              ; preds = %655
  %669 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 48, !dbg !228
  %670 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !229
  %671 = load i32, i32* %670, align 16, !dbg !229
  %672 = add i32 %671, %.02, !dbg !230
  call void @br_enc32le(i8* %669, i32 %672), !dbg !231
  call void @llvm.dbg.value(metadata i64 13, metadata !95, metadata !DIExpression()), !dbg !81
  br label %673, !dbg !232

673:                                              ; preds = %684, %668
  %.4 = phi i64 [ 13, %668 ], [ %685, %684 ], !dbg !234
  call void @llvm.dbg.value(metadata i64 %.4, metadata !95, metadata !DIExpression()), !dbg !81
  %674 = icmp ult i64 %.4, 16, !dbg !235
  br i1 %674, label %675, label %686, !dbg !237

675:                                              ; preds = %673
  %676 = shl i64 %.4, 2, !dbg !238
  %677 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %676, !dbg !240
  %678 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.4, !dbg !241
  %679 = load i32, i32* %678, align 4, !dbg !241
  %680 = sub i64 %.4, 13, !dbg !242
  %681 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %680, !dbg !243
  %682 = load i32, i32* %681, align 4, !dbg !243
  %683 = add i32 %679, %682, !dbg !244
  call void @br_enc32le(i8* %677, i32 %683), !dbg !245
  br label %684, !dbg !246

684:                                              ; preds = %675
  %685 = add i64 %.4, 1, !dbg !247
  call void @llvm.dbg.value(metadata i64 %685, metadata !95, metadata !DIExpression()), !dbg !81
  br label %673, !dbg !248, !llvm.loop !249

686:                                              ; preds = %673
  %687 = icmp ult i64 %.04, 64, !dbg !251
  br i1 %687, label %688, label %689, !dbg !252

688:                                              ; preds = %686
  br label %690, !dbg !252

689:                                              ; preds = %686
  br label %690, !dbg !252

690:                                              ; preds = %689, %688
  %691 = phi i64 [ %.04, %688 ], [ 64, %689 ], !dbg !252
  call void @llvm.dbg.value(metadata i64 %691, metadata !253, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i64 0, metadata !95, metadata !DIExpression()), !dbg !81
  br label %692, !dbg !254

692:                                              ; preds = %703, %690
  %.5 = phi i64 [ 0, %690 ], [ %704, %703 ], !dbg !256
  call void @llvm.dbg.value(metadata i64 %.5, metadata !95, metadata !DIExpression()), !dbg !81
  %693 = icmp ult i64 %.5, %691, !dbg !257
  br i1 %693, label %694, label %705, !dbg !259

694:                                              ; preds = %692
  %695 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %.5, !dbg !260
  %696 = load i8, i8* %695, align 1, !dbg !260
  %697 = zext i8 %696 to i32, !dbg !260
  %698 = getelementptr inbounds i8, i8* %.03, i64 %.5, !dbg !262
  %699 = load i8, i8* %698, align 1, !dbg !263
  %700 = zext i8 %699 to i32, !dbg !263
  %701 = xor i32 %700, %697, !dbg !263
  %702 = trunc i32 %701 to i8, !dbg !263
  store i8 %702, i8* %698, align 1, !dbg !263
  br label %703, !dbg !264

703:                                              ; preds = %694
  %704 = add i64 %.5, 1, !dbg !265
  call void @llvm.dbg.value(metadata i64 %704, metadata !95, metadata !DIExpression()), !dbg !81
  br label %692, !dbg !266, !llvm.loop !267

705:                                              ; preds = %692
  %706 = getelementptr inbounds i8, i8* %.03, i64 %691, !dbg !269
  call void @llvm.dbg.value(metadata i8* %706, metadata !94, metadata !DIExpression()), !dbg !81
  %707 = sub i64 %.04, %691, !dbg !270
  call void @llvm.dbg.value(metadata i64 %707, metadata !85, metadata !DIExpression()), !dbg !81
  %708 = add i32 %.02, 1, !dbg !271
  call void @llvm.dbg.value(metadata i32 %708, metadata !83, metadata !DIExpression()), !dbg !81
  br label %30, !dbg !131, !llvm.loop !272

709:                                              ; preds = %30
  ret i32 %.02, !dbg !274
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* %0) #0 !dbg !275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !278, metadata !DIExpression()), !dbg !279
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !280
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !281
  %4 = load i32, i32* %3, align 4, !dbg !281
  ret i32 %4, !dbg !282
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le(i8* %0, i32 %1) #0 !dbg !283 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 %1, metadata !288, metadata !DIExpression()), !dbg !287
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !289
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !290
  store i32 %1, i32* %4, align 4, !dbg !291
  ret void, !dbg !292
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_poly1305_ctmul32_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !293 {
  %10 = alloca [32 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca [19 x i32], align 16
  %13 = alloca [10 x i32], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %1, metadata !301, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %2, metadata !302, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 %3, metadata !303, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %4, metadata !304, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i64 %5, metadata !305, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %6, metadata !306, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !307, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 %8, metadata !308, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata [32 x i8]* %10, metadata !309, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.declare(metadata [16 x i8]* %11, metadata !314, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata [19 x i32]* %12, metadata !317, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.declare(metadata [10 x i32]* %13, metadata !322, metadata !DIExpression()), !dbg !326
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !327
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false), !dbg !327
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !328
  %16 = call i32 %7(i8* %0, i8* %1, i32 0, i8* %15, i64 32), !dbg !329
  %17 = icmp ne i32 %8, 0, !dbg !330
  br i1 %17, label %18, label %20, !dbg !332

18:                                               ; preds = %9
  %19 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !333
  br label %20, !dbg !335

20:                                               ; preds = %18, %9
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !336
  %22 = call i32 @br_dec32le.1(i8* %21), !dbg !337
  %23 = and i32 %22, 67108863, !dbg !338
  call void @llvm.dbg.value(metadata i32 %23, metadata !339, metadata !DIExpression()), !dbg !300
  %24 = and i32 %23, 8191, !dbg !340
  %25 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 9, !dbg !341
  store i32 %24, i32* %25, align 4, !dbg !342
  %26 = lshr i32 %23, 13, !dbg !343
  %27 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 10, !dbg !344
  store i32 %26, i32* %27, align 8, !dbg !345
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !346
  %29 = getelementptr inbounds i8, i8* %28, i64 3, !dbg !347
  %30 = call i32 @br_dec32le.1(i8* %29), !dbg !348
  %31 = lshr i32 %30, 2, !dbg !349
  %32 = and i32 %31, 67108611, !dbg !350
  call void @llvm.dbg.value(metadata i32 %32, metadata !339, metadata !DIExpression()), !dbg !300
  %33 = and i32 %32, 8191, !dbg !351
  %34 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 11, !dbg !352
  store i32 %33, i32* %34, align 4, !dbg !353
  %35 = lshr i32 %32, 13, !dbg !354
  %36 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 12, !dbg !355
  store i32 %35, i32* %36, align 16, !dbg !356
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !357
  %38 = getelementptr inbounds i8, i8* %37, i64 6, !dbg !358
  %39 = call i32 @br_dec32le.1(i8* %38), !dbg !359
  %40 = lshr i32 %39, 4, !dbg !360
  %41 = and i32 %40, 67092735, !dbg !361
  call void @llvm.dbg.value(metadata i32 %41, metadata !339, metadata !DIExpression()), !dbg !300
  %42 = and i32 %41, 8191, !dbg !362
  %43 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 13, !dbg !363
  store i32 %42, i32* %43, align 4, !dbg !364
  %44 = lshr i32 %41, 13, !dbg !365
  %45 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 14, !dbg !366
  store i32 %44, i32* %45, align 8, !dbg !367
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !368
  %47 = getelementptr inbounds i8, i8* %46, i64 9, !dbg !369
  %48 = call i32 @br_dec32le.1(i8* %47), !dbg !370
  %49 = lshr i32 %48, 6, !dbg !371
  %50 = and i32 %49, 66076671, !dbg !372
  call void @llvm.dbg.value(metadata i32 %50, metadata !339, metadata !DIExpression()), !dbg !300
  %51 = and i32 %50, 8191, !dbg !373
  %52 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 15, !dbg !374
  store i32 %51, i32* %52, align 4, !dbg !375
  %53 = lshr i32 %50, 13, !dbg !376
  %54 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 16, !dbg !377
  store i32 %53, i32* %54, align 16, !dbg !378
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !379
  %56 = getelementptr inbounds i8, i8* %55, i64 12, !dbg !380
  %57 = call i32 @br_dec32le.1(i8* %56), !dbg !381
  %58 = lshr i32 %57, 8, !dbg !382
  %59 = and i32 %58, 1048575, !dbg !383
  call void @llvm.dbg.value(metadata i32 %59, metadata !339, metadata !DIExpression()), !dbg !300
  %60 = and i32 %59, 8191, !dbg !384
  %61 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 17, !dbg !385
  store i32 %60, i32* %61, align 4, !dbg !386
  %62 = lshr i32 %59, 13, !dbg !387
  %63 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 18, !dbg !388
  store i32 %62, i32* %63, align 8, !dbg !389
  call void @llvm.dbg.value(metadata i32 0, metadata !390, metadata !DIExpression()), !dbg !300
  br label %64, !dbg !391

64:                                               ; preds = %74, %20
  %.0 = phi i32 [ 0, %20 ], [ %75, %74 ], !dbg !393
  call void @llvm.dbg.value(metadata i32 %.0, metadata !390, metadata !DIExpression()), !dbg !300
  %65 = icmp slt i32 %.0, 9, !dbg !394
  br i1 %65, label %66, label %76, !dbg !396

66:                                               ; preds = %64
  %67 = add nsw i32 %.0, 10, !dbg !397
  %68 = sext i32 %67 to i64, !dbg !397
  %69 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 %68, !dbg !397
  %70 = load i32, i32* %69, align 4, !dbg !397
  %71 = mul i32 5, %70, !dbg !397
  %72 = sext i32 %.0 to i64, !dbg !399
  %73 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 %72, !dbg !399
  store i32 %71, i32* %73, align 4, !dbg !400
  br label %74, !dbg !401

74:                                               ; preds = %66
  %75 = add nsw i32 %.0, 1, !dbg !402
  call void @llvm.dbg.value(metadata i32 %75, metadata !390, metadata !DIExpression()), !dbg !300
  br label %64, !dbg !403, !llvm.loop !404

76:                                               ; preds = %64
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0, !dbg !406
  %78 = bitcast i32* %77 to i8*, !dbg !406
  call void @llvm.memset.p0i8.i64(i8* align 16 %78, i8 0, i64 40, i1 false), !dbg !406
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !407
  call void @br_enc64le(i8* %79, i64 %5), !dbg !408
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !409
  %81 = getelementptr inbounds i8, i8* %80, i64 8, !dbg !410
  call void @br_enc64le(i8* %81, i64 %3), !dbg !411
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0, !dbg !412
  %83 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 0, !dbg !413
  call void @poly1305_inner(i32* %82, i32* %83, i8* %4, i64 %5), !dbg !414
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0, !dbg !415
  %85 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 0, !dbg !416
  call void @poly1305_inner(i32* %84, i32* %85, i8* %2, i64 %3), !dbg !417
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0, !dbg !418
  %87 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 0, !dbg !419
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !420
  call void @poly1305_inner(i32* %86, i32* %87, i8* %88, i64 16), !dbg !421
  call void @llvm.dbg.value(metadata i32 0, metadata !422, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 1, metadata !390, metadata !DIExpression()), !dbg !300
  br label %89, !dbg !423

89:                                               ; preds = %100, %76
  %.02 = phi i32 [ 0, %76 ], [ %99, %100 ], !dbg !300
  %.1 = phi i32 [ 1, %76 ], [ %101, %100 ], !dbg !425
  call void @llvm.dbg.value(metadata i32 %.1, metadata !390, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 %.02, metadata !422, metadata !DIExpression()), !dbg !300
  %90 = icmp slt i32 %.1, 10, !dbg !426
  br i1 %90, label %91, label %102, !dbg !428

91:                                               ; preds = %89
  %92 = sext i32 %.1 to i64, !dbg !429
  %93 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %92, !dbg !429
  %94 = load i32, i32* %93, align 4, !dbg !429
  %95 = add i32 %94, %.02, !dbg !431
  call void @llvm.dbg.value(metadata i32 %95, metadata !339, metadata !DIExpression()), !dbg !300
  %96 = and i32 %95, 8191, !dbg !432
  %97 = sext i32 %.1 to i64, !dbg !433
  %98 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %97, !dbg !433
  store i32 %96, i32* %98, align 4, !dbg !434
  %99 = lshr i32 %95, 13, !dbg !435
  call void @llvm.dbg.value(metadata i32 %99, metadata !422, metadata !DIExpression()), !dbg !300
  br label %100, !dbg !436

100:                                              ; preds = %91
  %101 = add nsw i32 %.1, 1, !dbg !437
  call void @llvm.dbg.value(metadata i32 %101, metadata !390, metadata !DIExpression()), !dbg !300
  br label %89, !dbg !438, !llvm.loop !439

102:                                              ; preds = %89
  %103 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0, !dbg !441
  %104 = load i32, i32* %103, align 16, !dbg !441
  %105 = add i32 %104, %.02, !dbg !442
  %106 = shl i32 %.02, 2, !dbg !443
  %107 = add i32 %105, %106, !dbg !444
  call void @llvm.dbg.value(metadata i32 %107, metadata !339, metadata !DIExpression()), !dbg !300
  %108 = and i32 %107, 8191, !dbg !445
  %109 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0, !dbg !446
  store i32 %108, i32* %109, align 16, !dbg !447
  %110 = lshr i32 %107, 13, !dbg !448
  %111 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 1, !dbg !449
  %112 = load i32, i32* %111, align 4, !dbg !450
  %113 = add i32 %112, %110, !dbg !450
  store i32 %113, i32* %111, align 4, !dbg !450
  %114 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0, !dbg !451
  %115 = load i32, i32* %114, align 16, !dbg !451
  %116 = call i32 @GT(i32 %115, i32 8186), !dbg !452
  call void @llvm.dbg.value(metadata i32 %116, metadata !453, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 1, metadata !390, metadata !DIExpression()), !dbg !300
  br label %117, !dbg !454

117:                                              ; preds = %125, %102
  %.01 = phi i32 [ %116, %102 ], [ %124, %125 ], !dbg !300
  %.2 = phi i32 [ 1, %102 ], [ %126, %125 ], !dbg !456
  call void @llvm.dbg.value(metadata i32 %.2, metadata !390, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 %.01, metadata !453, metadata !DIExpression()), !dbg !300
  %118 = icmp slt i32 %.2, 10, !dbg !457
  br i1 %118, label %119, label %127, !dbg !459

119:                                              ; preds = %117
  %120 = sext i32 %.2 to i64, !dbg !460
  %121 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %120, !dbg !460
  %122 = load i32, i32* %121, align 4, !dbg !460
  %123 = call i32 @EQ(i32 %122, i32 8191), !dbg !462
  %124 = and i32 %.01, %123, !dbg !463
  call void @llvm.dbg.value(metadata i32 %124, metadata !453, metadata !DIExpression()), !dbg !300
  br label %125, !dbg !464

125:                                              ; preds = %119
  %126 = add nsw i32 %.2, 1, !dbg !465
  call void @llvm.dbg.value(metadata i32 %126, metadata !390, metadata !DIExpression()), !dbg !300
  br label %117, !dbg !466, !llvm.loop !467

127:                                              ; preds = %117
  %128 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0, !dbg !469
  %129 = load i32, i32* %128, align 16, !dbg !469
  %130 = sub i32 %129, 8187, !dbg !470
  %131 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0, !dbg !471
  %132 = load i32, i32* %131, align 16, !dbg !471
  %133 = call i32 @MUX(i32 %.01, i32 %130, i32 %132), !dbg !472
  %134 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0, !dbg !473
  store i32 %133, i32* %134, align 16, !dbg !474
  call void @llvm.dbg.value(metadata i32 1, metadata !390, metadata !DIExpression()), !dbg !300
  br label %135, !dbg !475

135:                                              ; preds = %144, %127
  %.3 = phi i32 [ 1, %127 ], [ %145, %144 ], !dbg !477
  call void @llvm.dbg.value(metadata i32 %.3, metadata !390, metadata !DIExpression()), !dbg !300
  %136 = icmp slt i32 %.3, 10, !dbg !478
  br i1 %136, label %137, label %146, !dbg !480

137:                                              ; preds = %135
  %138 = sub i32 0, %.01, !dbg !481
  %139 = xor i32 %138, -1, !dbg !483
  %140 = sext i32 %.3 to i64, !dbg !484
  %141 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 %140, !dbg !484
  %142 = load i32, i32* %141, align 4, !dbg !485
  %143 = and i32 %142, %139, !dbg !485
  store i32 %143, i32* %141, align 4, !dbg !485
  br label %144, !dbg !486

144:                                              ; preds = %137
  %145 = add nsw i32 %.3, 1, !dbg !487
  call void @llvm.dbg.value(metadata i32 %145, metadata !390, metadata !DIExpression()), !dbg !300
  br label %135, !dbg !488, !llvm.loop !489

146:                                              ; preds = %135
  %147 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0, !dbg !491
  %148 = load i32, i32* %147, align 16, !dbg !491
  %149 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 1, !dbg !492
  %150 = load i32, i32* %149, align 4, !dbg !492
  %151 = shl i32 %150, 13, !dbg !493
  %152 = add i32 %148, %151, !dbg !494
  %153 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !495
  %154 = getelementptr inbounds i8, i8* %153, i64 16, !dbg !496
  %155 = call i32 @br_dec16le(i8* %154), !dbg !497
  %156 = add i32 %152, %155, !dbg !498
  call void @llvm.dbg.value(metadata i32 %156, metadata !339, metadata !DIExpression()), !dbg !300
  %157 = and i32 %156, 65535, !dbg !499
  call void @br_enc16le(i8* %6, i32 %157), !dbg !500
  %158 = lshr i32 %156, 16, !dbg !501
  %159 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 2, !dbg !502
  %160 = load i32, i32* %159, align 8, !dbg !502
  %161 = shl i32 %160, 10, !dbg !503
  %162 = add i32 %158, %161, !dbg !504
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !505
  %164 = getelementptr inbounds i8, i8* %163, i64 18, !dbg !506
  %165 = call i32 @br_dec16le(i8* %164), !dbg !507
  %166 = add i32 %162, %165, !dbg !508
  call void @llvm.dbg.value(metadata i32 %166, metadata !339, metadata !DIExpression()), !dbg !300
  %167 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !509
  %168 = and i32 %166, 65535, !dbg !510
  call void @br_enc16le(i8* %167, i32 %168), !dbg !511
  %169 = lshr i32 %166, 16, !dbg !512
  %170 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 3, !dbg !513
  %171 = load i32, i32* %170, align 4, !dbg !513
  %172 = shl i32 %171, 7, !dbg !514
  %173 = add i32 %169, %172, !dbg !515
  %174 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !516
  %175 = getelementptr inbounds i8, i8* %174, i64 20, !dbg !517
  %176 = call i32 @br_dec16le(i8* %175), !dbg !518
  %177 = add i32 %173, %176, !dbg !519
  call void @llvm.dbg.value(metadata i32 %177, metadata !339, metadata !DIExpression()), !dbg !300
  %178 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !520
  %179 = and i32 %177, 65535, !dbg !521
  call void @br_enc16le(i8* %178, i32 %179), !dbg !522
  %180 = lshr i32 %177, 16, !dbg !523
  %181 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 4, !dbg !524
  %182 = load i32, i32* %181, align 16, !dbg !524
  %183 = shl i32 %182, 4, !dbg !525
  %184 = add i32 %180, %183, !dbg !526
  %185 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !527
  %186 = getelementptr inbounds i8, i8* %185, i64 22, !dbg !528
  %187 = call i32 @br_dec16le(i8* %186), !dbg !529
  %188 = add i32 %184, %187, !dbg !530
  call void @llvm.dbg.value(metadata i32 %188, metadata !339, metadata !DIExpression()), !dbg !300
  %189 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !531
  %190 = and i32 %188, 65535, !dbg !532
  call void @br_enc16le(i8* %189, i32 %190), !dbg !533
  %191 = lshr i32 %188, 16, !dbg !534
  %192 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 5, !dbg !535
  %193 = load i32, i32* %192, align 4, !dbg !535
  %194 = shl i32 %193, 1, !dbg !536
  %195 = add i32 %191, %194, !dbg !537
  %196 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 6, !dbg !538
  %197 = load i32, i32* %196, align 8, !dbg !538
  %198 = shl i32 %197, 14, !dbg !539
  %199 = add i32 %195, %198, !dbg !540
  %200 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !541
  %201 = getelementptr inbounds i8, i8* %200, i64 24, !dbg !542
  %202 = call i32 @br_dec16le(i8* %201), !dbg !543
  %203 = add i32 %199, %202, !dbg !544
  call void @llvm.dbg.value(metadata i32 %203, metadata !339, metadata !DIExpression()), !dbg !300
  %204 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !545
  %205 = and i32 %203, 65535, !dbg !546
  call void @br_enc16le(i8* %204, i32 %205), !dbg !547
  %206 = lshr i32 %203, 16, !dbg !548
  %207 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 7, !dbg !549
  %208 = load i32, i32* %207, align 4, !dbg !549
  %209 = shl i32 %208, 11, !dbg !550
  %210 = add i32 %206, %209, !dbg !551
  %211 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !552
  %212 = getelementptr inbounds i8, i8* %211, i64 26, !dbg !553
  %213 = call i32 @br_dec16le(i8* %212), !dbg !554
  %214 = add i32 %210, %213, !dbg !555
  call void @llvm.dbg.value(metadata i32 %214, metadata !339, metadata !DIExpression()), !dbg !300
  %215 = getelementptr inbounds i8, i8* %6, i64 10, !dbg !556
  %216 = and i32 %214, 65535, !dbg !557
  call void @br_enc16le(i8* %215, i32 %216), !dbg !558
  %217 = lshr i32 %214, 16, !dbg !559
  %218 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 8, !dbg !560
  %219 = load i32, i32* %218, align 16, !dbg !560
  %220 = shl i32 %219, 8, !dbg !561
  %221 = add i32 %217, %220, !dbg !562
  %222 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !563
  %223 = getelementptr inbounds i8, i8* %222, i64 28, !dbg !564
  %224 = call i32 @br_dec16le(i8* %223), !dbg !565
  %225 = add i32 %221, %224, !dbg !566
  call void @llvm.dbg.value(metadata i32 %225, metadata !339, metadata !DIExpression()), !dbg !300
  %226 = getelementptr inbounds i8, i8* %6, i64 12, !dbg !567
  %227 = and i32 %225, 65535, !dbg !568
  call void @br_enc16le(i8* %226, i32 %227), !dbg !569
  %228 = lshr i32 %225, 16, !dbg !570
  %229 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 9, !dbg !571
  %230 = load i32, i32* %229, align 4, !dbg !571
  %231 = shl i32 %230, 5, !dbg !572
  %232 = add i32 %228, %231, !dbg !573
  %233 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !574
  %234 = getelementptr inbounds i8, i8* %233, i64 30, !dbg !575
  %235 = call i32 @br_dec16le(i8* %234), !dbg !576
  %236 = add i32 %232, %235, !dbg !577
  call void @llvm.dbg.value(metadata i32 %236, metadata !339, metadata !DIExpression()), !dbg !300
  %237 = getelementptr inbounds i8, i8* %6, i64 14, !dbg !578
  %238 = and i32 %236, 65535, !dbg !579
  call void @br_enc16le(i8* %237, i32 %238), !dbg !580
  %239 = icmp ne i32 %8, 0, !dbg !581
  br i1 %239, label %242, label %240, !dbg !583

240:                                              ; preds = %146
  %241 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !584
  br label %242, !dbg !586

242:                                              ; preds = %240, %146
  ret void, !dbg !587
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le.1(i8* %0) #0 !dbg !588 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !589, metadata !DIExpression()), !dbg !590
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !591
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !592
  %4 = load i32, i32* %3, align 4, !dbg !592
  ret i32 %4, !dbg !593
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64le(i8* %0, i64 %1) #0 !dbg !594 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !597, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i64 %1, metadata !599, metadata !DIExpression()), !dbg !598
  %3 = bitcast i8* %0 to %union.br_union_u64*, !dbg !600
  %4 = bitcast %union.br_union_u64* %3 to i64*, !dbg !601
  store i64 %1, i64* %4, align 8, !dbg !602
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner(i32* %0, i32* %1, i8* %2, i64 %3) #0 !dbg !604 {
  %5 = alloca [16 x i8], align 16
  %6 = alloca [10 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !609, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i32* %1, metadata !611, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i8* %2, metadata !612, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i64 %3, metadata !613, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i8* %2, metadata !614, metadata !DIExpression()), !dbg !610
  br label %7, !dbg !615

7:                                                ; preds = %240, %4
  %.05 = phi i8* [ %2, %4 ], [ %256, %240 ], !dbg !610
  %.03 = phi i64 [ %3, %4 ], [ %257, %240 ]
  call void @llvm.dbg.value(metadata i64 %.03, metadata !613, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i8* %.05, metadata !614, metadata !DIExpression()), !dbg !610
  %8 = icmp ugt i64 %.03, 0, !dbg !616
  br i1 %8, label %9, label %258, !dbg !615

9:                                                ; preds = %7
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !617, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.declare(metadata [10 x i32]* %6, metadata !620, metadata !DIExpression()), !dbg !621
  %10 = icmp ult i64 %.03, 16, !dbg !622
  br i1 %10, label %11, label %15, !dbg !624

11:                                               ; preds = %9
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !625
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false), !dbg !625
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 1 %.05, i64 %.03, i1 false), !dbg !627
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !628
  call void @llvm.dbg.value(metadata i8* %14, metadata !614, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i64 16, metadata !613, metadata !DIExpression()), !dbg !610
  br label %15, !dbg !629

15:                                               ; preds = %11, %9
  %.16 = phi i8* [ %14, %11 ], [ %.05, %9 ], !dbg !610
  %.14 = phi i64 [ 16, %11 ], [ %.03, %9 ]
  call void @llvm.dbg.value(metadata i64 %.14, metadata !613, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i8* %.16, metadata !614, metadata !DIExpression()), !dbg !610
  %16 = call i32 @br_dec16le(i8* %.16), !dbg !630
  call void @llvm.dbg.value(metadata i32 %16, metadata !631, metadata !DIExpression()), !dbg !632
  %17 = and i32 %16, 8191, !dbg !633
  %18 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !634
  %19 = load i32, i32* %18, align 4, !dbg !635
  %20 = add i32 %19, %17, !dbg !635
  store i32 %20, i32* %18, align 4, !dbg !635
  %21 = lshr i32 %16, 13, !dbg !636
  call void @llvm.dbg.value(metadata i32 %21, metadata !631, metadata !DIExpression()), !dbg !632
  %22 = getelementptr inbounds i8, i8* %.16, i64 2, !dbg !637
  %23 = load i8, i8* %22, align 1, !dbg !637
  %24 = zext i8 %23 to i32, !dbg !637
  %25 = shl i32 %24, 3, !dbg !638
  %26 = or i32 %21, %25, !dbg !639
  call void @llvm.dbg.value(metadata i32 %26, metadata !631, metadata !DIExpression()), !dbg !632
  %27 = getelementptr inbounds i8, i8* %.16, i64 3, !dbg !640
  %28 = load i8, i8* %27, align 1, !dbg !640
  %29 = zext i8 %28 to i32, !dbg !640
  %30 = shl i32 %29, 11, !dbg !641
  %31 = or i32 %26, %30, !dbg !642
  call void @llvm.dbg.value(metadata i32 %31, metadata !631, metadata !DIExpression()), !dbg !632
  %32 = and i32 %31, 8191, !dbg !643
  %33 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !644
  %34 = load i32, i32* %33, align 4, !dbg !645
  %35 = add i32 %34, %32, !dbg !645
  store i32 %35, i32* %33, align 4, !dbg !645
  %36 = lshr i32 %31, 13, !dbg !646
  call void @llvm.dbg.value(metadata i32 %36, metadata !631, metadata !DIExpression()), !dbg !632
  %37 = getelementptr inbounds i8, i8* %.16, i64 4, !dbg !647
  %38 = load i8, i8* %37, align 1, !dbg !647
  %39 = zext i8 %38 to i32, !dbg !647
  %40 = shl i32 %39, 6, !dbg !648
  %41 = or i32 %36, %40, !dbg !649
  call void @llvm.dbg.value(metadata i32 %41, metadata !631, metadata !DIExpression()), !dbg !632
  %42 = and i32 %41, 8191, !dbg !650
  %43 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !651
  %44 = load i32, i32* %43, align 4, !dbg !652
  %45 = add i32 %44, %42, !dbg !652
  store i32 %45, i32* %43, align 4, !dbg !652
  %46 = lshr i32 %41, 13, !dbg !653
  call void @llvm.dbg.value(metadata i32 %46, metadata !631, metadata !DIExpression()), !dbg !632
  %47 = getelementptr inbounds i8, i8* %.16, i64 5, !dbg !654
  %48 = load i8, i8* %47, align 1, !dbg !654
  %49 = zext i8 %48 to i32, !dbg !654
  %50 = shl i32 %49, 1, !dbg !655
  %51 = or i32 %46, %50, !dbg !656
  call void @llvm.dbg.value(metadata i32 %51, metadata !631, metadata !DIExpression()), !dbg !632
  %52 = getelementptr inbounds i8, i8* %.16, i64 6, !dbg !657
  %53 = load i8, i8* %52, align 1, !dbg !657
  %54 = zext i8 %53 to i32, !dbg !657
  %55 = shl i32 %54, 9, !dbg !658
  %56 = or i32 %51, %55, !dbg !659
  call void @llvm.dbg.value(metadata i32 %56, metadata !631, metadata !DIExpression()), !dbg !632
  %57 = and i32 %56, 8191, !dbg !660
  %58 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !661
  %59 = load i32, i32* %58, align 4, !dbg !662
  %60 = add i32 %59, %57, !dbg !662
  store i32 %60, i32* %58, align 4, !dbg !662
  %61 = lshr i32 %56, 13, !dbg !663
  call void @llvm.dbg.value(metadata i32 %61, metadata !631, metadata !DIExpression()), !dbg !632
  %62 = getelementptr inbounds i8, i8* %.16, i64 7, !dbg !664
  %63 = load i8, i8* %62, align 1, !dbg !664
  %64 = zext i8 %63 to i32, !dbg !664
  %65 = shl i32 %64, 4, !dbg !665
  %66 = or i32 %61, %65, !dbg !666
  call void @llvm.dbg.value(metadata i32 %66, metadata !631, metadata !DIExpression()), !dbg !632
  %67 = getelementptr inbounds i8, i8* %.16, i64 8, !dbg !667
  %68 = load i8, i8* %67, align 1, !dbg !667
  %69 = zext i8 %68 to i32, !dbg !667
  %70 = shl i32 %69, 12, !dbg !668
  %71 = or i32 %66, %70, !dbg !669
  call void @llvm.dbg.value(metadata i32 %71, metadata !631, metadata !DIExpression()), !dbg !632
  %72 = and i32 %71, 8191, !dbg !670
  %73 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !671
  %74 = load i32, i32* %73, align 4, !dbg !672
  %75 = add i32 %74, %72, !dbg !672
  store i32 %75, i32* %73, align 4, !dbg !672
  %76 = lshr i32 %71, 13, !dbg !673
  call void @llvm.dbg.value(metadata i32 %76, metadata !631, metadata !DIExpression()), !dbg !632
  %77 = getelementptr inbounds i8, i8* %.16, i64 9, !dbg !674
  %78 = load i8, i8* %77, align 1, !dbg !674
  %79 = zext i8 %78 to i32, !dbg !674
  %80 = shl i32 %79, 7, !dbg !675
  %81 = or i32 %76, %80, !dbg !676
  call void @llvm.dbg.value(metadata i32 %81, metadata !631, metadata !DIExpression()), !dbg !632
  %82 = and i32 %81, 8191, !dbg !677
  %83 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !678
  %84 = load i32, i32* %83, align 4, !dbg !679
  %85 = add i32 %84, %82, !dbg !679
  store i32 %85, i32* %83, align 4, !dbg !679
  %86 = lshr i32 %81, 13, !dbg !680
  call void @llvm.dbg.value(metadata i32 %86, metadata !631, metadata !DIExpression()), !dbg !632
  %87 = getelementptr inbounds i8, i8* %.16, i64 10, !dbg !681
  %88 = load i8, i8* %87, align 1, !dbg !681
  %89 = zext i8 %88 to i32, !dbg !681
  %90 = shl i32 %89, 2, !dbg !682
  %91 = or i32 %86, %90, !dbg !683
  call void @llvm.dbg.value(metadata i32 %91, metadata !631, metadata !DIExpression()), !dbg !632
  %92 = getelementptr inbounds i8, i8* %.16, i64 11, !dbg !684
  %93 = load i8, i8* %92, align 1, !dbg !684
  %94 = zext i8 %93 to i32, !dbg !684
  %95 = shl i32 %94, 10, !dbg !685
  %96 = or i32 %91, %95, !dbg !686
  call void @llvm.dbg.value(metadata i32 %96, metadata !631, metadata !DIExpression()), !dbg !632
  %97 = and i32 %96, 8191, !dbg !687
  %98 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !688
  %99 = load i32, i32* %98, align 4, !dbg !689
  %100 = add i32 %99, %97, !dbg !689
  store i32 %100, i32* %98, align 4, !dbg !689
  %101 = lshr i32 %96, 13, !dbg !690
  call void @llvm.dbg.value(metadata i32 %101, metadata !631, metadata !DIExpression()), !dbg !632
  %102 = getelementptr inbounds i8, i8* %.16, i64 12, !dbg !691
  %103 = load i8, i8* %102, align 1, !dbg !691
  %104 = zext i8 %103 to i32, !dbg !691
  %105 = shl i32 %104, 5, !dbg !692
  %106 = or i32 %101, %105, !dbg !693
  call void @llvm.dbg.value(metadata i32 %106, metadata !631, metadata !DIExpression()), !dbg !632
  %107 = and i32 %106, 8191, !dbg !694
  %108 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !695
  %109 = load i32, i32* %108, align 4, !dbg !696
  %110 = add i32 %109, %107, !dbg !696
  store i32 %110, i32* %108, align 4, !dbg !696
  %111 = getelementptr inbounds i8, i8* %.16, i64 13, !dbg !697
  %112 = call i32 @br_dec16le(i8* %111), !dbg !698
  call void @llvm.dbg.value(metadata i32 %112, metadata !631, metadata !DIExpression()), !dbg !632
  %113 = and i32 %112, 8191, !dbg !699
  %114 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !700
  %115 = load i32, i32* %114, align 4, !dbg !701
  %116 = add i32 %115, %113, !dbg !701
  store i32 %116, i32* %114, align 4, !dbg !701
  %117 = lshr i32 %112, 13, !dbg !702
  call void @llvm.dbg.value(metadata i32 %117, metadata !631, metadata !DIExpression()), !dbg !632
  %118 = getelementptr inbounds i8, i8* %.16, i64 15, !dbg !703
  %119 = load i8, i8* %118, align 1, !dbg !703
  %120 = zext i8 %119 to i32, !dbg !703
  %121 = shl i32 %120, 3, !dbg !704
  %122 = or i32 %117, %121, !dbg !705
  call void @llvm.dbg.value(metadata i32 %122, metadata !631, metadata !DIExpression()), !dbg !632
  %123 = or i32 %122, 2048, !dbg !706
  %124 = getelementptr inbounds i32, i32* %0, i64 9, !dbg !707
  %125 = load i32, i32* %124, align 4, !dbg !708
  %126 = add i32 %125, %123, !dbg !708
  store i32 %126, i32* %124, align 4, !dbg !708
  call void @llvm.dbg.value(metadata i32 0, metadata !709, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32 0, metadata !710, metadata !DIExpression()), !dbg !632
  br label %127, !dbg !711

127:                                              ; preds = %179, %15
  %.02 = phi i32 [ 0, %15 ], [ %180, %179 ], !dbg !713
  %.01 = phi i32 [ 0, %15 ], [ %178, %179 ], !dbg !632
  call void @llvm.dbg.value(metadata i32 %.01, metadata !709, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32 %.02, metadata !710, metadata !DIExpression()), !dbg !632
  %128 = icmp ult i32 %.02, 10, !dbg !714
  br i1 %128, label %129, label %181, !dbg !716

129:                                              ; preds = %127
  %130 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !717
  %131 = load i32, i32* %130, align 4, !dbg !717
  %132 = add i32 %.02, 9, !dbg !717
  %133 = sub i32 %132, 0, !dbg !717
  %134 = zext i32 %133 to i64, !dbg !717
  %135 = getelementptr inbounds i32, i32* %1, i64 %134, !dbg !717
  %136 = load i32, i32* %135, align 4, !dbg !717
  %137 = mul i32 %131, %136, !dbg !717
  %138 = add i32 %.01, %137, !dbg !719
  %139 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !720
  %140 = load i32, i32* %139, align 4, !dbg !720
  %141 = add i32 %.02, 9, !dbg !720
  %142 = sub i32 %141, 1, !dbg !720
  %143 = zext i32 %142 to i64, !dbg !720
  %144 = getelementptr inbounds i32, i32* %1, i64 %143, !dbg !720
  %145 = load i32, i32* %144, align 4, !dbg !720
  %146 = mul i32 %140, %145, !dbg !720
  %147 = add i32 %138, %146, !dbg !721
  %148 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !722
  %149 = load i32, i32* %148, align 4, !dbg !722
  %150 = add i32 %.02, 9, !dbg !722
  %151 = sub i32 %150, 2, !dbg !722
  %152 = zext i32 %151 to i64, !dbg !722
  %153 = getelementptr inbounds i32, i32* %1, i64 %152, !dbg !722
  %154 = load i32, i32* %153, align 4, !dbg !722
  %155 = mul i32 %149, %154, !dbg !722
  %156 = add i32 %147, %155, !dbg !723
  %157 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !724
  %158 = load i32, i32* %157, align 4, !dbg !724
  %159 = add i32 %.02, 9, !dbg !724
  %160 = sub i32 %159, 3, !dbg !724
  %161 = zext i32 %160 to i64, !dbg !724
  %162 = getelementptr inbounds i32, i32* %1, i64 %161, !dbg !724
  %163 = load i32, i32* %162, align 4, !dbg !724
  %164 = mul i32 %158, %163, !dbg !724
  %165 = add i32 %156, %164, !dbg !725
  %166 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !726
  %167 = load i32, i32* %166, align 4, !dbg !726
  %168 = add i32 %.02, 9, !dbg !726
  %169 = sub i32 %168, 4, !dbg !726
  %170 = zext i32 %169 to i64, !dbg !726
  %171 = getelementptr inbounds i32, i32* %1, i64 %170, !dbg !726
  %172 = load i32, i32* %171, align 4, !dbg !726
  %173 = mul i32 %167, %172, !dbg !726
  %174 = add i32 %165, %173, !dbg !727
  call void @llvm.dbg.value(metadata i32 %174, metadata !728, metadata !DIExpression()), !dbg !729
  %175 = and i32 %174, 8191, !dbg !730
  %176 = zext i32 %.02 to i64, !dbg !731
  %177 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %176, !dbg !731
  store i32 %175, i32* %177, align 4, !dbg !732
  %178 = lshr i32 %174, 13, !dbg !733
  call void @llvm.dbg.value(metadata i32 %178, metadata !709, metadata !DIExpression()), !dbg !632
  br label %179, !dbg !734

179:                                              ; preds = %129
  %180 = add i32 %.02, 1, !dbg !735
  call void @llvm.dbg.value(metadata i32 %180, metadata !710, metadata !DIExpression()), !dbg !632
  br label %127, !dbg !736, !llvm.loop !737

181:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 0, metadata !739, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32 0, metadata !710, metadata !DIExpression()), !dbg !632
  br label %182, !dbg !740

182:                                              ; preds = %238, %181
  %.1 = phi i32 [ 0, %181 ], [ %239, %238 ], !dbg !742
  %.0 = phi i32 [ 0, %181 ], [ %237, %238 ], !dbg !632
  call void @llvm.dbg.value(metadata i32 %.0, metadata !739, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i32 %.1, metadata !710, metadata !DIExpression()), !dbg !632
  %183 = icmp ult i32 %.1, 10, !dbg !743
  br i1 %183, label %184, label %240, !dbg !745

184:                                              ; preds = %182
  %185 = zext i32 %.1 to i64, !dbg !746
  %186 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %185, !dbg !746
  %187 = load i32, i32* %186, align 4, !dbg !746
  %188 = add i32 %187, %.0, !dbg !748
  %189 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !749
  %190 = load i32, i32* %189, align 4, !dbg !749
  %191 = add i32 %.1, 9, !dbg !749
  %192 = sub i32 %191, 5, !dbg !749
  %193 = zext i32 %192 to i64, !dbg !749
  %194 = getelementptr inbounds i32, i32* %1, i64 %193, !dbg !749
  %195 = load i32, i32* %194, align 4, !dbg !749
  %196 = mul i32 %190, %195, !dbg !749
  %197 = add i32 %188, %196, !dbg !750
  %198 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !751
  %199 = load i32, i32* %198, align 4, !dbg !751
  %200 = add i32 %.1, 9, !dbg !751
  %201 = sub i32 %200, 6, !dbg !751
  %202 = zext i32 %201 to i64, !dbg !751
  %203 = getelementptr inbounds i32, i32* %1, i64 %202, !dbg !751
  %204 = load i32, i32* %203, align 4, !dbg !751
  %205 = mul i32 %199, %204, !dbg !751
  %206 = add i32 %197, %205, !dbg !752
  %207 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !753
  %208 = load i32, i32* %207, align 4, !dbg !753
  %209 = add i32 %.1, 9, !dbg !753
  %210 = sub i32 %209, 7, !dbg !753
  %211 = zext i32 %210 to i64, !dbg !753
  %212 = getelementptr inbounds i32, i32* %1, i64 %211, !dbg !753
  %213 = load i32, i32* %212, align 4, !dbg !753
  %214 = mul i32 %208, %213, !dbg !753
  %215 = add i32 %206, %214, !dbg !754
  %216 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !755
  %217 = load i32, i32* %216, align 4, !dbg !755
  %218 = add i32 %.1, 9, !dbg !755
  %219 = sub i32 %218, 8, !dbg !755
  %220 = zext i32 %219 to i64, !dbg !755
  %221 = getelementptr inbounds i32, i32* %1, i64 %220, !dbg !755
  %222 = load i32, i32* %221, align 4, !dbg !755
  %223 = mul i32 %217, %222, !dbg !755
  %224 = add i32 %215, %223, !dbg !756
  %225 = getelementptr inbounds i32, i32* %0, i64 9, !dbg !757
  %226 = load i32, i32* %225, align 4, !dbg !757
  %227 = add i32 %.1, 9, !dbg !757
  %228 = sub i32 %227, 9, !dbg !757
  %229 = zext i32 %228 to i64, !dbg !757
  %230 = getelementptr inbounds i32, i32* %1, i64 %229, !dbg !757
  %231 = load i32, i32* %230, align 4, !dbg !757
  %232 = mul i32 %226, %231, !dbg !757
  %233 = add i32 %224, %232, !dbg !758
  call void @llvm.dbg.value(metadata i32 %233, metadata !759, metadata !DIExpression()), !dbg !760
  %234 = and i32 %233, 8191, !dbg !761
  %235 = zext i32 %.1 to i64, !dbg !762
  %236 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %235, !dbg !762
  store i32 %234, i32* %236, align 4, !dbg !763
  %237 = lshr i32 %233, 13, !dbg !764
  call void @llvm.dbg.value(metadata i32 %237, metadata !739, metadata !DIExpression()), !dbg !632
  br label %238, !dbg !765

238:                                              ; preds = %184
  %239 = add i32 %.1, 1, !dbg !766
  call void @llvm.dbg.value(metadata i32 %239, metadata !710, metadata !DIExpression()), !dbg !632
  br label %182, !dbg !767, !llvm.loop !768

240:                                              ; preds = %182
  %241 = bitcast i32* %0 to i8*, !dbg !770
  %242 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0, !dbg !770
  %243 = bitcast i32* %242 to i8*, !dbg !770
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %241, i8* align 16 %243, i64 40, i1 false), !dbg !770
  %244 = add i32 %.01, %.0, !dbg !771
  call void @llvm.dbg.value(metadata i32 %244, metadata !772, metadata !DIExpression()), !dbg !632
  %245 = shl i32 %244, 2, !dbg !773
  %246 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !774
  %247 = load i32, i32* %246, align 4, !dbg !774
  %248 = add i32 %245, %247, !dbg !775
  %249 = add i32 %244, %248, !dbg !776
  call void @llvm.dbg.value(metadata i32 %249, metadata !772, metadata !DIExpression()), !dbg !632
  %250 = and i32 %249, 8191, !dbg !777
  %251 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !778
  store i32 %250, i32* %251, align 4, !dbg !779
  %252 = lshr i32 %249, 13, !dbg !780
  %253 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !781
  %254 = load i32, i32* %253, align 4, !dbg !782
  %255 = add i32 %254, %252, !dbg !782
  store i32 %255, i32* %253, align 4, !dbg !782
  %256 = getelementptr inbounds i8, i8* %.16, i64 16, !dbg !783
  call void @llvm.dbg.value(metadata i8* %256, metadata !614, metadata !DIExpression()), !dbg !610
  %257 = sub i64 %.14, 16, !dbg !784
  call void @llvm.dbg.value(metadata i64 %257, metadata !613, metadata !DIExpression()), !dbg !610
  br label %7, !dbg !615, !llvm.loop !785

258:                                              ; preds = %7
  ret void, !dbg !787
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !788 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !791, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i32 %1, metadata !793, metadata !DIExpression()), !dbg !792
  %3 = sub i32 %1, %0, !dbg !794
  call void @llvm.dbg.value(metadata i32 %3, metadata !795, metadata !DIExpression()), !dbg !792
  %4 = xor i32 %0, %1, !dbg !796
  %5 = xor i32 %0, %3, !dbg !797
  %6 = and i32 %4, %5, !dbg !798
  %7 = xor i32 %3, %6, !dbg !799
  %8 = lshr i32 %7, 31, !dbg !800
  ret i32 %8, !dbg !801
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !802 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !803, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata i32 %1, metadata !805, metadata !DIExpression()), !dbg !804
  %3 = xor i32 %0, %1, !dbg !806
  call void @llvm.dbg.value(metadata i32 %3, metadata !807, metadata !DIExpression()), !dbg !804
  %4 = sub i32 0, %3, !dbg !808
  %5 = or i32 %3, %4, !dbg !809
  %6 = lshr i32 %5, 31, !dbg !810
  %7 = call i32 @NOT(i32 %6), !dbg !811
  ret i32 %7, !dbg !812
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !813 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !816, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32 %1, metadata !818, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32 %2, metadata !819, metadata !DIExpression()), !dbg !817
  %4 = sub i32 0, %0, !dbg !820
  %5 = xor i32 %1, %2, !dbg !821
  %6 = and i32 %4, %5, !dbg !822
  %7 = xor i32 %2, %6, !dbg !823
  ret i32 %7, !dbg !824
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec16le(i8* %0) #0 !dbg !825 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !828, metadata !DIExpression()), !dbg !829
  %2 = bitcast i8* %0 to %union.br_union_u16*, !dbg !830
  %3 = bitcast %union.br_union_u16* %2 to i16*, !dbg !831
  %4 = load i16, i16* %3, align 2, !dbg !831
  %5 = zext i16 %4 to i32, !dbg !832
  ret i32 %5, !dbg !833
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc16le(i8* %0, i32 %1) #0 !dbg !834 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !837, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i32 %1, metadata !839, metadata !DIExpression()), !dbg !838
  %3 = trunc i32 %1 to i16, !dbg !840
  %4 = bitcast i8* %0 to %union.br_union_u16*, !dbg !841
  %5 = bitcast %union.br_union_u16* %4 to i16*, !dbg !842
  store i16 %3, i16* %5, align 2, !dbg !843
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !848, metadata !DIExpression()), !dbg !849
  %2 = xor i32 %0, 1, !dbg !850
  ret i32 %2, !dbg !851
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !852 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !853, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i8* %1, metadata !855, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i8* %2, metadata !856, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i64 %3, metadata !857, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i8* %4, metadata !858, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i64 %5, metadata !859, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i8* %6, metadata !860, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !861, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32 %8, metadata !862, metadata !DIExpression()), !dbg !854
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !863
  call void @public_in(%struct.smack_value* %10), !dbg !864
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !865
  call void @public_in(%struct.smack_value* %11), !dbg !866
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !867
  call void @public_in(%struct.smack_value* %12), !dbg !868
  %13 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !869
  call void @public_in(%struct.smack_value* %13), !dbg !870
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !871
  call void @public_in(%struct.smack_value* %14), !dbg !872
  %15 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %5), !dbg !873
  call void @public_in(%struct.smack_value* %15), !dbg !874
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !875
  call void @public_in(%struct.smack_value* %16), !dbg !876
  %17 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %8), !dbg !877
  call void @public_in(%struct.smack_value* %17), !dbg !878
  %18 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !879
  call void @public_in(%struct.smack_value* %18), !dbg !880
  %19 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !881
  call void @public_in(%struct.smack_value* %19), !dbg !882
  %20 = call %struct.smack_value* (i8*, i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, i32, ...)*)(i8* %4, i32 32), !dbg !883
  call void @public_in(%struct.smack_value* %20), !dbg !884
  call void @br_poly1305_ctmul32_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 %8), !dbg !885
  ret void, !dbg !886
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper_t() #0 !dbg !887 {
  %1 = call i8* (...) @getvoid1(), !dbg !890
  call void @llvm.dbg.value(metadata i8* %1, metadata !891, metadata !DIExpression()), !dbg !892
  %2 = call i8* (...) @getvoid2(), !dbg !893
  call void @llvm.dbg.value(metadata i8* %2, metadata !894, metadata !DIExpression()), !dbg !892
  %3 = call i8* (...) @getvoid5(), !dbg !895
  call void @llvm.dbg.value(metadata i8* %3, metadata !896, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i64 32, metadata !897, metadata !DIExpression()), !dbg !892
  %4 = call i8* (...) @getvoid3(), !dbg !898
  call void @llvm.dbg.value(metadata i8* %4, metadata !899, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i64 32, metadata !900, metadata !DIExpression()), !dbg !892
  %5 = call i8* (...) @getvoid6(), !dbg !901
  call void @llvm.dbg.value(metadata i8* %5, metadata !902, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 1, metadata !903, metadata !DIExpression()), !dbg !892
  call void @br_poly1305_ctmul32_run(i8* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 1), !dbg !904
  ret void, !dbg !905
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

!llvm.dbg.cu = !{!17, !38, !74}
!llvm.ident = !{!76, !76, !76}
!llvm.module.flags = !{!77, !78, !79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CW", scope: !2, file: !3, line: 36, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "br_chacha20_ct_run", scope: !3, file: !3, line: 29, type: !4, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/chacha20_ct.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmul32_ChaCha20")
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
!26 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmul32_ChaCha20")
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
!39 = !DIFile(filename: "../BearSSL/src/symcipher/poly1305_ctmul32.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmul32_ChaCha20")
!40 = !{!6, !41, !43, !44, !51, !60, !73}
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
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u16", file: !26, line: 475, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 472, size: 16, elements: !64)
!64 = !{!65, !69}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !63, file: !26, line: 473, baseType: !66, size: 16)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 25, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 40, baseType: !68)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !63, file: !26, line: 474, baseType: !70, size: 16)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 16, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 2)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "run.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmul32_ChaCha20")
!76 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!77 = !{i32 7, !"Dwarf Version", i32 4}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 4}
!80 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 29, type: !11)
!81 = !DILocation(line: 0, scope: !2)
!82 = !DILocalVariable(name: "iv", arg: 2, scope: !2, file: !3, line: 30, type: !11)
!83 = !DILocalVariable(name: "cc", arg: 3, scope: !2, file: !3, line: 30, type: !6)
!84 = !DILocalVariable(name: "data", arg: 4, scope: !2, file: !3, line: 30, type: !13)
!85 = !DILocalVariable(name: "len", arg: 5, scope: !2, file: !3, line: 30, type: !14)
!86 = !DILocalVariable(name: "kw", scope: !2, file: !3, line: 33, type: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !58)
!88 = !DILocation(line: 33, column: 11, scope: !2)
!89 = !DILocalVariable(name: "ivw", scope: !2, file: !3, line: 33, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 3)
!93 = !DILocation(line: 33, column: 18, scope: !2)
!94 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 32, type: !43)
!95 = !DILocalVariable(name: "u", scope: !2, file: !3, line: 34, type: !14)
!96 = !DILocation(line: 41, column: 7, scope: !97)
!97 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!98 = !DILocation(line: 0, scope: !97)
!99 = !DILocation(line: 41, column: 16, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !3, line: 41, column: 2)
!101 = !DILocation(line: 41, column: 2, scope: !97)
!102 = !DILocation(line: 42, column: 54, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !3, line: 41, column: 27)
!104 = !DILocation(line: 42, column: 49, scope: !103)
!105 = !DILocation(line: 42, column: 11, scope: !103)
!106 = !DILocation(line: 42, column: 3, scope: !103)
!107 = !DILocation(line: 42, column: 9, scope: !103)
!108 = !DILocation(line: 43, column: 2, scope: !103)
!109 = !DILocation(line: 41, column: 23, scope: !100)
!110 = !DILocation(line: 41, column: 2, scope: !100)
!111 = distinct !{!111, !101, !112, !113}
!112 = !DILocation(line: 43, column: 2, scope: !97)
!113 = !{!"llvm.loop.mustprogress"}
!114 = !DILocation(line: 44, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 2)
!116 = !DILocation(line: 0, scope: !115)
!117 = !DILocation(line: 44, column: 16, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !3, line: 44, column: 2)
!119 = !DILocation(line: 44, column: 2, scope: !115)
!120 = !DILocation(line: 45, column: 54, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !3, line: 44, column: 27)
!122 = !DILocation(line: 45, column: 49, scope: !121)
!123 = !DILocation(line: 45, column: 12, scope: !121)
!124 = !DILocation(line: 45, column: 3, scope: !121)
!125 = !DILocation(line: 45, column: 10, scope: !121)
!126 = !DILocation(line: 46, column: 2, scope: !121)
!127 = !DILocation(line: 44, column: 23, scope: !118)
!128 = !DILocation(line: 44, column: 2, scope: !118)
!129 = distinct !{!129, !119, !130, !113}
!130 = !DILocation(line: 46, column: 2, scope: !115)
!131 = !DILocation(line: 47, column: 2, scope: !2)
!132 = !DILocation(line: 47, column: 13, scope: !2)
!133 = !DILocalVariable(name: "state", scope: !134, file: !3, line: 48, type: !135)
!134 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 18)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 16)
!138 = !DILocation(line: 48, column: 12, scope: !134)
!139 = !DILocalVariable(name: "tmp", scope: !134, file: !3, line: 51, type: !140)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 64)
!143 = !DILocation(line: 51, column: 17, scope: !134)
!144 = !DILocation(line: 53, column: 11, scope: !134)
!145 = !DILocation(line: 53, column: 3, scope: !134)
!146 = !DILocation(line: 54, column: 11, scope: !134)
!147 = !DILocation(line: 54, column: 3, scope: !134)
!148 = !DILocation(line: 55, column: 3, scope: !134)
!149 = !DILocation(line: 55, column: 13, scope: !134)
!150 = !DILocation(line: 56, column: 11, scope: !134)
!151 = !DILocation(line: 56, column: 3, scope: !134)
!152 = !DILocalVariable(name: "i", scope: !134, file: !3, line: 49, type: !153)
!153 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!154 = !DILocation(line: 0, scope: !134)
!155 = !DILocation(line: 57, column: 8, scope: !156)
!156 = distinct !DILexicalBlock(scope: !134, file: !3, line: 57, column: 3)
!157 = !DILocation(line: 0, scope: !156)
!158 = !DILocation(line: 57, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !3, line: 57, column: 3)
!160 = !DILocation(line: 57, column: 3, scope: !156)
!161 = !DILocation(line: 74, column: 4, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 57, column: 29)
!163 = !DILocation(line: 74, column: 4, scope: !164)
!164 = distinct !DILexicalBlock(scope: !162, file: !3, line: 74, column: 4)
!165 = !DILocation(line: 75, column: 4, scope: !162)
!166 = !DILocation(line: 75, column: 4, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !3, line: 75, column: 4)
!168 = !DILocation(line: 76, column: 4, scope: !162)
!169 = !DILocation(line: 76, column: 4, scope: !170)
!170 = distinct !DILexicalBlock(scope: !162, file: !3, line: 76, column: 4)
!171 = !DILocation(line: 77, column: 4, scope: !162)
!172 = !DILocation(line: 77, column: 4, scope: !173)
!173 = distinct !DILexicalBlock(scope: !162, file: !3, line: 77, column: 4)
!174 = !DILocation(line: 78, column: 4, scope: !162)
!175 = !DILocation(line: 78, column: 4, scope: !176)
!176 = distinct !DILexicalBlock(scope: !162, file: !3, line: 78, column: 4)
!177 = !DILocation(line: 79, column: 4, scope: !162)
!178 = !DILocation(line: 79, column: 4, scope: !179)
!179 = distinct !DILexicalBlock(scope: !162, file: !3, line: 79, column: 4)
!180 = !DILocation(line: 80, column: 4, scope: !162)
!181 = !DILocation(line: 80, column: 4, scope: !182)
!182 = distinct !DILexicalBlock(scope: !162, file: !3, line: 80, column: 4)
!183 = !DILocation(line: 81, column: 4, scope: !162)
!184 = !DILocation(line: 81, column: 4, scope: !185)
!185 = distinct !DILexicalBlock(scope: !162, file: !3, line: 81, column: 4)
!186 = !DILocation(line: 85, column: 3, scope: !162)
!187 = !DILocation(line: 57, column: 25, scope: !159)
!188 = !DILocation(line: 57, column: 3, scope: !159)
!189 = distinct !{!189, !160, !190, !113}
!190 = !DILocation(line: 85, column: 3, scope: !156)
!191 = !DILocation(line: 86, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !134, file: !3, line: 86, column: 3)
!193 = !DILocation(line: 0, scope: !192)
!194 = !DILocation(line: 86, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !3, line: 86, column: 3)
!196 = !DILocation(line: 86, column: 3, scope: !192)
!197 = !DILocation(line: 87, column: 22, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !3, line: 86, column: 28)
!199 = !DILocation(line: 87, column: 16, scope: !198)
!200 = !DILocation(line: 87, column: 29, scope: !198)
!201 = !DILocation(line: 87, column: 40, scope: !198)
!202 = !DILocation(line: 87, column: 38, scope: !198)
!203 = !DILocation(line: 87, column: 4, scope: !198)
!204 = !DILocation(line: 88, column: 3, scope: !198)
!205 = !DILocation(line: 86, column: 24, scope: !195)
!206 = !DILocation(line: 86, column: 3, scope: !195)
!207 = distinct !{!207, !196, !208, !113}
!208 = !DILocation(line: 88, column: 3, scope: !192)
!209 = !DILocation(line: 89, column: 8, scope: !210)
!210 = distinct !DILexicalBlock(scope: !134, file: !3, line: 89, column: 3)
!211 = !DILocation(line: 0, scope: !210)
!212 = !DILocation(line: 89, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !3, line: 89, column: 3)
!214 = !DILocation(line: 89, column: 3, scope: !210)
!215 = !DILocation(line: 90, column: 22, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !3, line: 89, column: 29)
!217 = !DILocation(line: 90, column: 16, scope: !216)
!218 = !DILocation(line: 90, column: 29, scope: !216)
!219 = !DILocation(line: 90, column: 45, scope: !216)
!220 = !DILocation(line: 90, column: 40, scope: !216)
!221 = !DILocation(line: 90, column: 38, scope: !216)
!222 = !DILocation(line: 90, column: 4, scope: !216)
!223 = !DILocation(line: 91, column: 3, scope: !216)
!224 = !DILocation(line: 89, column: 25, scope: !213)
!225 = !DILocation(line: 89, column: 3, scope: !213)
!226 = distinct !{!226, !214, !227, !113}
!227 = !DILocation(line: 91, column: 3, scope: !210)
!228 = !DILocation(line: 92, column: 15, scope: !134)
!229 = !DILocation(line: 92, column: 24, scope: !134)
!230 = !DILocation(line: 92, column: 34, scope: !134)
!231 = !DILocation(line: 92, column: 3, scope: !134)
!232 = !DILocation(line: 93, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !134, file: !3, line: 93, column: 3)
!234 = !DILocation(line: 0, scope: !233)
!235 = !DILocation(line: 93, column: 18, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !3, line: 93, column: 3)
!237 = !DILocation(line: 93, column: 3, scope: !233)
!238 = !DILocation(line: 94, column: 22, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !3, line: 93, column: 30)
!240 = !DILocation(line: 94, column: 16, scope: !239)
!241 = !DILocation(line: 94, column: 29, scope: !239)
!242 = !DILocation(line: 94, column: 46, scope: !239)
!243 = !DILocation(line: 94, column: 40, scope: !239)
!244 = !DILocation(line: 94, column: 38, scope: !239)
!245 = !DILocation(line: 94, column: 4, scope: !239)
!246 = !DILocation(line: 95, column: 3, scope: !239)
!247 = !DILocation(line: 93, column: 26, scope: !236)
!248 = !DILocation(line: 93, column: 3, scope: !236)
!249 = distinct !{!249, !237, !250, !113}
!250 = !DILocation(line: 95, column: 3, scope: !233)
!251 = !DILocation(line: 97, column: 14, scope: !134)
!252 = !DILocation(line: 97, column: 10, scope: !134)
!253 = !DILocalVariable(name: "clen", scope: !134, file: !3, line: 50, type: !14)
!254 = !DILocation(line: 98, column: 8, scope: !255)
!255 = distinct !DILexicalBlock(scope: !134, file: !3, line: 98, column: 3)
!256 = !DILocation(line: 0, scope: !255)
!257 = !DILocation(line: 98, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 98, column: 3)
!259 = !DILocation(line: 98, column: 3, scope: !255)
!260 = !DILocation(line: 99, column: 14, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !3, line: 98, column: 31)
!262 = !DILocation(line: 99, column: 4, scope: !261)
!263 = !DILocation(line: 99, column: 11, scope: !261)
!264 = !DILocation(line: 100, column: 3, scope: !261)
!265 = !DILocation(line: 98, column: 27, scope: !258)
!266 = !DILocation(line: 98, column: 3, scope: !258)
!267 = distinct !{!267, !259, !268, !113}
!268 = !DILocation(line: 100, column: 3, scope: !255)
!269 = !DILocation(line: 101, column: 7, scope: !134)
!270 = !DILocation(line: 102, column: 7, scope: !134)
!271 = !DILocation(line: 103, column: 6, scope: !134)
!272 = distinct !{!272, !131, !273, !113}
!273 = !DILocation(line: 104, column: 2, scope: !2)
!274 = !DILocation(line: 105, column: 2, scope: !2)
!275 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !276, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!276 = !DISubroutineType(types: !277)
!277 = !{!6, !11}
!278 = !DILocalVariable(name: "src", arg: 1, scope: !275, file: !26, line: 574, type: !11)
!279 = !DILocation(line: 0, scope: !275)
!280 = !DILocation(line: 577, column: 10, scope: !275)
!281 = !DILocation(line: 577, column: 38, scope: !275)
!282 = !DILocation(line: 577, column: 2, scope: !275)
!283 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !284, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !13, !6}
!286 = !DILocalVariable(name: "dst", arg: 1, scope: !283, file: !26, line: 542, type: !13)
!287 = !DILocation(line: 0, scope: !283)
!288 = !DILocalVariable(name: "x", arg: 2, scope: !283, file: !26, line: 542, type: !6)
!289 = !DILocation(line: 545, column: 3, scope: !283)
!290 = !DILocation(line: 545, column: 25, scope: !283)
!291 = !DILocation(line: 545, column: 27, scope: !283)
!292 = !DILocation(line: 555, column: 1, scope: !283)
!293 = distinct !DISubprogram(name: "br_poly1305_ctmul32_run", scope: !39, file: !39, line: 166, type: !294, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !18)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !11, !11, !13, !14, !11, !14, !13, !296, !153}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_chacha20_run", file: !297, line: 2442, baseType: !298)
!297 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmul32_ChaCha20")
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!299 = !DILocalVariable(name: "key", arg: 1, scope: !293, file: !39, line: 166, type: !11)
!300 = !DILocation(line: 0, scope: !293)
!301 = !DILocalVariable(name: "iv", arg: 2, scope: !293, file: !39, line: 166, type: !11)
!302 = !DILocalVariable(name: "data", arg: 3, scope: !293, file: !39, line: 167, type: !13)
!303 = !DILocalVariable(name: "len", arg: 4, scope: !293, file: !39, line: 167, type: !14)
!304 = !DILocalVariable(name: "aad", arg: 5, scope: !293, file: !39, line: 167, type: !11)
!305 = !DILocalVariable(name: "aad_len", arg: 6, scope: !293, file: !39, line: 167, type: !14)
!306 = !DILocalVariable(name: "tag", arg: 7, scope: !293, file: !39, line: 168, type: !13)
!307 = !DILocalVariable(name: "ichacha", arg: 8, scope: !293, file: !39, line: 168, type: !296)
!308 = !DILocalVariable(name: "encrypt", arg: 9, scope: !293, file: !39, line: 168, type: !153)
!309 = !DILocalVariable(name: "pkey", scope: !293, file: !39, line: 170, type: !310)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 32)
!313 = !DILocation(line: 170, column: 16, scope: !293)
!314 = !DILocalVariable(name: "foot", scope: !293, file: !39, line: 170, type: !315)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !136)
!316 = !DILocation(line: 170, column: 26, scope: !293)
!317 = !DILocalVariable(name: "r", scope: !293, file: !39, line: 171, type: !318)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 608, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 19)
!321 = !DILocation(line: 171, column: 14, scope: !293)
!322 = !DILocalVariable(name: "acc", scope: !293, file: !39, line: 171, type: !323)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 10)
!326 = !DILocation(line: 171, column: 21, scope: !293)
!327 = !DILocation(line: 178, column: 2, scope: !293)
!328 = !DILocation(line: 179, column: 22, scope: !293)
!329 = !DILocation(line: 179, column: 2, scope: !293)
!330 = !DILocation(line: 185, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !293, file: !39, line: 185, column: 6)
!332 = !DILocation(line: 185, column: 6, scope: !293)
!333 = !DILocation(line: 186, column: 3, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !39, line: 185, column: 15)
!335 = !DILocation(line: 187, column: 2, scope: !334)
!336 = !DILocation(line: 200, column: 17, scope: !293)
!337 = !DILocation(line: 200, column: 6, scope: !293)
!338 = !DILocation(line: 200, column: 23, scope: !293)
!339 = !DILocalVariable(name: "z", scope: !293, file: !39, line: 171, type: !6)
!340 = !DILocation(line: 201, column: 11, scope: !293)
!341 = !DILocation(line: 201, column: 2, scope: !293)
!342 = !DILocation(line: 201, column: 7, scope: !293)
!343 = !DILocation(line: 202, column: 12, scope: !293)
!344 = !DILocation(line: 202, column: 2, scope: !293)
!345 = !DILocation(line: 202, column: 8, scope: !293)
!346 = !DILocation(line: 203, column: 18, scope: !293)
!347 = !DILocation(line: 203, column: 23, scope: !293)
!348 = !DILocation(line: 203, column: 7, scope: !293)
!349 = !DILocation(line: 203, column: 29, scope: !293)
!350 = !DILocation(line: 203, column: 35, scope: !293)
!351 = !DILocation(line: 204, column: 12, scope: !293)
!352 = !DILocation(line: 204, column: 2, scope: !293)
!353 = !DILocation(line: 204, column: 8, scope: !293)
!354 = !DILocation(line: 205, column: 12, scope: !293)
!355 = !DILocation(line: 205, column: 2, scope: !293)
!356 = !DILocation(line: 205, column: 8, scope: !293)
!357 = !DILocation(line: 206, column: 18, scope: !293)
!358 = !DILocation(line: 206, column: 23, scope: !293)
!359 = !DILocation(line: 206, column: 7, scope: !293)
!360 = !DILocation(line: 206, column: 29, scope: !293)
!361 = !DILocation(line: 206, column: 35, scope: !293)
!362 = !DILocation(line: 207, column: 12, scope: !293)
!363 = !DILocation(line: 207, column: 2, scope: !293)
!364 = !DILocation(line: 207, column: 8, scope: !293)
!365 = !DILocation(line: 208, column: 12, scope: !293)
!366 = !DILocation(line: 208, column: 2, scope: !293)
!367 = !DILocation(line: 208, column: 8, scope: !293)
!368 = !DILocation(line: 209, column: 18, scope: !293)
!369 = !DILocation(line: 209, column: 23, scope: !293)
!370 = !DILocation(line: 209, column: 7, scope: !293)
!371 = !DILocation(line: 209, column: 29, scope: !293)
!372 = !DILocation(line: 209, column: 35, scope: !293)
!373 = !DILocation(line: 210, column: 12, scope: !293)
!374 = !DILocation(line: 210, column: 2, scope: !293)
!375 = !DILocation(line: 210, column: 8, scope: !293)
!376 = !DILocation(line: 211, column: 12, scope: !293)
!377 = !DILocation(line: 211, column: 2, scope: !293)
!378 = !DILocation(line: 211, column: 8, scope: !293)
!379 = !DILocation(line: 212, column: 18, scope: !293)
!380 = !DILocation(line: 212, column: 23, scope: !293)
!381 = !DILocation(line: 212, column: 7, scope: !293)
!382 = !DILocation(line: 212, column: 29, scope: !293)
!383 = !DILocation(line: 212, column: 35, scope: !293)
!384 = !DILocation(line: 213, column: 12, scope: !293)
!385 = !DILocation(line: 213, column: 2, scope: !293)
!386 = !DILocation(line: 213, column: 8, scope: !293)
!387 = !DILocation(line: 214, column: 12, scope: !293)
!388 = !DILocation(line: 214, column: 2, scope: !293)
!389 = !DILocation(line: 214, column: 8, scope: !293)
!390 = !DILocalVariable(name: "i", scope: !293, file: !39, line: 172, type: !153)
!391 = !DILocation(line: 219, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !293, file: !39, line: 219, column: 2)
!393 = !DILocation(line: 0, scope: !392)
!394 = !DILocation(line: 219, column: 16, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !39, line: 219, column: 2)
!396 = !DILocation(line: 219, column: 2, scope: !392)
!397 = !DILocation(line: 220, column: 10, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !39, line: 219, column: 27)
!399 = !DILocation(line: 220, column: 3, scope: !398)
!400 = !DILocation(line: 220, column: 8, scope: !398)
!401 = !DILocation(line: 221, column: 2, scope: !398)
!402 = !DILocation(line: 219, column: 23, scope: !395)
!403 = !DILocation(line: 219, column: 2, scope: !395)
!404 = distinct !{!404, !396, !405, !113}
!405 = !DILocation(line: 221, column: 2, scope: !392)
!406 = !DILocation(line: 226, column: 2, scope: !293)
!407 = !DILocation(line: 232, column: 13, scope: !293)
!408 = !DILocation(line: 232, column: 2, scope: !293)
!409 = !DILocation(line: 233, column: 13, scope: !293)
!410 = !DILocation(line: 233, column: 18, scope: !293)
!411 = !DILocation(line: 233, column: 2, scope: !293)
!412 = !DILocation(line: 234, column: 17, scope: !293)
!413 = !DILocation(line: 234, column: 22, scope: !293)
!414 = !DILocation(line: 234, column: 2, scope: !293)
!415 = !DILocation(line: 235, column: 17, scope: !293)
!416 = !DILocation(line: 235, column: 22, scope: !293)
!417 = !DILocation(line: 235, column: 2, scope: !293)
!418 = !DILocation(line: 236, column: 17, scope: !293)
!419 = !DILocation(line: 236, column: 22, scope: !293)
!420 = !DILocation(line: 236, column: 25, scope: !293)
!421 = !DILocation(line: 236, column: 2, scope: !293)
!422 = !DILocalVariable(name: "cc", scope: !293, file: !39, line: 171, type: !6)
!423 = !DILocation(line: 246, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !293, file: !39, line: 246, column: 2)
!425 = !DILocation(line: 0, scope: !424)
!426 = !DILocation(line: 246, column: 16, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !39, line: 246, column: 2)
!428 = !DILocation(line: 246, column: 2, scope: !424)
!429 = !DILocation(line: 247, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !39, line: 246, column: 28)
!431 = !DILocation(line: 247, column: 14, scope: !430)
!432 = !DILocation(line: 248, column: 14, scope: !430)
!433 = !DILocation(line: 248, column: 3, scope: !430)
!434 = !DILocation(line: 248, column: 10, scope: !430)
!435 = !DILocation(line: 249, column: 10, scope: !430)
!436 = !DILocation(line: 250, column: 2, scope: !430)
!437 = !DILocation(line: 246, column: 24, scope: !427)
!438 = !DILocation(line: 246, column: 2, scope: !427)
!439 = distinct !{!439, !428, !440, !113}
!440 = !DILocation(line: 250, column: 2, scope: !424)
!441 = !DILocation(line: 251, column: 6, scope: !293)
!442 = !DILocation(line: 251, column: 13, scope: !293)
!443 = !DILocation(line: 251, column: 24, scope: !293)
!444 = !DILocation(line: 251, column: 18, scope: !293)
!445 = !DILocation(line: 252, column: 13, scope: !293)
!446 = !DILocation(line: 252, column: 2, scope: !293)
!447 = !DILocation(line: 252, column: 9, scope: !293)
!448 = !DILocation(line: 253, column: 14, scope: !293)
!449 = !DILocation(line: 253, column: 2, scope: !293)
!450 = !DILocation(line: 253, column: 9, scope: !293)
!451 = !DILocation(line: 260, column: 11, scope: !293)
!452 = !DILocation(line: 260, column: 8, scope: !293)
!453 = !DILocalVariable(name: "ctl", scope: !293, file: !39, line: 171, type: !6)
!454 = !DILocation(line: 261, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !293, file: !39, line: 261, column: 2)
!456 = !DILocation(line: 0, scope: !455)
!457 = !DILocation(line: 261, column: 16, scope: !458)
!458 = distinct !DILexicalBlock(scope: !455, file: !39, line: 261, column: 2)
!459 = !DILocation(line: 261, column: 2, scope: !455)
!460 = !DILocation(line: 262, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !39, line: 261, column: 28)
!462 = !DILocation(line: 262, column: 10, scope: !461)
!463 = !DILocation(line: 262, column: 7, scope: !461)
!464 = !DILocation(line: 263, column: 2, scope: !461)
!465 = !DILocation(line: 261, column: 24, scope: !458)
!466 = !DILocation(line: 261, column: 2, scope: !458)
!467 = distinct !{!467, !459, !468, !113}
!468 = !DILocation(line: 263, column: 2, scope: !455)
!469 = !DILocation(line: 264, column: 20, scope: !293)
!470 = !DILocation(line: 264, column: 27, scope: !293)
!471 = !DILocation(line: 264, column: 37, scope: !293)
!472 = !DILocation(line: 264, column: 11, scope: !293)
!473 = !DILocation(line: 264, column: 2, scope: !293)
!474 = !DILocation(line: 264, column: 9, scope: !293)
!475 = !DILocation(line: 265, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !293, file: !39, line: 265, column: 2)
!477 = !DILocation(line: 0, scope: !476)
!478 = !DILocation(line: 265, column: 16, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !39, line: 265, column: 2)
!480 = !DILocation(line: 265, column: 2, scope: !476)
!481 = !DILocation(line: 266, column: 15, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !39, line: 265, column: 28)
!483 = !DILocation(line: 266, column: 13, scope: !482)
!484 = !DILocation(line: 266, column: 3, scope: !482)
!485 = !DILocation(line: 266, column: 10, scope: !482)
!486 = !DILocation(line: 267, column: 2, scope: !482)
!487 = !DILocation(line: 265, column: 24, scope: !479)
!488 = !DILocation(line: 265, column: 2, scope: !479)
!489 = distinct !{!489, !480, !490, !113}
!490 = !DILocation(line: 267, column: 2, scope: !476)
!491 = !DILocation(line: 274, column: 6, scope: !293)
!492 = !DILocation(line: 274, column: 16, scope: !293)
!493 = !DILocation(line: 274, column: 23, scope: !293)
!494 = !DILocation(line: 274, column: 13, scope: !293)
!495 = !DILocation(line: 274, column: 43, scope: !293)
!496 = !DILocation(line: 274, column: 48, scope: !293)
!497 = !DILocation(line: 274, column: 32, scope: !293)
!498 = !DILocation(line: 274, column: 30, scope: !293)
!499 = !DILocation(line: 275, column: 37, scope: !293)
!500 = !DILocation(line: 275, column: 2, scope: !293)
!501 = !DILocation(line: 276, column: 9, scope: !293)
!502 = !DILocation(line: 276, column: 19, scope: !293)
!503 = !DILocation(line: 276, column: 26, scope: !293)
!504 = !DILocation(line: 276, column: 16, scope: !293)
!505 = !DILocation(line: 276, column: 46, scope: !293)
!506 = !DILocation(line: 276, column: 51, scope: !293)
!507 = !DILocation(line: 276, column: 35, scope: !293)
!508 = !DILocation(line: 276, column: 33, scope: !293)
!509 = !DILocation(line: 277, column: 34, scope: !293)
!510 = !DILocation(line: 277, column: 41, scope: !293)
!511 = !DILocation(line: 277, column: 2, scope: !293)
!512 = !DILocation(line: 278, column: 9, scope: !293)
!513 = !DILocation(line: 278, column: 19, scope: !293)
!514 = !DILocation(line: 278, column: 26, scope: !293)
!515 = !DILocation(line: 278, column: 16, scope: !293)
!516 = !DILocation(line: 278, column: 45, scope: !293)
!517 = !DILocation(line: 278, column: 50, scope: !293)
!518 = !DILocation(line: 278, column: 34, scope: !293)
!519 = !DILocation(line: 278, column: 32, scope: !293)
!520 = !DILocation(line: 279, column: 34, scope: !293)
!521 = !DILocation(line: 279, column: 41, scope: !293)
!522 = !DILocation(line: 279, column: 2, scope: !293)
!523 = !DILocation(line: 280, column: 9, scope: !293)
!524 = !DILocation(line: 280, column: 19, scope: !293)
!525 = !DILocation(line: 280, column: 26, scope: !293)
!526 = !DILocation(line: 280, column: 16, scope: !293)
!527 = !DILocation(line: 280, column: 45, scope: !293)
!528 = !DILocation(line: 280, column: 50, scope: !293)
!529 = !DILocation(line: 280, column: 34, scope: !293)
!530 = !DILocation(line: 280, column: 32, scope: !293)
!531 = !DILocation(line: 281, column: 34, scope: !293)
!532 = !DILocation(line: 281, column: 41, scope: !293)
!533 = !DILocation(line: 281, column: 2, scope: !293)
!534 = !DILocation(line: 282, column: 9, scope: !293)
!535 = !DILocation(line: 282, column: 19, scope: !293)
!536 = !DILocation(line: 282, column: 26, scope: !293)
!537 = !DILocation(line: 282, column: 16, scope: !293)
!538 = !DILocation(line: 282, column: 35, scope: !293)
!539 = !DILocation(line: 282, column: 42, scope: !293)
!540 = !DILocation(line: 282, column: 32, scope: !293)
!541 = !DILocation(line: 282, column: 62, scope: !293)
!542 = !DILocation(line: 282, column: 67, scope: !293)
!543 = !DILocation(line: 282, column: 51, scope: !293)
!544 = !DILocation(line: 282, column: 49, scope: !293)
!545 = !DILocation(line: 283, column: 34, scope: !293)
!546 = !DILocation(line: 283, column: 41, scope: !293)
!547 = !DILocation(line: 283, column: 2, scope: !293)
!548 = !DILocation(line: 284, column: 9, scope: !293)
!549 = !DILocation(line: 284, column: 19, scope: !293)
!550 = !DILocation(line: 284, column: 26, scope: !293)
!551 = !DILocation(line: 284, column: 16, scope: !293)
!552 = !DILocation(line: 284, column: 46, scope: !293)
!553 = !DILocation(line: 284, column: 51, scope: !293)
!554 = !DILocation(line: 284, column: 35, scope: !293)
!555 = !DILocation(line: 284, column: 33, scope: !293)
!556 = !DILocation(line: 285, column: 34, scope: !293)
!557 = !DILocation(line: 285, column: 42, scope: !293)
!558 = !DILocation(line: 285, column: 2, scope: !293)
!559 = !DILocation(line: 286, column: 9, scope: !293)
!560 = !DILocation(line: 286, column: 19, scope: !293)
!561 = !DILocation(line: 286, column: 26, scope: !293)
!562 = !DILocation(line: 286, column: 16, scope: !293)
!563 = !DILocation(line: 286, column: 45, scope: !293)
!564 = !DILocation(line: 286, column: 50, scope: !293)
!565 = !DILocation(line: 286, column: 34, scope: !293)
!566 = !DILocation(line: 286, column: 32, scope: !293)
!567 = !DILocation(line: 287, column: 34, scope: !293)
!568 = !DILocation(line: 287, column: 42, scope: !293)
!569 = !DILocation(line: 287, column: 2, scope: !293)
!570 = !DILocation(line: 288, column: 9, scope: !293)
!571 = !DILocation(line: 288, column: 19, scope: !293)
!572 = !DILocation(line: 288, column: 26, scope: !293)
!573 = !DILocation(line: 288, column: 16, scope: !293)
!574 = !DILocation(line: 288, column: 45, scope: !293)
!575 = !DILocation(line: 288, column: 50, scope: !293)
!576 = !DILocation(line: 288, column: 34, scope: !293)
!577 = !DILocation(line: 288, column: 32, scope: !293)
!578 = !DILocation(line: 289, column: 34, scope: !293)
!579 = !DILocation(line: 289, column: 42, scope: !293)
!580 = !DILocation(line: 289, column: 2, scope: !293)
!581 = !DILocation(line: 294, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !293, file: !39, line: 294, column: 6)
!583 = !DILocation(line: 294, column: 6, scope: !293)
!584 = !DILocation(line: 295, column: 3, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !39, line: 294, column: 16)
!586 = !DILocation(line: 296, column: 2, scope: !585)
!587 = !DILocation(line: 297, column: 1, scope: !293)
!588 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !276, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!589 = !DILocalVariable(name: "src", arg: 1, scope: !588, file: !26, line: 574, type: !11)
!590 = !DILocation(line: 0, scope: !588)
!591 = !DILocation(line: 577, column: 10, scope: !588)
!592 = !DILocation(line: 577, column: 38, scope: !588)
!593 = !DILocation(line: 577, column: 2, scope: !588)
!594 = distinct !DISubprogram(name: "br_enc64le", scope: !26, file: !26, line: 606, type: !595, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !13, !41}
!597 = !DILocalVariable(name: "dst", arg: 1, scope: !594, file: !26, line: 606, type: !13)
!598 = !DILocation(line: 0, scope: !594)
!599 = !DILocalVariable(name: "x", arg: 2, scope: !594, file: !26, line: 606, type: !41)
!600 = !DILocation(line: 609, column: 3, scope: !594)
!601 = !DILocation(line: 609, column: 25, scope: !594)
!602 = !DILocation(line: 609, column: 27, scope: !594)
!603 = !DILocation(line: 617, column: 1, scope: !594)
!604 = distinct !DISubprogram(name: "poly1305_inner", scope: !39, file: !39, line: 31, type: !605, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !607, !608, !11, !14}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!609 = !DILocalVariable(name: "a", arg: 1, scope: !604, file: !39, line: 31, type: !607)
!610 = !DILocation(line: 0, scope: !604)
!611 = !DILocalVariable(name: "r", arg: 2, scope: !604, file: !39, line: 31, type: !608)
!612 = !DILocalVariable(name: "data", arg: 3, scope: !604, file: !39, line: 31, type: !11)
!613 = !DILocalVariable(name: "len", arg: 4, scope: !604, file: !39, line: 31, type: !14)
!614 = !DILocalVariable(name: "buf", scope: !604, file: !39, line: 48, type: !20)
!615 = !DILocation(line: 51, column: 2, scope: !604)
!616 = !DILocation(line: 51, column: 13, scope: !604)
!617 = !DILocalVariable(name: "tmp", scope: !618, file: !39, line: 52, type: !315)
!618 = distinct !DILexicalBlock(scope: !604, file: !39, line: 51, column: 18)
!619 = !DILocation(line: 52, column: 17, scope: !618)
!620 = !DILocalVariable(name: "b", scope: !618, file: !39, line: 53, type: !323)
!621 = !DILocation(line: 53, column: 12, scope: !618)
!622 = !DILocation(line: 60, column: 11, scope: !623)
!623 = distinct !DILexicalBlock(scope: !618, file: !39, line: 60, column: 7)
!624 = !DILocation(line: 60, column: 7, scope: !618)
!625 = !DILocation(line: 61, column: 4, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !39, line: 60, column: 17)
!627 = !DILocation(line: 62, column: 4, scope: !626)
!628 = !DILocation(line: 63, column: 10, scope: !626)
!629 = !DILocation(line: 65, column: 3, scope: !626)
!630 = !DILocation(line: 71, column: 7, scope: !618)
!631 = !DILocalVariable(name: "v", scope: !618, file: !39, line: 54, type: !10)
!632 = !DILocation(line: 0, scope: !618)
!633 = !DILocation(line: 72, column: 13, scope: !618)
!634 = !DILocation(line: 72, column: 3, scope: !618)
!635 = !DILocation(line: 72, column: 8, scope: !618)
!636 = !DILocation(line: 73, column: 5, scope: !618)
!637 = !DILocation(line: 74, column: 8, scope: !618)
!638 = !DILocation(line: 74, column: 15, scope: !618)
!639 = !DILocation(line: 74, column: 5, scope: !618)
!640 = !DILocation(line: 75, column: 8, scope: !618)
!641 = !DILocation(line: 75, column: 15, scope: !618)
!642 = !DILocation(line: 75, column: 5, scope: !618)
!643 = !DILocation(line: 76, column: 13, scope: !618)
!644 = !DILocation(line: 76, column: 3, scope: !618)
!645 = !DILocation(line: 76, column: 8, scope: !618)
!646 = !DILocation(line: 77, column: 5, scope: !618)
!647 = !DILocation(line: 78, column: 8, scope: !618)
!648 = !DILocation(line: 78, column: 15, scope: !618)
!649 = !DILocation(line: 78, column: 5, scope: !618)
!650 = !DILocation(line: 79, column: 13, scope: !618)
!651 = !DILocation(line: 79, column: 3, scope: !618)
!652 = !DILocation(line: 79, column: 8, scope: !618)
!653 = !DILocation(line: 80, column: 5, scope: !618)
!654 = !DILocation(line: 81, column: 8, scope: !618)
!655 = !DILocation(line: 81, column: 15, scope: !618)
!656 = !DILocation(line: 81, column: 5, scope: !618)
!657 = !DILocation(line: 82, column: 8, scope: !618)
!658 = !DILocation(line: 82, column: 15, scope: !618)
!659 = !DILocation(line: 82, column: 5, scope: !618)
!660 = !DILocation(line: 83, column: 13, scope: !618)
!661 = !DILocation(line: 83, column: 3, scope: !618)
!662 = !DILocation(line: 83, column: 8, scope: !618)
!663 = !DILocation(line: 84, column: 5, scope: !618)
!664 = !DILocation(line: 85, column: 8, scope: !618)
!665 = !DILocation(line: 85, column: 15, scope: !618)
!666 = !DILocation(line: 85, column: 5, scope: !618)
!667 = !DILocation(line: 86, column: 8, scope: !618)
!668 = !DILocation(line: 86, column: 15, scope: !618)
!669 = !DILocation(line: 86, column: 5, scope: !618)
!670 = !DILocation(line: 87, column: 13, scope: !618)
!671 = !DILocation(line: 87, column: 3, scope: !618)
!672 = !DILocation(line: 87, column: 8, scope: !618)
!673 = !DILocation(line: 88, column: 5, scope: !618)
!674 = !DILocation(line: 89, column: 8, scope: !618)
!675 = !DILocation(line: 89, column: 15, scope: !618)
!676 = !DILocation(line: 89, column: 5, scope: !618)
!677 = !DILocation(line: 90, column: 13, scope: !618)
!678 = !DILocation(line: 90, column: 3, scope: !618)
!679 = !DILocation(line: 90, column: 8, scope: !618)
!680 = !DILocation(line: 91, column: 5, scope: !618)
!681 = !DILocation(line: 92, column: 8, scope: !618)
!682 = !DILocation(line: 92, column: 16, scope: !618)
!683 = !DILocation(line: 92, column: 5, scope: !618)
!684 = !DILocation(line: 93, column: 8, scope: !618)
!685 = !DILocation(line: 93, column: 16, scope: !618)
!686 = !DILocation(line: 93, column: 5, scope: !618)
!687 = !DILocation(line: 94, column: 13, scope: !618)
!688 = !DILocation(line: 94, column: 3, scope: !618)
!689 = !DILocation(line: 94, column: 8, scope: !618)
!690 = !DILocation(line: 95, column: 5, scope: !618)
!691 = !DILocation(line: 96, column: 8, scope: !618)
!692 = !DILocation(line: 96, column: 16, scope: !618)
!693 = !DILocation(line: 96, column: 5, scope: !618)
!694 = !DILocation(line: 97, column: 13, scope: !618)
!695 = !DILocation(line: 97, column: 3, scope: !618)
!696 = !DILocation(line: 97, column: 8, scope: !618)
!697 = !DILocation(line: 98, column: 22, scope: !618)
!698 = !DILocation(line: 98, column: 7, scope: !618)
!699 = !DILocation(line: 99, column: 13, scope: !618)
!700 = !DILocation(line: 99, column: 3, scope: !618)
!701 = !DILocation(line: 99, column: 8, scope: !618)
!702 = !DILocation(line: 100, column: 5, scope: !618)
!703 = !DILocation(line: 101, column: 8, scope: !618)
!704 = !DILocation(line: 101, column: 16, scope: !618)
!705 = !DILocation(line: 101, column: 5, scope: !618)
!706 = !DILocation(line: 102, column: 13, scope: !618)
!707 = !DILocation(line: 102, column: 3, scope: !618)
!708 = !DILocation(line: 102, column: 8, scope: !618)
!709 = !DILocalVariable(name: "cc1", scope: !618, file: !39, line: 55, type: !6)
!710 = !DILocalVariable(name: "u", scope: !618, file: !39, line: 54, type: !10)
!711 = !DILocation(line: 123, column: 8, scope: !712)
!712 = distinct !DILexicalBlock(scope: !618, file: !39, line: 123, column: 3)
!713 = !DILocation(line: 0, scope: !712)
!714 = !DILocation(line: 123, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !39, line: 123, column: 3)
!716 = !DILocation(line: 123, column: 3, scope: !712)
!717 = !DILocation(line: 127, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !715, file: !39, line: 123, column: 29)
!719 = !DILocation(line: 127, column: 5, scope: !718)
!720 = !DILocation(line: 128, column: 7, scope: !718)
!721 = !DILocation(line: 128, column: 5, scope: !718)
!722 = !DILocation(line: 129, column: 7, scope: !718)
!723 = !DILocation(line: 129, column: 5, scope: !718)
!724 = !DILocation(line: 130, column: 7, scope: !718)
!725 = !DILocation(line: 130, column: 5, scope: !718)
!726 = !DILocation(line: 131, column: 7, scope: !718)
!727 = !DILocation(line: 131, column: 5, scope: !718)
!728 = !DILocalVariable(name: "s", scope: !718, file: !39, line: 124, type: !6)
!729 = !DILocation(line: 0, scope: !718)
!730 = !DILocation(line: 132, column: 13, scope: !718)
!731 = !DILocation(line: 132, column: 4, scope: !718)
!732 = !DILocation(line: 132, column: 9, scope: !718)
!733 = !DILocation(line: 133, column: 12, scope: !718)
!734 = !DILocation(line: 134, column: 3, scope: !718)
!735 = !DILocation(line: 123, column: 25, scope: !715)
!736 = !DILocation(line: 123, column: 3, scope: !715)
!737 = distinct !{!737, !716, !738, !113}
!738 = !DILocation(line: 134, column: 3, scope: !712)
!739 = !DILocalVariable(name: "cc2", scope: !618, file: !39, line: 55, type: !6)
!740 = !DILocation(line: 136, column: 8, scope: !741)
!741 = distinct !DILexicalBlock(scope: !618, file: !39, line: 136, column: 3)
!742 = !DILocation(line: 0, scope: !741)
!743 = !DILocation(line: 136, column: 17, scope: !744)
!744 = distinct !DILexicalBlock(scope: !741, file: !39, line: 136, column: 3)
!745 = !DILocation(line: 136, column: 3, scope: !741)
!746 = !DILocation(line: 139, column: 8, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !39, line: 136, column: 29)
!748 = !DILocation(line: 139, column: 13, scope: !747)
!749 = !DILocation(line: 140, column: 7, scope: !747)
!750 = !DILocation(line: 140, column: 5, scope: !747)
!751 = !DILocation(line: 141, column: 7, scope: !747)
!752 = !DILocation(line: 141, column: 5, scope: !747)
!753 = !DILocation(line: 142, column: 7, scope: !747)
!754 = !DILocation(line: 142, column: 5, scope: !747)
!755 = !DILocation(line: 143, column: 7, scope: !747)
!756 = !DILocation(line: 143, column: 5, scope: !747)
!757 = !DILocation(line: 144, column: 7, scope: !747)
!758 = !DILocation(line: 144, column: 5, scope: !747)
!759 = !DILocalVariable(name: "s", scope: !747, file: !39, line: 137, type: !6)
!760 = !DILocation(line: 0, scope: !747)
!761 = !DILocation(line: 145, column: 13, scope: !747)
!762 = !DILocation(line: 145, column: 4, scope: !747)
!763 = !DILocation(line: 145, column: 9, scope: !747)
!764 = !DILocation(line: 146, column: 12, scope: !747)
!765 = !DILocation(line: 147, column: 3, scope: !747)
!766 = !DILocation(line: 136, column: 25, scope: !744)
!767 = !DILocation(line: 136, column: 3, scope: !744)
!768 = distinct !{!768, !745, !769, !113}
!769 = !DILocation(line: 147, column: 3, scope: !741)
!770 = !DILocation(line: 148, column: 3, scope: !618)
!771 = !DILocation(line: 154, column: 11, scope: !618)
!772 = !DILocalVariable(name: "z", scope: !618, file: !39, line: 55, type: !6)
!773 = !DILocation(line: 155, column: 11, scope: !618)
!774 = !DILocation(line: 155, column: 19, scope: !618)
!775 = !DILocation(line: 155, column: 17, scope: !618)
!776 = !DILocation(line: 155, column: 5, scope: !618)
!777 = !DILocation(line: 156, column: 12, scope: !618)
!778 = !DILocation(line: 156, column: 3, scope: !618)
!779 = !DILocation(line: 156, column: 8, scope: !618)
!780 = !DILocation(line: 157, column: 13, scope: !618)
!781 = !DILocation(line: 157, column: 3, scope: !618)
!782 = !DILocation(line: 157, column: 8, scope: !618)
!783 = !DILocation(line: 159, column: 7, scope: !618)
!784 = !DILocation(line: 160, column: 7, scope: !618)
!785 = distinct !{!785, !615, !786, !113}
!786 = !DILocation(line: 161, column: 2, scope: !604)
!787 = !DILocation(line: 162, column: 1, scope: !604)
!788 = distinct !DISubprogram(name: "GT", scope: !26, file: !26, line: 803, type: !789, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!789 = !DISubroutineType(types: !790)
!790 = !{!6, !6, !6}
!791 = !DILocalVariable(name: "x", arg: 1, scope: !788, file: !26, line: 803, type: !6)
!792 = !DILocation(line: 0, scope: !788)
!793 = !DILocalVariable(name: "y", arg: 2, scope: !788, file: !26, line: 803, type: !6)
!794 = !DILocation(line: 819, column: 8, scope: !788)
!795 = !DILocalVariable(name: "z", scope: !788, file: !26, line: 817, type: !6)
!796 = !DILocation(line: 820, column: 18, scope: !788)
!797 = !DILocation(line: 820, column: 28, scope: !788)
!798 = !DILocation(line: 820, column: 23, scope: !788)
!799 = !DILocation(line: 820, column: 12, scope: !788)
!800 = !DILocation(line: 820, column: 35, scope: !788)
!801 = !DILocation(line: 820, column: 2, scope: !788)
!802 = distinct !DISubprogram(name: "EQ", scope: !26, file: !26, line: 779, type: !789, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!803 = !DILocalVariable(name: "x", arg: 1, scope: !802, file: !26, line: 779, type: !6)
!804 = !DILocation(line: 0, scope: !802)
!805 = !DILocalVariable(name: "y", arg: 2, scope: !802, file: !26, line: 779, type: !6)
!806 = !DILocation(line: 783, column: 8, scope: !802)
!807 = !DILocalVariable(name: "q", scope: !802, file: !26, line: 781, type: !6)
!808 = !DILocation(line: 784, column: 18, scope: !802)
!809 = !DILocation(line: 784, column: 16, scope: !802)
!810 = !DILocation(line: 784, column: 22, scope: !802)
!811 = !DILocation(line: 784, column: 9, scope: !802)
!812 = !DILocation(line: 784, column: 2, scope: !802)
!813 = distinct !DISubprogram(name: "MUX", scope: !26, file: !26, line: 770, type: !814, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!814 = !DISubroutineType(types: !815)
!815 = !{!6, !6, !6, !6}
!816 = !DILocalVariable(name: "ctl", arg: 1, scope: !813, file: !26, line: 770, type: !6)
!817 = !DILocation(line: 0, scope: !813)
!818 = !DILocalVariable(name: "x", arg: 2, scope: !813, file: !26, line: 770, type: !6)
!819 = !DILocalVariable(name: "y", arg: 3, scope: !813, file: !26, line: 770, type: !6)
!820 = !DILocation(line: 772, column: 14, scope: !813)
!821 = !DILocation(line: 772, column: 24, scope: !813)
!822 = !DILocation(line: 772, column: 19, scope: !813)
!823 = !DILocation(line: 772, column: 11, scope: !813)
!824 = !DILocation(line: 772, column: 2, scope: !813)
!825 = distinct !DISubprogram(name: "br_dec16le", scope: !26, file: !26, line: 516, type: !826, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!826 = !DISubroutineType(types: !827)
!827 = !{!10, !11}
!828 = !DILocalVariable(name: "src", arg: 1, scope: !825, file: !26, line: 516, type: !11)
!829 = !DILocation(line: 0, scope: !825)
!830 = !DILocation(line: 519, column: 10, scope: !825)
!831 = !DILocation(line: 519, column: 38, scope: !825)
!832 = !DILocation(line: 519, column: 9, scope: !825)
!833 = !DILocation(line: 519, column: 2, scope: !825)
!834 = distinct !DISubprogram(name: "br_enc16le", scope: !26, file: !26, line: 488, type: !835, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !13, !10}
!837 = !DILocalVariable(name: "dst", arg: 1, scope: !834, file: !26, line: 488, type: !13)
!838 = !DILocation(line: 0, scope: !834)
!839 = !DILocalVariable(name: "x", arg: 2, scope: !834, file: !26, line: 488, type: !10)
!840 = !DILocation(line: 491, column: 29, scope: !834)
!841 = !DILocation(line: 491, column: 3, scope: !834)
!842 = !DILocation(line: 491, column: 25, scope: !834)
!843 = !DILocation(line: 491, column: 27, scope: !834)
!844 = !DILocation(line: 499, column: 1, scope: !834)
!845 = distinct !DISubprogram(name: "NOT", scope: !26, file: !26, line: 761, type: !846, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !18)
!846 = !DISubroutineType(types: !847)
!847 = !{!6, !6}
!848 = !DILocalVariable(name: "ctl", arg: 1, scope: !845, file: !26, line: 761, type: !6)
!849 = !DILocation(line: 0, scope: !845)
!850 = !DILocation(line: 763, column: 13, scope: !845)
!851 = !DILocation(line: 763, column: 2, scope: !845)
!852 = distinct !DISubprogram(name: "run_wrapper", scope: !75, file: !75, line: 3, type: !294, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !18)
!853 = !DILocalVariable(name: "key", arg: 1, scope: !852, file: !75, line: 3, type: !11)
!854 = !DILocation(line: 0, scope: !852)
!855 = !DILocalVariable(name: "iv", arg: 2, scope: !852, file: !75, line: 3, type: !11)
!856 = !DILocalVariable(name: "data", arg: 3, scope: !852, file: !75, line: 4, type: !13)
!857 = !DILocalVariable(name: "len", arg: 4, scope: !852, file: !75, line: 4, type: !14)
!858 = !DILocalVariable(name: "aad", arg: 5, scope: !852, file: !75, line: 4, type: !11)
!859 = !DILocalVariable(name: "aad_len", arg: 6, scope: !852, file: !75, line: 4, type: !14)
!860 = !DILocalVariable(name: "tag", arg: 7, scope: !852, file: !75, line: 5, type: !13)
!861 = !DILocalVariable(name: "ichacha", arg: 8, scope: !852, file: !75, line: 5, type: !296)
!862 = !DILocalVariable(name: "encrypt", arg: 9, scope: !852, file: !75, line: 5, type: !153)
!863 = !DILocation(line: 6, column: 12, scope: !852)
!864 = !DILocation(line: 6, column: 2, scope: !852)
!865 = !DILocation(line: 7, column: 12, scope: !852)
!866 = !DILocation(line: 7, column: 2, scope: !852)
!867 = !DILocation(line: 8, column: 12, scope: !852)
!868 = !DILocation(line: 8, column: 2, scope: !852)
!869 = !DILocation(line: 9, column: 12, scope: !852)
!870 = !DILocation(line: 9, column: 2, scope: !852)
!871 = !DILocation(line: 10, column: 12, scope: !852)
!872 = !DILocation(line: 10, column: 2, scope: !852)
!873 = !DILocation(line: 11, column: 12, scope: !852)
!874 = !DILocation(line: 11, column: 2, scope: !852)
!875 = !DILocation(line: 12, column: 12, scope: !852)
!876 = !DILocation(line: 12, column: 2, scope: !852)
!877 = !DILocation(line: 13, column: 12, scope: !852)
!878 = !DILocation(line: 13, column: 2, scope: !852)
!879 = !DILocation(line: 16, column: 12, scope: !852)
!880 = !DILocation(line: 16, column: 2, scope: !852)
!881 = !DILocation(line: 17, column: 12, scope: !852)
!882 = !DILocation(line: 17, column: 2, scope: !852)
!883 = !DILocation(line: 18, column: 12, scope: !852)
!884 = !DILocation(line: 18, column: 2, scope: !852)
!885 = !DILocation(line: 21, column: 2, scope: !852)
!886 = !DILocation(line: 22, column: 1, scope: !852)
!887 = distinct !DISubprogram(name: "run_wrapper_t", scope: !75, file: !75, line: 32, type: !888, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !18)
!888 = !DISubroutineType(types: !889)
!889 = !{null}
!890 = !DILocation(line: 34, column: 19, scope: !887)
!891 = !DILocalVariable(name: "key", scope: !887, file: !75, line: 34, type: !11)
!892 = !DILocation(line: 0, scope: !887)
!893 = !DILocation(line: 35, column: 19, scope: !887)
!894 = !DILocalVariable(name: "iv", scope: !887, file: !75, line: 35, type: !11)
!895 = !DILocation(line: 37, column: 15, scope: !887)
!896 = !DILocalVariable(name: "data", scope: !887, file: !75, line: 37, type: !13)
!897 = !DILocalVariable(name: "len", scope: !887, file: !75, line: 38, type: !14)
!898 = !DILocation(line: 39, column: 22, scope: !887)
!899 = !DILocalVariable(name: "aad", scope: !887, file: !75, line: 39, type: !11)
!900 = !DILocalVariable(name: "aad_len", scope: !887, file: !75, line: 40, type: !14)
!901 = !DILocation(line: 41, column: 14, scope: !887)
!902 = !DILocalVariable(name: "tag", scope: !887, file: !75, line: 41, type: !13)
!903 = !DILocalVariable(name: "encrypt", scope: !887, file: !75, line: 42, type: !153)
!904 = !DILocation(line: 44, column: 2, scope: !887)
!905 = !DILocation(line: 45, column: 1, scope: !887)
