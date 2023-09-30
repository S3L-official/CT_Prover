; ModuleID = 'remove_padding.ll'
source_filename = "remove_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ssl_st = type { i8*, i64, %struct.ssl3_state_st*, %struct.evp_cipher_ctx_st*, i32 }
%struct.ssl3_state_st = type { i64, [8 x i8] }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st* }
%struct.evp_cipher_st = type { i64 }
%struct.ssl3_record_st = type { i32, i8*, i32, i8* }
%struct.smack_value = type { i8* }

@.str = private unnamed_addr constant [9 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CRYPTO_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !11 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i8* %1, metadata !25, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i64 %2, metadata !26, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i8* %1, metadata !28, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i8 0, metadata !29, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i64 0, metadata !30, metadata !DIExpression()), !dbg !24
  br label %4, !dbg !31

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !33
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !24
  call void @llvm.dbg.value(metadata i8 %.0, metadata !29, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i64 %.01, metadata !30, metadata !DIExpression()), !dbg !24
  %5 = icmp ult i64 %.01, %2, !dbg !34
  br i1 %5, label %6, label %19, !dbg !36

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !37
  %8 = load i8, i8* %7, align 1, !dbg !37
  %9 = zext i8 %8 to i32, !dbg !37
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !38
  %11 = load i8, i8* %10, align 1, !dbg !38
  %12 = sext i8 %11 to i32, !dbg !38
  %13 = xor i32 %9, %12, !dbg !39
  %14 = zext i8 %.0 to i32, !dbg !40
  %15 = or i32 %14, %13, !dbg !40
  %16 = trunc i32 %15 to i8, !dbg !40
  call void @llvm.dbg.value(metadata i8 %16, metadata !29, metadata !DIExpression()), !dbg !24
  br label %17, !dbg !41

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !42
  call void @llvm.dbg.value(metadata i64 %18, metadata !30, metadata !DIExpression()), !dbg !24
  br label %4, !dbg !43, !llvm.loop !44

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !47
  ret i32 %20, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls1_cbc_remove_padding(%struct.ssl_st* %0, %struct.ssl3_record_st* %1, i32 %2, i32 %3) #0 !dbg !49 {
  call void @llvm.dbg.value(metadata %struct.ssl_st* %0, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata %struct.ssl3_record_st* %1, metadata !94, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i32 %2, metadata !95, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i32 %3, metadata !96, metadata !DIExpression()), !dbg !93
  %5 = add i32 1, %3, !dbg !97
  call void @llvm.dbg.value(metadata i32 %5, metadata !98, metadata !DIExpression()), !dbg !93
  %6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 4, !dbg !100
  %7 = load i32, i32* %6, align 8, !dbg !100
  %8 = and i32 %7, 1, !dbg !100
  %9 = icmp ne i32 %8, 0, !dbg !100
  br i1 %9, label %10, label %28, !dbg !102

10:                                               ; preds = %4
  %11 = add i32 %5, %2, !dbg !103
  %12 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !106
  %13 = load i32, i32* %12, align 8, !dbg !106
  %14 = icmp ugt i32 %11, %13, !dbg !107
  br i1 %14, label %15, label %16, !dbg !108

15:                                               ; preds = %10
  br label %145, !dbg !109

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1, !dbg !110
  %18 = load i8*, i8** %17, align 8, !dbg !111
  %19 = zext i32 %2 to i64, !dbg !111
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !111
  store i8* %20, i8** %17, align 8, !dbg !111
  %21 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 3, !dbg !112
  %22 = load i8*, i8** %21, align 8, !dbg !113
  %23 = zext i32 %2 to i64, !dbg !113
  %24 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !113
  store i8* %24, i8** %21, align 8, !dbg !113
  %25 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !114
  %26 = load i32, i32* %25, align 8, !dbg !115
  %27 = sub i32 %26, %2, !dbg !115
  store i32 %27, i32* %25, align 8, !dbg !115
  br label %34, !dbg !116

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !117
  %30 = load i32, i32* %29, align 8, !dbg !117
  %31 = icmp ugt i32 %5, %30, !dbg !119
  br i1 %31, label %32, label %33, !dbg !120

32:                                               ; preds = %28
  br label %145, !dbg !121

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %16
  %35 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1, !dbg !122
  %36 = load i8*, i8** %35, align 8, !dbg !122
  %37 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !123
  %38 = load i32, i32* %37, align 8, !dbg !123
  %39 = sub i32 %38, 1, !dbg !124
  %40 = zext i32 %39 to i64, !dbg !125
  %41 = getelementptr inbounds i8, i8* %36, i64 %40, !dbg !125
  %42 = load i8, i8* %41, align 1, !dbg !125
  %43 = zext i8 %42 to i32, !dbg !125
  call void @llvm.dbg.value(metadata i32 %43, metadata !126, metadata !DIExpression()), !dbg !93
  %44 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 1, !dbg !127
  %45 = load i64, i64* %44, align 8, !dbg !127
  %46 = and i64 %45, 512, !dbg !129
  %47 = icmp ne i64 %46, 0, !dbg !129
  br i1 %47, label %48, label %83, !dbg !130

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 0, !dbg !131
  %50 = load i8*, i8** %49, align 8, !dbg !131
  %51 = icmp ne i8* %50, null, !dbg !132
  br i1 %51, label %83, label %52, !dbg !133

52:                                               ; preds = %48
  %53 = icmp ne i32 %43, 0, !dbg !134
  br i1 %53, label %54, label %55, !dbg !137

54:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i32 2, metadata !138, metadata !DIExpression()), !dbg !93
  br label %55, !dbg !139

55:                                               ; preds = %54, %52
  %56 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 2, !dbg !140
  %57 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %56, align 8, !dbg !140
  %58 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %57, i32 0, i32 1, !dbg !142
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %58, i64 0, i64 0, !dbg !143
  %60 = call i32 @CRYPTO_memcmp(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 8), !dbg !144
  %61 = icmp eq i32 %60, 0, !dbg !145
  br i1 %61, label %62, label %71, !dbg !146

62:                                               ; preds = %55
  %63 = and i32 %43, 1, !dbg !147
  %64 = icmp ne i32 %63, 0, !dbg !147
  br i1 %64, label %71, label %65, !dbg !148

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 2, !dbg !149
  %67 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %66, align 8, !dbg !149
  %68 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %67, i32 0, i32 0, !dbg !151
  %69 = load i64, i64* %68, align 8, !dbg !152
  %70 = or i64 %69, 8, !dbg !152
  store i64 %70, i64* %68, align 8, !dbg !152
  br label %71, !dbg !153

71:                                               ; preds = %65, %62, %55
  %72 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 2, !dbg !154
  %73 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %72, align 8, !dbg !154
  %74 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %73, i32 0, i32 0, !dbg !156
  %75 = load i64, i64* %74, align 8, !dbg !156
  %76 = and i64 %75, 8, !dbg !157
  %77 = icmp ne i64 %76, 0, !dbg !157
  br i1 %77, label %78, label %82, !dbg !158

78:                                               ; preds = %71
  %79 = icmp ugt i32 %43, 0, !dbg !159
  br i1 %79, label %80, label %82, !dbg !160

80:                                               ; preds = %78
  %81 = add i32 %43, -1, !dbg !161
  call void @llvm.dbg.value(metadata i32 %81, metadata !126, metadata !DIExpression()), !dbg !93
  br label %82, !dbg !163

82:                                               ; preds = %80, %78, %71
  %.04 = phi i32 [ %81, %80 ], [ %43, %78 ], [ %43, %71 ], !dbg !93
  call void @llvm.dbg.value(metadata i32 %.04, metadata !126, metadata !DIExpression()), !dbg !93
  br label %83, !dbg !164

83:                                               ; preds = %82, %48, %34
  %.1 = phi i32 [ %43, %48 ], [ %.04, %82 ], [ %43, %34 ], !dbg !93
  call void @llvm.dbg.value(metadata i32 %.1, metadata !126, metadata !DIExpression()), !dbg !93
  %84 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 3, !dbg !165
  %85 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %84, align 8, !dbg !165
  %86 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %85, i32 0, i32 0, !dbg !165
  %87 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %86, align 8, !dbg !165
  %88 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %87, i32 0, i32 0, !dbg !165
  %89 = load i64, i64* %88, align 8, !dbg !165
  %90 = and i64 %89, 2097152, !dbg !167
  %91 = icmp ne i64 %90, 0, !dbg !167
  br i1 %91, label %92, label %97, !dbg !168

92:                                               ; preds = %83
  %93 = add i32 %.1, 1, !dbg !169
  %94 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !171
  %95 = load i32, i32* %94, align 8, !dbg !172
  %96 = sub i32 %95, %93, !dbg !172
  store i32 %96, i32* %94, align 8, !dbg !172
  br label %145, !dbg !173

97:                                               ; preds = %83
  %98 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !174
  %99 = load i32, i32* %98, align 8, !dbg !174
  %100 = add i32 %5, %.1, !dbg !175
  %101 = call i32 @constant_time_ge(i32 %99, i32 %100), !dbg !176
  call void @llvm.dbg.value(metadata i32 %101, metadata !177, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i32 255, metadata !138, metadata !DIExpression()), !dbg !93
  %102 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !178
  %103 = load i32, i32* %102, align 8, !dbg !178
  %104 = sub i32 %103, 1, !dbg !180
  %105 = icmp ugt i32 255, %104, !dbg !181
  br i1 %105, label %106, label %110, !dbg !182

106:                                              ; preds = %97
  %107 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !183
  %108 = load i32, i32* %107, align 8, !dbg !183
  %109 = sub i32 %108, 1, !dbg !184
  call void @llvm.dbg.value(metadata i32 %109, metadata !138, metadata !DIExpression()), !dbg !93
  br label %110, !dbg !185

110:                                              ; preds = %106, %97
  %.02 = phi i32 [ %109, %106 ], [ 255, %97 ], !dbg !93
  call void @llvm.dbg.value(metadata i32 %.02, metadata !138, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !93
  br label %111, !dbg !187

111:                                              ; preds = %130, %110
  %.03 = phi i32 [ %101, %110 ], [ %129, %130 ], !dbg !93
  %.01 = phi i32 [ 0, %110 ], [ %131, %130 ], !dbg !189
  call void @llvm.dbg.value(metadata i32 %.01, metadata !186, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i32 %.03, metadata !177, metadata !DIExpression()), !dbg !93
  %112 = icmp ult i32 %.01, %.02, !dbg !190
  br i1 %112, label %113, label %132, !dbg !192

113:                                              ; preds = %111
  %114 = call zeroext i8 @constant_time_ge_8(i32 %.1, i32 %.01), !dbg !193
  call void @llvm.dbg.value(metadata i8 %114, metadata !195, metadata !DIExpression()), !dbg !196
  %115 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1, !dbg !197
  %116 = load i8*, i8** %115, align 8, !dbg !197
  %117 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !198
  %118 = load i32, i32* %117, align 8, !dbg !198
  %119 = sub i32 %118, 1, !dbg !199
  %120 = sub i32 %119, %.01, !dbg !200
  %121 = zext i32 %120 to i64, !dbg !201
  %122 = getelementptr inbounds i8, i8* %116, i64 %121, !dbg !201
  %123 = load i8, i8* %122, align 1, !dbg !201
  call void @llvm.dbg.value(metadata i8 %123, metadata !202, metadata !DIExpression()), !dbg !196
  %124 = zext i8 %114 to i32, !dbg !203
  %125 = zext i8 %123 to i32, !dbg !204
  %126 = xor i32 %.1, %125, !dbg !205
  %127 = and i32 %124, %126, !dbg !206
  %128 = xor i32 %127, -1, !dbg !207
  %129 = and i32 %.03, %128, !dbg !208
  call void @llvm.dbg.value(metadata i32 %129, metadata !177, metadata !DIExpression()), !dbg !93
  br label %130, !dbg !209

130:                                              ; preds = %113
  %131 = add i32 %.01, 1, !dbg !210
  call void @llvm.dbg.value(metadata i32 %131, metadata !186, metadata !DIExpression()), !dbg !93
  br label %111, !dbg !211, !llvm.loop !212

132:                                              ; preds = %111
  %133 = and i32 %.03, 255, !dbg !214
  %134 = call i32 @constant_time_eq(i32 255, i32 %133), !dbg !215
  call void @llvm.dbg.value(metadata i32 %134, metadata !177, metadata !DIExpression()), !dbg !93
  %135 = add i32 %.1, 1, !dbg !216
  %136 = and i32 %134, %135, !dbg !217
  call void @llvm.dbg.value(metadata i32 %136, metadata !126, metadata !DIExpression()), !dbg !93
  %137 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !218
  %138 = load i32, i32* %137, align 8, !dbg !219
  %139 = sub i32 %138, %136, !dbg !219
  store i32 %139, i32* %137, align 8, !dbg !219
  %140 = shl i32 %136, 8, !dbg !220
  %141 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 2, !dbg !221
  %142 = load i32, i32* %141, align 8, !dbg !222
  %143 = or i32 %142, %140, !dbg !222
  store i32 %143, i32* %141, align 8, !dbg !222
  %144 = call i32 @constant_time_select_int(i32 %134, i32 1, i32 -1), !dbg !223
  br label %145, !dbg !224

145:                                              ; preds = %132, %92, %32, %15
  %.0 = phi i32 [ 0, %15 ], [ 1, %92 ], [ %144, %132 ], [ 0, %32 ], !dbg !93
  ret i32 %.0, !dbg !225
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_ge(i32 %0, i32 %1) #0 !dbg !226 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i32 %1, metadata !232, metadata !DIExpression()), !dbg !231
  %3 = call i32 @constant_time_lt(i32 %0, i32 %1), !dbg !233
  %4 = xor i32 %3, -1, !dbg !234
  ret i32 %4, !dbg !235
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @constant_time_ge_8(i32 %0, i32 %1) #0 !dbg !236 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i32 %1, metadata !241, metadata !DIExpression()), !dbg !240
  %3 = call i32 @constant_time_ge(i32 %0, i32 %1), !dbg !242
  %4 = trunc i32 %3 to i8, !dbg !243
  ret i8 %4, !dbg !244
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_eq(i32 %0, i32 %1) #0 !dbg !245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i32 %1, metadata !248, metadata !DIExpression()), !dbg !247
  %3 = xor i32 %0, %1, !dbg !249
  %4 = call i32 @constant_time_is_zero(i32 %3), !dbg !250
  ret i32 %4, !dbg !251
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_select_int(i32 %0, i32 %1, i32 %2) #0 !dbg !252 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32 %1, metadata !257, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32 %2, metadata !258, metadata !DIExpression()), !dbg !256
  %4 = call i32 @constant_time_select(i32 %0, i32 %1, i32 %2), !dbg !259
  ret i32 %4, !dbg !260
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @remove_padding_wrapper(i64 %0, i64 %1, i8* %2, i64 %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 !dbg !261 {
  %10 = alloca %struct.ssl3_state_st, align 8
  %11 = alloca %struct.evp_cipher_st, align 8
  %12 = alloca %struct.evp_cipher_ctx_st, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.ssl_st, align 8
  %15 = alloca %struct.ssl3_record_st, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i64 %1, metadata !266, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i8* %2, metadata !267, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i64 %3, metadata !268, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 %4, metadata !269, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i8* %5, metadata !270, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 %6, metadata !271, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 %7, metadata !272, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 %8, metadata !273, metadata !DIExpression()), !dbg !265
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !274
  call void @public_in(%struct.smack_value* %16), !dbg !275
  %17 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %5), !dbg !276
  call void @public_in(%struct.smack_value* %17), !dbg !277
  %18 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %0), !dbg !278
  call void @public_in(%struct.smack_value* %18), !dbg !279
  %19 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %1), !dbg !280
  call void @public_in(%struct.smack_value* %19), !dbg !281
  %20 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !282
  call void @public_in(%struct.smack_value* %20), !dbg !283
  %21 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %4), !dbg !284
  call void @public_in(%struct.smack_value* %21), !dbg !285
  %22 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %6), !dbg !286
  call void @public_in(%struct.smack_value* %22), !dbg !287
  %23 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %7), !dbg !288
  call void @public_in(%struct.smack_value* %23), !dbg !289
  %24 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %8), !dbg !290
  call void @public_in(%struct.smack_value* %24), !dbg !291
  call void @llvm.dbg.declare(metadata %struct.ssl3_state_st* %10, metadata !292, metadata !DIExpression()), !dbg !294
  %25 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %10, i32 0, i32 0, !dbg !295
  store i64 %1, i64* %25, align 8, !dbg !295
  %26 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %10, i32 0, i32 1, !dbg !295
  %27 = bitcast [8 x i8]* %26 to i8*, !dbg !295
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 8, i1 false), !dbg !295
  call void @llvm.dbg.declare(metadata %struct.evp_cipher_st* %11, metadata !296, metadata !DIExpression()), !dbg !297
  %28 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %11, i32 0, i32 0, !dbg !298
  store i64 %3, i64* %28, align 8, !dbg !298
  call void @llvm.dbg.declare(metadata %struct.evp_cipher_ctx_st* %12, metadata !299, metadata !DIExpression()), !dbg !300
  %29 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %12, i32 0, i32 0, !dbg !301
  store %struct.evp_cipher_st* %11, %struct.evp_cipher_st** %29, align 8, !dbg !301
  call void @llvm.dbg.declare(metadata i8* %13, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata %struct.ssl_st* %14, metadata !304, metadata !DIExpression()), !dbg !305
  %30 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 0, !dbg !306
  store i8* %13, i8** %30, align 8, !dbg !306
  %31 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 1, !dbg !306
  store i64 %0, i64* %31, align 8, !dbg !306
  %32 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 2, !dbg !306
  store %struct.ssl3_state_st* %10, %struct.ssl3_state_st** %32, align 8, !dbg !306
  %33 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 3, !dbg !306
  store %struct.evp_cipher_ctx_st* %12, %struct.evp_cipher_ctx_st** %33, align 8, !dbg !306
  %34 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 4, !dbg !306
  store i32 %4, i32* %34, align 8, !dbg !306
  call void @llvm.dbg.value(metadata %struct.ssl_st* %14, metadata !307, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %15, metadata !308, metadata !DIExpression()), !dbg !309
  %35 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 0, !dbg !310
  store i32 %6, i32* %35, align 8, !dbg !310
  %36 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 1, !dbg !310
  store i8* %5, i8** %36, align 8, !dbg !310
  %37 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 2, !dbg !310
  store i32 0, i32* %37, align 8, !dbg !310
  %38 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 3, !dbg !310
  store i8* null, i8** %38, align 8, !dbg !310
  call void @llvm.dbg.value(metadata %struct.ssl3_record_st* %15, metadata !311, metadata !DIExpression()), !dbg !265
  %39 = call i32 @tls1_cbc_remove_padding(%struct.ssl_st* %14, %struct.ssl3_record_st* %15, i32 %7, i32 %8), !dbg !312
  ret i32 %39, !dbg !313
}

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tmp(i64 %0, i64 %1, i8* %2, i64 %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 !dbg !314 {
  %10 = alloca %struct.ssl3_state_st, align 8
  %11 = alloca %struct.evp_cipher_st, align 8
  %12 = alloca %struct.evp_cipher_ctx_st, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.ssl_st, align 8
  %15 = alloca %struct.ssl3_record_st, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !315, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i64 %1, metadata !317, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i8* %2, metadata !318, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i64 %3, metadata !319, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32 %4, metadata !320, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i8* %5, metadata !321, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32 %6, metadata !322, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32 %7, metadata !323, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32 %8, metadata !324, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata %struct.ssl3_state_st* %10, metadata !325, metadata !DIExpression()), !dbg !326
  %16 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %10, i32 0, i32 0, !dbg !327
  store i64 %1, i64* %16, align 8, !dbg !327
  %17 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %10, i32 0, i32 1, !dbg !327
  %18 = bitcast [8 x i8]* %17 to i8*, !dbg !327
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 8, i1 false), !dbg !327
  call void @llvm.dbg.declare(metadata %struct.evp_cipher_st* %11, metadata !328, metadata !DIExpression()), !dbg !329
  %19 = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %11, i32 0, i32 0, !dbg !330
  store i64 %3, i64* %19, align 8, !dbg !330
  call void @llvm.dbg.declare(metadata %struct.evp_cipher_ctx_st* %12, metadata !331, metadata !DIExpression()), !dbg !332
  %20 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %12, i32 0, i32 0, !dbg !333
  store %struct.evp_cipher_st* %11, %struct.evp_cipher_st** %20, align 8, !dbg !333
  call void @llvm.dbg.declare(metadata i8* %13, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata %struct.ssl_st* %14, metadata !336, metadata !DIExpression()), !dbg !337
  %21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 0, !dbg !338
  store i8* %13, i8** %21, align 8, !dbg !338
  %22 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 1, !dbg !338
  store i64 %0, i64* %22, align 8, !dbg !338
  %23 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 2, !dbg !338
  store %struct.ssl3_state_st* %10, %struct.ssl3_state_st** %23, align 8, !dbg !338
  %24 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 3, !dbg !338
  store %struct.evp_cipher_ctx_st* %12, %struct.evp_cipher_ctx_st** %24, align 8, !dbg !338
  %25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %14, i32 0, i32 4, !dbg !338
  store i32 %4, i32* %25, align 8, !dbg !338
  call void @llvm.dbg.value(metadata %struct.ssl_st* %14, metadata !339, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %15, metadata !340, metadata !DIExpression()), !dbg !341
  %26 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 0, !dbg !342
  store i32 %6, i32* %26, align 8, !dbg !342
  %27 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 1, !dbg !342
  store i8* %5, i8** %27, align 8, !dbg !342
  %28 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 2, !dbg !342
  store i32 0, i32* %28, align 8, !dbg !342
  %29 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %15, i32 0, i32 3, !dbg !342
  store i8* null, i8** %29, align 8, !dbg !342
  call void @llvm.dbg.value(metadata %struct.ssl3_record_st* %15, metadata !343, metadata !DIExpression()), !dbg !316
  %30 = call i32 @tls1_cbc_remove_padding(%struct.ssl_st* %14, %struct.ssl3_record_st* %15, i32 %7, i32 %8), !dbg !344
  ret i32 %30, !dbg !345
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @remove_padding_wrapper_t() #0 !dbg !346 {
  call void @llvm.dbg.value(metadata i64 128, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i64 64, metadata !351, metadata !DIExpression()), !dbg !350
  %1 = call i8* (...) @getchar(), !dbg !352
  call void @llvm.dbg.value(metadata i8* %1, metadata !353, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i64 32, metadata !354, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i32 16, metadata !355, metadata !DIExpression()), !dbg !350
  %2 = call i8* (...) @getchar2(), !dbg !356
  call void @llvm.dbg.value(metadata i8* %2, metadata !357, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i32 128, metadata !358, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i32 32, metadata !359, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i32 64, metadata !360, metadata !DIExpression()), !dbg !350
  %3 = call i32 @tmp(i64 128, i64 64, i8* %1, i64 32, i32 16, i8* %2, i32 128, i32 32, i32 64), !dbg !361
  ret i32 %3, !dbg !362
}

declare dso_local i8* @getchar(...) #2

declare dso_local i8* @getchar2(...) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_lt(i32 %0, i32 %1) #0 !dbg !363 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i32 %1, metadata !366, metadata !DIExpression()), !dbg !365
  %3 = xor i32 %0, %1, !dbg !367
  %4 = sub i32 %0, %1, !dbg !368
  %5 = xor i32 %4, %1, !dbg !369
  %6 = or i32 %3, %5, !dbg !370
  %7 = xor i32 %0, %6, !dbg !371
  %8 = call i32 @constant_time_msb(i32 %7), !dbg !372
  ret i32 %8, !dbg !373
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_msb(i32 %0) #0 !dbg !374 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !377, metadata !DIExpression()), !dbg !378
  %2 = lshr i32 %0, 31, !dbg !379
  %3 = sub i32 0, %2, !dbg !380
  ret i32 %3, !dbg !381
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_is_zero(i32 %0) #0 !dbg !382 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !383, metadata !DIExpression()), !dbg !384
  %2 = xor i32 %0, -1, !dbg !385
  %3 = sub i32 %0, 1, !dbg !386
  %4 = and i32 %2, %3, !dbg !387
  %5 = call i32 @constant_time_msb(i32 %4), !dbg !388
  ret i32 %5, !dbg !389
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_select(i32 %0, i32 %1, i32 %2) #0 !dbg !390 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 %1, metadata !395, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 %2, metadata !396, metadata !DIExpression()), !dbg !394
  %4 = and i32 %0, %1, !dbg !397
  %5 = xor i32 %0, -1, !dbg !398
  %6 = and i32 %5, %2, !dbg !399
  %7 = or i32 %4, %6, !dbg !400
  ret i32 %7, !dbg !401
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "remove_padding.c", directory: "/home/luwei/bech-back/OpenSSL/tls1_cbc")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!11 = distinct !DISubprogram(name: "CRYPTO_memcmp", scope: !12, file: !12, line: 42, type: !13, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!12 = !DIFile(filename: "./../tls1_cbc_remove_padding.c", directory: "/home/luwei/bech-back/OpenSSL/tls1_cbc")
!13 = !DISubroutineType(types: !14)
!14 = !{!5, !15, !17, !20}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 46, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "in_a", arg: 1, scope: !11, file: !12, line: 42, type: !15)
!24 = !DILocation(line: 0, scope: !11)
!25 = !DILocalVariable(name: "in_b", arg: 2, scope: !11, file: !12, line: 42, type: !17)
!26 = !DILocalVariable(name: "len", arg: 3, scope: !11, file: !12, line: 42, type: !20)
!27 = !DILocalVariable(name: "a", scope: !11, file: !12, line: 45, type: !15)
!28 = !DILocalVariable(name: "b", scope: !11, file: !12, line: 46, type: !17)
!29 = !DILocalVariable(name: "x", scope: !11, file: !12, line: 47, type: !4)
!30 = !DILocalVariable(name: "i", scope: !11, file: !12, line: 44, type: !20)
!31 = !DILocation(line: 49, column: 10, scope: !32)
!32 = distinct !DILexicalBlock(scope: !11, file: !12, line: 49, column: 5)
!33 = !DILocation(line: 0, scope: !32)
!34 = !DILocation(line: 49, column: 19, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !12, line: 49, column: 5)
!36 = !DILocation(line: 49, column: 5, scope: !32)
!37 = !DILocation(line: 50, column: 14, scope: !35)
!38 = !DILocation(line: 50, column: 21, scope: !35)
!39 = !DILocation(line: 50, column: 19, scope: !35)
!40 = !DILocation(line: 50, column: 11, scope: !35)
!41 = !DILocation(line: 50, column: 9, scope: !35)
!42 = !DILocation(line: 49, column: 27, scope: !35)
!43 = !DILocation(line: 49, column: 5, scope: !35)
!44 = distinct !{!44, !36, !45, !46}
!45 = !DILocation(line: 50, column: 24, scope: !32)
!46 = !{!"llvm.loop.mustprogress"}
!47 = !DILocation(line: 52, column: 12, scope: !11)
!48 = !DILocation(line: 52, column: 5, scope: !11)
!49 = distinct !DISubprogram(name: "tls1_cbc_remove_padding", scope: !12, file: !12, line: 68, type: !50, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{!5, !52, !83, !6, !6}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !12, line: 32, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !12, line: 26, size: 320, elements: !56)
!56 = !{!57, !59, !60, !70, !82}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !55, file: !12, line: 27, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !55, file: !12, line: 28, baseType: !22, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !55, file: !12, line: 29, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !12, line: 13, size: 128, elements: !63)
!63 = !{!64, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !12, line: 14, baseType: !65, size: 64)
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !62, file: !12, line: 15, baseType: !67, size: 64, offset: 64)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 8)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !55, file: !12, line: 30, baseType: !71, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !12, line: 24, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !12, line: 22, size: 64, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !73, file: !12, line: 23, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !12, line: 20, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !12, line: 18, size: 64, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !12, line: 19, baseType: !22, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "slicing_cheat", scope: !55, file: !12, line: 31, baseType: !5, size: 32, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !12, line: 11, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !12, line: 6, size: 256, elements: !86)
!86 = !{!87, !88, !90, !91}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !85, file: !12, line: 7, baseType: !6, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !85, file: !12, line: 8, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !12, line: 9, baseType: !5, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !85, file: !12, line: 10, baseType: !89, size: 64, offset: 192)
!92 = !DILocalVariable(name: "s", arg: 1, scope: !49, file: !12, line: 68, type: !52)
!93 = !DILocation(line: 0, scope: !49)
!94 = !DILocalVariable(name: "rec", arg: 2, scope: !49, file: !12, line: 69, type: !83)
!95 = !DILocalVariable(name: "block_size", arg: 3, scope: !49, file: !12, line: 70, type: !6)
!96 = !DILocalVariable(name: "mac_size", arg: 4, scope: !49, file: !12, line: 70, type: !6)
!97 = !DILocation(line: 73, column: 60, scope: !49)
!98 = !DILocalVariable(name: "overhead", scope: !49, file: !12, line: 73, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!100 = !DILocation(line: 75, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !49, file: !12, line: 75, column: 9)
!102 = !DILocation(line: 75, column: 9, scope: !49)
!103 = !DILocation(line: 80, column: 22, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !12, line: 80, column: 13)
!105 = distinct !DILexicalBlock(scope: !101, file: !12, line: 75, column: 33)
!106 = !DILocation(line: 80, column: 42, scope: !104)
!107 = !DILocation(line: 80, column: 35, scope: !104)
!108 = !DILocation(line: 80, column: 13, scope: !105)
!109 = !DILocation(line: 81, column: 13, scope: !104)
!110 = !DILocation(line: 83, column: 14, scope: !105)
!111 = !DILocation(line: 83, column: 19, scope: !105)
!112 = !DILocation(line: 84, column: 14, scope: !105)
!113 = !DILocation(line: 84, column: 20, scope: !105)
!114 = !DILocation(line: 85, column: 14, scope: !105)
!115 = !DILocation(line: 85, column: 21, scope: !105)
!116 = !DILocation(line: 86, column: 5, scope: !105)
!117 = !DILocation(line: 86, column: 32, scope: !118)
!118 = distinct !DILexicalBlock(scope: !101, file: !12, line: 86, column: 16)
!119 = !DILocation(line: 86, column: 25, scope: !118)
!120 = !DILocation(line: 86, column: 16, scope: !101)
!121 = !DILocation(line: 87, column: 9, scope: !118)
!122 = !DILocation(line: 88, column: 27, scope: !49)
!123 = !DILocation(line: 88, column: 37, scope: !49)
!124 = !DILocation(line: 88, column: 44, scope: !49)
!125 = !DILocation(line: 88, column: 22, scope: !49)
!126 = !DILocalVariable(name: "padding_length", scope: !49, file: !12, line: 72, type: !6)
!127 = !DILocation(line: 97, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !49, file: !12, line: 97, column: 9)
!129 = !DILocation(line: 97, column: 21, scope: !128)
!130 = !DILocation(line: 97, column: 53, scope: !128)
!131 = !DILocation(line: 97, column: 60, scope: !128)
!132 = !DILocation(line: 97, column: 57, scope: !128)
!133 = !DILocation(line: 97, column: 9, scope: !49)
!134 = !DILocation(line: 98, column: 12, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !12, line: 98, column: 12)
!136 = distinct !DILexicalBlock(scope: !128, file: !12, line: 97, column: 68)
!137 = !DILocation(line: 98, column: 12, scope: !136)
!138 = !DILocalVariable(name: "to_check", scope: !49, file: !12, line: 72, type: !6)
!139 = !DILocation(line: 99, column: 13, scope: !135)
!140 = !DILocation(line: 101, column: 31, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !12, line: 101, column: 13)
!142 = !DILocation(line: 101, column: 35, scope: !141)
!143 = !DILocation(line: 101, column: 28, scope: !141)
!144 = !DILocation(line: 101, column: 14, scope: !141)
!145 = !DILocation(line: 101, column: 73, scope: !141)
!146 = !DILocation(line: 101, column: 79, scope: !141)
!147 = !DILocation(line: 102, column: 30, scope: !141)
!148 = !DILocation(line: 101, column: 13, scope: !136)
!149 = !DILocation(line: 103, column: 16, scope: !150)
!150 = distinct !DILexicalBlock(scope: !141, file: !12, line: 102, column: 36)
!151 = !DILocation(line: 103, column: 20, scope: !150)
!152 = !DILocation(line: 103, column: 26, scope: !150)
!153 = !DILocation(line: 104, column: 9, scope: !150)
!154 = !DILocation(line: 105, column: 17, scope: !155)
!155 = distinct !DILexicalBlock(scope: !136, file: !12, line: 105, column: 13)
!156 = !DILocation(line: 105, column: 21, scope: !155)
!157 = !DILocation(line: 105, column: 27, scope: !155)
!158 = !DILocation(line: 105, column: 57, scope: !155)
!159 = !DILocation(line: 105, column: 75, scope: !155)
!160 = !DILocation(line: 105, column: 13, scope: !136)
!161 = !DILocation(line: 106, column: 27, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !12, line: 105, column: 80)
!163 = !DILocation(line: 107, column: 9, scope: !162)
!164 = !DILocation(line: 108, column: 5, scope: !136)
!165 = !DILocation(line: 109, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !49, file: !12, line: 109, column: 9)
!167 = !DILocation(line: 109, column: 51, scope: !166)
!168 = !DILocation(line: 109, column: 9, scope: !49)
!169 = !DILocation(line: 111, column: 39, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !12, line: 109, column: 80)
!171 = !DILocation(line: 111, column: 14, scope: !170)
!172 = !DILocation(line: 111, column: 21, scope: !170)
!173 = !DILocation(line: 112, column: 9, scope: !170)
!174 = !DILocation(line: 114, column: 34, scope: !49)
!175 = !DILocation(line: 114, column: 51, scope: !49)
!176 = !DILocation(line: 114, column: 12, scope: !49)
!177 = !DILocalVariable(name: "good", scope: !49, file: !12, line: 72, type: !6)
!178 = !DILocation(line: 125, column: 25, scope: !179)
!179 = distinct !DILexicalBlock(scope: !49, file: !12, line: 125, column: 9)
!180 = !DILocation(line: 125, column: 32, scope: !179)
!181 = !DILocation(line: 125, column: 18, scope: !179)
!182 = !DILocation(line: 125, column: 9, scope: !49)
!183 = !DILocation(line: 126, column: 25, scope: !179)
!184 = !DILocation(line: 126, column: 32, scope: !179)
!185 = !DILocation(line: 126, column: 9, scope: !179)
!186 = !DILocalVariable(name: "i", scope: !49, file: !12, line: 72, type: !6)
!187 = !DILocation(line: 128, column: 10, scope: !188)
!188 = distinct !DILexicalBlock(scope: !49, file: !12, line: 128, column: 5)
!189 = !DILocation(line: 0, scope: !188)
!190 = !DILocation(line: 128, column: 19, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !12, line: 128, column: 5)
!192 = !DILocation(line: 128, column: 5, scope: !188)
!193 = !DILocation(line: 130, column: 30, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !12, line: 128, column: 36)
!195 = !DILocalVariable(name: "mask", scope: !194, file: !12, line: 130, type: !4)
!196 = !DILocation(line: 0, scope: !194)
!197 = !DILocation(line: 131, column: 32, scope: !194)
!198 = !DILocation(line: 131, column: 42, scope: !194)
!199 = !DILocation(line: 131, column: 49, scope: !194)
!200 = !DILocation(line: 131, column: 53, scope: !194)
!201 = !DILocation(line: 131, column: 27, scope: !194)
!202 = !DILocalVariable(name: "b", scope: !194, file: !12, line: 131, type: !4)
!203 = !DILocation(line: 136, column: 19, scope: !194)
!204 = !DILocation(line: 136, column: 44, scope: !194)
!205 = !DILocation(line: 136, column: 42, scope: !194)
!206 = !DILocation(line: 136, column: 24, scope: !194)
!207 = !DILocation(line: 136, column: 17, scope: !194)
!208 = !DILocation(line: 136, column: 14, scope: !194)
!209 = !DILocation(line: 137, column: 5, scope: !194)
!210 = !DILocation(line: 128, column: 32, scope: !191)
!211 = !DILocation(line: 128, column: 5, scope: !191)
!212 = distinct !{!212, !192, !213, !46}
!213 = !DILocation(line: 137, column: 5, scope: !188)
!214 = !DILocation(line: 143, column: 40, scope: !49)
!215 = !DILocation(line: 143, column: 12, scope: !49)
!216 = !DILocation(line: 144, column: 45, scope: !49)
!217 = !DILocation(line: 144, column: 27, scope: !49)
!218 = !DILocation(line: 145, column: 10, scope: !49)
!219 = !DILocation(line: 145, column: 17, scope: !49)
!220 = !DILocation(line: 146, column: 33, scope: !49)
!221 = !DILocation(line: 146, column: 10, scope: !49)
!222 = !DILocation(line: 146, column: 15, scope: !49)
!223 = !DILocation(line: 148, column: 12, scope: !49)
!224 = !DILocation(line: 148, column: 5, scope: !49)
!225 = !DILocation(line: 149, column: 1, scope: !49)
!226 = distinct !DISubprogram(name: "constant_time_ge", scope: !227, file: !227, line: 148, type: !228, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!227 = !DIFile(filename: "./../constant_time_locl.h", directory: "/home/luwei/bech-back/OpenSSL/tls1_cbc")
!228 = !DISubroutineType(types: !229)
!229 = !{!6, !6, !6}
!230 = !DILocalVariable(name: "a", arg: 1, scope: !226, file: !227, line: 148, type: !6)
!231 = !DILocation(line: 0, scope: !226)
!232 = !DILocalVariable(name: "b", arg: 2, scope: !226, file: !227, line: 148, type: !6)
!233 = !DILocation(line: 150, column: 13, scope: !226)
!234 = !DILocation(line: 150, column: 12, scope: !226)
!235 = !DILocation(line: 150, column: 5, scope: !226)
!236 = distinct !DISubprogram(name: "constant_time_ge_8", scope: !227, file: !227, line: 153, type: !237, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!237 = !DISubroutineType(types: !238)
!238 = !{!4, !6, !6}
!239 = !DILocalVariable(name: "a", arg: 1, scope: !236, file: !227, line: 153, type: !6)
!240 = !DILocation(line: 0, scope: !236)
!241 = !DILocalVariable(name: "b", arg: 2, scope: !236, file: !227, line: 153, type: !6)
!242 = !DILocation(line: 155, column: 28, scope: !236)
!243 = !DILocation(line: 155, column: 12, scope: !236)
!244 = !DILocation(line: 155, column: 5, scope: !236)
!245 = distinct !DISubprogram(name: "constant_time_eq", scope: !227, file: !227, line: 168, type: !228, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!246 = !DILocalVariable(name: "a", arg: 1, scope: !245, file: !227, line: 168, type: !6)
!247 = !DILocation(line: 0, scope: !245)
!248 = !DILocalVariable(name: "b", arg: 2, scope: !245, file: !227, line: 168, type: !6)
!249 = !DILocation(line: 170, column: 36, scope: !245)
!250 = !DILocation(line: 170, column: 12, scope: !245)
!251 = !DILocation(line: 170, column: 5, scope: !245)
!252 = distinct !DISubprogram(name: "constant_time_select_int", scope: !227, file: !227, line: 202, type: !253, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!253 = !DISubroutineType(types: !254)
!254 = !{!5, !6, !5, !5}
!255 = !DILocalVariable(name: "mask", arg: 1, scope: !252, file: !227, line: 202, type: !6)
!256 = !DILocation(line: 0, scope: !252)
!257 = !DILocalVariable(name: "a", arg: 2, scope: !252, file: !227, line: 202, type: !5)
!258 = !DILocalVariable(name: "b", arg: 3, scope: !252, file: !227, line: 202, type: !5)
!259 = !DILocation(line: 204, column: 18, scope: !252)
!260 = !DILocation(line: 204, column: 5, scope: !252)
!261 = distinct !DISubprogram(name: "remove_padding_wrapper", scope: !1, file: !1, line: 7, type: !262, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!262 = !DISubroutineType(types: !263)
!263 = !{!5, !22, !65, !89, !22, !5, !89, !6, !6, !6}
!264 = !DILocalVariable(name: "options", arg: 1, scope: !261, file: !1, line: 7, type: !22)
!265 = !DILocation(line: 0, scope: !261)
!266 = !DILocalVariable(name: "s3_flags", arg: 2, scope: !261, file: !1, line: 8, type: !65)
!267 = !DILocalVariable(name: "s3_read_sequence", arg: 3, scope: !261, file: !1, line: 9, type: !89)
!268 = !DILocalVariable(name: "flags", arg: 4, scope: !261, file: !1, line: 10, type: !22)
!269 = !DILocalVariable(name: "slicing_cheat", arg: 5, scope: !261, file: !1, line: 11, type: !5)
!270 = !DILocalVariable(name: "data", arg: 6, scope: !261, file: !1, line: 12, type: !89)
!271 = !DILocalVariable(name: "length", arg: 7, scope: !261, file: !1, line: 13, type: !6)
!272 = !DILocalVariable(name: "block_size", arg: 8, scope: !261, file: !1, line: 14, type: !6)
!273 = !DILocalVariable(name: "mac_size", arg: 9, scope: !261, file: !1, line: 15, type: !6)
!274 = !DILocation(line: 18, column: 13, scope: !261)
!275 = !DILocation(line: 18, column: 3, scope: !261)
!276 = !DILocation(line: 19, column: 13, scope: !261)
!277 = !DILocation(line: 19, column: 3, scope: !261)
!278 = !DILocation(line: 22, column: 13, scope: !261)
!279 = !DILocation(line: 22, column: 3, scope: !261)
!280 = !DILocation(line: 23, column: 13, scope: !261)
!281 = !DILocation(line: 23, column: 3, scope: !261)
!282 = !DILocation(line: 24, column: 13, scope: !261)
!283 = !DILocation(line: 24, column: 3, scope: !261)
!284 = !DILocation(line: 25, column: 13, scope: !261)
!285 = !DILocation(line: 25, column: 3, scope: !261)
!286 = !DILocation(line: 26, column: 13, scope: !261)
!287 = !DILocation(line: 26, column: 3, scope: !261)
!288 = !DILocation(line: 27, column: 13, scope: !261)
!289 = !DILocation(line: 27, column: 3, scope: !261)
!290 = !DILocation(line: 28, column: 13, scope: !261)
!291 = !DILocation(line: 28, column: 3, scope: !261)
!292 = !DILocalVariable(name: "s3_obj", scope: !261, file: !1, line: 30, type: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_STATE", file: !12, line: 16, baseType: !62)
!294 = !DILocation(line: 30, column: 14, scope: !261)
!295 = !DILocation(line: 30, column: 23, scope: !261)
!296 = !DILocalVariable(name: "cipher", scope: !261, file: !1, line: 32, type: !78)
!297 = !DILocation(line: 32, column: 14, scope: !261)
!298 = !DILocation(line: 32, column: 23, scope: !261)
!299 = !DILocalVariable(name: "cipher_ctx", scope: !261, file: !1, line: 33, type: !72)
!300 = !DILocation(line: 33, column: 18, scope: !261)
!301 = !DILocation(line: 33, column: 31, scope: !261)
!302 = !DILocalVariable(name: "dummy_expand", scope: !261, file: !1, line: 34, type: !19)
!303 = !DILocation(line: 34, column: 8, scope: !261)
!304 = !DILocalVariable(name: "s_obj", scope: !261, file: !1, line: 36, type: !54)
!305 = !DILocation(line: 36, column: 7, scope: !261)
!306 = !DILocation(line: 36, column: 15, scope: !261)
!307 = !DILocalVariable(name: "s", scope: !261, file: !1, line: 37, type: !52)
!308 = !DILocalVariable(name: "rec_obj", scope: !261, file: !1, line: 40, type: !84)
!309 = !DILocation(line: 40, column: 15, scope: !261)
!310 = !DILocation(line: 40, column: 25, scope: !261)
!311 = !DILocalVariable(name: "rec", scope: !261, file: !1, line: 41, type: !83)
!312 = !DILocation(line: 43, column: 10, scope: !261)
!313 = !DILocation(line: 43, column: 3, scope: !261)
!314 = distinct !DISubprogram(name: "tmp", scope: !1, file: !1, line: 49, type: !262, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!315 = !DILocalVariable(name: "options", arg: 1, scope: !314, file: !1, line: 49, type: !22)
!316 = !DILocation(line: 0, scope: !314)
!317 = !DILocalVariable(name: "s3_flags", arg: 2, scope: !314, file: !1, line: 50, type: !65)
!318 = !DILocalVariable(name: "s3_read_sequence", arg: 3, scope: !314, file: !1, line: 51, type: !89)
!319 = !DILocalVariable(name: "flags", arg: 4, scope: !314, file: !1, line: 52, type: !22)
!320 = !DILocalVariable(name: "slicing_cheat", arg: 5, scope: !314, file: !1, line: 53, type: !5)
!321 = !DILocalVariable(name: "data", arg: 6, scope: !314, file: !1, line: 54, type: !89)
!322 = !DILocalVariable(name: "length", arg: 7, scope: !314, file: !1, line: 55, type: !6)
!323 = !DILocalVariable(name: "block_size", arg: 8, scope: !314, file: !1, line: 56, type: !6)
!324 = !DILocalVariable(name: "mac_size", arg: 9, scope: !314, file: !1, line: 57, type: !6)
!325 = !DILocalVariable(name: "s3_obj", scope: !314, file: !1, line: 59, type: !293)
!326 = !DILocation(line: 59, column: 14, scope: !314)
!327 = !DILocation(line: 59, column: 23, scope: !314)
!328 = !DILocalVariable(name: "cipher", scope: !314, file: !1, line: 61, type: !78)
!329 = !DILocation(line: 61, column: 14, scope: !314)
!330 = !DILocation(line: 61, column: 23, scope: !314)
!331 = !DILocalVariable(name: "cipher_ctx", scope: !314, file: !1, line: 62, type: !72)
!332 = !DILocation(line: 62, column: 18, scope: !314)
!333 = !DILocation(line: 62, column: 31, scope: !314)
!334 = !DILocalVariable(name: "dummy_expand", scope: !314, file: !1, line: 63, type: !19)
!335 = !DILocation(line: 63, column: 8, scope: !314)
!336 = !DILocalVariable(name: "s_obj", scope: !314, file: !1, line: 65, type: !54)
!337 = !DILocation(line: 65, column: 7, scope: !314)
!338 = !DILocation(line: 65, column: 15, scope: !314)
!339 = !DILocalVariable(name: "s", scope: !314, file: !1, line: 66, type: !52)
!340 = !DILocalVariable(name: "rec_obj", scope: !314, file: !1, line: 69, type: !84)
!341 = !DILocation(line: 69, column: 15, scope: !314)
!342 = !DILocation(line: 69, column: 25, scope: !314)
!343 = !DILocalVariable(name: "rec", scope: !314, file: !1, line: 70, type: !83)
!344 = !DILocation(line: 72, column: 10, scope: !314)
!345 = !DILocation(line: 72, column: 3, scope: !314)
!346 = distinct !DISubprogram(name: "remove_padding_wrapper_t", scope: !1, file: !1, line: 78, type: !347, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!347 = !DISubroutineType(types: !348)
!348 = !{!5}
!349 = !DILocalVariable(name: "options", scope: !346, file: !1, line: 80, type: !22)
!350 = !DILocation(line: 0, scope: !346)
!351 = !DILocalVariable(name: "s3_flags", scope: !346, file: !1, line: 81, type: !65)
!352 = !DILocation(line: 82, column: 71, scope: !346)
!353 = !DILocalVariable(name: "s3_read_sequence", scope: !346, file: !1, line: 82, type: !89)
!354 = !DILocalVariable(name: "flags", scope: !346, file: !1, line: 83, type: !22)
!355 = !DILocalVariable(name: "slicing_cheat", scope: !346, file: !1, line: 84, type: !5)
!356 = !DILocation(line: 85, column: 59, scope: !346)
!357 = !DILocalVariable(name: "data", scope: !346, file: !1, line: 85, type: !89)
!358 = !DILocalVariable(name: "length", scope: !346, file: !1, line: 86, type: !6)
!359 = !DILocalVariable(name: "block_size", scope: !346, file: !1, line: 87, type: !6)
!360 = !DILocalVariable(name: "mac_size", scope: !346, file: !1, line: 88, type: !6)
!361 = !DILocation(line: 91, column: 10, scope: !346)
!362 = !DILocation(line: 91, column: 3, scope: !346)
!363 = distinct !DISubprogram(name: "constant_time_lt", scope: !227, file: !227, line: 138, type: !228, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!364 = !DILocalVariable(name: "a", arg: 1, scope: !363, file: !227, line: 138, type: !6)
!365 = !DILocation(line: 0, scope: !363)
!366 = !DILocalVariable(name: "b", arg: 2, scope: !363, file: !227, line: 138, type: !6)
!367 = !DILocation(line: 140, column: 38, scope: !363)
!368 = !DILocation(line: 140, column: 49, scope: !363)
!369 = !DILocation(line: 140, column: 54, scope: !363)
!370 = !DILocation(line: 140, column: 43, scope: !363)
!371 = !DILocation(line: 140, column: 32, scope: !363)
!372 = !DILocation(line: 140, column: 12, scope: !363)
!373 = !DILocation(line: 140, column: 5, scope: !363)
!374 = distinct !DISubprogram(name: "constant_time_msb", scope: !227, file: !227, line: 133, type: !375, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!375 = !DISubroutineType(types: !376)
!376 = !{!6, !6}
!377 = !DILocalVariable(name: "a", arg: 1, scope: !374, file: !227, line: 133, type: !6)
!378 = !DILocation(line: 0, scope: !374)
!379 = !DILocation(line: 135, column: 19, scope: !374)
!380 = !DILocation(line: 135, column: 14, scope: !374)
!381 = !DILocation(line: 135, column: 5, scope: !374)
!382 = distinct !DISubprogram(name: "constant_time_is_zero", scope: !227, file: !227, line: 158, type: !375, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!383 = !DILocalVariable(name: "a", arg: 1, scope: !382, file: !227, line: 158, type: !6)
!384 = !DILocation(line: 0, scope: !382)
!385 = !DILocation(line: 160, column: 30, scope: !382)
!386 = !DILocation(line: 160, column: 38, scope: !382)
!387 = !DILocation(line: 160, column: 33, scope: !382)
!388 = !DILocation(line: 160, column: 12, scope: !382)
!389 = !DILocation(line: 160, column: 5, scope: !382)
!390 = distinct !DISubprogram(name: "constant_time_select", scope: !227, file: !227, line: 188, type: !391, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!391 = !DISubroutineType(types: !392)
!392 = !{!6, !6, !6, !6}
!393 = !DILocalVariable(name: "mask", arg: 1, scope: !390, file: !227, line: 188, type: !6)
!394 = !DILocation(line: 0, scope: !390)
!395 = !DILocalVariable(name: "a", arg: 2, scope: !390, file: !227, line: 189, type: !6)
!396 = !DILocalVariable(name: "b", arg: 3, scope: !390, file: !227, line: 190, type: !6)
!397 = !DILocation(line: 192, column: 18, scope: !390)
!398 = !DILocation(line: 192, column: 26, scope: !390)
!399 = !DILocation(line: 192, column: 32, scope: !390)
!400 = !DILocation(line: 192, column: 23, scope: !390)
!401 = !DILocation(line: 192, column: 5, scope: !390)
