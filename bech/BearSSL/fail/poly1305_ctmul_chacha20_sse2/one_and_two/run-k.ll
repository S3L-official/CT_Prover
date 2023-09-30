; ModuleID = 'run.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__loadu_si128 = type { <2 x i64> }
%union.br_union_u32 = type { i32 }
%union.br_union_u64 = type { i64 }
%struct.smack_value = type { i8* }

@br_chacha20_sse2_run.CW = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_sse2_get() #0 !dbg !88 {
  ret i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_sse2_run, !dbg !94
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_chacha20_sse2_run(i8* noalias %0, i8* noalias %1, i32 %2, i8* noalias %3, i64 %4) #1 !dbg !2 {
  %6 = alloca [4 x i32], align 16
  %7 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %1, metadata !97, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i32 %2, metadata !98, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %3, metadata !99, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i64 %4, metadata !100, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !101, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.value(metadata i8* %3, metadata !104, metadata !DIExpression()), !dbg !96
  %8 = bitcast i8* %0 to <2 x i64>*, !dbg !105
  %9 = bitcast <2 x i64>* %8 to %struct.__loadu_si128*, !dbg !106
  %10 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %9, i32 0, i32 0, !dbg !106
  %11 = load <2 x i64>, <2 x i64>* %10, align 1, !dbg !106
  call void @llvm.dbg.value(metadata <2 x i64> %11, metadata !107, metadata !DIExpression()), !dbg !96
  %12 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !108
  %13 = bitcast i8* %12 to <2 x i64>*, !dbg !109
  %14 = bitcast <2 x i64>* %13 to %struct.__loadu_si128*, !dbg !110
  %15 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %14, i32 0, i32 0, !dbg !110
  %16 = load <2 x i64>, <2 x i64>* %15, align 1, !dbg !110
  call void @llvm.dbg.value(metadata <2 x i64> %16, metadata !111, metadata !DIExpression()), !dbg !96
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !112
  store i32 %2, i32* %17, align 16, !dbg !113
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !114
  %19 = getelementptr inbounds i32, i32* %18, i64 1, !dbg !115
  %20 = bitcast i32* %19 to i8*, !dbg !116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 1 %1, i64 12, i1 false), !dbg !116
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !117
  %22 = bitcast i32* %21 to i8*, !dbg !118
  %23 = bitcast i8* %22 to <2 x i64>*, !dbg !118
  %24 = bitcast <2 x i64>* %23 to %struct.__loadu_si128*, !dbg !119
  %25 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %24, i32 0, i32 0, !dbg !119
  %26 = load <2 x i64>, <2 x i64>* %25, align 1, !dbg !119
  call void @llvm.dbg.value(metadata <2 x i64> %26, metadata !120, metadata !DIExpression()), !dbg !96
  %27 = bitcast <2 x i64>* bitcast ([4 x i32]* @br_chacha20_sse2_run.CW to <2 x i64>*) to %struct.__loadu_si128*, !dbg !121
  %28 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %27, i32 0, i32 0, !dbg !121
  %29 = load <2 x i64>, <2 x i64>* %28, align 1, !dbg !121
  call void @llvm.dbg.value(metadata <2 x i64> %29, metadata !122, metadata !DIExpression()), !dbg !96
  %30 = insertelement <4 x i32> undef, i32 1, i32 0, !dbg !123
  %31 = insertelement <4 x i32> %30, i32 0, i32 1, !dbg !123
  %32 = insertelement <4 x i32> %31, i32 0, i32 2, !dbg !123
  %33 = insertelement <4 x i32> %32, i32 0, i32 3, !dbg !123
  %34 = bitcast <4 x i32> %33 to <2 x i64>, !dbg !123
  call void @llvm.dbg.value(metadata <2 x i64> %34, metadata !124, metadata !DIExpression()), !dbg !96
  br label %35, !dbg !125

35:                                               ; preds = %257, %5
  %.08 = phi i64 [ %4, %5 ], [ %256, %257 ]
  %.07 = phi i8* [ %3, %5 ], [ %255, %257 ], !dbg !96
  %.06 = phi <2 x i64> [ %26, %5 ], [ %177, %257 ], !dbg !96
  call void @llvm.dbg.value(metadata <2 x i64> %.06, metadata !120, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i8* %.07, metadata !104, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i64 %.08, metadata !100, metadata !DIExpression()), !dbg !96
  %36 = icmp ugt i64 %.08, 0, !dbg !126
  br i1 %36, label %37, label %258, !dbg !125

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata <2 x i64> %29, metadata !127, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata <2 x i64> %11, metadata !130, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata <2 x i64> %16, metadata !131, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata <2 x i64> %.06, metadata !132, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !129
  br label %38, !dbg !134

38:                                               ; preds = %155, %37
  %.05 = phi <2 x i64> [ %29, %37 ], [ %125, %155 ], !dbg !129
  %.04 = phi <2 x i64> [ %11, %37 ], [ %148, %155 ], !dbg !129
  %.03 = phi <2 x i64> [ %16, %37 ], [ %151, %155 ], !dbg !129
  %.02 = phi <2 x i64> [ %.06, %37 ], [ %154, %155 ], !dbg !129
  %.01 = phi i32 [ 0, %37 ], [ %156, %155 ], !dbg !136
  call void @llvm.dbg.value(metadata i32 %.01, metadata !133, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata <2 x i64> %.02, metadata !132, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata <2 x i64> %.03, metadata !131, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata <2 x i64> %.04, metadata !130, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata <2 x i64> %.05, metadata !127, metadata !DIExpression()), !dbg !129
  %39 = icmp slt i32 %.01, 10, !dbg !137
  br i1 %39, label %40, label %157, !dbg !139

40:                                               ; preds = %38
  %41 = bitcast <2 x i64> %.05 to <4 x i32>, !dbg !140
  %42 = bitcast <2 x i64> %.04 to <4 x i32>, !dbg !140
  %43 = add <4 x i32> %41, %42, !dbg !140
  %44 = bitcast <4 x i32> %43 to <2 x i64>, !dbg !140
  call void @llvm.dbg.value(metadata <2 x i64> %44, metadata !127, metadata !DIExpression()), !dbg !129
  %45 = xor <2 x i64> %.02, %44, !dbg !142
  call void @llvm.dbg.value(metadata <2 x i64> %45, metadata !132, metadata !DIExpression()), !dbg !129
  %46 = bitcast <2 x i64> %45 to <4 x i32>, !dbg !143
  %47 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %46, i32 16) #7, !dbg !143
  %48 = bitcast <4 x i32> %47 to <2 x i64>, !dbg !143
  %49 = bitcast <2 x i64> %45 to <4 x i32>, !dbg !144
  %50 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %49, i32 16) #7, !dbg !144
  %51 = bitcast <4 x i32> %50 to <2 x i64>, !dbg !144
  %52 = or <2 x i64> %48, %51, !dbg !145
  call void @llvm.dbg.value(metadata <2 x i64> %52, metadata !132, metadata !DIExpression()), !dbg !129
  %53 = bitcast <2 x i64> %.03 to <4 x i32>, !dbg !146
  %54 = bitcast <2 x i64> %52 to <4 x i32>, !dbg !146
  %55 = add <4 x i32> %53, %54, !dbg !146
  %56 = bitcast <4 x i32> %55 to <2 x i64>, !dbg !146
  call void @llvm.dbg.value(metadata <2 x i64> %56, metadata !131, metadata !DIExpression()), !dbg !129
  %57 = xor <2 x i64> %.04, %56, !dbg !147
  call void @llvm.dbg.value(metadata <2 x i64> %57, metadata !130, metadata !DIExpression()), !dbg !129
  %58 = bitcast <2 x i64> %57 to <4 x i32>, !dbg !148
  %59 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %58, i32 12) #7, !dbg !148
  %60 = bitcast <4 x i32> %59 to <2 x i64>, !dbg !148
  %61 = bitcast <2 x i64> %57 to <4 x i32>, !dbg !149
  %62 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %61, i32 20) #7, !dbg !149
  %63 = bitcast <4 x i32> %62 to <2 x i64>, !dbg !149
  %64 = or <2 x i64> %60, %63, !dbg !150
  call void @llvm.dbg.value(metadata <2 x i64> %64, metadata !130, metadata !DIExpression()), !dbg !129
  %65 = bitcast <2 x i64> %44 to <4 x i32>, !dbg !151
  %66 = bitcast <2 x i64> %64 to <4 x i32>, !dbg !151
  %67 = add <4 x i32> %65, %66, !dbg !151
  %68 = bitcast <4 x i32> %67 to <2 x i64>, !dbg !151
  call void @llvm.dbg.value(metadata <2 x i64> %68, metadata !127, metadata !DIExpression()), !dbg !129
  %69 = xor <2 x i64> %52, %68, !dbg !152
  call void @llvm.dbg.value(metadata <2 x i64> %69, metadata !132, metadata !DIExpression()), !dbg !129
  %70 = bitcast <2 x i64> %69 to <4 x i32>, !dbg !153
  %71 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %70, i32 8) #7, !dbg !153
  %72 = bitcast <4 x i32> %71 to <2 x i64>, !dbg !153
  %73 = bitcast <2 x i64> %69 to <4 x i32>, !dbg !154
  %74 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %73, i32 24) #7, !dbg !154
  %75 = bitcast <4 x i32> %74 to <2 x i64>, !dbg !154
  %76 = or <2 x i64> %72, %75, !dbg !155
  call void @llvm.dbg.value(metadata <2 x i64> %76, metadata !132, metadata !DIExpression()), !dbg !129
  %77 = bitcast <2 x i64> %56 to <4 x i32>, !dbg !156
  %78 = bitcast <2 x i64> %76 to <4 x i32>, !dbg !156
  %79 = add <4 x i32> %77, %78, !dbg !156
  %80 = bitcast <4 x i32> %79 to <2 x i64>, !dbg !156
  call void @llvm.dbg.value(metadata <2 x i64> %80, metadata !131, metadata !DIExpression()), !dbg !129
  %81 = xor <2 x i64> %64, %80, !dbg !157
  call void @llvm.dbg.value(metadata <2 x i64> %81, metadata !130, metadata !DIExpression()), !dbg !129
  %82 = bitcast <2 x i64> %81 to <4 x i32>, !dbg !158
  %83 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %82, i32 7) #7, !dbg !158
  %84 = bitcast <4 x i32> %83 to <2 x i64>, !dbg !158
  %85 = bitcast <2 x i64> %81 to <4 x i32>, !dbg !159
  %86 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %85, i32 25) #7, !dbg !159
  %87 = bitcast <4 x i32> %86 to <2 x i64>, !dbg !159
  %88 = or <2 x i64> %84, %87, !dbg !160
  call void @llvm.dbg.value(metadata <2 x i64> %88, metadata !130, metadata !DIExpression()), !dbg !129
  %89 = bitcast <2 x i64> %88 to <4 x i32>, !dbg !161
  %90 = shufflevector <4 x i32> %89, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !161
  %91 = bitcast <4 x i32> %90 to <2 x i64>, !dbg !161
  call void @llvm.dbg.value(metadata <2 x i64> %91, metadata !130, metadata !DIExpression()), !dbg !129
  %92 = bitcast <2 x i64> %80 to <4 x i32>, !dbg !162
  %93 = shufflevector <4 x i32> %92, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !162
  %94 = bitcast <4 x i32> %93 to <2 x i64>, !dbg !162
  call void @llvm.dbg.value(metadata <2 x i64> %94, metadata !131, metadata !DIExpression()), !dbg !129
  %95 = bitcast <2 x i64> %76 to <4 x i32>, !dbg !163
  %96 = shufflevector <4 x i32> %95, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !163
  %97 = bitcast <4 x i32> %96 to <2 x i64>, !dbg !163
  call void @llvm.dbg.value(metadata <2 x i64> %97, metadata !132, metadata !DIExpression()), !dbg !129
  %98 = bitcast <2 x i64> %68 to <4 x i32>, !dbg !164
  %99 = bitcast <2 x i64> %91 to <4 x i32>, !dbg !164
  %100 = add <4 x i32> %98, %99, !dbg !164
  %101 = bitcast <4 x i32> %100 to <2 x i64>, !dbg !164
  call void @llvm.dbg.value(metadata <2 x i64> %101, metadata !127, metadata !DIExpression()), !dbg !129
  %102 = xor <2 x i64> %97, %101, !dbg !165
  call void @llvm.dbg.value(metadata <2 x i64> %102, metadata !132, metadata !DIExpression()), !dbg !129
  %103 = bitcast <2 x i64> %102 to <4 x i32>, !dbg !166
  %104 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %103, i32 16) #7, !dbg !166
  %105 = bitcast <4 x i32> %104 to <2 x i64>, !dbg !166
  %106 = bitcast <2 x i64> %102 to <4 x i32>, !dbg !167
  %107 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %106, i32 16) #7, !dbg !167
  %108 = bitcast <4 x i32> %107 to <2 x i64>, !dbg !167
  %109 = or <2 x i64> %105, %108, !dbg !168
  call void @llvm.dbg.value(metadata <2 x i64> %109, metadata !132, metadata !DIExpression()), !dbg !129
  %110 = bitcast <2 x i64> %94 to <4 x i32>, !dbg !169
  %111 = bitcast <2 x i64> %109 to <4 x i32>, !dbg !169
  %112 = add <4 x i32> %110, %111, !dbg !169
  %113 = bitcast <4 x i32> %112 to <2 x i64>, !dbg !169
  call void @llvm.dbg.value(metadata <2 x i64> %113, metadata !131, metadata !DIExpression()), !dbg !129
  %114 = xor <2 x i64> %91, %113, !dbg !170
  call void @llvm.dbg.value(metadata <2 x i64> %114, metadata !130, metadata !DIExpression()), !dbg !129
  %115 = bitcast <2 x i64> %114 to <4 x i32>, !dbg !171
  %116 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %115, i32 12) #7, !dbg !171
  %117 = bitcast <4 x i32> %116 to <2 x i64>, !dbg !171
  %118 = bitcast <2 x i64> %114 to <4 x i32>, !dbg !172
  %119 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %118, i32 20) #7, !dbg !172
  %120 = bitcast <4 x i32> %119 to <2 x i64>, !dbg !172
  %121 = or <2 x i64> %117, %120, !dbg !173
  call void @llvm.dbg.value(metadata <2 x i64> %121, metadata !130, metadata !DIExpression()), !dbg !129
  %122 = bitcast <2 x i64> %101 to <4 x i32>, !dbg !174
  %123 = bitcast <2 x i64> %121 to <4 x i32>, !dbg !174
  %124 = add <4 x i32> %122, %123, !dbg !174
  %125 = bitcast <4 x i32> %124 to <2 x i64>, !dbg !174
  call void @llvm.dbg.value(metadata <2 x i64> %125, metadata !127, metadata !DIExpression()), !dbg !129
  %126 = xor <2 x i64> %109, %125, !dbg !175
  call void @llvm.dbg.value(metadata <2 x i64> %126, metadata !132, metadata !DIExpression()), !dbg !129
  %127 = bitcast <2 x i64> %126 to <4 x i32>, !dbg !176
  %128 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %127, i32 8) #7, !dbg !176
  %129 = bitcast <4 x i32> %128 to <2 x i64>, !dbg !176
  %130 = bitcast <2 x i64> %126 to <4 x i32>, !dbg !177
  %131 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %130, i32 24) #7, !dbg !177
  %132 = bitcast <4 x i32> %131 to <2 x i64>, !dbg !177
  %133 = or <2 x i64> %129, %132, !dbg !178
  call void @llvm.dbg.value(metadata <2 x i64> %133, metadata !132, metadata !DIExpression()), !dbg !129
  %134 = bitcast <2 x i64> %113 to <4 x i32>, !dbg !179
  %135 = bitcast <2 x i64> %133 to <4 x i32>, !dbg !179
  %136 = add <4 x i32> %134, %135, !dbg !179
  %137 = bitcast <4 x i32> %136 to <2 x i64>, !dbg !179
  call void @llvm.dbg.value(metadata <2 x i64> %137, metadata !131, metadata !DIExpression()), !dbg !129
  %138 = xor <2 x i64> %121, %137, !dbg !180
  call void @llvm.dbg.value(metadata <2 x i64> %138, metadata !130, metadata !DIExpression()), !dbg !129
  %139 = bitcast <2 x i64> %138 to <4 x i32>, !dbg !181
  %140 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %139, i32 7) #7, !dbg !181
  %141 = bitcast <4 x i32> %140 to <2 x i64>, !dbg !181
  %142 = bitcast <2 x i64> %138 to <4 x i32>, !dbg !182
  %143 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %142, i32 25) #7, !dbg !182
  %144 = bitcast <4 x i32> %143 to <2 x i64>, !dbg !182
  %145 = or <2 x i64> %141, %144, !dbg !183
  call void @llvm.dbg.value(metadata <2 x i64> %145, metadata !130, metadata !DIExpression()), !dbg !129
  %146 = bitcast <2 x i64> %145 to <4 x i32>, !dbg !184
  %147 = shufflevector <4 x i32> %146, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !184
  %148 = bitcast <4 x i32> %147 to <2 x i64>, !dbg !184
  call void @llvm.dbg.value(metadata <2 x i64> %148, metadata !130, metadata !DIExpression()), !dbg !129
  %149 = bitcast <2 x i64> %137 to <4 x i32>, !dbg !185
  %150 = shufflevector <4 x i32> %149, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !185
  %151 = bitcast <4 x i32> %150 to <2 x i64>, !dbg !185
  call void @llvm.dbg.value(metadata <2 x i64> %151, metadata !131, metadata !DIExpression()), !dbg !129
  %152 = bitcast <2 x i64> %133 to <4 x i32>, !dbg !186
  %153 = shufflevector <4 x i32> %152, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !186
  %154 = bitcast <4 x i32> %153 to <2 x i64>, !dbg !186
  call void @llvm.dbg.value(metadata <2 x i64> %154, metadata !132, metadata !DIExpression()), !dbg !129
  br label %155, !dbg !187

155:                                              ; preds = %40
  %156 = add nsw i32 %.01, 1, !dbg !188
  call void @llvm.dbg.value(metadata i32 %156, metadata !133, metadata !DIExpression()), !dbg !129
  br label %38, !dbg !189, !llvm.loop !190

157:                                              ; preds = %38
  %158 = bitcast <2 x i64> %.05 to <4 x i32>, !dbg !193
  %159 = bitcast <2 x i64> %29 to <4 x i32>, !dbg !193
  %160 = add <4 x i32> %158, %159, !dbg !193
  %161 = bitcast <4 x i32> %160 to <2 x i64>, !dbg !193
  call void @llvm.dbg.value(metadata <2 x i64> %161, metadata !127, metadata !DIExpression()), !dbg !129
  %162 = bitcast <2 x i64> %.04 to <4 x i32>, !dbg !194
  %163 = bitcast <2 x i64> %11 to <4 x i32>, !dbg !194
  %164 = add <4 x i32> %162, %163, !dbg !194
  %165 = bitcast <4 x i32> %164 to <2 x i64>, !dbg !194
  call void @llvm.dbg.value(metadata <2 x i64> %165, metadata !130, metadata !DIExpression()), !dbg !129
  %166 = bitcast <2 x i64> %.03 to <4 x i32>, !dbg !195
  %167 = bitcast <2 x i64> %16 to <4 x i32>, !dbg !195
  %168 = add <4 x i32> %166, %167, !dbg !195
  %169 = bitcast <4 x i32> %168 to <2 x i64>, !dbg !195
  call void @llvm.dbg.value(metadata <2 x i64> %169, metadata !131, metadata !DIExpression()), !dbg !129
  %170 = bitcast <2 x i64> %.02 to <4 x i32>, !dbg !196
  %171 = bitcast <2 x i64> %.06 to <4 x i32>, !dbg !196
  %172 = add <4 x i32> %170, %171, !dbg !196
  %173 = bitcast <4 x i32> %172 to <2 x i64>, !dbg !196
  call void @llvm.dbg.value(metadata <2 x i64> %173, metadata !132, metadata !DIExpression()), !dbg !129
  %174 = bitcast <2 x i64> %.06 to <4 x i32>, !dbg !197
  %175 = bitcast <2 x i64> %34 to <4 x i32>, !dbg !197
  %176 = add <4 x i32> %174, %175, !dbg !197
  %177 = bitcast <4 x i32> %176 to <2 x i64>, !dbg !197
  call void @llvm.dbg.value(metadata <2 x i64> %177, metadata !120, metadata !DIExpression()), !dbg !96
  %178 = icmp ult i64 %.08, 64, !dbg !198
  br i1 %178, label %179, label %214, !dbg !200

179:                                              ; preds = %157
  call void @llvm.dbg.declare(metadata [64 x i8]* %7, metadata !201, metadata !DIExpression()), !dbg !206
  %180 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !207
  %181 = getelementptr inbounds i8, i8* %180, i64 0, !dbg !208
  %182 = bitcast i8* %181 to <2 x i64>*, !dbg !209
  %183 = bitcast <2 x i64>* %182 to %struct.__loadu_si128*, !dbg !210
  %184 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %183, i32 0, i32 0, !dbg !210
  store <2 x i64> %161, <2 x i64>* %184, align 1, !dbg !210
  %185 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !211
  %186 = getelementptr inbounds i8, i8* %185, i64 16, !dbg !212
  %187 = bitcast i8* %186 to <2 x i64>*, !dbg !213
  %188 = bitcast <2 x i64>* %187 to %struct.__loadu_si128*, !dbg !214
  %189 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %188, i32 0, i32 0, !dbg !214
  store <2 x i64> %165, <2 x i64>* %189, align 1, !dbg !214
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !215
  %191 = getelementptr inbounds i8, i8* %190, i64 32, !dbg !216
  %192 = bitcast i8* %191 to <2 x i64>*, !dbg !217
  %193 = bitcast <2 x i64>* %192 to %struct.__loadu_si128*, !dbg !218
  %194 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %193, i32 0, i32 0, !dbg !218
  store <2 x i64> %169, <2 x i64>* %194, align 1, !dbg !218
  %195 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !219
  %196 = getelementptr inbounds i8, i8* %195, i64 48, !dbg !220
  %197 = bitcast i8* %196 to <2 x i64>*, !dbg !221
  %198 = bitcast <2 x i64>* %197 to %struct.__loadu_si128*, !dbg !222
  %199 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %198, i32 0, i32 0, !dbg !222
  store <2 x i64> %173, <2 x i64>* %199, align 1, !dbg !222
  call void @llvm.dbg.value(metadata i64 0, metadata !223, metadata !DIExpression()), !dbg !224
  br label %200, !dbg !225

200:                                              ; preds = %211, %179
  %.0 = phi i64 [ 0, %179 ], [ %212, %211 ], !dbg !227
  call void @llvm.dbg.value(metadata i64 %.0, metadata !223, metadata !DIExpression()), !dbg !224
  %201 = icmp ult i64 %.0, %.08, !dbg !228
  br i1 %201, label %202, label %213, !dbg !230

202:                                              ; preds = %200
  %203 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %.0, !dbg !231
  %204 = load i8, i8* %203, align 1, !dbg !231
  %205 = zext i8 %204 to i32, !dbg !231
  %206 = getelementptr inbounds i8, i8* %.07, i64 %.0, !dbg !233
  %207 = load i8, i8* %206, align 1, !dbg !234
  %208 = zext i8 %207 to i32, !dbg !234
  %209 = xor i32 %208, %205, !dbg !234
  %210 = trunc i32 %209 to i8, !dbg !234
  store i8 %210, i8* %206, align 1, !dbg !234
  br label %211, !dbg !235

211:                                              ; preds = %202
  %212 = add i64 %.0, 1, !dbg !236
  call void @llvm.dbg.value(metadata i64 %212, metadata !223, metadata !DIExpression()), !dbg !224
  br label %200, !dbg !237, !llvm.loop !238

213:                                              ; preds = %200
  br label %258, !dbg !240

214:                                              ; preds = %157
  %215 = getelementptr inbounds i8, i8* %.07, i64 0, !dbg !241
  %216 = bitcast i8* %215 to <2 x i64>*, !dbg !243
  %217 = bitcast <2 x i64>* %216 to %struct.__loadu_si128*, !dbg !244
  %218 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %217, i32 0, i32 0, !dbg !244
  %219 = load <2 x i64>, <2 x i64>* %218, align 1, !dbg !244
  call void @llvm.dbg.value(metadata <2 x i64> %219, metadata !245, metadata !DIExpression()), !dbg !246
  %220 = getelementptr inbounds i8, i8* %.07, i64 16, !dbg !247
  %221 = bitcast i8* %220 to <2 x i64>*, !dbg !248
  %222 = bitcast <2 x i64>* %221 to %struct.__loadu_si128*, !dbg !249
  %223 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %222, i32 0, i32 0, !dbg !249
  %224 = load <2 x i64>, <2 x i64>* %223, align 1, !dbg !249
  call void @llvm.dbg.value(metadata <2 x i64> %224, metadata !250, metadata !DIExpression()), !dbg !246
  %225 = getelementptr inbounds i8, i8* %.07, i64 32, !dbg !251
  %226 = bitcast i8* %225 to <2 x i64>*, !dbg !252
  %227 = bitcast <2 x i64>* %226 to %struct.__loadu_si128*, !dbg !253
  %228 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %227, i32 0, i32 0, !dbg !253
  %229 = load <2 x i64>, <2 x i64>* %228, align 1, !dbg !253
  call void @llvm.dbg.value(metadata <2 x i64> %229, metadata !254, metadata !DIExpression()), !dbg !246
  %230 = getelementptr inbounds i8, i8* %.07, i64 48, !dbg !255
  %231 = bitcast i8* %230 to <2 x i64>*, !dbg !256
  %232 = bitcast <2 x i64>* %231 to %struct.__loadu_si128*, !dbg !257
  %233 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %232, i32 0, i32 0, !dbg !257
  %234 = load <2 x i64>, <2 x i64>* %233, align 1, !dbg !257
  call void @llvm.dbg.value(metadata <2 x i64> %234, metadata !258, metadata !DIExpression()), !dbg !246
  %235 = xor <2 x i64> %219, %161, !dbg !259
  call void @llvm.dbg.value(metadata <2 x i64> %235, metadata !245, metadata !DIExpression()), !dbg !246
  %236 = xor <2 x i64> %224, %165, !dbg !260
  call void @llvm.dbg.value(metadata <2 x i64> %236, metadata !250, metadata !DIExpression()), !dbg !246
  %237 = xor <2 x i64> %229, %169, !dbg !261
  call void @llvm.dbg.value(metadata <2 x i64> %237, metadata !254, metadata !DIExpression()), !dbg !246
  %238 = xor <2 x i64> %234, %173, !dbg !262
  call void @llvm.dbg.value(metadata <2 x i64> %238, metadata !258, metadata !DIExpression()), !dbg !246
  %239 = getelementptr inbounds i8, i8* %.07, i64 0, !dbg !263
  %240 = bitcast i8* %239 to <2 x i64>*, !dbg !264
  %241 = bitcast <2 x i64>* %240 to %struct.__loadu_si128*, !dbg !265
  %242 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %241, i32 0, i32 0, !dbg !265
  store <2 x i64> %235, <2 x i64>* %242, align 1, !dbg !265
  %243 = getelementptr inbounds i8, i8* %.07, i64 16, !dbg !266
  %244 = bitcast i8* %243 to <2 x i64>*, !dbg !267
  %245 = bitcast <2 x i64>* %244 to %struct.__loadu_si128*, !dbg !268
  %246 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %245, i32 0, i32 0, !dbg !268
  store <2 x i64> %236, <2 x i64>* %246, align 1, !dbg !268
  %247 = getelementptr inbounds i8, i8* %.07, i64 32, !dbg !269
  %248 = bitcast i8* %247 to <2 x i64>*, !dbg !270
  %249 = bitcast <2 x i64>* %248 to %struct.__loadu_si128*, !dbg !271
  %250 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %249, i32 0, i32 0, !dbg !271
  store <2 x i64> %237, <2 x i64>* %250, align 1, !dbg !271
  %251 = getelementptr inbounds i8, i8* %.07, i64 48, !dbg !272
  %252 = bitcast i8* %251 to <2 x i64>*, !dbg !273
  %253 = bitcast <2 x i64>* %252 to %struct.__loadu_si128*, !dbg !274
  %254 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %253, i32 0, i32 0, !dbg !274
  store <2 x i64> %238, <2 x i64>* %254, align 1, !dbg !274
  %255 = getelementptr inbounds i8, i8* %.07, i64 64, !dbg !275
  call void @llvm.dbg.value(metadata i8* %255, metadata !104, metadata !DIExpression()), !dbg !96
  %256 = sub i64 %.08, 64, !dbg !276
  call void @llvm.dbg.value(metadata i64 %256, metadata !100, metadata !DIExpression()), !dbg !96
  br label %257

257:                                              ; preds = %214
  br label %35, !dbg !125, !llvm.loop !277

258:                                              ; preds = %213, %35
  %.1 = phi <2 x i64> [ %177, %213 ], [ %.06, %35 ], !dbg !96
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !120, metadata !DIExpression()), !dbg !96
  %259 = bitcast <2 x i64> %.1 to <8 x i16>, !dbg !279
  %260 = extractelement <8 x i16> %259, i64 0, !dbg !279
  %261 = zext i16 %260 to i32, !dbg !279
  %262 = bitcast <2 x i64> %.1 to <8 x i16>, !dbg !280
  %263 = extractelement <8 x i16> %262, i64 1, !dbg !280
  %264 = zext i16 %263 to i32, !dbg !280
  %265 = shl i32 %264, 16, !dbg !281
  %266 = or i32 %261, %265, !dbg !282
  ret i32 %266, !dbg !283
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readnone
declare <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32>, i32) #4

; Function Attrs: nounwind readnone
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_poly1305_ctmul_run(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3, i8* noalias %4, i64 %5, i8* noalias %6, i32 (i8*, i8*, i32, i8*, i64)* noalias %7, i32 %8) #0 !dbg !284 {
  %10 = alloca [32 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca [5 x i32], align 16
  %13 = alloca [5 x i32], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i8* %1, metadata !289, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i8* %2, metadata !290, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i64 %3, metadata !291, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i8* %4, metadata !292, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i64 %5, metadata !293, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i8* %6, metadata !294, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !295, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 %8, metadata !296, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata [32 x i8]* %10, metadata !297, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata [16 x i8]* %11, metadata !302, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata [5 x i32]* %12, metadata !307, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata [5 x i32]* %13, metadata !312, metadata !DIExpression()), !dbg !313
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !314
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false), !dbg !314
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !315
  %16 = call i32 %7(i8* %0, i8* %1, i32 0, i8* %15, i64 32), !dbg !316
  %17 = icmp ne i32 %8, 0, !dbg !317
  br i1 %17, label %18, label %20, !dbg !319

18:                                               ; preds = %9
  %19 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !320
  br label %20, !dbg !322

20:                                               ; preds = %18, %9
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !323
  %22 = call i32 @br_dec32le(i8* %21), !dbg !324
  %23 = and i32 %22, 67108863, !dbg !325
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !326
  store i32 %23, i32* %24, align 16, !dbg !327
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !328
  %26 = getelementptr inbounds i8, i8* %25, i64 3, !dbg !329
  %27 = call i32 @br_dec32le(i8* %26), !dbg !330
  %28 = lshr i32 %27, 2, !dbg !331
  %29 = and i32 %28, 67108611, !dbg !332
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 1, !dbg !333
  store i32 %29, i32* %30, align 4, !dbg !334
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !335
  %32 = getelementptr inbounds i8, i8* %31, i64 6, !dbg !336
  %33 = call i32 @br_dec32le(i8* %32), !dbg !337
  %34 = lshr i32 %33, 4, !dbg !338
  %35 = and i32 %34, 67092735, !dbg !339
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 2, !dbg !340
  store i32 %35, i32* %36, align 8, !dbg !341
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !342
  %38 = getelementptr inbounds i8, i8* %37, i64 9, !dbg !343
  %39 = call i32 @br_dec32le(i8* %38), !dbg !344
  %40 = lshr i32 %39, 6, !dbg !345
  %41 = and i32 %40, 66076671, !dbg !346
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 3, !dbg !347
  store i32 %41, i32* %42, align 4, !dbg !348
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !349
  %44 = getelementptr inbounds i8, i8* %43, i64 12, !dbg !350
  %45 = call i32 @br_dec32le(i8* %44), !dbg !351
  %46 = lshr i32 %45, 8, !dbg !352
  %47 = and i32 %46, 1048575, !dbg !353
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 4, !dbg !354
  store i32 %47, i32* %48, align 16, !dbg !355
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !356
  %50 = bitcast i32* %49 to i8*, !dbg !356
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 20, i1 false), !dbg !356
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !357
  call void @br_enc64le(i8* %51, i64 %5), !dbg !358
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !359
  %53 = getelementptr inbounds i8, i8* %52, i64 8, !dbg !360
  call void @br_enc64le(i8* %53, i64 %3), !dbg !361
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !362
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !363
  call void @poly1305_inner(i32* %54, i32* %55, i8* %4, i64 %5), !dbg !364
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !365
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !366
  call void @poly1305_inner(i32* %56, i32* %57, i8* %2, i64 %3), !dbg !367
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !368
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !369
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !370
  call void @poly1305_inner(i32* %58, i32* %59, i8* %60, i64 16), !dbg !371
  call void @llvm.dbg.value(metadata i32 0, metadata !372, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 1, metadata !373, metadata !DIExpression()), !dbg !288
  br label %61, !dbg !374

61:                                               ; preds = %82, %20
  %.02 = phi i32 [ 0, %20 ], [ %77, %82 ], !dbg !288
  %.0 = phi i32 [ 1, %20 ], [ %83, %82 ], !dbg !376
  call void @llvm.dbg.value(metadata i32 %.0, metadata !373, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 %.02, metadata !372, metadata !DIExpression()), !dbg !288
  %62 = icmp sle i32 %.0, 6, !dbg !377
  br i1 %62, label %63, label %84, !dbg !379

63:                                               ; preds = %61
  %64 = icmp sge i32 %.0, 5, !dbg !380
  br i1 %64, label %65, label %67, !dbg !382

65:                                               ; preds = %63
  %66 = sub nsw i32 %.0, 5, !dbg !383
  br label %68, !dbg !382

67:                                               ; preds = %63
  br label %68, !dbg !382

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ %.0, %67 ], !dbg !382
  call void @llvm.dbg.value(metadata i32 %69, metadata !384, metadata !DIExpression()), !dbg !385
  %70 = sext i32 %69 to i64, !dbg !386
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %70, !dbg !386
  %72 = load i32, i32* %71, align 4, !dbg !387
  %73 = add i32 %72, %.02, !dbg !387
  store i32 %73, i32* %71, align 4, !dbg !387
  %74 = sext i32 %69 to i64, !dbg !388
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %74, !dbg !388
  %76 = load i32, i32* %75, align 4, !dbg !388
  %77 = lshr i32 %76, 26, !dbg !389
  call void @llvm.dbg.value(metadata i32 %77, metadata !372, metadata !DIExpression()), !dbg !288
  %78 = sext i32 %69 to i64, !dbg !390
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %78, !dbg !390
  %80 = load i32, i32* %79, align 4, !dbg !391
  %81 = and i32 %80, 67108863, !dbg !391
  store i32 %81, i32* %79, align 4, !dbg !391
  br label %82, !dbg !392

82:                                               ; preds = %68
  %83 = add nsw i32 %.0, 1, !dbg !393
  call void @llvm.dbg.value(metadata i32 %83, metadata !373, metadata !DIExpression()), !dbg !288
  br label %61, !dbg !394, !llvm.loop !395

84:                                               ; preds = %61
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !397
  %86 = load i32, i32* %85, align 16, !dbg !397
  %87 = call i32 @GT(i32 %86, i32 67108858), !dbg !398
  call void @llvm.dbg.value(metadata i32 %87, metadata !399, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 1, metadata !373, metadata !DIExpression()), !dbg !288
  br label %88, !dbg !400

88:                                               ; preds = %96, %84
  %.01 = phi i32 [ %87, %84 ], [ %95, %96 ], !dbg !288
  %.1 = phi i32 [ 1, %84 ], [ %97, %96 ], !dbg !402
  call void @llvm.dbg.value(metadata i32 %.1, metadata !373, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 %.01, metadata !399, metadata !DIExpression()), !dbg !288
  %89 = icmp slt i32 %.1, 5, !dbg !403
  br i1 %89, label %90, label %98, !dbg !405

90:                                               ; preds = %88
  %91 = sext i32 %.1 to i64, !dbg !406
  %92 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %91, !dbg !406
  %93 = load i32, i32* %92, align 4, !dbg !406
  %94 = call i32 @EQ(i32 %93, i32 67108863), !dbg !408
  %95 = and i32 %.01, %94, !dbg !409
  call void @llvm.dbg.value(metadata i32 %95, metadata !399, metadata !DIExpression()), !dbg !288
  br label %96, !dbg !410

96:                                               ; preds = %90
  %97 = add nsw i32 %.1, 1, !dbg !411
  call void @llvm.dbg.value(metadata i32 %97, metadata !373, metadata !DIExpression()), !dbg !288
  br label %88, !dbg !412, !llvm.loop !413

98:                                               ; preds = %88
  call void @llvm.dbg.value(metadata i32 5, metadata !372, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !288
  br label %99, !dbg !415

99:                                               ; preds = %114, %98
  %.13 = phi i32 [ 5, %98 ], [ %106, %114 ], !dbg !288
  %.2 = phi i32 [ 0, %98 ], [ %115, %114 ], !dbg !417
  call void @llvm.dbg.value(metadata i32 %.2, metadata !373, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 %.13, metadata !372, metadata !DIExpression()), !dbg !288
  %100 = icmp slt i32 %.2, 5, !dbg !418
  br i1 %100, label %101, label %116, !dbg !420

101:                                              ; preds = %99
  %102 = sext i32 %.2 to i64, !dbg !421
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %102, !dbg !421
  %104 = load i32, i32* %103, align 4, !dbg !421
  %105 = add i32 %104, %.13, !dbg !423
  call void @llvm.dbg.value(metadata i32 %105, metadata !424, metadata !DIExpression()), !dbg !425
  %106 = lshr i32 %105, 26, !dbg !426
  call void @llvm.dbg.value(metadata i32 %106, metadata !372, metadata !DIExpression()), !dbg !288
  %107 = and i32 %105, 67108863, !dbg !427
  call void @llvm.dbg.value(metadata i32 %107, metadata !424, metadata !DIExpression()), !dbg !425
  %108 = sext i32 %.2 to i64, !dbg !428
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %108, !dbg !428
  %110 = load i32, i32* %109, align 4, !dbg !428
  %111 = call i32 @MUX(i32 %.01, i32 %107, i32 %110), !dbg !429
  %112 = sext i32 %.2 to i64, !dbg !430
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %112, !dbg !430
  store i32 %111, i32* %113, align 4, !dbg !431
  br label %114, !dbg !432

114:                                              ; preds = %101
  %115 = add nsw i32 %.2, 1, !dbg !433
  call void @llvm.dbg.value(metadata i32 %115, metadata !373, metadata !DIExpression()), !dbg !288
  br label %99, !dbg !434, !llvm.loop !435

116:                                              ; preds = %99
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !437
  %118 = load i32, i32* %117, align 16, !dbg !437
  %119 = zext i32 %118 to i64, !dbg !438
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 1, !dbg !439
  %121 = load i32, i32* %120, align 4, !dbg !439
  %122 = zext i32 %121 to i64, !dbg !440
  %123 = shl i64 %122, 26, !dbg !441
  %124 = add i64 %119, %123, !dbg !442
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !443
  %126 = getelementptr inbounds i8, i8* %125, i64 16, !dbg !444
  %127 = call i32 @br_dec32le(i8* %126), !dbg !445
  %128 = zext i32 %127 to i64, !dbg !445
  %129 = add i64 %124, %128, !dbg !446
  call void @llvm.dbg.value(metadata i64 %129, metadata !447, metadata !DIExpression()), !dbg !288
  %130 = trunc i64 %129 to i32, !dbg !448
  call void @br_enc32le(i8* %6, i32 %130), !dbg !449
  %131 = lshr i64 %129, 32, !dbg !450
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 2, !dbg !451
  %133 = load i32, i32* %132, align 8, !dbg !451
  %134 = zext i32 %133 to i64, !dbg !452
  %135 = shl i64 %134, 20, !dbg !453
  %136 = add i64 %131, %135, !dbg !454
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !455
  %138 = getelementptr inbounds i8, i8* %137, i64 20, !dbg !456
  %139 = call i32 @br_dec32le(i8* %138), !dbg !457
  %140 = zext i32 %139 to i64, !dbg !457
  %141 = add i64 %136, %140, !dbg !458
  call void @llvm.dbg.value(metadata i64 %141, metadata !447, metadata !DIExpression()), !dbg !288
  %142 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !459
  %143 = trunc i64 %141 to i32, !dbg !460
  call void @br_enc32le(i8* %142, i32 %143), !dbg !461
  %144 = lshr i64 %141, 32, !dbg !462
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3, !dbg !463
  %146 = load i32, i32* %145, align 4, !dbg !463
  %147 = zext i32 %146 to i64, !dbg !464
  %148 = shl i64 %147, 14, !dbg !465
  %149 = add i64 %144, %148, !dbg !466
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !467
  %151 = getelementptr inbounds i8, i8* %150, i64 24, !dbg !468
  %152 = call i32 @br_dec32le(i8* %151), !dbg !469
  %153 = zext i32 %152 to i64, !dbg !469
  %154 = add i64 %149, %153, !dbg !470
  call void @llvm.dbg.value(metadata i64 %154, metadata !447, metadata !DIExpression()), !dbg !288
  %155 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !471
  %156 = trunc i64 %154 to i32, !dbg !472
  call void @br_enc32le(i8* %155, i32 %156), !dbg !473
  %157 = lshr i64 %154, 32, !dbg !474
  %158 = trunc i64 %157 to i32, !dbg !475
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 4, !dbg !476
  %160 = load i32, i32* %159, align 16, !dbg !476
  %161 = shl i32 %160, 8, !dbg !477
  %162 = add i32 %158, %161, !dbg !478
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !479
  %164 = getelementptr inbounds i8, i8* %163, i64 28, !dbg !480
  %165 = call i32 @br_dec32le(i8* %164), !dbg !481
  %166 = add i32 %162, %165, !dbg !482
  call void @llvm.dbg.value(metadata i32 %166, metadata !483, metadata !DIExpression()), !dbg !288
  %167 = getelementptr inbounds i8, i8* %6, i64 12, !dbg !484
  call void @br_enc32le(i8* %167, i32 %166), !dbg !485
  %168 = icmp ne i32 %8, 0, !dbg !486
  br i1 %168, label %171, label %169, !dbg !488

169:                                              ; preds = %116
  %170 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !489
  br label %171, !dbg !491

171:                                              ; preds = %169, %116
  ret void, !dbg !492
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* noalias %0) #0 !dbg !493 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !496, metadata !DIExpression()), !dbg !497
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !498
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !499
  %4 = load i32, i32* %3, align 4, !dbg !499
  ret i32 %4, !dbg !500
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64le(i8* noalias %0, i64 %1) #0 !dbg !501 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !504, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i64 %1, metadata !506, metadata !DIExpression()), !dbg !505
  %3 = bitcast i8* %0 to %union.br_union_u64*, !dbg !507
  %4 = bitcast %union.br_union_u64* %3 to i64*, !dbg !508
  store i64 %1, i64* %4, align 8, !dbg !509
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner(i32* noalias %0, i32* noalias %1, i8* noalias %2, i64 %3) #0 !dbg !511 {
  %5 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i32* %1, metadata !518, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i8* %2, metadata !519, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i64 %3, metadata !520, metadata !DIExpression()), !dbg !517
  %6 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !521
  %7 = load i32, i32* %6, align 4, !dbg !521
  call void @llvm.dbg.value(metadata i32 %7, metadata !522, metadata !DIExpression()), !dbg !517
  %8 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !523
  %9 = load i32, i32* %8, align 4, !dbg !523
  call void @llvm.dbg.value(metadata i32 %9, metadata !524, metadata !DIExpression()), !dbg !517
  %10 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !525
  %11 = load i32, i32* %10, align 4, !dbg !525
  call void @llvm.dbg.value(metadata i32 %11, metadata !526, metadata !DIExpression()), !dbg !517
  %12 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !527
  %13 = load i32, i32* %12, align 4, !dbg !527
  call void @llvm.dbg.value(metadata i32 %13, metadata !528, metadata !DIExpression()), !dbg !517
  %14 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !529
  %15 = load i32, i32* %14, align 4, !dbg !529
  call void @llvm.dbg.value(metadata i32 %15, metadata !530, metadata !DIExpression()), !dbg !517
  %16 = mul i32 %9, 5, !dbg !531
  call void @llvm.dbg.value(metadata i32 %16, metadata !532, metadata !DIExpression()), !dbg !517
  %17 = mul i32 %11, 5, !dbg !533
  call void @llvm.dbg.value(metadata i32 %17, metadata !534, metadata !DIExpression()), !dbg !517
  %18 = mul i32 %13, 5, !dbg !535
  call void @llvm.dbg.value(metadata i32 %18, metadata !536, metadata !DIExpression()), !dbg !517
  %19 = mul i32 %15, 5, !dbg !537
  call void @llvm.dbg.value(metadata i32 %19, metadata !538, metadata !DIExpression()), !dbg !517
  %20 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !539
  %21 = load i32, i32* %20, align 4, !dbg !539
  call void @llvm.dbg.value(metadata i32 %21, metadata !540, metadata !DIExpression()), !dbg !517
  %22 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !541
  %23 = load i32, i32* %22, align 4, !dbg !541
  call void @llvm.dbg.value(metadata i32 %23, metadata !542, metadata !DIExpression()), !dbg !517
  %24 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !543
  %25 = load i32, i32* %24, align 4, !dbg !543
  call void @llvm.dbg.value(metadata i32 %25, metadata !544, metadata !DIExpression()), !dbg !517
  %26 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !545
  %27 = load i32, i32* %26, align 4, !dbg !545
  call void @llvm.dbg.value(metadata i32 %27, metadata !546, metadata !DIExpression()), !dbg !517
  %28 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !547
  %29 = load i32, i32* %28, align 4, !dbg !547
  call void @llvm.dbg.value(metadata i32 %29, metadata !548, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i8* %2, metadata !549, metadata !DIExpression()), !dbg !517
  br label %30, !dbg !550

30:                                               ; preds = %38, %4
  %.07 = phi i32 [ %23, %4 ], [ %180, %38 ], !dbg !517
  %.06 = phi i32 [ %21, %4 ], [ %181, %38 ], !dbg !517
  %.04 = phi i8* [ %2, %4 ], [ %182, %38 ], !dbg !517
  %.03 = phi i64 [ %3, %4 ], [ %183, %38 ]
  %.02 = phi i32 [ %25, %4 ], [ %167, %38 ], !dbg !517
  %.01 = phi i32 [ %27, %4 ], [ %171, %38 ], !dbg !517
  %.0 = phi i32 [ %29, %4 ], [ %175, %38 ], !dbg !517
  call void @llvm.dbg.value(metadata i32 %.0, metadata !548, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i32 %.01, metadata !546, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i32 %.02, metadata !544, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i64 %.03, metadata !520, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i8* %.04, metadata !549, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i32 %.06, metadata !540, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i32 %.07, metadata !542, metadata !DIExpression()), !dbg !517
  %31 = icmp ugt i64 %.03, 0, !dbg !551
  br i1 %31, label %32, label %184, !dbg !550

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !552, metadata !DIExpression()), !dbg !554
  %33 = icmp ult i64 %.03, 16, !dbg !555
  br i1 %33, label %34, label %38, !dbg !557

34:                                               ; preds = %32
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !558
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 16, i1 false), !dbg !558
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 1 %.04, i64 %.03, i1 false), !dbg !560
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !561
  call void @llvm.dbg.value(metadata i8* %37, metadata !549, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i64 16, metadata !520, metadata !DIExpression()), !dbg !517
  br label %38, !dbg !562

38:                                               ; preds = %34, %32
  %.15 = phi i8* [ %37, %34 ], [ %.04, %32 ], !dbg !517
  %.1 = phi i64 [ 16, %34 ], [ %.03, %32 ]
  call void @llvm.dbg.value(metadata i64 %.1, metadata !520, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i8* %.15, metadata !549, metadata !DIExpression()), !dbg !517
  %39 = call i32 @br_dec32le(i8* %.15), !dbg !563
  %40 = and i32 %39, 67108863, !dbg !564
  %41 = add i32 %.06, %40, !dbg !565
  call void @llvm.dbg.value(metadata i32 %41, metadata !540, metadata !DIExpression()), !dbg !517
  %42 = getelementptr inbounds i8, i8* %.15, i64 3, !dbg !566
  %43 = call i32 @br_dec32le(i8* %42), !dbg !567
  %44 = lshr i32 %43, 2, !dbg !568
  %45 = and i32 %44, 67108863, !dbg !569
  %46 = add i32 %.07, %45, !dbg !570
  call void @llvm.dbg.value(metadata i32 %46, metadata !542, metadata !DIExpression()), !dbg !517
  %47 = getelementptr inbounds i8, i8* %.15, i64 6, !dbg !571
  %48 = call i32 @br_dec32le(i8* %47), !dbg !572
  %49 = lshr i32 %48, 4, !dbg !573
  %50 = and i32 %49, 67108863, !dbg !574
  %51 = add i32 %.02, %50, !dbg !575
  call void @llvm.dbg.value(metadata i32 %51, metadata !544, metadata !DIExpression()), !dbg !517
  %52 = getelementptr inbounds i8, i8* %.15, i64 9, !dbg !576
  %53 = call i32 @br_dec32le(i8* %52), !dbg !577
  %54 = lshr i32 %53, 6, !dbg !578
  %55 = and i32 %54, 67108863, !dbg !579
  %56 = add i32 %.01, %55, !dbg !580
  call void @llvm.dbg.value(metadata i32 %56, metadata !546, metadata !DIExpression()), !dbg !517
  %57 = getelementptr inbounds i8, i8* %.15, i64 12, !dbg !581
  %58 = call i32 @br_dec32le(i8* %57), !dbg !582
  %59 = lshr i32 %58, 8, !dbg !583
  %60 = or i32 %59, 16777216, !dbg !584
  %61 = add i32 %.0, %60, !dbg !585
  call void @llvm.dbg.value(metadata i32 %61, metadata !548, metadata !DIExpression()), !dbg !517
  %62 = zext i32 %41 to i64, !dbg !586
  %63 = zext i32 %7 to i64, !dbg !586
  %64 = mul i64 %62, %63, !dbg !586
  %65 = zext i32 %46 to i64, !dbg !587
  %66 = zext i32 %19 to i64, !dbg !587
  %67 = mul i64 %65, %66, !dbg !587
  %68 = add i64 %64, %67, !dbg !588
  %69 = zext i32 %51 to i64, !dbg !589
  %70 = zext i32 %18 to i64, !dbg !589
  %71 = mul i64 %69, %70, !dbg !589
  %72 = add i64 %68, %71, !dbg !590
  %73 = zext i32 %56 to i64, !dbg !591
  %74 = zext i32 %17 to i64, !dbg !591
  %75 = mul i64 %73, %74, !dbg !591
  %76 = add i64 %72, %75, !dbg !592
  %77 = zext i32 %61 to i64, !dbg !593
  %78 = zext i32 %16 to i64, !dbg !593
  %79 = mul i64 %77, %78, !dbg !593
  %80 = add i64 %76, %79, !dbg !594
  call void @llvm.dbg.value(metadata i64 %80, metadata !595, metadata !DIExpression()), !dbg !596
  %81 = zext i32 %41 to i64, !dbg !597
  %82 = zext i32 %9 to i64, !dbg !597
  %83 = mul i64 %81, %82, !dbg !597
  %84 = zext i32 %46 to i64, !dbg !598
  %85 = zext i32 %7 to i64, !dbg !598
  %86 = mul i64 %84, %85, !dbg !598
  %87 = add i64 %83, %86, !dbg !599
  %88 = zext i32 %51 to i64, !dbg !600
  %89 = zext i32 %19 to i64, !dbg !600
  %90 = mul i64 %88, %89, !dbg !600
  %91 = add i64 %87, %90, !dbg !601
  %92 = zext i32 %56 to i64, !dbg !602
  %93 = zext i32 %18 to i64, !dbg !602
  %94 = mul i64 %92, %93, !dbg !602
  %95 = add i64 %91, %94, !dbg !603
  %96 = zext i32 %61 to i64, !dbg !604
  %97 = zext i32 %17 to i64, !dbg !604
  %98 = mul i64 %96, %97, !dbg !604
  %99 = add i64 %95, %98, !dbg !605
  call void @llvm.dbg.value(metadata i64 %99, metadata !606, metadata !DIExpression()), !dbg !596
  %100 = zext i32 %41 to i64, !dbg !607
  %101 = zext i32 %11 to i64, !dbg !607
  %102 = mul i64 %100, %101, !dbg !607
  %103 = zext i32 %46 to i64, !dbg !608
  %104 = zext i32 %9 to i64, !dbg !608
  %105 = mul i64 %103, %104, !dbg !608
  %106 = add i64 %102, %105, !dbg !609
  %107 = zext i32 %51 to i64, !dbg !610
  %108 = zext i32 %7 to i64, !dbg !610
  %109 = mul i64 %107, %108, !dbg !610
  %110 = add i64 %106, %109, !dbg !611
  %111 = zext i32 %56 to i64, !dbg !612
  %112 = zext i32 %19 to i64, !dbg !612
  %113 = mul i64 %111, %112, !dbg !612
  %114 = add i64 %110, %113, !dbg !613
  %115 = zext i32 %61 to i64, !dbg !614
  %116 = zext i32 %18 to i64, !dbg !614
  %117 = mul i64 %115, %116, !dbg !614
  %118 = add i64 %114, %117, !dbg !615
  call void @llvm.dbg.value(metadata i64 %118, metadata !616, metadata !DIExpression()), !dbg !596
  %119 = zext i32 %41 to i64, !dbg !617
  %120 = zext i32 %13 to i64, !dbg !617
  %121 = mul i64 %119, %120, !dbg !617
  %122 = zext i32 %46 to i64, !dbg !618
  %123 = zext i32 %11 to i64, !dbg !618
  %124 = mul i64 %122, %123, !dbg !618
  %125 = add i64 %121, %124, !dbg !619
  %126 = zext i32 %51 to i64, !dbg !620
  %127 = zext i32 %9 to i64, !dbg !620
  %128 = mul i64 %126, %127, !dbg !620
  %129 = add i64 %125, %128, !dbg !621
  %130 = zext i32 %56 to i64, !dbg !622
  %131 = zext i32 %7 to i64, !dbg !622
  %132 = mul i64 %130, %131, !dbg !622
  %133 = add i64 %129, %132, !dbg !623
  %134 = zext i32 %61 to i64, !dbg !624
  %135 = zext i32 %19 to i64, !dbg !624
  %136 = mul i64 %134, %135, !dbg !624
  %137 = add i64 %133, %136, !dbg !625
  call void @llvm.dbg.value(metadata i64 %137, metadata !626, metadata !DIExpression()), !dbg !596
  %138 = zext i32 %41 to i64, !dbg !627
  %139 = zext i32 %15 to i64, !dbg !627
  %140 = mul i64 %138, %139, !dbg !627
  %141 = zext i32 %46 to i64, !dbg !628
  %142 = zext i32 %13 to i64, !dbg !628
  %143 = mul i64 %141, %142, !dbg !628
  %144 = add i64 %140, %143, !dbg !629
  %145 = zext i32 %51 to i64, !dbg !630
  %146 = zext i32 %11 to i64, !dbg !630
  %147 = mul i64 %145, %146, !dbg !630
  %148 = add i64 %144, %147, !dbg !631
  %149 = zext i32 %56 to i64, !dbg !632
  %150 = zext i32 %9 to i64, !dbg !632
  %151 = mul i64 %149, %150, !dbg !632
  %152 = add i64 %148, %151, !dbg !633
  %153 = zext i32 %61 to i64, !dbg !634
  %154 = zext i32 %7 to i64, !dbg !634
  %155 = mul i64 %153, %154, !dbg !634
  %156 = add i64 %152, %155, !dbg !635
  call void @llvm.dbg.value(metadata i64 %156, metadata !636, metadata !DIExpression()), !dbg !596
  %157 = lshr i64 %80, 26, !dbg !637
  call void @llvm.dbg.value(metadata i64 %157, metadata !638, metadata !DIExpression()), !dbg !596
  %158 = trunc i64 %80 to i32, !dbg !639
  %159 = and i32 %158, 67108863, !dbg !640
  call void @llvm.dbg.value(metadata i32 %159, metadata !540, metadata !DIExpression()), !dbg !517
  %160 = add i64 %99, %157, !dbg !641
  call void @llvm.dbg.value(metadata i64 %160, metadata !606, metadata !DIExpression()), !dbg !596
  %161 = lshr i64 %160, 26, !dbg !642
  call void @llvm.dbg.value(metadata i64 %161, metadata !638, metadata !DIExpression()), !dbg !596
  %162 = trunc i64 %160 to i32, !dbg !643
  %163 = and i32 %162, 67108863, !dbg !644
  call void @llvm.dbg.value(metadata i32 %163, metadata !542, metadata !DIExpression()), !dbg !517
  %164 = add i64 %118, %161, !dbg !645
  call void @llvm.dbg.value(metadata i64 %164, metadata !616, metadata !DIExpression()), !dbg !596
  %165 = lshr i64 %164, 26, !dbg !646
  call void @llvm.dbg.value(metadata i64 %165, metadata !638, metadata !DIExpression()), !dbg !596
  %166 = trunc i64 %164 to i32, !dbg !647
  %167 = and i32 %166, 67108863, !dbg !648
  call void @llvm.dbg.value(metadata i32 %167, metadata !544, metadata !DIExpression()), !dbg !517
  %168 = add i64 %137, %165, !dbg !649
  call void @llvm.dbg.value(metadata i64 %168, metadata !626, metadata !DIExpression()), !dbg !596
  %169 = lshr i64 %168, 26, !dbg !650
  call void @llvm.dbg.value(metadata i64 %169, metadata !638, metadata !DIExpression()), !dbg !596
  %170 = trunc i64 %168 to i32, !dbg !651
  %171 = and i32 %170, 67108863, !dbg !652
  call void @llvm.dbg.value(metadata i32 %171, metadata !546, metadata !DIExpression()), !dbg !517
  %172 = add i64 %156, %169, !dbg !653
  call void @llvm.dbg.value(metadata i64 %172, metadata !636, metadata !DIExpression()), !dbg !596
  %173 = lshr i64 %172, 26, !dbg !654
  call void @llvm.dbg.value(metadata i64 %173, metadata !638, metadata !DIExpression()), !dbg !596
  %174 = trunc i64 %172 to i32, !dbg !655
  %175 = and i32 %174, 67108863, !dbg !656
  call void @llvm.dbg.value(metadata i32 %175, metadata !548, metadata !DIExpression()), !dbg !517
  %176 = trunc i64 %173 to i32, !dbg !657
  %177 = mul i32 %176, 5, !dbg !658
  %178 = add i32 %159, %177, !dbg !659
  call void @llvm.dbg.value(metadata i32 %178, metadata !540, metadata !DIExpression()), !dbg !517
  %179 = lshr i32 %178, 26, !dbg !660
  %180 = add i32 %163, %179, !dbg !661
  call void @llvm.dbg.value(metadata i32 %180, metadata !542, metadata !DIExpression()), !dbg !517
  %181 = and i32 %178, 67108863, !dbg !662
  call void @llvm.dbg.value(metadata i32 %181, metadata !540, metadata !DIExpression()), !dbg !517
  %182 = getelementptr inbounds i8, i8* %.15, i64 16, !dbg !663
  call void @llvm.dbg.value(metadata i8* %182, metadata !549, metadata !DIExpression()), !dbg !517
  %183 = sub i64 %.1, 16, !dbg !664
  call void @llvm.dbg.value(metadata i64 %183, metadata !520, metadata !DIExpression()), !dbg !517
  br label %30, !dbg !550, !llvm.loop !665

184:                                              ; preds = %30
  %185 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !667
  store i32 %.06, i32* %185, align 4, !dbg !668
  %186 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !669
  store i32 %.07, i32* %186, align 4, !dbg !670
  %187 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !671
  store i32 %.02, i32* %187, align 4, !dbg !672
  %188 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !673
  store i32 %.01, i32* %188, align 4, !dbg !674
  %189 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !675
  store i32 %.0, i32* %189, align 4, !dbg !676
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i32 %1, metadata !683, metadata !DIExpression()), !dbg !682
  %3 = sub i32 %1, %0, !dbg !684
  call void @llvm.dbg.value(metadata i32 %3, metadata !685, metadata !DIExpression()), !dbg !682
  %4 = xor i32 %0, %1, !dbg !686
  %5 = xor i32 %0, %3, !dbg !687
  %6 = and i32 %4, %5, !dbg !688
  %7 = xor i32 %3, %6, !dbg !689
  %8 = lshr i32 %7, 31, !dbg !690
  ret i32 %8, !dbg !691
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !693, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i32 %1, metadata !695, metadata !DIExpression()), !dbg !694
  %3 = xor i32 %0, %1, !dbg !696
  call void @llvm.dbg.value(metadata i32 %3, metadata !697, metadata !DIExpression()), !dbg !694
  %4 = sub i32 0, %3, !dbg !698
  %5 = or i32 %3, %4, !dbg !699
  %6 = lshr i32 %5, 31, !dbg !700
  %7 = call i32 @NOT(i32 %6), !dbg !701
  ret i32 %7, !dbg !702
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !706, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 %1, metadata !708, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 %2, metadata !709, metadata !DIExpression()), !dbg !707
  %4 = sub i32 0, %0, !dbg !710
  %5 = xor i32 %1, %2, !dbg !711
  %6 = and i32 %4, %5, !dbg !712
  %7 = xor i32 %2, %6, !dbg !713
  ret i32 %7, !dbg !714
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le(i8* noalias %0, i32 %1) #0 !dbg !715 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !718, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i32 %1, metadata !720, metadata !DIExpression()), !dbg !719
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !721
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !722
  store i32 %1, i32* %4, align 4, !dbg !723
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !725 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !728, metadata !DIExpression()), !dbg !729
  %2 = xor i32 %0, 1, !dbg !730
  ret i32 %2, !dbg !731
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3, i8* noalias %4, i64 %5, i8* noalias %6, i32 (i8*, i8*, i32, i8*, i64)* noalias %7, i32 %8) #0 !dbg !732 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !733, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i8* %1, metadata !735, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i8* %2, metadata !736, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i64 %3, metadata !737, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i8* %4, metadata !738, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i64 %5, metadata !739, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i8* %6, metadata !740, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !741, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i32 %8, metadata !742, metadata !DIExpression()), !dbg !734
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !743
  call void @public_in(%struct.smack_value* %10), !dbg !744
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !745
  call void @public_in(%struct.smack_value* %11), !dbg !746
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !747
  call void @public_in(%struct.smack_value* %12), !dbg !748
  %13 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !749
  call void @public_in(%struct.smack_value* %13), !dbg !750
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !751
  call void @public_in(%struct.smack_value* %14), !dbg !752
  %15 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %5), !dbg !753
  call void @public_in(%struct.smack_value* %15), !dbg !754
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !755
  call void @public_in(%struct.smack_value* %16), !dbg !756
  %17 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %8), !dbg !757
  call void @public_in(%struct.smack_value* %17), !dbg !758
  %18 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !759
  call void @public_in(%struct.smack_value* %18), !dbg !760
  %19 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !761
  call void @public_in(%struct.smack_value* %19), !dbg !762
  %20 = call %struct.smack_value* (i8*, i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, i32, ...)*)(i8* %4, i32 32), !dbg !763
  call void @public_in(%struct.smack_value* %20), !dbg !764
  call void @br_poly1305_ctmul_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_sse2_run, i32 %8), !dbg !765
  ret void, !dbg !766
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #6

declare dso_local void @public_in(%struct.smack_value*) #6

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper_t() #0 !dbg !767 {
  %1 = call i8* (...) @getvoid1(), !dbg !770
  call void @llvm.dbg.value(metadata i8* %1, metadata !771, metadata !DIExpression()), !dbg !772
  %2 = call i8* (...) @getvoid2(), !dbg !773
  call void @llvm.dbg.value(metadata i8* %2, metadata !774, metadata !DIExpression()), !dbg !772
  %3 = call i8* (...) @getvoid5(), !dbg !775
  call void @llvm.dbg.value(metadata i8* %3, metadata !776, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata i64 32, metadata !777, metadata !DIExpression()), !dbg !772
  %4 = call i8* (...) @getvoid3(), !dbg !778
  call void @llvm.dbg.value(metadata i8* %4, metadata !779, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata i64 32, metadata !780, metadata !DIExpression()), !dbg !772
  %5 = call i8* (...) @getvoid6(), !dbg !781
  call void @llvm.dbg.value(metadata i8* %5, metadata !782, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata i32 1, metadata !783, metadata !DIExpression()), !dbg !772
  call void @br_poly1305_ctmul_run(i8* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_sse2_run, i32 1), !dbg !784
  ret void, !dbg !785
}

declare dso_local i8* @getvoid1(...) #6

declare dso_local i8* @getvoid2(...) #6

declare dso_local i8* @getvoid5(...) #6

declare dso_local i8* @getvoid3(...) #6

declare dso_local i8* @getvoid6(...) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind readnone }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!17, !59, !82}
!llvm.ident = !{!84, !84, !84}
!llvm.module.flags = !{!85, !86, !87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CW", scope: !2, file: !3, line: 75, type: !57, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "br_chacha20_sse2_run", scope: !3, file: !3, line: 66, type: !4, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/chacha20_sse2.c", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20_sse2")
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
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !19, globals: !56, splitDebugInlining: false, nameTableKind: None)
!18 = !{}
!19 = !{!11, !20, !23, !29, !13, !6, !32, !35, !36, !41, !47, !49, !52}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i", file: !24, line: 16, baseType: !25, align: 128)
!24 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/emmintrin.h", directory: "")
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, flags: DIFlagVector, elements: !27)
!26 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!27 = !{!28}
!28 = !DISubrange(count: 2)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v4si", file: !30, line: 15, baseType: !31)
!30 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/xmmintrin.h", directory: "")
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, flags: DIFlagVector, elements: !33)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{!34}
!34 = !DISubrange(count: 4)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v8hi", file: !24, line: 24, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, flags: DIFlagVector, elements: !39)
!38 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!39 = !{!40}
!40 = !DISubrange(count: 8)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__loadu_si128", file: !24, line: 3550, size: 128, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !43, file: !24, line: 3551, baseType: !46, size: 128, align: 8)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i_u", file: !24, line: 19, baseType: !25, align: 8)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v4su", file: !30, line: 22, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, flags: DIFlagVector, elements: !33)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2du", file: !24, line: 28, baseType: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, flags: DIFlagVector, elements: !27)
!51 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__storeu_si128", file: !24, line: 4013, size: 128, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !53, file: !24, line: 4014, baseType: !46, size: 128, align: 8)
!56 = !{!0}
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 128, elements: !33)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !61, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "../BearSSL/src/symcipher/poly1305_ctmul.c", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20_sse2")
!61 = !{!62, !64, !6, !65, !74, !81}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !16)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u32", file: !68, line: 480, baseType: !69)
!68 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20_sse2")
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !68, line: 477, size: 32, elements: !70)
!70 = !{!71, !72}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !69, file: !68, line: 478, baseType: !6, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !69, file: !68, line: 479, baseType: !73, size: 32)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !33)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u64", file: !68, line: 485, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !68, line: 482, size: 64, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !76, file: !68, line: 483, baseType: !62, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !76, file: !68, line: 484, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !39)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "run.c", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20_sse2")
!84 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!85 = !{i32 7, !"Dwarf Version", i32 4}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{i32 1, !"wchar_size", i32 4}
!88 = distinct !DISubprogram(name: "br_chacha20_sse2_get", scope: !3, file: !3, line: 37, type: !89, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!89 = !DISubroutineType(types: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_chacha20_run", file: !92, line: 2442, baseType: !93)
!92 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20_sse2")
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!94 = !DILocation(line: 47, column: 2, scope: !88)
!95 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 66, type: !11)
!96 = !DILocation(line: 0, scope: !2)
!97 = !DILocalVariable(name: "iv", arg: 2, scope: !2, file: !3, line: 67, type: !11)
!98 = !DILocalVariable(name: "cc", arg: 3, scope: !2, file: !3, line: 67, type: !6)
!99 = !DILocalVariable(name: "data", arg: 4, scope: !2, file: !3, line: 67, type: !13)
!100 = !DILocalVariable(name: "len", arg: 5, scope: !2, file: !3, line: 67, type: !14)
!101 = !DILocalVariable(name: "ivtmp", scope: !2, file: !3, line: 70, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !33)
!103 = !DILocation(line: 70, column: 11, scope: !2)
!104 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 69, type: !64)
!105 = !DILocation(line: 80, column: 24, scope: !2)
!106 = !DILocation(line: 80, column: 8, scope: !2)
!107 = !DILocalVariable(name: "kw0", scope: !2, file: !3, line: 71, type: !23)
!108 = !DILocation(line: 81, column: 66, scope: !2)
!109 = !DILocation(line: 81, column: 24, scope: !2)
!110 = !DILocation(line: 81, column: 8, scope: !2)
!111 = !DILocalVariable(name: "kw1", scope: !2, file: !3, line: 71, type: !23)
!112 = !DILocation(line: 82, column: 2, scope: !2)
!113 = !DILocation(line: 82, column: 11, scope: !2)
!114 = !DILocation(line: 83, column: 9, scope: !2)
!115 = !DILocation(line: 83, column: 15, scope: !2)
!116 = !DILocation(line: 83, column: 2, scope: !2)
!117 = !DILocation(line: 84, column: 37, scope: !2)
!118 = !DILocation(line: 84, column: 23, scope: !2)
!119 = !DILocation(line: 84, column: 7, scope: !2)
!120 = !DILocalVariable(name: "iw", scope: !2, file: !3, line: 72, type: !23)
!121 = !DILocation(line: 85, column: 7, scope: !2)
!122 = !DILocalVariable(name: "cw", scope: !2, file: !3, line: 72, type: !23)
!123 = !DILocation(line: 86, column: 8, scope: !2)
!124 = !DILocalVariable(name: "one", scope: !2, file: !3, line: 73, type: !23)
!125 = !DILocation(line: 88, column: 2, scope: !2)
!126 = !DILocation(line: 88, column: 13, scope: !2)
!127 = !DILocalVariable(name: "s0", scope: !128, file: !3, line: 92, type: !23)
!128 = distinct !DILexicalBlock(scope: !2, file: !3, line: 88, column: 18)
!129 = !DILocation(line: 0, scope: !128)
!130 = !DILocalVariable(name: "s1", scope: !128, file: !3, line: 92, type: !23)
!131 = !DILocalVariable(name: "s2", scope: !128, file: !3, line: 92, type: !23)
!132 = !DILocalVariable(name: "s3", scope: !128, file: !3, line: 92, type: !23)
!133 = !DILocalVariable(name: "i", scope: !128, file: !3, line: 93, type: !32)
!134 = !DILocation(line: 99, column: 8, scope: !135)
!135 = distinct !DILexicalBlock(scope: !128, file: !3, line: 99, column: 3)
!136 = !DILocation(line: 0, scope: !135)
!137 = !DILocation(line: 99, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 99, column: 3)
!139 = !DILocation(line: 99, column: 3, scope: !135)
!140 = !DILocation(line: 104, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 99, column: 29)
!142 = !DILocation(line: 105, column: 9, scope: !141)
!143 = !DILocation(line: 107, column: 5, scope: !141)
!144 = !DILocation(line: 108, column: 5, scope: !141)
!145 = !DILocation(line: 106, column: 9, scope: !141)
!146 = !DILocation(line: 110, column: 9, scope: !141)
!147 = !DILocation(line: 111, column: 9, scope: !141)
!148 = !DILocation(line: 113, column: 5, scope: !141)
!149 = !DILocation(line: 114, column: 5, scope: !141)
!150 = !DILocation(line: 112, column: 9, scope: !141)
!151 = !DILocation(line: 116, column: 9, scope: !141)
!152 = !DILocation(line: 117, column: 9, scope: !141)
!153 = !DILocation(line: 119, column: 5, scope: !141)
!154 = !DILocation(line: 120, column: 5, scope: !141)
!155 = !DILocation(line: 118, column: 9, scope: !141)
!156 = !DILocation(line: 122, column: 9, scope: !141)
!157 = !DILocation(line: 123, column: 9, scope: !141)
!158 = !DILocation(line: 125, column: 5, scope: !141)
!159 = !DILocation(line: 126, column: 5, scope: !141)
!160 = !DILocation(line: 124, column: 9, scope: !141)
!161 = !DILocation(line: 133, column: 9, scope: !141)
!162 = !DILocation(line: 134, column: 9, scope: !141)
!163 = !DILocation(line: 135, column: 9, scope: !141)
!164 = !DILocation(line: 137, column: 9, scope: !141)
!165 = !DILocation(line: 138, column: 9, scope: !141)
!166 = !DILocation(line: 140, column: 5, scope: !141)
!167 = !DILocation(line: 141, column: 5, scope: !141)
!168 = !DILocation(line: 139, column: 9, scope: !141)
!169 = !DILocation(line: 143, column: 9, scope: !141)
!170 = !DILocation(line: 144, column: 9, scope: !141)
!171 = !DILocation(line: 146, column: 5, scope: !141)
!172 = !DILocation(line: 147, column: 5, scope: !141)
!173 = !DILocation(line: 145, column: 9, scope: !141)
!174 = !DILocation(line: 149, column: 9, scope: !141)
!175 = !DILocation(line: 150, column: 9, scope: !141)
!176 = !DILocation(line: 152, column: 5, scope: !141)
!177 = !DILocation(line: 153, column: 5, scope: !141)
!178 = !DILocation(line: 151, column: 9, scope: !141)
!179 = !DILocation(line: 155, column: 9, scope: !141)
!180 = !DILocation(line: 156, column: 9, scope: !141)
!181 = !DILocation(line: 158, column: 5, scope: !141)
!182 = !DILocation(line: 159, column: 5, scope: !141)
!183 = !DILocation(line: 157, column: 9, scope: !141)
!184 = !DILocation(line: 165, column: 9, scope: !141)
!185 = !DILocation(line: 166, column: 9, scope: !141)
!186 = !DILocation(line: 167, column: 9, scope: !141)
!187 = !DILocation(line: 168, column: 3, scope: !141)
!188 = !DILocation(line: 99, column: 25, scope: !138)
!189 = !DILocation(line: 99, column: 3, scope: !138)
!190 = distinct !{!190, !139, !191, !192}
!191 = !DILocation(line: 168, column: 3, scope: !135)
!192 = !{!"llvm.loop.mustprogress"}
!193 = !DILocation(line: 173, column: 8, scope: !128)
!194 = !DILocation(line: 174, column: 8, scope: !128)
!195 = !DILocation(line: 175, column: 8, scope: !128)
!196 = !DILocation(line: 176, column: 8, scope: !128)
!197 = !DILocation(line: 181, column: 8, scope: !128)
!198 = !DILocation(line: 186, column: 11, scope: !199)
!199 = distinct !DILexicalBlock(scope: !128, file: !3, line: 186, column: 7)
!200 = !DILocation(line: 186, column: 7, scope: !128)
!201 = !DILocalVariable(name: "tmp", scope: !202, file: !3, line: 187, type: !203)
!202 = distinct !DILexicalBlock(scope: !199, file: !3, line: 186, column: 17)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 64)
!206 = !DILocation(line: 187, column: 18, scope: !202)
!207 = !DILocation(line: 190, column: 30, scope: !202)
!208 = !DILocation(line: 190, column: 34, scope: !202)
!209 = !DILocation(line: 190, column: 21, scope: !202)
!210 = !DILocation(line: 190, column: 4, scope: !202)
!211 = !DILocation(line: 191, column: 30, scope: !202)
!212 = !DILocation(line: 191, column: 34, scope: !202)
!213 = !DILocation(line: 191, column: 21, scope: !202)
!214 = !DILocation(line: 191, column: 4, scope: !202)
!215 = !DILocation(line: 192, column: 30, scope: !202)
!216 = !DILocation(line: 192, column: 34, scope: !202)
!217 = !DILocation(line: 192, column: 21, scope: !202)
!218 = !DILocation(line: 192, column: 4, scope: !202)
!219 = !DILocation(line: 193, column: 30, scope: !202)
!220 = !DILocation(line: 193, column: 34, scope: !202)
!221 = !DILocation(line: 193, column: 21, scope: !202)
!222 = !DILocation(line: 193, column: 4, scope: !202)
!223 = !DILocalVariable(name: "u", scope: !202, file: !3, line: 188, type: !14)
!224 = !DILocation(line: 0, scope: !202)
!225 = !DILocation(line: 194, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !202, file: !3, line: 194, column: 4)
!227 = !DILocation(line: 0, scope: !226)
!228 = !DILocation(line: 194, column: 18, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 194, column: 4)
!230 = !DILocation(line: 194, column: 4, scope: !226)
!231 = !DILocation(line: 195, column: 15, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 194, column: 31)
!233 = !DILocation(line: 195, column: 5, scope: !232)
!234 = !DILocation(line: 195, column: 12, scope: !232)
!235 = !DILocation(line: 196, column: 4, scope: !232)
!236 = !DILocation(line: 194, column: 27, scope: !229)
!237 = !DILocation(line: 194, column: 4, scope: !229)
!238 = distinct !{!238, !230, !239, !192}
!239 = !DILocation(line: 196, column: 4, scope: !226)
!240 = !DILocation(line: 197, column: 4, scope: !202)
!241 = !DILocation(line: 201, column: 44, scope: !242)
!242 = distinct !DILexicalBlock(scope: !199, file: !3, line: 198, column: 10)
!243 = !DILocation(line: 201, column: 25, scope: !242)
!244 = !DILocation(line: 201, column: 9, scope: !242)
!245 = !DILocalVariable(name: "b0", scope: !242, file: !3, line: 199, type: !23)
!246 = !DILocation(line: 0, scope: !242)
!247 = !DILocation(line: 202, column: 44, scope: !242)
!248 = !DILocation(line: 202, column: 25, scope: !242)
!249 = !DILocation(line: 202, column: 9, scope: !242)
!250 = !DILocalVariable(name: "b1", scope: !242, file: !3, line: 199, type: !23)
!251 = !DILocation(line: 203, column: 44, scope: !242)
!252 = !DILocation(line: 203, column: 25, scope: !242)
!253 = !DILocation(line: 203, column: 9, scope: !242)
!254 = !DILocalVariable(name: "b2", scope: !242, file: !3, line: 199, type: !23)
!255 = !DILocation(line: 204, column: 44, scope: !242)
!256 = !DILocation(line: 204, column: 25, scope: !242)
!257 = !DILocation(line: 204, column: 9, scope: !242)
!258 = !DILocalVariable(name: "b3", scope: !242, file: !3, line: 199, type: !23)
!259 = !DILocation(line: 205, column: 9, scope: !242)
!260 = !DILocation(line: 206, column: 9, scope: !242)
!261 = !DILocation(line: 207, column: 9, scope: !242)
!262 = !DILocation(line: 208, column: 9, scope: !242)
!263 = !DILocation(line: 209, column: 34, scope: !242)
!264 = !DILocation(line: 209, column: 21, scope: !242)
!265 = !DILocation(line: 209, column: 4, scope: !242)
!266 = !DILocation(line: 210, column: 34, scope: !242)
!267 = !DILocation(line: 210, column: 21, scope: !242)
!268 = !DILocation(line: 210, column: 4, scope: !242)
!269 = !DILocation(line: 211, column: 34, scope: !242)
!270 = !DILocation(line: 211, column: 21, scope: !242)
!271 = !DILocation(line: 211, column: 4, scope: !242)
!272 = !DILocation(line: 212, column: 34, scope: !242)
!273 = !DILocation(line: 212, column: 21, scope: !242)
!274 = !DILocation(line: 212, column: 4, scope: !242)
!275 = !DILocation(line: 213, column: 8, scope: !242)
!276 = !DILocation(line: 214, column: 8, scope: !242)
!277 = distinct !{!277, !125, !278, !192}
!278 = !DILocation(line: 216, column: 2, scope: !2)
!279 = !DILocation(line: 222, column: 19, scope: !2)
!280 = !DILocation(line: 223, column: 16, scope: !2)
!281 = !DILocation(line: 223, column: 41, scope: !2)
!282 = !DILocation(line: 223, column: 3, scope: !2)
!283 = !DILocation(line: 222, column: 2, scope: !2)
!284 = distinct !DISubprogram(name: "br_poly1305_ctmul_run", scope: !60, file: !60, line: 148, type: !285, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !18)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !11, !11, !13, !14, !11, !14, !13, !91, !32}
!287 = !DILocalVariable(name: "key", arg: 1, scope: !284, file: !60, line: 148, type: !11)
!288 = !DILocation(line: 0, scope: !284)
!289 = !DILocalVariable(name: "iv", arg: 2, scope: !284, file: !60, line: 148, type: !11)
!290 = !DILocalVariable(name: "data", arg: 3, scope: !284, file: !60, line: 149, type: !13)
!291 = !DILocalVariable(name: "len", arg: 4, scope: !284, file: !60, line: 149, type: !14)
!292 = !DILocalVariable(name: "aad", arg: 5, scope: !284, file: !60, line: 149, type: !11)
!293 = !DILocalVariable(name: "aad_len", arg: 6, scope: !284, file: !60, line: 149, type: !14)
!294 = !DILocalVariable(name: "tag", arg: 7, scope: !284, file: !60, line: 150, type: !13)
!295 = !DILocalVariable(name: "ichacha", arg: 8, scope: !284, file: !60, line: 150, type: !91)
!296 = !DILocalVariable(name: "encrypt", arg: 9, scope: !284, file: !60, line: 150, type: !32)
!297 = !DILocalVariable(name: "pkey", scope: !284, file: !60, line: 152, type: !298)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 32)
!301 = !DILocation(line: 152, column: 16, scope: !284)
!302 = !DILocalVariable(name: "foot", scope: !284, file: !60, line: 152, type: !303)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 16)
!306 = !DILocation(line: 152, column: 26, scope: !284)
!307 = !DILocalVariable(name: "r", scope: !284, file: !60, line: 153, type: !308)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 5)
!311 = !DILocation(line: 153, column: 11, scope: !284)
!312 = !DILocalVariable(name: "acc", scope: !284, file: !60, line: 153, type: !308)
!313 = !DILocation(line: 153, column: 17, scope: !284)
!314 = !DILocation(line: 161, column: 2, scope: !284)
!315 = !DILocation(line: 162, column: 22, scope: !284)
!316 = !DILocation(line: 162, column: 2, scope: !284)
!317 = !DILocation(line: 168, column: 6, scope: !318)
!318 = distinct !DILexicalBlock(scope: !284, file: !60, line: 168, column: 6)
!319 = !DILocation(line: 168, column: 6, scope: !284)
!320 = !DILocation(line: 169, column: 3, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !60, line: 168, column: 15)
!322 = !DILocation(line: 170, column: 2, scope: !321)
!323 = !DILocation(line: 183, column: 20, scope: !284)
!324 = !DILocation(line: 183, column: 9, scope: !284)
!325 = !DILocation(line: 183, column: 26, scope: !284)
!326 = !DILocation(line: 183, column: 2, scope: !284)
!327 = !DILocation(line: 183, column: 7, scope: !284)
!328 = !DILocation(line: 184, column: 21, scope: !284)
!329 = !DILocation(line: 184, column: 26, scope: !284)
!330 = !DILocation(line: 184, column: 10, scope: !284)
!331 = !DILocation(line: 184, column: 32, scope: !284)
!332 = !DILocation(line: 184, column: 38, scope: !284)
!333 = !DILocation(line: 184, column: 2, scope: !284)
!334 = !DILocation(line: 184, column: 7, scope: !284)
!335 = !DILocation(line: 185, column: 21, scope: !284)
!336 = !DILocation(line: 185, column: 26, scope: !284)
!337 = !DILocation(line: 185, column: 10, scope: !284)
!338 = !DILocation(line: 185, column: 32, scope: !284)
!339 = !DILocation(line: 185, column: 38, scope: !284)
!340 = !DILocation(line: 185, column: 2, scope: !284)
!341 = !DILocation(line: 185, column: 7, scope: !284)
!342 = !DILocation(line: 186, column: 21, scope: !284)
!343 = !DILocation(line: 186, column: 26, scope: !284)
!344 = !DILocation(line: 186, column: 10, scope: !284)
!345 = !DILocation(line: 186, column: 32, scope: !284)
!346 = !DILocation(line: 186, column: 38, scope: !284)
!347 = !DILocation(line: 186, column: 2, scope: !284)
!348 = !DILocation(line: 186, column: 7, scope: !284)
!349 = !DILocation(line: 187, column: 21, scope: !284)
!350 = !DILocation(line: 187, column: 26, scope: !284)
!351 = !DILocation(line: 187, column: 10, scope: !284)
!352 = !DILocation(line: 187, column: 32, scope: !284)
!353 = !DILocation(line: 187, column: 38, scope: !284)
!354 = !DILocation(line: 187, column: 2, scope: !284)
!355 = !DILocation(line: 187, column: 7, scope: !284)
!356 = !DILocation(line: 192, column: 2, scope: !284)
!357 = !DILocation(line: 198, column: 13, scope: !284)
!358 = !DILocation(line: 198, column: 2, scope: !284)
!359 = !DILocation(line: 199, column: 13, scope: !284)
!360 = !DILocation(line: 199, column: 18, scope: !284)
!361 = !DILocation(line: 199, column: 2, scope: !284)
!362 = !DILocation(line: 200, column: 17, scope: !284)
!363 = !DILocation(line: 200, column: 22, scope: !284)
!364 = !DILocation(line: 200, column: 2, scope: !284)
!365 = !DILocation(line: 201, column: 17, scope: !284)
!366 = !DILocation(line: 201, column: 22, scope: !284)
!367 = !DILocation(line: 201, column: 2, scope: !284)
!368 = !DILocation(line: 202, column: 17, scope: !284)
!369 = !DILocation(line: 202, column: 22, scope: !284)
!370 = !DILocation(line: 202, column: 25, scope: !284)
!371 = !DILocation(line: 202, column: 2, scope: !284)
!372 = !DILocalVariable(name: "cc", scope: !284, file: !60, line: 153, type: !6)
!373 = !DILocalVariable(name: "i", scope: !284, file: !60, line: 155, type: !32)
!374 = !DILocation(line: 212, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !284, file: !60, line: 212, column: 2)
!376 = !DILocation(line: 0, scope: !375)
!377 = !DILocation(line: 212, column: 16, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !60, line: 212, column: 2)
!379 = !DILocation(line: 212, column: 2, scope: !375)
!380 = !DILocation(line: 215, column: 10, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !60, line: 212, column: 28)
!382 = !DILocation(line: 215, column: 7, scope: !381)
!383 = !DILocation(line: 215, column: 20, scope: !381)
!384 = !DILocalVariable(name: "j", scope: !381, file: !60, line: 213, type: !32)
!385 = !DILocation(line: 0, scope: !381)
!386 = !DILocation(line: 216, column: 3, scope: !381)
!387 = !DILocation(line: 216, column: 10, scope: !381)
!388 = !DILocation(line: 217, column: 8, scope: !381)
!389 = !DILocation(line: 217, column: 15, scope: !381)
!390 = !DILocation(line: 218, column: 3, scope: !381)
!391 = !DILocation(line: 218, column: 10, scope: !381)
!392 = !DILocation(line: 219, column: 2, scope: !381)
!393 = !DILocation(line: 212, column: 24, scope: !378)
!394 = !DILocation(line: 212, column: 2, scope: !378)
!395 = distinct !{!395, !379, !396, !192}
!396 = !DILocation(line: 219, column: 2, scope: !375)
!397 = !DILocation(line: 226, column: 11, scope: !284)
!398 = !DILocation(line: 226, column: 8, scope: !284)
!399 = !DILocalVariable(name: "ctl", scope: !284, file: !60, line: 153, type: !6)
!400 = !DILocation(line: 227, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !284, file: !60, line: 227, column: 2)
!402 = !DILocation(line: 0, scope: !401)
!403 = !DILocation(line: 227, column: 16, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !60, line: 227, column: 2)
!405 = !DILocation(line: 227, column: 2, scope: !401)
!406 = !DILocation(line: 228, column: 13, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !60, line: 227, column: 27)
!408 = !DILocation(line: 228, column: 10, scope: !407)
!409 = !DILocation(line: 228, column: 7, scope: !407)
!410 = !DILocation(line: 229, column: 2, scope: !407)
!411 = !DILocation(line: 227, column: 23, scope: !404)
!412 = !DILocation(line: 227, column: 2, scope: !404)
!413 = distinct !{!413, !405, !414, !192}
!414 = !DILocation(line: 229, column: 2, scope: !401)
!415 = !DILocation(line: 231, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !284, file: !60, line: 231, column: 2)
!417 = !DILocation(line: 0, scope: !416)
!418 = !DILocation(line: 231, column: 16, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !60, line: 231, column: 2)
!420 = !DILocation(line: 231, column: 2, scope: !416)
!421 = !DILocation(line: 234, column: 8, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !60, line: 231, column: 27)
!423 = !DILocation(line: 234, column: 15, scope: !422)
!424 = !DILocalVariable(name: "t", scope: !422, file: !60, line: 232, type: !6)
!425 = !DILocation(line: 0, scope: !422)
!426 = !DILocation(line: 235, column: 10, scope: !422)
!427 = !DILocation(line: 236, column: 5, scope: !422)
!428 = !DILocation(line: 237, column: 24, scope: !422)
!429 = !DILocation(line: 237, column: 12, scope: !422)
!430 = !DILocation(line: 237, column: 3, scope: !422)
!431 = !DILocation(line: 237, column: 10, scope: !422)
!432 = !DILocation(line: 238, column: 2, scope: !422)
!433 = !DILocation(line: 231, column: 23, scope: !419)
!434 = !DILocation(line: 231, column: 2, scope: !419)
!435 = distinct !{!435, !420, !436, !192}
!436 = !DILocation(line: 238, column: 2, scope: !416)
!437 = !DILocation(line: 245, column: 16, scope: !284)
!438 = !DILocation(line: 245, column: 6, scope: !284)
!439 = !DILocation(line: 245, column: 36, scope: !284)
!440 = !DILocation(line: 245, column: 26, scope: !284)
!441 = !DILocation(line: 245, column: 43, scope: !284)
!442 = !DILocation(line: 245, column: 23, scope: !284)
!443 = !DILocation(line: 245, column: 63, scope: !284)
!444 = !DILocation(line: 245, column: 68, scope: !284)
!445 = !DILocation(line: 245, column: 52, scope: !284)
!446 = !DILocation(line: 245, column: 50, scope: !284)
!447 = !DILocalVariable(name: "w", scope: !284, file: !60, line: 154, type: !62)
!448 = !DILocation(line: 246, column: 35, scope: !284)
!449 = !DILocation(line: 246, column: 2, scope: !284)
!450 = !DILocation(line: 247, column: 9, scope: !284)
!451 = !DILocation(line: 247, column: 29, scope: !284)
!452 = !DILocation(line: 247, column: 19, scope: !284)
!453 = !DILocation(line: 247, column: 36, scope: !284)
!454 = !DILocation(line: 247, column: 16, scope: !284)
!455 = !DILocation(line: 247, column: 56, scope: !284)
!456 = !DILocation(line: 247, column: 61, scope: !284)
!457 = !DILocation(line: 247, column: 45, scope: !284)
!458 = !DILocation(line: 247, column: 43, scope: !284)
!459 = !DILocation(line: 248, column: 34, scope: !284)
!460 = !DILocation(line: 248, column: 39, scope: !284)
!461 = !DILocation(line: 248, column: 2, scope: !284)
!462 = !DILocation(line: 249, column: 9, scope: !284)
!463 = !DILocation(line: 249, column: 29, scope: !284)
!464 = !DILocation(line: 249, column: 19, scope: !284)
!465 = !DILocation(line: 249, column: 36, scope: !284)
!466 = !DILocation(line: 249, column: 16, scope: !284)
!467 = !DILocation(line: 249, column: 56, scope: !284)
!468 = !DILocation(line: 249, column: 61, scope: !284)
!469 = !DILocation(line: 249, column: 45, scope: !284)
!470 = !DILocation(line: 249, column: 43, scope: !284)
!471 = !DILocation(line: 250, column: 34, scope: !284)
!472 = !DILocation(line: 250, column: 39, scope: !284)
!473 = !DILocation(line: 250, column: 2, scope: !284)
!474 = !DILocation(line: 251, column: 20, scope: !284)
!475 = !DILocation(line: 251, column: 7, scope: !284)
!476 = !DILocation(line: 251, column: 30, scope: !284)
!477 = !DILocation(line: 251, column: 37, scope: !284)
!478 = !DILocation(line: 251, column: 27, scope: !284)
!479 = !DILocation(line: 251, column: 56, scope: !284)
!480 = !DILocation(line: 251, column: 61, scope: !284)
!481 = !DILocation(line: 251, column: 45, scope: !284)
!482 = !DILocation(line: 251, column: 43, scope: !284)
!483 = !DILocalVariable(name: "hi", scope: !284, file: !60, line: 153, type: !6)
!484 = !DILocation(line: 252, column: 34, scope: !284)
!485 = !DILocation(line: 252, column: 2, scope: !284)
!486 = !DILocation(line: 257, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !284, file: !60, line: 257, column: 6)
!488 = !DILocation(line: 257, column: 6, scope: !284)
!489 = !DILocation(line: 258, column: 3, scope: !490)
!490 = distinct !DILexicalBlock(scope: !487, file: !60, line: 257, column: 16)
!491 = !DILocation(line: 259, column: 2, scope: !490)
!492 = !DILocation(line: 260, column: 1, scope: !284)
!493 = distinct !DISubprogram(name: "br_dec32le", scope: !68, file: !68, line: 574, type: !494, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !18)
!494 = !DISubroutineType(types: !495)
!495 = !{!6, !11}
!496 = !DILocalVariable(name: "src", arg: 1, scope: !493, file: !68, line: 574, type: !11)
!497 = !DILocation(line: 0, scope: !493)
!498 = !DILocation(line: 577, column: 10, scope: !493)
!499 = !DILocation(line: 577, column: 38, scope: !493)
!500 = !DILocation(line: 577, column: 2, scope: !493)
!501 = distinct !DISubprogram(name: "br_enc64le", scope: !68, file: !68, line: 606, type: !502, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !18)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !13, !62}
!504 = !DILocalVariable(name: "dst", arg: 1, scope: !501, file: !68, line: 606, type: !13)
!505 = !DILocation(line: 0, scope: !501)
!506 = !DILocalVariable(name: "x", arg: 2, scope: !501, file: !68, line: 606, type: !62)
!507 = !DILocation(line: 609, column: 3, scope: !501)
!508 = !DILocation(line: 609, column: 25, scope: !501)
!509 = !DILocation(line: 609, column: 27, scope: !501)
!510 = !DILocation(line: 617, column: 1, scope: !501)
!511 = distinct !DISubprogram(name: "poly1305_inner", scope: !60, file: !60, line: 36, type: !512, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !18)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !514, !515, !11, !14}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!516 = !DILocalVariable(name: "acc", arg: 1, scope: !511, file: !60, line: 36, type: !514)
!517 = !DILocation(line: 0, scope: !511)
!518 = !DILocalVariable(name: "r", arg: 2, scope: !511, file: !60, line: 36, type: !515)
!519 = !DILocalVariable(name: "data", arg: 3, scope: !511, file: !60, line: 36, type: !11)
!520 = !DILocalVariable(name: "len", arg: 4, scope: !511, file: !60, line: 36, type: !14)
!521 = !DILocation(line: 54, column: 7, scope: !511)
!522 = !DILocalVariable(name: "r0", scope: !511, file: !60, line: 51, type: !6)
!523 = !DILocation(line: 55, column: 7, scope: !511)
!524 = !DILocalVariable(name: "r1", scope: !511, file: !60, line: 51, type: !6)
!525 = !DILocation(line: 56, column: 7, scope: !511)
!526 = !DILocalVariable(name: "r2", scope: !511, file: !60, line: 51, type: !6)
!527 = !DILocation(line: 57, column: 7, scope: !511)
!528 = !DILocalVariable(name: "r3", scope: !511, file: !60, line: 51, type: !6)
!529 = !DILocation(line: 58, column: 7, scope: !511)
!530 = !DILocalVariable(name: "r4", scope: !511, file: !60, line: 51, type: !6)
!531 = !DILocation(line: 60, column: 10, scope: !511)
!532 = !DILocalVariable(name: "u1", scope: !511, file: !60, line: 52, type: !6)
!533 = !DILocation(line: 61, column: 10, scope: !511)
!534 = !DILocalVariable(name: "u2", scope: !511, file: !60, line: 52, type: !6)
!535 = !DILocation(line: 62, column: 10, scope: !511)
!536 = !DILocalVariable(name: "u3", scope: !511, file: !60, line: 52, type: !6)
!537 = !DILocation(line: 63, column: 10, scope: !511)
!538 = !DILocalVariable(name: "u4", scope: !511, file: !60, line: 52, type: !6)
!539 = !DILocation(line: 65, column: 7, scope: !511)
!540 = !DILocalVariable(name: "a0", scope: !511, file: !60, line: 50, type: !6)
!541 = !DILocation(line: 66, column: 7, scope: !511)
!542 = !DILocalVariable(name: "a1", scope: !511, file: !60, line: 50, type: !6)
!543 = !DILocation(line: 67, column: 7, scope: !511)
!544 = !DILocalVariable(name: "a2", scope: !511, file: !60, line: 50, type: !6)
!545 = !DILocation(line: 68, column: 7, scope: !511)
!546 = !DILocalVariable(name: "a3", scope: !511, file: !60, line: 50, type: !6)
!547 = !DILocation(line: 69, column: 7, scope: !511)
!548 = !DILocalVariable(name: "a4", scope: !511, file: !60, line: 50, type: !6)
!549 = !DILocalVariable(name: "buf", scope: !511, file: !60, line: 49, type: !20)
!550 = !DILocation(line: 72, column: 2, scope: !511)
!551 = !DILocation(line: 72, column: 13, scope: !511)
!552 = !DILocalVariable(name: "tmp", scope: !553, file: !60, line: 75, type: !303)
!553 = distinct !DILexicalBlock(scope: !511, file: !60, line: 72, column: 18)
!554 = !DILocation(line: 75, column: 17, scope: !553)
!555 = !DILocation(line: 80, column: 11, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !60, line: 80, column: 7)
!557 = !DILocation(line: 80, column: 7, scope: !553)
!558 = !DILocation(line: 81, column: 4, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !60, line: 80, column: 17)
!560 = !DILocation(line: 82, column: 4, scope: !559)
!561 = !DILocation(line: 83, column: 10, scope: !559)
!562 = !DILocation(line: 85, column: 3, scope: !559)
!563 = !DILocation(line: 91, column: 9, scope: !553)
!564 = !DILocation(line: 91, column: 25, scope: !553)
!565 = !DILocation(line: 91, column: 6, scope: !553)
!566 = !DILocation(line: 92, column: 25, scope: !553)
!567 = !DILocation(line: 92, column: 10, scope: !553)
!568 = !DILocation(line: 92, column: 31, scope: !553)
!569 = !DILocation(line: 92, column: 37, scope: !553)
!570 = !DILocation(line: 92, column: 6, scope: !553)
!571 = !DILocation(line: 93, column: 25, scope: !553)
!572 = !DILocation(line: 93, column: 10, scope: !553)
!573 = !DILocation(line: 93, column: 31, scope: !553)
!574 = !DILocation(line: 93, column: 37, scope: !553)
!575 = !DILocation(line: 93, column: 6, scope: !553)
!576 = !DILocation(line: 94, column: 25, scope: !553)
!577 = !DILocation(line: 94, column: 10, scope: !553)
!578 = !DILocation(line: 94, column: 31, scope: !553)
!579 = !DILocation(line: 94, column: 37, scope: !553)
!580 = !DILocation(line: 94, column: 6, scope: !553)
!581 = !DILocation(line: 95, column: 25, scope: !553)
!582 = !DILocation(line: 95, column: 10, scope: !553)
!583 = !DILocation(line: 95, column: 31, scope: !553)
!584 = !DILocation(line: 95, column: 37, scope: !553)
!585 = !DILocation(line: 95, column: 6, scope: !553)
!586 = !DILocation(line: 102, column: 8, scope: !553)
!587 = !DILocation(line: 102, column: 20, scope: !553)
!588 = !DILocation(line: 102, column: 18, scope: !553)
!589 = !DILocation(line: 102, column: 32, scope: !553)
!590 = !DILocation(line: 102, column: 30, scope: !553)
!591 = !DILocation(line: 102, column: 44, scope: !553)
!592 = !DILocation(line: 102, column: 42, scope: !553)
!593 = !DILocation(line: 102, column: 56, scope: !553)
!594 = !DILocation(line: 102, column: 54, scope: !553)
!595 = !DILocalVariable(name: "w0", scope: !553, file: !60, line: 73, type: !62)
!596 = !DILocation(line: 0, scope: !553)
!597 = !DILocation(line: 103, column: 8, scope: !553)
!598 = !DILocation(line: 103, column: 20, scope: !553)
!599 = !DILocation(line: 103, column: 18, scope: !553)
!600 = !DILocation(line: 103, column: 32, scope: !553)
!601 = !DILocation(line: 103, column: 30, scope: !553)
!602 = !DILocation(line: 103, column: 44, scope: !553)
!603 = !DILocation(line: 103, column: 42, scope: !553)
!604 = !DILocation(line: 103, column: 56, scope: !553)
!605 = !DILocation(line: 103, column: 54, scope: !553)
!606 = !DILocalVariable(name: "w1", scope: !553, file: !60, line: 73, type: !62)
!607 = !DILocation(line: 104, column: 8, scope: !553)
!608 = !DILocation(line: 104, column: 20, scope: !553)
!609 = !DILocation(line: 104, column: 18, scope: !553)
!610 = !DILocation(line: 104, column: 32, scope: !553)
!611 = !DILocation(line: 104, column: 30, scope: !553)
!612 = !DILocation(line: 104, column: 44, scope: !553)
!613 = !DILocation(line: 104, column: 42, scope: !553)
!614 = !DILocation(line: 104, column: 56, scope: !553)
!615 = !DILocation(line: 104, column: 54, scope: !553)
!616 = !DILocalVariable(name: "w2", scope: !553, file: !60, line: 73, type: !62)
!617 = !DILocation(line: 105, column: 8, scope: !553)
!618 = !DILocation(line: 105, column: 20, scope: !553)
!619 = !DILocation(line: 105, column: 18, scope: !553)
!620 = !DILocation(line: 105, column: 32, scope: !553)
!621 = !DILocation(line: 105, column: 30, scope: !553)
!622 = !DILocation(line: 105, column: 44, scope: !553)
!623 = !DILocation(line: 105, column: 42, scope: !553)
!624 = !DILocation(line: 105, column: 56, scope: !553)
!625 = !DILocation(line: 105, column: 54, scope: !553)
!626 = !DILocalVariable(name: "w3", scope: !553, file: !60, line: 73, type: !62)
!627 = !DILocation(line: 106, column: 8, scope: !553)
!628 = !DILocation(line: 106, column: 20, scope: !553)
!629 = !DILocation(line: 106, column: 18, scope: !553)
!630 = !DILocation(line: 106, column: 32, scope: !553)
!631 = !DILocation(line: 106, column: 30, scope: !553)
!632 = !DILocation(line: 106, column: 44, scope: !553)
!633 = !DILocation(line: 106, column: 42, scope: !553)
!634 = !DILocation(line: 106, column: 56, scope: !553)
!635 = !DILocation(line: 106, column: 54, scope: !553)
!636 = !DILocalVariable(name: "w4", scope: !553, file: !60, line: 73, type: !62)
!637 = !DILocation(line: 117, column: 10, scope: !553)
!638 = !DILocalVariable(name: "c", scope: !553, file: !60, line: 74, type: !62)
!639 = !DILocation(line: 118, column: 8, scope: !553)
!640 = !DILocation(line: 118, column: 21, scope: !553)
!641 = !DILocation(line: 119, column: 6, scope: !553)
!642 = !DILocation(line: 120, column: 10, scope: !553)
!643 = !DILocation(line: 121, column: 8, scope: !553)
!644 = !DILocation(line: 121, column: 21, scope: !553)
!645 = !DILocation(line: 122, column: 6, scope: !553)
!646 = !DILocation(line: 123, column: 10, scope: !553)
!647 = !DILocation(line: 124, column: 8, scope: !553)
!648 = !DILocation(line: 124, column: 21, scope: !553)
!649 = !DILocation(line: 125, column: 6, scope: !553)
!650 = !DILocation(line: 126, column: 10, scope: !553)
!651 = !DILocation(line: 127, column: 8, scope: !553)
!652 = !DILocation(line: 127, column: 21, scope: !553)
!653 = !DILocation(line: 128, column: 6, scope: !553)
!654 = !DILocation(line: 129, column: 10, scope: !553)
!655 = !DILocation(line: 130, column: 8, scope: !553)
!656 = !DILocation(line: 130, column: 21, scope: !553)
!657 = !DILocation(line: 131, column: 9, scope: !553)
!658 = !DILocation(line: 131, column: 21, scope: !553)
!659 = !DILocation(line: 131, column: 6, scope: !553)
!660 = !DILocation(line: 132, column: 12, scope: !553)
!661 = !DILocation(line: 132, column: 6, scope: !553)
!662 = !DILocation(line: 133, column: 6, scope: !553)
!663 = !DILocation(line: 135, column: 7, scope: !553)
!664 = !DILocation(line: 136, column: 7, scope: !553)
!665 = distinct !{!665, !550, !666, !192}
!666 = !DILocation(line: 137, column: 2, scope: !511)
!667 = !DILocation(line: 139, column: 2, scope: !511)
!668 = !DILocation(line: 139, column: 9, scope: !511)
!669 = !DILocation(line: 140, column: 2, scope: !511)
!670 = !DILocation(line: 140, column: 9, scope: !511)
!671 = !DILocation(line: 141, column: 2, scope: !511)
!672 = !DILocation(line: 141, column: 9, scope: !511)
!673 = !DILocation(line: 142, column: 2, scope: !511)
!674 = !DILocation(line: 142, column: 9, scope: !511)
!675 = !DILocation(line: 143, column: 2, scope: !511)
!676 = !DILocation(line: 143, column: 9, scope: !511)
!677 = !DILocation(line: 144, column: 1, scope: !511)
!678 = distinct !DISubprogram(name: "GT", scope: !68, file: !68, line: 803, type: !679, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !18)
!679 = !DISubroutineType(types: !680)
!680 = !{!6, !6, !6}
!681 = !DILocalVariable(name: "x", arg: 1, scope: !678, file: !68, line: 803, type: !6)
!682 = !DILocation(line: 0, scope: !678)
!683 = !DILocalVariable(name: "y", arg: 2, scope: !678, file: !68, line: 803, type: !6)
!684 = !DILocation(line: 819, column: 8, scope: !678)
!685 = !DILocalVariable(name: "z", scope: !678, file: !68, line: 817, type: !6)
!686 = !DILocation(line: 820, column: 18, scope: !678)
!687 = !DILocation(line: 820, column: 28, scope: !678)
!688 = !DILocation(line: 820, column: 23, scope: !678)
!689 = !DILocation(line: 820, column: 12, scope: !678)
!690 = !DILocation(line: 820, column: 35, scope: !678)
!691 = !DILocation(line: 820, column: 2, scope: !678)
!692 = distinct !DISubprogram(name: "EQ", scope: !68, file: !68, line: 779, type: !679, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !18)
!693 = !DILocalVariable(name: "x", arg: 1, scope: !692, file: !68, line: 779, type: !6)
!694 = !DILocation(line: 0, scope: !692)
!695 = !DILocalVariable(name: "y", arg: 2, scope: !692, file: !68, line: 779, type: !6)
!696 = !DILocation(line: 783, column: 8, scope: !692)
!697 = !DILocalVariable(name: "q", scope: !692, file: !68, line: 781, type: !6)
!698 = !DILocation(line: 784, column: 18, scope: !692)
!699 = !DILocation(line: 784, column: 16, scope: !692)
!700 = !DILocation(line: 784, column: 22, scope: !692)
!701 = !DILocation(line: 784, column: 9, scope: !692)
!702 = !DILocation(line: 784, column: 2, scope: !692)
!703 = distinct !DISubprogram(name: "MUX", scope: !68, file: !68, line: 770, type: !704, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !18)
!704 = !DISubroutineType(types: !705)
!705 = !{!6, !6, !6, !6}
!706 = !DILocalVariable(name: "ctl", arg: 1, scope: !703, file: !68, line: 770, type: !6)
!707 = !DILocation(line: 0, scope: !703)
!708 = !DILocalVariable(name: "x", arg: 2, scope: !703, file: !68, line: 770, type: !6)
!709 = !DILocalVariable(name: "y", arg: 3, scope: !703, file: !68, line: 770, type: !6)
!710 = !DILocation(line: 772, column: 14, scope: !703)
!711 = !DILocation(line: 772, column: 24, scope: !703)
!712 = !DILocation(line: 772, column: 19, scope: !703)
!713 = !DILocation(line: 772, column: 11, scope: !703)
!714 = !DILocation(line: 772, column: 2, scope: !703)
!715 = distinct !DISubprogram(name: "br_enc32le", scope: !68, file: !68, line: 542, type: !716, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !18)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !13, !6}
!718 = !DILocalVariable(name: "dst", arg: 1, scope: !715, file: !68, line: 542, type: !13)
!719 = !DILocation(line: 0, scope: !715)
!720 = !DILocalVariable(name: "x", arg: 2, scope: !715, file: !68, line: 542, type: !6)
!721 = !DILocation(line: 545, column: 3, scope: !715)
!722 = !DILocation(line: 545, column: 25, scope: !715)
!723 = !DILocation(line: 545, column: 27, scope: !715)
!724 = !DILocation(line: 555, column: 1, scope: !715)
!725 = distinct !DISubprogram(name: "NOT", scope: !68, file: !68, line: 761, type: !726, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !18)
!726 = !DISubroutineType(types: !727)
!727 = !{!6, !6}
!728 = !DILocalVariable(name: "ctl", arg: 1, scope: !725, file: !68, line: 761, type: !6)
!729 = !DILocation(line: 0, scope: !725)
!730 = !DILocation(line: 763, column: 13, scope: !725)
!731 = !DILocation(line: 763, column: 2, scope: !725)
!732 = distinct !DISubprogram(name: "run_wrapper", scope: !83, file: !83, line: 3, type: !285, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !18)
!733 = !DILocalVariable(name: "key", arg: 1, scope: !732, file: !83, line: 3, type: !11)
!734 = !DILocation(line: 0, scope: !732)
!735 = !DILocalVariable(name: "iv", arg: 2, scope: !732, file: !83, line: 3, type: !11)
!736 = !DILocalVariable(name: "data", arg: 3, scope: !732, file: !83, line: 4, type: !13)
!737 = !DILocalVariable(name: "len", arg: 4, scope: !732, file: !83, line: 4, type: !14)
!738 = !DILocalVariable(name: "aad", arg: 5, scope: !732, file: !83, line: 4, type: !11)
!739 = !DILocalVariable(name: "aad_len", arg: 6, scope: !732, file: !83, line: 4, type: !14)
!740 = !DILocalVariable(name: "tag", arg: 7, scope: !732, file: !83, line: 5, type: !13)
!741 = !DILocalVariable(name: "ichacha", arg: 8, scope: !732, file: !83, line: 5, type: !91)
!742 = !DILocalVariable(name: "encrypt", arg: 9, scope: !732, file: !83, line: 5, type: !32)
!743 = !DILocation(line: 6, column: 12, scope: !732)
!744 = !DILocation(line: 6, column: 2, scope: !732)
!745 = !DILocation(line: 7, column: 12, scope: !732)
!746 = !DILocation(line: 7, column: 2, scope: !732)
!747 = !DILocation(line: 8, column: 12, scope: !732)
!748 = !DILocation(line: 8, column: 2, scope: !732)
!749 = !DILocation(line: 9, column: 12, scope: !732)
!750 = !DILocation(line: 9, column: 2, scope: !732)
!751 = !DILocation(line: 10, column: 12, scope: !732)
!752 = !DILocation(line: 10, column: 2, scope: !732)
!753 = !DILocation(line: 11, column: 12, scope: !732)
!754 = !DILocation(line: 11, column: 2, scope: !732)
!755 = !DILocation(line: 12, column: 12, scope: !732)
!756 = !DILocation(line: 12, column: 2, scope: !732)
!757 = !DILocation(line: 13, column: 12, scope: !732)
!758 = !DILocation(line: 13, column: 2, scope: !732)
!759 = !DILocation(line: 16, column: 12, scope: !732)
!760 = !DILocation(line: 16, column: 2, scope: !732)
!761 = !DILocation(line: 17, column: 12, scope: !732)
!762 = !DILocation(line: 17, column: 2, scope: !732)
!763 = !DILocation(line: 18, column: 12, scope: !732)
!764 = !DILocation(line: 18, column: 2, scope: !732)
!765 = !DILocation(line: 21, column: 2, scope: !732)
!766 = !DILocation(line: 22, column: 1, scope: !732)
!767 = distinct !DISubprogram(name: "run_wrapper_t", scope: !83, file: !83, line: 32, type: !768, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !18)
!768 = !DISubroutineType(types: !769)
!769 = !{null}
!770 = !DILocation(line: 34, column: 19, scope: !767)
!771 = !DILocalVariable(name: "key", scope: !767, file: !83, line: 34, type: !11)
!772 = !DILocation(line: 0, scope: !767)
!773 = !DILocation(line: 35, column: 19, scope: !767)
!774 = !DILocalVariable(name: "iv", scope: !767, file: !83, line: 35, type: !11)
!775 = !DILocation(line: 37, column: 15, scope: !767)
!776 = !DILocalVariable(name: "data", scope: !767, file: !83, line: 37, type: !13)
!777 = !DILocalVariable(name: "len", scope: !767, file: !83, line: 38, type: !14)
!778 = !DILocation(line: 39, column: 22, scope: !767)
!779 = !DILocalVariable(name: "aad", scope: !767, file: !83, line: 39, type: !11)
!780 = !DILocalVariable(name: "aad_len", scope: !767, file: !83, line: 40, type: !14)
!781 = !DILocation(line: 41, column: 14, scope: !767)
!782 = !DILocalVariable(name: "tag", scope: !767, file: !83, line: 41, type: !13)
!783 = !DILocalVariable(name: "encrypt", scope: !767, file: !83, line: 42, type: !32)
!784 = !DILocation(line: 44, column: 2, scope: !767)
!785 = !DILocation(line: 45, column: 1, scope: !767)
