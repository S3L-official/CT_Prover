; ModuleID = 'api_mul.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_ec_impl = type { i32, i8* (i32, i64*)*, i8* (i32, i64*)*, i64 (i32, i64*)*, i32 (i8*, i64, i8*, i64, i32)*, i64 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* }
%struct.smack_value = type { i8* }

@br_ec_c25519_i15 = dso_local constant %struct.br_ec_impl { i32 536870912, i8* (i32, i64*)* @api_generator, i8* (i32, i64*)* @api_order, i64 (i32, i64*)* @api_xoff, i32 (i8*, i64, i8*, i64, i32)* @api_mul, i64 (i8*, i8*, i64, i32)* @api_mulgen, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* @api_muladd }, align 8, !dbg !0
@C255_P = internal constant [18 x i16] [i16 272, i16 32749, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767], align 16, !dbg !15
@C255_R2 = internal constant <{ i16, i16, [16 x i16] }> <{ i16 272, i16 361, [16 x i16] zeroinitializer }>, align 16, !dbg !26
@C255_A24 = internal constant <{ i16, i16, i16, [15 x i16] }> <{ i16 272, i16 17875, i16 70, [15 x i16] zeroinitializer }>, align 16, !dbg !28
@ORDER = internal constant [32 x i8] c"\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !13
@GEN = internal constant <{ i8, [31 x i8] }> <{ i8 9, [31 x i8] zeroinitializer }>, align 16, !dbg !6

; Function Attrs: noinline nounwind uwtable
define dso_local void @api_mul_wrapper(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 !dbg !89 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i64 %1, metadata !94, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i8* %2, metadata !95, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i64 %3, metadata !96, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i32 %4, metadata !97, metadata !DIExpression()), !dbg !93
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !98
  call void @public_in(%struct.smack_value* %6), !dbg !99
  %7 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %1), !dbg !100
  call void @public_in(%struct.smack_value* %7), !dbg !101
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !102
  call void @public_in(%struct.smack_value* %8), !dbg !103
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !104
  call void @public_in(%struct.smack_value* %9), !dbg !105
  %10 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %4), !dbg !106
  call void @public_in(%struct.smack_value* %10), !dbg !107
  %11 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 64), !dbg !108
  call void @public_in(%struct.smack_value* %11), !dbg !109
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_c25519_i15, metadata !110, metadata !DIExpression()), !dbg !93
  %12 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_c25519_i15, i32 0, i32 4, !dbg !123
  %13 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %12, align 8, !dbg !123
  %14 = call i32 %13(i8* %0, i64 %1, i8* %2, i64 %3, i32 29), !dbg !124
  ret void, !dbg !125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @api_mul_wrapper_t() #0 !dbg !126 {
  %1 = call i8* (...) @getunsigned(), !dbg !129
  call void @llvm.dbg.value(metadata i8* %1, metadata !130, metadata !DIExpression()), !dbg !131
  %2 = call i64 (...) @getsize_t(), !dbg !132
  call void @llvm.dbg.value(metadata i64 %2, metadata !133, metadata !DIExpression()), !dbg !131
  %3 = call i8* (...) @getusn(), !dbg !134
  call void @llvm.dbg.value(metadata i8* %3, metadata !135, metadata !DIExpression()), !dbg !131
  %4 = call i64 (...) @getsize_t2(), !dbg !136
  call void @llvm.dbg.value(metadata i64 %4, metadata !137, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32 29, metadata !138, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_c25519_i15, metadata !139, metadata !DIExpression()), !dbg !131
  %5 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_c25519_i15, i32 0, i32 4, !dbg !140
  %6 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %5, align 8, !dbg !140
  %7 = call i32 %6(i8* %1, i64 %2, i8* %3, i64 %4, i32 29), !dbg !141
  ret void, !dbg !142
}

declare dso_local i8* @getunsigned(...) #2

declare dso_local i64 @getsize_t(...) #2

declare dso_local i8* @getusn(...) #2

declare dso_local i64 @getsize_t2(...) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @api_generator(i32 %0, i64* %1) #0 !dbg !143 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i64* %1, metadata !146, metadata !DIExpression()), !dbg !145
  store i64 32, i64* %1, align 8, !dbg !147
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* bitcast (<{ i8, [31 x i8] }>* @GEN to [32 x i8]*), i64 0, i64 0), !dbg !148
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @api_order(i32 %0, i64* %1) #0 !dbg !149 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i64* %1, metadata !152, metadata !DIExpression()), !dbg !151
  store i64 32, i64* %1, align 8, !dbg !153
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ORDER, i64 0, i64 0), !dbg !154
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @api_xoff(i32 %0, i64* %1) #0 !dbg !155 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64* %1, metadata !158, metadata !DIExpression()), !dbg !157
  store i64 32, i64* %1, align 8, !dbg !159
  ret i64 0, !dbg !160
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_mul(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 !dbg !161 {
  %6 = alloca [18 x i16], align 16
  %7 = alloca [18 x i16], align 16
  %8 = alloca [18 x i16], align 16
  %9 = alloca [18 x i16], align 16
  %10 = alloca [18 x i16], align 16
  %11 = alloca [19 x i16], align 16
  %12 = alloca [18 x i16], align 16
  %13 = alloca [19 x i16], align 16
  %14 = alloca [18 x i16], align 16
  %15 = alloca [18 x i16], align 16
  %16 = alloca [18 x i16], align 16
  %17 = alloca [18 x i16], align 16
  %18 = alloca [18 x i16], align 16
  %19 = alloca [18 x i16], align 16
  %20 = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64 %1, metadata !164, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i8* %2, metadata !165, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64 %3, metadata !166, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i32 %4, metadata !167, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [18 x i16]* %6, metadata !168, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [18 x i16]* %7, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [18 x i16]* %8, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata [18 x i16]* %9, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata [18 x i16]* %10, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata [19 x i16]* %11, metadata !179, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata [18 x i16]* %12, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata [19 x i16]* %13, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata [18 x i16]* %14, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata [18 x i16]* %15, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata [18 x i16]* %16, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata [18 x i16]* %17, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata [18 x i16]* %18, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata [18 x i16]* %19, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata [32 x i8]* %20, metadata !200, metadata !DIExpression()), !dbg !202
  %21 = icmp ne i64 %1, 32, !dbg !203
  br i1 %21, label %24, label %22, !dbg !205

22:                                               ; preds = %5
  %23 = icmp ugt i64 %3, 32, !dbg !206
  br i1 %23, label %24, label %25, !dbg !207

24:                                               ; preds = %22, %5
  br label %222, !dbg !208

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %0, i64 31, !dbg !210
  %27 = load i8, i8* %26, align 1, !dbg !211
  %28 = zext i8 %27 to i32, !dbg !211
  %29 = and i32 %28, 127, !dbg !211
  %30 = trunc i32 %29 to i8, !dbg !211
  store i8 %30, i8* %26, align 1, !dbg !211
  call void @byteswap(i8* %0), !dbg !212
  %31 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !213
  call void @br_i15_zero(i16* %31, i16 zeroext 273), !dbg !214
  %32 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 18, !dbg !215
  store i16 1, i16* %32, align 4, !dbg !216
  %33 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !217
  %34 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !218
  %35 = call i32 @br_i15_decode_mod(i16* %33, i8* %0, i64 32, i16* %34), !dbg !219
  %36 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !220
  store i16 272, i16* %36, align 16, !dbg !221
  %37 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !222
  %38 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !223
  %39 = call i32 @br_i15_sub(i16* %38, i16* getelementptr inbounds ([18 x i16], [18 x i16]* @C255_P, i64 0, i64 0), i32 0), !dbg !224
  %40 = call i32 @NOT(i32 %39), !dbg !225
  %41 = call i32 @br_i15_sub(i16* %37, i16* getelementptr inbounds ([18 x i16], [18 x i16]* @C255_P, i64 0, i64 0), i32 %40), !dbg !226
  %42 = getelementptr inbounds [18 x i16], [18 x i16]* %6, i64 0, i64 0, !dbg !227
  %43 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !228
  call void @br_i15_montymul(i16* %42, i16* %43, i16* getelementptr inbounds ([18 x i16], [18 x i16]* bitcast (<{ i16, i16, [16 x i16] }>* @C255_R2 to [18 x i16]*), i64 0, i64 0), i16* getelementptr inbounds ([18 x i16], [18 x i16]* @C255_P, i64 0, i64 0), i16 zeroext 18971), !dbg !229
  %44 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !230
  %45 = bitcast i16* %44 to i8*, !dbg !230
  %46 = getelementptr inbounds [18 x i16], [18 x i16]* %6, i64 0, i64 0, !dbg !230
  %47 = bitcast i16* %46 to i8*, !dbg !230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %45, i8* align 16 %47, i64 36, i1 false), !dbg !230
  %48 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !231
  %49 = load i16, i16* getelementptr inbounds ([18 x i16], [18 x i16]* @C255_P, i64 0, i64 0), align 16, !dbg !232
  call void @br_i15_zero(i16* %48, i16 zeroext %49), !dbg !233
  %50 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !234
  %51 = bitcast i16* %50 to i8*, !dbg !234
  %52 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !234
  %53 = bitcast i16* %52 to i8*, !dbg !234
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %51, i8* align 16 %53, i64 36, i1 false), !dbg !234
  %54 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 1, !dbg !235
  store i16 19, i16* %54, align 2, !dbg !236
  %55 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !237
  %56 = bitcast i16* %55 to i8*, !dbg !237
  %57 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !237
  %58 = bitcast i16* %57 to i8*, !dbg !237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %56, i8* align 16 %58, i64 36, i1 false), !dbg !237
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0, !dbg !238
  %60 = sub i64 32, %3, !dbg !239
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 %60, i1 false), !dbg !238
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0, !dbg !240
  %62 = getelementptr inbounds i8, i8* %61, i64 32, !dbg !241
  %63 = sub i64 0, %3, !dbg !242
  %64 = getelementptr inbounds i8, i8* %62, i64 %63, !dbg !242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %64, i8* align 1 %2, i64 %3, i1 false), !dbg !243
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 31, !dbg !244
  %66 = load i8, i8* %65, align 1, !dbg !245
  %67 = zext i8 %66 to i32, !dbg !245
  %68 = and i32 %67, 248, !dbg !245
  %69 = trunc i32 %68 to i8, !dbg !245
  store i8 %69, i8* %65, align 1, !dbg !245
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0, !dbg !246
  %71 = load i8, i8* %70, align 16, !dbg !247
  %72 = zext i8 %71 to i32, !dbg !247
  %73 = and i32 %72, 127, !dbg !247
  %74 = trunc i32 %73 to i8, !dbg !247
  store i8 %74, i8* %70, align 16, !dbg !247
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0, !dbg !248
  %76 = load i8, i8* %75, align 16, !dbg !249
  %77 = zext i8 %76 to i32, !dbg !249
  %78 = or i32 %77, 64, !dbg !249
  %79 = trunc i32 %78 to i8, !dbg !249
  store i8 %79, i8* %75, align 16, !dbg !249
  call void @llvm.dbg.value(metadata i32 0, metadata !250, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i32 254, metadata !251, metadata !DIExpression()), !dbg !163
  br label %80, !dbg !252

80:                                               ; preds = %150, %25
  %.03 = phi i32 [ 0, %25 ], [ %91, %150 ], !dbg !163
  %.02 = phi i32 [ 254, %25 ], [ %151, %150 ], !dbg !254
  call void @llvm.dbg.value(metadata i32 %.02, metadata !251, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i32 %.03, metadata !250, metadata !DIExpression()), !dbg !163
  %81 = icmp sge i32 %.02, 0, !dbg !255
  br i1 %81, label %82, label %152, !dbg !257

82:                                               ; preds = %80
  %83 = ashr i32 %.02, 3, !dbg !258
  %84 = sub nsw i32 31, %83, !dbg !260
  %85 = sext i32 %84 to i64, !dbg !261
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 %85, !dbg !261
  %87 = load i8, i8* %86, align 1, !dbg !261
  %88 = zext i8 %87 to i32, !dbg !261
  %89 = and i32 %.02, 7, !dbg !262
  %90 = ashr i32 %88, %89, !dbg !263
  %91 = and i32 %90, 1, !dbg !264
  call void @llvm.dbg.value(metadata i32 %91, metadata !265, metadata !DIExpression()), !dbg !266
  %92 = xor i32 %.03, %91, !dbg !267
  call void @llvm.dbg.value(metadata i32 %92, metadata !250, metadata !DIExpression()), !dbg !163
  %93 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !268
  %94 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !269
  call void @cswap(i16* %93, i16* %94, i32 %92), !dbg !270
  %95 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !271
  %96 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !272
  call void @cswap(i16* %95, i16* %96, i32 %92), !dbg !273
  call void @llvm.dbg.value(metadata i32 %91, metadata !250, metadata !DIExpression()), !dbg !163
  %97 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !274
  %98 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !275
  %99 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !276
  call void @c255_add(i16* %97, i16* %98, i16* %99), !dbg !277
  %100 = getelementptr inbounds [18 x i16], [18 x i16]* %12, i64 0, i64 0, !dbg !278
  %101 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !279
  %102 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !280
  call void @c255_mul(i16* %100, i16* %101, i16* %102), !dbg !281
  %103 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !282
  %104 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !283
  %105 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !284
  call void @c255_sub(i16* %103, i16* %104, i16* %105), !dbg !285
  %106 = getelementptr inbounds [18 x i16], [18 x i16]* %14, i64 0, i64 0, !dbg !286
  %107 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !287
  %108 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !288
  call void @c255_mul(i16* %106, i16* %107, i16* %108), !dbg !289
  %109 = getelementptr inbounds [18 x i16], [18 x i16]* %17, i64 0, i64 0, !dbg !290
  %110 = getelementptr inbounds [18 x i16], [18 x i16]* %12, i64 0, i64 0, !dbg !291
  %111 = getelementptr inbounds [18 x i16], [18 x i16]* %14, i64 0, i64 0, !dbg !292
  call void @c255_sub(i16* %109, i16* %110, i16* %111), !dbg !293
  %112 = getelementptr inbounds [18 x i16], [18 x i16]* %15, i64 0, i64 0, !dbg !294
  %113 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !295
  %114 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !296
  call void @c255_add(i16* %112, i16* %113, i16* %114), !dbg !297
  %115 = getelementptr inbounds [18 x i16], [18 x i16]* %16, i64 0, i64 0, !dbg !298
  %116 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !299
  %117 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !300
  call void @c255_sub(i16* %115, i16* %116, i16* %117), !dbg !301
  %118 = getelementptr inbounds [18 x i16], [18 x i16]* %18, i64 0, i64 0, !dbg !302
  %119 = getelementptr inbounds [18 x i16], [18 x i16]* %16, i64 0, i64 0, !dbg !303
  %120 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !304
  call void @c255_mul(i16* %118, i16* %119, i16* %120), !dbg !305
  %121 = getelementptr inbounds [18 x i16], [18 x i16]* %19, i64 0, i64 0, !dbg !306
  %122 = getelementptr inbounds [18 x i16], [18 x i16]* %15, i64 0, i64 0, !dbg !307
  %123 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !308
  call void @c255_mul(i16* %121, i16* %122, i16* %123), !dbg !309
  %124 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !310
  %125 = getelementptr inbounds [18 x i16], [18 x i16]* %18, i64 0, i64 0, !dbg !311
  %126 = getelementptr inbounds [18 x i16], [18 x i16]* %19, i64 0, i64 0, !dbg !312
  call void @c255_add(i16* %124, i16* %125, i16* %126), !dbg !313
  %127 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !314
  %128 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !315
  %129 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !316
  call void @c255_mul(i16* %127, i16* %128, i16* %129), !dbg !317
  %130 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !318
  %131 = getelementptr inbounds [18 x i16], [18 x i16]* %18, i64 0, i64 0, !dbg !319
  %132 = getelementptr inbounds [18 x i16], [18 x i16]* %19, i64 0, i64 0, !dbg !320
  call void @c255_sub(i16* %130, i16* %131, i16* %132), !dbg !321
  %133 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !322
  %134 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !323
  %135 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !324
  call void @c255_mul(i16* %133, i16* %134, i16* %135), !dbg !325
  %136 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !326
  %137 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !327
  %138 = getelementptr inbounds [18 x i16], [18 x i16]* %6, i64 0, i64 0, !dbg !328
  call void @c255_mul(i16* %136, i16* %137, i16* %138), !dbg !329
  %139 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !330
  %140 = getelementptr inbounds [18 x i16], [18 x i16]* %12, i64 0, i64 0, !dbg !331
  %141 = getelementptr inbounds [18 x i16], [18 x i16]* %14, i64 0, i64 0, !dbg !332
  call void @c255_mul(i16* %139, i16* %140, i16* %141), !dbg !333
  %142 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !334
  %143 = getelementptr inbounds [18 x i16], [18 x i16]* %17, i64 0, i64 0, !dbg !335
  call void @c255_mul(i16* %142, i16* getelementptr inbounds ([18 x i16], [18 x i16]* bitcast (<{ i16, i16, i16, [15 x i16] }>* @C255_A24 to [18 x i16]*), i64 0, i64 0), i16* %143), !dbg !336
  %144 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !337
  %145 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !338
  %146 = getelementptr inbounds [18 x i16], [18 x i16]* %12, i64 0, i64 0, !dbg !339
  call void @c255_add(i16* %144, i16* %145, i16* %146), !dbg !340
  %147 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !341
  %148 = getelementptr inbounds [18 x i16], [18 x i16]* %17, i64 0, i64 0, !dbg !342
  %149 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !343
  call void @c255_mul(i16* %147, i16* %148, i16* %149), !dbg !344
  br label %150, !dbg !345

150:                                              ; preds = %82
  %151 = add nsw i32 %.02, -1, !dbg !346
  call void @llvm.dbg.value(metadata i32 %151, metadata !251, metadata !DIExpression()), !dbg !163
  br label %80, !dbg !347, !llvm.loop !348

152:                                              ; preds = %80
  %153 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !351
  %154 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !352
  call void @cswap(i16* %153, i16* %154, i32 %.03), !dbg !353
  %155 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !354
  %156 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !355
  call void @cswap(i16* %155, i16* %156, i32 %.03), !dbg !356
  %157 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !357
  %158 = bitcast i16* %157 to i8*, !dbg !357
  %159 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !357
  %160 = bitcast i16* %159 to i8*, !dbg !357
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %158, i8* align 16 %160, i64 36, i1 false), !dbg !357
  call void @llvm.dbg.value(metadata i32 0, metadata !251, metadata !DIExpression()), !dbg !163
  br label %161, !dbg !358

161:                                              ; preds = %170, %152
  %.1 = phi i32 [ 0, %152 ], [ %171, %170 ], !dbg !360
  call void @llvm.dbg.value(metadata i32 %.1, metadata !251, metadata !DIExpression()), !dbg !163
  %162 = icmp slt i32 %.1, 15, !dbg !361
  br i1 %162, label %163, label %172, !dbg !363

163:                                              ; preds = %161
  %164 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !364
  %165 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !366
  %166 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !367
  call void @c255_mul(i16* %164, i16* %165, i16* %166), !dbg !368
  %167 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !369
  %168 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !370
  %169 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !371
  call void @c255_mul(i16* %167, i16* %168, i16* %169), !dbg !372
  br label %170, !dbg !373

170:                                              ; preds = %163
  %171 = add nsw i32 %.1, 1, !dbg !374
  call void @llvm.dbg.value(metadata i32 %171, metadata !251, metadata !DIExpression()), !dbg !163
  br label %161, !dbg !375, !llvm.loop !376

172:                                              ; preds = %161
  %173 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !378
  %174 = bitcast i16* %173 to i8*, !dbg !378
  %175 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !378
  %176 = bitcast i16* %175 to i8*, !dbg !378
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %174, i8* align 16 %176, i64 36, i1 false), !dbg !378
  call void @llvm.dbg.value(metadata i32 0, metadata !251, metadata !DIExpression()), !dbg !163
  br label %177, !dbg !379

177:                                              ; preds = %192, %172
  %.2 = phi i32 [ 0, %172 ], [ %193, %192 ], !dbg !381
  call void @llvm.dbg.value(metadata i32 %.2, metadata !251, metadata !DIExpression()), !dbg !163
  %178 = icmp slt i32 %.2, 14, !dbg !382
  br i1 %178, label %179, label %194, !dbg !384

179:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i32 0, metadata !385, metadata !DIExpression()), !dbg !387
  br label %180, !dbg !388

180:                                              ; preds = %186, %179
  %.01 = phi i32 [ 0, %179 ], [ %187, %186 ], !dbg !390
  call void @llvm.dbg.value(metadata i32 %.01, metadata !385, metadata !DIExpression()), !dbg !387
  %181 = icmp slt i32 %.01, 16, !dbg !391
  br i1 %181, label %182, label %188, !dbg !393

182:                                              ; preds = %180
  %183 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !394
  %184 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !396
  %185 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !397
  call void @c255_mul(i16* %183, i16* %184, i16* %185), !dbg !398
  br label %186, !dbg !399

186:                                              ; preds = %182
  %187 = add nsw i32 %.01, 1, !dbg !400
  call void @llvm.dbg.value(metadata i32 %187, metadata !385, metadata !DIExpression()), !dbg !387
  br label %180, !dbg !401, !llvm.loop !402

188:                                              ; preds = %180
  %189 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !404
  %190 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !405
  %191 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !406
  call void @c255_mul(i16* %189, i16* %190, i16* %191), !dbg !407
  br label %192, !dbg !408

192:                                              ; preds = %188
  %193 = add nsw i32 %.2, 1, !dbg !409
  call void @llvm.dbg.value(metadata i32 %193, metadata !251, metadata !DIExpression()), !dbg !163
  br label %177, !dbg !410, !llvm.loop !411

194:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i32 14, metadata !251, metadata !DIExpression()), !dbg !163
  br label %195, !dbg !413

195:                                              ; preds = %209, %194
  %.3 = phi i32 [ 14, %194 ], [ %210, %209 ], !dbg !415
  call void @llvm.dbg.value(metadata i32 %.3, metadata !251, metadata !DIExpression()), !dbg !163
  %196 = icmp sge i32 %.3, 0, !dbg !416
  br i1 %196, label %197, label %211, !dbg !418

197:                                              ; preds = %195
  %198 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !419
  %199 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !421
  %200 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !422
  call void @c255_mul(i16* %198, i16* %199, i16* %200), !dbg !423
  %201 = ashr i32 65515, %.3, !dbg !424
  %202 = and i32 %201, 1, !dbg !426
  %203 = icmp ne i32 %202, 0, !dbg !426
  br i1 %203, label %204, label %208, !dbg !427

204:                                              ; preds = %197
  %205 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !428
  %206 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !430
  %207 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !431
  call void @c255_mul(i16* %205, i16* %206, i16* %207), !dbg !432
  br label %208, !dbg !433

208:                                              ; preds = %204, %197
  br label %209, !dbg !434

209:                                              ; preds = %208
  %210 = add nsw i32 %.3, -1, !dbg !435
  call void @llvm.dbg.value(metadata i32 %210, metadata !251, metadata !DIExpression()), !dbg !163
  br label %195, !dbg !436, !llvm.loop !437

211:                                              ; preds = %195
  %212 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !439
  %213 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !440
  %214 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !441
  call void @c255_mul(i16* %212, i16* %213, i16* %214), !dbg !442
  %215 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !443
  %216 = load i16, i16* getelementptr inbounds ([18 x i16], [18 x i16]* @C255_P, i64 0, i64 0), align 16, !dbg !444
  call void @br_i15_zero(i16* %215, i16 zeroext %216), !dbg !445
  %217 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 1, !dbg !446
  store i16 1, i16* %217, align 2, !dbg !447
  %218 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !448
  %219 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !449
  %220 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !450
  call void @br_i15_montymul(i16* %218, i16* %219, i16* %220, i16* getelementptr inbounds ([18 x i16], [18 x i16]* @C255_P, i64 0, i64 0), i16 zeroext 18971), !dbg !451
  %221 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !452
  call void @br_i15_encode(i8* %0, i64 32, i16* %221), !dbg !453
  call void @byteswap(i8* %0), !dbg !454
  br label %222, !dbg !455

222:                                              ; preds = %211, %24
  %.0 = phi i32 [ 0, %24 ], [ 1, %211 ], !dbg !163
  ret i32 %.0, !dbg !456
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @api_mulgen(i8* %0, i8* %1, i64 %2, i32 %3) #0 !dbg !457 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i8* %1, metadata !460, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i64 %2, metadata !461, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 %3, metadata !462, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata i64* %5, metadata !463, metadata !DIExpression()), !dbg !464
  %6 = call i8* @api_generator(i32 %3, i64* %5), !dbg !465
  call void @llvm.dbg.value(metadata i8* %6, metadata !466, metadata !DIExpression()), !dbg !459
  %7 = load i64, i64* %5, align 8, !dbg !467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %6, i64 %7, i1 false), !dbg !468
  %8 = load i64, i64* %5, align 8, !dbg !469
  %9 = call i32 @api_mul(i8* %0, i64 %8, i8* %1, i64 %2, i32 %3), !dbg !470
  %10 = load i64, i64* %5, align 8, !dbg !471
  ret i64 %10, !dbg !472
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_muladd(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 !dbg !473 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i8* %1, metadata !476, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i64 %2, metadata !477, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i8* %3, metadata !478, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i64 %4, metadata !479, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i8* %5, metadata !480, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i64 %6, metadata !481, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i32 %7, metadata !482, metadata !DIExpression()), !dbg !475
  ret i32 0, !dbg !483
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @byteswap(i8* %0) #0 !dbg !484 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.value(metadata i32 0, metadata !489, metadata !DIExpression()), !dbg !488
  br label %2, !dbg !490

2:                                                ; preds = %17, %1
  %.0 = phi i32 [ 0, %1 ], [ %18, %17 ], !dbg !492
  call void @llvm.dbg.value(metadata i32 %.0, metadata !489, metadata !DIExpression()), !dbg !488
  %3 = icmp slt i32 %.0, 16, !dbg !493
  br i1 %3, label %4, label %19, !dbg !495

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64, !dbg !496
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !496
  %7 = load i8, i8* %6, align 1, !dbg !496
  call void @llvm.dbg.value(metadata i8 %7, metadata !498, metadata !DIExpression()), !dbg !499
  %8 = sub nsw i32 31, %.0, !dbg !500
  %9 = sext i32 %8 to i64, !dbg !501
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !501
  %11 = load i8, i8* %10, align 1, !dbg !501
  %12 = sext i32 %.0 to i64, !dbg !502
  %13 = getelementptr inbounds i8, i8* %0, i64 %12, !dbg !502
  store i8 %11, i8* %13, align 1, !dbg !503
  %14 = sub nsw i32 31, %.0, !dbg !504
  %15 = sext i32 %14 to i64, !dbg !505
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !505
  store i8 %7, i8* %16, align 1, !dbg !506
  br label %17, !dbg !507

17:                                               ; preds = %4
  %18 = add nsw i32 %.0, 1, !dbg !508
  call void @llvm.dbg.value(metadata i32 %18, metadata !489, metadata !DIExpression()), !dbg !488
  br label %2, !dbg !509, !llvm.loop !510

19:                                               ; preds = %2
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero(i16* %0, i16 zeroext %1) #0 !dbg !513 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i16 %1, metadata !520, metadata !DIExpression()), !dbg !519
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !521
  call void @llvm.dbg.value(metadata i16* %3, metadata !518, metadata !DIExpression()), !dbg !519
  store i16 %1, i16* %0, align 2, !dbg !522
  %4 = bitcast i16* %3 to i8*, !dbg !523
  %5 = zext i16 %1 to i32, !dbg !524
  %6 = add nsw i32 %5, 15, !dbg !525
  %7 = ashr i32 %6, 4, !dbg !526
  %8 = sext i32 %7 to i64, !dbg !527
  %9 = mul i64 %8, 2, !dbg !528
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !523
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !530 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !533, metadata !DIExpression()), !dbg !534
  %2 = xor i32 %0, 1, !dbg !535
  ret i32 %2, !dbg !536
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @cswap(i16* %0, i16* %1, i32 %2) #0 !dbg !537 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !540, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i16* %1, metadata !542, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 %2, metadata !543, metadata !DIExpression()), !dbg !541
  %4 = sub i32 0, %2, !dbg !544
  call void @llvm.dbg.value(metadata i32 %4, metadata !543, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 0, metadata !545, metadata !DIExpression()), !dbg !541
  br label %5, !dbg !546

5:                                                ; preds = %26, %3
  %.0 = phi i32 [ 0, %3 ], [ %27, %26 ], !dbg !548
  call void @llvm.dbg.value(metadata i32 %.0, metadata !545, metadata !DIExpression()), !dbg !541
  %6 = icmp slt i32 %.0, 18, !dbg !549
  br i1 %6, label %7, label %28, !dbg !551

7:                                                ; preds = %5
  %8 = sext i32 %.0 to i64, !dbg !552
  %9 = getelementptr inbounds i16, i16* %0, i64 %8, !dbg !552
  %10 = load i16, i16* %9, align 2, !dbg !552
  %11 = zext i16 %10 to i32, !dbg !552
  call void @llvm.dbg.value(metadata i32 %11, metadata !554, metadata !DIExpression()), !dbg !555
  %12 = sext i32 %.0 to i64, !dbg !556
  %13 = getelementptr inbounds i16, i16* %1, i64 %12, !dbg !556
  %14 = load i16, i16* %13, align 2, !dbg !556
  %15 = zext i16 %14 to i32, !dbg !556
  call void @llvm.dbg.value(metadata i32 %15, metadata !557, metadata !DIExpression()), !dbg !555
  %16 = xor i32 %11, %15, !dbg !558
  %17 = and i32 %4, %16, !dbg !559
  call void @llvm.dbg.value(metadata i32 %17, metadata !560, metadata !DIExpression()), !dbg !555
  %18 = xor i32 %11, %17, !dbg !561
  %19 = trunc i32 %18 to i16, !dbg !562
  %20 = sext i32 %.0 to i64, !dbg !563
  %21 = getelementptr inbounds i16, i16* %0, i64 %20, !dbg !563
  store i16 %19, i16* %21, align 2, !dbg !564
  %22 = xor i32 %15, %17, !dbg !565
  %23 = trunc i32 %22 to i16, !dbg !566
  %24 = sext i32 %.0 to i64, !dbg !567
  %25 = getelementptr inbounds i16, i16* %1, i64 %24, !dbg !567
  store i16 %23, i16* %25, align 2, !dbg !568
  br label %26, !dbg !569

26:                                               ; preds = %7
  %27 = add nsw i32 %.0, 1, !dbg !570
  call void @llvm.dbg.value(metadata i32 %27, metadata !545, metadata !DIExpression()), !dbg !541
  br label %5, !dbg !571, !llvm.loop !572

28:                                               ; preds = %5
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind uwtable
define internal void @c255_add(i16* %0, i16* %1, i16* %2) #0 !dbg !575 {
  %4 = alloca [18 x i16], align 16
  call void @llvm.dbg.value(metadata i16* %0, metadata !579, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i16* %1, metadata !581, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i16* %2, metadata !582, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata [18 x i16]* %4, metadata !583, metadata !DIExpression()), !dbg !584
  %5 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !585
  %6 = bitcast i16* %5 to i8*, !dbg !585
  %7 = bitcast i16* %1 to i8*, !dbg !585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 2 %7, i64 36, i1 false), !dbg !585
  %8 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !586
  %9 = call i32 @br_i15_add(i16* %8, i16* %2, i32 1), !dbg !587
  call void @llvm.dbg.value(metadata i32 %9, metadata !588, metadata !DIExpression()), !dbg !580
  %10 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !589
  %11 = call i32 @br_i15_sub(i16* %10, i16* getelementptr inbounds ([18 x i16], [18 x i16]* @C255_P, i64 0, i64 0), i32 0), !dbg !590
  %12 = call i32 @NOT(i32 %11), !dbg !591
  %13 = or i32 %9, %12, !dbg !592
  call void @llvm.dbg.value(metadata i32 %13, metadata !588, metadata !DIExpression()), !dbg !580
  %14 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !593
  %15 = call i32 @br_i15_sub(i16* %14, i16* getelementptr inbounds ([18 x i16], [18 x i16]* @C255_P, i64 0, i64 0), i32 %13), !dbg !594
  %16 = bitcast i16* %0 to i8*, !dbg !595
  %17 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !595
  %18 = bitcast i16* %17 to i8*, !dbg !595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %16, i8* align 16 %18, i64 36, i1 false), !dbg !595
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind uwtable
define internal void @c255_mul(i16* %0, i16* %1, i16* %2) #0 !dbg !597 {
  %4 = alloca [18 x i16], align 16
  call void @llvm.dbg.value(metadata i16* %0, metadata !598, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i16* %1, metadata !600, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i16* %2, metadata !601, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.declare(metadata [18 x i16]* %4, metadata !602, metadata !DIExpression()), !dbg !603
  %5 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !604
  call void @br_i15_montymul(i16* %5, i16* %1, i16* %2, i16* getelementptr inbounds ([18 x i16], [18 x i16]* @C255_P, i64 0, i64 0), i16 zeroext 18971), !dbg !605
  %6 = bitcast i16* %0 to i8*, !dbg !606
  %7 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !606
  %8 = bitcast i16* %7 to i8*, !dbg !606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %6, i8* align 16 %8, i64 36, i1 false), !dbg !606
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind uwtable
define internal void @c255_sub(i16* %0, i16* %1, i16* %2) #0 !dbg !608 {
  %4 = alloca [18 x i16], align 16
  call void @llvm.dbg.value(metadata i16* %0, metadata !609, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i16* %1, metadata !611, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i16* %2, metadata !612, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.declare(metadata [18 x i16]* %4, metadata !613, metadata !DIExpression()), !dbg !614
  %5 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !615
  %6 = bitcast i16* %5 to i8*, !dbg !615
  %7 = bitcast i16* %1 to i8*, !dbg !615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 2 %7, i64 36, i1 false), !dbg !615
  %8 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !616
  %9 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !617
  %10 = call i32 @br_i15_sub(i16* %9, i16* %2, i32 1), !dbg !618
  %11 = call i32 @br_i15_add(i16* %8, i16* getelementptr inbounds ([18 x i16], [18 x i16]* @C255_P, i64 0, i64 0), i32 %10), !dbg !619
  %12 = bitcast i16* %0 to i8*, !dbg !620
  %13 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !620
  %14 = bitcast i16* %13 to i8*, !dbg !620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %12, i8* align 16 %14, i64 36, i1 false), !dbg !620
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_add(i16* %0, i16* %1, i32 %2) #0 !dbg !622 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !625, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i16* %1, metadata !627, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32 %2, metadata !628, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32 0, metadata !629, metadata !DIExpression()), !dbg !626
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !630
  %5 = load i16, i16* %4, align 2, !dbg !630
  %6 = zext i16 %5 to i32, !dbg !630
  %7 = add nsw i32 %6, 31, !dbg !631
  %8 = ashr i32 %7, 4, !dbg !632
  %9 = sext i32 %8 to i64, !dbg !633
  call void @llvm.dbg.value(metadata i64 %9, metadata !634, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i64 1, metadata !635, metadata !DIExpression()), !dbg !626
  br label %10, !dbg !636

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !626
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !638
  call void @llvm.dbg.value(metadata i64 %.0, metadata !635, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32 %.01, metadata !629, metadata !DIExpression()), !dbg !626
  %11 = icmp ult i64 %.0, %9, !dbg !639
  br i1 %11, label %12, label %28, !dbg !641

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !642
  %14 = load i16, i16* %13, align 2, !dbg !642
  %15 = zext i16 %14 to i32, !dbg !642
  call void @llvm.dbg.value(metadata i32 %15, metadata !644, metadata !DIExpression()), !dbg !645
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !646
  %17 = load i16, i16* %16, align 2, !dbg !646
  %18 = zext i16 %17 to i32, !dbg !646
  call void @llvm.dbg.value(metadata i32 %18, metadata !647, metadata !DIExpression()), !dbg !645
  %19 = add i32 %15, %18, !dbg !648
  %20 = add i32 %19, %.01, !dbg !649
  call void @llvm.dbg.value(metadata i32 %20, metadata !650, metadata !DIExpression()), !dbg !645
  %21 = lshr i32 %20, 15, !dbg !651
  call void @llvm.dbg.value(metadata i32 %21, metadata !629, metadata !DIExpression()), !dbg !626
  %22 = and i32 %20, 32767, !dbg !652
  %23 = call i32 @MUX(i32 %2, i32 %22, i32 %15), !dbg !653
  %24 = trunc i32 %23 to i16, !dbg !653
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !654
  store i16 %24, i16* %25, align 2, !dbg !655
  br label %26, !dbg !656

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !657
  call void @llvm.dbg.value(metadata i64 %27, metadata !635, metadata !DIExpression()), !dbg !626
  br label %10, !dbg !658, !llvm.loop !659

28:                                               ; preds = %10
  ret i32 %.01, !dbg !661
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !662 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !665, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i32 %1, metadata !667, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i32 %2, metadata !668, metadata !DIExpression()), !dbg !666
  %4 = sub i32 0, %0, !dbg !669
  %5 = xor i32 %1, %2, !dbg !670
  %6 = and i32 %4, %5, !dbg !671
  %7 = xor i32 %2, %6, !dbg !672
  ret i32 %7, !dbg !673
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_decode_mod(i16* %0, i8* %1, i64 %2, i16* %3) #0 !dbg !674 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i8* %1, metadata !681, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i64 %2, metadata !682, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i16* %3, metadata !683, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i8* %1, metadata !684, metadata !DIExpression()), !dbg !680
  %5 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !685
  %6 = load i16, i16* %5, align 2, !dbg !685
  %7 = zext i16 %6 to i32, !dbg !685
  %8 = add nsw i32 %7, 15, !dbg !686
  %9 = ashr i32 %8, 4, !dbg !687
  %10 = sext i32 %9 to i64, !dbg !688
  call void @llvm.dbg.value(metadata i64 %10, metadata !689, metadata !DIExpression()), !dbg !680
  %11 = shl i64 %10, 1, !dbg !690
  call void @llvm.dbg.value(metadata i64 %11, metadata !691, metadata !DIExpression()), !dbg !680
  %12 = icmp ult i64 %11, %2, !dbg !692
  br i1 %12, label %13, label %14, !dbg !694

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 %2, metadata !691, metadata !DIExpression()), !dbg !680
  br label %14, !dbg !695

14:                                               ; preds = %13, %4
  %.09 = phi i64 [ %2, %13 ], [ %11, %4 ], !dbg !680
  call void @llvm.dbg.value(metadata i64 %.09, metadata !691, metadata !DIExpression()), !dbg !680
  %15 = add i64 %.09, 4, !dbg !697
  call void @llvm.dbg.value(metadata i64 %15, metadata !691, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !698, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !699, metadata !DIExpression()), !dbg !680
  br label %16, !dbg !700

16:                                               ; preds = %70, %14
  %.010 = phi i32 [ 0, %14 ], [ %71, %70 ], !dbg !702
  %.07 = phi i32 [ 0, %14 ], [ %69, %70 ], !dbg !680
  call void @llvm.dbg.value(metadata i32 %.07, metadata !698, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %.010, metadata !699, metadata !DIExpression()), !dbg !680
  %17 = icmp slt i32 %.010, 2, !dbg !703
  br i1 %17, label %18, label %72, !dbg !705

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i64 1, metadata !706, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 0, metadata !709, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 0, metadata !710, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64 0, metadata !711, metadata !DIExpression()), !dbg !708
  br label %19, !dbg !712

19:                                               ; preds = %64, %18
  %.18 = phi i32 [ %.07, %18 ], [ %.5, %64 ], !dbg !714
  %.06 = phi i64 [ 0, %18 ], [ %65, %64 ], !dbg !715
  %.04 = phi i64 [ 1, %18 ], [ %.15, %64 ], !dbg !708
  %.02 = phi i32 [ 0, %18 ], [ %.13, %64 ], !dbg !708
  %.01 = phi i32 [ 0, %18 ], [ %.1, %64 ], !dbg !708
  call void @llvm.dbg.value(metadata i32 %.01, metadata !710, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 %.02, metadata !709, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64 %.04, metadata !706, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64 %.06, metadata !711, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 %.18, metadata !698, metadata !DIExpression()), !dbg !680
  %20 = icmp ult i64 %.06, %15, !dbg !716
  br i1 %20, label %21, label %66, !dbg !718

21:                                               ; preds = %19
  %22 = icmp ult i64 %.06, %2, !dbg !719
  br i1 %22, label %23, label %29, !dbg !722

23:                                               ; preds = %21
  %24 = sub i64 %2, 1, !dbg !723
  %25 = sub i64 %24, %.06, !dbg !725
  %26 = getelementptr inbounds i8, i8* %1, i64 %25, !dbg !726
  %27 = load i8, i8* %26, align 1, !dbg !726
  %28 = zext i8 %27 to i32, !dbg !726
  call void @llvm.dbg.value(metadata i32 %28, metadata !727, metadata !DIExpression()), !dbg !728
  br label %30, !dbg !729

29:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 0, metadata !727, metadata !DIExpression()), !dbg !728
  br label %30

30:                                               ; preds = %29, %23
  %.0 = phi i32 [ %28, %23 ], [ 0, %29 ], !dbg !730
  call void @llvm.dbg.value(metadata i32 %.0, metadata !727, metadata !DIExpression()), !dbg !728
  %31 = shl i32 %.0, %.01, !dbg !731
  %32 = or i32 %.02, %31, !dbg !732
  call void @llvm.dbg.value(metadata i32 %32, metadata !709, metadata !DIExpression()), !dbg !708
  %33 = add nsw i32 %.01, 8, !dbg !733
  call void @llvm.dbg.value(metadata i32 %33, metadata !710, metadata !DIExpression()), !dbg !708
  %34 = icmp sge i32 %33, 15, !dbg !734
  br i1 %34, label %35, label %63, !dbg !736

35:                                               ; preds = %30
  %36 = and i32 %32, 32767, !dbg !737
  call void @llvm.dbg.value(metadata i32 %36, metadata !739, metadata !DIExpression()), !dbg !740
  %37 = sub nsw i32 %33, 15, !dbg !741
  call void @llvm.dbg.value(metadata i32 %37, metadata !710, metadata !DIExpression()), !dbg !708
  %38 = sub nsw i32 8, %37, !dbg !742
  %39 = lshr i32 %.0, %38, !dbg !743
  call void @llvm.dbg.value(metadata i32 %39, metadata !709, metadata !DIExpression()), !dbg !708
  %40 = icmp ule i64 %.04, %10, !dbg !744
  br i1 %40, label %41, label %55, !dbg !746

41:                                               ; preds = %35
  %42 = icmp ne i32 %.010, 0, !dbg !747
  br i1 %42, label %43, label %47, !dbg !750

43:                                               ; preds = %41
  %44 = and i32 %.18, %36, !dbg !751
  %45 = trunc i32 %44 to i16, !dbg !753
  %46 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !754
  store i16 %45, i16* %46, align 2, !dbg !755
  br label %54, !dbg !756

47:                                               ; preds = %41
  %48 = getelementptr inbounds i16, i16* %3, i64 %.04, !dbg !757
  %49 = load i16, i16* %48, align 2, !dbg !757
  %50 = zext i16 %49 to i32, !dbg !757
  %51 = call i32 @CMP(i32 %36, i32 %50), !dbg !759
  call void @llvm.dbg.value(metadata i32 %51, metadata !760, metadata !DIExpression()), !dbg !761
  %52 = call i32 @EQ(i32 %51, i32 0), !dbg !762
  %53 = call i32 @MUX.7(i32 %52, i32 %.18, i32 %51), !dbg !763
  call void @llvm.dbg.value(metadata i32 %53, metadata !698, metadata !DIExpression()), !dbg !680
  br label %54

54:                                               ; preds = %47, %43
  %.2 = phi i32 [ %.18, %43 ], [ %53, %47 ], !dbg !680
  call void @llvm.dbg.value(metadata i32 %.2, metadata !698, metadata !DIExpression()), !dbg !680
  br label %61, !dbg !764

55:                                               ; preds = %35
  %56 = icmp ne i32 %.010, 0, !dbg !765
  br i1 %56, label %60, label %57, !dbg !768

57:                                               ; preds = %55
  %58 = call i32 @EQ(i32 %36, i32 0), !dbg !769
  %59 = call i32 @MUX.7(i32 %58, i32 %.18, i32 1), !dbg !771
  call void @llvm.dbg.value(metadata i32 %59, metadata !698, metadata !DIExpression()), !dbg !680
  br label %60, !dbg !772

60:                                               ; preds = %57, %55
  %.3 = phi i32 [ %.18, %55 ], [ %59, %57 ], !dbg !680
  call void @llvm.dbg.value(metadata i32 %.3, metadata !698, metadata !DIExpression()), !dbg !680
  br label %61

61:                                               ; preds = %60, %54
  %.4 = phi i32 [ %.2, %54 ], [ %.3, %60 ], !dbg !714
  call void @llvm.dbg.value(metadata i32 %.4, metadata !698, metadata !DIExpression()), !dbg !680
  %62 = add i64 %.04, 1, !dbg !773
  call void @llvm.dbg.value(metadata i64 %62, metadata !706, metadata !DIExpression()), !dbg !708
  br label %63, !dbg !774

63:                                               ; preds = %61, %30
  %.5 = phi i32 [ %.4, %61 ], [ %.18, %30 ], !dbg !714
  %.15 = phi i64 [ %62, %61 ], [ %.04, %30 ], !dbg !708
  %.13 = phi i32 [ %39, %61 ], [ %32, %30 ], !dbg !728
  %.1 = phi i32 [ %37, %61 ], [ %33, %30 ], !dbg !728
  call void @llvm.dbg.value(metadata i32 %.1, metadata !710, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 %.13, metadata !709, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64 %.15, metadata !706, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 %.5, metadata !698, metadata !DIExpression()), !dbg !680
  br label %64, !dbg !775

64:                                               ; preds = %63
  %65 = add i64 %.06, 1, !dbg !776
  call void @llvm.dbg.value(metadata i64 %65, metadata !711, metadata !DIExpression()), !dbg !708
  br label %19, !dbg !777, !llvm.loop !778

66:                                               ; preds = %19
  %67 = lshr i32 %.18, 1, !dbg !780
  call void @llvm.dbg.value(metadata i32 %67, metadata !698, metadata !DIExpression()), !dbg !680
  %68 = shl i32 %67, 1, !dbg !781
  %69 = or i32 %67, %68, !dbg !782
  call void @llvm.dbg.value(metadata i32 %69, metadata !698, metadata !DIExpression()), !dbg !680
  br label %70, !dbg !783

70:                                               ; preds = %66
  %71 = add nsw i32 %.010, 1, !dbg !784
  call void @llvm.dbg.value(metadata i32 %71, metadata !699, metadata !DIExpression()), !dbg !680
  br label %16, !dbg !785, !llvm.loop !786

72:                                               ; preds = %16
  %73 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !788
  %74 = load i16, i16* %73, align 2, !dbg !788
  %75 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !789
  store i16 %74, i16* %75, align 2, !dbg !790
  %76 = and i32 %.07, 1, !dbg !791
  ret i32 %76, !dbg !792
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @CMP(i32 %0, i32 %1) #0 !dbg !793 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !796, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i32 %1, metadata !798, metadata !DIExpression()), !dbg !797
  %3 = call i32 @GT(i32 %0, i32 %1), !dbg !799
  %4 = call i32 @GT(i32 %1, i32 %0), !dbg !800
  %5 = sub nsw i32 0, %4, !dbg !801
  %6 = or i32 %3, %5, !dbg !802
  ret i32 %6, !dbg !803
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !804 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !807, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i32 %1, metadata !809, metadata !DIExpression()), !dbg !808
  %3 = xor i32 %0, %1, !dbg !810
  call void @llvm.dbg.value(metadata i32 %3, metadata !811, metadata !DIExpression()), !dbg !808
  %4 = sub i32 0, %3, !dbg !812
  %5 = or i32 %3, %4, !dbg !813
  %6 = lshr i32 %5, 31, !dbg !814
  %7 = call i32 @NOT.8(i32 %6), !dbg !815
  ret i32 %7, !dbg !816
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.7(i32 %0, i32 %1, i32 %2) #0 !dbg !817 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %1, metadata !820, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %2, metadata !821, metadata !DIExpression()), !dbg !819
  %4 = sub i32 0, %0, !dbg !822
  %5 = xor i32 %1, %2, !dbg !823
  %6 = and i32 %4, %5, !dbg !824
  %7 = xor i32 %2, %6, !dbg !825
  ret i32 %7, !dbg !826
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.8(i32 %0) #0 !dbg !827 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !828, metadata !DIExpression()), !dbg !829
  %2 = xor i32 %0, 1, !dbg !830
  ret i32 %2, !dbg !831
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !832 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !833, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i32 %1, metadata !835, metadata !DIExpression()), !dbg !834
  %3 = sub i32 %1, %0, !dbg !836
  call void @llvm.dbg.value(metadata i32 %3, metadata !837, metadata !DIExpression()), !dbg !834
  %4 = xor i32 %0, %1, !dbg !838
  %5 = xor i32 %0, %3, !dbg !839
  %6 = and i32 %4, %5, !dbg !840
  %7 = xor i32 %3, %6, !dbg !841
  %8 = lshr i32 %7, 31, !dbg !842
  ret i32 %8, !dbg !843
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_encode(i8* %0, i64 %1, i16* %2) #0 !dbg !844 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !848, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i64 %1, metadata !850, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i16* %2, metadata !851, metadata !DIExpression()), !dbg !849
  %4 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !852
  %5 = load i16, i16* %4, align 2, !dbg !852
  %6 = zext i16 %5 to i32, !dbg !852
  %7 = add nsw i32 %6, 15, !dbg !853
  %8 = ashr i32 %7, 4, !dbg !854
  %9 = sext i32 %8 to i64, !dbg !855
  call void @llvm.dbg.value(metadata i64 %9, metadata !856, metadata !DIExpression()), !dbg !849
  %10 = icmp eq i64 %9, 0, !dbg !857
  br i1 %10, label %11, label %12, !dbg !859

11:                                               ; preds = %3
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !860
  br label %34, !dbg !862

12:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i64 1, metadata !863, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i32 0, metadata !864, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i32 0, metadata !865, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i8* %0, metadata !866, metadata !DIExpression()), !dbg !849
  br label %13, !dbg !867

13:                                               ; preds = %29, %12
  %.04 = phi i64 [ 1, %12 ], [ %.26, %29 ], !dbg !849
  %.02 = phi i32 [ 0, %12 ], [ %32, %29 ], !dbg !849
  %.01 = phi i64 [ %1, %12 ], [ %14, %29 ]
  %.0 = phi i32 [ 0, %12 ], [ %33, %29 ], !dbg !849
  call void @llvm.dbg.value(metadata i32 %.0, metadata !865, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i64 %.01, metadata !850, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i32 %.02, metadata !864, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i64 %.04, metadata !863, metadata !DIExpression()), !dbg !849
  %14 = add i64 %.01, -1, !dbg !868
  call void @llvm.dbg.value(metadata i64 %14, metadata !850, metadata !DIExpression()), !dbg !849
  %15 = icmp ugt i64 %.01, 0, !dbg !869
  br i1 %15, label %16, label %34, !dbg !867

16:                                               ; preds = %13
  %17 = icmp slt i32 %.0, 8, !dbg !870
  br i1 %17, label %18, label %29, !dbg !873

18:                                               ; preds = %16
  %19 = icmp ule i64 %.04, %9, !dbg !874
  br i1 %19, label %20, label %27, !dbg !877

20:                                               ; preds = %18
  %21 = add i64 %.04, 1, !dbg !878
  call void @llvm.dbg.value(metadata i64 %21, metadata !863, metadata !DIExpression()), !dbg !849
  %22 = getelementptr inbounds i16, i16* %2, i64 %.04, !dbg !880
  %23 = load i16, i16* %22, align 2, !dbg !880
  %24 = zext i16 %23 to i32, !dbg !881
  %25 = shl i32 %24, %.0, !dbg !882
  %26 = add i32 %.02, %25, !dbg !883
  call void @llvm.dbg.value(metadata i32 %26, metadata !864, metadata !DIExpression()), !dbg !849
  br label %27, !dbg !884

27:                                               ; preds = %20, %18
  %.15 = phi i64 [ %21, %20 ], [ %.04, %18 ], !dbg !849
  %.13 = phi i32 [ %26, %20 ], [ %.02, %18 ], !dbg !849
  call void @llvm.dbg.value(metadata i32 %.13, metadata !864, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i64 %.15, metadata !863, metadata !DIExpression()), !dbg !849
  %28 = add nsw i32 %.0, 15, !dbg !885
  call void @llvm.dbg.value(metadata i32 %28, metadata !865, metadata !DIExpression()), !dbg !849
  br label %29, !dbg !886

29:                                               ; preds = %27, %16
  %.26 = phi i64 [ %.15, %27 ], [ %.04, %16 ], !dbg !849
  %.2 = phi i32 [ %.13, %27 ], [ %.02, %16 ], !dbg !849
  %.1 = phi i32 [ %28, %27 ], [ %.0, %16 ], !dbg !849
  call void @llvm.dbg.value(metadata i32 %.1, metadata !865, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i32 %.2, metadata !864, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i64 %.26, metadata !863, metadata !DIExpression()), !dbg !849
  %30 = trunc i32 %.2 to i8, !dbg !887
  %31 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !888
  store i8 %30, i8* %31, align 1, !dbg !889
  %32 = lshr i32 %.2, 8, !dbg !890
  call void @llvm.dbg.value(metadata i32 %32, metadata !864, metadata !DIExpression()), !dbg !849
  %33 = sub nsw i32 %.1, 8, !dbg !891
  call void @llvm.dbg.value(metadata i32 %33, metadata !865, metadata !DIExpression()), !dbg !849
  br label %13, !dbg !867, !llvm.loop !892

34:                                               ; preds = %13, %11
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_montymul(i16* %0, i16* %1, i16* %2, i16* %3, i16 zeroext %4) #0 !dbg !895 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !898, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i16* %1, metadata !900, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i16* %2, metadata !901, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i16* %3, metadata !902, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i16 %4, metadata !903, metadata !DIExpression()), !dbg !899
  %6 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !904
  %7 = load i16, i16* %6, align 2, !dbg !904
  %8 = zext i16 %7 to i32, !dbg !904
  %9 = add nsw i32 %8, 15, !dbg !905
  %10 = ashr i32 %9, 4, !dbg !906
  %11 = sext i32 %10 to i64, !dbg !907
  call void @llvm.dbg.value(metadata i64 %11, metadata !908, metadata !DIExpression()), !dbg !899
  %12 = and i64 %11, -4, !dbg !909
  call void @llvm.dbg.value(metadata i64 %12, metadata !910, metadata !DIExpression()), !dbg !899
  %13 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !911
  %14 = load i16, i16* %13, align 2, !dbg !911
  call void @br_i15_zero.13(i16* %0, i16 zeroext %14), !dbg !912
  call void @llvm.dbg.value(metadata i32 0, metadata !913, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i64 0, metadata !914, metadata !DIExpression()), !dbg !899
  br label %15, !dbg !915

15:                                               ; preds = %165, %5
  %.04 = phi i64 [ 0, %5 ], [ %166, %165 ], !dbg !917
  %.01 = phi i32 [ 0, %5 ], [ %164, %165 ], !dbg !899
  call void @llvm.dbg.value(metadata i32 %.01, metadata !913, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i64 %.04, metadata !914, metadata !DIExpression()), !dbg !899
  %16 = icmp ult i64 %.04, %11, !dbg !918
  br i1 %16, label %17, label %167, !dbg !920

17:                                               ; preds = %15
  %18 = add i64 %.04, 1, !dbg !921
  %19 = getelementptr inbounds i16, i16* %1, i64 %18, !dbg !923
  %20 = load i16, i16* %19, align 2, !dbg !923
  %21 = zext i16 %20 to i32, !dbg !923
  call void @llvm.dbg.value(metadata i32 %21, metadata !924, metadata !DIExpression()), !dbg !925
  %22 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !926
  %23 = load i16, i16* %22, align 2, !dbg !926
  %24 = zext i16 %23 to i32, !dbg !926
  %25 = add i64 %.04, 1, !dbg !926
  %26 = getelementptr inbounds i16, i16* %1, i64 %25, !dbg !926
  %27 = load i16, i16* %26, align 2, !dbg !926
  %28 = zext i16 %27 to i32, !dbg !926
  %29 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !926
  %30 = load i16, i16* %29, align 2, !dbg !926
  %31 = zext i16 %30 to i32, !dbg !926
  %32 = mul i32 %28, %31, !dbg !926
  %33 = add i32 %24, %32, !dbg !926
  %34 = and i32 %33, 32767, !dbg !926
  %35 = zext i16 %4 to i32, !dbg !926
  %36 = mul i32 %34, %35, !dbg !926
  %37 = and i32 %36, 32767, !dbg !927
  call void @llvm.dbg.value(metadata i32 %37, metadata !928, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i32 0, metadata !929, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 0, metadata !930, metadata !DIExpression()), !dbg !899
  br label %38, !dbg !931

38:                                               ; preds = %129, %17
  %.02 = phi i64 [ 0, %17 ], [ %130, %129 ], !dbg !933
  %.0 = phi i32 [ 0, %17 ], [ %124, %129 ], !dbg !925
  call void @llvm.dbg.value(metadata i32 %.0, metadata !929, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %.02, metadata !930, metadata !DIExpression()), !dbg !899
  %39 = icmp ult i64 %.02, %12, !dbg !934
  br i1 %39, label %40, label %131, !dbg !936

40:                                               ; preds = %38
  %41 = add i64 %.02, 1, !dbg !937
  %42 = getelementptr inbounds i16, i16* %0, i64 %41, !dbg !939
  %43 = load i16, i16* %42, align 2, !dbg !939
  %44 = zext i16 %43 to i32, !dbg !939
  %45 = add i64 %.02, 1, !dbg !940
  %46 = getelementptr inbounds i16, i16* %2, i64 %45, !dbg !940
  %47 = load i16, i16* %46, align 2, !dbg !940
  %48 = zext i16 %47 to i32, !dbg !940
  %49 = mul i32 %21, %48, !dbg !940
  %50 = add i32 %44, %49, !dbg !941
  %51 = add i64 %.02, 1, !dbg !942
  %52 = getelementptr inbounds i16, i16* %3, i64 %51, !dbg !942
  %53 = load i16, i16* %52, align 2, !dbg !942
  %54 = zext i16 %53 to i32, !dbg !942
  %55 = mul i32 %37, %54, !dbg !942
  %56 = add i32 %50, %55, !dbg !943
  %57 = add i32 %56, %.0, !dbg !944
  call void @llvm.dbg.value(metadata i32 %57, metadata !945, metadata !DIExpression()), !dbg !946
  %58 = lshr i32 %57, 15, !dbg !947
  call void @llvm.dbg.value(metadata i32 %58, metadata !929, metadata !DIExpression()), !dbg !925
  %59 = and i32 %57, 32767, !dbg !948
  %60 = trunc i32 %59 to i16, !dbg !949
  %61 = add i64 %.02, 0, !dbg !950
  %62 = getelementptr inbounds i16, i16* %0, i64 %61, !dbg !951
  store i16 %60, i16* %62, align 2, !dbg !952
  %63 = add i64 %.02, 2, !dbg !953
  %64 = getelementptr inbounds i16, i16* %0, i64 %63, !dbg !954
  %65 = load i16, i16* %64, align 2, !dbg !954
  %66 = zext i16 %65 to i32, !dbg !954
  %67 = add i64 %.02, 2, !dbg !955
  %68 = getelementptr inbounds i16, i16* %2, i64 %67, !dbg !955
  %69 = load i16, i16* %68, align 2, !dbg !955
  %70 = zext i16 %69 to i32, !dbg !955
  %71 = mul i32 %21, %70, !dbg !955
  %72 = add i32 %66, %71, !dbg !956
  %73 = add i64 %.02, 2, !dbg !957
  %74 = getelementptr inbounds i16, i16* %3, i64 %73, !dbg !957
  %75 = load i16, i16* %74, align 2, !dbg !957
  %76 = zext i16 %75 to i32, !dbg !957
  %77 = mul i32 %37, %76, !dbg !957
  %78 = add i32 %72, %77, !dbg !958
  %79 = add i32 %78, %58, !dbg !959
  call void @llvm.dbg.value(metadata i32 %79, metadata !945, metadata !DIExpression()), !dbg !946
  %80 = lshr i32 %79, 15, !dbg !960
  call void @llvm.dbg.value(metadata i32 %80, metadata !929, metadata !DIExpression()), !dbg !925
  %81 = and i32 %79, 32767, !dbg !961
  %82 = trunc i32 %81 to i16, !dbg !962
  %83 = add i64 %.02, 1, !dbg !963
  %84 = getelementptr inbounds i16, i16* %0, i64 %83, !dbg !964
  store i16 %82, i16* %84, align 2, !dbg !965
  %85 = add i64 %.02, 3, !dbg !966
  %86 = getelementptr inbounds i16, i16* %0, i64 %85, !dbg !967
  %87 = load i16, i16* %86, align 2, !dbg !967
  %88 = zext i16 %87 to i32, !dbg !967
  %89 = add i64 %.02, 3, !dbg !968
  %90 = getelementptr inbounds i16, i16* %2, i64 %89, !dbg !968
  %91 = load i16, i16* %90, align 2, !dbg !968
  %92 = zext i16 %91 to i32, !dbg !968
  %93 = mul i32 %21, %92, !dbg !968
  %94 = add i32 %88, %93, !dbg !969
  %95 = add i64 %.02, 3, !dbg !970
  %96 = getelementptr inbounds i16, i16* %3, i64 %95, !dbg !970
  %97 = load i16, i16* %96, align 2, !dbg !970
  %98 = zext i16 %97 to i32, !dbg !970
  %99 = mul i32 %37, %98, !dbg !970
  %100 = add i32 %94, %99, !dbg !971
  %101 = add i32 %100, %80, !dbg !972
  call void @llvm.dbg.value(metadata i32 %101, metadata !945, metadata !DIExpression()), !dbg !946
  %102 = lshr i32 %101, 15, !dbg !973
  call void @llvm.dbg.value(metadata i32 %102, metadata !929, metadata !DIExpression()), !dbg !925
  %103 = and i32 %101, 32767, !dbg !974
  %104 = trunc i32 %103 to i16, !dbg !975
  %105 = add i64 %.02, 2, !dbg !976
  %106 = getelementptr inbounds i16, i16* %0, i64 %105, !dbg !977
  store i16 %104, i16* %106, align 2, !dbg !978
  %107 = add i64 %.02, 4, !dbg !979
  %108 = getelementptr inbounds i16, i16* %0, i64 %107, !dbg !980
  %109 = load i16, i16* %108, align 2, !dbg !980
  %110 = zext i16 %109 to i32, !dbg !980
  %111 = add i64 %.02, 4, !dbg !981
  %112 = getelementptr inbounds i16, i16* %2, i64 %111, !dbg !981
  %113 = load i16, i16* %112, align 2, !dbg !981
  %114 = zext i16 %113 to i32, !dbg !981
  %115 = mul i32 %21, %114, !dbg !981
  %116 = add i32 %110, %115, !dbg !982
  %117 = add i64 %.02, 4, !dbg !983
  %118 = getelementptr inbounds i16, i16* %3, i64 %117, !dbg !983
  %119 = load i16, i16* %118, align 2, !dbg !983
  %120 = zext i16 %119 to i32, !dbg !983
  %121 = mul i32 %37, %120, !dbg !983
  %122 = add i32 %116, %121, !dbg !984
  %123 = add i32 %122, %102, !dbg !985
  call void @llvm.dbg.value(metadata i32 %123, metadata !945, metadata !DIExpression()), !dbg !946
  %124 = lshr i32 %123, 15, !dbg !986
  call void @llvm.dbg.value(metadata i32 %124, metadata !929, metadata !DIExpression()), !dbg !925
  %125 = and i32 %123, 32767, !dbg !987
  %126 = trunc i32 %125 to i16, !dbg !988
  %127 = add i64 %.02, 3, !dbg !989
  %128 = getelementptr inbounds i16, i16* %0, i64 %127, !dbg !990
  store i16 %126, i16* %128, align 2, !dbg !991
  br label %129, !dbg !992

129:                                              ; preds = %40
  %130 = add i64 %.02, 4, !dbg !993
  call void @llvm.dbg.value(metadata i64 %130, metadata !930, metadata !DIExpression()), !dbg !899
  br label %38, !dbg !994, !llvm.loop !995

131:                                              ; preds = %38
  br label %132, !dbg !997

132:                                              ; preds = %157, %131
  %.13 = phi i64 [ %.02, %131 ], [ %158, %157 ], !dbg !925
  %.1 = phi i32 [ %.0, %131 ], [ %152, %157 ], !dbg !925
  call void @llvm.dbg.value(metadata i32 %.1, metadata !929, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %.13, metadata !930, metadata !DIExpression()), !dbg !899
  %133 = icmp ult i64 %.13, %11, !dbg !998
  br i1 %133, label %134, label %159, !dbg !1001

134:                                              ; preds = %132
  %135 = add i64 %.13, 1, !dbg !1002
  %136 = getelementptr inbounds i16, i16* %0, i64 %135, !dbg !1004
  %137 = load i16, i16* %136, align 2, !dbg !1004
  %138 = zext i16 %137 to i32, !dbg !1004
  %139 = add i64 %.13, 1, !dbg !1005
  %140 = getelementptr inbounds i16, i16* %2, i64 %139, !dbg !1005
  %141 = load i16, i16* %140, align 2, !dbg !1005
  %142 = zext i16 %141 to i32, !dbg !1005
  %143 = mul i32 %21, %142, !dbg !1005
  %144 = add i32 %138, %143, !dbg !1006
  %145 = add i64 %.13, 1, !dbg !1007
  %146 = getelementptr inbounds i16, i16* %3, i64 %145, !dbg !1007
  %147 = load i16, i16* %146, align 2, !dbg !1007
  %148 = zext i16 %147 to i32, !dbg !1007
  %149 = mul i32 %37, %148, !dbg !1007
  %150 = add i32 %144, %149, !dbg !1008
  %151 = add i32 %150, %.1, !dbg !1009
  call void @llvm.dbg.value(metadata i32 %151, metadata !1010, metadata !DIExpression()), !dbg !1011
  %152 = lshr i32 %151, 15, !dbg !1012
  call void @llvm.dbg.value(metadata i32 %152, metadata !929, metadata !DIExpression()), !dbg !925
  %153 = and i32 %151, 32767, !dbg !1013
  %154 = trunc i32 %153 to i16, !dbg !1014
  %155 = add i64 %.13, 0, !dbg !1015
  %156 = getelementptr inbounds i16, i16* %0, i64 %155, !dbg !1016
  store i16 %154, i16* %156, align 2, !dbg !1017
  br label %157, !dbg !1018

157:                                              ; preds = %134
  %158 = add i64 %.13, 1, !dbg !1019
  call void @llvm.dbg.value(metadata i64 %158, metadata !930, metadata !DIExpression()), !dbg !899
  br label %132, !dbg !1020, !llvm.loop !1021

159:                                              ; preds = %132
  %160 = add i32 %.01, %.1, !dbg !1023
  call void @llvm.dbg.value(metadata i32 %160, metadata !1024, metadata !DIExpression()), !dbg !925
  %161 = and i32 %160, 32767, !dbg !1025
  %162 = trunc i32 %161 to i16, !dbg !1026
  %163 = getelementptr inbounds i16, i16* %0, i64 %11, !dbg !1027
  store i16 %162, i16* %163, align 2, !dbg !1028
  %164 = lshr i32 %160, 15, !dbg !1029
  call void @llvm.dbg.value(metadata i32 %164, metadata !913, metadata !DIExpression()), !dbg !899
  br label %165, !dbg !1030

165:                                              ; preds = %159
  %166 = add i64 %.04, 1, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %166, metadata !914, metadata !DIExpression()), !dbg !899
  br label %15, !dbg !1032, !llvm.loop !1033

167:                                              ; preds = %15
  %168 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1035
  %169 = load i16, i16* %168, align 2, !dbg !1035
  %170 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1036
  store i16 %169, i16* %170, align 2, !dbg !1037
  %171 = call i32 @NEQ(i32 %.01, i32 0), !dbg !1038
  %172 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 0), !dbg !1039
  %173 = call i32 @NOT.14(i32 %172), !dbg !1040
  %174 = or i32 %171, %173, !dbg !1041
  %175 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 %174), !dbg !1042
  ret void, !dbg !1043
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.13(i16* %0, i16 zeroext %1) #0 !dbg !1044 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1045, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i16 %1, metadata !1047, metadata !DIExpression()), !dbg !1046
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !1048
  call void @llvm.dbg.value(metadata i16* %3, metadata !1045, metadata !DIExpression()), !dbg !1046
  store i16 %1, i16* %0, align 2, !dbg !1049
  %4 = bitcast i16* %3 to i8*, !dbg !1050
  %5 = zext i16 %1 to i32, !dbg !1051
  %6 = add nsw i32 %5, 15, !dbg !1052
  %7 = ashr i32 %6, 4, !dbg !1053
  %8 = sext i32 %7 to i64, !dbg !1054
  %9 = mul i64 %8, 2, !dbg !1055
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !1050
  ret void, !dbg !1056
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !1057 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1058, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i32 %1, metadata !1060, metadata !DIExpression()), !dbg !1059
  %3 = xor i32 %0, %1, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %3, metadata !1062, metadata !DIExpression()), !dbg !1059
  %4 = sub i32 0, %3, !dbg !1063
  %5 = or i32 %3, %4, !dbg !1064
  %6 = lshr i32 %5, 31, !dbg !1065
  ret i32 %6, !dbg !1066
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.14(i32 %0) #0 !dbg !1067 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1068, metadata !DIExpression()), !dbg !1069
  %2 = xor i32 %0, 1, !dbg !1070
  ret i32 %2, !dbg !1071
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_sub(i16* %0, i16* %1, i32 %2) #0 !dbg !1072 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1073, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i16* %1, metadata !1075, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i32 %2, metadata !1076, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i32 0, metadata !1077, metadata !DIExpression()), !dbg !1074
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1078
  %5 = load i16, i16* %4, align 2, !dbg !1078
  %6 = zext i16 %5 to i32, !dbg !1078
  %7 = add nsw i32 %6, 31, !dbg !1079
  %8 = ashr i32 %7, 4, !dbg !1080
  %9 = sext i32 %8 to i64, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %9, metadata !1082, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i64 1, metadata !1083, metadata !DIExpression()), !dbg !1074
  br label %10, !dbg !1084

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !1074
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !1086
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1083, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1077, metadata !DIExpression()), !dbg !1074
  %11 = icmp ult i64 %.0, %9, !dbg !1087
  br i1 %11, label %12, label %28, !dbg !1089

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !1090
  %14 = load i16, i16* %13, align 2, !dbg !1090
  %15 = zext i16 %14 to i32, !dbg !1090
  call void @llvm.dbg.value(metadata i32 %15, metadata !1092, metadata !DIExpression()), !dbg !1093
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !1094
  %17 = load i16, i16* %16, align 2, !dbg !1094
  %18 = zext i16 %17 to i32, !dbg !1094
  call void @llvm.dbg.value(metadata i32 %18, metadata !1095, metadata !DIExpression()), !dbg !1093
  %19 = sub i32 %15, %18, !dbg !1096
  %20 = sub i32 %19, %.01, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %20, metadata !1098, metadata !DIExpression()), !dbg !1093
  %21 = lshr i32 %20, 31, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %21, metadata !1077, metadata !DIExpression()), !dbg !1074
  %22 = and i32 %20, 32767, !dbg !1100
  %23 = call i32 @MUX.17(i32 %2, i32 %22, i32 %15), !dbg !1101
  %24 = trunc i32 %23 to i16, !dbg !1101
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !1102
  store i16 %24, i16* %25, align 2, !dbg !1103
  br label %26, !dbg !1104

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %27, metadata !1083, metadata !DIExpression()), !dbg !1074
  br label %10, !dbg !1106, !llvm.loop !1107

28:                                               ; preds = %10
  ret i32 %.01, !dbg !1109
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.17(i32 %0, i32 %1, i32 %2) #0 !dbg !1110 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1111, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i32 %1, metadata !1113, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i32 %2, metadata !1114, metadata !DIExpression()), !dbg !1112
  %4 = sub i32 0, %0, !dbg !1115
  %5 = xor i32 %1, %2, !dbg !1116
  %6 = and i32 %4, %5, !dbg !1117
  %7 = xor i32 %2, %6, !dbg !1118
  ret i32 %7, !dbg !1119
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.dbg.cu = !{!67, !2, !69, !71, !77, !80, !83}
!llvm.ident = !{!85, !85, !85, !85, !85, !85, !85}
!llvm.module.flags = !{!86, !87, !88}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "br_ec_c25519_i15", scope: !2, file: !3, line: 390, type: !30, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/ec/ec_c25519_i15.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!4 = !{}
!5 = !{!0, !6, !13, !15, !26, !28}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "GEN", scope: !2, file: !3, line: 77, type: !8, isLocal: true, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !11)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!12}
!12 = !DISubrange(count: 32)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "ORDER", scope: !2, file: !3, line: 84, type: !8, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "C255_P", scope: !2, file: !3, line: 33, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 288, elements: !24)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !20, line: 25, baseType: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !22, line: 40, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!23 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!24 = !{!25}
!25 = !DISubrange(count: 18)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "C255_R2", scope: !2, file: !3, line: 42, type: !17, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "C255_A24", scope: !2, file: !3, line: 70, type: !17, isLocal: true, isDefinition: true)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_ec_impl", file: !32, line: 415, baseType: !33)
!32 = !DIFile(filename: "../BearSSL/inc/bearssl_ec.h", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 270, size: 448, elements: !34)
!34 = !{!35, !39, !49, !50, !54, !59, !63}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "supported_curves", scope: !33, file: !32, line: 279, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !20, line: 26, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 42, baseType: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !33, file: !32, line: 292, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !44, !45}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !33, file: !32, line: 306, baseType: !40, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !33, file: !32, line: 318, baseType: !51, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!46, !44, !45}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "mul", scope: !33, file: !32, line: 350, baseType: !55, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!36, !58, !46, !43, !46, !44}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "mulgen", scope: !33, file: !32, line: 366, baseType: !60, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!46, !58, !43, !46, !44}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "muladd", scope: !33, file: !32, line: 412, baseType: !64, size: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!36, !58, !43, !46, !43, !46, !43, !46, !44}
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "api_mul.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "../BearSSL/src/int/i15_add.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !73, splitDebugInlining: false, nameTableKind: None)
!72 = !DIFile(filename: "../BearSSL/src/int/i15_decmod.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!73 = !{!36, !74}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !75, line: 26, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !22, line: 41, baseType: !44)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "../BearSSL/src/int/i15_encode.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!79 = !{!36, !10}
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !82, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../BearSSL/src/int/i15_montmul.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!82 = !{!46, !36}
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "../BearSSL/src/int/i15_sub.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!85 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!86 = !{i32 7, !"Dwarf Version", i32 4}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"wchar_size", i32 4}
!89 = distinct !DISubprogram(name: "api_mul_wrapper", scope: !68, file: !68, line: 7, type: !90, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !4)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !58, !46, !43, !46, !44}
!92 = !DILocalVariable(name: "G", arg: 1, scope: !89, file: !68, line: 7, type: !58)
!93 = !DILocation(line: 0, scope: !89)
!94 = !DILocalVariable(name: "Glen", arg: 2, scope: !89, file: !68, line: 7, type: !46)
!95 = !DILocalVariable(name: "kb", arg: 3, scope: !89, file: !68, line: 8, type: !43)
!96 = !DILocalVariable(name: "kblen", arg: 4, scope: !89, file: !68, line: 8, type: !46)
!97 = !DILocalVariable(name: "curve", arg: 5, scope: !89, file: !68, line: 8, type: !44)
!98 = !DILocation(line: 9, column: 12, scope: !89)
!99 = !DILocation(line: 9, column: 2, scope: !89)
!100 = !DILocation(line: 10, column: 12, scope: !89)
!101 = !DILocation(line: 10, column: 2, scope: !89)
!102 = !DILocation(line: 11, column: 12, scope: !89)
!103 = !DILocation(line: 11, column: 2, scope: !89)
!104 = !DILocation(line: 12, column: 12, scope: !89)
!105 = !DILocation(line: 12, column: 2, scope: !89)
!106 = !DILocation(line: 13, column: 12, scope: !89)
!107 = !DILocation(line: 13, column: 2, scope: !89)
!108 = !DILocation(line: 15, column: 12, scope: !89)
!109 = !DILocation(line: 15, column: 2, scope: !89)
!110 = !DILocalVariable(name: "iec", scope: !89, file: !68, line: 16, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_ec_impl", file: !32, line: 415, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 270, size: 448, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "supported_curves", scope: !114, file: !32, line: 279, baseType: !36, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !114, file: !32, line: 292, baseType: !40, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !114, file: !32, line: 306, baseType: !40, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !114, file: !32, line: 318, baseType: !51, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "mul", scope: !114, file: !32, line: 350, baseType: !55, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "mulgen", scope: !114, file: !32, line: 366, baseType: !60, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "muladd", scope: !114, file: !32, line: 412, baseType: !64, size: 64, offset: 384)
!123 = !DILocation(line: 18, column: 7, scope: !89)
!124 = !DILocation(line: 18, column: 2, scope: !89)
!125 = !DILocation(line: 19, column: 1, scope: !89)
!126 = distinct !DISubprogram(name: "api_mul_wrapper_t", scope: !68, file: !68, line: 30, type: !127, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !4)
!127 = !DISubroutineType(types: !128)
!128 = !{null}
!129 = !DILocation(line: 32, column: 21, scope: !126)
!130 = !DILocalVariable(name: "G", scope: !126, file: !68, line: 32, type: !58)
!131 = !DILocation(line: 0, scope: !126)
!132 = !DILocation(line: 33, column: 17, scope: !126)
!133 = !DILocalVariable(name: "Glen", scope: !126, file: !68, line: 33, type: !46)
!134 = !DILocation(line: 34, column: 28, scope: !126)
!135 = !DILocalVariable(name: "kb", scope: !126, file: !68, line: 34, type: !43)
!136 = !DILocation(line: 35, column: 18, scope: !126)
!137 = !DILocalVariable(name: "kblen", scope: !126, file: !68, line: 35, type: !46)
!138 = !DILocalVariable(name: "curve", scope: !126, file: !68, line: 36, type: !44)
!139 = !DILocalVariable(name: "iec", scope: !126, file: !68, line: 38, type: !111)
!140 = !DILocation(line: 40, column: 7, scope: !126)
!141 = !DILocation(line: 40, column: 2, scope: !126)
!142 = !DILocation(line: 41, column: 1, scope: !126)
!143 = distinct !DISubprogram(name: "api_generator", scope: !3, file: !3, line: 92, type: !41, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!144 = !DILocalVariable(name: "curve", arg: 1, scope: !143, file: !3, line: 92, type: !44)
!145 = !DILocation(line: 0, scope: !143)
!146 = !DILocalVariable(name: "len", arg: 2, scope: !143, file: !3, line: 92, type: !45)
!147 = !DILocation(line: 95, column: 7, scope: !143)
!148 = !DILocation(line: 96, column: 2, scope: !143)
!149 = distinct !DISubprogram(name: "api_order", scope: !3, file: !3, line: 100, type: !41, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!150 = !DILocalVariable(name: "curve", arg: 1, scope: !149, file: !3, line: 100, type: !44)
!151 = !DILocation(line: 0, scope: !149)
!152 = !DILocalVariable(name: "len", arg: 2, scope: !149, file: !3, line: 100, type: !45)
!153 = !DILocation(line: 103, column: 7, scope: !149)
!154 = !DILocation(line: 104, column: 2, scope: !149)
!155 = distinct !DISubprogram(name: "api_xoff", scope: !3, file: !3, line: 108, type: !52, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!156 = !DILocalVariable(name: "curve", arg: 1, scope: !155, file: !3, line: 108, type: !44)
!157 = !DILocation(line: 0, scope: !155)
!158 = !DILocalVariable(name: "len", arg: 2, scope: !155, file: !3, line: 108, type: !45)
!159 = !DILocation(line: 111, column: 7, scope: !155)
!160 = !DILocation(line: 112, column: 2, scope: !155)
!161 = distinct !DISubprogram(name: "api_mul", scope: !3, file: !3, line: 179, type: !56, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!162 = !DILocalVariable(name: "G", arg: 1, scope: !161, file: !3, line: 179, type: !58)
!163 = !DILocation(line: 0, scope: !161)
!164 = !DILocalVariable(name: "Glen", arg: 2, scope: !161, file: !3, line: 179, type: !46)
!165 = !DILocalVariable(name: "kb", arg: 3, scope: !161, file: !3, line: 180, type: !43)
!166 = !DILocalVariable(name: "kblen", arg: 4, scope: !161, file: !3, line: 180, type: !46)
!167 = !DILocalVariable(name: "curve", arg: 5, scope: !161, file: !3, line: 180, type: !44)
!168 = !DILocalVariable(name: "x1", scope: !161, file: !3, line: 188, type: !169)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 288, elements: !24)
!170 = !DILocation(line: 188, column: 11, scope: !161)
!171 = !DILocalVariable(name: "x2", scope: !161, file: !3, line: 188, type: !169)
!172 = !DILocation(line: 188, column: 19, scope: !161)
!173 = !DILocalVariable(name: "x3", scope: !161, file: !3, line: 188, type: !169)
!174 = !DILocation(line: 188, column: 27, scope: !161)
!175 = !DILocalVariable(name: "z2", scope: !161, file: !3, line: 188, type: !169)
!176 = !DILocation(line: 188, column: 35, scope: !161)
!177 = !DILocalVariable(name: "z3", scope: !161, file: !3, line: 188, type: !169)
!178 = !DILocation(line: 188, column: 43, scope: !161)
!179 = !DILocalVariable(name: "a", scope: !161, file: !3, line: 189, type: !180)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 304, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 19)
!183 = !DILocation(line: 189, column: 11, scope: !161)
!184 = !DILocalVariable(name: "aa", scope: !161, file: !3, line: 189, type: !169)
!185 = !DILocation(line: 189, column: 18, scope: !161)
!186 = !DILocalVariable(name: "b", scope: !161, file: !3, line: 189, type: !180)
!187 = !DILocation(line: 189, column: 26, scope: !161)
!188 = !DILocalVariable(name: "bb", scope: !161, file: !3, line: 189, type: !169)
!189 = !DILocation(line: 189, column: 33, scope: !161)
!190 = !DILocalVariable(name: "c", scope: !161, file: !3, line: 190, type: !169)
!191 = !DILocation(line: 190, column: 11, scope: !161)
!192 = !DILocalVariable(name: "d", scope: !161, file: !3, line: 190, type: !169)
!193 = !DILocation(line: 190, column: 18, scope: !161)
!194 = !DILocalVariable(name: "e", scope: !161, file: !3, line: 190, type: !169)
!195 = !DILocation(line: 190, column: 25, scope: !161)
!196 = !DILocalVariable(name: "da", scope: !161, file: !3, line: 190, type: !169)
!197 = !DILocation(line: 190, column: 32, scope: !161)
!198 = !DILocalVariable(name: "cb", scope: !161, file: !3, line: 190, type: !169)
!199 = !DILocation(line: 190, column: 40, scope: !161)
!200 = !DILocalVariable(name: "k", scope: !161, file: !3, line: 191, type: !201)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !11)
!202 = !DILocation(line: 191, column: 16, scope: !161)
!203 = !DILocation(line: 203, column: 11, scope: !204)
!204 = distinct !DILexicalBlock(scope: !161, file: !3, line: 203, column: 6)
!205 = !DILocation(line: 203, column: 17, scope: !204)
!206 = !DILocation(line: 203, column: 26, scope: !204)
!207 = !DILocation(line: 203, column: 6, scope: !161)
!208 = !DILocation(line: 204, column: 3, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !3, line: 203, column: 32)
!210 = !DILocation(line: 206, column: 2, scope: !161)
!211 = !DILocation(line: 206, column: 8, scope: !161)
!212 = !DILocation(line: 212, column: 2, scope: !161)
!213 = !DILocation(line: 225, column: 14, scope: !161)
!214 = !DILocation(line: 225, column: 2, scope: !161)
!215 = !DILocation(line: 226, column: 2, scope: !161)
!216 = !DILocation(line: 226, column: 8, scope: !161)
!217 = !DILocation(line: 227, column: 20, scope: !161)
!218 = !DILocation(line: 227, column: 30, scope: !161)
!219 = !DILocation(line: 227, column: 2, scope: !161)
!220 = !DILocation(line: 228, column: 2, scope: !161)
!221 = !DILocation(line: 228, column: 7, scope: !161)
!222 = !DILocation(line: 229, column: 13, scope: !161)
!223 = !DILocation(line: 229, column: 39, scope: !161)
!224 = !DILocation(line: 229, column: 28, scope: !161)
!225 = !DILocation(line: 229, column: 24, scope: !161)
!226 = !DILocation(line: 229, column: 2, scope: !161)
!227 = !DILocation(line: 235, column: 18, scope: !161)
!228 = !DILocation(line: 235, column: 22, scope: !161)
!229 = !DILocation(line: 235, column: 2, scope: !161)
!230 = !DILocation(line: 236, column: 2, scope: !161)
!231 = !DILocation(line: 237, column: 14, scope: !161)
!232 = !DILocation(line: 237, column: 18, scope: !161)
!233 = !DILocation(line: 237, column: 2, scope: !161)
!234 = !DILocation(line: 238, column: 2, scope: !161)
!235 = !DILocation(line: 239, column: 2, scope: !161)
!236 = !DILocation(line: 239, column: 8, scope: !161)
!237 = !DILocation(line: 240, column: 2, scope: !161)
!238 = !DILocation(line: 242, column: 2, scope: !161)
!239 = !DILocation(line: 242, column: 26, scope: !161)
!240 = !DILocation(line: 243, column: 9, scope: !161)
!241 = !DILocation(line: 243, column: 11, scope: !161)
!242 = !DILocation(line: 243, column: 24, scope: !161)
!243 = !DILocation(line: 243, column: 2, scope: !161)
!244 = !DILocation(line: 244, column: 2, scope: !161)
!245 = !DILocation(line: 244, column: 8, scope: !161)
!246 = !DILocation(line: 245, column: 2, scope: !161)
!247 = !DILocation(line: 245, column: 7, scope: !161)
!248 = !DILocation(line: 246, column: 2, scope: !161)
!249 = !DILocation(line: 246, column: 7, scope: !161)
!250 = !DILocalVariable(name: "swap", scope: !161, file: !3, line: 192, type: !36)
!251 = !DILocalVariable(name: "i", scope: !161, file: !3, line: 193, type: !44)
!252 = !DILocation(line: 253, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !161, file: !3, line: 253, column: 2)
!254 = !DILocation(line: 0, scope: !253)
!255 = !DILocation(line: 253, column: 18, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 253, column: 2)
!257 = !DILocation(line: 253, column: 2, scope: !253)
!258 = !DILocation(line: 256, column: 19, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !3, line: 253, column: 30)
!260 = !DILocation(line: 256, column: 14, scope: !259)
!261 = !DILocation(line: 256, column: 9, scope: !259)
!262 = !DILocation(line: 256, column: 32, scope: !259)
!263 = !DILocation(line: 256, column: 26, scope: !259)
!264 = !DILocation(line: 256, column: 38, scope: !259)
!265 = !DILocalVariable(name: "kt", scope: !259, file: !3, line: 254, type: !36)
!266 = !DILocation(line: 0, scope: !259)
!267 = !DILocation(line: 257, column: 8, scope: !259)
!268 = !DILocation(line: 258, column: 9, scope: !259)
!269 = !DILocation(line: 258, column: 13, scope: !259)
!270 = !DILocation(line: 258, column: 3, scope: !259)
!271 = !DILocation(line: 259, column: 9, scope: !259)
!272 = !DILocation(line: 259, column: 13, scope: !259)
!273 = !DILocation(line: 259, column: 3, scope: !259)
!274 = !DILocation(line: 269, column: 12, scope: !259)
!275 = !DILocation(line: 269, column: 15, scope: !259)
!276 = !DILocation(line: 269, column: 19, scope: !259)
!277 = !DILocation(line: 269, column: 3, scope: !259)
!278 = !DILocation(line: 270, column: 12, scope: !259)
!279 = !DILocation(line: 270, column: 16, scope: !259)
!280 = !DILocation(line: 270, column: 19, scope: !259)
!281 = !DILocation(line: 270, column: 3, scope: !259)
!282 = !DILocation(line: 271, column: 12, scope: !259)
!283 = !DILocation(line: 271, column: 15, scope: !259)
!284 = !DILocation(line: 271, column: 19, scope: !259)
!285 = !DILocation(line: 271, column: 3, scope: !259)
!286 = !DILocation(line: 272, column: 12, scope: !259)
!287 = !DILocation(line: 272, column: 16, scope: !259)
!288 = !DILocation(line: 272, column: 19, scope: !259)
!289 = !DILocation(line: 272, column: 3, scope: !259)
!290 = !DILocation(line: 273, column: 12, scope: !259)
!291 = !DILocation(line: 273, column: 15, scope: !259)
!292 = !DILocation(line: 273, column: 19, scope: !259)
!293 = !DILocation(line: 273, column: 3, scope: !259)
!294 = !DILocation(line: 274, column: 12, scope: !259)
!295 = !DILocation(line: 274, column: 15, scope: !259)
!296 = !DILocation(line: 274, column: 19, scope: !259)
!297 = !DILocation(line: 274, column: 3, scope: !259)
!298 = !DILocation(line: 275, column: 12, scope: !259)
!299 = !DILocation(line: 275, column: 15, scope: !259)
!300 = !DILocation(line: 275, column: 19, scope: !259)
!301 = !DILocation(line: 275, column: 3, scope: !259)
!302 = !DILocation(line: 276, column: 12, scope: !259)
!303 = !DILocation(line: 276, column: 16, scope: !259)
!304 = !DILocation(line: 276, column: 19, scope: !259)
!305 = !DILocation(line: 276, column: 3, scope: !259)
!306 = !DILocation(line: 277, column: 12, scope: !259)
!307 = !DILocation(line: 277, column: 16, scope: !259)
!308 = !DILocation(line: 277, column: 19, scope: !259)
!309 = !DILocation(line: 277, column: 3, scope: !259)
!310 = !DILocation(line: 291, column: 12, scope: !259)
!311 = !DILocation(line: 291, column: 16, scope: !259)
!312 = !DILocation(line: 291, column: 20, scope: !259)
!313 = !DILocation(line: 291, column: 3, scope: !259)
!314 = !DILocation(line: 292, column: 12, scope: !259)
!315 = !DILocation(line: 292, column: 16, scope: !259)
!316 = !DILocation(line: 292, column: 20, scope: !259)
!317 = !DILocation(line: 292, column: 3, scope: !259)
!318 = !DILocation(line: 293, column: 12, scope: !259)
!319 = !DILocation(line: 293, column: 16, scope: !259)
!320 = !DILocation(line: 293, column: 20, scope: !259)
!321 = !DILocation(line: 293, column: 3, scope: !259)
!322 = !DILocation(line: 294, column: 12, scope: !259)
!323 = !DILocation(line: 294, column: 16, scope: !259)
!324 = !DILocation(line: 294, column: 20, scope: !259)
!325 = !DILocation(line: 294, column: 3, scope: !259)
!326 = !DILocation(line: 295, column: 12, scope: !259)
!327 = !DILocation(line: 295, column: 16, scope: !259)
!328 = !DILocation(line: 295, column: 20, scope: !259)
!329 = !DILocation(line: 295, column: 3, scope: !259)
!330 = !DILocation(line: 296, column: 12, scope: !259)
!331 = !DILocation(line: 296, column: 16, scope: !259)
!332 = !DILocation(line: 296, column: 20, scope: !259)
!333 = !DILocation(line: 296, column: 3, scope: !259)
!334 = !DILocation(line: 297, column: 12, scope: !259)
!335 = !DILocation(line: 297, column: 26, scope: !259)
!336 = !DILocation(line: 297, column: 3, scope: !259)
!337 = !DILocation(line: 298, column: 12, scope: !259)
!338 = !DILocation(line: 298, column: 16, scope: !259)
!339 = !DILocation(line: 298, column: 20, scope: !259)
!340 = !DILocation(line: 298, column: 3, scope: !259)
!341 = !DILocation(line: 299, column: 12, scope: !259)
!342 = !DILocation(line: 299, column: 16, scope: !259)
!343 = !DILocation(line: 299, column: 19, scope: !259)
!344 = !DILocation(line: 299, column: 3, scope: !259)
!345 = !DILocation(line: 307, column: 2, scope: !259)
!346 = !DILocation(line: 253, column: 26, scope: !256)
!347 = !DILocation(line: 253, column: 2, scope: !256)
!348 = distinct !{!348, !257, !349, !350}
!349 = !DILocation(line: 307, column: 2, scope: !253)
!350 = !{!"llvm.loop.mustprogress"}
!351 = !DILocation(line: 308, column: 8, scope: !161)
!352 = !DILocation(line: 308, column: 12, scope: !161)
!353 = !DILocation(line: 308, column: 2, scope: !161)
!354 = !DILocation(line: 309, column: 8, scope: !161)
!355 = !DILocation(line: 309, column: 12, scope: !161)
!356 = !DILocation(line: 309, column: 2, scope: !161)
!357 = !DILocation(line: 316, column: 2, scope: !161)
!358 = !DILocation(line: 317, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !161, file: !3, line: 317, column: 2)
!360 = !DILocation(line: 0, scope: !359)
!361 = !DILocation(line: 317, column: 16, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !3, line: 317, column: 2)
!363 = !DILocation(line: 317, column: 2, scope: !359)
!364 = !DILocation(line: 318, column: 12, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !3, line: 317, column: 28)
!366 = !DILocation(line: 318, column: 15, scope: !365)
!367 = !DILocation(line: 318, column: 18, scope: !365)
!368 = !DILocation(line: 318, column: 3, scope: !365)
!369 = !DILocation(line: 319, column: 12, scope: !365)
!370 = !DILocation(line: 319, column: 15, scope: !365)
!371 = !DILocation(line: 319, column: 18, scope: !365)
!372 = !DILocation(line: 319, column: 3, scope: !365)
!373 = !DILocation(line: 320, column: 2, scope: !365)
!374 = !DILocation(line: 317, column: 24, scope: !362)
!375 = !DILocation(line: 317, column: 2, scope: !362)
!376 = distinct !{!376, !363, !377, !350}
!377 = !DILocation(line: 320, column: 2, scope: !359)
!378 = !DILocation(line: 321, column: 2, scope: !161)
!379 = !DILocation(line: 322, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !161, file: !3, line: 322, column: 2)
!381 = !DILocation(line: 0, scope: !380)
!382 = !DILocation(line: 322, column: 16, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !3, line: 322, column: 2)
!384 = !DILocation(line: 322, column: 2, scope: !380)
!385 = !DILocalVariable(name: "j", scope: !386, file: !3, line: 323, type: !44)
!386 = distinct !DILexicalBlock(scope: !383, file: !3, line: 322, column: 28)
!387 = !DILocation(line: 0, scope: !386)
!388 = !DILocation(line: 325, column: 8, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !3, line: 325, column: 3)
!390 = !DILocation(line: 0, scope: !389)
!391 = !DILocation(line: 325, column: 17, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 325, column: 3)
!393 = !DILocation(line: 325, column: 3, scope: !389)
!394 = !DILocation(line: 326, column: 13, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !3, line: 325, column: 29)
!396 = !DILocation(line: 326, column: 16, scope: !395)
!397 = !DILocation(line: 326, column: 19, scope: !395)
!398 = !DILocation(line: 326, column: 4, scope: !395)
!399 = !DILocation(line: 327, column: 3, scope: !395)
!400 = !DILocation(line: 325, column: 25, scope: !392)
!401 = !DILocation(line: 325, column: 3, scope: !392)
!402 = distinct !{!402, !393, !403, !350}
!403 = !DILocation(line: 327, column: 3, scope: !389)
!404 = !DILocation(line: 328, column: 12, scope: !386)
!405 = !DILocation(line: 328, column: 15, scope: !386)
!406 = !DILocation(line: 328, column: 18, scope: !386)
!407 = !DILocation(line: 328, column: 3, scope: !386)
!408 = !DILocation(line: 329, column: 2, scope: !386)
!409 = !DILocation(line: 322, column: 24, scope: !383)
!410 = !DILocation(line: 322, column: 2, scope: !383)
!411 = distinct !{!411, !384, !412, !350}
!412 = !DILocation(line: 329, column: 2, scope: !380)
!413 = !DILocation(line: 330, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !161, file: !3, line: 330, column: 2)
!415 = !DILocation(line: 0, scope: !414)
!416 = !DILocation(line: 330, column: 17, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !3, line: 330, column: 2)
!418 = !DILocation(line: 330, column: 2, scope: !414)
!419 = !DILocation(line: 331, column: 12, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !3, line: 330, column: 29)
!421 = !DILocation(line: 331, column: 15, scope: !420)
!422 = !DILocation(line: 331, column: 18, scope: !420)
!423 = !DILocation(line: 331, column: 3, scope: !420)
!424 = !DILocation(line: 332, column: 15, scope: !425)
!425 = distinct !DILexicalBlock(scope: !420, file: !3, line: 332, column: 7)
!426 = !DILocation(line: 332, column: 21, scope: !425)
!427 = !DILocation(line: 332, column: 7, scope: !420)
!428 = !DILocation(line: 333, column: 13, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !3, line: 332, column: 26)
!430 = !DILocation(line: 333, column: 16, scope: !429)
!431 = !DILocation(line: 333, column: 20, scope: !429)
!432 = !DILocation(line: 333, column: 4, scope: !429)
!433 = !DILocation(line: 334, column: 3, scope: !429)
!434 = !DILocation(line: 335, column: 2, scope: !420)
!435 = !DILocation(line: 330, column: 25, scope: !417)
!436 = !DILocation(line: 330, column: 2, scope: !417)
!437 = distinct !{!437, !418, !438, !350}
!438 = !DILocation(line: 335, column: 2, scope: !414)
!439 = !DILocation(line: 336, column: 11, scope: !161)
!440 = !DILocation(line: 336, column: 14, scope: !161)
!441 = !DILocation(line: 336, column: 18, scope: !161)
!442 = !DILocation(line: 336, column: 2, scope: !161)
!443 = !DILocation(line: 344, column: 14, scope: !161)
!444 = !DILocation(line: 344, column: 17, scope: !161)
!445 = !DILocation(line: 344, column: 2, scope: !161)
!446 = !DILocation(line: 345, column: 2, scope: !161)
!447 = !DILocation(line: 345, column: 7, scope: !161)
!448 = !DILocation(line: 346, column: 18, scope: !161)
!449 = !DILocation(line: 346, column: 22, scope: !161)
!450 = !DILocation(line: 346, column: 25, scope: !161)
!451 = !DILocation(line: 346, column: 2, scope: !161)
!452 = !DILocation(line: 348, column: 23, scope: !161)
!453 = !DILocation(line: 348, column: 2, scope: !161)
!454 = !DILocation(line: 349, column: 2, scope: !161)
!455 = !DILocation(line: 350, column: 2, scope: !161)
!456 = !DILocation(line: 353, column: 1, scope: !161)
!457 = distinct !DISubprogram(name: "api_mulgen", scope: !3, file: !3, line: 356, type: !61, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!458 = !DILocalVariable(name: "R", arg: 1, scope: !457, file: !3, line: 356, type: !58)
!459 = !DILocation(line: 0, scope: !457)
!460 = !DILocalVariable(name: "x", arg: 2, scope: !457, file: !3, line: 357, type: !43)
!461 = !DILocalVariable(name: "xlen", arg: 3, scope: !457, file: !3, line: 357, type: !46)
!462 = !DILocalVariable(name: "curve", arg: 4, scope: !457, file: !3, line: 357, type: !44)
!463 = !DILocalVariable(name: "Glen", scope: !457, file: !3, line: 360, type: !46)
!464 = !DILocation(line: 360, column: 9, scope: !457)
!465 = !DILocation(line: 362, column: 6, scope: !457)
!466 = !DILocalVariable(name: "G", scope: !457, file: !3, line: 359, type: !43)
!467 = !DILocation(line: 363, column: 15, scope: !457)
!468 = !DILocation(line: 363, column: 2, scope: !457)
!469 = !DILocation(line: 364, column: 13, scope: !457)
!470 = !DILocation(line: 364, column: 2, scope: !457)
!471 = !DILocation(line: 365, column: 9, scope: !457)
!472 = !DILocation(line: 365, column: 2, scope: !457)
!473 = distinct !DISubprogram(name: "api_muladd", scope: !3, file: !3, line: 369, type: !65, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!474 = !DILocalVariable(name: "A", arg: 1, scope: !473, file: !3, line: 369, type: !58)
!475 = !DILocation(line: 0, scope: !473)
!476 = !DILocalVariable(name: "B", arg: 2, scope: !473, file: !3, line: 369, type: !43)
!477 = !DILocalVariable(name: "len", arg: 3, scope: !473, file: !3, line: 369, type: !46)
!478 = !DILocalVariable(name: "x", arg: 4, scope: !473, file: !3, line: 370, type: !43)
!479 = !DILocalVariable(name: "xlen", arg: 5, scope: !473, file: !3, line: 370, type: !46)
!480 = !DILocalVariable(name: "y", arg: 6, scope: !473, file: !3, line: 371, type: !43)
!481 = !DILocalVariable(name: "ylen", arg: 7, scope: !473, file: !3, line: 371, type: !46)
!482 = !DILocalVariable(name: "curve", arg: 8, scope: !473, file: !3, line: 371, type: !44)
!483 = !DILocation(line: 386, column: 2, scope: !473)
!484 = distinct !DISubprogram(name: "byteswap", scope: !3, file: !3, line: 165, type: !485, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !58}
!487 = !DILocalVariable(name: "G", arg: 1, scope: !484, file: !3, line: 165, type: !58)
!488 = !DILocation(line: 0, scope: !484)
!489 = !DILocalVariable(name: "i", scope: !484, file: !3, line: 167, type: !44)
!490 = !DILocation(line: 169, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !484, file: !3, line: 169, column: 2)
!492 = !DILocation(line: 0, scope: !491)
!493 = !DILocation(line: 169, column: 16, scope: !494)
!494 = distinct !DILexicalBlock(scope: !491, file: !3, line: 169, column: 2)
!495 = !DILocation(line: 169, column: 2, scope: !491)
!496 = !DILocation(line: 172, column: 7, scope: !497)
!497 = distinct !DILexicalBlock(scope: !494, file: !3, line: 169, column: 28)
!498 = !DILocalVariable(name: "t", scope: !497, file: !3, line: 170, type: !10)
!499 = !DILocation(line: 0, scope: !497)
!500 = !DILocation(line: 173, column: 15, scope: !497)
!501 = !DILocation(line: 173, column: 10, scope: !497)
!502 = !DILocation(line: 173, column: 3, scope: !497)
!503 = !DILocation(line: 173, column: 8, scope: !497)
!504 = !DILocation(line: 174, column: 8, scope: !497)
!505 = !DILocation(line: 174, column: 3, scope: !497)
!506 = !DILocation(line: 174, column: 13, scope: !497)
!507 = !DILocation(line: 175, column: 2, scope: !497)
!508 = !DILocation(line: 169, column: 24, scope: !494)
!509 = !DILocation(line: 169, column: 2, scope: !494)
!510 = distinct !{!510, !495, !511, !350}
!511 = !DILocation(line: 175, column: 2, scope: !491)
!512 = !DILocation(line: 176, column: 1, scope: !484)
!513 = distinct !DISubprogram(name: "br_i15_zero", scope: !514, file: !514, line: 1537, type: !515, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!514 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!515 = !DISubroutineType(types: !516)
!516 = !{null, !517, !19}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!518 = !DILocalVariable(name: "x", arg: 1, scope: !513, file: !514, line: 1537, type: !517)
!519 = !DILocation(line: 0, scope: !513)
!520 = !DILocalVariable(name: "bit_len", arg: 2, scope: !513, file: !514, line: 1537, type: !19)
!521 = !DILocation(line: 1539, column: 5, scope: !513)
!522 = !DILocation(line: 1539, column: 8, scope: !513)
!523 = !DILocation(line: 1540, column: 2, scope: !513)
!524 = !DILocation(line: 1540, column: 17, scope: !513)
!525 = !DILocation(line: 1540, column: 25, scope: !513)
!526 = !DILocation(line: 1540, column: 31, scope: !513)
!527 = !DILocation(line: 1540, column: 15, scope: !513)
!528 = !DILocation(line: 1540, column: 37, scope: !513)
!529 = !DILocation(line: 1541, column: 1, scope: !513)
!530 = distinct !DISubprogram(name: "NOT", scope: !514, file: !514, line: 761, type: !531, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!531 = !DISubroutineType(types: !532)
!532 = !{!36, !36}
!533 = !DILocalVariable(name: "ctl", arg: 1, scope: !530, file: !514, line: 761, type: !36)
!534 = !DILocation(line: 0, scope: !530)
!535 = !DILocation(line: 763, column: 13, scope: !530)
!536 = !DILocation(line: 763, column: 2, scope: !530)
!537 = distinct !DISubprogram(name: "cswap", scope: !3, file: !3, line: 116, type: !538, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !517, !517, !36}
!540 = !DILocalVariable(name: "a", arg: 1, scope: !537, file: !3, line: 116, type: !517)
!541 = !DILocation(line: 0, scope: !537)
!542 = !DILocalVariable(name: "b", arg: 2, scope: !537, file: !3, line: 116, type: !517)
!543 = !DILocalVariable(name: "ctl", arg: 3, scope: !537, file: !3, line: 116, type: !36)
!544 = !DILocation(line: 120, column: 8, scope: !537)
!545 = !DILocalVariable(name: "i", scope: !537, file: !3, line: 118, type: !44)
!546 = !DILocation(line: 121, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !537, file: !3, line: 121, column: 2)
!548 = !DILocation(line: 0, scope: !547)
!549 = !DILocation(line: 121, column: 16, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !3, line: 121, column: 2)
!551 = !DILocation(line: 121, column: 2, scope: !547)
!552 = !DILocation(line: 124, column: 8, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !3, line: 121, column: 28)
!554 = !DILocalVariable(name: "aw", scope: !553, file: !3, line: 122, type: !36)
!555 = !DILocation(line: 0, scope: !553)
!556 = !DILocation(line: 125, column: 8, scope: !553)
!557 = !DILocalVariable(name: "bw", scope: !553, file: !3, line: 122, type: !36)
!558 = !DILocation(line: 126, column: 18, scope: !553)
!559 = !DILocation(line: 126, column: 12, scope: !553)
!560 = !DILocalVariable(name: "tw", scope: !553, file: !3, line: 122, type: !36)
!561 = !DILocation(line: 127, column: 13, scope: !553)
!562 = !DILocation(line: 127, column: 10, scope: !553)
!563 = !DILocation(line: 127, column: 3, scope: !553)
!564 = !DILocation(line: 127, column: 8, scope: !553)
!565 = !DILocation(line: 128, column: 13, scope: !553)
!566 = !DILocation(line: 128, column: 10, scope: !553)
!567 = !DILocation(line: 128, column: 3, scope: !553)
!568 = !DILocation(line: 128, column: 8, scope: !553)
!569 = !DILocation(line: 129, column: 2, scope: !553)
!570 = !DILocation(line: 121, column: 24, scope: !550)
!571 = !DILocation(line: 121, column: 2, scope: !550)
!572 = distinct !{!572, !551, !573, !350}
!573 = !DILocation(line: 129, column: 2, scope: !547)
!574 = !DILocation(line: 130, column: 1, scope: !537)
!575 = distinct !DISubprogram(name: "c255_add", scope: !3, file: !3, line: 133, type: !576, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !517, !578, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!579 = !DILocalVariable(name: "d", arg: 1, scope: !575, file: !3, line: 133, type: !517)
!580 = !DILocation(line: 0, scope: !575)
!581 = !DILocalVariable(name: "a", arg: 2, scope: !575, file: !3, line: 133, type: !578)
!582 = !DILocalVariable(name: "b", arg: 3, scope: !575, file: !3, line: 133, type: !578)
!583 = !DILocalVariable(name: "t", scope: !575, file: !3, line: 136, type: !169)
!584 = !DILocation(line: 136, column: 11, scope: !575)
!585 = !DILocation(line: 138, column: 2, scope: !575)
!586 = !DILocation(line: 139, column: 19, scope: !575)
!587 = !DILocation(line: 139, column: 8, scope: !575)
!588 = !DILocalVariable(name: "ctl", scope: !575, file: !3, line: 135, type: !36)
!589 = !DILocation(line: 140, column: 24, scope: !575)
!590 = !DILocation(line: 140, column: 13, scope: !575)
!591 = !DILocation(line: 140, column: 9, scope: !575)
!592 = !DILocation(line: 140, column: 6, scope: !575)
!593 = !DILocation(line: 141, column: 13, scope: !575)
!594 = !DILocation(line: 141, column: 2, scope: !575)
!595 = !DILocation(line: 142, column: 2, scope: !575)
!596 = !DILocation(line: 143, column: 1, scope: !575)
!597 = distinct !DISubprogram(name: "c255_mul", scope: !3, file: !3, line: 156, type: !576, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!598 = !DILocalVariable(name: "d", arg: 1, scope: !597, file: !3, line: 156, type: !517)
!599 = !DILocation(line: 0, scope: !597)
!600 = !DILocalVariable(name: "a", arg: 2, scope: !597, file: !3, line: 156, type: !578)
!601 = !DILocalVariable(name: "b", arg: 3, scope: !597, file: !3, line: 156, type: !578)
!602 = !DILocalVariable(name: "t", scope: !597, file: !3, line: 158, type: !169)
!603 = !DILocation(line: 158, column: 11, scope: !597)
!604 = !DILocation(line: 160, column: 18, scope: !597)
!605 = !DILocation(line: 160, column: 2, scope: !597)
!606 = !DILocation(line: 161, column: 2, scope: !597)
!607 = !DILocation(line: 162, column: 1, scope: !597)
!608 = distinct !DISubprogram(name: "c255_sub", scope: !3, file: !3, line: 146, type: !576, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!609 = !DILocalVariable(name: "d", arg: 1, scope: !608, file: !3, line: 146, type: !517)
!610 = !DILocation(line: 0, scope: !608)
!611 = !DILocalVariable(name: "a", arg: 2, scope: !608, file: !3, line: 146, type: !578)
!612 = !DILocalVariable(name: "b", arg: 3, scope: !608, file: !3, line: 146, type: !578)
!613 = !DILocalVariable(name: "t", scope: !608, file: !3, line: 148, type: !169)
!614 = !DILocation(line: 148, column: 11, scope: !608)
!615 = !DILocation(line: 150, column: 2, scope: !608)
!616 = !DILocation(line: 151, column: 13, scope: !608)
!617 = !DILocation(line: 151, column: 35, scope: !608)
!618 = !DILocation(line: 151, column: 24, scope: !608)
!619 = !DILocation(line: 151, column: 2, scope: !608)
!620 = !DILocation(line: 152, column: 2, scope: !608)
!621 = !DILocation(line: 153, column: 1, scope: !608)
!622 = distinct !DISubprogram(name: "br_i15_add", scope: !70, file: !70, line: 29, type: !623, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !4)
!623 = !DISubroutineType(types: !624)
!624 = !{!36, !517, !578, !36}
!625 = !DILocalVariable(name: "a", arg: 1, scope: !622, file: !70, line: 29, type: !517)
!626 = !DILocation(line: 0, scope: !622)
!627 = !DILocalVariable(name: "b", arg: 2, scope: !622, file: !70, line: 29, type: !578)
!628 = !DILocalVariable(name: "ctl", arg: 3, scope: !622, file: !70, line: 29, type: !36)
!629 = !DILocalVariable(name: "cc", scope: !622, file: !70, line: 31, type: !36)
!630 = !DILocation(line: 35, column: 7, scope: !622)
!631 = !DILocation(line: 35, column: 12, scope: !622)
!632 = !DILocation(line: 35, column: 18, scope: !622)
!633 = !DILocation(line: 35, column: 6, scope: !622)
!634 = !DILocalVariable(name: "m", scope: !622, file: !70, line: 32, type: !46)
!635 = !DILocalVariable(name: "u", scope: !622, file: !70, line: 32, type: !46)
!636 = !DILocation(line: 36, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !622, file: !70, line: 36, column: 2)
!638 = !DILocation(line: 0, scope: !637)
!639 = !DILocation(line: 36, column: 16, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !70, line: 36, column: 2)
!641 = !DILocation(line: 36, column: 2, scope: !637)
!642 = !DILocation(line: 39, column: 8, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !70, line: 36, column: 27)
!644 = !DILocalVariable(name: "aw", scope: !643, file: !70, line: 37, type: !36)
!645 = !DILocation(line: 0, scope: !643)
!646 = !DILocation(line: 40, column: 8, scope: !643)
!647 = !DILocalVariable(name: "bw", scope: !643, file: !70, line: 37, type: !36)
!648 = !DILocation(line: 41, column: 12, scope: !643)
!649 = !DILocation(line: 41, column: 17, scope: !643)
!650 = !DILocalVariable(name: "naw", scope: !643, file: !70, line: 37, type: !36)
!651 = !DILocation(line: 42, column: 12, scope: !643)
!652 = !DILocation(line: 43, column: 23, scope: !643)
!653 = !DILocation(line: 43, column: 10, scope: !643)
!654 = !DILocation(line: 43, column: 3, scope: !643)
!655 = !DILocation(line: 43, column: 8, scope: !643)
!656 = !DILocation(line: 44, column: 2, scope: !643)
!657 = !DILocation(line: 36, column: 23, scope: !640)
!658 = !DILocation(line: 36, column: 2, scope: !640)
!659 = distinct !{!659, !641, !660, !350}
!660 = !DILocation(line: 44, column: 2, scope: !637)
!661 = !DILocation(line: 45, column: 2, scope: !622)
!662 = distinct !DISubprogram(name: "MUX", scope: !514, file: !514, line: 770, type: !663, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !69, retainedNodes: !4)
!663 = !DISubroutineType(types: !664)
!664 = !{!36, !36, !36, !36}
!665 = !DILocalVariable(name: "ctl", arg: 1, scope: !662, file: !514, line: 770, type: !36)
!666 = !DILocation(line: 0, scope: !662)
!667 = !DILocalVariable(name: "x", arg: 2, scope: !662, file: !514, line: 770, type: !36)
!668 = !DILocalVariable(name: "y", arg: 3, scope: !662, file: !514, line: 770, type: !36)
!669 = !DILocation(line: 772, column: 14, scope: !662)
!670 = !DILocation(line: 772, column: 24, scope: !662)
!671 = !DILocation(line: 772, column: 19, scope: !662)
!672 = !DILocation(line: 772, column: 11, scope: !662)
!673 = !DILocation(line: 772, column: 2, scope: !662)
!674 = distinct !DISubprogram(name: "br_i15_decode_mod", scope: !72, file: !72, line: 29, type: !675, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!675 = !DISubroutineType(types: !676)
!676 = !{!36, !517, !677, !46, !578}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!679 = !DILocalVariable(name: "x", arg: 1, scope: !674, file: !72, line: 29, type: !517)
!680 = !DILocation(line: 0, scope: !674)
!681 = !DILocalVariable(name: "src", arg: 2, scope: !674, file: !72, line: 29, type: !677)
!682 = !DILocalVariable(name: "len", arg: 3, scope: !674, file: !72, line: 29, type: !46)
!683 = !DILocalVariable(name: "m", arg: 4, scope: !674, file: !72, line: 29, type: !578)
!684 = !DILocalVariable(name: "buf", scope: !674, file: !72, line: 54, type: !43)
!685 = !DILocation(line: 60, column: 10, scope: !674)
!686 = !DILocation(line: 60, column: 15, scope: !674)
!687 = !DILocation(line: 60, column: 21, scope: !674)
!688 = !DILocation(line: 60, column: 9, scope: !674)
!689 = !DILocalVariable(name: "mlen", scope: !674, file: !72, line: 55, type: !46)
!690 = !DILocation(line: 61, column: 15, scope: !674)
!691 = !DILocalVariable(name: "tlen", scope: !674, file: !72, line: 55, type: !46)
!692 = !DILocation(line: 62, column: 11, scope: !693)
!693 = distinct !DILexicalBlock(scope: !674, file: !72, line: 62, column: 6)
!694 = !DILocation(line: 62, column: 6, scope: !674)
!695 = !DILocation(line: 64, column: 2, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !72, line: 62, column: 18)
!697 = !DILocation(line: 65, column: 7, scope: !674)
!698 = !DILocalVariable(name: "r", scope: !674, file: !72, line: 57, type: !36)
!699 = !DILocalVariable(name: "pass", scope: !674, file: !72, line: 56, type: !44)
!700 = !DILocation(line: 67, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !674, file: !72, line: 67, column: 2)
!702 = !DILocation(line: 0, scope: !701)
!703 = !DILocation(line: 67, column: 22, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !72, line: 67, column: 2)
!705 = !DILocation(line: 67, column: 2, scope: !701)
!706 = !DILocalVariable(name: "v", scope: !707, file: !72, line: 68, type: !46)
!707 = distinct !DILexicalBlock(scope: !704, file: !72, line: 67, column: 36)
!708 = !DILocation(line: 0, scope: !707)
!709 = !DILocalVariable(name: "acc", scope: !707, file: !72, line: 69, type: !36)
!710 = !DILocalVariable(name: "acc_len", scope: !707, file: !72, line: 70, type: !44)
!711 = !DILocalVariable(name: "u", scope: !707, file: !72, line: 68, type: !46)
!712 = !DILocation(line: 75, column: 8, scope: !713)
!713 = distinct !DILexicalBlock(scope: !707, file: !72, line: 75, column: 3)
!714 = !DILocation(line: 66, column: 4, scope: !674)
!715 = !DILocation(line: 0, scope: !713)
!716 = !DILocation(line: 75, column: 17, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !72, line: 75, column: 3)
!718 = !DILocation(line: 75, column: 3, scope: !713)
!719 = !DILocation(line: 78, column: 10, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !72, line: 78, column: 8)
!721 = distinct !DILexicalBlock(scope: !717, file: !72, line: 75, column: 31)
!722 = !DILocation(line: 78, column: 8, scope: !721)
!723 = !DILocation(line: 79, column: 17, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !72, line: 78, column: 17)
!725 = !DILocation(line: 79, column: 21, scope: !724)
!726 = !DILocation(line: 79, column: 9, scope: !724)
!727 = !DILocalVariable(name: "b", scope: !721, file: !72, line: 76, type: !36)
!728 = !DILocation(line: 0, scope: !721)
!729 = !DILocation(line: 80, column: 4, scope: !724)
!730 = !DILocation(line: 0, scope: !720)
!731 = !DILocation(line: 83, column: 14, scope: !721)
!732 = !DILocation(line: 83, column: 8, scope: !721)
!733 = !DILocation(line: 84, column: 12, scope: !721)
!734 = !DILocation(line: 85, column: 16, scope: !735)
!735 = distinct !DILexicalBlock(scope: !721, file: !72, line: 85, column: 8)
!736 = !DILocation(line: 85, column: 8, scope: !721)
!737 = !DILocation(line: 88, column: 14, scope: !738)
!738 = distinct !DILexicalBlock(scope: !735, file: !72, line: 85, column: 23)
!739 = !DILocalVariable(name: "xw", scope: !738, file: !72, line: 86, type: !36)
!740 = !DILocation(line: 0, scope: !738)
!741 = !DILocation(line: 89, column: 13, scope: !738)
!742 = !DILocation(line: 90, column: 19, scope: !738)
!743 = !DILocation(line: 90, column: 13, scope: !738)
!744 = !DILocation(line: 91, column: 11, scope: !745)
!745 = distinct !DILexicalBlock(scope: !738, file: !72, line: 91, column: 9)
!746 = !DILocation(line: 91, column: 9, scope: !738)
!747 = !DILocation(line: 92, column: 10, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !72, line: 92, column: 10)
!749 = distinct !DILexicalBlock(scope: !745, file: !72, line: 91, column: 20)
!750 = !DILocation(line: 92, column: 10, scope: !749)
!751 = !DILocation(line: 93, column: 16, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !72, line: 92, column: 16)
!753 = !DILocation(line: 93, column: 14, scope: !752)
!754 = !DILocation(line: 93, column: 7, scope: !752)
!755 = !DILocation(line: 93, column: 12, scope: !752)
!756 = !DILocation(line: 94, column: 6, scope: !752)
!757 = !DILocation(line: 97, column: 30, scope: !758)
!758 = distinct !DILexicalBlock(scope: !748, file: !72, line: 94, column: 13)
!759 = !DILocation(line: 97, column: 22, scope: !758)
!760 = !DILocalVariable(name: "cc", scope: !758, file: !72, line: 95, type: !36)
!761 = !DILocation(line: 0, scope: !758)
!762 = !DILocation(line: 98, column: 15, scope: !758)
!763 = !DILocation(line: 98, column: 11, scope: !758)
!764 = !DILocation(line: 100, column: 5, scope: !749)
!765 = !DILocation(line: 101, column: 11, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !72, line: 101, column: 10)
!767 = distinct !DILexicalBlock(scope: !745, file: !72, line: 100, column: 12)
!768 = !DILocation(line: 101, column: 10, scope: !767)
!769 = !DILocation(line: 102, column: 15, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !72, line: 101, column: 17)
!771 = !DILocation(line: 102, column: 11, scope: !770)
!772 = !DILocation(line: 103, column: 6, scope: !770)
!773 = !DILocation(line: 105, column: 7, scope: !738)
!774 = !DILocation(line: 106, column: 4, scope: !738)
!775 = !DILocation(line: 107, column: 3, scope: !721)
!776 = !DILocation(line: 75, column: 27, scope: !717)
!777 = !DILocation(line: 75, column: 3, scope: !717)
!778 = distinct !{!778, !718, !779, !350}
!779 = !DILocation(line: 107, column: 3, scope: !713)
!780 = !DILocation(line: 118, column: 5, scope: !707)
!781 = !DILocation(line: 119, column: 11, scope: !707)
!782 = !DILocation(line: 119, column: 5, scope: !707)
!783 = !DILocation(line: 120, column: 2, scope: !707)
!784 = !DILocation(line: 67, column: 32, scope: !704)
!785 = !DILocation(line: 67, column: 2, scope: !704)
!786 = distinct !{!786, !705, !787, !350}
!787 = !DILocation(line: 120, column: 2, scope: !701)
!788 = !DILocation(line: 122, column: 9, scope: !674)
!789 = !DILocation(line: 122, column: 2, scope: !674)
!790 = !DILocation(line: 122, column: 7, scope: !674)
!791 = !DILocation(line: 123, column: 11, scope: !674)
!792 = !DILocation(line: 123, column: 2, scope: !674)
!793 = distinct !DISubprogram(name: "CMP", scope: !514, file: !514, line: 835, type: !794, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!794 = !DISubroutineType(types: !795)
!795 = !{!74, !36, !36}
!796 = !DILocalVariable(name: "x", arg: 1, scope: !793, file: !514, line: 835, type: !36)
!797 = !DILocation(line: 0, scope: !793)
!798 = !DILocalVariable(name: "y", arg: 2, scope: !793, file: !514, line: 835, type: !36)
!799 = !DILocation(line: 837, column: 18, scope: !793)
!800 = !DILocation(line: 837, column: 39, scope: !793)
!801 = !DILocation(line: 837, column: 29, scope: !793)
!802 = !DILocation(line: 837, column: 27, scope: !793)
!803 = !DILocation(line: 837, column: 2, scope: !793)
!804 = distinct !DISubprogram(name: "EQ", scope: !514, file: !514, line: 779, type: !805, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!805 = !DISubroutineType(types: !806)
!806 = !{!36, !36, !36}
!807 = !DILocalVariable(name: "x", arg: 1, scope: !804, file: !514, line: 779, type: !36)
!808 = !DILocation(line: 0, scope: !804)
!809 = !DILocalVariable(name: "y", arg: 2, scope: !804, file: !514, line: 779, type: !36)
!810 = !DILocation(line: 783, column: 8, scope: !804)
!811 = !DILocalVariable(name: "q", scope: !804, file: !514, line: 781, type: !36)
!812 = !DILocation(line: 784, column: 18, scope: !804)
!813 = !DILocation(line: 784, column: 16, scope: !804)
!814 = !DILocation(line: 784, column: 22, scope: !804)
!815 = !DILocation(line: 784, column: 9, scope: !804)
!816 = !DILocation(line: 784, column: 2, scope: !804)
!817 = distinct !DISubprogram(name: "MUX", scope: !514, file: !514, line: 770, type: !663, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!818 = !DILocalVariable(name: "ctl", arg: 1, scope: !817, file: !514, line: 770, type: !36)
!819 = !DILocation(line: 0, scope: !817)
!820 = !DILocalVariable(name: "x", arg: 2, scope: !817, file: !514, line: 770, type: !36)
!821 = !DILocalVariable(name: "y", arg: 3, scope: !817, file: !514, line: 770, type: !36)
!822 = !DILocation(line: 772, column: 14, scope: !817)
!823 = !DILocation(line: 772, column: 24, scope: !817)
!824 = !DILocation(line: 772, column: 19, scope: !817)
!825 = !DILocation(line: 772, column: 11, scope: !817)
!826 = !DILocation(line: 772, column: 2, scope: !817)
!827 = distinct !DISubprogram(name: "NOT", scope: !514, file: !514, line: 761, type: !531, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!828 = !DILocalVariable(name: "ctl", arg: 1, scope: !827, file: !514, line: 761, type: !36)
!829 = !DILocation(line: 0, scope: !827)
!830 = !DILocation(line: 763, column: 13, scope: !827)
!831 = !DILocation(line: 763, column: 2, scope: !827)
!832 = distinct !DISubprogram(name: "GT", scope: !514, file: !514, line: 803, type: !805, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!833 = !DILocalVariable(name: "x", arg: 1, scope: !832, file: !514, line: 803, type: !36)
!834 = !DILocation(line: 0, scope: !832)
!835 = !DILocalVariable(name: "y", arg: 2, scope: !832, file: !514, line: 803, type: !36)
!836 = !DILocation(line: 819, column: 8, scope: !832)
!837 = !DILocalVariable(name: "z", scope: !832, file: !514, line: 817, type: !36)
!838 = !DILocation(line: 820, column: 18, scope: !832)
!839 = !DILocation(line: 820, column: 28, scope: !832)
!840 = !DILocation(line: 820, column: 23, scope: !832)
!841 = !DILocation(line: 820, column: 12, scope: !832)
!842 = !DILocation(line: 820, column: 35, scope: !832)
!843 = !DILocation(line: 820, column: 2, scope: !832)
!844 = distinct !DISubprogram(name: "br_i15_encode", scope: !78, file: !78, line: 29, type: !845, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !4)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !847, !46, !578}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!848 = !DILocalVariable(name: "dst", arg: 1, scope: !844, file: !78, line: 29, type: !847)
!849 = !DILocation(line: 0, scope: !844)
!850 = !DILocalVariable(name: "len", arg: 2, scope: !844, file: !78, line: 29, type: !46)
!851 = !DILocalVariable(name: "x", arg: 3, scope: !844, file: !78, line: 29, type: !578)
!852 = !DILocation(line: 36, column: 10, scope: !844)
!853 = !DILocation(line: 36, column: 15, scope: !844)
!854 = !DILocation(line: 36, column: 21, scope: !844)
!855 = !DILocation(line: 36, column: 9, scope: !844)
!856 = !DILocalVariable(name: "xlen", scope: !844, file: !78, line: 32, type: !46)
!857 = !DILocation(line: 37, column: 11, scope: !858)
!858 = distinct !DILexicalBlock(scope: !844, file: !78, line: 37, column: 6)
!859 = !DILocation(line: 37, column: 6, scope: !844)
!860 = !DILocation(line: 38, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !78, line: 37, column: 17)
!862 = !DILocation(line: 39, column: 3, scope: !861)
!863 = !DILocalVariable(name: "u", scope: !844, file: !78, line: 32, type: !46)
!864 = !DILocalVariable(name: "acc", scope: !844, file: !78, line: 33, type: !36)
!865 = !DILocalVariable(name: "acc_len", scope: !844, file: !78, line: 34, type: !44)
!866 = !DILocalVariable(name: "buf", scope: !844, file: !78, line: 31, type: !58)
!867 = !DILocation(line: 45, column: 2, scope: !844)
!868 = !DILocation(line: 45, column: 13, scope: !844)
!869 = !DILocation(line: 45, column: 16, scope: !844)
!870 = !DILocation(line: 46, column: 15, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !78, line: 46, column: 7)
!872 = distinct !DILexicalBlock(scope: !844, file: !78, line: 45, column: 21)
!873 = !DILocation(line: 46, column: 7, scope: !872)
!874 = !DILocation(line: 47, column: 10, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !78, line: 47, column: 8)
!876 = distinct !DILexicalBlock(scope: !871, file: !78, line: 46, column: 20)
!877 = !DILocation(line: 47, column: 8, scope: !876)
!878 = !DILocation(line: 48, column: 26, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !78, line: 47, column: 19)
!880 = !DILocation(line: 48, column: 22, scope: !879)
!881 = !DILocation(line: 48, column: 12, scope: !879)
!882 = !DILocation(line: 48, column: 30, scope: !879)
!883 = !DILocation(line: 48, column: 9, scope: !879)
!884 = !DILocation(line: 49, column: 4, scope: !879)
!885 = !DILocation(line: 50, column: 12, scope: !876)
!886 = !DILocation(line: 51, column: 3, scope: !876)
!887 = !DILocation(line: 52, column: 14, scope: !872)
!888 = !DILocation(line: 52, column: 3, scope: !872)
!889 = !DILocation(line: 52, column: 12, scope: !872)
!890 = !DILocation(line: 53, column: 7, scope: !872)
!891 = !DILocation(line: 54, column: 11, scope: !872)
!892 = distinct !{!892, !867, !893, !350}
!893 = !DILocation(line: 55, column: 2, scope: !844)
!894 = !DILocation(line: 56, column: 1, scope: !844)
!895 = distinct !DISubprogram(name: "br_i15_montymul", scope: !81, file: !81, line: 29, type: !896, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !4)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !517, !578, !578, !578, !19}
!898 = !DILocalVariable(name: "d", arg: 1, scope: !895, file: !81, line: 29, type: !517)
!899 = !DILocation(line: 0, scope: !895)
!900 = !DILocalVariable(name: "x", arg: 2, scope: !895, file: !81, line: 29, type: !578)
!901 = !DILocalVariable(name: "y", arg: 3, scope: !895, file: !81, line: 29, type: !578)
!902 = !DILocalVariable(name: "m", arg: 4, scope: !895, file: !81, line: 30, type: !578)
!903 = !DILocalVariable(name: "m0i", arg: 5, scope: !895, file: !81, line: 30, type: !19)
!904 = !DILocation(line: 35, column: 9, scope: !895)
!905 = !DILocation(line: 35, column: 14, scope: !895)
!906 = !DILocation(line: 35, column: 20, scope: !895)
!907 = !DILocation(line: 35, column: 8, scope: !895)
!908 = !DILocalVariable(name: "len", scope: !895, file: !81, line: 32, type: !46)
!909 = !DILocation(line: 36, column: 13, scope: !895)
!910 = !DILocalVariable(name: "len4", scope: !895, file: !81, line: 32, type: !46)
!911 = !DILocation(line: 37, column: 17, scope: !895)
!912 = !DILocation(line: 37, column: 2, scope: !895)
!913 = !DILocalVariable(name: "dh", scope: !895, file: !81, line: 33, type: !36)
!914 = !DILocalVariable(name: "u", scope: !895, file: !81, line: 32, type: !46)
!915 = !DILocation(line: 39, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !895, file: !81, line: 39, column: 2)
!917 = !DILocation(line: 0, scope: !916)
!918 = !DILocation(line: 39, column: 16, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !81, line: 39, column: 2)
!920 = !DILocation(line: 39, column: 2, scope: !916)
!921 = !DILocation(line: 42, column: 12, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !81, line: 39, column: 29)
!923 = !DILocation(line: 42, column: 8, scope: !922)
!924 = !DILocalVariable(name: "xu", scope: !922, file: !81, line: 40, type: !36)
!925 = !DILocation(line: 0, scope: !922)
!926 = !DILocation(line: 43, column: 7, scope: !922)
!927 = !DILocation(line: 44, column: 4, scope: !922)
!928 = !DILocalVariable(name: "f", scope: !922, file: !81, line: 40, type: !36)
!929 = !DILocalVariable(name: "r", scope: !922, file: !81, line: 40, type: !36)
!930 = !DILocalVariable(name: "v", scope: !895, file: !81, line: 32, type: !46)
!931 = !DILocation(line: 139, column: 8, scope: !932)
!932 = distinct !DILexicalBlock(scope: !922, file: !81, line: 139, column: 3)
!933 = !DILocation(line: 0, scope: !932)
!934 = !DILocation(line: 139, column: 17, scope: !935)
!935 = distinct !DILexicalBlock(scope: !932, file: !81, line: 139, column: 3)
!936 = !DILocation(line: 139, column: 3, scope: !932)
!937 = !DILocation(line: 142, column: 12, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !81, line: 139, column: 33)
!939 = !DILocation(line: 142, column: 8, scope: !938)
!940 = !DILocation(line: 142, column: 19, scope: !938)
!941 = !DILocation(line: 142, column: 17, scope: !938)
!942 = !DILocation(line: 143, column: 7, scope: !938)
!943 = !DILocation(line: 143, column: 5, scope: !938)
!944 = !DILocation(line: 143, column: 26, scope: !938)
!945 = !DILocalVariable(name: "z", scope: !938, file: !81, line: 140, type: !36)
!946 = !DILocation(line: 0, scope: !938)
!947 = !DILocation(line: 144, column: 10, scope: !938)
!948 = !DILocation(line: 145, column: 17, scope: !938)
!949 = !DILocation(line: 145, column: 15, scope: !938)
!950 = !DILocation(line: 145, column: 8, scope: !938)
!951 = !DILocation(line: 145, column: 4, scope: !938)
!952 = !DILocation(line: 145, column: 13, scope: !938)
!953 = !DILocation(line: 146, column: 12, scope: !938)
!954 = !DILocation(line: 146, column: 8, scope: !938)
!955 = !DILocation(line: 146, column: 19, scope: !938)
!956 = !DILocation(line: 146, column: 17, scope: !938)
!957 = !DILocation(line: 147, column: 7, scope: !938)
!958 = !DILocation(line: 147, column: 5, scope: !938)
!959 = !DILocation(line: 147, column: 26, scope: !938)
!960 = !DILocation(line: 148, column: 10, scope: !938)
!961 = !DILocation(line: 149, column: 17, scope: !938)
!962 = !DILocation(line: 149, column: 15, scope: !938)
!963 = !DILocation(line: 149, column: 8, scope: !938)
!964 = !DILocation(line: 149, column: 4, scope: !938)
!965 = !DILocation(line: 149, column: 13, scope: !938)
!966 = !DILocation(line: 150, column: 12, scope: !938)
!967 = !DILocation(line: 150, column: 8, scope: !938)
!968 = !DILocation(line: 150, column: 19, scope: !938)
!969 = !DILocation(line: 150, column: 17, scope: !938)
!970 = !DILocation(line: 151, column: 7, scope: !938)
!971 = !DILocation(line: 151, column: 5, scope: !938)
!972 = !DILocation(line: 151, column: 26, scope: !938)
!973 = !DILocation(line: 152, column: 10, scope: !938)
!974 = !DILocation(line: 153, column: 17, scope: !938)
!975 = !DILocation(line: 153, column: 15, scope: !938)
!976 = !DILocation(line: 153, column: 8, scope: !938)
!977 = !DILocation(line: 153, column: 4, scope: !938)
!978 = !DILocation(line: 153, column: 13, scope: !938)
!979 = !DILocation(line: 154, column: 12, scope: !938)
!980 = !DILocation(line: 154, column: 8, scope: !938)
!981 = !DILocation(line: 154, column: 19, scope: !938)
!982 = !DILocation(line: 154, column: 17, scope: !938)
!983 = !DILocation(line: 155, column: 7, scope: !938)
!984 = !DILocation(line: 155, column: 5, scope: !938)
!985 = !DILocation(line: 155, column: 26, scope: !938)
!986 = !DILocation(line: 156, column: 10, scope: !938)
!987 = !DILocation(line: 157, column: 17, scope: !938)
!988 = !DILocation(line: 157, column: 15, scope: !938)
!989 = !DILocation(line: 157, column: 8, scope: !938)
!990 = !DILocation(line: 157, column: 4, scope: !938)
!991 = !DILocation(line: 157, column: 13, scope: !938)
!992 = !DILocation(line: 158, column: 3, scope: !938)
!993 = !DILocation(line: 139, column: 27, scope: !935)
!994 = !DILocation(line: 139, column: 3, scope: !935)
!995 = distinct !{!995, !936, !996, !350}
!996 = !DILocation(line: 158, column: 3, scope: !932)
!997 = !DILocation(line: 160, column: 3, scope: !922)
!998 = !DILocation(line: 160, column: 12, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !81, line: 160, column: 3)
!1000 = distinct !DILexicalBlock(scope: !922, file: !81, line: 160, column: 3)
!1001 = !DILocation(line: 160, column: 3, scope: !1000)
!1002 = !DILocation(line: 163, column: 12, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !81, line: 160, column: 25)
!1004 = !DILocation(line: 163, column: 8, scope: !1003)
!1005 = !DILocation(line: 163, column: 19, scope: !1003)
!1006 = !DILocation(line: 163, column: 17, scope: !1003)
!1007 = !DILocation(line: 164, column: 7, scope: !1003)
!1008 = !DILocation(line: 164, column: 5, scope: !1003)
!1009 = !DILocation(line: 164, column: 26, scope: !1003)
!1010 = !DILocalVariable(name: "z", scope: !1003, file: !81, line: 161, type: !36)
!1011 = !DILocation(line: 0, scope: !1003)
!1012 = !DILocation(line: 165, column: 10, scope: !1003)
!1013 = !DILocation(line: 166, column: 17, scope: !1003)
!1014 = !DILocation(line: 166, column: 15, scope: !1003)
!1015 = !DILocation(line: 166, column: 8, scope: !1003)
!1016 = !DILocation(line: 166, column: 4, scope: !1003)
!1017 = !DILocation(line: 166, column: 13, scope: !1003)
!1018 = !DILocation(line: 167, column: 3, scope: !1003)
!1019 = !DILocation(line: 160, column: 21, scope: !999)
!1020 = !DILocation(line: 160, column: 3, scope: !999)
!1021 = distinct !{!1021, !1001, !1022, !350}
!1022 = !DILocation(line: 167, column: 3, scope: !1000)
!1023 = !DILocation(line: 169, column: 11, scope: !922)
!1024 = !DILocalVariable(name: "zh", scope: !922, file: !81, line: 40, type: !36)
!1025 = !DILocation(line: 170, column: 15, scope: !922)
!1026 = !DILocation(line: 170, column: 12, scope: !922)
!1027 = !DILocation(line: 170, column: 3, scope: !922)
!1028 = !DILocation(line: 170, column: 10, scope: !922)
!1029 = !DILocation(line: 171, column: 11, scope: !922)
!1030 = !DILocation(line: 172, column: 2, scope: !922)
!1031 = !DILocation(line: 39, column: 25, scope: !919)
!1032 = !DILocation(line: 39, column: 2, scope: !919)
!1033 = distinct !{!1033, !920, !1034, !350}
!1034 = !DILocation(line: 172, column: 2, scope: !916)
!1035 = !DILocation(line: 177, column: 9, scope: !895)
!1036 = !DILocation(line: 177, column: 2, scope: !895)
!1037 = !DILocation(line: 177, column: 7, scope: !895)
!1038 = !DILocation(line: 183, column: 19, scope: !895)
!1039 = !DILocation(line: 183, column: 36, scope: !895)
!1040 = !DILocation(line: 183, column: 32, scope: !895)
!1041 = !DILocation(line: 183, column: 30, scope: !895)
!1042 = !DILocation(line: 183, column: 2, scope: !895)
!1043 = !DILocation(line: 184, column: 1, scope: !895)
!1044 = distinct !DISubprogram(name: "br_i15_zero", scope: !514, file: !514, line: 1537, type: !515, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !80, retainedNodes: !4)
!1045 = !DILocalVariable(name: "x", arg: 1, scope: !1044, file: !514, line: 1537, type: !517)
!1046 = !DILocation(line: 0, scope: !1044)
!1047 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1044, file: !514, line: 1537, type: !19)
!1048 = !DILocation(line: 1539, column: 5, scope: !1044)
!1049 = !DILocation(line: 1539, column: 8, scope: !1044)
!1050 = !DILocation(line: 1540, column: 2, scope: !1044)
!1051 = !DILocation(line: 1540, column: 17, scope: !1044)
!1052 = !DILocation(line: 1540, column: 25, scope: !1044)
!1053 = !DILocation(line: 1540, column: 31, scope: !1044)
!1054 = !DILocation(line: 1540, column: 15, scope: !1044)
!1055 = !DILocation(line: 1540, column: 37, scope: !1044)
!1056 = !DILocation(line: 1541, column: 1, scope: !1044)
!1057 = distinct !DISubprogram(name: "NEQ", scope: !514, file: !514, line: 791, type: !805, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !80, retainedNodes: !4)
!1058 = !DILocalVariable(name: "x", arg: 1, scope: !1057, file: !514, line: 791, type: !36)
!1059 = !DILocation(line: 0, scope: !1057)
!1060 = !DILocalVariable(name: "y", arg: 2, scope: !1057, file: !514, line: 791, type: !36)
!1061 = !DILocation(line: 795, column: 8, scope: !1057)
!1062 = !DILocalVariable(name: "q", scope: !1057, file: !514, line: 793, type: !36)
!1063 = !DILocation(line: 796, column: 14, scope: !1057)
!1064 = !DILocation(line: 796, column: 12, scope: !1057)
!1065 = !DILocation(line: 796, column: 18, scope: !1057)
!1066 = !DILocation(line: 796, column: 2, scope: !1057)
!1067 = distinct !DISubprogram(name: "NOT", scope: !514, file: !514, line: 761, type: !531, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !80, retainedNodes: !4)
!1068 = !DILocalVariable(name: "ctl", arg: 1, scope: !1067, file: !514, line: 761, type: !36)
!1069 = !DILocation(line: 0, scope: !1067)
!1070 = !DILocation(line: 763, column: 13, scope: !1067)
!1071 = !DILocation(line: 763, column: 2, scope: !1067)
!1072 = distinct !DISubprogram(name: "br_i15_sub", scope: !84, file: !84, line: 29, type: !623, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !4)
!1073 = !DILocalVariable(name: "a", arg: 1, scope: !1072, file: !84, line: 29, type: !517)
!1074 = !DILocation(line: 0, scope: !1072)
!1075 = !DILocalVariable(name: "b", arg: 2, scope: !1072, file: !84, line: 29, type: !578)
!1076 = !DILocalVariable(name: "ctl", arg: 3, scope: !1072, file: !84, line: 29, type: !36)
!1077 = !DILocalVariable(name: "cc", scope: !1072, file: !84, line: 31, type: !36)
!1078 = !DILocation(line: 35, column: 7, scope: !1072)
!1079 = !DILocation(line: 35, column: 12, scope: !1072)
!1080 = !DILocation(line: 35, column: 18, scope: !1072)
!1081 = !DILocation(line: 35, column: 6, scope: !1072)
!1082 = !DILocalVariable(name: "m", scope: !1072, file: !84, line: 32, type: !46)
!1083 = !DILocalVariable(name: "u", scope: !1072, file: !84, line: 32, type: !46)
!1084 = !DILocation(line: 36, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1072, file: !84, line: 36, column: 2)
!1086 = !DILocation(line: 0, scope: !1085)
!1087 = !DILocation(line: 36, column: 16, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1085, file: !84, line: 36, column: 2)
!1089 = !DILocation(line: 36, column: 2, scope: !1085)
!1090 = !DILocation(line: 39, column: 8, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !84, line: 36, column: 27)
!1092 = !DILocalVariable(name: "aw", scope: !1091, file: !84, line: 37, type: !36)
!1093 = !DILocation(line: 0, scope: !1091)
!1094 = !DILocation(line: 40, column: 8, scope: !1091)
!1095 = !DILocalVariable(name: "bw", scope: !1091, file: !84, line: 37, type: !36)
!1096 = !DILocation(line: 41, column: 12, scope: !1091)
!1097 = !DILocation(line: 41, column: 17, scope: !1091)
!1098 = !DILocalVariable(name: "naw", scope: !1091, file: !84, line: 37, type: !36)
!1099 = !DILocation(line: 42, column: 12, scope: !1091)
!1100 = !DILocation(line: 43, column: 23, scope: !1091)
!1101 = !DILocation(line: 43, column: 10, scope: !1091)
!1102 = !DILocation(line: 43, column: 3, scope: !1091)
!1103 = !DILocation(line: 43, column: 8, scope: !1091)
!1104 = !DILocation(line: 44, column: 2, scope: !1091)
!1105 = !DILocation(line: 36, column: 23, scope: !1088)
!1106 = !DILocation(line: 36, column: 2, scope: !1088)
!1107 = distinct !{!1107, !1089, !1108, !350}
!1108 = !DILocation(line: 44, column: 2, scope: !1085)
!1109 = !DILocation(line: 45, column: 2, scope: !1072)
!1110 = distinct !DISubprogram(name: "MUX", scope: !514, file: !514, line: 770, type: !663, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !4)
!1111 = !DILocalVariable(name: "ctl", arg: 1, scope: !1110, file: !514, line: 770, type: !36)
!1112 = !DILocation(line: 0, scope: !1110)
!1113 = !DILocalVariable(name: "x", arg: 2, scope: !1110, file: !514, line: 770, type: !36)
!1114 = !DILocalVariable(name: "y", arg: 3, scope: !1110, file: !514, line: 770, type: !36)
!1115 = !DILocation(line: 772, column: 14, scope: !1110)
!1116 = !DILocation(line: 772, column: 24, scope: !1110)
!1117 = !DILocation(line: 772, column: 19, scope: !1110)
!1118 = !DILocation(line: 772, column: 11, scope: !1110)
!1119 = !DILocation(line: 772, column: 2, scope: !1110)
