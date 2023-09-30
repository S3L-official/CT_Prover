; ModuleID = 'br_ghash_ctmul.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul_wrapper(i8* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !19 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %1, metadata !29, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %2, metadata !30, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i64 %3, metadata !31, metadata !DIExpression()), !dbg !28
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !32
  call void @public_in(%struct.smack_value* %5), !dbg !33
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !34
  call void @public_in(%struct.smack_value* %6), !dbg !35
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !36
  call void @public_in(%struct.smack_value* %7), !dbg !37
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !38
  call void @public_in(%struct.smack_value* %8), !dbg !39
  %9 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !40
  call void @public_in(%struct.smack_value* %9), !dbg !41
  %10 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 32), !dbg !42
  call void @public_in(%struct.smack_value* %10), !dbg !43
  call void @br_ghash_ctmul64(i8* %0, i8* %1, i8* %2, i64 %3), !dbg !44
  ret void, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul_wrapper_t() #0 !dbg !46 {
  %1 = call i8* (...) @gety(), !dbg !49
  call void @llvm.dbg.value(metadata i8* %1, metadata !50, metadata !DIExpression()), !dbg !51
  %2 = call i8* (...) @geth(), !dbg !52
  call void @llvm.dbg.value(metadata i8* %2, metadata !53, metadata !DIExpression()), !dbg !51
  %3 = call i8* (...) @getdata(), !dbg !54
  call void @llvm.dbg.value(metadata i8* %3, metadata !55, metadata !DIExpression()), !dbg !51
  %4 = call i64 (...) @getlen(), !dbg !56
  call void @llvm.dbg.value(metadata i64 %4, metadata !57, metadata !DIExpression()), !dbg !51
  call void @br_ghash_ctmul64(i8* %1, i8* %2, i8* %3, i64 %4), !dbg !58
  ret void, !dbg !59
}

declare dso_local i8* @gety(...) #2

declare dso_local i8* @geth(...) #2

declare dso_local i8* @getdata(...) #2

declare dso_local i64 @getlen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul64(i8* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !60 {
  %5 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %1, metadata !63, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %2, metadata !64, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i64 %3, metadata !65, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %2, metadata !66, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %0, metadata !69, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %1, metadata !71, metadata !DIExpression()), !dbg !62
  %6 = call i64 @br_dec64be(i8* %0), !dbg !72
  call void @llvm.dbg.value(metadata i64 %6, metadata !73, metadata !DIExpression()), !dbg !62
  %7 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !74
  %8 = call i64 @br_dec64be(i8* %7), !dbg !75
  call void @llvm.dbg.value(metadata i64 %8, metadata !76, metadata !DIExpression()), !dbg !62
  %9 = call i64 @br_dec64be(i8* %1), !dbg !77
  call void @llvm.dbg.value(metadata i64 %9, metadata !78, metadata !DIExpression()), !dbg !62
  %10 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !79
  %11 = call i64 @br_dec64be(i8* %10), !dbg !80
  call void @llvm.dbg.value(metadata i64 %11, metadata !81, metadata !DIExpression()), !dbg !62
  %12 = call i64 @rev64(i64 %11), !dbg !82
  call void @llvm.dbg.value(metadata i64 %12, metadata !83, metadata !DIExpression()), !dbg !62
  %13 = call i64 @rev64(i64 %9), !dbg !84
  call void @llvm.dbg.value(metadata i64 %13, metadata !85, metadata !DIExpression()), !dbg !62
  %14 = xor i64 %11, %9, !dbg !86
  call void @llvm.dbg.value(metadata i64 %14, metadata !87, metadata !DIExpression()), !dbg !62
  %15 = xor i64 %12, %13, !dbg !88
  call void @llvm.dbg.value(metadata i64 %15, metadata !89, metadata !DIExpression()), !dbg !62
  br label %16, !dbg !90

16:                                               ; preds = %29, %4
  %.04 = phi i8* [ %2, %4 ], [ %.15, %29 ], !dbg !62
  %.03 = phi i64 [ %3, %4 ], [ %.1, %29 ]
  %.02 = phi i64 [ %8, %4 ], [ %92, %29 ], !dbg !62
  %.01 = phi i64 [ %6, %4 ], [ %86, %29 ], !dbg !62
  call void @llvm.dbg.value(metadata i64 %.01, metadata !73, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i64 %.02, metadata !76, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i64 %.03, metadata !65, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %.04, metadata !66, metadata !DIExpression()), !dbg !62
  %17 = icmp ugt i64 %.03, 0, !dbg !91
  br i1 %17, label %18, label %93, !dbg !90

18:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !92, metadata !DIExpression()), !dbg !97
  %19 = icmp uge i64 %.03, 16, !dbg !98
  br i1 %19, label %20, label %23, !dbg !100

20:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* %.04, metadata !101, metadata !DIExpression()), !dbg !102
  %21 = getelementptr inbounds i8, i8* %.04, i64 16, !dbg !103
  call void @llvm.dbg.value(metadata i8* %21, metadata !66, metadata !DIExpression()), !dbg !62
  %22 = sub i64 %.03, 16, !dbg !105
  call void @llvm.dbg.value(metadata i64 %22, metadata !65, metadata !DIExpression()), !dbg !62
  br label %29, !dbg !106

23:                                               ; preds = %18
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !107
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 1 %.04, i64 %.03, i1 false), !dbg !107
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !109
  %26 = getelementptr inbounds i8, i8* %25, i64 %.03, !dbg !110
  %27 = sub i64 16, %.03, !dbg !111
  call void @llvm.memset.p0i8.i64(i8* align 1 %26, i8 0, i64 %27, i1 false), !dbg !112
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !113
  call void @llvm.dbg.value(metadata i8* %28, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 0, metadata !65, metadata !DIExpression()), !dbg !62
  br label %29

29:                                               ; preds = %23, %20
  %.15 = phi i8* [ %21, %20 ], [ %.04, %23 ], !dbg !62
  %.1 = phi i64 [ %22, %20 ], [ 0, %23 ], !dbg !114
  %.0 = phi i8* [ %.04, %20 ], [ %28, %23 ], !dbg !114
  call void @llvm.dbg.value(metadata i8* %.0, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %.1, metadata !65, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %.15, metadata !66, metadata !DIExpression()), !dbg !62
  %30 = call i64 @br_dec64be(i8* %.0), !dbg !115
  %31 = xor i64 %.01, %30, !dbg !116
  call void @llvm.dbg.value(metadata i64 %31, metadata !73, metadata !DIExpression()), !dbg !62
  %32 = getelementptr inbounds i8, i8* %.0, i64 8, !dbg !117
  %33 = call i64 @br_dec64be(i8* %32), !dbg !118
  %34 = xor i64 %.02, %33, !dbg !119
  call void @llvm.dbg.value(metadata i64 %34, metadata !76, metadata !DIExpression()), !dbg !62
  %35 = call i64 @rev64(i64 %34), !dbg !120
  call void @llvm.dbg.value(metadata i64 %35, metadata !121, metadata !DIExpression()), !dbg !102
  %36 = call i64 @rev64(i64 %31), !dbg !122
  call void @llvm.dbg.value(metadata i64 %36, metadata !123, metadata !DIExpression()), !dbg !102
  %37 = xor i64 %34, %31, !dbg !124
  call void @llvm.dbg.value(metadata i64 %37, metadata !125, metadata !DIExpression()), !dbg !102
  %38 = xor i64 %35, %36, !dbg !126
  call void @llvm.dbg.value(metadata i64 %38, metadata !127, metadata !DIExpression()), !dbg !102
  %39 = call i64 @bmul64(i64 %34, i64 %11), !dbg !128
  call void @llvm.dbg.value(metadata i64 %39, metadata !129, metadata !DIExpression()), !dbg !102
  %40 = call i64 @bmul64(i64 %31, i64 %9), !dbg !130
  call void @llvm.dbg.value(metadata i64 %40, metadata !131, metadata !DIExpression()), !dbg !102
  %41 = call i64 @bmul64(i64 %37, i64 %14), !dbg !132
  call void @llvm.dbg.value(metadata i64 %41, metadata !133, metadata !DIExpression()), !dbg !102
  %42 = call i64 @bmul64(i64 %35, i64 %12), !dbg !134
  call void @llvm.dbg.value(metadata i64 %42, metadata !135, metadata !DIExpression()), !dbg !102
  %43 = call i64 @bmul64(i64 %36, i64 %13), !dbg !136
  call void @llvm.dbg.value(metadata i64 %43, metadata !137, metadata !DIExpression()), !dbg !102
  %44 = call i64 @bmul64(i64 %38, i64 %15), !dbg !138
  call void @llvm.dbg.value(metadata i64 %44, metadata !139, metadata !DIExpression()), !dbg !102
  %45 = xor i64 %39, %40, !dbg !140
  %46 = xor i64 %41, %45, !dbg !141
  call void @llvm.dbg.value(metadata i64 %46, metadata !133, metadata !DIExpression()), !dbg !102
  %47 = xor i64 %42, %43, !dbg !142
  %48 = xor i64 %44, %47, !dbg !143
  call void @llvm.dbg.value(metadata i64 %48, metadata !139, metadata !DIExpression()), !dbg !102
  %49 = call i64 @rev64(i64 %42), !dbg !144
  %50 = lshr i64 %49, 1, !dbg !145
  call void @llvm.dbg.value(metadata i64 %50, metadata !135, metadata !DIExpression()), !dbg !102
  %51 = call i64 @rev64(i64 %43), !dbg !146
  %52 = lshr i64 %51, 1, !dbg !147
  call void @llvm.dbg.value(metadata i64 %52, metadata !137, metadata !DIExpression()), !dbg !102
  %53 = call i64 @rev64(i64 %48), !dbg !148
  %54 = lshr i64 %53, 1, !dbg !149
  call void @llvm.dbg.value(metadata i64 %54, metadata !139, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %39, metadata !150, metadata !DIExpression()), !dbg !102
  %55 = xor i64 %50, %46, !dbg !151
  call void @llvm.dbg.value(metadata i64 %55, metadata !152, metadata !DIExpression()), !dbg !102
  %56 = xor i64 %40, %54, !dbg !153
  call void @llvm.dbg.value(metadata i64 %56, metadata !154, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %52, metadata !155, metadata !DIExpression()), !dbg !102
  %57 = shl i64 %52, 1, !dbg !156
  %58 = lshr i64 %56, 63, !dbg !157
  %59 = or i64 %57, %58, !dbg !158
  call void @llvm.dbg.value(metadata i64 %59, metadata !155, metadata !DIExpression()), !dbg !102
  %60 = shl i64 %56, 1, !dbg !159
  %61 = lshr i64 %55, 63, !dbg !160
  %62 = or i64 %60, %61, !dbg !161
  call void @llvm.dbg.value(metadata i64 %62, metadata !154, metadata !DIExpression()), !dbg !102
  %63 = shl i64 %55, 1, !dbg !162
  %64 = lshr i64 %39, 63, !dbg !163
  %65 = or i64 %63, %64, !dbg !164
  call void @llvm.dbg.value(metadata i64 %65, metadata !152, metadata !DIExpression()), !dbg !102
  %66 = shl i64 %39, 1, !dbg !165
  call void @llvm.dbg.value(metadata i64 %66, metadata !150, metadata !DIExpression()), !dbg !102
  %67 = lshr i64 %66, 1, !dbg !166
  %68 = xor i64 %66, %67, !dbg !167
  %69 = lshr i64 %66, 2, !dbg !168
  %70 = xor i64 %68, %69, !dbg !169
  %71 = lshr i64 %66, 7, !dbg !170
  %72 = xor i64 %70, %71, !dbg !171
  %73 = xor i64 %62, %72, !dbg !172
  call void @llvm.dbg.value(metadata i64 %73, metadata !154, metadata !DIExpression()), !dbg !102
  %74 = shl i64 %66, 63, !dbg !173
  %75 = shl i64 %66, 62, !dbg !174
  %76 = xor i64 %74, %75, !dbg !175
  %77 = shl i64 %66, 57, !dbg !176
  %78 = xor i64 %76, %77, !dbg !177
  %79 = xor i64 %65, %78, !dbg !178
  call void @llvm.dbg.value(metadata i64 %79, metadata !152, metadata !DIExpression()), !dbg !102
  %80 = lshr i64 %79, 1, !dbg !179
  %81 = xor i64 %79, %80, !dbg !180
  %82 = lshr i64 %79, 2, !dbg !181
  %83 = xor i64 %81, %82, !dbg !182
  %84 = lshr i64 %79, 7, !dbg !183
  %85 = xor i64 %83, %84, !dbg !184
  %86 = xor i64 %59, %85, !dbg !185
  call void @llvm.dbg.value(metadata i64 %86, metadata !155, metadata !DIExpression()), !dbg !102
  %87 = shl i64 %79, 63, !dbg !186
  %88 = shl i64 %79, 62, !dbg !187
  %89 = xor i64 %87, %88, !dbg !188
  %90 = shl i64 %79, 57, !dbg !189
  %91 = xor i64 %89, %90, !dbg !190
  %92 = xor i64 %73, %91, !dbg !191
  call void @llvm.dbg.value(metadata i64 %92, metadata !154, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %92, metadata !76, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i64 %86, metadata !73, metadata !DIExpression()), !dbg !62
  br label %16, !dbg !90, !llvm.loop !192

93:                                               ; preds = %16
  call void @br_enc64be(i8* %0, i64 %.01), !dbg !195
  %94 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !196
  call void @br_enc64be(i8* %94, i64 %.02), !dbg !197
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @br_dec64be(i8* %0) #0 !dbg !199 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i8* %0, metadata !205, metadata !DIExpression()), !dbg !204
  %2 = call i32 @br_dec32be(i8* %0), !dbg !206
  %3 = zext i32 %2 to i64, !dbg !207
  %4 = shl i64 %3, 32, !dbg !208
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !209
  %6 = call i32 @br_dec32be(i8* %5), !dbg !210
  %7 = zext i32 %6 to i64, !dbg !211
  %8 = or i64 %4, %7, !dbg !212
  ret i64 %8, !dbg !213
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @rev64(i64 %0) #0 !dbg !214 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !217, metadata !DIExpression()), !dbg !218
  br label %2, !dbg !219

2:                                                ; preds = %1
  %3 = and i64 %0, 6148914691236517205, !dbg !220
  %4 = shl i64 %3, 1, !dbg !220
  %5 = lshr i64 %0, 1, !dbg !220
  %6 = and i64 %5, 6148914691236517205, !dbg !220
  %7 = or i64 %4, %6, !dbg !220
  call void @llvm.dbg.value(metadata i64 %7, metadata !217, metadata !DIExpression()), !dbg !218
  br label %8, !dbg !220

8:                                                ; preds = %2
  br label %9, !dbg !222

9:                                                ; preds = %8
  %10 = and i64 %7, 3689348814741910323, !dbg !223
  %11 = shl i64 %10, 2, !dbg !223
  %12 = lshr i64 %7, 2, !dbg !223
  %13 = and i64 %12, 3689348814741910323, !dbg !223
  %14 = or i64 %11, %13, !dbg !223
  call void @llvm.dbg.value(metadata i64 %14, metadata !217, metadata !DIExpression()), !dbg !218
  br label %15, !dbg !223

15:                                               ; preds = %9
  br label %16, !dbg !225

16:                                               ; preds = %15
  %17 = and i64 %14, 1085102592571150095, !dbg !226
  %18 = shl i64 %17, 4, !dbg !226
  %19 = lshr i64 %14, 4, !dbg !226
  %20 = and i64 %19, 1085102592571150095, !dbg !226
  %21 = or i64 %18, %20, !dbg !226
  call void @llvm.dbg.value(metadata i64 %21, metadata !217, metadata !DIExpression()), !dbg !218
  br label %22, !dbg !226

22:                                               ; preds = %16
  br label %23, !dbg !228

23:                                               ; preds = %22
  %24 = and i64 %21, 71777214294589695, !dbg !229
  %25 = shl i64 %24, 8, !dbg !229
  %26 = lshr i64 %21, 8, !dbg !229
  %27 = and i64 %26, 71777214294589695, !dbg !229
  %28 = or i64 %25, %27, !dbg !229
  call void @llvm.dbg.value(metadata i64 %28, metadata !217, metadata !DIExpression()), !dbg !218
  br label %29, !dbg !229

29:                                               ; preds = %23
  br label %30, !dbg !231

30:                                               ; preds = %29
  %31 = and i64 %28, 281470681808895, !dbg !232
  %32 = shl i64 %31, 16, !dbg !232
  %33 = lshr i64 %28, 16, !dbg !232
  %34 = and i64 %33, 281470681808895, !dbg !232
  %35 = or i64 %32, %34, !dbg !232
  call void @llvm.dbg.value(metadata i64 %35, metadata !217, metadata !DIExpression()), !dbg !218
  br label %36, !dbg !232

36:                                               ; preds = %30
  %37 = shl i64 %35, 32, !dbg !234
  %38 = lshr i64 %35, 32, !dbg !235
  %39 = or i64 %37, %38, !dbg !236
  ret i64 %39, !dbg !237
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @bmul64(i64 %0, i64 %1) #0 !dbg !238 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 %1, metadata !243, metadata !DIExpression()), !dbg !242
  %3 = and i64 %0, 1229782938247303441, !dbg !244
  call void @llvm.dbg.value(metadata i64 %3, metadata !245, metadata !DIExpression()), !dbg !242
  %4 = and i64 %0, 2459565876494606882, !dbg !246
  call void @llvm.dbg.value(metadata i64 %4, metadata !247, metadata !DIExpression()), !dbg !242
  %5 = and i64 %0, 4919131752989213764, !dbg !248
  call void @llvm.dbg.value(metadata i64 %5, metadata !249, metadata !DIExpression()), !dbg !242
  %6 = and i64 %0, -8608480567731124088, !dbg !250
  call void @llvm.dbg.value(metadata i64 %6, metadata !251, metadata !DIExpression()), !dbg !242
  %7 = and i64 %1, 1229782938247303441, !dbg !252
  call void @llvm.dbg.value(metadata i64 %7, metadata !253, metadata !DIExpression()), !dbg !242
  %8 = and i64 %1, 2459565876494606882, !dbg !254
  call void @llvm.dbg.value(metadata i64 %8, metadata !255, metadata !DIExpression()), !dbg !242
  %9 = and i64 %1, 4919131752989213764, !dbg !256
  call void @llvm.dbg.value(metadata i64 %9, metadata !257, metadata !DIExpression()), !dbg !242
  %10 = and i64 %1, -8608480567731124088, !dbg !258
  call void @llvm.dbg.value(metadata i64 %10, metadata !259, metadata !DIExpression()), !dbg !242
  %11 = mul i64 %3, %7, !dbg !260
  %12 = mul i64 %4, %10, !dbg !261
  %13 = xor i64 %11, %12, !dbg !262
  %14 = mul i64 %5, %9, !dbg !263
  %15 = xor i64 %13, %14, !dbg !264
  %16 = mul i64 %6, %8, !dbg !265
  %17 = xor i64 %15, %16, !dbg !266
  call void @llvm.dbg.value(metadata i64 %17, metadata !267, metadata !DIExpression()), !dbg !242
  %18 = mul i64 %3, %8, !dbg !268
  %19 = mul i64 %4, %7, !dbg !269
  %20 = xor i64 %18, %19, !dbg !270
  %21 = mul i64 %5, %10, !dbg !271
  %22 = xor i64 %20, %21, !dbg !272
  %23 = mul i64 %6, %9, !dbg !273
  %24 = xor i64 %22, %23, !dbg !274
  call void @llvm.dbg.value(metadata i64 %24, metadata !275, metadata !DIExpression()), !dbg !242
  %25 = mul i64 %3, %9, !dbg !276
  %26 = mul i64 %4, %8, !dbg !277
  %27 = xor i64 %25, %26, !dbg !278
  %28 = mul i64 %5, %7, !dbg !279
  %29 = xor i64 %27, %28, !dbg !280
  %30 = mul i64 %6, %10, !dbg !281
  %31 = xor i64 %29, %30, !dbg !282
  call void @llvm.dbg.value(metadata i64 %31, metadata !283, metadata !DIExpression()), !dbg !242
  %32 = mul i64 %3, %10, !dbg !284
  %33 = mul i64 %4, %9, !dbg !285
  %34 = xor i64 %32, %33, !dbg !286
  %35 = mul i64 %5, %8, !dbg !287
  %36 = xor i64 %34, %35, !dbg !288
  %37 = mul i64 %6, %7, !dbg !289
  %38 = xor i64 %36, %37, !dbg !290
  call void @llvm.dbg.value(metadata i64 %38, metadata !291, metadata !DIExpression()), !dbg !242
  %39 = and i64 %17, 1229782938247303441, !dbg !292
  call void @llvm.dbg.value(metadata i64 %39, metadata !267, metadata !DIExpression()), !dbg !242
  %40 = and i64 %24, 2459565876494606882, !dbg !293
  call void @llvm.dbg.value(metadata i64 %40, metadata !275, metadata !DIExpression()), !dbg !242
  %41 = and i64 %31, 4919131752989213764, !dbg !294
  call void @llvm.dbg.value(metadata i64 %41, metadata !283, metadata !DIExpression()), !dbg !242
  %42 = and i64 %38, -8608480567731124088, !dbg !295
  call void @llvm.dbg.value(metadata i64 %42, metadata !291, metadata !DIExpression()), !dbg !242
  %43 = or i64 %39, %40, !dbg !296
  %44 = or i64 %43, %41, !dbg !297
  %45 = or i64 %44, %42, !dbg !298
  ret i64 %45, !dbg !299
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64be(i8* %0, i64 %1) #0 !dbg !300 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i64 %1, metadata !305, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.value(metadata i8* %0, metadata !306, metadata !DIExpression()), !dbg !304
  %3 = lshr i64 %1, 32, !dbg !307
  %4 = trunc i64 %3 to i32, !dbg !308
  call void @br_enc32be(i8* %0, i32 %4), !dbg !309
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !310
  %6 = trunc i64 %1 to i32, !dbg !311
  call void @br_enc32be(i8* %5, i32 %6), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !314 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 %1, metadata !319, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i8* %0, metadata !320, metadata !DIExpression()), !dbg !318
  %3 = lshr i32 %1, 24, !dbg !321
  %4 = trunc i32 %3 to i8, !dbg !322
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !323
  store i8 %4, i8* %5, align 1, !dbg !324
  %6 = lshr i32 %1, 16, !dbg !325
  %7 = trunc i32 %6 to i8, !dbg !326
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !327
  store i8 %7, i8* %8, align 1, !dbg !328
  %9 = lshr i32 %1, 8, !dbg !329
  %10 = trunc i32 %9 to i8, !dbg !330
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !331
  store i8 %10, i8* %11, align 1, !dbg !332
  %12 = trunc i32 %1 to i8, !dbg !333
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !334
  store i8 %12, i8* %13, align 1, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !337 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !340, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i8* %0, metadata !342, metadata !DIExpression()), !dbg !341
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !343
  %3 = load i8, i8* %2, align 1, !dbg !343
  %4 = zext i8 %3 to i32, !dbg !344
  %5 = shl i32 %4, 24, !dbg !345
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !346
  %7 = load i8, i8* %6, align 1, !dbg !346
  %8 = zext i8 %7 to i32, !dbg !347
  %9 = shl i32 %8, 16, !dbg !348
  %10 = or i32 %5, %9, !dbg !349
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !350
  %12 = load i8, i8* %11, align 1, !dbg !350
  %13 = zext i8 %12 to i32, !dbg !351
  %14 = shl i32 %13, 8, !dbg !352
  %15 = or i32 %10, %14, !dbg !353
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !354
  %17 = load i8, i8* %16, align 1, !dbg !354
  %18 = zext i8 %17 to i32, !dbg !355
  %19 = or i32 %15, %18, !dbg !356
  ret i32 %19, !dbg !357
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

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
!29 = !DILocalVariable(name: "h", arg: 2, scope: !19, file: !1, line: 3, type: !23)
!30 = !DILocalVariable(name: "data", arg: 3, scope: !19, file: !1, line: 3, type: !23)
!31 = !DILocalVariable(name: "len", arg: 4, scope: !19, file: !1, line: 3, type: !25)
!32 = !DILocation(line: 4, column: 12, scope: !19)
!33 = !DILocation(line: 4, column: 2, scope: !19)
!34 = !DILocation(line: 5, column: 12, scope: !19)
!35 = !DILocation(line: 5, column: 2, scope: !19)
!36 = !DILocation(line: 6, column: 12, scope: !19)
!37 = !DILocation(line: 6, column: 2, scope: !19)
!38 = !DILocation(line: 7, column: 12, scope: !19)
!39 = !DILocation(line: 7, column: 2, scope: !19)
!40 = !DILocation(line: 9, column: 12, scope: !19)
!41 = !DILocation(line: 9, column: 2, scope: !19)
!42 = !DILocation(line: 10, column: 12, scope: !19)
!43 = !DILocation(line: 10, column: 2, scope: !19)
!44 = !DILocation(line: 12, column: 2, scope: !19)
!45 = !DILocation(line: 13, column: 1, scope: !19)
!46 = distinct !DISubprogram(name: "br_ghash_ctmul_wrapper_t", scope: !1, file: !1, line: 21, type: !47, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{null}
!49 = !DILocation(line: 22, column: 12, scope: !46)
!50 = !DILocalVariable(name: "y", scope: !46, file: !1, line: 22, type: !22)
!51 = !DILocation(line: 0, scope: !46)
!52 = !DILocation(line: 23, column: 19, scope: !46)
!53 = !DILocalVariable(name: "h", scope: !46, file: !1, line: 23, type: !23)
!54 = !DILocation(line: 24, column: 22, scope: !46)
!55 = !DILocalVariable(name: "data", scope: !46, file: !1, line: 24, type: !23)
!56 = !DILocation(line: 25, column: 17, scope: !46)
!57 = !DILocalVariable(name: "len", scope: !46, file: !1, line: 25, type: !25)
!58 = !DILocation(line: 26, column: 2, scope: !46)
!59 = !DILocation(line: 27, column: 1, scope: !46)
!60 = distinct !DISubprogram(name: "br_ghash_ctmul64", scope: !4, file: !4, line: 78, type: !20, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!61 = !DILocalVariable(name: "y", arg: 1, scope: !60, file: !4, line: 78, type: !22)
!62 = !DILocation(line: 0, scope: !60)
!63 = !DILocalVariable(name: "h", arg: 2, scope: !60, file: !4, line: 78, type: !23)
!64 = !DILocalVariable(name: "data", arg: 3, scope: !60, file: !4, line: 78, type: !23)
!65 = !DILocalVariable(name: "len", arg: 4, scope: !60, file: !4, line: 78, type: !25)
!66 = !DILocalVariable(name: "buf", scope: !60, file: !4, line: 80, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!69 = !DILocalVariable(name: "yb", scope: !60, file: !4, line: 81, type: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!71 = !DILocalVariable(name: "hb", scope: !60, file: !4, line: 80, type: !67)
!72 = !DILocation(line: 88, column: 7, scope: !60)
!73 = !DILocalVariable(name: "y1", scope: !60, file: !4, line: 82, type: !6)
!74 = !DILocation(line: 89, column: 21, scope: !60)
!75 = !DILocation(line: 89, column: 7, scope: !60)
!76 = !DILocalVariable(name: "y0", scope: !60, file: !4, line: 82, type: !6)
!77 = !DILocation(line: 90, column: 7, scope: !60)
!78 = !DILocalVariable(name: "h1", scope: !60, file: !4, line: 83, type: !6)
!79 = !DILocation(line: 91, column: 21, scope: !60)
!80 = !DILocation(line: 91, column: 7, scope: !60)
!81 = !DILocalVariable(name: "h0", scope: !60, file: !4, line: 83, type: !6)
!82 = !DILocation(line: 92, column: 8, scope: !60)
!83 = !DILocalVariable(name: "h0r", scope: !60, file: !4, line: 83, type: !6)
!84 = !DILocation(line: 93, column: 8, scope: !60)
!85 = !DILocalVariable(name: "h1r", scope: !60, file: !4, line: 83, type: !6)
!86 = !DILocation(line: 94, column: 10, scope: !60)
!87 = !DILocalVariable(name: "h2", scope: !60, file: !4, line: 83, type: !6)
!88 = !DILocation(line: 95, column: 12, scope: !60)
!89 = !DILocalVariable(name: "h2r", scope: !60, file: !4, line: 83, type: !6)
!90 = !DILocation(line: 96, column: 2, scope: !60)
!91 = !DILocation(line: 96, column: 13, scope: !60)
!92 = !DILocalVariable(name: "tmp", scope: !93, file: !4, line: 98, type: !94)
!93 = distinct !DILexicalBlock(scope: !60, file: !4, line: 96, column: 18)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 16)
!97 = !DILocation(line: 98, column: 17, scope: !93)
!98 = !DILocation(line: 103, column: 11, scope: !99)
!99 = distinct !DILexicalBlock(scope: !93, file: !4, line: 103, column: 7)
!100 = !DILocation(line: 103, column: 7, scope: !93)
!101 = !DILocalVariable(name: "src", scope: !93, file: !4, line: 97, type: !67)
!102 = !DILocation(line: 0, scope: !93)
!103 = !DILocation(line: 105, column: 8, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !4, line: 103, column: 18)
!105 = !DILocation(line: 106, column: 8, scope: !104)
!106 = !DILocation(line: 107, column: 3, scope: !104)
!107 = !DILocation(line: 108, column: 4, scope: !108)
!108 = distinct !DILexicalBlock(scope: !99, file: !4, line: 107, column: 10)
!109 = !DILocation(line: 109, column: 11, scope: !108)
!110 = !DILocation(line: 109, column: 15, scope: !108)
!111 = !DILocation(line: 109, column: 38, scope: !108)
!112 = !DILocation(line: 109, column: 4, scope: !108)
!113 = !DILocation(line: 110, column: 10, scope: !108)
!114 = !DILocation(line: 0, scope: !99)
!115 = !DILocation(line: 113, column: 9, scope: !93)
!116 = !DILocation(line: 113, column: 6, scope: !93)
!117 = !DILocation(line: 114, column: 24, scope: !93)
!118 = !DILocation(line: 114, column: 9, scope: !93)
!119 = !DILocation(line: 114, column: 6, scope: !93)
!120 = !DILocation(line: 116, column: 9, scope: !93)
!121 = !DILocalVariable(name: "y0r", scope: !93, file: !4, line: 99, type: !6)
!122 = !DILocation(line: 117, column: 9, scope: !93)
!123 = !DILocalVariable(name: "y1r", scope: !93, file: !4, line: 99, type: !6)
!124 = !DILocation(line: 118, column: 11, scope: !93)
!125 = !DILocalVariable(name: "y2", scope: !93, file: !4, line: 99, type: !6)
!126 = !DILocation(line: 119, column: 13, scope: !93)
!127 = !DILocalVariable(name: "y2r", scope: !93, file: !4, line: 99, type: !6)
!128 = !DILocation(line: 121, column: 8, scope: !93)
!129 = !DILocalVariable(name: "z0", scope: !93, file: !4, line: 100, type: !6)
!130 = !DILocation(line: 122, column: 8, scope: !93)
!131 = !DILocalVariable(name: "z1", scope: !93, file: !4, line: 100, type: !6)
!132 = !DILocation(line: 123, column: 8, scope: !93)
!133 = !DILocalVariable(name: "z2", scope: !93, file: !4, line: 100, type: !6)
!134 = !DILocation(line: 124, column: 9, scope: !93)
!135 = !DILocalVariable(name: "z0h", scope: !93, file: !4, line: 100, type: !6)
!136 = !DILocation(line: 125, column: 9, scope: !93)
!137 = !DILocalVariable(name: "z1h", scope: !93, file: !4, line: 100, type: !6)
!138 = !DILocation(line: 126, column: 9, scope: !93)
!139 = !DILocalVariable(name: "z2h", scope: !93, file: !4, line: 100, type: !6)
!140 = !DILocation(line: 127, column: 12, scope: !93)
!141 = !DILocation(line: 127, column: 6, scope: !93)
!142 = !DILocation(line: 128, column: 14, scope: !93)
!143 = !DILocation(line: 128, column: 7, scope: !93)
!144 = !DILocation(line: 129, column: 9, scope: !93)
!145 = !DILocation(line: 129, column: 20, scope: !93)
!146 = !DILocation(line: 130, column: 9, scope: !93)
!147 = !DILocation(line: 130, column: 20, scope: !93)
!148 = !DILocation(line: 131, column: 9, scope: !93)
!149 = !DILocation(line: 131, column: 20, scope: !93)
!150 = !DILocalVariable(name: "v0", scope: !93, file: !4, line: 101, type: !6)
!151 = !DILocation(line: 134, column: 12, scope: !93)
!152 = !DILocalVariable(name: "v1", scope: !93, file: !4, line: 101, type: !6)
!153 = !DILocation(line: 135, column: 11, scope: !93)
!154 = !DILocalVariable(name: "v2", scope: !93, file: !4, line: 101, type: !6)
!155 = !DILocalVariable(name: "v3", scope: !93, file: !4, line: 101, type: !6)
!156 = !DILocation(line: 138, column: 12, scope: !93)
!157 = !DILocation(line: 138, column: 24, scope: !93)
!158 = !DILocation(line: 138, column: 18, scope: !93)
!159 = !DILocation(line: 139, column: 12, scope: !93)
!160 = !DILocation(line: 139, column: 24, scope: !93)
!161 = !DILocation(line: 139, column: 18, scope: !93)
!162 = !DILocation(line: 140, column: 12, scope: !93)
!163 = !DILocation(line: 140, column: 24, scope: !93)
!164 = !DILocation(line: 140, column: 18, scope: !93)
!165 = !DILocation(line: 141, column: 12, scope: !93)
!166 = !DILocation(line: 143, column: 18, scope: !93)
!167 = !DILocation(line: 143, column: 12, scope: !93)
!168 = !DILocation(line: 143, column: 30, scope: !93)
!169 = !DILocation(line: 143, column: 24, scope: !93)
!170 = !DILocation(line: 143, column: 42, scope: !93)
!171 = !DILocation(line: 143, column: 36, scope: !93)
!172 = !DILocation(line: 143, column: 6, scope: !93)
!173 = !DILocation(line: 144, column: 13, scope: !93)
!174 = !DILocation(line: 144, column: 26, scope: !93)
!175 = !DILocation(line: 144, column: 20, scope: !93)
!176 = !DILocation(line: 144, column: 39, scope: !93)
!177 = !DILocation(line: 144, column: 33, scope: !93)
!178 = !DILocation(line: 144, column: 6, scope: !93)
!179 = !DILocation(line: 145, column: 18, scope: !93)
!180 = !DILocation(line: 145, column: 12, scope: !93)
!181 = !DILocation(line: 145, column: 30, scope: !93)
!182 = !DILocation(line: 145, column: 24, scope: !93)
!183 = !DILocation(line: 145, column: 42, scope: !93)
!184 = !DILocation(line: 145, column: 36, scope: !93)
!185 = !DILocation(line: 145, column: 6, scope: !93)
!186 = !DILocation(line: 146, column: 13, scope: !93)
!187 = !DILocation(line: 146, column: 26, scope: !93)
!188 = !DILocation(line: 146, column: 20, scope: !93)
!189 = !DILocation(line: 146, column: 39, scope: !93)
!190 = !DILocation(line: 146, column: 33, scope: !93)
!191 = !DILocation(line: 146, column: 6, scope: !93)
!192 = distinct !{!192, !90, !193, !194}
!193 = !DILocation(line: 150, column: 2, scope: !60)
!194 = !{!"llvm.loop.mustprogress"}
!195 = !DILocation(line: 152, column: 2, scope: !60)
!196 = !DILocation(line: 153, column: 16, scope: !60)
!197 = !DILocation(line: 153, column: 2, scope: !60)
!198 = !DILocation(line: 154, column: 1, scope: !60)
!199 = distinct !DISubprogram(name: "br_dec64be", scope: !200, file: !200, line: 648, type: !201, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!200 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/GHASH_ctmul64")
!201 = !DISubroutineType(types: !202)
!202 = !{!6, !23}
!203 = !DILocalVariable(name: "src", arg: 1, scope: !199, file: !200, line: 648, type: !23)
!204 = !DILocation(line: 0, scope: !199)
!205 = !DILocalVariable(name: "buf", scope: !199, file: !200, line: 653, type: !67)
!206 = !DILocation(line: 656, column: 20, scope: !199)
!207 = !DILocation(line: 656, column: 10, scope: !199)
!208 = !DILocation(line: 656, column: 36, scope: !199)
!209 = !DILocation(line: 657, column: 30, scope: !199)
!210 = !DILocation(line: 657, column: 15, scope: !199)
!211 = !DILocation(line: 657, column: 5, scope: !199)
!212 = !DILocation(line: 657, column: 3, scope: !199)
!213 = !DILocation(line: 656, column: 2, scope: !199)
!214 = distinct !DISubprogram(name: "rev64", scope: !4, file: !4, line: 59, type: !215, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!215 = !DISubroutineType(types: !216)
!216 = !{!6, !6}
!217 = !DILocalVariable(name: "x", arg: 1, scope: !214, file: !4, line: 59, type: !6)
!218 = !DILocation(line: 0, scope: !214)
!219 = !DILocation(line: 66, column: 2, scope: !214)
!220 = !DILocation(line: 66, column: 2, scope: !221)
!221 = distinct !DILexicalBlock(scope: !214, file: !4, line: 66, column: 2)
!222 = !DILocation(line: 67, column: 2, scope: !214)
!223 = !DILocation(line: 67, column: 2, scope: !224)
!224 = distinct !DILexicalBlock(scope: !214, file: !4, line: 67, column: 2)
!225 = !DILocation(line: 68, column: 2, scope: !214)
!226 = !DILocation(line: 68, column: 2, scope: !227)
!227 = distinct !DILexicalBlock(scope: !214, file: !4, line: 68, column: 2)
!228 = !DILocation(line: 69, column: 2, scope: !214)
!229 = !DILocation(line: 69, column: 2, scope: !230)
!230 = distinct !DILexicalBlock(scope: !214, file: !4, line: 69, column: 2)
!231 = !DILocation(line: 70, column: 2, scope: !214)
!232 = !DILocation(line: 70, column: 2, scope: !233)
!233 = distinct !DILexicalBlock(scope: !214, file: !4, line: 70, column: 2)
!234 = !DILocation(line: 71, column: 12, scope: !214)
!235 = !DILocation(line: 71, column: 24, scope: !214)
!236 = !DILocation(line: 71, column: 19, scope: !214)
!237 = !DILocation(line: 71, column: 2, scope: !214)
!238 = distinct !DISubprogram(name: "bmul64", scope: !4, file: !4, line: 33, type: !239, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!239 = !DISubroutineType(types: !240)
!240 = !{!6, !6, !6}
!241 = !DILocalVariable(name: "x", arg: 1, scope: !238, file: !4, line: 33, type: !6)
!242 = !DILocation(line: 0, scope: !238)
!243 = !DILocalVariable(name: "y", arg: 2, scope: !238, file: !4, line: 33, type: !6)
!244 = !DILocation(line: 39, column: 9, scope: !238)
!245 = !DILocalVariable(name: "x0", scope: !238, file: !4, line: 35, type: !6)
!246 = !DILocation(line: 40, column: 9, scope: !238)
!247 = !DILocalVariable(name: "x1", scope: !238, file: !4, line: 35, type: !6)
!248 = !DILocation(line: 41, column: 9, scope: !238)
!249 = !DILocalVariable(name: "x2", scope: !238, file: !4, line: 35, type: !6)
!250 = !DILocation(line: 42, column: 9, scope: !238)
!251 = !DILocalVariable(name: "x3", scope: !238, file: !4, line: 35, type: !6)
!252 = !DILocation(line: 43, column: 9, scope: !238)
!253 = !DILocalVariable(name: "y0", scope: !238, file: !4, line: 36, type: !6)
!254 = !DILocation(line: 44, column: 9, scope: !238)
!255 = !DILocalVariable(name: "y1", scope: !238, file: !4, line: 36, type: !6)
!256 = !DILocation(line: 45, column: 9, scope: !238)
!257 = !DILocalVariable(name: "y2", scope: !238, file: !4, line: 36, type: !6)
!258 = !DILocation(line: 46, column: 9, scope: !238)
!259 = !DILocalVariable(name: "y3", scope: !238, file: !4, line: 36, type: !6)
!260 = !DILocation(line: 47, column: 11, scope: !238)
!261 = !DILocation(line: 47, column: 23, scope: !238)
!262 = !DILocation(line: 47, column: 17, scope: !238)
!263 = !DILocation(line: 47, column: 35, scope: !238)
!264 = !DILocation(line: 47, column: 29, scope: !238)
!265 = !DILocation(line: 47, column: 47, scope: !238)
!266 = !DILocation(line: 47, column: 41, scope: !238)
!267 = !DILocalVariable(name: "z0", scope: !238, file: !4, line: 37, type: !6)
!268 = !DILocation(line: 48, column: 11, scope: !238)
!269 = !DILocation(line: 48, column: 23, scope: !238)
!270 = !DILocation(line: 48, column: 17, scope: !238)
!271 = !DILocation(line: 48, column: 35, scope: !238)
!272 = !DILocation(line: 48, column: 29, scope: !238)
!273 = !DILocation(line: 48, column: 47, scope: !238)
!274 = !DILocation(line: 48, column: 41, scope: !238)
!275 = !DILocalVariable(name: "z1", scope: !238, file: !4, line: 37, type: !6)
!276 = !DILocation(line: 49, column: 11, scope: !238)
!277 = !DILocation(line: 49, column: 23, scope: !238)
!278 = !DILocation(line: 49, column: 17, scope: !238)
!279 = !DILocation(line: 49, column: 35, scope: !238)
!280 = !DILocation(line: 49, column: 29, scope: !238)
!281 = !DILocation(line: 49, column: 47, scope: !238)
!282 = !DILocation(line: 49, column: 41, scope: !238)
!283 = !DILocalVariable(name: "z2", scope: !238, file: !4, line: 37, type: !6)
!284 = !DILocation(line: 50, column: 11, scope: !238)
!285 = !DILocation(line: 50, column: 23, scope: !238)
!286 = !DILocation(line: 50, column: 17, scope: !238)
!287 = !DILocation(line: 50, column: 35, scope: !238)
!288 = !DILocation(line: 50, column: 29, scope: !238)
!289 = !DILocation(line: 50, column: 47, scope: !238)
!290 = !DILocation(line: 50, column: 41, scope: !238)
!291 = !DILocalVariable(name: "z3", scope: !238, file: !4, line: 37, type: !6)
!292 = !DILocation(line: 51, column: 5, scope: !238)
!293 = !DILocation(line: 52, column: 5, scope: !238)
!294 = !DILocation(line: 53, column: 5, scope: !238)
!295 = !DILocation(line: 54, column: 5, scope: !238)
!296 = !DILocation(line: 55, column: 12, scope: !238)
!297 = !DILocation(line: 55, column: 17, scope: !238)
!298 = !DILocation(line: 55, column: 22, scope: !238)
!299 = !DILocation(line: 55, column: 2, scope: !238)
!300 = distinct !DISubprogram(name: "br_enc64be", scope: !200, file: !200, line: 620, type: !301, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !22, !6}
!303 = !DILocalVariable(name: "dst", arg: 1, scope: !300, file: !200, line: 620, type: !22)
!304 = !DILocation(line: 0, scope: !300)
!305 = !DILocalVariable(name: "x", arg: 2, scope: !300, file: !200, line: 620, type: !6)
!306 = !DILocalVariable(name: "buf", scope: !300, file: !200, line: 625, type: !70)
!307 = !DILocation(line: 628, column: 31, scope: !300)
!308 = !DILocation(line: 628, column: 18, scope: !300)
!309 = !DILocation(line: 628, column: 2, scope: !300)
!310 = !DILocation(line: 629, column: 17, scope: !300)
!311 = !DILocation(line: 629, column: 22, scope: !300)
!312 = !DILocation(line: 629, column: 2, scope: !300)
!313 = !DILocation(line: 631, column: 1, scope: !300)
!314 = distinct !DISubprogram(name: "br_enc32be", scope: !200, file: !200, line: 558, type: !315, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !22, !11}
!317 = !DILocalVariable(name: "dst", arg: 1, scope: !314, file: !200, line: 558, type: !22)
!318 = !DILocation(line: 0, scope: !314)
!319 = !DILocalVariable(name: "x", arg: 2, scope: !314, file: !200, line: 558, type: !11)
!320 = !DILocalVariable(name: "buf", scope: !314, file: !200, line: 563, type: !70)
!321 = !DILocation(line: 566, column: 29, scope: !314)
!322 = !DILocation(line: 566, column: 11, scope: !314)
!323 = !DILocation(line: 566, column: 2, scope: !314)
!324 = !DILocation(line: 566, column: 9, scope: !314)
!325 = !DILocation(line: 567, column: 29, scope: !314)
!326 = !DILocation(line: 567, column: 11, scope: !314)
!327 = !DILocation(line: 567, column: 2, scope: !314)
!328 = !DILocation(line: 567, column: 9, scope: !314)
!329 = !DILocation(line: 568, column: 29, scope: !314)
!330 = !DILocation(line: 568, column: 11, scope: !314)
!331 = !DILocation(line: 568, column: 2, scope: !314)
!332 = !DILocation(line: 568, column: 9, scope: !314)
!333 = !DILocation(line: 569, column: 11, scope: !314)
!334 = !DILocation(line: 569, column: 2, scope: !314)
!335 = !DILocation(line: 569, column: 9, scope: !314)
!336 = !DILocation(line: 571, column: 1, scope: !314)
!337 = distinct !DISubprogram(name: "br_dec32be", scope: !200, file: !200, line: 590, type: !338, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!338 = !DISubroutineType(types: !339)
!339 = !{!11, !23}
!340 = !DILocalVariable(name: "src", arg: 1, scope: !337, file: !200, line: 590, type: !23)
!341 = !DILocation(line: 0, scope: !337)
!342 = !DILocalVariable(name: "buf", scope: !337, file: !200, line: 595, type: !67)
!343 = !DILocation(line: 598, column: 20, scope: !337)
!344 = !DILocation(line: 598, column: 10, scope: !337)
!345 = !DILocation(line: 598, column: 27, scope: !337)
!346 = !DILocation(line: 599, column: 16, scope: !337)
!347 = !DILocation(line: 599, column: 6, scope: !337)
!348 = !DILocation(line: 599, column: 23, scope: !337)
!349 = !DILocation(line: 599, column: 3, scope: !337)
!350 = !DILocation(line: 600, column: 16, scope: !337)
!351 = !DILocation(line: 600, column: 6, scope: !337)
!352 = !DILocation(line: 600, column: 23, scope: !337)
!353 = !DILocation(line: 600, column: 3, scope: !337)
!354 = !DILocation(line: 601, column: 15, scope: !337)
!355 = !DILocation(line: 601, column: 5, scope: !337)
!356 = !DILocation(line: 601, column: 3, scope: !337)
!357 = !DILocation(line: 598, column: 2, scope: !337)
