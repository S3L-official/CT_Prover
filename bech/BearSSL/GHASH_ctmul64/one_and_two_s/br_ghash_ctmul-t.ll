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
  call void @br_ghash_ctmul64(i8* %0, i8* %1, i8* %2, i64 %3), !dbg !60, !psr.id !61
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
  call void @br_ghash_ctmul64(i8* %1, i8* %2, i8* %3, i64 %4), !dbg !84, !psr.id !85
  ret void, !dbg !86, !psr.id !87
}

declare dso_local i8* @gety(...) #2

declare dso_local i8* @geth(...) #2

declare dso_local i8* @getdata(...) #2

declare dso_local i64 @getlen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul64(i8* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !88 {
  %5 = alloca [16 x i8], align 16, !psr.id !89
  call void @llvm.dbg.value(metadata i8* %0, metadata !90, metadata !DIExpression()), !dbg !91, !psr.id !92
  call void @llvm.dbg.value(metadata i8* %1, metadata !93, metadata !DIExpression()), !dbg !91, !psr.id !94
  call void @llvm.dbg.value(metadata i8* %2, metadata !95, metadata !DIExpression()), !dbg !91, !psr.id !96
  call void @llvm.dbg.value(metadata i64 %3, metadata !97, metadata !DIExpression()), !dbg !91, !psr.id !98
  call void @llvm.dbg.value(metadata i8* %2, metadata !99, metadata !DIExpression()), !dbg !91, !psr.id !102
  call void @llvm.dbg.value(metadata i8* %0, metadata !103, metadata !DIExpression()), !dbg !91, !psr.id !105
  call void @llvm.dbg.value(metadata i8* %1, metadata !106, metadata !DIExpression()), !dbg !91, !psr.id !107
  %6 = call i64 @br_dec64be(i8* %0), !dbg !108, !psr.id !109
  call void @llvm.dbg.value(metadata i64 %6, metadata !110, metadata !DIExpression()), !dbg !91, !psr.id !111
  %7 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !112, !psr.id !113
  %8 = call i64 @br_dec64be(i8* %7), !dbg !114, !psr.id !115
  call void @llvm.dbg.value(metadata i64 %8, metadata !116, metadata !DIExpression()), !dbg !91, !psr.id !117
  %9 = call i64 @br_dec64be(i8* %1), !dbg !118, !psr.id !119, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %9, metadata !121, metadata !DIExpression()), !dbg !91, !psr.id !122
  %10 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !123, !psr.id !124, !PointTainted !125
  %11 = call i64 @br_dec64be(i8* %10), !dbg !126, !psr.id !127, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %11, metadata !128, metadata !DIExpression()), !dbg !91, !psr.id !129
  %12 = call i64 @rev64(i64 %11), !dbg !130, !psr.id !131, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %12, metadata !132, metadata !DIExpression()), !dbg !91, !psr.id !133
  %13 = call i64 @rev64(i64 %9), !dbg !134, !psr.id !135, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %13, metadata !136, metadata !DIExpression()), !dbg !91, !psr.id !137
  %14 = xor i64 %11, %9, !dbg !138, !psr.id !139, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %14, metadata !140, metadata !DIExpression()), !dbg !91, !psr.id !141
  %15 = xor i64 %12, %13, !dbg !142, !psr.id !143, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %15, metadata !144, metadata !DIExpression()), !dbg !91, !psr.id !145
  br label %16, !dbg !146, !psr.id !147

16:                                               ; preds = %29, %4
  %.04 = phi i8* [ %2, %4 ], [ %.15, %29 ], !dbg !91, !psr.id !148
  %.03 = phi i64 [ %3, %4 ], [ %.1, %29 ], !psr.id !149
  %.02 = phi i64 [ %8, %4 ], [ %92, %29 ], !dbg !91, !psr.id !150, !ValueTainted !120
  %.01 = phi i64 [ %6, %4 ], [ %86, %29 ], !dbg !91, !psr.id !151, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %.01, metadata !110, metadata !DIExpression()), !dbg !91, !psr.id !152
  call void @llvm.dbg.value(metadata i64 %.02, metadata !116, metadata !DIExpression()), !dbg !91, !psr.id !153
  call void @llvm.dbg.value(metadata i64 %.03, metadata !97, metadata !DIExpression()), !dbg !91, !psr.id !154
  call void @llvm.dbg.value(metadata i8* %.04, metadata !99, metadata !DIExpression()), !dbg !91, !psr.id !155
  %17 = icmp ugt i64 %.03, 0, !dbg !156, !psr.id !157
  br i1 %17, label %18, label %93, !dbg !146, !psr.id !158

18:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !159, metadata !DIExpression()), !dbg !164, !psr.id !165
  %19 = icmp uge i64 %.03, 16, !dbg !166, !psr.id !168
  br i1 %19, label %20, label %23, !dbg !169, !psr.id !170

20:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* %.04, metadata !171, metadata !DIExpression()), !dbg !172, !psr.id !173
  %21 = getelementptr inbounds i8, i8* %.04, i64 16, !dbg !174, !psr.id !176
  call void @llvm.dbg.value(metadata i8* %21, metadata !99, metadata !DIExpression()), !dbg !91, !psr.id !177
  %22 = sub i64 %.03, 16, !dbg !178, !psr.id !179
  call void @llvm.dbg.value(metadata i64 %22, metadata !97, metadata !DIExpression()), !dbg !91, !psr.id !180
  br label %29, !dbg !181, !psr.id !182

23:                                               ; preds = %18
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !183, !psr.id !185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 1 %.04, i64 %.03, i1 false), !dbg !183, !psr.id !186
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !187, !psr.id !188
  %26 = getelementptr inbounds i8, i8* %25, i64 %.03, !dbg !189, !psr.id !190
  %27 = sub i64 16, %.03, !dbg !191, !psr.id !192
  call void @llvm.memset.p0i8.i64(i8* align 1 %26, i8 0, i64 %27, i1 false), !dbg !193, !psr.id !194
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !195, !psr.id !196
  call void @llvm.dbg.value(metadata i8* %28, metadata !171, metadata !DIExpression()), !dbg !172, !psr.id !197
  call void @llvm.dbg.value(metadata i64 0, metadata !97, metadata !DIExpression()), !dbg !91, !psr.id !198
  br label %29, !psr.id !199

29:                                               ; preds = %23, %20
  %.15 = phi i8* [ %21, %20 ], [ %.04, %23 ], !dbg !91, !psr.id !200
  %.1 = phi i64 [ %22, %20 ], [ 0, %23 ], !dbg !201, !psr.id !202
  %.0 = phi i8* [ %.04, %20 ], [ %28, %23 ], !dbg !201, !psr.id !203
  call void @llvm.dbg.value(metadata i8* %.0, metadata !171, metadata !DIExpression()), !dbg !172, !psr.id !204
  call void @llvm.dbg.value(metadata i64 %.1, metadata !97, metadata !DIExpression()), !dbg !91, !psr.id !205
  call void @llvm.dbg.value(metadata i8* %.15, metadata !99, metadata !DIExpression()), !dbg !91, !psr.id !206
  %30 = call i64 @br_dec64be(i8* %.0), !dbg !207, !psr.id !208, !ValueTainted !120
  %31 = xor i64 %.01, %30, !dbg !209, !psr.id !210, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %31, metadata !110, metadata !DIExpression()), !dbg !91, !psr.id !211
  %32 = getelementptr inbounds i8, i8* %.0, i64 8, !dbg !212, !psr.id !213
  %33 = call i64 @br_dec64be(i8* %32), !dbg !214, !psr.id !215
  %34 = xor i64 %.02, %33, !dbg !216, !psr.id !217, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %34, metadata !116, metadata !DIExpression()), !dbg !91, !psr.id !218
  %35 = call i64 @rev64(i64 %34), !dbg !219, !psr.id !220, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %35, metadata !221, metadata !DIExpression()), !dbg !172, !psr.id !222
  %36 = call i64 @rev64(i64 %31), !dbg !223, !psr.id !224, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %36, metadata !225, metadata !DIExpression()), !dbg !172, !psr.id !226
  %37 = xor i64 %34, %31, !dbg !227, !psr.id !228, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %37, metadata !229, metadata !DIExpression()), !dbg !172, !psr.id !230
  %38 = xor i64 %35, %36, !dbg !231, !psr.id !232, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %38, metadata !233, metadata !DIExpression()), !dbg !172, !psr.id !234
  %39 = call i64 @bmul64(i64 %34, i64 %11), !dbg !235, !psr.id !236, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %39, metadata !237, metadata !DIExpression()), !dbg !172, !psr.id !238
  %40 = call i64 @bmul64(i64 %31, i64 %9), !dbg !239, !psr.id !240, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %40, metadata !241, metadata !DIExpression()), !dbg !172, !psr.id !242
  %41 = call i64 @bmul64(i64 %37, i64 %14), !dbg !243, !psr.id !244, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %41, metadata !245, metadata !DIExpression()), !dbg !172, !psr.id !246
  %42 = call i64 @bmul64(i64 %35, i64 %12), !dbg !247, !psr.id !248, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %42, metadata !249, metadata !DIExpression()), !dbg !172, !psr.id !250
  %43 = call i64 @bmul64(i64 %36, i64 %13), !dbg !251, !psr.id !252, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %43, metadata !253, metadata !DIExpression()), !dbg !172, !psr.id !254
  %44 = call i64 @bmul64(i64 %38, i64 %15), !dbg !255, !psr.id !256, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %44, metadata !257, metadata !DIExpression()), !dbg !172, !psr.id !258
  %45 = xor i64 %39, %40, !dbg !259, !psr.id !260, !ValueTainted !120
  %46 = xor i64 %41, %45, !dbg !261, !psr.id !262, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %46, metadata !245, metadata !DIExpression()), !dbg !172, !psr.id !263
  %47 = xor i64 %42, %43, !dbg !264, !psr.id !265, !ValueTainted !120
  %48 = xor i64 %44, %47, !dbg !266, !psr.id !267, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %48, metadata !257, metadata !DIExpression()), !dbg !172, !psr.id !268
  %49 = call i64 @rev64(i64 %42), !dbg !269, !psr.id !270, !ValueTainted !120
  %50 = lshr i64 %49, 1, !dbg !271, !psr.id !272, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %50, metadata !249, metadata !DIExpression()), !dbg !172, !psr.id !273
  %51 = call i64 @rev64(i64 %43), !dbg !274, !psr.id !275, !ValueTainted !120
  %52 = lshr i64 %51, 1, !dbg !276, !psr.id !277, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %52, metadata !253, metadata !DIExpression()), !dbg !172, !psr.id !278
  %53 = call i64 @rev64(i64 %48), !dbg !279, !psr.id !280, !ValueTainted !120
  %54 = lshr i64 %53, 1, !dbg !281, !psr.id !282, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %54, metadata !257, metadata !DIExpression()), !dbg !172, !psr.id !283
  call void @llvm.dbg.value(metadata i64 %39, metadata !284, metadata !DIExpression()), !dbg !172, !psr.id !285
  %55 = xor i64 %50, %46, !dbg !286, !psr.id !287, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %55, metadata !288, metadata !DIExpression()), !dbg !172, !psr.id !289
  %56 = xor i64 %40, %54, !dbg !290, !psr.id !291, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %56, metadata !292, metadata !DIExpression()), !dbg !172, !psr.id !293
  call void @llvm.dbg.value(metadata i64 %52, metadata !294, metadata !DIExpression()), !dbg !172, !psr.id !295
  %57 = shl i64 %52, 1, !dbg !296, !psr.id !297, !ValueTainted !120
  %58 = lshr i64 %56, 63, !dbg !298, !psr.id !299, !ValueTainted !120
  %59 = or i64 %57, %58, !dbg !300, !psr.id !301, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %59, metadata !294, metadata !DIExpression()), !dbg !172, !psr.id !302
  %60 = shl i64 %56, 1, !dbg !303, !psr.id !304, !ValueTainted !120
  %61 = lshr i64 %55, 63, !dbg !305, !psr.id !306, !ValueTainted !120
  %62 = or i64 %60, %61, !dbg !307, !psr.id !308, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %62, metadata !292, metadata !DIExpression()), !dbg !172, !psr.id !309
  %63 = shl i64 %55, 1, !dbg !310, !psr.id !311, !ValueTainted !120
  %64 = lshr i64 %39, 63, !dbg !312, !psr.id !313, !ValueTainted !120
  %65 = or i64 %63, %64, !dbg !314, !psr.id !315, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %65, metadata !288, metadata !DIExpression()), !dbg !172, !psr.id !316
  %66 = shl i64 %39, 1, !dbg !317, !psr.id !318, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %66, metadata !284, metadata !DIExpression()), !dbg !172, !psr.id !319
  %67 = lshr i64 %66, 1, !dbg !320, !psr.id !321, !ValueTainted !120
  %68 = xor i64 %66, %67, !dbg !322, !psr.id !323, !ValueTainted !120
  %69 = lshr i64 %66, 2, !dbg !324, !psr.id !325, !ValueTainted !120
  %70 = xor i64 %68, %69, !dbg !326, !psr.id !327, !ValueTainted !120
  %71 = lshr i64 %66, 7, !dbg !328, !psr.id !329, !ValueTainted !120
  %72 = xor i64 %70, %71, !dbg !330, !psr.id !331, !ValueTainted !120
  %73 = xor i64 %62, %72, !dbg !332, !psr.id !333, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %73, metadata !292, metadata !DIExpression()), !dbg !172, !psr.id !334
  %74 = shl i64 %66, 63, !dbg !335, !psr.id !336, !ValueTainted !120
  %75 = shl i64 %66, 62, !dbg !337, !psr.id !338, !ValueTainted !120
  %76 = xor i64 %74, %75, !dbg !339, !psr.id !340, !ValueTainted !120
  %77 = shl i64 %66, 57, !dbg !341, !psr.id !342, !ValueTainted !120
  %78 = xor i64 %76, %77, !dbg !343, !psr.id !344, !ValueTainted !120
  %79 = xor i64 %65, %78, !dbg !345, !psr.id !346, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %79, metadata !288, metadata !DIExpression()), !dbg !172, !psr.id !347
  %80 = lshr i64 %79, 1, !dbg !348, !psr.id !349, !ValueTainted !120
  %81 = xor i64 %79, %80, !dbg !350, !psr.id !351, !ValueTainted !120
  %82 = lshr i64 %79, 2, !dbg !352, !psr.id !353, !ValueTainted !120
  %83 = xor i64 %81, %82, !dbg !354, !psr.id !355, !ValueTainted !120
  %84 = lshr i64 %79, 7, !dbg !356, !psr.id !357, !ValueTainted !120
  %85 = xor i64 %83, %84, !dbg !358, !psr.id !359, !ValueTainted !120
  %86 = xor i64 %59, %85, !dbg !360, !psr.id !361, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %86, metadata !294, metadata !DIExpression()), !dbg !172, !psr.id !362
  %87 = shl i64 %79, 63, !dbg !363, !psr.id !364, !ValueTainted !120
  %88 = shl i64 %79, 62, !dbg !365, !psr.id !366, !ValueTainted !120
  %89 = xor i64 %87, %88, !dbg !367, !psr.id !368, !ValueTainted !120
  %90 = shl i64 %79, 57, !dbg !369, !psr.id !370, !ValueTainted !120
  %91 = xor i64 %89, %90, !dbg !371, !psr.id !372, !ValueTainted !120
  %92 = xor i64 %73, %91, !dbg !373, !psr.id !374, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %92, metadata !292, metadata !DIExpression()), !dbg !172, !psr.id !375
  call void @llvm.dbg.value(metadata i64 %92, metadata !116, metadata !DIExpression()), !dbg !91, !psr.id !376
  call void @llvm.dbg.value(metadata i64 %86, metadata !110, metadata !DIExpression()), !dbg !91, !psr.id !377
  br label %16, !dbg !146, !llvm.loop !378, !psr.id !381

93:                                               ; preds = %16
  call void @br_enc64be(i8* %0, i64 %.01), !dbg !382, !psr.id !383
  %94 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !384, !psr.id !385
  call void @br_enc64be(i8* %94, i64 %.02), !dbg !386, !psr.id !387
  ret void, !dbg !388, !psr.id !389
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @br_dec64be(i8* %0) #0 !dbg !390 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !394, metadata !DIExpression()), !dbg !395, !psr.id !396
  call void @llvm.dbg.value(metadata i8* %0, metadata !397, metadata !DIExpression()), !dbg !395, !psr.id !398
  %2 = call i32 @br_dec32be(i8* %0), !dbg !399, !psr.id !400, !ValueTainted !120
  %3 = zext i32 %2 to i64, !dbg !401, !psr.id !402, !ValueTainted !120
  %4 = shl i64 %3, 32, !dbg !403, !psr.id !404, !ValueTainted !120
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !405, !psr.id !406
  %6 = call i32 @br_dec32be(i8* %5), !dbg !407, !psr.id !408, !ValueTainted !120
  %7 = zext i32 %6 to i64, !dbg !409, !psr.id !410, !ValueTainted !120
  %8 = or i64 %4, %7, !dbg !411, !psr.id !412, !ValueTainted !120
  ret i64 %8, !dbg !413, !psr.id !414
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @rev64(i64 %0) #0 !dbg !415 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !418, metadata !DIExpression()), !dbg !419, !psr.id !420
  br label %2, !dbg !421, !psr.id !422

2:                                                ; preds = %1
  %3 = and i64 %0, 6148914691236517205, !dbg !423, !psr.id !425, !ValueTainted !120
  %4 = shl i64 %3, 1, !dbg !423, !psr.id !426, !ValueTainted !120
  %5 = lshr i64 %0, 1, !dbg !423, !psr.id !427, !ValueTainted !120
  %6 = and i64 %5, 6148914691236517205, !dbg !423, !psr.id !428, !ValueTainted !120
  %7 = or i64 %4, %6, !dbg !423, !psr.id !429, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %7, metadata !418, metadata !DIExpression()), !dbg !419, !psr.id !430
  br label %8, !dbg !423, !psr.id !431

8:                                                ; preds = %2
  br label %9, !dbg !432, !psr.id !433

9:                                                ; preds = %8
  %10 = and i64 %7, 3689348814741910323, !dbg !434, !psr.id !436, !ValueTainted !120
  %11 = shl i64 %10, 2, !dbg !434, !psr.id !437, !ValueTainted !120
  %12 = lshr i64 %7, 2, !dbg !434, !psr.id !438, !ValueTainted !120
  %13 = and i64 %12, 3689348814741910323, !dbg !434, !psr.id !439, !ValueTainted !120
  %14 = or i64 %11, %13, !dbg !434, !psr.id !440, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %14, metadata !418, metadata !DIExpression()), !dbg !419, !psr.id !441
  br label %15, !dbg !434, !psr.id !442

15:                                               ; preds = %9
  br label %16, !dbg !443, !psr.id !444

16:                                               ; preds = %15
  %17 = and i64 %14, 1085102592571150095, !dbg !445, !psr.id !447, !ValueTainted !120
  %18 = shl i64 %17, 4, !dbg !445, !psr.id !448, !ValueTainted !120
  %19 = lshr i64 %14, 4, !dbg !445, !psr.id !449, !ValueTainted !120
  %20 = and i64 %19, 1085102592571150095, !dbg !445, !psr.id !450, !ValueTainted !120
  %21 = or i64 %18, %20, !dbg !445, !psr.id !451, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %21, metadata !418, metadata !DIExpression()), !dbg !419, !psr.id !452
  br label %22, !dbg !445, !psr.id !453

22:                                               ; preds = %16
  br label %23, !dbg !454, !psr.id !455

23:                                               ; preds = %22
  %24 = and i64 %21, 71777214294589695, !dbg !456, !psr.id !458, !ValueTainted !120
  %25 = shl i64 %24, 8, !dbg !456, !psr.id !459, !ValueTainted !120
  %26 = lshr i64 %21, 8, !dbg !456, !psr.id !460, !ValueTainted !120
  %27 = and i64 %26, 71777214294589695, !dbg !456, !psr.id !461, !ValueTainted !120
  %28 = or i64 %25, %27, !dbg !456, !psr.id !462, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %28, metadata !418, metadata !DIExpression()), !dbg !419, !psr.id !463
  br label %29, !dbg !456, !psr.id !464

29:                                               ; preds = %23
  br label %30, !dbg !465, !psr.id !466

30:                                               ; preds = %29
  %31 = and i64 %28, 281470681808895, !dbg !467, !psr.id !469, !ValueTainted !120
  %32 = shl i64 %31, 16, !dbg !467, !psr.id !470, !ValueTainted !120
  %33 = lshr i64 %28, 16, !dbg !467, !psr.id !471, !ValueTainted !120
  %34 = and i64 %33, 281470681808895, !dbg !467, !psr.id !472, !ValueTainted !120
  %35 = or i64 %32, %34, !dbg !467, !psr.id !473, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %35, metadata !418, metadata !DIExpression()), !dbg !419, !psr.id !474
  br label %36, !dbg !467, !psr.id !475

36:                                               ; preds = %30
  %37 = shl i64 %35, 32, !dbg !476, !psr.id !477, !ValueTainted !120
  %38 = lshr i64 %35, 32, !dbg !478, !psr.id !479, !ValueTainted !120
  %39 = or i64 %37, %38, !dbg !480, !psr.id !481, !ValueTainted !120
  ret i64 %39, !dbg !482, !psr.id !483
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @bmul64(i64 %0, i64 %1) #0 !dbg !484 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !487, metadata !DIExpression()), !dbg !488, !psr.id !489
  call void @llvm.dbg.value(metadata i64 %1, metadata !490, metadata !DIExpression()), !dbg !488, !psr.id !491
  %3 = and i64 %0, 1229782938247303441, !dbg !492, !psr.id !493, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %3, metadata !494, metadata !DIExpression()), !dbg !488, !psr.id !495
  %4 = and i64 %0, 2459565876494606882, !dbg !496, !psr.id !497, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %4, metadata !498, metadata !DIExpression()), !dbg !488, !psr.id !499
  %5 = and i64 %0, 4919131752989213764, !dbg !500, !psr.id !501, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %5, metadata !502, metadata !DIExpression()), !dbg !488, !psr.id !503
  %6 = and i64 %0, -8608480567731124088, !dbg !504, !psr.id !505, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %6, metadata !506, metadata !DIExpression()), !dbg !488, !psr.id !507
  %7 = and i64 %1, 1229782938247303441, !dbg !508, !psr.id !509, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %7, metadata !510, metadata !DIExpression()), !dbg !488, !psr.id !511
  %8 = and i64 %1, 2459565876494606882, !dbg !512, !psr.id !513, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %8, metadata !514, metadata !DIExpression()), !dbg !488, !psr.id !515
  %9 = and i64 %1, 4919131752989213764, !dbg !516, !psr.id !517, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %9, metadata !518, metadata !DIExpression()), !dbg !488, !psr.id !519
  %10 = and i64 %1, -8608480567731124088, !dbg !520, !psr.id !521, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %10, metadata !522, metadata !DIExpression()), !dbg !488, !psr.id !523
  %11 = mul i64 %3, %7, !dbg !524, !psr.id !525, !ValueTainted !120
  %12 = mul i64 %4, %10, !dbg !526, !psr.id !527, !ValueTainted !120
  %13 = xor i64 %11, %12, !dbg !528, !psr.id !529, !ValueTainted !120
  %14 = mul i64 %5, %9, !dbg !530, !psr.id !531, !ValueTainted !120
  %15 = xor i64 %13, %14, !dbg !532, !psr.id !533, !ValueTainted !120
  %16 = mul i64 %6, %8, !dbg !534, !psr.id !535, !ValueTainted !120
  %17 = xor i64 %15, %16, !dbg !536, !psr.id !537, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %17, metadata !538, metadata !DIExpression()), !dbg !488, !psr.id !539
  %18 = mul i64 %3, %8, !dbg !540, !psr.id !541, !ValueTainted !120
  %19 = mul i64 %4, %7, !dbg !542, !psr.id !543, !ValueTainted !120
  %20 = xor i64 %18, %19, !dbg !544, !psr.id !545, !ValueTainted !120
  %21 = mul i64 %5, %10, !dbg !546, !psr.id !547, !ValueTainted !120
  %22 = xor i64 %20, %21, !dbg !548, !psr.id !549, !ValueTainted !120
  %23 = mul i64 %6, %9, !dbg !550, !psr.id !551, !ValueTainted !120
  %24 = xor i64 %22, %23, !dbg !552, !psr.id !553, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %24, metadata !554, metadata !DIExpression()), !dbg !488, !psr.id !555
  %25 = mul i64 %3, %9, !dbg !556, !psr.id !557, !ValueTainted !120
  %26 = mul i64 %4, %8, !dbg !558, !psr.id !559, !ValueTainted !120
  %27 = xor i64 %25, %26, !dbg !560, !psr.id !561, !ValueTainted !120
  %28 = mul i64 %5, %7, !dbg !562, !psr.id !563, !ValueTainted !120
  %29 = xor i64 %27, %28, !dbg !564, !psr.id !565, !ValueTainted !120
  %30 = mul i64 %6, %10, !dbg !566, !psr.id !567, !ValueTainted !120
  %31 = xor i64 %29, %30, !dbg !568, !psr.id !569, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %31, metadata !570, metadata !DIExpression()), !dbg !488, !psr.id !571
  %32 = mul i64 %3, %10, !dbg !572, !psr.id !573, !ValueTainted !120
  %33 = mul i64 %4, %9, !dbg !574, !psr.id !575, !ValueTainted !120
  %34 = xor i64 %32, %33, !dbg !576, !psr.id !577, !ValueTainted !120
  %35 = mul i64 %5, %8, !dbg !578, !psr.id !579, !ValueTainted !120
  %36 = xor i64 %34, %35, !dbg !580, !psr.id !581, !ValueTainted !120
  %37 = mul i64 %6, %7, !dbg !582, !psr.id !583, !ValueTainted !120
  %38 = xor i64 %36, %37, !dbg !584, !psr.id !585, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %38, metadata !586, metadata !DIExpression()), !dbg !488, !psr.id !587
  %39 = and i64 %17, 1229782938247303441, !dbg !588, !psr.id !589, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %39, metadata !538, metadata !DIExpression()), !dbg !488, !psr.id !590
  %40 = and i64 %24, 2459565876494606882, !dbg !591, !psr.id !592, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %40, metadata !554, metadata !DIExpression()), !dbg !488, !psr.id !593
  %41 = and i64 %31, 4919131752989213764, !dbg !594, !psr.id !595, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %41, metadata !570, metadata !DIExpression()), !dbg !488, !psr.id !596
  %42 = and i64 %38, -8608480567731124088, !dbg !597, !psr.id !598, !ValueTainted !120
  call void @llvm.dbg.value(metadata i64 %42, metadata !586, metadata !DIExpression()), !dbg !488, !psr.id !599
  %43 = or i64 %39, %40, !dbg !600, !psr.id !601, !ValueTainted !120
  %44 = or i64 %43, %41, !dbg !602, !psr.id !603, !ValueTainted !120
  %45 = or i64 %44, %42, !dbg !604, !psr.id !605, !ValueTainted !120
  ret i64 %45, !dbg !606, !psr.id !607
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64be(i8* %0, i64 %1) #0 !dbg !608 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !611, metadata !DIExpression()), !dbg !612, !psr.id !613
  call void @llvm.dbg.value(metadata i64 %1, metadata !614, metadata !DIExpression()), !dbg !612, !psr.id !615
  call void @llvm.dbg.value(metadata i8* %0, metadata !616, metadata !DIExpression()), !dbg !612, !psr.id !617
  %3 = lshr i64 %1, 32, !dbg !618, !psr.id !619, !ValueTainted !120
  %4 = trunc i64 %3 to i32, !dbg !620, !psr.id !621, !ValueTainted !120
  call void @br_enc32be(i8* %0, i32 %4), !dbg !622, !psr.id !623
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !624, !psr.id !625
  %6 = trunc i64 %1 to i32, !dbg !626, !psr.id !627, !ValueTainted !120
  call void @br_enc32be(i8* %5, i32 %6), !dbg !628, !psr.id !629
  ret void, !dbg !630, !psr.id !631
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !632 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !635, metadata !DIExpression()), !dbg !636, !psr.id !637
  call void @llvm.dbg.value(metadata i32 %1, metadata !638, metadata !DIExpression()), !dbg !636, !psr.id !639
  call void @llvm.dbg.value(metadata i8* %0, metadata !640, metadata !DIExpression()), !dbg !636, !psr.id !641
  %3 = lshr i32 %1, 24, !dbg !642, !psr.id !643, !ValueTainted !120
  %4 = trunc i32 %3 to i8, !dbg !644, !psr.id !645, !ValueTainted !120
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !646, !psr.id !647
  store i8 %4, i8* %5, align 1, !dbg !648, !psr.id !649
  %6 = lshr i32 %1, 16, !dbg !650, !psr.id !651, !ValueTainted !120
  %7 = trunc i32 %6 to i8, !dbg !652, !psr.id !653, !ValueTainted !120
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !654, !psr.id !655
  store i8 %7, i8* %8, align 1, !dbg !656, !psr.id !657
  %9 = lshr i32 %1, 8, !dbg !658, !psr.id !659, !ValueTainted !120
  %10 = trunc i32 %9 to i8, !dbg !660, !psr.id !661, !ValueTainted !120
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !662, !psr.id !663
  store i8 %10, i8* %11, align 1, !dbg !664, !psr.id !665
  %12 = trunc i32 %1 to i8, !dbg !666, !psr.id !667, !ValueTainted !120
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !668, !psr.id !669
  store i8 %12, i8* %13, align 1, !dbg !670, !psr.id !671
  ret void, !dbg !672, !psr.id !673
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !674 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()), !dbg !678, !psr.id !679
  call void @llvm.dbg.value(metadata i8* %0, metadata !680, metadata !DIExpression()), !dbg !678, !psr.id !681
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !682, !psr.id !683, !PointTainted !125
  %3 = load i8, i8* %2, align 1, !dbg !682, !psr.id !684, !ValueTainted !120
  %4 = zext i8 %3 to i32, !dbg !685, !psr.id !686, !ValueTainted !120
  %5 = shl i32 %4, 24, !dbg !687, !psr.id !688, !ValueTainted !120
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !689, !psr.id !690, !PointTainted !125
  %7 = load i8, i8* %6, align 1, !dbg !689, !psr.id !691, !ValueTainted !120
  %8 = zext i8 %7 to i32, !dbg !692, !psr.id !693, !ValueTainted !120
  %9 = shl i32 %8, 16, !dbg !694, !psr.id !695, !ValueTainted !120
  %10 = or i32 %5, %9, !dbg !696, !psr.id !697, !ValueTainted !120
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !698, !psr.id !699, !PointTainted !125
  %12 = load i8, i8* %11, align 1, !dbg !698, !psr.id !700, !ValueTainted !120
  %13 = zext i8 %12 to i32, !dbg !701, !psr.id !702, !ValueTainted !120
  %14 = shl i32 %13, 8, !dbg !703, !psr.id !704, !ValueTainted !120
  %15 = or i32 %10, %14, !dbg !705, !psr.id !706, !ValueTainted !120
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !707, !psr.id !708, !PointTainted !125
  %17 = load i8, i8* %16, align 1, !dbg !707, !psr.id !709, !ValueTainted !120
  %18 = zext i8 %17 to i32, !dbg !710, !psr.id !711, !ValueTainted !120
  %19 = or i32 %15, %18, !dbg !712, !psr.id !713, !ValueTainted !120
  ret i32 %19, !dbg !714, !psr.id !715
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
!1 = !DIFile(filename: "br_ghash_ctmul.c", directory: "/home/luwei/bech-back/BearSSL/GHASH_ctmul64")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !5, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "../BearSSL/src/hash/ghash_ctmul64.c", directory: "/home/luwei/bech-back/BearSSL/GHASH_ctmul64")
!5 = !{!6, !11, !14}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !13)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
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
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !10)
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
!88 = distinct !DISubprogram(name: "br_ghash_ctmul64", scope: !4, file: !4, line: 78, type: !20, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!89 = !{!"28"}
!90 = !DILocalVariable(name: "y", arg: 1, scope: !88, file: !4, line: 78, type: !22)
!91 = !DILocation(line: 0, scope: !88)
!92 = !{!"29"}
!93 = !DILocalVariable(name: "h", arg: 2, scope: !88, file: !4, line: 78, type: !23)
!94 = !{!"30"}
!95 = !DILocalVariable(name: "data", arg: 3, scope: !88, file: !4, line: 78, type: !23)
!96 = !{!"31"}
!97 = !DILocalVariable(name: "len", arg: 4, scope: !88, file: !4, line: 78, type: !25)
!98 = !{!"32"}
!99 = !DILocalVariable(name: "buf", scope: !88, file: !4, line: 80, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!102 = !{!"33"}
!103 = !DILocalVariable(name: "yb", scope: !88, file: !4, line: 81, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!105 = !{!"34"}
!106 = !DILocalVariable(name: "hb", scope: !88, file: !4, line: 80, type: !100)
!107 = !{!"35"}
!108 = !DILocation(line: 88, column: 7, scope: !88)
!109 = !{!"36"}
!110 = !DILocalVariable(name: "y1", scope: !88, file: !4, line: 82, type: !6)
!111 = !{!"37"}
!112 = !DILocation(line: 89, column: 21, scope: !88)
!113 = !{!"38"}
!114 = !DILocation(line: 89, column: 7, scope: !88)
!115 = !{!"39"}
!116 = !DILocalVariable(name: "y0", scope: !88, file: !4, line: 82, type: !6)
!117 = !{!"40"}
!118 = !DILocation(line: 90, column: 7, scope: !88)
!119 = !{!"41"}
!120 = !{!"ValueTainted"}
!121 = !DILocalVariable(name: "h1", scope: !88, file: !4, line: 83, type: !6)
!122 = !{!"42"}
!123 = !DILocation(line: 91, column: 21, scope: !88)
!124 = !{!"43"}
!125 = !{!"PointTainted"}
!126 = !DILocation(line: 91, column: 7, scope: !88)
!127 = !{!"44"}
!128 = !DILocalVariable(name: "h0", scope: !88, file: !4, line: 83, type: !6)
!129 = !{!"45"}
!130 = !DILocation(line: 92, column: 8, scope: !88)
!131 = !{!"46"}
!132 = !DILocalVariable(name: "h0r", scope: !88, file: !4, line: 83, type: !6)
!133 = !{!"47"}
!134 = !DILocation(line: 93, column: 8, scope: !88)
!135 = !{!"48"}
!136 = !DILocalVariable(name: "h1r", scope: !88, file: !4, line: 83, type: !6)
!137 = !{!"49"}
!138 = !DILocation(line: 94, column: 10, scope: !88)
!139 = !{!"50"}
!140 = !DILocalVariable(name: "h2", scope: !88, file: !4, line: 83, type: !6)
!141 = !{!"51"}
!142 = !DILocation(line: 95, column: 12, scope: !88)
!143 = !{!"52"}
!144 = !DILocalVariable(name: "h2r", scope: !88, file: !4, line: 83, type: !6)
!145 = !{!"53"}
!146 = !DILocation(line: 96, column: 2, scope: !88)
!147 = !{!"54"}
!148 = !{!"55"}
!149 = !{!"56"}
!150 = !{!"57"}
!151 = !{!"58"}
!152 = !{!"59"}
!153 = !{!"60"}
!154 = !{!"61"}
!155 = !{!"62"}
!156 = !DILocation(line: 96, column: 13, scope: !88)
!157 = !{!"63"}
!158 = !{!"64"}
!159 = !DILocalVariable(name: "tmp", scope: !160, file: !4, line: 98, type: !161)
!160 = distinct !DILexicalBlock(scope: !88, file: !4, line: 96, column: 18)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 16)
!164 = !DILocation(line: 98, column: 17, scope: !160)
!165 = !{!"65"}
!166 = !DILocation(line: 103, column: 11, scope: !167)
!167 = distinct !DILexicalBlock(scope: !160, file: !4, line: 103, column: 7)
!168 = !{!"66"}
!169 = !DILocation(line: 103, column: 7, scope: !160)
!170 = !{!"67"}
!171 = !DILocalVariable(name: "src", scope: !160, file: !4, line: 97, type: !100)
!172 = !DILocation(line: 0, scope: !160)
!173 = !{!"68"}
!174 = !DILocation(line: 105, column: 8, scope: !175)
!175 = distinct !DILexicalBlock(scope: !167, file: !4, line: 103, column: 18)
!176 = !{!"69"}
!177 = !{!"70"}
!178 = !DILocation(line: 106, column: 8, scope: !175)
!179 = !{!"71"}
!180 = !{!"72"}
!181 = !DILocation(line: 107, column: 3, scope: !175)
!182 = !{!"73"}
!183 = !DILocation(line: 108, column: 4, scope: !184)
!184 = distinct !DILexicalBlock(scope: !167, file: !4, line: 107, column: 10)
!185 = !{!"74"}
!186 = !{!"75"}
!187 = !DILocation(line: 109, column: 11, scope: !184)
!188 = !{!"76"}
!189 = !DILocation(line: 109, column: 15, scope: !184)
!190 = !{!"77"}
!191 = !DILocation(line: 109, column: 38, scope: !184)
!192 = !{!"78"}
!193 = !DILocation(line: 109, column: 4, scope: !184)
!194 = !{!"79"}
!195 = !DILocation(line: 110, column: 10, scope: !184)
!196 = !{!"80"}
!197 = !{!"81"}
!198 = !{!"82"}
!199 = !{!"83"}
!200 = !{!"84"}
!201 = !DILocation(line: 0, scope: !167)
!202 = !{!"85"}
!203 = !{!"86"}
!204 = !{!"87"}
!205 = !{!"88"}
!206 = !{!"89"}
!207 = !DILocation(line: 113, column: 9, scope: !160)
!208 = !{!"90"}
!209 = !DILocation(line: 113, column: 6, scope: !160)
!210 = !{!"91"}
!211 = !{!"92"}
!212 = !DILocation(line: 114, column: 24, scope: !160)
!213 = !{!"93"}
!214 = !DILocation(line: 114, column: 9, scope: !160)
!215 = !{!"94"}
!216 = !DILocation(line: 114, column: 6, scope: !160)
!217 = !{!"95"}
!218 = !{!"96"}
!219 = !DILocation(line: 116, column: 9, scope: !160)
!220 = !{!"97"}
!221 = !DILocalVariable(name: "y0r", scope: !160, file: !4, line: 99, type: !6)
!222 = !{!"98"}
!223 = !DILocation(line: 117, column: 9, scope: !160)
!224 = !{!"99"}
!225 = !DILocalVariable(name: "y1r", scope: !160, file: !4, line: 99, type: !6)
!226 = !{!"100"}
!227 = !DILocation(line: 118, column: 11, scope: !160)
!228 = !{!"101"}
!229 = !DILocalVariable(name: "y2", scope: !160, file: !4, line: 99, type: !6)
!230 = !{!"102"}
!231 = !DILocation(line: 119, column: 13, scope: !160)
!232 = !{!"103"}
!233 = !DILocalVariable(name: "y2r", scope: !160, file: !4, line: 99, type: !6)
!234 = !{!"104"}
!235 = !DILocation(line: 121, column: 8, scope: !160)
!236 = !{!"105"}
!237 = !DILocalVariable(name: "z0", scope: !160, file: !4, line: 100, type: !6)
!238 = !{!"106"}
!239 = !DILocation(line: 122, column: 8, scope: !160)
!240 = !{!"107"}
!241 = !DILocalVariable(name: "z1", scope: !160, file: !4, line: 100, type: !6)
!242 = !{!"108"}
!243 = !DILocation(line: 123, column: 8, scope: !160)
!244 = !{!"109"}
!245 = !DILocalVariable(name: "z2", scope: !160, file: !4, line: 100, type: !6)
!246 = !{!"110"}
!247 = !DILocation(line: 124, column: 9, scope: !160)
!248 = !{!"111"}
!249 = !DILocalVariable(name: "z0h", scope: !160, file: !4, line: 100, type: !6)
!250 = !{!"112"}
!251 = !DILocation(line: 125, column: 9, scope: !160)
!252 = !{!"113"}
!253 = !DILocalVariable(name: "z1h", scope: !160, file: !4, line: 100, type: !6)
!254 = !{!"114"}
!255 = !DILocation(line: 126, column: 9, scope: !160)
!256 = !{!"115"}
!257 = !DILocalVariable(name: "z2h", scope: !160, file: !4, line: 100, type: !6)
!258 = !{!"116"}
!259 = !DILocation(line: 127, column: 12, scope: !160)
!260 = !{!"117"}
!261 = !DILocation(line: 127, column: 6, scope: !160)
!262 = !{!"118"}
!263 = !{!"119"}
!264 = !DILocation(line: 128, column: 14, scope: !160)
!265 = !{!"120"}
!266 = !DILocation(line: 128, column: 7, scope: !160)
!267 = !{!"121"}
!268 = !{!"122"}
!269 = !DILocation(line: 129, column: 9, scope: !160)
!270 = !{!"123"}
!271 = !DILocation(line: 129, column: 20, scope: !160)
!272 = !{!"124"}
!273 = !{!"125"}
!274 = !DILocation(line: 130, column: 9, scope: !160)
!275 = !{!"126"}
!276 = !DILocation(line: 130, column: 20, scope: !160)
!277 = !{!"127"}
!278 = !{!"128"}
!279 = !DILocation(line: 131, column: 9, scope: !160)
!280 = !{!"129"}
!281 = !DILocation(line: 131, column: 20, scope: !160)
!282 = !{!"130"}
!283 = !{!"131"}
!284 = !DILocalVariable(name: "v0", scope: !160, file: !4, line: 101, type: !6)
!285 = !{!"132"}
!286 = !DILocation(line: 134, column: 12, scope: !160)
!287 = !{!"133"}
!288 = !DILocalVariable(name: "v1", scope: !160, file: !4, line: 101, type: !6)
!289 = !{!"134"}
!290 = !DILocation(line: 135, column: 11, scope: !160)
!291 = !{!"135"}
!292 = !DILocalVariable(name: "v2", scope: !160, file: !4, line: 101, type: !6)
!293 = !{!"136"}
!294 = !DILocalVariable(name: "v3", scope: !160, file: !4, line: 101, type: !6)
!295 = !{!"137"}
!296 = !DILocation(line: 138, column: 12, scope: !160)
!297 = !{!"138"}
!298 = !DILocation(line: 138, column: 24, scope: !160)
!299 = !{!"139"}
!300 = !DILocation(line: 138, column: 18, scope: !160)
!301 = !{!"140"}
!302 = !{!"141"}
!303 = !DILocation(line: 139, column: 12, scope: !160)
!304 = !{!"142"}
!305 = !DILocation(line: 139, column: 24, scope: !160)
!306 = !{!"143"}
!307 = !DILocation(line: 139, column: 18, scope: !160)
!308 = !{!"144"}
!309 = !{!"145"}
!310 = !DILocation(line: 140, column: 12, scope: !160)
!311 = !{!"146"}
!312 = !DILocation(line: 140, column: 24, scope: !160)
!313 = !{!"147"}
!314 = !DILocation(line: 140, column: 18, scope: !160)
!315 = !{!"148"}
!316 = !{!"149"}
!317 = !DILocation(line: 141, column: 12, scope: !160)
!318 = !{!"150"}
!319 = !{!"151"}
!320 = !DILocation(line: 143, column: 18, scope: !160)
!321 = !{!"152"}
!322 = !DILocation(line: 143, column: 12, scope: !160)
!323 = !{!"153"}
!324 = !DILocation(line: 143, column: 30, scope: !160)
!325 = !{!"154"}
!326 = !DILocation(line: 143, column: 24, scope: !160)
!327 = !{!"155"}
!328 = !DILocation(line: 143, column: 42, scope: !160)
!329 = !{!"156"}
!330 = !DILocation(line: 143, column: 36, scope: !160)
!331 = !{!"157"}
!332 = !DILocation(line: 143, column: 6, scope: !160)
!333 = !{!"158"}
!334 = !{!"159"}
!335 = !DILocation(line: 144, column: 13, scope: !160)
!336 = !{!"160"}
!337 = !DILocation(line: 144, column: 26, scope: !160)
!338 = !{!"161"}
!339 = !DILocation(line: 144, column: 20, scope: !160)
!340 = !{!"162"}
!341 = !DILocation(line: 144, column: 39, scope: !160)
!342 = !{!"163"}
!343 = !DILocation(line: 144, column: 33, scope: !160)
!344 = !{!"164"}
!345 = !DILocation(line: 144, column: 6, scope: !160)
!346 = !{!"165"}
!347 = !{!"166"}
!348 = !DILocation(line: 145, column: 18, scope: !160)
!349 = !{!"167"}
!350 = !DILocation(line: 145, column: 12, scope: !160)
!351 = !{!"168"}
!352 = !DILocation(line: 145, column: 30, scope: !160)
!353 = !{!"169"}
!354 = !DILocation(line: 145, column: 24, scope: !160)
!355 = !{!"170"}
!356 = !DILocation(line: 145, column: 42, scope: !160)
!357 = !{!"171"}
!358 = !DILocation(line: 145, column: 36, scope: !160)
!359 = !{!"172"}
!360 = !DILocation(line: 145, column: 6, scope: !160)
!361 = !{!"173"}
!362 = !{!"174"}
!363 = !DILocation(line: 146, column: 13, scope: !160)
!364 = !{!"175"}
!365 = !DILocation(line: 146, column: 26, scope: !160)
!366 = !{!"176"}
!367 = !DILocation(line: 146, column: 20, scope: !160)
!368 = !{!"177"}
!369 = !DILocation(line: 146, column: 39, scope: !160)
!370 = !{!"178"}
!371 = !DILocation(line: 146, column: 33, scope: !160)
!372 = !{!"179"}
!373 = !DILocation(line: 146, column: 6, scope: !160)
!374 = !{!"180"}
!375 = !{!"181"}
!376 = !{!"182"}
!377 = !{!"183"}
!378 = distinct !{!378, !146, !379, !380}
!379 = !DILocation(line: 150, column: 2, scope: !88)
!380 = !{!"llvm.loop.mustprogress"}
!381 = !{!"184"}
!382 = !DILocation(line: 152, column: 2, scope: !88)
!383 = !{!"185"}
!384 = !DILocation(line: 153, column: 16, scope: !88)
!385 = !{!"186"}
!386 = !DILocation(line: 153, column: 2, scope: !88)
!387 = !{!"187"}
!388 = !DILocation(line: 154, column: 1, scope: !88)
!389 = !{!"188"}
!390 = distinct !DISubprogram(name: "br_dec64be", scope: !391, file: !391, line: 648, type: !392, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!391 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/GHASH_ctmul64")
!392 = !DISubroutineType(types: !393)
!393 = !{!6, !23}
!394 = !DILocalVariable(name: "src", arg: 1, scope: !390, file: !391, line: 648, type: !23)
!395 = !DILocation(line: 0, scope: !390)
!396 = !{!"189"}
!397 = !DILocalVariable(name: "buf", scope: !390, file: !391, line: 653, type: !100)
!398 = !{!"190"}
!399 = !DILocation(line: 656, column: 20, scope: !390)
!400 = !{!"191"}
!401 = !DILocation(line: 656, column: 10, scope: !390)
!402 = !{!"192"}
!403 = !DILocation(line: 656, column: 36, scope: !390)
!404 = !{!"193"}
!405 = !DILocation(line: 657, column: 30, scope: !390)
!406 = !{!"194"}
!407 = !DILocation(line: 657, column: 15, scope: !390)
!408 = !{!"195"}
!409 = !DILocation(line: 657, column: 5, scope: !390)
!410 = !{!"196"}
!411 = !DILocation(line: 657, column: 3, scope: !390)
!412 = !{!"197"}
!413 = !DILocation(line: 656, column: 2, scope: !390)
!414 = !{!"198"}
!415 = distinct !DISubprogram(name: "rev64", scope: !4, file: !4, line: 59, type: !416, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!416 = !DISubroutineType(types: !417)
!417 = !{!6, !6}
!418 = !DILocalVariable(name: "x", arg: 1, scope: !415, file: !4, line: 59, type: !6)
!419 = !DILocation(line: 0, scope: !415)
!420 = !{!"199"}
!421 = !DILocation(line: 66, column: 2, scope: !415)
!422 = !{!"200"}
!423 = !DILocation(line: 66, column: 2, scope: !424)
!424 = distinct !DILexicalBlock(scope: !415, file: !4, line: 66, column: 2)
!425 = !{!"201"}
!426 = !{!"202"}
!427 = !{!"203"}
!428 = !{!"204"}
!429 = !{!"205"}
!430 = !{!"206"}
!431 = !{!"207"}
!432 = !DILocation(line: 67, column: 2, scope: !415)
!433 = !{!"208"}
!434 = !DILocation(line: 67, column: 2, scope: !435)
!435 = distinct !DILexicalBlock(scope: !415, file: !4, line: 67, column: 2)
!436 = !{!"209"}
!437 = !{!"210"}
!438 = !{!"211"}
!439 = !{!"212"}
!440 = !{!"213"}
!441 = !{!"214"}
!442 = !{!"215"}
!443 = !DILocation(line: 68, column: 2, scope: !415)
!444 = !{!"216"}
!445 = !DILocation(line: 68, column: 2, scope: !446)
!446 = distinct !DILexicalBlock(scope: !415, file: !4, line: 68, column: 2)
!447 = !{!"217"}
!448 = !{!"218"}
!449 = !{!"219"}
!450 = !{!"220"}
!451 = !{!"221"}
!452 = !{!"222"}
!453 = !{!"223"}
!454 = !DILocation(line: 69, column: 2, scope: !415)
!455 = !{!"224"}
!456 = !DILocation(line: 69, column: 2, scope: !457)
!457 = distinct !DILexicalBlock(scope: !415, file: !4, line: 69, column: 2)
!458 = !{!"225"}
!459 = !{!"226"}
!460 = !{!"227"}
!461 = !{!"228"}
!462 = !{!"229"}
!463 = !{!"230"}
!464 = !{!"231"}
!465 = !DILocation(line: 70, column: 2, scope: !415)
!466 = !{!"232"}
!467 = !DILocation(line: 70, column: 2, scope: !468)
!468 = distinct !DILexicalBlock(scope: !415, file: !4, line: 70, column: 2)
!469 = !{!"233"}
!470 = !{!"234"}
!471 = !{!"235"}
!472 = !{!"236"}
!473 = !{!"237"}
!474 = !{!"238"}
!475 = !{!"239"}
!476 = !DILocation(line: 71, column: 12, scope: !415)
!477 = !{!"240"}
!478 = !DILocation(line: 71, column: 24, scope: !415)
!479 = !{!"241"}
!480 = !DILocation(line: 71, column: 19, scope: !415)
!481 = !{!"242"}
!482 = !DILocation(line: 71, column: 2, scope: !415)
!483 = !{!"243"}
!484 = distinct !DISubprogram(name: "bmul64", scope: !4, file: !4, line: 33, type: !485, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!485 = !DISubroutineType(types: !486)
!486 = !{!6, !6, !6}
!487 = !DILocalVariable(name: "x", arg: 1, scope: !484, file: !4, line: 33, type: !6)
!488 = !DILocation(line: 0, scope: !484)
!489 = !{!"244"}
!490 = !DILocalVariable(name: "y", arg: 2, scope: !484, file: !4, line: 33, type: !6)
!491 = !{!"245"}
!492 = !DILocation(line: 39, column: 9, scope: !484)
!493 = !{!"246"}
!494 = !DILocalVariable(name: "x0", scope: !484, file: !4, line: 35, type: !6)
!495 = !{!"247"}
!496 = !DILocation(line: 40, column: 9, scope: !484)
!497 = !{!"248"}
!498 = !DILocalVariable(name: "x1", scope: !484, file: !4, line: 35, type: !6)
!499 = !{!"249"}
!500 = !DILocation(line: 41, column: 9, scope: !484)
!501 = !{!"250"}
!502 = !DILocalVariable(name: "x2", scope: !484, file: !4, line: 35, type: !6)
!503 = !{!"251"}
!504 = !DILocation(line: 42, column: 9, scope: !484)
!505 = !{!"252"}
!506 = !DILocalVariable(name: "x3", scope: !484, file: !4, line: 35, type: !6)
!507 = !{!"253"}
!508 = !DILocation(line: 43, column: 9, scope: !484)
!509 = !{!"254"}
!510 = !DILocalVariable(name: "y0", scope: !484, file: !4, line: 36, type: !6)
!511 = !{!"255"}
!512 = !DILocation(line: 44, column: 9, scope: !484)
!513 = !{!"256"}
!514 = !DILocalVariable(name: "y1", scope: !484, file: !4, line: 36, type: !6)
!515 = !{!"257"}
!516 = !DILocation(line: 45, column: 9, scope: !484)
!517 = !{!"258"}
!518 = !DILocalVariable(name: "y2", scope: !484, file: !4, line: 36, type: !6)
!519 = !{!"259"}
!520 = !DILocation(line: 46, column: 9, scope: !484)
!521 = !{!"260"}
!522 = !DILocalVariable(name: "y3", scope: !484, file: !4, line: 36, type: !6)
!523 = !{!"261"}
!524 = !DILocation(line: 47, column: 11, scope: !484)
!525 = !{!"262"}
!526 = !DILocation(line: 47, column: 23, scope: !484)
!527 = !{!"263"}
!528 = !DILocation(line: 47, column: 17, scope: !484)
!529 = !{!"264"}
!530 = !DILocation(line: 47, column: 35, scope: !484)
!531 = !{!"265"}
!532 = !DILocation(line: 47, column: 29, scope: !484)
!533 = !{!"266"}
!534 = !DILocation(line: 47, column: 47, scope: !484)
!535 = !{!"267"}
!536 = !DILocation(line: 47, column: 41, scope: !484)
!537 = !{!"268"}
!538 = !DILocalVariable(name: "z0", scope: !484, file: !4, line: 37, type: !6)
!539 = !{!"269"}
!540 = !DILocation(line: 48, column: 11, scope: !484)
!541 = !{!"270"}
!542 = !DILocation(line: 48, column: 23, scope: !484)
!543 = !{!"271"}
!544 = !DILocation(line: 48, column: 17, scope: !484)
!545 = !{!"272"}
!546 = !DILocation(line: 48, column: 35, scope: !484)
!547 = !{!"273"}
!548 = !DILocation(line: 48, column: 29, scope: !484)
!549 = !{!"274"}
!550 = !DILocation(line: 48, column: 47, scope: !484)
!551 = !{!"275"}
!552 = !DILocation(line: 48, column: 41, scope: !484)
!553 = !{!"276"}
!554 = !DILocalVariable(name: "z1", scope: !484, file: !4, line: 37, type: !6)
!555 = !{!"277"}
!556 = !DILocation(line: 49, column: 11, scope: !484)
!557 = !{!"278"}
!558 = !DILocation(line: 49, column: 23, scope: !484)
!559 = !{!"279"}
!560 = !DILocation(line: 49, column: 17, scope: !484)
!561 = !{!"280"}
!562 = !DILocation(line: 49, column: 35, scope: !484)
!563 = !{!"281"}
!564 = !DILocation(line: 49, column: 29, scope: !484)
!565 = !{!"282"}
!566 = !DILocation(line: 49, column: 47, scope: !484)
!567 = !{!"283"}
!568 = !DILocation(line: 49, column: 41, scope: !484)
!569 = !{!"284"}
!570 = !DILocalVariable(name: "z2", scope: !484, file: !4, line: 37, type: !6)
!571 = !{!"285"}
!572 = !DILocation(line: 50, column: 11, scope: !484)
!573 = !{!"286"}
!574 = !DILocation(line: 50, column: 23, scope: !484)
!575 = !{!"287"}
!576 = !DILocation(line: 50, column: 17, scope: !484)
!577 = !{!"288"}
!578 = !DILocation(line: 50, column: 35, scope: !484)
!579 = !{!"289"}
!580 = !DILocation(line: 50, column: 29, scope: !484)
!581 = !{!"290"}
!582 = !DILocation(line: 50, column: 47, scope: !484)
!583 = !{!"291"}
!584 = !DILocation(line: 50, column: 41, scope: !484)
!585 = !{!"292"}
!586 = !DILocalVariable(name: "z3", scope: !484, file: !4, line: 37, type: !6)
!587 = !{!"293"}
!588 = !DILocation(line: 51, column: 5, scope: !484)
!589 = !{!"294"}
!590 = !{!"295"}
!591 = !DILocation(line: 52, column: 5, scope: !484)
!592 = !{!"296"}
!593 = !{!"297"}
!594 = !DILocation(line: 53, column: 5, scope: !484)
!595 = !{!"298"}
!596 = !{!"299"}
!597 = !DILocation(line: 54, column: 5, scope: !484)
!598 = !{!"300"}
!599 = !{!"301"}
!600 = !DILocation(line: 55, column: 12, scope: !484)
!601 = !{!"302"}
!602 = !DILocation(line: 55, column: 17, scope: !484)
!603 = !{!"303"}
!604 = !DILocation(line: 55, column: 22, scope: !484)
!605 = !{!"304"}
!606 = !DILocation(line: 55, column: 2, scope: !484)
!607 = !{!"305"}
!608 = distinct !DISubprogram(name: "br_enc64be", scope: !391, file: !391, line: 620, type: !609, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !22, !6}
!611 = !DILocalVariable(name: "dst", arg: 1, scope: !608, file: !391, line: 620, type: !22)
!612 = !DILocation(line: 0, scope: !608)
!613 = !{!"306"}
!614 = !DILocalVariable(name: "x", arg: 2, scope: !608, file: !391, line: 620, type: !6)
!615 = !{!"307"}
!616 = !DILocalVariable(name: "buf", scope: !608, file: !391, line: 625, type: !104)
!617 = !{!"308"}
!618 = !DILocation(line: 628, column: 31, scope: !608)
!619 = !{!"309"}
!620 = !DILocation(line: 628, column: 18, scope: !608)
!621 = !{!"310"}
!622 = !DILocation(line: 628, column: 2, scope: !608)
!623 = !{!"311"}
!624 = !DILocation(line: 629, column: 17, scope: !608)
!625 = !{!"312"}
!626 = !DILocation(line: 629, column: 22, scope: !608)
!627 = !{!"313"}
!628 = !DILocation(line: 629, column: 2, scope: !608)
!629 = !{!"314"}
!630 = !DILocation(line: 631, column: 1, scope: !608)
!631 = !{!"315"}
!632 = distinct !DISubprogram(name: "br_enc32be", scope: !391, file: !391, line: 558, type: !633, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !22, !11}
!635 = !DILocalVariable(name: "dst", arg: 1, scope: !632, file: !391, line: 558, type: !22)
!636 = !DILocation(line: 0, scope: !632)
!637 = !{!"316"}
!638 = !DILocalVariable(name: "x", arg: 2, scope: !632, file: !391, line: 558, type: !11)
!639 = !{!"317"}
!640 = !DILocalVariable(name: "buf", scope: !632, file: !391, line: 563, type: !104)
!641 = !{!"318"}
!642 = !DILocation(line: 566, column: 29, scope: !632)
!643 = !{!"319"}
!644 = !DILocation(line: 566, column: 11, scope: !632)
!645 = !{!"320"}
!646 = !DILocation(line: 566, column: 2, scope: !632)
!647 = !{!"321"}
!648 = !DILocation(line: 566, column: 9, scope: !632)
!649 = !{!"322"}
!650 = !DILocation(line: 567, column: 29, scope: !632)
!651 = !{!"323"}
!652 = !DILocation(line: 567, column: 11, scope: !632)
!653 = !{!"324"}
!654 = !DILocation(line: 567, column: 2, scope: !632)
!655 = !{!"325"}
!656 = !DILocation(line: 567, column: 9, scope: !632)
!657 = !{!"326"}
!658 = !DILocation(line: 568, column: 29, scope: !632)
!659 = !{!"327"}
!660 = !DILocation(line: 568, column: 11, scope: !632)
!661 = !{!"328"}
!662 = !DILocation(line: 568, column: 2, scope: !632)
!663 = !{!"329"}
!664 = !DILocation(line: 568, column: 9, scope: !632)
!665 = !{!"330"}
!666 = !DILocation(line: 569, column: 11, scope: !632)
!667 = !{!"331"}
!668 = !DILocation(line: 569, column: 2, scope: !632)
!669 = !{!"332"}
!670 = !DILocation(line: 569, column: 9, scope: !632)
!671 = !{!"333"}
!672 = !DILocation(line: 571, column: 1, scope: !632)
!673 = !{!"334"}
!674 = distinct !DISubprogram(name: "br_dec32be", scope: !391, file: !391, line: 590, type: !675, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!675 = !DISubroutineType(types: !676)
!676 = !{!11, !23}
!677 = !DILocalVariable(name: "src", arg: 1, scope: !674, file: !391, line: 590, type: !23)
!678 = !DILocation(line: 0, scope: !674)
!679 = !{!"335"}
!680 = !DILocalVariable(name: "buf", scope: !674, file: !391, line: 595, type: !100)
!681 = !{!"336"}
!682 = !DILocation(line: 598, column: 20, scope: !674)
!683 = !{!"337"}
!684 = !{!"338"}
!685 = !DILocation(line: 598, column: 10, scope: !674)
!686 = !{!"339"}
!687 = !DILocation(line: 598, column: 27, scope: !674)
!688 = !{!"340"}
!689 = !DILocation(line: 599, column: 16, scope: !674)
!690 = !{!"341"}
!691 = !{!"342"}
!692 = !DILocation(line: 599, column: 6, scope: !674)
!693 = !{!"343"}
!694 = !DILocation(line: 599, column: 23, scope: !674)
!695 = !{!"344"}
!696 = !DILocation(line: 599, column: 3, scope: !674)
!697 = !{!"345"}
!698 = !DILocation(line: 600, column: 16, scope: !674)
!699 = !{!"346"}
!700 = !{!"347"}
!701 = !DILocation(line: 600, column: 6, scope: !674)
!702 = !{!"348"}
!703 = !DILocation(line: 600, column: 23, scope: !674)
!704 = !{!"349"}
!705 = !DILocation(line: 600, column: 3, scope: !674)
!706 = !{!"350"}
!707 = !DILocation(line: 601, column: 15, scope: !674)
!708 = !{!"351"}
!709 = !{!"352"}
!710 = !DILocation(line: 601, column: 5, scope: !674)
!711 = !{!"353"}
!712 = !DILocation(line: 601, column: 3, scope: !674)
!713 = !{!"354"}
!714 = !DILocation(line: 598, column: 2, scope: !674)
!715 = !{!"355"}
