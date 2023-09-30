; ModuleID = 'constant_time_lookup.ll'
source_filename = "constant_time_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @constant_time_lookup_wrapper(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 !dbg !12 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i8* %1, metadata !23, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i64 %2, metadata !24, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i64 %3, metadata !25, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i64 %4, metadata !26, metadata !DIExpression()), !dbg !22
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !27
  call void @public_in(%struct.smack_value* %6), !dbg !28
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !29
  call void @public_in(%struct.smack_value* %7), !dbg !30
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !31
  call void @public_in(%struct.smack_value* %8), !dbg !32
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !33
  call void @public_in(%struct.smack_value* %9), !dbg !34
  %10 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 32), !dbg !35
  call void @public_in(%struct.smack_value* %10), !dbg !36
  %11 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 256), !dbg !37
  call void @public_in(%struct.smack_value* %11), !dbg !38
  call void @constant_time_lookup(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @constant_time_lookup(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 !dbg !41 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i8* %1, metadata !45, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %2, metadata !46, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %3, metadata !47, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %4, metadata !48, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i8* %1, metadata !49, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i8* %0, metadata !50, metadata !DIExpression()), !dbg !44
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %2, i1 false), !dbg !51
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !44
  br label %6, !dbg !53

6:                                                ; preds = %26, %5
  %.03 = phi i64 [ %4, %5 ], [ %28, %26 ]
  %.02 = phi i64 [ 0, %5 ], [ %27, %26 ], !dbg !55
  %.0 = phi i8* [ %1, %5 ], [ %.1, %26 ], !dbg !56
  call void @llvm.dbg.value(metadata i8* %.0, metadata !49, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %.02, metadata !52, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %.03, metadata !48, metadata !DIExpression()), !dbg !44
  %7 = icmp ult i64 %.02, %3, !dbg !57
  br i1 %7, label %8, label %29, !dbg !59

8:                                                ; preds = %6
  %9 = call i64 @constant_time_is_zero_s(i64 %.03), !dbg !60
  %10 = trunc i64 %9 to i8, !dbg !62
  call void @llvm.dbg.value(metadata i8 %10, metadata !63, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 0, metadata !64, metadata !DIExpression()), !dbg !44
  br label %11, !dbg !65

11:                                               ; preds = %23, %8
  %.01 = phi i64 [ 0, %8 ], [ %24, %23 ], !dbg !67
  %.1 = phi i8* [ %.0, %8 ], [ %14, %23 ], !dbg !44
  call void @llvm.dbg.value(metadata i8* %.1, metadata !49, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i64 %.01, metadata !64, metadata !DIExpression()), !dbg !44
  %12 = icmp ult i64 %.01, %2, !dbg !68
  br i1 %12, label %13, label %25, !dbg !70

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %.1, i32 1, !dbg !71
  call void @llvm.dbg.value(metadata i8* %14, metadata !49, metadata !DIExpression()), !dbg !44
  %15 = load i8, i8* %.1, align 1, !dbg !72
  %16 = call zeroext i8 @constant_time_select_8(i8 zeroext %10, i8 zeroext %15, i8 zeroext 0), !dbg !73
  %17 = zext i8 %16 to i32, !dbg !73
  %18 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !74
  %19 = load i8, i8* %18, align 1, !dbg !75
  %20 = zext i8 %19 to i32, !dbg !75
  %21 = or i32 %20, %17, !dbg !75
  %22 = trunc i32 %21 to i8, !dbg !75
  store i8 %22, i8* %18, align 1, !dbg !75
  br label %23, !dbg !76

23:                                               ; preds = %13
  %24 = add i64 %.01, 1, !dbg !77
  call void @llvm.dbg.value(metadata i64 %24, metadata !64, metadata !DIExpression()), !dbg !44
  br label %11, !dbg !78, !llvm.loop !79

25:                                               ; preds = %11
  br label %26, !dbg !82

26:                                               ; preds = %25
  %27 = add i64 %.02, 1, !dbg !83
  call void @llvm.dbg.value(metadata i64 %27, metadata !52, metadata !DIExpression()), !dbg !44
  %28 = add i64 %.03, -1, !dbg !84
  call void @llvm.dbg.value(metadata i64 %28, metadata !48, metadata !DIExpression()), !dbg !44
  br label %6, !dbg !85, !llvm.loop !86

29:                                               ; preds = %6
  ret void, !dbg !88
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @constant_time_lookup_wrapper_t() #0 !dbg !89 {
  %1 = call i8* (...) @getout(), !dbg !92
  call void @llvm.dbg.value(metadata i8* %1, metadata !93, metadata !DIExpression()), !dbg !94
  %2 = call i8* (...) @gettable(), !dbg !95
  call void @llvm.dbg.value(metadata i8* %2, metadata !96, metadata !DIExpression()), !dbg !94
  %3 = call i64 (...) @getrowsize(), !dbg !97
  call void @llvm.dbg.value(metadata i64 %3, metadata !98, metadata !DIExpression()), !dbg !94
  %4 = call i64 (...) @getnumrows(), !dbg !99
  call void @llvm.dbg.value(metadata i64 %4, metadata !100, metadata !DIExpression()), !dbg !94
  %5 = call i64 (...) @getidx(), !dbg !101
  call void @llvm.dbg.value(metadata i64 %5, metadata !102, metadata !DIExpression()), !dbg !94
  call void @constant_time_lookup(i8* %1, i8* %2, i64 %3, i64 %4, i64 %5), !dbg !103
  ret void, !dbg !104
}

declare dso_local i8* @getout(...) #2

declare dso_local i8* @gettable(...) #2

declare dso_local i64 @getrowsize(...) #2

declare dso_local i64 @getnumrows(...) #2

declare dso_local i64 @getidx(...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @constant_time_is_zero_s(i64 %0) #0 !dbg !105 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !108, metadata !DIExpression()), !dbg !109
  %2 = xor i64 %0, -1, !dbg !110
  %3 = sub i64 %0, 1, !dbg !111
  %4 = and i64 %2, %3, !dbg !112
  %5 = call i64 @constant_time_msb_s(i64 %4), !dbg !113
  ret i64 %5, !dbg !114
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @constant_time_select_8(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2) #0 !dbg !115 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata i8 %1, metadata !120, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata i8 %2, metadata !121, metadata !DIExpression()), !dbg !119
  %4 = zext i8 %0 to i32, !dbg !122
  %5 = zext i8 %1 to i32, !dbg !123
  %6 = zext i8 %2 to i32, !dbg !124
  %7 = call i32 @constant_time_select(i32 %4, i32 %5, i32 %6), !dbg !125
  %8 = trunc i32 %7 to i8, !dbg !126
  ret i8 %8, !dbg !127
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @constant_time_msb_s(i64 %0) #0 !dbg !128 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !129, metadata !DIExpression()), !dbg !130
  %2 = lshr i64 %0, 63, !dbg !131
  %3 = sub i64 0, %2, !dbg !132
  ret i64 %3, !dbg !133
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_select(i32 %0, i32 %1, i32 %2) #0 !dbg !134 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i32 %1, metadata !140, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i32 %2, metadata !141, metadata !DIExpression()), !dbg !139
  %4 = call i32 @value_barrier(i32 %0), !dbg !142
  %5 = and i32 %4, %1, !dbg !143
  %6 = xor i32 %0, -1, !dbg !144
  %7 = call i32 @value_barrier(i32 %6), !dbg !145
  %8 = and i32 %7, %2, !dbg !146
  %9 = or i32 %5, %8, !dbg !147
  ret i32 %9, !dbg !148
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @value_barrier(i32 %0) #0 !dbg !149 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !152, metadata !DIExpression()), !dbg !153
  %2 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #4, !dbg !154, !srcloc !155
  call void @llvm.dbg.value(metadata i32 %2, metadata !156, metadata !DIExpression()), !dbg !153
  ret i32 %2, !dbg !157
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
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
!23 = !DILocalVariable(name: "table", arg: 2, scope: !12, file: !1, line: 4, type: !16)
!24 = !DILocalVariable(name: "rowsize", arg: 3, scope: !12, file: !1, line: 5, type: !18)
!25 = !DILocalVariable(name: "numrows", arg: 4, scope: !12, file: !1, line: 6, type: !18)
!26 = !DILocalVariable(name: "idx", arg: 5, scope: !12, file: !1, line: 7, type: !18)
!27 = !DILocation(line: 8, column: 12, scope: !12)
!28 = !DILocation(line: 8, column: 2, scope: !12)
!29 = !DILocation(line: 9, column: 12, scope: !12)
!30 = !DILocation(line: 9, column: 2, scope: !12)
!31 = !DILocation(line: 10, column: 12, scope: !12)
!32 = !DILocation(line: 10, column: 2, scope: !12)
!33 = !DILocation(line: 11, column: 15, scope: !12)
!34 = !DILocation(line: 11, column: 5, scope: !12)
!35 = !DILocation(line: 14, column: 15, scope: !12)
!36 = !DILocation(line: 14, column: 5, scope: !12)
!37 = !DILocation(line: 15, column: 15, scope: !12)
!38 = !DILocation(line: 15, column: 5, scope: !12)
!39 = !DILocation(line: 19, column: 2, scope: !12)
!40 = !DILocation(line: 20, column: 1, scope: !12)
!41 = distinct !DISubprogram(name: "constant_time_lookup", scope: !42, file: !42, line: 394, type: !13, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DIFile(filename: "./../Tongsuo/include/internal/constant_time.h", directory: "/home/luwei/bech-back/Tongsuo/constant_primitive")
!43 = !DILocalVariable(name: "out", arg: 1, scope: !41, file: !42, line: 394, type: !15)
!44 = !DILocation(line: 0, scope: !41)
!45 = !DILocalVariable(name: "table", arg: 2, scope: !41, file: !42, line: 395, type: !16)
!46 = !DILocalVariable(name: "rowsize", arg: 3, scope: !41, file: !42, line: 396, type: !18)
!47 = !DILocalVariable(name: "numrows", arg: 4, scope: !41, file: !42, line: 397, type: !18)
!48 = !DILocalVariable(name: "idx", arg: 5, scope: !41, file: !42, line: 398, type: !18)
!49 = !DILocalVariable(name: "tablec", scope: !41, file: !42, line: 401, type: !4)
!50 = !DILocalVariable(name: "outc", scope: !41, file: !42, line: 402, type: !7)
!51 = !DILocation(line: 405, column: 5, scope: !41)
!52 = !DILocalVariable(name: "i", scope: !41, file: !42, line: 400, type: !18)
!53 = !DILocation(line: 408, column: 10, scope: !54)
!54 = distinct !DILexicalBlock(scope: !41, file: !42, line: 408, column: 5)
!55 = !DILocation(line: 0, scope: !54)
!56 = !DILocation(line: 401, column: 26, scope: !41)
!57 = !DILocation(line: 408, column: 19, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !42, line: 408, column: 5)
!59 = !DILocation(line: 408, column: 5, scope: !54)
!60 = !DILocation(line: 409, column: 31, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !42, line: 408, column: 42)
!62 = !DILocation(line: 409, column: 16, scope: !61)
!63 = !DILocalVariable(name: "mask", scope: !41, file: !42, line: 403, type: !6)
!64 = !DILocalVariable(name: "j", scope: !41, file: !42, line: 400, type: !18)
!65 = !DILocation(line: 410, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !42, line: 410, column: 9)
!67 = !DILocation(line: 0, scope: !66)
!68 = !DILocation(line: 410, column: 23, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !42, line: 410, column: 9)
!70 = !DILocation(line: 410, column: 9, scope: !66)
!71 = !DILocation(line: 411, column: 65, scope: !69)
!72 = !DILocation(line: 411, column: 57, scope: !69)
!73 = !DILocation(line: 411, column: 28, scope: !69)
!74 = !DILocation(line: 411, column: 20, scope: !69)
!75 = !DILocation(line: 411, column: 25, scope: !69)
!76 = !DILocation(line: 411, column: 13, scope: !69)
!77 = !DILocation(line: 410, column: 35, scope: !69)
!78 = !DILocation(line: 410, column: 9, scope: !69)
!79 = distinct !{!79, !70, !80, !81}
!80 = !DILocation(line: 411, column: 71, scope: !66)
!81 = !{!"llvm.loop.mustprogress"}
!82 = !DILocation(line: 412, column: 5, scope: !61)
!83 = !DILocation(line: 408, column: 31, scope: !58)
!84 = !DILocation(line: 408, column: 38, scope: !58)
!85 = !DILocation(line: 408, column: 5, scope: !58)
!86 = distinct !{!86, !59, !87, !81}
!87 = !DILocation(line: 412, column: 5, scope: !54)
!88 = !DILocation(line: 413, column: 1, scope: !41)
!89 = distinct !DISubprogram(name: "constant_time_lookup_wrapper_t", scope: !1, file: !1, line: 29, type: !90, scopeLine: 29, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DISubroutineType(types: !91)
!91 = !{null}
!92 = !DILocation(line: 30, column: 13, scope: !89)
!93 = !DILocalVariable(name: "out", scope: !89, file: !1, line: 30, type: !15)
!94 = !DILocation(line: 0, scope: !89)
!95 = !DILocation(line: 31, column: 20, scope: !89)
!96 = !DILocalVariable(name: "table", scope: !89, file: !1, line: 31, type: !16)
!97 = !DILocation(line: 32, column: 19, scope: !89)
!98 = !DILocalVariable(name: "rowsize", scope: !89, file: !1, line: 32, type: !18)
!99 = !DILocation(line: 33, column: 18, scope: !89)
!100 = !DILocalVariable(name: "numrows", scope: !89, file: !1, line: 33, type: !18)
!101 = !DILocation(line: 34, column: 15, scope: !89)
!102 = !DILocalVariable(name: "idx", scope: !89, file: !1, line: 34, type: !18)
!103 = !DILocation(line: 35, column: 2, scope: !89)
!104 = !DILocation(line: 36, column: 1, scope: !89)
!105 = distinct !DISubprogram(name: "constant_time_is_zero_s", scope: !42, file: !42, line: 170, type: !106, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!106 = !DISubroutineType(types: !107)
!107 = !{!18, !18}
!108 = !DILocalVariable(name: "a", arg: 1, scope: !105, file: !42, line: 170, type: !18)
!109 = !DILocation(line: 0, scope: !105)
!110 = !DILocation(line: 172, column: 32, scope: !105)
!111 = !DILocation(line: 172, column: 40, scope: !105)
!112 = !DILocation(line: 172, column: 35, scope: !105)
!113 = !DILocation(line: 172, column: 12, scope: !105)
!114 = !DILocation(line: 172, column: 5, scope: !105)
!115 = distinct !DISubprogram(name: "constant_time_select_8", scope: !42, file: !42, line: 290, type: !116, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!116 = !DISubroutineType(types: !117)
!117 = !{!6, !6, !6, !6}
!118 = !DILocalVariable(name: "mask", arg: 1, scope: !115, file: !42, line: 290, type: !6)
!119 = !DILocation(line: 0, scope: !115)
!120 = !DILocalVariable(name: "a", arg: 2, scope: !115, file: !42, line: 291, type: !6)
!121 = !DILocalVariable(name: "b", arg: 3, scope: !115, file: !42, line: 292, type: !6)
!122 = !DILocation(line: 294, column: 48, scope: !115)
!123 = !DILocation(line: 294, column: 54, scope: !115)
!124 = !DILocation(line: 294, column: 57, scope: !115)
!125 = !DILocation(line: 294, column: 27, scope: !115)
!126 = !DILocation(line: 294, column: 12, scope: !115)
!127 = !DILocation(line: 294, column: 5, scope: !115)
!128 = distinct !DISubprogram(name: "constant_time_msb_s", scope: !42, file: !42, line: 116, type: !106, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!129 = !DILocalVariable(name: "a", arg: 1, scope: !128, file: !42, line: 116, type: !18)
!130 = !DILocation(line: 0, scope: !128)
!131 = !DILocation(line: 118, column: 19, scope: !128)
!132 = !DILocation(line: 118, column: 14, scope: !128)
!133 = !DILocation(line: 118, column: 5, scope: !128)
!134 = distinct !DISubprogram(name: "constant_time_select", scope: !42, file: !42, line: 276, type: !135, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !137, !137, !137}
!137 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!138 = !DILocalVariable(name: "mask", arg: 1, scope: !134, file: !42, line: 276, type: !137)
!139 = !DILocation(line: 0, scope: !134)
!140 = !DILocalVariable(name: "a", arg: 2, scope: !134, file: !42, line: 277, type: !137)
!141 = !DILocalVariable(name: "b", arg: 3, scope: !134, file: !42, line: 278, type: !137)
!142 = !DILocation(line: 280, column: 13, scope: !134)
!143 = !DILocation(line: 280, column: 33, scope: !134)
!144 = !DILocation(line: 280, column: 55, scope: !134)
!145 = !DILocation(line: 280, column: 41, scope: !134)
!146 = !DILocation(line: 280, column: 62, scope: !134)
!147 = !DILocation(line: 280, column: 38, scope: !134)
!148 = !DILocation(line: 280, column: 5, scope: !134)
!149 = distinct !DISubprogram(name: "value_barrier", scope: !42, file: !42, line: 229, type: !150, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!150 = !DISubroutineType(types: !151)
!151 = !{!137, !137}
!152 = !DILocalVariable(name: "a", arg: 1, scope: !149, file: !42, line: 229, type: !137)
!153 = !DILocation(line: 0, scope: !149)
!154 = !DILocation(line: 233, column: 5, scope: !149)
!155 = !{i32 126302}
!156 = !DILocalVariable(name: "r", scope: !149, file: !42, line: 232, type: !137)
!157 = !DILocation(line: 237, column: 5, scope: !149)
