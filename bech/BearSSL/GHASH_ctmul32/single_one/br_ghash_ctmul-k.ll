; ModuleID = 'br_ghash_ctmul.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul_wrapper(i8* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !16 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i8* %1, metadata !27, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i8* %2, metadata !28, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i64 %3, metadata !29, metadata !DIExpression()), !dbg !26
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !30
  call void @public_in(%struct.smack_value* %5), !dbg !31
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !32
  call void @public_in(%struct.smack_value* %6), !dbg !33
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !34
  call void @public_in(%struct.smack_value* %7), !dbg !35
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !36
  call void @public_in(%struct.smack_value* %8), !dbg !37
  %9 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !38
  call void @public_in(%struct.smack_value* %9), !dbg !39
  %10 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 32), !dbg !40
  call void @public_in(%struct.smack_value* %10), !dbg !41
  call void @br_ghash_ctmul32(i8* %0, i8* %1, i8* %2, i64 %3), !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul_wrapper_t() #0 !dbg !44 {
  %1 = call i8* (...) @gety(), !dbg !47
  call void @llvm.dbg.value(metadata i8* %1, metadata !48, metadata !DIExpression()), !dbg !49
  %2 = call i8* (...) @geth(), !dbg !50
  call void @llvm.dbg.value(metadata i8* %2, metadata !51, metadata !DIExpression()), !dbg !49
  %3 = call i8* (...) @getdata(), !dbg !52
  call void @llvm.dbg.value(metadata i8* %3, metadata !53, metadata !DIExpression()), !dbg !49
  %4 = call i64 (...) @getlen(), !dbg !54
  call void @llvm.dbg.value(metadata i64 %4, metadata !55, metadata !DIExpression()), !dbg !49
  call void @br_ghash_ctmul32(i8* %1, i8* %2, i8* %3, i64 %4), !dbg !56
  ret void, !dbg !57
}

declare dso_local i8* @gety(...) #2

declare dso_local i8* @geth(...) #2

declare dso_local i8* @getdata(...) #2

declare dso_local i64 @getlen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul32(i8* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !58 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca [18 x i32], align 16
  %10 = alloca [18 x i32], align 16
  %11 = alloca [18 x i32], align 16
  %12 = alloca [8 x i32], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i8* %1, metadata !61, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i8* %2, metadata !62, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i64 %3, metadata !63, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !64, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata [4 x i32]* %7, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i8* %2, metadata !73, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i8* %0, metadata !76, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i8* %1, metadata !78, metadata !DIExpression()), !dbg !60
  %13 = call i32 @br_dec32be(i8* %0), !dbg !79
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !80
  store i32 %13, i32* %14, align 4, !dbg !81
  %15 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !82
  %16 = call i32 @br_dec32be(i8* %15), !dbg !83
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !84
  store i32 %16, i32* %17, align 8, !dbg !85
  %18 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !86
  %19 = call i32 @br_dec32be(i8* %18), !dbg !87
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !88
  store i32 %19, i32* %20, align 4, !dbg !89
  %21 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !90
  %22 = call i32 @br_dec32be(i8* %21), !dbg !91
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !92
  store i32 %22, i32* %23, align 16, !dbg !93
  %24 = call i32 @br_dec32be(i8* %1), !dbg !94
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !95
  store i32 %24, i32* %25, align 4, !dbg !96
  %26 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !97
  %27 = call i32 @br_dec32be(i8* %26), !dbg !98
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !99
  store i32 %27, i32* %28, align 8, !dbg !100
  %29 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !101
  %30 = call i32 @br_dec32be(i8* %29), !dbg !102
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !103
  store i32 %30, i32* %31, align 4, !dbg !104
  %32 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !105
  %33 = call i32 @br_dec32be(i8* %32), !dbg !106
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !107
  store i32 %33, i32* %34, align 16, !dbg !108
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !109
  %36 = load i32, i32* %35, align 4, !dbg !109
  %37 = call i32 @rev32(i32 %36), !dbg !110
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3, !dbg !111
  store i32 %37, i32* %38, align 4, !dbg !112
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !113
  %40 = load i32, i32* %39, align 8, !dbg !113
  %41 = call i32 @rev32(i32 %40), !dbg !114
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2, !dbg !115
  store i32 %41, i32* %42, align 8, !dbg !116
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !117
  %44 = load i32, i32* %43, align 4, !dbg !117
  %45 = call i32 @rev32(i32 %44), !dbg !118
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1, !dbg !119
  store i32 %45, i32* %46, align 4, !dbg !120
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !121
  %48 = load i32, i32* %47, align 16, !dbg !121
  %49 = call i32 @rev32(i32 %48), !dbg !122
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !123
  store i32 %49, i32* %50, align 16, !dbg !124
  br label %51, !dbg !125

51:                                               ; preds = %474, %4
  %.04 = phi i64 [ %3, %4 ], [ %.15, %474 ]
  %.02 = phi i8* [ %2, %4 ], [ %.13, %474 ], !dbg !60
  call void @llvm.dbg.value(metadata i8* %.02, metadata !73, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i64 %.04, metadata !63, metadata !DIExpression()), !dbg !60
  %52 = icmp ugt i64 %.04, 0, !dbg !126
  br i1 %52, label %53, label %480, !dbg !125

53:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata [16 x i8]* %8, metadata !127, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata [18 x i32]* %9, metadata !133, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata [18 x i32]* %10, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata [18 x i32]* %11, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata [8 x i32]* %12, metadata !142, metadata !DIExpression()), !dbg !146
  %54 = icmp uge i64 %.04, 16, !dbg !147
  br i1 %54, label %55, label %58, !dbg !149

55:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %.02, metadata !150, metadata !DIExpression()), !dbg !151
  %56 = getelementptr inbounds i8, i8* %.02, i64 16, !dbg !152
  call void @llvm.dbg.value(metadata i8* %56, metadata !73, metadata !DIExpression()), !dbg !60
  %57 = sub i64 %.04, 16, !dbg !154
  call void @llvm.dbg.value(metadata i64 %57, metadata !63, metadata !DIExpression()), !dbg !60
  br label %64, !dbg !155

58:                                               ; preds = %53
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0, !dbg !156
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %59, i8* align 1 %.02, i64 %.04, i1 false), !dbg !156
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0, !dbg !158
  %61 = getelementptr inbounds i8, i8* %60, i64 %.04, !dbg !159
  %62 = sub i64 16, %.04, !dbg !160
  call void @llvm.memset.p0i8.i64(i8* align 1 %61, i8 0, i64 %62, i1 false), !dbg !161
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0, !dbg !162
  call void @llvm.dbg.value(metadata i8* %63, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i64 0, metadata !63, metadata !DIExpression()), !dbg !60
  br label %64

64:                                               ; preds = %58, %55
  %.15 = phi i64 [ %57, %55 ], [ 0, %58 ], !dbg !163
  %.13 = phi i8* [ %56, %55 ], [ %.02, %58 ], !dbg !60
  %.01 = phi i8* [ %.02, %55 ], [ %63, %58 ], !dbg !163
  call void @llvm.dbg.value(metadata i8* %.01, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %.13, metadata !73, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i64 %.15, metadata !63, metadata !DIExpression()), !dbg !60
  %65 = call i32 @br_dec32be(i8* %.01), !dbg !164
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !165
  %67 = load i32, i32* %66, align 4, !dbg !166
  %68 = xor i32 %67, %65, !dbg !166
  store i32 %68, i32* %66, align 4, !dbg !166
  %69 = getelementptr inbounds i8, i8* %.01, i64 4, !dbg !167
  %70 = call i32 @br_dec32be(i8* %69), !dbg !168
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !169
  %72 = load i32, i32* %71, align 8, !dbg !170
  %73 = xor i32 %72, %70, !dbg !170
  store i32 %73, i32* %71, align 8, !dbg !170
  %74 = getelementptr inbounds i8, i8* %.01, i64 8, !dbg !171
  %75 = call i32 @br_dec32be(i8* %74), !dbg !172
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !173
  %77 = load i32, i32* %76, align 4, !dbg !174
  %78 = xor i32 %77, %75, !dbg !174
  store i32 %78, i32* %76, align 4, !dbg !174
  %79 = getelementptr inbounds i8, i8* %.01, i64 12, !dbg !175
  %80 = call i32 @br_dec32be(i8* %79), !dbg !176
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !177
  %82 = load i32, i32* %81, align 16, !dbg !178
  %83 = xor i32 %82, %80, !dbg !178
  store i32 %83, i32* %81, align 16, !dbg !178
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !179
  %85 = load i32, i32* %84, align 16, !dbg !179
  %86 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 0, !dbg !180
  store i32 %85, i32* %86, align 16, !dbg !181
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !182
  %88 = load i32, i32* %87, align 4, !dbg !182
  %89 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 1, !dbg !183
  store i32 %88, i32* %89, align 4, !dbg !184
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !185
  %91 = load i32, i32* %90, align 8, !dbg !185
  %92 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 2, !dbg !186
  store i32 %91, i32* %92, align 8, !dbg !187
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !188
  %94 = load i32, i32* %93, align 4, !dbg !188
  %95 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 3, !dbg !189
  store i32 %94, i32* %95, align 4, !dbg !190
  %96 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 0, !dbg !191
  %97 = load i32, i32* %96, align 16, !dbg !191
  %98 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 1, !dbg !192
  %99 = load i32, i32* %98, align 4, !dbg !192
  %100 = xor i32 %97, %99, !dbg !193
  %101 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 4, !dbg !194
  store i32 %100, i32* %101, align 16, !dbg !195
  %102 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 2, !dbg !196
  %103 = load i32, i32* %102, align 8, !dbg !196
  %104 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 3, !dbg !197
  %105 = load i32, i32* %104, align 4, !dbg !197
  %106 = xor i32 %103, %105, !dbg !198
  %107 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 5, !dbg !199
  store i32 %106, i32* %107, align 4, !dbg !200
  %108 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 0, !dbg !201
  %109 = load i32, i32* %108, align 16, !dbg !201
  %110 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 2, !dbg !202
  %111 = load i32, i32* %110, align 8, !dbg !202
  %112 = xor i32 %109, %111, !dbg !203
  %113 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 6, !dbg !204
  store i32 %112, i32* %113, align 8, !dbg !205
  %114 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 1, !dbg !206
  %115 = load i32, i32* %114, align 4, !dbg !206
  %116 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 3, !dbg !207
  %117 = load i32, i32* %116, align 4, !dbg !207
  %118 = xor i32 %115, %117, !dbg !208
  %119 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 7, !dbg !209
  store i32 %118, i32* %119, align 4, !dbg !210
  %120 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 6, !dbg !211
  %121 = load i32, i32* %120, align 8, !dbg !211
  %122 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 7, !dbg !212
  %123 = load i32, i32* %122, align 4, !dbg !212
  %124 = xor i32 %121, %123, !dbg !213
  %125 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 8, !dbg !214
  store i32 %124, i32* %125, align 16, !dbg !215
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !216
  %127 = load i32, i32* %126, align 16, !dbg !216
  %128 = call i32 @rev32(i32 %127), !dbg !217
  %129 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 9, !dbg !218
  store i32 %128, i32* %129, align 4, !dbg !219
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !220
  %131 = load i32, i32* %130, align 4, !dbg !220
  %132 = call i32 @rev32(i32 %131), !dbg !221
  %133 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 10, !dbg !222
  store i32 %132, i32* %133, align 8, !dbg !223
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !224
  %135 = load i32, i32* %134, align 8, !dbg !224
  %136 = call i32 @rev32(i32 %135), !dbg !225
  %137 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 11, !dbg !226
  store i32 %136, i32* %137, align 4, !dbg !227
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !228
  %139 = load i32, i32* %138, align 4, !dbg !228
  %140 = call i32 @rev32(i32 %139), !dbg !229
  %141 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 12, !dbg !230
  store i32 %140, i32* %141, align 16, !dbg !231
  %142 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 9, !dbg !232
  %143 = load i32, i32* %142, align 4, !dbg !232
  %144 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 10, !dbg !233
  %145 = load i32, i32* %144, align 8, !dbg !233
  %146 = xor i32 %143, %145, !dbg !234
  %147 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 13, !dbg !235
  store i32 %146, i32* %147, align 4, !dbg !236
  %148 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 11, !dbg !237
  %149 = load i32, i32* %148, align 4, !dbg !237
  %150 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 12, !dbg !238
  %151 = load i32, i32* %150, align 16, !dbg !238
  %152 = xor i32 %149, %151, !dbg !239
  %153 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 14, !dbg !240
  store i32 %152, i32* %153, align 8, !dbg !241
  %154 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 9, !dbg !242
  %155 = load i32, i32* %154, align 4, !dbg !242
  %156 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 11, !dbg !243
  %157 = load i32, i32* %156, align 4, !dbg !243
  %158 = xor i32 %155, %157, !dbg !244
  %159 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 15, !dbg !245
  store i32 %158, i32* %159, align 4, !dbg !246
  %160 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 10, !dbg !247
  %161 = load i32, i32* %160, align 8, !dbg !247
  %162 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 12, !dbg !248
  %163 = load i32, i32* %162, align 16, !dbg !248
  %164 = xor i32 %161, %163, !dbg !249
  %165 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 16, !dbg !250
  store i32 %164, i32* %165, align 16, !dbg !251
  %166 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 15, !dbg !252
  %167 = load i32, i32* %166, align 4, !dbg !252
  %168 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 16, !dbg !253
  %169 = load i32, i32* %168, align 16, !dbg !253
  %170 = xor i32 %167, %169, !dbg !254
  %171 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 17, !dbg !255
  store i32 %170, i32* %171, align 4, !dbg !256
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !257
  %173 = load i32, i32* %172, align 16, !dbg !257
  %174 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 0, !dbg !258
  store i32 %173, i32* %174, align 16, !dbg !259
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !260
  %176 = load i32, i32* %175, align 4, !dbg !260
  %177 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 1, !dbg !261
  store i32 %176, i32* %177, align 4, !dbg !262
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !263
  %179 = load i32, i32* %178, align 8, !dbg !263
  %180 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 2, !dbg !264
  store i32 %179, i32* %180, align 8, !dbg !265
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !266
  %182 = load i32, i32* %181, align 4, !dbg !266
  %183 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 3, !dbg !267
  store i32 %182, i32* %183, align 4, !dbg !268
  %184 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 0, !dbg !269
  %185 = load i32, i32* %184, align 16, !dbg !269
  %186 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 1, !dbg !270
  %187 = load i32, i32* %186, align 4, !dbg !270
  %188 = xor i32 %185, %187, !dbg !271
  %189 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 4, !dbg !272
  store i32 %188, i32* %189, align 16, !dbg !273
  %190 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 2, !dbg !274
  %191 = load i32, i32* %190, align 8, !dbg !274
  %192 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 3, !dbg !275
  %193 = load i32, i32* %192, align 4, !dbg !275
  %194 = xor i32 %191, %193, !dbg !276
  %195 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 5, !dbg !277
  store i32 %194, i32* %195, align 4, !dbg !278
  %196 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 0, !dbg !279
  %197 = load i32, i32* %196, align 16, !dbg !279
  %198 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 2, !dbg !280
  %199 = load i32, i32* %198, align 8, !dbg !280
  %200 = xor i32 %197, %199, !dbg !281
  %201 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 6, !dbg !282
  store i32 %200, i32* %201, align 8, !dbg !283
  %202 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 1, !dbg !284
  %203 = load i32, i32* %202, align 4, !dbg !284
  %204 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 3, !dbg !285
  %205 = load i32, i32* %204, align 4, !dbg !285
  %206 = xor i32 %203, %205, !dbg !286
  %207 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 7, !dbg !287
  store i32 %206, i32* %207, align 4, !dbg !288
  %208 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 6, !dbg !289
  %209 = load i32, i32* %208, align 8, !dbg !289
  %210 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 7, !dbg !290
  %211 = load i32, i32* %210, align 4, !dbg !290
  %212 = xor i32 %209, %211, !dbg !291
  %213 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 8, !dbg !292
  store i32 %212, i32* %213, align 16, !dbg !293
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !294
  %215 = load i32, i32* %214, align 16, !dbg !294
  %216 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 9, !dbg !295
  store i32 %215, i32* %216, align 4, !dbg !296
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1, !dbg !297
  %218 = load i32, i32* %217, align 4, !dbg !297
  %219 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 10, !dbg !298
  store i32 %218, i32* %219, align 8, !dbg !299
  %220 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2, !dbg !300
  %221 = load i32, i32* %220, align 8, !dbg !300
  %222 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 11, !dbg !301
  store i32 %221, i32* %222, align 4, !dbg !302
  %223 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3, !dbg !303
  %224 = load i32, i32* %223, align 4, !dbg !303
  %225 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 12, !dbg !304
  store i32 %224, i32* %225, align 16, !dbg !305
  %226 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 9, !dbg !306
  %227 = load i32, i32* %226, align 4, !dbg !306
  %228 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 10, !dbg !307
  %229 = load i32, i32* %228, align 8, !dbg !307
  %230 = xor i32 %227, %229, !dbg !308
  %231 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 13, !dbg !309
  store i32 %230, i32* %231, align 4, !dbg !310
  %232 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 11, !dbg !311
  %233 = load i32, i32* %232, align 4, !dbg !311
  %234 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 12, !dbg !312
  %235 = load i32, i32* %234, align 16, !dbg !312
  %236 = xor i32 %233, %235, !dbg !313
  %237 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 14, !dbg !314
  store i32 %236, i32* %237, align 8, !dbg !315
  %238 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 9, !dbg !316
  %239 = load i32, i32* %238, align 4, !dbg !316
  %240 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 11, !dbg !317
  %241 = load i32, i32* %240, align 4, !dbg !317
  %242 = xor i32 %239, %241, !dbg !318
  %243 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 15, !dbg !319
  store i32 %242, i32* %243, align 4, !dbg !320
  %244 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 10, !dbg !321
  %245 = load i32, i32* %244, align 8, !dbg !321
  %246 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 12, !dbg !322
  %247 = load i32, i32* %246, align 16, !dbg !322
  %248 = xor i32 %245, %247, !dbg !323
  %249 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 16, !dbg !324
  store i32 %248, i32* %249, align 16, !dbg !325
  %250 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 15, !dbg !326
  %251 = load i32, i32* %250, align 4, !dbg !326
  %252 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 16, !dbg !327
  %253 = load i32, i32* %252, align 16, !dbg !327
  %254 = xor i32 %251, %253, !dbg !328
  %255 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 17, !dbg !329
  store i32 %254, i32* %255, align 4, !dbg !330
  call void @llvm.dbg.value(metadata i32 0, metadata !331, metadata !DIExpression()), !dbg !151
  br label %256, !dbg !333

256:                                              ; preds = %268, %64
  %.0 = phi i32 [ 0, %64 ], [ %269, %268 ], !dbg !335
  call void @llvm.dbg.value(metadata i32 %.0, metadata !331, metadata !DIExpression()), !dbg !151
  %257 = icmp slt i32 %.0, 18, !dbg !336
  br i1 %257, label %258, label %270, !dbg !338

258:                                              ; preds = %256
  %259 = sext i32 %.0 to i64, !dbg !339
  %260 = getelementptr inbounds [18 x i32], [18 x i32]* %9, i64 0, i64 %259, !dbg !339
  %261 = load i32, i32* %260, align 4, !dbg !339
  %262 = sext i32 %.0 to i64, !dbg !341
  %263 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 %262, !dbg !341
  %264 = load i32, i32* %263, align 4, !dbg !341
  %265 = call i32 @bmul32(i32 %261, i32 %264), !dbg !342
  %266 = sext i32 %.0 to i64, !dbg !343
  %267 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 %266, !dbg !343
  store i32 %265, i32* %267, align 4, !dbg !344
  br label %268, !dbg !345

268:                                              ; preds = %258
  %269 = add nsw i32 %.0, 1, !dbg !346
  call void @llvm.dbg.value(metadata i32 %269, metadata !331, metadata !DIExpression()), !dbg !151
  br label %256, !dbg !347, !llvm.loop !348

270:                                              ; preds = %256
  %271 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 0, !dbg !351
  %272 = load i32, i32* %271, align 16, !dbg !351
  %273 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 1, !dbg !352
  %274 = load i32, i32* %273, align 4, !dbg !352
  %275 = xor i32 %272, %274, !dbg !353
  %276 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 4, !dbg !354
  %277 = load i32, i32* %276, align 16, !dbg !355
  %278 = xor i32 %277, %275, !dbg !355
  store i32 %278, i32* %276, align 16, !dbg !355
  %279 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 2, !dbg !356
  %280 = load i32, i32* %279, align 8, !dbg !356
  %281 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 3, !dbg !357
  %282 = load i32, i32* %281, align 4, !dbg !357
  %283 = xor i32 %280, %282, !dbg !358
  %284 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 5, !dbg !359
  %285 = load i32, i32* %284, align 4, !dbg !360
  %286 = xor i32 %285, %283, !dbg !360
  store i32 %286, i32* %284, align 4, !dbg !360
  %287 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 6, !dbg !361
  %288 = load i32, i32* %287, align 8, !dbg !361
  %289 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 7, !dbg !362
  %290 = load i32, i32* %289, align 4, !dbg !362
  %291 = xor i32 %288, %290, !dbg !363
  %292 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 8, !dbg !364
  %293 = load i32, i32* %292, align 16, !dbg !365
  %294 = xor i32 %293, %291, !dbg !365
  store i32 %294, i32* %292, align 16, !dbg !365
  %295 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 9, !dbg !366
  %296 = load i32, i32* %295, align 4, !dbg !366
  %297 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 10, !dbg !367
  %298 = load i32, i32* %297, align 8, !dbg !367
  %299 = xor i32 %296, %298, !dbg !368
  %300 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 13, !dbg !369
  %301 = load i32, i32* %300, align 4, !dbg !370
  %302 = xor i32 %301, %299, !dbg !370
  store i32 %302, i32* %300, align 4, !dbg !370
  %303 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 11, !dbg !371
  %304 = load i32, i32* %303, align 4, !dbg !371
  %305 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 12, !dbg !372
  %306 = load i32, i32* %305, align 16, !dbg !372
  %307 = xor i32 %304, %306, !dbg !373
  %308 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 14, !dbg !374
  %309 = load i32, i32* %308, align 8, !dbg !375
  %310 = xor i32 %309, %307, !dbg !375
  store i32 %310, i32* %308, align 8, !dbg !375
  %311 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 15, !dbg !376
  %312 = load i32, i32* %311, align 4, !dbg !376
  %313 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 16, !dbg !377
  %314 = load i32, i32* %313, align 16, !dbg !377
  %315 = xor i32 %312, %314, !dbg !378
  %316 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 17, !dbg !379
  %317 = load i32, i32* %316, align 4, !dbg !380
  %318 = xor i32 %317, %315, !dbg !380
  store i32 %318, i32* %316, align 4, !dbg !380
  %319 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 0, !dbg !381
  %320 = load i32, i32* %319, align 16, !dbg !381
  call void @llvm.dbg.value(metadata i32 %320, metadata !382, metadata !DIExpression()), !dbg !151
  %321 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 4, !dbg !383
  %322 = load i32, i32* %321, align 16, !dbg !383
  %323 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 9, !dbg !384
  %324 = load i32, i32* %323, align 4, !dbg !384
  %325 = call i32 @rev32(i32 %324), !dbg !385
  %326 = lshr i32 %325, 1, !dbg !386
  %327 = xor i32 %322, %326, !dbg !387
  call void @llvm.dbg.value(metadata i32 %327, metadata !388, metadata !DIExpression()), !dbg !151
  %328 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 1, !dbg !389
  %329 = load i32, i32* %328, align 4, !dbg !389
  %330 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 0, !dbg !390
  %331 = load i32, i32* %330, align 16, !dbg !390
  %332 = xor i32 %329, %331, !dbg !391
  %333 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 2, !dbg !392
  %334 = load i32, i32* %333, align 8, !dbg !392
  %335 = xor i32 %332, %334, !dbg !393
  %336 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 6, !dbg !394
  %337 = load i32, i32* %336, align 8, !dbg !394
  %338 = xor i32 %335, %337, !dbg !395
  %339 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 13, !dbg !396
  %340 = load i32, i32* %339, align 4, !dbg !396
  %341 = call i32 @rev32(i32 %340), !dbg !397
  %342 = lshr i32 %341, 1, !dbg !398
  %343 = xor i32 %338, %342, !dbg !399
  call void @llvm.dbg.value(metadata i32 %343, metadata !400, metadata !DIExpression()), !dbg !151
  %344 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 4, !dbg !401
  %345 = load i32, i32* %344, align 16, !dbg !401
  %346 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 5, !dbg !402
  %347 = load i32, i32* %346, align 4, !dbg !402
  %348 = xor i32 %345, %347, !dbg !403
  %349 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 8, !dbg !404
  %350 = load i32, i32* %349, align 16, !dbg !404
  %351 = xor i32 %348, %350, !dbg !405
  %352 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 10, !dbg !406
  %353 = load i32, i32* %352, align 8, !dbg !406
  %354 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 9, !dbg !407
  %355 = load i32, i32* %354, align 4, !dbg !407
  %356 = xor i32 %353, %355, !dbg !408
  %357 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 11, !dbg !409
  %358 = load i32, i32* %357, align 4, !dbg !409
  %359 = xor i32 %356, %358, !dbg !410
  %360 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 15, !dbg !411
  %361 = load i32, i32* %360, align 4, !dbg !411
  %362 = xor i32 %359, %361, !dbg !412
  %363 = call i32 @rev32(i32 %362), !dbg !413
  %364 = lshr i32 %363, 1, !dbg !414
  %365 = xor i32 %351, %364, !dbg !415
  call void @llvm.dbg.value(metadata i32 %365, metadata !416, metadata !DIExpression()), !dbg !151
  %366 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 2, !dbg !417
  %367 = load i32, i32* %366, align 8, !dbg !417
  %368 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 1, !dbg !418
  %369 = load i32, i32* %368, align 4, !dbg !418
  %370 = xor i32 %367, %369, !dbg !419
  %371 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 3, !dbg !420
  %372 = load i32, i32* %371, align 4, !dbg !420
  %373 = xor i32 %370, %372, !dbg !421
  %374 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 7, !dbg !422
  %375 = load i32, i32* %374, align 4, !dbg !422
  %376 = xor i32 %373, %375, !dbg !423
  %377 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 13, !dbg !424
  %378 = load i32, i32* %377, align 4, !dbg !424
  %379 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 14, !dbg !425
  %380 = load i32, i32* %379, align 8, !dbg !425
  %381 = xor i32 %378, %380, !dbg !426
  %382 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 17, !dbg !427
  %383 = load i32, i32* %382, align 4, !dbg !427
  %384 = xor i32 %381, %383, !dbg !428
  %385 = call i32 @rev32(i32 %384), !dbg !429
  %386 = lshr i32 %385, 1, !dbg !430
  %387 = xor i32 %376, %386, !dbg !431
  call void @llvm.dbg.value(metadata i32 %387, metadata !432, metadata !DIExpression()), !dbg !151
  %388 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 5, !dbg !433
  %389 = load i32, i32* %388, align 4, !dbg !433
  %390 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 11, !dbg !434
  %391 = load i32, i32* %390, align 4, !dbg !434
  %392 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 10, !dbg !435
  %393 = load i32, i32* %392, align 8, !dbg !435
  %394 = xor i32 %391, %393, !dbg !436
  %395 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 12, !dbg !437
  %396 = load i32, i32* %395, align 16, !dbg !437
  %397 = xor i32 %394, %396, !dbg !438
  %398 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 16, !dbg !439
  %399 = load i32, i32* %398, align 16, !dbg !439
  %400 = xor i32 %397, %399, !dbg !440
  %401 = call i32 @rev32(i32 %400), !dbg !441
  %402 = lshr i32 %401, 1, !dbg !442
  %403 = xor i32 %389, %402, !dbg !443
  call void @llvm.dbg.value(metadata i32 %403, metadata !444, metadata !DIExpression()), !dbg !151
  %404 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 3, !dbg !445
  %405 = load i32, i32* %404, align 4, !dbg !445
  %406 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 14, !dbg !446
  %407 = load i32, i32* %406, align 8, !dbg !446
  %408 = call i32 @rev32(i32 %407), !dbg !447
  %409 = lshr i32 %408, 1, !dbg !448
  %410 = xor i32 %405, %409, !dbg !449
  call void @llvm.dbg.value(metadata i32 %410, metadata !450, metadata !DIExpression()), !dbg !151
  %411 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 12, !dbg !451
  %412 = load i32, i32* %411, align 16, !dbg !451
  %413 = call i32 @rev32(i32 %412), !dbg !452
  %414 = lshr i32 %413, 1, !dbg !453
  call void @llvm.dbg.value(metadata i32 %414, metadata !454, metadata !DIExpression()), !dbg !151
  %415 = shl i32 %320, 1, !dbg !455
  %416 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0, !dbg !456
  store i32 %415, i32* %416, align 16, !dbg !457
  %417 = shl i32 %327, 1, !dbg !458
  %418 = lshr i32 %320, 31, !dbg !459
  %419 = or i32 %417, %418, !dbg !460
  %420 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1, !dbg !461
  store i32 %419, i32* %420, align 4, !dbg !462
  %421 = shl i32 %343, 1, !dbg !463
  %422 = lshr i32 %327, 31, !dbg !464
  %423 = or i32 %421, %422, !dbg !465
  %424 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2, !dbg !466
  store i32 %423, i32* %424, align 8, !dbg !467
  %425 = shl i32 %365, 1, !dbg !468
  %426 = lshr i32 %343, 31, !dbg !469
  %427 = or i32 %425, %426, !dbg !470
  %428 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3, !dbg !471
  store i32 %427, i32* %428, align 4, !dbg !472
  %429 = shl i32 %387, 1, !dbg !473
  %430 = lshr i32 %365, 31, !dbg !474
  %431 = or i32 %429, %430, !dbg !475
  %432 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4, !dbg !476
  store i32 %431, i32* %432, align 16, !dbg !477
  %433 = shl i32 %403, 1, !dbg !478
  %434 = lshr i32 %387, 31, !dbg !479
  %435 = or i32 %433, %434, !dbg !480
  %436 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5, !dbg !481
  store i32 %435, i32* %436, align 4, !dbg !482
  %437 = shl i32 %410, 1, !dbg !483
  %438 = lshr i32 %403, 31, !dbg !484
  %439 = or i32 %437, %438, !dbg !485
  %440 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 6, !dbg !486
  store i32 %439, i32* %440, align 8, !dbg !487
  %441 = shl i32 %414, 1, !dbg !488
  %442 = lshr i32 %410, 31, !dbg !489
  %443 = or i32 %441, %442, !dbg !490
  %444 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 7, !dbg !491
  store i32 %443, i32* %444, align 4, !dbg !492
  call void @llvm.dbg.value(metadata i32 0, metadata !331, metadata !DIExpression()), !dbg !151
  br label %445, !dbg !493

445:                                              ; preds = %472, %270
  %.1 = phi i32 [ 0, %270 ], [ %473, %472 ], !dbg !495
  call void @llvm.dbg.value(metadata i32 %.1, metadata !331, metadata !DIExpression()), !dbg !151
  %446 = icmp slt i32 %.1, 4, !dbg !496
  br i1 %446, label %447, label %474, !dbg !498

447:                                              ; preds = %445
  %448 = sext i32 %.1 to i64, !dbg !499
  %449 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %448, !dbg !499
  %450 = load i32, i32* %449, align 4, !dbg !499
  call void @llvm.dbg.value(metadata i32 %450, metadata !501, metadata !DIExpression()), !dbg !502
  %451 = lshr i32 %450, 1, !dbg !503
  %452 = xor i32 %450, %451, !dbg !504
  %453 = lshr i32 %450, 2, !dbg !505
  %454 = xor i32 %452, %453, !dbg !506
  %455 = lshr i32 %450, 7, !dbg !507
  %456 = xor i32 %454, %455, !dbg !508
  %457 = add nsw i32 %.1, 4, !dbg !509
  %458 = sext i32 %457 to i64, !dbg !510
  %459 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %458, !dbg !510
  %460 = load i32, i32* %459, align 4, !dbg !511
  %461 = xor i32 %460, %456, !dbg !511
  store i32 %461, i32* %459, align 4, !dbg !511
  %462 = shl i32 %450, 31, !dbg !512
  %463 = shl i32 %450, 30, !dbg !513
  %464 = xor i32 %462, %463, !dbg !514
  %465 = shl i32 %450, 25, !dbg !515
  %466 = xor i32 %464, %465, !dbg !516
  %467 = add nsw i32 %.1, 3, !dbg !517
  %468 = sext i32 %467 to i64, !dbg !518
  %469 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %468, !dbg !518
  %470 = load i32, i32* %469, align 4, !dbg !519
  %471 = xor i32 %470, %466, !dbg !519
  store i32 %471, i32* %469, align 4, !dbg !519
  br label %472, !dbg !520

472:                                              ; preds = %447
  %473 = add nsw i32 %.1, 1, !dbg !521
  call void @llvm.dbg.value(metadata i32 %473, metadata !331, metadata !DIExpression()), !dbg !151
  br label %445, !dbg !522, !llvm.loop !523

474:                                              ; preds = %445
  %475 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !525
  %476 = bitcast i32* %475 to i8*, !dbg !525
  %477 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0, !dbg !526
  %478 = getelementptr inbounds i32, i32* %477, i64 4, !dbg !527
  %479 = bitcast i32* %478 to i8*, !dbg !525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %476, i8* align 4 %479, i64 16, i1 false), !dbg !525
  br label %51, !dbg !125, !llvm.loop !528

480:                                              ; preds = %51
  %481 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !530
  %482 = load i32, i32* %481, align 4, !dbg !530
  call void @br_enc32be(i8* %0, i32 %482), !dbg !531
  %483 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !532
  %484 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !533
  %485 = load i32, i32* %484, align 8, !dbg !533
  call void @br_enc32be(i8* %483, i32 %485), !dbg !534
  %486 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !535
  %487 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !536
  %488 = load i32, i32* %487, align 4, !dbg !536
  call void @br_enc32be(i8* %486, i32 %488), !dbg !537
  %489 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !538
  %490 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !539
  %491 = load i32, i32* %490, align 16, !dbg !539
  call void @br_enc32be(i8* %489, i32 %491), !dbg !540
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !542 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i8* %0, metadata !548, metadata !DIExpression()), !dbg !547
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !549
  %3 = load i8, i8* %2, align 1, !dbg !549
  %4 = zext i8 %3 to i32, !dbg !550
  %5 = shl i32 %4, 24, !dbg !551
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !552
  %7 = load i8, i8* %6, align 1, !dbg !552
  %8 = zext i8 %7 to i32, !dbg !553
  %9 = shl i32 %8, 16, !dbg !554
  %10 = or i32 %5, %9, !dbg !555
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !556
  %12 = load i8, i8* %11, align 1, !dbg !556
  %13 = zext i8 %12 to i32, !dbg !557
  %14 = shl i32 %13, 8, !dbg !558
  %15 = or i32 %10, %14, !dbg !559
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !560
  %17 = load i8, i8* %16, align 1, !dbg !560
  %18 = zext i8 %17 to i32, !dbg !561
  %19 = or i32 %15, %18, !dbg !562
  ret i32 %19, !dbg !563
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rev32(i32 %0) #0 !dbg !564 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !567, metadata !DIExpression()), !dbg !568
  br label %2, !dbg !569

2:                                                ; preds = %1
  %3 = and i32 %0, 1431655765, !dbg !570
  %4 = shl i32 %3, 1, !dbg !570
  %5 = lshr i32 %0, 1, !dbg !570
  %6 = and i32 %5, 1431655765, !dbg !570
  %7 = or i32 %4, %6, !dbg !570
  call void @llvm.dbg.value(metadata i32 %7, metadata !567, metadata !DIExpression()), !dbg !568
  br label %8, !dbg !570

8:                                                ; preds = %2
  br label %9, !dbg !572

9:                                                ; preds = %8
  %10 = and i32 %7, 858993459, !dbg !573
  %11 = shl i32 %10, 2, !dbg !573
  %12 = lshr i32 %7, 2, !dbg !573
  %13 = and i32 %12, 858993459, !dbg !573
  %14 = or i32 %11, %13, !dbg !573
  call void @llvm.dbg.value(metadata i32 %14, metadata !567, metadata !DIExpression()), !dbg !568
  br label %15, !dbg !573

15:                                               ; preds = %9
  br label %16, !dbg !575

16:                                               ; preds = %15
  %17 = and i32 %14, 252645135, !dbg !576
  %18 = shl i32 %17, 4, !dbg !576
  %19 = lshr i32 %14, 4, !dbg !576
  %20 = and i32 %19, 252645135, !dbg !576
  %21 = or i32 %18, %20, !dbg !576
  call void @llvm.dbg.value(metadata i32 %21, metadata !567, metadata !DIExpression()), !dbg !568
  br label %22, !dbg !576

22:                                               ; preds = %16
  br label %23, !dbg !578

23:                                               ; preds = %22
  %24 = and i32 %21, 16711935, !dbg !579
  %25 = shl i32 %24, 8, !dbg !579
  %26 = lshr i32 %21, 8, !dbg !579
  %27 = and i32 %26, 16711935, !dbg !579
  %28 = or i32 %25, %27, !dbg !579
  call void @llvm.dbg.value(metadata i32 %28, metadata !567, metadata !DIExpression()), !dbg !568
  br label %29, !dbg !579

29:                                               ; preds = %23
  %30 = shl i32 %28, 16, !dbg !581
  %31 = lshr i32 %28, 16, !dbg !582
  %32 = or i32 %30, %31, !dbg !583
  ret i32 %32, !dbg !584
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @bmul32(i32 %0, i32 %1) #0 !dbg !585 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 %1, metadata !590, metadata !DIExpression()), !dbg !589
  %3 = and i32 %0, 286331153, !dbg !591
  call void @llvm.dbg.value(metadata i32 %3, metadata !592, metadata !DIExpression()), !dbg !589
  %4 = and i32 %0, 572662306, !dbg !593
  call void @llvm.dbg.value(metadata i32 %4, metadata !594, metadata !DIExpression()), !dbg !589
  %5 = and i32 %0, 1145324612, !dbg !595
  call void @llvm.dbg.value(metadata i32 %5, metadata !596, metadata !DIExpression()), !dbg !589
  %6 = and i32 %0, -2004318072, !dbg !597
  call void @llvm.dbg.value(metadata i32 %6, metadata !598, metadata !DIExpression()), !dbg !589
  %7 = and i32 %1, 286331153, !dbg !599
  call void @llvm.dbg.value(metadata i32 %7, metadata !600, metadata !DIExpression()), !dbg !589
  %8 = and i32 %1, 572662306, !dbg !601
  call void @llvm.dbg.value(metadata i32 %8, metadata !602, metadata !DIExpression()), !dbg !589
  %9 = and i32 %1, 1145324612, !dbg !603
  call void @llvm.dbg.value(metadata i32 %9, metadata !604, metadata !DIExpression()), !dbg !589
  %10 = and i32 %1, -2004318072, !dbg !605
  call void @llvm.dbg.value(metadata i32 %10, metadata !606, metadata !DIExpression()), !dbg !589
  %11 = mul i32 %3, %7, !dbg !607
  %12 = mul i32 %4, %10, !dbg !608
  %13 = xor i32 %11, %12, !dbg !609
  %14 = mul i32 %5, %9, !dbg !610
  %15 = xor i32 %13, %14, !dbg !611
  %16 = mul i32 %6, %8, !dbg !612
  %17 = xor i32 %15, %16, !dbg !613
  call void @llvm.dbg.value(metadata i32 %17, metadata !614, metadata !DIExpression()), !dbg !589
  %18 = mul i32 %3, %8, !dbg !615
  %19 = mul i32 %4, %7, !dbg !616
  %20 = xor i32 %18, %19, !dbg !617
  %21 = mul i32 %5, %10, !dbg !618
  %22 = xor i32 %20, %21, !dbg !619
  %23 = mul i32 %6, %9, !dbg !620
  %24 = xor i32 %22, %23, !dbg !621
  call void @llvm.dbg.value(metadata i32 %24, metadata !622, metadata !DIExpression()), !dbg !589
  %25 = mul i32 %3, %9, !dbg !623
  %26 = mul i32 %4, %8, !dbg !624
  %27 = xor i32 %25, %26, !dbg !625
  %28 = mul i32 %5, %7, !dbg !626
  %29 = xor i32 %27, %28, !dbg !627
  %30 = mul i32 %6, %10, !dbg !628
  %31 = xor i32 %29, %30, !dbg !629
  call void @llvm.dbg.value(metadata i32 %31, metadata !630, metadata !DIExpression()), !dbg !589
  %32 = mul i32 %3, %10, !dbg !631
  %33 = mul i32 %4, %9, !dbg !632
  %34 = xor i32 %32, %33, !dbg !633
  %35 = mul i32 %5, %8, !dbg !634
  %36 = xor i32 %34, %35, !dbg !635
  %37 = mul i32 %6, %7, !dbg !636
  %38 = xor i32 %36, %37, !dbg !637
  call void @llvm.dbg.value(metadata i32 %38, metadata !638, metadata !DIExpression()), !dbg !589
  %39 = and i32 %17, 286331153, !dbg !639
  call void @llvm.dbg.value(metadata i32 %39, metadata !614, metadata !DIExpression()), !dbg !589
  %40 = and i32 %24, 572662306, !dbg !640
  call void @llvm.dbg.value(metadata i32 %40, metadata !622, metadata !DIExpression()), !dbg !589
  %41 = and i32 %31, 1145324612, !dbg !641
  call void @llvm.dbg.value(metadata i32 %41, metadata !630, metadata !DIExpression()), !dbg !589
  %42 = and i32 %38, -2004318072, !dbg !642
  call void @llvm.dbg.value(metadata i32 %42, metadata !638, metadata !DIExpression()), !dbg !589
  %43 = or i32 %39, %40, !dbg !643
  %44 = or i32 %43, %41, !dbg !644
  %45 = or i32 %44, %42, !dbg !645
  ret i32 %45, !dbg !646
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !647 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !650, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i32 %1, metadata !652, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i8* %0, metadata !653, metadata !DIExpression()), !dbg !651
  %3 = lshr i32 %1, 24, !dbg !654
  %4 = trunc i32 %3 to i8, !dbg !655
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !656
  store i8 %4, i8* %5, align 1, !dbg !657
  %6 = lshr i32 %1, 16, !dbg !658
  %7 = trunc i32 %6 to i8, !dbg !659
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !660
  store i8 %7, i8* %8, align 1, !dbg !661
  %9 = lshr i32 %1, 8, !dbg !662
  %10 = trunc i32 %9 to i8, !dbg !663
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !664
  store i8 %10, i8* %11, align 1, !dbg !665
  %12 = trunc i32 %1 to i8, !dbg !666
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !667
  store i8 %12, i8* %13, align 1, !dbg !668
  ret void, !dbg !669
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0, !3}
!llvm.ident = !{!12, !12}
!llvm.module.flags = !{!13, !14, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "br_ghash_ctmul.c", directory: "/home/luwei/bech-back/BearSSL/GHASH_ctmul32")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !5, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "../BearSSL/src/hash/ghash_ctmul32.c", directory: "/home/luwei/bech-back/BearSSL/GHASH_ctmul32")
!5 = !{!6, !11}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = distinct !DISubprogram(name: "br_ghash_ctmul_wrapper", scope: !1, file: !1, line: 3, type: !17, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !20, !20, !22}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(name: "y", arg: 1, scope: !16, file: !1, line: 3, type: !19)
!26 = !DILocation(line: 0, scope: !16)
!27 = !DILocalVariable(name: "h", arg: 2, scope: !16, file: !1, line: 3, type: !20)
!28 = !DILocalVariable(name: "data", arg: 3, scope: !16, file: !1, line: 3, type: !20)
!29 = !DILocalVariable(name: "len", arg: 4, scope: !16, file: !1, line: 3, type: !22)
!30 = !DILocation(line: 4, column: 12, scope: !16)
!31 = !DILocation(line: 4, column: 2, scope: !16)
!32 = !DILocation(line: 5, column: 12, scope: !16)
!33 = !DILocation(line: 5, column: 2, scope: !16)
!34 = !DILocation(line: 6, column: 12, scope: !16)
!35 = !DILocation(line: 6, column: 2, scope: !16)
!36 = !DILocation(line: 7, column: 12, scope: !16)
!37 = !DILocation(line: 7, column: 2, scope: !16)
!38 = !DILocation(line: 9, column: 12, scope: !16)
!39 = !DILocation(line: 9, column: 2, scope: !16)
!40 = !DILocation(line: 10, column: 12, scope: !16)
!41 = !DILocation(line: 10, column: 2, scope: !16)
!42 = !DILocation(line: 12, column: 2, scope: !16)
!43 = !DILocation(line: 13, column: 1, scope: !16)
!44 = distinct !DISubprogram(name: "br_ghash_ctmul_wrapper_t", scope: !1, file: !1, line: 21, type: !45, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{null}
!47 = !DILocation(line: 22, column: 12, scope: !44)
!48 = !DILocalVariable(name: "y", scope: !44, file: !1, line: 22, type: !19)
!49 = !DILocation(line: 0, scope: !44)
!50 = !DILocation(line: 23, column: 19, scope: !44)
!51 = !DILocalVariable(name: "h", scope: !44, file: !1, line: 23, type: !20)
!52 = !DILocation(line: 24, column: 22, scope: !44)
!53 = !DILocalVariable(name: "data", scope: !44, file: !1, line: 24, type: !20)
!54 = !DILocation(line: 25, column: 17, scope: !44)
!55 = !DILocalVariable(name: "len", scope: !44, file: !1, line: 25, type: !22)
!56 = !DILocation(line: 26, column: 2, scope: !44)
!57 = !DILocation(line: 27, column: 1, scope: !44)
!58 = distinct !DISubprogram(name: "br_ghash_ctmul32", scope: !4, file: !4, line: 96, type: !17, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!59 = !DILocalVariable(name: "y", arg: 1, scope: !58, file: !4, line: 96, type: !19)
!60 = !DILocation(line: 0, scope: !58)
!61 = !DILocalVariable(name: "h", arg: 2, scope: !58, file: !4, line: 96, type: !20)
!62 = !DILocalVariable(name: "data", arg: 3, scope: !58, file: !4, line: 96, type: !20)
!63 = !DILocalVariable(name: "len", arg: 4, scope: !58, file: !4, line: 96, type: !22)
!64 = !DILocalVariable(name: "yw", scope: !58, file: !4, line: 107, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 4)
!68 = !DILocation(line: 107, column: 11, scope: !58)
!69 = !DILocalVariable(name: "hw", scope: !58, file: !4, line: 108, type: !65)
!70 = !DILocation(line: 108, column: 11, scope: !58)
!71 = !DILocalVariable(name: "hwr", scope: !58, file: !4, line: 108, type: !65)
!72 = !DILocation(line: 108, column: 18, scope: !58)
!73 = !DILocalVariable(name: "buf", scope: !58, file: !4, line: 105, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!76 = !DILocalVariable(name: "yb", scope: !58, file: !4, line: 106, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!78 = !DILocalVariable(name: "hb", scope: !58, file: !4, line: 105, type: !74)
!79 = !DILocation(line: 113, column: 10, scope: !58)
!80 = !DILocation(line: 113, column: 2, scope: !58)
!81 = !DILocation(line: 113, column: 8, scope: !58)
!82 = !DILocation(line: 114, column: 24, scope: !58)
!83 = !DILocation(line: 114, column: 10, scope: !58)
!84 = !DILocation(line: 114, column: 2, scope: !58)
!85 = !DILocation(line: 114, column: 8, scope: !58)
!86 = !DILocation(line: 115, column: 24, scope: !58)
!87 = !DILocation(line: 115, column: 10, scope: !58)
!88 = !DILocation(line: 115, column: 2, scope: !58)
!89 = !DILocation(line: 115, column: 8, scope: !58)
!90 = !DILocation(line: 116, column: 24, scope: !58)
!91 = !DILocation(line: 116, column: 10, scope: !58)
!92 = !DILocation(line: 116, column: 2, scope: !58)
!93 = !DILocation(line: 116, column: 8, scope: !58)
!94 = !DILocation(line: 117, column: 10, scope: !58)
!95 = !DILocation(line: 117, column: 2, scope: !58)
!96 = !DILocation(line: 117, column: 8, scope: !58)
!97 = !DILocation(line: 118, column: 24, scope: !58)
!98 = !DILocation(line: 118, column: 10, scope: !58)
!99 = !DILocation(line: 118, column: 2, scope: !58)
!100 = !DILocation(line: 118, column: 8, scope: !58)
!101 = !DILocation(line: 119, column: 24, scope: !58)
!102 = !DILocation(line: 119, column: 10, scope: !58)
!103 = !DILocation(line: 119, column: 2, scope: !58)
!104 = !DILocation(line: 119, column: 8, scope: !58)
!105 = !DILocation(line: 120, column: 24, scope: !58)
!106 = !DILocation(line: 120, column: 10, scope: !58)
!107 = !DILocation(line: 120, column: 2, scope: !58)
!108 = !DILocation(line: 120, column: 8, scope: !58)
!109 = !DILocation(line: 121, column: 17, scope: !58)
!110 = !DILocation(line: 121, column: 11, scope: !58)
!111 = !DILocation(line: 121, column: 2, scope: !58)
!112 = !DILocation(line: 121, column: 9, scope: !58)
!113 = !DILocation(line: 122, column: 17, scope: !58)
!114 = !DILocation(line: 122, column: 11, scope: !58)
!115 = !DILocation(line: 122, column: 2, scope: !58)
!116 = !DILocation(line: 122, column: 9, scope: !58)
!117 = !DILocation(line: 123, column: 17, scope: !58)
!118 = !DILocation(line: 123, column: 11, scope: !58)
!119 = !DILocation(line: 123, column: 2, scope: !58)
!120 = !DILocation(line: 123, column: 9, scope: !58)
!121 = !DILocation(line: 124, column: 17, scope: !58)
!122 = !DILocation(line: 124, column: 11, scope: !58)
!123 = !DILocation(line: 124, column: 2, scope: !58)
!124 = !DILocation(line: 124, column: 9, scope: !58)
!125 = !DILocation(line: 125, column: 2, scope: !58)
!126 = !DILocation(line: 125, column: 13, scope: !58)
!127 = !DILocalVariable(name: "tmp", scope: !128, file: !4, line: 127, type: !129)
!128 = distinct !DILexicalBlock(scope: !58, file: !4, line: 125, column: 18)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 16)
!132 = !DILocation(line: 127, column: 17, scope: !128)
!133 = !DILocalVariable(name: "a", scope: !128, file: !4, line: 129, type: !134)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 576, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 18)
!137 = !DILocation(line: 129, column: 12, scope: !128)
!138 = !DILocalVariable(name: "b", scope: !128, file: !4, line: 129, type: !134)
!139 = !DILocation(line: 129, column: 19, scope: !128)
!140 = !DILocalVariable(name: "c", scope: !128, file: !4, line: 129, type: !134)
!141 = !DILocation(line: 129, column: 26, scope: !128)
!142 = !DILocalVariable(name: "zw", scope: !128, file: !4, line: 131, type: !143)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 8)
!146 = !DILocation(line: 131, column: 12, scope: !128)
!147 = !DILocation(line: 133, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !128, file: !4, line: 133, column: 7)
!149 = !DILocation(line: 133, column: 7, scope: !128)
!150 = !DILocalVariable(name: "src", scope: !128, file: !4, line: 126, type: !74)
!151 = !DILocation(line: 0, scope: !128)
!152 = !DILocation(line: 135, column: 8, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !4, line: 133, column: 18)
!154 = !DILocation(line: 136, column: 8, scope: !153)
!155 = !DILocation(line: 137, column: 3, scope: !153)
!156 = !DILocation(line: 138, column: 4, scope: !157)
!157 = distinct !DILexicalBlock(scope: !148, file: !4, line: 137, column: 10)
!158 = !DILocation(line: 139, column: 11, scope: !157)
!159 = !DILocation(line: 139, column: 15, scope: !157)
!160 = !DILocation(line: 139, column: 38, scope: !157)
!161 = !DILocation(line: 139, column: 4, scope: !157)
!162 = !DILocation(line: 140, column: 10, scope: !157)
!163 = !DILocation(line: 0, scope: !148)
!164 = !DILocation(line: 143, column: 12, scope: !128)
!165 = !DILocation(line: 143, column: 3, scope: !128)
!166 = !DILocation(line: 143, column: 9, scope: !128)
!167 = !DILocation(line: 144, column: 27, scope: !128)
!168 = !DILocation(line: 144, column: 12, scope: !128)
!169 = !DILocation(line: 144, column: 3, scope: !128)
!170 = !DILocation(line: 144, column: 9, scope: !128)
!171 = !DILocation(line: 145, column: 27, scope: !128)
!172 = !DILocation(line: 145, column: 12, scope: !128)
!173 = !DILocation(line: 145, column: 3, scope: !128)
!174 = !DILocation(line: 145, column: 9, scope: !128)
!175 = !DILocation(line: 146, column: 27, scope: !128)
!176 = !DILocation(line: 146, column: 12, scope: !128)
!177 = !DILocation(line: 146, column: 3, scope: !128)
!178 = !DILocation(line: 146, column: 9, scope: !128)
!179 = !DILocation(line: 161, column: 10, scope: !128)
!180 = !DILocation(line: 161, column: 3, scope: !128)
!181 = !DILocation(line: 161, column: 8, scope: !128)
!182 = !DILocation(line: 162, column: 10, scope: !128)
!183 = !DILocation(line: 162, column: 3, scope: !128)
!184 = !DILocation(line: 162, column: 8, scope: !128)
!185 = !DILocation(line: 163, column: 10, scope: !128)
!186 = !DILocation(line: 163, column: 3, scope: !128)
!187 = !DILocation(line: 163, column: 8, scope: !128)
!188 = !DILocation(line: 164, column: 10, scope: !128)
!189 = !DILocation(line: 164, column: 3, scope: !128)
!190 = !DILocation(line: 164, column: 8, scope: !128)
!191 = !DILocation(line: 165, column: 10, scope: !128)
!192 = !DILocation(line: 165, column: 17, scope: !128)
!193 = !DILocation(line: 165, column: 15, scope: !128)
!194 = !DILocation(line: 165, column: 3, scope: !128)
!195 = !DILocation(line: 165, column: 8, scope: !128)
!196 = !DILocation(line: 166, column: 10, scope: !128)
!197 = !DILocation(line: 166, column: 17, scope: !128)
!198 = !DILocation(line: 166, column: 15, scope: !128)
!199 = !DILocation(line: 166, column: 3, scope: !128)
!200 = !DILocation(line: 166, column: 8, scope: !128)
!201 = !DILocation(line: 167, column: 10, scope: !128)
!202 = !DILocation(line: 167, column: 17, scope: !128)
!203 = !DILocation(line: 167, column: 15, scope: !128)
!204 = !DILocation(line: 167, column: 3, scope: !128)
!205 = !DILocation(line: 167, column: 8, scope: !128)
!206 = !DILocation(line: 168, column: 10, scope: !128)
!207 = !DILocation(line: 168, column: 17, scope: !128)
!208 = !DILocation(line: 168, column: 15, scope: !128)
!209 = !DILocation(line: 168, column: 3, scope: !128)
!210 = !DILocation(line: 168, column: 8, scope: !128)
!211 = !DILocation(line: 169, column: 10, scope: !128)
!212 = !DILocation(line: 169, column: 17, scope: !128)
!213 = !DILocation(line: 169, column: 15, scope: !128)
!214 = !DILocation(line: 169, column: 3, scope: !128)
!215 = !DILocation(line: 169, column: 8, scope: !128)
!216 = !DILocation(line: 171, column: 17, scope: !128)
!217 = !DILocation(line: 171, column: 11, scope: !128)
!218 = !DILocation(line: 171, column: 3, scope: !128)
!219 = !DILocation(line: 171, column: 9, scope: !128)
!220 = !DILocation(line: 172, column: 17, scope: !128)
!221 = !DILocation(line: 172, column: 11, scope: !128)
!222 = !DILocation(line: 172, column: 3, scope: !128)
!223 = !DILocation(line: 172, column: 9, scope: !128)
!224 = !DILocation(line: 173, column: 17, scope: !128)
!225 = !DILocation(line: 173, column: 11, scope: !128)
!226 = !DILocation(line: 173, column: 3, scope: !128)
!227 = !DILocation(line: 173, column: 9, scope: !128)
!228 = !DILocation(line: 174, column: 17, scope: !128)
!229 = !DILocation(line: 174, column: 11, scope: !128)
!230 = !DILocation(line: 174, column: 3, scope: !128)
!231 = !DILocation(line: 174, column: 9, scope: !128)
!232 = !DILocation(line: 175, column: 11, scope: !128)
!233 = !DILocation(line: 175, column: 19, scope: !128)
!234 = !DILocation(line: 175, column: 17, scope: !128)
!235 = !DILocation(line: 175, column: 3, scope: !128)
!236 = !DILocation(line: 175, column: 9, scope: !128)
!237 = !DILocation(line: 176, column: 11, scope: !128)
!238 = !DILocation(line: 176, column: 19, scope: !128)
!239 = !DILocation(line: 176, column: 17, scope: !128)
!240 = !DILocation(line: 176, column: 3, scope: !128)
!241 = !DILocation(line: 176, column: 9, scope: !128)
!242 = !DILocation(line: 177, column: 11, scope: !128)
!243 = !DILocation(line: 177, column: 19, scope: !128)
!244 = !DILocation(line: 177, column: 17, scope: !128)
!245 = !DILocation(line: 177, column: 3, scope: !128)
!246 = !DILocation(line: 177, column: 9, scope: !128)
!247 = !DILocation(line: 178, column: 11, scope: !128)
!248 = !DILocation(line: 178, column: 19, scope: !128)
!249 = !DILocation(line: 178, column: 17, scope: !128)
!250 = !DILocation(line: 178, column: 3, scope: !128)
!251 = !DILocation(line: 178, column: 9, scope: !128)
!252 = !DILocation(line: 179, column: 11, scope: !128)
!253 = !DILocation(line: 179, column: 19, scope: !128)
!254 = !DILocation(line: 179, column: 17, scope: !128)
!255 = !DILocation(line: 179, column: 3, scope: !128)
!256 = !DILocation(line: 179, column: 9, scope: !128)
!257 = !DILocation(line: 181, column: 10, scope: !128)
!258 = !DILocation(line: 181, column: 3, scope: !128)
!259 = !DILocation(line: 181, column: 8, scope: !128)
!260 = !DILocation(line: 182, column: 10, scope: !128)
!261 = !DILocation(line: 182, column: 3, scope: !128)
!262 = !DILocation(line: 182, column: 8, scope: !128)
!263 = !DILocation(line: 183, column: 10, scope: !128)
!264 = !DILocation(line: 183, column: 3, scope: !128)
!265 = !DILocation(line: 183, column: 8, scope: !128)
!266 = !DILocation(line: 184, column: 10, scope: !128)
!267 = !DILocation(line: 184, column: 3, scope: !128)
!268 = !DILocation(line: 184, column: 8, scope: !128)
!269 = !DILocation(line: 185, column: 10, scope: !128)
!270 = !DILocation(line: 185, column: 17, scope: !128)
!271 = !DILocation(line: 185, column: 15, scope: !128)
!272 = !DILocation(line: 185, column: 3, scope: !128)
!273 = !DILocation(line: 185, column: 8, scope: !128)
!274 = !DILocation(line: 186, column: 10, scope: !128)
!275 = !DILocation(line: 186, column: 17, scope: !128)
!276 = !DILocation(line: 186, column: 15, scope: !128)
!277 = !DILocation(line: 186, column: 3, scope: !128)
!278 = !DILocation(line: 186, column: 8, scope: !128)
!279 = !DILocation(line: 187, column: 10, scope: !128)
!280 = !DILocation(line: 187, column: 17, scope: !128)
!281 = !DILocation(line: 187, column: 15, scope: !128)
!282 = !DILocation(line: 187, column: 3, scope: !128)
!283 = !DILocation(line: 187, column: 8, scope: !128)
!284 = !DILocation(line: 188, column: 10, scope: !128)
!285 = !DILocation(line: 188, column: 17, scope: !128)
!286 = !DILocation(line: 188, column: 15, scope: !128)
!287 = !DILocation(line: 188, column: 3, scope: !128)
!288 = !DILocation(line: 188, column: 8, scope: !128)
!289 = !DILocation(line: 189, column: 10, scope: !128)
!290 = !DILocation(line: 189, column: 17, scope: !128)
!291 = !DILocation(line: 189, column: 15, scope: !128)
!292 = !DILocation(line: 189, column: 3, scope: !128)
!293 = !DILocation(line: 189, column: 8, scope: !128)
!294 = !DILocation(line: 191, column: 11, scope: !128)
!295 = !DILocation(line: 191, column: 3, scope: !128)
!296 = !DILocation(line: 191, column: 9, scope: !128)
!297 = !DILocation(line: 192, column: 11, scope: !128)
!298 = !DILocation(line: 192, column: 3, scope: !128)
!299 = !DILocation(line: 192, column: 9, scope: !128)
!300 = !DILocation(line: 193, column: 11, scope: !128)
!301 = !DILocation(line: 193, column: 3, scope: !128)
!302 = !DILocation(line: 193, column: 9, scope: !128)
!303 = !DILocation(line: 194, column: 11, scope: !128)
!304 = !DILocation(line: 194, column: 3, scope: !128)
!305 = !DILocation(line: 194, column: 9, scope: !128)
!306 = !DILocation(line: 195, column: 11, scope: !128)
!307 = !DILocation(line: 195, column: 19, scope: !128)
!308 = !DILocation(line: 195, column: 17, scope: !128)
!309 = !DILocation(line: 195, column: 3, scope: !128)
!310 = !DILocation(line: 195, column: 9, scope: !128)
!311 = !DILocation(line: 196, column: 11, scope: !128)
!312 = !DILocation(line: 196, column: 19, scope: !128)
!313 = !DILocation(line: 196, column: 17, scope: !128)
!314 = !DILocation(line: 196, column: 3, scope: !128)
!315 = !DILocation(line: 196, column: 9, scope: !128)
!316 = !DILocation(line: 197, column: 11, scope: !128)
!317 = !DILocation(line: 197, column: 19, scope: !128)
!318 = !DILocation(line: 197, column: 17, scope: !128)
!319 = !DILocation(line: 197, column: 3, scope: !128)
!320 = !DILocation(line: 197, column: 9, scope: !128)
!321 = !DILocation(line: 198, column: 11, scope: !128)
!322 = !DILocation(line: 198, column: 19, scope: !128)
!323 = !DILocation(line: 198, column: 17, scope: !128)
!324 = !DILocation(line: 198, column: 3, scope: !128)
!325 = !DILocation(line: 198, column: 9, scope: !128)
!326 = !DILocation(line: 199, column: 11, scope: !128)
!327 = !DILocation(line: 199, column: 19, scope: !128)
!328 = !DILocation(line: 199, column: 17, scope: !128)
!329 = !DILocation(line: 199, column: 3, scope: !128)
!330 = !DILocation(line: 199, column: 9, scope: !128)
!331 = !DILocalVariable(name: "i", scope: !128, file: !4, line: 128, type: !332)
!332 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!333 = !DILocation(line: 201, column: 8, scope: !334)
!334 = distinct !DILexicalBlock(scope: !128, file: !4, line: 201, column: 3)
!335 = !DILocation(line: 0, scope: !334)
!336 = !DILocation(line: 201, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !4, line: 201, column: 3)
!338 = !DILocation(line: 201, column: 3, scope: !334)
!339 = !DILocation(line: 202, column: 18, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !4, line: 201, column: 29)
!341 = !DILocation(line: 202, column: 24, scope: !340)
!342 = !DILocation(line: 202, column: 11, scope: !340)
!343 = !DILocation(line: 202, column: 4, scope: !340)
!344 = !DILocation(line: 202, column: 9, scope: !340)
!345 = !DILocation(line: 203, column: 3, scope: !340)
!346 = !DILocation(line: 201, column: 25, scope: !337)
!347 = !DILocation(line: 201, column: 3, scope: !337)
!348 = distinct !{!348, !338, !349, !350}
!349 = !DILocation(line: 203, column: 3, scope: !334)
!350 = !{!"llvm.loop.mustprogress"}
!351 = !DILocation(line: 205, column: 11, scope: !128)
!352 = !DILocation(line: 205, column: 18, scope: !128)
!353 = !DILocation(line: 205, column: 16, scope: !128)
!354 = !DILocation(line: 205, column: 3, scope: !128)
!355 = !DILocation(line: 205, column: 8, scope: !128)
!356 = !DILocation(line: 206, column: 11, scope: !128)
!357 = !DILocation(line: 206, column: 18, scope: !128)
!358 = !DILocation(line: 206, column: 16, scope: !128)
!359 = !DILocation(line: 206, column: 3, scope: !128)
!360 = !DILocation(line: 206, column: 8, scope: !128)
!361 = !DILocation(line: 207, column: 11, scope: !128)
!362 = !DILocation(line: 207, column: 18, scope: !128)
!363 = !DILocation(line: 207, column: 16, scope: !128)
!364 = !DILocation(line: 207, column: 3, scope: !128)
!365 = !DILocation(line: 207, column: 8, scope: !128)
!366 = !DILocation(line: 209, column: 12, scope: !128)
!367 = !DILocation(line: 209, column: 20, scope: !128)
!368 = !DILocation(line: 209, column: 18, scope: !128)
!369 = !DILocation(line: 209, column: 3, scope: !128)
!370 = !DILocation(line: 209, column: 9, scope: !128)
!371 = !DILocation(line: 210, column: 12, scope: !128)
!372 = !DILocation(line: 210, column: 20, scope: !128)
!373 = !DILocation(line: 210, column: 18, scope: !128)
!374 = !DILocation(line: 210, column: 3, scope: !128)
!375 = !DILocation(line: 210, column: 9, scope: !128)
!376 = !DILocation(line: 211, column: 12, scope: !128)
!377 = !DILocation(line: 211, column: 20, scope: !128)
!378 = !DILocation(line: 211, column: 18, scope: !128)
!379 = !DILocation(line: 211, column: 3, scope: !128)
!380 = !DILocation(line: 211, column: 9, scope: !128)
!381 = !DILocation(line: 218, column: 8, scope: !128)
!382 = !DILocalVariable(name: "d0", scope: !128, file: !4, line: 130, type: !6)
!383 = !DILocation(line: 219, column: 8, scope: !128)
!384 = !DILocation(line: 219, column: 22, scope: !128)
!385 = !DILocation(line: 219, column: 16, scope: !128)
!386 = !DILocation(line: 219, column: 28, scope: !128)
!387 = !DILocation(line: 219, column: 13, scope: !128)
!388 = !DILocalVariable(name: "d1", scope: !128, file: !4, line: 130, type: !6)
!389 = !DILocation(line: 220, column: 8, scope: !128)
!390 = !DILocation(line: 220, column: 15, scope: !128)
!391 = !DILocation(line: 220, column: 13, scope: !128)
!392 = !DILocation(line: 220, column: 22, scope: !128)
!393 = !DILocation(line: 220, column: 20, scope: !128)
!394 = !DILocation(line: 220, column: 29, scope: !128)
!395 = !DILocation(line: 220, column: 27, scope: !128)
!396 = !DILocation(line: 220, column: 43, scope: !128)
!397 = !DILocation(line: 220, column: 37, scope: !128)
!398 = !DILocation(line: 220, column: 50, scope: !128)
!399 = !DILocation(line: 220, column: 34, scope: !128)
!400 = !DILocalVariable(name: "d2", scope: !128, file: !4, line: 130, type: !6)
!401 = !DILocation(line: 221, column: 8, scope: !128)
!402 = !DILocation(line: 221, column: 15, scope: !128)
!403 = !DILocation(line: 221, column: 13, scope: !128)
!404 = !DILocation(line: 221, column: 22, scope: !128)
!405 = !DILocation(line: 221, column: 20, scope: !128)
!406 = !DILocation(line: 222, column: 13, scope: !128)
!407 = !DILocation(line: 222, column: 21, scope: !128)
!408 = !DILocation(line: 222, column: 19, scope: !128)
!409 = !DILocation(line: 222, column: 28, scope: !128)
!410 = !DILocation(line: 222, column: 26, scope: !128)
!411 = !DILocation(line: 222, column: 36, scope: !128)
!412 = !DILocation(line: 222, column: 34, scope: !128)
!413 = !DILocation(line: 222, column: 7, scope: !128)
!414 = !DILocation(line: 222, column: 43, scope: !128)
!415 = !DILocation(line: 222, column: 4, scope: !128)
!416 = !DILocalVariable(name: "d3", scope: !128, file: !4, line: 130, type: !6)
!417 = !DILocation(line: 223, column: 8, scope: !128)
!418 = !DILocation(line: 223, column: 15, scope: !128)
!419 = !DILocation(line: 223, column: 13, scope: !128)
!420 = !DILocation(line: 223, column: 22, scope: !128)
!421 = !DILocation(line: 223, column: 20, scope: !128)
!422 = !DILocation(line: 223, column: 29, scope: !128)
!423 = !DILocation(line: 223, column: 27, scope: !128)
!424 = !DILocation(line: 224, column: 13, scope: !128)
!425 = !DILocation(line: 224, column: 21, scope: !128)
!426 = !DILocation(line: 224, column: 19, scope: !128)
!427 = !DILocation(line: 224, column: 29, scope: !128)
!428 = !DILocation(line: 224, column: 27, scope: !128)
!429 = !DILocation(line: 224, column: 7, scope: !128)
!430 = !DILocation(line: 224, column: 36, scope: !128)
!431 = !DILocation(line: 224, column: 4, scope: !128)
!432 = !DILocalVariable(name: "d4", scope: !128, file: !4, line: 130, type: !6)
!433 = !DILocation(line: 225, column: 8, scope: !128)
!434 = !DILocation(line: 225, column: 22, scope: !128)
!435 = !DILocation(line: 225, column: 30, scope: !128)
!436 = !DILocation(line: 225, column: 28, scope: !128)
!437 = !DILocation(line: 225, column: 38, scope: !128)
!438 = !DILocation(line: 225, column: 36, scope: !128)
!439 = !DILocation(line: 225, column: 46, scope: !128)
!440 = !DILocation(line: 225, column: 44, scope: !128)
!441 = !DILocation(line: 225, column: 16, scope: !128)
!442 = !DILocation(line: 225, column: 53, scope: !128)
!443 = !DILocation(line: 225, column: 13, scope: !128)
!444 = !DILocalVariable(name: "d5", scope: !128, file: !4, line: 130, type: !6)
!445 = !DILocation(line: 226, column: 8, scope: !128)
!446 = !DILocation(line: 226, column: 22, scope: !128)
!447 = !DILocation(line: 226, column: 16, scope: !128)
!448 = !DILocation(line: 226, column: 29, scope: !128)
!449 = !DILocation(line: 226, column: 13, scope: !128)
!450 = !DILocalVariable(name: "d6", scope: !128, file: !4, line: 130, type: !6)
!451 = !DILocation(line: 227, column: 14, scope: !128)
!452 = !DILocation(line: 227, column: 8, scope: !128)
!453 = !DILocation(line: 227, column: 21, scope: !128)
!454 = !DILocalVariable(name: "d7", scope: !128, file: !4, line: 130, type: !6)
!455 = !DILocation(line: 229, column: 14, scope: !128)
!456 = !DILocation(line: 229, column: 3, scope: !128)
!457 = !DILocation(line: 229, column: 9, scope: !128)
!458 = !DILocation(line: 230, column: 15, scope: !128)
!459 = !DILocation(line: 230, column: 27, scope: !128)
!460 = !DILocation(line: 230, column: 21, scope: !128)
!461 = !DILocation(line: 230, column: 3, scope: !128)
!462 = !DILocation(line: 230, column: 9, scope: !128)
!463 = !DILocation(line: 231, column: 15, scope: !128)
!464 = !DILocation(line: 231, column: 27, scope: !128)
!465 = !DILocation(line: 231, column: 21, scope: !128)
!466 = !DILocation(line: 231, column: 3, scope: !128)
!467 = !DILocation(line: 231, column: 9, scope: !128)
!468 = !DILocation(line: 232, column: 15, scope: !128)
!469 = !DILocation(line: 232, column: 27, scope: !128)
!470 = !DILocation(line: 232, column: 21, scope: !128)
!471 = !DILocation(line: 232, column: 3, scope: !128)
!472 = !DILocation(line: 232, column: 9, scope: !128)
!473 = !DILocation(line: 233, column: 15, scope: !128)
!474 = !DILocation(line: 233, column: 27, scope: !128)
!475 = !DILocation(line: 233, column: 21, scope: !128)
!476 = !DILocation(line: 233, column: 3, scope: !128)
!477 = !DILocation(line: 233, column: 9, scope: !128)
!478 = !DILocation(line: 234, column: 15, scope: !128)
!479 = !DILocation(line: 234, column: 27, scope: !128)
!480 = !DILocation(line: 234, column: 21, scope: !128)
!481 = !DILocation(line: 234, column: 3, scope: !128)
!482 = !DILocation(line: 234, column: 9, scope: !128)
!483 = !DILocation(line: 235, column: 15, scope: !128)
!484 = !DILocation(line: 235, column: 27, scope: !128)
!485 = !DILocation(line: 235, column: 21, scope: !128)
!486 = !DILocation(line: 235, column: 3, scope: !128)
!487 = !DILocation(line: 235, column: 9, scope: !128)
!488 = !DILocation(line: 236, column: 15, scope: !128)
!489 = !DILocation(line: 236, column: 27, scope: !128)
!490 = !DILocation(line: 236, column: 21, scope: !128)
!491 = !DILocation(line: 236, column: 3, scope: !128)
!492 = !DILocation(line: 236, column: 9, scope: !128)
!493 = !DILocation(line: 238, column: 8, scope: !494)
!494 = distinct !DILexicalBlock(scope: !128, file: !4, line: 238, column: 3)
!495 = !DILocation(line: 0, scope: !494)
!496 = !DILocation(line: 238, column: 17, scope: !497)
!497 = distinct !DILexicalBlock(scope: !494, file: !4, line: 238, column: 3)
!498 = !DILocation(line: 238, column: 3, scope: !494)
!499 = !DILocation(line: 241, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !4, line: 238, column: 28)
!501 = !DILocalVariable(name: "lw", scope: !500, file: !4, line: 239, type: !6)
!502 = !DILocation(line: 0, scope: !500)
!503 = !DILocation(line: 242, column: 26, scope: !500)
!504 = !DILocation(line: 242, column: 20, scope: !500)
!505 = !DILocation(line: 242, column: 38, scope: !500)
!506 = !DILocation(line: 242, column: 32, scope: !500)
!507 = !DILocation(line: 242, column: 50, scope: !500)
!508 = !DILocation(line: 242, column: 44, scope: !500)
!509 = !DILocation(line: 242, column: 9, scope: !500)
!510 = !DILocation(line: 242, column: 4, scope: !500)
!511 = !DILocation(line: 242, column: 14, scope: !500)
!512 = !DILocation(line: 243, column: 21, scope: !500)
!513 = !DILocation(line: 243, column: 34, scope: !500)
!514 = !DILocation(line: 243, column: 28, scope: !500)
!515 = !DILocation(line: 243, column: 47, scope: !500)
!516 = !DILocation(line: 243, column: 41, scope: !500)
!517 = !DILocation(line: 243, column: 9, scope: !500)
!518 = !DILocation(line: 243, column: 4, scope: !500)
!519 = !DILocation(line: 243, column: 14, scope: !500)
!520 = !DILocation(line: 244, column: 3, scope: !500)
!521 = !DILocation(line: 238, column: 24, scope: !497)
!522 = !DILocation(line: 238, column: 3, scope: !497)
!523 = distinct !{!523, !498, !524, !350}
!524 = !DILocation(line: 244, column: 3, scope: !494)
!525 = !DILocation(line: 245, column: 3, scope: !128)
!526 = !DILocation(line: 245, column: 14, scope: !128)
!527 = !DILocation(line: 245, column: 17, scope: !128)
!528 = distinct !{!528, !125, !529, !350}
!529 = !DILocation(line: 246, column: 2, scope: !58)
!530 = !DILocation(line: 247, column: 17, scope: !58)
!531 = !DILocation(line: 247, column: 2, scope: !58)
!532 = !DILocation(line: 248, column: 16, scope: !58)
!533 = !DILocation(line: 248, column: 21, scope: !58)
!534 = !DILocation(line: 248, column: 2, scope: !58)
!535 = !DILocation(line: 249, column: 16, scope: !58)
!536 = !DILocation(line: 249, column: 21, scope: !58)
!537 = !DILocation(line: 249, column: 2, scope: !58)
!538 = !DILocation(line: 250, column: 16, scope: !58)
!539 = !DILocation(line: 250, column: 22, scope: !58)
!540 = !DILocation(line: 250, column: 2, scope: !58)
!541 = !DILocation(line: 251, column: 1, scope: !58)
!542 = distinct !DISubprogram(name: "br_dec32be", scope: !543, file: !543, line: 590, type: !544, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!543 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/GHASH_ctmul32")
!544 = !DISubroutineType(types: !545)
!545 = !{!6, !20}
!546 = !DILocalVariable(name: "src", arg: 1, scope: !542, file: !543, line: 590, type: !20)
!547 = !DILocation(line: 0, scope: !542)
!548 = !DILocalVariable(name: "buf", scope: !542, file: !543, line: 595, type: !74)
!549 = !DILocation(line: 598, column: 20, scope: !542)
!550 = !DILocation(line: 598, column: 10, scope: !542)
!551 = !DILocation(line: 598, column: 27, scope: !542)
!552 = !DILocation(line: 599, column: 16, scope: !542)
!553 = !DILocation(line: 599, column: 6, scope: !542)
!554 = !DILocation(line: 599, column: 23, scope: !542)
!555 = !DILocation(line: 599, column: 3, scope: !542)
!556 = !DILocation(line: 600, column: 16, scope: !542)
!557 = !DILocation(line: 600, column: 6, scope: !542)
!558 = !DILocation(line: 600, column: 23, scope: !542)
!559 = !DILocation(line: 600, column: 3, scope: !542)
!560 = !DILocation(line: 601, column: 15, scope: !542)
!561 = !DILocation(line: 601, column: 5, scope: !542)
!562 = !DILocation(line: 601, column: 3, scope: !542)
!563 = !DILocation(line: 598, column: 2, scope: !542)
!564 = distinct !DISubprogram(name: "rev32", scope: !4, file: !4, line: 78, type: !565, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!565 = !DISubroutineType(types: !566)
!566 = !{!6, !6}
!567 = !DILocalVariable(name: "x", arg: 1, scope: !564, file: !4, line: 78, type: !6)
!568 = !DILocation(line: 0, scope: !564)
!569 = !DILocation(line: 85, column: 2, scope: !564)
!570 = !DILocation(line: 85, column: 2, scope: !571)
!571 = distinct !DILexicalBlock(scope: !564, file: !4, line: 85, column: 2)
!572 = !DILocation(line: 86, column: 2, scope: !564)
!573 = !DILocation(line: 86, column: 2, scope: !574)
!574 = distinct !DILexicalBlock(scope: !564, file: !4, line: 86, column: 2)
!575 = !DILocation(line: 87, column: 2, scope: !564)
!576 = !DILocation(line: 87, column: 2, scope: !577)
!577 = distinct !DILexicalBlock(scope: !564, file: !4, line: 87, column: 2)
!578 = !DILocation(line: 88, column: 2, scope: !564)
!579 = !DILocation(line: 88, column: 2, scope: !580)
!580 = distinct !DILexicalBlock(scope: !564, file: !4, line: 88, column: 2)
!581 = !DILocation(line: 89, column: 12, scope: !564)
!582 = !DILocation(line: 89, column: 24, scope: !564)
!583 = !DILocation(line: 89, column: 19, scope: !564)
!584 = !DILocation(line: 89, column: 2, scope: !564)
!585 = distinct !DISubprogram(name: "bmul32", scope: !4, file: !4, line: 49, type: !586, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!586 = !DISubroutineType(types: !587)
!587 = !{!6, !6, !6}
!588 = !DILocalVariable(name: "x", arg: 1, scope: !585, file: !4, line: 49, type: !6)
!589 = !DILocation(line: 0, scope: !585)
!590 = !DILocalVariable(name: "y", arg: 2, scope: !585, file: !4, line: 49, type: !6)
!591 = !DILocation(line: 55, column: 9, scope: !585)
!592 = !DILocalVariable(name: "x0", scope: !585, file: !4, line: 51, type: !6)
!593 = !DILocation(line: 56, column: 9, scope: !585)
!594 = !DILocalVariable(name: "x1", scope: !585, file: !4, line: 51, type: !6)
!595 = !DILocation(line: 57, column: 9, scope: !585)
!596 = !DILocalVariable(name: "x2", scope: !585, file: !4, line: 51, type: !6)
!597 = !DILocation(line: 58, column: 9, scope: !585)
!598 = !DILocalVariable(name: "x3", scope: !585, file: !4, line: 51, type: !6)
!599 = !DILocation(line: 59, column: 9, scope: !585)
!600 = !DILocalVariable(name: "y0", scope: !585, file: !4, line: 52, type: !6)
!601 = !DILocation(line: 60, column: 9, scope: !585)
!602 = !DILocalVariable(name: "y1", scope: !585, file: !4, line: 52, type: !6)
!603 = !DILocation(line: 61, column: 9, scope: !585)
!604 = !DILocalVariable(name: "y2", scope: !585, file: !4, line: 52, type: !6)
!605 = !DILocation(line: 62, column: 9, scope: !585)
!606 = !DILocalVariable(name: "y3", scope: !585, file: !4, line: 52, type: !6)
!607 = !DILocation(line: 63, column: 11, scope: !585)
!608 = !DILocation(line: 63, column: 23, scope: !585)
!609 = !DILocation(line: 63, column: 17, scope: !585)
!610 = !DILocation(line: 63, column: 35, scope: !585)
!611 = !DILocation(line: 63, column: 29, scope: !585)
!612 = !DILocation(line: 63, column: 47, scope: !585)
!613 = !DILocation(line: 63, column: 41, scope: !585)
!614 = !DILocalVariable(name: "z0", scope: !585, file: !4, line: 53, type: !6)
!615 = !DILocation(line: 64, column: 11, scope: !585)
!616 = !DILocation(line: 64, column: 23, scope: !585)
!617 = !DILocation(line: 64, column: 17, scope: !585)
!618 = !DILocation(line: 64, column: 35, scope: !585)
!619 = !DILocation(line: 64, column: 29, scope: !585)
!620 = !DILocation(line: 64, column: 47, scope: !585)
!621 = !DILocation(line: 64, column: 41, scope: !585)
!622 = !DILocalVariable(name: "z1", scope: !585, file: !4, line: 53, type: !6)
!623 = !DILocation(line: 65, column: 11, scope: !585)
!624 = !DILocation(line: 65, column: 23, scope: !585)
!625 = !DILocation(line: 65, column: 17, scope: !585)
!626 = !DILocation(line: 65, column: 35, scope: !585)
!627 = !DILocation(line: 65, column: 29, scope: !585)
!628 = !DILocation(line: 65, column: 47, scope: !585)
!629 = !DILocation(line: 65, column: 41, scope: !585)
!630 = !DILocalVariable(name: "z2", scope: !585, file: !4, line: 53, type: !6)
!631 = !DILocation(line: 66, column: 11, scope: !585)
!632 = !DILocation(line: 66, column: 23, scope: !585)
!633 = !DILocation(line: 66, column: 17, scope: !585)
!634 = !DILocation(line: 66, column: 35, scope: !585)
!635 = !DILocation(line: 66, column: 29, scope: !585)
!636 = !DILocation(line: 66, column: 47, scope: !585)
!637 = !DILocation(line: 66, column: 41, scope: !585)
!638 = !DILocalVariable(name: "z3", scope: !585, file: !4, line: 53, type: !6)
!639 = !DILocation(line: 67, column: 5, scope: !585)
!640 = !DILocation(line: 68, column: 5, scope: !585)
!641 = !DILocation(line: 69, column: 5, scope: !585)
!642 = !DILocation(line: 70, column: 5, scope: !585)
!643 = !DILocation(line: 71, column: 12, scope: !585)
!644 = !DILocation(line: 71, column: 17, scope: !585)
!645 = !DILocation(line: 71, column: 22, scope: !585)
!646 = !DILocation(line: 71, column: 2, scope: !585)
!647 = distinct !DISubprogram(name: "br_enc32be", scope: !543, file: !543, line: 558, type: !648, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !19, !6}
!650 = !DILocalVariable(name: "dst", arg: 1, scope: !647, file: !543, line: 558, type: !19)
!651 = !DILocation(line: 0, scope: !647)
!652 = !DILocalVariable(name: "x", arg: 2, scope: !647, file: !543, line: 558, type: !6)
!653 = !DILocalVariable(name: "buf", scope: !647, file: !543, line: 563, type: !77)
!654 = !DILocation(line: 566, column: 29, scope: !647)
!655 = !DILocation(line: 566, column: 11, scope: !647)
!656 = !DILocation(line: 566, column: 2, scope: !647)
!657 = !DILocation(line: 566, column: 9, scope: !647)
!658 = !DILocation(line: 567, column: 29, scope: !647)
!659 = !DILocation(line: 567, column: 11, scope: !647)
!660 = !DILocation(line: 567, column: 2, scope: !647)
!661 = !DILocation(line: 567, column: 9, scope: !647)
!662 = !DILocation(line: 568, column: 29, scope: !647)
!663 = !DILocation(line: 568, column: 11, scope: !647)
!664 = !DILocation(line: 568, column: 2, scope: !647)
!665 = !DILocation(line: 568, column: 9, scope: !647)
!666 = !DILocation(line: 569, column: 11, scope: !647)
!667 = !DILocation(line: 569, column: 2, scope: !647)
!668 = !DILocation(line: 569, column: 9, scope: !647)
!669 = !DILocation(line: 571, column: 1, scope: !647)
