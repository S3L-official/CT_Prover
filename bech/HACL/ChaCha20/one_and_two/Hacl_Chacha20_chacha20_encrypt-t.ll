; ModuleID = 'Hacl_Chacha20_chacha20_encrypt-k.ll'
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
  %13 = getelementptr inbounds i8, i8* %2, i64 %12, !dbg !464, !psr.id !466
  %14 = mul i32 %.0, 64, !dbg !467, !psr.id !468
  %15 = zext i32 %14 to i64, !dbg !469, !psr.id !470
  %16 = getelementptr inbounds i8, i8* %3, i64 %15, !dbg !469, !psr.id !471
  call void @chacha20_encrypt_block(i32* %0, i8* %13, i32 %.0, i8* %16), !dbg !472, !psr.id !473
  br label %17, !dbg !474, !psr.id !475

17:                                               ; preds = %10
  %18 = add i32 %.0, 1, !dbg !476, !psr.id !477
  call void @llvm.dbg.value(metadata i32 %18, metadata !448, metadata !DIExpression()), !dbg !450, !psr.id !478
  br label %8, !dbg !479, !llvm.loop !480, !psr.id !483

19:                                               ; preds = %8
  %20 = icmp ugt i32 %7, 0, !dbg !484, !psr.id !486
  br i1 %20, label %21, label %28, !dbg !487, !psr.id !488

21:                                               ; preds = %19
  %22 = mul i32 %6, 64, !dbg !489, !psr.id !491
  %23 = zext i32 %22 to i64, !dbg !492, !psr.id !493
  %24 = getelementptr inbounds i8, i8* %2, i64 %23, !dbg !492, !psr.id !494
  %25 = mul i32 %6, 64, !dbg !495, !psr.id !496
  %26 = zext i32 %25 to i64, !dbg !497, !psr.id !498
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !497, !psr.id !499
  call void @chacha20_encrypt_last(i32* %0, i32 %5, i8* %24, i32 %6, i8* %27), !dbg !500, !psr.id !501
  br label %28, !dbg !502, !psr.id !503

28:                                               ; preds = %21, %19
  ret void, !dbg !504, !psr.id !505
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_encrypt_block(i32* %0, i8* %1, i32 %2, i8* %3) #0 !dbg !506 {
  %5 = alloca [16 x i32], align 16, !psr.id !509
  %6 = alloca [16 x i32], align 16, !psr.id !510
  call void @llvm.dbg.value(metadata i32* %0, metadata !511, metadata !DIExpression()), !dbg !512, !psr.id !513
  call void @llvm.dbg.value(metadata i8* %1, metadata !514, metadata !DIExpression()), !dbg !512, !psr.id !515
  call void @llvm.dbg.value(metadata i32 %2, metadata !516, metadata !DIExpression()), !dbg !512, !psr.id !517
  call void @llvm.dbg.value(metadata i8* %3, metadata !518, metadata !DIExpression()), !dbg !512, !psr.id !519
  call void @llvm.dbg.declare(metadata [16 x i32]* %5, metadata !520, metadata !DIExpression()), !dbg !524, !psr.id !525
  %7 = bitcast [16 x i32]* %5 to i8*, !dbg !524, !psr.id !526
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 64, i1 false), !dbg !524, !psr.id !527
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0, !dbg !528, !psr.id !529
  call void @chacha20_core(i32* %8, i32* %0, i32 %2), !dbg !530, !psr.id !531
  call void @llvm.dbg.declare(metadata [16 x i32]* %6, metadata !532, metadata !DIExpression()), !dbg !533, !psr.id !534
  %9 = bitcast [16 x i32]* %6 to i8*, !dbg !533, !psr.id !535
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 64, i1 false), !dbg !533, !psr.id !536
  br label %10, !dbg !537, !psr.id !538

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !542
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !543, !psr.id !545
  call void @llvm.dbg.value(metadata i32* %11, metadata !546, metadata !DIExpression()), !dbg !547, !psr.id !548
  %12 = mul i32 0, 4, !dbg !543, !psr.id !549
  %13 = zext i32 %12 to i64, !dbg !543, !psr.id !550
  %14 = getelementptr inbounds i8, i8* %3, i64 %13, !dbg !543, !psr.id !551
  call void @llvm.dbg.value(metadata i8* %14, metadata !552, metadata !DIExpression()), !dbg !547, !psr.id !553
  %15 = call i32 @load32(i8* %14), !dbg !543, !psr.id !554
  %16 = call i32 @__uint32_identity(i32 %15), !dbg !543, !psr.id !555
  call void @llvm.dbg.value(metadata i32 %16, metadata !556, metadata !DIExpression()), !dbg !547, !psr.id !557
  call void @llvm.dbg.value(metadata i32 %16, metadata !558, metadata !DIExpression()), !dbg !547, !psr.id !559
  call void @llvm.dbg.value(metadata i32 %16, metadata !560, metadata !DIExpression()), !dbg !547, !psr.id !561
  %17 = zext i32 0 to i64, !dbg !543, !psr.id !562
  %18 = getelementptr inbounds i32, i32* %11, i64 %17, !dbg !543, !psr.id !563
  store i32 %16, i32* %18, align 4, !dbg !543, !psr.id !564
  %19 = add i32 0, 1, !dbg !543, !psr.id !565
  call void @llvm.dbg.value(metadata i32 %19, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !566
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !567, !psr.id !569
  call void @llvm.dbg.value(metadata i32* %20, metadata !570, metadata !DIExpression()), !dbg !571, !psr.id !572
  %21 = mul i32 %19, 4, !dbg !567, !psr.id !573
  %22 = zext i32 %21 to i64, !dbg !567, !psr.id !574
  %23 = getelementptr inbounds i8, i8* %3, i64 %22, !dbg !567, !psr.id !575
  call void @llvm.dbg.value(metadata i8* %23, metadata !576, metadata !DIExpression()), !dbg !571, !psr.id !577
  %24 = call i32 @load32(i8* %23), !dbg !567, !psr.id !578
  %25 = call i32 @__uint32_identity(i32 %24), !dbg !567, !psr.id !579
  call void @llvm.dbg.value(metadata i32 %25, metadata !580, metadata !DIExpression()), !dbg !571, !psr.id !581
  call void @llvm.dbg.value(metadata i32 %25, metadata !582, metadata !DIExpression()), !dbg !571, !psr.id !583
  call void @llvm.dbg.value(metadata i32 %25, metadata !584, metadata !DIExpression()), !dbg !571, !psr.id !585
  %26 = zext i32 %19 to i64, !dbg !567, !psr.id !586
  %27 = getelementptr inbounds i32, i32* %20, i64 %26, !dbg !567, !psr.id !587
  store i32 %25, i32* %27, align 4, !dbg !567, !psr.id !588
  %28 = add i32 %19, 1, !dbg !567, !psr.id !589
  call void @llvm.dbg.value(metadata i32 %28, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !590
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !591, !psr.id !593
  call void @llvm.dbg.value(metadata i32* %29, metadata !594, metadata !DIExpression()), !dbg !595, !psr.id !596
  %30 = mul i32 %28, 4, !dbg !591, !psr.id !597
  %31 = zext i32 %30 to i64, !dbg !591, !psr.id !598
  %32 = getelementptr inbounds i8, i8* %3, i64 %31, !dbg !591, !psr.id !599
  call void @llvm.dbg.value(metadata i8* %32, metadata !600, metadata !DIExpression()), !dbg !595, !psr.id !601
  %33 = call i32 @load32(i8* %32), !dbg !591, !psr.id !602
  %34 = call i32 @__uint32_identity(i32 %33), !dbg !591, !psr.id !603
  call void @llvm.dbg.value(metadata i32 %34, metadata !604, metadata !DIExpression()), !dbg !595, !psr.id !605
  call void @llvm.dbg.value(metadata i32 %34, metadata !606, metadata !DIExpression()), !dbg !595, !psr.id !607
  call void @llvm.dbg.value(metadata i32 %34, metadata !608, metadata !DIExpression()), !dbg !595, !psr.id !609
  %35 = zext i32 %28 to i64, !dbg !591, !psr.id !610
  %36 = getelementptr inbounds i32, i32* %29, i64 %35, !dbg !591, !psr.id !611
  store i32 %34, i32* %36, align 4, !dbg !591, !psr.id !612
  %37 = add i32 %28, 1, !dbg !591, !psr.id !613
  call void @llvm.dbg.value(metadata i32 %37, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !614
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !615, !psr.id !617
  call void @llvm.dbg.value(metadata i32* %38, metadata !618, metadata !DIExpression()), !dbg !619, !psr.id !620
  %39 = mul i32 %37, 4, !dbg !615, !psr.id !621
  %40 = zext i32 %39 to i64, !dbg !615, !psr.id !622
  %41 = getelementptr inbounds i8, i8* %3, i64 %40, !dbg !615, !psr.id !623
  call void @llvm.dbg.value(metadata i8* %41, metadata !624, metadata !DIExpression()), !dbg !619, !psr.id !625
  %42 = call i32 @load32(i8* %41), !dbg !615, !psr.id !626
  %43 = call i32 @__uint32_identity(i32 %42), !dbg !615, !psr.id !627
  call void @llvm.dbg.value(metadata i32 %43, metadata !628, metadata !DIExpression()), !dbg !619, !psr.id !629
  call void @llvm.dbg.value(metadata i32 %43, metadata !630, metadata !DIExpression()), !dbg !619, !psr.id !631
  call void @llvm.dbg.value(metadata i32 %43, metadata !632, metadata !DIExpression()), !dbg !619, !psr.id !633
  %44 = zext i32 %37 to i64, !dbg !615, !psr.id !634
  %45 = getelementptr inbounds i32, i32* %38, i64 %44, !dbg !615, !psr.id !635
  store i32 %43, i32* %45, align 4, !dbg !615, !psr.id !636
  %46 = add i32 %37, 1, !dbg !615, !psr.id !637
  call void @llvm.dbg.value(metadata i32 %46, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !638
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !639, !psr.id !641
  call void @llvm.dbg.value(metadata i32* %47, metadata !642, metadata !DIExpression()), !dbg !643, !psr.id !644
  %48 = mul i32 %46, 4, !dbg !639, !psr.id !645
  %49 = zext i32 %48 to i64, !dbg !639, !psr.id !646
  %50 = getelementptr inbounds i8, i8* %3, i64 %49, !dbg !639, !psr.id !647
  call void @llvm.dbg.value(metadata i8* %50, metadata !648, metadata !DIExpression()), !dbg !643, !psr.id !649
  %51 = call i32 @load32(i8* %50), !dbg !639, !psr.id !650
  %52 = call i32 @__uint32_identity(i32 %51), !dbg !639, !psr.id !651
  call void @llvm.dbg.value(metadata i32 %52, metadata !652, metadata !DIExpression()), !dbg !643, !psr.id !653
  call void @llvm.dbg.value(metadata i32 %52, metadata !654, metadata !DIExpression()), !dbg !643, !psr.id !655
  call void @llvm.dbg.value(metadata i32 %52, metadata !656, metadata !DIExpression()), !dbg !643, !psr.id !657
  %53 = zext i32 %46 to i64, !dbg !639, !psr.id !658
  %54 = getelementptr inbounds i32, i32* %47, i64 %53, !dbg !639, !psr.id !659
  store i32 %52, i32* %54, align 4, !dbg !639, !psr.id !660
  %55 = add i32 %46, 1, !dbg !639, !psr.id !661
  call void @llvm.dbg.value(metadata i32 %55, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !662
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !663, !psr.id !665
  call void @llvm.dbg.value(metadata i32* %56, metadata !666, metadata !DIExpression()), !dbg !667, !psr.id !668
  %57 = mul i32 %55, 4, !dbg !663, !psr.id !669
  %58 = zext i32 %57 to i64, !dbg !663, !psr.id !670
  %59 = getelementptr inbounds i8, i8* %3, i64 %58, !dbg !663, !psr.id !671
  call void @llvm.dbg.value(metadata i8* %59, metadata !672, metadata !DIExpression()), !dbg !667, !psr.id !673
  %60 = call i32 @load32(i8* %59), !dbg !663, !psr.id !674
  %61 = call i32 @__uint32_identity(i32 %60), !dbg !663, !psr.id !675
  call void @llvm.dbg.value(metadata i32 %61, metadata !676, metadata !DIExpression()), !dbg !667, !psr.id !677
  call void @llvm.dbg.value(metadata i32 %61, metadata !678, metadata !DIExpression()), !dbg !667, !psr.id !679
  call void @llvm.dbg.value(metadata i32 %61, metadata !680, metadata !DIExpression()), !dbg !667, !psr.id !681
  %62 = zext i32 %55 to i64, !dbg !663, !psr.id !682
  %63 = getelementptr inbounds i32, i32* %56, i64 %62, !dbg !663, !psr.id !683
  store i32 %61, i32* %63, align 4, !dbg !663, !psr.id !684
  %64 = add i32 %55, 1, !dbg !663, !psr.id !685
  call void @llvm.dbg.value(metadata i32 %64, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !686
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !687, !psr.id !689
  call void @llvm.dbg.value(metadata i32* %65, metadata !690, metadata !DIExpression()), !dbg !691, !psr.id !692
  %66 = mul i32 %64, 4, !dbg !687, !psr.id !693
  %67 = zext i32 %66 to i64, !dbg !687, !psr.id !694
  %68 = getelementptr inbounds i8, i8* %3, i64 %67, !dbg !687, !psr.id !695
  call void @llvm.dbg.value(metadata i8* %68, metadata !696, metadata !DIExpression()), !dbg !691, !psr.id !697
  %69 = call i32 @load32(i8* %68), !dbg !687, !psr.id !698
  %70 = call i32 @__uint32_identity(i32 %69), !dbg !687, !psr.id !699
  call void @llvm.dbg.value(metadata i32 %70, metadata !700, metadata !DIExpression()), !dbg !691, !psr.id !701
  call void @llvm.dbg.value(metadata i32 %70, metadata !702, metadata !DIExpression()), !dbg !691, !psr.id !703
  call void @llvm.dbg.value(metadata i32 %70, metadata !704, metadata !DIExpression()), !dbg !691, !psr.id !705
  %71 = zext i32 %64 to i64, !dbg !687, !psr.id !706
  %72 = getelementptr inbounds i32, i32* %65, i64 %71, !dbg !687, !psr.id !707
  store i32 %70, i32* %72, align 4, !dbg !687, !psr.id !708
  %73 = add i32 %64, 1, !dbg !687, !psr.id !709
  call void @llvm.dbg.value(metadata i32 %73, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !710
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !711, !psr.id !713
  call void @llvm.dbg.value(metadata i32* %74, metadata !714, metadata !DIExpression()), !dbg !715, !psr.id !716
  %75 = mul i32 %73, 4, !dbg !711, !psr.id !717
  %76 = zext i32 %75 to i64, !dbg !711, !psr.id !718
  %77 = getelementptr inbounds i8, i8* %3, i64 %76, !dbg !711, !psr.id !719
  call void @llvm.dbg.value(metadata i8* %77, metadata !720, metadata !DIExpression()), !dbg !715, !psr.id !721
  %78 = call i32 @load32(i8* %77), !dbg !711, !psr.id !722
  %79 = call i32 @__uint32_identity(i32 %78), !dbg !711, !psr.id !723
  call void @llvm.dbg.value(metadata i32 %79, metadata !724, metadata !DIExpression()), !dbg !715, !psr.id !725
  call void @llvm.dbg.value(metadata i32 %79, metadata !726, metadata !DIExpression()), !dbg !715, !psr.id !727
  call void @llvm.dbg.value(metadata i32 %79, metadata !728, metadata !DIExpression()), !dbg !715, !psr.id !729
  %80 = zext i32 %73 to i64, !dbg !711, !psr.id !730
  %81 = getelementptr inbounds i32, i32* %74, i64 %80, !dbg !711, !psr.id !731
  store i32 %79, i32* %81, align 4, !dbg !711, !psr.id !732
  %82 = add i32 %73, 1, !dbg !711, !psr.id !733
  call void @llvm.dbg.value(metadata i32 %82, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !734
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !735, !psr.id !737
  call void @llvm.dbg.value(metadata i32* %83, metadata !738, metadata !DIExpression()), !dbg !739, !psr.id !740
  %84 = mul i32 %82, 4, !dbg !735, !psr.id !741
  %85 = zext i32 %84 to i64, !dbg !735, !psr.id !742
  %86 = getelementptr inbounds i8, i8* %3, i64 %85, !dbg !735, !psr.id !743
  call void @llvm.dbg.value(metadata i8* %86, metadata !744, metadata !DIExpression()), !dbg !739, !psr.id !745
  %87 = call i32 @load32(i8* %86), !dbg !735, !psr.id !746
  %88 = call i32 @__uint32_identity(i32 %87), !dbg !735, !psr.id !747
  call void @llvm.dbg.value(metadata i32 %88, metadata !748, metadata !DIExpression()), !dbg !739, !psr.id !749
  call void @llvm.dbg.value(metadata i32 %88, metadata !750, metadata !DIExpression()), !dbg !739, !psr.id !751
  call void @llvm.dbg.value(metadata i32 %88, metadata !752, metadata !DIExpression()), !dbg !739, !psr.id !753
  %89 = zext i32 %82 to i64, !dbg !735, !psr.id !754
  %90 = getelementptr inbounds i32, i32* %83, i64 %89, !dbg !735, !psr.id !755
  store i32 %88, i32* %90, align 4, !dbg !735, !psr.id !756
  %91 = add i32 %82, 1, !dbg !735, !psr.id !757
  call void @llvm.dbg.value(metadata i32 %91, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !758
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !759, !psr.id !761
  call void @llvm.dbg.value(metadata i32* %92, metadata !762, metadata !DIExpression()), !dbg !763, !psr.id !764
  %93 = mul i32 %91, 4, !dbg !759, !psr.id !765
  %94 = zext i32 %93 to i64, !dbg !759, !psr.id !766
  %95 = getelementptr inbounds i8, i8* %3, i64 %94, !dbg !759, !psr.id !767
  call void @llvm.dbg.value(metadata i8* %95, metadata !768, metadata !DIExpression()), !dbg !763, !psr.id !769
  %96 = call i32 @load32(i8* %95), !dbg !759, !psr.id !770
  %97 = call i32 @__uint32_identity(i32 %96), !dbg !759, !psr.id !771
  call void @llvm.dbg.value(metadata i32 %97, metadata !772, metadata !DIExpression()), !dbg !763, !psr.id !773
  call void @llvm.dbg.value(metadata i32 %97, metadata !774, metadata !DIExpression()), !dbg !763, !psr.id !775
  call void @llvm.dbg.value(metadata i32 %97, metadata !776, metadata !DIExpression()), !dbg !763, !psr.id !777
  %98 = zext i32 %91 to i64, !dbg !759, !psr.id !778
  %99 = getelementptr inbounds i32, i32* %92, i64 %98, !dbg !759, !psr.id !779
  store i32 %97, i32* %99, align 4, !dbg !759, !psr.id !780
  %100 = add i32 %91, 1, !dbg !759, !psr.id !781
  call void @llvm.dbg.value(metadata i32 %100, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !782
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !783, !psr.id !785
  call void @llvm.dbg.value(metadata i32* %101, metadata !786, metadata !DIExpression()), !dbg !787, !psr.id !788
  %102 = mul i32 %100, 4, !dbg !783, !psr.id !789
  %103 = zext i32 %102 to i64, !dbg !783, !psr.id !790
  %104 = getelementptr inbounds i8, i8* %3, i64 %103, !dbg !783, !psr.id !791
  call void @llvm.dbg.value(metadata i8* %104, metadata !792, metadata !DIExpression()), !dbg !787, !psr.id !793
  %105 = call i32 @load32(i8* %104), !dbg !783, !psr.id !794
  %106 = call i32 @__uint32_identity(i32 %105), !dbg !783, !psr.id !795
  call void @llvm.dbg.value(metadata i32 %106, metadata !796, metadata !DIExpression()), !dbg !787, !psr.id !797
  call void @llvm.dbg.value(metadata i32 %106, metadata !798, metadata !DIExpression()), !dbg !787, !psr.id !799
  call void @llvm.dbg.value(metadata i32 %106, metadata !800, metadata !DIExpression()), !dbg !787, !psr.id !801
  %107 = zext i32 %100 to i64, !dbg !783, !psr.id !802
  %108 = getelementptr inbounds i32, i32* %101, i64 %107, !dbg !783, !psr.id !803
  store i32 %106, i32* %108, align 4, !dbg !783, !psr.id !804
  %109 = add i32 %100, 1, !dbg !783, !psr.id !805
  call void @llvm.dbg.value(metadata i32 %109, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !806
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !807, !psr.id !809
  call void @llvm.dbg.value(metadata i32* %110, metadata !810, metadata !DIExpression()), !dbg !811, !psr.id !812
  %111 = mul i32 %109, 4, !dbg !807, !psr.id !813
  %112 = zext i32 %111 to i64, !dbg !807, !psr.id !814
  %113 = getelementptr inbounds i8, i8* %3, i64 %112, !dbg !807, !psr.id !815
  call void @llvm.dbg.value(metadata i8* %113, metadata !816, metadata !DIExpression()), !dbg !811, !psr.id !817
  %114 = call i32 @load32(i8* %113), !dbg !807, !psr.id !818
  %115 = call i32 @__uint32_identity(i32 %114), !dbg !807, !psr.id !819
  call void @llvm.dbg.value(metadata i32 %115, metadata !820, metadata !DIExpression()), !dbg !811, !psr.id !821
  call void @llvm.dbg.value(metadata i32 %115, metadata !822, metadata !DIExpression()), !dbg !811, !psr.id !823
  call void @llvm.dbg.value(metadata i32 %115, metadata !824, metadata !DIExpression()), !dbg !811, !psr.id !825
  %116 = zext i32 %109 to i64, !dbg !807, !psr.id !826
  %117 = getelementptr inbounds i32, i32* %110, i64 %116, !dbg !807, !psr.id !827
  store i32 %115, i32* %117, align 4, !dbg !807, !psr.id !828
  %118 = add i32 %109, 1, !dbg !807, !psr.id !829
  call void @llvm.dbg.value(metadata i32 %118, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !830
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !831, !psr.id !833
  call void @llvm.dbg.value(metadata i32* %119, metadata !834, metadata !DIExpression()), !dbg !835, !psr.id !836
  %120 = mul i32 %118, 4, !dbg !831, !psr.id !837
  %121 = zext i32 %120 to i64, !dbg !831, !psr.id !838
  %122 = getelementptr inbounds i8, i8* %3, i64 %121, !dbg !831, !psr.id !839
  call void @llvm.dbg.value(metadata i8* %122, metadata !840, metadata !DIExpression()), !dbg !835, !psr.id !841
  %123 = call i32 @load32(i8* %122), !dbg !831, !psr.id !842
  %124 = call i32 @__uint32_identity(i32 %123), !dbg !831, !psr.id !843
  call void @llvm.dbg.value(metadata i32 %124, metadata !844, metadata !DIExpression()), !dbg !835, !psr.id !845
  call void @llvm.dbg.value(metadata i32 %124, metadata !846, metadata !DIExpression()), !dbg !835, !psr.id !847
  call void @llvm.dbg.value(metadata i32 %124, metadata !848, metadata !DIExpression()), !dbg !835, !psr.id !849
  %125 = zext i32 %118 to i64, !dbg !831, !psr.id !850
  %126 = getelementptr inbounds i32, i32* %119, i64 %125, !dbg !831, !psr.id !851
  store i32 %124, i32* %126, align 4, !dbg !831, !psr.id !852
  %127 = add i32 %118, 1, !dbg !831, !psr.id !853
  call void @llvm.dbg.value(metadata i32 %127, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !854
  %128 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !855, !psr.id !857
  call void @llvm.dbg.value(metadata i32* %128, metadata !858, metadata !DIExpression()), !dbg !859, !psr.id !860
  %129 = mul i32 %127, 4, !dbg !855, !psr.id !861
  %130 = zext i32 %129 to i64, !dbg !855, !psr.id !862
  %131 = getelementptr inbounds i8, i8* %3, i64 %130, !dbg !855, !psr.id !863
  call void @llvm.dbg.value(metadata i8* %131, metadata !864, metadata !DIExpression()), !dbg !859, !psr.id !865
  %132 = call i32 @load32(i8* %131), !dbg !855, !psr.id !866
  %133 = call i32 @__uint32_identity(i32 %132), !dbg !855, !psr.id !867
  call void @llvm.dbg.value(metadata i32 %133, metadata !868, metadata !DIExpression()), !dbg !859, !psr.id !869
  call void @llvm.dbg.value(metadata i32 %133, metadata !870, metadata !DIExpression()), !dbg !859, !psr.id !871
  call void @llvm.dbg.value(metadata i32 %133, metadata !872, metadata !DIExpression()), !dbg !859, !psr.id !873
  %134 = zext i32 %127 to i64, !dbg !855, !psr.id !874
  %135 = getelementptr inbounds i32, i32* %128, i64 %134, !dbg !855, !psr.id !875
  store i32 %133, i32* %135, align 4, !dbg !855, !psr.id !876
  %136 = add i32 %127, 1, !dbg !855, !psr.id !877
  call void @llvm.dbg.value(metadata i32 %136, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !878
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !879, !psr.id !881
  call void @llvm.dbg.value(metadata i32* %137, metadata !882, metadata !DIExpression()), !dbg !883, !psr.id !884
  %138 = mul i32 %136, 4, !dbg !879, !psr.id !885
  %139 = zext i32 %138 to i64, !dbg !879, !psr.id !886
  %140 = getelementptr inbounds i8, i8* %3, i64 %139, !dbg !879, !psr.id !887
  call void @llvm.dbg.value(metadata i8* %140, metadata !888, metadata !DIExpression()), !dbg !883, !psr.id !889
  %141 = call i32 @load32(i8* %140), !dbg !879, !psr.id !890
  %142 = call i32 @__uint32_identity(i32 %141), !dbg !879, !psr.id !891
  call void @llvm.dbg.value(metadata i32 %142, metadata !892, metadata !DIExpression()), !dbg !883, !psr.id !893
  call void @llvm.dbg.value(metadata i32 %142, metadata !894, metadata !DIExpression()), !dbg !883, !psr.id !895
  call void @llvm.dbg.value(metadata i32 %142, metadata !896, metadata !DIExpression()), !dbg !883, !psr.id !897
  %143 = zext i32 %136 to i64, !dbg !879, !psr.id !898
  %144 = getelementptr inbounds i32, i32* %137, i64 %143, !dbg !879, !psr.id !899
  store i32 %142, i32* %144, align 4, !dbg !879, !psr.id !900
  %145 = add i32 %136, 1, !dbg !879, !psr.id !901
  call void @llvm.dbg.value(metadata i32 %145, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !902
  %146 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !903, !psr.id !905
  call void @llvm.dbg.value(metadata i32* %146, metadata !906, metadata !DIExpression()), !dbg !907, !psr.id !908
  %147 = mul i32 %145, 4, !dbg !903, !psr.id !909
  %148 = zext i32 %147 to i64, !dbg !903, !psr.id !910
  %149 = getelementptr inbounds i8, i8* %3, i64 %148, !dbg !903, !psr.id !911
  call void @llvm.dbg.value(metadata i8* %149, metadata !912, metadata !DIExpression()), !dbg !907, !psr.id !913
  %150 = call i32 @load32(i8* %149), !dbg !903, !psr.id !914
  %151 = call i32 @__uint32_identity(i32 %150), !dbg !903, !psr.id !915
  call void @llvm.dbg.value(metadata i32 %151, metadata !916, metadata !DIExpression()), !dbg !907, !psr.id !917
  call void @llvm.dbg.value(metadata i32 %151, metadata !918, metadata !DIExpression()), !dbg !907, !psr.id !919
  call void @llvm.dbg.value(metadata i32 %151, metadata !920, metadata !DIExpression()), !dbg !907, !psr.id !921
  %152 = zext i32 %145 to i64, !dbg !903, !psr.id !922
  %153 = getelementptr inbounds i32, i32* %146, i64 %152, !dbg !903, !psr.id !923
  store i32 %151, i32* %153, align 4, !dbg !903, !psr.id !924
  %154 = add i32 %145, 1, !dbg !903, !psr.id !925
  call void @llvm.dbg.value(metadata i32 %154, metadata !539, metadata !DIExpression()), !dbg !541, !psr.id !926
  br label %155, !dbg !927, !psr.id !928

155:                                              ; preds = %10
  br label %156, !dbg !929, !psr.id !930

156:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 0, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !934
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !935, !psr.id !937
  call void @llvm.dbg.value(metadata i32* %157, metadata !938, metadata !DIExpression()), !dbg !939, !psr.id !940
  %158 = zext i32 0 to i64, !dbg !935, !psr.id !941
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %158, !dbg !935, !psr.id !942
  %160 = load i32, i32* %159, align 4, !dbg !935, !psr.id !943
  %161 = zext i32 0 to i64, !dbg !935, !psr.id !944
  %162 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %161, !dbg !935, !psr.id !945
  %163 = load i32, i32* %162, align 4, !dbg !935, !psr.id !946
  %164 = xor i32 %160, %163, !dbg !935, !psr.id !947
  call void @llvm.dbg.value(metadata i32 %164, metadata !948, metadata !DIExpression()), !dbg !939, !psr.id !949
  %165 = zext i32 0 to i64, !dbg !935, !psr.id !950
  %166 = getelementptr inbounds i32, i32* %157, i64 %165, !dbg !935, !psr.id !951
  store i32 %164, i32* %166, align 4, !dbg !935, !psr.id !952
  %167 = add i32 0, 1, !dbg !935, !psr.id !953
  call void @llvm.dbg.value(metadata i32 %167, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !954
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !955, !psr.id !957
  call void @llvm.dbg.value(metadata i32* %168, metadata !958, metadata !DIExpression()), !dbg !959, !psr.id !960
  %169 = zext i32 %167 to i64, !dbg !955, !psr.id !961
  %170 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %169, !dbg !955, !psr.id !962
  %171 = load i32, i32* %170, align 4, !dbg !955, !psr.id !963
  %172 = zext i32 %167 to i64, !dbg !955, !psr.id !964
  %173 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %172, !dbg !955, !psr.id !965
  %174 = load i32, i32* %173, align 4, !dbg !955, !psr.id !966
  %175 = xor i32 %171, %174, !dbg !955, !psr.id !967
  call void @llvm.dbg.value(metadata i32 %175, metadata !968, metadata !DIExpression()), !dbg !959, !psr.id !969
  %176 = zext i32 %167 to i64, !dbg !955, !psr.id !970
  %177 = getelementptr inbounds i32, i32* %168, i64 %176, !dbg !955, !psr.id !971
  store i32 %175, i32* %177, align 4, !dbg !955, !psr.id !972
  %178 = add i32 %167, 1, !dbg !955, !psr.id !973
  call void @llvm.dbg.value(metadata i32 %178, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !974
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !975, !psr.id !977
  call void @llvm.dbg.value(metadata i32* %179, metadata !978, metadata !DIExpression()), !dbg !979, !psr.id !980
  %180 = zext i32 %178 to i64, !dbg !975, !psr.id !981
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %180, !dbg !975, !psr.id !982
  %182 = load i32, i32* %181, align 4, !dbg !975, !psr.id !983
  %183 = zext i32 %178 to i64, !dbg !975, !psr.id !984
  %184 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %183, !dbg !975, !psr.id !985
  %185 = load i32, i32* %184, align 4, !dbg !975, !psr.id !986
  %186 = xor i32 %182, %185, !dbg !975, !psr.id !987
  call void @llvm.dbg.value(metadata i32 %186, metadata !988, metadata !DIExpression()), !dbg !979, !psr.id !989
  %187 = zext i32 %178 to i64, !dbg !975, !psr.id !990
  %188 = getelementptr inbounds i32, i32* %179, i64 %187, !dbg !975, !psr.id !991
  store i32 %186, i32* %188, align 4, !dbg !975, !psr.id !992
  %189 = add i32 %178, 1, !dbg !975, !psr.id !993
  call void @llvm.dbg.value(metadata i32 %189, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !994
  %190 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !995, !psr.id !997
  call void @llvm.dbg.value(metadata i32* %190, metadata !998, metadata !DIExpression()), !dbg !999, !psr.id !1000
  %191 = zext i32 %189 to i64, !dbg !995, !psr.id !1001
  %192 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %191, !dbg !995, !psr.id !1002
  %193 = load i32, i32* %192, align 4, !dbg !995, !psr.id !1003
  %194 = zext i32 %189 to i64, !dbg !995, !psr.id !1004
  %195 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %194, !dbg !995, !psr.id !1005
  %196 = load i32, i32* %195, align 4, !dbg !995, !psr.id !1006
  %197 = xor i32 %193, %196, !dbg !995, !psr.id !1007
  call void @llvm.dbg.value(metadata i32 %197, metadata !1008, metadata !DIExpression()), !dbg !999, !psr.id !1009
  %198 = zext i32 %189 to i64, !dbg !995, !psr.id !1010
  %199 = getelementptr inbounds i32, i32* %190, i64 %198, !dbg !995, !psr.id !1011
  store i32 %197, i32* %199, align 4, !dbg !995, !psr.id !1012
  %200 = add i32 %189, 1, !dbg !995, !psr.id !1013
  call void @llvm.dbg.value(metadata i32 %200, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1014
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1015, !psr.id !1017
  call void @llvm.dbg.value(metadata i32* %201, metadata !1018, metadata !DIExpression()), !dbg !1019, !psr.id !1020
  %202 = zext i32 %200 to i64, !dbg !1015, !psr.id !1021
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %202, !dbg !1015, !psr.id !1022
  %204 = load i32, i32* %203, align 4, !dbg !1015, !psr.id !1023
  %205 = zext i32 %200 to i64, !dbg !1015, !psr.id !1024
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %205, !dbg !1015, !psr.id !1025
  %207 = load i32, i32* %206, align 4, !dbg !1015, !psr.id !1026
  %208 = xor i32 %204, %207, !dbg !1015, !psr.id !1027
  call void @llvm.dbg.value(metadata i32 %208, metadata !1028, metadata !DIExpression()), !dbg !1019, !psr.id !1029
  %209 = zext i32 %200 to i64, !dbg !1015, !psr.id !1030
  %210 = getelementptr inbounds i32, i32* %201, i64 %209, !dbg !1015, !psr.id !1031
  store i32 %208, i32* %210, align 4, !dbg !1015, !psr.id !1032
  %211 = add i32 %200, 1, !dbg !1015, !psr.id !1033
  call void @llvm.dbg.value(metadata i32 %211, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1034
  %212 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1035, !psr.id !1037
  call void @llvm.dbg.value(metadata i32* %212, metadata !1038, metadata !DIExpression()), !dbg !1039, !psr.id !1040
  %213 = zext i32 %211 to i64, !dbg !1035, !psr.id !1041
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %213, !dbg !1035, !psr.id !1042
  %215 = load i32, i32* %214, align 4, !dbg !1035, !psr.id !1043
  %216 = zext i32 %211 to i64, !dbg !1035, !psr.id !1044
  %217 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %216, !dbg !1035, !psr.id !1045
  %218 = load i32, i32* %217, align 4, !dbg !1035, !psr.id !1046
  %219 = xor i32 %215, %218, !dbg !1035, !psr.id !1047
  call void @llvm.dbg.value(metadata i32 %219, metadata !1048, metadata !DIExpression()), !dbg !1039, !psr.id !1049
  %220 = zext i32 %211 to i64, !dbg !1035, !psr.id !1050
  %221 = getelementptr inbounds i32, i32* %212, i64 %220, !dbg !1035, !psr.id !1051
  store i32 %219, i32* %221, align 4, !dbg !1035, !psr.id !1052
  %222 = add i32 %211, 1, !dbg !1035, !psr.id !1053
  call void @llvm.dbg.value(metadata i32 %222, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1054
  %223 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1055, !psr.id !1057
  call void @llvm.dbg.value(metadata i32* %223, metadata !1058, metadata !DIExpression()), !dbg !1059, !psr.id !1060
  %224 = zext i32 %222 to i64, !dbg !1055, !psr.id !1061
  %225 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %224, !dbg !1055, !psr.id !1062
  %226 = load i32, i32* %225, align 4, !dbg !1055, !psr.id !1063
  %227 = zext i32 %222 to i64, !dbg !1055, !psr.id !1064
  %228 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %227, !dbg !1055, !psr.id !1065
  %229 = load i32, i32* %228, align 4, !dbg !1055, !psr.id !1066
  %230 = xor i32 %226, %229, !dbg !1055, !psr.id !1067
  call void @llvm.dbg.value(metadata i32 %230, metadata !1068, metadata !DIExpression()), !dbg !1059, !psr.id !1069
  %231 = zext i32 %222 to i64, !dbg !1055, !psr.id !1070
  %232 = getelementptr inbounds i32, i32* %223, i64 %231, !dbg !1055, !psr.id !1071
  store i32 %230, i32* %232, align 4, !dbg !1055, !psr.id !1072
  %233 = add i32 %222, 1, !dbg !1055, !psr.id !1073
  call void @llvm.dbg.value(metadata i32 %233, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1074
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1075, !psr.id !1077
  call void @llvm.dbg.value(metadata i32* %234, metadata !1078, metadata !DIExpression()), !dbg !1079, !psr.id !1080
  %235 = zext i32 %233 to i64, !dbg !1075, !psr.id !1081
  %236 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %235, !dbg !1075, !psr.id !1082
  %237 = load i32, i32* %236, align 4, !dbg !1075, !psr.id !1083
  %238 = zext i32 %233 to i64, !dbg !1075, !psr.id !1084
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %238, !dbg !1075, !psr.id !1085
  %240 = load i32, i32* %239, align 4, !dbg !1075, !psr.id !1086
  %241 = xor i32 %237, %240, !dbg !1075, !psr.id !1087
  call void @llvm.dbg.value(metadata i32 %241, metadata !1088, metadata !DIExpression()), !dbg !1079, !psr.id !1089
  %242 = zext i32 %233 to i64, !dbg !1075, !psr.id !1090
  %243 = getelementptr inbounds i32, i32* %234, i64 %242, !dbg !1075, !psr.id !1091
  store i32 %241, i32* %243, align 4, !dbg !1075, !psr.id !1092
  %244 = add i32 %233, 1, !dbg !1075, !psr.id !1093
  call void @llvm.dbg.value(metadata i32 %244, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1094
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1095, !psr.id !1097
  call void @llvm.dbg.value(metadata i32* %245, metadata !1098, metadata !DIExpression()), !dbg !1099, !psr.id !1100
  %246 = zext i32 %244 to i64, !dbg !1095, !psr.id !1101
  %247 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %246, !dbg !1095, !psr.id !1102
  %248 = load i32, i32* %247, align 4, !dbg !1095, !psr.id !1103
  %249 = zext i32 %244 to i64, !dbg !1095, !psr.id !1104
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %249, !dbg !1095, !psr.id !1105
  %251 = load i32, i32* %250, align 4, !dbg !1095, !psr.id !1106
  %252 = xor i32 %248, %251, !dbg !1095, !psr.id !1107
  call void @llvm.dbg.value(metadata i32 %252, metadata !1108, metadata !DIExpression()), !dbg !1099, !psr.id !1109
  %253 = zext i32 %244 to i64, !dbg !1095, !psr.id !1110
  %254 = getelementptr inbounds i32, i32* %245, i64 %253, !dbg !1095, !psr.id !1111
  store i32 %252, i32* %254, align 4, !dbg !1095, !psr.id !1112
  %255 = add i32 %244, 1, !dbg !1095, !psr.id !1113
  call void @llvm.dbg.value(metadata i32 %255, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1114
  %256 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1115, !psr.id !1117
  call void @llvm.dbg.value(metadata i32* %256, metadata !1118, metadata !DIExpression()), !dbg !1119, !psr.id !1120
  %257 = zext i32 %255 to i64, !dbg !1115, !psr.id !1121
  %258 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %257, !dbg !1115, !psr.id !1122
  %259 = load i32, i32* %258, align 4, !dbg !1115, !psr.id !1123
  %260 = zext i32 %255 to i64, !dbg !1115, !psr.id !1124
  %261 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %260, !dbg !1115, !psr.id !1125
  %262 = load i32, i32* %261, align 4, !dbg !1115, !psr.id !1126
  %263 = xor i32 %259, %262, !dbg !1115, !psr.id !1127
  call void @llvm.dbg.value(metadata i32 %263, metadata !1128, metadata !DIExpression()), !dbg !1119, !psr.id !1129
  %264 = zext i32 %255 to i64, !dbg !1115, !psr.id !1130
  %265 = getelementptr inbounds i32, i32* %256, i64 %264, !dbg !1115, !psr.id !1131
  store i32 %263, i32* %265, align 4, !dbg !1115, !psr.id !1132
  %266 = add i32 %255, 1, !dbg !1115, !psr.id !1133
  call void @llvm.dbg.value(metadata i32 %266, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1134
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1135, !psr.id !1137
  call void @llvm.dbg.value(metadata i32* %267, metadata !1138, metadata !DIExpression()), !dbg !1139, !psr.id !1140
  %268 = zext i32 %266 to i64, !dbg !1135, !psr.id !1141
  %269 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %268, !dbg !1135, !psr.id !1142
  %270 = load i32, i32* %269, align 4, !dbg !1135, !psr.id !1143
  %271 = zext i32 %266 to i64, !dbg !1135, !psr.id !1144
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %271, !dbg !1135, !psr.id !1145
  %273 = load i32, i32* %272, align 4, !dbg !1135, !psr.id !1146
  %274 = xor i32 %270, %273, !dbg !1135, !psr.id !1147
  call void @llvm.dbg.value(metadata i32 %274, metadata !1148, metadata !DIExpression()), !dbg !1139, !psr.id !1149
  %275 = zext i32 %266 to i64, !dbg !1135, !psr.id !1150
  %276 = getelementptr inbounds i32, i32* %267, i64 %275, !dbg !1135, !psr.id !1151
  store i32 %274, i32* %276, align 4, !dbg !1135, !psr.id !1152
  %277 = add i32 %266, 1, !dbg !1135, !psr.id !1153
  call void @llvm.dbg.value(metadata i32 %277, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1154
  %278 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1155, !psr.id !1157
  call void @llvm.dbg.value(metadata i32* %278, metadata !1158, metadata !DIExpression()), !dbg !1159, !psr.id !1160
  %279 = zext i32 %277 to i64, !dbg !1155, !psr.id !1161
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %279, !dbg !1155, !psr.id !1162
  %281 = load i32, i32* %280, align 4, !dbg !1155, !psr.id !1163
  %282 = zext i32 %277 to i64, !dbg !1155, !psr.id !1164
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %282, !dbg !1155, !psr.id !1165
  %284 = load i32, i32* %283, align 4, !dbg !1155, !psr.id !1166
  %285 = xor i32 %281, %284, !dbg !1155, !psr.id !1167
  call void @llvm.dbg.value(metadata i32 %285, metadata !1168, metadata !DIExpression()), !dbg !1159, !psr.id !1169
  %286 = zext i32 %277 to i64, !dbg !1155, !psr.id !1170
  %287 = getelementptr inbounds i32, i32* %278, i64 %286, !dbg !1155, !psr.id !1171
  store i32 %285, i32* %287, align 4, !dbg !1155, !psr.id !1172
  %288 = add i32 %277, 1, !dbg !1155, !psr.id !1173
  call void @llvm.dbg.value(metadata i32 %288, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1174
  %289 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1175, !psr.id !1177
  call void @llvm.dbg.value(metadata i32* %289, metadata !1178, metadata !DIExpression()), !dbg !1179, !psr.id !1180
  %290 = zext i32 %288 to i64, !dbg !1175, !psr.id !1181
  %291 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %290, !dbg !1175, !psr.id !1182
  %292 = load i32, i32* %291, align 4, !dbg !1175, !psr.id !1183
  %293 = zext i32 %288 to i64, !dbg !1175, !psr.id !1184
  %294 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %293, !dbg !1175, !psr.id !1185
  %295 = load i32, i32* %294, align 4, !dbg !1175, !psr.id !1186
  %296 = xor i32 %292, %295, !dbg !1175, !psr.id !1187
  call void @llvm.dbg.value(metadata i32 %296, metadata !1188, metadata !DIExpression()), !dbg !1179, !psr.id !1189
  %297 = zext i32 %288 to i64, !dbg !1175, !psr.id !1190
  %298 = getelementptr inbounds i32, i32* %289, i64 %297, !dbg !1175, !psr.id !1191
  store i32 %296, i32* %298, align 4, !dbg !1175, !psr.id !1192
  %299 = add i32 %288, 1, !dbg !1175, !psr.id !1193
  call void @llvm.dbg.value(metadata i32 %299, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1194
  %300 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1195, !psr.id !1197
  call void @llvm.dbg.value(metadata i32* %300, metadata !1198, metadata !DIExpression()), !dbg !1199, !psr.id !1200
  %301 = zext i32 %299 to i64, !dbg !1195, !psr.id !1201
  %302 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %301, !dbg !1195, !psr.id !1202
  %303 = load i32, i32* %302, align 4, !dbg !1195, !psr.id !1203
  %304 = zext i32 %299 to i64, !dbg !1195, !psr.id !1204
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %304, !dbg !1195, !psr.id !1205
  %306 = load i32, i32* %305, align 4, !dbg !1195, !psr.id !1206
  %307 = xor i32 %303, %306, !dbg !1195, !psr.id !1207
  call void @llvm.dbg.value(metadata i32 %307, metadata !1208, metadata !DIExpression()), !dbg !1199, !psr.id !1209
  %308 = zext i32 %299 to i64, !dbg !1195, !psr.id !1210
  %309 = getelementptr inbounds i32, i32* %300, i64 %308, !dbg !1195, !psr.id !1211
  store i32 %307, i32* %309, align 4, !dbg !1195, !psr.id !1212
  %310 = add i32 %299, 1, !dbg !1195, !psr.id !1213
  call void @llvm.dbg.value(metadata i32 %310, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1214
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1215, !psr.id !1217
  call void @llvm.dbg.value(metadata i32* %311, metadata !1218, metadata !DIExpression()), !dbg !1219, !psr.id !1220
  %312 = zext i32 %310 to i64, !dbg !1215, !psr.id !1221
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %312, !dbg !1215, !psr.id !1222
  %314 = load i32, i32* %313, align 4, !dbg !1215, !psr.id !1223
  %315 = zext i32 %310 to i64, !dbg !1215, !psr.id !1224
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %315, !dbg !1215, !psr.id !1225
  %317 = load i32, i32* %316, align 4, !dbg !1215, !psr.id !1226
  %318 = xor i32 %314, %317, !dbg !1215, !psr.id !1227
  call void @llvm.dbg.value(metadata i32 %318, metadata !1228, metadata !DIExpression()), !dbg !1219, !psr.id !1229
  %319 = zext i32 %310 to i64, !dbg !1215, !psr.id !1230
  %320 = getelementptr inbounds i32, i32* %311, i64 %319, !dbg !1215, !psr.id !1231
  store i32 %318, i32* %320, align 4, !dbg !1215, !psr.id !1232
  %321 = add i32 %310, 1, !dbg !1215, !psr.id !1233
  call void @llvm.dbg.value(metadata i32 %321, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1234
  %322 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0, !dbg !1235, !psr.id !1237
  call void @llvm.dbg.value(metadata i32* %322, metadata !1238, metadata !DIExpression()), !dbg !1239, !psr.id !1240
  %323 = zext i32 %321 to i64, !dbg !1235, !psr.id !1241
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %323, !dbg !1235, !psr.id !1242
  %325 = load i32, i32* %324, align 4, !dbg !1235, !psr.id !1243
  %326 = zext i32 %321 to i64, !dbg !1235, !psr.id !1244
  %327 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %326, !dbg !1235, !psr.id !1245
  %328 = load i32, i32* %327, align 4, !dbg !1235, !psr.id !1246
  %329 = xor i32 %325, %328, !dbg !1235, !psr.id !1247
  call void @llvm.dbg.value(metadata i32 %329, metadata !1248, metadata !DIExpression()), !dbg !1239, !psr.id !1249
  %330 = zext i32 %321 to i64, !dbg !1235, !psr.id !1250
  %331 = getelementptr inbounds i32, i32* %322, i64 %330, !dbg !1235, !psr.id !1251
  store i32 %329, i32* %331, align 4, !dbg !1235, !psr.id !1252
  %332 = add i32 %321, 1, !dbg !1235, !psr.id !1253
  call void @llvm.dbg.value(metadata i32 %332, metadata !931, metadata !DIExpression()), !dbg !933, !psr.id !1254
  br label %333, !dbg !1255, !psr.id !1256

333:                                              ; preds = %156
  br label %334, !dbg !1257, !psr.id !1258

334:                                              ; preds = %333
  call void @llvm.dbg.value(metadata i32 0, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1262
  %335 = mul i32 0, 4, !dbg !1263, !psr.id !1265
  %336 = zext i32 %335 to i64, !dbg !1263, !psr.id !1266
  %337 = getelementptr inbounds i8, i8* %1, i64 %336, !dbg !1263, !psr.id !1267
  %338 = zext i32 0 to i64, !dbg !1263, !psr.id !1268
  %339 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %338, !dbg !1263, !psr.id !1269
  %340 = load i32, i32* %339, align 4, !dbg !1263, !psr.id !1270
  %341 = call i32 @__uint32_identity(i32 %340), !dbg !1263, !psr.id !1271
  call void @store32(i8* %337, i32 %341), !dbg !1263, !psr.id !1272
  %342 = add i32 0, 1, !dbg !1263, !psr.id !1273
  call void @llvm.dbg.value(metadata i32 %342, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1274
  %343 = mul i32 %342, 4, !dbg !1275, !psr.id !1277
  %344 = zext i32 %343 to i64, !dbg !1275, !psr.id !1278
  %345 = getelementptr inbounds i8, i8* %1, i64 %344, !dbg !1275, !psr.id !1279
  %346 = zext i32 %342 to i64, !dbg !1275, !psr.id !1280
  %347 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %346, !dbg !1275, !psr.id !1281
  %348 = load i32, i32* %347, align 4, !dbg !1275, !psr.id !1282
  %349 = call i32 @__uint32_identity(i32 %348), !dbg !1275, !psr.id !1283
  call void @store32(i8* %345, i32 %349), !dbg !1275, !psr.id !1284
  %350 = add i32 %342, 1, !dbg !1275, !psr.id !1285
  call void @llvm.dbg.value(metadata i32 %350, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1286
  %351 = mul i32 %350, 4, !dbg !1287, !psr.id !1289
  %352 = zext i32 %351 to i64, !dbg !1287, !psr.id !1290
  %353 = getelementptr inbounds i8, i8* %1, i64 %352, !dbg !1287, !psr.id !1291
  %354 = zext i32 %350 to i64, !dbg !1287, !psr.id !1292
  %355 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %354, !dbg !1287, !psr.id !1293
  %356 = load i32, i32* %355, align 4, !dbg !1287, !psr.id !1294
  %357 = call i32 @__uint32_identity(i32 %356), !dbg !1287, !psr.id !1295
  call void @store32(i8* %353, i32 %357), !dbg !1287, !psr.id !1296
  %358 = add i32 %350, 1, !dbg !1287, !psr.id !1297
  call void @llvm.dbg.value(metadata i32 %358, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1298
  %359 = mul i32 %358, 4, !dbg !1299, !psr.id !1301
  %360 = zext i32 %359 to i64, !dbg !1299, !psr.id !1302
  %361 = getelementptr inbounds i8, i8* %1, i64 %360, !dbg !1299, !psr.id !1303
  %362 = zext i32 %358 to i64, !dbg !1299, !psr.id !1304
  %363 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %362, !dbg !1299, !psr.id !1305
  %364 = load i32, i32* %363, align 4, !dbg !1299, !psr.id !1306
  %365 = call i32 @__uint32_identity(i32 %364), !dbg !1299, !psr.id !1307
  call void @store32(i8* %361, i32 %365), !dbg !1299, !psr.id !1308
  %366 = add i32 %358, 1, !dbg !1299, !psr.id !1309
  call void @llvm.dbg.value(metadata i32 %366, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1310
  %367 = mul i32 %366, 4, !dbg !1311, !psr.id !1313
  %368 = zext i32 %367 to i64, !dbg !1311, !psr.id !1314
  %369 = getelementptr inbounds i8, i8* %1, i64 %368, !dbg !1311, !psr.id !1315
  %370 = zext i32 %366 to i64, !dbg !1311, !psr.id !1316
  %371 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %370, !dbg !1311, !psr.id !1317
  %372 = load i32, i32* %371, align 4, !dbg !1311, !psr.id !1318
  %373 = call i32 @__uint32_identity(i32 %372), !dbg !1311, !psr.id !1319
  call void @store32(i8* %369, i32 %373), !dbg !1311, !psr.id !1320
  %374 = add i32 %366, 1, !dbg !1311, !psr.id !1321
  call void @llvm.dbg.value(metadata i32 %374, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1322
  %375 = mul i32 %374, 4, !dbg !1323, !psr.id !1325
  %376 = zext i32 %375 to i64, !dbg !1323, !psr.id !1326
  %377 = getelementptr inbounds i8, i8* %1, i64 %376, !dbg !1323, !psr.id !1327
  %378 = zext i32 %374 to i64, !dbg !1323, !psr.id !1328
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %378, !dbg !1323, !psr.id !1329
  %380 = load i32, i32* %379, align 4, !dbg !1323, !psr.id !1330
  %381 = call i32 @__uint32_identity(i32 %380), !dbg !1323, !psr.id !1331
  call void @store32(i8* %377, i32 %381), !dbg !1323, !psr.id !1332
  %382 = add i32 %374, 1, !dbg !1323, !psr.id !1333
  call void @llvm.dbg.value(metadata i32 %382, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1334
  %383 = mul i32 %382, 4, !dbg !1335, !psr.id !1337
  %384 = zext i32 %383 to i64, !dbg !1335, !psr.id !1338
  %385 = getelementptr inbounds i8, i8* %1, i64 %384, !dbg !1335, !psr.id !1339
  %386 = zext i32 %382 to i64, !dbg !1335, !psr.id !1340
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %386, !dbg !1335, !psr.id !1341
  %388 = load i32, i32* %387, align 4, !dbg !1335, !psr.id !1342
  %389 = call i32 @__uint32_identity(i32 %388), !dbg !1335, !psr.id !1343
  call void @store32(i8* %385, i32 %389), !dbg !1335, !psr.id !1344
  %390 = add i32 %382, 1, !dbg !1335, !psr.id !1345
  call void @llvm.dbg.value(metadata i32 %390, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1346
  %391 = mul i32 %390, 4, !dbg !1347, !psr.id !1349
  %392 = zext i32 %391 to i64, !dbg !1347, !psr.id !1350
  %393 = getelementptr inbounds i8, i8* %1, i64 %392, !dbg !1347, !psr.id !1351
  %394 = zext i32 %390 to i64, !dbg !1347, !psr.id !1352
  %395 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %394, !dbg !1347, !psr.id !1353
  %396 = load i32, i32* %395, align 4, !dbg !1347, !psr.id !1354
  %397 = call i32 @__uint32_identity(i32 %396), !dbg !1347, !psr.id !1355
  call void @store32(i8* %393, i32 %397), !dbg !1347, !psr.id !1356
  %398 = add i32 %390, 1, !dbg !1347, !psr.id !1357
  call void @llvm.dbg.value(metadata i32 %398, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1358
  %399 = mul i32 %398, 4, !dbg !1359, !psr.id !1361
  %400 = zext i32 %399 to i64, !dbg !1359, !psr.id !1362
  %401 = getelementptr inbounds i8, i8* %1, i64 %400, !dbg !1359, !psr.id !1363
  %402 = zext i32 %398 to i64, !dbg !1359, !psr.id !1364
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %402, !dbg !1359, !psr.id !1365
  %404 = load i32, i32* %403, align 4, !dbg !1359, !psr.id !1366
  %405 = call i32 @__uint32_identity(i32 %404), !dbg !1359, !psr.id !1367
  call void @store32(i8* %401, i32 %405), !dbg !1359, !psr.id !1368
  %406 = add i32 %398, 1, !dbg !1359, !psr.id !1369
  call void @llvm.dbg.value(metadata i32 %406, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1370
  %407 = mul i32 %406, 4, !dbg !1371, !psr.id !1373
  %408 = zext i32 %407 to i64, !dbg !1371, !psr.id !1374
  %409 = getelementptr inbounds i8, i8* %1, i64 %408, !dbg !1371, !psr.id !1375
  %410 = zext i32 %406 to i64, !dbg !1371, !psr.id !1376
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %410, !dbg !1371, !psr.id !1377
  %412 = load i32, i32* %411, align 4, !dbg !1371, !psr.id !1378
  %413 = call i32 @__uint32_identity(i32 %412), !dbg !1371, !psr.id !1379
  call void @store32(i8* %409, i32 %413), !dbg !1371, !psr.id !1380
  %414 = add i32 %406, 1, !dbg !1371, !psr.id !1381
  call void @llvm.dbg.value(metadata i32 %414, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1382
  %415 = mul i32 %414, 4, !dbg !1383, !psr.id !1385
  %416 = zext i32 %415 to i64, !dbg !1383, !psr.id !1386
  %417 = getelementptr inbounds i8, i8* %1, i64 %416, !dbg !1383, !psr.id !1387
  %418 = zext i32 %414 to i64, !dbg !1383, !psr.id !1388
  %419 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %418, !dbg !1383, !psr.id !1389
  %420 = load i32, i32* %419, align 4, !dbg !1383, !psr.id !1390
  %421 = call i32 @__uint32_identity(i32 %420), !dbg !1383, !psr.id !1391
  call void @store32(i8* %417, i32 %421), !dbg !1383, !psr.id !1392
  %422 = add i32 %414, 1, !dbg !1383, !psr.id !1393
  call void @llvm.dbg.value(metadata i32 %422, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1394
  %423 = mul i32 %422, 4, !dbg !1395, !psr.id !1397
  %424 = zext i32 %423 to i64, !dbg !1395, !psr.id !1398
  %425 = getelementptr inbounds i8, i8* %1, i64 %424, !dbg !1395, !psr.id !1399
  %426 = zext i32 %422 to i64, !dbg !1395, !psr.id !1400
  %427 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %426, !dbg !1395, !psr.id !1401
  %428 = load i32, i32* %427, align 4, !dbg !1395, !psr.id !1402
  %429 = call i32 @__uint32_identity(i32 %428), !dbg !1395, !psr.id !1403
  call void @store32(i8* %425, i32 %429), !dbg !1395, !psr.id !1404
  %430 = add i32 %422, 1, !dbg !1395, !psr.id !1405
  call void @llvm.dbg.value(metadata i32 %430, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1406
  %431 = mul i32 %430, 4, !dbg !1407, !psr.id !1409
  %432 = zext i32 %431 to i64, !dbg !1407, !psr.id !1410
  %433 = getelementptr inbounds i8, i8* %1, i64 %432, !dbg !1407, !psr.id !1411
  %434 = zext i32 %430 to i64, !dbg !1407, !psr.id !1412
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %434, !dbg !1407, !psr.id !1413
  %436 = load i32, i32* %435, align 4, !dbg !1407, !psr.id !1414
  %437 = call i32 @__uint32_identity(i32 %436), !dbg !1407, !psr.id !1415
  call void @store32(i8* %433, i32 %437), !dbg !1407, !psr.id !1416
  %438 = add i32 %430, 1, !dbg !1407, !psr.id !1417
  call void @llvm.dbg.value(metadata i32 %438, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1418
  %439 = mul i32 %438, 4, !dbg !1419, !psr.id !1421
  %440 = zext i32 %439 to i64, !dbg !1419, !psr.id !1422
  %441 = getelementptr inbounds i8, i8* %1, i64 %440, !dbg !1419, !psr.id !1423
  %442 = zext i32 %438 to i64, !dbg !1419, !psr.id !1424
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %442, !dbg !1419, !psr.id !1425
  %444 = load i32, i32* %443, align 4, !dbg !1419, !psr.id !1426
  %445 = call i32 @__uint32_identity(i32 %444), !dbg !1419, !psr.id !1427
  call void @store32(i8* %441, i32 %445), !dbg !1419, !psr.id !1428
  %446 = add i32 %438, 1, !dbg !1419, !psr.id !1429
  call void @llvm.dbg.value(metadata i32 %446, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1430
  %447 = mul i32 %446, 4, !dbg !1431, !psr.id !1433
  %448 = zext i32 %447 to i64, !dbg !1431, !psr.id !1434
  %449 = getelementptr inbounds i8, i8* %1, i64 %448, !dbg !1431, !psr.id !1435
  %450 = zext i32 %446 to i64, !dbg !1431, !psr.id !1436
  %451 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %450, !dbg !1431, !psr.id !1437
  %452 = load i32, i32* %451, align 4, !dbg !1431, !psr.id !1438
  %453 = call i32 @__uint32_identity(i32 %452), !dbg !1431, !psr.id !1439
  call void @store32(i8* %449, i32 %453), !dbg !1431, !psr.id !1440
  %454 = add i32 %446, 1, !dbg !1431, !psr.id !1441
  call void @llvm.dbg.value(metadata i32 %454, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1442
  %455 = mul i32 %454, 4, !dbg !1443, !psr.id !1445
  %456 = zext i32 %455 to i64, !dbg !1443, !psr.id !1446
  %457 = getelementptr inbounds i8, i8* %1, i64 %456, !dbg !1443, !psr.id !1447
  %458 = zext i32 %454 to i64, !dbg !1443, !psr.id !1448
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %458, !dbg !1443, !psr.id !1449
  %460 = load i32, i32* %459, align 4, !dbg !1443, !psr.id !1450
  %461 = call i32 @__uint32_identity(i32 %460), !dbg !1443, !psr.id !1451
  call void @store32(i8* %457, i32 %461), !dbg !1443, !psr.id !1452
  %462 = add i32 %454, 1, !dbg !1443, !psr.id !1453
  call void @llvm.dbg.value(metadata i32 %462, metadata !1259, metadata !DIExpression()), !dbg !1261, !psr.id !1454
  br label %463, !dbg !1455, !psr.id !1456

463:                                              ; preds = %334
  ret void, !dbg !1457, !psr.id !1458
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_encrypt_last(i32* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 !dbg !1459 {
  %6 = alloca [64 x i8], align 16, !psr.id !1462
  call void @llvm.dbg.value(metadata i32* %0, metadata !1463, metadata !DIExpression()), !dbg !1464, !psr.id !1465
  call void @llvm.dbg.value(metadata i32 %1, metadata !1466, metadata !DIExpression()), !dbg !1464, !psr.id !1467
  call void @llvm.dbg.value(metadata i8* %2, metadata !1468, metadata !DIExpression()), !dbg !1464, !psr.id !1469
  call void @llvm.dbg.value(metadata i32 %3, metadata !1470, metadata !DIExpression()), !dbg !1464, !psr.id !1471
  call void @llvm.dbg.value(metadata i8* %4, metadata !1472, metadata !DIExpression()), !dbg !1464, !psr.id !1473
  call void @llvm.dbg.declare(metadata [64 x i8]* %6, metadata !1474, metadata !DIExpression()), !dbg !1478, !psr.id !1479
  %7 = bitcast [64 x i8]* %6 to i8*, !dbg !1478, !psr.id !1480
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 64, i1 false), !dbg !1478, !psr.id !1481
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !1482, !psr.id !1483
  %9 = zext i32 %1 to i64, !dbg !1484, !psr.id !1485
  %10 = mul i64 %9, 1, !dbg !1486, !psr.id !1487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 1 %4, i64 %10, i1 false), !dbg !1482, !psr.id !1488
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !1489, !psr.id !1490
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !1491, !psr.id !1492
  call void @chacha20_encrypt_block(i32* %0, i8* %11, i32 %3, i8* %12), !dbg !1493, !psr.id !1494
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !1495, !psr.id !1496
  %14 = zext i32 %1 to i64, !dbg !1497, !psr.id !1498
  %15 = mul i64 %14, 1, !dbg !1499, !psr.id !1500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 16 %13, i64 %15, i1 false), !dbg !1495, !psr.id !1501
  ret void, !dbg !1502, !psr.id !1503
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @chacha20_core(i32* %0, i32* %1, i32 %2) #0 !dbg !1504 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1507, metadata !DIExpression()), !dbg !1508, !psr.id !1509
  call void @llvm.dbg.value(metadata i32* %1, metadata !1510, metadata !DIExpression()), !dbg !1508, !psr.id !1511
  call void @llvm.dbg.value(metadata i32 %2, metadata !1512, metadata !DIExpression()), !dbg !1508, !psr.id !1513
  %4 = bitcast i32* %0 to i8*, !dbg !1514, !psr.id !1515
  %5 = bitcast i32* %1 to i8*, !dbg !1514, !psr.id !1516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 64, i1 false), !dbg !1514, !psr.id !1517
  call void @llvm.dbg.value(metadata i32 %2, metadata !1518, metadata !DIExpression()), !dbg !1508, !psr.id !1519
  %6 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !1520, !psr.id !1521
  %7 = load i32, i32* %6, align 4, !dbg !1520, !psr.id !1522
  %8 = add i32 %7, %2, !dbg !1523, !psr.id !1524
  %9 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !1525, !psr.id !1526
  store i32 %8, i32* %9, align 4, !dbg !1527, !psr.id !1528
  call void @rounds(i32* %0), !dbg !1529, !psr.id !1530
  br label %10, !dbg !1531, !psr.id !1532

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1536
  call void @llvm.dbg.value(metadata i32* %0, metadata !1537, metadata !DIExpression()), !dbg !1539, !psr.id !1540
  %11 = zext i32 0 to i64, !dbg !1541, !psr.id !1542
  %12 = getelementptr inbounds i32, i32* %0, i64 %11, !dbg !1541, !psr.id !1543
  %13 = load i32, i32* %12, align 4, !dbg !1541, !psr.id !1544
  %14 = zext i32 0 to i64, !dbg !1541, !psr.id !1545
  %15 = getelementptr inbounds i32, i32* %1, i64 %14, !dbg !1541, !psr.id !1546
  %16 = load i32, i32* %15, align 4, !dbg !1541, !psr.id !1547
  %17 = add i32 %13, %16, !dbg !1541, !psr.id !1548
  call void @llvm.dbg.value(metadata i32 %17, metadata !1549, metadata !DIExpression()), !dbg !1539, !psr.id !1550
  %18 = zext i32 0 to i64, !dbg !1541, !psr.id !1551
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !1541, !psr.id !1552
  store i32 %17, i32* %19, align 4, !dbg !1541, !psr.id !1553
  %20 = add i32 0, 1, !dbg !1541, !psr.id !1554
  call void @llvm.dbg.value(metadata i32 %20, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1555
  call void @llvm.dbg.value(metadata i32* %0, metadata !1556, metadata !DIExpression()), !dbg !1558, !psr.id !1559
  %21 = zext i32 %20 to i64, !dbg !1560, !psr.id !1561
  %22 = getelementptr inbounds i32, i32* %0, i64 %21, !dbg !1560, !psr.id !1562
  %23 = load i32, i32* %22, align 4, !dbg !1560, !psr.id !1563
  %24 = zext i32 %20 to i64, !dbg !1560, !psr.id !1564
  %25 = getelementptr inbounds i32, i32* %1, i64 %24, !dbg !1560, !psr.id !1565
  %26 = load i32, i32* %25, align 4, !dbg !1560, !psr.id !1566
  %27 = add i32 %23, %26, !dbg !1560, !psr.id !1567
  call void @llvm.dbg.value(metadata i32 %27, metadata !1568, metadata !DIExpression()), !dbg !1558, !psr.id !1569
  %28 = zext i32 %20 to i64, !dbg !1560, !psr.id !1570
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !1560, !psr.id !1571
  store i32 %27, i32* %29, align 4, !dbg !1560, !psr.id !1572
  %30 = add i32 %20, 1, !dbg !1560, !psr.id !1573
  call void @llvm.dbg.value(metadata i32 %30, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1574
  call void @llvm.dbg.value(metadata i32* %0, metadata !1575, metadata !DIExpression()), !dbg !1577, !psr.id !1578
  %31 = zext i32 %30 to i64, !dbg !1579, !psr.id !1580
  %32 = getelementptr inbounds i32, i32* %0, i64 %31, !dbg !1579, !psr.id !1581
  %33 = load i32, i32* %32, align 4, !dbg !1579, !psr.id !1582
  %34 = zext i32 %30 to i64, !dbg !1579, !psr.id !1583
  %35 = getelementptr inbounds i32, i32* %1, i64 %34, !dbg !1579, !psr.id !1584
  %36 = load i32, i32* %35, align 4, !dbg !1579, !psr.id !1585
  %37 = add i32 %33, %36, !dbg !1579, !psr.id !1586
  call void @llvm.dbg.value(metadata i32 %37, metadata !1587, metadata !DIExpression()), !dbg !1577, !psr.id !1588
  %38 = zext i32 %30 to i64, !dbg !1579, !psr.id !1589
  %39 = getelementptr inbounds i32, i32* %0, i64 %38, !dbg !1579, !psr.id !1590
  store i32 %37, i32* %39, align 4, !dbg !1579, !psr.id !1591
  %40 = add i32 %30, 1, !dbg !1579, !psr.id !1592
  call void @llvm.dbg.value(metadata i32 %40, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1593
  call void @llvm.dbg.value(metadata i32* %0, metadata !1594, metadata !DIExpression()), !dbg !1596, !psr.id !1597
  %41 = zext i32 %40 to i64, !dbg !1598, !psr.id !1599
  %42 = getelementptr inbounds i32, i32* %0, i64 %41, !dbg !1598, !psr.id !1600
  %43 = load i32, i32* %42, align 4, !dbg !1598, !psr.id !1601
  %44 = zext i32 %40 to i64, !dbg !1598, !psr.id !1602
  %45 = getelementptr inbounds i32, i32* %1, i64 %44, !dbg !1598, !psr.id !1603
  %46 = load i32, i32* %45, align 4, !dbg !1598, !psr.id !1604
  %47 = add i32 %43, %46, !dbg !1598, !psr.id !1605
  call void @llvm.dbg.value(metadata i32 %47, metadata !1606, metadata !DIExpression()), !dbg !1596, !psr.id !1607
  %48 = zext i32 %40 to i64, !dbg !1598, !psr.id !1608
  %49 = getelementptr inbounds i32, i32* %0, i64 %48, !dbg !1598, !psr.id !1609
  store i32 %47, i32* %49, align 4, !dbg !1598, !psr.id !1610
  %50 = add i32 %40, 1, !dbg !1598, !psr.id !1611
  call void @llvm.dbg.value(metadata i32 %50, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1612
  call void @llvm.dbg.value(metadata i32* %0, metadata !1613, metadata !DIExpression()), !dbg !1615, !psr.id !1616
  %51 = zext i32 %50 to i64, !dbg !1617, !psr.id !1618
  %52 = getelementptr inbounds i32, i32* %0, i64 %51, !dbg !1617, !psr.id !1619
  %53 = load i32, i32* %52, align 4, !dbg !1617, !psr.id !1620
  %54 = zext i32 %50 to i64, !dbg !1617, !psr.id !1621
  %55 = getelementptr inbounds i32, i32* %1, i64 %54, !dbg !1617, !psr.id !1622
  %56 = load i32, i32* %55, align 4, !dbg !1617, !psr.id !1623
  %57 = add i32 %53, %56, !dbg !1617, !psr.id !1624
  call void @llvm.dbg.value(metadata i32 %57, metadata !1625, metadata !DIExpression()), !dbg !1615, !psr.id !1626
  %58 = zext i32 %50 to i64, !dbg !1617, !psr.id !1627
  %59 = getelementptr inbounds i32, i32* %0, i64 %58, !dbg !1617, !psr.id !1628
  store i32 %57, i32* %59, align 4, !dbg !1617, !psr.id !1629
  %60 = add i32 %50, 1, !dbg !1617, !psr.id !1630
  call void @llvm.dbg.value(metadata i32 %60, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1631
  call void @llvm.dbg.value(metadata i32* %0, metadata !1632, metadata !DIExpression()), !dbg !1634, !psr.id !1635
  %61 = zext i32 %60 to i64, !dbg !1636, !psr.id !1637
  %62 = getelementptr inbounds i32, i32* %0, i64 %61, !dbg !1636, !psr.id !1638
  %63 = load i32, i32* %62, align 4, !dbg !1636, !psr.id !1639
  %64 = zext i32 %60 to i64, !dbg !1636, !psr.id !1640
  %65 = getelementptr inbounds i32, i32* %1, i64 %64, !dbg !1636, !psr.id !1641
  %66 = load i32, i32* %65, align 4, !dbg !1636, !psr.id !1642
  %67 = add i32 %63, %66, !dbg !1636, !psr.id !1643
  call void @llvm.dbg.value(metadata i32 %67, metadata !1644, metadata !DIExpression()), !dbg !1634, !psr.id !1645
  %68 = zext i32 %60 to i64, !dbg !1636, !psr.id !1646
  %69 = getelementptr inbounds i32, i32* %0, i64 %68, !dbg !1636, !psr.id !1647
  store i32 %67, i32* %69, align 4, !dbg !1636, !psr.id !1648
  %70 = add i32 %60, 1, !dbg !1636, !psr.id !1649
  call void @llvm.dbg.value(metadata i32 %70, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1650
  call void @llvm.dbg.value(metadata i32* %0, metadata !1651, metadata !DIExpression()), !dbg !1653, !psr.id !1654
  %71 = zext i32 %70 to i64, !dbg !1655, !psr.id !1656
  %72 = getelementptr inbounds i32, i32* %0, i64 %71, !dbg !1655, !psr.id !1657
  %73 = load i32, i32* %72, align 4, !dbg !1655, !psr.id !1658
  %74 = zext i32 %70 to i64, !dbg !1655, !psr.id !1659
  %75 = getelementptr inbounds i32, i32* %1, i64 %74, !dbg !1655, !psr.id !1660
  %76 = load i32, i32* %75, align 4, !dbg !1655, !psr.id !1661
  %77 = add i32 %73, %76, !dbg !1655, !psr.id !1662
  call void @llvm.dbg.value(metadata i32 %77, metadata !1663, metadata !DIExpression()), !dbg !1653, !psr.id !1664
  %78 = zext i32 %70 to i64, !dbg !1655, !psr.id !1665
  %79 = getelementptr inbounds i32, i32* %0, i64 %78, !dbg !1655, !psr.id !1666
  store i32 %77, i32* %79, align 4, !dbg !1655, !psr.id !1667
  %80 = add i32 %70, 1, !dbg !1655, !psr.id !1668
  call void @llvm.dbg.value(metadata i32 %80, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1669
  call void @llvm.dbg.value(metadata i32* %0, metadata !1670, metadata !DIExpression()), !dbg !1672, !psr.id !1673
  %81 = zext i32 %80 to i64, !dbg !1674, !psr.id !1675
  %82 = getelementptr inbounds i32, i32* %0, i64 %81, !dbg !1674, !psr.id !1676
  %83 = load i32, i32* %82, align 4, !dbg !1674, !psr.id !1677
  %84 = zext i32 %80 to i64, !dbg !1674, !psr.id !1678
  %85 = getelementptr inbounds i32, i32* %1, i64 %84, !dbg !1674, !psr.id !1679
  %86 = load i32, i32* %85, align 4, !dbg !1674, !psr.id !1680
  %87 = add i32 %83, %86, !dbg !1674, !psr.id !1681
  call void @llvm.dbg.value(metadata i32 %87, metadata !1682, metadata !DIExpression()), !dbg !1672, !psr.id !1683
  %88 = zext i32 %80 to i64, !dbg !1674, !psr.id !1684
  %89 = getelementptr inbounds i32, i32* %0, i64 %88, !dbg !1674, !psr.id !1685
  store i32 %87, i32* %89, align 4, !dbg !1674, !psr.id !1686
  %90 = add i32 %80, 1, !dbg !1674, !psr.id !1687
  call void @llvm.dbg.value(metadata i32 %90, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1688
  call void @llvm.dbg.value(metadata i32* %0, metadata !1689, metadata !DIExpression()), !dbg !1691, !psr.id !1692
  %91 = zext i32 %90 to i64, !dbg !1693, !psr.id !1694
  %92 = getelementptr inbounds i32, i32* %0, i64 %91, !dbg !1693, !psr.id !1695
  %93 = load i32, i32* %92, align 4, !dbg !1693, !psr.id !1696
  %94 = zext i32 %90 to i64, !dbg !1693, !psr.id !1697
  %95 = getelementptr inbounds i32, i32* %1, i64 %94, !dbg !1693, !psr.id !1698
  %96 = load i32, i32* %95, align 4, !dbg !1693, !psr.id !1699
  %97 = add i32 %93, %96, !dbg !1693, !psr.id !1700
  call void @llvm.dbg.value(metadata i32 %97, metadata !1701, metadata !DIExpression()), !dbg !1691, !psr.id !1702
  %98 = zext i32 %90 to i64, !dbg !1693, !psr.id !1703
  %99 = getelementptr inbounds i32, i32* %0, i64 %98, !dbg !1693, !psr.id !1704
  store i32 %97, i32* %99, align 4, !dbg !1693, !psr.id !1705
  %100 = add i32 %90, 1, !dbg !1693, !psr.id !1706
  call void @llvm.dbg.value(metadata i32 %100, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1707
  call void @llvm.dbg.value(metadata i32* %0, metadata !1708, metadata !DIExpression()), !dbg !1710, !psr.id !1711
  %101 = zext i32 %100 to i64, !dbg !1712, !psr.id !1713
  %102 = getelementptr inbounds i32, i32* %0, i64 %101, !dbg !1712, !psr.id !1714
  %103 = load i32, i32* %102, align 4, !dbg !1712, !psr.id !1715
  %104 = zext i32 %100 to i64, !dbg !1712, !psr.id !1716
  %105 = getelementptr inbounds i32, i32* %1, i64 %104, !dbg !1712, !psr.id !1717
  %106 = load i32, i32* %105, align 4, !dbg !1712, !psr.id !1718
  %107 = add i32 %103, %106, !dbg !1712, !psr.id !1719
  call void @llvm.dbg.value(metadata i32 %107, metadata !1720, metadata !DIExpression()), !dbg !1710, !psr.id !1721
  %108 = zext i32 %100 to i64, !dbg !1712, !psr.id !1722
  %109 = getelementptr inbounds i32, i32* %0, i64 %108, !dbg !1712, !psr.id !1723
  store i32 %107, i32* %109, align 4, !dbg !1712, !psr.id !1724
  %110 = add i32 %100, 1, !dbg !1712, !psr.id !1725
  call void @llvm.dbg.value(metadata i32 %110, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1726
  call void @llvm.dbg.value(metadata i32* %0, metadata !1727, metadata !DIExpression()), !dbg !1729, !psr.id !1730
  %111 = zext i32 %110 to i64, !dbg !1731, !psr.id !1732
  %112 = getelementptr inbounds i32, i32* %0, i64 %111, !dbg !1731, !psr.id !1733
  %113 = load i32, i32* %112, align 4, !dbg !1731, !psr.id !1734
  %114 = zext i32 %110 to i64, !dbg !1731, !psr.id !1735
  %115 = getelementptr inbounds i32, i32* %1, i64 %114, !dbg !1731, !psr.id !1736
  %116 = load i32, i32* %115, align 4, !dbg !1731, !psr.id !1737
  %117 = add i32 %113, %116, !dbg !1731, !psr.id !1738
  call void @llvm.dbg.value(metadata i32 %117, metadata !1739, metadata !DIExpression()), !dbg !1729, !psr.id !1740
  %118 = zext i32 %110 to i64, !dbg !1731, !psr.id !1741
  %119 = getelementptr inbounds i32, i32* %0, i64 %118, !dbg !1731, !psr.id !1742
  store i32 %117, i32* %119, align 4, !dbg !1731, !psr.id !1743
  %120 = add i32 %110, 1, !dbg !1731, !psr.id !1744
  call void @llvm.dbg.value(metadata i32 %120, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1745
  call void @llvm.dbg.value(metadata i32* %0, metadata !1746, metadata !DIExpression()), !dbg !1748, !psr.id !1749
  %121 = zext i32 %120 to i64, !dbg !1750, !psr.id !1751
  %122 = getelementptr inbounds i32, i32* %0, i64 %121, !dbg !1750, !psr.id !1752
  %123 = load i32, i32* %122, align 4, !dbg !1750, !psr.id !1753
  %124 = zext i32 %120 to i64, !dbg !1750, !psr.id !1754
  %125 = getelementptr inbounds i32, i32* %1, i64 %124, !dbg !1750, !psr.id !1755
  %126 = load i32, i32* %125, align 4, !dbg !1750, !psr.id !1756
  %127 = add i32 %123, %126, !dbg !1750, !psr.id !1757
  call void @llvm.dbg.value(metadata i32 %127, metadata !1758, metadata !DIExpression()), !dbg !1748, !psr.id !1759
  %128 = zext i32 %120 to i64, !dbg !1750, !psr.id !1760
  %129 = getelementptr inbounds i32, i32* %0, i64 %128, !dbg !1750, !psr.id !1761
  store i32 %127, i32* %129, align 4, !dbg !1750, !psr.id !1762
  %130 = add i32 %120, 1, !dbg !1750, !psr.id !1763
  call void @llvm.dbg.value(metadata i32 %130, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1764
  call void @llvm.dbg.value(metadata i32* %0, metadata !1765, metadata !DIExpression()), !dbg !1767, !psr.id !1768
  %131 = zext i32 %130 to i64, !dbg !1769, !psr.id !1770
  %132 = getelementptr inbounds i32, i32* %0, i64 %131, !dbg !1769, !psr.id !1771
  %133 = load i32, i32* %132, align 4, !dbg !1769, !psr.id !1772
  %134 = zext i32 %130 to i64, !dbg !1769, !psr.id !1773
  %135 = getelementptr inbounds i32, i32* %1, i64 %134, !dbg !1769, !psr.id !1774
  %136 = load i32, i32* %135, align 4, !dbg !1769, !psr.id !1775
  %137 = add i32 %133, %136, !dbg !1769, !psr.id !1776
  call void @llvm.dbg.value(metadata i32 %137, metadata !1777, metadata !DIExpression()), !dbg !1767, !psr.id !1778
  %138 = zext i32 %130 to i64, !dbg !1769, !psr.id !1779
  %139 = getelementptr inbounds i32, i32* %0, i64 %138, !dbg !1769, !psr.id !1780
  store i32 %137, i32* %139, align 4, !dbg !1769, !psr.id !1781
  %140 = add i32 %130, 1, !dbg !1769, !psr.id !1782
  call void @llvm.dbg.value(metadata i32 %140, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1783
  call void @llvm.dbg.value(metadata i32* %0, metadata !1784, metadata !DIExpression()), !dbg !1786, !psr.id !1787
  %141 = zext i32 %140 to i64, !dbg !1788, !psr.id !1789
  %142 = getelementptr inbounds i32, i32* %0, i64 %141, !dbg !1788, !psr.id !1790
  %143 = load i32, i32* %142, align 4, !dbg !1788, !psr.id !1791
  %144 = zext i32 %140 to i64, !dbg !1788, !psr.id !1792
  %145 = getelementptr inbounds i32, i32* %1, i64 %144, !dbg !1788, !psr.id !1793
  %146 = load i32, i32* %145, align 4, !dbg !1788, !psr.id !1794
  %147 = add i32 %143, %146, !dbg !1788, !psr.id !1795
  call void @llvm.dbg.value(metadata i32 %147, metadata !1796, metadata !DIExpression()), !dbg !1786, !psr.id !1797
  %148 = zext i32 %140 to i64, !dbg !1788, !psr.id !1798
  %149 = getelementptr inbounds i32, i32* %0, i64 %148, !dbg !1788, !psr.id !1799
  store i32 %147, i32* %149, align 4, !dbg !1788, !psr.id !1800
  %150 = add i32 %140, 1, !dbg !1788, !psr.id !1801
  call void @llvm.dbg.value(metadata i32 %150, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1802
  call void @llvm.dbg.value(metadata i32* %0, metadata !1803, metadata !DIExpression()), !dbg !1805, !psr.id !1806
  %151 = zext i32 %150 to i64, !dbg !1807, !psr.id !1808
  %152 = getelementptr inbounds i32, i32* %0, i64 %151, !dbg !1807, !psr.id !1809
  %153 = load i32, i32* %152, align 4, !dbg !1807, !psr.id !1810
  %154 = zext i32 %150 to i64, !dbg !1807, !psr.id !1811
  %155 = getelementptr inbounds i32, i32* %1, i64 %154, !dbg !1807, !psr.id !1812
  %156 = load i32, i32* %155, align 4, !dbg !1807, !psr.id !1813
  %157 = add i32 %153, %156, !dbg !1807, !psr.id !1814
  call void @llvm.dbg.value(metadata i32 %157, metadata !1815, metadata !DIExpression()), !dbg !1805, !psr.id !1816
  %158 = zext i32 %150 to i64, !dbg !1807, !psr.id !1817
  %159 = getelementptr inbounds i32, i32* %0, i64 %158, !dbg !1807, !psr.id !1818
  store i32 %157, i32* %159, align 4, !dbg !1807, !psr.id !1819
  %160 = add i32 %150, 1, !dbg !1807, !psr.id !1820
  call void @llvm.dbg.value(metadata i32 %160, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1821
  call void @llvm.dbg.value(metadata i32* %0, metadata !1822, metadata !DIExpression()), !dbg !1824, !psr.id !1825
  %161 = zext i32 %160 to i64, !dbg !1826, !psr.id !1827
  %162 = getelementptr inbounds i32, i32* %0, i64 %161, !dbg !1826, !psr.id !1828
  %163 = load i32, i32* %162, align 4, !dbg !1826, !psr.id !1829
  %164 = zext i32 %160 to i64, !dbg !1826, !psr.id !1830
  %165 = getelementptr inbounds i32, i32* %1, i64 %164, !dbg !1826, !psr.id !1831
  %166 = load i32, i32* %165, align 4, !dbg !1826, !psr.id !1832
  %167 = add i32 %163, %166, !dbg !1826, !psr.id !1833
  call void @llvm.dbg.value(metadata i32 %167, metadata !1834, metadata !DIExpression()), !dbg !1824, !psr.id !1835
  %168 = zext i32 %160 to i64, !dbg !1826, !psr.id !1836
  %169 = getelementptr inbounds i32, i32* %0, i64 %168, !dbg !1826, !psr.id !1837
  store i32 %167, i32* %169, align 4, !dbg !1826, !psr.id !1838
  %170 = add i32 %160, 1, !dbg !1826, !psr.id !1839
  call void @llvm.dbg.value(metadata i32 %170, metadata !1533, metadata !DIExpression()), !dbg !1535, !psr.id !1840
  br label %171, !dbg !1841, !psr.id !1842

171:                                              ; preds = %10
  %172 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !1843, !psr.id !1844
  %173 = load i32, i32* %172, align 4, !dbg !1843, !psr.id !1845
  %174 = add i32 %173, %2, !dbg !1846, !psr.id !1847
  %175 = getelementptr inbounds i32, i32* %0, i64 12, !dbg !1848, !psr.id !1849
  store i32 %174, i32* %175, align 4, !dbg !1850, !psr.id !1851
  ret void, !dbg !1852, !psr.id !1853
}

; Function Attrs: noinline nounwind uwtable
define internal void @store32(i8* %0, i32 %1) #0 !dbg !1854 {
  %3 = alloca i32, align 4, !psr.id !1857
  call void @llvm.dbg.value(metadata i8* %0, metadata !1858, metadata !DIExpression()), !dbg !1859, !psr.id !1860
  store i32 %1, i32* %3, align 4, !psr.id !1861
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1862, metadata !DIExpression()), !dbg !1863, !psr.id !1864
  %4 = bitcast i32* %3 to i8*, !dbg !1865, !psr.id !1866
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 4 %4, i64 4, i1 false), !dbg !1865, !psr.id !1867
  ret void, !dbg !1868, !psr.id !1869
}

; Function Attrs: noinline nounwind uwtable
define internal void @rounds(i32* %0) #0 !dbg !1870 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1873, metadata !DIExpression()), !dbg !1874, !psr.id !1875
  call void @double_round(i32* %0), !dbg !1876, !psr.id !1877
  call void @double_round(i32* %0), !dbg !1878, !psr.id !1879
  call void @double_round(i32* %0), !dbg !1880, !psr.id !1881
  call void @double_round(i32* %0), !dbg !1882, !psr.id !1883
  call void @double_round(i32* %0), !dbg !1884, !psr.id !1885
  call void @double_round(i32* %0), !dbg !1886, !psr.id !1887
  call void @double_round(i32* %0), !dbg !1888, !psr.id !1889
  call void @double_round(i32* %0), !dbg !1890, !psr.id !1891
  call void @double_round(i32* %0), !dbg !1892, !psr.id !1893
  call void @double_round(i32* %0), !dbg !1894, !psr.id !1895
  ret void, !dbg !1896, !psr.id !1897
}

; Function Attrs: noinline nounwind uwtable
define internal void @double_round(i32* %0) #0 !dbg !1898 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1899, metadata !DIExpression()), !dbg !1900, !psr.id !1901
  call void @quarter_round(i32* %0, i32 0, i32 4, i32 8, i32 12), !dbg !1902, !psr.id !1903
  call void @quarter_round(i32* %0, i32 1, i32 5, i32 9, i32 13), !dbg !1904, !psr.id !1905
  call void @quarter_round(i32* %0, i32 2, i32 6, i32 10, i32 14), !dbg !1906, !psr.id !1907
  call void @quarter_round(i32* %0, i32 3, i32 7, i32 11, i32 15), !dbg !1908, !psr.id !1909
  call void @quarter_round(i32* %0, i32 0, i32 5, i32 10, i32 15), !dbg !1910, !psr.id !1911
  call void @quarter_round(i32* %0, i32 1, i32 6, i32 11, i32 12), !dbg !1912, !psr.id !1913
  call void @quarter_round(i32* %0, i32 2, i32 7, i32 8, i32 13), !dbg !1914, !psr.id !1915
  call void @quarter_round(i32* %0, i32 3, i32 4, i32 9, i32 14), !dbg !1916, !psr.id !1917
  ret void, !dbg !1918, !psr.id !1919
}

; Function Attrs: noinline nounwind uwtable
define internal void @quarter_round(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 !dbg !1920 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1923, metadata !DIExpression()), !dbg !1924, !psr.id !1925
  call void @llvm.dbg.value(metadata i32 %1, metadata !1926, metadata !DIExpression()), !dbg !1924, !psr.id !1927
  call void @llvm.dbg.value(metadata i32 %2, metadata !1928, metadata !DIExpression()), !dbg !1924, !psr.id !1929
  call void @llvm.dbg.value(metadata i32 %3, metadata !1930, metadata !DIExpression()), !dbg !1924, !psr.id !1931
  call void @llvm.dbg.value(metadata i32 %4, metadata !1932, metadata !DIExpression()), !dbg !1924, !psr.id !1933
  %6 = zext i32 %1 to i64, !dbg !1934, !psr.id !1935
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !1934, !psr.id !1936
  %8 = load i32, i32* %7, align 4, !dbg !1934, !psr.id !1937
  call void @llvm.dbg.value(metadata i32 %8, metadata !1938, metadata !DIExpression()), !dbg !1924, !psr.id !1939
  %9 = zext i32 %2 to i64, !dbg !1940, !psr.id !1941
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !1940, !psr.id !1942
  %11 = load i32, i32* %10, align 4, !dbg !1940, !psr.id !1943
  call void @llvm.dbg.value(metadata i32 %11, metadata !1944, metadata !DIExpression()), !dbg !1924, !psr.id !1945
  %12 = zext i32 %4 to i64, !dbg !1946, !psr.id !1947
  %13 = getelementptr inbounds i32, i32* %0, i64 %12, !dbg !1946, !psr.id !1948
  %14 = load i32, i32* %13, align 4, !dbg !1946, !psr.id !1949
  call void @llvm.dbg.value(metadata i32 %14, metadata !1950, metadata !DIExpression()), !dbg !1924, !psr.id !1951
  %15 = add i32 %8, %11, !dbg !1952, !psr.id !1953
  call void @llvm.dbg.value(metadata i32 %15, metadata !1954, metadata !DIExpression()), !dbg !1924, !psr.id !1955
  %16 = xor i32 %14, %15, !dbg !1956, !psr.id !1957
  call void @llvm.dbg.value(metadata i32 %16, metadata !1958, metadata !DIExpression()), !dbg !1924, !psr.id !1959
  %17 = shl i32 %16, 16, !dbg !1960, !psr.id !1961
  %18 = lshr i32 %16, 16, !dbg !1962, !psr.id !1963
  %19 = or i32 %17, %18, !dbg !1964, !psr.id !1965
  call void @llvm.dbg.value(metadata i32 %19, metadata !1966, metadata !DIExpression()), !dbg !1924, !psr.id !1967
  %20 = zext i32 %1 to i64, !dbg !1968, !psr.id !1969
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !1968, !psr.id !1970
  store i32 %15, i32* %21, align 4, !dbg !1971, !psr.id !1972
  %22 = zext i32 %4 to i64, !dbg !1973, !psr.id !1974
  %23 = getelementptr inbounds i32, i32* %0, i64 %22, !dbg !1973, !psr.id !1975
  store i32 %19, i32* %23, align 4, !dbg !1976, !psr.id !1977
  %24 = zext i32 %3 to i64, !dbg !1978, !psr.id !1979
  %25 = getelementptr inbounds i32, i32* %0, i64 %24, !dbg !1978, !psr.id !1980
  %26 = load i32, i32* %25, align 4, !dbg !1978, !psr.id !1981
  call void @llvm.dbg.value(metadata i32 %26, metadata !1982, metadata !DIExpression()), !dbg !1924, !psr.id !1983
  %27 = zext i32 %4 to i64, !dbg !1984, !psr.id !1985
  %28 = getelementptr inbounds i32, i32* %0, i64 %27, !dbg !1984, !psr.id !1986
  %29 = load i32, i32* %28, align 4, !dbg !1984, !psr.id !1987
  call void @llvm.dbg.value(metadata i32 %29, metadata !1988, metadata !DIExpression()), !dbg !1924, !psr.id !1989
  %30 = zext i32 %2 to i64, !dbg !1990, !psr.id !1991
  %31 = getelementptr inbounds i32, i32* %0, i64 %30, !dbg !1990, !psr.id !1992
  %32 = load i32, i32* %31, align 4, !dbg !1990, !psr.id !1993
  call void @llvm.dbg.value(metadata i32 %32, metadata !1994, metadata !DIExpression()), !dbg !1924, !psr.id !1995
  %33 = add i32 %26, %29, !dbg !1996, !psr.id !1997
  call void @llvm.dbg.value(metadata i32 %33, metadata !1998, metadata !DIExpression()), !dbg !1924, !psr.id !1999
  %34 = xor i32 %32, %33, !dbg !2000, !psr.id !2001
  call void @llvm.dbg.value(metadata i32 %34, metadata !2002, metadata !DIExpression()), !dbg !1924, !psr.id !2003
  %35 = shl i32 %34, 12, !dbg !2004, !psr.id !2005
  %36 = lshr i32 %34, 20, !dbg !2006, !psr.id !2007
  %37 = or i32 %35, %36, !dbg !2008, !psr.id !2009
  call void @llvm.dbg.value(metadata i32 %37, metadata !2010, metadata !DIExpression()), !dbg !1924, !psr.id !2011
  %38 = zext i32 %3 to i64, !dbg !2012, !psr.id !2013
  %39 = getelementptr inbounds i32, i32* %0, i64 %38, !dbg !2012, !psr.id !2014
  store i32 %33, i32* %39, align 4, !dbg !2015, !psr.id !2016
  %40 = zext i32 %2 to i64, !dbg !2017, !psr.id !2018
  %41 = getelementptr inbounds i32, i32* %0, i64 %40, !dbg !2017, !psr.id !2019
  store i32 %37, i32* %41, align 4, !dbg !2020, !psr.id !2021
  %42 = zext i32 %1 to i64, !dbg !2022, !psr.id !2023
  %43 = getelementptr inbounds i32, i32* %0, i64 %42, !dbg !2022, !psr.id !2024
  %44 = load i32, i32* %43, align 4, !dbg !2022, !psr.id !2025
  call void @llvm.dbg.value(metadata i32 %44, metadata !2026, metadata !DIExpression()), !dbg !1924, !psr.id !2027
  %45 = zext i32 %2 to i64, !dbg !2028, !psr.id !2029
  %46 = getelementptr inbounds i32, i32* %0, i64 %45, !dbg !2028, !psr.id !2030
  %47 = load i32, i32* %46, align 4, !dbg !2028, !psr.id !2031
  call void @llvm.dbg.value(metadata i32 %47, metadata !2032, metadata !DIExpression()), !dbg !1924, !psr.id !2033
  %48 = zext i32 %4 to i64, !dbg !2034, !psr.id !2035
  %49 = getelementptr inbounds i32, i32* %0, i64 %48, !dbg !2034, !psr.id !2036
  %50 = load i32, i32* %49, align 4, !dbg !2034, !psr.id !2037
  call void @llvm.dbg.value(metadata i32 %50, metadata !2038, metadata !DIExpression()), !dbg !1924, !psr.id !2039
  %51 = add i32 %44, %47, !dbg !2040, !psr.id !2041
  call void @llvm.dbg.value(metadata i32 %51, metadata !2042, metadata !DIExpression()), !dbg !1924, !psr.id !2043
  %52 = xor i32 %50, %51, !dbg !2044, !psr.id !2045
  call void @llvm.dbg.value(metadata i32 %52, metadata !2046, metadata !DIExpression()), !dbg !1924, !psr.id !2047
  %53 = shl i32 %52, 8, !dbg !2048, !psr.id !2049
  %54 = lshr i32 %52, 24, !dbg !2050, !psr.id !2051
  %55 = or i32 %53, %54, !dbg !2052, !psr.id !2053
  call void @llvm.dbg.value(metadata i32 %55, metadata !2054, metadata !DIExpression()), !dbg !1924, !psr.id !2055
  %56 = zext i32 %1 to i64, !dbg !2056, !psr.id !2057
  %57 = getelementptr inbounds i32, i32* %0, i64 %56, !dbg !2056, !psr.id !2058
  store i32 %51, i32* %57, align 4, !dbg !2059, !psr.id !2060
  %58 = zext i32 %4 to i64, !dbg !2061, !psr.id !2062
  %59 = getelementptr inbounds i32, i32* %0, i64 %58, !dbg !2061, !psr.id !2063
  store i32 %55, i32* %59, align 4, !dbg !2064, !psr.id !2065
  %60 = zext i32 %3 to i64, !dbg !2066, !psr.id !2067
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !2066, !psr.id !2068
  %62 = load i32, i32* %61, align 4, !dbg !2066, !psr.id !2069
  call void @llvm.dbg.value(metadata i32 %62, metadata !2070, metadata !DIExpression()), !dbg !1924, !psr.id !2071
  %63 = zext i32 %4 to i64, !dbg !2072, !psr.id !2073
  %64 = getelementptr inbounds i32, i32* %0, i64 %63, !dbg !2072, !psr.id !2074
  %65 = load i32, i32* %64, align 4, !dbg !2072, !psr.id !2075
  call void @llvm.dbg.value(metadata i32 %65, metadata !2076, metadata !DIExpression()), !dbg !1924, !psr.id !2077
  %66 = zext i32 %2 to i64, !dbg !2078, !psr.id !2079
  %67 = getelementptr inbounds i32, i32* %0, i64 %66, !dbg !2078, !psr.id !2080
  %68 = load i32, i32* %67, align 4, !dbg !2078, !psr.id !2081
  call void @llvm.dbg.value(metadata i32 %68, metadata !2082, metadata !DIExpression()), !dbg !1924, !psr.id !2083
  %69 = add i32 %62, %65, !dbg !2084, !psr.id !2085
  call void @llvm.dbg.value(metadata i32 %69, metadata !2086, metadata !DIExpression()), !dbg !1924, !psr.id !2087
  %70 = xor i32 %68, %69, !dbg !2088, !psr.id !2089
  call void @llvm.dbg.value(metadata i32 %70, metadata !2090, metadata !DIExpression()), !dbg !1924, !psr.id !2091
  %71 = shl i32 %70, 7, !dbg !2092, !psr.id !2093
  %72 = lshr i32 %70, 25, !dbg !2094, !psr.id !2095
  %73 = or i32 %71, %72, !dbg !2096, !psr.id !2097
  call void @llvm.dbg.value(metadata i32 %73, metadata !2098, metadata !DIExpression()), !dbg !1924, !psr.id !2099
  %74 = zext i32 %3 to i64, !dbg !2100, !psr.id !2101
  %75 = getelementptr inbounds i32, i32* %0, i64 %74, !dbg !2100, !psr.id !2102
  store i32 %69, i32* %75, align 4, !dbg !2103, !psr.id !2104
  %76 = zext i32 %2 to i64, !dbg !2105, !psr.id !2106
  %77 = getelementptr inbounds i32, i32* %0, i64 %76, !dbg !2105, !psr.id !2107
  store i32 %73, i32* %77, align 4, !dbg !2108, !psr.id !2109
  ret void, !dbg !2110, !psr.id !2111
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_encrypt(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 !dbg !2112 {
  %7 = alloca [16 x i32], align 16, !psr.id !2115
  call void @llvm.dbg.value(metadata i32 %0, metadata !2116, metadata !DIExpression()), !dbg !2117, !psr.id !2118
  call void @llvm.dbg.value(metadata i8* %1, metadata !2119, metadata !DIExpression()), !dbg !2117, !psr.id !2120
  call void @llvm.dbg.value(metadata i8* %2, metadata !2121, metadata !DIExpression()), !dbg !2117, !psr.id !2122
  call void @llvm.dbg.value(metadata i8* %3, metadata !2123, metadata !DIExpression()), !dbg !2117, !psr.id !2124
  call void @llvm.dbg.value(metadata i8* %4, metadata !2125, metadata !DIExpression()), !dbg !2117, !psr.id !2126
  call void @llvm.dbg.value(metadata i32 %5, metadata !2127, metadata !DIExpression()), !dbg !2117, !psr.id !2128
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !2129, metadata !DIExpression()), !dbg !2130, !psr.id !2131
  %8 = bitcast [16 x i32]* %7 to i8*, !dbg !2130, !psr.id !2132
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 64, i1 false), !dbg !2130, !psr.id !2133
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2134, !psr.id !2135
  call void @Hacl_Impl_Chacha20_chacha20_init(i32* %9, i8* %3, i8* %4, i32 %5), !dbg !2136, !psr.id !2137
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2138, !psr.id !2139
  call void @Hacl_Impl_Chacha20_chacha20_update(i32* %10, i32 %0, i8* %1, i8* %2), !dbg !2140, !psr.id !2141
  ret void, !dbg !2142, !psr.id !2143
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_decrypt(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 !dbg !2144 {
  %7 = alloca [16 x i32], align 16, !psr.id !2145
  call void @llvm.dbg.value(metadata i32 %0, metadata !2146, metadata !DIExpression()), !dbg !2147, !psr.id !2148
  call void @llvm.dbg.value(metadata i8* %1, metadata !2149, metadata !DIExpression()), !dbg !2147, !psr.id !2150
  call void @llvm.dbg.value(metadata i8* %2, metadata !2151, metadata !DIExpression()), !dbg !2147, !psr.id !2152
  call void @llvm.dbg.value(metadata i8* %3, metadata !2153, metadata !DIExpression()), !dbg !2147, !psr.id !2154
  call void @llvm.dbg.value(metadata i8* %4, metadata !2155, metadata !DIExpression()), !dbg !2147, !psr.id !2156
  call void @llvm.dbg.value(metadata i32 %5, metadata !2157, metadata !DIExpression()), !dbg !2147, !psr.id !2158
  call void @llvm.dbg.declare(metadata [16 x i32]* %7, metadata !2159, metadata !DIExpression()), !dbg !2160, !psr.id !2161
  %8 = bitcast [16 x i32]* %7 to i8*, !dbg !2160, !psr.id !2162
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 64, i1 false), !dbg !2160, !psr.id !2163
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2164, !psr.id !2165
  call void @Hacl_Impl_Chacha20_chacha20_init(i32* %9, i8* %3, i8* %4, i32 %5), !dbg !2166, !psr.id !2167
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0, !dbg !2168, !psr.id !2169
  call void @Hacl_Impl_Chacha20_chacha20_update(i32* %10, i32 %0, i8* %1, i8* %2), !dbg !2170, !psr.id !2171
  ret void, !dbg !2172, !psr.id !2173
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_encrypt_wrapper(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 !dbg !2174 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2175, metadata !DIExpression()), !dbg !2176, !psr.id !2177
  call void @llvm.dbg.value(metadata i8* %1, metadata !2178, metadata !DIExpression()), !dbg !2176, !psr.id !2179
  call void @llvm.dbg.value(metadata i8* %2, metadata !2180, metadata !DIExpression()), !dbg !2176, !psr.id !2181
  call void @llvm.dbg.value(metadata i8* %3, metadata !2182, metadata !DIExpression()), !dbg !2176, !psr.id !2183
  call void @llvm.dbg.value(metadata i8* %4, metadata !2184, metadata !DIExpression()), !dbg !2176, !psr.id !2185
  call void @llvm.dbg.value(metadata i32 %5, metadata !2186, metadata !DIExpression()), !dbg !2176, !psr.id !2187
  %7 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %0), !dbg !2188, !psr.id !2189
  call void @public_in(%struct.smack_value* %7), !dbg !2190, !psr.id !2191
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !2192, !psr.id !2193
  call void @public_in(%struct.smack_value* %8), !dbg !2194, !psr.id !2195
  %9 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !2196, !psr.id !2197
  call void @public_in(%struct.smack_value* %9), !dbg !2198, !psr.id !2199
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !2200, !psr.id !2201
  call void @public_in(%struct.smack_value* %10), !dbg !2202, !psr.id !2203
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !2204, !psr.id !2205
  call void @public_in(%struct.smack_value* %11), !dbg !2206, !psr.id !2207
  %12 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %5), !dbg !2208, !psr.id !2209
  call void @public_in(%struct.smack_value* %12), !dbg !2210, !psr.id !2211
  %13 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 64), !dbg !2212, !psr.id !2213
  call void @public_in(%struct.smack_value* %13), !dbg !2214, !psr.id !2215
  call void @Hacl_Chacha20_chacha20_encrypt(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5), !dbg !2216, !psr.id !2217
  ret void, !dbg !2218, !psr.id !2219
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Chacha20_chacha20_encrypt_wrapper_t() #0 !dbg !2220 {
  %1 = call i8* (...) @getpt1(), !dbg !2223, !psr.id !2224
  call void @llvm.dbg.value(metadata i8* %1, metadata !2225, metadata !DIExpression()), !dbg !2226, !psr.id !2227
  %2 = call i8* (...) @getpt2(), !dbg !2228, !psr.id !2229
  call void @llvm.dbg.value(metadata i8* %2, metadata !2230, metadata !DIExpression()), !dbg !2226, !psr.id !2231
  %3 = call i8* (...) @getpt3(), !dbg !2232, !psr.id !2233
  call void @llvm.dbg.value(metadata i8* %3, metadata !2234, metadata !DIExpression()), !dbg !2226, !psr.id !2235
  %4 = call i8* (...) @getpt4(), !dbg !2236, !psr.id !2237
  call void @llvm.dbg.value(metadata i8* %4, metadata !2238, metadata !DIExpression()), !dbg !2226, !psr.id !2239
  %5 = call i32 (...) @getnum(), !dbg !2240, !psr.id !2241
  call void @llvm.dbg.value(metadata i32 %5, metadata !2242, metadata !DIExpression()), !dbg !2226, !psr.id !2243
  %6 = call i32 (...) @getnum(), !dbg !2244, !psr.id !2245
  call void @llvm.dbg.value(metadata i32 %6, metadata !2246, metadata !DIExpression()), !dbg !2226, !psr.id !2247
  call void @Hacl_Chacha20_chacha20_encrypt(i32 %5, i8* %1, i8* %2, i8* %3, i8* %4, i32 %6), !dbg !2248, !psr.id !2249
  ret void, !dbg !2250, !psr.id !2251
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
  call void @Hacl_Chacha20_chacha20_encrypt_wrapper_t()
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
!21 = !DIFile(filename: "Hacl_Chacha20_chacha20_encrypt.c", directory: "/home/luwei/bech-back/HACL/ChaCha20")
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
!467 = !DILocation(line: 194, column: 70, scope: !462)
!468 = !{!"262"}
!469 = !DILocation(line: 194, column: 66, scope: !462)
!470 = !{!"263"}
!471 = !{!"264"}
!472 = !DILocation(line: 194, column: 5, scope: !462)
!473 = !{!"265"}
!474 = !DILocation(line: 195, column: 3, scope: !462)
!475 = !{!"266"}
!476 = !DILocation(line: 192, column: 44, scope: !457)
!477 = !{!"267"}
!478 = !{!"268"}
!479 = !DILocation(line: 192, column: 3, scope: !457)
!480 = distinct !{!480, !459, !481, !482}
!481 = !DILocation(line: 195, column: 3, scope: !449)
!482 = !{!"llvm.loop.mustprogress"}
!483 = !{!"269"}
!484 = !DILocation(line: 196, column: 12, scope: !485)
!485 = distinct !DILexicalBlock(scope: !424, file: !3, line: 196, column: 7)
!486 = !{!"270"}
!487 = !DILocation(line: 196, column: 7, scope: !424)
!488 = !{!"271"}
!489 = !DILocation(line: 198, column: 46, scope: !490)
!490 = distinct !DILexicalBlock(scope: !485, file: !3, line: 197, column: 3)
!491 = !{!"272"}
!492 = !DILocation(line: 198, column: 41, scope: !490)
!493 = !{!"273"}
!494 = !{!"274"}
!495 = !DILocation(line: 198, column: 77, scope: !490)
!496 = !{!"275"}
!497 = !DILocation(line: 198, column: 72, scope: !490)
!498 = !{!"276"}
!499 = !{!"277"}
!500 = !DILocation(line: 198, column: 5, scope: !490)
!501 = !{!"278"}
!502 = !DILocation(line: 199, column: 3, scope: !490)
!503 = !{!"279"}
!504 = !DILocation(line: 200, column: 1, scope: !424)
!505 = !{!"280"}
!506 = distinct !DISubprogram(name: "chacha20_encrypt_block", scope: !3, file: !3, line: 148, type: !507, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !29, !30, !6, !30}
!509 = !{!"281"}
!510 = !{!"282"}
!511 = !DILocalVariable(name: "ctx", arg: 1, scope: !506, file: !3, line: 148, type: !29)
!512 = !DILocation(line: 0, scope: !506)
!513 = !{!"283"}
!514 = !DILocalVariable(name: "out", arg: 2, scope: !506, file: !3, line: 148, type: !30)
!515 = !{!"284"}
!516 = !DILocalVariable(name: "incr", arg: 3, scope: !506, file: !3, line: 148, type: !6)
!517 = !{!"285"}
!518 = !DILocalVariable(name: "text", arg: 4, scope: !506, file: !3, line: 148, type: !30)
!519 = !{!"286"}
!520 = !DILocalVariable(name: "k", scope: !506, file: !3, line: 150, type: !521)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 16)
!524 = !DILocation(line: 150, column: 12, scope: !506)
!525 = !{!"287"}
!526 = !{!"288"}
!527 = !{!"289"}
!528 = !DILocation(line: 151, column: 17, scope: !506)
!529 = !{!"290"}
!530 = !DILocation(line: 151, column: 3, scope: !506)
!531 = !{!"291"}
!532 = !DILocalVariable(name: "bl", scope: !506, file: !3, line: 152, type: !521)
!533 = !DILocation(line: 152, column: 12, scope: !506)
!534 = !{!"292"}
!535 = !{!"293"}
!536 = !{!"294"}
!537 = !DILocation(line: 153, column: 3, scope: !506)
!538 = !{!"295"}
!539 = !DILocalVariable(name: "i", scope: !540, file: !3, line: 153, type: !6)
!540 = distinct !DILexicalBlock(scope: !506, file: !3, line: 153, column: 3)
!541 = !DILocation(line: 0, scope: !540)
!542 = !{!"296"}
!543 = !DILocation(line: 153, column: 3, scope: !544)
!544 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!545 = !{!"297"}
!546 = !DILocalVariable(name: "os", scope: !544, file: !3, line: 153, type: !29)
!547 = !DILocation(line: 0, scope: !544)
!548 = !{!"298"}
!549 = !{!"299"}
!550 = !{!"300"}
!551 = !{!"301"}
!552 = !DILocalVariable(name: "bj", scope: !544, file: !3, line: 153, type: !30)
!553 = !{!"302"}
!554 = !{!"303"}
!555 = !{!"304"}
!556 = !DILocalVariable(name: "u", scope: !544, file: !3, line: 153, type: !6)
!557 = !{!"305"}
!558 = !DILocalVariable(name: "r", scope: !544, file: !3, line: 153, type: !6)
!559 = !{!"306"}
!560 = !DILocalVariable(name: "x", scope: !544, file: !3, line: 153, type: !6)
!561 = !{!"307"}
!562 = !{!"308"}
!563 = !{!"309"}
!564 = !{!"310"}
!565 = !{!"311"}
!566 = !{!"312"}
!567 = !DILocation(line: 153, column: 3, scope: !568)
!568 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!569 = !{!"313"}
!570 = !DILocalVariable(name: "os", scope: !568, file: !3, line: 153, type: !29)
!571 = !DILocation(line: 0, scope: !568)
!572 = !{!"314"}
!573 = !{!"315"}
!574 = !{!"316"}
!575 = !{!"317"}
!576 = !DILocalVariable(name: "bj", scope: !568, file: !3, line: 153, type: !30)
!577 = !{!"318"}
!578 = !{!"319"}
!579 = !{!"320"}
!580 = !DILocalVariable(name: "u", scope: !568, file: !3, line: 153, type: !6)
!581 = !{!"321"}
!582 = !DILocalVariable(name: "r", scope: !568, file: !3, line: 153, type: !6)
!583 = !{!"322"}
!584 = !DILocalVariable(name: "x", scope: !568, file: !3, line: 153, type: !6)
!585 = !{!"323"}
!586 = !{!"324"}
!587 = !{!"325"}
!588 = !{!"326"}
!589 = !{!"327"}
!590 = !{!"328"}
!591 = !DILocation(line: 153, column: 3, scope: !592)
!592 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!593 = !{!"329"}
!594 = !DILocalVariable(name: "os", scope: !592, file: !3, line: 153, type: !29)
!595 = !DILocation(line: 0, scope: !592)
!596 = !{!"330"}
!597 = !{!"331"}
!598 = !{!"332"}
!599 = !{!"333"}
!600 = !DILocalVariable(name: "bj", scope: !592, file: !3, line: 153, type: !30)
!601 = !{!"334"}
!602 = !{!"335"}
!603 = !{!"336"}
!604 = !DILocalVariable(name: "u", scope: !592, file: !3, line: 153, type: !6)
!605 = !{!"337"}
!606 = !DILocalVariable(name: "r", scope: !592, file: !3, line: 153, type: !6)
!607 = !{!"338"}
!608 = !DILocalVariable(name: "x", scope: !592, file: !3, line: 153, type: !6)
!609 = !{!"339"}
!610 = !{!"340"}
!611 = !{!"341"}
!612 = !{!"342"}
!613 = !{!"343"}
!614 = !{!"344"}
!615 = !DILocation(line: 153, column: 3, scope: !616)
!616 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!617 = !{!"345"}
!618 = !DILocalVariable(name: "os", scope: !616, file: !3, line: 153, type: !29)
!619 = !DILocation(line: 0, scope: !616)
!620 = !{!"346"}
!621 = !{!"347"}
!622 = !{!"348"}
!623 = !{!"349"}
!624 = !DILocalVariable(name: "bj", scope: !616, file: !3, line: 153, type: !30)
!625 = !{!"350"}
!626 = !{!"351"}
!627 = !{!"352"}
!628 = !DILocalVariable(name: "u", scope: !616, file: !3, line: 153, type: !6)
!629 = !{!"353"}
!630 = !DILocalVariable(name: "r", scope: !616, file: !3, line: 153, type: !6)
!631 = !{!"354"}
!632 = !DILocalVariable(name: "x", scope: !616, file: !3, line: 153, type: !6)
!633 = !{!"355"}
!634 = !{!"356"}
!635 = !{!"357"}
!636 = !{!"358"}
!637 = !{!"359"}
!638 = !{!"360"}
!639 = !DILocation(line: 153, column: 3, scope: !640)
!640 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!641 = !{!"361"}
!642 = !DILocalVariable(name: "os", scope: !640, file: !3, line: 153, type: !29)
!643 = !DILocation(line: 0, scope: !640)
!644 = !{!"362"}
!645 = !{!"363"}
!646 = !{!"364"}
!647 = !{!"365"}
!648 = !DILocalVariable(name: "bj", scope: !640, file: !3, line: 153, type: !30)
!649 = !{!"366"}
!650 = !{!"367"}
!651 = !{!"368"}
!652 = !DILocalVariable(name: "u", scope: !640, file: !3, line: 153, type: !6)
!653 = !{!"369"}
!654 = !DILocalVariable(name: "r", scope: !640, file: !3, line: 153, type: !6)
!655 = !{!"370"}
!656 = !DILocalVariable(name: "x", scope: !640, file: !3, line: 153, type: !6)
!657 = !{!"371"}
!658 = !{!"372"}
!659 = !{!"373"}
!660 = !{!"374"}
!661 = !{!"375"}
!662 = !{!"376"}
!663 = !DILocation(line: 153, column: 3, scope: !664)
!664 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!665 = !{!"377"}
!666 = !DILocalVariable(name: "os", scope: !664, file: !3, line: 153, type: !29)
!667 = !DILocation(line: 0, scope: !664)
!668 = !{!"378"}
!669 = !{!"379"}
!670 = !{!"380"}
!671 = !{!"381"}
!672 = !DILocalVariable(name: "bj", scope: !664, file: !3, line: 153, type: !30)
!673 = !{!"382"}
!674 = !{!"383"}
!675 = !{!"384"}
!676 = !DILocalVariable(name: "u", scope: !664, file: !3, line: 153, type: !6)
!677 = !{!"385"}
!678 = !DILocalVariable(name: "r", scope: !664, file: !3, line: 153, type: !6)
!679 = !{!"386"}
!680 = !DILocalVariable(name: "x", scope: !664, file: !3, line: 153, type: !6)
!681 = !{!"387"}
!682 = !{!"388"}
!683 = !{!"389"}
!684 = !{!"390"}
!685 = !{!"391"}
!686 = !{!"392"}
!687 = !DILocation(line: 153, column: 3, scope: !688)
!688 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!689 = !{!"393"}
!690 = !DILocalVariable(name: "os", scope: !688, file: !3, line: 153, type: !29)
!691 = !DILocation(line: 0, scope: !688)
!692 = !{!"394"}
!693 = !{!"395"}
!694 = !{!"396"}
!695 = !{!"397"}
!696 = !DILocalVariable(name: "bj", scope: !688, file: !3, line: 153, type: !30)
!697 = !{!"398"}
!698 = !{!"399"}
!699 = !{!"400"}
!700 = !DILocalVariable(name: "u", scope: !688, file: !3, line: 153, type: !6)
!701 = !{!"401"}
!702 = !DILocalVariable(name: "r", scope: !688, file: !3, line: 153, type: !6)
!703 = !{!"402"}
!704 = !DILocalVariable(name: "x", scope: !688, file: !3, line: 153, type: !6)
!705 = !{!"403"}
!706 = !{!"404"}
!707 = !{!"405"}
!708 = !{!"406"}
!709 = !{!"407"}
!710 = !{!"408"}
!711 = !DILocation(line: 153, column: 3, scope: !712)
!712 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!713 = !{!"409"}
!714 = !DILocalVariable(name: "os", scope: !712, file: !3, line: 153, type: !29)
!715 = !DILocation(line: 0, scope: !712)
!716 = !{!"410"}
!717 = !{!"411"}
!718 = !{!"412"}
!719 = !{!"413"}
!720 = !DILocalVariable(name: "bj", scope: !712, file: !3, line: 153, type: !30)
!721 = !{!"414"}
!722 = !{!"415"}
!723 = !{!"416"}
!724 = !DILocalVariable(name: "u", scope: !712, file: !3, line: 153, type: !6)
!725 = !{!"417"}
!726 = !DILocalVariable(name: "r", scope: !712, file: !3, line: 153, type: !6)
!727 = !{!"418"}
!728 = !DILocalVariable(name: "x", scope: !712, file: !3, line: 153, type: !6)
!729 = !{!"419"}
!730 = !{!"420"}
!731 = !{!"421"}
!732 = !{!"422"}
!733 = !{!"423"}
!734 = !{!"424"}
!735 = !DILocation(line: 153, column: 3, scope: !736)
!736 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!737 = !{!"425"}
!738 = !DILocalVariable(name: "os", scope: !736, file: !3, line: 153, type: !29)
!739 = !DILocation(line: 0, scope: !736)
!740 = !{!"426"}
!741 = !{!"427"}
!742 = !{!"428"}
!743 = !{!"429"}
!744 = !DILocalVariable(name: "bj", scope: !736, file: !3, line: 153, type: !30)
!745 = !{!"430"}
!746 = !{!"431"}
!747 = !{!"432"}
!748 = !DILocalVariable(name: "u", scope: !736, file: !3, line: 153, type: !6)
!749 = !{!"433"}
!750 = !DILocalVariable(name: "r", scope: !736, file: !3, line: 153, type: !6)
!751 = !{!"434"}
!752 = !DILocalVariable(name: "x", scope: !736, file: !3, line: 153, type: !6)
!753 = !{!"435"}
!754 = !{!"436"}
!755 = !{!"437"}
!756 = !{!"438"}
!757 = !{!"439"}
!758 = !{!"440"}
!759 = !DILocation(line: 153, column: 3, scope: !760)
!760 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!761 = !{!"441"}
!762 = !DILocalVariable(name: "os", scope: !760, file: !3, line: 153, type: !29)
!763 = !DILocation(line: 0, scope: !760)
!764 = !{!"442"}
!765 = !{!"443"}
!766 = !{!"444"}
!767 = !{!"445"}
!768 = !DILocalVariable(name: "bj", scope: !760, file: !3, line: 153, type: !30)
!769 = !{!"446"}
!770 = !{!"447"}
!771 = !{!"448"}
!772 = !DILocalVariable(name: "u", scope: !760, file: !3, line: 153, type: !6)
!773 = !{!"449"}
!774 = !DILocalVariable(name: "r", scope: !760, file: !3, line: 153, type: !6)
!775 = !{!"450"}
!776 = !DILocalVariable(name: "x", scope: !760, file: !3, line: 153, type: !6)
!777 = !{!"451"}
!778 = !{!"452"}
!779 = !{!"453"}
!780 = !{!"454"}
!781 = !{!"455"}
!782 = !{!"456"}
!783 = !DILocation(line: 153, column: 3, scope: !784)
!784 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!785 = !{!"457"}
!786 = !DILocalVariable(name: "os", scope: !784, file: !3, line: 153, type: !29)
!787 = !DILocation(line: 0, scope: !784)
!788 = !{!"458"}
!789 = !{!"459"}
!790 = !{!"460"}
!791 = !{!"461"}
!792 = !DILocalVariable(name: "bj", scope: !784, file: !3, line: 153, type: !30)
!793 = !{!"462"}
!794 = !{!"463"}
!795 = !{!"464"}
!796 = !DILocalVariable(name: "u", scope: !784, file: !3, line: 153, type: !6)
!797 = !{!"465"}
!798 = !DILocalVariable(name: "r", scope: !784, file: !3, line: 153, type: !6)
!799 = !{!"466"}
!800 = !DILocalVariable(name: "x", scope: !784, file: !3, line: 153, type: !6)
!801 = !{!"467"}
!802 = !{!"468"}
!803 = !{!"469"}
!804 = !{!"470"}
!805 = !{!"471"}
!806 = !{!"472"}
!807 = !DILocation(line: 153, column: 3, scope: !808)
!808 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!809 = !{!"473"}
!810 = !DILocalVariable(name: "os", scope: !808, file: !3, line: 153, type: !29)
!811 = !DILocation(line: 0, scope: !808)
!812 = !{!"474"}
!813 = !{!"475"}
!814 = !{!"476"}
!815 = !{!"477"}
!816 = !DILocalVariable(name: "bj", scope: !808, file: !3, line: 153, type: !30)
!817 = !{!"478"}
!818 = !{!"479"}
!819 = !{!"480"}
!820 = !DILocalVariable(name: "u", scope: !808, file: !3, line: 153, type: !6)
!821 = !{!"481"}
!822 = !DILocalVariable(name: "r", scope: !808, file: !3, line: 153, type: !6)
!823 = !{!"482"}
!824 = !DILocalVariable(name: "x", scope: !808, file: !3, line: 153, type: !6)
!825 = !{!"483"}
!826 = !{!"484"}
!827 = !{!"485"}
!828 = !{!"486"}
!829 = !{!"487"}
!830 = !{!"488"}
!831 = !DILocation(line: 153, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!833 = !{!"489"}
!834 = !DILocalVariable(name: "os", scope: !832, file: !3, line: 153, type: !29)
!835 = !DILocation(line: 0, scope: !832)
!836 = !{!"490"}
!837 = !{!"491"}
!838 = !{!"492"}
!839 = !{!"493"}
!840 = !DILocalVariable(name: "bj", scope: !832, file: !3, line: 153, type: !30)
!841 = !{!"494"}
!842 = !{!"495"}
!843 = !{!"496"}
!844 = !DILocalVariable(name: "u", scope: !832, file: !3, line: 153, type: !6)
!845 = !{!"497"}
!846 = !DILocalVariable(name: "r", scope: !832, file: !3, line: 153, type: !6)
!847 = !{!"498"}
!848 = !DILocalVariable(name: "x", scope: !832, file: !3, line: 153, type: !6)
!849 = !{!"499"}
!850 = !{!"500"}
!851 = !{!"501"}
!852 = !{!"502"}
!853 = !{!"503"}
!854 = !{!"504"}
!855 = !DILocation(line: 153, column: 3, scope: !856)
!856 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!857 = !{!"505"}
!858 = !DILocalVariable(name: "os", scope: !856, file: !3, line: 153, type: !29)
!859 = !DILocation(line: 0, scope: !856)
!860 = !{!"506"}
!861 = !{!"507"}
!862 = !{!"508"}
!863 = !{!"509"}
!864 = !DILocalVariable(name: "bj", scope: !856, file: !3, line: 153, type: !30)
!865 = !{!"510"}
!866 = !{!"511"}
!867 = !{!"512"}
!868 = !DILocalVariable(name: "u", scope: !856, file: !3, line: 153, type: !6)
!869 = !{!"513"}
!870 = !DILocalVariable(name: "r", scope: !856, file: !3, line: 153, type: !6)
!871 = !{!"514"}
!872 = !DILocalVariable(name: "x", scope: !856, file: !3, line: 153, type: !6)
!873 = !{!"515"}
!874 = !{!"516"}
!875 = !{!"517"}
!876 = !{!"518"}
!877 = !{!"519"}
!878 = !{!"520"}
!879 = !DILocation(line: 153, column: 3, scope: !880)
!880 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!881 = !{!"521"}
!882 = !DILocalVariable(name: "os", scope: !880, file: !3, line: 153, type: !29)
!883 = !DILocation(line: 0, scope: !880)
!884 = !{!"522"}
!885 = !{!"523"}
!886 = !{!"524"}
!887 = !{!"525"}
!888 = !DILocalVariable(name: "bj", scope: !880, file: !3, line: 153, type: !30)
!889 = !{!"526"}
!890 = !{!"527"}
!891 = !{!"528"}
!892 = !DILocalVariable(name: "u", scope: !880, file: !3, line: 153, type: !6)
!893 = !{!"529"}
!894 = !DILocalVariable(name: "r", scope: !880, file: !3, line: 153, type: !6)
!895 = !{!"530"}
!896 = !DILocalVariable(name: "x", scope: !880, file: !3, line: 153, type: !6)
!897 = !{!"531"}
!898 = !{!"532"}
!899 = !{!"533"}
!900 = !{!"534"}
!901 = !{!"535"}
!902 = !{!"536"}
!903 = !DILocation(line: 153, column: 3, scope: !904)
!904 = distinct !DILexicalBlock(scope: !540, file: !3, line: 153, column: 3)
!905 = !{!"537"}
!906 = !DILocalVariable(name: "os", scope: !904, file: !3, line: 153, type: !29)
!907 = !DILocation(line: 0, scope: !904)
!908 = !{!"538"}
!909 = !{!"539"}
!910 = !{!"540"}
!911 = !{!"541"}
!912 = !DILocalVariable(name: "bj", scope: !904, file: !3, line: 153, type: !30)
!913 = !{!"542"}
!914 = !{!"543"}
!915 = !{!"544"}
!916 = !DILocalVariable(name: "u", scope: !904, file: !3, line: 153, type: !6)
!917 = !{!"545"}
!918 = !DILocalVariable(name: "r", scope: !904, file: !3, line: 153, type: !6)
!919 = !{!"546"}
!920 = !DILocalVariable(name: "x", scope: !904, file: !3, line: 153, type: !6)
!921 = !{!"547"}
!922 = !{!"548"}
!923 = !{!"549"}
!924 = !{!"550"}
!925 = !{!"551"}
!926 = !{!"552"}
!927 = !DILocation(line: 153, column: 3, scope: !540)
!928 = !{!"553"}
!929 = !DILocation(line: 163, column: 3, scope: !506)
!930 = !{!"554"}
!931 = !DILocalVariable(name: "i", scope: !932, file: !3, line: 163, type: !6)
!932 = distinct !DILexicalBlock(scope: !506, file: !3, line: 163, column: 3)
!933 = !DILocation(line: 0, scope: !932)
!934 = !{!"555"}
!935 = !DILocation(line: 163, column: 3, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!937 = !{!"556"}
!938 = !DILocalVariable(name: "os", scope: !936, file: !3, line: 163, type: !29)
!939 = !DILocation(line: 0, scope: !936)
!940 = !{!"557"}
!941 = !{!"558"}
!942 = !{!"559"}
!943 = !{!"560"}
!944 = !{!"561"}
!945 = !{!"562"}
!946 = !{!"563"}
!947 = !{!"564"}
!948 = !DILocalVariable(name: "x", scope: !936, file: !3, line: 163, type: !6)
!949 = !{!"565"}
!950 = !{!"566"}
!951 = !{!"567"}
!952 = !{!"568"}
!953 = !{!"569"}
!954 = !{!"570"}
!955 = !DILocation(line: 163, column: 3, scope: !956)
!956 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!957 = !{!"571"}
!958 = !DILocalVariable(name: "os", scope: !956, file: !3, line: 163, type: !29)
!959 = !DILocation(line: 0, scope: !956)
!960 = !{!"572"}
!961 = !{!"573"}
!962 = !{!"574"}
!963 = !{!"575"}
!964 = !{!"576"}
!965 = !{!"577"}
!966 = !{!"578"}
!967 = !{!"579"}
!968 = !DILocalVariable(name: "x", scope: !956, file: !3, line: 163, type: !6)
!969 = !{!"580"}
!970 = !{!"581"}
!971 = !{!"582"}
!972 = !{!"583"}
!973 = !{!"584"}
!974 = !{!"585"}
!975 = !DILocation(line: 163, column: 3, scope: !976)
!976 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!977 = !{!"586"}
!978 = !DILocalVariable(name: "os", scope: !976, file: !3, line: 163, type: !29)
!979 = !DILocation(line: 0, scope: !976)
!980 = !{!"587"}
!981 = !{!"588"}
!982 = !{!"589"}
!983 = !{!"590"}
!984 = !{!"591"}
!985 = !{!"592"}
!986 = !{!"593"}
!987 = !{!"594"}
!988 = !DILocalVariable(name: "x", scope: !976, file: !3, line: 163, type: !6)
!989 = !{!"595"}
!990 = !{!"596"}
!991 = !{!"597"}
!992 = !{!"598"}
!993 = !{!"599"}
!994 = !{!"600"}
!995 = !DILocation(line: 163, column: 3, scope: !996)
!996 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!997 = !{!"601"}
!998 = !DILocalVariable(name: "os", scope: !996, file: !3, line: 163, type: !29)
!999 = !DILocation(line: 0, scope: !996)
!1000 = !{!"602"}
!1001 = !{!"603"}
!1002 = !{!"604"}
!1003 = !{!"605"}
!1004 = !{!"606"}
!1005 = !{!"607"}
!1006 = !{!"608"}
!1007 = !{!"609"}
!1008 = !DILocalVariable(name: "x", scope: !996, file: !3, line: 163, type: !6)
!1009 = !{!"610"}
!1010 = !{!"611"}
!1011 = !{!"612"}
!1012 = !{!"613"}
!1013 = !{!"614"}
!1014 = !{!"615"}
!1015 = !DILocation(line: 163, column: 3, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1017 = !{!"616"}
!1018 = !DILocalVariable(name: "os", scope: !1016, file: !3, line: 163, type: !29)
!1019 = !DILocation(line: 0, scope: !1016)
!1020 = !{!"617"}
!1021 = !{!"618"}
!1022 = !{!"619"}
!1023 = !{!"620"}
!1024 = !{!"621"}
!1025 = !{!"622"}
!1026 = !{!"623"}
!1027 = !{!"624"}
!1028 = !DILocalVariable(name: "x", scope: !1016, file: !3, line: 163, type: !6)
!1029 = !{!"625"}
!1030 = !{!"626"}
!1031 = !{!"627"}
!1032 = !{!"628"}
!1033 = !{!"629"}
!1034 = !{!"630"}
!1035 = !DILocation(line: 163, column: 3, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1037 = !{!"631"}
!1038 = !DILocalVariable(name: "os", scope: !1036, file: !3, line: 163, type: !29)
!1039 = !DILocation(line: 0, scope: !1036)
!1040 = !{!"632"}
!1041 = !{!"633"}
!1042 = !{!"634"}
!1043 = !{!"635"}
!1044 = !{!"636"}
!1045 = !{!"637"}
!1046 = !{!"638"}
!1047 = !{!"639"}
!1048 = !DILocalVariable(name: "x", scope: !1036, file: !3, line: 163, type: !6)
!1049 = !{!"640"}
!1050 = !{!"641"}
!1051 = !{!"642"}
!1052 = !{!"643"}
!1053 = !{!"644"}
!1054 = !{!"645"}
!1055 = !DILocation(line: 163, column: 3, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1057 = !{!"646"}
!1058 = !DILocalVariable(name: "os", scope: !1056, file: !3, line: 163, type: !29)
!1059 = !DILocation(line: 0, scope: !1056)
!1060 = !{!"647"}
!1061 = !{!"648"}
!1062 = !{!"649"}
!1063 = !{!"650"}
!1064 = !{!"651"}
!1065 = !{!"652"}
!1066 = !{!"653"}
!1067 = !{!"654"}
!1068 = !DILocalVariable(name: "x", scope: !1056, file: !3, line: 163, type: !6)
!1069 = !{!"655"}
!1070 = !{!"656"}
!1071 = !{!"657"}
!1072 = !{!"658"}
!1073 = !{!"659"}
!1074 = !{!"660"}
!1075 = !DILocation(line: 163, column: 3, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1077 = !{!"661"}
!1078 = !DILocalVariable(name: "os", scope: !1076, file: !3, line: 163, type: !29)
!1079 = !DILocation(line: 0, scope: !1076)
!1080 = !{!"662"}
!1081 = !{!"663"}
!1082 = !{!"664"}
!1083 = !{!"665"}
!1084 = !{!"666"}
!1085 = !{!"667"}
!1086 = !{!"668"}
!1087 = !{!"669"}
!1088 = !DILocalVariable(name: "x", scope: !1076, file: !3, line: 163, type: !6)
!1089 = !{!"670"}
!1090 = !{!"671"}
!1091 = !{!"672"}
!1092 = !{!"673"}
!1093 = !{!"674"}
!1094 = !{!"675"}
!1095 = !DILocation(line: 163, column: 3, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1097 = !{!"676"}
!1098 = !DILocalVariable(name: "os", scope: !1096, file: !3, line: 163, type: !29)
!1099 = !DILocation(line: 0, scope: !1096)
!1100 = !{!"677"}
!1101 = !{!"678"}
!1102 = !{!"679"}
!1103 = !{!"680"}
!1104 = !{!"681"}
!1105 = !{!"682"}
!1106 = !{!"683"}
!1107 = !{!"684"}
!1108 = !DILocalVariable(name: "x", scope: !1096, file: !3, line: 163, type: !6)
!1109 = !{!"685"}
!1110 = !{!"686"}
!1111 = !{!"687"}
!1112 = !{!"688"}
!1113 = !{!"689"}
!1114 = !{!"690"}
!1115 = !DILocation(line: 163, column: 3, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1117 = !{!"691"}
!1118 = !DILocalVariable(name: "os", scope: !1116, file: !3, line: 163, type: !29)
!1119 = !DILocation(line: 0, scope: !1116)
!1120 = !{!"692"}
!1121 = !{!"693"}
!1122 = !{!"694"}
!1123 = !{!"695"}
!1124 = !{!"696"}
!1125 = !{!"697"}
!1126 = !{!"698"}
!1127 = !{!"699"}
!1128 = !DILocalVariable(name: "x", scope: !1116, file: !3, line: 163, type: !6)
!1129 = !{!"700"}
!1130 = !{!"701"}
!1131 = !{!"702"}
!1132 = !{!"703"}
!1133 = !{!"704"}
!1134 = !{!"705"}
!1135 = !DILocation(line: 163, column: 3, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1137 = !{!"706"}
!1138 = !DILocalVariable(name: "os", scope: !1136, file: !3, line: 163, type: !29)
!1139 = !DILocation(line: 0, scope: !1136)
!1140 = !{!"707"}
!1141 = !{!"708"}
!1142 = !{!"709"}
!1143 = !{!"710"}
!1144 = !{!"711"}
!1145 = !{!"712"}
!1146 = !{!"713"}
!1147 = !{!"714"}
!1148 = !DILocalVariable(name: "x", scope: !1136, file: !3, line: 163, type: !6)
!1149 = !{!"715"}
!1150 = !{!"716"}
!1151 = !{!"717"}
!1152 = !{!"718"}
!1153 = !{!"719"}
!1154 = !{!"720"}
!1155 = !DILocation(line: 163, column: 3, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1157 = !{!"721"}
!1158 = !DILocalVariable(name: "os", scope: !1156, file: !3, line: 163, type: !29)
!1159 = !DILocation(line: 0, scope: !1156)
!1160 = !{!"722"}
!1161 = !{!"723"}
!1162 = !{!"724"}
!1163 = !{!"725"}
!1164 = !{!"726"}
!1165 = !{!"727"}
!1166 = !{!"728"}
!1167 = !{!"729"}
!1168 = !DILocalVariable(name: "x", scope: !1156, file: !3, line: 163, type: !6)
!1169 = !{!"730"}
!1170 = !{!"731"}
!1171 = !{!"732"}
!1172 = !{!"733"}
!1173 = !{!"734"}
!1174 = !{!"735"}
!1175 = !DILocation(line: 163, column: 3, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1177 = !{!"736"}
!1178 = !DILocalVariable(name: "os", scope: !1176, file: !3, line: 163, type: !29)
!1179 = !DILocation(line: 0, scope: !1176)
!1180 = !{!"737"}
!1181 = !{!"738"}
!1182 = !{!"739"}
!1183 = !{!"740"}
!1184 = !{!"741"}
!1185 = !{!"742"}
!1186 = !{!"743"}
!1187 = !{!"744"}
!1188 = !DILocalVariable(name: "x", scope: !1176, file: !3, line: 163, type: !6)
!1189 = !{!"745"}
!1190 = !{!"746"}
!1191 = !{!"747"}
!1192 = !{!"748"}
!1193 = !{!"749"}
!1194 = !{!"750"}
!1195 = !DILocation(line: 163, column: 3, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1197 = !{!"751"}
!1198 = !DILocalVariable(name: "os", scope: !1196, file: !3, line: 163, type: !29)
!1199 = !DILocation(line: 0, scope: !1196)
!1200 = !{!"752"}
!1201 = !{!"753"}
!1202 = !{!"754"}
!1203 = !{!"755"}
!1204 = !{!"756"}
!1205 = !{!"757"}
!1206 = !{!"758"}
!1207 = !{!"759"}
!1208 = !DILocalVariable(name: "x", scope: !1196, file: !3, line: 163, type: !6)
!1209 = !{!"760"}
!1210 = !{!"761"}
!1211 = !{!"762"}
!1212 = !{!"763"}
!1213 = !{!"764"}
!1214 = !{!"765"}
!1215 = !DILocation(line: 163, column: 3, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1217 = !{!"766"}
!1218 = !DILocalVariable(name: "os", scope: !1216, file: !3, line: 163, type: !29)
!1219 = !DILocation(line: 0, scope: !1216)
!1220 = !{!"767"}
!1221 = !{!"768"}
!1222 = !{!"769"}
!1223 = !{!"770"}
!1224 = !{!"771"}
!1225 = !{!"772"}
!1226 = !{!"773"}
!1227 = !{!"774"}
!1228 = !DILocalVariable(name: "x", scope: !1216, file: !3, line: 163, type: !6)
!1229 = !{!"775"}
!1230 = !{!"776"}
!1231 = !{!"777"}
!1232 = !{!"778"}
!1233 = !{!"779"}
!1234 = !{!"780"}
!1235 = !DILocation(line: 163, column: 3, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !932, file: !3, line: 163, column: 3)
!1237 = !{!"781"}
!1238 = !DILocalVariable(name: "os", scope: !1236, file: !3, line: 163, type: !29)
!1239 = !DILocation(line: 0, scope: !1236)
!1240 = !{!"782"}
!1241 = !{!"783"}
!1242 = !{!"784"}
!1243 = !{!"785"}
!1244 = !{!"786"}
!1245 = !{!"787"}
!1246 = !{!"788"}
!1247 = !{!"789"}
!1248 = !DILocalVariable(name: "x", scope: !1236, file: !3, line: 163, type: !6)
!1249 = !{!"790"}
!1250 = !{!"791"}
!1251 = !{!"792"}
!1252 = !{!"793"}
!1253 = !{!"794"}
!1254 = !{!"795"}
!1255 = !DILocation(line: 163, column: 3, scope: !932)
!1256 = !{!"796"}
!1257 = !DILocation(line: 170, column: 3, scope: !506)
!1258 = !{!"797"}
!1259 = !DILocalVariable(name: "i", scope: !1260, file: !3, line: 170, type: !6)
!1260 = distinct !DILexicalBlock(scope: !506, file: !3, line: 170, column: 3)
!1261 = !DILocation(line: 0, scope: !1260)
!1262 = !{!"798"}
!1263 = !DILocation(line: 170, column: 3, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1265 = !{!"799"}
!1266 = !{!"800"}
!1267 = !{!"801"}
!1268 = !{!"802"}
!1269 = !{!"803"}
!1270 = !{!"804"}
!1271 = !{!"805"}
!1272 = !{!"806"}
!1273 = !{!"807"}
!1274 = !{!"808"}
!1275 = !DILocation(line: 170, column: 3, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1277 = !{!"809"}
!1278 = !{!"810"}
!1279 = !{!"811"}
!1280 = !{!"812"}
!1281 = !{!"813"}
!1282 = !{!"814"}
!1283 = !{!"815"}
!1284 = !{!"816"}
!1285 = !{!"817"}
!1286 = !{!"818"}
!1287 = !DILocation(line: 170, column: 3, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1289 = !{!"819"}
!1290 = !{!"820"}
!1291 = !{!"821"}
!1292 = !{!"822"}
!1293 = !{!"823"}
!1294 = !{!"824"}
!1295 = !{!"825"}
!1296 = !{!"826"}
!1297 = !{!"827"}
!1298 = !{!"828"}
!1299 = !DILocation(line: 170, column: 3, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1301 = !{!"829"}
!1302 = !{!"830"}
!1303 = !{!"831"}
!1304 = !{!"832"}
!1305 = !{!"833"}
!1306 = !{!"834"}
!1307 = !{!"835"}
!1308 = !{!"836"}
!1309 = !{!"837"}
!1310 = !{!"838"}
!1311 = !DILocation(line: 170, column: 3, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1313 = !{!"839"}
!1314 = !{!"840"}
!1315 = !{!"841"}
!1316 = !{!"842"}
!1317 = !{!"843"}
!1318 = !{!"844"}
!1319 = !{!"845"}
!1320 = !{!"846"}
!1321 = !{!"847"}
!1322 = !{!"848"}
!1323 = !DILocation(line: 170, column: 3, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1325 = !{!"849"}
!1326 = !{!"850"}
!1327 = !{!"851"}
!1328 = !{!"852"}
!1329 = !{!"853"}
!1330 = !{!"854"}
!1331 = !{!"855"}
!1332 = !{!"856"}
!1333 = !{!"857"}
!1334 = !{!"858"}
!1335 = !DILocation(line: 170, column: 3, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1337 = !{!"859"}
!1338 = !{!"860"}
!1339 = !{!"861"}
!1340 = !{!"862"}
!1341 = !{!"863"}
!1342 = !{!"864"}
!1343 = !{!"865"}
!1344 = !{!"866"}
!1345 = !{!"867"}
!1346 = !{!"868"}
!1347 = !DILocation(line: 170, column: 3, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1349 = !{!"869"}
!1350 = !{!"870"}
!1351 = !{!"871"}
!1352 = !{!"872"}
!1353 = !{!"873"}
!1354 = !{!"874"}
!1355 = !{!"875"}
!1356 = !{!"876"}
!1357 = !{!"877"}
!1358 = !{!"878"}
!1359 = !DILocation(line: 170, column: 3, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1361 = !{!"879"}
!1362 = !{!"880"}
!1363 = !{!"881"}
!1364 = !{!"882"}
!1365 = !{!"883"}
!1366 = !{!"884"}
!1367 = !{!"885"}
!1368 = !{!"886"}
!1369 = !{!"887"}
!1370 = !{!"888"}
!1371 = !DILocation(line: 170, column: 3, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1373 = !{!"889"}
!1374 = !{!"890"}
!1375 = !{!"891"}
!1376 = !{!"892"}
!1377 = !{!"893"}
!1378 = !{!"894"}
!1379 = !{!"895"}
!1380 = !{!"896"}
!1381 = !{!"897"}
!1382 = !{!"898"}
!1383 = !DILocation(line: 170, column: 3, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1385 = !{!"899"}
!1386 = !{!"900"}
!1387 = !{!"901"}
!1388 = !{!"902"}
!1389 = !{!"903"}
!1390 = !{!"904"}
!1391 = !{!"905"}
!1392 = !{!"906"}
!1393 = !{!"907"}
!1394 = !{!"908"}
!1395 = !DILocation(line: 170, column: 3, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1397 = !{!"909"}
!1398 = !{!"910"}
!1399 = !{!"911"}
!1400 = !{!"912"}
!1401 = !{!"913"}
!1402 = !{!"914"}
!1403 = !{!"915"}
!1404 = !{!"916"}
!1405 = !{!"917"}
!1406 = !{!"918"}
!1407 = !DILocation(line: 170, column: 3, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1409 = !{!"919"}
!1410 = !{!"920"}
!1411 = !{!"921"}
!1412 = !{!"922"}
!1413 = !{!"923"}
!1414 = !{!"924"}
!1415 = !{!"925"}
!1416 = !{!"926"}
!1417 = !{!"927"}
!1418 = !{!"928"}
!1419 = !DILocation(line: 170, column: 3, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1421 = !{!"929"}
!1422 = !{!"930"}
!1423 = !{!"931"}
!1424 = !{!"932"}
!1425 = !{!"933"}
!1426 = !{!"934"}
!1427 = !{!"935"}
!1428 = !{!"936"}
!1429 = !{!"937"}
!1430 = !{!"938"}
!1431 = !DILocation(line: 170, column: 3, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1433 = !{!"939"}
!1434 = !{!"940"}
!1435 = !{!"941"}
!1436 = !{!"942"}
!1437 = !{!"943"}
!1438 = !{!"944"}
!1439 = !{!"945"}
!1440 = !{!"946"}
!1441 = !{!"947"}
!1442 = !{!"948"}
!1443 = !DILocation(line: 170, column: 3, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 170, column: 3)
!1445 = !{!"949"}
!1446 = !{!"950"}
!1447 = !{!"951"}
!1448 = !{!"952"}
!1449 = !{!"953"}
!1450 = !{!"954"}
!1451 = !{!"955"}
!1452 = !{!"956"}
!1453 = !{!"957"}
!1454 = !{!"958"}
!1455 = !DILocation(line: 170, column: 3, scope: !1260)
!1456 = !{!"959"}
!1457 = !DILocation(line: 175, column: 1, scope: !506)
!1458 = !{!"960"}
!1459 = distinct !DISubprogram(name: "chacha20_encrypt_last", scope: !3, file: !3, line: 178, type: !1460, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !29, !6, !30, !6, !30}
!1462 = !{!"961"}
!1463 = !DILocalVariable(name: "ctx", arg: 1, scope: !1459, file: !3, line: 178, type: !29)
!1464 = !DILocation(line: 0, scope: !1459)
!1465 = !{!"962"}
!1466 = !DILocalVariable(name: "len", arg: 2, scope: !1459, file: !3, line: 178, type: !6)
!1467 = !{!"963"}
!1468 = !DILocalVariable(name: "out", arg: 3, scope: !1459, file: !3, line: 178, type: !30)
!1469 = !{!"964"}
!1470 = !DILocalVariable(name: "incr", arg: 4, scope: !1459, file: !3, line: 178, type: !6)
!1471 = !{!"965"}
!1472 = !DILocalVariable(name: "text", arg: 5, scope: !1459, file: !3, line: 178, type: !30)
!1473 = !{!"966"}
!1474 = !DILocalVariable(name: "plain", scope: !1459, file: !3, line: 180, type: !1475)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, elements: !1476)
!1476 = !{!1477}
!1477 = !DISubrange(count: 64)
!1478 = !DILocation(line: 180, column: 11, scope: !1459)
!1479 = !{!"967"}
!1480 = !{!"968"}
!1481 = !{!"969"}
!1482 = !DILocation(line: 181, column: 3, scope: !1459)
!1483 = !{!"970"}
!1484 = !DILocation(line: 181, column: 23, scope: !1459)
!1485 = !{!"971"}
!1486 = !DILocation(line: 181, column: 27, scope: !1459)
!1487 = !{!"972"}
!1488 = !{!"973"}
!1489 = !DILocation(line: 182, column: 31, scope: !1459)
!1490 = !{!"974"}
!1491 = !DILocation(line: 182, column: 44, scope: !1459)
!1492 = !{!"975"}
!1493 = !DILocation(line: 182, column: 3, scope: !1459)
!1494 = !{!"976"}
!1495 = !DILocation(line: 183, column: 3, scope: !1459)
!1496 = !{!"977"}
!1497 = !DILocation(line: 183, column: 22, scope: !1459)
!1498 = !{!"978"}
!1499 = !DILocation(line: 183, column: 26, scope: !1459)
!1500 = !{!"979"}
!1501 = !{!"980"}
!1502 = !DILocation(line: 184, column: 1, scope: !1459)
!1503 = !{!"981"}
!1504 = distinct !DISubprogram(name: "chacha20_core", scope: !3, file: !3, line: 95, type: !1505, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !29, !29, !6}
!1507 = !DILocalVariable(name: "k", arg: 1, scope: !1504, file: !3, line: 95, type: !29)
!1508 = !DILocation(line: 0, scope: !1504)
!1509 = !{!"982"}
!1510 = !DILocalVariable(name: "ctx", arg: 2, scope: !1504, file: !3, line: 95, type: !29)
!1511 = !{!"983"}
!1512 = !DILocalVariable(name: "ctr", arg: 3, scope: !1504, file: !3, line: 95, type: !6)
!1513 = !{!"984"}
!1514 = !DILocation(line: 97, column: 3, scope: !1504)
!1515 = !{!"985"}
!1516 = !{!"986"}
!1517 = !{!"987"}
!1518 = !DILocalVariable(name: "ctr_u32", scope: !1504, file: !3, line: 98, type: !6)
!1519 = !{!"988"}
!1520 = !DILocation(line: 99, column: 12, scope: !1504)
!1521 = !{!"989"}
!1522 = !{!"990"}
!1523 = !DILocation(line: 99, column: 19, scope: !1504)
!1524 = !{!"991"}
!1525 = !DILocation(line: 99, column: 3, scope: !1504)
!1526 = !{!"992"}
!1527 = !DILocation(line: 99, column: 10, scope: !1504)
!1528 = !{!"993"}
!1529 = !DILocation(line: 100, column: 3, scope: !1504)
!1530 = !{!"994"}
!1531 = !DILocation(line: 101, column: 3, scope: !1504)
!1532 = !{!"995"}
!1533 = !DILocalVariable(name: "i", scope: !1534, file: !3, line: 101, type: !6)
!1534 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 101, column: 3)
!1535 = !DILocation(line: 0, scope: !1534)
!1536 = !{!"996"}
!1537 = !DILocalVariable(name: "os", scope: !1538, file: !3, line: 101, type: !29)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1539 = !DILocation(line: 0, scope: !1538)
!1540 = !{!"997"}
!1541 = !DILocation(line: 101, column: 3, scope: !1538)
!1542 = !{!"998"}
!1543 = !{!"999"}
!1544 = !{!"1000"}
!1545 = !{!"1001"}
!1546 = !{!"1002"}
!1547 = !{!"1003"}
!1548 = !{!"1004"}
!1549 = !DILocalVariable(name: "x", scope: !1538, file: !3, line: 101, type: !6)
!1550 = !{!"1005"}
!1551 = !{!"1006"}
!1552 = !{!"1007"}
!1553 = !{!"1008"}
!1554 = !{!"1009"}
!1555 = !{!"1010"}
!1556 = !DILocalVariable(name: "os", scope: !1557, file: !3, line: 101, type: !29)
!1557 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1558 = !DILocation(line: 0, scope: !1557)
!1559 = !{!"1011"}
!1560 = !DILocation(line: 101, column: 3, scope: !1557)
!1561 = !{!"1012"}
!1562 = !{!"1013"}
!1563 = !{!"1014"}
!1564 = !{!"1015"}
!1565 = !{!"1016"}
!1566 = !{!"1017"}
!1567 = !{!"1018"}
!1568 = !DILocalVariable(name: "x", scope: !1557, file: !3, line: 101, type: !6)
!1569 = !{!"1019"}
!1570 = !{!"1020"}
!1571 = !{!"1021"}
!1572 = !{!"1022"}
!1573 = !{!"1023"}
!1574 = !{!"1024"}
!1575 = !DILocalVariable(name: "os", scope: !1576, file: !3, line: 101, type: !29)
!1576 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1577 = !DILocation(line: 0, scope: !1576)
!1578 = !{!"1025"}
!1579 = !DILocation(line: 101, column: 3, scope: !1576)
!1580 = !{!"1026"}
!1581 = !{!"1027"}
!1582 = !{!"1028"}
!1583 = !{!"1029"}
!1584 = !{!"1030"}
!1585 = !{!"1031"}
!1586 = !{!"1032"}
!1587 = !DILocalVariable(name: "x", scope: !1576, file: !3, line: 101, type: !6)
!1588 = !{!"1033"}
!1589 = !{!"1034"}
!1590 = !{!"1035"}
!1591 = !{!"1036"}
!1592 = !{!"1037"}
!1593 = !{!"1038"}
!1594 = !DILocalVariable(name: "os", scope: !1595, file: !3, line: 101, type: !29)
!1595 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1596 = !DILocation(line: 0, scope: !1595)
!1597 = !{!"1039"}
!1598 = !DILocation(line: 101, column: 3, scope: !1595)
!1599 = !{!"1040"}
!1600 = !{!"1041"}
!1601 = !{!"1042"}
!1602 = !{!"1043"}
!1603 = !{!"1044"}
!1604 = !{!"1045"}
!1605 = !{!"1046"}
!1606 = !DILocalVariable(name: "x", scope: !1595, file: !3, line: 101, type: !6)
!1607 = !{!"1047"}
!1608 = !{!"1048"}
!1609 = !{!"1049"}
!1610 = !{!"1050"}
!1611 = !{!"1051"}
!1612 = !{!"1052"}
!1613 = !DILocalVariable(name: "os", scope: !1614, file: !3, line: 101, type: !29)
!1614 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1615 = !DILocation(line: 0, scope: !1614)
!1616 = !{!"1053"}
!1617 = !DILocation(line: 101, column: 3, scope: !1614)
!1618 = !{!"1054"}
!1619 = !{!"1055"}
!1620 = !{!"1056"}
!1621 = !{!"1057"}
!1622 = !{!"1058"}
!1623 = !{!"1059"}
!1624 = !{!"1060"}
!1625 = !DILocalVariable(name: "x", scope: !1614, file: !3, line: 101, type: !6)
!1626 = !{!"1061"}
!1627 = !{!"1062"}
!1628 = !{!"1063"}
!1629 = !{!"1064"}
!1630 = !{!"1065"}
!1631 = !{!"1066"}
!1632 = !DILocalVariable(name: "os", scope: !1633, file: !3, line: 101, type: !29)
!1633 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1634 = !DILocation(line: 0, scope: !1633)
!1635 = !{!"1067"}
!1636 = !DILocation(line: 101, column: 3, scope: !1633)
!1637 = !{!"1068"}
!1638 = !{!"1069"}
!1639 = !{!"1070"}
!1640 = !{!"1071"}
!1641 = !{!"1072"}
!1642 = !{!"1073"}
!1643 = !{!"1074"}
!1644 = !DILocalVariable(name: "x", scope: !1633, file: !3, line: 101, type: !6)
!1645 = !{!"1075"}
!1646 = !{!"1076"}
!1647 = !{!"1077"}
!1648 = !{!"1078"}
!1649 = !{!"1079"}
!1650 = !{!"1080"}
!1651 = !DILocalVariable(name: "os", scope: !1652, file: !3, line: 101, type: !29)
!1652 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1653 = !DILocation(line: 0, scope: !1652)
!1654 = !{!"1081"}
!1655 = !DILocation(line: 101, column: 3, scope: !1652)
!1656 = !{!"1082"}
!1657 = !{!"1083"}
!1658 = !{!"1084"}
!1659 = !{!"1085"}
!1660 = !{!"1086"}
!1661 = !{!"1087"}
!1662 = !{!"1088"}
!1663 = !DILocalVariable(name: "x", scope: !1652, file: !3, line: 101, type: !6)
!1664 = !{!"1089"}
!1665 = !{!"1090"}
!1666 = !{!"1091"}
!1667 = !{!"1092"}
!1668 = !{!"1093"}
!1669 = !{!"1094"}
!1670 = !DILocalVariable(name: "os", scope: !1671, file: !3, line: 101, type: !29)
!1671 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1672 = !DILocation(line: 0, scope: !1671)
!1673 = !{!"1095"}
!1674 = !DILocation(line: 101, column: 3, scope: !1671)
!1675 = !{!"1096"}
!1676 = !{!"1097"}
!1677 = !{!"1098"}
!1678 = !{!"1099"}
!1679 = !{!"1100"}
!1680 = !{!"1101"}
!1681 = !{!"1102"}
!1682 = !DILocalVariable(name: "x", scope: !1671, file: !3, line: 101, type: !6)
!1683 = !{!"1103"}
!1684 = !{!"1104"}
!1685 = !{!"1105"}
!1686 = !{!"1106"}
!1687 = !{!"1107"}
!1688 = !{!"1108"}
!1689 = !DILocalVariable(name: "os", scope: !1690, file: !3, line: 101, type: !29)
!1690 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1691 = !DILocation(line: 0, scope: !1690)
!1692 = !{!"1109"}
!1693 = !DILocation(line: 101, column: 3, scope: !1690)
!1694 = !{!"1110"}
!1695 = !{!"1111"}
!1696 = !{!"1112"}
!1697 = !{!"1113"}
!1698 = !{!"1114"}
!1699 = !{!"1115"}
!1700 = !{!"1116"}
!1701 = !DILocalVariable(name: "x", scope: !1690, file: !3, line: 101, type: !6)
!1702 = !{!"1117"}
!1703 = !{!"1118"}
!1704 = !{!"1119"}
!1705 = !{!"1120"}
!1706 = !{!"1121"}
!1707 = !{!"1122"}
!1708 = !DILocalVariable(name: "os", scope: !1709, file: !3, line: 101, type: !29)
!1709 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1710 = !DILocation(line: 0, scope: !1709)
!1711 = !{!"1123"}
!1712 = !DILocation(line: 101, column: 3, scope: !1709)
!1713 = !{!"1124"}
!1714 = !{!"1125"}
!1715 = !{!"1126"}
!1716 = !{!"1127"}
!1717 = !{!"1128"}
!1718 = !{!"1129"}
!1719 = !{!"1130"}
!1720 = !DILocalVariable(name: "x", scope: !1709, file: !3, line: 101, type: !6)
!1721 = !{!"1131"}
!1722 = !{!"1132"}
!1723 = !{!"1133"}
!1724 = !{!"1134"}
!1725 = !{!"1135"}
!1726 = !{!"1136"}
!1727 = !DILocalVariable(name: "os", scope: !1728, file: !3, line: 101, type: !29)
!1728 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1729 = !DILocation(line: 0, scope: !1728)
!1730 = !{!"1137"}
!1731 = !DILocation(line: 101, column: 3, scope: !1728)
!1732 = !{!"1138"}
!1733 = !{!"1139"}
!1734 = !{!"1140"}
!1735 = !{!"1141"}
!1736 = !{!"1142"}
!1737 = !{!"1143"}
!1738 = !{!"1144"}
!1739 = !DILocalVariable(name: "x", scope: !1728, file: !3, line: 101, type: !6)
!1740 = !{!"1145"}
!1741 = !{!"1146"}
!1742 = !{!"1147"}
!1743 = !{!"1148"}
!1744 = !{!"1149"}
!1745 = !{!"1150"}
!1746 = !DILocalVariable(name: "os", scope: !1747, file: !3, line: 101, type: !29)
!1747 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1748 = !DILocation(line: 0, scope: !1747)
!1749 = !{!"1151"}
!1750 = !DILocation(line: 101, column: 3, scope: !1747)
!1751 = !{!"1152"}
!1752 = !{!"1153"}
!1753 = !{!"1154"}
!1754 = !{!"1155"}
!1755 = !{!"1156"}
!1756 = !{!"1157"}
!1757 = !{!"1158"}
!1758 = !DILocalVariable(name: "x", scope: !1747, file: !3, line: 101, type: !6)
!1759 = !{!"1159"}
!1760 = !{!"1160"}
!1761 = !{!"1161"}
!1762 = !{!"1162"}
!1763 = !{!"1163"}
!1764 = !{!"1164"}
!1765 = !DILocalVariable(name: "os", scope: !1766, file: !3, line: 101, type: !29)
!1766 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1767 = !DILocation(line: 0, scope: !1766)
!1768 = !{!"1165"}
!1769 = !DILocation(line: 101, column: 3, scope: !1766)
!1770 = !{!"1166"}
!1771 = !{!"1167"}
!1772 = !{!"1168"}
!1773 = !{!"1169"}
!1774 = !{!"1170"}
!1775 = !{!"1171"}
!1776 = !{!"1172"}
!1777 = !DILocalVariable(name: "x", scope: !1766, file: !3, line: 101, type: !6)
!1778 = !{!"1173"}
!1779 = !{!"1174"}
!1780 = !{!"1175"}
!1781 = !{!"1176"}
!1782 = !{!"1177"}
!1783 = !{!"1178"}
!1784 = !DILocalVariable(name: "os", scope: !1785, file: !3, line: 101, type: !29)
!1785 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1786 = !DILocation(line: 0, scope: !1785)
!1787 = !{!"1179"}
!1788 = !DILocation(line: 101, column: 3, scope: !1785)
!1789 = !{!"1180"}
!1790 = !{!"1181"}
!1791 = !{!"1182"}
!1792 = !{!"1183"}
!1793 = !{!"1184"}
!1794 = !{!"1185"}
!1795 = !{!"1186"}
!1796 = !DILocalVariable(name: "x", scope: !1785, file: !3, line: 101, type: !6)
!1797 = !{!"1187"}
!1798 = !{!"1188"}
!1799 = !{!"1189"}
!1800 = !{!"1190"}
!1801 = !{!"1191"}
!1802 = !{!"1192"}
!1803 = !DILocalVariable(name: "os", scope: !1804, file: !3, line: 101, type: !29)
!1804 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1805 = !DILocation(line: 0, scope: !1804)
!1806 = !{!"1193"}
!1807 = !DILocation(line: 101, column: 3, scope: !1804)
!1808 = !{!"1194"}
!1809 = !{!"1195"}
!1810 = !{!"1196"}
!1811 = !{!"1197"}
!1812 = !{!"1198"}
!1813 = !{!"1199"}
!1814 = !{!"1200"}
!1815 = !DILocalVariable(name: "x", scope: !1804, file: !3, line: 101, type: !6)
!1816 = !{!"1201"}
!1817 = !{!"1202"}
!1818 = !{!"1203"}
!1819 = !{!"1204"}
!1820 = !{!"1205"}
!1821 = !{!"1206"}
!1822 = !DILocalVariable(name: "os", scope: !1823, file: !3, line: 101, type: !29)
!1823 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 101, column: 3)
!1824 = !DILocation(line: 0, scope: !1823)
!1825 = !{!"1207"}
!1826 = !DILocation(line: 101, column: 3, scope: !1823)
!1827 = !{!"1208"}
!1828 = !{!"1209"}
!1829 = !{!"1210"}
!1830 = !{!"1211"}
!1831 = !{!"1212"}
!1832 = !{!"1213"}
!1833 = !{!"1214"}
!1834 = !DILocalVariable(name: "x", scope: !1823, file: !3, line: 101, type: !6)
!1835 = !{!"1215"}
!1836 = !{!"1216"}
!1837 = !{!"1217"}
!1838 = !{!"1218"}
!1839 = !{!"1219"}
!1840 = !{!"1220"}
!1841 = !DILocation(line: 101, column: 3, scope: !1534)
!1842 = !{!"1221"}
!1843 = !DILocation(line: 108, column: 12, scope: !1504)
!1844 = !{!"1222"}
!1845 = !{!"1223"}
!1846 = !DILocation(line: 108, column: 19, scope: !1504)
!1847 = !{!"1224"}
!1848 = !DILocation(line: 108, column: 3, scope: !1504)
!1849 = !{!"1225"}
!1850 = !DILocation(line: 108, column: 10, scope: !1504)
!1851 = !{!"1226"}
!1852 = !DILocation(line: 109, column: 1, scope: !1504)
!1853 = !{!"1227"}
!1854 = distinct !DISubprogram(name: "store32", scope: !398, file: !398, line: 182, type: !1855, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !30, !6}
!1857 = !{!"1228"}
!1858 = !DILocalVariable(name: "b", arg: 1, scope: !1854, file: !398, line: 182, type: !30)
!1859 = !DILocation(line: 0, scope: !1854)
!1860 = !{!"1229"}
!1861 = !{!"1230"}
!1862 = !DILocalVariable(name: "i", arg: 2, scope: !1854, file: !398, line: 182, type: !6)
!1863 = !DILocation(line: 182, column: 49, scope: !1854)
!1864 = !{!"1231"}
!1865 = !DILocation(line: 183, column: 3, scope: !1854)
!1866 = !{!"1232"}
!1867 = !{!"1233"}
!1868 = !DILocation(line: 184, column: 1, scope: !1854)
!1869 = !{!"1234"}
!1870 = distinct !DISubprogram(name: "rounds", scope: !3, file: !3, line: 81, type: !1871, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !29}
!1873 = !DILocalVariable(name: "st", arg: 1, scope: !1870, file: !3, line: 81, type: !29)
!1874 = !DILocation(line: 0, scope: !1870)
!1875 = !{!"1235"}
!1876 = !DILocation(line: 83, column: 3, scope: !1870)
!1877 = !{!"1236"}
!1878 = !DILocation(line: 84, column: 3, scope: !1870)
!1879 = !{!"1237"}
!1880 = !DILocation(line: 85, column: 3, scope: !1870)
!1881 = !{!"1238"}
!1882 = !DILocation(line: 86, column: 3, scope: !1870)
!1883 = !{!"1239"}
!1884 = !DILocation(line: 87, column: 3, scope: !1870)
!1885 = !{!"1240"}
!1886 = !DILocation(line: 88, column: 3, scope: !1870)
!1887 = !{!"1241"}
!1888 = !DILocation(line: 89, column: 3, scope: !1870)
!1889 = !{!"1242"}
!1890 = !DILocation(line: 90, column: 3, scope: !1870)
!1891 = !{!"1243"}
!1892 = !DILocation(line: 91, column: 3, scope: !1870)
!1893 = !{!"1244"}
!1894 = !DILocation(line: 92, column: 3, scope: !1870)
!1895 = !{!"1245"}
!1896 = !DILocation(line: 93, column: 1, scope: !1870)
!1897 = !{!"1246"}
!1898 = distinct !DISubprogram(name: "double_round", scope: !3, file: !3, line: 69, type: !1871, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1899 = !DILocalVariable(name: "st", arg: 1, scope: !1898, file: !3, line: 69, type: !29)
!1900 = !DILocation(line: 0, scope: !1898)
!1901 = !{!"1247"}
!1902 = !DILocation(line: 71, column: 3, scope: !1898)
!1903 = !{!"1248"}
!1904 = !DILocation(line: 72, column: 3, scope: !1898)
!1905 = !{!"1249"}
!1906 = !DILocation(line: 73, column: 3, scope: !1898)
!1907 = !{!"1250"}
!1908 = !DILocation(line: 74, column: 3, scope: !1898)
!1909 = !{!"1251"}
!1910 = !DILocation(line: 75, column: 3, scope: !1898)
!1911 = !{!"1252"}
!1912 = !DILocation(line: 76, column: 3, scope: !1898)
!1913 = !{!"1253"}
!1914 = !DILocation(line: 77, column: 3, scope: !1898)
!1915 = !{!"1254"}
!1916 = !DILocation(line: 78, column: 3, scope: !1898)
!1917 = !{!"1255"}
!1918 = !DILocation(line: 79, column: 1, scope: !1898)
!1919 = !{!"1256"}
!1920 = distinct !DISubprogram(name: "quarter_round", scope: !3, file: !3, line: 33, type: !1921, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !29, !6, !6, !6, !6}
!1923 = !DILocalVariable(name: "st", arg: 1, scope: !1920, file: !3, line: 33, type: !29)
!1924 = !DILocation(line: 0, scope: !1920)
!1925 = !{!"1257"}
!1926 = !DILocalVariable(name: "a", arg: 2, scope: !1920, file: !3, line: 33, type: !6)
!1927 = !{!"1258"}
!1928 = !DILocalVariable(name: "b", arg: 3, scope: !1920, file: !3, line: 33, type: !6)
!1929 = !{!"1259"}
!1930 = !DILocalVariable(name: "c", arg: 4, scope: !1920, file: !3, line: 33, type: !6)
!1931 = !{!"1260"}
!1932 = !DILocalVariable(name: "d", arg: 5, scope: !1920, file: !3, line: 33, type: !6)
!1933 = !{!"1261"}
!1934 = !DILocation(line: 35, column: 18, scope: !1920)
!1935 = !{!"1262"}
!1936 = !{!"1263"}
!1937 = !{!"1264"}
!1938 = !DILocalVariable(name: "sta", scope: !1920, file: !3, line: 35, type: !6)
!1939 = !{!"1265"}
!1940 = !DILocation(line: 36, column: 19, scope: !1920)
!1941 = !{!"1266"}
!1942 = !{!"1267"}
!1943 = !{!"1268"}
!1944 = !DILocalVariable(name: "stb0", scope: !1920, file: !3, line: 36, type: !6)
!1945 = !{!"1269"}
!1946 = !DILocation(line: 37, column: 19, scope: !1920)
!1947 = !{!"1270"}
!1948 = !{!"1271"}
!1949 = !{!"1272"}
!1950 = !DILocalVariable(name: "std0", scope: !1920, file: !3, line: 37, type: !6)
!1951 = !{!"1273"}
!1952 = !DILocation(line: 38, column: 24, scope: !1920)
!1953 = !{!"1274"}
!1954 = !DILocalVariable(name: "sta10", scope: !1920, file: !3, line: 38, type: !6)
!1955 = !{!"1275"}
!1956 = !DILocation(line: 39, column: 25, scope: !1920)
!1957 = !{!"1276"}
!1958 = !DILocalVariable(name: "std10", scope: !1920, file: !3, line: 39, type: !6)
!1959 = !{!"1277"}
!1960 = !DILocation(line: 40, column: 25, scope: !1920)
!1961 = !{!"1278"}
!1962 = !DILocation(line: 40, column: 50, scope: !1920)
!1963 = !{!"1279"}
!1964 = !DILocation(line: 40, column: 42, scope: !1920)
!1965 = !{!"1280"}
!1966 = !DILocalVariable(name: "std2", scope: !1920, file: !3, line: 40, type: !6)
!1967 = !{!"1281"}
!1968 = !DILocation(line: 41, column: 3, scope: !1920)
!1969 = !{!"1282"}
!1970 = !{!"1283"}
!1971 = !DILocation(line: 41, column: 9, scope: !1920)
!1972 = !{!"1284"}
!1973 = !DILocation(line: 42, column: 3, scope: !1920)
!1974 = !{!"1285"}
!1975 = !{!"1286"}
!1976 = !DILocation(line: 42, column: 9, scope: !1920)
!1977 = !{!"1287"}
!1978 = !DILocation(line: 43, column: 19, scope: !1920)
!1979 = !{!"1288"}
!1980 = !{!"1289"}
!1981 = !{!"1290"}
!1982 = !DILocalVariable(name: "sta0", scope: !1920, file: !3, line: 43, type: !6)
!1983 = !{!"1291"}
!1984 = !DILocation(line: 44, column: 19, scope: !1920)
!1985 = !{!"1292"}
!1986 = !{!"1293"}
!1987 = !{!"1294"}
!1988 = !DILocalVariable(name: "stb1", scope: !1920, file: !3, line: 44, type: !6)
!1989 = !{!"1295"}
!1990 = !DILocation(line: 45, column: 19, scope: !1920)
!1991 = !{!"1296"}
!1992 = !{!"1297"}
!1993 = !{!"1298"}
!1994 = !DILocalVariable(name: "std3", scope: !1920, file: !3, line: 45, type: !6)
!1995 = !{!"1299"}
!1996 = !DILocation(line: 46, column: 25, scope: !1920)
!1997 = !{!"1300"}
!1998 = !DILocalVariable(name: "sta11", scope: !1920, file: !3, line: 46, type: !6)
!1999 = !{!"1301"}
!2000 = !DILocation(line: 47, column: 25, scope: !1920)
!2001 = !{!"1302"}
!2002 = !DILocalVariable(name: "std11", scope: !1920, file: !3, line: 47, type: !6)
!2003 = !{!"1303"}
!2004 = !DILocation(line: 48, column: 26, scope: !1920)
!2005 = !{!"1304"}
!2006 = !DILocation(line: 48, column: 51, scope: !1920)
!2007 = !{!"1305"}
!2008 = !DILocation(line: 48, column: 43, scope: !1920)
!2009 = !{!"1306"}
!2010 = !DILocalVariable(name: "std20", scope: !1920, file: !3, line: 48, type: !6)
!2011 = !{!"1307"}
!2012 = !DILocation(line: 49, column: 3, scope: !1920)
!2013 = !{!"1308"}
!2014 = !{!"1309"}
!2015 = !DILocation(line: 49, column: 9, scope: !1920)
!2016 = !{!"1310"}
!2017 = !DILocation(line: 50, column: 3, scope: !1920)
!2018 = !{!"1311"}
!2019 = !{!"1312"}
!2020 = !DILocation(line: 50, column: 9, scope: !1920)
!2021 = !{!"1313"}
!2022 = !DILocation(line: 51, column: 19, scope: !1920)
!2023 = !{!"1314"}
!2024 = !{!"1315"}
!2025 = !{!"1316"}
!2026 = !DILocalVariable(name: "sta2", scope: !1920, file: !3, line: 51, type: !6)
!2027 = !{!"1317"}
!2028 = !DILocation(line: 52, column: 19, scope: !1920)
!2029 = !{!"1318"}
!2030 = !{!"1319"}
!2031 = !{!"1320"}
!2032 = !DILocalVariable(name: "stb2", scope: !1920, file: !3, line: 52, type: !6)
!2033 = !{!"1321"}
!2034 = !DILocation(line: 53, column: 19, scope: !1920)
!2035 = !{!"1322"}
!2036 = !{!"1323"}
!2037 = !{!"1324"}
!2038 = !DILocalVariable(name: "std4", scope: !1920, file: !3, line: 53, type: !6)
!2039 = !{!"1325"}
!2040 = !DILocation(line: 54, column: 25, scope: !1920)
!2041 = !{!"1326"}
!2042 = !DILocalVariable(name: "sta12", scope: !1920, file: !3, line: 54, type: !6)
!2043 = !{!"1327"}
!2044 = !DILocation(line: 55, column: 25, scope: !1920)
!2045 = !{!"1328"}
!2046 = !DILocalVariable(name: "std12", scope: !1920, file: !3, line: 55, type: !6)
!2047 = !{!"1329"}
!2048 = !DILocation(line: 56, column: 26, scope: !1920)
!2049 = !{!"1330"}
!2050 = !DILocation(line: 56, column: 50, scope: !1920)
!2051 = !{!"1331"}
!2052 = !DILocation(line: 56, column: 42, scope: !1920)
!2053 = !{!"1332"}
!2054 = !DILocalVariable(name: "std21", scope: !1920, file: !3, line: 56, type: !6)
!2055 = !{!"1333"}
!2056 = !DILocation(line: 57, column: 3, scope: !1920)
!2057 = !{!"1334"}
!2058 = !{!"1335"}
!2059 = !DILocation(line: 57, column: 9, scope: !1920)
!2060 = !{!"1336"}
!2061 = !DILocation(line: 58, column: 3, scope: !1920)
!2062 = !{!"1337"}
!2063 = !{!"1338"}
!2064 = !DILocation(line: 58, column: 9, scope: !1920)
!2065 = !{!"1339"}
!2066 = !DILocation(line: 59, column: 19, scope: !1920)
!2067 = !{!"1340"}
!2068 = !{!"1341"}
!2069 = !{!"1342"}
!2070 = !DILocalVariable(name: "sta3", scope: !1920, file: !3, line: 59, type: !6)
!2071 = !{!"1343"}
!2072 = !DILocation(line: 60, column: 18, scope: !1920)
!2073 = !{!"1344"}
!2074 = !{!"1345"}
!2075 = !{!"1346"}
!2076 = !DILocalVariable(name: "stb", scope: !1920, file: !3, line: 60, type: !6)
!2077 = !{!"1347"}
!2078 = !DILocation(line: 61, column: 18, scope: !1920)
!2079 = !{!"1348"}
!2080 = !{!"1349"}
!2081 = !{!"1350"}
!2082 = !DILocalVariable(name: "std", scope: !1920, file: !3, line: 61, type: !6)
!2083 = !{!"1351"}
!2084 = !DILocation(line: 62, column: 24, scope: !1920)
!2085 = !{!"1352"}
!2086 = !DILocalVariable(name: "sta1", scope: !1920, file: !3, line: 62, type: !6)
!2087 = !{!"1353"}
!2088 = !DILocation(line: 63, column: 23, scope: !1920)
!2089 = !{!"1354"}
!2090 = !DILocalVariable(name: "std1", scope: !1920, file: !3, line: 63, type: !6)
!2091 = !{!"1355"}
!2092 = !DILocation(line: 64, column: 25, scope: !1920)
!2093 = !{!"1356"}
!2094 = !DILocation(line: 64, column: 48, scope: !1920)
!2095 = !{!"1357"}
!2096 = !DILocation(line: 64, column: 41, scope: !1920)
!2097 = !{!"1358"}
!2098 = !DILocalVariable(name: "std22", scope: !1920, file: !3, line: 64, type: !6)
!2099 = !{!"1359"}
!2100 = !DILocation(line: 65, column: 3, scope: !1920)
!2101 = !{!"1360"}
!2102 = !{!"1361"}
!2103 = !DILocation(line: 65, column: 9, scope: !1920)
!2104 = !{!"1362"}
!2105 = !DILocation(line: 66, column: 3, scope: !1920)
!2106 = !{!"1363"}
!2107 = !{!"1364"}
!2108 = !DILocation(line: 66, column: 9, scope: !1920)
!2109 = !{!"1365"}
!2110 = !DILocation(line: 67, column: 1, scope: !1920)
!2111 = !{!"1366"}
!2112 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_encrypt", scope: !3, file: !3, line: 203, type: !2113, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !6, !30, !30, !30, !30, !6}
!2115 = !{!"1367"}
!2116 = !DILocalVariable(name: "len", arg: 1, scope: !2112, file: !3, line: 204, type: !6)
!2117 = !DILocation(line: 0, scope: !2112)
!2118 = !{!"1368"}
!2119 = !DILocalVariable(name: "out", arg: 2, scope: !2112, file: !3, line: 205, type: !30)
!2120 = !{!"1369"}
!2121 = !DILocalVariable(name: "text", arg: 3, scope: !2112, file: !3, line: 206, type: !30)
!2122 = !{!"1370"}
!2123 = !DILocalVariable(name: "key", arg: 4, scope: !2112, file: !3, line: 207, type: !30)
!2124 = !{!"1371"}
!2125 = !DILocalVariable(name: "n", arg: 5, scope: !2112, file: !3, line: 208, type: !30)
!2126 = !{!"1372"}
!2127 = !DILocalVariable(name: "ctr", arg: 6, scope: !2112, file: !3, line: 209, type: !6)
!2128 = !{!"1373"}
!2129 = !DILocalVariable(name: "ctx", scope: !2112, file: !3, line: 212, type: !521)
!2130 = !DILocation(line: 212, column: 12, scope: !2112)
!2131 = !{!"1374"}
!2132 = !{!"1375"}
!2133 = !{!"1376"}
!2134 = !DILocation(line: 213, column: 36, scope: !2112)
!2135 = !{!"1377"}
!2136 = !DILocation(line: 213, column: 3, scope: !2112)
!2137 = !{!"1378"}
!2138 = !DILocation(line: 214, column: 38, scope: !2112)
!2139 = !{!"1379"}
!2140 = !DILocation(line: 214, column: 3, scope: !2112)
!2141 = !{!"1380"}
!2142 = !DILocation(line: 215, column: 1, scope: !2112)
!2143 = !{!"1381"}
!2144 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_decrypt", scope: !3, file: !3, line: 218, type: !2113, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2145 = !{!"1382"}
!2146 = !DILocalVariable(name: "len", arg: 1, scope: !2144, file: !3, line: 219, type: !6)
!2147 = !DILocation(line: 0, scope: !2144)
!2148 = !{!"1383"}
!2149 = !DILocalVariable(name: "out", arg: 2, scope: !2144, file: !3, line: 220, type: !30)
!2150 = !{!"1384"}
!2151 = !DILocalVariable(name: "cipher", arg: 3, scope: !2144, file: !3, line: 221, type: !30)
!2152 = !{!"1385"}
!2153 = !DILocalVariable(name: "key", arg: 4, scope: !2144, file: !3, line: 222, type: !30)
!2154 = !{!"1386"}
!2155 = !DILocalVariable(name: "n", arg: 5, scope: !2144, file: !3, line: 223, type: !30)
!2156 = !{!"1387"}
!2157 = !DILocalVariable(name: "ctr", arg: 6, scope: !2144, file: !3, line: 224, type: !6)
!2158 = !{!"1388"}
!2159 = !DILocalVariable(name: "ctx", scope: !2144, file: !3, line: 227, type: !521)
!2160 = !DILocation(line: 227, column: 12, scope: !2144)
!2161 = !{!"1389"}
!2162 = !{!"1390"}
!2163 = !{!"1391"}
!2164 = !DILocation(line: 228, column: 36, scope: !2144)
!2165 = !{!"1392"}
!2166 = !DILocation(line: 228, column: 3, scope: !2144)
!2167 = !{!"1393"}
!2168 = !DILocation(line: 229, column: 38, scope: !2144)
!2169 = !{!"1394"}
!2170 = !DILocation(line: 229, column: 3, scope: !2144)
!2171 = !{!"1395"}
!2172 = !DILocation(line: 230, column: 1, scope: !2144)
!2173 = !{!"1396"}
!2174 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_encrypt_wrapper", scope: !21, file: !21, line: 3, type: !2113, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !4)
!2175 = !DILocalVariable(name: "len", arg: 1, scope: !2174, file: !21, line: 3, type: !6)
!2176 = !DILocation(line: 0, scope: !2174)
!2177 = !{!"1397"}
!2178 = !DILocalVariable(name: "out", arg: 2, scope: !2174, file: !21, line: 4, type: !30)
!2179 = !{!"1398"}
!2180 = !DILocalVariable(name: "cipher", arg: 3, scope: !2174, file: !21, line: 5, type: !30)
!2181 = !{!"1399"}
!2182 = !DILocalVariable(name: "key", arg: 4, scope: !2174, file: !21, line: 6, type: !30)
!2183 = !{!"1400"}
!2184 = !DILocalVariable(name: "n", arg: 5, scope: !2174, file: !21, line: 7, type: !30)
!2185 = !{!"1401"}
!2186 = !DILocalVariable(name: "ctr", arg: 6, scope: !2174, file: !21, line: 8, type: !6)
!2187 = !{!"1402"}
!2188 = !DILocation(line: 10, column: 13, scope: !2174)
!2189 = !{!"1403"}
!2190 = !DILocation(line: 10, column: 3, scope: !2174)
!2191 = !{!"1404"}
!2192 = !DILocation(line: 11, column: 13, scope: !2174)
!2193 = !{!"1405"}
!2194 = !DILocation(line: 11, column: 3, scope: !2174)
!2195 = !{!"1406"}
!2196 = !DILocation(line: 12, column: 13, scope: !2174)
!2197 = !{!"1407"}
!2198 = !DILocation(line: 12, column: 3, scope: !2174)
!2199 = !{!"1408"}
!2200 = !DILocation(line: 13, column: 13, scope: !2174)
!2201 = !{!"1409"}
!2202 = !DILocation(line: 13, column: 3, scope: !2174)
!2203 = !{!"1410"}
!2204 = !DILocation(line: 14, column: 13, scope: !2174)
!2205 = !{!"1411"}
!2206 = !DILocation(line: 14, column: 3, scope: !2174)
!2207 = !{!"1412"}
!2208 = !DILocation(line: 15, column: 13, scope: !2174)
!2209 = !{!"1413"}
!2210 = !DILocation(line: 15, column: 3, scope: !2174)
!2211 = !{!"1414"}
!2212 = !DILocation(line: 17, column: 13, scope: !2174)
!2213 = !{!"1415"}
!2214 = !DILocation(line: 17, column: 3, scope: !2174)
!2215 = !{!"1416"}
!2216 = !DILocation(line: 19, column: 3, scope: !2174)
!2217 = !{!"1417"}
!2218 = !DILocation(line: 20, column: 1, scope: !2174)
!2219 = !{!"1418"}
!2220 = distinct !DISubprogram(name: "Hacl_Chacha20_chacha20_encrypt_wrapper_t", scope: !21, file: !21, line: 27, type: !2221, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !4)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{null}
!2223 = !DILocation(line: 28, column: 17, scope: !2220)
!2224 = !{!"1419"}
!2225 = !DILocalVariable(name: "out", scope: !2220, file: !21, line: 28, type: !30)
!2226 = !DILocation(line: 0, scope: !2220)
!2227 = !{!"1420"}
!2228 = !DILocation(line: 29, column: 20, scope: !2220)
!2229 = !{!"1421"}
!2230 = !DILocalVariable(name: "cipher", scope: !2220, file: !21, line: 29, type: !30)
!2231 = !{!"1422"}
!2232 = !DILocation(line: 30, column: 18, scope: !2220)
!2233 = !{!"1423"}
!2234 = !DILocalVariable(name: "key", scope: !2220, file: !21, line: 30, type: !30)
!2235 = !{!"1424"}
!2236 = !DILocation(line: 31, column: 16, scope: !2220)
!2237 = !{!"1425"}
!2238 = !DILocalVariable(name: "n", scope: !2220, file: !21, line: 31, type: !30)
!2239 = !{!"1426"}
!2240 = !DILocation(line: 32, column: 18, scope: !2220)
!2241 = !{!"1427"}
!2242 = !DILocalVariable(name: "len", scope: !2220, file: !21, line: 32, type: !6)
!2243 = !{!"1428"}
!2244 = !DILocation(line: 33, column: 18, scope: !2220)
!2245 = !{!"1429"}
!2246 = !DILocalVariable(name: "ctr", scope: !2220, file: !21, line: 33, type: !6)
!2247 = !{!"1430"}
!2248 = !DILocation(line: 35, column: 2, scope: !2220)
!2249 = !{!"1431"}
!2250 = !DILocation(line: 36, column: 1, scope: !2220)
!2251 = !{!"1432"}
