; ModuleID = 'key_sched-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

@Rcon = internal constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1, !dbg !0, !psr.id !21

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_bitslice_Sbox(i64* %0) #0 !dbg !28 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !32, metadata !DIExpression()), !dbg !33, !psr.id !34
  %2 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !35, !psr.id !36
  %3 = load i64, i64* %2, align 8, !dbg !35, !psr.id !37
  call void @llvm.dbg.value(metadata i64 %3, metadata !38, metadata !DIExpression()), !dbg !33, !psr.id !39
  %4 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !40, !psr.id !41
  %5 = load i64, i64* %4, align 8, !dbg !40, !psr.id !42
  call void @llvm.dbg.value(metadata i64 %5, metadata !43, metadata !DIExpression()), !dbg !33, !psr.id !44
  %6 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !45, !psr.id !46
  %7 = load i64, i64* %6, align 8, !dbg !45, !psr.id !47
  call void @llvm.dbg.value(metadata i64 %7, metadata !48, metadata !DIExpression()), !dbg !33, !psr.id !49
  %8 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !50, !psr.id !51
  %9 = load i64, i64* %8, align 8, !dbg !50, !psr.id !52
  call void @llvm.dbg.value(metadata i64 %9, metadata !53, metadata !DIExpression()), !dbg !33, !psr.id !54
  %10 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !55, !psr.id !56
  %11 = load i64, i64* %10, align 8, !dbg !55, !psr.id !57
  call void @llvm.dbg.value(metadata i64 %11, metadata !58, metadata !DIExpression()), !dbg !33, !psr.id !59
  %12 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !60, !psr.id !61
  %13 = load i64, i64* %12, align 8, !dbg !60, !psr.id !62
  call void @llvm.dbg.value(metadata i64 %13, metadata !63, metadata !DIExpression()), !dbg !33, !psr.id !64
  %14 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !65, !psr.id !66
  %15 = load i64, i64* %14, align 8, !dbg !65, !psr.id !67
  call void @llvm.dbg.value(metadata i64 %15, metadata !68, metadata !DIExpression()), !dbg !33, !psr.id !69
  %16 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !70, !psr.id !71
  %17 = load i64, i64* %16, align 8, !dbg !70, !psr.id !72
  call void @llvm.dbg.value(metadata i64 %17, metadata !73, metadata !DIExpression()), !dbg !33, !psr.id !74
  %18 = xor i64 %9, %13, !dbg !75, !psr.id !76
  call void @llvm.dbg.value(metadata i64 %18, metadata !77, metadata !DIExpression()), !dbg !33, !psr.id !78
  %19 = xor i64 %3, %15, !dbg !79, !psr.id !80
  call void @llvm.dbg.value(metadata i64 %19, metadata !81, metadata !DIExpression()), !dbg !33, !psr.id !82
  %20 = xor i64 %3, %9, !dbg !83, !psr.id !84
  call void @llvm.dbg.value(metadata i64 %20, metadata !85, metadata !DIExpression()), !dbg !33, !psr.id !86
  %21 = xor i64 %3, %13, !dbg !87, !psr.id !88
  call void @llvm.dbg.value(metadata i64 %21, metadata !89, metadata !DIExpression()), !dbg !33, !psr.id !90
  %22 = xor i64 %5, %7, !dbg !91, !psr.id !92
  call void @llvm.dbg.value(metadata i64 %22, metadata !93, metadata !DIExpression()), !dbg !33, !psr.id !94
  %23 = xor i64 %22, %17, !dbg !95, !psr.id !96
  call void @llvm.dbg.value(metadata i64 %23, metadata !97, metadata !DIExpression()), !dbg !33, !psr.id !98
  %24 = xor i64 %23, %9, !dbg !99, !psr.id !100
  call void @llvm.dbg.value(metadata i64 %24, metadata !101, metadata !DIExpression()), !dbg !33, !psr.id !102
  %25 = xor i64 %19, %18, !dbg !103, !psr.id !104
  call void @llvm.dbg.value(metadata i64 %25, metadata !105, metadata !DIExpression()), !dbg !33, !psr.id !106
  %26 = xor i64 %23, %3, !dbg !107, !psr.id !108
  call void @llvm.dbg.value(metadata i64 %26, metadata !109, metadata !DIExpression()), !dbg !33, !psr.id !110
  %27 = xor i64 %23, %15, !dbg !111, !psr.id !112
  call void @llvm.dbg.value(metadata i64 %27, metadata !113, metadata !DIExpression()), !dbg !33, !psr.id !114
  %28 = xor i64 %27, %21, !dbg !115, !psr.id !116
  call void @llvm.dbg.value(metadata i64 %28, metadata !117, metadata !DIExpression()), !dbg !33, !psr.id !118
  %29 = xor i64 %11, %25, !dbg !119, !psr.id !120
  call void @llvm.dbg.value(metadata i64 %29, metadata !121, metadata !DIExpression()), !dbg !33, !psr.id !122
  %30 = xor i64 %29, %13, !dbg !123, !psr.id !124
  call void @llvm.dbg.value(metadata i64 %30, metadata !125, metadata !DIExpression()), !dbg !33, !psr.id !126
  %31 = xor i64 %29, %5, !dbg !127, !psr.id !128
  call void @llvm.dbg.value(metadata i64 %31, metadata !129, metadata !DIExpression()), !dbg !33, !psr.id !130
  %32 = xor i64 %30, %17, !dbg !131, !psr.id !132
  call void @llvm.dbg.value(metadata i64 %32, metadata !133, metadata !DIExpression()), !dbg !33, !psr.id !134
  %33 = xor i64 %30, %22, !dbg !135, !psr.id !136
  call void @llvm.dbg.value(metadata i64 %33, metadata !137, metadata !DIExpression()), !dbg !33, !psr.id !138
  %34 = xor i64 %31, %20, !dbg !139, !psr.id !140
  call void @llvm.dbg.value(metadata i64 %34, metadata !141, metadata !DIExpression()), !dbg !33, !psr.id !142
  %35 = xor i64 %17, %34, !dbg !143, !psr.id !144
  call void @llvm.dbg.value(metadata i64 %35, metadata !145, metadata !DIExpression()), !dbg !33, !psr.id !146
  %36 = xor i64 %33, %34, !dbg !147, !psr.id !148
  call void @llvm.dbg.value(metadata i64 %36, metadata !149, metadata !DIExpression()), !dbg !33, !psr.id !150
  %37 = xor i64 %33, %21, !dbg !151, !psr.id !152
  call void @llvm.dbg.value(metadata i64 %37, metadata !153, metadata !DIExpression()), !dbg !33, !psr.id !154
  %38 = xor i64 %22, %34, !dbg !155, !psr.id !156
  call void @llvm.dbg.value(metadata i64 %38, metadata !157, metadata !DIExpression()), !dbg !33, !psr.id !158
  %39 = xor i64 %19, %38, !dbg !159, !psr.id !160
  call void @llvm.dbg.value(metadata i64 %39, metadata !161, metadata !DIExpression()), !dbg !33, !psr.id !162
  %40 = xor i64 %3, %38, !dbg !163, !psr.id !164
  call void @llvm.dbg.value(metadata i64 %40, metadata !165, metadata !DIExpression()), !dbg !33, !psr.id !166
  %41 = and i64 %25, %30, !dbg !167, !psr.id !168
  call void @llvm.dbg.value(metadata i64 %41, metadata !169, metadata !DIExpression()), !dbg !33, !psr.id !170
  %42 = and i64 %28, %32, !dbg !171, !psr.id !172
  call void @llvm.dbg.value(metadata i64 %42, metadata !173, metadata !DIExpression()), !dbg !33, !psr.id !174
  %43 = xor i64 %42, %41, !dbg !175, !psr.id !176
  call void @llvm.dbg.value(metadata i64 %43, metadata !177, metadata !DIExpression()), !dbg !33, !psr.id !178
  %44 = and i64 %24, %17, !dbg !179, !psr.id !180
  call void @llvm.dbg.value(metadata i64 %44, metadata !181, metadata !DIExpression()), !dbg !33, !psr.id !182
  %45 = xor i64 %44, %41, !dbg !183, !psr.id !184
  call void @llvm.dbg.value(metadata i64 %45, metadata !185, metadata !DIExpression()), !dbg !33, !psr.id !186
  %46 = and i64 %19, %38, !dbg !187, !psr.id !188
  call void @llvm.dbg.value(metadata i64 %46, metadata !189, metadata !DIExpression()), !dbg !33, !psr.id !190
  %47 = and i64 %27, %23, !dbg !191, !psr.id !192
  call void @llvm.dbg.value(metadata i64 %47, metadata !193, metadata !DIExpression()), !dbg !33, !psr.id !194
  %48 = xor i64 %47, %46, !dbg !195, !psr.id !196
  call void @llvm.dbg.value(metadata i64 %48, metadata !197, metadata !DIExpression()), !dbg !33, !psr.id !198
  %49 = and i64 %26, %35, !dbg !199, !psr.id !200
  call void @llvm.dbg.value(metadata i64 %49, metadata !201, metadata !DIExpression()), !dbg !33, !psr.id !202
  %50 = xor i64 %49, %46, !dbg !203, !psr.id !204
  call void @llvm.dbg.value(metadata i64 %50, metadata !205, metadata !DIExpression()), !dbg !33, !psr.id !206
  %51 = and i64 %20, %34, !dbg !207, !psr.id !208
  call void @llvm.dbg.value(metadata i64 %51, metadata !209, metadata !DIExpression()), !dbg !33, !psr.id !210
  %52 = and i64 %18, %36, !dbg !211, !psr.id !212
  call void @llvm.dbg.value(metadata i64 %52, metadata !213, metadata !DIExpression()), !dbg !33, !psr.id !214
  %53 = xor i64 %52, %51, !dbg !215, !psr.id !216
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !33, !psr.id !218
  %54 = and i64 %21, %33, !dbg !219, !psr.id !220
  call void @llvm.dbg.value(metadata i64 %54, metadata !221, metadata !DIExpression()), !dbg !33, !psr.id !222
  %55 = xor i64 %54, %51, !dbg !223, !psr.id !224
  call void @llvm.dbg.value(metadata i64 %55, metadata !225, metadata !DIExpression()), !dbg !33, !psr.id !226
  %56 = xor i64 %43, %53, !dbg !227, !psr.id !228
  call void @llvm.dbg.value(metadata i64 %56, metadata !229, metadata !DIExpression()), !dbg !33, !psr.id !230
  %57 = xor i64 %45, %55, !dbg !231, !psr.id !232
  call void @llvm.dbg.value(metadata i64 %57, metadata !233, metadata !DIExpression()), !dbg !33, !psr.id !234
  %58 = xor i64 %48, %53, !dbg !235, !psr.id !236
  call void @llvm.dbg.value(metadata i64 %58, metadata !237, metadata !DIExpression()), !dbg !33, !psr.id !238
  %59 = xor i64 %50, %55, !dbg !239, !psr.id !240
  call void @llvm.dbg.value(metadata i64 %59, metadata !241, metadata !DIExpression()), !dbg !33, !psr.id !242
  %60 = xor i64 %56, %31, !dbg !243, !psr.id !244
  call void @llvm.dbg.value(metadata i64 %60, metadata !245, metadata !DIExpression()), !dbg !33, !psr.id !246
  %61 = xor i64 %57, %37, !dbg !247, !psr.id !248
  call void @llvm.dbg.value(metadata i64 %61, metadata !249, metadata !DIExpression()), !dbg !33, !psr.id !250
  %62 = xor i64 %58, %39, !dbg !251, !psr.id !252
  call void @llvm.dbg.value(metadata i64 %62, metadata !253, metadata !DIExpression()), !dbg !33, !psr.id !254
  %63 = xor i64 %59, %40, !dbg !255, !psr.id !256
  call void @llvm.dbg.value(metadata i64 %63, metadata !257, metadata !DIExpression()), !dbg !33, !psr.id !258
  %64 = xor i64 %60, %61, !dbg !259, !psr.id !260
  call void @llvm.dbg.value(metadata i64 %64, metadata !261, metadata !DIExpression()), !dbg !33, !psr.id !262
  %65 = and i64 %60, %62, !dbg !263, !psr.id !264
  call void @llvm.dbg.value(metadata i64 %65, metadata !265, metadata !DIExpression()), !dbg !33, !psr.id !266
  %66 = xor i64 %63, %65, !dbg !267, !psr.id !268
  call void @llvm.dbg.value(metadata i64 %66, metadata !269, metadata !DIExpression()), !dbg !33, !psr.id !270
  %67 = and i64 %64, %66, !dbg !271, !psr.id !272
  call void @llvm.dbg.value(metadata i64 %67, metadata !273, metadata !DIExpression()), !dbg !33, !psr.id !274
  %68 = xor i64 %67, %61, !dbg !275, !psr.id !276
  call void @llvm.dbg.value(metadata i64 %68, metadata !277, metadata !DIExpression()), !dbg !33, !psr.id !278
  %69 = xor i64 %62, %63, !dbg !279, !psr.id !280
  call void @llvm.dbg.value(metadata i64 %69, metadata !281, metadata !DIExpression()), !dbg !33, !psr.id !282
  %70 = xor i64 %61, %65, !dbg !283, !psr.id !284
  call void @llvm.dbg.value(metadata i64 %70, metadata !285, metadata !DIExpression()), !dbg !33, !psr.id !286
  %71 = and i64 %70, %69, !dbg !287, !psr.id !288
  call void @llvm.dbg.value(metadata i64 %71, metadata !289, metadata !DIExpression()), !dbg !33, !psr.id !290
  %72 = xor i64 %71, %63, !dbg !291, !psr.id !292
  call void @llvm.dbg.value(metadata i64 %72, metadata !293, metadata !DIExpression()), !dbg !33, !psr.id !294
  %73 = xor i64 %62, %72, !dbg !295, !psr.id !296
  call void @llvm.dbg.value(metadata i64 %73, metadata !297, metadata !DIExpression()), !dbg !33, !psr.id !298
  %74 = xor i64 %66, %72, !dbg !299, !psr.id !300
  call void @llvm.dbg.value(metadata i64 %74, metadata !301, metadata !DIExpression()), !dbg !33, !psr.id !302
  %75 = and i64 %63, %74, !dbg !303, !psr.id !304
  call void @llvm.dbg.value(metadata i64 %75, metadata !305, metadata !DIExpression()), !dbg !33, !psr.id !306
  %76 = xor i64 %75, %73, !dbg !307, !psr.id !308
  call void @llvm.dbg.value(metadata i64 %76, metadata !309, metadata !DIExpression()), !dbg !33, !psr.id !310
  %77 = xor i64 %66, %75, !dbg !311, !psr.id !312
  call void @llvm.dbg.value(metadata i64 %77, metadata !313, metadata !DIExpression()), !dbg !33, !psr.id !314
  %78 = and i64 %68, %77, !dbg !315, !psr.id !316
  call void @llvm.dbg.value(metadata i64 %78, metadata !317, metadata !DIExpression()), !dbg !33, !psr.id !318
  %79 = xor i64 %64, %78, !dbg !319, !psr.id !320
  call void @llvm.dbg.value(metadata i64 %79, metadata !321, metadata !DIExpression()), !dbg !33, !psr.id !322
  %80 = xor i64 %79, %76, !dbg !323, !psr.id !324
  call void @llvm.dbg.value(metadata i64 %80, metadata !325, metadata !DIExpression()), !dbg !33, !psr.id !326
  %81 = xor i64 %68, %72, !dbg !327, !psr.id !328
  call void @llvm.dbg.value(metadata i64 %81, metadata !329, metadata !DIExpression()), !dbg !33, !psr.id !330
  %82 = xor i64 %68, %79, !dbg !331, !psr.id !332
  call void @llvm.dbg.value(metadata i64 %82, metadata !333, metadata !DIExpression()), !dbg !33, !psr.id !334
  %83 = xor i64 %72, %76, !dbg !335, !psr.id !336
  call void @llvm.dbg.value(metadata i64 %83, metadata !337, metadata !DIExpression()), !dbg !33, !psr.id !338
  %84 = xor i64 %81, %80, !dbg !339, !psr.id !340
  call void @llvm.dbg.value(metadata i64 %84, metadata !341, metadata !DIExpression()), !dbg !33, !psr.id !342
  %85 = and i64 %83, %30, !dbg !343, !psr.id !344
  call void @llvm.dbg.value(metadata i64 %85, metadata !345, metadata !DIExpression()), !dbg !33, !psr.id !346
  %86 = and i64 %76, %32, !dbg !347, !psr.id !348
  call void @llvm.dbg.value(metadata i64 %86, metadata !349, metadata !DIExpression()), !dbg !33, !psr.id !350
  %87 = and i64 %72, %17, !dbg !351, !psr.id !352
  call void @llvm.dbg.value(metadata i64 %87, metadata !353, metadata !DIExpression()), !dbg !33, !psr.id !354
  %88 = and i64 %82, %38, !dbg !355, !psr.id !356
  call void @llvm.dbg.value(metadata i64 %88, metadata !357, metadata !DIExpression()), !dbg !33, !psr.id !358
  %89 = and i64 %79, %23, !dbg !359, !psr.id !360
  call void @llvm.dbg.value(metadata i64 %89, metadata !361, metadata !DIExpression()), !dbg !33, !psr.id !362
  %90 = and i64 %68, %35, !dbg !363, !psr.id !364
  call void @llvm.dbg.value(metadata i64 %90, metadata !365, metadata !DIExpression()), !dbg !33, !psr.id !366
  %91 = and i64 %81, %34, !dbg !367, !psr.id !368
  call void @llvm.dbg.value(metadata i64 %91, metadata !369, metadata !DIExpression()), !dbg !33, !psr.id !370
  %92 = and i64 %84, %36, !dbg !371, !psr.id !372
  call void @llvm.dbg.value(metadata i64 %92, metadata !373, metadata !DIExpression()), !dbg !33, !psr.id !374
  %93 = and i64 %80, %33, !dbg !375, !psr.id !376
  call void @llvm.dbg.value(metadata i64 %93, metadata !377, metadata !DIExpression()), !dbg !33, !psr.id !378
  %94 = and i64 %83, %25, !dbg !379, !psr.id !380
  call void @llvm.dbg.value(metadata i64 %94, metadata !381, metadata !DIExpression()), !dbg !33, !psr.id !382
  %95 = and i64 %76, %28, !dbg !383, !psr.id !384
  call void @llvm.dbg.value(metadata i64 %95, metadata !385, metadata !DIExpression()), !dbg !33, !psr.id !386
  %96 = and i64 %72, %24, !dbg !387, !psr.id !388
  call void @llvm.dbg.value(metadata i64 %96, metadata !389, metadata !DIExpression()), !dbg !33, !psr.id !390
  %97 = and i64 %82, %19, !dbg !391, !psr.id !392
  call void @llvm.dbg.value(metadata i64 %97, metadata !393, metadata !DIExpression()), !dbg !33, !psr.id !394
  %98 = and i64 %79, %27, !dbg !395, !psr.id !396
  call void @llvm.dbg.value(metadata i64 %98, metadata !397, metadata !DIExpression()), !dbg !33, !psr.id !398
  %99 = and i64 %68, %26, !dbg !399, !psr.id !400
  call void @llvm.dbg.value(metadata i64 %99, metadata !401, metadata !DIExpression()), !dbg !33, !psr.id !402
  %100 = and i64 %81, %20, !dbg !403, !psr.id !404
  call void @llvm.dbg.value(metadata i64 %100, metadata !405, metadata !DIExpression()), !dbg !33, !psr.id !406
  %101 = and i64 %84, %18, !dbg !407, !psr.id !408
  call void @llvm.dbg.value(metadata i64 %101, metadata !409, metadata !DIExpression()), !dbg !33, !psr.id !410
  %102 = and i64 %80, %21, !dbg !411, !psr.id !412
  call void @llvm.dbg.value(metadata i64 %102, metadata !413, metadata !DIExpression()), !dbg !33, !psr.id !414
  %103 = xor i64 %100, %101, !dbg !415, !psr.id !416
  call void @llvm.dbg.value(metadata i64 %103, metadata !417, metadata !DIExpression()), !dbg !33, !psr.id !418
  %104 = xor i64 %95, %96, !dbg !419, !psr.id !420
  call void @llvm.dbg.value(metadata i64 %104, metadata !421, metadata !DIExpression()), !dbg !33, !psr.id !422
  %105 = xor i64 %90, %98, !dbg !423, !psr.id !424
  call void @llvm.dbg.value(metadata i64 %105, metadata !425, metadata !DIExpression()), !dbg !33, !psr.id !426
  %106 = xor i64 %94, %95, !dbg !427, !psr.id !428
  call void @llvm.dbg.value(metadata i64 %106, metadata !429, metadata !DIExpression()), !dbg !33, !psr.id !430
  %107 = xor i64 %87, %97, !dbg !431, !psr.id !432
  call void @llvm.dbg.value(metadata i64 %107, metadata !433, metadata !DIExpression()), !dbg !33, !psr.id !434
  %108 = xor i64 %87, %90, !dbg !435, !psr.id !436
  call void @llvm.dbg.value(metadata i64 %108, metadata !437, metadata !DIExpression()), !dbg !33, !psr.id !438
  %109 = xor i64 %92, %93, !dbg !439, !psr.id !440
  call void @llvm.dbg.value(metadata i64 %109, metadata !441, metadata !DIExpression()), !dbg !33, !psr.id !442
  %110 = xor i64 %85, %88, !dbg !443, !psr.id !444
  call void @llvm.dbg.value(metadata i64 %110, metadata !445, metadata !DIExpression()), !dbg !33, !psr.id !446
  %111 = xor i64 %91, %92, !dbg !447, !psr.id !448
  call void @llvm.dbg.value(metadata i64 %111, metadata !449, metadata !DIExpression()), !dbg !33, !psr.id !450
  %112 = xor i64 %101, %102, !dbg !451, !psr.id !452
  call void @llvm.dbg.value(metadata i64 %112, metadata !453, metadata !DIExpression()), !dbg !33, !psr.id !454
  %113 = xor i64 %97, %105, !dbg !455, !psr.id !456
  call void @llvm.dbg.value(metadata i64 %113, metadata !457, metadata !DIExpression()), !dbg !33, !psr.id !458
  %114 = xor i64 %107, %110, !dbg !459, !psr.id !460
  call void @llvm.dbg.value(metadata i64 %114, metadata !461, metadata !DIExpression()), !dbg !33, !psr.id !462
  %115 = xor i64 %89, %103, !dbg !463, !psr.id !464
  call void @llvm.dbg.value(metadata i64 %115, metadata !465, metadata !DIExpression()), !dbg !33, !psr.id !466
  %116 = xor i64 %88, %111, !dbg !467, !psr.id !468
  call void @llvm.dbg.value(metadata i64 %116, metadata !469, metadata !DIExpression()), !dbg !33, !psr.id !470
  %117 = xor i64 %103, %114, !dbg !471, !psr.id !472
  call void @llvm.dbg.value(metadata i64 %117, metadata !473, metadata !DIExpression()), !dbg !33, !psr.id !474
  %118 = xor i64 %99, %114, !dbg !475, !psr.id !476
  call void @llvm.dbg.value(metadata i64 %118, metadata !477, metadata !DIExpression()), !dbg !33, !psr.id !478
  %119 = xor i64 %109, %115, !dbg !479, !psr.id !480
  call void @llvm.dbg.value(metadata i64 %119, metadata !481, metadata !DIExpression()), !dbg !33, !psr.id !482
  %120 = xor i64 %106, %115, !dbg !483, !psr.id !484
  call void @llvm.dbg.value(metadata i64 %120, metadata !485, metadata !DIExpression()), !dbg !33, !psr.id !486
  %121 = xor i64 %89, %116, !dbg !487, !psr.id !488
  call void @llvm.dbg.value(metadata i64 %121, metadata !489, metadata !DIExpression()), !dbg !33, !psr.id !490
  %122 = xor i64 %118, %119, !dbg !491, !psr.id !492
  call void @llvm.dbg.value(metadata i64 %122, metadata !493, metadata !DIExpression()), !dbg !33, !psr.id !494
  %123 = xor i64 %86, %120, !dbg !495, !psr.id !496
  call void @llvm.dbg.value(metadata i64 %123, metadata !497, metadata !DIExpression()), !dbg !33, !psr.id !498
  %124 = xor i64 %116, %120, !dbg !499, !psr.id !500
  call void @llvm.dbg.value(metadata i64 %124, metadata !501, metadata !DIExpression()), !dbg !33, !psr.id !502
  %125 = xor i64 %119, -1, !dbg !503, !psr.id !504
  %126 = xor i64 %113, %125, !dbg !505, !psr.id !506
  call void @llvm.dbg.value(metadata i64 %126, metadata !507, metadata !DIExpression()), !dbg !33, !psr.id !508
  %127 = xor i64 %117, -1, !dbg !509, !psr.id !510
  %128 = xor i64 %105, %127, !dbg !511, !psr.id !512
  call void @llvm.dbg.value(metadata i64 %128, metadata !513, metadata !DIExpression()), !dbg !33, !psr.id !514
  %129 = xor i64 %121, %122, !dbg !515, !psr.id !516
  call void @llvm.dbg.value(metadata i64 %129, metadata !517, metadata !DIExpression()), !dbg !33, !psr.id !518
  %130 = xor i64 %110, %123, !dbg !519, !psr.id !520
  call void @llvm.dbg.value(metadata i64 %130, metadata !521, metadata !DIExpression()), !dbg !33, !psr.id !522
  %131 = xor i64 %108, %123, !dbg !523, !psr.id !524
  call void @llvm.dbg.value(metadata i64 %131, metadata !525, metadata !DIExpression()), !dbg !33, !psr.id !526
  %132 = xor i64 %104, %122, !dbg !527, !psr.id !528
  call void @llvm.dbg.value(metadata i64 %132, metadata !529, metadata !DIExpression()), !dbg !33, !psr.id !530
  %133 = xor i64 %130, -1, !dbg !531, !psr.id !532
  %134 = xor i64 %121, %133, !dbg !533, !psr.id !534
  call void @llvm.dbg.value(metadata i64 %134, metadata !535, metadata !DIExpression()), !dbg !33, !psr.id !536
  %135 = xor i64 %129, -1, !dbg !537, !psr.id !538
  %136 = xor i64 %112, %135, !dbg !539, !psr.id !540
  call void @llvm.dbg.value(metadata i64 %136, metadata !541, metadata !DIExpression()), !dbg !33, !psr.id !542
  %137 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !543, !psr.id !544
  store i64 %124, i64* %137, align 8, !dbg !545, !psr.id !546
  %138 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !547, !psr.id !548
  store i64 %134, i64* %138, align 8, !dbg !549, !psr.id !550
  %139 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !551, !psr.id !552
  store i64 %136, i64* %139, align 8, !dbg !553, !psr.id !554
  %140 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !555, !psr.id !556
  store i64 %130, i64* %140, align 8, !dbg !557, !psr.id !558
  %141 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !559, !psr.id !560
  store i64 %131, i64* %141, align 8, !dbg !561, !psr.id !562
  %142 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !563, !psr.id !564
  store i64 %132, i64* %142, align 8, !dbg !565, !psr.id !566
  %143 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !567, !psr.id !568
  store i64 %126, i64* %143, align 8, !dbg !569, !psr.id !570
  %144 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !571, !psr.id !572
  store i64 %128, i64* %144, align 8, !dbg !573, !psr.id !574
  ret void, !dbg !575, !psr.id !576
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_ortho(i64* %0) #0 !dbg !577 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !578, metadata !DIExpression()), !dbg !579, !psr.id !580
  br label %2, !dbg !581, !psr.id !582

2:                                                ; preds = %1
  %3 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !583, !psr.id !585
  %4 = load i64, i64* %3, align 8, !dbg !583, !psr.id !586
  call void @llvm.dbg.value(metadata i64 %4, metadata !587, metadata !DIExpression()), !dbg !588, !psr.id !589
  %5 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !583, !psr.id !590
  %6 = load i64, i64* %5, align 8, !dbg !583, !psr.id !591
  call void @llvm.dbg.value(metadata i64 %6, metadata !592, metadata !DIExpression()), !dbg !588, !psr.id !593
  %7 = and i64 %4, 6148914691236517205, !dbg !583, !psr.id !594
  %8 = and i64 %6, 6148914691236517205, !dbg !583, !psr.id !595
  %9 = shl i64 %8, 1, !dbg !583, !psr.id !596
  %10 = or i64 %7, %9, !dbg !583, !psr.id !597
  %11 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !583, !psr.id !598
  store i64 %10, i64* %11, align 8, !dbg !583, !psr.id !599
  %12 = and i64 %4, -6148914691236517206, !dbg !583, !psr.id !600
  %13 = lshr i64 %12, 1, !dbg !583, !psr.id !601
  %14 = and i64 %6, -6148914691236517206, !dbg !583, !psr.id !602
  %15 = or i64 %13, %14, !dbg !583, !psr.id !603
  %16 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !583, !psr.id !604
  store i64 %15, i64* %16, align 8, !dbg !583, !psr.id !605
  br label %17, !dbg !583, !psr.id !606

17:                                               ; preds = %2
  br label %18, !dbg !607, !psr.id !608

18:                                               ; preds = %17
  %19 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !609, !psr.id !611
  %20 = load i64, i64* %19, align 8, !dbg !609, !psr.id !612
  call void @llvm.dbg.value(metadata i64 %20, metadata !613, metadata !DIExpression()), !dbg !614, !psr.id !615
  %21 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !609, !psr.id !616
  %22 = load i64, i64* %21, align 8, !dbg !609, !psr.id !617
  call void @llvm.dbg.value(metadata i64 %22, metadata !618, metadata !DIExpression()), !dbg !614, !psr.id !619
  %23 = and i64 %20, 6148914691236517205, !dbg !609, !psr.id !620
  %24 = and i64 %22, 6148914691236517205, !dbg !609, !psr.id !621
  %25 = shl i64 %24, 1, !dbg !609, !psr.id !622
  %26 = or i64 %23, %25, !dbg !609, !psr.id !623
  %27 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !609, !psr.id !624
  store i64 %26, i64* %27, align 8, !dbg !609, !psr.id !625
  %28 = and i64 %20, -6148914691236517206, !dbg !609, !psr.id !626
  %29 = lshr i64 %28, 1, !dbg !609, !psr.id !627
  %30 = and i64 %22, -6148914691236517206, !dbg !609, !psr.id !628
  %31 = or i64 %29, %30, !dbg !609, !psr.id !629
  %32 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !609, !psr.id !630
  store i64 %31, i64* %32, align 8, !dbg !609, !psr.id !631
  br label %33, !dbg !609, !psr.id !632

33:                                               ; preds = %18
  br label %34, !dbg !633, !psr.id !634

34:                                               ; preds = %33
  %35 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !635, !psr.id !637
  %36 = load i64, i64* %35, align 8, !dbg !635, !psr.id !638
  call void @llvm.dbg.value(metadata i64 %36, metadata !639, metadata !DIExpression()), !dbg !640, !psr.id !641
  %37 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !635, !psr.id !642
  %38 = load i64, i64* %37, align 8, !dbg !635, !psr.id !643
  call void @llvm.dbg.value(metadata i64 %38, metadata !644, metadata !DIExpression()), !dbg !640, !psr.id !645
  %39 = and i64 %36, 6148914691236517205, !dbg !635, !psr.id !646
  %40 = and i64 %38, 6148914691236517205, !dbg !635, !psr.id !647
  %41 = shl i64 %40, 1, !dbg !635, !psr.id !648
  %42 = or i64 %39, %41, !dbg !635, !psr.id !649
  %43 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !635, !psr.id !650
  store i64 %42, i64* %43, align 8, !dbg !635, !psr.id !651
  %44 = and i64 %36, -6148914691236517206, !dbg !635, !psr.id !652
  %45 = lshr i64 %44, 1, !dbg !635, !psr.id !653
  %46 = and i64 %38, -6148914691236517206, !dbg !635, !psr.id !654
  %47 = or i64 %45, %46, !dbg !635, !psr.id !655
  %48 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !635, !psr.id !656
  store i64 %47, i64* %48, align 8, !dbg !635, !psr.id !657
  br label %49, !dbg !635, !psr.id !658

49:                                               ; preds = %34
  br label %50, !dbg !659, !psr.id !660

50:                                               ; preds = %49
  %51 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !661, !psr.id !663
  %52 = load i64, i64* %51, align 8, !dbg !661, !psr.id !664
  call void @llvm.dbg.value(metadata i64 %52, metadata !665, metadata !DIExpression()), !dbg !666, !psr.id !667
  %53 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !661, !psr.id !668
  %54 = load i64, i64* %53, align 8, !dbg !661, !psr.id !669
  call void @llvm.dbg.value(metadata i64 %54, metadata !670, metadata !DIExpression()), !dbg !666, !psr.id !671
  %55 = and i64 %52, 6148914691236517205, !dbg !661, !psr.id !672
  %56 = and i64 %54, 6148914691236517205, !dbg !661, !psr.id !673
  %57 = shl i64 %56, 1, !dbg !661, !psr.id !674
  %58 = or i64 %55, %57, !dbg !661, !psr.id !675
  %59 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !661, !psr.id !676
  store i64 %58, i64* %59, align 8, !dbg !661, !psr.id !677
  %60 = and i64 %52, -6148914691236517206, !dbg !661, !psr.id !678
  %61 = lshr i64 %60, 1, !dbg !661, !psr.id !679
  %62 = and i64 %54, -6148914691236517206, !dbg !661, !psr.id !680
  %63 = or i64 %61, %62, !dbg !661, !psr.id !681
  %64 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !661, !psr.id !682
  store i64 %63, i64* %64, align 8, !dbg !661, !psr.id !683
  br label %65, !dbg !661, !psr.id !684

65:                                               ; preds = %50
  br label %66, !dbg !685, !psr.id !686

66:                                               ; preds = %65
  %67 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !687, !psr.id !689
  %68 = load i64, i64* %67, align 8, !dbg !687, !psr.id !690
  call void @llvm.dbg.value(metadata i64 %68, metadata !691, metadata !DIExpression()), !dbg !692, !psr.id !693
  %69 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !687, !psr.id !694
  %70 = load i64, i64* %69, align 8, !dbg !687, !psr.id !695
  call void @llvm.dbg.value(metadata i64 %70, metadata !696, metadata !DIExpression()), !dbg !692, !psr.id !697
  %71 = and i64 %68, 3689348814741910323, !dbg !687, !psr.id !698
  %72 = and i64 %70, 3689348814741910323, !dbg !687, !psr.id !699
  %73 = shl i64 %72, 2, !dbg !687, !psr.id !700
  %74 = or i64 %71, %73, !dbg !687, !psr.id !701
  %75 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !687, !psr.id !702
  store i64 %74, i64* %75, align 8, !dbg !687, !psr.id !703
  %76 = and i64 %68, -3689348814741910324, !dbg !687, !psr.id !704
  %77 = lshr i64 %76, 2, !dbg !687, !psr.id !705
  %78 = and i64 %70, -3689348814741910324, !dbg !687, !psr.id !706
  %79 = or i64 %77, %78, !dbg !687, !psr.id !707
  %80 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !687, !psr.id !708
  store i64 %79, i64* %80, align 8, !dbg !687, !psr.id !709
  br label %81, !dbg !687, !psr.id !710

81:                                               ; preds = %66
  br label %82, !dbg !711, !psr.id !712

82:                                               ; preds = %81
  %83 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !713, !psr.id !715
  %84 = load i64, i64* %83, align 8, !dbg !713, !psr.id !716
  call void @llvm.dbg.value(metadata i64 %84, metadata !717, metadata !DIExpression()), !dbg !718, !psr.id !719
  %85 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !713, !psr.id !720
  %86 = load i64, i64* %85, align 8, !dbg !713, !psr.id !721
  call void @llvm.dbg.value(metadata i64 %86, metadata !722, metadata !DIExpression()), !dbg !718, !psr.id !723
  %87 = and i64 %84, 3689348814741910323, !dbg !713, !psr.id !724
  %88 = and i64 %86, 3689348814741910323, !dbg !713, !psr.id !725
  %89 = shl i64 %88, 2, !dbg !713, !psr.id !726
  %90 = or i64 %87, %89, !dbg !713, !psr.id !727
  %91 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !713, !psr.id !728
  store i64 %90, i64* %91, align 8, !dbg !713, !psr.id !729
  %92 = and i64 %84, -3689348814741910324, !dbg !713, !psr.id !730
  %93 = lshr i64 %92, 2, !dbg !713, !psr.id !731
  %94 = and i64 %86, -3689348814741910324, !dbg !713, !psr.id !732
  %95 = or i64 %93, %94, !dbg !713, !psr.id !733
  %96 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !713, !psr.id !734
  store i64 %95, i64* %96, align 8, !dbg !713, !psr.id !735
  br label %97, !dbg !713, !psr.id !736

97:                                               ; preds = %82
  br label %98, !dbg !737, !psr.id !738

98:                                               ; preds = %97
  %99 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !739, !psr.id !741
  %100 = load i64, i64* %99, align 8, !dbg !739, !psr.id !742
  call void @llvm.dbg.value(metadata i64 %100, metadata !743, metadata !DIExpression()), !dbg !744, !psr.id !745
  %101 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !739, !psr.id !746
  %102 = load i64, i64* %101, align 8, !dbg !739, !psr.id !747
  call void @llvm.dbg.value(metadata i64 %102, metadata !748, metadata !DIExpression()), !dbg !744, !psr.id !749
  %103 = and i64 %100, 3689348814741910323, !dbg !739, !psr.id !750
  %104 = and i64 %102, 3689348814741910323, !dbg !739, !psr.id !751
  %105 = shl i64 %104, 2, !dbg !739, !psr.id !752
  %106 = or i64 %103, %105, !dbg !739, !psr.id !753
  %107 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !739, !psr.id !754
  store i64 %106, i64* %107, align 8, !dbg !739, !psr.id !755
  %108 = and i64 %100, -3689348814741910324, !dbg !739, !psr.id !756
  %109 = lshr i64 %108, 2, !dbg !739, !psr.id !757
  %110 = and i64 %102, -3689348814741910324, !dbg !739, !psr.id !758
  %111 = or i64 %109, %110, !dbg !739, !psr.id !759
  %112 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !739, !psr.id !760
  store i64 %111, i64* %112, align 8, !dbg !739, !psr.id !761
  br label %113, !dbg !739, !psr.id !762

113:                                              ; preds = %98
  br label %114, !dbg !763, !psr.id !764

114:                                              ; preds = %113
  %115 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !765, !psr.id !767
  %116 = load i64, i64* %115, align 8, !dbg !765, !psr.id !768
  call void @llvm.dbg.value(metadata i64 %116, metadata !769, metadata !DIExpression()), !dbg !770, !psr.id !771
  %117 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !765, !psr.id !772
  %118 = load i64, i64* %117, align 8, !dbg !765, !psr.id !773
  call void @llvm.dbg.value(metadata i64 %118, metadata !774, metadata !DIExpression()), !dbg !770, !psr.id !775
  %119 = and i64 %116, 3689348814741910323, !dbg !765, !psr.id !776
  %120 = and i64 %118, 3689348814741910323, !dbg !765, !psr.id !777
  %121 = shl i64 %120, 2, !dbg !765, !psr.id !778
  %122 = or i64 %119, %121, !dbg !765, !psr.id !779
  %123 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !765, !psr.id !780
  store i64 %122, i64* %123, align 8, !dbg !765, !psr.id !781
  %124 = and i64 %116, -3689348814741910324, !dbg !765, !psr.id !782
  %125 = lshr i64 %124, 2, !dbg !765, !psr.id !783
  %126 = and i64 %118, -3689348814741910324, !dbg !765, !psr.id !784
  %127 = or i64 %125, %126, !dbg !765, !psr.id !785
  %128 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !765, !psr.id !786
  store i64 %127, i64* %128, align 8, !dbg !765, !psr.id !787
  br label %129, !dbg !765, !psr.id !788

129:                                              ; preds = %114
  br label %130, !dbg !789, !psr.id !790

130:                                              ; preds = %129
  %131 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !791, !psr.id !793
  %132 = load i64, i64* %131, align 8, !dbg !791, !psr.id !794
  call void @llvm.dbg.value(metadata i64 %132, metadata !795, metadata !DIExpression()), !dbg !796, !psr.id !797
  %133 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !791, !psr.id !798
  %134 = load i64, i64* %133, align 8, !dbg !791, !psr.id !799
  call void @llvm.dbg.value(metadata i64 %134, metadata !800, metadata !DIExpression()), !dbg !796, !psr.id !801
  %135 = and i64 %132, 1085102592571150095, !dbg !791, !psr.id !802
  %136 = and i64 %134, 1085102592571150095, !dbg !791, !psr.id !803
  %137 = shl i64 %136, 4, !dbg !791, !psr.id !804
  %138 = or i64 %135, %137, !dbg !791, !psr.id !805
  %139 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !791, !psr.id !806
  store i64 %138, i64* %139, align 8, !dbg !791, !psr.id !807
  %140 = and i64 %132, -1085102592571150096, !dbg !791, !psr.id !808
  %141 = lshr i64 %140, 4, !dbg !791, !psr.id !809
  %142 = and i64 %134, -1085102592571150096, !dbg !791, !psr.id !810
  %143 = or i64 %141, %142, !dbg !791, !psr.id !811
  %144 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !791, !psr.id !812
  store i64 %143, i64* %144, align 8, !dbg !791, !psr.id !813
  br label %145, !dbg !791, !psr.id !814

145:                                              ; preds = %130
  br label %146, !dbg !815, !psr.id !816

146:                                              ; preds = %145
  %147 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !817, !psr.id !819
  %148 = load i64, i64* %147, align 8, !dbg !817, !psr.id !820
  call void @llvm.dbg.value(metadata i64 %148, metadata !821, metadata !DIExpression()), !dbg !822, !psr.id !823
  %149 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !817, !psr.id !824
  %150 = load i64, i64* %149, align 8, !dbg !817, !psr.id !825
  call void @llvm.dbg.value(metadata i64 %150, metadata !826, metadata !DIExpression()), !dbg !822, !psr.id !827
  %151 = and i64 %148, 1085102592571150095, !dbg !817, !psr.id !828
  %152 = and i64 %150, 1085102592571150095, !dbg !817, !psr.id !829
  %153 = shl i64 %152, 4, !dbg !817, !psr.id !830
  %154 = or i64 %151, %153, !dbg !817, !psr.id !831
  %155 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !817, !psr.id !832
  store i64 %154, i64* %155, align 8, !dbg !817, !psr.id !833
  %156 = and i64 %148, -1085102592571150096, !dbg !817, !psr.id !834
  %157 = lshr i64 %156, 4, !dbg !817, !psr.id !835
  %158 = and i64 %150, -1085102592571150096, !dbg !817, !psr.id !836
  %159 = or i64 %157, %158, !dbg !817, !psr.id !837
  %160 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !817, !psr.id !838
  store i64 %159, i64* %160, align 8, !dbg !817, !psr.id !839
  br label %161, !dbg !817, !psr.id !840

161:                                              ; preds = %146
  br label %162, !dbg !841, !psr.id !842

162:                                              ; preds = %161
  %163 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !843, !psr.id !845
  %164 = load i64, i64* %163, align 8, !dbg !843, !psr.id !846
  call void @llvm.dbg.value(metadata i64 %164, metadata !847, metadata !DIExpression()), !dbg !848, !psr.id !849
  %165 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !843, !psr.id !850
  %166 = load i64, i64* %165, align 8, !dbg !843, !psr.id !851
  call void @llvm.dbg.value(metadata i64 %166, metadata !852, metadata !DIExpression()), !dbg !848, !psr.id !853
  %167 = and i64 %164, 1085102592571150095, !dbg !843, !psr.id !854
  %168 = and i64 %166, 1085102592571150095, !dbg !843, !psr.id !855
  %169 = shl i64 %168, 4, !dbg !843, !psr.id !856
  %170 = or i64 %167, %169, !dbg !843, !psr.id !857
  %171 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !843, !psr.id !858
  store i64 %170, i64* %171, align 8, !dbg !843, !psr.id !859
  %172 = and i64 %164, -1085102592571150096, !dbg !843, !psr.id !860
  %173 = lshr i64 %172, 4, !dbg !843, !psr.id !861
  %174 = and i64 %166, -1085102592571150096, !dbg !843, !psr.id !862
  %175 = or i64 %173, %174, !dbg !843, !psr.id !863
  %176 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !843, !psr.id !864
  store i64 %175, i64* %176, align 8, !dbg !843, !psr.id !865
  br label %177, !dbg !843, !psr.id !866

177:                                              ; preds = %162
  br label %178, !dbg !867, !psr.id !868

178:                                              ; preds = %177
  %179 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !869, !psr.id !871
  %180 = load i64, i64* %179, align 8, !dbg !869, !psr.id !872
  call void @llvm.dbg.value(metadata i64 %180, metadata !873, metadata !DIExpression()), !dbg !874, !psr.id !875
  %181 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !869, !psr.id !876
  %182 = load i64, i64* %181, align 8, !dbg !869, !psr.id !877
  call void @llvm.dbg.value(metadata i64 %182, metadata !878, metadata !DIExpression()), !dbg !874, !psr.id !879
  %183 = and i64 %180, 1085102592571150095, !dbg !869, !psr.id !880
  %184 = and i64 %182, 1085102592571150095, !dbg !869, !psr.id !881
  %185 = shl i64 %184, 4, !dbg !869, !psr.id !882
  %186 = or i64 %183, %185, !dbg !869, !psr.id !883
  %187 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !869, !psr.id !884
  store i64 %186, i64* %187, align 8, !dbg !869, !psr.id !885
  %188 = and i64 %180, -1085102592571150096, !dbg !869, !psr.id !886
  %189 = lshr i64 %188, 4, !dbg !869, !psr.id !887
  %190 = and i64 %182, -1085102592571150096, !dbg !869, !psr.id !888
  %191 = or i64 %189, %190, !dbg !869, !psr.id !889
  %192 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !869, !psr.id !890
  store i64 %191, i64* %192, align 8, !dbg !869, !psr.id !891
  br label %193, !dbg !869, !psr.id !892

193:                                              ; preds = %178
  ret void, !dbg !893, !psr.id !894
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_interleave_in(i64* %0, i64* %1, i32* %2) #0 !dbg !895 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !900, metadata !DIExpression()), !dbg !901, !psr.id !902
  call void @llvm.dbg.value(metadata i64* %1, metadata !903, metadata !DIExpression()), !dbg !901, !psr.id !904
  call void @llvm.dbg.value(metadata i32* %2, metadata !905, metadata !DIExpression()), !dbg !901, !psr.id !906
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !907, !psr.id !908
  %5 = load i32, i32* %4, align 4, !dbg !907, !psr.id !909
  %6 = zext i32 %5 to i64, !dbg !907, !psr.id !910
  call void @llvm.dbg.value(metadata i64 %6, metadata !911, metadata !DIExpression()), !dbg !901, !psr.id !912
  %7 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !913, !psr.id !914
  %8 = load i32, i32* %7, align 4, !dbg !913, !psr.id !915
  %9 = zext i32 %8 to i64, !dbg !913, !psr.id !916
  call void @llvm.dbg.value(metadata i64 %9, metadata !917, metadata !DIExpression()), !dbg !901, !psr.id !918
  %10 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !919, !psr.id !920
  %11 = load i32, i32* %10, align 4, !dbg !919, !psr.id !921
  %12 = zext i32 %11 to i64, !dbg !919, !psr.id !922
  call void @llvm.dbg.value(metadata i64 %12, metadata !923, metadata !DIExpression()), !dbg !901, !psr.id !924
  %13 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !925, !psr.id !926
  %14 = load i32, i32* %13, align 4, !dbg !925, !psr.id !927
  %15 = zext i32 %14 to i64, !dbg !925, !psr.id !928
  call void @llvm.dbg.value(metadata i64 %15, metadata !929, metadata !DIExpression()), !dbg !901, !psr.id !930
  %16 = shl i64 %6, 16, !dbg !931, !psr.id !932
  %17 = or i64 %6, %16, !dbg !933, !psr.id !934
  call void @llvm.dbg.value(metadata i64 %17, metadata !911, metadata !DIExpression()), !dbg !901, !psr.id !935
  %18 = shl i64 %9, 16, !dbg !936, !psr.id !937
  %19 = or i64 %9, %18, !dbg !938, !psr.id !939
  call void @llvm.dbg.value(metadata i64 %19, metadata !917, metadata !DIExpression()), !dbg !901, !psr.id !940
  %20 = shl i64 %12, 16, !dbg !941, !psr.id !942
  %21 = or i64 %12, %20, !dbg !943, !psr.id !944
  call void @llvm.dbg.value(metadata i64 %21, metadata !923, metadata !DIExpression()), !dbg !901, !psr.id !945
  %22 = shl i64 %15, 16, !dbg !946, !psr.id !947
  %23 = or i64 %15, %22, !dbg !948, !psr.id !949
  call void @llvm.dbg.value(metadata i64 %23, metadata !929, metadata !DIExpression()), !dbg !901, !psr.id !950
  %24 = and i64 %17, 281470681808895, !dbg !951, !psr.id !952
  call void @llvm.dbg.value(metadata i64 %24, metadata !911, metadata !DIExpression()), !dbg !901, !psr.id !953
  %25 = and i64 %19, 281470681808895, !dbg !954, !psr.id !955
  call void @llvm.dbg.value(metadata i64 %25, metadata !917, metadata !DIExpression()), !dbg !901, !psr.id !956
  %26 = and i64 %21, 281470681808895, !dbg !957, !psr.id !958
  call void @llvm.dbg.value(metadata i64 %26, metadata !923, metadata !DIExpression()), !dbg !901, !psr.id !959
  %27 = and i64 %23, 281470681808895, !dbg !960, !psr.id !961
  call void @llvm.dbg.value(metadata i64 %27, metadata !929, metadata !DIExpression()), !dbg !901, !psr.id !962
  %28 = shl i64 %24, 8, !dbg !963, !psr.id !964
  %29 = or i64 %24, %28, !dbg !965, !psr.id !966
  call void @llvm.dbg.value(metadata i64 %29, metadata !911, metadata !DIExpression()), !dbg !901, !psr.id !967
  %30 = shl i64 %25, 8, !dbg !968, !psr.id !969
  %31 = or i64 %25, %30, !dbg !970, !psr.id !971
  call void @llvm.dbg.value(metadata i64 %31, metadata !917, metadata !DIExpression()), !dbg !901, !psr.id !972
  %32 = shl i64 %26, 8, !dbg !973, !psr.id !974
  %33 = or i64 %26, %32, !dbg !975, !psr.id !976
  call void @llvm.dbg.value(metadata i64 %33, metadata !923, metadata !DIExpression()), !dbg !901, !psr.id !977
  %34 = shl i64 %27, 8, !dbg !978, !psr.id !979
  %35 = or i64 %27, %34, !dbg !980, !psr.id !981
  call void @llvm.dbg.value(metadata i64 %35, metadata !929, metadata !DIExpression()), !dbg !901, !psr.id !982
  %36 = and i64 %29, 71777214294589695, !dbg !983, !psr.id !984
  call void @llvm.dbg.value(metadata i64 %36, metadata !911, metadata !DIExpression()), !dbg !901, !psr.id !985
  %37 = and i64 %31, 71777214294589695, !dbg !986, !psr.id !987
  call void @llvm.dbg.value(metadata i64 %37, metadata !917, metadata !DIExpression()), !dbg !901, !psr.id !988
  %38 = and i64 %33, 71777214294589695, !dbg !989, !psr.id !990
  call void @llvm.dbg.value(metadata i64 %38, metadata !923, metadata !DIExpression()), !dbg !901, !psr.id !991
  %39 = and i64 %35, 71777214294589695, !dbg !992, !psr.id !993
  call void @llvm.dbg.value(metadata i64 %39, metadata !929, metadata !DIExpression()), !dbg !901, !psr.id !994
  %40 = shl i64 %38, 8, !dbg !995, !psr.id !996
  %41 = or i64 %36, %40, !dbg !997, !psr.id !998
  store i64 %41, i64* %0, align 8, !dbg !999, !psr.id !1000
  %42 = shl i64 %39, 8, !dbg !1001, !psr.id !1002
  %43 = or i64 %37, %42, !dbg !1003, !psr.id !1004
  store i64 %43, i64* %1, align 8, !dbg !1005, !psr.id !1006
  ret void, !dbg !1007, !psr.id !1008
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_interleave_out(i32* %0, i64 %1, i64 %2) #0 !dbg !1009 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1013, metadata !DIExpression()), !dbg !1014, !psr.id !1015
  call void @llvm.dbg.value(metadata i64 %1, metadata !1016, metadata !DIExpression()), !dbg !1014, !psr.id !1017
  call void @llvm.dbg.value(metadata i64 %2, metadata !1018, metadata !DIExpression()), !dbg !1014, !psr.id !1019
  %4 = and i64 %1, 71777214294589695, !dbg !1020, !psr.id !1021
  call void @llvm.dbg.value(metadata i64 %4, metadata !1022, metadata !DIExpression()), !dbg !1014, !psr.id !1023
  %5 = and i64 %2, 71777214294589695, !dbg !1024, !psr.id !1025
  call void @llvm.dbg.value(metadata i64 %5, metadata !1026, metadata !DIExpression()), !dbg !1014, !psr.id !1027
  %6 = lshr i64 %1, 8, !dbg !1028, !psr.id !1029
  %7 = and i64 %6, 71777214294589695, !dbg !1030, !psr.id !1031
  call void @llvm.dbg.value(metadata i64 %7, metadata !1032, metadata !DIExpression()), !dbg !1014, !psr.id !1033
  %8 = lshr i64 %2, 8, !dbg !1034, !psr.id !1035
  %9 = and i64 %8, 71777214294589695, !dbg !1036, !psr.id !1037
  call void @llvm.dbg.value(metadata i64 %9, metadata !1038, metadata !DIExpression()), !dbg !1014, !psr.id !1039
  %10 = lshr i64 %4, 8, !dbg !1040, !psr.id !1041
  %11 = or i64 %4, %10, !dbg !1042, !psr.id !1043
  call void @llvm.dbg.value(metadata i64 %11, metadata !1022, metadata !DIExpression()), !dbg !1014, !psr.id !1044
  %12 = lshr i64 %5, 8, !dbg !1045, !psr.id !1046
  %13 = or i64 %5, %12, !dbg !1047, !psr.id !1048
  call void @llvm.dbg.value(metadata i64 %13, metadata !1026, metadata !DIExpression()), !dbg !1014, !psr.id !1049
  %14 = lshr i64 %7, 8, !dbg !1050, !psr.id !1051
  %15 = or i64 %7, %14, !dbg !1052, !psr.id !1053
  call void @llvm.dbg.value(metadata i64 %15, metadata !1032, metadata !DIExpression()), !dbg !1014, !psr.id !1054
  %16 = lshr i64 %9, 8, !dbg !1055, !psr.id !1056
  %17 = or i64 %9, %16, !dbg !1057, !psr.id !1058
  call void @llvm.dbg.value(metadata i64 %17, metadata !1038, metadata !DIExpression()), !dbg !1014, !psr.id !1059
  %18 = and i64 %11, 281470681808895, !dbg !1060, !psr.id !1061
  call void @llvm.dbg.value(metadata i64 %18, metadata !1022, metadata !DIExpression()), !dbg !1014, !psr.id !1062
  %19 = and i64 %13, 281470681808895, !dbg !1063, !psr.id !1064
  call void @llvm.dbg.value(metadata i64 %19, metadata !1026, metadata !DIExpression()), !dbg !1014, !psr.id !1065
  %20 = and i64 %15, 281470681808895, !dbg !1066, !psr.id !1067
  call void @llvm.dbg.value(metadata i64 %20, metadata !1032, metadata !DIExpression()), !dbg !1014, !psr.id !1068
  %21 = and i64 %17, 281470681808895, !dbg !1069, !psr.id !1070
  call void @llvm.dbg.value(metadata i64 %21, metadata !1038, metadata !DIExpression()), !dbg !1014, !psr.id !1071
  %22 = trunc i64 %18 to i32, !dbg !1072, !psr.id !1073
  %23 = lshr i64 %18, 16, !dbg !1074, !psr.id !1075
  %24 = trunc i64 %23 to i32, !dbg !1076, !psr.id !1077
  %25 = or i32 %22, %24, !dbg !1078, !psr.id !1079
  %26 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1080, !psr.id !1081
  store i32 %25, i32* %26, align 4, !dbg !1082, !psr.id !1083
  %27 = trunc i64 %19 to i32, !dbg !1084, !psr.id !1085
  %28 = lshr i64 %19, 16, !dbg !1086, !psr.id !1087
  %29 = trunc i64 %28 to i32, !dbg !1088, !psr.id !1089
  %30 = or i32 %27, %29, !dbg !1090, !psr.id !1091
  %31 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1092, !psr.id !1093
  store i32 %30, i32* %31, align 4, !dbg !1094, !psr.id !1095
  %32 = trunc i64 %20 to i32, !dbg !1096, !psr.id !1097
  %33 = lshr i64 %20, 16, !dbg !1098, !psr.id !1099
  %34 = trunc i64 %33 to i32, !dbg !1100, !psr.id !1101
  %35 = or i32 %32, %34, !dbg !1102, !psr.id !1103
  %36 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !1104, !psr.id !1105
  store i32 %35, i32* %36, align 4, !dbg !1106, !psr.id !1107
  %37 = trunc i64 %21 to i32, !dbg !1108, !psr.id !1109
  %38 = lshr i64 %21, 16, !dbg !1110, !psr.id !1111
  %39 = trunc i64 %38 to i32, !dbg !1112, !psr.id !1113
  %40 = or i32 %37, %39, !dbg !1114, !psr.id !1115
  %41 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1116, !psr.id !1117
  store i32 %40, i32* %41, align 4, !dbg !1118, !psr.id !1119
  ret void, !dbg !1120, !psr.id !1121
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_ct64_keysched(i64* %0, i8* %1, i64 %2) #0 !dbg !1122 {
  %4 = alloca [60 x i32], align 16, !psr.id !1129
  %5 = alloca [8 x i64], align 16, !psr.id !1130
  call void @llvm.dbg.value(metadata i64* %0, metadata !1131, metadata !DIExpression()), !dbg !1132, !psr.id !1133
  call void @llvm.dbg.value(metadata i8* %1, metadata !1134, metadata !DIExpression()), !dbg !1132, !psr.id !1135
  call void @llvm.dbg.value(metadata i64 %2, metadata !1136, metadata !DIExpression()), !dbg !1132, !psr.id !1137
  call void @llvm.dbg.declare(metadata [60 x i32]* %4, metadata !1138, metadata !DIExpression()), !dbg !1142, !psr.id !1143
  switch i64 %2, label %9 [
    i64 16, label %6
    i64 24, label %7
    i64 32, label %8
  ], !dbg !1144, !psr.id !1145

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !1146, metadata !DIExpression()), !dbg !1132, !psr.id !1147
  br label %10, !dbg !1148, !psr.id !1150

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 12, metadata !1146, metadata !DIExpression()), !dbg !1132, !psr.id !1151
  br label %10, !dbg !1152, !psr.id !1153

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 14, metadata !1146, metadata !DIExpression()), !dbg !1132, !psr.id !1154
  br label %10, !dbg !1155, !psr.id !1156

9:                                                ; preds = %3
  br label %125, !dbg !1157, !psr.id !1158

10:                                               ; preds = %8, %7, %6
  %.07 = phi i32 [ 14, %8 ], [ 12, %7 ], [ 10, %6 ], !dbg !1159, !psr.id !1160
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1146, metadata !DIExpression()), !dbg !1132, !psr.id !1161
  %11 = lshr i64 %2, 2, !dbg !1162, !psr.id !1163
  %12 = trunc i64 %11 to i32, !dbg !1164, !psr.id !1165
  call void @llvm.dbg.value(metadata i32 %12, metadata !1166, metadata !DIExpression()), !dbg !1132, !psr.id !1167
  %13 = add i32 %.07, 1, !dbg !1168, !psr.id !1169
  %14 = shl i32 %13, 2, !dbg !1170, !psr.id !1171
  call void @llvm.dbg.value(metadata i32 %14, metadata !1172, metadata !DIExpression()), !dbg !1132, !psr.id !1173
  %15 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 0, !dbg !1174, !psr.id !1175
  %16 = lshr i64 %2, 2, !dbg !1176, !psr.id !1177
  call void @br_range_dec32le(i32* %15, i64 %16, i8* %1), !dbg !1178, !psr.id !1179
  %17 = lshr i64 %2, 2, !dbg !1180, !psr.id !1181
  %18 = sub i64 %17, 1, !dbg !1182, !psr.id !1183
  %19 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %18, !dbg !1184, !psr.id !1185
  %20 = load i32, i32* %19, align 4, !dbg !1184, !psr.id !1186
  call void @llvm.dbg.value(metadata i32 %20, metadata !1187, metadata !DIExpression()), !dbg !1132, !psr.id !1188
  call void @llvm.dbg.value(metadata i32 %12, metadata !1189, metadata !DIExpression()), !dbg !1132, !psr.id !1190
  call void @llvm.dbg.value(metadata i32 0, metadata !1191, metadata !DIExpression()), !dbg !1132, !psr.id !1192
  call void @llvm.dbg.value(metadata i32 0, metadata !1193, metadata !DIExpression()), !dbg !1132, !psr.id !1194
  br label %21, !dbg !1195, !psr.id !1197

21:                                               ; preds = %55, %10
  %.08 = phi i32 [ %12, %10 ], [ %56, %55 ], !dbg !1198, !psr.id !1199
  %.04 = phi i32 [ 0, %10 ], [ %.15, %55 ], !dbg !1198, !psr.id !1200
  %.02 = phi i32 [ 0, %10 ], [ %.13, %55 ], !dbg !1198, !psr.id !1201
  %.01 = phi i32 [ %20, %10 ], [ %47, %55 ], !dbg !1132, !psr.id !1202
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1187, metadata !DIExpression()), !dbg !1132, !psr.id !1203
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1193, metadata !DIExpression()), !dbg !1132, !psr.id !1204
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1191, metadata !DIExpression()), !dbg !1132, !psr.id !1205
  call void @llvm.dbg.value(metadata i32 %.08, metadata !1189, metadata !DIExpression()), !dbg !1132, !psr.id !1206
  %22 = icmp slt i32 %.08, %14, !dbg !1207, !psr.id !1209
  br i1 %22, label %23, label %57, !dbg !1210, !psr.id !1211

23:                                               ; preds = %21
  %24 = icmp eq i32 %.04, 0, !dbg !1212, !psr.id !1215
  br i1 %24, label %25, label %35, !dbg !1216, !psr.id !1217

25:                                               ; preds = %23
  %26 = shl i32 %.01, 24, !dbg !1218, !psr.id !1220
  %27 = lshr i32 %.01, 8, !dbg !1221, !psr.id !1222
  %28 = or i32 %26, %27, !dbg !1223, !psr.id !1224
  call void @llvm.dbg.value(metadata i32 %28, metadata !1187, metadata !DIExpression()), !dbg !1132, !psr.id !1225
  %29 = call i32 @sub_word(i32 %28), !dbg !1226, !psr.id !1227
  %30 = sext i32 %.02 to i64, !dbg !1228, !psr.id !1229
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* @Rcon, i64 0, i64 %30, !dbg !1228, !psr.id !1230
  %32 = load i8, i8* %31, align 1, !dbg !1228, !psr.id !1231
  %33 = zext i8 %32 to i32, !dbg !1228, !psr.id !1232
  %34 = xor i32 %29, %33, !dbg !1233, !psr.id !1234
  call void @llvm.dbg.value(metadata i32 %34, metadata !1187, metadata !DIExpression()), !dbg !1132, !psr.id !1235
  br label %42, !dbg !1236, !psr.id !1237

35:                                               ; preds = %23
  %36 = icmp sgt i32 %12, 6, !dbg !1238, !psr.id !1240
  br i1 %36, label %37, label %41, !dbg !1241, !psr.id !1242

37:                                               ; preds = %35
  %38 = icmp eq i32 %.04, 4, !dbg !1243, !psr.id !1244
  br i1 %38, label %39, label %41, !dbg !1245, !psr.id !1246

39:                                               ; preds = %37
  %40 = call i32 @sub_word(i32 %.01), !dbg !1247, !psr.id !1249
  call void @llvm.dbg.value(metadata i32 %40, metadata !1187, metadata !DIExpression()), !dbg !1132, !psr.id !1250
  br label %41, !dbg !1251, !psr.id !1252

41:                                               ; preds = %39, %37, %35
  %.1 = phi i32 [ %40, %39 ], [ %.01, %37 ], [ %.01, %35 ], !dbg !1132, !psr.id !1253
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1187, metadata !DIExpression()), !dbg !1132, !psr.id !1254
  br label %42, !psr.id !1255

42:                                               ; preds = %41, %25
  %.2 = phi i32 [ %34, %25 ], [ %.1, %41 ], !dbg !1256, !psr.id !1257
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1187, metadata !DIExpression()), !dbg !1132, !psr.id !1258
  %43 = sub nsw i32 %.08, %12, !dbg !1259, !psr.id !1260
  %44 = sext i32 %43 to i64, !dbg !1261, !psr.id !1262
  %45 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %44, !dbg !1261, !psr.id !1263
  %46 = load i32, i32* %45, align 4, !dbg !1261, !psr.id !1264
  %47 = xor i32 %.2, %46, !dbg !1265, !psr.id !1266
  call void @llvm.dbg.value(metadata i32 %47, metadata !1187, metadata !DIExpression()), !dbg !1132, !psr.id !1267
  %48 = sext i32 %.08 to i64, !dbg !1268, !psr.id !1269
  %49 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %48, !dbg !1268, !psr.id !1270
  store i32 %47, i32* %49, align 4, !dbg !1271, !psr.id !1272
  %50 = add nsw i32 %.04, 1, !dbg !1273, !psr.id !1275
  call void @llvm.dbg.value(metadata i32 %50, metadata !1191, metadata !DIExpression()), !dbg !1132, !psr.id !1276
  %51 = icmp eq i32 %50, %12, !dbg !1277, !psr.id !1278
  br i1 %51, label %52, label %54, !dbg !1279, !psr.id !1280

52:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 0, metadata !1191, metadata !DIExpression()), !dbg !1132, !psr.id !1281
  %53 = add nsw i32 %.02, 1, !dbg !1282, !psr.id !1284
  call void @llvm.dbg.value(metadata i32 %53, metadata !1193, metadata !DIExpression()), !dbg !1132, !psr.id !1285
  br label %54, !dbg !1286, !psr.id !1287

54:                                               ; preds = %52, %42
  %.15 = phi i32 [ 0, %52 ], [ %50, %42 ], !dbg !1288, !psr.id !1289
  %.13 = phi i32 [ %53, %52 ], [ %.02, %42 ], !dbg !1198, !psr.id !1290
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1193, metadata !DIExpression()), !dbg !1132, !psr.id !1291
  call void @llvm.dbg.value(metadata i32 %.15, metadata !1191, metadata !DIExpression()), !dbg !1132, !psr.id !1292
  br label %55, !dbg !1293, !psr.id !1294

55:                                               ; preds = %54
  %56 = add nsw i32 %.08, 1, !dbg !1295, !psr.id !1296
  call void @llvm.dbg.value(metadata i32 %56, metadata !1189, metadata !DIExpression()), !dbg !1132, !psr.id !1297
  br label %21, !dbg !1298, !llvm.loop !1299, !psr.id !1302

57:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 0, metadata !1189, metadata !DIExpression()), !dbg !1132, !psr.id !1303
  call void @llvm.dbg.value(metadata i32 0, metadata !1191, metadata !DIExpression()), !dbg !1132, !psr.id !1304
  br label %58, !dbg !1305, !psr.id !1307

58:                                               ; preds = %121, %57
  %.19 = phi i32 [ 0, %57 ], [ %122, %121 ], !dbg !1308, !psr.id !1309
  %.26 = phi i32 [ 0, %57 ], [ %123, %121 ], !dbg !1308, !psr.id !1310
  call void @llvm.dbg.value(metadata i32 %.26, metadata !1191, metadata !DIExpression()), !dbg !1132, !psr.id !1311
  call void @llvm.dbg.value(metadata i32 %.19, metadata !1189, metadata !DIExpression()), !dbg !1132, !psr.id !1312
  %59 = icmp slt i32 %.19, %14, !dbg !1313, !psr.id !1315
  br i1 %59, label %60, label %124, !dbg !1316, !psr.id !1317

60:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata [8 x i64]* %5, metadata !1318, metadata !DIExpression()), !dbg !1323, !psr.id !1324
  %61 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1325, !psr.id !1326
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !1327, !psr.id !1328
  %63 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 0, !dbg !1329, !psr.id !1330
  %64 = sext i32 %.19 to i64, !dbg !1331, !psr.id !1332
  %65 = getelementptr inbounds i32, i32* %63, i64 %64, !dbg !1331, !psr.id !1333
  call void @br_aes_ct64_interleave_in(i64* %61, i64* %62, i32* %65), !dbg !1334, !psr.id !1335
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1336, !psr.id !1337
  %67 = load i64, i64* %66, align 16, !dbg !1336, !psr.id !1338
  %68 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1, !dbg !1339, !psr.id !1340
  store i64 %67, i64* %68, align 8, !dbg !1341, !psr.id !1342
  %69 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1343, !psr.id !1344
  %70 = load i64, i64* %69, align 16, !dbg !1343, !psr.id !1345
  %71 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2, !dbg !1346, !psr.id !1347
  store i64 %70, i64* %71, align 16, !dbg !1348, !psr.id !1349
  %72 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1350, !psr.id !1351
  %73 = load i64, i64* %72, align 16, !dbg !1350, !psr.id !1352
  %74 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3, !dbg !1353, !psr.id !1354
  store i64 %73, i64* %74, align 8, !dbg !1355, !psr.id !1356
  %75 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !1357, !psr.id !1358
  %76 = load i64, i64* %75, align 16, !dbg !1357, !psr.id !1359
  %77 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5, !dbg !1360, !psr.id !1361
  store i64 %76, i64* %77, align 8, !dbg !1362, !psr.id !1363
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !1364, !psr.id !1365
  %79 = load i64, i64* %78, align 16, !dbg !1364, !psr.id !1366
  %80 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6, !dbg !1367, !psr.id !1368
  store i64 %79, i64* %80, align 16, !dbg !1369, !psr.id !1370
  %81 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !1371, !psr.id !1372
  %82 = load i64, i64* %81, align 16, !dbg !1371, !psr.id !1373
  %83 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7, !dbg !1374, !psr.id !1375
  store i64 %82, i64* %83, align 8, !dbg !1376, !psr.id !1377
  %84 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1378, !psr.id !1379
  call void @br_aes_ct64_ortho(i64* %84), !dbg !1380, !psr.id !1381
  %85 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1382, !psr.id !1383
  %86 = load i64, i64* %85, align 16, !dbg !1382, !psr.id !1384
  %87 = and i64 %86, 1229782938247303441, !dbg !1385, !psr.id !1386
  %88 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1, !dbg !1387, !psr.id !1388
  %89 = load i64, i64* %88, align 8, !dbg !1387, !psr.id !1389
  %90 = and i64 %89, 2459565876494606882, !dbg !1390, !psr.id !1391
  %91 = or i64 %87, %90, !dbg !1392, !psr.id !1393
  %92 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2, !dbg !1394, !psr.id !1395
  %93 = load i64, i64* %92, align 16, !dbg !1394, !psr.id !1396
  %94 = and i64 %93, 4919131752989213764, !dbg !1397, !psr.id !1398
  %95 = or i64 %91, %94, !dbg !1399, !psr.id !1400
  %96 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3, !dbg !1401, !psr.id !1402
  %97 = load i64, i64* %96, align 8, !dbg !1401, !psr.id !1403
  %98 = and i64 %97, -8608480567731124088, !dbg !1404, !psr.id !1405
  %99 = or i64 %95, %98, !dbg !1406, !psr.id !1407
  %100 = add nsw i32 %.26, 0, !dbg !1408, !psr.id !1409
  %101 = sext i32 %100 to i64, !dbg !1410, !psr.id !1411
  %102 = getelementptr inbounds i64, i64* %0, i64 %101, !dbg !1410, !psr.id !1412, !PointTainted !1413
  store i64 %99, i64* %102, align 8, !dbg !1414, !psr.id !1415
  %103 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !1416, !psr.id !1417
  %104 = load i64, i64* %103, align 16, !dbg !1416, !psr.id !1418
  %105 = and i64 %104, 1229782938247303441, !dbg !1419, !psr.id !1420
  %106 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5, !dbg !1421, !psr.id !1422
  %107 = load i64, i64* %106, align 8, !dbg !1421, !psr.id !1423
  %108 = and i64 %107, 2459565876494606882, !dbg !1424, !psr.id !1425
  %109 = or i64 %105, %108, !dbg !1426, !psr.id !1427
  %110 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6, !dbg !1428, !psr.id !1429
  %111 = load i64, i64* %110, align 16, !dbg !1428, !psr.id !1430
  %112 = and i64 %111, 4919131752989213764, !dbg !1431, !psr.id !1432
  %113 = or i64 %109, %112, !dbg !1433, !psr.id !1434
  %114 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7, !dbg !1435, !psr.id !1436
  %115 = load i64, i64* %114, align 8, !dbg !1435, !psr.id !1437
  %116 = and i64 %115, -8608480567731124088, !dbg !1438, !psr.id !1439
  %117 = or i64 %113, %116, !dbg !1440, !psr.id !1441
  %118 = add nsw i32 %.26, 1, !dbg !1442, !psr.id !1443
  %119 = sext i32 %118 to i64, !dbg !1444, !psr.id !1445
  %120 = getelementptr inbounds i64, i64* %0, i64 %119, !dbg !1444, !psr.id !1446, !PointTainted !1413
  store i64 %117, i64* %120, align 8, !dbg !1447, !psr.id !1448
  br label %121, !dbg !1449, !psr.id !1450

121:                                              ; preds = %60
  %122 = add nsw i32 %.19, 4, !dbg !1451, !psr.id !1452
  call void @llvm.dbg.value(metadata i32 %122, metadata !1189, metadata !DIExpression()), !dbg !1132, !psr.id !1453
  %123 = add nsw i32 %.26, 2, !dbg !1454, !psr.id !1455
  call void @llvm.dbg.value(metadata i32 %123, metadata !1191, metadata !DIExpression()), !dbg !1132, !psr.id !1456
  br label %58, !dbg !1457, !llvm.loop !1458, !psr.id !1460

124:                                              ; preds = %58
  br label %125, !dbg !1461, !psr.id !1462

125:                                              ; preds = %124, %9
  %.0 = phi i32 [ 0, %9 ], [ %.07, %124 ], !dbg !1132, !psr.id !1463
  ret i32 %.0, !dbg !1464, !psr.id !1465
}

declare dso_local void @br_range_dec32le(i32*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @sub_word(i32 %0) #0 !dbg !1466 {
  %2 = alloca [8 x i64], align 16, !psr.id !1469
  call void @llvm.dbg.value(metadata i32 %0, metadata !1470, metadata !DIExpression()), !dbg !1471, !psr.id !1472
  call void @llvm.dbg.declare(metadata [8 x i64]* %2, metadata !1473, metadata !DIExpression()), !dbg !1474, !psr.id !1475
  %3 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1476, !psr.id !1477
  %4 = bitcast i64* %3 to i8*, !dbg !1476, !psr.id !1478
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 64, i1 false), !dbg !1476, !psr.id !1479
  %5 = zext i32 %0 to i64, !dbg !1480, !psr.id !1481
  %6 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1482, !psr.id !1483
  store i64 %5, i64* %6, align 16, !dbg !1484, !psr.id !1485
  %7 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1486, !psr.id !1487
  call void @br_aes_ct64_ortho(i64* %7), !dbg !1488, !psr.id !1489
  %8 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1490, !psr.id !1491
  call void @br_aes_ct64_bitslice_Sbox(i64* %8), !dbg !1492, !psr.id !1493
  %9 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1494, !psr.id !1495
  call void @br_aes_ct64_ortho(i64* %9), !dbg !1496, !psr.id !1497
  %10 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1498, !psr.id !1499
  %11 = load i64, i64* %10, align 16, !dbg !1498, !psr.id !1500
  %12 = trunc i64 %11 to i32, !dbg !1501, !psr.id !1502
  ret i32 %12, !dbg !1503, !psr.id !1504
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_skey_expand(i64* %0, i32 %1, i64* %2) #0 !dbg !1505 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1510, metadata !DIExpression()), !dbg !1511, !psr.id !1512
  call void @llvm.dbg.value(metadata i32 %1, metadata !1513, metadata !DIExpression()), !dbg !1511, !psr.id !1514
  call void @llvm.dbg.value(metadata i64* %2, metadata !1515, metadata !DIExpression()), !dbg !1511, !psr.id !1516
  %4 = add i32 %1, 1, !dbg !1517, !psr.id !1518
  %5 = shl i32 %4, 1, !dbg !1519, !psr.id !1520
  call void @llvm.dbg.value(metadata i32 %5, metadata !1521, metadata !DIExpression()), !dbg !1511, !psr.id !1522
  call void @llvm.dbg.value(metadata i32 0, metadata !1523, metadata !DIExpression()), !dbg !1511, !psr.id !1524
  call void @llvm.dbg.value(metadata i32 0, metadata !1525, metadata !DIExpression()), !dbg !1511, !psr.id !1526
  br label %6, !dbg !1527, !psr.id !1529

6:                                                ; preds = %39, %3
  %.01 = phi i32 [ 0, %3 ], [ %40, %39 ], !dbg !1530, !psr.id !1531
  %.0 = phi i32 [ 0, %3 ], [ %41, %39 ], !dbg !1530, !psr.id !1532
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1525, metadata !DIExpression()), !dbg !1511, !psr.id !1533
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1523, metadata !DIExpression()), !dbg !1511, !psr.id !1534
  %7 = icmp ult i32 %.01, %5, !dbg !1535, !psr.id !1537
  br i1 %7, label %8, label %42, !dbg !1538, !psr.id !1539

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64, !dbg !1540, !psr.id !1542
  %10 = getelementptr inbounds i64, i64* %2, i64 %9, !dbg !1540, !psr.id !1543
  %11 = load i64, i64* %10, align 8, !dbg !1540, !psr.id !1544
  call void @llvm.dbg.value(metadata i64 %11, metadata !1545, metadata !DIExpression()), !dbg !1546, !psr.id !1547
  call void @llvm.dbg.value(metadata i64 %11, metadata !1548, metadata !DIExpression()), !dbg !1546, !psr.id !1549
  call void @llvm.dbg.value(metadata i64 %11, metadata !1550, metadata !DIExpression()), !dbg !1546, !psr.id !1551
  call void @llvm.dbg.value(metadata i64 %11, metadata !1552, metadata !DIExpression()), !dbg !1546, !psr.id !1553
  %12 = and i64 %11, 1229782938247303441, !dbg !1554, !psr.id !1555
  call void @llvm.dbg.value(metadata i64 %12, metadata !1552, metadata !DIExpression()), !dbg !1546, !psr.id !1556
  %13 = and i64 %11, 2459565876494606882, !dbg !1557, !psr.id !1558
  call void @llvm.dbg.value(metadata i64 %13, metadata !1550, metadata !DIExpression()), !dbg !1546, !psr.id !1559
  %14 = and i64 %11, 4919131752989213764, !dbg !1560, !psr.id !1561
  call void @llvm.dbg.value(metadata i64 %14, metadata !1548, metadata !DIExpression()), !dbg !1546, !psr.id !1562
  %15 = and i64 %11, -8608480567731124088, !dbg !1563, !psr.id !1564
  call void @llvm.dbg.value(metadata i64 %15, metadata !1545, metadata !DIExpression()), !dbg !1546, !psr.id !1565
  %16 = lshr i64 %13, 1, !dbg !1566, !psr.id !1567
  call void @llvm.dbg.value(metadata i64 %16, metadata !1550, metadata !DIExpression()), !dbg !1546, !psr.id !1568
  %17 = lshr i64 %14, 2, !dbg !1569, !psr.id !1570
  call void @llvm.dbg.value(metadata i64 %17, metadata !1548, metadata !DIExpression()), !dbg !1546, !psr.id !1571
  %18 = lshr i64 %15, 3, !dbg !1572, !psr.id !1573
  call void @llvm.dbg.value(metadata i64 %18, metadata !1545, metadata !DIExpression()), !dbg !1546, !psr.id !1574
  %19 = shl i64 %12, 4, !dbg !1575, !psr.id !1576
  %20 = sub i64 %19, %12, !dbg !1577, !psr.id !1578
  %21 = add i32 %.0, 0, !dbg !1579, !psr.id !1580
  %22 = zext i32 %21 to i64, !dbg !1581, !psr.id !1582
  %23 = getelementptr inbounds i64, i64* %0, i64 %22, !dbg !1581, !psr.id !1583
  store i64 %20, i64* %23, align 8, !dbg !1584, !psr.id !1585
  %24 = shl i64 %16, 4, !dbg !1586, !psr.id !1587
  %25 = sub i64 %24, %16, !dbg !1588, !psr.id !1589
  %26 = add i32 %.0, 1, !dbg !1590, !psr.id !1591
  %27 = zext i32 %26 to i64, !dbg !1592, !psr.id !1593
  %28 = getelementptr inbounds i64, i64* %0, i64 %27, !dbg !1592, !psr.id !1594
  store i64 %25, i64* %28, align 8, !dbg !1595, !psr.id !1596
  %29 = shl i64 %17, 4, !dbg !1597, !psr.id !1598
  %30 = sub i64 %29, %17, !dbg !1599, !psr.id !1600
  %31 = add i32 %.0, 2, !dbg !1601, !psr.id !1602
  %32 = zext i32 %31 to i64, !dbg !1603, !psr.id !1604
  %33 = getelementptr inbounds i64, i64* %0, i64 %32, !dbg !1603, !psr.id !1605
  store i64 %30, i64* %33, align 8, !dbg !1606, !psr.id !1607
  %34 = shl i64 %18, 4, !dbg !1608, !psr.id !1609
  %35 = sub i64 %34, %18, !dbg !1610, !psr.id !1611
  %36 = add i32 %.0, 3, !dbg !1612, !psr.id !1613
  %37 = zext i32 %36 to i64, !dbg !1614, !psr.id !1615
  %38 = getelementptr inbounds i64, i64* %0, i64 %37, !dbg !1614, !psr.id !1616
  store i64 %35, i64* %38, align 8, !dbg !1617, !psr.id !1618
  br label %39, !dbg !1619, !psr.id !1620

39:                                               ; preds = %8
  %40 = add i32 %.01, 1, !dbg !1621, !psr.id !1622
  call void @llvm.dbg.value(metadata i32 %40, metadata !1523, metadata !DIExpression()), !dbg !1511, !psr.id !1623
  %41 = add i32 %.0, 4, !dbg !1624, !psr.id !1625
  call void @llvm.dbg.value(metadata i32 %41, metadata !1525, metadata !DIExpression()), !dbg !1511, !psr.id !1626
  br label %6, !dbg !1627, !llvm.loop !1628, !psr.id !1630

42:                                               ; preds = %6
  ret void, !dbg !1631, !psr.id !1632
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_sched_wrapper(i32* %0, i8* %1, i64 %2) #0 !dbg !1633 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1636, metadata !DIExpression()), !dbg !1637, !psr.id !1638
  call void @llvm.dbg.value(metadata i8* %1, metadata !1639, metadata !DIExpression()), !dbg !1637, !psr.id !1640
  call void @llvm.dbg.value(metadata i64 %2, metadata !1641, metadata !DIExpression()), !dbg !1637, !psr.id !1642
  %4 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %0), !dbg !1643, !psr.id !1644
  call void @public_in(%struct.smack_value* %4), !dbg !1645, !psr.id !1646
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1647, !psr.id !1648
  call void @public_in(%struct.smack_value* %5), !dbg !1649, !psr.id !1650
  %6 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !1651, !psr.id !1652
  call void @public_in(%struct.smack_value* %6), !dbg !1653, !psr.id !1654
  %7 = bitcast i32* %0 to i64*, !dbg !1655, !psr.id !1656
  %8 = call i32 @br_aes_ct64_keysched(i64* %7, i8* %1, i64 %2), !dbg !1657, !psr.id !1658
  ret void, !dbg !1659, !psr.id !1660
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_sched_wrapper_t() #0 !dbg !1661 {
  %1 = call i64 (...) @getuns(), !dbg !1664, !psr.id !1665
  call void @llvm.dbg.value(metadata i64 %1, metadata !1666, metadata !DIExpression()), !dbg !1667, !psr.id !1668
  %2 = call i32* (...) @getpt(), !dbg !1669, !psr.id !1670
  call void @llvm.dbg.value(metadata i32* %2, metadata !1671, metadata !DIExpression()), !dbg !1667, !psr.id !1672
  call void @llvm.dbg.value(metadata i8* bitcast (i8* (...)* @getkey to i8*), metadata !1673, metadata !DIExpression()), !dbg !1667, !psr.id !1674
  %3 = bitcast i32* %2 to i64*, !dbg !1675, !psr.id !1676
  %4 = call i32 @br_aes_ct64_keysched(i64* %3, i8* bitcast (i8* (...)* @getkey to i8*), i64 %1), !dbg !1677, !psr.id !1678
  ret void, !dbg !1679, !psr.id !1680
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
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!2, !22}
!llvm.ident = !{!24, !24}
!llvm.module.flags = !{!25, !26, !27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Rcon", scope: !2, file: !3, line: 290, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/aes_ct64.c", directory: "/home/luwei/bech-back/BearSSL/AES_ct64")
!4 = !{}
!5 = !{!6, !11, !14}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !13)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!0}
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 80, elements: !19)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !{!20}
!20 = !DISubrange(count: 10)
!21 = !{!"0"}
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "key_sched.c", directory: "/home/luwei/bech-back/BearSSL/AES_ct64")
!24 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !3, file: !3, line: 29, type: !29, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!32 = !DILocalVariable(name: "q", arg: 1, scope: !28, file: !3, line: 29, type: !31)
!33 = !DILocation(line: 0, scope: !28)
!34 = !{!"1"}
!35 = !DILocation(line: 56, column: 7, scope: !28)
!36 = !{!"2"}
!37 = !{!"3"}
!38 = !DILocalVariable(name: "x0", scope: !28, file: !3, line: 41, type: !6)
!39 = !{!"4"}
!40 = !DILocation(line: 57, column: 7, scope: !28)
!41 = !{!"5"}
!42 = !{!"6"}
!43 = !DILocalVariable(name: "x1", scope: !28, file: !3, line: 41, type: !6)
!44 = !{!"7"}
!45 = !DILocation(line: 58, column: 7, scope: !28)
!46 = !{!"8"}
!47 = !{!"9"}
!48 = !DILocalVariable(name: "x2", scope: !28, file: !3, line: 41, type: !6)
!49 = !{!"10"}
!50 = !DILocation(line: 59, column: 7, scope: !28)
!51 = !{!"11"}
!52 = !{!"12"}
!53 = !DILocalVariable(name: "x3", scope: !28, file: !3, line: 41, type: !6)
!54 = !{!"13"}
!55 = !DILocation(line: 60, column: 7, scope: !28)
!56 = !{!"14"}
!57 = !{!"15"}
!58 = !DILocalVariable(name: "x4", scope: !28, file: !3, line: 41, type: !6)
!59 = !{!"16"}
!60 = !DILocation(line: 61, column: 7, scope: !28)
!61 = !{!"17"}
!62 = !{!"18"}
!63 = !DILocalVariable(name: "x5", scope: !28, file: !3, line: 41, type: !6)
!64 = !{!"19"}
!65 = !DILocation(line: 62, column: 7, scope: !28)
!66 = !{!"20"}
!67 = !{!"21"}
!68 = !DILocalVariable(name: "x6", scope: !28, file: !3, line: 41, type: !6)
!69 = !{!"22"}
!70 = !DILocation(line: 63, column: 7, scope: !28)
!71 = !{!"23"}
!72 = !{!"24"}
!73 = !DILocalVariable(name: "x7", scope: !28, file: !3, line: 41, type: !6)
!74 = !{!"25"}
!75 = !DILocation(line: 68, column: 11, scope: !28)
!76 = !{!"26"}
!77 = !DILocalVariable(name: "y14", scope: !28, file: !3, line: 43, type: !6)
!78 = !{!"27"}
!79 = !DILocation(line: 69, column: 11, scope: !28)
!80 = !{!"28"}
!81 = !DILocalVariable(name: "y13", scope: !28, file: !3, line: 43, type: !6)
!82 = !{!"29"}
!83 = !DILocation(line: 70, column: 10, scope: !28)
!84 = !{!"30"}
!85 = !DILocalVariable(name: "y9", scope: !28, file: !3, line: 42, type: !6)
!86 = !{!"31"}
!87 = !DILocation(line: 71, column: 10, scope: !28)
!88 = !{!"32"}
!89 = !DILocalVariable(name: "y8", scope: !28, file: !3, line: 42, type: !6)
!90 = !{!"33"}
!91 = !DILocation(line: 72, column: 10, scope: !28)
!92 = !{!"34"}
!93 = !DILocalVariable(name: "t0", scope: !28, file: !3, line: 47, type: !6)
!94 = !{!"35"}
!95 = !DILocation(line: 73, column: 10, scope: !28)
!96 = !{!"36"}
!97 = !DILocalVariable(name: "y1", scope: !28, file: !3, line: 42, type: !6)
!98 = !{!"37"}
!99 = !DILocation(line: 74, column: 10, scope: !28)
!100 = !{!"38"}
!101 = !DILocalVariable(name: "y4", scope: !28, file: !3, line: 42, type: !6)
!102 = !{!"39"}
!103 = !DILocation(line: 75, column: 12, scope: !28)
!104 = !{!"40"}
!105 = !DILocalVariable(name: "y12", scope: !28, file: !3, line: 43, type: !6)
!106 = !{!"41"}
!107 = !DILocation(line: 76, column: 10, scope: !28)
!108 = !{!"42"}
!109 = !DILocalVariable(name: "y2", scope: !28, file: !3, line: 42, type: !6)
!110 = !{!"43"}
!111 = !DILocation(line: 77, column: 10, scope: !28)
!112 = !{!"44"}
!113 = !DILocalVariable(name: "y5", scope: !28, file: !3, line: 42, type: !6)
!114 = !{!"45"}
!115 = !DILocation(line: 78, column: 10, scope: !28)
!116 = !{!"46"}
!117 = !DILocalVariable(name: "y3", scope: !28, file: !3, line: 42, type: !6)
!118 = !{!"47"}
!119 = !DILocation(line: 79, column: 10, scope: !28)
!120 = !{!"48"}
!121 = !DILocalVariable(name: "t1", scope: !28, file: !3, line: 47, type: !6)
!122 = !{!"49"}
!123 = !DILocation(line: 80, column: 11, scope: !28)
!124 = !{!"50"}
!125 = !DILocalVariable(name: "y15", scope: !28, file: !3, line: 43, type: !6)
!126 = !{!"51"}
!127 = !DILocation(line: 81, column: 11, scope: !28)
!128 = !{!"52"}
!129 = !DILocalVariable(name: "y20", scope: !28, file: !3, line: 44, type: !6)
!130 = !{!"53"}
!131 = !DILocation(line: 82, column: 11, scope: !28)
!132 = !{!"54"}
!133 = !DILocalVariable(name: "y6", scope: !28, file: !3, line: 42, type: !6)
!134 = !{!"55"}
!135 = !DILocation(line: 83, column: 12, scope: !28)
!136 = !{!"56"}
!137 = !DILocalVariable(name: "y10", scope: !28, file: !3, line: 43, type: !6)
!138 = !{!"57"}
!139 = !DILocation(line: 84, column: 12, scope: !28)
!140 = !{!"58"}
!141 = !DILocalVariable(name: "y11", scope: !28, file: !3, line: 43, type: !6)
!142 = !{!"59"}
!143 = !DILocation(line: 85, column: 10, scope: !28)
!144 = !{!"60"}
!145 = !DILocalVariable(name: "y7", scope: !28, file: !3, line: 42, type: !6)
!146 = !{!"61"}
!147 = !DILocation(line: 86, column: 12, scope: !28)
!148 = !{!"62"}
!149 = !DILocalVariable(name: "y17", scope: !28, file: !3, line: 43, type: !6)
!150 = !{!"63"}
!151 = !DILocation(line: 87, column: 12, scope: !28)
!152 = !{!"64"}
!153 = !DILocalVariable(name: "y19", scope: !28, file: !3, line: 43, type: !6)
!154 = !{!"65"}
!155 = !DILocation(line: 88, column: 11, scope: !28)
!156 = !{!"66"}
!157 = !DILocalVariable(name: "y16", scope: !28, file: !3, line: 43, type: !6)
!158 = !{!"67"}
!159 = !DILocation(line: 89, column: 12, scope: !28)
!160 = !{!"68"}
!161 = !DILocalVariable(name: "y21", scope: !28, file: !3, line: 44, type: !6)
!162 = !{!"69"}
!163 = !DILocation(line: 90, column: 11, scope: !28)
!164 = !{!"70"}
!165 = !DILocalVariable(name: "y18", scope: !28, file: !3, line: 43, type: !6)
!166 = !{!"71"}
!167 = !DILocation(line: 95, column: 11, scope: !28)
!168 = !{!"72"}
!169 = !DILocalVariable(name: "t2", scope: !28, file: !3, line: 47, type: !6)
!170 = !{!"73"}
!171 = !DILocation(line: 96, column: 10, scope: !28)
!172 = !{!"74"}
!173 = !DILocalVariable(name: "t3", scope: !28, file: !3, line: 47, type: !6)
!174 = !{!"75"}
!175 = !DILocation(line: 97, column: 10, scope: !28)
!176 = !{!"76"}
!177 = !DILocalVariable(name: "t4", scope: !28, file: !3, line: 47, type: !6)
!178 = !{!"77"}
!179 = !DILocation(line: 98, column: 10, scope: !28)
!180 = !{!"78"}
!181 = !DILocalVariable(name: "t5", scope: !28, file: !3, line: 47, type: !6)
!182 = !{!"79"}
!183 = !DILocation(line: 99, column: 10, scope: !28)
!184 = !{!"80"}
!185 = !DILocalVariable(name: "t6", scope: !28, file: !3, line: 47, type: !6)
!186 = !{!"81"}
!187 = !DILocation(line: 100, column: 11, scope: !28)
!188 = !{!"82"}
!189 = !DILocalVariable(name: "t7", scope: !28, file: !3, line: 47, type: !6)
!190 = !{!"83"}
!191 = !DILocation(line: 101, column: 10, scope: !28)
!192 = !{!"84"}
!193 = !DILocalVariable(name: "t8", scope: !28, file: !3, line: 47, type: !6)
!194 = !{!"85"}
!195 = !DILocation(line: 102, column: 10, scope: !28)
!196 = !{!"86"}
!197 = !DILocalVariable(name: "t9", scope: !28, file: !3, line: 47, type: !6)
!198 = !{!"87"}
!199 = !DILocation(line: 103, column: 11, scope: !28)
!200 = !{!"88"}
!201 = !DILocalVariable(name: "t10", scope: !28, file: !3, line: 48, type: !6)
!202 = !{!"89"}
!203 = !DILocation(line: 104, column: 12, scope: !28)
!204 = !{!"90"}
!205 = !DILocalVariable(name: "t11", scope: !28, file: !3, line: 48, type: !6)
!206 = !{!"91"}
!207 = !DILocation(line: 105, column: 11, scope: !28)
!208 = !{!"92"}
!209 = !DILocalVariable(name: "t12", scope: !28, file: !3, line: 48, type: !6)
!210 = !{!"93"}
!211 = !DILocation(line: 106, column: 12, scope: !28)
!212 = !{!"94"}
!213 = !DILocalVariable(name: "t13", scope: !28, file: !3, line: 48, type: !6)
!214 = !{!"95"}
!215 = !DILocation(line: 107, column: 12, scope: !28)
!216 = !{!"96"}
!217 = !DILocalVariable(name: "t14", scope: !28, file: !3, line: 48, type: !6)
!218 = !{!"97"}
!219 = !DILocation(line: 108, column: 11, scope: !28)
!220 = !{!"98"}
!221 = !DILocalVariable(name: "t15", scope: !28, file: !3, line: 48, type: !6)
!222 = !{!"99"}
!223 = !DILocation(line: 109, column: 12, scope: !28)
!224 = !{!"100"}
!225 = !DILocalVariable(name: "t16", scope: !28, file: !3, line: 48, type: !6)
!226 = !{!"101"}
!227 = !DILocation(line: 110, column: 11, scope: !28)
!228 = !{!"102"}
!229 = !DILocalVariable(name: "t17", scope: !28, file: !3, line: 48, type: !6)
!230 = !{!"103"}
!231 = !DILocation(line: 111, column: 11, scope: !28)
!232 = !{!"104"}
!233 = !DILocalVariable(name: "t18", scope: !28, file: !3, line: 48, type: !6)
!234 = !{!"105"}
!235 = !DILocation(line: 112, column: 11, scope: !28)
!236 = !{!"106"}
!237 = !DILocalVariable(name: "t19", scope: !28, file: !3, line: 48, type: !6)
!238 = !{!"107"}
!239 = !DILocation(line: 113, column: 12, scope: !28)
!240 = !{!"108"}
!241 = !DILocalVariable(name: "t20", scope: !28, file: !3, line: 49, type: !6)
!242 = !{!"109"}
!243 = !DILocation(line: 114, column: 12, scope: !28)
!244 = !{!"110"}
!245 = !DILocalVariable(name: "t21", scope: !28, file: !3, line: 49, type: !6)
!246 = !{!"111"}
!247 = !DILocation(line: 115, column: 12, scope: !28)
!248 = !{!"112"}
!249 = !DILocalVariable(name: "t22", scope: !28, file: !3, line: 49, type: !6)
!250 = !{!"113"}
!251 = !DILocation(line: 116, column: 12, scope: !28)
!252 = !{!"114"}
!253 = !DILocalVariable(name: "t23", scope: !28, file: !3, line: 49, type: !6)
!254 = !{!"115"}
!255 = !DILocation(line: 117, column: 12, scope: !28)
!256 = !{!"116"}
!257 = !DILocalVariable(name: "t24", scope: !28, file: !3, line: 49, type: !6)
!258 = !{!"117"}
!259 = !DILocation(line: 119, column: 12, scope: !28)
!260 = !{!"118"}
!261 = !DILocalVariable(name: "t25", scope: !28, file: !3, line: 49, type: !6)
!262 = !{!"119"}
!263 = !DILocation(line: 120, column: 12, scope: !28)
!264 = !{!"120"}
!265 = !DILocalVariable(name: "t26", scope: !28, file: !3, line: 49, type: !6)
!266 = !{!"121"}
!267 = !DILocation(line: 121, column: 12, scope: !28)
!268 = !{!"122"}
!269 = !DILocalVariable(name: "t27", scope: !28, file: !3, line: 49, type: !6)
!270 = !{!"123"}
!271 = !DILocation(line: 122, column: 12, scope: !28)
!272 = !{!"124"}
!273 = !DILocalVariable(name: "t28", scope: !28, file: !3, line: 49, type: !6)
!274 = !{!"125"}
!275 = !DILocation(line: 123, column: 12, scope: !28)
!276 = !{!"126"}
!277 = !DILocalVariable(name: "t29", scope: !28, file: !3, line: 49, type: !6)
!278 = !{!"127"}
!279 = !DILocation(line: 124, column: 12, scope: !28)
!280 = !{!"128"}
!281 = !DILocalVariable(name: "t30", scope: !28, file: !3, line: 50, type: !6)
!282 = !{!"129"}
!283 = !DILocation(line: 125, column: 12, scope: !28)
!284 = !{!"130"}
!285 = !DILocalVariable(name: "t31", scope: !28, file: !3, line: 50, type: !6)
!286 = !{!"131"}
!287 = !DILocation(line: 126, column: 12, scope: !28)
!288 = !{!"132"}
!289 = !DILocalVariable(name: "t32", scope: !28, file: !3, line: 50, type: !6)
!290 = !{!"133"}
!291 = !DILocation(line: 127, column: 12, scope: !28)
!292 = !{!"134"}
!293 = !DILocalVariable(name: "t33", scope: !28, file: !3, line: 50, type: !6)
!294 = !{!"135"}
!295 = !DILocation(line: 128, column: 12, scope: !28)
!296 = !{!"136"}
!297 = !DILocalVariable(name: "t34", scope: !28, file: !3, line: 50, type: !6)
!298 = !{!"137"}
!299 = !DILocation(line: 129, column: 12, scope: !28)
!300 = !{!"138"}
!301 = !DILocalVariable(name: "t35", scope: !28, file: !3, line: 50, type: !6)
!302 = !{!"139"}
!303 = !DILocation(line: 130, column: 12, scope: !28)
!304 = !{!"140"}
!305 = !DILocalVariable(name: "t36", scope: !28, file: !3, line: 50, type: !6)
!306 = !{!"141"}
!307 = !DILocation(line: 131, column: 12, scope: !28)
!308 = !{!"142"}
!309 = !DILocalVariable(name: "t37", scope: !28, file: !3, line: 50, type: !6)
!310 = !{!"143"}
!311 = !DILocation(line: 132, column: 12, scope: !28)
!312 = !{!"144"}
!313 = !DILocalVariable(name: "t38", scope: !28, file: !3, line: 50, type: !6)
!314 = !{!"145"}
!315 = !DILocation(line: 133, column: 12, scope: !28)
!316 = !{!"146"}
!317 = !DILocalVariable(name: "t39", scope: !28, file: !3, line: 50, type: !6)
!318 = !{!"147"}
!319 = !DILocation(line: 134, column: 12, scope: !28)
!320 = !{!"148"}
!321 = !DILocalVariable(name: "t40", scope: !28, file: !3, line: 51, type: !6)
!322 = !{!"149"}
!323 = !DILocation(line: 136, column: 12, scope: !28)
!324 = !{!"150"}
!325 = !DILocalVariable(name: "t41", scope: !28, file: !3, line: 51, type: !6)
!326 = !{!"151"}
!327 = !DILocation(line: 137, column: 12, scope: !28)
!328 = !{!"152"}
!329 = !DILocalVariable(name: "t42", scope: !28, file: !3, line: 51, type: !6)
!330 = !{!"153"}
!331 = !DILocation(line: 138, column: 12, scope: !28)
!332 = !{!"154"}
!333 = !DILocalVariable(name: "t43", scope: !28, file: !3, line: 51, type: !6)
!334 = !{!"155"}
!335 = !DILocation(line: 139, column: 12, scope: !28)
!336 = !{!"156"}
!337 = !DILocalVariable(name: "t44", scope: !28, file: !3, line: 51, type: !6)
!338 = !{!"157"}
!339 = !DILocation(line: 140, column: 12, scope: !28)
!340 = !{!"158"}
!341 = !DILocalVariable(name: "t45", scope: !28, file: !3, line: 51, type: !6)
!342 = !{!"159"}
!343 = !DILocation(line: 141, column: 11, scope: !28)
!344 = !{!"160"}
!345 = !DILocalVariable(name: "z0", scope: !28, file: !3, line: 45, type: !6)
!346 = !{!"161"}
!347 = !DILocation(line: 142, column: 11, scope: !28)
!348 = !{!"162"}
!349 = !DILocalVariable(name: "z1", scope: !28, file: !3, line: 45, type: !6)
!350 = !{!"163"}
!351 = !DILocation(line: 143, column: 11, scope: !28)
!352 = !{!"164"}
!353 = !DILocalVariable(name: "z2", scope: !28, file: !3, line: 45, type: !6)
!354 = !{!"165"}
!355 = !DILocation(line: 144, column: 11, scope: !28)
!356 = !{!"166"}
!357 = !DILocalVariable(name: "z3", scope: !28, file: !3, line: 45, type: !6)
!358 = !{!"167"}
!359 = !DILocation(line: 145, column: 11, scope: !28)
!360 = !{!"168"}
!361 = !DILocalVariable(name: "z4", scope: !28, file: !3, line: 45, type: !6)
!362 = !{!"169"}
!363 = !DILocation(line: 146, column: 11, scope: !28)
!364 = !{!"170"}
!365 = !DILocalVariable(name: "z5", scope: !28, file: !3, line: 45, type: !6)
!366 = !{!"171"}
!367 = !DILocation(line: 147, column: 11, scope: !28)
!368 = !{!"172"}
!369 = !DILocalVariable(name: "z6", scope: !28, file: !3, line: 45, type: !6)
!370 = !{!"173"}
!371 = !DILocation(line: 148, column: 11, scope: !28)
!372 = !{!"174"}
!373 = !DILocalVariable(name: "z7", scope: !28, file: !3, line: 45, type: !6)
!374 = !{!"175"}
!375 = !DILocation(line: 149, column: 11, scope: !28)
!376 = !{!"176"}
!377 = !DILocalVariable(name: "z8", scope: !28, file: !3, line: 45, type: !6)
!378 = !{!"177"}
!379 = !DILocation(line: 150, column: 11, scope: !28)
!380 = !{!"178"}
!381 = !DILocalVariable(name: "z9", scope: !28, file: !3, line: 45, type: !6)
!382 = !{!"179"}
!383 = !DILocation(line: 151, column: 12, scope: !28)
!384 = !{!"180"}
!385 = !DILocalVariable(name: "z10", scope: !28, file: !3, line: 46, type: !6)
!386 = !{!"181"}
!387 = !DILocation(line: 152, column: 12, scope: !28)
!388 = !{!"182"}
!389 = !DILocalVariable(name: "z11", scope: !28, file: !3, line: 46, type: !6)
!390 = !{!"183"}
!391 = !DILocation(line: 153, column: 12, scope: !28)
!392 = !{!"184"}
!393 = !DILocalVariable(name: "z12", scope: !28, file: !3, line: 46, type: !6)
!394 = !{!"185"}
!395 = !DILocation(line: 154, column: 12, scope: !28)
!396 = !{!"186"}
!397 = !DILocalVariable(name: "z13", scope: !28, file: !3, line: 46, type: !6)
!398 = !{!"187"}
!399 = !DILocation(line: 155, column: 12, scope: !28)
!400 = !{!"188"}
!401 = !DILocalVariable(name: "z14", scope: !28, file: !3, line: 46, type: !6)
!402 = !{!"189"}
!403 = !DILocation(line: 156, column: 12, scope: !28)
!404 = !{!"190"}
!405 = !DILocalVariable(name: "z15", scope: !28, file: !3, line: 46, type: !6)
!406 = !{!"191"}
!407 = !DILocation(line: 157, column: 12, scope: !28)
!408 = !{!"192"}
!409 = !DILocalVariable(name: "z16", scope: !28, file: !3, line: 46, type: !6)
!410 = !{!"193"}
!411 = !DILocation(line: 158, column: 12, scope: !28)
!412 = !{!"194"}
!413 = !DILocalVariable(name: "z17", scope: !28, file: !3, line: 46, type: !6)
!414 = !{!"195"}
!415 = !DILocation(line: 163, column: 12, scope: !28)
!416 = !{!"196"}
!417 = !DILocalVariable(name: "t46", scope: !28, file: !3, line: 51, type: !6)
!418 = !{!"197"}
!419 = !DILocation(line: 164, column: 12, scope: !28)
!420 = !{!"198"}
!421 = !DILocalVariable(name: "t47", scope: !28, file: !3, line: 51, type: !6)
!422 = !{!"199"}
!423 = !DILocation(line: 165, column: 11, scope: !28)
!424 = !{!"200"}
!425 = !DILocalVariable(name: "t48", scope: !28, file: !3, line: 51, type: !6)
!426 = !{!"201"}
!427 = !DILocation(line: 166, column: 11, scope: !28)
!428 = !{!"202"}
!429 = !DILocalVariable(name: "t49", scope: !28, file: !3, line: 51, type: !6)
!430 = !{!"203"}
!431 = !DILocation(line: 167, column: 11, scope: !28)
!432 = !{!"204"}
!433 = !DILocalVariable(name: "t50", scope: !28, file: !3, line: 52, type: !6)
!434 = !{!"205"}
!435 = !DILocation(line: 168, column: 11, scope: !28)
!436 = !{!"206"}
!437 = !DILocalVariable(name: "t51", scope: !28, file: !3, line: 52, type: !6)
!438 = !{!"207"}
!439 = !DILocation(line: 169, column: 11, scope: !28)
!440 = !{!"208"}
!441 = !DILocalVariable(name: "t52", scope: !28, file: !3, line: 52, type: !6)
!442 = !{!"209"}
!443 = !DILocation(line: 170, column: 11, scope: !28)
!444 = !{!"210"}
!445 = !DILocalVariable(name: "t53", scope: !28, file: !3, line: 52, type: !6)
!446 = !{!"211"}
!447 = !DILocation(line: 171, column: 11, scope: !28)
!448 = !{!"212"}
!449 = !DILocalVariable(name: "t54", scope: !28, file: !3, line: 52, type: !6)
!450 = !{!"213"}
!451 = !DILocation(line: 172, column: 12, scope: !28)
!452 = !{!"214"}
!453 = !DILocalVariable(name: "t55", scope: !28, file: !3, line: 52, type: !6)
!454 = !{!"215"}
!455 = !DILocation(line: 173, column: 12, scope: !28)
!456 = !{!"216"}
!457 = !DILocalVariable(name: "t56", scope: !28, file: !3, line: 52, type: !6)
!458 = !{!"217"}
!459 = !DILocation(line: 174, column: 12, scope: !28)
!460 = !{!"218"}
!461 = !DILocalVariable(name: "t57", scope: !28, file: !3, line: 52, type: !6)
!462 = !{!"219"}
!463 = !DILocation(line: 175, column: 11, scope: !28)
!464 = !{!"220"}
!465 = !DILocalVariable(name: "t58", scope: !28, file: !3, line: 52, type: !6)
!466 = !{!"221"}
!467 = !DILocation(line: 176, column: 11, scope: !28)
!468 = !{!"222"}
!469 = !DILocalVariable(name: "t59", scope: !28, file: !3, line: 52, type: !6)
!470 = !{!"223"}
!471 = !DILocation(line: 177, column: 12, scope: !28)
!472 = !{!"224"}
!473 = !DILocalVariable(name: "t60", scope: !28, file: !3, line: 53, type: !6)
!474 = !{!"225"}
!475 = !DILocation(line: 178, column: 12, scope: !28)
!476 = !{!"226"}
!477 = !DILocalVariable(name: "t61", scope: !28, file: !3, line: 53, type: !6)
!478 = !{!"227"}
!479 = !DILocation(line: 179, column: 12, scope: !28)
!480 = !{!"228"}
!481 = !DILocalVariable(name: "t62", scope: !28, file: !3, line: 53, type: !6)
!482 = !{!"229"}
!483 = !DILocation(line: 180, column: 12, scope: !28)
!484 = !{!"230"}
!485 = !DILocalVariable(name: "t63", scope: !28, file: !3, line: 53, type: !6)
!486 = !{!"231"}
!487 = !DILocation(line: 181, column: 11, scope: !28)
!488 = !{!"232"}
!489 = !DILocalVariable(name: "t64", scope: !28, file: !3, line: 53, type: !6)
!490 = !{!"233"}
!491 = !DILocation(line: 182, column: 12, scope: !28)
!492 = !{!"234"}
!493 = !DILocalVariable(name: "t65", scope: !28, file: !3, line: 53, type: !6)
!494 = !{!"235"}
!495 = !DILocation(line: 183, column: 11, scope: !28)
!496 = !{!"236"}
!497 = !DILocalVariable(name: "t66", scope: !28, file: !3, line: 53, type: !6)
!498 = !{!"237"}
!499 = !DILocation(line: 184, column: 11, scope: !28)
!500 = !{!"238"}
!501 = !DILocalVariable(name: "s0", scope: !28, file: !3, line: 54, type: !6)
!502 = !{!"239"}
!503 = !DILocation(line: 185, column: 13, scope: !28)
!504 = !{!"240"}
!505 = !DILocation(line: 185, column: 11, scope: !28)
!506 = !{!"241"}
!507 = !DILocalVariable(name: "s6", scope: !28, file: !3, line: 54, type: !6)
!508 = !{!"242"}
!509 = !DILocation(line: 186, column: 13, scope: !28)
!510 = !{!"243"}
!511 = !DILocation(line: 186, column: 11, scope: !28)
!512 = !{!"244"}
!513 = !DILocalVariable(name: "s7", scope: !28, file: !3, line: 54, type: !6)
!514 = !{!"245"}
!515 = !DILocation(line: 187, column: 12, scope: !28)
!516 = !{!"246"}
!517 = !DILocalVariable(name: "t67", scope: !28, file: !3, line: 53, type: !6)
!518 = !{!"247"}
!519 = !DILocation(line: 188, column: 11, scope: !28)
!520 = !{!"248"}
!521 = !DILocalVariable(name: "s3", scope: !28, file: !3, line: 54, type: !6)
!522 = !{!"249"}
!523 = !DILocation(line: 189, column: 11, scope: !28)
!524 = !{!"250"}
!525 = !DILocalVariable(name: "s4", scope: !28, file: !3, line: 54, type: !6)
!526 = !{!"251"}
!527 = !DILocation(line: 190, column: 11, scope: !28)
!528 = !{!"252"}
!529 = !DILocalVariable(name: "s5", scope: !28, file: !3, line: 54, type: !6)
!530 = !{!"253"}
!531 = !DILocation(line: 191, column: 13, scope: !28)
!532 = !{!"254"}
!533 = !DILocation(line: 191, column: 11, scope: !28)
!534 = !{!"255"}
!535 = !DILocalVariable(name: "s1", scope: !28, file: !3, line: 54, type: !6)
!536 = !{!"256"}
!537 = !DILocation(line: 192, column: 13, scope: !28)
!538 = !{!"257"}
!539 = !DILocation(line: 192, column: 11, scope: !28)
!540 = !{!"258"}
!541 = !DILocalVariable(name: "s2", scope: !28, file: !3, line: 54, type: !6)
!542 = !{!"259"}
!543 = !DILocation(line: 194, column: 2, scope: !28)
!544 = !{!"260"}
!545 = !DILocation(line: 194, column: 7, scope: !28)
!546 = !{!"261"}
!547 = !DILocation(line: 195, column: 2, scope: !28)
!548 = !{!"262"}
!549 = !DILocation(line: 195, column: 7, scope: !28)
!550 = !{!"263"}
!551 = !DILocation(line: 196, column: 2, scope: !28)
!552 = !{!"264"}
!553 = !DILocation(line: 196, column: 7, scope: !28)
!554 = !{!"265"}
!555 = !DILocation(line: 197, column: 2, scope: !28)
!556 = !{!"266"}
!557 = !DILocation(line: 197, column: 7, scope: !28)
!558 = !{!"267"}
!559 = !DILocation(line: 198, column: 2, scope: !28)
!560 = !{!"268"}
!561 = !DILocation(line: 198, column: 7, scope: !28)
!562 = !{!"269"}
!563 = !DILocation(line: 199, column: 2, scope: !28)
!564 = !{!"270"}
!565 = !DILocation(line: 199, column: 7, scope: !28)
!566 = !{!"271"}
!567 = !DILocation(line: 200, column: 2, scope: !28)
!568 = !{!"272"}
!569 = !DILocation(line: 200, column: 7, scope: !28)
!570 = !{!"273"}
!571 = !DILocation(line: 201, column: 2, scope: !28)
!572 = !{!"274"}
!573 = !DILocation(line: 201, column: 7, scope: !28)
!574 = !{!"275"}
!575 = !DILocation(line: 202, column: 1, scope: !28)
!576 = !{!"276"}
!577 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !3, file: !3, line: 206, type: !29, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!578 = !DILocalVariable(name: "q", arg: 1, scope: !577, file: !3, line: 206, type: !31)
!579 = !DILocation(line: 0, scope: !577)
!580 = !{!"277"}
!581 = !DILocation(line: 220, column: 2, scope: !577)
!582 = !{!"278"}
!583 = !DILocation(line: 220, column: 2, scope: !584)
!584 = distinct !DILexicalBlock(scope: !577, file: !3, line: 220, column: 2)
!585 = !{!"279"}
!586 = !{!"280"}
!587 = !DILocalVariable(name: "a", scope: !584, file: !3, line: 220, type: !6)
!588 = !DILocation(line: 0, scope: !584)
!589 = !{!"281"}
!590 = !{!"282"}
!591 = !{!"283"}
!592 = !DILocalVariable(name: "b", scope: !584, file: !3, line: 220, type: !6)
!593 = !{!"284"}
!594 = !{!"285"}
!595 = !{!"286"}
!596 = !{!"287"}
!597 = !{!"288"}
!598 = !{!"289"}
!599 = !{!"290"}
!600 = !{!"291"}
!601 = !{!"292"}
!602 = !{!"293"}
!603 = !{!"294"}
!604 = !{!"295"}
!605 = !{!"296"}
!606 = !{!"297"}
!607 = !DILocation(line: 221, column: 2, scope: !577)
!608 = !{!"298"}
!609 = !DILocation(line: 221, column: 2, scope: !610)
!610 = distinct !DILexicalBlock(scope: !577, file: !3, line: 221, column: 2)
!611 = !{!"299"}
!612 = !{!"300"}
!613 = !DILocalVariable(name: "a", scope: !610, file: !3, line: 221, type: !6)
!614 = !DILocation(line: 0, scope: !610)
!615 = !{!"301"}
!616 = !{!"302"}
!617 = !{!"303"}
!618 = !DILocalVariable(name: "b", scope: !610, file: !3, line: 221, type: !6)
!619 = !{!"304"}
!620 = !{!"305"}
!621 = !{!"306"}
!622 = !{!"307"}
!623 = !{!"308"}
!624 = !{!"309"}
!625 = !{!"310"}
!626 = !{!"311"}
!627 = !{!"312"}
!628 = !{!"313"}
!629 = !{!"314"}
!630 = !{!"315"}
!631 = !{!"316"}
!632 = !{!"317"}
!633 = !DILocation(line: 222, column: 2, scope: !577)
!634 = !{!"318"}
!635 = !DILocation(line: 222, column: 2, scope: !636)
!636 = distinct !DILexicalBlock(scope: !577, file: !3, line: 222, column: 2)
!637 = !{!"319"}
!638 = !{!"320"}
!639 = !DILocalVariable(name: "a", scope: !636, file: !3, line: 222, type: !6)
!640 = !DILocation(line: 0, scope: !636)
!641 = !{!"321"}
!642 = !{!"322"}
!643 = !{!"323"}
!644 = !DILocalVariable(name: "b", scope: !636, file: !3, line: 222, type: !6)
!645 = !{!"324"}
!646 = !{!"325"}
!647 = !{!"326"}
!648 = !{!"327"}
!649 = !{!"328"}
!650 = !{!"329"}
!651 = !{!"330"}
!652 = !{!"331"}
!653 = !{!"332"}
!654 = !{!"333"}
!655 = !{!"334"}
!656 = !{!"335"}
!657 = !{!"336"}
!658 = !{!"337"}
!659 = !DILocation(line: 223, column: 2, scope: !577)
!660 = !{!"338"}
!661 = !DILocation(line: 223, column: 2, scope: !662)
!662 = distinct !DILexicalBlock(scope: !577, file: !3, line: 223, column: 2)
!663 = !{!"339"}
!664 = !{!"340"}
!665 = !DILocalVariable(name: "a", scope: !662, file: !3, line: 223, type: !6)
!666 = !DILocation(line: 0, scope: !662)
!667 = !{!"341"}
!668 = !{!"342"}
!669 = !{!"343"}
!670 = !DILocalVariable(name: "b", scope: !662, file: !3, line: 223, type: !6)
!671 = !{!"344"}
!672 = !{!"345"}
!673 = !{!"346"}
!674 = !{!"347"}
!675 = !{!"348"}
!676 = !{!"349"}
!677 = !{!"350"}
!678 = !{!"351"}
!679 = !{!"352"}
!680 = !{!"353"}
!681 = !{!"354"}
!682 = !{!"355"}
!683 = !{!"356"}
!684 = !{!"357"}
!685 = !DILocation(line: 225, column: 2, scope: !577)
!686 = !{!"358"}
!687 = !DILocation(line: 225, column: 2, scope: !688)
!688 = distinct !DILexicalBlock(scope: !577, file: !3, line: 225, column: 2)
!689 = !{!"359"}
!690 = !{!"360"}
!691 = !DILocalVariable(name: "a", scope: !688, file: !3, line: 225, type: !6)
!692 = !DILocation(line: 0, scope: !688)
!693 = !{!"361"}
!694 = !{!"362"}
!695 = !{!"363"}
!696 = !DILocalVariable(name: "b", scope: !688, file: !3, line: 225, type: !6)
!697 = !{!"364"}
!698 = !{!"365"}
!699 = !{!"366"}
!700 = !{!"367"}
!701 = !{!"368"}
!702 = !{!"369"}
!703 = !{!"370"}
!704 = !{!"371"}
!705 = !{!"372"}
!706 = !{!"373"}
!707 = !{!"374"}
!708 = !{!"375"}
!709 = !{!"376"}
!710 = !{!"377"}
!711 = !DILocation(line: 226, column: 2, scope: !577)
!712 = !{!"378"}
!713 = !DILocation(line: 226, column: 2, scope: !714)
!714 = distinct !DILexicalBlock(scope: !577, file: !3, line: 226, column: 2)
!715 = !{!"379"}
!716 = !{!"380"}
!717 = !DILocalVariable(name: "a", scope: !714, file: !3, line: 226, type: !6)
!718 = !DILocation(line: 0, scope: !714)
!719 = !{!"381"}
!720 = !{!"382"}
!721 = !{!"383"}
!722 = !DILocalVariable(name: "b", scope: !714, file: !3, line: 226, type: !6)
!723 = !{!"384"}
!724 = !{!"385"}
!725 = !{!"386"}
!726 = !{!"387"}
!727 = !{!"388"}
!728 = !{!"389"}
!729 = !{!"390"}
!730 = !{!"391"}
!731 = !{!"392"}
!732 = !{!"393"}
!733 = !{!"394"}
!734 = !{!"395"}
!735 = !{!"396"}
!736 = !{!"397"}
!737 = !DILocation(line: 227, column: 2, scope: !577)
!738 = !{!"398"}
!739 = !DILocation(line: 227, column: 2, scope: !740)
!740 = distinct !DILexicalBlock(scope: !577, file: !3, line: 227, column: 2)
!741 = !{!"399"}
!742 = !{!"400"}
!743 = !DILocalVariable(name: "a", scope: !740, file: !3, line: 227, type: !6)
!744 = !DILocation(line: 0, scope: !740)
!745 = !{!"401"}
!746 = !{!"402"}
!747 = !{!"403"}
!748 = !DILocalVariable(name: "b", scope: !740, file: !3, line: 227, type: !6)
!749 = !{!"404"}
!750 = !{!"405"}
!751 = !{!"406"}
!752 = !{!"407"}
!753 = !{!"408"}
!754 = !{!"409"}
!755 = !{!"410"}
!756 = !{!"411"}
!757 = !{!"412"}
!758 = !{!"413"}
!759 = !{!"414"}
!760 = !{!"415"}
!761 = !{!"416"}
!762 = !{!"417"}
!763 = !DILocation(line: 228, column: 2, scope: !577)
!764 = !{!"418"}
!765 = !DILocation(line: 228, column: 2, scope: !766)
!766 = distinct !DILexicalBlock(scope: !577, file: !3, line: 228, column: 2)
!767 = !{!"419"}
!768 = !{!"420"}
!769 = !DILocalVariable(name: "a", scope: !766, file: !3, line: 228, type: !6)
!770 = !DILocation(line: 0, scope: !766)
!771 = !{!"421"}
!772 = !{!"422"}
!773 = !{!"423"}
!774 = !DILocalVariable(name: "b", scope: !766, file: !3, line: 228, type: !6)
!775 = !{!"424"}
!776 = !{!"425"}
!777 = !{!"426"}
!778 = !{!"427"}
!779 = !{!"428"}
!780 = !{!"429"}
!781 = !{!"430"}
!782 = !{!"431"}
!783 = !{!"432"}
!784 = !{!"433"}
!785 = !{!"434"}
!786 = !{!"435"}
!787 = !{!"436"}
!788 = !{!"437"}
!789 = !DILocation(line: 230, column: 2, scope: !577)
!790 = !{!"438"}
!791 = !DILocation(line: 230, column: 2, scope: !792)
!792 = distinct !DILexicalBlock(scope: !577, file: !3, line: 230, column: 2)
!793 = !{!"439"}
!794 = !{!"440"}
!795 = !DILocalVariable(name: "a", scope: !792, file: !3, line: 230, type: !6)
!796 = !DILocation(line: 0, scope: !792)
!797 = !{!"441"}
!798 = !{!"442"}
!799 = !{!"443"}
!800 = !DILocalVariable(name: "b", scope: !792, file: !3, line: 230, type: !6)
!801 = !{!"444"}
!802 = !{!"445"}
!803 = !{!"446"}
!804 = !{!"447"}
!805 = !{!"448"}
!806 = !{!"449"}
!807 = !{!"450"}
!808 = !{!"451"}
!809 = !{!"452"}
!810 = !{!"453"}
!811 = !{!"454"}
!812 = !{!"455"}
!813 = !{!"456"}
!814 = !{!"457"}
!815 = !DILocation(line: 231, column: 2, scope: !577)
!816 = !{!"458"}
!817 = !DILocation(line: 231, column: 2, scope: !818)
!818 = distinct !DILexicalBlock(scope: !577, file: !3, line: 231, column: 2)
!819 = !{!"459"}
!820 = !{!"460"}
!821 = !DILocalVariable(name: "a", scope: !818, file: !3, line: 231, type: !6)
!822 = !DILocation(line: 0, scope: !818)
!823 = !{!"461"}
!824 = !{!"462"}
!825 = !{!"463"}
!826 = !DILocalVariable(name: "b", scope: !818, file: !3, line: 231, type: !6)
!827 = !{!"464"}
!828 = !{!"465"}
!829 = !{!"466"}
!830 = !{!"467"}
!831 = !{!"468"}
!832 = !{!"469"}
!833 = !{!"470"}
!834 = !{!"471"}
!835 = !{!"472"}
!836 = !{!"473"}
!837 = !{!"474"}
!838 = !{!"475"}
!839 = !{!"476"}
!840 = !{!"477"}
!841 = !DILocation(line: 232, column: 2, scope: !577)
!842 = !{!"478"}
!843 = !DILocation(line: 232, column: 2, scope: !844)
!844 = distinct !DILexicalBlock(scope: !577, file: !3, line: 232, column: 2)
!845 = !{!"479"}
!846 = !{!"480"}
!847 = !DILocalVariable(name: "a", scope: !844, file: !3, line: 232, type: !6)
!848 = !DILocation(line: 0, scope: !844)
!849 = !{!"481"}
!850 = !{!"482"}
!851 = !{!"483"}
!852 = !DILocalVariable(name: "b", scope: !844, file: !3, line: 232, type: !6)
!853 = !{!"484"}
!854 = !{!"485"}
!855 = !{!"486"}
!856 = !{!"487"}
!857 = !{!"488"}
!858 = !{!"489"}
!859 = !{!"490"}
!860 = !{!"491"}
!861 = !{!"492"}
!862 = !{!"493"}
!863 = !{!"494"}
!864 = !{!"495"}
!865 = !{!"496"}
!866 = !{!"497"}
!867 = !DILocation(line: 233, column: 2, scope: !577)
!868 = !{!"498"}
!869 = !DILocation(line: 233, column: 2, scope: !870)
!870 = distinct !DILexicalBlock(scope: !577, file: !3, line: 233, column: 2)
!871 = !{!"499"}
!872 = !{!"500"}
!873 = !DILocalVariable(name: "a", scope: !870, file: !3, line: 233, type: !6)
!874 = !DILocation(line: 0, scope: !870)
!875 = !{!"501"}
!876 = !{!"502"}
!877 = !{!"503"}
!878 = !DILocalVariable(name: "b", scope: !870, file: !3, line: 233, type: !6)
!879 = !{!"504"}
!880 = !{!"505"}
!881 = !{!"506"}
!882 = !{!"507"}
!883 = !{!"508"}
!884 = !{!"509"}
!885 = !{!"510"}
!886 = !{!"511"}
!887 = !{!"512"}
!888 = !{!"513"}
!889 = !{!"514"}
!890 = !{!"515"}
!891 = !{!"516"}
!892 = !{!"517"}
!893 = !DILocation(line: 234, column: 1, scope: !577)
!894 = !{!"518"}
!895 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !3, file: !3, line: 238, type: !896, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !31, !31, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!900 = !DILocalVariable(name: "q0", arg: 1, scope: !895, file: !3, line: 238, type: !31)
!901 = !DILocation(line: 0, scope: !895)
!902 = !{!"519"}
!903 = !DILocalVariable(name: "q1", arg: 2, scope: !895, file: !3, line: 238, type: !31)
!904 = !{!"520"}
!905 = !DILocalVariable(name: "w", arg: 3, scope: !895, file: !3, line: 238, type: !898)
!906 = !{!"521"}
!907 = !DILocation(line: 242, column: 7, scope: !895)
!908 = !{!"522"}
!909 = !{!"523"}
!910 = !{!"524"}
!911 = !DILocalVariable(name: "x0", scope: !895, file: !3, line: 240, type: !6)
!912 = !{!"525"}
!913 = !DILocation(line: 243, column: 7, scope: !895)
!914 = !{!"526"}
!915 = !{!"527"}
!916 = !{!"528"}
!917 = !DILocalVariable(name: "x1", scope: !895, file: !3, line: 240, type: !6)
!918 = !{!"529"}
!919 = !DILocation(line: 244, column: 7, scope: !895)
!920 = !{!"530"}
!921 = !{!"531"}
!922 = !{!"532"}
!923 = !DILocalVariable(name: "x2", scope: !895, file: !3, line: 240, type: !6)
!924 = !{!"533"}
!925 = !DILocation(line: 245, column: 7, scope: !895)
!926 = !{!"534"}
!927 = !{!"535"}
!928 = !{!"536"}
!929 = !DILocalVariable(name: "x3", scope: !895, file: !3, line: 240, type: !6)
!930 = !{!"537"}
!931 = !DILocation(line: 246, column: 12, scope: !895)
!932 = !{!"538"}
!933 = !DILocation(line: 246, column: 5, scope: !895)
!934 = !{!"539"}
!935 = !{!"540"}
!936 = !DILocation(line: 247, column: 12, scope: !895)
!937 = !{!"541"}
!938 = !DILocation(line: 247, column: 5, scope: !895)
!939 = !{!"542"}
!940 = !{!"543"}
!941 = !DILocation(line: 248, column: 12, scope: !895)
!942 = !{!"544"}
!943 = !DILocation(line: 248, column: 5, scope: !895)
!944 = !{!"545"}
!945 = !{!"546"}
!946 = !DILocation(line: 249, column: 12, scope: !895)
!947 = !{!"547"}
!948 = !DILocation(line: 249, column: 5, scope: !895)
!949 = !{!"548"}
!950 = !{!"549"}
!951 = !DILocation(line: 250, column: 5, scope: !895)
!952 = !{!"550"}
!953 = !{!"551"}
!954 = !DILocation(line: 251, column: 5, scope: !895)
!955 = !{!"552"}
!956 = !{!"553"}
!957 = !DILocation(line: 252, column: 5, scope: !895)
!958 = !{!"554"}
!959 = !{!"555"}
!960 = !DILocation(line: 253, column: 5, scope: !895)
!961 = !{!"556"}
!962 = !{!"557"}
!963 = !DILocation(line: 254, column: 12, scope: !895)
!964 = !{!"558"}
!965 = !DILocation(line: 254, column: 5, scope: !895)
!966 = !{!"559"}
!967 = !{!"560"}
!968 = !DILocation(line: 255, column: 12, scope: !895)
!969 = !{!"561"}
!970 = !DILocation(line: 255, column: 5, scope: !895)
!971 = !{!"562"}
!972 = !{!"563"}
!973 = !DILocation(line: 256, column: 12, scope: !895)
!974 = !{!"564"}
!975 = !DILocation(line: 256, column: 5, scope: !895)
!976 = !{!"565"}
!977 = !{!"566"}
!978 = !DILocation(line: 257, column: 12, scope: !895)
!979 = !{!"567"}
!980 = !DILocation(line: 257, column: 5, scope: !895)
!981 = !{!"568"}
!982 = !{!"569"}
!983 = !DILocation(line: 258, column: 5, scope: !895)
!984 = !{!"570"}
!985 = !{!"571"}
!986 = !DILocation(line: 259, column: 5, scope: !895)
!987 = !{!"572"}
!988 = !{!"573"}
!989 = !DILocation(line: 260, column: 5, scope: !895)
!990 = !{!"574"}
!991 = !{!"575"}
!992 = !DILocation(line: 261, column: 5, scope: !895)
!993 = !{!"576"}
!994 = !{!"577"}
!995 = !DILocation(line: 262, column: 17, scope: !895)
!996 = !{!"578"}
!997 = !DILocation(line: 262, column: 11, scope: !895)
!998 = !{!"579"}
!999 = !DILocation(line: 262, column: 6, scope: !895)
!1000 = !{!"580"}
!1001 = !DILocation(line: 263, column: 17, scope: !895)
!1002 = !{!"581"}
!1003 = !DILocation(line: 263, column: 11, scope: !895)
!1004 = !{!"582"}
!1005 = !DILocation(line: 263, column: 6, scope: !895)
!1006 = !{!"583"}
!1007 = !DILocation(line: 264, column: 1, scope: !895)
!1008 = !{!"584"}
!1009 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !3, file: !3, line: 268, type: !1010, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !1012, !6, !6}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1013 = !DILocalVariable(name: "w", arg: 1, scope: !1009, file: !3, line: 268, type: !1012)
!1014 = !DILocation(line: 0, scope: !1009)
!1015 = !{!"585"}
!1016 = !DILocalVariable(name: "q0", arg: 2, scope: !1009, file: !3, line: 268, type: !6)
!1017 = !{!"586"}
!1018 = !DILocalVariable(name: "q1", arg: 3, scope: !1009, file: !3, line: 268, type: !6)
!1019 = !{!"587"}
!1020 = !DILocation(line: 272, column: 10, scope: !1009)
!1021 = !{!"588"}
!1022 = !DILocalVariable(name: "x0", scope: !1009, file: !3, line: 270, type: !6)
!1023 = !{!"589"}
!1024 = !DILocation(line: 273, column: 10, scope: !1009)
!1025 = !{!"590"}
!1026 = !DILocalVariable(name: "x1", scope: !1009, file: !3, line: 270, type: !6)
!1027 = !{!"591"}
!1028 = !DILocation(line: 274, column: 11, scope: !1009)
!1029 = !{!"592"}
!1030 = !DILocation(line: 274, column: 17, scope: !1009)
!1031 = !{!"593"}
!1032 = !DILocalVariable(name: "x2", scope: !1009, file: !3, line: 270, type: !6)
!1033 = !{!"594"}
!1034 = !DILocation(line: 275, column: 11, scope: !1009)
!1035 = !{!"595"}
!1036 = !DILocation(line: 275, column: 17, scope: !1009)
!1037 = !{!"596"}
!1038 = !DILocalVariable(name: "x3", scope: !1009, file: !3, line: 270, type: !6)
!1039 = !{!"597"}
!1040 = !DILocation(line: 276, column: 12, scope: !1009)
!1041 = !{!"598"}
!1042 = !DILocation(line: 276, column: 5, scope: !1009)
!1043 = !{!"599"}
!1044 = !{!"600"}
!1045 = !DILocation(line: 277, column: 12, scope: !1009)
!1046 = !{!"601"}
!1047 = !DILocation(line: 277, column: 5, scope: !1009)
!1048 = !{!"602"}
!1049 = !{!"603"}
!1050 = !DILocation(line: 278, column: 12, scope: !1009)
!1051 = !{!"604"}
!1052 = !DILocation(line: 278, column: 5, scope: !1009)
!1053 = !{!"605"}
!1054 = !{!"606"}
!1055 = !DILocation(line: 279, column: 12, scope: !1009)
!1056 = !{!"607"}
!1057 = !DILocation(line: 279, column: 5, scope: !1009)
!1058 = !{!"608"}
!1059 = !{!"609"}
!1060 = !DILocation(line: 280, column: 5, scope: !1009)
!1061 = !{!"610"}
!1062 = !{!"611"}
!1063 = !DILocation(line: 281, column: 5, scope: !1009)
!1064 = !{!"612"}
!1065 = !{!"613"}
!1066 = !DILocation(line: 282, column: 5, scope: !1009)
!1067 = !{!"614"}
!1068 = !{!"615"}
!1069 = !DILocation(line: 283, column: 5, scope: !1009)
!1070 = !{!"616"}
!1071 = !{!"617"}
!1072 = !DILocation(line: 284, column: 9, scope: !1009)
!1073 = !{!"618"}
!1074 = !DILocation(line: 284, column: 38, scope: !1009)
!1075 = !{!"619"}
!1076 = !DILocation(line: 284, column: 24, scope: !1009)
!1077 = !{!"620"}
!1078 = !DILocation(line: 284, column: 22, scope: !1009)
!1079 = !{!"621"}
!1080 = !DILocation(line: 284, column: 2, scope: !1009)
!1081 = !{!"622"}
!1082 = !DILocation(line: 284, column: 7, scope: !1009)
!1083 = !{!"623"}
!1084 = !DILocation(line: 285, column: 9, scope: !1009)
!1085 = !{!"624"}
!1086 = !DILocation(line: 285, column: 38, scope: !1009)
!1087 = !{!"625"}
!1088 = !DILocation(line: 285, column: 24, scope: !1009)
!1089 = !{!"626"}
!1090 = !DILocation(line: 285, column: 22, scope: !1009)
!1091 = !{!"627"}
!1092 = !DILocation(line: 285, column: 2, scope: !1009)
!1093 = !{!"628"}
!1094 = !DILocation(line: 285, column: 7, scope: !1009)
!1095 = !{!"629"}
!1096 = !DILocation(line: 286, column: 9, scope: !1009)
!1097 = !{!"630"}
!1098 = !DILocation(line: 286, column: 38, scope: !1009)
!1099 = !{!"631"}
!1100 = !DILocation(line: 286, column: 24, scope: !1009)
!1101 = !{!"632"}
!1102 = !DILocation(line: 286, column: 22, scope: !1009)
!1103 = !{!"633"}
!1104 = !DILocation(line: 286, column: 2, scope: !1009)
!1105 = !{!"634"}
!1106 = !DILocation(line: 286, column: 7, scope: !1009)
!1107 = !{!"635"}
!1108 = !DILocation(line: 287, column: 9, scope: !1009)
!1109 = !{!"636"}
!1110 = !DILocation(line: 287, column: 38, scope: !1009)
!1111 = !{!"637"}
!1112 = !DILocation(line: 287, column: 24, scope: !1009)
!1113 = !{!"638"}
!1114 = !DILocation(line: 287, column: 22, scope: !1009)
!1115 = !{!"639"}
!1116 = !DILocation(line: 287, column: 2, scope: !1009)
!1117 = !{!"640"}
!1118 = !DILocation(line: 287, column: 7, scope: !1009)
!1119 = !{!"641"}
!1120 = !DILocation(line: 288, column: 1, scope: !1009)
!1121 = !{!"642"}
!1122 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !3, file: !3, line: 309, type: !1123, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!13, !31, !1125, !1127}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1128, line: 46, baseType: !10)
!1128 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!1129 = !{!"643"}
!1130 = !{!"644"}
!1131 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !1122, file: !3, line: 309, type: !31)
!1132 = !DILocation(line: 0, scope: !1122)
!1133 = !{!"645"}
!1134 = !DILocalVariable(name: "key", arg: 2, scope: !1122, file: !3, line: 309, type: !1125)
!1135 = !{!"646"}
!1136 = !DILocalVariable(name: "key_len", arg: 3, scope: !1122, file: !3, line: 309, type: !1127)
!1137 = !{!"647"}
!1138 = !DILocalVariable(name: "skey", scope: !1122, file: !3, line: 314, type: !1139)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1920, elements: !1140)
!1140 = !{!1141}
!1141 = !DISubrange(count: 60)
!1142 = !DILocation(line: 314, column: 11, scope: !1122)
!1143 = !{!"648"}
!1144 = !DILocation(line: 316, column: 2, scope: !1122)
!1145 = !{!"649"}
!1146 = !DILocalVariable(name: "num_rounds", scope: !1122, file: !3, line: 311, type: !13)
!1147 = !{!"650"}
!1148 = !DILocation(line: 319, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 316, column: 19)
!1150 = !{!"651"}
!1151 = !{!"652"}
!1152 = !DILocation(line: 322, column: 3, scope: !1149)
!1153 = !{!"653"}
!1154 = !{!"654"}
!1155 = !DILocation(line: 325, column: 3, scope: !1149)
!1156 = !{!"655"}
!1157 = !DILocation(line: 328, column: 3, scope: !1149)
!1158 = !{!"656"}
!1159 = !DILocation(line: 0, scope: !1149)
!1160 = !{!"657"}
!1161 = !{!"658"}
!1162 = !DILocation(line: 330, column: 21, scope: !1122)
!1163 = !{!"659"}
!1164 = !DILocation(line: 330, column: 7, scope: !1122)
!1165 = !{!"660"}
!1166 = !DILocalVariable(name: "nk", scope: !1122, file: !3, line: 312, type: !14)
!1167 = !{!"661"}
!1168 = !DILocation(line: 331, column: 26, scope: !1122)
!1169 = !{!"662"}
!1170 = !DILocation(line: 331, column: 31, scope: !1122)
!1171 = !{!"663"}
!1172 = !DILocalVariable(name: "nkf", scope: !1122, file: !3, line: 312, type: !14)
!1173 = !{!"664"}
!1174 = !DILocation(line: 332, column: 19, scope: !1122)
!1175 = !{!"665"}
!1176 = !DILocation(line: 332, column: 34, scope: !1122)
!1177 = !{!"666"}
!1178 = !DILocation(line: 332, column: 2, scope: !1122)
!1179 = !{!"667"}
!1180 = !DILocation(line: 333, column: 22, scope: !1122)
!1181 = !{!"668"}
!1182 = !DILocation(line: 333, column: 28, scope: !1122)
!1183 = !{!"669"}
!1184 = !DILocation(line: 333, column: 8, scope: !1122)
!1185 = !{!"670"}
!1186 = !{!"671"}
!1187 = !DILocalVariable(name: "tmp", scope: !1122, file: !3, line: 313, type: !11)
!1188 = !{!"672"}
!1189 = !DILocalVariable(name: "i", scope: !1122, file: !3, line: 312, type: !14)
!1190 = !{!"673"}
!1191 = !DILocalVariable(name: "j", scope: !1122, file: !3, line: 312, type: !14)
!1192 = !{!"674"}
!1193 = !DILocalVariable(name: "k", scope: !1122, file: !3, line: 312, type: !14)
!1194 = !{!"675"}
!1195 = !DILocation(line: 334, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 334, column: 2)
!1197 = !{!"676"}
!1198 = !DILocation(line: 0, scope: !1196)
!1199 = !{!"677"}
!1200 = !{!"678"}
!1201 = !{!"679"}
!1202 = !{!"680"}
!1203 = !{!"681"}
!1204 = !{!"682"}
!1205 = !{!"683"}
!1206 = !{!"684"}
!1207 = !DILocation(line: 334, column: 31, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 334, column: 2)
!1209 = !{!"685"}
!1210 = !DILocation(line: 334, column: 2, scope: !1196)
!1211 = !{!"686"}
!1212 = !DILocation(line: 335, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 335, column: 7)
!1214 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 334, column: 44)
!1215 = !{!"687"}
!1216 = !DILocation(line: 335, column: 7, scope: !1214)
!1217 = !{!"688"}
!1218 = !DILocation(line: 336, column: 15, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 335, column: 15)
!1220 = !{!"689"}
!1221 = !DILocation(line: 336, column: 29, scope: !1219)
!1222 = !{!"690"}
!1223 = !DILocation(line: 336, column: 22, scope: !1219)
!1224 = !{!"691"}
!1225 = !{!"692"}
!1226 = !DILocation(line: 337, column: 10, scope: !1219)
!1227 = !{!"693"}
!1228 = !DILocation(line: 337, column: 26, scope: !1219)
!1229 = !{!"694"}
!1230 = !{!"695"}
!1231 = !{!"696"}
!1232 = !{!"697"}
!1233 = !DILocation(line: 337, column: 24, scope: !1219)
!1234 = !{!"698"}
!1235 = !{!"699"}
!1236 = !DILocation(line: 338, column: 3, scope: !1219)
!1237 = !{!"700"}
!1238 = !DILocation(line: 338, column: 17, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 338, column: 14)
!1240 = !{!"701"}
!1241 = !DILocation(line: 338, column: 21, scope: !1239)
!1242 = !{!"702"}
!1243 = !DILocation(line: 338, column: 26, scope: !1239)
!1244 = !{!"703"}
!1245 = !DILocation(line: 338, column: 14, scope: !1213)
!1246 = !{!"704"}
!1247 = !DILocation(line: 339, column: 10, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 338, column: 32)
!1249 = !{!"705"}
!1250 = !{!"706"}
!1251 = !DILocation(line: 340, column: 3, scope: !1248)
!1252 = !{!"707"}
!1253 = !{!"708"}
!1254 = !{!"709"}
!1255 = !{!"710"}
!1256 = !DILocation(line: 0, scope: !1213)
!1257 = !{!"711"}
!1258 = !{!"712"}
!1259 = !DILocation(line: 341, column: 17, scope: !1214)
!1260 = !{!"713"}
!1261 = !DILocation(line: 341, column: 10, scope: !1214)
!1262 = !{!"714"}
!1263 = !{!"715"}
!1264 = !{!"716"}
!1265 = !DILocation(line: 341, column: 7, scope: !1214)
!1266 = !{!"717"}
!1267 = !{!"718"}
!1268 = !DILocation(line: 342, column: 3, scope: !1214)
!1269 = !{!"719"}
!1270 = !{!"720"}
!1271 = !DILocation(line: 342, column: 11, scope: !1214)
!1272 = !{!"721"}
!1273 = !DILocation(line: 343, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 343, column: 7)
!1275 = !{!"722"}
!1276 = !{!"723"}
!1277 = !DILocation(line: 343, column: 12, scope: !1274)
!1278 = !{!"724"}
!1279 = !DILocation(line: 343, column: 7, scope: !1214)
!1280 = !{!"725"}
!1281 = !{!"726"}
!1282 = !DILocation(line: 345, column: 6, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 343, column: 19)
!1284 = !{!"727"}
!1285 = !{!"728"}
!1286 = !DILocation(line: 346, column: 3, scope: !1283)
!1287 = !{!"729"}
!1288 = !DILocation(line: 0, scope: !1274)
!1289 = !{!"730"}
!1290 = !{!"731"}
!1291 = !{!"732"}
!1292 = !{!"733"}
!1293 = !DILocation(line: 347, column: 2, scope: !1214)
!1294 = !{!"734"}
!1295 = !DILocation(line: 334, column: 40, scope: !1208)
!1296 = !{!"735"}
!1297 = !{!"736"}
!1298 = !DILocation(line: 334, column: 2, scope: !1208)
!1299 = distinct !{!1299, !1210, !1300, !1301}
!1300 = !DILocation(line: 347, column: 2, scope: !1196)
!1301 = !{!"llvm.loop.mustprogress"}
!1302 = !{!"737"}
!1303 = !{!"738"}
!1304 = !{!"739"}
!1305 = !DILocation(line: 349, column: 7, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 349, column: 2)
!1307 = !{!"740"}
!1308 = !DILocation(line: 0, scope: !1306)
!1309 = !{!"741"}
!1310 = !{!"742"}
!1311 = !{!"743"}
!1312 = !{!"744"}
!1313 = !DILocation(line: 349, column: 23, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 349, column: 2)
!1315 = !{!"745"}
!1316 = !DILocation(line: 349, column: 2, scope: !1306)
!1317 = !{!"746"}
!1318 = !DILocalVariable(name: "q", scope: !1319, file: !3, line: 350, type: !1320)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 349, column: 46)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !1321)
!1321 = !{!1322}
!1322 = !DISubrange(count: 8)
!1323 = !DILocation(line: 350, column: 12, scope: !1319)
!1324 = !{!"747"}
!1325 = !DILocation(line: 352, column: 30, scope: !1319)
!1326 = !{!"748"}
!1327 = !DILocation(line: 352, column: 37, scope: !1319)
!1328 = !{!"749"}
!1329 = !DILocation(line: 352, column: 43, scope: !1319)
!1330 = !{!"750"}
!1331 = !DILocation(line: 352, column: 48, scope: !1319)
!1332 = !{!"751"}
!1333 = !{!"752"}
!1334 = !DILocation(line: 352, column: 3, scope: !1319)
!1335 = !{!"753"}
!1336 = !DILocation(line: 353, column: 10, scope: !1319)
!1337 = !{!"754"}
!1338 = !{!"755"}
!1339 = !DILocation(line: 353, column: 3, scope: !1319)
!1340 = !{!"756"}
!1341 = !DILocation(line: 353, column: 8, scope: !1319)
!1342 = !{!"757"}
!1343 = !DILocation(line: 354, column: 10, scope: !1319)
!1344 = !{!"758"}
!1345 = !{!"759"}
!1346 = !DILocation(line: 354, column: 3, scope: !1319)
!1347 = !{!"760"}
!1348 = !DILocation(line: 354, column: 8, scope: !1319)
!1349 = !{!"761"}
!1350 = !DILocation(line: 355, column: 10, scope: !1319)
!1351 = !{!"762"}
!1352 = !{!"763"}
!1353 = !DILocation(line: 355, column: 3, scope: !1319)
!1354 = !{!"764"}
!1355 = !DILocation(line: 355, column: 8, scope: !1319)
!1356 = !{!"765"}
!1357 = !DILocation(line: 356, column: 10, scope: !1319)
!1358 = !{!"766"}
!1359 = !{!"767"}
!1360 = !DILocation(line: 356, column: 3, scope: !1319)
!1361 = !{!"768"}
!1362 = !DILocation(line: 356, column: 8, scope: !1319)
!1363 = !{!"769"}
!1364 = !DILocation(line: 357, column: 10, scope: !1319)
!1365 = !{!"770"}
!1366 = !{!"771"}
!1367 = !DILocation(line: 357, column: 3, scope: !1319)
!1368 = !{!"772"}
!1369 = !DILocation(line: 357, column: 8, scope: !1319)
!1370 = !{!"773"}
!1371 = !DILocation(line: 358, column: 10, scope: !1319)
!1372 = !{!"774"}
!1373 = !{!"775"}
!1374 = !DILocation(line: 358, column: 3, scope: !1319)
!1375 = !{!"776"}
!1376 = !DILocation(line: 358, column: 8, scope: !1319)
!1377 = !{!"777"}
!1378 = !DILocation(line: 359, column: 21, scope: !1319)
!1379 = !{!"778"}
!1380 = !DILocation(line: 359, column: 3, scope: !1319)
!1381 = !{!"779"}
!1382 = !DILocation(line: 361, column: 7, scope: !1319)
!1383 = !{!"780"}
!1384 = !{!"781"}
!1385 = !DILocation(line: 361, column: 12, scope: !1319)
!1386 = !{!"782"}
!1387 = !DILocation(line: 362, column: 7, scope: !1319)
!1388 = !{!"783"}
!1389 = !{!"784"}
!1390 = !DILocation(line: 362, column: 12, scope: !1319)
!1391 = !{!"785"}
!1392 = !DILocation(line: 362, column: 4, scope: !1319)
!1393 = !{!"786"}
!1394 = !DILocation(line: 363, column: 7, scope: !1319)
!1395 = !{!"787"}
!1396 = !{!"788"}
!1397 = !DILocation(line: 363, column: 12, scope: !1319)
!1398 = !{!"789"}
!1399 = !DILocation(line: 363, column: 4, scope: !1319)
!1400 = !{!"790"}
!1401 = !DILocation(line: 364, column: 7, scope: !1319)
!1402 = !{!"791"}
!1403 = !{!"792"}
!1404 = !DILocation(line: 364, column: 12, scope: !1319)
!1405 = !{!"793"}
!1406 = !DILocation(line: 364, column: 4, scope: !1319)
!1407 = !{!"794"}
!1408 = !DILocation(line: 360, column: 15, scope: !1319)
!1409 = !{!"795"}
!1410 = !DILocation(line: 360, column: 3, scope: !1319)
!1411 = !{!"796"}
!1412 = !{!"797"}
!1413 = !{!"PointTainted"}
!1414 = !DILocation(line: 360, column: 20, scope: !1319)
!1415 = !{!"798"}
!1416 = !DILocation(line: 366, column: 7, scope: !1319)
!1417 = !{!"799"}
!1418 = !{!"800"}
!1419 = !DILocation(line: 366, column: 12, scope: !1319)
!1420 = !{!"801"}
!1421 = !DILocation(line: 367, column: 7, scope: !1319)
!1422 = !{!"802"}
!1423 = !{!"803"}
!1424 = !DILocation(line: 367, column: 12, scope: !1319)
!1425 = !{!"804"}
!1426 = !DILocation(line: 367, column: 4, scope: !1319)
!1427 = !{!"805"}
!1428 = !DILocation(line: 368, column: 7, scope: !1319)
!1429 = !{!"806"}
!1430 = !{!"807"}
!1431 = !DILocation(line: 368, column: 12, scope: !1319)
!1432 = !{!"808"}
!1433 = !DILocation(line: 368, column: 4, scope: !1319)
!1434 = !{!"809"}
!1435 = !DILocation(line: 369, column: 7, scope: !1319)
!1436 = !{!"810"}
!1437 = !{!"811"}
!1438 = !DILocation(line: 369, column: 12, scope: !1319)
!1439 = !{!"812"}
!1440 = !DILocation(line: 369, column: 4, scope: !1319)
!1441 = !{!"813"}
!1442 = !DILocation(line: 365, column: 15, scope: !1319)
!1443 = !{!"814"}
!1444 = !DILocation(line: 365, column: 3, scope: !1319)
!1445 = !{!"815"}
!1446 = !{!"816"}
!1447 = !DILocation(line: 365, column: 20, scope: !1319)
!1448 = !{!"817"}
!1449 = !DILocation(line: 370, column: 2, scope: !1319)
!1450 = !{!"818"}
!1451 = !DILocation(line: 349, column: 32, scope: !1314)
!1452 = !{!"819"}
!1453 = !{!"820"}
!1454 = !DILocation(line: 349, column: 40, scope: !1314)
!1455 = !{!"821"}
!1456 = !{!"822"}
!1457 = !DILocation(line: 349, column: 2, scope: !1314)
!1458 = distinct !{!1458, !1316, !1459, !1301}
!1459 = !DILocation(line: 370, column: 2, scope: !1306)
!1460 = !{!"823"}
!1461 = !DILocation(line: 371, column: 2, scope: !1122)
!1462 = !{!"824"}
!1463 = !{!"825"}
!1464 = !DILocation(line: 372, column: 1, scope: !1122)
!1465 = !{!"826"}
!1466 = distinct !DISubprogram(name: "sub_word", scope: !3, file: !3, line: 295, type: !1467, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!11, !11}
!1469 = !{!"827"}
!1470 = !DILocalVariable(name: "x", arg: 1, scope: !1466, file: !3, line: 295, type: !11)
!1471 = !DILocation(line: 0, scope: !1466)
!1472 = !{!"828"}
!1473 = !DILocalVariable(name: "q", scope: !1466, file: !3, line: 297, type: !1320)
!1474 = !DILocation(line: 297, column: 11, scope: !1466)
!1475 = !{!"829"}
!1476 = !DILocation(line: 299, column: 2, scope: !1466)
!1477 = !{!"830"}
!1478 = !{!"831"}
!1479 = !{!"832"}
!1480 = !DILocation(line: 300, column: 9, scope: !1466)
!1481 = !{!"833"}
!1482 = !DILocation(line: 300, column: 2, scope: !1466)
!1483 = !{!"834"}
!1484 = !DILocation(line: 300, column: 7, scope: !1466)
!1485 = !{!"835"}
!1486 = !DILocation(line: 301, column: 20, scope: !1466)
!1487 = !{!"836"}
!1488 = !DILocation(line: 301, column: 2, scope: !1466)
!1489 = !{!"837"}
!1490 = !DILocation(line: 302, column: 28, scope: !1466)
!1491 = !{!"838"}
!1492 = !DILocation(line: 302, column: 2, scope: !1466)
!1493 = !{!"839"}
!1494 = !DILocation(line: 303, column: 20, scope: !1466)
!1495 = !{!"840"}
!1496 = !DILocation(line: 303, column: 2, scope: !1466)
!1497 = !{!"841"}
!1498 = !DILocation(line: 304, column: 19, scope: !1466)
!1499 = !{!"842"}
!1500 = !{!"843"}
!1501 = !DILocation(line: 304, column: 9, scope: !1466)
!1502 = !{!"844"}
!1503 = !DILocation(line: 304, column: 2, scope: !1466)
!1504 = !{!"845"}
!1505 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !3, file: !3, line: 376, type: !1506, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !31, !13, !1508}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1510 = !DILocalVariable(name: "skey", arg: 1, scope: !1505, file: !3, line: 376, type: !31)
!1511 = !DILocation(line: 0, scope: !1505)
!1512 = !{!"846"}
!1513 = !DILocalVariable(name: "num_rounds", arg: 2, scope: !1505, file: !3, line: 377, type: !13)
!1514 = !{!"847"}
!1515 = !DILocalVariable(name: "comp_skey", arg: 3, scope: !1505, file: !3, line: 377, type: !1508)
!1516 = !{!"848"}
!1517 = !DILocation(line: 381, column: 18, scope: !1505)
!1518 = !{!"849"}
!1519 = !DILocation(line: 381, column: 23, scope: !1505)
!1520 = !{!"850"}
!1521 = !DILocalVariable(name: "n", scope: !1505, file: !3, line: 379, type: !13)
!1522 = !{!"851"}
!1523 = !DILocalVariable(name: "u", scope: !1505, file: !3, line: 379, type: !13)
!1524 = !{!"852"}
!1525 = !DILocalVariable(name: "v", scope: !1505, file: !3, line: 379, type: !13)
!1526 = !{!"853"}
!1527 = !DILocation(line: 382, column: 7, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 382, column: 2)
!1529 = !{!"854"}
!1530 = !DILocation(line: 0, scope: !1528)
!1531 = !{!"855"}
!1532 = !{!"856"}
!1533 = !{!"857"}
!1534 = !{!"858"}
!1535 = !DILocation(line: 382, column: 23, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 382, column: 2)
!1537 = !{!"859"}
!1538 = !DILocation(line: 382, column: 2, scope: !1528)
!1539 = !{!"860"}
!1540 = !DILocation(line: 385, column: 23, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 382, column: 42)
!1542 = !{!"861"}
!1543 = !{!"862"}
!1544 = !{!"863"}
!1545 = !DILocalVariable(name: "x3", scope: !1541, file: !3, line: 383, type: !6)
!1546 = !DILocation(line: 0, scope: !1541)
!1547 = !{!"864"}
!1548 = !DILocalVariable(name: "x2", scope: !1541, file: !3, line: 383, type: !6)
!1549 = !{!"865"}
!1550 = !DILocalVariable(name: "x1", scope: !1541, file: !3, line: 383, type: !6)
!1551 = !{!"866"}
!1552 = !DILocalVariable(name: "x0", scope: !1541, file: !3, line: 383, type: !6)
!1553 = !{!"867"}
!1554 = !DILocation(line: 386, column: 6, scope: !1541)
!1555 = !{!"868"}
!1556 = !{!"869"}
!1557 = !DILocation(line: 387, column: 6, scope: !1541)
!1558 = !{!"870"}
!1559 = !{!"871"}
!1560 = !DILocation(line: 388, column: 6, scope: !1541)
!1561 = !{!"872"}
!1562 = !{!"873"}
!1563 = !DILocation(line: 389, column: 6, scope: !1541)
!1564 = !{!"874"}
!1565 = !{!"875"}
!1566 = !DILocation(line: 390, column: 6, scope: !1541)
!1567 = !{!"876"}
!1568 = !{!"877"}
!1569 = !DILocation(line: 391, column: 6, scope: !1541)
!1570 = !{!"878"}
!1571 = !{!"879"}
!1572 = !DILocation(line: 392, column: 6, scope: !1541)
!1573 = !{!"880"}
!1574 = !{!"881"}
!1575 = !DILocation(line: 393, column: 21, scope: !1541)
!1576 = !{!"882"}
!1577 = !DILocation(line: 393, column: 27, scope: !1541)
!1578 = !{!"883"}
!1579 = !DILocation(line: 393, column: 10, scope: !1541)
!1580 = !{!"884"}
!1581 = !DILocation(line: 393, column: 3, scope: !1541)
!1582 = !{!"885"}
!1583 = !{!"886"}
!1584 = !DILocation(line: 393, column: 15, scope: !1541)
!1585 = !{!"887"}
!1586 = !DILocation(line: 394, column: 21, scope: !1541)
!1587 = !{!"888"}
!1588 = !DILocation(line: 394, column: 27, scope: !1541)
!1589 = !{!"889"}
!1590 = !DILocation(line: 394, column: 10, scope: !1541)
!1591 = !{!"890"}
!1592 = !DILocation(line: 394, column: 3, scope: !1541)
!1593 = !{!"891"}
!1594 = !{!"892"}
!1595 = !DILocation(line: 394, column: 15, scope: !1541)
!1596 = !{!"893"}
!1597 = !DILocation(line: 395, column: 21, scope: !1541)
!1598 = !{!"894"}
!1599 = !DILocation(line: 395, column: 27, scope: !1541)
!1600 = !{!"895"}
!1601 = !DILocation(line: 395, column: 10, scope: !1541)
!1602 = !{!"896"}
!1603 = !DILocation(line: 395, column: 3, scope: !1541)
!1604 = !{!"897"}
!1605 = !{!"898"}
!1606 = !DILocation(line: 395, column: 15, scope: !1541)
!1607 = !{!"899"}
!1608 = !DILocation(line: 396, column: 21, scope: !1541)
!1609 = !{!"900"}
!1610 = !DILocation(line: 396, column: 27, scope: !1541)
!1611 = !{!"901"}
!1612 = !DILocation(line: 396, column: 10, scope: !1541)
!1613 = !{!"902"}
!1614 = !DILocation(line: 396, column: 3, scope: !1541)
!1615 = !{!"903"}
!1616 = !{!"904"}
!1617 = !DILocation(line: 396, column: 15, scope: !1541)
!1618 = !{!"905"}
!1619 = !DILocation(line: 397, column: 2, scope: !1541)
!1620 = !{!"906"}
!1621 = !DILocation(line: 382, column: 30, scope: !1536)
!1622 = !{!"907"}
!1623 = !{!"908"}
!1624 = !DILocation(line: 382, column: 36, scope: !1536)
!1625 = !{!"909"}
!1626 = !{!"910"}
!1627 = !DILocation(line: 382, column: 2, scope: !1536)
!1628 = distinct !{!1628, !1538, !1629, !1301}
!1629 = !DILocation(line: 397, column: 2, scope: !1528)
!1630 = !{!"911"}
!1631 = !DILocation(line: 398, column: 1, scope: !1505)
!1632 = !{!"912"}
!1633 = distinct !DISubprogram(name: "key_sched_wrapper", scope: !23, file: !23, line: 3, type: !1634, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !4)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1012, !1125, !1127}
!1636 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !1633, file: !23, line: 3, type: !1012)
!1637 = !DILocation(line: 0, scope: !1633)
!1638 = !{!"913"}
!1639 = !DILocalVariable(name: "key", arg: 2, scope: !1633, file: !23, line: 3, type: !1125)
!1640 = !{!"914"}
!1641 = !DILocalVariable(name: "key_len", arg: 3, scope: !1633, file: !23, line: 3, type: !1127)
!1642 = !{!"915"}
!1643 = !DILocation(line: 4, column: 12, scope: !1633)
!1644 = !{!"916"}
!1645 = !DILocation(line: 4, column: 2, scope: !1633)
!1646 = !{!"917"}
!1647 = !DILocation(line: 5, column: 12, scope: !1633)
!1648 = !{!"918"}
!1649 = !DILocation(line: 5, column: 2, scope: !1633)
!1650 = !{!"919"}
!1651 = !DILocation(line: 6, column: 12, scope: !1633)
!1652 = !{!"920"}
!1653 = !DILocation(line: 6, column: 2, scope: !1633)
!1654 = !{!"921"}
!1655 = !DILocation(line: 8, column: 23, scope: !1633)
!1656 = !{!"922"}
!1657 = !DILocation(line: 8, column: 2, scope: !1633)
!1658 = !{!"923"}
!1659 = !DILocation(line: 9, column: 1, scope: !1633)
!1660 = !{!"924"}
!1661 = distinct !DISubprogram(name: "key_sched_wrapper_t", scope: !23, file: !23, line: 17, type: !1662, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !4)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null}
!1664 = !DILocation(line: 18, column: 19, scope: !1661)
!1665 = !{!"925"}
!1666 = !DILocalVariable(name: "key_len", scope: !1661, file: !23, line: 18, type: !1127)
!1667 = !DILocation(line: 0, scope: !1661)
!1668 = !{!"926"}
!1669 = !DILocation(line: 19, column: 24, scope: !1661)
!1670 = !{!"927"}
!1671 = !DILocalVariable(name: "comp_skey", scope: !1661, file: !23, line: 19, type: !1012)
!1672 = !{!"928"}
!1673 = !DILocalVariable(name: "key", scope: !1661, file: !23, line: 20, type: !1125)
!1674 = !{!"929"}
!1675 = !DILocation(line: 21, column: 23, scope: !1661)
!1676 = !{!"930"}
!1677 = !DILocation(line: 21, column: 2, scope: !1661)
!1678 = !{!"931"}
!1679 = !DILocation(line: 22, column: 1, scope: !1661)
!1680 = !{!"932"}
