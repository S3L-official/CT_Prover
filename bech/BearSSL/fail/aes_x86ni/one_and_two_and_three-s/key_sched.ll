; ModuleID = 'key_sched.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.br_union_u32 = type { i32 }
%struct.smack_value = type { i8* }

@Rcon = internal constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct_bitslice_Sbox(i32* %0) #0 !dbg !36 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !40, metadata !DIExpression()), !dbg !41
  %2 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !42
  %3 = load i32, i32* %2, align 4, !dbg !42
  call void @llvm.dbg.value(metadata i32 %3, metadata !43, metadata !DIExpression()), !dbg !41
  %4 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !44
  %5 = load i32, i32* %4, align 4, !dbg !44
  call void @llvm.dbg.value(metadata i32 %5, metadata !45, metadata !DIExpression()), !dbg !41
  %6 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !46
  %7 = load i32, i32* %6, align 4, !dbg !46
  call void @llvm.dbg.value(metadata i32 %7, metadata !47, metadata !DIExpression()), !dbg !41
  %8 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !48
  %9 = load i32, i32* %8, align 4, !dbg !48
  call void @llvm.dbg.value(metadata i32 %9, metadata !49, metadata !DIExpression()), !dbg !41
  %10 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !50
  %11 = load i32, i32* %10, align 4, !dbg !50
  call void @llvm.dbg.value(metadata i32 %11, metadata !51, metadata !DIExpression()), !dbg !41
  %12 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !52
  %13 = load i32, i32* %12, align 4, !dbg !52
  call void @llvm.dbg.value(metadata i32 %13, metadata !53, metadata !DIExpression()), !dbg !41
  %14 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !54
  %15 = load i32, i32* %14, align 4, !dbg !54
  call void @llvm.dbg.value(metadata i32 %15, metadata !55, metadata !DIExpression()), !dbg !41
  %16 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !56
  %17 = load i32, i32* %16, align 4, !dbg !56
  call void @llvm.dbg.value(metadata i32 %17, metadata !57, metadata !DIExpression()), !dbg !41
  %18 = xor i32 %9, %13, !dbg !58
  call void @llvm.dbg.value(metadata i32 %18, metadata !59, metadata !DIExpression()), !dbg !41
  %19 = xor i32 %3, %15, !dbg !60
  call void @llvm.dbg.value(metadata i32 %19, metadata !61, metadata !DIExpression()), !dbg !41
  %20 = xor i32 %3, %9, !dbg !62
  call void @llvm.dbg.value(metadata i32 %20, metadata !63, metadata !DIExpression()), !dbg !41
  %21 = xor i32 %3, %13, !dbg !64
  call void @llvm.dbg.value(metadata i32 %21, metadata !65, metadata !DIExpression()), !dbg !41
  %22 = xor i32 %5, %7, !dbg !66
  call void @llvm.dbg.value(metadata i32 %22, metadata !67, metadata !DIExpression()), !dbg !41
  %23 = xor i32 %22, %17, !dbg !68
  call void @llvm.dbg.value(metadata i32 %23, metadata !69, metadata !DIExpression()), !dbg !41
  %24 = xor i32 %23, %9, !dbg !70
  call void @llvm.dbg.value(metadata i32 %24, metadata !71, metadata !DIExpression()), !dbg !41
  %25 = xor i32 %19, %18, !dbg !72
  call void @llvm.dbg.value(metadata i32 %25, metadata !73, metadata !DIExpression()), !dbg !41
  %26 = xor i32 %23, %3, !dbg !74
  call void @llvm.dbg.value(metadata i32 %26, metadata !75, metadata !DIExpression()), !dbg !41
  %27 = xor i32 %23, %15, !dbg !76
  call void @llvm.dbg.value(metadata i32 %27, metadata !77, metadata !DIExpression()), !dbg !41
  %28 = xor i32 %27, %21, !dbg !78
  call void @llvm.dbg.value(metadata i32 %28, metadata !79, metadata !DIExpression()), !dbg !41
  %29 = xor i32 %11, %25, !dbg !80
  call void @llvm.dbg.value(metadata i32 %29, metadata !81, metadata !DIExpression()), !dbg !41
  %30 = xor i32 %29, %13, !dbg !82
  call void @llvm.dbg.value(metadata i32 %30, metadata !83, metadata !DIExpression()), !dbg !41
  %31 = xor i32 %29, %5, !dbg !84
  call void @llvm.dbg.value(metadata i32 %31, metadata !85, metadata !DIExpression()), !dbg !41
  %32 = xor i32 %30, %17, !dbg !86
  call void @llvm.dbg.value(metadata i32 %32, metadata !87, metadata !DIExpression()), !dbg !41
  %33 = xor i32 %30, %22, !dbg !88
  call void @llvm.dbg.value(metadata i32 %33, metadata !89, metadata !DIExpression()), !dbg !41
  %34 = xor i32 %31, %20, !dbg !90
  call void @llvm.dbg.value(metadata i32 %34, metadata !91, metadata !DIExpression()), !dbg !41
  %35 = xor i32 %17, %34, !dbg !92
  call void @llvm.dbg.value(metadata i32 %35, metadata !93, metadata !DIExpression()), !dbg !41
  %36 = xor i32 %33, %34, !dbg !94
  call void @llvm.dbg.value(metadata i32 %36, metadata !95, metadata !DIExpression()), !dbg !41
  %37 = xor i32 %33, %21, !dbg !96
  call void @llvm.dbg.value(metadata i32 %37, metadata !97, metadata !DIExpression()), !dbg !41
  %38 = xor i32 %22, %34, !dbg !98
  call void @llvm.dbg.value(metadata i32 %38, metadata !99, metadata !DIExpression()), !dbg !41
  %39 = xor i32 %19, %38, !dbg !100
  call void @llvm.dbg.value(metadata i32 %39, metadata !101, metadata !DIExpression()), !dbg !41
  %40 = xor i32 %3, %38, !dbg !102
  call void @llvm.dbg.value(metadata i32 %40, metadata !103, metadata !DIExpression()), !dbg !41
  %41 = and i32 %25, %30, !dbg !104
  call void @llvm.dbg.value(metadata i32 %41, metadata !105, metadata !DIExpression()), !dbg !41
  %42 = and i32 %28, %32, !dbg !106
  call void @llvm.dbg.value(metadata i32 %42, metadata !107, metadata !DIExpression()), !dbg !41
  %43 = xor i32 %42, %41, !dbg !108
  call void @llvm.dbg.value(metadata i32 %43, metadata !109, metadata !DIExpression()), !dbg !41
  %44 = and i32 %24, %17, !dbg !110
  call void @llvm.dbg.value(metadata i32 %44, metadata !111, metadata !DIExpression()), !dbg !41
  %45 = xor i32 %44, %41, !dbg !112
  call void @llvm.dbg.value(metadata i32 %45, metadata !113, metadata !DIExpression()), !dbg !41
  %46 = and i32 %19, %38, !dbg !114
  call void @llvm.dbg.value(metadata i32 %46, metadata !115, metadata !DIExpression()), !dbg !41
  %47 = and i32 %27, %23, !dbg !116
  call void @llvm.dbg.value(metadata i32 %47, metadata !117, metadata !DIExpression()), !dbg !41
  %48 = xor i32 %47, %46, !dbg !118
  call void @llvm.dbg.value(metadata i32 %48, metadata !119, metadata !DIExpression()), !dbg !41
  %49 = and i32 %26, %35, !dbg !120
  call void @llvm.dbg.value(metadata i32 %49, metadata !121, metadata !DIExpression()), !dbg !41
  %50 = xor i32 %49, %46, !dbg !122
  call void @llvm.dbg.value(metadata i32 %50, metadata !123, metadata !DIExpression()), !dbg !41
  %51 = and i32 %20, %34, !dbg !124
  call void @llvm.dbg.value(metadata i32 %51, metadata !125, metadata !DIExpression()), !dbg !41
  %52 = and i32 %18, %36, !dbg !126
  call void @llvm.dbg.value(metadata i32 %52, metadata !127, metadata !DIExpression()), !dbg !41
  %53 = xor i32 %52, %51, !dbg !128
  call void @llvm.dbg.value(metadata i32 %53, metadata !129, metadata !DIExpression()), !dbg !41
  %54 = and i32 %21, %33, !dbg !130
  call void @llvm.dbg.value(metadata i32 %54, metadata !131, metadata !DIExpression()), !dbg !41
  %55 = xor i32 %54, %51, !dbg !132
  call void @llvm.dbg.value(metadata i32 %55, metadata !133, metadata !DIExpression()), !dbg !41
  %56 = xor i32 %43, %53, !dbg !134
  call void @llvm.dbg.value(metadata i32 %56, metadata !135, metadata !DIExpression()), !dbg !41
  %57 = xor i32 %45, %55, !dbg !136
  call void @llvm.dbg.value(metadata i32 %57, metadata !137, metadata !DIExpression()), !dbg !41
  %58 = xor i32 %48, %53, !dbg !138
  call void @llvm.dbg.value(metadata i32 %58, metadata !139, metadata !DIExpression()), !dbg !41
  %59 = xor i32 %50, %55, !dbg !140
  call void @llvm.dbg.value(metadata i32 %59, metadata !141, metadata !DIExpression()), !dbg !41
  %60 = xor i32 %56, %31, !dbg !142
  call void @llvm.dbg.value(metadata i32 %60, metadata !143, metadata !DIExpression()), !dbg !41
  %61 = xor i32 %57, %37, !dbg !144
  call void @llvm.dbg.value(metadata i32 %61, metadata !145, metadata !DIExpression()), !dbg !41
  %62 = xor i32 %58, %39, !dbg !146
  call void @llvm.dbg.value(metadata i32 %62, metadata !147, metadata !DIExpression()), !dbg !41
  %63 = xor i32 %59, %40, !dbg !148
  call void @llvm.dbg.value(metadata i32 %63, metadata !149, metadata !DIExpression()), !dbg !41
  %64 = xor i32 %60, %61, !dbg !150
  call void @llvm.dbg.value(metadata i32 %64, metadata !151, metadata !DIExpression()), !dbg !41
  %65 = and i32 %60, %62, !dbg !152
  call void @llvm.dbg.value(metadata i32 %65, metadata !153, metadata !DIExpression()), !dbg !41
  %66 = xor i32 %63, %65, !dbg !154
  call void @llvm.dbg.value(metadata i32 %66, metadata !155, metadata !DIExpression()), !dbg !41
  %67 = and i32 %64, %66, !dbg !156
  call void @llvm.dbg.value(metadata i32 %67, metadata !157, metadata !DIExpression()), !dbg !41
  %68 = xor i32 %67, %61, !dbg !158
  call void @llvm.dbg.value(metadata i32 %68, metadata !159, metadata !DIExpression()), !dbg !41
  %69 = xor i32 %62, %63, !dbg !160
  call void @llvm.dbg.value(metadata i32 %69, metadata !161, metadata !DIExpression()), !dbg !41
  %70 = xor i32 %61, %65, !dbg !162
  call void @llvm.dbg.value(metadata i32 %70, metadata !163, metadata !DIExpression()), !dbg !41
  %71 = and i32 %70, %69, !dbg !164
  call void @llvm.dbg.value(metadata i32 %71, metadata !165, metadata !DIExpression()), !dbg !41
  %72 = xor i32 %71, %63, !dbg !166
  call void @llvm.dbg.value(metadata i32 %72, metadata !167, metadata !DIExpression()), !dbg !41
  %73 = xor i32 %62, %72, !dbg !168
  call void @llvm.dbg.value(metadata i32 %73, metadata !169, metadata !DIExpression()), !dbg !41
  %74 = xor i32 %66, %72, !dbg !170
  call void @llvm.dbg.value(metadata i32 %74, metadata !171, metadata !DIExpression()), !dbg !41
  %75 = and i32 %63, %74, !dbg !172
  call void @llvm.dbg.value(metadata i32 %75, metadata !173, metadata !DIExpression()), !dbg !41
  %76 = xor i32 %75, %73, !dbg !174
  call void @llvm.dbg.value(metadata i32 %76, metadata !175, metadata !DIExpression()), !dbg !41
  %77 = xor i32 %66, %75, !dbg !176
  call void @llvm.dbg.value(metadata i32 %77, metadata !177, metadata !DIExpression()), !dbg !41
  %78 = and i32 %68, %77, !dbg !178
  call void @llvm.dbg.value(metadata i32 %78, metadata !179, metadata !DIExpression()), !dbg !41
  %79 = xor i32 %64, %78, !dbg !180
  call void @llvm.dbg.value(metadata i32 %79, metadata !181, metadata !DIExpression()), !dbg !41
  %80 = xor i32 %79, %76, !dbg !182
  call void @llvm.dbg.value(metadata i32 %80, metadata !183, metadata !DIExpression()), !dbg !41
  %81 = xor i32 %68, %72, !dbg !184
  call void @llvm.dbg.value(metadata i32 %81, metadata !185, metadata !DIExpression()), !dbg !41
  %82 = xor i32 %68, %79, !dbg !186
  call void @llvm.dbg.value(metadata i32 %82, metadata !187, metadata !DIExpression()), !dbg !41
  %83 = xor i32 %72, %76, !dbg !188
  call void @llvm.dbg.value(metadata i32 %83, metadata !189, metadata !DIExpression()), !dbg !41
  %84 = xor i32 %81, %80, !dbg !190
  call void @llvm.dbg.value(metadata i32 %84, metadata !191, metadata !DIExpression()), !dbg !41
  %85 = and i32 %83, %30, !dbg !192
  call void @llvm.dbg.value(metadata i32 %85, metadata !193, metadata !DIExpression()), !dbg !41
  %86 = and i32 %76, %32, !dbg !194
  call void @llvm.dbg.value(metadata i32 %86, metadata !195, metadata !DIExpression()), !dbg !41
  %87 = and i32 %72, %17, !dbg !196
  call void @llvm.dbg.value(metadata i32 %87, metadata !197, metadata !DIExpression()), !dbg !41
  %88 = and i32 %82, %38, !dbg !198
  call void @llvm.dbg.value(metadata i32 %88, metadata !199, metadata !DIExpression()), !dbg !41
  %89 = and i32 %79, %23, !dbg !200
  call void @llvm.dbg.value(metadata i32 %89, metadata !201, metadata !DIExpression()), !dbg !41
  %90 = and i32 %68, %35, !dbg !202
  call void @llvm.dbg.value(metadata i32 %90, metadata !203, metadata !DIExpression()), !dbg !41
  %91 = and i32 %81, %34, !dbg !204
  call void @llvm.dbg.value(metadata i32 %91, metadata !205, metadata !DIExpression()), !dbg !41
  %92 = and i32 %84, %36, !dbg !206
  call void @llvm.dbg.value(metadata i32 %92, metadata !207, metadata !DIExpression()), !dbg !41
  %93 = and i32 %80, %33, !dbg !208
  call void @llvm.dbg.value(metadata i32 %93, metadata !209, metadata !DIExpression()), !dbg !41
  %94 = and i32 %83, %25, !dbg !210
  call void @llvm.dbg.value(metadata i32 %94, metadata !211, metadata !DIExpression()), !dbg !41
  %95 = and i32 %76, %28, !dbg !212
  call void @llvm.dbg.value(metadata i32 %95, metadata !213, metadata !DIExpression()), !dbg !41
  %96 = and i32 %72, %24, !dbg !214
  call void @llvm.dbg.value(metadata i32 %96, metadata !215, metadata !DIExpression()), !dbg !41
  %97 = and i32 %82, %19, !dbg !216
  call void @llvm.dbg.value(metadata i32 %97, metadata !217, metadata !DIExpression()), !dbg !41
  %98 = and i32 %79, %27, !dbg !218
  call void @llvm.dbg.value(metadata i32 %98, metadata !219, metadata !DIExpression()), !dbg !41
  %99 = and i32 %68, %26, !dbg !220
  call void @llvm.dbg.value(metadata i32 %99, metadata !221, metadata !DIExpression()), !dbg !41
  %100 = and i32 %81, %20, !dbg !222
  call void @llvm.dbg.value(metadata i32 %100, metadata !223, metadata !DIExpression()), !dbg !41
  %101 = and i32 %84, %18, !dbg !224
  call void @llvm.dbg.value(metadata i32 %101, metadata !225, metadata !DIExpression()), !dbg !41
  %102 = and i32 %80, %21, !dbg !226
  call void @llvm.dbg.value(metadata i32 %102, metadata !227, metadata !DIExpression()), !dbg !41
  %103 = xor i32 %100, %101, !dbg !228
  call void @llvm.dbg.value(metadata i32 %103, metadata !229, metadata !DIExpression()), !dbg !41
  %104 = xor i32 %95, %96, !dbg !230
  call void @llvm.dbg.value(metadata i32 %104, metadata !231, metadata !DIExpression()), !dbg !41
  %105 = xor i32 %90, %98, !dbg !232
  call void @llvm.dbg.value(metadata i32 %105, metadata !233, metadata !DIExpression()), !dbg !41
  %106 = xor i32 %94, %95, !dbg !234
  call void @llvm.dbg.value(metadata i32 %106, metadata !235, metadata !DIExpression()), !dbg !41
  %107 = xor i32 %87, %97, !dbg !236
  call void @llvm.dbg.value(metadata i32 %107, metadata !237, metadata !DIExpression()), !dbg !41
  %108 = xor i32 %87, %90, !dbg !238
  call void @llvm.dbg.value(metadata i32 %108, metadata !239, metadata !DIExpression()), !dbg !41
  %109 = xor i32 %92, %93, !dbg !240
  call void @llvm.dbg.value(metadata i32 %109, metadata !241, metadata !DIExpression()), !dbg !41
  %110 = xor i32 %85, %88, !dbg !242
  call void @llvm.dbg.value(metadata i32 %110, metadata !243, metadata !DIExpression()), !dbg !41
  %111 = xor i32 %91, %92, !dbg !244
  call void @llvm.dbg.value(metadata i32 %111, metadata !245, metadata !DIExpression()), !dbg !41
  %112 = xor i32 %101, %102, !dbg !246
  call void @llvm.dbg.value(metadata i32 %112, metadata !247, metadata !DIExpression()), !dbg !41
  %113 = xor i32 %97, %105, !dbg !248
  call void @llvm.dbg.value(metadata i32 %113, metadata !249, metadata !DIExpression()), !dbg !41
  %114 = xor i32 %107, %110, !dbg !250
  call void @llvm.dbg.value(metadata i32 %114, metadata !251, metadata !DIExpression()), !dbg !41
  %115 = xor i32 %89, %103, !dbg !252
  call void @llvm.dbg.value(metadata i32 %115, metadata !253, metadata !DIExpression()), !dbg !41
  %116 = xor i32 %88, %111, !dbg !254
  call void @llvm.dbg.value(metadata i32 %116, metadata !255, metadata !DIExpression()), !dbg !41
  %117 = xor i32 %103, %114, !dbg !256
  call void @llvm.dbg.value(metadata i32 %117, metadata !257, metadata !DIExpression()), !dbg !41
  %118 = xor i32 %99, %114, !dbg !258
  call void @llvm.dbg.value(metadata i32 %118, metadata !259, metadata !DIExpression()), !dbg !41
  %119 = xor i32 %109, %115, !dbg !260
  call void @llvm.dbg.value(metadata i32 %119, metadata !261, metadata !DIExpression()), !dbg !41
  %120 = xor i32 %106, %115, !dbg !262
  call void @llvm.dbg.value(metadata i32 %120, metadata !263, metadata !DIExpression()), !dbg !41
  %121 = xor i32 %89, %116, !dbg !264
  call void @llvm.dbg.value(metadata i32 %121, metadata !265, metadata !DIExpression()), !dbg !41
  %122 = xor i32 %118, %119, !dbg !266
  call void @llvm.dbg.value(metadata i32 %122, metadata !267, metadata !DIExpression()), !dbg !41
  %123 = xor i32 %86, %120, !dbg !268
  call void @llvm.dbg.value(metadata i32 %123, metadata !269, metadata !DIExpression()), !dbg !41
  %124 = xor i32 %116, %120, !dbg !270
  call void @llvm.dbg.value(metadata i32 %124, metadata !271, metadata !DIExpression()), !dbg !41
  %125 = xor i32 %119, -1, !dbg !272
  %126 = xor i32 %113, %125, !dbg !273
  call void @llvm.dbg.value(metadata i32 %126, metadata !274, metadata !DIExpression()), !dbg !41
  %127 = xor i32 %117, -1, !dbg !275
  %128 = xor i32 %105, %127, !dbg !276
  call void @llvm.dbg.value(metadata i32 %128, metadata !277, metadata !DIExpression()), !dbg !41
  %129 = xor i32 %121, %122, !dbg !278
  call void @llvm.dbg.value(metadata i32 %129, metadata !279, metadata !DIExpression()), !dbg !41
  %130 = xor i32 %110, %123, !dbg !280
  call void @llvm.dbg.value(metadata i32 %130, metadata !281, metadata !DIExpression()), !dbg !41
  %131 = xor i32 %108, %123, !dbg !282
  call void @llvm.dbg.value(metadata i32 %131, metadata !283, metadata !DIExpression()), !dbg !41
  %132 = xor i32 %104, %122, !dbg !284
  call void @llvm.dbg.value(metadata i32 %132, metadata !285, metadata !DIExpression()), !dbg !41
  %133 = xor i32 %130, -1, !dbg !286
  %134 = xor i32 %121, %133, !dbg !287
  call void @llvm.dbg.value(metadata i32 %134, metadata !288, metadata !DIExpression()), !dbg !41
  %135 = xor i32 %129, -1, !dbg !289
  %136 = xor i32 %112, %135, !dbg !290
  call void @llvm.dbg.value(metadata i32 %136, metadata !291, metadata !DIExpression()), !dbg !41
  %137 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !292
  store i32 %124, i32* %137, align 4, !dbg !293
  %138 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !294
  store i32 %134, i32* %138, align 4, !dbg !295
  %139 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !296
  store i32 %136, i32* %139, align 4, !dbg !297
  %140 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !298
  store i32 %130, i32* %140, align 4, !dbg !299
  %141 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !300
  store i32 %131, i32* %141, align 4, !dbg !301
  %142 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !302
  store i32 %132, i32* %142, align 4, !dbg !303
  %143 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !304
  store i32 %126, i32* %143, align 4, !dbg !305
  %144 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !306
  store i32 %128, i32* %144, align 4, !dbg !307
  ret void, !dbg !308
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct_ortho(i32* %0) #0 !dbg !309 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !310, metadata !DIExpression()), !dbg !311
  br label %2, !dbg !312

2:                                                ; preds = %1
  %3 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !313
  %4 = load i32, i32* %3, align 4, !dbg !313
  call void @llvm.dbg.value(metadata i32 %4, metadata !315, metadata !DIExpression()), !dbg !316
  %5 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !313
  %6 = load i32, i32* %5, align 4, !dbg !313
  call void @llvm.dbg.value(metadata i32 %6, metadata !317, metadata !DIExpression()), !dbg !316
  %7 = and i32 %4, 1431655765, !dbg !313
  %8 = and i32 %6, 1431655765, !dbg !313
  %9 = shl i32 %8, 1, !dbg !313
  %10 = or i32 %7, %9, !dbg !313
  %11 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !313
  store i32 %10, i32* %11, align 4, !dbg !313
  %12 = and i32 %4, -1431655766, !dbg !313
  %13 = lshr i32 %12, 1, !dbg !313
  %14 = and i32 %6, -1431655766, !dbg !313
  %15 = or i32 %13, %14, !dbg !313
  %16 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !313
  store i32 %15, i32* %16, align 4, !dbg !313
  br label %17, !dbg !313

17:                                               ; preds = %2
  br label %18, !dbg !318

18:                                               ; preds = %17
  %19 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !319
  %20 = load i32, i32* %19, align 4, !dbg !319
  call void @llvm.dbg.value(metadata i32 %20, metadata !321, metadata !DIExpression()), !dbg !322
  %21 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !319
  %22 = load i32, i32* %21, align 4, !dbg !319
  call void @llvm.dbg.value(metadata i32 %22, metadata !323, metadata !DIExpression()), !dbg !322
  %23 = and i32 %20, 1431655765, !dbg !319
  %24 = and i32 %22, 1431655765, !dbg !319
  %25 = shl i32 %24, 1, !dbg !319
  %26 = or i32 %23, %25, !dbg !319
  %27 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !319
  store i32 %26, i32* %27, align 4, !dbg !319
  %28 = and i32 %20, -1431655766, !dbg !319
  %29 = lshr i32 %28, 1, !dbg !319
  %30 = and i32 %22, -1431655766, !dbg !319
  %31 = or i32 %29, %30, !dbg !319
  %32 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !319
  store i32 %31, i32* %32, align 4, !dbg !319
  br label %33, !dbg !319

33:                                               ; preds = %18
  br label %34, !dbg !324

34:                                               ; preds = %33
  %35 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !325
  %36 = load i32, i32* %35, align 4, !dbg !325
  call void @llvm.dbg.value(metadata i32 %36, metadata !327, metadata !DIExpression()), !dbg !328
  %37 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !325
  %38 = load i32, i32* %37, align 4, !dbg !325
  call void @llvm.dbg.value(metadata i32 %38, metadata !329, metadata !DIExpression()), !dbg !328
  %39 = and i32 %36, 1431655765, !dbg !325
  %40 = and i32 %38, 1431655765, !dbg !325
  %41 = shl i32 %40, 1, !dbg !325
  %42 = or i32 %39, %41, !dbg !325
  %43 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !325
  store i32 %42, i32* %43, align 4, !dbg !325
  %44 = and i32 %36, -1431655766, !dbg !325
  %45 = lshr i32 %44, 1, !dbg !325
  %46 = and i32 %38, -1431655766, !dbg !325
  %47 = or i32 %45, %46, !dbg !325
  %48 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !325
  store i32 %47, i32* %48, align 4, !dbg !325
  br label %49, !dbg !325

49:                                               ; preds = %34
  br label %50, !dbg !330

50:                                               ; preds = %49
  %51 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !331
  %52 = load i32, i32* %51, align 4, !dbg !331
  call void @llvm.dbg.value(metadata i32 %52, metadata !333, metadata !DIExpression()), !dbg !334
  %53 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !331
  %54 = load i32, i32* %53, align 4, !dbg !331
  call void @llvm.dbg.value(metadata i32 %54, metadata !335, metadata !DIExpression()), !dbg !334
  %55 = and i32 %52, 1431655765, !dbg !331
  %56 = and i32 %54, 1431655765, !dbg !331
  %57 = shl i32 %56, 1, !dbg !331
  %58 = or i32 %55, %57, !dbg !331
  %59 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !331
  store i32 %58, i32* %59, align 4, !dbg !331
  %60 = and i32 %52, -1431655766, !dbg !331
  %61 = lshr i32 %60, 1, !dbg !331
  %62 = and i32 %54, -1431655766, !dbg !331
  %63 = or i32 %61, %62, !dbg !331
  %64 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !331
  store i32 %63, i32* %64, align 4, !dbg !331
  br label %65, !dbg !331

65:                                               ; preds = %50
  br label %66, !dbg !336

66:                                               ; preds = %65
  %67 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !337
  %68 = load i32, i32* %67, align 4, !dbg !337
  call void @llvm.dbg.value(metadata i32 %68, metadata !339, metadata !DIExpression()), !dbg !340
  %69 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !337
  %70 = load i32, i32* %69, align 4, !dbg !337
  call void @llvm.dbg.value(metadata i32 %70, metadata !341, metadata !DIExpression()), !dbg !340
  %71 = and i32 %68, 858993459, !dbg !337
  %72 = and i32 %70, 858993459, !dbg !337
  %73 = shl i32 %72, 2, !dbg !337
  %74 = or i32 %71, %73, !dbg !337
  %75 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !337
  store i32 %74, i32* %75, align 4, !dbg !337
  %76 = and i32 %68, -858993460, !dbg !337
  %77 = lshr i32 %76, 2, !dbg !337
  %78 = and i32 %70, -858993460, !dbg !337
  %79 = or i32 %77, %78, !dbg !337
  %80 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !337
  store i32 %79, i32* %80, align 4, !dbg !337
  br label %81, !dbg !337

81:                                               ; preds = %66
  br label %82, !dbg !342

82:                                               ; preds = %81
  %83 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !343
  %84 = load i32, i32* %83, align 4, !dbg !343
  call void @llvm.dbg.value(metadata i32 %84, metadata !345, metadata !DIExpression()), !dbg !346
  %85 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !343
  %86 = load i32, i32* %85, align 4, !dbg !343
  call void @llvm.dbg.value(metadata i32 %86, metadata !347, metadata !DIExpression()), !dbg !346
  %87 = and i32 %84, 858993459, !dbg !343
  %88 = and i32 %86, 858993459, !dbg !343
  %89 = shl i32 %88, 2, !dbg !343
  %90 = or i32 %87, %89, !dbg !343
  %91 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !343
  store i32 %90, i32* %91, align 4, !dbg !343
  %92 = and i32 %84, -858993460, !dbg !343
  %93 = lshr i32 %92, 2, !dbg !343
  %94 = and i32 %86, -858993460, !dbg !343
  %95 = or i32 %93, %94, !dbg !343
  %96 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !343
  store i32 %95, i32* %96, align 4, !dbg !343
  br label %97, !dbg !343

97:                                               ; preds = %82
  br label %98, !dbg !348

98:                                               ; preds = %97
  %99 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !349
  %100 = load i32, i32* %99, align 4, !dbg !349
  call void @llvm.dbg.value(metadata i32 %100, metadata !351, metadata !DIExpression()), !dbg !352
  %101 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !349
  %102 = load i32, i32* %101, align 4, !dbg !349
  call void @llvm.dbg.value(metadata i32 %102, metadata !353, metadata !DIExpression()), !dbg !352
  %103 = and i32 %100, 858993459, !dbg !349
  %104 = and i32 %102, 858993459, !dbg !349
  %105 = shl i32 %104, 2, !dbg !349
  %106 = or i32 %103, %105, !dbg !349
  %107 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !349
  store i32 %106, i32* %107, align 4, !dbg !349
  %108 = and i32 %100, -858993460, !dbg !349
  %109 = lshr i32 %108, 2, !dbg !349
  %110 = and i32 %102, -858993460, !dbg !349
  %111 = or i32 %109, %110, !dbg !349
  %112 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !349
  store i32 %111, i32* %112, align 4, !dbg !349
  br label %113, !dbg !349

113:                                              ; preds = %98
  br label %114, !dbg !354

114:                                              ; preds = %113
  %115 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !355
  %116 = load i32, i32* %115, align 4, !dbg !355
  call void @llvm.dbg.value(metadata i32 %116, metadata !357, metadata !DIExpression()), !dbg !358
  %117 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !355
  %118 = load i32, i32* %117, align 4, !dbg !355
  call void @llvm.dbg.value(metadata i32 %118, metadata !359, metadata !DIExpression()), !dbg !358
  %119 = and i32 %116, 858993459, !dbg !355
  %120 = and i32 %118, 858993459, !dbg !355
  %121 = shl i32 %120, 2, !dbg !355
  %122 = or i32 %119, %121, !dbg !355
  %123 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !355
  store i32 %122, i32* %123, align 4, !dbg !355
  %124 = and i32 %116, -858993460, !dbg !355
  %125 = lshr i32 %124, 2, !dbg !355
  %126 = and i32 %118, -858993460, !dbg !355
  %127 = or i32 %125, %126, !dbg !355
  %128 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !355
  store i32 %127, i32* %128, align 4, !dbg !355
  br label %129, !dbg !355

129:                                              ; preds = %114
  br label %130, !dbg !360

130:                                              ; preds = %129
  %131 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !361
  %132 = load i32, i32* %131, align 4, !dbg !361
  call void @llvm.dbg.value(metadata i32 %132, metadata !363, metadata !DIExpression()), !dbg !364
  %133 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !361
  %134 = load i32, i32* %133, align 4, !dbg !361
  call void @llvm.dbg.value(metadata i32 %134, metadata !365, metadata !DIExpression()), !dbg !364
  %135 = and i32 %132, 252645135, !dbg !361
  %136 = and i32 %134, 252645135, !dbg !361
  %137 = shl i32 %136, 4, !dbg !361
  %138 = or i32 %135, %137, !dbg !361
  %139 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !361
  store i32 %138, i32* %139, align 4, !dbg !361
  %140 = and i32 %132, -252645136, !dbg !361
  %141 = lshr i32 %140, 4, !dbg !361
  %142 = and i32 %134, -252645136, !dbg !361
  %143 = or i32 %141, %142, !dbg !361
  %144 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !361
  store i32 %143, i32* %144, align 4, !dbg !361
  br label %145, !dbg !361

145:                                              ; preds = %130
  br label %146, !dbg !366

146:                                              ; preds = %145
  %147 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !367
  %148 = load i32, i32* %147, align 4, !dbg !367
  call void @llvm.dbg.value(metadata i32 %148, metadata !369, metadata !DIExpression()), !dbg !370
  %149 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !367
  %150 = load i32, i32* %149, align 4, !dbg !367
  call void @llvm.dbg.value(metadata i32 %150, metadata !371, metadata !DIExpression()), !dbg !370
  %151 = and i32 %148, 252645135, !dbg !367
  %152 = and i32 %150, 252645135, !dbg !367
  %153 = shl i32 %152, 4, !dbg !367
  %154 = or i32 %151, %153, !dbg !367
  %155 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !367
  store i32 %154, i32* %155, align 4, !dbg !367
  %156 = and i32 %148, -252645136, !dbg !367
  %157 = lshr i32 %156, 4, !dbg !367
  %158 = and i32 %150, -252645136, !dbg !367
  %159 = or i32 %157, %158, !dbg !367
  %160 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !367
  store i32 %159, i32* %160, align 4, !dbg !367
  br label %161, !dbg !367

161:                                              ; preds = %146
  br label %162, !dbg !372

162:                                              ; preds = %161
  %163 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !373
  %164 = load i32, i32* %163, align 4, !dbg !373
  call void @llvm.dbg.value(metadata i32 %164, metadata !375, metadata !DIExpression()), !dbg !376
  %165 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !373
  %166 = load i32, i32* %165, align 4, !dbg !373
  call void @llvm.dbg.value(metadata i32 %166, metadata !377, metadata !DIExpression()), !dbg !376
  %167 = and i32 %164, 252645135, !dbg !373
  %168 = and i32 %166, 252645135, !dbg !373
  %169 = shl i32 %168, 4, !dbg !373
  %170 = or i32 %167, %169, !dbg !373
  %171 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !373
  store i32 %170, i32* %171, align 4, !dbg !373
  %172 = and i32 %164, -252645136, !dbg !373
  %173 = lshr i32 %172, 4, !dbg !373
  %174 = and i32 %166, -252645136, !dbg !373
  %175 = or i32 %173, %174, !dbg !373
  %176 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !373
  store i32 %175, i32* %176, align 4, !dbg !373
  br label %177, !dbg !373

177:                                              ; preds = %162
  br label %178, !dbg !378

178:                                              ; preds = %177
  %179 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !379
  %180 = load i32, i32* %179, align 4, !dbg !379
  call void @llvm.dbg.value(metadata i32 %180, metadata !381, metadata !DIExpression()), !dbg !382
  %181 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !379
  %182 = load i32, i32* %181, align 4, !dbg !379
  call void @llvm.dbg.value(metadata i32 %182, metadata !383, metadata !DIExpression()), !dbg !382
  %183 = and i32 %180, 252645135, !dbg !379
  %184 = and i32 %182, 252645135, !dbg !379
  %185 = shl i32 %184, 4, !dbg !379
  %186 = or i32 %183, %185, !dbg !379
  %187 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !379
  store i32 %186, i32* %187, align 4, !dbg !379
  %188 = and i32 %180, -252645136, !dbg !379
  %189 = lshr i32 %188, 4, !dbg !379
  %190 = and i32 %182, -252645136, !dbg !379
  %191 = or i32 %189, %190, !dbg !379
  %192 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !379
  store i32 %191, i32* %192, align 4, !dbg !379
  br label %193, !dbg !379

193:                                              ; preds = %178
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_ct_keysched(i32* %0, i8* %1, i64 %2) #0 !dbg !385 {
  %4 = alloca [120 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %1, metadata !395, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i64 %2, metadata !396, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata [120 x i32]* %4, metadata !397, metadata !DIExpression()), !dbg !401
  switch i64 %2, label %8 [
    i64 16, label %5
    i64 24, label %6
    i64 32, label %7
  ], !dbg !402

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !403, metadata !DIExpression()), !dbg !394
  br label %9, !dbg !404

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 12, metadata !403, metadata !DIExpression()), !dbg !394
  br label %9, !dbg !406

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 14, metadata !403, metadata !DIExpression()), !dbg !394
  br label %9, !dbg !407

8:                                                ; preds = %3
  br label %106, !dbg !408

9:                                                ; preds = %7, %6, %5
  %.07 = phi i32 [ 14, %7 ], [ 12, %6 ], [ 10, %5 ], !dbg !409
  call void @llvm.dbg.value(metadata i32 %.07, metadata !403, metadata !DIExpression()), !dbg !394
  %10 = lshr i64 %2, 2, !dbg !410
  %11 = trunc i64 %10 to i32, !dbg !411
  call void @llvm.dbg.value(metadata i32 %11, metadata !412, metadata !DIExpression()), !dbg !394
  %12 = add i32 %.07, 1, !dbg !413
  %13 = shl i32 %12, 2, !dbg !414
  call void @llvm.dbg.value(metadata i32 %13, metadata !415, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 0, metadata !416, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 0, metadata !417, metadata !DIExpression()), !dbg !394
  br label %14, !dbg !418

14:                                               ; preds = %29, %9
  %.08 = phi i32 [ 0, %9 ], [ %30, %29 ], !dbg !420
  %.01 = phi i32 [ 0, %9 ], [ %20, %29 ], !dbg !394
  call void @llvm.dbg.value(metadata i32 %.01, metadata !416, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 %.08, metadata !417, metadata !DIExpression()), !dbg !394
  %15 = icmp slt i32 %.08, %11, !dbg !421
  br i1 %15, label %16, label %31, !dbg !423

16:                                               ; preds = %14
  %17 = shl i32 %.08, 2, !dbg !424
  %18 = sext i32 %17 to i64, !dbg !426
  %19 = getelementptr inbounds i8, i8* %1, i64 %18, !dbg !426
  %20 = call i32 @br_dec32le(i8* %19), !dbg !427
  call void @llvm.dbg.value(metadata i32 %20, metadata !416, metadata !DIExpression()), !dbg !394
  %21 = shl i32 %.08, 1, !dbg !428
  %22 = add nsw i32 %21, 0, !dbg !429
  %23 = sext i32 %22 to i64, !dbg !430
  %24 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %23, !dbg !430
  store i32 %20, i32* %24, align 4, !dbg !431
  %25 = shl i32 %.08, 1, !dbg !432
  %26 = add nsw i32 %25, 1, !dbg !433
  %27 = sext i32 %26 to i64, !dbg !434
  %28 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %27, !dbg !434
  store i32 %20, i32* %28, align 4, !dbg !435
  br label %29, !dbg !436

29:                                               ; preds = %16
  %30 = add nsw i32 %.08, 1, !dbg !437
  call void @llvm.dbg.value(metadata i32 %30, metadata !417, metadata !DIExpression()), !dbg !394
  br label %14, !dbg !438, !llvm.loop !439

31:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 %11, metadata !417, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 0, metadata !442, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 0, metadata !443, metadata !DIExpression()), !dbg !394
  br label %32, !dbg !444

32:                                               ; preds = %73, %31
  %.19 = phi i32 [ %11, %31 ], [ %74, %73 ], !dbg !446
  %.04 = phi i32 [ 0, %31 ], [ %.15, %73 ], !dbg !446
  %.02 = phi i32 [ 0, %31 ], [ %.13, %73 ], !dbg !446
  %.1 = phi i32 [ %.01, %31 ], [ %59, %73 ], !dbg !394
  call void @llvm.dbg.value(metadata i32 %.1, metadata !416, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 %.02, metadata !443, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 %.04, metadata !442, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 %.19, metadata !417, metadata !DIExpression()), !dbg !394
  %33 = icmp slt i32 %.19, %13, !dbg !447
  br i1 %33, label %34, label %75, !dbg !449

34:                                               ; preds = %32
  %35 = icmp eq i32 %.04, 0, !dbg !450
  br i1 %35, label %36, label %46, !dbg !453

36:                                               ; preds = %34
  %37 = shl i32 %.1, 24, !dbg !454
  %38 = lshr i32 %.1, 8, !dbg !456
  %39 = or i32 %37, %38, !dbg !457
  call void @llvm.dbg.value(metadata i32 %39, metadata !416, metadata !DIExpression()), !dbg !394
  %40 = call i32 @sub_word(i32 %39), !dbg !458
  %41 = sext i32 %.02 to i64, !dbg !459
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* @Rcon, i64 0, i64 %41, !dbg !459
  %43 = load i8, i8* %42, align 1, !dbg !459
  %44 = zext i8 %43 to i32, !dbg !459
  %45 = xor i32 %40, %44, !dbg !460
  call void @llvm.dbg.value(metadata i32 %45, metadata !416, metadata !DIExpression()), !dbg !394
  br label %53, !dbg !461

46:                                               ; preds = %34
  %47 = icmp sgt i32 %11, 6, !dbg !462
  br i1 %47, label %48, label %52, !dbg !464

48:                                               ; preds = %46
  %49 = icmp eq i32 %.04, 4, !dbg !465
  br i1 %49, label %50, label %52, !dbg !466

50:                                               ; preds = %48
  %51 = call i32 @sub_word(i32 %.1), !dbg !467
  call void @llvm.dbg.value(metadata i32 %51, metadata !416, metadata !DIExpression()), !dbg !394
  br label %52, !dbg !469

52:                                               ; preds = %50, %48, %46
  %.2 = phi i32 [ %51, %50 ], [ %.1, %48 ], [ %.1, %46 ], !dbg !394
  call void @llvm.dbg.value(metadata i32 %.2, metadata !416, metadata !DIExpression()), !dbg !394
  br label %53

53:                                               ; preds = %52, %36
  %.3 = phi i32 [ %45, %36 ], [ %.2, %52 ], !dbg !470
  call void @llvm.dbg.value(metadata i32 %.3, metadata !416, metadata !DIExpression()), !dbg !394
  %54 = sub nsw i32 %.19, %11, !dbg !471
  %55 = shl i32 %54, 1, !dbg !472
  %56 = sext i32 %55 to i64, !dbg !473
  %57 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %56, !dbg !473
  %58 = load i32, i32* %57, align 4, !dbg !473
  %59 = xor i32 %.3, %58, !dbg !474
  call void @llvm.dbg.value(metadata i32 %59, metadata !416, metadata !DIExpression()), !dbg !394
  %60 = shl i32 %.19, 1, !dbg !475
  %61 = add nsw i32 %60, 0, !dbg !476
  %62 = sext i32 %61 to i64, !dbg !477
  %63 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %62, !dbg !477
  store i32 %59, i32* %63, align 4, !dbg !478
  %64 = shl i32 %.19, 1, !dbg !479
  %65 = add nsw i32 %64, 1, !dbg !480
  %66 = sext i32 %65 to i64, !dbg !481
  %67 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %66, !dbg !481
  store i32 %59, i32* %67, align 4, !dbg !482
  %68 = add nsw i32 %.04, 1, !dbg !483
  call void @llvm.dbg.value(metadata i32 %68, metadata !442, metadata !DIExpression()), !dbg !394
  %69 = icmp eq i32 %68, %11, !dbg !485
  br i1 %69, label %70, label %72, !dbg !486

70:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !442, metadata !DIExpression()), !dbg !394
  %71 = add nsw i32 %.02, 1, !dbg !487
  call void @llvm.dbg.value(metadata i32 %71, metadata !443, metadata !DIExpression()), !dbg !394
  br label %72, !dbg !489

72:                                               ; preds = %70, %53
  %.15 = phi i32 [ 0, %70 ], [ %68, %53 ], !dbg !490
  %.13 = phi i32 [ %71, %70 ], [ %.02, %53 ], !dbg !446
  call void @llvm.dbg.value(metadata i32 %.13, metadata !443, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 %.15, metadata !442, metadata !DIExpression()), !dbg !394
  br label %73, !dbg !491

73:                                               ; preds = %72
  %74 = add nsw i32 %.19, 1, !dbg !492
  call void @llvm.dbg.value(metadata i32 %74, metadata !417, metadata !DIExpression()), !dbg !394
  br label %32, !dbg !493, !llvm.loop !494

75:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 0, metadata !417, metadata !DIExpression()), !dbg !394
  br label %76, !dbg !496

76:                                               ; preds = %83, %75
  %.210 = phi i32 [ 0, %75 ], [ %84, %83 ], !dbg !498
  call void @llvm.dbg.value(metadata i32 %.210, metadata !417, metadata !DIExpression()), !dbg !394
  %77 = icmp slt i32 %.210, %13, !dbg !499
  br i1 %77, label %78, label %85, !dbg !501

78:                                               ; preds = %76
  %79 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 0, !dbg !502
  %80 = shl i32 %.210, 1, !dbg !504
  %81 = sext i32 %80 to i64, !dbg !505
  %82 = getelementptr inbounds i32, i32* %79, i64 %81, !dbg !505
  call void @br_aes_ct_ortho(i32* %82), !dbg !506
  br label %83, !dbg !507

83:                                               ; preds = %78
  %84 = add nsw i32 %.210, 4, !dbg !508
  call void @llvm.dbg.value(metadata i32 %84, metadata !417, metadata !DIExpression()), !dbg !394
  br label %76, !dbg !509, !llvm.loop !510

85:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i32 0, metadata !417, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 0, metadata !442, metadata !DIExpression()), !dbg !394
  br label %86, !dbg !512

86:                                               ; preds = %102, %85
  %.311 = phi i32 [ 0, %85 ], [ %103, %102 ], !dbg !514
  %.26 = phi i32 [ 0, %85 ], [ %104, %102 ], !dbg !514
  call void @llvm.dbg.value(metadata i32 %.26, metadata !442, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 %.311, metadata !417, metadata !DIExpression()), !dbg !394
  %87 = icmp slt i32 %.311, %13, !dbg !515
  br i1 %87, label %88, label %105, !dbg !517

88:                                               ; preds = %86
  %89 = add nsw i32 %.26, 0, !dbg !518
  %90 = sext i32 %89 to i64, !dbg !520
  %91 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %90, !dbg !520
  %92 = load i32, i32* %91, align 4, !dbg !520
  %93 = and i32 %92, 1431655765, !dbg !521
  %94 = add nsw i32 %.26, 1, !dbg !522
  %95 = sext i32 %94 to i64, !dbg !523
  %96 = getelementptr inbounds [120 x i32], [120 x i32]* %4, i64 0, i64 %95, !dbg !523
  %97 = load i32, i32* %96, align 4, !dbg !523
  %98 = and i32 %97, -1431655766, !dbg !524
  %99 = or i32 %93, %98, !dbg !525
  %100 = sext i32 %.311 to i64, !dbg !526
  %101 = getelementptr inbounds i32, i32* %0, i64 %100, !dbg !526
  store i32 %99, i32* %101, align 4, !dbg !527
  br label %102, !dbg !528

102:                                              ; preds = %88
  %103 = add nsw i32 %.311, 1, !dbg !529
  call void @llvm.dbg.value(metadata i32 %103, metadata !417, metadata !DIExpression()), !dbg !394
  %104 = add nsw i32 %.26, 2, !dbg !530
  call void @llvm.dbg.value(metadata i32 %104, metadata !442, metadata !DIExpression()), !dbg !394
  br label %86, !dbg !531, !llvm.loop !532

105:                                              ; preds = %86
  br label %106, !dbg !534

106:                                              ; preds = %105, %8
  %.0 = phi i32 [ 0, %8 ], [ %.07, %105 ], !dbg !394
  ret i32 %.0, !dbg !535
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* %0) #0 !dbg !536 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()), !dbg !540
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !541
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !542
  %4 = load i32, i32* %3, align 4, !dbg !542
  ret i32 %4, !dbg !543
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sub_word(i32 %0) #0 !dbg !544 {
  %2 = alloca [8 x i32], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.declare(metadata [8 x i32]* %2, metadata !549, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i32 0, metadata !554, metadata !DIExpression()), !dbg !548
  br label %3, !dbg !555

3:                                                ; preds = %8, %1
  %.0 = phi i32 [ 0, %1 ], [ %9, %8 ], !dbg !557
  call void @llvm.dbg.value(metadata i32 %.0, metadata !554, metadata !DIExpression()), !dbg !548
  %4 = icmp slt i32 %.0, 8, !dbg !558
  br i1 %4, label %5, label %10, !dbg !560

5:                                                ; preds = %3
  %6 = sext i32 %.0 to i64, !dbg !561
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %6, !dbg !561
  store i32 %0, i32* %7, align 4, !dbg !563
  br label %8, !dbg !564

8:                                                ; preds = %5
  %9 = add nsw i32 %.0, 1, !dbg !565
  call void @llvm.dbg.value(metadata i32 %9, metadata !554, metadata !DIExpression()), !dbg !548
  br label %3, !dbg !566, !llvm.loop !567

10:                                               ; preds = %3
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !569
  call void @br_aes_ct_ortho(i32* %11), !dbg !570
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !571
  call void @br_aes_ct_bitslice_Sbox(i32* %12), !dbg !572
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !573
  call void @br_aes_ct_ortho(i32* %13), !dbg !574
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0, !dbg !575
  %15 = load i32, i32* %14, align 16, !dbg !575
  ret i32 %15, !dbg !576
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_ct_skey_expand(i32* %0, i32 %1, i32* %2) #0 !dbg !577 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i32 %1, metadata !584, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i32* %2, metadata !585, metadata !DIExpression()), !dbg !583
  %4 = add i32 %1, 1, !dbg !586
  %5 = shl i32 %4, 2, !dbg !587
  call void @llvm.dbg.value(metadata i32 %5, metadata !588, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i32 0, metadata !589, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i32 0, metadata !590, metadata !DIExpression()), !dbg !583
  br label %6, !dbg !591

6:                                                ; preds = %24, %3
  %.01 = phi i32 [ 0, %3 ], [ %25, %24 ], !dbg !593
  %.0 = phi i32 [ 0, %3 ], [ %26, %24 ], !dbg !593
  call void @llvm.dbg.value(metadata i32 %.0, metadata !590, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i32 %.01, metadata !589, metadata !DIExpression()), !dbg !583
  %7 = icmp ult i32 %.01, %5, !dbg !594
  br i1 %7, label %8, label %27, !dbg !596

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64, !dbg !597
  %10 = getelementptr inbounds i32, i32* %2, i64 %9, !dbg !597
  %11 = load i32, i32* %10, align 4, !dbg !597
  call void @llvm.dbg.value(metadata i32 %11, metadata !599, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata i32 %11, metadata !601, metadata !DIExpression()), !dbg !600
  %12 = and i32 %11, 1431655765, !dbg !602
  call void @llvm.dbg.value(metadata i32 %12, metadata !601, metadata !DIExpression()), !dbg !600
  %13 = shl i32 %12, 1, !dbg !603
  %14 = or i32 %12, %13, !dbg !604
  %15 = add i32 %.0, 0, !dbg !605
  %16 = zext i32 %15 to i64, !dbg !606
  %17 = getelementptr inbounds i32, i32* %0, i64 %16, !dbg !606
  store i32 %14, i32* %17, align 4, !dbg !607
  %18 = and i32 %11, -1431655766, !dbg !608
  call void @llvm.dbg.value(metadata i32 %18, metadata !599, metadata !DIExpression()), !dbg !600
  %19 = lshr i32 %18, 1, !dbg !609
  %20 = or i32 %18, %19, !dbg !610
  %21 = add i32 %.0, 1, !dbg !611
  %22 = zext i32 %21 to i64, !dbg !612
  %23 = getelementptr inbounds i32, i32* %0, i64 %22, !dbg !612
  store i32 %20, i32* %23, align 4, !dbg !613
  br label %24, !dbg !614

24:                                               ; preds = %8
  %25 = add i32 %.01, 1, !dbg !615
  call void @llvm.dbg.value(metadata i32 %25, metadata !589, metadata !DIExpression()), !dbg !583
  %26 = add i32 %.0, 2, !dbg !616
  call void @llvm.dbg.value(metadata i32 %26, metadata !590, metadata !DIExpression()), !dbg !583
  br label %6, !dbg !617, !llvm.loop !618

27:                                               ; preds = %6
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_sched_wrapper(i32* %0, i8* %1, i64 %2) #0 !dbg !621 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !624, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i8* %1, metadata !626, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 %2, metadata !627, metadata !DIExpression()), !dbg !625
  %4 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %0), !dbg !628
  call void @public_in(%struct.smack_value* %4), !dbg !629
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !630
  call void @public_in(%struct.smack_value* %5), !dbg !631
  %6 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !632
  call void @public_in(%struct.smack_value* %6), !dbg !633
  %7 = call i32 @br_aes_ct_keysched(i32* %0, i8* %1, i64 %2), !dbg !634
  ret void, !dbg !635
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_sched_wrapper_t() #0 !dbg !636 {
  %1 = call i64 (...) @getuns(), !dbg !639
  call void @llvm.dbg.value(metadata i64 %1, metadata !640, metadata !DIExpression()), !dbg !641
  %2 = call i32* (...) @getpt(), !dbg !642
  call void @llvm.dbg.value(metadata i32* %2, metadata !643, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i8* bitcast (i8* (...)* @getkey to i8*), metadata !644, metadata !DIExpression()), !dbg !641
  %3 = call i32 @br_aes_ct_keysched(i32* %2, i8* bitcast (i8* (...)* @getkey to i8*), i64 %1), !dbg !645
  ret void, !dbg !646
}

declare dso_local i64 @getuns(...) #2

declare dso_local i32* @getpt(...) #2

declare dso_local i8* @getkey(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2, !30}
!llvm.ident = !{!32, !32}
!llvm.module.flags = !{!33, !34, !35}

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
!31 = !DIFile(filename: "key_sched.c", directory: "/home/luwei/bech/BearSSL/aes_ct")
!32 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!33 = !{i32 7, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = distinct !DISubprogram(name: "br_aes_ct_bitslice_Sbox", scope: !3, file: !3, line: 29, type: !37, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!40 = !DILocalVariable(name: "q", arg: 1, scope: !36, file: !3, line: 29, type: !39)
!41 = !DILocation(line: 0, scope: !36)
!42 = !DILocation(line: 56, column: 7, scope: !36)
!43 = !DILocalVariable(name: "x0", scope: !36, file: !3, line: 41, type: !6)
!44 = !DILocation(line: 57, column: 7, scope: !36)
!45 = !DILocalVariable(name: "x1", scope: !36, file: !3, line: 41, type: !6)
!46 = !DILocation(line: 58, column: 7, scope: !36)
!47 = !DILocalVariable(name: "x2", scope: !36, file: !3, line: 41, type: !6)
!48 = !DILocation(line: 59, column: 7, scope: !36)
!49 = !DILocalVariable(name: "x3", scope: !36, file: !3, line: 41, type: !6)
!50 = !DILocation(line: 60, column: 7, scope: !36)
!51 = !DILocalVariable(name: "x4", scope: !36, file: !3, line: 41, type: !6)
!52 = !DILocation(line: 61, column: 7, scope: !36)
!53 = !DILocalVariable(name: "x5", scope: !36, file: !3, line: 41, type: !6)
!54 = !DILocation(line: 62, column: 7, scope: !36)
!55 = !DILocalVariable(name: "x6", scope: !36, file: !3, line: 41, type: !6)
!56 = !DILocation(line: 63, column: 7, scope: !36)
!57 = !DILocalVariable(name: "x7", scope: !36, file: !3, line: 41, type: !6)
!58 = !DILocation(line: 68, column: 11, scope: !36)
!59 = !DILocalVariable(name: "y14", scope: !36, file: !3, line: 43, type: !6)
!60 = !DILocation(line: 69, column: 11, scope: !36)
!61 = !DILocalVariable(name: "y13", scope: !36, file: !3, line: 43, type: !6)
!62 = !DILocation(line: 70, column: 10, scope: !36)
!63 = !DILocalVariable(name: "y9", scope: !36, file: !3, line: 42, type: !6)
!64 = !DILocation(line: 71, column: 10, scope: !36)
!65 = !DILocalVariable(name: "y8", scope: !36, file: !3, line: 42, type: !6)
!66 = !DILocation(line: 72, column: 10, scope: !36)
!67 = !DILocalVariable(name: "t0", scope: !36, file: !3, line: 47, type: !6)
!68 = !DILocation(line: 73, column: 10, scope: !36)
!69 = !DILocalVariable(name: "y1", scope: !36, file: !3, line: 42, type: !6)
!70 = !DILocation(line: 74, column: 10, scope: !36)
!71 = !DILocalVariable(name: "y4", scope: !36, file: !3, line: 42, type: !6)
!72 = !DILocation(line: 75, column: 12, scope: !36)
!73 = !DILocalVariable(name: "y12", scope: !36, file: !3, line: 43, type: !6)
!74 = !DILocation(line: 76, column: 10, scope: !36)
!75 = !DILocalVariable(name: "y2", scope: !36, file: !3, line: 42, type: !6)
!76 = !DILocation(line: 77, column: 10, scope: !36)
!77 = !DILocalVariable(name: "y5", scope: !36, file: !3, line: 42, type: !6)
!78 = !DILocation(line: 78, column: 10, scope: !36)
!79 = !DILocalVariable(name: "y3", scope: !36, file: !3, line: 42, type: !6)
!80 = !DILocation(line: 79, column: 10, scope: !36)
!81 = !DILocalVariable(name: "t1", scope: !36, file: !3, line: 47, type: !6)
!82 = !DILocation(line: 80, column: 11, scope: !36)
!83 = !DILocalVariable(name: "y15", scope: !36, file: !3, line: 43, type: !6)
!84 = !DILocation(line: 81, column: 11, scope: !36)
!85 = !DILocalVariable(name: "y20", scope: !36, file: !3, line: 44, type: !6)
!86 = !DILocation(line: 82, column: 11, scope: !36)
!87 = !DILocalVariable(name: "y6", scope: !36, file: !3, line: 42, type: !6)
!88 = !DILocation(line: 83, column: 12, scope: !36)
!89 = !DILocalVariable(name: "y10", scope: !36, file: !3, line: 43, type: !6)
!90 = !DILocation(line: 84, column: 12, scope: !36)
!91 = !DILocalVariable(name: "y11", scope: !36, file: !3, line: 43, type: !6)
!92 = !DILocation(line: 85, column: 10, scope: !36)
!93 = !DILocalVariable(name: "y7", scope: !36, file: !3, line: 42, type: !6)
!94 = !DILocation(line: 86, column: 12, scope: !36)
!95 = !DILocalVariable(name: "y17", scope: !36, file: !3, line: 43, type: !6)
!96 = !DILocation(line: 87, column: 12, scope: !36)
!97 = !DILocalVariable(name: "y19", scope: !36, file: !3, line: 43, type: !6)
!98 = !DILocation(line: 88, column: 11, scope: !36)
!99 = !DILocalVariable(name: "y16", scope: !36, file: !3, line: 43, type: !6)
!100 = !DILocation(line: 89, column: 12, scope: !36)
!101 = !DILocalVariable(name: "y21", scope: !36, file: !3, line: 44, type: !6)
!102 = !DILocation(line: 90, column: 11, scope: !36)
!103 = !DILocalVariable(name: "y18", scope: !36, file: !3, line: 43, type: !6)
!104 = !DILocation(line: 95, column: 11, scope: !36)
!105 = !DILocalVariable(name: "t2", scope: !36, file: !3, line: 47, type: !6)
!106 = !DILocation(line: 96, column: 10, scope: !36)
!107 = !DILocalVariable(name: "t3", scope: !36, file: !3, line: 47, type: !6)
!108 = !DILocation(line: 97, column: 10, scope: !36)
!109 = !DILocalVariable(name: "t4", scope: !36, file: !3, line: 47, type: !6)
!110 = !DILocation(line: 98, column: 10, scope: !36)
!111 = !DILocalVariable(name: "t5", scope: !36, file: !3, line: 47, type: !6)
!112 = !DILocation(line: 99, column: 10, scope: !36)
!113 = !DILocalVariable(name: "t6", scope: !36, file: !3, line: 47, type: !6)
!114 = !DILocation(line: 100, column: 11, scope: !36)
!115 = !DILocalVariable(name: "t7", scope: !36, file: !3, line: 47, type: !6)
!116 = !DILocation(line: 101, column: 10, scope: !36)
!117 = !DILocalVariable(name: "t8", scope: !36, file: !3, line: 47, type: !6)
!118 = !DILocation(line: 102, column: 10, scope: !36)
!119 = !DILocalVariable(name: "t9", scope: !36, file: !3, line: 47, type: !6)
!120 = !DILocation(line: 103, column: 11, scope: !36)
!121 = !DILocalVariable(name: "t10", scope: !36, file: !3, line: 48, type: !6)
!122 = !DILocation(line: 104, column: 12, scope: !36)
!123 = !DILocalVariable(name: "t11", scope: !36, file: !3, line: 48, type: !6)
!124 = !DILocation(line: 105, column: 11, scope: !36)
!125 = !DILocalVariable(name: "t12", scope: !36, file: !3, line: 48, type: !6)
!126 = !DILocation(line: 106, column: 12, scope: !36)
!127 = !DILocalVariable(name: "t13", scope: !36, file: !3, line: 48, type: !6)
!128 = !DILocation(line: 107, column: 12, scope: !36)
!129 = !DILocalVariable(name: "t14", scope: !36, file: !3, line: 48, type: !6)
!130 = !DILocation(line: 108, column: 11, scope: !36)
!131 = !DILocalVariable(name: "t15", scope: !36, file: !3, line: 48, type: !6)
!132 = !DILocation(line: 109, column: 12, scope: !36)
!133 = !DILocalVariable(name: "t16", scope: !36, file: !3, line: 48, type: !6)
!134 = !DILocation(line: 110, column: 11, scope: !36)
!135 = !DILocalVariable(name: "t17", scope: !36, file: !3, line: 48, type: !6)
!136 = !DILocation(line: 111, column: 11, scope: !36)
!137 = !DILocalVariable(name: "t18", scope: !36, file: !3, line: 48, type: !6)
!138 = !DILocation(line: 112, column: 11, scope: !36)
!139 = !DILocalVariable(name: "t19", scope: !36, file: !3, line: 48, type: !6)
!140 = !DILocation(line: 113, column: 12, scope: !36)
!141 = !DILocalVariable(name: "t20", scope: !36, file: !3, line: 49, type: !6)
!142 = !DILocation(line: 114, column: 12, scope: !36)
!143 = !DILocalVariable(name: "t21", scope: !36, file: !3, line: 49, type: !6)
!144 = !DILocation(line: 115, column: 12, scope: !36)
!145 = !DILocalVariable(name: "t22", scope: !36, file: !3, line: 49, type: !6)
!146 = !DILocation(line: 116, column: 12, scope: !36)
!147 = !DILocalVariable(name: "t23", scope: !36, file: !3, line: 49, type: !6)
!148 = !DILocation(line: 117, column: 12, scope: !36)
!149 = !DILocalVariable(name: "t24", scope: !36, file: !3, line: 49, type: !6)
!150 = !DILocation(line: 119, column: 12, scope: !36)
!151 = !DILocalVariable(name: "t25", scope: !36, file: !3, line: 49, type: !6)
!152 = !DILocation(line: 120, column: 12, scope: !36)
!153 = !DILocalVariable(name: "t26", scope: !36, file: !3, line: 49, type: !6)
!154 = !DILocation(line: 121, column: 12, scope: !36)
!155 = !DILocalVariable(name: "t27", scope: !36, file: !3, line: 49, type: !6)
!156 = !DILocation(line: 122, column: 12, scope: !36)
!157 = !DILocalVariable(name: "t28", scope: !36, file: !3, line: 49, type: !6)
!158 = !DILocation(line: 123, column: 12, scope: !36)
!159 = !DILocalVariable(name: "t29", scope: !36, file: !3, line: 49, type: !6)
!160 = !DILocation(line: 124, column: 12, scope: !36)
!161 = !DILocalVariable(name: "t30", scope: !36, file: !3, line: 50, type: !6)
!162 = !DILocation(line: 125, column: 12, scope: !36)
!163 = !DILocalVariable(name: "t31", scope: !36, file: !3, line: 50, type: !6)
!164 = !DILocation(line: 126, column: 12, scope: !36)
!165 = !DILocalVariable(name: "t32", scope: !36, file: !3, line: 50, type: !6)
!166 = !DILocation(line: 127, column: 12, scope: !36)
!167 = !DILocalVariable(name: "t33", scope: !36, file: !3, line: 50, type: !6)
!168 = !DILocation(line: 128, column: 12, scope: !36)
!169 = !DILocalVariable(name: "t34", scope: !36, file: !3, line: 50, type: !6)
!170 = !DILocation(line: 129, column: 12, scope: !36)
!171 = !DILocalVariable(name: "t35", scope: !36, file: !3, line: 50, type: !6)
!172 = !DILocation(line: 130, column: 12, scope: !36)
!173 = !DILocalVariable(name: "t36", scope: !36, file: !3, line: 50, type: !6)
!174 = !DILocation(line: 131, column: 12, scope: !36)
!175 = !DILocalVariable(name: "t37", scope: !36, file: !3, line: 50, type: !6)
!176 = !DILocation(line: 132, column: 12, scope: !36)
!177 = !DILocalVariable(name: "t38", scope: !36, file: !3, line: 50, type: !6)
!178 = !DILocation(line: 133, column: 12, scope: !36)
!179 = !DILocalVariable(name: "t39", scope: !36, file: !3, line: 50, type: !6)
!180 = !DILocation(line: 134, column: 12, scope: !36)
!181 = !DILocalVariable(name: "t40", scope: !36, file: !3, line: 51, type: !6)
!182 = !DILocation(line: 136, column: 12, scope: !36)
!183 = !DILocalVariable(name: "t41", scope: !36, file: !3, line: 51, type: !6)
!184 = !DILocation(line: 137, column: 12, scope: !36)
!185 = !DILocalVariable(name: "t42", scope: !36, file: !3, line: 51, type: !6)
!186 = !DILocation(line: 138, column: 12, scope: !36)
!187 = !DILocalVariable(name: "t43", scope: !36, file: !3, line: 51, type: !6)
!188 = !DILocation(line: 139, column: 12, scope: !36)
!189 = !DILocalVariable(name: "t44", scope: !36, file: !3, line: 51, type: !6)
!190 = !DILocation(line: 140, column: 12, scope: !36)
!191 = !DILocalVariable(name: "t45", scope: !36, file: !3, line: 51, type: !6)
!192 = !DILocation(line: 141, column: 11, scope: !36)
!193 = !DILocalVariable(name: "z0", scope: !36, file: !3, line: 45, type: !6)
!194 = !DILocation(line: 142, column: 11, scope: !36)
!195 = !DILocalVariable(name: "z1", scope: !36, file: !3, line: 45, type: !6)
!196 = !DILocation(line: 143, column: 11, scope: !36)
!197 = !DILocalVariable(name: "z2", scope: !36, file: !3, line: 45, type: !6)
!198 = !DILocation(line: 144, column: 11, scope: !36)
!199 = !DILocalVariable(name: "z3", scope: !36, file: !3, line: 45, type: !6)
!200 = !DILocation(line: 145, column: 11, scope: !36)
!201 = !DILocalVariable(name: "z4", scope: !36, file: !3, line: 45, type: !6)
!202 = !DILocation(line: 146, column: 11, scope: !36)
!203 = !DILocalVariable(name: "z5", scope: !36, file: !3, line: 45, type: !6)
!204 = !DILocation(line: 147, column: 11, scope: !36)
!205 = !DILocalVariable(name: "z6", scope: !36, file: !3, line: 45, type: !6)
!206 = !DILocation(line: 148, column: 11, scope: !36)
!207 = !DILocalVariable(name: "z7", scope: !36, file: !3, line: 45, type: !6)
!208 = !DILocation(line: 149, column: 11, scope: !36)
!209 = !DILocalVariable(name: "z8", scope: !36, file: !3, line: 45, type: !6)
!210 = !DILocation(line: 150, column: 11, scope: !36)
!211 = !DILocalVariable(name: "z9", scope: !36, file: !3, line: 45, type: !6)
!212 = !DILocation(line: 151, column: 12, scope: !36)
!213 = !DILocalVariable(name: "z10", scope: !36, file: !3, line: 46, type: !6)
!214 = !DILocation(line: 152, column: 12, scope: !36)
!215 = !DILocalVariable(name: "z11", scope: !36, file: !3, line: 46, type: !6)
!216 = !DILocation(line: 153, column: 12, scope: !36)
!217 = !DILocalVariable(name: "z12", scope: !36, file: !3, line: 46, type: !6)
!218 = !DILocation(line: 154, column: 12, scope: !36)
!219 = !DILocalVariable(name: "z13", scope: !36, file: !3, line: 46, type: !6)
!220 = !DILocation(line: 155, column: 12, scope: !36)
!221 = !DILocalVariable(name: "z14", scope: !36, file: !3, line: 46, type: !6)
!222 = !DILocation(line: 156, column: 12, scope: !36)
!223 = !DILocalVariable(name: "z15", scope: !36, file: !3, line: 46, type: !6)
!224 = !DILocation(line: 157, column: 12, scope: !36)
!225 = !DILocalVariable(name: "z16", scope: !36, file: !3, line: 46, type: !6)
!226 = !DILocation(line: 158, column: 12, scope: !36)
!227 = !DILocalVariable(name: "z17", scope: !36, file: !3, line: 46, type: !6)
!228 = !DILocation(line: 163, column: 12, scope: !36)
!229 = !DILocalVariable(name: "t46", scope: !36, file: !3, line: 51, type: !6)
!230 = !DILocation(line: 164, column: 12, scope: !36)
!231 = !DILocalVariable(name: "t47", scope: !36, file: !3, line: 51, type: !6)
!232 = !DILocation(line: 165, column: 11, scope: !36)
!233 = !DILocalVariable(name: "t48", scope: !36, file: !3, line: 51, type: !6)
!234 = !DILocation(line: 166, column: 11, scope: !36)
!235 = !DILocalVariable(name: "t49", scope: !36, file: !3, line: 51, type: !6)
!236 = !DILocation(line: 167, column: 11, scope: !36)
!237 = !DILocalVariable(name: "t50", scope: !36, file: !3, line: 52, type: !6)
!238 = !DILocation(line: 168, column: 11, scope: !36)
!239 = !DILocalVariable(name: "t51", scope: !36, file: !3, line: 52, type: !6)
!240 = !DILocation(line: 169, column: 11, scope: !36)
!241 = !DILocalVariable(name: "t52", scope: !36, file: !3, line: 52, type: !6)
!242 = !DILocation(line: 170, column: 11, scope: !36)
!243 = !DILocalVariable(name: "t53", scope: !36, file: !3, line: 52, type: !6)
!244 = !DILocation(line: 171, column: 11, scope: !36)
!245 = !DILocalVariable(name: "t54", scope: !36, file: !3, line: 52, type: !6)
!246 = !DILocation(line: 172, column: 12, scope: !36)
!247 = !DILocalVariable(name: "t55", scope: !36, file: !3, line: 52, type: !6)
!248 = !DILocation(line: 173, column: 12, scope: !36)
!249 = !DILocalVariable(name: "t56", scope: !36, file: !3, line: 52, type: !6)
!250 = !DILocation(line: 174, column: 12, scope: !36)
!251 = !DILocalVariable(name: "t57", scope: !36, file: !3, line: 52, type: !6)
!252 = !DILocation(line: 175, column: 11, scope: !36)
!253 = !DILocalVariable(name: "t58", scope: !36, file: !3, line: 52, type: !6)
!254 = !DILocation(line: 176, column: 11, scope: !36)
!255 = !DILocalVariable(name: "t59", scope: !36, file: !3, line: 52, type: !6)
!256 = !DILocation(line: 177, column: 12, scope: !36)
!257 = !DILocalVariable(name: "t60", scope: !36, file: !3, line: 53, type: !6)
!258 = !DILocation(line: 178, column: 12, scope: !36)
!259 = !DILocalVariable(name: "t61", scope: !36, file: !3, line: 53, type: !6)
!260 = !DILocation(line: 179, column: 12, scope: !36)
!261 = !DILocalVariable(name: "t62", scope: !36, file: !3, line: 53, type: !6)
!262 = !DILocation(line: 180, column: 12, scope: !36)
!263 = !DILocalVariable(name: "t63", scope: !36, file: !3, line: 53, type: !6)
!264 = !DILocation(line: 181, column: 11, scope: !36)
!265 = !DILocalVariable(name: "t64", scope: !36, file: !3, line: 53, type: !6)
!266 = !DILocation(line: 182, column: 12, scope: !36)
!267 = !DILocalVariable(name: "t65", scope: !36, file: !3, line: 53, type: !6)
!268 = !DILocation(line: 183, column: 11, scope: !36)
!269 = !DILocalVariable(name: "t66", scope: !36, file: !3, line: 53, type: !6)
!270 = !DILocation(line: 184, column: 11, scope: !36)
!271 = !DILocalVariable(name: "s0", scope: !36, file: !3, line: 54, type: !6)
!272 = !DILocation(line: 185, column: 13, scope: !36)
!273 = !DILocation(line: 185, column: 11, scope: !36)
!274 = !DILocalVariable(name: "s6", scope: !36, file: !3, line: 54, type: !6)
!275 = !DILocation(line: 186, column: 13, scope: !36)
!276 = !DILocation(line: 186, column: 11, scope: !36)
!277 = !DILocalVariable(name: "s7", scope: !36, file: !3, line: 54, type: !6)
!278 = !DILocation(line: 187, column: 12, scope: !36)
!279 = !DILocalVariable(name: "t67", scope: !36, file: !3, line: 53, type: !6)
!280 = !DILocation(line: 188, column: 11, scope: !36)
!281 = !DILocalVariable(name: "s3", scope: !36, file: !3, line: 54, type: !6)
!282 = !DILocation(line: 189, column: 11, scope: !36)
!283 = !DILocalVariable(name: "s4", scope: !36, file: !3, line: 54, type: !6)
!284 = !DILocation(line: 190, column: 11, scope: !36)
!285 = !DILocalVariable(name: "s5", scope: !36, file: !3, line: 54, type: !6)
!286 = !DILocation(line: 191, column: 13, scope: !36)
!287 = !DILocation(line: 191, column: 11, scope: !36)
!288 = !DILocalVariable(name: "s1", scope: !36, file: !3, line: 54, type: !6)
!289 = !DILocation(line: 192, column: 13, scope: !36)
!290 = !DILocation(line: 192, column: 11, scope: !36)
!291 = !DILocalVariable(name: "s2", scope: !36, file: !3, line: 54, type: !6)
!292 = !DILocation(line: 194, column: 2, scope: !36)
!293 = !DILocation(line: 194, column: 7, scope: !36)
!294 = !DILocation(line: 195, column: 2, scope: !36)
!295 = !DILocation(line: 195, column: 7, scope: !36)
!296 = !DILocation(line: 196, column: 2, scope: !36)
!297 = !DILocation(line: 196, column: 7, scope: !36)
!298 = !DILocation(line: 197, column: 2, scope: !36)
!299 = !DILocation(line: 197, column: 7, scope: !36)
!300 = !DILocation(line: 198, column: 2, scope: !36)
!301 = !DILocation(line: 198, column: 7, scope: !36)
!302 = !DILocation(line: 199, column: 2, scope: !36)
!303 = !DILocation(line: 199, column: 7, scope: !36)
!304 = !DILocation(line: 200, column: 2, scope: !36)
!305 = !DILocation(line: 200, column: 7, scope: !36)
!306 = !DILocation(line: 201, column: 2, scope: !36)
!307 = !DILocation(line: 201, column: 7, scope: !36)
!308 = !DILocation(line: 202, column: 1, scope: !36)
!309 = distinct !DISubprogram(name: "br_aes_ct_ortho", scope: !3, file: !3, line: 206, type: !37, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!310 = !DILocalVariable(name: "q", arg: 1, scope: !309, file: !3, line: 206, type: !39)
!311 = !DILocation(line: 0, scope: !309)
!312 = !DILocation(line: 220, column: 2, scope: !309)
!313 = !DILocation(line: 220, column: 2, scope: !314)
!314 = distinct !DILexicalBlock(scope: !309, file: !3, line: 220, column: 2)
!315 = !DILocalVariable(name: "a", scope: !314, file: !3, line: 220, type: !6)
!316 = !DILocation(line: 0, scope: !314)
!317 = !DILocalVariable(name: "b", scope: !314, file: !3, line: 220, type: !6)
!318 = !DILocation(line: 221, column: 2, scope: !309)
!319 = !DILocation(line: 221, column: 2, scope: !320)
!320 = distinct !DILexicalBlock(scope: !309, file: !3, line: 221, column: 2)
!321 = !DILocalVariable(name: "a", scope: !320, file: !3, line: 221, type: !6)
!322 = !DILocation(line: 0, scope: !320)
!323 = !DILocalVariable(name: "b", scope: !320, file: !3, line: 221, type: !6)
!324 = !DILocation(line: 222, column: 2, scope: !309)
!325 = !DILocation(line: 222, column: 2, scope: !326)
!326 = distinct !DILexicalBlock(scope: !309, file: !3, line: 222, column: 2)
!327 = !DILocalVariable(name: "a", scope: !326, file: !3, line: 222, type: !6)
!328 = !DILocation(line: 0, scope: !326)
!329 = !DILocalVariable(name: "b", scope: !326, file: !3, line: 222, type: !6)
!330 = !DILocation(line: 223, column: 2, scope: !309)
!331 = !DILocation(line: 223, column: 2, scope: !332)
!332 = distinct !DILexicalBlock(scope: !309, file: !3, line: 223, column: 2)
!333 = !DILocalVariable(name: "a", scope: !332, file: !3, line: 223, type: !6)
!334 = !DILocation(line: 0, scope: !332)
!335 = !DILocalVariable(name: "b", scope: !332, file: !3, line: 223, type: !6)
!336 = !DILocation(line: 225, column: 2, scope: !309)
!337 = !DILocation(line: 225, column: 2, scope: !338)
!338 = distinct !DILexicalBlock(scope: !309, file: !3, line: 225, column: 2)
!339 = !DILocalVariable(name: "a", scope: !338, file: !3, line: 225, type: !6)
!340 = !DILocation(line: 0, scope: !338)
!341 = !DILocalVariable(name: "b", scope: !338, file: !3, line: 225, type: !6)
!342 = !DILocation(line: 226, column: 2, scope: !309)
!343 = !DILocation(line: 226, column: 2, scope: !344)
!344 = distinct !DILexicalBlock(scope: !309, file: !3, line: 226, column: 2)
!345 = !DILocalVariable(name: "a", scope: !344, file: !3, line: 226, type: !6)
!346 = !DILocation(line: 0, scope: !344)
!347 = !DILocalVariable(name: "b", scope: !344, file: !3, line: 226, type: !6)
!348 = !DILocation(line: 227, column: 2, scope: !309)
!349 = !DILocation(line: 227, column: 2, scope: !350)
!350 = distinct !DILexicalBlock(scope: !309, file: !3, line: 227, column: 2)
!351 = !DILocalVariable(name: "a", scope: !350, file: !3, line: 227, type: !6)
!352 = !DILocation(line: 0, scope: !350)
!353 = !DILocalVariable(name: "b", scope: !350, file: !3, line: 227, type: !6)
!354 = !DILocation(line: 228, column: 2, scope: !309)
!355 = !DILocation(line: 228, column: 2, scope: !356)
!356 = distinct !DILexicalBlock(scope: !309, file: !3, line: 228, column: 2)
!357 = !DILocalVariable(name: "a", scope: !356, file: !3, line: 228, type: !6)
!358 = !DILocation(line: 0, scope: !356)
!359 = !DILocalVariable(name: "b", scope: !356, file: !3, line: 228, type: !6)
!360 = !DILocation(line: 230, column: 2, scope: !309)
!361 = !DILocation(line: 230, column: 2, scope: !362)
!362 = distinct !DILexicalBlock(scope: !309, file: !3, line: 230, column: 2)
!363 = !DILocalVariable(name: "a", scope: !362, file: !3, line: 230, type: !6)
!364 = !DILocation(line: 0, scope: !362)
!365 = !DILocalVariable(name: "b", scope: !362, file: !3, line: 230, type: !6)
!366 = !DILocation(line: 231, column: 2, scope: !309)
!367 = !DILocation(line: 231, column: 2, scope: !368)
!368 = distinct !DILexicalBlock(scope: !309, file: !3, line: 231, column: 2)
!369 = !DILocalVariable(name: "a", scope: !368, file: !3, line: 231, type: !6)
!370 = !DILocation(line: 0, scope: !368)
!371 = !DILocalVariable(name: "b", scope: !368, file: !3, line: 231, type: !6)
!372 = !DILocation(line: 232, column: 2, scope: !309)
!373 = !DILocation(line: 232, column: 2, scope: !374)
!374 = distinct !DILexicalBlock(scope: !309, file: !3, line: 232, column: 2)
!375 = !DILocalVariable(name: "a", scope: !374, file: !3, line: 232, type: !6)
!376 = !DILocation(line: 0, scope: !374)
!377 = !DILocalVariable(name: "b", scope: !374, file: !3, line: 232, type: !6)
!378 = !DILocation(line: 233, column: 2, scope: !309)
!379 = !DILocation(line: 233, column: 2, scope: !380)
!380 = distinct !DILexicalBlock(scope: !309, file: !3, line: 233, column: 2)
!381 = !DILocalVariable(name: "a", scope: !380, file: !3, line: 233, type: !6)
!382 = !DILocation(line: 0, scope: !380)
!383 = !DILocalVariable(name: "b", scope: !380, file: !3, line: 233, type: !6)
!384 = !DILocation(line: 234, column: 1, scope: !309)
!385 = distinct !DISubprogram(name: "br_aes_ct_keysched", scope: !3, file: !3, line: 257, type: !386, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!386 = !DISubroutineType(types: !387)
!387 = !{!10, !39, !388, !390}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !391, line: 46, baseType: !392)
!391 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!392 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!393 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !385, file: !3, line: 257, type: !39)
!394 = !DILocation(line: 0, scope: !385)
!395 = !DILocalVariable(name: "key", arg: 2, scope: !385, file: !3, line: 257, type: !388)
!396 = !DILocalVariable(name: "key_len", arg: 3, scope: !385, file: !3, line: 257, type: !390)
!397 = !DILocalVariable(name: "skey", scope: !385, file: !3, line: 262, type: !398)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3840, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 120)
!401 = !DILocation(line: 262, column: 11, scope: !385)
!402 = !DILocation(line: 264, column: 2, scope: !385)
!403 = !DILocalVariable(name: "num_rounds", scope: !385, file: !3, line: 259, type: !10)
!404 = !DILocation(line: 267, column: 3, scope: !405)
!405 = distinct !DILexicalBlock(scope: !385, file: !3, line: 264, column: 19)
!406 = !DILocation(line: 270, column: 3, scope: !405)
!407 = !DILocation(line: 273, column: 3, scope: !405)
!408 = !DILocation(line: 276, column: 3, scope: !405)
!409 = !DILocation(line: 0, scope: !405)
!410 = !DILocation(line: 278, column: 21, scope: !385)
!411 = !DILocation(line: 278, column: 7, scope: !385)
!412 = !DILocalVariable(name: "nk", scope: !385, file: !3, line: 260, type: !11)
!413 = !DILocation(line: 279, column: 26, scope: !385)
!414 = !DILocation(line: 279, column: 31, scope: !385)
!415 = !DILocalVariable(name: "nkf", scope: !385, file: !3, line: 260, type: !11)
!416 = !DILocalVariable(name: "tmp", scope: !385, file: !3, line: 261, type: !6)
!417 = !DILocalVariable(name: "i", scope: !385, file: !3, line: 260, type: !11)
!418 = !DILocation(line: 281, column: 7, scope: !419)
!419 = distinct !DILexicalBlock(scope: !385, file: !3, line: 281, column: 2)
!420 = !DILocation(line: 0, scope: !419)
!421 = !DILocation(line: 281, column: 16, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !3, line: 281, column: 2)
!423 = !DILocation(line: 281, column: 2, scope: !419)
!424 = !DILocation(line: 282, column: 52, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !3, line: 281, column: 28)
!426 = !DILocation(line: 282, column: 47, scope: !425)
!427 = !DILocation(line: 282, column: 9, scope: !425)
!428 = !DILocation(line: 283, column: 11, scope: !425)
!429 = !DILocation(line: 283, column: 17, scope: !425)
!430 = !DILocation(line: 283, column: 3, scope: !425)
!431 = !DILocation(line: 283, column: 22, scope: !425)
!432 = !DILocation(line: 284, column: 11, scope: !425)
!433 = !DILocation(line: 284, column: 17, scope: !425)
!434 = !DILocation(line: 284, column: 3, scope: !425)
!435 = !DILocation(line: 284, column: 22, scope: !425)
!436 = !DILocation(line: 285, column: 2, scope: !425)
!437 = !DILocation(line: 281, column: 24, scope: !422)
!438 = !DILocation(line: 281, column: 2, scope: !422)
!439 = distinct !{!439, !423, !440, !441}
!440 = !DILocation(line: 285, column: 2, scope: !419)
!441 = !{!"llvm.loop.mustprogress"}
!442 = !DILocalVariable(name: "j", scope: !385, file: !3, line: 260, type: !11)
!443 = !DILocalVariable(name: "k", scope: !385, file: !3, line: 260, type: !11)
!444 = !DILocation(line: 286, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !385, file: !3, line: 286, column: 2)
!446 = !DILocation(line: 0, scope: !445)
!447 = !DILocation(line: 286, column: 31, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !3, line: 286, column: 2)
!449 = !DILocation(line: 286, column: 2, scope: !445)
!450 = !DILocation(line: 287, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 287, column: 7)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 286, column: 44)
!453 = !DILocation(line: 287, column: 7, scope: !452)
!454 = !DILocation(line: 288, column: 15, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !3, line: 287, column: 15)
!456 = !DILocation(line: 288, column: 29, scope: !455)
!457 = !DILocation(line: 288, column: 22, scope: !455)
!458 = !DILocation(line: 289, column: 10, scope: !455)
!459 = !DILocation(line: 289, column: 26, scope: !455)
!460 = !DILocation(line: 289, column: 24, scope: !455)
!461 = !DILocation(line: 290, column: 3, scope: !455)
!462 = !DILocation(line: 290, column: 17, scope: !463)
!463 = distinct !DILexicalBlock(scope: !451, file: !3, line: 290, column: 14)
!464 = !DILocation(line: 290, column: 21, scope: !463)
!465 = !DILocation(line: 290, column: 26, scope: !463)
!466 = !DILocation(line: 290, column: 14, scope: !451)
!467 = !DILocation(line: 291, column: 10, scope: !468)
!468 = distinct !DILexicalBlock(scope: !463, file: !3, line: 290, column: 32)
!469 = !DILocation(line: 292, column: 3, scope: !468)
!470 = !DILocation(line: 0, scope: !451)
!471 = !DILocation(line: 293, column: 18, scope: !452)
!472 = !DILocation(line: 293, column: 24, scope: !452)
!473 = !DILocation(line: 293, column: 10, scope: !452)
!474 = !DILocation(line: 293, column: 7, scope: !452)
!475 = !DILocation(line: 294, column: 11, scope: !452)
!476 = !DILocation(line: 294, column: 17, scope: !452)
!477 = !DILocation(line: 294, column: 3, scope: !452)
!478 = !DILocation(line: 294, column: 22, scope: !452)
!479 = !DILocation(line: 295, column: 11, scope: !452)
!480 = !DILocation(line: 295, column: 17, scope: !452)
!481 = !DILocation(line: 295, column: 3, scope: !452)
!482 = !DILocation(line: 295, column: 22, scope: !452)
!483 = !DILocation(line: 296, column: 7, scope: !484)
!484 = distinct !DILexicalBlock(scope: !452, file: !3, line: 296, column: 7)
!485 = !DILocation(line: 296, column: 12, scope: !484)
!486 = !DILocation(line: 296, column: 7, scope: !452)
!487 = !DILocation(line: 298, column: 6, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !3, line: 296, column: 19)
!489 = !DILocation(line: 299, column: 3, scope: !488)
!490 = !DILocation(line: 0, scope: !484)
!491 = !DILocation(line: 300, column: 2, scope: !452)
!492 = !DILocation(line: 286, column: 40, scope: !448)
!493 = !DILocation(line: 286, column: 2, scope: !448)
!494 = distinct !{!494, !449, !495, !441}
!495 = !DILocation(line: 300, column: 2, scope: !445)
!496 = !DILocation(line: 301, column: 7, scope: !497)
!497 = distinct !DILexicalBlock(scope: !385, file: !3, line: 301, column: 2)
!498 = !DILocation(line: 0, scope: !497)
!499 = !DILocation(line: 301, column: 16, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !3, line: 301, column: 2)
!501 = !DILocation(line: 301, column: 2, scope: !497)
!502 = !DILocation(line: 302, column: 19, scope: !503)
!503 = distinct !DILexicalBlock(scope: !500, file: !3, line: 301, column: 31)
!504 = !DILocation(line: 302, column: 29, scope: !503)
!505 = !DILocation(line: 302, column: 24, scope: !503)
!506 = !DILocation(line: 302, column: 3, scope: !503)
!507 = !DILocation(line: 303, column: 2, scope: !503)
!508 = !DILocation(line: 301, column: 25, scope: !500)
!509 = !DILocation(line: 301, column: 2, scope: !500)
!510 = distinct !{!510, !501, !511, !441}
!511 = !DILocation(line: 303, column: 2, scope: !497)
!512 = !DILocation(line: 304, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !385, file: !3, line: 304, column: 2)
!514 = !DILocation(line: 0, scope: !513)
!515 = !DILocation(line: 304, column: 23, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !3, line: 304, column: 2)
!517 = !DILocation(line: 304, column: 2, scope: !513)
!518 = !DILocation(line: 305, column: 26, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 304, column: 44)
!520 = !DILocation(line: 305, column: 19, scope: !519)
!521 = !DILocation(line: 305, column: 31, scope: !519)
!522 = !DILocation(line: 306, column: 14, scope: !519)
!523 = !DILocation(line: 306, column: 7, scope: !519)
!524 = !DILocation(line: 306, column: 19, scope: !519)
!525 = !DILocation(line: 306, column: 4, scope: !519)
!526 = !DILocation(line: 305, column: 3, scope: !519)
!527 = !DILocation(line: 305, column: 16, scope: !519)
!528 = !DILocation(line: 307, column: 2, scope: !519)
!529 = !DILocation(line: 304, column: 32, scope: !516)
!530 = !DILocation(line: 304, column: 38, scope: !516)
!531 = !DILocation(line: 304, column: 2, scope: !516)
!532 = distinct !{!532, !517, !533, !441}
!533 = !DILocation(line: 307, column: 2, scope: !513)
!534 = !DILocation(line: 308, column: 2, scope: !385)
!535 = !DILocation(line: 309, column: 1, scope: !385)
!536 = distinct !DISubprogram(name: "br_dec32le", scope: !18, file: !18, line: 574, type: !537, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!537 = !DISubroutineType(types: !538)
!538 = !{!6, !388}
!539 = !DILocalVariable(name: "src", arg: 1, scope: !536, file: !18, line: 574, type: !388)
!540 = !DILocation(line: 0, scope: !536)
!541 = !DILocation(line: 577, column: 10, scope: !536)
!542 = !DILocation(line: 577, column: 38, scope: !536)
!543 = !DILocation(line: 577, column: 2, scope: !536)
!544 = distinct !DISubprogram(name: "sub_word", scope: !3, file: !3, line: 241, type: !545, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!545 = !DISubroutineType(types: !546)
!546 = !{!6, !6}
!547 = !DILocalVariable(name: "x", arg: 1, scope: !544, file: !3, line: 241, type: !6)
!548 = !DILocation(line: 0, scope: !544)
!549 = !DILocalVariable(name: "q", scope: !544, file: !3, line: 243, type: !550)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 8)
!553 = !DILocation(line: 243, column: 11, scope: !544)
!554 = !DILocalVariable(name: "i", scope: !544, file: !3, line: 244, type: !11)
!555 = !DILocation(line: 246, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !544, file: !3, line: 246, column: 2)
!557 = !DILocation(line: 0, scope: !556)
!558 = !DILocation(line: 246, column: 16, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !3, line: 246, column: 2)
!560 = !DILocation(line: 246, column: 2, scope: !556)
!561 = !DILocation(line: 247, column: 3, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !3, line: 246, column: 27)
!563 = !DILocation(line: 247, column: 8, scope: !562)
!564 = !DILocation(line: 248, column: 2, scope: !562)
!565 = !DILocation(line: 246, column: 23, scope: !559)
!566 = !DILocation(line: 246, column: 2, scope: !559)
!567 = distinct !{!567, !560, !568, !441}
!568 = !DILocation(line: 248, column: 2, scope: !556)
!569 = !DILocation(line: 249, column: 18, scope: !544)
!570 = !DILocation(line: 249, column: 2, scope: !544)
!571 = !DILocation(line: 250, column: 26, scope: !544)
!572 = !DILocation(line: 250, column: 2, scope: !544)
!573 = !DILocation(line: 251, column: 18, scope: !544)
!574 = !DILocation(line: 251, column: 2, scope: !544)
!575 = !DILocation(line: 252, column: 9, scope: !544)
!576 = !DILocation(line: 252, column: 2, scope: !544)
!577 = distinct !DISubprogram(name: "br_aes_ct_skey_expand", scope: !3, file: !3, line: 313, type: !578, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !39, !10, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!582 = !DILocalVariable(name: "skey", arg: 1, scope: !577, file: !3, line: 313, type: !39)
!583 = !DILocation(line: 0, scope: !577)
!584 = !DILocalVariable(name: "num_rounds", arg: 2, scope: !577, file: !3, line: 314, type: !10)
!585 = !DILocalVariable(name: "comp_skey", arg: 3, scope: !577, file: !3, line: 314, type: !580)
!586 = !DILocation(line: 318, column: 18, scope: !577)
!587 = !DILocation(line: 318, column: 23, scope: !577)
!588 = !DILocalVariable(name: "n", scope: !577, file: !3, line: 316, type: !10)
!589 = !DILocalVariable(name: "u", scope: !577, file: !3, line: 316, type: !10)
!590 = !DILocalVariable(name: "v", scope: !577, file: !3, line: 316, type: !10)
!591 = !DILocation(line: 319, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !577, file: !3, line: 319, column: 2)
!593 = !DILocation(line: 0, scope: !592)
!594 = !DILocation(line: 319, column: 23, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !3, line: 319, column: 2)
!596 = !DILocation(line: 319, column: 2, scope: !592)
!597 = !DILocation(line: 322, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !3, line: 319, column: 42)
!599 = !DILocalVariable(name: "y", scope: !598, file: !3, line: 320, type: !6)
!600 = !DILocation(line: 0, scope: !598)
!601 = !DILocalVariable(name: "x", scope: !598, file: !3, line: 320, type: !6)
!602 = !DILocation(line: 323, column: 5, scope: !598)
!603 = !DILocation(line: 324, column: 24, scope: !598)
!604 = !DILocation(line: 324, column: 19, scope: !598)
!605 = !DILocation(line: 324, column: 10, scope: !598)
!606 = !DILocation(line: 324, column: 3, scope: !598)
!607 = !DILocation(line: 324, column: 15, scope: !598)
!608 = !DILocation(line: 325, column: 5, scope: !598)
!609 = !DILocation(line: 326, column: 24, scope: !598)
!610 = !DILocation(line: 326, column: 19, scope: !598)
!611 = !DILocation(line: 326, column: 10, scope: !598)
!612 = !DILocation(line: 326, column: 3, scope: !598)
!613 = !DILocation(line: 326, column: 15, scope: !598)
!614 = !DILocation(line: 327, column: 2, scope: !598)
!615 = !DILocation(line: 319, column: 30, scope: !595)
!616 = !DILocation(line: 319, column: 36, scope: !595)
!617 = !DILocation(line: 319, column: 2, scope: !595)
!618 = distinct !{!618, !596, !619, !441}
!619 = !DILocation(line: 327, column: 2, scope: !592)
!620 = !DILocation(line: 328, column: 1, scope: !577)
!621 = distinct !DISubprogram(name: "key_sched_wrapper", scope: !31, file: !31, line: 3, type: !622, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !4)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !39, !388, !390}
!624 = !DILocalVariable(name: "comp_skey", arg: 1, scope: !621, file: !31, line: 3, type: !39)
!625 = !DILocation(line: 0, scope: !621)
!626 = !DILocalVariable(name: "key", arg: 2, scope: !621, file: !31, line: 3, type: !388)
!627 = !DILocalVariable(name: "key_len", arg: 3, scope: !621, file: !31, line: 3, type: !390)
!628 = !DILocation(line: 4, column: 12, scope: !621)
!629 = !DILocation(line: 4, column: 2, scope: !621)
!630 = !DILocation(line: 5, column: 12, scope: !621)
!631 = !DILocation(line: 5, column: 2, scope: !621)
!632 = !DILocation(line: 6, column: 12, scope: !621)
!633 = !DILocation(line: 6, column: 2, scope: !621)
!634 = !DILocation(line: 8, column: 2, scope: !621)
!635 = !DILocation(line: 9, column: 1, scope: !621)
!636 = distinct !DISubprogram(name: "key_sched_wrapper_t", scope: !31, file: !31, line: 17, type: !637, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !4)
!637 = !DISubroutineType(types: !638)
!638 = !{null}
!639 = !DILocation(line: 18, column: 19, scope: !636)
!640 = !DILocalVariable(name: "key_len", scope: !636, file: !31, line: 18, type: !390)
!641 = !DILocation(line: 0, scope: !636)
!642 = !DILocation(line: 19, column: 24, scope: !636)
!643 = !DILocalVariable(name: "comp_skey", scope: !636, file: !31, line: 19, type: !39)
!644 = !DILocalVariable(name: "key", scope: !636, file: !31, line: 20, type: !388)
!645 = !DILocation(line: 21, column: 2, scope: !636)
!646 = !DILocation(line: 22, column: 1, scope: !636)
