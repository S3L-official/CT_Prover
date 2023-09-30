; ModuleID = 'Hacl_Chacha20_chacha20_decrypt-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

@Hacl_Impl_Chacha20_Vec_chacha20_constants = dso_local constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !0, !psr.id !18
@chacha20_constants = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !12, !psr.id !19

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Impl_Chacha20_chacha20_init(i32* %0, i8* %1, i8* %2, i32 %3) #0 !dbg !26 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !34, metadata !DIExpression()), !dbg !35, !psr.id !36
  call void @llvm.dbg.value(metadata i8* %1, metadata !37, metadata !DIExpression()), !dbg !35, !psr.id !38
  call void @llvm.dbg.value(metadata i8* %2, metadata !39, metadata !DIExpression()), !dbg !35, !psr.id !40
  call void @llvm.dbg.value(metadata i32 %3, metadata !41, metadata !DIExpression()), !dbg !35, !psr.id !42
  br label %5, !dbg !43, !psr.id !44

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !47, !psr.id !48
  call void @llvm.dbg.value(metadata i32* %0, metadata !49, metadata !DIExpression()), !dbg !51, !psr.id !52
  %6 = zext i32 0 to i64, !dbg !53, !psr.id !54
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* @chacha20_constants, i64 0, i64 %6, !dbg !53, !psr.id !55
  %8 = load i32, i32* %7, align 4, !dbg !53, !psr.id !56
  call void @llvm.dbg.value(metadata i32 %8, metadata !57, metadata !DIExpression()), !dbg !51, !psr.id !58
  %9 = zext i32 0 to i64, !dbg !53, !psr.id !59
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !53, !psr.id !60
  store i32 %8, i32* %10, align 4, !dbg !53, !psr.id !61
  %11 = add i32 0, 1, !dbg !53, !psr.id !62
  call void @llvm.dbg.value(metadata i32 %11, metadata !45, metadata !DIExpression()), !dbg !47, !psr.id !63
  call void @llvm.dbg.value(metadata i32* %0, metadata !64, metadata !DIExpression()), !dbg !66, !psr.id !67
  %12 = zext i32 %11 to i64, !dbg !68, !psr.id !69
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* @chacha20_constants, i64 0, i64 %12, !dbg !68, !psr.id !70
  %14 = load i32, i32* %13, align 4, !dbg !68, !psr.id !71
  call void @llvm.dbg.value(metadata i32 %14, metadata !72, metadata !DIExpression()), !dbg !66, !psr.id !73
  %15 = zext i32 %11 to i64, !dbg !68, !psr.id !74
  %16 = getelementptr inbounds i32, i32* %0, i64 %15, !dbg !68, !psr.id !75
  store i32 %14, i32* %16, align 4, !dbg !68, !psr.id !76
  %17 = add i32 %11, 1, !dbg !68, !psr.id !77
  call void @llvm.dbg.value(metadata i32 %17, metadata !45, metadata !DIExpression()), !dbg !47, !psr.id !78
  call void @llvm.dbg.value(metadata i32* %0, metadata !79, metadata !DIExpression()), !dbg !81, !psr.id !82
  %18 = zext i32 %17 to i64, !dbg !83, !psr.id !84
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @chacha20_constants, i64 0, i64 %18, !dbg !83, !psr.id !85
  %20 = load i32, i32* %19, align 4, !dbg !83, !psr.id !86
  call void @llvm.dbg.value(metadata i32 %20, metadata !87, metadata !DIExpression()), !dbg !81, !psr.id !88
  %21 = zext i32 %17 to i64, !dbg !83, !psr.id !89
  %22 = getelementptr inbounds i32, i32* %0, i64 %21, !dbg !83, !psr.id !90
  store i32 %20, i32* %22, align 4, !dbg !83, !psr.id !91
  %23 = add i32 %17, 1, !dbg !83, !psr.id !92
  call void @llvm.dbg.value(metadata i32 %23, metadata !45, metadata !DIExpression()), !dbg !47, !psr.id !93
  call void @llvm.dbg.value(metadata i32* %0, metadata !94, metadata !DIExpression()), !dbg !96, !psr.id !97
  %24 = zext i32 %23 to i64, !dbg !98, !psr.id !99
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* @chacha20_constants, i64 0, i64 %24, !dbg !98, !psr.id !100
  %26 = load i32, i32* %25, align 4, !dbg !98, !psr.id !101
  call void @llvm.dbg.value(metadata i32 %26, metadata !102, metadata !DIExpression()), !dbg !96, !psr.id !103
  %27 = zext i32 %23 to i64, !dbg !98, !psr.id !104
  %28 = getelementptr inbounds i32, i32* %0, i64 %27, !dbg !98, !psr.id !105
  store i32 %26, i32* %28, align 4, !dbg !98, !psr.id !106
  %29 = add i32 %23, 1, !dbg !98, !psr.id !107
  call void @llvm.dbg.value(metadata i32 %29, metadata !45, metadata !DIExpression()), !dbg !47, !psr.id !108
  br label %30, !dbg !109, !psr.id !110

30:                                               ; preds = %5
  br label %31, !dbg !111, !psr.id !112

31:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 0, metadata !113, metadata !DIExpression()), !dbg !115, !psr.id !116
  %32 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !117, !psr.id !119
  call void @llvm.dbg.value(metadata i32* %32, metadata !120, metadata !DIExpression()), !dbg !121, !psr.id !122
  %33 = mul i32 0, 4, !dbg !117, !psr.id !123
  %34 = zext i32 %33 to i64, !dbg !117, !psr.id !124
  %35 = getelementptr inbounds i8, i8* %1, i64 %34, !dbg !117, !psr.id !125
  call void @llvm.dbg.value(metadata i8* %35, metadata !126, metadata !DIExpression()), !dbg !121, !psr.id !127
  %36 = call i32 @load32(i8* %35), !dbg !117, !psr.id !128
  %37 = call i32 @__uint32_identity(i32 %36), !dbg !117, !psr.id !129
  call void @llvm.dbg.value(metadata i32 %37, metadata !130, metadata !DIExpression()), !dbg !121, !psr.id !131
  call void @llvm.dbg.value(metadata i32 %37, metadata !132, metadata !DIExpression()), !dbg !121, !psr.id !133
  call void @llvm.dbg.value(metadata i32 %37, metadata !134, metadata !DIExpression()), !dbg !121, !psr.id !135
  %38 = zext i32 0 to i64, !dbg !117, !psr.id !136
  %39 = getelementptr inbounds i32, i32* %32, i64 %38, !dbg !117, !psr.id !137
  store i32 %37, i32* %39, align 4, !dbg !117, !psr.id !138
  %40 = add i32 0, 1, !dbg !117, !psr.id !139
  call void @llvm.dbg.value(metadata i32 %40, metadata !113, metadata !DIExpression()), !dbg !115, !psr.id !140
  %41 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !141, !psr.id !143
  call void @llvm.dbg.value(metadata i32* %41, metadata !144, metadata !DIExpression()), !dbg !145, !psr.id !146
  %42 = mul i32 %40, 4, !dbg !141, !psr.id !147
  %43 = zext i32 %42 to i64, !dbg !141, !psr.id !148
  %44 = getelementptr inbounds i8, i8* %1, i64 %43, !dbg !141, !psr.id !149
  call void @llvm.dbg.value(metadata i8* %44, metadata !150, metadata !DIExpression()), !dbg !145, !psr.id !151
  %45 = call i32 @load32(i8* %44), !dbg !141, !psr.id !152
  %46 = call i32 @__uint32_identity(i32 %45), !dbg !141, !psr.id !153
  call void @llvm.dbg.value(metadata i32 %46, metadata !154, metadata !DIExpression()), !dbg !145, !psr.id !155
  call void @llvm.dbg.value(metadata i32 %46, metadata !156, metadata !DIExpression()), !dbg !145, !psr.id !157
  call void @llvm.dbg.value(metadata i32 %46, metadata !158, metadata !DIExpression()), !dbg !145, !psr.id !159
  %47 = zext i32 %40 to i64, !dbg !141, !psr.id !160
  %48 = getelementptr inbounds i32, i32* %41, i64 %47, !dbg !141, !psr.id !161
  store i32 %46, i32* %48, align 4, !dbg !141, !psr.id !162
  %49 = add i32 %40, 1, !dbg !141, !psr.id !163
  call void @llvm.dbg.value(metadata i32 %49, metadata !113, metadata !DIExpression()), !dbg !115, !psr.id !164
  %50 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !165, !psr.id !167
  call void @llvm.dbg.value(metadata i32* %50, metadata !168, metadata !DIExpression()), !dbg !169, !psr.id !170
  %51 = mul i32 %49, 4, !dbg !165, !psr.id !171
  %52 = zext i32 %51 to i64, !dbg !165, !psr.id !172
  %53 = getelementptr inbounds i8, i8* %1, i64 %52, !dbg !165, !psr.id !173
  call void @llvm.dbg.value(metadata i8* %53, metadata !174, metadata !DIExpression()), !dbg !169, !psr.id !175
  %54 = call i32 @load32(i8* %53), !dbg !165, !psr.id !176
  %55 = call i32 @__uint32_identity(i32 %54), !dbg !165, !psr.id !177
  call void @llvm.dbg.value(metadata i32 %55, metadata !178, metadata !DIExpression()), !dbg !169, !psr.id !179
  call void @llvm.dbg.value(metadata i32 %55, metadata !180, metadata !DIExpression()), !dbg !169, !psr.id !181
  call void @llvm.dbg.value(metadata i32 %55, metadata !182, metadata !DIExpression()), !dbg !169, !psr.id !183
  %56 = zext i32 %49 to i64, !dbg !165, !psr.id !184
  %57 = getelementptr inbounds i32, i32* %50, i64 %56, !dbg !165, !psr.id !185
  store i32 %55, i32* %57, align 4, !dbg !165, !psr.id !186
  %58 = add i32 %49, 1, !dbg !165, !psr.id !187
  call void @llvm.dbg.value(metadata i32 %58, metadata !113, metadata !DIExpression()), !dbg !115, !psr.id !188
  %59 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !189, !psr.id !191
  call void @llvm.dbg.value(metadata i32* %59, metadata !192, metadata !DIExpression()), !dbg !193, !psr.id !194
  %60 = mul i32 %58, 4, !dbg !189, !psr.id !195
  %61 = zext i32 %60 to i64, !dbg !189, !psr.id !196
  %62 = getelementptr inbounds i8, i8* %1, i64 %61, !dbg !189, !psr.id !197
  call void @llvm.dbg.value(metadata i8* %62, metadata !198, metadata !DIExpression()), !dbg !193, !psr.id !199
  %63 = call i32 @load32(i8* %62), !dbg !189, !psr.id !200
  %64 = call i32 @__uint32_identity(i32 %63), !dbg !189, !psr.id !201
  call void @llvm.dbg.value(metadata i32 %64, metadata !202, metadata !DIExpression()), !dbg !193, !psr.id !203
  call void @llvm.dbg.value(metadata i32 %64, metadata !204, metadata !DIExpression()), !dbg !193, !psr.id !205
  call void @llvm.dbg.value(metadata i32 %64, metadata !206, metadata !DIExpression()), !dbg !193, !psr.id !207
  %65 = zext i32 %58 to i64, !dbg !189, !psr.id !208
  %66 = getelementptr inbounds i32, i32* %59, i64 %65, !dbg !189, !psr.id !209
  store i32 %64, i32* %66, align 4, !dbg !189, !psr.id !210
  %67 = add i32 %58, 1, !dbg !189, !psr.id !211
  call void @llvm.dbg.value(metadata i32 %67, metadata !113, metadata !DIExpression()), !dbg !115, !psr.id !212
  %68 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !213, !psr.id !215
  call void @llvm.dbg.value(metadata i32* %68, metadata !216, metadata !DIExpression()), !dbg !217, !psr.id !218
  %69 = mul i32 %67, 4, !dbg !213, !psr.id !219
  %70 = zext i32 %69 to i64, !dbg !213, !psr.id !220
  %71 = getelementptr inbounds i8, i8* %1, i64 %70, !dbg !213, !psr.id !221
  call void @llvm.dbg.value(metadata i8* %71, metadata !222, metadata !DIExpression()), !dbg !217, !psr.id !223
  %72 = call i32 @load32(i8* %71), !dbg !213, !psr.id !224
  %73 = call i32 @__uint32_identity(i32 %72), !dbg !213, !psr.id !225
  call void @llvm.dbg.value(metadata i32 %73, metadata !226, metadata !DIExpression()), !dbg !217, !psr.id !227
  call void @llvm.dbg.value(metadata i32 %73, metadata !228, metadata !DIExpression()), !dbg !217, !psr.id !229
  call void @llvm.dbg.value(metadata i32 %73, metadata !230, metadata !DIExpression()), !dbg !217, !psr.id !231
  %74 = zext i32 %67 to i64, !dbg !213, !psr.id !232
  %75 = getelementptr inbounds i32, i32* %68, i64 %74, !dbg !213, !psr.id !233
  store i32 %73, i32* %75, align 4, !dbg !213, !psr.id !234
  %76 = add i32 %67, 1, !dbg !213, !psr.id !235
  call void @llvm.dbg.value(metadata i32 %76, metadata !113, metadata !DIExpression()), !dbg !115, !psr.id !236
  %77 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !237, !psr.id !239
  call void @llvm.dbg.value(metadata i32* %77, metadata !240, metadata !DIExpression()), !dbg !241, !psr.id !242
  %78 = mul i32 %76, 4, !dbg !237, !psr.id !243
  %79 = zext i32 %78 to i64, !dbg !237, !psr.id !244
  %80 = getelementptr inbounds i8, i8* %1, i64 %79, !dbg !237, !psr.id !245
  call void @llvm.dbg.value(metadata i8* %80, metadata !246, metadata !DIExpression()), !dbg !241, !psr.id !247
  %81 = call i32 @load32(i8* %80), !dbg !237, !psr.id !248
  %82 = call i32 @__uint32_identity(i32 %81), !dbg !237, !psr.id !249
  call void @llvm.dbg.value(metadata i32 %82, metadata !250, metadata !DIExpression()), !dbg !241, !psr.id !251
  call void @llvm.dbg.value(metadata i32 %82, metadata !252, metadata !DIExpression()), !dbg !241, !psr.id !253
  call void @llvm.dbg.value(metadata i32 %82, metadata !254, metadata !DIExpression()), !dbg !241, !psr.id !255
  %83 = zext i32 %76 to i64, !dbg !237, !psr.id !256
  %84 = getelementptr inbounds i32, i32* %77, i64 %83, !dbg !237, !psr.id !257
  store i32 %82, i32* %84, align 4, !dbg !237, !psr.id !258
  %85 = add i32 %76, 1, !dbg !237, !psr.id !259
  call void @llvm.dbg.value(metadata i32 %85, metadata !113, metadata !DIExpression()), !dbg !115, !psr.id !260
  %86 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !261, !psr.id !263
  call void @llvm.dbg.value(metadata i32* %86, metadata !264, metadata !DIExpression()), !dbg !265, !psr.id !266
  %87 = mul i32 %85, 4, !dbg !261, !psr.id !267
  %88 = zext i32 %87 to i64, !dbg !261, !psr.id !268
  %89 = getelementptr inbounds i8, i8* %1, i64 %88, !dbg !261, !psr.id !269
  call void @llvm.dbg.value(metadata i8* %89, metadata !270, metadata !DIExpression()), !dbg !265, !psr.id !271
  %90 = call i32 @load32(i8* %89), !dbg !261, !psr.id !272
  %91 = call i32 @__uint32_identity(i32 %90), !dbg !261, !psr.id !273
  call void @llvm.dbg.value(metadata i32 %91, metadata !274, metadata !DIExpression()), !dbg !265, !psr.id !275
  call void @llvm.dbg.value(metadata i32 %91, metadata !276, metadata !DIExpression()), !dbg !265, !psr.id !277
  call void @llvm.dbg.value(metadata i32 %91, metadata !278, metadata !DIExpression()), !dbg !265, !psr.id !279
  %92 = zext i32 %85 to i64, !dbg !261, !psr.id !280
  %93 = getelementptr inbounds i32, i32* %86, i64 %92, !dbg !261, !psr.id !281
  store i32 %91, i32* %93, align 4, !dbg !261, !psr.id !282
  %94 = add i32 %85, 1, !dbg !261, !psr.id !283
  call void @llvm.dbg.value(metadata i32 %94, metadata !113, metadata !DIExpression()), !dbg !115, !psr.id !284
  %95 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !285, !psr.id !287
  call void @llvm.dbg.value(metadata i32* %95, metadata !288, metadata !DIExpression()), !dbg !289, !psr.id !290
  %96 = mul i32 %94, 4, !dbg !285, !psr.id !291
  %97 = zext i32 %96 to i64, !dbg !285, !psr.id !292
  %98 = getelementptr inbounds i8, i8* %1, i64 %97, !dbg !285, !psr.id !293
  call void @llvm.dbg.value(metadata i8* %98, metadata !294, metadata !DIExpression()), !dbg !289, !psr.id !295
  %99 = call i32 @load32(i8* %98), !dbg !285, !psr.id !296
  %100 = call i32 @__uint32_identity(i32 %99), !dbg !285, !psr.id !297
  call void @llvm.dbg.value(metadata i32 %100, metadata !298, metadata !DIExpression()), !dbg !289, !psr.id !299
  call void @llvm.dbg.value(metadata i32 %100, metadata !300, metadata !DIExpression()), !dbg !289, !psr.id !301
  call void @llvm.dbg.value(metadata i32 %100, metadata !302, metadata !DIExpression()), !dbg !289, !psr.id !303
  %101 = zext i32 %94 to i64, !dbg !285, !psr.id !304
  %102 = getelementptr inbounds i32, i32* %95, i64 %101, !dbg !285, !psr.id !305
  store i32 %100, i32* %102, align 4, !dbg !285, !psr.id !306
  %103 = add i32 %94, 1, !dbg !285, !psr.id !307
  call void @llvm.dbg.value(metadata i32 %103, metadata !113, metadata !DIExpression()), !dbg !115, !psr.id !308
  br label %104, !dbg !309, !psr.id !310

104:                                              ; preds = %31
  %105 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !311, !psr.id !312
  store i32 %3, i32* %105, align 4, !dbg !313, !psr.id !314
  br label %106, !dbg !315, !psr.id !316

106:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i32 0, metadata !317, metadata !DIExpression()), !dbg !319, !psr.id !320
  %107 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !321, !psr.id !323
  call void @llvm.dbg.value(metadata i32* %107, metadata !324, metadata !DIExpression()), !dbg !325, !psr.id !326
  %108 = mul i32 0, 4, !dbg !321, !psr.id !327
  %109 = zext i32 %108 to i64, !dbg !321, !psr.id !328
  %110 = getelementptr inbounds i8, i8* %2, i64 %109, !dbg !321, !psr.id !329
  call void @llvm.dbg.value(metadata i8* %110, metadata !330, metadata !DIExpression()), !dbg !325, !psr.id !331
  %111 = call i32 @load32(i8* %110), !dbg !321, !psr.id !332
  %112 = call i32 @__uint32_identity(i32 %111), !dbg !321, !psr.id !333
  call void @llvm.dbg.value(metadata i32 %112, metadata !334, metadata !DIExpression()), !dbg !325, !psr.id !335
  call void @llvm.dbg.value(metadata i32 %112, metadata !336, metadata !DIExpression()), !dbg !325, !psr.id !337
  call void @llvm.dbg.value(metadata i32 %112, metadata !338, metadata !DIExpression()), !dbg !325, !psr.id !339
  %113 = zext i32 0 to i64, !dbg !321, !psr.id !340
  %114 = getelementptr inbounds i32, i32* %107, i64 %113, !dbg !321, !psr.id !341
  store i32 %112, i32* %114, align 4, !dbg !321, !psr.id !342
  %115 = add i32 0, 1, !dbg !321, !psr.id !343
  call void @llvm.dbg.value(metadata i32 %115, metadata !317, metadata !DIExpression()), !dbg !319, !psr.id !344
  %116 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !345, !psr.id !347
  call void @llvm.dbg.value(metadata i32* %116, metadata !348, metadata !DIExpression()), !dbg !349, !psr.id !350
  %117 = mul i32 %115, 4, !dbg !345, !psr.id !351
  %118 = zext i32 %117 to i64, !dbg !345, !psr.id !352
  %119 = getelementptr inbounds i8, i8* %2, i64 %118, !dbg !345, !psr.id !353
  call void @llvm.dbg.value(metadata i8* %119, metadata !354, metadata !DIExpression()), !dbg !349, !psr.id !355
  %120 = call i32 @load32(i8* %119), !dbg !345, !psr.id !356
  %121 = call i32 @__uint32_identity(i32 %120), !dbg !345, !psr.id !357
  call void @llvm.dbg.value(metadata i32 %121, metadata !358, metadata !DIExpression()), !dbg !349, !psr.id !359
  call void @llvm.dbg.value(metadata i32 %121, metadata !360, metadata !DIExpression()), !dbg !349, !psr.id !361
  call void @llvm.dbg.value(metadata i32 %121, metadata !362, metadata !DIExpression()), !dbg !349, !psr.id !363
  %122 = zext i32 %115 to i64, !dbg !345, !psr.id !364
  %123 = getelementptr inbounds i32, i32* %116, i64 %122, !dbg !345, !psr.id !365
  store i32 %121, i32* %123, align 4, !dbg !345, !psr.id !366
  %124 = add i32 %115, 1, !dbg !345, !psr.id !367
  call void @llvm.dbg.value(metadata i32 %124, metadata !317, metadata !DIExpression()), !dbg !319, !psr.id !368
  %125 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !369, !psr.id !371
  call void @llvm.dbg.value(metadata i32* %125, metadata !372, metadata !DIExpression()), !dbg !373, !psr.id !374
  %126 = mul i32 %124, 4, !dbg !369, !psr.id !375
  %127 = zext i32 %126 to i64, !dbg !369, !psr.id !376
  %128 = getelementptr inbounds i8, i8* %2, i64 %127, !dbg !369, !psr.id !377
  call void @llvm.dbg.value(metadata i8* %128, metadata !378, metadata !DIExpression()), !dbg !373, !psr.id !379
  %129 = call i32 @load32(i8* %128), !dbg !369, !psr.id !380
  %130 = call i32 @__uint32_identity(i32 %129), !dbg !369, !psr.id !381
  call void @llvm.dbg.value(metadata i32 %130, metadata !382, metadata !DIExpression()), !dbg !373, !psr.id !383
  call void @llvm.dbg.value(metadata i32 %130, metadata !384, metadata !DIExpression()), !dbg !373, !psr.id !385
  call void @llvm.dbg.value(metadata i32 %130, metadata !386, metadata !DIExpression()), !dbg !373, !psr.id !387
  %131 = zext i32 %124 to i64, !dbg !369, !psr.id !388
  %132 = getelementptr inbounds i32, i32* %125, i64 %131, !dbg !369, !psr.id !389
  store i32 %130, i32* %132, align 4, !dbg !369, !psr.id !390
  %133 = add i32 %124, 1, !dbg !369, !psr.id !391
  call void @llvm.dbg.value(metadata i32 %133, metadata !317, metadata !DIExpression()), !dbg !319, !psr.id !392
  br label %134, !dbg !393, !psr.id !394

134:                                              ; preds = %106
  ret void, !dbg !395, !psr.id !396
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @load32(i8* %0) #0 !dbg !397 {
  %2 = alloca i32, align 4, !psr.id !401
  call void @llvm.dbg.value(metadata i8* %0, metadata !402, metadata !DIExpression()), !dbg !403, !psr.id !404
  call void @llvm.dbg.declare(metadata i32* %2, metadata !405, metadata !DIExpression()), !dbg !406, !psr.id !407
  %3 = bitcast i32* %2 to i8*, !dbg !408, !psr.id !409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 1 %0, i64 4, i1 false), !dbg !408, !psr.id !410
  %4 = load i32, i32* %2, align 4, !dbg !411, !psr.id !412
  ret i32 %4, !dbg !413, !psr.id !414
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @__uint32_identity(i32 %0) #0 !dbg !415 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !419, metadata !DIExpression()), !dbg !420, !psr.id !421
  ret i32 %0, !dbg !422, !psr.id !423
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Impl_Chacha20_chacha20_update(i32* %0, i32 %1, i8* %2, i8* %3) #0 !dbg !424 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !427, metadata !DIExpression()), !dbg !428, !psr.id !429
  call void @llvm.dbg.value(metadata i32 %1, metadata !430, metadata !DIExpression()), !dbg !428, !psr.id !431
  call void @llvm.dbg.value(metadata i8* %2, metadata !432, metadata !DIExpression()), !dbg !428, !psr.id !433
  call void @llvm.dbg.value(metadata i8* %3, metadata !434, metadata !DIExpression()), !dbg !428, !psr.id !435
  %5 = urem i32 %1, 64, !dbg !436, !psr.id !437
  call void @llvm.dbg.value(metadata i32 %5, metadata !438, metadata !DIExpression()), !dbg !428, !psr.id !439
  %6 = udiv i32 %1, 64, !dbg !440, !psr.id !441
  call void @llvm.dbg.value(metadata i32 %6, metadata !442, metadata !DIExpression()), !dbg !428, !psr.id !443
  %7 = urem i32 %1, 64, !dbg !444, !psr.id !445
  call void @llvm.dbg.value(metadata i32 %7, metadata !446, metadata !DIExpression()), !dbg !428, !psr.id !447
  call void @llvm.dbg.value(metadata i32 0, metadata !448, metadata !DIExpression()), !dbg !450, !psr.id !451
  br label %8, !dbg !452, !psr.id !453

8:                                                ; preds = %17, %4
  %.0 = phi i32 [ 0, %4 ], [ %18, %17 ], !dbg !450, !psr.id !454
  call void @llvm.dbg.value(metadata i32 %.0, metadata !448, metadata !DIExpression()), !dbg !450, !psr.id !455
  %9 = icmp ult i32 %.0, %6, !dbg !456, !psr.id !458
  br i1 %9, label %10, label %19, !dbg !459, !psr.id !460

10:                                               ; preds = %8
  %11 = mul i32 %.0, 64, !dbg !461, !psr.id !463
  %12 = zext i32 %11 to i64, !dbg !464, !psr.id !465
  %13 = getelementptr inbounds i8, i8* %2, i64 %12, !dbg !464, !psr.id !466, !PointTainted !467
  %14 = mul i32 %.0, 64, !dbg !468, !psr.id !469
  %15 = zext i32 %14 to i64, !dbg !470, !psr.id !471
  %16 = getelementptr inbounds i8, i8* %3, i64 %15, !dbg !470, !psr.id !472
  call void @chacha20_encrypt_block(i32* %0, i8* %13, i32 %.0, i8* %16), !dbg !473, !psr.id !474
  br label %17, !dbg !475, !psr.id !476

17:                                               ; preds = %10
  %18 = add i32 %.0, 1, !dbg !477, !psr.id !478
  call void @llvm.dbg.value(metadata i32 %18, metadata !448, metadata !DIExpression()), !dbg !450, !psr.id !479
  br label %8, !dbg !480, !llvm.loop !481, !psr.id !484

19:                                               ; preds = %8
  %20 = icmp ugt i32 %7, 0, !dbg !485, !psr.id !487
  br i1 %20, label %21, label %28, !dbg !488, !psr.id !489

21:                                               ; preds = %19
  %22 = mul i32 %6, 64, !dbg !490, !psr.id !492
  %23 = zext i32 %22 to i64, !dbg !493, !psr.id !494
  %24 = getelementptr inbounds i8, i8* %2, i64 %23, !dbg !493, !psr.id !495, !PointTainted !467
  %25 = mul i32 %6, 64, !dbg !496, !psr.id !497
  %26 = zext i32 %25 to i64, !dbg !498, !psr.id !499
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !498, !psr.id !500
  call void @chacha20_encrypt_last(i32* %0, i32 %5, i8* %24, i32 %6, i8* %27), !dbg !501, !psr.id !502
  br label %28, !dbg !503, !psr.id !504

28:                                               ; preds = %21, %19
  ret void, !dbg !505, !psr.id !506
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_encrypt_block(i32* %0, i8* %1, i32 %2, i8* %3) #0 !dbg !507 {
  %5 = alloca [16 x i32], align 16, !psr.id !510
  %6 = alloca [16 x i32], align 16, !psr.id !511
  call void @llvm.dbg.value(metadata i32* %0, metadata !512, metadata !DIExpression()), !dbg !513, !psr.id !514
  call void @llvm.dbg.value(metadata i8* %1, metadata !515, metadata !DIExpression()), !dbg !513, !psr.id !516
  call void @llvm.dbg.value(metadata i32 %2, metadata !517, metadata !DIExpression()), !dbg !513, !psr.id !518
  call void @llvm.dbg.value(metadata i8* %3, metadata !519, metadata !DIExpression()), !dbg !513, !psr.id !520
  call void @llvm.dbg.declare(metadata [16 x i32]* %5, metadata !521, metadata !DIExpression()), !dbg !525, !psr.id !526
  %7 = bitcast [16 x i32]* %5 to i8*, !dbg !525, !psr.id !527
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 64, i1 false), !dbg !525, !psr.id !528
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !529, !psr.id !530
  call void @chacha20_core(i32* %8, i32* %0, i32 %2), !dbg !531, !psr.id !532
  call void @llvm.dbg.declare(metadata [16 x i32]* %6, metadata !533, metadata !DIExpression()), !dbg !534, !psr.id !535
  %9 = bitcast [16 x i32]* %6 to i8*, !dbg !534, !psr.id !536
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 64, i1 false), !dbg !534, !psr.id !537
  br label %10, !dbg !538, !psr.id !539

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !543
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !544, !psr.id !546
  call void @llvm.dbg.value(metadata i32* %11, metadata !547, metadata !DIExpression()), !dbg !548, !psr.id !549
  %12 = mul i32 0, 4, !dbg !544, !psr.id !550
  %13 = zext i32 %12 to i64, !dbg !544, !psr.id !551
  %14 = getelementptr inbounds i8, i8* %3, i64 %13, !dbg !544, !psr.id !552
  call void @llvm.dbg.value(metadata i8* %14, metadata !553, metadata !DIExpression()), !dbg !548, !psr.id !554
  %15 = call i32 @load32(i8* %14), !dbg !544, !psr.id !555
  %16 = call i32 @__uint32_identity(i32 %15), !dbg !544, !psr.id !556
  call void @llvm.dbg.value(metadata i32 %16, metadata !557, metadata !DIExpression()), !dbg !548, !psr.id !558
  call void @llvm.dbg.value(metadata i32 %16, metadata !559, metadata !DIExpression()), !dbg !548, !psr.id !560
  call void @llvm.dbg.value(metadata i32 %16, metadata !561, metadata !DIExpression()), !dbg !548, !psr.id !562
  %17 = zext i32 0 to i64, !dbg !544, !psr.id !563
  %18 = getelementptr inbounds i32, i32* %11, i64 %17, !dbg !544, !psr.id !564
  store i32 %16, i32* %18, align 4, !dbg !544, !psr.id !565
  %19 = add i32 0, 1, !dbg !544, !psr.id !566
  call void @llvm.dbg.value(metadata i32 %19, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !567
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !568, !psr.id !570
  call void @llvm.dbg.value(metadata i32* %20, metadata !571, metadata !DIExpression()), !dbg !572, !psr.id !573
  %21 = mul i32 %19, 4, !dbg !568, !psr.id !574
  %22 = zext i32 %21 to i64, !dbg !568, !psr.id !575
  %23 = getelementptr inbounds i8, i8* %3, i64 %22, !dbg !568, !psr.id !576
  call void @llvm.dbg.value(metadata i8* %23, metadata !577, metadata !DIExpression()), !dbg !572, !psr.id !578
  %24 = call i32 @load32(i8* %23), !dbg !568, !psr.id !579
  %25 = call i32 @__uint32_identity(i32 %24), !dbg !568, !psr.id !580
  call void @llvm.dbg.value(metadata i32 %25, metadata !581, metadata !DIExpression()), !dbg !572, !psr.id !582
  call void @llvm.dbg.value(metadata i32 %25, metadata !583, metadata !DIExpression()), !dbg !572, !psr.id !584
  call void @llvm.dbg.value(metadata i32 %25, metadata !585, metadata !DIExpression()), !dbg !572, !psr.id !586
  %26 = zext i32 %19 to i64, !dbg !568, !psr.id !587
  %27 = getelementptr inbounds i32, i32* %20, i64 %26, !dbg !568, !psr.id !588
  store i32 %25, i32* %27, align 4, !dbg !568, !psr.id !589
  %28 = add i32 %19, 1, !dbg !568, !psr.id !590
  call void @llvm.dbg.value(metadata i32 %28, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !591
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !592, !psr.id !594
  call void @llvm.dbg.value(metadata i32* %29, metadata !595, metadata !DIExpression()), !dbg !596, !psr.id !597
  %30 = mul i32 %28, 4, !dbg !592, !psr.id !598
  %31 = zext i32 %30 to i64, !dbg !592, !psr.id !599
  %32 = getelementptr inbounds i8, i8* %3, i64 %31, !dbg !592, !psr.id !600
  call void @llvm.dbg.value(metadata i8* %32, metadata !601, metadata !DIExpression()), !dbg !596, !psr.id !602
  %33 = call i32 @load32(i8* %32), !dbg !592, !psr.id !603
  %34 = call i32 @__uint32_identity(i32 %33), !dbg !592, !psr.id !604
  call void @llvm.dbg.value(metadata i32 %34, metadata !605, metadata !DIExpression()), !dbg !596, !psr.id !606
  call void @llvm.dbg.value(metadata i32 %34, metadata !607, metadata !DIExpression()), !dbg !596, !psr.id !608
  call void @llvm.dbg.value(metadata i32 %34, metadata !609, metadata !DIExpression()), !dbg !596, !psr.id !610
  %35 = zext i32 %28 to i64, !dbg !592, !psr.id !611
  %36 = getelementptr inbounds i32, i32* %29, i64 %35, !dbg !592, !psr.id !612
  store i32 %34, i32* %36, align 4, !dbg !592, !psr.id !613
  %37 = add i32 %28, 1, !dbg !592, !psr.id !614
  call void @llvm.dbg.value(metadata i32 %37, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !615
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !616, !psr.id !618
  call void @llvm.dbg.value(metadata i32* %38, metadata !619, metadata !DIExpression()), !dbg !620, !psr.id !621
  %39 = mul i32 %37, 4, !dbg !616, !psr.id !622
  %40 = zext i32 %39 to i64, !dbg !616, !psr.id !623
  %41 = getelementptr inbounds i8, i8* %3, i64 %40, !dbg !616, !psr.id !624
  call void @llvm.dbg.value(metadata i8* %41, metadata !625, metadata !DIExpression()), !dbg !620, !psr.id !626
  %42 = call i32 @load32(i8* %41), !dbg !616, !psr.id !627
  %43 = call i32 @__uint32_identity(i32 %42), !dbg !616, !psr.id !628
  call void @llvm.dbg.value(metadata i32 %43, metadata !629, metadata !DIExpression()), !dbg !620, !psr.id !630
  call void @llvm.dbg.value(metadata i32 %43, metadata !631, metadata !DIExpression()), !dbg !620, !psr.id !632
  call void @llvm.dbg.value(metadata i32 %43, metadata !633, metadata !DIExpression()), !dbg !620, !psr.id !634
  %44 = zext i32 %37 to i64, !dbg !616, !psr.id !635
  %45 = getelementptr inbounds i32, i32* %38, i64 %44, !dbg !616, !psr.id !636
  store i32 %43, i32* %45, align 4, !dbg !616, !psr.id !637
  %46 = add i32 %37, 1, !dbg !616, !psr.id !638
  call void @llvm.dbg.value(metadata i32 %46, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !639
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !640, !psr.id !642
  call void @llvm.dbg.value(metadata i32* %47, metadata !643, metadata !DIExpression()), !dbg !644, !psr.id !645
  %48 = mul i32 %46, 4, !dbg !640, !psr.id !646
  %49 = zext i32 %48 to i64, !dbg !640, !psr.id !647
  %50 = getelementptr inbounds i8, i8* %3, i64 %49, !dbg !640, !psr.id !648
  call void @llvm.dbg.value(metadata i8* %50, metadata !649, metadata !DIExpression()), !dbg !644, !psr.id !650
  %51 = call i32 @load32(i8* %50), !dbg !640, !psr.id !651
  %52 = call i32 @__uint32_identity(i32 %51), !dbg !640, !psr.id !652
  call void @llvm.dbg.value(metadata i32 %52, metadata !653, metadata !DIExpression()), !dbg !644, !psr.id !654
  call void @llvm.dbg.value(metadata i32 %52, metadata !655, metadata !DIExpression()), !dbg !644, !psr.id !656
  call void @llvm.dbg.value(metadata i32 %52, metadata !657, metadata !DIExpression()), !dbg !644, !psr.id !658
  %53 = zext i32 %46 to i64, !dbg !640, !psr.id !659
  %54 = getelementptr inbounds i32, i32* %47, i64 %53, !dbg !640, !psr.id !660
  store i32 %52, i32* %54, align 4, !dbg !640, !psr.id !661
  %55 = add i32 %46, 1, !dbg !640, !psr.id !662
  call void @llvm.dbg.value(metadata i32 %55, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !663
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !664, !psr.id !666
  call void @llvm.dbg.value(metadata i32* %56, metadata !667, metadata !DIExpression()), !dbg !668, !psr.id !669
  %57 = mul i32 %55, 4, !dbg !664, !psr.id !670
  %58 = zext i32 %57 to i64, !dbg !664, !psr.id !671
  %59 = getelementptr inbounds i8, i8* %3, i64 %58, !dbg !664, !psr.id !672
  call void @llvm.dbg.value(metadata i8* %59, metadata !673, metadata !DIExpression()), !dbg !668, !psr.id !674
  %60 = call i32 @load32(i8* %59), !dbg !664, !psr.id !675
  %61 = call i32 @__uint32_identity(i32 %60), !dbg !664, !psr.id !676
  call void @llvm.dbg.value(metadata i32 %61, metadata !677, metadata !DIExpression()), !dbg !668, !psr.id !678
  call void @llvm.dbg.value(metadata i32 %61, metadata !679, metadata !DIExpression()), !dbg !668, !psr.id !680
  call void @llvm.dbg.value(metadata i32 %61, metadata !681, metadata !DIExpression()), !dbg !668, !psr.id !682
  %62 = zext i32 %55 to i64, !dbg !664, !psr.id !683
  %63 = getelementptr inbounds i32, i32* %56, i64 %62, !dbg !664, !psr.id !684
  store i32 %61, i32* %63, align 4, !dbg !664, !psr.id !685
  %64 = add i32 %55, 1, !dbg !664, !psr.id !686
  call void @llvm.dbg.value(metadata i32 %64, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !687
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !688, !psr.id !690
  call void @llvm.dbg.value(metadata i32* %65, metadata !691, metadata !DIExpression()), !dbg !692, !psr.id !693
  %66 = mul i32 %64, 4, !dbg !688, !psr.id !694
  %67 = zext i32 %66 to i64, !dbg !688, !psr.id !695
  %68 = getelementptr inbounds i8, i8* %3, i64 %67, !dbg !688, !psr.id !696
  call void @llvm.dbg.value(metadata i8* %68, metadata !697, metadata !DIExpression()), !dbg !692, !psr.id !698
  %69 = call i32 @load32(i8* %68), !dbg !688, !psr.id !699
  %70 = call i32 @__uint32_identity(i32 %69), !dbg !688, !psr.id !700
  call void @llvm.dbg.value(metadata i32 %70, metadata !701, metadata !DIExpression()), !dbg !692, !psr.id !702
  call void @llvm.dbg.value(metadata i32 %70, metadata !703, metadata !DIExpression()), !dbg !692, !psr.id !704
  call void @llvm.dbg.value(metadata i32 %70, metadata !705, metadata !DIExpression()), !dbg !692, !psr.id !706
  %71 = zext i32 %64 to i64, !dbg !688, !psr.id !707
  %72 = getelementptr inbounds i32, i32* %65, i64 %71, !dbg !688, !psr.id !708
  store i32 %70, i32* %72, align 4, !dbg !688, !psr.id !709
  %73 = add i32 %64, 1, !dbg !688, !psr.id !710
  call void @llvm.dbg.value(metadata i32 %73, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !711
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !712, !psr.id !714
  call void @llvm.dbg.value(metadata i32* %74, metadata !715, metadata !DIExpression()), !dbg !716, !psr.id !717
  %75 = mul i32 %73, 4, !dbg !712, !psr.id !718
  %76 = zext i32 %75 to i64, !dbg !712, !psr.id !719
  %77 = getelementptr inbounds i8, i8* %3, i64 %76, !dbg !712, !psr.id !720
  call void @llvm.dbg.value(metadata i8* %77, metadata !721, metadata !DIExpression()), !dbg !716, !psr.id !722
  %78 = call i32 @load32(i8* %77), !dbg !712, !psr.id !723
  %79 = call i32 @__uint32_identity(i32 %78), !dbg !712, !psr.id !724
  call void @llvm.dbg.value(metadata i32 %79, metadata !725, metadata !DIExpression()), !dbg !716, !psr.id !726
  call void @llvm.dbg.value(metadata i32 %79, metadata !727, metadata !DIExpression()), !dbg !716, !psr.id !728
  call void @llvm.dbg.value(metadata i32 %79, metadata !729, metadata !DIExpression()), !dbg !716, !psr.id !730
  %80 = zext i32 %73 to i64, !dbg !712, !psr.id !731
  %81 = getelementptr inbounds i32, i32* %74, i64 %80, !dbg !712, !psr.id !732
  store i32 %79, i32* %81, align 4, !dbg !712, !psr.id !733
  %82 = add i32 %73, 1, !dbg !712, !psr.id !734
  call void @llvm.dbg.value(metadata i32 %82, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !735
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !736, !psr.id !738
  call void @llvm.dbg.value(metadata i32* %83, metadata !739, metadata !DIExpression()), !dbg !740, !psr.id !741
  %84 = mul i32 %82, 4, !dbg !736, !psr.id !742
  %85 = zext i32 %84 to i64, !dbg !736, !psr.id !743
  %86 = getelementptr inbounds i8, i8* %3, i64 %85, !dbg !736, !psr.id !744
  call void @llvm.dbg.value(metadata i8* %86, metadata !745, metadata !DIExpression()), !dbg !740, !psr.id !746
  %87 = call i32 @load32(i8* %86), !dbg !736, !psr.id !747
  %88 = call i32 @__uint32_identity(i32 %87), !dbg !736, !psr.id !748
  call void @llvm.dbg.value(metadata i32 %88, metadata !749, metadata !DIExpression()), !dbg !740, !psr.id !750
  call void @llvm.dbg.value(metadata i32 %88, metadata !751, metadata !DIExpression()), !dbg !740, !psr.id !752
  call void @llvm.dbg.value(metadata i32 %88, metadata !753, metadata !DIExpression()), !dbg !740, !psr.id !754
  %89 = zext i32 %82 to i64, !dbg !736, !psr.id !755
  %90 = getelementptr inbounds i32, i32* %83, i64 %89, !dbg !736, !psr.id !756
  store i32 %88, i32* %90, align 4, !dbg !736, !psr.id !757
  %91 = add i32 %82, 1, !dbg !736, !psr.id !758
  call void @llvm.dbg.value(metadata i32 %91, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !759
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !760, !psr.id !762
  call void @llvm.dbg.value(metadata i32* %92, metadata !763, metadata !DIExpression()), !dbg !764, !psr.id !765
  %93 = mul i32 %91, 4, !dbg !760, !psr.id !766
  %94 = zext i32 %93 to i64, !dbg !760, !psr.id !767
  %95 = getelementptr inbounds i8, i8* %3, i64 %94, !dbg !760, !psr.id !768
  call void @llvm.dbg.value(metadata i8* %95, metadata !769, metadata !DIExpression()), !dbg !764, !psr.id !770
  %96 = call i32 @load32(i8* %95), !dbg !760, !psr.id !771
  %97 = call i32 @__uint32_identity(i32 %96), !dbg !760, !psr.id !772
  call void @llvm.dbg.value(metadata i32 %97, metadata !773, metadata !DIExpression()), !dbg !764, !psr.id !774
  call void @llvm.dbg.value(metadata i32 %97, metadata !775, metadata !DIExpression()), !dbg !764, !psr.id !776
  call void @llvm.dbg.value(metadata i32 %97, metadata !777, metadata !DIExpression()), !dbg !764, !psr.id !778
  %98 = zext i32 %91 to i64, !dbg !760, !psr.id !779
  %99 = getelementptr inbounds i32, i32* %92, i64 %98, !dbg !760, !psr.id !780
  store i32 %97, i32* %99, align 4, !dbg !760, !psr.id !781
  %100 = add i32 %91, 1, !dbg !760, !psr.id !782
  call void @llvm.dbg.value(metadata i32 %100, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !783
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !784, !psr.id !786
  call void @llvm.dbg.value(metadata i32* %101, metadata !787, metadata !DIExpression()), !dbg !788, !psr.id !789
  %102 = mul i32 %100, 4, !dbg !784, !psr.id !790
  %103 = zext i32 %102 to i64, !dbg !784, !psr.id !791
  %104 = getelementptr inbounds i8, i8* %3, i64 %103, !dbg !784, !psr.id !792
  call void @llvm.dbg.value(metadata i8* %104, metadata !793, metadata !DIExpression()), !dbg !788, !psr.id !794
  %105 = call i32 @load32(i8* %104), !dbg !784, !psr.id !795
  %106 = call i32 @__uint32_identity(i32 %105), !dbg !784, !psr.id !796
  call void @llvm.dbg.value(metadata i32 %106, metadata !797, metadata !DIExpression()), !dbg !788, !psr.id !798
  call void @llvm.dbg.value(metadata i32 %106, metadata !799, metadata !DIExpression()), !dbg !788, !psr.id !800
  call void @llvm.dbg.value(metadata i32 %106, metadata !801, metadata !DIExpression()), !dbg !788, !psr.id !802
  %107 = zext i32 %100 to i64, !dbg !784, !psr.id !803
  %108 = getelementptr inbounds i32, i32* %101, i64 %107, !dbg !784, !psr.id !804
  store i32 %106, i32* %108, align 4, !dbg !784, !psr.id !805
  %109 = add i32 %100, 1, !dbg !784, !psr.id !806
  call void @llvm.dbg.value(metadata i32 %109, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !807
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !808, !psr.id !810
  call void @llvm.dbg.value(metadata i32* %110, metadata !811, metadata !DIExpression()), !dbg !812, !psr.id !813
  %111 = mul i32 %109, 4, !dbg !808, !psr.id !814
  %112 = zext i32 %111 to i64, !dbg !808, !psr.id !815
  %113 = getelementptr inbounds i8, i8* %3, i64 %112, !dbg !808, !psr.id !816
  call void @llvm.dbg.value(metadata i8* %113, metadata !817, metadata !DIExpression()), !dbg !812, !psr.id !818
  %114 = call i32 @load32(i8* %113), !dbg !808, !psr.id !819
  %115 = call i32 @__uint32_identity(i32 %114), !dbg !808, !psr.id !820
  call void @llvm.dbg.value(metadata i32 %115, metadata !821, metadata !DIExpression()), !dbg !812, !psr.id !822
  call void @llvm.dbg.value(metadata i32 %115, metadata !823, metadata !DIExpression()), !dbg !812, !psr.id !824
  call void @llvm.dbg.value(metadata i32 %115, metadata !825, metadata !DIExpression()), !dbg !812, !psr.id !826
  %116 = zext i32 %109 to i64, !dbg !808, !psr.id !827
  %117 = getelementptr inbounds i32, i32* %110, i64 %116, !dbg !808, !psr.id !828
  store i32 %115, i32* %117, align 4, !dbg !808, !psr.id !829
  %118 = add i32 %109, 1, !dbg !808, !psr.id !830
  call void @llvm.dbg.value(metadata i32 %118, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !831
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !832, !psr.id !834
  call void @llvm.dbg.value(metadata i32* %119, metadata !835, metadata !DIExpression()), !dbg !836, !psr.id !837
  %120 = mul i32 %118, 4, !dbg !832, !psr.id !838
  %121 = zext i32 %120 to i64, !dbg !832, !psr.id !839
  %122 = getelementptr inbounds i8, i8* %3, i64 %121, !dbg !832, !psr.id !840
  call void @llvm.dbg.value(metadata i8* %122, metadata !841, metadata !DIExpression()), !dbg !836, !psr.id !842
  %123 = call i32 @load32(i8* %122), !dbg !832, !psr.id !843
  %124 = call i32 @__uint32_identity(i32 %123), !dbg !832, !psr.id !844
  call void @llvm.dbg.value(metadata i32 %124, metadata !845, metadata !DIExpression()), !dbg !836, !psr.id !846
  call void @llvm.dbg.value(metadata i32 %124, metadata !847, metadata !DIExpression()), !dbg !836, !psr.id !848
  call void @llvm.dbg.value(metadata i32 %124, metadata !849, metadata !DIExpression()), !dbg !836, !psr.id !850
  %125 = zext i32 %118 to i64, !dbg !832, !psr.id !851
  %126 = getelementptr inbounds i32, i32* %119, i64 %125, !dbg !832, !psr.id !852
  store i32 %124, i32* %126, align 4, !dbg !832, !psr.id !853
  %127 = add i32 %118, 1, !dbg !832, !psr.id !854
  call void @llvm.dbg.value(metadata i32 %127, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !855
  %128 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !856, !psr.id !858
  call void @llvm.dbg.value(metadata i32* %128, metadata !859, metadata !DIExpression()), !dbg !860, !psr.id !861
  %129 = mul i32 %127, 4, !dbg !856, !psr.id !862
  %130 = zext i32 %129 to i64, !dbg !856, !psr.id !863
  %131 = getelementptr inbounds i8, i8* %3, i64 %130, !dbg !856, !psr.id !864
  call void @llvm.dbg.value(metadata i8* %131, metadata !865, metadata !DIExpression()), !dbg !860, !psr.id !866
  %132 = call i32 @load32(i8* %131), !dbg !856, !psr.id !867
  %133 = call i32 @__uint32_identity(i32 %132), !dbg !856, !psr.id !868
  call void @llvm.dbg.value(metadata i32 %133, metadata !869, metadata !DIExpression()), !dbg !860, !psr.id !870
  call void @llvm.dbg.value(metadata i32 %133, metadata !871, metadata !DIExpression()), !dbg !860, !psr.id !872
  call void @llvm.dbg.value(metadata i32 %133, metadata !873, metadata !DIExpression()), !dbg !860, !psr.id !874
  %134 = zext i32 %127 to i64, !dbg !856, !psr.id !875
  %135 = getelementptr inbounds i32, i32* %128, i64 %134, !dbg !856, !psr.id !876
  store i32 %133, i32* %135, align 4, !dbg !856, !psr.id !877
  %136 = add i32 %127, 1, !dbg !856, !psr.id !878
  call void @llvm.dbg.value(metadata i32 %136, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !879
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !880, !psr.id !882
  call void @llvm.dbg.value(metadata i32* %137, metadata !883, metadata !DIExpression()), !dbg !884, !psr.id !885
  %138 = mul i32 %136, 4, !dbg !880, !psr.id !886
  %139 = zext i32 %138 to i64, !dbg !880, !psr.id !887
  %140 = getelementptr inbounds i8, i8* %3, i64 %139, !dbg !880, !psr.id !888
  call void @llvm.dbg.value(metadata i8* %140, metadata !889, metadata !DIExpression()), !dbg !884, !psr.id !890
  %141 = call i32 @load32(i8* %140), !dbg !880, !psr.id !891
  %142 = call i32 @__uint32_identity(i32 %141), !dbg !880, !psr.id !892
  call void @llvm.dbg.value(metadata i32 %142, metadata !893, metadata !DIExpression()), !dbg !884, !psr.id !894
  call void @llvm.dbg.value(metadata i32 %142, metadata !895, metadata !DIExpression()), !dbg !884, !psr.id !896
  call void @llvm.dbg.value(metadata i32 %142, metadata !897, metadata !DIExpression()), !dbg !884, !psr.id !898
  %143 = zext i32 %136 to i64, !dbg !880, !psr.id !899
  %144 = getelementptr inbounds i32, i32* %137, i64 %143, !dbg !880, !psr.id !900
  store i32 %142, i32* %144, align 4, !dbg !880, !psr.id !901
  %145 = add i32 %136, 1, !dbg !880, !psr.id !902
  call void @llvm.dbg.value(metadata i32 %145, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !903
  %146 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !904, !psr.id !906
  call void @llvm.dbg.value(metadata i32* %146, metadata !907, metadata !DIExpression()), !dbg !908, !psr.id !909
  %147 = mul i32 %145, 4, !dbg !904, !psr.id !910
  %148 = zext i32 %147 to i64, !dbg !904, !psr.id !911
  %149 = getelementptr inbounds i8, i8* %3, i64 %148, !dbg !904, !psr.id !912
  call void @llvm.dbg.value(metadata i8* %149, metadata !913, metadata !DIExpression()), !dbg !908, !psr.id !914
  %150 = call i32 @load32(i8* %149), !dbg !904, !psr.id !915
  %151 = call i32 @__uint32_identity(i32 %150), !dbg !904, !psr.id !916
  call void @llvm.dbg.value(metadata i32 %151, metadata !917, metadata !DIExpression()), !dbg !908, !psr.id !918
  call void @llvm.dbg.value(metadata i32 %151, metadata !919, metadata !DIExpression()), !dbg !908, !psr.id !920
  call void @llvm.dbg.value(metadata i32 %151, metadata !921, metadata !DIExpression()), !dbg !908, !psr.id !922
  %152 = zext i32 %145 to i64, !dbg !904, !psr.id !923
  %153 = getelementptr inbounds i32, i32* %146, i64 %152, !dbg !904, !psr.id !924
  store i32 %151, i32* %153, align 4, !dbg !904, !psr.id !925
  %154 = add i32 %145, 1, !dbg !904, !psr.id !926
  call void @llvm.dbg.value(metadata i32 %154, metadata !540, metadata !DIExpression()), !dbg !542, !psr.id !927
  br label %155, !dbg !928, !psr.id !929

155:                                              ; preds = %10
  br label %156, !dbg !930, !psr.id !931

156:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 0, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !935
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !936, !psr.id !938
  call void @llvm.dbg.value(metadata i32* %157, metadata !939, metadata !DIExpression()), !dbg !940, !psr.id !941
  %158 = zext i32 0 to i64, !dbg !936, !psr.id !942
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %158, !dbg !936, !psr.id !943
  %160 = load i32, i32* %159, align 4, !dbg !936, !psr.id !944
  %161 = zext i32 0 to i64, !dbg !936, !psr.id !945
  %162 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %161, !dbg !936, !psr.id !946
  %163 = load i32, i32* %162, align 4, !dbg !936, !psr.id !947
  %164 = xor i32 %160, %163, !dbg !936, !psr.id !948
  call void @llvm.dbg.value(metadata i32 %164, metadata !949, metadata !DIExpression()), !dbg !940, !psr.id !950
  %165 = zext i32 0 to i64, !dbg !936, !psr.id !951
  %166 = getelementptr inbounds i32, i32* %157, i64 %165, !dbg !936, !psr.id !952
  store i32 %164, i32* %166, align 4, !dbg !936, !psr.id !953
  %167 = add i32 0, 1, !dbg !936, !psr.id !954
  call void @llvm.dbg.value(metadata i32 %167, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !955
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !956, !psr.id !958
  call void @llvm.dbg.value(metadata i32* %168, metadata !959, metadata !DIExpression()), !dbg !960, !psr.id !961
  %169 = zext i32 %167 to i64, !dbg !956, !psr.id !962
  %170 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %169, !dbg !956, !psr.id !963
  %171 = load i32, i32* %170, align 4, !dbg !956, !psr.id !964
  %172 = zext i32 %167 to i64, !dbg !956, !psr.id !965
  %173 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %172, !dbg !956, !psr.id !966
  %174 = load i32, i32* %173, align 4, !dbg !956, !psr.id !967
  %175 = xor i32 %171, %174, !dbg !956, !psr.id !968
  call void @llvm.dbg.value(metadata i32 %175, metadata !969, metadata !DIExpression()), !dbg !960, !psr.id !970
  %176 = zext i32 %167 to i64, !dbg !956, !psr.id !971
  %177 = getelementptr inbounds i32, i32* %168, i64 %176, !dbg !956, !psr.id !972
  store i32 %175, i32* %177, align 4, !dbg !956, !psr.id !973
  %178 = add i32 %167, 1, !dbg !956, !psr.id !974
  call void @llvm.dbg.value(metadata i32 %178, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !975
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !976, !psr.id !978
  call void @llvm.dbg.value(metadata i32* %179, metadata !979, metadata !DIExpression()), !dbg !980, !psr.id !981
  %180 = zext i32 %178 to i64, !dbg !976, !psr.id !982
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %180, !dbg !976, !psr.id !983
  %182 = load i32, i32* %181, align 4, !dbg !976, !psr.id !984
  %183 = zext i32 %178 to i64, !dbg !976, !psr.id !985
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %183, !dbg !976, !psr.id !986
  %185 = load i32, i32* %184, align 4, !dbg !976, !psr.id !987
  %186 = xor i32 %182, %185, !dbg !976, !psr.id !988
  call void @llvm.dbg.value(metadata i32 %186, metadata !989, metadata !DIExpression()), !dbg !980, !psr.id !990
  %187 = zext i32 %178 to i64, !dbg !976, !psr.id !991
  %188 = getelementptr inbounds i32, i32* %179, i64 %187, !dbg !976, !psr.id !992
  store i32 %186, i32* %188, align 4, !dbg !976, !psr.id !993
  %189 = add i32 %178, 1, !dbg !976, !psr.id !994
  call void @llvm.dbg.value(metadata i32 %189, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !995
  %190 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !996, !psr.id !998
  call void @llvm.dbg.value(metadata i32* %190, metadata !999, metadata !DIExpression()), !dbg !1000, !psr.id !1001
  %191 = zext i32 %189 to i64, !dbg !996, !psr.id !1002
  %192 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %191, !dbg !996, !psr.id !1003
  %193 = load i32, i32* %192, align 4, !dbg !996, !psr.id !1004
  %194 = zext i32 %189 to i64, !dbg !996, !psr.id !1005
  %195 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %194, !dbg !996, !psr.id !1006
  %196 = load i32, i32* %195, align 4, !dbg !996, !psr.id !1007
  %197 = xor i32 %193, %196, !dbg !996, !psr.id !1008
  call void @llvm.dbg.value(metadata i32 %197, metadata !1009, metadata !DIExpression()), !dbg !1000, !psr.id !1010
  %198 = zext i32 %189 to i64, !dbg !996, !psr.id !1011
  %199 = getelementptr inbounds i32, i32* %190, i64 %198, !dbg !996, !psr.id !1012
  store i32 %197, i32* %199, align 4, !dbg !996, !psr.id !1013
  %200 = add i32 %189, 1, !dbg !996, !psr.id !1014
  call void @llvm.dbg.value(metadata i32 %200, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1015
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1016, !psr.id !1018
  call void @llvm.dbg.value(metadata i32* %201, metadata !1019, metadata !DIExpression()), !dbg !1020, !psr.id !1021
  %202 = zext i32 %200 to i64, !dbg !1016, !psr.id !1022
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %202, !dbg !1016, !psr.id !1023
  %204 = load i32, i32* %203, align 4, !dbg !1016, !psr.id !1024
  %205 = zext i32 %200 to i64, !dbg !1016, !psr.id !1025
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %205, !dbg !1016, !psr.id !1026
  %207 = load i32, i32* %206, align 4, !dbg !1016, !psr.id !1027
  %208 = xor i32 %204, %207, !dbg !1016, !psr.id !1028
  call void @llvm.dbg.value(metadata i32 %208, metadata !1029, metadata !DIExpression()), !dbg !1020, !psr.id !1030
  %209 = zext i32 %200 to i64, !dbg !1016, !psr.id !1031
  %210 = getelementptr inbounds i32, i32* %201, i64 %209, !dbg !1016, !psr.id !1032
  store i32 %208, i32* %210, align 4, !dbg !1016, !psr.id !1033
  %211 = add i32 %200, 1, !dbg !1016, !psr.id !1034
  call void @llvm.dbg.value(metadata i32 %211, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1035
  %212 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1036, !psr.id !1038
  call void @llvm.dbg.value(metadata i32* %212, metadata !1039, metadata !DIExpression()), !dbg !1040, !psr.id !1041
  %213 = zext i32 %211 to i64, !dbg !1036, !psr.id !1042
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %213, !dbg !1036, !psr.id !1043
  %215 = load i32, i32* %214, align 4, !dbg !1036, !psr.id !1044
  %216 = zext i32 %211 to i64, !dbg !1036, !psr.id !1045
  %217 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %216, !dbg !1036, !psr.id !1046
  %218 = load i32, i32* %217, align 4, !dbg !1036, !psr.id !1047
  %219 = xor i32 %215, %218, !dbg !1036, !psr.id !1048
  call void @llvm.dbg.value(metadata i32 %219, metadata !1049, metadata !DIExpression()), !dbg !1040, !psr.id !1050
  %220 = zext i32 %211 to i64, !dbg !1036, !psr.id !1051
  %221 = getelementptr inbounds i32, i32* %212, i64 %220, !dbg !1036, !psr.id !1052
  store i32 %219, i32* %221, align 4, !dbg !1036, !psr.id !1053
  %222 = add i32 %211, 1, !dbg !1036, !psr.id !1054
  call void @llvm.dbg.value(metadata i32 %222, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1055
  %223 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1056, !psr.id !1058
  call void @llvm.dbg.value(metadata i32* %223, metadata !1059, metadata !DIExpression()), !dbg !1060, !psr.id !1061
  %224 = zext i32 %222 to i64, !dbg !1056, !psr.id !1062
  %225 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %224, !dbg !1056, !psr.id !1063
  %226 = load i32, i32* %225, align 4, !dbg !1056, !psr.id !1064
  %227 = zext i32 %222 to i64, !dbg !1056, !psr.id !1065
  %228 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %227, !dbg !1056, !psr.id !1066
  %229 = load i32, i32* %228, align 4, !dbg !1056, !psr.id !1067
  %230 = xor i32 %226, %229, !dbg !1056, !psr.id !1068
  call void @llvm.dbg.value(metadata i32 %230, metadata !1069, metadata !DIExpression()), !dbg !1060, !psr.id !1070
  %231 = zext i32 %222 to i64, !dbg !1056, !psr.id !1071
  %232 = getelementptr inbounds i32, i32* %223, i64 %231, !dbg !1056, !psr.id !1072
  store i32 %230, i32* %232, align 4, !dbg !1056, !psr.id !1073
  %233 = add i32 %222, 1, !dbg !1056, !psr.id !1074
  call void @llvm.dbg.value(metadata i32 %233, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1075
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1076, !psr.id !1078
  call void @llvm.dbg.value(metadata i32* %234, metadata !1079, metadata !DIExpression()), !dbg !1080, !psr.id !1081
  %235 = zext i32 %233 to i64, !dbg !1076, !psr.id !1082
  %236 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %235, !dbg !1076, !psr.id !1083
  %237 = load i32, i32* %236, align 4, !dbg !1076, !psr.id !1084
  %238 = zext i32 %233 to i64, !dbg !1076, !psr.id !1085
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %238, !dbg !1076, !psr.id !1086
  %240 = load i32, i32* %239, align 4, !dbg !1076, !psr.id !1087
  %241 = xor i32 %237, %240, !dbg !1076, !psr.id !1088
  call void @llvm.dbg.value(metadata i32 %241, metadata !1089, metadata !DIExpression()), !dbg !1080, !psr.id !1090
  %242 = zext i32 %233 to i64, !dbg !1076, !psr.id !1091
  %243 = getelementptr inbounds i32, i32* %234, i64 %242, !dbg !1076, !psr.id !1092
  store i32 %241, i32* %243, align 4, !dbg !1076, !psr.id !1093
  %244 = add i32 %233, 1, !dbg !1076, !psr.id !1094
  call void @llvm.dbg.value(metadata i32 %244, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1095
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1096, !psr.id !1098
  call void @llvm.dbg.value(metadata i32* %245, metadata !1099, metadata !DIExpression()), !dbg !1100, !psr.id !1101
  %246 = zext i32 %244 to i64, !dbg !1096, !psr.id !1102
  %247 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %246, !dbg !1096, !psr.id !1103
  %248 = load i32, i32* %247, align 4, !dbg !1096, !psr.id !1104
  %249 = zext i32 %244 to i64, !dbg !1096, !psr.id !1105
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %249, !dbg !1096, !psr.id !1106
  %251 = load i32, i32* %250, align 4, !dbg !1096, !psr.id !1107
  %252 = xor i32 %248, %251, !dbg !1096, !psr.id !1108
  call void @llvm.dbg.value(metadata i32 %252, metadata !1109, metadata !DIExpression()), !dbg !1100, !psr.id !1110
  %253 = zext i32 %244 to i64, !dbg !1096, !psr.id !1111
  %254 = getelementptr inbounds i32, i32* %245, i64 %253, !dbg !1096, !psr.id !1112
  store i32 %252, i32* %254, align 4, !dbg !1096, !psr.id !1113
  %255 = add i32 %244, 1, !dbg !1096, !psr.id !1114
  call void @llvm.dbg.value(metadata i32 %255, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1115
  %256 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1116, !psr.id !1118
  call void @llvm.dbg.value(metadata i32* %256, metadata !1119, metadata !DIExpression()), !dbg !1120, !psr.id !1121
  %257 = zext i32 %255 to i64, !dbg !1116, !psr.id !1122
  %258 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %257, !dbg !1116, !psr.id !1123
  %259 = load i32, i32* %258, align 4, !dbg !1116, !psr.id !1124
  %260 = zext i32 %255 to i64, !dbg !1116, !psr.id !1125
  %261 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %260, !dbg !1116, !psr.id !1126
  %262 = load i32, i32* %261, align 4, !dbg !1116, !psr.id !1127
  %263 = xor i32 %259, %262, !dbg !1116, !psr.id !1128
  call void @llvm.dbg.value(metadata i32 %263, metadata !1129, metadata !DIExpression()), !dbg !1120, !psr.id !1130
  %264 = zext i32 %255 to i64, !dbg !1116, !psr.id !1131
  %265 = getelementptr inbounds i32, i32* %256, i64 %264, !dbg !1116, !psr.id !1132
  store i32 %263, i32* %265, align 4, !dbg !1116, !psr.id !1133
  %266 = add i32 %255, 1, !dbg !1116, !psr.id !1134
  call void @llvm.dbg.value(metadata i32 %266, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1135
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1136, !psr.id !1138
  call void @llvm.dbg.value(metadata i32* %267, metadata !1139, metadata !DIExpression()), !dbg !1140, !psr.id !1141
  %268 = zext i32 %266 to i64, !dbg !1136, !psr.id !1142
  %269 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %268, !dbg !1136, !psr.id !1143
  %270 = load i32, i32* %269, align 4, !dbg !1136, !psr.id !1144
  %271 = zext i32 %266 to i64, !dbg !1136, !psr.id !1145
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %271, !dbg !1136, !psr.id !1146
  %273 = load i32, i32* %272, align 4, !dbg !1136, !psr.id !1147
  %274 = xor i32 %270, %273, !dbg !1136, !psr.id !1148
  call void @llvm.dbg.value(metadata i32 %274, metadata !1149, metadata !DIExpression()), !dbg !1140, !psr.id !1150
  %275 = zext i32 %266 to i64, !dbg !1136, !psr.id !1151
  %276 = getelementptr inbounds i32, i32* %267, i64 %275, !dbg !1136, !psr.id !1152
  store i32 %274, i32* %276, align 4, !dbg !1136, !psr.id !1153
  %277 = add i32 %266, 1, !dbg !1136, !psr.id !1154
  call void @llvm.dbg.value(metadata i32 %277, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1155
  %278 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1156, !psr.id !1158
  call void @llvm.dbg.value(metadata i32* %278, metadata !1159, metadata !DIExpression()), !dbg !1160, !psr.id !1161
  %279 = zext i32 %277 to i64, !dbg !1156, !psr.id !1162
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %279, !dbg !1156, !psr.id !1163
  %281 = load i32, i32* %280, align 4, !dbg !1156, !psr.id !1164
  %282 = zext i32 %277 to i64, !dbg !1156, !psr.id !1165
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %282, !dbg !1156, !psr.id !1166
  %284 = load i32, i32* %283, align 4, !dbg !1156, !psr.id !1167
  %285 = xor i32 %281, %284, !dbg !1156, !psr.id !1168
  call void @llvm.dbg.value(metadata i32 %285, metadata !1169, metadata !DIExpression()), !dbg !1160, !psr.id !1170
  %286 = zext i32 %277 to i64, !dbg !1156, !psr.id !1171
  %287 = getelementptr inbounds i32, i32* %278, i64 %286, !dbg !1156, !psr.id !1172
  store i32 %285, i32* %287, align 4, !dbg !1156, !psr.id !1173
  %288 = add i32 %277, 1, !dbg !1156, !psr.id !1174
  call void @llvm.dbg.value(metadata i32 %288, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1175
  %289 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1176, !psr.id !1178
  call void @llvm.dbg.value(metadata i32* %289, metadata !1179, metadata !DIExpression()), !dbg !1180, !psr.id !1181
  %290 = zext i32 %288 to i64, !dbg !1176, !psr.id !1182
  %291 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %290, !dbg !1176, !psr.id !1183
  %292 = load i32, i32* %291, align 4, !dbg !1176, !psr.id !1184
  %293 = zext i32 %288 to i64, !dbg !1176, !psr.id !1185
  %294 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %293, !dbg !1176, !psr.id !1186
  %295 = load i32, i32* %294, align 4, !dbg !1176, !psr.id !1187
  %296 = xor i32 %292, %295, !dbg !1176, !psr.id !1188
  call void @llvm.dbg.value(metadata i32 %296, metadata !1189, metadata !DIExpression()), !dbg !1180, !psr.id !1190
  %297 = zext i32 %288 to i64, !dbg !1176, !psr.id !1191
  %298 = getelementptr inbounds i32, i32* %289, i64 %297, !dbg !1176, !psr.id !1192
  store i32 %296, i32* %298, align 4, !dbg !1176, !psr.id !1193
  %299 = add i32 %288, 1, !dbg !1176, !psr.id !1194
  call void @llvm.dbg.value(metadata i32 %299, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1195
  %300 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1196, !psr.id !1198
  call void @llvm.dbg.value(metadata i32* %300, metadata !1199, metadata !DIExpression()), !dbg !1200, !psr.id !1201
  %301 = zext i32 %299 to i64, !dbg !1196, !psr.id !1202
  %302 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %301, !dbg !1196, !psr.id !1203
  %303 = load i32, i32* %302, align 4, !dbg !1196, !psr.id !1204
  %304 = zext i32 %299 to i64, !dbg !1196, !psr.id !1205
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %304, !dbg !1196, !psr.id !1206
  %306 = load i32, i32* %305, align 4, !dbg !1196, !psr.id !1207
  %307 = xor i32 %303, %306, !dbg !1196, !psr.id !1208
  call void @llvm.dbg.value(metadata i32 %307, metadata !1209, metadata !DIExpression()), !dbg !1200, !psr.id !1210
  %308 = zext i32 %299 to i64, !dbg !1196, !psr.id !1211
  %309 = getelementptr inbounds i32, i32* %300, i64 %308, !dbg !1196, !psr.id !1212
  store i32 %307, i32* %309, align 4, !dbg !1196, !psr.id !1213
  %310 = add i32 %299, 1, !dbg !1196, !psr.id !1214
  call void @llvm.dbg.value(metadata i32 %310, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1215
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1216, !psr.id !1218
  call void @llvm.dbg.value(metadata i32* %311, metadata !1219, metadata !DIExpression()), !dbg !1220, !psr.id !1221
  %312 = zext i32 %310 to i64, !dbg !1216, !psr.id !1222
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %312, !dbg !1216, !psr.id !1223
  %314 = load i32, i32* %313, align 4, !dbg !1216, !psr.id !1224
  %315 = zext i32 %310 to i64, !dbg !1216, !psr.id !1225
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %315, !dbg !1216, !psr.id !1226
  %317 = load i32, i32* %316, align 4, !dbg !1216, !psr.id !1227
  %318 = xor i32 %314, %317, !dbg !1216, !psr.id !1228
  call void @llvm.dbg.value(metadata i32 %318, metadata !1229, metadata !DIExpression()), !dbg !1220, !psr.id !1230
  %319 = zext i32 %310 to i64, !dbg !1216, !psr.id !1231
  %320 = getelementptr inbounds i32, i32* %311, i64 %319, !dbg !1216, !psr.id !1232
  store i32 %318, i32* %320, align 4, !dbg !1216, !psr.id !1233
  %321 = add i32 %310, 1, !dbg !1216, !psr.id !1234
  call void @llvm.dbg.value(metadata i32 %321, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1235
  %322 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1236, !psr.id !1238
  call void @llvm.dbg.value(metadata i32* %322, metadata !1239, metadata !DIExpression()), !dbg !1240, !psr.id !1241
  %323 = zext i32 %321 to i64, !dbg !1236, !psr.id !1242
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %323, !dbg !1236, !psr.id !1243
  %325 = load i32, i32* %324, align 4, !dbg !1236, !psr.id !1244
  %326 = zext i32 %321 to i64, !dbg !1236, !psr.id !1245
  %327 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %326, !dbg !1236, !psr.id !1246
  %328 = load i32, i32* %327, align 4, !dbg !1236, !psr.id !1247
  %329 = xor i32 %325, %328, !dbg !1236, !psr.id !1248
  call void @llvm.dbg.value(metadata i32 %329, metadata !1249, metadata !DIExpression()), !dbg !1240, !psr.id !1250
  %330 = zext i32 %321 to i64, !dbg !1236, !psr.id !1251
  %331 = getelementptr inbounds i32, i32* %322, i64 %330, !dbg !1236, !psr.id !1252
  store i32 %329, i32* %331, align 4, !dbg !1236, !psr.id !1253
  %332 = add i32 %321, 1, !dbg !1236, !psr.id !1254
  call void @llvm.dbg.value(metadata i32 %332, metadata !932, metadata !DIExpression()), !dbg !934, !psr.id !1255
  br label %333, !dbg !1256, !psr.id !1257

333:                                              ; preds = %156
  br label %334, !dbg !1258, !psr.id !1259

334:                                              ; preds = %333
  call void @llvm.dbg.value(metadata i32 0, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1263
  %335 = mul i32 0, 4, !dbg !1264, !psr.id !1266
  %336 = zext i32 %335 to i64, !dbg !1264, !psr.id !1267
  %337 = getelementptr inbounds i8, i8* %1, i64 %336, !dbg !1264, !psr.id !1268, !PointTainted !467
  %338 = zext i32 0 to i64, !dbg !1264, !psr.id !1269
  %339 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %338, !dbg !1264, !psr.id !1270
  %340 = load i32, i32* %339, align 4, !dbg !1264, !psr.id !1271
  %341 = call i32 @__uint32_identity(i32 %340), !dbg !1264, !psr.id !1272
  call void @store32(i8* %337, i32 %341), !dbg !1264, !psr.id !1273
  %342 = add i32 0, 1, !dbg !1264, !psr.id !1274
  call void @llvm.dbg.value(metadata i32 %342, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1275
  %343 = mul i32 %342, 4, !dbg !1276, !psr.id !1278
  %344 = zext i32 %343 to i64, !dbg !1276, !psr.id !1279
  %345 = getelementptr inbounds i8, i8* %1, i64 %344, !dbg !1276, !psr.id !1280, !PointTainted !467
  %346 = zext i32 %342 to i64, !dbg !1276, !psr.id !1281
  %347 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %346, !dbg !1276, !psr.id !1282
  %348 = load i32, i32* %347, align 4, !dbg !1276, !psr.id !1283
  %349 = call i32 @__uint32_identity(i32 %348), !dbg !1276, !psr.id !1284
  call void @store32(i8* %345, i32 %349), !dbg !1276, !psr.id !1285
  %350 = add i32 %342, 1, !dbg !1276, !psr.id !1286
  call void @llvm.dbg.value(metadata i32 %350, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1287
  %351 = mul i32 %350, 4, !dbg !1288, !psr.id !1290
  %352 = zext i32 %351 to i64, !dbg !1288, !psr.id !1291
  %353 = getelementptr inbounds i8, i8* %1, i64 %352, !dbg !1288, !psr.id !1292, !PointTainted !467
  %354 = zext i32 %350 to i64, !dbg !1288, !psr.id !1293
  %355 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %354, !dbg !1288, !psr.id !1294
  %356 = load i32, i32* %355, align 4, !dbg !1288, !psr.id !1295
  %357 = call i32 @__uint32_identity(i32 %356), !dbg !1288, !psr.id !1296
  call void @store32(i8* %353, i32 %357), !dbg !1288, !psr.id !1297
  %358 = add i32 %350, 1, !dbg !1288, !psr.id !1298
  call void @llvm.dbg.value(metadata i32 %358, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1299
  %359 = mul i32 %358, 4, !dbg !1300, !psr.id !1302
  %360 = zext i32 %359 to i64, !dbg !1300, !psr.id !1303
  %361 = getelementptr inbounds i8, i8* %1, i64 %360, !dbg !1300, !psr.id !1304, !PointTainted !467
  %362 = zext i32 %358 to i64, !dbg !1300, !psr.id !1305
  %363 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %362, !dbg !1300, !psr.id !1306
  %364 = load i32, i32* %363, align 4, !dbg !1300, !psr.id !1307
  %365 = call i32 @__uint32_identity(i32 %364), !dbg !1300, !psr.id !1308
  call void @store32(i8* %361, i32 %365), !dbg !1300, !psr.id !1309
  %366 = add i32 %358, 1, !dbg !1300, !psr.id !1310
  call void @llvm.dbg.value(metadata i32 %366, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1311
  %367 = mul i32 %366, 4, !dbg !1312, !psr.id !1314
  %368 = zext i32 %367 to i64, !dbg !1312, !psr.id !1315
  %369 = getelementptr inbounds i8, i8* %1, i64 %368, !dbg !1312, !psr.id !1316, !PointTainted !467
  %370 = zext i32 %366 to i64, !dbg !1312, !psr.id !1317
  %371 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %370, !dbg !1312, !psr.id !1318
  %372 = load i32, i32* %371, align 4, !dbg !1312, !psr.id !1319
  %373 = call i32 @__uint32_identity(i32 %372), !dbg !1312, !psr.id !1320
  call void @store32(i8* %369, i32 %373), !dbg !1312, !psr.id !1321
  %374 = add i32 %366, 1, !dbg !1312, !psr.id !1322
  call void @llvm.dbg.value(metadata i32 %374, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1323
  %375 = mul i32 %374, 4, !dbg !1324, !psr.id !1326
  %376 = zext i32 %375 to i64, !dbg !1324, !psr.id !1327
  %377 = getelementptr inbounds i8, i8* %1, i64 %376, !dbg !1324, !psr.id !1328, !PointTainted !467
  %378 = zext i32 %374 to i64, !dbg !1324, !psr.id !1329
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %378, !dbg !1324, !psr.id !1330
  %380 = load i32, i32* %379, align 4, !dbg !1324, !psr.id !1331
  %381 = call i32 @__uint32_identity(i32 %380), !dbg !1324, !psr.id !1332
  call void @store32(i8* %377, i32 %381), !dbg !1324, !psr.id !1333
  %382 = add i32 %374, 1, !dbg !1324, !psr.id !1334
  call void @llvm.dbg.value(metadata i32 %382, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1335
  %383 = mul i32 %382, 4, !dbg !1336, !psr.id !1338
  %384 = zext i32 %383 to i64, !dbg !1336, !psr.id !1339
  %385 = getelementptr inbounds i8, i8* %1, i64 %384, !dbg !1336, !psr.id !1340, !PointTainted !467
  %386 = zext i32 %382 to i64, !dbg !1336, !psr.id !1341
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %386, !dbg !1336, !psr.id !1342
  %388 = load i32, i32* %387, align 4, !dbg !1336, !psr.id !1343
  %389 = call i32 @__uint32_identity(i32 %388), !dbg !1336, !psr.id !1344
  call void @store32(i8* %385, i32 %389), !dbg !1336, !psr.id !1345
  %390 = add i32 %382, 1, !dbg !1336, !psr.id !1346
  call void @llvm.dbg.value(metadata i32 %390, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1347
  %391 = mul i32 %390, 4, !dbg !1348, !psr.id !1350
  %392 = zext i32 %391 to i64, !dbg !1348, !psr.id !1351
  %393 = getelementptr inbounds i8, i8* %1, i64 %392, !dbg !1348, !psr.id !1352, !PointTainted !467
  %394 = zext i32 %390 to i64, !dbg !1348, !psr.id !1353
  %395 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %394, !dbg !1348, !psr.id !1354
  %396 = load i32, i32* %395, align 4, !dbg !1348, !psr.id !1355
  %397 = call i32 @__uint32_identity(i32 %396), !dbg !1348, !psr.id !1356
  call void @store32(i8* %393, i32 %397), !dbg !1348, !psr.id !1357
  %398 = add i32 %390, 1, !dbg !1348, !psr.id !1358
  call void @llvm.dbg.value(metadata i32 %398, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1359
  %399 = mul i32 %398, 4, !dbg !1360, !psr.id !1362
  %400 = zext i32 %399 to i64, !dbg !1360, !psr.id !1363
  %401 = getelementptr inbounds i8, i8* %1, i64 %400, !dbg !1360, !psr.id !1364, !PointTainted !467
  %402 = zext i32 %398 to i64, !dbg !1360, !psr.id !1365
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %402, !dbg !1360, !psr.id !1366
  %404 = load i32, i32* %403, align 4, !dbg !1360, !psr.id !1367
  %405 = call i32 @__uint32_identity(i32 %404), !dbg !1360, !psr.id !1368
  call void @store32(i8* %401, i32 %405), !dbg !1360, !psr.id !1369
  %406 = add i32 %398, 1, !dbg !1360, !psr.id !1370
  call void @llvm.dbg.value(metadata i32 %406, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1371
  %407 = mul i32 %406, 4, !dbg !1372, !psr.id !1374
  %408 = zext i32 %407 to i64, !dbg !1372, !psr.id !1375
  %409 = getelementptr inbounds i8, i8* %1, i64 %408, !dbg !1372, !psr.id !1376, !PointTainted !467
  %410 = zext i32 %406 to i64, !dbg !1372, !psr.id !1377
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %410, !dbg !1372, !psr.id !1378
  %412 = load i32, i32* %411, align 4, !dbg !1372, !psr.id !1379
  %413 = call i32 @__uint32_identity(i32 %412), !dbg !1372, !psr.id !1380
  call void @store32(i8* %409, i32 %413), !dbg !1372, !psr.id !1381
  %414 = add i32 %406, 1, !dbg !1372, !psr.id !1382
  call void @llvm.dbg.value(metadata i32 %414, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1383
  %415 = mul i32 %414, 4, !dbg !1384, !psr.id !1386
  %416 = zext i32 %415 to i64, !dbg !1384, !psr.id !1387
  %417 = getelementptr inbounds i8, i8* %1, i64 %416, !dbg !1384, !psr.id !1388, !PointTainted !467
  %418 = zext i32 %414 to i64, !dbg !1384, !psr.id !1389
  %419 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %418, !dbg !1384, !psr.id !1390
  %420 = load i32, i32* %419, align 4, !dbg !1384, !psr.id !1391
  %421 = call i32 @__uint32_identity(i32 %420), !dbg !1384, !psr.id !1392
  call void @store32(i8* %417, i32 %421), !dbg !1384, !psr.id !1393
  %422 = add i32 %414, 1, !dbg !1384, !psr.id !1394
  call void @llvm.dbg.value(metadata i32 %422, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1395
  %423 = mul i32 %422, 4, !dbg !1396, !psr.id !1398
  %424 = zext i32 %423 to i64, !dbg !1396, !psr.id !1399
  %425 = getelementptr inbounds i8, i8* %1, i64 %424, !dbg !1396, !psr.id !1400, !PointTainted !467
  %426 = zext i32 %422 to i64, !dbg !1396, !psr.id !1401
  %427 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %426, !dbg !1396, !psr.id !1402
  %428 = load i32, i32* %427, align 4, !dbg !1396, !psr.id !1403
  %429 = call i32 @__uint32_identity(i32 %428), !dbg !1396, !psr.id !1404
  call void @store32(i8* %425, i32 %429), !dbg !1396, !psr.id !1405
  %430 = add i32 %422, 1, !dbg !1396, !psr.id !1406
  call void @llvm.dbg.value(metadata i32 %430, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1407
  %431 = mul i32 %430, 4, !dbg !1408, !psr.id !1410
  %432 = zext i32 %431 to i64, !dbg !1408, !psr.id !1411
  %433 = getelementptr inbounds i8, i8* %1, i64 %432, !dbg !1408, !psr.id !1412, !PointTainted !467
  %434 = zext i32 %430 to i64, !dbg !1408, !psr.id !1413
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %434, !dbg !1408, !psr.id !1414
  %436 = load i32, i32* %435, align 4, !dbg !1408, !psr.id !1415
  %437 = call i32 @__uint32_identity(i32 %436), !dbg !1408, !psr.id !1416
  call void @store32(i8* %433, i32 %437), !dbg !1408, !psr.id !1417
  %438 = add i32 %430, 1, !dbg !1408, !psr.id !1418
  call void @llvm.dbg.value(metadata i32 %438, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1419
  %439 = mul i32 %438, 4, !dbg !1420, !psr.id !1422
  %440 = zext i32 %439 to i64, !dbg !1420, !psr.id !1423
  %441 = getelementptr inbounds i8, i8* %1, i64 %440, !dbg !1420, !psr.id !1424, !PointTainted !467
  %442 = zext i32 %438 to i64, !dbg !1420, !psr.id !1425
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %442, !dbg !1420, !psr.id !1426
  %444 = load i32, i32* %443, align 4, !dbg !1420, !psr.id !1427
  %445 = call i32 @__uint32_identity(i32 %444), !dbg !1420, !psr.id !1428
  call void @store32(i8* %441, i32 %445), !dbg !1420, !psr.id !1429
  %446 = add i32 %438, 1, !dbg !1420, !psr.id !1430
  call void @llvm.dbg.value(metadata i32 %446, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1431
  %447 = mul i32 %446, 4, !dbg !1432, !psr.id !1434
  %448 = zext i32 %447 to i64, !dbg !1432, !psr.id !1435
  %449 = getelementptr inbounds i8, i8* %1, i64 %448, !dbg !1432, !psr.id !1436, !PointTainted !467
  %450 = zext i32 %446 to i64, !dbg !1432, !psr.id !1437
  %451 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %450, !dbg !1432, !psr.id !1438
  %452 = load i32, i32* %451, align 4, !dbg !1432, !psr.id !1439
  %453 = call i32 @__uint32_identity(i32 %452), !dbg !1432, !psr.id !1440
  call void @store32(i8* %449, i32 %453), !dbg !1432, !psr.id !1441
  %454 = add i32 %446, 1, !dbg !1432, !psr.id !1442
  call void @llvm.dbg.value(metadata i32 %454, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1443
  %455 = mul i32 %454, 4, !dbg !1444, !psr.id !1446
  %456 = zext i32 %455 to i64, !dbg !1444, !psr.id !1447
  %457 = getelementptr inbounds i8, i8* %1, i64 %456, !dbg !1444, !psr.id !1448, !PointTainted !467
  %458 = zext i32 %454 to i64, !dbg !1444, !psr.id !1449
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %458, !dbg !1444, !psr.id !1450
  %460 = load i32, i32* %459, align 4, !dbg !1444, !psr.id !1451
  %461 = call i32 @__uint32_identity(i32 %460), !dbg !1444, !psr.id !1452
  call void @store32(i8* %457, i32 %461), !dbg !1444, !psr.id !1453
  %462 = add i32 %454, 1, !dbg !1444, !psr.id !1454
  call void @llvm.dbg.value(metadata i32 %462, metadata !1260, metadata !DIExpression()), !dbg !1262, !psr.id !1455
  br label %463, !dbg !1456, !psr.id !1457

463:                                              ; preds = %334
  ret void, !dbg !1458, !psr.id !1459
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_encrypt_last(i32* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 !dbg !1460 {
  %6 = alloca [64 x i8], align 16, !psr.id !1463
  call void @llvm.dbg.value(metadata i32* %0, metadata !1464, metadata !DIExpression()), !dbg !1465, !psr.id !1466
  call void @llvm.dbg.value(metadata i32 %1, metadata !1467, metadata !DIExpression()), !dbg !1465, !psr.id !1468
  call void @llvm.dbg.value(metadata i8* %2, metadata !1469, metadata !DIExpression()), !dbg !1465, !psr.id !1470
  call void @llvm.dbg.value(metadata i32 %3, metadata !1471, metadata !DIExpression()), !dbg !1465, !psr.id !1472
  call void @llvm.dbg.value(metadata i8* %4, metadata !1473, metadata !DIExpression()), !dbg !1465, !psr.id !1474
  call void @llvm.dbg.declare(metadata [64 x i8]* %6, metadata !1475, metadata !DIExpression()), !dbg !1479, !psr.id !1480
  %7 = bitcast [64 x i8]* %6 to i8*, !dbg !1479, !psr.id !1481
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 64, i1 false), !dbg !1479, !psr.id !1482
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !1483, !psr.id !1484
  %9 = zext i32 %1 to i64, !dbg !1485, !psr.id !1486
  %10 = mul i64 %9, 1, !dbg !1487, !psr.id !1488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 1 %4, i64 %10, i1 false), !dbg !1483, !psr.id !1489
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !1490, !psr.id !1491
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !1492, !psr.id !1493
  call void @chacha20_encrypt_block(i32* %0, i8* %11, i32 %3, i8* %12), !dbg !1494, !psr.id !1495
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !1496, !psr.id !1497
  %14 = zext i32 %1 to i64, !dbg !1498, !psr.id !1499
  %15 = mul i64 %14, 1, !dbg !1500, !psr.id !1501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 16 %13, i64 %15, i1 false), !dbg !1496, !psr.id !1502
  ret void, !dbg !1503, !psr.id !1504
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_core(i32* %0, i32* %1, i32 %2) #0 !dbg !1505 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1508, metadata !DIExpression()), !dbg !1509, !psr.id !1510
  call void @llvm.dbg.value(metadata i32* %1, metadata !1511, metadata !DIExpression()), !dbg !1509, !psr.id !1512
  call void @llvm.dbg.value(metadata i32 %2, metadata !1513, metadata !DIExpression()), !dbg !1509, !psr.id !1514
  %4 = bitcast i32* %0 to i8*, !dbg !1515, !psr.id !1516
  %5 = bitcast i32* %1 to i8*, !dbg !1515, !psr.id !1517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 64, i1 false), !dbg !1515, !psr.id !1518
  call void @llvm.dbg.value(metadata i32 %2, metadata !1519, metadata !DIExpression()), !dbg !1509, !psr.id !1520
  %6 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !1521, !psr.id !1522
  %7 = load i32, i32* %6, align 4, !dbg !1521, !psr.id !1523
  %8 = add i32 %7, %2, !dbg !1524, !psr.id !1525
  %9 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !1526, !psr.id !1527
  store i32 %8, i32* %9, align 4, !dbg !1528, !psr.id !1529
  call void @rounds(i32* %0), !dbg !1530, !psr.id !1531
  br label %10, !dbg !1532, !psr.id !1533

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1537
  call void @llvm.dbg.value(metadata i32* %0, metadata !1538, metadata !DIExpression()), !dbg !1540, !psr.id !1541
  %11 = zext i32 0 to i64, !dbg !1542, !psr.id !1543
  %12 = getelementptr inbounds i32, i32* %0, i64 %11, !dbg !1542, !psr.id !1544
  %13 = load i32, i32* %12, align 4, !dbg !1542, !psr.id !1545
  %14 = zext i32 0 to i64, !dbg !1542, !psr.id !1546
  %15 = getelementptr inbounds i32, i32* %1, i64 %14, !dbg !1542, !psr.id !1547
  %16 = load i32, i32* %15, align 4, !dbg !1542, !psr.id !1548
  %17 = add i32 %13, %16, !dbg !1542, !psr.id !1549
  call void @llvm.dbg.value(metadata i32 %17, metadata !1550, metadata !DIExpression()), !dbg !1540, !psr.id !1551
  %18 = zext i32 0 to i64, !dbg !1542, !psr.id !1552
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !1542, !psr.id !1553
  store i32 %17, i32* %19, align 4, !dbg !1542, !psr.id !1554
  %20 = add i32 0, 1, !dbg !1542, !psr.id !1555
  call void @llvm.dbg.value(metadata i32 %20, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1556
  call void @llvm.dbg.value(metadata i32* %0, metadata !1557, metadata !DIExpression()), !dbg !1559, !psr.id !1560
  %21 = zext i32 %20 to i64, !dbg !1561, !psr.id !1562
  %22 = getelementptr inbounds i32, i32* %0, i64 %21, !dbg !1561, !psr.id !1563
  %23 = load i32, i32* %22, align 4, !dbg !1561, !psr.id !1564
  %24 = zext i32 %20 to i64, !dbg !1561, !psr.id !1565
  %25 = getelementptr inbounds i32, i32* %1, i64 %24, !dbg !1561, !psr.id !1566
  %26 = load i32, i32* %25, align 4, !dbg !1561, !psr.id !1567
  %27 = add i32 %23, %26, !dbg !1561, !psr.id !1568
  call void @llvm.dbg.value(metadata i32 %27, metadata !1569, metadata !DIExpression()), !dbg !1559, !psr.id !1570
  %28 = zext i32 %20 to i64, !dbg !1561, !psr.id !1571
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !1561, !psr.id !1572
  store i32 %27, i32* %29, align 4, !dbg !1561, !psr.id !1573
  %30 = add i32 %20, 1, !dbg !1561, !psr.id !1574
  call void @llvm.dbg.value(metadata i32 %30, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1575
  call void @llvm.dbg.value(metadata i32* %0, metadata !1576, metadata !DIExpression()), !dbg !1578, !psr.id !1579
  %31 = zext i32 %30 to i64, !dbg !1580, !psr.id !1581
  %32 = getelementptr inbounds i32, i32* %0, i64 %31, !dbg !1580, !psr.id !1582
  %33 = load i32, i32* %32, align 4, !dbg !1580, !psr.id !1583
  %34 = zext i32 %30 to i64, !dbg !1580, !psr.id !1584
  %35 = getelementptr inbounds i32, i32* %1, i64 %34, !dbg !1580, !psr.id !1585
  %36 = load i32, i32* %35, align 4, !dbg !1580, !psr.id !1586
  %37 = add i32 %33, %36, !dbg !1580, !psr.id !1587
  call void @llvm.dbg.value(metadata i32 %37, metadata !1588, metadata !DIExpression()), !dbg !1578, !psr.id !1589
  %38 = zext i32 %30 to i64, !dbg !1580, !psr.id !1590
  %39 = getelementptr inbounds i32, i32* %0, i64 %38, !dbg !1580, !psr.id !1591
  store i32 %37, i32* %39, align 4, !dbg !1580, !psr.id !1592
  %40 = add i32 %30, 1, !dbg !1580, !psr.id !1593
  call void @llvm.dbg.value(metadata i32 %40, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1594
  call void @llvm.dbg.value(metadata i32* %0, metadata !1595, metadata !DIExpression()), !dbg !1597, !psr.id !1598
  %41 = zext i32 %40 to i64, !dbg !1599, !psr.id !1600
  %42 = getelementptr inbounds i32, i32* %0, i64 %41, !dbg !1599, !psr.id !1601
  %43 = load i32, i32* %42, align 4, !dbg !1599, !psr.id !1602
  %44 = zext i32 %40 to i64, !dbg !1599, !psr.id !1603
  %45 = getelementptr inbounds i32, i32* %1, i64 %44, !dbg !1599, !psr.id !1604
  %46 = load i32, i32* %45, align 4, !dbg !1599, !psr.id !1605
  %47 = add i32 %43, %46, !dbg !1599, !psr.id !1606
  call void @llvm.dbg.value(metadata i32 %47, metadata !1607, metadata !DIExpression()), !dbg !1597, !psr.id !1608
  %48 = zext i32 %40 to i64, !dbg !1599, !psr.id !1609
  %49 = getelementptr inbounds i32, i32* %0, i64 %48, !dbg !1599, !psr.id !1610
  store i32 %47, i32* %49, align 4, !dbg !1599, !psr.id !1611
  %50 = add i32 %40, 1, !dbg !1599, !psr.id !1612
  call void @llvm.dbg.value(metadata i32 %50, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1613
  call void @llvm.dbg.value(metadata i32* %0, metadata !1614, metadata !DIExpression()), !dbg !1616, !psr.id !1617
  %51 = zext i32 %50 to i64, !dbg !1618, !psr.id !1619
  %52 = getelementptr inbounds i32, i32* %0, i64 %51, !dbg !1618, !psr.id !1620
  %53 = load i32, i32* %52, align 4, !dbg !1618, !psr.id !1621
  %54 = zext i32 %50 to i64, !dbg !1618, !psr.id !1622
  %55 = getelementptr inbounds i32, i32* %1, i64 %54, !dbg !1618, !psr.id !1623
  %56 = load i32, i32* %55, align 4, !dbg !1618, !psr.id !1624
  %57 = add i32 %53, %56, !dbg !1618, !psr.id !1625
  call void @llvm.dbg.value(metadata i32 %57, metadata !1626, metadata !DIExpression()), !dbg !1616, !psr.id !1627
  %58 = zext i32 %50 to i64, !dbg !1618, !psr.id !1628
  %59 = getelementptr inbounds i32, i32* %0, i64 %58, !dbg !1618, !psr.id !1629
  store i32 %57, i32* %59, align 4, !dbg !1618, !psr.id !1630
  %60 = add i32 %50, 1, !dbg !1618, !psr.id !1631
  call void @llvm.dbg.value(metadata i32 %60, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1632
  call void @llvm.dbg.value(metadata i32* %0, metadata !1633, metadata !DIExpression()), !dbg !1635, !psr.id !1636
  %61 = zext i32 %60 to i64, !dbg !1637, !psr.id !1638
  %62 = getelementptr inbounds i32, i32* %0, i64 %61, !dbg !1637, !psr.id !1639
  %63 = load i32, i32* %62, align 4, !dbg !1637, !psr.id !1640
  %64 = zext i32 %60 to i64, !dbg !1637, !psr.id !1641
  %65 = getelementptr inbounds i32, i32* %1, i64 %64, !dbg !1637, !psr.id !1642
  %66 = load i32, i32* %65, align 4, !dbg !1637, !psr.id !1643
  %67 = add i32 %63, %66, !dbg !1637, !psr.id !1644
  call void @llvm.dbg.value(metadata i32 %67, metadata !1645, metadata !DIExpression()), !dbg !1635, !psr.id !1646
  %68 = zext i32 %60 to i64, !dbg !1637, !psr.id !1647
  %69 = getelementptr inbounds i32, i32* %0, i64 %68, !dbg !1637, !psr.id !1648
  store i32 %67, i32* %69, align 4, !dbg !1637, !psr.id !1649
  %70 = add i32 %60, 1, !dbg !1637, !psr.id !1650
  call void @llvm.dbg.value(metadata i32 %70, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1651
  call void @llvm.dbg.value(metadata i32* %0, metadata !1652, metadata !DIExpression()), !dbg !1654, !psr.id !1655
  %71 = zext i32 %70 to i64, !dbg !1656, !psr.id !1657
  %72 = getelementptr inbounds i32, i32* %0, i64 %71, !dbg !1656, !psr.id !1658
  %73 = load i32, i32* %72, align 4, !dbg !1656, !psr.id !1659
  %74 = zext i32 %70 to i64, !dbg !1656, !psr.id !1660
  %75 = getelementptr inbounds i32, i32* %1, i64 %74, !dbg !1656, !psr.id !1661
  %76 = load i32, i32* %75, align 4, !dbg !1656, !psr.id !1662
  %77 = add i32 %73, %76, !dbg !1656, !psr.id !1663
  call void @llvm.dbg.value(metadata i32 %77, metadata !1664, metadata !DIExpression()), !dbg !1654, !psr.id !1665
  %78 = zext i32 %70 to i64, !dbg !1656, !psr.id !1666
  %79 = getelementptr inbounds i32, i32* %0, i64 %78, !dbg !1656, !psr.id !1667
  store i32 %77, i32* %79, align 4, !dbg !1656, !psr.id !1668
  %80 = add i32 %70, 1, !dbg !1656, !psr.id !1669
  call void @llvm.dbg.value(metadata i32 %80, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1670
  call void @llvm.dbg.value(metadata i32* %0, metadata !1671, metadata !DIExpression()), !dbg !1673, !psr.id !1674
  %81 = zext i32 %80 to i64, !dbg !1675, !psr.id !1676
  %82 = getelementptr inbounds i32, i32* %0, i64 %81, !dbg !1675, !psr.id !1677
  %83 = load i32, i32* %82, align 4, !dbg !1675, !psr.id !1678
  %84 = zext i32 %80 to i64, !dbg !1675, !psr.id !1679
  %85 = getelementptr inbounds i32, i32* %1, i64 %84, !dbg !1675, !psr.id !1680
  %86 = load i32, i32* %85, align 4, !dbg !1675, !psr.id !1681
  %87 = add i32 %83, %86, !dbg !1675, !psr.id !1682
  call void @llvm.dbg.value(metadata i32 %87, metadata !1683, metadata !DIExpression()), !dbg !1673, !psr.id !1684
  %88 = zext i32 %80 to i64, !dbg !1675, !psr.id !1685
  %89 = getelementptr inbounds i32, i32* %0, i64 %88, !dbg !1675, !psr.id !1686
  store i32 %87, i32* %89, align 4, !dbg !1675, !psr.id !1687
  %90 = add i32 %80, 1, !dbg !1675, !psr.id !1688
  call void @llvm.dbg.value(metadata i32 %90, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1689
  call void @llvm.dbg.value(metadata i32* %0, metadata !1690, metadata !DIExpression()), !dbg !1692, !psr.id !1693
  %91 = zext i32 %90 to i64, !dbg !1694, !psr.id !1695
  %92 = getelementptr inbounds i32, i32* %0, i64 %91, !dbg !1694, !psr.id !1696
  %93 = load i32, i32* %92, align 4, !dbg !1694, !psr.id !1697
  %94 = zext i32 %90 to i64, !dbg !1694, !psr.id !1698
  %95 = getelementptr inbounds i32, i32* %1, i64 %94, !dbg !1694, !psr.id !1699
  %96 = load i32, i32* %95, align 4, !dbg !1694, !psr.id !1700
  %97 = add i32 %93, %96, !dbg !1694, !psr.id !1701
  call void @llvm.dbg.value(metadata i32 %97, metadata !1702, metadata !DIExpression()), !dbg !1692, !psr.id !1703
  %98 = zext i32 %90 to i64, !dbg !1694, !psr.id !1704
  %99 = getelementptr inbounds i32, i32* %0, i64 %98, !dbg !1694, !psr.id !1705
  store i32 %97, i32* %99, align 4, !dbg !1694, !psr.id !1706
  %100 = add i32 %90, 1, !dbg !1694, !psr.id !1707
  call void @llvm.dbg.value(metadata i32 %100, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1708
  call void @llvm.dbg.value(metadata i32* %0, metadata !1709, metadata !DIExpression()), !dbg !1711, !psr.id !1712
  %101 = zext i32 %100 to i64, !dbg !1713, !psr.id !1714
  %102 = getelementptr inbounds i32, i32* %0, i64 %101, !dbg !1713, !psr.id !1715
  %103 = load i32, i32* %102, align 4, !dbg !1713, !psr.id !1716
  %104 = zext i32 %100 to i64, !dbg !1713, !psr.id !1717
  %105 = getelementptr inbounds i32, i32* %1, i64 %104, !dbg !1713, !psr.id !1718
  %106 = load i32, i32* %105, align 4, !dbg !1713, !psr.id !1719
  %107 = add i32 %103, %106, !dbg !1713, !psr.id !1720
  call void @llvm.dbg.value(metadata i32 %107, metadata !1721, metadata !DIExpression()), !dbg !1711, !psr.id !1722
  %108 = zext i32 %100 to i64, !dbg !1713, !psr.id !1723
  %109 = getelementptr inbounds i32, i32* %0, i64 %108, !dbg !1713, !psr.id !1724
  store i32 %107, i32* %109, align 4, !dbg !1713, !psr.id !1725
  %110 = add i32 %100, 1, !dbg !1713, !psr.id !1726
  call void @llvm.dbg.value(metadata i32 %110, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1727
  call void @llvm.dbg.value(metadata i32* %0, metadata !1728, metadata !DIExpression()), !dbg !1730, !psr.id !1731
  %111 = zext i32 %110 to i64, !dbg !1732, !psr.id !1733
  %112 = getelementptr inbounds i32, i32* %0, i64 %111, !dbg !1732, !psr.id !1734
  %113 = load i32, i32* %112, align 4, !dbg !1732, !psr.id !1735
  %114 = zext i32 %110 to i64, !dbg !1732, !psr.id !1736
  %115 = getelementptr inbounds i32, i32* %1, i64 %114, !dbg !1732, !psr.id !1737
  %116 = load i32, i32* %115, align 4, !dbg !1732, !psr.id !1738
  %117 = add i32 %113, %116, !dbg !1732, !psr.id !1739
  call void @llvm.dbg.value(metadata i32 %117, metadata !1740, metadata !DIExpression()), !dbg !1730, !psr.id !1741
  %118 = zext i32 %110 to i64, !dbg !1732, !psr.id !1742
  %119 = getelementptr inbounds i32, i32* %0, i64 %118, !dbg !1732, !psr.id !1743
  store i32 %117, i32* %119, align 4, !dbg !1732, !psr.id !1744
  %120 = add i32 %110, 1, !dbg !1732, !psr.id !1745
  call void @llvm.dbg.value(metadata i32 %120, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1746
  call void @llvm.dbg.value(metadata i32* %0, metadata !1747, metadata !DIExpression()), !dbg !1749, !psr.id !1750
  %121 = zext i32 %120 to i64, !dbg !1751, !psr.id !1752
  %122 = getelementptr inbounds i32, i32* %0, i64 %121, !dbg !1751, !psr.id !1753
  %123 = load i32, i32* %122, align 4, !dbg !1751, !psr.id !1754
  %124 = zext i32 %120 to i64, !dbg !1751, !psr.id !1755
  %125 = getelementptr inbounds i32, i32* %1, i64 %124, !dbg !1751, !psr.id !1756
  %126 = load i32, i32* %125, align 4, !dbg !1751, !psr.id !1757
  %127 = add i32 %123, %126, !dbg !1751, !psr.id !1758
  call void @llvm.dbg.value(metadata i32 %127, metadata !1759, metadata !DIExpression()), !dbg !1749, !psr.id !1760
  %128 = zext i32 %120 to i64, !dbg !1751, !psr.id !1761
  %129 = getelementptr inbounds i32, i32* %0, i64 %128, !dbg !1751, !psr.id !1762
  store i32 %127, i32* %129, align 4, !dbg !1751, !psr.id !1763
  %130 = add i32 %120, 1, !dbg !1751, !psr.id !1764
  call void @llvm.dbg.value(metadata i32 %130, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1765
  call void @llvm.dbg.value(metadata i32* %0, metadata !1766, metadata !DIExpression()), !dbg !1768, !psr.id !1769
  %131 = zext i32 %130 to i64, !dbg !1770, !psr.id !1771
  %132 = getelementptr inbounds i32, i32* %0, i64 %131, !dbg !1770, !psr.id !1772
  %133 = load i32, i32* %132, align 4, !dbg !1770, !psr.id !1773
  %134 = zext i32 %130 to i64, !dbg !1770, !psr.id !1774
  %135 = getelementptr inbounds i32, i32* %1, i64 %134, !dbg !1770, !psr.id !1775
  %136 = load i32, i32* %135, align 4, !dbg !1770, !psr.id !1776
  %137 = add i32 %133, %136, !dbg !1770, !psr.id !1777
  call void @llvm.dbg.value(metadata i32 %137, metadata !1778, metadata !DIExpression()), !dbg !1768, !psr.id !1779
  %138 = zext i32 %130 to i64, !dbg !1770, !psr.id !1780
  %139 = getelementptr inbounds i32, i32* %0, i64 %138, !dbg !1770, !psr.id !1781
  store i32 %137, i32* %139, align 4, !dbg !1770, !psr.id !1782
  %140 = add i32 %130, 1, !dbg !1770, !psr.id !1783
  call void @llvm.dbg.value(metadata i32 %140, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1784
  call void @llvm.dbg.value(metadata i32* %0, metadata !1785, metadata !DIExpression()), !dbg !1787, !psr.id !1788
  %141 = zext i32 %140 to i64, !dbg !1789, !psr.id !1790
  %142 = getelementptr inbounds i32, i32* %0, i64 %141, !dbg !1789, !psr.id !1791
  %143 = load i32, i32* %142, align 4, !dbg !1789, !psr.id !1792
  %144 = zext i32 %140 to i64, !dbg !1789, !psr.id !1793
  %145 = getelementptr inbounds i32, i32* %1, i64 %144, !dbg !1789, !psr.id !1794
  %146 = load i32, i32* %145, align 4, !dbg !1789, !psr.id !1795
  %147 = add i32 %143, %146, !dbg !1789, !psr.id !1796
  call void @llvm.dbg.value(metadata i32 %147, metadata !1797, metadata !DIExpression()), !dbg !1787, !psr.id !1798
  %148 = zext i32 %140 to i64, !dbg !1789, !psr.id !1799
  %149 = getelementptr inbounds i32, i32* %0, i64 %148, !dbg !1789, !psr.id !1800
  store i32 %147, i32* %149, align 4, !dbg !1789, !psr.id !1801
  %150 = add i32 %140, 1, !dbg !1789, !psr.id !1802
  call void @llvm.dbg.value(metadata i32 %150, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1803
  call void @llvm.dbg.value(metadata i32* %0, metadata !1804, metadata !DIExpression()), !dbg !1806, !psr.id !1807
  %151 = zext i32 %150 to i64, !dbg !1808, !psr.id !1809
  %152 = getelementptr inbounds i32, i32* %0, i64 %151, !dbg !1808, !psr.id !1810
  %153 = load i32, i32* %152, align 4, !dbg !1808, !psr.id !1811
  %154 = zext i32 %150 to i64, !dbg !1808, !psr.id !1812
  %155 = getelementptr inbounds i32, i32* %1, i64 %154, !dbg !1808, !psr.id !1813
  %156 = load i32, i32* %155, align 4, !dbg !1808, !psr.id !1814
  %157 = add i32 %153, %156, !dbg !1808, !psr.id !1815
  call void @llvm.dbg.value(metadata i32 %157, metadata !1816, metadata !DIExpression()), !dbg !1806, !psr.id !1817
  %158 = zext i32 %150 to i64, !dbg !1808, !psr.id !1818
  %159 = getelementptr inbounds i32, i32* %0, i64 %158, !dbg !1808, !psr.id !1819
  store i32 %157, i32* %159, align 4, !dbg !1808, !psr.id !1820
  %160 = add i32 %150, 1, !dbg !1808, !psr.id !1821
  call void @llvm.dbg.value(metadata i32 %160, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1822
  call void @llvm.dbg.value(metadata i32* %0, metadata !1823, metadata !DIExpression()), !dbg !1825, !psr.id !1826
  %161 = zext i32 %160 to i64, !dbg !1827, !psr.id !1828
  %162 = getelementptr inbounds i32, i32* %0, i64 %161, !dbg !1827, !psr.id !1829
  %163 = load i32, i32* %162, align 4, !dbg !1827, !psr.id !1830
  %164 = zext i32 %160 to i64, !dbg !1827, !psr.id !1831
  %165 = getelementptr inbounds i32, i32* %1, i64 %164, !dbg !1827, !psr.id !1832
  %166 = load i32, i32* %165, align 4, !dbg !1827, !psr.id !1833
  %167 = add i32 %163, %166, !dbg !1827, !psr.id !1834
  call void @llvm.dbg.value(metadata i32 %167, metadata !1835, metadata !DIExpression()), !dbg !1825, !psr.id !1836
  %168 = zext i32 %160 to i64, !dbg !1827, !psr.id !1837
  %169 = getelementptr inbounds i32, i32* %0, i64 %168, !dbg !1827, !psr.id !1838
  store i32 %167, i32* %169, align 4, !dbg !1827, !psr.id !1839
  %170 = add i32 %160, 1, !dbg !1827, !psr.id !1840
  call void @llvm.dbg.value(metadata i32 %170, metadata !1534, metadata !DIExpression()), !dbg !1536, !psr.id !1841
  br label %171, !dbg !1842, !psr.id !1843

171:                                              ; preds = %10
  %172 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !1844, !psr.id !1845
  %173 = load i32, i32* %172, align 4, !dbg !1844, !psr.id !1846
  %174 = add i32 %173, %2, !dbg !1847, !psr.id !1848
  %175 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !1849, !psr.id !1850
  store i32 %174, i32* %175, align 4, !dbg !1851, !psr.id !1852
  ret void, !dbg !1853, !psr.id !1854
}

; Function Attrs: noinline nounwind uwtable
define internal void @store32(i8* %0, i32 %1) #0 !dbg !1855 {
  %3 = alloca i32, align 4, !psr.id !1858
  call void @llvm.dbg.value(metadata i8* %0, metadata !1859, metadata !DIExpression()), !dbg !1860, !psr.id !1861
  store i32 %1, i32* %3, align 4, !psr.id !1862
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1863, metadata !DIExpression()), !dbg !1864, !psr.id !1865
  %4 = bitcast i32* %3 to i8*, !dbg !1866, !psr.id !1867
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 4 %4, i64 4, i1 false), !dbg !1866, !psr.id !1868
  ret void, !dbg !1869, !psr.id !1870
}

; Function Attrs: noinline nounwind uwtable
define internal void @rounds(i32* %0) #0 !dbg !1871 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1874, metadata !DIExpression()), !dbg !1875, !psr.id !1876
  call void @double_round(i32* %0), !dbg !1877, !psr.id !1878
  call void @double_round(i32* %0), !dbg !1879, !psr.id !1880
  call void @double_round(i32* %0), !dbg !1881, !psr.id !1882
  call void @double_round(i32* %0), !dbg !1883, !psr.id !1884
  call void @double_round(i32* %0), !dbg !1885, !psr.id !1886
  call void @double_round(i32* %0), !dbg !1887, !psr.id !1888
  call void @double_round(i32* %0), !dbg !1889, !psr.id !1890
  call void @double_round(i32* %0), !dbg !1891, !psr.id !1892
  call void @double_round(i32* %0), !dbg !1893, !psr.id !1894
  call void @double_round(i32* %0), !dbg !1895, !psr.id !1896
  ret void, !dbg !1897, !psr.id !1898
}

; Function Attrs: noinline nounwind uwtable
define internal void @double_round(i32* %0) #0 !dbg !1899 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1900, metadata !DIExpression()), !dbg !1901, !psr.id !1902
  call void @quarter_round(i32* %0, i32 0, i32 4, i32 8, i32 12), !dbg !1903, !psr.id !1904
  call void @quarter_round(i32* %0, i32 1, i32 5, i32 9, i32 13), !dbg !1905, !psr.id !1906
  call void @quarter_round(i32* %0, i32 2, i32 6, i32 10, i32 14), !dbg !1907, !psr.id !1908
  call void @quarter_round(i32* %0, i32 3, i32 7, i32 11, i32 15), !dbg !1909, !psr.id !1910
  call void @quarter_round(i32* %0, i32 0, i32 5, i32 10, i32 15), !dbg !1911, !psr.id !1912
  call void @quarter_round(i32* %0, i32 1, i32 6, i32 11, i32 12), !dbg !1913, !psr.id !1914
  call void @quarter_round(i32* %0, i32 2, i32 7, i32 8, i32 13), !dbg !1915, !psr.id !1916
  call void @quarter_round(i32* %0, i32 3, i32 4, i32 9, i32 14), !dbg !1917, !psr.id !1918
  ret void, !dbg !1919, !psr.id !1920
}

; Function Attrs: noinline nounwind uwtable
define internal void @quarter_round(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 !dbg !1921 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1924, metadata !DIExpression()), !dbg !1925, !psr.id !1926
  call void @llvm.dbg.value(metadata i32 %1, metadata !1927, metadata !DIExpression()), !dbg !1925, !psr.id !1928
  call void @llvm.dbg.value(metadata i32 %2, metadata !1929, metadata !DIExpression()), !dbg !1925, !psr.id !1930
  call void @llvm.dbg.value(metadata i32 %3, metadata !1931, metadata !DIExpression()), !dbg !1925, !psr.id !1932
  call void @llvm.dbg.value(metadata i32 %4, metadata !1933, metadata !DIExpression()), !dbg !1925, !psr.id !1934
  %6 = zext i32 %1 to i64, !dbg !1935, !psr.id !1936
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !1935, !psr.id !1937
  %8 = load i32, i32* %7, align 4, !dbg !1935, !psr.id !1938
  call void @llvm.dbg.value(metadata i32 %8, metadata !1939, metadata !DIExpression()), !dbg !1925, !psr.id !1940
  %9 = zext i32 %2 to i64, !dbg !1941, !psr.id !1942
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !1941, !psr.id !1943
  %11 = load i32, i32* %10, align 4, !dbg !1941, !psr.id !1944
  call void @llvm.dbg.value(metadata i32 %11, metadata !1945, metadata !DIExpression()), !dbg !1925, !psr.id !1946
  %12 = zext i32 %4 to i64, !dbg !1947, !psr.id !1948
  %13 = getelementptr inbounds i32, i32* %0, i64 %12, !dbg !1947, !psr.id !1949
  %14 = load i32, i32* %13, align 4, !dbg !1947, !psr.id !1950
  call void @llvm.dbg.value(metadata i32 %14, metadata !1951, metadata !DIExpression()), !dbg !1925, !psr.id !1952
  %15 = add i32 %8, %11, !dbg !1953, !psr.id !1954
  call void @llvm.dbg.value(metadata i32 %15, metadata !1955, metadata !DIExpression()), !dbg !1925, !psr.id !1956
  %16 = xor i32 %14, %15, !dbg !1957, !psr.id !1958
  call void @llvm.dbg.value(metadata i32 %16, metadata !1959, metadata !DIExpression()), !dbg !1925, !psr.id !1960
  %17 = shl i32 %16, 16, !dbg !1961, !psr.id !1962
  %18 = lshr i32 %16, 16, !dbg !1963, !psr.id !1964
  %19 = or i32 %17, %18, !dbg !1965, !psr.id !1966
  call void @llvm.dbg.value(metadata i32 %19, metadata !1967, metadata !DIExpression()), !dbg !1925, !psr.id !1968
  %20 = zext i32 %1 to i64, !dbg !1969, !psr.id !1970
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !1969, !psr.id !1971
  store i32 %15, i32* %21, align 4, !dbg !1972, !psr.id !1973
  %22 = zext i32 %4 to i64, !dbg !1974, !psr.id !1975
  %23 = getelementptr inbounds i32, i32* %0, i64 %22, !dbg !1974, !psr.id !1976
  store i32 %19, i32* %23, align 4, !dbg !1977, !psr.id !1978
  %24 = zext i32 %3 to i64, !dbg !1979, !psr.id !1980
  %25 = getelementptr inbounds i32, i32* %0, i64 %24, !dbg !1979, !psr.id !1981
  %26 = load i32, i32* %25, align 4, !dbg !1979, !psr.id !1982
  call void @llvm.dbg.value(metadata i32 %26, metadata !1983, metadata !DIExpression()), !dbg !1925, !psr.id !1984
  %27 = zext i32 %4 to i64, !dbg !1985, !psr.id !1986
  %28 = getelementptr inbounds i32, i32* %0, i64 %27, !dbg !1985, !psr.id !1987
  %29 = load i32, i32* %28, align 4, !dbg !1985, !psr.id !1988
  call void @llvm.dbg.value(metadata i32 %29, metadata !1989, metadata !DIExpression()), !dbg !1925, !psr.id !1990
  %30 = zext i32 %2 to i64, !dbg !1991, !psr.id !1992
  %31 = getelementptr inbounds i32, i32* %0, i64 %30, !dbg !1991, !psr.id !1993
  %32 = load i32, i32* %31, align 4, !dbg !1991, !psr.id !1994
  call void @llvm.dbg.value(metadata i32 %32, metadata !1995, metadata !DIExpression()), !dbg !1925, !psr.id !1996
  %33 = add i32 %26, %29, !dbg !1997, !psr.id !1998
  call void @llvm.dbg.value(metadata i32 %33, metadata !1999, metadata !DIExpression()), !dbg !1925, !psr.id !2000
  %34 = xor i32 %32, %33, !dbg !2001, !psr.id !2002
  call void @llvm.dbg.value(metadata i32 %34, metadata !2003, metadata !DIExpression()), !dbg !1925, !psr.id !2004
  %35 = shl i32 %34, 12, !dbg !2005, !psr.id !2006
  %36 = lshr i32 %34, 20, !dbg !2007, !psr.id !2008
  %37 = or i32 %35, %36, !dbg !2009, !psr.id !2010
  call void @llvm.dbg.value(metadata i32 %37, metadata !2011, metadata !DIExpression()), !dbg !1925, !psr.id !2012
  %38 = zext i32 %3 to i64, !dbg !2013, !psr.id !2014
  %39 = getelementptr inbounds i32, i32* %0, i64 %38, !dbg !2013, !psr.id !2015
  store i32 %33, i32* %39, align 4, !dbg !2016, !psr.id !2017
  %40 = zext i32 %2 to i64, !dbg !2018, !psr.id !2019
  %41 = getelementptr inbounds i32, i32* %0, i64 %40, !dbg !2018, !psr.id !2020
  store i32 %37, i32* %41, align 4, !dbg !2021, !psr.id !2022
  %42 = zext i32 %1 to i64, !dbg !2023, !psr.id !2024
  %43 = getelementptr inbounds i32, i32* %0, i64 %42, !dbg !2023, !psr.id !2025
  %44 = load i32, i32* %43, align 4, !dbg !2023, !psr.id !2026
  call void @llvm.dbg.value(metadata i32 %44, metadata !2027, metadata !DIExpression()), !dbg !1925, !psr.id !2028
  %45 = zext i32 %2 to i64, !dbg !2029, !psr.id !2030
  %46 = getelementptr inbounds i32, i32* %0, i64 %45, !dbg !2029, !psr.id !2031
  %47 = load i32, i32* %46, align 4, !dbg !2029, !psr.id !2032
  call void @llvm.dbg.value(metadata i32 %47, metadata !2033, metadata !DIExpression()), !dbg !1925, !psr.id !2034
  %48 = zext i32 %4 to i64, !dbg !2035, !psr.id !2036
  %49 = getelementptr inbounds i32, i32* %0, i64 %48, !dbg !2035, !psr.id !2037
  %50 = load i32, i32* %49, align 4, !dbg !2035, !psr.id !2038
  call void @llvm.dbg.value(metadata i32 %50, metadata !2039, metadata !DIExpression()), !dbg !1925, !psr.id !2040
  %51 = add i32 %44, %47, !dbg !2041, !psr.id !2042
  call void @llvm.dbg.value(metadata i32 %51, metadata !2043, metadata !DIExpression()), !dbg !1925, !psr.id !2044
  %52 = xor i32 %50, %51, !dbg !2045, !psr.id !2046
  call void @llvm.dbg.value(metadata i32 %52, metadata !2047, metadata !DIExpression()), !dbg !1925, !psr.id !2048
  %53 = shl i32 %52, 8, !dbg !2049, !psr.id !2050
  %54 = lshr i32 %52, 24, !dbg !2051, !psr.id !2052
  %55 = or i32 %53, %54, !dbg !2053, !psr.id !2054
  call void @llvm.dbg.value(metadata i32 %55, metadata !2055, metadata !DIExpression()), !dbg !1925, !psr.id !2056
  %56 = zext i32 %1 to i64, !dbg !2057, !psr.id !2058
  %57 = getelementptr inbounds i32, i32* %0, i64 %56, !dbg !2057, !psr.id !2059
  store i32 %51, i32* %57, align 4, !dbg !2060, !psr.id !2061
  %58 = zext i32 %4 to i64, !dbg !2062, !psr.id !2063
  %59 = getelementptr inbounds i32, i32* %0, i64 %58, !dbg !2062, !psr.id !2064
  store i32 %55, i32* %59, align 4, !dbg !2065, !psr.id !2066
  %60 = zext i32 %3 to i64, !dbg !2067, !psr.id !2068
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !2067, !psr.id !2069
  %62 = load i32, i32* %61, align 4, !dbg !2067, !psr.id !2070
  call void @llvm.dbg.value(metadata i32 %62, metadata !2071, metadata !DIExpression()), !dbg !1925, !psr.id !2072
  %63 = zext i32 %4 to i64, !dbg !2073, !psr.id !2074
  %64 = getelementptr inbounds i32, i32* %0, i64 %63, !dbg !2073, !psr.id !2075
  %65 = load i32, i32* %64, align 4, !dbg !2073, !psr.id !2076
  call void @llvm.dbg.value(metadata i32 %65, metadata !2077, metadata !DIExpression()), !dbg !1925, !psr.id !2078
  %66 = zext i32 %2 to i64, !dbg !2079, !psr.id !2080
  %67 = getelementptr inbounds i32, i32* %0, i64 %66, !dbg !2079, !psr.id !2081
  %68 = load i32, i32* %67, align 4, !dbg !2079, !psr.id !2082
  call void @llvm.dbg.value(metadata i32 %68, metadata !2083, metadata !DIExpression()), !dbg !1925, !psr.id !2084
  %69 = add i32 %62, %65, !dbg !2085, !psr.id !2086
  call void @llvm.dbg.value(metadata i32 %69, metadata !2087, metadata !DIExpression()), !dbg !1925, !psr.id !2088
  %70 = xor i32 %68, %69, !dbg !2089, !psr.id !2090
  call void @llvm.dbg.value(metadata i32 %70, metadata !2091, metadata !DIExpression()), !dbg !1925, !psr.id !2092
  %71 = shl i32 %70, 7, !dbg !2093, !psr.id !2094
  %72 = lshr i32 %70, 25, !dbg !2095, !psr.id !2096
  %73 = or i32 %71, %72, !dbg !2097, !psr.id !2098
  call void @llvm.dbg.value(metadata i32 %73, metadata !2099, metadata !DIExpression()), !dbg !1925, !psr.id !2100
  %74 = zext i32 %3 to i64, !dbg !2101, !psr.id !2102
  %75 = getelementptr inbounds i32, i32* %0, i64 %74, !dbg !2101, !psr.id !2103
  store i32 %69, i32* %75, align 4, !dbg !2104, !psr.id !2105
  %76 = zext i32 %2 to i64, !dbg !2106, !psr.id !2107
  %77 = getelementptr inbounds i32, i32* %0, i64 %76, !dbg !2106, !psr.id !2108
  store i32 %73, i32* %77, align 4, !dbg !2109, !psr.id !2110
  ret void, !dbg !2111, !psr.id !2112
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_encrypt(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 !dbg !2113 {
  %7 = alloca [16 x i32], align 16, !psr.id !2116
  call void @llvm.dbg.value(metadata i32 %0, metadata !2117, metadata !DIExpression()), !dbg !2118, !psr.id !2119
  call void @llvm.dbg.value(metadata i8* %1, metadata !2120, metadata !DIExpression()), !dbg !2118, !psr.id !2121
  call void @llvm.dbg.value(metadata i8* %2, metadata !2122, metadata !DIExpression()), !dbg !2118, !psr.id !2123
  call void @llvm.dbg.value(metadata i8* %3, metadata !2124, metadata !DIExpression()), !dbg !2118, !psr.id !2125
  call void @llvm.dbg.value(metadata i8* %4, metadata !2126, metadata !DIExpression()), !dbg !2118, !psr.id !2127
  call void @llvm.dbg.value(metadata i32 %5, metadata !2128, metadata !DIExpression()), !dbg !2118, !psr.id !2129
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !2130, metadata !DIExpression()), !dbg !2131, !psr.id !2132
  %8 = bitcast [16 x i32]* %7 to i8*, !dbg !2131, !psr.id !2133
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 64, i1 false), !dbg !2131, !psr.id !2134
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2135, !psr.id !2136
  call void @Hacl_Impl_Chacha20_chacha20_init(i32* %9, i8* %3, i8* %4, i32 %5), !dbg !2137, !psr.id !2138
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2139, !psr.id !2140
  call void @Hacl_Impl_Chacha20_chacha20_update(i32* %10, i32 %0, i8* %1, i8* %2), !dbg !2141, !psr.id !2142
  ret void, !dbg !2143, !psr.id !2144
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_decrypt(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 !dbg !2145 {
  %7 = alloca [16 x i32], align 16, !psr.id !2146
  call void @llvm.dbg.value(metadata i32 %0, metadata !2147, metadata !DIExpression()), !dbg !2148, !psr.id !2149
  call void @llvm.dbg.value(metadata i8* %1, metadata !2150, metadata !DIExpression()), !dbg !2148, !psr.id !2151
  call void @llvm.dbg.value(metadata i8* %2, metadata !2152, metadata !DIExpression()), !dbg !2148, !psr.id !2153
  call void @llvm.dbg.value(metadata i8* %3, metadata !2154, metadata !DIExpression()), !dbg !2148, !psr.id !2155
  call void @llvm.dbg.value(metadata i8* %4, metadata !2156, metadata !DIExpression()), !dbg !2148, !psr.id !2157
  call void @llvm.dbg.value(metadata i32 %5, metadata !2158, metadata !DIExpression()), !dbg !2148, !psr.id !2159
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !2160, metadata !DIExpression()), !dbg !2161, !psr.id !2162
  %8 = bitcast [16 x i32]* %7 to i8*, !dbg !2161, !psr.id !2163
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 64, i1 false), !dbg !2161, !psr.id !2164
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2165, !psr.id !2166
  call void @Hacl_Impl_Chacha20_chacha20_init(i32* %9, i8* %3, i8* %4, i32 %5), !dbg !2167, !psr.id !2168
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2169, !psr.id !2170
  call void @Hacl_Impl_Chacha20_chacha20_update(i32* %10, i32 %0, i8* %1, i8* %2), !dbg !2171, !psr.id !2172
  ret void, !dbg !2173, !psr.id !2174
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_decrypt_wrapper(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 !dbg !2175 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2176, metadata !DIExpression()), !dbg !2177, !psr.id !2178
  call void @llvm.dbg.value(metadata i8* %1, metadata !2179, metadata !DIExpression()), !dbg !2177, !psr.id !2180
  call void @llvm.dbg.value(metadata i8* %2, metadata !2181, metadata !DIExpression()), !dbg !2177, !psr.id !2182
  call void @llvm.dbg.value(metadata i8* %3, metadata !2183, metadata !DIExpression()), !dbg !2177, !psr.id !2184
  call void @llvm.dbg.value(metadata i8* %4, metadata !2185, metadata !DIExpression()), !dbg !2177, !psr.id !2186
  call void @llvm.dbg.value(metadata i32 %5, metadata !2187, metadata !DIExpression()), !dbg !2177, !psr.id !2188
  %7 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %0), !dbg !2189, !psr.id !2190
  call void @public_in(%struct.smack_value* %7), !dbg !2191, !psr.id !2192
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !2193, !psr.id !2194
  call void @public_in(%struct.smack_value* %8), !dbg !2195, !psr.id !2196
  %9 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !2197, !psr.id !2198
  call void @public_in(%struct.smack_value* %9), !dbg !2199, !psr.id !2200
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !2201, !psr.id !2202
  call void @public_in(%struct.smack_value* %10), !dbg !2203, !psr.id !2204
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !2205, !psr.id !2206
  call void @public_in(%struct.smack_value* %11), !dbg !2207, !psr.id !2208
  %12 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %5), !dbg !2209, !psr.id !2210
  call void @public_in(%struct.smack_value* %12), !dbg !2211, !psr.id !2212
  %13 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 64), !dbg !2213, !psr.id !2214
  call void @public_in(%struct.smack_value* %13), !dbg !2215, !psr.id !2216
  call void @Hacl_Chacha20_chacha20_decrypt(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5), !dbg !2217, !psr.id !2218
  ret void, !dbg !2219, !psr.id !2220
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_decrypt_wrapper_t() #0 !dbg !2221 {
  %1 = call i8* (...) @getpt1(), !dbg !2224, !psr.id !2225
  call void @llvm.dbg.value(metadata i8* %1, metadata !2226, metadata !DIExpression()), !dbg !2227, !psr.id !2228
  %2 = call i8* (...) @getpt2(), !dbg !2229, !psr.id !2230
  call void @llvm.dbg.value(metadata i8* %2, metadata !2231, metadata !DIExpression()), !dbg !2227, !psr.id !2232
  %3 = call i8* (...) @getpt3(), !dbg !2233, !psr.id !2234
  call void @llvm.dbg.value(metadata i8* %3, metadata !2235, metadata !DIExpression()), !dbg !2227, !psr.id !2236
  %4 = call i8* (...) @getpt4(), !dbg !2237, !psr.id !2238
  call void @llvm.dbg.value(metadata i8* %4, metadata !2239, metadata !DIExpression()), !dbg !2227, !psr.id !2240
  %5 = call i32 (...) @getnum(), !dbg !2241, !psr.id !2242
  call void @llvm.dbg.value(metadata i32 %5, metadata !2243, metadata !DIExpression()), !dbg !2227, !psr.id !2244
  %6 = call i32 (...) @getnum(), !dbg !2245, !psr.id !2246
  call void @llvm.dbg.value(metadata i32 %6, metadata !2247, metadata !DIExpression()), !dbg !2227, !psr.id !2248
  call void @Hacl_Chacha20_chacha20_decrypt(i32 %5, i8* %1, i8* %2, i8* %3, i8* %4, i32 %6), !dbg !2249, !psr.id !2250
  ret void, !dbg !2251, !psr.id !2252
}

declare dso_local i8* @getpt1(...) #4

declare dso_local i8* @getpt2(...) #4

declare dso_local i8* @getpt3(...) #4

declare dso_local i8* @getpt4(...) #4

declare dso_local i32 @getnum(...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @Hacl_Chacha20_chacha20_decrypt_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2, !20}
!llvm.ident = !{!22, !22}
!llvm.module.flags = !{!23, !24, !25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Hacl_Impl_Chacha20_Vec_chacha20_constants", scope: !2, file: !3, line: 30, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../hacl-star/dist/gcc-compatible/Hacl_Chacha20.c", directory: "/home/luwei/bech-back/HACL/ChaCha20")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!0, !12}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "chacha20_constants", scope: !2, file: !3, line: 113, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!16 = !{!17}
!17 = !DISubrange(count: 4)
!18 = !{!"0"}
!19 = !{!"1"}
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "Hacl_Chacha20_chacha20_decrypt.c", directory: "/home/luwei/bech-back/HACL/ChaCha20")
!22 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_init", scope: !3, file: !3, line: 116, type: !27, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !30, !30, !6}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !33)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DILocalVariable(name: "ctx", arg: 1, scope: !26, file: !3, line: 116, type: !29)
!35 = !DILocation(line: 0, scope: !26)
!36 = !{!"2"}
!37 = !DILocalVariable(name: "k", arg: 2, scope: !26, file: !3, line: 116, type: !30)
!38 = !{!"3"}
!39 = !DILocalVariable(name: "n", arg: 3, scope: !26, file: !3, line: 116, type: !30)
!40 = !{!"4"}
!41 = !DILocalVariable(name: "ctr", arg: 4, scope: !26, file: !3, line: 116, type: !6)
!42 = !{!"5"}
!43 = !DILocation(line: 118, column: 3, scope: !26)
!44 = !{!"6"}
!45 = !DILocalVariable(name: "i", scope: !46, file: !3, line: 118, type: !6)
!46 = distinct !DILexicalBlock(scope: !26, file: !3, line: 118, column: 3)
!47 = !DILocation(line: 0, scope: !46)
!48 = !{!"7"}
!49 = !DILocalVariable(name: "os", scope: !50, file: !3, line: 118, type: !29)
!50 = distinct !DILexicalBlock(scope: !46, file: !3, line: 118, column: 3)
!51 = !DILocation(line: 0, scope: !50)
!52 = !{!"8"}
!53 = !DILocation(line: 118, column: 3, scope: !50)
!54 = !{!"9"}
!55 = !{!"10"}
!56 = !{!"11"}
!57 = !DILocalVariable(name: "x", scope: !50, file: !3, line: 118, type: !6)
!58 = !{!"12"}
!59 = !{!"13"}
!60 = !{!"14"}
!61 = !{!"15"}
!62 = !{!"16"}
!63 = !{!"17"}
!64 = !DILocalVariable(name: "os", scope: !65, file: !3, line: 118, type: !29)
!65 = distinct !DILexicalBlock(scope: !46, file: !3, line: 118, column: 3)
!66 = !DILocation(line: 0, scope: !65)
!67 = !{!"18"}
!68 = !DILocation(line: 118, column: 3, scope: !65)
!69 = !{!"19"}
!70 = !{!"20"}
!71 = !{!"21"}
!72 = !DILocalVariable(name: "x", scope: !65, file: !3, line: 118, type: !6)
!73 = !{!"22"}
!74 = !{!"23"}
!75 = !{!"24"}
!76 = !{!"25"}
!77 = !{!"26"}
!78 = !{!"27"}
!79 = !DILocalVariable(name: "os", scope: !80, file: !3, line: 118, type: !29)
!80 = distinct !DILexicalBlock(scope: !46, file: !3, line: 118, column: 3)
!81 = !DILocation(line: 0, scope: !80)
!82 = !{!"28"}
!83 = !DILocation(line: 118, column: 3, scope: !80)
!84 = !{!"29"}
!85 = !{!"30"}
!86 = !{!"31"}
!87 = !DILocalVariable(name: "x", scope: !80, file: !3, line: 118, type: !6)
!88 = !{!"32"}
!89 = !{!"33"}
!90 = !{!"34"}
!91 = !{!"35"}
!92 = !{!"36"}
!93 = !{!"37"}
!94 = !DILocalVariable(name: "os", scope: !95, file: !3, line: 118, type: !29)
!95 = distinct !DILexicalBlock(scope: !46, file: !3, line: 118, column: 3)
!96 = !DILocation(line: 0, scope: !95)
!97 = !{!"38"}
!98 = !DILocation(line: 118, column: 3, scope: !95)
!99 = !{!"39"}
!100 = !{!"40"}
!101 = !{!"41"}
!102 = !DILocalVariable(name: "x", scope: !95, file: !3, line: 118, type: !6)
!103 = !{!"42"}
!104 = !{!"43"}
!105 = !{!"44"}
!106 = !{!"45"}
!107 = !{!"46"}
!108 = !{!"47"}
!109 = !DILocation(line: 118, column: 3, scope: !46)
!110 = !{!"48"}
!111 = !DILocation(line: 125, column: 3, scope: !26)
!112 = !{!"49"}
!113 = !DILocalVariable(name: "i", scope: !114, file: !3, line: 125, type: !6)
!114 = distinct !DILexicalBlock(scope: !26, file: !3, line: 125, column: 3)
!115 = !DILocation(line: 0, scope: !114)
!116 = !{!"50"}
!117 = !DILocation(line: 125, column: 3, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !3, line: 125, column: 3)
!119 = !{!"51"}
!120 = !DILocalVariable(name: "os", scope: !118, file: !3, line: 125, type: !29)
!121 = !DILocation(line: 0, scope: !118)
!122 = !{!"52"}
!123 = !{!"53"}
!124 = !{!"54"}
!125 = !{!"55"}
!126 = !DILocalVariable(name: "bj", scope: !118, file: !3, line: 125, type: !30)
!127 = !{!"56"}
!128 = !{!"57"}
!129 = !{!"58"}
!130 = !DILocalVariable(name: "u", scope: !118, file: !3, line: 125, type: !6)
!131 = !{!"59"}
!132 = !DILocalVariable(name: "r", scope: !118, file: !3, line: 125, type: !6)
!133 = !{!"60"}
!134 = !DILocalVariable(name: "x", scope: !118, file: !3, line: 125, type: !6)
!135 = !{!"61"}
!136 = !{!"62"}
!137 = !{!"63"}
!138 = !{!"64"}
!139 = !{!"65"}
!140 = !{!"66"}
!141 = !DILocation(line: 125, column: 3, scope: !142)
!142 = distinct !DILexicalBlock(scope: !114, file: !3, line: 125, column: 3)
!143 = !{!"67"}
!144 = !DILocalVariable(name: "os", scope: !142, file: !3, line: 125, type: !29)
!145 = !DILocation(line: 0, scope: !142)
!146 = !{!"68"}
!147 = !{!"69"}
!148 = !{!"70"}
!149 = !{!"71"}
!150 = !DILocalVariable(name: "bj", scope: !142, file: !3, line: 125, type: !30)
!151 = !{!"72"}
!152 = !{!"73"}
!153 = !{!"74"}
!154 = !DILocalVariable(name: "u", scope: !142, file: !3, line: 125, type: !6)
!155 = !{!"75"}
!156 = !DILocalVariable(name: "r", scope: !142, file: !3, line: 125, type: !6)
!157 = !{!"76"}
!158 = !DILocalVariable(name: "x", scope: !142, file: !3, line: 125, type: !6)
!159 = !{!"77"}
!160 = !{!"78"}
!161 = !{!"79"}
!162 = !{!"80"}
!163 = !{!"81"}
!164 = !{!"82"}
!165 = !DILocation(line: 125, column: 3, scope: !166)
!166 = distinct !DILexicalBlock(scope: !114, file: !3, line: 125, column: 3)
!167 = !{!"83"}
!168 = !DILocalVariable(name: "os", scope: !166, file: !3, line: 125, type: !29)
!169 = !DILocation(line: 0, scope: !166)
!170 = !{!"84"}
!171 = !{!"85"}
!172 = !{!"86"}
!173 = !{!"87"}
!174 = !DILocalVariable(name: "bj", scope: !166, file: !3, line: 125, type: !30)
!175 = !{!"88"}
!176 = !{!"89"}
!177 = !{!"90"}
!178 = !DILocalVariable(name: "u", scope: !166, file: !3, line: 125, type: !6)
!179 = !{!"91"}
!180 = !DILocalVariable(name: "r", scope: !166, file: !3, line: 125, type: !6)
!181 = !{!"92"}
!182 = !DILocalVariable(name: "x", scope: !166, file: !3, line: 125, type: !6)
!183 = !{!"93"}
!184 = !{!"94"}
!185 = !{!"95"}
!186 = !{!"96"}
!187 = !{!"97"}
!188 = !{!"98"}
!189 = !DILocation(line: 125, column: 3, scope: !190)
!190 = distinct !DILexicalBlock(scope: !114, file: !3, line: 125, column: 3)
!191 = !{!"99"}
!192 = !DILocalVariable(name: "os", scope: !190, file: !3, line: 125, type: !29)
!193 = !DILocation(line: 0, scope: !190)
!194 = !{!"100"}
!195 = !{!"101"}
!196 = !{!"102"}
!197 = !{!"103"}
!198 = !DILocalVariable(name: "bj", scope: !190, file: !3, line: 125, type: !30)
!199 = !{!"104"}
!200 = !{!"105"}
!201 = !{!"106"}
!202 = !DILocalVariable(name: "u", scope: !190, file: !3, line: 125, type: !6)
!203 = !{!"107"}
!204 = !DILocalVariable(name: "r", scope: !190, file: !3, line: 125, type: !6)
!205 = !{!"108"}
!206 = !DILocalVariable(name: "x", scope: !190, file: !3, line: 125, type: !6)
!207 = !{!"109"}
!208 = !{!"110"}
!209 = !{!"111"}
!210 = !{!"112"}
!211 = !{!"113"}
!212 = !{!"114"}
!213 = !DILocation(line: 125, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !114, file: !3, line: 125, column: 3)
!215 = !{!"115"}
!216 = !DILocalVariable(name: "os", scope: !214, file: !3, line: 125, type: !29)
!217 = !DILocation(line: 0, scope: !214)
!218 = !{!"116"}
!219 = !{!"117"}
!220 = !{!"118"}
!221 = !{!"119"}
!222 = !DILocalVariable(name: "bj", scope: !214, file: !3, line: 125, type: !30)
!223 = !{!"120"}
!224 = !{!"121"}
!225 = !{!"122"}
!226 = !DILocalVariable(name: "u", scope: !214, file: !3, line: 125, type: !6)
!227 = !{!"123"}
!228 = !DILocalVariable(name: "r", scope: !214, file: !3, line: 125, type: !6)
!229 = !{!"124"}
!230 = !DILocalVariable(name: "x", scope: !214, file: !3, line: 125, type: !6)
!231 = !{!"125"}
!232 = !{!"126"}
!233 = !{!"127"}
!234 = !{!"128"}
!235 = !{!"129"}
!236 = !{!"130"}
!237 = !DILocation(line: 125, column: 3, scope: !238)
!238 = distinct !DILexicalBlock(scope: !114, file: !3, line: 125, column: 3)
!239 = !{!"131"}
!240 = !DILocalVariable(name: "os", scope: !238, file: !3, line: 125, type: !29)
!241 = !DILocation(line: 0, scope: !238)
!242 = !{!"132"}
!243 = !{!"133"}
!244 = !{!"134"}
!245 = !{!"135"}
!246 = !DILocalVariable(name: "bj", scope: !238, file: !3, line: 125, type: !30)
!247 = !{!"136"}
!248 = !{!"137"}
!249 = !{!"138"}
!250 = !DILocalVariable(name: "u", scope: !238, file: !3, line: 125, type: !6)
!251 = !{!"139"}
!252 = !DILocalVariable(name: "r", scope: !238, file: !3, line: 125, type: !6)
!253 = !{!"140"}
!254 = !DILocalVariable(name: "x", scope: !238, file: !3, line: 125, type: !6)
!255 = !{!"141"}
!256 = !{!"142"}
!257 = !{!"143"}
!258 = !{!"144"}
!259 = !{!"145"}
!260 = !{!"146"}
!261 = !DILocation(line: 125, column: 3, scope: !262)
!262 = distinct !DILexicalBlock(scope: !114, file: !3, line: 125, column: 3)
!263 = !{!"147"}
!264 = !DILocalVariable(name: "os", scope: !262, file: !3, line: 125, type: !29)
!265 = !DILocation(line: 0, scope: !262)
!266 = !{!"148"}
!267 = !{!"149"}
!268 = !{!"150"}
!269 = !{!"151"}
!270 = !DILocalVariable(name: "bj", scope: !262, file: !3, line: 125, type: !30)
!271 = !{!"152"}
!272 = !{!"153"}
!273 = !{!"154"}
!274 = !DILocalVariable(name: "u", scope: !262, file: !3, line: 125, type: !6)
!275 = !{!"155"}
!276 = !DILocalVariable(name: "r", scope: !262, file: !3, line: 125, type: !6)
!277 = !{!"156"}
!278 = !DILocalVariable(name: "x", scope: !262, file: !3, line: 125, type: !6)
!279 = !{!"157"}
!280 = !{!"158"}
!281 = !{!"159"}
!282 = !{!"160"}
!283 = !{!"161"}
!284 = !{!"162"}
!285 = !DILocation(line: 125, column: 3, scope: !286)
!286 = distinct !DILexicalBlock(scope: !114, file: !3, line: 125, column: 3)
!287 = !{!"163"}
!288 = !DILocalVariable(name: "os", scope: !286, file: !3, line: 125, type: !29)
!289 = !DILocation(line: 0, scope: !286)
!290 = !{!"164"}
!291 = !{!"165"}
!292 = !{!"166"}
!293 = !{!"167"}
!294 = !DILocalVariable(name: "bj", scope: !286, file: !3, line: 125, type: !30)
!295 = !{!"168"}
!296 = !{!"169"}
!297 = !{!"170"}
!298 = !DILocalVariable(name: "u", scope: !286, file: !3, line: 125, type: !6)
!299 = !{!"171"}
!300 = !DILocalVariable(name: "r", scope: !286, file: !3, line: 125, type: !6)
!301 = !{!"172"}
!302 = !DILocalVariable(name: "x", scope: !286, file: !3, line: 125, type: !6)
!303 = !{!"173"}
!304 = !{!"174"}
!305 = !{!"175"}
!306 = !{!"176"}
!307 = !{!"177"}
!308 = !{!"178"}
!309 = !DILocation(line: 125, column: 3, scope: !114)
!310 = !{!"179"}
!311 = !DILocation(line: 135, column: 3, scope: !26)
!312 = !{!"180"}
!313 = !DILocation(line: 135, column: 12, scope: !26)
!314 = !{!"181"}
!315 = !DILocation(line: 136, column: 3, scope: !26)
!316 = !{!"182"}
!317 = !DILocalVariable(name: "i", scope: !318, file: !3, line: 136, type: !6)
!318 = distinct !DILexicalBlock(scope: !26, file: !3, line: 136, column: 3)
!319 = !DILocation(line: 0, scope: !318)
!320 = !{!"183"}
!321 = !DILocation(line: 136, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !3, line: 136, column: 3)
!323 = !{!"184"}
!324 = !DILocalVariable(name: "os", scope: !322, file: !3, line: 136, type: !29)
!325 = !DILocation(line: 0, scope: !322)
!326 = !{!"185"}
!327 = !{!"186"}
!328 = !{!"187"}
!329 = !{!"188"}
!330 = !DILocalVariable(name: "bj", scope: !322, file: !3, line: 136, type: !30)
!331 = !{!"189"}
!332 = !{!"190"}
!333 = !{!"191"}
!334 = !DILocalVariable(name: "u", scope: !322, file: !3, line: 136, type: !6)
!335 = !{!"192"}
!336 = !DILocalVariable(name: "r", scope: !322, file: !3, line: 136, type: !6)
!337 = !{!"193"}
!338 = !DILocalVariable(name: "x", scope: !322, file: !3, line: 136, type: !6)
!339 = !{!"194"}
!340 = !{!"195"}
!341 = !{!"196"}
!342 = !{!"197"}
!343 = !{!"198"}
!344 = !{!"199"}
!345 = !DILocation(line: 136, column: 3, scope: !346)
!346 = distinct !DILexicalBlock(scope: !318, file: !3, line: 136, column: 3)
!347 = !{!"200"}
!348 = !DILocalVariable(name: "os", scope: !346, file: !3, line: 136, type: !29)
!349 = !DILocation(line: 0, scope: !346)
!350 = !{!"201"}
!351 = !{!"202"}
!352 = !{!"203"}
!353 = !{!"204"}
!354 = !DILocalVariable(name: "bj", scope: !346, file: !3, line: 136, type: !30)
!355 = !{!"205"}
!356 = !{!"206"}
!357 = !{!"207"}
!358 = !DILocalVariable(name: "u", scope: !346, file: !3, line: 136, type: !6)
!359 = !{!"208"}
!360 = !DILocalVariable(name: "r", scope: !346, file: !3, line: 136, type: !6)
!361 = !{!"209"}
!362 = !DILocalVariable(name: "x", scope: !346, file: !3, line: 136, type: !6)
!363 = !{!"210"}
!364 = !{!"211"}
!365 = !{!"212"}
!366 = !{!"213"}
!367 = !{!"214"}
!368 = !{!"215"}
!369 = !DILocation(line: 136, column: 3, scope: !370)
!370 = distinct !DILexicalBlock(scope: !318, file: !3, line: 136, column: 3)
!371 = !{!"216"}
!372 = !DILocalVariable(name: "os", scope: !370, file: !3, line: 136, type: !29)
!373 = !DILocation(line: 0, scope: !370)
!374 = !{!"217"}
!375 = !{!"218"}
!376 = !{!"219"}
!377 = !{!"220"}
!378 = !DILocalVariable(name: "bj", scope: !370, file: !3, line: 136, type: !30)
!379 = !{!"221"}
!380 = !{!"222"}
!381 = !{!"223"}
!382 = !DILocalVariable(name: "u", scope: !370, file: !3, line: 136, type: !6)
!383 = !{!"224"}
!384 = !DILocalVariable(name: "r", scope: !370, file: !3, line: 136, type: !6)
!385 = !{!"225"}
!386 = !DILocalVariable(name: "x", scope: !370, file: !3, line: 136, type: !6)
!387 = !{!"226"}
!388 = !{!"227"}
!389 = !{!"228"}
!390 = !{!"229"}
!391 = !{!"230"}
!392 = !{!"231"}
!393 = !DILocation(line: 136, column: 3, scope: !318)
!394 = !{!"232"}
!395 = !DILocation(line: 146, column: 1, scope: !26)
!396 = !{!"233"}
!397 = distinct !DISubprogram(name: "load32", scope: !398, file: !398, line: 166, type: !399, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!398 = !DIFile(filename: "../hacl-star/dist/karamel/include/krml/lowstar_endianness.h", directory: "/home/luwei/bech-back/HACL/ChaCha20")
!399 = !DISubroutineType(types: !400)
!400 = !{!6, !30}
!401 = !{!"234"}
!402 = !DILocalVariable(name: "b", arg: 1, scope: !397, file: !398, line: 166, type: !30)
!403 = !DILocation(line: 0, scope: !397)
!404 = !{!"235"}
!405 = !DILocalVariable(name: "x", scope: !397, file: !398, line: 167, type: !6)
!406 = !DILocation(line: 167, column: 12, scope: !397)
!407 = !{!"236"}
!408 = !DILocation(line: 168, column: 3, scope: !397)
!409 = !{!"237"}
!410 = !{!"238"}
!411 = !DILocation(line: 169, column: 10, scope: !397)
!412 = !{!"239"}
!413 = !DILocation(line: 169, column: 3, scope: !397)
!414 = !{!"240"}
!415 = distinct !DISubprogram(name: "__uint32_identity", scope: !416, file: !416, line: 39, type: !417, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h", directory: "")
!417 = !DISubroutineType(types: !418)
!418 = !{!8, !8}
!419 = !DILocalVariable(name: "__x", arg: 1, scope: !415, file: !416, line: 39, type: !8)
!420 = !DILocation(line: 0, scope: !415)
!421 = !{!"241"}
!422 = !DILocation(line: 41, column: 3, scope: !415)
!423 = !{!"242"}
!424 = distinct !DISubprogram(name: "Hacl_Impl_Chacha20_chacha20_update", scope: !3, file: !3, line: 187, type: !425, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !29, !6, !30, !30}
!427 = !DILocalVariable(name: "ctx", arg: 1, scope: !424, file: !3, line: 187, type: !29)
!428 = !DILocation(line: 0, scope: !424)
!429 = !{!"243"}
!430 = !DILocalVariable(name: "len", arg: 2, scope: !424, file: !3, line: 187, type: !6)
!431 = !{!"244"}
!432 = !DILocalVariable(name: "out", arg: 3, scope: !424, file: !3, line: 187, type: !30)
!433 = !{!"245"}
!434 = !DILocalVariable(name: "text", arg: 4, scope: !424, file: !3, line: 187, type: !30)
!435 = !{!"246"}
!436 = !DILocation(line: 189, column: 22, scope: !424)
!437 = !{!"247"}
!438 = !DILocalVariable(name: "rem", scope: !424, file: !3, line: 189, type: !6)
!439 = !{!"248"}
!440 = !DILocation(line: 190, column: 21, scope: !424)
!441 = !{!"249"}
!442 = !DILocalVariable(name: "nb", scope: !424, file: !3, line: 190, type: !6)
!443 = !{!"250"}
!444 = !DILocation(line: 191, column: 23, scope: !424)
!445 = !{!"251"}
!446 = !DILocalVariable(name: "rem1", scope: !424, file: !3, line: 191, type: !6)
!447 = !{!"252"}
!448 = !DILocalVariable(name: "i", scope: !449, file: !3, line: 192, type: !6)
!449 = distinct !DILexicalBlock(scope: !424, file: !3, line: 192, column: 3)
!450 = !DILocation(line: 0, scope: !449)
!451 = !{!"253"}
!452 = !DILocation(line: 192, column: 8, scope: !449)
!453 = !{!"254"}
!454 = !{!"255"}
!455 = !{!"256"}
!456 = !DILocation(line: 192, column: 37, scope: !457)
!457 = distinct !DILexicalBlock(scope: !449, file: !3, line: 192, column: 3)
!458 = !{!"257"}
!459 = !DILocation(line: 192, column: 3, scope: !449)
!460 = !{!"258"}
!461 = !DILocation(line: 194, column: 41, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !3, line: 193, column: 3)
!463 = !{!"259"}
!464 = !DILocation(line: 194, column: 37, scope: !462)
!465 = !{!"260"}
!466 = !{!"261"}
!467 = !{!"PointTainted"}
!468 = !DILocation(line: 194, column: 70, scope: !462)
!469 = !{!"262"}
!470 = !DILocation(line: 194, column: 66, scope: !462)
!471 = !{!"263"}
!472 = !{!"264"}
!473 = !DILocation(line: 194, column: 5, scope: !462)
!474 = !{!"265"}
!475 = !DILocation(line: 195, column: 3, scope: !462)
!476 = !{!"266"}
!477 = !DILocation(line: 192, column: 44, scope: !457)
!478 = !{!"267"}
!479 = !{!"268"}
!480 = !DILocation(line: 192, column: 3, scope: !457)
!481 = distinct !{!481, !459, !482, !483}
!482 = !DILocation(line: 195, column: 3, scope: !449)
!483 = !{!"llvm.loop.mustprogress"}
!484 = !{!"269"}
!485 = !DILocation(line: 196, column: 12, scope: !486)
!486 = distinct !DILexicalBlock(scope: !424, file: !3, line: 196, column: 7)
!487 = !{!"270"}
!488 = !DILocation(line: 196, column: 7, scope: !424)
!489 = !{!"271"}
!490 = !DILocation(line: 198, column: 46, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !3, line: 197, column: 3)
!492 = !{!"272"}
!493 = !DILocation(line: 198, column: 41, scope: !491)
!494 = !{!"273"}
!495 = !{!"274"}
!496 = !DILocation(line: 198, column: 77, scope: !491)
!497 = !{!"275"}
!498 = !DILocation(line: 198, column: 72, scope: !491)
!499 = !{!"276"}
!500 = !{!"277"}
!501 = !DILocation(line: 198, column: 5, scope: !491)
!502 = !{!"278"}
!503 = !DILocation(line: 199, column: 3, scope: !491)
!504 = !{!"279"}
!505 = !DILocation(line: 200, column: 1, scope: !424)
!506 = !{!"280"}
!507 = distinct !DISubprogram(name: "chacha20_encrypt_block", scope: !3, file: !3, line: 148, type: !508, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !29, !30, !6, !30}
!510 = !{!"281"}
!511 = !{!"282"}
!512 = !DILocalVariable(name: "ctx", arg: 1, scope: !507, file: !3, line: 148, type: !29)
!513 = !DILocation(line: 0, scope: !507)
!514 = !{!"283"}
!515 = !DILocalVariable(name: "out", arg: 2, scope: !507, file: !3, line: 148, type: !30)
!516 = !{!"284"}
!517 = !DILocalVariable(name: "incr", arg: 3, scope: !507, file: !3, line: 148, type: !6)
!518 = !{!"285"}
!519 = !DILocalVariable(name: "text", arg: 4, scope: !507, file: !3, line: 148, type: !30)
!520 = !{!"286"}
!521 = !DILocalVariable(name: "k", scope: !507, file: !3, line: 150, type: !522)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 16)
!525 = !DILocation(line: 150, column: 12, scope: !507)
!526 = !{!"287"}
!527 = !{!"288"}
!528 = !{!"289"}
!529 = !DILocation(line: 151, column: 17, scope: !507)
!530 = !{!"290"}
!531 = !DILocation(line: 151, column: 3, scope: !507)
!532 = !{!"291"}
!533 = !DILocalVariable(name: "bl", scope: !507, file: !3, line: 152, type: !522)
!534 = !DILocation(line: 152, column: 12, scope: !507)
!535 = !{!"292"}
!536 = !{!"293"}
!537 = !{!"294"}
!538 = !DILocation(line: 153, column: 3, scope: !507)
!539 = !{!"295"}
!540 = !DILocalVariable(name: "i", scope: !541, file: !3, line: 153, type: !6)
!541 = distinct !DILexicalBlock(scope: !507, file: !3, line: 153, column: 3)
!542 = !DILocation(line: 0, scope: !541)
!543 = !{!"296"}
!544 = !DILocation(line: 153, column: 3, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!546 = !{!"297"}
!547 = !DILocalVariable(name: "os", scope: !545, file: !3, line: 153, type: !29)
!548 = !DILocation(line: 0, scope: !545)
!549 = !{!"298"}
!550 = !{!"299"}
!551 = !{!"300"}
!552 = !{!"301"}
!553 = !DILocalVariable(name: "bj", scope: !545, file: !3, line: 153, type: !30)
!554 = !{!"302"}
!555 = !{!"303"}
!556 = !{!"304"}
!557 = !DILocalVariable(name: "u", scope: !545, file: !3, line: 153, type: !6)
!558 = !{!"305"}
!559 = !DILocalVariable(name: "r", scope: !545, file: !3, line: 153, type: !6)
!560 = !{!"306"}
!561 = !DILocalVariable(name: "x", scope: !545, file: !3, line: 153, type: !6)
!562 = !{!"307"}
!563 = !{!"308"}
!564 = !{!"309"}
!565 = !{!"310"}
!566 = !{!"311"}
!567 = !{!"312"}
!568 = !DILocation(line: 153, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!570 = !{!"313"}
!571 = !DILocalVariable(name: "os", scope: !569, file: !3, line: 153, type: !29)
!572 = !DILocation(line: 0, scope: !569)
!573 = !{!"314"}
!574 = !{!"315"}
!575 = !{!"316"}
!576 = !{!"317"}
!577 = !DILocalVariable(name: "bj", scope: !569, file: !3, line: 153, type: !30)
!578 = !{!"318"}
!579 = !{!"319"}
!580 = !{!"320"}
!581 = !DILocalVariable(name: "u", scope: !569, file: !3, line: 153, type: !6)
!582 = !{!"321"}
!583 = !DILocalVariable(name: "r", scope: !569, file: !3, line: 153, type: !6)
!584 = !{!"322"}
!585 = !DILocalVariable(name: "x", scope: !569, file: !3, line: 153, type: !6)
!586 = !{!"323"}
!587 = !{!"324"}
!588 = !{!"325"}
!589 = !{!"326"}
!590 = !{!"327"}
!591 = !{!"328"}
!592 = !DILocation(line: 153, column: 3, scope: !593)
!593 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!594 = !{!"329"}
!595 = !DILocalVariable(name: "os", scope: !593, file: !3, line: 153, type: !29)
!596 = !DILocation(line: 0, scope: !593)
!597 = !{!"330"}
!598 = !{!"331"}
!599 = !{!"332"}
!600 = !{!"333"}
!601 = !DILocalVariable(name: "bj", scope: !593, file: !3, line: 153, type: !30)
!602 = !{!"334"}
!603 = !{!"335"}
!604 = !{!"336"}
!605 = !DILocalVariable(name: "u", scope: !593, file: !3, line: 153, type: !6)
!606 = !{!"337"}
!607 = !DILocalVariable(name: "r", scope: !593, file: !3, line: 153, type: !6)
!608 = !{!"338"}
!609 = !DILocalVariable(name: "x", scope: !593, file: !3, line: 153, type: !6)
!610 = !{!"339"}
!611 = !{!"340"}
!612 = !{!"341"}
!613 = !{!"342"}
!614 = !{!"343"}
!615 = !{!"344"}
!616 = !DILocation(line: 153, column: 3, scope: !617)
!617 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!618 = !{!"345"}
!619 = !DILocalVariable(name: "os", scope: !617, file: !3, line: 153, type: !29)
!620 = !DILocation(line: 0, scope: !617)
!621 = !{!"346"}
!622 = !{!"347"}
!623 = !{!"348"}
!624 = !{!"349"}
!625 = !DILocalVariable(name: "bj", scope: !617, file: !3, line: 153, type: !30)
!626 = !{!"350"}
!627 = !{!"351"}
!628 = !{!"352"}
!629 = !DILocalVariable(name: "u", scope: !617, file: !3, line: 153, type: !6)
!630 = !{!"353"}
!631 = !DILocalVariable(name: "r", scope: !617, file: !3, line: 153, type: !6)
!632 = !{!"354"}
!633 = !DILocalVariable(name: "x", scope: !617, file: !3, line: 153, type: !6)
!634 = !{!"355"}
!635 = !{!"356"}
!636 = !{!"357"}
!637 = !{!"358"}
!638 = !{!"359"}
!639 = !{!"360"}
!640 = !DILocation(line: 153, column: 3, scope: !641)
!641 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!642 = !{!"361"}
!643 = !DILocalVariable(name: "os", scope: !641, file: !3, line: 153, type: !29)
!644 = !DILocation(line: 0, scope: !641)
!645 = !{!"362"}
!646 = !{!"363"}
!647 = !{!"364"}
!648 = !{!"365"}
!649 = !DILocalVariable(name: "bj", scope: !641, file: !3, line: 153, type: !30)
!650 = !{!"366"}
!651 = !{!"367"}
!652 = !{!"368"}
!653 = !DILocalVariable(name: "u", scope: !641, file: !3, line: 153, type: !6)
!654 = !{!"369"}
!655 = !DILocalVariable(name: "r", scope: !641, file: !3, line: 153, type: !6)
!656 = !{!"370"}
!657 = !DILocalVariable(name: "x", scope: !641, file: !3, line: 153, type: !6)
!658 = !{!"371"}
!659 = !{!"372"}
!660 = !{!"373"}
!661 = !{!"374"}
!662 = !{!"375"}
!663 = !{!"376"}
!664 = !DILocation(line: 153, column: 3, scope: !665)
!665 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!666 = !{!"377"}
!667 = !DILocalVariable(name: "os", scope: !665, file: !3, line: 153, type: !29)
!668 = !DILocation(line: 0, scope: !665)
!669 = !{!"378"}
!670 = !{!"379"}
!671 = !{!"380"}
!672 = !{!"381"}
!673 = !DILocalVariable(name: "bj", scope: !665, file: !3, line: 153, type: !30)
!674 = !{!"382"}
!675 = !{!"383"}
!676 = !{!"384"}
!677 = !DILocalVariable(name: "u", scope: !665, file: !3, line: 153, type: !6)
!678 = !{!"385"}
!679 = !DILocalVariable(name: "r", scope: !665, file: !3, line: 153, type: !6)
!680 = !{!"386"}
!681 = !DILocalVariable(name: "x", scope: !665, file: !3, line: 153, type: !6)
!682 = !{!"387"}
!683 = !{!"388"}
!684 = !{!"389"}
!685 = !{!"390"}
!686 = !{!"391"}
!687 = !{!"392"}
!688 = !DILocation(line: 153, column: 3, scope: !689)
!689 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!690 = !{!"393"}
!691 = !DILocalVariable(name: "os", scope: !689, file: !3, line: 153, type: !29)
!692 = !DILocation(line: 0, scope: !689)
!693 = !{!"394"}
!694 = !{!"395"}
!695 = !{!"396"}
!696 = !{!"397"}
!697 = !DILocalVariable(name: "bj", scope: !689, file: !3, line: 153, type: !30)
!698 = !{!"398"}
!699 = !{!"399"}
!700 = !{!"400"}
!701 = !DILocalVariable(name: "u", scope: !689, file: !3, line: 153, type: !6)
!702 = !{!"401"}
!703 = !DILocalVariable(name: "r", scope: !689, file: !3, line: 153, type: !6)
!704 = !{!"402"}
!705 = !DILocalVariable(name: "x", scope: !689, file: !3, line: 153, type: !6)
!706 = !{!"403"}
!707 = !{!"404"}
!708 = !{!"405"}
!709 = !{!"406"}
!710 = !{!"407"}
!711 = !{!"408"}
!712 = !DILocation(line: 153, column: 3, scope: !713)
!713 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!714 = !{!"409"}
!715 = !DILocalVariable(name: "os", scope: !713, file: !3, line: 153, type: !29)
!716 = !DILocation(line: 0, scope: !713)
!717 = !{!"410"}
!718 = !{!"411"}
!719 = !{!"412"}
!720 = !{!"413"}
!721 = !DILocalVariable(name: "bj", scope: !713, file: !3, line: 153, type: !30)
!722 = !{!"414"}
!723 = !{!"415"}
!724 = !{!"416"}
!725 = !DILocalVariable(name: "u", scope: !713, file: !3, line: 153, type: !6)
!726 = !{!"417"}
!727 = !DILocalVariable(name: "r", scope: !713, file: !3, line: 153, type: !6)
!728 = !{!"418"}
!729 = !DILocalVariable(name: "x", scope: !713, file: !3, line: 153, type: !6)
!730 = !{!"419"}
!731 = !{!"420"}
!732 = !{!"421"}
!733 = !{!"422"}
!734 = !{!"423"}
!735 = !{!"424"}
!736 = !DILocation(line: 153, column: 3, scope: !737)
!737 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!738 = !{!"425"}
!739 = !DILocalVariable(name: "os", scope: !737, file: !3, line: 153, type: !29)
!740 = !DILocation(line: 0, scope: !737)
!741 = !{!"426"}
!742 = !{!"427"}
!743 = !{!"428"}
!744 = !{!"429"}
!745 = !DILocalVariable(name: "bj", scope: !737, file: !3, line: 153, type: !30)
!746 = !{!"430"}
!747 = !{!"431"}
!748 = !{!"432"}
!749 = !DILocalVariable(name: "u", scope: !737, file: !3, line: 153, type: !6)
!750 = !{!"433"}
!751 = !DILocalVariable(name: "r", scope: !737, file: !3, line: 153, type: !6)
!752 = !{!"434"}
!753 = !DILocalVariable(name: "x", scope: !737, file: !3, line: 153, type: !6)
!754 = !{!"435"}
!755 = !{!"436"}
!756 = !{!"437"}
!757 = !{!"438"}
!758 = !{!"439"}
!759 = !{!"440"}
!760 = !DILocation(line: 153, column: 3, scope: !761)
!761 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!762 = !{!"441"}
!763 = !DILocalVariable(name: "os", scope: !761, file: !3, line: 153, type: !29)
!764 = !DILocation(line: 0, scope: !761)
!765 = !{!"442"}
!766 = !{!"443"}
!767 = !{!"444"}
!768 = !{!"445"}
!769 = !DILocalVariable(name: "bj", scope: !761, file: !3, line: 153, type: !30)
!770 = !{!"446"}
!771 = !{!"447"}
!772 = !{!"448"}
!773 = !DILocalVariable(name: "u", scope: !761, file: !3, line: 153, type: !6)
!774 = !{!"449"}
!775 = !DILocalVariable(name: "r", scope: !761, file: !3, line: 153, type: !6)
!776 = !{!"450"}
!777 = !DILocalVariable(name: "x", scope: !761, file: !3, line: 153, type: !6)
!778 = !{!"451"}
!779 = !{!"452"}
!780 = !{!"453"}
!781 = !{!"454"}
!782 = !{!"455"}
!783 = !{!"456"}
!784 = !DILocation(line: 153, column: 3, scope: !785)
!785 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!786 = !{!"457"}
!787 = !DILocalVariable(name: "os", scope: !785, file: !3, line: 153, type: !29)
!788 = !DILocation(line: 0, scope: !785)
!789 = !{!"458"}
!790 = !{!"459"}
!791 = !{!"460"}
!792 = !{!"461"}
!793 = !DILocalVariable(name: "bj", scope: !785, file: !3, line: 153, type: !30)
!794 = !{!"462"}
!795 = !{!"463"}
!796 = !{!"464"}
!797 = !DILocalVariable(name: "u", scope: !785, file: !3, line: 153, type: !6)
!798 = !{!"465"}
!799 = !DILocalVariable(name: "r", scope: !785, file: !3, line: 153, type: !6)
!800 = !{!"466"}
!801 = !DILocalVariable(name: "x", scope: !785, file: !3, line: 153, type: !6)
!802 = !{!"467"}
!803 = !{!"468"}
!804 = !{!"469"}
!805 = !{!"470"}
!806 = !{!"471"}
!807 = !{!"472"}
!808 = !DILocation(line: 153, column: 3, scope: !809)
!809 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!810 = !{!"473"}
!811 = !DILocalVariable(name: "os", scope: !809, file: !3, line: 153, type: !29)
!812 = !DILocation(line: 0, scope: !809)
!813 = !{!"474"}
!814 = !{!"475"}
!815 = !{!"476"}
!816 = !{!"477"}
!817 = !DILocalVariable(name: "bj", scope: !809, file: !3, line: 153, type: !30)
!818 = !{!"478"}
!819 = !{!"479"}
!820 = !{!"480"}
!821 = !DILocalVariable(name: "u", scope: !809, file: !3, line: 153, type: !6)
!822 = !{!"481"}
!823 = !DILocalVariable(name: "r", scope: !809, file: !3, line: 153, type: !6)
!824 = !{!"482"}
!825 = !DILocalVariable(name: "x", scope: !809, file: !3, line: 153, type: !6)
!826 = !{!"483"}
!827 = !{!"484"}
!828 = !{!"485"}
!829 = !{!"486"}
!830 = !{!"487"}
!831 = !{!"488"}
!832 = !DILocation(line: 153, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!834 = !{!"489"}
!835 = !DILocalVariable(name: "os", scope: !833, file: !3, line: 153, type: !29)
!836 = !DILocation(line: 0, scope: !833)
!837 = !{!"490"}
!838 = !{!"491"}
!839 = !{!"492"}
!840 = !{!"493"}
!841 = !DILocalVariable(name: "bj", scope: !833, file: !3, line: 153, type: !30)
!842 = !{!"494"}
!843 = !{!"495"}
!844 = !{!"496"}
!845 = !DILocalVariable(name: "u", scope: !833, file: !3, line: 153, type: !6)
!846 = !{!"497"}
!847 = !DILocalVariable(name: "r", scope: !833, file: !3, line: 153, type: !6)
!848 = !{!"498"}
!849 = !DILocalVariable(name: "x", scope: !833, file: !3, line: 153, type: !6)
!850 = !{!"499"}
!851 = !{!"500"}
!852 = !{!"501"}
!853 = !{!"502"}
!854 = !{!"503"}
!855 = !{!"504"}
!856 = !DILocation(line: 153, column: 3, scope: !857)
!857 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!858 = !{!"505"}
!859 = !DILocalVariable(name: "os", scope: !857, file: !3, line: 153, type: !29)
!860 = !DILocation(line: 0, scope: !857)
!861 = !{!"506"}
!862 = !{!"507"}
!863 = !{!"508"}
!864 = !{!"509"}
!865 = !DILocalVariable(name: "bj", scope: !857, file: !3, line: 153, type: !30)
!866 = !{!"510"}
!867 = !{!"511"}
!868 = !{!"512"}
!869 = !DILocalVariable(name: "u", scope: !857, file: !3, line: 153, type: !6)
!870 = !{!"513"}
!871 = !DILocalVariable(name: "r", scope: !857, file: !3, line: 153, type: !6)
!872 = !{!"514"}
!873 = !DILocalVariable(name: "x", scope: !857, file: !3, line: 153, type: !6)
!874 = !{!"515"}
!875 = !{!"516"}
!876 = !{!"517"}
!877 = !{!"518"}
!878 = !{!"519"}
!879 = !{!"520"}
!880 = !DILocation(line: 153, column: 3, scope: !881)
!881 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!882 = !{!"521"}
!883 = !DILocalVariable(name: "os", scope: !881, file: !3, line: 153, type: !29)
!884 = !DILocation(line: 0, scope: !881)
!885 = !{!"522"}
!886 = !{!"523"}
!887 = !{!"524"}
!888 = !{!"525"}
!889 = !DILocalVariable(name: "bj", scope: !881, file: !3, line: 153, type: !30)
!890 = !{!"526"}
!891 = !{!"527"}
!892 = !{!"528"}
!893 = !DILocalVariable(name: "u", scope: !881, file: !3, line: 153, type: !6)
!894 = !{!"529"}
!895 = !DILocalVariable(name: "r", scope: !881, file: !3, line: 153, type: !6)
!896 = !{!"530"}
!897 = !DILocalVariable(name: "x", scope: !881, file: !3, line: 153, type: !6)
!898 = !{!"531"}
!899 = !{!"532"}
!900 = !{!"533"}
!901 = !{!"534"}
!902 = !{!"535"}
!903 = !{!"536"}
!904 = !DILocation(line: 153, column: 3, scope: !905)
!905 = distinct !DILexicalBlock(scope: !541, file: !3, line: 153, column: 3)
!906 = !{!"537"}
!907 = !DILocalVariable(name: "os", scope: !905, file: !3, line: 153, type: !29)
!908 = !DILocation(line: 0, scope: !905)
!909 = !{!"538"}
!910 = !{!"539"}
!911 = !{!"540"}
!912 = !{!"541"}
!913 = !DILocalVariable(name: "bj", scope: !905, file: !3, line: 153, type: !30)
!914 = !{!"542"}
!915 = !{!"543"}
!916 = !{!"544"}
!917 = !DILocalVariable(name: "u", scope: !905, file: !3, line: 153, type: !6)
!918 = !{!"545"}
!919 = !DILocalVariable(name: "r", scope: !905, file: !3, line: 153, type: !6)
!920 = !{!"546"}
!921 = !DILocalVariable(name: "x", scope: !905, file: !3, line: 153, type: !6)
!922 = !{!"547"}
!923 = !{!"548"}
!924 = !{!"549"}
!925 = !{!"550"}
!926 = !{!"551"}
!927 = !{!"552"}
!928 = !DILocation(line: 153, column: 3, scope: !541)
!929 = !{!"553"}
!930 = !DILocation(line: 163, column: 3, scope: !507)
!931 = !{!"554"}
!932 = !DILocalVariable(name: "i", scope: !933, file: !3, line: 163, type: !6)
!933 = distinct !DILexicalBlock(scope: !507, file: !3, line: 163, column: 3)
!934 = !DILocation(line: 0, scope: !933)
!935 = !{!"555"}
!936 = !DILocation(line: 163, column: 3, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!938 = !{!"556"}
!939 = !DILocalVariable(name: "os", scope: !937, file: !3, line: 163, type: !29)
!940 = !DILocation(line: 0, scope: !937)
!941 = !{!"557"}
!942 = !{!"558"}
!943 = !{!"559"}
!944 = !{!"560"}
!945 = !{!"561"}
!946 = !{!"562"}
!947 = !{!"563"}
!948 = !{!"564"}
!949 = !DILocalVariable(name: "x", scope: !937, file: !3, line: 163, type: !6)
!950 = !{!"565"}
!951 = !{!"566"}
!952 = !{!"567"}
!953 = !{!"568"}
!954 = !{!"569"}
!955 = !{!"570"}
!956 = !DILocation(line: 163, column: 3, scope: !957)
!957 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!958 = !{!"571"}
!959 = !DILocalVariable(name: "os", scope: !957, file: !3, line: 163, type: !29)
!960 = !DILocation(line: 0, scope: !957)
!961 = !{!"572"}
!962 = !{!"573"}
!963 = !{!"574"}
!964 = !{!"575"}
!965 = !{!"576"}
!966 = !{!"577"}
!967 = !{!"578"}
!968 = !{!"579"}
!969 = !DILocalVariable(name: "x", scope: !957, file: !3, line: 163, type: !6)
!970 = !{!"580"}
!971 = !{!"581"}
!972 = !{!"582"}
!973 = !{!"583"}
!974 = !{!"584"}
!975 = !{!"585"}
!976 = !DILocation(line: 163, column: 3, scope: !977)
!977 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!978 = !{!"586"}
!979 = !DILocalVariable(name: "os", scope: !977, file: !3, line: 163, type: !29)
!980 = !DILocation(line: 0, scope: !977)
!981 = !{!"587"}
!982 = !{!"588"}
!983 = !{!"589"}
!984 = !{!"590"}
!985 = !{!"591"}
!986 = !{!"592"}
!987 = !{!"593"}
!988 = !{!"594"}
!989 = !DILocalVariable(name: "x", scope: !977, file: !3, line: 163, type: !6)
!990 = !{!"595"}
!991 = !{!"596"}
!992 = !{!"597"}
!993 = !{!"598"}
!994 = !{!"599"}
!995 = !{!"600"}
!996 = !DILocation(line: 163, column: 3, scope: !997)
!997 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!998 = !{!"601"}
!999 = !DILocalVariable(name: "os", scope: !997, file: !3, line: 163, type: !29)
!1000 = !DILocation(line: 0, scope: !997)
!1001 = !{!"602"}
!1002 = !{!"603"}
!1003 = !{!"604"}
!1004 = !{!"605"}
!1005 = !{!"606"}
!1006 = !{!"607"}
!1007 = !{!"608"}
!1008 = !{!"609"}
!1009 = !DILocalVariable(name: "x", scope: !997, file: !3, line: 163, type: !6)
!1010 = !{!"610"}
!1011 = !{!"611"}
!1012 = !{!"612"}
!1013 = !{!"613"}
!1014 = !{!"614"}
!1015 = !{!"615"}
!1016 = !DILocation(line: 163, column: 3, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1018 = !{!"616"}
!1019 = !DILocalVariable(name: "os", scope: !1017, file: !3, line: 163, type: !29)
!1020 = !DILocation(line: 0, scope: !1017)
!1021 = !{!"617"}
!1022 = !{!"618"}
!1023 = !{!"619"}
!1024 = !{!"620"}
!1025 = !{!"621"}
!1026 = !{!"622"}
!1027 = !{!"623"}
!1028 = !{!"624"}
!1029 = !DILocalVariable(name: "x", scope: !1017, file: !3, line: 163, type: !6)
!1030 = !{!"625"}
!1031 = !{!"626"}
!1032 = !{!"627"}
!1033 = !{!"628"}
!1034 = !{!"629"}
!1035 = !{!"630"}
!1036 = !DILocation(line: 163, column: 3, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1038 = !{!"631"}
!1039 = !DILocalVariable(name: "os", scope: !1037, file: !3, line: 163, type: !29)
!1040 = !DILocation(line: 0, scope: !1037)
!1041 = !{!"632"}
!1042 = !{!"633"}
!1043 = !{!"634"}
!1044 = !{!"635"}
!1045 = !{!"636"}
!1046 = !{!"637"}
!1047 = !{!"638"}
!1048 = !{!"639"}
!1049 = !DILocalVariable(name: "x", scope: !1037, file: !3, line: 163, type: !6)
!1050 = !{!"640"}
!1051 = !{!"641"}
!1052 = !{!"642"}
!1053 = !{!"643"}
!1054 = !{!"644"}
!1055 = !{!"645"}
!1056 = !DILocation(line: 163, column: 3, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1058 = !{!"646"}
!1059 = !DILocalVariable(name: "os", scope: !1057, file: !3, line: 163, type: !29)
!1060 = !DILocation(line: 0, scope: !1057)
!1061 = !{!"647"}
!1062 = !{!"648"}
!1063 = !{!"649"}
!1064 = !{!"650"}
!1065 = !{!"651"}
!1066 = !{!"652"}
!1067 = !{!"653"}
!1068 = !{!"654"}
!1069 = !DILocalVariable(name: "x", scope: !1057, file: !3, line: 163, type: !6)
!1070 = !{!"655"}
!1071 = !{!"656"}
!1072 = !{!"657"}
!1073 = !{!"658"}
!1074 = !{!"659"}
!1075 = !{!"660"}
!1076 = !DILocation(line: 163, column: 3, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1078 = !{!"661"}
!1079 = !DILocalVariable(name: "os", scope: !1077, file: !3, line: 163, type: !29)
!1080 = !DILocation(line: 0, scope: !1077)
!1081 = !{!"662"}
!1082 = !{!"663"}
!1083 = !{!"664"}
!1084 = !{!"665"}
!1085 = !{!"666"}
!1086 = !{!"667"}
!1087 = !{!"668"}
!1088 = !{!"669"}
!1089 = !DILocalVariable(name: "x", scope: !1077, file: !3, line: 163, type: !6)
!1090 = !{!"670"}
!1091 = !{!"671"}
!1092 = !{!"672"}
!1093 = !{!"673"}
!1094 = !{!"674"}
!1095 = !{!"675"}
!1096 = !DILocation(line: 163, column: 3, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1098 = !{!"676"}
!1099 = !DILocalVariable(name: "os", scope: !1097, file: !3, line: 163, type: !29)
!1100 = !DILocation(line: 0, scope: !1097)
!1101 = !{!"677"}
!1102 = !{!"678"}
!1103 = !{!"679"}
!1104 = !{!"680"}
!1105 = !{!"681"}
!1106 = !{!"682"}
!1107 = !{!"683"}
!1108 = !{!"684"}
!1109 = !DILocalVariable(name: "x", scope: !1097, file: !3, line: 163, type: !6)
!1110 = !{!"685"}
!1111 = !{!"686"}
!1112 = !{!"687"}
!1113 = !{!"688"}
!1114 = !{!"689"}
!1115 = !{!"690"}
!1116 = !DILocation(line: 163, column: 3, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1118 = !{!"691"}
!1119 = !DILocalVariable(name: "os", scope: !1117, file: !3, line: 163, type: !29)
!1120 = !DILocation(line: 0, scope: !1117)
!1121 = !{!"692"}
!1122 = !{!"693"}
!1123 = !{!"694"}
!1124 = !{!"695"}
!1125 = !{!"696"}
!1126 = !{!"697"}
!1127 = !{!"698"}
!1128 = !{!"699"}
!1129 = !DILocalVariable(name: "x", scope: !1117, file: !3, line: 163, type: !6)
!1130 = !{!"700"}
!1131 = !{!"701"}
!1132 = !{!"702"}
!1133 = !{!"703"}
!1134 = !{!"704"}
!1135 = !{!"705"}
!1136 = !DILocation(line: 163, column: 3, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1138 = !{!"706"}
!1139 = !DILocalVariable(name: "os", scope: !1137, file: !3, line: 163, type: !29)
!1140 = !DILocation(line: 0, scope: !1137)
!1141 = !{!"707"}
!1142 = !{!"708"}
!1143 = !{!"709"}
!1144 = !{!"710"}
!1145 = !{!"711"}
!1146 = !{!"712"}
!1147 = !{!"713"}
!1148 = !{!"714"}
!1149 = !DILocalVariable(name: "x", scope: !1137, file: !3, line: 163, type: !6)
!1150 = !{!"715"}
!1151 = !{!"716"}
!1152 = !{!"717"}
!1153 = !{!"718"}
!1154 = !{!"719"}
!1155 = !{!"720"}
!1156 = !DILocation(line: 163, column: 3, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1158 = !{!"721"}
!1159 = !DILocalVariable(name: "os", scope: !1157, file: !3, line: 163, type: !29)
!1160 = !DILocation(line: 0, scope: !1157)
!1161 = !{!"722"}
!1162 = !{!"723"}
!1163 = !{!"724"}
!1164 = !{!"725"}
!1165 = !{!"726"}
!1166 = !{!"727"}
!1167 = !{!"728"}
!1168 = !{!"729"}
!1169 = !DILocalVariable(name: "x", scope: !1157, file: !3, line: 163, type: !6)
!1170 = !{!"730"}
!1171 = !{!"731"}
!1172 = !{!"732"}
!1173 = !{!"733"}
!1174 = !{!"734"}
!1175 = !{!"735"}
!1176 = !DILocation(line: 163, column: 3, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1178 = !{!"736"}
!1179 = !DILocalVariable(name: "os", scope: !1177, file: !3, line: 163, type: !29)
!1180 = !DILocation(line: 0, scope: !1177)
!1181 = !{!"737"}
!1182 = !{!"738"}
!1183 = !{!"739"}
!1184 = !{!"740"}
!1185 = !{!"741"}
!1186 = !{!"742"}
!1187 = !{!"743"}
!1188 = !{!"744"}
!1189 = !DILocalVariable(name: "x", scope: !1177, file: !3, line: 163, type: !6)
!1190 = !{!"745"}
!1191 = !{!"746"}
!1192 = !{!"747"}
!1193 = !{!"748"}
!1194 = !{!"749"}
!1195 = !{!"750"}
!1196 = !DILocation(line: 163, column: 3, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1198 = !{!"751"}
!1199 = !DILocalVariable(name: "os", scope: !1197, file: !3, line: 163, type: !29)
!1200 = !DILocation(line: 0, scope: !1197)
!1201 = !{!"752"}
!1202 = !{!"753"}
!1203 = !{!"754"}
!1204 = !{!"755"}
!1205 = !{!"756"}
!1206 = !{!"757"}
!1207 = !{!"758"}
!1208 = !{!"759"}
!1209 = !DILocalVariable(name: "x", scope: !1197, file: !3, line: 163, type: !6)
!1210 = !{!"760"}
!1211 = !{!"761"}
!1212 = !{!"762"}
!1213 = !{!"763"}
!1214 = !{!"764"}
!1215 = !{!"765"}
!1216 = !DILocation(line: 163, column: 3, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1218 = !{!"766"}
!1219 = !DILocalVariable(name: "os", scope: !1217, file: !3, line: 163, type: !29)
!1220 = !DILocation(line: 0, scope: !1217)
!1221 = !{!"767"}
!1222 = !{!"768"}
!1223 = !{!"769"}
!1224 = !{!"770"}
!1225 = !{!"771"}
!1226 = !{!"772"}
!1227 = !{!"773"}
!1228 = !{!"774"}
!1229 = !DILocalVariable(name: "x", scope: !1217, file: !3, line: 163, type: !6)
!1230 = !{!"775"}
!1231 = !{!"776"}
!1232 = !{!"777"}
!1233 = !{!"778"}
!1234 = !{!"779"}
!1235 = !{!"780"}
!1236 = !DILocation(line: 163, column: 3, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !933, file: !3, line: 163, column: 3)
!1238 = !{!"781"}
!1239 = !DILocalVariable(name: "os", scope: !1237, file: !3, line: 163, type: !29)
!1240 = !DILocation(line: 0, scope: !1237)
!1241 = !{!"782"}
!1242 = !{!"783"}
!1243 = !{!"784"}
!1244 = !{!"785"}
!1245 = !{!"786"}
!1246 = !{!"787"}
!1247 = !{!"788"}
!1248 = !{!"789"}
!1249 = !DILocalVariable(name: "x", scope: !1237, file: !3, line: 163, type: !6)
!1250 = !{!"790"}
!1251 = !{!"791"}
!1252 = !{!"792"}
!1253 = !{!"793"}
!1254 = !{!"794"}
!1255 = !{!"795"}
!1256 = !DILocation(line: 163, column: 3, scope: !933)
!1257 = !{!"796"}
!1258 = !DILocation(line: 170, column: 3, scope: !507)
!1259 = !{!"797"}
!1260 = !DILocalVariable(name: "i", scope: !1261, file: !3, line: 170, type: !6)
!1261 = distinct !DILexicalBlock(scope: !507, file: !3, line: 170, column: 3)
!1262 = !DILocation(line: 0, scope: !1261)
!1263 = !{!"798"}
!1264 = !DILocation(line: 170, column: 3, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1266 = !{!"799"}
!1267 = !{!"800"}
!1268 = !{!"801"}
!1269 = !{!"802"}
!1270 = !{!"803"}
!1271 = !{!"804"}
!1272 = !{!"805"}
!1273 = !{!"806"}
!1274 = !{!"807"}
!1275 = !{!"808"}
!1276 = !DILocation(line: 170, column: 3, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1278 = !{!"809"}
!1279 = !{!"810"}
!1280 = !{!"811"}
!1281 = !{!"812"}
!1282 = !{!"813"}
!1283 = !{!"814"}
!1284 = !{!"815"}
!1285 = !{!"816"}
!1286 = !{!"817"}
!1287 = !{!"818"}
!1288 = !DILocation(line: 170, column: 3, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1290 = !{!"819"}
!1291 = !{!"820"}
!1292 = !{!"821"}
!1293 = !{!"822"}
!1294 = !{!"823"}
!1295 = !{!"824"}
!1296 = !{!"825"}
!1297 = !{!"826"}
!1298 = !{!"827"}
!1299 = !{!"828"}
!1300 = !DILocation(line: 170, column: 3, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1302 = !{!"829"}
!1303 = !{!"830"}
!1304 = !{!"831"}
!1305 = !{!"832"}
!1306 = !{!"833"}
!1307 = !{!"834"}
!1308 = !{!"835"}
!1309 = !{!"836"}
!1310 = !{!"837"}
!1311 = !{!"838"}
!1312 = !DILocation(line: 170, column: 3, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1314 = !{!"839"}
!1315 = !{!"840"}
!1316 = !{!"841"}
!1317 = !{!"842"}
!1318 = !{!"843"}
!1319 = !{!"844"}
!1320 = !{!"845"}
!1321 = !{!"846"}
!1322 = !{!"847"}
!1323 = !{!"848"}
!1324 = !DILocation(line: 170, column: 3, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1326 = !{!"849"}
!1327 = !{!"850"}
!1328 = !{!"851"}
!1329 = !{!"852"}
!1330 = !{!"853"}
!1331 = !{!"854"}
!1332 = !{!"855"}
!1333 = !{!"856"}
!1334 = !{!"857"}
!1335 = !{!"858"}
!1336 = !DILocation(line: 170, column: 3, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1338 = !{!"859"}
!1339 = !{!"860"}
!1340 = !{!"861"}
!1341 = !{!"862"}
!1342 = !{!"863"}
!1343 = !{!"864"}
!1344 = !{!"865"}
!1345 = !{!"866"}
!1346 = !{!"867"}
!1347 = !{!"868"}
!1348 = !DILocation(line: 170, column: 3, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1350 = !{!"869"}
!1351 = !{!"870"}
!1352 = !{!"871"}
!1353 = !{!"872"}
!1354 = !{!"873"}
!1355 = !{!"874"}
!1356 = !{!"875"}
!1357 = !{!"876"}
!1358 = !{!"877"}
!1359 = !{!"878"}
!1360 = !DILocation(line: 170, column: 3, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1362 = !{!"879"}
!1363 = !{!"880"}
!1364 = !{!"881"}
!1365 = !{!"882"}
!1366 = !{!"883"}
!1367 = !{!"884"}
!1368 = !{!"885"}
!1369 = !{!"886"}
!1370 = !{!"887"}
!1371 = !{!"888"}
!1372 = !DILocation(line: 170, column: 3, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1374 = !{!"889"}
!1375 = !{!"890"}
!1376 = !{!"891"}
!1377 = !{!"892"}
!1378 = !{!"893"}
!1379 = !{!"894"}
!1380 = !{!"895"}
!1381 = !{!"896"}
!1382 = !{!"897"}
!1383 = !{!"898"}
!1384 = !DILocation(line: 170, column: 3, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1386 = !{!"899"}
!1387 = !{!"900"}
!1388 = !{!"901"}
!1389 = !{!"902"}
!1390 = !{!"903"}
!1391 = !{!"904"}
!1392 = !{!"905"}
!1393 = !{!"906"}
!1394 = !{!"907"}
!1395 = !{!"908"}
!1396 = !DILocation(line: 170, column: 3, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1398 = !{!"909"}
!1399 = !{!"910"}
!1400 = !{!"911"}
!1401 = !{!"912"}
!1402 = !{!"913"}
!1403 = !{!"914"}
!1404 = !{!"915"}
!1405 = !{!"916"}
!1406 = !{!"917"}
!1407 = !{!"918"}
!1408 = !DILocation(line: 170, column: 3, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1410 = !{!"919"}
!1411 = !{!"920"}
!1412 = !{!"921"}
!1413 = !{!"922"}
!1414 = !{!"923"}
!1415 = !{!"924"}
!1416 = !{!"925"}
!1417 = !{!"926"}
!1418 = !{!"927"}
!1419 = !{!"928"}
!1420 = !DILocation(line: 170, column: 3, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1422 = !{!"929"}
!1423 = !{!"930"}
!1424 = !{!"931"}
!1425 = !{!"932"}
!1426 = !{!"933"}
!1427 = !{!"934"}
!1428 = !{!"935"}
!1429 = !{!"936"}
!1430 = !{!"937"}
!1431 = !{!"938"}
!1432 = !DILocation(line: 170, column: 3, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1434 = !{!"939"}
!1435 = !{!"940"}
!1436 = !{!"941"}
!1437 = !{!"942"}
!1438 = !{!"943"}
!1439 = !{!"944"}
!1440 = !{!"945"}
!1441 = !{!"946"}
!1442 = !{!"947"}
!1443 = !{!"948"}
!1444 = !DILocation(line: 170, column: 3, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 170, column: 3)
!1446 = !{!"949"}
!1447 = !{!"950"}
!1448 = !{!"951"}
!1449 = !{!"952"}
!1450 = !{!"953"}
!1451 = !{!"954"}
!1452 = !{!"955"}
!1453 = !{!"956"}
!1454 = !{!"957"}
!1455 = !{!"958"}
!1456 = !DILocation(line: 170, column: 3, scope: !1261)
!1457 = !{!"959"}
!1458 = !DILocation(line: 175, column: 1, scope: !507)
!1459 = !{!"960"}
!1460 = distinct !DISubprogram(name: "chacha20_encrypt_last", scope: !3, file: !3, line: 178, type: !1461, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !29, !6, !30, !6, !30}
!1463 = !{!"961"}
!1464 = !DILocalVariable(name: "ctx", arg: 1, scope: !1460, file: !3, line: 178, type: !29)
!1465 = !DILocation(line: 0, scope: !1460)
!1466 = !{!"962"}
!1467 = !DILocalVariable(name: "len", arg: 2, scope: !1460, file: !3, line: 178, type: !6)
!1468 = !{!"963"}
!1469 = !DILocalVariable(name: "out", arg: 3, scope: !1460, file: !3, line: 178, type: !30)
!1470 = !{!"964"}
!1471 = !DILocalVariable(name: "incr", arg: 4, scope: !1460, file: !3, line: 178, type: !6)
!1472 = !{!"965"}
!1473 = !DILocalVariable(name: "text", arg: 5, scope: !1460, file: !3, line: 178, type: !30)
!1474 = !{!"966"}
!1475 = !DILocalVariable(name: "plain", scope: !1460, file: !3, line: 180, type: !1476)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: 64)
!1479 = !DILocation(line: 180, column: 11, scope: !1460)
!1480 = !{!"967"}
!1481 = !{!"968"}
!1482 = !{!"969"}
!1483 = !DILocation(line: 181, column: 3, scope: !1460)
!1484 = !{!"970"}
!1485 = !DILocation(line: 181, column: 23, scope: !1460)
!1486 = !{!"971"}
!1487 = !DILocation(line: 181, column: 27, scope: !1460)
!1488 = !{!"972"}
!1489 = !{!"973"}
!1490 = !DILocation(line: 182, column: 31, scope: !1460)
!1491 = !{!"974"}
!1492 = !DILocation(line: 182, column: 44, scope: !1460)
!1493 = !{!"975"}
!1494 = !DILocation(line: 182, column: 3, scope: !1460)
!1495 = !{!"976"}
!1496 = !DILocation(line: 183, column: 3, scope: !1460)
!1497 = !{!"977"}
!1498 = !DILocation(line: 183, column: 22, scope: !1460)
!1499 = !{!"978"}
!1500 = !DILocation(line: 183, column: 26, scope: !1460)
!1501 = !{!"979"}
!1502 = !{!"980"}
!1503 = !DILocation(line: 184, column: 1, scope: !1460)
!1504 = !{!"981"}
!1505 = distinct !DISubprogram(name: "chacha20_core", scope: !3, file: !3, line: 95, type: !1506, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !29, !29, !6}
!1508 = !DILocalVariable(name: "k", arg: 1, scope: !1505, file: !3, line: 95, type: !29)
!1509 = !DILocation(line: 0, scope: !1505)
!1510 = !{!"982"}
!1511 = !DILocalVariable(name: "ctx", arg: 2, scope: !1505, file: !3, line: 95, type: !29)
!1512 = !{!"983"}
!1513 = !DILocalVariable(name: "ctr", arg: 3, scope: !1505, file: !3, line: 95, type: !6)
!1514 = !{!"984"}
!1515 = !DILocation(line: 97, column: 3, scope: !1505)
!1516 = !{!"985"}
!1517 = !{!"986"}
!1518 = !{!"987"}
!1519 = !DILocalVariable(name: "ctr_u32", scope: !1505, file: !3, line: 98, type: !6)
!1520 = !{!"988"}
!1521 = !DILocation(line: 99, column: 12, scope: !1505)
!1522 = !{!"989"}
!1523 = !{!"990"}
!1524 = !DILocation(line: 99, column: 19, scope: !1505)
!1525 = !{!"991"}
!1526 = !DILocation(line: 99, column: 3, scope: !1505)
!1527 = !{!"992"}
!1528 = !DILocation(line: 99, column: 10, scope: !1505)
!1529 = !{!"993"}
!1530 = !DILocation(line: 100, column: 3, scope: !1505)
!1531 = !{!"994"}
!1532 = !DILocation(line: 101, column: 3, scope: !1505)
!1533 = !{!"995"}
!1534 = !DILocalVariable(name: "i", scope: !1535, file: !3, line: 101, type: !6)
!1535 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 101, column: 3)
!1536 = !DILocation(line: 0, scope: !1535)
!1537 = !{!"996"}
!1538 = !DILocalVariable(name: "os", scope: !1539, file: !3, line: 101, type: !29)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1540 = !DILocation(line: 0, scope: !1539)
!1541 = !{!"997"}
!1542 = !DILocation(line: 101, column: 3, scope: !1539)
!1543 = !{!"998"}
!1544 = !{!"999"}
!1545 = !{!"1000"}
!1546 = !{!"1001"}
!1547 = !{!"1002"}
!1548 = !{!"1003"}
!1549 = !{!"1004"}
!1550 = !DILocalVariable(name: "x", scope: !1539, file: !3, line: 101, type: !6)
!1551 = !{!"1005"}
!1552 = !{!"1006"}
!1553 = !{!"1007"}
!1554 = !{!"1008"}
!1555 = !{!"1009"}
!1556 = !{!"1010"}
!1557 = !DILocalVariable(name: "os", scope: !1558, file: !3, line: 101, type: !29)
!1558 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1559 = !DILocation(line: 0, scope: !1558)
!1560 = !{!"1011"}
!1561 = !DILocation(line: 101, column: 3, scope: !1558)
!1562 = !{!"1012"}
!1563 = !{!"1013"}
!1564 = !{!"1014"}
!1565 = !{!"1015"}
!1566 = !{!"1016"}
!1567 = !{!"1017"}
!1568 = !{!"1018"}
!1569 = !DILocalVariable(name: "x", scope: !1558, file: !3, line: 101, type: !6)
!1570 = !{!"1019"}
!1571 = !{!"1020"}
!1572 = !{!"1021"}
!1573 = !{!"1022"}
!1574 = !{!"1023"}
!1575 = !{!"1024"}
!1576 = !DILocalVariable(name: "os", scope: !1577, file: !3, line: 101, type: !29)
!1577 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1578 = !DILocation(line: 0, scope: !1577)
!1579 = !{!"1025"}
!1580 = !DILocation(line: 101, column: 3, scope: !1577)
!1581 = !{!"1026"}
!1582 = !{!"1027"}
!1583 = !{!"1028"}
!1584 = !{!"1029"}
!1585 = !{!"1030"}
!1586 = !{!"1031"}
!1587 = !{!"1032"}
!1588 = !DILocalVariable(name: "x", scope: !1577, file: !3, line: 101, type: !6)
!1589 = !{!"1033"}
!1590 = !{!"1034"}
!1591 = !{!"1035"}
!1592 = !{!"1036"}
!1593 = !{!"1037"}
!1594 = !{!"1038"}
!1595 = !DILocalVariable(name: "os", scope: !1596, file: !3, line: 101, type: !29)
!1596 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1597 = !DILocation(line: 0, scope: !1596)
!1598 = !{!"1039"}
!1599 = !DILocation(line: 101, column: 3, scope: !1596)
!1600 = !{!"1040"}
!1601 = !{!"1041"}
!1602 = !{!"1042"}
!1603 = !{!"1043"}
!1604 = !{!"1044"}
!1605 = !{!"1045"}
!1606 = !{!"1046"}
!1607 = !DILocalVariable(name: "x", scope: !1596, file: !3, line: 101, type: !6)
!1608 = !{!"1047"}
!1609 = !{!"1048"}
!1610 = !{!"1049"}
!1611 = !{!"1050"}
!1612 = !{!"1051"}
!1613 = !{!"1052"}
!1614 = !DILocalVariable(name: "os", scope: !1615, file: !3, line: 101, type: !29)
!1615 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1616 = !DILocation(line: 0, scope: !1615)
!1617 = !{!"1053"}
!1618 = !DILocation(line: 101, column: 3, scope: !1615)
!1619 = !{!"1054"}
!1620 = !{!"1055"}
!1621 = !{!"1056"}
!1622 = !{!"1057"}
!1623 = !{!"1058"}
!1624 = !{!"1059"}
!1625 = !{!"1060"}
!1626 = !DILocalVariable(name: "x", scope: !1615, file: !3, line: 101, type: !6)
!1627 = !{!"1061"}
!1628 = !{!"1062"}
!1629 = !{!"1063"}
!1630 = !{!"1064"}
!1631 = !{!"1065"}
!1632 = !{!"1066"}
!1633 = !DILocalVariable(name: "os", scope: !1634, file: !3, line: 101, type: !29)
!1634 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1635 = !DILocation(line: 0, scope: !1634)
!1636 = !{!"1067"}
!1637 = !DILocation(line: 101, column: 3, scope: !1634)
!1638 = !{!"1068"}
!1639 = !{!"1069"}
!1640 = !{!"1070"}
!1641 = !{!"1071"}
!1642 = !{!"1072"}
!1643 = !{!"1073"}
!1644 = !{!"1074"}
!1645 = !DILocalVariable(name: "x", scope: !1634, file: !3, line: 101, type: !6)
!1646 = !{!"1075"}
!1647 = !{!"1076"}
!1648 = !{!"1077"}
!1649 = !{!"1078"}
!1650 = !{!"1079"}
!1651 = !{!"1080"}
!1652 = !DILocalVariable(name: "os", scope: !1653, file: !3, line: 101, type: !29)
!1653 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1654 = !DILocation(line: 0, scope: !1653)
!1655 = !{!"1081"}
!1656 = !DILocation(line: 101, column: 3, scope: !1653)
!1657 = !{!"1082"}
!1658 = !{!"1083"}
!1659 = !{!"1084"}
!1660 = !{!"1085"}
!1661 = !{!"1086"}
!1662 = !{!"1087"}
!1663 = !{!"1088"}
!1664 = !DILocalVariable(name: "x", scope: !1653, file: !3, line: 101, type: !6)
!1665 = !{!"1089"}
!1666 = !{!"1090"}
!1667 = !{!"1091"}
!1668 = !{!"1092"}
!1669 = !{!"1093"}
!1670 = !{!"1094"}
!1671 = !DILocalVariable(name: "os", scope: !1672, file: !3, line: 101, type: !29)
!1672 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1673 = !DILocation(line: 0, scope: !1672)
!1674 = !{!"1095"}
!1675 = !DILocation(line: 101, column: 3, scope: !1672)
!1676 = !{!"1096"}
!1677 = !{!"1097"}
!1678 = !{!"1098"}
!1679 = !{!"1099"}
!1680 = !{!"1100"}
!1681 = !{!"1101"}
!1682 = !{!"1102"}
!1683 = !DILocalVariable(name: "x", scope: !1672, file: !3, line: 101, type: !6)
!1684 = !{!"1103"}
!1685 = !{!"1104"}
!1686 = !{!"1105"}
!1687 = !{!"1106"}
!1688 = !{!"1107"}
!1689 = !{!"1108"}
!1690 = !DILocalVariable(name: "os", scope: !1691, file: !3, line: 101, type: !29)
!1691 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1692 = !DILocation(line: 0, scope: !1691)
!1693 = !{!"1109"}
!1694 = !DILocation(line: 101, column: 3, scope: !1691)
!1695 = !{!"1110"}
!1696 = !{!"1111"}
!1697 = !{!"1112"}
!1698 = !{!"1113"}
!1699 = !{!"1114"}
!1700 = !{!"1115"}
!1701 = !{!"1116"}
!1702 = !DILocalVariable(name: "x", scope: !1691, file: !3, line: 101, type: !6)
!1703 = !{!"1117"}
!1704 = !{!"1118"}
!1705 = !{!"1119"}
!1706 = !{!"1120"}
!1707 = !{!"1121"}
!1708 = !{!"1122"}
!1709 = !DILocalVariable(name: "os", scope: !1710, file: !3, line: 101, type: !29)
!1710 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1711 = !DILocation(line: 0, scope: !1710)
!1712 = !{!"1123"}
!1713 = !DILocation(line: 101, column: 3, scope: !1710)
!1714 = !{!"1124"}
!1715 = !{!"1125"}
!1716 = !{!"1126"}
!1717 = !{!"1127"}
!1718 = !{!"1128"}
!1719 = !{!"1129"}
!1720 = !{!"1130"}
!1721 = !DILocalVariable(name: "x", scope: !1710, file: !3, line: 101, type: !6)
!1722 = !{!"1131"}
!1723 = !{!"1132"}
!1724 = !{!"1133"}
!1725 = !{!"1134"}
!1726 = !{!"1135"}
!1727 = !{!"1136"}
!1728 = !DILocalVariable(name: "os", scope: !1729, file: !3, line: 101, type: !29)
!1729 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1730 = !DILocation(line: 0, scope: !1729)
!1731 = !{!"1137"}
!1732 = !DILocation(line: 101, column: 3, scope: !1729)
!1733 = !{!"1138"}
!1734 = !{!"1139"}
!1735 = !{!"1140"}
!1736 = !{!"1141"}
!1737 = !{!"1142"}
!1738 = !{!"1143"}
!1739 = !{!"1144"}
!1740 = !DILocalVariable(name: "x", scope: !1729, file: !3, line: 101, type: !6)
!1741 = !{!"1145"}
!1742 = !{!"1146"}
!1743 = !{!"1147"}
!1744 = !{!"1148"}
!1745 = !{!"1149"}
!1746 = !{!"1150"}
!1747 = !DILocalVariable(name: "os", scope: !1748, file: !3, line: 101, type: !29)
!1748 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1749 = !DILocation(line: 0, scope: !1748)
!1750 = !{!"1151"}
!1751 = !DILocation(line: 101, column: 3, scope: !1748)
!1752 = !{!"1152"}
!1753 = !{!"1153"}
!1754 = !{!"1154"}
!1755 = !{!"1155"}
!1756 = !{!"1156"}
!1757 = !{!"1157"}
!1758 = !{!"1158"}
!1759 = !DILocalVariable(name: "x", scope: !1748, file: !3, line: 101, type: !6)
!1760 = !{!"1159"}
!1761 = !{!"1160"}
!1762 = !{!"1161"}
!1763 = !{!"1162"}
!1764 = !{!"1163"}
!1765 = !{!"1164"}
!1766 = !DILocalVariable(name: "os", scope: !1767, file: !3, line: 101, type: !29)
!1767 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1768 = !DILocation(line: 0, scope: !1767)
!1769 = !{!"1165"}
!1770 = !DILocation(line: 101, column: 3, scope: !1767)
!1771 = !{!"1166"}
!1772 = !{!"1167"}
!1773 = !{!"1168"}
!1774 = !{!"1169"}
!1775 = !{!"1170"}
!1776 = !{!"1171"}
!1777 = !{!"1172"}
!1778 = !DILocalVariable(name: "x", scope: !1767, file: !3, line: 101, type: !6)
!1779 = !{!"1173"}
!1780 = !{!"1174"}
!1781 = !{!"1175"}
!1782 = !{!"1176"}
!1783 = !{!"1177"}
!1784 = !{!"1178"}
!1785 = !DILocalVariable(name: "os", scope: !1786, file: !3, line: 101, type: !29)
!1786 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1787 = !DILocation(line: 0, scope: !1786)
!1788 = !{!"1179"}
!1789 = !DILocation(line: 101, column: 3, scope: !1786)
!1790 = !{!"1180"}
!1791 = !{!"1181"}
!1792 = !{!"1182"}
!1793 = !{!"1183"}
!1794 = !{!"1184"}
!1795 = !{!"1185"}
!1796 = !{!"1186"}
!1797 = !DILocalVariable(name: "x", scope: !1786, file: !3, line: 101, type: !6)
!1798 = !{!"1187"}
!1799 = !{!"1188"}
!1800 = !{!"1189"}
!1801 = !{!"1190"}
!1802 = !{!"1191"}
!1803 = !{!"1192"}
!1804 = !DILocalVariable(name: "os", scope: !1805, file: !3, line: 101, type: !29)
!1805 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1806 = !DILocation(line: 0, scope: !1805)
!1807 = !{!"1193"}
!1808 = !DILocation(line: 101, column: 3, scope: !1805)
!1809 = !{!"1194"}
!1810 = !{!"1195"}
!1811 = !{!"1196"}
!1812 = !{!"1197"}
!1813 = !{!"1198"}
!1814 = !{!"1199"}
!1815 = !{!"1200"}
!1816 = !DILocalVariable(name: "x", scope: !1805, file: !3, line: 101, type: !6)
!1817 = !{!"1201"}
!1818 = !{!"1202"}
!1819 = !{!"1203"}
!1820 = !{!"1204"}
!1821 = !{!"1205"}
!1822 = !{!"1206"}
!1823 = !DILocalVariable(name: "os", scope: !1824, file: !3, line: 101, type: !29)
!1824 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 101, column: 3)
!1825 = !DILocation(line: 0, scope: !1824)
!1826 = !{!"1207"}
!1827 = !DILocation(line: 101, column: 3, scope: !1824)
!1828 = !{!"1208"}
!1829 = !{!"1209"}
!1830 = !{!"1210"}
!1831 = !{!"1211"}
!1832 = !{!"1212"}
!1833 = !{!"1213"}
!1834 = !{!"1214"}
!1835 = !DILocalVariable(name: "x", scope: !1824, file: !3, line: 101, type: !6)
!1836 = !{!"1215"}
!1837 = !{!"1216"}
!1838 = !{!"1217"}
!1839 = !{!"1218"}
!1840 = !{!"1219"}
!1841 = !{!"1220"}
!1842 = !DILocation(line: 101, column: 3, scope: !1535)
!1843 = !{!"1221"}
!1844 = !DILocation(line: 108, column: 12, scope: !1505)
!1845 = !{!"1222"}
!1846 = !{!"1223"}
!1847 = !DILocation(line: 108, column: 19, scope: !1505)
!1848 = !{!"1224"}
!1849 = !DILocation(line: 108, column: 3, scope: !1505)
!1850 = !{!"1225"}
!1851 = !DILocation(line: 108, column: 10, scope: !1505)
!1852 = !{!"1226"}
!1853 = !DILocation(line: 109, column: 1, scope: !1505)
!1854 = !{!"1227"}
!1855 = distinct !DISubprogram(name: "store32", scope: !398, file: !398, line: 182, type: !1856, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !30, !6}
!1858 = !{!"1228"}
!1859 = !DILocalVariable(name: "b", arg: 1, scope: !1855, file: !398, line: 182, type: !30)
!1860 = !DILocation(line: 0, scope: !1855)
!1861 = !{!"1229"}
!1862 = !{!"1230"}
!1863 = !DILocalVariable(name: "i", arg: 2, scope: !1855, file: !398, line: 182, type: !6)
!1864 = !DILocation(line: 182, column: 49, scope: !1855)
!1865 = !{!"1231"}
!1866 = !DILocation(line: 183, column: 3, scope: !1855)
!1867 = !{!"1232"}
!1868 = !{!"1233"}
!1869 = !DILocation(line: 184, column: 1, scope: !1855)
!1870 = !{!"1234"}
!1871 = distinct !DISubprogram(name: "rounds", scope: !3, file: !3, line: 81, type: !1872, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{null, !29}
!1874 = !DILocalVariable(name: "st", arg: 1, scope: !1871, file: !3, line: 81, type: !29)
!1875 = !DILocation(line: 0, scope: !1871)
!1876 = !{!"1235"}
!1877 = !DILocation(line: 83, column: 3, scope: !1871)
!1878 = !{!"1236"}
!1879 = !DILocation(line: 84, column: 3, scope: !1871)
!1880 = !{!"1237"}
!1881 = !DILocation(line: 85, column: 3, scope: !1871)
!1882 = !{!"1238"}
!1883 = !DILocation(line: 86, column: 3, scope: !1871)
!1884 = !{!"1239"}
!1885 = !DILocation(line: 87, column: 3, scope: !1871)
!1886 = !{!"1240"}
!1887 = !DILocation(line: 88, column: 3, scope: !1871)
!1888 = !{!"1241"}
!1889 = !DILocation(line: 89, column: 3, scope: !1871)
!1890 = !{!"1242"}
!1891 = !DILocation(line: 90, column: 3, scope: !1871)
!1892 = !{!"1243"}
!1893 = !DILocation(line: 91, column: 3, scope: !1871)
!1894 = !{!"1244"}
!1895 = !DILocation(line: 92, column: 3, scope: !1871)
!1896 = !{!"1245"}
!1897 = !DILocation(line: 93, column: 1, scope: !1871)
!1898 = !{!"1246"}
!1899 = distinct !DISubprogram(name: "double_round", scope: !3, file: !3, line: 69, type: !1872, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1900 = !DILocalVariable(name: "st", arg: 1, scope: !1899, file: !3, line: 69, type: !29)
!1901 = !DILocation(line: 0, scope: !1899)
!1902 = !{!"1247"}
!1903 = !DILocation(line: 71, column: 3, scope: !1899)
!1904 = !{!"1248"}
!1905 = !DILocation(line: 72, column: 3, scope: !1899)
!1906 = !{!"1249"}
!1907 = !DILocation(line: 73, column: 3, scope: !1899)
!1908 = !{!"1250"}
!1909 = !DILocation(line: 74, column: 3, scope: !1899)
!1910 = !{!"1251"}
!1911 = !DILocation(line: 75, column: 3, scope: !1899)
!1912 = !{!"1252"}
!1913 = !DILocation(line: 76, column: 3, scope: !1899)
!1914 = !{!"1253"}
!1915 = !DILocation(line: 77, column: 3, scope: !1899)
!1916 = !{!"1254"}
!1917 = !DILocation(line: 78, column: 3, scope: !1899)
!1918 = !{!"1255"}
!1919 = !DILocation(line: 79, column: 1, scope: !1899)
!1920 = !{!"1256"}
!1921 = distinct !DISubprogram(name: "quarter_round", scope: !3, file: !3, line: 33, type: !1922, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !29, !6, !6, !6, !6}
!1924 = !DILocalVariable(name: "st", arg: 1, scope: !1921, file: !3, line: 33, type: !29)
!1925 = !DILocation(line: 0, scope: !1921)
!1926 = !{!"1257"}
!1927 = !DILocalVariable(name: "a", arg: 2, scope: !1921, file: !3, line: 33, type: !6)
!1928 = !{!"1258"}
!1929 = !DILocalVariable(name: "b", arg: 3, scope: !1921, file: !3, line: 33, type: !6)
!1930 = !{!"1259"}
!1931 = !DILocalVariable(name: "c", arg: 4, scope: !1921, file: !3, line: 33, type: !6)
!1932 = !{!"1260"}
!1933 = !DILocalVariable(name: "d", arg: 5, scope: !1921, file: !3, line: 33, type: !6)
!1934 = !{!"1261"}
!1935 = !DILocation(line: 35, column: 18, scope: !1921)
!1936 = !{!"1262"}
!1937 = !{!"1263"}
!1938 = !{!"1264"}
!1939 = !DILocalVariable(name: "sta", scope: !1921, file: !3, line: 35, type: !6)
!1940 = !{!"1265"}
!1941 = !DILocation(line: 36, column: 19, scope: !1921)
!1942 = !{!"1266"}
!1943 = !{!"1267"}
!1944 = !{!"1268"}
!1945 = !DILocalVariable(name: "stb0", scope: !1921, file: !3, line: 36, type: !6)
!1946 = !{!"1269"}
!1947 = !DILocation(line: 37, column: 19, scope: !1921)
!1948 = !{!"1270"}
!1949 = !{!"1271"}
!1950 = !{!"1272"}
!1951 = !DILocalVariable(name: "std0", scope: !1921, file: !3, line: 37, type: !6)
!1952 = !{!"1273"}
!1953 = !DILocation(line: 38, column: 24, scope: !1921)
!1954 = !{!"1274"}
!1955 = !DILocalVariable(name: "sta10", scope: !1921, file: !3, line: 38, type: !6)
!1956 = !{!"1275"}
!1957 = !DILocation(line: 39, column: 25, scope: !1921)
!1958 = !{!"1276"}
!1959 = !DILocalVariable(name: "std10", scope: !1921, file: !3, line: 39, type: !6)
!1960 = !{!"1277"}
!1961 = !DILocation(line: 40, column: 25, scope: !1921)
!1962 = !{!"1278"}
!1963 = !DILocation(line: 40, column: 50, scope: !1921)
!1964 = !{!"1279"}
!1965 = !DILocation(line: 40, column: 42, scope: !1921)
!1966 = !{!"1280"}
!1967 = !DILocalVariable(name: "std2", scope: !1921, file: !3, line: 40, type: !6)
!1968 = !{!"1281"}
!1969 = !DILocation(line: 41, column: 3, scope: !1921)
!1970 = !{!"1282"}
!1971 = !{!"1283"}
!1972 = !DILocation(line: 41, column: 9, scope: !1921)
!1973 = !{!"1284"}
!1974 = !DILocation(line: 42, column: 3, scope: !1921)
!1975 = !{!"1285"}
!1976 = !{!"1286"}
!1977 = !DILocation(line: 42, column: 9, scope: !1921)
!1978 = !{!"1287"}
!1979 = !DILocation(line: 43, column: 19, scope: !1921)
!1980 = !{!"1288"}
!1981 = !{!"1289"}
!1982 = !{!"1290"}
!1983 = !DILocalVariable(name: "sta0", scope: !1921, file: !3, line: 43, type: !6)
!1984 = !{!"1291"}
!1985 = !DILocation(line: 44, column: 19, scope: !1921)
!1986 = !{!"1292"}
!1987 = !{!"1293"}
!1988 = !{!"1294"}
!1989 = !DILocalVariable(name: "stb1", scope: !1921, file: !3, line: 44, type: !6)
!1990 = !{!"1295"}
!1991 = !DILocation(line: 45, column: 19, scope: !1921)
!1992 = !{!"1296"}
!1993 = !{!"1297"}
!1994 = !{!"1298"}
!1995 = !DILocalVariable(name: "std3", scope: !1921, file: !3, line: 45, type: !6)
!1996 = !{!"1299"}
!1997 = !DILocation(line: 46, column: 25, scope: !1921)
!1998 = !{!"1300"}
!1999 = !DILocalVariable(name: "sta11", scope: !1921, file: !3, line: 46, type: !6)
!2000 = !{!"1301"}
!2001 = !DILocation(line: 47, column: 25, scope: !1921)
!2002 = !{!"1302"}
!2003 = !DILocalVariable(name: "std11", scope: !1921, file: !3, line: 47, type: !6)
!2004 = !{!"1303"}
!2005 = !DILocation(line: 48, column: 26, scope: !1921)
!2006 = !{!"1304"}
!2007 = !DILocation(line: 48, column: 51, scope: !1921)
!2008 = !{!"1305"}
!2009 = !DILocation(line: 48, column: 43, scope: !1921)
!2010 = !{!"1306"}
!2011 = !DILocalVariable(name: "std20", scope: !1921, file: !3, line: 48, type: !6)
!2012 = !{!"1307"}
!2013 = !DILocation(line: 49, column: 3, scope: !1921)
!2014 = !{!"1308"}
!2015 = !{!"1309"}
!2016 = !DILocation(line: 49, column: 9, scope: !1921)
!2017 = !{!"1310"}
!2018 = !DILocation(line: 50, column: 3, scope: !1921)
!2019 = !{!"1311"}
!2020 = !{!"1312"}
!2021 = !DILocation(line: 50, column: 9, scope: !1921)
!2022 = !{!"1313"}
!2023 = !DILocation(line: 51, column: 19, scope: !1921)
!2024 = !{!"1314"}
!2025 = !{!"1315"}
!2026 = !{!"1316"}
!2027 = !DILocalVariable(name: "sta2", scope: !1921, file: !3, line: 51, type: !6)
!2028 = !{!"1317"}
!2029 = !DILocation(line: 52, column: 19, scope: !1921)
!2030 = !{!"1318"}
!2031 = !{!"1319"}
!2032 = !{!"1320"}
!2033 = !DILocalVariable(name: "stb2", scope: !1921, file: !3, line: 52, type: !6)
!2034 = !{!"1321"}
!2035 = !DILocation(line: 53, column: 19, scope: !1921)
!2036 = !{!"1322"}
!2037 = !{!"1323"}
!2038 = !{!"1324"}
!2039 = !DILocalVariable(name: "std4", scope: !1921, file: !3, line: 53, type: !6)
!2040 = !{!"1325"}
!2041 = !DILocation(line: 54, column: 25, scope: !1921)
!2042 = !{!"1326"}
!2043 = !DILocalVariable(name: "sta12", scope: !1921, file: !3, line: 54, type: !6)
!2044 = !{!"1327"}
!2045 = !DILocation(line: 55, column: 25, scope: !1921)
!2046 = !{!"1328"}
!2047 = !DILocalVariable(name: "std12", scope: !1921, file: !3, line: 55, type: !6)
!2048 = !{!"1329"}
!2049 = !DILocation(line: 56, column: 26, scope: !1921)
!2050 = !{!"1330"}
!2051 = !DILocation(line: 56, column: 50, scope: !1921)
!2052 = !{!"1331"}
!2053 = !DILocation(line: 56, column: 42, scope: !1921)
!2054 = !{!"1332"}
!2055 = !DILocalVariable(name: "std21", scope: !1921, file: !3, line: 56, type: !6)
!2056 = !{!"1333"}
!2057 = !DILocation(line: 57, column: 3, scope: !1921)
!2058 = !{!"1334"}
!2059 = !{!"1335"}
!2060 = !DILocation(line: 57, column: 9, scope: !1921)
!2061 = !{!"1336"}
!2062 = !DILocation(line: 58, column: 3, scope: !1921)
!2063 = !{!"1337"}
!2064 = !{!"1338"}
!2065 = !DILocation(line: 58, column: 9, scope: !1921)
!2066 = !{!"1339"}
!2067 = !DILocation(line: 59, column: 19, scope: !1921)
!2068 = !{!"1340"}
!2069 = !{!"1341"}
!2070 = !{!"1342"}
!2071 = !DILocalVariable(name: "sta3", scope: !1921, file: !3, line: 59, type: !6)
!2072 = !{!"1343"}
!2073 = !DILocation(line: 60, column: 18, scope: !1921)
!2074 = !{!"1344"}
!2075 = !{!"1345"}
!2076 = !{!"1346"}
!2077 = !DILocalVariable(name: "stb", scope: !1921, file: !3, line: 60, type: !6)
!2078 = !{!"1347"}
!2079 = !DILocation(line: 61, column: 18, scope: !1921)
!2080 = !{!"1348"}
!2081 = !{!"1349"}
!2082 = !{!"1350"}
!2083 = !DILocalVariable(name: "std", scope: !1921, file: !3, line: 61, type: !6)
!2084 = !{!"1351"}
!2085 = !DILocation(line: 62, column: 24, scope: !1921)
!2086 = !{!"1352"}
!2087 = !DILocalVariable(name: "sta1", scope: !1921, file: !3, line: 62, type: !6)
!2088 = !{!"1353"}
!2089 = !DILocation(line: 63, column: 23, scope: !1921)
!2090 = !{!"1354"}
!2091 = !DILocalVariable(name: "std1", scope: !1921, file: !3, line: 63, type: !6)
!2092 = !{!"1355"}
!2093 = !DILocation(line: 64, column: 25, scope: !1921)
!2094 = !{!"1356"}
!2095 = !DILocation(line: 64, column: 48, scope: !1921)
!2096 = !{!"1357"}
!2097 = !DILocation(line: 64, column: 41, scope: !1921)
!2098 = !{!"1358"}
!2099 = !DILocalVariable(name: "std22", scope: !1921, file: !3, line: 64, type: !6)
!2100 = !{!"1359"}
!2101 = !DILocation(line: 65, column: 3, scope: !1921)
!2102 = !{!"1360"}
!2103 = !{!"1361"}
!2104 = !DILocation(line: 65, column: 9, scope: !1921)
!2105 = !{!"1362"}
!2106 = !DILocation(line: 66, column: 3, scope: !1921)
!2107 = !{!"1363"}
!2108 = !{!"1364"}
!2109 = !DILocation(line: 66, column: 9, scope: !1921)
!2110 = !{!"1365"}
!2111 = !DILocation(line: 67, column: 1, scope: !1921)
!2112 = !{!"1366"}
!2113 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_encrypt", scope: !3, file: !3, line: 203, type: !2114, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !6, !30, !30, !30, !30, !6}
!2116 = !{!"1367"}
!2117 = !DILocalVariable(name: "len", arg: 1, scope: !2113, file: !3, line: 204, type: !6)
!2118 = !DILocation(line: 0, scope: !2113)
!2119 = !{!"1368"}
!2120 = !DILocalVariable(name: "out", arg: 2, scope: !2113, file: !3, line: 205, type: !30)
!2121 = !{!"1369"}
!2122 = !DILocalVariable(name: "text", arg: 3, scope: !2113, file: !3, line: 206, type: !30)
!2123 = !{!"1370"}
!2124 = !DILocalVariable(name: "key", arg: 4, scope: !2113, file: !3, line: 207, type: !30)
!2125 = !{!"1371"}
!2126 = !DILocalVariable(name: "n", arg: 5, scope: !2113, file: !3, line: 208, type: !30)
!2127 = !{!"1372"}
!2128 = !DILocalVariable(name: "ctr", arg: 6, scope: !2113, file: !3, line: 209, type: !6)
!2129 = !{!"1373"}
!2130 = !DILocalVariable(name: "ctx", scope: !2113, file: !3, line: 212, type: !522)
!2131 = !DILocation(line: 212, column: 12, scope: !2113)
!2132 = !{!"1374"}
!2133 = !{!"1375"}
!2134 = !{!"1376"}
!2135 = !DILocation(line: 213, column: 36, scope: !2113)
!2136 = !{!"1377"}
!2137 = !DILocation(line: 213, column: 3, scope: !2113)
!2138 = !{!"1378"}
!2139 = !DILocation(line: 214, column: 38, scope: !2113)
!2140 = !{!"1379"}
!2141 = !DILocation(line: 214, column: 3, scope: !2113)
!2142 = !{!"1380"}
!2143 = !DILocation(line: 215, column: 1, scope: !2113)
!2144 = !{!"1381"}
!2145 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_decrypt", scope: !3, file: !3, line: 218, type: !2114, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2146 = !{!"1382"}
!2147 = !DILocalVariable(name: "len", arg: 1, scope: !2145, file: !3, line: 219, type: !6)
!2148 = !DILocation(line: 0, scope: !2145)
!2149 = !{!"1383"}
!2150 = !DILocalVariable(name: "out", arg: 2, scope: !2145, file: !3, line: 220, type: !30)
!2151 = !{!"1384"}
!2152 = !DILocalVariable(name: "cipher", arg: 3, scope: !2145, file: !3, line: 221, type: !30)
!2153 = !{!"1385"}
!2154 = !DILocalVariable(name: "key", arg: 4, scope: !2145, file: !3, line: 222, type: !30)
!2155 = !{!"1386"}
!2156 = !DILocalVariable(name: "n", arg: 5, scope: !2145, file: !3, line: 223, type: !30)
!2157 = !{!"1387"}
!2158 = !DILocalVariable(name: "ctr", arg: 6, scope: !2145, file: !3, line: 224, type: !6)
!2159 = !{!"1388"}
!2160 = !DILocalVariable(name: "ctx", scope: !2145, file: !3, line: 227, type: !522)
!2161 = !DILocation(line: 227, column: 12, scope: !2145)
!2162 = !{!"1389"}
!2163 = !{!"1390"}
!2164 = !{!"1391"}
!2165 = !DILocation(line: 228, column: 36, scope: !2145)
!2166 = !{!"1392"}
!2167 = !DILocation(line: 228, column: 3, scope: !2145)
!2168 = !{!"1393"}
!2169 = !DILocation(line: 229, column: 38, scope: !2145)
!2170 = !{!"1394"}
!2171 = !DILocation(line: 229, column: 3, scope: !2145)
!2172 = !{!"1395"}
!2173 = !DILocation(line: 230, column: 1, scope: !2145)
!2174 = !{!"1396"}
!2175 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_decrypt_wrapper", scope: !21, file: !21, line: 3, type: !2114, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !4)
!2176 = !DILocalVariable(name: "len", arg: 1, scope: !2175, file: !21, line: 3, type: !6)
!2177 = !DILocation(line: 0, scope: !2175)
!2178 = !{!"1397"}
!2179 = !DILocalVariable(name: "out", arg: 2, scope: !2175, file: !21, line: 4, type: !30)
!2180 = !{!"1398"}
!2181 = !DILocalVariable(name: "cipher", arg: 3, scope: !2175, file: !21, line: 5, type: !30)
!2182 = !{!"1399"}
!2183 = !DILocalVariable(name: "key", arg: 4, scope: !2175, file: !21, line: 6, type: !30)
!2184 = !{!"1400"}
!2185 = !DILocalVariable(name: "n", arg: 5, scope: !2175, file: !21, line: 7, type: !30)
!2186 = !{!"1401"}
!2187 = !DILocalVariable(name: "ctr", arg: 6, scope: !2175, file: !21, line: 8, type: !6)
!2188 = !{!"1402"}
!2189 = !DILocation(line: 10, column: 13, scope: !2175)
!2190 = !{!"1403"}
!2191 = !DILocation(line: 10, column: 3, scope: !2175)
!2192 = !{!"1404"}
!2193 = !DILocation(line: 11, column: 13, scope: !2175)
!2194 = !{!"1405"}
!2195 = !DILocation(line: 11, column: 3, scope: !2175)
!2196 = !{!"1406"}
!2197 = !DILocation(line: 12, column: 13, scope: !2175)
!2198 = !{!"1407"}
!2199 = !DILocation(line: 12, column: 3, scope: !2175)
!2200 = !{!"1408"}
!2201 = !DILocation(line: 13, column: 13, scope: !2175)
!2202 = !{!"1409"}
!2203 = !DILocation(line: 13, column: 3, scope: !2175)
!2204 = !{!"1410"}
!2205 = !DILocation(line: 14, column: 13, scope: !2175)
!2206 = !{!"1411"}
!2207 = !DILocation(line: 14, column: 3, scope: !2175)
!2208 = !{!"1412"}
!2209 = !DILocation(line: 15, column: 13, scope: !2175)
!2210 = !{!"1413"}
!2211 = !DILocation(line: 15, column: 3, scope: !2175)
!2212 = !{!"1414"}
!2213 = !DILocation(line: 17, column: 13, scope: !2175)
!2214 = !{!"1415"}
!2215 = !DILocation(line: 17, column: 3, scope: !2175)
!2216 = !{!"1416"}
!2217 = !DILocation(line: 19, column: 3, scope: !2175)
!2218 = !{!"1417"}
!2219 = !DILocation(line: 20, column: 1, scope: !2175)
!2220 = !{!"1418"}
!2221 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_decrypt_wrapper_t", scope: !21, file: !21, line: 27, type: !2222, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !4)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null}
!2224 = !DILocation(line: 28, column: 17, scope: !2221)
!2225 = !{!"1419"}
!2226 = !DILocalVariable(name: "out", scope: !2221, file: !21, line: 28, type: !30)
!2227 = !DILocation(line: 0, scope: !2221)
!2228 = !{!"1420"}
!2229 = !DILocation(line: 29, column: 20, scope: !2221)
!2230 = !{!"1421"}
!2231 = !DILocalVariable(name: "cipher", scope: !2221, file: !21, line: 29, type: !30)
!2232 = !{!"1422"}
!2233 = !DILocation(line: 30, column: 18, scope: !2221)
!2234 = !{!"1423"}
!2235 = !DILocalVariable(name: "key", scope: !2221, file: !21, line: 30, type: !30)
!2236 = !{!"1424"}
!2237 = !DILocation(line: 31, column: 16, scope: !2221)
!2238 = !{!"1425"}
!2239 = !DILocalVariable(name: "n", scope: !2221, file: !21, line: 31, type: !30)
!2240 = !{!"1426"}
!2241 = !DILocation(line: 32, column: 18, scope: !2221)
!2242 = !{!"1427"}
!2243 = !DILocalVariable(name: "len", scope: !2221, file: !21, line: 32, type: !6)
!2244 = !{!"1428"}
!2245 = !DILocation(line: 33, column: 18, scope: !2221)
!2246 = !{!"1429"}
!2247 = !DILocalVariable(name: "ctr", scope: !2221, file: !21, line: 33, type: !6)
!2248 = !{!"1430"}
!2249 = !DILocation(line: 35, column: 2, scope: !2221)
!2250 = !{!"1431"}
!2251 = !DILocation(line: 36, column: 1, scope: !2221)
!2252 = !{!"1432"}
