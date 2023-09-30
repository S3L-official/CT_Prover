; ModuleID = 'bitslice_encrypt-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

@Rcon = internal constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1, !dbg !0, !psr.id !21

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_bitslice_Sbox(i64* %0) #0 !dbg !31 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !35, metadata !DIExpression()), !dbg !36, !psr.id !37
  %2 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !38, !psr.id !39
  %3 = load i64, i64* %2, align 8, !dbg !38, !psr.id !40
  call void @llvm.dbg.value(metadata i64 %3, metadata !41, metadata !DIExpression()), !dbg !36, !psr.id !42
  %4 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !43, !psr.id !44
  %5 = load i64, i64* %4, align 8, !dbg !43, !psr.id !45
  call void @llvm.dbg.value(metadata i64 %5, metadata !46, metadata !DIExpression()), !dbg !36, !psr.id !47
  %6 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !48, !psr.id !49
  %7 = load i64, i64* %6, align 8, !dbg !48, !psr.id !50
  call void @llvm.dbg.value(metadata i64 %7, metadata !51, metadata !DIExpression()), !dbg !36, !psr.id !52
  %8 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !53, !psr.id !54
  %9 = load i64, i64* %8, align 8, !dbg !53, !psr.id !55
  call void @llvm.dbg.value(metadata i64 %9, metadata !56, metadata !DIExpression()), !dbg !36, !psr.id !57
  %10 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !58, !psr.id !59
  %11 = load i64, i64* %10, align 8, !dbg !58, !psr.id !60
  call void @llvm.dbg.value(metadata i64 %11, metadata !61, metadata !DIExpression()), !dbg !36, !psr.id !62
  %12 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !63, !psr.id !64
  %13 = load i64, i64* %12, align 8, !dbg !63, !psr.id !65
  call void @llvm.dbg.value(metadata i64 %13, metadata !66, metadata !DIExpression()), !dbg !36, !psr.id !67
  %14 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !68, !psr.id !69
  %15 = load i64, i64* %14, align 8, !dbg !68, !psr.id !70
  call void @llvm.dbg.value(metadata i64 %15, metadata !71, metadata !DIExpression()), !dbg !36, !psr.id !72
  %16 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !73, !psr.id !74
  %17 = load i64, i64* %16, align 8, !dbg !73, !psr.id !75
  call void @llvm.dbg.value(metadata i64 %17, metadata !76, metadata !DIExpression()), !dbg !36, !psr.id !77
  %18 = xor i64 %9, %13, !dbg !78, !psr.id !79
  call void @llvm.dbg.value(metadata i64 %18, metadata !80, metadata !DIExpression()), !dbg !36, !psr.id !81
  %19 = xor i64 %3, %15, !dbg !82, !psr.id !83
  call void @llvm.dbg.value(metadata i64 %19, metadata !84, metadata !DIExpression()), !dbg !36, !psr.id !85
  %20 = xor i64 %3, %9, !dbg !86, !psr.id !87
  call void @llvm.dbg.value(metadata i64 %20, metadata !88, metadata !DIExpression()), !dbg !36, !psr.id !89
  %21 = xor i64 %3, %13, !dbg !90, !psr.id !91
  call void @llvm.dbg.value(metadata i64 %21, metadata !92, metadata !DIExpression()), !dbg !36, !psr.id !93
  %22 = xor i64 %5, %7, !dbg !94, !psr.id !95
  call void @llvm.dbg.value(metadata i64 %22, metadata !96, metadata !DIExpression()), !dbg !36, !psr.id !97
  %23 = xor i64 %22, %17, !dbg !98, !psr.id !99
  call void @llvm.dbg.value(metadata i64 %23, metadata !100, metadata !DIExpression()), !dbg !36, !psr.id !101
  %24 = xor i64 %23, %9, !dbg !102, !psr.id !103
  call void @llvm.dbg.value(metadata i64 %24, metadata !104, metadata !DIExpression()), !dbg !36, !psr.id !105
  %25 = xor i64 %19, %18, !dbg !106, !psr.id !107
  call void @llvm.dbg.value(metadata i64 %25, metadata !108, metadata !DIExpression()), !dbg !36, !psr.id !109
  %26 = xor i64 %23, %3, !dbg !110, !psr.id !111
  call void @llvm.dbg.value(metadata i64 %26, metadata !112, metadata !DIExpression()), !dbg !36, !psr.id !113
  %27 = xor i64 %23, %15, !dbg !114, !psr.id !115
  call void @llvm.dbg.value(metadata i64 %27, metadata !116, metadata !DIExpression()), !dbg !36, !psr.id !117
  %28 = xor i64 %27, %21, !dbg !118, !psr.id !119
  call void @llvm.dbg.value(metadata i64 %28, metadata !120, metadata !DIExpression()), !dbg !36, !psr.id !121
  %29 = xor i64 %11, %25, !dbg !122, !psr.id !123
  call void @llvm.dbg.value(metadata i64 %29, metadata !124, metadata !DIExpression()), !dbg !36, !psr.id !125
  %30 = xor i64 %29, %13, !dbg !126, !psr.id !127
  call void @llvm.dbg.value(metadata i64 %30, metadata !128, metadata !DIExpression()), !dbg !36, !psr.id !129
  %31 = xor i64 %29, %5, !dbg !130, !psr.id !131
  call void @llvm.dbg.value(metadata i64 %31, metadata !132, metadata !DIExpression()), !dbg !36, !psr.id !133
  %32 = xor i64 %30, %17, !dbg !134, !psr.id !135
  call void @llvm.dbg.value(metadata i64 %32, metadata !136, metadata !DIExpression()), !dbg !36, !psr.id !137
  %33 = xor i64 %30, %22, !dbg !138, !psr.id !139
  call void @llvm.dbg.value(metadata i64 %33, metadata !140, metadata !DIExpression()), !dbg !36, !psr.id !141
  %34 = xor i64 %31, %20, !dbg !142, !psr.id !143
  call void @llvm.dbg.value(metadata i64 %34, metadata !144, metadata !DIExpression()), !dbg !36, !psr.id !145
  %35 = xor i64 %17, %34, !dbg !146, !psr.id !147
  call void @llvm.dbg.value(metadata i64 %35, metadata !148, metadata !DIExpression()), !dbg !36, !psr.id !149
  %36 = xor i64 %33, %34, !dbg !150, !psr.id !151
  call void @llvm.dbg.value(metadata i64 %36, metadata !152, metadata !DIExpression()), !dbg !36, !psr.id !153
  %37 = xor i64 %33, %21, !dbg !154, !psr.id !155
  call void @llvm.dbg.value(metadata i64 %37, metadata !156, metadata !DIExpression()), !dbg !36, !psr.id !157
  %38 = xor i64 %22, %34, !dbg !158, !psr.id !159
  call void @llvm.dbg.value(metadata i64 %38, metadata !160, metadata !DIExpression()), !dbg !36, !psr.id !161
  %39 = xor i64 %19, %38, !dbg !162, !psr.id !163
  call void @llvm.dbg.value(metadata i64 %39, metadata !164, metadata !DIExpression()), !dbg !36, !psr.id !165
  %40 = xor i64 %3, %38, !dbg !166, !psr.id !167
  call void @llvm.dbg.value(metadata i64 %40, metadata !168, metadata !DIExpression()), !dbg !36, !psr.id !169
  %41 = and i64 %25, %30, !dbg !170, !psr.id !171
  call void @llvm.dbg.value(metadata i64 %41, metadata !172, metadata !DIExpression()), !dbg !36, !psr.id !173
  %42 = and i64 %28, %32, !dbg !174, !psr.id !175
  call void @llvm.dbg.value(metadata i64 %42, metadata !176, metadata !DIExpression()), !dbg !36, !psr.id !177
  %43 = xor i64 %42, %41, !dbg !178, !psr.id !179
  call void @llvm.dbg.value(metadata i64 %43, metadata !180, metadata !DIExpression()), !dbg !36, !psr.id !181
  %44 = and i64 %24, %17, !dbg !182, !psr.id !183
  call void @llvm.dbg.value(metadata i64 %44, metadata !184, metadata !DIExpression()), !dbg !36, !psr.id !185
  %45 = xor i64 %44, %41, !dbg !186, !psr.id !187
  call void @llvm.dbg.value(metadata i64 %45, metadata !188, metadata !DIExpression()), !dbg !36, !psr.id !189
  %46 = and i64 %19, %38, !dbg !190, !psr.id !191
  call void @llvm.dbg.value(metadata i64 %46, metadata !192, metadata !DIExpression()), !dbg !36, !psr.id !193
  %47 = and i64 %27, %23, !dbg !194, !psr.id !195
  call void @llvm.dbg.value(metadata i64 %47, metadata !196, metadata !DIExpression()), !dbg !36, !psr.id !197
  %48 = xor i64 %47, %46, !dbg !198, !psr.id !199
  call void @llvm.dbg.value(metadata i64 %48, metadata !200, metadata !DIExpression()), !dbg !36, !psr.id !201
  %49 = and i64 %26, %35, !dbg !202, !psr.id !203
  call void @llvm.dbg.value(metadata i64 %49, metadata !204, metadata !DIExpression()), !dbg !36, !psr.id !205
  %50 = xor i64 %49, %46, !dbg !206, !psr.id !207
  call void @llvm.dbg.value(metadata i64 %50, metadata !208, metadata !DIExpression()), !dbg !36, !psr.id !209
  %51 = and i64 %20, %34, !dbg !210, !psr.id !211
  call void @llvm.dbg.value(metadata i64 %51, metadata !212, metadata !DIExpression()), !dbg !36, !psr.id !213
  %52 = and i64 %18, %36, !dbg !214, !psr.id !215
  call void @llvm.dbg.value(metadata i64 %52, metadata !216, metadata !DIExpression()), !dbg !36, !psr.id !217
  %53 = xor i64 %52, %51, !dbg !218, !psr.id !219
  call void @llvm.dbg.value(metadata i64 %53, metadata !220, metadata !DIExpression()), !dbg !36, !psr.id !221
  %54 = and i64 %21, %33, !dbg !222, !psr.id !223
  call void @llvm.dbg.value(metadata i64 %54, metadata !224, metadata !DIExpression()), !dbg !36, !psr.id !225
  %55 = xor i64 %54, %51, !dbg !226, !psr.id !227
  call void @llvm.dbg.value(metadata i64 %55, metadata !228, metadata !DIExpression()), !dbg !36, !psr.id !229
  %56 = xor i64 %43, %53, !dbg !230, !psr.id !231
  call void @llvm.dbg.value(metadata i64 %56, metadata !232, metadata !DIExpression()), !dbg !36, !psr.id !233
  %57 = xor i64 %45, %55, !dbg !234, !psr.id !235
  call void @llvm.dbg.value(metadata i64 %57, metadata !236, metadata !DIExpression()), !dbg !36, !psr.id !237
  %58 = xor i64 %48, %53, !dbg !238, !psr.id !239
  call void @llvm.dbg.value(metadata i64 %58, metadata !240, metadata !DIExpression()), !dbg !36, !psr.id !241
  %59 = xor i64 %50, %55, !dbg !242, !psr.id !243
  call void @llvm.dbg.value(metadata i64 %59, metadata !244, metadata !DIExpression()), !dbg !36, !psr.id !245
  %60 = xor i64 %56, %31, !dbg !246, !psr.id !247
  call void @llvm.dbg.value(metadata i64 %60, metadata !248, metadata !DIExpression()), !dbg !36, !psr.id !249
  %61 = xor i64 %57, %37, !dbg !250, !psr.id !251
  call void @llvm.dbg.value(metadata i64 %61, metadata !252, metadata !DIExpression()), !dbg !36, !psr.id !253
  %62 = xor i64 %58, %39, !dbg !254, !psr.id !255
  call void @llvm.dbg.value(metadata i64 %62, metadata !256, metadata !DIExpression()), !dbg !36, !psr.id !257
  %63 = xor i64 %59, %40, !dbg !258, !psr.id !259
  call void @llvm.dbg.value(metadata i64 %63, metadata !260, metadata !DIExpression()), !dbg !36, !psr.id !261
  %64 = xor i64 %60, %61, !dbg !262, !psr.id !263
  call void @llvm.dbg.value(metadata i64 %64, metadata !264, metadata !DIExpression()), !dbg !36, !psr.id !265
  %65 = and i64 %60, %62, !dbg !266, !psr.id !267
  call void @llvm.dbg.value(metadata i64 %65, metadata !268, metadata !DIExpression()), !dbg !36, !psr.id !269
  %66 = xor i64 %63, %65, !dbg !270, !psr.id !271
  call void @llvm.dbg.value(metadata i64 %66, metadata !272, metadata !DIExpression()), !dbg !36, !psr.id !273
  %67 = and i64 %64, %66, !dbg !274, !psr.id !275
  call void @llvm.dbg.value(metadata i64 %67, metadata !276, metadata !DIExpression()), !dbg !36, !psr.id !277
  %68 = xor i64 %67, %61, !dbg !278, !psr.id !279
  call void @llvm.dbg.value(metadata i64 %68, metadata !280, metadata !DIExpression()), !dbg !36, !psr.id !281
  %69 = xor i64 %62, %63, !dbg !282, !psr.id !283
  call void @llvm.dbg.value(metadata i64 %69, metadata !284, metadata !DIExpression()), !dbg !36, !psr.id !285
  %70 = xor i64 %61, %65, !dbg !286, !psr.id !287
  call void @llvm.dbg.value(metadata i64 %70, metadata !288, metadata !DIExpression()), !dbg !36, !psr.id !289
  %71 = and i64 %70, %69, !dbg !290, !psr.id !291
  call void @llvm.dbg.value(metadata i64 %71, metadata !292, metadata !DIExpression()), !dbg !36, !psr.id !293
  %72 = xor i64 %71, %63, !dbg !294, !psr.id !295
  call void @llvm.dbg.value(metadata i64 %72, metadata !296, metadata !DIExpression()), !dbg !36, !psr.id !297
  %73 = xor i64 %62, %72, !dbg !298, !psr.id !299
  call void @llvm.dbg.value(metadata i64 %73, metadata !300, metadata !DIExpression()), !dbg !36, !psr.id !301
  %74 = xor i64 %66, %72, !dbg !302, !psr.id !303
  call void @llvm.dbg.value(metadata i64 %74, metadata !304, metadata !DIExpression()), !dbg !36, !psr.id !305
  %75 = and i64 %63, %74, !dbg !306, !psr.id !307
  call void @llvm.dbg.value(metadata i64 %75, metadata !308, metadata !DIExpression()), !dbg !36, !psr.id !309
  %76 = xor i64 %75, %73, !dbg !310, !psr.id !311
  call void @llvm.dbg.value(metadata i64 %76, metadata !312, metadata !DIExpression()), !dbg !36, !psr.id !313
  %77 = xor i64 %66, %75, !dbg !314, !psr.id !315
  call void @llvm.dbg.value(metadata i64 %77, metadata !316, metadata !DIExpression()), !dbg !36, !psr.id !317
  %78 = and i64 %68, %77, !dbg !318, !psr.id !319
  call void @llvm.dbg.value(metadata i64 %78, metadata !320, metadata !DIExpression()), !dbg !36, !psr.id !321
  %79 = xor i64 %64, %78, !dbg !322, !psr.id !323
  call void @llvm.dbg.value(metadata i64 %79, metadata !324, metadata !DIExpression()), !dbg !36, !psr.id !325
  %80 = xor i64 %79, %76, !dbg !326, !psr.id !327
  call void @llvm.dbg.value(metadata i64 %80, metadata !328, metadata !DIExpression()), !dbg !36, !psr.id !329
  %81 = xor i64 %68, %72, !dbg !330, !psr.id !331
  call void @llvm.dbg.value(metadata i64 %81, metadata !332, metadata !DIExpression()), !dbg !36, !psr.id !333
  %82 = xor i64 %68, %79, !dbg !334, !psr.id !335
  call void @llvm.dbg.value(metadata i64 %82, metadata !336, metadata !DIExpression()), !dbg !36, !psr.id !337
  %83 = xor i64 %72, %76, !dbg !338, !psr.id !339
  call void @llvm.dbg.value(metadata i64 %83, metadata !340, metadata !DIExpression()), !dbg !36, !psr.id !341
  %84 = xor i64 %81, %80, !dbg !342, !psr.id !343
  call void @llvm.dbg.value(metadata i64 %84, metadata !344, metadata !DIExpression()), !dbg !36, !psr.id !345
  %85 = and i64 %83, %30, !dbg !346, !psr.id !347
  call void @llvm.dbg.value(metadata i64 %85, metadata !348, metadata !DIExpression()), !dbg !36, !psr.id !349
  %86 = and i64 %76, %32, !dbg !350, !psr.id !351
  call void @llvm.dbg.value(metadata i64 %86, metadata !352, metadata !DIExpression()), !dbg !36, !psr.id !353
  %87 = and i64 %72, %17, !dbg !354, !psr.id !355
  call void @llvm.dbg.value(metadata i64 %87, metadata !356, metadata !DIExpression()), !dbg !36, !psr.id !357
  %88 = and i64 %82, %38, !dbg !358, !psr.id !359
  call void @llvm.dbg.value(metadata i64 %88, metadata !360, metadata !DIExpression()), !dbg !36, !psr.id !361
  %89 = and i64 %79, %23, !dbg !362, !psr.id !363
  call void @llvm.dbg.value(metadata i64 %89, metadata !364, metadata !DIExpression()), !dbg !36, !psr.id !365
  %90 = and i64 %68, %35, !dbg !366, !psr.id !367
  call void @llvm.dbg.value(metadata i64 %90, metadata !368, metadata !DIExpression()), !dbg !36, !psr.id !369
  %91 = and i64 %81, %34, !dbg !370, !psr.id !371
  call void @llvm.dbg.value(metadata i64 %91, metadata !372, metadata !DIExpression()), !dbg !36, !psr.id !373
  %92 = and i64 %84, %36, !dbg !374, !psr.id !375
  call void @llvm.dbg.value(metadata i64 %92, metadata !376, metadata !DIExpression()), !dbg !36, !psr.id !377
  %93 = and i64 %80, %33, !dbg !378, !psr.id !379
  call void @llvm.dbg.value(metadata i64 %93, metadata !380, metadata !DIExpression()), !dbg !36, !psr.id !381
  %94 = and i64 %83, %25, !dbg !382, !psr.id !383
  call void @llvm.dbg.value(metadata i64 %94, metadata !384, metadata !DIExpression()), !dbg !36, !psr.id !385
  %95 = and i64 %76, %28, !dbg !386, !psr.id !387
  call void @llvm.dbg.value(metadata i64 %95, metadata !388, metadata !DIExpression()), !dbg !36, !psr.id !389
  %96 = and i64 %72, %24, !dbg !390, !psr.id !391
  call void @llvm.dbg.value(metadata i64 %96, metadata !392, metadata !DIExpression()), !dbg !36, !psr.id !393
  %97 = and i64 %82, %19, !dbg !394, !psr.id !395
  call void @llvm.dbg.value(metadata i64 %97, metadata !396, metadata !DIExpression()), !dbg !36, !psr.id !397
  %98 = and i64 %79, %27, !dbg !398, !psr.id !399
  call void @llvm.dbg.value(metadata i64 %98, metadata !400, metadata !DIExpression()), !dbg !36, !psr.id !401
  %99 = and i64 %68, %26, !dbg !402, !psr.id !403
  call void @llvm.dbg.value(metadata i64 %99, metadata !404, metadata !DIExpression()), !dbg !36, !psr.id !405
  %100 = and i64 %81, %20, !dbg !406, !psr.id !407
  call void @llvm.dbg.value(metadata i64 %100, metadata !408, metadata !DIExpression()), !dbg !36, !psr.id !409
  %101 = and i64 %84, %18, !dbg !410, !psr.id !411
  call void @llvm.dbg.value(metadata i64 %101, metadata !412, metadata !DIExpression()), !dbg !36, !psr.id !413
  %102 = and i64 %80, %21, !dbg !414, !psr.id !415
  call void @llvm.dbg.value(metadata i64 %102, metadata !416, metadata !DIExpression()), !dbg !36, !psr.id !417
  %103 = xor i64 %100, %101, !dbg !418, !psr.id !419
  call void @llvm.dbg.value(metadata i64 %103, metadata !420, metadata !DIExpression()), !dbg !36, !psr.id !421
  %104 = xor i64 %95, %96, !dbg !422, !psr.id !423
  call void @llvm.dbg.value(metadata i64 %104, metadata !424, metadata !DIExpression()), !dbg !36, !psr.id !425
  %105 = xor i64 %90, %98, !dbg !426, !psr.id !427
  call void @llvm.dbg.value(metadata i64 %105, metadata !428, metadata !DIExpression()), !dbg !36, !psr.id !429
  %106 = xor i64 %94, %95, !dbg !430, !psr.id !431
  call void @llvm.dbg.value(metadata i64 %106, metadata !432, metadata !DIExpression()), !dbg !36, !psr.id !433
  %107 = xor i64 %87, %97, !dbg !434, !psr.id !435
  call void @llvm.dbg.value(metadata i64 %107, metadata !436, metadata !DIExpression()), !dbg !36, !psr.id !437
  %108 = xor i64 %87, %90, !dbg !438, !psr.id !439
  call void @llvm.dbg.value(metadata i64 %108, metadata !440, metadata !DIExpression()), !dbg !36, !psr.id !441
  %109 = xor i64 %92, %93, !dbg !442, !psr.id !443
  call void @llvm.dbg.value(metadata i64 %109, metadata !444, metadata !DIExpression()), !dbg !36, !psr.id !445
  %110 = xor i64 %85, %88, !dbg !446, !psr.id !447
  call void @llvm.dbg.value(metadata i64 %110, metadata !448, metadata !DIExpression()), !dbg !36, !psr.id !449
  %111 = xor i64 %91, %92, !dbg !450, !psr.id !451
  call void @llvm.dbg.value(metadata i64 %111, metadata !452, metadata !DIExpression()), !dbg !36, !psr.id !453
  %112 = xor i64 %101, %102, !dbg !454, !psr.id !455
  call void @llvm.dbg.value(metadata i64 %112, metadata !456, metadata !DIExpression()), !dbg !36, !psr.id !457
  %113 = xor i64 %97, %105, !dbg !458, !psr.id !459
  call void @llvm.dbg.value(metadata i64 %113, metadata !460, metadata !DIExpression()), !dbg !36, !psr.id !461
  %114 = xor i64 %107, %110, !dbg !462, !psr.id !463
  call void @llvm.dbg.value(metadata i64 %114, metadata !464, metadata !DIExpression()), !dbg !36, !psr.id !465
  %115 = xor i64 %89, %103, !dbg !466, !psr.id !467
  call void @llvm.dbg.value(metadata i64 %115, metadata !468, metadata !DIExpression()), !dbg !36, !psr.id !469
  %116 = xor i64 %88, %111, !dbg !470, !psr.id !471
  call void @llvm.dbg.value(metadata i64 %116, metadata !472, metadata !DIExpression()), !dbg !36, !psr.id !473
  %117 = xor i64 %103, %114, !dbg !474, !psr.id !475
  call void @llvm.dbg.value(metadata i64 %117, metadata !476, metadata !DIExpression()), !dbg !36, !psr.id !477
  %118 = xor i64 %99, %114, !dbg !478, !psr.id !479
  call void @llvm.dbg.value(metadata i64 %118, metadata !480, metadata !DIExpression()), !dbg !36, !psr.id !481
  %119 = xor i64 %109, %115, !dbg !482, !psr.id !483
  call void @llvm.dbg.value(metadata i64 %119, metadata !484, metadata !DIExpression()), !dbg !36, !psr.id !485
  %120 = xor i64 %106, %115, !dbg !486, !psr.id !487
  call void @llvm.dbg.value(metadata i64 %120, metadata !488, metadata !DIExpression()), !dbg !36, !psr.id !489
  %121 = xor i64 %89, %116, !dbg !490, !psr.id !491
  call void @llvm.dbg.value(metadata i64 %121, metadata !492, metadata !DIExpression()), !dbg !36, !psr.id !493
  %122 = xor i64 %118, %119, !dbg !494, !psr.id !495
  call void @llvm.dbg.value(metadata i64 %122, metadata !496, metadata !DIExpression()), !dbg !36, !psr.id !497
  %123 = xor i64 %86, %120, !dbg !498, !psr.id !499
  call void @llvm.dbg.value(metadata i64 %123, metadata !500, metadata !DIExpression()), !dbg !36, !psr.id !501
  %124 = xor i64 %116, %120, !dbg !502, !psr.id !503
  call void @llvm.dbg.value(metadata i64 %124, metadata !504, metadata !DIExpression()), !dbg !36, !psr.id !505
  %125 = xor i64 %119, -1, !dbg !506, !psr.id !507
  %126 = xor i64 %113, %125, !dbg !508, !psr.id !509
  call void @llvm.dbg.value(metadata i64 %126, metadata !510, metadata !DIExpression()), !dbg !36, !psr.id !511
  %127 = xor i64 %117, -1, !dbg !512, !psr.id !513
  %128 = xor i64 %105, %127, !dbg !514, !psr.id !515
  call void @llvm.dbg.value(metadata i64 %128, metadata !516, metadata !DIExpression()), !dbg !36, !psr.id !517
  %129 = xor i64 %121, %122, !dbg !518, !psr.id !519
  call void @llvm.dbg.value(metadata i64 %129, metadata !520, metadata !DIExpression()), !dbg !36, !psr.id !521
  %130 = xor i64 %110, %123, !dbg !522, !psr.id !523
  call void @llvm.dbg.value(metadata i64 %130, metadata !524, metadata !DIExpression()), !dbg !36, !psr.id !525
  %131 = xor i64 %108, %123, !dbg !526, !psr.id !527
  call void @llvm.dbg.value(metadata i64 %131, metadata !528, metadata !DIExpression()), !dbg !36, !psr.id !529
  %132 = xor i64 %104, %122, !dbg !530, !psr.id !531
  call void @llvm.dbg.value(metadata i64 %132, metadata !532, metadata !DIExpression()), !dbg !36, !psr.id !533
  %133 = xor i64 %130, -1, !dbg !534, !psr.id !535
  %134 = xor i64 %121, %133, !dbg !536, !psr.id !537
  call void @llvm.dbg.value(metadata i64 %134, metadata !538, metadata !DIExpression()), !dbg !36, !psr.id !539
  %135 = xor i64 %129, -1, !dbg !540, !psr.id !541
  %136 = xor i64 %112, %135, !dbg !542, !psr.id !543
  call void @llvm.dbg.value(metadata i64 %136, metadata !544, metadata !DIExpression()), !dbg !36, !psr.id !545
  %137 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !546, !psr.id !547
  store i64 %124, i64* %137, align 8, !dbg !548, !psr.id !549
  %138 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !550, !psr.id !551
  store i64 %134, i64* %138, align 8, !dbg !552, !psr.id !553
  %139 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !554, !psr.id !555
  store i64 %136, i64* %139, align 8, !dbg !556, !psr.id !557
  %140 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !558, !psr.id !559
  store i64 %130, i64* %140, align 8, !dbg !560, !psr.id !561
  %141 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !562, !psr.id !563
  store i64 %131, i64* %141, align 8, !dbg !564, !psr.id !565
  %142 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !566, !psr.id !567
  store i64 %132, i64* %142, align 8, !dbg !568, !psr.id !569
  %143 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !570, !psr.id !571
  store i64 %126, i64* %143, align 8, !dbg !572, !psr.id !573
  %144 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !574, !psr.id !575
  store i64 %128, i64* %144, align 8, !dbg !576, !psr.id !577
  ret void, !dbg !578, !psr.id !579
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_ortho(i64* %0) #0 !dbg !580 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !581, metadata !DIExpression()), !dbg !582, !psr.id !583
  br label %2, !dbg !584, !psr.id !585

2:                                                ; preds = %1
  %3 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !586, !psr.id !588
  %4 = load i64, i64* %3, align 8, !dbg !586, !psr.id !589
  call void @llvm.dbg.value(metadata i64 %4, metadata !590, metadata !DIExpression()), !dbg !591, !psr.id !592
  %5 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !586, !psr.id !593
  %6 = load i64, i64* %5, align 8, !dbg !586, !psr.id !594
  call void @llvm.dbg.value(metadata i64 %6, metadata !595, metadata !DIExpression()), !dbg !591, !psr.id !596
  %7 = and i64 %4, 6148914691236517205, !dbg !586, !psr.id !597
  %8 = and i64 %6, 6148914691236517205, !dbg !586, !psr.id !598
  %9 = shl i64 %8, 1, !dbg !586, !psr.id !599
  %10 = or i64 %7, %9, !dbg !586, !psr.id !600
  %11 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !586, !psr.id !601
  store i64 %10, i64* %11, align 8, !dbg !586, !psr.id !602
  %12 = and i64 %4, -6148914691236517206, !dbg !586, !psr.id !603
  %13 = lshr i64 %12, 1, !dbg !586, !psr.id !604
  %14 = and i64 %6, -6148914691236517206, !dbg !586, !psr.id !605
  %15 = or i64 %13, %14, !dbg !586, !psr.id !606
  %16 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !586, !psr.id !607
  store i64 %15, i64* %16, align 8, !dbg !586, !psr.id !608
  br label %17, !dbg !586, !psr.id !609

17:                                               ; preds = %2
  br label %18, !dbg !610, !psr.id !611

18:                                               ; preds = %17
  %19 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !612, !psr.id !614
  %20 = load i64, i64* %19, align 8, !dbg !612, !psr.id !615
  call void @llvm.dbg.value(metadata i64 %20, metadata !616, metadata !DIExpression()), !dbg !617, !psr.id !618
  %21 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !612, !psr.id !619
  %22 = load i64, i64* %21, align 8, !dbg !612, !psr.id !620
  call void @llvm.dbg.value(metadata i64 %22, metadata !621, metadata !DIExpression()), !dbg !617, !psr.id !622
  %23 = and i64 %20, 6148914691236517205, !dbg !612, !psr.id !623
  %24 = and i64 %22, 6148914691236517205, !dbg !612, !psr.id !624
  %25 = shl i64 %24, 1, !dbg !612, !psr.id !625
  %26 = or i64 %23, %25, !dbg !612, !psr.id !626
  %27 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !612, !psr.id !627
  store i64 %26, i64* %27, align 8, !dbg !612, !psr.id !628
  %28 = and i64 %20, -6148914691236517206, !dbg !612, !psr.id !629
  %29 = lshr i64 %28, 1, !dbg !612, !psr.id !630
  %30 = and i64 %22, -6148914691236517206, !dbg !612, !psr.id !631
  %31 = or i64 %29, %30, !dbg !612, !psr.id !632
  %32 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !612, !psr.id !633
  store i64 %31, i64* %32, align 8, !dbg !612, !psr.id !634
  br label %33, !dbg !612, !psr.id !635

33:                                               ; preds = %18
  br label %34, !dbg !636, !psr.id !637

34:                                               ; preds = %33
  %35 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !638, !psr.id !640
  %36 = load i64, i64* %35, align 8, !dbg !638, !psr.id !641
  call void @llvm.dbg.value(metadata i64 %36, metadata !642, metadata !DIExpression()), !dbg !643, !psr.id !644
  %37 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !638, !psr.id !645
  %38 = load i64, i64* %37, align 8, !dbg !638, !psr.id !646
  call void @llvm.dbg.value(metadata i64 %38, metadata !647, metadata !DIExpression()), !dbg !643, !psr.id !648
  %39 = and i64 %36, 6148914691236517205, !dbg !638, !psr.id !649
  %40 = and i64 %38, 6148914691236517205, !dbg !638, !psr.id !650
  %41 = shl i64 %40, 1, !dbg !638, !psr.id !651
  %42 = or i64 %39, %41, !dbg !638, !psr.id !652
  %43 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !638, !psr.id !653
  store i64 %42, i64* %43, align 8, !dbg !638, !psr.id !654
  %44 = and i64 %36, -6148914691236517206, !dbg !638, !psr.id !655
  %45 = lshr i64 %44, 1, !dbg !638, !psr.id !656
  %46 = and i64 %38, -6148914691236517206, !dbg !638, !psr.id !657
  %47 = or i64 %45, %46, !dbg !638, !psr.id !658
  %48 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !638, !psr.id !659
  store i64 %47, i64* %48, align 8, !dbg !638, !psr.id !660
  br label %49, !dbg !638, !psr.id !661

49:                                               ; preds = %34
  br label %50, !dbg !662, !psr.id !663

50:                                               ; preds = %49
  %51 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !664, !psr.id !666
  %52 = load i64, i64* %51, align 8, !dbg !664, !psr.id !667
  call void @llvm.dbg.value(metadata i64 %52, metadata !668, metadata !DIExpression()), !dbg !669, !psr.id !670
  %53 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !664, !psr.id !671
  %54 = load i64, i64* %53, align 8, !dbg !664, !psr.id !672
  call void @llvm.dbg.value(metadata i64 %54, metadata !673, metadata !DIExpression()), !dbg !669, !psr.id !674
  %55 = and i64 %52, 6148914691236517205, !dbg !664, !psr.id !675
  %56 = and i64 %54, 6148914691236517205, !dbg !664, !psr.id !676
  %57 = shl i64 %56, 1, !dbg !664, !psr.id !677
  %58 = or i64 %55, %57, !dbg !664, !psr.id !678
  %59 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !664, !psr.id !679
  store i64 %58, i64* %59, align 8, !dbg !664, !psr.id !680
  %60 = and i64 %52, -6148914691236517206, !dbg !664, !psr.id !681
  %61 = lshr i64 %60, 1, !dbg !664, !psr.id !682
  %62 = and i64 %54, -6148914691236517206, !dbg !664, !psr.id !683
  %63 = or i64 %61, %62, !dbg !664, !psr.id !684
  %64 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !664, !psr.id !685
  store i64 %63, i64* %64, align 8, !dbg !664, !psr.id !686
  br label %65, !dbg !664, !psr.id !687

65:                                               ; preds = %50
  br label %66, !dbg !688, !psr.id !689

66:                                               ; preds = %65
  %67 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !690, !psr.id !692
  %68 = load i64, i64* %67, align 8, !dbg !690, !psr.id !693
  call void @llvm.dbg.value(metadata i64 %68, metadata !694, metadata !DIExpression()), !dbg !695, !psr.id !696
  %69 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !690, !psr.id !697
  %70 = load i64, i64* %69, align 8, !dbg !690, !psr.id !698
  call void @llvm.dbg.value(metadata i64 %70, metadata !699, metadata !DIExpression()), !dbg !695, !psr.id !700
  %71 = and i64 %68, 3689348814741910323, !dbg !690, !psr.id !701
  %72 = and i64 %70, 3689348814741910323, !dbg !690, !psr.id !702
  %73 = shl i64 %72, 2, !dbg !690, !psr.id !703
  %74 = or i64 %71, %73, !dbg !690, !psr.id !704
  %75 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !690, !psr.id !705
  store i64 %74, i64* %75, align 8, !dbg !690, !psr.id !706
  %76 = and i64 %68, -3689348814741910324, !dbg !690, !psr.id !707
  %77 = lshr i64 %76, 2, !dbg !690, !psr.id !708
  %78 = and i64 %70, -3689348814741910324, !dbg !690, !psr.id !709
  %79 = or i64 %77, %78, !dbg !690, !psr.id !710
  %80 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !690, !psr.id !711
  store i64 %79, i64* %80, align 8, !dbg !690, !psr.id !712
  br label %81, !dbg !690, !psr.id !713

81:                                               ; preds = %66
  br label %82, !dbg !714, !psr.id !715

82:                                               ; preds = %81
  %83 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !716, !psr.id !718
  %84 = load i64, i64* %83, align 8, !dbg !716, !psr.id !719
  call void @llvm.dbg.value(metadata i64 %84, metadata !720, metadata !DIExpression()), !dbg !721, !psr.id !722
  %85 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !716, !psr.id !723
  %86 = load i64, i64* %85, align 8, !dbg !716, !psr.id !724
  call void @llvm.dbg.value(metadata i64 %86, metadata !725, metadata !DIExpression()), !dbg !721, !psr.id !726
  %87 = and i64 %84, 3689348814741910323, !dbg !716, !psr.id !727
  %88 = and i64 %86, 3689348814741910323, !dbg !716, !psr.id !728
  %89 = shl i64 %88, 2, !dbg !716, !psr.id !729
  %90 = or i64 %87, %89, !dbg !716, !psr.id !730
  %91 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !716, !psr.id !731
  store i64 %90, i64* %91, align 8, !dbg !716, !psr.id !732
  %92 = and i64 %84, -3689348814741910324, !dbg !716, !psr.id !733
  %93 = lshr i64 %92, 2, !dbg !716, !psr.id !734
  %94 = and i64 %86, -3689348814741910324, !dbg !716, !psr.id !735
  %95 = or i64 %93, %94, !dbg !716, !psr.id !736
  %96 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !716, !psr.id !737
  store i64 %95, i64* %96, align 8, !dbg !716, !psr.id !738
  br label %97, !dbg !716, !psr.id !739

97:                                               ; preds = %82
  br label %98, !dbg !740, !psr.id !741

98:                                               ; preds = %97
  %99 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !742, !psr.id !744
  %100 = load i64, i64* %99, align 8, !dbg !742, !psr.id !745
  call void @llvm.dbg.value(metadata i64 %100, metadata !746, metadata !DIExpression()), !dbg !747, !psr.id !748
  %101 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !742, !psr.id !749
  %102 = load i64, i64* %101, align 8, !dbg !742, !psr.id !750
  call void @llvm.dbg.value(metadata i64 %102, metadata !751, metadata !DIExpression()), !dbg !747, !psr.id !752
  %103 = and i64 %100, 3689348814741910323, !dbg !742, !psr.id !753
  %104 = and i64 %102, 3689348814741910323, !dbg !742, !psr.id !754
  %105 = shl i64 %104, 2, !dbg !742, !psr.id !755
  %106 = or i64 %103, %105, !dbg !742, !psr.id !756
  %107 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !742, !psr.id !757
  store i64 %106, i64* %107, align 8, !dbg !742, !psr.id !758
  %108 = and i64 %100, -3689348814741910324, !dbg !742, !psr.id !759
  %109 = lshr i64 %108, 2, !dbg !742, !psr.id !760
  %110 = and i64 %102, -3689348814741910324, !dbg !742, !psr.id !761
  %111 = or i64 %109, %110, !dbg !742, !psr.id !762
  %112 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !742, !psr.id !763
  store i64 %111, i64* %112, align 8, !dbg !742, !psr.id !764
  br label %113, !dbg !742, !psr.id !765

113:                                              ; preds = %98
  br label %114, !dbg !766, !psr.id !767

114:                                              ; preds = %113
  %115 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !768, !psr.id !770
  %116 = load i64, i64* %115, align 8, !dbg !768, !psr.id !771
  call void @llvm.dbg.value(metadata i64 %116, metadata !772, metadata !DIExpression()), !dbg !773, !psr.id !774
  %117 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !768, !psr.id !775
  %118 = load i64, i64* %117, align 8, !dbg !768, !psr.id !776
  call void @llvm.dbg.value(metadata i64 %118, metadata !777, metadata !DIExpression()), !dbg !773, !psr.id !778
  %119 = and i64 %116, 3689348814741910323, !dbg !768, !psr.id !779
  %120 = and i64 %118, 3689348814741910323, !dbg !768, !psr.id !780
  %121 = shl i64 %120, 2, !dbg !768, !psr.id !781
  %122 = or i64 %119, %121, !dbg !768, !psr.id !782
  %123 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !768, !psr.id !783
  store i64 %122, i64* %123, align 8, !dbg !768, !psr.id !784
  %124 = and i64 %116, -3689348814741910324, !dbg !768, !psr.id !785
  %125 = lshr i64 %124, 2, !dbg !768, !psr.id !786
  %126 = and i64 %118, -3689348814741910324, !dbg !768, !psr.id !787
  %127 = or i64 %125, %126, !dbg !768, !psr.id !788
  %128 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !768, !psr.id !789
  store i64 %127, i64* %128, align 8, !dbg !768, !psr.id !790
  br label %129, !dbg !768, !psr.id !791

129:                                              ; preds = %114
  br label %130, !dbg !792, !psr.id !793

130:                                              ; preds = %129
  %131 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !794, !psr.id !796
  %132 = load i64, i64* %131, align 8, !dbg !794, !psr.id !797
  call void @llvm.dbg.value(metadata i64 %132, metadata !798, metadata !DIExpression()), !dbg !799, !psr.id !800
  %133 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !794, !psr.id !801
  %134 = load i64, i64* %133, align 8, !dbg !794, !psr.id !802
  call void @llvm.dbg.value(metadata i64 %134, metadata !803, metadata !DIExpression()), !dbg !799, !psr.id !804
  %135 = and i64 %132, 1085102592571150095, !dbg !794, !psr.id !805
  %136 = and i64 %134, 1085102592571150095, !dbg !794, !psr.id !806
  %137 = shl i64 %136, 4, !dbg !794, !psr.id !807
  %138 = or i64 %135, %137, !dbg !794, !psr.id !808
  %139 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !794, !psr.id !809
  store i64 %138, i64* %139, align 8, !dbg !794, !psr.id !810
  %140 = and i64 %132, -1085102592571150096, !dbg !794, !psr.id !811
  %141 = lshr i64 %140, 4, !dbg !794, !psr.id !812
  %142 = and i64 %134, -1085102592571150096, !dbg !794, !psr.id !813
  %143 = or i64 %141, %142, !dbg !794, !psr.id !814
  %144 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !794, !psr.id !815
  store i64 %143, i64* %144, align 8, !dbg !794, !psr.id !816
  br label %145, !dbg !794, !psr.id !817

145:                                              ; preds = %130
  br label %146, !dbg !818, !psr.id !819

146:                                              ; preds = %145
  %147 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !820, !psr.id !822
  %148 = load i64, i64* %147, align 8, !dbg !820, !psr.id !823
  call void @llvm.dbg.value(metadata i64 %148, metadata !824, metadata !DIExpression()), !dbg !825, !psr.id !826
  %149 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !820, !psr.id !827
  %150 = load i64, i64* %149, align 8, !dbg !820, !psr.id !828
  call void @llvm.dbg.value(metadata i64 %150, metadata !829, metadata !DIExpression()), !dbg !825, !psr.id !830
  %151 = and i64 %148, 1085102592571150095, !dbg !820, !psr.id !831
  %152 = and i64 %150, 1085102592571150095, !dbg !820, !psr.id !832
  %153 = shl i64 %152, 4, !dbg !820, !psr.id !833
  %154 = or i64 %151, %153, !dbg !820, !psr.id !834
  %155 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !820, !psr.id !835
  store i64 %154, i64* %155, align 8, !dbg !820, !psr.id !836
  %156 = and i64 %148, -1085102592571150096, !dbg !820, !psr.id !837
  %157 = lshr i64 %156, 4, !dbg !820, !psr.id !838
  %158 = and i64 %150, -1085102592571150096, !dbg !820, !psr.id !839
  %159 = or i64 %157, %158, !dbg !820, !psr.id !840
  %160 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !820, !psr.id !841
  store i64 %159, i64* %160, align 8, !dbg !820, !psr.id !842
  br label %161, !dbg !820, !psr.id !843

161:                                              ; preds = %146
  br label %162, !dbg !844, !psr.id !845

162:                                              ; preds = %161
  %163 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !846, !psr.id !848
  %164 = load i64, i64* %163, align 8, !dbg !846, !psr.id !849
  call void @llvm.dbg.value(metadata i64 %164, metadata !850, metadata !DIExpression()), !dbg !851, !psr.id !852
  %165 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !846, !psr.id !853
  %166 = load i64, i64* %165, align 8, !dbg !846, !psr.id !854
  call void @llvm.dbg.value(metadata i64 %166, metadata !855, metadata !DIExpression()), !dbg !851, !psr.id !856
  %167 = and i64 %164, 1085102592571150095, !dbg !846, !psr.id !857
  %168 = and i64 %166, 1085102592571150095, !dbg !846, !psr.id !858
  %169 = shl i64 %168, 4, !dbg !846, !psr.id !859
  %170 = or i64 %167, %169, !dbg !846, !psr.id !860
  %171 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !846, !psr.id !861
  store i64 %170, i64* %171, align 8, !dbg !846, !psr.id !862
  %172 = and i64 %164, -1085102592571150096, !dbg !846, !psr.id !863
  %173 = lshr i64 %172, 4, !dbg !846, !psr.id !864
  %174 = and i64 %166, -1085102592571150096, !dbg !846, !psr.id !865
  %175 = or i64 %173, %174, !dbg !846, !psr.id !866
  %176 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !846, !psr.id !867
  store i64 %175, i64* %176, align 8, !dbg !846, !psr.id !868
  br label %177, !dbg !846, !psr.id !869

177:                                              ; preds = %162
  br label %178, !dbg !870, !psr.id !871

178:                                              ; preds = %177
  %179 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !872, !psr.id !874
  %180 = load i64, i64* %179, align 8, !dbg !872, !psr.id !875
  call void @llvm.dbg.value(metadata i64 %180, metadata !876, metadata !DIExpression()), !dbg !877, !psr.id !878
  %181 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !872, !psr.id !879
  %182 = load i64, i64* %181, align 8, !dbg !872, !psr.id !880
  call void @llvm.dbg.value(metadata i64 %182, metadata !881, metadata !DIExpression()), !dbg !877, !psr.id !882
  %183 = and i64 %180, 1085102592571150095, !dbg !872, !psr.id !883
  %184 = and i64 %182, 1085102592571150095, !dbg !872, !psr.id !884
  %185 = shl i64 %184, 4, !dbg !872, !psr.id !885
  %186 = or i64 %183, %185, !dbg !872, !psr.id !886
  %187 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !872, !psr.id !887
  store i64 %186, i64* %187, align 8, !dbg !872, !psr.id !888
  %188 = and i64 %180, -1085102592571150096, !dbg !872, !psr.id !889
  %189 = lshr i64 %188, 4, !dbg !872, !psr.id !890
  %190 = and i64 %182, -1085102592571150096, !dbg !872, !psr.id !891
  %191 = or i64 %189, %190, !dbg !872, !psr.id !892
  %192 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !872, !psr.id !893
  store i64 %191, i64* %192, align 8, !dbg !872, !psr.id !894
  br label %193, !dbg !872, !psr.id !895

193:                                              ; preds = %178
  ret void, !dbg !896, !psr.id !897
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_interleave_in(i64* %0, i64* %1, i32* %2) #0 !dbg !898 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !903, metadata !DIExpression()), !dbg !904, !psr.id !905
  call void @llvm.dbg.value(metadata i64* %1, metadata !906, metadata !DIExpression()), !dbg !904, !psr.id !907
  call void @llvm.dbg.value(metadata i32* %2, metadata !908, metadata !DIExpression()), !dbg !904, !psr.id !909
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !910, !psr.id !911
  %5 = load i32, i32* %4, align 4, !dbg !910, !psr.id !912
  %6 = zext i32 %5 to i64, !dbg !910, !psr.id !913
  call void @llvm.dbg.value(metadata i64 %6, metadata !914, metadata !DIExpression()), !dbg !904, !psr.id !915
  %7 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !916, !psr.id !917
  %8 = load i32, i32* %7, align 4, !dbg !916, !psr.id !918
  %9 = zext i32 %8 to i64, !dbg !916, !psr.id !919
  call void @llvm.dbg.value(metadata i64 %9, metadata !920, metadata !DIExpression()), !dbg !904, !psr.id !921
  %10 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !922, !psr.id !923
  %11 = load i32, i32* %10, align 4, !dbg !922, !psr.id !924
  %12 = zext i32 %11 to i64, !dbg !922, !psr.id !925
  call void @llvm.dbg.value(metadata i64 %12, metadata !926, metadata !DIExpression()), !dbg !904, !psr.id !927
  %13 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !928, !psr.id !929
  %14 = load i32, i32* %13, align 4, !dbg !928, !psr.id !930
  %15 = zext i32 %14 to i64, !dbg !928, !psr.id !931
  call void @llvm.dbg.value(metadata i64 %15, metadata !932, metadata !DIExpression()), !dbg !904, !psr.id !933
  %16 = shl i64 %6, 16, !dbg !934, !psr.id !935
  %17 = or i64 %6, %16, !dbg !936, !psr.id !937
  call void @llvm.dbg.value(metadata i64 %17, metadata !914, metadata !DIExpression()), !dbg !904, !psr.id !938
  %18 = shl i64 %9, 16, !dbg !939, !psr.id !940
  %19 = or i64 %9, %18, !dbg !941, !psr.id !942
  call void @llvm.dbg.value(metadata i64 %19, metadata !920, metadata !DIExpression()), !dbg !904, !psr.id !943
  %20 = shl i64 %12, 16, !dbg !944, !psr.id !945
  %21 = or i64 %12, %20, !dbg !946, !psr.id !947
  call void @llvm.dbg.value(metadata i64 %21, metadata !926, metadata !DIExpression()), !dbg !904, !psr.id !948
  %22 = shl i64 %15, 16, !dbg !949, !psr.id !950
  %23 = or i64 %15, %22, !dbg !951, !psr.id !952
  call void @llvm.dbg.value(metadata i64 %23, metadata !932, metadata !DIExpression()), !dbg !904, !psr.id !953
  %24 = and i64 %17, 281470681808895, !dbg !954, !psr.id !955
  call void @llvm.dbg.value(metadata i64 %24, metadata !914, metadata !DIExpression()), !dbg !904, !psr.id !956
  %25 = and i64 %19, 281470681808895, !dbg !957, !psr.id !958
  call void @llvm.dbg.value(metadata i64 %25, metadata !920, metadata !DIExpression()), !dbg !904, !psr.id !959
  %26 = and i64 %21, 281470681808895, !dbg !960, !psr.id !961
  call void @llvm.dbg.value(metadata i64 %26, metadata !926, metadata !DIExpression()), !dbg !904, !psr.id !962
  %27 = and i64 %23, 281470681808895, !dbg !963, !psr.id !964
  call void @llvm.dbg.value(metadata i64 %27, metadata !932, metadata !DIExpression()), !dbg !904, !psr.id !965
  %28 = shl i64 %24, 8, !dbg !966, !psr.id !967
  %29 = or i64 %24, %28, !dbg !968, !psr.id !969
  call void @llvm.dbg.value(metadata i64 %29, metadata !914, metadata !DIExpression()), !dbg !904, !psr.id !970
  %30 = shl i64 %25, 8, !dbg !971, !psr.id !972
  %31 = or i64 %25, %30, !dbg !973, !psr.id !974
  call void @llvm.dbg.value(metadata i64 %31, metadata !920, metadata !DIExpression()), !dbg !904, !psr.id !975
  %32 = shl i64 %26, 8, !dbg !976, !psr.id !977
  %33 = or i64 %26, %32, !dbg !978, !psr.id !979
  call void @llvm.dbg.value(metadata i64 %33, metadata !926, metadata !DIExpression()), !dbg !904, !psr.id !980
  %34 = shl i64 %27, 8, !dbg !981, !psr.id !982
  %35 = or i64 %27, %34, !dbg !983, !psr.id !984
  call void @llvm.dbg.value(metadata i64 %35, metadata !932, metadata !DIExpression()), !dbg !904, !psr.id !985
  %36 = and i64 %29, 71777214294589695, !dbg !986, !psr.id !987
  call void @llvm.dbg.value(metadata i64 %36, metadata !914, metadata !DIExpression()), !dbg !904, !psr.id !988
  %37 = and i64 %31, 71777214294589695, !dbg !989, !psr.id !990
  call void @llvm.dbg.value(metadata i64 %37, metadata !920, metadata !DIExpression()), !dbg !904, !psr.id !991
  %38 = and i64 %33, 71777214294589695, !dbg !992, !psr.id !993
  call void @llvm.dbg.value(metadata i64 %38, metadata !926, metadata !DIExpression()), !dbg !904, !psr.id !994
  %39 = and i64 %35, 71777214294589695, !dbg !995, !psr.id !996
  call void @llvm.dbg.value(metadata i64 %39, metadata !932, metadata !DIExpression()), !dbg !904, !psr.id !997
  %40 = shl i64 %38, 8, !dbg !998, !psr.id !999
  %41 = or i64 %36, %40, !dbg !1000, !psr.id !1001
  store i64 %41, i64* %0, align 8, !dbg !1002, !psr.id !1003
  %42 = shl i64 %39, 8, !dbg !1004, !psr.id !1005
  %43 = or i64 %37, %42, !dbg !1006, !psr.id !1007
  store i64 %43, i64* %1, align 8, !dbg !1008, !psr.id !1009
  ret void, !dbg !1010, !psr.id !1011
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_interleave_out(i32* %0, i64 %1, i64 %2) #0 !dbg !1012 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1016, metadata !DIExpression()), !dbg !1017, !psr.id !1018
  call void @llvm.dbg.value(metadata i64 %1, metadata !1019, metadata !DIExpression()), !dbg !1017, !psr.id !1020
  call void @llvm.dbg.value(metadata i64 %2, metadata !1021, metadata !DIExpression()), !dbg !1017, !psr.id !1022
  %4 = and i64 %1, 71777214294589695, !dbg !1023, !psr.id !1024
  call void @llvm.dbg.value(metadata i64 %4, metadata !1025, metadata !DIExpression()), !dbg !1017, !psr.id !1026
  %5 = and i64 %2, 71777214294589695, !dbg !1027, !psr.id !1028
  call void @llvm.dbg.value(metadata i64 %5, metadata !1029, metadata !DIExpression()), !dbg !1017, !psr.id !1030
  %6 = lshr i64 %1, 8, !dbg !1031, !psr.id !1032
  %7 = and i64 %6, 71777214294589695, !dbg !1033, !psr.id !1034
  call void @llvm.dbg.value(metadata i64 %7, metadata !1035, metadata !DIExpression()), !dbg !1017, !psr.id !1036
  %8 = lshr i64 %2, 8, !dbg !1037, !psr.id !1038
  %9 = and i64 %8, 71777214294589695, !dbg !1039, !psr.id !1040
  call void @llvm.dbg.value(metadata i64 %9, metadata !1041, metadata !DIExpression()), !dbg !1017, !psr.id !1042
  %10 = lshr i64 %4, 8, !dbg !1043, !psr.id !1044
  %11 = or i64 %4, %10, !dbg !1045, !psr.id !1046
  call void @llvm.dbg.value(metadata i64 %11, metadata !1025, metadata !DIExpression()), !dbg !1017, !psr.id !1047
  %12 = lshr i64 %5, 8, !dbg !1048, !psr.id !1049
  %13 = or i64 %5, %12, !dbg !1050, !psr.id !1051
  call void @llvm.dbg.value(metadata i64 %13, metadata !1029, metadata !DIExpression()), !dbg !1017, !psr.id !1052
  %14 = lshr i64 %7, 8, !dbg !1053, !psr.id !1054
  %15 = or i64 %7, %14, !dbg !1055, !psr.id !1056
  call void @llvm.dbg.value(metadata i64 %15, metadata !1035, metadata !DIExpression()), !dbg !1017, !psr.id !1057
  %16 = lshr i64 %9, 8, !dbg !1058, !psr.id !1059
  %17 = or i64 %9, %16, !dbg !1060, !psr.id !1061
  call void @llvm.dbg.value(metadata i64 %17, metadata !1041, metadata !DIExpression()), !dbg !1017, !psr.id !1062
  %18 = and i64 %11, 281470681808895, !dbg !1063, !psr.id !1064
  call void @llvm.dbg.value(metadata i64 %18, metadata !1025, metadata !DIExpression()), !dbg !1017, !psr.id !1065
  %19 = and i64 %13, 281470681808895, !dbg !1066, !psr.id !1067
  call void @llvm.dbg.value(metadata i64 %19, metadata !1029, metadata !DIExpression()), !dbg !1017, !psr.id !1068
  %20 = and i64 %15, 281470681808895, !dbg !1069, !psr.id !1070
  call void @llvm.dbg.value(metadata i64 %20, metadata !1035, metadata !DIExpression()), !dbg !1017, !psr.id !1071
  %21 = and i64 %17, 281470681808895, !dbg !1072, !psr.id !1073
  call void @llvm.dbg.value(metadata i64 %21, metadata !1041, metadata !DIExpression()), !dbg !1017, !psr.id !1074
  %22 = trunc i64 %18 to i32, !dbg !1075, !psr.id !1076
  %23 = lshr i64 %18, 16, !dbg !1077, !psr.id !1078
  %24 = trunc i64 %23 to i32, !dbg !1079, !psr.id !1080
  %25 = or i32 %22, %24, !dbg !1081, !psr.id !1082
  %26 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1083, !psr.id !1084
  store i32 %25, i32* %26, align 4, !dbg !1085, !psr.id !1086
  %27 = trunc i64 %19 to i32, !dbg !1087, !psr.id !1088
  %28 = lshr i64 %19, 16, !dbg !1089, !psr.id !1090
  %29 = trunc i64 %28 to i32, !dbg !1091, !psr.id !1092
  %30 = or i32 %27, %29, !dbg !1093, !psr.id !1094
  %31 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1095, !psr.id !1096
  store i32 %30, i32* %31, align 4, !dbg !1097, !psr.id !1098
  %32 = trunc i64 %20 to i32, !dbg !1099, !psr.id !1100
  %33 = lshr i64 %20, 16, !dbg !1101, !psr.id !1102
  %34 = trunc i64 %33 to i32, !dbg !1103, !psr.id !1104
  %35 = or i32 %32, %34, !dbg !1105, !psr.id !1106
  %36 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !1107, !psr.id !1108
  store i32 %35, i32* %36, align 4, !dbg !1109, !psr.id !1110
  %37 = trunc i64 %21 to i32, !dbg !1111, !psr.id !1112
  %38 = lshr i64 %21, 16, !dbg !1113, !psr.id !1114
  %39 = trunc i64 %38 to i32, !dbg !1115, !psr.id !1116
  %40 = or i32 %37, %39, !dbg !1117, !psr.id !1118
  %41 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1119, !psr.id !1120
  store i32 %40, i32* %41, align 4, !dbg !1121, !psr.id !1122
  ret void, !dbg !1123, !psr.id !1124
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_ct64_keysched(i64* %0, i8* %1, i64 %2) #0 !dbg !1125 {
  %4 = alloca [60 x i32], align 16, !psr.id !1132
  %5 = alloca [8 x i64], align 16, !psr.id !1133
  call void @llvm.dbg.value(metadata i64* %0, metadata !1134, metadata !DIExpression()), !dbg !1135, !psr.id !1136
  call void @llvm.dbg.value(metadata i8* %1, metadata !1137, metadata !DIExpression()), !dbg !1135, !psr.id !1138
  call void @llvm.dbg.value(metadata i64 %2, metadata !1139, metadata !DIExpression()), !dbg !1135, !psr.id !1140
  call void @llvm.dbg.declare(metadata [60 x i32]* %4, metadata !1141, metadata !DIExpression()), !dbg !1145, !psr.id !1146
  switch i64 %2, label %9 [
    i64 16, label %6
    i64 24, label %7
    i64 32, label %8
  ], !dbg !1147, !psr.id !1148

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !1149, metadata !DIExpression()), !dbg !1135, !psr.id !1150
  br label %10, !dbg !1151, !psr.id !1153

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 12, metadata !1149, metadata !DIExpression()), !dbg !1135, !psr.id !1154
  br label %10, !dbg !1155, !psr.id !1156

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 14, metadata !1149, metadata !DIExpression()), !dbg !1135, !psr.id !1157
  br label %10, !dbg !1158, !psr.id !1159

9:                                                ; preds = %3
  br label %125, !dbg !1160, !psr.id !1161

10:                                               ; preds = %8, %7, %6
  %.07 = phi i32 [ 14, %8 ], [ 12, %7 ], [ 10, %6 ], !dbg !1162, !psr.id !1163
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1149, metadata !DIExpression()), !dbg !1135, !psr.id !1164
  %11 = lshr i64 %2, 2, !dbg !1165, !psr.id !1166
  %12 = trunc i64 %11 to i32, !dbg !1167, !psr.id !1168
  call void @llvm.dbg.value(metadata i32 %12, metadata !1169, metadata !DIExpression()), !dbg !1135, !psr.id !1170
  %13 = add i32 %.07, 1, !dbg !1171, !psr.id !1172
  %14 = shl i32 %13, 2, !dbg !1173, !psr.id !1174
  call void @llvm.dbg.value(metadata i32 %14, metadata !1175, metadata !DIExpression()), !dbg !1135, !psr.id !1176
  %15 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 0, !dbg !1177, !psr.id !1178
  %16 = lshr i64 %2, 2, !dbg !1179, !psr.id !1180
  call void @br_range_dec32le(i32* %15, i64 %16, i8* %1), !dbg !1181, !psr.id !1182
  %17 = lshr i64 %2, 2, !dbg !1183, !psr.id !1184
  %18 = sub i64 %17, 1, !dbg !1185, !psr.id !1186
  %19 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %18, !dbg !1187, !psr.id !1188
  %20 = load i32, i32* %19, align 4, !dbg !1187, !psr.id !1189
  call void @llvm.dbg.value(metadata i32 %20, metadata !1190, metadata !DIExpression()), !dbg !1135, !psr.id !1191
  call void @llvm.dbg.value(metadata i32 %12, metadata !1192, metadata !DIExpression()), !dbg !1135, !psr.id !1193
  call void @llvm.dbg.value(metadata i32 0, metadata !1194, metadata !DIExpression()), !dbg !1135, !psr.id !1195
  call void @llvm.dbg.value(metadata i32 0, metadata !1196, metadata !DIExpression()), !dbg !1135, !psr.id !1197
  br label %21, !dbg !1198, !psr.id !1200

21:                                               ; preds = %55, %10
  %.08 = phi i32 [ %12, %10 ], [ %56, %55 ], !dbg !1201, !psr.id !1202
  %.04 = phi i32 [ 0, %10 ], [ %.15, %55 ], !dbg !1201, !psr.id !1203
  %.02 = phi i32 [ 0, %10 ], [ %.13, %55 ], !dbg !1201, !psr.id !1204
  %.01 = phi i32 [ %20, %10 ], [ %47, %55 ], !dbg !1135, !psr.id !1205
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1190, metadata !DIExpression()), !dbg !1135, !psr.id !1206
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1196, metadata !DIExpression()), !dbg !1135, !psr.id !1207
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1194, metadata !DIExpression()), !dbg !1135, !psr.id !1208
  call void @llvm.dbg.value(metadata i32 %.08, metadata !1192, metadata !DIExpression()), !dbg !1135, !psr.id !1209
  %22 = icmp slt i32 %.08, %14, !dbg !1210, !psr.id !1212
  br i1 %22, label %23, label %57, !dbg !1213, !psr.id !1214

23:                                               ; preds = %21
  %24 = icmp eq i32 %.04, 0, !dbg !1215, !psr.id !1218
  br i1 %24, label %25, label %35, !dbg !1219, !psr.id !1220

25:                                               ; preds = %23
  %26 = shl i32 %.01, 24, !dbg !1221, !psr.id !1223
  %27 = lshr i32 %.01, 8, !dbg !1224, !psr.id !1225
  %28 = or i32 %26, %27, !dbg !1226, !psr.id !1227
  call void @llvm.dbg.value(metadata i32 %28, metadata !1190, metadata !DIExpression()), !dbg !1135, !psr.id !1228
  %29 = call i32 @sub_word(i32 %28), !dbg !1229, !psr.id !1230
  %30 = sext i32 %.02 to i64, !dbg !1231, !psr.id !1232
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* @Rcon, i64 0, i64 %30, !dbg !1231, !psr.id !1233
  %32 = load i8, i8* %31, align 1, !dbg !1231, !psr.id !1234
  %33 = zext i8 %32 to i32, !dbg !1231, !psr.id !1235
  %34 = xor i32 %29, %33, !dbg !1236, !psr.id !1237
  call void @llvm.dbg.value(metadata i32 %34, metadata !1190, metadata !DIExpression()), !dbg !1135, !psr.id !1238
  br label %42, !dbg !1239, !psr.id !1240

35:                                               ; preds = %23
  %36 = icmp sgt i32 %12, 6, !dbg !1241, !psr.id !1243
  br i1 %36, label %37, label %41, !dbg !1244, !psr.id !1245

37:                                               ; preds = %35
  %38 = icmp eq i32 %.04, 4, !dbg !1246, !psr.id !1247
  br i1 %38, label %39, label %41, !dbg !1248, !psr.id !1249

39:                                               ; preds = %37
  %40 = call i32 @sub_word(i32 %.01), !dbg !1250, !psr.id !1252
  call void @llvm.dbg.value(metadata i32 %40, metadata !1190, metadata !DIExpression()), !dbg !1135, !psr.id !1253
  br label %41, !dbg !1254, !psr.id !1255

41:                                               ; preds = %39, %37, %35
  %.1 = phi i32 [ %40, %39 ], [ %.01, %37 ], [ %.01, %35 ], !dbg !1135, !psr.id !1256
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1190, metadata !DIExpression()), !dbg !1135, !psr.id !1257
  br label %42, !psr.id !1258

42:                                               ; preds = %41, %25
  %.2 = phi i32 [ %34, %25 ], [ %.1, %41 ], !dbg !1259, !psr.id !1260
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1190, metadata !DIExpression()), !dbg !1135, !psr.id !1261
  %43 = sub nsw i32 %.08, %12, !dbg !1262, !psr.id !1263
  %44 = sext i32 %43 to i64, !dbg !1264, !psr.id !1265
  %45 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %44, !dbg !1264, !psr.id !1266
  %46 = load i32, i32* %45, align 4, !dbg !1264, !psr.id !1267
  %47 = xor i32 %.2, %46, !dbg !1268, !psr.id !1269
  call void @llvm.dbg.value(metadata i32 %47, metadata !1190, metadata !DIExpression()), !dbg !1135, !psr.id !1270
  %48 = sext i32 %.08 to i64, !dbg !1271, !psr.id !1272
  %49 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %48, !dbg !1271, !psr.id !1273
  store i32 %47, i32* %49, align 4, !dbg !1274, !psr.id !1275
  %50 = add nsw i32 %.04, 1, !dbg !1276, !psr.id !1278
  call void @llvm.dbg.value(metadata i32 %50, metadata !1194, metadata !DIExpression()), !dbg !1135, !psr.id !1279
  %51 = icmp eq i32 %50, %12, !dbg !1280, !psr.id !1281
  br i1 %51, label %52, label %54, !dbg !1282, !psr.id !1283

52:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 0, metadata !1194, metadata !DIExpression()), !dbg !1135, !psr.id !1284
  %53 = add nsw i32 %.02, 1, !dbg !1285, !psr.id !1287
  call void @llvm.dbg.value(metadata i32 %53, metadata !1196, metadata !DIExpression()), !dbg !1135, !psr.id !1288
  br label %54, !dbg !1289, !psr.id !1290

54:                                               ; preds = %52, %42
  %.15 = phi i32 [ 0, %52 ], [ %50, %42 ], !dbg !1291, !psr.id !1292
  %.13 = phi i32 [ %53, %52 ], [ %.02, %42 ], !dbg !1201, !psr.id !1293
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1196, metadata !DIExpression()), !dbg !1135, !psr.id !1294
  call void @llvm.dbg.value(metadata i32 %.15, metadata !1194, metadata !DIExpression()), !dbg !1135, !psr.id !1295
  br label %55, !dbg !1296, !psr.id !1297

55:                                               ; preds = %54
  %56 = add nsw i32 %.08, 1, !dbg !1298, !psr.id !1299
  call void @llvm.dbg.value(metadata i32 %56, metadata !1192, metadata !DIExpression()), !dbg !1135, !psr.id !1300
  br label %21, !dbg !1301, !llvm.loop !1302, !psr.id !1305

57:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 0, metadata !1192, metadata !DIExpression()), !dbg !1135, !psr.id !1306
  call void @llvm.dbg.value(metadata i32 0, metadata !1194, metadata !DIExpression()), !dbg !1135, !psr.id !1307
  br label %58, !dbg !1308, !psr.id !1310

58:                                               ; preds = %121, %57
  %.19 = phi i32 [ 0, %57 ], [ %122, %121 ], !dbg !1311, !psr.id !1312
  %.26 = phi i32 [ 0, %57 ], [ %123, %121 ], !dbg !1311, !psr.id !1313
  call void @llvm.dbg.value(metadata i32 %.26, metadata !1194, metadata !DIExpression()), !dbg !1135, !psr.id !1314
  call void @llvm.dbg.value(metadata i32 %.19, metadata !1192, metadata !DIExpression()), !dbg !1135, !psr.id !1315
  %59 = icmp slt i32 %.19, %14, !dbg !1316, !psr.id !1318
  br i1 %59, label %60, label %124, !dbg !1319, !psr.id !1320

60:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata [8 x i64]* %5, metadata !1321, metadata !DIExpression()), !dbg !1326, !psr.id !1327
  %61 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1328, !psr.id !1329
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !1330, !psr.id !1331
  %63 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 0, !dbg !1332, !psr.id !1333
  %64 = sext i32 %.19 to i64, !dbg !1334, !psr.id !1335
  %65 = getelementptr inbounds i32, i32* %63, i64 %64, !dbg !1334, !psr.id !1336
  call void @br_aes_ct64_interleave_in(i64* %61, i64* %62, i32* %65), !dbg !1337, !psr.id !1338
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1339, !psr.id !1340
  %67 = load i64, i64* %66, align 16, !dbg !1339, !psr.id !1341
  %68 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1, !dbg !1342, !psr.id !1343
  store i64 %67, i64* %68, align 8, !dbg !1344, !psr.id !1345
  %69 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1346, !psr.id !1347
  %70 = load i64, i64* %69, align 16, !dbg !1346, !psr.id !1348
  %71 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2, !dbg !1349, !psr.id !1350
  store i64 %70, i64* %71, align 16, !dbg !1351, !psr.id !1352
  %72 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1353, !psr.id !1354
  %73 = load i64, i64* %72, align 16, !dbg !1353, !psr.id !1355
  %74 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3, !dbg !1356, !psr.id !1357
  store i64 %73, i64* %74, align 8, !dbg !1358, !psr.id !1359
  %75 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !1360, !psr.id !1361
  %76 = load i64, i64* %75, align 16, !dbg !1360, !psr.id !1362
  %77 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5, !dbg !1363, !psr.id !1364
  store i64 %76, i64* %77, align 8, !dbg !1365, !psr.id !1366
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !1367, !psr.id !1368
  %79 = load i64, i64* %78, align 16, !dbg !1367, !psr.id !1369
  %80 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6, !dbg !1370, !psr.id !1371
  store i64 %79, i64* %80, align 16, !dbg !1372, !psr.id !1373
  %81 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !1374, !psr.id !1375
  %82 = load i64, i64* %81, align 16, !dbg !1374, !psr.id !1376
  %83 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7, !dbg !1377, !psr.id !1378
  store i64 %82, i64* %83, align 8, !dbg !1379, !psr.id !1380
  %84 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1381, !psr.id !1382
  call void @br_aes_ct64_ortho(i64* %84), !dbg !1383, !psr.id !1384
  %85 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !1385, !psr.id !1386
  %86 = load i64, i64* %85, align 16, !dbg !1385, !psr.id !1387
  %87 = and i64 %86, 1229782938247303441, !dbg !1388, !psr.id !1389
  %88 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1, !dbg !1390, !psr.id !1391
  %89 = load i64, i64* %88, align 8, !dbg !1390, !psr.id !1392
  %90 = and i64 %89, 2459565876494606882, !dbg !1393, !psr.id !1394
  %91 = or i64 %87, %90, !dbg !1395, !psr.id !1396
  %92 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2, !dbg !1397, !psr.id !1398
  %93 = load i64, i64* %92, align 16, !dbg !1397, !psr.id !1399
  %94 = and i64 %93, 4919131752989213764, !dbg !1400, !psr.id !1401
  %95 = or i64 %91, %94, !dbg !1402, !psr.id !1403
  %96 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3, !dbg !1404, !psr.id !1405
  %97 = load i64, i64* %96, align 8, !dbg !1404, !psr.id !1406
  %98 = and i64 %97, -8608480567731124088, !dbg !1407, !psr.id !1408
  %99 = or i64 %95, %98, !dbg !1409, !psr.id !1410
  %100 = add nsw i32 %.26, 0, !dbg !1411, !psr.id !1412
  %101 = sext i32 %100 to i64, !dbg !1413, !psr.id !1414
  %102 = getelementptr inbounds i64, i64* %0, i64 %101, !dbg !1413, !psr.id !1415
  store i64 %99, i64* %102, align 8, !dbg !1416, !psr.id !1417
  %103 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !1418, !psr.id !1419
  %104 = load i64, i64* %103, align 16, !dbg !1418, !psr.id !1420
  %105 = and i64 %104, 1229782938247303441, !dbg !1421, !psr.id !1422
  %106 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5, !dbg !1423, !psr.id !1424
  %107 = load i64, i64* %106, align 8, !dbg !1423, !psr.id !1425
  %108 = and i64 %107, 2459565876494606882, !dbg !1426, !psr.id !1427
  %109 = or i64 %105, %108, !dbg !1428, !psr.id !1429
  %110 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6, !dbg !1430, !psr.id !1431
  %111 = load i64, i64* %110, align 16, !dbg !1430, !psr.id !1432
  %112 = and i64 %111, 4919131752989213764, !dbg !1433, !psr.id !1434
  %113 = or i64 %109, %112, !dbg !1435, !psr.id !1436
  %114 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7, !dbg !1437, !psr.id !1438
  %115 = load i64, i64* %114, align 8, !dbg !1437, !psr.id !1439
  %116 = and i64 %115, -8608480567731124088, !dbg !1440, !psr.id !1441
  %117 = or i64 %113, %116, !dbg !1442, !psr.id !1443
  %118 = add nsw i32 %.26, 1, !dbg !1444, !psr.id !1445
  %119 = sext i32 %118 to i64, !dbg !1446, !psr.id !1447
  %120 = getelementptr inbounds i64, i64* %0, i64 %119, !dbg !1446, !psr.id !1448
  store i64 %117, i64* %120, align 8, !dbg !1449, !psr.id !1450
  br label %121, !dbg !1451, !psr.id !1452

121:                                              ; preds = %60
  %122 = add nsw i32 %.19, 4, !dbg !1453, !psr.id !1454
  call void @llvm.dbg.value(metadata i32 %122, metadata !1192, metadata !DIExpression()), !dbg !1135, !psr.id !1455
  %123 = add nsw i32 %.26, 2, !dbg !1456, !psr.id !1457
  call void @llvm.dbg.value(metadata i32 %123, metadata !1194, metadata !DIExpression()), !dbg !1135, !psr.id !1458
  br label %58, !dbg !1459, !llvm.loop !1460, !psr.id !1462

124:                                              ; preds = %58
  br label %125, !dbg !1463, !psr.id !1464

125:                                              ; preds = %124, %9
  %.0 = phi i32 [ 0, %9 ], [ %.07, %124 ], !dbg !1135, !psr.id !1465
  ret i32 %.0, !dbg !1466, !psr.id !1467
}

declare dso_local void @br_range_dec32le(i32*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @sub_word(i32 %0) #0 !dbg !1468 {
  %2 = alloca [8 x i64], align 16, !psr.id !1471
  call void @llvm.dbg.value(metadata i32 %0, metadata !1472, metadata !DIExpression()), !dbg !1473, !psr.id !1474
  call void @llvm.dbg.declare(metadata [8 x i64]* %2, metadata !1475, metadata !DIExpression()), !dbg !1476, !psr.id !1477
  %3 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1478, !psr.id !1479
  %4 = bitcast i64* %3 to i8*, !dbg !1478, !psr.id !1480
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 64, i1 false), !dbg !1478, !psr.id !1481
  %5 = zext i32 %0 to i64, !dbg !1482, !psr.id !1483
  %6 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1484, !psr.id !1485
  store i64 %5, i64* %6, align 16, !dbg !1486, !psr.id !1487
  %7 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1488, !psr.id !1489
  call void @br_aes_ct64_ortho(i64* %7), !dbg !1490, !psr.id !1491
  %8 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1492, !psr.id !1493
  call void @br_aes_ct64_bitslice_Sbox(i64* %8), !dbg !1494, !psr.id !1495
  %9 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1496, !psr.id !1497
  call void @br_aes_ct64_ortho(i64* %9), !dbg !1498, !psr.id !1499
  %10 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !1500, !psr.id !1501
  %11 = load i64, i64* %10, align 16, !dbg !1500, !psr.id !1502
  %12 = trunc i64 %11 to i32, !dbg !1503, !psr.id !1504
  ret i32 %12, !dbg !1505, !psr.id !1506
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_skey_expand(i64* %0, i32 %1, i64* %2) #0 !dbg !1507 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1512, metadata !DIExpression()), !dbg !1513, !psr.id !1514
  call void @llvm.dbg.value(metadata i32 %1, metadata !1515, metadata !DIExpression()), !dbg !1513, !psr.id !1516
  call void @llvm.dbg.value(metadata i64* %2, metadata !1517, metadata !DIExpression()), !dbg !1513, !psr.id !1518
  %4 = add i32 %1, 1, !dbg !1519, !psr.id !1520
  %5 = shl i32 %4, 1, !dbg !1521, !psr.id !1522
  call void @llvm.dbg.value(metadata i32 %5, metadata !1523, metadata !DIExpression()), !dbg !1513, !psr.id !1524
  call void @llvm.dbg.value(metadata i32 0, metadata !1525, metadata !DIExpression()), !dbg !1513, !psr.id !1526
  call void @llvm.dbg.value(metadata i32 0, metadata !1527, metadata !DIExpression()), !dbg !1513, !psr.id !1528
  br label %6, !dbg !1529, !psr.id !1531

6:                                                ; preds = %39, %3
  %.01 = phi i32 [ 0, %3 ], [ %40, %39 ], !dbg !1532, !psr.id !1533
  %.0 = phi i32 [ 0, %3 ], [ %41, %39 ], !dbg !1532, !psr.id !1534
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1527, metadata !DIExpression()), !dbg !1513, !psr.id !1535
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1525, metadata !DIExpression()), !dbg !1513, !psr.id !1536
  %7 = icmp ult i32 %.01, %5, !dbg !1537, !psr.id !1539
  br i1 %7, label %8, label %42, !dbg !1540, !psr.id !1541

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64, !dbg !1542, !psr.id !1544
  %10 = getelementptr inbounds i64, i64* %2, i64 %9, !dbg !1542, !psr.id !1545
  %11 = load i64, i64* %10, align 8, !dbg !1542, !psr.id !1546
  call void @llvm.dbg.value(metadata i64 %11, metadata !1547, metadata !DIExpression()), !dbg !1548, !psr.id !1549
  call void @llvm.dbg.value(metadata i64 %11, metadata !1550, metadata !DIExpression()), !dbg !1548, !psr.id !1551
  call void @llvm.dbg.value(metadata i64 %11, metadata !1552, metadata !DIExpression()), !dbg !1548, !psr.id !1553
  call void @llvm.dbg.value(metadata i64 %11, metadata !1554, metadata !DIExpression()), !dbg !1548, !psr.id !1555
  %12 = and i64 %11, 1229782938247303441, !dbg !1556, !psr.id !1557
  call void @llvm.dbg.value(metadata i64 %12, metadata !1554, metadata !DIExpression()), !dbg !1548, !psr.id !1558
  %13 = and i64 %11, 2459565876494606882, !dbg !1559, !psr.id !1560
  call void @llvm.dbg.value(metadata i64 %13, metadata !1552, metadata !DIExpression()), !dbg !1548, !psr.id !1561
  %14 = and i64 %11, 4919131752989213764, !dbg !1562, !psr.id !1563
  call void @llvm.dbg.value(metadata i64 %14, metadata !1550, metadata !DIExpression()), !dbg !1548, !psr.id !1564
  %15 = and i64 %11, -8608480567731124088, !dbg !1565, !psr.id !1566
  call void @llvm.dbg.value(metadata i64 %15, metadata !1547, metadata !DIExpression()), !dbg !1548, !psr.id !1567
  %16 = lshr i64 %13, 1, !dbg !1568, !psr.id !1569
  call void @llvm.dbg.value(metadata i64 %16, metadata !1552, metadata !DIExpression()), !dbg !1548, !psr.id !1570
  %17 = lshr i64 %14, 2, !dbg !1571, !psr.id !1572
  call void @llvm.dbg.value(metadata i64 %17, metadata !1550, metadata !DIExpression()), !dbg !1548, !psr.id !1573
  %18 = lshr i64 %15, 3, !dbg !1574, !psr.id !1575
  call void @llvm.dbg.value(metadata i64 %18, metadata !1547, metadata !DIExpression()), !dbg !1548, !psr.id !1576
  %19 = shl i64 %12, 4, !dbg !1577, !psr.id !1578
  %20 = sub i64 %19, %12, !dbg !1579, !psr.id !1580
  %21 = add i32 %.0, 0, !dbg !1581, !psr.id !1582
  %22 = zext i32 %21 to i64, !dbg !1583, !psr.id !1584
  %23 = getelementptr inbounds i64, i64* %0, i64 %22, !dbg !1583, !psr.id !1585
  store i64 %20, i64* %23, align 8, !dbg !1586, !psr.id !1587
  %24 = shl i64 %16, 4, !dbg !1588, !psr.id !1589
  %25 = sub i64 %24, %16, !dbg !1590, !psr.id !1591
  %26 = add i32 %.0, 1, !dbg !1592, !psr.id !1593
  %27 = zext i32 %26 to i64, !dbg !1594, !psr.id !1595
  %28 = getelementptr inbounds i64, i64* %0, i64 %27, !dbg !1594, !psr.id !1596
  store i64 %25, i64* %28, align 8, !dbg !1597, !psr.id !1598
  %29 = shl i64 %17, 4, !dbg !1599, !psr.id !1600
  %30 = sub i64 %29, %17, !dbg !1601, !psr.id !1602
  %31 = add i32 %.0, 2, !dbg !1603, !psr.id !1604
  %32 = zext i32 %31 to i64, !dbg !1605, !psr.id !1606
  %33 = getelementptr inbounds i64, i64* %0, i64 %32, !dbg !1605, !psr.id !1607
  store i64 %30, i64* %33, align 8, !dbg !1608, !psr.id !1609
  %34 = shl i64 %18, 4, !dbg !1610, !psr.id !1611
  %35 = sub i64 %34, %18, !dbg !1612, !psr.id !1613
  %36 = add i32 %.0, 3, !dbg !1614, !psr.id !1615
  %37 = zext i32 %36 to i64, !dbg !1616, !psr.id !1617
  %38 = getelementptr inbounds i64, i64* %0, i64 %37, !dbg !1616, !psr.id !1618
  store i64 %35, i64* %38, align 8, !dbg !1619, !psr.id !1620
  br label %39, !dbg !1621, !psr.id !1622

39:                                               ; preds = %8
  %40 = add i32 %.01, 1, !dbg !1623, !psr.id !1624
  call void @llvm.dbg.value(metadata i32 %40, metadata !1525, metadata !DIExpression()), !dbg !1513, !psr.id !1625
  %41 = add i32 %.0, 4, !dbg !1626, !psr.id !1627
  call void @llvm.dbg.value(metadata i32 %41, metadata !1527, metadata !DIExpression()), !dbg !1513, !psr.id !1628
  br label %6, !dbg !1629, !llvm.loop !1630, !psr.id !1632

42:                                               ; preds = %6
  ret void, !dbg !1633, !psr.id !1634
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_bitslice_encrypt(i32 %0, i64* %1, i64* %2) #0 !dbg !1635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1638, metadata !DIExpression()), !dbg !1639, !psr.id !1640
  call void @llvm.dbg.value(metadata i64* %1, metadata !1641, metadata !DIExpression()), !dbg !1639, !psr.id !1642
  call void @llvm.dbg.value(metadata i64* %2, metadata !1643, metadata !DIExpression()), !dbg !1639, !psr.id !1644
  call void @add_round_key(i64* %2, i64* %1), !dbg !1645, !psr.id !1646
  call void @llvm.dbg.value(metadata i32 1, metadata !1647, metadata !DIExpression()), !dbg !1639, !psr.id !1648
  br label %4, !dbg !1649, !psr.id !1651

4:                                                ; preds = %10, %3
  %.0 = phi i32 [ 1, %3 ], [ %11, %10 ], !dbg !1652, !psr.id !1653
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1647, metadata !DIExpression()), !dbg !1639, !psr.id !1654
  %5 = icmp ult i32 %.0, %0, !dbg !1655, !psr.id !1657
  br i1 %5, label %6, label %12, !dbg !1658, !psr.id !1659

6:                                                ; preds = %4
  call void @br_aes_ct64_bitslice_Sbox(i64* %2), !dbg !1660, !psr.id !1662
  call void @shift_rows(i64* %2), !dbg !1663, !psr.id !1664
  call void @mix_columns(i64* %2), !dbg !1665, !psr.id !1666
  %7 = shl i32 %.0, 3, !dbg !1667, !psr.id !1668
  %8 = zext i32 %7 to i64, !dbg !1669, !psr.id !1670
  %9 = getelementptr inbounds i64, i64* %1, i64 %8, !dbg !1669, !psr.id !1671, !PointTainted !1672
  call void @add_round_key(i64* %2, i64* %9), !dbg !1673, !psr.id !1674
  br label %10, !dbg !1675, !psr.id !1676

10:                                               ; preds = %6
  %11 = add i32 %.0, 1, !dbg !1677, !psr.id !1678
  call void @llvm.dbg.value(metadata i32 %11, metadata !1647, metadata !DIExpression()), !dbg !1639, !psr.id !1679
  br label %4, !dbg !1680, !llvm.loop !1681, !psr.id !1683

12:                                               ; preds = %4
  call void @br_aes_ct64_bitslice_Sbox(i64* %2), !dbg !1684, !psr.id !1685
  call void @shift_rows(i64* %2), !dbg !1686, !psr.id !1687
  %13 = shl i32 %0, 3, !dbg !1688, !psr.id !1689
  %14 = zext i32 %13 to i64, !dbg !1690, !psr.id !1691
  %15 = getelementptr inbounds i64, i64* %1, i64 %14, !dbg !1690, !psr.id !1692, !PointTainted !1672
  call void @add_round_key(i64* %2, i64* %15), !dbg !1693, !psr.id !1694
  ret void, !dbg !1695, !psr.id !1696
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_round_key(i64* %0, i64* %1) #0 !dbg !1697 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1700, metadata !DIExpression()), !dbg !1701, !psr.id !1702
  call void @llvm.dbg.value(metadata i64* %1, metadata !1703, metadata !DIExpression()), !dbg !1701, !psr.id !1704
  %3 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1705, !psr.id !1706, !PointTainted !1672
  %4 = load i64, i64* %3, align 8, !dbg !1705, !psr.id !1707, !ValueTainted !1708
  %5 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1709, !psr.id !1710
  %6 = load i64, i64* %5, align 8, !dbg !1711, !psr.id !1712
  %7 = xor i64 %6, %4, !dbg !1711, !psr.id !1713, !ValueTainted !1708
  store i64 %7, i64* %5, align 8, !dbg !1711, !psr.id !1714
  %8 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1715, !psr.id !1716, !PointTainted !1672
  %9 = load i64, i64* %8, align 8, !dbg !1715, !psr.id !1717, !ValueTainted !1708
  %10 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1718, !psr.id !1719
  %11 = load i64, i64* %10, align 8, !dbg !1720, !psr.id !1721
  %12 = xor i64 %11, %9, !dbg !1720, !psr.id !1722, !ValueTainted !1708
  store i64 %12, i64* %10, align 8, !dbg !1720, !psr.id !1723
  %13 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1724, !psr.id !1725, !PointTainted !1672
  %14 = load i64, i64* %13, align 8, !dbg !1724, !psr.id !1726, !ValueTainted !1708
  %15 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1727, !psr.id !1728
  %16 = load i64, i64* %15, align 8, !dbg !1729, !psr.id !1730
  %17 = xor i64 %16, %14, !dbg !1729, !psr.id !1731, !ValueTainted !1708
  store i64 %17, i64* %15, align 8, !dbg !1729, !psr.id !1732
  %18 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1733, !psr.id !1734, !PointTainted !1672
  %19 = load i64, i64* %18, align 8, !dbg !1733, !psr.id !1735, !ValueTainted !1708
  %20 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1736, !psr.id !1737
  %21 = load i64, i64* %20, align 8, !dbg !1738, !psr.id !1739
  %22 = xor i64 %21, %19, !dbg !1738, !psr.id !1740, !ValueTainted !1708
  store i64 %22, i64* %20, align 8, !dbg !1738, !psr.id !1741
  %23 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1742, !psr.id !1743, !PointTainted !1672
  %24 = load i64, i64* %23, align 8, !dbg !1742, !psr.id !1744, !ValueTainted !1708
  %25 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1745, !psr.id !1746
  %26 = load i64, i64* %25, align 8, !dbg !1747, !psr.id !1748
  %27 = xor i64 %26, %24, !dbg !1747, !psr.id !1749, !ValueTainted !1708
  store i64 %27, i64* %25, align 8, !dbg !1747, !psr.id !1750
  %28 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !1751, !psr.id !1752, !PointTainted !1672
  %29 = load i64, i64* %28, align 8, !dbg !1751, !psr.id !1753, !ValueTainted !1708
  %30 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !1754, !psr.id !1755
  %31 = load i64, i64* %30, align 8, !dbg !1756, !psr.id !1757
  %32 = xor i64 %31, %29, !dbg !1756, !psr.id !1758, !ValueTainted !1708
  store i64 %32, i64* %30, align 8, !dbg !1756, !psr.id !1759
  %33 = getelementptr inbounds i64, i64* %1, i64 6, !dbg !1760, !psr.id !1761, !PointTainted !1672
  %34 = load i64, i64* %33, align 8, !dbg !1760, !psr.id !1762, !ValueTainted !1708
  %35 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !1763, !psr.id !1764
  %36 = load i64, i64* %35, align 8, !dbg !1765, !psr.id !1766
  %37 = xor i64 %36, %34, !dbg !1765, !psr.id !1767, !ValueTainted !1708
  store i64 %37, i64* %35, align 8, !dbg !1765, !psr.id !1768
  %38 = getelementptr inbounds i64, i64* %1, i64 7, !dbg !1769, !psr.id !1770, !PointTainted !1672
  %39 = load i64, i64* %38, align 8, !dbg !1769, !psr.id !1771, !ValueTainted !1708
  %40 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !1772, !psr.id !1773
  %41 = load i64, i64* %40, align 8, !dbg !1774, !psr.id !1775
  %42 = xor i64 %41, %39, !dbg !1774, !psr.id !1776, !ValueTainted !1708
  store i64 %42, i64* %40, align 8, !dbg !1774, !psr.id !1777
  ret void, !dbg !1778, !psr.id !1779
}

; Function Attrs: noinline nounwind uwtable
define internal void @shift_rows(i64* %0) #0 !dbg !1780 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1781, metadata !DIExpression()), !dbg !1782, !psr.id !1783
  call void @llvm.dbg.value(metadata i32 0, metadata !1784, metadata !DIExpression()), !dbg !1782, !psr.id !1785
  br label %2, !dbg !1786, !psr.id !1788

2:                                                ; preds = %29, %1
  %.0 = phi i32 [ 0, %1 ], [ %30, %29 ], !dbg !1789, !psr.id !1790
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1784, metadata !DIExpression()), !dbg !1782, !psr.id !1791
  %3 = icmp slt i32 %.0, 8, !dbg !1792, !psr.id !1794
  br i1 %3, label %4, label %31, !dbg !1795, !psr.id !1796

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64, !dbg !1797, !psr.id !1799
  %6 = getelementptr inbounds i64, i64* %0, i64 %5, !dbg !1797, !psr.id !1800
  %7 = load i64, i64* %6, align 8, !dbg !1797, !psr.id !1801
  call void @llvm.dbg.value(metadata i64 %7, metadata !1802, metadata !DIExpression()), !dbg !1803, !psr.id !1804
  %8 = and i64 %7, 65535, !dbg !1805, !psr.id !1806
  %9 = and i64 %7, 4293918720, !dbg !1807, !psr.id !1808
  %10 = lshr i64 %9, 4, !dbg !1809, !psr.id !1810
  %11 = or i64 %8, %10, !dbg !1811, !psr.id !1812
  %12 = and i64 %7, 983040, !dbg !1813, !psr.id !1814
  %13 = shl i64 %12, 12, !dbg !1815, !psr.id !1816
  %14 = or i64 %11, %13, !dbg !1817, !psr.id !1818
  %15 = and i64 %7, 280375465082880, !dbg !1819, !psr.id !1820
  %16 = lshr i64 %15, 8, !dbg !1821, !psr.id !1822
  %17 = or i64 %14, %16, !dbg !1823, !psr.id !1824
  %18 = and i64 %7, 1095216660480, !dbg !1825, !psr.id !1826
  %19 = shl i64 %18, 8, !dbg !1827, !psr.id !1828
  %20 = or i64 %17, %19, !dbg !1829, !psr.id !1830
  %21 = and i64 %7, -1152921504606846976, !dbg !1831, !psr.id !1832
  %22 = lshr i64 %21, 12, !dbg !1833, !psr.id !1834
  %23 = or i64 %20, %22, !dbg !1835, !psr.id !1836
  %24 = and i64 %7, 1152640029630136320, !dbg !1837, !psr.id !1838
  %25 = shl i64 %24, 4, !dbg !1839, !psr.id !1840
  %26 = or i64 %23, %25, !dbg !1841, !psr.id !1842
  %27 = sext i32 %.0 to i64, !dbg !1843, !psr.id !1844
  %28 = getelementptr inbounds i64, i64* %0, i64 %27, !dbg !1843, !psr.id !1845
  store i64 %26, i64* %28, align 8, !dbg !1846, !psr.id !1847
  br label %29, !dbg !1848, !psr.id !1849

29:                                               ; preds = %4
  %30 = add nsw i32 %.0, 1, !dbg !1850, !psr.id !1851
  call void @llvm.dbg.value(metadata i32 %30, metadata !1784, metadata !DIExpression()), !dbg !1782, !psr.id !1852
  br label %2, !dbg !1853, !llvm.loop !1854, !psr.id !1856

31:                                               ; preds = %2
  ret void, !dbg !1857, !psr.id !1858
}

; Function Attrs: noinline nounwind uwtable
define internal void @mix_columns(i64* %0) #0 !dbg !1859 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1860, metadata !DIExpression()), !dbg !1861, !psr.id !1862
  %2 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1863, !psr.id !1864
  %3 = load i64, i64* %2, align 8, !dbg !1863, !psr.id !1865
  call void @llvm.dbg.value(metadata i64 %3, metadata !1866, metadata !DIExpression()), !dbg !1861, !psr.id !1867
  %4 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1868, !psr.id !1869
  %5 = load i64, i64* %4, align 8, !dbg !1868, !psr.id !1870
  call void @llvm.dbg.value(metadata i64 %5, metadata !1871, metadata !DIExpression()), !dbg !1861, !psr.id !1872
  %6 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1873, !psr.id !1874
  %7 = load i64, i64* %6, align 8, !dbg !1873, !psr.id !1875
  call void @llvm.dbg.value(metadata i64 %7, metadata !1876, metadata !DIExpression()), !dbg !1861, !psr.id !1877
  %8 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1878, !psr.id !1879
  %9 = load i64, i64* %8, align 8, !dbg !1878, !psr.id !1880
  call void @llvm.dbg.value(metadata i64 %9, metadata !1881, metadata !DIExpression()), !dbg !1861, !psr.id !1882
  %10 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1883, !psr.id !1884
  %11 = load i64, i64* %10, align 8, !dbg !1883, !psr.id !1885
  call void @llvm.dbg.value(metadata i64 %11, metadata !1886, metadata !DIExpression()), !dbg !1861, !psr.id !1887
  %12 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !1888, !psr.id !1889
  %13 = load i64, i64* %12, align 8, !dbg !1888, !psr.id !1890
  call void @llvm.dbg.value(metadata i64 %13, metadata !1891, metadata !DIExpression()), !dbg !1861, !psr.id !1892
  %14 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !1893, !psr.id !1894
  %15 = load i64, i64* %14, align 8, !dbg !1893, !psr.id !1895
  call void @llvm.dbg.value(metadata i64 %15, metadata !1896, metadata !DIExpression()), !dbg !1861, !psr.id !1897
  %16 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !1898, !psr.id !1899
  %17 = load i64, i64* %16, align 8, !dbg !1898, !psr.id !1900
  call void @llvm.dbg.value(metadata i64 %17, metadata !1901, metadata !DIExpression()), !dbg !1861, !psr.id !1902
  %18 = lshr i64 %3, 16, !dbg !1903, !psr.id !1904
  %19 = shl i64 %3, 48, !dbg !1905, !psr.id !1906
  %20 = or i64 %18, %19, !dbg !1907, !psr.id !1908
  call void @llvm.dbg.value(metadata i64 %20, metadata !1909, metadata !DIExpression()), !dbg !1861, !psr.id !1910
  %21 = lshr i64 %5, 16, !dbg !1911, !psr.id !1912
  %22 = shl i64 %5, 48, !dbg !1913, !psr.id !1914
  %23 = or i64 %21, %22, !dbg !1915, !psr.id !1916
  call void @llvm.dbg.value(metadata i64 %23, metadata !1917, metadata !DIExpression()), !dbg !1861, !psr.id !1918
  %24 = lshr i64 %7, 16, !dbg !1919, !psr.id !1920
  %25 = shl i64 %7, 48, !dbg !1921, !psr.id !1922
  %26 = or i64 %24, %25, !dbg !1923, !psr.id !1924
  call void @llvm.dbg.value(metadata i64 %26, metadata !1925, metadata !DIExpression()), !dbg !1861, !psr.id !1926
  %27 = lshr i64 %9, 16, !dbg !1927, !psr.id !1928
  %28 = shl i64 %9, 48, !dbg !1929, !psr.id !1930
  %29 = or i64 %27, %28, !dbg !1931, !psr.id !1932
  call void @llvm.dbg.value(metadata i64 %29, metadata !1933, metadata !DIExpression()), !dbg !1861, !psr.id !1934
  %30 = lshr i64 %11, 16, !dbg !1935, !psr.id !1936
  %31 = shl i64 %11, 48, !dbg !1937, !psr.id !1938
  %32 = or i64 %30, %31, !dbg !1939, !psr.id !1940
  call void @llvm.dbg.value(metadata i64 %32, metadata !1941, metadata !DIExpression()), !dbg !1861, !psr.id !1942
  %33 = lshr i64 %13, 16, !dbg !1943, !psr.id !1944
  %34 = shl i64 %13, 48, !dbg !1945, !psr.id !1946
  %35 = or i64 %33, %34, !dbg !1947, !psr.id !1948
  call void @llvm.dbg.value(metadata i64 %35, metadata !1949, metadata !DIExpression()), !dbg !1861, !psr.id !1950
  %36 = lshr i64 %15, 16, !dbg !1951, !psr.id !1952
  %37 = shl i64 %15, 48, !dbg !1953, !psr.id !1954
  %38 = or i64 %36, %37, !dbg !1955, !psr.id !1956
  call void @llvm.dbg.value(metadata i64 %38, metadata !1957, metadata !DIExpression()), !dbg !1861, !psr.id !1958
  %39 = lshr i64 %17, 16, !dbg !1959, !psr.id !1960
  %40 = shl i64 %17, 48, !dbg !1961, !psr.id !1962
  %41 = or i64 %39, %40, !dbg !1963, !psr.id !1964
  call void @llvm.dbg.value(metadata i64 %41, metadata !1965, metadata !DIExpression()), !dbg !1861, !psr.id !1966
  %42 = xor i64 %17, %41, !dbg !1967, !psr.id !1968
  %43 = xor i64 %42, %20, !dbg !1969, !psr.id !1970
  %44 = xor i64 %3, %20, !dbg !1971, !psr.id !1972
  %45 = call i64 @rotr32(i64 %44), !dbg !1973, !psr.id !1974
  %46 = xor i64 %43, %45, !dbg !1975, !psr.id !1976
  %47 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1977, !psr.id !1978
  store i64 %46, i64* %47, align 8, !dbg !1979, !psr.id !1980
  %48 = xor i64 %3, %20, !dbg !1981, !psr.id !1982
  %49 = xor i64 %48, %17, !dbg !1983, !psr.id !1984
  %50 = xor i64 %49, %41, !dbg !1985, !psr.id !1986
  %51 = xor i64 %50, %23, !dbg !1987, !psr.id !1988
  %52 = xor i64 %5, %23, !dbg !1989, !psr.id !1990
  %53 = call i64 @rotr32(i64 %52), !dbg !1991, !psr.id !1992
  %54 = xor i64 %51, %53, !dbg !1993, !psr.id !1994
  %55 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1995, !psr.id !1996
  store i64 %54, i64* %55, align 8, !dbg !1997, !psr.id !1998
  %56 = xor i64 %5, %23, !dbg !1999, !psr.id !2000
  %57 = xor i64 %56, %26, !dbg !2001, !psr.id !2002
  %58 = xor i64 %7, %26, !dbg !2003, !psr.id !2004
  %59 = call i64 @rotr32(i64 %58), !dbg !2005, !psr.id !2006
  %60 = xor i64 %57, %59, !dbg !2007, !psr.id !2008
  %61 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2009, !psr.id !2010
  store i64 %60, i64* %61, align 8, !dbg !2011, !psr.id !2012
  %62 = xor i64 %7, %26, !dbg !2013, !psr.id !2014
  %63 = xor i64 %62, %17, !dbg !2015, !psr.id !2016
  %64 = xor i64 %63, %41, !dbg !2017, !psr.id !2018
  %65 = xor i64 %64, %29, !dbg !2019, !psr.id !2020
  %66 = xor i64 %9, %29, !dbg !2021, !psr.id !2022
  %67 = call i64 @rotr32(i64 %66), !dbg !2023, !psr.id !2024
  %68 = xor i64 %65, %67, !dbg !2025, !psr.id !2026
  %69 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2027, !psr.id !2028
  store i64 %68, i64* %69, align 8, !dbg !2029, !psr.id !2030
  %70 = xor i64 %9, %29, !dbg !2031, !psr.id !2032
  %71 = xor i64 %70, %17, !dbg !2033, !psr.id !2034
  %72 = xor i64 %71, %41, !dbg !2035, !psr.id !2036
  %73 = xor i64 %72, %32, !dbg !2037, !psr.id !2038
  %74 = xor i64 %11, %32, !dbg !2039, !psr.id !2040
  %75 = call i64 @rotr32(i64 %74), !dbg !2041, !psr.id !2042
  %76 = xor i64 %73, %75, !dbg !2043, !psr.id !2044
  %77 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !2045, !psr.id !2046
  store i64 %76, i64* %77, align 8, !dbg !2047, !psr.id !2048
  %78 = xor i64 %11, %32, !dbg !2049, !psr.id !2050
  %79 = xor i64 %78, %35, !dbg !2051, !psr.id !2052
  %80 = xor i64 %13, %35, !dbg !2053, !psr.id !2054
  %81 = call i64 @rotr32(i64 %80), !dbg !2055, !psr.id !2056
  %82 = xor i64 %79, %81, !dbg !2057, !psr.id !2058
  %83 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !2059, !psr.id !2060
  store i64 %82, i64* %83, align 8, !dbg !2061, !psr.id !2062
  %84 = xor i64 %13, %35, !dbg !2063, !psr.id !2064
  %85 = xor i64 %84, %38, !dbg !2065, !psr.id !2066
  %86 = xor i64 %15, %38, !dbg !2067, !psr.id !2068
  %87 = call i64 @rotr32(i64 %86), !dbg !2069, !psr.id !2070
  %88 = xor i64 %85, %87, !dbg !2071, !psr.id !2072
  %89 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !2073, !psr.id !2074
  store i64 %88, i64* %89, align 8, !dbg !2075, !psr.id !2076
  %90 = xor i64 %15, %38, !dbg !2077, !psr.id !2078
  %91 = xor i64 %90, %41, !dbg !2079, !psr.id !2080
  %92 = xor i64 %17, %41, !dbg !2081, !psr.id !2082
  %93 = call i64 @rotr32(i64 %92), !dbg !2083, !psr.id !2084
  %94 = xor i64 %91, %93, !dbg !2085, !psr.id !2086
  %95 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !2087, !psr.id !2088
  store i64 %94, i64* %95, align 8, !dbg !2089, !psr.id !2090
  ret void, !dbg !2091, !psr.id !2092
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @rotr32(i64 %0) #0 !dbg !2093 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2096, metadata !DIExpression()), !dbg !2097, !psr.id !2098
  %2 = shl i64 %0, 32, !dbg !2099, !psr.id !2100
  %3 = lshr i64 %0, 32, !dbg !2101, !psr.id !2102
  %4 = or i64 %2, %3, !dbg !2103, !psr.id !2104
  ret i64 %4, !dbg !2105, !psr.id !2106
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitslice_encrypt_wrapper(i32 %0, i32* %1, i8* %2) #0 !dbg !2107 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2111, metadata !DIExpression()), !dbg !2112, !psr.id !2113
  call void @llvm.dbg.value(metadata i32* %1, metadata !2114, metadata !DIExpression()), !dbg !2112, !psr.id !2115
  call void @llvm.dbg.value(metadata i8* %2, metadata !2116, metadata !DIExpression()), !dbg !2112, !psr.id !2117
  %4 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %0), !dbg !2118, !psr.id !2119
  call void @public_in(%struct.smack_value* %4), !dbg !2120, !psr.id !2121
  %5 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %1), !dbg !2122, !psr.id !2123
  call void @public_in(%struct.smack_value* %5), !dbg !2124, !psr.id !2125
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !2126, !psr.id !2127
  call void @public_in(%struct.smack_value* %6), !dbg !2128, !psr.id !2129
  %7 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 16), !dbg !2130, !psr.id !2131
  call void @public_in(%struct.smack_value* %7), !dbg !2132, !psr.id !2133
  %8 = bitcast i32* %1 to i64*, !dbg !2134, !psr.id !2135
  %9 = bitcast i8* %2 to i64*, !dbg !2136, !psr.id !2137
  call void @br_aes_ct64_bitslice_encrypt(i32 %0, i64* %8, i64* %9), !dbg !2138, !psr.id !2139
  ret void, !dbg !2140, !psr.id !2141
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitslice_encrypt_wrapper_t() #0 !dbg !2142 {
  %1 = call i32 (...) @getuns(), !dbg !2145, !psr.id !2146
  call void @llvm.dbg.value(metadata i32 %1, metadata !2147, metadata !DIExpression()), !dbg !2148, !psr.id !2149
  %2 = call i32* (...) @getpt(), !dbg !2150, !psr.id !2151
  call void @llvm.dbg.value(metadata i32* %2, metadata !2152, metadata !DIExpression()), !dbg !2148, !psr.id !2153
  %3 = call i8* (...) @getpt2(), !dbg !2154, !psr.id !2155
  call void @llvm.dbg.value(metadata i8* %3, metadata !2156, metadata !DIExpression()), !dbg !2148, !psr.id !2157
  %4 = bitcast i32* %2 to i64*, !dbg !2158, !psr.id !2159
  %5 = bitcast i8* %3 to i64*, !dbg !2160, !psr.id !2161
  call void @br_aes_ct64_bitslice_encrypt(i32 %1, i64* %4, i64* %5), !dbg !2162, !psr.id !2163
  ret void, !dbg !2164, !psr.id !2165
}

declare dso_local i32 @getuns(...) #2

declare dso_local i32* @getpt(...) #2

declare dso_local i8* @getpt2(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @bitslice_encrypt_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!2, !22, !25}
!llvm.ident = !{!27, !27, !27}
!llvm.module.flags = !{!28, !29, !30}

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
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../BearSSL/src/symcipher/aes_ct64_enc.c", directory: "/home/luwei/bech-back/BearSSL/AES_ct64")
!24 = !{!6}
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "bitslice_encrypt.c", directory: "/home/luwei/bech-back/BearSSL/AES_ct64")
!27 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !3, file: !3, line: 29, type: !32, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!35 = !DILocalVariable(name: "q", arg: 1, scope: !31, file: !3, line: 29, type: !34)
!36 = !DILocation(line: 0, scope: !31)
!37 = !{!"1"}
!38 = !DILocation(line: 56, column: 7, scope: !31)
!39 = !{!"2"}
!40 = !{!"3"}
!41 = !DILocalVariable(name: "x0", scope: !31, file: !3, line: 41, type: !6)
!42 = !{!"4"}
!43 = !DILocation(line: 57, column: 7, scope: !31)
!44 = !{!"5"}
!45 = !{!"6"}
!46 = !DILocalVariable(name: "x1", scope: !31, file: !3, line: 41, type: !6)
!47 = !{!"7"}
!48 = !DILocation(line: 58, column: 7, scope: !31)
!49 = !{!"8"}
!50 = !{!"9"}
!51 = !DILocalVariable(name: "x2", scope: !31, file: !3, line: 41, type: !6)
!52 = !{!"10"}
!53 = !DILocation(line: 59, column: 7, scope: !31)
!54 = !{!"11"}
!55 = !{!"12"}
!56 = !DILocalVariable(name: "x3", scope: !31, file: !3, line: 41, type: !6)
!57 = !{!"13"}
!58 = !DILocation(line: 60, column: 7, scope: !31)
!59 = !{!"14"}
!60 = !{!"15"}
!61 = !DILocalVariable(name: "x4", scope: !31, file: !3, line: 41, type: !6)
!62 = !{!"16"}
!63 = !DILocation(line: 61, column: 7, scope: !31)
!64 = !{!"17"}
!65 = !{!"18"}
!66 = !DILocalVariable(name: "x5", scope: !31, file: !3, line: 41, type: !6)
!67 = !{!"19"}
!68 = !DILocation(line: 62, column: 7, scope: !31)
!69 = !{!"20"}
!70 = !{!"21"}
!71 = !DILocalVariable(name: "x6", scope: !31, file: !3, line: 41, type: !6)
!72 = !{!"22"}
!73 = !DILocation(line: 63, column: 7, scope: !31)
!74 = !{!"23"}
!75 = !{!"24"}
!76 = !DILocalVariable(name: "x7", scope: !31, file: !3, line: 41, type: !6)
!77 = !{!"25"}
!78 = !DILocation(line: 68, column: 11, scope: !31)
!79 = !{!"26"}
!80 = !DILocalVariable(name: "y14", scope: !31, file: !3, line: 43, type: !6)
!81 = !{!"27"}
!82 = !DILocation(line: 69, column: 11, scope: !31)
!83 = !{!"28"}
!84 = !DILocalVariable(name: "y13", scope: !31, file: !3, line: 43, type: !6)
!85 = !{!"29"}
!86 = !DILocation(line: 70, column: 10, scope: !31)
!87 = !{!"30"}
!88 = !DILocalVariable(name: "y9", scope: !31, file: !3, line: 42, type: !6)
!89 = !{!"31"}
!90 = !DILocation(line: 71, column: 10, scope: !31)
!91 = !{!"32"}
!92 = !DILocalVariable(name: "y8", scope: !31, file: !3, line: 42, type: !6)
!93 = !{!"33"}
!94 = !DILocation(line: 72, column: 10, scope: !31)
!95 = !{!"34"}
!96 = !DILocalVariable(name: "t0", scope: !31, file: !3, line: 47, type: !6)
!97 = !{!"35"}
!98 = !DILocation(line: 73, column: 10, scope: !31)
!99 = !{!"36"}
!100 = !DILocalVariable(name: "y1", scope: !31, file: !3, line: 42, type: !6)
!101 = !{!"37"}
!102 = !DILocation(line: 74, column: 10, scope: !31)
!103 = !{!"38"}
!104 = !DILocalVariable(name: "y4", scope: !31, file: !3, line: 42, type: !6)
!105 = !{!"39"}
!106 = !DILocation(line: 75, column: 12, scope: !31)
!107 = !{!"40"}
!108 = !DILocalVariable(name: "y12", scope: !31, file: !3, line: 43, type: !6)
!109 = !{!"41"}
!110 = !DILocation(line: 76, column: 10, scope: !31)
!111 = !{!"42"}
!112 = !DILocalVariable(name: "y2", scope: !31, file: !3, line: 42, type: !6)
!113 = !{!"43"}
!114 = !DILocation(line: 77, column: 10, scope: !31)
!115 = !{!"44"}
!116 = !DILocalVariable(name: "y5", scope: !31, file: !3, line: 42, type: !6)
!117 = !{!"45"}
!118 = !DILocation(line: 78, column: 10, scope: !31)
!119 = !{!"46"}
!120 = !DILocalVariable(name: "y3", scope: !31, file: !3, line: 42, type: !6)
!121 = !{!"47"}
!122 = !DILocation(line: 79, column: 10, scope: !31)
!123 = !{!"48"}
!124 = !DILocalVariable(name: "t1", scope: !31, file: !3, line: 47, type: !6)
!125 = !{!"49"}
!126 = !DILocation(line: 80, column: 11, scope: !31)
!127 = !{!"50"}
!128 = !DILocalVariable(name: "y15", scope: !31, file: !3, line: 43, type: !6)
!129 = !{!"51"}
!130 = !DILocation(line: 81, column: 11, scope: !31)
!131 = !{!"52"}
!132 = !DILocalVariable(name: "y20", scope: !31, file: !3, line: 44, type: !6)
!133 = !{!"53"}
!134 = !DILocation(line: 82, column: 11, scope: !31)
!135 = !{!"54"}
!136 = !DILocalVariable(name: "y6", scope: !31, file: !3, line: 42, type: !6)
!137 = !{!"55"}
!138 = !DILocation(line: 83, column: 12, scope: !31)
!139 = !{!"56"}
!140 = !DILocalVariable(name: "y10", scope: !31, file: !3, line: 43, type: !6)
!141 = !{!"57"}
!142 = !DILocation(line: 84, column: 12, scope: !31)
!143 = !{!"58"}
!144 = !DILocalVariable(name: "y11", scope: !31, file: !3, line: 43, type: !6)
!145 = !{!"59"}
!146 = !DILocation(line: 85, column: 10, scope: !31)
!147 = !{!"60"}
!148 = !DILocalVariable(name: "y7", scope: !31, file: !3, line: 42, type: !6)
!149 = !{!"61"}
!150 = !DILocation(line: 86, column: 12, scope: !31)
!151 = !{!"62"}
!152 = !DILocalVariable(name: "y17", scope: !31, file: !3, line: 43, type: !6)
!153 = !{!"63"}
!154 = !DILocation(line: 87, column: 12, scope: !31)
!155 = !{!"64"}
!156 = !DILocalVariable(name: "y19", scope: !31, file: !3, line: 43, type: !6)
!157 = !{!"65"}
!158 = !DILocation(line: 88, column: 11, scope: !31)
!159 = !{!"66"}
!160 = !DILocalVariable(name: "y16", scope: !31, file: !3, line: 43, type: !6)
!161 = !{!"67"}
!162 = !DILocation(line: 89, column: 12, scope: !31)
!163 = !{!"68"}
!164 = !DILocalVariable(name: "y21", scope: !31, file: !3, line: 44, type: !6)
!165 = !{!"69"}
!166 = !DILocation(line: 90, column: 11, scope: !31)
!167 = !{!"70"}
!168 = !DILocalVariable(name: "y18", scope: !31, file: !3, line: 43, type: !6)
!169 = !{!"71"}
!170 = !DILocation(line: 95, column: 11, scope: !31)
!171 = !{!"72"}
!172 = !DILocalVariable(name: "t2", scope: !31, file: !3, line: 47, type: !6)
!173 = !{!"73"}
!174 = !DILocation(line: 96, column: 10, scope: !31)
!175 = !{!"74"}
!176 = !DILocalVariable(name: "t3", scope: !31, file: !3, line: 47, type: !6)
!177 = !{!"75"}
!178 = !DILocation(line: 97, column: 10, scope: !31)
!179 = !{!"76"}
!180 = !DILocalVariable(name: "t4", scope: !31, file: !3, line: 47, type: !6)
!181 = !{!"77"}
!182 = !DILocation(line: 98, column: 10, scope: !31)
!183 = !{!"78"}
!184 = !DILocalVariable(name: "t5", scope: !31, file: !3, line: 47, type: !6)
!185 = !{!"79"}
!186 = !DILocation(line: 99, column: 10, scope: !31)
!187 = !{!"80"}
!188 = !DILocalVariable(name: "t6", scope: !31, file: !3, line: 47, type: !6)
!189 = !{!"81"}
!190 = !DILocation(line: 100, column: 11, scope: !31)
!191 = !{!"82"}
!192 = !DILocalVariable(name: "t7", scope: !31, file: !3, line: 47, type: !6)
!193 = !{!"83"}
!194 = !DILocation(line: 101, column: 10, scope: !31)
!195 = !{!"84"}
!196 = !DILocalVariable(name: "t8", scope: !31, file: !3, line: 47, type: !6)
!197 = !{!"85"}
!198 = !DILocation(line: 102, column: 10, scope: !31)
!199 = !{!"86"}
!200 = !DILocalVariable(name: "t9", scope: !31, file: !3, line: 47, type: !6)
!201 = !{!"87"}
!202 = !DILocation(line: 103, column: 11, scope: !31)
!203 = !{!"88"}
!204 = !DILocalVariable(name: "t10", scope: !31, file: !3, line: 48, type: !6)
!205 = !{!"89"}
!206 = !DILocation(line: 104, column: 12, scope: !31)
!207 = !{!"90"}
!208 = !DILocalVariable(name: "t11", scope: !31, file: !3, line: 48, type: !6)
!209 = !{!"91"}
!210 = !DILocation(line: 105, column: 11, scope: !31)
!211 = !{!"92"}
!212 = !DILocalVariable(name: "t12", scope: !31, file: !3, line: 48, type: !6)
!213 = !{!"93"}
!214 = !DILocation(line: 106, column: 12, scope: !31)
!215 = !{!"94"}
!216 = !DILocalVariable(name: "t13", scope: !31, file: !3, line: 48, type: !6)
!217 = !{!"95"}
!218 = !DILocation(line: 107, column: 12, scope: !31)
!219 = !{!"96"}
!220 = !DILocalVariable(name: "t14", scope: !31, file: !3, line: 48, type: !6)
!221 = !{!"97"}
!222 = !DILocation(line: 108, column: 11, scope: !31)
!223 = !{!"98"}
!224 = !DILocalVariable(name: "t15", scope: !31, file: !3, line: 48, type: !6)
!225 = !{!"99"}
!226 = !DILocation(line: 109, column: 12, scope: !31)
!227 = !{!"100"}
!228 = !DILocalVariable(name: "t16", scope: !31, file: !3, line: 48, type: !6)
!229 = !{!"101"}
!230 = !DILocation(line: 110, column: 11, scope: !31)
!231 = !{!"102"}
!232 = !DILocalVariable(name: "t17", scope: !31, file: !3, line: 48, type: !6)
!233 = !{!"103"}
!234 = !DILocation(line: 111, column: 11, scope: !31)
!235 = !{!"104"}
!236 = !DILocalVariable(name: "t18", scope: !31, file: !3, line: 48, type: !6)
!237 = !{!"105"}
!238 = !DILocation(line: 112, column: 11, scope: !31)
!239 = !{!"106"}
!240 = !DILocalVariable(name: "t19", scope: !31, file: !3, line: 48, type: !6)
!241 = !{!"107"}
!242 = !DILocation(line: 113, column: 12, scope: !31)
!243 = !{!"108"}
!244 = !DILocalVariable(name: "t20", scope: !31, file: !3, line: 49, type: !6)
!245 = !{!"109"}
!246 = !DILocation(line: 114, column: 12, scope: !31)
!247 = !{!"110"}
!248 = !DILocalVariable(name: "t21", scope: !31, file: !3, line: 49, type: !6)
!249 = !{!"111"}
!250 = !DILocation(line: 115, column: 12, scope: !31)
!251 = !{!"112"}
!252 = !DILocalVariable(name: "t22", scope: !31, file: !3, line: 49, type: !6)
!253 = !{!"113"}
!254 = !DILocation(line: 116, column: 12, scope: !31)
!255 = !{!"114"}
!256 = !DILocalVariable(name: "t23", scope: !31, file: !3, line: 49, type: !6)
!257 = !{!"115"}
!258 = !DILocation(line: 117, column: 12, scope: !31)
!259 = !{!"116"}
!260 = !DILocalVariable(name: "t24", scope: !31, file: !3, line: 49, type: !6)
!261 = !{!"117"}
!262 = !DILocation(line: 119, column: 12, scope: !31)
!263 = !{!"118"}
!264 = !DILocalVariable(name: "t25", scope: !31, file: !3, line: 49, type: !6)
!265 = !{!"119"}
!266 = !DILocation(line: 120, column: 12, scope: !31)
!267 = !{!"120"}
!268 = !DILocalVariable(name: "t26", scope: !31, file: !3, line: 49, type: !6)
!269 = !{!"121"}
!270 = !DILocation(line: 121, column: 12, scope: !31)
!271 = !{!"122"}
!272 = !DILocalVariable(name: "t27", scope: !31, file: !3, line: 49, type: !6)
!273 = !{!"123"}
!274 = !DILocation(line: 122, column: 12, scope: !31)
!275 = !{!"124"}
!276 = !DILocalVariable(name: "t28", scope: !31, file: !3, line: 49, type: !6)
!277 = !{!"125"}
!278 = !DILocation(line: 123, column: 12, scope: !31)
!279 = !{!"126"}
!280 = !DILocalVariable(name: "t29", scope: !31, file: !3, line: 49, type: !6)
!281 = !{!"127"}
!282 = !DILocation(line: 124, column: 12, scope: !31)
!283 = !{!"128"}
!284 = !DILocalVariable(name: "t30", scope: !31, file: !3, line: 50, type: !6)
!285 = !{!"129"}
!286 = !DILocation(line: 125, column: 12, scope: !31)
!287 = !{!"130"}
!288 = !DILocalVariable(name: "t31", scope: !31, file: !3, line: 50, type: !6)
!289 = !{!"131"}
!290 = !DILocation(line: 126, column: 12, scope: !31)
!291 = !{!"132"}
!292 = !DILocalVariable(name: "t32", scope: !31, file: !3, line: 50, type: !6)
!293 = !{!"133"}
!294 = !DILocation(line: 127, column: 12, scope: !31)
!295 = !{!"134"}
!296 = !DILocalVariable(name: "t33", scope: !31, file: !3, line: 50, type: !6)
!297 = !{!"135"}
!298 = !DILocation(line: 128, column: 12, scope: !31)
!299 = !{!"136"}
!300 = !DILocalVariable(name: "t34", scope: !31, file: !3, line: 50, type: !6)
!301 = !{!"137"}
!302 = !DILocation(line: 129, column: 12, scope: !31)
!303 = !{!"138"}
!304 = !DILocalVariable(name: "t35", scope: !31, file: !3, line: 50, type: !6)
!305 = !{!"139"}
!306 = !DILocation(line: 130, column: 12, scope: !31)
!307 = !{!"140"}
!308 = !DILocalVariable(name: "t36", scope: !31, file: !3, line: 50, type: !6)
!309 = !{!"141"}
!310 = !DILocation(line: 131, column: 12, scope: !31)
!311 = !{!"142"}
!312 = !DILocalVariable(name: "t37", scope: !31, file: !3, line: 50, type: !6)
!313 = !{!"143"}
!314 = !DILocation(line: 132, column: 12, scope: !31)
!315 = !{!"144"}
!316 = !DILocalVariable(name: "t38", scope: !31, file: !3, line: 50, type: !6)
!317 = !{!"145"}
!318 = !DILocation(line: 133, column: 12, scope: !31)
!319 = !{!"146"}
!320 = !DILocalVariable(name: "t39", scope: !31, file: !3, line: 50, type: !6)
!321 = !{!"147"}
!322 = !DILocation(line: 134, column: 12, scope: !31)
!323 = !{!"148"}
!324 = !DILocalVariable(name: "t40", scope: !31, file: !3, line: 51, type: !6)
!325 = !{!"149"}
!326 = !DILocation(line: 136, column: 12, scope: !31)
!327 = !{!"150"}
!328 = !DILocalVariable(name: "t41", scope: !31, file: !3, line: 51, type: !6)
!329 = !{!"151"}
!330 = !DILocation(line: 137, column: 12, scope: !31)
!331 = !{!"152"}
!332 = !DILocalVariable(name: "t42", scope: !31, file: !3, line: 51, type: !6)
!333 = !{!"153"}
!334 = !DILocation(line: 138, column: 12, scope: !31)
!335 = !{!"154"}
!336 = !DILocalVariable(name: "t43", scope: !31, file: !3, line: 51, type: !6)
!337 = !{!"155"}
!338 = !DILocation(line: 139, column: 12, scope: !31)
!339 = !{!"156"}
!340 = !DILocalVariable(name: "t44", scope: !31, file: !3, line: 51, type: !6)
!341 = !{!"157"}
!342 = !DILocation(line: 140, column: 12, scope: !31)
!343 = !{!"158"}
!344 = !DILocalVariable(name: "t45", scope: !31, file: !3, line: 51, type: !6)
!345 = !{!"159"}
!346 = !DILocation(line: 141, column: 11, scope: !31)
!347 = !{!"160"}
!348 = !DILocalVariable(name: "z0", scope: !31, file: !3, line: 45, type: !6)
!349 = !{!"161"}
!350 = !DILocation(line: 142, column: 11, scope: !31)
!351 = !{!"162"}
!352 = !DILocalVariable(name: "z1", scope: !31, file: !3, line: 45, type: !6)
!353 = !{!"163"}
!354 = !DILocation(line: 143, column: 11, scope: !31)
!355 = !{!"164"}
!356 = !DILocalVariable(name: "z2", scope: !31, file: !3, line: 45, type: !6)
!357 = !{!"165"}
!358 = !DILocation(line: 144, column: 11, scope: !31)
!359 = !{!"166"}
!360 = !DILocalVariable(name: "z3", scope: !31, file: !3, line: 45, type: !6)
!361 = !{!"167"}
!362 = !DILocation(line: 145, column: 11, scope: !31)
!363 = !{!"168"}
!364 = !DILocalVariable(name: "z4", scope: !31, file: !3, line: 45, type: !6)
!365 = !{!"169"}
!366 = !DILocation(line: 146, column: 11, scope: !31)
!367 = !{!"170"}
!368 = !DILocalVariable(name: "z5", scope: !31, file: !3, line: 45, type: !6)
!369 = !{!"171"}
!370 = !DILocation(line: 147, column: 11, scope: !31)
!371 = !{!"172"}
!372 = !DILocalVariable(name: "z6", scope: !31, file: !3, line: 45, type: !6)
!373 = !{!"173"}
!374 = !DILocation(line: 148, column: 11, scope: !31)
!375 = !{!"174"}
!376 = !DILocalVariable(name: "z7", scope: !31, file: !3, line: 45, type: !6)
!377 = !{!"175"}
!378 = !DILocation(line: 149, column: 11, scope: !31)
!379 = !{!"176"}
!380 = !DILocalVariable(name: "z8", scope: !31, file: !3, line: 45, type: !6)
!381 = !{!"177"}
!382 = !DILocation(line: 150, column: 11, scope: !31)
!383 = !{!"178"}
!384 = !DILocalVariable(name: "z9", scope: !31, file: !3, line: 45, type: !6)
!385 = !{!"179"}
!386 = !DILocation(line: 151, column: 12, scope: !31)
!387 = !{!"180"}
!388 = !DILocalVariable(name: "z10", scope: !31, file: !3, line: 46, type: !6)
!389 = !{!"181"}
!390 = !DILocation(line: 152, column: 12, scope: !31)
!391 = !{!"182"}
!392 = !DILocalVariable(name: "z11", scope: !31, file: !3, line: 46, type: !6)
!393 = !{!"183"}
!394 = !DILocation(line: 153, column: 12, scope: !31)
!395 = !{!"184"}
!396 = !DILocalVariable(name: "z12", scope: !31, file: !3, line: 46, type: !6)
!397 = !{!"185"}
!398 = !DILocation(line: 154, column: 12, scope: !31)
!399 = !{!"186"}
!400 = !DILocalVariable(name: "z13", scope: !31, file: !3, line: 46, type: !6)
!401 = !{!"187"}
!402 = !DILocation(line: 155, column: 12, scope: !31)
!403 = !{!"188"}
!404 = !DILocalVariable(name: "z14", scope: !31, file: !3, line: 46, type: !6)
!405 = !{!"189"}
!406 = !DILocation(line: 156, column: 12, scope: !31)
!407 = !{!"190"}
!408 = !DILocalVariable(name: "z15", scope: !31, file: !3, line: 46, type: !6)
!409 = !{!"191"}
!410 = !DILocation(line: 157, column: 12, scope: !31)
!411 = !{!"192"}
!412 = !DILocalVariable(name: "z16", scope: !31, file: !3, line: 46, type: !6)
!413 = !{!"193"}
!414 = !DILocation(line: 158, column: 12, scope: !31)
!415 = !{!"194"}
!416 = !DILocalVariable(name: "z17", scope: !31, file: !3, line: 46, type: !6)
!417 = !{!"195"}
!418 = !DILocation(line: 163, column: 12, scope: !31)
!419 = !{!"196"}
!420 = !DILocalVariable(name: "t46", scope: !31, file: !3, line: 51, type: !6)
!421 = !{!"197"}
!422 = !DILocation(line: 164, column: 12, scope: !31)
!423 = !{!"198"}
!424 = !DILocalVariable(name: "t47", scope: !31, file: !3, line: 51, type: !6)
!425 = !{!"199"}
!426 = !DILocation(line: 165, column: 11, scope: !31)
!427 = !{!"200"}
!428 = !DILocalVariable(name: "t48", scope: !31, file: !3, line: 51, type: !6)
!429 = !{!"201"}
!430 = !DILocation(line: 166, column: 11, scope: !31)
!431 = !{!"202"}
!432 = !DILocalVariable(name: "t49", scope: !31, file: !3, line: 51, type: !6)
!433 = !{!"203"}
!434 = !DILocation(line: 167, column: 11, scope: !31)
!435 = !{!"204"}
!436 = !DILocalVariable(name: "t50", scope: !31, file: !3, line: 52, type: !6)
!437 = !{!"205"}
!438 = !DILocation(line: 168, column: 11, scope: !31)
!439 = !{!"206"}
!440 = !DILocalVariable(name: "t51", scope: !31, file: !3, line: 52, type: !6)
!441 = !{!"207"}
!442 = !DILocation(line: 169, column: 11, scope: !31)
!443 = !{!"208"}
!444 = !DILocalVariable(name: "t52", scope: !31, file: !3, line: 52, type: !6)
!445 = !{!"209"}
!446 = !DILocation(line: 170, column: 11, scope: !31)
!447 = !{!"210"}
!448 = !DILocalVariable(name: "t53", scope: !31, file: !3, line: 52, type: !6)
!449 = !{!"211"}
!450 = !DILocation(line: 171, column: 11, scope: !31)
!451 = !{!"212"}
!452 = !DILocalVariable(name: "t54", scope: !31, file: !3, line: 52, type: !6)
!453 = !{!"213"}
!454 = !DILocation(line: 172, column: 12, scope: !31)
!455 = !{!"214"}
!456 = !DILocalVariable(name: "t55", scope: !31, file: !3, line: 52, type: !6)
!457 = !{!"215"}
!458 = !DILocation(line: 173, column: 12, scope: !31)
!459 = !{!"216"}
!460 = !DILocalVariable(name: "t56", scope: !31, file: !3, line: 52, type: !6)
!461 = !{!"217"}
!462 = !DILocation(line: 174, column: 12, scope: !31)
!463 = !{!"218"}
!464 = !DILocalVariable(name: "t57", scope: !31, file: !3, line: 52, type: !6)
!465 = !{!"219"}
!466 = !DILocation(line: 175, column: 11, scope: !31)
!467 = !{!"220"}
!468 = !DILocalVariable(name: "t58", scope: !31, file: !3, line: 52, type: !6)
!469 = !{!"221"}
!470 = !DILocation(line: 176, column: 11, scope: !31)
!471 = !{!"222"}
!472 = !DILocalVariable(name: "t59", scope: !31, file: !3, line: 52, type: !6)
!473 = !{!"223"}
!474 = !DILocation(line: 177, column: 12, scope: !31)
!475 = !{!"224"}
!476 = !DILocalVariable(name: "t60", scope: !31, file: !3, line: 53, type: !6)
!477 = !{!"225"}
!478 = !DILocation(line: 178, column: 12, scope: !31)
!479 = !{!"226"}
!480 = !DILocalVariable(name: "t61", scope: !31, file: !3, line: 53, type: !6)
!481 = !{!"227"}
!482 = !DILocation(line: 179, column: 12, scope: !31)
!483 = !{!"228"}
!484 = !DILocalVariable(name: "t62", scope: !31, file: !3, line: 53, type: !6)
!485 = !{!"229"}
!486 = !DILocation(line: 180, column: 12, scope: !31)
!487 = !{!"230"}
!488 = !DILocalVariable(name: "t63", scope: !31, file: !3, line: 53, type: !6)
!489 = !{!"231"}
!490 = !DILocation(line: 181, column: 11, scope: !31)
!491 = !{!"232"}
!492 = !DILocalVariable(name: "t64", scope: !31, file: !3, line: 53, type: !6)
!493 = !{!"233"}
!494 = !DILocation(line: 182, column: 12, scope: !31)
!495 = !{!"234"}
!496 = !DILocalVariable(name: "t65", scope: !31, file: !3, line: 53, type: !6)
!497 = !{!"235"}
!498 = !DILocation(line: 183, column: 11, scope: !31)
!499 = !{!"236"}
!500 = !DILocalVariable(name: "t66", scope: !31, file: !3, line: 53, type: !6)
!501 = !{!"237"}
!502 = !DILocation(line: 184, column: 11, scope: !31)
!503 = !{!"238"}
!504 = !DILocalVariable(name: "s0", scope: !31, file: !3, line: 54, type: !6)
!505 = !{!"239"}
!506 = !DILocation(line: 185, column: 13, scope: !31)
!507 = !{!"240"}
!508 = !DILocation(line: 185, column: 11, scope: !31)
!509 = !{!"241"}
!510 = !DILocalVariable(name: "s6", scope: !31, file: !3, line: 54, type: !6)
!511 = !{!"242"}
!512 = !DILocation(line: 186, column: 13, scope: !31)
!513 = !{!"243"}
!514 = !DILocation(line: 186, column: 11, scope: !31)
!515 = !{!"244"}
!516 = !DILocalVariable(name: "s7", scope: !31, file: !3, line: 54, type: !6)
!517 = !{!"245"}
!518 = !DILocation(line: 187, column: 12, scope: !31)
!519 = !{!"246"}
!520 = !DILocalVariable(name: "t67", scope: !31, file: !3, line: 53, type: !6)
!521 = !{!"247"}
!522 = !DILocation(line: 188, column: 11, scope: !31)
!523 = !{!"248"}
!524 = !DILocalVariable(name: "s3", scope: !31, file: !3, line: 54, type: !6)
!525 = !{!"249"}
!526 = !DILocation(line: 189, column: 11, scope: !31)
!527 = !{!"250"}
!528 = !DILocalVariable(name: "s4", scope: !31, file: !3, line: 54, type: !6)
!529 = !{!"251"}
!530 = !DILocation(line: 190, column: 11, scope: !31)
!531 = !{!"252"}
!532 = !DILocalVariable(name: "s5", scope: !31, file: !3, line: 54, type: !6)
!533 = !{!"253"}
!534 = !DILocation(line: 191, column: 13, scope: !31)
!535 = !{!"254"}
!536 = !DILocation(line: 191, column: 11, scope: !31)
!537 = !{!"255"}
!538 = !DILocalVariable(name: "s1", scope: !31, file: !3, line: 54, type: !6)
!539 = !{!"256"}
!540 = !DILocation(line: 192, column: 13, scope: !31)
!541 = !{!"257"}
!542 = !DILocation(line: 192, column: 11, scope: !31)
!543 = !{!"258"}
!544 = !DILocalVariable(name: "s2", scope: !31, file: !3, line: 54, type: !6)
!545 = !{!"259"}
!546 = !DILocation(line: 194, column: 2, scope: !31)
!547 = !{!"260"}
!548 = !DILocation(line: 194, column: 7, scope: !31)
!549 = !{!"261"}
!550 = !DILocation(line: 195, column: 2, scope: !31)
!551 = !{!"262"}
!552 = !DILocation(line: 195, column: 7, scope: !31)
!553 = !{!"263"}
!554 = !DILocation(line: 196, column: 2, scope: !31)
!555 = !{!"264"}
!556 = !DILocation(line: 196, column: 7, scope: !31)
!557 = !{!"265"}
!558 = !DILocation(line: 197, column: 2, scope: !31)
!559 = !{!"266"}
!560 = !DILocation(line: 197, column: 7, scope: !31)
!561 = !{!"267"}
!562 = !DILocation(line: 198, column: 2, scope: !31)
!563 = !{!"268"}
!564 = !DILocation(line: 198, column: 7, scope: !31)
!565 = !{!"269"}
!566 = !DILocation(line: 199, column: 2, scope: !31)
!567 = !{!"270"}
!568 = !DILocation(line: 199, column: 7, scope: !31)
!569 = !{!"271"}
!570 = !DILocation(line: 200, column: 2, scope: !31)
!571 = !{!"272"}
!572 = !DILocation(line: 200, column: 7, scope: !31)
!573 = !{!"273"}
!574 = !DILocation(line: 201, column: 2, scope: !31)
!575 = !{!"274"}
!576 = !DILocation(line: 201, column: 7, scope: !31)
!577 = !{!"275"}
!578 = !DILocation(line: 202, column: 1, scope: !31)
!579 = !{!"276"}
!580 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !3, file: !3, line: 206, type: !32, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!581 = !DILocalVariable(name: "q", arg: 1, scope: !580, file: !3, line: 206, type: !34)
!582 = !DILocation(line: 0, scope: !580)
!583 = !{!"277"}
!584 = !DILocation(line: 220, column: 2, scope: !580)
!585 = !{!"278"}
!586 = !DILocation(line: 220, column: 2, scope: !587)
!587 = distinct !DILexicalBlock(scope: !580, file: !3, line: 220, column: 2)
!588 = !{!"279"}
!589 = !{!"280"}
!590 = !DILocalVariable(name: "a", scope: !587, file: !3, line: 220, type: !6)
!591 = !DILocation(line: 0, scope: !587)
!592 = !{!"281"}
!593 = !{!"282"}
!594 = !{!"283"}
!595 = !DILocalVariable(name: "b", scope: !587, file: !3, line: 220, type: !6)
!596 = !{!"284"}
!597 = !{!"285"}
!598 = !{!"286"}
!599 = !{!"287"}
!600 = !{!"288"}
!601 = !{!"289"}
!602 = !{!"290"}
!603 = !{!"291"}
!604 = !{!"292"}
!605 = !{!"293"}
!606 = !{!"294"}
!607 = !{!"295"}
!608 = !{!"296"}
!609 = !{!"297"}
!610 = !DILocation(line: 221, column: 2, scope: !580)
!611 = !{!"298"}
!612 = !DILocation(line: 221, column: 2, scope: !613)
!613 = distinct !DILexicalBlock(scope: !580, file: !3, line: 221, column: 2)
!614 = !{!"299"}
!615 = !{!"300"}
!616 = !DILocalVariable(name: "a", scope: !613, file: !3, line: 221, type: !6)
!617 = !DILocation(line: 0, scope: !613)
!618 = !{!"301"}
!619 = !{!"302"}
!620 = !{!"303"}
!621 = !DILocalVariable(name: "b", scope: !613, file: !3, line: 221, type: !6)
!622 = !{!"304"}
!623 = !{!"305"}
!624 = !{!"306"}
!625 = !{!"307"}
!626 = !{!"308"}
!627 = !{!"309"}
!628 = !{!"310"}
!629 = !{!"311"}
!630 = !{!"312"}
!631 = !{!"313"}
!632 = !{!"314"}
!633 = !{!"315"}
!634 = !{!"316"}
!635 = !{!"317"}
!636 = !DILocation(line: 222, column: 2, scope: !580)
!637 = !{!"318"}
!638 = !DILocation(line: 222, column: 2, scope: !639)
!639 = distinct !DILexicalBlock(scope: !580, file: !3, line: 222, column: 2)
!640 = !{!"319"}
!641 = !{!"320"}
!642 = !DILocalVariable(name: "a", scope: !639, file: !3, line: 222, type: !6)
!643 = !DILocation(line: 0, scope: !639)
!644 = !{!"321"}
!645 = !{!"322"}
!646 = !{!"323"}
!647 = !DILocalVariable(name: "b", scope: !639, file: !3, line: 222, type: !6)
!648 = !{!"324"}
!649 = !{!"325"}
!650 = !{!"326"}
!651 = !{!"327"}
!652 = !{!"328"}
!653 = !{!"329"}
!654 = !{!"330"}
!655 = !{!"331"}
!656 = !{!"332"}
!657 = !{!"333"}
!658 = !{!"334"}
!659 = !{!"335"}
!660 = !{!"336"}
!661 = !{!"337"}
!662 = !DILocation(line: 223, column: 2, scope: !580)
!663 = !{!"338"}
!664 = !DILocation(line: 223, column: 2, scope: !665)
!665 = distinct !DILexicalBlock(scope: !580, file: !3, line: 223, column: 2)
!666 = !{!"339"}
!667 = !{!"340"}
!668 = !DILocalVariable(name: "a", scope: !665, file: !3, line: 223, type: !6)
!669 = !DILocation(line: 0, scope: !665)
!670 = !{!"341"}
!671 = !{!"342"}
!672 = !{!"343"}
!673 = !DILocalVariable(name: "b", scope: !665, file: !3, line: 223, type: !6)
!674 = !{!"344"}
!675 = !{!"345"}
!676 = !{!"346"}
!677 = !{!"347"}
!678 = !{!"348"}
!679 = !{!"349"}
!680 = !{!"350"}
!681 = !{!"351"}
!682 = !{!"352"}
!683 = !{!"353"}
!684 = !{!"354"}
!685 = !{!"355"}
!686 = !{!"356"}
!687 = !{!"357"}
!688 = !DILocation(line: 225, column: 2, scope: !580)
!689 = !{!"358"}
!690 = !DILocation(line: 225, column: 2, scope: !691)
!691 = distinct !DILexicalBlock(scope: !580, file: !3, line: 225, column: 2)
!692 = !{!"359"}
!693 = !{!"360"}
!694 = !DILocalVariable(name: "a", scope: !691, file: !3, line: 225, type: !6)
!695 = !DILocation(line: 0, scope: !691)
!696 = !{!"361"}
!697 = !{!"362"}
!698 = !{!"363"}
!699 = !DILocalVariable(name: "b", scope: !691, file: !3, line: 225, type: !6)
!700 = !{!"364"}
!701 = !{!"365"}
!702 = !{!"366"}
!703 = !{!"367"}
!704 = !{!"368"}
!705 = !{!"369"}
!706 = !{!"370"}
!707 = !{!"371"}
!708 = !{!"372"}
!709 = !{!"373"}
!710 = !{!"374"}
!711 = !{!"375"}
!712 = !{!"376"}
!713 = !{!"377"}
!714 = !DILocation(line: 226, column: 2, scope: !580)
!715 = !{!"378"}
!716 = !DILocation(line: 226, column: 2, scope: !717)
!717 = distinct !DILexicalBlock(scope: !580, file: !3, line: 226, column: 2)
!718 = !{!"379"}
!719 = !{!"380"}
!720 = !DILocalVariable(name: "a", scope: !717, file: !3, line: 226, type: !6)
!721 = !DILocation(line: 0, scope: !717)
!722 = !{!"381"}
!723 = !{!"382"}
!724 = !{!"383"}
!725 = !DILocalVariable(name: "b", scope: !717, file: !3, line: 226, type: !6)
!726 = !{!"384"}
!727 = !{!"385"}
!728 = !{!"386"}
!729 = !{!"387"}
!730 = !{!"388"}
!731 = !{!"389"}
!732 = !{!"390"}
!733 = !{!"391"}
!734 = !{!"392"}
!735 = !{!"393"}
!736 = !{!"394"}
!737 = !{!"395"}
!738 = !{!"396"}
!739 = !{!"397"}
!740 = !DILocation(line: 227, column: 2, scope: !580)
!741 = !{!"398"}
!742 = !DILocation(line: 227, column: 2, scope: !743)
!743 = distinct !DILexicalBlock(scope: !580, file: !3, line: 227, column: 2)
!744 = !{!"399"}
!745 = !{!"400"}
!746 = !DILocalVariable(name: "a", scope: !743, file: !3, line: 227, type: !6)
!747 = !DILocation(line: 0, scope: !743)
!748 = !{!"401"}
!749 = !{!"402"}
!750 = !{!"403"}
!751 = !DILocalVariable(name: "b", scope: !743, file: !3, line: 227, type: !6)
!752 = !{!"404"}
!753 = !{!"405"}
!754 = !{!"406"}
!755 = !{!"407"}
!756 = !{!"408"}
!757 = !{!"409"}
!758 = !{!"410"}
!759 = !{!"411"}
!760 = !{!"412"}
!761 = !{!"413"}
!762 = !{!"414"}
!763 = !{!"415"}
!764 = !{!"416"}
!765 = !{!"417"}
!766 = !DILocation(line: 228, column: 2, scope: !580)
!767 = !{!"418"}
!768 = !DILocation(line: 228, column: 2, scope: !769)
!769 = distinct !DILexicalBlock(scope: !580, file: !3, line: 228, column: 2)
!770 = !{!"419"}
!771 = !{!"420"}
!772 = !DILocalVariable(name: "a", scope: !769, file: !3, line: 228, type: !6)
!773 = !DILocation(line: 0, scope: !769)
!774 = !{!"421"}
!775 = !{!"422"}
!776 = !{!"423"}
!777 = !DILocalVariable(name: "b", scope: !769, file: !3, line: 228, type: !6)
!778 = !{!"424"}
!779 = !{!"425"}
!780 = !{!"426"}
!781 = !{!"427"}
!782 = !{!"428"}
!783 = !{!"429"}
!784 = !{!"430"}
!785 = !{!"431"}
!786 = !{!"432"}
!787 = !{!"433"}
!788 = !{!"434"}
!789 = !{!"435"}
!790 = !{!"436"}
!791 = !{!"437"}
!792 = !DILocation(line: 230, column: 2, scope: !580)
!793 = !{!"438"}
!794 = !DILocation(line: 230, column: 2, scope: !795)
!795 = distinct !DILexicalBlock(scope: !580, file: !3, line: 230, column: 2)
!796 = !{!"439"}
!797 = !{!"440"}
!798 = !DILocalVariable(name: "a", scope: !795, file: !3, line: 230, type: !6)
!799 = !DILocation(line: 0, scope: !795)
!800 = !{!"441"}
!801 = !{!"442"}
!802 = !{!"443"}
!803 = !DILocalVariable(name: "b", scope: !795, file: !3, line: 230, type: !6)
!804 = !{!"444"}
!805 = !{!"445"}
!806 = !{!"446"}
!807 = !{!"447"}
!808 = !{!"448"}
!809 = !{!"449"}
!810 = !{!"450"}
!811 = !{!"451"}
!812 = !{!"452"}
!813 = !{!"453"}
!814 = !{!"454"}
!815 = !{!"455"}
!816 = !{!"456"}
!817 = !{!"457"}
!818 = !DILocation(line: 231, column: 2, scope: !580)
!819 = !{!"458"}
!820 = !DILocation(line: 231, column: 2, scope: !821)
!821 = distinct !DILexicalBlock(scope: !580, file: !3, line: 231, column: 2)
!822 = !{!"459"}
!823 = !{!"460"}
!824 = !DILocalVariable(name: "a", scope: !821, file: !3, line: 231, type: !6)
!825 = !DILocation(line: 0, scope: !821)
!826 = !{!"461"}
!827 = !{!"462"}
!828 = !{!"463"}
!829 = !DILocalVariable(name: "b", scope: !821, file: !3, line: 231, type: !6)
!830 = !{!"464"}
!831 = !{!"465"}
!832 = !{!"466"}
!833 = !{!"467"}
!834 = !{!"468"}
!835 = !{!"469"}
!836 = !{!"470"}
!837 = !{!"471"}
!838 = !{!"472"}
!839 = !{!"473"}
!840 = !{!"474"}
!841 = !{!"475"}
!842 = !{!"476"}
!843 = !{!"477"}
!844 = !DILocation(line: 232, column: 2, scope: !580)
!845 = !{!"478"}
!846 = !DILocation(line: 232, column: 2, scope: !847)
!847 = distinct !DILexicalBlock(scope: !580, file: !3, line: 232, column: 2)
!848 = !{!"479"}
!849 = !{!"480"}
!850 = !DILocalVariable(name: "a", scope: !847, file: !3, line: 232, type: !6)
!851 = !DILocation(line: 0, scope: !847)
!852 = !{!"481"}
!853 = !{!"482"}
!854 = !{!"483"}
!855 = !DILocalVariable(name: "b", scope: !847, file: !3, line: 232, type: !6)
!856 = !{!"484"}
!857 = !{!"485"}
!858 = !{!"486"}
!859 = !{!"487"}
!860 = !{!"488"}
!861 = !{!"489"}
!862 = !{!"490"}
!863 = !{!"491"}
!864 = !{!"492"}
!865 = !{!"493"}
!866 = !{!"494"}
!867 = !{!"495"}
!868 = !{!"496"}
!869 = !{!"497"}
!870 = !DILocation(line: 233, column: 2, scope: !580)
!871 = !{!"498"}
!872 = !DILocation(line: 233, column: 2, scope: !873)
!873 = distinct !DILexicalBlock(scope: !580, file: !3, line: 233, column: 2)
!874 = !{!"499"}
!875 = !{!"500"}
!876 = !DILocalVariable(name: "a", scope: !873, file: !3, line: 233, type: !6)
!877 = !DILocation(line: 0, scope: !873)
!878 = !{!"501"}
!879 = !{!"502"}
!880 = !{!"503"}
!881 = !DILocalVariable(name: "b", scope: !873, file: !3, line: 233, type: !6)
!882 = !{!"504"}
!883 = !{!"505"}
!884 = !{!"506"}
!885 = !{!"507"}
!886 = !{!"508"}
!887 = !{!"509"}
!888 = !{!"510"}
!889 = !{!"511"}
!890 = !{!"512"}
!891 = !{!"513"}
!892 = !{!"514"}
!893 = !{!"515"}
!894 = !{!"516"}
!895 = !{!"517"}
!896 = !DILocation(line: 234, column: 1, scope: !580)
!897 = !{!"518"}
!898 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !3, file: !3, line: 238, type: !899, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !34, !34, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!903 = !DILocalVariable(name: "q0", arg: 1, scope: !898, file: !3, line: 238, type: !34)
!904 = !DILocation(line: 0, scope: !898)
!905 = !{!"519"}
!906 = !DILocalVariable(name: "q1", arg: 2, scope: !898, file: !3, line: 238, type: !34)
!907 = !{!"520"}
!908 = !DILocalVariable(name: "w", arg: 3, scope: !898, file: !3, line: 238, type: !901)
!909 = !{!"521"}
!910 = !DILocation(line: 242, column: 7, scope: !898)
!911 = !{!"522"}
!912 = !{!"523"}
!913 = !{!"524"}
!914 = !DILocalVariable(name: "x0", scope: !898, file: !3, line: 240, type: !6)
!915 = !{!"525"}
!916 = !DILocation(line: 243, column: 7, scope: !898)
!917 = !{!"526"}
!918 = !{!"527"}
!919 = !{!"528"}
!920 = !DILocalVariable(name: "x1", scope: !898, file: !3, line: 240, type: !6)
!921 = !{!"529"}
!922 = !DILocation(line: 244, column: 7, scope: !898)
!923 = !{!"530"}
!924 = !{!"531"}
!925 = !{!"532"}
!926 = !DILocalVariable(name: "x2", scope: !898, file: !3, line: 240, type: !6)
!927 = !{!"533"}
!928 = !DILocation(line: 245, column: 7, scope: !898)
!929 = !{!"534"}
!930 = !{!"535"}
!931 = !{!"536"}
!932 = !DILocalVariable(name: "x3", scope: !898, file: !3, line: 240, type: !6)
!933 = !{!"537"}
!934 = !DILocation(line: 246, column: 12, scope: !898)
!935 = !{!"538"}
!936 = !DILocation(line: 246, column: 5, scope: !898)
!937 = !{!"539"}
!938 = !{!"540"}
!939 = !DILocation(line: 247, column: 12, scope: !898)
!940 = !{!"541"}
!941 = !DILocation(line: 247, column: 5, scope: !898)
!942 = !{!"542"}
!943 = !{!"543"}
!944 = !DILocation(line: 248, column: 12, scope: !898)
!945 = !{!"544"}
!946 = !DILocation(line: 248, column: 5, scope: !898)
!947 = !{!"545"}
!948 = !{!"546"}
!949 = !DILocation(line: 249, column: 12, scope: !898)
!950 = !{!"547"}
!951 = !DILocation(line: 249, column: 5, scope: !898)
!952 = !{!"548"}
!953 = !{!"549"}
!954 = !DILocation(line: 250, column: 5, scope: !898)
!955 = !{!"550"}
!956 = !{!"551"}
!957 = !DILocation(line: 251, column: 5, scope: !898)
!958 = !{!"552"}
!959 = !{!"553"}
!960 = !DILocation(line: 252, column: 5, scope: !898)
!961 = !{!"554"}
!962 = !{!"555"}
!963 = !DILocation(line: 253, column: 5, scope: !898)
!964 = !{!"556"}
!965 = !{!"557"}
!966 = !DILocation(line: 254, column: 12, scope: !898)
!967 = !{!"558"}
!968 = !DILocation(line: 254, column: 5, scope: !898)
!969 = !{!"559"}
!970 = !{!"560"}
!971 = !DILocation(line: 255, column: 12, scope: !898)
!972 = !{!"561"}
!973 = !DILocation(line: 255, column: 5, scope: !898)
!974 = !{!"562"}
!975 = !{!"563"}
!976 = !DILocation(line: 256, column: 12, scope: !898)
!977 = !{!"564"}
!978 = !DILocation(line: 256, column: 5, scope: !898)
!979 = !{!"565"}
!980 = !{!"566"}
!981 = !DILocation(line: 257, column: 12, scope: !898)
!982 = !{!"567"}
!983 = !DILocation(line: 257, column: 5, scope: !898)
!984 = !{!"568"}
!985 = !{!"569"}
!986 = !DILocation(line: 258, column: 5, scope: !898)
!987 = !{!"570"}
!988 = !{!"571"}
!989 = !DILocation(line: 259, column: 5, scope: !898)
!990 = !{!"572"}
!991 = !{!"573"}
!992 = !DILocation(line: 260, column: 5, scope: !898)
!993 = !{!"574"}
!994 = !{!"575"}
!995 = !DILocation(line: 261, column: 5, scope: !898)
!996 = !{!"576"}
!997 = !{!"577"}
!998 = !DILocation(line: 262, column: 17, scope: !898)
!999 = !{!"578"}
!1000 = !DILocation(line: 262, column: 11, scope: !898)
!1001 = !{!"579"}
!1002 = !DILocation(line: 262, column: 6, scope: !898)
!1003 = !{!"580"}
!1004 = !DILocation(line: 263, column: 17, scope: !898)
!1005 = !{!"581"}
!1006 = !DILocation(line: 263, column: 11, scope: !898)
!1007 = !{!"582"}
!1008 = !DILocation(line: 263, column: 6, scope: !898)
!1009 = !{!"583"}
!1010 = !DILocation(line: 264, column: 1, scope: !898)
!1011 = !{!"584"}
!1012 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !3, file: !3, line: 268, type: !1013, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !1015, !6, !6}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1016 = !DILocalVariable(name: "w", arg: 1, scope: !1012, file: !3, line: 268, type: !1015)
!1017 = !DILocation(line: 0, scope: !1012)
!1018 = !{!"585"}
!1019 = !DILocalVariable(name: "q0", arg: 2, scope: !1012, file: !3, line: 268, type: !6)
!1020 = !{!"586"}
!1021 = !DILocalVariable(name: "q1", arg: 3, scope: !1012, file: !3, line: 268, type: !6)
!1022 = !{!"587"}
!1023 = !DILocation(line: 272, column: 10, scope: !1012)
!1024 = !{!"588"}
!1025 = !DILocalVariable(name: "x0", scope: !1012, file: !3, line: 270, type: !6)
!1026 = !{!"589"}
!1027 = !DILocation(line: 273, column: 10, scope: !1012)
!1028 = !{!"590"}
!1029 = !DILocalVariable(name: "x1", scope: !1012, file: !3, line: 270, type: !6)
!1030 = !{!"591"}
!1031 = !DILocation(line: 274, column: 11, scope: !1012)
!1032 = !{!"592"}
!1033 = !DILocation(line: 274, column: 17, scope: !1012)
!1034 = !{!"593"}
!1035 = !DILocalVariable(name: "x2", scope: !1012, file: !3, line: 270, type: !6)
!1036 = !{!"594"}
!1037 = !DILocation(line: 275, column: 11, scope: !1012)
!1038 = !{!"595"}
!1039 = !DILocation(line: 275, column: 17, scope: !1012)
!1040 = !{!"596"}
!1041 = !DILocalVariable(name: "x3", scope: !1012, file: !3, line: 270, type: !6)
!1042 = !{!"597"}
!1043 = !DILocation(line: 276, column: 12, scope: !1012)
!1044 = !{!"598"}
!1045 = !DILocation(line: 276, column: 5, scope: !1012)
!1046 = !{!"599"}
!1047 = !{!"600"}
!1048 = !DILocation(line: 277, column: 12, scope: !1012)
!1049 = !{!"601"}
!1050 = !DILocation(line: 277, column: 5, scope: !1012)
!1051 = !{!"602"}
!1052 = !{!"603"}
!1053 = !DILocation(line: 278, column: 12, scope: !1012)
!1054 = !{!"604"}
!1055 = !DILocation(line: 278, column: 5, scope: !1012)
!1056 = !{!"605"}
!1057 = !{!"606"}
!1058 = !DILocation(line: 279, column: 12, scope: !1012)
!1059 = !{!"607"}
!1060 = !DILocation(line: 279, column: 5, scope: !1012)
!1061 = !{!"608"}
!1062 = !{!"609"}
!1063 = !DILocation(line: 280, column: 5, scope: !1012)
!1064 = !{!"610"}
!1065 = !{!"611"}
!1066 = !DILocation(line: 281, column: 5, scope: !1012)
!1067 = !{!"612"}
!1068 = !{!"613"}
!1069 = !DILocation(line: 282, column: 5, scope: !1012)
!1070 = !{!"614"}
!1071 = !{!"615"}
!1072 = !DILocation(line: 283, column: 5, scope: !1012)
!1073 = !{!"616"}
!1074 = !{!"617"}
!1075 = !DILocation(line: 284, column: 9, scope: !1012)
!1076 = !{!"618"}
!1077 = !DILocation(line: 284, column: 38, scope: !1012)
!1078 = !{!"619"}
!1079 = !DILocation(line: 284, column: 24, scope: !1012)
!1080 = !{!"620"}
!1081 = !DILocation(line: 284, column: 22, scope: !1012)
!1082 = !{!"621"}
!1083 = !DILocation(line: 284, column: 2, scope: !1012)
!1084 = !{!"622"}
!1085 = !DILocation(line: 284, column: 7, scope: !1012)
!1086 = !{!"623"}
!1087 = !DILocation(line: 285, column: 9, scope: !1012)
!1088 = !{!"624"}
!1089 = !DILocation(line: 285, column: 38, scope: !1012)
!1090 = !{!"625"}
!1091 = !DILocation(line: 285, column: 24, scope: !1012)
!1092 = !{!"626"}
!1093 = !DILocation(line: 285, column: 22, scope: !1012)
!1094 = !{!"627"}
!1095 = !DILocation(line: 285, column: 2, scope: !1012)
!1096 = !{!"628"}
!1097 = !DILocation(line: 285, column: 7, scope: !1012)
!1098 = !{!"629"}
!1099 = !DILocation(line: 286, column: 9, scope: !1012)
!1100 = !{!"630"}
!1101 = !DILocation(line: 286, column: 38, scope: !1012)
!1102 = !{!"631"}
!1103 = !DILocation(line: 286, column: 24, scope: !1012)
!1104 = !{!"632"}
!1105 = !DILocation(line: 286, column: 22, scope: !1012)
!1106 = !{!"633"}
!1107 = !DILocation(line: 286, column: 2, scope: !1012)
!1108 = !{!"634"}
!1109 = !DILocation(line: 286, column: 7, scope: !1012)
!1110 = !{!"635"}
!1111 = !DILocation(line: 287, column: 9, scope: !1012)
!1112 = !{!"636"}
!1113 = !DILocation(line: 287, column: 38, scope: !1012)
!1114 = !{!"637"}
!1115 = !DILocation(line: 287, column: 24, scope: !1012)
!1116 = !{!"638"}
!1117 = !DILocation(line: 287, column: 22, scope: !1012)
!1118 = !{!"639"}
!1119 = !DILocation(line: 287, column: 2, scope: !1012)
!1120 = !{!"640"}
!1121 = !DILocation(line: 287, column: 7, scope: !1012)
!1122 = !{!"641"}
!1123 = !DILocation(line: 288, column: 1, scope: !1012)
!1124 = !{!"642"}
!1125 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !3, file: !3, line: 309, type: !1126, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!13, !34, !1128, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1131, line: 46, baseType: !10)
!1131 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!1132 = !{!"643"}
!1133 = !{!"644"}
!1134 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !1125, file: !3, line: 309, type: !34)
!1135 = !DILocation(line: 0, scope: !1125)
!1136 = !{!"645"}
!1137 = !DILocalVariable(name: "key", arg: 2, scope: !1125, file: !3, line: 309, type: !1128)
!1138 = !{!"646"}
!1139 = !DILocalVariable(name: "key_len", arg: 3, scope: !1125, file: !3, line: 309, type: !1130)
!1140 = !{!"647"}
!1141 = !DILocalVariable(name: "skey", scope: !1125, file: !3, line: 314, type: !1142)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1920, elements: !1143)
!1143 = !{!1144}
!1144 = !DISubrange(count: 60)
!1145 = !DILocation(line: 314, column: 11, scope: !1125)
!1146 = !{!"648"}
!1147 = !DILocation(line: 316, column: 2, scope: !1125)
!1148 = !{!"649"}
!1149 = !DILocalVariable(name: "num_rounds", scope: !1125, file: !3, line: 311, type: !13)
!1150 = !{!"650"}
!1151 = !DILocation(line: 319, column: 3, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 316, column: 19)
!1153 = !{!"651"}
!1154 = !{!"652"}
!1155 = !DILocation(line: 322, column: 3, scope: !1152)
!1156 = !{!"653"}
!1157 = !{!"654"}
!1158 = !DILocation(line: 325, column: 3, scope: !1152)
!1159 = !{!"655"}
!1160 = !DILocation(line: 328, column: 3, scope: !1152)
!1161 = !{!"656"}
!1162 = !DILocation(line: 0, scope: !1152)
!1163 = !{!"657"}
!1164 = !{!"658"}
!1165 = !DILocation(line: 330, column: 21, scope: !1125)
!1166 = !{!"659"}
!1167 = !DILocation(line: 330, column: 7, scope: !1125)
!1168 = !{!"660"}
!1169 = !DILocalVariable(name: "nk", scope: !1125, file: !3, line: 312, type: !14)
!1170 = !{!"661"}
!1171 = !DILocation(line: 331, column: 26, scope: !1125)
!1172 = !{!"662"}
!1173 = !DILocation(line: 331, column: 31, scope: !1125)
!1174 = !{!"663"}
!1175 = !DILocalVariable(name: "nkf", scope: !1125, file: !3, line: 312, type: !14)
!1176 = !{!"664"}
!1177 = !DILocation(line: 332, column: 19, scope: !1125)
!1178 = !{!"665"}
!1179 = !DILocation(line: 332, column: 34, scope: !1125)
!1180 = !{!"666"}
!1181 = !DILocation(line: 332, column: 2, scope: !1125)
!1182 = !{!"667"}
!1183 = !DILocation(line: 333, column: 22, scope: !1125)
!1184 = !{!"668"}
!1185 = !DILocation(line: 333, column: 28, scope: !1125)
!1186 = !{!"669"}
!1187 = !DILocation(line: 333, column: 8, scope: !1125)
!1188 = !{!"670"}
!1189 = !{!"671"}
!1190 = !DILocalVariable(name: "tmp", scope: !1125, file: !3, line: 313, type: !11)
!1191 = !{!"672"}
!1192 = !DILocalVariable(name: "i", scope: !1125, file: !3, line: 312, type: !14)
!1193 = !{!"673"}
!1194 = !DILocalVariable(name: "j", scope: !1125, file: !3, line: 312, type: !14)
!1195 = !{!"674"}
!1196 = !DILocalVariable(name: "k", scope: !1125, file: !3, line: 312, type: !14)
!1197 = !{!"675"}
!1198 = !DILocation(line: 334, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 334, column: 2)
!1200 = !{!"676"}
!1201 = !DILocation(line: 0, scope: !1199)
!1202 = !{!"677"}
!1203 = !{!"678"}
!1204 = !{!"679"}
!1205 = !{!"680"}
!1206 = !{!"681"}
!1207 = !{!"682"}
!1208 = !{!"683"}
!1209 = !{!"684"}
!1210 = !DILocation(line: 334, column: 31, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 334, column: 2)
!1212 = !{!"685"}
!1213 = !DILocation(line: 334, column: 2, scope: !1199)
!1214 = !{!"686"}
!1215 = !DILocation(line: 335, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 335, column: 7)
!1217 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 334, column: 44)
!1218 = !{!"687"}
!1219 = !DILocation(line: 335, column: 7, scope: !1217)
!1220 = !{!"688"}
!1221 = !DILocation(line: 336, column: 15, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 335, column: 15)
!1223 = !{!"689"}
!1224 = !DILocation(line: 336, column: 29, scope: !1222)
!1225 = !{!"690"}
!1226 = !DILocation(line: 336, column: 22, scope: !1222)
!1227 = !{!"691"}
!1228 = !{!"692"}
!1229 = !DILocation(line: 337, column: 10, scope: !1222)
!1230 = !{!"693"}
!1231 = !DILocation(line: 337, column: 26, scope: !1222)
!1232 = !{!"694"}
!1233 = !{!"695"}
!1234 = !{!"696"}
!1235 = !{!"697"}
!1236 = !DILocation(line: 337, column: 24, scope: !1222)
!1237 = !{!"698"}
!1238 = !{!"699"}
!1239 = !DILocation(line: 338, column: 3, scope: !1222)
!1240 = !{!"700"}
!1241 = !DILocation(line: 338, column: 17, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 338, column: 14)
!1243 = !{!"701"}
!1244 = !DILocation(line: 338, column: 21, scope: !1242)
!1245 = !{!"702"}
!1246 = !DILocation(line: 338, column: 26, scope: !1242)
!1247 = !{!"703"}
!1248 = !DILocation(line: 338, column: 14, scope: !1216)
!1249 = !{!"704"}
!1250 = !DILocation(line: 339, column: 10, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 338, column: 32)
!1252 = !{!"705"}
!1253 = !{!"706"}
!1254 = !DILocation(line: 340, column: 3, scope: !1251)
!1255 = !{!"707"}
!1256 = !{!"708"}
!1257 = !{!"709"}
!1258 = !{!"710"}
!1259 = !DILocation(line: 0, scope: !1216)
!1260 = !{!"711"}
!1261 = !{!"712"}
!1262 = !DILocation(line: 341, column: 17, scope: !1217)
!1263 = !{!"713"}
!1264 = !DILocation(line: 341, column: 10, scope: !1217)
!1265 = !{!"714"}
!1266 = !{!"715"}
!1267 = !{!"716"}
!1268 = !DILocation(line: 341, column: 7, scope: !1217)
!1269 = !{!"717"}
!1270 = !{!"718"}
!1271 = !DILocation(line: 342, column: 3, scope: !1217)
!1272 = !{!"719"}
!1273 = !{!"720"}
!1274 = !DILocation(line: 342, column: 11, scope: !1217)
!1275 = !{!"721"}
!1276 = !DILocation(line: 343, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 343, column: 7)
!1278 = !{!"722"}
!1279 = !{!"723"}
!1280 = !DILocation(line: 343, column: 12, scope: !1277)
!1281 = !{!"724"}
!1282 = !DILocation(line: 343, column: 7, scope: !1217)
!1283 = !{!"725"}
!1284 = !{!"726"}
!1285 = !DILocation(line: 345, column: 6, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 343, column: 19)
!1287 = !{!"727"}
!1288 = !{!"728"}
!1289 = !DILocation(line: 346, column: 3, scope: !1286)
!1290 = !{!"729"}
!1291 = !DILocation(line: 0, scope: !1277)
!1292 = !{!"730"}
!1293 = !{!"731"}
!1294 = !{!"732"}
!1295 = !{!"733"}
!1296 = !DILocation(line: 347, column: 2, scope: !1217)
!1297 = !{!"734"}
!1298 = !DILocation(line: 334, column: 40, scope: !1211)
!1299 = !{!"735"}
!1300 = !{!"736"}
!1301 = !DILocation(line: 334, column: 2, scope: !1211)
!1302 = distinct !{!1302, !1213, !1303, !1304}
!1303 = !DILocation(line: 347, column: 2, scope: !1199)
!1304 = !{!"llvm.loop.mustprogress"}
!1305 = !{!"737"}
!1306 = !{!"738"}
!1307 = !{!"739"}
!1308 = !DILocation(line: 349, column: 7, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 349, column: 2)
!1310 = !{!"740"}
!1311 = !DILocation(line: 0, scope: !1309)
!1312 = !{!"741"}
!1313 = !{!"742"}
!1314 = !{!"743"}
!1315 = !{!"744"}
!1316 = !DILocation(line: 349, column: 23, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 349, column: 2)
!1318 = !{!"745"}
!1319 = !DILocation(line: 349, column: 2, scope: !1309)
!1320 = !{!"746"}
!1321 = !DILocalVariable(name: "q", scope: !1322, file: !3, line: 350, type: !1323)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 349, column: 46)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !1324)
!1324 = !{!1325}
!1325 = !DISubrange(count: 8)
!1326 = !DILocation(line: 350, column: 12, scope: !1322)
!1327 = !{!"747"}
!1328 = !DILocation(line: 352, column: 30, scope: !1322)
!1329 = !{!"748"}
!1330 = !DILocation(line: 352, column: 37, scope: !1322)
!1331 = !{!"749"}
!1332 = !DILocation(line: 352, column: 43, scope: !1322)
!1333 = !{!"750"}
!1334 = !DILocation(line: 352, column: 48, scope: !1322)
!1335 = !{!"751"}
!1336 = !{!"752"}
!1337 = !DILocation(line: 352, column: 3, scope: !1322)
!1338 = !{!"753"}
!1339 = !DILocation(line: 353, column: 10, scope: !1322)
!1340 = !{!"754"}
!1341 = !{!"755"}
!1342 = !DILocation(line: 353, column: 3, scope: !1322)
!1343 = !{!"756"}
!1344 = !DILocation(line: 353, column: 8, scope: !1322)
!1345 = !{!"757"}
!1346 = !DILocation(line: 354, column: 10, scope: !1322)
!1347 = !{!"758"}
!1348 = !{!"759"}
!1349 = !DILocation(line: 354, column: 3, scope: !1322)
!1350 = !{!"760"}
!1351 = !DILocation(line: 354, column: 8, scope: !1322)
!1352 = !{!"761"}
!1353 = !DILocation(line: 355, column: 10, scope: !1322)
!1354 = !{!"762"}
!1355 = !{!"763"}
!1356 = !DILocation(line: 355, column: 3, scope: !1322)
!1357 = !{!"764"}
!1358 = !DILocation(line: 355, column: 8, scope: !1322)
!1359 = !{!"765"}
!1360 = !DILocation(line: 356, column: 10, scope: !1322)
!1361 = !{!"766"}
!1362 = !{!"767"}
!1363 = !DILocation(line: 356, column: 3, scope: !1322)
!1364 = !{!"768"}
!1365 = !DILocation(line: 356, column: 8, scope: !1322)
!1366 = !{!"769"}
!1367 = !DILocation(line: 357, column: 10, scope: !1322)
!1368 = !{!"770"}
!1369 = !{!"771"}
!1370 = !DILocation(line: 357, column: 3, scope: !1322)
!1371 = !{!"772"}
!1372 = !DILocation(line: 357, column: 8, scope: !1322)
!1373 = !{!"773"}
!1374 = !DILocation(line: 358, column: 10, scope: !1322)
!1375 = !{!"774"}
!1376 = !{!"775"}
!1377 = !DILocation(line: 358, column: 3, scope: !1322)
!1378 = !{!"776"}
!1379 = !DILocation(line: 358, column: 8, scope: !1322)
!1380 = !{!"777"}
!1381 = !DILocation(line: 359, column: 21, scope: !1322)
!1382 = !{!"778"}
!1383 = !DILocation(line: 359, column: 3, scope: !1322)
!1384 = !{!"779"}
!1385 = !DILocation(line: 361, column: 7, scope: !1322)
!1386 = !{!"780"}
!1387 = !{!"781"}
!1388 = !DILocation(line: 361, column: 12, scope: !1322)
!1389 = !{!"782"}
!1390 = !DILocation(line: 362, column: 7, scope: !1322)
!1391 = !{!"783"}
!1392 = !{!"784"}
!1393 = !DILocation(line: 362, column: 12, scope: !1322)
!1394 = !{!"785"}
!1395 = !DILocation(line: 362, column: 4, scope: !1322)
!1396 = !{!"786"}
!1397 = !DILocation(line: 363, column: 7, scope: !1322)
!1398 = !{!"787"}
!1399 = !{!"788"}
!1400 = !DILocation(line: 363, column: 12, scope: !1322)
!1401 = !{!"789"}
!1402 = !DILocation(line: 363, column: 4, scope: !1322)
!1403 = !{!"790"}
!1404 = !DILocation(line: 364, column: 7, scope: !1322)
!1405 = !{!"791"}
!1406 = !{!"792"}
!1407 = !DILocation(line: 364, column: 12, scope: !1322)
!1408 = !{!"793"}
!1409 = !DILocation(line: 364, column: 4, scope: !1322)
!1410 = !{!"794"}
!1411 = !DILocation(line: 360, column: 15, scope: !1322)
!1412 = !{!"795"}
!1413 = !DILocation(line: 360, column: 3, scope: !1322)
!1414 = !{!"796"}
!1415 = !{!"797"}
!1416 = !DILocation(line: 360, column: 20, scope: !1322)
!1417 = !{!"798"}
!1418 = !DILocation(line: 366, column: 7, scope: !1322)
!1419 = !{!"799"}
!1420 = !{!"800"}
!1421 = !DILocation(line: 366, column: 12, scope: !1322)
!1422 = !{!"801"}
!1423 = !DILocation(line: 367, column: 7, scope: !1322)
!1424 = !{!"802"}
!1425 = !{!"803"}
!1426 = !DILocation(line: 367, column: 12, scope: !1322)
!1427 = !{!"804"}
!1428 = !DILocation(line: 367, column: 4, scope: !1322)
!1429 = !{!"805"}
!1430 = !DILocation(line: 368, column: 7, scope: !1322)
!1431 = !{!"806"}
!1432 = !{!"807"}
!1433 = !DILocation(line: 368, column: 12, scope: !1322)
!1434 = !{!"808"}
!1435 = !DILocation(line: 368, column: 4, scope: !1322)
!1436 = !{!"809"}
!1437 = !DILocation(line: 369, column: 7, scope: !1322)
!1438 = !{!"810"}
!1439 = !{!"811"}
!1440 = !DILocation(line: 369, column: 12, scope: !1322)
!1441 = !{!"812"}
!1442 = !DILocation(line: 369, column: 4, scope: !1322)
!1443 = !{!"813"}
!1444 = !DILocation(line: 365, column: 15, scope: !1322)
!1445 = !{!"814"}
!1446 = !DILocation(line: 365, column: 3, scope: !1322)
!1447 = !{!"815"}
!1448 = !{!"816"}
!1449 = !DILocation(line: 365, column: 20, scope: !1322)
!1450 = !{!"817"}
!1451 = !DILocation(line: 370, column: 2, scope: !1322)
!1452 = !{!"818"}
!1453 = !DILocation(line: 349, column: 32, scope: !1317)
!1454 = !{!"819"}
!1455 = !{!"820"}
!1456 = !DILocation(line: 349, column: 40, scope: !1317)
!1457 = !{!"821"}
!1458 = !{!"822"}
!1459 = !DILocation(line: 349, column: 2, scope: !1317)
!1460 = distinct !{!1460, !1319, !1461, !1304}
!1461 = !DILocation(line: 370, column: 2, scope: !1309)
!1462 = !{!"823"}
!1463 = !DILocation(line: 371, column: 2, scope: !1125)
!1464 = !{!"824"}
!1465 = !{!"825"}
!1466 = !DILocation(line: 372, column: 1, scope: !1125)
!1467 = !{!"826"}
!1468 = distinct !DISubprogram(name: "sub_word", scope: !3, file: !3, line: 295, type: !1469, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!11, !11}
!1471 = !{!"827"}
!1472 = !DILocalVariable(name: "x", arg: 1, scope: !1468, file: !3, line: 295, type: !11)
!1473 = !DILocation(line: 0, scope: !1468)
!1474 = !{!"828"}
!1475 = !DILocalVariable(name: "q", scope: !1468, file: !3, line: 297, type: !1323)
!1476 = !DILocation(line: 297, column: 11, scope: !1468)
!1477 = !{!"829"}
!1478 = !DILocation(line: 299, column: 2, scope: !1468)
!1479 = !{!"830"}
!1480 = !{!"831"}
!1481 = !{!"832"}
!1482 = !DILocation(line: 300, column: 9, scope: !1468)
!1483 = !{!"833"}
!1484 = !DILocation(line: 300, column: 2, scope: !1468)
!1485 = !{!"834"}
!1486 = !DILocation(line: 300, column: 7, scope: !1468)
!1487 = !{!"835"}
!1488 = !DILocation(line: 301, column: 20, scope: !1468)
!1489 = !{!"836"}
!1490 = !DILocation(line: 301, column: 2, scope: !1468)
!1491 = !{!"837"}
!1492 = !DILocation(line: 302, column: 28, scope: !1468)
!1493 = !{!"838"}
!1494 = !DILocation(line: 302, column: 2, scope: !1468)
!1495 = !{!"839"}
!1496 = !DILocation(line: 303, column: 20, scope: !1468)
!1497 = !{!"840"}
!1498 = !DILocation(line: 303, column: 2, scope: !1468)
!1499 = !{!"841"}
!1500 = !DILocation(line: 304, column: 19, scope: !1468)
!1501 = !{!"842"}
!1502 = !{!"843"}
!1503 = !DILocation(line: 304, column: 9, scope: !1468)
!1504 = !{!"844"}
!1505 = !DILocation(line: 304, column: 2, scope: !1468)
!1506 = !{!"845"}
!1507 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !3, file: !3, line: 376, type: !1508, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !34, !13, !1510}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1512 = !DILocalVariable(name: "skey", arg: 1, scope: !1507, file: !3, line: 376, type: !34)
!1513 = !DILocation(line: 0, scope: !1507)
!1514 = !{!"846"}
!1515 = !DILocalVariable(name: "num_rounds", arg: 2, scope: !1507, file: !3, line: 377, type: !13)
!1516 = !{!"847"}
!1517 = !DILocalVariable(name: "comp_skey", arg: 3, scope: !1507, file: !3, line: 377, type: !1510)
!1518 = !{!"848"}
!1519 = !DILocation(line: 381, column: 18, scope: !1507)
!1520 = !{!"849"}
!1521 = !DILocation(line: 381, column: 23, scope: !1507)
!1522 = !{!"850"}
!1523 = !DILocalVariable(name: "n", scope: !1507, file: !3, line: 379, type: !13)
!1524 = !{!"851"}
!1525 = !DILocalVariable(name: "u", scope: !1507, file: !3, line: 379, type: !13)
!1526 = !{!"852"}
!1527 = !DILocalVariable(name: "v", scope: !1507, file: !3, line: 379, type: !13)
!1528 = !{!"853"}
!1529 = !DILocation(line: 382, column: 7, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 382, column: 2)
!1531 = !{!"854"}
!1532 = !DILocation(line: 0, scope: !1530)
!1533 = !{!"855"}
!1534 = !{!"856"}
!1535 = !{!"857"}
!1536 = !{!"858"}
!1537 = !DILocation(line: 382, column: 23, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 382, column: 2)
!1539 = !{!"859"}
!1540 = !DILocation(line: 382, column: 2, scope: !1530)
!1541 = !{!"860"}
!1542 = !DILocation(line: 385, column: 23, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 382, column: 42)
!1544 = !{!"861"}
!1545 = !{!"862"}
!1546 = !{!"863"}
!1547 = !DILocalVariable(name: "x3", scope: !1543, file: !3, line: 383, type: !6)
!1548 = !DILocation(line: 0, scope: !1543)
!1549 = !{!"864"}
!1550 = !DILocalVariable(name: "x2", scope: !1543, file: !3, line: 383, type: !6)
!1551 = !{!"865"}
!1552 = !DILocalVariable(name: "x1", scope: !1543, file: !3, line: 383, type: !6)
!1553 = !{!"866"}
!1554 = !DILocalVariable(name: "x0", scope: !1543, file: !3, line: 383, type: !6)
!1555 = !{!"867"}
!1556 = !DILocation(line: 386, column: 6, scope: !1543)
!1557 = !{!"868"}
!1558 = !{!"869"}
!1559 = !DILocation(line: 387, column: 6, scope: !1543)
!1560 = !{!"870"}
!1561 = !{!"871"}
!1562 = !DILocation(line: 388, column: 6, scope: !1543)
!1563 = !{!"872"}
!1564 = !{!"873"}
!1565 = !DILocation(line: 389, column: 6, scope: !1543)
!1566 = !{!"874"}
!1567 = !{!"875"}
!1568 = !DILocation(line: 390, column: 6, scope: !1543)
!1569 = !{!"876"}
!1570 = !{!"877"}
!1571 = !DILocation(line: 391, column: 6, scope: !1543)
!1572 = !{!"878"}
!1573 = !{!"879"}
!1574 = !DILocation(line: 392, column: 6, scope: !1543)
!1575 = !{!"880"}
!1576 = !{!"881"}
!1577 = !DILocation(line: 393, column: 21, scope: !1543)
!1578 = !{!"882"}
!1579 = !DILocation(line: 393, column: 27, scope: !1543)
!1580 = !{!"883"}
!1581 = !DILocation(line: 393, column: 10, scope: !1543)
!1582 = !{!"884"}
!1583 = !DILocation(line: 393, column: 3, scope: !1543)
!1584 = !{!"885"}
!1585 = !{!"886"}
!1586 = !DILocation(line: 393, column: 15, scope: !1543)
!1587 = !{!"887"}
!1588 = !DILocation(line: 394, column: 21, scope: !1543)
!1589 = !{!"888"}
!1590 = !DILocation(line: 394, column: 27, scope: !1543)
!1591 = !{!"889"}
!1592 = !DILocation(line: 394, column: 10, scope: !1543)
!1593 = !{!"890"}
!1594 = !DILocation(line: 394, column: 3, scope: !1543)
!1595 = !{!"891"}
!1596 = !{!"892"}
!1597 = !DILocation(line: 394, column: 15, scope: !1543)
!1598 = !{!"893"}
!1599 = !DILocation(line: 395, column: 21, scope: !1543)
!1600 = !{!"894"}
!1601 = !DILocation(line: 395, column: 27, scope: !1543)
!1602 = !{!"895"}
!1603 = !DILocation(line: 395, column: 10, scope: !1543)
!1604 = !{!"896"}
!1605 = !DILocation(line: 395, column: 3, scope: !1543)
!1606 = !{!"897"}
!1607 = !{!"898"}
!1608 = !DILocation(line: 395, column: 15, scope: !1543)
!1609 = !{!"899"}
!1610 = !DILocation(line: 396, column: 21, scope: !1543)
!1611 = !{!"900"}
!1612 = !DILocation(line: 396, column: 27, scope: !1543)
!1613 = !{!"901"}
!1614 = !DILocation(line: 396, column: 10, scope: !1543)
!1615 = !{!"902"}
!1616 = !DILocation(line: 396, column: 3, scope: !1543)
!1617 = !{!"903"}
!1618 = !{!"904"}
!1619 = !DILocation(line: 396, column: 15, scope: !1543)
!1620 = !{!"905"}
!1621 = !DILocation(line: 397, column: 2, scope: !1543)
!1622 = !{!"906"}
!1623 = !DILocation(line: 382, column: 30, scope: !1538)
!1624 = !{!"907"}
!1625 = !{!"908"}
!1626 = !DILocation(line: 382, column: 36, scope: !1538)
!1627 = !{!"909"}
!1628 = !{!"910"}
!1629 = !DILocation(line: 382, column: 2, scope: !1538)
!1630 = distinct !{!1630, !1540, !1631, !1304}
!1631 = !DILocation(line: 397, column: 2, scope: !1530)
!1632 = !{!"911"}
!1633 = !DILocation(line: 398, column: 1, scope: !1507)
!1634 = !{!"912"}
!1635 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_encrypt", scope: !23, file: !23, line: 100, type: !1636, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !4)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !13, !1510, !34}
!1638 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !1635, file: !23, line: 100, type: !13)
!1639 = !DILocation(line: 0, scope: !1635)
!1640 = !{!"913"}
!1641 = !DILocalVariable(name: "skey", arg: 2, scope: !1635, file: !23, line: 101, type: !1510)
!1642 = !{!"914"}
!1643 = !DILocalVariable(name: "q", arg: 3, scope: !1635, file: !23, line: 101, type: !34)
!1644 = !{!"915"}
!1645 = !DILocation(line: 105, column: 2, scope: !1635)
!1646 = !{!"916"}
!1647 = !DILocalVariable(name: "u", scope: !1635, file: !23, line: 103, type: !13)
!1648 = !{!"917"}
!1649 = !DILocation(line: 106, column: 7, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1635, file: !23, line: 106, column: 2)
!1651 = !{!"918"}
!1652 = !DILocation(line: 0, scope: !1650)
!1653 = !{!"919"}
!1654 = !{!"920"}
!1655 = !DILocation(line: 106, column: 16, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1650, file: !23, line: 106, column: 2)
!1657 = !{!"921"}
!1658 = !DILocation(line: 106, column: 2, scope: !1650)
!1659 = !{!"922"}
!1660 = !DILocation(line: 107, column: 3, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !23, line: 106, column: 36)
!1662 = !{!"923"}
!1663 = !DILocation(line: 108, column: 3, scope: !1661)
!1664 = !{!"924"}
!1665 = !DILocation(line: 109, column: 3, scope: !1661)
!1666 = !{!"925"}
!1667 = !DILocation(line: 110, column: 30, scope: !1661)
!1668 = !{!"926"}
!1669 = !DILocation(line: 110, column: 25, scope: !1661)
!1670 = !{!"927"}
!1671 = !{!"928"}
!1672 = !{!"PointTainted"}
!1673 = !DILocation(line: 110, column: 3, scope: !1661)
!1674 = !{!"929"}
!1675 = !DILocation(line: 111, column: 2, scope: !1661)
!1676 = !{!"930"}
!1677 = !DILocation(line: 106, column: 32, scope: !1656)
!1678 = !{!"931"}
!1679 = !{!"932"}
!1680 = !DILocation(line: 106, column: 2, scope: !1656)
!1681 = distinct !{!1681, !1658, !1682, !1304}
!1682 = !DILocation(line: 111, column: 2, scope: !1650)
!1683 = !{!"933"}
!1684 = !DILocation(line: 112, column: 2, scope: !1635)
!1685 = !{!"934"}
!1686 = !DILocation(line: 113, column: 2, scope: !1635)
!1687 = !{!"935"}
!1688 = !DILocation(line: 114, column: 38, scope: !1635)
!1689 = !{!"936"}
!1690 = !DILocation(line: 114, column: 24, scope: !1635)
!1691 = !{!"937"}
!1692 = !{!"938"}
!1693 = !DILocation(line: 114, column: 2, scope: !1635)
!1694 = !{!"939"}
!1695 = !DILocation(line: 115, column: 1, scope: !1635)
!1696 = !{!"940"}
!1697 = distinct !DISubprogram(name: "add_round_key", scope: !23, file: !23, line: 28, type: !1698, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !4)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !34, !1510}
!1700 = !DILocalVariable(name: "q", arg: 1, scope: !1697, file: !23, line: 28, type: !34)
!1701 = !DILocation(line: 0, scope: !1697)
!1702 = !{!"941"}
!1703 = !DILocalVariable(name: "sk", arg: 2, scope: !1697, file: !23, line: 28, type: !1510)
!1704 = !{!"942"}
!1705 = !DILocation(line: 30, column: 10, scope: !1697)
!1706 = !{!"943"}
!1707 = !{!"944"}
!1708 = !{!"ValueTainted"}
!1709 = !DILocation(line: 30, column: 2, scope: !1697)
!1710 = !{!"945"}
!1711 = !DILocation(line: 30, column: 7, scope: !1697)
!1712 = !{!"946"}
!1713 = !{!"947"}
!1714 = !{!"948"}
!1715 = !DILocation(line: 31, column: 10, scope: !1697)
!1716 = !{!"949"}
!1717 = !{!"950"}
!1718 = !DILocation(line: 31, column: 2, scope: !1697)
!1719 = !{!"951"}
!1720 = !DILocation(line: 31, column: 7, scope: !1697)
!1721 = !{!"952"}
!1722 = !{!"953"}
!1723 = !{!"954"}
!1724 = !DILocation(line: 32, column: 10, scope: !1697)
!1725 = !{!"955"}
!1726 = !{!"956"}
!1727 = !DILocation(line: 32, column: 2, scope: !1697)
!1728 = !{!"957"}
!1729 = !DILocation(line: 32, column: 7, scope: !1697)
!1730 = !{!"958"}
!1731 = !{!"959"}
!1732 = !{!"960"}
!1733 = !DILocation(line: 33, column: 10, scope: !1697)
!1734 = !{!"961"}
!1735 = !{!"962"}
!1736 = !DILocation(line: 33, column: 2, scope: !1697)
!1737 = !{!"963"}
!1738 = !DILocation(line: 33, column: 7, scope: !1697)
!1739 = !{!"964"}
!1740 = !{!"965"}
!1741 = !{!"966"}
!1742 = !DILocation(line: 34, column: 10, scope: !1697)
!1743 = !{!"967"}
!1744 = !{!"968"}
!1745 = !DILocation(line: 34, column: 2, scope: !1697)
!1746 = !{!"969"}
!1747 = !DILocation(line: 34, column: 7, scope: !1697)
!1748 = !{!"970"}
!1749 = !{!"971"}
!1750 = !{!"972"}
!1751 = !DILocation(line: 35, column: 10, scope: !1697)
!1752 = !{!"973"}
!1753 = !{!"974"}
!1754 = !DILocation(line: 35, column: 2, scope: !1697)
!1755 = !{!"975"}
!1756 = !DILocation(line: 35, column: 7, scope: !1697)
!1757 = !{!"976"}
!1758 = !{!"977"}
!1759 = !{!"978"}
!1760 = !DILocation(line: 36, column: 10, scope: !1697)
!1761 = !{!"979"}
!1762 = !{!"980"}
!1763 = !DILocation(line: 36, column: 2, scope: !1697)
!1764 = !{!"981"}
!1765 = !DILocation(line: 36, column: 7, scope: !1697)
!1766 = !{!"982"}
!1767 = !{!"983"}
!1768 = !{!"984"}
!1769 = !DILocation(line: 37, column: 10, scope: !1697)
!1770 = !{!"985"}
!1771 = !{!"986"}
!1772 = !DILocation(line: 37, column: 2, scope: !1697)
!1773 = !{!"987"}
!1774 = !DILocation(line: 37, column: 7, scope: !1697)
!1775 = !{!"988"}
!1776 = !{!"989"}
!1777 = !{!"990"}
!1778 = !DILocation(line: 38, column: 1, scope: !1697)
!1779 = !{!"991"}
!1780 = distinct !DISubprogram(name: "shift_rows", scope: !23, file: !23, line: 41, type: !32, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !4)
!1781 = !DILocalVariable(name: "q", arg: 1, scope: !1780, file: !23, line: 41, type: !34)
!1782 = !DILocation(line: 0, scope: !1780)
!1783 = !{!"992"}
!1784 = !DILocalVariable(name: "i", scope: !1780, file: !23, line: 43, type: !14)
!1785 = !{!"993"}
!1786 = !DILocation(line: 45, column: 7, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1780, file: !23, line: 45, column: 2)
!1788 = !{!"994"}
!1789 = !DILocation(line: 0, scope: !1787)
!1790 = !{!"995"}
!1791 = !{!"996"}
!1792 = !DILocation(line: 45, column: 16, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1787, file: !23, line: 45, column: 2)
!1794 = !{!"997"}
!1795 = !DILocation(line: 45, column: 2, scope: !1787)
!1796 = !{!"998"}
!1797 = !DILocation(line: 48, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1793, file: !23, line: 45, column: 27)
!1799 = !{!"999"}
!1800 = !{!"1000"}
!1801 = !{!"1001"}
!1802 = !DILocalVariable(name: "x", scope: !1798, file: !23, line: 46, type: !6)
!1803 = !DILocation(line: 0, scope: !1798)
!1804 = !{!"1002"}
!1805 = !DILocation(line: 49, column: 13, scope: !1798)
!1806 = !{!"1003"}
!1807 = !DILocation(line: 50, column: 10, scope: !1798)
!1808 = !{!"1004"}
!1809 = !DILocation(line: 50, column: 42, scope: !1798)
!1810 = !{!"1005"}
!1811 = !DILocation(line: 50, column: 4, scope: !1798)
!1812 = !{!"1006"}
!1813 = !DILocation(line: 51, column: 10, scope: !1798)
!1814 = !{!"1007"}
!1815 = !DILocation(line: 51, column: 42, scope: !1798)
!1816 = !{!"1008"}
!1817 = !DILocation(line: 51, column: 4, scope: !1798)
!1818 = !{!"1009"}
!1819 = !DILocation(line: 52, column: 10, scope: !1798)
!1820 = !{!"1010"}
!1821 = !DILocation(line: 52, column: 42, scope: !1798)
!1822 = !{!"1011"}
!1823 = !DILocation(line: 52, column: 4, scope: !1798)
!1824 = !{!"1012"}
!1825 = !DILocation(line: 53, column: 10, scope: !1798)
!1826 = !{!"1013"}
!1827 = !DILocation(line: 53, column: 42, scope: !1798)
!1828 = !{!"1014"}
!1829 = !DILocation(line: 53, column: 4, scope: !1798)
!1830 = !{!"1015"}
!1831 = !DILocation(line: 54, column: 10, scope: !1798)
!1832 = !{!"1016"}
!1833 = !DILocation(line: 54, column: 42, scope: !1798)
!1834 = !{!"1017"}
!1835 = !DILocation(line: 54, column: 4, scope: !1798)
!1836 = !{!"1018"}
!1837 = !DILocation(line: 55, column: 10, scope: !1798)
!1838 = !{!"1019"}
!1839 = !DILocation(line: 55, column: 42, scope: !1798)
!1840 = !{!"1020"}
!1841 = !DILocation(line: 55, column: 4, scope: !1798)
!1842 = !{!"1021"}
!1843 = !DILocation(line: 49, column: 3, scope: !1798)
!1844 = !{!"1022"}
!1845 = !{!"1023"}
!1846 = !DILocation(line: 49, column: 8, scope: !1798)
!1847 = !{!"1024"}
!1848 = !DILocation(line: 56, column: 2, scope: !1798)
!1849 = !{!"1025"}
!1850 = !DILocation(line: 45, column: 23, scope: !1793)
!1851 = !{!"1026"}
!1852 = !{!"1027"}
!1853 = !DILocation(line: 45, column: 2, scope: !1793)
!1854 = distinct !{!1854, !1795, !1855, !1304}
!1855 = !DILocation(line: 56, column: 2, scope: !1787)
!1856 = !{!"1028"}
!1857 = !DILocation(line: 57, column: 1, scope: !1780)
!1858 = !{!"1029"}
!1859 = distinct !DISubprogram(name: "mix_columns", scope: !23, file: !23, line: 66, type: !32, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !4)
!1860 = !DILocalVariable(name: "q", arg: 1, scope: !1859, file: !23, line: 66, type: !34)
!1861 = !DILocation(line: 0, scope: !1859)
!1862 = !{!"1030"}
!1863 = !DILocation(line: 71, column: 7, scope: !1859)
!1864 = !{!"1031"}
!1865 = !{!"1032"}
!1866 = !DILocalVariable(name: "q0", scope: !1859, file: !23, line: 68, type: !6)
!1867 = !{!"1033"}
!1868 = !DILocation(line: 72, column: 7, scope: !1859)
!1869 = !{!"1034"}
!1870 = !{!"1035"}
!1871 = !DILocalVariable(name: "q1", scope: !1859, file: !23, line: 68, type: !6)
!1872 = !{!"1036"}
!1873 = !DILocation(line: 73, column: 7, scope: !1859)
!1874 = !{!"1037"}
!1875 = !{!"1038"}
!1876 = !DILocalVariable(name: "q2", scope: !1859, file: !23, line: 68, type: !6)
!1877 = !{!"1039"}
!1878 = !DILocation(line: 74, column: 7, scope: !1859)
!1879 = !{!"1040"}
!1880 = !{!"1041"}
!1881 = !DILocalVariable(name: "q3", scope: !1859, file: !23, line: 68, type: !6)
!1882 = !{!"1042"}
!1883 = !DILocation(line: 75, column: 7, scope: !1859)
!1884 = !{!"1043"}
!1885 = !{!"1044"}
!1886 = !DILocalVariable(name: "q4", scope: !1859, file: !23, line: 68, type: !6)
!1887 = !{!"1045"}
!1888 = !DILocation(line: 76, column: 7, scope: !1859)
!1889 = !{!"1046"}
!1890 = !{!"1047"}
!1891 = !DILocalVariable(name: "q5", scope: !1859, file: !23, line: 68, type: !6)
!1892 = !{!"1048"}
!1893 = !DILocation(line: 77, column: 7, scope: !1859)
!1894 = !{!"1049"}
!1895 = !{!"1050"}
!1896 = !DILocalVariable(name: "q6", scope: !1859, file: !23, line: 68, type: !6)
!1897 = !{!"1051"}
!1898 = !DILocation(line: 78, column: 7, scope: !1859)
!1899 = !{!"1052"}
!1900 = !{!"1053"}
!1901 = !DILocalVariable(name: "q7", scope: !1859, file: !23, line: 68, type: !6)
!1902 = !{!"1054"}
!1903 = !DILocation(line: 79, column: 11, scope: !1859)
!1904 = !{!"1055"}
!1905 = !DILocation(line: 79, column: 24, scope: !1859)
!1906 = !{!"1056"}
!1907 = !DILocation(line: 79, column: 18, scope: !1859)
!1908 = !{!"1057"}
!1909 = !DILocalVariable(name: "r0", scope: !1859, file: !23, line: 69, type: !6)
!1910 = !{!"1058"}
!1911 = !DILocation(line: 80, column: 11, scope: !1859)
!1912 = !{!"1059"}
!1913 = !DILocation(line: 80, column: 24, scope: !1859)
!1914 = !{!"1060"}
!1915 = !DILocation(line: 80, column: 18, scope: !1859)
!1916 = !{!"1061"}
!1917 = !DILocalVariable(name: "r1", scope: !1859, file: !23, line: 69, type: !6)
!1918 = !{!"1062"}
!1919 = !DILocation(line: 81, column: 11, scope: !1859)
!1920 = !{!"1063"}
!1921 = !DILocation(line: 81, column: 24, scope: !1859)
!1922 = !{!"1064"}
!1923 = !DILocation(line: 81, column: 18, scope: !1859)
!1924 = !{!"1065"}
!1925 = !DILocalVariable(name: "r2", scope: !1859, file: !23, line: 69, type: !6)
!1926 = !{!"1066"}
!1927 = !DILocation(line: 82, column: 11, scope: !1859)
!1928 = !{!"1067"}
!1929 = !DILocation(line: 82, column: 24, scope: !1859)
!1930 = !{!"1068"}
!1931 = !DILocation(line: 82, column: 18, scope: !1859)
!1932 = !{!"1069"}
!1933 = !DILocalVariable(name: "r3", scope: !1859, file: !23, line: 69, type: !6)
!1934 = !{!"1070"}
!1935 = !DILocation(line: 83, column: 11, scope: !1859)
!1936 = !{!"1071"}
!1937 = !DILocation(line: 83, column: 24, scope: !1859)
!1938 = !{!"1072"}
!1939 = !DILocation(line: 83, column: 18, scope: !1859)
!1940 = !{!"1073"}
!1941 = !DILocalVariable(name: "r4", scope: !1859, file: !23, line: 69, type: !6)
!1942 = !{!"1074"}
!1943 = !DILocation(line: 84, column: 11, scope: !1859)
!1944 = !{!"1075"}
!1945 = !DILocation(line: 84, column: 24, scope: !1859)
!1946 = !{!"1076"}
!1947 = !DILocation(line: 84, column: 18, scope: !1859)
!1948 = !{!"1077"}
!1949 = !DILocalVariable(name: "r5", scope: !1859, file: !23, line: 69, type: !6)
!1950 = !{!"1078"}
!1951 = !DILocation(line: 85, column: 11, scope: !1859)
!1952 = !{!"1079"}
!1953 = !DILocation(line: 85, column: 24, scope: !1859)
!1954 = !{!"1080"}
!1955 = !DILocation(line: 85, column: 18, scope: !1859)
!1956 = !{!"1081"}
!1957 = !DILocalVariable(name: "r6", scope: !1859, file: !23, line: 69, type: !6)
!1958 = !{!"1082"}
!1959 = !DILocation(line: 86, column: 11, scope: !1859)
!1960 = !{!"1083"}
!1961 = !DILocation(line: 86, column: 24, scope: !1859)
!1962 = !{!"1084"}
!1963 = !DILocation(line: 86, column: 18, scope: !1859)
!1964 = !{!"1085"}
!1965 = !DILocalVariable(name: "r7", scope: !1859, file: !23, line: 69, type: !6)
!1966 = !{!"1086"}
!1967 = !DILocation(line: 88, column: 12, scope: !1859)
!1968 = !{!"1087"}
!1969 = !DILocation(line: 88, column: 17, scope: !1859)
!1970 = !{!"1088"}
!1971 = !DILocation(line: 88, column: 34, scope: !1859)
!1972 = !{!"1089"}
!1973 = !DILocation(line: 88, column: 24, scope: !1859)
!1974 = !{!"1090"}
!1975 = !DILocation(line: 88, column: 22, scope: !1859)
!1976 = !{!"1091"}
!1977 = !DILocation(line: 88, column: 2, scope: !1859)
!1978 = !{!"1092"}
!1979 = !DILocation(line: 88, column: 7, scope: !1859)
!1980 = !{!"1093"}
!1981 = !DILocation(line: 89, column: 12, scope: !1859)
!1982 = !{!"1094"}
!1983 = !DILocation(line: 89, column: 17, scope: !1859)
!1984 = !{!"1095"}
!1985 = !DILocation(line: 89, column: 22, scope: !1859)
!1986 = !{!"1096"}
!1987 = !DILocation(line: 89, column: 27, scope: !1859)
!1988 = !{!"1097"}
!1989 = !DILocation(line: 89, column: 44, scope: !1859)
!1990 = !{!"1098"}
!1991 = !DILocation(line: 89, column: 34, scope: !1859)
!1992 = !{!"1099"}
!1993 = !DILocation(line: 89, column: 32, scope: !1859)
!1994 = !{!"1100"}
!1995 = !DILocation(line: 89, column: 2, scope: !1859)
!1996 = !{!"1101"}
!1997 = !DILocation(line: 89, column: 7, scope: !1859)
!1998 = !{!"1102"}
!1999 = !DILocation(line: 90, column: 12, scope: !1859)
!2000 = !{!"1103"}
!2001 = !DILocation(line: 90, column: 17, scope: !1859)
!2002 = !{!"1104"}
!2003 = !DILocation(line: 90, column: 34, scope: !1859)
!2004 = !{!"1105"}
!2005 = !DILocation(line: 90, column: 24, scope: !1859)
!2006 = !{!"1106"}
!2007 = !DILocation(line: 90, column: 22, scope: !1859)
!2008 = !{!"1107"}
!2009 = !DILocation(line: 90, column: 2, scope: !1859)
!2010 = !{!"1108"}
!2011 = !DILocation(line: 90, column: 7, scope: !1859)
!2012 = !{!"1109"}
!2013 = !DILocation(line: 91, column: 12, scope: !1859)
!2014 = !{!"1110"}
!2015 = !DILocation(line: 91, column: 17, scope: !1859)
!2016 = !{!"1111"}
!2017 = !DILocation(line: 91, column: 22, scope: !1859)
!2018 = !{!"1112"}
!2019 = !DILocation(line: 91, column: 27, scope: !1859)
!2020 = !{!"1113"}
!2021 = !DILocation(line: 91, column: 44, scope: !1859)
!2022 = !{!"1114"}
!2023 = !DILocation(line: 91, column: 34, scope: !1859)
!2024 = !{!"1115"}
!2025 = !DILocation(line: 91, column: 32, scope: !1859)
!2026 = !{!"1116"}
!2027 = !DILocation(line: 91, column: 2, scope: !1859)
!2028 = !{!"1117"}
!2029 = !DILocation(line: 91, column: 7, scope: !1859)
!2030 = !{!"1118"}
!2031 = !DILocation(line: 92, column: 12, scope: !1859)
!2032 = !{!"1119"}
!2033 = !DILocation(line: 92, column: 17, scope: !1859)
!2034 = !{!"1120"}
!2035 = !DILocation(line: 92, column: 22, scope: !1859)
!2036 = !{!"1121"}
!2037 = !DILocation(line: 92, column: 27, scope: !1859)
!2038 = !{!"1122"}
!2039 = !DILocation(line: 92, column: 44, scope: !1859)
!2040 = !{!"1123"}
!2041 = !DILocation(line: 92, column: 34, scope: !1859)
!2042 = !{!"1124"}
!2043 = !DILocation(line: 92, column: 32, scope: !1859)
!2044 = !{!"1125"}
!2045 = !DILocation(line: 92, column: 2, scope: !1859)
!2046 = !{!"1126"}
!2047 = !DILocation(line: 92, column: 7, scope: !1859)
!2048 = !{!"1127"}
!2049 = !DILocation(line: 93, column: 12, scope: !1859)
!2050 = !{!"1128"}
!2051 = !DILocation(line: 93, column: 17, scope: !1859)
!2052 = !{!"1129"}
!2053 = !DILocation(line: 93, column: 34, scope: !1859)
!2054 = !{!"1130"}
!2055 = !DILocation(line: 93, column: 24, scope: !1859)
!2056 = !{!"1131"}
!2057 = !DILocation(line: 93, column: 22, scope: !1859)
!2058 = !{!"1132"}
!2059 = !DILocation(line: 93, column: 2, scope: !1859)
!2060 = !{!"1133"}
!2061 = !DILocation(line: 93, column: 7, scope: !1859)
!2062 = !{!"1134"}
!2063 = !DILocation(line: 94, column: 12, scope: !1859)
!2064 = !{!"1135"}
!2065 = !DILocation(line: 94, column: 17, scope: !1859)
!2066 = !{!"1136"}
!2067 = !DILocation(line: 94, column: 34, scope: !1859)
!2068 = !{!"1137"}
!2069 = !DILocation(line: 94, column: 24, scope: !1859)
!2070 = !{!"1138"}
!2071 = !DILocation(line: 94, column: 22, scope: !1859)
!2072 = !{!"1139"}
!2073 = !DILocation(line: 94, column: 2, scope: !1859)
!2074 = !{!"1140"}
!2075 = !DILocation(line: 94, column: 7, scope: !1859)
!2076 = !{!"1141"}
!2077 = !DILocation(line: 95, column: 12, scope: !1859)
!2078 = !{!"1142"}
!2079 = !DILocation(line: 95, column: 17, scope: !1859)
!2080 = !{!"1143"}
!2081 = !DILocation(line: 95, column: 34, scope: !1859)
!2082 = !{!"1144"}
!2083 = !DILocation(line: 95, column: 24, scope: !1859)
!2084 = !{!"1145"}
!2085 = !DILocation(line: 95, column: 22, scope: !1859)
!2086 = !{!"1146"}
!2087 = !DILocation(line: 95, column: 2, scope: !1859)
!2088 = !{!"1147"}
!2089 = !DILocation(line: 95, column: 7, scope: !1859)
!2090 = !{!"1148"}
!2091 = !DILocation(line: 96, column: 1, scope: !1859)
!2092 = !{!"1149"}
!2093 = distinct !DISubprogram(name: "rotr32", scope: !23, file: !23, line: 60, type: !2094, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !4)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!6, !6}
!2096 = !DILocalVariable(name: "x", arg: 1, scope: !2093, file: !23, line: 60, type: !6)
!2097 = !DILocation(line: 0, scope: !2093)
!2098 = !{!"1150"}
!2099 = !DILocation(line: 62, column: 12, scope: !2093)
!2100 = !{!"1151"}
!2101 = !DILocation(line: 62, column: 24, scope: !2093)
!2102 = !{!"1152"}
!2103 = !DILocation(line: 62, column: 19, scope: !2093)
!2104 = !{!"1153"}
!2105 = !DILocation(line: 62, column: 2, scope: !2093)
!2106 = !{!"1154"}
!2107 = distinct !DISubprogram(name: "bitslice_encrypt_wrapper", scope: !26, file: !26, line: 3, type: !2108, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !13, !901, !2110}
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!2111 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !2107, file: !26, line: 3, type: !13)
!2112 = !DILocation(line: 0, scope: !2107)
!2113 = !{!"1155"}
!2114 = !DILocalVariable(name: "skey", arg: 2, scope: !2107, file: !26, line: 3, type: !901)
!2115 = !{!"1156"}
!2116 = !DILocalVariable(name: "data", arg: 3, scope: !2107, file: !26, line: 3, type: !2110)
!2117 = !{!"1157"}
!2118 = !DILocation(line: 4, column: 12, scope: !2107)
!2119 = !{!"1158"}
!2120 = !DILocation(line: 4, column: 2, scope: !2107)
!2121 = !{!"1159"}
!2122 = !DILocation(line: 5, column: 12, scope: !2107)
!2123 = !{!"1160"}
!2124 = !DILocation(line: 5, column: 2, scope: !2107)
!2125 = !{!"1161"}
!2126 = !DILocation(line: 6, column: 12, scope: !2107)
!2127 = !{!"1162"}
!2128 = !DILocation(line: 6, column: 2, scope: !2107)
!2129 = !{!"1163"}
!2130 = !DILocation(line: 8, column: 12, scope: !2107)
!2131 = !{!"1164"}
!2132 = !DILocation(line: 8, column: 2, scope: !2107)
!2133 = !{!"1165"}
!2134 = !DILocation(line: 10, column: 43, scope: !2107)
!2135 = !{!"1166"}
!2136 = !DILocation(line: 10, column: 49, scope: !2107)
!2137 = !{!"1167"}
!2138 = !DILocation(line: 10, column: 2, scope: !2107)
!2139 = !{!"1168"}
!2140 = !DILocation(line: 11, column: 1, scope: !2107)
!2141 = !{!"1169"}
!2142 = distinct !DISubprogram(name: "bitslice_encrypt_wrapper_t", scope: !26, file: !26, line: 18, type: !2143, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null}
!2145 = !DILocation(line: 19, column: 24, scope: !2142)
!2146 = !{!"1170"}
!2147 = !DILocalVariable(name: "num_rounds", scope: !2142, file: !26, line: 19, type: !13)
!2148 = !DILocation(line: 0, scope: !2142)
!2149 = !{!"1171"}
!2150 = !DILocation(line: 20, column: 25, scope: !2142)
!2151 = !{!"1172"}
!2152 = !DILocalVariable(name: "skey", scope: !2142, file: !26, line: 20, type: !901)
!2153 = !{!"1173"}
!2154 = !DILocation(line: 21, column: 15, scope: !2142)
!2155 = !{!"1174"}
!2156 = !DILocalVariable(name: "data", scope: !2142, file: !26, line: 21, type: !2110)
!2157 = !{!"1175"}
!2158 = !DILocation(line: 22, column: 43, scope: !2142)
!2159 = !{!"1176"}
!2160 = !DILocation(line: 22, column: 49, scope: !2142)
!2161 = !{!"1177"}
!2162 = !DILocation(line: 22, column: 2, scope: !2142)
!2163 = !{!"1178"}
!2164 = !DILocation(line: 23, column: 1, scope: !2142)
!2165 = !{!"1179"}
