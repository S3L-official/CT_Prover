; ModuleID = 'br_ghash_ctmul.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul_wrapper(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #0 !dbg !19 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %1, metadata !29, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %2, metadata !30, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i64 %3, metadata !31, metadata !DIExpression()), !dbg !28
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !32
  call void @public_in(%struct.smack_value* %5), !dbg !33
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !34
  call void @public_in(%struct.smack_value* %6), !dbg !35
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !36
  call void @public_in(%struct.smack_value* %7), !dbg !37
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !38
  call void @public_in(%struct.smack_value* %8), !dbg !39
  %9 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !40
  call void @public_in(%struct.smack_value* %9), !dbg !41
  %10 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 32), !dbg !42
  call void @public_in(%struct.smack_value* %10), !dbg !43
  call void @br_ghash_ctmul(i8* %0, i8* %1, i8* %2, i64 %3), !dbg !44
  ret void, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul_wrapper_t() #0 !dbg !46 {
  %1 = call i8* (...) @gety(), !dbg !49
  call void @llvm.dbg.value(metadata i8* %1, metadata !50, metadata !DIExpression()), !dbg !51
  %2 = call i8* (...) @geth(), !dbg !52
  call void @llvm.dbg.value(metadata i8* %2, metadata !53, metadata !DIExpression()), !dbg !51
  %3 = call i8* (...) @getdata(), !dbg !54
  call void @llvm.dbg.value(metadata i8* %3, metadata !55, metadata !DIExpression()), !dbg !51
  %4 = call i64 (...) @getlen(), !dbg !56
  call void @llvm.dbg.value(metadata i64 %4, metadata !57, metadata !DIExpression()), !dbg !51
  call void @br_ghash_ctmul(i8* %1, i8* %2, i8* %3, i64 %4), !dbg !58
  ret void, !dbg !59
}

declare dso_local i8* @gety(...) #2

declare dso_local i8* @geth(...) #2

declare dso_local i8* @getdata(...) #2

declare dso_local i64 @getlen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #0 !dbg !60 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca [16 x i8], align 16
  %8 = alloca [9 x i32], align 16
  %9 = alloca [9 x i32], align 16
  %10 = alloca [8 x i32], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %1, metadata !63, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %2, metadata !64, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i64 %3, metadata !65, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !66, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i8* %2, metadata !73, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %0, metadata !76, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %1, metadata !78, metadata !DIExpression()), !dbg !62
  %11 = call i32 @br_dec32be(i8* %0), !dbg !79
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !80
  store i32 %11, i32* %12, align 4, !dbg !81
  %13 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !82
  %14 = call i32 @br_dec32be(i8* %13), !dbg !83
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !84
  store i32 %14, i32* %15, align 8, !dbg !85
  %16 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !86
  %17 = call i32 @br_dec32be(i8* %16), !dbg !87
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !88
  store i32 %17, i32* %18, align 4, !dbg !89
  %19 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !90
  %20 = call i32 @br_dec32be(i8* %19), !dbg !91
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !92
  store i32 %20, i32* %21, align 16, !dbg !93
  %22 = call i32 @br_dec32be(i8* %1), !dbg !94
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !95
  store i32 %22, i32* %23, align 4, !dbg !96
  %24 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !97
  %25 = call i32 @br_dec32be(i8* %24), !dbg !98
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !99
  store i32 %25, i32* %26, align 8, !dbg !100
  %27 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !101
  %28 = call i32 @br_dec32be(i8* %27), !dbg !102
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !103
  store i32 %28, i32* %29, align 4, !dbg !104
  %30 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !105
  %31 = call i32 @br_dec32be(i8* %30), !dbg !106
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !107
  store i32 %31, i32* %32, align 16, !dbg !108
  br label %33, !dbg !109

33:                                               ; preds = %315, %4
  %.04 = phi i64 [ %3, %4 ], [ %.15, %315 ]
  %.02 = phi i8* [ %2, %4 ], [ %.13, %315 ], !dbg !62
  call void @llvm.dbg.value(metadata i8* %.02, metadata !73, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i64 %.04, metadata !65, metadata !DIExpression()), !dbg !62
  %34 = icmp ugt i64 %.04, 0, !dbg !110
  br i1 %34, label %35, label %321, !dbg !109

35:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !111, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata [9 x i32]* %8, metadata !117, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata [9 x i32]* %9, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [8 x i32]* %10, metadata !124, metadata !DIExpression()), !dbg !128
  %36 = icmp uge i64 %.04, 16, !dbg !129
  br i1 %36, label %37, label %40, !dbg !131

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %.02, metadata !132, metadata !DIExpression()), !dbg !133
  %38 = getelementptr inbounds i8, i8* %.02, i64 16, !dbg !134
  call void @llvm.dbg.value(metadata i8* %38, metadata !73, metadata !DIExpression()), !dbg !62
  %39 = sub i64 %.04, 16, !dbg !136
  call void @llvm.dbg.value(metadata i64 %39, metadata !65, metadata !DIExpression()), !dbg !62
  br label %46, !dbg !137

40:                                               ; preds = %35
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 1 %.02, i64 %.04, i1 false), !dbg !138
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !140
  %43 = getelementptr inbounds i8, i8* %42, i64 %.04, !dbg !141
  %44 = sub i64 16, %.04, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* align 1 %43, i8 0, i64 %44, i1 false), !dbg !143
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !144
  call void @llvm.dbg.value(metadata i8* %45, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 0, metadata !65, metadata !DIExpression()), !dbg !62
  br label %46

46:                                               ; preds = %40, %37
  %.15 = phi i64 [ %39, %37 ], [ 0, %40 ], !dbg !145
  %.13 = phi i8* [ %38, %37 ], [ %.02, %40 ], !dbg !62
  %.01 = phi i8* [ %.02, %37 ], [ %45, %40 ], !dbg !145
  call void @llvm.dbg.value(metadata i8* %.01, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i8* %.13, metadata !73, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i64 %.15, metadata !65, metadata !DIExpression()), !dbg !62
  %47 = call i32 @br_dec32be(i8* %.01), !dbg !146
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !147
  %49 = load i32, i32* %48, align 4, !dbg !148
  %50 = xor i32 %49, %47, !dbg !148
  store i32 %50, i32* %48, align 4, !dbg !148
  %51 = getelementptr inbounds i8, i8* %.01, i64 4, !dbg !149
  %52 = call i32 @br_dec32be(i8* %51), !dbg !150
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !151
  %54 = load i32, i32* %53, align 8, !dbg !152
  %55 = xor i32 %54, %52, !dbg !152
  store i32 %55, i32* %53, align 8, !dbg !152
  %56 = getelementptr inbounds i8, i8* %.01, i64 8, !dbg !153
  %57 = call i32 @br_dec32be(i8* %56), !dbg !154
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !155
  %59 = load i32, i32* %58, align 4, !dbg !156
  %60 = xor i32 %59, %57, !dbg !156
  store i32 %60, i32* %58, align 4, !dbg !156
  %61 = getelementptr inbounds i8, i8* %.01, i64 12, !dbg !157
  %62 = call i32 @br_dec32be(i8* %61), !dbg !158
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !159
  %64 = load i32, i32* %63, align 16, !dbg !160
  %65 = xor i32 %64, %62, !dbg !160
  store i32 %65, i32* %63, align 16, !dbg !160
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !161
  %67 = load i32, i32* %66, align 16, !dbg !161
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !162
  store i32 %67, i32* %68, align 16, !dbg !163
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !164
  %70 = load i32, i32* %69, align 16, !dbg !164
  %71 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !165
  store i32 %70, i32* %71, align 16, !dbg !166
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !167
  %73 = load i32, i32* %72, align 4, !dbg !167
  %74 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !168
  store i32 %73, i32* %74, align 4, !dbg !169
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !170
  %76 = load i32, i32* %75, align 4, !dbg !170
  %77 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !171
  store i32 %76, i32* %77, align 4, !dbg !172
  %78 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !173
  %79 = load i32, i32* %78, align 16, !dbg !173
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !174
  %81 = load i32, i32* %80, align 4, !dbg !174
  %82 = xor i32 %79, %81, !dbg !175
  %83 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 2, !dbg !176
  store i32 %82, i32* %83, align 8, !dbg !177
  %84 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !178
  %85 = load i32, i32* %84, align 16, !dbg !178
  %86 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !179
  %87 = load i32, i32* %86, align 4, !dbg !179
  %88 = xor i32 %85, %87, !dbg !180
  %89 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2, !dbg !181
  store i32 %88, i32* %89, align 8, !dbg !182
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !183
  %91 = load i32, i32* %90, align 8, !dbg !183
  %92 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !184
  store i32 %91, i32* %92, align 4, !dbg !185
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !186
  %94 = load i32, i32* %93, align 8, !dbg !186
  %95 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !187
  store i32 %94, i32* %95, align 4, !dbg !188
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !189
  %97 = load i32, i32* %96, align 4, !dbg !189
  %98 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !190
  store i32 %97, i32* %98, align 16, !dbg !191
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !192
  %100 = load i32, i32* %99, align 4, !dbg !192
  %101 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !193
  store i32 %100, i32* %101, align 16, !dbg !194
  %102 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !195
  %103 = load i32, i32* %102, align 4, !dbg !195
  %104 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !196
  %105 = load i32, i32* %104, align 16, !dbg !196
  %106 = xor i32 %103, %105, !dbg !197
  %107 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 5, !dbg !198
  store i32 %106, i32* %107, align 4, !dbg !199
  %108 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !200
  %109 = load i32, i32* %108, align 4, !dbg !200
  %110 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !201
  %111 = load i32, i32* %110, align 16, !dbg !201
  %112 = xor i32 %109, %111, !dbg !202
  %113 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5, !dbg !203
  store i32 %112, i32* %113, align 4, !dbg !204
  %114 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !205
  %115 = load i32, i32* %114, align 16, !dbg !205
  %116 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !206
  %117 = load i32, i32* %116, align 4, !dbg !206
  %118 = xor i32 %115, %117, !dbg !207
  %119 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !208
  store i32 %118, i32* %119, align 8, !dbg !209
  %120 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !210
  %121 = load i32, i32* %120, align 16, !dbg !210
  %122 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !211
  %123 = load i32, i32* %122, align 4, !dbg !211
  %124 = xor i32 %121, %123, !dbg !212
  %125 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !213
  store i32 %124, i32* %125, align 8, !dbg !214
  %126 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !215
  %127 = load i32, i32* %126, align 4, !dbg !215
  %128 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !216
  %129 = load i32, i32* %128, align 16, !dbg !216
  %130 = xor i32 %127, %129, !dbg !217
  %131 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !218
  store i32 %130, i32* %131, align 4, !dbg !219
  %132 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !220
  %133 = load i32, i32* %132, align 4, !dbg !220
  %134 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !221
  %135 = load i32, i32* %134, align 16, !dbg !221
  %136 = xor i32 %133, %135, !dbg !222
  %137 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !223
  store i32 %136, i32* %137, align 4, !dbg !224
  %138 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !225
  %139 = load i32, i32* %138, align 8, !dbg !225
  %140 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !226
  %141 = load i32, i32* %140, align 4, !dbg !226
  %142 = xor i32 %139, %141, !dbg !227
  %143 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 8, !dbg !228
  store i32 %142, i32* %143, align 16, !dbg !229
  %144 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !230
  %145 = load i32, i32* %144, align 8, !dbg !230
  %146 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !231
  %147 = load i32, i32* %146, align 4, !dbg !231
  %148 = xor i32 %145, %147, !dbg !232
  %149 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8, !dbg !233
  store i32 %148, i32* %149, align 16, !dbg !234
  call void @llvm.dbg.value(metadata i32 0, metadata !235, metadata !DIExpression()), !dbg !133
  br label %150, !dbg !237

150:                                              ; preds = %163, %46
  %.0 = phi i32 [ 0, %46 ], [ %164, %163 ], !dbg !239
  call void @llvm.dbg.value(metadata i32 %.0, metadata !235, metadata !DIExpression()), !dbg !133
  %151 = icmp slt i32 %.0, 9, !dbg !240
  br i1 %151, label %152, label %165, !dbg !242

152:                                              ; preds = %150
  %153 = sext i32 %.0 to i64, !dbg !243
  %154 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %153, !dbg !243
  %155 = sext i32 %.0 to i64, !dbg !245
  %156 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %155, !dbg !245
  %157 = sext i32 %.0 to i64, !dbg !246
  %158 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %157, !dbg !246
  %159 = load i32, i32* %158, align 4, !dbg !246
  %160 = sext i32 %.0 to i64, !dbg !247
  %161 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %160, !dbg !247
  %162 = load i32, i32* %161, align 4, !dbg !247
  call void @bmul(i32* %154, i32* %156, i32 %159, i32 %162), !dbg !248
  br label %163, !dbg !249

163:                                              ; preds = %152
  %164 = add nsw i32 %.0, 1, !dbg !250
  call void @llvm.dbg.value(metadata i32 %164, metadata !235, metadata !DIExpression()), !dbg !133
  br label %150, !dbg !251, !llvm.loop !252

165:                                              ; preds = %150
  %166 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !255
  %167 = load i32, i32* %166, align 16, !dbg !255
  call void @llvm.dbg.value(metadata i32 %167, metadata !256, metadata !DIExpression()), !dbg !133
  %168 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !257
  %169 = load i32, i32* %168, align 16, !dbg !257
  %170 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 2, !dbg !258
  %171 = load i32, i32* %170, align 8, !dbg !258
  %172 = xor i32 %169, %171, !dbg !259
  %173 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !260
  %174 = load i32, i32* %173, align 16, !dbg !260
  %175 = xor i32 %172, %174, !dbg !261
  %176 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !262
  %177 = load i32, i32* %176, align 4, !dbg !262
  %178 = xor i32 %175, %177, !dbg !263
  call void @llvm.dbg.value(metadata i32 %178, metadata !264, metadata !DIExpression()), !dbg !133
  %179 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !265
  %180 = load i32, i32* %179, align 4, !dbg !265
  %181 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2, !dbg !266
  %182 = load i32, i32* %181, align 8, !dbg !266
  %183 = xor i32 %180, %182, !dbg !267
  %184 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !268
  %185 = load i32, i32* %184, align 16, !dbg !268
  %186 = xor i32 %183, %185, !dbg !269
  %187 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !270
  %188 = load i32, i32* %187, align 4, !dbg !270
  %189 = xor i32 %186, %188, !dbg !271
  call void @llvm.dbg.value(metadata i32 %189, metadata !272, metadata !DIExpression()), !dbg !133
  %190 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !273
  %191 = load i32, i32* %190, align 4, !dbg !273
  call void @llvm.dbg.value(metadata i32 %191, metadata !274, metadata !DIExpression()), !dbg !133
  %192 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !275
  %193 = load i32, i32* %192, align 4, !dbg !275
  call void @llvm.dbg.value(metadata i32 %193, metadata !276, metadata !DIExpression()), !dbg !133
  %194 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !277
  %195 = load i32, i32* %194, align 4, !dbg !277
  %196 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 5, !dbg !278
  %197 = load i32, i32* %196, align 4, !dbg !278
  %198 = xor i32 %195, %197, !dbg !279
  %199 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !280
  %200 = load i32, i32* %199, align 4, !dbg !280
  %201 = xor i32 %198, %200, !dbg !281
  %202 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !282
  %203 = load i32, i32* %202, align 16, !dbg !282
  %204 = xor i32 %201, %203, !dbg !283
  call void @llvm.dbg.value(metadata i32 %204, metadata !284, metadata !DIExpression()), !dbg !133
  %205 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !285
  %206 = load i32, i32* %205, align 16, !dbg !285
  %207 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5, !dbg !286
  %208 = load i32, i32* %207, align 4, !dbg !286
  %209 = xor i32 %206, %208, !dbg !287
  %210 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !288
  %211 = load i32, i32* %210, align 4, !dbg !288
  %212 = xor i32 %209, %211, !dbg !289
  %213 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !290
  %214 = load i32, i32* %213, align 16, !dbg !290
  %215 = xor i32 %212, %214, !dbg !291
  call void @llvm.dbg.value(metadata i32 %215, metadata !292, metadata !DIExpression()), !dbg !133
  %216 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !293
  %217 = load i32, i32* %216, align 16, !dbg !293
  call void @llvm.dbg.value(metadata i32 %217, metadata !294, metadata !DIExpression()), !dbg !133
  %218 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !295
  %219 = load i32, i32* %218, align 8, !dbg !295
  call void @llvm.dbg.value(metadata i32 %219, metadata !296, metadata !DIExpression()), !dbg !133
  %220 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !297
  %221 = load i32, i32* %220, align 8, !dbg !297
  %222 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 8, !dbg !298
  %223 = load i32, i32* %222, align 16, !dbg !298
  %224 = xor i32 %221, %223, !dbg !299
  %225 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !300
  %226 = load i32, i32* %225, align 8, !dbg !300
  %227 = xor i32 %224, %226, !dbg !301
  %228 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !302
  %229 = load i32, i32* %228, align 4, !dbg !302
  %230 = xor i32 %227, %229, !dbg !303
  call void @llvm.dbg.value(metadata i32 %230, metadata !304, metadata !DIExpression()), !dbg !133
  %231 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !305
  %232 = load i32, i32* %231, align 4, !dbg !305
  %233 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8, !dbg !306
  %234 = load i32, i32* %233, align 16, !dbg !306
  %235 = xor i32 %232, %234, !dbg !307
  %236 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !308
  %237 = load i32, i32* %236, align 8, !dbg !308
  %238 = xor i32 %235, %237, !dbg !309
  %239 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !310
  %240 = load i32, i32* %239, align 4, !dbg !310
  %241 = xor i32 %238, %240, !dbg !311
  call void @llvm.dbg.value(metadata i32 %241, metadata !312, metadata !DIExpression()), !dbg !133
  %242 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !313
  %243 = load i32, i32* %242, align 4, !dbg !313
  call void @llvm.dbg.value(metadata i32 %243, metadata !314, metadata !DIExpression()), !dbg !133
  %244 = xor i32 %167, %193, !dbg !315
  %245 = xor i32 %219, %244, !dbg !316
  call void @llvm.dbg.value(metadata i32 %245, metadata !296, metadata !DIExpression()), !dbg !133
  %246 = xor i32 %178, %204, !dbg !317
  %247 = xor i32 %230, %246, !dbg !318
  call void @llvm.dbg.value(metadata i32 %247, metadata !304, metadata !DIExpression()), !dbg !133
  %248 = xor i32 %189, %215, !dbg !319
  %249 = xor i32 %241, %248, !dbg !320
  call void @llvm.dbg.value(metadata i32 %249, metadata !312, metadata !DIExpression()), !dbg !133
  %250 = xor i32 %191, %217, !dbg !321
  %251 = xor i32 %243, %250, !dbg !322
  call void @llvm.dbg.value(metadata i32 %251, metadata !314, metadata !DIExpression()), !dbg !133
  %252 = xor i32 %189, %245, !dbg !323
  call void @llvm.dbg.value(metadata i32 %252, metadata !272, metadata !DIExpression()), !dbg !133
  %253 = xor i32 %191, %247, !dbg !324
  call void @llvm.dbg.value(metadata i32 %253, metadata !274, metadata !DIExpression()), !dbg !133
  %254 = xor i32 %193, %249, !dbg !325
  call void @llvm.dbg.value(metadata i32 %254, metadata !276, metadata !DIExpression()), !dbg !133
  %255 = xor i32 %204, %251, !dbg !326
  call void @llvm.dbg.value(metadata i32 %255, metadata !284, metadata !DIExpression()), !dbg !133
  %256 = shl i32 %167, 1, !dbg !327
  %257 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0, !dbg !328
  store i32 %256, i32* %257, align 16, !dbg !329
  %258 = shl i32 %178, 1, !dbg !330
  %259 = lshr i32 %167, 31, !dbg !331
  %260 = or i32 %258, %259, !dbg !332
  %261 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1, !dbg !333
  store i32 %260, i32* %261, align 4, !dbg !334
  %262 = shl i32 %252, 1, !dbg !335
  %263 = lshr i32 %178, 31, !dbg !336
  %264 = or i32 %262, %263, !dbg !337
  %265 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2, !dbg !338
  store i32 %264, i32* %265, align 8, !dbg !339
  %266 = shl i32 %253, 1, !dbg !340
  %267 = lshr i32 %252, 31, !dbg !341
  %268 = or i32 %266, %267, !dbg !342
  %269 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3, !dbg !343
  store i32 %268, i32* %269, align 4, !dbg !344
  %270 = shl i32 %254, 1, !dbg !345
  %271 = lshr i32 %253, 31, !dbg !346
  %272 = or i32 %270, %271, !dbg !347
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4, !dbg !348
  store i32 %272, i32* %273, align 16, !dbg !349
  %274 = shl i32 %255, 1, !dbg !350
  %275 = lshr i32 %254, 31, !dbg !351
  %276 = or i32 %274, %275, !dbg !352
  %277 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 5, !dbg !353
  store i32 %276, i32* %277, align 4, !dbg !354
  %278 = shl i32 %215, 1, !dbg !355
  %279 = lshr i32 %255, 31, !dbg !356
  %280 = or i32 %278, %279, !dbg !357
  %281 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 6, !dbg !358
  store i32 %280, i32* %281, align 8, !dbg !359
  %282 = shl i32 %217, 1, !dbg !360
  %283 = lshr i32 %215, 31, !dbg !361
  %284 = or i32 %282, %283, !dbg !362
  %285 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 7, !dbg !363
  store i32 %284, i32* %285, align 4, !dbg !364
  call void @llvm.dbg.value(metadata i32 0, metadata !235, metadata !DIExpression()), !dbg !133
  br label %286, !dbg !365

286:                                              ; preds = %313, %165
  %.1 = phi i32 [ 0, %165 ], [ %314, %313 ], !dbg !367
  call void @llvm.dbg.value(metadata i32 %.1, metadata !235, metadata !DIExpression()), !dbg !133
  %287 = icmp slt i32 %.1, 4, !dbg !368
  br i1 %287, label %288, label %315, !dbg !370

288:                                              ; preds = %286
  %289 = sext i32 %.1 to i64, !dbg !371
  %290 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %289, !dbg !371
  %291 = load i32, i32* %290, align 4, !dbg !371
  call void @llvm.dbg.value(metadata i32 %291, metadata !373, metadata !DIExpression()), !dbg !374
  %292 = lshr i32 %291, 1, !dbg !375
  %293 = xor i32 %291, %292, !dbg !376
  %294 = lshr i32 %291, 2, !dbg !377
  %295 = xor i32 %293, %294, !dbg !378
  %296 = lshr i32 %291, 7, !dbg !379
  %297 = xor i32 %295, %296, !dbg !380
  %298 = add nsw i32 %.1, 4, !dbg !381
  %299 = sext i32 %298 to i64, !dbg !382
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %299, !dbg !382
  %301 = load i32, i32* %300, align 4, !dbg !383
  %302 = xor i32 %301, %297, !dbg !383
  store i32 %302, i32* %300, align 4, !dbg !383
  %303 = shl i32 %291, 31, !dbg !384
  %304 = shl i32 %291, 30, !dbg !385
  %305 = xor i32 %303, %304, !dbg !386
  %306 = shl i32 %291, 25, !dbg !387
  %307 = xor i32 %305, %306, !dbg !388
  %308 = add nsw i32 %.1, 3, !dbg !389
  %309 = sext i32 %308 to i64, !dbg !390
  %310 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %309, !dbg !390
  %311 = load i32, i32* %310, align 4, !dbg !391
  %312 = xor i32 %311, %307, !dbg !391
  store i32 %312, i32* %310, align 4, !dbg !391
  br label %313, !dbg !392

313:                                              ; preds = %288
  %314 = add nsw i32 %.1, 1, !dbg !393
  call void @llvm.dbg.value(metadata i32 %314, metadata !235, metadata !DIExpression()), !dbg !133
  br label %286, !dbg !394, !llvm.loop !395

315:                                              ; preds = %286
  %316 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !397
  %317 = bitcast i32* %316 to i8*, !dbg !397
  %318 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0, !dbg !398
  %319 = getelementptr inbounds i32, i32* %318, i64 4, !dbg !399
  %320 = bitcast i32* %319 to i8*, !dbg !397
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %317, i8* align 4 %320, i64 16, i1 false), !dbg !397
  br label %33, !dbg !109, !llvm.loop !400

321:                                              ; preds = %33
  %322 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !402
  %323 = load i32, i32* %322, align 4, !dbg !402
  call void @br_enc32be(i8* %0, i32 %323), !dbg !403
  %324 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !404
  %325 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !405
  %326 = load i32, i32* %325, align 8, !dbg !405
  call void @br_enc32be(i8* %324, i32 %326), !dbg !406
  %327 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !407
  %328 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !408
  %329 = load i32, i32* %328, align 4, !dbg !408
  call void @br_enc32be(i8* %327, i32 %329), !dbg !409
  %330 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !410
  %331 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !411
  %332 = load i32, i32* %331, align 16, !dbg !411
  call void @br_enc32be(i8* %330, i32 %332), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* noalias %0) #0 !dbg !414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i8* %0, metadata !420, metadata !DIExpression()), !dbg !419
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !421
  %3 = load i8, i8* %2, align 1, !dbg !421
  %4 = zext i8 %3 to i32, !dbg !422
  %5 = shl i32 %4, 24, !dbg !423
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !424
  %7 = load i8, i8* %6, align 1, !dbg !424
  %8 = zext i8 %7 to i32, !dbg !425
  %9 = shl i32 %8, 16, !dbg !426
  %10 = or i32 %5, %9, !dbg !427
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !428
  %12 = load i8, i8* %11, align 1, !dbg !428
  %13 = zext i8 %12 to i32, !dbg !429
  %14 = shl i32 %13, 8, !dbg !430
  %15 = or i32 %10, %14, !dbg !431
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !432
  %17 = load i8, i8* %16, align 1, !dbg !432
  %18 = zext i8 %17 to i32, !dbg !433
  %19 = or i32 %15, %18, !dbg !434
  ret i32 %19, !dbg !435
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @bmul(i32* noalias %0, i32* noalias %1, i32 %2, i32 %3) #0 !dbg !436 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !440, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i32* %1, metadata !442, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i32 %2, metadata !443, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i32 %3, metadata !444, metadata !DIExpression()), !dbg !441
  %5 = and i32 %2, 286331153, !dbg !445
  call void @llvm.dbg.value(metadata i32 %5, metadata !446, metadata !DIExpression()), !dbg !441
  %6 = and i32 %2, 572662306, !dbg !447
  call void @llvm.dbg.value(metadata i32 %6, metadata !448, metadata !DIExpression()), !dbg !441
  %7 = and i32 %2, 1145324612, !dbg !449
  call void @llvm.dbg.value(metadata i32 %7, metadata !450, metadata !DIExpression()), !dbg !441
  %8 = and i32 %2, -2004318072, !dbg !451
  call void @llvm.dbg.value(metadata i32 %8, metadata !452, metadata !DIExpression()), !dbg !441
  %9 = and i32 %3, 286331153, !dbg !453
  call void @llvm.dbg.value(metadata i32 %9, metadata !454, metadata !DIExpression()), !dbg !441
  %10 = and i32 %3, 572662306, !dbg !455
  call void @llvm.dbg.value(metadata i32 %10, metadata !456, metadata !DIExpression()), !dbg !441
  %11 = and i32 %3, 1145324612, !dbg !457
  call void @llvm.dbg.value(metadata i32 %11, metadata !458, metadata !DIExpression()), !dbg !441
  %12 = and i32 %3, -2004318072, !dbg !459
  call void @llvm.dbg.value(metadata i32 %12, metadata !460, metadata !DIExpression()), !dbg !441
  %13 = zext i32 %5 to i64, !dbg !461
  %14 = zext i32 %9 to i64, !dbg !461
  %15 = mul i64 %13, %14, !dbg !461
  %16 = zext i32 %6 to i64, !dbg !462
  %17 = zext i32 %12 to i64, !dbg !462
  %18 = mul i64 %16, %17, !dbg !462
  %19 = xor i64 %15, %18, !dbg !463
  %20 = zext i32 %7 to i64, !dbg !464
  %21 = zext i32 %11 to i64, !dbg !464
  %22 = mul i64 %20, %21, !dbg !464
  %23 = xor i64 %19, %22, !dbg !465
  %24 = zext i32 %8 to i64, !dbg !466
  %25 = zext i32 %10 to i64, !dbg !466
  %26 = mul i64 %24, %25, !dbg !466
  %27 = xor i64 %23, %26, !dbg !467
  call void @llvm.dbg.value(metadata i64 %27, metadata !468, metadata !DIExpression()), !dbg !441
  %28 = zext i32 %5 to i64, !dbg !469
  %29 = zext i32 %10 to i64, !dbg !469
  %30 = mul i64 %28, %29, !dbg !469
  %31 = zext i32 %6 to i64, !dbg !470
  %32 = zext i32 %9 to i64, !dbg !470
  %33 = mul i64 %31, %32, !dbg !470
  %34 = xor i64 %30, %33, !dbg !471
  %35 = zext i32 %7 to i64, !dbg !472
  %36 = zext i32 %12 to i64, !dbg !472
  %37 = mul i64 %35, %36, !dbg !472
  %38 = xor i64 %34, %37, !dbg !473
  %39 = zext i32 %8 to i64, !dbg !474
  %40 = zext i32 %11 to i64, !dbg !474
  %41 = mul i64 %39, %40, !dbg !474
  %42 = xor i64 %38, %41, !dbg !475
  call void @llvm.dbg.value(metadata i64 %42, metadata !476, metadata !DIExpression()), !dbg !441
  %43 = zext i32 %5 to i64, !dbg !477
  %44 = zext i32 %11 to i64, !dbg !477
  %45 = mul i64 %43, %44, !dbg !477
  %46 = zext i32 %6 to i64, !dbg !478
  %47 = zext i32 %10 to i64, !dbg !478
  %48 = mul i64 %46, %47, !dbg !478
  %49 = xor i64 %45, %48, !dbg !479
  %50 = zext i32 %7 to i64, !dbg !480
  %51 = zext i32 %9 to i64, !dbg !480
  %52 = mul i64 %50, %51, !dbg !480
  %53 = xor i64 %49, %52, !dbg !481
  %54 = zext i32 %8 to i64, !dbg !482
  %55 = zext i32 %12 to i64, !dbg !482
  %56 = mul i64 %54, %55, !dbg !482
  %57 = xor i64 %53, %56, !dbg !483
  call void @llvm.dbg.value(metadata i64 %57, metadata !484, metadata !DIExpression()), !dbg !441
  %58 = zext i32 %5 to i64, !dbg !485
  %59 = zext i32 %12 to i64, !dbg !485
  %60 = mul i64 %58, %59, !dbg !485
  %61 = zext i32 %6 to i64, !dbg !486
  %62 = zext i32 %11 to i64, !dbg !486
  %63 = mul i64 %61, %62, !dbg !486
  %64 = xor i64 %60, %63, !dbg !487
  %65 = zext i32 %7 to i64, !dbg !488
  %66 = zext i32 %10 to i64, !dbg !488
  %67 = mul i64 %65, %66, !dbg !488
  %68 = xor i64 %64, %67, !dbg !489
  %69 = zext i32 %8 to i64, !dbg !490
  %70 = zext i32 %9 to i64, !dbg !490
  %71 = mul i64 %69, %70, !dbg !490
  %72 = xor i64 %68, %71, !dbg !491
  call void @llvm.dbg.value(metadata i64 %72, metadata !492, metadata !DIExpression()), !dbg !441
  %73 = and i64 %27, 1229782938247303441, !dbg !493
  call void @llvm.dbg.value(metadata i64 %73, metadata !468, metadata !DIExpression()), !dbg !441
  %74 = and i64 %42, 2459565876494606882, !dbg !494
  call void @llvm.dbg.value(metadata i64 %74, metadata !476, metadata !DIExpression()), !dbg !441
  %75 = and i64 %57, 4919131752989213764, !dbg !495
  call void @llvm.dbg.value(metadata i64 %75, metadata !484, metadata !DIExpression()), !dbg !441
  %76 = and i64 %72, -8608480567731124088, !dbg !496
  call void @llvm.dbg.value(metadata i64 %76, metadata !492, metadata !DIExpression()), !dbg !441
  %77 = or i64 %73, %74, !dbg !497
  %78 = or i64 %77, %75, !dbg !498
  %79 = or i64 %78, %76, !dbg !499
  call void @llvm.dbg.value(metadata i64 %79, metadata !500, metadata !DIExpression()), !dbg !441
  %80 = trunc i64 %79 to i32, !dbg !501
  store i32 %80, i32* %1, align 4, !dbg !502
  %81 = lshr i64 %79, 32, !dbg !503
  %82 = trunc i64 %81 to i32, !dbg !504
  store i32 %82, i32* %0, align 4, !dbg !505
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* noalias %0, i32 %1) #0 !dbg !507 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i32 %1, metadata !512, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i8* %0, metadata !513, metadata !DIExpression()), !dbg !511
  %3 = lshr i32 %1, 24, !dbg !514
  %4 = trunc i32 %3 to i8, !dbg !515
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !516
  store i8 %4, i8* %5, align 1, !dbg !517
  %6 = lshr i32 %1, 16, !dbg !518
  %7 = trunc i32 %6 to i8, !dbg !519
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !520
  store i8 %7, i8* %8, align 1, !dbg !521
  %9 = lshr i32 %1, 8, !dbg !522
  %10 = trunc i32 %9 to i8, !dbg !523
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !524
  store i8 %10, i8* %11, align 1, !dbg !525
  %12 = trunc i32 %1 to i8, !dbg !526
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !527
  store i8 %12, i8* %13, align 1, !dbg !528
  ret void, !dbg !529
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0, !3}
!llvm.ident = !{!15, !15}
!llvm.module.flags = !{!16, !17, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "br_ghash_ctmul.c", directory: "/home/luwei/bech/BearSSL/ghash_ctmul")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !5, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "../BearSSL/src/hash/ghash_ctmul.c", directory: "/home/luwei/bech/BearSSL/ghash_ctmul")
!5 = !{!6, !11, !14}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !13)
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = distinct !DISubprogram(name: "br_ghash_ctmul_wrapper", scope: !1, file: !1, line: 3, type: !20, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !23, !23, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !13)
!26 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!27 = !DILocalVariable(name: "y", arg: 1, scope: !19, file: !1, line: 3, type: !22)
!28 = !DILocation(line: 0, scope: !19)
!29 = !DILocalVariable(name: "h", arg: 2, scope: !19, file: !1, line: 3, type: !23)
!30 = !DILocalVariable(name: "data", arg: 3, scope: !19, file: !1, line: 3, type: !23)
!31 = !DILocalVariable(name: "len", arg: 4, scope: !19, file: !1, line: 3, type: !25)
!32 = !DILocation(line: 4, column: 12, scope: !19)
!33 = !DILocation(line: 4, column: 2, scope: !19)
!34 = !DILocation(line: 5, column: 12, scope: !19)
!35 = !DILocation(line: 5, column: 2, scope: !19)
!36 = !DILocation(line: 6, column: 12, scope: !19)
!37 = !DILocation(line: 6, column: 2, scope: !19)
!38 = !DILocation(line: 7, column: 12, scope: !19)
!39 = !DILocation(line: 7, column: 2, scope: !19)
!40 = !DILocation(line: 9, column: 12, scope: !19)
!41 = !DILocation(line: 9, column: 2, scope: !19)
!42 = !DILocation(line: 10, column: 12, scope: !19)
!43 = !DILocation(line: 10, column: 2, scope: !19)
!44 = !DILocation(line: 12, column: 2, scope: !19)
!45 = !DILocation(line: 13, column: 1, scope: !19)
!46 = distinct !DISubprogram(name: "br_ghash_ctmul_wrapper_t", scope: !1, file: !1, line: 21, type: !47, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{null}
!49 = !DILocation(line: 22, column: 12, scope: !46)
!50 = !DILocalVariable(name: "y", scope: !46, file: !1, line: 22, type: !22)
!51 = !DILocation(line: 0, scope: !46)
!52 = !DILocation(line: 23, column: 19, scope: !46)
!53 = !DILocalVariable(name: "h", scope: !46, file: !1, line: 23, type: !23)
!54 = !DILocation(line: 24, column: 22, scope: !46)
!55 = !DILocalVariable(name: "data", scope: !46, file: !1, line: 24, type: !23)
!56 = !DILocation(line: 25, column: 17, scope: !46)
!57 = !DILocalVariable(name: "len", scope: !46, file: !1, line: 25, type: !25)
!58 = !DILocation(line: 26, column: 2, scope: !46)
!59 = !DILocation(line: 27, column: 1, scope: !46)
!60 = distinct !DISubprogram(name: "br_ghash_ctmul", scope: !4, file: !4, line: 197, type: !20, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!61 = !DILocalVariable(name: "y", arg: 1, scope: !60, file: !4, line: 197, type: !22)
!62 = !DILocation(line: 0, scope: !60)
!63 = !DILocalVariable(name: "h", arg: 2, scope: !60, file: !4, line: 197, type: !23)
!64 = !DILocalVariable(name: "data", arg: 3, scope: !60, file: !4, line: 197, type: !23)
!65 = !DILocalVariable(name: "len", arg: 4, scope: !60, file: !4, line: 197, type: !25)
!66 = !DILocalVariable(name: "yw", scope: !60, file: !4, line: 201, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 4)
!70 = !DILocation(line: 201, column: 11, scope: !60)
!71 = !DILocalVariable(name: "hw", scope: !60, file: !4, line: 202, type: !67)
!72 = !DILocation(line: 202, column: 11, scope: !60)
!73 = !DILocalVariable(name: "buf", scope: !60, file: !4, line: 199, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!76 = !DILocalVariable(name: "yb", scope: !60, file: !4, line: 200, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!78 = !DILocalVariable(name: "hb", scope: !60, file: !4, line: 199, type: !74)
!79 = !DILocation(line: 211, column: 10, scope: !60)
!80 = !DILocation(line: 211, column: 2, scope: !60)
!81 = !DILocation(line: 211, column: 8, scope: !60)
!82 = !DILocation(line: 212, column: 24, scope: !60)
!83 = !DILocation(line: 212, column: 10, scope: !60)
!84 = !DILocation(line: 212, column: 2, scope: !60)
!85 = !DILocation(line: 212, column: 8, scope: !60)
!86 = !DILocation(line: 213, column: 24, scope: !60)
!87 = !DILocation(line: 213, column: 10, scope: !60)
!88 = !DILocation(line: 213, column: 2, scope: !60)
!89 = !DILocation(line: 213, column: 8, scope: !60)
!90 = !DILocation(line: 214, column: 24, scope: !60)
!91 = !DILocation(line: 214, column: 10, scope: !60)
!92 = !DILocation(line: 214, column: 2, scope: !60)
!93 = !DILocation(line: 214, column: 8, scope: !60)
!94 = !DILocation(line: 215, column: 10, scope: !60)
!95 = !DILocation(line: 215, column: 2, scope: !60)
!96 = !DILocation(line: 215, column: 8, scope: !60)
!97 = !DILocation(line: 216, column: 24, scope: !60)
!98 = !DILocation(line: 216, column: 10, scope: !60)
!99 = !DILocation(line: 216, column: 2, scope: !60)
!100 = !DILocation(line: 216, column: 8, scope: !60)
!101 = !DILocation(line: 217, column: 24, scope: !60)
!102 = !DILocation(line: 217, column: 10, scope: !60)
!103 = !DILocation(line: 217, column: 2, scope: !60)
!104 = !DILocation(line: 217, column: 8, scope: !60)
!105 = !DILocation(line: 218, column: 24, scope: !60)
!106 = !DILocation(line: 218, column: 10, scope: !60)
!107 = !DILocation(line: 218, column: 2, scope: !60)
!108 = !DILocation(line: 218, column: 8, scope: !60)
!109 = !DILocation(line: 219, column: 2, scope: !60)
!110 = !DILocation(line: 219, column: 13, scope: !60)
!111 = !DILocalVariable(name: "tmp", scope: !112, file: !4, line: 221, type: !113)
!112 = distinct !DILexicalBlock(scope: !60, file: !4, line: 219, column: 18)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 16)
!116 = !DILocation(line: 221, column: 17, scope: !112)
!117 = !DILocalVariable(name: "a", scope: !112, file: !4, line: 223, type: !118)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 288, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 9)
!121 = !DILocation(line: 223, column: 12, scope: !112)
!122 = !DILocalVariable(name: "b", scope: !112, file: !4, line: 223, type: !118)
!123 = !DILocation(line: 223, column: 18, scope: !112)
!124 = !DILocalVariable(name: "zw", scope: !112, file: !4, line: 223, type: !125)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 8)
!128 = !DILocation(line: 223, column: 24, scope: !112)
!129 = !DILocation(line: 230, column: 11, scope: !130)
!130 = distinct !DILexicalBlock(scope: !112, file: !4, line: 230, column: 7)
!131 = !DILocation(line: 230, column: 7, scope: !112)
!132 = !DILocalVariable(name: "src", scope: !112, file: !4, line: 220, type: !74)
!133 = !DILocation(line: 0, scope: !112)
!134 = !DILocation(line: 232, column: 8, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !4, line: 230, column: 18)
!136 = !DILocation(line: 233, column: 8, scope: !135)
!137 = !DILocation(line: 234, column: 3, scope: !135)
!138 = !DILocation(line: 235, column: 4, scope: !139)
!139 = distinct !DILexicalBlock(scope: !130, file: !4, line: 234, column: 10)
!140 = !DILocation(line: 236, column: 11, scope: !139)
!141 = !DILocation(line: 236, column: 15, scope: !139)
!142 = !DILocation(line: 236, column: 38, scope: !139)
!143 = !DILocation(line: 236, column: 4, scope: !139)
!144 = !DILocation(line: 237, column: 10, scope: !139)
!145 = !DILocation(line: 0, scope: !130)
!146 = !DILocation(line: 245, column: 12, scope: !112)
!147 = !DILocation(line: 245, column: 3, scope: !112)
!148 = !DILocation(line: 245, column: 9, scope: !112)
!149 = !DILocation(line: 246, column: 27, scope: !112)
!150 = !DILocation(line: 246, column: 12, scope: !112)
!151 = !DILocation(line: 246, column: 3, scope: !112)
!152 = !DILocation(line: 246, column: 9, scope: !112)
!153 = !DILocation(line: 247, column: 27, scope: !112)
!154 = !DILocation(line: 247, column: 12, scope: !112)
!155 = !DILocation(line: 247, column: 3, scope: !112)
!156 = !DILocation(line: 247, column: 9, scope: !112)
!157 = !DILocation(line: 248, column: 27, scope: !112)
!158 = !DILocation(line: 248, column: 12, scope: !112)
!159 = !DILocation(line: 248, column: 3, scope: !112)
!160 = !DILocation(line: 248, column: 9, scope: !112)
!161 = !DILocation(line: 262, column: 10, scope: !112)
!162 = !DILocation(line: 262, column: 3, scope: !112)
!163 = !DILocation(line: 262, column: 8, scope: !112)
!164 = !DILocation(line: 263, column: 10, scope: !112)
!165 = !DILocation(line: 263, column: 3, scope: !112)
!166 = !DILocation(line: 263, column: 8, scope: !112)
!167 = !DILocation(line: 264, column: 10, scope: !112)
!168 = !DILocation(line: 264, column: 3, scope: !112)
!169 = !DILocation(line: 264, column: 8, scope: !112)
!170 = !DILocation(line: 265, column: 10, scope: !112)
!171 = !DILocation(line: 265, column: 3, scope: !112)
!172 = !DILocation(line: 265, column: 8, scope: !112)
!173 = !DILocation(line: 266, column: 10, scope: !112)
!174 = !DILocation(line: 266, column: 17, scope: !112)
!175 = !DILocation(line: 266, column: 15, scope: !112)
!176 = !DILocation(line: 266, column: 3, scope: !112)
!177 = !DILocation(line: 266, column: 8, scope: !112)
!178 = !DILocation(line: 267, column: 10, scope: !112)
!179 = !DILocation(line: 267, column: 17, scope: !112)
!180 = !DILocation(line: 267, column: 15, scope: !112)
!181 = !DILocation(line: 267, column: 3, scope: !112)
!182 = !DILocation(line: 267, column: 8, scope: !112)
!183 = !DILocation(line: 269, column: 10, scope: !112)
!184 = !DILocation(line: 269, column: 3, scope: !112)
!185 = !DILocation(line: 269, column: 8, scope: !112)
!186 = !DILocation(line: 270, column: 10, scope: !112)
!187 = !DILocation(line: 270, column: 3, scope: !112)
!188 = !DILocation(line: 270, column: 8, scope: !112)
!189 = !DILocation(line: 271, column: 10, scope: !112)
!190 = !DILocation(line: 271, column: 3, scope: !112)
!191 = !DILocation(line: 271, column: 8, scope: !112)
!192 = !DILocation(line: 272, column: 10, scope: !112)
!193 = !DILocation(line: 272, column: 3, scope: !112)
!194 = !DILocation(line: 272, column: 8, scope: !112)
!195 = !DILocation(line: 273, column: 10, scope: !112)
!196 = !DILocation(line: 273, column: 17, scope: !112)
!197 = !DILocation(line: 273, column: 15, scope: !112)
!198 = !DILocation(line: 273, column: 3, scope: !112)
!199 = !DILocation(line: 273, column: 8, scope: !112)
!200 = !DILocation(line: 274, column: 10, scope: !112)
!201 = !DILocation(line: 274, column: 17, scope: !112)
!202 = !DILocation(line: 274, column: 15, scope: !112)
!203 = !DILocation(line: 274, column: 3, scope: !112)
!204 = !DILocation(line: 274, column: 8, scope: !112)
!205 = !DILocation(line: 276, column: 10, scope: !112)
!206 = !DILocation(line: 276, column: 17, scope: !112)
!207 = !DILocation(line: 276, column: 15, scope: !112)
!208 = !DILocation(line: 276, column: 3, scope: !112)
!209 = !DILocation(line: 276, column: 8, scope: !112)
!210 = !DILocation(line: 277, column: 10, scope: !112)
!211 = !DILocation(line: 277, column: 17, scope: !112)
!212 = !DILocation(line: 277, column: 15, scope: !112)
!213 = !DILocation(line: 277, column: 3, scope: !112)
!214 = !DILocation(line: 277, column: 8, scope: !112)
!215 = !DILocation(line: 278, column: 10, scope: !112)
!216 = !DILocation(line: 278, column: 17, scope: !112)
!217 = !DILocation(line: 278, column: 15, scope: !112)
!218 = !DILocation(line: 278, column: 3, scope: !112)
!219 = !DILocation(line: 278, column: 8, scope: !112)
!220 = !DILocation(line: 279, column: 10, scope: !112)
!221 = !DILocation(line: 279, column: 17, scope: !112)
!222 = !DILocation(line: 279, column: 15, scope: !112)
!223 = !DILocation(line: 279, column: 3, scope: !112)
!224 = !DILocation(line: 279, column: 8, scope: !112)
!225 = !DILocation(line: 280, column: 10, scope: !112)
!226 = !DILocation(line: 280, column: 17, scope: !112)
!227 = !DILocation(line: 280, column: 15, scope: !112)
!228 = !DILocation(line: 280, column: 3, scope: !112)
!229 = !DILocation(line: 280, column: 8, scope: !112)
!230 = !DILocation(line: 281, column: 10, scope: !112)
!231 = !DILocation(line: 281, column: 17, scope: !112)
!232 = !DILocation(line: 281, column: 15, scope: !112)
!233 = !DILocation(line: 281, column: 3, scope: !112)
!234 = !DILocation(line: 281, column: 8, scope: !112)
!235 = !DILocalVariable(name: "i", scope: !112, file: !4, line: 222, type: !236)
!236 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!237 = !DILocation(line: 283, column: 8, scope: !238)
!238 = distinct !DILexicalBlock(scope: !112, file: !4, line: 283, column: 3)
!239 = !DILocation(line: 0, scope: !238)
!240 = !DILocation(line: 283, column: 17, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !4, line: 283, column: 3)
!242 = !DILocation(line: 283, column: 3, scope: !238)
!243 = !DILocation(line: 284, column: 10, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !4, line: 283, column: 28)
!245 = !DILocation(line: 284, column: 17, scope: !244)
!246 = !DILocation(line: 284, column: 23, scope: !244)
!247 = !DILocation(line: 284, column: 29, scope: !244)
!248 = !DILocation(line: 284, column: 4, scope: !244)
!249 = !DILocation(line: 285, column: 3, scope: !244)
!250 = !DILocation(line: 283, column: 24, scope: !241)
!251 = !DILocation(line: 283, column: 3, scope: !241)
!252 = distinct !{!252, !242, !253, !254}
!253 = !DILocation(line: 285, column: 3, scope: !238)
!254 = !{!"llvm.loop.mustprogress"}
!255 = !DILocation(line: 287, column: 8, scope: !112)
!256 = !DILocalVariable(name: "c0", scope: !112, file: !4, line: 224, type: !6)
!257 = !DILocation(line: 288, column: 8, scope: !112)
!258 = !DILocation(line: 288, column: 15, scope: !112)
!259 = !DILocation(line: 288, column: 13, scope: !112)
!260 = !DILocation(line: 288, column: 22, scope: !112)
!261 = !DILocation(line: 288, column: 20, scope: !112)
!262 = !DILocation(line: 288, column: 29, scope: !112)
!263 = !DILocation(line: 288, column: 27, scope: !112)
!264 = !DILocalVariable(name: "c1", scope: !112, file: !4, line: 224, type: !6)
!265 = !DILocation(line: 289, column: 8, scope: !112)
!266 = !DILocation(line: 289, column: 15, scope: !112)
!267 = !DILocation(line: 289, column: 13, scope: !112)
!268 = !DILocation(line: 289, column: 22, scope: !112)
!269 = !DILocation(line: 289, column: 20, scope: !112)
!270 = !DILocation(line: 289, column: 29, scope: !112)
!271 = !DILocation(line: 289, column: 27, scope: !112)
!272 = !DILocalVariable(name: "c2", scope: !112, file: !4, line: 224, type: !6)
!273 = !DILocation(line: 290, column: 8, scope: !112)
!274 = !DILocalVariable(name: "c3", scope: !112, file: !4, line: 224, type: !6)
!275 = !DILocation(line: 291, column: 8, scope: !112)
!276 = !DILocalVariable(name: "d0", scope: !112, file: !4, line: 224, type: !6)
!277 = !DILocation(line: 292, column: 8, scope: !112)
!278 = !DILocation(line: 292, column: 15, scope: !112)
!279 = !DILocation(line: 292, column: 13, scope: !112)
!280 = !DILocation(line: 292, column: 22, scope: !112)
!281 = !DILocation(line: 292, column: 20, scope: !112)
!282 = !DILocation(line: 292, column: 29, scope: !112)
!283 = !DILocation(line: 292, column: 27, scope: !112)
!284 = !DILocalVariable(name: "d1", scope: !112, file: !4, line: 224, type: !6)
!285 = !DILocation(line: 293, column: 8, scope: !112)
!286 = !DILocation(line: 293, column: 15, scope: !112)
!287 = !DILocation(line: 293, column: 13, scope: !112)
!288 = !DILocation(line: 293, column: 22, scope: !112)
!289 = !DILocation(line: 293, column: 20, scope: !112)
!290 = !DILocation(line: 293, column: 29, scope: !112)
!291 = !DILocation(line: 293, column: 27, scope: !112)
!292 = !DILocalVariable(name: "d2", scope: !112, file: !4, line: 224, type: !6)
!293 = !DILocation(line: 294, column: 8, scope: !112)
!294 = !DILocalVariable(name: "d3", scope: !112, file: !4, line: 224, type: !6)
!295 = !DILocation(line: 295, column: 8, scope: !112)
!296 = !DILocalVariable(name: "e0", scope: !112, file: !4, line: 224, type: !6)
!297 = !DILocation(line: 296, column: 8, scope: !112)
!298 = !DILocation(line: 296, column: 15, scope: !112)
!299 = !DILocation(line: 296, column: 13, scope: !112)
!300 = !DILocation(line: 296, column: 22, scope: !112)
!301 = !DILocation(line: 296, column: 20, scope: !112)
!302 = !DILocation(line: 296, column: 29, scope: !112)
!303 = !DILocation(line: 296, column: 27, scope: !112)
!304 = !DILocalVariable(name: "e1", scope: !112, file: !4, line: 224, type: !6)
!305 = !DILocation(line: 297, column: 8, scope: !112)
!306 = !DILocation(line: 297, column: 15, scope: !112)
!307 = !DILocation(line: 297, column: 13, scope: !112)
!308 = !DILocation(line: 297, column: 22, scope: !112)
!309 = !DILocation(line: 297, column: 20, scope: !112)
!310 = !DILocation(line: 297, column: 29, scope: !112)
!311 = !DILocation(line: 297, column: 27, scope: !112)
!312 = !DILocalVariable(name: "e2", scope: !112, file: !4, line: 224, type: !6)
!313 = !DILocation(line: 298, column: 8, scope: !112)
!314 = !DILocalVariable(name: "e3", scope: !112, file: !4, line: 224, type: !6)
!315 = !DILocation(line: 300, column: 12, scope: !112)
!316 = !DILocation(line: 300, column: 6, scope: !112)
!317 = !DILocation(line: 301, column: 12, scope: !112)
!318 = !DILocation(line: 301, column: 6, scope: !112)
!319 = !DILocation(line: 302, column: 12, scope: !112)
!320 = !DILocation(line: 302, column: 6, scope: !112)
!321 = !DILocation(line: 303, column: 12, scope: !112)
!322 = !DILocation(line: 303, column: 6, scope: !112)
!323 = !DILocation(line: 304, column: 6, scope: !112)
!324 = !DILocation(line: 305, column: 6, scope: !112)
!325 = !DILocation(line: 306, column: 6, scope: !112)
!326 = !DILocation(line: 307, column: 6, scope: !112)
!327 = !DILocation(line: 315, column: 14, scope: !112)
!328 = !DILocation(line: 315, column: 3, scope: !112)
!329 = !DILocation(line: 315, column: 9, scope: !112)
!330 = !DILocation(line: 316, column: 15, scope: !112)
!331 = !DILocation(line: 316, column: 27, scope: !112)
!332 = !DILocation(line: 316, column: 21, scope: !112)
!333 = !DILocation(line: 316, column: 3, scope: !112)
!334 = !DILocation(line: 316, column: 9, scope: !112)
!335 = !DILocation(line: 317, column: 15, scope: !112)
!336 = !DILocation(line: 317, column: 27, scope: !112)
!337 = !DILocation(line: 317, column: 21, scope: !112)
!338 = !DILocation(line: 317, column: 3, scope: !112)
!339 = !DILocation(line: 317, column: 9, scope: !112)
!340 = !DILocation(line: 318, column: 15, scope: !112)
!341 = !DILocation(line: 318, column: 27, scope: !112)
!342 = !DILocation(line: 318, column: 21, scope: !112)
!343 = !DILocation(line: 318, column: 3, scope: !112)
!344 = !DILocation(line: 318, column: 9, scope: !112)
!345 = !DILocation(line: 319, column: 15, scope: !112)
!346 = !DILocation(line: 319, column: 27, scope: !112)
!347 = !DILocation(line: 319, column: 21, scope: !112)
!348 = !DILocation(line: 319, column: 3, scope: !112)
!349 = !DILocation(line: 319, column: 9, scope: !112)
!350 = !DILocation(line: 320, column: 15, scope: !112)
!351 = !DILocation(line: 320, column: 27, scope: !112)
!352 = !DILocation(line: 320, column: 21, scope: !112)
!353 = !DILocation(line: 320, column: 3, scope: !112)
!354 = !DILocation(line: 320, column: 9, scope: !112)
!355 = !DILocation(line: 321, column: 15, scope: !112)
!356 = !DILocation(line: 321, column: 27, scope: !112)
!357 = !DILocation(line: 321, column: 21, scope: !112)
!358 = !DILocation(line: 321, column: 3, scope: !112)
!359 = !DILocation(line: 321, column: 9, scope: !112)
!360 = !DILocation(line: 322, column: 15, scope: !112)
!361 = !DILocation(line: 322, column: 27, scope: !112)
!362 = !DILocation(line: 322, column: 21, scope: !112)
!363 = !DILocation(line: 322, column: 3, scope: !112)
!364 = !DILocation(line: 322, column: 9, scope: !112)
!365 = !DILocation(line: 328, column: 8, scope: !366)
!366 = distinct !DILexicalBlock(scope: !112, file: !4, line: 328, column: 3)
!367 = !DILocation(line: 0, scope: !366)
!368 = !DILocation(line: 328, column: 17, scope: !369)
!369 = distinct !DILexicalBlock(scope: !366, file: !4, line: 328, column: 3)
!370 = !DILocation(line: 328, column: 3, scope: !366)
!371 = !DILocation(line: 331, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !4, line: 328, column: 28)
!373 = !DILocalVariable(name: "lw", scope: !372, file: !4, line: 329, type: !6)
!374 = !DILocation(line: 0, scope: !372)
!375 = !DILocation(line: 332, column: 26, scope: !372)
!376 = !DILocation(line: 332, column: 20, scope: !372)
!377 = !DILocation(line: 332, column: 38, scope: !372)
!378 = !DILocation(line: 332, column: 32, scope: !372)
!379 = !DILocation(line: 332, column: 50, scope: !372)
!380 = !DILocation(line: 332, column: 44, scope: !372)
!381 = !DILocation(line: 332, column: 9, scope: !372)
!382 = !DILocation(line: 332, column: 4, scope: !372)
!383 = !DILocation(line: 332, column: 14, scope: !372)
!384 = !DILocation(line: 333, column: 21, scope: !372)
!385 = !DILocation(line: 333, column: 34, scope: !372)
!386 = !DILocation(line: 333, column: 28, scope: !372)
!387 = !DILocation(line: 333, column: 47, scope: !372)
!388 = !DILocation(line: 333, column: 41, scope: !372)
!389 = !DILocation(line: 333, column: 9, scope: !372)
!390 = !DILocation(line: 333, column: 4, scope: !372)
!391 = !DILocation(line: 333, column: 14, scope: !372)
!392 = !DILocation(line: 334, column: 3, scope: !372)
!393 = !DILocation(line: 328, column: 24, scope: !369)
!394 = !DILocation(line: 328, column: 3, scope: !369)
!395 = distinct !{!395, !370, !396, !254}
!396 = !DILocation(line: 334, column: 3, scope: !366)
!397 = !DILocation(line: 335, column: 3, scope: !112)
!398 = !DILocation(line: 335, column: 14, scope: !112)
!399 = !DILocation(line: 335, column: 17, scope: !112)
!400 = distinct !{!400, !109, !401, !254}
!401 = !DILocation(line: 336, column: 2, scope: !60)
!402 = !DILocation(line: 341, column: 17, scope: !60)
!403 = !DILocation(line: 341, column: 2, scope: !60)
!404 = !DILocation(line: 342, column: 16, scope: !60)
!405 = !DILocation(line: 342, column: 21, scope: !60)
!406 = !DILocation(line: 342, column: 2, scope: !60)
!407 = !DILocation(line: 343, column: 16, scope: !60)
!408 = !DILocation(line: 343, column: 21, scope: !60)
!409 = !DILocation(line: 343, column: 2, scope: !60)
!410 = !DILocation(line: 344, column: 16, scope: !60)
!411 = !DILocation(line: 344, column: 22, scope: !60)
!412 = !DILocation(line: 344, column: 2, scope: !60)
!413 = !DILocation(line: 345, column: 1, scope: !60)
!414 = distinct !DISubprogram(name: "br_dec32be", scope: !415, file: !415, line: 590, type: !416, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!415 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech/BearSSL/ghash_ctmul")
!416 = !DISubroutineType(types: !417)
!417 = !{!6, !23}
!418 = !DILocalVariable(name: "src", arg: 1, scope: !414, file: !415, line: 590, type: !23)
!419 = !DILocation(line: 0, scope: !414)
!420 = !DILocalVariable(name: "buf", scope: !414, file: !415, line: 595, type: !74)
!421 = !DILocation(line: 598, column: 20, scope: !414)
!422 = !DILocation(line: 598, column: 10, scope: !414)
!423 = !DILocation(line: 598, column: 27, scope: !414)
!424 = !DILocation(line: 599, column: 16, scope: !414)
!425 = !DILocation(line: 599, column: 6, scope: !414)
!426 = !DILocation(line: 599, column: 23, scope: !414)
!427 = !DILocation(line: 599, column: 3, scope: !414)
!428 = !DILocation(line: 600, column: 16, scope: !414)
!429 = !DILocation(line: 600, column: 6, scope: !414)
!430 = !DILocation(line: 600, column: 23, scope: !414)
!431 = !DILocation(line: 600, column: 3, scope: !414)
!432 = !DILocation(line: 601, column: 15, scope: !414)
!433 = !DILocation(line: 601, column: 5, scope: !414)
!434 = !DILocation(line: 601, column: 3, scope: !414)
!435 = !DILocation(line: 598, column: 2, scope: !414)
!436 = distinct !DISubprogram(name: "bmul", scope: !4, file: !4, line: 165, type: !437, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439, !439, !6, !6}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!440 = !DILocalVariable(name: "hi", arg: 1, scope: !436, file: !4, line: 165, type: !439)
!441 = !DILocation(line: 0, scope: !436)
!442 = !DILocalVariable(name: "lo", arg: 2, scope: !436, file: !4, line: 165, type: !439)
!443 = !DILocalVariable(name: "x", arg: 3, scope: !436, file: !4, line: 165, type: !6)
!444 = !DILocalVariable(name: "y", arg: 4, scope: !436, file: !4, line: 165, type: !6)
!445 = !DILocation(line: 172, column: 9, scope: !436)
!446 = !DILocalVariable(name: "x0", scope: !436, file: !4, line: 167, type: !6)
!447 = !DILocation(line: 173, column: 9, scope: !436)
!448 = !DILocalVariable(name: "x1", scope: !436, file: !4, line: 167, type: !6)
!449 = !DILocation(line: 174, column: 9, scope: !436)
!450 = !DILocalVariable(name: "x2", scope: !436, file: !4, line: 167, type: !6)
!451 = !DILocation(line: 175, column: 9, scope: !436)
!452 = !DILocalVariable(name: "x3", scope: !436, file: !4, line: 167, type: !6)
!453 = !DILocation(line: 176, column: 9, scope: !436)
!454 = !DILocalVariable(name: "y0", scope: !436, file: !4, line: 168, type: !6)
!455 = !DILocation(line: 177, column: 9, scope: !436)
!456 = !DILocalVariable(name: "y1", scope: !436, file: !4, line: 168, type: !6)
!457 = !DILocation(line: 178, column: 9, scope: !436)
!458 = !DILocalVariable(name: "y2", scope: !436, file: !4, line: 168, type: !6)
!459 = !DILocation(line: 179, column: 9, scope: !436)
!460 = !DILocalVariable(name: "y3", scope: !436, file: !4, line: 168, type: !6)
!461 = !DILocation(line: 180, column: 7, scope: !436)
!462 = !DILocation(line: 180, column: 21, scope: !436)
!463 = !DILocation(line: 180, column: 19, scope: !436)
!464 = !DILocation(line: 180, column: 35, scope: !436)
!465 = !DILocation(line: 180, column: 33, scope: !436)
!466 = !DILocation(line: 180, column: 49, scope: !436)
!467 = !DILocation(line: 180, column: 47, scope: !436)
!468 = !DILocalVariable(name: "z0", scope: !436, file: !4, line: 169, type: !11)
!469 = !DILocation(line: 181, column: 7, scope: !436)
!470 = !DILocation(line: 181, column: 21, scope: !436)
!471 = !DILocation(line: 181, column: 19, scope: !436)
!472 = !DILocation(line: 181, column: 35, scope: !436)
!473 = !DILocation(line: 181, column: 33, scope: !436)
!474 = !DILocation(line: 181, column: 49, scope: !436)
!475 = !DILocation(line: 181, column: 47, scope: !436)
!476 = !DILocalVariable(name: "z1", scope: !436, file: !4, line: 169, type: !11)
!477 = !DILocation(line: 182, column: 7, scope: !436)
!478 = !DILocation(line: 182, column: 21, scope: !436)
!479 = !DILocation(line: 182, column: 19, scope: !436)
!480 = !DILocation(line: 182, column: 35, scope: !436)
!481 = !DILocation(line: 182, column: 33, scope: !436)
!482 = !DILocation(line: 182, column: 49, scope: !436)
!483 = !DILocation(line: 182, column: 47, scope: !436)
!484 = !DILocalVariable(name: "z2", scope: !436, file: !4, line: 169, type: !11)
!485 = !DILocation(line: 183, column: 7, scope: !436)
!486 = !DILocation(line: 183, column: 21, scope: !436)
!487 = !DILocation(line: 183, column: 19, scope: !436)
!488 = !DILocation(line: 183, column: 35, scope: !436)
!489 = !DILocation(line: 183, column: 33, scope: !436)
!490 = !DILocation(line: 183, column: 49, scope: !436)
!491 = !DILocation(line: 183, column: 47, scope: !436)
!492 = !DILocalVariable(name: "z3", scope: !436, file: !4, line: 169, type: !11)
!493 = !DILocation(line: 184, column: 5, scope: !436)
!494 = !DILocation(line: 185, column: 5, scope: !436)
!495 = !DILocation(line: 186, column: 5, scope: !436)
!496 = !DILocation(line: 187, column: 5, scope: !436)
!497 = !DILocation(line: 188, column: 9, scope: !436)
!498 = !DILocation(line: 188, column: 14, scope: !436)
!499 = !DILocation(line: 188, column: 19, scope: !436)
!500 = !DILocalVariable(name: "z", scope: !436, file: !4, line: 170, type: !11)
!501 = !DILocation(line: 189, column: 8, scope: !436)
!502 = !DILocation(line: 189, column: 6, scope: !436)
!503 = !DILocation(line: 190, column: 21, scope: !436)
!504 = !DILocation(line: 190, column: 8, scope: !436)
!505 = !DILocation(line: 190, column: 6, scope: !436)
!506 = !DILocation(line: 191, column: 1, scope: !436)
!507 = distinct !DISubprogram(name: "br_enc32be", scope: !415, file: !415, line: 558, type: !508, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !22, !6}
!510 = !DILocalVariable(name: "dst", arg: 1, scope: !507, file: !415, line: 558, type: !22)
!511 = !DILocation(line: 0, scope: !507)
!512 = !DILocalVariable(name: "x", arg: 2, scope: !507, file: !415, line: 558, type: !6)
!513 = !DILocalVariable(name: "buf", scope: !507, file: !415, line: 563, type: !77)
!514 = !DILocation(line: 566, column: 29, scope: !507)
!515 = !DILocation(line: 566, column: 11, scope: !507)
!516 = !DILocation(line: 566, column: 2, scope: !507)
!517 = !DILocation(line: 566, column: 9, scope: !507)
!518 = !DILocation(line: 567, column: 29, scope: !507)
!519 = !DILocation(line: 567, column: 11, scope: !507)
!520 = !DILocation(line: 567, column: 2, scope: !507)
!521 = !DILocation(line: 567, column: 9, scope: !507)
!522 = !DILocation(line: 568, column: 29, scope: !507)
!523 = !DILocation(line: 568, column: 11, scope: !507)
!524 = !DILocation(line: 568, column: 2, scope: !507)
!525 = !DILocation(line: 568, column: 9, scope: !507)
!526 = !DILocation(line: 569, column: 11, scope: !507)
!527 = !DILocation(line: 569, column: 2, scope: !507)
!528 = !DILocation(line: 569, column: 9, scope: !507)
!529 = !DILocation(line: 571, column: 1, scope: !507)
