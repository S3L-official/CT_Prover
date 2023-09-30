; ModuleID = 'key_sched.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

@Rcon = internal constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_bitslice_Sbox(i64* %0) #0 !dbg !27 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !31, metadata !DIExpression()), !dbg !32
  %2 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !33
  %3 = load i64, i64* %2, align 8, !dbg !33
  call void @llvm.dbg.value(metadata i64 %3, metadata !34, metadata !DIExpression()), !dbg !32
  %4 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !35
  %5 = load i64, i64* %4, align 8, !dbg !35
  call void @llvm.dbg.value(metadata i64 %5, metadata !36, metadata !DIExpression()), !dbg !32
  %6 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !37
  %7 = load i64, i64* %6, align 8, !dbg !37
  call void @llvm.dbg.value(metadata i64 %7, metadata !38, metadata !DIExpression()), !dbg !32
  %8 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !39
  %9 = load i64, i64* %8, align 8, !dbg !39
  call void @llvm.dbg.value(metadata i64 %9, metadata !40, metadata !DIExpression()), !dbg !32
  %10 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !41
  %11 = load i64, i64* %10, align 8, !dbg !41
  call void @llvm.dbg.value(metadata i64 %11, metadata !42, metadata !DIExpression()), !dbg !32
  %12 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !43
  %13 = load i64, i64* %12, align 8, !dbg !43
  call void @llvm.dbg.value(metadata i64 %13, metadata !44, metadata !DIExpression()), !dbg !32
  %14 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !45
  %15 = load i64, i64* %14, align 8, !dbg !45
  call void @llvm.dbg.value(metadata i64 %15, metadata !46, metadata !DIExpression()), !dbg !32
  %16 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !47
  %17 = load i64, i64* %16, align 8, !dbg !47
  call void @llvm.dbg.value(metadata i64 %17, metadata !48, metadata !DIExpression()), !dbg !32
  %18 = xor i64 %9, %13, !dbg !49
  call void @llvm.dbg.value(metadata i64 %18, metadata !50, metadata !DIExpression()), !dbg !32
  %19 = xor i64 %3, %15, !dbg !51
  call void @llvm.dbg.value(metadata i64 %19, metadata !52, metadata !DIExpression()), !dbg !32
  %20 = xor i64 %3, %9, !dbg !53
  call void @llvm.dbg.value(metadata i64 %20, metadata !54, metadata !DIExpression()), !dbg !32
  %21 = xor i64 %3, %13, !dbg !55
  call void @llvm.dbg.value(metadata i64 %21, metadata !56, metadata !DIExpression()), !dbg !32
  %22 = xor i64 %5, %7, !dbg !57
  call void @llvm.dbg.value(metadata i64 %22, metadata !58, metadata !DIExpression()), !dbg !32
  %23 = xor i64 %22, %17, !dbg !59
  call void @llvm.dbg.value(metadata i64 %23, metadata !60, metadata !DIExpression()), !dbg !32
  %24 = xor i64 %23, %9, !dbg !61
  call void @llvm.dbg.value(metadata i64 %24, metadata !62, metadata !DIExpression()), !dbg !32
  %25 = xor i64 %19, %18, !dbg !63
  call void @llvm.dbg.value(metadata i64 %25, metadata !64, metadata !DIExpression()), !dbg !32
  %26 = xor i64 %23, %3, !dbg !65
  call void @llvm.dbg.value(metadata i64 %26, metadata !66, metadata !DIExpression()), !dbg !32
  %27 = xor i64 %23, %15, !dbg !67
  call void @llvm.dbg.value(metadata i64 %27, metadata !68, metadata !DIExpression()), !dbg !32
  %28 = xor i64 %27, %21, !dbg !69
  call void @llvm.dbg.value(metadata i64 %28, metadata !70, metadata !DIExpression()), !dbg !32
  %29 = xor i64 %11, %25, !dbg !71
  call void @llvm.dbg.value(metadata i64 %29, metadata !72, metadata !DIExpression()), !dbg !32
  %30 = xor i64 %29, %13, !dbg !73
  call void @llvm.dbg.value(metadata i64 %30, metadata !74, metadata !DIExpression()), !dbg !32
  %31 = xor i64 %29, %5, !dbg !75
  call void @llvm.dbg.value(metadata i64 %31, metadata !76, metadata !DIExpression()), !dbg !32
  %32 = xor i64 %30, %17, !dbg !77
  call void @llvm.dbg.value(metadata i64 %32, metadata !78, metadata !DIExpression()), !dbg !32
  %33 = xor i64 %30, %22, !dbg !79
  call void @llvm.dbg.value(metadata i64 %33, metadata !80, metadata !DIExpression()), !dbg !32
  %34 = xor i64 %31, %20, !dbg !81
  call void @llvm.dbg.value(metadata i64 %34, metadata !82, metadata !DIExpression()), !dbg !32
  %35 = xor i64 %17, %34, !dbg !83
  call void @llvm.dbg.value(metadata i64 %35, metadata !84, metadata !DIExpression()), !dbg !32
  %36 = xor i64 %33, %34, !dbg !85
  call void @llvm.dbg.value(metadata i64 %36, metadata !86, metadata !DIExpression()), !dbg !32
  %37 = xor i64 %33, %21, !dbg !87
  call void @llvm.dbg.value(metadata i64 %37, metadata !88, metadata !DIExpression()), !dbg !32
  %38 = xor i64 %22, %34, !dbg !89
  call void @llvm.dbg.value(metadata i64 %38, metadata !90, metadata !DIExpression()), !dbg !32
  %39 = xor i64 %19, %38, !dbg !91
  call void @llvm.dbg.value(metadata i64 %39, metadata !92, metadata !DIExpression()), !dbg !32
  %40 = xor i64 %3, %38, !dbg !93
  call void @llvm.dbg.value(metadata i64 %40, metadata !94, metadata !DIExpression()), !dbg !32
  %41 = and i64 %25, %30, !dbg !95
  call void @llvm.dbg.value(metadata i64 %41, metadata !96, metadata !DIExpression()), !dbg !32
  %42 = and i64 %28, %32, !dbg !97
  call void @llvm.dbg.value(metadata i64 %42, metadata !98, metadata !DIExpression()), !dbg !32
  %43 = xor i64 %42, %41, !dbg !99
  call void @llvm.dbg.value(metadata i64 %43, metadata !100, metadata !DIExpression()), !dbg !32
  %44 = and i64 %24, %17, !dbg !101
  call void @llvm.dbg.value(metadata i64 %44, metadata !102, metadata !DIExpression()), !dbg !32
  %45 = xor i64 %44, %41, !dbg !103
  call void @llvm.dbg.value(metadata i64 %45, metadata !104, metadata !DIExpression()), !dbg !32
  %46 = and i64 %19, %38, !dbg !105
  call void @llvm.dbg.value(metadata i64 %46, metadata !106, metadata !DIExpression()), !dbg !32
  %47 = and i64 %27, %23, !dbg !107
  call void @llvm.dbg.value(metadata i64 %47, metadata !108, metadata !DIExpression()), !dbg !32
  %48 = xor i64 %47, %46, !dbg !109
  call void @llvm.dbg.value(metadata i64 %48, metadata !110, metadata !DIExpression()), !dbg !32
  %49 = and i64 %26, %35, !dbg !111
  call void @llvm.dbg.value(metadata i64 %49, metadata !112, metadata !DIExpression()), !dbg !32
  %50 = xor i64 %49, %46, !dbg !113
  call void @llvm.dbg.value(metadata i64 %50, metadata !114, metadata !DIExpression()), !dbg !32
  %51 = and i64 %20, %34, !dbg !115
  call void @llvm.dbg.value(metadata i64 %51, metadata !116, metadata !DIExpression()), !dbg !32
  %52 = and i64 %18, %36, !dbg !117
  call void @llvm.dbg.value(metadata i64 %52, metadata !118, metadata !DIExpression()), !dbg !32
  %53 = xor i64 %52, %51, !dbg !119
  call void @llvm.dbg.value(metadata i64 %53, metadata !120, metadata !DIExpression()), !dbg !32
  %54 = and i64 %21, %33, !dbg !121
  call void @llvm.dbg.value(metadata i64 %54, metadata !122, metadata !DIExpression()), !dbg !32
  %55 = xor i64 %54, %51, !dbg !123
  call void @llvm.dbg.value(metadata i64 %55, metadata !124, metadata !DIExpression()), !dbg !32
  %56 = xor i64 %43, %53, !dbg !125
  call void @llvm.dbg.value(metadata i64 %56, metadata !126, metadata !DIExpression()), !dbg !32
  %57 = xor i64 %45, %55, !dbg !127
  call void @llvm.dbg.value(metadata i64 %57, metadata !128, metadata !DIExpression()), !dbg !32
  %58 = xor i64 %48, %53, !dbg !129
  call void @llvm.dbg.value(metadata i64 %58, metadata !130, metadata !DIExpression()), !dbg !32
  %59 = xor i64 %50, %55, !dbg !131
  call void @llvm.dbg.value(metadata i64 %59, metadata !132, metadata !DIExpression()), !dbg !32
  %60 = xor i64 %56, %31, !dbg !133
  call void @llvm.dbg.value(metadata i64 %60, metadata !134, metadata !DIExpression()), !dbg !32
  %61 = xor i64 %57, %37, !dbg !135
  call void @llvm.dbg.value(metadata i64 %61, metadata !136, metadata !DIExpression()), !dbg !32
  %62 = xor i64 %58, %39, !dbg !137
  call void @llvm.dbg.value(metadata i64 %62, metadata !138, metadata !DIExpression()), !dbg !32
  %63 = xor i64 %59, %40, !dbg !139
  call void @llvm.dbg.value(metadata i64 %63, metadata !140, metadata !DIExpression()), !dbg !32
  %64 = xor i64 %60, %61, !dbg !141
  call void @llvm.dbg.value(metadata i64 %64, metadata !142, metadata !DIExpression()), !dbg !32
  %65 = and i64 %60, %62, !dbg !143
  call void @llvm.dbg.value(metadata i64 %65, metadata !144, metadata !DIExpression()), !dbg !32
  %66 = xor i64 %63, %65, !dbg !145
  call void @llvm.dbg.value(metadata i64 %66, metadata !146, metadata !DIExpression()), !dbg !32
  %67 = and i64 %64, %66, !dbg !147
  call void @llvm.dbg.value(metadata i64 %67, metadata !148, metadata !DIExpression()), !dbg !32
  %68 = xor i64 %67, %61, !dbg !149
  call void @llvm.dbg.value(metadata i64 %68, metadata !150, metadata !DIExpression()), !dbg !32
  %69 = xor i64 %62, %63, !dbg !151
  call void @llvm.dbg.value(metadata i64 %69, metadata !152, metadata !DIExpression()), !dbg !32
  %70 = xor i64 %61, %65, !dbg !153
  call void @llvm.dbg.value(metadata i64 %70, metadata !154, metadata !DIExpression()), !dbg !32
  %71 = and i64 %70, %69, !dbg !155
  call void @llvm.dbg.value(metadata i64 %71, metadata !156, metadata !DIExpression()), !dbg !32
  %72 = xor i64 %71, %63, !dbg !157
  call void @llvm.dbg.value(metadata i64 %72, metadata !158, metadata !DIExpression()), !dbg !32
  %73 = xor i64 %62, %72, !dbg !159
  call void @llvm.dbg.value(metadata i64 %73, metadata !160, metadata !DIExpression()), !dbg !32
  %74 = xor i64 %66, %72, !dbg !161
  call void @llvm.dbg.value(metadata i64 %74, metadata !162, metadata !DIExpression()), !dbg !32
  %75 = and i64 %63, %74, !dbg !163
  call void @llvm.dbg.value(metadata i64 %75, metadata !164, metadata !DIExpression()), !dbg !32
  %76 = xor i64 %75, %73, !dbg !165
  call void @llvm.dbg.value(metadata i64 %76, metadata !166, metadata !DIExpression()), !dbg !32
  %77 = xor i64 %66, %75, !dbg !167
  call void @llvm.dbg.value(metadata i64 %77, metadata !168, metadata !DIExpression()), !dbg !32
  %78 = and i64 %68, %77, !dbg !169
  call void @llvm.dbg.value(metadata i64 %78, metadata !170, metadata !DIExpression()), !dbg !32
  %79 = xor i64 %64, %78, !dbg !171
  call void @llvm.dbg.value(metadata i64 %79, metadata !172, metadata !DIExpression()), !dbg !32
  %80 = xor i64 %79, %76, !dbg !173
  call void @llvm.dbg.value(metadata i64 %80, metadata !174, metadata !DIExpression()), !dbg !32
  %81 = xor i64 %68, %72, !dbg !175
  call void @llvm.dbg.value(metadata i64 %81, metadata !176, metadata !DIExpression()), !dbg !32
  %82 = xor i64 %68, %79, !dbg !177
  call void @llvm.dbg.value(metadata i64 %82, metadata !178, metadata !DIExpression()), !dbg !32
  %83 = xor i64 %72, %76, !dbg !179
  call void @llvm.dbg.value(metadata i64 %83, metadata !180, metadata !DIExpression()), !dbg !32
  %84 = xor i64 %81, %80, !dbg !181
  call void @llvm.dbg.value(metadata i64 %84, metadata !182, metadata !DIExpression()), !dbg !32
  %85 = and i64 %83, %30, !dbg !183
  call void @llvm.dbg.value(metadata i64 %85, metadata !184, metadata !DIExpression()), !dbg !32
  %86 = and i64 %76, %32, !dbg !185
  call void @llvm.dbg.value(metadata i64 %86, metadata !186, metadata !DIExpression()), !dbg !32
  %87 = and i64 %72, %17, !dbg !187
  call void @llvm.dbg.value(metadata i64 %87, metadata !188, metadata !DIExpression()), !dbg !32
  %88 = and i64 %82, %38, !dbg !189
  call void @llvm.dbg.value(metadata i64 %88, metadata !190, metadata !DIExpression()), !dbg !32
  %89 = and i64 %79, %23, !dbg !191
  call void @llvm.dbg.value(metadata i64 %89, metadata !192, metadata !DIExpression()), !dbg !32
  %90 = and i64 %68, %35, !dbg !193
  call void @llvm.dbg.value(metadata i64 %90, metadata !194, metadata !DIExpression()), !dbg !32
  %91 = and i64 %81, %34, !dbg !195
  call void @llvm.dbg.value(metadata i64 %91, metadata !196, metadata !DIExpression()), !dbg !32
  %92 = and i64 %84, %36, !dbg !197
  call void @llvm.dbg.value(metadata i64 %92, metadata !198, metadata !DIExpression()), !dbg !32
  %93 = and i64 %80, %33, !dbg !199
  call void @llvm.dbg.value(metadata i64 %93, metadata !200, metadata !DIExpression()), !dbg !32
  %94 = and i64 %83, %25, !dbg !201
  call void @llvm.dbg.value(metadata i64 %94, metadata !202, metadata !DIExpression()), !dbg !32
  %95 = and i64 %76, %28, !dbg !203
  call void @llvm.dbg.value(metadata i64 %95, metadata !204, metadata !DIExpression()), !dbg !32
  %96 = and i64 %72, %24, !dbg !205
  call void @llvm.dbg.value(metadata i64 %96, metadata !206, metadata !DIExpression()), !dbg !32
  %97 = and i64 %82, %19, !dbg !207
  call void @llvm.dbg.value(metadata i64 %97, metadata !208, metadata !DIExpression()), !dbg !32
  %98 = and i64 %79, %27, !dbg !209
  call void @llvm.dbg.value(metadata i64 %98, metadata !210, metadata !DIExpression()), !dbg !32
  %99 = and i64 %68, %26, !dbg !211
  call void @llvm.dbg.value(metadata i64 %99, metadata !212, metadata !DIExpression()), !dbg !32
  %100 = and i64 %81, %20, !dbg !213
  call void @llvm.dbg.value(metadata i64 %100, metadata !214, metadata !DIExpression()), !dbg !32
  %101 = and i64 %84, %18, !dbg !215
  call void @llvm.dbg.value(metadata i64 %101, metadata !216, metadata !DIExpression()), !dbg !32
  %102 = and i64 %80, %21, !dbg !217
  call void @llvm.dbg.value(metadata i64 %102, metadata !218, metadata !DIExpression()), !dbg !32
  %103 = xor i64 %100, %101, !dbg !219
  call void @llvm.dbg.value(metadata i64 %103, metadata !220, metadata !DIExpression()), !dbg !32
  %104 = xor i64 %95, %96, !dbg !221
  call void @llvm.dbg.value(metadata i64 %104, metadata !222, metadata !DIExpression()), !dbg !32
  %105 = xor i64 %90, %98, !dbg !223
  call void @llvm.dbg.value(metadata i64 %105, metadata !224, metadata !DIExpression()), !dbg !32
  %106 = xor i64 %94, %95, !dbg !225
  call void @llvm.dbg.value(metadata i64 %106, metadata !226, metadata !DIExpression()), !dbg !32
  %107 = xor i64 %87, %97, !dbg !227
  call void @llvm.dbg.value(metadata i64 %107, metadata !228, metadata !DIExpression()), !dbg !32
  %108 = xor i64 %87, %90, !dbg !229
  call void @llvm.dbg.value(metadata i64 %108, metadata !230, metadata !DIExpression()), !dbg !32
  %109 = xor i64 %92, %93, !dbg !231
  call void @llvm.dbg.value(metadata i64 %109, metadata !232, metadata !DIExpression()), !dbg !32
  %110 = xor i64 %85, %88, !dbg !233
  call void @llvm.dbg.value(metadata i64 %110, metadata !234, metadata !DIExpression()), !dbg !32
  %111 = xor i64 %91, %92, !dbg !235
  call void @llvm.dbg.value(metadata i64 %111, metadata !236, metadata !DIExpression()), !dbg !32
  %112 = xor i64 %101, %102, !dbg !237
  call void @llvm.dbg.value(metadata i64 %112, metadata !238, metadata !DIExpression()), !dbg !32
  %113 = xor i64 %97, %105, !dbg !239
  call void @llvm.dbg.value(metadata i64 %113, metadata !240, metadata !DIExpression()), !dbg !32
  %114 = xor i64 %107, %110, !dbg !241
  call void @llvm.dbg.value(metadata i64 %114, metadata !242, metadata !DIExpression()), !dbg !32
  %115 = xor i64 %89, %103, !dbg !243
  call void @llvm.dbg.value(metadata i64 %115, metadata !244, metadata !DIExpression()), !dbg !32
  %116 = xor i64 %88, %111, !dbg !245
  call void @llvm.dbg.value(metadata i64 %116, metadata !246, metadata !DIExpression()), !dbg !32
  %117 = xor i64 %103, %114, !dbg !247
  call void @llvm.dbg.value(metadata i64 %117, metadata !248, metadata !DIExpression()), !dbg !32
  %118 = xor i64 %99, %114, !dbg !249
  call void @llvm.dbg.value(metadata i64 %118, metadata !250, metadata !DIExpression()), !dbg !32
  %119 = xor i64 %109, %115, !dbg !251
  call void @llvm.dbg.value(metadata i64 %119, metadata !252, metadata !DIExpression()), !dbg !32
  %120 = xor i64 %106, %115, !dbg !253
  call void @llvm.dbg.value(metadata i64 %120, metadata !254, metadata !DIExpression()), !dbg !32
  %121 = xor i64 %89, %116, !dbg !255
  call void @llvm.dbg.value(metadata i64 %121, metadata !256, metadata !DIExpression()), !dbg !32
  %122 = xor i64 %118, %119, !dbg !257
  call void @llvm.dbg.value(metadata i64 %122, metadata !258, metadata !DIExpression()), !dbg !32
  %123 = xor i64 %86, %120, !dbg !259
  call void @llvm.dbg.value(metadata i64 %123, metadata !260, metadata !DIExpression()), !dbg !32
  %124 = xor i64 %116, %120, !dbg !261
  call void @llvm.dbg.value(metadata i64 %124, metadata !262, metadata !DIExpression()), !dbg !32
  %125 = xor i64 %119, -1, !dbg !263
  %126 = xor i64 %113, %125, !dbg !264
  call void @llvm.dbg.value(metadata i64 %126, metadata !265, metadata !DIExpression()), !dbg !32
  %127 = xor i64 %117, -1, !dbg !266
  %128 = xor i64 %105, %127, !dbg !267
  call void @llvm.dbg.value(metadata i64 %128, metadata !268, metadata !DIExpression()), !dbg !32
  %129 = xor i64 %121, %122, !dbg !269
  call void @llvm.dbg.value(metadata i64 %129, metadata !270, metadata !DIExpression()), !dbg !32
  %130 = xor i64 %110, %123, !dbg !271
  call void @llvm.dbg.value(metadata i64 %130, metadata !272, metadata !DIExpression()), !dbg !32
  %131 = xor i64 %108, %123, !dbg !273
  call void @llvm.dbg.value(metadata i64 %131, metadata !274, metadata !DIExpression()), !dbg !32
  %132 = xor i64 %104, %122, !dbg !275
  call void @llvm.dbg.value(metadata i64 %132, metadata !276, metadata !DIExpression()), !dbg !32
  %133 = xor i64 %130, -1, !dbg !277
  %134 = xor i64 %121, %133, !dbg !278
  call void @llvm.dbg.value(metadata i64 %134, metadata !279, metadata !DIExpression()), !dbg !32
  %135 = xor i64 %129, -1, !dbg !280
  %136 = xor i64 %112, %135, !dbg !281
  call void @llvm.dbg.value(metadata i64 %136, metadata !282, metadata !DIExpression()), !dbg !32
  %137 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !283
  store i64 %124, i64* %137, align 8, !dbg !284
  %138 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !285
  store i64 %134, i64* %138, align 8, !dbg !286
  %139 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !287
  store i64 %136, i64* %139, align 8, !dbg !288
  %140 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !289
  store i64 %130, i64* %140, align 8, !dbg !290
  %141 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !291
  store i64 %131, i64* %141, align 8, !dbg !292
  %142 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !293
  store i64 %132, i64* %142, align 8, !dbg !294
  %143 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !295
  store i64 %126, i64* %143, align 8, !dbg !296
  %144 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !297
  store i64 %128, i64* %144, align 8, !dbg !298
  ret void, !dbg !299
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_ortho(i64* %0) #0 !dbg !300 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !301, metadata !DIExpression()), !dbg !302
  br label %2, !dbg !303

2:                                                ; preds = %1
  %3 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !304
  %4 = load i64, i64* %3, align 8, !dbg !304
  call void @llvm.dbg.value(metadata i64 %4, metadata !306, metadata !DIExpression()), !dbg !307
  %5 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !304
  %6 = load i64, i64* %5, align 8, !dbg !304
  call void @llvm.dbg.value(metadata i64 %6, metadata !308, metadata !DIExpression()), !dbg !307
  %7 = and i64 %4, 6148914691236517205, !dbg !304
  %8 = and i64 %6, 6148914691236517205, !dbg !304
  %9 = shl i64 %8, 1, !dbg !304
  %10 = or i64 %7, %9, !dbg !304
  %11 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !304
  store i64 %10, i64* %11, align 8, !dbg !304
  %12 = and i64 %4, -6148914691236517206, !dbg !304
  %13 = lshr i64 %12, 1, !dbg !304
  %14 = and i64 %6, -6148914691236517206, !dbg !304
  %15 = or i64 %13, %14, !dbg !304
  %16 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !304
  store i64 %15, i64* %16, align 8, !dbg !304
  br label %17, !dbg !304

17:                                               ; preds = %2
  br label %18, !dbg !309

18:                                               ; preds = %17
  %19 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !310
  %20 = load i64, i64* %19, align 8, !dbg !310
  call void @llvm.dbg.value(metadata i64 %20, metadata !312, metadata !DIExpression()), !dbg !313
  %21 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !310
  %22 = load i64, i64* %21, align 8, !dbg !310
  call void @llvm.dbg.value(metadata i64 %22, metadata !314, metadata !DIExpression()), !dbg !313
  %23 = and i64 %20, 6148914691236517205, !dbg !310
  %24 = and i64 %22, 6148914691236517205, !dbg !310
  %25 = shl i64 %24, 1, !dbg !310
  %26 = or i64 %23, %25, !dbg !310
  %27 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !310
  store i64 %26, i64* %27, align 8, !dbg !310
  %28 = and i64 %20, -6148914691236517206, !dbg !310
  %29 = lshr i64 %28, 1, !dbg !310
  %30 = and i64 %22, -6148914691236517206, !dbg !310
  %31 = or i64 %29, %30, !dbg !310
  %32 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !310
  store i64 %31, i64* %32, align 8, !dbg !310
  br label %33, !dbg !310

33:                                               ; preds = %18
  br label %34, !dbg !315

34:                                               ; preds = %33
  %35 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !316
  %36 = load i64, i64* %35, align 8, !dbg !316
  call void @llvm.dbg.value(metadata i64 %36, metadata !318, metadata !DIExpression()), !dbg !319
  %37 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !316
  %38 = load i64, i64* %37, align 8, !dbg !316
  call void @llvm.dbg.value(metadata i64 %38, metadata !320, metadata !DIExpression()), !dbg !319
  %39 = and i64 %36, 6148914691236517205, !dbg !316
  %40 = and i64 %38, 6148914691236517205, !dbg !316
  %41 = shl i64 %40, 1, !dbg !316
  %42 = or i64 %39, %41, !dbg !316
  %43 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !316
  store i64 %42, i64* %43, align 8, !dbg !316
  %44 = and i64 %36, -6148914691236517206, !dbg !316
  %45 = lshr i64 %44, 1, !dbg !316
  %46 = and i64 %38, -6148914691236517206, !dbg !316
  %47 = or i64 %45, %46, !dbg !316
  %48 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !316
  store i64 %47, i64* %48, align 8, !dbg !316
  br label %49, !dbg !316

49:                                               ; preds = %34
  br label %50, !dbg !321

50:                                               ; preds = %49
  %51 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !322
  %52 = load i64, i64* %51, align 8, !dbg !322
  call void @llvm.dbg.value(metadata i64 %52, metadata !324, metadata !DIExpression()), !dbg !325
  %53 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !322
  %54 = load i64, i64* %53, align 8, !dbg !322
  call void @llvm.dbg.value(metadata i64 %54, metadata !326, metadata !DIExpression()), !dbg !325
  %55 = and i64 %52, 6148914691236517205, !dbg !322
  %56 = and i64 %54, 6148914691236517205, !dbg !322
  %57 = shl i64 %56, 1, !dbg !322
  %58 = or i64 %55, %57, !dbg !322
  %59 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !322
  store i64 %58, i64* %59, align 8, !dbg !322
  %60 = and i64 %52, -6148914691236517206, !dbg !322
  %61 = lshr i64 %60, 1, !dbg !322
  %62 = and i64 %54, -6148914691236517206, !dbg !322
  %63 = or i64 %61, %62, !dbg !322
  %64 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !322
  store i64 %63, i64* %64, align 8, !dbg !322
  br label %65, !dbg !322

65:                                               ; preds = %50
  br label %66, !dbg !327

66:                                               ; preds = %65
  %67 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !328
  %68 = load i64, i64* %67, align 8, !dbg !328
  call void @llvm.dbg.value(metadata i64 %68, metadata !330, metadata !DIExpression()), !dbg !331
  %69 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !328
  %70 = load i64, i64* %69, align 8, !dbg !328
  call void @llvm.dbg.value(metadata i64 %70, metadata !332, metadata !DIExpression()), !dbg !331
  %71 = and i64 %68, 3689348814741910323, !dbg !328
  %72 = and i64 %70, 3689348814741910323, !dbg !328
  %73 = shl i64 %72, 2, !dbg !328
  %74 = or i64 %71, %73, !dbg !328
  %75 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !328
  store i64 %74, i64* %75, align 8, !dbg !328
  %76 = and i64 %68, -3689348814741910324, !dbg !328
  %77 = lshr i64 %76, 2, !dbg !328
  %78 = and i64 %70, -3689348814741910324, !dbg !328
  %79 = or i64 %77, %78, !dbg !328
  %80 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !328
  store i64 %79, i64* %80, align 8, !dbg !328
  br label %81, !dbg !328

81:                                               ; preds = %66
  br label %82, !dbg !333

82:                                               ; preds = %81
  %83 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !334
  %84 = load i64, i64* %83, align 8, !dbg !334
  call void @llvm.dbg.value(metadata i64 %84, metadata !336, metadata !DIExpression()), !dbg !337
  %85 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !334
  %86 = load i64, i64* %85, align 8, !dbg !334
  call void @llvm.dbg.value(metadata i64 %86, metadata !338, metadata !DIExpression()), !dbg !337
  %87 = and i64 %84, 3689348814741910323, !dbg !334
  %88 = and i64 %86, 3689348814741910323, !dbg !334
  %89 = shl i64 %88, 2, !dbg !334
  %90 = or i64 %87, %89, !dbg !334
  %91 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !334
  store i64 %90, i64* %91, align 8, !dbg !334
  %92 = and i64 %84, -3689348814741910324, !dbg !334
  %93 = lshr i64 %92, 2, !dbg !334
  %94 = and i64 %86, -3689348814741910324, !dbg !334
  %95 = or i64 %93, %94, !dbg !334
  %96 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !334
  store i64 %95, i64* %96, align 8, !dbg !334
  br label %97, !dbg !334

97:                                               ; preds = %82
  br label %98, !dbg !339

98:                                               ; preds = %97
  %99 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !340
  %100 = load i64, i64* %99, align 8, !dbg !340
  call void @llvm.dbg.value(metadata i64 %100, metadata !342, metadata !DIExpression()), !dbg !343
  %101 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !340
  %102 = load i64, i64* %101, align 8, !dbg !340
  call void @llvm.dbg.value(metadata i64 %102, metadata !344, metadata !DIExpression()), !dbg !343
  %103 = and i64 %100, 3689348814741910323, !dbg !340
  %104 = and i64 %102, 3689348814741910323, !dbg !340
  %105 = shl i64 %104, 2, !dbg !340
  %106 = or i64 %103, %105, !dbg !340
  %107 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !340
  store i64 %106, i64* %107, align 8, !dbg !340
  %108 = and i64 %100, -3689348814741910324, !dbg !340
  %109 = lshr i64 %108, 2, !dbg !340
  %110 = and i64 %102, -3689348814741910324, !dbg !340
  %111 = or i64 %109, %110, !dbg !340
  %112 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !340
  store i64 %111, i64* %112, align 8, !dbg !340
  br label %113, !dbg !340

113:                                              ; preds = %98
  br label %114, !dbg !345

114:                                              ; preds = %113
  %115 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !346
  %116 = load i64, i64* %115, align 8, !dbg !346
  call void @llvm.dbg.value(metadata i64 %116, metadata !348, metadata !DIExpression()), !dbg !349
  %117 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !346
  %118 = load i64, i64* %117, align 8, !dbg !346
  call void @llvm.dbg.value(metadata i64 %118, metadata !350, metadata !DIExpression()), !dbg !349
  %119 = and i64 %116, 3689348814741910323, !dbg !346
  %120 = and i64 %118, 3689348814741910323, !dbg !346
  %121 = shl i64 %120, 2, !dbg !346
  %122 = or i64 %119, %121, !dbg !346
  %123 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !346
  store i64 %122, i64* %123, align 8, !dbg !346
  %124 = and i64 %116, -3689348814741910324, !dbg !346
  %125 = lshr i64 %124, 2, !dbg !346
  %126 = and i64 %118, -3689348814741910324, !dbg !346
  %127 = or i64 %125, %126, !dbg !346
  %128 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !346
  store i64 %127, i64* %128, align 8, !dbg !346
  br label %129, !dbg !346

129:                                              ; preds = %114
  br label %130, !dbg !351

130:                                              ; preds = %129
  %131 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !352
  %132 = load i64, i64* %131, align 8, !dbg !352
  call void @llvm.dbg.value(metadata i64 %132, metadata !354, metadata !DIExpression()), !dbg !355
  %133 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !352
  %134 = load i64, i64* %133, align 8, !dbg !352
  call void @llvm.dbg.value(metadata i64 %134, metadata !356, metadata !DIExpression()), !dbg !355
  %135 = and i64 %132, 1085102592571150095, !dbg !352
  %136 = and i64 %134, 1085102592571150095, !dbg !352
  %137 = shl i64 %136, 4, !dbg !352
  %138 = or i64 %135, %137, !dbg !352
  %139 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !352
  store i64 %138, i64* %139, align 8, !dbg !352
  %140 = and i64 %132, -1085102592571150096, !dbg !352
  %141 = lshr i64 %140, 4, !dbg !352
  %142 = and i64 %134, -1085102592571150096, !dbg !352
  %143 = or i64 %141, %142, !dbg !352
  %144 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !352
  store i64 %143, i64* %144, align 8, !dbg !352
  br label %145, !dbg !352

145:                                              ; preds = %130
  br label %146, !dbg !357

146:                                              ; preds = %145
  %147 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !358
  %148 = load i64, i64* %147, align 8, !dbg !358
  call void @llvm.dbg.value(metadata i64 %148, metadata !360, metadata !DIExpression()), !dbg !361
  %149 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !358
  %150 = load i64, i64* %149, align 8, !dbg !358
  call void @llvm.dbg.value(metadata i64 %150, metadata !362, metadata !DIExpression()), !dbg !361
  %151 = and i64 %148, 1085102592571150095, !dbg !358
  %152 = and i64 %150, 1085102592571150095, !dbg !358
  %153 = shl i64 %152, 4, !dbg !358
  %154 = or i64 %151, %153, !dbg !358
  %155 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !358
  store i64 %154, i64* %155, align 8, !dbg !358
  %156 = and i64 %148, -1085102592571150096, !dbg !358
  %157 = lshr i64 %156, 4, !dbg !358
  %158 = and i64 %150, -1085102592571150096, !dbg !358
  %159 = or i64 %157, %158, !dbg !358
  %160 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !358
  store i64 %159, i64* %160, align 8, !dbg !358
  br label %161, !dbg !358

161:                                              ; preds = %146
  br label %162, !dbg !363

162:                                              ; preds = %161
  %163 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !364
  %164 = load i64, i64* %163, align 8, !dbg !364
  call void @llvm.dbg.value(metadata i64 %164, metadata !366, metadata !DIExpression()), !dbg !367
  %165 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !364
  %166 = load i64, i64* %165, align 8, !dbg !364
  call void @llvm.dbg.value(metadata i64 %166, metadata !368, metadata !DIExpression()), !dbg !367
  %167 = and i64 %164, 1085102592571150095, !dbg !364
  %168 = and i64 %166, 1085102592571150095, !dbg !364
  %169 = shl i64 %168, 4, !dbg !364
  %170 = or i64 %167, %169, !dbg !364
  %171 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !364
  store i64 %170, i64* %171, align 8, !dbg !364
  %172 = and i64 %164, -1085102592571150096, !dbg !364
  %173 = lshr i64 %172, 4, !dbg !364
  %174 = and i64 %166, -1085102592571150096, !dbg !364
  %175 = or i64 %173, %174, !dbg !364
  %176 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !364
  store i64 %175, i64* %176, align 8, !dbg !364
  br label %177, !dbg !364

177:                                              ; preds = %162
  br label %178, !dbg !369

178:                                              ; preds = %177
  %179 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !370
  %180 = load i64, i64* %179, align 8, !dbg !370
  call void @llvm.dbg.value(metadata i64 %180, metadata !372, metadata !DIExpression()), !dbg !373
  %181 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !370
  %182 = load i64, i64* %181, align 8, !dbg !370
  call void @llvm.dbg.value(metadata i64 %182, metadata !374, metadata !DIExpression()), !dbg !373
  %183 = and i64 %180, 1085102592571150095, !dbg !370
  %184 = and i64 %182, 1085102592571150095, !dbg !370
  %185 = shl i64 %184, 4, !dbg !370
  %186 = or i64 %183, %185, !dbg !370
  %187 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !370
  store i64 %186, i64* %187, align 8, !dbg !370
  %188 = and i64 %180, -1085102592571150096, !dbg !370
  %189 = lshr i64 %188, 4, !dbg !370
  %190 = and i64 %182, -1085102592571150096, !dbg !370
  %191 = or i64 %189, %190, !dbg !370
  %192 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !370
  store i64 %191, i64* %192, align 8, !dbg !370
  br label %193, !dbg !370

193:                                              ; preds = %178
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_interleave_in(i64* %0, i64* %1, i32* %2) #0 !dbg !376 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !381, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64* %1, metadata !383, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32* %2, metadata !384, metadata !DIExpression()), !dbg !382
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !385
  %5 = load i32, i32* %4, align 4, !dbg !385
  %6 = zext i32 %5 to i64, !dbg !385
  call void @llvm.dbg.value(metadata i64 %6, metadata !386, metadata !DIExpression()), !dbg !382
  %7 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !387
  %8 = load i32, i32* %7, align 4, !dbg !387
  %9 = zext i32 %8 to i64, !dbg !387
  call void @llvm.dbg.value(metadata i64 %9, metadata !388, metadata !DIExpression()), !dbg !382
  %10 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !389
  %11 = load i32, i32* %10, align 4, !dbg !389
  %12 = zext i32 %11 to i64, !dbg !389
  call void @llvm.dbg.value(metadata i64 %12, metadata !390, metadata !DIExpression()), !dbg !382
  %13 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !391
  %14 = load i32, i32* %13, align 4, !dbg !391
  %15 = zext i32 %14 to i64, !dbg !391
  call void @llvm.dbg.value(metadata i64 %15, metadata !392, metadata !DIExpression()), !dbg !382
  %16 = shl i64 %6, 16, !dbg !393
  %17 = or i64 %6, %16, !dbg !394
  call void @llvm.dbg.value(metadata i64 %17, metadata !386, metadata !DIExpression()), !dbg !382
  %18 = shl i64 %9, 16, !dbg !395
  %19 = or i64 %9, %18, !dbg !396
  call void @llvm.dbg.value(metadata i64 %19, metadata !388, metadata !DIExpression()), !dbg !382
  %20 = shl i64 %12, 16, !dbg !397
  %21 = or i64 %12, %20, !dbg !398
  call void @llvm.dbg.value(metadata i64 %21, metadata !390, metadata !DIExpression()), !dbg !382
  %22 = shl i64 %15, 16, !dbg !399
  %23 = or i64 %15, %22, !dbg !400
  call void @llvm.dbg.value(metadata i64 %23, metadata !392, metadata !DIExpression()), !dbg !382
  %24 = and i64 %17, 281470681808895, !dbg !401
  call void @llvm.dbg.value(metadata i64 %24, metadata !386, metadata !DIExpression()), !dbg !382
  %25 = and i64 %19, 281470681808895, !dbg !402
  call void @llvm.dbg.value(metadata i64 %25, metadata !388, metadata !DIExpression()), !dbg !382
  %26 = and i64 %21, 281470681808895, !dbg !403
  call void @llvm.dbg.value(metadata i64 %26, metadata !390, metadata !DIExpression()), !dbg !382
  %27 = and i64 %23, 281470681808895, !dbg !404
  call void @llvm.dbg.value(metadata i64 %27, metadata !392, metadata !DIExpression()), !dbg !382
  %28 = shl i64 %24, 8, !dbg !405
  %29 = or i64 %24, %28, !dbg !406
  call void @llvm.dbg.value(metadata i64 %29, metadata !386, metadata !DIExpression()), !dbg !382
  %30 = shl i64 %25, 8, !dbg !407
  %31 = or i64 %25, %30, !dbg !408
  call void @llvm.dbg.value(metadata i64 %31, metadata !388, metadata !DIExpression()), !dbg !382
  %32 = shl i64 %26, 8, !dbg !409
  %33 = or i64 %26, %32, !dbg !410
  call void @llvm.dbg.value(metadata i64 %33, metadata !390, metadata !DIExpression()), !dbg !382
  %34 = shl i64 %27, 8, !dbg !411
  %35 = or i64 %27, %34, !dbg !412
  call void @llvm.dbg.value(metadata i64 %35, metadata !392, metadata !DIExpression()), !dbg !382
  %36 = and i64 %29, 71777214294589695, !dbg !413
  call void @llvm.dbg.value(metadata i64 %36, metadata !386, metadata !DIExpression()), !dbg !382
  %37 = and i64 %31, 71777214294589695, !dbg !414
  call void @llvm.dbg.value(metadata i64 %37, metadata !388, metadata !DIExpression()), !dbg !382
  %38 = and i64 %33, 71777214294589695, !dbg !415
  call void @llvm.dbg.value(metadata i64 %38, metadata !390, metadata !DIExpression()), !dbg !382
  %39 = and i64 %35, 71777214294589695, !dbg !416
  call void @llvm.dbg.value(metadata i64 %39, metadata !392, metadata !DIExpression()), !dbg !382
  %40 = shl i64 %38, 8, !dbg !417
  %41 = or i64 %36, %40, !dbg !418
  store i64 %41, i64* %0, align 8, !dbg !419
  %42 = shl i64 %39, 8, !dbg !420
  %43 = or i64 %37, %42, !dbg !421
  store i64 %43, i64* %1, align 8, !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_interleave_out(i32* %0, i64 %1, i64 %2) #0 !dbg !424 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i64 %1, metadata !430, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i64 %2, metadata !431, metadata !DIExpression()), !dbg !429
  %4 = and i64 %1, 71777214294589695, !dbg !432
  call void @llvm.dbg.value(metadata i64 %4, metadata !433, metadata !DIExpression()), !dbg !429
  %5 = and i64 %2, 71777214294589695, !dbg !434
  call void @llvm.dbg.value(metadata i64 %5, metadata !435, metadata !DIExpression()), !dbg !429
  %6 = lshr i64 %1, 8, !dbg !436
  %7 = and i64 %6, 71777214294589695, !dbg !437
  call void @llvm.dbg.value(metadata i64 %7, metadata !438, metadata !DIExpression()), !dbg !429
  %8 = lshr i64 %2, 8, !dbg !439
  %9 = and i64 %8, 71777214294589695, !dbg !440
  call void @llvm.dbg.value(metadata i64 %9, metadata !441, metadata !DIExpression()), !dbg !429
  %10 = lshr i64 %4, 8, !dbg !442
  %11 = or i64 %4, %10, !dbg !443
  call void @llvm.dbg.value(metadata i64 %11, metadata !433, metadata !DIExpression()), !dbg !429
  %12 = lshr i64 %5, 8, !dbg !444
  %13 = or i64 %5, %12, !dbg !445
  call void @llvm.dbg.value(metadata i64 %13, metadata !435, metadata !DIExpression()), !dbg !429
  %14 = lshr i64 %7, 8, !dbg !446
  %15 = or i64 %7, %14, !dbg !447
  call void @llvm.dbg.value(metadata i64 %15, metadata !438, metadata !DIExpression()), !dbg !429
  %16 = lshr i64 %9, 8, !dbg !448
  %17 = or i64 %9, %16, !dbg !449
  call void @llvm.dbg.value(metadata i64 %17, metadata !441, metadata !DIExpression()), !dbg !429
  %18 = and i64 %11, 281470681808895, !dbg !450
  call void @llvm.dbg.value(metadata i64 %18, metadata !433, metadata !DIExpression()), !dbg !429
  %19 = and i64 %13, 281470681808895, !dbg !451
  call void @llvm.dbg.value(metadata i64 %19, metadata !435, metadata !DIExpression()), !dbg !429
  %20 = and i64 %15, 281470681808895, !dbg !452
  call void @llvm.dbg.value(metadata i64 %20, metadata !438, metadata !DIExpression()), !dbg !429
  %21 = and i64 %17, 281470681808895, !dbg !453
  call void @llvm.dbg.value(metadata i64 %21, metadata !441, metadata !DIExpression()), !dbg !429
  %22 = trunc i64 %18 to i32, !dbg !454
  %23 = lshr i64 %18, 16, !dbg !455
  %24 = trunc i64 %23 to i32, !dbg !456
  %25 = or i32 %22, %24, !dbg !457
  %26 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !458
  store i32 %25, i32* %26, align 4, !dbg !459
  %27 = trunc i64 %19 to i32, !dbg !460
  %28 = lshr i64 %19, 16, !dbg !461
  %29 = trunc i64 %28 to i32, !dbg !462
  %30 = or i32 %27, %29, !dbg !463
  %31 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !464
  store i32 %30, i32* %31, align 4, !dbg !465
  %32 = trunc i64 %20 to i32, !dbg !466
  %33 = lshr i64 %20, 16, !dbg !467
  %34 = trunc i64 %33 to i32, !dbg !468
  %35 = or i32 %32, %34, !dbg !469
  %36 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !470
  store i32 %35, i32* %36, align 4, !dbg !471
  %37 = trunc i64 %21 to i32, !dbg !472
  %38 = lshr i64 %21, 16, !dbg !473
  %39 = trunc i64 %38 to i32, !dbg !474
  %40 = or i32 %37, %39, !dbg !475
  %41 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !476
  store i32 %40, i32* %41, align 4, !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_ct64_keysched(i64* %0, i8* %1, i64 %2) #0 !dbg !479 {
  %4 = alloca [60 x i32], align 16
  %5 = alloca [8 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !486, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i8* %1, metadata !488, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %2, metadata !489, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.declare(metadata [60 x i32]* %4, metadata !490, metadata !DIExpression()), !dbg !494
  switch i64 %2, label %9 [
    i64 16, label %6
    i64 24, label %7
    i64 32, label %8
  ], !dbg !495

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !496, metadata !DIExpression()), !dbg !487
  br label %10, !dbg !497

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 12, metadata !496, metadata !DIExpression()), !dbg !487
  br label %10, !dbg !499

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 14, metadata !496, metadata !DIExpression()), !dbg !487
  br label %10, !dbg !500

9:                                                ; preds = %3
  br label %125, !dbg !501

10:                                               ; preds = %8, %7, %6
  %.07 = phi i32 [ 14, %8 ], [ 12, %7 ], [ 10, %6 ], !dbg !502
  call void @llvm.dbg.value(metadata i32 %.07, metadata !496, metadata !DIExpression()), !dbg !487
  %11 = lshr i64 %2, 2, !dbg !503
  %12 = trunc i64 %11 to i32, !dbg !504
  call void @llvm.dbg.value(metadata i32 %12, metadata !505, metadata !DIExpression()), !dbg !487
  %13 = add i32 %.07, 1, !dbg !506
  %14 = shl i32 %13, 2, !dbg !507
  call void @llvm.dbg.value(metadata i32 %14, metadata !508, metadata !DIExpression()), !dbg !487
  %15 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 0, !dbg !509
  %16 = lshr i64 %2, 2, !dbg !510
  call void @br_range_dec32le(i32* %15, i64 %16, i8* %1), !dbg !511
  %17 = lshr i64 %2, 2, !dbg !512
  %18 = sub i64 %17, 1, !dbg !513
  %19 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %18, !dbg !514
  %20 = load i32, i32* %19, align 4, !dbg !514
  call void @llvm.dbg.value(metadata i32 %20, metadata !515, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 %12, metadata !516, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 0, metadata !518, metadata !DIExpression()), !dbg !487
  br label %21, !dbg !519

21:                                               ; preds = %55, %10
  %.08 = phi i32 [ %12, %10 ], [ %56, %55 ], !dbg !521
  %.04 = phi i32 [ 0, %10 ], [ %.15, %55 ], !dbg !521
  %.02 = phi i32 [ 0, %10 ], [ %.13, %55 ], !dbg !521
  %.01 = phi i32 [ %20, %10 ], [ %47, %55 ], !dbg !487
  call void @llvm.dbg.value(metadata i32 %.01, metadata !515, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 %.02, metadata !518, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 %.04, metadata !517, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 %.08, metadata !516, metadata !DIExpression()), !dbg !487
  %22 = icmp slt i32 %.08, %14, !dbg !522
  br i1 %22, label %23, label %57, !dbg !524

23:                                               ; preds = %21
  %24 = icmp eq i32 %.04, 0, !dbg !525
  br i1 %24, label %25, label %35, !dbg !528

25:                                               ; preds = %23
  %26 = shl i32 %.01, 24, !dbg !529
  %27 = lshr i32 %.01, 8, !dbg !531
  %28 = or i32 %26, %27, !dbg !532
  call void @llvm.dbg.value(metadata i32 %28, metadata !515, metadata !DIExpression()), !dbg !487
  %29 = call i32 @sub_word(i32 %28), !dbg !533
  %30 = sext i32 %.02 to i64, !dbg !534
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* @Rcon, i64 0, i64 %30, !dbg !534
  %32 = load i8, i8* %31, align 1, !dbg !534
  %33 = zext i8 %32 to i32, !dbg !534
  %34 = xor i32 %29, %33, !dbg !535
  call void @llvm.dbg.value(metadata i32 %34, metadata !515, metadata !DIExpression()), !dbg !487
  br label %42, !dbg !536

35:                                               ; preds = %23
  %36 = icmp sgt i32 %12, 6, !dbg !537
  br i1 %36, label %37, label %41, !dbg !539

37:                                               ; preds = %35
  %38 = icmp eq i32 %.04, 4, !dbg !540
  br i1 %38, label %39, label %41, !dbg !541

39:                                               ; preds = %37
  %40 = call i32 @sub_word(i32 %.01), !dbg !542
  call void @llvm.dbg.value(metadata i32 %40, metadata !515, metadata !DIExpression()), !dbg !487
  br label %41, !dbg !544

41:                                               ; preds = %39, %37, %35
  %.1 = phi i32 [ %40, %39 ], [ %.01, %37 ], [ %.01, %35 ], !dbg !487
  call void @llvm.dbg.value(metadata i32 %.1, metadata !515, metadata !DIExpression()), !dbg !487
  br label %42

42:                                               ; preds = %41, %25
  %.2 = phi i32 [ %34, %25 ], [ %.1, %41 ], !dbg !545
  call void @llvm.dbg.value(metadata i32 %.2, metadata !515, metadata !DIExpression()), !dbg !487
  %43 = sub nsw i32 %.08, %12, !dbg !546
  %44 = sext i32 %43 to i64, !dbg !547
  %45 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %44, !dbg !547
  %46 = load i32, i32* %45, align 4, !dbg !547
  %47 = xor i32 %.2, %46, !dbg !548
  call void @llvm.dbg.value(metadata i32 %47, metadata !515, metadata !DIExpression()), !dbg !487
  %48 = sext i32 %.08 to i64, !dbg !549
  %49 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %48, !dbg !549
  store i32 %47, i32* %49, align 4, !dbg !550
  %50 = add nsw i32 %.04, 1, !dbg !551
  call void @llvm.dbg.value(metadata i32 %50, metadata !517, metadata !DIExpression()), !dbg !487
  %51 = icmp eq i32 %50, %12, !dbg !553
  br i1 %51, label %52, label %54, !dbg !554

52:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()), !dbg !487
  %53 = add nsw i32 %.02, 1, !dbg !555
  call void @llvm.dbg.value(metadata i32 %53, metadata !518, metadata !DIExpression()), !dbg !487
  br label %54, !dbg !557

54:                                               ; preds = %52, %42
  %.15 = phi i32 [ 0, %52 ], [ %50, %42 ], !dbg !558
  %.13 = phi i32 [ %53, %52 ], [ %.02, %42 ], !dbg !521
  call void @llvm.dbg.value(metadata i32 %.13, metadata !518, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 %.15, metadata !517, metadata !DIExpression()), !dbg !487
  br label %55, !dbg !559

55:                                               ; preds = %54
  %56 = add nsw i32 %.08, 1, !dbg !560
  call void @llvm.dbg.value(metadata i32 %56, metadata !516, metadata !DIExpression()), !dbg !487
  br label %21, !dbg !561, !llvm.loop !562

57:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 0, metadata !516, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()), !dbg !487
  br label %58, !dbg !565

58:                                               ; preds = %121, %57
  %.19 = phi i32 [ 0, %57 ], [ %122, %121 ], !dbg !567
  %.26 = phi i32 [ 0, %57 ], [ %123, %121 ], !dbg !567
  call void @llvm.dbg.value(metadata i32 %.26, metadata !517, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 %.19, metadata !516, metadata !DIExpression()), !dbg !487
  %59 = icmp slt i32 %.19, %14, !dbg !568
  br i1 %59, label %60, label %124, !dbg !570

60:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata [8 x i64]* %5, metadata !571, metadata !DIExpression()), !dbg !576
  %61 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !577
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !578
  %63 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 0, !dbg !579
  %64 = sext i32 %.19 to i64, !dbg !580
  %65 = getelementptr inbounds i32, i32* %63, i64 %64, !dbg !580
  call void @br_aes_ct64_interleave_in(i64* %61, i64* %62, i32* %65), !dbg !581
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !582
  %67 = load i64, i64* %66, align 16, !dbg !582
  %68 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1, !dbg !583
  store i64 %67, i64* %68, align 8, !dbg !584
  %69 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !585
  %70 = load i64, i64* %69, align 16, !dbg !585
  %71 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2, !dbg !586
  store i64 %70, i64* %71, align 16, !dbg !587
  %72 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !588
  %73 = load i64, i64* %72, align 16, !dbg !588
  %74 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3, !dbg !589
  store i64 %73, i64* %74, align 8, !dbg !590
  %75 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !591
  %76 = load i64, i64* %75, align 16, !dbg !591
  %77 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5, !dbg !592
  store i64 %76, i64* %77, align 8, !dbg !593
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !594
  %79 = load i64, i64* %78, align 16, !dbg !594
  %80 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6, !dbg !595
  store i64 %79, i64* %80, align 16, !dbg !596
  %81 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !597
  %82 = load i64, i64* %81, align 16, !dbg !597
  %83 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7, !dbg !598
  store i64 %82, i64* %83, align 8, !dbg !599
  %84 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !600
  call void @br_aes_ct64_ortho(i64* %84), !dbg !601
  %85 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !602
  %86 = load i64, i64* %85, align 16, !dbg !602
  %87 = and i64 %86, 1229782938247303441, !dbg !603
  %88 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1, !dbg !604
  %89 = load i64, i64* %88, align 8, !dbg !604
  %90 = and i64 %89, 2459565876494606882, !dbg !605
  %91 = or i64 %87, %90, !dbg !606
  %92 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2, !dbg !607
  %93 = load i64, i64* %92, align 16, !dbg !607
  %94 = and i64 %93, 4919131752989213764, !dbg !608
  %95 = or i64 %91, %94, !dbg !609
  %96 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3, !dbg !610
  %97 = load i64, i64* %96, align 8, !dbg !610
  %98 = and i64 %97, -8608480567731124088, !dbg !611
  %99 = or i64 %95, %98, !dbg !612
  %100 = add nsw i32 %.26, 0, !dbg !613
  %101 = sext i32 %100 to i64, !dbg !614
  %102 = getelementptr inbounds i64, i64* %0, i64 %101, !dbg !614
  store i64 %99, i64* %102, align 8, !dbg !615
  %103 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !616
  %104 = load i64, i64* %103, align 16, !dbg !616
  %105 = and i64 %104, 1229782938247303441, !dbg !617
  %106 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5, !dbg !618
  %107 = load i64, i64* %106, align 8, !dbg !618
  %108 = and i64 %107, 2459565876494606882, !dbg !619
  %109 = or i64 %105, %108, !dbg !620
  %110 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6, !dbg !621
  %111 = load i64, i64* %110, align 16, !dbg !621
  %112 = and i64 %111, 4919131752989213764, !dbg !622
  %113 = or i64 %109, %112, !dbg !623
  %114 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7, !dbg !624
  %115 = load i64, i64* %114, align 8, !dbg !624
  %116 = and i64 %115, -8608480567731124088, !dbg !625
  %117 = or i64 %113, %116, !dbg !626
  %118 = add nsw i32 %.26, 1, !dbg !627
  %119 = sext i32 %118 to i64, !dbg !628
  %120 = getelementptr inbounds i64, i64* %0, i64 %119, !dbg !628
  store i64 %117, i64* %120, align 8, !dbg !629
  br label %121, !dbg !630

121:                                              ; preds = %60
  %122 = add nsw i32 %.19, 4, !dbg !631
  call void @llvm.dbg.value(metadata i32 %122, metadata !516, metadata !DIExpression()), !dbg !487
  %123 = add nsw i32 %.26, 2, !dbg !632
  call void @llvm.dbg.value(metadata i32 %123, metadata !517, metadata !DIExpression()), !dbg !487
  br label %58, !dbg !633, !llvm.loop !634

124:                                              ; preds = %58
  br label %125, !dbg !636

125:                                              ; preds = %124, %9
  %.0 = phi i32 [ 0, %9 ], [ %.07, %124 ], !dbg !487
  ret i32 %.0, !dbg !637
}

declare dso_local void @br_range_dec32le(i32*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @sub_word(i32 %0) #0 !dbg !638 {
  %2 = alloca [8 x i64], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !641, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.declare(metadata [8 x i64]* %2, metadata !643, metadata !DIExpression()), !dbg !644
  %3 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !645
  %4 = bitcast i64* %3 to i8*, !dbg !645
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 64, i1 false), !dbg !645
  %5 = zext i32 %0 to i64, !dbg !646
  %6 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !647
  store i64 %5, i64* %6, align 16, !dbg !648
  %7 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !649
  call void @br_aes_ct64_ortho(i64* %7), !dbg !650
  %8 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !651
  call void @br_aes_ct64_bitslice_Sbox(i64* %8), !dbg !652
  %9 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !653
  call void @br_aes_ct64_ortho(i64* %9), !dbg !654
  %10 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !655
  %11 = load i64, i64* %10, align 16, !dbg !655
  %12 = trunc i64 %11 to i32, !dbg !656
  ret i32 %12, !dbg !657
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_skey_expand(i64* %0, i32 %1, i64* %2) #0 !dbg !658 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i32 %1, metadata !665, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i64* %2, metadata !666, metadata !DIExpression()), !dbg !664
  %4 = add i32 %1, 1, !dbg !667
  %5 = shl i32 %4, 1, !dbg !668
  call void @llvm.dbg.value(metadata i32 %5, metadata !669, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i32 0, metadata !670, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i32 0, metadata !671, metadata !DIExpression()), !dbg !664
  br label %6, !dbg !672

6:                                                ; preds = %39, %3
  %.01 = phi i32 [ 0, %3 ], [ %40, %39 ], !dbg !674
  %.0 = phi i32 [ 0, %3 ], [ %41, %39 ], !dbg !674
  call void @llvm.dbg.value(metadata i32 %.0, metadata !671, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i32 %.01, metadata !670, metadata !DIExpression()), !dbg !664
  %7 = icmp ult i32 %.01, %5, !dbg !675
  br i1 %7, label %8, label %42, !dbg !677

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64, !dbg !678
  %10 = getelementptr inbounds i64, i64* %2, i64 %9, !dbg !678
  %11 = load i64, i64* %10, align 8, !dbg !678
  call void @llvm.dbg.value(metadata i64 %11, metadata !680, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i64 %11, metadata !682, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i64 %11, metadata !683, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i64 %11, metadata !684, metadata !DIExpression()), !dbg !681
  %12 = and i64 %11, 1229782938247303441, !dbg !685
  call void @llvm.dbg.value(metadata i64 %12, metadata !684, metadata !DIExpression()), !dbg !681
  %13 = and i64 %11, 2459565876494606882, !dbg !686
  call void @llvm.dbg.value(metadata i64 %13, metadata !683, metadata !DIExpression()), !dbg !681
  %14 = and i64 %11, 4919131752989213764, !dbg !687
  call void @llvm.dbg.value(metadata i64 %14, metadata !682, metadata !DIExpression()), !dbg !681
  %15 = and i64 %11, -8608480567731124088, !dbg !688
  call void @llvm.dbg.value(metadata i64 %15, metadata !680, metadata !DIExpression()), !dbg !681
  %16 = lshr i64 %13, 1, !dbg !689
  call void @llvm.dbg.value(metadata i64 %16, metadata !683, metadata !DIExpression()), !dbg !681
  %17 = lshr i64 %14, 2, !dbg !690
  call void @llvm.dbg.value(metadata i64 %17, metadata !682, metadata !DIExpression()), !dbg !681
  %18 = lshr i64 %15, 3, !dbg !691
  call void @llvm.dbg.value(metadata i64 %18, metadata !680, metadata !DIExpression()), !dbg !681
  %19 = shl i64 %12, 4, !dbg !692
  %20 = sub i64 %19, %12, !dbg !693
  %21 = add i32 %.0, 0, !dbg !694
  %22 = zext i32 %21 to i64, !dbg !695
  %23 = getelementptr inbounds i64, i64* %0, i64 %22, !dbg !695
  store i64 %20, i64* %23, align 8, !dbg !696
  %24 = shl i64 %16, 4, !dbg !697
  %25 = sub i64 %24, %16, !dbg !698
  %26 = add i32 %.0, 1, !dbg !699
  %27 = zext i32 %26 to i64, !dbg !700
  %28 = getelementptr inbounds i64, i64* %0, i64 %27, !dbg !700
  store i64 %25, i64* %28, align 8, !dbg !701
  %29 = shl i64 %17, 4, !dbg !702
  %30 = sub i64 %29, %17, !dbg !703
  %31 = add i32 %.0, 2, !dbg !704
  %32 = zext i32 %31 to i64, !dbg !705
  %33 = getelementptr inbounds i64, i64* %0, i64 %32, !dbg !705
  store i64 %30, i64* %33, align 8, !dbg !706
  %34 = shl i64 %18, 4, !dbg !707
  %35 = sub i64 %34, %18, !dbg !708
  %36 = add i32 %.0, 3, !dbg !709
  %37 = zext i32 %36 to i64, !dbg !710
  %38 = getelementptr inbounds i64, i64* %0, i64 %37, !dbg !710
  store i64 %35, i64* %38, align 8, !dbg !711
  br label %39, !dbg !712

39:                                               ; preds = %8
  %40 = add i32 %.01, 1, !dbg !713
  call void @llvm.dbg.value(metadata i32 %40, metadata !670, metadata !DIExpression()), !dbg !664
  %41 = add i32 %.0, 4, !dbg !714
  call void @llvm.dbg.value(metadata i32 %41, metadata !671, metadata !DIExpression()), !dbg !664
  br label %6, !dbg !715, !llvm.loop !716

42:                                               ; preds = %6
  ret void, !dbg !718
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_sched_wrapper(i32* %0, i8* %1, i64 %2) #0 !dbg !719 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !722, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i8* %1, metadata !724, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i64 %2, metadata !725, metadata !DIExpression()), !dbg !723
  %4 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %0), !dbg !726
  call void @public_in(%struct.smack_value* %4), !dbg !727
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !728
  call void @public_in(%struct.smack_value* %5), !dbg !729
  %6 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !730
  call void @public_in(%struct.smack_value* %6), !dbg !731
  %7 = bitcast i32* %0 to i64*, !dbg !732
  %8 = call i32 @br_aes_ct64_keysched(i64* %7, i8* %1, i64 %2), !dbg !733
  ret void, !dbg !734
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_sched_wrapper_t() #0 !dbg !735 {
  %1 = call i64 (...) @getuns(), !dbg !738
  call void @llvm.dbg.value(metadata i64 %1, metadata !739, metadata !DIExpression()), !dbg !740
  %2 = call i32* (...) @getpt(), !dbg !741
  call void @llvm.dbg.value(metadata i32* %2, metadata !742, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8* bitcast (i8* (...)* @getkey to i8*), metadata !743, metadata !DIExpression()), !dbg !740
  %3 = bitcast i32* %2 to i64*, !dbg !744
  %4 = call i32 @br_aes_ct64_keysched(i64* %3, i8* bitcast (i8* (...)* @getkey to i8*), i64 %1), !dbg !745
  ret void, !dbg !746
}

declare dso_local i64 @getuns(...) #2

declare dso_local i32* @getpt(...) #2

declare dso_local i8* @getkey(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.dbg.cu = !{!2, !21}
!llvm.ident = !{!23, !23}
!llvm.module.flags = !{!24, !25, !26}

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
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "key_sched.c", directory: "/home/luwei/bech-back/BearSSL/AES_ct64")
!23 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!24 = !{i32 7, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !3, file: !3, line: 29, type: !28, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!31 = !DILocalVariable(name: "q", arg: 1, scope: !27, file: !3, line: 29, type: !30)
!32 = !DILocation(line: 0, scope: !27)
!33 = !DILocation(line: 56, column: 7, scope: !27)
!34 = !DILocalVariable(name: "x0", scope: !27, file: !3, line: 41, type: !6)
!35 = !DILocation(line: 57, column: 7, scope: !27)
!36 = !DILocalVariable(name: "x1", scope: !27, file: !3, line: 41, type: !6)
!37 = !DILocation(line: 58, column: 7, scope: !27)
!38 = !DILocalVariable(name: "x2", scope: !27, file: !3, line: 41, type: !6)
!39 = !DILocation(line: 59, column: 7, scope: !27)
!40 = !DILocalVariable(name: "x3", scope: !27, file: !3, line: 41, type: !6)
!41 = !DILocation(line: 60, column: 7, scope: !27)
!42 = !DILocalVariable(name: "x4", scope: !27, file: !3, line: 41, type: !6)
!43 = !DILocation(line: 61, column: 7, scope: !27)
!44 = !DILocalVariable(name: "x5", scope: !27, file: !3, line: 41, type: !6)
!45 = !DILocation(line: 62, column: 7, scope: !27)
!46 = !DILocalVariable(name: "x6", scope: !27, file: !3, line: 41, type: !6)
!47 = !DILocation(line: 63, column: 7, scope: !27)
!48 = !DILocalVariable(name: "x7", scope: !27, file: !3, line: 41, type: !6)
!49 = !DILocation(line: 68, column: 11, scope: !27)
!50 = !DILocalVariable(name: "y14", scope: !27, file: !3, line: 43, type: !6)
!51 = !DILocation(line: 69, column: 11, scope: !27)
!52 = !DILocalVariable(name: "y13", scope: !27, file: !3, line: 43, type: !6)
!53 = !DILocation(line: 70, column: 10, scope: !27)
!54 = !DILocalVariable(name: "y9", scope: !27, file: !3, line: 42, type: !6)
!55 = !DILocation(line: 71, column: 10, scope: !27)
!56 = !DILocalVariable(name: "y8", scope: !27, file: !3, line: 42, type: !6)
!57 = !DILocation(line: 72, column: 10, scope: !27)
!58 = !DILocalVariable(name: "t0", scope: !27, file: !3, line: 47, type: !6)
!59 = !DILocation(line: 73, column: 10, scope: !27)
!60 = !DILocalVariable(name: "y1", scope: !27, file: !3, line: 42, type: !6)
!61 = !DILocation(line: 74, column: 10, scope: !27)
!62 = !DILocalVariable(name: "y4", scope: !27, file: !3, line: 42, type: !6)
!63 = !DILocation(line: 75, column: 12, scope: !27)
!64 = !DILocalVariable(name: "y12", scope: !27, file: !3, line: 43, type: !6)
!65 = !DILocation(line: 76, column: 10, scope: !27)
!66 = !DILocalVariable(name: "y2", scope: !27, file: !3, line: 42, type: !6)
!67 = !DILocation(line: 77, column: 10, scope: !27)
!68 = !DILocalVariable(name: "y5", scope: !27, file: !3, line: 42, type: !6)
!69 = !DILocation(line: 78, column: 10, scope: !27)
!70 = !DILocalVariable(name: "y3", scope: !27, file: !3, line: 42, type: !6)
!71 = !DILocation(line: 79, column: 10, scope: !27)
!72 = !DILocalVariable(name: "t1", scope: !27, file: !3, line: 47, type: !6)
!73 = !DILocation(line: 80, column: 11, scope: !27)
!74 = !DILocalVariable(name: "y15", scope: !27, file: !3, line: 43, type: !6)
!75 = !DILocation(line: 81, column: 11, scope: !27)
!76 = !DILocalVariable(name: "y20", scope: !27, file: !3, line: 44, type: !6)
!77 = !DILocation(line: 82, column: 11, scope: !27)
!78 = !DILocalVariable(name: "y6", scope: !27, file: !3, line: 42, type: !6)
!79 = !DILocation(line: 83, column: 12, scope: !27)
!80 = !DILocalVariable(name: "y10", scope: !27, file: !3, line: 43, type: !6)
!81 = !DILocation(line: 84, column: 12, scope: !27)
!82 = !DILocalVariable(name: "y11", scope: !27, file: !3, line: 43, type: !6)
!83 = !DILocation(line: 85, column: 10, scope: !27)
!84 = !DILocalVariable(name: "y7", scope: !27, file: !3, line: 42, type: !6)
!85 = !DILocation(line: 86, column: 12, scope: !27)
!86 = !DILocalVariable(name: "y17", scope: !27, file: !3, line: 43, type: !6)
!87 = !DILocation(line: 87, column: 12, scope: !27)
!88 = !DILocalVariable(name: "y19", scope: !27, file: !3, line: 43, type: !6)
!89 = !DILocation(line: 88, column: 11, scope: !27)
!90 = !DILocalVariable(name: "y16", scope: !27, file: !3, line: 43, type: !6)
!91 = !DILocation(line: 89, column: 12, scope: !27)
!92 = !DILocalVariable(name: "y21", scope: !27, file: !3, line: 44, type: !6)
!93 = !DILocation(line: 90, column: 11, scope: !27)
!94 = !DILocalVariable(name: "y18", scope: !27, file: !3, line: 43, type: !6)
!95 = !DILocation(line: 95, column: 11, scope: !27)
!96 = !DILocalVariable(name: "t2", scope: !27, file: !3, line: 47, type: !6)
!97 = !DILocation(line: 96, column: 10, scope: !27)
!98 = !DILocalVariable(name: "t3", scope: !27, file: !3, line: 47, type: !6)
!99 = !DILocation(line: 97, column: 10, scope: !27)
!100 = !DILocalVariable(name: "t4", scope: !27, file: !3, line: 47, type: !6)
!101 = !DILocation(line: 98, column: 10, scope: !27)
!102 = !DILocalVariable(name: "t5", scope: !27, file: !3, line: 47, type: !6)
!103 = !DILocation(line: 99, column: 10, scope: !27)
!104 = !DILocalVariable(name: "t6", scope: !27, file: !3, line: 47, type: !6)
!105 = !DILocation(line: 100, column: 11, scope: !27)
!106 = !DILocalVariable(name: "t7", scope: !27, file: !3, line: 47, type: !6)
!107 = !DILocation(line: 101, column: 10, scope: !27)
!108 = !DILocalVariable(name: "t8", scope: !27, file: !3, line: 47, type: !6)
!109 = !DILocation(line: 102, column: 10, scope: !27)
!110 = !DILocalVariable(name: "t9", scope: !27, file: !3, line: 47, type: !6)
!111 = !DILocation(line: 103, column: 11, scope: !27)
!112 = !DILocalVariable(name: "t10", scope: !27, file: !3, line: 48, type: !6)
!113 = !DILocation(line: 104, column: 12, scope: !27)
!114 = !DILocalVariable(name: "t11", scope: !27, file: !3, line: 48, type: !6)
!115 = !DILocation(line: 105, column: 11, scope: !27)
!116 = !DILocalVariable(name: "t12", scope: !27, file: !3, line: 48, type: !6)
!117 = !DILocation(line: 106, column: 12, scope: !27)
!118 = !DILocalVariable(name: "t13", scope: !27, file: !3, line: 48, type: !6)
!119 = !DILocation(line: 107, column: 12, scope: !27)
!120 = !DILocalVariable(name: "t14", scope: !27, file: !3, line: 48, type: !6)
!121 = !DILocation(line: 108, column: 11, scope: !27)
!122 = !DILocalVariable(name: "t15", scope: !27, file: !3, line: 48, type: !6)
!123 = !DILocation(line: 109, column: 12, scope: !27)
!124 = !DILocalVariable(name: "t16", scope: !27, file: !3, line: 48, type: !6)
!125 = !DILocation(line: 110, column: 11, scope: !27)
!126 = !DILocalVariable(name: "t17", scope: !27, file: !3, line: 48, type: !6)
!127 = !DILocation(line: 111, column: 11, scope: !27)
!128 = !DILocalVariable(name: "t18", scope: !27, file: !3, line: 48, type: !6)
!129 = !DILocation(line: 112, column: 11, scope: !27)
!130 = !DILocalVariable(name: "t19", scope: !27, file: !3, line: 48, type: !6)
!131 = !DILocation(line: 113, column: 12, scope: !27)
!132 = !DILocalVariable(name: "t20", scope: !27, file: !3, line: 49, type: !6)
!133 = !DILocation(line: 114, column: 12, scope: !27)
!134 = !DILocalVariable(name: "t21", scope: !27, file: !3, line: 49, type: !6)
!135 = !DILocation(line: 115, column: 12, scope: !27)
!136 = !DILocalVariable(name: "t22", scope: !27, file: !3, line: 49, type: !6)
!137 = !DILocation(line: 116, column: 12, scope: !27)
!138 = !DILocalVariable(name: "t23", scope: !27, file: !3, line: 49, type: !6)
!139 = !DILocation(line: 117, column: 12, scope: !27)
!140 = !DILocalVariable(name: "t24", scope: !27, file: !3, line: 49, type: !6)
!141 = !DILocation(line: 119, column: 12, scope: !27)
!142 = !DILocalVariable(name: "t25", scope: !27, file: !3, line: 49, type: !6)
!143 = !DILocation(line: 120, column: 12, scope: !27)
!144 = !DILocalVariable(name: "t26", scope: !27, file: !3, line: 49, type: !6)
!145 = !DILocation(line: 121, column: 12, scope: !27)
!146 = !DILocalVariable(name: "t27", scope: !27, file: !3, line: 49, type: !6)
!147 = !DILocation(line: 122, column: 12, scope: !27)
!148 = !DILocalVariable(name: "t28", scope: !27, file: !3, line: 49, type: !6)
!149 = !DILocation(line: 123, column: 12, scope: !27)
!150 = !DILocalVariable(name: "t29", scope: !27, file: !3, line: 49, type: !6)
!151 = !DILocation(line: 124, column: 12, scope: !27)
!152 = !DILocalVariable(name: "t30", scope: !27, file: !3, line: 50, type: !6)
!153 = !DILocation(line: 125, column: 12, scope: !27)
!154 = !DILocalVariable(name: "t31", scope: !27, file: !3, line: 50, type: !6)
!155 = !DILocation(line: 126, column: 12, scope: !27)
!156 = !DILocalVariable(name: "t32", scope: !27, file: !3, line: 50, type: !6)
!157 = !DILocation(line: 127, column: 12, scope: !27)
!158 = !DILocalVariable(name: "t33", scope: !27, file: !3, line: 50, type: !6)
!159 = !DILocation(line: 128, column: 12, scope: !27)
!160 = !DILocalVariable(name: "t34", scope: !27, file: !3, line: 50, type: !6)
!161 = !DILocation(line: 129, column: 12, scope: !27)
!162 = !DILocalVariable(name: "t35", scope: !27, file: !3, line: 50, type: !6)
!163 = !DILocation(line: 130, column: 12, scope: !27)
!164 = !DILocalVariable(name: "t36", scope: !27, file: !3, line: 50, type: !6)
!165 = !DILocation(line: 131, column: 12, scope: !27)
!166 = !DILocalVariable(name: "t37", scope: !27, file: !3, line: 50, type: !6)
!167 = !DILocation(line: 132, column: 12, scope: !27)
!168 = !DILocalVariable(name: "t38", scope: !27, file: !3, line: 50, type: !6)
!169 = !DILocation(line: 133, column: 12, scope: !27)
!170 = !DILocalVariable(name: "t39", scope: !27, file: !3, line: 50, type: !6)
!171 = !DILocation(line: 134, column: 12, scope: !27)
!172 = !DILocalVariable(name: "t40", scope: !27, file: !3, line: 51, type: !6)
!173 = !DILocation(line: 136, column: 12, scope: !27)
!174 = !DILocalVariable(name: "t41", scope: !27, file: !3, line: 51, type: !6)
!175 = !DILocation(line: 137, column: 12, scope: !27)
!176 = !DILocalVariable(name: "t42", scope: !27, file: !3, line: 51, type: !6)
!177 = !DILocation(line: 138, column: 12, scope: !27)
!178 = !DILocalVariable(name: "t43", scope: !27, file: !3, line: 51, type: !6)
!179 = !DILocation(line: 139, column: 12, scope: !27)
!180 = !DILocalVariable(name: "t44", scope: !27, file: !3, line: 51, type: !6)
!181 = !DILocation(line: 140, column: 12, scope: !27)
!182 = !DILocalVariable(name: "t45", scope: !27, file: !3, line: 51, type: !6)
!183 = !DILocation(line: 141, column: 11, scope: !27)
!184 = !DILocalVariable(name: "z0", scope: !27, file: !3, line: 45, type: !6)
!185 = !DILocation(line: 142, column: 11, scope: !27)
!186 = !DILocalVariable(name: "z1", scope: !27, file: !3, line: 45, type: !6)
!187 = !DILocation(line: 143, column: 11, scope: !27)
!188 = !DILocalVariable(name: "z2", scope: !27, file: !3, line: 45, type: !6)
!189 = !DILocation(line: 144, column: 11, scope: !27)
!190 = !DILocalVariable(name: "z3", scope: !27, file: !3, line: 45, type: !6)
!191 = !DILocation(line: 145, column: 11, scope: !27)
!192 = !DILocalVariable(name: "z4", scope: !27, file: !3, line: 45, type: !6)
!193 = !DILocation(line: 146, column: 11, scope: !27)
!194 = !DILocalVariable(name: "z5", scope: !27, file: !3, line: 45, type: !6)
!195 = !DILocation(line: 147, column: 11, scope: !27)
!196 = !DILocalVariable(name: "z6", scope: !27, file: !3, line: 45, type: !6)
!197 = !DILocation(line: 148, column: 11, scope: !27)
!198 = !DILocalVariable(name: "z7", scope: !27, file: !3, line: 45, type: !6)
!199 = !DILocation(line: 149, column: 11, scope: !27)
!200 = !DILocalVariable(name: "z8", scope: !27, file: !3, line: 45, type: !6)
!201 = !DILocation(line: 150, column: 11, scope: !27)
!202 = !DILocalVariable(name: "z9", scope: !27, file: !3, line: 45, type: !6)
!203 = !DILocation(line: 151, column: 12, scope: !27)
!204 = !DILocalVariable(name: "z10", scope: !27, file: !3, line: 46, type: !6)
!205 = !DILocation(line: 152, column: 12, scope: !27)
!206 = !DILocalVariable(name: "z11", scope: !27, file: !3, line: 46, type: !6)
!207 = !DILocation(line: 153, column: 12, scope: !27)
!208 = !DILocalVariable(name: "z12", scope: !27, file: !3, line: 46, type: !6)
!209 = !DILocation(line: 154, column: 12, scope: !27)
!210 = !DILocalVariable(name: "z13", scope: !27, file: !3, line: 46, type: !6)
!211 = !DILocation(line: 155, column: 12, scope: !27)
!212 = !DILocalVariable(name: "z14", scope: !27, file: !3, line: 46, type: !6)
!213 = !DILocation(line: 156, column: 12, scope: !27)
!214 = !DILocalVariable(name: "z15", scope: !27, file: !3, line: 46, type: !6)
!215 = !DILocation(line: 157, column: 12, scope: !27)
!216 = !DILocalVariable(name: "z16", scope: !27, file: !3, line: 46, type: !6)
!217 = !DILocation(line: 158, column: 12, scope: !27)
!218 = !DILocalVariable(name: "z17", scope: !27, file: !3, line: 46, type: !6)
!219 = !DILocation(line: 163, column: 12, scope: !27)
!220 = !DILocalVariable(name: "t46", scope: !27, file: !3, line: 51, type: !6)
!221 = !DILocation(line: 164, column: 12, scope: !27)
!222 = !DILocalVariable(name: "t47", scope: !27, file: !3, line: 51, type: !6)
!223 = !DILocation(line: 165, column: 11, scope: !27)
!224 = !DILocalVariable(name: "t48", scope: !27, file: !3, line: 51, type: !6)
!225 = !DILocation(line: 166, column: 11, scope: !27)
!226 = !DILocalVariable(name: "t49", scope: !27, file: !3, line: 51, type: !6)
!227 = !DILocation(line: 167, column: 11, scope: !27)
!228 = !DILocalVariable(name: "t50", scope: !27, file: !3, line: 52, type: !6)
!229 = !DILocation(line: 168, column: 11, scope: !27)
!230 = !DILocalVariable(name: "t51", scope: !27, file: !3, line: 52, type: !6)
!231 = !DILocation(line: 169, column: 11, scope: !27)
!232 = !DILocalVariable(name: "t52", scope: !27, file: !3, line: 52, type: !6)
!233 = !DILocation(line: 170, column: 11, scope: !27)
!234 = !DILocalVariable(name: "t53", scope: !27, file: !3, line: 52, type: !6)
!235 = !DILocation(line: 171, column: 11, scope: !27)
!236 = !DILocalVariable(name: "t54", scope: !27, file: !3, line: 52, type: !6)
!237 = !DILocation(line: 172, column: 12, scope: !27)
!238 = !DILocalVariable(name: "t55", scope: !27, file: !3, line: 52, type: !6)
!239 = !DILocation(line: 173, column: 12, scope: !27)
!240 = !DILocalVariable(name: "t56", scope: !27, file: !3, line: 52, type: !6)
!241 = !DILocation(line: 174, column: 12, scope: !27)
!242 = !DILocalVariable(name: "t57", scope: !27, file: !3, line: 52, type: !6)
!243 = !DILocation(line: 175, column: 11, scope: !27)
!244 = !DILocalVariable(name: "t58", scope: !27, file: !3, line: 52, type: !6)
!245 = !DILocation(line: 176, column: 11, scope: !27)
!246 = !DILocalVariable(name: "t59", scope: !27, file: !3, line: 52, type: !6)
!247 = !DILocation(line: 177, column: 12, scope: !27)
!248 = !DILocalVariable(name: "t60", scope: !27, file: !3, line: 53, type: !6)
!249 = !DILocation(line: 178, column: 12, scope: !27)
!250 = !DILocalVariable(name: "t61", scope: !27, file: !3, line: 53, type: !6)
!251 = !DILocation(line: 179, column: 12, scope: !27)
!252 = !DILocalVariable(name: "t62", scope: !27, file: !3, line: 53, type: !6)
!253 = !DILocation(line: 180, column: 12, scope: !27)
!254 = !DILocalVariable(name: "t63", scope: !27, file: !3, line: 53, type: !6)
!255 = !DILocation(line: 181, column: 11, scope: !27)
!256 = !DILocalVariable(name: "t64", scope: !27, file: !3, line: 53, type: !6)
!257 = !DILocation(line: 182, column: 12, scope: !27)
!258 = !DILocalVariable(name: "t65", scope: !27, file: !3, line: 53, type: !6)
!259 = !DILocation(line: 183, column: 11, scope: !27)
!260 = !DILocalVariable(name: "t66", scope: !27, file: !3, line: 53, type: !6)
!261 = !DILocation(line: 184, column: 11, scope: !27)
!262 = !DILocalVariable(name: "s0", scope: !27, file: !3, line: 54, type: !6)
!263 = !DILocation(line: 185, column: 13, scope: !27)
!264 = !DILocation(line: 185, column: 11, scope: !27)
!265 = !DILocalVariable(name: "s6", scope: !27, file: !3, line: 54, type: !6)
!266 = !DILocation(line: 186, column: 13, scope: !27)
!267 = !DILocation(line: 186, column: 11, scope: !27)
!268 = !DILocalVariable(name: "s7", scope: !27, file: !3, line: 54, type: !6)
!269 = !DILocation(line: 187, column: 12, scope: !27)
!270 = !DILocalVariable(name: "t67", scope: !27, file: !3, line: 53, type: !6)
!271 = !DILocation(line: 188, column: 11, scope: !27)
!272 = !DILocalVariable(name: "s3", scope: !27, file: !3, line: 54, type: !6)
!273 = !DILocation(line: 189, column: 11, scope: !27)
!274 = !DILocalVariable(name: "s4", scope: !27, file: !3, line: 54, type: !6)
!275 = !DILocation(line: 190, column: 11, scope: !27)
!276 = !DILocalVariable(name: "s5", scope: !27, file: !3, line: 54, type: !6)
!277 = !DILocation(line: 191, column: 13, scope: !27)
!278 = !DILocation(line: 191, column: 11, scope: !27)
!279 = !DILocalVariable(name: "s1", scope: !27, file: !3, line: 54, type: !6)
!280 = !DILocation(line: 192, column: 13, scope: !27)
!281 = !DILocation(line: 192, column: 11, scope: !27)
!282 = !DILocalVariable(name: "s2", scope: !27, file: !3, line: 54, type: !6)
!283 = !DILocation(line: 194, column: 2, scope: !27)
!284 = !DILocation(line: 194, column: 7, scope: !27)
!285 = !DILocation(line: 195, column: 2, scope: !27)
!286 = !DILocation(line: 195, column: 7, scope: !27)
!287 = !DILocation(line: 196, column: 2, scope: !27)
!288 = !DILocation(line: 196, column: 7, scope: !27)
!289 = !DILocation(line: 197, column: 2, scope: !27)
!290 = !DILocation(line: 197, column: 7, scope: !27)
!291 = !DILocation(line: 198, column: 2, scope: !27)
!292 = !DILocation(line: 198, column: 7, scope: !27)
!293 = !DILocation(line: 199, column: 2, scope: !27)
!294 = !DILocation(line: 199, column: 7, scope: !27)
!295 = !DILocation(line: 200, column: 2, scope: !27)
!296 = !DILocation(line: 200, column: 7, scope: !27)
!297 = !DILocation(line: 201, column: 2, scope: !27)
!298 = !DILocation(line: 201, column: 7, scope: !27)
!299 = !DILocation(line: 202, column: 1, scope: !27)
!300 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !3, file: !3, line: 206, type: !28, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!301 = !DILocalVariable(name: "q", arg: 1, scope: !300, file: !3, line: 206, type: !30)
!302 = !DILocation(line: 0, scope: !300)
!303 = !DILocation(line: 220, column: 2, scope: !300)
!304 = !DILocation(line: 220, column: 2, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !3, line: 220, column: 2)
!306 = !DILocalVariable(name: "a", scope: !305, file: !3, line: 220, type: !6)
!307 = !DILocation(line: 0, scope: !305)
!308 = !DILocalVariable(name: "b", scope: !305, file: !3, line: 220, type: !6)
!309 = !DILocation(line: 221, column: 2, scope: !300)
!310 = !DILocation(line: 221, column: 2, scope: !311)
!311 = distinct !DILexicalBlock(scope: !300, file: !3, line: 221, column: 2)
!312 = !DILocalVariable(name: "a", scope: !311, file: !3, line: 221, type: !6)
!313 = !DILocation(line: 0, scope: !311)
!314 = !DILocalVariable(name: "b", scope: !311, file: !3, line: 221, type: !6)
!315 = !DILocation(line: 222, column: 2, scope: !300)
!316 = !DILocation(line: 222, column: 2, scope: !317)
!317 = distinct !DILexicalBlock(scope: !300, file: !3, line: 222, column: 2)
!318 = !DILocalVariable(name: "a", scope: !317, file: !3, line: 222, type: !6)
!319 = !DILocation(line: 0, scope: !317)
!320 = !DILocalVariable(name: "b", scope: !317, file: !3, line: 222, type: !6)
!321 = !DILocation(line: 223, column: 2, scope: !300)
!322 = !DILocation(line: 223, column: 2, scope: !323)
!323 = distinct !DILexicalBlock(scope: !300, file: !3, line: 223, column: 2)
!324 = !DILocalVariable(name: "a", scope: !323, file: !3, line: 223, type: !6)
!325 = !DILocation(line: 0, scope: !323)
!326 = !DILocalVariable(name: "b", scope: !323, file: !3, line: 223, type: !6)
!327 = !DILocation(line: 225, column: 2, scope: !300)
!328 = !DILocation(line: 225, column: 2, scope: !329)
!329 = distinct !DILexicalBlock(scope: !300, file: !3, line: 225, column: 2)
!330 = !DILocalVariable(name: "a", scope: !329, file: !3, line: 225, type: !6)
!331 = !DILocation(line: 0, scope: !329)
!332 = !DILocalVariable(name: "b", scope: !329, file: !3, line: 225, type: !6)
!333 = !DILocation(line: 226, column: 2, scope: !300)
!334 = !DILocation(line: 226, column: 2, scope: !335)
!335 = distinct !DILexicalBlock(scope: !300, file: !3, line: 226, column: 2)
!336 = !DILocalVariable(name: "a", scope: !335, file: !3, line: 226, type: !6)
!337 = !DILocation(line: 0, scope: !335)
!338 = !DILocalVariable(name: "b", scope: !335, file: !3, line: 226, type: !6)
!339 = !DILocation(line: 227, column: 2, scope: !300)
!340 = !DILocation(line: 227, column: 2, scope: !341)
!341 = distinct !DILexicalBlock(scope: !300, file: !3, line: 227, column: 2)
!342 = !DILocalVariable(name: "a", scope: !341, file: !3, line: 227, type: !6)
!343 = !DILocation(line: 0, scope: !341)
!344 = !DILocalVariable(name: "b", scope: !341, file: !3, line: 227, type: !6)
!345 = !DILocation(line: 228, column: 2, scope: !300)
!346 = !DILocation(line: 228, column: 2, scope: !347)
!347 = distinct !DILexicalBlock(scope: !300, file: !3, line: 228, column: 2)
!348 = !DILocalVariable(name: "a", scope: !347, file: !3, line: 228, type: !6)
!349 = !DILocation(line: 0, scope: !347)
!350 = !DILocalVariable(name: "b", scope: !347, file: !3, line: 228, type: !6)
!351 = !DILocation(line: 230, column: 2, scope: !300)
!352 = !DILocation(line: 230, column: 2, scope: !353)
!353 = distinct !DILexicalBlock(scope: !300, file: !3, line: 230, column: 2)
!354 = !DILocalVariable(name: "a", scope: !353, file: !3, line: 230, type: !6)
!355 = !DILocation(line: 0, scope: !353)
!356 = !DILocalVariable(name: "b", scope: !353, file: !3, line: 230, type: !6)
!357 = !DILocation(line: 231, column: 2, scope: !300)
!358 = !DILocation(line: 231, column: 2, scope: !359)
!359 = distinct !DILexicalBlock(scope: !300, file: !3, line: 231, column: 2)
!360 = !DILocalVariable(name: "a", scope: !359, file: !3, line: 231, type: !6)
!361 = !DILocation(line: 0, scope: !359)
!362 = !DILocalVariable(name: "b", scope: !359, file: !3, line: 231, type: !6)
!363 = !DILocation(line: 232, column: 2, scope: !300)
!364 = !DILocation(line: 232, column: 2, scope: !365)
!365 = distinct !DILexicalBlock(scope: !300, file: !3, line: 232, column: 2)
!366 = !DILocalVariable(name: "a", scope: !365, file: !3, line: 232, type: !6)
!367 = !DILocation(line: 0, scope: !365)
!368 = !DILocalVariable(name: "b", scope: !365, file: !3, line: 232, type: !6)
!369 = !DILocation(line: 233, column: 2, scope: !300)
!370 = !DILocation(line: 233, column: 2, scope: !371)
!371 = distinct !DILexicalBlock(scope: !300, file: !3, line: 233, column: 2)
!372 = !DILocalVariable(name: "a", scope: !371, file: !3, line: 233, type: !6)
!373 = !DILocation(line: 0, scope: !371)
!374 = !DILocalVariable(name: "b", scope: !371, file: !3, line: 233, type: !6)
!375 = !DILocation(line: 234, column: 1, scope: !300)
!376 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !3, file: !3, line: 238, type: !377, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !30, !30, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!381 = !DILocalVariable(name: "q0", arg: 1, scope: !376, file: !3, line: 238, type: !30)
!382 = !DILocation(line: 0, scope: !376)
!383 = !DILocalVariable(name: "q1", arg: 2, scope: !376, file: !3, line: 238, type: !30)
!384 = !DILocalVariable(name: "w", arg: 3, scope: !376, file: !3, line: 238, type: !379)
!385 = !DILocation(line: 242, column: 7, scope: !376)
!386 = !DILocalVariable(name: "x0", scope: !376, file: !3, line: 240, type: !6)
!387 = !DILocation(line: 243, column: 7, scope: !376)
!388 = !DILocalVariable(name: "x1", scope: !376, file: !3, line: 240, type: !6)
!389 = !DILocation(line: 244, column: 7, scope: !376)
!390 = !DILocalVariable(name: "x2", scope: !376, file: !3, line: 240, type: !6)
!391 = !DILocation(line: 245, column: 7, scope: !376)
!392 = !DILocalVariable(name: "x3", scope: !376, file: !3, line: 240, type: !6)
!393 = !DILocation(line: 246, column: 12, scope: !376)
!394 = !DILocation(line: 246, column: 5, scope: !376)
!395 = !DILocation(line: 247, column: 12, scope: !376)
!396 = !DILocation(line: 247, column: 5, scope: !376)
!397 = !DILocation(line: 248, column: 12, scope: !376)
!398 = !DILocation(line: 248, column: 5, scope: !376)
!399 = !DILocation(line: 249, column: 12, scope: !376)
!400 = !DILocation(line: 249, column: 5, scope: !376)
!401 = !DILocation(line: 250, column: 5, scope: !376)
!402 = !DILocation(line: 251, column: 5, scope: !376)
!403 = !DILocation(line: 252, column: 5, scope: !376)
!404 = !DILocation(line: 253, column: 5, scope: !376)
!405 = !DILocation(line: 254, column: 12, scope: !376)
!406 = !DILocation(line: 254, column: 5, scope: !376)
!407 = !DILocation(line: 255, column: 12, scope: !376)
!408 = !DILocation(line: 255, column: 5, scope: !376)
!409 = !DILocation(line: 256, column: 12, scope: !376)
!410 = !DILocation(line: 256, column: 5, scope: !376)
!411 = !DILocation(line: 257, column: 12, scope: !376)
!412 = !DILocation(line: 257, column: 5, scope: !376)
!413 = !DILocation(line: 258, column: 5, scope: !376)
!414 = !DILocation(line: 259, column: 5, scope: !376)
!415 = !DILocation(line: 260, column: 5, scope: !376)
!416 = !DILocation(line: 261, column: 5, scope: !376)
!417 = !DILocation(line: 262, column: 17, scope: !376)
!418 = !DILocation(line: 262, column: 11, scope: !376)
!419 = !DILocation(line: 262, column: 6, scope: !376)
!420 = !DILocation(line: 263, column: 17, scope: !376)
!421 = !DILocation(line: 263, column: 11, scope: !376)
!422 = !DILocation(line: 263, column: 6, scope: !376)
!423 = !DILocation(line: 264, column: 1, scope: !376)
!424 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !3, file: !3, line: 268, type: !425, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !427, !6, !6}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!428 = !DILocalVariable(name: "w", arg: 1, scope: !424, file: !3, line: 268, type: !427)
!429 = !DILocation(line: 0, scope: !424)
!430 = !DILocalVariable(name: "q0", arg: 2, scope: !424, file: !3, line: 268, type: !6)
!431 = !DILocalVariable(name: "q1", arg: 3, scope: !424, file: !3, line: 268, type: !6)
!432 = !DILocation(line: 272, column: 10, scope: !424)
!433 = !DILocalVariable(name: "x0", scope: !424, file: !3, line: 270, type: !6)
!434 = !DILocation(line: 273, column: 10, scope: !424)
!435 = !DILocalVariable(name: "x1", scope: !424, file: !3, line: 270, type: !6)
!436 = !DILocation(line: 274, column: 11, scope: !424)
!437 = !DILocation(line: 274, column: 17, scope: !424)
!438 = !DILocalVariable(name: "x2", scope: !424, file: !3, line: 270, type: !6)
!439 = !DILocation(line: 275, column: 11, scope: !424)
!440 = !DILocation(line: 275, column: 17, scope: !424)
!441 = !DILocalVariable(name: "x3", scope: !424, file: !3, line: 270, type: !6)
!442 = !DILocation(line: 276, column: 12, scope: !424)
!443 = !DILocation(line: 276, column: 5, scope: !424)
!444 = !DILocation(line: 277, column: 12, scope: !424)
!445 = !DILocation(line: 277, column: 5, scope: !424)
!446 = !DILocation(line: 278, column: 12, scope: !424)
!447 = !DILocation(line: 278, column: 5, scope: !424)
!448 = !DILocation(line: 279, column: 12, scope: !424)
!449 = !DILocation(line: 279, column: 5, scope: !424)
!450 = !DILocation(line: 280, column: 5, scope: !424)
!451 = !DILocation(line: 281, column: 5, scope: !424)
!452 = !DILocation(line: 282, column: 5, scope: !424)
!453 = !DILocation(line: 283, column: 5, scope: !424)
!454 = !DILocation(line: 284, column: 9, scope: !424)
!455 = !DILocation(line: 284, column: 38, scope: !424)
!456 = !DILocation(line: 284, column: 24, scope: !424)
!457 = !DILocation(line: 284, column: 22, scope: !424)
!458 = !DILocation(line: 284, column: 2, scope: !424)
!459 = !DILocation(line: 284, column: 7, scope: !424)
!460 = !DILocation(line: 285, column: 9, scope: !424)
!461 = !DILocation(line: 285, column: 38, scope: !424)
!462 = !DILocation(line: 285, column: 24, scope: !424)
!463 = !DILocation(line: 285, column: 22, scope: !424)
!464 = !DILocation(line: 285, column: 2, scope: !424)
!465 = !DILocation(line: 285, column: 7, scope: !424)
!466 = !DILocation(line: 286, column: 9, scope: !424)
!467 = !DILocation(line: 286, column: 38, scope: !424)
!468 = !DILocation(line: 286, column: 24, scope: !424)
!469 = !DILocation(line: 286, column: 22, scope: !424)
!470 = !DILocation(line: 286, column: 2, scope: !424)
!471 = !DILocation(line: 286, column: 7, scope: !424)
!472 = !DILocation(line: 287, column: 9, scope: !424)
!473 = !DILocation(line: 287, column: 38, scope: !424)
!474 = !DILocation(line: 287, column: 24, scope: !424)
!475 = !DILocation(line: 287, column: 22, scope: !424)
!476 = !DILocation(line: 287, column: 2, scope: !424)
!477 = !DILocation(line: 287, column: 7, scope: !424)
!478 = !DILocation(line: 288, column: 1, scope: !424)
!479 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !3, file: !3, line: 309, type: !480, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!480 = !DISubroutineType(types: !481)
!481 = !{!13, !30, !482, !484}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !485, line: 46, baseType: !10)
!485 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!486 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !479, file: !3, line: 309, type: !30)
!487 = !DILocation(line: 0, scope: !479)
!488 = !DILocalVariable(name: "key", arg: 2, scope: !479, file: !3, line: 309, type: !482)
!489 = !DILocalVariable(name: "key_len", arg: 3, scope: !479, file: !3, line: 309, type: !484)
!490 = !DILocalVariable(name: "skey", scope: !479, file: !3, line: 314, type: !491)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1920, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 60)
!494 = !DILocation(line: 314, column: 11, scope: !479)
!495 = !DILocation(line: 316, column: 2, scope: !479)
!496 = !DILocalVariable(name: "num_rounds", scope: !479, file: !3, line: 311, type: !13)
!497 = !DILocation(line: 319, column: 3, scope: !498)
!498 = distinct !DILexicalBlock(scope: !479, file: !3, line: 316, column: 19)
!499 = !DILocation(line: 322, column: 3, scope: !498)
!500 = !DILocation(line: 325, column: 3, scope: !498)
!501 = !DILocation(line: 328, column: 3, scope: !498)
!502 = !DILocation(line: 0, scope: !498)
!503 = !DILocation(line: 330, column: 21, scope: !479)
!504 = !DILocation(line: 330, column: 7, scope: !479)
!505 = !DILocalVariable(name: "nk", scope: !479, file: !3, line: 312, type: !14)
!506 = !DILocation(line: 331, column: 26, scope: !479)
!507 = !DILocation(line: 331, column: 31, scope: !479)
!508 = !DILocalVariable(name: "nkf", scope: !479, file: !3, line: 312, type: !14)
!509 = !DILocation(line: 332, column: 19, scope: !479)
!510 = !DILocation(line: 332, column: 34, scope: !479)
!511 = !DILocation(line: 332, column: 2, scope: !479)
!512 = !DILocation(line: 333, column: 22, scope: !479)
!513 = !DILocation(line: 333, column: 28, scope: !479)
!514 = !DILocation(line: 333, column: 8, scope: !479)
!515 = !DILocalVariable(name: "tmp", scope: !479, file: !3, line: 313, type: !11)
!516 = !DILocalVariable(name: "i", scope: !479, file: !3, line: 312, type: !14)
!517 = !DILocalVariable(name: "j", scope: !479, file: !3, line: 312, type: !14)
!518 = !DILocalVariable(name: "k", scope: !479, file: !3, line: 312, type: !14)
!519 = !DILocation(line: 334, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !479, file: !3, line: 334, column: 2)
!521 = !DILocation(line: 0, scope: !520)
!522 = !DILocation(line: 334, column: 31, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !3, line: 334, column: 2)
!524 = !DILocation(line: 334, column: 2, scope: !520)
!525 = !DILocation(line: 335, column: 9, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 335, column: 7)
!527 = distinct !DILexicalBlock(scope: !523, file: !3, line: 334, column: 44)
!528 = !DILocation(line: 335, column: 7, scope: !527)
!529 = !DILocation(line: 336, column: 15, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !3, line: 335, column: 15)
!531 = !DILocation(line: 336, column: 29, scope: !530)
!532 = !DILocation(line: 336, column: 22, scope: !530)
!533 = !DILocation(line: 337, column: 10, scope: !530)
!534 = !DILocation(line: 337, column: 26, scope: !530)
!535 = !DILocation(line: 337, column: 24, scope: !530)
!536 = !DILocation(line: 338, column: 3, scope: !530)
!537 = !DILocation(line: 338, column: 17, scope: !538)
!538 = distinct !DILexicalBlock(scope: !526, file: !3, line: 338, column: 14)
!539 = !DILocation(line: 338, column: 21, scope: !538)
!540 = !DILocation(line: 338, column: 26, scope: !538)
!541 = !DILocation(line: 338, column: 14, scope: !526)
!542 = !DILocation(line: 339, column: 10, scope: !543)
!543 = distinct !DILexicalBlock(scope: !538, file: !3, line: 338, column: 32)
!544 = !DILocation(line: 340, column: 3, scope: !543)
!545 = !DILocation(line: 0, scope: !526)
!546 = !DILocation(line: 341, column: 17, scope: !527)
!547 = !DILocation(line: 341, column: 10, scope: !527)
!548 = !DILocation(line: 341, column: 7, scope: !527)
!549 = !DILocation(line: 342, column: 3, scope: !527)
!550 = !DILocation(line: 342, column: 11, scope: !527)
!551 = !DILocation(line: 343, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !527, file: !3, line: 343, column: 7)
!553 = !DILocation(line: 343, column: 12, scope: !552)
!554 = !DILocation(line: 343, column: 7, scope: !527)
!555 = !DILocation(line: 345, column: 6, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !3, line: 343, column: 19)
!557 = !DILocation(line: 346, column: 3, scope: !556)
!558 = !DILocation(line: 0, scope: !552)
!559 = !DILocation(line: 347, column: 2, scope: !527)
!560 = !DILocation(line: 334, column: 40, scope: !523)
!561 = !DILocation(line: 334, column: 2, scope: !523)
!562 = distinct !{!562, !524, !563, !564}
!563 = !DILocation(line: 347, column: 2, scope: !520)
!564 = !{!"llvm.loop.mustprogress"}
!565 = !DILocation(line: 349, column: 7, scope: !566)
!566 = distinct !DILexicalBlock(scope: !479, file: !3, line: 349, column: 2)
!567 = !DILocation(line: 0, scope: !566)
!568 = !DILocation(line: 349, column: 23, scope: !569)
!569 = distinct !DILexicalBlock(scope: !566, file: !3, line: 349, column: 2)
!570 = !DILocation(line: 349, column: 2, scope: !566)
!571 = !DILocalVariable(name: "q", scope: !572, file: !3, line: 350, type: !573)
!572 = distinct !DILexicalBlock(scope: !569, file: !3, line: 349, column: 46)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 8)
!576 = !DILocation(line: 350, column: 12, scope: !572)
!577 = !DILocation(line: 352, column: 30, scope: !572)
!578 = !DILocation(line: 352, column: 37, scope: !572)
!579 = !DILocation(line: 352, column: 43, scope: !572)
!580 = !DILocation(line: 352, column: 48, scope: !572)
!581 = !DILocation(line: 352, column: 3, scope: !572)
!582 = !DILocation(line: 353, column: 10, scope: !572)
!583 = !DILocation(line: 353, column: 3, scope: !572)
!584 = !DILocation(line: 353, column: 8, scope: !572)
!585 = !DILocation(line: 354, column: 10, scope: !572)
!586 = !DILocation(line: 354, column: 3, scope: !572)
!587 = !DILocation(line: 354, column: 8, scope: !572)
!588 = !DILocation(line: 355, column: 10, scope: !572)
!589 = !DILocation(line: 355, column: 3, scope: !572)
!590 = !DILocation(line: 355, column: 8, scope: !572)
!591 = !DILocation(line: 356, column: 10, scope: !572)
!592 = !DILocation(line: 356, column: 3, scope: !572)
!593 = !DILocation(line: 356, column: 8, scope: !572)
!594 = !DILocation(line: 357, column: 10, scope: !572)
!595 = !DILocation(line: 357, column: 3, scope: !572)
!596 = !DILocation(line: 357, column: 8, scope: !572)
!597 = !DILocation(line: 358, column: 10, scope: !572)
!598 = !DILocation(line: 358, column: 3, scope: !572)
!599 = !DILocation(line: 358, column: 8, scope: !572)
!600 = !DILocation(line: 359, column: 21, scope: !572)
!601 = !DILocation(line: 359, column: 3, scope: !572)
!602 = !DILocation(line: 361, column: 7, scope: !572)
!603 = !DILocation(line: 361, column: 12, scope: !572)
!604 = !DILocation(line: 362, column: 7, scope: !572)
!605 = !DILocation(line: 362, column: 12, scope: !572)
!606 = !DILocation(line: 362, column: 4, scope: !572)
!607 = !DILocation(line: 363, column: 7, scope: !572)
!608 = !DILocation(line: 363, column: 12, scope: !572)
!609 = !DILocation(line: 363, column: 4, scope: !572)
!610 = !DILocation(line: 364, column: 7, scope: !572)
!611 = !DILocation(line: 364, column: 12, scope: !572)
!612 = !DILocation(line: 364, column: 4, scope: !572)
!613 = !DILocation(line: 360, column: 15, scope: !572)
!614 = !DILocation(line: 360, column: 3, scope: !572)
!615 = !DILocation(line: 360, column: 20, scope: !572)
!616 = !DILocation(line: 366, column: 7, scope: !572)
!617 = !DILocation(line: 366, column: 12, scope: !572)
!618 = !DILocation(line: 367, column: 7, scope: !572)
!619 = !DILocation(line: 367, column: 12, scope: !572)
!620 = !DILocation(line: 367, column: 4, scope: !572)
!621 = !DILocation(line: 368, column: 7, scope: !572)
!622 = !DILocation(line: 368, column: 12, scope: !572)
!623 = !DILocation(line: 368, column: 4, scope: !572)
!624 = !DILocation(line: 369, column: 7, scope: !572)
!625 = !DILocation(line: 369, column: 12, scope: !572)
!626 = !DILocation(line: 369, column: 4, scope: !572)
!627 = !DILocation(line: 365, column: 15, scope: !572)
!628 = !DILocation(line: 365, column: 3, scope: !572)
!629 = !DILocation(line: 365, column: 20, scope: !572)
!630 = !DILocation(line: 370, column: 2, scope: !572)
!631 = !DILocation(line: 349, column: 32, scope: !569)
!632 = !DILocation(line: 349, column: 40, scope: !569)
!633 = !DILocation(line: 349, column: 2, scope: !569)
!634 = distinct !{!634, !570, !635, !564}
!635 = !DILocation(line: 370, column: 2, scope: !566)
!636 = !DILocation(line: 371, column: 2, scope: !479)
!637 = !DILocation(line: 372, column: 1, scope: !479)
!638 = distinct !DISubprogram(name: "sub_word", scope: !3, file: !3, line: 295, type: !639, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!639 = !DISubroutineType(types: !640)
!640 = !{!11, !11}
!641 = !DILocalVariable(name: "x", arg: 1, scope: !638, file: !3, line: 295, type: !11)
!642 = !DILocation(line: 0, scope: !638)
!643 = !DILocalVariable(name: "q", scope: !638, file: !3, line: 297, type: !573)
!644 = !DILocation(line: 297, column: 11, scope: !638)
!645 = !DILocation(line: 299, column: 2, scope: !638)
!646 = !DILocation(line: 300, column: 9, scope: !638)
!647 = !DILocation(line: 300, column: 2, scope: !638)
!648 = !DILocation(line: 300, column: 7, scope: !638)
!649 = !DILocation(line: 301, column: 20, scope: !638)
!650 = !DILocation(line: 301, column: 2, scope: !638)
!651 = !DILocation(line: 302, column: 28, scope: !638)
!652 = !DILocation(line: 302, column: 2, scope: !638)
!653 = !DILocation(line: 303, column: 20, scope: !638)
!654 = !DILocation(line: 303, column: 2, scope: !638)
!655 = !DILocation(line: 304, column: 19, scope: !638)
!656 = !DILocation(line: 304, column: 9, scope: !638)
!657 = !DILocation(line: 304, column: 2, scope: !638)
!658 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !3, file: !3, line: 376, type: !659, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !30, !13, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!663 = !DILocalVariable(name: "skey", arg: 1, scope: !658, file: !3, line: 376, type: !30)
!664 = !DILocation(line: 0, scope: !658)
!665 = !DILocalVariable(name: "num_rounds", arg: 2, scope: !658, file: !3, line: 377, type: !13)
!666 = !DILocalVariable(name: "comp_skey", arg: 3, scope: !658, file: !3, line: 377, type: !661)
!667 = !DILocation(line: 381, column: 18, scope: !658)
!668 = !DILocation(line: 381, column: 23, scope: !658)
!669 = !DILocalVariable(name: "n", scope: !658, file: !3, line: 379, type: !13)
!670 = !DILocalVariable(name: "u", scope: !658, file: !3, line: 379, type: !13)
!671 = !DILocalVariable(name: "v", scope: !658, file: !3, line: 379, type: !13)
!672 = !DILocation(line: 382, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !658, file: !3, line: 382, column: 2)
!674 = !DILocation(line: 0, scope: !673)
!675 = !DILocation(line: 382, column: 23, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !3, line: 382, column: 2)
!677 = !DILocation(line: 382, column: 2, scope: !673)
!678 = !DILocation(line: 385, column: 23, scope: !679)
!679 = distinct !DILexicalBlock(scope: !676, file: !3, line: 382, column: 42)
!680 = !DILocalVariable(name: "x3", scope: !679, file: !3, line: 383, type: !6)
!681 = !DILocation(line: 0, scope: !679)
!682 = !DILocalVariable(name: "x2", scope: !679, file: !3, line: 383, type: !6)
!683 = !DILocalVariable(name: "x1", scope: !679, file: !3, line: 383, type: !6)
!684 = !DILocalVariable(name: "x0", scope: !679, file: !3, line: 383, type: !6)
!685 = !DILocation(line: 386, column: 6, scope: !679)
!686 = !DILocation(line: 387, column: 6, scope: !679)
!687 = !DILocation(line: 388, column: 6, scope: !679)
!688 = !DILocation(line: 389, column: 6, scope: !679)
!689 = !DILocation(line: 390, column: 6, scope: !679)
!690 = !DILocation(line: 391, column: 6, scope: !679)
!691 = !DILocation(line: 392, column: 6, scope: !679)
!692 = !DILocation(line: 393, column: 21, scope: !679)
!693 = !DILocation(line: 393, column: 27, scope: !679)
!694 = !DILocation(line: 393, column: 10, scope: !679)
!695 = !DILocation(line: 393, column: 3, scope: !679)
!696 = !DILocation(line: 393, column: 15, scope: !679)
!697 = !DILocation(line: 394, column: 21, scope: !679)
!698 = !DILocation(line: 394, column: 27, scope: !679)
!699 = !DILocation(line: 394, column: 10, scope: !679)
!700 = !DILocation(line: 394, column: 3, scope: !679)
!701 = !DILocation(line: 394, column: 15, scope: !679)
!702 = !DILocation(line: 395, column: 21, scope: !679)
!703 = !DILocation(line: 395, column: 27, scope: !679)
!704 = !DILocation(line: 395, column: 10, scope: !679)
!705 = !DILocation(line: 395, column: 3, scope: !679)
!706 = !DILocation(line: 395, column: 15, scope: !679)
!707 = !DILocation(line: 396, column: 21, scope: !679)
!708 = !DILocation(line: 396, column: 27, scope: !679)
!709 = !DILocation(line: 396, column: 10, scope: !679)
!710 = !DILocation(line: 396, column: 3, scope: !679)
!711 = !DILocation(line: 396, column: 15, scope: !679)
!712 = !DILocation(line: 397, column: 2, scope: !679)
!713 = !DILocation(line: 382, column: 30, scope: !676)
!714 = !DILocation(line: 382, column: 36, scope: !676)
!715 = !DILocation(line: 382, column: 2, scope: !676)
!716 = distinct !{!716, !677, !717, !564}
!717 = !DILocation(line: 397, column: 2, scope: !673)
!718 = !DILocation(line: 398, column: 1, scope: !658)
!719 = distinct !DISubprogram(name: "key_sched_wrapper", scope: !22, file: !22, line: 3, type: !720, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !4)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !427, !482, !484}
!722 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !719, file: !22, line: 3, type: !427)
!723 = !DILocation(line: 0, scope: !719)
!724 = !DILocalVariable(name: "key", arg: 2, scope: !719, file: !22, line: 3, type: !482)
!725 = !DILocalVariable(name: "key_len", arg: 3, scope: !719, file: !22, line: 3, type: !484)
!726 = !DILocation(line: 4, column: 12, scope: !719)
!727 = !DILocation(line: 4, column: 2, scope: !719)
!728 = !DILocation(line: 5, column: 12, scope: !719)
!729 = !DILocation(line: 5, column: 2, scope: !719)
!730 = !DILocation(line: 6, column: 12, scope: !719)
!731 = !DILocation(line: 6, column: 2, scope: !719)
!732 = !DILocation(line: 8, column: 23, scope: !719)
!733 = !DILocation(line: 8, column: 2, scope: !719)
!734 = !DILocation(line: 9, column: 1, scope: !719)
!735 = distinct !DISubprogram(name: "key_sched_wrapper_t", scope: !22, file: !22, line: 17, type: !736, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !4)
!736 = !DISubroutineType(types: !737)
!737 = !{null}
!738 = !DILocation(line: 18, column: 19, scope: !735)
!739 = !DILocalVariable(name: "key_len", scope: !735, file: !22, line: 18, type: !484)
!740 = !DILocation(line: 0, scope: !735)
!741 = !DILocation(line: 19, column: 24, scope: !735)
!742 = !DILocalVariable(name: "comp_skey", scope: !735, file: !22, line: 19, type: !427)
!743 = !DILocalVariable(name: "key", scope: !735, file: !22, line: 20, type: !482)
!744 = !DILocation(line: 21, column: 23, scope: !735)
!745 = !DILocation(line: 21, column: 2, scope: !735)
!746 = !DILocation(line: 22, column: 1, scope: !735)
