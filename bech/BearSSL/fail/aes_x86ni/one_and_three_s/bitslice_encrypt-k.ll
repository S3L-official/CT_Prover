; ModuleID = 'bitslice_encrypt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.br_union_u32 = type { i32 }
%struct.smack_value = type { i8* }

@Rcon = internal constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct_bitslice_Sbox(i32* noalias %0) #0 !dbg !38 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !42, metadata !DIExpression()), !dbg !43
  %2 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !44
  %3 = load i32, i32* %2, align 4, !dbg !44
  call void @llvm.dbg.value(metadata i32 %3, metadata !45, metadata !DIExpression()), !dbg !43
  %4 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !46
  %5 = load i32, i32* %4, align 4, !dbg !46
  call void @llvm.dbg.value(metadata i32 %5, metadata !47, metadata !DIExpression()), !dbg !43
  %6 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !48
  %7 = load i32, i32* %6, align 4, !dbg !48
  call void @llvm.dbg.value(metadata i32 %7, metadata !49, metadata !DIExpression()), !dbg !43
  %8 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !50
  %9 = load i32, i32* %8, align 4, !dbg !50
  call void @llvm.dbg.value(metadata i32 %9, metadata !51, metadata !DIExpression()), !dbg !43
  %10 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !52
  %11 = load i32, i32* %10, align 4, !dbg !52
  call void @llvm.dbg.value(metadata i32 %11, metadata !53, metadata !DIExpression()), !dbg !43
  %12 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !54
  %13 = load i32, i32* %12, align 4, !dbg !54
  call void @llvm.dbg.value(metadata i32 %13, metadata !55, metadata !DIExpression()), !dbg !43
  %14 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !56
  %15 = load i32, i32* %14, align 4, !dbg !56
  call void @llvm.dbg.value(metadata i32 %15, metadata !57, metadata !DIExpression()), !dbg !43
  %16 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !58
  %17 = load i32, i32* %16, align 4, !dbg !58
  call void @llvm.dbg.value(metadata i32 %17, metadata !59, metadata !DIExpression()), !dbg !43
  %18 = xor i32 %9, %13, !dbg !60
  call void @llvm.dbg.value(metadata i32 %18, metadata !61, metadata !DIExpression()), !dbg !43
  %19 = xor i32 %3, %15, !dbg !62
  call void @llvm.dbg.value(metadata i32 %19, metadata !63, metadata !DIExpression()), !dbg !43
  %20 = xor i32 %3, %9, !dbg !64
  call void @llvm.dbg.value(metadata i32 %20, metadata !65, metadata !DIExpression()), !dbg !43
  %21 = xor i32 %3, %13, !dbg !66
  call void @llvm.dbg.value(metadata i32 %21, metadata !67, metadata !DIExpression()), !dbg !43
  %22 = xor i32 %5, %7, !dbg !68
  call void @llvm.dbg.value(metadata i32 %22, metadata !69, metadata !DIExpression()), !dbg !43
  %23 = xor i32 %22, %17, !dbg !70
  call void @llvm.dbg.value(metadata i32 %23, metadata !71, metadata !DIExpression()), !dbg !43
  %24 = xor i32 %23, %9, !dbg !72
  call void @llvm.dbg.value(metadata i32 %24, metadata !73, metadata !DIExpression()), !dbg !43
  %25 = xor i32 %19, %18, !dbg !74
  call void @llvm.dbg.value(metadata i32 %25, metadata !75, metadata !DIExpression()), !dbg !43
  %26 = xor i32 %23, %3, !dbg !76
  call void @llvm.dbg.value(metadata i32 %26, metadata !77, metadata !DIExpression()), !dbg !43
  %27 = xor i32 %23, %15, !dbg !78
  call void @llvm.dbg.value(metadata i32 %27, metadata !79, metadata !DIExpression()), !dbg !43
  %28 = xor i32 %27, %21, !dbg !80
  call void @llvm.dbg.value(metadata i32 %28, metadata !81, metadata !DIExpression()), !dbg !43
  %29 = xor i32 %11, %25, !dbg !82
  call void @llvm.dbg.value(metadata i32 %29, metadata !83, metadata !DIExpression()), !dbg !43
  %30 = xor i32 %29, %13, !dbg !84
  call void @llvm.dbg.value(metadata i32 %30, metadata !85, metadata !DIExpression()), !dbg !43
  %31 = xor i32 %29, %5, !dbg !86
  call void @llvm.dbg.value(metadata i32 %31, metadata !87, metadata !DIExpression()), !dbg !43
  %32 = xor i32 %30, %17, !dbg !88
  call void @llvm.dbg.value(metadata i32 %32, metadata !89, metadata !DIExpression()), !dbg !43
  %33 = xor i32 %30, %22, !dbg !90
  call void @llvm.dbg.value(metadata i32 %33, metadata !91, metadata !DIExpression()), !dbg !43
  %34 = xor i32 %31, %20, !dbg !92
  call void @llvm.dbg.value(metadata i32 %34, metadata !93, metadata !DIExpression()), !dbg !43
  %35 = xor i32 %17, %34, !dbg !94
  call void @llvm.dbg.value(metadata i32 %35, metadata !95, metadata !DIExpression()), !dbg !43
  %36 = xor i32 %33, %34, !dbg !96
  call void @llvm.dbg.value(metadata i32 %36, metadata !97, metadata !DIExpression()), !dbg !43
  %37 = xor i32 %33, %21, !dbg !98
  call void @llvm.dbg.value(metadata i32 %37, metadata !99, metadata !DIExpression()), !dbg !43
  %38 = xor i32 %22, %34, !dbg !100
  call void @llvm.dbg.value(metadata i32 %38, metadata !101, metadata !DIExpression()), !dbg !43
  %39 = xor i32 %19, %38, !dbg !102
  call void @llvm.dbg.value(metadata i32 %39, metadata !103, metadata !DIExpression()), !dbg !43
  %40 = xor i32 %3, %38, !dbg !104
  call void @llvm.dbg.value(metadata i32 %40, metadata !105, metadata !DIExpression()), !dbg !43
  %41 = and i32 %25, %30, !dbg !106
  call void @llvm.dbg.value(metadata i32 %41, metadata !107, metadata !DIExpression()), !dbg !43
  %42 = and i32 %28, %32, !dbg !108
  call void @llvm.dbg.value(metadata i32 %42, metadata !109, metadata !DIExpression()), !dbg !43
  %43 = xor i32 %42, %41, !dbg !110
  call void @llvm.dbg.value(metadata i32 %43, metadata !111, metadata !DIExpression()), !dbg !43
  %44 = and i32 %24, %17, !dbg !112
  call void @llvm.dbg.value(metadata i32 %44, metadata !113, metadata !DIExpression()), !dbg !43
  %45 = xor i32 %44, %41, !dbg !114
  call void @llvm.dbg.value(metadata i32 %45, metadata !115, metadata !DIExpression()), !dbg !43
  %46 = and i32 %19, %38, !dbg !116
  call void @llvm.dbg.value(metadata i32 %46, metadata !117, metadata !DIExpression()), !dbg !43
  %47 = and i32 %27, %23, !dbg !118
  call void @llvm.dbg.value(metadata i32 %47, metadata !119, metadata !DIExpression()), !dbg !43
  %48 = xor i32 %47, %46, !dbg !120
  call void @llvm.dbg.value(metadata i32 %48, metadata !121, metadata !DIExpression()), !dbg !43
  %49 = and i32 %26, %35, !dbg !122
  call void @llvm.dbg.value(metadata i32 %49, metadata !123, metadata !DIExpression()), !dbg !43
  %50 = xor i32 %49, %46, !dbg !124
  call void @llvm.dbg.value(metadata i32 %50, metadata !125, metadata !DIExpression()), !dbg !43
  %51 = and i32 %20, %34, !dbg !126
  call void @llvm.dbg.value(metadata i32 %51, metadata !127, metadata !DIExpression()), !dbg !43
  %52 = and i32 %18, %36, !dbg !128
  call void @llvm.dbg.value(metadata i32 %52, metadata !129, metadata !DIExpression()), !dbg !43
  %53 = xor i32 %52, %51, !dbg !130
  call void @llvm.dbg.value(metadata i32 %53, metadata !131, metadata !DIExpression()), !dbg !43
  %54 = and i32 %21, %33, !dbg !132
  call void @llvm.dbg.value(metadata i32 %54, metadata !133, metadata !DIExpression()), !dbg !43
  %55 = xor i32 %54, %51, !dbg !134
  call void @llvm.dbg.value(metadata i32 %55, metadata !135, metadata !DIExpression()), !dbg !43
  %56 = xor i32 %43, %53, !dbg !136
  call void @llvm.dbg.value(metadata i32 %56, metadata !137, metadata !DIExpression()), !dbg !43
  %57 = xor i32 %45, %55, !dbg !138
  call void @llvm.dbg.value(metadata i32 %57, metadata !139, metadata !DIExpression()), !dbg !43
  %58 = xor i32 %48, %53, !dbg !140
  call void @llvm.dbg.value(metadata i32 %58, metadata !141, metadata !DIExpression()), !dbg !43
  %59 = xor i32 %50, %55, !dbg !142
  call void @llvm.dbg.value(metadata i32 %59, metadata !143, metadata !DIExpression()), !dbg !43
  %60 = xor i32 %56, %31, !dbg !144
  call void @llvm.dbg.value(metadata i32 %60, metadata !145, metadata !DIExpression()), !dbg !43
  %61 = xor i32 %57, %37, !dbg !146
  call void @llvm.dbg.value(metadata i32 %61, metadata !147, metadata !DIExpression()), !dbg !43
  %62 = xor i32 %58, %39, !dbg !148
  call void @llvm.dbg.value(metadata i32 %62, metadata !149, metadata !DIExpression()), !dbg !43
  %63 = xor i32 %59, %40, !dbg !150
  call void @llvm.dbg.value(metadata i32 %63, metadata !151, metadata !DIExpression()), !dbg !43
  %64 = xor i32 %60, %61, !dbg !152
  call void @llvm.dbg.value(metadata i32 %64, metadata !153, metadata !DIExpression()), !dbg !43
  %65 = and i32 %60, %62, !dbg !154
  call void @llvm.dbg.value(metadata i32 %65, metadata !155, metadata !DIExpression()), !dbg !43
  %66 = xor i32 %63, %65, !dbg !156
  call void @llvm.dbg.value(metadata i32 %66, metadata !157, metadata !DIExpression()), !dbg !43
  %67 = and i32 %64, %66, !dbg !158
  call void @llvm.dbg.value(metadata i32 %67, metadata !159, metadata !DIExpression()), !dbg !43
  %68 = xor i32 %67, %61, !dbg !160
  call void @llvm.dbg.value(metadata i32 %68, metadata !161, metadata !DIExpression()), !dbg !43
  %69 = xor i32 %62, %63, !dbg !162
  call void @llvm.dbg.value(metadata i32 %69, metadata !163, metadata !DIExpression()), !dbg !43
  %70 = xor i32 %61, %65, !dbg !164
  call void @llvm.dbg.value(metadata i32 %70, metadata !165, metadata !DIExpression()), !dbg !43
  %71 = and i32 %70, %69, !dbg !166
  call void @llvm.dbg.value(metadata i32 %71, metadata !167, metadata !DIExpression()), !dbg !43
  %72 = xor i32 %71, %63, !dbg !168
  call void @llvm.dbg.value(metadata i32 %72, metadata !169, metadata !DIExpression()), !dbg !43
  %73 = xor i32 %62, %72, !dbg !170
  call void @llvm.dbg.value(metadata i32 %73, metadata !171, metadata !DIExpression()), !dbg !43
  %74 = xor i32 %66, %72, !dbg !172
  call void @llvm.dbg.value(metadata i32 %74, metadata !173, metadata !DIExpression()), !dbg !43
  %75 = and i32 %63, %74, !dbg !174
  call void @llvm.dbg.value(metadata i32 %75, metadata !175, metadata !DIExpression()), !dbg !43
  %76 = xor i32 %75, %73, !dbg !176
  call void @llvm.dbg.value(metadata i32 %76, metadata !177, metadata !DIExpression()), !dbg !43
  %77 = xor i32 %66, %75, !dbg !178
  call void @llvm.dbg.value(metadata i32 %77, metadata !179, metadata !DIExpression()), !dbg !43
  %78 = and i32 %68, %77, !dbg !180
  call void @llvm.dbg.value(metadata i32 %78, metadata !181, metadata !DIExpression()), !dbg !43
  %79 = xor i32 %64, %78, !dbg !182
  call void @llvm.dbg.value(metadata i32 %79, metadata !183, metadata !DIExpression()), !dbg !43
  %80 = xor i32 %79, %76, !dbg !184
  call void @llvm.dbg.value(metadata i32 %80, metadata !185, metadata !DIExpression()), !dbg !43
  %81 = xor i32 %68, %72, !dbg !186
  call void @llvm.dbg.value(metadata i32 %81, metadata !187, metadata !DIExpression()), !dbg !43
  %82 = xor i32 %68, %79, !dbg !188
  call void @llvm.dbg.value(metadata i32 %82, metadata !189, metadata !DIExpression()), !dbg !43
  %83 = xor i32 %72, %76, !dbg !190
  call void @llvm.dbg.value(metadata i32 %83, metadata !191, metadata !DIExpression()), !dbg !43
  %84 = xor i32 %81, %80, !dbg !192
  call void @llvm.dbg.value(metadata i32 %84, metadata !193, metadata !DIExpression()), !dbg !43
  %85 = and i32 %83, %30, !dbg !194
  call void @llvm.dbg.value(metadata i32 %85, metadata !195, metadata !DIExpression()), !dbg !43
  %86 = and i32 %76, %32, !dbg !196
  call void @llvm.dbg.value(metadata i32 %86, metadata !197, metadata !DIExpression()), !dbg !43
  %87 = and i32 %72, %17, !dbg !198
  call void @llvm.dbg.value(metadata i32 %87, metadata !199, metadata !DIExpression()), !dbg !43
  %88 = and i32 %82, %38, !dbg !200
  call void @llvm.dbg.value(metadata i32 %88, metadata !201, metadata !DIExpression()), !dbg !43
  %89 = and i32 %79, %23, !dbg !202
  call void @llvm.dbg.value(metadata i32 %89, metadata !203, metadata !DIExpression()), !dbg !43
  %90 = and i32 %68, %35, !dbg !204
  call void @llvm.dbg.value(metadata i32 %90, metadata !205, metadata !DIExpression()), !dbg !43
  %91 = and i32 %81, %34, !dbg !206
  call void @llvm.dbg.value(metadata i32 %91, metadata !207, metadata !DIExpression()), !dbg !43
  %92 = and i32 %84, %36, !dbg !208
  call void @llvm.dbg.value(metadata i32 %92, metadata !209, metadata !DIExpression()), !dbg !43
  %93 = and i32 %80, %33, !dbg !210
  call void @llvm.dbg.value(metadata i32 %93, metadata !211, metadata !DIExpression()), !dbg !43
  %94 = and i32 %83, %25, !dbg !212
  call void @llvm.dbg.value(metadata i32 %94, metadata !213, metadata !DIExpression()), !dbg !43
  %95 = and i32 %76, %28, !dbg !214
  call void @llvm.dbg.value(metadata i32 %95, metadata !215, metadata !DIExpression()), !dbg !43
  %96 = and i32 %72, %24, !dbg !216
  call void @llvm.dbg.value(metadata i32 %96, metadata !217, metadata !DIExpression()), !dbg !43
  %97 = and i32 %82, %19, !dbg !218
  call void @llvm.dbg.value(metadata i32 %97, metadata !219, metadata !DIExpression()), !dbg !43
  %98 = and i32 %79, %27, !dbg !220
  call void @llvm.dbg.value(metadata i32 %98, metadata !221, metadata !DIExpression()), !dbg !43
  %99 = and i32 %68, %26, !dbg !222
  call void @llvm.dbg.value(metadata i32 %99, metadata !223, metadata !DIExpression()), !dbg !43
  %100 = and i32 %81, %20, !dbg !224
  call void @llvm.dbg.value(metadata i32 %100, metadata !225, metadata !DIExpression()), !dbg !43
  %101 = and i32 %84, %18, !dbg !226
  call void @llvm.dbg.value(metadata i32 %101, metadata !227, metadata !DIExpression()), !dbg !43
  %102 = and i32 %80, %21, !dbg !228
  call void @llvm.dbg.value(metadata i32 %102, metadata !229, metadata !DIExpression()), !dbg !43
  %103 = xor i32 %100, %101, !dbg !230
  call void @llvm.dbg.value(metadata i32 %103, metadata !231, metadata !DIExpression()), !dbg !43
  %104 = xor i32 %95, %96, !dbg !232
  call void @llvm.dbg.value(metadata i32 %104, metadata !233, metadata !DIExpression()), !dbg !43
  %105 = xor i32 %90, %98, !dbg !234
  call void @llvm.dbg.value(metadata i32 %105, metadata !235, metadata !DIExpression()), !dbg !43
  %106 = xor i32 %94, %95, !dbg !236
  call void @llvm.dbg.value(metadata i32 %106, metadata !237, metadata !DIExpression()), !dbg !43
  %107 = xor i32 %87, %97, !dbg !238
  call void @llvm.dbg.value(metadata i32 %107, metadata !239, metadata !DIExpression()), !dbg !43
  %108 = xor i32 %87, %90, !dbg !240
  call void @llvm.dbg.value(metadata i32 %108, metadata !241, metadata !DIExpression()), !dbg !43
  %109 = xor i32 %92, %93, !dbg !242
  call void @llvm.dbg.value(metadata i32 %109, metadata !243, metadata !DIExpression()), !dbg !43
  %110 = xor i32 %85, %88, !dbg !244
  call void @llvm.dbg.value(metadata i32 %110, metadata !245, metadata !DIExpression()), !dbg !43
  %111 = xor i32 %91, %92, !dbg !246
  call void @llvm.dbg.value(metadata i32 %111, metadata !247, metadata !DIExpression()), !dbg !43
  %112 = xor i32 %101, %102, !dbg !248
  call void @llvm.dbg.value(metadata i32 %112, metadata !249, metadata !DIExpression()), !dbg !43
  %113 = xor i32 %97, %105, !dbg !250
  call void @llvm.dbg.value(metadata i32 %113, metadata !251, metadata !DIExpression()), !dbg !43
  %114 = xor i32 %107, %110, !dbg !252
  call void @llvm.dbg.value(metadata i32 %114, metadata !253, metadata !DIExpression()), !dbg !43
  %115 = xor i32 %89, %103, !dbg !254
  call void @llvm.dbg.value(metadata i32 %115, metadata !255, metadata !DIExpression()), !dbg !43
  %116 = xor i32 %88, %111, !dbg !256
  call void @llvm.dbg.value(metadata i32 %116, metadata !257, metadata !DIExpression()), !dbg !43
  %117 = xor i32 %103, %114, !dbg !258
  call void @llvm.dbg.value(metadata i32 %117, metadata !259, metadata !DIExpression()), !dbg !43
  %118 = xor i32 %99, %114, !dbg !260
  call void @llvm.dbg.value(metadata i32 %118, metadata !261, metadata !DIExpression()), !dbg !43
  %119 = xor i32 %109, %115, !dbg !262
  call void @llvm.dbg.value(metadata i32 %119, metadata !263, metadata !DIExpression()), !dbg !43
  %120 = xor i32 %106, %115, !dbg !264
  call void @llvm.dbg.value(metadata i32 %120, metadata !265, metadata !DIExpression()), !dbg !43
  %121 = xor i32 %89, %116, !dbg !266
  call void @llvm.dbg.value(metadata i32 %121, metadata !267, metadata !DIExpression()), !dbg !43
  %122 = xor i32 %118, %119, !dbg !268
  call void @llvm.dbg.value(metadata i32 %122, metadata !269, metadata !DIExpression()), !dbg !43
  %123 = xor i32 %86, %120, !dbg !270
  call void @llvm.dbg.value(metadata i32 %123, metadata !271, metadata !DIExpression()), !dbg !43
  %124 = xor i32 %116, %120, !dbg !272
  call void @llvm.dbg.value(metadata i32 %124, metadata !273, metadata !DIExpression()), !dbg !43
  %125 = xor i32 %119, -1, !dbg !274
  %126 = xor i32 %113, %125, !dbg !275
  call void @llvm.dbg.value(metadata i32 %126, metadata !276, metadata !DIExpression()), !dbg !43
  %127 = xor i32 %117, -1, !dbg !277
  %128 = xor i32 %105, %127, !dbg !278
  call void @llvm.dbg.value(metadata i32 %128, metadata !279, metadata !DIExpression()), !dbg !43
  %129 = xor i32 %121, %122, !dbg !280
  call void @llvm.dbg.value(metadata i32 %129, metadata !281, metadata !DIExpression()), !dbg !43
  %130 = xor i32 %110, %123, !dbg !282
  call void @llvm.dbg.value(metadata i32 %130, metadata !283, metadata !DIExpression()), !dbg !43
  %131 = xor i32 %108, %123, !dbg !284
  call void @llvm.dbg.value(metadata i32 %131, metadata !285, metadata !DIExpression()), !dbg !43
  %132 = xor i32 %104, %122, !dbg !286
  call void @llvm.dbg.value(metadata i32 %132, metadata !287, metadata !DIExpression()), !dbg !43
  %133 = xor i32 %130, -1, !dbg !288
  %134 = xor i32 %121, %133, !dbg !289
  call void @llvm.dbg.value(metadata i32 %134, metadata !290, metadata !DIExpression()), !dbg !43
  %135 = xor i32 %129, -1, !dbg !291
  %136 = xor i32 %112, %135, !dbg !292
  call void @llvm.dbg.value(metadata i32 %136, metadata !293, metadata !DIExpression()), !dbg !43
  %137 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !294
  store i32 %124, i32* %137, align 4, !dbg !295
  %138 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !296
  store i32 %134, i32* %138, align 4, !dbg !297
  %139 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !298
  store i32 %136, i32* %139, align 4, !dbg !299
  %140 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !300
  store i32 %130, i32* %140, align 4, !dbg !301
  %141 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !302
  store i32 %131, i32* %141, align 4, !dbg !303
  %142 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !304
  store i32 %132, i32* %142, align 4, !dbg !305
  %143 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !306
  store i32 %126, i32* %143, align 4, !dbg !307
  %144 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !308
  store i32 %128, i32* %144, align 4, !dbg !309
  ret void, !dbg !310
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct_ortho(i32* noalias %0) #0 !dbg !311 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !312, metadata !DIExpression()), !dbg !313
  br label %2, !dbg !314

2:                                                ; preds = %1
  %3 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !315
  %4 = load i32, i32* %3, align 4, !dbg !315
  call void @llvm.dbg.value(metadata i32 %4, metadata !317, metadata !DIExpression()), !dbg !318
  %5 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !315
  %6 = load i32, i32* %5, align 4, !dbg !315
  call void @llvm.dbg.value(metadata i32 %6, metadata !319, metadata !DIExpression()), !dbg !318
  %7 = and i32 %4, 1431655765, !dbg !315
  %8 = and i32 %6, 1431655765, !dbg !315
  %9 = shl i32 %8, 1, !dbg !315
  %10 = or i32 %7, %9, !dbg !315
  %11 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !315
  store i32 %10, i32* %11, align 4, !dbg !315
  %12 = and i32 %4, -1431655766, !dbg !315
  %13 = lshr i32 %12, 1, !dbg !315
  %14 = and i32 %6, -1431655766, !dbg !315
  %15 = or i32 %13, %14, !dbg !315
  %16 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !315
  store i32 %15, i32* %16, align 4, !dbg !315
  br label %17, !dbg !315

17:                                               ; preds = %2
  br label %18, !dbg !320

18:                                               ; preds = %17
  %19 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !321
  %20 = load i32, i32* %19, align 4, !dbg !321
  call void @llvm.dbg.value(metadata i32 %20, metadata !323, metadata !DIExpression()), !dbg !324
  %21 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !321
  %22 = load i32, i32* %21, align 4, !dbg !321
  call void @llvm.dbg.value(metadata i32 %22, metadata !325, metadata !DIExpression()), !dbg !324
  %23 = and i32 %20, 1431655765, !dbg !321
  %24 = and i32 %22, 1431655765, !dbg !321
  %25 = shl i32 %24, 1, !dbg !321
  %26 = or i32 %23, %25, !dbg !321
  %27 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !321
  store i32 %26, i32* %27, align 4, !dbg !321
  %28 = and i32 %20, -1431655766, !dbg !321
  %29 = lshr i32 %28, 1, !dbg !321
  %30 = and i32 %22, -1431655766, !dbg !321
  %31 = or i32 %29, %30, !dbg !321
  %32 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !321
  store i32 %31, i32* %32, align 4, !dbg !321
  br label %33, !dbg !321

33:                                               ; preds = %18
  br label %34, !dbg !326

34:                                               ; preds = %33
  %35 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !327
  %36 = load i32, i32* %35, align 4, !dbg !327
  call void @llvm.dbg.value(metadata i32 %36, metadata !329, metadata !DIExpression()), !dbg !330
  %37 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !327
  %38 = load i32, i32* %37, align 4, !dbg !327
  call void @llvm.dbg.value(metadata i32 %38, metadata !331, metadata !DIExpression()), !dbg !330
  %39 = and i32 %36, 1431655765, !dbg !327
  %40 = and i32 %38, 1431655765, !dbg !327
  %41 = shl i32 %40, 1, !dbg !327
  %42 = or i32 %39, %41, !dbg !327
  %43 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !327
  store i32 %42, i32* %43, align 4, !dbg !327
  %44 = and i32 %36, -1431655766, !dbg !327
  %45 = lshr i32 %44, 1, !dbg !327
  %46 = and i32 %38, -1431655766, !dbg !327
  %47 = or i32 %45, %46, !dbg !327
  %48 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !327
  store i32 %47, i32* %48, align 4, !dbg !327
  br label %49, !dbg !327

49:                                               ; preds = %34
  br label %50, !dbg !332

50:                                               ; preds = %49
  %51 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !333
  %52 = load i32, i32* %51, align 4, !dbg !333
  call void @llvm.dbg.value(metadata i32 %52, metadata !335, metadata !DIExpression()), !dbg !336
  %53 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !333
  %54 = load i32, i32* %53, align 4, !dbg !333
  call void @llvm.dbg.value(metadata i32 %54, metadata !337, metadata !DIExpression()), !dbg !336
  %55 = and i32 %52, 1431655765, !dbg !333
  %56 = and i32 %54, 1431655765, !dbg !333
  %57 = shl i32 %56, 1, !dbg !333
  %58 = or i32 %55, %57, !dbg !333
  %59 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !333
  store i32 %58, i32* %59, align 4, !dbg !333
  %60 = and i32 %52, -1431655766, !dbg !333
  %61 = lshr i32 %60, 1, !dbg !333
  %62 = and i32 %54, -1431655766, !dbg !333
  %63 = or i32 %61, %62, !dbg !333
  %64 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !333
  store i32 %63, i32* %64, align 4, !dbg !333
  br label %65, !dbg !333

65:                                               ; preds = %50
  br label %66, !dbg !338

66:                                               ; preds = %65
  %67 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !339
  %68 = load i32, i32* %67, align 4, !dbg !339
  call void @llvm.dbg.value(metadata i32 %68, metadata !341, metadata !DIExpression()), !dbg !342
  %69 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !339
  %70 = load i32, i32* %69, align 4, !dbg !339
  call void @llvm.dbg.value(metadata i32 %70, metadata !343, metadata !DIExpression()), !dbg !342
  %71 = and i32 %68, 858993459, !dbg !339
  %72 = and i32 %70, 858993459, !dbg !339
  %73 = shl i32 %72, 2, !dbg !339
  %74 = or i32 %71, %73, !dbg !339
  %75 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !339
  store i32 %74, i32* %75, align 4, !dbg !339
  %76 = and i32 %68, -858993460, !dbg !339
  %77 = lshr i32 %76, 2, !dbg !339
  %78 = and i32 %70, -858993460, !dbg !339
  %79 = or i32 %77, %78, !dbg !339
  %80 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !339
  store i32 %79, i32* %80, align 4, !dbg !339
  br label %81, !dbg !339

81:                                               ; preds = %66
  br label %82, !dbg !344

82:                                               ; preds = %81
  %83 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !345
  %84 = load i32, i32* %83, align 4, !dbg !345
  call void @llvm.dbg.value(metadata i32 %84, metadata !347, metadata !DIExpression()), !dbg !348
  %85 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !345
  %86 = load i32, i32* %85, align 4, !dbg !345
  call void @llvm.dbg.value(metadata i32 %86, metadata !349, metadata !DIExpression()), !dbg !348
  %87 = and i32 %84, 858993459, !dbg !345
  %88 = and i32 %86, 858993459, !dbg !345
  %89 = shl i32 %88, 2, !dbg !345
  %90 = or i32 %87, %89, !dbg !345
  %91 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !345
  store i32 %90, i32* %91, align 4, !dbg !345
  %92 = and i32 %84, -858993460, !dbg !345
  %93 = lshr i32 %92, 2, !dbg !345
  %94 = and i32 %86, -858993460, !dbg !345
  %95 = or i32 %93, %94, !dbg !345
  %96 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !345
  store i32 %95, i32* %96, align 4, !dbg !345
  br label %97, !dbg !345

97:                                               ; preds = %82
  br label %98, !dbg !350

98:                                               ; preds = %97
  %99 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !351
  %100 = load i32, i32* %99, align 4, !dbg !351
  call void @llvm.dbg.value(metadata i32 %100, metadata !353, metadata !DIExpression()), !dbg !354
  %101 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !351
  %102 = load i32, i32* %101, align 4, !dbg !351
  call void @llvm.dbg.value(metadata i32 %102, metadata !355, metadata !DIExpression()), !dbg !354
  %103 = and i32 %100, 858993459, !dbg !351
  %104 = and i32 %102, 858993459, !dbg !351
  %105 = shl i32 %104, 2, !dbg !351
  %106 = or i32 %103, %105, !dbg !351
  %107 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !351
  store i32 %106, i32* %107, align 4, !dbg !351
  %108 = and i32 %100, -858993460, !dbg !351
  %109 = lshr i32 %108, 2, !dbg !351
  %110 = and i32 %102, -858993460, !dbg !351
  %111 = or i32 %109, %110, !dbg !351
  %112 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !351
  store i32 %111, i32* %112, align 4, !dbg !351
  br label %113, !dbg !351

113:                                              ; preds = %98
  br label %114, !dbg !356

114:                                              ; preds = %113
  %115 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !357
  %116 = load i32, i32* %115, align 4, !dbg !357
  call void @llvm.dbg.value(metadata i32 %116, metadata !359, metadata !DIExpression()), !dbg !360
  %117 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !357
  %118 = load i32, i32* %117, align 4, !dbg !357
  call void @llvm.dbg.value(metadata i32 %118, metadata !361, metadata !DIExpression()), !dbg !360
  %119 = and i32 %116, 858993459, !dbg !357
  %120 = and i32 %118, 858993459, !dbg !357
  %121 = shl i32 %120, 2, !dbg !357
  %122 = or i32 %119, %121, !dbg !357
  %123 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !357
  store i32 %122, i32* %123, align 4, !dbg !357
  %124 = and i32 %116, -858993460, !dbg !357
  %125 = lshr i32 %124, 2, !dbg !357
  %126 = and i32 %118, -858993460, !dbg !357
  %127 = or i32 %125, %126, !dbg !357
  %128 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !357
  store i32 %127, i32* %128, align 4, !dbg !357
  br label %129, !dbg !357

129:                                              ; preds = %114
  br label %130, !dbg !362

130:                                              ; preds = %129
  %131 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !363
  %132 = load i32, i32* %131, align 4, !dbg !363
  call void @llvm.dbg.value(metadata i32 %132, metadata !365, metadata !DIExpression()), !dbg !366
  %133 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !363
  %134 = load i32, i32* %133, align 4, !dbg !363
  call void @llvm.dbg.value(metadata i32 %134, metadata !367, metadata !DIExpression()), !dbg !366
  %135 = and i32 %132, 252645135, !dbg !363
  %136 = and i32 %134, 252645135, !dbg !363
  %137 = shl i32 %136, 4, !dbg !363
  %138 = or i32 %135, %137, !dbg !363
  %139 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !363
  store i32 %138, i32* %139, align 4, !dbg !363
  %140 = and i32 %132, -252645136, !dbg !363
  %141 = lshr i32 %140, 4, !dbg !363
  %142 = and i32 %134, -252645136, !dbg !363
  %143 = or i32 %141, %142, !dbg !363
  %144 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !363
  store i32 %143, i32* %144, align 4, !dbg !363
  br label %145, !dbg !363

145:                                              ; preds = %130
  br label %146, !dbg !368

146:                                              ; preds = %145
  %147 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !369
  %148 = load i32, i32* %147, align 4, !dbg !369
  call void @llvm.dbg.value(metadata i32 %148, metadata !371, metadata !DIExpression()), !dbg !372
  %149 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !369
  %150 = load i32, i32* %149, align 4, !dbg !369
  call void @llvm.dbg.value(metadata i32 %150, metadata !373, metadata !DIExpression()), !dbg !372
  %151 = and i32 %148, 252645135, !dbg !369
  %152 = and i32 %150, 252645135, !dbg !369
  %153 = shl i32 %152, 4, !dbg !369
  %154 = or i32 %151, %153, !dbg !369
  %155 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !369
  store i32 %154, i32* %155, align 4, !dbg !369
  %156 = and i32 %148, -252645136, !dbg !369
  %157 = lshr i32 %156, 4, !dbg !369
  %158 = and i32 %150, -252645136, !dbg !369
  %159 = or i32 %157, %158, !dbg !369
  %160 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !369
  store i32 %159, i32* %160, align 4, !dbg !369
  br label %161, !dbg !369

161:                                              ; preds = %146
  br label %162, !dbg !374

162:                                              ; preds = %161
  %163 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !375
  %164 = load i32, i32* %163, align 4, !dbg !375
  call void @llvm.dbg.value(metadata i32 %164, metadata !377, metadata !DIExpression()), !dbg !378
  %165 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !375
  %166 = load i32, i32* %165, align 4, !dbg !375
  call void @llvm.dbg.value(metadata i32 %166, metadata !379, metadata !DIExpression()), !dbg !378
  %167 = and i32 %164, 252645135, !dbg !375
  %168 = and i32 %166, 252645135, !dbg !375
  %169 = shl i32 %168, 4, !dbg !375
  %170 = or i32 %167, %169, !dbg !375
  %171 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !375
  store i32 %170, i32* %171, align 4, !dbg !375
  %172 = and i32 %164, -252645136, !dbg !375
  %173 = lshr i32 %172, 4, !dbg !375
  %174 = and i32 %166, -252645136, !dbg !375
  %175 = or i32 %173, %174, !dbg !375
  %176 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !375
  store i32 %175, i32* %176, align 4, !dbg !375
  br label %177, !dbg !375

177:                                              ; preds = %162
  br label %178, !dbg !380

178:                                              ; preds = %177
  %179 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !381
  %180 = load i32, i32* %179, align 4, !dbg !381
  call void @llvm.dbg.value(metadata i32 %180, metadata !383, metadata !DIExpression()), !dbg !384
  %181 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !381
  %182 = load i32, i32* %181, align 4, !dbg !381
  call void @llvm.dbg.value(metadata i32 %182, metadata !385, metadata !DIExpression()), !dbg !384
  %183 = and i32 %180, 252645135, !dbg !381
  %184 = and i32 %182, 252645135, !dbg !381
  %185 = shl i32 %184, 4, !dbg !381
  %186 = or i32 %183, %185, !dbg !381
  %187 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !381
  store i32 %186, i32* %187, align 4, !dbg !381
  %188 = and i32 %180, -252645136, !dbg !381
  %189 = lshr i32 %188, 4, !dbg !381
  %190 = and i32 %182, -252645136, !dbg !381
  %191 = or i32 %189, %190, !dbg !381
  %192 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !381
  store i32 %191, i32* %192, align 4, !dbg !381
  br label %193, !dbg !381

193:                                              ; preds = %178
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_ct_keysched(i32* noalias %0, i8* noalias %1, i64 %2) #0 !dbg !387 {
  %4 = alloca [120 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i8* %1, metadata !397, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 %2, metadata !398, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata [120 x i32]* %4, metadata !399, metadata !DIExpression()), !dbg !403
  switch i64 %2, label %8 [
    i64 16, label %5
    i64 24, label %6
    i64 32, label %7
  ], !dbg !404

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !405, metadata !DIExpression()), !dbg !396
  br label %9, !dbg !406

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 12, metadata !405, metadata !DIExpression()), !dbg !396
  br label %9, !dbg !408

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 14, metadata !405, metadata !DIExpression()), !dbg !396
  br label %9, !dbg !409

8:                                                ; preds = %3
  br label %106, !dbg !410

9:                                                ; preds = %7, %6, %5
  %.07 = phi i32 [ 14, %7 ], [ 12, %6 ], [ 10, %5 ], !dbg !411
  call void @llvm.dbg.value(metadata i32 %.07, metadata !405, metadata !DIExpression()), !dbg !396
  %10 = lshr i64 %2, 2, !dbg !412
  %11 = trunc i64 %10 to i32, !dbg !413
  call void @llvm.dbg.value(metadata i32 %11, metadata !414, metadata !DIExpression()), !dbg !396
  %12 = add i32 %.07, 1, !dbg !415
  %13 = shl i32 %12, 2, !dbg !416
  call void @llvm.dbg.value(metadata i32 %13, metadata !417, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 0, metadata !418, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 0, metadata !419, metadata !DIExpression()), !dbg !396
  br label %14, !dbg !420

14:                                               ; preds = %29, %9
  %.08 = phi i32 [ 0, %9 ], [ %30, %29 ], !dbg !422
  %.01 = phi i32 [ 0, %9 ], [ %20, %29 ], !dbg !396
  call void @llvm.dbg.value(metadata i32 %.01, metadata !418, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 %.08, metadata !419, metadata !DIExpression()), !dbg !396
  %15 = icmp slt i32 %.08, %11, !dbg !423
  br i1 %15, label %16, label %31, !dbg !425

16:                                               ; preds = %14
  %17 = shl i32 %.08, 2, !dbg !426
  %18 = sext i32 %17 to i64, !dbg !428
  %19 = getelementptr inbounds i8, i8* %1, i64 %18, !dbg !428
  %20 = call i32 @br_dec32le(i8* %19), !dbg !429
  call void @llvm.dbg.value(metadata i32 %20, metadata !418, metadata !DIExpression()), !dbg !396
  %21 = shl i32 %.08, 1, !dbg !430
  %22 = add nsw i32 %21, 0, !dbg !431
  %23 = sext i32 %22 to i64, !dbg !432
  %24 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %23, !dbg !432
  store i32 %20, i32* %24, align 4, !dbg !433
  %25 = shl i32 %.08, 1, !dbg !434
  %26 = add nsw i32 %25, 1, !dbg !435
  %27 = sext i32 %26 to i64, !dbg !436
  %28 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %27, !dbg !436
  store i32 %20, i32* %28, align 4, !dbg !437
  br label %29, !dbg !438

29:                                               ; preds = %16
  %30 = add nsw i32 %.08, 1, !dbg !439
  call void @llvm.dbg.value(metadata i32 %30, metadata !419, metadata !DIExpression()), !dbg !396
  br label %14, !dbg !440, !llvm.loop !441

31:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 %11, metadata !419, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 0, metadata !444, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 0, metadata !445, metadata !DIExpression()), !dbg !396
  br label %32, !dbg !446

32:                                               ; preds = %73, %31
  %.19 = phi i32 [ %11, %31 ], [ %74, %73 ], !dbg !448
  %.04 = phi i32 [ 0, %31 ], [ %.15, %73 ], !dbg !448
  %.02 = phi i32 [ 0, %31 ], [ %.13, %73 ], !dbg !448
  %.1 = phi i32 [ %.01, %31 ], [ %59, %73 ], !dbg !396
  call void @llvm.dbg.value(metadata i32 %.1, metadata !418, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 %.02, metadata !445, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 %.04, metadata !444, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 %.19, metadata !419, metadata !DIExpression()), !dbg !396
  %33 = icmp slt i32 %.19, %13, !dbg !449
  br i1 %33, label %34, label %75, !dbg !451

34:                                               ; preds = %32
  %35 = icmp eq i32 %.04, 0, !dbg !452
  br i1 %35, label %36, label %46, !dbg !455

36:                                               ; preds = %34
  %37 = shl i32 %.1, 24, !dbg !456
  %38 = lshr i32 %.1, 8, !dbg !458
  %39 = or i32 %37, %38, !dbg !459
  call void @llvm.dbg.value(metadata i32 %39, metadata !418, metadata !DIExpression()), !dbg !396
  %40 = call i32 @sub_word(i32 %39), !dbg !460
  %41 = sext i32 %.02 to i64, !dbg !461
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* @Rcon, i64 0, i64 %41, !dbg !461
  %43 = load i8, i8* %42, align 1, !dbg !461
  %44 = zext i8 %43 to i32, !dbg !461
  %45 = xor i32 %40, %44, !dbg !462
  call void @llvm.dbg.value(metadata i32 %45, metadata !418, metadata !DIExpression()), !dbg !396
  br label %53, !dbg !463

46:                                               ; preds = %34
  %47 = icmp sgt i32 %11, 6, !dbg !464
  br i1 %47, label %48, label %52, !dbg !466

48:                                               ; preds = %46
  %49 = icmp eq i32 %.04, 4, !dbg !467
  br i1 %49, label %50, label %52, !dbg !468

50:                                               ; preds = %48
  %51 = call i32 @sub_word(i32 %.1), !dbg !469
  call void @llvm.dbg.value(metadata i32 %51, metadata !418, metadata !DIExpression()), !dbg !396
  br label %52, !dbg !471

52:                                               ; preds = %50, %48, %46
  %.2 = phi i32 [ %51, %50 ], [ %.1, %48 ], [ %.1, %46 ], !dbg !396
  call void @llvm.dbg.value(metadata i32 %.2, metadata !418, metadata !DIExpression()), !dbg !396
  br label %53

53:                                               ; preds = %52, %36
  %.3 = phi i32 [ %45, %36 ], [ %.2, %52 ], !dbg !472
  call void @llvm.dbg.value(metadata i32 %.3, metadata !418, metadata !DIExpression()), !dbg !396
  %54 = sub nsw i32 %.19, %11, !dbg !473
  %55 = shl i32 %54, 1, !dbg !474
  %56 = sext i32 %55 to i64, !dbg !475
  %57 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %56, !dbg !475
  %58 = load i32, i32* %57, align 4, !dbg !475
  %59 = xor i32 %.3, %58, !dbg !476
  call void @llvm.dbg.value(metadata i32 %59, metadata !418, metadata !DIExpression()), !dbg !396
  %60 = shl i32 %.19, 1, !dbg !477
  %61 = add nsw i32 %60, 0, !dbg !478
  %62 = sext i32 %61 to i64, !dbg !479
  %63 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %62, !dbg !479
  store i32 %59, i32* %63, align 4, !dbg !480
  %64 = shl i32 %.19, 1, !dbg !481
  %65 = add nsw i32 %64, 1, !dbg !482
  %66 = sext i32 %65 to i64, !dbg !483
  %67 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %66, !dbg !483
  store i32 %59, i32* %67, align 4, !dbg !484
  %68 = add nsw i32 %.04, 1, !dbg !485
  call void @llvm.dbg.value(metadata i32 %68, metadata !444, metadata !DIExpression()), !dbg !396
  %69 = icmp eq i32 %68, %11, !dbg !487
  br i1 %69, label %70, label %72, !dbg !488

70:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !444, metadata !DIExpression()), !dbg !396
  %71 = add nsw i32 %.02, 1, !dbg !489
  call void @llvm.dbg.value(metadata i32 %71, metadata !445, metadata !DIExpression()), !dbg !396
  br label %72, !dbg !491

72:                                               ; preds = %70, %53
  %.15 = phi i32 [ 0, %70 ], [ %68, %53 ], !dbg !492
  %.13 = phi i32 [ %71, %70 ], [ %.02, %53 ], !dbg !448
  call void @llvm.dbg.value(metadata i32 %.13, metadata !445, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 %.15, metadata !444, metadata !DIExpression()), !dbg !396
  br label %73, !dbg !493

73:                                               ; preds = %72
  %74 = add nsw i32 %.19, 1, !dbg !494
  call void @llvm.dbg.value(metadata i32 %74, metadata !419, metadata !DIExpression()), !dbg !396
  br label %32, !dbg !495, !llvm.loop !496

75:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 0, metadata !419, metadata !DIExpression()), !dbg !396
  br label %76, !dbg !498

76:                                               ; preds = %83, %75
  %.210 = phi i32 [ 0, %75 ], [ %84, %83 ], !dbg !500
  call void @llvm.dbg.value(metadata i32 %.210, metadata !419, metadata !DIExpression()), !dbg !396
  %77 = icmp slt i32 %.210, %13, !dbg !501
  br i1 %77, label %78, label %85, !dbg !503

78:                                               ; preds = %76
  %79 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 0, !dbg !504
  %80 = shl i32 %.210, 1, !dbg !506
  %81 = sext i32 %80 to i64, !dbg !507
  %82 = getelementptr inbounds i32, i32* %79, i64 %81, !dbg !507
  call void @br_aes_ct_ortho(i32* %82), !dbg !508
  br label %83, !dbg !509

83:                                               ; preds = %78
  %84 = add nsw i32 %.210, 4, !dbg !510
  call void @llvm.dbg.value(metadata i32 %84, metadata !419, metadata !DIExpression()), !dbg !396
  br label %76, !dbg !511, !llvm.loop !512

85:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i32 0, metadata !419, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 0, metadata !444, metadata !DIExpression()), !dbg !396
  br label %86, !dbg !514

86:                                               ; preds = %102, %85
  %.311 = phi i32 [ 0, %85 ], [ %103, %102 ], !dbg !516
  %.26 = phi i32 [ 0, %85 ], [ %104, %102 ], !dbg !516
  call void @llvm.dbg.value(metadata i32 %.26, metadata !444, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 %.311, metadata !419, metadata !DIExpression()), !dbg !396
  %87 = icmp slt i32 %.311, %13, !dbg !517
  br i1 %87, label %88, label %105, !dbg !519

88:                                               ; preds = %86
  %89 = add nsw i32 %.26, 0, !dbg !520
  %90 = sext i32 %89 to i64, !dbg !522
  %91 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %90, !dbg !522
  %92 = load i32, i32* %91, align 4, !dbg !522
  %93 = and i32 %92, 1431655765, !dbg !523
  %94 = add nsw i32 %.26, 1, !dbg !524
  %95 = sext i32 %94 to i64, !dbg !525
  %96 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %95, !dbg !525
  %97 = load i32, i32* %96, align 4, !dbg !525
  %98 = and i32 %97, -1431655766, !dbg !526
  %99 = or i32 %93, %98, !dbg !527
  %100 = sext i32 %.311 to i64, !dbg !528
  %101 = getelementptr inbounds i32, i32* %0, i64 %100, !dbg !528
  store i32 %99, i32* %101, align 4, !dbg !529
  br label %102, !dbg !530

102:                                              ; preds = %88
  %103 = add nsw i32 %.311, 1, !dbg !531
  call void @llvm.dbg.value(metadata i32 %103, metadata !419, metadata !DIExpression()), !dbg !396
  %104 = add nsw i32 %.26, 2, !dbg !532
  call void @llvm.dbg.value(metadata i32 %104, metadata !444, metadata !DIExpression()), !dbg !396
  br label %86, !dbg !533, !llvm.loop !534

105:                                              ; preds = %86
  br label %106, !dbg !536

106:                                              ; preds = %105, %8
  %.0 = phi i32 [ 0, %8 ], [ %.07, %105 ], !dbg !396
  ret i32 %.0, !dbg !537
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* noalias %0) #0 !dbg !538 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !541, metadata !DIExpression()), !dbg !542
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !543
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !544
  %4 = load i32, i32* %3, align 4, !dbg !544
  ret i32 %4, !dbg !545
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sub_word(i32 %0) #0 !dbg !546 {
  %2 = alloca [8 x i32], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata [8 x i32]* %2, metadata !551, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata i32 0, metadata !556, metadata !DIExpression()), !dbg !550
  br label %3, !dbg !557

3:                                                ; preds = %8, %1
  %.0 = phi i32 [ 0, %1 ], [ %9, %8 ], !dbg !559
  call void @llvm.dbg.value(metadata i32 %.0, metadata !556, metadata !DIExpression()), !dbg !550
  %4 = icmp slt i32 %.0, 8, !dbg !560
  br i1 %4, label %5, label %10, !dbg !562

5:                                                ; preds = %3
  %6 = sext i32 %.0 to i64, !dbg !563
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %6, !dbg !563
  store i32 %0, i32* %7, align 4, !dbg !565
  br label %8, !dbg !566

8:                                                ; preds = %5
  %9 = add nsw i32 %.0, 1, !dbg !567
  call void @llvm.dbg.value(metadata i32 %9, metadata !556, metadata !DIExpression()), !dbg !550
  br label %3, !dbg !568, !llvm.loop !569

10:                                               ; preds = %3
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !571
  call void @br_aes_ct_ortho(i32* %11), !dbg !572
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !573
  call void @br_aes_ct_bitslice_Sbox(i32* %12), !dbg !574
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !575
  call void @br_aes_ct_ortho(i32* %13), !dbg !576
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !577
  %15 = load i32, i32* %14, align 16, !dbg !577
  ret i32 %15, !dbg !578
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct_skey_expand(i32* noalias %0, i32 %1, i32* noalias %2) #0 !dbg !579 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i32 %1, metadata !586, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i32* %2, metadata !587, metadata !DIExpression()), !dbg !585
  %4 = add i32 %1, 1, !dbg !588
  %5 = shl i32 %4, 2, !dbg !589
  call void @llvm.dbg.value(metadata i32 %5, metadata !590, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i32 0, metadata !591, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i32 0, metadata !592, metadata !DIExpression()), !dbg !585
  br label %6, !dbg !593

6:                                                ; preds = %24, %3
  %.01 = phi i32 [ 0, %3 ], [ %25, %24 ], !dbg !595
  %.0 = phi i32 [ 0, %3 ], [ %26, %24 ], !dbg !595
  call void @llvm.dbg.value(metadata i32 %.0, metadata !592, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i32 %.01, metadata !591, metadata !DIExpression()), !dbg !585
  %7 = icmp ult i32 %.01, %5, !dbg !596
  br i1 %7, label %8, label %27, !dbg !598

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64, !dbg !599
  %10 = getelementptr inbounds i32, i32* %2, i64 %9, !dbg !599
  %11 = load i32, i32* %10, align 4, !dbg !599
  call void @llvm.dbg.value(metadata i32 %11, metadata !601, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i32 %11, metadata !603, metadata !DIExpression()), !dbg !602
  %12 = and i32 %11, 1431655765, !dbg !604
  call void @llvm.dbg.value(metadata i32 %12, metadata !603, metadata !DIExpression()), !dbg !602
  %13 = shl i32 %12, 1, !dbg !605
  %14 = or i32 %12, %13, !dbg !606
  %15 = add i32 %.0, 0, !dbg !607
  %16 = zext i32 %15 to i64, !dbg !608
  %17 = getelementptr inbounds i32, i32* %0, i64 %16, !dbg !608
  store i32 %14, i32* %17, align 4, !dbg !609
  %18 = and i32 %11, -1431655766, !dbg !610
  call void @llvm.dbg.value(metadata i32 %18, metadata !601, metadata !DIExpression()), !dbg !602
  %19 = lshr i32 %18, 1, !dbg !611
  %20 = or i32 %18, %19, !dbg !612
  %21 = add i32 %.0, 1, !dbg !613
  %22 = zext i32 %21 to i64, !dbg !614
  %23 = getelementptr inbounds i32, i32* %0, i64 %22, !dbg !614
  store i32 %20, i32* %23, align 4, !dbg !615
  br label %24, !dbg !616

24:                                               ; preds = %8
  %25 = add i32 %.01, 1, !dbg !617
  call void @llvm.dbg.value(metadata i32 %25, metadata !591, metadata !DIExpression()), !dbg !585
  %26 = add i32 %.0, 2, !dbg !618
  call void @llvm.dbg.value(metadata i32 %26, metadata !592, metadata !DIExpression()), !dbg !585
  br label %6, !dbg !619, !llvm.loop !620

27:                                               ; preds = %6
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct_bitslice_encrypt(i32 %0, i32* noalias %1, i32* noalias %2) #0 !dbg !623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i32* %1, metadata !628, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i32* %2, metadata !629, metadata !DIExpression()), !dbg !627
  call void @add_round_key(i32* %2, i32* %1), !dbg !630
  call void @llvm.dbg.value(metadata i32 1, metadata !631, metadata !DIExpression()), !dbg !627
  br label %4, !dbg !632

4:                                                ; preds = %10, %3
  %.0 = phi i32 [ 1, %3 ], [ %11, %10 ], !dbg !634
  call void @llvm.dbg.value(metadata i32 %.0, metadata !631, metadata !DIExpression()), !dbg !627
  %5 = icmp ult i32 %.0, %0, !dbg !635
  br i1 %5, label %6, label %12, !dbg !637

6:                                                ; preds = %4
  call void @br_aes_ct_bitslice_Sbox(i32* %2), !dbg !638
  call void @shift_rows(i32* %2), !dbg !640
  call void @mix_columns(i32* %2), !dbg !641
  %7 = shl i32 %.0, 3, !dbg !642
  %8 = zext i32 %7 to i64, !dbg !643
  %9 = getelementptr inbounds i32, i32* %1, i64 %8, !dbg !643
  call void @add_round_key(i32* %2, i32* %9), !dbg !644
  br label %10, !dbg !645

10:                                               ; preds = %6
  %11 = add i32 %.0, 1, !dbg !646
  call void @llvm.dbg.value(metadata i32 %11, metadata !631, metadata !DIExpression()), !dbg !627
  br label %4, !dbg !647, !llvm.loop !648

12:                                               ; preds = %4
  call void @br_aes_ct_bitslice_Sbox(i32* %2), !dbg !650
  call void @shift_rows(i32* %2), !dbg !651
  %13 = shl i32 %0, 3, !dbg !652
  %14 = zext i32 %13 to i64, !dbg !653
  %15 = getelementptr inbounds i32, i32* %1, i64 %14, !dbg !653
  call void @add_round_key(i32* %2, i32* %15), !dbg !654
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_round_key(i32* noalias %0, i32* noalias %1) #0 !dbg !656 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32* %1, metadata !661, metadata !DIExpression()), !dbg !660
  %3 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !662
  %4 = load i32, i32* %3, align 4, !dbg !662
  %5 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !663
  %6 = load i32, i32* %5, align 4, !dbg !664
  %7 = xor i32 %6, %4, !dbg !664
  store i32 %7, i32* %5, align 4, !dbg !664
  %8 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !665
  %9 = load i32, i32* %8, align 4, !dbg !665
  %10 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !666
  %11 = load i32, i32* %10, align 4, !dbg !667
  %12 = xor i32 %11, %9, !dbg !667
  store i32 %12, i32* %10, align 4, !dbg !667
  %13 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !668
  %14 = load i32, i32* %13, align 4, !dbg !668
  %15 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !669
  %16 = load i32, i32* %15, align 4, !dbg !670
  %17 = xor i32 %16, %14, !dbg !670
  store i32 %17, i32* %15, align 4, !dbg !670
  %18 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !671
  %19 = load i32, i32* %18, align 4, !dbg !671
  %20 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !672
  %21 = load i32, i32* %20, align 4, !dbg !673
  %22 = xor i32 %21, %19, !dbg !673
  store i32 %22, i32* %20, align 4, !dbg !673
  %23 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !674
  %24 = load i32, i32* %23, align 4, !dbg !674
  %25 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !675
  %26 = load i32, i32* %25, align 4, !dbg !676
  %27 = xor i32 %26, %24, !dbg !676
  store i32 %27, i32* %25, align 4, !dbg !676
  %28 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !677
  %29 = load i32, i32* %28, align 4, !dbg !677
  %30 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !678
  %31 = load i32, i32* %30, align 4, !dbg !679
  %32 = xor i32 %31, %29, !dbg !679
  store i32 %32, i32* %30, align 4, !dbg !679
  %33 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !680
  %34 = load i32, i32* %33, align 4, !dbg !680
  %35 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !681
  %36 = load i32, i32* %35, align 4, !dbg !682
  %37 = xor i32 %36, %34, !dbg !682
  store i32 %37, i32* %35, align 4, !dbg !682
  %38 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !683
  %39 = load i32, i32* %38, align 4, !dbg !683
  %40 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !684
  %41 = load i32, i32* %40, align 4, !dbg !685
  %42 = xor i32 %41, %39, !dbg !685
  store i32 %42, i32* %40, align 4, !dbg !685
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind uwtable
define internal void @shift_rows(i32* noalias %0) #0 !dbg !687 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !688, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata i32 0, metadata !690, metadata !DIExpression()), !dbg !689
  br label %2, !dbg !691

2:                                                ; preds = %29, %1
  %.0 = phi i32 [ 0, %1 ], [ %30, %29 ], !dbg !693
  call void @llvm.dbg.value(metadata i32 %.0, metadata !690, metadata !DIExpression()), !dbg !689
  %3 = icmp slt i32 %.0, 8, !dbg !694
  br i1 %3, label %4, label %31, !dbg !696

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64, !dbg !697
  %6 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !697
  %7 = load i32, i32* %6, align 4, !dbg !697
  call void @llvm.dbg.value(metadata i32 %7, metadata !699, metadata !DIExpression()), !dbg !700
  %8 = and i32 %7, 255, !dbg !701
  %9 = and i32 %7, 64512, !dbg !702
  %10 = lshr i32 %9, 2, !dbg !703
  %11 = or i32 %8, %10, !dbg !704
  %12 = and i32 %7, 768, !dbg !705
  %13 = shl i32 %12, 6, !dbg !706
  %14 = or i32 %11, %13, !dbg !707
  %15 = and i32 %7, 15728640, !dbg !708
  %16 = lshr i32 %15, 4, !dbg !709
  %17 = or i32 %14, %16, !dbg !710
  %18 = and i32 %7, 983040, !dbg !711
  %19 = shl i32 %18, 4, !dbg !712
  %20 = or i32 %17, %19, !dbg !713
  %21 = and i32 %7, -1073741824, !dbg !714
  %22 = lshr i32 %21, 6, !dbg !715
  %23 = or i32 %20, %22, !dbg !716
  %24 = and i32 %7, 1056964608, !dbg !717
  %25 = shl i32 %24, 2, !dbg !718
  %26 = or i32 %23, %25, !dbg !719
  %27 = sext i32 %.0 to i64, !dbg !720
  %28 = getelementptr inbounds i32, i32* %0, i64 %27, !dbg !720
  store i32 %26, i32* %28, align 4, !dbg !721
  br label %29, !dbg !722

29:                                               ; preds = %4
  %30 = add nsw i32 %.0, 1, !dbg !723
  call void @llvm.dbg.value(metadata i32 %30, metadata !690, metadata !DIExpression()), !dbg !689
  br label %2, !dbg !724, !llvm.loop !725

31:                                               ; preds = %2
  ret void, !dbg !727
}

; Function Attrs: noinline nounwind uwtable
define internal void @mix_columns(i32* noalias %0) #0 !dbg !728 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !729, metadata !DIExpression()), !dbg !730
  %2 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !731
  %3 = load i32, i32* %2, align 4, !dbg !731
  call void @llvm.dbg.value(metadata i32 %3, metadata !732, metadata !DIExpression()), !dbg !730
  %4 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !733
  %5 = load i32, i32* %4, align 4, !dbg !733
  call void @llvm.dbg.value(metadata i32 %5, metadata !734, metadata !DIExpression()), !dbg !730
  %6 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !735
  %7 = load i32, i32* %6, align 4, !dbg !735
  call void @llvm.dbg.value(metadata i32 %7, metadata !736, metadata !DIExpression()), !dbg !730
  %8 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !737
  %9 = load i32, i32* %8, align 4, !dbg !737
  call void @llvm.dbg.value(metadata i32 %9, metadata !738, metadata !DIExpression()), !dbg !730
  %10 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !739
  %11 = load i32, i32* %10, align 4, !dbg !739
  call void @llvm.dbg.value(metadata i32 %11, metadata !740, metadata !DIExpression()), !dbg !730
  %12 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !741
  %13 = load i32, i32* %12, align 4, !dbg !741
  call void @llvm.dbg.value(metadata i32 %13, metadata !742, metadata !DIExpression()), !dbg !730
  %14 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !743
  %15 = load i32, i32* %14, align 4, !dbg !743
  call void @llvm.dbg.value(metadata i32 %15, metadata !744, metadata !DIExpression()), !dbg !730
  %16 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !745
  %17 = load i32, i32* %16, align 4, !dbg !745
  call void @llvm.dbg.value(metadata i32 %17, metadata !746, metadata !DIExpression()), !dbg !730
  %18 = lshr i32 %3, 8, !dbg !747
  %19 = shl i32 %3, 24, !dbg !748
  %20 = or i32 %18, %19, !dbg !749
  call void @llvm.dbg.value(metadata i32 %20, metadata !750, metadata !DIExpression()), !dbg !730
  %21 = lshr i32 %5, 8, !dbg !751
  %22 = shl i32 %5, 24, !dbg !752
  %23 = or i32 %21, %22, !dbg !753
  call void @llvm.dbg.value(metadata i32 %23, metadata !754, metadata !DIExpression()), !dbg !730
  %24 = lshr i32 %7, 8, !dbg !755
  %25 = shl i32 %7, 24, !dbg !756
  %26 = or i32 %24, %25, !dbg !757
  call void @llvm.dbg.value(metadata i32 %26, metadata !758, metadata !DIExpression()), !dbg !730
  %27 = lshr i32 %9, 8, !dbg !759
  %28 = shl i32 %9, 24, !dbg !760
  %29 = or i32 %27, %28, !dbg !761
  call void @llvm.dbg.value(metadata i32 %29, metadata !762, metadata !DIExpression()), !dbg !730
  %30 = lshr i32 %11, 8, !dbg !763
  %31 = shl i32 %11, 24, !dbg !764
  %32 = or i32 %30, %31, !dbg !765
  call void @llvm.dbg.value(metadata i32 %32, metadata !766, metadata !DIExpression()), !dbg !730
  %33 = lshr i32 %13, 8, !dbg !767
  %34 = shl i32 %13, 24, !dbg !768
  %35 = or i32 %33, %34, !dbg !769
  call void @llvm.dbg.value(metadata i32 %35, metadata !770, metadata !DIExpression()), !dbg !730
  %36 = lshr i32 %15, 8, !dbg !771
  %37 = shl i32 %15, 24, !dbg !772
  %38 = or i32 %36, %37, !dbg !773
  call void @llvm.dbg.value(metadata i32 %38, metadata !774, metadata !DIExpression()), !dbg !730
  %39 = lshr i32 %17, 8, !dbg !775
  %40 = shl i32 %17, 24, !dbg !776
  %41 = or i32 %39, %40, !dbg !777
  call void @llvm.dbg.value(metadata i32 %41, metadata !778, metadata !DIExpression()), !dbg !730
  %42 = xor i32 %17, %41, !dbg !779
  %43 = xor i32 %42, %20, !dbg !780
  %44 = xor i32 %3, %20, !dbg !781
  %45 = call i32 @rotr16(i32 %44), !dbg !782
  %46 = xor i32 %43, %45, !dbg !783
  %47 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !784
  store i32 %46, i32* %47, align 4, !dbg !785
  %48 = xor i32 %3, %20, !dbg !786
  %49 = xor i32 %48, %17, !dbg !787
  %50 = xor i32 %49, %41, !dbg !788
  %51 = xor i32 %50, %23, !dbg !789
  %52 = xor i32 %5, %23, !dbg !790
  %53 = call i32 @rotr16(i32 %52), !dbg !791
  %54 = xor i32 %51, %53, !dbg !792
  %55 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !793
  store i32 %54, i32* %55, align 4, !dbg !794
  %56 = xor i32 %5, %23, !dbg !795
  %57 = xor i32 %56, %26, !dbg !796
  %58 = xor i32 %7, %26, !dbg !797
  %59 = call i32 @rotr16(i32 %58), !dbg !798
  %60 = xor i32 %57, %59, !dbg !799
  %61 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !800
  store i32 %60, i32* %61, align 4, !dbg !801
  %62 = xor i32 %7, %26, !dbg !802
  %63 = xor i32 %62, %17, !dbg !803
  %64 = xor i32 %63, %41, !dbg !804
  %65 = xor i32 %64, %29, !dbg !805
  %66 = xor i32 %9, %29, !dbg !806
  %67 = call i32 @rotr16(i32 %66), !dbg !807
  %68 = xor i32 %65, %67, !dbg !808
  %69 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !809
  store i32 %68, i32* %69, align 4, !dbg !810
  %70 = xor i32 %9, %29, !dbg !811
  %71 = xor i32 %70, %17, !dbg !812
  %72 = xor i32 %71, %41, !dbg !813
  %73 = xor i32 %72, %32, !dbg !814
  %74 = xor i32 %11, %32, !dbg !815
  %75 = call i32 @rotr16(i32 %74), !dbg !816
  %76 = xor i32 %73, %75, !dbg !817
  %77 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !818
  store i32 %76, i32* %77, align 4, !dbg !819
  %78 = xor i32 %11, %32, !dbg !820
  %79 = xor i32 %78, %35, !dbg !821
  %80 = xor i32 %13, %35, !dbg !822
  %81 = call i32 @rotr16(i32 %80), !dbg !823
  %82 = xor i32 %79, %81, !dbg !824
  %83 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !825
  store i32 %82, i32* %83, align 4, !dbg !826
  %84 = xor i32 %13, %35, !dbg !827
  %85 = xor i32 %84, %38, !dbg !828
  %86 = xor i32 %15, %38, !dbg !829
  %87 = call i32 @rotr16(i32 %86), !dbg !830
  %88 = xor i32 %85, %87, !dbg !831
  %89 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !832
  store i32 %88, i32* %89, align 4, !dbg !833
  %90 = xor i32 %15, %38, !dbg !834
  %91 = xor i32 %90, %41, !dbg !835
  %92 = xor i32 %17, %41, !dbg !836
  %93 = call i32 @rotr16(i32 %92), !dbg !837
  %94 = xor i32 %91, %93, !dbg !838
  %95 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !839
  store i32 %94, i32* %95, align 4, !dbg !840
  ret void, !dbg !841
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rotr16(i32 %0) #0 !dbg !842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !843, metadata !DIExpression()), !dbg !844
  %2 = shl i32 %0, 16, !dbg !845
  %3 = lshr i32 %0, 16, !dbg !846
  %4 = or i32 %2, %3, !dbg !847
  ret i32 %4, !dbg !848
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitslice_encrypt_wrapper(i32 %0, i32* noalias %1, i8* noalias %2) #0 !dbg !849 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !853, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32* %1, metadata !855, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i8* %2, metadata !856, metadata !DIExpression()), !dbg !854
  %4 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %0), !dbg !857
  call void @public_in(%struct.smack_value* %4), !dbg !858
  %5 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %1), !dbg !859
  call void @public_in(%struct.smack_value* %5), !dbg !860
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !861
  call void @public_in(%struct.smack_value* %6), !dbg !862
  %7 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 16), !dbg !863
  call void @public_in(%struct.smack_value* %7), !dbg !864
  %8 = bitcast i8* %2 to i32*, !dbg !865
  call void @br_aes_ct_bitslice_encrypt(i32 %0, i32* %1, i32* %8), !dbg !866
  ret void, !dbg !867
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitslice_encrypt_wrapper_t() #0 !dbg !868 {
  %1 = call i32 (...) @getuns(), !dbg !871
  call void @llvm.dbg.value(metadata i32 %1, metadata !872, metadata !DIExpression()), !dbg !873
  %2 = call i32* (...) @getpt(), !dbg !874
  call void @llvm.dbg.value(metadata i32* %2, metadata !875, metadata !DIExpression()), !dbg !873
  %3 = call i8* (...) @getpt2(), !dbg !876
  call void @llvm.dbg.value(metadata i8* %3, metadata !877, metadata !DIExpression()), !dbg !873
  %4 = bitcast i8* %3 to i32*, !dbg !878
  call void @br_aes_ct_bitslice_encrypt(i32 %1, i32* %2, i32* %4), !dbg !879
  ret void, !dbg !880
}

declare dso_local i32 @getuns(...) #2

declare dso_local i32* @getpt(...) #2

declare dso_local i8* @getpt2(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2, !30, !32}
!llvm.ident = !{!34, !34, !34}
!llvm.module.flags = !{!35, !36, !37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Rcon", scope: !2, file: !3, line: 236, type: !27, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/aes_ct.c", directory: "/home/luwei/bech/BearSSL/aes_ct")
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
!18 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech/BearSSL/aes_ct")
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
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../BearSSL/src/symcipher/aes_ct_enc.c", directory: "/home/luwei/bech/BearSSL/aes_ct")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "bitslice_encrypt.c", directory: "/home/luwei/bech/BearSSL/aes_ct")
!34 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = distinct !DISubprogram(name: "br_aes_ct_bitslice_Sbox", scope: !3, file: !3, line: 29, type: !39, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!42 = !DILocalVariable(name: "q", arg: 1, scope: !38, file: !3, line: 29, type: !41)
!43 = !DILocation(line: 0, scope: !38)
!44 = !DILocation(line: 56, column: 7, scope: !38)
!45 = !DILocalVariable(name: "x0", scope: !38, file: !3, line: 41, type: !6)
!46 = !DILocation(line: 57, column: 7, scope: !38)
!47 = !DILocalVariable(name: "x1", scope: !38, file: !3, line: 41, type: !6)
!48 = !DILocation(line: 58, column: 7, scope: !38)
!49 = !DILocalVariable(name: "x2", scope: !38, file: !3, line: 41, type: !6)
!50 = !DILocation(line: 59, column: 7, scope: !38)
!51 = !DILocalVariable(name: "x3", scope: !38, file: !3, line: 41, type: !6)
!52 = !DILocation(line: 60, column: 7, scope: !38)
!53 = !DILocalVariable(name: "x4", scope: !38, file: !3, line: 41, type: !6)
!54 = !DILocation(line: 61, column: 7, scope: !38)
!55 = !DILocalVariable(name: "x5", scope: !38, file: !3, line: 41, type: !6)
!56 = !DILocation(line: 62, column: 7, scope: !38)
!57 = !DILocalVariable(name: "x6", scope: !38, file: !3, line: 41, type: !6)
!58 = !DILocation(line: 63, column: 7, scope: !38)
!59 = !DILocalVariable(name: "x7", scope: !38, file: !3, line: 41, type: !6)
!60 = !DILocation(line: 68, column: 11, scope: !38)
!61 = !DILocalVariable(name: "y14", scope: !38, file: !3, line: 43, type: !6)
!62 = !DILocation(line: 69, column: 11, scope: !38)
!63 = !DILocalVariable(name: "y13", scope: !38, file: !3, line: 43, type: !6)
!64 = !DILocation(line: 70, column: 10, scope: !38)
!65 = !DILocalVariable(name: "y9", scope: !38, file: !3, line: 42, type: !6)
!66 = !DILocation(line: 71, column: 10, scope: !38)
!67 = !DILocalVariable(name: "y8", scope: !38, file: !3, line: 42, type: !6)
!68 = !DILocation(line: 72, column: 10, scope: !38)
!69 = !DILocalVariable(name: "t0", scope: !38, file: !3, line: 47, type: !6)
!70 = !DILocation(line: 73, column: 10, scope: !38)
!71 = !DILocalVariable(name: "y1", scope: !38, file: !3, line: 42, type: !6)
!72 = !DILocation(line: 74, column: 10, scope: !38)
!73 = !DILocalVariable(name: "y4", scope: !38, file: !3, line: 42, type: !6)
!74 = !DILocation(line: 75, column: 12, scope: !38)
!75 = !DILocalVariable(name: "y12", scope: !38, file: !3, line: 43, type: !6)
!76 = !DILocation(line: 76, column: 10, scope: !38)
!77 = !DILocalVariable(name: "y2", scope: !38, file: !3, line: 42, type: !6)
!78 = !DILocation(line: 77, column: 10, scope: !38)
!79 = !DILocalVariable(name: "y5", scope: !38, file: !3, line: 42, type: !6)
!80 = !DILocation(line: 78, column: 10, scope: !38)
!81 = !DILocalVariable(name: "y3", scope: !38, file: !3, line: 42, type: !6)
!82 = !DILocation(line: 79, column: 10, scope: !38)
!83 = !DILocalVariable(name: "t1", scope: !38, file: !3, line: 47, type: !6)
!84 = !DILocation(line: 80, column: 11, scope: !38)
!85 = !DILocalVariable(name: "y15", scope: !38, file: !3, line: 43, type: !6)
!86 = !DILocation(line: 81, column: 11, scope: !38)
!87 = !DILocalVariable(name: "y20", scope: !38, file: !3, line: 44, type: !6)
!88 = !DILocation(line: 82, column: 11, scope: !38)
!89 = !DILocalVariable(name: "y6", scope: !38, file: !3, line: 42, type: !6)
!90 = !DILocation(line: 83, column: 12, scope: !38)
!91 = !DILocalVariable(name: "y10", scope: !38, file: !3, line: 43, type: !6)
!92 = !DILocation(line: 84, column: 12, scope: !38)
!93 = !DILocalVariable(name: "y11", scope: !38, file: !3, line: 43, type: !6)
!94 = !DILocation(line: 85, column: 10, scope: !38)
!95 = !DILocalVariable(name: "y7", scope: !38, file: !3, line: 42, type: !6)
!96 = !DILocation(line: 86, column: 12, scope: !38)
!97 = !DILocalVariable(name: "y17", scope: !38, file: !3, line: 43, type: !6)
!98 = !DILocation(line: 87, column: 12, scope: !38)
!99 = !DILocalVariable(name: "y19", scope: !38, file: !3, line: 43, type: !6)
!100 = !DILocation(line: 88, column: 11, scope: !38)
!101 = !DILocalVariable(name: "y16", scope: !38, file: !3, line: 43, type: !6)
!102 = !DILocation(line: 89, column: 12, scope: !38)
!103 = !DILocalVariable(name: "y21", scope: !38, file: !3, line: 44, type: !6)
!104 = !DILocation(line: 90, column: 11, scope: !38)
!105 = !DILocalVariable(name: "y18", scope: !38, file: !3, line: 43, type: !6)
!106 = !DILocation(line: 95, column: 11, scope: !38)
!107 = !DILocalVariable(name: "t2", scope: !38, file: !3, line: 47, type: !6)
!108 = !DILocation(line: 96, column: 10, scope: !38)
!109 = !DILocalVariable(name: "t3", scope: !38, file: !3, line: 47, type: !6)
!110 = !DILocation(line: 97, column: 10, scope: !38)
!111 = !DILocalVariable(name: "t4", scope: !38, file: !3, line: 47, type: !6)
!112 = !DILocation(line: 98, column: 10, scope: !38)
!113 = !DILocalVariable(name: "t5", scope: !38, file: !3, line: 47, type: !6)
!114 = !DILocation(line: 99, column: 10, scope: !38)
!115 = !DILocalVariable(name: "t6", scope: !38, file: !3, line: 47, type: !6)
!116 = !DILocation(line: 100, column: 11, scope: !38)
!117 = !DILocalVariable(name: "t7", scope: !38, file: !3, line: 47, type: !6)
!118 = !DILocation(line: 101, column: 10, scope: !38)
!119 = !DILocalVariable(name: "t8", scope: !38, file: !3, line: 47, type: !6)
!120 = !DILocation(line: 102, column: 10, scope: !38)
!121 = !DILocalVariable(name: "t9", scope: !38, file: !3, line: 47, type: !6)
!122 = !DILocation(line: 103, column: 11, scope: !38)
!123 = !DILocalVariable(name: "t10", scope: !38, file: !3, line: 48, type: !6)
!124 = !DILocation(line: 104, column: 12, scope: !38)
!125 = !DILocalVariable(name: "t11", scope: !38, file: !3, line: 48, type: !6)
!126 = !DILocation(line: 105, column: 11, scope: !38)
!127 = !DILocalVariable(name: "t12", scope: !38, file: !3, line: 48, type: !6)
!128 = !DILocation(line: 106, column: 12, scope: !38)
!129 = !DILocalVariable(name: "t13", scope: !38, file: !3, line: 48, type: !6)
!130 = !DILocation(line: 107, column: 12, scope: !38)
!131 = !DILocalVariable(name: "t14", scope: !38, file: !3, line: 48, type: !6)
!132 = !DILocation(line: 108, column: 11, scope: !38)
!133 = !DILocalVariable(name: "t15", scope: !38, file: !3, line: 48, type: !6)
!134 = !DILocation(line: 109, column: 12, scope: !38)
!135 = !DILocalVariable(name: "t16", scope: !38, file: !3, line: 48, type: !6)
!136 = !DILocation(line: 110, column: 11, scope: !38)
!137 = !DILocalVariable(name: "t17", scope: !38, file: !3, line: 48, type: !6)
!138 = !DILocation(line: 111, column: 11, scope: !38)
!139 = !DILocalVariable(name: "t18", scope: !38, file: !3, line: 48, type: !6)
!140 = !DILocation(line: 112, column: 11, scope: !38)
!141 = !DILocalVariable(name: "t19", scope: !38, file: !3, line: 48, type: !6)
!142 = !DILocation(line: 113, column: 12, scope: !38)
!143 = !DILocalVariable(name: "t20", scope: !38, file: !3, line: 49, type: !6)
!144 = !DILocation(line: 114, column: 12, scope: !38)
!145 = !DILocalVariable(name: "t21", scope: !38, file: !3, line: 49, type: !6)
!146 = !DILocation(line: 115, column: 12, scope: !38)
!147 = !DILocalVariable(name: "t22", scope: !38, file: !3, line: 49, type: !6)
!148 = !DILocation(line: 116, column: 12, scope: !38)
!149 = !DILocalVariable(name: "t23", scope: !38, file: !3, line: 49, type: !6)
!150 = !DILocation(line: 117, column: 12, scope: !38)
!151 = !DILocalVariable(name: "t24", scope: !38, file: !3, line: 49, type: !6)
!152 = !DILocation(line: 119, column: 12, scope: !38)
!153 = !DILocalVariable(name: "t25", scope: !38, file: !3, line: 49, type: !6)
!154 = !DILocation(line: 120, column: 12, scope: !38)
!155 = !DILocalVariable(name: "t26", scope: !38, file: !3, line: 49, type: !6)
!156 = !DILocation(line: 121, column: 12, scope: !38)
!157 = !DILocalVariable(name: "t27", scope: !38, file: !3, line: 49, type: !6)
!158 = !DILocation(line: 122, column: 12, scope: !38)
!159 = !DILocalVariable(name: "t28", scope: !38, file: !3, line: 49, type: !6)
!160 = !DILocation(line: 123, column: 12, scope: !38)
!161 = !DILocalVariable(name: "t29", scope: !38, file: !3, line: 49, type: !6)
!162 = !DILocation(line: 124, column: 12, scope: !38)
!163 = !DILocalVariable(name: "t30", scope: !38, file: !3, line: 50, type: !6)
!164 = !DILocation(line: 125, column: 12, scope: !38)
!165 = !DILocalVariable(name: "t31", scope: !38, file: !3, line: 50, type: !6)
!166 = !DILocation(line: 126, column: 12, scope: !38)
!167 = !DILocalVariable(name: "t32", scope: !38, file: !3, line: 50, type: !6)
!168 = !DILocation(line: 127, column: 12, scope: !38)
!169 = !DILocalVariable(name: "t33", scope: !38, file: !3, line: 50, type: !6)
!170 = !DILocation(line: 128, column: 12, scope: !38)
!171 = !DILocalVariable(name: "t34", scope: !38, file: !3, line: 50, type: !6)
!172 = !DILocation(line: 129, column: 12, scope: !38)
!173 = !DILocalVariable(name: "t35", scope: !38, file: !3, line: 50, type: !6)
!174 = !DILocation(line: 130, column: 12, scope: !38)
!175 = !DILocalVariable(name: "t36", scope: !38, file: !3, line: 50, type: !6)
!176 = !DILocation(line: 131, column: 12, scope: !38)
!177 = !DILocalVariable(name: "t37", scope: !38, file: !3, line: 50, type: !6)
!178 = !DILocation(line: 132, column: 12, scope: !38)
!179 = !DILocalVariable(name: "t38", scope: !38, file: !3, line: 50, type: !6)
!180 = !DILocation(line: 133, column: 12, scope: !38)
!181 = !DILocalVariable(name: "t39", scope: !38, file: !3, line: 50, type: !6)
!182 = !DILocation(line: 134, column: 12, scope: !38)
!183 = !DILocalVariable(name: "t40", scope: !38, file: !3, line: 51, type: !6)
!184 = !DILocation(line: 136, column: 12, scope: !38)
!185 = !DILocalVariable(name: "t41", scope: !38, file: !3, line: 51, type: !6)
!186 = !DILocation(line: 137, column: 12, scope: !38)
!187 = !DILocalVariable(name: "t42", scope: !38, file: !3, line: 51, type: !6)
!188 = !DILocation(line: 138, column: 12, scope: !38)
!189 = !DILocalVariable(name: "t43", scope: !38, file: !3, line: 51, type: !6)
!190 = !DILocation(line: 139, column: 12, scope: !38)
!191 = !DILocalVariable(name: "t44", scope: !38, file: !3, line: 51, type: !6)
!192 = !DILocation(line: 140, column: 12, scope: !38)
!193 = !DILocalVariable(name: "t45", scope: !38, file: !3, line: 51, type: !6)
!194 = !DILocation(line: 141, column: 11, scope: !38)
!195 = !DILocalVariable(name: "z0", scope: !38, file: !3, line: 45, type: !6)
!196 = !DILocation(line: 142, column: 11, scope: !38)
!197 = !DILocalVariable(name: "z1", scope: !38, file: !3, line: 45, type: !6)
!198 = !DILocation(line: 143, column: 11, scope: !38)
!199 = !DILocalVariable(name: "z2", scope: !38, file: !3, line: 45, type: !6)
!200 = !DILocation(line: 144, column: 11, scope: !38)
!201 = !DILocalVariable(name: "z3", scope: !38, file: !3, line: 45, type: !6)
!202 = !DILocation(line: 145, column: 11, scope: !38)
!203 = !DILocalVariable(name: "z4", scope: !38, file: !3, line: 45, type: !6)
!204 = !DILocation(line: 146, column: 11, scope: !38)
!205 = !DILocalVariable(name: "z5", scope: !38, file: !3, line: 45, type: !6)
!206 = !DILocation(line: 147, column: 11, scope: !38)
!207 = !DILocalVariable(name: "z6", scope: !38, file: !3, line: 45, type: !6)
!208 = !DILocation(line: 148, column: 11, scope: !38)
!209 = !DILocalVariable(name: "z7", scope: !38, file: !3, line: 45, type: !6)
!210 = !DILocation(line: 149, column: 11, scope: !38)
!211 = !DILocalVariable(name: "z8", scope: !38, file: !3, line: 45, type: !6)
!212 = !DILocation(line: 150, column: 11, scope: !38)
!213 = !DILocalVariable(name: "z9", scope: !38, file: !3, line: 45, type: !6)
!214 = !DILocation(line: 151, column: 12, scope: !38)
!215 = !DILocalVariable(name: "z10", scope: !38, file: !3, line: 46, type: !6)
!216 = !DILocation(line: 152, column: 12, scope: !38)
!217 = !DILocalVariable(name: "z11", scope: !38, file: !3, line: 46, type: !6)
!218 = !DILocation(line: 153, column: 12, scope: !38)
!219 = !DILocalVariable(name: "z12", scope: !38, file: !3, line: 46, type: !6)
!220 = !DILocation(line: 154, column: 12, scope: !38)
!221 = !DILocalVariable(name: "z13", scope: !38, file: !3, line: 46, type: !6)
!222 = !DILocation(line: 155, column: 12, scope: !38)
!223 = !DILocalVariable(name: "z14", scope: !38, file: !3, line: 46, type: !6)
!224 = !DILocation(line: 156, column: 12, scope: !38)
!225 = !DILocalVariable(name: "z15", scope: !38, file: !3, line: 46, type: !6)
!226 = !DILocation(line: 157, column: 12, scope: !38)
!227 = !DILocalVariable(name: "z16", scope: !38, file: !3, line: 46, type: !6)
!228 = !DILocation(line: 158, column: 12, scope: !38)
!229 = !DILocalVariable(name: "z17", scope: !38, file: !3, line: 46, type: !6)
!230 = !DILocation(line: 163, column: 12, scope: !38)
!231 = !DILocalVariable(name: "t46", scope: !38, file: !3, line: 51, type: !6)
!232 = !DILocation(line: 164, column: 12, scope: !38)
!233 = !DILocalVariable(name: "t47", scope: !38, file: !3, line: 51, type: !6)
!234 = !DILocation(line: 165, column: 11, scope: !38)
!235 = !DILocalVariable(name: "t48", scope: !38, file: !3, line: 51, type: !6)
!236 = !DILocation(line: 166, column: 11, scope: !38)
!237 = !DILocalVariable(name: "t49", scope: !38, file: !3, line: 51, type: !6)
!238 = !DILocation(line: 167, column: 11, scope: !38)
!239 = !DILocalVariable(name: "t50", scope: !38, file: !3, line: 52, type: !6)
!240 = !DILocation(line: 168, column: 11, scope: !38)
!241 = !DILocalVariable(name: "t51", scope: !38, file: !3, line: 52, type: !6)
!242 = !DILocation(line: 169, column: 11, scope: !38)
!243 = !DILocalVariable(name: "t52", scope: !38, file: !3, line: 52, type: !6)
!244 = !DILocation(line: 170, column: 11, scope: !38)
!245 = !DILocalVariable(name: "t53", scope: !38, file: !3, line: 52, type: !6)
!246 = !DILocation(line: 171, column: 11, scope: !38)
!247 = !DILocalVariable(name: "t54", scope: !38, file: !3, line: 52, type: !6)
!248 = !DILocation(line: 172, column: 12, scope: !38)
!249 = !DILocalVariable(name: "t55", scope: !38, file: !3, line: 52, type: !6)
!250 = !DILocation(line: 173, column: 12, scope: !38)
!251 = !DILocalVariable(name: "t56", scope: !38, file: !3, line: 52, type: !6)
!252 = !DILocation(line: 174, column: 12, scope: !38)
!253 = !DILocalVariable(name: "t57", scope: !38, file: !3, line: 52, type: !6)
!254 = !DILocation(line: 175, column: 11, scope: !38)
!255 = !DILocalVariable(name: "t58", scope: !38, file: !3, line: 52, type: !6)
!256 = !DILocation(line: 176, column: 11, scope: !38)
!257 = !DILocalVariable(name: "t59", scope: !38, file: !3, line: 52, type: !6)
!258 = !DILocation(line: 177, column: 12, scope: !38)
!259 = !DILocalVariable(name: "t60", scope: !38, file: !3, line: 53, type: !6)
!260 = !DILocation(line: 178, column: 12, scope: !38)
!261 = !DILocalVariable(name: "t61", scope: !38, file: !3, line: 53, type: !6)
!262 = !DILocation(line: 179, column: 12, scope: !38)
!263 = !DILocalVariable(name: "t62", scope: !38, file: !3, line: 53, type: !6)
!264 = !DILocation(line: 180, column: 12, scope: !38)
!265 = !DILocalVariable(name: "t63", scope: !38, file: !3, line: 53, type: !6)
!266 = !DILocation(line: 181, column: 11, scope: !38)
!267 = !DILocalVariable(name: "t64", scope: !38, file: !3, line: 53, type: !6)
!268 = !DILocation(line: 182, column: 12, scope: !38)
!269 = !DILocalVariable(name: "t65", scope: !38, file: !3, line: 53, type: !6)
!270 = !DILocation(line: 183, column: 11, scope: !38)
!271 = !DILocalVariable(name: "t66", scope: !38, file: !3, line: 53, type: !6)
!272 = !DILocation(line: 184, column: 11, scope: !38)
!273 = !DILocalVariable(name: "s0", scope: !38, file: !3, line: 54, type: !6)
!274 = !DILocation(line: 185, column: 13, scope: !38)
!275 = !DILocation(line: 185, column: 11, scope: !38)
!276 = !DILocalVariable(name: "s6", scope: !38, file: !3, line: 54, type: !6)
!277 = !DILocation(line: 186, column: 13, scope: !38)
!278 = !DILocation(line: 186, column: 11, scope: !38)
!279 = !DILocalVariable(name: "s7", scope: !38, file: !3, line: 54, type: !6)
!280 = !DILocation(line: 187, column: 12, scope: !38)
!281 = !DILocalVariable(name: "t67", scope: !38, file: !3, line: 53, type: !6)
!282 = !DILocation(line: 188, column: 11, scope: !38)
!283 = !DILocalVariable(name: "s3", scope: !38, file: !3, line: 54, type: !6)
!284 = !DILocation(line: 189, column: 11, scope: !38)
!285 = !DILocalVariable(name: "s4", scope: !38, file: !3, line: 54, type: !6)
!286 = !DILocation(line: 190, column: 11, scope: !38)
!287 = !DILocalVariable(name: "s5", scope: !38, file: !3, line: 54, type: !6)
!288 = !DILocation(line: 191, column: 13, scope: !38)
!289 = !DILocation(line: 191, column: 11, scope: !38)
!290 = !DILocalVariable(name: "s1", scope: !38, file: !3, line: 54, type: !6)
!291 = !DILocation(line: 192, column: 13, scope: !38)
!292 = !DILocation(line: 192, column: 11, scope: !38)
!293 = !DILocalVariable(name: "s2", scope: !38, file: !3, line: 54, type: !6)
!294 = !DILocation(line: 194, column: 2, scope: !38)
!295 = !DILocation(line: 194, column: 7, scope: !38)
!296 = !DILocation(line: 195, column: 2, scope: !38)
!297 = !DILocation(line: 195, column: 7, scope: !38)
!298 = !DILocation(line: 196, column: 2, scope: !38)
!299 = !DILocation(line: 196, column: 7, scope: !38)
!300 = !DILocation(line: 197, column: 2, scope: !38)
!301 = !DILocation(line: 197, column: 7, scope: !38)
!302 = !DILocation(line: 198, column: 2, scope: !38)
!303 = !DILocation(line: 198, column: 7, scope: !38)
!304 = !DILocation(line: 199, column: 2, scope: !38)
!305 = !DILocation(line: 199, column: 7, scope: !38)
!306 = !DILocation(line: 200, column: 2, scope: !38)
!307 = !DILocation(line: 200, column: 7, scope: !38)
!308 = !DILocation(line: 201, column: 2, scope: !38)
!309 = !DILocation(line: 201, column: 7, scope: !38)
!310 = !DILocation(line: 202, column: 1, scope: !38)
!311 = distinct !DISubprogram(name: "br_aes_ct_ortho", scope: !3, file: !3, line: 206, type: !39, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!312 = !DILocalVariable(name: "q", arg: 1, scope: !311, file: !3, line: 206, type: !41)
!313 = !DILocation(line: 0, scope: !311)
!314 = !DILocation(line: 220, column: 2, scope: !311)
!315 = !DILocation(line: 220, column: 2, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !3, line: 220, column: 2)
!317 = !DILocalVariable(name: "a", scope: !316, file: !3, line: 220, type: !6)
!318 = !DILocation(line: 0, scope: !316)
!319 = !DILocalVariable(name: "b", scope: !316, file: !3, line: 220, type: !6)
!320 = !DILocation(line: 221, column: 2, scope: !311)
!321 = !DILocation(line: 221, column: 2, scope: !322)
!322 = distinct !DILexicalBlock(scope: !311, file: !3, line: 221, column: 2)
!323 = !DILocalVariable(name: "a", scope: !322, file: !3, line: 221, type: !6)
!324 = !DILocation(line: 0, scope: !322)
!325 = !DILocalVariable(name: "b", scope: !322, file: !3, line: 221, type: !6)
!326 = !DILocation(line: 222, column: 2, scope: !311)
!327 = !DILocation(line: 222, column: 2, scope: !328)
!328 = distinct !DILexicalBlock(scope: !311, file: !3, line: 222, column: 2)
!329 = !DILocalVariable(name: "a", scope: !328, file: !3, line: 222, type: !6)
!330 = !DILocation(line: 0, scope: !328)
!331 = !DILocalVariable(name: "b", scope: !328, file: !3, line: 222, type: !6)
!332 = !DILocation(line: 223, column: 2, scope: !311)
!333 = !DILocation(line: 223, column: 2, scope: !334)
!334 = distinct !DILexicalBlock(scope: !311, file: !3, line: 223, column: 2)
!335 = !DILocalVariable(name: "a", scope: !334, file: !3, line: 223, type: !6)
!336 = !DILocation(line: 0, scope: !334)
!337 = !DILocalVariable(name: "b", scope: !334, file: !3, line: 223, type: !6)
!338 = !DILocation(line: 225, column: 2, scope: !311)
!339 = !DILocation(line: 225, column: 2, scope: !340)
!340 = distinct !DILexicalBlock(scope: !311, file: !3, line: 225, column: 2)
!341 = !DILocalVariable(name: "a", scope: !340, file: !3, line: 225, type: !6)
!342 = !DILocation(line: 0, scope: !340)
!343 = !DILocalVariable(name: "b", scope: !340, file: !3, line: 225, type: !6)
!344 = !DILocation(line: 226, column: 2, scope: !311)
!345 = !DILocation(line: 226, column: 2, scope: !346)
!346 = distinct !DILexicalBlock(scope: !311, file: !3, line: 226, column: 2)
!347 = !DILocalVariable(name: "a", scope: !346, file: !3, line: 226, type: !6)
!348 = !DILocation(line: 0, scope: !346)
!349 = !DILocalVariable(name: "b", scope: !346, file: !3, line: 226, type: !6)
!350 = !DILocation(line: 227, column: 2, scope: !311)
!351 = !DILocation(line: 227, column: 2, scope: !352)
!352 = distinct !DILexicalBlock(scope: !311, file: !3, line: 227, column: 2)
!353 = !DILocalVariable(name: "a", scope: !352, file: !3, line: 227, type: !6)
!354 = !DILocation(line: 0, scope: !352)
!355 = !DILocalVariable(name: "b", scope: !352, file: !3, line: 227, type: !6)
!356 = !DILocation(line: 228, column: 2, scope: !311)
!357 = !DILocation(line: 228, column: 2, scope: !358)
!358 = distinct !DILexicalBlock(scope: !311, file: !3, line: 228, column: 2)
!359 = !DILocalVariable(name: "a", scope: !358, file: !3, line: 228, type: !6)
!360 = !DILocation(line: 0, scope: !358)
!361 = !DILocalVariable(name: "b", scope: !358, file: !3, line: 228, type: !6)
!362 = !DILocation(line: 230, column: 2, scope: !311)
!363 = !DILocation(line: 230, column: 2, scope: !364)
!364 = distinct !DILexicalBlock(scope: !311, file: !3, line: 230, column: 2)
!365 = !DILocalVariable(name: "a", scope: !364, file: !3, line: 230, type: !6)
!366 = !DILocation(line: 0, scope: !364)
!367 = !DILocalVariable(name: "b", scope: !364, file: !3, line: 230, type: !6)
!368 = !DILocation(line: 231, column: 2, scope: !311)
!369 = !DILocation(line: 231, column: 2, scope: !370)
!370 = distinct !DILexicalBlock(scope: !311, file: !3, line: 231, column: 2)
!371 = !DILocalVariable(name: "a", scope: !370, file: !3, line: 231, type: !6)
!372 = !DILocation(line: 0, scope: !370)
!373 = !DILocalVariable(name: "b", scope: !370, file: !3, line: 231, type: !6)
!374 = !DILocation(line: 232, column: 2, scope: !311)
!375 = !DILocation(line: 232, column: 2, scope: !376)
!376 = distinct !DILexicalBlock(scope: !311, file: !3, line: 232, column: 2)
!377 = !DILocalVariable(name: "a", scope: !376, file: !3, line: 232, type: !6)
!378 = !DILocation(line: 0, scope: !376)
!379 = !DILocalVariable(name: "b", scope: !376, file: !3, line: 232, type: !6)
!380 = !DILocation(line: 233, column: 2, scope: !311)
!381 = !DILocation(line: 233, column: 2, scope: !382)
!382 = distinct !DILexicalBlock(scope: !311, file: !3, line: 233, column: 2)
!383 = !DILocalVariable(name: "a", scope: !382, file: !3, line: 233, type: !6)
!384 = !DILocation(line: 0, scope: !382)
!385 = !DILocalVariable(name: "b", scope: !382, file: !3, line: 233, type: !6)
!386 = !DILocation(line: 234, column: 1, scope: !311)
!387 = distinct !DISubprogram(name: "br_aes_ct_keysched", scope: !3, file: !3, line: 257, type: !388, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!388 = !DISubroutineType(types: !389)
!389 = !{!10, !41, !390, !392}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !393, line: 46, baseType: !394)
!393 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!394 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!395 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !387, file: !3, line: 257, type: !41)
!396 = !DILocation(line: 0, scope: !387)
!397 = !DILocalVariable(name: "key", arg: 2, scope: !387, file: !3, line: 257, type: !390)
!398 = !DILocalVariable(name: "key_len", arg: 3, scope: !387, file: !3, line: 257, type: !392)
!399 = !DILocalVariable(name: "skey", scope: !387, file: !3, line: 262, type: !400)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3840, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 120)
!403 = !DILocation(line: 262, column: 11, scope: !387)
!404 = !DILocation(line: 264, column: 2, scope: !387)
!405 = !DILocalVariable(name: "num_rounds", scope: !387, file: !3, line: 259, type: !10)
!406 = !DILocation(line: 267, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !387, file: !3, line: 264, column: 19)
!408 = !DILocation(line: 270, column: 3, scope: !407)
!409 = !DILocation(line: 273, column: 3, scope: !407)
!410 = !DILocation(line: 276, column: 3, scope: !407)
!411 = !DILocation(line: 0, scope: !407)
!412 = !DILocation(line: 278, column: 21, scope: !387)
!413 = !DILocation(line: 278, column: 7, scope: !387)
!414 = !DILocalVariable(name: "nk", scope: !387, file: !3, line: 260, type: !11)
!415 = !DILocation(line: 279, column: 26, scope: !387)
!416 = !DILocation(line: 279, column: 31, scope: !387)
!417 = !DILocalVariable(name: "nkf", scope: !387, file: !3, line: 260, type: !11)
!418 = !DILocalVariable(name: "tmp", scope: !387, file: !3, line: 261, type: !6)
!419 = !DILocalVariable(name: "i", scope: !387, file: !3, line: 260, type: !11)
!420 = !DILocation(line: 281, column: 7, scope: !421)
!421 = distinct !DILexicalBlock(scope: !387, file: !3, line: 281, column: 2)
!422 = !DILocation(line: 0, scope: !421)
!423 = !DILocation(line: 281, column: 16, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !3, line: 281, column: 2)
!425 = !DILocation(line: 281, column: 2, scope: !421)
!426 = !DILocation(line: 282, column: 52, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !3, line: 281, column: 28)
!428 = !DILocation(line: 282, column: 47, scope: !427)
!429 = !DILocation(line: 282, column: 9, scope: !427)
!430 = !DILocation(line: 283, column: 11, scope: !427)
!431 = !DILocation(line: 283, column: 17, scope: !427)
!432 = !DILocation(line: 283, column: 3, scope: !427)
!433 = !DILocation(line: 283, column: 22, scope: !427)
!434 = !DILocation(line: 284, column: 11, scope: !427)
!435 = !DILocation(line: 284, column: 17, scope: !427)
!436 = !DILocation(line: 284, column: 3, scope: !427)
!437 = !DILocation(line: 284, column: 22, scope: !427)
!438 = !DILocation(line: 285, column: 2, scope: !427)
!439 = !DILocation(line: 281, column: 24, scope: !424)
!440 = !DILocation(line: 281, column: 2, scope: !424)
!441 = distinct !{!441, !425, !442, !443}
!442 = !DILocation(line: 285, column: 2, scope: !421)
!443 = !{!"llvm.loop.mustprogress"}
!444 = !DILocalVariable(name: "j", scope: !387, file: !3, line: 260, type: !11)
!445 = !DILocalVariable(name: "k", scope: !387, file: !3, line: 260, type: !11)
!446 = !DILocation(line: 286, column: 7, scope: !447)
!447 = distinct !DILexicalBlock(scope: !387, file: !3, line: 286, column: 2)
!448 = !DILocation(line: 0, scope: !447)
!449 = !DILocation(line: 286, column: 31, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !3, line: 286, column: 2)
!451 = !DILocation(line: 286, column: 2, scope: !447)
!452 = !DILocation(line: 287, column: 9, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 287, column: 7)
!454 = distinct !DILexicalBlock(scope: !450, file: !3, line: 286, column: 44)
!455 = !DILocation(line: 287, column: 7, scope: !454)
!456 = !DILocation(line: 288, column: 15, scope: !457)
!457 = distinct !DILexicalBlock(scope: !453, file: !3, line: 287, column: 15)
!458 = !DILocation(line: 288, column: 29, scope: !457)
!459 = !DILocation(line: 288, column: 22, scope: !457)
!460 = !DILocation(line: 289, column: 10, scope: !457)
!461 = !DILocation(line: 289, column: 26, scope: !457)
!462 = !DILocation(line: 289, column: 24, scope: !457)
!463 = !DILocation(line: 290, column: 3, scope: !457)
!464 = !DILocation(line: 290, column: 17, scope: !465)
!465 = distinct !DILexicalBlock(scope: !453, file: !3, line: 290, column: 14)
!466 = !DILocation(line: 290, column: 21, scope: !465)
!467 = !DILocation(line: 290, column: 26, scope: !465)
!468 = !DILocation(line: 290, column: 14, scope: !453)
!469 = !DILocation(line: 291, column: 10, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !3, line: 290, column: 32)
!471 = !DILocation(line: 292, column: 3, scope: !470)
!472 = !DILocation(line: 0, scope: !453)
!473 = !DILocation(line: 293, column: 18, scope: !454)
!474 = !DILocation(line: 293, column: 24, scope: !454)
!475 = !DILocation(line: 293, column: 10, scope: !454)
!476 = !DILocation(line: 293, column: 7, scope: !454)
!477 = !DILocation(line: 294, column: 11, scope: !454)
!478 = !DILocation(line: 294, column: 17, scope: !454)
!479 = !DILocation(line: 294, column: 3, scope: !454)
!480 = !DILocation(line: 294, column: 22, scope: !454)
!481 = !DILocation(line: 295, column: 11, scope: !454)
!482 = !DILocation(line: 295, column: 17, scope: !454)
!483 = !DILocation(line: 295, column: 3, scope: !454)
!484 = !DILocation(line: 295, column: 22, scope: !454)
!485 = !DILocation(line: 296, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !454, file: !3, line: 296, column: 7)
!487 = !DILocation(line: 296, column: 12, scope: !486)
!488 = !DILocation(line: 296, column: 7, scope: !454)
!489 = !DILocation(line: 298, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !3, line: 296, column: 19)
!491 = !DILocation(line: 299, column: 3, scope: !490)
!492 = !DILocation(line: 0, scope: !486)
!493 = !DILocation(line: 300, column: 2, scope: !454)
!494 = !DILocation(line: 286, column: 40, scope: !450)
!495 = !DILocation(line: 286, column: 2, scope: !450)
!496 = distinct !{!496, !451, !497, !443}
!497 = !DILocation(line: 300, column: 2, scope: !447)
!498 = !DILocation(line: 301, column: 7, scope: !499)
!499 = distinct !DILexicalBlock(scope: !387, file: !3, line: 301, column: 2)
!500 = !DILocation(line: 0, scope: !499)
!501 = !DILocation(line: 301, column: 16, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !3, line: 301, column: 2)
!503 = !DILocation(line: 301, column: 2, scope: !499)
!504 = !DILocation(line: 302, column: 19, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !3, line: 301, column: 31)
!506 = !DILocation(line: 302, column: 29, scope: !505)
!507 = !DILocation(line: 302, column: 24, scope: !505)
!508 = !DILocation(line: 302, column: 3, scope: !505)
!509 = !DILocation(line: 303, column: 2, scope: !505)
!510 = !DILocation(line: 301, column: 25, scope: !502)
!511 = !DILocation(line: 301, column: 2, scope: !502)
!512 = distinct !{!512, !503, !513, !443}
!513 = !DILocation(line: 303, column: 2, scope: !499)
!514 = !DILocation(line: 304, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !387, file: !3, line: 304, column: 2)
!516 = !DILocation(line: 0, scope: !515)
!517 = !DILocation(line: 304, column: 23, scope: !518)
!518 = distinct !DILexicalBlock(scope: !515, file: !3, line: 304, column: 2)
!519 = !DILocation(line: 304, column: 2, scope: !515)
!520 = !DILocation(line: 305, column: 26, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !3, line: 304, column: 44)
!522 = !DILocation(line: 305, column: 19, scope: !521)
!523 = !DILocation(line: 305, column: 31, scope: !521)
!524 = !DILocation(line: 306, column: 14, scope: !521)
!525 = !DILocation(line: 306, column: 7, scope: !521)
!526 = !DILocation(line: 306, column: 19, scope: !521)
!527 = !DILocation(line: 306, column: 4, scope: !521)
!528 = !DILocation(line: 305, column: 3, scope: !521)
!529 = !DILocation(line: 305, column: 16, scope: !521)
!530 = !DILocation(line: 307, column: 2, scope: !521)
!531 = !DILocation(line: 304, column: 32, scope: !518)
!532 = !DILocation(line: 304, column: 38, scope: !518)
!533 = !DILocation(line: 304, column: 2, scope: !518)
!534 = distinct !{!534, !519, !535, !443}
!535 = !DILocation(line: 307, column: 2, scope: !515)
!536 = !DILocation(line: 308, column: 2, scope: !387)
!537 = !DILocation(line: 309, column: 1, scope: !387)
!538 = distinct !DISubprogram(name: "br_dec32le", scope: !18, file: !18, line: 574, type: !539, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!539 = !DISubroutineType(types: !540)
!540 = !{!6, !390}
!541 = !DILocalVariable(name: "src", arg: 1, scope: !538, file: !18, line: 574, type: !390)
!542 = !DILocation(line: 0, scope: !538)
!543 = !DILocation(line: 577, column: 10, scope: !538)
!544 = !DILocation(line: 577, column: 38, scope: !538)
!545 = !DILocation(line: 577, column: 2, scope: !538)
!546 = distinct !DISubprogram(name: "sub_word", scope: !3, file: !3, line: 241, type: !547, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!547 = !DISubroutineType(types: !548)
!548 = !{!6, !6}
!549 = !DILocalVariable(name: "x", arg: 1, scope: !546, file: !3, line: 241, type: !6)
!550 = !DILocation(line: 0, scope: !546)
!551 = !DILocalVariable(name: "q", scope: !546, file: !3, line: 243, type: !552)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 8)
!555 = !DILocation(line: 243, column: 11, scope: !546)
!556 = !DILocalVariable(name: "i", scope: !546, file: !3, line: 244, type: !11)
!557 = !DILocation(line: 246, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !546, file: !3, line: 246, column: 2)
!559 = !DILocation(line: 0, scope: !558)
!560 = !DILocation(line: 246, column: 16, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !3, line: 246, column: 2)
!562 = !DILocation(line: 246, column: 2, scope: !558)
!563 = !DILocation(line: 247, column: 3, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !3, line: 246, column: 27)
!565 = !DILocation(line: 247, column: 8, scope: !564)
!566 = !DILocation(line: 248, column: 2, scope: !564)
!567 = !DILocation(line: 246, column: 23, scope: !561)
!568 = !DILocation(line: 246, column: 2, scope: !561)
!569 = distinct !{!569, !562, !570, !443}
!570 = !DILocation(line: 248, column: 2, scope: !558)
!571 = !DILocation(line: 249, column: 18, scope: !546)
!572 = !DILocation(line: 249, column: 2, scope: !546)
!573 = !DILocation(line: 250, column: 26, scope: !546)
!574 = !DILocation(line: 250, column: 2, scope: !546)
!575 = !DILocation(line: 251, column: 18, scope: !546)
!576 = !DILocation(line: 251, column: 2, scope: !546)
!577 = !DILocation(line: 252, column: 9, scope: !546)
!578 = !DILocation(line: 252, column: 2, scope: !546)
!579 = distinct !DISubprogram(name: "br_aes_ct_skey_expand", scope: !3, file: !3, line: 313, type: !580, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !41, !10, !582}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!584 = !DILocalVariable(name: "skey", arg: 1, scope: !579, file: !3, line: 313, type: !41)
!585 = !DILocation(line: 0, scope: !579)
!586 = !DILocalVariable(name: "num_rounds", arg: 2, scope: !579, file: !3, line: 314, type: !10)
!587 = !DILocalVariable(name: "comp_skey", arg: 3, scope: !579, file: !3, line: 314, type: !582)
!588 = !DILocation(line: 318, column: 18, scope: !579)
!589 = !DILocation(line: 318, column: 23, scope: !579)
!590 = !DILocalVariable(name: "n", scope: !579, file: !3, line: 316, type: !10)
!591 = !DILocalVariable(name: "u", scope: !579, file: !3, line: 316, type: !10)
!592 = !DILocalVariable(name: "v", scope: !579, file: !3, line: 316, type: !10)
!593 = !DILocation(line: 319, column: 7, scope: !594)
!594 = distinct !DILexicalBlock(scope: !579, file: !3, line: 319, column: 2)
!595 = !DILocation(line: 0, scope: !594)
!596 = !DILocation(line: 319, column: 23, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !3, line: 319, column: 2)
!598 = !DILocation(line: 319, column: 2, scope: !594)
!599 = !DILocation(line: 322, column: 11, scope: !600)
!600 = distinct !DILexicalBlock(scope: !597, file: !3, line: 319, column: 42)
!601 = !DILocalVariable(name: "y", scope: !600, file: !3, line: 320, type: !6)
!602 = !DILocation(line: 0, scope: !600)
!603 = !DILocalVariable(name: "x", scope: !600, file: !3, line: 320, type: !6)
!604 = !DILocation(line: 323, column: 5, scope: !600)
!605 = !DILocation(line: 324, column: 24, scope: !600)
!606 = !DILocation(line: 324, column: 19, scope: !600)
!607 = !DILocation(line: 324, column: 10, scope: !600)
!608 = !DILocation(line: 324, column: 3, scope: !600)
!609 = !DILocation(line: 324, column: 15, scope: !600)
!610 = !DILocation(line: 325, column: 5, scope: !600)
!611 = !DILocation(line: 326, column: 24, scope: !600)
!612 = !DILocation(line: 326, column: 19, scope: !600)
!613 = !DILocation(line: 326, column: 10, scope: !600)
!614 = !DILocation(line: 326, column: 3, scope: !600)
!615 = !DILocation(line: 326, column: 15, scope: !600)
!616 = !DILocation(line: 327, column: 2, scope: !600)
!617 = !DILocation(line: 319, column: 30, scope: !597)
!618 = !DILocation(line: 319, column: 36, scope: !597)
!619 = !DILocation(line: 319, column: 2, scope: !597)
!620 = distinct !{!620, !598, !621, !443}
!621 = !DILocation(line: 327, column: 2, scope: !594)
!622 = !DILocation(line: 328, column: 1, scope: !579)
!623 = distinct !DISubprogram(name: "br_aes_ct_bitslice_encrypt", scope: !31, file: !31, line: 97, type: !624, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !4)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !10, !582, !41}
!626 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !623, file: !31, line: 97, type: !10)
!627 = !DILocation(line: 0, scope: !623)
!628 = !DILocalVariable(name: "skey", arg: 2, scope: !623, file: !31, line: 98, type: !582)
!629 = !DILocalVariable(name: "q", arg: 3, scope: !623, file: !31, line: 98, type: !41)
!630 = !DILocation(line: 102, column: 2, scope: !623)
!631 = !DILocalVariable(name: "u", scope: !623, file: !31, line: 100, type: !10)
!632 = !DILocation(line: 103, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !623, file: !31, line: 103, column: 2)
!634 = !DILocation(line: 0, scope: !633)
!635 = !DILocation(line: 103, column: 16, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !31, line: 103, column: 2)
!637 = !DILocation(line: 103, column: 2, scope: !633)
!638 = !DILocation(line: 104, column: 3, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !31, line: 103, column: 36)
!640 = !DILocation(line: 105, column: 3, scope: !639)
!641 = !DILocation(line: 106, column: 3, scope: !639)
!642 = !DILocation(line: 107, column: 30, scope: !639)
!643 = !DILocation(line: 107, column: 25, scope: !639)
!644 = !DILocation(line: 107, column: 3, scope: !639)
!645 = !DILocation(line: 108, column: 2, scope: !639)
!646 = !DILocation(line: 103, column: 32, scope: !636)
!647 = !DILocation(line: 103, column: 2, scope: !636)
!648 = distinct !{!648, !637, !649, !443}
!649 = !DILocation(line: 108, column: 2, scope: !633)
!650 = !DILocation(line: 109, column: 2, scope: !623)
!651 = !DILocation(line: 110, column: 2, scope: !623)
!652 = !DILocation(line: 111, column: 38, scope: !623)
!653 = !DILocation(line: 111, column: 24, scope: !623)
!654 = !DILocation(line: 111, column: 2, scope: !623)
!655 = !DILocation(line: 112, column: 1, scope: !623)
!656 = distinct !DISubprogram(name: "add_round_key", scope: !31, file: !31, line: 28, type: !657, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, retainedNodes: !4)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !41, !582}
!659 = !DILocalVariable(name: "q", arg: 1, scope: !656, file: !31, line: 28, type: !41)
!660 = !DILocation(line: 0, scope: !656)
!661 = !DILocalVariable(name: "sk", arg: 2, scope: !656, file: !31, line: 28, type: !582)
!662 = !DILocation(line: 30, column: 10, scope: !656)
!663 = !DILocation(line: 30, column: 2, scope: !656)
!664 = !DILocation(line: 30, column: 7, scope: !656)
!665 = !DILocation(line: 31, column: 10, scope: !656)
!666 = !DILocation(line: 31, column: 2, scope: !656)
!667 = !DILocation(line: 31, column: 7, scope: !656)
!668 = !DILocation(line: 32, column: 10, scope: !656)
!669 = !DILocation(line: 32, column: 2, scope: !656)
!670 = !DILocation(line: 32, column: 7, scope: !656)
!671 = !DILocation(line: 33, column: 10, scope: !656)
!672 = !DILocation(line: 33, column: 2, scope: !656)
!673 = !DILocation(line: 33, column: 7, scope: !656)
!674 = !DILocation(line: 34, column: 10, scope: !656)
!675 = !DILocation(line: 34, column: 2, scope: !656)
!676 = !DILocation(line: 34, column: 7, scope: !656)
!677 = !DILocation(line: 35, column: 10, scope: !656)
!678 = !DILocation(line: 35, column: 2, scope: !656)
!679 = !DILocation(line: 35, column: 7, scope: !656)
!680 = !DILocation(line: 36, column: 10, scope: !656)
!681 = !DILocation(line: 36, column: 2, scope: !656)
!682 = !DILocation(line: 36, column: 7, scope: !656)
!683 = !DILocation(line: 37, column: 10, scope: !656)
!684 = !DILocation(line: 37, column: 2, scope: !656)
!685 = !DILocation(line: 37, column: 7, scope: !656)
!686 = !DILocation(line: 38, column: 1, scope: !656)
!687 = distinct !DISubprogram(name: "shift_rows", scope: !31, file: !31, line: 41, type: !39, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, retainedNodes: !4)
!688 = !DILocalVariable(name: "q", arg: 1, scope: !687, file: !31, line: 41, type: !41)
!689 = !DILocation(line: 0, scope: !687)
!690 = !DILocalVariable(name: "i", scope: !687, file: !31, line: 43, type: !11)
!691 = !DILocation(line: 45, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !687, file: !31, line: 45, column: 2)
!693 = !DILocation(line: 0, scope: !692)
!694 = !DILocation(line: 45, column: 16, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !31, line: 45, column: 2)
!696 = !DILocation(line: 45, column: 2, scope: !692)
!697 = !DILocation(line: 48, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !31, line: 45, column: 27)
!699 = !DILocalVariable(name: "x", scope: !698, file: !31, line: 46, type: !6)
!700 = !DILocation(line: 0, scope: !698)
!701 = !DILocation(line: 49, column: 13, scope: !698)
!702 = !DILocation(line: 50, column: 10, scope: !698)
!703 = !DILocation(line: 50, column: 24, scope: !698)
!704 = !DILocation(line: 50, column: 4, scope: !698)
!705 = !DILocation(line: 50, column: 36, scope: !698)
!706 = !DILocation(line: 50, column: 50, scope: !698)
!707 = !DILocation(line: 50, column: 30, scope: !698)
!708 = !DILocation(line: 51, column: 10, scope: !698)
!709 = !DILocation(line: 51, column: 24, scope: !698)
!710 = !DILocation(line: 51, column: 4, scope: !698)
!711 = !DILocation(line: 51, column: 36, scope: !698)
!712 = !DILocation(line: 51, column: 50, scope: !698)
!713 = !DILocation(line: 51, column: 30, scope: !698)
!714 = !DILocation(line: 52, column: 10, scope: !698)
!715 = !DILocation(line: 52, column: 24, scope: !698)
!716 = !DILocation(line: 52, column: 4, scope: !698)
!717 = !DILocation(line: 52, column: 36, scope: !698)
!718 = !DILocation(line: 52, column: 50, scope: !698)
!719 = !DILocation(line: 52, column: 30, scope: !698)
!720 = !DILocation(line: 49, column: 3, scope: !698)
!721 = !DILocation(line: 49, column: 8, scope: !698)
!722 = !DILocation(line: 53, column: 2, scope: !698)
!723 = !DILocation(line: 45, column: 23, scope: !695)
!724 = !DILocation(line: 45, column: 2, scope: !695)
!725 = distinct !{!725, !696, !726, !443}
!726 = !DILocation(line: 53, column: 2, scope: !692)
!727 = !DILocation(line: 54, column: 1, scope: !687)
!728 = distinct !DISubprogram(name: "mix_columns", scope: !31, file: !31, line: 63, type: !39, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, retainedNodes: !4)
!729 = !DILocalVariable(name: "q", arg: 1, scope: !728, file: !31, line: 63, type: !41)
!730 = !DILocation(line: 0, scope: !728)
!731 = !DILocation(line: 68, column: 7, scope: !728)
!732 = !DILocalVariable(name: "q0", scope: !728, file: !31, line: 65, type: !6)
!733 = !DILocation(line: 69, column: 7, scope: !728)
!734 = !DILocalVariable(name: "q1", scope: !728, file: !31, line: 65, type: !6)
!735 = !DILocation(line: 70, column: 7, scope: !728)
!736 = !DILocalVariable(name: "q2", scope: !728, file: !31, line: 65, type: !6)
!737 = !DILocation(line: 71, column: 7, scope: !728)
!738 = !DILocalVariable(name: "q3", scope: !728, file: !31, line: 65, type: !6)
!739 = !DILocation(line: 72, column: 7, scope: !728)
!740 = !DILocalVariable(name: "q4", scope: !728, file: !31, line: 65, type: !6)
!741 = !DILocation(line: 73, column: 7, scope: !728)
!742 = !DILocalVariable(name: "q5", scope: !728, file: !31, line: 65, type: !6)
!743 = !DILocation(line: 74, column: 7, scope: !728)
!744 = !DILocalVariable(name: "q6", scope: !728, file: !31, line: 65, type: !6)
!745 = !DILocation(line: 75, column: 7, scope: !728)
!746 = !DILocalVariable(name: "q7", scope: !728, file: !31, line: 65, type: !6)
!747 = !DILocation(line: 76, column: 11, scope: !728)
!748 = !DILocation(line: 76, column: 23, scope: !728)
!749 = !DILocation(line: 76, column: 17, scope: !728)
!750 = !DILocalVariable(name: "r0", scope: !728, file: !31, line: 66, type: !6)
!751 = !DILocation(line: 77, column: 11, scope: !728)
!752 = !DILocation(line: 77, column: 23, scope: !728)
!753 = !DILocation(line: 77, column: 17, scope: !728)
!754 = !DILocalVariable(name: "r1", scope: !728, file: !31, line: 66, type: !6)
!755 = !DILocation(line: 78, column: 11, scope: !728)
!756 = !DILocation(line: 78, column: 23, scope: !728)
!757 = !DILocation(line: 78, column: 17, scope: !728)
!758 = !DILocalVariable(name: "r2", scope: !728, file: !31, line: 66, type: !6)
!759 = !DILocation(line: 79, column: 11, scope: !728)
!760 = !DILocation(line: 79, column: 23, scope: !728)
!761 = !DILocation(line: 79, column: 17, scope: !728)
!762 = !DILocalVariable(name: "r3", scope: !728, file: !31, line: 66, type: !6)
!763 = !DILocation(line: 80, column: 11, scope: !728)
!764 = !DILocation(line: 80, column: 23, scope: !728)
!765 = !DILocation(line: 80, column: 17, scope: !728)
!766 = !DILocalVariable(name: "r4", scope: !728, file: !31, line: 66, type: !6)
!767 = !DILocation(line: 81, column: 11, scope: !728)
!768 = !DILocation(line: 81, column: 23, scope: !728)
!769 = !DILocation(line: 81, column: 17, scope: !728)
!770 = !DILocalVariable(name: "r5", scope: !728, file: !31, line: 66, type: !6)
!771 = !DILocation(line: 82, column: 11, scope: !728)
!772 = !DILocation(line: 82, column: 23, scope: !728)
!773 = !DILocation(line: 82, column: 17, scope: !728)
!774 = !DILocalVariable(name: "r6", scope: !728, file: !31, line: 66, type: !6)
!775 = !DILocation(line: 83, column: 11, scope: !728)
!776 = !DILocation(line: 83, column: 23, scope: !728)
!777 = !DILocation(line: 83, column: 17, scope: !728)
!778 = !DILocalVariable(name: "r7", scope: !728, file: !31, line: 66, type: !6)
!779 = !DILocation(line: 85, column: 12, scope: !728)
!780 = !DILocation(line: 85, column: 17, scope: !728)
!781 = !DILocation(line: 85, column: 34, scope: !728)
!782 = !DILocation(line: 85, column: 24, scope: !728)
!783 = !DILocation(line: 85, column: 22, scope: !728)
!784 = !DILocation(line: 85, column: 2, scope: !728)
!785 = !DILocation(line: 85, column: 7, scope: !728)
!786 = !DILocation(line: 86, column: 12, scope: !728)
!787 = !DILocation(line: 86, column: 17, scope: !728)
!788 = !DILocation(line: 86, column: 22, scope: !728)
!789 = !DILocation(line: 86, column: 27, scope: !728)
!790 = !DILocation(line: 86, column: 44, scope: !728)
!791 = !DILocation(line: 86, column: 34, scope: !728)
!792 = !DILocation(line: 86, column: 32, scope: !728)
!793 = !DILocation(line: 86, column: 2, scope: !728)
!794 = !DILocation(line: 86, column: 7, scope: !728)
!795 = !DILocation(line: 87, column: 12, scope: !728)
!796 = !DILocation(line: 87, column: 17, scope: !728)
!797 = !DILocation(line: 87, column: 34, scope: !728)
!798 = !DILocation(line: 87, column: 24, scope: !728)
!799 = !DILocation(line: 87, column: 22, scope: !728)
!800 = !DILocation(line: 87, column: 2, scope: !728)
!801 = !DILocation(line: 87, column: 7, scope: !728)
!802 = !DILocation(line: 88, column: 12, scope: !728)
!803 = !DILocation(line: 88, column: 17, scope: !728)
!804 = !DILocation(line: 88, column: 22, scope: !728)
!805 = !DILocation(line: 88, column: 27, scope: !728)
!806 = !DILocation(line: 88, column: 44, scope: !728)
!807 = !DILocation(line: 88, column: 34, scope: !728)
!808 = !DILocation(line: 88, column: 32, scope: !728)
!809 = !DILocation(line: 88, column: 2, scope: !728)
!810 = !DILocation(line: 88, column: 7, scope: !728)
!811 = !DILocation(line: 89, column: 12, scope: !728)
!812 = !DILocation(line: 89, column: 17, scope: !728)
!813 = !DILocation(line: 89, column: 22, scope: !728)
!814 = !DILocation(line: 89, column: 27, scope: !728)
!815 = !DILocation(line: 89, column: 44, scope: !728)
!816 = !DILocation(line: 89, column: 34, scope: !728)
!817 = !DILocation(line: 89, column: 32, scope: !728)
!818 = !DILocation(line: 89, column: 2, scope: !728)
!819 = !DILocation(line: 89, column: 7, scope: !728)
!820 = !DILocation(line: 90, column: 12, scope: !728)
!821 = !DILocation(line: 90, column: 17, scope: !728)
!822 = !DILocation(line: 90, column: 34, scope: !728)
!823 = !DILocation(line: 90, column: 24, scope: !728)
!824 = !DILocation(line: 90, column: 22, scope: !728)
!825 = !DILocation(line: 90, column: 2, scope: !728)
!826 = !DILocation(line: 90, column: 7, scope: !728)
!827 = !DILocation(line: 91, column: 12, scope: !728)
!828 = !DILocation(line: 91, column: 17, scope: !728)
!829 = !DILocation(line: 91, column: 34, scope: !728)
!830 = !DILocation(line: 91, column: 24, scope: !728)
!831 = !DILocation(line: 91, column: 22, scope: !728)
!832 = !DILocation(line: 91, column: 2, scope: !728)
!833 = !DILocation(line: 91, column: 7, scope: !728)
!834 = !DILocation(line: 92, column: 12, scope: !728)
!835 = !DILocation(line: 92, column: 17, scope: !728)
!836 = !DILocation(line: 92, column: 34, scope: !728)
!837 = !DILocation(line: 92, column: 24, scope: !728)
!838 = !DILocation(line: 92, column: 22, scope: !728)
!839 = !DILocation(line: 92, column: 2, scope: !728)
!840 = !DILocation(line: 92, column: 7, scope: !728)
!841 = !DILocation(line: 93, column: 1, scope: !728)
!842 = distinct !DISubprogram(name: "rotr16", scope: !31, file: !31, line: 57, type: !547, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, retainedNodes: !4)
!843 = !DILocalVariable(name: "x", arg: 1, scope: !842, file: !31, line: 57, type: !6)
!844 = !DILocation(line: 0, scope: !842)
!845 = !DILocation(line: 59, column: 12, scope: !842)
!846 = !DILocation(line: 59, column: 24, scope: !842)
!847 = !DILocation(line: 59, column: 19, scope: !842)
!848 = !DILocation(line: 59, column: 2, scope: !842)
!849 = distinct !DISubprogram(name: "bitslice_encrypt_wrapper", scope: !33, file: !33, line: 3, type: !850, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !4)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !10, !582, !852}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!853 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !849, file: !33, line: 3, type: !10)
!854 = !DILocation(line: 0, scope: !849)
!855 = !DILocalVariable(name: "skey", arg: 2, scope: !849, file: !33, line: 3, type: !582)
!856 = !DILocalVariable(name: "data", arg: 3, scope: !849, file: !33, line: 3, type: !852)
!857 = !DILocation(line: 4, column: 12, scope: !849)
!858 = !DILocation(line: 4, column: 2, scope: !849)
!859 = !DILocation(line: 5, column: 12, scope: !849)
!860 = !DILocation(line: 5, column: 2, scope: !849)
!861 = !DILocation(line: 6, column: 12, scope: !849)
!862 = !DILocation(line: 6, column: 2, scope: !849)
!863 = !DILocation(line: 8, column: 12, scope: !849)
!864 = !DILocation(line: 8, column: 2, scope: !849)
!865 = !DILocation(line: 10, column: 47, scope: !849)
!866 = !DILocation(line: 10, column: 2, scope: !849)
!867 = !DILocation(line: 11, column: 1, scope: !849)
!868 = distinct !DISubprogram(name: "bitslice_encrypt_wrapper_t", scope: !33, file: !33, line: 18, type: !869, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !4)
!869 = !DISubroutineType(types: !870)
!870 = !{null}
!871 = !DILocation(line: 19, column: 24, scope: !868)
!872 = !DILocalVariable(name: "num_rounds", scope: !868, file: !33, line: 19, type: !10)
!873 = !DILocation(line: 0, scope: !868)
!874 = !DILocation(line: 20, column: 25, scope: !868)
!875 = !DILocalVariable(name: "skey", scope: !868, file: !33, line: 20, type: !582)
!876 = !DILocation(line: 21, column: 15, scope: !868)
!877 = !DILocalVariable(name: "data", scope: !868, file: !33, line: 21, type: !852)
!878 = !DILocation(line: 22, column: 47, scope: !868)
!879 = !DILocation(line: 22, column: 2, scope: !868)
!880 = !DILocation(line: 23, column: 1, scope: !868)
