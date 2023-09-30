; ModuleID = 'br_ghash_ctmul-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul_wrapper(i8* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !19 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()), !dbg !28, !psr.id !29
  call void @llvm.dbg.value(metadata i8* %1, metadata !30, metadata !DIExpression()), !dbg !28, !psr.id !31
  call void @llvm.dbg.value(metadata i8* %2, metadata !32, metadata !DIExpression()), !dbg !28, !psr.id !33
  call void @llvm.dbg.value(metadata i64 %3, metadata !34, metadata !DIExpression()), !dbg !28, !psr.id !35
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !36, !psr.id !37
  call void @public_in(%struct.smack_value* %5), !dbg !38, !psr.id !39
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !40, !psr.id !41
  call void @public_in(%struct.smack_value* %6), !dbg !42, !psr.id !43
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !44, !psr.id !45
  call void @public_in(%struct.smack_value* %7), !dbg !46, !psr.id !47
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !48, !psr.id !49
  call void @public_in(%struct.smack_value* %8), !dbg !50, !psr.id !51
  %9 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !52, !psr.id !53
  call void @public_in(%struct.smack_value* %9), !dbg !54, !psr.id !55
  %10 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 32), !dbg !56, !psr.id !57
  call void @public_in(%struct.smack_value* %10), !dbg !58, !psr.id !59
  call void @br_ghash_ctmul(i8* %0, i8* %1, i8* %2, i64 %3), !dbg !60, !psr.id !61
  ret void, !dbg !62, !psr.id !63
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul_wrapper_t() #0 !dbg !64 {
  %1 = call i8* (...) @gety(), !dbg !67, !psr.id !68
  call void @llvm.dbg.value(metadata i8* %1, metadata !69, metadata !DIExpression()), !dbg !70, !psr.id !71
  %2 = call i8* (...) @geth(), !dbg !72, !psr.id !73
  call void @llvm.dbg.value(metadata i8* %2, metadata !74, metadata !DIExpression()), !dbg !70, !psr.id !75
  %3 = call i8* (...) @getdata(), !dbg !76, !psr.id !77
  call void @llvm.dbg.value(metadata i8* %3, metadata !78, metadata !DIExpression()), !dbg !70, !psr.id !79
  %4 = call i64 (...) @getlen(), !dbg !80, !psr.id !81
  call void @llvm.dbg.value(metadata i64 %4, metadata !82, metadata !DIExpression()), !dbg !70, !psr.id !83
  call void @br_ghash_ctmul(i8* %1, i8* %2, i8* %3, i64 %4), !dbg !84, !psr.id !85
  ret void, !dbg !86, !psr.id !87
}

declare dso_local i8* @gety(...) #2

declare dso_local i8* @geth(...) #2

declare dso_local i8* @getdata(...) #2

declare dso_local i64 @getlen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul(i8* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !88 {
  %5 = alloca [4 x i32], align 16, !psr.id !89
  %6 = alloca [4 x i32], align 16, !psr.id !90
  %7 = alloca [16 x i8], align 16, !psr.id !91
  %8 = alloca [9 x i32], align 16, !psr.id !92
  %9 = alloca [9 x i32], align 16, !psr.id !93
  %10 = alloca [8 x i32], align 16, !psr.id !94
  call void @llvm.dbg.value(metadata i8* %0, metadata !95, metadata !DIExpression()), !dbg !96, !psr.id !97
  call void @llvm.dbg.value(metadata i8* %1, metadata !98, metadata !DIExpression()), !dbg !96, !psr.id !99
  call void @llvm.dbg.value(metadata i8* %2, metadata !100, metadata !DIExpression()), !dbg !96, !psr.id !101
  call void @llvm.dbg.value(metadata i64 %3, metadata !102, metadata !DIExpression()), !dbg !96, !psr.id !103
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !104, metadata !DIExpression()), !dbg !108, !psr.id !109
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !110, metadata !DIExpression()), !dbg !111, !psr.id !112
  call void @llvm.dbg.value(metadata i8* %2, metadata !113, metadata !DIExpression()), !dbg !96, !psr.id !116
  call void @llvm.dbg.value(metadata i8* %0, metadata !117, metadata !DIExpression()), !dbg !96, !psr.id !119
  call void @llvm.dbg.value(metadata i8* %1, metadata !120, metadata !DIExpression()), !dbg !96, !psr.id !121
  %11 = call i32 @br_dec32be(i8* %0), !dbg !122, !psr.id !123
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !124, !psr.id !125
  store i32 %11, i32* %12, align 4, !dbg !126, !psr.id !127
  %13 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !128, !psr.id !129
  %14 = call i32 @br_dec32be(i8* %13), !dbg !130, !psr.id !131
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !132, !psr.id !133
  store i32 %14, i32* %15, align 8, !dbg !134, !psr.id !135
  %16 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !136, !psr.id !137
  %17 = call i32 @br_dec32be(i8* %16), !dbg !138, !psr.id !139
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !140, !psr.id !141
  store i32 %17, i32* %18, align 4, !dbg !142, !psr.id !143
  %19 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !144, !psr.id !145
  %20 = call i32 @br_dec32be(i8* %19), !dbg !146, !psr.id !147
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !148, !psr.id !149
  store i32 %20, i32* %21, align 16, !dbg !150, !psr.id !151
  %22 = call i32 @br_dec32be(i8* %1), !dbg !152, !psr.id !153, !ValueTainted !154
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !155, !psr.id !156
  store i32 %22, i32* %23, align 4, !dbg !157, !psr.id !158
  %24 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !159, !psr.id !160, !PointTainted !161
  %25 = call i32 @br_dec32be(i8* %24), !dbg !162, !psr.id !163, !ValueTainted !154
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !164, !psr.id !165
  store i32 %25, i32* %26, align 8, !dbg !166, !psr.id !167
  %27 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !168, !psr.id !169, !PointTainted !161
  %28 = call i32 @br_dec32be(i8* %27), !dbg !170, !psr.id !171, !ValueTainted !154
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !172, !psr.id !173
  store i32 %28, i32* %29, align 4, !dbg !174, !psr.id !175
  %30 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !176, !psr.id !177, !PointTainted !161
  %31 = call i32 @br_dec32be(i8* %30), !dbg !178, !psr.id !179, !ValueTainted !154
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !180, !psr.id !181
  store i32 %31, i32* %32, align 16, !dbg !182, !psr.id !183
  br label %33, !dbg !184, !psr.id !185

33:                                               ; preds = %315, %4
  %.04 = phi i64 [ %3, %4 ], [ %.15, %315 ], !psr.id !186
  %.02 = phi i8* [ %2, %4 ], [ %.13, %315 ], !dbg !96, !psr.id !187
  call void @llvm.dbg.value(metadata i8* %.02, metadata !113, metadata !DIExpression()), !dbg !96, !psr.id !188
  call void @llvm.dbg.value(metadata i64 %.04, metadata !102, metadata !DIExpression()), !dbg !96, !psr.id !189
  %34 = icmp ugt i64 %.04, 0, !dbg !190, !psr.id !191
  br i1 %34, label %35, label %321, !dbg !184, !psr.id !192

35:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !193, metadata !DIExpression()), !dbg !198, !psr.id !199
  call void @llvm.dbg.declare(metadata [9 x i32]* %8, metadata !200, metadata !DIExpression()), !dbg !204, !psr.id !205
  call void @llvm.dbg.declare(metadata [9 x i32]* %9, metadata !206, metadata !DIExpression()), !dbg !207, !psr.id !208
  call void @llvm.dbg.declare(metadata [8 x i32]* %10, metadata !209, metadata !DIExpression()), !dbg !213, !psr.id !214
  %36 = icmp uge i64 %.04, 16, !dbg !215, !psr.id !217
  br i1 %36, label %37, label %40, !dbg !218, !psr.id !219

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %.02, metadata !220, metadata !DIExpression()), !dbg !221, !psr.id !222
  %38 = getelementptr inbounds i8, i8* %.02, i64 16, !dbg !223, !psr.id !225
  call void @llvm.dbg.value(metadata i8* %38, metadata !113, metadata !DIExpression()), !dbg !96, !psr.id !226
  %39 = sub i64 %.04, 16, !dbg !227, !psr.id !228
  call void @llvm.dbg.value(metadata i64 %39, metadata !102, metadata !DIExpression()), !dbg !96, !psr.id !229
  br label %46, !dbg !230, !psr.id !231

40:                                               ; preds = %35
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !232, !psr.id !234
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 1 %.02, i64 %.04, i1 false), !dbg !232, !psr.id !235
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !236, !psr.id !237
  %43 = getelementptr inbounds i8, i8* %42, i64 %.04, !dbg !238, !psr.id !239
  %44 = sub i64 16, %.04, !dbg !240, !psr.id !241
  call void @llvm.memset.p0i8.i64(i8* align 1 %43, i8 0, i64 %44, i1 false), !dbg !242, !psr.id !243
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !244, !psr.id !245
  call void @llvm.dbg.value(metadata i8* %45, metadata !220, metadata !DIExpression()), !dbg !221, !psr.id !246
  call void @llvm.dbg.value(metadata i64 0, metadata !102, metadata !DIExpression()), !dbg !96, !psr.id !247
  br label %46, !psr.id !248

46:                                               ; preds = %40, %37
  %.15 = phi i64 [ %39, %37 ], [ 0, %40 ], !dbg !249, !psr.id !250
  %.13 = phi i8* [ %38, %37 ], [ %.02, %40 ], !dbg !96, !psr.id !251
  %.01 = phi i8* [ %.02, %37 ], [ %45, %40 ], !dbg !249, !psr.id !252
  call void @llvm.dbg.value(metadata i8* %.01, metadata !220, metadata !DIExpression()), !dbg !221, !psr.id !253
  call void @llvm.dbg.value(metadata i8* %.13, metadata !113, metadata !DIExpression()), !dbg !96, !psr.id !254
  call void @llvm.dbg.value(metadata i64 %.15, metadata !102, metadata !DIExpression()), !dbg !96, !psr.id !255
  %47 = call i32 @br_dec32be(i8* %.01), !dbg !256, !psr.id !257, !ValueTainted !154
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !258, !psr.id !259, !PointTainted !161
  %49 = load i32, i32* %48, align 4, !dbg !260, !psr.id !261, !ValueTainted !154
  %50 = xor i32 %49, %47, !dbg !260, !psr.id !262, !ValueTainted !154
  store i32 %50, i32* %48, align 4, !dbg !260, !psr.id !263
  %51 = getelementptr inbounds i8, i8* %.01, i64 4, !dbg !264, !psr.id !265
  %52 = call i32 @br_dec32be(i8* %51), !dbg !266, !psr.id !267
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !268, !psr.id !269, !PointTainted !161
  %54 = load i32, i32* %53, align 8, !dbg !270, !psr.id !271, !ValueTainted !154
  %55 = xor i32 %54, %52, !dbg !270, !psr.id !272, !ValueTainted !154
  store i32 %55, i32* %53, align 8, !dbg !270, !psr.id !273
  %56 = getelementptr inbounds i8, i8* %.01, i64 8, !dbg !274, !psr.id !275
  %57 = call i32 @br_dec32be(i8* %56), !dbg !276, !psr.id !277
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !278, !psr.id !279, !PointTainted !161
  %59 = load i32, i32* %58, align 4, !dbg !280, !psr.id !281, !ValueTainted !154
  %60 = xor i32 %59, %57, !dbg !280, !psr.id !282, !ValueTainted !154
  store i32 %60, i32* %58, align 4, !dbg !280, !psr.id !283
  %61 = getelementptr inbounds i8, i8* %.01, i64 12, !dbg !284, !psr.id !285
  %62 = call i32 @br_dec32be(i8* %61), !dbg !286, !psr.id !287
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !288, !psr.id !289, !PointTainted !161
  %64 = load i32, i32* %63, align 16, !dbg !290, !psr.id !291, !ValueTainted !154
  %65 = xor i32 %64, %62, !dbg !290, !psr.id !292, !ValueTainted !154
  store i32 %65, i32* %63, align 16, !dbg !290, !psr.id !293
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !294, !psr.id !295
  %67 = load i32, i32* %66, align 16, !dbg !294, !psr.id !296, !ValueTainted !154
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !297, !psr.id !298, !PointTainted !161
  store i32 %67, i32* %68, align 16, !dbg !299, !psr.id !300
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !301, !psr.id !302
  %70 = load i32, i32* %69, align 16, !dbg !301, !psr.id !303, !ValueTainted !154
  %71 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !304, !psr.id !305, !PointTainted !161
  store i32 %70, i32* %71, align 16, !dbg !306, !psr.id !307
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !308, !psr.id !309
  %73 = load i32, i32* %72, align 4, !dbg !308, !psr.id !310, !ValueTainted !154
  %74 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !311, !psr.id !312, !PointTainted !161
  store i32 %73, i32* %74, align 4, !dbg !313, !psr.id !314
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !315, !psr.id !316
  %76 = load i32, i32* %75, align 4, !dbg !315, !psr.id !317, !ValueTainted !154
  %77 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !318, !psr.id !319, !PointTainted !161
  store i32 %76, i32* %77, align 4, !dbg !320, !psr.id !321
  %78 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !322, !psr.id !323
  %79 = load i32, i32* %78, align 16, !dbg !322, !psr.id !324, !ValueTainted !154
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !325, !psr.id !326
  %81 = load i32, i32* %80, align 4, !dbg !325, !psr.id !327, !ValueTainted !154
  %82 = xor i32 %79, %81, !dbg !328, !psr.id !329, !ValueTainted !154
  %83 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 2, !dbg !330, !psr.id !331, !PointTainted !161
  store i32 %82, i32* %83, align 8, !dbg !332, !psr.id !333
  %84 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !334, !psr.id !335
  %85 = load i32, i32* %84, align 16, !dbg !334, !psr.id !336, !ValueTainted !154
  %86 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !337, !psr.id !338
  %87 = load i32, i32* %86, align 4, !dbg !337, !psr.id !339, !ValueTainted !154
  %88 = xor i32 %85, %87, !dbg !340, !psr.id !341, !ValueTainted !154
  %89 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2, !dbg !342, !psr.id !343, !PointTainted !161
  store i32 %88, i32* %89, align 8, !dbg !344, !psr.id !345
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !346, !psr.id !347
  %91 = load i32, i32* %90, align 8, !dbg !346, !psr.id !348, !ValueTainted !154
  %92 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !349, !psr.id !350, !PointTainted !161
  store i32 %91, i32* %92, align 4, !dbg !351, !psr.id !352
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !353, !psr.id !354
  %94 = load i32, i32* %93, align 8, !dbg !353, !psr.id !355, !ValueTainted !154
  %95 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !356, !psr.id !357, !PointTainted !161
  store i32 %94, i32* %95, align 4, !dbg !358, !psr.id !359
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !360, !psr.id !361
  %97 = load i32, i32* %96, align 4, !dbg !360, !psr.id !362, !ValueTainted !154
  %98 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !363, !psr.id !364, !PointTainted !161
  store i32 %97, i32* %98, align 16, !dbg !365, !psr.id !366
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !367, !psr.id !368
  %100 = load i32, i32* %99, align 4, !dbg !367, !psr.id !369, !ValueTainted !154
  %101 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !370, !psr.id !371, !PointTainted !161
  store i32 %100, i32* %101, align 16, !dbg !372, !psr.id !373
  %102 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !374, !psr.id !375
  %103 = load i32, i32* %102, align 4, !dbg !374, !psr.id !376, !ValueTainted !154
  %104 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !377, !psr.id !378
  %105 = load i32, i32* %104, align 16, !dbg !377, !psr.id !379, !ValueTainted !154
  %106 = xor i32 %103, %105, !dbg !380, !psr.id !381, !ValueTainted !154
  %107 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 5, !dbg !382, !psr.id !383, !PointTainted !161
  store i32 %106, i32* %107, align 4, !dbg !384, !psr.id !385
  %108 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !386, !psr.id !387
  %109 = load i32, i32* %108, align 4, !dbg !386, !psr.id !388, !ValueTainted !154
  %110 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !389, !psr.id !390
  %111 = load i32, i32* %110, align 16, !dbg !389, !psr.id !391, !ValueTainted !154
  %112 = xor i32 %109, %111, !dbg !392, !psr.id !393, !ValueTainted !154
  %113 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5, !dbg !394, !psr.id !395, !PointTainted !161
  store i32 %112, i32* %113, align 4, !dbg !396, !psr.id !397
  %114 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !398, !psr.id !399
  %115 = load i32, i32* %114, align 16, !dbg !398, !psr.id !400, !ValueTainted !154
  %116 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !401, !psr.id !402
  %117 = load i32, i32* %116, align 4, !dbg !401, !psr.id !403, !ValueTainted !154
  %118 = xor i32 %115, %117, !dbg !404, !psr.id !405, !ValueTainted !154
  %119 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !406, !psr.id !407, !PointTainted !161
  store i32 %118, i32* %119, align 8, !dbg !408, !psr.id !409
  %120 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !410, !psr.id !411
  %121 = load i32, i32* %120, align 16, !dbg !410, !psr.id !412, !ValueTainted !154
  %122 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !413, !psr.id !414
  %123 = load i32, i32* %122, align 4, !dbg !413, !psr.id !415, !ValueTainted !154
  %124 = xor i32 %121, %123, !dbg !416, !psr.id !417, !ValueTainted !154
  %125 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !418, !psr.id !419, !PointTainted !161
  store i32 %124, i32* %125, align 8, !dbg !420, !psr.id !421
  %126 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !422, !psr.id !423
  %127 = load i32, i32* %126, align 4, !dbg !422, !psr.id !424, !ValueTainted !154
  %128 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !425, !psr.id !426
  %129 = load i32, i32* %128, align 16, !dbg !425, !psr.id !427, !ValueTainted !154
  %130 = xor i32 %127, %129, !dbg !428, !psr.id !429, !ValueTainted !154
  %131 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !430, !psr.id !431, !PointTainted !161
  store i32 %130, i32* %131, align 4, !dbg !432, !psr.id !433
  %132 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !434, !psr.id !435
  %133 = load i32, i32* %132, align 4, !dbg !434, !psr.id !436, !ValueTainted !154
  %134 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !437, !psr.id !438
  %135 = load i32, i32* %134, align 16, !dbg !437, !psr.id !439, !ValueTainted !154
  %136 = xor i32 %133, %135, !dbg !440, !psr.id !441, !ValueTainted !154
  %137 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !442, !psr.id !443, !PointTainted !161
  store i32 %136, i32* %137, align 4, !dbg !444, !psr.id !445
  %138 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !446, !psr.id !447
  %139 = load i32, i32* %138, align 8, !dbg !446, !psr.id !448, !ValueTainted !154
  %140 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !449, !psr.id !450
  %141 = load i32, i32* %140, align 4, !dbg !449, !psr.id !451, !ValueTainted !154
  %142 = xor i32 %139, %141, !dbg !452, !psr.id !453, !ValueTainted !154
  %143 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 8, !dbg !454, !psr.id !455, !PointTainted !161
  store i32 %142, i32* %143, align 16, !dbg !456, !psr.id !457
  %144 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !458, !psr.id !459
  %145 = load i32, i32* %144, align 8, !dbg !458, !psr.id !460, !ValueTainted !154
  %146 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !461, !psr.id !462
  %147 = load i32, i32* %146, align 4, !dbg !461, !psr.id !463, !ValueTainted !154
  %148 = xor i32 %145, %147, !dbg !464, !psr.id !465, !ValueTainted !154
  %149 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8, !dbg !466, !psr.id !467, !PointTainted !161
  store i32 %148, i32* %149, align 16, !dbg !468, !psr.id !469
  call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()), !dbg !221, !psr.id !472
  br label %150, !dbg !473, !psr.id !475

150:                                              ; preds = %163, %46
  %.0 = phi i32 [ 0, %46 ], [ %164, %163 ], !dbg !476, !psr.id !477
  call void @llvm.dbg.value(metadata i32 %.0, metadata !470, metadata !DIExpression()), !dbg !221, !psr.id !478
  %151 = icmp slt i32 %.0, 9, !dbg !479, !psr.id !481
  br i1 %151, label %152, label %165, !dbg !482, !psr.id !483

152:                                              ; preds = %150
  %153 = sext i32 %.0 to i64, !dbg !484, !psr.id !486
  %154 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %153, !dbg !484, !psr.id !487, !PointTainted !161
  %155 = sext i32 %.0 to i64, !dbg !488, !psr.id !489
  %156 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %155, !dbg !488, !psr.id !490, !PointTainted !161
  %157 = sext i32 %.0 to i64, !dbg !491, !psr.id !492
  %158 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %157, !dbg !491, !psr.id !493
  %159 = load i32, i32* %158, align 4, !dbg !491, !psr.id !494, !ValueTainted !154
  %160 = sext i32 %.0 to i64, !dbg !495, !psr.id !496
  %161 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %160, !dbg !495, !psr.id !497
  %162 = load i32, i32* %161, align 4, !dbg !495, !psr.id !498, !ValueTainted !154
  call void @bmul(i32* %154, i32* %156, i32 %159, i32 %162), !dbg !499, !psr.id !500
  br label %163, !dbg !501, !psr.id !502

163:                                              ; preds = %152
  %164 = add nsw i32 %.0, 1, !dbg !503, !psr.id !504
  call void @llvm.dbg.value(metadata i32 %164, metadata !470, metadata !DIExpression()), !dbg !221, !psr.id !505
  br label %150, !dbg !506, !llvm.loop !507, !psr.id !510

165:                                              ; preds = %150
  %166 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !511, !psr.id !512
  %167 = load i32, i32* %166, align 16, !dbg !511, !psr.id !513, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %167, metadata !514, metadata !DIExpression()), !dbg !221, !psr.id !515
  %168 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !516, !psr.id !517
  %169 = load i32, i32* %168, align 16, !dbg !516, !psr.id !518, !ValueTainted !154
  %170 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 2, !dbg !519, !psr.id !520
  %171 = load i32, i32* %170, align 8, !dbg !519, !psr.id !521, !ValueTainted !154
  %172 = xor i32 %169, %171, !dbg !522, !psr.id !523, !ValueTainted !154
  %173 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !524, !psr.id !525
  %174 = load i32, i32* %173, align 16, !dbg !524, !psr.id !526, !ValueTainted !154
  %175 = xor i32 %172, %174, !dbg !527, !psr.id !528, !ValueTainted !154
  %176 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !529, !psr.id !530
  %177 = load i32, i32* %176, align 4, !dbg !529, !psr.id !531, !ValueTainted !154
  %178 = xor i32 %175, %177, !dbg !532, !psr.id !533, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %178, metadata !534, metadata !DIExpression()), !dbg !221, !psr.id !535
  %179 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !536, !psr.id !537
  %180 = load i32, i32* %179, align 4, !dbg !536, !psr.id !538, !ValueTainted !154
  %181 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2, !dbg !539, !psr.id !540
  %182 = load i32, i32* %181, align 8, !dbg !539, !psr.id !541, !ValueTainted !154
  %183 = xor i32 %180, %182, !dbg !542, !psr.id !543, !ValueTainted !154
  %184 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !544, !psr.id !545
  %185 = load i32, i32* %184, align 16, !dbg !544, !psr.id !546, !ValueTainted !154
  %186 = xor i32 %183, %185, !dbg !547, !psr.id !548, !ValueTainted !154
  %187 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !549, !psr.id !550
  %188 = load i32, i32* %187, align 4, !dbg !549, !psr.id !551, !ValueTainted !154
  %189 = xor i32 %186, %188, !dbg !552, !psr.id !553, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %189, metadata !554, metadata !DIExpression()), !dbg !221, !psr.id !555
  %190 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !556, !psr.id !557
  %191 = load i32, i32* %190, align 4, !dbg !556, !psr.id !558, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %191, metadata !559, metadata !DIExpression()), !dbg !221, !psr.id !560
  %192 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !561, !psr.id !562
  %193 = load i32, i32* %192, align 4, !dbg !561, !psr.id !563, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %193, metadata !564, metadata !DIExpression()), !dbg !221, !psr.id !565
  %194 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !566, !psr.id !567
  %195 = load i32, i32* %194, align 4, !dbg !566, !psr.id !568, !ValueTainted !154
  %196 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 5, !dbg !569, !psr.id !570
  %197 = load i32, i32* %196, align 4, !dbg !569, !psr.id !571, !ValueTainted !154
  %198 = xor i32 %195, %197, !dbg !572, !psr.id !573, !ValueTainted !154
  %199 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !574, !psr.id !575
  %200 = load i32, i32* %199, align 4, !dbg !574, !psr.id !576, !ValueTainted !154
  %201 = xor i32 %198, %200, !dbg !577, !psr.id !578, !ValueTainted !154
  %202 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !579, !psr.id !580
  %203 = load i32, i32* %202, align 16, !dbg !579, !psr.id !581, !ValueTainted !154
  %204 = xor i32 %201, %203, !dbg !582, !psr.id !583, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %204, metadata !584, metadata !DIExpression()), !dbg !221, !psr.id !585
  %205 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !586, !psr.id !587
  %206 = load i32, i32* %205, align 16, !dbg !586, !psr.id !588, !ValueTainted !154
  %207 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5, !dbg !589, !psr.id !590
  %208 = load i32, i32* %207, align 4, !dbg !589, !psr.id !591, !ValueTainted !154
  %209 = xor i32 %206, %208, !dbg !592, !psr.id !593, !ValueTainted !154
  %210 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !594, !psr.id !595
  %211 = load i32, i32* %210, align 4, !dbg !594, !psr.id !596, !ValueTainted !154
  %212 = xor i32 %209, %211, !dbg !597, !psr.id !598, !ValueTainted !154
  %213 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !599, !psr.id !600
  %214 = load i32, i32* %213, align 16, !dbg !599, !psr.id !601, !ValueTainted !154
  %215 = xor i32 %212, %214, !dbg !602, !psr.id !603, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %215, metadata !604, metadata !DIExpression()), !dbg !221, !psr.id !605
  %216 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !606, !psr.id !607
  %217 = load i32, i32* %216, align 16, !dbg !606, !psr.id !608, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %217, metadata !609, metadata !DIExpression()), !dbg !221, !psr.id !610
  %218 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !611, !psr.id !612
  %219 = load i32, i32* %218, align 8, !dbg !611, !psr.id !613, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %219, metadata !614, metadata !DIExpression()), !dbg !221, !psr.id !615
  %220 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !616, !psr.id !617
  %221 = load i32, i32* %220, align 8, !dbg !616, !psr.id !618, !ValueTainted !154
  %222 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 8, !dbg !619, !psr.id !620
  %223 = load i32, i32* %222, align 16, !dbg !619, !psr.id !621, !ValueTainted !154
  %224 = xor i32 %221, %223, !dbg !622, !psr.id !623, !ValueTainted !154
  %225 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !624, !psr.id !625
  %226 = load i32, i32* %225, align 8, !dbg !624, !psr.id !626, !ValueTainted !154
  %227 = xor i32 %224, %226, !dbg !627, !psr.id !628, !ValueTainted !154
  %228 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !629, !psr.id !630
  %229 = load i32, i32* %228, align 4, !dbg !629, !psr.id !631, !ValueTainted !154
  %230 = xor i32 %227, %229, !dbg !632, !psr.id !633, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %230, metadata !634, metadata !DIExpression()), !dbg !221, !psr.id !635
  %231 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !636, !psr.id !637
  %232 = load i32, i32* %231, align 4, !dbg !636, !psr.id !638, !ValueTainted !154
  %233 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8, !dbg !639, !psr.id !640
  %234 = load i32, i32* %233, align 16, !dbg !639, !psr.id !641, !ValueTainted !154
  %235 = xor i32 %232, %234, !dbg !642, !psr.id !643, !ValueTainted !154
  %236 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !644, !psr.id !645
  %237 = load i32, i32* %236, align 8, !dbg !644, !psr.id !646, !ValueTainted !154
  %238 = xor i32 %235, %237, !dbg !647, !psr.id !648, !ValueTainted !154
  %239 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !649, !psr.id !650
  %240 = load i32, i32* %239, align 4, !dbg !649, !psr.id !651, !ValueTainted !154
  %241 = xor i32 %238, %240, !dbg !652, !psr.id !653, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %241, metadata !654, metadata !DIExpression()), !dbg !221, !psr.id !655
  %242 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !656, !psr.id !657
  %243 = load i32, i32* %242, align 4, !dbg !656, !psr.id !658, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %243, metadata !659, metadata !DIExpression()), !dbg !221, !psr.id !660
  %244 = xor i32 %167, %193, !dbg !661, !psr.id !662, !ValueTainted !154
  %245 = xor i32 %219, %244, !dbg !663, !psr.id !664, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %245, metadata !614, metadata !DIExpression()), !dbg !221, !psr.id !665
  %246 = xor i32 %178, %204, !dbg !666, !psr.id !667, !ValueTainted !154
  %247 = xor i32 %230, %246, !dbg !668, !psr.id !669, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %247, metadata !634, metadata !DIExpression()), !dbg !221, !psr.id !670
  %248 = xor i32 %189, %215, !dbg !671, !psr.id !672, !ValueTainted !154
  %249 = xor i32 %241, %248, !dbg !673, !psr.id !674, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %249, metadata !654, metadata !DIExpression()), !dbg !221, !psr.id !675
  %250 = xor i32 %191, %217, !dbg !676, !psr.id !677, !ValueTainted !154
  %251 = xor i32 %243, %250, !dbg !678, !psr.id !679, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %251, metadata !659, metadata !DIExpression()), !dbg !221, !psr.id !680
  %252 = xor i32 %189, %245, !dbg !681, !psr.id !682, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %252, metadata !554, metadata !DIExpression()), !dbg !221, !psr.id !683
  %253 = xor i32 %191, %247, !dbg !684, !psr.id !685, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %253, metadata !559, metadata !DIExpression()), !dbg !221, !psr.id !686
  %254 = xor i32 %193, %249, !dbg !687, !psr.id !688, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %254, metadata !564, metadata !DIExpression()), !dbg !221, !psr.id !689
  %255 = xor i32 %204, %251, !dbg !690, !psr.id !691, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %255, metadata !584, metadata !DIExpression()), !dbg !221, !psr.id !692
  %256 = shl i32 %167, 1, !dbg !693, !psr.id !694, !ValueTainted !154
  %257 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0, !dbg !695, !psr.id !696, !PointTainted !161
  store i32 %256, i32* %257, align 16, !dbg !697, !psr.id !698
  %258 = shl i32 %178, 1, !dbg !699, !psr.id !700, !ValueTainted !154
  %259 = lshr i32 %167, 31, !dbg !701, !psr.id !702, !ValueTainted !154
  %260 = or i32 %258, %259, !dbg !703, !psr.id !704, !ValueTainted !154
  %261 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1, !dbg !705, !psr.id !706, !PointTainted !161
  store i32 %260, i32* %261, align 4, !dbg !707, !psr.id !708
  %262 = shl i32 %252, 1, !dbg !709, !psr.id !710, !ValueTainted !154
  %263 = lshr i32 %178, 31, !dbg !711, !psr.id !712, !ValueTainted !154
  %264 = or i32 %262, %263, !dbg !713, !psr.id !714, !ValueTainted !154
  %265 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2, !dbg !715, !psr.id !716, !PointTainted !161
  store i32 %264, i32* %265, align 8, !dbg !717, !psr.id !718
  %266 = shl i32 %253, 1, !dbg !719, !psr.id !720, !ValueTainted !154
  %267 = lshr i32 %252, 31, !dbg !721, !psr.id !722, !ValueTainted !154
  %268 = or i32 %266, %267, !dbg !723, !psr.id !724, !ValueTainted !154
  %269 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3, !dbg !725, !psr.id !726, !PointTainted !161
  store i32 %268, i32* %269, align 4, !dbg !727, !psr.id !728
  %270 = shl i32 %254, 1, !dbg !729, !psr.id !730, !ValueTainted !154
  %271 = lshr i32 %253, 31, !dbg !731, !psr.id !732, !ValueTainted !154
  %272 = or i32 %270, %271, !dbg !733, !psr.id !734, !ValueTainted !154
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4, !dbg !735, !psr.id !736, !PointTainted !161
  store i32 %272, i32* %273, align 16, !dbg !737, !psr.id !738
  %274 = shl i32 %255, 1, !dbg !739, !psr.id !740, !ValueTainted !154
  %275 = lshr i32 %254, 31, !dbg !741, !psr.id !742, !ValueTainted !154
  %276 = or i32 %274, %275, !dbg !743, !psr.id !744, !ValueTainted !154
  %277 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 5, !dbg !745, !psr.id !746, !PointTainted !161
  store i32 %276, i32* %277, align 4, !dbg !747, !psr.id !748
  %278 = shl i32 %215, 1, !dbg !749, !psr.id !750, !ValueTainted !154
  %279 = lshr i32 %255, 31, !dbg !751, !psr.id !752, !ValueTainted !154
  %280 = or i32 %278, %279, !dbg !753, !psr.id !754, !ValueTainted !154
  %281 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 6, !dbg !755, !psr.id !756, !PointTainted !161
  store i32 %280, i32* %281, align 8, !dbg !757, !psr.id !758
  %282 = shl i32 %217, 1, !dbg !759, !psr.id !760, !ValueTainted !154
  %283 = lshr i32 %215, 31, !dbg !761, !psr.id !762, !ValueTainted !154
  %284 = or i32 %282, %283, !dbg !763, !psr.id !764, !ValueTainted !154
  %285 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 7, !dbg !765, !psr.id !766, !PointTainted !161
  store i32 %284, i32* %285, align 4, !dbg !767, !psr.id !768
  call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()), !dbg !221, !psr.id !769
  br label %286, !dbg !770, !psr.id !772

286:                                              ; preds = %313, %165
  %.1 = phi i32 [ 0, %165 ], [ %314, %313 ], !dbg !773, !psr.id !774
  call void @llvm.dbg.value(metadata i32 %.1, metadata !470, metadata !DIExpression()), !dbg !221, !psr.id !775
  %287 = icmp slt i32 %.1, 4, !dbg !776, !psr.id !778
  br i1 %287, label %288, label %315, !dbg !779, !psr.id !780

288:                                              ; preds = %286
  %289 = sext i32 %.1 to i64, !dbg !781, !psr.id !783
  %290 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %289, !dbg !781, !psr.id !784
  %291 = load i32, i32* %290, align 4, !dbg !781, !psr.id !785, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %291, metadata !786, metadata !DIExpression()), !dbg !787, !psr.id !788
  %292 = lshr i32 %291, 1, !dbg !789, !psr.id !790, !ValueTainted !154
  %293 = xor i32 %291, %292, !dbg !791, !psr.id !792, !ValueTainted !154
  %294 = lshr i32 %291, 2, !dbg !793, !psr.id !794, !ValueTainted !154
  %295 = xor i32 %293, %294, !dbg !795, !psr.id !796, !ValueTainted !154
  %296 = lshr i32 %291, 7, !dbg !797, !psr.id !798, !ValueTainted !154
  %297 = xor i32 %295, %296, !dbg !799, !psr.id !800, !ValueTainted !154
  %298 = add nsw i32 %.1, 4, !dbg !801, !psr.id !802
  %299 = sext i32 %298 to i64, !dbg !803, !psr.id !804
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %299, !dbg !803, !psr.id !805, !PointTainted !161
  %301 = load i32, i32* %300, align 4, !dbg !806, !psr.id !807, !ValueTainted !154
  %302 = xor i32 %301, %297, !dbg !806, !psr.id !808, !ValueTainted !154
  store i32 %302, i32* %300, align 4, !dbg !806, !psr.id !809
  %303 = shl i32 %291, 31, !dbg !810, !psr.id !811, !ValueTainted !154
  %304 = shl i32 %291, 30, !dbg !812, !psr.id !813, !ValueTainted !154
  %305 = xor i32 %303, %304, !dbg !814, !psr.id !815, !ValueTainted !154
  %306 = shl i32 %291, 25, !dbg !816, !psr.id !817, !ValueTainted !154
  %307 = xor i32 %305, %306, !dbg !818, !psr.id !819, !ValueTainted !154
  %308 = add nsw i32 %.1, 3, !dbg !820, !psr.id !821
  %309 = sext i32 %308 to i64, !dbg !822, !psr.id !823
  %310 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %309, !dbg !822, !psr.id !824, !PointTainted !161
  %311 = load i32, i32* %310, align 4, !dbg !825, !psr.id !826, !ValueTainted !154
  %312 = xor i32 %311, %307, !dbg !825, !psr.id !827, !ValueTainted !154
  store i32 %312, i32* %310, align 4, !dbg !825, !psr.id !828
  br label %313, !dbg !829, !psr.id !830

313:                                              ; preds = %288
  %314 = add nsw i32 %.1, 1, !dbg !831, !psr.id !832
  call void @llvm.dbg.value(metadata i32 %314, metadata !470, metadata !DIExpression()), !dbg !221, !psr.id !833
  br label %286, !dbg !834, !llvm.loop !835, !psr.id !837

315:                                              ; preds = %286
  %316 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !838, !psr.id !839
  %317 = bitcast i32* %316 to i8*, !dbg !838, !psr.id !840
  %318 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0, !dbg !841, !psr.id !842
  %319 = getelementptr inbounds i32, i32* %318, i64 4, !dbg !843, !psr.id !844
  %320 = bitcast i32* %319 to i8*, !dbg !838, !psr.id !845
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %317, i8* align 4 %320, i64 16, i1 false), !dbg !838, !psr.id !846
  br label %33, !dbg !184, !llvm.loop !847, !psr.id !849

321:                                              ; preds = %33
  %322 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !850, !psr.id !851
  %323 = load i32, i32* %322, align 4, !dbg !850, !psr.id !852, !ValueTainted !154
  call void @br_enc32be(i8* %0, i32 %323), !dbg !853, !psr.id !854
  %324 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !855, !psr.id !856
  %325 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !857, !psr.id !858
  %326 = load i32, i32* %325, align 8, !dbg !857, !psr.id !859, !ValueTainted !154
  call void @br_enc32be(i8* %324, i32 %326), !dbg !860, !psr.id !861
  %327 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !862, !psr.id !863
  %328 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !864, !psr.id !865
  %329 = load i32, i32* %328, align 4, !dbg !864, !psr.id !866, !ValueTainted !154
  call void @br_enc32be(i8* %327, i32 %329), !dbg !867, !psr.id !868
  %330 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !869, !psr.id !870
  %331 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !871, !psr.id !872
  %332 = load i32, i32* %331, align 16, !dbg !871, !psr.id !873, !ValueTainted !154
  call void @br_enc32be(i8* %330, i32 %332), !dbg !874, !psr.id !875
  ret void, !dbg !876, !psr.id !877
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !878 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !882, metadata !DIExpression()), !dbg !883, !psr.id !884
  call void @llvm.dbg.value(metadata i8* %0, metadata !885, metadata !DIExpression()), !dbg !883, !psr.id !886
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !887, !psr.id !888, !PointTainted !161
  %3 = load i8, i8* %2, align 1, !dbg !887, !psr.id !889, !ValueTainted !154
  %4 = zext i8 %3 to i32, !dbg !890, !psr.id !891, !ValueTainted !154
  %5 = shl i32 %4, 24, !dbg !892, !psr.id !893, !ValueTainted !154
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !894, !psr.id !895, !PointTainted !161
  %7 = load i8, i8* %6, align 1, !dbg !894, !psr.id !896, !ValueTainted !154
  %8 = zext i8 %7 to i32, !dbg !897, !psr.id !898, !ValueTainted !154
  %9 = shl i32 %8, 16, !dbg !899, !psr.id !900, !ValueTainted !154
  %10 = or i32 %5, %9, !dbg !901, !psr.id !902, !ValueTainted !154
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !903, !psr.id !904, !PointTainted !161
  %12 = load i8, i8* %11, align 1, !dbg !903, !psr.id !905, !ValueTainted !154
  %13 = zext i8 %12 to i32, !dbg !906, !psr.id !907, !ValueTainted !154
  %14 = shl i32 %13, 8, !dbg !908, !psr.id !909, !ValueTainted !154
  %15 = or i32 %10, %14, !dbg !910, !psr.id !911, !ValueTainted !154
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !912, !psr.id !913, !PointTainted !161
  %17 = load i8, i8* %16, align 1, !dbg !912, !psr.id !914, !ValueTainted !154
  %18 = zext i8 %17 to i32, !dbg !915, !psr.id !916, !ValueTainted !154
  %19 = or i32 %15, %18, !dbg !917, !psr.id !918, !ValueTainted !154
  ret i32 %19, !dbg !919, !psr.id !920
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @bmul(i32* %0, i32* %1, i32 %2, i32 %3) #0 !dbg !921 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !925, metadata !DIExpression()), !dbg !926, !psr.id !927
  call void @llvm.dbg.value(metadata i32* %1, metadata !928, metadata !DIExpression()), !dbg !926, !psr.id !929
  call void @llvm.dbg.value(metadata i32 %2, metadata !930, metadata !DIExpression()), !dbg !926, !psr.id !931
  call void @llvm.dbg.value(metadata i32 %3, metadata !932, metadata !DIExpression()), !dbg !926, !psr.id !933
  %5 = and i32 %2, 286331153, !dbg !934, !psr.id !935, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %5, metadata !936, metadata !DIExpression()), !dbg !926, !psr.id !937
  %6 = and i32 %2, 572662306, !dbg !938, !psr.id !939, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %6, metadata !940, metadata !DIExpression()), !dbg !926, !psr.id !941
  %7 = and i32 %2, 1145324612, !dbg !942, !psr.id !943, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %7, metadata !944, metadata !DIExpression()), !dbg !926, !psr.id !945
  %8 = and i32 %2, -2004318072, !dbg !946, !psr.id !947, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %8, metadata !948, metadata !DIExpression()), !dbg !926, !psr.id !949
  %9 = and i32 %3, 286331153, !dbg !950, !psr.id !951, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %9, metadata !952, metadata !DIExpression()), !dbg !926, !psr.id !953
  %10 = and i32 %3, 572662306, !dbg !954, !psr.id !955, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %10, metadata !956, metadata !DIExpression()), !dbg !926, !psr.id !957
  %11 = and i32 %3, 1145324612, !dbg !958, !psr.id !959, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %11, metadata !960, metadata !DIExpression()), !dbg !926, !psr.id !961
  %12 = and i32 %3, -2004318072, !dbg !962, !psr.id !963, !ValueTainted !154
  call void @llvm.dbg.value(metadata i32 %12, metadata !964, metadata !DIExpression()), !dbg !926, !psr.id !965
  %13 = zext i32 %5 to i64, !dbg !966, !psr.id !967, !ValueTainted !154
  %14 = zext i32 %9 to i64, !dbg !966, !psr.id !968, !ValueTainted !154
  %15 = mul i64 %13, %14, !dbg !966, !psr.id !969, !ValueTainted !154
  %16 = zext i32 %6 to i64, !dbg !970, !psr.id !971, !ValueTainted !154
  %17 = zext i32 %12 to i64, !dbg !970, !psr.id !972, !ValueTainted !154
  %18 = mul i64 %16, %17, !dbg !970, !psr.id !973, !ValueTainted !154
  %19 = xor i64 %15, %18, !dbg !974, !psr.id !975, !ValueTainted !154
  %20 = zext i32 %7 to i64, !dbg !976, !psr.id !977, !ValueTainted !154
  %21 = zext i32 %11 to i64, !dbg !976, !psr.id !978, !ValueTainted !154
  %22 = mul i64 %20, %21, !dbg !976, !psr.id !979, !ValueTainted !154
  %23 = xor i64 %19, %22, !dbg !980, !psr.id !981, !ValueTainted !154
  %24 = zext i32 %8 to i64, !dbg !982, !psr.id !983, !ValueTainted !154
  %25 = zext i32 %10 to i64, !dbg !982, !psr.id !984, !ValueTainted !154
  %26 = mul i64 %24, %25, !dbg !982, !psr.id !985, !ValueTainted !154
  %27 = xor i64 %23, %26, !dbg !986, !psr.id !987, !ValueTainted !154
  call void @llvm.dbg.value(metadata i64 %27, metadata !988, metadata !DIExpression()), !dbg !926, !psr.id !989
  %28 = zext i32 %5 to i64, !dbg !990, !psr.id !991, !ValueTainted !154
  %29 = zext i32 %10 to i64, !dbg !990, !psr.id !992, !ValueTainted !154
  %30 = mul i64 %28, %29, !dbg !990, !psr.id !993, !ValueTainted !154
  %31 = zext i32 %6 to i64, !dbg !994, !psr.id !995, !ValueTainted !154
  %32 = zext i32 %9 to i64, !dbg !994, !psr.id !996, !ValueTainted !154
  %33 = mul i64 %31, %32, !dbg !994, !psr.id !997, !ValueTainted !154
  %34 = xor i64 %30, %33, !dbg !998, !psr.id !999, !ValueTainted !154
  %35 = zext i32 %7 to i64, !dbg !1000, !psr.id !1001, !ValueTainted !154
  %36 = zext i32 %12 to i64, !dbg !1000, !psr.id !1002, !ValueTainted !154
  %37 = mul i64 %35, %36, !dbg !1000, !psr.id !1003, !ValueTainted !154
  %38 = xor i64 %34, %37, !dbg !1004, !psr.id !1005, !ValueTainted !154
  %39 = zext i32 %8 to i64, !dbg !1006, !psr.id !1007, !ValueTainted !154
  %40 = zext i32 %11 to i64, !dbg !1006, !psr.id !1008, !ValueTainted !154
  %41 = mul i64 %39, %40, !dbg !1006, !psr.id !1009, !ValueTainted !154
  %42 = xor i64 %38, %41, !dbg !1010, !psr.id !1011, !ValueTainted !154
  call void @llvm.dbg.value(metadata i64 %42, metadata !1012, metadata !DIExpression()), !dbg !926, !psr.id !1013
  %43 = zext i32 %5 to i64, !dbg !1014, !psr.id !1015, !ValueTainted !154
  %44 = zext i32 %11 to i64, !dbg !1014, !psr.id !1016, !ValueTainted !154
  %45 = mul i64 %43, %44, !dbg !1014, !psr.id !1017, !ValueTainted !154
  %46 = zext i32 %6 to i64, !dbg !1018, !psr.id !1019, !ValueTainted !154
  %47 = zext i32 %10 to i64, !dbg !1018, !psr.id !1020, !ValueTainted !154
  %48 = mul i64 %46, %47, !dbg !1018, !psr.id !1021, !ValueTainted !154
  %49 = xor i64 %45, %48, !dbg !1022, !psr.id !1023, !ValueTainted !154
  %50 = zext i32 %7 to i64, !dbg !1024, !psr.id !1025, !ValueTainted !154
  %51 = zext i32 %9 to i64, !dbg !1024, !psr.id !1026, !ValueTainted !154
  %52 = mul i64 %50, %51, !dbg !1024, !psr.id !1027, !ValueTainted !154
  %53 = xor i64 %49, %52, !dbg !1028, !psr.id !1029, !ValueTainted !154
  %54 = zext i32 %8 to i64, !dbg !1030, !psr.id !1031, !ValueTainted !154
  %55 = zext i32 %12 to i64, !dbg !1030, !psr.id !1032, !ValueTainted !154
  %56 = mul i64 %54, %55, !dbg !1030, !psr.id !1033, !ValueTainted !154
  %57 = xor i64 %53, %56, !dbg !1034, !psr.id !1035, !ValueTainted !154
  call void @llvm.dbg.value(metadata i64 %57, metadata !1036, metadata !DIExpression()), !dbg !926, !psr.id !1037
  %58 = zext i32 %5 to i64, !dbg !1038, !psr.id !1039, !ValueTainted !154
  %59 = zext i32 %12 to i64, !dbg !1038, !psr.id !1040, !ValueTainted !154
  %60 = mul i64 %58, %59, !dbg !1038, !psr.id !1041, !ValueTainted !154
  %61 = zext i32 %6 to i64, !dbg !1042, !psr.id !1043, !ValueTainted !154
  %62 = zext i32 %11 to i64, !dbg !1042, !psr.id !1044, !ValueTainted !154
  %63 = mul i64 %61, %62, !dbg !1042, !psr.id !1045, !ValueTainted !154
  %64 = xor i64 %60, %63, !dbg !1046, !psr.id !1047, !ValueTainted !154
  %65 = zext i32 %7 to i64, !dbg !1048, !psr.id !1049, !ValueTainted !154
  %66 = zext i32 %10 to i64, !dbg !1048, !psr.id !1050, !ValueTainted !154
  %67 = mul i64 %65, %66, !dbg !1048, !psr.id !1051, !ValueTainted !154
  %68 = xor i64 %64, %67, !dbg !1052, !psr.id !1053, !ValueTainted !154
  %69 = zext i32 %8 to i64, !dbg !1054, !psr.id !1055, !ValueTainted !154
  %70 = zext i32 %9 to i64, !dbg !1054, !psr.id !1056, !ValueTainted !154
  %71 = mul i64 %69, %70, !dbg !1054, !psr.id !1057, !ValueTainted !154
  %72 = xor i64 %68, %71, !dbg !1058, !psr.id !1059, !ValueTainted !154
  call void @llvm.dbg.value(metadata i64 %72, metadata !1060, metadata !DIExpression()), !dbg !926, !psr.id !1061
  %73 = and i64 %27, 1229782938247303441, !dbg !1062, !psr.id !1063, !ValueTainted !154
  call void @llvm.dbg.value(metadata i64 %73, metadata !988, metadata !DIExpression()), !dbg !926, !psr.id !1064
  %74 = and i64 %42, 2459565876494606882, !dbg !1065, !psr.id !1066, !ValueTainted !154
  call void @llvm.dbg.value(metadata i64 %74, metadata !1012, metadata !DIExpression()), !dbg !926, !psr.id !1067
  %75 = and i64 %57, 4919131752989213764, !dbg !1068, !psr.id !1069, !ValueTainted !154
  call void @llvm.dbg.value(metadata i64 %75, metadata !1036, metadata !DIExpression()), !dbg !926, !psr.id !1070
  %76 = and i64 %72, -8608480567731124088, !dbg !1071, !psr.id !1072, !ValueTainted !154
  call void @llvm.dbg.value(metadata i64 %76, metadata !1060, metadata !DIExpression()), !dbg !926, !psr.id !1073
  %77 = or i64 %73, %74, !dbg !1074, !psr.id !1075, !ValueTainted !154
  %78 = or i64 %77, %75, !dbg !1076, !psr.id !1077, !ValueTainted !154
  %79 = or i64 %78, %76, !dbg !1078, !psr.id !1079, !ValueTainted !154
  call void @llvm.dbg.value(metadata i64 %79, metadata !1080, metadata !DIExpression()), !dbg !926, !psr.id !1081
  %80 = trunc i64 %79 to i32, !dbg !1082, !psr.id !1083, !ValueTainted !154
  store i32 %80, i32* %1, align 4, !dbg !1084, !psr.id !1085
  %81 = lshr i64 %79, 32, !dbg !1086, !psr.id !1087, !ValueTainted !154
  %82 = trunc i64 %81 to i32, !dbg !1088, !psr.id !1089, !ValueTainted !154
  store i32 %82, i32* %0, align 4, !dbg !1090, !psr.id !1091
  ret void, !dbg !1092, !psr.id !1093
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !1094 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1097, metadata !DIExpression()), !dbg !1098, !psr.id !1099
  call void @llvm.dbg.value(metadata i32 %1, metadata !1100, metadata !DIExpression()), !dbg !1098, !psr.id !1101
  call void @llvm.dbg.value(metadata i8* %0, metadata !1102, metadata !DIExpression()), !dbg !1098, !psr.id !1103
  %3 = lshr i32 %1, 24, !dbg !1104, !psr.id !1105, !ValueTainted !154
  %4 = trunc i32 %3 to i8, !dbg !1106, !psr.id !1107, !ValueTainted !154
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1108, !psr.id !1109
  store i8 %4, i8* %5, align 1, !dbg !1110, !psr.id !1111
  %6 = lshr i32 %1, 16, !dbg !1112, !psr.id !1113, !ValueTainted !154
  %7 = trunc i32 %6 to i8, !dbg !1114, !psr.id !1115, !ValueTainted !154
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1116, !psr.id !1117
  store i8 %7, i8* %8, align 1, !dbg !1118, !psr.id !1119
  %9 = lshr i32 %1, 8, !dbg !1120, !psr.id !1121, !ValueTainted !154
  %10 = trunc i32 %9 to i8, !dbg !1122, !psr.id !1123, !ValueTainted !154
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1124, !psr.id !1125
  store i8 %10, i8* %11, align 1, !dbg !1126, !psr.id !1127
  %12 = trunc i32 %1 to i8, !dbg !1128, !psr.id !1129, !ValueTainted !154
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1130, !psr.id !1131
  store i8 %12, i8* %13, align 1, !dbg !1132, !psr.id !1133
  ret void, !dbg !1134, !psr.id !1135
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @br_ghash_ctmul_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0, !3}
!llvm.ident = !{!15, !15}
!llvm.module.flags = !{!16, !17, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "br_ghash_ctmul.c", directory: "/home/luwei/bech-back/BearSSL/GHASH_ctmul")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !5, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "../BearSSL/src/hash/ghash_ctmul.c", directory: "/home/luwei/bech-back/BearSSL/GHASH_ctmul")
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
!29 = !{!"0"}
!30 = !DILocalVariable(name: "h", arg: 2, scope: !19, file: !1, line: 3, type: !23)
!31 = !{!"1"}
!32 = !DILocalVariable(name: "data", arg: 3, scope: !19, file: !1, line: 3, type: !23)
!33 = !{!"2"}
!34 = !DILocalVariable(name: "len", arg: 4, scope: !19, file: !1, line: 3, type: !25)
!35 = !{!"3"}
!36 = !DILocation(line: 4, column: 12, scope: !19)
!37 = !{!"4"}
!38 = !DILocation(line: 4, column: 2, scope: !19)
!39 = !{!"5"}
!40 = !DILocation(line: 5, column: 12, scope: !19)
!41 = !{!"6"}
!42 = !DILocation(line: 5, column: 2, scope: !19)
!43 = !{!"7"}
!44 = !DILocation(line: 6, column: 12, scope: !19)
!45 = !{!"8"}
!46 = !DILocation(line: 6, column: 2, scope: !19)
!47 = !{!"9"}
!48 = !DILocation(line: 7, column: 12, scope: !19)
!49 = !{!"10"}
!50 = !DILocation(line: 7, column: 2, scope: !19)
!51 = !{!"11"}
!52 = !DILocation(line: 9, column: 12, scope: !19)
!53 = !{!"12"}
!54 = !DILocation(line: 9, column: 2, scope: !19)
!55 = !{!"13"}
!56 = !DILocation(line: 10, column: 12, scope: !19)
!57 = !{!"14"}
!58 = !DILocation(line: 10, column: 2, scope: !19)
!59 = !{!"15"}
!60 = !DILocation(line: 12, column: 2, scope: !19)
!61 = !{!"16"}
!62 = !DILocation(line: 13, column: 1, scope: !19)
!63 = !{!"17"}
!64 = distinct !DISubprogram(name: "br_ghash_ctmul_wrapper_t", scope: !1, file: !1, line: 21, type: !65, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DISubroutineType(types: !66)
!66 = !{null}
!67 = !DILocation(line: 22, column: 12, scope: !64)
!68 = !{!"18"}
!69 = !DILocalVariable(name: "y", scope: !64, file: !1, line: 22, type: !22)
!70 = !DILocation(line: 0, scope: !64)
!71 = !{!"19"}
!72 = !DILocation(line: 23, column: 19, scope: !64)
!73 = !{!"20"}
!74 = !DILocalVariable(name: "h", scope: !64, file: !1, line: 23, type: !23)
!75 = !{!"21"}
!76 = !DILocation(line: 24, column: 22, scope: !64)
!77 = !{!"22"}
!78 = !DILocalVariable(name: "data", scope: !64, file: !1, line: 24, type: !23)
!79 = !{!"23"}
!80 = !DILocation(line: 25, column: 17, scope: !64)
!81 = !{!"24"}
!82 = !DILocalVariable(name: "len", scope: !64, file: !1, line: 25, type: !25)
!83 = !{!"25"}
!84 = !DILocation(line: 26, column: 2, scope: !64)
!85 = !{!"26"}
!86 = !DILocation(line: 27, column: 1, scope: !64)
!87 = !{!"27"}
!88 = distinct !DISubprogram(name: "br_ghash_ctmul", scope: !4, file: !4, line: 197, type: !20, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!89 = !{!"28"}
!90 = !{!"29"}
!91 = !{!"30"}
!92 = !{!"31"}
!93 = !{!"32"}
!94 = !{!"33"}
!95 = !DILocalVariable(name: "y", arg: 1, scope: !88, file: !4, line: 197, type: !22)
!96 = !DILocation(line: 0, scope: !88)
!97 = !{!"34"}
!98 = !DILocalVariable(name: "h", arg: 2, scope: !88, file: !4, line: 197, type: !23)
!99 = !{!"35"}
!100 = !DILocalVariable(name: "data", arg: 3, scope: !88, file: !4, line: 197, type: !23)
!101 = !{!"36"}
!102 = !DILocalVariable(name: "len", arg: 4, scope: !88, file: !4, line: 197, type: !25)
!103 = !{!"37"}
!104 = !DILocalVariable(name: "yw", scope: !88, file: !4, line: 201, type: !105)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4)
!108 = !DILocation(line: 201, column: 11, scope: !88)
!109 = !{!"38"}
!110 = !DILocalVariable(name: "hw", scope: !88, file: !4, line: 202, type: !105)
!111 = !DILocation(line: 202, column: 11, scope: !88)
!112 = !{!"39"}
!113 = !DILocalVariable(name: "buf", scope: !88, file: !4, line: 199, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!116 = !{!"40"}
!117 = !DILocalVariable(name: "yb", scope: !88, file: !4, line: 200, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!119 = !{!"41"}
!120 = !DILocalVariable(name: "hb", scope: !88, file: !4, line: 199, type: !114)
!121 = !{!"42"}
!122 = !DILocation(line: 211, column: 10, scope: !88)
!123 = !{!"43"}
!124 = !DILocation(line: 211, column: 2, scope: !88)
!125 = !{!"44"}
!126 = !DILocation(line: 211, column: 8, scope: !88)
!127 = !{!"45"}
!128 = !DILocation(line: 212, column: 24, scope: !88)
!129 = !{!"46"}
!130 = !DILocation(line: 212, column: 10, scope: !88)
!131 = !{!"47"}
!132 = !DILocation(line: 212, column: 2, scope: !88)
!133 = !{!"48"}
!134 = !DILocation(line: 212, column: 8, scope: !88)
!135 = !{!"49"}
!136 = !DILocation(line: 213, column: 24, scope: !88)
!137 = !{!"50"}
!138 = !DILocation(line: 213, column: 10, scope: !88)
!139 = !{!"51"}
!140 = !DILocation(line: 213, column: 2, scope: !88)
!141 = !{!"52"}
!142 = !DILocation(line: 213, column: 8, scope: !88)
!143 = !{!"53"}
!144 = !DILocation(line: 214, column: 24, scope: !88)
!145 = !{!"54"}
!146 = !DILocation(line: 214, column: 10, scope: !88)
!147 = !{!"55"}
!148 = !DILocation(line: 214, column: 2, scope: !88)
!149 = !{!"56"}
!150 = !DILocation(line: 214, column: 8, scope: !88)
!151 = !{!"57"}
!152 = !DILocation(line: 215, column: 10, scope: !88)
!153 = !{!"58"}
!154 = !{!"ValueTainted"}
!155 = !DILocation(line: 215, column: 2, scope: !88)
!156 = !{!"59"}
!157 = !DILocation(line: 215, column: 8, scope: !88)
!158 = !{!"60"}
!159 = !DILocation(line: 216, column: 24, scope: !88)
!160 = !{!"61"}
!161 = !{!"PointTainted"}
!162 = !DILocation(line: 216, column: 10, scope: !88)
!163 = !{!"62"}
!164 = !DILocation(line: 216, column: 2, scope: !88)
!165 = !{!"63"}
!166 = !DILocation(line: 216, column: 8, scope: !88)
!167 = !{!"64"}
!168 = !DILocation(line: 217, column: 24, scope: !88)
!169 = !{!"65"}
!170 = !DILocation(line: 217, column: 10, scope: !88)
!171 = !{!"66"}
!172 = !DILocation(line: 217, column: 2, scope: !88)
!173 = !{!"67"}
!174 = !DILocation(line: 217, column: 8, scope: !88)
!175 = !{!"68"}
!176 = !DILocation(line: 218, column: 24, scope: !88)
!177 = !{!"69"}
!178 = !DILocation(line: 218, column: 10, scope: !88)
!179 = !{!"70"}
!180 = !DILocation(line: 218, column: 2, scope: !88)
!181 = !{!"71"}
!182 = !DILocation(line: 218, column: 8, scope: !88)
!183 = !{!"72"}
!184 = !DILocation(line: 219, column: 2, scope: !88)
!185 = !{!"73"}
!186 = !{!"74"}
!187 = !{!"75"}
!188 = !{!"76"}
!189 = !{!"77"}
!190 = !DILocation(line: 219, column: 13, scope: !88)
!191 = !{!"78"}
!192 = !{!"79"}
!193 = !DILocalVariable(name: "tmp", scope: !194, file: !4, line: 221, type: !195)
!194 = distinct !DILexicalBlock(scope: !88, file: !4, line: 219, column: 18)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 16)
!198 = !DILocation(line: 221, column: 17, scope: !194)
!199 = !{!"80"}
!200 = !DILocalVariable(name: "a", scope: !194, file: !4, line: 223, type: !201)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 288, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 9)
!204 = !DILocation(line: 223, column: 12, scope: !194)
!205 = !{!"81"}
!206 = !DILocalVariable(name: "b", scope: !194, file: !4, line: 223, type: !201)
!207 = !DILocation(line: 223, column: 18, scope: !194)
!208 = !{!"82"}
!209 = !DILocalVariable(name: "zw", scope: !194, file: !4, line: 223, type: !210)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 8)
!213 = !DILocation(line: 223, column: 24, scope: !194)
!214 = !{!"83"}
!215 = !DILocation(line: 230, column: 11, scope: !216)
!216 = distinct !DILexicalBlock(scope: !194, file: !4, line: 230, column: 7)
!217 = !{!"84"}
!218 = !DILocation(line: 230, column: 7, scope: !194)
!219 = !{!"85"}
!220 = !DILocalVariable(name: "src", scope: !194, file: !4, line: 220, type: !114)
!221 = !DILocation(line: 0, scope: !194)
!222 = !{!"86"}
!223 = !DILocation(line: 232, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !216, file: !4, line: 230, column: 18)
!225 = !{!"87"}
!226 = !{!"88"}
!227 = !DILocation(line: 233, column: 8, scope: !224)
!228 = !{!"89"}
!229 = !{!"90"}
!230 = !DILocation(line: 234, column: 3, scope: !224)
!231 = !{!"91"}
!232 = !DILocation(line: 235, column: 4, scope: !233)
!233 = distinct !DILexicalBlock(scope: !216, file: !4, line: 234, column: 10)
!234 = !{!"92"}
!235 = !{!"93"}
!236 = !DILocation(line: 236, column: 11, scope: !233)
!237 = !{!"94"}
!238 = !DILocation(line: 236, column: 15, scope: !233)
!239 = !{!"95"}
!240 = !DILocation(line: 236, column: 38, scope: !233)
!241 = !{!"96"}
!242 = !DILocation(line: 236, column: 4, scope: !233)
!243 = !{!"97"}
!244 = !DILocation(line: 237, column: 10, scope: !233)
!245 = !{!"98"}
!246 = !{!"99"}
!247 = !{!"100"}
!248 = !{!"101"}
!249 = !DILocation(line: 0, scope: !216)
!250 = !{!"102"}
!251 = !{!"103"}
!252 = !{!"104"}
!253 = !{!"105"}
!254 = !{!"106"}
!255 = !{!"107"}
!256 = !DILocation(line: 245, column: 12, scope: !194)
!257 = !{!"108"}
!258 = !DILocation(line: 245, column: 3, scope: !194)
!259 = !{!"109"}
!260 = !DILocation(line: 245, column: 9, scope: !194)
!261 = !{!"110"}
!262 = !{!"111"}
!263 = !{!"112"}
!264 = !DILocation(line: 246, column: 27, scope: !194)
!265 = !{!"113"}
!266 = !DILocation(line: 246, column: 12, scope: !194)
!267 = !{!"114"}
!268 = !DILocation(line: 246, column: 3, scope: !194)
!269 = !{!"115"}
!270 = !DILocation(line: 246, column: 9, scope: !194)
!271 = !{!"116"}
!272 = !{!"117"}
!273 = !{!"118"}
!274 = !DILocation(line: 247, column: 27, scope: !194)
!275 = !{!"119"}
!276 = !DILocation(line: 247, column: 12, scope: !194)
!277 = !{!"120"}
!278 = !DILocation(line: 247, column: 3, scope: !194)
!279 = !{!"121"}
!280 = !DILocation(line: 247, column: 9, scope: !194)
!281 = !{!"122"}
!282 = !{!"123"}
!283 = !{!"124"}
!284 = !DILocation(line: 248, column: 27, scope: !194)
!285 = !{!"125"}
!286 = !DILocation(line: 248, column: 12, scope: !194)
!287 = !{!"126"}
!288 = !DILocation(line: 248, column: 3, scope: !194)
!289 = !{!"127"}
!290 = !DILocation(line: 248, column: 9, scope: !194)
!291 = !{!"128"}
!292 = !{!"129"}
!293 = !{!"130"}
!294 = !DILocation(line: 262, column: 10, scope: !194)
!295 = !{!"131"}
!296 = !{!"132"}
!297 = !DILocation(line: 262, column: 3, scope: !194)
!298 = !{!"133"}
!299 = !DILocation(line: 262, column: 8, scope: !194)
!300 = !{!"134"}
!301 = !DILocation(line: 263, column: 10, scope: !194)
!302 = !{!"135"}
!303 = !{!"136"}
!304 = !DILocation(line: 263, column: 3, scope: !194)
!305 = !{!"137"}
!306 = !DILocation(line: 263, column: 8, scope: !194)
!307 = !{!"138"}
!308 = !DILocation(line: 264, column: 10, scope: !194)
!309 = !{!"139"}
!310 = !{!"140"}
!311 = !DILocation(line: 264, column: 3, scope: !194)
!312 = !{!"141"}
!313 = !DILocation(line: 264, column: 8, scope: !194)
!314 = !{!"142"}
!315 = !DILocation(line: 265, column: 10, scope: !194)
!316 = !{!"143"}
!317 = !{!"144"}
!318 = !DILocation(line: 265, column: 3, scope: !194)
!319 = !{!"145"}
!320 = !DILocation(line: 265, column: 8, scope: !194)
!321 = !{!"146"}
!322 = !DILocation(line: 266, column: 10, scope: !194)
!323 = !{!"147"}
!324 = !{!"148"}
!325 = !DILocation(line: 266, column: 17, scope: !194)
!326 = !{!"149"}
!327 = !{!"150"}
!328 = !DILocation(line: 266, column: 15, scope: !194)
!329 = !{!"151"}
!330 = !DILocation(line: 266, column: 3, scope: !194)
!331 = !{!"152"}
!332 = !DILocation(line: 266, column: 8, scope: !194)
!333 = !{!"153"}
!334 = !DILocation(line: 267, column: 10, scope: !194)
!335 = !{!"154"}
!336 = !{!"155"}
!337 = !DILocation(line: 267, column: 17, scope: !194)
!338 = !{!"156"}
!339 = !{!"157"}
!340 = !DILocation(line: 267, column: 15, scope: !194)
!341 = !{!"158"}
!342 = !DILocation(line: 267, column: 3, scope: !194)
!343 = !{!"159"}
!344 = !DILocation(line: 267, column: 8, scope: !194)
!345 = !{!"160"}
!346 = !DILocation(line: 269, column: 10, scope: !194)
!347 = !{!"161"}
!348 = !{!"162"}
!349 = !DILocation(line: 269, column: 3, scope: !194)
!350 = !{!"163"}
!351 = !DILocation(line: 269, column: 8, scope: !194)
!352 = !{!"164"}
!353 = !DILocation(line: 270, column: 10, scope: !194)
!354 = !{!"165"}
!355 = !{!"166"}
!356 = !DILocation(line: 270, column: 3, scope: !194)
!357 = !{!"167"}
!358 = !DILocation(line: 270, column: 8, scope: !194)
!359 = !{!"168"}
!360 = !DILocation(line: 271, column: 10, scope: !194)
!361 = !{!"169"}
!362 = !{!"170"}
!363 = !DILocation(line: 271, column: 3, scope: !194)
!364 = !{!"171"}
!365 = !DILocation(line: 271, column: 8, scope: !194)
!366 = !{!"172"}
!367 = !DILocation(line: 272, column: 10, scope: !194)
!368 = !{!"173"}
!369 = !{!"174"}
!370 = !DILocation(line: 272, column: 3, scope: !194)
!371 = !{!"175"}
!372 = !DILocation(line: 272, column: 8, scope: !194)
!373 = !{!"176"}
!374 = !DILocation(line: 273, column: 10, scope: !194)
!375 = !{!"177"}
!376 = !{!"178"}
!377 = !DILocation(line: 273, column: 17, scope: !194)
!378 = !{!"179"}
!379 = !{!"180"}
!380 = !DILocation(line: 273, column: 15, scope: !194)
!381 = !{!"181"}
!382 = !DILocation(line: 273, column: 3, scope: !194)
!383 = !{!"182"}
!384 = !DILocation(line: 273, column: 8, scope: !194)
!385 = !{!"183"}
!386 = !DILocation(line: 274, column: 10, scope: !194)
!387 = !{!"184"}
!388 = !{!"185"}
!389 = !DILocation(line: 274, column: 17, scope: !194)
!390 = !{!"186"}
!391 = !{!"187"}
!392 = !DILocation(line: 274, column: 15, scope: !194)
!393 = !{!"188"}
!394 = !DILocation(line: 274, column: 3, scope: !194)
!395 = !{!"189"}
!396 = !DILocation(line: 274, column: 8, scope: !194)
!397 = !{!"190"}
!398 = !DILocation(line: 276, column: 10, scope: !194)
!399 = !{!"191"}
!400 = !{!"192"}
!401 = !DILocation(line: 276, column: 17, scope: !194)
!402 = !{!"193"}
!403 = !{!"194"}
!404 = !DILocation(line: 276, column: 15, scope: !194)
!405 = !{!"195"}
!406 = !DILocation(line: 276, column: 3, scope: !194)
!407 = !{!"196"}
!408 = !DILocation(line: 276, column: 8, scope: !194)
!409 = !{!"197"}
!410 = !DILocation(line: 277, column: 10, scope: !194)
!411 = !{!"198"}
!412 = !{!"199"}
!413 = !DILocation(line: 277, column: 17, scope: !194)
!414 = !{!"200"}
!415 = !{!"201"}
!416 = !DILocation(line: 277, column: 15, scope: !194)
!417 = !{!"202"}
!418 = !DILocation(line: 277, column: 3, scope: !194)
!419 = !{!"203"}
!420 = !DILocation(line: 277, column: 8, scope: !194)
!421 = !{!"204"}
!422 = !DILocation(line: 278, column: 10, scope: !194)
!423 = !{!"205"}
!424 = !{!"206"}
!425 = !DILocation(line: 278, column: 17, scope: !194)
!426 = !{!"207"}
!427 = !{!"208"}
!428 = !DILocation(line: 278, column: 15, scope: !194)
!429 = !{!"209"}
!430 = !DILocation(line: 278, column: 3, scope: !194)
!431 = !{!"210"}
!432 = !DILocation(line: 278, column: 8, scope: !194)
!433 = !{!"211"}
!434 = !DILocation(line: 279, column: 10, scope: !194)
!435 = !{!"212"}
!436 = !{!"213"}
!437 = !DILocation(line: 279, column: 17, scope: !194)
!438 = !{!"214"}
!439 = !{!"215"}
!440 = !DILocation(line: 279, column: 15, scope: !194)
!441 = !{!"216"}
!442 = !DILocation(line: 279, column: 3, scope: !194)
!443 = !{!"217"}
!444 = !DILocation(line: 279, column: 8, scope: !194)
!445 = !{!"218"}
!446 = !DILocation(line: 280, column: 10, scope: !194)
!447 = !{!"219"}
!448 = !{!"220"}
!449 = !DILocation(line: 280, column: 17, scope: !194)
!450 = !{!"221"}
!451 = !{!"222"}
!452 = !DILocation(line: 280, column: 15, scope: !194)
!453 = !{!"223"}
!454 = !DILocation(line: 280, column: 3, scope: !194)
!455 = !{!"224"}
!456 = !DILocation(line: 280, column: 8, scope: !194)
!457 = !{!"225"}
!458 = !DILocation(line: 281, column: 10, scope: !194)
!459 = !{!"226"}
!460 = !{!"227"}
!461 = !DILocation(line: 281, column: 17, scope: !194)
!462 = !{!"228"}
!463 = !{!"229"}
!464 = !DILocation(line: 281, column: 15, scope: !194)
!465 = !{!"230"}
!466 = !DILocation(line: 281, column: 3, scope: !194)
!467 = !{!"231"}
!468 = !DILocation(line: 281, column: 8, scope: !194)
!469 = !{!"232"}
!470 = !DILocalVariable(name: "i", scope: !194, file: !4, line: 222, type: !471)
!471 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!472 = !{!"233"}
!473 = !DILocation(line: 283, column: 8, scope: !474)
!474 = distinct !DILexicalBlock(scope: !194, file: !4, line: 283, column: 3)
!475 = !{!"234"}
!476 = !DILocation(line: 0, scope: !474)
!477 = !{!"235"}
!478 = !{!"236"}
!479 = !DILocation(line: 283, column: 17, scope: !480)
!480 = distinct !DILexicalBlock(scope: !474, file: !4, line: 283, column: 3)
!481 = !{!"237"}
!482 = !DILocation(line: 283, column: 3, scope: !474)
!483 = !{!"238"}
!484 = !DILocation(line: 284, column: 10, scope: !485)
!485 = distinct !DILexicalBlock(scope: !480, file: !4, line: 283, column: 28)
!486 = !{!"239"}
!487 = !{!"240"}
!488 = !DILocation(line: 284, column: 17, scope: !485)
!489 = !{!"241"}
!490 = !{!"242"}
!491 = !DILocation(line: 284, column: 23, scope: !485)
!492 = !{!"243"}
!493 = !{!"244"}
!494 = !{!"245"}
!495 = !DILocation(line: 284, column: 29, scope: !485)
!496 = !{!"246"}
!497 = !{!"247"}
!498 = !{!"248"}
!499 = !DILocation(line: 284, column: 4, scope: !485)
!500 = !{!"249"}
!501 = !DILocation(line: 285, column: 3, scope: !485)
!502 = !{!"250"}
!503 = !DILocation(line: 283, column: 24, scope: !480)
!504 = !{!"251"}
!505 = !{!"252"}
!506 = !DILocation(line: 283, column: 3, scope: !480)
!507 = distinct !{!507, !482, !508, !509}
!508 = !DILocation(line: 285, column: 3, scope: !474)
!509 = !{!"llvm.loop.mustprogress"}
!510 = !{!"253"}
!511 = !DILocation(line: 287, column: 8, scope: !194)
!512 = !{!"254"}
!513 = !{!"255"}
!514 = !DILocalVariable(name: "c0", scope: !194, file: !4, line: 224, type: !6)
!515 = !{!"256"}
!516 = !DILocation(line: 288, column: 8, scope: !194)
!517 = !{!"257"}
!518 = !{!"258"}
!519 = !DILocation(line: 288, column: 15, scope: !194)
!520 = !{!"259"}
!521 = !{!"260"}
!522 = !DILocation(line: 288, column: 13, scope: !194)
!523 = !{!"261"}
!524 = !DILocation(line: 288, column: 22, scope: !194)
!525 = !{!"262"}
!526 = !{!"263"}
!527 = !DILocation(line: 288, column: 20, scope: !194)
!528 = !{!"264"}
!529 = !DILocation(line: 288, column: 29, scope: !194)
!530 = !{!"265"}
!531 = !{!"266"}
!532 = !DILocation(line: 288, column: 27, scope: !194)
!533 = !{!"267"}
!534 = !DILocalVariable(name: "c1", scope: !194, file: !4, line: 224, type: !6)
!535 = !{!"268"}
!536 = !DILocation(line: 289, column: 8, scope: !194)
!537 = !{!"269"}
!538 = !{!"270"}
!539 = !DILocation(line: 289, column: 15, scope: !194)
!540 = !{!"271"}
!541 = !{!"272"}
!542 = !DILocation(line: 289, column: 13, scope: !194)
!543 = !{!"273"}
!544 = !DILocation(line: 289, column: 22, scope: !194)
!545 = !{!"274"}
!546 = !{!"275"}
!547 = !DILocation(line: 289, column: 20, scope: !194)
!548 = !{!"276"}
!549 = !DILocation(line: 289, column: 29, scope: !194)
!550 = !{!"277"}
!551 = !{!"278"}
!552 = !DILocation(line: 289, column: 27, scope: !194)
!553 = !{!"279"}
!554 = !DILocalVariable(name: "c2", scope: !194, file: !4, line: 224, type: !6)
!555 = !{!"280"}
!556 = !DILocation(line: 290, column: 8, scope: !194)
!557 = !{!"281"}
!558 = !{!"282"}
!559 = !DILocalVariable(name: "c3", scope: !194, file: !4, line: 224, type: !6)
!560 = !{!"283"}
!561 = !DILocation(line: 291, column: 8, scope: !194)
!562 = !{!"284"}
!563 = !{!"285"}
!564 = !DILocalVariable(name: "d0", scope: !194, file: !4, line: 224, type: !6)
!565 = !{!"286"}
!566 = !DILocation(line: 292, column: 8, scope: !194)
!567 = !{!"287"}
!568 = !{!"288"}
!569 = !DILocation(line: 292, column: 15, scope: !194)
!570 = !{!"289"}
!571 = !{!"290"}
!572 = !DILocation(line: 292, column: 13, scope: !194)
!573 = !{!"291"}
!574 = !DILocation(line: 292, column: 22, scope: !194)
!575 = !{!"292"}
!576 = !{!"293"}
!577 = !DILocation(line: 292, column: 20, scope: !194)
!578 = !{!"294"}
!579 = !DILocation(line: 292, column: 29, scope: !194)
!580 = !{!"295"}
!581 = !{!"296"}
!582 = !DILocation(line: 292, column: 27, scope: !194)
!583 = !{!"297"}
!584 = !DILocalVariable(name: "d1", scope: !194, file: !4, line: 224, type: !6)
!585 = !{!"298"}
!586 = !DILocation(line: 293, column: 8, scope: !194)
!587 = !{!"299"}
!588 = !{!"300"}
!589 = !DILocation(line: 293, column: 15, scope: !194)
!590 = !{!"301"}
!591 = !{!"302"}
!592 = !DILocation(line: 293, column: 13, scope: !194)
!593 = !{!"303"}
!594 = !DILocation(line: 293, column: 22, scope: !194)
!595 = !{!"304"}
!596 = !{!"305"}
!597 = !DILocation(line: 293, column: 20, scope: !194)
!598 = !{!"306"}
!599 = !DILocation(line: 293, column: 29, scope: !194)
!600 = !{!"307"}
!601 = !{!"308"}
!602 = !DILocation(line: 293, column: 27, scope: !194)
!603 = !{!"309"}
!604 = !DILocalVariable(name: "d2", scope: !194, file: !4, line: 224, type: !6)
!605 = !{!"310"}
!606 = !DILocation(line: 294, column: 8, scope: !194)
!607 = !{!"311"}
!608 = !{!"312"}
!609 = !DILocalVariable(name: "d3", scope: !194, file: !4, line: 224, type: !6)
!610 = !{!"313"}
!611 = !DILocation(line: 295, column: 8, scope: !194)
!612 = !{!"314"}
!613 = !{!"315"}
!614 = !DILocalVariable(name: "e0", scope: !194, file: !4, line: 224, type: !6)
!615 = !{!"316"}
!616 = !DILocation(line: 296, column: 8, scope: !194)
!617 = !{!"317"}
!618 = !{!"318"}
!619 = !DILocation(line: 296, column: 15, scope: !194)
!620 = !{!"319"}
!621 = !{!"320"}
!622 = !DILocation(line: 296, column: 13, scope: !194)
!623 = !{!"321"}
!624 = !DILocation(line: 296, column: 22, scope: !194)
!625 = !{!"322"}
!626 = !{!"323"}
!627 = !DILocation(line: 296, column: 20, scope: !194)
!628 = !{!"324"}
!629 = !DILocation(line: 296, column: 29, scope: !194)
!630 = !{!"325"}
!631 = !{!"326"}
!632 = !DILocation(line: 296, column: 27, scope: !194)
!633 = !{!"327"}
!634 = !DILocalVariable(name: "e1", scope: !194, file: !4, line: 224, type: !6)
!635 = !{!"328"}
!636 = !DILocation(line: 297, column: 8, scope: !194)
!637 = !{!"329"}
!638 = !{!"330"}
!639 = !DILocation(line: 297, column: 15, scope: !194)
!640 = !{!"331"}
!641 = !{!"332"}
!642 = !DILocation(line: 297, column: 13, scope: !194)
!643 = !{!"333"}
!644 = !DILocation(line: 297, column: 22, scope: !194)
!645 = !{!"334"}
!646 = !{!"335"}
!647 = !DILocation(line: 297, column: 20, scope: !194)
!648 = !{!"336"}
!649 = !DILocation(line: 297, column: 29, scope: !194)
!650 = !{!"337"}
!651 = !{!"338"}
!652 = !DILocation(line: 297, column: 27, scope: !194)
!653 = !{!"339"}
!654 = !DILocalVariable(name: "e2", scope: !194, file: !4, line: 224, type: !6)
!655 = !{!"340"}
!656 = !DILocation(line: 298, column: 8, scope: !194)
!657 = !{!"341"}
!658 = !{!"342"}
!659 = !DILocalVariable(name: "e3", scope: !194, file: !4, line: 224, type: !6)
!660 = !{!"343"}
!661 = !DILocation(line: 300, column: 12, scope: !194)
!662 = !{!"344"}
!663 = !DILocation(line: 300, column: 6, scope: !194)
!664 = !{!"345"}
!665 = !{!"346"}
!666 = !DILocation(line: 301, column: 12, scope: !194)
!667 = !{!"347"}
!668 = !DILocation(line: 301, column: 6, scope: !194)
!669 = !{!"348"}
!670 = !{!"349"}
!671 = !DILocation(line: 302, column: 12, scope: !194)
!672 = !{!"350"}
!673 = !DILocation(line: 302, column: 6, scope: !194)
!674 = !{!"351"}
!675 = !{!"352"}
!676 = !DILocation(line: 303, column: 12, scope: !194)
!677 = !{!"353"}
!678 = !DILocation(line: 303, column: 6, scope: !194)
!679 = !{!"354"}
!680 = !{!"355"}
!681 = !DILocation(line: 304, column: 6, scope: !194)
!682 = !{!"356"}
!683 = !{!"357"}
!684 = !DILocation(line: 305, column: 6, scope: !194)
!685 = !{!"358"}
!686 = !{!"359"}
!687 = !DILocation(line: 306, column: 6, scope: !194)
!688 = !{!"360"}
!689 = !{!"361"}
!690 = !DILocation(line: 307, column: 6, scope: !194)
!691 = !{!"362"}
!692 = !{!"363"}
!693 = !DILocation(line: 315, column: 14, scope: !194)
!694 = !{!"364"}
!695 = !DILocation(line: 315, column: 3, scope: !194)
!696 = !{!"365"}
!697 = !DILocation(line: 315, column: 9, scope: !194)
!698 = !{!"366"}
!699 = !DILocation(line: 316, column: 15, scope: !194)
!700 = !{!"367"}
!701 = !DILocation(line: 316, column: 27, scope: !194)
!702 = !{!"368"}
!703 = !DILocation(line: 316, column: 21, scope: !194)
!704 = !{!"369"}
!705 = !DILocation(line: 316, column: 3, scope: !194)
!706 = !{!"370"}
!707 = !DILocation(line: 316, column: 9, scope: !194)
!708 = !{!"371"}
!709 = !DILocation(line: 317, column: 15, scope: !194)
!710 = !{!"372"}
!711 = !DILocation(line: 317, column: 27, scope: !194)
!712 = !{!"373"}
!713 = !DILocation(line: 317, column: 21, scope: !194)
!714 = !{!"374"}
!715 = !DILocation(line: 317, column: 3, scope: !194)
!716 = !{!"375"}
!717 = !DILocation(line: 317, column: 9, scope: !194)
!718 = !{!"376"}
!719 = !DILocation(line: 318, column: 15, scope: !194)
!720 = !{!"377"}
!721 = !DILocation(line: 318, column: 27, scope: !194)
!722 = !{!"378"}
!723 = !DILocation(line: 318, column: 21, scope: !194)
!724 = !{!"379"}
!725 = !DILocation(line: 318, column: 3, scope: !194)
!726 = !{!"380"}
!727 = !DILocation(line: 318, column: 9, scope: !194)
!728 = !{!"381"}
!729 = !DILocation(line: 319, column: 15, scope: !194)
!730 = !{!"382"}
!731 = !DILocation(line: 319, column: 27, scope: !194)
!732 = !{!"383"}
!733 = !DILocation(line: 319, column: 21, scope: !194)
!734 = !{!"384"}
!735 = !DILocation(line: 319, column: 3, scope: !194)
!736 = !{!"385"}
!737 = !DILocation(line: 319, column: 9, scope: !194)
!738 = !{!"386"}
!739 = !DILocation(line: 320, column: 15, scope: !194)
!740 = !{!"387"}
!741 = !DILocation(line: 320, column: 27, scope: !194)
!742 = !{!"388"}
!743 = !DILocation(line: 320, column: 21, scope: !194)
!744 = !{!"389"}
!745 = !DILocation(line: 320, column: 3, scope: !194)
!746 = !{!"390"}
!747 = !DILocation(line: 320, column: 9, scope: !194)
!748 = !{!"391"}
!749 = !DILocation(line: 321, column: 15, scope: !194)
!750 = !{!"392"}
!751 = !DILocation(line: 321, column: 27, scope: !194)
!752 = !{!"393"}
!753 = !DILocation(line: 321, column: 21, scope: !194)
!754 = !{!"394"}
!755 = !DILocation(line: 321, column: 3, scope: !194)
!756 = !{!"395"}
!757 = !DILocation(line: 321, column: 9, scope: !194)
!758 = !{!"396"}
!759 = !DILocation(line: 322, column: 15, scope: !194)
!760 = !{!"397"}
!761 = !DILocation(line: 322, column: 27, scope: !194)
!762 = !{!"398"}
!763 = !DILocation(line: 322, column: 21, scope: !194)
!764 = !{!"399"}
!765 = !DILocation(line: 322, column: 3, scope: !194)
!766 = !{!"400"}
!767 = !DILocation(line: 322, column: 9, scope: !194)
!768 = !{!"401"}
!769 = !{!"402"}
!770 = !DILocation(line: 328, column: 8, scope: !771)
!771 = distinct !DILexicalBlock(scope: !194, file: !4, line: 328, column: 3)
!772 = !{!"403"}
!773 = !DILocation(line: 0, scope: !771)
!774 = !{!"404"}
!775 = !{!"405"}
!776 = !DILocation(line: 328, column: 17, scope: !777)
!777 = distinct !DILexicalBlock(scope: !771, file: !4, line: 328, column: 3)
!778 = !{!"406"}
!779 = !DILocation(line: 328, column: 3, scope: !771)
!780 = !{!"407"}
!781 = !DILocation(line: 331, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !777, file: !4, line: 328, column: 28)
!783 = !{!"408"}
!784 = !{!"409"}
!785 = !{!"410"}
!786 = !DILocalVariable(name: "lw", scope: !782, file: !4, line: 329, type: !6)
!787 = !DILocation(line: 0, scope: !782)
!788 = !{!"411"}
!789 = !DILocation(line: 332, column: 26, scope: !782)
!790 = !{!"412"}
!791 = !DILocation(line: 332, column: 20, scope: !782)
!792 = !{!"413"}
!793 = !DILocation(line: 332, column: 38, scope: !782)
!794 = !{!"414"}
!795 = !DILocation(line: 332, column: 32, scope: !782)
!796 = !{!"415"}
!797 = !DILocation(line: 332, column: 50, scope: !782)
!798 = !{!"416"}
!799 = !DILocation(line: 332, column: 44, scope: !782)
!800 = !{!"417"}
!801 = !DILocation(line: 332, column: 9, scope: !782)
!802 = !{!"418"}
!803 = !DILocation(line: 332, column: 4, scope: !782)
!804 = !{!"419"}
!805 = !{!"420"}
!806 = !DILocation(line: 332, column: 14, scope: !782)
!807 = !{!"421"}
!808 = !{!"422"}
!809 = !{!"423"}
!810 = !DILocation(line: 333, column: 21, scope: !782)
!811 = !{!"424"}
!812 = !DILocation(line: 333, column: 34, scope: !782)
!813 = !{!"425"}
!814 = !DILocation(line: 333, column: 28, scope: !782)
!815 = !{!"426"}
!816 = !DILocation(line: 333, column: 47, scope: !782)
!817 = !{!"427"}
!818 = !DILocation(line: 333, column: 41, scope: !782)
!819 = !{!"428"}
!820 = !DILocation(line: 333, column: 9, scope: !782)
!821 = !{!"429"}
!822 = !DILocation(line: 333, column: 4, scope: !782)
!823 = !{!"430"}
!824 = !{!"431"}
!825 = !DILocation(line: 333, column: 14, scope: !782)
!826 = !{!"432"}
!827 = !{!"433"}
!828 = !{!"434"}
!829 = !DILocation(line: 334, column: 3, scope: !782)
!830 = !{!"435"}
!831 = !DILocation(line: 328, column: 24, scope: !777)
!832 = !{!"436"}
!833 = !{!"437"}
!834 = !DILocation(line: 328, column: 3, scope: !777)
!835 = distinct !{!835, !779, !836, !509}
!836 = !DILocation(line: 334, column: 3, scope: !771)
!837 = !{!"438"}
!838 = !DILocation(line: 335, column: 3, scope: !194)
!839 = !{!"439"}
!840 = !{!"440"}
!841 = !DILocation(line: 335, column: 14, scope: !194)
!842 = !{!"441"}
!843 = !DILocation(line: 335, column: 17, scope: !194)
!844 = !{!"442"}
!845 = !{!"443"}
!846 = !{!"444"}
!847 = distinct !{!847, !184, !848, !509}
!848 = !DILocation(line: 336, column: 2, scope: !88)
!849 = !{!"445"}
!850 = !DILocation(line: 341, column: 17, scope: !88)
!851 = !{!"446"}
!852 = !{!"447"}
!853 = !DILocation(line: 341, column: 2, scope: !88)
!854 = !{!"448"}
!855 = !DILocation(line: 342, column: 16, scope: !88)
!856 = !{!"449"}
!857 = !DILocation(line: 342, column: 21, scope: !88)
!858 = !{!"450"}
!859 = !{!"451"}
!860 = !DILocation(line: 342, column: 2, scope: !88)
!861 = !{!"452"}
!862 = !DILocation(line: 343, column: 16, scope: !88)
!863 = !{!"453"}
!864 = !DILocation(line: 343, column: 21, scope: !88)
!865 = !{!"454"}
!866 = !{!"455"}
!867 = !DILocation(line: 343, column: 2, scope: !88)
!868 = !{!"456"}
!869 = !DILocation(line: 344, column: 16, scope: !88)
!870 = !{!"457"}
!871 = !DILocation(line: 344, column: 22, scope: !88)
!872 = !{!"458"}
!873 = !{!"459"}
!874 = !DILocation(line: 344, column: 2, scope: !88)
!875 = !{!"460"}
!876 = !DILocation(line: 345, column: 1, scope: !88)
!877 = !{!"461"}
!878 = distinct !DISubprogram(name: "br_dec32be", scope: !879, file: !879, line: 590, type: !880, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!879 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/GHASH_ctmul")
!880 = !DISubroutineType(types: !881)
!881 = !{!6, !23}
!882 = !DILocalVariable(name: "src", arg: 1, scope: !878, file: !879, line: 590, type: !23)
!883 = !DILocation(line: 0, scope: !878)
!884 = !{!"462"}
!885 = !DILocalVariable(name: "buf", scope: !878, file: !879, line: 595, type: !114)
!886 = !{!"463"}
!887 = !DILocation(line: 598, column: 20, scope: !878)
!888 = !{!"464"}
!889 = !{!"465"}
!890 = !DILocation(line: 598, column: 10, scope: !878)
!891 = !{!"466"}
!892 = !DILocation(line: 598, column: 27, scope: !878)
!893 = !{!"467"}
!894 = !DILocation(line: 599, column: 16, scope: !878)
!895 = !{!"468"}
!896 = !{!"469"}
!897 = !DILocation(line: 599, column: 6, scope: !878)
!898 = !{!"470"}
!899 = !DILocation(line: 599, column: 23, scope: !878)
!900 = !{!"471"}
!901 = !DILocation(line: 599, column: 3, scope: !878)
!902 = !{!"472"}
!903 = !DILocation(line: 600, column: 16, scope: !878)
!904 = !{!"473"}
!905 = !{!"474"}
!906 = !DILocation(line: 600, column: 6, scope: !878)
!907 = !{!"475"}
!908 = !DILocation(line: 600, column: 23, scope: !878)
!909 = !{!"476"}
!910 = !DILocation(line: 600, column: 3, scope: !878)
!911 = !{!"477"}
!912 = !DILocation(line: 601, column: 15, scope: !878)
!913 = !{!"478"}
!914 = !{!"479"}
!915 = !DILocation(line: 601, column: 5, scope: !878)
!916 = !{!"480"}
!917 = !DILocation(line: 601, column: 3, scope: !878)
!918 = !{!"481"}
!919 = !DILocation(line: 598, column: 2, scope: !878)
!920 = !{!"482"}
!921 = distinct !DISubprogram(name: "bmul", scope: !4, file: !4, line: 165, type: !922, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !924, !924, !6, !6}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!925 = !DILocalVariable(name: "hi", arg: 1, scope: !921, file: !4, line: 165, type: !924)
!926 = !DILocation(line: 0, scope: !921)
!927 = !{!"483"}
!928 = !DILocalVariable(name: "lo", arg: 2, scope: !921, file: !4, line: 165, type: !924)
!929 = !{!"484"}
!930 = !DILocalVariable(name: "x", arg: 3, scope: !921, file: !4, line: 165, type: !6)
!931 = !{!"485"}
!932 = !DILocalVariable(name: "y", arg: 4, scope: !921, file: !4, line: 165, type: !6)
!933 = !{!"486"}
!934 = !DILocation(line: 172, column: 9, scope: !921)
!935 = !{!"487"}
!936 = !DILocalVariable(name: "x0", scope: !921, file: !4, line: 167, type: !6)
!937 = !{!"488"}
!938 = !DILocation(line: 173, column: 9, scope: !921)
!939 = !{!"489"}
!940 = !DILocalVariable(name: "x1", scope: !921, file: !4, line: 167, type: !6)
!941 = !{!"490"}
!942 = !DILocation(line: 174, column: 9, scope: !921)
!943 = !{!"491"}
!944 = !DILocalVariable(name: "x2", scope: !921, file: !4, line: 167, type: !6)
!945 = !{!"492"}
!946 = !DILocation(line: 175, column: 9, scope: !921)
!947 = !{!"493"}
!948 = !DILocalVariable(name: "x3", scope: !921, file: !4, line: 167, type: !6)
!949 = !{!"494"}
!950 = !DILocation(line: 176, column: 9, scope: !921)
!951 = !{!"495"}
!952 = !DILocalVariable(name: "y0", scope: !921, file: !4, line: 168, type: !6)
!953 = !{!"496"}
!954 = !DILocation(line: 177, column: 9, scope: !921)
!955 = !{!"497"}
!956 = !DILocalVariable(name: "y1", scope: !921, file: !4, line: 168, type: !6)
!957 = !{!"498"}
!958 = !DILocation(line: 178, column: 9, scope: !921)
!959 = !{!"499"}
!960 = !DILocalVariable(name: "y2", scope: !921, file: !4, line: 168, type: !6)
!961 = !{!"500"}
!962 = !DILocation(line: 179, column: 9, scope: !921)
!963 = !{!"501"}
!964 = !DILocalVariable(name: "y3", scope: !921, file: !4, line: 168, type: !6)
!965 = !{!"502"}
!966 = !DILocation(line: 180, column: 7, scope: !921)
!967 = !{!"503"}
!968 = !{!"504"}
!969 = !{!"505"}
!970 = !DILocation(line: 180, column: 21, scope: !921)
!971 = !{!"506"}
!972 = !{!"507"}
!973 = !{!"508"}
!974 = !DILocation(line: 180, column: 19, scope: !921)
!975 = !{!"509"}
!976 = !DILocation(line: 180, column: 35, scope: !921)
!977 = !{!"510"}
!978 = !{!"511"}
!979 = !{!"512"}
!980 = !DILocation(line: 180, column: 33, scope: !921)
!981 = !{!"513"}
!982 = !DILocation(line: 180, column: 49, scope: !921)
!983 = !{!"514"}
!984 = !{!"515"}
!985 = !{!"516"}
!986 = !DILocation(line: 180, column: 47, scope: !921)
!987 = !{!"517"}
!988 = !DILocalVariable(name: "z0", scope: !921, file: !4, line: 169, type: !11)
!989 = !{!"518"}
!990 = !DILocation(line: 181, column: 7, scope: !921)
!991 = !{!"519"}
!992 = !{!"520"}
!993 = !{!"521"}
!994 = !DILocation(line: 181, column: 21, scope: !921)
!995 = !{!"522"}
!996 = !{!"523"}
!997 = !{!"524"}
!998 = !DILocation(line: 181, column: 19, scope: !921)
!999 = !{!"525"}
!1000 = !DILocation(line: 181, column: 35, scope: !921)
!1001 = !{!"526"}
!1002 = !{!"527"}
!1003 = !{!"528"}
!1004 = !DILocation(line: 181, column: 33, scope: !921)
!1005 = !{!"529"}
!1006 = !DILocation(line: 181, column: 49, scope: !921)
!1007 = !{!"530"}
!1008 = !{!"531"}
!1009 = !{!"532"}
!1010 = !DILocation(line: 181, column: 47, scope: !921)
!1011 = !{!"533"}
!1012 = !DILocalVariable(name: "z1", scope: !921, file: !4, line: 169, type: !11)
!1013 = !{!"534"}
!1014 = !DILocation(line: 182, column: 7, scope: !921)
!1015 = !{!"535"}
!1016 = !{!"536"}
!1017 = !{!"537"}
!1018 = !DILocation(line: 182, column: 21, scope: !921)
!1019 = !{!"538"}
!1020 = !{!"539"}
!1021 = !{!"540"}
!1022 = !DILocation(line: 182, column: 19, scope: !921)
!1023 = !{!"541"}
!1024 = !DILocation(line: 182, column: 35, scope: !921)
!1025 = !{!"542"}
!1026 = !{!"543"}
!1027 = !{!"544"}
!1028 = !DILocation(line: 182, column: 33, scope: !921)
!1029 = !{!"545"}
!1030 = !DILocation(line: 182, column: 49, scope: !921)
!1031 = !{!"546"}
!1032 = !{!"547"}
!1033 = !{!"548"}
!1034 = !DILocation(line: 182, column: 47, scope: !921)
!1035 = !{!"549"}
!1036 = !DILocalVariable(name: "z2", scope: !921, file: !4, line: 169, type: !11)
!1037 = !{!"550"}
!1038 = !DILocation(line: 183, column: 7, scope: !921)
!1039 = !{!"551"}
!1040 = !{!"552"}
!1041 = !{!"553"}
!1042 = !DILocation(line: 183, column: 21, scope: !921)
!1043 = !{!"554"}
!1044 = !{!"555"}
!1045 = !{!"556"}
!1046 = !DILocation(line: 183, column: 19, scope: !921)
!1047 = !{!"557"}
!1048 = !DILocation(line: 183, column: 35, scope: !921)
!1049 = !{!"558"}
!1050 = !{!"559"}
!1051 = !{!"560"}
!1052 = !DILocation(line: 183, column: 33, scope: !921)
!1053 = !{!"561"}
!1054 = !DILocation(line: 183, column: 49, scope: !921)
!1055 = !{!"562"}
!1056 = !{!"563"}
!1057 = !{!"564"}
!1058 = !DILocation(line: 183, column: 47, scope: !921)
!1059 = !{!"565"}
!1060 = !DILocalVariable(name: "z3", scope: !921, file: !4, line: 169, type: !11)
!1061 = !{!"566"}
!1062 = !DILocation(line: 184, column: 5, scope: !921)
!1063 = !{!"567"}
!1064 = !{!"568"}
!1065 = !DILocation(line: 185, column: 5, scope: !921)
!1066 = !{!"569"}
!1067 = !{!"570"}
!1068 = !DILocation(line: 186, column: 5, scope: !921)
!1069 = !{!"571"}
!1070 = !{!"572"}
!1071 = !DILocation(line: 187, column: 5, scope: !921)
!1072 = !{!"573"}
!1073 = !{!"574"}
!1074 = !DILocation(line: 188, column: 9, scope: !921)
!1075 = !{!"575"}
!1076 = !DILocation(line: 188, column: 14, scope: !921)
!1077 = !{!"576"}
!1078 = !DILocation(line: 188, column: 19, scope: !921)
!1079 = !{!"577"}
!1080 = !DILocalVariable(name: "z", scope: !921, file: !4, line: 170, type: !11)
!1081 = !{!"578"}
!1082 = !DILocation(line: 189, column: 8, scope: !921)
!1083 = !{!"579"}
!1084 = !DILocation(line: 189, column: 6, scope: !921)
!1085 = !{!"580"}
!1086 = !DILocation(line: 190, column: 21, scope: !921)
!1087 = !{!"581"}
!1088 = !DILocation(line: 190, column: 8, scope: !921)
!1089 = !{!"582"}
!1090 = !DILocation(line: 190, column: 6, scope: !921)
!1091 = !{!"583"}
!1092 = !DILocation(line: 191, column: 1, scope: !921)
!1093 = !{!"584"}
!1094 = distinct !DISubprogram(name: "br_enc32be", scope: !879, file: !879, line: 558, type: !1095, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !22, !6}
!1097 = !DILocalVariable(name: "dst", arg: 1, scope: !1094, file: !879, line: 558, type: !22)
!1098 = !DILocation(line: 0, scope: !1094)
!1099 = !{!"585"}
!1100 = !DILocalVariable(name: "x", arg: 2, scope: !1094, file: !879, line: 558, type: !6)
!1101 = !{!"586"}
!1102 = !DILocalVariable(name: "buf", scope: !1094, file: !879, line: 563, type: !118)
!1103 = !{!"587"}
!1104 = !DILocation(line: 566, column: 29, scope: !1094)
!1105 = !{!"588"}
!1106 = !DILocation(line: 566, column: 11, scope: !1094)
!1107 = !{!"589"}
!1108 = !DILocation(line: 566, column: 2, scope: !1094)
!1109 = !{!"590"}
!1110 = !DILocation(line: 566, column: 9, scope: !1094)
!1111 = !{!"591"}
!1112 = !DILocation(line: 567, column: 29, scope: !1094)
!1113 = !{!"592"}
!1114 = !DILocation(line: 567, column: 11, scope: !1094)
!1115 = !{!"593"}
!1116 = !DILocation(line: 567, column: 2, scope: !1094)
!1117 = !{!"594"}
!1118 = !DILocation(line: 567, column: 9, scope: !1094)
!1119 = !{!"595"}
!1120 = !DILocation(line: 568, column: 29, scope: !1094)
!1121 = !{!"596"}
!1122 = !DILocation(line: 568, column: 11, scope: !1094)
!1123 = !{!"597"}
!1124 = !DILocation(line: 568, column: 2, scope: !1094)
!1125 = !{!"598"}
!1126 = !DILocation(line: 568, column: 9, scope: !1094)
!1127 = !{!"599"}
!1128 = !DILocation(line: 569, column: 11, scope: !1094)
!1129 = !{!"600"}
!1130 = !DILocation(line: 569, column: 2, scope: !1094)
!1131 = !{!"601"}
!1132 = !DILocation(line: 569, column: 9, scope: !1094)
!1133 = !{!"602"}
!1134 = !DILocation(line: 571, column: 1, scope: !1094)
!1135 = !{!"603"}
