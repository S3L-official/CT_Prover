; ModuleID = 'bitslice_decrypt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

@Rcon = internal constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_bitslice_Sbox(i64* %0) #0 !dbg !30 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !34, metadata !DIExpression()), !dbg !35
  %2 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !36
  %3 = load i64, i64* %2, align 8, !dbg !36
  call void @llvm.dbg.value(metadata i64 %3, metadata !37, metadata !DIExpression()), !dbg !35
  %4 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !38
  %5 = load i64, i64* %4, align 8, !dbg !38
  call void @llvm.dbg.value(metadata i64 %5, metadata !39, metadata !DIExpression()), !dbg !35
  %6 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !40
  %7 = load i64, i64* %6, align 8, !dbg !40
  call void @llvm.dbg.value(metadata i64 %7, metadata !41, metadata !DIExpression()), !dbg !35
  %8 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !42
  %9 = load i64, i64* %8, align 8, !dbg !42
  call void @llvm.dbg.value(metadata i64 %9, metadata !43, metadata !DIExpression()), !dbg !35
  %10 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !44
  %11 = load i64, i64* %10, align 8, !dbg !44
  call void @llvm.dbg.value(metadata i64 %11, metadata !45, metadata !DIExpression()), !dbg !35
  %12 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !46
  %13 = load i64, i64* %12, align 8, !dbg !46
  call void @llvm.dbg.value(metadata i64 %13, metadata !47, metadata !DIExpression()), !dbg !35
  %14 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !48
  %15 = load i64, i64* %14, align 8, !dbg !48
  call void @llvm.dbg.value(metadata i64 %15, metadata !49, metadata !DIExpression()), !dbg !35
  %16 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !50
  %17 = load i64, i64* %16, align 8, !dbg !50
  call void @llvm.dbg.value(metadata i64 %17, metadata !51, metadata !DIExpression()), !dbg !35
  %18 = xor i64 %9, %13, !dbg !52
  call void @llvm.dbg.value(metadata i64 %18, metadata !53, metadata !DIExpression()), !dbg !35
  %19 = xor i64 %3, %15, !dbg !54
  call void @llvm.dbg.value(metadata i64 %19, metadata !55, metadata !DIExpression()), !dbg !35
  %20 = xor i64 %3, %9, !dbg !56
  call void @llvm.dbg.value(metadata i64 %20, metadata !57, metadata !DIExpression()), !dbg !35
  %21 = xor i64 %3, %13, !dbg !58
  call void @llvm.dbg.value(metadata i64 %21, metadata !59, metadata !DIExpression()), !dbg !35
  %22 = xor i64 %5, %7, !dbg !60
  call void @llvm.dbg.value(metadata i64 %22, metadata !61, metadata !DIExpression()), !dbg !35
  %23 = xor i64 %22, %17, !dbg !62
  call void @llvm.dbg.value(metadata i64 %23, metadata !63, metadata !DIExpression()), !dbg !35
  %24 = xor i64 %23, %9, !dbg !64
  call void @llvm.dbg.value(metadata i64 %24, metadata !65, metadata !DIExpression()), !dbg !35
  %25 = xor i64 %19, %18, !dbg !66
  call void @llvm.dbg.value(metadata i64 %25, metadata !67, metadata !DIExpression()), !dbg !35
  %26 = xor i64 %23, %3, !dbg !68
  call void @llvm.dbg.value(metadata i64 %26, metadata !69, metadata !DIExpression()), !dbg !35
  %27 = xor i64 %23, %15, !dbg !70
  call void @llvm.dbg.value(metadata i64 %27, metadata !71, metadata !DIExpression()), !dbg !35
  %28 = xor i64 %27, %21, !dbg !72
  call void @llvm.dbg.value(metadata i64 %28, metadata !73, metadata !DIExpression()), !dbg !35
  %29 = xor i64 %11, %25, !dbg !74
  call void @llvm.dbg.value(metadata i64 %29, metadata !75, metadata !DIExpression()), !dbg !35
  %30 = xor i64 %29, %13, !dbg !76
  call void @llvm.dbg.value(metadata i64 %30, metadata !77, metadata !DIExpression()), !dbg !35
  %31 = xor i64 %29, %5, !dbg !78
  call void @llvm.dbg.value(metadata i64 %31, metadata !79, metadata !DIExpression()), !dbg !35
  %32 = xor i64 %30, %17, !dbg !80
  call void @llvm.dbg.value(metadata i64 %32, metadata !81, metadata !DIExpression()), !dbg !35
  %33 = xor i64 %30, %22, !dbg !82
  call void @llvm.dbg.value(metadata i64 %33, metadata !83, metadata !DIExpression()), !dbg !35
  %34 = xor i64 %31, %20, !dbg !84
  call void @llvm.dbg.value(metadata i64 %34, metadata !85, metadata !DIExpression()), !dbg !35
  %35 = xor i64 %17, %34, !dbg !86
  call void @llvm.dbg.value(metadata i64 %35, metadata !87, metadata !DIExpression()), !dbg !35
  %36 = xor i64 %33, %34, !dbg !88
  call void @llvm.dbg.value(metadata i64 %36, metadata !89, metadata !DIExpression()), !dbg !35
  %37 = xor i64 %33, %21, !dbg !90
  call void @llvm.dbg.value(metadata i64 %37, metadata !91, metadata !DIExpression()), !dbg !35
  %38 = xor i64 %22, %34, !dbg !92
  call void @llvm.dbg.value(metadata i64 %38, metadata !93, metadata !DIExpression()), !dbg !35
  %39 = xor i64 %19, %38, !dbg !94
  call void @llvm.dbg.value(metadata i64 %39, metadata !95, metadata !DIExpression()), !dbg !35
  %40 = xor i64 %3, %38, !dbg !96
  call void @llvm.dbg.value(metadata i64 %40, metadata !97, metadata !DIExpression()), !dbg !35
  %41 = and i64 %25, %30, !dbg !98
  call void @llvm.dbg.value(metadata i64 %41, metadata !99, metadata !DIExpression()), !dbg !35
  %42 = and i64 %28, %32, !dbg !100
  call void @llvm.dbg.value(metadata i64 %42, metadata !101, metadata !DIExpression()), !dbg !35
  %43 = xor i64 %42, %41, !dbg !102
  call void @llvm.dbg.value(metadata i64 %43, metadata !103, metadata !DIExpression()), !dbg !35
  %44 = and i64 %24, %17, !dbg !104
  call void @llvm.dbg.value(metadata i64 %44, metadata !105, metadata !DIExpression()), !dbg !35
  %45 = xor i64 %44, %41, !dbg !106
  call void @llvm.dbg.value(metadata i64 %45, metadata !107, metadata !DIExpression()), !dbg !35
  %46 = and i64 %19, %38, !dbg !108
  call void @llvm.dbg.value(metadata i64 %46, metadata !109, metadata !DIExpression()), !dbg !35
  %47 = and i64 %27, %23, !dbg !110
  call void @llvm.dbg.value(metadata i64 %47, metadata !111, metadata !DIExpression()), !dbg !35
  %48 = xor i64 %47, %46, !dbg !112
  call void @llvm.dbg.value(metadata i64 %48, metadata !113, metadata !DIExpression()), !dbg !35
  %49 = and i64 %26, %35, !dbg !114
  call void @llvm.dbg.value(metadata i64 %49, metadata !115, metadata !DIExpression()), !dbg !35
  %50 = xor i64 %49, %46, !dbg !116
  call void @llvm.dbg.value(metadata i64 %50, metadata !117, metadata !DIExpression()), !dbg !35
  %51 = and i64 %20, %34, !dbg !118
  call void @llvm.dbg.value(metadata i64 %51, metadata !119, metadata !DIExpression()), !dbg !35
  %52 = and i64 %18, %36, !dbg !120
  call void @llvm.dbg.value(metadata i64 %52, metadata !121, metadata !DIExpression()), !dbg !35
  %53 = xor i64 %52, %51, !dbg !122
  call void @llvm.dbg.value(metadata i64 %53, metadata !123, metadata !DIExpression()), !dbg !35
  %54 = and i64 %21, %33, !dbg !124
  call void @llvm.dbg.value(metadata i64 %54, metadata !125, metadata !DIExpression()), !dbg !35
  %55 = xor i64 %54, %51, !dbg !126
  call void @llvm.dbg.value(metadata i64 %55, metadata !127, metadata !DIExpression()), !dbg !35
  %56 = xor i64 %43, %53, !dbg !128
  call void @llvm.dbg.value(metadata i64 %56, metadata !129, metadata !DIExpression()), !dbg !35
  %57 = xor i64 %45, %55, !dbg !130
  call void @llvm.dbg.value(metadata i64 %57, metadata !131, metadata !DIExpression()), !dbg !35
  %58 = xor i64 %48, %53, !dbg !132
  call void @llvm.dbg.value(metadata i64 %58, metadata !133, metadata !DIExpression()), !dbg !35
  %59 = xor i64 %50, %55, !dbg !134
  call void @llvm.dbg.value(metadata i64 %59, metadata !135, metadata !DIExpression()), !dbg !35
  %60 = xor i64 %56, %31, !dbg !136
  call void @llvm.dbg.value(metadata i64 %60, metadata !137, metadata !DIExpression()), !dbg !35
  %61 = xor i64 %57, %37, !dbg !138
  call void @llvm.dbg.value(metadata i64 %61, metadata !139, metadata !DIExpression()), !dbg !35
  %62 = xor i64 %58, %39, !dbg !140
  call void @llvm.dbg.value(metadata i64 %62, metadata !141, metadata !DIExpression()), !dbg !35
  %63 = xor i64 %59, %40, !dbg !142
  call void @llvm.dbg.value(metadata i64 %63, metadata !143, metadata !DIExpression()), !dbg !35
  %64 = xor i64 %60, %61, !dbg !144
  call void @llvm.dbg.value(metadata i64 %64, metadata !145, metadata !DIExpression()), !dbg !35
  %65 = and i64 %60, %62, !dbg !146
  call void @llvm.dbg.value(metadata i64 %65, metadata !147, metadata !DIExpression()), !dbg !35
  %66 = xor i64 %63, %65, !dbg !148
  call void @llvm.dbg.value(metadata i64 %66, metadata !149, metadata !DIExpression()), !dbg !35
  %67 = and i64 %64, %66, !dbg !150
  call void @llvm.dbg.value(metadata i64 %67, metadata !151, metadata !DIExpression()), !dbg !35
  %68 = xor i64 %67, %61, !dbg !152
  call void @llvm.dbg.value(metadata i64 %68, metadata !153, metadata !DIExpression()), !dbg !35
  %69 = xor i64 %62, %63, !dbg !154
  call void @llvm.dbg.value(metadata i64 %69, metadata !155, metadata !DIExpression()), !dbg !35
  %70 = xor i64 %61, %65, !dbg !156
  call void @llvm.dbg.value(metadata i64 %70, metadata !157, metadata !DIExpression()), !dbg !35
  %71 = and i64 %70, %69, !dbg !158
  call void @llvm.dbg.value(metadata i64 %71, metadata !159, metadata !DIExpression()), !dbg !35
  %72 = xor i64 %71, %63, !dbg !160
  call void @llvm.dbg.value(metadata i64 %72, metadata !161, metadata !DIExpression()), !dbg !35
  %73 = xor i64 %62, %72, !dbg !162
  call void @llvm.dbg.value(metadata i64 %73, metadata !163, metadata !DIExpression()), !dbg !35
  %74 = xor i64 %66, %72, !dbg !164
  call void @llvm.dbg.value(metadata i64 %74, metadata !165, metadata !DIExpression()), !dbg !35
  %75 = and i64 %63, %74, !dbg !166
  call void @llvm.dbg.value(metadata i64 %75, metadata !167, metadata !DIExpression()), !dbg !35
  %76 = xor i64 %75, %73, !dbg !168
  call void @llvm.dbg.value(metadata i64 %76, metadata !169, metadata !DIExpression()), !dbg !35
  %77 = xor i64 %66, %75, !dbg !170
  call void @llvm.dbg.value(metadata i64 %77, metadata !171, metadata !DIExpression()), !dbg !35
  %78 = and i64 %68, %77, !dbg !172
  call void @llvm.dbg.value(metadata i64 %78, metadata !173, metadata !DIExpression()), !dbg !35
  %79 = xor i64 %64, %78, !dbg !174
  call void @llvm.dbg.value(metadata i64 %79, metadata !175, metadata !DIExpression()), !dbg !35
  %80 = xor i64 %79, %76, !dbg !176
  call void @llvm.dbg.value(metadata i64 %80, metadata !177, metadata !DIExpression()), !dbg !35
  %81 = xor i64 %68, %72, !dbg !178
  call void @llvm.dbg.value(metadata i64 %81, metadata !179, metadata !DIExpression()), !dbg !35
  %82 = xor i64 %68, %79, !dbg !180
  call void @llvm.dbg.value(metadata i64 %82, metadata !181, metadata !DIExpression()), !dbg !35
  %83 = xor i64 %72, %76, !dbg !182
  call void @llvm.dbg.value(metadata i64 %83, metadata !183, metadata !DIExpression()), !dbg !35
  %84 = xor i64 %81, %80, !dbg !184
  call void @llvm.dbg.value(metadata i64 %84, metadata !185, metadata !DIExpression()), !dbg !35
  %85 = and i64 %83, %30, !dbg !186
  call void @llvm.dbg.value(metadata i64 %85, metadata !187, metadata !DIExpression()), !dbg !35
  %86 = and i64 %76, %32, !dbg !188
  call void @llvm.dbg.value(metadata i64 %86, metadata !189, metadata !DIExpression()), !dbg !35
  %87 = and i64 %72, %17, !dbg !190
  call void @llvm.dbg.value(metadata i64 %87, metadata !191, metadata !DIExpression()), !dbg !35
  %88 = and i64 %82, %38, !dbg !192
  call void @llvm.dbg.value(metadata i64 %88, metadata !193, metadata !DIExpression()), !dbg !35
  %89 = and i64 %79, %23, !dbg !194
  call void @llvm.dbg.value(metadata i64 %89, metadata !195, metadata !DIExpression()), !dbg !35
  %90 = and i64 %68, %35, !dbg !196
  call void @llvm.dbg.value(metadata i64 %90, metadata !197, metadata !DIExpression()), !dbg !35
  %91 = and i64 %81, %34, !dbg !198
  call void @llvm.dbg.value(metadata i64 %91, metadata !199, metadata !DIExpression()), !dbg !35
  %92 = and i64 %84, %36, !dbg !200
  call void @llvm.dbg.value(metadata i64 %92, metadata !201, metadata !DIExpression()), !dbg !35
  %93 = and i64 %80, %33, !dbg !202
  call void @llvm.dbg.value(metadata i64 %93, metadata !203, metadata !DIExpression()), !dbg !35
  %94 = and i64 %83, %25, !dbg !204
  call void @llvm.dbg.value(metadata i64 %94, metadata !205, metadata !DIExpression()), !dbg !35
  %95 = and i64 %76, %28, !dbg !206
  call void @llvm.dbg.value(metadata i64 %95, metadata !207, metadata !DIExpression()), !dbg !35
  %96 = and i64 %72, %24, !dbg !208
  call void @llvm.dbg.value(metadata i64 %96, metadata !209, metadata !DIExpression()), !dbg !35
  %97 = and i64 %82, %19, !dbg !210
  call void @llvm.dbg.value(metadata i64 %97, metadata !211, metadata !DIExpression()), !dbg !35
  %98 = and i64 %79, %27, !dbg !212
  call void @llvm.dbg.value(metadata i64 %98, metadata !213, metadata !DIExpression()), !dbg !35
  %99 = and i64 %68, %26, !dbg !214
  call void @llvm.dbg.value(metadata i64 %99, metadata !215, metadata !DIExpression()), !dbg !35
  %100 = and i64 %81, %20, !dbg !216
  call void @llvm.dbg.value(metadata i64 %100, metadata !217, metadata !DIExpression()), !dbg !35
  %101 = and i64 %84, %18, !dbg !218
  call void @llvm.dbg.value(metadata i64 %101, metadata !219, metadata !DIExpression()), !dbg !35
  %102 = and i64 %80, %21, !dbg !220
  call void @llvm.dbg.value(metadata i64 %102, metadata !221, metadata !DIExpression()), !dbg !35
  %103 = xor i64 %100, %101, !dbg !222
  call void @llvm.dbg.value(metadata i64 %103, metadata !223, metadata !DIExpression()), !dbg !35
  %104 = xor i64 %95, %96, !dbg !224
  call void @llvm.dbg.value(metadata i64 %104, metadata !225, metadata !DIExpression()), !dbg !35
  %105 = xor i64 %90, %98, !dbg !226
  call void @llvm.dbg.value(metadata i64 %105, metadata !227, metadata !DIExpression()), !dbg !35
  %106 = xor i64 %94, %95, !dbg !228
  call void @llvm.dbg.value(metadata i64 %106, metadata !229, metadata !DIExpression()), !dbg !35
  %107 = xor i64 %87, %97, !dbg !230
  call void @llvm.dbg.value(metadata i64 %107, metadata !231, metadata !DIExpression()), !dbg !35
  %108 = xor i64 %87, %90, !dbg !232
  call void @llvm.dbg.value(metadata i64 %108, metadata !233, metadata !DIExpression()), !dbg !35
  %109 = xor i64 %92, %93, !dbg !234
  call void @llvm.dbg.value(metadata i64 %109, metadata !235, metadata !DIExpression()), !dbg !35
  %110 = xor i64 %85, %88, !dbg !236
  call void @llvm.dbg.value(metadata i64 %110, metadata !237, metadata !DIExpression()), !dbg !35
  %111 = xor i64 %91, %92, !dbg !238
  call void @llvm.dbg.value(metadata i64 %111, metadata !239, metadata !DIExpression()), !dbg !35
  %112 = xor i64 %101, %102, !dbg !240
  call void @llvm.dbg.value(metadata i64 %112, metadata !241, metadata !DIExpression()), !dbg !35
  %113 = xor i64 %97, %105, !dbg !242
  call void @llvm.dbg.value(metadata i64 %113, metadata !243, metadata !DIExpression()), !dbg !35
  %114 = xor i64 %107, %110, !dbg !244
  call void @llvm.dbg.value(metadata i64 %114, metadata !245, metadata !DIExpression()), !dbg !35
  %115 = xor i64 %89, %103, !dbg !246
  call void @llvm.dbg.value(metadata i64 %115, metadata !247, metadata !DIExpression()), !dbg !35
  %116 = xor i64 %88, %111, !dbg !248
  call void @llvm.dbg.value(metadata i64 %116, metadata !249, metadata !DIExpression()), !dbg !35
  %117 = xor i64 %103, %114, !dbg !250
  call void @llvm.dbg.value(metadata i64 %117, metadata !251, metadata !DIExpression()), !dbg !35
  %118 = xor i64 %99, %114, !dbg !252
  call void @llvm.dbg.value(metadata i64 %118, metadata !253, metadata !DIExpression()), !dbg !35
  %119 = xor i64 %109, %115, !dbg !254
  call void @llvm.dbg.value(metadata i64 %119, metadata !255, metadata !DIExpression()), !dbg !35
  %120 = xor i64 %106, %115, !dbg !256
  call void @llvm.dbg.value(metadata i64 %120, metadata !257, metadata !DIExpression()), !dbg !35
  %121 = xor i64 %89, %116, !dbg !258
  call void @llvm.dbg.value(metadata i64 %121, metadata !259, metadata !DIExpression()), !dbg !35
  %122 = xor i64 %118, %119, !dbg !260
  call void @llvm.dbg.value(metadata i64 %122, metadata !261, metadata !DIExpression()), !dbg !35
  %123 = xor i64 %86, %120, !dbg !262
  call void @llvm.dbg.value(metadata i64 %123, metadata !263, metadata !DIExpression()), !dbg !35
  %124 = xor i64 %116, %120, !dbg !264
  call void @llvm.dbg.value(metadata i64 %124, metadata !265, metadata !DIExpression()), !dbg !35
  %125 = xor i64 %119, -1, !dbg !266
  %126 = xor i64 %113, %125, !dbg !267
  call void @llvm.dbg.value(metadata i64 %126, metadata !268, metadata !DIExpression()), !dbg !35
  %127 = xor i64 %117, -1, !dbg !269
  %128 = xor i64 %105, %127, !dbg !270
  call void @llvm.dbg.value(metadata i64 %128, metadata !271, metadata !DIExpression()), !dbg !35
  %129 = xor i64 %121, %122, !dbg !272
  call void @llvm.dbg.value(metadata i64 %129, metadata !273, metadata !DIExpression()), !dbg !35
  %130 = xor i64 %110, %123, !dbg !274
  call void @llvm.dbg.value(metadata i64 %130, metadata !275, metadata !DIExpression()), !dbg !35
  %131 = xor i64 %108, %123, !dbg !276
  call void @llvm.dbg.value(metadata i64 %131, metadata !277, metadata !DIExpression()), !dbg !35
  %132 = xor i64 %104, %122, !dbg !278
  call void @llvm.dbg.value(metadata i64 %132, metadata !279, metadata !DIExpression()), !dbg !35
  %133 = xor i64 %130, -1, !dbg !280
  %134 = xor i64 %121, %133, !dbg !281
  call void @llvm.dbg.value(metadata i64 %134, metadata !282, metadata !DIExpression()), !dbg !35
  %135 = xor i64 %129, -1, !dbg !283
  %136 = xor i64 %112, %135, !dbg !284
  call void @llvm.dbg.value(metadata i64 %136, metadata !285, metadata !DIExpression()), !dbg !35
  %137 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !286
  store i64 %124, i64* %137, align 8, !dbg !287
  %138 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !288
  store i64 %134, i64* %138, align 8, !dbg !289
  %139 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !290
  store i64 %136, i64* %139, align 8, !dbg !291
  %140 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !292
  store i64 %130, i64* %140, align 8, !dbg !293
  %141 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !294
  store i64 %131, i64* %141, align 8, !dbg !295
  %142 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !296
  store i64 %132, i64* %142, align 8, !dbg !297
  %143 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !298
  store i64 %126, i64* %143, align 8, !dbg !299
  %144 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !300
  store i64 %128, i64* %144, align 8, !dbg !301
  ret void, !dbg !302
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_ortho(i64* %0) #0 !dbg !303 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !304, metadata !DIExpression()), !dbg !305
  br label %2, !dbg !306

2:                                                ; preds = %1
  %3 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !307
  %4 = load i64, i64* %3, align 8, !dbg !307
  call void @llvm.dbg.value(metadata i64 %4, metadata !309, metadata !DIExpression()), !dbg !310
  %5 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !307
  %6 = load i64, i64* %5, align 8, !dbg !307
  call void @llvm.dbg.value(metadata i64 %6, metadata !311, metadata !DIExpression()), !dbg !310
  %7 = and i64 %4, 6148914691236517205, !dbg !307
  %8 = and i64 %6, 6148914691236517205, !dbg !307
  %9 = shl i64 %8, 1, !dbg !307
  %10 = or i64 %7, %9, !dbg !307
  %11 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !307
  store i64 %10, i64* %11, align 8, !dbg !307
  %12 = and i64 %4, -6148914691236517206, !dbg !307
  %13 = lshr i64 %12, 1, !dbg !307
  %14 = and i64 %6, -6148914691236517206, !dbg !307
  %15 = or i64 %13, %14, !dbg !307
  %16 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !307
  store i64 %15, i64* %16, align 8, !dbg !307
  br label %17, !dbg !307

17:                                               ; preds = %2
  br label %18, !dbg !312

18:                                               ; preds = %17
  %19 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !313
  %20 = load i64, i64* %19, align 8, !dbg !313
  call void @llvm.dbg.value(metadata i64 %20, metadata !315, metadata !DIExpression()), !dbg !316
  %21 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !313
  %22 = load i64, i64* %21, align 8, !dbg !313
  call void @llvm.dbg.value(metadata i64 %22, metadata !317, metadata !DIExpression()), !dbg !316
  %23 = and i64 %20, 6148914691236517205, !dbg !313
  %24 = and i64 %22, 6148914691236517205, !dbg !313
  %25 = shl i64 %24, 1, !dbg !313
  %26 = or i64 %23, %25, !dbg !313
  %27 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !313
  store i64 %26, i64* %27, align 8, !dbg !313
  %28 = and i64 %20, -6148914691236517206, !dbg !313
  %29 = lshr i64 %28, 1, !dbg !313
  %30 = and i64 %22, -6148914691236517206, !dbg !313
  %31 = or i64 %29, %30, !dbg !313
  %32 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !313
  store i64 %31, i64* %32, align 8, !dbg !313
  br label %33, !dbg !313

33:                                               ; preds = %18
  br label %34, !dbg !318

34:                                               ; preds = %33
  %35 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !319
  %36 = load i64, i64* %35, align 8, !dbg !319
  call void @llvm.dbg.value(metadata i64 %36, metadata !321, metadata !DIExpression()), !dbg !322
  %37 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !319
  %38 = load i64, i64* %37, align 8, !dbg !319
  call void @llvm.dbg.value(metadata i64 %38, metadata !323, metadata !DIExpression()), !dbg !322
  %39 = and i64 %36, 6148914691236517205, !dbg !319
  %40 = and i64 %38, 6148914691236517205, !dbg !319
  %41 = shl i64 %40, 1, !dbg !319
  %42 = or i64 %39, %41, !dbg !319
  %43 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !319
  store i64 %42, i64* %43, align 8, !dbg !319
  %44 = and i64 %36, -6148914691236517206, !dbg !319
  %45 = lshr i64 %44, 1, !dbg !319
  %46 = and i64 %38, -6148914691236517206, !dbg !319
  %47 = or i64 %45, %46, !dbg !319
  %48 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !319
  store i64 %47, i64* %48, align 8, !dbg !319
  br label %49, !dbg !319

49:                                               ; preds = %34
  br label %50, !dbg !324

50:                                               ; preds = %49
  %51 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !325
  %52 = load i64, i64* %51, align 8, !dbg !325
  call void @llvm.dbg.value(metadata i64 %52, metadata !327, metadata !DIExpression()), !dbg !328
  %53 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !325
  %54 = load i64, i64* %53, align 8, !dbg !325
  call void @llvm.dbg.value(metadata i64 %54, metadata !329, metadata !DIExpression()), !dbg !328
  %55 = and i64 %52, 6148914691236517205, !dbg !325
  %56 = and i64 %54, 6148914691236517205, !dbg !325
  %57 = shl i64 %56, 1, !dbg !325
  %58 = or i64 %55, %57, !dbg !325
  %59 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !325
  store i64 %58, i64* %59, align 8, !dbg !325
  %60 = and i64 %52, -6148914691236517206, !dbg !325
  %61 = lshr i64 %60, 1, !dbg !325
  %62 = and i64 %54, -6148914691236517206, !dbg !325
  %63 = or i64 %61, %62, !dbg !325
  %64 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !325
  store i64 %63, i64* %64, align 8, !dbg !325
  br label %65, !dbg !325

65:                                               ; preds = %50
  br label %66, !dbg !330

66:                                               ; preds = %65
  %67 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !331
  %68 = load i64, i64* %67, align 8, !dbg !331
  call void @llvm.dbg.value(metadata i64 %68, metadata !333, metadata !DIExpression()), !dbg !334
  %69 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !331
  %70 = load i64, i64* %69, align 8, !dbg !331
  call void @llvm.dbg.value(metadata i64 %70, metadata !335, metadata !DIExpression()), !dbg !334
  %71 = and i64 %68, 3689348814741910323, !dbg !331
  %72 = and i64 %70, 3689348814741910323, !dbg !331
  %73 = shl i64 %72, 2, !dbg !331
  %74 = or i64 %71, %73, !dbg !331
  %75 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !331
  store i64 %74, i64* %75, align 8, !dbg !331
  %76 = and i64 %68, -3689348814741910324, !dbg !331
  %77 = lshr i64 %76, 2, !dbg !331
  %78 = and i64 %70, -3689348814741910324, !dbg !331
  %79 = or i64 %77, %78, !dbg !331
  %80 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !331
  store i64 %79, i64* %80, align 8, !dbg !331
  br label %81, !dbg !331

81:                                               ; preds = %66
  br label %82, !dbg !336

82:                                               ; preds = %81
  %83 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !337
  %84 = load i64, i64* %83, align 8, !dbg !337
  call void @llvm.dbg.value(metadata i64 %84, metadata !339, metadata !DIExpression()), !dbg !340
  %85 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !337
  %86 = load i64, i64* %85, align 8, !dbg !337
  call void @llvm.dbg.value(metadata i64 %86, metadata !341, metadata !DIExpression()), !dbg !340
  %87 = and i64 %84, 3689348814741910323, !dbg !337
  %88 = and i64 %86, 3689348814741910323, !dbg !337
  %89 = shl i64 %88, 2, !dbg !337
  %90 = or i64 %87, %89, !dbg !337
  %91 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !337
  store i64 %90, i64* %91, align 8, !dbg !337
  %92 = and i64 %84, -3689348814741910324, !dbg !337
  %93 = lshr i64 %92, 2, !dbg !337
  %94 = and i64 %86, -3689348814741910324, !dbg !337
  %95 = or i64 %93, %94, !dbg !337
  %96 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !337
  store i64 %95, i64* %96, align 8, !dbg !337
  br label %97, !dbg !337

97:                                               ; preds = %82
  br label %98, !dbg !342

98:                                               ; preds = %97
  %99 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !343
  %100 = load i64, i64* %99, align 8, !dbg !343
  call void @llvm.dbg.value(metadata i64 %100, metadata !345, metadata !DIExpression()), !dbg !346
  %101 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !343
  %102 = load i64, i64* %101, align 8, !dbg !343
  call void @llvm.dbg.value(metadata i64 %102, metadata !347, metadata !DIExpression()), !dbg !346
  %103 = and i64 %100, 3689348814741910323, !dbg !343
  %104 = and i64 %102, 3689348814741910323, !dbg !343
  %105 = shl i64 %104, 2, !dbg !343
  %106 = or i64 %103, %105, !dbg !343
  %107 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !343
  store i64 %106, i64* %107, align 8, !dbg !343
  %108 = and i64 %100, -3689348814741910324, !dbg !343
  %109 = lshr i64 %108, 2, !dbg !343
  %110 = and i64 %102, -3689348814741910324, !dbg !343
  %111 = or i64 %109, %110, !dbg !343
  %112 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !343
  store i64 %111, i64* %112, align 8, !dbg !343
  br label %113, !dbg !343

113:                                              ; preds = %98
  br label %114, !dbg !348

114:                                              ; preds = %113
  %115 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !349
  %116 = load i64, i64* %115, align 8, !dbg !349
  call void @llvm.dbg.value(metadata i64 %116, metadata !351, metadata !DIExpression()), !dbg !352
  %117 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !349
  %118 = load i64, i64* %117, align 8, !dbg !349
  call void @llvm.dbg.value(metadata i64 %118, metadata !353, metadata !DIExpression()), !dbg !352
  %119 = and i64 %116, 3689348814741910323, !dbg !349
  %120 = and i64 %118, 3689348814741910323, !dbg !349
  %121 = shl i64 %120, 2, !dbg !349
  %122 = or i64 %119, %121, !dbg !349
  %123 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !349
  store i64 %122, i64* %123, align 8, !dbg !349
  %124 = and i64 %116, -3689348814741910324, !dbg !349
  %125 = lshr i64 %124, 2, !dbg !349
  %126 = and i64 %118, -3689348814741910324, !dbg !349
  %127 = or i64 %125, %126, !dbg !349
  %128 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !349
  store i64 %127, i64* %128, align 8, !dbg !349
  br label %129, !dbg !349

129:                                              ; preds = %114
  br label %130, !dbg !354

130:                                              ; preds = %129
  %131 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !355
  %132 = load i64, i64* %131, align 8, !dbg !355
  call void @llvm.dbg.value(metadata i64 %132, metadata !357, metadata !DIExpression()), !dbg !358
  %133 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !355
  %134 = load i64, i64* %133, align 8, !dbg !355
  call void @llvm.dbg.value(metadata i64 %134, metadata !359, metadata !DIExpression()), !dbg !358
  %135 = and i64 %132, 1085102592571150095, !dbg !355
  %136 = and i64 %134, 1085102592571150095, !dbg !355
  %137 = shl i64 %136, 4, !dbg !355
  %138 = or i64 %135, %137, !dbg !355
  %139 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !355
  store i64 %138, i64* %139, align 8, !dbg !355
  %140 = and i64 %132, -1085102592571150096, !dbg !355
  %141 = lshr i64 %140, 4, !dbg !355
  %142 = and i64 %134, -1085102592571150096, !dbg !355
  %143 = or i64 %141, %142, !dbg !355
  %144 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !355
  store i64 %143, i64* %144, align 8, !dbg !355
  br label %145, !dbg !355

145:                                              ; preds = %130
  br label %146, !dbg !360

146:                                              ; preds = %145
  %147 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !361
  %148 = load i64, i64* %147, align 8, !dbg !361
  call void @llvm.dbg.value(metadata i64 %148, metadata !363, metadata !DIExpression()), !dbg !364
  %149 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !361
  %150 = load i64, i64* %149, align 8, !dbg !361
  call void @llvm.dbg.value(metadata i64 %150, metadata !365, metadata !DIExpression()), !dbg !364
  %151 = and i64 %148, 1085102592571150095, !dbg !361
  %152 = and i64 %150, 1085102592571150095, !dbg !361
  %153 = shl i64 %152, 4, !dbg !361
  %154 = or i64 %151, %153, !dbg !361
  %155 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !361
  store i64 %154, i64* %155, align 8, !dbg !361
  %156 = and i64 %148, -1085102592571150096, !dbg !361
  %157 = lshr i64 %156, 4, !dbg !361
  %158 = and i64 %150, -1085102592571150096, !dbg !361
  %159 = or i64 %157, %158, !dbg !361
  %160 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !361
  store i64 %159, i64* %160, align 8, !dbg !361
  br label %161, !dbg !361

161:                                              ; preds = %146
  br label %162, !dbg !366

162:                                              ; preds = %161
  %163 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !367
  %164 = load i64, i64* %163, align 8, !dbg !367
  call void @llvm.dbg.value(metadata i64 %164, metadata !369, metadata !DIExpression()), !dbg !370
  %165 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !367
  %166 = load i64, i64* %165, align 8, !dbg !367
  call void @llvm.dbg.value(metadata i64 %166, metadata !371, metadata !DIExpression()), !dbg !370
  %167 = and i64 %164, 1085102592571150095, !dbg !367
  %168 = and i64 %166, 1085102592571150095, !dbg !367
  %169 = shl i64 %168, 4, !dbg !367
  %170 = or i64 %167, %169, !dbg !367
  %171 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !367
  store i64 %170, i64* %171, align 8, !dbg !367
  %172 = and i64 %164, -1085102592571150096, !dbg !367
  %173 = lshr i64 %172, 4, !dbg !367
  %174 = and i64 %166, -1085102592571150096, !dbg !367
  %175 = or i64 %173, %174, !dbg !367
  %176 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !367
  store i64 %175, i64* %176, align 8, !dbg !367
  br label %177, !dbg !367

177:                                              ; preds = %162
  br label %178, !dbg !372

178:                                              ; preds = %177
  %179 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !373
  %180 = load i64, i64* %179, align 8, !dbg !373
  call void @llvm.dbg.value(metadata i64 %180, metadata !375, metadata !DIExpression()), !dbg !376
  %181 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !373
  %182 = load i64, i64* %181, align 8, !dbg !373
  call void @llvm.dbg.value(metadata i64 %182, metadata !377, metadata !DIExpression()), !dbg !376
  %183 = and i64 %180, 1085102592571150095, !dbg !373
  %184 = and i64 %182, 1085102592571150095, !dbg !373
  %185 = shl i64 %184, 4, !dbg !373
  %186 = or i64 %183, %185, !dbg !373
  %187 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !373
  store i64 %186, i64* %187, align 8, !dbg !373
  %188 = and i64 %180, -1085102592571150096, !dbg !373
  %189 = lshr i64 %188, 4, !dbg !373
  %190 = and i64 %182, -1085102592571150096, !dbg !373
  %191 = or i64 %189, %190, !dbg !373
  %192 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !373
  store i64 %191, i64* %192, align 8, !dbg !373
  br label %193, !dbg !373

193:                                              ; preds = %178
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_interleave_in(i64* %0, i64* %1, i32* %2) #0 !dbg !379 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i64* %1, metadata !386, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i32* %2, metadata !387, metadata !DIExpression()), !dbg !385
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !388
  %5 = load i32, i32* %4, align 4, !dbg !388
  %6 = zext i32 %5 to i64, !dbg !388
  call void @llvm.dbg.value(metadata i64 %6, metadata !389, metadata !DIExpression()), !dbg !385
  %7 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !390
  %8 = load i32, i32* %7, align 4, !dbg !390
  %9 = zext i32 %8 to i64, !dbg !390
  call void @llvm.dbg.value(metadata i64 %9, metadata !391, metadata !DIExpression()), !dbg !385
  %10 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !392
  %11 = load i32, i32* %10, align 4, !dbg !392
  %12 = zext i32 %11 to i64, !dbg !392
  call void @llvm.dbg.value(metadata i64 %12, metadata !393, metadata !DIExpression()), !dbg !385
  %13 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !394
  %14 = load i32, i32* %13, align 4, !dbg !394
  %15 = zext i32 %14 to i64, !dbg !394
  call void @llvm.dbg.value(metadata i64 %15, metadata !395, metadata !DIExpression()), !dbg !385
  %16 = shl i64 %6, 16, !dbg !396
  %17 = or i64 %6, %16, !dbg !397
  call void @llvm.dbg.value(metadata i64 %17, metadata !389, metadata !DIExpression()), !dbg !385
  %18 = shl i64 %9, 16, !dbg !398
  %19 = or i64 %9, %18, !dbg !399
  call void @llvm.dbg.value(metadata i64 %19, metadata !391, metadata !DIExpression()), !dbg !385
  %20 = shl i64 %12, 16, !dbg !400
  %21 = or i64 %12, %20, !dbg !401
  call void @llvm.dbg.value(metadata i64 %21, metadata !393, metadata !DIExpression()), !dbg !385
  %22 = shl i64 %15, 16, !dbg !402
  %23 = or i64 %15, %22, !dbg !403
  call void @llvm.dbg.value(metadata i64 %23, metadata !395, metadata !DIExpression()), !dbg !385
  %24 = and i64 %17, 281470681808895, !dbg !404
  call void @llvm.dbg.value(metadata i64 %24, metadata !389, metadata !DIExpression()), !dbg !385
  %25 = and i64 %19, 281470681808895, !dbg !405
  call void @llvm.dbg.value(metadata i64 %25, metadata !391, metadata !DIExpression()), !dbg !385
  %26 = and i64 %21, 281470681808895, !dbg !406
  call void @llvm.dbg.value(metadata i64 %26, metadata !393, metadata !DIExpression()), !dbg !385
  %27 = and i64 %23, 281470681808895, !dbg !407
  call void @llvm.dbg.value(metadata i64 %27, metadata !395, metadata !DIExpression()), !dbg !385
  %28 = shl i64 %24, 8, !dbg !408
  %29 = or i64 %24, %28, !dbg !409
  call void @llvm.dbg.value(metadata i64 %29, metadata !389, metadata !DIExpression()), !dbg !385
  %30 = shl i64 %25, 8, !dbg !410
  %31 = or i64 %25, %30, !dbg !411
  call void @llvm.dbg.value(metadata i64 %31, metadata !391, metadata !DIExpression()), !dbg !385
  %32 = shl i64 %26, 8, !dbg !412
  %33 = or i64 %26, %32, !dbg !413
  call void @llvm.dbg.value(metadata i64 %33, metadata !393, metadata !DIExpression()), !dbg !385
  %34 = shl i64 %27, 8, !dbg !414
  %35 = or i64 %27, %34, !dbg !415
  call void @llvm.dbg.value(metadata i64 %35, metadata !395, metadata !DIExpression()), !dbg !385
  %36 = and i64 %29, 71777214294589695, !dbg !416
  call void @llvm.dbg.value(metadata i64 %36, metadata !389, metadata !DIExpression()), !dbg !385
  %37 = and i64 %31, 71777214294589695, !dbg !417
  call void @llvm.dbg.value(metadata i64 %37, metadata !391, metadata !DIExpression()), !dbg !385
  %38 = and i64 %33, 71777214294589695, !dbg !418
  call void @llvm.dbg.value(metadata i64 %38, metadata !393, metadata !DIExpression()), !dbg !385
  %39 = and i64 %35, 71777214294589695, !dbg !419
  call void @llvm.dbg.value(metadata i64 %39, metadata !395, metadata !DIExpression()), !dbg !385
  %40 = shl i64 %38, 8, !dbg !420
  %41 = or i64 %36, %40, !dbg !421
  store i64 %41, i64* %0, align 8, !dbg !422
  %42 = shl i64 %39, 8, !dbg !423
  %43 = or i64 %37, %42, !dbg !424
  store i64 %43, i64* %1, align 8, !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_interleave_out(i32* %0, i64 %1, i64 %2) #0 !dbg !427 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !431, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata i64 %1, metadata !433, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata i64 %2, metadata !434, metadata !DIExpression()), !dbg !432
  %4 = and i64 %1, 71777214294589695, !dbg !435
  call void @llvm.dbg.value(metadata i64 %4, metadata !436, metadata !DIExpression()), !dbg !432
  %5 = and i64 %2, 71777214294589695, !dbg !437
  call void @llvm.dbg.value(metadata i64 %5, metadata !438, metadata !DIExpression()), !dbg !432
  %6 = lshr i64 %1, 8, !dbg !439
  %7 = and i64 %6, 71777214294589695, !dbg !440
  call void @llvm.dbg.value(metadata i64 %7, metadata !441, metadata !DIExpression()), !dbg !432
  %8 = lshr i64 %2, 8, !dbg !442
  %9 = and i64 %8, 71777214294589695, !dbg !443
  call void @llvm.dbg.value(metadata i64 %9, metadata !444, metadata !DIExpression()), !dbg !432
  %10 = lshr i64 %4, 8, !dbg !445
  %11 = or i64 %4, %10, !dbg !446
  call void @llvm.dbg.value(metadata i64 %11, metadata !436, metadata !DIExpression()), !dbg !432
  %12 = lshr i64 %5, 8, !dbg !447
  %13 = or i64 %5, %12, !dbg !448
  call void @llvm.dbg.value(metadata i64 %13, metadata !438, metadata !DIExpression()), !dbg !432
  %14 = lshr i64 %7, 8, !dbg !449
  %15 = or i64 %7, %14, !dbg !450
  call void @llvm.dbg.value(metadata i64 %15, metadata !441, metadata !DIExpression()), !dbg !432
  %16 = lshr i64 %9, 8, !dbg !451
  %17 = or i64 %9, %16, !dbg !452
  call void @llvm.dbg.value(metadata i64 %17, metadata !444, metadata !DIExpression()), !dbg !432
  %18 = and i64 %11, 281470681808895, !dbg !453
  call void @llvm.dbg.value(metadata i64 %18, metadata !436, metadata !DIExpression()), !dbg !432
  %19 = and i64 %13, 281470681808895, !dbg !454
  call void @llvm.dbg.value(metadata i64 %19, metadata !438, metadata !DIExpression()), !dbg !432
  %20 = and i64 %15, 281470681808895, !dbg !455
  call void @llvm.dbg.value(metadata i64 %20, metadata !441, metadata !DIExpression()), !dbg !432
  %21 = and i64 %17, 281470681808895, !dbg !456
  call void @llvm.dbg.value(metadata i64 %21, metadata !444, metadata !DIExpression()), !dbg !432
  %22 = trunc i64 %18 to i32, !dbg !457
  %23 = lshr i64 %18, 16, !dbg !458
  %24 = trunc i64 %23 to i32, !dbg !459
  %25 = or i32 %22, %24, !dbg !460
  %26 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !461
  store i32 %25, i32* %26, align 4, !dbg !462
  %27 = trunc i64 %19 to i32, !dbg !463
  %28 = lshr i64 %19, 16, !dbg !464
  %29 = trunc i64 %28 to i32, !dbg !465
  %30 = or i32 %27, %29, !dbg !466
  %31 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !467
  store i32 %30, i32* %31, align 4, !dbg !468
  %32 = trunc i64 %20 to i32, !dbg !469
  %33 = lshr i64 %20, 16, !dbg !470
  %34 = trunc i64 %33 to i32, !dbg !471
  %35 = or i32 %32, %34, !dbg !472
  %36 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !473
  store i32 %35, i32* %36, align 4, !dbg !474
  %37 = trunc i64 %21 to i32, !dbg !475
  %38 = lshr i64 %21, 16, !dbg !476
  %39 = trunc i64 %38 to i32, !dbg !477
  %40 = or i32 %37, %39, !dbg !478
  %41 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !479
  store i32 %40, i32* %41, align 4, !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_ct64_keysched(i64* %0, i8* %1, i64 %2) #0 !dbg !482 {
  %4 = alloca [60 x i32], align 16
  %5 = alloca [8 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %1, metadata !491, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i64 %2, metadata !492, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata [60 x i32]* %4, metadata !493, metadata !DIExpression()), !dbg !497
  switch i64 %2, label %9 [
    i64 16, label %6
    i64 24, label %7
    i64 32, label %8
  ], !dbg !498

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !499, metadata !DIExpression()), !dbg !490
  br label %10, !dbg !500

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 12, metadata !499, metadata !DIExpression()), !dbg !490
  br label %10, !dbg !502

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 14, metadata !499, metadata !DIExpression()), !dbg !490
  br label %10, !dbg !503

9:                                                ; preds = %3
  br label %125, !dbg !504

10:                                               ; preds = %8, %7, %6
  %.07 = phi i32 [ 14, %8 ], [ 12, %7 ], [ 10, %6 ], !dbg !505
  call void @llvm.dbg.value(metadata i32 %.07, metadata !499, metadata !DIExpression()), !dbg !490
  %11 = lshr i64 %2, 2, !dbg !506
  %12 = trunc i64 %11 to i32, !dbg !507
  call void @llvm.dbg.value(metadata i32 %12, metadata !508, metadata !DIExpression()), !dbg !490
  %13 = add i32 %.07, 1, !dbg !509
  %14 = shl i32 %13, 2, !dbg !510
  call void @llvm.dbg.value(metadata i32 %14, metadata !511, metadata !DIExpression()), !dbg !490
  %15 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 0, !dbg !512
  %16 = lshr i64 %2, 2, !dbg !513
  call void @br_range_dec32le(i32* %15, i64 %16, i8* %1), !dbg !514
  %17 = lshr i64 %2, 2, !dbg !515
  %18 = sub i64 %17, 1, !dbg !516
  %19 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %18, !dbg !517
  %20 = load i32, i32* %19, align 4, !dbg !517
  call void @llvm.dbg.value(metadata i32 %20, metadata !518, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %12, metadata !519, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 0, metadata !521, metadata !DIExpression()), !dbg !490
  br label %21, !dbg !522

21:                                               ; preds = %55, %10
  %.08 = phi i32 [ %12, %10 ], [ %56, %55 ], !dbg !524
  %.04 = phi i32 [ 0, %10 ], [ %.15, %55 ], !dbg !524
  %.02 = phi i32 [ 0, %10 ], [ %.13, %55 ], !dbg !524
  %.01 = phi i32 [ %20, %10 ], [ %47, %55 ], !dbg !490
  call void @llvm.dbg.value(metadata i32 %.01, metadata !518, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %.02, metadata !521, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %.04, metadata !520, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %.08, metadata !519, metadata !DIExpression()), !dbg !490
  %22 = icmp slt i32 %.08, %14, !dbg !525
  br i1 %22, label %23, label %57, !dbg !527

23:                                               ; preds = %21
  %24 = icmp eq i32 %.04, 0, !dbg !528
  br i1 %24, label %25, label %35, !dbg !531

25:                                               ; preds = %23
  %26 = shl i32 %.01, 24, !dbg !532
  %27 = lshr i32 %.01, 8, !dbg !534
  %28 = or i32 %26, %27, !dbg !535
  call void @llvm.dbg.value(metadata i32 %28, metadata !518, metadata !DIExpression()), !dbg !490
  %29 = call i32 @sub_word(i32 %28), !dbg !536
  %30 = sext i32 %.02 to i64, !dbg !537
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* @Rcon, i64 0, i64 %30, !dbg !537
  %32 = load i8, i8* %31, align 1, !dbg !537
  %33 = zext i8 %32 to i32, !dbg !537
  %34 = xor i32 %29, %33, !dbg !538
  call void @llvm.dbg.value(metadata i32 %34, metadata !518, metadata !DIExpression()), !dbg !490
  br label %42, !dbg !539

35:                                               ; preds = %23
  %36 = icmp sgt i32 %12, 6, !dbg !540
  br i1 %36, label %37, label %41, !dbg !542

37:                                               ; preds = %35
  %38 = icmp eq i32 %.04, 4, !dbg !543
  br i1 %38, label %39, label %41, !dbg !544

39:                                               ; preds = %37
  %40 = call i32 @sub_word(i32 %.01), !dbg !545
  call void @llvm.dbg.value(metadata i32 %40, metadata !518, metadata !DIExpression()), !dbg !490
  br label %41, !dbg !547

41:                                               ; preds = %39, %37, %35
  %.1 = phi i32 [ %40, %39 ], [ %.01, %37 ], [ %.01, %35 ], !dbg !490
  call void @llvm.dbg.value(metadata i32 %.1, metadata !518, metadata !DIExpression()), !dbg !490
  br label %42

42:                                               ; preds = %41, %25
  %.2 = phi i32 [ %34, %25 ], [ %.1, %41 ], !dbg !548
  call void @llvm.dbg.value(metadata i32 %.2, metadata !518, metadata !DIExpression()), !dbg !490
  %43 = sub nsw i32 %.08, %12, !dbg !549
  %44 = sext i32 %43 to i64, !dbg !550
  %45 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %44, !dbg !550
  %46 = load i32, i32* %45, align 4, !dbg !550
  %47 = xor i32 %.2, %46, !dbg !551
  call void @llvm.dbg.value(metadata i32 %47, metadata !518, metadata !DIExpression()), !dbg !490
  %48 = sext i32 %.08 to i64, !dbg !552
  %49 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 %48, !dbg !552
  store i32 %47, i32* %49, align 4, !dbg !553
  %50 = add nsw i32 %.04, 1, !dbg !554
  call void @llvm.dbg.value(metadata i32 %50, metadata !520, metadata !DIExpression()), !dbg !490
  %51 = icmp eq i32 %50, %12, !dbg !556
  br i1 %51, label %52, label %54, !dbg !557

52:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()), !dbg !490
  %53 = add nsw i32 %.02, 1, !dbg !558
  call void @llvm.dbg.value(metadata i32 %53, metadata !521, metadata !DIExpression()), !dbg !490
  br label %54, !dbg !560

54:                                               ; preds = %52, %42
  %.15 = phi i32 [ 0, %52 ], [ %50, %42 ], !dbg !561
  %.13 = phi i32 [ %53, %52 ], [ %.02, %42 ], !dbg !524
  call void @llvm.dbg.value(metadata i32 %.13, metadata !521, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %.15, metadata !520, metadata !DIExpression()), !dbg !490
  br label %55, !dbg !562

55:                                               ; preds = %54
  %56 = add nsw i32 %.08, 1, !dbg !563
  call void @llvm.dbg.value(metadata i32 %56, metadata !519, metadata !DIExpression()), !dbg !490
  br label %21, !dbg !564, !llvm.loop !565

57:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 0, metadata !519, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()), !dbg !490
  br label %58, !dbg !568

58:                                               ; preds = %121, %57
  %.19 = phi i32 [ 0, %57 ], [ %122, %121 ], !dbg !570
  %.26 = phi i32 [ 0, %57 ], [ %123, %121 ], !dbg !570
  call void @llvm.dbg.value(metadata i32 %.26, metadata !520, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %.19, metadata !519, metadata !DIExpression()), !dbg !490
  %59 = icmp slt i32 %.19, %14, !dbg !571
  br i1 %59, label %60, label %124, !dbg !573

60:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata [8 x i64]* %5, metadata !574, metadata !DIExpression()), !dbg !579
  %61 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !580
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !581
  %63 = getelementptr inbounds [60 x i32], [60 x i32]* %4, i64 0, i64 0, !dbg !582
  %64 = sext i32 %.19 to i64, !dbg !583
  %65 = getelementptr inbounds i32, i32* %63, i64 %64, !dbg !583
  call void @br_aes_ct64_interleave_in(i64* %61, i64* %62, i32* %65), !dbg !584
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !585
  %67 = load i64, i64* %66, align 16, !dbg !585
  %68 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1, !dbg !586
  store i64 %67, i64* %68, align 8, !dbg !587
  %69 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !588
  %70 = load i64, i64* %69, align 16, !dbg !588
  %71 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2, !dbg !589
  store i64 %70, i64* %71, align 16, !dbg !590
  %72 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !591
  %73 = load i64, i64* %72, align 16, !dbg !591
  %74 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3, !dbg !592
  store i64 %73, i64* %74, align 8, !dbg !593
  %75 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !594
  %76 = load i64, i64* %75, align 16, !dbg !594
  %77 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5, !dbg !595
  store i64 %76, i64* %77, align 8, !dbg !596
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !597
  %79 = load i64, i64* %78, align 16, !dbg !597
  %80 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6, !dbg !598
  store i64 %79, i64* %80, align 16, !dbg !599
  %81 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !600
  %82 = load i64, i64* %81, align 16, !dbg !600
  %83 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7, !dbg !601
  store i64 %82, i64* %83, align 8, !dbg !602
  %84 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !603
  call void @br_aes_ct64_ortho(i64* %84), !dbg !604
  %85 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 0, !dbg !605
  %86 = load i64, i64* %85, align 16, !dbg !605
  %87 = and i64 %86, 1229782938247303441, !dbg !606
  %88 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 1, !dbg !607
  %89 = load i64, i64* %88, align 8, !dbg !607
  %90 = and i64 %89, 2459565876494606882, !dbg !608
  %91 = or i64 %87, %90, !dbg !609
  %92 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 2, !dbg !610
  %93 = load i64, i64* %92, align 16, !dbg !610
  %94 = and i64 %93, 4919131752989213764, !dbg !611
  %95 = or i64 %91, %94, !dbg !612
  %96 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 3, !dbg !613
  %97 = load i64, i64* %96, align 8, !dbg !613
  %98 = and i64 %97, -8608480567731124088, !dbg !614
  %99 = or i64 %95, %98, !dbg !615
  %100 = add nsw i32 %.26, 0, !dbg !616
  %101 = sext i32 %100 to i64, !dbg !617
  %102 = getelementptr inbounds i64, i64* %0, i64 %101, !dbg !617
  store i64 %99, i64* %102, align 8, !dbg !618
  %103 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 4, !dbg !619
  %104 = load i64, i64* %103, align 16, !dbg !619
  %105 = and i64 %104, 1229782938247303441, !dbg !620
  %106 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 5, !dbg !621
  %107 = load i64, i64* %106, align 8, !dbg !621
  %108 = and i64 %107, 2459565876494606882, !dbg !622
  %109 = or i64 %105, %108, !dbg !623
  %110 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 6, !dbg !624
  %111 = load i64, i64* %110, align 16, !dbg !624
  %112 = and i64 %111, 4919131752989213764, !dbg !625
  %113 = or i64 %109, %112, !dbg !626
  %114 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 7, !dbg !627
  %115 = load i64, i64* %114, align 8, !dbg !627
  %116 = and i64 %115, -8608480567731124088, !dbg !628
  %117 = or i64 %113, %116, !dbg !629
  %118 = add nsw i32 %.26, 1, !dbg !630
  %119 = sext i32 %118 to i64, !dbg !631
  %120 = getelementptr inbounds i64, i64* %0, i64 %119, !dbg !631
  store i64 %117, i64* %120, align 8, !dbg !632
  br label %121, !dbg !633

121:                                              ; preds = %60
  %122 = add nsw i32 %.19, 4, !dbg !634
  call void @llvm.dbg.value(metadata i32 %122, metadata !519, metadata !DIExpression()), !dbg !490
  %123 = add nsw i32 %.26, 2, !dbg !635
  call void @llvm.dbg.value(metadata i32 %123, metadata !520, metadata !DIExpression()), !dbg !490
  br label %58, !dbg !636, !llvm.loop !637

124:                                              ; preds = %58
  br label %125, !dbg !639

125:                                              ; preds = %124, %9
  %.0 = phi i32 [ 0, %9 ], [ %.07, %124 ], !dbg !490
  ret i32 %.0, !dbg !640
}

declare dso_local void @br_range_dec32le(i32*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @sub_word(i32 %0) #0 !dbg !641 {
  %2 = alloca [8 x i64], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !644, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.declare(metadata [8 x i64]* %2, metadata !646, metadata !DIExpression()), !dbg !647
  %3 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !648
  %4 = bitcast i64* %3 to i8*, !dbg !648
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 64, i1 false), !dbg !648
  %5 = zext i32 %0 to i64, !dbg !649
  %6 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !650
  store i64 %5, i64* %6, align 16, !dbg !651
  %7 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !652
  call void @br_aes_ct64_ortho(i64* %7), !dbg !653
  %8 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !654
  call void @br_aes_ct64_bitslice_Sbox(i64* %8), !dbg !655
  %9 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !656
  call void @br_aes_ct64_ortho(i64* %9), !dbg !657
  %10 = getelementptr inbounds [8 x i64], [8 x i64]* %2, i64 0, i64 0, !dbg !658
  %11 = load i64, i64* %10, align 16, !dbg !658
  %12 = trunc i64 %11 to i32, !dbg !659
  ret i32 %12, !dbg !660
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_skey_expand(i64* %0, i32 %1, i64* %2) #0 !dbg !661 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !666, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %1, metadata !668, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64* %2, metadata !669, metadata !DIExpression()), !dbg !667
  %4 = add i32 %1, 1, !dbg !670
  %5 = shl i32 %4, 1, !dbg !671
  call void @llvm.dbg.value(metadata i32 %5, metadata !672, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 0, metadata !673, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 0, metadata !674, metadata !DIExpression()), !dbg !667
  br label %6, !dbg !675

6:                                                ; preds = %39, %3
  %.01 = phi i32 [ 0, %3 ], [ %40, %39 ], !dbg !677
  %.0 = phi i32 [ 0, %3 ], [ %41, %39 ], !dbg !677
  call void @llvm.dbg.value(metadata i32 %.0, metadata !674, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %.01, metadata !673, metadata !DIExpression()), !dbg !667
  %7 = icmp ult i32 %.01, %5, !dbg !678
  br i1 %7, label %8, label %42, !dbg !680

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64, !dbg !681
  %10 = getelementptr inbounds i64, i64* %2, i64 %9, !dbg !681
  %11 = load i64, i64* %10, align 8, !dbg !681
  call void @llvm.dbg.value(metadata i64 %11, metadata !683, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i64 %11, metadata !685, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i64 %11, metadata !686, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i64 %11, metadata !687, metadata !DIExpression()), !dbg !684
  %12 = and i64 %11, 1229782938247303441, !dbg !688
  call void @llvm.dbg.value(metadata i64 %12, metadata !687, metadata !DIExpression()), !dbg !684
  %13 = and i64 %11, 2459565876494606882, !dbg !689
  call void @llvm.dbg.value(metadata i64 %13, metadata !686, metadata !DIExpression()), !dbg !684
  %14 = and i64 %11, 4919131752989213764, !dbg !690
  call void @llvm.dbg.value(metadata i64 %14, metadata !685, metadata !DIExpression()), !dbg !684
  %15 = and i64 %11, -8608480567731124088, !dbg !691
  call void @llvm.dbg.value(metadata i64 %15, metadata !683, metadata !DIExpression()), !dbg !684
  %16 = lshr i64 %13, 1, !dbg !692
  call void @llvm.dbg.value(metadata i64 %16, metadata !686, metadata !DIExpression()), !dbg !684
  %17 = lshr i64 %14, 2, !dbg !693
  call void @llvm.dbg.value(metadata i64 %17, metadata !685, metadata !DIExpression()), !dbg !684
  %18 = lshr i64 %15, 3, !dbg !694
  call void @llvm.dbg.value(metadata i64 %18, metadata !683, metadata !DIExpression()), !dbg !684
  %19 = shl i64 %12, 4, !dbg !695
  %20 = sub i64 %19, %12, !dbg !696
  %21 = add i32 %.0, 0, !dbg !697
  %22 = zext i32 %21 to i64, !dbg !698
  %23 = getelementptr inbounds i64, i64* %0, i64 %22, !dbg !698
  store i64 %20, i64* %23, align 8, !dbg !699
  %24 = shl i64 %16, 4, !dbg !700
  %25 = sub i64 %24, %16, !dbg !701
  %26 = add i32 %.0, 1, !dbg !702
  %27 = zext i32 %26 to i64, !dbg !703
  %28 = getelementptr inbounds i64, i64* %0, i64 %27, !dbg !703
  store i64 %25, i64* %28, align 8, !dbg !704
  %29 = shl i64 %17, 4, !dbg !705
  %30 = sub i64 %29, %17, !dbg !706
  %31 = add i32 %.0, 2, !dbg !707
  %32 = zext i32 %31 to i64, !dbg !708
  %33 = getelementptr inbounds i64, i64* %0, i64 %32, !dbg !708
  store i64 %30, i64* %33, align 8, !dbg !709
  %34 = shl i64 %18, 4, !dbg !710
  %35 = sub i64 %34, %18, !dbg !711
  %36 = add i32 %.0, 3, !dbg !712
  %37 = zext i32 %36 to i64, !dbg !713
  %38 = getelementptr inbounds i64, i64* %0, i64 %37, !dbg !713
  store i64 %35, i64* %38, align 8, !dbg !714
  br label %39, !dbg !715

39:                                               ; preds = %8
  %40 = add i32 %.01, 1, !dbg !716
  call void @llvm.dbg.value(metadata i32 %40, metadata !673, metadata !DIExpression()), !dbg !667
  %41 = add i32 %.0, 4, !dbg !717
  call void @llvm.dbg.value(metadata i32 %41, metadata !674, metadata !DIExpression()), !dbg !667
  br label %6, !dbg !718, !llvm.loop !719

42:                                               ; preds = %6
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_bitslice_invSbox(i64* %0) #0 !dbg !722 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !723, metadata !DIExpression()), !dbg !724
  %2 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !725
  %3 = load i64, i64* %2, align 8, !dbg !725
  %4 = xor i64 %3, -1, !dbg !726
  call void @llvm.dbg.value(metadata i64 %4, metadata !727, metadata !DIExpression()), !dbg !724
  %5 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !728
  %6 = load i64, i64* %5, align 8, !dbg !728
  %7 = xor i64 %6, -1, !dbg !729
  call void @llvm.dbg.value(metadata i64 %7, metadata !730, metadata !DIExpression()), !dbg !724
  %8 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !731
  %9 = load i64, i64* %8, align 8, !dbg !731
  call void @llvm.dbg.value(metadata i64 %9, metadata !732, metadata !DIExpression()), !dbg !724
  %10 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !733
  %11 = load i64, i64* %10, align 8, !dbg !733
  call void @llvm.dbg.value(metadata i64 %11, metadata !734, metadata !DIExpression()), !dbg !724
  %12 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !735
  %13 = load i64, i64* %12, align 8, !dbg !735
  call void @llvm.dbg.value(metadata i64 %13, metadata !736, metadata !DIExpression()), !dbg !724
  %14 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !737
  %15 = load i64, i64* %14, align 8, !dbg !737
  %16 = xor i64 %15, -1, !dbg !738
  call void @llvm.dbg.value(metadata i64 %16, metadata !739, metadata !DIExpression()), !dbg !724
  %17 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !740
  %18 = load i64, i64* %17, align 8, !dbg !740
  %19 = xor i64 %18, -1, !dbg !741
  call void @llvm.dbg.value(metadata i64 %19, metadata !742, metadata !DIExpression()), !dbg !724
  %20 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !743
  %21 = load i64, i64* %20, align 8, !dbg !743
  call void @llvm.dbg.value(metadata i64 %21, metadata !744, metadata !DIExpression()), !dbg !724
  %22 = xor i64 %7, %13, !dbg !745
  %23 = xor i64 %22, %19, !dbg !746
  %24 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !747
  store i64 %23, i64* %24, align 8, !dbg !748
  %25 = xor i64 %4, %11, !dbg !749
  %26 = xor i64 %25, %16, !dbg !750
  %27 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !751
  store i64 %26, i64* %27, align 8, !dbg !752
  %28 = xor i64 %21, %9, !dbg !753
  %29 = xor i64 %28, %13, !dbg !754
  %30 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !755
  store i64 %29, i64* %30, align 8, !dbg !756
  %31 = xor i64 %19, %7, !dbg !757
  %32 = xor i64 %31, %11, !dbg !758
  %33 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !759
  store i64 %32, i64* %33, align 8, !dbg !760
  %34 = xor i64 %16, %4, !dbg !761
  %35 = xor i64 %34, %9, !dbg !762
  %36 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !763
  store i64 %35, i64* %36, align 8, !dbg !764
  %37 = xor i64 %13, %21, !dbg !765
  %38 = xor i64 %37, %7, !dbg !766
  %39 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !767
  store i64 %38, i64* %39, align 8, !dbg !768
  %40 = xor i64 %11, %19, !dbg !769
  %41 = xor i64 %40, %4, !dbg !770
  %42 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !771
  store i64 %41, i64* %42, align 8, !dbg !772
  %43 = xor i64 %9, %16, !dbg !773
  %44 = xor i64 %43, %21, !dbg !774
  %45 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !775
  store i64 %44, i64* %45, align 8, !dbg !776
  call void @br_aes_ct64_bitslice_Sbox(i64* %0), !dbg !777
  %46 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !778
  %47 = load i64, i64* %46, align 8, !dbg !778
  %48 = xor i64 %47, -1, !dbg !779
  call void @llvm.dbg.value(metadata i64 %48, metadata !727, metadata !DIExpression()), !dbg !724
  %49 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !780
  %50 = load i64, i64* %49, align 8, !dbg !780
  %51 = xor i64 %50, -1, !dbg !781
  call void @llvm.dbg.value(metadata i64 %51, metadata !730, metadata !DIExpression()), !dbg !724
  %52 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !782
  %53 = load i64, i64* %52, align 8, !dbg !782
  call void @llvm.dbg.value(metadata i64 %53, metadata !732, metadata !DIExpression()), !dbg !724
  %54 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !783
  %55 = load i64, i64* %54, align 8, !dbg !783
  call void @llvm.dbg.value(metadata i64 %55, metadata !734, metadata !DIExpression()), !dbg !724
  %56 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !784
  %57 = load i64, i64* %56, align 8, !dbg !784
  call void @llvm.dbg.value(metadata i64 %57, metadata !736, metadata !DIExpression()), !dbg !724
  %58 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !785
  %59 = load i64, i64* %58, align 8, !dbg !785
  %60 = xor i64 %59, -1, !dbg !786
  call void @llvm.dbg.value(metadata i64 %60, metadata !739, metadata !DIExpression()), !dbg !724
  %61 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !787
  %62 = load i64, i64* %61, align 8, !dbg !787
  %63 = xor i64 %62, -1, !dbg !788
  call void @llvm.dbg.value(metadata i64 %63, metadata !742, metadata !DIExpression()), !dbg !724
  %64 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !789
  %65 = load i64, i64* %64, align 8, !dbg !789
  call void @llvm.dbg.value(metadata i64 %65, metadata !744, metadata !DIExpression()), !dbg !724
  %66 = xor i64 %51, %57, !dbg !790
  %67 = xor i64 %66, %63, !dbg !791
  %68 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !792
  store i64 %67, i64* %68, align 8, !dbg !793
  %69 = xor i64 %48, %55, !dbg !794
  %70 = xor i64 %69, %60, !dbg !795
  %71 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !796
  store i64 %70, i64* %71, align 8, !dbg !797
  %72 = xor i64 %65, %53, !dbg !798
  %73 = xor i64 %72, %57, !dbg !799
  %74 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !800
  store i64 %73, i64* %74, align 8, !dbg !801
  %75 = xor i64 %63, %51, !dbg !802
  %76 = xor i64 %75, %55, !dbg !803
  %77 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !804
  store i64 %76, i64* %77, align 8, !dbg !805
  %78 = xor i64 %60, %48, !dbg !806
  %79 = xor i64 %78, %53, !dbg !807
  %80 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !808
  store i64 %79, i64* %80, align 8, !dbg !809
  %81 = xor i64 %57, %65, !dbg !810
  %82 = xor i64 %81, %51, !dbg !811
  %83 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !812
  store i64 %82, i64* %83, align 8, !dbg !813
  %84 = xor i64 %55, %63, !dbg !814
  %85 = xor i64 %84, %48, !dbg !815
  %86 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !816
  store i64 %85, i64* %86, align 8, !dbg !817
  %87 = xor i64 %53, %60, !dbg !818
  %88 = xor i64 %87, %65, !dbg !819
  %89 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !820
  store i64 %88, i64* %89, align 8, !dbg !821
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct64_bitslice_decrypt(i32 %0, i64* %1, i64* %2) #0 !dbg !823 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !826, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i64* %1, metadata !828, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i64* %2, metadata !829, metadata !DIExpression()), !dbg !827
  %4 = shl i32 %0, 3, !dbg !830
  %5 = zext i32 %4 to i64, !dbg !831
  %6 = getelementptr inbounds i64, i64* %1, i64 %5, !dbg !831
  call void @add_round_key(i64* %2, i64* %6), !dbg !832
  %7 = sub i32 %0, 1, !dbg !833
  call void @llvm.dbg.value(metadata i32 %7, metadata !835, metadata !DIExpression()), !dbg !827
  br label %8, !dbg !836

8:                                                ; preds = %14, %3
  %.0 = phi i32 [ %7, %3 ], [ %15, %14 ], !dbg !837
  call void @llvm.dbg.value(metadata i32 %.0, metadata !835, metadata !DIExpression()), !dbg !827
  %9 = icmp ugt i32 %.0, 0, !dbg !838
  br i1 %9, label %10, label %16, !dbg !840

10:                                               ; preds = %8
  call void @inv_shift_rows(i64* %2), !dbg !841
  call void @br_aes_ct64_bitslice_invSbox(i64* %2), !dbg !843
  %11 = shl i32 %.0, 3, !dbg !844
  %12 = zext i32 %11 to i64, !dbg !845
  %13 = getelementptr inbounds i64, i64* %1, i64 %12, !dbg !845
  call void @add_round_key(i64* %2, i64* %13), !dbg !846
  call void @inv_mix_columns(i64* %2), !dbg !847
  br label %14, !dbg !848

14:                                               ; preds = %10
  %15 = add i32 %.0, -1, !dbg !849
  call void @llvm.dbg.value(metadata i32 %15, metadata !835, metadata !DIExpression()), !dbg !827
  br label %8, !dbg !850, !llvm.loop !851

16:                                               ; preds = %8
  call void @inv_shift_rows(i64* %2), !dbg !853
  call void @br_aes_ct64_bitslice_invSbox(i64* %2), !dbg !854
  call void @add_round_key(i64* %2, i64* %1), !dbg !855
  ret void, !dbg !856
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_round_key(i64* %0, i64* %1) #0 !dbg !857 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !860, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64* %1, metadata !862, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i32 0, metadata !863, metadata !DIExpression()), !dbg !861
  br label %3, !dbg !864

3:                                                ; preds = %13, %2
  %.0 = phi i32 [ 0, %2 ], [ %14, %13 ], !dbg !866
  call void @llvm.dbg.value(metadata i32 %.0, metadata !863, metadata !DIExpression()), !dbg !861
  %4 = icmp slt i32 %.0, 8, !dbg !867
  br i1 %4, label %5, label %15, !dbg !869

5:                                                ; preds = %3
  %6 = sext i32 %.0 to i64, !dbg !870
  %7 = getelementptr inbounds i64, i64* %1, i64 %6, !dbg !870
  %8 = load i64, i64* %7, align 8, !dbg !870
  %9 = sext i32 %.0 to i64, !dbg !872
  %10 = getelementptr inbounds i64, i64* %0, i64 %9, !dbg !872
  %11 = load i64, i64* %10, align 8, !dbg !873
  %12 = xor i64 %11, %8, !dbg !873
  store i64 %12, i64* %10, align 8, !dbg !873
  br label %13, !dbg !874

13:                                               ; preds = %5
  %14 = add nsw i32 %.0, 1, !dbg !875
  call void @llvm.dbg.value(metadata i32 %14, metadata !863, metadata !DIExpression()), !dbg !861
  br label %3, !dbg !876, !llvm.loop !877

15:                                               ; preds = %3
  ret void, !dbg !879
}

; Function Attrs: noinline nounwind uwtable
define internal void @inv_shift_rows(i64* %0) #0 !dbg !880 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !881, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i32 0, metadata !883, metadata !DIExpression()), !dbg !882
  br label %2, !dbg !884

2:                                                ; preds = %29, %1
  %.0 = phi i32 [ 0, %1 ], [ %30, %29 ], !dbg !886
  call void @llvm.dbg.value(metadata i32 %.0, metadata !883, metadata !DIExpression()), !dbg !882
  %3 = icmp slt i32 %.0, 8, !dbg !887
  br i1 %3, label %4, label %31, !dbg !889

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64, !dbg !890
  %6 = getelementptr inbounds i64, i64* %0, i64 %5, !dbg !890
  %7 = load i64, i64* %6, align 8, !dbg !890
  call void @llvm.dbg.value(metadata i64 %7, metadata !892, metadata !DIExpression()), !dbg !893
  %8 = and i64 %7, 65535, !dbg !894
  %9 = and i64 %7, 268369920, !dbg !895
  %10 = shl i64 %9, 4, !dbg !896
  %11 = or i64 %8, %10, !dbg !897
  %12 = and i64 %7, 4026531840, !dbg !898
  %13 = lshr i64 %12, 12, !dbg !899
  %14 = or i64 %11, %13, !dbg !900
  %15 = and i64 %7, 1095216660480, !dbg !901
  %16 = shl i64 %15, 8, !dbg !902
  %17 = or i64 %14, %16, !dbg !903
  %18 = and i64 %7, 280375465082880, !dbg !904
  %19 = lshr i64 %18, 8, !dbg !905
  %20 = or i64 %17, %19, !dbg !906
  %21 = and i64 %7, 4222124650659840, !dbg !907
  %22 = shl i64 %21, 12, !dbg !908
  %23 = or i64 %20, %22, !dbg !909
  %24 = and i64 %7, -4503599627370496, !dbg !910
  %25 = lshr i64 %24, 4, !dbg !911
  %26 = or i64 %23, %25, !dbg !912
  %27 = sext i32 %.0 to i64, !dbg !913
  %28 = getelementptr inbounds i64, i64* %0, i64 %27, !dbg !913
  store i64 %26, i64* %28, align 8, !dbg !914
  br label %29, !dbg !915

29:                                               ; preds = %4
  %30 = add nsw i32 %.0, 1, !dbg !916
  call void @llvm.dbg.value(metadata i32 %30, metadata !883, metadata !DIExpression()), !dbg !882
  br label %2, !dbg !917, !llvm.loop !918

31:                                               ; preds = %2
  ret void, !dbg !920
}

; Function Attrs: noinline nounwind uwtable
define internal void @inv_mix_columns(i64* %0) #0 !dbg !921 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !922, metadata !DIExpression()), !dbg !923
  %2 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !924
  %3 = load i64, i64* %2, align 8, !dbg !924
  call void @llvm.dbg.value(metadata i64 %3, metadata !925, metadata !DIExpression()), !dbg !923
  %4 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !926
  %5 = load i64, i64* %4, align 8, !dbg !926
  call void @llvm.dbg.value(metadata i64 %5, metadata !927, metadata !DIExpression()), !dbg !923
  %6 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !928
  %7 = load i64, i64* %6, align 8, !dbg !928
  call void @llvm.dbg.value(metadata i64 %7, metadata !929, metadata !DIExpression()), !dbg !923
  %8 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !930
  %9 = load i64, i64* %8, align 8, !dbg !930
  call void @llvm.dbg.value(metadata i64 %9, metadata !931, metadata !DIExpression()), !dbg !923
  %10 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !932
  %11 = load i64, i64* %10, align 8, !dbg !932
  call void @llvm.dbg.value(metadata i64 %11, metadata !933, metadata !DIExpression()), !dbg !923
  %12 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !934
  %13 = load i64, i64* %12, align 8, !dbg !934
  call void @llvm.dbg.value(metadata i64 %13, metadata !935, metadata !DIExpression()), !dbg !923
  %14 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !936
  %15 = load i64, i64* %14, align 8, !dbg !936
  call void @llvm.dbg.value(metadata i64 %15, metadata !937, metadata !DIExpression()), !dbg !923
  %16 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !938
  %17 = load i64, i64* %16, align 8, !dbg !938
  call void @llvm.dbg.value(metadata i64 %17, metadata !939, metadata !DIExpression()), !dbg !923
  %18 = lshr i64 %3, 16, !dbg !940
  %19 = shl i64 %3, 48, !dbg !941
  %20 = or i64 %18, %19, !dbg !942
  call void @llvm.dbg.value(metadata i64 %20, metadata !943, metadata !DIExpression()), !dbg !923
  %21 = lshr i64 %5, 16, !dbg !944
  %22 = shl i64 %5, 48, !dbg !945
  %23 = or i64 %21, %22, !dbg !946
  call void @llvm.dbg.value(metadata i64 %23, metadata !947, metadata !DIExpression()), !dbg !923
  %24 = lshr i64 %7, 16, !dbg !948
  %25 = shl i64 %7, 48, !dbg !949
  %26 = or i64 %24, %25, !dbg !950
  call void @llvm.dbg.value(metadata i64 %26, metadata !951, metadata !DIExpression()), !dbg !923
  %27 = lshr i64 %9, 16, !dbg !952
  %28 = shl i64 %9, 48, !dbg !953
  %29 = or i64 %27, %28, !dbg !954
  call void @llvm.dbg.value(metadata i64 %29, metadata !955, metadata !DIExpression()), !dbg !923
  %30 = lshr i64 %11, 16, !dbg !956
  %31 = shl i64 %11, 48, !dbg !957
  %32 = or i64 %30, %31, !dbg !958
  call void @llvm.dbg.value(metadata i64 %32, metadata !959, metadata !DIExpression()), !dbg !923
  %33 = lshr i64 %13, 16, !dbg !960
  %34 = shl i64 %13, 48, !dbg !961
  %35 = or i64 %33, %34, !dbg !962
  call void @llvm.dbg.value(metadata i64 %35, metadata !963, metadata !DIExpression()), !dbg !923
  %36 = lshr i64 %15, 16, !dbg !964
  %37 = shl i64 %15, 48, !dbg !965
  %38 = or i64 %36, %37, !dbg !966
  call void @llvm.dbg.value(metadata i64 %38, metadata !967, metadata !DIExpression()), !dbg !923
  %39 = lshr i64 %17, 16, !dbg !968
  %40 = shl i64 %17, 48, !dbg !969
  %41 = or i64 %39, %40, !dbg !970
  call void @llvm.dbg.value(metadata i64 %41, metadata !971, metadata !DIExpression()), !dbg !923
  %42 = xor i64 %13, %15, !dbg !972
  %43 = xor i64 %42, %17, !dbg !973
  %44 = xor i64 %43, %20, !dbg !974
  %45 = xor i64 %44, %35, !dbg !975
  %46 = xor i64 %45, %41, !dbg !976
  %47 = xor i64 %3, %13, !dbg !977
  %48 = xor i64 %47, %15, !dbg !978
  %49 = xor i64 %48, %20, !dbg !979
  %50 = xor i64 %49, %35, !dbg !980
  %51 = call i64 @rotr32(i64 %50), !dbg !981
  %52 = xor i64 %46, %51, !dbg !982
  %53 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !983
  store i64 %52, i64* %53, align 8, !dbg !984
  %54 = xor i64 %3, %13, !dbg !985
  %55 = xor i64 %54, %20, !dbg !986
  %56 = xor i64 %55, %23, !dbg !987
  %57 = xor i64 %56, %35, !dbg !988
  %58 = xor i64 %57, %38, !dbg !989
  %59 = xor i64 %58, %41, !dbg !990
  %60 = xor i64 %5, %13, !dbg !991
  %61 = xor i64 %60, %17, !dbg !992
  %62 = xor i64 %61, %23, !dbg !993
  %63 = xor i64 %62, %35, !dbg !994
  %64 = xor i64 %63, %38, !dbg !995
  %65 = call i64 @rotr32(i64 %64), !dbg !996
  %66 = xor i64 %59, %65, !dbg !997
  %67 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !998
  store i64 %66, i64* %67, align 8, !dbg !999
  %68 = xor i64 %3, %5, !dbg !1000
  %69 = xor i64 %68, %15, !dbg !1001
  %70 = xor i64 %69, %23, !dbg !1002
  %71 = xor i64 %70, %26, !dbg !1003
  %72 = xor i64 %71, %38, !dbg !1004
  %73 = xor i64 %72, %41, !dbg !1005
  %74 = xor i64 %3, %7, !dbg !1006
  %75 = xor i64 %74, %15, !dbg !1007
  %76 = xor i64 %75, %26, !dbg !1008
  %77 = xor i64 %76, %38, !dbg !1009
  %78 = xor i64 %77, %41, !dbg !1010
  %79 = call i64 @rotr32(i64 %78), !dbg !1011
  %80 = xor i64 %73, %79, !dbg !1012
  %81 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1013
  store i64 %80, i64* %81, align 8, !dbg !1014
  %82 = xor i64 %3, %5, !dbg !1015
  %83 = xor i64 %82, %7, !dbg !1016
  %84 = xor i64 %83, %13, !dbg !1017
  %85 = xor i64 %84, %15, !dbg !1018
  %86 = xor i64 %85, %20, !dbg !1019
  %87 = xor i64 %86, %26, !dbg !1020
  %88 = xor i64 %87, %29, !dbg !1021
  %89 = xor i64 %88, %35, !dbg !1022
  %90 = xor i64 %3, %5, !dbg !1023
  %91 = xor i64 %90, %9, !dbg !1024
  %92 = xor i64 %91, %13, !dbg !1025
  %93 = xor i64 %92, %15, !dbg !1026
  %94 = xor i64 %93, %17, !dbg !1027
  %95 = xor i64 %94, %20, !dbg !1028
  %96 = xor i64 %95, %29, !dbg !1029
  %97 = xor i64 %96, %35, !dbg !1030
  %98 = xor i64 %97, %41, !dbg !1031
  %99 = call i64 @rotr32(i64 %98), !dbg !1032
  %100 = xor i64 %89, %99, !dbg !1033
  %101 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1034
  store i64 %100, i64* %101, align 8, !dbg !1035
  %102 = xor i64 %5, %7, !dbg !1036
  %103 = xor i64 %102, %9, !dbg !1037
  %104 = xor i64 %103, %13, !dbg !1038
  %105 = xor i64 %104, %23, !dbg !1039
  %106 = xor i64 %105, %29, !dbg !1040
  %107 = xor i64 %106, %32, !dbg !1041
  %108 = xor i64 %107, %35, !dbg !1042
  %109 = xor i64 %108, %38, !dbg !1043
  %110 = xor i64 %109, %41, !dbg !1044
  %111 = xor i64 %5, %7, !dbg !1045
  %112 = xor i64 %111, %11, !dbg !1046
  %113 = xor i64 %112, %13, !dbg !1047
  %114 = xor i64 %113, %17, !dbg !1048
  %115 = xor i64 %114, %23, !dbg !1049
  %116 = xor i64 %115, %32, !dbg !1050
  %117 = xor i64 %116, %35, !dbg !1051
  %118 = xor i64 %117, %38, !dbg !1052
  %119 = call i64 @rotr32(i64 %118), !dbg !1053
  %120 = xor i64 %110, %119, !dbg !1054
  %121 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1055
  store i64 %120, i64* %121, align 8, !dbg !1056
  %122 = xor i64 %7, %9, !dbg !1057
  %123 = xor i64 %122, %11, !dbg !1058
  %124 = xor i64 %123, %15, !dbg !1059
  %125 = xor i64 %124, %26, !dbg !1060
  %126 = xor i64 %125, %32, !dbg !1061
  %127 = xor i64 %126, %35, !dbg !1062
  %128 = xor i64 %127, %38, !dbg !1063
  %129 = xor i64 %128, %41, !dbg !1064
  %130 = xor i64 %7, %9, !dbg !1065
  %131 = xor i64 %130, %13, !dbg !1066
  %132 = xor i64 %131, %15, !dbg !1067
  %133 = xor i64 %132, %26, !dbg !1068
  %134 = xor i64 %133, %35, !dbg !1069
  %135 = xor i64 %134, %38, !dbg !1070
  %136 = xor i64 %135, %41, !dbg !1071
  %137 = call i64 @rotr32(i64 %136), !dbg !1072
  %138 = xor i64 %129, %137, !dbg !1073
  %139 = getelementptr inbounds i64, i64* %0, i64 5, !dbg !1074
  store i64 %138, i64* %139, align 8, !dbg !1075
  %140 = xor i64 %9, %11, !dbg !1076
  %141 = xor i64 %140, %13, !dbg !1077
  %142 = xor i64 %141, %17, !dbg !1078
  %143 = xor i64 %142, %29, !dbg !1079
  %144 = xor i64 %143, %35, !dbg !1080
  %145 = xor i64 %144, %38, !dbg !1081
  %146 = xor i64 %145, %41, !dbg !1082
  %147 = xor i64 %9, %11, !dbg !1083
  %148 = xor i64 %147, %15, !dbg !1084
  %149 = xor i64 %148, %17, !dbg !1085
  %150 = xor i64 %149, %29, !dbg !1086
  %151 = xor i64 %150, %38, !dbg !1087
  %152 = xor i64 %151, %41, !dbg !1088
  %153 = call i64 @rotr32(i64 %152), !dbg !1089
  %154 = xor i64 %146, %153, !dbg !1090
  %155 = getelementptr inbounds i64, i64* %0, i64 6, !dbg !1091
  store i64 %154, i64* %155, align 8, !dbg !1092
  %156 = xor i64 %11, %13, !dbg !1093
  %157 = xor i64 %156, %15, !dbg !1094
  %158 = xor i64 %157, %32, !dbg !1095
  %159 = xor i64 %158, %38, !dbg !1096
  %160 = xor i64 %159, %41, !dbg !1097
  %161 = xor i64 %11, %13, !dbg !1098
  %162 = xor i64 %161, %17, !dbg !1099
  %163 = xor i64 %162, %32, !dbg !1100
  %164 = xor i64 %163, %41, !dbg !1101
  %165 = call i64 @rotr32(i64 %164), !dbg !1102
  %166 = xor i64 %160, %165, !dbg !1103
  %167 = getelementptr inbounds i64, i64* %0, i64 7, !dbg !1104
  store i64 %166, i64* %167, align 8, !dbg !1105
  ret void, !dbg !1106
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @rotr32(i64 %0) #0 !dbg !1107 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1110, metadata !DIExpression()), !dbg !1111
  %2 = shl i64 %0, 32, !dbg !1112
  %3 = lshr i64 %0, 32, !dbg !1113
  %4 = or i64 %2, %3, !dbg !1114
  ret i64 %4, !dbg !1115
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitslice_decrypt_wrapper(i32 %0, i32* %1, i8* %2) #0 !dbg !1116 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1120, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i32* %1, metadata !1122, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8* %2, metadata !1123, metadata !DIExpression()), !dbg !1121
  %4 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %0), !dbg !1124
  call void @public_in(%struct.smack_value* %4), !dbg !1125
  %5 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %1), !dbg !1126
  call void @public_in(%struct.smack_value* %5), !dbg !1127
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !1128
  call void @public_in(%struct.smack_value* %6), !dbg !1129
  %7 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 16), !dbg !1130
  call void @public_in(%struct.smack_value* %7), !dbg !1131
  %8 = bitcast i32* %1 to i64*, !dbg !1132
  %9 = bitcast i8* %2 to i64*, !dbg !1133
  call void @br_aes_ct64_bitslice_decrypt(i32 %0, i64* %8, i64* %9), !dbg !1134
  ret void, !dbg !1135
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitslice_decrypt_wrapper_t() #0 !dbg !1136 {
  %1 = call i32 (...) @getuns(), !dbg !1139
  call void @llvm.dbg.value(metadata i32 %1, metadata !1140, metadata !DIExpression()), !dbg !1141
  %2 = call i32* (...) @getpt(), !dbg !1142
  call void @llvm.dbg.value(metadata i32* %2, metadata !1143, metadata !DIExpression()), !dbg !1141
  %3 = call i8* (...) @getpt2(), !dbg !1144
  call void @llvm.dbg.value(metadata i8* %3, metadata !1145, metadata !DIExpression()), !dbg !1141
  %4 = bitcast i32* %2 to i64*, !dbg !1146
  %5 = bitcast i8* %3 to i64*, !dbg !1147
  call void @br_aes_ct64_bitslice_decrypt(i32 %1, i64* %4, i64* %5), !dbg !1148
  ret void, !dbg !1149
}

declare dso_local i32 @getuns(...) #2

declare dso_local i32* @getpt(...) #2

declare dso_local i8* @getpt2(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.dbg.cu = !{!2, !21, !24}
!llvm.ident = !{!26, !26, !26}
!llvm.module.flags = !{!27, !28, !29}

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
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "../BearSSL/src/symcipher/aes_ct64_dec.c", directory: "/home/luwei/bech-back/BearSSL/AES_ct64")
!23 = !{!6}
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "bitslice_decrypt.c", directory: "/home/luwei/bech-back/BearSSL/AES_ct64")
!26 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!27 = !{i32 7, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_Sbox", scope: !3, file: !3, line: 29, type: !31, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!34 = !DILocalVariable(name: "q", arg: 1, scope: !30, file: !3, line: 29, type: !33)
!35 = !DILocation(line: 0, scope: !30)
!36 = !DILocation(line: 56, column: 7, scope: !30)
!37 = !DILocalVariable(name: "x0", scope: !30, file: !3, line: 41, type: !6)
!38 = !DILocation(line: 57, column: 7, scope: !30)
!39 = !DILocalVariable(name: "x1", scope: !30, file: !3, line: 41, type: !6)
!40 = !DILocation(line: 58, column: 7, scope: !30)
!41 = !DILocalVariable(name: "x2", scope: !30, file: !3, line: 41, type: !6)
!42 = !DILocation(line: 59, column: 7, scope: !30)
!43 = !DILocalVariable(name: "x3", scope: !30, file: !3, line: 41, type: !6)
!44 = !DILocation(line: 60, column: 7, scope: !30)
!45 = !DILocalVariable(name: "x4", scope: !30, file: !3, line: 41, type: !6)
!46 = !DILocation(line: 61, column: 7, scope: !30)
!47 = !DILocalVariable(name: "x5", scope: !30, file: !3, line: 41, type: !6)
!48 = !DILocation(line: 62, column: 7, scope: !30)
!49 = !DILocalVariable(name: "x6", scope: !30, file: !3, line: 41, type: !6)
!50 = !DILocation(line: 63, column: 7, scope: !30)
!51 = !DILocalVariable(name: "x7", scope: !30, file: !3, line: 41, type: !6)
!52 = !DILocation(line: 68, column: 11, scope: !30)
!53 = !DILocalVariable(name: "y14", scope: !30, file: !3, line: 43, type: !6)
!54 = !DILocation(line: 69, column: 11, scope: !30)
!55 = !DILocalVariable(name: "y13", scope: !30, file: !3, line: 43, type: !6)
!56 = !DILocation(line: 70, column: 10, scope: !30)
!57 = !DILocalVariable(name: "y9", scope: !30, file: !3, line: 42, type: !6)
!58 = !DILocation(line: 71, column: 10, scope: !30)
!59 = !DILocalVariable(name: "y8", scope: !30, file: !3, line: 42, type: !6)
!60 = !DILocation(line: 72, column: 10, scope: !30)
!61 = !DILocalVariable(name: "t0", scope: !30, file: !3, line: 47, type: !6)
!62 = !DILocation(line: 73, column: 10, scope: !30)
!63 = !DILocalVariable(name: "y1", scope: !30, file: !3, line: 42, type: !6)
!64 = !DILocation(line: 74, column: 10, scope: !30)
!65 = !DILocalVariable(name: "y4", scope: !30, file: !3, line: 42, type: !6)
!66 = !DILocation(line: 75, column: 12, scope: !30)
!67 = !DILocalVariable(name: "y12", scope: !30, file: !3, line: 43, type: !6)
!68 = !DILocation(line: 76, column: 10, scope: !30)
!69 = !DILocalVariable(name: "y2", scope: !30, file: !3, line: 42, type: !6)
!70 = !DILocation(line: 77, column: 10, scope: !30)
!71 = !DILocalVariable(name: "y5", scope: !30, file: !3, line: 42, type: !6)
!72 = !DILocation(line: 78, column: 10, scope: !30)
!73 = !DILocalVariable(name: "y3", scope: !30, file: !3, line: 42, type: !6)
!74 = !DILocation(line: 79, column: 10, scope: !30)
!75 = !DILocalVariable(name: "t1", scope: !30, file: !3, line: 47, type: !6)
!76 = !DILocation(line: 80, column: 11, scope: !30)
!77 = !DILocalVariable(name: "y15", scope: !30, file: !3, line: 43, type: !6)
!78 = !DILocation(line: 81, column: 11, scope: !30)
!79 = !DILocalVariable(name: "y20", scope: !30, file: !3, line: 44, type: !6)
!80 = !DILocation(line: 82, column: 11, scope: !30)
!81 = !DILocalVariable(name: "y6", scope: !30, file: !3, line: 42, type: !6)
!82 = !DILocation(line: 83, column: 12, scope: !30)
!83 = !DILocalVariable(name: "y10", scope: !30, file: !3, line: 43, type: !6)
!84 = !DILocation(line: 84, column: 12, scope: !30)
!85 = !DILocalVariable(name: "y11", scope: !30, file: !3, line: 43, type: !6)
!86 = !DILocation(line: 85, column: 10, scope: !30)
!87 = !DILocalVariable(name: "y7", scope: !30, file: !3, line: 42, type: !6)
!88 = !DILocation(line: 86, column: 12, scope: !30)
!89 = !DILocalVariable(name: "y17", scope: !30, file: !3, line: 43, type: !6)
!90 = !DILocation(line: 87, column: 12, scope: !30)
!91 = !DILocalVariable(name: "y19", scope: !30, file: !3, line: 43, type: !6)
!92 = !DILocation(line: 88, column: 11, scope: !30)
!93 = !DILocalVariable(name: "y16", scope: !30, file: !3, line: 43, type: !6)
!94 = !DILocation(line: 89, column: 12, scope: !30)
!95 = !DILocalVariable(name: "y21", scope: !30, file: !3, line: 44, type: !6)
!96 = !DILocation(line: 90, column: 11, scope: !30)
!97 = !DILocalVariable(name: "y18", scope: !30, file: !3, line: 43, type: !6)
!98 = !DILocation(line: 95, column: 11, scope: !30)
!99 = !DILocalVariable(name: "t2", scope: !30, file: !3, line: 47, type: !6)
!100 = !DILocation(line: 96, column: 10, scope: !30)
!101 = !DILocalVariable(name: "t3", scope: !30, file: !3, line: 47, type: !6)
!102 = !DILocation(line: 97, column: 10, scope: !30)
!103 = !DILocalVariable(name: "t4", scope: !30, file: !3, line: 47, type: !6)
!104 = !DILocation(line: 98, column: 10, scope: !30)
!105 = !DILocalVariable(name: "t5", scope: !30, file: !3, line: 47, type: !6)
!106 = !DILocation(line: 99, column: 10, scope: !30)
!107 = !DILocalVariable(name: "t6", scope: !30, file: !3, line: 47, type: !6)
!108 = !DILocation(line: 100, column: 11, scope: !30)
!109 = !DILocalVariable(name: "t7", scope: !30, file: !3, line: 47, type: !6)
!110 = !DILocation(line: 101, column: 10, scope: !30)
!111 = !DILocalVariable(name: "t8", scope: !30, file: !3, line: 47, type: !6)
!112 = !DILocation(line: 102, column: 10, scope: !30)
!113 = !DILocalVariable(name: "t9", scope: !30, file: !3, line: 47, type: !6)
!114 = !DILocation(line: 103, column: 11, scope: !30)
!115 = !DILocalVariable(name: "t10", scope: !30, file: !3, line: 48, type: !6)
!116 = !DILocation(line: 104, column: 12, scope: !30)
!117 = !DILocalVariable(name: "t11", scope: !30, file: !3, line: 48, type: !6)
!118 = !DILocation(line: 105, column: 11, scope: !30)
!119 = !DILocalVariable(name: "t12", scope: !30, file: !3, line: 48, type: !6)
!120 = !DILocation(line: 106, column: 12, scope: !30)
!121 = !DILocalVariable(name: "t13", scope: !30, file: !3, line: 48, type: !6)
!122 = !DILocation(line: 107, column: 12, scope: !30)
!123 = !DILocalVariable(name: "t14", scope: !30, file: !3, line: 48, type: !6)
!124 = !DILocation(line: 108, column: 11, scope: !30)
!125 = !DILocalVariable(name: "t15", scope: !30, file: !3, line: 48, type: !6)
!126 = !DILocation(line: 109, column: 12, scope: !30)
!127 = !DILocalVariable(name: "t16", scope: !30, file: !3, line: 48, type: !6)
!128 = !DILocation(line: 110, column: 11, scope: !30)
!129 = !DILocalVariable(name: "t17", scope: !30, file: !3, line: 48, type: !6)
!130 = !DILocation(line: 111, column: 11, scope: !30)
!131 = !DILocalVariable(name: "t18", scope: !30, file: !3, line: 48, type: !6)
!132 = !DILocation(line: 112, column: 11, scope: !30)
!133 = !DILocalVariable(name: "t19", scope: !30, file: !3, line: 48, type: !6)
!134 = !DILocation(line: 113, column: 12, scope: !30)
!135 = !DILocalVariable(name: "t20", scope: !30, file: !3, line: 49, type: !6)
!136 = !DILocation(line: 114, column: 12, scope: !30)
!137 = !DILocalVariable(name: "t21", scope: !30, file: !3, line: 49, type: !6)
!138 = !DILocation(line: 115, column: 12, scope: !30)
!139 = !DILocalVariable(name: "t22", scope: !30, file: !3, line: 49, type: !6)
!140 = !DILocation(line: 116, column: 12, scope: !30)
!141 = !DILocalVariable(name: "t23", scope: !30, file: !3, line: 49, type: !6)
!142 = !DILocation(line: 117, column: 12, scope: !30)
!143 = !DILocalVariable(name: "t24", scope: !30, file: !3, line: 49, type: !6)
!144 = !DILocation(line: 119, column: 12, scope: !30)
!145 = !DILocalVariable(name: "t25", scope: !30, file: !3, line: 49, type: !6)
!146 = !DILocation(line: 120, column: 12, scope: !30)
!147 = !DILocalVariable(name: "t26", scope: !30, file: !3, line: 49, type: !6)
!148 = !DILocation(line: 121, column: 12, scope: !30)
!149 = !DILocalVariable(name: "t27", scope: !30, file: !3, line: 49, type: !6)
!150 = !DILocation(line: 122, column: 12, scope: !30)
!151 = !DILocalVariable(name: "t28", scope: !30, file: !3, line: 49, type: !6)
!152 = !DILocation(line: 123, column: 12, scope: !30)
!153 = !DILocalVariable(name: "t29", scope: !30, file: !3, line: 49, type: !6)
!154 = !DILocation(line: 124, column: 12, scope: !30)
!155 = !DILocalVariable(name: "t30", scope: !30, file: !3, line: 50, type: !6)
!156 = !DILocation(line: 125, column: 12, scope: !30)
!157 = !DILocalVariable(name: "t31", scope: !30, file: !3, line: 50, type: !6)
!158 = !DILocation(line: 126, column: 12, scope: !30)
!159 = !DILocalVariable(name: "t32", scope: !30, file: !3, line: 50, type: !6)
!160 = !DILocation(line: 127, column: 12, scope: !30)
!161 = !DILocalVariable(name: "t33", scope: !30, file: !3, line: 50, type: !6)
!162 = !DILocation(line: 128, column: 12, scope: !30)
!163 = !DILocalVariable(name: "t34", scope: !30, file: !3, line: 50, type: !6)
!164 = !DILocation(line: 129, column: 12, scope: !30)
!165 = !DILocalVariable(name: "t35", scope: !30, file: !3, line: 50, type: !6)
!166 = !DILocation(line: 130, column: 12, scope: !30)
!167 = !DILocalVariable(name: "t36", scope: !30, file: !3, line: 50, type: !6)
!168 = !DILocation(line: 131, column: 12, scope: !30)
!169 = !DILocalVariable(name: "t37", scope: !30, file: !3, line: 50, type: !6)
!170 = !DILocation(line: 132, column: 12, scope: !30)
!171 = !DILocalVariable(name: "t38", scope: !30, file: !3, line: 50, type: !6)
!172 = !DILocation(line: 133, column: 12, scope: !30)
!173 = !DILocalVariable(name: "t39", scope: !30, file: !3, line: 50, type: !6)
!174 = !DILocation(line: 134, column: 12, scope: !30)
!175 = !DILocalVariable(name: "t40", scope: !30, file: !3, line: 51, type: !6)
!176 = !DILocation(line: 136, column: 12, scope: !30)
!177 = !DILocalVariable(name: "t41", scope: !30, file: !3, line: 51, type: !6)
!178 = !DILocation(line: 137, column: 12, scope: !30)
!179 = !DILocalVariable(name: "t42", scope: !30, file: !3, line: 51, type: !6)
!180 = !DILocation(line: 138, column: 12, scope: !30)
!181 = !DILocalVariable(name: "t43", scope: !30, file: !3, line: 51, type: !6)
!182 = !DILocation(line: 139, column: 12, scope: !30)
!183 = !DILocalVariable(name: "t44", scope: !30, file: !3, line: 51, type: !6)
!184 = !DILocation(line: 140, column: 12, scope: !30)
!185 = !DILocalVariable(name: "t45", scope: !30, file: !3, line: 51, type: !6)
!186 = !DILocation(line: 141, column: 11, scope: !30)
!187 = !DILocalVariable(name: "z0", scope: !30, file: !3, line: 45, type: !6)
!188 = !DILocation(line: 142, column: 11, scope: !30)
!189 = !DILocalVariable(name: "z1", scope: !30, file: !3, line: 45, type: !6)
!190 = !DILocation(line: 143, column: 11, scope: !30)
!191 = !DILocalVariable(name: "z2", scope: !30, file: !3, line: 45, type: !6)
!192 = !DILocation(line: 144, column: 11, scope: !30)
!193 = !DILocalVariable(name: "z3", scope: !30, file: !3, line: 45, type: !6)
!194 = !DILocation(line: 145, column: 11, scope: !30)
!195 = !DILocalVariable(name: "z4", scope: !30, file: !3, line: 45, type: !6)
!196 = !DILocation(line: 146, column: 11, scope: !30)
!197 = !DILocalVariable(name: "z5", scope: !30, file: !3, line: 45, type: !6)
!198 = !DILocation(line: 147, column: 11, scope: !30)
!199 = !DILocalVariable(name: "z6", scope: !30, file: !3, line: 45, type: !6)
!200 = !DILocation(line: 148, column: 11, scope: !30)
!201 = !DILocalVariable(name: "z7", scope: !30, file: !3, line: 45, type: !6)
!202 = !DILocation(line: 149, column: 11, scope: !30)
!203 = !DILocalVariable(name: "z8", scope: !30, file: !3, line: 45, type: !6)
!204 = !DILocation(line: 150, column: 11, scope: !30)
!205 = !DILocalVariable(name: "z9", scope: !30, file: !3, line: 45, type: !6)
!206 = !DILocation(line: 151, column: 12, scope: !30)
!207 = !DILocalVariable(name: "z10", scope: !30, file: !3, line: 46, type: !6)
!208 = !DILocation(line: 152, column: 12, scope: !30)
!209 = !DILocalVariable(name: "z11", scope: !30, file: !3, line: 46, type: !6)
!210 = !DILocation(line: 153, column: 12, scope: !30)
!211 = !DILocalVariable(name: "z12", scope: !30, file: !3, line: 46, type: !6)
!212 = !DILocation(line: 154, column: 12, scope: !30)
!213 = !DILocalVariable(name: "z13", scope: !30, file: !3, line: 46, type: !6)
!214 = !DILocation(line: 155, column: 12, scope: !30)
!215 = !DILocalVariable(name: "z14", scope: !30, file: !3, line: 46, type: !6)
!216 = !DILocation(line: 156, column: 12, scope: !30)
!217 = !DILocalVariable(name: "z15", scope: !30, file: !3, line: 46, type: !6)
!218 = !DILocation(line: 157, column: 12, scope: !30)
!219 = !DILocalVariable(name: "z16", scope: !30, file: !3, line: 46, type: !6)
!220 = !DILocation(line: 158, column: 12, scope: !30)
!221 = !DILocalVariable(name: "z17", scope: !30, file: !3, line: 46, type: !6)
!222 = !DILocation(line: 163, column: 12, scope: !30)
!223 = !DILocalVariable(name: "t46", scope: !30, file: !3, line: 51, type: !6)
!224 = !DILocation(line: 164, column: 12, scope: !30)
!225 = !DILocalVariable(name: "t47", scope: !30, file: !3, line: 51, type: !6)
!226 = !DILocation(line: 165, column: 11, scope: !30)
!227 = !DILocalVariable(name: "t48", scope: !30, file: !3, line: 51, type: !6)
!228 = !DILocation(line: 166, column: 11, scope: !30)
!229 = !DILocalVariable(name: "t49", scope: !30, file: !3, line: 51, type: !6)
!230 = !DILocation(line: 167, column: 11, scope: !30)
!231 = !DILocalVariable(name: "t50", scope: !30, file: !3, line: 52, type: !6)
!232 = !DILocation(line: 168, column: 11, scope: !30)
!233 = !DILocalVariable(name: "t51", scope: !30, file: !3, line: 52, type: !6)
!234 = !DILocation(line: 169, column: 11, scope: !30)
!235 = !DILocalVariable(name: "t52", scope: !30, file: !3, line: 52, type: !6)
!236 = !DILocation(line: 170, column: 11, scope: !30)
!237 = !DILocalVariable(name: "t53", scope: !30, file: !3, line: 52, type: !6)
!238 = !DILocation(line: 171, column: 11, scope: !30)
!239 = !DILocalVariable(name: "t54", scope: !30, file: !3, line: 52, type: !6)
!240 = !DILocation(line: 172, column: 12, scope: !30)
!241 = !DILocalVariable(name: "t55", scope: !30, file: !3, line: 52, type: !6)
!242 = !DILocation(line: 173, column: 12, scope: !30)
!243 = !DILocalVariable(name: "t56", scope: !30, file: !3, line: 52, type: !6)
!244 = !DILocation(line: 174, column: 12, scope: !30)
!245 = !DILocalVariable(name: "t57", scope: !30, file: !3, line: 52, type: !6)
!246 = !DILocation(line: 175, column: 11, scope: !30)
!247 = !DILocalVariable(name: "t58", scope: !30, file: !3, line: 52, type: !6)
!248 = !DILocation(line: 176, column: 11, scope: !30)
!249 = !DILocalVariable(name: "t59", scope: !30, file: !3, line: 52, type: !6)
!250 = !DILocation(line: 177, column: 12, scope: !30)
!251 = !DILocalVariable(name: "t60", scope: !30, file: !3, line: 53, type: !6)
!252 = !DILocation(line: 178, column: 12, scope: !30)
!253 = !DILocalVariable(name: "t61", scope: !30, file: !3, line: 53, type: !6)
!254 = !DILocation(line: 179, column: 12, scope: !30)
!255 = !DILocalVariable(name: "t62", scope: !30, file: !3, line: 53, type: !6)
!256 = !DILocation(line: 180, column: 12, scope: !30)
!257 = !DILocalVariable(name: "t63", scope: !30, file: !3, line: 53, type: !6)
!258 = !DILocation(line: 181, column: 11, scope: !30)
!259 = !DILocalVariable(name: "t64", scope: !30, file: !3, line: 53, type: !6)
!260 = !DILocation(line: 182, column: 12, scope: !30)
!261 = !DILocalVariable(name: "t65", scope: !30, file: !3, line: 53, type: !6)
!262 = !DILocation(line: 183, column: 11, scope: !30)
!263 = !DILocalVariable(name: "t66", scope: !30, file: !3, line: 53, type: !6)
!264 = !DILocation(line: 184, column: 11, scope: !30)
!265 = !DILocalVariable(name: "s0", scope: !30, file: !3, line: 54, type: !6)
!266 = !DILocation(line: 185, column: 13, scope: !30)
!267 = !DILocation(line: 185, column: 11, scope: !30)
!268 = !DILocalVariable(name: "s6", scope: !30, file: !3, line: 54, type: !6)
!269 = !DILocation(line: 186, column: 13, scope: !30)
!270 = !DILocation(line: 186, column: 11, scope: !30)
!271 = !DILocalVariable(name: "s7", scope: !30, file: !3, line: 54, type: !6)
!272 = !DILocation(line: 187, column: 12, scope: !30)
!273 = !DILocalVariable(name: "t67", scope: !30, file: !3, line: 53, type: !6)
!274 = !DILocation(line: 188, column: 11, scope: !30)
!275 = !DILocalVariable(name: "s3", scope: !30, file: !3, line: 54, type: !6)
!276 = !DILocation(line: 189, column: 11, scope: !30)
!277 = !DILocalVariable(name: "s4", scope: !30, file: !3, line: 54, type: !6)
!278 = !DILocation(line: 190, column: 11, scope: !30)
!279 = !DILocalVariable(name: "s5", scope: !30, file: !3, line: 54, type: !6)
!280 = !DILocation(line: 191, column: 13, scope: !30)
!281 = !DILocation(line: 191, column: 11, scope: !30)
!282 = !DILocalVariable(name: "s1", scope: !30, file: !3, line: 54, type: !6)
!283 = !DILocation(line: 192, column: 13, scope: !30)
!284 = !DILocation(line: 192, column: 11, scope: !30)
!285 = !DILocalVariable(name: "s2", scope: !30, file: !3, line: 54, type: !6)
!286 = !DILocation(line: 194, column: 2, scope: !30)
!287 = !DILocation(line: 194, column: 7, scope: !30)
!288 = !DILocation(line: 195, column: 2, scope: !30)
!289 = !DILocation(line: 195, column: 7, scope: !30)
!290 = !DILocation(line: 196, column: 2, scope: !30)
!291 = !DILocation(line: 196, column: 7, scope: !30)
!292 = !DILocation(line: 197, column: 2, scope: !30)
!293 = !DILocation(line: 197, column: 7, scope: !30)
!294 = !DILocation(line: 198, column: 2, scope: !30)
!295 = !DILocation(line: 198, column: 7, scope: !30)
!296 = !DILocation(line: 199, column: 2, scope: !30)
!297 = !DILocation(line: 199, column: 7, scope: !30)
!298 = !DILocation(line: 200, column: 2, scope: !30)
!299 = !DILocation(line: 200, column: 7, scope: !30)
!300 = !DILocation(line: 201, column: 2, scope: !30)
!301 = !DILocation(line: 201, column: 7, scope: !30)
!302 = !DILocation(line: 202, column: 1, scope: !30)
!303 = distinct !DISubprogram(name: "br_aes_ct64_ortho", scope: !3, file: !3, line: 206, type: !31, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!304 = !DILocalVariable(name: "q", arg: 1, scope: !303, file: !3, line: 206, type: !33)
!305 = !DILocation(line: 0, scope: !303)
!306 = !DILocation(line: 220, column: 2, scope: !303)
!307 = !DILocation(line: 220, column: 2, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !3, line: 220, column: 2)
!309 = !DILocalVariable(name: "a", scope: !308, file: !3, line: 220, type: !6)
!310 = !DILocation(line: 0, scope: !308)
!311 = !DILocalVariable(name: "b", scope: !308, file: !3, line: 220, type: !6)
!312 = !DILocation(line: 221, column: 2, scope: !303)
!313 = !DILocation(line: 221, column: 2, scope: !314)
!314 = distinct !DILexicalBlock(scope: !303, file: !3, line: 221, column: 2)
!315 = !DILocalVariable(name: "a", scope: !314, file: !3, line: 221, type: !6)
!316 = !DILocation(line: 0, scope: !314)
!317 = !DILocalVariable(name: "b", scope: !314, file: !3, line: 221, type: !6)
!318 = !DILocation(line: 222, column: 2, scope: !303)
!319 = !DILocation(line: 222, column: 2, scope: !320)
!320 = distinct !DILexicalBlock(scope: !303, file: !3, line: 222, column: 2)
!321 = !DILocalVariable(name: "a", scope: !320, file: !3, line: 222, type: !6)
!322 = !DILocation(line: 0, scope: !320)
!323 = !DILocalVariable(name: "b", scope: !320, file: !3, line: 222, type: !6)
!324 = !DILocation(line: 223, column: 2, scope: !303)
!325 = !DILocation(line: 223, column: 2, scope: !326)
!326 = distinct !DILexicalBlock(scope: !303, file: !3, line: 223, column: 2)
!327 = !DILocalVariable(name: "a", scope: !326, file: !3, line: 223, type: !6)
!328 = !DILocation(line: 0, scope: !326)
!329 = !DILocalVariable(name: "b", scope: !326, file: !3, line: 223, type: !6)
!330 = !DILocation(line: 225, column: 2, scope: !303)
!331 = !DILocation(line: 225, column: 2, scope: !332)
!332 = distinct !DILexicalBlock(scope: !303, file: !3, line: 225, column: 2)
!333 = !DILocalVariable(name: "a", scope: !332, file: !3, line: 225, type: !6)
!334 = !DILocation(line: 0, scope: !332)
!335 = !DILocalVariable(name: "b", scope: !332, file: !3, line: 225, type: !6)
!336 = !DILocation(line: 226, column: 2, scope: !303)
!337 = !DILocation(line: 226, column: 2, scope: !338)
!338 = distinct !DILexicalBlock(scope: !303, file: !3, line: 226, column: 2)
!339 = !DILocalVariable(name: "a", scope: !338, file: !3, line: 226, type: !6)
!340 = !DILocation(line: 0, scope: !338)
!341 = !DILocalVariable(name: "b", scope: !338, file: !3, line: 226, type: !6)
!342 = !DILocation(line: 227, column: 2, scope: !303)
!343 = !DILocation(line: 227, column: 2, scope: !344)
!344 = distinct !DILexicalBlock(scope: !303, file: !3, line: 227, column: 2)
!345 = !DILocalVariable(name: "a", scope: !344, file: !3, line: 227, type: !6)
!346 = !DILocation(line: 0, scope: !344)
!347 = !DILocalVariable(name: "b", scope: !344, file: !3, line: 227, type: !6)
!348 = !DILocation(line: 228, column: 2, scope: !303)
!349 = !DILocation(line: 228, column: 2, scope: !350)
!350 = distinct !DILexicalBlock(scope: !303, file: !3, line: 228, column: 2)
!351 = !DILocalVariable(name: "a", scope: !350, file: !3, line: 228, type: !6)
!352 = !DILocation(line: 0, scope: !350)
!353 = !DILocalVariable(name: "b", scope: !350, file: !3, line: 228, type: !6)
!354 = !DILocation(line: 230, column: 2, scope: !303)
!355 = !DILocation(line: 230, column: 2, scope: !356)
!356 = distinct !DILexicalBlock(scope: !303, file: !3, line: 230, column: 2)
!357 = !DILocalVariable(name: "a", scope: !356, file: !3, line: 230, type: !6)
!358 = !DILocation(line: 0, scope: !356)
!359 = !DILocalVariable(name: "b", scope: !356, file: !3, line: 230, type: !6)
!360 = !DILocation(line: 231, column: 2, scope: !303)
!361 = !DILocation(line: 231, column: 2, scope: !362)
!362 = distinct !DILexicalBlock(scope: !303, file: !3, line: 231, column: 2)
!363 = !DILocalVariable(name: "a", scope: !362, file: !3, line: 231, type: !6)
!364 = !DILocation(line: 0, scope: !362)
!365 = !DILocalVariable(name: "b", scope: !362, file: !3, line: 231, type: !6)
!366 = !DILocation(line: 232, column: 2, scope: !303)
!367 = !DILocation(line: 232, column: 2, scope: !368)
!368 = distinct !DILexicalBlock(scope: !303, file: !3, line: 232, column: 2)
!369 = !DILocalVariable(name: "a", scope: !368, file: !3, line: 232, type: !6)
!370 = !DILocation(line: 0, scope: !368)
!371 = !DILocalVariable(name: "b", scope: !368, file: !3, line: 232, type: !6)
!372 = !DILocation(line: 233, column: 2, scope: !303)
!373 = !DILocation(line: 233, column: 2, scope: !374)
!374 = distinct !DILexicalBlock(scope: !303, file: !3, line: 233, column: 2)
!375 = !DILocalVariable(name: "a", scope: !374, file: !3, line: 233, type: !6)
!376 = !DILocation(line: 0, scope: !374)
!377 = !DILocalVariable(name: "b", scope: !374, file: !3, line: 233, type: !6)
!378 = !DILocation(line: 234, column: 1, scope: !303)
!379 = distinct !DISubprogram(name: "br_aes_ct64_interleave_in", scope: !3, file: !3, line: 238, type: !380, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !33, !33, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!384 = !DILocalVariable(name: "q0", arg: 1, scope: !379, file: !3, line: 238, type: !33)
!385 = !DILocation(line: 0, scope: !379)
!386 = !DILocalVariable(name: "q1", arg: 2, scope: !379, file: !3, line: 238, type: !33)
!387 = !DILocalVariable(name: "w", arg: 3, scope: !379, file: !3, line: 238, type: !382)
!388 = !DILocation(line: 242, column: 7, scope: !379)
!389 = !DILocalVariable(name: "x0", scope: !379, file: !3, line: 240, type: !6)
!390 = !DILocation(line: 243, column: 7, scope: !379)
!391 = !DILocalVariable(name: "x1", scope: !379, file: !3, line: 240, type: !6)
!392 = !DILocation(line: 244, column: 7, scope: !379)
!393 = !DILocalVariable(name: "x2", scope: !379, file: !3, line: 240, type: !6)
!394 = !DILocation(line: 245, column: 7, scope: !379)
!395 = !DILocalVariable(name: "x3", scope: !379, file: !3, line: 240, type: !6)
!396 = !DILocation(line: 246, column: 12, scope: !379)
!397 = !DILocation(line: 246, column: 5, scope: !379)
!398 = !DILocation(line: 247, column: 12, scope: !379)
!399 = !DILocation(line: 247, column: 5, scope: !379)
!400 = !DILocation(line: 248, column: 12, scope: !379)
!401 = !DILocation(line: 248, column: 5, scope: !379)
!402 = !DILocation(line: 249, column: 12, scope: !379)
!403 = !DILocation(line: 249, column: 5, scope: !379)
!404 = !DILocation(line: 250, column: 5, scope: !379)
!405 = !DILocation(line: 251, column: 5, scope: !379)
!406 = !DILocation(line: 252, column: 5, scope: !379)
!407 = !DILocation(line: 253, column: 5, scope: !379)
!408 = !DILocation(line: 254, column: 12, scope: !379)
!409 = !DILocation(line: 254, column: 5, scope: !379)
!410 = !DILocation(line: 255, column: 12, scope: !379)
!411 = !DILocation(line: 255, column: 5, scope: !379)
!412 = !DILocation(line: 256, column: 12, scope: !379)
!413 = !DILocation(line: 256, column: 5, scope: !379)
!414 = !DILocation(line: 257, column: 12, scope: !379)
!415 = !DILocation(line: 257, column: 5, scope: !379)
!416 = !DILocation(line: 258, column: 5, scope: !379)
!417 = !DILocation(line: 259, column: 5, scope: !379)
!418 = !DILocation(line: 260, column: 5, scope: !379)
!419 = !DILocation(line: 261, column: 5, scope: !379)
!420 = !DILocation(line: 262, column: 17, scope: !379)
!421 = !DILocation(line: 262, column: 11, scope: !379)
!422 = !DILocation(line: 262, column: 6, scope: !379)
!423 = !DILocation(line: 263, column: 17, scope: !379)
!424 = !DILocation(line: 263, column: 11, scope: !379)
!425 = !DILocation(line: 263, column: 6, scope: !379)
!426 = !DILocation(line: 264, column: 1, scope: !379)
!427 = distinct !DISubprogram(name: "br_aes_ct64_interleave_out", scope: !3, file: !3, line: 268, type: !428, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !430, !6, !6}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!431 = !DILocalVariable(name: "w", arg: 1, scope: !427, file: !3, line: 268, type: !430)
!432 = !DILocation(line: 0, scope: !427)
!433 = !DILocalVariable(name: "q0", arg: 2, scope: !427, file: !3, line: 268, type: !6)
!434 = !DILocalVariable(name: "q1", arg: 3, scope: !427, file: !3, line: 268, type: !6)
!435 = !DILocation(line: 272, column: 10, scope: !427)
!436 = !DILocalVariable(name: "x0", scope: !427, file: !3, line: 270, type: !6)
!437 = !DILocation(line: 273, column: 10, scope: !427)
!438 = !DILocalVariable(name: "x1", scope: !427, file: !3, line: 270, type: !6)
!439 = !DILocation(line: 274, column: 11, scope: !427)
!440 = !DILocation(line: 274, column: 17, scope: !427)
!441 = !DILocalVariable(name: "x2", scope: !427, file: !3, line: 270, type: !6)
!442 = !DILocation(line: 275, column: 11, scope: !427)
!443 = !DILocation(line: 275, column: 17, scope: !427)
!444 = !DILocalVariable(name: "x3", scope: !427, file: !3, line: 270, type: !6)
!445 = !DILocation(line: 276, column: 12, scope: !427)
!446 = !DILocation(line: 276, column: 5, scope: !427)
!447 = !DILocation(line: 277, column: 12, scope: !427)
!448 = !DILocation(line: 277, column: 5, scope: !427)
!449 = !DILocation(line: 278, column: 12, scope: !427)
!450 = !DILocation(line: 278, column: 5, scope: !427)
!451 = !DILocation(line: 279, column: 12, scope: !427)
!452 = !DILocation(line: 279, column: 5, scope: !427)
!453 = !DILocation(line: 280, column: 5, scope: !427)
!454 = !DILocation(line: 281, column: 5, scope: !427)
!455 = !DILocation(line: 282, column: 5, scope: !427)
!456 = !DILocation(line: 283, column: 5, scope: !427)
!457 = !DILocation(line: 284, column: 9, scope: !427)
!458 = !DILocation(line: 284, column: 38, scope: !427)
!459 = !DILocation(line: 284, column: 24, scope: !427)
!460 = !DILocation(line: 284, column: 22, scope: !427)
!461 = !DILocation(line: 284, column: 2, scope: !427)
!462 = !DILocation(line: 284, column: 7, scope: !427)
!463 = !DILocation(line: 285, column: 9, scope: !427)
!464 = !DILocation(line: 285, column: 38, scope: !427)
!465 = !DILocation(line: 285, column: 24, scope: !427)
!466 = !DILocation(line: 285, column: 22, scope: !427)
!467 = !DILocation(line: 285, column: 2, scope: !427)
!468 = !DILocation(line: 285, column: 7, scope: !427)
!469 = !DILocation(line: 286, column: 9, scope: !427)
!470 = !DILocation(line: 286, column: 38, scope: !427)
!471 = !DILocation(line: 286, column: 24, scope: !427)
!472 = !DILocation(line: 286, column: 22, scope: !427)
!473 = !DILocation(line: 286, column: 2, scope: !427)
!474 = !DILocation(line: 286, column: 7, scope: !427)
!475 = !DILocation(line: 287, column: 9, scope: !427)
!476 = !DILocation(line: 287, column: 38, scope: !427)
!477 = !DILocation(line: 287, column: 24, scope: !427)
!478 = !DILocation(line: 287, column: 22, scope: !427)
!479 = !DILocation(line: 287, column: 2, scope: !427)
!480 = !DILocation(line: 287, column: 7, scope: !427)
!481 = !DILocation(line: 288, column: 1, scope: !427)
!482 = distinct !DISubprogram(name: "br_aes_ct64_keysched", scope: !3, file: !3, line: 309, type: !483, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!483 = !DISubroutineType(types: !484)
!484 = !{!13, !33, !485, !487}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !488, line: 46, baseType: !10)
!488 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!489 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !482, file: !3, line: 309, type: !33)
!490 = !DILocation(line: 0, scope: !482)
!491 = !DILocalVariable(name: "key", arg: 2, scope: !482, file: !3, line: 309, type: !485)
!492 = !DILocalVariable(name: "key_len", arg: 3, scope: !482, file: !3, line: 309, type: !487)
!493 = !DILocalVariable(name: "skey", scope: !482, file: !3, line: 314, type: !494)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1920, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 60)
!497 = !DILocation(line: 314, column: 11, scope: !482)
!498 = !DILocation(line: 316, column: 2, scope: !482)
!499 = !DILocalVariable(name: "num_rounds", scope: !482, file: !3, line: 311, type: !13)
!500 = !DILocation(line: 319, column: 3, scope: !501)
!501 = distinct !DILexicalBlock(scope: !482, file: !3, line: 316, column: 19)
!502 = !DILocation(line: 322, column: 3, scope: !501)
!503 = !DILocation(line: 325, column: 3, scope: !501)
!504 = !DILocation(line: 328, column: 3, scope: !501)
!505 = !DILocation(line: 0, scope: !501)
!506 = !DILocation(line: 330, column: 21, scope: !482)
!507 = !DILocation(line: 330, column: 7, scope: !482)
!508 = !DILocalVariable(name: "nk", scope: !482, file: !3, line: 312, type: !14)
!509 = !DILocation(line: 331, column: 26, scope: !482)
!510 = !DILocation(line: 331, column: 31, scope: !482)
!511 = !DILocalVariable(name: "nkf", scope: !482, file: !3, line: 312, type: !14)
!512 = !DILocation(line: 332, column: 19, scope: !482)
!513 = !DILocation(line: 332, column: 34, scope: !482)
!514 = !DILocation(line: 332, column: 2, scope: !482)
!515 = !DILocation(line: 333, column: 22, scope: !482)
!516 = !DILocation(line: 333, column: 28, scope: !482)
!517 = !DILocation(line: 333, column: 8, scope: !482)
!518 = !DILocalVariable(name: "tmp", scope: !482, file: !3, line: 313, type: !11)
!519 = !DILocalVariable(name: "i", scope: !482, file: !3, line: 312, type: !14)
!520 = !DILocalVariable(name: "j", scope: !482, file: !3, line: 312, type: !14)
!521 = !DILocalVariable(name: "k", scope: !482, file: !3, line: 312, type: !14)
!522 = !DILocation(line: 334, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !482, file: !3, line: 334, column: 2)
!524 = !DILocation(line: 0, scope: !523)
!525 = !DILocation(line: 334, column: 31, scope: !526)
!526 = distinct !DILexicalBlock(scope: !523, file: !3, line: 334, column: 2)
!527 = !DILocation(line: 334, column: 2, scope: !523)
!528 = !DILocation(line: 335, column: 9, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 335, column: 7)
!530 = distinct !DILexicalBlock(scope: !526, file: !3, line: 334, column: 44)
!531 = !DILocation(line: 335, column: 7, scope: !530)
!532 = !DILocation(line: 336, column: 15, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !3, line: 335, column: 15)
!534 = !DILocation(line: 336, column: 29, scope: !533)
!535 = !DILocation(line: 336, column: 22, scope: !533)
!536 = !DILocation(line: 337, column: 10, scope: !533)
!537 = !DILocation(line: 337, column: 26, scope: !533)
!538 = !DILocation(line: 337, column: 24, scope: !533)
!539 = !DILocation(line: 338, column: 3, scope: !533)
!540 = !DILocation(line: 338, column: 17, scope: !541)
!541 = distinct !DILexicalBlock(scope: !529, file: !3, line: 338, column: 14)
!542 = !DILocation(line: 338, column: 21, scope: !541)
!543 = !DILocation(line: 338, column: 26, scope: !541)
!544 = !DILocation(line: 338, column: 14, scope: !529)
!545 = !DILocation(line: 339, column: 10, scope: !546)
!546 = distinct !DILexicalBlock(scope: !541, file: !3, line: 338, column: 32)
!547 = !DILocation(line: 340, column: 3, scope: !546)
!548 = !DILocation(line: 0, scope: !529)
!549 = !DILocation(line: 341, column: 17, scope: !530)
!550 = !DILocation(line: 341, column: 10, scope: !530)
!551 = !DILocation(line: 341, column: 7, scope: !530)
!552 = !DILocation(line: 342, column: 3, scope: !530)
!553 = !DILocation(line: 342, column: 11, scope: !530)
!554 = !DILocation(line: 343, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !530, file: !3, line: 343, column: 7)
!556 = !DILocation(line: 343, column: 12, scope: !555)
!557 = !DILocation(line: 343, column: 7, scope: !530)
!558 = !DILocation(line: 345, column: 6, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !3, line: 343, column: 19)
!560 = !DILocation(line: 346, column: 3, scope: !559)
!561 = !DILocation(line: 0, scope: !555)
!562 = !DILocation(line: 347, column: 2, scope: !530)
!563 = !DILocation(line: 334, column: 40, scope: !526)
!564 = !DILocation(line: 334, column: 2, scope: !526)
!565 = distinct !{!565, !527, !566, !567}
!566 = !DILocation(line: 347, column: 2, scope: !523)
!567 = !{!"llvm.loop.mustprogress"}
!568 = !DILocation(line: 349, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !482, file: !3, line: 349, column: 2)
!570 = !DILocation(line: 0, scope: !569)
!571 = !DILocation(line: 349, column: 23, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !3, line: 349, column: 2)
!573 = !DILocation(line: 349, column: 2, scope: !569)
!574 = !DILocalVariable(name: "q", scope: !575, file: !3, line: 350, type: !576)
!575 = distinct !DILexicalBlock(scope: !572, file: !3, line: 349, column: 46)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 8)
!579 = !DILocation(line: 350, column: 12, scope: !575)
!580 = !DILocation(line: 352, column: 30, scope: !575)
!581 = !DILocation(line: 352, column: 37, scope: !575)
!582 = !DILocation(line: 352, column: 43, scope: !575)
!583 = !DILocation(line: 352, column: 48, scope: !575)
!584 = !DILocation(line: 352, column: 3, scope: !575)
!585 = !DILocation(line: 353, column: 10, scope: !575)
!586 = !DILocation(line: 353, column: 3, scope: !575)
!587 = !DILocation(line: 353, column: 8, scope: !575)
!588 = !DILocation(line: 354, column: 10, scope: !575)
!589 = !DILocation(line: 354, column: 3, scope: !575)
!590 = !DILocation(line: 354, column: 8, scope: !575)
!591 = !DILocation(line: 355, column: 10, scope: !575)
!592 = !DILocation(line: 355, column: 3, scope: !575)
!593 = !DILocation(line: 355, column: 8, scope: !575)
!594 = !DILocation(line: 356, column: 10, scope: !575)
!595 = !DILocation(line: 356, column: 3, scope: !575)
!596 = !DILocation(line: 356, column: 8, scope: !575)
!597 = !DILocation(line: 357, column: 10, scope: !575)
!598 = !DILocation(line: 357, column: 3, scope: !575)
!599 = !DILocation(line: 357, column: 8, scope: !575)
!600 = !DILocation(line: 358, column: 10, scope: !575)
!601 = !DILocation(line: 358, column: 3, scope: !575)
!602 = !DILocation(line: 358, column: 8, scope: !575)
!603 = !DILocation(line: 359, column: 21, scope: !575)
!604 = !DILocation(line: 359, column: 3, scope: !575)
!605 = !DILocation(line: 361, column: 7, scope: !575)
!606 = !DILocation(line: 361, column: 12, scope: !575)
!607 = !DILocation(line: 362, column: 7, scope: !575)
!608 = !DILocation(line: 362, column: 12, scope: !575)
!609 = !DILocation(line: 362, column: 4, scope: !575)
!610 = !DILocation(line: 363, column: 7, scope: !575)
!611 = !DILocation(line: 363, column: 12, scope: !575)
!612 = !DILocation(line: 363, column: 4, scope: !575)
!613 = !DILocation(line: 364, column: 7, scope: !575)
!614 = !DILocation(line: 364, column: 12, scope: !575)
!615 = !DILocation(line: 364, column: 4, scope: !575)
!616 = !DILocation(line: 360, column: 15, scope: !575)
!617 = !DILocation(line: 360, column: 3, scope: !575)
!618 = !DILocation(line: 360, column: 20, scope: !575)
!619 = !DILocation(line: 366, column: 7, scope: !575)
!620 = !DILocation(line: 366, column: 12, scope: !575)
!621 = !DILocation(line: 367, column: 7, scope: !575)
!622 = !DILocation(line: 367, column: 12, scope: !575)
!623 = !DILocation(line: 367, column: 4, scope: !575)
!624 = !DILocation(line: 368, column: 7, scope: !575)
!625 = !DILocation(line: 368, column: 12, scope: !575)
!626 = !DILocation(line: 368, column: 4, scope: !575)
!627 = !DILocation(line: 369, column: 7, scope: !575)
!628 = !DILocation(line: 369, column: 12, scope: !575)
!629 = !DILocation(line: 369, column: 4, scope: !575)
!630 = !DILocation(line: 365, column: 15, scope: !575)
!631 = !DILocation(line: 365, column: 3, scope: !575)
!632 = !DILocation(line: 365, column: 20, scope: !575)
!633 = !DILocation(line: 370, column: 2, scope: !575)
!634 = !DILocation(line: 349, column: 32, scope: !572)
!635 = !DILocation(line: 349, column: 40, scope: !572)
!636 = !DILocation(line: 349, column: 2, scope: !572)
!637 = distinct !{!637, !573, !638, !567}
!638 = !DILocation(line: 370, column: 2, scope: !569)
!639 = !DILocation(line: 371, column: 2, scope: !482)
!640 = !DILocation(line: 372, column: 1, scope: !482)
!641 = distinct !DISubprogram(name: "sub_word", scope: !3, file: !3, line: 295, type: !642, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!642 = !DISubroutineType(types: !643)
!643 = !{!11, !11}
!644 = !DILocalVariable(name: "x", arg: 1, scope: !641, file: !3, line: 295, type: !11)
!645 = !DILocation(line: 0, scope: !641)
!646 = !DILocalVariable(name: "q", scope: !641, file: !3, line: 297, type: !576)
!647 = !DILocation(line: 297, column: 11, scope: !641)
!648 = !DILocation(line: 299, column: 2, scope: !641)
!649 = !DILocation(line: 300, column: 9, scope: !641)
!650 = !DILocation(line: 300, column: 2, scope: !641)
!651 = !DILocation(line: 300, column: 7, scope: !641)
!652 = !DILocation(line: 301, column: 20, scope: !641)
!653 = !DILocation(line: 301, column: 2, scope: !641)
!654 = !DILocation(line: 302, column: 28, scope: !641)
!655 = !DILocation(line: 302, column: 2, scope: !641)
!656 = !DILocation(line: 303, column: 20, scope: !641)
!657 = !DILocation(line: 303, column: 2, scope: !641)
!658 = !DILocation(line: 304, column: 19, scope: !641)
!659 = !DILocation(line: 304, column: 9, scope: !641)
!660 = !DILocation(line: 304, column: 2, scope: !641)
!661 = distinct !DISubprogram(name: "br_aes_ct64_skey_expand", scope: !3, file: !3, line: 376, type: !662, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !33, !13, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!666 = !DILocalVariable(name: "skey", arg: 1, scope: !661, file: !3, line: 376, type: !33)
!667 = !DILocation(line: 0, scope: !661)
!668 = !DILocalVariable(name: "num_rounds", arg: 2, scope: !661, file: !3, line: 377, type: !13)
!669 = !DILocalVariable(name: "comp_skey", arg: 3, scope: !661, file: !3, line: 377, type: !664)
!670 = !DILocation(line: 381, column: 18, scope: !661)
!671 = !DILocation(line: 381, column: 23, scope: !661)
!672 = !DILocalVariable(name: "n", scope: !661, file: !3, line: 379, type: !13)
!673 = !DILocalVariable(name: "u", scope: !661, file: !3, line: 379, type: !13)
!674 = !DILocalVariable(name: "v", scope: !661, file: !3, line: 379, type: !13)
!675 = !DILocation(line: 382, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !661, file: !3, line: 382, column: 2)
!677 = !DILocation(line: 0, scope: !676)
!678 = !DILocation(line: 382, column: 23, scope: !679)
!679 = distinct !DILexicalBlock(scope: !676, file: !3, line: 382, column: 2)
!680 = !DILocation(line: 382, column: 2, scope: !676)
!681 = !DILocation(line: 385, column: 23, scope: !682)
!682 = distinct !DILexicalBlock(scope: !679, file: !3, line: 382, column: 42)
!683 = !DILocalVariable(name: "x3", scope: !682, file: !3, line: 383, type: !6)
!684 = !DILocation(line: 0, scope: !682)
!685 = !DILocalVariable(name: "x2", scope: !682, file: !3, line: 383, type: !6)
!686 = !DILocalVariable(name: "x1", scope: !682, file: !3, line: 383, type: !6)
!687 = !DILocalVariable(name: "x0", scope: !682, file: !3, line: 383, type: !6)
!688 = !DILocation(line: 386, column: 6, scope: !682)
!689 = !DILocation(line: 387, column: 6, scope: !682)
!690 = !DILocation(line: 388, column: 6, scope: !682)
!691 = !DILocation(line: 389, column: 6, scope: !682)
!692 = !DILocation(line: 390, column: 6, scope: !682)
!693 = !DILocation(line: 391, column: 6, scope: !682)
!694 = !DILocation(line: 392, column: 6, scope: !682)
!695 = !DILocation(line: 393, column: 21, scope: !682)
!696 = !DILocation(line: 393, column: 27, scope: !682)
!697 = !DILocation(line: 393, column: 10, scope: !682)
!698 = !DILocation(line: 393, column: 3, scope: !682)
!699 = !DILocation(line: 393, column: 15, scope: !682)
!700 = !DILocation(line: 394, column: 21, scope: !682)
!701 = !DILocation(line: 394, column: 27, scope: !682)
!702 = !DILocation(line: 394, column: 10, scope: !682)
!703 = !DILocation(line: 394, column: 3, scope: !682)
!704 = !DILocation(line: 394, column: 15, scope: !682)
!705 = !DILocation(line: 395, column: 21, scope: !682)
!706 = !DILocation(line: 395, column: 27, scope: !682)
!707 = !DILocation(line: 395, column: 10, scope: !682)
!708 = !DILocation(line: 395, column: 3, scope: !682)
!709 = !DILocation(line: 395, column: 15, scope: !682)
!710 = !DILocation(line: 396, column: 21, scope: !682)
!711 = !DILocation(line: 396, column: 27, scope: !682)
!712 = !DILocation(line: 396, column: 10, scope: !682)
!713 = !DILocation(line: 396, column: 3, scope: !682)
!714 = !DILocation(line: 396, column: 15, scope: !682)
!715 = !DILocation(line: 397, column: 2, scope: !682)
!716 = !DILocation(line: 382, column: 30, scope: !679)
!717 = !DILocation(line: 382, column: 36, scope: !679)
!718 = !DILocation(line: 382, column: 2, scope: !679)
!719 = distinct !{!719, !680, !720, !567}
!720 = !DILocation(line: 397, column: 2, scope: !676)
!721 = !DILocation(line: 398, column: 1, scope: !661)
!722 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_invSbox", scope: !22, file: !22, line: 29, type: !31, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !4)
!723 = !DILocalVariable(name: "q", arg: 1, scope: !722, file: !22, line: 29, type: !33)
!724 = !DILocation(line: 0, scope: !722)
!725 = !DILocation(line: 37, column: 8, scope: !722)
!726 = !DILocation(line: 37, column: 7, scope: !722)
!727 = !DILocalVariable(name: "q0", scope: !722, file: !22, line: 35, type: !6)
!728 = !DILocation(line: 38, column: 8, scope: !722)
!729 = !DILocation(line: 38, column: 7, scope: !722)
!730 = !DILocalVariable(name: "q1", scope: !722, file: !22, line: 35, type: !6)
!731 = !DILocation(line: 39, column: 7, scope: !722)
!732 = !DILocalVariable(name: "q2", scope: !722, file: !22, line: 35, type: !6)
!733 = !DILocation(line: 40, column: 7, scope: !722)
!734 = !DILocalVariable(name: "q3", scope: !722, file: !22, line: 35, type: !6)
!735 = !DILocation(line: 41, column: 7, scope: !722)
!736 = !DILocalVariable(name: "q4", scope: !722, file: !22, line: 35, type: !6)
!737 = !DILocation(line: 42, column: 8, scope: !722)
!738 = !DILocation(line: 42, column: 7, scope: !722)
!739 = !DILocalVariable(name: "q5", scope: !722, file: !22, line: 35, type: !6)
!740 = !DILocation(line: 43, column: 8, scope: !722)
!741 = !DILocation(line: 43, column: 7, scope: !722)
!742 = !DILocalVariable(name: "q6", scope: !722, file: !22, line: 35, type: !6)
!743 = !DILocation(line: 44, column: 7, scope: !722)
!744 = !DILocalVariable(name: "q7", scope: !722, file: !22, line: 35, type: !6)
!745 = !DILocation(line: 45, column: 12, scope: !722)
!746 = !DILocation(line: 45, column: 17, scope: !722)
!747 = !DILocation(line: 45, column: 2, scope: !722)
!748 = !DILocation(line: 45, column: 7, scope: !722)
!749 = !DILocation(line: 46, column: 12, scope: !722)
!750 = !DILocation(line: 46, column: 17, scope: !722)
!751 = !DILocation(line: 46, column: 2, scope: !722)
!752 = !DILocation(line: 46, column: 7, scope: !722)
!753 = !DILocation(line: 47, column: 12, scope: !722)
!754 = !DILocation(line: 47, column: 17, scope: !722)
!755 = !DILocation(line: 47, column: 2, scope: !722)
!756 = !DILocation(line: 47, column: 7, scope: !722)
!757 = !DILocation(line: 48, column: 12, scope: !722)
!758 = !DILocation(line: 48, column: 17, scope: !722)
!759 = !DILocation(line: 48, column: 2, scope: !722)
!760 = !DILocation(line: 48, column: 7, scope: !722)
!761 = !DILocation(line: 49, column: 12, scope: !722)
!762 = !DILocation(line: 49, column: 17, scope: !722)
!763 = !DILocation(line: 49, column: 2, scope: !722)
!764 = !DILocation(line: 49, column: 7, scope: !722)
!765 = !DILocation(line: 50, column: 12, scope: !722)
!766 = !DILocation(line: 50, column: 17, scope: !722)
!767 = !DILocation(line: 50, column: 2, scope: !722)
!768 = !DILocation(line: 50, column: 7, scope: !722)
!769 = !DILocation(line: 51, column: 12, scope: !722)
!770 = !DILocation(line: 51, column: 17, scope: !722)
!771 = !DILocation(line: 51, column: 2, scope: !722)
!772 = !DILocation(line: 51, column: 7, scope: !722)
!773 = !DILocation(line: 52, column: 12, scope: !722)
!774 = !DILocation(line: 52, column: 17, scope: !722)
!775 = !DILocation(line: 52, column: 2, scope: !722)
!776 = !DILocation(line: 52, column: 7, scope: !722)
!777 = !DILocation(line: 54, column: 2, scope: !722)
!778 = !DILocation(line: 56, column: 8, scope: !722)
!779 = !DILocation(line: 56, column: 7, scope: !722)
!780 = !DILocation(line: 57, column: 8, scope: !722)
!781 = !DILocation(line: 57, column: 7, scope: !722)
!782 = !DILocation(line: 58, column: 7, scope: !722)
!783 = !DILocation(line: 59, column: 7, scope: !722)
!784 = !DILocation(line: 60, column: 7, scope: !722)
!785 = !DILocation(line: 61, column: 8, scope: !722)
!786 = !DILocation(line: 61, column: 7, scope: !722)
!787 = !DILocation(line: 62, column: 8, scope: !722)
!788 = !DILocation(line: 62, column: 7, scope: !722)
!789 = !DILocation(line: 63, column: 7, scope: !722)
!790 = !DILocation(line: 64, column: 12, scope: !722)
!791 = !DILocation(line: 64, column: 17, scope: !722)
!792 = !DILocation(line: 64, column: 2, scope: !722)
!793 = !DILocation(line: 64, column: 7, scope: !722)
!794 = !DILocation(line: 65, column: 12, scope: !722)
!795 = !DILocation(line: 65, column: 17, scope: !722)
!796 = !DILocation(line: 65, column: 2, scope: !722)
!797 = !DILocation(line: 65, column: 7, scope: !722)
!798 = !DILocation(line: 66, column: 12, scope: !722)
!799 = !DILocation(line: 66, column: 17, scope: !722)
!800 = !DILocation(line: 66, column: 2, scope: !722)
!801 = !DILocation(line: 66, column: 7, scope: !722)
!802 = !DILocation(line: 67, column: 12, scope: !722)
!803 = !DILocation(line: 67, column: 17, scope: !722)
!804 = !DILocation(line: 67, column: 2, scope: !722)
!805 = !DILocation(line: 67, column: 7, scope: !722)
!806 = !DILocation(line: 68, column: 12, scope: !722)
!807 = !DILocation(line: 68, column: 17, scope: !722)
!808 = !DILocation(line: 68, column: 2, scope: !722)
!809 = !DILocation(line: 68, column: 7, scope: !722)
!810 = !DILocation(line: 69, column: 12, scope: !722)
!811 = !DILocation(line: 69, column: 17, scope: !722)
!812 = !DILocation(line: 69, column: 2, scope: !722)
!813 = !DILocation(line: 69, column: 7, scope: !722)
!814 = !DILocation(line: 70, column: 12, scope: !722)
!815 = !DILocation(line: 70, column: 17, scope: !722)
!816 = !DILocation(line: 70, column: 2, scope: !722)
!817 = !DILocation(line: 70, column: 7, scope: !722)
!818 = !DILocation(line: 71, column: 12, scope: !722)
!819 = !DILocation(line: 71, column: 17, scope: !722)
!820 = !DILocation(line: 71, column: 2, scope: !722)
!821 = !DILocation(line: 71, column: 7, scope: !722)
!822 = !DILocation(line: 72, column: 1, scope: !722)
!823 = distinct !DISubprogram(name: "br_aes_ct64_bitslice_decrypt", scope: !22, file: !22, line: 144, type: !824, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !4)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !13, !664, !33}
!826 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !823, file: !22, line: 144, type: !13)
!827 = !DILocation(line: 0, scope: !823)
!828 = !DILocalVariable(name: "skey", arg: 2, scope: !823, file: !22, line: 145, type: !664)
!829 = !DILocalVariable(name: "q", arg: 3, scope: !823, file: !22, line: 145, type: !33)
!830 = !DILocation(line: 149, column: 38, scope: !823)
!831 = !DILocation(line: 149, column: 24, scope: !823)
!832 = !DILocation(line: 149, column: 2, scope: !823)
!833 = !DILocation(line: 150, column: 22, scope: !834)
!834 = distinct !DILexicalBlock(scope: !823, file: !22, line: 150, column: 2)
!835 = !DILocalVariable(name: "u", scope: !823, file: !22, line: 147, type: !13)
!836 = !DILocation(line: 150, column: 7, scope: !834)
!837 = !DILocation(line: 0, scope: !834)
!838 = !DILocation(line: 150, column: 29, scope: !839)
!839 = distinct !DILexicalBlock(scope: !834, file: !22, line: 150, column: 2)
!840 = !DILocation(line: 150, column: 2, scope: !834)
!841 = !DILocation(line: 151, column: 3, scope: !842)
!842 = distinct !DILexicalBlock(scope: !839, file: !22, line: 150, column: 40)
!843 = !DILocation(line: 152, column: 3, scope: !842)
!844 = !DILocation(line: 153, column: 30, scope: !842)
!845 = !DILocation(line: 153, column: 25, scope: !842)
!846 = !DILocation(line: 153, column: 3, scope: !842)
!847 = !DILocation(line: 154, column: 3, scope: !842)
!848 = !DILocation(line: 155, column: 2, scope: !842)
!849 = !DILocation(line: 150, column: 36, scope: !839)
!850 = !DILocation(line: 150, column: 2, scope: !839)
!851 = distinct !{!851, !840, !852, !567}
!852 = !DILocation(line: 155, column: 2, scope: !834)
!853 = !DILocation(line: 156, column: 2, scope: !823)
!854 = !DILocation(line: 157, column: 2, scope: !823)
!855 = !DILocation(line: 158, column: 2, scope: !823)
!856 = !DILocation(line: 159, column: 1, scope: !823)
!857 = distinct !DISubprogram(name: "add_round_key", scope: !22, file: !22, line: 75, type: !858, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !4)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !33, !664}
!860 = !DILocalVariable(name: "q", arg: 1, scope: !857, file: !22, line: 75, type: !33)
!861 = !DILocation(line: 0, scope: !857)
!862 = !DILocalVariable(name: "sk", arg: 2, scope: !857, file: !22, line: 75, type: !664)
!863 = !DILocalVariable(name: "i", scope: !857, file: !22, line: 77, type: !14)
!864 = !DILocation(line: 79, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !857, file: !22, line: 79, column: 2)
!866 = !DILocation(line: 0, scope: !865)
!867 = !DILocation(line: 79, column: 16, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !22, line: 79, column: 2)
!869 = !DILocation(line: 79, column: 2, scope: !865)
!870 = !DILocation(line: 80, column: 11, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !22, line: 79, column: 27)
!872 = !DILocation(line: 80, column: 3, scope: !871)
!873 = !DILocation(line: 80, column: 8, scope: !871)
!874 = !DILocation(line: 81, column: 2, scope: !871)
!875 = !DILocation(line: 79, column: 23, scope: !868)
!876 = !DILocation(line: 79, column: 2, scope: !868)
!877 = distinct !{!877, !869, !878, !567}
!878 = !DILocation(line: 81, column: 2, scope: !865)
!879 = !DILocation(line: 82, column: 1, scope: !857)
!880 = distinct !DISubprogram(name: "inv_shift_rows", scope: !22, file: !22, line: 85, type: !31, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !4)
!881 = !DILocalVariable(name: "q", arg: 1, scope: !880, file: !22, line: 85, type: !33)
!882 = !DILocation(line: 0, scope: !880)
!883 = !DILocalVariable(name: "i", scope: !880, file: !22, line: 87, type: !14)
!884 = !DILocation(line: 89, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !880, file: !22, line: 89, column: 2)
!886 = !DILocation(line: 0, scope: !885)
!887 = !DILocation(line: 89, column: 16, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !22, line: 89, column: 2)
!889 = !DILocation(line: 89, column: 2, scope: !885)
!890 = !DILocation(line: 92, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !22, line: 89, column: 27)
!892 = !DILocalVariable(name: "x", scope: !891, file: !22, line: 90, type: !6)
!893 = !DILocation(line: 0, scope: !891)
!894 = !DILocation(line: 93, column: 13, scope: !891)
!895 = !DILocation(line: 94, column: 10, scope: !891)
!896 = !DILocation(line: 94, column: 42, scope: !891)
!897 = !DILocation(line: 94, column: 4, scope: !891)
!898 = !DILocation(line: 95, column: 10, scope: !891)
!899 = !DILocation(line: 95, column: 42, scope: !891)
!900 = !DILocation(line: 95, column: 4, scope: !891)
!901 = !DILocation(line: 96, column: 10, scope: !891)
!902 = !DILocation(line: 96, column: 42, scope: !891)
!903 = !DILocation(line: 96, column: 4, scope: !891)
!904 = !DILocation(line: 97, column: 10, scope: !891)
!905 = !DILocation(line: 97, column: 42, scope: !891)
!906 = !DILocation(line: 97, column: 4, scope: !891)
!907 = !DILocation(line: 98, column: 10, scope: !891)
!908 = !DILocation(line: 98, column: 42, scope: !891)
!909 = !DILocation(line: 98, column: 4, scope: !891)
!910 = !DILocation(line: 99, column: 10, scope: !891)
!911 = !DILocation(line: 99, column: 42, scope: !891)
!912 = !DILocation(line: 99, column: 4, scope: !891)
!913 = !DILocation(line: 93, column: 3, scope: !891)
!914 = !DILocation(line: 93, column: 8, scope: !891)
!915 = !DILocation(line: 100, column: 2, scope: !891)
!916 = !DILocation(line: 89, column: 23, scope: !888)
!917 = !DILocation(line: 89, column: 2, scope: !888)
!918 = distinct !{!918, !889, !919, !567}
!919 = !DILocation(line: 100, column: 2, scope: !885)
!920 = !DILocation(line: 101, column: 1, scope: !880)
!921 = distinct !DISubprogram(name: "inv_mix_columns", scope: !22, file: !22, line: 110, type: !31, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !4)
!922 = !DILocalVariable(name: "q", arg: 1, scope: !921, file: !22, line: 110, type: !33)
!923 = !DILocation(line: 0, scope: !921)
!924 = !DILocation(line: 115, column: 7, scope: !921)
!925 = !DILocalVariable(name: "q0", scope: !921, file: !22, line: 112, type: !6)
!926 = !DILocation(line: 116, column: 7, scope: !921)
!927 = !DILocalVariable(name: "q1", scope: !921, file: !22, line: 112, type: !6)
!928 = !DILocation(line: 117, column: 7, scope: !921)
!929 = !DILocalVariable(name: "q2", scope: !921, file: !22, line: 112, type: !6)
!930 = !DILocation(line: 118, column: 7, scope: !921)
!931 = !DILocalVariable(name: "q3", scope: !921, file: !22, line: 112, type: !6)
!932 = !DILocation(line: 119, column: 7, scope: !921)
!933 = !DILocalVariable(name: "q4", scope: !921, file: !22, line: 112, type: !6)
!934 = !DILocation(line: 120, column: 7, scope: !921)
!935 = !DILocalVariable(name: "q5", scope: !921, file: !22, line: 112, type: !6)
!936 = !DILocation(line: 121, column: 7, scope: !921)
!937 = !DILocalVariable(name: "q6", scope: !921, file: !22, line: 112, type: !6)
!938 = !DILocation(line: 122, column: 7, scope: !921)
!939 = !DILocalVariable(name: "q7", scope: !921, file: !22, line: 112, type: !6)
!940 = !DILocation(line: 123, column: 11, scope: !921)
!941 = !DILocation(line: 123, column: 24, scope: !921)
!942 = !DILocation(line: 123, column: 18, scope: !921)
!943 = !DILocalVariable(name: "r0", scope: !921, file: !22, line: 113, type: !6)
!944 = !DILocation(line: 124, column: 11, scope: !921)
!945 = !DILocation(line: 124, column: 24, scope: !921)
!946 = !DILocation(line: 124, column: 18, scope: !921)
!947 = !DILocalVariable(name: "r1", scope: !921, file: !22, line: 113, type: !6)
!948 = !DILocation(line: 125, column: 11, scope: !921)
!949 = !DILocation(line: 125, column: 24, scope: !921)
!950 = !DILocation(line: 125, column: 18, scope: !921)
!951 = !DILocalVariable(name: "r2", scope: !921, file: !22, line: 113, type: !6)
!952 = !DILocation(line: 126, column: 11, scope: !921)
!953 = !DILocation(line: 126, column: 24, scope: !921)
!954 = !DILocation(line: 126, column: 18, scope: !921)
!955 = !DILocalVariable(name: "r3", scope: !921, file: !22, line: 113, type: !6)
!956 = !DILocation(line: 127, column: 11, scope: !921)
!957 = !DILocation(line: 127, column: 24, scope: !921)
!958 = !DILocation(line: 127, column: 18, scope: !921)
!959 = !DILocalVariable(name: "r4", scope: !921, file: !22, line: 113, type: !6)
!960 = !DILocation(line: 128, column: 11, scope: !921)
!961 = !DILocation(line: 128, column: 24, scope: !921)
!962 = !DILocation(line: 128, column: 18, scope: !921)
!963 = !DILocalVariable(name: "r5", scope: !921, file: !22, line: 113, type: !6)
!964 = !DILocation(line: 129, column: 11, scope: !921)
!965 = !DILocation(line: 129, column: 24, scope: !921)
!966 = !DILocation(line: 129, column: 18, scope: !921)
!967 = !DILocalVariable(name: "r6", scope: !921, file: !22, line: 113, type: !6)
!968 = !DILocation(line: 130, column: 11, scope: !921)
!969 = !DILocation(line: 130, column: 24, scope: !921)
!970 = !DILocation(line: 130, column: 18, scope: !921)
!971 = !DILocalVariable(name: "r7", scope: !921, file: !22, line: 113, type: !6)
!972 = !DILocation(line: 132, column: 12, scope: !921)
!973 = !DILocation(line: 132, column: 17, scope: !921)
!974 = !DILocation(line: 132, column: 22, scope: !921)
!975 = !DILocation(line: 132, column: 27, scope: !921)
!976 = !DILocation(line: 132, column: 32, scope: !921)
!977 = !DILocation(line: 132, column: 49, scope: !921)
!978 = !DILocation(line: 132, column: 54, scope: !921)
!979 = !DILocation(line: 132, column: 59, scope: !921)
!980 = !DILocation(line: 132, column: 64, scope: !921)
!981 = !DILocation(line: 132, column: 39, scope: !921)
!982 = !DILocation(line: 132, column: 37, scope: !921)
!983 = !DILocation(line: 132, column: 2, scope: !921)
!984 = !DILocation(line: 132, column: 7, scope: !921)
!985 = !DILocation(line: 133, column: 12, scope: !921)
!986 = !DILocation(line: 133, column: 17, scope: !921)
!987 = !DILocation(line: 133, column: 22, scope: !921)
!988 = !DILocation(line: 133, column: 27, scope: !921)
!989 = !DILocation(line: 133, column: 32, scope: !921)
!990 = !DILocation(line: 133, column: 37, scope: !921)
!991 = !DILocation(line: 133, column: 54, scope: !921)
!992 = !DILocation(line: 133, column: 59, scope: !921)
!993 = !DILocation(line: 133, column: 64, scope: !921)
!994 = !DILocation(line: 133, column: 69, scope: !921)
!995 = !DILocation(line: 133, column: 74, scope: !921)
!996 = !DILocation(line: 133, column: 44, scope: !921)
!997 = !DILocation(line: 133, column: 42, scope: !921)
!998 = !DILocation(line: 133, column: 2, scope: !921)
!999 = !DILocation(line: 133, column: 7, scope: !921)
!1000 = !DILocation(line: 134, column: 12, scope: !921)
!1001 = !DILocation(line: 134, column: 17, scope: !921)
!1002 = !DILocation(line: 134, column: 22, scope: !921)
!1003 = !DILocation(line: 134, column: 27, scope: !921)
!1004 = !DILocation(line: 134, column: 32, scope: !921)
!1005 = !DILocation(line: 134, column: 37, scope: !921)
!1006 = !DILocation(line: 134, column: 54, scope: !921)
!1007 = !DILocation(line: 134, column: 59, scope: !921)
!1008 = !DILocation(line: 134, column: 64, scope: !921)
!1009 = !DILocation(line: 134, column: 69, scope: !921)
!1010 = !DILocation(line: 134, column: 74, scope: !921)
!1011 = !DILocation(line: 134, column: 44, scope: !921)
!1012 = !DILocation(line: 134, column: 42, scope: !921)
!1013 = !DILocation(line: 134, column: 2, scope: !921)
!1014 = !DILocation(line: 134, column: 7, scope: !921)
!1015 = !DILocation(line: 135, column: 12, scope: !921)
!1016 = !DILocation(line: 135, column: 17, scope: !921)
!1017 = !DILocation(line: 135, column: 22, scope: !921)
!1018 = !DILocation(line: 135, column: 27, scope: !921)
!1019 = !DILocation(line: 135, column: 32, scope: !921)
!1020 = !DILocation(line: 135, column: 37, scope: !921)
!1021 = !DILocation(line: 135, column: 42, scope: !921)
!1022 = !DILocation(line: 135, column: 47, scope: !921)
!1023 = !DILocation(line: 135, column: 64, scope: !921)
!1024 = !DILocation(line: 135, column: 69, scope: !921)
!1025 = !DILocation(line: 135, column: 74, scope: !921)
!1026 = !DILocation(line: 135, column: 79, scope: !921)
!1027 = !DILocation(line: 135, column: 84, scope: !921)
!1028 = !DILocation(line: 135, column: 89, scope: !921)
!1029 = !DILocation(line: 135, column: 94, scope: !921)
!1030 = !DILocation(line: 135, column: 99, scope: !921)
!1031 = !DILocation(line: 135, column: 104, scope: !921)
!1032 = !DILocation(line: 135, column: 54, scope: !921)
!1033 = !DILocation(line: 135, column: 52, scope: !921)
!1034 = !DILocation(line: 135, column: 2, scope: !921)
!1035 = !DILocation(line: 135, column: 7, scope: !921)
!1036 = !DILocation(line: 136, column: 12, scope: !921)
!1037 = !DILocation(line: 136, column: 17, scope: !921)
!1038 = !DILocation(line: 136, column: 22, scope: !921)
!1039 = !DILocation(line: 136, column: 27, scope: !921)
!1040 = !DILocation(line: 136, column: 32, scope: !921)
!1041 = !DILocation(line: 136, column: 37, scope: !921)
!1042 = !DILocation(line: 136, column: 42, scope: !921)
!1043 = !DILocation(line: 136, column: 47, scope: !921)
!1044 = !DILocation(line: 136, column: 52, scope: !921)
!1045 = !DILocation(line: 136, column: 69, scope: !921)
!1046 = !DILocation(line: 136, column: 74, scope: !921)
!1047 = !DILocation(line: 136, column: 79, scope: !921)
!1048 = !DILocation(line: 136, column: 84, scope: !921)
!1049 = !DILocation(line: 136, column: 89, scope: !921)
!1050 = !DILocation(line: 136, column: 94, scope: !921)
!1051 = !DILocation(line: 136, column: 99, scope: !921)
!1052 = !DILocation(line: 136, column: 104, scope: !921)
!1053 = !DILocation(line: 136, column: 59, scope: !921)
!1054 = !DILocation(line: 136, column: 57, scope: !921)
!1055 = !DILocation(line: 136, column: 2, scope: !921)
!1056 = !DILocation(line: 136, column: 7, scope: !921)
!1057 = !DILocation(line: 137, column: 12, scope: !921)
!1058 = !DILocation(line: 137, column: 17, scope: !921)
!1059 = !DILocation(line: 137, column: 22, scope: !921)
!1060 = !DILocation(line: 137, column: 27, scope: !921)
!1061 = !DILocation(line: 137, column: 32, scope: !921)
!1062 = !DILocation(line: 137, column: 37, scope: !921)
!1063 = !DILocation(line: 137, column: 42, scope: !921)
!1064 = !DILocation(line: 137, column: 47, scope: !921)
!1065 = !DILocation(line: 137, column: 64, scope: !921)
!1066 = !DILocation(line: 137, column: 69, scope: !921)
!1067 = !DILocation(line: 137, column: 74, scope: !921)
!1068 = !DILocation(line: 137, column: 79, scope: !921)
!1069 = !DILocation(line: 137, column: 84, scope: !921)
!1070 = !DILocation(line: 137, column: 89, scope: !921)
!1071 = !DILocation(line: 137, column: 94, scope: !921)
!1072 = !DILocation(line: 137, column: 54, scope: !921)
!1073 = !DILocation(line: 137, column: 52, scope: !921)
!1074 = !DILocation(line: 137, column: 2, scope: !921)
!1075 = !DILocation(line: 137, column: 7, scope: !921)
!1076 = !DILocation(line: 138, column: 12, scope: !921)
!1077 = !DILocation(line: 138, column: 17, scope: !921)
!1078 = !DILocation(line: 138, column: 22, scope: !921)
!1079 = !DILocation(line: 138, column: 27, scope: !921)
!1080 = !DILocation(line: 138, column: 32, scope: !921)
!1081 = !DILocation(line: 138, column: 37, scope: !921)
!1082 = !DILocation(line: 138, column: 42, scope: !921)
!1083 = !DILocation(line: 138, column: 59, scope: !921)
!1084 = !DILocation(line: 138, column: 64, scope: !921)
!1085 = !DILocation(line: 138, column: 69, scope: !921)
!1086 = !DILocation(line: 138, column: 74, scope: !921)
!1087 = !DILocation(line: 138, column: 79, scope: !921)
!1088 = !DILocation(line: 138, column: 84, scope: !921)
!1089 = !DILocation(line: 138, column: 49, scope: !921)
!1090 = !DILocation(line: 138, column: 47, scope: !921)
!1091 = !DILocation(line: 138, column: 2, scope: !921)
!1092 = !DILocation(line: 138, column: 7, scope: !921)
!1093 = !DILocation(line: 139, column: 12, scope: !921)
!1094 = !DILocation(line: 139, column: 17, scope: !921)
!1095 = !DILocation(line: 139, column: 22, scope: !921)
!1096 = !DILocation(line: 139, column: 27, scope: !921)
!1097 = !DILocation(line: 139, column: 32, scope: !921)
!1098 = !DILocation(line: 139, column: 49, scope: !921)
!1099 = !DILocation(line: 139, column: 54, scope: !921)
!1100 = !DILocation(line: 139, column: 59, scope: !921)
!1101 = !DILocation(line: 139, column: 64, scope: !921)
!1102 = !DILocation(line: 139, column: 39, scope: !921)
!1103 = !DILocation(line: 139, column: 37, scope: !921)
!1104 = !DILocation(line: 139, column: 2, scope: !921)
!1105 = !DILocation(line: 139, column: 7, scope: !921)
!1106 = !DILocation(line: 140, column: 1, scope: !921)
!1107 = distinct !DISubprogram(name: "rotr32", scope: !22, file: !22, line: 104, type: !1108, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !4)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!6, !6}
!1110 = !DILocalVariable(name: "x", arg: 1, scope: !1107, file: !22, line: 104, type: !6)
!1111 = !DILocation(line: 0, scope: !1107)
!1112 = !DILocation(line: 106, column: 12, scope: !1107)
!1113 = !DILocation(line: 106, column: 24, scope: !1107)
!1114 = !DILocation(line: 106, column: 19, scope: !1107)
!1115 = !DILocation(line: 106, column: 2, scope: !1107)
!1116 = distinct !DISubprogram(name: "bitslice_decrypt_wrapper", scope: !25, file: !25, line: 3, type: !1117, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !4)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !13, !382, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1120 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !1116, file: !25, line: 3, type: !13)
!1121 = !DILocation(line: 0, scope: !1116)
!1122 = !DILocalVariable(name: "skey", arg: 2, scope: !1116, file: !25, line: 3, type: !382)
!1123 = !DILocalVariable(name: "data", arg: 3, scope: !1116, file: !25, line: 3, type: !1119)
!1124 = !DILocation(line: 4, column: 12, scope: !1116)
!1125 = !DILocation(line: 4, column: 2, scope: !1116)
!1126 = !DILocation(line: 5, column: 12, scope: !1116)
!1127 = !DILocation(line: 5, column: 2, scope: !1116)
!1128 = !DILocation(line: 6, column: 12, scope: !1116)
!1129 = !DILocation(line: 6, column: 2, scope: !1116)
!1130 = !DILocation(line: 8, column: 12, scope: !1116)
!1131 = !DILocation(line: 8, column: 2, scope: !1116)
!1132 = !DILocation(line: 10, column: 43, scope: !1116)
!1133 = !DILocation(line: 10, column: 49, scope: !1116)
!1134 = !DILocation(line: 10, column: 2, scope: !1116)
!1135 = !DILocation(line: 11, column: 1, scope: !1116)
!1136 = distinct !DISubprogram(name: "bitslice_decrypt_wrapper_t", scope: !25, file: !25, line: 18, type: !1137, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !4)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null}
!1139 = !DILocation(line: 19, column: 24, scope: !1136)
!1140 = !DILocalVariable(name: "num_rounds", scope: !1136, file: !25, line: 19, type: !13)
!1141 = !DILocation(line: 0, scope: !1136)
!1142 = !DILocation(line: 20, column: 25, scope: !1136)
!1143 = !DILocalVariable(name: "skey", scope: !1136, file: !25, line: 20, type: !382)
!1144 = !DILocation(line: 21, column: 15, scope: !1136)
!1145 = !DILocalVariable(name: "data", scope: !1136, file: !25, line: 21, type: !1119)
!1146 = !DILocation(line: 22, column: 43, scope: !1136)
!1147 = !DILocation(line: 22, column: 49, scope: !1136)
!1148 = !DILocation(line: 22, column: 2, scope: !1136)
!1149 = !DILocation(line: 23, column: 1, scope: !1136)
