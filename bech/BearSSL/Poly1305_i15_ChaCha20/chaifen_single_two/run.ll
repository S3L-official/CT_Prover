; ModuleID = 'run.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.br_union_u32 = type { i32 }
%union.br_union_u64 = type { i64 }
%struct.smack_value = type { i8* }

@br_chacha20_ct_run.CW = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !0
@P1305 = internal constant [10 x i16] [i16 138, i16 32763, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 1023], align 16, !dbg !38
@R2 = internal constant <{ i16, i16, [8 x i16] }> <{ i16 138, i16 25600, [8 x i16] zeroinitializer }>, align 16, !dbg !55

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
  call void @llvm.dbg.value(metadata i64 0, metadata !86, metadata !DIExpression()), !dbg !71
  br label %10, !dbg !87

10:                                               ; preds = %17, %5
  %.01 = phi i64 [ 0, %5 ], [ %18, %17 ], !dbg !89
  call void @llvm.dbg.value(metadata i64 %.01, metadata !86, metadata !DIExpression()), !dbg !71
  %11 = icmp ult i64 %.01, 8, !dbg !90
  br i1 %11, label %12, label %19, !dbg !92

12:                                               ; preds = %10
  %13 = shl i64 %.01, 2, !dbg !93
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !95
  %15 = call i32 @br_dec32le(i8* %14), !dbg !96
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %.01, !dbg !97
  store i32 %15, i32* %16, align 4, !dbg !98
  br label %17, !dbg !99

17:                                               ; preds = %12
  %18 = add i64 %.01, 1, !dbg !100
  call void @llvm.dbg.value(metadata i64 %18, metadata !86, metadata !DIExpression()), !dbg !71
  br label %10, !dbg !101, !llvm.loop !102

19:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 0, metadata !86, metadata !DIExpression()), !dbg !71
  br label %20, !dbg !105

20:                                               ; preds = %27, %19
  %.1 = phi i64 [ 0, %19 ], [ %28, %27 ], !dbg !107
  call void @llvm.dbg.value(metadata i64 %.1, metadata !86, metadata !DIExpression()), !dbg !71
  %21 = icmp ult i64 %.1, 3, !dbg !108
  br i1 %21, label %22, label %29, !dbg !110

22:                                               ; preds = %20
  %23 = shl i64 %.1, 2, !dbg !111
  %24 = getelementptr inbounds i8, i8* %1, i64 %23, !dbg !113
  %25 = call i32 @br_dec32le(i8* %24), !dbg !114
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %.1, !dbg !115
  store i32 %25, i32* %26, align 4, !dbg !116
  br label %27, !dbg !117

27:                                               ; preds = %22
  %28 = add i64 %.1, 1, !dbg !118
  call void @llvm.dbg.value(metadata i64 %28, metadata !86, metadata !DIExpression()), !dbg !71
  br label %20, !dbg !119, !llvm.loop !120

29:                                               ; preds = %20
  br label %30, !dbg !122

30:                                               ; preds = %705, %29
  %.04 = phi i64 [ %4, %29 ], [ %707, %705 ]
  %.03 = phi i8* [ %3, %29 ], [ %706, %705 ], !dbg !71
  %.02 = phi i32 [ %2, %29 ], [ %708, %705 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !73, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i8* %.03, metadata !84, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i64 %.04, metadata !75, metadata !DIExpression()), !dbg !71
  %31 = icmp ugt i64 %.04, 0, !dbg !123
  br i1 %31, label %32, label %709, !dbg !122

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i32]* %8, metadata !124, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !130, metadata !DIExpression()), !dbg !134
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !135
  %34 = bitcast i32* %33 to i8*, !dbg !136
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([4 x i32]* @br_chacha20_ct_run.CW to i8*), i64 16, i1 false), !dbg !136
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !137
  %36 = bitcast i32* %35 to i8*, !dbg !138
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0, !dbg !138
  %38 = bitcast i32* %37 to i8*, !dbg !138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 %38, i64 32, i1 false), !dbg !138
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !139
  store i32 %.02, i32* %39, align 16, !dbg !140
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !141
  %41 = bitcast i32* %40 to i8*, !dbg !142
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0, !dbg !142
  %43 = bitcast i32* %42 to i8*, !dbg !142
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %43, i64 12, i1 false), !dbg !142
  call void @llvm.dbg.value(metadata i32 0, metadata !143, metadata !DIExpression()), !dbg !145
  br label %44, !dbg !146

44:                                               ; preds = %639, %32
  %.0 = phi i32 [ 0, %32 ], [ %640, %639 ], !dbg !148
  call void @llvm.dbg.value(metadata i32 %.0, metadata !143, metadata !DIExpression()), !dbg !145
  %45 = icmp slt i32 %.0, 10, !dbg !149
  br i1 %45, label %46, label %641, !dbg !151

46:                                               ; preds = %44
  br label %47, !dbg !152

47:                                               ; preds = %46
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !154
  %49 = load i32, i32* %48, align 16, !dbg !154
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !154
  %51 = load i32, i32* %50, align 16, !dbg !154
  %52 = add i32 %51, %49, !dbg !154
  store i32 %52, i32* %50, align 16, !dbg !154
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !154
  %54 = load i32, i32* %53, align 16, !dbg !154
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !154
  %56 = load i32, i32* %55, align 16, !dbg !154
  %57 = xor i32 %56, %54, !dbg !154
  store i32 %57, i32* %55, align 16, !dbg !154
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !154
  %59 = load i32, i32* %58, align 16, !dbg !154
  %60 = shl i32 %59, 16, !dbg !154
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !154
  %62 = load i32, i32* %61, align 16, !dbg !154
  %63 = lshr i32 %62, 16, !dbg !154
  %64 = or i32 %60, %63, !dbg !154
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !154
  store i32 %64, i32* %65, align 16, !dbg !154
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !154
  %67 = load i32, i32* %66, align 16, !dbg !154
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !154
  %69 = load i32, i32* %68, align 16, !dbg !154
  %70 = add i32 %69, %67, !dbg !154
  store i32 %70, i32* %68, align 16, !dbg !154
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !154
  %72 = load i32, i32* %71, align 16, !dbg !154
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !154
  %74 = load i32, i32* %73, align 16, !dbg !154
  %75 = xor i32 %74, %72, !dbg !154
  store i32 %75, i32* %73, align 16, !dbg !154
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !154
  %77 = load i32, i32* %76, align 16, !dbg !154
  %78 = shl i32 %77, 12, !dbg !154
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !154
  %80 = load i32, i32* %79, align 16, !dbg !154
  %81 = lshr i32 %80, 20, !dbg !154
  %82 = or i32 %78, %81, !dbg !154
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !154
  store i32 %82, i32* %83, align 16, !dbg !154
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !154
  %85 = load i32, i32* %84, align 16, !dbg !154
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !154
  %87 = load i32, i32* %86, align 16, !dbg !154
  %88 = add i32 %87, %85, !dbg !154
  store i32 %88, i32* %86, align 16, !dbg !154
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !154
  %90 = load i32, i32* %89, align 16, !dbg !154
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !154
  %92 = load i32, i32* %91, align 16, !dbg !154
  %93 = xor i32 %92, %90, !dbg !154
  store i32 %93, i32* %91, align 16, !dbg !154
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !154
  %95 = load i32, i32* %94, align 16, !dbg !154
  %96 = shl i32 %95, 8, !dbg !154
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !154
  %98 = load i32, i32* %97, align 16, !dbg !154
  %99 = lshr i32 %98, 24, !dbg !154
  %100 = or i32 %96, %99, !dbg !154
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !154
  store i32 %100, i32* %101, align 16, !dbg !154
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !154
  %103 = load i32, i32* %102, align 16, !dbg !154
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !154
  %105 = load i32, i32* %104, align 16, !dbg !154
  %106 = add i32 %105, %103, !dbg !154
  store i32 %106, i32* %104, align 16, !dbg !154
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !154
  %108 = load i32, i32* %107, align 16, !dbg !154
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !154
  %110 = load i32, i32* %109, align 16, !dbg !154
  %111 = xor i32 %110, %108, !dbg !154
  store i32 %111, i32* %109, align 16, !dbg !154
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !154
  %113 = load i32, i32* %112, align 16, !dbg !154
  %114 = shl i32 %113, 7, !dbg !154
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !154
  %116 = load i32, i32* %115, align 16, !dbg !154
  %117 = lshr i32 %116, 25, !dbg !154
  %118 = or i32 %114, %117, !dbg !154
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !154
  store i32 %118, i32* %119, align 16, !dbg !154
  br label %120, !dbg !154

120:                                              ; preds = %47
  br label %121, !dbg !156

121:                                              ; preds = %120
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !157
  %123 = load i32, i32* %122, align 4, !dbg !157
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !157
  %125 = load i32, i32* %124, align 4, !dbg !157
  %126 = add i32 %125, %123, !dbg !157
  store i32 %126, i32* %124, align 4, !dbg !157
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !157
  %128 = load i32, i32* %127, align 4, !dbg !157
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !157
  %130 = load i32, i32* %129, align 4, !dbg !157
  %131 = xor i32 %130, %128, !dbg !157
  store i32 %131, i32* %129, align 4, !dbg !157
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !157
  %133 = load i32, i32* %132, align 4, !dbg !157
  %134 = shl i32 %133, 16, !dbg !157
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !157
  %136 = load i32, i32* %135, align 4, !dbg !157
  %137 = lshr i32 %136, 16, !dbg !157
  %138 = or i32 %134, %137, !dbg !157
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !157
  store i32 %138, i32* %139, align 4, !dbg !157
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !157
  %141 = load i32, i32* %140, align 4, !dbg !157
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !157
  %143 = load i32, i32* %142, align 4, !dbg !157
  %144 = add i32 %143, %141, !dbg !157
  store i32 %144, i32* %142, align 4, !dbg !157
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !157
  %146 = load i32, i32* %145, align 4, !dbg !157
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !157
  %148 = load i32, i32* %147, align 4, !dbg !157
  %149 = xor i32 %148, %146, !dbg !157
  store i32 %149, i32* %147, align 4, !dbg !157
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !157
  %151 = load i32, i32* %150, align 4, !dbg !157
  %152 = shl i32 %151, 12, !dbg !157
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !157
  %154 = load i32, i32* %153, align 4, !dbg !157
  %155 = lshr i32 %154, 20, !dbg !157
  %156 = or i32 %152, %155, !dbg !157
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !157
  store i32 %156, i32* %157, align 4, !dbg !157
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !157
  %159 = load i32, i32* %158, align 4, !dbg !157
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !157
  %161 = load i32, i32* %160, align 4, !dbg !157
  %162 = add i32 %161, %159, !dbg !157
  store i32 %162, i32* %160, align 4, !dbg !157
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !157
  %164 = load i32, i32* %163, align 4, !dbg !157
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !157
  %166 = load i32, i32* %165, align 4, !dbg !157
  %167 = xor i32 %166, %164, !dbg !157
  store i32 %167, i32* %165, align 4, !dbg !157
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !157
  %169 = load i32, i32* %168, align 4, !dbg !157
  %170 = shl i32 %169, 8, !dbg !157
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !157
  %172 = load i32, i32* %171, align 4, !dbg !157
  %173 = lshr i32 %172, 24, !dbg !157
  %174 = or i32 %170, %173, !dbg !157
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !157
  store i32 %174, i32* %175, align 4, !dbg !157
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !157
  %177 = load i32, i32* %176, align 4, !dbg !157
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !157
  %179 = load i32, i32* %178, align 4, !dbg !157
  %180 = add i32 %179, %177, !dbg !157
  store i32 %180, i32* %178, align 4, !dbg !157
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !157
  %182 = load i32, i32* %181, align 4, !dbg !157
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !157
  %184 = load i32, i32* %183, align 4, !dbg !157
  %185 = xor i32 %184, %182, !dbg !157
  store i32 %185, i32* %183, align 4, !dbg !157
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !157
  %187 = load i32, i32* %186, align 4, !dbg !157
  %188 = shl i32 %187, 7, !dbg !157
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !157
  %190 = load i32, i32* %189, align 4, !dbg !157
  %191 = lshr i32 %190, 25, !dbg !157
  %192 = or i32 %188, %191, !dbg !157
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !157
  store i32 %192, i32* %193, align 4, !dbg !157
  br label %194, !dbg !157

194:                                              ; preds = %121
  br label %195, !dbg !159

195:                                              ; preds = %194
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !160
  %197 = load i32, i32* %196, align 8, !dbg !160
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !160
  %199 = load i32, i32* %198, align 8, !dbg !160
  %200 = add i32 %199, %197, !dbg !160
  store i32 %200, i32* %198, align 8, !dbg !160
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !160
  %202 = load i32, i32* %201, align 8, !dbg !160
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !160
  %204 = load i32, i32* %203, align 8, !dbg !160
  %205 = xor i32 %204, %202, !dbg !160
  store i32 %205, i32* %203, align 8, !dbg !160
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !160
  %207 = load i32, i32* %206, align 8, !dbg !160
  %208 = shl i32 %207, 16, !dbg !160
  %209 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !160
  %210 = load i32, i32* %209, align 8, !dbg !160
  %211 = lshr i32 %210, 16, !dbg !160
  %212 = or i32 %208, %211, !dbg !160
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !160
  store i32 %212, i32* %213, align 8, !dbg !160
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !160
  %215 = load i32, i32* %214, align 8, !dbg !160
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !160
  %217 = load i32, i32* %216, align 8, !dbg !160
  %218 = add i32 %217, %215, !dbg !160
  store i32 %218, i32* %216, align 8, !dbg !160
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !160
  %220 = load i32, i32* %219, align 8, !dbg !160
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !160
  %222 = load i32, i32* %221, align 8, !dbg !160
  %223 = xor i32 %222, %220, !dbg !160
  store i32 %223, i32* %221, align 8, !dbg !160
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !160
  %225 = load i32, i32* %224, align 8, !dbg !160
  %226 = shl i32 %225, 12, !dbg !160
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !160
  %228 = load i32, i32* %227, align 8, !dbg !160
  %229 = lshr i32 %228, 20, !dbg !160
  %230 = or i32 %226, %229, !dbg !160
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !160
  store i32 %230, i32* %231, align 8, !dbg !160
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !160
  %233 = load i32, i32* %232, align 8, !dbg !160
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !160
  %235 = load i32, i32* %234, align 8, !dbg !160
  %236 = add i32 %235, %233, !dbg !160
  store i32 %236, i32* %234, align 8, !dbg !160
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !160
  %238 = load i32, i32* %237, align 8, !dbg !160
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !160
  %240 = load i32, i32* %239, align 8, !dbg !160
  %241 = xor i32 %240, %238, !dbg !160
  store i32 %241, i32* %239, align 8, !dbg !160
  %242 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !160
  %243 = load i32, i32* %242, align 8, !dbg !160
  %244 = shl i32 %243, 8, !dbg !160
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !160
  %246 = load i32, i32* %245, align 8, !dbg !160
  %247 = lshr i32 %246, 24, !dbg !160
  %248 = or i32 %244, %247, !dbg !160
  %249 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !160
  store i32 %248, i32* %249, align 8, !dbg !160
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !160
  %251 = load i32, i32* %250, align 8, !dbg !160
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !160
  %253 = load i32, i32* %252, align 8, !dbg !160
  %254 = add i32 %253, %251, !dbg !160
  store i32 %254, i32* %252, align 8, !dbg !160
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !160
  %256 = load i32, i32* %255, align 8, !dbg !160
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !160
  %258 = load i32, i32* %257, align 8, !dbg !160
  %259 = xor i32 %258, %256, !dbg !160
  store i32 %259, i32* %257, align 8, !dbg !160
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !160
  %261 = load i32, i32* %260, align 8, !dbg !160
  %262 = shl i32 %261, 7, !dbg !160
  %263 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !160
  %264 = load i32, i32* %263, align 8, !dbg !160
  %265 = lshr i32 %264, 25, !dbg !160
  %266 = or i32 %262, %265, !dbg !160
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !160
  store i32 %266, i32* %267, align 8, !dbg !160
  br label %268, !dbg !160

268:                                              ; preds = %195
  br label %269, !dbg !162

269:                                              ; preds = %268
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !163
  %271 = load i32, i32* %270, align 4, !dbg !163
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !163
  %273 = load i32, i32* %272, align 4, !dbg !163
  %274 = add i32 %273, %271, !dbg !163
  store i32 %274, i32* %272, align 4, !dbg !163
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !163
  %276 = load i32, i32* %275, align 4, !dbg !163
  %277 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !163
  %278 = load i32, i32* %277, align 4, !dbg !163
  %279 = xor i32 %278, %276, !dbg !163
  store i32 %279, i32* %277, align 4, !dbg !163
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !163
  %281 = load i32, i32* %280, align 4, !dbg !163
  %282 = shl i32 %281, 16, !dbg !163
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !163
  %284 = load i32, i32* %283, align 4, !dbg !163
  %285 = lshr i32 %284, 16, !dbg !163
  %286 = or i32 %282, %285, !dbg !163
  %287 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !163
  store i32 %286, i32* %287, align 4, !dbg !163
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !163
  %289 = load i32, i32* %288, align 4, !dbg !163
  %290 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !163
  %291 = load i32, i32* %290, align 4, !dbg !163
  %292 = add i32 %291, %289, !dbg !163
  store i32 %292, i32* %290, align 4, !dbg !163
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !163
  %294 = load i32, i32* %293, align 4, !dbg !163
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !163
  %296 = load i32, i32* %295, align 4, !dbg !163
  %297 = xor i32 %296, %294, !dbg !163
  store i32 %297, i32* %295, align 4, !dbg !163
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !163
  %299 = load i32, i32* %298, align 4, !dbg !163
  %300 = shl i32 %299, 12, !dbg !163
  %301 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !163
  %302 = load i32, i32* %301, align 4, !dbg !163
  %303 = lshr i32 %302, 20, !dbg !163
  %304 = or i32 %300, %303, !dbg !163
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !163
  store i32 %304, i32* %305, align 4, !dbg !163
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !163
  %307 = load i32, i32* %306, align 4, !dbg !163
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !163
  %309 = load i32, i32* %308, align 4, !dbg !163
  %310 = add i32 %309, %307, !dbg !163
  store i32 %310, i32* %308, align 4, !dbg !163
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !163
  %312 = load i32, i32* %311, align 4, !dbg !163
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !163
  %314 = load i32, i32* %313, align 4, !dbg !163
  %315 = xor i32 %314, %312, !dbg !163
  store i32 %315, i32* %313, align 4, !dbg !163
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !163
  %317 = load i32, i32* %316, align 4, !dbg !163
  %318 = shl i32 %317, 8, !dbg !163
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !163
  %320 = load i32, i32* %319, align 4, !dbg !163
  %321 = lshr i32 %320, 24, !dbg !163
  %322 = or i32 %318, %321, !dbg !163
  %323 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !163
  store i32 %322, i32* %323, align 4, !dbg !163
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !163
  %325 = load i32, i32* %324, align 4, !dbg !163
  %326 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !163
  %327 = load i32, i32* %326, align 4, !dbg !163
  %328 = add i32 %327, %325, !dbg !163
  store i32 %328, i32* %326, align 4, !dbg !163
  %329 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !163
  %330 = load i32, i32* %329, align 4, !dbg !163
  %331 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !163
  %332 = load i32, i32* %331, align 4, !dbg !163
  %333 = xor i32 %332, %330, !dbg !163
  store i32 %333, i32* %331, align 4, !dbg !163
  %334 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !163
  %335 = load i32, i32* %334, align 4, !dbg !163
  %336 = shl i32 %335, 7, !dbg !163
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !163
  %338 = load i32, i32* %337, align 4, !dbg !163
  %339 = lshr i32 %338, 25, !dbg !163
  %340 = or i32 %336, %339, !dbg !163
  %341 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !163
  store i32 %340, i32* %341, align 4, !dbg !163
  br label %342, !dbg !163

342:                                              ; preds = %269
  br label %343, !dbg !165

343:                                              ; preds = %342
  %344 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %345 = load i32, i32* %344, align 4, !dbg !166
  %346 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !166
  %347 = load i32, i32* %346, align 16, !dbg !166
  %348 = add i32 %347, %345, !dbg !166
  store i32 %348, i32* %346, align 16, !dbg !166
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !166
  %350 = load i32, i32* %349, align 16, !dbg !166
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !166
  %352 = load i32, i32* %351, align 4, !dbg !166
  %353 = xor i32 %352, %350, !dbg !166
  store i32 %353, i32* %351, align 4, !dbg !166
  %354 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !166
  %355 = load i32, i32* %354, align 4, !dbg !166
  %356 = shl i32 %355, 16, !dbg !166
  %357 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !166
  %358 = load i32, i32* %357, align 4, !dbg !166
  %359 = lshr i32 %358, 16, !dbg !166
  %360 = or i32 %356, %359, !dbg !166
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !166
  store i32 %360, i32* %361, align 4, !dbg !166
  %362 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !166
  %363 = load i32, i32* %362, align 4, !dbg !166
  %364 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !166
  %365 = load i32, i32* %364, align 8, !dbg !166
  %366 = add i32 %365, %363, !dbg !166
  store i32 %366, i32* %364, align 8, !dbg !166
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !166
  %368 = load i32, i32* %367, align 8, !dbg !166
  %369 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %370 = load i32, i32* %369, align 4, !dbg !166
  %371 = xor i32 %370, %368, !dbg !166
  store i32 %371, i32* %369, align 4, !dbg !166
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %373 = load i32, i32* %372, align 4, !dbg !166
  %374 = shl i32 %373, 12, !dbg !166
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %376 = load i32, i32* %375, align 4, !dbg !166
  %377 = lshr i32 %376, 20, !dbg !166
  %378 = or i32 %374, %377, !dbg !166
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  store i32 %378, i32* %379, align 4, !dbg !166
  %380 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %381 = load i32, i32* %380, align 4, !dbg !166
  %382 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !166
  %383 = load i32, i32* %382, align 16, !dbg !166
  %384 = add i32 %383, %381, !dbg !166
  store i32 %384, i32* %382, align 16, !dbg !166
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !166
  %386 = load i32, i32* %385, align 16, !dbg !166
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !166
  %388 = load i32, i32* %387, align 4, !dbg !166
  %389 = xor i32 %388, %386, !dbg !166
  store i32 %389, i32* %387, align 4, !dbg !166
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !166
  %391 = load i32, i32* %390, align 4, !dbg !166
  %392 = shl i32 %391, 8, !dbg !166
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !166
  %394 = load i32, i32* %393, align 4, !dbg !166
  %395 = lshr i32 %394, 24, !dbg !166
  %396 = or i32 %392, %395, !dbg !166
  %397 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !166
  store i32 %396, i32* %397, align 4, !dbg !166
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !166
  %399 = load i32, i32* %398, align 4, !dbg !166
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !166
  %401 = load i32, i32* %400, align 8, !dbg !166
  %402 = add i32 %401, %399, !dbg !166
  store i32 %402, i32* %400, align 8, !dbg !166
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !166
  %404 = load i32, i32* %403, align 8, !dbg !166
  %405 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %406 = load i32, i32* %405, align 4, !dbg !166
  %407 = xor i32 %406, %404, !dbg !166
  store i32 %407, i32* %405, align 4, !dbg !166
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %409 = load i32, i32* %408, align 4, !dbg !166
  %410 = shl i32 %409, 7, !dbg !166
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  %412 = load i32, i32* %411, align 4, !dbg !166
  %413 = lshr i32 %412, 25, !dbg !166
  %414 = or i32 %410, %413, !dbg !166
  %415 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !166
  store i32 %414, i32* %415, align 4, !dbg !166
  br label %416, !dbg !166

416:                                              ; preds = %343
  br label %417, !dbg !168

417:                                              ; preds = %416
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %419 = load i32, i32* %418, align 8, !dbg !169
  %420 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !169
  %421 = load i32, i32* %420, align 4, !dbg !169
  %422 = add i32 %421, %419, !dbg !169
  store i32 %422, i32* %420, align 4, !dbg !169
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !169
  %424 = load i32, i32* %423, align 4, !dbg !169
  %425 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !169
  %426 = load i32, i32* %425, align 16, !dbg !169
  %427 = xor i32 %426, %424, !dbg !169
  store i32 %427, i32* %425, align 16, !dbg !169
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !169
  %429 = load i32, i32* %428, align 16, !dbg !169
  %430 = shl i32 %429, 16, !dbg !169
  %431 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !169
  %432 = load i32, i32* %431, align 16, !dbg !169
  %433 = lshr i32 %432, 16, !dbg !169
  %434 = or i32 %430, %433, !dbg !169
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !169
  store i32 %434, i32* %435, align 16, !dbg !169
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !169
  %437 = load i32, i32* %436, align 16, !dbg !169
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !169
  %439 = load i32, i32* %438, align 4, !dbg !169
  %440 = add i32 %439, %437, !dbg !169
  store i32 %440, i32* %438, align 4, !dbg !169
  %441 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !169
  %442 = load i32, i32* %441, align 4, !dbg !169
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %444 = load i32, i32* %443, align 8, !dbg !169
  %445 = xor i32 %444, %442, !dbg !169
  store i32 %445, i32* %443, align 8, !dbg !169
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %447 = load i32, i32* %446, align 8, !dbg !169
  %448 = shl i32 %447, 12, !dbg !169
  %449 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %450 = load i32, i32* %449, align 8, !dbg !169
  %451 = lshr i32 %450, 20, !dbg !169
  %452 = or i32 %448, %451, !dbg !169
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  store i32 %452, i32* %453, align 8, !dbg !169
  %454 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %455 = load i32, i32* %454, align 8, !dbg !169
  %456 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !169
  %457 = load i32, i32* %456, align 4, !dbg !169
  %458 = add i32 %457, %455, !dbg !169
  store i32 %458, i32* %456, align 4, !dbg !169
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !169
  %460 = load i32, i32* %459, align 4, !dbg !169
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !169
  %462 = load i32, i32* %461, align 16, !dbg !169
  %463 = xor i32 %462, %460, !dbg !169
  store i32 %463, i32* %461, align 16, !dbg !169
  %464 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !169
  %465 = load i32, i32* %464, align 16, !dbg !169
  %466 = shl i32 %465, 8, !dbg !169
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !169
  %468 = load i32, i32* %467, align 16, !dbg !169
  %469 = lshr i32 %468, 24, !dbg !169
  %470 = or i32 %466, %469, !dbg !169
  %471 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !169
  store i32 %470, i32* %471, align 16, !dbg !169
  %472 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !169
  %473 = load i32, i32* %472, align 16, !dbg !169
  %474 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !169
  %475 = load i32, i32* %474, align 4, !dbg !169
  %476 = add i32 %475, %473, !dbg !169
  store i32 %476, i32* %474, align 4, !dbg !169
  %477 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !169
  %478 = load i32, i32* %477, align 4, !dbg !169
  %479 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %480 = load i32, i32* %479, align 8, !dbg !169
  %481 = xor i32 %480, %478, !dbg !169
  store i32 %481, i32* %479, align 8, !dbg !169
  %482 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %483 = load i32, i32* %482, align 8, !dbg !169
  %484 = shl i32 %483, 7, !dbg !169
  %485 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  %486 = load i32, i32* %485, align 8, !dbg !169
  %487 = lshr i32 %486, 25, !dbg !169
  %488 = or i32 %484, %487, !dbg !169
  %489 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !169
  store i32 %488, i32* %489, align 8, !dbg !169
  br label %490, !dbg !169

490:                                              ; preds = %417
  br label %491, !dbg !171

491:                                              ; preds = %490
  %492 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %493 = load i32, i32* %492, align 4, !dbg !172
  %494 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !172
  %495 = load i32, i32* %494, align 8, !dbg !172
  %496 = add i32 %495, %493, !dbg !172
  store i32 %496, i32* %494, align 8, !dbg !172
  %497 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !172
  %498 = load i32, i32* %497, align 8, !dbg !172
  %499 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !172
  %500 = load i32, i32* %499, align 4, !dbg !172
  %501 = xor i32 %500, %498, !dbg !172
  store i32 %501, i32* %499, align 4, !dbg !172
  %502 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !172
  %503 = load i32, i32* %502, align 4, !dbg !172
  %504 = shl i32 %503, 16, !dbg !172
  %505 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !172
  %506 = load i32, i32* %505, align 4, !dbg !172
  %507 = lshr i32 %506, 16, !dbg !172
  %508 = or i32 %504, %507, !dbg !172
  %509 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !172
  store i32 %508, i32* %509, align 4, !dbg !172
  %510 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !172
  %511 = load i32, i32* %510, align 4, !dbg !172
  %512 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !172
  %513 = load i32, i32* %512, align 16, !dbg !172
  %514 = add i32 %513, %511, !dbg !172
  store i32 %514, i32* %512, align 16, !dbg !172
  %515 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !172
  %516 = load i32, i32* %515, align 16, !dbg !172
  %517 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %518 = load i32, i32* %517, align 4, !dbg !172
  %519 = xor i32 %518, %516, !dbg !172
  store i32 %519, i32* %517, align 4, !dbg !172
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %521 = load i32, i32* %520, align 4, !dbg !172
  %522 = shl i32 %521, 12, !dbg !172
  %523 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %524 = load i32, i32* %523, align 4, !dbg !172
  %525 = lshr i32 %524, 20, !dbg !172
  %526 = or i32 %522, %525, !dbg !172
  %527 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  store i32 %526, i32* %527, align 4, !dbg !172
  %528 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %529 = load i32, i32* %528, align 4, !dbg !172
  %530 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !172
  %531 = load i32, i32* %530, align 8, !dbg !172
  %532 = add i32 %531, %529, !dbg !172
  store i32 %532, i32* %530, align 8, !dbg !172
  %533 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !172
  %534 = load i32, i32* %533, align 8, !dbg !172
  %535 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !172
  %536 = load i32, i32* %535, align 4, !dbg !172
  %537 = xor i32 %536, %534, !dbg !172
  store i32 %537, i32* %535, align 4, !dbg !172
  %538 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !172
  %539 = load i32, i32* %538, align 4, !dbg !172
  %540 = shl i32 %539, 8, !dbg !172
  %541 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !172
  %542 = load i32, i32* %541, align 4, !dbg !172
  %543 = lshr i32 %542, 24, !dbg !172
  %544 = or i32 %540, %543, !dbg !172
  %545 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !172
  store i32 %544, i32* %545, align 4, !dbg !172
  %546 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !172
  %547 = load i32, i32* %546, align 4, !dbg !172
  %548 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !172
  %549 = load i32, i32* %548, align 16, !dbg !172
  %550 = add i32 %549, %547, !dbg !172
  store i32 %550, i32* %548, align 16, !dbg !172
  %551 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !172
  %552 = load i32, i32* %551, align 16, !dbg !172
  %553 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %554 = load i32, i32* %553, align 4, !dbg !172
  %555 = xor i32 %554, %552, !dbg !172
  store i32 %555, i32* %553, align 4, !dbg !172
  %556 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %557 = load i32, i32* %556, align 4, !dbg !172
  %558 = shl i32 %557, 7, !dbg !172
  %559 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  %560 = load i32, i32* %559, align 4, !dbg !172
  %561 = lshr i32 %560, 25, !dbg !172
  %562 = or i32 %558, %561, !dbg !172
  %563 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !172
  store i32 %562, i32* %563, align 4, !dbg !172
  br label %564, !dbg !172

564:                                              ; preds = %491
  br label %565, !dbg !174

565:                                              ; preds = %564
  %566 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !175
  %567 = load i32, i32* %566, align 16, !dbg !175
  %568 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !175
  %569 = load i32, i32* %568, align 4, !dbg !175
  %570 = add i32 %569, %567, !dbg !175
  store i32 %570, i32* %568, align 4, !dbg !175
  %571 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !175
  %572 = load i32, i32* %571, align 4, !dbg !175
  %573 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !175
  %574 = load i32, i32* %573, align 8, !dbg !175
  %575 = xor i32 %574, %572, !dbg !175
  store i32 %575, i32* %573, align 8, !dbg !175
  %576 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !175
  %577 = load i32, i32* %576, align 8, !dbg !175
  %578 = shl i32 %577, 16, !dbg !175
  %579 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !175
  %580 = load i32, i32* %579, align 8, !dbg !175
  %581 = lshr i32 %580, 16, !dbg !175
  %582 = or i32 %578, %581, !dbg !175
  %583 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !175
  store i32 %582, i32* %583, align 8, !dbg !175
  %584 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !175
  %585 = load i32, i32* %584, align 8, !dbg !175
  %586 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !175
  %587 = load i32, i32* %586, align 4, !dbg !175
  %588 = add i32 %587, %585, !dbg !175
  store i32 %588, i32* %586, align 4, !dbg !175
  %589 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !175
  %590 = load i32, i32* %589, align 4, !dbg !175
  %591 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !175
  %592 = load i32, i32* %591, align 16, !dbg !175
  %593 = xor i32 %592, %590, !dbg !175
  store i32 %593, i32* %591, align 16, !dbg !175
  %594 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !175
  %595 = load i32, i32* %594, align 16, !dbg !175
  %596 = shl i32 %595, 12, !dbg !175
  %597 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !175
  %598 = load i32, i32* %597, align 16, !dbg !175
  %599 = lshr i32 %598, 20, !dbg !175
  %600 = or i32 %596, %599, !dbg !175
  %601 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !175
  store i32 %600, i32* %601, align 16, !dbg !175
  %602 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !175
  %603 = load i32, i32* %602, align 16, !dbg !175
  %604 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !175
  %605 = load i32, i32* %604, align 4, !dbg !175
  %606 = add i32 %605, %603, !dbg !175
  store i32 %606, i32* %604, align 4, !dbg !175
  %607 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !175
  %608 = load i32, i32* %607, align 4, !dbg !175
  %609 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !175
  %610 = load i32, i32* %609, align 8, !dbg !175
  %611 = xor i32 %610, %608, !dbg !175
  store i32 %611, i32* %609, align 8, !dbg !175
  %612 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !175
  %613 = load i32, i32* %612, align 8, !dbg !175
  %614 = shl i32 %613, 8, !dbg !175
  %615 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !175
  %616 = load i32, i32* %615, align 8, !dbg !175
  %617 = lshr i32 %616, 24, !dbg !175
  %618 = or i32 %614, %617, !dbg !175
  %619 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !175
  store i32 %618, i32* %619, align 8, !dbg !175
  %620 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !175
  %621 = load i32, i32* %620, align 8, !dbg !175
  %622 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !175
  %623 = load i32, i32* %622, align 4, !dbg !175
  %624 = add i32 %623, %621, !dbg !175
  store i32 %624, i32* %622, align 4, !dbg !175
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !175
  %626 = load i32, i32* %625, align 4, !dbg !175
  %627 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !175
  %628 = load i32, i32* %627, align 16, !dbg !175
  %629 = xor i32 %628, %626, !dbg !175
  store i32 %629, i32* %627, align 16, !dbg !175
  %630 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !175
  %631 = load i32, i32* %630, align 16, !dbg !175
  %632 = shl i32 %631, 7, !dbg !175
  %633 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !175
  %634 = load i32, i32* %633, align 16, !dbg !175
  %635 = lshr i32 %634, 25, !dbg !175
  %636 = or i32 %632, %635, !dbg !175
  %637 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !175
  store i32 %636, i32* %637, align 16, !dbg !175
  br label %638, !dbg !175

638:                                              ; preds = %565
  br label %639, !dbg !177

639:                                              ; preds = %638
  %640 = add nsw i32 %.0, 1, !dbg !178
  call void @llvm.dbg.value(metadata i32 %640, metadata !143, metadata !DIExpression()), !dbg !145
  br label %44, !dbg !179, !llvm.loop !180

641:                                              ; preds = %44
  call void @llvm.dbg.value(metadata i64 0, metadata !86, metadata !DIExpression()), !dbg !71
  br label %642, !dbg !182

642:                                              ; preds = %652, %641
  %.2 = phi i64 [ 0, %641 ], [ %653, %652 ], !dbg !184
  call void @llvm.dbg.value(metadata i64 %.2, metadata !86, metadata !DIExpression()), !dbg !71
  %643 = icmp ult i64 %.2, 4, !dbg !185
  br i1 %643, label %644, label %654, !dbg !187

644:                                              ; preds = %642
  %645 = shl i64 %.2, 2, !dbg !188
  %646 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %645, !dbg !190
  %647 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.2, !dbg !191
  %648 = load i32, i32* %647, align 4, !dbg !191
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* @br_chacha20_ct_run.CW, i64 0, i64 %.2, !dbg !192
  %650 = load i32, i32* %649, align 4, !dbg !192
  %651 = add i32 %648, %650, !dbg !193
  call void @br_enc32le(i8* %646, i32 %651), !dbg !194
  br label %652, !dbg !195

652:                                              ; preds = %644
  %653 = add i64 %.2, 1, !dbg !196
  call void @llvm.dbg.value(metadata i64 %653, metadata !86, metadata !DIExpression()), !dbg !71
  br label %642, !dbg !197, !llvm.loop !198

654:                                              ; preds = %642
  call void @llvm.dbg.value(metadata i64 4, metadata !86, metadata !DIExpression()), !dbg !71
  br label %655, !dbg !200

655:                                              ; preds = %666, %654
  %.3 = phi i64 [ 4, %654 ], [ %667, %666 ], !dbg !202
  call void @llvm.dbg.value(metadata i64 %.3, metadata !86, metadata !DIExpression()), !dbg !71
  %656 = icmp ult i64 %.3, 12, !dbg !203
  br i1 %656, label %657, label %668, !dbg !205

657:                                              ; preds = %655
  %658 = shl i64 %.3, 2, !dbg !206
  %659 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %658, !dbg !208
  %660 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.3, !dbg !209
  %661 = load i32, i32* %660, align 4, !dbg !209
  %662 = sub i64 %.3, 4, !dbg !210
  %663 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %662, !dbg !211
  %664 = load i32, i32* %663, align 4, !dbg !211
  %665 = add i32 %661, %664, !dbg !212
  call void @br_enc32le(i8* %659, i32 %665), !dbg !213
  br label %666, !dbg !214

666:                                              ; preds = %657
  %667 = add i64 %.3, 1, !dbg !215
  call void @llvm.dbg.value(metadata i64 %667, metadata !86, metadata !DIExpression()), !dbg !71
  br label %655, !dbg !216, !llvm.loop !217

668:                                              ; preds = %655
  %669 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 48, !dbg !219
  %670 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !220
  %671 = load i32, i32* %670, align 16, !dbg !220
  %672 = add i32 %671, %.02, !dbg !221
  call void @br_enc32le(i8* %669, i32 %672), !dbg !222
  call void @llvm.dbg.value(metadata i64 13, metadata !86, metadata !DIExpression()), !dbg !71
  br label %673, !dbg !223

673:                                              ; preds = %684, %668
  %.4 = phi i64 [ 13, %668 ], [ %685, %684 ], !dbg !225
  call void @llvm.dbg.value(metadata i64 %.4, metadata !86, metadata !DIExpression()), !dbg !71
  %674 = icmp ult i64 %.4, 16, !dbg !226
  br i1 %674, label %675, label %686, !dbg !228

675:                                              ; preds = %673
  %676 = shl i64 %.4, 2, !dbg !229
  %677 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %676, !dbg !231
  %678 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.4, !dbg !232
  %679 = load i32, i32* %678, align 4, !dbg !232
  %680 = sub i64 %.4, 13, !dbg !233
  %681 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %680, !dbg !234
  %682 = load i32, i32* %681, align 4, !dbg !234
  %683 = add i32 %679, %682, !dbg !235
  call void @br_enc32le(i8* %677, i32 %683), !dbg !236
  br label %684, !dbg !237

684:                                              ; preds = %675
  %685 = add i64 %.4, 1, !dbg !238
  call void @llvm.dbg.value(metadata i64 %685, metadata !86, metadata !DIExpression()), !dbg !71
  br label %673, !dbg !239, !llvm.loop !240

686:                                              ; preds = %673
  %687 = icmp ult i64 %.04, 64, !dbg !242
  br i1 %687, label %688, label %689, !dbg !243

688:                                              ; preds = %686
  br label %690, !dbg !243

689:                                              ; preds = %686
  br label %690, !dbg !243

690:                                              ; preds = %689, %688
  %691 = phi i64 [ %.04, %688 ], [ 64, %689 ], !dbg !243
  call void @llvm.dbg.value(metadata i64 %691, metadata !244, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i64 0, metadata !86, metadata !DIExpression()), !dbg !71
  br label %692, !dbg !245

692:                                              ; preds = %703, %690
  %.5 = phi i64 [ 0, %690 ], [ %704, %703 ], !dbg !247
  call void @llvm.dbg.value(metadata i64 %.5, metadata !86, metadata !DIExpression()), !dbg !71
  %693 = icmp ult i64 %.5, %691, !dbg !248
  br i1 %693, label %694, label %705, !dbg !250

694:                                              ; preds = %692
  %695 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %.5, !dbg !251
  %696 = load i8, i8* %695, align 1, !dbg !251
  %697 = zext i8 %696 to i32, !dbg !251
  %698 = getelementptr inbounds i8, i8* %.03, i64 %.5, !dbg !253
  %699 = load i8, i8* %698, align 1, !dbg !254
  %700 = zext i8 %699 to i32, !dbg !254
  %701 = xor i32 %700, %697, !dbg !254
  %702 = trunc i32 %701 to i8, !dbg !254
  store i8 %702, i8* %698, align 1, !dbg !254
  br label %703, !dbg !255

703:                                              ; preds = %694
  %704 = add i64 %.5, 1, !dbg !256
  call void @llvm.dbg.value(metadata i64 %704, metadata !86, metadata !DIExpression()), !dbg !71
  br label %692, !dbg !257, !llvm.loop !258

705:                                              ; preds = %692
  %706 = getelementptr inbounds i8, i8* %.03, i64 %691, !dbg !260
  call void @llvm.dbg.value(metadata i8* %706, metadata !84, metadata !DIExpression()), !dbg !71
  %707 = sub i64 %.04, %691, !dbg !261
  call void @llvm.dbg.value(metadata i64 %707, metadata !75, metadata !DIExpression()), !dbg !71
  %708 = add i32 %.02, 1, !dbg !262
  call void @llvm.dbg.value(metadata i32 %708, metadata !73, metadata !DIExpression()), !dbg !71
  br label %30, !dbg !122, !llvm.loop !263

709:                                              ; preds = %30
  ret i32 %.02, !dbg !265
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* %0) #0 !dbg !266 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !269, metadata !DIExpression()), !dbg !270
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !271
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !272
  %4 = load i32, i32* %3, align 4, !dbg !272
  ret i32 %4, !dbg !273
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le(i8* %0, i32 %1) #0 !dbg !274 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i32 %1, metadata !279, metadata !DIExpression()), !dbg !278
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !280
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !281
  store i32 %1, i32* %4, align 4, !dbg !282
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_poly1305_i15_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !284 {
  %10 = alloca [32 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca [10 x i16], align 16
  %13 = alloca [10 x i16], align 16
  %14 = alloca [10 x i16], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i8* %1, metadata !292, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i8* %2, metadata !293, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i64 %3, metadata !294, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i8* %4, metadata !295, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i64 %5, metadata !296, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i8* %6, metadata !297, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !298, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 %8, metadata !299, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata [32 x i8]* %10, metadata !300, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata [16 x i8]* %11, metadata !305, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata [10 x i16]* %12, metadata !308, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata [10 x i16]* %13, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata [10 x i16]* %14, metadata !313, metadata !DIExpression()), !dbg !314
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !315
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 32, i1 false), !dbg !315
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !316
  %17 = call i32 %7(i8* %0, i8* %1, i32 0, i8* %16, i64 32), !dbg !317
  %18 = icmp ne i32 %8, 0, !dbg !318
  br i1 %18, label %19, label %21, !dbg !320

19:                                               ; preds = %9
  %20 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !321
  br label %21, !dbg !323

21:                                               ; preds = %19, %9
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 3, !dbg !324
  %23 = load i8, i8* %22, align 1, !dbg !325
  %24 = zext i8 %23 to i32, !dbg !325
  %25 = and i32 %24, 15, !dbg !325
  %26 = trunc i32 %25 to i8, !dbg !325
  store i8 %26, i8* %22, align 1, !dbg !325
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 7, !dbg !326
  %28 = load i8, i8* %27, align 1, !dbg !327
  %29 = zext i8 %28 to i32, !dbg !327
  %30 = and i32 %29, 15, !dbg !327
  %31 = trunc i32 %30 to i8, !dbg !327
  store i8 %31, i8* %27, align 1, !dbg !327
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 11, !dbg !328
  %33 = load i8, i8* %32, align 1, !dbg !329
  %34 = zext i8 %33 to i32, !dbg !329
  %35 = and i32 %34, 15, !dbg !329
  %36 = trunc i32 %35 to i8, !dbg !329
  store i8 %36, i8* %32, align 1, !dbg !329
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 15, !dbg !330
  %38 = load i8, i8* %37, align 1, !dbg !331
  %39 = zext i8 %38 to i32, !dbg !331
  %40 = and i32 %39, 15, !dbg !331
  %41 = trunc i32 %40 to i8, !dbg !331
  store i8 %41, i8* %37, align 1, !dbg !331
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 4, !dbg !332
  %43 = load i8, i8* %42, align 4, !dbg !333
  %44 = zext i8 %43 to i32, !dbg !333
  %45 = and i32 %44, 252, !dbg !333
  %46 = trunc i32 %45 to i8, !dbg !333
  store i8 %46, i8* %42, align 4, !dbg !333
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 8, !dbg !334
  %48 = load i8, i8* %47, align 8, !dbg !335
  %49 = zext i8 %48 to i32, !dbg !335
  %50 = and i32 %49, 252, !dbg !335
  %51 = trunc i32 %50 to i8, !dbg !335
  store i8 %51, i8* %47, align 8, !dbg !335
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 12, !dbg !336
  %53 = load i8, i8* %52, align 4, !dbg !337
  %54 = zext i8 %53 to i32, !dbg !337
  %55 = and i32 %54, 252, !dbg !337
  %56 = trunc i32 %55 to i8, !dbg !337
  store i8 %56, i8* %52, align 4, !dbg !337
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !338
  call void @byteswap16(i8* %57), !dbg !339
  %58 = getelementptr inbounds [10 x i16], [10 x i16]* %12, i64 0, i64 0, !dbg !340
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !341
  %60 = call i32 @br_i15_decode_mod(i16* %58, i8* %59, i64 16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @P1305, i64 0, i64 0)), !dbg !342
  %61 = getelementptr inbounds [10 x i16], [10 x i16]* %13, i64 0, i64 0, !dbg !343
  %62 = getelementptr inbounds [10 x i16], [10 x i16]* %12, i64 0, i64 0, !dbg !344
  call void @br_i15_montymul(i16* %61, i16* %62, i16* getelementptr inbounds ([10 x i16], [10 x i16]* bitcast (<{ i16, i16, [8 x i16] }>* @R2 to [10 x i16]*), i64 0, i64 0), i16* getelementptr inbounds ([10 x i16], [10 x i16]* @P1305, i64 0, i64 0), i16 zeroext 19661), !dbg !345
  %63 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !346
  call void @br_i15_zero(i16* %63, i16 zeroext 138), !dbg !347
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !348
  call void @br_enc64le(i8* %64, i64 %5), !dbg !349
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !350
  %66 = getelementptr inbounds i8, i8* %65, i64 8, !dbg !351
  call void @br_enc64le(i8* %66, i64 %3), !dbg !352
  %67 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !353
  %68 = getelementptr inbounds [10 x i16], [10 x i16]* %13, i64 0, i64 0, !dbg !354
  call void @poly1305_inner(i16* %67, i16* %68, i8* %4, i64 %5), !dbg !355
  %69 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !356
  %70 = getelementptr inbounds [10 x i16], [10 x i16]* %13, i64 0, i64 0, !dbg !357
  call void @poly1305_inner(i16* %69, i16* %70, i8* %2, i64 %3), !dbg !358
  %71 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !359
  %72 = getelementptr inbounds [10 x i16], [10 x i16]* %13, i64 0, i64 0, !dbg !360
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !361
  call void @poly1305_inner(i16* %71, i16* %72, i8* %73, i64 16), !dbg !362
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !363
  %75 = getelementptr inbounds i8, i8* %74, i64 16, !dbg !364
  call void @byteswap16(i8* %75), !dbg !365
  %76 = getelementptr inbounds [10 x i16], [10 x i16]* %12, i64 0, i64 0, !dbg !366
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !367
  %78 = getelementptr inbounds i8, i8* %77, i64 16, !dbg !368
  %79 = call i32 @br_i15_decode_mod(i16* %76, i8* %78, i64 16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @P1305, i64 0, i64 0)), !dbg !369
  %80 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !370
  %81 = getelementptr inbounds [10 x i16], [10 x i16]* %12, i64 0, i64 0, !dbg !371
  %82 = call i32 @br_i15_add(i16* %80, i16* %81, i32 1), !dbg !372
  %83 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !373
  call void @br_i15_encode(i8* %6, i64 16, i16* %83), !dbg !374
  call void @byteswap16(i8* %6), !dbg !375
  %84 = icmp ne i32 %8, 0, !dbg !376
  br i1 %84, label %87, label %85, !dbg !378

85:                                               ; preds = %21
  %86 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !379
  br label %87, !dbg !381

87:                                               ; preds = %85, %21
  ret void, !dbg !382
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @byteswap16(i8* %0) #0 !dbg !383 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i32 0, metadata !388, metadata !DIExpression()), !dbg !387
  br label %2, !dbg !389

2:                                                ; preds = %19, %1
  %.0 = phi i32 [ 0, %1 ], [ %20, %19 ], !dbg !391
  call void @llvm.dbg.value(metadata i32 %.0, metadata !388, metadata !DIExpression()), !dbg !387
  %3 = icmp slt i32 %.0, 8, !dbg !392
  br i1 %3, label %4, label %21, !dbg !394

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64, !dbg !395
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !395
  %7 = load i8, i8* %6, align 1, !dbg !395
  %8 = zext i8 %7 to i32, !dbg !395
  call void @llvm.dbg.value(metadata i32 %8, metadata !397, metadata !DIExpression()), !dbg !398
  %9 = sub nsw i32 15, %.0, !dbg !399
  %10 = sext i32 %9 to i64, !dbg !400
  %11 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !400
  %12 = load i8, i8* %11, align 1, !dbg !400
  %13 = sext i32 %.0 to i64, !dbg !401
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !401
  store i8 %12, i8* %14, align 1, !dbg !402
  %15 = trunc i32 %8 to i8, !dbg !403
  %16 = sub nsw i32 15, %.0, !dbg !404
  %17 = sext i32 %16 to i64, !dbg !405
  %18 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !405
  store i8 %15, i8* %18, align 1, !dbg !406
  br label %19, !dbg !407

19:                                               ; preds = %4
  %20 = add nsw i32 %.0, 1, !dbg !408
  call void @llvm.dbg.value(metadata i32 %20, metadata !388, metadata !DIExpression()), !dbg !387
  br label %2, !dbg !409, !llvm.loop !410

21:                                               ; preds = %2
  ret void, !dbg !412
}

declare dso_local i32 @br_i15_decode_mod(i16*, i8*, i64, i16*) #4

declare dso_local void @br_i15_montymul(i16*, i16*, i16*, i16*, i16 zeroext) #4

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero(i16* %0, i16 zeroext %1) #0 !dbg !413 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i16 %1, metadata !419, metadata !DIExpression()), !dbg !418
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !420
  call void @llvm.dbg.value(metadata i16* %3, metadata !417, metadata !DIExpression()), !dbg !418
  store i16 %1, i16* %0, align 2, !dbg !421
  %4 = bitcast i16* %3 to i8*, !dbg !422
  %5 = zext i16 %1 to i32, !dbg !423
  %6 = add nsw i32 %5, 15, !dbg !424
  %7 = ashr i32 %6, 4, !dbg !425
  %8 = sext i32 %7 to i64, !dbg !426
  %9 = mul i64 %8, 2, !dbg !427
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !422
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64le(i8* %0, i64 %1) #0 !dbg !429 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i64 %1, metadata !434, metadata !DIExpression()), !dbg !433
  %3 = bitcast i8* %0 to %union.br_union_u64*, !dbg !435
  %4 = bitcast %union.br_union_u64* %3 to i64*, !dbg !436
  store i64 %1, i64* %4, align 8, !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner(i16* %0, i16* %1, i8* %2, i64 %3) #0 !dbg !439 {
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca [10 x i16], align 16
  call void @llvm.dbg.value(metadata i16* %0, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i16* %1, metadata !445, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i8* %2, metadata !446, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 %3, metadata !447, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i8* %2, metadata !448, metadata !DIExpression()), !dbg !444
  br label %8, !dbg !449

8:                                                ; preds = %28, %4
  %.02 = phi i64 [ %3, %4 ], [ %47, %28 ]
  %.01 = phi i8* [ %2, %4 ], [ %46, %28 ], !dbg !444
  call void @llvm.dbg.value(metadata i8* %.01, metadata !448, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 %.02, metadata !447, metadata !DIExpression()), !dbg !444
  %9 = icmp ugt i64 %.02, 0, !dbg !450
  br i1 %9, label %10, label %48, !dbg !449

10:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !451, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata [10 x i16]* %7, metadata !456, metadata !DIExpression()), !dbg !457
  %11 = icmp ult i64 %.02, 16, !dbg !458
  br i1 %11, label %12, label %16, !dbg !460

12:                                               ; preds = %10
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !461
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false), !dbg !461
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 1 %.01, i64 %.02, i1 false), !dbg !463
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !464
  call void @llvm.dbg.value(metadata i8* %15, metadata !448, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 16, metadata !447, metadata !DIExpression()), !dbg !444
  br label %16, !dbg !465

16:                                               ; preds = %12, %10
  %.13 = phi i64 [ 16, %12 ], [ %.02, %10 ]
  %.1 = phi i8* [ %15, %12 ], [ %.01, %10 ], !dbg !444
  call void @llvm.dbg.value(metadata i8* %.1, metadata !448, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 %.13, metadata !447, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 0, metadata !466, metadata !DIExpression()), !dbg !467
  br label %17, !dbg !468

17:                                               ; preds = %26, %16
  %.0 = phi i32 [ 0, %16 ], [ %27, %26 ], !dbg !470
  call void @llvm.dbg.value(metadata i32 %.0, metadata !466, metadata !DIExpression()), !dbg !467
  %18 = icmp slt i32 %.0, 16, !dbg !471
  br i1 %18, label %19, label %28, !dbg !473

19:                                               ; preds = %17
  %20 = sub nsw i32 15, %.0, !dbg !474
  %21 = sext i32 %20 to i64, !dbg !476
  %22 = getelementptr inbounds i8, i8* %.1, i64 %21, !dbg !476
  %23 = load i8, i8* %22, align 1, !dbg !476
  %24 = sext i32 %.0 to i64, !dbg !477
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %24, !dbg !477
  store i8 %23, i8* %25, align 1, !dbg !478
  br label %26, !dbg !479

26:                                               ; preds = %19
  %27 = add nsw i32 %.0, 1, !dbg !480
  call void @llvm.dbg.value(metadata i32 %27, metadata !466, metadata !DIExpression()), !dbg !467
  br label %17, !dbg !481, !llvm.loop !482

28:                                               ; preds = %17
  %29 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 0, !dbg !484
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !485
  %31 = call i32 @br_i15_decode_mod(i16* %29, i8* %30, i64 16, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @P1305, i64 0, i64 0)), !dbg !486
  %32 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 9, !dbg !487
  %33 = load i16, i16* %32, align 2, !dbg !488
  %34 = zext i16 %33 to i32, !dbg !488
  %35 = or i32 %34, 256, !dbg !488
  %36 = trunc i32 %35 to i16, !dbg !488
  store i16 %36, i16* %32, align 2, !dbg !488
  %37 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 0, !dbg !489
  %38 = call i32 @br_i15_add(i16* %37, i16* %0, i32 1), !dbg !490
  call void @llvm.dbg.value(metadata i32 %38, metadata !491, metadata !DIExpression()), !dbg !467
  %39 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 0, !dbg !492
  %40 = call i32 @br_i15_sub(i16* %39, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @P1305, i64 0, i64 0), i32 0), !dbg !493
  %41 = call i32 @NOT(i32 %40), !dbg !494
  %42 = or i32 %38, %41, !dbg !495
  call void @llvm.dbg.value(metadata i32 %42, metadata !491, metadata !DIExpression()), !dbg !467
  %43 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 0, !dbg !496
  %44 = call i32 @br_i15_sub(i16* %43, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @P1305, i64 0, i64 0), i32 %42), !dbg !497
  %45 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 0, !dbg !498
  call void @br_i15_montymul(i16* %0, i16* %45, i16* %1, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @P1305, i64 0, i64 0), i16 zeroext 19661), !dbg !499
  %46 = getelementptr inbounds i8, i8* %.1, i64 16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %46, metadata !448, metadata !DIExpression()), !dbg !444
  %47 = sub i64 %.13, 16, !dbg !501
  call void @llvm.dbg.value(metadata i64 %47, metadata !447, metadata !DIExpression()), !dbg !444
  br label %8, !dbg !449, !llvm.loop !502

48:                                               ; preds = %8
  ret void, !dbg !504
}

declare dso_local i32 @br_i15_add(i16*, i16*, i32) #4

declare dso_local void @br_i15_encode(i8*, i64, i16*) #4

declare dso_local i32 @br_i15_sub(i16*, i16*, i32) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !505 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !508, metadata !DIExpression()), !dbg !509
  %2 = xor i32 %0, 1, !dbg !510
  ret i32 %2, !dbg !511
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !512 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i8* %1, metadata !515, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i8* %2, metadata !516, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i64 %3, metadata !517, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i8* %4, metadata !518, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i64 %5, metadata !519, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i8* %6, metadata !520, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !521, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %8, metadata !522, metadata !DIExpression()), !dbg !514
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !523
  call void @public_in(%struct.smack_value* %10), !dbg !524
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !525
  call void @public_in(%struct.smack_value* %11), !dbg !526
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !527
  call void @public_in(%struct.smack_value* %12), !dbg !528
  %13 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !529
  call void @public_in(%struct.smack_value* %13), !dbg !530
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !531
  call void @public_in(%struct.smack_value* %14), !dbg !532
  %15 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %5), !dbg !533
  call void @public_in(%struct.smack_value* %15), !dbg !534
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !535
  call void @public_in(%struct.smack_value* %16), !dbg !536
  %17 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %8), !dbg !537
  call void @public_in(%struct.smack_value* %17), !dbg !538
  %18 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !539
  call void @public_in(%struct.smack_value* %18), !dbg !540
  %19 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !541
  call void @public_in(%struct.smack_value* %19), !dbg !542
  %20 = call %struct.smack_value* (i8*, i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, i32, ...)*)(i8* %4, i32 32), !dbg !543
  call void @public_in(%struct.smack_value* %20), !dbg !544
  call void @br_poly1305_i15_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 %8), !dbg !545
  ret void, !dbg !546
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper_t() #0 !dbg !547 {
  %1 = call i8* (...) @getvoid1(), !dbg !550
  call void @llvm.dbg.value(metadata i8* %1, metadata !551, metadata !DIExpression()), !dbg !552
  %2 = call i8* (...) @getvoid2(), !dbg !553
  call void @llvm.dbg.value(metadata i8* %2, metadata !554, metadata !DIExpression()), !dbg !552
  %3 = call i8* (...) @getvoid5(), !dbg !555
  call void @llvm.dbg.value(metadata i8* %3, metadata !556, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64 32, metadata !557, metadata !DIExpression()), !dbg !552
  %4 = call i8* (...) @getvoid3(), !dbg !558
  call void @llvm.dbg.value(metadata i8* %4, metadata !559, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64 32, metadata !560, metadata !DIExpression()), !dbg !552
  %5 = call i8* (...) @getvoid6(), !dbg !561
  call void @llvm.dbg.value(metadata i8* %5, metadata !562, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 1, metadata !563, metadata !DIExpression()), !dbg !552
  call void @br_poly1305_i15_run(i8* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 1), !dbg !564
  ret void, !dbg !565
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

!llvm.dbg.cu = !{!17, !40, !64}
!llvm.ident = !{!66, !66, !66}
!llvm.module.flags = !{!67, !68, !69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CW", scope: !2, file: !3, line: 36, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "br_chacha20_ct_run", scope: !3, file: !3, line: 29, type: !4, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/chacha20_ct.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_i15_ChaCha20")
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
!26 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_i15_ChaCha20")
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
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "P1305", scope: !40, file: !41, line: 37, type: !57, isLocal: true, isDefinition: true)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !42, globals: !54, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../BearSSL/src/symcipher/poly1305_i15.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_i15_ChaCha20")
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !16)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u64", file: !26, line: 485, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 482, size: 64, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !47, file: !26, line: 483, baseType: !43, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !47, file: !26, line: 484, baseType: !51, size: 64)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 8)
!54 = !{!38, !55}
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "R2", scope: !40, file: !41, line: 51, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 160, elements: !62)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 25, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 40, baseType: !61)
!61 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!62 = !{!63}
!63 = !DISubrange(count: 10)
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "run.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_i15_ChaCha20")
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
!84 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 32, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!86 = !DILocalVariable(name: "u", scope: !2, file: !3, line: 34, type: !14)
!87 = !DILocation(line: 41, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!89 = !DILocation(line: 0, scope: !88)
!90 = !DILocation(line: 41, column: 16, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !3, line: 41, column: 2)
!92 = !DILocation(line: 41, column: 2, scope: !88)
!93 = !DILocation(line: 42, column: 54, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !3, line: 41, column: 27)
!95 = !DILocation(line: 42, column: 49, scope: !94)
!96 = !DILocation(line: 42, column: 11, scope: !94)
!97 = !DILocation(line: 42, column: 3, scope: !94)
!98 = !DILocation(line: 42, column: 9, scope: !94)
!99 = !DILocation(line: 43, column: 2, scope: !94)
!100 = !DILocation(line: 41, column: 23, scope: !91)
!101 = !DILocation(line: 41, column: 2, scope: !91)
!102 = distinct !{!102, !92, !103, !104}
!103 = !DILocation(line: 43, column: 2, scope: !88)
!104 = !{!"llvm.loop.mustprogress"}
!105 = !DILocation(line: 44, column: 7, scope: !106)
!106 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 2)
!107 = !DILocation(line: 0, scope: !106)
!108 = !DILocation(line: 44, column: 16, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !3, line: 44, column: 2)
!110 = !DILocation(line: 44, column: 2, scope: !106)
!111 = !DILocation(line: 45, column: 54, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !3, line: 44, column: 27)
!113 = !DILocation(line: 45, column: 49, scope: !112)
!114 = !DILocation(line: 45, column: 12, scope: !112)
!115 = !DILocation(line: 45, column: 3, scope: !112)
!116 = !DILocation(line: 45, column: 10, scope: !112)
!117 = !DILocation(line: 46, column: 2, scope: !112)
!118 = !DILocation(line: 44, column: 23, scope: !109)
!119 = !DILocation(line: 44, column: 2, scope: !109)
!120 = distinct !{!120, !110, !121, !104}
!121 = !DILocation(line: 46, column: 2, scope: !106)
!122 = !DILocation(line: 47, column: 2, scope: !2)
!123 = !DILocation(line: 47, column: 13, scope: !2)
!124 = !DILocalVariable(name: "state", scope: !125, file: !3, line: 48, type: !126)
!125 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 18)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 16)
!129 = !DILocation(line: 48, column: 12, scope: !125)
!130 = !DILocalVariable(name: "tmp", scope: !125, file: !3, line: 51, type: !131)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 64)
!134 = !DILocation(line: 51, column: 17, scope: !125)
!135 = !DILocation(line: 53, column: 11, scope: !125)
!136 = !DILocation(line: 53, column: 3, scope: !125)
!137 = !DILocation(line: 54, column: 11, scope: !125)
!138 = !DILocation(line: 54, column: 3, scope: !125)
!139 = !DILocation(line: 55, column: 3, scope: !125)
!140 = !DILocation(line: 55, column: 13, scope: !125)
!141 = !DILocation(line: 56, column: 11, scope: !125)
!142 = !DILocation(line: 56, column: 3, scope: !125)
!143 = !DILocalVariable(name: "i", scope: !125, file: !3, line: 49, type: !144)
!144 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!145 = !DILocation(line: 0, scope: !125)
!146 = !DILocation(line: 57, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !125, file: !3, line: 57, column: 3)
!148 = !DILocation(line: 0, scope: !147)
!149 = !DILocation(line: 57, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !3, line: 57, column: 3)
!151 = !DILocation(line: 57, column: 3, scope: !147)
!152 = !DILocation(line: 74, column: 4, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !3, line: 57, column: 29)
!154 = !DILocation(line: 74, column: 4, scope: !155)
!155 = distinct !DILexicalBlock(scope: !153, file: !3, line: 74, column: 4)
!156 = !DILocation(line: 75, column: 4, scope: !153)
!157 = !DILocation(line: 75, column: 4, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !3, line: 75, column: 4)
!159 = !DILocation(line: 76, column: 4, scope: !153)
!160 = !DILocation(line: 76, column: 4, scope: !161)
!161 = distinct !DILexicalBlock(scope: !153, file: !3, line: 76, column: 4)
!162 = !DILocation(line: 77, column: 4, scope: !153)
!163 = !DILocation(line: 77, column: 4, scope: !164)
!164 = distinct !DILexicalBlock(scope: !153, file: !3, line: 77, column: 4)
!165 = !DILocation(line: 78, column: 4, scope: !153)
!166 = !DILocation(line: 78, column: 4, scope: !167)
!167 = distinct !DILexicalBlock(scope: !153, file: !3, line: 78, column: 4)
!168 = !DILocation(line: 79, column: 4, scope: !153)
!169 = !DILocation(line: 79, column: 4, scope: !170)
!170 = distinct !DILexicalBlock(scope: !153, file: !3, line: 79, column: 4)
!171 = !DILocation(line: 80, column: 4, scope: !153)
!172 = !DILocation(line: 80, column: 4, scope: !173)
!173 = distinct !DILexicalBlock(scope: !153, file: !3, line: 80, column: 4)
!174 = !DILocation(line: 81, column: 4, scope: !153)
!175 = !DILocation(line: 81, column: 4, scope: !176)
!176 = distinct !DILexicalBlock(scope: !153, file: !3, line: 81, column: 4)
!177 = !DILocation(line: 85, column: 3, scope: !153)
!178 = !DILocation(line: 57, column: 25, scope: !150)
!179 = !DILocation(line: 57, column: 3, scope: !150)
!180 = distinct !{!180, !151, !181, !104}
!181 = !DILocation(line: 85, column: 3, scope: !147)
!182 = !DILocation(line: 86, column: 8, scope: !183)
!183 = distinct !DILexicalBlock(scope: !125, file: !3, line: 86, column: 3)
!184 = !DILocation(line: 0, scope: !183)
!185 = !DILocation(line: 86, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !3, line: 86, column: 3)
!187 = !DILocation(line: 86, column: 3, scope: !183)
!188 = !DILocation(line: 87, column: 22, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !3, line: 86, column: 28)
!190 = !DILocation(line: 87, column: 16, scope: !189)
!191 = !DILocation(line: 87, column: 29, scope: !189)
!192 = !DILocation(line: 87, column: 40, scope: !189)
!193 = !DILocation(line: 87, column: 38, scope: !189)
!194 = !DILocation(line: 87, column: 4, scope: !189)
!195 = !DILocation(line: 88, column: 3, scope: !189)
!196 = !DILocation(line: 86, column: 24, scope: !186)
!197 = !DILocation(line: 86, column: 3, scope: !186)
!198 = distinct !{!198, !187, !199, !104}
!199 = !DILocation(line: 88, column: 3, scope: !183)
!200 = !DILocation(line: 89, column: 8, scope: !201)
!201 = distinct !DILexicalBlock(scope: !125, file: !3, line: 89, column: 3)
!202 = !DILocation(line: 0, scope: !201)
!203 = !DILocation(line: 89, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !3, line: 89, column: 3)
!205 = !DILocation(line: 89, column: 3, scope: !201)
!206 = !DILocation(line: 90, column: 22, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !3, line: 89, column: 29)
!208 = !DILocation(line: 90, column: 16, scope: !207)
!209 = !DILocation(line: 90, column: 29, scope: !207)
!210 = !DILocation(line: 90, column: 45, scope: !207)
!211 = !DILocation(line: 90, column: 40, scope: !207)
!212 = !DILocation(line: 90, column: 38, scope: !207)
!213 = !DILocation(line: 90, column: 4, scope: !207)
!214 = !DILocation(line: 91, column: 3, scope: !207)
!215 = !DILocation(line: 89, column: 25, scope: !204)
!216 = !DILocation(line: 89, column: 3, scope: !204)
!217 = distinct !{!217, !205, !218, !104}
!218 = !DILocation(line: 91, column: 3, scope: !201)
!219 = !DILocation(line: 92, column: 15, scope: !125)
!220 = !DILocation(line: 92, column: 24, scope: !125)
!221 = !DILocation(line: 92, column: 34, scope: !125)
!222 = !DILocation(line: 92, column: 3, scope: !125)
!223 = !DILocation(line: 93, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !125, file: !3, line: 93, column: 3)
!225 = !DILocation(line: 0, scope: !224)
!226 = !DILocation(line: 93, column: 18, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !3, line: 93, column: 3)
!228 = !DILocation(line: 93, column: 3, scope: !224)
!229 = !DILocation(line: 94, column: 22, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 93, column: 30)
!231 = !DILocation(line: 94, column: 16, scope: !230)
!232 = !DILocation(line: 94, column: 29, scope: !230)
!233 = !DILocation(line: 94, column: 46, scope: !230)
!234 = !DILocation(line: 94, column: 40, scope: !230)
!235 = !DILocation(line: 94, column: 38, scope: !230)
!236 = !DILocation(line: 94, column: 4, scope: !230)
!237 = !DILocation(line: 95, column: 3, scope: !230)
!238 = !DILocation(line: 93, column: 26, scope: !227)
!239 = !DILocation(line: 93, column: 3, scope: !227)
!240 = distinct !{!240, !228, !241, !104}
!241 = !DILocation(line: 95, column: 3, scope: !224)
!242 = !DILocation(line: 97, column: 14, scope: !125)
!243 = !DILocation(line: 97, column: 10, scope: !125)
!244 = !DILocalVariable(name: "clen", scope: !125, file: !3, line: 50, type: !14)
!245 = !DILocation(line: 98, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !125, file: !3, line: 98, column: 3)
!247 = !DILocation(line: 0, scope: !246)
!248 = !DILocation(line: 98, column: 17, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !3, line: 98, column: 3)
!250 = !DILocation(line: 98, column: 3, scope: !246)
!251 = !DILocation(line: 99, column: 14, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !3, line: 98, column: 31)
!253 = !DILocation(line: 99, column: 4, scope: !252)
!254 = !DILocation(line: 99, column: 11, scope: !252)
!255 = !DILocation(line: 100, column: 3, scope: !252)
!256 = !DILocation(line: 98, column: 27, scope: !249)
!257 = !DILocation(line: 98, column: 3, scope: !249)
!258 = distinct !{!258, !250, !259, !104}
!259 = !DILocation(line: 100, column: 3, scope: !246)
!260 = !DILocation(line: 101, column: 7, scope: !125)
!261 = !DILocation(line: 102, column: 7, scope: !125)
!262 = !DILocation(line: 103, column: 6, scope: !125)
!263 = distinct !{!263, !122, !264, !104}
!264 = !DILocation(line: 104, column: 2, scope: !2)
!265 = !DILocation(line: 105, column: 2, scope: !2)
!266 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !267, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!267 = !DISubroutineType(types: !268)
!268 = !{!6, !11}
!269 = !DILocalVariable(name: "src", arg: 1, scope: !266, file: !26, line: 574, type: !11)
!270 = !DILocation(line: 0, scope: !266)
!271 = !DILocation(line: 577, column: 10, scope: !266)
!272 = !DILocation(line: 577, column: 38, scope: !266)
!273 = !DILocation(line: 577, column: 2, scope: !266)
!274 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !275, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !13, !6}
!277 = !DILocalVariable(name: "dst", arg: 1, scope: !274, file: !26, line: 542, type: !13)
!278 = !DILocation(line: 0, scope: !274)
!279 = !DILocalVariable(name: "x", arg: 2, scope: !274, file: !26, line: 542, type: !6)
!280 = !DILocation(line: 545, column: 3, scope: !274)
!281 = !DILocation(line: 545, column: 25, scope: !274)
!282 = !DILocation(line: 545, column: 27, scope: !274)
!283 = !DILocation(line: 555, column: 1, scope: !274)
!284 = distinct !DISubprogram(name: "br_poly1305_i15_run", scope: !41, file: !41, line: 129, type: !285, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !18)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !11, !11, !13, !14, !11, !14, !13, !287, !144}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_chacha20_run", file: !288, line: 2442, baseType: !289)
!288 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_i15_ChaCha20")
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!290 = !DILocalVariable(name: "key", arg: 1, scope: !284, file: !41, line: 129, type: !11)
!291 = !DILocation(line: 0, scope: !284)
!292 = !DILocalVariable(name: "iv", arg: 2, scope: !284, file: !41, line: 129, type: !11)
!293 = !DILocalVariable(name: "data", arg: 3, scope: !284, file: !41, line: 130, type: !13)
!294 = !DILocalVariable(name: "len", arg: 4, scope: !284, file: !41, line: 130, type: !14)
!295 = !DILocalVariable(name: "aad", arg: 5, scope: !284, file: !41, line: 130, type: !11)
!296 = !DILocalVariable(name: "aad_len", arg: 6, scope: !284, file: !41, line: 130, type: !14)
!297 = !DILocalVariable(name: "tag", arg: 7, scope: !284, file: !41, line: 131, type: !13)
!298 = !DILocalVariable(name: "ichacha", arg: 8, scope: !284, file: !41, line: 131, type: !287)
!299 = !DILocalVariable(name: "encrypt", arg: 9, scope: !284, file: !41, line: 131, type: !144)
!300 = !DILocalVariable(name: "pkey", scope: !284, file: !41, line: 133, type: !301)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 32)
!304 = !DILocation(line: 133, column: 16, scope: !284)
!305 = !DILocalVariable(name: "foot", scope: !284, file: !41, line: 133, type: !306)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !127)
!307 = !DILocation(line: 133, column: 26, scope: !284)
!308 = !DILocalVariable(name: "t", scope: !284, file: !41, line: 134, type: !309)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 160, elements: !62)
!310 = !DILocation(line: 134, column: 11, scope: !284)
!311 = !DILocalVariable(name: "r", scope: !284, file: !41, line: 134, type: !309)
!312 = !DILocation(line: 134, column: 18, scope: !284)
!313 = !DILocalVariable(name: "acc", scope: !284, file: !41, line: 134, type: !309)
!314 = !DILocation(line: 134, column: 25, scope: !284)
!315 = !DILocation(line: 140, column: 2, scope: !284)
!316 = !DILocation(line: 141, column: 22, scope: !284)
!317 = !DILocation(line: 141, column: 2, scope: !284)
!318 = !DILocation(line: 147, column: 6, scope: !319)
!319 = distinct !DILexicalBlock(scope: !284, file: !41, line: 147, column: 6)
!320 = !DILocation(line: 147, column: 6, scope: !284)
!321 = !DILocation(line: 148, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !41, line: 147, column: 15)
!323 = !DILocation(line: 149, column: 2, scope: !322)
!324 = !DILocation(line: 161, column: 2, scope: !284)
!325 = !DILocation(line: 161, column: 11, scope: !284)
!326 = !DILocation(line: 162, column: 2, scope: !284)
!327 = !DILocation(line: 162, column: 11, scope: !284)
!328 = !DILocation(line: 163, column: 2, scope: !284)
!329 = !DILocation(line: 163, column: 11, scope: !284)
!330 = !DILocation(line: 164, column: 2, scope: !284)
!331 = !DILocation(line: 164, column: 11, scope: !284)
!332 = !DILocation(line: 165, column: 2, scope: !284)
!333 = !DILocation(line: 165, column: 11, scope: !284)
!334 = !DILocation(line: 166, column: 2, scope: !284)
!335 = !DILocation(line: 166, column: 11, scope: !284)
!336 = !DILocation(line: 167, column: 2, scope: !284)
!337 = !DILocation(line: 167, column: 11, scope: !284)
!338 = !DILocation(line: 173, column: 13, scope: !284)
!339 = !DILocation(line: 173, column: 2, scope: !284)
!340 = !DILocation(line: 174, column: 20, scope: !284)
!341 = !DILocation(line: 174, column: 23, scope: !284)
!342 = !DILocation(line: 174, column: 2, scope: !284)
!343 = !DILocation(line: 179, column: 18, scope: !284)
!344 = !DILocation(line: 179, column: 21, scope: !284)
!345 = !DILocation(line: 179, column: 2, scope: !284)
!346 = !DILocation(line: 184, column: 14, scope: !284)
!347 = !DILocation(line: 184, column: 2, scope: !284)
!348 = !DILocation(line: 190, column: 13, scope: !284)
!349 = !DILocation(line: 190, column: 2, scope: !284)
!350 = !DILocation(line: 191, column: 13, scope: !284)
!351 = !DILocation(line: 191, column: 18, scope: !284)
!352 = !DILocation(line: 191, column: 2, scope: !284)
!353 = !DILocation(line: 192, column: 17, scope: !284)
!354 = !DILocation(line: 192, column: 22, scope: !284)
!355 = !DILocation(line: 192, column: 2, scope: !284)
!356 = !DILocation(line: 193, column: 17, scope: !284)
!357 = !DILocation(line: 193, column: 22, scope: !284)
!358 = !DILocation(line: 193, column: 2, scope: !284)
!359 = !DILocation(line: 194, column: 17, scope: !284)
!360 = !DILocation(line: 194, column: 22, scope: !284)
!361 = !DILocation(line: 194, column: 25, scope: !284)
!362 = !DILocation(line: 194, column: 2, scope: !284)
!363 = !DILocation(line: 199, column: 13, scope: !284)
!364 = !DILocation(line: 199, column: 18, scope: !284)
!365 = !DILocation(line: 199, column: 2, scope: !284)
!366 = !DILocation(line: 200, column: 20, scope: !284)
!367 = !DILocation(line: 200, column: 23, scope: !284)
!368 = !DILocation(line: 200, column: 28, scope: !284)
!369 = !DILocation(line: 200, column: 2, scope: !284)
!370 = !DILocation(line: 206, column: 13, scope: !284)
!371 = !DILocation(line: 206, column: 18, scope: !284)
!372 = !DILocation(line: 206, column: 2, scope: !284)
!373 = !DILocation(line: 212, column: 25, scope: !284)
!374 = !DILocation(line: 212, column: 2, scope: !284)
!375 = !DILocation(line: 213, column: 2, scope: !284)
!376 = !DILocation(line: 218, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !284, file: !41, line: 218, column: 6)
!378 = !DILocation(line: 218, column: 6, scope: !284)
!379 = !DILocation(line: 219, column: 3, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !41, line: 218, column: 16)
!381 = !DILocation(line: 220, column: 2, scope: !380)
!382 = !DILocation(line: 221, column: 1, scope: !284)
!383 = distinct !DISubprogram(name: "byteswap16", scope: !41, file: !41, line: 114, type: !384, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !18)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !85}
!386 = !DILocalVariable(name: "buf", arg: 1, scope: !383, file: !41, line: 114, type: !85)
!387 = !DILocation(line: 0, scope: !383)
!388 = !DILocalVariable(name: "i", scope: !383, file: !41, line: 116, type: !144)
!389 = !DILocation(line: 118, column: 7, scope: !390)
!390 = distinct !DILexicalBlock(scope: !383, file: !41, line: 118, column: 2)
!391 = !DILocation(line: 0, scope: !390)
!392 = !DILocation(line: 118, column: 16, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !41, line: 118, column: 2)
!394 = !DILocation(line: 118, column: 2, scope: !390)
!395 = !DILocation(line: 121, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !41, line: 118, column: 27)
!397 = !DILocalVariable(name: "x", scope: !396, file: !41, line: 119, type: !10)
!398 = !DILocation(line: 0, scope: !396)
!399 = !DILocation(line: 122, column: 19, scope: !396)
!400 = !DILocation(line: 122, column: 12, scope: !396)
!401 = !DILocation(line: 122, column: 3, scope: !396)
!402 = !DILocation(line: 122, column: 10, scope: !396)
!403 = !DILocation(line: 123, column: 17, scope: !396)
!404 = !DILocation(line: 123, column: 10, scope: !396)
!405 = !DILocation(line: 123, column: 3, scope: !396)
!406 = !DILocation(line: 123, column: 15, scope: !396)
!407 = !DILocation(line: 124, column: 2, scope: !396)
!408 = !DILocation(line: 118, column: 23, scope: !393)
!409 = !DILocation(line: 118, column: 2, scope: !393)
!410 = distinct !{!410, !394, !411, !104}
!411 = !DILocation(line: 124, column: 2, scope: !390)
!412 = !DILocation(line: 125, column: 1, scope: !383)
!413 = distinct !DISubprogram(name: "br_i15_zero", scope: !26, file: !26, line: 1537, type: !414, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !18)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416, !59}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!417 = !DILocalVariable(name: "x", arg: 1, scope: !413, file: !26, line: 1537, type: !416)
!418 = !DILocation(line: 0, scope: !413)
!419 = !DILocalVariable(name: "bit_len", arg: 2, scope: !413, file: !26, line: 1537, type: !59)
!420 = !DILocation(line: 1539, column: 5, scope: !413)
!421 = !DILocation(line: 1539, column: 8, scope: !413)
!422 = !DILocation(line: 1540, column: 2, scope: !413)
!423 = !DILocation(line: 1540, column: 17, scope: !413)
!424 = !DILocation(line: 1540, column: 25, scope: !413)
!425 = !DILocation(line: 1540, column: 31, scope: !413)
!426 = !DILocation(line: 1540, column: 15, scope: !413)
!427 = !DILocation(line: 1540, column: 37, scope: !413)
!428 = !DILocation(line: 1541, column: 1, scope: !413)
!429 = distinct !DISubprogram(name: "br_enc64le", scope: !26, file: !26, line: 606, type: !430, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !18)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !13, !43}
!432 = !DILocalVariable(name: "dst", arg: 1, scope: !429, file: !26, line: 606, type: !13)
!433 = !DILocation(line: 0, scope: !429)
!434 = !DILocalVariable(name: "x", arg: 2, scope: !429, file: !26, line: 606, type: !43)
!435 = !DILocation(line: 609, column: 3, scope: !429)
!436 = !DILocation(line: 609, column: 25, scope: !429)
!437 = !DILocation(line: 609, column: 27, scope: !429)
!438 = !DILocation(line: 617, column: 1, scope: !429)
!439 = distinct !DISubprogram(name: "poly1305_inner", scope: !41, file: !41, line: 61, type: !440, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !18)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !416, !442, !11, !14}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!443 = !DILocalVariable(name: "a", arg: 1, scope: !439, file: !41, line: 61, type: !416)
!444 = !DILocation(line: 0, scope: !439)
!445 = !DILocalVariable(name: "r", arg: 2, scope: !439, file: !41, line: 61, type: !442)
!446 = !DILocalVariable(name: "data", arg: 3, scope: !439, file: !41, line: 61, type: !11)
!447 = !DILocalVariable(name: "len", arg: 4, scope: !439, file: !41, line: 61, type: !14)
!448 = !DILocalVariable(name: "buf", scope: !439, file: !41, line: 63, type: !20)
!449 = !DILocation(line: 66, column: 2, scope: !439)
!450 = !DILocation(line: 66, column: 13, scope: !439)
!451 = !DILocalVariable(name: "tmp", scope: !452, file: !41, line: 67, type: !306)
!452 = distinct !DILexicalBlock(scope: !439, file: !41, line: 66, column: 18)
!453 = !DILocation(line: 67, column: 17, scope: !452)
!454 = !DILocalVariable(name: "rev", scope: !452, file: !41, line: 67, type: !306)
!455 = !DILocation(line: 67, column: 26, scope: !452)
!456 = !DILocalVariable(name: "b", scope: !452, file: !41, line: 68, type: !309)
!457 = !DILocation(line: 68, column: 12, scope: !452)
!458 = !DILocation(line: 75, column: 11, scope: !459)
!459 = distinct !DILexicalBlock(scope: !452, file: !41, line: 75, column: 7)
!460 = !DILocation(line: 75, column: 7, scope: !452)
!461 = !DILocation(line: 76, column: 4, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !41, line: 75, column: 17)
!463 = !DILocation(line: 77, column: 4, scope: !462)
!464 = !DILocation(line: 78, column: 10, scope: !462)
!465 = !DILocation(line: 80, column: 3, scope: !462)
!466 = !DILocalVariable(name: "i", scope: !452, file: !41, line: 70, type: !144)
!467 = !DILocation(line: 0, scope: !452)
!468 = !DILocation(line: 86, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !452, file: !41, line: 86, column: 3)
!470 = !DILocation(line: 0, scope: !469)
!471 = !DILocation(line: 86, column: 17, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !41, line: 86, column: 3)
!473 = !DILocation(line: 86, column: 3, scope: !469)
!474 = !DILocation(line: 87, column: 20, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !41, line: 86, column: 29)
!476 = !DILocation(line: 87, column: 13, scope: !475)
!477 = !DILocation(line: 87, column: 4, scope: !475)
!478 = !DILocation(line: 87, column: 11, scope: !475)
!479 = !DILocation(line: 88, column: 3, scope: !475)
!480 = !DILocation(line: 86, column: 25, scope: !472)
!481 = !DILocation(line: 86, column: 3, scope: !472)
!482 = distinct !{!482, !473, !483, !104}
!483 = !DILocation(line: 88, column: 3, scope: !469)
!484 = !DILocation(line: 89, column: 21, scope: !452)
!485 = !DILocation(line: 89, column: 24, scope: !452)
!486 = !DILocation(line: 89, column: 3, scope: !452)
!487 = !DILocation(line: 90, column: 3, scope: !452)
!488 = !DILocation(line: 90, column: 8, scope: !452)
!489 = !DILocation(line: 96, column: 20, scope: !452)
!490 = !DILocation(line: 96, column: 9, scope: !452)
!491 = !DILocalVariable(name: "ctl", scope: !452, file: !41, line: 69, type: !6)
!492 = !DILocation(line: 97, column: 25, scope: !452)
!493 = !DILocation(line: 97, column: 14, scope: !452)
!494 = !DILocation(line: 97, column: 10, scope: !452)
!495 = !DILocation(line: 97, column: 7, scope: !452)
!496 = !DILocation(line: 98, column: 14, scope: !452)
!497 = !DILocation(line: 98, column: 3, scope: !452)
!498 = !DILocation(line: 103, column: 22, scope: !452)
!499 = !DILocation(line: 103, column: 3, scope: !452)
!500 = !DILocation(line: 105, column: 7, scope: !452)
!501 = !DILocation(line: 106, column: 7, scope: !452)
!502 = distinct !{!502, !449, !503, !104}
!503 = !DILocation(line: 107, column: 2, scope: !439)
!504 = !DILocation(line: 108, column: 1, scope: !439)
!505 = distinct !DISubprogram(name: "NOT", scope: !26, file: !26, line: 761, type: !506, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !18)
!506 = !DISubroutineType(types: !507)
!507 = !{!6, !6}
!508 = !DILocalVariable(name: "ctl", arg: 1, scope: !505, file: !26, line: 761, type: !6)
!509 = !DILocation(line: 0, scope: !505)
!510 = !DILocation(line: 763, column: 13, scope: !505)
!511 = !DILocation(line: 763, column: 2, scope: !505)
!512 = distinct !DISubprogram(name: "run_wrapper", scope: !65, file: !65, line: 3, type: !285, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !18)
!513 = !DILocalVariable(name: "key", arg: 1, scope: !512, file: !65, line: 3, type: !11)
!514 = !DILocation(line: 0, scope: !512)
!515 = !DILocalVariable(name: "iv", arg: 2, scope: !512, file: !65, line: 3, type: !11)
!516 = !DILocalVariable(name: "data", arg: 3, scope: !512, file: !65, line: 4, type: !13)
!517 = !DILocalVariable(name: "len", arg: 4, scope: !512, file: !65, line: 4, type: !14)
!518 = !DILocalVariable(name: "aad", arg: 5, scope: !512, file: !65, line: 4, type: !11)
!519 = !DILocalVariable(name: "aad_len", arg: 6, scope: !512, file: !65, line: 4, type: !14)
!520 = !DILocalVariable(name: "tag", arg: 7, scope: !512, file: !65, line: 5, type: !13)
!521 = !DILocalVariable(name: "ichacha", arg: 8, scope: !512, file: !65, line: 5, type: !287)
!522 = !DILocalVariable(name: "encrypt", arg: 9, scope: !512, file: !65, line: 5, type: !144)
!523 = !DILocation(line: 6, column: 12, scope: !512)
!524 = !DILocation(line: 6, column: 2, scope: !512)
!525 = !DILocation(line: 7, column: 12, scope: !512)
!526 = !DILocation(line: 7, column: 2, scope: !512)
!527 = !DILocation(line: 8, column: 12, scope: !512)
!528 = !DILocation(line: 8, column: 2, scope: !512)
!529 = !DILocation(line: 9, column: 12, scope: !512)
!530 = !DILocation(line: 9, column: 2, scope: !512)
!531 = !DILocation(line: 10, column: 12, scope: !512)
!532 = !DILocation(line: 10, column: 2, scope: !512)
!533 = !DILocation(line: 11, column: 12, scope: !512)
!534 = !DILocation(line: 11, column: 2, scope: !512)
!535 = !DILocation(line: 12, column: 12, scope: !512)
!536 = !DILocation(line: 12, column: 2, scope: !512)
!537 = !DILocation(line: 13, column: 12, scope: !512)
!538 = !DILocation(line: 13, column: 2, scope: !512)
!539 = !DILocation(line: 16, column: 12, scope: !512)
!540 = !DILocation(line: 16, column: 2, scope: !512)
!541 = !DILocation(line: 17, column: 12, scope: !512)
!542 = !DILocation(line: 17, column: 2, scope: !512)
!543 = !DILocation(line: 18, column: 12, scope: !512)
!544 = !DILocation(line: 18, column: 2, scope: !512)
!545 = !DILocation(line: 21, column: 2, scope: !512)
!546 = !DILocation(line: 22, column: 1, scope: !512)
!547 = distinct !DISubprogram(name: "run_wrapper_t", scope: !65, file: !65, line: 32, type: !548, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !18)
!548 = !DISubroutineType(types: !549)
!549 = !{null}
!550 = !DILocation(line: 34, column: 19, scope: !547)
!551 = !DILocalVariable(name: "key", scope: !547, file: !65, line: 34, type: !11)
!552 = !DILocation(line: 0, scope: !547)
!553 = !DILocation(line: 35, column: 19, scope: !547)
!554 = !DILocalVariable(name: "iv", scope: !547, file: !65, line: 35, type: !11)
!555 = !DILocation(line: 37, column: 15, scope: !547)
!556 = !DILocalVariable(name: "data", scope: !547, file: !65, line: 37, type: !13)
!557 = !DILocalVariable(name: "len", scope: !547, file: !65, line: 38, type: !14)
!558 = !DILocation(line: 39, column: 22, scope: !547)
!559 = !DILocalVariable(name: "aad", scope: !547, file: !65, line: 39, type: !11)
!560 = !DILocalVariable(name: "aad_len", scope: !547, file: !65, line: 40, type: !14)
!561 = !DILocation(line: 41, column: 14, scope: !547)
!562 = !DILocalVariable(name: "tag", scope: !547, file: !65, line: 41, type: !13)
!563 = !DILocalVariable(name: "encrypt", scope: !547, file: !65, line: 42, type: !144)
!564 = !DILocation(line: 44, column: 2, scope: !547)
!565 = !DILocation(line: 45, column: 1, scope: !547)
