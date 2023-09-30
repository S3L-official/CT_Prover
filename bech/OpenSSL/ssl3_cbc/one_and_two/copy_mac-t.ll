; ModuleID = 'copy_mac-k.ll'
source_filename = "copy_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ssl3_record_st = type { i32, i8*, i32, i8* }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @ssl3_cbc_copy_mac(i8* %0, %struct.ssl3_record_st* %1, i32 %2, i32 %3) #0 !dbg !14 {
  %5 = alloca [128 x i8], align 16, !psr.id !30
  call void @llvm.dbg.value(metadata i8* %0, metadata !31, metadata !DIExpression()), !dbg !32, !psr.id !33
  call void @llvm.dbg.value(metadata %struct.ssl3_record_st* %1, metadata !34, metadata !DIExpression()), !dbg !32, !psr.id !35
  call void @llvm.dbg.value(metadata i32 %2, metadata !36, metadata !DIExpression()), !dbg !32, !psr.id !37
  call void @llvm.dbg.value(metadata i32 %3, metadata !38, metadata !DIExpression()), !dbg !32, !psr.id !39
  call void @llvm.dbg.declare(metadata [128 x i8]* %5, metadata !40, metadata !DIExpression()), !dbg !44, !psr.id !45
  %6 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !46, !psr.id !47
  %7 = load i32, i32* %6, align 8, !dbg !46, !psr.id !48
  call void @llvm.dbg.value(metadata i32 %7, metadata !49, metadata !DIExpression()), !dbg !32, !psr.id !50
  %8 = sub i32 %7, %2, !dbg !51, !psr.id !52
  call void @llvm.dbg.value(metadata i32 %8, metadata !53, metadata !DIExpression()), !dbg !32, !psr.id !54
  call void @llvm.dbg.value(metadata i32 0, metadata !55, metadata !DIExpression()), !dbg !32, !psr.id !56
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0, !dbg !57, !psr.id !58
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0, !dbg !59, !psr.id !60
  %11 = ptrtoint i8* %10 to i64, !dbg !61, !psr.id !62
  %12 = sub i64 0, %11, !dbg !63, !psr.id !64
  %13 = and i64 %12, 63, !dbg !65, !psr.id !66
  %14 = getelementptr inbounds i8, i8* %9, i64 %13, !dbg !67, !psr.id !68
  call void @llvm.dbg.value(metadata i8* %14, metadata !69, metadata !DIExpression()), !dbg !32, !psr.id !70
  %15 = add i32 %2, 255, !dbg !71, !psr.id !73
  %16 = add i32 %15, 1, !dbg !74, !psr.id !75
  %17 = icmp ugt i32 %3, %16, !dbg !76, !psr.id !77
  br i1 %17, label %18, label %22, !dbg !78, !psr.id !79

18:                                               ; preds = %4
  %19 = add i32 %2, 255, !dbg !80, !psr.id !81
  %20 = add i32 %19, 1, !dbg !82, !psr.id !83
  %21 = sub i32 %3, %20, !dbg !84, !psr.id !85
  call void @llvm.dbg.value(metadata i32 %21, metadata !55, metadata !DIExpression()), !dbg !32, !psr.id !86
  br label %22, !dbg !87, !psr.id !88

22:                                               ; preds = %18, %4
  %.04 = phi i32 [ %21, %18 ], [ 0, %4 ], !dbg !32, !psr.id !89
  call void @llvm.dbg.value(metadata i32 %.04, metadata !55, metadata !DIExpression()), !dbg !32, !psr.id !90
  %23 = lshr i32 %2, 1, !dbg !91, !psr.id !92
  call void @llvm.dbg.value(metadata i32 %23, metadata !93, metadata !DIExpression()), !dbg !32, !psr.id !94
  %24 = shl i32 %23, 24, !dbg !95, !psr.id !96
  call void @llvm.dbg.value(metadata i32 %24, metadata !93, metadata !DIExpression()), !dbg !32, !psr.id !97
  %25 = add i32 %24, %8, !dbg !98, !psr.id !99
  %26 = sub i32 %25, %.04, !dbg !100, !psr.id !101
  %27 = urem i32 %26, %2, !dbg !102, !psr.id !103
  call void @llvm.dbg.value(metadata i32 %27, metadata !104, metadata !DIExpression()), !dbg !32, !psr.id !105
  %28 = zext i32 %2 to i64, !dbg !106, !psr.id !107
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 %28, i1 false), !dbg !108, !psr.id !109
  call void @llvm.dbg.value(metadata i32 %.04, metadata !110, metadata !DIExpression()), !dbg !32, !psr.id !111
  call void @llvm.dbg.value(metadata i32 0, metadata !112, metadata !DIExpression()), !dbg !32, !psr.id !113
  br label %29, !dbg !114, !psr.id !116

29:                                               ; preds = %54, %22
  %.02 = phi i32 [ %.04, %22 ], [ %55, %54 ], !dbg !117, !psr.id !118
  %.01 = phi i32 [ 0, %22 ], [ %53, %54 ], !dbg !117, !psr.id !119
  call void @llvm.dbg.value(metadata i32 %.01, metadata !112, metadata !DIExpression()), !dbg !32, !psr.id !120
  call void @llvm.dbg.value(metadata i32 %.02, metadata !110, metadata !DIExpression()), !dbg !32, !psr.id !121
  %30 = icmp ult i32 %.02, %3, !dbg !122, !psr.id !124
  br i1 %30, label %31, label %56, !dbg !125, !psr.id !126

31:                                               ; preds = %29
  %32 = call zeroext i8 @constant_time_ge_8(i32 %.02, i32 %8), !dbg !127, !psr.id !129
  call void @llvm.dbg.value(metadata i8 %32, metadata !130, metadata !DIExpression()), !dbg !131, !psr.id !132
  %33 = call zeroext i8 @constant_time_ge_8(i32 %.02, i32 %7), !dbg !133, !psr.id !134
  call void @llvm.dbg.value(metadata i8 %33, metadata !135, metadata !DIExpression()), !dbg !131, !psr.id !136
  %34 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1, !dbg !137, !psr.id !138
  %35 = load i8*, i8** %34, align 8, !dbg !137, !psr.id !139, !PointTainted !140
  %36 = zext i32 %.02 to i64, !dbg !141, !psr.id !142
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !141, !psr.id !143, !PointTainted !140
  %38 = load i8, i8* %37, align 1, !dbg !141, !psr.id !144, !ValueTainted !145
  call void @llvm.dbg.value(metadata i8 %38, metadata !146, metadata !DIExpression()), !dbg !131, !psr.id !147
  %39 = zext i8 %38 to i32, !dbg !148, !psr.id !149, !ValueTainted !145
  %40 = zext i8 %32 to i32, !dbg !150, !psr.id !151
  %41 = and i32 %39, %40, !dbg !152, !psr.id !153, !ValueTainted !145
  %42 = zext i8 %33 to i32, !dbg !154, !psr.id !155
  %43 = xor i32 %42, -1, !dbg !156, !psr.id !157
  %44 = and i32 %41, %43, !dbg !158, !psr.id !159, !ValueTainted !145
  %45 = add i32 %.01, 1, !dbg !160, !psr.id !161
  call void @llvm.dbg.value(metadata i32 %45, metadata !112, metadata !DIExpression()), !dbg !32, !psr.id !162
  %46 = zext i32 %.01 to i64, !dbg !163, !psr.id !164
  %47 = getelementptr inbounds i8, i8* %14, i64 %46, !dbg !163, !psr.id !165, !PointTainted !140
  %48 = load i8, i8* %47, align 1, !dbg !166, !psr.id !167, !ValueTainted !145
  %49 = zext i8 %48 to i32, !dbg !166, !psr.id !168, !ValueTainted !145
  %50 = or i32 %49, %44, !dbg !166, !psr.id !169, !ValueTainted !145
  %51 = trunc i32 %50 to i8, !dbg !166, !psr.id !170, !ValueTainted !145
  store i8 %51, i8* %47, align 1, !dbg !166, !psr.id !171
  %52 = call i32 @constant_time_lt(i32 %45, i32 %2), !dbg !172, !psr.id !173
  %53 = and i32 %45, %52, !dbg !174, !psr.id !175
  call void @llvm.dbg.value(metadata i32 %53, metadata !112, metadata !DIExpression()), !dbg !32, !psr.id !176
  br label %54, !dbg !177, !psr.id !178

54:                                               ; preds = %31
  %55 = add i32 %.02, 1, !dbg !179, !psr.id !180
  call void @llvm.dbg.value(metadata i32 %55, metadata !110, metadata !DIExpression()), !dbg !32, !psr.id !181
  br label %29, !dbg !182, !llvm.loop !183, !psr.id !186

56:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 0, metadata !112, metadata !DIExpression()), !dbg !32, !psr.id !187
  call void @llvm.dbg.value(metadata i32 0, metadata !110, metadata !DIExpression()), !dbg !32, !psr.id !188
  br label %57, !dbg !189, !psr.id !191

57:                                               ; preds = %73, %56
  %.13 = phi i32 [ 0, %56 ], [ %74, %73 ], !dbg !192, !psr.id !193
  %.1 = phi i32 [ 0, %56 ], [ %68, %73 ], !dbg !32, !psr.id !194
  %.0 = phi i32 [ %27, %56 ], [ %72, %73 ], !dbg !32, !psr.id !195
  call void @llvm.dbg.value(metadata i32 %.0, metadata !104, metadata !DIExpression()), !dbg !32, !psr.id !196
  call void @llvm.dbg.value(metadata i32 %.1, metadata !112, metadata !DIExpression()), !dbg !32, !psr.id !197
  call void @llvm.dbg.value(metadata i32 %.13, metadata !110, metadata !DIExpression()), !dbg !32, !psr.id !198
  %58 = icmp ult i32 %.13, %2, !dbg !199, !psr.id !201
  br i1 %58, label %59, label %75, !dbg !202, !psr.id !203

59:                                               ; preds = %57
  %60 = xor i32 %.0, 32, !dbg !204, !psr.id !206
  %61 = zext i32 %60 to i64, !dbg !207, !psr.id !208
  %62 = getelementptr inbounds i8, i8* %14, i64 %61, !dbg !207, !psr.id !209
  %63 = load volatile i8, i8* %62, align 1, !dbg !207, !psr.id !210
  %64 = add i32 %.0, 1, !dbg !211, !psr.id !212
  call void @llvm.dbg.value(metadata i32 %64, metadata !104, metadata !DIExpression()), !dbg !32, !psr.id !213
  %65 = zext i32 %.0 to i64, !dbg !214, !psr.id !215
  %66 = getelementptr inbounds i8, i8* %14, i64 %65, !dbg !214, !psr.id !216
  %67 = load i8, i8* %66, align 1, !dbg !214, !psr.id !217, !ValueTainted !145
  %68 = add i32 %.1, 1, !dbg !218, !psr.id !219
  call void @llvm.dbg.value(metadata i32 %68, metadata !112, metadata !DIExpression()), !dbg !32, !psr.id !220
  %69 = zext i32 %.1 to i64, !dbg !221, !psr.id !222
  %70 = getelementptr inbounds i8, i8* %0, i64 %69, !dbg !221, !psr.id !223, !PointTainted !140
  store i8 %67, i8* %70, align 1, !dbg !224, !psr.id !225
  %71 = call i32 @constant_time_lt(i32 %64, i32 %2), !dbg !226, !psr.id !227
  %72 = and i32 %64, %71, !dbg !228, !psr.id !229
  call void @llvm.dbg.value(metadata i32 %72, metadata !104, metadata !DIExpression()), !dbg !32, !psr.id !230
  br label %73, !dbg !231, !psr.id !232

73:                                               ; preds = %59
  %74 = add i32 %.13, 1, !dbg !233, !psr.id !234
  call void @llvm.dbg.value(metadata i32 %74, metadata !110, metadata !DIExpression()), !dbg !32, !psr.id !235
  br label %57, !dbg !236, !llvm.loop !237, !psr.id !239

75:                                               ; preds = %57
  ret void, !dbg !240, !psr.id !241
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @constant_time_ge_8(i32 %0, i32 %1) #0 !dbg !242 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !246, metadata !DIExpression()), !dbg !247, !psr.id !248
  call void @llvm.dbg.value(metadata i32 %1, metadata !249, metadata !DIExpression()), !dbg !247, !psr.id !250
  %3 = call i32 @constant_time_ge(i32 %0, i32 %1), !dbg !251, !psr.id !252
  %4 = trunc i32 %3 to i8, !dbg !253, !psr.id !254
  ret i8 %4, !dbg !255, !psr.id !256
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_lt(i32 %0, i32 %1) #0 !dbg !257 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !260, metadata !DIExpression()), !dbg !261, !psr.id !262
  call void @llvm.dbg.value(metadata i32 %1, metadata !263, metadata !DIExpression()), !dbg !261, !psr.id !264
  %3 = xor i32 %0, %1, !dbg !265, !psr.id !266
  %4 = sub i32 %0, %1, !dbg !267, !psr.id !268
  %5 = xor i32 %4, %1, !dbg !269, !psr.id !270
  %6 = or i32 %3, %5, !dbg !271, !psr.id !272
  %7 = xor i32 %0, %6, !dbg !273, !psr.id !274
  %8 = call i32 @constant_time_msb(i32 %7), !dbg !275, !psr.id !276
  ret i32 %8, !dbg !277, !psr.id !278
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy_mac_wrapper(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 !dbg !279 {
  %6 = alloca %struct.ssl3_record_st, align 8, !psr.id !282
  call void @llvm.dbg.value(metadata i8* %0, metadata !283, metadata !DIExpression()), !dbg !284, !psr.id !285
  call void @llvm.dbg.value(metadata i8* %1, metadata !286, metadata !DIExpression()), !dbg !284, !psr.id !287
  call void @llvm.dbg.value(metadata i32 %2, metadata !288, metadata !DIExpression()), !dbg !284, !psr.id !289
  call void @llvm.dbg.value(metadata i32 %3, metadata !290, metadata !DIExpression()), !dbg !284, !psr.id !291
  call void @llvm.dbg.value(metadata i32 %4, metadata !292, metadata !DIExpression()), !dbg !284, !psr.id !293
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !294, !psr.id !295
  call void @public_in(%struct.smack_value* %7), !dbg !296, !psr.id !297
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !298, !psr.id !299
  call void @public_in(%struct.smack_value* %8), !dbg !300, !psr.id !301
  %9 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %2), !dbg !302, !psr.id !303
  call void @public_in(%struct.smack_value* %9), !dbg !304, !psr.id !305
  %10 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %3), !dbg !306, !psr.id !307
  call void @public_in(%struct.smack_value* %10), !dbg !308, !psr.id !309
  %11 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %4), !dbg !310, !psr.id !311
  call void @public_in(%struct.smack_value* %11), !dbg !312, !psr.id !313
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %6, metadata !314, metadata !DIExpression()), !dbg !315, !psr.id !316
  %12 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 0, !dbg !317, !psr.id !318
  store i32 %2, i32* %12, align 8, !dbg !317, !psr.id !319
  %13 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 1, !dbg !317, !psr.id !320
  store i8* %1, i8** %13, align 8, !dbg !317, !psr.id !321
  %14 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 2, !dbg !317, !psr.id !322
  store i32 0, i32* %14, align 8, !dbg !317, !psr.id !323
  %15 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 3, !dbg !317, !psr.id !324
  store i8* null, i8** %15, align 8, !dbg !317, !psr.id !325
  call void @ssl3_cbc_copy_mac(i8* %0, %struct.ssl3_record_st* %6, i32 %3, i32 %4), !dbg !326, !psr.id !327
  ret void, !dbg !328, !psr.id !329
}

declare dso_local void @public_in(%struct.smack_value*) #3

declare dso_local %struct.smack_value* @__SMACK_value(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @tmp(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 !dbg !330 {
  %6 = alloca %struct.ssl3_record_st, align 8, !psr.id !331
  call void @llvm.dbg.value(metadata i8* %0, metadata !332, metadata !DIExpression()), !dbg !333, !psr.id !334
  call void @llvm.dbg.value(metadata i8* %1, metadata !335, metadata !DIExpression()), !dbg !333, !psr.id !336
  call void @llvm.dbg.value(metadata i32 %2, metadata !337, metadata !DIExpression()), !dbg !333, !psr.id !338
  call void @llvm.dbg.value(metadata i32 %3, metadata !339, metadata !DIExpression()), !dbg !333, !psr.id !340
  call void @llvm.dbg.value(metadata i32 %4, metadata !341, metadata !DIExpression()), !dbg !333, !psr.id !342
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %6, metadata !343, metadata !DIExpression()), !dbg !344, !psr.id !345
  %7 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 0, !dbg !346, !psr.id !347
  store i32 %2, i32* %7, align 8, !dbg !346, !psr.id !348
  %8 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 1, !dbg !346, !psr.id !349
  store i8* %1, i8** %8, align 8, !dbg !346, !psr.id !350
  %9 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 2, !dbg !346, !psr.id !351
  store i32 0, i32* %9, align 8, !dbg !346, !psr.id !352
  %10 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 3, !dbg !346, !psr.id !353
  store i8* null, i8** %10, align 8, !dbg !346, !psr.id !354
  call void @ssl3_cbc_copy_mac(i8* %0, %struct.ssl3_record_st* %6, i32 %3, i32 %4), !dbg !355, !psr.id !356
  ret void, !dbg !357, !psr.id !358
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy_mac_wrapper_t() #0 !dbg !359 {
  %1 = call i8* (...) @getchar(), !dbg !362, !psr.id !363
  call void @llvm.dbg.value(metadata i8* %1, metadata !364, metadata !DIExpression()), !dbg !365, !psr.id !366
  %2 = call i8* (...) @getchar2(), !dbg !367, !psr.id !368
  call void @llvm.dbg.value(metadata i8* %2, metadata !369, metadata !DIExpression()), !dbg !365, !psr.id !370
  call void @llvm.dbg.value(metadata i32 128, metadata !371, metadata !DIExpression()), !dbg !365, !psr.id !372
  call void @llvm.dbg.value(metadata i32 64, metadata !373, metadata !DIExpression()), !dbg !365, !psr.id !374
  call void @llvm.dbg.value(metadata i32 64, metadata !375, metadata !DIExpression()), !dbg !365, !psr.id !376
  call void @tmp(i8* %1, i8* %2, i32 128, i32 64, i32 64), !dbg !377, !psr.id !378
  ret void, !dbg !379, !psr.id !380
}

declare dso_local i8* @getchar(...) #3

declare dso_local i8* @getchar2(...) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_ge(i32 %0, i32 %1) #0 !dbg !381 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !382, metadata !DIExpression()), !dbg !383, !psr.id !384
  call void @llvm.dbg.value(metadata i32 %1, metadata !385, metadata !DIExpression()), !dbg !383, !psr.id !386
  %3 = call i32 @constant_time_lt(i32 %0, i32 %1), !dbg !387, !psr.id !388
  %4 = xor i32 %3, -1, !dbg !389, !psr.id !390
  ret i32 %4, !dbg !391, !psr.id !392
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_msb(i32 %0) #0 !dbg !393 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !396, metadata !DIExpression()), !dbg !397, !psr.id !398
  %2 = lshr i32 %0, 31, !dbg !399, !psr.id !400
  %3 = sub i32 0, %2, !dbg !401, !psr.id !402
  ret i32 %3, !dbg !403, !psr.id !404
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @copy_mac_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "copy_mac.c", directory: "/home/luwei/bech-back/OpenSSL/ssl3_cbc")
!2 = !{}
!3 = !{!4, !7, !9}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 46, baseType: !6)
!5 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!14 = distinct !DISubprogram(name: "ssl3_cbc_copy_mac", scope: !15, file: !15, line: 62, type: !16, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DIFile(filename: "./../ssl3_cbc_copy_mac.c", directory: "/home/luwei/bech-back/OpenSSL/ssl3_cbc")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !19, !25, !25}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !15, line: 11, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !15, line: 6, size: 256, elements: !23)
!23 = !{!24, !26, !27, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !22, file: !15, line: 7, baseType: !25, size: 32)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !15, line: 8, baseType: !18, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !15, line: 9, baseType: !28, size: 32, offset: 128)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !22, file: !15, line: 10, baseType: !18, size: 64, offset: 192)
!30 = !{!"0"}
!31 = !DILocalVariable(name: "out", arg: 1, scope: !14, file: !15, line: 62, type: !18)
!32 = !DILocation(line: 0, scope: !14)
!33 = !{!"1"}
!34 = !DILocalVariable(name: "rec", arg: 2, scope: !14, file: !15, line: 63, type: !19)
!35 = !{!"2"}
!36 = !DILocalVariable(name: "md_size", arg: 3, scope: !14, file: !15, line: 64, type: !25)
!37 = !{!"3"}
!38 = !DILocalVariable(name: "orig_len", arg: 4, scope: !14, file: !15, line: 64, type: !25)
!39 = !{!"4"}
!40 = !DILocalVariable(name: "rotated_mac_buf", scope: !14, file: !15, line: 67, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 128)
!44 = !DILocation(line: 67, column: 19, scope: !14)
!45 = !{!"5"}
!46 = !DILocation(line: 76, column: 29, scope: !14)
!47 = !{!"6"}
!48 = !{!"7"}
!49 = !DILocalVariable(name: "mac_end", scope: !14, file: !15, line: 76, type: !25)
!50 = !{!"8"}
!51 = !DILocation(line: 77, column: 34, scope: !14)
!52 = !{!"9"}
!53 = !DILocalVariable(name: "mac_start", scope: !14, file: !15, line: 77, type: !25)
!54 = !{!"10"}
!55 = !DILocalVariable(name: "scan_start", scope: !14, file: !15, line: 82, type: !25)
!56 = !{!"11"}
!57 = !DILocation(line: 91, column: 19, scope: !14)
!58 = !{!"12"}
!59 = !DILocation(line: 91, column: 51, scope: !14)
!60 = !{!"13"}
!61 = !DILocation(line: 91, column: 43, scope: !14)
!62 = !{!"14"}
!63 = !DILocation(line: 91, column: 41, scope: !14)
!64 = !{!"15"}
!65 = !DILocation(line: 91, column: 68, scope: !14)
!66 = !{!"16"}
!67 = !DILocation(line: 91, column: 35, scope: !14)
!68 = !{!"17"}
!69 = !DILocalVariable(name: "rotated_mac", scope: !14, file: !15, line: 68, type: !18)
!70 = !{!"18"}
!71 = !DILocation(line: 95, column: 28, scope: !72)
!72 = distinct !DILexicalBlock(scope: !14, file: !15, line: 95, column: 9)
!73 = !{!"19"}
!74 = !DILocation(line: 95, column: 34, scope: !72)
!75 = !{!"20"}
!76 = !DILocation(line: 95, column: 18, scope: !72)
!77 = !{!"21"}
!78 = !DILocation(line: 95, column: 9, scope: !14)
!79 = !{!"22"}
!80 = !DILocation(line: 96, column: 42, scope: !72)
!81 = !{!"23"}
!82 = !DILocation(line: 96, column: 48, scope: !72)
!83 = !{!"24"}
!84 = !DILocation(line: 96, column: 31, scope: !72)
!85 = !{!"25"}
!86 = !{!"26"}
!87 = !DILocation(line: 96, column: 9, scope: !72)
!88 = !{!"27"}
!89 = !{!"28"}
!90 = !{!"29"}
!91 = !DILocation(line: 105, column: 27, scope: !14)
!92 = !{!"30"}
!93 = !DILocalVariable(name: "div_spoiler", scope: !14, file: !15, line: 84, type: !25)
!94 = !{!"31"}
!95 = !DILocation(line: 106, column: 17, scope: !14)
!96 = !{!"32"}
!97 = !{!"33"}
!98 = !DILocation(line: 107, column: 34, scope: !14)
!99 = !{!"34"}
!100 = !DILocation(line: 107, column: 46, scope: !14)
!101 = !{!"35"}
!102 = !DILocation(line: 107, column: 60, scope: !14)
!103 = !{!"36"}
!104 = !DILocalVariable(name: "rotate_offset", scope: !14, file: !15, line: 85, type: !25)
!105 = !{!"37"}
!106 = !DILocation(line: 109, column: 28, scope: !14)
!107 = !{!"38"}
!108 = !DILocation(line: 109, column: 5, scope: !14)
!109 = !{!"39"}
!110 = !DILocalVariable(name: "i", scope: !14, file: !15, line: 83, type: !25)
!111 = !{!"40"}
!112 = !DILocalVariable(name: "j", scope: !14, file: !15, line: 83, type: !25)
!113 = !{!"41"}
!114 = !DILocation(line: 110, column: 10, scope: !115)
!115 = distinct !DILexicalBlock(scope: !14, file: !15, line: 110, column: 5)
!116 = !{!"42"}
!117 = !DILocation(line: 0, scope: !115)
!118 = !{!"43"}
!119 = !{!"44"}
!120 = !{!"45"}
!121 = !{!"46"}
!122 = !DILocation(line: 110, column: 35, scope: !123)
!123 = distinct !DILexicalBlock(scope: !115, file: !15, line: 110, column: 5)
!124 = !{!"47"}
!125 = !DILocation(line: 110, column: 5, scope: !115)
!126 = !{!"48"}
!127 = !DILocation(line: 113, column: 37, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !15, line: 110, column: 52)
!129 = !{!"49"}
!130 = !DILocalVariable(name: "mac_started", scope: !128, file: !15, line: 113, type: !9)
!131 = !DILocation(line: 0, scope: !128)
!132 = !{!"50"}
!133 = !DILocation(line: 114, column: 35, scope: !128)
!134 = !{!"51"}
!135 = !DILocalVariable(name: "mac_ended", scope: !128, file: !15, line: 114, type: !9)
!136 = !{!"52"}
!137 = !DILocation(line: 115, column: 32, scope: !128)
!138 = !{!"53"}
!139 = !{!"54"}
!140 = !{!"PointTainted"}
!141 = !DILocation(line: 115, column: 27, scope: !128)
!142 = !{!"55"}
!143 = !{!"56"}
!144 = !{!"57"}
!145 = !{!"ValueTainted"}
!146 = !DILocalVariable(name: "b", scope: !128, file: !15, line: 115, type: !9)
!147 = !{!"58"}
!148 = !DILocation(line: 116, column: 29, scope: !128)
!149 = !{!"59"}
!150 = !DILocation(line: 116, column: 33, scope: !128)
!151 = !{!"60"}
!152 = !DILocation(line: 116, column: 31, scope: !128)
!153 = !{!"61"}
!154 = !DILocation(line: 116, column: 48, scope: !128)
!155 = !{!"62"}
!156 = !DILocation(line: 116, column: 47, scope: !128)
!157 = !{!"63"}
!158 = !DILocation(line: 116, column: 45, scope: !128)
!159 = !{!"64"}
!160 = !DILocation(line: 116, column: 22, scope: !128)
!161 = !{!"65"}
!162 = !{!"66"}
!163 = !DILocation(line: 116, column: 9, scope: !128)
!164 = !{!"67"}
!165 = !{!"68"}
!166 = !DILocation(line: 116, column: 26, scope: !128)
!167 = !{!"69"}
!168 = !{!"70"}
!169 = !{!"71"}
!170 = !{!"72"}
!171 = !{!"73"}
!172 = !DILocation(line: 117, column: 14, scope: !128)
!173 = !{!"74"}
!174 = !DILocation(line: 117, column: 11, scope: !128)
!175 = !{!"75"}
!176 = !{!"76"}
!177 = !DILocation(line: 118, column: 5, scope: !128)
!178 = !{!"77"}
!179 = !DILocation(line: 110, column: 48, scope: !123)
!180 = !{!"78"}
!181 = !{!"79"}
!182 = !DILocation(line: 110, column: 5, scope: !123)
!183 = distinct !{!183, !125, !184, !185}
!184 = !DILocation(line: 118, column: 5, scope: !115)
!185 = !{!"llvm.loop.mustprogress"}
!186 = !{!"80"}
!187 = !{!"81"}
!188 = !{!"82"}
!189 = !DILocation(line: 123, column: 10, scope: !190)
!190 = distinct !DILexicalBlock(scope: !14, file: !15, line: 123, column: 5)
!191 = !{!"83"}
!192 = !DILocation(line: 0, scope: !190)
!193 = !{!"84"}
!194 = !{!"85"}
!195 = !{!"86"}
!196 = !{!"87"}
!197 = !{!"88"}
!198 = !{!"89"}
!199 = !DILocation(line: 123, column: 19, scope: !200)
!200 = distinct !DILexicalBlock(scope: !190, file: !15, line: 123, column: 5)
!201 = !{!"90"}
!202 = !DILocation(line: 123, column: 5, scope: !190)
!203 = !{!"91"}
!204 = !DILocation(line: 126, column: 63, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !15, line: 123, column: 35)
!206 = !{!"92"}
!207 = !DILocation(line: 126, column: 9, scope: !205)
!208 = !{!"93"}
!209 = !{!"94"}
!210 = !{!"95"}
!211 = !DILocation(line: 127, column: 45, scope: !205)
!212 = !{!"96"}
!213 = !{!"97"}
!214 = !DILocation(line: 127, column: 20, scope: !205)
!215 = !{!"98"}
!216 = !{!"99"}
!217 = !{!"100"}
!218 = !DILocation(line: 127, column: 14, scope: !205)
!219 = !{!"101"}
!220 = !{!"102"}
!221 = !DILocation(line: 127, column: 9, scope: !205)
!222 = !{!"103"}
!223 = !{!"104"}
!224 = !DILocation(line: 127, column: 18, scope: !205)
!225 = !{!"105"}
!226 = !DILocation(line: 128, column: 26, scope: !205)
!227 = !{!"106"}
!228 = !DILocation(line: 128, column: 23, scope: !205)
!229 = !{!"107"}
!230 = !{!"108"}
!231 = !DILocation(line: 129, column: 5, scope: !205)
!232 = !{!"109"}
!233 = !DILocation(line: 123, column: 31, scope: !200)
!234 = !{!"110"}
!235 = !{!"111"}
!236 = !DILocation(line: 123, column: 5, scope: !200)
!237 = distinct !{!237, !202, !238, !185}
!238 = !DILocation(line: 129, column: 5, scope: !190)
!239 = !{!"112"}
!240 = !DILocation(line: 141, column: 1, scope: !14)
!241 = !{!"113"}
!242 = distinct !DISubprogram(name: "constant_time_ge_8", scope: !243, file: !243, line: 153, type: !244, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!243 = !DIFile(filename: "./../constant_time_locl.h", directory: "/home/luwei/bech-back/OpenSSL/ssl3_cbc")
!244 = !DISubroutineType(types: !245)
!245 = !{!9, !25, !25}
!246 = !DILocalVariable(name: "a", arg: 1, scope: !242, file: !243, line: 153, type: !25)
!247 = !DILocation(line: 0, scope: !242)
!248 = !{!"114"}
!249 = !DILocalVariable(name: "b", arg: 2, scope: !242, file: !243, line: 153, type: !25)
!250 = !{!"115"}
!251 = !DILocation(line: 155, column: 28, scope: !242)
!252 = !{!"116"}
!253 = !DILocation(line: 155, column: 12, scope: !242)
!254 = !{!"117"}
!255 = !DILocation(line: 155, column: 5, scope: !242)
!256 = !{!"118"}
!257 = distinct !DISubprogram(name: "constant_time_lt", scope: !243, file: !243, line: 138, type: !258, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!258 = !DISubroutineType(types: !259)
!259 = !{!25, !25, !25}
!260 = !DILocalVariable(name: "a", arg: 1, scope: !257, file: !243, line: 138, type: !25)
!261 = !DILocation(line: 0, scope: !257)
!262 = !{!"119"}
!263 = !DILocalVariable(name: "b", arg: 2, scope: !257, file: !243, line: 138, type: !25)
!264 = !{!"120"}
!265 = !DILocation(line: 140, column: 38, scope: !257)
!266 = !{!"121"}
!267 = !DILocation(line: 140, column: 49, scope: !257)
!268 = !{!"122"}
!269 = !DILocation(line: 140, column: 54, scope: !257)
!270 = !{!"123"}
!271 = !DILocation(line: 140, column: 43, scope: !257)
!272 = !{!"124"}
!273 = !DILocation(line: 140, column: 32, scope: !257)
!274 = !{!"125"}
!275 = !DILocation(line: 140, column: 12, scope: !257)
!276 = !{!"126"}
!277 = !DILocation(line: 140, column: 5, scope: !257)
!278 = !{!"127"}
!279 = distinct !DISubprogram(name: "copy_mac_wrapper", scope: !1, file: !1, line: 7, type: !280, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !18, !18, !25, !25, !25}
!282 = !{!"128"}
!283 = !DILocalVariable(name: "out", arg: 1, scope: !279, file: !1, line: 7, type: !18)
!284 = !DILocation(line: 0, scope: !279)
!285 = !{!"129"}
!286 = !DILocalVariable(name: "data", arg: 2, scope: !279, file: !1, line: 8, type: !18)
!287 = !{!"130"}
!288 = !DILocalVariable(name: "length", arg: 3, scope: !279, file: !1, line: 9, type: !25)
!289 = !{!"131"}
!290 = !DILocalVariable(name: "md_size", arg: 4, scope: !279, file: !1, line: 10, type: !25)
!291 = !{!"132"}
!292 = !DILocalVariable(name: "orig_len", arg: 5, scope: !279, file: !1, line: 10, type: !25)
!293 = !{!"133"}
!294 = !DILocation(line: 13, column: 13, scope: !279)
!295 = !{!"134"}
!296 = !DILocation(line: 13, column: 3, scope: !279)
!297 = !{!"135"}
!298 = !DILocation(line: 14, column: 13, scope: !279)
!299 = !{!"136"}
!300 = !DILocation(line: 14, column: 3, scope: !279)
!301 = !{!"137"}
!302 = !DILocation(line: 17, column: 13, scope: !279)
!303 = !{!"138"}
!304 = !DILocation(line: 17, column: 3, scope: !279)
!305 = !{!"139"}
!306 = !DILocation(line: 18, column: 13, scope: !279)
!307 = !{!"140"}
!308 = !DILocation(line: 18, column: 3, scope: !279)
!309 = !{!"141"}
!310 = !DILocation(line: 19, column: 13, scope: !279)
!311 = !{!"142"}
!312 = !DILocation(line: 19, column: 3, scope: !279)
!313 = !{!"143"}
!314 = !DILocalVariable(name: "rec_obj", scope: !279, file: !1, line: 22, type: !21)
!315 = !DILocation(line: 22, column: 15, scope: !279)
!316 = !{!"144"}
!317 = !DILocation(line: 22, column: 25, scope: !279)
!318 = !{!"145"}
!319 = !{!"146"}
!320 = !{!"147"}
!321 = !{!"148"}
!322 = !{!"149"}
!323 = !{!"150"}
!324 = !{!"151"}
!325 = !{!"152"}
!326 = !DILocation(line: 24, column: 10, scope: !279)
!327 = !{!"153"}
!328 = !DILocation(line: 24, column: 3, scope: !279)
!329 = !{!"154"}
!330 = distinct !DISubprogram(name: "tmp", scope: !1, file: !1, line: 28, type: !280, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!331 = !{!"155"}
!332 = !DILocalVariable(name: "out", arg: 1, scope: !330, file: !1, line: 28, type: !18)
!333 = !DILocation(line: 0, scope: !330)
!334 = !{!"156"}
!335 = !DILocalVariable(name: "data", arg: 2, scope: !330, file: !1, line: 29, type: !18)
!336 = !{!"157"}
!337 = !DILocalVariable(name: "length", arg: 3, scope: !330, file: !1, line: 30, type: !25)
!338 = !{!"158"}
!339 = !DILocalVariable(name: "md_size", arg: 4, scope: !330, file: !1, line: 31, type: !25)
!340 = !{!"159"}
!341 = !DILocalVariable(name: "orig_len", arg: 5, scope: !330, file: !1, line: 31, type: !25)
!342 = !{!"160"}
!343 = !DILocalVariable(name: "rec_obj", scope: !330, file: !1, line: 36, type: !21)
!344 = !DILocation(line: 36, column: 15, scope: !330)
!345 = !{!"161"}
!346 = !DILocation(line: 36, column: 25, scope: !330)
!347 = !{!"162"}
!348 = !{!"163"}
!349 = !{!"164"}
!350 = !{!"165"}
!351 = !{!"166"}
!352 = !{!"167"}
!353 = !{!"168"}
!354 = !{!"169"}
!355 = !DILocation(line: 38, column: 10, scope: !330)
!356 = !{!"170"}
!357 = !DILocation(line: 38, column: 3, scope: !330)
!358 = !{!"171"}
!359 = distinct !DISubprogram(name: "copy_mac_wrapper_t", scope: !1, file: !1, line: 44, type: !360, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!360 = !DISubroutineType(types: !361)
!361 = !{null}
!362 = !DILocation(line: 46, column: 24, scope: !359)
!363 = !{!"172"}
!364 = !DILocalVariable(name: "out", scope: !359, file: !1, line: 46, type: !18)
!365 = !DILocation(line: 0, scope: !359)
!366 = !{!"173"}
!367 = !DILocation(line: 47, column: 54, scope: !359)
!368 = !{!"174"}
!369 = !DILocalVariable(name: "data", scope: !359, file: !1, line: 47, type: !18)
!370 = !{!"175"}
!371 = !DILocalVariable(name: "length", scope: !359, file: !1, line: 48, type: !25)
!372 = !{!"176"}
!373 = !DILocalVariable(name: "md_size", scope: !359, file: !1, line: 49, type: !25)
!374 = !{!"177"}
!375 = !DILocalVariable(name: "orig_len", scope: !359, file: !1, line: 50, type: !25)
!376 = !{!"178"}
!377 = !DILocation(line: 52, column: 12, scope: !359)
!378 = !{!"179"}
!379 = !DILocation(line: 52, column: 5, scope: !359)
!380 = !{!"180"}
!381 = distinct !DISubprogram(name: "constant_time_ge", scope: !243, file: !243, line: 148, type: !258, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!382 = !DILocalVariable(name: "a", arg: 1, scope: !381, file: !243, line: 148, type: !25)
!383 = !DILocation(line: 0, scope: !381)
!384 = !{!"181"}
!385 = !DILocalVariable(name: "b", arg: 2, scope: !381, file: !243, line: 148, type: !25)
!386 = !{!"182"}
!387 = !DILocation(line: 150, column: 13, scope: !381)
!388 = !{!"183"}
!389 = !DILocation(line: 150, column: 12, scope: !381)
!390 = !{!"184"}
!391 = !DILocation(line: 150, column: 5, scope: !381)
!392 = !{!"185"}
!393 = distinct !DISubprogram(name: "constant_time_msb", scope: !243, file: !243, line: 133, type: !394, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!394 = !DISubroutineType(types: !395)
!395 = !{!25, !25}
!396 = !DILocalVariable(name: "a", arg: 1, scope: !393, file: !243, line: 133, type: !25)
!397 = !DILocation(line: 0, scope: !393)
!398 = !{!"186"}
!399 = !DILocation(line: 135, column: 19, scope: !393)
!400 = !{!"187"}
!401 = !DILocation(line: 135, column: 14, scope: !393)
!402 = !{!"188"}
!403 = !DILocation(line: 135, column: 5, scope: !393)
!404 = !{!"189"}
