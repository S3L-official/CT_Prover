; ModuleID = 'remove_padding-k.ll'
source_filename = "remove_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ssl_st = type { i8*, i64, %struct.ssl3_state_st*, %struct.evp_cipher_ctx_st*, i32 }
%struct.ssl3_state_st = type { i64, [8 x i8] }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st* }
%struct.evp_cipher_st = type { i64 }
%struct.ssl3_record_st = type { i32, i8*, i32, i8* }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ssl3_cbc_remove_padding(%struct.ssl_st* %0, %struct.ssl3_record_st* %1, i32 %2, i32 %3) #0 !dbg !10 {
  call void @llvm.dbg.value(metadata %struct.ssl_st* %0, metadata !57, metadata !DIExpression()), !dbg !58, !psr.id !59
  call void @llvm.dbg.value(metadata %struct.ssl3_record_st* %1, metadata !60, metadata !DIExpression()), !dbg !58, !psr.id !61
  call void @llvm.dbg.value(metadata i32 %2, metadata !62, metadata !DIExpression()), !dbg !58, !psr.id !63
  call void @llvm.dbg.value(metadata i32 %3, metadata !64, metadata !DIExpression()), !dbg !58, !psr.id !65
  %5 = add i32 1, %3, !dbg !66, !psr.id !67
  call void @llvm.dbg.value(metadata i32 %5, metadata !68, metadata !DIExpression()), !dbg !58, !psr.id !70
  %6 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !71, !psr.id !73
  %7 = load i32, i32* %6, align 8, !dbg !71, !psr.id !74
  %8 = icmp ugt i32 %5, %7, !dbg !75, !psr.id !76
  br i1 %8, label %9, label %10, !dbg !77, !psr.id !78

9:                                                ; preds = %4
  br label %37, !dbg !79, !psr.id !80

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1, !dbg !81, !psr.id !82
  %12 = load i8*, i8** %11, align 8, !dbg !81, !psr.id !83, !PointTainted !84
  %13 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !85, !psr.id !86
  %14 = load i32, i32* %13, align 8, !dbg !85, !psr.id !87
  %15 = sub i32 %14, 1, !dbg !88, !psr.id !89
  %16 = zext i32 %15 to i64, !dbg !90, !psr.id !91
  %17 = getelementptr inbounds i8, i8* %12, i64 %16, !dbg !90, !psr.id !92, !PointTainted !84
  %18 = load i8, i8* %17, align 1, !dbg !90, !psr.id !93, !ValueTainted !94
  %19 = zext i8 %18 to i32, !dbg !90, !psr.id !95, !ValueTainted !94
  call void @llvm.dbg.value(metadata i32 %19, metadata !96, metadata !DIExpression()), !dbg !58, !psr.id !97
  %20 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !98, !psr.id !99
  %21 = load i32, i32* %20, align 8, !dbg !98, !psr.id !100
  %22 = add i32 %19, %5, !dbg !101, !psr.id !102, !ValueTainted !94
  %23 = call i32 @constant_time_ge(i32 %21, i32 %22), !dbg !103, !psr.id !104, !ValueTainted !94
  call void @llvm.dbg.value(metadata i32 %23, metadata !105, metadata !DIExpression()), !dbg !58, !psr.id !106
  %24 = add i32 %19, 1, !dbg !107, !psr.id !108, !ValueTainted !94
  %25 = call i32 @constant_time_ge(i32 %2, i32 %24), !dbg !109, !psr.id !110, !ValueTainted !94
  %26 = and i32 %23, %25, !dbg !111, !psr.id !112, !ValueTainted !94
  call void @llvm.dbg.value(metadata i32 %26, metadata !105, metadata !DIExpression()), !dbg !58, !psr.id !113
  %27 = add i32 %19, 1, !dbg !114, !psr.id !115, !ValueTainted !94
  %28 = and i32 %26, %27, !dbg !116, !psr.id !117, !ValueTainted !94
  call void @llvm.dbg.value(metadata i32 %28, metadata !96, metadata !DIExpression()), !dbg !58, !psr.id !118
  %29 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !119, !psr.id !120
  %30 = load i32, i32* %29, align 8, !dbg !121, !psr.id !122
  %31 = sub i32 %30, %28, !dbg !121, !psr.id !123, !ValueTainted !94
  store i32 %31, i32* %29, align 8, !dbg !121, !psr.id !124
  %32 = shl i32 %28, 8, !dbg !125, !psr.id !126, !ValueTainted !94
  %33 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 2, !dbg !127, !psr.id !128
  %34 = load i32, i32* %33, align 8, !dbg !129, !psr.id !130
  %35 = or i32 %34, %32, !dbg !129, !psr.id !131, !ValueTainted !94
  store i32 %35, i32* %33, align 8, !dbg !129, !psr.id !132
  %36 = call i32 @constant_time_select_int(i32 %26, i32 1, i32 -1), !dbg !133, !psr.id !134, !ValueTainted !94
  br label %37, !dbg !135, !psr.id !136

37:                                               ; preds = %10, %9
  %.0 = phi i32 [ 0, %9 ], [ %36, %10 ], !dbg !58, !psr.id !137, !ValueTainted !94
  ret i32 %.0, !dbg !138, !psr.id !139
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_ge(i32 %0, i32 %1) #0 !dbg !140 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !144, metadata !DIExpression()), !dbg !145, !psr.id !146
  call void @llvm.dbg.value(metadata i32 %1, metadata !147, metadata !DIExpression()), !dbg !145, !psr.id !148
  %3 = call i32 @constant_time_lt(i32 %0, i32 %1), !dbg !149, !psr.id !150, !ValueTainted !94
  %4 = xor i32 %3, -1, !dbg !151, !psr.id !152, !ValueTainted !94
  ret i32 %4, !dbg !153, !psr.id !154
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_select_int(i32 %0, i32 %1, i32 %2) #0 !dbg !155 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !158, metadata !DIExpression()), !dbg !159, !psr.id !160
  call void @llvm.dbg.value(metadata i32 %1, metadata !161, metadata !DIExpression()), !dbg !159, !psr.id !162
  call void @llvm.dbg.value(metadata i32 %2, metadata !163, metadata !DIExpression()), !dbg !159, !psr.id !164
  %4 = call i32 @constant_time_select(i32 %0, i32 %1, i32 %2), !dbg !165, !psr.id !166, !ValueTainted !94
  ret i32 %4, !dbg !167, !psr.id !168
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @remove_padding_wrapper(i8* %0, i32 %1, i32 %2, i32 %3) #0 !dbg !169 {
  %5 = alloca %struct.ssl_st, align 8, !psr.id !172
  %6 = alloca %struct.ssl3_record_st, align 8, !psr.id !173
  call void @llvm.dbg.value(metadata i8* %0, metadata !174, metadata !DIExpression()), !dbg !175, !psr.id !176
  call void @llvm.dbg.value(metadata i32 %1, metadata !177, metadata !DIExpression()), !dbg !175, !psr.id !178
  call void @llvm.dbg.value(metadata i32 %2, metadata !179, metadata !DIExpression()), !dbg !175, !psr.id !180
  call void @llvm.dbg.value(metadata i32 %3, metadata !181, metadata !DIExpression()), !dbg !175, !psr.id !182
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !183, !psr.id !184
  call void @public_in(%struct.smack_value* %7), !dbg !185, !psr.id !186
  %8 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %1), !dbg !187, !psr.id !188
  call void @public_in(%struct.smack_value* %8), !dbg !189, !psr.id !190
  %9 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %2), !dbg !191, !psr.id !192
  call void @public_in(%struct.smack_value* %9), !dbg !193, !psr.id !194
  %10 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %3), !dbg !195, !psr.id !196
  call void @public_in(%struct.smack_value* %10), !dbg !197, !psr.id !198
  call void @llvm.dbg.declare(metadata %struct.ssl_st* %5, metadata !199, metadata !DIExpression()), !dbg !200, !psr.id !201
  %11 = bitcast %struct.ssl_st* %5 to i8*, !dbg !200, !psr.id !202
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false), !dbg !200, !psr.id !203
  call void @llvm.dbg.value(metadata %struct.ssl_st* %5, metadata !204, metadata !DIExpression()), !dbg !175, !psr.id !205
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %6, metadata !206, metadata !DIExpression()), !dbg !207, !psr.id !208
  %12 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 0, !dbg !209, !psr.id !210
  store i32 %1, i32* %12, align 8, !dbg !209, !psr.id !211
  %13 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 1, !dbg !209, !psr.id !212
  store i8* %0, i8** %13, align 8, !dbg !209, !psr.id !213
  %14 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 2, !dbg !209, !psr.id !214
  store i32 0, i32* %14, align 8, !dbg !209, !psr.id !215
  %15 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 3, !dbg !209, !psr.id !216
  store i8* null, i8** %15, align 8, !dbg !209, !psr.id !217
  %16 = call i32 @ssl3_cbc_remove_padding(%struct.ssl_st* %5, %struct.ssl3_record_st* %6, i32 %2, i32 %3), !dbg !218, !psr.id !219
  ret i32 %16, !dbg !220, !psr.id !221
}

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tmp(i8* %0, i32 %1, i32 %2, i32 %3) #0 !dbg !222 {
  %5 = alloca %struct.ssl_st, align 8, !psr.id !223
  %6 = alloca %struct.ssl3_record_st, align 8, !psr.id !224
  call void @llvm.dbg.value(metadata i8* %0, metadata !225, metadata !DIExpression()), !dbg !226, !psr.id !227
  call void @llvm.dbg.value(metadata i32 %1, metadata !228, metadata !DIExpression()), !dbg !226, !psr.id !229
  call void @llvm.dbg.value(metadata i32 %2, metadata !230, metadata !DIExpression()), !dbg !226, !psr.id !231
  call void @llvm.dbg.value(metadata i32 %3, metadata !232, metadata !DIExpression()), !dbg !226, !psr.id !233
  call void @llvm.dbg.declare(metadata %struct.ssl_st* %5, metadata !234, metadata !DIExpression()), !dbg !235, !psr.id !236
  %7 = bitcast %struct.ssl_st* %5 to i8*, !dbg !235, !psr.id !237
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 40, i1 false), !dbg !235, !psr.id !238
  call void @llvm.dbg.value(metadata %struct.ssl_st* %5, metadata !239, metadata !DIExpression()), !dbg !226, !psr.id !240
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %6, metadata !241, metadata !DIExpression()), !dbg !242, !psr.id !243
  %8 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 0, !dbg !244, !psr.id !245
  store i32 %1, i32* %8, align 8, !dbg !244, !psr.id !246
  %9 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 1, !dbg !244, !psr.id !247
  store i8* %0, i8** %9, align 8, !dbg !244, !psr.id !248
  %10 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 2, !dbg !244, !psr.id !249
  store i32 0, i32* %10, align 8, !dbg !244, !psr.id !250
  %11 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 3, !dbg !244, !psr.id !251
  store i8* null, i8** %11, align 8, !dbg !244, !psr.id !252
  %12 = call i32 @ssl3_cbc_remove_padding(%struct.ssl_st* %5, %struct.ssl3_record_st* %6, i32 %2, i32 %3), !dbg !253, !psr.id !254, !ValueTainted !94
  ret i32 %12, !dbg !255, !psr.id !256
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @remove_padding_wrapper_t() #0 !dbg !257 {
  %1 = call i8* (...) @getchar(), !dbg !260, !psr.id !261
  call void @llvm.dbg.value(metadata i8* %1, metadata !262, metadata !DIExpression()), !dbg !263, !psr.id !264
  call void @llvm.dbg.value(metadata i32 64, metadata !265, metadata !DIExpression()), !dbg !263, !psr.id !266
  call void @llvm.dbg.value(metadata i32 32, metadata !267, metadata !DIExpression()), !dbg !263, !psr.id !268
  call void @llvm.dbg.value(metadata i32 128, metadata !269, metadata !DIExpression()), !dbg !263, !psr.id !270
  %2 = call i32 @tmp(i8* %1, i32 64, i32 32, i32 128), !dbg !271, !psr.id !272
  ret i32 %2, !dbg !273, !psr.id !274
}

declare dso_local i8* @getchar(...) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_lt(i32 %0, i32 %1) #0 !dbg !275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !276, metadata !DIExpression()), !dbg !277, !psr.id !278
  call void @llvm.dbg.value(metadata i32 %1, metadata !279, metadata !DIExpression()), !dbg !277, !psr.id !280
  %3 = xor i32 %0, %1, !dbg !281, !psr.id !282, !ValueTainted !94
  %4 = sub i32 %0, %1, !dbg !283, !psr.id !284, !ValueTainted !94
  %5 = xor i32 %4, %1, !dbg !285, !psr.id !286, !ValueTainted !94
  %6 = or i32 %3, %5, !dbg !287, !psr.id !288, !ValueTainted !94
  %7 = xor i32 %0, %6, !dbg !289, !psr.id !290, !ValueTainted !94
  %8 = call i32 @constant_time_msb(i32 %7), !dbg !291, !psr.id !292, !ValueTainted !94
  ret i32 %8, !dbg !293, !psr.id !294
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_msb(i32 %0) #0 !dbg !295 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !298, metadata !DIExpression()), !dbg !299, !psr.id !300
  %2 = lshr i32 %0, 31, !dbg !301, !psr.id !302, !ValueTainted !94
  %3 = sub i32 0, %2, !dbg !303, !psr.id !304, !ValueTainted !94
  ret i32 %3, !dbg !305, !psr.id !306
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_select(i32 %0, i32 %1, i32 %2) #0 !dbg !307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !310, metadata !DIExpression()), !dbg !311, !psr.id !312
  call void @llvm.dbg.value(metadata i32 %1, metadata !313, metadata !DIExpression()), !dbg !311, !psr.id !314
  call void @llvm.dbg.value(metadata i32 %2, metadata !315, metadata !DIExpression()), !dbg !311, !psr.id !316
  %4 = and i32 %0, %1, !dbg !317, !psr.id !318, !ValueTainted !94
  %5 = xor i32 %0, -1, !dbg !319, !psr.id !320, !ValueTainted !94
  %6 = and i32 %5, %2, !dbg !321, !psr.id !322, !ValueTainted !94
  %7 = or i32 %4, %6, !dbg !323, !psr.id !324, !ValueTainted !94
  ret i32 %7, !dbg !325, !psr.id !326
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  %2 = call i32 @remove_padding_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "remove_padding.c", directory: "/home/luwei/bech-back/OpenSSL/ssl3_cbc")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!10 = distinct !DISubprogram(name: "ssl3_cbc_remove_padding", scope: !11, file: !11, line: 52, type: !12, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DIFile(filename: "./../ssl3_cbc_remove_padding.c", directory: "/home/luwei/bech-back/OpenSSL/ssl3_cbc")
!12 = !DISubroutineType(types: !13)
!13 = !{!4, !14, !48, !5, !5}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !11, line: 32, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !11, line: 26, size: 320, elements: !18)
!18 = !{!19, !22, !24, !35, !47}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !17, file: !11, line: 27, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !17, file: !11, line: 28, baseType: !23, size: 64, offset: 64)
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !17, file: !11, line: 29, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !11, line: 13, size: 128, elements: !27)
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !11, line: 14, baseType: !29, size: 64)
!29 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !26, file: !11, line: 15, baseType: !31, size: 64, offset: 64)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !33)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34}
!34 = !DISubrange(count: 8)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !17, file: !11, line: 30, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !11, line: 24, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !11, line: 22, size: 64, elements: !39)
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !38, file: !11, line: 23, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !11, line: 20, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !11, line: 18, size: 64, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !11, line: 19, baseType: !23, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "slicing_cheat", scope: !17, file: !11, line: 31, baseType: !4, size: 32, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !11, line: 11, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !11, line: 6, size: 256, elements: !51)
!51 = !{!52, !53, !55, !56}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !50, file: !11, line: 7, baseType: !5, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !50, file: !11, line: 8, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !11, line: 9, baseType: !4, size: 32, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !50, file: !11, line: 10, baseType: !54, size: 64, offset: 192)
!57 = !DILocalVariable(name: "s", arg: 1, scope: !10, file: !11, line: 52, type: !14)
!58 = !DILocation(line: 0, scope: !10)
!59 = !{!"0"}
!60 = !DILocalVariable(name: "rec", arg: 2, scope: !10, file: !11, line: 53, type: !48)
!61 = !{!"1"}
!62 = !DILocalVariable(name: "block_size", arg: 3, scope: !10, file: !11, line: 54, type: !5)
!63 = !{!"2"}
!64 = !DILocalVariable(name: "mac_size", arg: 4, scope: !10, file: !11, line: 54, type: !5)
!65 = !{!"3"}
!66 = !DILocation(line: 57, column: 60, scope: !10)
!67 = !{!"4"}
!68 = !DILocalVariable(name: "overhead", scope: !10, file: !11, line: 57, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!70 = !{!"5"}
!71 = !DILocation(line: 62, column: 25, scope: !72)
!72 = distinct !DILexicalBlock(scope: !10, file: !11, line: 62, column: 9)
!73 = !{!"6"}
!74 = !{!"7"}
!75 = !DILocation(line: 62, column: 18, scope: !72)
!76 = !{!"8"}
!77 = !DILocation(line: 62, column: 9, scope: !10)
!78 = !{!"9"}
!79 = !DILocation(line: 63, column: 9, scope: !72)
!80 = !{!"10"}
!81 = !DILocation(line: 65, column: 27, scope: !10)
!82 = !{!"11"}
!83 = !{!"12"}
!84 = !{!"PointTainted"}
!85 = !DILocation(line: 65, column: 37, scope: !10)
!86 = !{!"13"}
!87 = !{!"14"}
!88 = !DILocation(line: 65, column: 44, scope: !10)
!89 = !{!"15"}
!90 = !DILocation(line: 65, column: 22, scope: !10)
!91 = !{!"16"}
!92 = !{!"17"}
!93 = !{!"18"}
!94 = !{!"ValueTainted"}
!95 = !{!"19"}
!96 = !DILocalVariable(name: "padding_length", scope: !10, file: !11, line: 56, type: !5)
!97 = !{!"20"}
!98 = !DILocation(line: 66, column: 34, scope: !10)
!99 = !{!"21"}
!100 = !{!"22"}
!101 = !DILocation(line: 66, column: 57, scope: !10)
!102 = !{!"23"}
!103 = !DILocation(line: 66, column: 12, scope: !10)
!104 = !{!"24"}
!105 = !DILocalVariable(name: "good", scope: !10, file: !11, line: 56, type: !5)
!106 = !{!"25"}
!107 = !DILocation(line: 68, column: 57, scope: !10)
!108 = !{!"26"}
!109 = !DILocation(line: 68, column: 13, scope: !10)
!110 = !{!"27"}
!111 = !DILocation(line: 68, column: 10, scope: !10)
!112 = !{!"28"}
!113 = !{!"29"}
!114 = !DILocation(line: 69, column: 45, scope: !10)
!115 = !{!"30"}
!116 = !DILocation(line: 69, column: 27, scope: !10)
!117 = !{!"31"}
!118 = !{!"32"}
!119 = !DILocation(line: 70, column: 10, scope: !10)
!120 = !{!"33"}
!121 = !DILocation(line: 70, column: 17, scope: !10)
!122 = !{!"34"}
!123 = !{!"35"}
!124 = !{!"36"}
!125 = !DILocation(line: 71, column: 33, scope: !10)
!126 = !{!"37"}
!127 = !DILocation(line: 71, column: 10, scope: !10)
!128 = !{!"38"}
!129 = !DILocation(line: 71, column: 15, scope: !10)
!130 = !{!"39"}
!131 = !{!"40"}
!132 = !{!"41"}
!133 = !DILocation(line: 72, column: 12, scope: !10)
!134 = !{!"42"}
!135 = !DILocation(line: 72, column: 5, scope: !10)
!136 = !{!"43"}
!137 = !{!"44"}
!138 = !DILocation(line: 73, column: 1, scope: !10)
!139 = !{!"45"}
!140 = distinct !DISubprogram(name: "constant_time_ge", scope: !141, file: !141, line: 148, type: !142, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!141 = !DIFile(filename: "./../constant_time_locl.h", directory: "/home/luwei/bech-back/OpenSSL/ssl3_cbc")
!142 = !DISubroutineType(types: !143)
!143 = !{!5, !5, !5}
!144 = !DILocalVariable(name: "a", arg: 1, scope: !140, file: !141, line: 148, type: !5)
!145 = !DILocation(line: 0, scope: !140)
!146 = !{!"46"}
!147 = !DILocalVariable(name: "b", arg: 2, scope: !140, file: !141, line: 148, type: !5)
!148 = !{!"47"}
!149 = !DILocation(line: 150, column: 13, scope: !140)
!150 = !{!"48"}
!151 = !DILocation(line: 150, column: 12, scope: !140)
!152 = !{!"49"}
!153 = !DILocation(line: 150, column: 5, scope: !140)
!154 = !{!"50"}
!155 = distinct !DISubprogram(name: "constant_time_select_int", scope: !141, file: !141, line: 202, type: !156, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!156 = !DISubroutineType(types: !157)
!157 = !{!4, !5, !4, !4}
!158 = !DILocalVariable(name: "mask", arg: 1, scope: !155, file: !141, line: 202, type: !5)
!159 = !DILocation(line: 0, scope: !155)
!160 = !{!"51"}
!161 = !DILocalVariable(name: "a", arg: 2, scope: !155, file: !141, line: 202, type: !4)
!162 = !{!"52"}
!163 = !DILocalVariable(name: "b", arg: 3, scope: !155, file: !141, line: 202, type: !4)
!164 = !{!"53"}
!165 = !DILocation(line: 204, column: 18, scope: !155)
!166 = !{!"54"}
!167 = !DILocation(line: 204, column: 5, scope: !155)
!168 = !{!"55"}
!169 = distinct !DISubprogram(name: "remove_padding_wrapper", scope: !1, file: !1, line: 7, type: !170, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!170 = !DISubroutineType(types: !171)
!171 = !{!4, !54, !5, !5, !5}
!172 = !{!"56"}
!173 = !{!"57"}
!174 = !DILocalVariable(name: "data", arg: 1, scope: !169, file: !1, line: 7, type: !54)
!175 = !DILocation(line: 0, scope: !169)
!176 = !{!"58"}
!177 = !DILocalVariable(name: "length", arg: 2, scope: !169, file: !1, line: 8, type: !5)
!178 = !{!"59"}
!179 = !DILocalVariable(name: "block_size", arg: 3, scope: !169, file: !1, line: 9, type: !5)
!180 = !{!"60"}
!181 = !DILocalVariable(name: "mac_size", arg: 4, scope: !169, file: !1, line: 10, type: !5)
!182 = !{!"61"}
!183 = !DILocation(line: 13, column: 13, scope: !169)
!184 = !{!"62"}
!185 = !DILocation(line: 13, column: 3, scope: !169)
!186 = !{!"63"}
!187 = !DILocation(line: 16, column: 13, scope: !169)
!188 = !{!"64"}
!189 = !DILocation(line: 16, column: 3, scope: !169)
!190 = !{!"65"}
!191 = !DILocation(line: 17, column: 13, scope: !169)
!192 = !{!"66"}
!193 = !DILocation(line: 17, column: 3, scope: !169)
!194 = !{!"67"}
!195 = !DILocation(line: 18, column: 13, scope: !169)
!196 = !{!"68"}
!197 = !DILocation(line: 18, column: 3, scope: !169)
!198 = !{!"69"}
!199 = !DILocalVariable(name: "s_obj", scope: !169, file: !1, line: 21, type: !16)
!200 = !DILocation(line: 21, column: 7, scope: !169)
!201 = !{!"70"}
!202 = !{!"71"}
!203 = !{!"72"}
!204 = !DILocalVariable(name: "s", scope: !169, file: !1, line: 22, type: !14)
!205 = !{!"73"}
!206 = !DILocalVariable(name: "rec_obj", scope: !169, file: !1, line: 25, type: !49)
!207 = !DILocation(line: 25, column: 15, scope: !169)
!208 = !{!"74"}
!209 = !DILocation(line: 25, column: 25, scope: !169)
!210 = !{!"75"}
!211 = !{!"76"}
!212 = !{!"77"}
!213 = !{!"78"}
!214 = !{!"79"}
!215 = !{!"80"}
!216 = !{!"81"}
!217 = !{!"82"}
!218 = !DILocation(line: 27, column: 10, scope: !169)
!219 = !{!"83"}
!220 = !DILocation(line: 27, column: 3, scope: !169)
!221 = !{!"84"}
!222 = distinct !DISubprogram(name: "tmp", scope: !1, file: !1, line: 30, type: !170, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!223 = !{!"85"}
!224 = !{!"86"}
!225 = !DILocalVariable(name: "data", arg: 1, scope: !222, file: !1, line: 30, type: !54)
!226 = !DILocation(line: 0, scope: !222)
!227 = !{!"87"}
!228 = !DILocalVariable(name: "length", arg: 2, scope: !222, file: !1, line: 31, type: !5)
!229 = !{!"88"}
!230 = !DILocalVariable(name: "block_size", arg: 3, scope: !222, file: !1, line: 32, type: !5)
!231 = !{!"89"}
!232 = !DILocalVariable(name: "mac_size", arg: 4, scope: !222, file: !1, line: 33, type: !5)
!233 = !{!"90"}
!234 = !DILocalVariable(name: "s_obj", scope: !222, file: !1, line: 36, type: !16)
!235 = !DILocation(line: 36, column: 7, scope: !222)
!236 = !{!"91"}
!237 = !{!"92"}
!238 = !{!"93"}
!239 = !DILocalVariable(name: "s", scope: !222, file: !1, line: 37, type: !14)
!240 = !{!"94"}
!241 = !DILocalVariable(name: "rec_obj", scope: !222, file: !1, line: 40, type: !49)
!242 = !DILocation(line: 40, column: 15, scope: !222)
!243 = !{!"95"}
!244 = !DILocation(line: 40, column: 25, scope: !222)
!245 = !{!"96"}
!246 = !{!"97"}
!247 = !{!"98"}
!248 = !{!"99"}
!249 = !{!"100"}
!250 = !{!"101"}
!251 = !{!"102"}
!252 = !{!"103"}
!253 = !DILocation(line: 41, column: 10, scope: !222)
!254 = !{!"104"}
!255 = !DILocation(line: 41, column: 3, scope: !222)
!256 = !{!"105"}
!257 = distinct !DISubprogram(name: "remove_padding_wrapper_t", scope: !1, file: !1, line: 46, type: !258, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!258 = !DISubroutineType(types: !259)
!259 = !{!4}
!260 = !DILocation(line: 48, column: 25, scope: !257)
!261 = !{!"106"}
!262 = !DILocalVariable(name: "data", scope: !257, file: !1, line: 48, type: !54)
!263 = !DILocation(line: 0, scope: !257)
!264 = !{!"107"}
!265 = !DILocalVariable(name: "length", scope: !257, file: !1, line: 49, type: !5)
!266 = !{!"108"}
!267 = !DILocalVariable(name: "block_size", scope: !257, file: !1, line: 50, type: !5)
!268 = !{!"109"}
!269 = !DILocalVariable(name: "mac_size", scope: !257, file: !1, line: 51, type: !5)
!270 = !{!"110"}
!271 = !DILocation(line: 54, column: 10, scope: !257)
!272 = !{!"111"}
!273 = !DILocation(line: 54, column: 3, scope: !257)
!274 = !{!"112"}
!275 = distinct !DISubprogram(name: "constant_time_lt", scope: !141, file: !141, line: 138, type: !142, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!276 = !DILocalVariable(name: "a", arg: 1, scope: !275, file: !141, line: 138, type: !5)
!277 = !DILocation(line: 0, scope: !275)
!278 = !{!"113"}
!279 = !DILocalVariable(name: "b", arg: 2, scope: !275, file: !141, line: 138, type: !5)
!280 = !{!"114"}
!281 = !DILocation(line: 140, column: 38, scope: !275)
!282 = !{!"115"}
!283 = !DILocation(line: 140, column: 49, scope: !275)
!284 = !{!"116"}
!285 = !DILocation(line: 140, column: 54, scope: !275)
!286 = !{!"117"}
!287 = !DILocation(line: 140, column: 43, scope: !275)
!288 = !{!"118"}
!289 = !DILocation(line: 140, column: 32, scope: !275)
!290 = !{!"119"}
!291 = !DILocation(line: 140, column: 12, scope: !275)
!292 = !{!"120"}
!293 = !DILocation(line: 140, column: 5, scope: !275)
!294 = !{!"121"}
!295 = distinct !DISubprogram(name: "constant_time_msb", scope: !141, file: !141, line: 133, type: !296, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!296 = !DISubroutineType(types: !297)
!297 = !{!5, !5}
!298 = !DILocalVariable(name: "a", arg: 1, scope: !295, file: !141, line: 133, type: !5)
!299 = !DILocation(line: 0, scope: !295)
!300 = !{!"122"}
!301 = !DILocation(line: 135, column: 19, scope: !295)
!302 = !{!"123"}
!303 = !DILocation(line: 135, column: 14, scope: !295)
!304 = !{!"124"}
!305 = !DILocation(line: 135, column: 5, scope: !295)
!306 = !{!"125"}
!307 = distinct !DISubprogram(name: "constant_time_select", scope: !141, file: !141, line: 188, type: !308, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!308 = !DISubroutineType(types: !309)
!309 = !{!5, !5, !5, !5}
!310 = !DILocalVariable(name: "mask", arg: 1, scope: !307, file: !141, line: 188, type: !5)
!311 = !DILocation(line: 0, scope: !307)
!312 = !{!"126"}
!313 = !DILocalVariable(name: "a", arg: 2, scope: !307, file: !141, line: 189, type: !5)
!314 = !{!"127"}
!315 = !DILocalVariable(name: "b", arg: 3, scope: !307, file: !141, line: 190, type: !5)
!316 = !{!"128"}
!317 = !DILocation(line: 192, column: 18, scope: !307)
!318 = !{!"129"}
!319 = !DILocation(line: 192, column: 26, scope: !307)
!320 = !{!"130"}
!321 = !DILocation(line: 192, column: 32, scope: !307)
!322 = !{!"131"}
!323 = !DILocation(line: 192, column: 23, scope: !307)
!324 = !{!"132"}
!325 = !DILocation(line: 192, column: 5, scope: !307)
!326 = !{!"133"}
