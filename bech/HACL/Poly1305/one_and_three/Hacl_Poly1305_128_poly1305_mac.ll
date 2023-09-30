; ModuleID = 'Hacl_Poly1305_128_poly1305_mac.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_128_poly1305_mac_wrapper(i8* %0, i32 %1, i8* %2, i8* %3) #0 !dbg !7 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 %1, metadata !21, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i8* %2, metadata !22, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i8* %3, metadata !23, metadata !DIExpression()), !dbg !20
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !24
  call void @public_in(%struct.smack_value* %5), !dbg !25
  %6 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %1), !dbg !26
  call void @public_in(%struct.smack_value* %6), !dbg !27
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !28
  call void @public_in(%struct.smack_value* %7), !dbg !29
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !30
  call void @public_in(%struct.smack_value* %8), !dbg !31
  %9 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 64), !dbg !32
  call void @public_in(%struct.smack_value* %9), !dbg !33
  %10 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 64), !dbg !34
  call void @public_in(%struct.smack_value* %10), !dbg !35
  call void @Hacl_Poly1305_128_poly1305_mac(i8* %0, i32 %1, i8* %2, i8* %3), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

declare dso_local void @Hacl_Poly1305_128_poly1305_mac(i8*, i32, i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Poly1305_128_poly1305_mac_wrapper_t() #0 !dbg !38 {
  %1 = call i8* (...) @getpt1(), !dbg !41
  call void @llvm.dbg.value(metadata i8* %1, metadata !42, metadata !DIExpression()), !dbg !43
  %2 = call i8* (...) @getpt2(), !dbg !44
  call void @llvm.dbg.value(metadata i8* %2, metadata !45, metadata !DIExpression()), !dbg !43
  %3 = call i8* (...) @getpt3(), !dbg !46
  call void @llvm.dbg.value(metadata i8* %3, metadata !47, metadata !DIExpression()), !dbg !43
  %4 = call zeroext i8 (...) @getnum2(), !dbg !48
  call void @llvm.dbg.value(metadata i8 %4, metadata !49, metadata !DIExpression()), !dbg !43
  %5 = zext i8 %4 to i32, !dbg !50
  call void @Hacl_Poly1305_128_poly1305_mac(i8* %1, i32 %5, i8* %2, i8* %3), !dbg !51
  ret void, !dbg !52
}

declare dso_local i8* @getpt1(...) #2

declare dso_local i8* @getpt2(...) #2

declare dso_local i8* @getpt3(...) #2

declare dso_local zeroext i8 @getnum2(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Hacl_Poly1305_128_poly1305_mac.c", directory: "/home/luwei/bech-back/HACL/Poly1305")
!2 = !{}
!3 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!4 = !{i32 7, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "Hacl_Poly1305_128_poly1305_mac_wrapper", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !16, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 24, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !14, line: 38, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 26, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !14, line: 42, baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DILocalVariable(name: "tag", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!20 = !DILocation(line: 0, scope: !7)
!21 = !DILocalVariable(name: "len", arg: 2, scope: !7, file: !1, line: 3, type: !16)
!22 = !DILocalVariable(name: "text", arg: 3, scope: !7, file: !1, line: 3, type: !10)
!23 = !DILocalVariable(name: "key", arg: 4, scope: !7, file: !1, line: 3, type: !10)
!24 = !DILocation(line: 5, column: 13, scope: !7)
!25 = !DILocation(line: 5, column: 3, scope: !7)
!26 = !DILocation(line: 6, column: 13, scope: !7)
!27 = !DILocation(line: 6, column: 3, scope: !7)
!28 = !DILocation(line: 7, column: 13, scope: !7)
!29 = !DILocation(line: 7, column: 3, scope: !7)
!30 = !DILocation(line: 8, column: 13, scope: !7)
!31 = !DILocation(line: 8, column: 3, scope: !7)
!32 = !DILocation(line: 11, column: 13, scope: !7)
!33 = !DILocation(line: 11, column: 3, scope: !7)
!34 = !DILocation(line: 12, column: 13, scope: !7)
!35 = !DILocation(line: 12, column: 3, scope: !7)
!36 = !DILocation(line: 14, column: 3, scope: !7)
!37 = !DILocation(line: 15, column: 1, scope: !7)
!38 = distinct !DISubprogram(name: "Hacl_Poly1305_128_poly1305_mac_wrapper_t", scope: !1, file: !1, line: 25, type: !39, scopeLine: 25, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{null}
!41 = !DILocation(line: 26, column: 17, scope: !38)
!42 = !DILocalVariable(name: "tag", scope: !38, file: !1, line: 26, type: !10)
!43 = !DILocation(line: 0, scope: !38)
!44 = !DILocation(line: 27, column: 18, scope: !38)
!45 = !DILocalVariable(name: "text", scope: !38, file: !1, line: 27, type: !10)
!46 = !DILocation(line: 28, column: 18, scope: !38)
!47 = !DILocalVariable(name: "key", scope: !38, file: !1, line: 28, type: !10)
!48 = !DILocation(line: 29, column: 17, scope: !38)
!49 = !DILocalVariable(name: "len", scope: !38, file: !1, line: 29, type: !11)
!50 = !DILocation(line: 32, column: 37, scope: !38)
!51 = !DILocation(line: 32, column: 2, scope: !38)
!52 = !DILocation(line: 33, column: 1, scope: !38)
