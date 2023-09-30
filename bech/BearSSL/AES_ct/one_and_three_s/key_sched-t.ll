; ModuleID = 'key_sched-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.br_union_u32 = type { i32 }
%struct.smack_value = type { i8* }

@Rcon = internal constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1, !dbg !0, !psr.id !30

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct_bitslice_Sbox(i32* %0) #0 !dbg !37 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !41, metadata !DIExpression()), !dbg !42, !psr.id !43
  %2 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !44, !psr.id !45
  %3 = load i32, i32* %2, align 4, !dbg !44, !psr.id !46, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %3, metadata !48, metadata !DIExpression()), !dbg !42, !psr.id !49
  %4 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !50, !psr.id !51
  %5 = load i32, i32* %4, align 4, !dbg !50, !psr.id !52, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %5, metadata !53, metadata !DIExpression()), !dbg !42, !psr.id !54
  %6 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !55, !psr.id !56
  %7 = load i32, i32* %6, align 4, !dbg !55, !psr.id !57, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %7, metadata !58, metadata !DIExpression()), !dbg !42, !psr.id !59
  %8 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !60, !psr.id !61
  %9 = load i32, i32* %8, align 4, !dbg !60, !psr.id !62, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %9, metadata !63, metadata !DIExpression()), !dbg !42, !psr.id !64
  %10 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !65, !psr.id !66
  %11 = load i32, i32* %10, align 4, !dbg !65, !psr.id !67, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %11, metadata !68, metadata !DIExpression()), !dbg !42, !psr.id !69
  %12 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !70, !psr.id !71
  %13 = load i32, i32* %12, align 4, !dbg !70, !psr.id !72, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %13, metadata !73, metadata !DIExpression()), !dbg !42, !psr.id !74
  %14 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !75, !psr.id !76
  %15 = load i32, i32* %14, align 4, !dbg !75, !psr.id !77, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %15, metadata !78, metadata !DIExpression()), !dbg !42, !psr.id !79
  %16 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !80, !psr.id !81
  %17 = load i32, i32* %16, align 4, !dbg !80, !psr.id !82, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %17, metadata !83, metadata !DIExpression()), !dbg !42, !psr.id !84
  %18 = xor i32 %9, %13, !dbg !85, !psr.id !86, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %18, metadata !87, metadata !DIExpression()), !dbg !42, !psr.id !88
  %19 = xor i32 %3, %15, !dbg !89, !psr.id !90, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %19, metadata !91, metadata !DIExpression()), !dbg !42, !psr.id !92
  %20 = xor i32 %3, %9, !dbg !93, !psr.id !94, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %20, metadata !95, metadata !DIExpression()), !dbg !42, !psr.id !96
  %21 = xor i32 %3, %13, !dbg !97, !psr.id !98, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %21, metadata !99, metadata !DIExpression()), !dbg !42, !psr.id !100
  %22 = xor i32 %5, %7, !dbg !101, !psr.id !102, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %22, metadata !103, metadata !DIExpression()), !dbg !42, !psr.id !104
  %23 = xor i32 %22, %17, !dbg !105, !psr.id !106, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %23, metadata !107, metadata !DIExpression()), !dbg !42, !psr.id !108
  %24 = xor i32 %23, %9, !dbg !109, !psr.id !110, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %24, metadata !111, metadata !DIExpression()), !dbg !42, !psr.id !112
  %25 = xor i32 %19, %18, !dbg !113, !psr.id !114, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %25, metadata !115, metadata !DIExpression()), !dbg !42, !psr.id !116
  %26 = xor i32 %23, %3, !dbg !117, !psr.id !118, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %26, metadata !119, metadata !DIExpression()), !dbg !42, !psr.id !120
  %27 = xor i32 %23, %15, !dbg !121, !psr.id !122, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %27, metadata !123, metadata !DIExpression()), !dbg !42, !psr.id !124
  %28 = xor i32 %27, %21, !dbg !125, !psr.id !126, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %28, metadata !127, metadata !DIExpression()), !dbg !42, !psr.id !128
  %29 = xor i32 %11, %25, !dbg !129, !psr.id !130, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %29, metadata !131, metadata !DIExpression()), !dbg !42, !psr.id !132
  %30 = xor i32 %29, %13, !dbg !133, !psr.id !134, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %30, metadata !135, metadata !DIExpression()), !dbg !42, !psr.id !136
  %31 = xor i32 %29, %5, !dbg !137, !psr.id !138, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %31, metadata !139, metadata !DIExpression()), !dbg !42, !psr.id !140
  %32 = xor i32 %30, %17, !dbg !141, !psr.id !142, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %32, metadata !143, metadata !DIExpression()), !dbg !42, !psr.id !144
  %33 = xor i32 %30, %22, !dbg !145, !psr.id !146, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %33, metadata !147, metadata !DIExpression()), !dbg !42, !psr.id !148
  %34 = xor i32 %31, %20, !dbg !149, !psr.id !150, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %34, metadata !151, metadata !DIExpression()), !dbg !42, !psr.id !152
  %35 = xor i32 %17, %34, !dbg !153, !psr.id !154, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %35, metadata !155, metadata !DIExpression()), !dbg !42, !psr.id !156
  %36 = xor i32 %33, %34, !dbg !157, !psr.id !158, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %36, metadata !159, metadata !DIExpression()), !dbg !42, !psr.id !160
  %37 = xor i32 %33, %21, !dbg !161, !psr.id !162, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %37, metadata !163, metadata !DIExpression()), !dbg !42, !psr.id !164
  %38 = xor i32 %22, %34, !dbg !165, !psr.id !166, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %38, metadata !167, metadata !DIExpression()), !dbg !42, !psr.id !168
  %39 = xor i32 %19, %38, !dbg !169, !psr.id !170, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %39, metadata !171, metadata !DIExpression()), !dbg !42, !psr.id !172
  %40 = xor i32 %3, %38, !dbg !173, !psr.id !174, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %40, metadata !175, metadata !DIExpression()), !dbg !42, !psr.id !176
  %41 = and i32 %25, %30, !dbg !177, !psr.id !178, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %41, metadata !179, metadata !DIExpression()), !dbg !42, !psr.id !180
  %42 = and i32 %28, %32, !dbg !181, !psr.id !182, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %42, metadata !183, metadata !DIExpression()), !dbg !42, !psr.id !184
  %43 = xor i32 %42, %41, !dbg !185, !psr.id !186, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %43, metadata !187, metadata !DIExpression()), !dbg !42, !psr.id !188
  %44 = and i32 %24, %17, !dbg !189, !psr.id !190, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %44, metadata !191, metadata !DIExpression()), !dbg !42, !psr.id !192
  %45 = xor i32 %44, %41, !dbg !193, !psr.id !194, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %45, metadata !195, metadata !DIExpression()), !dbg !42, !psr.id !196
  %46 = and i32 %19, %38, !dbg !197, !psr.id !198, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %46, metadata !199, metadata !DIExpression()), !dbg !42, !psr.id !200
  %47 = and i32 %27, %23, !dbg !201, !psr.id !202, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %47, metadata !203, metadata !DIExpression()), !dbg !42, !psr.id !204
  %48 = xor i32 %47, %46, !dbg !205, !psr.id !206, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %48, metadata !207, metadata !DIExpression()), !dbg !42, !psr.id !208
  %49 = and i32 %26, %35, !dbg !209, !psr.id !210, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %49, metadata !211, metadata !DIExpression()), !dbg !42, !psr.id !212
  %50 = xor i32 %49, %46, !dbg !213, !psr.id !214, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %50, metadata !215, metadata !DIExpression()), !dbg !42, !psr.id !216
  %51 = and i32 %20, %34, !dbg !217, !psr.id !218, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %51, metadata !219, metadata !DIExpression()), !dbg !42, !psr.id !220
  %52 = and i32 %18, %36, !dbg !221, !psr.id !222, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %52, metadata !223, metadata !DIExpression()), !dbg !42, !psr.id !224
  %53 = xor i32 %52, %51, !dbg !225, !psr.id !226, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %53, metadata !227, metadata !DIExpression()), !dbg !42, !psr.id !228
  %54 = and i32 %21, %33, !dbg !229, !psr.id !230, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %54, metadata !231, metadata !DIExpression()), !dbg !42, !psr.id !232
  %55 = xor i32 %54, %51, !dbg !233, !psr.id !234, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %55, metadata !235, metadata !DIExpression()), !dbg !42, !psr.id !236
  %56 = xor i32 %43, %53, !dbg !237, !psr.id !238, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %56, metadata !239, metadata !DIExpression()), !dbg !42, !psr.id !240
  %57 = xor i32 %45, %55, !dbg !241, !psr.id !242, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %57, metadata !243, metadata !DIExpression()), !dbg !42, !psr.id !244
  %58 = xor i32 %48, %53, !dbg !245, !psr.id !246, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %58, metadata !247, metadata !DIExpression()), !dbg !42, !psr.id !248
  %59 = xor i32 %50, %55, !dbg !249, !psr.id !250, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %59, metadata !251, metadata !DIExpression()), !dbg !42, !psr.id !252
  %60 = xor i32 %56, %31, !dbg !253, !psr.id !254, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %60, metadata !255, metadata !DIExpression()), !dbg !42, !psr.id !256
  %61 = xor i32 %57, %37, !dbg !257, !psr.id !258, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %61, metadata !259, metadata !DIExpression()), !dbg !42, !psr.id !260
  %62 = xor i32 %58, %39, !dbg !261, !psr.id !262, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %62, metadata !263, metadata !DIExpression()), !dbg !42, !psr.id !264
  %63 = xor i32 %59, %40, !dbg !265, !psr.id !266, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %63, metadata !267, metadata !DIExpression()), !dbg !42, !psr.id !268
  %64 = xor i32 %60, %61, !dbg !269, !psr.id !270, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %64, metadata !271, metadata !DIExpression()), !dbg !42, !psr.id !272
  %65 = and i32 %60, %62, !dbg !273, !psr.id !274, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %65, metadata !275, metadata !DIExpression()), !dbg !42, !psr.id !276
  %66 = xor i32 %63, %65, !dbg !277, !psr.id !278, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %66, metadata !279, metadata !DIExpression()), !dbg !42, !psr.id !280
  %67 = and i32 %64, %66, !dbg !281, !psr.id !282, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %67, metadata !283, metadata !DIExpression()), !dbg !42, !psr.id !284
  %68 = xor i32 %67, %61, !dbg !285, !psr.id !286, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %68, metadata !287, metadata !DIExpression()), !dbg !42, !psr.id !288
  %69 = xor i32 %62, %63, !dbg !289, !psr.id !290, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %69, metadata !291, metadata !DIExpression()), !dbg !42, !psr.id !292
  %70 = xor i32 %61, %65, !dbg !293, !psr.id !294, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %70, metadata !295, metadata !DIExpression()), !dbg !42, !psr.id !296
  %71 = and i32 %70, %69, !dbg !297, !psr.id !298, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %71, metadata !299, metadata !DIExpression()), !dbg !42, !psr.id !300
  %72 = xor i32 %71, %63, !dbg !301, !psr.id !302, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %72, metadata !303, metadata !DIExpression()), !dbg !42, !psr.id !304
  %73 = xor i32 %62, %72, !dbg !305, !psr.id !306, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %73, metadata !307, metadata !DIExpression()), !dbg !42, !psr.id !308
  %74 = xor i32 %66, %72, !dbg !309, !psr.id !310, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %74, metadata !311, metadata !DIExpression()), !dbg !42, !psr.id !312
  %75 = and i32 %63, %74, !dbg !313, !psr.id !314, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %75, metadata !315, metadata !DIExpression()), !dbg !42, !psr.id !316
  %76 = xor i32 %75, %73, !dbg !317, !psr.id !318, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %76, metadata !319, metadata !DIExpression()), !dbg !42, !psr.id !320
  %77 = xor i32 %66, %75, !dbg !321, !psr.id !322, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %77, metadata !323, metadata !DIExpression()), !dbg !42, !psr.id !324
  %78 = and i32 %68, %77, !dbg !325, !psr.id !326, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %78, metadata !327, metadata !DIExpression()), !dbg !42, !psr.id !328
  %79 = xor i32 %64, %78, !dbg !329, !psr.id !330, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %79, metadata !331, metadata !DIExpression()), !dbg !42, !psr.id !332
  %80 = xor i32 %79, %76, !dbg !333, !psr.id !334, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %80, metadata !335, metadata !DIExpression()), !dbg !42, !psr.id !336
  %81 = xor i32 %68, %72, !dbg !337, !psr.id !338, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %81, metadata !339, metadata !DIExpression()), !dbg !42, !psr.id !340
  %82 = xor i32 %68, %79, !dbg !341, !psr.id !342, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %82, metadata !343, metadata !DIExpression()), !dbg !42, !psr.id !344
  %83 = xor i32 %72, %76, !dbg !345, !psr.id !346, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %83, metadata !347, metadata !DIExpression()), !dbg !42, !psr.id !348
  %84 = xor i32 %81, %80, !dbg !349, !psr.id !350, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %84, metadata !351, metadata !DIExpression()), !dbg !42, !psr.id !352
  %85 = and i32 %83, %30, !dbg !353, !psr.id !354, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %85, metadata !355, metadata !DIExpression()), !dbg !42, !psr.id !356
  %86 = and i32 %76, %32, !dbg !357, !psr.id !358, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %86, metadata !359, metadata !DIExpression()), !dbg !42, !psr.id !360
  %87 = and i32 %72, %17, !dbg !361, !psr.id !362, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %87, metadata !363, metadata !DIExpression()), !dbg !42, !psr.id !364
  %88 = and i32 %82, %38, !dbg !365, !psr.id !366, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %88, metadata !367, metadata !DIExpression()), !dbg !42, !psr.id !368
  %89 = and i32 %79, %23, !dbg !369, !psr.id !370, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %89, metadata !371, metadata !DIExpression()), !dbg !42, !psr.id !372
  %90 = and i32 %68, %35, !dbg !373, !psr.id !374, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %90, metadata !375, metadata !DIExpression()), !dbg !42, !psr.id !376
  %91 = and i32 %81, %34, !dbg !377, !psr.id !378, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %91, metadata !379, metadata !DIExpression()), !dbg !42, !psr.id !380
  %92 = and i32 %84, %36, !dbg !381, !psr.id !382, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %92, metadata !383, metadata !DIExpression()), !dbg !42, !psr.id !384
  %93 = and i32 %80, %33, !dbg !385, !psr.id !386, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %93, metadata !387, metadata !DIExpression()), !dbg !42, !psr.id !388
  %94 = and i32 %83, %25, !dbg !389, !psr.id !390, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %94, metadata !391, metadata !DIExpression()), !dbg !42, !psr.id !392
  %95 = and i32 %76, %28, !dbg !393, !psr.id !394, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %95, metadata !395, metadata !DIExpression()), !dbg !42, !psr.id !396
  %96 = and i32 %72, %24, !dbg !397, !psr.id !398, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %96, metadata !399, metadata !DIExpression()), !dbg !42, !psr.id !400
  %97 = and i32 %82, %19, !dbg !401, !psr.id !402, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %97, metadata !403, metadata !DIExpression()), !dbg !42, !psr.id !404
  %98 = and i32 %79, %27, !dbg !405, !psr.id !406, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %98, metadata !407, metadata !DIExpression()), !dbg !42, !psr.id !408
  %99 = and i32 %68, %26, !dbg !409, !psr.id !410, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %99, metadata !411, metadata !DIExpression()), !dbg !42, !psr.id !412
  %100 = and i32 %81, %20, !dbg !413, !psr.id !414, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %100, metadata !415, metadata !DIExpression()), !dbg !42, !psr.id !416
  %101 = and i32 %84, %18, !dbg !417, !psr.id !418, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %101, metadata !419, metadata !DIExpression()), !dbg !42, !psr.id !420
  %102 = and i32 %80, %21, !dbg !421, !psr.id !422, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %102, metadata !423, metadata !DIExpression()), !dbg !42, !psr.id !424
  %103 = xor i32 %100, %101, !dbg !425, !psr.id !426, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %103, metadata !427, metadata !DIExpression()), !dbg !42, !psr.id !428
  %104 = xor i32 %95, %96, !dbg !429, !psr.id !430, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %104, metadata !431, metadata !DIExpression()), !dbg !42, !psr.id !432
  %105 = xor i32 %90, %98, !dbg !433, !psr.id !434, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %105, metadata !435, metadata !DIExpression()), !dbg !42, !psr.id !436
  %106 = xor i32 %94, %95, !dbg !437, !psr.id !438, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %106, metadata !439, metadata !DIExpression()), !dbg !42, !psr.id !440
  %107 = xor i32 %87, %97, !dbg !441, !psr.id !442, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %107, metadata !443, metadata !DIExpression()), !dbg !42, !psr.id !444
  %108 = xor i32 %87, %90, !dbg !445, !psr.id !446, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %108, metadata !447, metadata !DIExpression()), !dbg !42, !psr.id !448
  %109 = xor i32 %92, %93, !dbg !449, !psr.id !450, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %109, metadata !451, metadata !DIExpression()), !dbg !42, !psr.id !452
  %110 = xor i32 %85, %88, !dbg !453, !psr.id !454, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %110, metadata !455, metadata !DIExpression()), !dbg !42, !psr.id !456
  %111 = xor i32 %91, %92, !dbg !457, !psr.id !458, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %111, metadata !459, metadata !DIExpression()), !dbg !42, !psr.id !460
  %112 = xor i32 %101, %102, !dbg !461, !psr.id !462, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %112, metadata !463, metadata !DIExpression()), !dbg !42, !psr.id !464
  %113 = xor i32 %97, %105, !dbg !465, !psr.id !466, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %113, metadata !467, metadata !DIExpression()), !dbg !42, !psr.id !468
  %114 = xor i32 %107, %110, !dbg !469, !psr.id !470, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %114, metadata !471, metadata !DIExpression()), !dbg !42, !psr.id !472
  %115 = xor i32 %89, %103, !dbg !473, !psr.id !474, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %115, metadata !475, metadata !DIExpression()), !dbg !42, !psr.id !476
  %116 = xor i32 %88, %111, !dbg !477, !psr.id !478, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %116, metadata !479, metadata !DIExpression()), !dbg !42, !psr.id !480
  %117 = xor i32 %103, %114, !dbg !481, !psr.id !482, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %117, metadata !483, metadata !DIExpression()), !dbg !42, !psr.id !484
  %118 = xor i32 %99, %114, !dbg !485, !psr.id !486, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %118, metadata !487, metadata !DIExpression()), !dbg !42, !psr.id !488
  %119 = xor i32 %109, %115, !dbg !489, !psr.id !490, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %119, metadata !491, metadata !DIExpression()), !dbg !42, !psr.id !492
  %120 = xor i32 %106, %115, !dbg !493, !psr.id !494, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %120, metadata !495, metadata !DIExpression()), !dbg !42, !psr.id !496
  %121 = xor i32 %89, %116, !dbg !497, !psr.id !498, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %121, metadata !499, metadata !DIExpression()), !dbg !42, !psr.id !500
  %122 = xor i32 %118, %119, !dbg !501, !psr.id !502, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %122, metadata !503, metadata !DIExpression()), !dbg !42, !psr.id !504
  %123 = xor i32 %86, %120, !dbg !505, !psr.id !506, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %123, metadata !507, metadata !DIExpression()), !dbg !42, !psr.id !508
  %124 = xor i32 %116, %120, !dbg !509, !psr.id !510, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %124, metadata !511, metadata !DIExpression()), !dbg !42, !psr.id !512
  %125 = xor i32 %119, -1, !dbg !513, !psr.id !514, !ValueTainted !47
  %126 = xor i32 %113, %125, !dbg !515, !psr.id !516, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %126, metadata !517, metadata !DIExpression()), !dbg !42, !psr.id !518
  %127 = xor i32 %117, -1, !dbg !519, !psr.id !520, !ValueTainted !47
  %128 = xor i32 %105, %127, !dbg !521, !psr.id !522, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %128, metadata !523, metadata !DIExpression()), !dbg !42, !psr.id !524
  %129 = xor i32 %121, %122, !dbg !525, !psr.id !526, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %129, metadata !527, metadata !DIExpression()), !dbg !42, !psr.id !528
  %130 = xor i32 %110, %123, !dbg !529, !psr.id !530, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %130, metadata !531, metadata !DIExpression()), !dbg !42, !psr.id !532
  %131 = xor i32 %108, %123, !dbg !533, !psr.id !534, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %131, metadata !535, metadata !DIExpression()), !dbg !42, !psr.id !536
  %132 = xor i32 %104, %122, !dbg !537, !psr.id !538, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %132, metadata !539, metadata !DIExpression()), !dbg !42, !psr.id !540
  %133 = xor i32 %130, -1, !dbg !541, !psr.id !542, !ValueTainted !47
  %134 = xor i32 %121, %133, !dbg !543, !psr.id !544, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %134, metadata !545, metadata !DIExpression()), !dbg !42, !psr.id !546
  %135 = xor i32 %129, -1, !dbg !547, !psr.id !548, !ValueTainted !47
  %136 = xor i32 %112, %135, !dbg !549, !psr.id !550, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %136, metadata !551, metadata !DIExpression()), !dbg !42, !psr.id !552
  %137 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !553, !psr.id !554
  store i32 %124, i32* %137, align 4, !dbg !555, !psr.id !556
  %138 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !557, !psr.id !558
  store i32 %134, i32* %138, align 4, !dbg !559, !psr.id !560
  %139 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !561, !psr.id !562
  store i32 %136, i32* %139, align 4, !dbg !563, !psr.id !564
  %140 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !565, !psr.id !566
  store i32 %130, i32* %140, align 4, !dbg !567, !psr.id !568
  %141 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !569, !psr.id !570
  store i32 %131, i32* %141, align 4, !dbg !571, !psr.id !572
  %142 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !573, !psr.id !574
  store i32 %132, i32* %142, align 4, !dbg !575, !psr.id !576
  %143 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !577, !psr.id !578
  store i32 %126, i32* %143, align 4, !dbg !579, !psr.id !580
  %144 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !581, !psr.id !582
  store i32 %128, i32* %144, align 4, !dbg !583, !psr.id !584
  ret void, !dbg !585, !psr.id !586
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct_ortho(i32* %0) #0 !dbg !587 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !588, metadata !DIExpression()), !dbg !589, !psr.id !590
  br label %2, !dbg !591, !psr.id !592

2:                                                ; preds = %1
  %3 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !593, !psr.id !595
  %4 = load i32, i32* %3, align 4, !dbg !593, !psr.id !596, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %4, metadata !597, metadata !DIExpression()), !dbg !598, !psr.id !599
  %5 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !593, !psr.id !600
  %6 = load i32, i32* %5, align 4, !dbg !593, !psr.id !601, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %6, metadata !602, metadata !DIExpression()), !dbg !598, !psr.id !603
  %7 = and i32 %4, 1431655765, !dbg !593, !psr.id !604, !ValueTainted !47
  %8 = and i32 %6, 1431655765, !dbg !593, !psr.id !605, !ValueTainted !47
  %9 = shl i32 %8, 1, !dbg !593, !psr.id !606, !ValueTainted !47
  %10 = or i32 %7, %9, !dbg !593, !psr.id !607, !ValueTainted !47
  %11 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !593, !psr.id !608
  store i32 %10, i32* %11, align 4, !dbg !593, !psr.id !609
  %12 = and i32 %4, -1431655766, !dbg !593, !psr.id !610, !ValueTainted !47
  %13 = lshr i32 %12, 1, !dbg !593, !psr.id !611, !ValueTainted !47
  %14 = and i32 %6, -1431655766, !dbg !593, !psr.id !612, !ValueTainted !47
  %15 = or i32 %13, %14, !dbg !593, !psr.id !613, !ValueTainted !47
  %16 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !593, !psr.id !614
  store i32 %15, i32* %16, align 4, !dbg !593, !psr.id !615
  br label %17, !dbg !593, !psr.id !616

17:                                               ; preds = %2
  br label %18, !dbg !617, !psr.id !618

18:                                               ; preds = %17
  %19 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !619, !psr.id !621
  %20 = load i32, i32* %19, align 4, !dbg !619, !psr.id !622, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %20, metadata !623, metadata !DIExpression()), !dbg !624, !psr.id !625
  %21 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !619, !psr.id !626
  %22 = load i32, i32* %21, align 4, !dbg !619, !psr.id !627, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %22, metadata !628, metadata !DIExpression()), !dbg !624, !psr.id !629
  %23 = and i32 %20, 1431655765, !dbg !619, !psr.id !630, !ValueTainted !47
  %24 = and i32 %22, 1431655765, !dbg !619, !psr.id !631, !ValueTainted !47
  %25 = shl i32 %24, 1, !dbg !619, !psr.id !632, !ValueTainted !47
  %26 = or i32 %23, %25, !dbg !619, !psr.id !633, !ValueTainted !47
  %27 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !619, !psr.id !634
  store i32 %26, i32* %27, align 4, !dbg !619, !psr.id !635
  %28 = and i32 %20, -1431655766, !dbg !619, !psr.id !636, !ValueTainted !47
  %29 = lshr i32 %28, 1, !dbg !619, !psr.id !637, !ValueTainted !47
  %30 = and i32 %22, -1431655766, !dbg !619, !psr.id !638, !ValueTainted !47
  %31 = or i32 %29, %30, !dbg !619, !psr.id !639, !ValueTainted !47
  %32 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !619, !psr.id !640
  store i32 %31, i32* %32, align 4, !dbg !619, !psr.id !641
  br label %33, !dbg !619, !psr.id !642

33:                                               ; preds = %18
  br label %34, !dbg !643, !psr.id !644

34:                                               ; preds = %33
  %35 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !645, !psr.id !647
  %36 = load i32, i32* %35, align 4, !dbg !645, !psr.id !648, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %36, metadata !649, metadata !DIExpression()), !dbg !650, !psr.id !651
  %37 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !645, !psr.id !652
  %38 = load i32, i32* %37, align 4, !dbg !645, !psr.id !653, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %38, metadata !654, metadata !DIExpression()), !dbg !650, !psr.id !655
  %39 = and i32 %36, 1431655765, !dbg !645, !psr.id !656, !ValueTainted !47
  %40 = and i32 %38, 1431655765, !dbg !645, !psr.id !657, !ValueTainted !47
  %41 = shl i32 %40, 1, !dbg !645, !psr.id !658, !ValueTainted !47
  %42 = or i32 %39, %41, !dbg !645, !psr.id !659, !ValueTainted !47
  %43 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !645, !psr.id !660
  store i32 %42, i32* %43, align 4, !dbg !645, !psr.id !661
  %44 = and i32 %36, -1431655766, !dbg !645, !psr.id !662, !ValueTainted !47
  %45 = lshr i32 %44, 1, !dbg !645, !psr.id !663, !ValueTainted !47
  %46 = and i32 %38, -1431655766, !dbg !645, !psr.id !664, !ValueTainted !47
  %47 = or i32 %45, %46, !dbg !645, !psr.id !665, !ValueTainted !47
  %48 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !645, !psr.id !666
  store i32 %47, i32* %48, align 4, !dbg !645, !psr.id !667
  br label %49, !dbg !645, !psr.id !668

49:                                               ; preds = %34
  br label %50, !dbg !669, !psr.id !670

50:                                               ; preds = %49
  %51 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !671, !psr.id !673
  %52 = load i32, i32* %51, align 4, !dbg !671, !psr.id !674, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %52, metadata !675, metadata !DIExpression()), !dbg !676, !psr.id !677
  %53 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !671, !psr.id !678
  %54 = load i32, i32* %53, align 4, !dbg !671, !psr.id !679, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %54, metadata !680, metadata !DIExpression()), !dbg !676, !psr.id !681
  %55 = and i32 %52, 1431655765, !dbg !671, !psr.id !682, !ValueTainted !47
  %56 = and i32 %54, 1431655765, !dbg !671, !psr.id !683, !ValueTainted !47
  %57 = shl i32 %56, 1, !dbg !671, !psr.id !684, !ValueTainted !47
  %58 = or i32 %55, %57, !dbg !671, !psr.id !685, !ValueTainted !47
  %59 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !671, !psr.id !686
  store i32 %58, i32* %59, align 4, !dbg !671, !psr.id !687
  %60 = and i32 %52, -1431655766, !dbg !671, !psr.id !688, !ValueTainted !47
  %61 = lshr i32 %60, 1, !dbg !671, !psr.id !689, !ValueTainted !47
  %62 = and i32 %54, -1431655766, !dbg !671, !psr.id !690, !ValueTainted !47
  %63 = or i32 %61, %62, !dbg !671, !psr.id !691, !ValueTainted !47
  %64 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !671, !psr.id !692
  store i32 %63, i32* %64, align 4, !dbg !671, !psr.id !693
  br label %65, !dbg !671, !psr.id !694

65:                                               ; preds = %50
  br label %66, !dbg !695, !psr.id !696

66:                                               ; preds = %65
  %67 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !697, !psr.id !699
  %68 = load i32, i32* %67, align 4, !dbg !697, !psr.id !700, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %68, metadata !701, metadata !DIExpression()), !dbg !702, !psr.id !703
  %69 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !697, !psr.id !704
  %70 = load i32, i32* %69, align 4, !dbg !697, !psr.id !705, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %70, metadata !706, metadata !DIExpression()), !dbg !702, !psr.id !707
  %71 = and i32 %68, 858993459, !dbg !697, !psr.id !708, !ValueTainted !47
  %72 = and i32 %70, 858993459, !dbg !697, !psr.id !709, !ValueTainted !47
  %73 = shl i32 %72, 2, !dbg !697, !psr.id !710, !ValueTainted !47
  %74 = or i32 %71, %73, !dbg !697, !psr.id !711, !ValueTainted !47
  %75 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !697, !psr.id !712
  store i32 %74, i32* %75, align 4, !dbg !697, !psr.id !713
  %76 = and i32 %68, -858993460, !dbg !697, !psr.id !714, !ValueTainted !47
  %77 = lshr i32 %76, 2, !dbg !697, !psr.id !715, !ValueTainted !47
  %78 = and i32 %70, -858993460, !dbg !697, !psr.id !716, !ValueTainted !47
  %79 = or i32 %77, %78, !dbg !697, !psr.id !717, !ValueTainted !47
  %80 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !697, !psr.id !718
  store i32 %79, i32* %80, align 4, !dbg !697, !psr.id !719
  br label %81, !dbg !697, !psr.id !720

81:                                               ; preds = %66
  br label %82, !dbg !721, !psr.id !722

82:                                               ; preds = %81
  %83 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !723, !psr.id !725
  %84 = load i32, i32* %83, align 4, !dbg !723, !psr.id !726, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %84, metadata !727, metadata !DIExpression()), !dbg !728, !psr.id !729
  %85 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !723, !psr.id !730
  %86 = load i32, i32* %85, align 4, !dbg !723, !psr.id !731, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %86, metadata !732, metadata !DIExpression()), !dbg !728, !psr.id !733
  %87 = and i32 %84, 858993459, !dbg !723, !psr.id !734, !ValueTainted !47
  %88 = and i32 %86, 858993459, !dbg !723, !psr.id !735, !ValueTainted !47
  %89 = shl i32 %88, 2, !dbg !723, !psr.id !736, !ValueTainted !47
  %90 = or i32 %87, %89, !dbg !723, !psr.id !737, !ValueTainted !47
  %91 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !723, !psr.id !738
  store i32 %90, i32* %91, align 4, !dbg !723, !psr.id !739
  %92 = and i32 %84, -858993460, !dbg !723, !psr.id !740, !ValueTainted !47
  %93 = lshr i32 %92, 2, !dbg !723, !psr.id !741, !ValueTainted !47
  %94 = and i32 %86, -858993460, !dbg !723, !psr.id !742, !ValueTainted !47
  %95 = or i32 %93, %94, !dbg !723, !psr.id !743, !ValueTainted !47
  %96 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !723, !psr.id !744
  store i32 %95, i32* %96, align 4, !dbg !723, !psr.id !745
  br label %97, !dbg !723, !psr.id !746

97:                                               ; preds = %82
  br label %98, !dbg !747, !psr.id !748

98:                                               ; preds = %97
  %99 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !749, !psr.id !751
  %100 = load i32, i32* %99, align 4, !dbg !749, !psr.id !752, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %100, metadata !753, metadata !DIExpression()), !dbg !754, !psr.id !755
  %101 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !749, !psr.id !756
  %102 = load i32, i32* %101, align 4, !dbg !749, !psr.id !757, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %102, metadata !758, metadata !DIExpression()), !dbg !754, !psr.id !759
  %103 = and i32 %100, 858993459, !dbg !749, !psr.id !760, !ValueTainted !47
  %104 = and i32 %102, 858993459, !dbg !749, !psr.id !761, !ValueTainted !47
  %105 = shl i32 %104, 2, !dbg !749, !psr.id !762, !ValueTainted !47
  %106 = or i32 %103, %105, !dbg !749, !psr.id !763, !ValueTainted !47
  %107 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !749, !psr.id !764
  store i32 %106, i32* %107, align 4, !dbg !749, !psr.id !765
  %108 = and i32 %100, -858993460, !dbg !749, !psr.id !766, !ValueTainted !47
  %109 = lshr i32 %108, 2, !dbg !749, !psr.id !767, !ValueTainted !47
  %110 = and i32 %102, -858993460, !dbg !749, !psr.id !768, !ValueTainted !47
  %111 = or i32 %109, %110, !dbg !749, !psr.id !769, !ValueTainted !47
  %112 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !749, !psr.id !770
  store i32 %111, i32* %112, align 4, !dbg !749, !psr.id !771
  br label %113, !dbg !749, !psr.id !772

113:                                              ; preds = %98
  br label %114, !dbg !773, !psr.id !774

114:                                              ; preds = %113
  %115 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !775, !psr.id !777
  %116 = load i32, i32* %115, align 4, !dbg !775, !psr.id !778, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %116, metadata !779, metadata !DIExpression()), !dbg !780, !psr.id !781
  %117 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !775, !psr.id !782
  %118 = load i32, i32* %117, align 4, !dbg !775, !psr.id !783, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %118, metadata !784, metadata !DIExpression()), !dbg !780, !psr.id !785
  %119 = and i32 %116, 858993459, !dbg !775, !psr.id !786, !ValueTainted !47
  %120 = and i32 %118, 858993459, !dbg !775, !psr.id !787, !ValueTainted !47
  %121 = shl i32 %120, 2, !dbg !775, !psr.id !788, !ValueTainted !47
  %122 = or i32 %119, %121, !dbg !775, !psr.id !789, !ValueTainted !47
  %123 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !775, !psr.id !790
  store i32 %122, i32* %123, align 4, !dbg !775, !psr.id !791
  %124 = and i32 %116, -858993460, !dbg !775, !psr.id !792, !ValueTainted !47
  %125 = lshr i32 %124, 2, !dbg !775, !psr.id !793, !ValueTainted !47
  %126 = and i32 %118, -858993460, !dbg !775, !psr.id !794, !ValueTainted !47
  %127 = or i32 %125, %126, !dbg !775, !psr.id !795, !ValueTainted !47
  %128 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !775, !psr.id !796
  store i32 %127, i32* %128, align 4, !dbg !775, !psr.id !797
  br label %129, !dbg !775, !psr.id !798

129:                                              ; preds = %114
  br label %130, !dbg !799, !psr.id !800

130:                                              ; preds = %129
  %131 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !801, !psr.id !803
  %132 = load i32, i32* %131, align 4, !dbg !801, !psr.id !804, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %132, metadata !805, metadata !DIExpression()), !dbg !806, !psr.id !807
  %133 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !801, !psr.id !808
  %134 = load i32, i32* %133, align 4, !dbg !801, !psr.id !809, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %134, metadata !810, metadata !DIExpression()), !dbg !806, !psr.id !811
  %135 = and i32 %132, 252645135, !dbg !801, !psr.id !812, !ValueTainted !47
  %136 = and i32 %134, 252645135, !dbg !801, !psr.id !813, !ValueTainted !47
  %137 = shl i32 %136, 4, !dbg !801, !psr.id !814, !ValueTainted !47
  %138 = or i32 %135, %137, !dbg !801, !psr.id !815, !ValueTainted !47
  %139 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !801, !psr.id !816
  store i32 %138, i32* %139, align 4, !dbg !801, !psr.id !817
  %140 = and i32 %132, -252645136, !dbg !801, !psr.id !818, !ValueTainted !47
  %141 = lshr i32 %140, 4, !dbg !801, !psr.id !819, !ValueTainted !47
  %142 = and i32 %134, -252645136, !dbg !801, !psr.id !820, !ValueTainted !47
  %143 = or i32 %141, %142, !dbg !801, !psr.id !821, !ValueTainted !47
  %144 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !801, !psr.id !822
  store i32 %143, i32* %144, align 4, !dbg !801, !psr.id !823
  br label %145, !dbg !801, !psr.id !824

145:                                              ; preds = %130
  br label %146, !dbg !825, !psr.id !826

146:                                              ; preds = %145
  %147 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !827, !psr.id !829
  %148 = load i32, i32* %147, align 4, !dbg !827, !psr.id !830, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %148, metadata !831, metadata !DIExpression()), !dbg !832, !psr.id !833
  %149 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !827, !psr.id !834
  %150 = load i32, i32* %149, align 4, !dbg !827, !psr.id !835, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %150, metadata !836, metadata !DIExpression()), !dbg !832, !psr.id !837
  %151 = and i32 %148, 252645135, !dbg !827, !psr.id !838, !ValueTainted !47
  %152 = and i32 %150, 252645135, !dbg !827, !psr.id !839, !ValueTainted !47
  %153 = shl i32 %152, 4, !dbg !827, !psr.id !840, !ValueTainted !47
  %154 = or i32 %151, %153, !dbg !827, !psr.id !841, !ValueTainted !47
  %155 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !827, !psr.id !842
  store i32 %154, i32* %155, align 4, !dbg !827, !psr.id !843
  %156 = and i32 %148, -252645136, !dbg !827, !psr.id !844, !ValueTainted !47
  %157 = lshr i32 %156, 4, !dbg !827, !psr.id !845, !ValueTainted !47
  %158 = and i32 %150, -252645136, !dbg !827, !psr.id !846, !ValueTainted !47
  %159 = or i32 %157, %158, !dbg !827, !psr.id !847, !ValueTainted !47
  %160 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !827, !psr.id !848
  store i32 %159, i32* %160, align 4, !dbg !827, !psr.id !849
  br label %161, !dbg !827, !psr.id !850

161:                                              ; preds = %146
  br label %162, !dbg !851, !psr.id !852

162:                                              ; preds = %161
  %163 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !853, !psr.id !855
  %164 = load i32, i32* %163, align 4, !dbg !853, !psr.id !856, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %164, metadata !857, metadata !DIExpression()), !dbg !858, !psr.id !859
  %165 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !853, !psr.id !860
  %166 = load i32, i32* %165, align 4, !dbg !853, !psr.id !861, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %166, metadata !862, metadata !DIExpression()), !dbg !858, !psr.id !863
  %167 = and i32 %164, 252645135, !dbg !853, !psr.id !864, !ValueTainted !47
  %168 = and i32 %166, 252645135, !dbg !853, !psr.id !865, !ValueTainted !47
  %169 = shl i32 %168, 4, !dbg !853, !psr.id !866, !ValueTainted !47
  %170 = or i32 %167, %169, !dbg !853, !psr.id !867, !ValueTainted !47
  %171 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !853, !psr.id !868
  store i32 %170, i32* %171, align 4, !dbg !853, !psr.id !869
  %172 = and i32 %164, -252645136, !dbg !853, !psr.id !870, !ValueTainted !47
  %173 = lshr i32 %172, 4, !dbg !853, !psr.id !871, !ValueTainted !47
  %174 = and i32 %166, -252645136, !dbg !853, !psr.id !872, !ValueTainted !47
  %175 = or i32 %173, %174, !dbg !853, !psr.id !873, !ValueTainted !47
  %176 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !853, !psr.id !874
  store i32 %175, i32* %176, align 4, !dbg !853, !psr.id !875
  br label %177, !dbg !853, !psr.id !876

177:                                              ; preds = %162
  br label %178, !dbg !877, !psr.id !878

178:                                              ; preds = %177
  %179 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !879, !psr.id !881
  %180 = load i32, i32* %179, align 4, !dbg !879, !psr.id !882, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %180, metadata !883, metadata !DIExpression()), !dbg !884, !psr.id !885
  %181 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !879, !psr.id !886
  %182 = load i32, i32* %181, align 4, !dbg !879, !psr.id !887, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %182, metadata !888, metadata !DIExpression()), !dbg !884, !psr.id !889
  %183 = and i32 %180, 252645135, !dbg !879, !psr.id !890, !ValueTainted !47
  %184 = and i32 %182, 252645135, !dbg !879, !psr.id !891, !ValueTainted !47
  %185 = shl i32 %184, 4, !dbg !879, !psr.id !892, !ValueTainted !47
  %186 = or i32 %183, %185, !dbg !879, !psr.id !893, !ValueTainted !47
  %187 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !879, !psr.id !894
  store i32 %186, i32* %187, align 4, !dbg !879, !psr.id !895
  %188 = and i32 %180, -252645136, !dbg !879, !psr.id !896, !ValueTainted !47
  %189 = lshr i32 %188, 4, !dbg !879, !psr.id !897, !ValueTainted !47
  %190 = and i32 %182, -252645136, !dbg !879, !psr.id !898, !ValueTainted !47
  %191 = or i32 %189, %190, !dbg !879, !psr.id !899, !ValueTainted !47
  %192 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !879, !psr.id !900
  store i32 %191, i32* %192, align 4, !dbg !879, !psr.id !901
  br label %193, !dbg !879, !psr.id !902

193:                                              ; preds = %178
  ret void, !dbg !903, !psr.id !904
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_ct_keysched(i32* %0, i8* %1, i64 %2) #0 !dbg !905 {
  %4 = alloca [120 x i32], align 16, !psr.id !913
  call void @llvm.dbg.value(metadata i32* %0, metadata !914, metadata !DIExpression()), !dbg !915, !psr.id !916
  call void @llvm.dbg.value(metadata i8* %1, metadata !917, metadata !DIExpression()), !dbg !915, !psr.id !918
  call void @llvm.dbg.value(metadata i64 %2, metadata !919, metadata !DIExpression()), !dbg !915, !psr.id !920
  call void @llvm.dbg.declare(metadata [120 x i32]* %4, metadata !921, metadata !DIExpression()), !dbg !925, !psr.id !926
  switch i64 %2, label %8 [
    i64 16, label %5
    i64 24, label %6
    i64 32, label %7
  ], !dbg !927, !psr.id !928

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !929, metadata !DIExpression()), !dbg !915, !psr.id !930
  br label %9, !dbg !931, !psr.id !933

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 12, metadata !929, metadata !DIExpression()), !dbg !915, !psr.id !934
  br label %9, !dbg !935, !psr.id !936

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 14, metadata !929, metadata !DIExpression()), !dbg !915, !psr.id !937
  br label %9, !dbg !938, !psr.id !939

8:                                                ; preds = %3
  br label %106, !dbg !940, !psr.id !941

9:                                                ; preds = %7, %6, %5
  %.07 = phi i32 [ 14, %7 ], [ 12, %6 ], [ 10, %5 ], !dbg !942, !psr.id !943
  call void @llvm.dbg.value(metadata i32 %.07, metadata !929, metadata !DIExpression()), !dbg !915, !psr.id !944
  %10 = lshr i64 %2, 2, !dbg !945, !psr.id !946
  %11 = trunc i64 %10 to i32, !dbg !947, !psr.id !948
  call void @llvm.dbg.value(metadata i32 %11, metadata !949, metadata !DIExpression()), !dbg !915, !psr.id !950
  %12 = add i32 %.07, 1, !dbg !951, !psr.id !952
  %13 = shl i32 %12, 2, !dbg !953, !psr.id !954
  call void @llvm.dbg.value(metadata i32 %13, metadata !955, metadata !DIExpression()), !dbg !915, !psr.id !956
  call void @llvm.dbg.value(metadata i32 0, metadata !957, metadata !DIExpression()), !dbg !915, !psr.id !958
  call void @llvm.dbg.value(metadata i32 0, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !960
  br label %14, !dbg !961, !psr.id !963

14:                                               ; preds = %29, %9
  %.08 = phi i32 [ 0, %9 ], [ %30, %29 ], !dbg !964, !psr.id !965
  %.01 = phi i32 [ 0, %9 ], [ %20, %29 ], !dbg !915, !psr.id !966, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %.01, metadata !957, metadata !DIExpression()), !dbg !915, !psr.id !967
  call void @llvm.dbg.value(metadata i32 %.08, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !968
  %15 = icmp slt i32 %.08, %11, !dbg !969, !psr.id !971
  br i1 %15, label %16, label %31, !dbg !972, !psr.id !973

16:                                               ; preds = %14
  %17 = shl i32 %.08, 2, !dbg !974, !psr.id !976
  %18 = sext i32 %17 to i64, !dbg !977, !psr.id !978
  %19 = getelementptr inbounds i8, i8* %1, i64 %18, !dbg !977, !psr.id !979, !PointTainted !980
  %20 = call i32 @br_dec32le(i8* %19), !dbg !981, !psr.id !982, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %20, metadata !957, metadata !DIExpression()), !dbg !915, !psr.id !983
  %21 = shl i32 %.08, 1, !dbg !984, !psr.id !985
  %22 = add nsw i32 %21, 0, !dbg !986, !psr.id !987
  %23 = sext i32 %22 to i64, !dbg !988, !psr.id !989
  %24 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %23, !dbg !988, !psr.id !990, !PointTainted !980
  store i32 %20, i32* %24, align 4, !dbg !991, !psr.id !992
  %25 = shl i32 %.08, 1, !dbg !993, !psr.id !994
  %26 = add nsw i32 %25, 1, !dbg !995, !psr.id !996
  %27 = sext i32 %26 to i64, !dbg !997, !psr.id !998
  %28 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %27, !dbg !997, !psr.id !999, !PointTainted !980
  store i32 %20, i32* %28, align 4, !dbg !1000, !psr.id !1001
  br label %29, !dbg !1002, !psr.id !1003

29:                                               ; preds = %16
  %30 = add nsw i32 %.08, 1, !dbg !1004, !psr.id !1005
  call void @llvm.dbg.value(metadata i32 %30, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !1006
  br label %14, !dbg !1007, !llvm.loop !1008, !psr.id !1011

31:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 %11, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !1012
  call void @llvm.dbg.value(metadata i32 0, metadata !1013, metadata !DIExpression()), !dbg !915, !psr.id !1014
  call void @llvm.dbg.value(metadata i32 0, metadata !1015, metadata !DIExpression()), !dbg !915, !psr.id !1016
  br label %32, !dbg !1017, !psr.id !1019

32:                                               ; preds = %73, %31
  %.19 = phi i32 [ %11, %31 ], [ %74, %73 ], !dbg !1020, !psr.id !1021
  %.04 = phi i32 [ 0, %31 ], [ %.15, %73 ], !dbg !1020, !psr.id !1022
  %.02 = phi i32 [ 0, %31 ], [ %.13, %73 ], !dbg !1020, !psr.id !1023
  %.1 = phi i32 [ %.01, %31 ], [ %59, %73 ], !dbg !915, !psr.id !1024, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %.1, metadata !957, metadata !DIExpression()), !dbg !915, !psr.id !1025
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1015, metadata !DIExpression()), !dbg !915, !psr.id !1026
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1013, metadata !DIExpression()), !dbg !915, !psr.id !1027
  call void @llvm.dbg.value(metadata i32 %.19, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !1028
  %33 = icmp slt i32 %.19, %13, !dbg !1029, !psr.id !1031
  br i1 %33, label %34, label %75, !dbg !1032, !psr.id !1033

34:                                               ; preds = %32
  %35 = icmp eq i32 %.04, 0, !dbg !1034, !psr.id !1037
  br i1 %35, label %36, label %46, !dbg !1038, !psr.id !1039

36:                                               ; preds = %34
  %37 = shl i32 %.1, 24, !dbg !1040, !psr.id !1042, !ValueTainted !47
  %38 = lshr i32 %.1, 8, !dbg !1043, !psr.id !1044, !ValueTainted !47
  %39 = or i32 %37, %38, !dbg !1045, !psr.id !1046, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %39, metadata !957, metadata !DIExpression()), !dbg !915, !psr.id !1047
  %40 = call i32 @sub_word(i32 %39), !dbg !1048, !psr.id !1049, !ValueTainted !47
  %41 = sext i32 %.02 to i64, !dbg !1050, !psr.id !1051
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* @Rcon, i64 0, i64 %41, !dbg !1050, !psr.id !1052
  %43 = load i8, i8* %42, align 1, !dbg !1050, !psr.id !1053
  %44 = zext i8 %43 to i32, !dbg !1050, !psr.id !1054
  %45 = xor i32 %40, %44, !dbg !1055, !psr.id !1056, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %45, metadata !957, metadata !DIExpression()), !dbg !915, !psr.id !1057
  br label %53, !dbg !1058, !psr.id !1059

46:                                               ; preds = %34
  %47 = icmp sgt i32 %11, 6, !dbg !1060, !psr.id !1062
  br i1 %47, label %48, label %52, !dbg !1063, !psr.id !1064

48:                                               ; preds = %46
  %49 = icmp eq i32 %.04, 4, !dbg !1065, !psr.id !1066
  br i1 %49, label %50, label %52, !dbg !1067, !psr.id !1068

50:                                               ; preds = %48
  %51 = call i32 @sub_word(i32 %.1), !dbg !1069, !psr.id !1071, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %51, metadata !957, metadata !DIExpression()), !dbg !915, !psr.id !1072
  br label %52, !dbg !1073, !psr.id !1074

52:                                               ; preds = %50, %48, %46
  %.2 = phi i32 [ %51, %50 ], [ %.1, %48 ], [ %.1, %46 ], !dbg !915, !psr.id !1075, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %.2, metadata !957, metadata !DIExpression()), !dbg !915, !psr.id !1076
  br label %53, !psr.id !1077

53:                                               ; preds = %52, %36
  %.3 = phi i32 [ %45, %36 ], [ %.2, %52 ], !dbg !1078, !psr.id !1079, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %.3, metadata !957, metadata !DIExpression()), !dbg !915, !psr.id !1080
  %54 = sub nsw i32 %.19, %11, !dbg !1081, !psr.id !1082
  %55 = shl i32 %54, 1, !dbg !1083, !psr.id !1084
  %56 = sext i32 %55 to i64, !dbg !1085, !psr.id !1086
  %57 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %56, !dbg !1085, !psr.id !1087
  %58 = load i32, i32* %57, align 4, !dbg !1085, !psr.id !1088, !ValueTainted !47
  %59 = xor i32 %.3, %58, !dbg !1089, !psr.id !1090, !ValueTainted !47
  call void @llvm.dbg.value(metadata i32 %59, metadata !957, metadata !DIExpression()), !dbg !915, !psr.id !1091
  %60 = shl i32 %.19, 1, !dbg !1092, !psr.id !1093
  %61 = add nsw i32 %60, 0, !dbg !1094, !psr.id !1095
  %62 = sext i32 %61 to i64, !dbg !1096, !psr.id !1097
  %63 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %62, !dbg !1096, !psr.id !1098, !PointTainted !980
  store i32 %59, i32* %63, align 4, !dbg !1099, !psr.id !1100
  %64 = shl i32 %.19, 1, !dbg !1101, !psr.id !1102
  %65 = add nsw i32 %64, 1, !dbg !1103, !psr.id !1104
  %66 = sext i32 %65 to i64, !dbg !1105, !psr.id !1106
  %67 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %66, !dbg !1105, !psr.id !1107, !PointTainted !980
  store i32 %59, i32* %67, align 4, !dbg !1108, !psr.id !1109
  %68 = add nsw i32 %.04, 1, !dbg !1110, !psr.id !1112
  call void @llvm.dbg.value(metadata i32 %68, metadata !1013, metadata !DIExpression()), !dbg !915, !psr.id !1113
  %69 = icmp eq i32 %68, %11, !dbg !1114, !psr.id !1115
  br i1 %69, label %70, label %72, !dbg !1116, !psr.id !1117

70:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !1013, metadata !DIExpression()), !dbg !915, !psr.id !1118
  %71 = add nsw i32 %.02, 1, !dbg !1119, !psr.id !1121
  call void @llvm.dbg.value(metadata i32 %71, metadata !1015, metadata !DIExpression()), !dbg !915, !psr.id !1122
  br label %72, !dbg !1123, !psr.id !1124

72:                                               ; preds = %70, %53
  %.15 = phi i32 [ 0, %70 ], [ %68, %53 ], !dbg !1125, !psr.id !1126
  %.13 = phi i32 [ %71, %70 ], [ %.02, %53 ], !dbg !1020, !psr.id !1127
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1015, metadata !DIExpression()), !dbg !915, !psr.id !1128
  call void @llvm.dbg.value(metadata i32 %.15, metadata !1013, metadata !DIExpression()), !dbg !915, !psr.id !1129
  br label %73, !dbg !1130, !psr.id !1131

73:                                               ; preds = %72
  %74 = add nsw i32 %.19, 1, !dbg !1132, !psr.id !1133
  call void @llvm.dbg.value(metadata i32 %74, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !1134
  br label %32, !dbg !1135, !llvm.loop !1136, !psr.id !1138

75:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 0, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !1139
  br label %76, !dbg !1140, !psr.id !1142

76:                                               ; preds = %83, %75
  %.210 = phi i32 [ 0, %75 ], [ %84, %83 ], !dbg !1143, !psr.id !1144
  call void @llvm.dbg.value(metadata i32 %.210, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !1145
  %77 = icmp slt i32 %.210, %13, !dbg !1146, !psr.id !1148
  br i1 %77, label %78, label %85, !dbg !1149, !psr.id !1150

78:                                               ; preds = %76
  %79 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 0, !dbg !1151, !psr.id !1153
  %80 = shl i32 %.210, 1, !dbg !1154, !psr.id !1155
  %81 = sext i32 %80 to i64, !dbg !1156, !psr.id !1157
  %82 = getelementptr inbounds i32, i32* %79, i64 %81, !dbg !1156, !psr.id !1158
  call void @br_aes_ct_ortho(i32* %82), !dbg !1159, !psr.id !1160
  br label %83, !dbg !1161, !psr.id !1162

83:                                               ; preds = %78
  %84 = add nsw i32 %.210, 4, !dbg !1163, !psr.id !1164
  call void @llvm.dbg.value(metadata i32 %84, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !1165
  br label %76, !dbg !1166, !llvm.loop !1167, !psr.id !1169

85:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i32 0, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !1170
  call void @llvm.dbg.value(metadata i32 0, metadata !1013, metadata !DIExpression()), !dbg !915, !psr.id !1171
  br label %86, !dbg !1172, !psr.id !1174

86:                                               ; preds = %102, %85
  %.311 = phi i32 [ 0, %85 ], [ %103, %102 ], !dbg !1175, !psr.id !1176
  %.26 = phi i32 [ 0, %85 ], [ %104, %102 ], !dbg !1175, !psr.id !1177
  call void @llvm.dbg.value(metadata i32 %.26, metadata !1013, metadata !DIExpression()), !dbg !915, !psr.id !1178
  call void @llvm.dbg.value(metadata i32 %.311, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !1179
  %87 = icmp slt i32 %.311, %13, !dbg !1180, !psr.id !1182
  br i1 %87, label %88, label %105, !dbg !1183, !psr.id !1184

88:                                               ; preds = %86
  %89 = add nsw i32 %.26, 0, !dbg !1185, !psr.id !1187
  %90 = sext i32 %89 to i64, !dbg !1188, !psr.id !1189
  %91 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %90, !dbg !1188, !psr.id !1190
  %92 = load i32, i32* %91, align 4, !dbg !1188, !psr.id !1191, !ValueTainted !47
  %93 = and i32 %92, 1431655765, !dbg !1192, !psr.id !1193, !ValueTainted !47
  %94 = add nsw i32 %.26, 1, !dbg !1194, !psr.id !1195
  %95 = sext i32 %94 to i64, !dbg !1196, !psr.id !1197
  %96 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %95, !dbg !1196, !psr.id !1198
  %97 = load i32, i32* %96, align 4, !dbg !1196, !psr.id !1199, !ValueTainted !47
  %98 = and i32 %97, -1431655766, !dbg !1200, !psr.id !1201, !ValueTainted !47
  %99 = or i32 %93, %98, !dbg !1202, !psr.id !1203, !ValueTainted !47
  %100 = sext i32 %.311 to i64, !dbg !1204, !psr.id !1205
  %101 = getelementptr inbounds i32, i32* %0, i64 %100, !dbg !1204, !psr.id !1206, !PointTainted !980
  store i32 %99, i32* %101, align 4, !dbg !1207, !psr.id !1208
  br label %102, !dbg !1209, !psr.id !1210

102:                                              ; preds = %88
  %103 = add nsw i32 %.311, 1, !dbg !1211, !psr.id !1212
  call void @llvm.dbg.value(metadata i32 %103, metadata !959, metadata !DIExpression()), !dbg !915, !psr.id !1213
  %104 = add nsw i32 %.26, 2, !dbg !1214, !psr.id !1215
  call void @llvm.dbg.value(metadata i32 %104, metadata !1013, metadata !DIExpression()), !dbg !915, !psr.id !1216
  br label %86, !dbg !1217, !llvm.loop !1218, !psr.id !1220

105:                                              ; preds = %86
  br label %106, !dbg !1221, !psr.id !1222

106:                                              ; preds = %105, %8
  %.0 = phi i32 [ 0, %8 ], [ %.07, %105 ], !dbg !915, !psr.id !1223
  ret i32 %.0, !dbg !1224, !psr.id !1225
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* %0) #0 !dbg !1226 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1229, metadata !DIExpression()), !dbg !1230, !psr.id !1231
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1232, !psr.id !1233, !PointTainted !980
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !1234, !psr.id !1235, !PointTainted !980
  %4 = load i32, i32* %3, align 4, !dbg !1234, !psr.id !1236, !ValueTainted !47
  ret i32 %4, !dbg !1237, !psr.id !1238
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sub_word(i32 %0) #0 !dbg !1239 {
  %2 = alloca [8 x i32], align 16, !psr.id !1242
  call void @llvm.dbg.value(metadata i32 %0, metadata !1243, metadata !DIExpression()), !dbg !1244, !psr.id !1245
  call void @llvm.dbg.declare(metadata [8 x i32]* %2, metadata !1246, metadata !DIExpression()), !dbg !1250, !psr.id !1251
  call void @llvm.dbg.value(metadata i32 0, metadata !1252, metadata !DIExpression()), !dbg !1244, !psr.id !1253
  br label %3, !dbg !1254, !psr.id !1256

3:                                                ; preds = %8, %1
  %.0 = phi i32 [ 0, %1 ], [ %9, %8 ], !dbg !1257, !psr.id !1258
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1252, metadata !DIExpression()), !dbg !1244, !psr.id !1259
  %4 = icmp slt i32 %.0, 8, !dbg !1260, !psr.id !1262
  br i1 %4, label %5, label %10, !dbg !1263, !psr.id !1264

5:                                                ; preds = %3
  %6 = sext i32 %.0 to i64, !dbg !1265, !psr.id !1267
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %6, !dbg !1265, !psr.id !1268, !PointTainted !980
  store i32 %0, i32* %7, align 4, !dbg !1269, !psr.id !1270
  br label %8, !dbg !1271, !psr.id !1272

8:                                                ; preds = %5
  %9 = add nsw i32 %.0, 1, !dbg !1273, !psr.id !1274
  call void @llvm.dbg.value(metadata i32 %9, metadata !1252, metadata !DIExpression()), !dbg !1244, !psr.id !1275
  br label %3, !dbg !1276, !llvm.loop !1277, !psr.id !1279

10:                                               ; preds = %3
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !1280, !psr.id !1281
  call void @br_aes_ct_ortho(i32* %11), !dbg !1282, !psr.id !1283
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !1284, !psr.id !1285
  call void @br_aes_ct_bitslice_Sbox(i32* %12), !dbg !1286, !psr.id !1287
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !1288, !psr.id !1289
  call void @br_aes_ct_ortho(i32* %13), !dbg !1290, !psr.id !1291
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !1292, !psr.id !1293
  %15 = load i32, i32* %14, align 16, !dbg !1292, !psr.id !1294, !ValueTainted !47
  ret i32 %15, !dbg !1295, !psr.id !1296
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct_skey_expand(i32* %0, i32 %1, i32* %2) #0 !dbg !1297 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1302, metadata !DIExpression()), !dbg !1303, !psr.id !1304
  call void @llvm.dbg.value(metadata i32 %1, metadata !1305, metadata !DIExpression()), !dbg !1303, !psr.id !1306
  call void @llvm.dbg.value(metadata i32* %2, metadata !1307, metadata !DIExpression()), !dbg !1303, !psr.id !1308
  %4 = add i32 %1, 1, !dbg !1309, !psr.id !1310
  %5 = shl i32 %4, 2, !dbg !1311, !psr.id !1312
  call void @llvm.dbg.value(metadata i32 %5, metadata !1313, metadata !DIExpression()), !dbg !1303, !psr.id !1314
  call void @llvm.dbg.value(metadata i32 0, metadata !1315, metadata !DIExpression()), !dbg !1303, !psr.id !1316
  call void @llvm.dbg.value(metadata i32 0, metadata !1317, metadata !DIExpression()), !dbg !1303, !psr.id !1318
  br label %6, !dbg !1319, !psr.id !1321

6:                                                ; preds = %24, %3
  %.01 = phi i32 [ 0, %3 ], [ %25, %24 ], !dbg !1322, !psr.id !1323
  %.0 = phi i32 [ 0, %3 ], [ %26, %24 ], !dbg !1322, !psr.id !1324
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1317, metadata !DIExpression()), !dbg !1303, !psr.id !1325
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1315, metadata !DIExpression()), !dbg !1303, !psr.id !1326
  %7 = icmp ult i32 %.01, %5, !dbg !1327, !psr.id !1329
  br i1 %7, label %8, label %27, !dbg !1330, !psr.id !1331

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64, !dbg !1332, !psr.id !1334
  %10 = getelementptr inbounds i32, i32* %2, i64 %9, !dbg !1332, !psr.id !1335
  %11 = load i32, i32* %10, align 4, !dbg !1332, !psr.id !1336
  call void @llvm.dbg.value(metadata i32 %11, metadata !1337, metadata !DIExpression()), !dbg !1338, !psr.id !1339
  call void @llvm.dbg.value(metadata i32 %11, metadata !1340, metadata !DIExpression()), !dbg !1338, !psr.id !1341
  %12 = and i32 %11, 1431655765, !dbg !1342, !psr.id !1343
  call void @llvm.dbg.value(metadata i32 %12, metadata !1340, metadata !DIExpression()), !dbg !1338, !psr.id !1344
  %13 = shl i32 %12, 1, !dbg !1345, !psr.id !1346
  %14 = or i32 %12, %13, !dbg !1347, !psr.id !1348
  %15 = add i32 %.0, 0, !dbg !1349, !psr.id !1350
  %16 = zext i32 %15 to i64, !dbg !1351, !psr.id !1352
  %17 = getelementptr inbounds i32, i32* %0, i64 %16, !dbg !1351, !psr.id !1353
  store i32 %14, i32* %17, align 4, !dbg !1354, !psr.id !1355
  %18 = and i32 %11, -1431655766, !dbg !1356, !psr.id !1357
  call void @llvm.dbg.value(metadata i32 %18, metadata !1337, metadata !DIExpression()), !dbg !1338, !psr.id !1358
  %19 = lshr i32 %18, 1, !dbg !1359, !psr.id !1360
  %20 = or i32 %18, %19, !dbg !1361, !psr.id !1362
  %21 = add i32 %.0, 1, !dbg !1363, !psr.id !1364
  %22 = zext i32 %21 to i64, !dbg !1365, !psr.id !1366
  %23 = getelementptr inbounds i32, i32* %0, i64 %22, !dbg !1365, !psr.id !1367
  store i32 %20, i32* %23, align 4, !dbg !1368, !psr.id !1369
  br label %24, !dbg !1370, !psr.id !1371

24:                                               ; preds = %8
  %25 = add i32 %.01, 1, !dbg !1372, !psr.id !1373
  call void @llvm.dbg.value(metadata i32 %25, metadata !1315, metadata !DIExpression()), !dbg !1303, !psr.id !1374
  %26 = add i32 %.0, 2, !dbg !1375, !psr.id !1376
  call void @llvm.dbg.value(metadata i32 %26, metadata !1317, metadata !DIExpression()), !dbg !1303, !psr.id !1377
  br label %6, !dbg !1378, !llvm.loop !1379, !psr.id !1381

27:                                               ; preds = %6
  ret void, !dbg !1382, !psr.id !1383
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_sched_wrapper(i32* %0, i8* %1, i64 %2) #0 !dbg !1384 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1387, metadata !DIExpression()), !dbg !1388, !psr.id !1389
  call void @llvm.dbg.value(metadata i8* %1, metadata !1390, metadata !DIExpression()), !dbg !1388, !psr.id !1391
  call void @llvm.dbg.value(metadata i64 %2, metadata !1392, metadata !DIExpression()), !dbg !1388, !psr.id !1393
  %4 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %0), !dbg !1394, !psr.id !1395
  call void @public_in(%struct.smack_value* %4), !dbg !1396, !psr.id !1397
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1398, !psr.id !1399
  call void @public_in(%struct.smack_value* %5), !dbg !1400, !psr.id !1401
  %6 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !1402, !psr.id !1403
  call void @public_in(%struct.smack_value* %6), !dbg !1404, !psr.id !1405
  %7 = call i32 @br_aes_ct_keysched(i32* %0, i8* %1, i64 %2), !dbg !1406, !psr.id !1407
  ret void, !dbg !1408, !psr.id !1409
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_sched_wrapper_t() #0 !dbg !1410 {
  %1 = call i64 (...) @getuns(), !dbg !1413, !psr.id !1414
  call void @llvm.dbg.value(metadata i64 %1, metadata !1415, metadata !DIExpression()), !dbg !1416, !psr.id !1417
  %2 = call i32* (...) @getpt(), !dbg !1418, !psr.id !1419
  call void @llvm.dbg.value(metadata i32* %2, metadata !1420, metadata !DIExpression()), !dbg !1416, !psr.id !1421
  call void @llvm.dbg.value(metadata i8* bitcast (i8* (...)* @getkey to i8*), metadata !1422, metadata !DIExpression()), !dbg !1416, !psr.id !1423
  %3 = call i32 @br_aes_ct_keysched(i32* %2, i8* bitcast (i8* (...)* @getkey to i8*), i64 %1), !dbg !1424, !psr.id !1425
  ret void, !dbg !1426, !psr.id !1427
}

declare dso_local i64 @getuns(...) #2

declare dso_local i32* @getpt(...) #2

declare dso_local i8* @getkey(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @key_sched_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2, !31}
!llvm.ident = !{!33, !33}
!llvm.module.flags = !{!34, !35, !36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Rcon", scope: !2, file: !3, line: 236, type: !27, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/aes_ct.c", directory: "/home/luwei/bech-back/BearSSL/AES_ct")
!4 = !{}
!5 = !{!6, !11, !12, !15}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u32", file: !18, line: 480, baseType: !19)
!18 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/AES_ct")
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !18, line: 477, size: 32, elements: !20)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !19, file: !18, line: 478, baseType: !6, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !19, file: !18, line: 479, baseType: !23, size: 32)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 4)
!26 = !{!0}
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 80, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 10)
!30 = !{!"0"}
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!32 = !DIFile(filename: "key_sched.c", directory: "/home/luwei/bech-back/BearSSL/AES_ct")
!33 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!34 = !{i32 7, !"Dwarf Version", i32 4}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 4}
!37 = distinct !DISubprogram(name: "br_aes_ct_bitslice_Sbox", scope: !3, file: !3, line: 29, type: !38, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!41 = !DILocalVariable(name: "q", arg: 1, scope: !37, file: !3, line: 29, type: !40)
!42 = !DILocation(line: 0, scope: !37)
!43 = !{!"1"}
!44 = !DILocation(line: 56, column: 7, scope: !37)
!45 = !{!"2"}
!46 = !{!"3"}
!47 = !{!"ValueTainted"}
!48 = !DILocalVariable(name: "x0", scope: !37, file: !3, line: 41, type: !6)
!49 = !{!"4"}
!50 = !DILocation(line: 57, column: 7, scope: !37)
!51 = !{!"5"}
!52 = !{!"6"}
!53 = !DILocalVariable(name: "x1", scope: !37, file: !3, line: 41, type: !6)
!54 = !{!"7"}
!55 = !DILocation(line: 58, column: 7, scope: !37)
!56 = !{!"8"}
!57 = !{!"9"}
!58 = !DILocalVariable(name: "x2", scope: !37, file: !3, line: 41, type: !6)
!59 = !{!"10"}
!60 = !DILocation(line: 59, column: 7, scope: !37)
!61 = !{!"11"}
!62 = !{!"12"}
!63 = !DILocalVariable(name: "x3", scope: !37, file: !3, line: 41, type: !6)
!64 = !{!"13"}
!65 = !DILocation(line: 60, column: 7, scope: !37)
!66 = !{!"14"}
!67 = !{!"15"}
!68 = !DILocalVariable(name: "x4", scope: !37, file: !3, line: 41, type: !6)
!69 = !{!"16"}
!70 = !DILocation(line: 61, column: 7, scope: !37)
!71 = !{!"17"}
!72 = !{!"18"}
!73 = !DILocalVariable(name: "x5", scope: !37, file: !3, line: 41, type: !6)
!74 = !{!"19"}
!75 = !DILocation(line: 62, column: 7, scope: !37)
!76 = !{!"20"}
!77 = !{!"21"}
!78 = !DILocalVariable(name: "x6", scope: !37, file: !3, line: 41, type: !6)
!79 = !{!"22"}
!80 = !DILocation(line: 63, column: 7, scope: !37)
!81 = !{!"23"}
!82 = !{!"24"}
!83 = !DILocalVariable(name: "x7", scope: !37, file: !3, line: 41, type: !6)
!84 = !{!"25"}
!85 = !DILocation(line: 68, column: 11, scope: !37)
!86 = !{!"26"}
!87 = !DILocalVariable(name: "y14", scope: !37, file: !3, line: 43, type: !6)
!88 = !{!"27"}
!89 = !DILocation(line: 69, column: 11, scope: !37)
!90 = !{!"28"}
!91 = !DILocalVariable(name: "y13", scope: !37, file: !3, line: 43, type: !6)
!92 = !{!"29"}
!93 = !DILocation(line: 70, column: 10, scope: !37)
!94 = !{!"30"}
!95 = !DILocalVariable(name: "y9", scope: !37, file: !3, line: 42, type: !6)
!96 = !{!"31"}
!97 = !DILocation(line: 71, column: 10, scope: !37)
!98 = !{!"32"}
!99 = !DILocalVariable(name: "y8", scope: !37, file: !3, line: 42, type: !6)
!100 = !{!"33"}
!101 = !DILocation(line: 72, column: 10, scope: !37)
!102 = !{!"34"}
!103 = !DILocalVariable(name: "t0", scope: !37, file: !3, line: 47, type: !6)
!104 = !{!"35"}
!105 = !DILocation(line: 73, column: 10, scope: !37)
!106 = !{!"36"}
!107 = !DILocalVariable(name: "y1", scope: !37, file: !3, line: 42, type: !6)
!108 = !{!"37"}
!109 = !DILocation(line: 74, column: 10, scope: !37)
!110 = !{!"38"}
!111 = !DILocalVariable(name: "y4", scope: !37, file: !3, line: 42, type: !6)
!112 = !{!"39"}
!113 = !DILocation(line: 75, column: 12, scope: !37)
!114 = !{!"40"}
!115 = !DILocalVariable(name: "y12", scope: !37, file: !3, line: 43, type: !6)
!116 = !{!"41"}
!117 = !DILocation(line: 76, column: 10, scope: !37)
!118 = !{!"42"}
!119 = !DILocalVariable(name: "y2", scope: !37, file: !3, line: 42, type: !6)
!120 = !{!"43"}
!121 = !DILocation(line: 77, column: 10, scope: !37)
!122 = !{!"44"}
!123 = !DILocalVariable(name: "y5", scope: !37, file: !3, line: 42, type: !6)
!124 = !{!"45"}
!125 = !DILocation(line: 78, column: 10, scope: !37)
!126 = !{!"46"}
!127 = !DILocalVariable(name: "y3", scope: !37, file: !3, line: 42, type: !6)
!128 = !{!"47"}
!129 = !DILocation(line: 79, column: 10, scope: !37)
!130 = !{!"48"}
!131 = !DILocalVariable(name: "t1", scope: !37, file: !3, line: 47, type: !6)
!132 = !{!"49"}
!133 = !DILocation(line: 80, column: 11, scope: !37)
!134 = !{!"50"}
!135 = !DILocalVariable(name: "y15", scope: !37, file: !3, line: 43, type: !6)
!136 = !{!"51"}
!137 = !DILocation(line: 81, column: 11, scope: !37)
!138 = !{!"52"}
!139 = !DILocalVariable(name: "y20", scope: !37, file: !3, line: 44, type: !6)
!140 = !{!"53"}
!141 = !DILocation(line: 82, column: 11, scope: !37)
!142 = !{!"54"}
!143 = !DILocalVariable(name: "y6", scope: !37, file: !3, line: 42, type: !6)
!144 = !{!"55"}
!145 = !DILocation(line: 83, column: 12, scope: !37)
!146 = !{!"56"}
!147 = !DILocalVariable(name: "y10", scope: !37, file: !3, line: 43, type: !6)
!148 = !{!"57"}
!149 = !DILocation(line: 84, column: 12, scope: !37)
!150 = !{!"58"}
!151 = !DILocalVariable(name: "y11", scope: !37, file: !3, line: 43, type: !6)
!152 = !{!"59"}
!153 = !DILocation(line: 85, column: 10, scope: !37)
!154 = !{!"60"}
!155 = !DILocalVariable(name: "y7", scope: !37, file: !3, line: 42, type: !6)
!156 = !{!"61"}
!157 = !DILocation(line: 86, column: 12, scope: !37)
!158 = !{!"62"}
!159 = !DILocalVariable(name: "y17", scope: !37, file: !3, line: 43, type: !6)
!160 = !{!"63"}
!161 = !DILocation(line: 87, column: 12, scope: !37)
!162 = !{!"64"}
!163 = !DILocalVariable(name: "y19", scope: !37, file: !3, line: 43, type: !6)
!164 = !{!"65"}
!165 = !DILocation(line: 88, column: 11, scope: !37)
!166 = !{!"66"}
!167 = !DILocalVariable(name: "y16", scope: !37, file: !3, line: 43, type: !6)
!168 = !{!"67"}
!169 = !DILocation(line: 89, column: 12, scope: !37)
!170 = !{!"68"}
!171 = !DILocalVariable(name: "y21", scope: !37, file: !3, line: 44, type: !6)
!172 = !{!"69"}
!173 = !DILocation(line: 90, column: 11, scope: !37)
!174 = !{!"70"}
!175 = !DILocalVariable(name: "y18", scope: !37, file: !3, line: 43, type: !6)
!176 = !{!"71"}
!177 = !DILocation(line: 95, column: 11, scope: !37)
!178 = !{!"72"}
!179 = !DILocalVariable(name: "t2", scope: !37, file: !3, line: 47, type: !6)
!180 = !{!"73"}
!181 = !DILocation(line: 96, column: 10, scope: !37)
!182 = !{!"74"}
!183 = !DILocalVariable(name: "t3", scope: !37, file: !3, line: 47, type: !6)
!184 = !{!"75"}
!185 = !DILocation(line: 97, column: 10, scope: !37)
!186 = !{!"76"}
!187 = !DILocalVariable(name: "t4", scope: !37, file: !3, line: 47, type: !6)
!188 = !{!"77"}
!189 = !DILocation(line: 98, column: 10, scope: !37)
!190 = !{!"78"}
!191 = !DILocalVariable(name: "t5", scope: !37, file: !3, line: 47, type: !6)
!192 = !{!"79"}
!193 = !DILocation(line: 99, column: 10, scope: !37)
!194 = !{!"80"}
!195 = !DILocalVariable(name: "t6", scope: !37, file: !3, line: 47, type: !6)
!196 = !{!"81"}
!197 = !DILocation(line: 100, column: 11, scope: !37)
!198 = !{!"82"}
!199 = !DILocalVariable(name: "t7", scope: !37, file: !3, line: 47, type: !6)
!200 = !{!"83"}
!201 = !DILocation(line: 101, column: 10, scope: !37)
!202 = !{!"84"}
!203 = !DILocalVariable(name: "t8", scope: !37, file: !3, line: 47, type: !6)
!204 = !{!"85"}
!205 = !DILocation(line: 102, column: 10, scope: !37)
!206 = !{!"86"}
!207 = !DILocalVariable(name: "t9", scope: !37, file: !3, line: 47, type: !6)
!208 = !{!"87"}
!209 = !DILocation(line: 103, column: 11, scope: !37)
!210 = !{!"88"}
!211 = !DILocalVariable(name: "t10", scope: !37, file: !3, line: 48, type: !6)
!212 = !{!"89"}
!213 = !DILocation(line: 104, column: 12, scope: !37)
!214 = !{!"90"}
!215 = !DILocalVariable(name: "t11", scope: !37, file: !3, line: 48, type: !6)
!216 = !{!"91"}
!217 = !DILocation(line: 105, column: 11, scope: !37)
!218 = !{!"92"}
!219 = !DILocalVariable(name: "t12", scope: !37, file: !3, line: 48, type: !6)
!220 = !{!"93"}
!221 = !DILocation(line: 106, column: 12, scope: !37)
!222 = !{!"94"}
!223 = !DILocalVariable(name: "t13", scope: !37, file: !3, line: 48, type: !6)
!224 = !{!"95"}
!225 = !DILocation(line: 107, column: 12, scope: !37)
!226 = !{!"96"}
!227 = !DILocalVariable(name: "t14", scope: !37, file: !3, line: 48, type: !6)
!228 = !{!"97"}
!229 = !DILocation(line: 108, column: 11, scope: !37)
!230 = !{!"98"}
!231 = !DILocalVariable(name: "t15", scope: !37, file: !3, line: 48, type: !6)
!232 = !{!"99"}
!233 = !DILocation(line: 109, column: 12, scope: !37)
!234 = !{!"100"}
!235 = !DILocalVariable(name: "t16", scope: !37, file: !3, line: 48, type: !6)
!236 = !{!"101"}
!237 = !DILocation(line: 110, column: 11, scope: !37)
!238 = !{!"102"}
!239 = !DILocalVariable(name: "t17", scope: !37, file: !3, line: 48, type: !6)
!240 = !{!"103"}
!241 = !DILocation(line: 111, column: 11, scope: !37)
!242 = !{!"104"}
!243 = !DILocalVariable(name: "t18", scope: !37, file: !3, line: 48, type: !6)
!244 = !{!"105"}
!245 = !DILocation(line: 112, column: 11, scope: !37)
!246 = !{!"106"}
!247 = !DILocalVariable(name: "t19", scope: !37, file: !3, line: 48, type: !6)
!248 = !{!"107"}
!249 = !DILocation(line: 113, column: 12, scope: !37)
!250 = !{!"108"}
!251 = !DILocalVariable(name: "t20", scope: !37, file: !3, line: 49, type: !6)
!252 = !{!"109"}
!253 = !DILocation(line: 114, column: 12, scope: !37)
!254 = !{!"110"}
!255 = !DILocalVariable(name: "t21", scope: !37, file: !3, line: 49, type: !6)
!256 = !{!"111"}
!257 = !DILocation(line: 115, column: 12, scope: !37)
!258 = !{!"112"}
!259 = !DILocalVariable(name: "t22", scope: !37, file: !3, line: 49, type: !6)
!260 = !{!"113"}
!261 = !DILocation(line: 116, column: 12, scope: !37)
!262 = !{!"114"}
!263 = !DILocalVariable(name: "t23", scope: !37, file: !3, line: 49, type: !6)
!264 = !{!"115"}
!265 = !DILocation(line: 117, column: 12, scope: !37)
!266 = !{!"116"}
!267 = !DILocalVariable(name: "t24", scope: !37, file: !3, line: 49, type: !6)
!268 = !{!"117"}
!269 = !DILocation(line: 119, column: 12, scope: !37)
!270 = !{!"118"}
!271 = !DILocalVariable(name: "t25", scope: !37, file: !3, line: 49, type: !6)
!272 = !{!"119"}
!273 = !DILocation(line: 120, column: 12, scope: !37)
!274 = !{!"120"}
!275 = !DILocalVariable(name: "t26", scope: !37, file: !3, line: 49, type: !6)
!276 = !{!"121"}
!277 = !DILocation(line: 121, column: 12, scope: !37)
!278 = !{!"122"}
!279 = !DILocalVariable(name: "t27", scope: !37, file: !3, line: 49, type: !6)
!280 = !{!"123"}
!281 = !DILocation(line: 122, column: 12, scope: !37)
!282 = !{!"124"}
!283 = !DILocalVariable(name: "t28", scope: !37, file: !3, line: 49, type: !6)
!284 = !{!"125"}
!285 = !DILocation(line: 123, column: 12, scope: !37)
!286 = !{!"126"}
!287 = !DILocalVariable(name: "t29", scope: !37, file: !3, line: 49, type: !6)
!288 = !{!"127"}
!289 = !DILocation(line: 124, column: 12, scope: !37)
!290 = !{!"128"}
!291 = !DILocalVariable(name: "t30", scope: !37, file: !3, line: 50, type: !6)
!292 = !{!"129"}
!293 = !DILocation(line: 125, column: 12, scope: !37)
!294 = !{!"130"}
!295 = !DILocalVariable(name: "t31", scope: !37, file: !3, line: 50, type: !6)
!296 = !{!"131"}
!297 = !DILocation(line: 126, column: 12, scope: !37)
!298 = !{!"132"}
!299 = !DILocalVariable(name: "t32", scope: !37, file: !3, line: 50, type: !6)
!300 = !{!"133"}
!301 = !DILocation(line: 127, column: 12, scope: !37)
!302 = !{!"134"}
!303 = !DILocalVariable(name: "t33", scope: !37, file: !3, line: 50, type: !6)
!304 = !{!"135"}
!305 = !DILocation(line: 128, column: 12, scope: !37)
!306 = !{!"136"}
!307 = !DILocalVariable(name: "t34", scope: !37, file: !3, line: 50, type: !6)
!308 = !{!"137"}
!309 = !DILocation(line: 129, column: 12, scope: !37)
!310 = !{!"138"}
!311 = !DILocalVariable(name: "t35", scope: !37, file: !3, line: 50, type: !6)
!312 = !{!"139"}
!313 = !DILocation(line: 130, column: 12, scope: !37)
!314 = !{!"140"}
!315 = !DILocalVariable(name: "t36", scope: !37, file: !3, line: 50, type: !6)
!316 = !{!"141"}
!317 = !DILocation(line: 131, column: 12, scope: !37)
!318 = !{!"142"}
!319 = !DILocalVariable(name: "t37", scope: !37, file: !3, line: 50, type: !6)
!320 = !{!"143"}
!321 = !DILocation(line: 132, column: 12, scope: !37)
!322 = !{!"144"}
!323 = !DILocalVariable(name: "t38", scope: !37, file: !3, line: 50, type: !6)
!324 = !{!"145"}
!325 = !DILocation(line: 133, column: 12, scope: !37)
!326 = !{!"146"}
!327 = !DILocalVariable(name: "t39", scope: !37, file: !3, line: 50, type: !6)
!328 = !{!"147"}
!329 = !DILocation(line: 134, column: 12, scope: !37)
!330 = !{!"148"}
!331 = !DILocalVariable(name: "t40", scope: !37, file: !3, line: 51, type: !6)
!332 = !{!"149"}
!333 = !DILocation(line: 136, column: 12, scope: !37)
!334 = !{!"150"}
!335 = !DILocalVariable(name: "t41", scope: !37, file: !3, line: 51, type: !6)
!336 = !{!"151"}
!337 = !DILocation(line: 137, column: 12, scope: !37)
!338 = !{!"152"}
!339 = !DILocalVariable(name: "t42", scope: !37, file: !3, line: 51, type: !6)
!340 = !{!"153"}
!341 = !DILocation(line: 138, column: 12, scope: !37)
!342 = !{!"154"}
!343 = !DILocalVariable(name: "t43", scope: !37, file: !3, line: 51, type: !6)
!344 = !{!"155"}
!345 = !DILocation(line: 139, column: 12, scope: !37)
!346 = !{!"156"}
!347 = !DILocalVariable(name: "t44", scope: !37, file: !3, line: 51, type: !6)
!348 = !{!"157"}
!349 = !DILocation(line: 140, column: 12, scope: !37)
!350 = !{!"158"}
!351 = !DILocalVariable(name: "t45", scope: !37, file: !3, line: 51, type: !6)
!352 = !{!"159"}
!353 = !DILocation(line: 141, column: 11, scope: !37)
!354 = !{!"160"}
!355 = !DILocalVariable(name: "z0", scope: !37, file: !3, line: 45, type: !6)
!356 = !{!"161"}
!357 = !DILocation(line: 142, column: 11, scope: !37)
!358 = !{!"162"}
!359 = !DILocalVariable(name: "z1", scope: !37, file: !3, line: 45, type: !6)
!360 = !{!"163"}
!361 = !DILocation(line: 143, column: 11, scope: !37)
!362 = !{!"164"}
!363 = !DILocalVariable(name: "z2", scope: !37, file: !3, line: 45, type: !6)
!364 = !{!"165"}
!365 = !DILocation(line: 144, column: 11, scope: !37)
!366 = !{!"166"}
!367 = !DILocalVariable(name: "z3", scope: !37, file: !3, line: 45, type: !6)
!368 = !{!"167"}
!369 = !DILocation(line: 145, column: 11, scope: !37)
!370 = !{!"168"}
!371 = !DILocalVariable(name: "z4", scope: !37, file: !3, line: 45, type: !6)
!372 = !{!"169"}
!373 = !DILocation(line: 146, column: 11, scope: !37)
!374 = !{!"170"}
!375 = !DILocalVariable(name: "z5", scope: !37, file: !3, line: 45, type: !6)
!376 = !{!"171"}
!377 = !DILocation(line: 147, column: 11, scope: !37)
!378 = !{!"172"}
!379 = !DILocalVariable(name: "z6", scope: !37, file: !3, line: 45, type: !6)
!380 = !{!"173"}
!381 = !DILocation(line: 148, column: 11, scope: !37)
!382 = !{!"174"}
!383 = !DILocalVariable(name: "z7", scope: !37, file: !3, line: 45, type: !6)
!384 = !{!"175"}
!385 = !DILocation(line: 149, column: 11, scope: !37)
!386 = !{!"176"}
!387 = !DILocalVariable(name: "z8", scope: !37, file: !3, line: 45, type: !6)
!388 = !{!"177"}
!389 = !DILocation(line: 150, column: 11, scope: !37)
!390 = !{!"178"}
!391 = !DILocalVariable(name: "z9", scope: !37, file: !3, line: 45, type: !6)
!392 = !{!"179"}
!393 = !DILocation(line: 151, column: 12, scope: !37)
!394 = !{!"180"}
!395 = !DILocalVariable(name: "z10", scope: !37, file: !3, line: 46, type: !6)
!396 = !{!"181"}
!397 = !DILocation(line: 152, column: 12, scope: !37)
!398 = !{!"182"}
!399 = !DILocalVariable(name: "z11", scope: !37, file: !3, line: 46, type: !6)
!400 = !{!"183"}
!401 = !DILocation(line: 153, column: 12, scope: !37)
!402 = !{!"184"}
!403 = !DILocalVariable(name: "z12", scope: !37, file: !3, line: 46, type: !6)
!404 = !{!"185"}
!405 = !DILocation(line: 154, column: 12, scope: !37)
!406 = !{!"186"}
!407 = !DILocalVariable(name: "z13", scope: !37, file: !3, line: 46, type: !6)
!408 = !{!"187"}
!409 = !DILocation(line: 155, column: 12, scope: !37)
!410 = !{!"188"}
!411 = !DILocalVariable(name: "z14", scope: !37, file: !3, line: 46, type: !6)
!412 = !{!"189"}
!413 = !DILocation(line: 156, column: 12, scope: !37)
!414 = !{!"190"}
!415 = !DILocalVariable(name: "z15", scope: !37, file: !3, line: 46, type: !6)
!416 = !{!"191"}
!417 = !DILocation(line: 157, column: 12, scope: !37)
!418 = !{!"192"}
!419 = !DILocalVariable(name: "z16", scope: !37, file: !3, line: 46, type: !6)
!420 = !{!"193"}
!421 = !DILocation(line: 158, column: 12, scope: !37)
!422 = !{!"194"}
!423 = !DILocalVariable(name: "z17", scope: !37, file: !3, line: 46, type: !6)
!424 = !{!"195"}
!425 = !DILocation(line: 163, column: 12, scope: !37)
!426 = !{!"196"}
!427 = !DILocalVariable(name: "t46", scope: !37, file: !3, line: 51, type: !6)
!428 = !{!"197"}
!429 = !DILocation(line: 164, column: 12, scope: !37)
!430 = !{!"198"}
!431 = !DILocalVariable(name: "t47", scope: !37, file: !3, line: 51, type: !6)
!432 = !{!"199"}
!433 = !DILocation(line: 165, column: 11, scope: !37)
!434 = !{!"200"}
!435 = !DILocalVariable(name: "t48", scope: !37, file: !3, line: 51, type: !6)
!436 = !{!"201"}
!437 = !DILocation(line: 166, column: 11, scope: !37)
!438 = !{!"202"}
!439 = !DILocalVariable(name: "t49", scope: !37, file: !3, line: 51, type: !6)
!440 = !{!"203"}
!441 = !DILocation(line: 167, column: 11, scope: !37)
!442 = !{!"204"}
!443 = !DILocalVariable(name: "t50", scope: !37, file: !3, line: 52, type: !6)
!444 = !{!"205"}
!445 = !DILocation(line: 168, column: 11, scope: !37)
!446 = !{!"206"}
!447 = !DILocalVariable(name: "t51", scope: !37, file: !3, line: 52, type: !6)
!448 = !{!"207"}
!449 = !DILocation(line: 169, column: 11, scope: !37)
!450 = !{!"208"}
!451 = !DILocalVariable(name: "t52", scope: !37, file: !3, line: 52, type: !6)
!452 = !{!"209"}
!453 = !DILocation(line: 170, column: 11, scope: !37)
!454 = !{!"210"}
!455 = !DILocalVariable(name: "t53", scope: !37, file: !3, line: 52, type: !6)
!456 = !{!"211"}
!457 = !DILocation(line: 171, column: 11, scope: !37)
!458 = !{!"212"}
!459 = !DILocalVariable(name: "t54", scope: !37, file: !3, line: 52, type: !6)
!460 = !{!"213"}
!461 = !DILocation(line: 172, column: 12, scope: !37)
!462 = !{!"214"}
!463 = !DILocalVariable(name: "t55", scope: !37, file: !3, line: 52, type: !6)
!464 = !{!"215"}
!465 = !DILocation(line: 173, column: 12, scope: !37)
!466 = !{!"216"}
!467 = !DILocalVariable(name: "t56", scope: !37, file: !3, line: 52, type: !6)
!468 = !{!"217"}
!469 = !DILocation(line: 174, column: 12, scope: !37)
!470 = !{!"218"}
!471 = !DILocalVariable(name: "t57", scope: !37, file: !3, line: 52, type: !6)
!472 = !{!"219"}
!473 = !DILocation(line: 175, column: 11, scope: !37)
!474 = !{!"220"}
!475 = !DILocalVariable(name: "t58", scope: !37, file: !3, line: 52, type: !6)
!476 = !{!"221"}
!477 = !DILocation(line: 176, column: 11, scope: !37)
!478 = !{!"222"}
!479 = !DILocalVariable(name: "t59", scope: !37, file: !3, line: 52, type: !6)
!480 = !{!"223"}
!481 = !DILocation(line: 177, column: 12, scope: !37)
!482 = !{!"224"}
!483 = !DILocalVariable(name: "t60", scope: !37, file: !3, line: 53, type: !6)
!484 = !{!"225"}
!485 = !DILocation(line: 178, column: 12, scope: !37)
!486 = !{!"226"}
!487 = !DILocalVariable(name: "t61", scope: !37, file: !3, line: 53, type: !6)
!488 = !{!"227"}
!489 = !DILocation(line: 179, column: 12, scope: !37)
!490 = !{!"228"}
!491 = !DILocalVariable(name: "t62", scope: !37, file: !3, line: 53, type: !6)
!492 = !{!"229"}
!493 = !DILocation(line: 180, column: 12, scope: !37)
!494 = !{!"230"}
!495 = !DILocalVariable(name: "t63", scope: !37, file: !3, line: 53, type: !6)
!496 = !{!"231"}
!497 = !DILocation(line: 181, column: 11, scope: !37)
!498 = !{!"232"}
!499 = !DILocalVariable(name: "t64", scope: !37, file: !3, line: 53, type: !6)
!500 = !{!"233"}
!501 = !DILocation(line: 182, column: 12, scope: !37)
!502 = !{!"234"}
!503 = !DILocalVariable(name: "t65", scope: !37, file: !3, line: 53, type: !6)
!504 = !{!"235"}
!505 = !DILocation(line: 183, column: 11, scope: !37)
!506 = !{!"236"}
!507 = !DILocalVariable(name: "t66", scope: !37, file: !3, line: 53, type: !6)
!508 = !{!"237"}
!509 = !DILocation(line: 184, column: 11, scope: !37)
!510 = !{!"238"}
!511 = !DILocalVariable(name: "s0", scope: !37, file: !3, line: 54, type: !6)
!512 = !{!"239"}
!513 = !DILocation(line: 185, column: 13, scope: !37)
!514 = !{!"240"}
!515 = !DILocation(line: 185, column: 11, scope: !37)
!516 = !{!"241"}
!517 = !DILocalVariable(name: "s6", scope: !37, file: !3, line: 54, type: !6)
!518 = !{!"242"}
!519 = !DILocation(line: 186, column: 13, scope: !37)
!520 = !{!"243"}
!521 = !DILocation(line: 186, column: 11, scope: !37)
!522 = !{!"244"}
!523 = !DILocalVariable(name: "s7", scope: !37, file: !3, line: 54, type: !6)
!524 = !{!"245"}
!525 = !DILocation(line: 187, column: 12, scope: !37)
!526 = !{!"246"}
!527 = !DILocalVariable(name: "t67", scope: !37, file: !3, line: 53, type: !6)
!528 = !{!"247"}
!529 = !DILocation(line: 188, column: 11, scope: !37)
!530 = !{!"248"}
!531 = !DILocalVariable(name: "s3", scope: !37, file: !3, line: 54, type: !6)
!532 = !{!"249"}
!533 = !DILocation(line: 189, column: 11, scope: !37)
!534 = !{!"250"}
!535 = !DILocalVariable(name: "s4", scope: !37, file: !3, line: 54, type: !6)
!536 = !{!"251"}
!537 = !DILocation(line: 190, column: 11, scope: !37)
!538 = !{!"252"}
!539 = !DILocalVariable(name: "s5", scope: !37, file: !3, line: 54, type: !6)
!540 = !{!"253"}
!541 = !DILocation(line: 191, column: 13, scope: !37)
!542 = !{!"254"}
!543 = !DILocation(line: 191, column: 11, scope: !37)
!544 = !{!"255"}
!545 = !DILocalVariable(name: "s1", scope: !37, file: !3, line: 54, type: !6)
!546 = !{!"256"}
!547 = !DILocation(line: 192, column: 13, scope: !37)
!548 = !{!"257"}
!549 = !DILocation(line: 192, column: 11, scope: !37)
!550 = !{!"258"}
!551 = !DILocalVariable(name: "s2", scope: !37, file: !3, line: 54, type: !6)
!552 = !{!"259"}
!553 = !DILocation(line: 194, column: 2, scope: !37)
!554 = !{!"260"}
!555 = !DILocation(line: 194, column: 7, scope: !37)
!556 = !{!"261"}
!557 = !DILocation(line: 195, column: 2, scope: !37)
!558 = !{!"262"}
!559 = !DILocation(line: 195, column: 7, scope: !37)
!560 = !{!"263"}
!561 = !DILocation(line: 196, column: 2, scope: !37)
!562 = !{!"264"}
!563 = !DILocation(line: 196, column: 7, scope: !37)
!564 = !{!"265"}
!565 = !DILocation(line: 197, column: 2, scope: !37)
!566 = !{!"266"}
!567 = !DILocation(line: 197, column: 7, scope: !37)
!568 = !{!"267"}
!569 = !DILocation(line: 198, column: 2, scope: !37)
!570 = !{!"268"}
!571 = !DILocation(line: 198, column: 7, scope: !37)
!572 = !{!"269"}
!573 = !DILocation(line: 199, column: 2, scope: !37)
!574 = !{!"270"}
!575 = !DILocation(line: 199, column: 7, scope: !37)
!576 = !{!"271"}
!577 = !DILocation(line: 200, column: 2, scope: !37)
!578 = !{!"272"}
!579 = !DILocation(line: 200, column: 7, scope: !37)
!580 = !{!"273"}
!581 = !DILocation(line: 201, column: 2, scope: !37)
!582 = !{!"274"}
!583 = !DILocation(line: 201, column: 7, scope: !37)
!584 = !{!"275"}
!585 = !DILocation(line: 202, column: 1, scope: !37)
!586 = !{!"276"}
!587 = distinct !DISubprogram(name: "br_aes_ct_ortho", scope: !3, file: !3, line: 206, type: !38, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!588 = !DILocalVariable(name: "q", arg: 1, scope: !587, file: !3, line: 206, type: !40)
!589 = !DILocation(line: 0, scope: !587)
!590 = !{!"277"}
!591 = !DILocation(line: 220, column: 2, scope: !587)
!592 = !{!"278"}
!593 = !DILocation(line: 220, column: 2, scope: !594)
!594 = distinct !DILexicalBlock(scope: !587, file: !3, line: 220, column: 2)
!595 = !{!"279"}
!596 = !{!"280"}
!597 = !DILocalVariable(name: "a", scope: !594, file: !3, line: 220, type: !6)
!598 = !DILocation(line: 0, scope: !594)
!599 = !{!"281"}
!600 = !{!"282"}
!601 = !{!"283"}
!602 = !DILocalVariable(name: "b", scope: !594, file: !3, line: 220, type: !6)
!603 = !{!"284"}
!604 = !{!"285"}
!605 = !{!"286"}
!606 = !{!"287"}
!607 = !{!"288"}
!608 = !{!"289"}
!609 = !{!"290"}
!610 = !{!"291"}
!611 = !{!"292"}
!612 = !{!"293"}
!613 = !{!"294"}
!614 = !{!"295"}
!615 = !{!"296"}
!616 = !{!"297"}
!617 = !DILocation(line: 221, column: 2, scope: !587)
!618 = !{!"298"}
!619 = !DILocation(line: 221, column: 2, scope: !620)
!620 = distinct !DILexicalBlock(scope: !587, file: !3, line: 221, column: 2)
!621 = !{!"299"}
!622 = !{!"300"}
!623 = !DILocalVariable(name: "a", scope: !620, file: !3, line: 221, type: !6)
!624 = !DILocation(line: 0, scope: !620)
!625 = !{!"301"}
!626 = !{!"302"}
!627 = !{!"303"}
!628 = !DILocalVariable(name: "b", scope: !620, file: !3, line: 221, type: !6)
!629 = !{!"304"}
!630 = !{!"305"}
!631 = !{!"306"}
!632 = !{!"307"}
!633 = !{!"308"}
!634 = !{!"309"}
!635 = !{!"310"}
!636 = !{!"311"}
!637 = !{!"312"}
!638 = !{!"313"}
!639 = !{!"314"}
!640 = !{!"315"}
!641 = !{!"316"}
!642 = !{!"317"}
!643 = !DILocation(line: 222, column: 2, scope: !587)
!644 = !{!"318"}
!645 = !DILocation(line: 222, column: 2, scope: !646)
!646 = distinct !DILexicalBlock(scope: !587, file: !3, line: 222, column: 2)
!647 = !{!"319"}
!648 = !{!"320"}
!649 = !DILocalVariable(name: "a", scope: !646, file: !3, line: 222, type: !6)
!650 = !DILocation(line: 0, scope: !646)
!651 = !{!"321"}
!652 = !{!"322"}
!653 = !{!"323"}
!654 = !DILocalVariable(name: "b", scope: !646, file: !3, line: 222, type: !6)
!655 = !{!"324"}
!656 = !{!"325"}
!657 = !{!"326"}
!658 = !{!"327"}
!659 = !{!"328"}
!660 = !{!"329"}
!661 = !{!"330"}
!662 = !{!"331"}
!663 = !{!"332"}
!664 = !{!"333"}
!665 = !{!"334"}
!666 = !{!"335"}
!667 = !{!"336"}
!668 = !{!"337"}
!669 = !DILocation(line: 223, column: 2, scope: !587)
!670 = !{!"338"}
!671 = !DILocation(line: 223, column: 2, scope: !672)
!672 = distinct !DILexicalBlock(scope: !587, file: !3, line: 223, column: 2)
!673 = !{!"339"}
!674 = !{!"340"}
!675 = !DILocalVariable(name: "a", scope: !672, file: !3, line: 223, type: !6)
!676 = !DILocation(line: 0, scope: !672)
!677 = !{!"341"}
!678 = !{!"342"}
!679 = !{!"343"}
!680 = !DILocalVariable(name: "b", scope: !672, file: !3, line: 223, type: !6)
!681 = !{!"344"}
!682 = !{!"345"}
!683 = !{!"346"}
!684 = !{!"347"}
!685 = !{!"348"}
!686 = !{!"349"}
!687 = !{!"350"}
!688 = !{!"351"}
!689 = !{!"352"}
!690 = !{!"353"}
!691 = !{!"354"}
!692 = !{!"355"}
!693 = !{!"356"}
!694 = !{!"357"}
!695 = !DILocation(line: 225, column: 2, scope: !587)
!696 = !{!"358"}
!697 = !DILocation(line: 225, column: 2, scope: !698)
!698 = distinct !DILexicalBlock(scope: !587, file: !3, line: 225, column: 2)
!699 = !{!"359"}
!700 = !{!"360"}
!701 = !DILocalVariable(name: "a", scope: !698, file: !3, line: 225, type: !6)
!702 = !DILocation(line: 0, scope: !698)
!703 = !{!"361"}
!704 = !{!"362"}
!705 = !{!"363"}
!706 = !DILocalVariable(name: "b", scope: !698, file: !3, line: 225, type: !6)
!707 = !{!"364"}
!708 = !{!"365"}
!709 = !{!"366"}
!710 = !{!"367"}
!711 = !{!"368"}
!712 = !{!"369"}
!713 = !{!"370"}
!714 = !{!"371"}
!715 = !{!"372"}
!716 = !{!"373"}
!717 = !{!"374"}
!718 = !{!"375"}
!719 = !{!"376"}
!720 = !{!"377"}
!721 = !DILocation(line: 226, column: 2, scope: !587)
!722 = !{!"378"}
!723 = !DILocation(line: 226, column: 2, scope: !724)
!724 = distinct !DILexicalBlock(scope: !587, file: !3, line: 226, column: 2)
!725 = !{!"379"}
!726 = !{!"380"}
!727 = !DILocalVariable(name: "a", scope: !724, file: !3, line: 226, type: !6)
!728 = !DILocation(line: 0, scope: !724)
!729 = !{!"381"}
!730 = !{!"382"}
!731 = !{!"383"}
!732 = !DILocalVariable(name: "b", scope: !724, file: !3, line: 226, type: !6)
!733 = !{!"384"}
!734 = !{!"385"}
!735 = !{!"386"}
!736 = !{!"387"}
!737 = !{!"388"}
!738 = !{!"389"}
!739 = !{!"390"}
!740 = !{!"391"}
!741 = !{!"392"}
!742 = !{!"393"}
!743 = !{!"394"}
!744 = !{!"395"}
!745 = !{!"396"}
!746 = !{!"397"}
!747 = !DILocation(line: 227, column: 2, scope: !587)
!748 = !{!"398"}
!749 = !DILocation(line: 227, column: 2, scope: !750)
!750 = distinct !DILexicalBlock(scope: !587, file: !3, line: 227, column: 2)
!751 = !{!"399"}
!752 = !{!"400"}
!753 = !DILocalVariable(name: "a", scope: !750, file: !3, line: 227, type: !6)
!754 = !DILocation(line: 0, scope: !750)
!755 = !{!"401"}
!756 = !{!"402"}
!757 = !{!"403"}
!758 = !DILocalVariable(name: "b", scope: !750, file: !3, line: 227, type: !6)
!759 = !{!"404"}
!760 = !{!"405"}
!761 = !{!"406"}
!762 = !{!"407"}
!763 = !{!"408"}
!764 = !{!"409"}
!765 = !{!"410"}
!766 = !{!"411"}
!767 = !{!"412"}
!768 = !{!"413"}
!769 = !{!"414"}
!770 = !{!"415"}
!771 = !{!"416"}
!772 = !{!"417"}
!773 = !DILocation(line: 228, column: 2, scope: !587)
!774 = !{!"418"}
!775 = !DILocation(line: 228, column: 2, scope: !776)
!776 = distinct !DILexicalBlock(scope: !587, file: !3, line: 228, column: 2)
!777 = !{!"419"}
!778 = !{!"420"}
!779 = !DILocalVariable(name: "a", scope: !776, file: !3, line: 228, type: !6)
!780 = !DILocation(line: 0, scope: !776)
!781 = !{!"421"}
!782 = !{!"422"}
!783 = !{!"423"}
!784 = !DILocalVariable(name: "b", scope: !776, file: !3, line: 228, type: !6)
!785 = !{!"424"}
!786 = !{!"425"}
!787 = !{!"426"}
!788 = !{!"427"}
!789 = !{!"428"}
!790 = !{!"429"}
!791 = !{!"430"}
!792 = !{!"431"}
!793 = !{!"432"}
!794 = !{!"433"}
!795 = !{!"434"}
!796 = !{!"435"}
!797 = !{!"436"}
!798 = !{!"437"}
!799 = !DILocation(line: 230, column: 2, scope: !587)
!800 = !{!"438"}
!801 = !DILocation(line: 230, column: 2, scope: !802)
!802 = distinct !DILexicalBlock(scope: !587, file: !3, line: 230, column: 2)
!803 = !{!"439"}
!804 = !{!"440"}
!805 = !DILocalVariable(name: "a", scope: !802, file: !3, line: 230, type: !6)
!806 = !DILocation(line: 0, scope: !802)
!807 = !{!"441"}
!808 = !{!"442"}
!809 = !{!"443"}
!810 = !DILocalVariable(name: "b", scope: !802, file: !3, line: 230, type: !6)
!811 = !{!"444"}
!812 = !{!"445"}
!813 = !{!"446"}
!814 = !{!"447"}
!815 = !{!"448"}
!816 = !{!"449"}
!817 = !{!"450"}
!818 = !{!"451"}
!819 = !{!"452"}
!820 = !{!"453"}
!821 = !{!"454"}
!822 = !{!"455"}
!823 = !{!"456"}
!824 = !{!"457"}
!825 = !DILocation(line: 231, column: 2, scope: !587)
!826 = !{!"458"}
!827 = !DILocation(line: 231, column: 2, scope: !828)
!828 = distinct !DILexicalBlock(scope: !587, file: !3, line: 231, column: 2)
!829 = !{!"459"}
!830 = !{!"460"}
!831 = !DILocalVariable(name: "a", scope: !828, file: !3, line: 231, type: !6)
!832 = !DILocation(line: 0, scope: !828)
!833 = !{!"461"}
!834 = !{!"462"}
!835 = !{!"463"}
!836 = !DILocalVariable(name: "b", scope: !828, file: !3, line: 231, type: !6)
!837 = !{!"464"}
!838 = !{!"465"}
!839 = !{!"466"}
!840 = !{!"467"}
!841 = !{!"468"}
!842 = !{!"469"}
!843 = !{!"470"}
!844 = !{!"471"}
!845 = !{!"472"}
!846 = !{!"473"}
!847 = !{!"474"}
!848 = !{!"475"}
!849 = !{!"476"}
!850 = !{!"477"}
!851 = !DILocation(line: 232, column: 2, scope: !587)
!852 = !{!"478"}
!853 = !DILocation(line: 232, column: 2, scope: !854)
!854 = distinct !DILexicalBlock(scope: !587, file: !3, line: 232, column: 2)
!855 = !{!"479"}
!856 = !{!"480"}
!857 = !DILocalVariable(name: "a", scope: !854, file: !3, line: 232, type: !6)
!858 = !DILocation(line: 0, scope: !854)
!859 = !{!"481"}
!860 = !{!"482"}
!861 = !{!"483"}
!862 = !DILocalVariable(name: "b", scope: !854, file: !3, line: 232, type: !6)
!863 = !{!"484"}
!864 = !{!"485"}
!865 = !{!"486"}
!866 = !{!"487"}
!867 = !{!"488"}
!868 = !{!"489"}
!869 = !{!"490"}
!870 = !{!"491"}
!871 = !{!"492"}
!872 = !{!"493"}
!873 = !{!"494"}
!874 = !{!"495"}
!875 = !{!"496"}
!876 = !{!"497"}
!877 = !DILocation(line: 233, column: 2, scope: !587)
!878 = !{!"498"}
!879 = !DILocation(line: 233, column: 2, scope: !880)
!880 = distinct !DILexicalBlock(scope: !587, file: !3, line: 233, column: 2)
!881 = !{!"499"}
!882 = !{!"500"}
!883 = !DILocalVariable(name: "a", scope: !880, file: !3, line: 233, type: !6)
!884 = !DILocation(line: 0, scope: !880)
!885 = !{!"501"}
!886 = !{!"502"}
!887 = !{!"503"}
!888 = !DILocalVariable(name: "b", scope: !880, file: !3, line: 233, type: !6)
!889 = !{!"504"}
!890 = !{!"505"}
!891 = !{!"506"}
!892 = !{!"507"}
!893 = !{!"508"}
!894 = !{!"509"}
!895 = !{!"510"}
!896 = !{!"511"}
!897 = !{!"512"}
!898 = !{!"513"}
!899 = !{!"514"}
!900 = !{!"515"}
!901 = !{!"516"}
!902 = !{!"517"}
!903 = !DILocation(line: 234, column: 1, scope: !587)
!904 = !{!"518"}
!905 = distinct !DISubprogram(name: "br_aes_ct_keysched", scope: !3, file: !3, line: 257, type: !906, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!906 = !DISubroutineType(types: !907)
!907 = !{!10, !40, !908, !910}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !911, line: 46, baseType: !912)
!911 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!912 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!913 = !{!"519"}
!914 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !905, file: !3, line: 257, type: !40)
!915 = !DILocation(line: 0, scope: !905)
!916 = !{!"520"}
!917 = !DILocalVariable(name: "key", arg: 2, scope: !905, file: !3, line: 257, type: !908)
!918 = !{!"521"}
!919 = !DILocalVariable(name: "key_len", arg: 3, scope: !905, file: !3, line: 257, type: !910)
!920 = !{!"522"}
!921 = !DILocalVariable(name: "skey", scope: !905, file: !3, line: 262, type: !922)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3840, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 120)
!925 = !DILocation(line: 262, column: 11, scope: !905)
!926 = !{!"523"}
!927 = !DILocation(line: 264, column: 2, scope: !905)
!928 = !{!"524"}
!929 = !DILocalVariable(name: "num_rounds", scope: !905, file: !3, line: 259, type: !10)
!930 = !{!"525"}
!931 = !DILocation(line: 267, column: 3, scope: !932)
!932 = distinct !DILexicalBlock(scope: !905, file: !3, line: 264, column: 19)
!933 = !{!"526"}
!934 = !{!"527"}
!935 = !DILocation(line: 270, column: 3, scope: !932)
!936 = !{!"528"}
!937 = !{!"529"}
!938 = !DILocation(line: 273, column: 3, scope: !932)
!939 = !{!"530"}
!940 = !DILocation(line: 276, column: 3, scope: !932)
!941 = !{!"531"}
!942 = !DILocation(line: 0, scope: !932)
!943 = !{!"532"}
!944 = !{!"533"}
!945 = !DILocation(line: 278, column: 21, scope: !905)
!946 = !{!"534"}
!947 = !DILocation(line: 278, column: 7, scope: !905)
!948 = !{!"535"}
!949 = !DILocalVariable(name: "nk", scope: !905, file: !3, line: 260, type: !11)
!950 = !{!"536"}
!951 = !DILocation(line: 279, column: 26, scope: !905)
!952 = !{!"537"}
!953 = !DILocation(line: 279, column: 31, scope: !905)
!954 = !{!"538"}
!955 = !DILocalVariable(name: "nkf", scope: !905, file: !3, line: 260, type: !11)
!956 = !{!"539"}
!957 = !DILocalVariable(name: "tmp", scope: !905, file: !3, line: 261, type: !6)
!958 = !{!"540"}
!959 = !DILocalVariable(name: "i", scope: !905, file: !3, line: 260, type: !11)
!960 = !{!"541"}
!961 = !DILocation(line: 281, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !905, file: !3, line: 281, column: 2)
!963 = !{!"542"}
!964 = !DILocation(line: 0, scope: !962)
!965 = !{!"543"}
!966 = !{!"544"}
!967 = !{!"545"}
!968 = !{!"546"}
!969 = !DILocation(line: 281, column: 16, scope: !970)
!970 = distinct !DILexicalBlock(scope: !962, file: !3, line: 281, column: 2)
!971 = !{!"547"}
!972 = !DILocation(line: 281, column: 2, scope: !962)
!973 = !{!"548"}
!974 = !DILocation(line: 282, column: 52, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !3, line: 281, column: 28)
!976 = !{!"549"}
!977 = !DILocation(line: 282, column: 47, scope: !975)
!978 = !{!"550"}
!979 = !{!"551"}
!980 = !{!"PointTainted"}
!981 = !DILocation(line: 282, column: 9, scope: !975)
!982 = !{!"552"}
!983 = !{!"553"}
!984 = !DILocation(line: 283, column: 11, scope: !975)
!985 = !{!"554"}
!986 = !DILocation(line: 283, column: 17, scope: !975)
!987 = !{!"555"}
!988 = !DILocation(line: 283, column: 3, scope: !975)
!989 = !{!"556"}
!990 = !{!"557"}
!991 = !DILocation(line: 283, column: 22, scope: !975)
!992 = !{!"558"}
!993 = !DILocation(line: 284, column: 11, scope: !975)
!994 = !{!"559"}
!995 = !DILocation(line: 284, column: 17, scope: !975)
!996 = !{!"560"}
!997 = !DILocation(line: 284, column: 3, scope: !975)
!998 = !{!"561"}
!999 = !{!"562"}
!1000 = !DILocation(line: 284, column: 22, scope: !975)
!1001 = !{!"563"}
!1002 = !DILocation(line: 285, column: 2, scope: !975)
!1003 = !{!"564"}
!1004 = !DILocation(line: 281, column: 24, scope: !970)
!1005 = !{!"565"}
!1006 = !{!"566"}
!1007 = !DILocation(line: 281, column: 2, scope: !970)
!1008 = distinct !{!1008, !972, !1009, !1010}
!1009 = !DILocation(line: 285, column: 2, scope: !962)
!1010 = !{!"llvm.loop.mustprogress"}
!1011 = !{!"567"}
!1012 = !{!"568"}
!1013 = !DILocalVariable(name: "j", scope: !905, file: !3, line: 260, type: !11)
!1014 = !{!"569"}
!1015 = !DILocalVariable(name: "k", scope: !905, file: !3, line: 260, type: !11)
!1016 = !{!"570"}
!1017 = !DILocation(line: 286, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !905, file: !3, line: 286, column: 2)
!1019 = !{!"571"}
!1020 = !DILocation(line: 0, scope: !1018)
!1021 = !{!"572"}
!1022 = !{!"573"}
!1023 = !{!"574"}
!1024 = !{!"575"}
!1025 = !{!"576"}
!1026 = !{!"577"}
!1027 = !{!"578"}
!1028 = !{!"579"}
!1029 = !DILocation(line: 286, column: 31, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 286, column: 2)
!1031 = !{!"580"}
!1032 = !DILocation(line: 286, column: 2, scope: !1018)
!1033 = !{!"581"}
!1034 = !DILocation(line: 287, column: 9, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 287, column: 7)
!1036 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 286, column: 44)
!1037 = !{!"582"}
!1038 = !DILocation(line: 287, column: 7, scope: !1036)
!1039 = !{!"583"}
!1040 = !DILocation(line: 288, column: 15, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 287, column: 15)
!1042 = !{!"584"}
!1043 = !DILocation(line: 288, column: 29, scope: !1041)
!1044 = !{!"585"}
!1045 = !DILocation(line: 288, column: 22, scope: !1041)
!1046 = !{!"586"}
!1047 = !{!"587"}
!1048 = !DILocation(line: 289, column: 10, scope: !1041)
!1049 = !{!"588"}
!1050 = !DILocation(line: 289, column: 26, scope: !1041)
!1051 = !{!"589"}
!1052 = !{!"590"}
!1053 = !{!"591"}
!1054 = !{!"592"}
!1055 = !DILocation(line: 289, column: 24, scope: !1041)
!1056 = !{!"593"}
!1057 = !{!"594"}
!1058 = !DILocation(line: 290, column: 3, scope: !1041)
!1059 = !{!"595"}
!1060 = !DILocation(line: 290, column: 17, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 290, column: 14)
!1062 = !{!"596"}
!1063 = !DILocation(line: 290, column: 21, scope: !1061)
!1064 = !{!"597"}
!1065 = !DILocation(line: 290, column: 26, scope: !1061)
!1066 = !{!"598"}
!1067 = !DILocation(line: 290, column: 14, scope: !1035)
!1068 = !{!"599"}
!1069 = !DILocation(line: 291, column: 10, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 290, column: 32)
!1071 = !{!"600"}
!1072 = !{!"601"}
!1073 = !DILocation(line: 292, column: 3, scope: !1070)
!1074 = !{!"602"}
!1075 = !{!"603"}
!1076 = !{!"604"}
!1077 = !{!"605"}
!1078 = !DILocation(line: 0, scope: !1035)
!1079 = !{!"606"}
!1080 = !{!"607"}
!1081 = !DILocation(line: 293, column: 18, scope: !1036)
!1082 = !{!"608"}
!1083 = !DILocation(line: 293, column: 24, scope: !1036)
!1084 = !{!"609"}
!1085 = !DILocation(line: 293, column: 10, scope: !1036)
!1086 = !{!"610"}
!1087 = !{!"611"}
!1088 = !{!"612"}
!1089 = !DILocation(line: 293, column: 7, scope: !1036)
!1090 = !{!"613"}
!1091 = !{!"614"}
!1092 = !DILocation(line: 294, column: 11, scope: !1036)
!1093 = !{!"615"}
!1094 = !DILocation(line: 294, column: 17, scope: !1036)
!1095 = !{!"616"}
!1096 = !DILocation(line: 294, column: 3, scope: !1036)
!1097 = !{!"617"}
!1098 = !{!"618"}
!1099 = !DILocation(line: 294, column: 22, scope: !1036)
!1100 = !{!"619"}
!1101 = !DILocation(line: 295, column: 11, scope: !1036)
!1102 = !{!"620"}
!1103 = !DILocation(line: 295, column: 17, scope: !1036)
!1104 = !{!"621"}
!1105 = !DILocation(line: 295, column: 3, scope: !1036)
!1106 = !{!"622"}
!1107 = !{!"623"}
!1108 = !DILocation(line: 295, column: 22, scope: !1036)
!1109 = !{!"624"}
!1110 = !DILocation(line: 296, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 296, column: 7)
!1112 = !{!"625"}
!1113 = !{!"626"}
!1114 = !DILocation(line: 296, column: 12, scope: !1111)
!1115 = !{!"627"}
!1116 = !DILocation(line: 296, column: 7, scope: !1036)
!1117 = !{!"628"}
!1118 = !{!"629"}
!1119 = !DILocation(line: 298, column: 6, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 296, column: 19)
!1121 = !{!"630"}
!1122 = !{!"631"}
!1123 = !DILocation(line: 299, column: 3, scope: !1120)
!1124 = !{!"632"}
!1125 = !DILocation(line: 0, scope: !1111)
!1126 = !{!"633"}
!1127 = !{!"634"}
!1128 = !{!"635"}
!1129 = !{!"636"}
!1130 = !DILocation(line: 300, column: 2, scope: !1036)
!1131 = !{!"637"}
!1132 = !DILocation(line: 286, column: 40, scope: !1030)
!1133 = !{!"638"}
!1134 = !{!"639"}
!1135 = !DILocation(line: 286, column: 2, scope: !1030)
!1136 = distinct !{!1136, !1032, !1137, !1010}
!1137 = !DILocation(line: 300, column: 2, scope: !1018)
!1138 = !{!"640"}
!1139 = !{!"641"}
!1140 = !DILocation(line: 301, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !905, file: !3, line: 301, column: 2)
!1142 = !{!"642"}
!1143 = !DILocation(line: 0, scope: !1141)
!1144 = !{!"643"}
!1145 = !{!"644"}
!1146 = !DILocation(line: 301, column: 16, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 301, column: 2)
!1148 = !{!"645"}
!1149 = !DILocation(line: 301, column: 2, scope: !1141)
!1150 = !{!"646"}
!1151 = !DILocation(line: 302, column: 19, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 301, column: 31)
!1153 = !{!"647"}
!1154 = !DILocation(line: 302, column: 29, scope: !1152)
!1155 = !{!"648"}
!1156 = !DILocation(line: 302, column: 24, scope: !1152)
!1157 = !{!"649"}
!1158 = !{!"650"}
!1159 = !DILocation(line: 302, column: 3, scope: !1152)
!1160 = !{!"651"}
!1161 = !DILocation(line: 303, column: 2, scope: !1152)
!1162 = !{!"652"}
!1163 = !DILocation(line: 301, column: 25, scope: !1147)
!1164 = !{!"653"}
!1165 = !{!"654"}
!1166 = !DILocation(line: 301, column: 2, scope: !1147)
!1167 = distinct !{!1167, !1149, !1168, !1010}
!1168 = !DILocation(line: 303, column: 2, scope: !1141)
!1169 = !{!"655"}
!1170 = !{!"656"}
!1171 = !{!"657"}
!1172 = !DILocation(line: 304, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !905, file: !3, line: 304, column: 2)
!1174 = !{!"658"}
!1175 = !DILocation(line: 0, scope: !1173)
!1176 = !{!"659"}
!1177 = !{!"660"}
!1178 = !{!"661"}
!1179 = !{!"662"}
!1180 = !DILocation(line: 304, column: 23, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 304, column: 2)
!1182 = !{!"663"}
!1183 = !DILocation(line: 304, column: 2, scope: !1173)
!1184 = !{!"664"}
!1185 = !DILocation(line: 305, column: 26, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 304, column: 44)
!1187 = !{!"665"}
!1188 = !DILocation(line: 305, column: 19, scope: !1186)
!1189 = !{!"666"}
!1190 = !{!"667"}
!1191 = !{!"668"}
!1192 = !DILocation(line: 305, column: 31, scope: !1186)
!1193 = !{!"669"}
!1194 = !DILocation(line: 306, column: 14, scope: !1186)
!1195 = !{!"670"}
!1196 = !DILocation(line: 306, column: 7, scope: !1186)
!1197 = !{!"671"}
!1198 = !{!"672"}
!1199 = !{!"673"}
!1200 = !DILocation(line: 306, column: 19, scope: !1186)
!1201 = !{!"674"}
!1202 = !DILocation(line: 306, column: 4, scope: !1186)
!1203 = !{!"675"}
!1204 = !DILocation(line: 305, column: 3, scope: !1186)
!1205 = !{!"676"}
!1206 = !{!"677"}
!1207 = !DILocation(line: 305, column: 16, scope: !1186)
!1208 = !{!"678"}
!1209 = !DILocation(line: 307, column: 2, scope: !1186)
!1210 = !{!"679"}
!1211 = !DILocation(line: 304, column: 32, scope: !1181)
!1212 = !{!"680"}
!1213 = !{!"681"}
!1214 = !DILocation(line: 304, column: 38, scope: !1181)
!1215 = !{!"682"}
!1216 = !{!"683"}
!1217 = !DILocation(line: 304, column: 2, scope: !1181)
!1218 = distinct !{!1218, !1183, !1219, !1010}
!1219 = !DILocation(line: 307, column: 2, scope: !1173)
!1220 = !{!"684"}
!1221 = !DILocation(line: 308, column: 2, scope: !905)
!1222 = !{!"685"}
!1223 = !{!"686"}
!1224 = !DILocation(line: 309, column: 1, scope: !905)
!1225 = !{!"687"}
!1226 = distinct !DISubprogram(name: "br_dec32le", scope: !18, file: !18, line: 574, type: !1227, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!6, !908}
!1229 = !DILocalVariable(name: "src", arg: 1, scope: !1226, file: !18, line: 574, type: !908)
!1230 = !DILocation(line: 0, scope: !1226)
!1231 = !{!"688"}
!1232 = !DILocation(line: 577, column: 10, scope: !1226)
!1233 = !{!"689"}
!1234 = !DILocation(line: 577, column: 38, scope: !1226)
!1235 = !{!"690"}
!1236 = !{!"691"}
!1237 = !DILocation(line: 577, column: 2, scope: !1226)
!1238 = !{!"692"}
!1239 = distinct !DISubprogram(name: "sub_word", scope: !3, file: !3, line: 241, type: !1240, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!6, !6}
!1242 = !{!"693"}
!1243 = !DILocalVariable(name: "x", arg: 1, scope: !1239, file: !3, line: 241, type: !6)
!1244 = !DILocation(line: 0, scope: !1239)
!1245 = !{!"694"}
!1246 = !DILocalVariable(name: "q", scope: !1239, file: !3, line: 243, type: !1247)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 8)
!1250 = !DILocation(line: 243, column: 11, scope: !1239)
!1251 = !{!"695"}
!1252 = !DILocalVariable(name: "i", scope: !1239, file: !3, line: 244, type: !11)
!1253 = !{!"696"}
!1254 = !DILocation(line: 246, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 246, column: 2)
!1256 = !{!"697"}
!1257 = !DILocation(line: 0, scope: !1255)
!1258 = !{!"698"}
!1259 = !{!"699"}
!1260 = !DILocation(line: 246, column: 16, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 246, column: 2)
!1262 = !{!"700"}
!1263 = !DILocation(line: 246, column: 2, scope: !1255)
!1264 = !{!"701"}
!1265 = !DILocation(line: 247, column: 3, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 246, column: 27)
!1267 = !{!"702"}
!1268 = !{!"703"}
!1269 = !DILocation(line: 247, column: 8, scope: !1266)
!1270 = !{!"704"}
!1271 = !DILocation(line: 248, column: 2, scope: !1266)
!1272 = !{!"705"}
!1273 = !DILocation(line: 246, column: 23, scope: !1261)
!1274 = !{!"706"}
!1275 = !{!"707"}
!1276 = !DILocation(line: 246, column: 2, scope: !1261)
!1277 = distinct !{!1277, !1263, !1278, !1010}
!1278 = !DILocation(line: 248, column: 2, scope: !1255)
!1279 = !{!"708"}
!1280 = !DILocation(line: 249, column: 18, scope: !1239)
!1281 = !{!"709"}
!1282 = !DILocation(line: 249, column: 2, scope: !1239)
!1283 = !{!"710"}
!1284 = !DILocation(line: 250, column: 26, scope: !1239)
!1285 = !{!"711"}
!1286 = !DILocation(line: 250, column: 2, scope: !1239)
!1287 = !{!"712"}
!1288 = !DILocation(line: 251, column: 18, scope: !1239)
!1289 = !{!"713"}
!1290 = !DILocation(line: 251, column: 2, scope: !1239)
!1291 = !{!"714"}
!1292 = !DILocation(line: 252, column: 9, scope: !1239)
!1293 = !{!"715"}
!1294 = !{!"716"}
!1295 = !DILocation(line: 252, column: 2, scope: !1239)
!1296 = !{!"717"}
!1297 = distinct !DISubprogram(name: "br_aes_ct_skey_expand", scope: !3, file: !3, line: 313, type: !1298, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !40, !10, !1300}
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1302 = !DILocalVariable(name: "skey", arg: 1, scope: !1297, file: !3, line: 313, type: !40)
!1303 = !DILocation(line: 0, scope: !1297)
!1304 = !{!"718"}
!1305 = !DILocalVariable(name: "num_rounds", arg: 2, scope: !1297, file: !3, line: 314, type: !10)
!1306 = !{!"719"}
!1307 = !DILocalVariable(name: "comp_skey", arg: 3, scope: !1297, file: !3, line: 314, type: !1300)
!1308 = !{!"720"}
!1309 = !DILocation(line: 318, column: 18, scope: !1297)
!1310 = !{!"721"}
!1311 = !DILocation(line: 318, column: 23, scope: !1297)
!1312 = !{!"722"}
!1313 = !DILocalVariable(name: "n", scope: !1297, file: !3, line: 316, type: !10)
!1314 = !{!"723"}
!1315 = !DILocalVariable(name: "u", scope: !1297, file: !3, line: 316, type: !10)
!1316 = !{!"724"}
!1317 = !DILocalVariable(name: "v", scope: !1297, file: !3, line: 316, type: !10)
!1318 = !{!"725"}
!1319 = !DILocation(line: 319, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 319, column: 2)
!1321 = !{!"726"}
!1322 = !DILocation(line: 0, scope: !1320)
!1323 = !{!"727"}
!1324 = !{!"728"}
!1325 = !{!"729"}
!1326 = !{!"730"}
!1327 = !DILocation(line: 319, column: 23, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 319, column: 2)
!1329 = !{!"731"}
!1330 = !DILocation(line: 319, column: 2, scope: !1320)
!1331 = !{!"732"}
!1332 = !DILocation(line: 322, column: 11, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 319, column: 42)
!1334 = !{!"733"}
!1335 = !{!"734"}
!1336 = !{!"735"}
!1337 = !DILocalVariable(name: "y", scope: !1333, file: !3, line: 320, type: !6)
!1338 = !DILocation(line: 0, scope: !1333)
!1339 = !{!"736"}
!1340 = !DILocalVariable(name: "x", scope: !1333, file: !3, line: 320, type: !6)
!1341 = !{!"737"}
!1342 = !DILocation(line: 323, column: 5, scope: !1333)
!1343 = !{!"738"}
!1344 = !{!"739"}
!1345 = !DILocation(line: 324, column: 24, scope: !1333)
!1346 = !{!"740"}
!1347 = !DILocation(line: 324, column: 19, scope: !1333)
!1348 = !{!"741"}
!1349 = !DILocation(line: 324, column: 10, scope: !1333)
!1350 = !{!"742"}
!1351 = !DILocation(line: 324, column: 3, scope: !1333)
!1352 = !{!"743"}
!1353 = !{!"744"}
!1354 = !DILocation(line: 324, column: 15, scope: !1333)
!1355 = !{!"745"}
!1356 = !DILocation(line: 325, column: 5, scope: !1333)
!1357 = !{!"746"}
!1358 = !{!"747"}
!1359 = !DILocation(line: 326, column: 24, scope: !1333)
!1360 = !{!"748"}
!1361 = !DILocation(line: 326, column: 19, scope: !1333)
!1362 = !{!"749"}
!1363 = !DILocation(line: 326, column: 10, scope: !1333)
!1364 = !{!"750"}
!1365 = !DILocation(line: 326, column: 3, scope: !1333)
!1366 = !{!"751"}
!1367 = !{!"752"}
!1368 = !DILocation(line: 326, column: 15, scope: !1333)
!1369 = !{!"753"}
!1370 = !DILocation(line: 327, column: 2, scope: !1333)
!1371 = !{!"754"}
!1372 = !DILocation(line: 319, column: 30, scope: !1328)
!1373 = !{!"755"}
!1374 = !{!"756"}
!1375 = !DILocation(line: 319, column: 36, scope: !1328)
!1376 = !{!"757"}
!1377 = !{!"758"}
!1378 = !DILocation(line: 319, column: 2, scope: !1328)
!1379 = distinct !{!1379, !1330, !1380, !1010}
!1380 = !DILocation(line: 327, column: 2, scope: !1320)
!1381 = !{!"759"}
!1382 = !DILocation(line: 328, column: 1, scope: !1297)
!1383 = !{!"760"}
!1384 = distinct !DISubprogram(name: "key_sched_wrapper", scope: !32, file: !32, line: 3, type: !1385, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !4)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !40, !908, !910}
!1387 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !1384, file: !32, line: 3, type: !40)
!1388 = !DILocation(line: 0, scope: !1384)
!1389 = !{!"761"}
!1390 = !DILocalVariable(name: "key", arg: 2, scope: !1384, file: !32, line: 3, type: !908)
!1391 = !{!"762"}
!1392 = !DILocalVariable(name: "key_len", arg: 3, scope: !1384, file: !32, line: 3, type: !910)
!1393 = !{!"763"}
!1394 = !DILocation(line: 4, column: 12, scope: !1384)
!1395 = !{!"764"}
!1396 = !DILocation(line: 4, column: 2, scope: !1384)
!1397 = !{!"765"}
!1398 = !DILocation(line: 5, column: 12, scope: !1384)
!1399 = !{!"766"}
!1400 = !DILocation(line: 5, column: 2, scope: !1384)
!1401 = !{!"767"}
!1402 = !DILocation(line: 6, column: 12, scope: !1384)
!1403 = !{!"768"}
!1404 = !DILocation(line: 6, column: 2, scope: !1384)
!1405 = !{!"769"}
!1406 = !DILocation(line: 8, column: 2, scope: !1384)
!1407 = !{!"770"}
!1408 = !DILocation(line: 9, column: 1, scope: !1384)
!1409 = !{!"771"}
!1410 = distinct !DISubprogram(name: "key_sched_wrapper_t", scope: !32, file: !32, line: 17, type: !1411, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !4)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null}
!1413 = !DILocation(line: 18, column: 19, scope: !1410)
!1414 = !{!"772"}
!1415 = !DILocalVariable(name: "key_len", scope: !1410, file: !32, line: 18, type: !910)
!1416 = !DILocation(line: 0, scope: !1410)
!1417 = !{!"773"}
!1418 = !DILocation(line: 19, column: 24, scope: !1410)
!1419 = !{!"774"}
!1420 = !DILocalVariable(name: "comp_skey", scope: !1410, file: !32, line: 19, type: !40)
!1421 = !{!"775"}
!1422 = !DILocalVariable(name: "key", scope: !1410, file: !32, line: 20, type: !908)
!1423 = !{!"776"}
!1424 = !DILocation(line: 21, column: 2, scope: !1410)
!1425 = !{!"777"}
!1426 = !DILocation(line: 22, column: 1, scope: !1410)
!1427 = !{!"778"}
