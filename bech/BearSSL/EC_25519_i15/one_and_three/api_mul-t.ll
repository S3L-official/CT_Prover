; ModuleID = 'api_mul-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_ec_impl = type { i32, i8* (i32, i64*)*, i8* (i32, i64*)*, i64 (i32, i64*)*, i32 (i8*, i64, i8*, i64, i32)*, i64 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* }
%struct.smack_value = type { i8* }

@br_ec_c25519_i15 = dso_local constant %struct.br_ec_impl { i32 536870912, i8* (i32, i64*)* @api_generator, i8* (i32, i64*)* @api_order, i64 (i32, i64*)* @api_xoff, i32 (i8*, i64, i8*, i64, i32)* @api_mul, i64 (i8*, i8*, i64, i32)* @api_mulgen, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* @api_muladd }, align 8, !dbg !0, !psr.id !67
@C255_P = internal constant [18 x i16] [i16 272, i16 32749, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767], align 16, !dbg !15, !psr.id !68
@C255_R2 = internal constant <{ i16, i16, [16 x i16] }> <{ i16 272, i16 361, [16 x i16] zeroinitializer }>, align 16, !dbg !26, !psr.id !69
@C255_A24 = internal constant <{ i16, i16, i16, [15 x i16] }> <{ i16 272, i16 17875, i16 70, [15 x i16] zeroinitializer }>, align 16, !dbg !28, !psr.id !70
@ORDER = internal constant [32 x i8] c"\7F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !13, !psr.id !71
@GEN = internal constant <{ i8, [31 x i8] }> <{ i8 9, [31 x i8] zeroinitializer }>, align 16, !dbg !6, !psr.id !72

; Function Attrs: noinline nounwind uwtable
define dso_local void @api_mul_wrapper(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 !dbg !95 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !98, metadata !DIExpression()), !dbg !99, !psr.id !100
  call void @llvm.dbg.value(metadata i64 %1, metadata !101, metadata !DIExpression()), !dbg !99, !psr.id !102
  call void @llvm.dbg.value(metadata i8* %2, metadata !103, metadata !DIExpression()), !dbg !99, !psr.id !104
  call void @llvm.dbg.value(metadata i64 %3, metadata !105, metadata !DIExpression()), !dbg !99, !psr.id !106
  call void @llvm.dbg.value(metadata i32 %4, metadata !107, metadata !DIExpression()), !dbg !99, !psr.id !108
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !109, !psr.id !110
  call void @public_in(%struct.smack_value* %6), !dbg !111, !psr.id !112
  %7 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %1), !dbg !113, !psr.id !114
  call void @public_in(%struct.smack_value* %7), !dbg !115, !psr.id !116
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !117, !psr.id !118
  call void @public_in(%struct.smack_value* %8), !dbg !119, !psr.id !120
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !121, !psr.id !122
  call void @public_in(%struct.smack_value* %9), !dbg !123, !psr.id !124
  %10 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %4), !dbg !125, !psr.id !126
  call void @public_in(%struct.smack_value* %10), !dbg !127, !psr.id !128
  %11 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 64), !dbg !129, !psr.id !130
  call void @public_in(%struct.smack_value* %11), !dbg !131, !psr.id !132
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_c25519_i15, metadata !133, metadata !DIExpression()), !dbg !99, !psr.id !146
  %12 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_c25519_i15, i32 0, i32 4, !dbg !147, !psr.id !148
  %13 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %12, align 8, !dbg !147, !psr.id !149
  %14 = call i32 %13(i8* %0, i64 %1, i8* %2, i64 %3, i32 29), !dbg !150, !psr.id !151
  ret void, !dbg !152, !psr.id !153
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @api_mul_wrapper_t() #0 !dbg !154 {
  %1 = call i8* (...) @getunsigned(), !dbg !157, !psr.id !158
  call void @llvm.dbg.value(metadata i8* %1, metadata !159, metadata !DIExpression()), !dbg !160, !psr.id !161
  %2 = call i64 (...) @getsize_t(), !dbg !162, !psr.id !163
  call void @llvm.dbg.value(metadata i64 %2, metadata !164, metadata !DIExpression()), !dbg !160, !psr.id !165
  %3 = call i8* (...) @getusn(), !dbg !166, !psr.id !167
  call void @llvm.dbg.value(metadata i8* %3, metadata !168, metadata !DIExpression()), !dbg !160, !psr.id !169
  %4 = call i64 (...) @getsize_t2(), !dbg !170, !psr.id !171
  call void @llvm.dbg.value(metadata i64 %4, metadata !172, metadata !DIExpression()), !dbg !160, !psr.id !173
  call void @llvm.dbg.value(metadata i32 29, metadata !174, metadata !DIExpression()), !dbg !160, !psr.id !175
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_c25519_i15, metadata !176, metadata !DIExpression()), !dbg !160, !psr.id !177
  %5 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_c25519_i15, i32 0, i32 4, !dbg !178, !psr.id !179
  %6 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %5, align 8, !dbg !178, !psr.id !180
  %7 = call i32 %6(i8* %1, i64 %2, i8* %3, i64 %4, i32 29), !dbg !181, !psr.id !182
  ret void, !dbg !183, !psr.id !184
}

declare dso_local i8* @getunsigned(...) #2

declare dso_local i64 @getsize_t(...) #2

declare dso_local i8* @getusn(...) #2

declare dso_local i64 @getsize_t2(...) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @api_generator(i32 %0, i64* %1) #0 !dbg !185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !186, metadata !DIExpression()), !dbg !187, !psr.id !188
  call void @llvm.dbg.value(metadata i64* %1, metadata !189, metadata !DIExpression()), !dbg !187, !psr.id !190
  store i64 32, i64* %1, align 8, !dbg !191, !psr.id !192
  %3 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ i8, [31 x i8] }>* @GEN to [32 x i8]*), i64 0, i64 0, !psr.id !193
  ret i8* %3, !dbg !194, !psr.id !195
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @api_order(i32 %0, i64* %1) #0 !dbg !196 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !197, metadata !DIExpression()), !dbg !198, !psr.id !199
  call void @llvm.dbg.value(metadata i64* %1, metadata !200, metadata !DIExpression()), !dbg !198, !psr.id !201
  store i64 32, i64* %1, align 8, !dbg !202, !psr.id !203
  %3 = getelementptr inbounds [32 x i8], [32 x i8]* @ORDER, i64 0, i64 0, !psr.id !204
  ret i8* %3, !dbg !205, !psr.id !206
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @api_xoff(i32 %0, i64* %1) #0 !dbg !207 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !208, metadata !DIExpression()), !dbg !209, !psr.id !210
  call void @llvm.dbg.value(metadata i64* %1, metadata !211, metadata !DIExpression()), !dbg !209, !psr.id !212
  store i64 32, i64* %1, align 8, !dbg !213, !psr.id !214
  ret i64 0, !dbg !215, !psr.id !216
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_mul(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 !dbg !217 {
  %6 = alloca [18 x i16], align 16, !psr.id !218
  %7 = alloca [18 x i16], align 16, !psr.id !219
  %8 = alloca [18 x i16], align 16, !psr.id !220
  %9 = alloca [18 x i16], align 16, !psr.id !221
  %10 = alloca [18 x i16], align 16, !psr.id !222
  %11 = alloca [19 x i16], align 16, !psr.id !223
  %12 = alloca [18 x i16], align 16, !psr.id !224
  %13 = alloca [19 x i16], align 16, !psr.id !225
  %14 = alloca [18 x i16], align 16, !psr.id !226
  %15 = alloca [18 x i16], align 16, !psr.id !227
  %16 = alloca [18 x i16], align 16, !psr.id !228
  %17 = alloca [18 x i16], align 16, !psr.id !229
  %18 = alloca [18 x i16], align 16, !psr.id !230
  %19 = alloca [18 x i16], align 16, !psr.id !231
  %20 = alloca [32 x i8], align 16, !psr.id !232
  call void @llvm.dbg.value(metadata i8* %0, metadata !233, metadata !DIExpression()), !dbg !234, !psr.id !235
  call void @llvm.dbg.value(metadata i64 %1, metadata !236, metadata !DIExpression()), !dbg !234, !psr.id !237
  call void @llvm.dbg.value(metadata i8* %2, metadata !238, metadata !DIExpression()), !dbg !234, !psr.id !239
  call void @llvm.dbg.value(metadata i64 %3, metadata !240, metadata !DIExpression()), !dbg !234, !psr.id !241
  call void @llvm.dbg.value(metadata i32 %4, metadata !242, metadata !DIExpression()), !dbg !234, !psr.id !243
  call void @llvm.dbg.declare(metadata [18 x i16]* %6, metadata !244, metadata !DIExpression()), !dbg !246, !psr.id !247
  call void @llvm.dbg.declare(metadata [18 x i16]* %7, metadata !248, metadata !DIExpression()), !dbg !249, !psr.id !250
  call void @llvm.dbg.declare(metadata [18 x i16]* %8, metadata !251, metadata !DIExpression()), !dbg !252, !psr.id !253
  call void @llvm.dbg.declare(metadata [18 x i16]* %9, metadata !254, metadata !DIExpression()), !dbg !255, !psr.id !256
  call void @llvm.dbg.declare(metadata [18 x i16]* %10, metadata !257, metadata !DIExpression()), !dbg !258, !psr.id !259
  call void @llvm.dbg.declare(metadata [19 x i16]* %11, metadata !260, metadata !DIExpression()), !dbg !264, !psr.id !265
  call void @llvm.dbg.declare(metadata [18 x i16]* %12, metadata !266, metadata !DIExpression()), !dbg !267, !psr.id !268
  call void @llvm.dbg.declare(metadata [19 x i16]* %13, metadata !269, metadata !DIExpression()), !dbg !270, !psr.id !271
  call void @llvm.dbg.declare(metadata [18 x i16]* %14, metadata !272, metadata !DIExpression()), !dbg !273, !psr.id !274
  call void @llvm.dbg.declare(metadata [18 x i16]* %15, metadata !275, metadata !DIExpression()), !dbg !276, !psr.id !277
  call void @llvm.dbg.declare(metadata [18 x i16]* %16, metadata !278, metadata !DIExpression()), !dbg !279, !psr.id !280
  call void @llvm.dbg.declare(metadata [18 x i16]* %17, metadata !281, metadata !DIExpression()), !dbg !282, !psr.id !283
  call void @llvm.dbg.declare(metadata [18 x i16]* %18, metadata !284, metadata !DIExpression()), !dbg !285, !psr.id !286
  call void @llvm.dbg.declare(metadata [18 x i16]* %19, metadata !287, metadata !DIExpression()), !dbg !288, !psr.id !289
  call void @llvm.dbg.declare(metadata [32 x i8]* %20, metadata !290, metadata !DIExpression()), !dbg !292, !psr.id !293
  %21 = icmp ne i64 %1, 32, !dbg !294, !psr.id !296
  br i1 %21, label %24, label %22, !dbg !297, !psr.id !298

22:                                               ; preds = %5
  %23 = icmp ugt i64 %3, 32, !dbg !299, !psr.id !300
  br i1 %23, label %24, label %25, !dbg !301, !psr.id !302

24:                                               ; preds = %22, %5
  br label %230, !dbg !303, !psr.id !305

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %0, i64 31, !dbg !306, !psr.id !307
  %27 = load i8, i8* %26, align 1, !dbg !308, !psr.id !309
  %28 = zext i8 %27 to i32, !dbg !308, !psr.id !310
  %29 = and i32 %28, 127, !dbg !308, !psr.id !311
  %30 = trunc i32 %29 to i8, !dbg !308, !psr.id !312
  store i8 %30, i8* %26, align 1, !dbg !308, !psr.id !313
  call void @byteswap(i8* %0), !dbg !314, !psr.id !315
  %31 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !316, !psr.id !317
  call void @br_i15_zero(i16* %31, i16 zeroext 273), !dbg !318, !psr.id !319
  %32 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 18, !dbg !320, !psr.id !321
  store i16 1, i16* %32, align 4, !dbg !322, !psr.id !323
  %33 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !324, !psr.id !325
  %34 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !326, !psr.id !327
  %35 = call i32 @br_i15_decode_mod(i16* %33, i8* %0, i64 32, i16* %34), !dbg !328, !psr.id !329
  %36 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !330, !psr.id !331
  store i16 272, i16* %36, align 16, !dbg !332, !psr.id !333
  %37 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !334, !psr.id !335
  %38 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !336, !psr.id !337
  %39 = getelementptr inbounds [18 x i16], [18 x i16]* @C255_P, i64 0, i64 0, !psr.id !338
  %40 = call i32 @br_i15_sub(i16* %38, i16* %39, i32 0), !dbg !339, !psr.id !340
  %41 = call i32 @NOT(i32 %40), !dbg !341, !psr.id !342
  %42 = getelementptr inbounds [18 x i16], [18 x i16]* @C255_P, i64 0, i64 0, !psr.id !343
  %43 = call i32 @br_i15_sub(i16* %37, i16* %42, i32 %41), !dbg !344, !psr.id !345
  %44 = getelementptr inbounds [18 x i16], [18 x i16]* %6, i64 0, i64 0, !dbg !346, !psr.id !347
  %45 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !348, !psr.id !349
  %46 = getelementptr inbounds [18 x i16], [18 x i16]* bitcast (<{ i16, i16, [16 x i16] }>* @C255_R2 to [18 x i16]*), i64 0, i64 0, !psr.id !350
  %47 = getelementptr inbounds [18 x i16], [18 x i16]* @C255_P, i64 0, i64 0, !psr.id !351
  call void @br_i15_montymul(i16* %44, i16* %45, i16* %46, i16* %47, i16 zeroext 18971), !dbg !352, !psr.id !353
  %48 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !354, !psr.id !355
  %49 = bitcast i16* %48 to i8*, !dbg !354, !psr.id !356
  %50 = getelementptr inbounds [18 x i16], [18 x i16]* %6, i64 0, i64 0, !dbg !354, !psr.id !357
  %51 = bitcast i16* %50 to i8*, !dbg !354, !psr.id !358
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 16 %51, i64 36, i1 false), !dbg !354, !psr.id !359
  %52 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !360, !psr.id !361
  %53 = getelementptr inbounds [18 x i16], [18 x i16]* @C255_P, i64 0, i64 0, !psr.id !362
  %54 = load i16, i16* %53, align 16, !dbg !363, !psr.id !364
  call void @br_i15_zero(i16* %52, i16 zeroext %54), !dbg !365, !psr.id !366
  %55 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !367, !psr.id !368
  %56 = bitcast i16* %55 to i8*, !dbg !367, !psr.id !369
  %57 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !367, !psr.id !370
  %58 = bitcast i16* %57 to i8*, !dbg !367, !psr.id !371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %56, i8* align 16 %58, i64 36, i1 false), !dbg !367, !psr.id !372
  %59 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 1, !dbg !373, !psr.id !374
  store i16 19, i16* %59, align 2, !dbg !375, !psr.id !376
  %60 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !377, !psr.id !378
  %61 = bitcast i16* %60 to i8*, !dbg !377, !psr.id !379
  %62 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !377, !psr.id !380
  %63 = bitcast i16* %62 to i8*, !dbg !377, !psr.id !381
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 16 %63, i64 36, i1 false), !dbg !377, !psr.id !382
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0, !dbg !383, !psr.id !384
  %65 = sub i64 32, %3, !dbg !385, !psr.id !386
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 %65, i1 false), !dbg !383, !psr.id !387
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0, !dbg !388, !psr.id !389
  %67 = getelementptr inbounds i8, i8* %66, i64 32, !dbg !390, !psr.id !391
  %68 = sub i64 0, %3, !dbg !392, !psr.id !393
  %69 = getelementptr inbounds i8, i8* %67, i64 %68, !dbg !392, !psr.id !394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %2, i64 %3, i1 false), !dbg !395, !psr.id !396
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 31, !dbg !397, !psr.id !398
  %71 = load i8, i8* %70, align 1, !dbg !399, !psr.id !400
  %72 = zext i8 %71 to i32, !dbg !399, !psr.id !401
  %73 = and i32 %72, 248, !dbg !399, !psr.id !402
  %74 = trunc i32 %73 to i8, !dbg !399, !psr.id !403
  store i8 %74, i8* %70, align 1, !dbg !399, !psr.id !404
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0, !dbg !405, !psr.id !406
  %76 = load i8, i8* %75, align 16, !dbg !407, !psr.id !408
  %77 = zext i8 %76 to i32, !dbg !407, !psr.id !409
  %78 = and i32 %77, 127, !dbg !407, !psr.id !410
  %79 = trunc i32 %78 to i8, !dbg !407, !psr.id !411
  store i8 %79, i8* %75, align 16, !dbg !407, !psr.id !412
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0, !dbg !413, !psr.id !414
  %81 = load i8, i8* %80, align 16, !dbg !415, !psr.id !416
  %82 = zext i8 %81 to i32, !dbg !415, !psr.id !417
  %83 = or i32 %82, 64, !dbg !415, !psr.id !418
  %84 = trunc i32 %83 to i8, !dbg !415, !psr.id !419
  store i8 %84, i8* %80, align 16, !dbg !415, !psr.id !420
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()), !dbg !234, !psr.id !422
  call void @llvm.dbg.value(metadata i32 254, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !424
  br label %85, !dbg !425, !psr.id !427

85:                                               ; preds = %156, %25
  %.03 = phi i32 [ 0, %25 ], [ %96, %156 ], !dbg !234, !psr.id !428
  %.02 = phi i32 [ 254, %25 ], [ %157, %156 ], !dbg !429, !psr.id !430
  call void @llvm.dbg.value(metadata i32 %.02, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !431
  call void @llvm.dbg.value(metadata i32 %.03, metadata !421, metadata !DIExpression()), !dbg !234, !psr.id !432
  %86 = icmp sge i32 %.02, 0, !dbg !433, !psr.id !435
  br i1 %86, label %87, label %158, !dbg !436, !psr.id !437

87:                                               ; preds = %85
  %88 = ashr i32 %.02, 3, !dbg !438, !psr.id !440
  %89 = sub nsw i32 31, %88, !dbg !441, !psr.id !442
  %90 = sext i32 %89 to i64, !dbg !443, !psr.id !444
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 %90, !dbg !443, !psr.id !445
  %92 = load i8, i8* %91, align 1, !dbg !443, !psr.id !446
  %93 = zext i8 %92 to i32, !dbg !443, !psr.id !447
  %94 = and i32 %.02, 7, !dbg !448, !psr.id !449
  %95 = ashr i32 %93, %94, !dbg !450, !psr.id !451
  %96 = and i32 %95, 1, !dbg !452, !psr.id !453
  call void @llvm.dbg.value(metadata i32 %96, metadata !454, metadata !DIExpression()), !dbg !455, !psr.id !456
  %97 = xor i32 %.03, %96, !dbg !457, !psr.id !458
  call void @llvm.dbg.value(metadata i32 %97, metadata !421, metadata !DIExpression()), !dbg !234, !psr.id !459
  %98 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !460, !psr.id !461
  %99 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !462, !psr.id !463
  call void @cswap(i16* %98, i16* %99, i32 %97), !dbg !464, !psr.id !465
  %100 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !466, !psr.id !467
  %101 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !468, !psr.id !469
  call void @cswap(i16* %100, i16* %101, i32 %97), !dbg !470, !psr.id !471
  call void @llvm.dbg.value(metadata i32 %96, metadata !421, metadata !DIExpression()), !dbg !234, !psr.id !472
  %102 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !473, !psr.id !474
  %103 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !475, !psr.id !476
  %104 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !477, !psr.id !478
  call void @c255_add(i16* %102, i16* %103, i16* %104), !dbg !479, !psr.id !480
  %105 = getelementptr inbounds [18 x i16], [18 x i16]* %12, i64 0, i64 0, !dbg !481, !psr.id !482
  %106 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !483, !psr.id !484
  %107 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !485, !psr.id !486
  call void @c255_mul(i16* %105, i16* %106, i16* %107), !dbg !487, !psr.id !488
  %108 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !489, !psr.id !490
  %109 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !491, !psr.id !492
  %110 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !493, !psr.id !494
  call void @c255_sub(i16* %108, i16* %109, i16* %110), !dbg !495, !psr.id !496
  %111 = getelementptr inbounds [18 x i16], [18 x i16]* %14, i64 0, i64 0, !dbg !497, !psr.id !498
  %112 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !499, !psr.id !500
  %113 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !501, !psr.id !502
  call void @c255_mul(i16* %111, i16* %112, i16* %113), !dbg !503, !psr.id !504
  %114 = getelementptr inbounds [18 x i16], [18 x i16]* %17, i64 0, i64 0, !dbg !505, !psr.id !506
  %115 = getelementptr inbounds [18 x i16], [18 x i16]* %12, i64 0, i64 0, !dbg !507, !psr.id !508
  %116 = getelementptr inbounds [18 x i16], [18 x i16]* %14, i64 0, i64 0, !dbg !509, !psr.id !510
  call void @c255_sub(i16* %114, i16* %115, i16* %116), !dbg !511, !psr.id !512
  %117 = getelementptr inbounds [18 x i16], [18 x i16]* %15, i64 0, i64 0, !dbg !513, !psr.id !514
  %118 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !515, !psr.id !516
  %119 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !517, !psr.id !518
  call void @c255_add(i16* %117, i16* %118, i16* %119), !dbg !519, !psr.id !520
  %120 = getelementptr inbounds [18 x i16], [18 x i16]* %16, i64 0, i64 0, !dbg !521, !psr.id !522
  %121 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !523, !psr.id !524
  %122 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !525, !psr.id !526
  call void @c255_sub(i16* %120, i16* %121, i16* %122), !dbg !527, !psr.id !528
  %123 = getelementptr inbounds [18 x i16], [18 x i16]* %18, i64 0, i64 0, !dbg !529, !psr.id !530
  %124 = getelementptr inbounds [18 x i16], [18 x i16]* %16, i64 0, i64 0, !dbg !531, !psr.id !532
  %125 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !533, !psr.id !534
  call void @c255_mul(i16* %123, i16* %124, i16* %125), !dbg !535, !psr.id !536
  %126 = getelementptr inbounds [18 x i16], [18 x i16]* %19, i64 0, i64 0, !dbg !537, !psr.id !538
  %127 = getelementptr inbounds [18 x i16], [18 x i16]* %15, i64 0, i64 0, !dbg !539, !psr.id !540
  %128 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !541, !psr.id !542
  call void @c255_mul(i16* %126, i16* %127, i16* %128), !dbg !543, !psr.id !544
  %129 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !545, !psr.id !546
  %130 = getelementptr inbounds [18 x i16], [18 x i16]* %18, i64 0, i64 0, !dbg !547, !psr.id !548
  %131 = getelementptr inbounds [18 x i16], [18 x i16]* %19, i64 0, i64 0, !dbg !549, !psr.id !550
  call void @c255_add(i16* %129, i16* %130, i16* %131), !dbg !551, !psr.id !552
  %132 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !553, !psr.id !554
  %133 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !555, !psr.id !556
  %134 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !557, !psr.id !558
  call void @c255_mul(i16* %132, i16* %133, i16* %134), !dbg !559, !psr.id !560
  %135 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !561, !psr.id !562
  %136 = getelementptr inbounds [18 x i16], [18 x i16]* %18, i64 0, i64 0, !dbg !563, !psr.id !564
  %137 = getelementptr inbounds [18 x i16], [18 x i16]* %19, i64 0, i64 0, !dbg !565, !psr.id !566
  call void @c255_sub(i16* %135, i16* %136, i16* %137), !dbg !567, !psr.id !568
  %138 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !569, !psr.id !570
  %139 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !571, !psr.id !572
  %140 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !573, !psr.id !574
  call void @c255_mul(i16* %138, i16* %139, i16* %140), !dbg !575, !psr.id !576
  %141 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !577, !psr.id !578
  %142 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !579, !psr.id !580
  %143 = getelementptr inbounds [18 x i16], [18 x i16]* %6, i64 0, i64 0, !dbg !581, !psr.id !582
  call void @c255_mul(i16* %141, i16* %142, i16* %143), !dbg !583, !psr.id !584
  %144 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !585, !psr.id !586
  %145 = getelementptr inbounds [18 x i16], [18 x i16]* %12, i64 0, i64 0, !dbg !587, !psr.id !588
  %146 = getelementptr inbounds [18 x i16], [18 x i16]* %14, i64 0, i64 0, !dbg !589, !psr.id !590
  call void @c255_mul(i16* %144, i16* %145, i16* %146), !dbg !591, !psr.id !592
  %147 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !593, !psr.id !594
  %148 = getelementptr inbounds [18 x i16], [18 x i16]* %17, i64 0, i64 0, !dbg !595, !psr.id !596
  %149 = getelementptr inbounds [18 x i16], [18 x i16]* bitcast (<{ i16, i16, i16, [15 x i16] }>* @C255_A24 to [18 x i16]*), i64 0, i64 0, !psr.id !597
  call void @c255_mul(i16* %147, i16* %149, i16* %148), !dbg !598, !psr.id !599
  %150 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !600, !psr.id !601
  %151 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !602, !psr.id !603
  %152 = getelementptr inbounds [18 x i16], [18 x i16]* %12, i64 0, i64 0, !dbg !604, !psr.id !605
  call void @c255_add(i16* %150, i16* %151, i16* %152), !dbg !606, !psr.id !607
  %153 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !608, !psr.id !609
  %154 = getelementptr inbounds [18 x i16], [18 x i16]* %17, i64 0, i64 0, !dbg !610, !psr.id !611
  %155 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !612, !psr.id !613
  call void @c255_mul(i16* %153, i16* %154, i16* %155), !dbg !614, !psr.id !615
  br label %156, !dbg !616, !psr.id !617

156:                                              ; preds = %87
  %157 = add nsw i32 %.02, -1, !dbg !618, !psr.id !619
  call void @llvm.dbg.value(metadata i32 %157, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !620
  br label %85, !dbg !621, !llvm.loop !622, !psr.id !625

158:                                              ; preds = %85
  %159 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !626, !psr.id !627
  %160 = getelementptr inbounds [18 x i16], [18 x i16]* %8, i64 0, i64 0, !dbg !628, !psr.id !629
  call void @cswap(i16* %159, i16* %160, i32 %.03), !dbg !630, !psr.id !631
  %161 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !632, !psr.id !633
  %162 = getelementptr inbounds [18 x i16], [18 x i16]* %10, i64 0, i64 0, !dbg !634, !psr.id !635
  call void @cswap(i16* %161, i16* %162, i32 %.03), !dbg !636, !psr.id !637
  %163 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !638, !psr.id !639
  %164 = bitcast i16* %163 to i8*, !dbg !638, !psr.id !640
  %165 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !638, !psr.id !641
  %166 = bitcast i16* %165 to i8*, !dbg !638, !psr.id !642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %164, i8* align 16 %166, i64 36, i1 false), !dbg !638, !psr.id !643
  call void @llvm.dbg.value(metadata i32 0, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !644
  br label %167, !dbg !645, !psr.id !647

167:                                              ; preds = %176, %158
  %.1 = phi i32 [ 0, %158 ], [ %177, %176 ], !dbg !648, !psr.id !649
  call void @llvm.dbg.value(metadata i32 %.1, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !650
  %168 = icmp slt i32 %.1, 15, !dbg !651, !psr.id !653
  br i1 %168, label %169, label %178, !dbg !654, !psr.id !655

169:                                              ; preds = %167
  %170 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !656, !psr.id !658
  %171 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !659, !psr.id !660
  %172 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !661, !psr.id !662
  call void @c255_mul(i16* %170, i16* %171, i16* %172), !dbg !663, !psr.id !664
  %173 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !665, !psr.id !666
  %174 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !667, !psr.id !668
  %175 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !669, !psr.id !670
  call void @c255_mul(i16* %173, i16* %174, i16* %175), !dbg !671, !psr.id !672
  br label %176, !dbg !673, !psr.id !674

176:                                              ; preds = %169
  %177 = add nsw i32 %.1, 1, !dbg !675, !psr.id !676
  call void @llvm.dbg.value(metadata i32 %177, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !677
  br label %167, !dbg !678, !llvm.loop !679, !psr.id !681

178:                                              ; preds = %167
  %179 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !682, !psr.id !683
  %180 = bitcast i16* %179 to i8*, !dbg !682, !psr.id !684
  %181 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !682, !psr.id !685
  %182 = bitcast i16* %181 to i8*, !dbg !682, !psr.id !686
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %180, i8* align 16 %182, i64 36, i1 false), !dbg !682, !psr.id !687
  call void @llvm.dbg.value(metadata i32 0, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !688
  br label %183, !dbg !689, !psr.id !691

183:                                              ; preds = %198, %178
  %.2 = phi i32 [ 0, %178 ], [ %199, %198 ], !dbg !692, !psr.id !693
  call void @llvm.dbg.value(metadata i32 %.2, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !694
  %184 = icmp slt i32 %.2, 14, !dbg !695, !psr.id !697
  br i1 %184, label %185, label %200, !dbg !698, !psr.id !699

185:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i32 0, metadata !700, metadata !DIExpression()), !dbg !702, !psr.id !703
  br label %186, !dbg !704, !psr.id !706

186:                                              ; preds = %192, %185
  %.01 = phi i32 [ 0, %185 ], [ %193, %192 ], !dbg !707, !psr.id !708
  call void @llvm.dbg.value(metadata i32 %.01, metadata !700, metadata !DIExpression()), !dbg !702, !psr.id !709
  %187 = icmp slt i32 %.01, 16, !dbg !710, !psr.id !712
  br i1 %187, label %188, label %194, !dbg !713, !psr.id !714

188:                                              ; preds = %186
  %189 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !715, !psr.id !717
  %190 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !718, !psr.id !719
  %191 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !720, !psr.id !721
  call void @c255_mul(i16* %189, i16* %190, i16* %191), !dbg !722, !psr.id !723
  br label %192, !dbg !724, !psr.id !725

192:                                              ; preds = %188
  %193 = add nsw i32 %.01, 1, !dbg !726, !psr.id !727
  call void @llvm.dbg.value(metadata i32 %193, metadata !700, metadata !DIExpression()), !dbg !702, !psr.id !728
  br label %186, !dbg !729, !llvm.loop !730, !psr.id !732

194:                                              ; preds = %186
  %195 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !733, !psr.id !734
  %196 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !735, !psr.id !736
  %197 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !737, !psr.id !738
  call void @c255_mul(i16* %195, i16* %196, i16* %197), !dbg !739, !psr.id !740
  br label %198, !dbg !741, !psr.id !742

198:                                              ; preds = %194
  %199 = add nsw i32 %.2, 1, !dbg !743, !psr.id !744
  call void @llvm.dbg.value(metadata i32 %199, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !745
  br label %183, !dbg !746, !llvm.loop !747, !psr.id !749

200:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i32 14, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !750
  br label %201, !dbg !751, !psr.id !753

201:                                              ; preds = %215, %200
  %.3 = phi i32 [ 14, %200 ], [ %216, %215 ], !dbg !754, !psr.id !755
  call void @llvm.dbg.value(metadata i32 %.3, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !756
  %202 = icmp sge i32 %.3, 0, !dbg !757, !psr.id !759
  br i1 %202, label %203, label %217, !dbg !760, !psr.id !761

203:                                              ; preds = %201
  %204 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !762, !psr.id !764
  %205 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !765, !psr.id !766
  %206 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !767, !psr.id !768
  call void @c255_mul(i16* %204, i16* %205, i16* %206), !dbg !769, !psr.id !770
  %207 = ashr i32 65515, %.3, !dbg !771, !psr.id !773
  %208 = and i32 %207, 1, !dbg !774, !psr.id !775
  %209 = icmp ne i32 %208, 0, !dbg !774, !psr.id !776
  br i1 %209, label %210, label %214, !dbg !777, !psr.id !778

210:                                              ; preds = %203
  %211 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !779, !psr.id !781
  %212 = getelementptr inbounds [18 x i16], [18 x i16]* %9, i64 0, i64 0, !dbg !782, !psr.id !783
  %213 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !784, !psr.id !785
  call void @c255_mul(i16* %211, i16* %212, i16* %213), !dbg !786, !psr.id !787
  br label %214, !dbg !788, !psr.id !789

214:                                              ; preds = %210, %203
  br label %215, !dbg !790, !psr.id !791

215:                                              ; preds = %214
  %216 = add nsw i32 %.3, -1, !dbg !792, !psr.id !793
  call void @llvm.dbg.value(metadata i32 %216, metadata !423, metadata !DIExpression()), !dbg !234, !psr.id !794
  br label %201, !dbg !795, !llvm.loop !796, !psr.id !798

217:                                              ; preds = %201
  %218 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !799, !psr.id !800
  %219 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !801, !psr.id !802
  %220 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !803, !psr.id !804
  call void @c255_mul(i16* %218, i16* %219, i16* %220), !dbg !805, !psr.id !806
  %221 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !807, !psr.id !808
  %222 = getelementptr inbounds [18 x i16], [18 x i16]* @C255_P, i64 0, i64 0, !psr.id !809
  %223 = load i16, i16* %222, align 16, !dbg !810, !psr.id !811
  call void @br_i15_zero(i16* %221, i16 zeroext %223), !dbg !812, !psr.id !813
  %224 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 1, !dbg !814, !psr.id !815
  store i16 1, i16* %224, align 2, !dbg !816, !psr.id !817
  %225 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !818, !psr.id !819
  %226 = getelementptr inbounds [19 x i16], [19 x i16]* %11, i64 0, i64 0, !dbg !820, !psr.id !821
  %227 = getelementptr inbounds [19 x i16], [19 x i16]* %13, i64 0, i64 0, !dbg !822, !psr.id !823
  %228 = getelementptr inbounds [18 x i16], [18 x i16]* @C255_P, i64 0, i64 0, !psr.id !824
  call void @br_i15_montymul(i16* %225, i16* %226, i16* %227, i16* %228, i16 zeroext 18971), !dbg !825, !psr.id !826
  %229 = getelementptr inbounds [18 x i16], [18 x i16]* %7, i64 0, i64 0, !dbg !827, !psr.id !828
  call void @br_i15_encode(i8* %0, i64 32, i16* %229), !dbg !829, !psr.id !830
  call void @byteswap(i8* %0), !dbg !831, !psr.id !832
  br label %230, !dbg !833, !psr.id !834

230:                                              ; preds = %217, %24
  %.0 = phi i32 [ 0, %24 ], [ 1, %217 ], !dbg !234, !psr.id !835
  ret i32 %.0, !dbg !836, !psr.id !837
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @api_mulgen(i8* %0, i8* %1, i64 %2, i32 %3) #0 !dbg !838 {
  %5 = alloca i64, align 8, !psr.id !839
  call void @llvm.dbg.value(metadata i8* %0, metadata !840, metadata !DIExpression()), !dbg !841, !psr.id !842
  call void @llvm.dbg.value(metadata i8* %1, metadata !843, metadata !DIExpression()), !dbg !841, !psr.id !844
  call void @llvm.dbg.value(metadata i64 %2, metadata !845, metadata !DIExpression()), !dbg !841, !psr.id !846
  call void @llvm.dbg.value(metadata i32 %3, metadata !847, metadata !DIExpression()), !dbg !841, !psr.id !848
  call void @llvm.dbg.declare(metadata i64* %5, metadata !849, metadata !DIExpression()), !dbg !850, !psr.id !851
  %6 = call i8* @api_generator(i32 %3, i64* %5), !dbg !852, !psr.id !853
  call void @llvm.dbg.value(metadata i8* %6, metadata !854, metadata !DIExpression()), !dbg !841, !psr.id !855
  %7 = load i64, i64* %5, align 8, !dbg !856, !psr.id !857
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %6, i64 %7, i1 false), !dbg !858, !psr.id !859
  %8 = load i64, i64* %5, align 8, !dbg !860, !psr.id !861
  %9 = call i32 @api_mul(i8* %0, i64 %8, i8* %1, i64 %2, i32 %3), !dbg !862, !psr.id !863
  %10 = load i64, i64* %5, align 8, !dbg !864, !psr.id !865
  ret i64 %10, !dbg !866, !psr.id !867
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_muladd(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 !dbg !868 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !869, metadata !DIExpression()), !dbg !870, !psr.id !871
  call void @llvm.dbg.value(metadata i8* %1, metadata !872, metadata !DIExpression()), !dbg !870, !psr.id !873
  call void @llvm.dbg.value(metadata i64 %2, metadata !874, metadata !DIExpression()), !dbg !870, !psr.id !875
  call void @llvm.dbg.value(metadata i8* %3, metadata !876, metadata !DIExpression()), !dbg !870, !psr.id !877
  call void @llvm.dbg.value(metadata i64 %4, metadata !878, metadata !DIExpression()), !dbg !870, !psr.id !879
  call void @llvm.dbg.value(metadata i8* %5, metadata !880, metadata !DIExpression()), !dbg !870, !psr.id !881
  call void @llvm.dbg.value(metadata i64 %6, metadata !882, metadata !DIExpression()), !dbg !870, !psr.id !883
  call void @llvm.dbg.value(metadata i32 %7, metadata !884, metadata !DIExpression()), !dbg !870, !psr.id !885
  ret i32 0, !dbg !886, !psr.id !887
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @byteswap(i8* %0) #0 !dbg !888 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !891, metadata !DIExpression()), !dbg !892, !psr.id !893
  call void @llvm.dbg.value(metadata i32 0, metadata !894, metadata !DIExpression()), !dbg !892, !psr.id !895
  br label %2, !dbg !896, !psr.id !898

2:                                                ; preds = %17, %1
  %.0 = phi i32 [ 0, %1 ], [ %18, %17 ], !dbg !899, !psr.id !900
  call void @llvm.dbg.value(metadata i32 %.0, metadata !894, metadata !DIExpression()), !dbg !892, !psr.id !901
  %3 = icmp slt i32 %.0, 16, !dbg !902, !psr.id !904
  br i1 %3, label %4, label %19, !dbg !905, !psr.id !906

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64, !dbg !907, !psr.id !909
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !907, !psr.id !910
  %7 = load i8, i8* %6, align 1, !dbg !907, !psr.id !911
  call void @llvm.dbg.value(metadata i8 %7, metadata !912, metadata !DIExpression()), !dbg !913, !psr.id !914
  %8 = sub nsw i32 31, %.0, !dbg !915, !psr.id !916
  %9 = sext i32 %8 to i64, !dbg !917, !psr.id !918
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !917, !psr.id !919
  %11 = load i8, i8* %10, align 1, !dbg !917, !psr.id !920
  %12 = sext i32 %.0 to i64, !dbg !921, !psr.id !922
  %13 = getelementptr inbounds i8, i8* %0, i64 %12, !dbg !921, !psr.id !923
  store i8 %11, i8* %13, align 1, !dbg !924, !psr.id !925
  %14 = sub nsw i32 31, %.0, !dbg !926, !psr.id !927
  %15 = sext i32 %14 to i64, !dbg !928, !psr.id !929
  %16 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !928, !psr.id !930
  store i8 %7, i8* %16, align 1, !dbg !931, !psr.id !932
  br label %17, !dbg !933, !psr.id !934

17:                                               ; preds = %4
  %18 = add nsw i32 %.0, 1, !dbg !935, !psr.id !936
  call void @llvm.dbg.value(metadata i32 %18, metadata !894, metadata !DIExpression()), !dbg !892, !psr.id !937
  br label %2, !dbg !938, !llvm.loop !939, !psr.id !941

19:                                               ; preds = %2
  ret void, !dbg !942, !psr.id !943
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero(i16* %0, i16 zeroext %1) #0 !dbg !944 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !949, metadata !DIExpression()), !dbg !950, !psr.id !951
  call void @llvm.dbg.value(metadata i16 %1, metadata !952, metadata !DIExpression()), !dbg !950, !psr.id !953
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !954, !psr.id !955
  call void @llvm.dbg.value(metadata i16* %3, metadata !949, metadata !DIExpression()), !dbg !950, !psr.id !956
  store i16 %1, i16* %0, align 2, !dbg !957, !psr.id !958
  %4 = bitcast i16* %3 to i8*, !dbg !959, !psr.id !960
  %5 = zext i16 %1 to i32, !dbg !961, !psr.id !962
  %6 = add nsw i32 %5, 15, !dbg !963, !psr.id !964
  %7 = ashr i32 %6, 4, !dbg !965, !psr.id !966
  %8 = sext i32 %7 to i64, !dbg !967, !psr.id !968
  %9 = mul i64 %8, 2, !dbg !969, !psr.id !970
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !959, !psr.id !971
  ret void, !dbg !972, !psr.id !973
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !974 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !977, metadata !DIExpression()), !dbg !978, !psr.id !979
  %2 = xor i32 %0, 1, !dbg !980, !psr.id !981
  ret i32 %2, !dbg !982, !psr.id !983
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @cswap(i16* %0, i16* %1, i32 %2) #0 !dbg !984 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !987, metadata !DIExpression()), !dbg !988, !psr.id !989
  call void @llvm.dbg.value(metadata i16* %1, metadata !990, metadata !DIExpression()), !dbg !988, !psr.id !991
  call void @llvm.dbg.value(metadata i32 %2, metadata !992, metadata !DIExpression()), !dbg !988, !psr.id !993
  %4 = sub i32 0, %2, !dbg !994, !psr.id !995
  call void @llvm.dbg.value(metadata i32 %4, metadata !992, metadata !DIExpression()), !dbg !988, !psr.id !996
  call void @llvm.dbg.value(metadata i32 0, metadata !997, metadata !DIExpression()), !dbg !988, !psr.id !998
  br label %5, !dbg !999, !psr.id !1001

5:                                                ; preds = %26, %3
  %.0 = phi i32 [ 0, %3 ], [ %27, %26 ], !dbg !1002, !psr.id !1003
  call void @llvm.dbg.value(metadata i32 %.0, metadata !997, metadata !DIExpression()), !dbg !988, !psr.id !1004
  %6 = icmp slt i32 %.0, 18, !dbg !1005, !psr.id !1007
  br i1 %6, label %7, label %28, !dbg !1008, !psr.id !1009

7:                                                ; preds = %5
  %8 = sext i32 %.0 to i64, !dbg !1010, !psr.id !1012
  %9 = getelementptr inbounds i16, i16* %0, i64 %8, !dbg !1010, !psr.id !1013
  %10 = load i16, i16* %9, align 2, !dbg !1010, !psr.id !1014
  %11 = zext i16 %10 to i32, !dbg !1010, !psr.id !1015
  call void @llvm.dbg.value(metadata i32 %11, metadata !1016, metadata !DIExpression()), !dbg !1017, !psr.id !1018
  %12 = sext i32 %.0 to i64, !dbg !1019, !psr.id !1020
  %13 = getelementptr inbounds i16, i16* %1, i64 %12, !dbg !1019, !psr.id !1021
  %14 = load i16, i16* %13, align 2, !dbg !1019, !psr.id !1022
  %15 = zext i16 %14 to i32, !dbg !1019, !psr.id !1023
  call void @llvm.dbg.value(metadata i32 %15, metadata !1024, metadata !DIExpression()), !dbg !1017, !psr.id !1025
  %16 = xor i32 %11, %15, !dbg !1026, !psr.id !1027
  %17 = and i32 %4, %16, !dbg !1028, !psr.id !1029
  call void @llvm.dbg.value(metadata i32 %17, metadata !1030, metadata !DIExpression()), !dbg !1017, !psr.id !1031
  %18 = xor i32 %11, %17, !dbg !1032, !psr.id !1033
  %19 = trunc i32 %18 to i16, !dbg !1034, !psr.id !1035
  %20 = sext i32 %.0 to i64, !dbg !1036, !psr.id !1037
  %21 = getelementptr inbounds i16, i16* %0, i64 %20, !dbg !1036, !psr.id !1038
  store i16 %19, i16* %21, align 2, !dbg !1039, !psr.id !1040
  %22 = xor i32 %15, %17, !dbg !1041, !psr.id !1042
  %23 = trunc i32 %22 to i16, !dbg !1043, !psr.id !1044
  %24 = sext i32 %.0 to i64, !dbg !1045, !psr.id !1046
  %25 = getelementptr inbounds i16, i16* %1, i64 %24, !dbg !1045, !psr.id !1047
  store i16 %23, i16* %25, align 2, !dbg !1048, !psr.id !1049
  br label %26, !dbg !1050, !psr.id !1051

26:                                               ; preds = %7
  %27 = add nsw i32 %.0, 1, !dbg !1052, !psr.id !1053
  call void @llvm.dbg.value(metadata i32 %27, metadata !997, metadata !DIExpression()), !dbg !988, !psr.id !1054
  br label %5, !dbg !1055, !llvm.loop !1056, !psr.id !1058

28:                                               ; preds = %5
  ret void, !dbg !1059, !psr.id !1060
}

; Function Attrs: noinline nounwind uwtable
define internal void @c255_add(i16* %0, i16* %1, i16* %2) #0 !dbg !1061 {
  %4 = alloca [18 x i16], align 16, !psr.id !1065
  call void @llvm.dbg.value(metadata i16* %0, metadata !1066, metadata !DIExpression()), !dbg !1067, !psr.id !1068
  call void @llvm.dbg.value(metadata i16* %1, metadata !1069, metadata !DIExpression()), !dbg !1067, !psr.id !1070
  call void @llvm.dbg.value(metadata i16* %2, metadata !1071, metadata !DIExpression()), !dbg !1067, !psr.id !1072
  call void @llvm.dbg.declare(metadata [18 x i16]* %4, metadata !1073, metadata !DIExpression()), !dbg !1074, !psr.id !1075
  %5 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !1076, !psr.id !1077
  %6 = bitcast i16* %5 to i8*, !dbg !1076, !psr.id !1078
  %7 = bitcast i16* %1 to i8*, !dbg !1076, !psr.id !1079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 2 %7, i64 36, i1 false), !dbg !1076, !psr.id !1080
  %8 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !1081, !psr.id !1082
  %9 = call i32 @br_i15_add(i16* %8, i16* %2, i32 1), !dbg !1083, !psr.id !1084
  call void @llvm.dbg.value(metadata i32 %9, metadata !1085, metadata !DIExpression()), !dbg !1067, !psr.id !1086
  %10 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !1087, !psr.id !1088
  %11 = getelementptr inbounds [18 x i16], [18 x i16]* @C255_P, i64 0, i64 0, !psr.id !1089
  %12 = call i32 @br_i15_sub(i16* %10, i16* %11, i32 0), !dbg !1090, !psr.id !1091
  %13 = call i32 @NOT(i32 %12), !dbg !1092, !psr.id !1093
  %14 = or i32 %9, %13, !dbg !1094, !psr.id !1095
  call void @llvm.dbg.value(metadata i32 %14, metadata !1085, metadata !DIExpression()), !dbg !1067, !psr.id !1096
  %15 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !1097, !psr.id !1098
  %16 = getelementptr inbounds [18 x i16], [18 x i16]* @C255_P, i64 0, i64 0, !psr.id !1099
  %17 = call i32 @br_i15_sub(i16* %15, i16* %16, i32 %14), !dbg !1100, !psr.id !1101
  %18 = bitcast i16* %0 to i8*, !dbg !1102, !psr.id !1103
  %19 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !1102, !psr.id !1104
  %20 = bitcast i16* %19 to i8*, !dbg !1102, !psr.id !1105
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %18, i8* align 16 %20, i64 36, i1 false), !dbg !1102, !psr.id !1106
  ret void, !dbg !1107, !psr.id !1108
}

; Function Attrs: noinline nounwind uwtable
define internal void @c255_mul(i16* %0, i16* %1, i16* %2) #0 !dbg !1109 {
  %4 = alloca [18 x i16], align 16, !psr.id !1110
  call void @llvm.dbg.value(metadata i16* %0, metadata !1111, metadata !DIExpression()), !dbg !1112, !psr.id !1113
  call void @llvm.dbg.value(metadata i16* %1, metadata !1114, metadata !DIExpression()), !dbg !1112, !psr.id !1115
  call void @llvm.dbg.value(metadata i16* %2, metadata !1116, metadata !DIExpression()), !dbg !1112, !psr.id !1117
  call void @llvm.dbg.declare(metadata [18 x i16]* %4, metadata !1118, metadata !DIExpression()), !dbg !1119, !psr.id !1120
  %5 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !1121, !psr.id !1122
  %6 = getelementptr inbounds [18 x i16], [18 x i16]* @C255_P, i64 0, i64 0, !psr.id !1123
  call void @br_i15_montymul(i16* %5, i16* %1, i16* %2, i16* %6, i16 zeroext 18971), !dbg !1124, !psr.id !1125
  %7 = bitcast i16* %0 to i8*, !dbg !1126, !psr.id !1127
  %8 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !1126, !psr.id !1128
  %9 = bitcast i16* %8 to i8*, !dbg !1126, !psr.id !1129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %7, i8* align 16 %9, i64 36, i1 false), !dbg !1126, !psr.id !1130
  ret void, !dbg !1131, !psr.id !1132
}

; Function Attrs: noinline nounwind uwtable
define internal void @c255_sub(i16* %0, i16* %1, i16* %2) #0 !dbg !1133 {
  %4 = alloca [18 x i16], align 16, !psr.id !1134
  call void @llvm.dbg.value(metadata i16* %0, metadata !1135, metadata !DIExpression()), !dbg !1136, !psr.id !1137
  call void @llvm.dbg.value(metadata i16* %1, metadata !1138, metadata !DIExpression()), !dbg !1136, !psr.id !1139
  call void @llvm.dbg.value(metadata i16* %2, metadata !1140, metadata !DIExpression()), !dbg !1136, !psr.id !1141
  call void @llvm.dbg.declare(metadata [18 x i16]* %4, metadata !1142, metadata !DIExpression()), !dbg !1143, !psr.id !1144
  %5 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !1145, !psr.id !1146
  %6 = bitcast i16* %5 to i8*, !dbg !1145, !psr.id !1147
  %7 = bitcast i16* %1 to i8*, !dbg !1145, !psr.id !1148
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 2 %7, i64 36, i1 false), !dbg !1145, !psr.id !1149
  %8 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !1150, !psr.id !1151
  %9 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !1152, !psr.id !1153
  %10 = call i32 @br_i15_sub(i16* %9, i16* %2, i32 1), !dbg !1154, !psr.id !1155
  %11 = getelementptr inbounds [18 x i16], [18 x i16]* @C255_P, i64 0, i64 0, !psr.id !1156
  %12 = call i32 @br_i15_add(i16* %8, i16* %11, i32 %10), !dbg !1157, !psr.id !1158
  %13 = bitcast i16* %0 to i8*, !dbg !1159, !psr.id !1160
  %14 = getelementptr inbounds [18 x i16], [18 x i16]* %4, i64 0, i64 0, !dbg !1159, !psr.id !1161
  %15 = bitcast i16* %14 to i8*, !dbg !1159, !psr.id !1162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %13, i8* align 16 %15, i64 36, i1 false), !dbg !1159, !psr.id !1163
  ret void, !dbg !1164, !psr.id !1165
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_add(i16* %0, i16* %1, i32 %2) #0 !dbg !1166 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1169, metadata !DIExpression()), !dbg !1170, !psr.id !1171
  call void @llvm.dbg.value(metadata i16* %1, metadata !1172, metadata !DIExpression()), !dbg !1170, !psr.id !1173
  call void @llvm.dbg.value(metadata i32 %2, metadata !1174, metadata !DIExpression()), !dbg !1170, !psr.id !1175
  call void @llvm.dbg.value(metadata i32 0, metadata !1176, metadata !DIExpression()), !dbg !1170, !psr.id !1177
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1178, !psr.id !1179
  %5 = load i16, i16* %4, align 2, !dbg !1178, !psr.id !1180
  %6 = zext i16 %5 to i32, !dbg !1178, !psr.id !1181
  %7 = add nsw i32 %6, 31, !dbg !1182, !psr.id !1183
  %8 = ashr i32 %7, 4, !dbg !1184, !psr.id !1185
  %9 = sext i32 %8 to i64, !dbg !1186, !psr.id !1187
  call void @llvm.dbg.value(metadata i64 %9, metadata !1188, metadata !DIExpression()), !dbg !1170, !psr.id !1189
  call void @llvm.dbg.value(metadata i64 1, metadata !1190, metadata !DIExpression()), !dbg !1170, !psr.id !1191
  br label %10, !dbg !1192, !psr.id !1194

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !1170, !psr.id !1195
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !1196, !psr.id !1197
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1190, metadata !DIExpression()), !dbg !1170, !psr.id !1198
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1176, metadata !DIExpression()), !dbg !1170, !psr.id !1199
  %11 = icmp ult i64 %.0, %9, !dbg !1200, !psr.id !1202
  br i1 %11, label %12, label %28, !dbg !1203, !psr.id !1204

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !1205, !psr.id !1207
  %14 = load i16, i16* %13, align 2, !dbg !1205, !psr.id !1208
  %15 = zext i16 %14 to i32, !dbg !1205, !psr.id !1209
  call void @llvm.dbg.value(metadata i32 %15, metadata !1210, metadata !DIExpression()), !dbg !1211, !psr.id !1212
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !1213, !psr.id !1214
  %17 = load i16, i16* %16, align 2, !dbg !1213, !psr.id !1215
  %18 = zext i16 %17 to i32, !dbg !1213, !psr.id !1216
  call void @llvm.dbg.value(metadata i32 %18, metadata !1217, metadata !DIExpression()), !dbg !1211, !psr.id !1218
  %19 = add i32 %15, %18, !dbg !1219, !psr.id !1220
  %20 = add i32 %19, %.01, !dbg !1221, !psr.id !1222
  call void @llvm.dbg.value(metadata i32 %20, metadata !1223, metadata !DIExpression()), !dbg !1211, !psr.id !1224
  %21 = lshr i32 %20, 15, !dbg !1225, !psr.id !1226
  call void @llvm.dbg.value(metadata i32 %21, metadata !1176, metadata !DIExpression()), !dbg !1170, !psr.id !1227
  %22 = and i32 %20, 32767, !dbg !1228, !psr.id !1229
  %23 = call i32 @MUX(i32 %2, i32 %22, i32 %15), !dbg !1230, !psr.id !1231
  %24 = trunc i32 %23 to i16, !dbg !1230, !psr.id !1232
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !1233, !psr.id !1234
  store i16 %24, i16* %25, align 2, !dbg !1235, !psr.id !1236
  br label %26, !dbg !1237, !psr.id !1238

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !1239, !psr.id !1240
  call void @llvm.dbg.value(metadata i64 %27, metadata !1190, metadata !DIExpression()), !dbg !1170, !psr.id !1241
  br label %10, !dbg !1242, !llvm.loop !1243, !psr.id !1245

28:                                               ; preds = %10
  ret i32 %.01, !dbg !1246, !psr.id !1247
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !1248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1251, metadata !DIExpression()), !dbg !1252, !psr.id !1253
  call void @llvm.dbg.value(metadata i32 %1, metadata !1254, metadata !DIExpression()), !dbg !1252, !psr.id !1255
  call void @llvm.dbg.value(metadata i32 %2, metadata !1256, metadata !DIExpression()), !dbg !1252, !psr.id !1257
  %4 = sub i32 0, %0, !dbg !1258, !psr.id !1259
  %5 = xor i32 %1, %2, !dbg !1260, !psr.id !1261
  %6 = and i32 %4, %5, !dbg !1262, !psr.id !1263
  %7 = xor i32 %2, %6, !dbg !1264, !psr.id !1265
  ret i32 %7, !dbg !1266, !psr.id !1267
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_decode_mod(i16* %0, i8* %1, i64 %2, i16* %3) #0 !dbg !1268 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1273, metadata !DIExpression()), !dbg !1274, !psr.id !1275
  call void @llvm.dbg.value(metadata i8* %1, metadata !1276, metadata !DIExpression()), !dbg !1274, !psr.id !1277
  call void @llvm.dbg.value(metadata i64 %2, metadata !1278, metadata !DIExpression()), !dbg !1274, !psr.id !1279
  call void @llvm.dbg.value(metadata i16* %3, metadata !1280, metadata !DIExpression()), !dbg !1274, !psr.id !1281
  call void @llvm.dbg.value(metadata i8* %1, metadata !1282, metadata !DIExpression()), !dbg !1274, !psr.id !1283
  %5 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1284, !psr.id !1285
  %6 = load i16, i16* %5, align 2, !dbg !1284, !psr.id !1286
  %7 = zext i16 %6 to i32, !dbg !1284, !psr.id !1287
  %8 = add nsw i32 %7, 15, !dbg !1288, !psr.id !1289
  %9 = ashr i32 %8, 4, !dbg !1290, !psr.id !1291
  %10 = sext i32 %9 to i64, !dbg !1292, !psr.id !1293
  call void @llvm.dbg.value(metadata i64 %10, metadata !1294, metadata !DIExpression()), !dbg !1274, !psr.id !1295
  %11 = shl i64 %10, 1, !dbg !1296, !psr.id !1297
  call void @llvm.dbg.value(metadata i64 %11, metadata !1298, metadata !DIExpression()), !dbg !1274, !psr.id !1299
  %12 = icmp ult i64 %11, %2, !dbg !1300, !psr.id !1302
  br i1 %12, label %13, label %14, !dbg !1303, !psr.id !1304

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 %2, metadata !1298, metadata !DIExpression()), !dbg !1274, !psr.id !1305
  br label %14, !dbg !1306, !psr.id !1308

14:                                               ; preds = %13, %4
  %.09 = phi i64 [ %2, %13 ], [ %11, %4 ], !dbg !1274, !psr.id !1309
  call void @llvm.dbg.value(metadata i64 %.09, metadata !1298, metadata !DIExpression()), !dbg !1274, !psr.id !1310
  %15 = add i64 %.09, 4, !dbg !1311, !psr.id !1312
  call void @llvm.dbg.value(metadata i64 %15, metadata !1298, metadata !DIExpression()), !dbg !1274, !psr.id !1313
  call void @llvm.dbg.value(metadata i32 0, metadata !1314, metadata !DIExpression()), !dbg !1274, !psr.id !1315
  call void @llvm.dbg.value(metadata i32 0, metadata !1316, metadata !DIExpression()), !dbg !1274, !psr.id !1317
  br label %16, !dbg !1318, !psr.id !1320

16:                                               ; preds = %70, %14
  %.010 = phi i32 [ 0, %14 ], [ %71, %70 ], !dbg !1321, !psr.id !1322
  %.07 = phi i32 [ 0, %14 ], [ %69, %70 ], !dbg !1274, !psr.id !1323
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1314, metadata !DIExpression()), !dbg !1274, !psr.id !1324
  call void @llvm.dbg.value(metadata i32 %.010, metadata !1316, metadata !DIExpression()), !dbg !1274, !psr.id !1325
  %17 = icmp slt i32 %.010, 2, !dbg !1326, !psr.id !1328
  br i1 %17, label %18, label %72, !dbg !1329, !psr.id !1330

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i64 1, metadata !1331, metadata !DIExpression()), !dbg !1333, !psr.id !1334
  call void @llvm.dbg.value(metadata i32 0, metadata !1335, metadata !DIExpression()), !dbg !1333, !psr.id !1336
  call void @llvm.dbg.value(metadata i32 0, metadata !1337, metadata !DIExpression()), !dbg !1333, !psr.id !1338
  call void @llvm.dbg.value(metadata i64 0, metadata !1339, metadata !DIExpression()), !dbg !1333, !psr.id !1340
  br label %19, !dbg !1341, !psr.id !1343

19:                                               ; preds = %64, %18
  %.18 = phi i32 [ %.07, %18 ], [ %.5, %64 ], !dbg !1344, !psr.id !1345
  %.06 = phi i64 [ 0, %18 ], [ %65, %64 ], !dbg !1346, !psr.id !1347
  %.04 = phi i64 [ 1, %18 ], [ %.15, %64 ], !dbg !1333, !psr.id !1348
  %.02 = phi i32 [ 0, %18 ], [ %.13, %64 ], !dbg !1333, !psr.id !1349
  %.01 = phi i32 [ 0, %18 ], [ %.1, %64 ], !dbg !1333, !psr.id !1350
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1337, metadata !DIExpression()), !dbg !1333, !psr.id !1351
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1335, metadata !DIExpression()), !dbg !1333, !psr.id !1352
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1331, metadata !DIExpression()), !dbg !1333, !psr.id !1353
  call void @llvm.dbg.value(metadata i64 %.06, metadata !1339, metadata !DIExpression()), !dbg !1333, !psr.id !1354
  call void @llvm.dbg.value(metadata i32 %.18, metadata !1314, metadata !DIExpression()), !dbg !1274, !psr.id !1355
  %20 = icmp ult i64 %.06, %15, !dbg !1356, !psr.id !1358
  br i1 %20, label %21, label %66, !dbg !1359, !psr.id !1360

21:                                               ; preds = %19
  %22 = icmp ult i64 %.06, %2, !dbg !1361, !psr.id !1364
  br i1 %22, label %23, label %29, !dbg !1365, !psr.id !1366

23:                                               ; preds = %21
  %24 = sub i64 %2, 1, !dbg !1367, !psr.id !1369
  %25 = sub i64 %24, %.06, !dbg !1370, !psr.id !1371
  %26 = getelementptr inbounds i8, i8* %1, i64 %25, !dbg !1372, !psr.id !1373
  %27 = load i8, i8* %26, align 1, !dbg !1372, !psr.id !1374
  %28 = zext i8 %27 to i32, !dbg !1372, !psr.id !1375
  call void @llvm.dbg.value(metadata i32 %28, metadata !1376, metadata !DIExpression()), !dbg !1377, !psr.id !1378
  br label %30, !dbg !1379, !psr.id !1380

29:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 0, metadata !1376, metadata !DIExpression()), !dbg !1377, !psr.id !1381
  br label %30, !psr.id !1382

30:                                               ; preds = %29, %23
  %.0 = phi i32 [ %28, %23 ], [ 0, %29 ], !dbg !1383, !psr.id !1384
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1376, metadata !DIExpression()), !dbg !1377, !psr.id !1385
  %31 = shl i32 %.0, %.01, !dbg !1386, !psr.id !1387
  %32 = or i32 %.02, %31, !dbg !1388, !psr.id !1389
  call void @llvm.dbg.value(metadata i32 %32, metadata !1335, metadata !DIExpression()), !dbg !1333, !psr.id !1390
  %33 = add nsw i32 %.01, 8, !dbg !1391, !psr.id !1392
  call void @llvm.dbg.value(metadata i32 %33, metadata !1337, metadata !DIExpression()), !dbg !1333, !psr.id !1393
  %34 = icmp sge i32 %33, 15, !dbg !1394, !psr.id !1396
  br i1 %34, label %35, label %63, !dbg !1397, !psr.id !1398

35:                                               ; preds = %30
  %36 = and i32 %32, 32767, !dbg !1399, !psr.id !1401
  call void @llvm.dbg.value(metadata i32 %36, metadata !1402, metadata !DIExpression()), !dbg !1403, !psr.id !1404
  %37 = sub nsw i32 %33, 15, !dbg !1405, !psr.id !1406
  call void @llvm.dbg.value(metadata i32 %37, metadata !1337, metadata !DIExpression()), !dbg !1333, !psr.id !1407
  %38 = sub nsw i32 8, %37, !dbg !1408, !psr.id !1409
  %39 = lshr i32 %.0, %38, !dbg !1410, !psr.id !1411
  call void @llvm.dbg.value(metadata i32 %39, metadata !1335, metadata !DIExpression()), !dbg !1333, !psr.id !1412
  %40 = icmp ule i64 %.04, %10, !dbg !1413, !psr.id !1415
  br i1 %40, label %41, label %55, !dbg !1416, !psr.id !1417

41:                                               ; preds = %35
  %42 = icmp ne i32 %.010, 0, !dbg !1418, !psr.id !1421
  br i1 %42, label %43, label %47, !dbg !1422, !psr.id !1423

43:                                               ; preds = %41
  %44 = and i32 %.18, %36, !dbg !1424, !psr.id !1426
  %45 = trunc i32 %44 to i16, !dbg !1427, !psr.id !1428
  %46 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !1429, !psr.id !1430
  store i16 %45, i16* %46, align 2, !dbg !1431, !psr.id !1432
  br label %54, !dbg !1433, !psr.id !1434

47:                                               ; preds = %41
  %48 = getelementptr inbounds i16, i16* %3, i64 %.04, !dbg !1435, !psr.id !1437
  %49 = load i16, i16* %48, align 2, !dbg !1435, !psr.id !1438
  %50 = zext i16 %49 to i32, !dbg !1435, !psr.id !1439
  %51 = call i32 @CMP(i32 %36, i32 %50), !dbg !1440, !psr.id !1441
  call void @llvm.dbg.value(metadata i32 %51, metadata !1442, metadata !DIExpression()), !dbg !1443, !psr.id !1444
  %52 = call i32 @EQ(i32 %51, i32 0), !dbg !1445, !psr.id !1446
  %53 = call i32 @MUX.7(i32 %52, i32 %.18, i32 %51), !dbg !1447, !psr.id !1448
  call void @llvm.dbg.value(metadata i32 %53, metadata !1314, metadata !DIExpression()), !dbg !1274, !psr.id !1449
  br label %54, !psr.id !1450

54:                                               ; preds = %47, %43
  %.2 = phi i32 [ %.18, %43 ], [ %53, %47 ], !dbg !1274, !psr.id !1451
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1314, metadata !DIExpression()), !dbg !1274, !psr.id !1452
  br label %61, !dbg !1453, !psr.id !1454

55:                                               ; preds = %35
  %56 = icmp ne i32 %.010, 0, !dbg !1455, !psr.id !1458
  br i1 %56, label %60, label %57, !dbg !1459, !psr.id !1460

57:                                               ; preds = %55
  %58 = call i32 @EQ(i32 %36, i32 0), !dbg !1461, !psr.id !1463
  %59 = call i32 @MUX.7(i32 %58, i32 %.18, i32 1), !dbg !1464, !psr.id !1465
  call void @llvm.dbg.value(metadata i32 %59, metadata !1314, metadata !DIExpression()), !dbg !1274, !psr.id !1466
  br label %60, !dbg !1467, !psr.id !1468

60:                                               ; preds = %57, %55
  %.3 = phi i32 [ %.18, %55 ], [ %59, %57 ], !dbg !1274, !psr.id !1469
  call void @llvm.dbg.value(metadata i32 %.3, metadata !1314, metadata !DIExpression()), !dbg !1274, !psr.id !1470
  br label %61, !psr.id !1471

61:                                               ; preds = %60, %54
  %.4 = phi i32 [ %.2, %54 ], [ %.3, %60 ], !dbg !1344, !psr.id !1472
  call void @llvm.dbg.value(metadata i32 %.4, metadata !1314, metadata !DIExpression()), !dbg !1274, !psr.id !1473
  %62 = add i64 %.04, 1, !dbg !1474, !psr.id !1475
  call void @llvm.dbg.value(metadata i64 %62, metadata !1331, metadata !DIExpression()), !dbg !1333, !psr.id !1476
  br label %63, !dbg !1477, !psr.id !1478

63:                                               ; preds = %61, %30
  %.5 = phi i32 [ %.4, %61 ], [ %.18, %30 ], !dbg !1344, !psr.id !1479
  %.15 = phi i64 [ %62, %61 ], [ %.04, %30 ], !dbg !1333, !psr.id !1480
  %.13 = phi i32 [ %39, %61 ], [ %32, %30 ], !dbg !1377, !psr.id !1481
  %.1 = phi i32 [ %37, %61 ], [ %33, %30 ], !dbg !1377, !psr.id !1482
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1337, metadata !DIExpression()), !dbg !1333, !psr.id !1483
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1335, metadata !DIExpression()), !dbg !1333, !psr.id !1484
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1331, metadata !DIExpression()), !dbg !1333, !psr.id !1485
  call void @llvm.dbg.value(metadata i32 %.5, metadata !1314, metadata !DIExpression()), !dbg !1274, !psr.id !1486
  br label %64, !dbg !1487, !psr.id !1488

64:                                               ; preds = %63
  %65 = add i64 %.06, 1, !dbg !1489, !psr.id !1490
  call void @llvm.dbg.value(metadata i64 %65, metadata !1339, metadata !DIExpression()), !dbg !1333, !psr.id !1491
  br label %19, !dbg !1492, !llvm.loop !1493, !psr.id !1495

66:                                               ; preds = %19
  %67 = lshr i32 %.18, 1, !dbg !1496, !psr.id !1497
  call void @llvm.dbg.value(metadata i32 %67, metadata !1314, metadata !DIExpression()), !dbg !1274, !psr.id !1498
  %68 = shl i32 %67, 1, !dbg !1499, !psr.id !1500
  %69 = or i32 %67, %68, !dbg !1501, !psr.id !1502
  call void @llvm.dbg.value(metadata i32 %69, metadata !1314, metadata !DIExpression()), !dbg !1274, !psr.id !1503
  br label %70, !dbg !1504, !psr.id !1505

70:                                               ; preds = %66
  %71 = add nsw i32 %.010, 1, !dbg !1506, !psr.id !1507
  call void @llvm.dbg.value(metadata i32 %71, metadata !1316, metadata !DIExpression()), !dbg !1274, !psr.id !1508
  br label %16, !dbg !1509, !llvm.loop !1510, !psr.id !1512

72:                                               ; preds = %16
  %73 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1513, !psr.id !1514
  %74 = load i16, i16* %73, align 2, !dbg !1513, !psr.id !1515
  %75 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1516, !psr.id !1517
  store i16 %74, i16* %75, align 2, !dbg !1518, !psr.id !1519
  %76 = and i32 %.07, 1, !dbg !1520, !psr.id !1521
  ret i32 %76, !dbg !1522, !psr.id !1523
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @CMP(i32 %0, i32 %1) #0 !dbg !1524 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1527, metadata !DIExpression()), !dbg !1528, !psr.id !1529
  call void @llvm.dbg.value(metadata i32 %1, metadata !1530, metadata !DIExpression()), !dbg !1528, !psr.id !1531
  %3 = call i32 @GT(i32 %0, i32 %1), !dbg !1532, !psr.id !1533
  %4 = call i32 @GT(i32 %1, i32 %0), !dbg !1534, !psr.id !1535
  %5 = sub nsw i32 0, %4, !dbg !1536, !psr.id !1537
  %6 = or i32 %3, %5, !dbg !1538, !psr.id !1539
  ret i32 %6, !dbg !1540, !psr.id !1541
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !1542 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1545, metadata !DIExpression()), !dbg !1546, !psr.id !1547
  call void @llvm.dbg.value(metadata i32 %1, metadata !1548, metadata !DIExpression()), !dbg !1546, !psr.id !1549
  %3 = xor i32 %0, %1, !dbg !1550, !psr.id !1551
  call void @llvm.dbg.value(metadata i32 %3, metadata !1552, metadata !DIExpression()), !dbg !1546, !psr.id !1553
  %4 = sub i32 0, %3, !dbg !1554, !psr.id !1555
  %5 = or i32 %3, %4, !dbg !1556, !psr.id !1557
  %6 = lshr i32 %5, 31, !dbg !1558, !psr.id !1559
  %7 = call i32 @NOT.8(i32 %6), !dbg !1560, !psr.id !1561
  ret i32 %7, !dbg !1562, !psr.id !1563
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.7(i32 %0, i32 %1, i32 %2) #0 !dbg !1564 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1565, metadata !DIExpression()), !dbg !1566, !psr.id !1567
  call void @llvm.dbg.value(metadata i32 %1, metadata !1568, metadata !DIExpression()), !dbg !1566, !psr.id !1569
  call void @llvm.dbg.value(metadata i32 %2, metadata !1570, metadata !DIExpression()), !dbg !1566, !psr.id !1571
  %4 = sub i32 0, %0, !dbg !1572, !psr.id !1573
  %5 = xor i32 %1, %2, !dbg !1574, !psr.id !1575
  %6 = and i32 %4, %5, !dbg !1576, !psr.id !1577
  %7 = xor i32 %2, %6, !dbg !1578, !psr.id !1579
  ret i32 %7, !dbg !1580, !psr.id !1581
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.8(i32 %0) #0 !dbg !1582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1583, metadata !DIExpression()), !dbg !1584, !psr.id !1585
  %2 = xor i32 %0, 1, !dbg !1586, !psr.id !1587
  ret i32 %2, !dbg !1588, !psr.id !1589
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !1590 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1591, metadata !DIExpression()), !dbg !1592, !psr.id !1593
  call void @llvm.dbg.value(metadata i32 %1, metadata !1594, metadata !DIExpression()), !dbg !1592, !psr.id !1595
  %3 = sub i32 %1, %0, !dbg !1596, !psr.id !1597
  call void @llvm.dbg.value(metadata i32 %3, metadata !1598, metadata !DIExpression()), !dbg !1592, !psr.id !1599
  %4 = xor i32 %0, %1, !dbg !1600, !psr.id !1601
  %5 = xor i32 %0, %3, !dbg !1602, !psr.id !1603
  %6 = and i32 %4, %5, !dbg !1604, !psr.id !1605
  %7 = xor i32 %3, %6, !dbg !1606, !psr.id !1607
  %8 = lshr i32 %7, 31, !dbg !1608, !psr.id !1609
  ret i32 %8, !dbg !1610, !psr.id !1611
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_encode(i8* %0, i64 %1, i16* %2) #0 !dbg !1612 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1616, metadata !DIExpression()), !dbg !1617, !psr.id !1618
  call void @llvm.dbg.value(metadata i64 %1, metadata !1619, metadata !DIExpression()), !dbg !1617, !psr.id !1620
  call void @llvm.dbg.value(metadata i16* %2, metadata !1621, metadata !DIExpression()), !dbg !1617, !psr.id !1622
  %4 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !1623, !psr.id !1624
  %5 = load i16, i16* %4, align 2, !dbg !1623, !psr.id !1625
  %6 = zext i16 %5 to i32, !dbg !1623, !psr.id !1626
  %7 = add nsw i32 %6, 15, !dbg !1627, !psr.id !1628
  %8 = ashr i32 %7, 4, !dbg !1629, !psr.id !1630
  %9 = sext i32 %8 to i64, !dbg !1631, !psr.id !1632
  call void @llvm.dbg.value(metadata i64 %9, metadata !1633, metadata !DIExpression()), !dbg !1617, !psr.id !1634
  %10 = icmp eq i64 %9, 0, !dbg !1635, !psr.id !1637
  br i1 %10, label %11, label %12, !dbg !1638, !psr.id !1639

11:                                               ; preds = %3
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !1640, !psr.id !1642
  br label %34, !dbg !1643, !psr.id !1644

12:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i64 1, metadata !1645, metadata !DIExpression()), !dbg !1617, !psr.id !1646
  call void @llvm.dbg.value(metadata i32 0, metadata !1647, metadata !DIExpression()), !dbg !1617, !psr.id !1648
  call void @llvm.dbg.value(metadata i32 0, metadata !1649, metadata !DIExpression()), !dbg !1617, !psr.id !1650
  call void @llvm.dbg.value(metadata i8* %0, metadata !1651, metadata !DIExpression()), !dbg !1617, !psr.id !1652
  br label %13, !dbg !1653, !psr.id !1654

13:                                               ; preds = %29, %12
  %.04 = phi i64 [ 1, %12 ], [ %.26, %29 ], !dbg !1617, !psr.id !1655
  %.02 = phi i32 [ 0, %12 ], [ %32, %29 ], !dbg !1617, !psr.id !1656
  %.01 = phi i64 [ %1, %12 ], [ %14, %29 ], !psr.id !1657
  %.0 = phi i32 [ 0, %12 ], [ %33, %29 ], !dbg !1617, !psr.id !1658
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1649, metadata !DIExpression()), !dbg !1617, !psr.id !1659
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1619, metadata !DIExpression()), !dbg !1617, !psr.id !1660
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1647, metadata !DIExpression()), !dbg !1617, !psr.id !1661
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1645, metadata !DIExpression()), !dbg !1617, !psr.id !1662
  %14 = add i64 %.01, -1, !dbg !1663, !psr.id !1664
  call void @llvm.dbg.value(metadata i64 %14, metadata !1619, metadata !DIExpression()), !dbg !1617, !psr.id !1665
  %15 = icmp ugt i64 %.01, 0, !dbg !1666, !psr.id !1667
  br i1 %15, label %16, label %34, !dbg !1653, !psr.id !1668

16:                                               ; preds = %13
  %17 = icmp slt i32 %.0, 8, !dbg !1669, !psr.id !1672
  br i1 %17, label %18, label %29, !dbg !1673, !psr.id !1674

18:                                               ; preds = %16
  %19 = icmp ule i64 %.04, %9, !dbg !1675, !psr.id !1678
  br i1 %19, label %20, label %27, !dbg !1679, !psr.id !1680

20:                                               ; preds = %18
  %21 = add i64 %.04, 1, !dbg !1681, !psr.id !1683
  call void @llvm.dbg.value(metadata i64 %21, metadata !1645, metadata !DIExpression()), !dbg !1617, !psr.id !1684
  %22 = getelementptr inbounds i16, i16* %2, i64 %.04, !dbg !1685, !psr.id !1686
  %23 = load i16, i16* %22, align 2, !dbg !1685, !psr.id !1687
  %24 = zext i16 %23 to i32, !dbg !1688, !psr.id !1689
  %25 = shl i32 %24, %.0, !dbg !1690, !psr.id !1691
  %26 = add i32 %.02, %25, !dbg !1692, !psr.id !1693
  call void @llvm.dbg.value(metadata i32 %26, metadata !1647, metadata !DIExpression()), !dbg !1617, !psr.id !1694
  br label %27, !dbg !1695, !psr.id !1696

27:                                               ; preds = %20, %18
  %.15 = phi i64 [ %21, %20 ], [ %.04, %18 ], !dbg !1617, !psr.id !1697
  %.13 = phi i32 [ %26, %20 ], [ %.02, %18 ], !dbg !1617, !psr.id !1698
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1647, metadata !DIExpression()), !dbg !1617, !psr.id !1699
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1645, metadata !DIExpression()), !dbg !1617, !psr.id !1700
  %28 = add nsw i32 %.0, 15, !dbg !1701, !psr.id !1702
  call void @llvm.dbg.value(metadata i32 %28, metadata !1649, metadata !DIExpression()), !dbg !1617, !psr.id !1703
  br label %29, !dbg !1704, !psr.id !1705

29:                                               ; preds = %27, %16
  %.26 = phi i64 [ %.15, %27 ], [ %.04, %16 ], !dbg !1617, !psr.id !1706
  %.2 = phi i32 [ %.13, %27 ], [ %.02, %16 ], !dbg !1617, !psr.id !1707
  %.1 = phi i32 [ %28, %27 ], [ %.0, %16 ], !dbg !1617, !psr.id !1708
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1649, metadata !DIExpression()), !dbg !1617, !psr.id !1709
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1647, metadata !DIExpression()), !dbg !1617, !psr.id !1710
  call void @llvm.dbg.value(metadata i64 %.26, metadata !1645, metadata !DIExpression()), !dbg !1617, !psr.id !1711
  %30 = trunc i32 %.2 to i8, !dbg !1712, !psr.id !1713
  %31 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !1714, !psr.id !1715
  store i8 %30, i8* %31, align 1, !dbg !1716, !psr.id !1717
  %32 = lshr i32 %.2, 8, !dbg !1718, !psr.id !1719
  call void @llvm.dbg.value(metadata i32 %32, metadata !1647, metadata !DIExpression()), !dbg !1617, !psr.id !1720
  %33 = sub nsw i32 %.1, 8, !dbg !1721, !psr.id !1722
  call void @llvm.dbg.value(metadata i32 %33, metadata !1649, metadata !DIExpression()), !dbg !1617, !psr.id !1723
  br label %13, !dbg !1653, !llvm.loop !1724, !psr.id !1726

34:                                               ; preds = %13, %11
  ret void, !dbg !1727, !psr.id !1728
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_montymul(i16* %0, i16* %1, i16* %2, i16* %3, i16 zeroext %4) #0 !dbg !1729 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1732, metadata !DIExpression()), !dbg !1733, !psr.id !1734
  call void @llvm.dbg.value(metadata i16* %1, metadata !1735, metadata !DIExpression()), !dbg !1733, !psr.id !1736
  call void @llvm.dbg.value(metadata i16* %2, metadata !1737, metadata !DIExpression()), !dbg !1733, !psr.id !1738
  call void @llvm.dbg.value(metadata i16* %3, metadata !1739, metadata !DIExpression()), !dbg !1733, !psr.id !1740
  call void @llvm.dbg.value(metadata i16 %4, metadata !1741, metadata !DIExpression()), !dbg !1733, !psr.id !1742
  %6 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1743, !psr.id !1744
  %7 = load i16, i16* %6, align 2, !dbg !1743, !psr.id !1745
  %8 = zext i16 %7 to i32, !dbg !1743, !psr.id !1746
  %9 = add nsw i32 %8, 15, !dbg !1747, !psr.id !1748
  %10 = ashr i32 %9, 4, !dbg !1749, !psr.id !1750
  %11 = sext i32 %10 to i64, !dbg !1751, !psr.id !1752
  call void @llvm.dbg.value(metadata i64 %11, metadata !1753, metadata !DIExpression()), !dbg !1733, !psr.id !1754
  %12 = and i64 %11, -4, !dbg !1755, !psr.id !1756
  call void @llvm.dbg.value(metadata i64 %12, metadata !1757, metadata !DIExpression()), !dbg !1733, !psr.id !1758
  %13 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1759, !psr.id !1760
  %14 = load i16, i16* %13, align 2, !dbg !1759, !psr.id !1761
  call void @br_i15_zero.13(i16* %0, i16 zeroext %14), !dbg !1762, !psr.id !1763
  call void @llvm.dbg.value(metadata i32 0, metadata !1764, metadata !DIExpression()), !dbg !1733, !psr.id !1765
  call void @llvm.dbg.value(metadata i64 0, metadata !1766, metadata !DIExpression()), !dbg !1733, !psr.id !1767
  br label %15, !dbg !1768, !psr.id !1770

15:                                               ; preds = %165, %5
  %.04 = phi i64 [ 0, %5 ], [ %166, %165 ], !dbg !1771, !psr.id !1772
  %.01 = phi i32 [ 0, %5 ], [ %164, %165 ], !dbg !1733, !psr.id !1773
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1764, metadata !DIExpression()), !dbg !1733, !psr.id !1774
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1766, metadata !DIExpression()), !dbg !1733, !psr.id !1775
  %16 = icmp ult i64 %.04, %11, !dbg !1776, !psr.id !1778
  br i1 %16, label %17, label %167, !dbg !1779, !psr.id !1780

17:                                               ; preds = %15
  %18 = add i64 %.04, 1, !dbg !1781, !psr.id !1783
  %19 = getelementptr inbounds i16, i16* %1, i64 %18, !dbg !1784, !psr.id !1785
  %20 = load i16, i16* %19, align 2, !dbg !1784, !psr.id !1786
  %21 = zext i16 %20 to i32, !dbg !1784, !psr.id !1787
  call void @llvm.dbg.value(metadata i32 %21, metadata !1788, metadata !DIExpression()), !dbg !1789, !psr.id !1790
  %22 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1791, !psr.id !1792
  %23 = load i16, i16* %22, align 2, !dbg !1791, !psr.id !1793
  %24 = zext i16 %23 to i32, !dbg !1791, !psr.id !1794
  %25 = add i64 %.04, 1, !dbg !1791, !psr.id !1795
  %26 = getelementptr inbounds i16, i16* %1, i64 %25, !dbg !1791, !psr.id !1796
  %27 = load i16, i16* %26, align 2, !dbg !1791, !psr.id !1797
  %28 = zext i16 %27 to i32, !dbg !1791, !psr.id !1798
  %29 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !1791, !psr.id !1799
  %30 = load i16, i16* %29, align 2, !dbg !1791, !psr.id !1800
  %31 = zext i16 %30 to i32, !dbg !1791, !psr.id !1801
  %32 = mul i32 %28, %31, !dbg !1791, !psr.id !1802
  %33 = add i32 %24, %32, !dbg !1791, !psr.id !1803
  %34 = and i32 %33, 32767, !dbg !1791, !psr.id !1804
  %35 = zext i16 %4 to i32, !dbg !1791, !psr.id !1805
  %36 = mul i32 %34, %35, !dbg !1791, !psr.id !1806
  %37 = and i32 %36, 32767, !dbg !1807, !psr.id !1808
  call void @llvm.dbg.value(metadata i32 %37, metadata !1809, metadata !DIExpression()), !dbg !1789, !psr.id !1810
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()), !dbg !1789, !psr.id !1812
  call void @llvm.dbg.value(metadata i64 0, metadata !1813, metadata !DIExpression()), !dbg !1733, !psr.id !1814
  br label %38, !dbg !1815, !psr.id !1817

38:                                               ; preds = %129, %17
  %.02 = phi i64 [ 0, %17 ], [ %130, %129 ], !dbg !1818, !psr.id !1819
  %.0 = phi i32 [ 0, %17 ], [ %124, %129 ], !dbg !1789, !psr.id !1820
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1811, metadata !DIExpression()), !dbg !1789, !psr.id !1821
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1813, metadata !DIExpression()), !dbg !1733, !psr.id !1822
  %39 = icmp ult i64 %.02, %12, !dbg !1823, !psr.id !1825
  br i1 %39, label %40, label %131, !dbg !1826, !psr.id !1827

40:                                               ; preds = %38
  %41 = add i64 %.02, 1, !dbg !1828, !psr.id !1830
  %42 = getelementptr inbounds i16, i16* %0, i64 %41, !dbg !1831, !psr.id !1832
  %43 = load i16, i16* %42, align 2, !dbg !1831, !psr.id !1833
  %44 = zext i16 %43 to i32, !dbg !1831, !psr.id !1834
  %45 = add i64 %.02, 1, !dbg !1835, !psr.id !1836
  %46 = getelementptr inbounds i16, i16* %2, i64 %45, !dbg !1835, !psr.id !1837
  %47 = load i16, i16* %46, align 2, !dbg !1835, !psr.id !1838
  %48 = zext i16 %47 to i32, !dbg !1835, !psr.id !1839
  %49 = mul i32 %21, %48, !dbg !1835, !psr.id !1840
  %50 = add i32 %44, %49, !dbg !1841, !psr.id !1842
  %51 = add i64 %.02, 1, !dbg !1843, !psr.id !1844
  %52 = getelementptr inbounds i16, i16* %3, i64 %51, !dbg !1843, !psr.id !1845
  %53 = load i16, i16* %52, align 2, !dbg !1843, !psr.id !1846
  %54 = zext i16 %53 to i32, !dbg !1843, !psr.id !1847
  %55 = mul i32 %37, %54, !dbg !1843, !psr.id !1848
  %56 = add i32 %50, %55, !dbg !1849, !psr.id !1850
  %57 = add i32 %56, %.0, !dbg !1851, !psr.id !1852
  call void @llvm.dbg.value(metadata i32 %57, metadata !1853, metadata !DIExpression()), !dbg !1854, !psr.id !1855
  %58 = lshr i32 %57, 15, !dbg !1856, !psr.id !1857
  call void @llvm.dbg.value(metadata i32 %58, metadata !1811, metadata !DIExpression()), !dbg !1789, !psr.id !1858
  %59 = and i32 %57, 32767, !dbg !1859, !psr.id !1860
  %60 = trunc i32 %59 to i16, !dbg !1861, !psr.id !1862
  %61 = add i64 %.02, 0, !dbg !1863, !psr.id !1864
  %62 = getelementptr inbounds i16, i16* %0, i64 %61, !dbg !1865, !psr.id !1866
  store i16 %60, i16* %62, align 2, !dbg !1867, !psr.id !1868
  %63 = add i64 %.02, 2, !dbg !1869, !psr.id !1870
  %64 = getelementptr inbounds i16, i16* %0, i64 %63, !dbg !1871, !psr.id !1872
  %65 = load i16, i16* %64, align 2, !dbg !1871, !psr.id !1873
  %66 = zext i16 %65 to i32, !dbg !1871, !psr.id !1874
  %67 = add i64 %.02, 2, !dbg !1875, !psr.id !1876
  %68 = getelementptr inbounds i16, i16* %2, i64 %67, !dbg !1875, !psr.id !1877
  %69 = load i16, i16* %68, align 2, !dbg !1875, !psr.id !1878
  %70 = zext i16 %69 to i32, !dbg !1875, !psr.id !1879
  %71 = mul i32 %21, %70, !dbg !1875, !psr.id !1880
  %72 = add i32 %66, %71, !dbg !1881, !psr.id !1882
  %73 = add i64 %.02, 2, !dbg !1883, !psr.id !1884
  %74 = getelementptr inbounds i16, i16* %3, i64 %73, !dbg !1883, !psr.id !1885
  %75 = load i16, i16* %74, align 2, !dbg !1883, !psr.id !1886
  %76 = zext i16 %75 to i32, !dbg !1883, !psr.id !1887
  %77 = mul i32 %37, %76, !dbg !1883, !psr.id !1888
  %78 = add i32 %72, %77, !dbg !1889, !psr.id !1890
  %79 = add i32 %78, %58, !dbg !1891, !psr.id !1892
  call void @llvm.dbg.value(metadata i32 %79, metadata !1853, metadata !DIExpression()), !dbg !1854, !psr.id !1893
  %80 = lshr i32 %79, 15, !dbg !1894, !psr.id !1895
  call void @llvm.dbg.value(metadata i32 %80, metadata !1811, metadata !DIExpression()), !dbg !1789, !psr.id !1896
  %81 = and i32 %79, 32767, !dbg !1897, !psr.id !1898
  %82 = trunc i32 %81 to i16, !dbg !1899, !psr.id !1900
  %83 = add i64 %.02, 1, !dbg !1901, !psr.id !1902
  %84 = getelementptr inbounds i16, i16* %0, i64 %83, !dbg !1903, !psr.id !1904
  store i16 %82, i16* %84, align 2, !dbg !1905, !psr.id !1906
  %85 = add i64 %.02, 3, !dbg !1907, !psr.id !1908
  %86 = getelementptr inbounds i16, i16* %0, i64 %85, !dbg !1909, !psr.id !1910
  %87 = load i16, i16* %86, align 2, !dbg !1909, !psr.id !1911
  %88 = zext i16 %87 to i32, !dbg !1909, !psr.id !1912
  %89 = add i64 %.02, 3, !dbg !1913, !psr.id !1914
  %90 = getelementptr inbounds i16, i16* %2, i64 %89, !dbg !1913, !psr.id !1915
  %91 = load i16, i16* %90, align 2, !dbg !1913, !psr.id !1916
  %92 = zext i16 %91 to i32, !dbg !1913, !psr.id !1917
  %93 = mul i32 %21, %92, !dbg !1913, !psr.id !1918
  %94 = add i32 %88, %93, !dbg !1919, !psr.id !1920
  %95 = add i64 %.02, 3, !dbg !1921, !psr.id !1922
  %96 = getelementptr inbounds i16, i16* %3, i64 %95, !dbg !1921, !psr.id !1923
  %97 = load i16, i16* %96, align 2, !dbg !1921, !psr.id !1924
  %98 = zext i16 %97 to i32, !dbg !1921, !psr.id !1925
  %99 = mul i32 %37, %98, !dbg !1921, !psr.id !1926
  %100 = add i32 %94, %99, !dbg !1927, !psr.id !1928
  %101 = add i32 %100, %80, !dbg !1929, !psr.id !1930
  call void @llvm.dbg.value(metadata i32 %101, metadata !1853, metadata !DIExpression()), !dbg !1854, !psr.id !1931
  %102 = lshr i32 %101, 15, !dbg !1932, !psr.id !1933
  call void @llvm.dbg.value(metadata i32 %102, metadata !1811, metadata !DIExpression()), !dbg !1789, !psr.id !1934
  %103 = and i32 %101, 32767, !dbg !1935, !psr.id !1936
  %104 = trunc i32 %103 to i16, !dbg !1937, !psr.id !1938
  %105 = add i64 %.02, 2, !dbg !1939, !psr.id !1940
  %106 = getelementptr inbounds i16, i16* %0, i64 %105, !dbg !1941, !psr.id !1942
  store i16 %104, i16* %106, align 2, !dbg !1943, !psr.id !1944
  %107 = add i64 %.02, 4, !dbg !1945, !psr.id !1946
  %108 = getelementptr inbounds i16, i16* %0, i64 %107, !dbg !1947, !psr.id !1948
  %109 = load i16, i16* %108, align 2, !dbg !1947, !psr.id !1949
  %110 = zext i16 %109 to i32, !dbg !1947, !psr.id !1950
  %111 = add i64 %.02, 4, !dbg !1951, !psr.id !1952
  %112 = getelementptr inbounds i16, i16* %2, i64 %111, !dbg !1951, !psr.id !1953
  %113 = load i16, i16* %112, align 2, !dbg !1951, !psr.id !1954
  %114 = zext i16 %113 to i32, !dbg !1951, !psr.id !1955
  %115 = mul i32 %21, %114, !dbg !1951, !psr.id !1956
  %116 = add i32 %110, %115, !dbg !1957, !psr.id !1958
  %117 = add i64 %.02, 4, !dbg !1959, !psr.id !1960
  %118 = getelementptr inbounds i16, i16* %3, i64 %117, !dbg !1959, !psr.id !1961
  %119 = load i16, i16* %118, align 2, !dbg !1959, !psr.id !1962
  %120 = zext i16 %119 to i32, !dbg !1959, !psr.id !1963
  %121 = mul i32 %37, %120, !dbg !1959, !psr.id !1964
  %122 = add i32 %116, %121, !dbg !1965, !psr.id !1966
  %123 = add i32 %122, %102, !dbg !1967, !psr.id !1968
  call void @llvm.dbg.value(metadata i32 %123, metadata !1853, metadata !DIExpression()), !dbg !1854, !psr.id !1969
  %124 = lshr i32 %123, 15, !dbg !1970, !psr.id !1971
  call void @llvm.dbg.value(metadata i32 %124, metadata !1811, metadata !DIExpression()), !dbg !1789, !psr.id !1972
  %125 = and i32 %123, 32767, !dbg !1973, !psr.id !1974
  %126 = trunc i32 %125 to i16, !dbg !1975, !psr.id !1976
  %127 = add i64 %.02, 3, !dbg !1977, !psr.id !1978
  %128 = getelementptr inbounds i16, i16* %0, i64 %127, !dbg !1979, !psr.id !1980
  store i16 %126, i16* %128, align 2, !dbg !1981, !psr.id !1982
  br label %129, !dbg !1983, !psr.id !1984

129:                                              ; preds = %40
  %130 = add i64 %.02, 4, !dbg !1985, !psr.id !1986
  call void @llvm.dbg.value(metadata i64 %130, metadata !1813, metadata !DIExpression()), !dbg !1733, !psr.id !1987
  br label %38, !dbg !1988, !llvm.loop !1989, !psr.id !1991

131:                                              ; preds = %38
  br label %132, !dbg !1992, !psr.id !1993

132:                                              ; preds = %157, %131
  %.13 = phi i64 [ %.02, %131 ], [ %158, %157 ], !dbg !1789, !psr.id !1994
  %.1 = phi i32 [ %.0, %131 ], [ %152, %157 ], !dbg !1789, !psr.id !1995
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1811, metadata !DIExpression()), !dbg !1789, !psr.id !1996
  call void @llvm.dbg.value(metadata i64 %.13, metadata !1813, metadata !DIExpression()), !dbg !1733, !psr.id !1997
  %133 = icmp ult i64 %.13, %11, !dbg !1998, !psr.id !2001
  br i1 %133, label %134, label %159, !dbg !2002, !psr.id !2003

134:                                              ; preds = %132
  %135 = add i64 %.13, 1, !dbg !2004, !psr.id !2006
  %136 = getelementptr inbounds i16, i16* %0, i64 %135, !dbg !2007, !psr.id !2008
  %137 = load i16, i16* %136, align 2, !dbg !2007, !psr.id !2009
  %138 = zext i16 %137 to i32, !dbg !2007, !psr.id !2010
  %139 = add i64 %.13, 1, !dbg !2011, !psr.id !2012
  %140 = getelementptr inbounds i16, i16* %2, i64 %139, !dbg !2011, !psr.id !2013
  %141 = load i16, i16* %140, align 2, !dbg !2011, !psr.id !2014
  %142 = zext i16 %141 to i32, !dbg !2011, !psr.id !2015
  %143 = mul i32 %21, %142, !dbg !2011, !psr.id !2016
  %144 = add i32 %138, %143, !dbg !2017, !psr.id !2018
  %145 = add i64 %.13, 1, !dbg !2019, !psr.id !2020
  %146 = getelementptr inbounds i16, i16* %3, i64 %145, !dbg !2019, !psr.id !2021
  %147 = load i16, i16* %146, align 2, !dbg !2019, !psr.id !2022
  %148 = zext i16 %147 to i32, !dbg !2019, !psr.id !2023
  %149 = mul i32 %37, %148, !dbg !2019, !psr.id !2024
  %150 = add i32 %144, %149, !dbg !2025, !psr.id !2026
  %151 = add i32 %150, %.1, !dbg !2027, !psr.id !2028
  call void @llvm.dbg.value(metadata i32 %151, metadata !2029, metadata !DIExpression()), !dbg !2030, !psr.id !2031
  %152 = lshr i32 %151, 15, !dbg !2032, !psr.id !2033
  call void @llvm.dbg.value(metadata i32 %152, metadata !1811, metadata !DIExpression()), !dbg !1789, !psr.id !2034
  %153 = and i32 %151, 32767, !dbg !2035, !psr.id !2036
  %154 = trunc i32 %153 to i16, !dbg !2037, !psr.id !2038
  %155 = add i64 %.13, 0, !dbg !2039, !psr.id !2040
  %156 = getelementptr inbounds i16, i16* %0, i64 %155, !dbg !2041, !psr.id !2042
  store i16 %154, i16* %156, align 2, !dbg !2043, !psr.id !2044
  br label %157, !dbg !2045, !psr.id !2046

157:                                              ; preds = %134
  %158 = add i64 %.13, 1, !dbg !2047, !psr.id !2048
  call void @llvm.dbg.value(metadata i64 %158, metadata !1813, metadata !DIExpression()), !dbg !1733, !psr.id !2049
  br label %132, !dbg !2050, !llvm.loop !2051, !psr.id !2053

159:                                              ; preds = %132
  %160 = add i32 %.01, %.1, !dbg !2054, !psr.id !2055
  call void @llvm.dbg.value(metadata i32 %160, metadata !2056, metadata !DIExpression()), !dbg !1789, !psr.id !2057
  %161 = and i32 %160, 32767, !dbg !2058, !psr.id !2059
  %162 = trunc i32 %161 to i16, !dbg !2060, !psr.id !2061
  %163 = getelementptr inbounds i16, i16* %0, i64 %11, !dbg !2062, !psr.id !2063
  store i16 %162, i16* %163, align 2, !dbg !2064, !psr.id !2065
  %164 = lshr i32 %160, 15, !dbg !2066, !psr.id !2067
  call void @llvm.dbg.value(metadata i32 %164, metadata !1764, metadata !DIExpression()), !dbg !1733, !psr.id !2068
  br label %165, !dbg !2069, !psr.id !2070

165:                                              ; preds = %159
  %166 = add i64 %.04, 1, !dbg !2071, !psr.id !2072
  call void @llvm.dbg.value(metadata i64 %166, metadata !1766, metadata !DIExpression()), !dbg !1733, !psr.id !2073
  br label %15, !dbg !2074, !llvm.loop !2075, !psr.id !2077

167:                                              ; preds = %15
  %168 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !2078, !psr.id !2079
  %169 = load i16, i16* %168, align 2, !dbg !2078, !psr.id !2080
  %170 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !2081, !psr.id !2082
  store i16 %169, i16* %170, align 2, !dbg !2083, !psr.id !2084
  %171 = call i32 @NEQ(i32 %.01, i32 0), !dbg !2085, !psr.id !2086
  %172 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 0), !dbg !2087, !psr.id !2088
  %173 = call i32 @NOT.14(i32 %172), !dbg !2089, !psr.id !2090
  %174 = or i32 %171, %173, !dbg !2091, !psr.id !2092
  %175 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 %174), !dbg !2093, !psr.id !2094
  ret void, !dbg !2095, !psr.id !2096
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.13(i16* %0, i16 zeroext %1) #0 !dbg !2097 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !2098, metadata !DIExpression()), !dbg !2099, !psr.id !2100
  call void @llvm.dbg.value(metadata i16 %1, metadata !2101, metadata !DIExpression()), !dbg !2099, !psr.id !2102
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !2103, !psr.id !2104
  call void @llvm.dbg.value(metadata i16* %3, metadata !2098, metadata !DIExpression()), !dbg !2099, !psr.id !2105
  store i16 %1, i16* %0, align 2, !dbg !2106, !psr.id !2107
  %4 = bitcast i16* %3 to i8*, !dbg !2108, !psr.id !2109
  %5 = zext i16 %1 to i32, !dbg !2110, !psr.id !2111
  %6 = add nsw i32 %5, 15, !dbg !2112, !psr.id !2113
  %7 = ashr i32 %6, 4, !dbg !2114, !psr.id !2115
  %8 = sext i32 %7 to i64, !dbg !2116, !psr.id !2117
  %9 = mul i64 %8, 2, !dbg !2118, !psr.id !2119
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !2108, !psr.id !2120
  ret void, !dbg !2121, !psr.id !2122
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !2123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2124, metadata !DIExpression()), !dbg !2125, !psr.id !2126
  call void @llvm.dbg.value(metadata i32 %1, metadata !2127, metadata !DIExpression()), !dbg !2125, !psr.id !2128
  %3 = xor i32 %0, %1, !dbg !2129, !psr.id !2130
  call void @llvm.dbg.value(metadata i32 %3, metadata !2131, metadata !DIExpression()), !dbg !2125, !psr.id !2132
  %4 = sub i32 0, %3, !dbg !2133, !psr.id !2134
  %5 = or i32 %3, %4, !dbg !2135, !psr.id !2136
  %6 = lshr i32 %5, 31, !dbg !2137, !psr.id !2138
  ret i32 %6, !dbg !2139, !psr.id !2140
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.14(i32 %0) #0 !dbg !2141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2142, metadata !DIExpression()), !dbg !2143, !psr.id !2144
  %2 = xor i32 %0, 1, !dbg !2145, !psr.id !2146
  ret i32 %2, !dbg !2147, !psr.id !2148
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_sub(i16* %0, i16* %1, i32 %2) #0 !dbg !2149 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !2150, metadata !DIExpression()), !dbg !2151, !psr.id !2152
  call void @llvm.dbg.value(metadata i16* %1, metadata !2153, metadata !DIExpression()), !dbg !2151, !psr.id !2154
  call void @llvm.dbg.value(metadata i32 %2, metadata !2155, metadata !DIExpression()), !dbg !2151, !psr.id !2156
  call void @llvm.dbg.value(metadata i32 0, metadata !2157, metadata !DIExpression()), !dbg !2151, !psr.id !2158
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !2159, !psr.id !2160
  %5 = load i16, i16* %4, align 2, !dbg !2159, !psr.id !2161
  %6 = zext i16 %5 to i32, !dbg !2159, !psr.id !2162
  %7 = add nsw i32 %6, 31, !dbg !2163, !psr.id !2164
  %8 = ashr i32 %7, 4, !dbg !2165, !psr.id !2166
  %9 = sext i32 %8 to i64, !dbg !2167, !psr.id !2168
  call void @llvm.dbg.value(metadata i64 %9, metadata !2169, metadata !DIExpression()), !dbg !2151, !psr.id !2170
  call void @llvm.dbg.value(metadata i64 1, metadata !2171, metadata !DIExpression()), !dbg !2151, !psr.id !2172
  br label %10, !dbg !2173, !psr.id !2175

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !2151, !psr.id !2176
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !2177, !psr.id !2178
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2171, metadata !DIExpression()), !dbg !2151, !psr.id !2179
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2157, metadata !DIExpression()), !dbg !2151, !psr.id !2180
  %11 = icmp ult i64 %.0, %9, !dbg !2181, !psr.id !2183
  br i1 %11, label %12, label %28, !dbg !2184, !psr.id !2185

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !2186, !psr.id !2188
  %14 = load i16, i16* %13, align 2, !dbg !2186, !psr.id !2189
  %15 = zext i16 %14 to i32, !dbg !2186, !psr.id !2190
  call void @llvm.dbg.value(metadata i32 %15, metadata !2191, metadata !DIExpression()), !dbg !2192, !psr.id !2193
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !2194, !psr.id !2195
  %17 = load i16, i16* %16, align 2, !dbg !2194, !psr.id !2196
  %18 = zext i16 %17 to i32, !dbg !2194, !psr.id !2197
  call void @llvm.dbg.value(metadata i32 %18, metadata !2198, metadata !DIExpression()), !dbg !2192, !psr.id !2199
  %19 = sub i32 %15, %18, !dbg !2200, !psr.id !2201
  %20 = sub i32 %19, %.01, !dbg !2202, !psr.id !2203
  call void @llvm.dbg.value(metadata i32 %20, metadata !2204, metadata !DIExpression()), !dbg !2192, !psr.id !2205
  %21 = lshr i32 %20, 31, !dbg !2206, !psr.id !2207
  call void @llvm.dbg.value(metadata i32 %21, metadata !2157, metadata !DIExpression()), !dbg !2151, !psr.id !2208
  %22 = and i32 %20, 32767, !dbg !2209, !psr.id !2210
  %23 = call i32 @MUX.17(i32 %2, i32 %22, i32 %15), !dbg !2211, !psr.id !2212
  %24 = trunc i32 %23 to i16, !dbg !2211, !psr.id !2213
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !2214, !psr.id !2215
  store i16 %24, i16* %25, align 2, !dbg !2216, !psr.id !2217
  br label %26, !dbg !2218, !psr.id !2219

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !2220, !psr.id !2221
  call void @llvm.dbg.value(metadata i64 %27, metadata !2171, metadata !DIExpression()), !dbg !2151, !psr.id !2222
  br label %10, !dbg !2223, !llvm.loop !2224, !psr.id !2226

28:                                               ; preds = %10
  ret i32 %.01, !dbg !2227, !psr.id !2228
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.17(i32 %0, i32 %1, i32 %2) #0 !dbg !2229 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2230, metadata !DIExpression()), !dbg !2231, !psr.id !2232
  call void @llvm.dbg.value(metadata i32 %1, metadata !2233, metadata !DIExpression()), !dbg !2231, !psr.id !2234
  call void @llvm.dbg.value(metadata i32 %2, metadata !2235, metadata !DIExpression()), !dbg !2231, !psr.id !2236
  %4 = sub i32 0, %0, !dbg !2237, !psr.id !2238
  %5 = xor i32 %1, %2, !dbg !2239, !psr.id !2240
  %6 = and i32 %4, %5, !dbg !2241, !psr.id !2242
  %7 = xor i32 %2, %6, !dbg !2243, !psr.id !2244
  ret i32 %7, !dbg !2245, !psr.id !2246
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @api_mul_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!73, !2, !75, !77, !83, !86, !89}
!llvm.ident = !{!91, !91, !91, !91, !91, !91, !91}
!llvm.module.flags = !{!92, !93, !94}

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
!67 = !{!"0"}
!68 = !{!"1"}
!69 = !{!"2"}
!70 = !{!"3"}
!71 = !{!"4"}
!72 = !{!"5"}
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "api_mul.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "../BearSSL/src/int/i15_add.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "../BearSSL/src/int/i15_decmod.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!79 = !{!36, !80}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !81, line: 26, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !22, line: 41, baseType: !44)
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !85, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "../BearSSL/src/int/i15_encode.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!85 = !{!36, !10}
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../BearSSL/src/int/i15_montmul.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!88 = !{!46, !36}
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "../BearSSL/src/int/i15_sub.c", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!91 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!92 = !{i32 7, !"Dwarf Version", i32 4}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{i32 1, !"wchar_size", i32 4}
!95 = distinct !DISubprogram(name: "api_mul_wrapper", scope: !74, file: !74, line: 7, type: !96, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !4)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !58, !46, !43, !46, !44}
!98 = !DILocalVariable(name: "G", arg: 1, scope: !95, file: !74, line: 7, type: !58)
!99 = !DILocation(line: 0, scope: !95)
!100 = !{!"6"}
!101 = !DILocalVariable(name: "Glen", arg: 2, scope: !95, file: !74, line: 7, type: !46)
!102 = !{!"7"}
!103 = !DILocalVariable(name: "kb", arg: 3, scope: !95, file: !74, line: 8, type: !43)
!104 = !{!"8"}
!105 = !DILocalVariable(name: "kblen", arg: 4, scope: !95, file: !74, line: 8, type: !46)
!106 = !{!"9"}
!107 = !DILocalVariable(name: "curve", arg: 5, scope: !95, file: !74, line: 8, type: !44)
!108 = !{!"10"}
!109 = !DILocation(line: 9, column: 12, scope: !95)
!110 = !{!"11"}
!111 = !DILocation(line: 9, column: 2, scope: !95)
!112 = !{!"12"}
!113 = !DILocation(line: 10, column: 12, scope: !95)
!114 = !{!"13"}
!115 = !DILocation(line: 10, column: 2, scope: !95)
!116 = !{!"14"}
!117 = !DILocation(line: 11, column: 12, scope: !95)
!118 = !{!"15"}
!119 = !DILocation(line: 11, column: 2, scope: !95)
!120 = !{!"16"}
!121 = !DILocation(line: 12, column: 12, scope: !95)
!122 = !{!"17"}
!123 = !DILocation(line: 12, column: 2, scope: !95)
!124 = !{!"18"}
!125 = !DILocation(line: 13, column: 12, scope: !95)
!126 = !{!"19"}
!127 = !DILocation(line: 13, column: 2, scope: !95)
!128 = !{!"20"}
!129 = !DILocation(line: 15, column: 12, scope: !95)
!130 = !{!"21"}
!131 = !DILocation(line: 15, column: 2, scope: !95)
!132 = !{!"22"}
!133 = !DILocalVariable(name: "iec", scope: !95, file: !74, line: 16, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_ec_impl", file: !32, line: 415, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 270, size: 448, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144, !145}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "supported_curves", scope: !137, file: !32, line: 279, baseType: !36, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !137, file: !32, line: 292, baseType: !40, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !137, file: !32, line: 306, baseType: !40, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !137, file: !32, line: 318, baseType: !51, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mul", scope: !137, file: !32, line: 350, baseType: !55, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mulgen", scope: !137, file: !32, line: 366, baseType: !60, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "muladd", scope: !137, file: !32, line: 412, baseType: !64, size: 64, offset: 384)
!146 = !{!"23"}
!147 = !DILocation(line: 18, column: 7, scope: !95)
!148 = !{!"24"}
!149 = !{!"25"}
!150 = !DILocation(line: 18, column: 2, scope: !95)
!151 = !{!"26"}
!152 = !DILocation(line: 19, column: 1, scope: !95)
!153 = !{!"27"}
!154 = distinct !DISubprogram(name: "api_mul_wrapper_t", scope: !74, file: !74, line: 30, type: !155, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !4)
!155 = !DISubroutineType(types: !156)
!156 = !{null}
!157 = !DILocation(line: 32, column: 21, scope: !154)
!158 = !{!"28"}
!159 = !DILocalVariable(name: "G", scope: !154, file: !74, line: 32, type: !58)
!160 = !DILocation(line: 0, scope: !154)
!161 = !{!"29"}
!162 = !DILocation(line: 33, column: 17, scope: !154)
!163 = !{!"30"}
!164 = !DILocalVariable(name: "Glen", scope: !154, file: !74, line: 33, type: !46)
!165 = !{!"31"}
!166 = !DILocation(line: 34, column: 28, scope: !154)
!167 = !{!"32"}
!168 = !DILocalVariable(name: "kb", scope: !154, file: !74, line: 34, type: !43)
!169 = !{!"33"}
!170 = !DILocation(line: 35, column: 18, scope: !154)
!171 = !{!"34"}
!172 = !DILocalVariable(name: "kblen", scope: !154, file: !74, line: 35, type: !46)
!173 = !{!"35"}
!174 = !DILocalVariable(name: "curve", scope: !154, file: !74, line: 36, type: !44)
!175 = !{!"36"}
!176 = !DILocalVariable(name: "iec", scope: !154, file: !74, line: 38, type: !134)
!177 = !{!"37"}
!178 = !DILocation(line: 40, column: 7, scope: !154)
!179 = !{!"38"}
!180 = !{!"39"}
!181 = !DILocation(line: 40, column: 2, scope: !154)
!182 = !{!"40"}
!183 = !DILocation(line: 41, column: 1, scope: !154)
!184 = !{!"41"}
!185 = distinct !DISubprogram(name: "api_generator", scope: !3, file: !3, line: 92, type: !41, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!186 = !DILocalVariable(name: "curve", arg: 1, scope: !185, file: !3, line: 92, type: !44)
!187 = !DILocation(line: 0, scope: !185)
!188 = !{!"42"}
!189 = !DILocalVariable(name: "len", arg: 2, scope: !185, file: !3, line: 92, type: !45)
!190 = !{!"43"}
!191 = !DILocation(line: 95, column: 7, scope: !185)
!192 = !{!"44"}
!193 = !{!"45"}
!194 = !DILocation(line: 96, column: 2, scope: !185)
!195 = !{!"46"}
!196 = distinct !DISubprogram(name: "api_order", scope: !3, file: !3, line: 100, type: !41, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!197 = !DILocalVariable(name: "curve", arg: 1, scope: !196, file: !3, line: 100, type: !44)
!198 = !DILocation(line: 0, scope: !196)
!199 = !{!"47"}
!200 = !DILocalVariable(name: "len", arg: 2, scope: !196, file: !3, line: 100, type: !45)
!201 = !{!"48"}
!202 = !DILocation(line: 103, column: 7, scope: !196)
!203 = !{!"49"}
!204 = !{!"50"}
!205 = !DILocation(line: 104, column: 2, scope: !196)
!206 = !{!"51"}
!207 = distinct !DISubprogram(name: "api_xoff", scope: !3, file: !3, line: 108, type: !52, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!208 = !DILocalVariable(name: "curve", arg: 1, scope: !207, file: !3, line: 108, type: !44)
!209 = !DILocation(line: 0, scope: !207)
!210 = !{!"52"}
!211 = !DILocalVariable(name: "len", arg: 2, scope: !207, file: !3, line: 108, type: !45)
!212 = !{!"53"}
!213 = !DILocation(line: 111, column: 7, scope: !207)
!214 = !{!"54"}
!215 = !DILocation(line: 112, column: 2, scope: !207)
!216 = !{!"55"}
!217 = distinct !DISubprogram(name: "api_mul", scope: !3, file: !3, line: 179, type: !56, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!218 = !{!"56"}
!219 = !{!"57"}
!220 = !{!"58"}
!221 = !{!"59"}
!222 = !{!"60"}
!223 = !{!"61"}
!224 = !{!"62"}
!225 = !{!"63"}
!226 = !{!"64"}
!227 = !{!"65"}
!228 = !{!"66"}
!229 = !{!"67"}
!230 = !{!"68"}
!231 = !{!"69"}
!232 = !{!"70"}
!233 = !DILocalVariable(name: "G", arg: 1, scope: !217, file: !3, line: 179, type: !58)
!234 = !DILocation(line: 0, scope: !217)
!235 = !{!"71"}
!236 = !DILocalVariable(name: "Glen", arg: 2, scope: !217, file: !3, line: 179, type: !46)
!237 = !{!"72"}
!238 = !DILocalVariable(name: "kb", arg: 3, scope: !217, file: !3, line: 180, type: !43)
!239 = !{!"73"}
!240 = !DILocalVariable(name: "kblen", arg: 4, scope: !217, file: !3, line: 180, type: !46)
!241 = !{!"74"}
!242 = !DILocalVariable(name: "curve", arg: 5, scope: !217, file: !3, line: 180, type: !44)
!243 = !{!"75"}
!244 = !DILocalVariable(name: "x1", scope: !217, file: !3, line: 188, type: !245)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 288, elements: !24)
!246 = !DILocation(line: 188, column: 11, scope: !217)
!247 = !{!"76"}
!248 = !DILocalVariable(name: "x2", scope: !217, file: !3, line: 188, type: !245)
!249 = !DILocation(line: 188, column: 19, scope: !217)
!250 = !{!"77"}
!251 = !DILocalVariable(name: "x3", scope: !217, file: !3, line: 188, type: !245)
!252 = !DILocation(line: 188, column: 27, scope: !217)
!253 = !{!"78"}
!254 = !DILocalVariable(name: "z2", scope: !217, file: !3, line: 188, type: !245)
!255 = !DILocation(line: 188, column: 35, scope: !217)
!256 = !{!"79"}
!257 = !DILocalVariable(name: "z3", scope: !217, file: !3, line: 188, type: !245)
!258 = !DILocation(line: 188, column: 43, scope: !217)
!259 = !{!"80"}
!260 = !DILocalVariable(name: "a", scope: !217, file: !3, line: 189, type: !261)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 304, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 19)
!264 = !DILocation(line: 189, column: 11, scope: !217)
!265 = !{!"81"}
!266 = !DILocalVariable(name: "aa", scope: !217, file: !3, line: 189, type: !245)
!267 = !DILocation(line: 189, column: 18, scope: !217)
!268 = !{!"82"}
!269 = !DILocalVariable(name: "b", scope: !217, file: !3, line: 189, type: !261)
!270 = !DILocation(line: 189, column: 26, scope: !217)
!271 = !{!"83"}
!272 = !DILocalVariable(name: "bb", scope: !217, file: !3, line: 189, type: !245)
!273 = !DILocation(line: 189, column: 33, scope: !217)
!274 = !{!"84"}
!275 = !DILocalVariable(name: "c", scope: !217, file: !3, line: 190, type: !245)
!276 = !DILocation(line: 190, column: 11, scope: !217)
!277 = !{!"85"}
!278 = !DILocalVariable(name: "d", scope: !217, file: !3, line: 190, type: !245)
!279 = !DILocation(line: 190, column: 18, scope: !217)
!280 = !{!"86"}
!281 = !DILocalVariable(name: "e", scope: !217, file: !3, line: 190, type: !245)
!282 = !DILocation(line: 190, column: 25, scope: !217)
!283 = !{!"87"}
!284 = !DILocalVariable(name: "da", scope: !217, file: !3, line: 190, type: !245)
!285 = !DILocation(line: 190, column: 32, scope: !217)
!286 = !{!"88"}
!287 = !DILocalVariable(name: "cb", scope: !217, file: !3, line: 190, type: !245)
!288 = !DILocation(line: 190, column: 40, scope: !217)
!289 = !{!"89"}
!290 = !DILocalVariable(name: "k", scope: !217, file: !3, line: 191, type: !291)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !11)
!292 = !DILocation(line: 191, column: 16, scope: !217)
!293 = !{!"90"}
!294 = !DILocation(line: 203, column: 11, scope: !295)
!295 = distinct !DILexicalBlock(scope: !217, file: !3, line: 203, column: 6)
!296 = !{!"91"}
!297 = !DILocation(line: 203, column: 17, scope: !295)
!298 = !{!"92"}
!299 = !DILocation(line: 203, column: 26, scope: !295)
!300 = !{!"93"}
!301 = !DILocation(line: 203, column: 6, scope: !217)
!302 = !{!"94"}
!303 = !DILocation(line: 204, column: 3, scope: !304)
!304 = distinct !DILexicalBlock(scope: !295, file: !3, line: 203, column: 32)
!305 = !{!"95"}
!306 = !DILocation(line: 206, column: 2, scope: !217)
!307 = !{!"96"}
!308 = !DILocation(line: 206, column: 8, scope: !217)
!309 = !{!"97"}
!310 = !{!"98"}
!311 = !{!"99"}
!312 = !{!"100"}
!313 = !{!"101"}
!314 = !DILocation(line: 212, column: 2, scope: !217)
!315 = !{!"102"}
!316 = !DILocation(line: 225, column: 14, scope: !217)
!317 = !{!"103"}
!318 = !DILocation(line: 225, column: 2, scope: !217)
!319 = !{!"104"}
!320 = !DILocation(line: 226, column: 2, scope: !217)
!321 = !{!"105"}
!322 = !DILocation(line: 226, column: 8, scope: !217)
!323 = !{!"106"}
!324 = !DILocation(line: 227, column: 20, scope: !217)
!325 = !{!"107"}
!326 = !DILocation(line: 227, column: 30, scope: !217)
!327 = !{!"108"}
!328 = !DILocation(line: 227, column: 2, scope: !217)
!329 = !{!"109"}
!330 = !DILocation(line: 228, column: 2, scope: !217)
!331 = !{!"110"}
!332 = !DILocation(line: 228, column: 7, scope: !217)
!333 = !{!"111"}
!334 = !DILocation(line: 229, column: 13, scope: !217)
!335 = !{!"112"}
!336 = !DILocation(line: 229, column: 39, scope: !217)
!337 = !{!"113"}
!338 = !{!"114"}
!339 = !DILocation(line: 229, column: 28, scope: !217)
!340 = !{!"115"}
!341 = !DILocation(line: 229, column: 24, scope: !217)
!342 = !{!"116"}
!343 = !{!"117"}
!344 = !DILocation(line: 229, column: 2, scope: !217)
!345 = !{!"118"}
!346 = !DILocation(line: 235, column: 18, scope: !217)
!347 = !{!"119"}
!348 = !DILocation(line: 235, column: 22, scope: !217)
!349 = !{!"120"}
!350 = !{!"121"}
!351 = !{!"122"}
!352 = !DILocation(line: 235, column: 2, scope: !217)
!353 = !{!"123"}
!354 = !DILocation(line: 236, column: 2, scope: !217)
!355 = !{!"124"}
!356 = !{!"125"}
!357 = !{!"126"}
!358 = !{!"127"}
!359 = !{!"128"}
!360 = !DILocation(line: 237, column: 14, scope: !217)
!361 = !{!"129"}
!362 = !{!"130"}
!363 = !DILocation(line: 237, column: 18, scope: !217)
!364 = !{!"131"}
!365 = !DILocation(line: 237, column: 2, scope: !217)
!366 = !{!"132"}
!367 = !DILocation(line: 238, column: 2, scope: !217)
!368 = !{!"133"}
!369 = !{!"134"}
!370 = !{!"135"}
!371 = !{!"136"}
!372 = !{!"137"}
!373 = !DILocation(line: 239, column: 2, scope: !217)
!374 = !{!"138"}
!375 = !DILocation(line: 239, column: 8, scope: !217)
!376 = !{!"139"}
!377 = !DILocation(line: 240, column: 2, scope: !217)
!378 = !{!"140"}
!379 = !{!"141"}
!380 = !{!"142"}
!381 = !{!"143"}
!382 = !{!"144"}
!383 = !DILocation(line: 242, column: 2, scope: !217)
!384 = !{!"145"}
!385 = !DILocation(line: 242, column: 26, scope: !217)
!386 = !{!"146"}
!387 = !{!"147"}
!388 = !DILocation(line: 243, column: 9, scope: !217)
!389 = !{!"148"}
!390 = !DILocation(line: 243, column: 11, scope: !217)
!391 = !{!"149"}
!392 = !DILocation(line: 243, column: 24, scope: !217)
!393 = !{!"150"}
!394 = !{!"151"}
!395 = !DILocation(line: 243, column: 2, scope: !217)
!396 = !{!"152"}
!397 = !DILocation(line: 244, column: 2, scope: !217)
!398 = !{!"153"}
!399 = !DILocation(line: 244, column: 8, scope: !217)
!400 = !{!"154"}
!401 = !{!"155"}
!402 = !{!"156"}
!403 = !{!"157"}
!404 = !{!"158"}
!405 = !DILocation(line: 245, column: 2, scope: !217)
!406 = !{!"159"}
!407 = !DILocation(line: 245, column: 7, scope: !217)
!408 = !{!"160"}
!409 = !{!"161"}
!410 = !{!"162"}
!411 = !{!"163"}
!412 = !{!"164"}
!413 = !DILocation(line: 246, column: 2, scope: !217)
!414 = !{!"165"}
!415 = !DILocation(line: 246, column: 7, scope: !217)
!416 = !{!"166"}
!417 = !{!"167"}
!418 = !{!"168"}
!419 = !{!"169"}
!420 = !{!"170"}
!421 = !DILocalVariable(name: "swap", scope: !217, file: !3, line: 192, type: !36)
!422 = !{!"171"}
!423 = !DILocalVariable(name: "i", scope: !217, file: !3, line: 193, type: !44)
!424 = !{!"172"}
!425 = !DILocation(line: 253, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !217, file: !3, line: 253, column: 2)
!427 = !{!"173"}
!428 = !{!"174"}
!429 = !DILocation(line: 0, scope: !426)
!430 = !{!"175"}
!431 = !{!"176"}
!432 = !{!"177"}
!433 = !DILocation(line: 253, column: 18, scope: !434)
!434 = distinct !DILexicalBlock(scope: !426, file: !3, line: 253, column: 2)
!435 = !{!"178"}
!436 = !DILocation(line: 253, column: 2, scope: !426)
!437 = !{!"179"}
!438 = !DILocation(line: 256, column: 19, scope: !439)
!439 = distinct !DILexicalBlock(scope: !434, file: !3, line: 253, column: 30)
!440 = !{!"180"}
!441 = !DILocation(line: 256, column: 14, scope: !439)
!442 = !{!"181"}
!443 = !DILocation(line: 256, column: 9, scope: !439)
!444 = !{!"182"}
!445 = !{!"183"}
!446 = !{!"184"}
!447 = !{!"185"}
!448 = !DILocation(line: 256, column: 32, scope: !439)
!449 = !{!"186"}
!450 = !DILocation(line: 256, column: 26, scope: !439)
!451 = !{!"187"}
!452 = !DILocation(line: 256, column: 38, scope: !439)
!453 = !{!"188"}
!454 = !DILocalVariable(name: "kt", scope: !439, file: !3, line: 254, type: !36)
!455 = !DILocation(line: 0, scope: !439)
!456 = !{!"189"}
!457 = !DILocation(line: 257, column: 8, scope: !439)
!458 = !{!"190"}
!459 = !{!"191"}
!460 = !DILocation(line: 258, column: 9, scope: !439)
!461 = !{!"192"}
!462 = !DILocation(line: 258, column: 13, scope: !439)
!463 = !{!"193"}
!464 = !DILocation(line: 258, column: 3, scope: !439)
!465 = !{!"194"}
!466 = !DILocation(line: 259, column: 9, scope: !439)
!467 = !{!"195"}
!468 = !DILocation(line: 259, column: 13, scope: !439)
!469 = !{!"196"}
!470 = !DILocation(line: 259, column: 3, scope: !439)
!471 = !{!"197"}
!472 = !{!"198"}
!473 = !DILocation(line: 269, column: 12, scope: !439)
!474 = !{!"199"}
!475 = !DILocation(line: 269, column: 15, scope: !439)
!476 = !{!"200"}
!477 = !DILocation(line: 269, column: 19, scope: !439)
!478 = !{!"201"}
!479 = !DILocation(line: 269, column: 3, scope: !439)
!480 = !{!"202"}
!481 = !DILocation(line: 270, column: 12, scope: !439)
!482 = !{!"203"}
!483 = !DILocation(line: 270, column: 16, scope: !439)
!484 = !{!"204"}
!485 = !DILocation(line: 270, column: 19, scope: !439)
!486 = !{!"205"}
!487 = !DILocation(line: 270, column: 3, scope: !439)
!488 = !{!"206"}
!489 = !DILocation(line: 271, column: 12, scope: !439)
!490 = !{!"207"}
!491 = !DILocation(line: 271, column: 15, scope: !439)
!492 = !{!"208"}
!493 = !DILocation(line: 271, column: 19, scope: !439)
!494 = !{!"209"}
!495 = !DILocation(line: 271, column: 3, scope: !439)
!496 = !{!"210"}
!497 = !DILocation(line: 272, column: 12, scope: !439)
!498 = !{!"211"}
!499 = !DILocation(line: 272, column: 16, scope: !439)
!500 = !{!"212"}
!501 = !DILocation(line: 272, column: 19, scope: !439)
!502 = !{!"213"}
!503 = !DILocation(line: 272, column: 3, scope: !439)
!504 = !{!"214"}
!505 = !DILocation(line: 273, column: 12, scope: !439)
!506 = !{!"215"}
!507 = !DILocation(line: 273, column: 15, scope: !439)
!508 = !{!"216"}
!509 = !DILocation(line: 273, column: 19, scope: !439)
!510 = !{!"217"}
!511 = !DILocation(line: 273, column: 3, scope: !439)
!512 = !{!"218"}
!513 = !DILocation(line: 274, column: 12, scope: !439)
!514 = !{!"219"}
!515 = !DILocation(line: 274, column: 15, scope: !439)
!516 = !{!"220"}
!517 = !DILocation(line: 274, column: 19, scope: !439)
!518 = !{!"221"}
!519 = !DILocation(line: 274, column: 3, scope: !439)
!520 = !{!"222"}
!521 = !DILocation(line: 275, column: 12, scope: !439)
!522 = !{!"223"}
!523 = !DILocation(line: 275, column: 15, scope: !439)
!524 = !{!"224"}
!525 = !DILocation(line: 275, column: 19, scope: !439)
!526 = !{!"225"}
!527 = !DILocation(line: 275, column: 3, scope: !439)
!528 = !{!"226"}
!529 = !DILocation(line: 276, column: 12, scope: !439)
!530 = !{!"227"}
!531 = !DILocation(line: 276, column: 16, scope: !439)
!532 = !{!"228"}
!533 = !DILocation(line: 276, column: 19, scope: !439)
!534 = !{!"229"}
!535 = !DILocation(line: 276, column: 3, scope: !439)
!536 = !{!"230"}
!537 = !DILocation(line: 277, column: 12, scope: !439)
!538 = !{!"231"}
!539 = !DILocation(line: 277, column: 16, scope: !439)
!540 = !{!"232"}
!541 = !DILocation(line: 277, column: 19, scope: !439)
!542 = !{!"233"}
!543 = !DILocation(line: 277, column: 3, scope: !439)
!544 = !{!"234"}
!545 = !DILocation(line: 291, column: 12, scope: !439)
!546 = !{!"235"}
!547 = !DILocation(line: 291, column: 16, scope: !439)
!548 = !{!"236"}
!549 = !DILocation(line: 291, column: 20, scope: !439)
!550 = !{!"237"}
!551 = !DILocation(line: 291, column: 3, scope: !439)
!552 = !{!"238"}
!553 = !DILocation(line: 292, column: 12, scope: !439)
!554 = !{!"239"}
!555 = !DILocation(line: 292, column: 16, scope: !439)
!556 = !{!"240"}
!557 = !DILocation(line: 292, column: 20, scope: !439)
!558 = !{!"241"}
!559 = !DILocation(line: 292, column: 3, scope: !439)
!560 = !{!"242"}
!561 = !DILocation(line: 293, column: 12, scope: !439)
!562 = !{!"243"}
!563 = !DILocation(line: 293, column: 16, scope: !439)
!564 = !{!"244"}
!565 = !DILocation(line: 293, column: 20, scope: !439)
!566 = !{!"245"}
!567 = !DILocation(line: 293, column: 3, scope: !439)
!568 = !{!"246"}
!569 = !DILocation(line: 294, column: 12, scope: !439)
!570 = !{!"247"}
!571 = !DILocation(line: 294, column: 16, scope: !439)
!572 = !{!"248"}
!573 = !DILocation(line: 294, column: 20, scope: !439)
!574 = !{!"249"}
!575 = !DILocation(line: 294, column: 3, scope: !439)
!576 = !{!"250"}
!577 = !DILocation(line: 295, column: 12, scope: !439)
!578 = !{!"251"}
!579 = !DILocation(line: 295, column: 16, scope: !439)
!580 = !{!"252"}
!581 = !DILocation(line: 295, column: 20, scope: !439)
!582 = !{!"253"}
!583 = !DILocation(line: 295, column: 3, scope: !439)
!584 = !{!"254"}
!585 = !DILocation(line: 296, column: 12, scope: !439)
!586 = !{!"255"}
!587 = !DILocation(line: 296, column: 16, scope: !439)
!588 = !{!"256"}
!589 = !DILocation(line: 296, column: 20, scope: !439)
!590 = !{!"257"}
!591 = !DILocation(line: 296, column: 3, scope: !439)
!592 = !{!"258"}
!593 = !DILocation(line: 297, column: 12, scope: !439)
!594 = !{!"259"}
!595 = !DILocation(line: 297, column: 26, scope: !439)
!596 = !{!"260"}
!597 = !{!"261"}
!598 = !DILocation(line: 297, column: 3, scope: !439)
!599 = !{!"262"}
!600 = !DILocation(line: 298, column: 12, scope: !439)
!601 = !{!"263"}
!602 = !DILocation(line: 298, column: 16, scope: !439)
!603 = !{!"264"}
!604 = !DILocation(line: 298, column: 20, scope: !439)
!605 = !{!"265"}
!606 = !DILocation(line: 298, column: 3, scope: !439)
!607 = !{!"266"}
!608 = !DILocation(line: 299, column: 12, scope: !439)
!609 = !{!"267"}
!610 = !DILocation(line: 299, column: 16, scope: !439)
!611 = !{!"268"}
!612 = !DILocation(line: 299, column: 19, scope: !439)
!613 = !{!"269"}
!614 = !DILocation(line: 299, column: 3, scope: !439)
!615 = !{!"270"}
!616 = !DILocation(line: 307, column: 2, scope: !439)
!617 = !{!"271"}
!618 = !DILocation(line: 253, column: 26, scope: !434)
!619 = !{!"272"}
!620 = !{!"273"}
!621 = !DILocation(line: 253, column: 2, scope: !434)
!622 = distinct !{!622, !436, !623, !624}
!623 = !DILocation(line: 307, column: 2, scope: !426)
!624 = !{!"llvm.loop.mustprogress"}
!625 = !{!"274"}
!626 = !DILocation(line: 308, column: 8, scope: !217)
!627 = !{!"275"}
!628 = !DILocation(line: 308, column: 12, scope: !217)
!629 = !{!"276"}
!630 = !DILocation(line: 308, column: 2, scope: !217)
!631 = !{!"277"}
!632 = !DILocation(line: 309, column: 8, scope: !217)
!633 = !{!"278"}
!634 = !DILocation(line: 309, column: 12, scope: !217)
!635 = !{!"279"}
!636 = !DILocation(line: 309, column: 2, scope: !217)
!637 = !{!"280"}
!638 = !DILocation(line: 316, column: 2, scope: !217)
!639 = !{!"281"}
!640 = !{!"282"}
!641 = !{!"283"}
!642 = !{!"284"}
!643 = !{!"285"}
!644 = !{!"286"}
!645 = !DILocation(line: 317, column: 7, scope: !646)
!646 = distinct !DILexicalBlock(scope: !217, file: !3, line: 317, column: 2)
!647 = !{!"287"}
!648 = !DILocation(line: 0, scope: !646)
!649 = !{!"288"}
!650 = !{!"289"}
!651 = !DILocation(line: 317, column: 16, scope: !652)
!652 = distinct !DILexicalBlock(scope: !646, file: !3, line: 317, column: 2)
!653 = !{!"290"}
!654 = !DILocation(line: 317, column: 2, scope: !646)
!655 = !{!"291"}
!656 = !DILocation(line: 318, column: 12, scope: !657)
!657 = distinct !DILexicalBlock(scope: !652, file: !3, line: 317, column: 28)
!658 = !{!"292"}
!659 = !DILocation(line: 318, column: 15, scope: !657)
!660 = !{!"293"}
!661 = !DILocation(line: 318, column: 18, scope: !657)
!662 = !{!"294"}
!663 = !DILocation(line: 318, column: 3, scope: !657)
!664 = !{!"295"}
!665 = !DILocation(line: 319, column: 12, scope: !657)
!666 = !{!"296"}
!667 = !DILocation(line: 319, column: 15, scope: !657)
!668 = !{!"297"}
!669 = !DILocation(line: 319, column: 18, scope: !657)
!670 = !{!"298"}
!671 = !DILocation(line: 319, column: 3, scope: !657)
!672 = !{!"299"}
!673 = !DILocation(line: 320, column: 2, scope: !657)
!674 = !{!"300"}
!675 = !DILocation(line: 317, column: 24, scope: !652)
!676 = !{!"301"}
!677 = !{!"302"}
!678 = !DILocation(line: 317, column: 2, scope: !652)
!679 = distinct !{!679, !654, !680, !624}
!680 = !DILocation(line: 320, column: 2, scope: !646)
!681 = !{!"303"}
!682 = !DILocation(line: 321, column: 2, scope: !217)
!683 = !{!"304"}
!684 = !{!"305"}
!685 = !{!"306"}
!686 = !{!"307"}
!687 = !{!"308"}
!688 = !{!"309"}
!689 = !DILocation(line: 322, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !217, file: !3, line: 322, column: 2)
!691 = !{!"310"}
!692 = !DILocation(line: 0, scope: !690)
!693 = !{!"311"}
!694 = !{!"312"}
!695 = !DILocation(line: 322, column: 16, scope: !696)
!696 = distinct !DILexicalBlock(scope: !690, file: !3, line: 322, column: 2)
!697 = !{!"313"}
!698 = !DILocation(line: 322, column: 2, scope: !690)
!699 = !{!"314"}
!700 = !DILocalVariable(name: "j", scope: !701, file: !3, line: 323, type: !44)
!701 = distinct !DILexicalBlock(scope: !696, file: !3, line: 322, column: 28)
!702 = !DILocation(line: 0, scope: !701)
!703 = !{!"315"}
!704 = !DILocation(line: 325, column: 8, scope: !705)
!705 = distinct !DILexicalBlock(scope: !701, file: !3, line: 325, column: 3)
!706 = !{!"316"}
!707 = !DILocation(line: 0, scope: !705)
!708 = !{!"317"}
!709 = !{!"318"}
!710 = !DILocation(line: 325, column: 17, scope: !711)
!711 = distinct !DILexicalBlock(scope: !705, file: !3, line: 325, column: 3)
!712 = !{!"319"}
!713 = !DILocation(line: 325, column: 3, scope: !705)
!714 = !{!"320"}
!715 = !DILocation(line: 326, column: 13, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !3, line: 325, column: 29)
!717 = !{!"321"}
!718 = !DILocation(line: 326, column: 16, scope: !716)
!719 = !{!"322"}
!720 = !DILocation(line: 326, column: 19, scope: !716)
!721 = !{!"323"}
!722 = !DILocation(line: 326, column: 4, scope: !716)
!723 = !{!"324"}
!724 = !DILocation(line: 327, column: 3, scope: !716)
!725 = !{!"325"}
!726 = !DILocation(line: 325, column: 25, scope: !711)
!727 = !{!"326"}
!728 = !{!"327"}
!729 = !DILocation(line: 325, column: 3, scope: !711)
!730 = distinct !{!730, !713, !731, !624}
!731 = !DILocation(line: 327, column: 3, scope: !705)
!732 = !{!"328"}
!733 = !DILocation(line: 328, column: 12, scope: !701)
!734 = !{!"329"}
!735 = !DILocation(line: 328, column: 15, scope: !701)
!736 = !{!"330"}
!737 = !DILocation(line: 328, column: 18, scope: !701)
!738 = !{!"331"}
!739 = !DILocation(line: 328, column: 3, scope: !701)
!740 = !{!"332"}
!741 = !DILocation(line: 329, column: 2, scope: !701)
!742 = !{!"333"}
!743 = !DILocation(line: 322, column: 24, scope: !696)
!744 = !{!"334"}
!745 = !{!"335"}
!746 = !DILocation(line: 322, column: 2, scope: !696)
!747 = distinct !{!747, !698, !748, !624}
!748 = !DILocation(line: 329, column: 2, scope: !690)
!749 = !{!"336"}
!750 = !{!"337"}
!751 = !DILocation(line: 330, column: 7, scope: !752)
!752 = distinct !DILexicalBlock(scope: !217, file: !3, line: 330, column: 2)
!753 = !{!"338"}
!754 = !DILocation(line: 0, scope: !752)
!755 = !{!"339"}
!756 = !{!"340"}
!757 = !DILocation(line: 330, column: 17, scope: !758)
!758 = distinct !DILexicalBlock(scope: !752, file: !3, line: 330, column: 2)
!759 = !{!"341"}
!760 = !DILocation(line: 330, column: 2, scope: !752)
!761 = !{!"342"}
!762 = !DILocation(line: 331, column: 12, scope: !763)
!763 = distinct !DILexicalBlock(scope: !758, file: !3, line: 330, column: 29)
!764 = !{!"343"}
!765 = !DILocation(line: 331, column: 15, scope: !763)
!766 = !{!"344"}
!767 = !DILocation(line: 331, column: 18, scope: !763)
!768 = !{!"345"}
!769 = !DILocation(line: 331, column: 3, scope: !763)
!770 = !{!"346"}
!771 = !DILocation(line: 332, column: 15, scope: !772)
!772 = distinct !DILexicalBlock(scope: !763, file: !3, line: 332, column: 7)
!773 = !{!"347"}
!774 = !DILocation(line: 332, column: 21, scope: !772)
!775 = !{!"348"}
!776 = !{!"349"}
!777 = !DILocation(line: 332, column: 7, scope: !763)
!778 = !{!"350"}
!779 = !DILocation(line: 333, column: 13, scope: !780)
!780 = distinct !DILexicalBlock(scope: !772, file: !3, line: 332, column: 26)
!781 = !{!"351"}
!782 = !DILocation(line: 333, column: 16, scope: !780)
!783 = !{!"352"}
!784 = !DILocation(line: 333, column: 20, scope: !780)
!785 = !{!"353"}
!786 = !DILocation(line: 333, column: 4, scope: !780)
!787 = !{!"354"}
!788 = !DILocation(line: 334, column: 3, scope: !780)
!789 = !{!"355"}
!790 = !DILocation(line: 335, column: 2, scope: !763)
!791 = !{!"356"}
!792 = !DILocation(line: 330, column: 25, scope: !758)
!793 = !{!"357"}
!794 = !{!"358"}
!795 = !DILocation(line: 330, column: 2, scope: !758)
!796 = distinct !{!796, !760, !797, !624}
!797 = !DILocation(line: 335, column: 2, scope: !752)
!798 = !{!"359"}
!799 = !DILocation(line: 336, column: 11, scope: !217)
!800 = !{!"360"}
!801 = !DILocation(line: 336, column: 14, scope: !217)
!802 = !{!"361"}
!803 = !DILocation(line: 336, column: 18, scope: !217)
!804 = !{!"362"}
!805 = !DILocation(line: 336, column: 2, scope: !217)
!806 = !{!"363"}
!807 = !DILocation(line: 344, column: 14, scope: !217)
!808 = !{!"364"}
!809 = !{!"365"}
!810 = !DILocation(line: 344, column: 17, scope: !217)
!811 = !{!"366"}
!812 = !DILocation(line: 344, column: 2, scope: !217)
!813 = !{!"367"}
!814 = !DILocation(line: 345, column: 2, scope: !217)
!815 = !{!"368"}
!816 = !DILocation(line: 345, column: 7, scope: !217)
!817 = !{!"369"}
!818 = !DILocation(line: 346, column: 18, scope: !217)
!819 = !{!"370"}
!820 = !DILocation(line: 346, column: 22, scope: !217)
!821 = !{!"371"}
!822 = !DILocation(line: 346, column: 25, scope: !217)
!823 = !{!"372"}
!824 = !{!"373"}
!825 = !DILocation(line: 346, column: 2, scope: !217)
!826 = !{!"374"}
!827 = !DILocation(line: 348, column: 23, scope: !217)
!828 = !{!"375"}
!829 = !DILocation(line: 348, column: 2, scope: !217)
!830 = !{!"376"}
!831 = !DILocation(line: 349, column: 2, scope: !217)
!832 = !{!"377"}
!833 = !DILocation(line: 350, column: 2, scope: !217)
!834 = !{!"378"}
!835 = !{!"379"}
!836 = !DILocation(line: 353, column: 1, scope: !217)
!837 = !{!"380"}
!838 = distinct !DISubprogram(name: "api_mulgen", scope: !3, file: !3, line: 356, type: !61, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!839 = !{!"381"}
!840 = !DILocalVariable(name: "R", arg: 1, scope: !838, file: !3, line: 356, type: !58)
!841 = !DILocation(line: 0, scope: !838)
!842 = !{!"382"}
!843 = !DILocalVariable(name: "x", arg: 2, scope: !838, file: !3, line: 357, type: !43)
!844 = !{!"383"}
!845 = !DILocalVariable(name: "xlen", arg: 3, scope: !838, file: !3, line: 357, type: !46)
!846 = !{!"384"}
!847 = !DILocalVariable(name: "curve", arg: 4, scope: !838, file: !3, line: 357, type: !44)
!848 = !{!"385"}
!849 = !DILocalVariable(name: "Glen", scope: !838, file: !3, line: 360, type: !46)
!850 = !DILocation(line: 360, column: 9, scope: !838)
!851 = !{!"386"}
!852 = !DILocation(line: 362, column: 6, scope: !838)
!853 = !{!"387"}
!854 = !DILocalVariable(name: "G", scope: !838, file: !3, line: 359, type: !43)
!855 = !{!"388"}
!856 = !DILocation(line: 363, column: 15, scope: !838)
!857 = !{!"389"}
!858 = !DILocation(line: 363, column: 2, scope: !838)
!859 = !{!"390"}
!860 = !DILocation(line: 364, column: 13, scope: !838)
!861 = !{!"391"}
!862 = !DILocation(line: 364, column: 2, scope: !838)
!863 = !{!"392"}
!864 = !DILocation(line: 365, column: 9, scope: !838)
!865 = !{!"393"}
!866 = !DILocation(line: 365, column: 2, scope: !838)
!867 = !{!"394"}
!868 = distinct !DISubprogram(name: "api_muladd", scope: !3, file: !3, line: 369, type: !65, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!869 = !DILocalVariable(name: "A", arg: 1, scope: !868, file: !3, line: 369, type: !58)
!870 = !DILocation(line: 0, scope: !868)
!871 = !{!"395"}
!872 = !DILocalVariable(name: "B", arg: 2, scope: !868, file: !3, line: 369, type: !43)
!873 = !{!"396"}
!874 = !DILocalVariable(name: "len", arg: 3, scope: !868, file: !3, line: 369, type: !46)
!875 = !{!"397"}
!876 = !DILocalVariable(name: "x", arg: 4, scope: !868, file: !3, line: 370, type: !43)
!877 = !{!"398"}
!878 = !DILocalVariable(name: "xlen", arg: 5, scope: !868, file: !3, line: 370, type: !46)
!879 = !{!"399"}
!880 = !DILocalVariable(name: "y", arg: 6, scope: !868, file: !3, line: 371, type: !43)
!881 = !{!"400"}
!882 = !DILocalVariable(name: "ylen", arg: 7, scope: !868, file: !3, line: 371, type: !46)
!883 = !{!"401"}
!884 = !DILocalVariable(name: "curve", arg: 8, scope: !868, file: !3, line: 371, type: !44)
!885 = !{!"402"}
!886 = !DILocation(line: 386, column: 2, scope: !868)
!887 = !{!"403"}
!888 = distinct !DISubprogram(name: "byteswap", scope: !3, file: !3, line: 165, type: !889, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !58}
!891 = !DILocalVariable(name: "G", arg: 1, scope: !888, file: !3, line: 165, type: !58)
!892 = !DILocation(line: 0, scope: !888)
!893 = !{!"404"}
!894 = !DILocalVariable(name: "i", scope: !888, file: !3, line: 167, type: !44)
!895 = !{!"405"}
!896 = !DILocation(line: 169, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !888, file: !3, line: 169, column: 2)
!898 = !{!"406"}
!899 = !DILocation(line: 0, scope: !897)
!900 = !{!"407"}
!901 = !{!"408"}
!902 = !DILocation(line: 169, column: 16, scope: !903)
!903 = distinct !DILexicalBlock(scope: !897, file: !3, line: 169, column: 2)
!904 = !{!"409"}
!905 = !DILocation(line: 169, column: 2, scope: !897)
!906 = !{!"410"}
!907 = !DILocation(line: 172, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !903, file: !3, line: 169, column: 28)
!909 = !{!"411"}
!910 = !{!"412"}
!911 = !{!"413"}
!912 = !DILocalVariable(name: "t", scope: !908, file: !3, line: 170, type: !10)
!913 = !DILocation(line: 0, scope: !908)
!914 = !{!"414"}
!915 = !DILocation(line: 173, column: 15, scope: !908)
!916 = !{!"415"}
!917 = !DILocation(line: 173, column: 10, scope: !908)
!918 = !{!"416"}
!919 = !{!"417"}
!920 = !{!"418"}
!921 = !DILocation(line: 173, column: 3, scope: !908)
!922 = !{!"419"}
!923 = !{!"420"}
!924 = !DILocation(line: 173, column: 8, scope: !908)
!925 = !{!"421"}
!926 = !DILocation(line: 174, column: 8, scope: !908)
!927 = !{!"422"}
!928 = !DILocation(line: 174, column: 3, scope: !908)
!929 = !{!"423"}
!930 = !{!"424"}
!931 = !DILocation(line: 174, column: 13, scope: !908)
!932 = !{!"425"}
!933 = !DILocation(line: 175, column: 2, scope: !908)
!934 = !{!"426"}
!935 = !DILocation(line: 169, column: 24, scope: !903)
!936 = !{!"427"}
!937 = !{!"428"}
!938 = !DILocation(line: 169, column: 2, scope: !903)
!939 = distinct !{!939, !905, !940, !624}
!940 = !DILocation(line: 175, column: 2, scope: !897)
!941 = !{!"429"}
!942 = !DILocation(line: 176, column: 1, scope: !888)
!943 = !{!"430"}
!944 = distinct !DISubprogram(name: "br_i15_zero", scope: !945, file: !945, line: 1537, type: !946, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!945 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/EC_25519_i15")
!946 = !DISubroutineType(types: !947)
!947 = !{null, !948, !19}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!949 = !DILocalVariable(name: "x", arg: 1, scope: !944, file: !945, line: 1537, type: !948)
!950 = !DILocation(line: 0, scope: !944)
!951 = !{!"431"}
!952 = !DILocalVariable(name: "bit_len", arg: 2, scope: !944, file: !945, line: 1537, type: !19)
!953 = !{!"432"}
!954 = !DILocation(line: 1539, column: 5, scope: !944)
!955 = !{!"433"}
!956 = !{!"434"}
!957 = !DILocation(line: 1539, column: 8, scope: !944)
!958 = !{!"435"}
!959 = !DILocation(line: 1540, column: 2, scope: !944)
!960 = !{!"436"}
!961 = !DILocation(line: 1540, column: 17, scope: !944)
!962 = !{!"437"}
!963 = !DILocation(line: 1540, column: 25, scope: !944)
!964 = !{!"438"}
!965 = !DILocation(line: 1540, column: 31, scope: !944)
!966 = !{!"439"}
!967 = !DILocation(line: 1540, column: 15, scope: !944)
!968 = !{!"440"}
!969 = !DILocation(line: 1540, column: 37, scope: !944)
!970 = !{!"441"}
!971 = !{!"442"}
!972 = !DILocation(line: 1541, column: 1, scope: !944)
!973 = !{!"443"}
!974 = distinct !DISubprogram(name: "NOT", scope: !945, file: !945, line: 761, type: !975, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!975 = !DISubroutineType(types: !976)
!976 = !{!36, !36}
!977 = !DILocalVariable(name: "ctl", arg: 1, scope: !974, file: !945, line: 761, type: !36)
!978 = !DILocation(line: 0, scope: !974)
!979 = !{!"444"}
!980 = !DILocation(line: 763, column: 13, scope: !974)
!981 = !{!"445"}
!982 = !DILocation(line: 763, column: 2, scope: !974)
!983 = !{!"446"}
!984 = distinct !DISubprogram(name: "cswap", scope: !3, file: !3, line: 116, type: !985, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !948, !948, !36}
!987 = !DILocalVariable(name: "a", arg: 1, scope: !984, file: !3, line: 116, type: !948)
!988 = !DILocation(line: 0, scope: !984)
!989 = !{!"447"}
!990 = !DILocalVariable(name: "b", arg: 2, scope: !984, file: !3, line: 116, type: !948)
!991 = !{!"448"}
!992 = !DILocalVariable(name: "ctl", arg: 3, scope: !984, file: !3, line: 116, type: !36)
!993 = !{!"449"}
!994 = !DILocation(line: 120, column: 8, scope: !984)
!995 = !{!"450"}
!996 = !{!"451"}
!997 = !DILocalVariable(name: "i", scope: !984, file: !3, line: 118, type: !44)
!998 = !{!"452"}
!999 = !DILocation(line: 121, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !984, file: !3, line: 121, column: 2)
!1001 = !{!"453"}
!1002 = !DILocation(line: 0, scope: !1000)
!1003 = !{!"454"}
!1004 = !{!"455"}
!1005 = !DILocation(line: 121, column: 16, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 121, column: 2)
!1007 = !{!"456"}
!1008 = !DILocation(line: 121, column: 2, scope: !1000)
!1009 = !{!"457"}
!1010 = !DILocation(line: 124, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 121, column: 28)
!1012 = !{!"458"}
!1013 = !{!"459"}
!1014 = !{!"460"}
!1015 = !{!"461"}
!1016 = !DILocalVariable(name: "aw", scope: !1011, file: !3, line: 122, type: !36)
!1017 = !DILocation(line: 0, scope: !1011)
!1018 = !{!"462"}
!1019 = !DILocation(line: 125, column: 8, scope: !1011)
!1020 = !{!"463"}
!1021 = !{!"464"}
!1022 = !{!"465"}
!1023 = !{!"466"}
!1024 = !DILocalVariable(name: "bw", scope: !1011, file: !3, line: 122, type: !36)
!1025 = !{!"467"}
!1026 = !DILocation(line: 126, column: 18, scope: !1011)
!1027 = !{!"468"}
!1028 = !DILocation(line: 126, column: 12, scope: !1011)
!1029 = !{!"469"}
!1030 = !DILocalVariable(name: "tw", scope: !1011, file: !3, line: 122, type: !36)
!1031 = !{!"470"}
!1032 = !DILocation(line: 127, column: 13, scope: !1011)
!1033 = !{!"471"}
!1034 = !DILocation(line: 127, column: 10, scope: !1011)
!1035 = !{!"472"}
!1036 = !DILocation(line: 127, column: 3, scope: !1011)
!1037 = !{!"473"}
!1038 = !{!"474"}
!1039 = !DILocation(line: 127, column: 8, scope: !1011)
!1040 = !{!"475"}
!1041 = !DILocation(line: 128, column: 13, scope: !1011)
!1042 = !{!"476"}
!1043 = !DILocation(line: 128, column: 10, scope: !1011)
!1044 = !{!"477"}
!1045 = !DILocation(line: 128, column: 3, scope: !1011)
!1046 = !{!"478"}
!1047 = !{!"479"}
!1048 = !DILocation(line: 128, column: 8, scope: !1011)
!1049 = !{!"480"}
!1050 = !DILocation(line: 129, column: 2, scope: !1011)
!1051 = !{!"481"}
!1052 = !DILocation(line: 121, column: 24, scope: !1006)
!1053 = !{!"482"}
!1054 = !{!"483"}
!1055 = !DILocation(line: 121, column: 2, scope: !1006)
!1056 = distinct !{!1056, !1008, !1057, !624}
!1057 = !DILocation(line: 129, column: 2, scope: !1000)
!1058 = !{!"484"}
!1059 = !DILocation(line: 130, column: 1, scope: !984)
!1060 = !{!"485"}
!1061 = distinct !DISubprogram(name: "c255_add", scope: !3, file: !3, line: 133, type: !1062, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !948, !1064, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1065 = !{!"486"}
!1066 = !DILocalVariable(name: "d", arg: 1, scope: !1061, file: !3, line: 133, type: !948)
!1067 = !DILocation(line: 0, scope: !1061)
!1068 = !{!"487"}
!1069 = !DILocalVariable(name: "a", arg: 2, scope: !1061, file: !3, line: 133, type: !1064)
!1070 = !{!"488"}
!1071 = !DILocalVariable(name: "b", arg: 3, scope: !1061, file: !3, line: 133, type: !1064)
!1072 = !{!"489"}
!1073 = !DILocalVariable(name: "t", scope: !1061, file: !3, line: 136, type: !245)
!1074 = !DILocation(line: 136, column: 11, scope: !1061)
!1075 = !{!"490"}
!1076 = !DILocation(line: 138, column: 2, scope: !1061)
!1077 = !{!"491"}
!1078 = !{!"492"}
!1079 = !{!"493"}
!1080 = !{!"494"}
!1081 = !DILocation(line: 139, column: 19, scope: !1061)
!1082 = !{!"495"}
!1083 = !DILocation(line: 139, column: 8, scope: !1061)
!1084 = !{!"496"}
!1085 = !DILocalVariable(name: "ctl", scope: !1061, file: !3, line: 135, type: !36)
!1086 = !{!"497"}
!1087 = !DILocation(line: 140, column: 24, scope: !1061)
!1088 = !{!"498"}
!1089 = !{!"499"}
!1090 = !DILocation(line: 140, column: 13, scope: !1061)
!1091 = !{!"500"}
!1092 = !DILocation(line: 140, column: 9, scope: !1061)
!1093 = !{!"501"}
!1094 = !DILocation(line: 140, column: 6, scope: !1061)
!1095 = !{!"502"}
!1096 = !{!"503"}
!1097 = !DILocation(line: 141, column: 13, scope: !1061)
!1098 = !{!"504"}
!1099 = !{!"505"}
!1100 = !DILocation(line: 141, column: 2, scope: !1061)
!1101 = !{!"506"}
!1102 = !DILocation(line: 142, column: 2, scope: !1061)
!1103 = !{!"507"}
!1104 = !{!"508"}
!1105 = !{!"509"}
!1106 = !{!"510"}
!1107 = !DILocation(line: 143, column: 1, scope: !1061)
!1108 = !{!"511"}
!1109 = distinct !DISubprogram(name: "c255_mul", scope: !3, file: !3, line: 156, type: !1062, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1110 = !{!"512"}
!1111 = !DILocalVariable(name: "d", arg: 1, scope: !1109, file: !3, line: 156, type: !948)
!1112 = !DILocation(line: 0, scope: !1109)
!1113 = !{!"513"}
!1114 = !DILocalVariable(name: "a", arg: 2, scope: !1109, file: !3, line: 156, type: !1064)
!1115 = !{!"514"}
!1116 = !DILocalVariable(name: "b", arg: 3, scope: !1109, file: !3, line: 156, type: !1064)
!1117 = !{!"515"}
!1118 = !DILocalVariable(name: "t", scope: !1109, file: !3, line: 158, type: !245)
!1119 = !DILocation(line: 158, column: 11, scope: !1109)
!1120 = !{!"516"}
!1121 = !DILocation(line: 160, column: 18, scope: !1109)
!1122 = !{!"517"}
!1123 = !{!"518"}
!1124 = !DILocation(line: 160, column: 2, scope: !1109)
!1125 = !{!"519"}
!1126 = !DILocation(line: 161, column: 2, scope: !1109)
!1127 = !{!"520"}
!1128 = !{!"521"}
!1129 = !{!"522"}
!1130 = !{!"523"}
!1131 = !DILocation(line: 162, column: 1, scope: !1109)
!1132 = !{!"524"}
!1133 = distinct !DISubprogram(name: "c255_sub", scope: !3, file: !3, line: 146, type: !1062, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1134 = !{!"525"}
!1135 = !DILocalVariable(name: "d", arg: 1, scope: !1133, file: !3, line: 146, type: !948)
!1136 = !DILocation(line: 0, scope: !1133)
!1137 = !{!"526"}
!1138 = !DILocalVariable(name: "a", arg: 2, scope: !1133, file: !3, line: 146, type: !1064)
!1139 = !{!"527"}
!1140 = !DILocalVariable(name: "b", arg: 3, scope: !1133, file: !3, line: 146, type: !1064)
!1141 = !{!"528"}
!1142 = !DILocalVariable(name: "t", scope: !1133, file: !3, line: 148, type: !245)
!1143 = !DILocation(line: 148, column: 11, scope: !1133)
!1144 = !{!"529"}
!1145 = !DILocation(line: 150, column: 2, scope: !1133)
!1146 = !{!"530"}
!1147 = !{!"531"}
!1148 = !{!"532"}
!1149 = !{!"533"}
!1150 = !DILocation(line: 151, column: 13, scope: !1133)
!1151 = !{!"534"}
!1152 = !DILocation(line: 151, column: 35, scope: !1133)
!1153 = !{!"535"}
!1154 = !DILocation(line: 151, column: 24, scope: !1133)
!1155 = !{!"536"}
!1156 = !{!"537"}
!1157 = !DILocation(line: 151, column: 2, scope: !1133)
!1158 = !{!"538"}
!1159 = !DILocation(line: 152, column: 2, scope: !1133)
!1160 = !{!"539"}
!1161 = !{!"540"}
!1162 = !{!"541"}
!1163 = !{!"542"}
!1164 = !DILocation(line: 153, column: 1, scope: !1133)
!1165 = !{!"543"}
!1166 = distinct !DISubprogram(name: "br_i15_add", scope: !76, file: !76, line: 29, type: !1167, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !4)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!36, !948, !1064, !36}
!1169 = !DILocalVariable(name: "a", arg: 1, scope: !1166, file: !76, line: 29, type: !948)
!1170 = !DILocation(line: 0, scope: !1166)
!1171 = !{!"544"}
!1172 = !DILocalVariable(name: "b", arg: 2, scope: !1166, file: !76, line: 29, type: !1064)
!1173 = !{!"545"}
!1174 = !DILocalVariable(name: "ctl", arg: 3, scope: !1166, file: !76, line: 29, type: !36)
!1175 = !{!"546"}
!1176 = !DILocalVariable(name: "cc", scope: !1166, file: !76, line: 31, type: !36)
!1177 = !{!"547"}
!1178 = !DILocation(line: 35, column: 7, scope: !1166)
!1179 = !{!"548"}
!1180 = !{!"549"}
!1181 = !{!"550"}
!1182 = !DILocation(line: 35, column: 12, scope: !1166)
!1183 = !{!"551"}
!1184 = !DILocation(line: 35, column: 18, scope: !1166)
!1185 = !{!"552"}
!1186 = !DILocation(line: 35, column: 6, scope: !1166)
!1187 = !{!"553"}
!1188 = !DILocalVariable(name: "m", scope: !1166, file: !76, line: 32, type: !46)
!1189 = !{!"554"}
!1190 = !DILocalVariable(name: "u", scope: !1166, file: !76, line: 32, type: !46)
!1191 = !{!"555"}
!1192 = !DILocation(line: 36, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1166, file: !76, line: 36, column: 2)
!1194 = !{!"556"}
!1195 = !{!"557"}
!1196 = !DILocation(line: 0, scope: !1193)
!1197 = !{!"558"}
!1198 = !{!"559"}
!1199 = !{!"560"}
!1200 = !DILocation(line: 36, column: 16, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1193, file: !76, line: 36, column: 2)
!1202 = !{!"561"}
!1203 = !DILocation(line: 36, column: 2, scope: !1193)
!1204 = !{!"562"}
!1205 = !DILocation(line: 39, column: 8, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !76, line: 36, column: 27)
!1207 = !{!"563"}
!1208 = !{!"564"}
!1209 = !{!"565"}
!1210 = !DILocalVariable(name: "aw", scope: !1206, file: !76, line: 37, type: !36)
!1211 = !DILocation(line: 0, scope: !1206)
!1212 = !{!"566"}
!1213 = !DILocation(line: 40, column: 8, scope: !1206)
!1214 = !{!"567"}
!1215 = !{!"568"}
!1216 = !{!"569"}
!1217 = !DILocalVariable(name: "bw", scope: !1206, file: !76, line: 37, type: !36)
!1218 = !{!"570"}
!1219 = !DILocation(line: 41, column: 12, scope: !1206)
!1220 = !{!"571"}
!1221 = !DILocation(line: 41, column: 17, scope: !1206)
!1222 = !{!"572"}
!1223 = !DILocalVariable(name: "naw", scope: !1206, file: !76, line: 37, type: !36)
!1224 = !{!"573"}
!1225 = !DILocation(line: 42, column: 12, scope: !1206)
!1226 = !{!"574"}
!1227 = !{!"575"}
!1228 = !DILocation(line: 43, column: 23, scope: !1206)
!1229 = !{!"576"}
!1230 = !DILocation(line: 43, column: 10, scope: !1206)
!1231 = !{!"577"}
!1232 = !{!"578"}
!1233 = !DILocation(line: 43, column: 3, scope: !1206)
!1234 = !{!"579"}
!1235 = !DILocation(line: 43, column: 8, scope: !1206)
!1236 = !{!"580"}
!1237 = !DILocation(line: 44, column: 2, scope: !1206)
!1238 = !{!"581"}
!1239 = !DILocation(line: 36, column: 23, scope: !1201)
!1240 = !{!"582"}
!1241 = !{!"583"}
!1242 = !DILocation(line: 36, column: 2, scope: !1201)
!1243 = distinct !{!1243, !1203, !1244, !624}
!1244 = !DILocation(line: 44, column: 2, scope: !1193)
!1245 = !{!"584"}
!1246 = !DILocation(line: 45, column: 2, scope: !1166)
!1247 = !{!"585"}
!1248 = distinct !DISubprogram(name: "MUX", scope: !945, file: !945, line: 770, type: !1249, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !75, retainedNodes: !4)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!36, !36, !36, !36}
!1251 = !DILocalVariable(name: "ctl", arg: 1, scope: !1248, file: !945, line: 770, type: !36)
!1252 = !DILocation(line: 0, scope: !1248)
!1253 = !{!"586"}
!1254 = !DILocalVariable(name: "x", arg: 2, scope: !1248, file: !945, line: 770, type: !36)
!1255 = !{!"587"}
!1256 = !DILocalVariable(name: "y", arg: 3, scope: !1248, file: !945, line: 770, type: !36)
!1257 = !{!"588"}
!1258 = !DILocation(line: 772, column: 14, scope: !1248)
!1259 = !{!"589"}
!1260 = !DILocation(line: 772, column: 24, scope: !1248)
!1261 = !{!"590"}
!1262 = !DILocation(line: 772, column: 19, scope: !1248)
!1263 = !{!"591"}
!1264 = !DILocation(line: 772, column: 11, scope: !1248)
!1265 = !{!"592"}
!1266 = !DILocation(line: 772, column: 2, scope: !1248)
!1267 = !{!"593"}
!1268 = distinct !DISubprogram(name: "br_i15_decode_mod", scope: !78, file: !78, line: 29, type: !1269, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !4)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!36, !948, !1271, !46, !1064}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1273 = !DILocalVariable(name: "x", arg: 1, scope: !1268, file: !78, line: 29, type: !948)
!1274 = !DILocation(line: 0, scope: !1268)
!1275 = !{!"594"}
!1276 = !DILocalVariable(name: "src", arg: 2, scope: !1268, file: !78, line: 29, type: !1271)
!1277 = !{!"595"}
!1278 = !DILocalVariable(name: "len", arg: 3, scope: !1268, file: !78, line: 29, type: !46)
!1279 = !{!"596"}
!1280 = !DILocalVariable(name: "m", arg: 4, scope: !1268, file: !78, line: 29, type: !1064)
!1281 = !{!"597"}
!1282 = !DILocalVariable(name: "buf", scope: !1268, file: !78, line: 54, type: !43)
!1283 = !{!"598"}
!1284 = !DILocation(line: 60, column: 10, scope: !1268)
!1285 = !{!"599"}
!1286 = !{!"600"}
!1287 = !{!"601"}
!1288 = !DILocation(line: 60, column: 15, scope: !1268)
!1289 = !{!"602"}
!1290 = !DILocation(line: 60, column: 21, scope: !1268)
!1291 = !{!"603"}
!1292 = !DILocation(line: 60, column: 9, scope: !1268)
!1293 = !{!"604"}
!1294 = !DILocalVariable(name: "mlen", scope: !1268, file: !78, line: 55, type: !46)
!1295 = !{!"605"}
!1296 = !DILocation(line: 61, column: 15, scope: !1268)
!1297 = !{!"606"}
!1298 = !DILocalVariable(name: "tlen", scope: !1268, file: !78, line: 55, type: !46)
!1299 = !{!"607"}
!1300 = !DILocation(line: 62, column: 11, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1268, file: !78, line: 62, column: 6)
!1302 = !{!"608"}
!1303 = !DILocation(line: 62, column: 6, scope: !1268)
!1304 = !{!"609"}
!1305 = !{!"610"}
!1306 = !DILocation(line: 64, column: 2, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !78, line: 62, column: 18)
!1308 = !{!"611"}
!1309 = !{!"612"}
!1310 = !{!"613"}
!1311 = !DILocation(line: 65, column: 7, scope: !1268)
!1312 = !{!"614"}
!1313 = !{!"615"}
!1314 = !DILocalVariable(name: "r", scope: !1268, file: !78, line: 57, type: !36)
!1315 = !{!"616"}
!1316 = !DILocalVariable(name: "pass", scope: !1268, file: !78, line: 56, type: !44)
!1317 = !{!"617"}
!1318 = !DILocation(line: 67, column: 7, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1268, file: !78, line: 67, column: 2)
!1320 = !{!"618"}
!1321 = !DILocation(line: 0, scope: !1319)
!1322 = !{!"619"}
!1323 = !{!"620"}
!1324 = !{!"621"}
!1325 = !{!"622"}
!1326 = !DILocation(line: 67, column: 22, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1319, file: !78, line: 67, column: 2)
!1328 = !{!"623"}
!1329 = !DILocation(line: 67, column: 2, scope: !1319)
!1330 = !{!"624"}
!1331 = !DILocalVariable(name: "v", scope: !1332, file: !78, line: 68, type: !46)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !78, line: 67, column: 36)
!1333 = !DILocation(line: 0, scope: !1332)
!1334 = !{!"625"}
!1335 = !DILocalVariable(name: "acc", scope: !1332, file: !78, line: 69, type: !36)
!1336 = !{!"626"}
!1337 = !DILocalVariable(name: "acc_len", scope: !1332, file: !78, line: 70, type: !44)
!1338 = !{!"627"}
!1339 = !DILocalVariable(name: "u", scope: !1332, file: !78, line: 68, type: !46)
!1340 = !{!"628"}
!1341 = !DILocation(line: 75, column: 8, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1332, file: !78, line: 75, column: 3)
!1343 = !{!"629"}
!1344 = !DILocation(line: 66, column: 4, scope: !1268)
!1345 = !{!"630"}
!1346 = !DILocation(line: 0, scope: !1342)
!1347 = !{!"631"}
!1348 = !{!"632"}
!1349 = !{!"633"}
!1350 = !{!"634"}
!1351 = !{!"635"}
!1352 = !{!"636"}
!1353 = !{!"637"}
!1354 = !{!"638"}
!1355 = !{!"639"}
!1356 = !DILocation(line: 75, column: 17, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1342, file: !78, line: 75, column: 3)
!1358 = !{!"640"}
!1359 = !DILocation(line: 75, column: 3, scope: !1342)
!1360 = !{!"641"}
!1361 = !DILocation(line: 78, column: 10, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !78, line: 78, column: 8)
!1363 = distinct !DILexicalBlock(scope: !1357, file: !78, line: 75, column: 31)
!1364 = !{!"642"}
!1365 = !DILocation(line: 78, column: 8, scope: !1363)
!1366 = !{!"643"}
!1367 = !DILocation(line: 79, column: 17, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1362, file: !78, line: 78, column: 17)
!1369 = !{!"644"}
!1370 = !DILocation(line: 79, column: 21, scope: !1368)
!1371 = !{!"645"}
!1372 = !DILocation(line: 79, column: 9, scope: !1368)
!1373 = !{!"646"}
!1374 = !{!"647"}
!1375 = !{!"648"}
!1376 = !DILocalVariable(name: "b", scope: !1363, file: !78, line: 76, type: !36)
!1377 = !DILocation(line: 0, scope: !1363)
!1378 = !{!"649"}
!1379 = !DILocation(line: 80, column: 4, scope: !1368)
!1380 = !{!"650"}
!1381 = !{!"651"}
!1382 = !{!"652"}
!1383 = !DILocation(line: 0, scope: !1362)
!1384 = !{!"653"}
!1385 = !{!"654"}
!1386 = !DILocation(line: 83, column: 14, scope: !1363)
!1387 = !{!"655"}
!1388 = !DILocation(line: 83, column: 8, scope: !1363)
!1389 = !{!"656"}
!1390 = !{!"657"}
!1391 = !DILocation(line: 84, column: 12, scope: !1363)
!1392 = !{!"658"}
!1393 = !{!"659"}
!1394 = !DILocation(line: 85, column: 16, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1363, file: !78, line: 85, column: 8)
!1396 = !{!"660"}
!1397 = !DILocation(line: 85, column: 8, scope: !1363)
!1398 = !{!"661"}
!1399 = !DILocation(line: 88, column: 14, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !78, line: 85, column: 23)
!1401 = !{!"662"}
!1402 = !DILocalVariable(name: "xw", scope: !1400, file: !78, line: 86, type: !36)
!1403 = !DILocation(line: 0, scope: !1400)
!1404 = !{!"663"}
!1405 = !DILocation(line: 89, column: 13, scope: !1400)
!1406 = !{!"664"}
!1407 = !{!"665"}
!1408 = !DILocation(line: 90, column: 19, scope: !1400)
!1409 = !{!"666"}
!1410 = !DILocation(line: 90, column: 13, scope: !1400)
!1411 = !{!"667"}
!1412 = !{!"668"}
!1413 = !DILocation(line: 91, column: 11, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1400, file: !78, line: 91, column: 9)
!1415 = !{!"669"}
!1416 = !DILocation(line: 91, column: 9, scope: !1400)
!1417 = !{!"670"}
!1418 = !DILocation(line: 92, column: 10, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !78, line: 92, column: 10)
!1420 = distinct !DILexicalBlock(scope: !1414, file: !78, line: 91, column: 20)
!1421 = !{!"671"}
!1422 = !DILocation(line: 92, column: 10, scope: !1420)
!1423 = !{!"672"}
!1424 = !DILocation(line: 93, column: 16, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !78, line: 92, column: 16)
!1426 = !{!"673"}
!1427 = !DILocation(line: 93, column: 14, scope: !1425)
!1428 = !{!"674"}
!1429 = !DILocation(line: 93, column: 7, scope: !1425)
!1430 = !{!"675"}
!1431 = !DILocation(line: 93, column: 12, scope: !1425)
!1432 = !{!"676"}
!1433 = !DILocation(line: 94, column: 6, scope: !1425)
!1434 = !{!"677"}
!1435 = !DILocation(line: 97, column: 30, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1419, file: !78, line: 94, column: 13)
!1437 = !{!"678"}
!1438 = !{!"679"}
!1439 = !{!"680"}
!1440 = !DILocation(line: 97, column: 22, scope: !1436)
!1441 = !{!"681"}
!1442 = !DILocalVariable(name: "cc", scope: !1436, file: !78, line: 95, type: !36)
!1443 = !DILocation(line: 0, scope: !1436)
!1444 = !{!"682"}
!1445 = !DILocation(line: 98, column: 15, scope: !1436)
!1446 = !{!"683"}
!1447 = !DILocation(line: 98, column: 11, scope: !1436)
!1448 = !{!"684"}
!1449 = !{!"685"}
!1450 = !{!"686"}
!1451 = !{!"687"}
!1452 = !{!"688"}
!1453 = !DILocation(line: 100, column: 5, scope: !1420)
!1454 = !{!"689"}
!1455 = !DILocation(line: 101, column: 11, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !78, line: 101, column: 10)
!1457 = distinct !DILexicalBlock(scope: !1414, file: !78, line: 100, column: 12)
!1458 = !{!"690"}
!1459 = !DILocation(line: 101, column: 10, scope: !1457)
!1460 = !{!"691"}
!1461 = !DILocation(line: 102, column: 15, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !78, line: 101, column: 17)
!1463 = !{!"692"}
!1464 = !DILocation(line: 102, column: 11, scope: !1462)
!1465 = !{!"693"}
!1466 = !{!"694"}
!1467 = !DILocation(line: 103, column: 6, scope: !1462)
!1468 = !{!"695"}
!1469 = !{!"696"}
!1470 = !{!"697"}
!1471 = !{!"698"}
!1472 = !{!"699"}
!1473 = !{!"700"}
!1474 = !DILocation(line: 105, column: 7, scope: !1400)
!1475 = !{!"701"}
!1476 = !{!"702"}
!1477 = !DILocation(line: 106, column: 4, scope: !1400)
!1478 = !{!"703"}
!1479 = !{!"704"}
!1480 = !{!"705"}
!1481 = !{!"706"}
!1482 = !{!"707"}
!1483 = !{!"708"}
!1484 = !{!"709"}
!1485 = !{!"710"}
!1486 = !{!"711"}
!1487 = !DILocation(line: 107, column: 3, scope: !1363)
!1488 = !{!"712"}
!1489 = !DILocation(line: 75, column: 27, scope: !1357)
!1490 = !{!"713"}
!1491 = !{!"714"}
!1492 = !DILocation(line: 75, column: 3, scope: !1357)
!1493 = distinct !{!1493, !1359, !1494, !624}
!1494 = !DILocation(line: 107, column: 3, scope: !1342)
!1495 = !{!"715"}
!1496 = !DILocation(line: 118, column: 5, scope: !1332)
!1497 = !{!"716"}
!1498 = !{!"717"}
!1499 = !DILocation(line: 119, column: 11, scope: !1332)
!1500 = !{!"718"}
!1501 = !DILocation(line: 119, column: 5, scope: !1332)
!1502 = !{!"719"}
!1503 = !{!"720"}
!1504 = !DILocation(line: 120, column: 2, scope: !1332)
!1505 = !{!"721"}
!1506 = !DILocation(line: 67, column: 32, scope: !1327)
!1507 = !{!"722"}
!1508 = !{!"723"}
!1509 = !DILocation(line: 67, column: 2, scope: !1327)
!1510 = distinct !{!1510, !1329, !1511, !624}
!1511 = !DILocation(line: 120, column: 2, scope: !1319)
!1512 = !{!"724"}
!1513 = !DILocation(line: 122, column: 9, scope: !1268)
!1514 = !{!"725"}
!1515 = !{!"726"}
!1516 = !DILocation(line: 122, column: 2, scope: !1268)
!1517 = !{!"727"}
!1518 = !DILocation(line: 122, column: 7, scope: !1268)
!1519 = !{!"728"}
!1520 = !DILocation(line: 123, column: 11, scope: !1268)
!1521 = !{!"729"}
!1522 = !DILocation(line: 123, column: 2, scope: !1268)
!1523 = !{!"730"}
!1524 = distinct !DISubprogram(name: "CMP", scope: !945, file: !945, line: 835, type: !1525, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !4)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!80, !36, !36}
!1527 = !DILocalVariable(name: "x", arg: 1, scope: !1524, file: !945, line: 835, type: !36)
!1528 = !DILocation(line: 0, scope: !1524)
!1529 = !{!"731"}
!1530 = !DILocalVariable(name: "y", arg: 2, scope: !1524, file: !945, line: 835, type: !36)
!1531 = !{!"732"}
!1532 = !DILocation(line: 837, column: 18, scope: !1524)
!1533 = !{!"733"}
!1534 = !DILocation(line: 837, column: 39, scope: !1524)
!1535 = !{!"734"}
!1536 = !DILocation(line: 837, column: 29, scope: !1524)
!1537 = !{!"735"}
!1538 = !DILocation(line: 837, column: 27, scope: !1524)
!1539 = !{!"736"}
!1540 = !DILocation(line: 837, column: 2, scope: !1524)
!1541 = !{!"737"}
!1542 = distinct !DISubprogram(name: "EQ", scope: !945, file: !945, line: 779, type: !1543, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !4)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!36, !36, !36}
!1545 = !DILocalVariable(name: "x", arg: 1, scope: !1542, file: !945, line: 779, type: !36)
!1546 = !DILocation(line: 0, scope: !1542)
!1547 = !{!"738"}
!1548 = !DILocalVariable(name: "y", arg: 2, scope: !1542, file: !945, line: 779, type: !36)
!1549 = !{!"739"}
!1550 = !DILocation(line: 783, column: 8, scope: !1542)
!1551 = !{!"740"}
!1552 = !DILocalVariable(name: "q", scope: !1542, file: !945, line: 781, type: !36)
!1553 = !{!"741"}
!1554 = !DILocation(line: 784, column: 18, scope: !1542)
!1555 = !{!"742"}
!1556 = !DILocation(line: 784, column: 16, scope: !1542)
!1557 = !{!"743"}
!1558 = !DILocation(line: 784, column: 22, scope: !1542)
!1559 = !{!"744"}
!1560 = !DILocation(line: 784, column: 9, scope: !1542)
!1561 = !{!"745"}
!1562 = !DILocation(line: 784, column: 2, scope: !1542)
!1563 = !{!"746"}
!1564 = distinct !DISubprogram(name: "MUX", scope: !945, file: !945, line: 770, type: !1249, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !4)
!1565 = !DILocalVariable(name: "ctl", arg: 1, scope: !1564, file: !945, line: 770, type: !36)
!1566 = !DILocation(line: 0, scope: !1564)
!1567 = !{!"747"}
!1568 = !DILocalVariable(name: "x", arg: 2, scope: !1564, file: !945, line: 770, type: !36)
!1569 = !{!"748"}
!1570 = !DILocalVariable(name: "y", arg: 3, scope: !1564, file: !945, line: 770, type: !36)
!1571 = !{!"749"}
!1572 = !DILocation(line: 772, column: 14, scope: !1564)
!1573 = !{!"750"}
!1574 = !DILocation(line: 772, column: 24, scope: !1564)
!1575 = !{!"751"}
!1576 = !DILocation(line: 772, column: 19, scope: !1564)
!1577 = !{!"752"}
!1578 = !DILocation(line: 772, column: 11, scope: !1564)
!1579 = !{!"753"}
!1580 = !DILocation(line: 772, column: 2, scope: !1564)
!1581 = !{!"754"}
!1582 = distinct !DISubprogram(name: "NOT", scope: !945, file: !945, line: 761, type: !975, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !4)
!1583 = !DILocalVariable(name: "ctl", arg: 1, scope: !1582, file: !945, line: 761, type: !36)
!1584 = !DILocation(line: 0, scope: !1582)
!1585 = !{!"755"}
!1586 = !DILocation(line: 763, column: 13, scope: !1582)
!1587 = !{!"756"}
!1588 = !DILocation(line: 763, column: 2, scope: !1582)
!1589 = !{!"757"}
!1590 = distinct !DISubprogram(name: "GT", scope: !945, file: !945, line: 803, type: !1543, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !77, retainedNodes: !4)
!1591 = !DILocalVariable(name: "x", arg: 1, scope: !1590, file: !945, line: 803, type: !36)
!1592 = !DILocation(line: 0, scope: !1590)
!1593 = !{!"758"}
!1594 = !DILocalVariable(name: "y", arg: 2, scope: !1590, file: !945, line: 803, type: !36)
!1595 = !{!"759"}
!1596 = !DILocation(line: 819, column: 8, scope: !1590)
!1597 = !{!"760"}
!1598 = !DILocalVariable(name: "z", scope: !1590, file: !945, line: 817, type: !36)
!1599 = !{!"761"}
!1600 = !DILocation(line: 820, column: 18, scope: !1590)
!1601 = !{!"762"}
!1602 = !DILocation(line: 820, column: 28, scope: !1590)
!1603 = !{!"763"}
!1604 = !DILocation(line: 820, column: 23, scope: !1590)
!1605 = !{!"764"}
!1606 = !DILocation(line: 820, column: 12, scope: !1590)
!1607 = !{!"765"}
!1608 = !DILocation(line: 820, column: 35, scope: !1590)
!1609 = !{!"766"}
!1610 = !DILocation(line: 820, column: 2, scope: !1590)
!1611 = !{!"767"}
!1612 = distinct !DISubprogram(name: "br_i15_encode", scope: !84, file: !84, line: 29, type: !1613, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !4)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !1615, !46, !1064}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1616 = !DILocalVariable(name: "dst", arg: 1, scope: !1612, file: !84, line: 29, type: !1615)
!1617 = !DILocation(line: 0, scope: !1612)
!1618 = !{!"768"}
!1619 = !DILocalVariable(name: "len", arg: 2, scope: !1612, file: !84, line: 29, type: !46)
!1620 = !{!"769"}
!1621 = !DILocalVariable(name: "x", arg: 3, scope: !1612, file: !84, line: 29, type: !1064)
!1622 = !{!"770"}
!1623 = !DILocation(line: 36, column: 10, scope: !1612)
!1624 = !{!"771"}
!1625 = !{!"772"}
!1626 = !{!"773"}
!1627 = !DILocation(line: 36, column: 15, scope: !1612)
!1628 = !{!"774"}
!1629 = !DILocation(line: 36, column: 21, scope: !1612)
!1630 = !{!"775"}
!1631 = !DILocation(line: 36, column: 9, scope: !1612)
!1632 = !{!"776"}
!1633 = !DILocalVariable(name: "xlen", scope: !1612, file: !84, line: 32, type: !46)
!1634 = !{!"777"}
!1635 = !DILocation(line: 37, column: 11, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1612, file: !84, line: 37, column: 6)
!1637 = !{!"778"}
!1638 = !DILocation(line: 37, column: 6, scope: !1612)
!1639 = !{!"779"}
!1640 = !DILocation(line: 38, column: 3, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !84, line: 37, column: 17)
!1642 = !{!"780"}
!1643 = !DILocation(line: 39, column: 3, scope: !1641)
!1644 = !{!"781"}
!1645 = !DILocalVariable(name: "u", scope: !1612, file: !84, line: 32, type: !46)
!1646 = !{!"782"}
!1647 = !DILocalVariable(name: "acc", scope: !1612, file: !84, line: 33, type: !36)
!1648 = !{!"783"}
!1649 = !DILocalVariable(name: "acc_len", scope: !1612, file: !84, line: 34, type: !44)
!1650 = !{!"784"}
!1651 = !DILocalVariable(name: "buf", scope: !1612, file: !84, line: 31, type: !58)
!1652 = !{!"785"}
!1653 = !DILocation(line: 45, column: 2, scope: !1612)
!1654 = !{!"786"}
!1655 = !{!"787"}
!1656 = !{!"788"}
!1657 = !{!"789"}
!1658 = !{!"790"}
!1659 = !{!"791"}
!1660 = !{!"792"}
!1661 = !{!"793"}
!1662 = !{!"794"}
!1663 = !DILocation(line: 45, column: 13, scope: !1612)
!1664 = !{!"795"}
!1665 = !{!"796"}
!1666 = !DILocation(line: 45, column: 16, scope: !1612)
!1667 = !{!"797"}
!1668 = !{!"798"}
!1669 = !DILocation(line: 46, column: 15, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !84, line: 46, column: 7)
!1671 = distinct !DILexicalBlock(scope: !1612, file: !84, line: 45, column: 21)
!1672 = !{!"799"}
!1673 = !DILocation(line: 46, column: 7, scope: !1671)
!1674 = !{!"800"}
!1675 = !DILocation(line: 47, column: 10, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !84, line: 47, column: 8)
!1677 = distinct !DILexicalBlock(scope: !1670, file: !84, line: 46, column: 20)
!1678 = !{!"801"}
!1679 = !DILocation(line: 47, column: 8, scope: !1677)
!1680 = !{!"802"}
!1681 = !DILocation(line: 48, column: 26, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1676, file: !84, line: 47, column: 19)
!1683 = !{!"803"}
!1684 = !{!"804"}
!1685 = !DILocation(line: 48, column: 22, scope: !1682)
!1686 = !{!"805"}
!1687 = !{!"806"}
!1688 = !DILocation(line: 48, column: 12, scope: !1682)
!1689 = !{!"807"}
!1690 = !DILocation(line: 48, column: 30, scope: !1682)
!1691 = !{!"808"}
!1692 = !DILocation(line: 48, column: 9, scope: !1682)
!1693 = !{!"809"}
!1694 = !{!"810"}
!1695 = !DILocation(line: 49, column: 4, scope: !1682)
!1696 = !{!"811"}
!1697 = !{!"812"}
!1698 = !{!"813"}
!1699 = !{!"814"}
!1700 = !{!"815"}
!1701 = !DILocation(line: 50, column: 12, scope: !1677)
!1702 = !{!"816"}
!1703 = !{!"817"}
!1704 = !DILocation(line: 51, column: 3, scope: !1677)
!1705 = !{!"818"}
!1706 = !{!"819"}
!1707 = !{!"820"}
!1708 = !{!"821"}
!1709 = !{!"822"}
!1710 = !{!"823"}
!1711 = !{!"824"}
!1712 = !DILocation(line: 52, column: 14, scope: !1671)
!1713 = !{!"825"}
!1714 = !DILocation(line: 52, column: 3, scope: !1671)
!1715 = !{!"826"}
!1716 = !DILocation(line: 52, column: 12, scope: !1671)
!1717 = !{!"827"}
!1718 = !DILocation(line: 53, column: 7, scope: !1671)
!1719 = !{!"828"}
!1720 = !{!"829"}
!1721 = !DILocation(line: 54, column: 11, scope: !1671)
!1722 = !{!"830"}
!1723 = !{!"831"}
!1724 = distinct !{!1724, !1653, !1725, !624}
!1725 = !DILocation(line: 55, column: 2, scope: !1612)
!1726 = !{!"832"}
!1727 = !DILocation(line: 56, column: 1, scope: !1612)
!1728 = !{!"833"}
!1729 = distinct !DISubprogram(name: "br_i15_montymul", scope: !87, file: !87, line: 29, type: !1730, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !4)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !948, !1064, !1064, !1064, !19}
!1732 = !DILocalVariable(name: "d", arg: 1, scope: !1729, file: !87, line: 29, type: !948)
!1733 = !DILocation(line: 0, scope: !1729)
!1734 = !{!"834"}
!1735 = !DILocalVariable(name: "x", arg: 2, scope: !1729, file: !87, line: 29, type: !1064)
!1736 = !{!"835"}
!1737 = !DILocalVariable(name: "y", arg: 3, scope: !1729, file: !87, line: 29, type: !1064)
!1738 = !{!"836"}
!1739 = !DILocalVariable(name: "m", arg: 4, scope: !1729, file: !87, line: 30, type: !1064)
!1740 = !{!"837"}
!1741 = !DILocalVariable(name: "m0i", arg: 5, scope: !1729, file: !87, line: 30, type: !19)
!1742 = !{!"838"}
!1743 = !DILocation(line: 35, column: 9, scope: !1729)
!1744 = !{!"839"}
!1745 = !{!"840"}
!1746 = !{!"841"}
!1747 = !DILocation(line: 35, column: 14, scope: !1729)
!1748 = !{!"842"}
!1749 = !DILocation(line: 35, column: 20, scope: !1729)
!1750 = !{!"843"}
!1751 = !DILocation(line: 35, column: 8, scope: !1729)
!1752 = !{!"844"}
!1753 = !DILocalVariable(name: "len", scope: !1729, file: !87, line: 32, type: !46)
!1754 = !{!"845"}
!1755 = !DILocation(line: 36, column: 13, scope: !1729)
!1756 = !{!"846"}
!1757 = !DILocalVariable(name: "len4", scope: !1729, file: !87, line: 32, type: !46)
!1758 = !{!"847"}
!1759 = !DILocation(line: 37, column: 17, scope: !1729)
!1760 = !{!"848"}
!1761 = !{!"849"}
!1762 = !DILocation(line: 37, column: 2, scope: !1729)
!1763 = !{!"850"}
!1764 = !DILocalVariable(name: "dh", scope: !1729, file: !87, line: 33, type: !36)
!1765 = !{!"851"}
!1766 = !DILocalVariable(name: "u", scope: !1729, file: !87, line: 32, type: !46)
!1767 = !{!"852"}
!1768 = !DILocation(line: 39, column: 7, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1729, file: !87, line: 39, column: 2)
!1770 = !{!"853"}
!1771 = !DILocation(line: 0, scope: !1769)
!1772 = !{!"854"}
!1773 = !{!"855"}
!1774 = !{!"856"}
!1775 = !{!"857"}
!1776 = !DILocation(line: 39, column: 16, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1769, file: !87, line: 39, column: 2)
!1778 = !{!"858"}
!1779 = !DILocation(line: 39, column: 2, scope: !1769)
!1780 = !{!"859"}
!1781 = !DILocation(line: 42, column: 12, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1777, file: !87, line: 39, column: 29)
!1783 = !{!"860"}
!1784 = !DILocation(line: 42, column: 8, scope: !1782)
!1785 = !{!"861"}
!1786 = !{!"862"}
!1787 = !{!"863"}
!1788 = !DILocalVariable(name: "xu", scope: !1782, file: !87, line: 40, type: !36)
!1789 = !DILocation(line: 0, scope: !1782)
!1790 = !{!"864"}
!1791 = !DILocation(line: 43, column: 7, scope: !1782)
!1792 = !{!"865"}
!1793 = !{!"866"}
!1794 = !{!"867"}
!1795 = !{!"868"}
!1796 = !{!"869"}
!1797 = !{!"870"}
!1798 = !{!"871"}
!1799 = !{!"872"}
!1800 = !{!"873"}
!1801 = !{!"874"}
!1802 = !{!"875"}
!1803 = !{!"876"}
!1804 = !{!"877"}
!1805 = !{!"878"}
!1806 = !{!"879"}
!1807 = !DILocation(line: 44, column: 4, scope: !1782)
!1808 = !{!"880"}
!1809 = !DILocalVariable(name: "f", scope: !1782, file: !87, line: 40, type: !36)
!1810 = !{!"881"}
!1811 = !DILocalVariable(name: "r", scope: !1782, file: !87, line: 40, type: !36)
!1812 = !{!"882"}
!1813 = !DILocalVariable(name: "v", scope: !1729, file: !87, line: 32, type: !46)
!1814 = !{!"883"}
!1815 = !DILocation(line: 139, column: 8, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1782, file: !87, line: 139, column: 3)
!1817 = !{!"884"}
!1818 = !DILocation(line: 0, scope: !1816)
!1819 = !{!"885"}
!1820 = !{!"886"}
!1821 = !{!"887"}
!1822 = !{!"888"}
!1823 = !DILocation(line: 139, column: 17, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1816, file: !87, line: 139, column: 3)
!1825 = !{!"889"}
!1826 = !DILocation(line: 139, column: 3, scope: !1816)
!1827 = !{!"890"}
!1828 = !DILocation(line: 142, column: 12, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !87, line: 139, column: 33)
!1830 = !{!"891"}
!1831 = !DILocation(line: 142, column: 8, scope: !1829)
!1832 = !{!"892"}
!1833 = !{!"893"}
!1834 = !{!"894"}
!1835 = !DILocation(line: 142, column: 19, scope: !1829)
!1836 = !{!"895"}
!1837 = !{!"896"}
!1838 = !{!"897"}
!1839 = !{!"898"}
!1840 = !{!"899"}
!1841 = !DILocation(line: 142, column: 17, scope: !1829)
!1842 = !{!"900"}
!1843 = !DILocation(line: 143, column: 7, scope: !1829)
!1844 = !{!"901"}
!1845 = !{!"902"}
!1846 = !{!"903"}
!1847 = !{!"904"}
!1848 = !{!"905"}
!1849 = !DILocation(line: 143, column: 5, scope: !1829)
!1850 = !{!"906"}
!1851 = !DILocation(line: 143, column: 26, scope: !1829)
!1852 = !{!"907"}
!1853 = !DILocalVariable(name: "z", scope: !1829, file: !87, line: 140, type: !36)
!1854 = !DILocation(line: 0, scope: !1829)
!1855 = !{!"908"}
!1856 = !DILocation(line: 144, column: 10, scope: !1829)
!1857 = !{!"909"}
!1858 = !{!"910"}
!1859 = !DILocation(line: 145, column: 17, scope: !1829)
!1860 = !{!"911"}
!1861 = !DILocation(line: 145, column: 15, scope: !1829)
!1862 = !{!"912"}
!1863 = !DILocation(line: 145, column: 8, scope: !1829)
!1864 = !{!"913"}
!1865 = !DILocation(line: 145, column: 4, scope: !1829)
!1866 = !{!"914"}
!1867 = !DILocation(line: 145, column: 13, scope: !1829)
!1868 = !{!"915"}
!1869 = !DILocation(line: 146, column: 12, scope: !1829)
!1870 = !{!"916"}
!1871 = !DILocation(line: 146, column: 8, scope: !1829)
!1872 = !{!"917"}
!1873 = !{!"918"}
!1874 = !{!"919"}
!1875 = !DILocation(line: 146, column: 19, scope: !1829)
!1876 = !{!"920"}
!1877 = !{!"921"}
!1878 = !{!"922"}
!1879 = !{!"923"}
!1880 = !{!"924"}
!1881 = !DILocation(line: 146, column: 17, scope: !1829)
!1882 = !{!"925"}
!1883 = !DILocation(line: 147, column: 7, scope: !1829)
!1884 = !{!"926"}
!1885 = !{!"927"}
!1886 = !{!"928"}
!1887 = !{!"929"}
!1888 = !{!"930"}
!1889 = !DILocation(line: 147, column: 5, scope: !1829)
!1890 = !{!"931"}
!1891 = !DILocation(line: 147, column: 26, scope: !1829)
!1892 = !{!"932"}
!1893 = !{!"933"}
!1894 = !DILocation(line: 148, column: 10, scope: !1829)
!1895 = !{!"934"}
!1896 = !{!"935"}
!1897 = !DILocation(line: 149, column: 17, scope: !1829)
!1898 = !{!"936"}
!1899 = !DILocation(line: 149, column: 15, scope: !1829)
!1900 = !{!"937"}
!1901 = !DILocation(line: 149, column: 8, scope: !1829)
!1902 = !{!"938"}
!1903 = !DILocation(line: 149, column: 4, scope: !1829)
!1904 = !{!"939"}
!1905 = !DILocation(line: 149, column: 13, scope: !1829)
!1906 = !{!"940"}
!1907 = !DILocation(line: 150, column: 12, scope: !1829)
!1908 = !{!"941"}
!1909 = !DILocation(line: 150, column: 8, scope: !1829)
!1910 = !{!"942"}
!1911 = !{!"943"}
!1912 = !{!"944"}
!1913 = !DILocation(line: 150, column: 19, scope: !1829)
!1914 = !{!"945"}
!1915 = !{!"946"}
!1916 = !{!"947"}
!1917 = !{!"948"}
!1918 = !{!"949"}
!1919 = !DILocation(line: 150, column: 17, scope: !1829)
!1920 = !{!"950"}
!1921 = !DILocation(line: 151, column: 7, scope: !1829)
!1922 = !{!"951"}
!1923 = !{!"952"}
!1924 = !{!"953"}
!1925 = !{!"954"}
!1926 = !{!"955"}
!1927 = !DILocation(line: 151, column: 5, scope: !1829)
!1928 = !{!"956"}
!1929 = !DILocation(line: 151, column: 26, scope: !1829)
!1930 = !{!"957"}
!1931 = !{!"958"}
!1932 = !DILocation(line: 152, column: 10, scope: !1829)
!1933 = !{!"959"}
!1934 = !{!"960"}
!1935 = !DILocation(line: 153, column: 17, scope: !1829)
!1936 = !{!"961"}
!1937 = !DILocation(line: 153, column: 15, scope: !1829)
!1938 = !{!"962"}
!1939 = !DILocation(line: 153, column: 8, scope: !1829)
!1940 = !{!"963"}
!1941 = !DILocation(line: 153, column: 4, scope: !1829)
!1942 = !{!"964"}
!1943 = !DILocation(line: 153, column: 13, scope: !1829)
!1944 = !{!"965"}
!1945 = !DILocation(line: 154, column: 12, scope: !1829)
!1946 = !{!"966"}
!1947 = !DILocation(line: 154, column: 8, scope: !1829)
!1948 = !{!"967"}
!1949 = !{!"968"}
!1950 = !{!"969"}
!1951 = !DILocation(line: 154, column: 19, scope: !1829)
!1952 = !{!"970"}
!1953 = !{!"971"}
!1954 = !{!"972"}
!1955 = !{!"973"}
!1956 = !{!"974"}
!1957 = !DILocation(line: 154, column: 17, scope: !1829)
!1958 = !{!"975"}
!1959 = !DILocation(line: 155, column: 7, scope: !1829)
!1960 = !{!"976"}
!1961 = !{!"977"}
!1962 = !{!"978"}
!1963 = !{!"979"}
!1964 = !{!"980"}
!1965 = !DILocation(line: 155, column: 5, scope: !1829)
!1966 = !{!"981"}
!1967 = !DILocation(line: 155, column: 26, scope: !1829)
!1968 = !{!"982"}
!1969 = !{!"983"}
!1970 = !DILocation(line: 156, column: 10, scope: !1829)
!1971 = !{!"984"}
!1972 = !{!"985"}
!1973 = !DILocation(line: 157, column: 17, scope: !1829)
!1974 = !{!"986"}
!1975 = !DILocation(line: 157, column: 15, scope: !1829)
!1976 = !{!"987"}
!1977 = !DILocation(line: 157, column: 8, scope: !1829)
!1978 = !{!"988"}
!1979 = !DILocation(line: 157, column: 4, scope: !1829)
!1980 = !{!"989"}
!1981 = !DILocation(line: 157, column: 13, scope: !1829)
!1982 = !{!"990"}
!1983 = !DILocation(line: 158, column: 3, scope: !1829)
!1984 = !{!"991"}
!1985 = !DILocation(line: 139, column: 27, scope: !1824)
!1986 = !{!"992"}
!1987 = !{!"993"}
!1988 = !DILocation(line: 139, column: 3, scope: !1824)
!1989 = distinct !{!1989, !1826, !1990, !624}
!1990 = !DILocation(line: 158, column: 3, scope: !1816)
!1991 = !{!"994"}
!1992 = !DILocation(line: 160, column: 3, scope: !1782)
!1993 = !{!"995"}
!1994 = !{!"996"}
!1995 = !{!"997"}
!1996 = !{!"998"}
!1997 = !{!"999"}
!1998 = !DILocation(line: 160, column: 12, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !87, line: 160, column: 3)
!2000 = distinct !DILexicalBlock(scope: !1782, file: !87, line: 160, column: 3)
!2001 = !{!"1000"}
!2002 = !DILocation(line: 160, column: 3, scope: !2000)
!2003 = !{!"1001"}
!2004 = !DILocation(line: 163, column: 12, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1999, file: !87, line: 160, column: 25)
!2006 = !{!"1002"}
!2007 = !DILocation(line: 163, column: 8, scope: !2005)
!2008 = !{!"1003"}
!2009 = !{!"1004"}
!2010 = !{!"1005"}
!2011 = !DILocation(line: 163, column: 19, scope: !2005)
!2012 = !{!"1006"}
!2013 = !{!"1007"}
!2014 = !{!"1008"}
!2015 = !{!"1009"}
!2016 = !{!"1010"}
!2017 = !DILocation(line: 163, column: 17, scope: !2005)
!2018 = !{!"1011"}
!2019 = !DILocation(line: 164, column: 7, scope: !2005)
!2020 = !{!"1012"}
!2021 = !{!"1013"}
!2022 = !{!"1014"}
!2023 = !{!"1015"}
!2024 = !{!"1016"}
!2025 = !DILocation(line: 164, column: 5, scope: !2005)
!2026 = !{!"1017"}
!2027 = !DILocation(line: 164, column: 26, scope: !2005)
!2028 = !{!"1018"}
!2029 = !DILocalVariable(name: "z", scope: !2005, file: !87, line: 161, type: !36)
!2030 = !DILocation(line: 0, scope: !2005)
!2031 = !{!"1019"}
!2032 = !DILocation(line: 165, column: 10, scope: !2005)
!2033 = !{!"1020"}
!2034 = !{!"1021"}
!2035 = !DILocation(line: 166, column: 17, scope: !2005)
!2036 = !{!"1022"}
!2037 = !DILocation(line: 166, column: 15, scope: !2005)
!2038 = !{!"1023"}
!2039 = !DILocation(line: 166, column: 8, scope: !2005)
!2040 = !{!"1024"}
!2041 = !DILocation(line: 166, column: 4, scope: !2005)
!2042 = !{!"1025"}
!2043 = !DILocation(line: 166, column: 13, scope: !2005)
!2044 = !{!"1026"}
!2045 = !DILocation(line: 167, column: 3, scope: !2005)
!2046 = !{!"1027"}
!2047 = !DILocation(line: 160, column: 21, scope: !1999)
!2048 = !{!"1028"}
!2049 = !{!"1029"}
!2050 = !DILocation(line: 160, column: 3, scope: !1999)
!2051 = distinct !{!2051, !2002, !2052, !624}
!2052 = !DILocation(line: 167, column: 3, scope: !2000)
!2053 = !{!"1030"}
!2054 = !DILocation(line: 169, column: 11, scope: !1782)
!2055 = !{!"1031"}
!2056 = !DILocalVariable(name: "zh", scope: !1782, file: !87, line: 40, type: !36)
!2057 = !{!"1032"}
!2058 = !DILocation(line: 170, column: 15, scope: !1782)
!2059 = !{!"1033"}
!2060 = !DILocation(line: 170, column: 12, scope: !1782)
!2061 = !{!"1034"}
!2062 = !DILocation(line: 170, column: 3, scope: !1782)
!2063 = !{!"1035"}
!2064 = !DILocation(line: 170, column: 10, scope: !1782)
!2065 = !{!"1036"}
!2066 = !DILocation(line: 171, column: 11, scope: !1782)
!2067 = !{!"1037"}
!2068 = !{!"1038"}
!2069 = !DILocation(line: 172, column: 2, scope: !1782)
!2070 = !{!"1039"}
!2071 = !DILocation(line: 39, column: 25, scope: !1777)
!2072 = !{!"1040"}
!2073 = !{!"1041"}
!2074 = !DILocation(line: 39, column: 2, scope: !1777)
!2075 = distinct !{!2075, !1779, !2076, !624}
!2076 = !DILocation(line: 172, column: 2, scope: !1769)
!2077 = !{!"1042"}
!2078 = !DILocation(line: 177, column: 9, scope: !1729)
!2079 = !{!"1043"}
!2080 = !{!"1044"}
!2081 = !DILocation(line: 177, column: 2, scope: !1729)
!2082 = !{!"1045"}
!2083 = !DILocation(line: 177, column: 7, scope: !1729)
!2084 = !{!"1046"}
!2085 = !DILocation(line: 183, column: 19, scope: !1729)
!2086 = !{!"1047"}
!2087 = !DILocation(line: 183, column: 36, scope: !1729)
!2088 = !{!"1048"}
!2089 = !DILocation(line: 183, column: 32, scope: !1729)
!2090 = !{!"1049"}
!2091 = !DILocation(line: 183, column: 30, scope: !1729)
!2092 = !{!"1050"}
!2093 = !DILocation(line: 183, column: 2, scope: !1729)
!2094 = !{!"1051"}
!2095 = !DILocation(line: 184, column: 1, scope: !1729)
!2096 = !{!"1052"}
!2097 = distinct !DISubprogram(name: "br_i15_zero", scope: !945, file: !945, line: 1537, type: !946, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !4)
!2098 = !DILocalVariable(name: "x", arg: 1, scope: !2097, file: !945, line: 1537, type: !948)
!2099 = !DILocation(line: 0, scope: !2097)
!2100 = !{!"1053"}
!2101 = !DILocalVariable(name: "bit_len", arg: 2, scope: !2097, file: !945, line: 1537, type: !19)
!2102 = !{!"1054"}
!2103 = !DILocation(line: 1539, column: 5, scope: !2097)
!2104 = !{!"1055"}
!2105 = !{!"1056"}
!2106 = !DILocation(line: 1539, column: 8, scope: !2097)
!2107 = !{!"1057"}
!2108 = !DILocation(line: 1540, column: 2, scope: !2097)
!2109 = !{!"1058"}
!2110 = !DILocation(line: 1540, column: 17, scope: !2097)
!2111 = !{!"1059"}
!2112 = !DILocation(line: 1540, column: 25, scope: !2097)
!2113 = !{!"1060"}
!2114 = !DILocation(line: 1540, column: 31, scope: !2097)
!2115 = !{!"1061"}
!2116 = !DILocation(line: 1540, column: 15, scope: !2097)
!2117 = !{!"1062"}
!2118 = !DILocation(line: 1540, column: 37, scope: !2097)
!2119 = !{!"1063"}
!2120 = !{!"1064"}
!2121 = !DILocation(line: 1541, column: 1, scope: !2097)
!2122 = !{!"1065"}
!2123 = distinct !DISubprogram(name: "NEQ", scope: !945, file: !945, line: 791, type: !1543, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !4)
!2124 = !DILocalVariable(name: "x", arg: 1, scope: !2123, file: !945, line: 791, type: !36)
!2125 = !DILocation(line: 0, scope: !2123)
!2126 = !{!"1066"}
!2127 = !DILocalVariable(name: "y", arg: 2, scope: !2123, file: !945, line: 791, type: !36)
!2128 = !{!"1067"}
!2129 = !DILocation(line: 795, column: 8, scope: !2123)
!2130 = !{!"1068"}
!2131 = !DILocalVariable(name: "q", scope: !2123, file: !945, line: 793, type: !36)
!2132 = !{!"1069"}
!2133 = !DILocation(line: 796, column: 14, scope: !2123)
!2134 = !{!"1070"}
!2135 = !DILocation(line: 796, column: 12, scope: !2123)
!2136 = !{!"1071"}
!2137 = !DILocation(line: 796, column: 18, scope: !2123)
!2138 = !{!"1072"}
!2139 = !DILocation(line: 796, column: 2, scope: !2123)
!2140 = !{!"1073"}
!2141 = distinct !DISubprogram(name: "NOT", scope: !945, file: !945, line: 761, type: !975, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !4)
!2142 = !DILocalVariable(name: "ctl", arg: 1, scope: !2141, file: !945, line: 761, type: !36)
!2143 = !DILocation(line: 0, scope: !2141)
!2144 = !{!"1074"}
!2145 = !DILocation(line: 763, column: 13, scope: !2141)
!2146 = !{!"1075"}
!2147 = !DILocation(line: 763, column: 2, scope: !2141)
!2148 = !{!"1076"}
!2149 = distinct !DISubprogram(name: "br_i15_sub", scope: !90, file: !90, line: 29, type: !1167, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!2150 = !DILocalVariable(name: "a", arg: 1, scope: !2149, file: !90, line: 29, type: !948)
!2151 = !DILocation(line: 0, scope: !2149)
!2152 = !{!"1077"}
!2153 = !DILocalVariable(name: "b", arg: 2, scope: !2149, file: !90, line: 29, type: !1064)
!2154 = !{!"1078"}
!2155 = !DILocalVariable(name: "ctl", arg: 3, scope: !2149, file: !90, line: 29, type: !36)
!2156 = !{!"1079"}
!2157 = !DILocalVariable(name: "cc", scope: !2149, file: !90, line: 31, type: !36)
!2158 = !{!"1080"}
!2159 = !DILocation(line: 35, column: 7, scope: !2149)
!2160 = !{!"1081"}
!2161 = !{!"1082"}
!2162 = !{!"1083"}
!2163 = !DILocation(line: 35, column: 12, scope: !2149)
!2164 = !{!"1084"}
!2165 = !DILocation(line: 35, column: 18, scope: !2149)
!2166 = !{!"1085"}
!2167 = !DILocation(line: 35, column: 6, scope: !2149)
!2168 = !{!"1086"}
!2169 = !DILocalVariable(name: "m", scope: !2149, file: !90, line: 32, type: !46)
!2170 = !{!"1087"}
!2171 = !DILocalVariable(name: "u", scope: !2149, file: !90, line: 32, type: !46)
!2172 = !{!"1088"}
!2173 = !DILocation(line: 36, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2149, file: !90, line: 36, column: 2)
!2175 = !{!"1089"}
!2176 = !{!"1090"}
!2177 = !DILocation(line: 0, scope: !2174)
!2178 = !{!"1091"}
!2179 = !{!"1092"}
!2180 = !{!"1093"}
!2181 = !DILocation(line: 36, column: 16, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2174, file: !90, line: 36, column: 2)
!2183 = !{!"1094"}
!2184 = !DILocation(line: 36, column: 2, scope: !2174)
!2185 = !{!"1095"}
!2186 = !DILocation(line: 39, column: 8, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2182, file: !90, line: 36, column: 27)
!2188 = !{!"1096"}
!2189 = !{!"1097"}
!2190 = !{!"1098"}
!2191 = !DILocalVariable(name: "aw", scope: !2187, file: !90, line: 37, type: !36)
!2192 = !DILocation(line: 0, scope: !2187)
!2193 = !{!"1099"}
!2194 = !DILocation(line: 40, column: 8, scope: !2187)
!2195 = !{!"1100"}
!2196 = !{!"1101"}
!2197 = !{!"1102"}
!2198 = !DILocalVariable(name: "bw", scope: !2187, file: !90, line: 37, type: !36)
!2199 = !{!"1103"}
!2200 = !DILocation(line: 41, column: 12, scope: !2187)
!2201 = !{!"1104"}
!2202 = !DILocation(line: 41, column: 17, scope: !2187)
!2203 = !{!"1105"}
!2204 = !DILocalVariable(name: "naw", scope: !2187, file: !90, line: 37, type: !36)
!2205 = !{!"1106"}
!2206 = !DILocation(line: 42, column: 12, scope: !2187)
!2207 = !{!"1107"}
!2208 = !{!"1108"}
!2209 = !DILocation(line: 43, column: 23, scope: !2187)
!2210 = !{!"1109"}
!2211 = !DILocation(line: 43, column: 10, scope: !2187)
!2212 = !{!"1110"}
!2213 = !{!"1111"}
!2214 = !DILocation(line: 43, column: 3, scope: !2187)
!2215 = !{!"1112"}
!2216 = !DILocation(line: 43, column: 8, scope: !2187)
!2217 = !{!"1113"}
!2218 = !DILocation(line: 44, column: 2, scope: !2187)
!2219 = !{!"1114"}
!2220 = !DILocation(line: 36, column: 23, scope: !2182)
!2221 = !{!"1115"}
!2222 = !{!"1116"}
!2223 = !DILocation(line: 36, column: 2, scope: !2182)
!2224 = distinct !{!2224, !2184, !2225, !624}
!2225 = !DILocation(line: 44, column: 2, scope: !2174)
!2226 = !{!"1117"}
!2227 = !DILocation(line: 45, column: 2, scope: !2149)
!2228 = !{!"1118"}
!2229 = distinct !DISubprogram(name: "MUX", scope: !945, file: !945, line: 770, type: !1249, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!2230 = !DILocalVariable(name: "ctl", arg: 1, scope: !2229, file: !945, line: 770, type: !36)
!2231 = !DILocation(line: 0, scope: !2229)
!2232 = !{!"1119"}
!2233 = !DILocalVariable(name: "x", arg: 2, scope: !2229, file: !945, line: 770, type: !36)
!2234 = !{!"1120"}
!2235 = !DILocalVariable(name: "y", arg: 3, scope: !2229, file: !945, line: 770, type: !36)
!2236 = !{!"1121"}
!2237 = !DILocation(line: 772, column: 14, scope: !2229)
!2238 = !{!"1122"}
!2239 = !DILocation(line: 772, column: 24, scope: !2229)
!2240 = !{!"1123"}
!2241 = !DILocation(line: 772, column: 19, scope: !2229)
!2242 = !{!"1124"}
!2243 = !DILocation(line: 772, column: 11, scope: !2229)
!2244 = !{!"1125"}
!2245 = !DILocation(line: 772, column: 2, scope: !2229)
!2246 = !{!"1126"}
