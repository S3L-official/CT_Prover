; ModuleID = 'br_ghash_pclmul.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }
%struct.__loadu_si128 = type { <2 x i64> }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_pclmul_wrapper(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #0 !dbg !42 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i8* %1, metadata !52, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i8* %2, metadata !53, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i64 %3, metadata !54, metadata !DIExpression()), !dbg !51
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !55
  call void @public_in(%struct.smack_value* %5), !dbg !56
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !57
  call void @public_in(%struct.smack_value* %6), !dbg !58
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !59
  call void @public_in(%struct.smack_value* %7), !dbg !60
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !61
  call void @public_in(%struct.smack_value* %8), !dbg !62
  %9 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !63
  call void @public_in(%struct.smack_value* %9), !dbg !64
  %10 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 32), !dbg !65
  call void @public_in(%struct.smack_value* %10), !dbg !66
  call void @br_ghash_pclmul(i8* %0, i8* %1, i8* %2, i64 %3), !dbg !67
  ret void, !dbg !68
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_pclmul_wrapper_t() #0 !dbg !69 {
  %1 = call i8* (...) @gety(), !dbg !72
  call void @llvm.dbg.value(metadata i8* %1, metadata !73, metadata !DIExpression()), !dbg !74
  %2 = call i8* (...) @geth(), !dbg !75
  call void @llvm.dbg.value(metadata i8* %2, metadata !76, metadata !DIExpression()), !dbg !74
  %3 = call i8* (...) @getdata(), !dbg !77
  call void @llvm.dbg.value(metadata i8* %3, metadata !78, metadata !DIExpression()), !dbg !74
  %4 = call i64 (...) @getlen(), !dbg !79
  call void @llvm.dbg.value(metadata i64 %4, metadata !80, metadata !DIExpression()), !dbg !74
  call void @br_ghash_pclmul(i8* %1, i8* %2, i8* %3, i64 %4), !dbg !81
  ret void, !dbg !82
}

declare dso_local i8* @gety(...) #2

declare dso_local i8* @geth(...) #2

declare dso_local i8* @getdata(...) #2

declare dso_local i64 @getlen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void (i8*, i8*, i8*, i64)* @br_ghash_pclmul_get() #0 !dbg !83 {
  %1 = call i32 @pclmul_supported(), !dbg !89
  %2 = icmp ne i32 %1, 0, !dbg !89
  %3 = zext i1 %2 to i64, !dbg !89
  %4 = select i1 %2, void (i8*, i8*, i8*, i64)* @br_ghash_pclmul, void (i8*, i8*, i8*, i64)* null, !dbg !89
  ret void (i8*, i8*, i8*, i64)* %4, !dbg !90
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pclmul_supported() #0 !dbg !91 {
  %1 = call i32 @br_cpuid(i32 0, i32 0, i32 2, i32 0), !dbg !94
  ret i32 %1, !dbg !95
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_pclmul(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #3 !dbg !96 {
  %5 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i8* %1, metadata !99, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i8* %2, metadata !100, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i64 %3, metadata !101, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata [64 x i8]* %5, metadata !102, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i8* %2, metadata !108, metadata !DIExpression()), !dbg !98
  %6 = lshr i64 %3, 6, !dbg !111
  call void @llvm.dbg.value(metadata i64 %6, metadata !112, metadata !DIExpression()), !dbg !98
  %7 = and i64 %3, 63, !dbg !113
  call void @llvm.dbg.value(metadata i64 %7, metadata !101, metadata !DIExpression()), !dbg !98
  %8 = shl i64 %6, 6, !dbg !114
  %9 = getelementptr inbounds i8, i8* %2, i64 %8, !dbg !115
  call void @llvm.dbg.value(metadata i8* %9, metadata !116, metadata !DIExpression()), !dbg !98
  %10 = add i64 %7, 15, !dbg !117
  %11 = lshr i64 %10, 4, !dbg !118
  call void @llvm.dbg.value(metadata i64 %11, metadata !119, metadata !DIExpression()), !dbg !98
  %12 = and i64 %7, 15, !dbg !120
  %13 = icmp ne i64 %12, 0, !dbg !122
  br i1 %13, label %14, label %21, !dbg !123

14:                                               ; preds = %4
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 1 %9, i64 %7, i1 false), !dbg !124
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !126
  %17 = getelementptr inbounds i8, i8* %16, i64 %7, !dbg !127
  %18 = shl i64 %11, 4, !dbg !128
  %19 = sub i64 %18, %7, !dbg !129
  call void @llvm.memset.p0i8.i64(i8* align 1 %17, i8 0, i64 %19, i1 false), !dbg !130
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !131
  call void @llvm.dbg.value(metadata i8* %20, metadata !116, metadata !DIExpression()), !dbg !98
  br label %21, !dbg !132

21:                                               ; preds = %14, %4
  %.03 = phi i8* [ %20, %14 ], [ %9, %4 ], !dbg !98
  call void @llvm.dbg.value(metadata i8* %.03, metadata !116, metadata !DIExpression()), !dbg !98
  br label %22, !dbg !133

22:                                               ; preds = %21
  %23 = insertelement <16 x i8> undef, i8 15, i32 0, !dbg !134
  %24 = insertelement <16 x i8> %23, i8 14, i32 1, !dbg !134
  %25 = insertelement <16 x i8> %24, i8 13, i32 2, !dbg !134
  %26 = insertelement <16 x i8> %25, i8 12, i32 3, !dbg !134
  %27 = insertelement <16 x i8> %26, i8 11, i32 4, !dbg !134
  %28 = insertelement <16 x i8> %27, i8 10, i32 5, !dbg !134
  %29 = insertelement <16 x i8> %28, i8 9, i32 6, !dbg !134
  %30 = insertelement <16 x i8> %29, i8 8, i32 7, !dbg !134
  %31 = insertelement <16 x i8> %30, i8 7, i32 8, !dbg !134
  %32 = insertelement <16 x i8> %31, i8 6, i32 9, !dbg !134
  %33 = insertelement <16 x i8> %32, i8 5, i32 10, !dbg !134
  %34 = insertelement <16 x i8> %33, i8 4, i32 11, !dbg !134
  %35 = insertelement <16 x i8> %34, i8 3, i32 12, !dbg !134
  %36 = insertelement <16 x i8> %35, i8 2, i32 13, !dbg !134
  %37 = insertelement <16 x i8> %36, i8 1, i32 14, !dbg !134
  %38 = insertelement <16 x i8> %37, i8 0, i32 15, !dbg !134
  %39 = bitcast <16 x i8> %38 to <2 x i64>, !dbg !134
  call void @llvm.dbg.value(metadata <2 x i64> %39, metadata !136, metadata !DIExpression()), !dbg !98
  br label %40, !dbg !134

40:                                               ; preds = %22
  %41 = bitcast i8* %0 to <2 x i64>*, !dbg !137
  %42 = bitcast <2 x i64>* %41 to %struct.__loadu_si128*, !dbg !138
  %43 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %42, i32 0, i32 0, !dbg !138
  %44 = load <2 x i64>, <2 x i64>* %43, align 1, !dbg !138
  call void @llvm.dbg.value(metadata <2 x i64> %44, metadata !139, metadata !DIExpression()), !dbg !98
  %45 = bitcast i8* %1 to <2 x i64>*, !dbg !140
  %46 = bitcast <2 x i64>* %45 to %struct.__loadu_si128*, !dbg !141
  %47 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %46, i32 0, i32 0, !dbg !141
  %48 = load <2 x i64>, <2 x i64>* %47, align 1, !dbg !141
  call void @llvm.dbg.value(metadata <2 x i64> %48, metadata !142, metadata !DIExpression()), !dbg !98
  br label %49, !dbg !143

49:                                               ; preds = %40
  %50 = bitcast <2 x i64> %44 to <16 x i8>, !dbg !144
  %51 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !144
  %52 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %50, <16 x i8> %51) #8, !dbg !144
  %53 = bitcast <16 x i8> %52 to <2 x i64>, !dbg !144
  call void @llvm.dbg.value(metadata <2 x i64> %53, metadata !139, metadata !DIExpression()), !dbg !98
  br label %54, !dbg !144

54:                                               ; preds = %49
  br label %55, !dbg !146

55:                                               ; preds = %54
  %56 = bitcast <2 x i64> %48 to <16 x i8>, !dbg !147
  %57 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !147
  %58 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %56, <16 x i8> %57) #8, !dbg !147
  %59 = bitcast <16 x i8> %58 to <2 x i64>, !dbg !147
  call void @llvm.dbg.value(metadata <2 x i64> %59, metadata !142, metadata !DIExpression()), !dbg !98
  br label %60, !dbg !147

60:                                               ; preds = %55
  br label %61, !dbg !149

61:                                               ; preds = %60
  %62 = bitcast <2 x i64> %59 to <4 x i32>, !dbg !150
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !150
  %64 = bitcast <4 x i32> %63 to <2 x i64>, !dbg !150
  %65 = xor <2 x i64> %59, %64, !dbg !150
  call void @llvm.dbg.value(metadata <2 x i64> %65, metadata !152, metadata !DIExpression()), !dbg !98
  br label %66, !dbg !150

66:                                               ; preds = %61
  %67 = icmp ugt i64 %6, 0, !dbg !153
  br i1 %67, label %68, label %387, !dbg !155

68:                                               ; preds = %66
  br label %69, !dbg !156

69:                                               ; preds = %68
  %70 = call <2 x i64> @pclmulqdq11(<2 x i64> %59, <2 x i64> %59), !dbg !158
  call void @llvm.dbg.value(metadata <2 x i64> %70, metadata !160, metadata !DIExpression()), !dbg !161
  %71 = call <2 x i64> @pclmulqdq00(<2 x i64> %59, <2 x i64> %59), !dbg !158
  call void @llvm.dbg.value(metadata <2 x i64> %71, metadata !162, metadata !DIExpression()), !dbg !161
  %72 = bitcast <2 x i64> %70 to <4 x i32>, !dbg !158
  %73 = shufflevector <4 x i32> %72, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !158
  %74 = bitcast <4 x i32> %73 to <2 x i64>, !dbg !158
  call void @llvm.dbg.value(metadata <2 x i64> %74, metadata !163, metadata !DIExpression()), !dbg !161
  %75 = bitcast <2 x i64> %71 to <4 x i32>, !dbg !158
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !158
  %77 = bitcast <4 x i32> %76 to <2 x i64>, !dbg !158
  call void @llvm.dbg.value(metadata <2 x i64> %77, metadata !164, metadata !DIExpression()), !dbg !161
  br label %78, !dbg !158

78:                                               ; preds = %69
  %79 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %74, i32 1) #8, !dbg !165
  %80 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %70, i32 63) #8, !dbg !165
  %81 = or <2 x i64> %79, %80, !dbg !165
  call void @llvm.dbg.value(metadata <2 x i64> %81, metadata !163, metadata !DIExpression()), !dbg !161
  %82 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %70, i32 1) #8, !dbg !165
  %83 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %77, i32 63) #8, !dbg !165
  %84 = or <2 x i64> %82, %83, !dbg !165
  call void @llvm.dbg.value(metadata <2 x i64> %84, metadata !160, metadata !DIExpression()), !dbg !161
  %85 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %77, i32 1) #8, !dbg !165
  %86 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %71, i32 63) #8, !dbg !165
  %87 = or <2 x i64> %85, %86, !dbg !165
  call void @llvm.dbg.value(metadata <2 x i64> %87, metadata !164, metadata !DIExpression()), !dbg !161
  %88 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %71, i32 1) #8, !dbg !165
  call void @llvm.dbg.value(metadata <2 x i64> %88, metadata !162, metadata !DIExpression()), !dbg !161
  br label %89, !dbg !165

89:                                               ; preds = %78
  br label %90, !dbg !158

90:                                               ; preds = %89
  %91 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %88, i32 1) #8, !dbg !167
  %92 = xor <2 x i64> %88, %91, !dbg !167
  %93 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %88, i32 2) #8, !dbg !167
  %94 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %88, i32 7) #8, !dbg !167
  %95 = xor <2 x i64> %93, %94, !dbg !167
  %96 = xor <2 x i64> %92, %95, !dbg !167
  %97 = xor <2 x i64> %84, %96, !dbg !167
  call void @llvm.dbg.value(metadata <2 x i64> %97, metadata !160, metadata !DIExpression()), !dbg !161
  %98 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %88, i32 63) #8, !dbg !167
  %99 = xor <2 x i64> %87, %98, !dbg !167
  %100 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %88, i32 62) #8, !dbg !167
  %101 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %88, i32 57) #8, !dbg !167
  %102 = xor <2 x i64> %100, %101, !dbg !167
  %103 = xor <2 x i64> %99, %102, !dbg !167
  call void @llvm.dbg.value(metadata <2 x i64> %103, metadata !164, metadata !DIExpression()), !dbg !161
  %104 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %103, i32 1) #8, !dbg !167
  %105 = xor <2 x i64> %103, %104, !dbg !167
  %106 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %103, i32 2) #8, !dbg !167
  %107 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %103, i32 7) #8, !dbg !167
  %108 = xor <2 x i64> %106, %107, !dbg !167
  %109 = xor <2 x i64> %105, %108, !dbg !167
  %110 = xor <2 x i64> %81, %109, !dbg !167
  call void @llvm.dbg.value(metadata <2 x i64> %110, metadata !163, metadata !DIExpression()), !dbg !161
  %111 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %103, i32 63) #8, !dbg !167
  %112 = xor <2 x i64> %97, %111, !dbg !167
  %113 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %103, i32 62) #8, !dbg !167
  %114 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %103, i32 57) #8, !dbg !167
  %115 = xor <2 x i64> %113, %114, !dbg !167
  %116 = xor <2 x i64> %112, %115, !dbg !167
  call void @llvm.dbg.value(metadata <2 x i64> %116, metadata !160, metadata !DIExpression()), !dbg !161
  br label %117, !dbg !167

117:                                              ; preds = %90
  br label %118, !dbg !158

118:                                              ; preds = %117
  %119 = shufflevector <2 x i64> %116, <2 x i64> %110, <2 x i32> <i32 0, i32 2>, !dbg !169
  call void @llvm.dbg.value(metadata <2 x i64> %119, metadata !171, metadata !DIExpression()), !dbg !172
  %120 = xor <2 x i64> %110, %116, !dbg !169
  call void @llvm.dbg.value(metadata <2 x i64> %120, metadata !173, metadata !DIExpression()), !dbg !172
  br label %121, !dbg !169

121:                                              ; preds = %118
  br label %122, !dbg !158

122:                                              ; preds = %121
  %123 = call <2 x i64> @pclmulqdq11(<2 x i64> %59, <2 x i64> %119), !dbg !174
  call void @llvm.dbg.value(metadata <2 x i64> %123, metadata !175, metadata !DIExpression()), !dbg !172
  %124 = call <2 x i64> @pclmulqdq00(<2 x i64> %59, <2 x i64> %119), !dbg !176
  call void @llvm.dbg.value(metadata <2 x i64> %124, metadata !177, metadata !DIExpression()), !dbg !172
  %125 = call <2 x i64> @pclmulqdq00(<2 x i64> %65, <2 x i64> %120), !dbg !178
  %126 = xor <2 x i64> %123, %124, !dbg !179
  %127 = xor <2 x i64> %125, %126, !dbg !180
  call void @llvm.dbg.value(metadata <2 x i64> %127, metadata !181, metadata !DIExpression()), !dbg !172
  %128 = bitcast <2 x i64> %123 to <4 x i32>, !dbg !182
  %129 = shufflevector <4 x i32> %128, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !182
  %130 = bitcast <4 x i32> %129 to <2 x i64>, !dbg !182
  call void @llvm.dbg.value(metadata <2 x i64> %130, metadata !183, metadata !DIExpression()), !dbg !172
  %131 = bitcast <2 x i64> %127 to <4 x i32>, !dbg !184
  %132 = shufflevector <4 x i32> %131, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !184
  %133 = bitcast <4 x i32> %132 to <2 x i64>, !dbg !184
  %134 = xor <2 x i64> %123, %133, !dbg !185
  call void @llvm.dbg.value(metadata <2 x i64> %134, metadata !175, metadata !DIExpression()), !dbg !172
  %135 = bitcast <2 x i64> %124 to <4 x i32>, !dbg !186
  %136 = shufflevector <4 x i32> %135, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !186
  %137 = bitcast <4 x i32> %136 to <2 x i64>, !dbg !186
  %138 = xor <2 x i64> %127, %137, !dbg !187
  call void @llvm.dbg.value(metadata <2 x i64> %138, metadata !181, metadata !DIExpression()), !dbg !172
  br label %139, !dbg !188

139:                                              ; preds = %122
  %140 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %130, i32 1) #8, !dbg !189
  %141 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %134, i32 63) #8, !dbg !189
  %142 = or <2 x i64> %140, %141, !dbg !189
  call void @llvm.dbg.value(metadata <2 x i64> %142, metadata !183, metadata !DIExpression()), !dbg !172
  %143 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %134, i32 1) #8, !dbg !189
  %144 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %138, i32 63) #8, !dbg !189
  %145 = or <2 x i64> %143, %144, !dbg !189
  call void @llvm.dbg.value(metadata <2 x i64> %145, metadata !175, metadata !DIExpression()), !dbg !172
  %146 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %138, i32 1) #8, !dbg !189
  %147 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %124, i32 63) #8, !dbg !189
  %148 = or <2 x i64> %146, %147, !dbg !189
  call void @llvm.dbg.value(metadata <2 x i64> %148, metadata !181, metadata !DIExpression()), !dbg !172
  %149 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %124, i32 1) #8, !dbg !189
  call void @llvm.dbg.value(metadata <2 x i64> %149, metadata !177, metadata !DIExpression()), !dbg !172
  br label %150, !dbg !189

150:                                              ; preds = %139
  br label %151, !dbg !191

151:                                              ; preds = %150
  %152 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %149, i32 1) #8, !dbg !192
  %153 = xor <2 x i64> %149, %152, !dbg !192
  %154 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %149, i32 2) #8, !dbg !192
  %155 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %149, i32 7) #8, !dbg !192
  %156 = xor <2 x i64> %154, %155, !dbg !192
  %157 = xor <2 x i64> %153, %156, !dbg !192
  %158 = xor <2 x i64> %145, %157, !dbg !192
  call void @llvm.dbg.value(metadata <2 x i64> %158, metadata !175, metadata !DIExpression()), !dbg !172
  %159 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %149, i32 63) #8, !dbg !192
  %160 = xor <2 x i64> %148, %159, !dbg !192
  %161 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %149, i32 62) #8, !dbg !192
  %162 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %149, i32 57) #8, !dbg !192
  %163 = xor <2 x i64> %161, %162, !dbg !192
  %164 = xor <2 x i64> %160, %163, !dbg !192
  call void @llvm.dbg.value(metadata <2 x i64> %164, metadata !181, metadata !DIExpression()), !dbg !172
  %165 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %164, i32 1) #8, !dbg !192
  %166 = xor <2 x i64> %164, %165, !dbg !192
  %167 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %164, i32 2) #8, !dbg !192
  %168 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %164, i32 7) #8, !dbg !192
  %169 = xor <2 x i64> %167, %168, !dbg !192
  %170 = xor <2 x i64> %166, %169, !dbg !192
  %171 = xor <2 x i64> %142, %170, !dbg !192
  call void @llvm.dbg.value(metadata <2 x i64> %171, metadata !183, metadata !DIExpression()), !dbg !172
  %172 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %164, i32 63) #8, !dbg !192
  %173 = xor <2 x i64> %158, %172, !dbg !192
  %174 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %164, i32 62) #8, !dbg !192
  %175 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %164, i32 57) #8, !dbg !192
  %176 = xor <2 x i64> %174, %175, !dbg !192
  %177 = xor <2 x i64> %173, %176, !dbg !192
  call void @llvm.dbg.value(metadata <2 x i64> %177, metadata !175, metadata !DIExpression()), !dbg !172
  br label %178, !dbg !192

178:                                              ; preds = %151
  br label %179, !dbg !194

179:                                              ; preds = %178
  %180 = shufflevector <2 x i64> %177, <2 x i64> %171, <2 x i32> <i32 0, i32 2>, !dbg !195
  call void @llvm.dbg.value(metadata <2 x i64> %180, metadata !197, metadata !DIExpression()), !dbg !172
  %181 = xor <2 x i64> %171, %177, !dbg !195
  call void @llvm.dbg.value(metadata <2 x i64> %181, metadata !198, metadata !DIExpression()), !dbg !172
  br label %182, !dbg !195

182:                                              ; preds = %179
  br label %183, !dbg !199

183:                                              ; preds = %182
  %184 = call <2 x i64> @pclmulqdq11(<2 x i64> %119, <2 x i64> %119), !dbg !200
  call void @llvm.dbg.value(metadata <2 x i64> %184, metadata !202, metadata !DIExpression()), !dbg !203
  %185 = call <2 x i64> @pclmulqdq00(<2 x i64> %119, <2 x i64> %119), !dbg !200
  call void @llvm.dbg.value(metadata <2 x i64> %185, metadata !204, metadata !DIExpression()), !dbg !203
  %186 = bitcast <2 x i64> %184 to <4 x i32>, !dbg !200
  %187 = shufflevector <4 x i32> %186, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !200
  %188 = bitcast <4 x i32> %187 to <2 x i64>, !dbg !200
  call void @llvm.dbg.value(metadata <2 x i64> %188, metadata !205, metadata !DIExpression()), !dbg !203
  %189 = bitcast <2 x i64> %185 to <4 x i32>, !dbg !200
  %190 = shufflevector <4 x i32> %189, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !200
  %191 = bitcast <4 x i32> %190 to <2 x i64>, !dbg !200
  call void @llvm.dbg.value(metadata <2 x i64> %191, metadata !206, metadata !DIExpression()), !dbg !203
  br label %192, !dbg !200

192:                                              ; preds = %183
  %193 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %188, i32 1) #8, !dbg !207
  %194 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %184, i32 63) #8, !dbg !207
  %195 = or <2 x i64> %193, %194, !dbg !207
  call void @llvm.dbg.value(metadata <2 x i64> %195, metadata !205, metadata !DIExpression()), !dbg !203
  %196 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %184, i32 1) #8, !dbg !207
  %197 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %191, i32 63) #8, !dbg !207
  %198 = or <2 x i64> %196, %197, !dbg !207
  call void @llvm.dbg.value(metadata <2 x i64> %198, metadata !202, metadata !DIExpression()), !dbg !203
  %199 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %191, i32 1) #8, !dbg !207
  %200 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %185, i32 63) #8, !dbg !207
  %201 = or <2 x i64> %199, %200, !dbg !207
  call void @llvm.dbg.value(metadata <2 x i64> %201, metadata !206, metadata !DIExpression()), !dbg !203
  %202 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %185, i32 1) #8, !dbg !207
  call void @llvm.dbg.value(metadata <2 x i64> %202, metadata !204, metadata !DIExpression()), !dbg !203
  br label %203, !dbg !207

203:                                              ; preds = %192
  br label %204, !dbg !200

204:                                              ; preds = %203
  %205 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %202, i32 1) #8, !dbg !209
  %206 = xor <2 x i64> %202, %205, !dbg !209
  %207 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %202, i32 2) #8, !dbg !209
  %208 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %202, i32 7) #8, !dbg !209
  %209 = xor <2 x i64> %207, %208, !dbg !209
  %210 = xor <2 x i64> %206, %209, !dbg !209
  %211 = xor <2 x i64> %198, %210, !dbg !209
  call void @llvm.dbg.value(metadata <2 x i64> %211, metadata !202, metadata !DIExpression()), !dbg !203
  %212 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %202, i32 63) #8, !dbg !209
  %213 = xor <2 x i64> %201, %212, !dbg !209
  %214 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %202, i32 62) #8, !dbg !209
  %215 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %202, i32 57) #8, !dbg !209
  %216 = xor <2 x i64> %214, %215, !dbg !209
  %217 = xor <2 x i64> %213, %216, !dbg !209
  call void @llvm.dbg.value(metadata <2 x i64> %217, metadata !206, metadata !DIExpression()), !dbg !203
  %218 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %217, i32 1) #8, !dbg !209
  %219 = xor <2 x i64> %217, %218, !dbg !209
  %220 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %217, i32 2) #8, !dbg !209
  %221 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %217, i32 7) #8, !dbg !209
  %222 = xor <2 x i64> %220, %221, !dbg !209
  %223 = xor <2 x i64> %219, %222, !dbg !209
  %224 = xor <2 x i64> %195, %223, !dbg !209
  call void @llvm.dbg.value(metadata <2 x i64> %224, metadata !205, metadata !DIExpression()), !dbg !203
  %225 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %217, i32 63) #8, !dbg !209
  %226 = xor <2 x i64> %211, %225, !dbg !209
  %227 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %217, i32 62) #8, !dbg !209
  %228 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %217, i32 57) #8, !dbg !209
  %229 = xor <2 x i64> %227, %228, !dbg !209
  %230 = xor <2 x i64> %226, %229, !dbg !209
  call void @llvm.dbg.value(metadata <2 x i64> %230, metadata !202, metadata !DIExpression()), !dbg !203
  br label %231, !dbg !209

231:                                              ; preds = %204
  br label %232, !dbg !200

232:                                              ; preds = %231
  %233 = shufflevector <2 x i64> %230, <2 x i64> %224, <2 x i32> <i32 0, i32 2>, !dbg !211
  call void @llvm.dbg.value(metadata <2 x i64> %233, metadata !213, metadata !DIExpression()), !dbg !172
  %234 = xor <2 x i64> %224, %230, !dbg !211
  call void @llvm.dbg.value(metadata <2 x i64> %234, metadata !214, metadata !DIExpression()), !dbg !172
  br label %235, !dbg !211

235:                                              ; preds = %232
  br label %236, !dbg !200

236:                                              ; preds = %235
  br label %237, !dbg !215

237:                                              ; preds = %384, %236
  %.05 = phi i8* [ %2, %236 ], [ %285, %384 ], !dbg !98
  %.02 = phi i64 [ %6, %236 ], [ %238, %384 ], !dbg !98
  %.0 = phi <2 x i64> [ %53, %236 ], [ %385, %384 ], !dbg !98
  call void @llvm.dbg.value(metadata <2 x i64> %.0, metadata !139, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i64 %.02, metadata !112, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i8* %.05, metadata !108, metadata !DIExpression()), !dbg !98
  %238 = add i64 %.02, -1, !dbg !216
  call void @llvm.dbg.value(metadata i64 %238, metadata !112, metadata !DIExpression()), !dbg !98
  %239 = icmp ugt i64 %.02, 0, !dbg !217
  br i1 %239, label %240, label %386, !dbg !215

240:                                              ; preds = %237
  %241 = getelementptr inbounds i8, i8* %.05, i64 0, !dbg !218
  %242 = bitcast i8* %241 to <2 x i64>*, !dbg !220
  %243 = bitcast <2 x i64>* %242 to %struct.__loadu_si128*, !dbg !221
  %244 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %243, i32 0, i32 0, !dbg !221
  %245 = load <2 x i64>, <2 x i64>* %244, align 1, !dbg !221
  call void @llvm.dbg.value(metadata <2 x i64> %245, metadata !222, metadata !DIExpression()), !dbg !223
  %246 = getelementptr inbounds i8, i8* %.05, i64 16, !dbg !224
  %247 = bitcast i8* %246 to <2 x i64>*, !dbg !225
  %248 = bitcast <2 x i64>* %247 to %struct.__loadu_si128*, !dbg !226
  %249 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %248, i32 0, i32 0, !dbg !226
  %250 = load <2 x i64>, <2 x i64>* %249, align 1, !dbg !226
  call void @llvm.dbg.value(metadata <2 x i64> %250, metadata !227, metadata !DIExpression()), !dbg !223
  %251 = getelementptr inbounds i8, i8* %.05, i64 32, !dbg !228
  %252 = bitcast i8* %251 to <2 x i64>*, !dbg !229
  %253 = bitcast <2 x i64>* %252 to %struct.__loadu_si128*, !dbg !230
  %254 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %253, i32 0, i32 0, !dbg !230
  %255 = load <2 x i64>, <2 x i64>* %254, align 1, !dbg !230
  call void @llvm.dbg.value(metadata <2 x i64> %255, metadata !231, metadata !DIExpression()), !dbg !223
  %256 = getelementptr inbounds i8, i8* %.05, i64 48, !dbg !232
  %257 = bitcast i8* %256 to <2 x i64>*, !dbg !233
  %258 = bitcast <2 x i64>* %257 to %struct.__loadu_si128*, !dbg !234
  %259 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %258, i32 0, i32 0, !dbg !234
  %260 = load <2 x i64>, <2 x i64>* %259, align 1, !dbg !234
  call void @llvm.dbg.value(metadata <2 x i64> %260, metadata !235, metadata !DIExpression()), !dbg !223
  br label %261, !dbg !236

261:                                              ; preds = %240
  %262 = bitcast <2 x i64> %245 to <16 x i8>, !dbg !237
  %263 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !237
  %264 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %262, <16 x i8> %263) #8, !dbg !237
  %265 = bitcast <16 x i8> %264 to <2 x i64>, !dbg !237
  call void @llvm.dbg.value(metadata <2 x i64> %265, metadata !222, metadata !DIExpression()), !dbg !223
  br label %266, !dbg !237

266:                                              ; preds = %261
  br label %267, !dbg !239

267:                                              ; preds = %266
  %268 = bitcast <2 x i64> %250 to <16 x i8>, !dbg !240
  %269 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !240
  %270 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %268, <16 x i8> %269) #8, !dbg !240
  %271 = bitcast <16 x i8> %270 to <2 x i64>, !dbg !240
  call void @llvm.dbg.value(metadata <2 x i64> %271, metadata !227, metadata !DIExpression()), !dbg !223
  br label %272, !dbg !240

272:                                              ; preds = %267
  br label %273, !dbg !242

273:                                              ; preds = %272
  %274 = bitcast <2 x i64> %255 to <16 x i8>, !dbg !243
  %275 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !243
  %276 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %274, <16 x i8> %275) #8, !dbg !243
  %277 = bitcast <16 x i8> %276 to <2 x i64>, !dbg !243
  call void @llvm.dbg.value(metadata <2 x i64> %277, metadata !231, metadata !DIExpression()), !dbg !223
  br label %278, !dbg !243

278:                                              ; preds = %273
  br label %279, !dbg !245

279:                                              ; preds = %278
  %280 = bitcast <2 x i64> %260 to <16 x i8>, !dbg !246
  %281 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !246
  %282 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %280, <16 x i8> %281) #8, !dbg !246
  %283 = bitcast <16 x i8> %282 to <2 x i64>, !dbg !246
  call void @llvm.dbg.value(metadata <2 x i64> %283, metadata !235, metadata !DIExpression()), !dbg !223
  br label %284, !dbg !246

284:                                              ; preds = %279
  %285 = getelementptr inbounds i8, i8* %.05, i64 64, !dbg !248
  call void @llvm.dbg.value(metadata i8* %285, metadata !108, metadata !DIExpression()), !dbg !98
  %286 = xor <2 x i64> %265, %.0, !dbg !249
  call void @llvm.dbg.value(metadata <2 x i64> %286, metadata !222, metadata !DIExpression()), !dbg !223
  br label %287, !dbg !250

287:                                              ; preds = %284
  %288 = bitcast <2 x i64> %271 to <4 x i32>, !dbg !251
  %289 = shufflevector <4 x i32> %288, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !251
  %290 = bitcast <4 x i32> %289 to <2 x i64>, !dbg !251
  %291 = xor <2 x i64> %271, %290, !dbg !251
  call void @llvm.dbg.value(metadata <2 x i64> %291, metadata !253, metadata !DIExpression()), !dbg !223
  br label %292, !dbg !251

292:                                              ; preds = %287
  br label %293, !dbg !254

293:                                              ; preds = %292
  %294 = bitcast <2 x i64> %277 to <4 x i32>, !dbg !255
  %295 = shufflevector <4 x i32> %294, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !255
  %296 = bitcast <4 x i32> %295 to <2 x i64>, !dbg !255
  %297 = xor <2 x i64> %277, %296, !dbg !255
  call void @llvm.dbg.value(metadata <2 x i64> %297, metadata !257, metadata !DIExpression()), !dbg !223
  br label %298, !dbg !255

298:                                              ; preds = %293
  br label %299, !dbg !258

299:                                              ; preds = %298
  %300 = bitcast <2 x i64> %283 to <4 x i32>, !dbg !259
  %301 = shufflevector <4 x i32> %300, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !259
  %302 = bitcast <4 x i32> %301 to <2 x i64>, !dbg !259
  %303 = xor <2 x i64> %283, %302, !dbg !259
  call void @llvm.dbg.value(metadata <2 x i64> %303, metadata !261, metadata !DIExpression()), !dbg !223
  br label %304, !dbg !259

304:                                              ; preds = %299
  br label %305, !dbg !262

305:                                              ; preds = %304
  %306 = bitcast <2 x i64> %286 to <4 x i32>, !dbg !263
  %307 = shufflevector <4 x i32> %306, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !263
  %308 = bitcast <4 x i32> %307 to <2 x i64>, !dbg !263
  %309 = xor <2 x i64> %286, %308, !dbg !263
  call void @llvm.dbg.value(metadata <2 x i64> %309, metadata !265, metadata !DIExpression()), !dbg !223
  br label %310, !dbg !263

310:                                              ; preds = %305
  %311 = call <2 x i64> @pclmulqdq11(<2 x i64> %286, <2 x i64> %233), !dbg !266
  %312 = call <2 x i64> @pclmulqdq11(<2 x i64> %271, <2 x i64> %180), !dbg !267
  %313 = xor <2 x i64> %311, %312, !dbg !268
  %314 = call <2 x i64> @pclmulqdq11(<2 x i64> %277, <2 x i64> %119), !dbg !269
  %315 = call <2 x i64> @pclmulqdq11(<2 x i64> %283, <2 x i64> %59), !dbg !270
  %316 = xor <2 x i64> %314, %315, !dbg !271
  %317 = xor <2 x i64> %313, %316, !dbg !272
  call void @llvm.dbg.value(metadata <2 x i64> %317, metadata !175, metadata !DIExpression()), !dbg !172
  %318 = call <2 x i64> @pclmulqdq00(<2 x i64> %286, <2 x i64> %233), !dbg !273
  %319 = call <2 x i64> @pclmulqdq00(<2 x i64> %271, <2 x i64> %180), !dbg !274
  %320 = xor <2 x i64> %318, %319, !dbg !275
  %321 = call <2 x i64> @pclmulqdq00(<2 x i64> %277, <2 x i64> %119), !dbg !276
  %322 = call <2 x i64> @pclmulqdq00(<2 x i64> %283, <2 x i64> %59), !dbg !277
  %323 = xor <2 x i64> %321, %322, !dbg !278
  %324 = xor <2 x i64> %320, %323, !dbg !279
  call void @llvm.dbg.value(metadata <2 x i64> %324, metadata !177, metadata !DIExpression()), !dbg !172
  %325 = call <2 x i64> @pclmulqdq00(<2 x i64> %309, <2 x i64> %234), !dbg !280
  %326 = call <2 x i64> @pclmulqdq00(<2 x i64> %291, <2 x i64> %181), !dbg !281
  %327 = xor <2 x i64> %325, %326, !dbg !282
  %328 = call <2 x i64> @pclmulqdq00(<2 x i64> %297, <2 x i64> %120), !dbg !283
  %329 = call <2 x i64> @pclmulqdq00(<2 x i64> %303, <2 x i64> %65), !dbg !284
  %330 = xor <2 x i64> %328, %329, !dbg !285
  %331 = xor <2 x i64> %327, %330, !dbg !286
  call void @llvm.dbg.value(metadata <2 x i64> %331, metadata !181, metadata !DIExpression()), !dbg !172
  %332 = xor <2 x i64> %317, %324, !dbg !287
  %333 = xor <2 x i64> %331, %332, !dbg !288
  call void @llvm.dbg.value(metadata <2 x i64> %333, metadata !181, metadata !DIExpression()), !dbg !172
  %334 = bitcast <2 x i64> %317 to <4 x i32>, !dbg !289
  %335 = shufflevector <4 x i32> %334, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !289
  %336 = bitcast <4 x i32> %335 to <2 x i64>, !dbg !289
  call void @llvm.dbg.value(metadata <2 x i64> %336, metadata !183, metadata !DIExpression()), !dbg !172
  %337 = bitcast <2 x i64> %333 to <4 x i32>, !dbg !290
  %338 = shufflevector <4 x i32> %337, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !290
  %339 = bitcast <4 x i32> %338 to <2 x i64>, !dbg !290
  %340 = xor <2 x i64> %317, %339, !dbg !291
  call void @llvm.dbg.value(metadata <2 x i64> %340, metadata !175, metadata !DIExpression()), !dbg !172
  %341 = bitcast <2 x i64> %324 to <4 x i32>, !dbg !292
  %342 = shufflevector <4 x i32> %341, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !292
  %343 = bitcast <4 x i32> %342 to <2 x i64>, !dbg !292
  %344 = xor <2 x i64> %333, %343, !dbg !293
  call void @llvm.dbg.value(metadata <2 x i64> %344, metadata !181, metadata !DIExpression()), !dbg !172
  br label %345, !dbg !294

345:                                              ; preds = %310
  %346 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %336, i32 1) #8, !dbg !295
  %347 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %340, i32 63) #8, !dbg !295
  %348 = or <2 x i64> %346, %347, !dbg !295
  call void @llvm.dbg.value(metadata <2 x i64> %348, metadata !183, metadata !DIExpression()), !dbg !172
  %349 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %340, i32 1) #8, !dbg !295
  %350 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %344, i32 63) #8, !dbg !295
  %351 = or <2 x i64> %349, %350, !dbg !295
  call void @llvm.dbg.value(metadata <2 x i64> %351, metadata !175, metadata !DIExpression()), !dbg !172
  %352 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %344, i32 1) #8, !dbg !295
  %353 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %324, i32 63) #8, !dbg !295
  %354 = or <2 x i64> %352, %353, !dbg !295
  call void @llvm.dbg.value(metadata <2 x i64> %354, metadata !181, metadata !DIExpression()), !dbg !172
  %355 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %324, i32 1) #8, !dbg !295
  call void @llvm.dbg.value(metadata <2 x i64> %355, metadata !177, metadata !DIExpression()), !dbg !172
  br label %356, !dbg !295

356:                                              ; preds = %345
  br label %357, !dbg !297

357:                                              ; preds = %356
  %358 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %355, i32 1) #8, !dbg !298
  %359 = xor <2 x i64> %355, %358, !dbg !298
  %360 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %355, i32 2) #8, !dbg !298
  %361 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %355, i32 7) #8, !dbg !298
  %362 = xor <2 x i64> %360, %361, !dbg !298
  %363 = xor <2 x i64> %359, %362, !dbg !298
  %364 = xor <2 x i64> %351, %363, !dbg !298
  call void @llvm.dbg.value(metadata <2 x i64> %364, metadata !175, metadata !DIExpression()), !dbg !172
  %365 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %355, i32 63) #8, !dbg !298
  %366 = xor <2 x i64> %354, %365, !dbg !298
  %367 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %355, i32 62) #8, !dbg !298
  %368 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %355, i32 57) #8, !dbg !298
  %369 = xor <2 x i64> %367, %368, !dbg !298
  %370 = xor <2 x i64> %366, %369, !dbg !298
  call void @llvm.dbg.value(metadata <2 x i64> %370, metadata !181, metadata !DIExpression()), !dbg !172
  %371 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %370, i32 1) #8, !dbg !298
  %372 = xor <2 x i64> %370, %371, !dbg !298
  %373 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %370, i32 2) #8, !dbg !298
  %374 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %370, i32 7) #8, !dbg !298
  %375 = xor <2 x i64> %373, %374, !dbg !298
  %376 = xor <2 x i64> %372, %375, !dbg !298
  %377 = xor <2 x i64> %348, %376, !dbg !298
  call void @llvm.dbg.value(metadata <2 x i64> %377, metadata !183, metadata !DIExpression()), !dbg !172
  %378 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %370, i32 63) #8, !dbg !298
  %379 = xor <2 x i64> %364, %378, !dbg !298
  %380 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %370, i32 62) #8, !dbg !298
  %381 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %370, i32 57) #8, !dbg !298
  %382 = xor <2 x i64> %380, %381, !dbg !298
  %383 = xor <2 x i64> %379, %382, !dbg !298
  call void @llvm.dbg.value(metadata <2 x i64> %383, metadata !175, metadata !DIExpression()), !dbg !172
  br label %384, !dbg !298

384:                                              ; preds = %357
  %385 = shufflevector <2 x i64> %383, <2 x i64> %377, <2 x i32> <i32 0, i32 2>, !dbg !300
  call void @llvm.dbg.value(metadata <2 x i64> %385, metadata !139, metadata !DIExpression()), !dbg !98
  br label %237, !dbg !215, !llvm.loop !301

386:                                              ; preds = %237
  br label %387, !dbg !304

387:                                              ; preds = %386, %66
  %.1 = phi <2 x i64> [ %.0, %386 ], [ %53, %66 ], !dbg !144
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !139, metadata !DIExpression()), !dbg !98
  br label %388, !dbg !305

388:                                              ; preds = %465, %387
  %.14 = phi i8* [ %.03, %387 ], [ %402, %465 ], !dbg !98
  %.01 = phi i64 [ %11, %387 ], [ %389, %465 ], !dbg !98
  %.2 = phi <2 x i64> [ %.1, %387 ], [ %466, %465 ], !dbg !98
  call void @llvm.dbg.value(metadata <2 x i64> %.2, metadata !139, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i64 %.01, metadata !119, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i8* %.14, metadata !116, metadata !DIExpression()), !dbg !98
  %389 = add i64 %.01, -1, !dbg !306
  call void @llvm.dbg.value(metadata i64 %389, metadata !119, metadata !DIExpression()), !dbg !98
  %390 = icmp ugt i64 %.01, 0, !dbg !307
  br i1 %390, label %391, label %467, !dbg !305

391:                                              ; preds = %388
  %392 = bitcast i8* %.14 to <2 x i64>*, !dbg !308
  %393 = bitcast <2 x i64>* %392 to %struct.__loadu_si128*, !dbg !310
  %394 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %393, i32 0, i32 0, !dbg !310
  %395 = load <2 x i64>, <2 x i64>* %394, align 1, !dbg !310
  call void @llvm.dbg.value(metadata <2 x i64> %395, metadata !311, metadata !DIExpression()), !dbg !312
  br label %396, !dbg !313

396:                                              ; preds = %391
  %397 = bitcast <2 x i64> %395 to <16 x i8>, !dbg !314
  %398 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !314
  %399 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %397, <16 x i8> %398) #8, !dbg !314
  %400 = bitcast <16 x i8> %399 to <2 x i64>, !dbg !314
  call void @llvm.dbg.value(metadata <2 x i64> %400, metadata !311, metadata !DIExpression()), !dbg !312
  br label %401, !dbg !314

401:                                              ; preds = %396
  %402 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !316
  call void @llvm.dbg.value(metadata i8* %402, metadata !116, metadata !DIExpression()), !dbg !98
  %403 = xor <2 x i64> %400, %.2, !dbg !317
  call void @llvm.dbg.value(metadata <2 x i64> %403, metadata !311, metadata !DIExpression()), !dbg !312
  br label %404, !dbg !318

404:                                              ; preds = %401
  %405 = bitcast <2 x i64> %403 to <4 x i32>, !dbg !319
  %406 = shufflevector <4 x i32> %405, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !319
  %407 = bitcast <4 x i32> %406 to <2 x i64>, !dbg !319
  %408 = xor <2 x i64> %403, %407, !dbg !319
  call void @llvm.dbg.value(metadata <2 x i64> %408, metadata !321, metadata !DIExpression()), !dbg !312
  br label %409, !dbg !319

409:                                              ; preds = %404
  %410 = call <2 x i64> @pclmulqdq11(<2 x i64> %403, <2 x i64> %59), !dbg !322
  call void @llvm.dbg.value(metadata <2 x i64> %410, metadata !323, metadata !DIExpression()), !dbg !312
  %411 = call <2 x i64> @pclmulqdq00(<2 x i64> %403, <2 x i64> %59), !dbg !324
  call void @llvm.dbg.value(metadata <2 x i64> %411, metadata !325, metadata !DIExpression()), !dbg !312
  %412 = call <2 x i64> @pclmulqdq00(<2 x i64> %408, <2 x i64> %65), !dbg !326
  call void @llvm.dbg.value(metadata <2 x i64> %412, metadata !327, metadata !DIExpression()), !dbg !312
  %413 = xor <2 x i64> %410, %411, !dbg !328
  %414 = xor <2 x i64> %412, %413, !dbg !329
  call void @llvm.dbg.value(metadata <2 x i64> %414, metadata !327, metadata !DIExpression()), !dbg !312
  %415 = bitcast <2 x i64> %410 to <4 x i32>, !dbg !330
  %416 = shufflevector <4 x i32> %415, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !330
  %417 = bitcast <4 x i32> %416 to <2 x i64>, !dbg !330
  call void @llvm.dbg.value(metadata <2 x i64> %417, metadata !331, metadata !DIExpression()), !dbg !312
  %418 = bitcast <2 x i64> %414 to <4 x i32>, !dbg !332
  %419 = shufflevector <4 x i32> %418, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !332
  %420 = bitcast <4 x i32> %419 to <2 x i64>, !dbg !332
  %421 = xor <2 x i64> %410, %420, !dbg !333
  call void @llvm.dbg.value(metadata <2 x i64> %421, metadata !323, metadata !DIExpression()), !dbg !312
  %422 = bitcast <2 x i64> %411 to <4 x i32>, !dbg !334
  %423 = shufflevector <4 x i32> %422, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !334
  %424 = bitcast <4 x i32> %423 to <2 x i64>, !dbg !334
  %425 = xor <2 x i64> %414, %424, !dbg !335
  call void @llvm.dbg.value(metadata <2 x i64> %425, metadata !327, metadata !DIExpression()), !dbg !312
  br label %426, !dbg !336

426:                                              ; preds = %409
  %427 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %417, i32 1) #8, !dbg !337
  %428 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %421, i32 63) #8, !dbg !337
  %429 = or <2 x i64> %427, %428, !dbg !337
  call void @llvm.dbg.value(metadata <2 x i64> %429, metadata !331, metadata !DIExpression()), !dbg !312
  %430 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %421, i32 1) #8, !dbg !337
  %431 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %425, i32 63) #8, !dbg !337
  %432 = or <2 x i64> %430, %431, !dbg !337
  call void @llvm.dbg.value(metadata <2 x i64> %432, metadata !323, metadata !DIExpression()), !dbg !312
  %433 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %425, i32 1) #8, !dbg !337
  %434 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %411, i32 63) #8, !dbg !337
  %435 = or <2 x i64> %433, %434, !dbg !337
  call void @llvm.dbg.value(metadata <2 x i64> %435, metadata !327, metadata !DIExpression()), !dbg !312
  %436 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %411, i32 1) #8, !dbg !337
  call void @llvm.dbg.value(metadata <2 x i64> %436, metadata !325, metadata !DIExpression()), !dbg !312
  br label %437, !dbg !337

437:                                              ; preds = %426
  br label %438, !dbg !339

438:                                              ; preds = %437
  %439 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %436, i32 1) #8, !dbg !340
  %440 = xor <2 x i64> %436, %439, !dbg !340
  %441 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %436, i32 2) #8, !dbg !340
  %442 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %436, i32 7) #8, !dbg !340
  %443 = xor <2 x i64> %441, %442, !dbg !340
  %444 = xor <2 x i64> %440, %443, !dbg !340
  %445 = xor <2 x i64> %432, %444, !dbg !340
  call void @llvm.dbg.value(metadata <2 x i64> %445, metadata !323, metadata !DIExpression()), !dbg !312
  %446 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %436, i32 63) #8, !dbg !340
  %447 = xor <2 x i64> %435, %446, !dbg !340
  %448 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %436, i32 62) #8, !dbg !340
  %449 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %436, i32 57) #8, !dbg !340
  %450 = xor <2 x i64> %448, %449, !dbg !340
  %451 = xor <2 x i64> %447, %450, !dbg !340
  call void @llvm.dbg.value(metadata <2 x i64> %451, metadata !327, metadata !DIExpression()), !dbg !312
  %452 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %451, i32 1) #8, !dbg !340
  %453 = xor <2 x i64> %451, %452, !dbg !340
  %454 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %451, i32 2) #8, !dbg !340
  %455 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %451, i32 7) #8, !dbg !340
  %456 = xor <2 x i64> %454, %455, !dbg !340
  %457 = xor <2 x i64> %453, %456, !dbg !340
  %458 = xor <2 x i64> %429, %457, !dbg !340
  call void @llvm.dbg.value(metadata <2 x i64> %458, metadata !331, metadata !DIExpression()), !dbg !312
  %459 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %451, i32 63) #8, !dbg !340
  %460 = xor <2 x i64> %445, %459, !dbg !340
  %461 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %451, i32 62) #8, !dbg !340
  %462 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %451, i32 57) #8, !dbg !340
  %463 = xor <2 x i64> %461, %462, !dbg !340
  %464 = xor <2 x i64> %460, %463, !dbg !340
  call void @llvm.dbg.value(metadata <2 x i64> %464, metadata !323, metadata !DIExpression()), !dbg !312
  br label %465, !dbg !340

465:                                              ; preds = %438
  %466 = shufflevector <2 x i64> %464, <2 x i64> %458, <2 x i32> <i32 0, i32 2>, !dbg !342
  call void @llvm.dbg.value(metadata <2 x i64> %466, metadata !139, metadata !DIExpression()), !dbg !98
  br label %388, !dbg !305, !llvm.loop !343

467:                                              ; preds = %388
  br label %468, !dbg !345

468:                                              ; preds = %467
  %469 = bitcast <2 x i64> %.2 to <16 x i8>, !dbg !346
  %470 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !346
  %471 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %469, <16 x i8> %470) #8, !dbg !346
  %472 = bitcast <16 x i8> %471 to <2 x i64>, !dbg !346
  call void @llvm.dbg.value(metadata <2 x i64> %472, metadata !139, metadata !DIExpression()), !dbg !98
  br label %473, !dbg !346

473:                                              ; preds = %468
  %474 = bitcast i8* %0 to <2 x i64>*, !dbg !348
  %475 = bitcast <2 x i64>* %474 to %struct.__loadu_si128*, !dbg !349
  %476 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %475, i32 0, i32 0, !dbg !349
  store <2 x i64> %472, <2 x i64>* %476, align 1, !dbg !349
  ret void, !dbg !350
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readnone
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #6

; Function Attrs: noinline nounwind uwtable
define internal <2 x i64> @pclmulqdq11(<2 x i64> %0, <2 x i64> %1) #7 !dbg !351 {
  call void @llvm.dbg.value(metadata <2 x i64> %0, metadata !354, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata <2 x i64> %1, metadata !356, metadata !DIExpression()), !dbg !355
  %3 = call <2 x i64> asm "pclmulqdq $$0x11, $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %1, <2 x i64> %0) #6, !dbg !357, !srcloc !358
  call void @llvm.dbg.value(metadata <2 x i64> %3, metadata !354, metadata !DIExpression()), !dbg !355
  ret <2 x i64> %3, !dbg !359
}

; Function Attrs: noinline nounwind uwtable
define internal <2 x i64> @pclmulqdq00(<2 x i64> %0, <2 x i64> %1) #7 !dbg !360 {
  call void @llvm.dbg.value(metadata <2 x i64> %0, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata <2 x i64> %1, metadata !363, metadata !DIExpression()), !dbg !362
  %3 = call <2 x i64> asm "pclmulqdq $$0x00, $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %1, <2 x i64> %0) #6, !dbg !364, !srcloc !365
  call void @llvm.dbg.value(metadata <2 x i64> %3, metadata !361, metadata !DIExpression()), !dbg !362
  ret <2 x i64> %3, !dbg !366
}

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64>, i32) #6

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_cpuid(i32 %0, i32 %1, i32 %2, i32 %3) #0 !dbg !367 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 %1, metadata !378, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 %2, metadata !379, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 %3, metadata !380, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata i32* %5, metadata !381, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata i32* %6, metadata !383, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.declare(metadata i32* %7, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata i32* %8, metadata !387, metadata !DIExpression()), !dbg !388
  %9 = call i32 @__get_cpuid(i32 1, i32* %5, i32* %6, i32* %7, i32* %8), !dbg !389
  %10 = icmp ne i32 %9, 0, !dbg !389
  br i1 %10, label %11, label %29, !dbg !391

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4, !dbg !392
  %13 = and i32 %12, %0, !dbg !395
  %14 = icmp eq i32 %13, %0, !dbg !396
  br i1 %14, label %15, label %28, !dbg !397

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4, !dbg !398
  %17 = and i32 %16, %1, !dbg !399
  %18 = icmp eq i32 %17, %1, !dbg !400
  br i1 %18, label %19, label %28, !dbg !401

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4, !dbg !402
  %21 = and i32 %20, %2, !dbg !403
  %22 = icmp eq i32 %21, %2, !dbg !404
  br i1 %22, label %23, label %28, !dbg !405

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4, !dbg !406
  %25 = and i32 %24, %3, !dbg !407
  %26 = icmp eq i32 %25, %3, !dbg !408
  br i1 %26, label %27, label %28, !dbg !409

27:                                               ; preds = %23
  br label %30, !dbg !410

28:                                               ; preds = %23, %19, %15, %11
  br label %29, !dbg !412

29:                                               ; preds = %28, %4
  br label %30, !dbg !413

30:                                               ; preds = %29, %27
  %.0 = phi i32 [ 1, %27 ], [ 0, %29 ], !dbg !377
  ret i32 %.0, !dbg !414
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @__get_cpuid(i32 %0, i32* noalias %1, i32* noalias %2, i32* noalias %3, i32* noalias %4) #0 !dbg !415 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32* %1, metadata !422, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32* %2, metadata !423, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32* %3, metadata !424, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32* %4, metadata !425, metadata !DIExpression()), !dbg !421
  %6 = and i32 %0, -2147483648, !dbg !426
  %7 = call i32 @__get_cpuid_max(i32 %6, i32* null), !dbg !427
  call void @llvm.dbg.value(metadata i32 %7, metadata !428, metadata !DIExpression()), !dbg !421
  %8 = icmp eq i32 %7, 0, !dbg !429
  br i1 %8, label %11, label %9, !dbg !431

9:                                                ; preds = %5
  %10 = icmp ult i32 %7, %0, !dbg !432
  br i1 %10, label %11, label %12, !dbg !433

11:                                               ; preds = %9, %5
  br label %18, !dbg !434

12:                                               ; preds = %9
  %13 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !435, !srcloc !436
  %14 = extractvalue { i32, i32, i32, i32 } %13, 0, !dbg !435
  %15 = extractvalue { i32, i32, i32, i32 } %13, 1, !dbg !435
  %16 = extractvalue { i32, i32, i32, i32 } %13, 2, !dbg !435
  %17 = extractvalue { i32, i32, i32, i32 } %13, 3, !dbg !435
  store i32 %14, i32* %1, align 4, !dbg !435
  store i32 %15, i32* %2, align 4, !dbg !435
  store i32 %16, i32* %3, align 4, !dbg !435
  store i32 %17, i32* %4, align 4, !dbg !435
  br label %18, !dbg !437

18:                                               ; preds = %12, %11
  %.0 = phi i32 [ 0, %11 ], [ 1, %12 ], !dbg !421
  ret i32 %.0, !dbg !438
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %0, i32* noalias %1) #0 !dbg !439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32* %1, metadata !444, metadata !DIExpression()), !dbg !443
  %3 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !445, !srcloc !446
  %4 = extractvalue { i32, i32, i32, i32 } %3, 0, !dbg !445
  %5 = extractvalue { i32, i32, i32, i32 } %3, 1, !dbg !445
  %6 = extractvalue { i32, i32, i32, i32 } %3, 2, !dbg !445
  %7 = extractvalue { i32, i32, i32, i32 } %3, 3, !dbg !445
  call void @llvm.dbg.value(metadata i32 %4, metadata !447, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 %5, metadata !448, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 %6, metadata !449, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i32 %7, metadata !450, metadata !DIExpression()), !dbg !443
  %8 = icmp ne i32* %1, null, !dbg !451
  br i1 %8, label %9, label %10, !dbg !453

9:                                                ; preds = %2
  store i32 %5, i32* %1, align 4, !dbg !454
  br label %10, !dbg !455

10:                                               ; preds = %9, %2
  ret i32 %4, !dbg !456
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+pclmul,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { nounwind readnone }
attributes #7 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !3}
!llvm.ident = !{!38, !38}
!llvm.module.flags = !{!39, !40, !41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "br_ghash_pclmul.c", directory: "/home/luwei/bech/BearSSL/ghash_pclmul")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !5, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "../BearSSL/src/hash/ghash_pclmul.c", directory: "/home/luwei/bech/BearSSL/ghash_pclmul")
!5 = !{!6, !12, !18, !19, !25, !30, !33, !34}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i", file: !7, line: 16, baseType: !8, align: 128)
!7 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/emmintrin.h", directory: "")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, flags: DIFlagVector, elements: !10)
!9 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v4si", file: !13, line: 15, baseType: !14)
!13 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/xmmintrin.h", directory: "")
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, flags: DIFlagVector, elements: !16)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17}
!17 = !DISubrange(count: 4)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__loadu_si128", file: !7, line: 3550, size: 128, elements: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !21, file: !7, line: 3551, baseType: !24, size: 128, align: 8)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i_u", file: !7, line: 19, baseType: !8, align: 8)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v16qi", file: !7, line: 25, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 128, flags: DIFlagVector, elements: !28)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29}
!29 = !DISubrange(count: 16)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2du", file: !7, line: 28, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, flags: DIFlagVector, elements: !10)
!32 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2di", file: !7, line: 23, baseType: !8)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__storeu_si128", file: !7, line: 4013, size: 128, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !35, file: !7, line: 4014, baseType: !24, size: 128, align: 8)
!38 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!39 = !{i32 7, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = distinct !DISubprogram(name: "br_ghash_pclmul_wrapper", scope: !1, file: !1, line: 3, type: !43, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !18, !45, !45, !47}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!49 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !DILocalVariable(name: "y", arg: 1, scope: !42, file: !1, line: 3, type: !18)
!51 = !DILocation(line: 0, scope: !42)
!52 = !DILocalVariable(name: "h", arg: 2, scope: !42, file: !1, line: 3, type: !45)
!53 = !DILocalVariable(name: "data", arg: 3, scope: !42, file: !1, line: 3, type: !45)
!54 = !DILocalVariable(name: "len", arg: 4, scope: !42, file: !1, line: 3, type: !47)
!55 = !DILocation(line: 4, column: 12, scope: !42)
!56 = !DILocation(line: 4, column: 2, scope: !42)
!57 = !DILocation(line: 5, column: 12, scope: !42)
!58 = !DILocation(line: 5, column: 2, scope: !42)
!59 = !DILocation(line: 6, column: 12, scope: !42)
!60 = !DILocation(line: 6, column: 2, scope: !42)
!61 = !DILocation(line: 7, column: 12, scope: !42)
!62 = !DILocation(line: 7, column: 2, scope: !42)
!63 = !DILocation(line: 9, column: 12, scope: !42)
!64 = !DILocation(line: 9, column: 2, scope: !42)
!65 = !DILocation(line: 10, column: 12, scope: !42)
!66 = !DILocation(line: 10, column: 2, scope: !42)
!67 = !DILocation(line: 12, column: 2, scope: !42)
!68 = !DILocation(line: 13, column: 1, scope: !42)
!69 = distinct !DISubprogram(name: "br_ghash_pclmul_wrapper_t", scope: !1, file: !1, line: 21, type: !70, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!70 = !DISubroutineType(types: !71)
!71 = !{null}
!72 = !DILocation(line: 22, column: 12, scope: !69)
!73 = !DILocalVariable(name: "y", scope: !69, file: !1, line: 22, type: !18)
!74 = !DILocation(line: 0, scope: !69)
!75 = !DILocation(line: 23, column: 19, scope: !69)
!76 = !DILocalVariable(name: "h", scope: !69, file: !1, line: 23, type: !45)
!77 = !DILocation(line: 24, column: 22, scope: !69)
!78 = !DILocalVariable(name: "data", scope: !69, file: !1, line: 24, type: !45)
!79 = !DILocation(line: 25, column: 17, scope: !69)
!80 = !DILocalVariable(name: "len", scope: !69, file: !1, line: 25, type: !47)
!81 = !DILocation(line: 26, column: 2, scope: !69)
!82 = !DILocation(line: 27, column: 1, scope: !69)
!83 = distinct !DISubprogram(name: "br_ghash_pclmul_get", scope: !4, file: !4, line: 50, type: !84, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!84 = !DISubroutineType(types: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_ghash", file: !87, line: 1239, baseType: !88)
!87 = !DIFile(filename: "../BearSSL/inc/bearssl_hash.h", directory: "/home/luwei/bech/BearSSL/ghash_pclmul")
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!89 = !DILocation(line: 52, column: 9, scope: !83)
!90 = !DILocation(line: 52, column: 2, scope: !83)
!91 = distinct !DISubprogram(name: "pclmul_supported", scope: !4, file: !4, line: 39, type: !92, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!92 = !DISubroutineType(types: !93)
!93 = !{!15}
!94 = !DILocation(line: 45, column: 9, scope: !91)
!95 = !DILocation(line: 45, column: 2, scope: !91)
!96 = distinct !DISubprogram(name: "br_ghash_pclmul", scope: !4, file: !4, line: 233, type: !43, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!97 = !DILocalVariable(name: "y", arg: 1, scope: !96, file: !4, line: 233, type: !18)
!98 = !DILocation(line: 0, scope: !96)
!99 = !DILocalVariable(name: "h", arg: 2, scope: !96, file: !4, line: 233, type: !45)
!100 = !DILocalVariable(name: "data", arg: 3, scope: !96, file: !4, line: 233, type: !45)
!101 = !DILocalVariable(name: "len", arg: 4, scope: !96, file: !4, line: 233, type: !47)
!102 = !DILocalVariable(name: "tmp", scope: !96, file: !4, line: 236, type: !103)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 512, elements: !105)
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !{!106}
!106 = !DISubrange(count: 64)
!107 = !DILocation(line: 236, column: 16, scope: !96)
!108 = !DILocalVariable(name: "buf1", scope: !96, file: !4, line: 235, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!111 = !DILocation(line: 248, column: 13, scope: !96)
!112 = !DILocalVariable(name: "num4", scope: !96, file: !4, line: 237, type: !47)
!113 = !DILocation(line: 249, column: 6, scope: !96)
!114 = !DILocation(line: 250, column: 22, scope: !96)
!115 = !DILocation(line: 250, column: 14, scope: !96)
!116 = !DILocalVariable(name: "buf2", scope: !96, file: !4, line: 235, type: !109)
!117 = !DILocation(line: 251, column: 14, scope: !96)
!118 = !DILocation(line: 251, column: 20, scope: !96)
!119 = !DILocalVariable(name: "num1", scope: !96, file: !4, line: 237, type: !47)
!120 = !DILocation(line: 252, column: 11, scope: !121)
!121 = distinct !DILexicalBlock(scope: !96, file: !4, line: 252, column: 6)
!122 = !DILocation(line: 252, column: 17, scope: !121)
!123 = !DILocation(line: 252, column: 6, scope: !96)
!124 = !DILocation(line: 253, column: 3, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !4, line: 252, column: 23)
!126 = !DILocation(line: 254, column: 10, scope: !125)
!127 = !DILocation(line: 254, column: 14, scope: !125)
!128 = !DILocation(line: 254, column: 30, scope: !125)
!129 = !DILocation(line: 254, column: 36, scope: !125)
!130 = !DILocation(line: 254, column: 3, scope: !125)
!131 = !DILocation(line: 255, column: 10, scope: !125)
!132 = !DILocation(line: 256, column: 2, scope: !125)
!133 = !DILocation(line: 261, column: 2, scope: !96)
!134 = !DILocation(line: 261, column: 2, scope: !135)
!135 = distinct !DILexicalBlock(scope: !96, file: !4, line: 261, column: 2)
!136 = !DILocalVariable(name: "byteswap_index", scope: !96, file: !4, line: 239, type: !6)
!137 = !DILocation(line: 266, column: 23, scope: !96)
!138 = !DILocation(line: 266, column: 7, scope: !96)
!139 = !DILocalVariable(name: "yw", scope: !96, file: !4, line: 238, type: !6)
!140 = !DILocation(line: 267, column: 24, scope: !96)
!141 = !DILocation(line: 267, column: 8, scope: !96)
!142 = !DILocalVariable(name: "h1w", scope: !96, file: !4, line: 238, type: !6)
!143 = !DILocation(line: 268, column: 2, scope: !96)
!144 = !DILocation(line: 268, column: 2, scope: !145)
!145 = distinct !DILexicalBlock(scope: !96, file: !4, line: 268, column: 2)
!146 = !DILocation(line: 269, column: 2, scope: !96)
!147 = !DILocation(line: 269, column: 2, scope: !148)
!148 = distinct !DILexicalBlock(scope: !96, file: !4, line: 269, column: 2)
!149 = !DILocation(line: 270, column: 2, scope: !96)
!150 = !DILocation(line: 270, column: 2, scope: !151)
!151 = distinct !DILexicalBlock(scope: !96, file: !4, line: 270, column: 2)
!152 = !DILocalVariable(name: "h1x", scope: !96, file: !4, line: 238, type: !6)
!153 = !DILocation(line: 272, column: 11, scope: !154)
!154 = distinct !DILexicalBlock(scope: !96, file: !4, line: 272, column: 6)
!155 = !DILocation(line: 272, column: 6, scope: !96)
!156 = !DILocation(line: 279, column: 3, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !4, line: 272, column: 16)
!158 = !DILocation(line: 279, column: 3, scope: !159)
!159 = distinct !DILexicalBlock(scope: !157, file: !4, line: 279, column: 3)
!160 = !DILocalVariable(name: "z1", scope: !159, file: !4, line: 279, type: !6)
!161 = !DILocation(line: 0, scope: !159)
!162 = !DILocalVariable(name: "z3", scope: !159, file: !4, line: 279, type: !6)
!163 = !DILocalVariable(name: "z0", scope: !159, file: !4, line: 279, type: !6)
!164 = !DILocalVariable(name: "z2", scope: !159, file: !4, line: 279, type: !6)
!165 = !DILocation(line: 279, column: 3, scope: !166)
!166 = distinct !DILexicalBlock(scope: !159, file: !4, line: 279, column: 3)
!167 = !DILocation(line: 279, column: 3, scope: !168)
!168 = distinct !DILexicalBlock(scope: !159, file: !4, line: 279, column: 3)
!169 = !DILocation(line: 279, column: 3, scope: !170)
!170 = distinct !DILexicalBlock(scope: !159, file: !4, line: 279, column: 3)
!171 = !DILocalVariable(name: "h2w", scope: !157, file: !4, line: 273, type: !6)
!172 = !DILocation(line: 0, scope: !157)
!173 = !DILocalVariable(name: "h2x", scope: !157, file: !4, line: 273, type: !6)
!174 = !DILocation(line: 284, column: 8, scope: !157)
!175 = !DILocalVariable(name: "t1", scope: !157, file: !4, line: 274, type: !6)
!176 = !DILocation(line: 285, column: 8, scope: !157)
!177 = !DILocalVariable(name: "t3", scope: !157, file: !4, line: 274, type: !6)
!178 = !DILocation(line: 286, column: 22, scope: !157)
!179 = !DILocation(line: 287, column: 4, scope: !157)
!180 = !DILocation(line: 286, column: 8, scope: !157)
!181 = !DILocalVariable(name: "t2", scope: !157, file: !4, line: 274, type: !6)
!182 = !DILocation(line: 288, column: 8, scope: !157)
!183 = !DILocalVariable(name: "t0", scope: !157, file: !4, line: 274, type: !6)
!184 = !DILocation(line: 289, column: 26, scope: !157)
!185 = !DILocation(line: 289, column: 8, scope: !157)
!186 = !DILocation(line: 290, column: 26, scope: !157)
!187 = !DILocation(line: 290, column: 8, scope: !157)
!188 = !DILocation(line: 291, column: 3, scope: !157)
!189 = !DILocation(line: 291, column: 3, scope: !190)
!190 = distinct !DILexicalBlock(scope: !157, file: !4, line: 291, column: 3)
!191 = !DILocation(line: 292, column: 3, scope: !157)
!192 = !DILocation(line: 292, column: 3, scope: !193)
!193 = distinct !DILexicalBlock(scope: !157, file: !4, line: 292, column: 3)
!194 = !DILocation(line: 293, column: 3, scope: !157)
!195 = !DILocation(line: 293, column: 3, scope: !196)
!196 = distinct !DILexicalBlock(scope: !157, file: !4, line: 293, column: 3)
!197 = !DILocalVariable(name: "h3w", scope: !157, file: !4, line: 273, type: !6)
!198 = !DILocalVariable(name: "h3x", scope: !157, file: !4, line: 273, type: !6)
!199 = !DILocation(line: 298, column: 3, scope: !157)
!200 = !DILocation(line: 298, column: 3, scope: !201)
!201 = distinct !DILexicalBlock(scope: !157, file: !4, line: 298, column: 3)
!202 = !DILocalVariable(name: "z1", scope: !201, file: !4, line: 298, type: !6)
!203 = !DILocation(line: 0, scope: !201)
!204 = !DILocalVariable(name: "z3", scope: !201, file: !4, line: 298, type: !6)
!205 = !DILocalVariable(name: "z0", scope: !201, file: !4, line: 298, type: !6)
!206 = !DILocalVariable(name: "z2", scope: !201, file: !4, line: 298, type: !6)
!207 = !DILocation(line: 298, column: 3, scope: !208)
!208 = distinct !DILexicalBlock(scope: !201, file: !4, line: 298, column: 3)
!209 = !DILocation(line: 298, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !201, file: !4, line: 298, column: 3)
!211 = !DILocation(line: 298, column: 3, scope: !212)
!212 = distinct !DILexicalBlock(scope: !201, file: !4, line: 298, column: 3)
!213 = !DILocalVariable(name: "h4w", scope: !157, file: !4, line: 273, type: !6)
!214 = !DILocalVariable(name: "h4x", scope: !157, file: !4, line: 273, type: !6)
!215 = !DILocation(line: 300, column: 3, scope: !157)
!216 = !DILocation(line: 300, column: 15, scope: !157)
!217 = !DILocation(line: 300, column: 18, scope: !157)
!218 = !DILocation(line: 304, column: 40, scope: !219)
!219 = distinct !DILexicalBlock(scope: !157, file: !4, line: 300, column: 23)
!220 = !DILocation(line: 304, column: 26, scope: !219)
!221 = !DILocation(line: 304, column: 10, scope: !219)
!222 = !DILocalVariable(name: "aw0", scope: !219, file: !4, line: 301, type: !6)
!223 = !DILocation(line: 0, scope: !219)
!224 = !DILocation(line: 305, column: 40, scope: !219)
!225 = !DILocation(line: 305, column: 26, scope: !219)
!226 = !DILocation(line: 305, column: 10, scope: !219)
!227 = !DILocalVariable(name: "aw1", scope: !219, file: !4, line: 301, type: !6)
!228 = !DILocation(line: 306, column: 40, scope: !219)
!229 = !DILocation(line: 306, column: 26, scope: !219)
!230 = !DILocation(line: 306, column: 10, scope: !219)
!231 = !DILocalVariable(name: "aw2", scope: !219, file: !4, line: 301, type: !6)
!232 = !DILocation(line: 307, column: 40, scope: !219)
!233 = !DILocation(line: 307, column: 26, scope: !219)
!234 = !DILocation(line: 307, column: 10, scope: !219)
!235 = !DILocalVariable(name: "aw3", scope: !219, file: !4, line: 301, type: !6)
!236 = !DILocation(line: 308, column: 4, scope: !219)
!237 = !DILocation(line: 308, column: 4, scope: !238)
!238 = distinct !DILexicalBlock(scope: !219, file: !4, line: 308, column: 4)
!239 = !DILocation(line: 309, column: 4, scope: !219)
!240 = !DILocation(line: 309, column: 4, scope: !241)
!241 = distinct !DILexicalBlock(scope: !219, file: !4, line: 309, column: 4)
!242 = !DILocation(line: 310, column: 4, scope: !219)
!243 = !DILocation(line: 310, column: 4, scope: !244)
!244 = distinct !DILexicalBlock(scope: !219, file: !4, line: 310, column: 4)
!245 = !DILocation(line: 311, column: 4, scope: !219)
!246 = !DILocation(line: 311, column: 4, scope: !247)
!247 = distinct !DILexicalBlock(scope: !219, file: !4, line: 311, column: 4)
!248 = !DILocation(line: 312, column: 9, scope: !219)
!249 = !DILocation(line: 314, column: 10, scope: !219)
!250 = !DILocation(line: 315, column: 4, scope: !219)
!251 = !DILocation(line: 315, column: 4, scope: !252)
!252 = distinct !DILexicalBlock(scope: !219, file: !4, line: 315, column: 4)
!253 = !DILocalVariable(name: "ax1", scope: !219, file: !4, line: 302, type: !6)
!254 = !DILocation(line: 316, column: 4, scope: !219)
!255 = !DILocation(line: 316, column: 4, scope: !256)
!256 = distinct !DILexicalBlock(scope: !219, file: !4, line: 316, column: 4)
!257 = !DILocalVariable(name: "ax2", scope: !219, file: !4, line: 302, type: !6)
!258 = !DILocation(line: 317, column: 4, scope: !219)
!259 = !DILocation(line: 317, column: 4, scope: !260)
!260 = distinct !DILexicalBlock(scope: !219, file: !4, line: 317, column: 4)
!261 = !DILocalVariable(name: "ax3", scope: !219, file: !4, line: 302, type: !6)
!262 = !DILocation(line: 318, column: 4, scope: !219)
!263 = !DILocation(line: 318, column: 4, scope: !264)
!264 = distinct !DILexicalBlock(scope: !219, file: !4, line: 318, column: 4)
!265 = !DILocalVariable(name: "ax0", scope: !219, file: !4, line: 302, type: !6)
!266 = !DILocation(line: 322, column: 6, scope: !219)
!267 = !DILocation(line: 323, column: 6, scope: !219)
!268 = !DILocation(line: 321, column: 5, scope: !219)
!269 = !DILocation(line: 325, column: 6, scope: !219)
!270 = !DILocation(line: 326, column: 6, scope: !219)
!271 = !DILocation(line: 324, column: 5, scope: !219)
!272 = !DILocation(line: 320, column: 9, scope: !219)
!273 = !DILocation(line: 329, column: 6, scope: !219)
!274 = !DILocation(line: 330, column: 6, scope: !219)
!275 = !DILocation(line: 328, column: 5, scope: !219)
!276 = !DILocation(line: 332, column: 6, scope: !219)
!277 = !DILocation(line: 333, column: 6, scope: !219)
!278 = !DILocation(line: 331, column: 5, scope: !219)
!279 = !DILocation(line: 327, column: 9, scope: !219)
!280 = !DILocation(line: 336, column: 6, scope: !219)
!281 = !DILocation(line: 337, column: 6, scope: !219)
!282 = !DILocation(line: 335, column: 5, scope: !219)
!283 = !DILocation(line: 339, column: 6, scope: !219)
!284 = !DILocation(line: 340, column: 6, scope: !219)
!285 = !DILocation(line: 338, column: 5, scope: !219)
!286 = !DILocation(line: 334, column: 9, scope: !219)
!287 = !DILocation(line: 341, column: 27, scope: !219)
!288 = !DILocation(line: 341, column: 9, scope: !219)
!289 = !DILocation(line: 342, column: 9, scope: !219)
!290 = !DILocation(line: 343, column: 27, scope: !219)
!291 = !DILocation(line: 343, column: 9, scope: !219)
!292 = !DILocation(line: 344, column: 27, scope: !219)
!293 = !DILocation(line: 344, column: 9, scope: !219)
!294 = !DILocation(line: 345, column: 4, scope: !219)
!295 = !DILocation(line: 345, column: 4, scope: !296)
!296 = distinct !DILexicalBlock(scope: !219, file: !4, line: 345, column: 4)
!297 = !DILocation(line: 346, column: 4, scope: !219)
!298 = !DILocation(line: 346, column: 4, scope: !299)
!299 = distinct !DILexicalBlock(scope: !219, file: !4, line: 346, column: 4)
!300 = !DILocation(line: 347, column: 9, scope: !219)
!301 = distinct !{!301, !215, !302, !303}
!302 = !DILocation(line: 348, column: 3, scope: !157)
!303 = !{!"llvm.loop.mustprogress"}
!304 = !DILocation(line: 349, column: 2, scope: !157)
!305 = !DILocation(line: 351, column: 2, scope: !96)
!306 = !DILocation(line: 351, column: 14, scope: !96)
!307 = !DILocation(line: 351, column: 17, scope: !96)
!308 = !DILocation(line: 355, column: 24, scope: !309)
!309 = distinct !DILexicalBlock(scope: !96, file: !4, line: 351, column: 22)
!310 = !DILocation(line: 355, column: 8, scope: !309)
!311 = !DILocalVariable(name: "aw", scope: !309, file: !4, line: 352, type: !6)
!312 = !DILocation(line: 0, scope: !309)
!313 = !DILocation(line: 356, column: 3, scope: !309)
!314 = !DILocation(line: 356, column: 3, scope: !315)
!315 = distinct !DILexicalBlock(scope: !309, file: !4, line: 356, column: 3)
!316 = !DILocation(line: 357, column: 8, scope: !309)
!317 = !DILocation(line: 359, column: 8, scope: !309)
!318 = !DILocation(line: 360, column: 3, scope: !309)
!319 = !DILocation(line: 360, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !309, file: !4, line: 360, column: 3)
!321 = !DILocalVariable(name: "ax", scope: !309, file: !4, line: 352, type: !6)
!322 = !DILocation(line: 362, column: 8, scope: !309)
!323 = !DILocalVariable(name: "t1", scope: !309, file: !4, line: 353, type: !6)
!324 = !DILocation(line: 363, column: 8, scope: !309)
!325 = !DILocalVariable(name: "t3", scope: !309, file: !4, line: 353, type: !6)
!326 = !DILocation(line: 364, column: 8, scope: !309)
!327 = !DILocalVariable(name: "t2", scope: !309, file: !4, line: 353, type: !6)
!328 = !DILocation(line: 365, column: 26, scope: !309)
!329 = !DILocation(line: 365, column: 8, scope: !309)
!330 = !DILocation(line: 366, column: 8, scope: !309)
!331 = !DILocalVariable(name: "t0", scope: !309, file: !4, line: 353, type: !6)
!332 = !DILocation(line: 367, column: 26, scope: !309)
!333 = !DILocation(line: 367, column: 8, scope: !309)
!334 = !DILocation(line: 368, column: 26, scope: !309)
!335 = !DILocation(line: 368, column: 8, scope: !309)
!336 = !DILocation(line: 369, column: 3, scope: !309)
!337 = !DILocation(line: 369, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !309, file: !4, line: 369, column: 3)
!339 = !DILocation(line: 370, column: 3, scope: !309)
!340 = !DILocation(line: 370, column: 3, scope: !341)
!341 = distinct !DILexicalBlock(scope: !309, file: !4, line: 370, column: 3)
!342 = !DILocation(line: 371, column: 8, scope: !309)
!343 = distinct !{!343, !305, !344, !303}
!344 = !DILocation(line: 372, column: 2, scope: !96)
!345 = !DILocation(line: 374, column: 2, scope: !96)
!346 = !DILocation(line: 374, column: 2, scope: !347)
!347 = distinct !DILexicalBlock(scope: !96, file: !4, line: 374, column: 2)
!348 = !DILocation(line: 375, column: 19, scope: !96)
!349 = !DILocation(line: 375, column: 2, scope: !96)
!350 = !DILocation(line: 376, column: 1, scope: !96)
!351 = distinct !DISubprogram(name: "pclmulqdq11", scope: !4, file: !4, line: 134, type: !352, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!352 = !DISubroutineType(types: !353)
!353 = !{!6, !6, !6}
!354 = !DILocalVariable(name: "x", arg: 1, scope: !351, file: !4, line: 134, type: !6)
!355 = !DILocation(line: 0, scope: !351)
!356 = !DILocalVariable(name: "y", arg: 2, scope: !351, file: !4, line: 134, type: !6)
!357 = !DILocation(line: 136, column: 2, scope: !351)
!358 = !{i32 4644}
!359 = !DILocation(line: 137, column: 2, scope: !351)
!360 = distinct !DISubprogram(name: "pclmulqdq00", scope: !4, file: !4, line: 127, type: !352, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!361 = !DILocalVariable(name: "x", arg: 1, scope: !360, file: !4, line: 127, type: !6)
!362 = !DILocation(line: 0, scope: !360)
!363 = !DILocalVariable(name: "y", arg: 2, scope: !360, file: !4, line: 127, type: !6)
!364 = !DILocation(line: 129, column: 2, scope: !360)
!365 = !{i32 4496}
!366 = !DILocation(line: 130, column: 2, scope: !360)
!367 = distinct !DISubprogram(name: "br_cpuid", scope: !368, file: !368, line: 2541, type: !369, scopeLine: 2543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!368 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech/BearSSL/ghash_pclmul")
!369 = !DISubroutineType(types: !370)
!370 = !{!15, !371, !371, !371, !371}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !372, line: 26, baseType: !373)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !374, line: 42, baseType: !375)
!374 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!375 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!376 = !DILocalVariable(name: "mask_eax", arg: 1, scope: !367, file: !368, line: 2541, type: !371)
!377 = !DILocation(line: 0, scope: !367)
!378 = !DILocalVariable(name: "mask_ebx", arg: 2, scope: !367, file: !368, line: 2541, type: !371)
!379 = !DILocalVariable(name: "mask_ecx", arg: 3, scope: !367, file: !368, line: 2542, type: !371)
!380 = !DILocalVariable(name: "mask_edx", arg: 4, scope: !367, file: !368, line: 2542, type: !371)
!381 = !DILocalVariable(name: "eax", scope: !367, file: !368, line: 2545, type: !375)
!382 = !DILocation(line: 2545, column: 11, scope: !367)
!383 = !DILocalVariable(name: "ebx", scope: !367, file: !368, line: 2545, type: !375)
!384 = !DILocation(line: 2545, column: 16, scope: !367)
!385 = !DILocalVariable(name: "ecx", scope: !367, file: !368, line: 2545, type: !375)
!386 = !DILocation(line: 2545, column: 21, scope: !367)
!387 = !DILocalVariable(name: "edx", scope: !367, file: !368, line: 2545, type: !375)
!388 = !DILocation(line: 2545, column: 26, scope: !367)
!389 = !DILocation(line: 2547, column: 6, scope: !390)
!390 = distinct !DILexicalBlock(scope: !367, file: !368, line: 2547, column: 6)
!391 = !DILocation(line: 2547, column: 6, scope: !367)
!392 = !DILocation(line: 2548, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !368, line: 2548, column: 7)
!394 = distinct !DILexicalBlock(scope: !390, file: !368, line: 2547, column: 46)
!395 = !DILocation(line: 2548, column: 12, scope: !393)
!396 = !DILocation(line: 2548, column: 24, scope: !393)
!397 = !DILocation(line: 2549, column: 4, scope: !393)
!398 = !DILocation(line: 2549, column: 8, scope: !393)
!399 = !DILocation(line: 2549, column: 12, scope: !393)
!400 = !DILocation(line: 2549, column: 24, scope: !393)
!401 = !DILocation(line: 2550, column: 4, scope: !393)
!402 = !DILocation(line: 2550, column: 8, scope: !393)
!403 = !DILocation(line: 2550, column: 12, scope: !393)
!404 = !DILocation(line: 2550, column: 24, scope: !393)
!405 = !DILocation(line: 2551, column: 4, scope: !393)
!406 = !DILocation(line: 2551, column: 8, scope: !393)
!407 = !DILocation(line: 2551, column: 12, scope: !393)
!408 = !DILocation(line: 2551, column: 24, scope: !393)
!409 = !DILocation(line: 2548, column: 7, scope: !394)
!410 = !DILocation(line: 2553, column: 4, scope: !411)
!411 = distinct !DILexicalBlock(scope: !393, file: !368, line: 2552, column: 3)
!412 = !DILocation(line: 2555, column: 2, scope: !394)
!413 = !DILocation(line: 2568, column: 2, scope: !367)
!414 = !DILocation(line: 2569, column: 1, scope: !367)
!415 = distinct !DISubprogram(name: "__get_cpuid", scope: !416, file: !416, line: 292, type: !417, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!416 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/cpuid.h", directory: "")
!417 = !DISubroutineType(types: !418)
!418 = !{!15, !375, !419, !419, !419, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!420 = !DILocalVariable(name: "__leaf", arg: 1, scope: !415, file: !416, line: 292, type: !375)
!421 = !DILocation(line: 0, scope: !415)
!422 = !DILocalVariable(name: "__eax", arg: 2, scope: !415, file: !416, line: 292, type: !419)
!423 = !DILocalVariable(name: "__ebx", arg: 3, scope: !415, file: !416, line: 293, type: !419)
!424 = !DILocalVariable(name: "__ecx", arg: 4, scope: !415, file: !416, line: 293, type: !419)
!425 = !DILocalVariable(name: "__edx", arg: 5, scope: !415, file: !416, line: 294, type: !419)
!426 = !DILocation(line: 296, column: 54, scope: !415)
!427 = !DILocation(line: 296, column: 31, scope: !415)
!428 = !DILocalVariable(name: "__max_leaf", scope: !415, file: !416, line: 296, type: !375)
!429 = !DILocation(line: 298, column: 20, scope: !430)
!430 = distinct !DILexicalBlock(scope: !415, file: !416, line: 298, column: 9)
!431 = !DILocation(line: 298, column: 25, scope: !430)
!432 = !DILocation(line: 298, column: 39, scope: !430)
!433 = !DILocation(line: 298, column: 9, scope: !415)
!434 = !DILocation(line: 299, column: 9, scope: !430)
!435 = !DILocation(line: 301, column: 5, scope: !415)
!436 = !{i32 -2143833858, i32 -2143833822, i32 -2143833798}
!437 = !DILocation(line: 302, column: 5, scope: !415)
!438 = !DILocation(line: 303, column: 1, scope: !415)
!439 = distinct !DISubprogram(name: "__get_cpuid_max", scope: !416, file: !416, line: 262, type: !440, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!440 = !DISubroutineType(types: !441)
!441 = !{!15, !375, !419}
!442 = !DILocalVariable(name: "__leaf", arg: 1, scope: !439, file: !416, line: 262, type: !375)
!443 = !DILocation(line: 0, scope: !439)
!444 = !DILocalVariable(name: "__sig", arg: 2, scope: !439, file: !416, line: 262, type: !419)
!445 = !DILocation(line: 286, column: 5, scope: !439)
!446 = !{i32 -2143834064, i32 -2143834028, i32 -2143834004}
!447 = !DILocalVariable(name: "__eax", scope: !439, file: !416, line: 264, type: !375)
!448 = !DILocalVariable(name: "__ebx", scope: !439, file: !416, line: 264, type: !375)
!449 = !DILocalVariable(name: "__ecx", scope: !439, file: !416, line: 264, type: !375)
!450 = !DILocalVariable(name: "__edx", scope: !439, file: !416, line: 264, type: !375)
!451 = !DILocation(line: 287, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !439, file: !416, line: 287, column: 9)
!453 = !DILocation(line: 287, column: 9, scope: !439)
!454 = !DILocation(line: 288, column: 16, scope: !452)
!455 = !DILocation(line: 288, column: 9, scope: !452)
!456 = !DILocation(line: 289, column: 5, scope: !439)
