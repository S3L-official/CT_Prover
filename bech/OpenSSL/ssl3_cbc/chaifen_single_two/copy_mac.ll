; ModuleID = 'copy_mac.ll'
source_filename = "copy_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ssl3_record_st = type { i32, i8*, i32, i8* }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @ssl3_cbc_copy_mac(i8* %0, %struct.ssl3_record_st* %1, i32 %2, i32 %3) #0 !dbg !14 {
  %5 = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata %struct.ssl3_record_st* %1, metadata !32, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %2, metadata !33, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %3, metadata !34, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata [128 x i8]* %5, metadata !35, metadata !DIExpression()), !dbg !39
  %6 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !40
  %7 = load i32, i32* %6, align 8, !dbg !40
  call void @llvm.dbg.value(metadata i32 %7, metadata !41, metadata !DIExpression()), !dbg !31
  %8 = sub i32 %7, %2, !dbg !42
  call void @llvm.dbg.value(metadata i32 %8, metadata !43, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 0, metadata !44, metadata !DIExpression()), !dbg !31
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0, !dbg !45
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0, !dbg !46
  %11 = ptrtoint i8* %10 to i64, !dbg !47
  %12 = sub i64 0, %11, !dbg !48
  %13 = and i64 %12, 63, !dbg !49
  %14 = getelementptr inbounds i8, i8* %9, i64 %13, !dbg !50
  call void @llvm.dbg.value(metadata i8* %14, metadata !51, metadata !DIExpression()), !dbg !31
  %15 = add i32 %2, 255, !dbg !52
  %16 = add i32 %15, 1, !dbg !54
  %17 = icmp ugt i32 %3, %16, !dbg !55
  br i1 %17, label %18, label %22, !dbg !56

18:                                               ; preds = %4
  %19 = add i32 %2, 255, !dbg !57
  %20 = add i32 %19, 1, !dbg !58
  %21 = sub i32 %3, %20, !dbg !59
  call void @llvm.dbg.value(metadata i32 %21, metadata !44, metadata !DIExpression()), !dbg !31
  br label %22, !dbg !60

22:                                               ; preds = %18, %4
  %.04 = phi i32 [ %21, %18 ], [ 0, %4 ], !dbg !31
  call void @llvm.dbg.value(metadata i32 %.04, metadata !44, metadata !DIExpression()), !dbg !31
  %23 = lshr i32 %2, 1, !dbg !61
  call void @llvm.dbg.value(metadata i32 %23, metadata !62, metadata !DIExpression()), !dbg !31
  %24 = shl i32 %23, 24, !dbg !63
  call void @llvm.dbg.value(metadata i32 %24, metadata !62, metadata !DIExpression()), !dbg !31
  %25 = add i32 %24, %8, !dbg !64
  %26 = sub i32 %25, %.04, !dbg !65
  %27 = urem i32 %26, %2, !dbg !66
  call void @llvm.dbg.value(metadata i32 %27, metadata !67, metadata !DIExpression()), !dbg !31
  %28 = zext i32 %2 to i64, !dbg !68
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 %28, i1 false), !dbg !69
  call void @llvm.dbg.value(metadata i32 %.04, metadata !70, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !31
  br label %29, !dbg !72

29:                                               ; preds = %54, %22
  %.02 = phi i32 [ %.04, %22 ], [ %55, %54 ], !dbg !74
  %.01 = phi i32 [ 0, %22 ], [ %53, %54 ], !dbg !74
  call void @llvm.dbg.value(metadata i32 %.01, metadata !71, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %.02, metadata !70, metadata !DIExpression()), !dbg !31
  %30 = icmp ult i32 %.02, %3, !dbg !75
  br i1 %30, label %31, label %56, !dbg !77

31:                                               ; preds = %29
  %32 = call zeroext i8 @constant_time_ge_8(i32 %.02, i32 %8), !dbg !78
  call void @llvm.dbg.value(metadata i8 %32, metadata !80, metadata !DIExpression()), !dbg !81
  %33 = call zeroext i8 @constant_time_ge_8(i32 %.02, i32 %7), !dbg !82
  call void @llvm.dbg.value(metadata i8 %33, metadata !83, metadata !DIExpression()), !dbg !81
  %34 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1, !dbg !84
  %35 = load i8*, i8** %34, align 8, !dbg !84
  %36 = zext i32 %.02 to i64, !dbg !85
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !85
  %38 = load i8, i8* %37, align 1, !dbg !85
  call void @llvm.dbg.value(metadata i8 %38, metadata !86, metadata !DIExpression()), !dbg !81
  %39 = zext i8 %38 to i32, !dbg !87
  %40 = zext i8 %32 to i32, !dbg !88
  %41 = and i32 %39, %40, !dbg !89
  %42 = zext i8 %33 to i32, !dbg !90
  %43 = xor i32 %42, -1, !dbg !91
  %44 = and i32 %41, %43, !dbg !92
  %45 = add i32 %.01, 1, !dbg !93
  call void @llvm.dbg.value(metadata i32 %45, metadata !71, metadata !DIExpression()), !dbg !31
  %46 = zext i32 %.01 to i64, !dbg !94
  %47 = getelementptr inbounds i8, i8* %14, i64 %46, !dbg !94
  %48 = load i8, i8* %47, align 1, !dbg !95
  %49 = zext i8 %48 to i32, !dbg !95
  %50 = or i32 %49, %44, !dbg !95
  %51 = trunc i32 %50 to i8, !dbg !95
  store i8 %51, i8* %47, align 1, !dbg !95
  %52 = call i32 @constant_time_lt(i32 %45, i32 %2), !dbg !96
  %53 = and i32 %45, %52, !dbg !97
  call void @llvm.dbg.value(metadata i32 %53, metadata !71, metadata !DIExpression()), !dbg !31
  br label %54, !dbg !98

54:                                               ; preds = %31
  %55 = add i32 %.02, 1, !dbg !99
  call void @llvm.dbg.value(metadata i32 %55, metadata !70, metadata !DIExpression()), !dbg !31
  br label %29, !dbg !100, !llvm.loop !101

56:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !31
  br label %57, !dbg !104

57:                                               ; preds = %73, %56
  %.13 = phi i32 [ 0, %56 ], [ %74, %73 ], !dbg !106
  %.1 = phi i32 [ 0, %56 ], [ %68, %73 ], !dbg !31
  %.0 = phi i32 [ %27, %56 ], [ %72, %73 ], !dbg !31
  call void @llvm.dbg.value(metadata i32 %.0, metadata !67, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %.1, metadata !71, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %.13, metadata !70, metadata !DIExpression()), !dbg !31
  %58 = icmp ult i32 %.13, %2, !dbg !107
  br i1 %58, label %59, label %75, !dbg !109

59:                                               ; preds = %57
  %60 = xor i32 %.0, 32, !dbg !110
  %61 = zext i32 %60 to i64, !dbg !112
  %62 = getelementptr inbounds i8, i8* %14, i64 %61, !dbg !112
  %63 = load volatile i8, i8* %62, align 1, !dbg !112
  %64 = add i32 %.0, 1, !dbg !113
  call void @llvm.dbg.value(metadata i32 %64, metadata !67, metadata !DIExpression()), !dbg !31
  %65 = zext i32 %.0 to i64, !dbg !114
  %66 = getelementptr inbounds i8, i8* %14, i64 %65, !dbg !114
  %67 = load i8, i8* %66, align 1, !dbg !114
  %68 = add i32 %.1, 1, !dbg !115
  call void @llvm.dbg.value(metadata i32 %68, metadata !71, metadata !DIExpression()), !dbg !31
  %69 = zext i32 %.1 to i64, !dbg !116
  %70 = getelementptr inbounds i8, i8* %0, i64 %69, !dbg !116
  store i8 %67, i8* %70, align 1, !dbg !117
  %71 = call i32 @constant_time_lt(i32 %64, i32 %2), !dbg !118
  %72 = and i32 %64, %71, !dbg !119
  call void @llvm.dbg.value(metadata i32 %72, metadata !67, metadata !DIExpression()), !dbg !31
  br label %73, !dbg !120

73:                                               ; preds = %59
  %74 = add i32 %.13, 1, !dbg !121
  call void @llvm.dbg.value(metadata i32 %74, metadata !70, metadata !DIExpression()), !dbg !31
  br label %57, !dbg !122, !llvm.loop !123

75:                                               ; preds = %57
  ret void, !dbg !125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @constant_time_ge_8(i32 %0, i32 %1) #0 !dbg !126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32 %1, metadata !132, metadata !DIExpression()), !dbg !131
  %3 = call i32 @constant_time_ge(i32 %0, i32 %1), !dbg !133
  %4 = trunc i32 %3 to i8, !dbg !134
  ret i8 %4, !dbg !135
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_lt(i32 %0, i32 %1) #0 !dbg !136 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i32 %1, metadata !141, metadata !DIExpression()), !dbg !140
  %3 = xor i32 %0, %1, !dbg !142
  %4 = sub i32 %0, %1, !dbg !143
  %5 = xor i32 %4, %1, !dbg !144
  %6 = or i32 %3, %5, !dbg !145
  %7 = xor i32 %0, %6, !dbg !146
  %8 = call i32 @constant_time_msb(i32 %7), !dbg !147
  ret i32 %8, !dbg !148
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy_mac_wrapper(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 !dbg !149 {
  %6 = alloca %struct.ssl3_record_st, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i8* %1, metadata !154, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i32 %2, metadata !155, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i32 %3, metadata !156, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i32 %4, metadata !157, metadata !DIExpression()), !dbg !153
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !158
  call void @public_in(%struct.smack_value* %7), !dbg !159
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !160
  call void @public_in(%struct.smack_value* %8), !dbg !161
  %9 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %2), !dbg !162
  call void @public_in(%struct.smack_value* %9), !dbg !163
  %10 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %3), !dbg !164
  call void @public_in(%struct.smack_value* %10), !dbg !165
  %11 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %4), !dbg !166
  call void @public_in(%struct.smack_value* %11), !dbg !167
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %6, metadata !168, metadata !DIExpression()), !dbg !169
  %12 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 0, !dbg !170
  store i32 %2, i32* %12, align 8, !dbg !170
  %13 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 1, !dbg !170
  store i8* %1, i8** %13, align 8, !dbg !170
  %14 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 2, !dbg !170
  store i32 0, i32* %14, align 8, !dbg !170
  %15 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 3, !dbg !170
  store i8* null, i8** %15, align 8, !dbg !170
  call void @ssl3_cbc_copy_mac(i8* %0, %struct.ssl3_record_st* %6, i32 %3, i32 %4), !dbg !171
  ret void, !dbg !172
}

declare dso_local void @public_in(%struct.smack_value*) #3

declare dso_local %struct.smack_value* @__SMACK_value(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @tmp(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 !dbg !173 {
  %6 = alloca %struct.ssl3_record_st, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i8* %1, metadata !176, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i32 %2, metadata !177, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i32 %3, metadata !178, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i32 %4, metadata !179, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %6, metadata !180, metadata !DIExpression()), !dbg !181
  %7 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 0, !dbg !182
  store i32 %2, i32* %7, align 8, !dbg !182
  %8 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 1, !dbg !182
  store i8* %1, i8** %8, align 8, !dbg !182
  %9 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 2, !dbg !182
  store i32 0, i32* %9, align 8, !dbg !182
  %10 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 3, !dbg !182
  store i8* null, i8** %10, align 8, !dbg !182
  call void @ssl3_cbc_copy_mac(i8* %0, %struct.ssl3_record_st* %6, i32 %3, i32 %4), !dbg !183
  ret void, !dbg !184
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy_mac_wrapper_t() #0 !dbg !185 {
  %1 = call i8* (...) @getchar(), !dbg !188
  call void @llvm.dbg.value(metadata i8* %1, metadata !189, metadata !DIExpression()), !dbg !190
  %2 = call i8* (...) @getchar2(), !dbg !191
  call void @llvm.dbg.value(metadata i8* %2, metadata !192, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 128, metadata !193, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 64, metadata !194, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32 64, metadata !195, metadata !DIExpression()), !dbg !190
  call void @tmp(i8* %1, i8* %2, i32 128, i32 64, i32 64), !dbg !196
  ret void, !dbg !197
}

declare dso_local i8* @getchar(...) #3

declare dso_local i8* @getchar2(...) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_ge(i32 %0, i32 %1) #0 !dbg !198 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 %1, metadata !201, metadata !DIExpression()), !dbg !200
  %3 = call i32 @constant_time_lt(i32 %0, i32 %1), !dbg !202
  %4 = xor i32 %3, -1, !dbg !203
  ret i32 %4, !dbg !204
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_msb(i32 %0) #0 !dbg !205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !208, metadata !DIExpression()), !dbg !209
  %2 = lshr i32 %0, 31, !dbg !210
  %3 = sub i32 0, %2, !dbg !211
  ret i32 %3, !dbg !212
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "copy_mac.c", directory: "/home/luwei/bech-back/OpenSSL/ssl3_cbc")
!2 = !{}
!3 = !{!4, !7, !9}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 46, baseType: !6)
!5 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!14 = distinct !DISubprogram(name: "ssl3_cbc_copy_mac", scope: !15, file: !15, line: 62, type: !16, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DIFile(filename: "./../ssl3_cbc_copy_mac.c", directory: "/home/luwei/bech-back/OpenSSL/ssl3_cbc")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !19, !25, !25}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !15, line: 11, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !15, line: 6, size: 256, elements: !23)
!23 = !{!24, !26, !27, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !22, file: !15, line: 7, baseType: !25, size: 32)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !15, line: 8, baseType: !18, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !15, line: 9, baseType: !28, size: 32, offset: 128)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !22, file: !15, line: 10, baseType: !18, size: 64, offset: 192)
!30 = !DILocalVariable(name: "out", arg: 1, scope: !14, file: !15, line: 62, type: !18)
!31 = !DILocation(line: 0, scope: !14)
!32 = !DILocalVariable(name: "rec", arg: 2, scope: !14, file: !15, line: 63, type: !19)
!33 = !DILocalVariable(name: "md_size", arg: 3, scope: !14, file: !15, line: 64, type: !25)
!34 = !DILocalVariable(name: "orig_len", arg: 4, scope: !14, file: !15, line: 64, type: !25)
!35 = !DILocalVariable(name: "rotated_mac_buf", scope: !14, file: !15, line: 67, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 128)
!39 = !DILocation(line: 67, column: 19, scope: !14)
!40 = !DILocation(line: 76, column: 29, scope: !14)
!41 = !DILocalVariable(name: "mac_end", scope: !14, file: !15, line: 76, type: !25)
!42 = !DILocation(line: 77, column: 34, scope: !14)
!43 = !DILocalVariable(name: "mac_start", scope: !14, file: !15, line: 77, type: !25)
!44 = !DILocalVariable(name: "scan_start", scope: !14, file: !15, line: 82, type: !25)
!45 = !DILocation(line: 91, column: 19, scope: !14)
!46 = !DILocation(line: 91, column: 51, scope: !14)
!47 = !DILocation(line: 91, column: 43, scope: !14)
!48 = !DILocation(line: 91, column: 41, scope: !14)
!49 = !DILocation(line: 91, column: 68, scope: !14)
!50 = !DILocation(line: 91, column: 35, scope: !14)
!51 = !DILocalVariable(name: "rotated_mac", scope: !14, file: !15, line: 68, type: !18)
!52 = !DILocation(line: 95, column: 28, scope: !53)
!53 = distinct !DILexicalBlock(scope: !14, file: !15, line: 95, column: 9)
!54 = !DILocation(line: 95, column: 34, scope: !53)
!55 = !DILocation(line: 95, column: 18, scope: !53)
!56 = !DILocation(line: 95, column: 9, scope: !14)
!57 = !DILocation(line: 96, column: 42, scope: !53)
!58 = !DILocation(line: 96, column: 48, scope: !53)
!59 = !DILocation(line: 96, column: 31, scope: !53)
!60 = !DILocation(line: 96, column: 9, scope: !53)
!61 = !DILocation(line: 105, column: 27, scope: !14)
!62 = !DILocalVariable(name: "div_spoiler", scope: !14, file: !15, line: 84, type: !25)
!63 = !DILocation(line: 106, column: 17, scope: !14)
!64 = !DILocation(line: 107, column: 34, scope: !14)
!65 = !DILocation(line: 107, column: 46, scope: !14)
!66 = !DILocation(line: 107, column: 60, scope: !14)
!67 = !DILocalVariable(name: "rotate_offset", scope: !14, file: !15, line: 85, type: !25)
!68 = !DILocation(line: 109, column: 28, scope: !14)
!69 = !DILocation(line: 109, column: 5, scope: !14)
!70 = !DILocalVariable(name: "i", scope: !14, file: !15, line: 83, type: !25)
!71 = !DILocalVariable(name: "j", scope: !14, file: !15, line: 83, type: !25)
!72 = !DILocation(line: 110, column: 10, scope: !73)
!73 = distinct !DILexicalBlock(scope: !14, file: !15, line: 110, column: 5)
!74 = !DILocation(line: 0, scope: !73)
!75 = !DILocation(line: 110, column: 35, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !15, line: 110, column: 5)
!77 = !DILocation(line: 110, column: 5, scope: !73)
!78 = !DILocation(line: 113, column: 37, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !15, line: 110, column: 52)
!80 = !DILocalVariable(name: "mac_started", scope: !79, file: !15, line: 113, type: !9)
!81 = !DILocation(line: 0, scope: !79)
!82 = !DILocation(line: 114, column: 35, scope: !79)
!83 = !DILocalVariable(name: "mac_ended", scope: !79, file: !15, line: 114, type: !9)
!84 = !DILocation(line: 115, column: 32, scope: !79)
!85 = !DILocation(line: 115, column: 27, scope: !79)
!86 = !DILocalVariable(name: "b", scope: !79, file: !15, line: 115, type: !9)
!87 = !DILocation(line: 116, column: 29, scope: !79)
!88 = !DILocation(line: 116, column: 33, scope: !79)
!89 = !DILocation(line: 116, column: 31, scope: !79)
!90 = !DILocation(line: 116, column: 48, scope: !79)
!91 = !DILocation(line: 116, column: 47, scope: !79)
!92 = !DILocation(line: 116, column: 45, scope: !79)
!93 = !DILocation(line: 116, column: 22, scope: !79)
!94 = !DILocation(line: 116, column: 9, scope: !79)
!95 = !DILocation(line: 116, column: 26, scope: !79)
!96 = !DILocation(line: 117, column: 14, scope: !79)
!97 = !DILocation(line: 117, column: 11, scope: !79)
!98 = !DILocation(line: 118, column: 5, scope: !79)
!99 = !DILocation(line: 110, column: 48, scope: !76)
!100 = !DILocation(line: 110, column: 5, scope: !76)
!101 = distinct !{!101, !77, !102, !103}
!102 = !DILocation(line: 118, column: 5, scope: !73)
!103 = !{!"llvm.loop.mustprogress"}
!104 = !DILocation(line: 123, column: 10, scope: !105)
!105 = distinct !DILexicalBlock(scope: !14, file: !15, line: 123, column: 5)
!106 = !DILocation(line: 0, scope: !105)
!107 = !DILocation(line: 123, column: 19, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !15, line: 123, column: 5)
!109 = !DILocation(line: 123, column: 5, scope: !105)
!110 = !DILocation(line: 126, column: 63, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !15, line: 123, column: 35)
!112 = !DILocation(line: 126, column: 9, scope: !111)
!113 = !DILocation(line: 127, column: 45, scope: !111)
!114 = !DILocation(line: 127, column: 20, scope: !111)
!115 = !DILocation(line: 127, column: 14, scope: !111)
!116 = !DILocation(line: 127, column: 9, scope: !111)
!117 = !DILocation(line: 127, column: 18, scope: !111)
!118 = !DILocation(line: 128, column: 26, scope: !111)
!119 = !DILocation(line: 128, column: 23, scope: !111)
!120 = !DILocation(line: 129, column: 5, scope: !111)
!121 = !DILocation(line: 123, column: 31, scope: !108)
!122 = !DILocation(line: 123, column: 5, scope: !108)
!123 = distinct !{!123, !109, !124, !103}
!124 = !DILocation(line: 129, column: 5, scope: !105)
!125 = !DILocation(line: 141, column: 1, scope: !14)
!126 = distinct !DISubprogram(name: "constant_time_ge_8", scope: !127, file: !127, line: 153, type: !128, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!127 = !DIFile(filename: "./../constant_time_locl.h", directory: "/home/luwei/bech-back/OpenSSL/ssl3_cbc")
!128 = !DISubroutineType(types: !129)
!129 = !{!9, !25, !25}
!130 = !DILocalVariable(name: "a", arg: 1, scope: !126, file: !127, line: 153, type: !25)
!131 = !DILocation(line: 0, scope: !126)
!132 = !DILocalVariable(name: "b", arg: 2, scope: !126, file: !127, line: 153, type: !25)
!133 = !DILocation(line: 155, column: 28, scope: !126)
!134 = !DILocation(line: 155, column: 12, scope: !126)
!135 = !DILocation(line: 155, column: 5, scope: !126)
!136 = distinct !DISubprogram(name: "constant_time_lt", scope: !127, file: !127, line: 138, type: !137, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!137 = !DISubroutineType(types: !138)
!138 = !{!25, !25, !25}
!139 = !DILocalVariable(name: "a", arg: 1, scope: !136, file: !127, line: 138, type: !25)
!140 = !DILocation(line: 0, scope: !136)
!141 = !DILocalVariable(name: "b", arg: 2, scope: !136, file: !127, line: 138, type: !25)
!142 = !DILocation(line: 140, column: 38, scope: !136)
!143 = !DILocation(line: 140, column: 49, scope: !136)
!144 = !DILocation(line: 140, column: 54, scope: !136)
!145 = !DILocation(line: 140, column: 43, scope: !136)
!146 = !DILocation(line: 140, column: 32, scope: !136)
!147 = !DILocation(line: 140, column: 12, scope: !136)
!148 = !DILocation(line: 140, column: 5, scope: !136)
!149 = distinct !DISubprogram(name: "copy_mac_wrapper", scope: !1, file: !1, line: 7, type: !150, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !18, !18, !25, !25, !25}
!152 = !DILocalVariable(name: "out", arg: 1, scope: !149, file: !1, line: 7, type: !18)
!153 = !DILocation(line: 0, scope: !149)
!154 = !DILocalVariable(name: "data", arg: 2, scope: !149, file: !1, line: 8, type: !18)
!155 = !DILocalVariable(name: "length", arg: 3, scope: !149, file: !1, line: 9, type: !25)
!156 = !DILocalVariable(name: "md_size", arg: 4, scope: !149, file: !1, line: 10, type: !25)
!157 = !DILocalVariable(name: "orig_len", arg: 5, scope: !149, file: !1, line: 10, type: !25)
!158 = !DILocation(line: 13, column: 13, scope: !149)
!159 = !DILocation(line: 13, column: 3, scope: !149)
!160 = !DILocation(line: 14, column: 13, scope: !149)
!161 = !DILocation(line: 14, column: 3, scope: !149)
!162 = !DILocation(line: 17, column: 13, scope: !149)
!163 = !DILocation(line: 17, column: 3, scope: !149)
!164 = !DILocation(line: 18, column: 13, scope: !149)
!165 = !DILocation(line: 18, column: 3, scope: !149)
!166 = !DILocation(line: 19, column: 13, scope: !149)
!167 = !DILocation(line: 19, column: 3, scope: !149)
!168 = !DILocalVariable(name: "rec_obj", scope: !149, file: !1, line: 22, type: !21)
!169 = !DILocation(line: 22, column: 15, scope: !149)
!170 = !DILocation(line: 22, column: 25, scope: !149)
!171 = !DILocation(line: 24, column: 10, scope: !149)
!172 = !DILocation(line: 24, column: 3, scope: !149)
!173 = distinct !DISubprogram(name: "tmp", scope: !1, file: !1, line: 28, type: !150, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!174 = !DILocalVariable(name: "out", arg: 1, scope: !173, file: !1, line: 28, type: !18)
!175 = !DILocation(line: 0, scope: !173)
!176 = !DILocalVariable(name: "data", arg: 2, scope: !173, file: !1, line: 29, type: !18)
!177 = !DILocalVariable(name: "length", arg: 3, scope: !173, file: !1, line: 30, type: !25)
!178 = !DILocalVariable(name: "md_size", arg: 4, scope: !173, file: !1, line: 31, type: !25)
!179 = !DILocalVariable(name: "orig_len", arg: 5, scope: !173, file: !1, line: 31, type: !25)
!180 = !DILocalVariable(name: "rec_obj", scope: !173, file: !1, line: 36, type: !21)
!181 = !DILocation(line: 36, column: 15, scope: !173)
!182 = !DILocation(line: 36, column: 25, scope: !173)
!183 = !DILocation(line: 38, column: 10, scope: !173)
!184 = !DILocation(line: 38, column: 3, scope: !173)
!185 = distinct !DISubprogram(name: "copy_mac_wrapper_t", scope: !1, file: !1, line: 44, type: !186, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!186 = !DISubroutineType(types: !187)
!187 = !{null}
!188 = !DILocation(line: 46, column: 24, scope: !185)
!189 = !DILocalVariable(name: "out", scope: !185, file: !1, line: 46, type: !18)
!190 = !DILocation(line: 0, scope: !185)
!191 = !DILocation(line: 47, column: 54, scope: !185)
!192 = !DILocalVariable(name: "data", scope: !185, file: !1, line: 47, type: !18)
!193 = !DILocalVariable(name: "length", scope: !185, file: !1, line: 48, type: !25)
!194 = !DILocalVariable(name: "md_size", scope: !185, file: !1, line: 49, type: !25)
!195 = !DILocalVariable(name: "orig_len", scope: !185, file: !1, line: 50, type: !25)
!196 = !DILocation(line: 52, column: 12, scope: !185)
!197 = !DILocation(line: 52, column: 5, scope: !185)
!198 = distinct !DISubprogram(name: "constant_time_ge", scope: !127, file: !127, line: 148, type: !137, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!199 = !DILocalVariable(name: "a", arg: 1, scope: !198, file: !127, line: 148, type: !25)
!200 = !DILocation(line: 0, scope: !198)
!201 = !DILocalVariable(name: "b", arg: 2, scope: !198, file: !127, line: 148, type: !25)
!202 = !DILocation(line: 150, column: 13, scope: !198)
!203 = !DILocation(line: 150, column: 12, scope: !198)
!204 = !DILocation(line: 150, column: 5, scope: !198)
!205 = distinct !DISubprogram(name: "constant_time_msb", scope: !127, file: !127, line: 133, type: !206, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!206 = !DISubroutineType(types: !207)
!207 = !{!25, !25}
!208 = !DILocalVariable(name: "a", arg: 1, scope: !205, file: !127, line: 133, type: !25)
!209 = !DILocation(line: 0, scope: !205)
!210 = !DILocation(line: 135, column: 19, scope: !205)
!211 = !DILocation(line: 135, column: 14, scope: !205)
!212 = !DILocation(line: 135, column: 5, scope: !205)
