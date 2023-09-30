; ModuleID = 'constant_time_lookup-k.ll'
source_filename = "constant_time_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @constant_time_lookup_wrapper(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 !dbg !12 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !21, metadata !DIExpression()), !dbg !22, !psr.id !23
  call void @llvm.dbg.value(metadata i8* %1, metadata !24, metadata !DIExpression()), !dbg !22, !psr.id !25
  call void @llvm.dbg.value(metadata i64 %2, metadata !26, metadata !DIExpression()), !dbg !22, !psr.id !27
  call void @llvm.dbg.value(metadata i64 %3, metadata !28, metadata !DIExpression()), !dbg !22, !psr.id !29
  call void @llvm.dbg.value(metadata i64 %4, metadata !30, metadata !DIExpression()), !dbg !22, !psr.id !31
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !32, !psr.id !33
  call void @public_in(%struct.smack_value* %6), !dbg !34, !psr.id !35
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !36, !psr.id !37
  call void @public_in(%struct.smack_value* %7), !dbg !38, !psr.id !39
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !40, !psr.id !41
  call void @public_in(%struct.smack_value* %8), !dbg !42, !psr.id !43
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !44, !psr.id !45
  call void @public_in(%struct.smack_value* %9), !dbg !46, !psr.id !47
  %10 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 32), !dbg !48, !psr.id !49
  call void @public_in(%struct.smack_value* %10), !dbg !50, !psr.id !51
  %11 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 256), !dbg !52, !psr.id !53
  call void @public_in(%struct.smack_value* %11), !dbg !54, !psr.id !55
  call void @constant_time_lookup(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4), !dbg !56, !psr.id !57
  ret void, !dbg !58, !psr.id !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @constant_time_lookup(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 !dbg !60 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !62, metadata !DIExpression()), !dbg !63, !psr.id !64
  call void @llvm.dbg.value(metadata i8* %1, metadata !65, metadata !DIExpression()), !dbg !63, !psr.id !66
  call void @llvm.dbg.value(metadata i64 %2, metadata !67, metadata !DIExpression()), !dbg !63, !psr.id !68
  call void @llvm.dbg.value(metadata i64 %3, metadata !69, metadata !DIExpression()), !dbg !63, !psr.id !70
  call void @llvm.dbg.value(metadata i64 %4, metadata !71, metadata !DIExpression()), !dbg !63, !psr.id !72
  call void @llvm.dbg.value(metadata i8* %1, metadata !73, metadata !DIExpression()), !dbg !63, !psr.id !74
  call void @llvm.dbg.value(metadata i8* %0, metadata !75, metadata !DIExpression()), !dbg !63, !psr.id !76
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %2, i1 false), !dbg !77, !psr.id !78
  call void @llvm.dbg.value(metadata i64 0, metadata !79, metadata !DIExpression()), !dbg !63, !psr.id !80
  br label %6, !dbg !81, !psr.id !83

6:                                                ; preds = %26, %5
  %.03 = phi i64 [ %4, %5 ], [ %28, %26 ], !psr.id !84, !ValueTainted !85
  %.02 = phi i64 [ 0, %5 ], [ %27, %26 ], !dbg !86, !psr.id !87
  %.0 = phi i8* [ %1, %5 ], [ %.1, %26 ], !dbg !88, !psr.id !89
  call void @llvm.dbg.value(metadata i8* %.0, metadata !73, metadata !DIExpression()), !dbg !63, !psr.id !90
  call void @llvm.dbg.value(metadata i64 %.02, metadata !79, metadata !DIExpression()), !dbg !63, !psr.id !91
  call void @llvm.dbg.value(metadata i64 %.03, metadata !71, metadata !DIExpression()), !dbg !63, !psr.id !92
  %7 = icmp ult i64 %.02, %3, !dbg !93, !psr.id !95
  br i1 %7, label %8, label %29, !dbg !96, !psr.id !97

8:                                                ; preds = %6
  %9 = call i64 @constant_time_is_zero_s(i64 %.03), !dbg !98, !psr.id !100, !ValueTainted !85
  %10 = trunc i64 %9 to i8, !dbg !101, !psr.id !102, !ValueTainted !85
  call void @llvm.dbg.value(metadata i8 %10, metadata !103, metadata !DIExpression()), !dbg !63, !psr.id !104
  call void @llvm.dbg.value(metadata i64 0, metadata !105, metadata !DIExpression()), !dbg !63, !psr.id !106
  br label %11, !dbg !107, !psr.id !109

11:                                               ; preds = %23, %8
  %.01 = phi i64 [ 0, %8 ], [ %24, %23 ], !dbg !110, !psr.id !111
  %.1 = phi i8* [ %.0, %8 ], [ %14, %23 ], !dbg !63, !psr.id !112
  call void @llvm.dbg.value(metadata i8* %.1, metadata !73, metadata !DIExpression()), !dbg !63, !psr.id !113
  call void @llvm.dbg.value(metadata i64 %.01, metadata !105, metadata !DIExpression()), !dbg !63, !psr.id !114
  %12 = icmp ult i64 %.01, %2, !dbg !115, !psr.id !117
  br i1 %12, label %13, label %25, !dbg !118, !psr.id !119

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %.1, i32 1, !dbg !120, !psr.id !121
  call void @llvm.dbg.value(metadata i8* %14, metadata !73, metadata !DIExpression()), !dbg !63, !psr.id !122
  %15 = load i8, i8* %.1, align 1, !dbg !123, !psr.id !124
  %16 = call zeroext i8 @constant_time_select_8(i8 zeroext %10, i8 zeroext %15, i8 zeroext 0), !dbg !125, !psr.id !126, !ValueTainted !85, !PointTainted !127
  %17 = zext i8 %16 to i32, !dbg !125, !psr.id !128, !ValueTainted !85, !PointTainted !127
  %18 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !129, !psr.id !130, !PointTainted !127
  %19 = load i8, i8* %18, align 1, !dbg !131, !psr.id !132, !ValueTainted !85
  %20 = zext i8 %19 to i32, !dbg !131, !psr.id !133, !ValueTainted !85
  %21 = or i32 %20, %17, !dbg !131, !psr.id !134, !ValueTainted !85, !PointTainted !127
  %22 = trunc i32 %21 to i8, !dbg !131, !psr.id !135, !ValueTainted !85, !PointTainted !127
  store i8 %22, i8* %18, align 1, !dbg !131, !psr.id !136
  br label %23, !dbg !137, !psr.id !138

23:                                               ; preds = %13
  %24 = add i64 %.01, 1, !dbg !139, !psr.id !140
  call void @llvm.dbg.value(metadata i64 %24, metadata !105, metadata !DIExpression()), !dbg !63, !psr.id !141
  br label %11, !dbg !142, !llvm.loop !143, !psr.id !146

25:                                               ; preds = %11
  br label %26, !dbg !147, !psr.id !148

26:                                               ; preds = %25
  %27 = add i64 %.02, 1, !dbg !149, !psr.id !150
  call void @llvm.dbg.value(metadata i64 %27, metadata !79, metadata !DIExpression()), !dbg !63, !psr.id !151
  %28 = add i64 %.03, -1, !dbg !152, !psr.id !153, !ValueTainted !85
  call void @llvm.dbg.value(metadata i64 %28, metadata !71, metadata !DIExpression()), !dbg !63, !psr.id !154
  br label %6, !dbg !155, !llvm.loop !156, !psr.id !158

29:                                               ; preds = %6
  ret void, !dbg !159, !psr.id !160
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @constant_time_lookup_wrapper_t() #0 !dbg !161 {
  %1 = call i8* (...) @getout(), !dbg !164, !psr.id !165
  call void @llvm.dbg.value(metadata i8* %1, metadata !166, metadata !DIExpression()), !dbg !167, !psr.id !168
  %2 = call i8* (...) @gettable(), !dbg !169, !psr.id !170
  call void @llvm.dbg.value(metadata i8* %2, metadata !171, metadata !DIExpression()), !dbg !167, !psr.id !172
  %3 = call i64 (...) @getrowsize(), !dbg !173, !psr.id !174
  call void @llvm.dbg.value(metadata i64 %3, metadata !175, metadata !DIExpression()), !dbg !167, !psr.id !176
  %4 = call i64 (...) @getnumrows(), !dbg !177, !psr.id !178
  call void @llvm.dbg.value(metadata i64 %4, metadata !179, metadata !DIExpression()), !dbg !167, !psr.id !180
  %5 = call i64 (...) @getidx(), !dbg !181, !psr.id !182
  call void @llvm.dbg.value(metadata i64 %5, metadata !183, metadata !DIExpression()), !dbg !167, !psr.id !184
  call void @constant_time_lookup(i8* %1, i8* %2, i64 %3, i64 %4, i64 %5), !dbg !185, !psr.id !186
  ret void, !dbg !187, !psr.id !188
}

declare dso_local i8* @getout(...) #2

declare dso_local i8* @gettable(...) #2

declare dso_local i64 @getrowsize(...) #2

declare dso_local i64 @getnumrows(...) #2

declare dso_local i64 @getidx(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @constant_time_is_zero_s(i64 %0) #0 !dbg !189 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !192, metadata !DIExpression()), !dbg !193, !psr.id !194
  %2 = xor i64 %0, -1, !dbg !195, !psr.id !196, !ValueTainted !85
  %3 = sub i64 %0, 1, !dbg !197, !psr.id !198, !ValueTainted !85
  %4 = and i64 %2, %3, !dbg !199, !psr.id !200, !ValueTainted !85
  %5 = call i64 @constant_time_msb_s(i64 %4), !dbg !201, !psr.id !202, !ValueTainted !85
  ret i64 %5, !dbg !203, !psr.id !204
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @constant_time_select_8(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2) #0 !dbg !205 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !208, metadata !DIExpression()), !dbg !209, !psr.id !210
  call void @llvm.dbg.value(metadata i8 %1, metadata !211, metadata !DIExpression()), !dbg !209, !psr.id !212
  call void @llvm.dbg.value(metadata i8 %2, metadata !213, metadata !DIExpression()), !dbg !209, !psr.id !214
  %4 = zext i8 %0 to i32, !dbg !215, !psr.id !216, !ValueTainted !85
  %5 = zext i8 %1 to i32, !dbg !217, !psr.id !218
  %6 = zext i8 %2 to i32, !dbg !219, !psr.id !220
  %7 = call i32 @constant_time_select(i32 %4, i32 %5, i32 %6), !dbg !221, !psr.id !222, !ValueTainted !85, !PointTainted !127
  %8 = trunc i32 %7 to i8, !dbg !223, !psr.id !224, !ValueTainted !85, !PointTainted !127
  ret i8 %8, !dbg !225, !psr.id !226
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @constant_time_msb_s(i64 %0) #0 !dbg !227 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !228, metadata !DIExpression()), !dbg !229, !psr.id !230
  %2 = lshr i64 %0, 63, !dbg !231, !psr.id !232, !ValueTainted !85
  %3 = sub i64 0, %2, !dbg !233, !psr.id !234, !ValueTainted !85
  ret i64 %3, !dbg !235, !psr.id !236
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_select(i32 %0, i32 %1, i32 %2) #0 !dbg !237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !241, metadata !DIExpression()), !dbg !242, !psr.id !243
  call void @llvm.dbg.value(metadata i32 %1, metadata !244, metadata !DIExpression()), !dbg !242, !psr.id !245
  call void @llvm.dbg.value(metadata i32 %2, metadata !246, metadata !DIExpression()), !dbg !242, !psr.id !247
  %4 = call i32 @value_barrier(i32 %0), !dbg !248, !psr.id !249, !ValueTainted !85, !PointTainted !127
  %5 = and i32 %4, %1, !dbg !250, !psr.id !251, !ValueTainted !85, !PointTainted !127
  %6 = xor i32 %0, -1, !dbg !252, !psr.id !253, !ValueTainted !85
  %7 = call i32 @value_barrier(i32 %6), !dbg !254, !psr.id !255, !ValueTainted !85, !PointTainted !127
  %8 = and i32 %7, %2, !dbg !256, !psr.id !257, !ValueTainted !85, !PointTainted !127
  %9 = or i32 %5, %8, !dbg !258, !psr.id !259, !ValueTainted !85, !PointTainted !127
  ret i32 %9, !dbg !260, !psr.id !261
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @value_barrier(i32 %0) #0 !dbg !262 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !265, metadata !DIExpression()), !dbg !266, !psr.id !267
  %2 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #4, !dbg !268, !srcloc !269, !psr.id !270, !ValueTainted !85, !PointTainted !127
  call void @llvm.dbg.value(metadata i32 %2, metadata !271, metadata !DIExpression()), !dbg !266, !psr.id !272
  ret i32 %2, !dbg !273, !psr.id !274
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @constant_time_lookup_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "constant_time_lookup.c", directory: "/home/luwei/bech-back/Tongsuo/constant_primitive")
!2 = !{}
!3 = !{!4, !7, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!12 = distinct !DISubprogram(name: "constant_time_lookup_wrapper", scope: !1, file: !1, line: 3, type: !13, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !16, !18, !18, !18}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DILocalVariable(name: "out", arg: 1, scope: !12, file: !1, line: 3, type: !15)
!22 = !DILocation(line: 0, scope: !12)
!23 = !{!"0"}
!24 = !DILocalVariable(name: "table", arg: 2, scope: !12, file: !1, line: 4, type: !16)
!25 = !{!"1"}
!26 = !DILocalVariable(name: "rowsize", arg: 3, scope: !12, file: !1, line: 5, type: !18)
!27 = !{!"2"}
!28 = !DILocalVariable(name: "numrows", arg: 4, scope: !12, file: !1, line: 6, type: !18)
!29 = !{!"3"}
!30 = !DILocalVariable(name: "idx", arg: 5, scope: !12, file: !1, line: 7, type: !18)
!31 = !{!"4"}
!32 = !DILocation(line: 8, column: 12, scope: !12)
!33 = !{!"5"}
!34 = !DILocation(line: 8, column: 2, scope: !12)
!35 = !{!"6"}
!36 = !DILocation(line: 9, column: 12, scope: !12)
!37 = !{!"7"}
!38 = !DILocation(line: 9, column: 2, scope: !12)
!39 = !{!"8"}
!40 = !DILocation(line: 10, column: 12, scope: !12)
!41 = !{!"9"}
!42 = !DILocation(line: 10, column: 2, scope: !12)
!43 = !{!"10"}
!44 = !DILocation(line: 11, column: 15, scope: !12)
!45 = !{!"11"}
!46 = !DILocation(line: 11, column: 5, scope: !12)
!47 = !{!"12"}
!48 = !DILocation(line: 14, column: 15, scope: !12)
!49 = !{!"13"}
!50 = !DILocation(line: 14, column: 5, scope: !12)
!51 = !{!"14"}
!52 = !DILocation(line: 15, column: 15, scope: !12)
!53 = !{!"15"}
!54 = !DILocation(line: 15, column: 5, scope: !12)
!55 = !{!"16"}
!56 = !DILocation(line: 19, column: 2, scope: !12)
!57 = !{!"17"}
!58 = !DILocation(line: 20, column: 1, scope: !12)
!59 = !{!"18"}
!60 = distinct !DISubprogram(name: "constant_time_lookup", scope: !61, file: !61, line: 394, type: !13, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!61 = !DIFile(filename: "./../Tongsuo/include/internal/constant_time.h", directory: "/home/luwei/bech-back/Tongsuo/constant_primitive")
!62 = !DILocalVariable(name: "out", arg: 1, scope: !60, file: !61, line: 394, type: !15)
!63 = !DILocation(line: 0, scope: !60)
!64 = !{!"19"}
!65 = !DILocalVariable(name: "table", arg: 2, scope: !60, file: !61, line: 395, type: !16)
!66 = !{!"20"}
!67 = !DILocalVariable(name: "rowsize", arg: 3, scope: !60, file: !61, line: 396, type: !18)
!68 = !{!"21"}
!69 = !DILocalVariable(name: "numrows", arg: 4, scope: !60, file: !61, line: 397, type: !18)
!70 = !{!"22"}
!71 = !DILocalVariable(name: "idx", arg: 5, scope: !60, file: !61, line: 398, type: !18)
!72 = !{!"23"}
!73 = !DILocalVariable(name: "tablec", scope: !60, file: !61, line: 401, type: !4)
!74 = !{!"24"}
!75 = !DILocalVariable(name: "outc", scope: !60, file: !61, line: 402, type: !7)
!76 = !{!"25"}
!77 = !DILocation(line: 405, column: 5, scope: !60)
!78 = !{!"26"}
!79 = !DILocalVariable(name: "i", scope: !60, file: !61, line: 400, type: !18)
!80 = !{!"27"}
!81 = !DILocation(line: 408, column: 10, scope: !82)
!82 = distinct !DILexicalBlock(scope: !60, file: !61, line: 408, column: 5)
!83 = !{!"28"}
!84 = !{!"29"}
!85 = !{!"ValueTainted"}
!86 = !DILocation(line: 0, scope: !82)
!87 = !{!"30"}
!88 = !DILocation(line: 401, column: 26, scope: !60)
!89 = !{!"31"}
!90 = !{!"32"}
!91 = !{!"33"}
!92 = !{!"34"}
!93 = !DILocation(line: 408, column: 19, scope: !94)
!94 = distinct !DILexicalBlock(scope: !82, file: !61, line: 408, column: 5)
!95 = !{!"35"}
!96 = !DILocation(line: 408, column: 5, scope: !82)
!97 = !{!"36"}
!98 = !DILocation(line: 409, column: 31, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !61, line: 408, column: 42)
!100 = !{!"37"}
!101 = !DILocation(line: 409, column: 16, scope: !99)
!102 = !{!"38"}
!103 = !DILocalVariable(name: "mask", scope: !60, file: !61, line: 403, type: !6)
!104 = !{!"39"}
!105 = !DILocalVariable(name: "j", scope: !60, file: !61, line: 400, type: !18)
!106 = !{!"40"}
!107 = !DILocation(line: 410, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !99, file: !61, line: 410, column: 9)
!109 = !{!"41"}
!110 = !DILocation(line: 0, scope: !108)
!111 = !{!"42"}
!112 = !{!"43"}
!113 = !{!"44"}
!114 = !{!"45"}
!115 = !DILocation(line: 410, column: 23, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !61, line: 410, column: 9)
!117 = !{!"46"}
!118 = !DILocation(line: 410, column: 9, scope: !108)
!119 = !{!"47"}
!120 = !DILocation(line: 411, column: 65, scope: !116)
!121 = !{!"48"}
!122 = !{!"49"}
!123 = !DILocation(line: 411, column: 57, scope: !116)
!124 = !{!"50"}
!125 = !DILocation(line: 411, column: 28, scope: !116)
!126 = !{!"51"}
!127 = !{!"PointTainted"}
!128 = !{!"52"}
!129 = !DILocation(line: 411, column: 20, scope: !116)
!130 = !{!"53"}
!131 = !DILocation(line: 411, column: 25, scope: !116)
!132 = !{!"54"}
!133 = !{!"55"}
!134 = !{!"56"}
!135 = !{!"57"}
!136 = !{!"58"}
!137 = !DILocation(line: 411, column: 13, scope: !116)
!138 = !{!"59"}
!139 = !DILocation(line: 410, column: 35, scope: !116)
!140 = !{!"60"}
!141 = !{!"61"}
!142 = !DILocation(line: 410, column: 9, scope: !116)
!143 = distinct !{!143, !118, !144, !145}
!144 = !DILocation(line: 411, column: 71, scope: !108)
!145 = !{!"llvm.loop.mustprogress"}
!146 = !{!"62"}
!147 = !DILocation(line: 412, column: 5, scope: !99)
!148 = !{!"63"}
!149 = !DILocation(line: 408, column: 31, scope: !94)
!150 = !{!"64"}
!151 = !{!"65"}
!152 = !DILocation(line: 408, column: 38, scope: !94)
!153 = !{!"66"}
!154 = !{!"67"}
!155 = !DILocation(line: 408, column: 5, scope: !94)
!156 = distinct !{!156, !96, !157, !145}
!157 = !DILocation(line: 412, column: 5, scope: !82)
!158 = !{!"68"}
!159 = !DILocation(line: 413, column: 1, scope: !60)
!160 = !{!"69"}
!161 = distinct !DISubprogram(name: "constant_time_lookup_wrapper_t", scope: !1, file: !1, line: 29, type: !162, scopeLine: 29, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!162 = !DISubroutineType(types: !163)
!163 = !{null}
!164 = !DILocation(line: 30, column: 13, scope: !161)
!165 = !{!"70"}
!166 = !DILocalVariable(name: "out", scope: !161, file: !1, line: 30, type: !15)
!167 = !DILocation(line: 0, scope: !161)
!168 = !{!"71"}
!169 = !DILocation(line: 31, column: 20, scope: !161)
!170 = !{!"72"}
!171 = !DILocalVariable(name: "table", scope: !161, file: !1, line: 31, type: !16)
!172 = !{!"73"}
!173 = !DILocation(line: 32, column: 19, scope: !161)
!174 = !{!"74"}
!175 = !DILocalVariable(name: "rowsize", scope: !161, file: !1, line: 32, type: !18)
!176 = !{!"75"}
!177 = !DILocation(line: 33, column: 18, scope: !161)
!178 = !{!"76"}
!179 = !DILocalVariable(name: "numrows", scope: !161, file: !1, line: 33, type: !18)
!180 = !{!"77"}
!181 = !DILocation(line: 34, column: 15, scope: !161)
!182 = !{!"78"}
!183 = !DILocalVariable(name: "idx", scope: !161, file: !1, line: 34, type: !18)
!184 = !{!"79"}
!185 = !DILocation(line: 35, column: 2, scope: !161)
!186 = !{!"80"}
!187 = !DILocation(line: 36, column: 1, scope: !161)
!188 = !{!"81"}
!189 = distinct !DISubprogram(name: "constant_time_is_zero_s", scope: !61, file: !61, line: 170, type: !190, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!190 = !DISubroutineType(types: !191)
!191 = !{!18, !18}
!192 = !DILocalVariable(name: "a", arg: 1, scope: !189, file: !61, line: 170, type: !18)
!193 = !DILocation(line: 0, scope: !189)
!194 = !{!"82"}
!195 = !DILocation(line: 172, column: 32, scope: !189)
!196 = !{!"83"}
!197 = !DILocation(line: 172, column: 40, scope: !189)
!198 = !{!"84"}
!199 = !DILocation(line: 172, column: 35, scope: !189)
!200 = !{!"85"}
!201 = !DILocation(line: 172, column: 12, scope: !189)
!202 = !{!"86"}
!203 = !DILocation(line: 172, column: 5, scope: !189)
!204 = !{!"87"}
!205 = distinct !DISubprogram(name: "constant_time_select_8", scope: !61, file: !61, line: 290, type: !206, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!206 = !DISubroutineType(types: !207)
!207 = !{!6, !6, !6, !6}
!208 = !DILocalVariable(name: "mask", arg: 1, scope: !205, file: !61, line: 290, type: !6)
!209 = !DILocation(line: 0, scope: !205)
!210 = !{!"88"}
!211 = !DILocalVariable(name: "a", arg: 2, scope: !205, file: !61, line: 291, type: !6)
!212 = !{!"89"}
!213 = !DILocalVariable(name: "b", arg: 3, scope: !205, file: !61, line: 292, type: !6)
!214 = !{!"90"}
!215 = !DILocation(line: 294, column: 48, scope: !205)
!216 = !{!"91"}
!217 = !DILocation(line: 294, column: 54, scope: !205)
!218 = !{!"92"}
!219 = !DILocation(line: 294, column: 57, scope: !205)
!220 = !{!"93"}
!221 = !DILocation(line: 294, column: 27, scope: !205)
!222 = !{!"94"}
!223 = !DILocation(line: 294, column: 12, scope: !205)
!224 = !{!"95"}
!225 = !DILocation(line: 294, column: 5, scope: !205)
!226 = !{!"96"}
!227 = distinct !DISubprogram(name: "constant_time_msb_s", scope: !61, file: !61, line: 116, type: !190, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!228 = !DILocalVariable(name: "a", arg: 1, scope: !227, file: !61, line: 116, type: !18)
!229 = !DILocation(line: 0, scope: !227)
!230 = !{!"97"}
!231 = !DILocation(line: 118, column: 19, scope: !227)
!232 = !{!"98"}
!233 = !DILocation(line: 118, column: 14, scope: !227)
!234 = !{!"99"}
!235 = !DILocation(line: 118, column: 5, scope: !227)
!236 = !{!"100"}
!237 = distinct !DISubprogram(name: "constant_time_select", scope: !61, file: !61, line: 276, type: !238, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !240, !240, !240}
!240 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!241 = !DILocalVariable(name: "mask", arg: 1, scope: !237, file: !61, line: 276, type: !240)
!242 = !DILocation(line: 0, scope: !237)
!243 = !{!"101"}
!244 = !DILocalVariable(name: "a", arg: 2, scope: !237, file: !61, line: 277, type: !240)
!245 = !{!"102"}
!246 = !DILocalVariable(name: "b", arg: 3, scope: !237, file: !61, line: 278, type: !240)
!247 = !{!"103"}
!248 = !DILocation(line: 280, column: 13, scope: !237)
!249 = !{!"104"}
!250 = !DILocation(line: 280, column: 33, scope: !237)
!251 = !{!"105"}
!252 = !DILocation(line: 280, column: 55, scope: !237)
!253 = !{!"106"}
!254 = !DILocation(line: 280, column: 41, scope: !237)
!255 = !{!"107"}
!256 = !DILocation(line: 280, column: 62, scope: !237)
!257 = !{!"108"}
!258 = !DILocation(line: 280, column: 38, scope: !237)
!259 = !{!"109"}
!260 = !DILocation(line: 280, column: 5, scope: !237)
!261 = !{!"110"}
!262 = distinct !DISubprogram(name: "value_barrier", scope: !61, file: !61, line: 229, type: !263, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!263 = !DISubroutineType(types: !264)
!264 = !{!240, !240}
!265 = !DILocalVariable(name: "a", arg: 1, scope: !262, file: !61, line: 229, type: !240)
!266 = !DILocation(line: 0, scope: !262)
!267 = !{!"111"}
!268 = !DILocation(line: 233, column: 5, scope: !262)
!269 = !{i32 126302}
!270 = !{!"112"}
!271 = !DILocalVariable(name: "r", scope: !262, file: !61, line: 232, type: !240)
!272 = !{!"113"}
!273 = !DILocation(line: 237, column: 5, scope: !262)
!274 = !{!"114"}
