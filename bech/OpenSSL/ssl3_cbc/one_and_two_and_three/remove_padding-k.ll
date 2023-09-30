; ModuleID = 'remove_padding.ll'
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
  call void @llvm.dbg.value(metadata %struct.ssl_st* %0, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata %struct.ssl3_record_st* %1, metadata !59, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 %2, metadata !60, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 %3, metadata !61, metadata !DIExpression()), !dbg !58
  %5 = add i32 1, %3, !dbg !62
  call void @llvm.dbg.value(metadata i32 %5, metadata !63, metadata !DIExpression()), !dbg !58
  %6 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !65
  %7 = load i32, i32* %6, align 8, !dbg !65
  %8 = icmp ugt i32 %5, %7, !dbg !67
  br i1 %8, label %9, label %10, !dbg !68

9:                                                ; preds = %4
  br label %37, !dbg !69

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 1, !dbg !70
  %12 = load i8*, i8** %11, align 8, !dbg !70
  %13 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !71
  %14 = load i32, i32* %13, align 8, !dbg !71
  %15 = sub i32 %14, 1, !dbg !72
  %16 = zext i32 %15 to i64, !dbg !73
  %17 = getelementptr inbounds i8, i8* %12, i64 %16, !dbg !73
  %18 = load i8, i8* %17, align 1, !dbg !73
  %19 = zext i8 %18 to i32, !dbg !73
  call void @llvm.dbg.value(metadata i32 %19, metadata !74, metadata !DIExpression()), !dbg !58
  %20 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !75
  %21 = load i32, i32* %20, align 8, !dbg !75
  %22 = add i32 %19, %5, !dbg !76
  %23 = call i32 @constant_time_ge(i32 %21, i32 %22), !dbg !77
  call void @llvm.dbg.value(metadata i32 %23, metadata !78, metadata !DIExpression()), !dbg !58
  %24 = add i32 %19, 1, !dbg !79
  %25 = call i32 @constant_time_ge(i32 %2, i32 %24), !dbg !80
  %26 = and i32 %23, %25, !dbg !81
  call void @llvm.dbg.value(metadata i32 %26, metadata !78, metadata !DIExpression()), !dbg !58
  %27 = add i32 %19, 1, !dbg !82
  %28 = and i32 %26, %27, !dbg !83
  call void @llvm.dbg.value(metadata i32 %28, metadata !74, metadata !DIExpression()), !dbg !58
  %29 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 0, !dbg !84
  %30 = load i32, i32* %29, align 8, !dbg !85
  %31 = sub i32 %30, %28, !dbg !85
  store i32 %31, i32* %29, align 8, !dbg !85
  %32 = shl i32 %28, 8, !dbg !86
  %33 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %1, i32 0, i32 2, !dbg !87
  %34 = load i32, i32* %33, align 8, !dbg !88
  %35 = or i32 %34, %32, !dbg !88
  store i32 %35, i32* %33, align 8, !dbg !88
  %36 = call i32 @constant_time_select_int(i32 %26, i32 1, i32 -1), !dbg !89
  br label %37, !dbg !90

37:                                               ; preds = %10, %9
  %.0 = phi i32 [ 0, %9 ], [ %36, %10 ], !dbg !58
  ret i32 %.0, !dbg !91
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_ge(i32 %0, i32 %1) #0 !dbg !92 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i32 %1, metadata !98, metadata !DIExpression()), !dbg !97
  %3 = call i32 @constant_time_lt(i32 %0, i32 %1), !dbg !99
  %4 = xor i32 %3, -1, !dbg !100
  ret i32 %4, !dbg !101
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_select_int(i32 %0, i32 %1, i32 %2) #0 !dbg !102 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32 %1, metadata !107, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32 %2, metadata !108, metadata !DIExpression()), !dbg !106
  %4 = call i32 @constant_time_select(i32 %0, i32 %1, i32 %2), !dbg !109
  ret i32 %4, !dbg !110
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @remove_padding_wrapper(i8* %0, i32 %1, i32 %2, i32 %3) #0 !dbg !111 {
  %5 = alloca %struct.ssl_st, align 8
  %6 = alloca %struct.ssl3_record_st, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32 %1, metadata !116, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32 %2, metadata !117, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32 %3, metadata !118, metadata !DIExpression()), !dbg !115
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !119
  call void @public_in(%struct.smack_value* %7), !dbg !120
  %8 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %1), !dbg !121
  call void @public_in(%struct.smack_value* %8), !dbg !122
  %9 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %2), !dbg !123
  call void @public_in(%struct.smack_value* %9), !dbg !124
  %10 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %3), !dbg !125
  call void @public_in(%struct.smack_value* %10), !dbg !126
  call void @llvm.dbg.declare(metadata %struct.ssl_st* %5, metadata !127, metadata !DIExpression()), !dbg !128
  %11 = bitcast %struct.ssl_st* %5 to i8*, !dbg !128
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false), !dbg !128
  call void @llvm.dbg.value(metadata %struct.ssl_st* %5, metadata !129, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %6, metadata !130, metadata !DIExpression()), !dbg !131
  %12 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 0, !dbg !132
  store i32 %1, i32* %12, align 8, !dbg !132
  %13 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 1, !dbg !132
  store i8* %0, i8** %13, align 8, !dbg !132
  %14 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 2, !dbg !132
  store i32 0, i32* %14, align 8, !dbg !132
  %15 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 3, !dbg !132
  store i8* null, i8** %15, align 8, !dbg !132
  %16 = call i32 @ssl3_cbc_remove_padding(%struct.ssl_st* %5, %struct.ssl3_record_st* %6, i32 %2, i32 %3), !dbg !133
  ret i32 %16, !dbg !134
}

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tmp(i8* %0, i32 %1, i32 %2, i32 %3) #0 !dbg !135 {
  %5 = alloca %struct.ssl_st, align 8
  %6 = alloca %struct.ssl3_record_st, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 %1, metadata !138, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 %2, metadata !139, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 %3, metadata !140, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata %struct.ssl_st* %5, metadata !141, metadata !DIExpression()), !dbg !142
  %7 = bitcast %struct.ssl_st* %5 to i8*, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 40, i1 false), !dbg !142
  call void @llvm.dbg.value(metadata %struct.ssl_st* %5, metadata !143, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata %struct.ssl3_record_st* %6, metadata !144, metadata !DIExpression()), !dbg !145
  %8 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 0, !dbg !146
  store i32 %1, i32* %8, align 8, !dbg !146
  %9 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 1, !dbg !146
  store i8* %0, i8** %9, align 8, !dbg !146
  %10 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 2, !dbg !146
  store i32 0, i32* %10, align 8, !dbg !146
  %11 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %6, i32 0, i32 3, !dbg !146
  store i8* null, i8** %11, align 8, !dbg !146
  %12 = call i32 @ssl3_cbc_remove_padding(%struct.ssl_st* %5, %struct.ssl3_record_st* %6, i32 %2, i32 %3), !dbg !147
  ret i32 %12, !dbg !148
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @remove_padding_wrapper_t() #0 !dbg !149 {
  %1 = call i8* (...) @getchar(), !dbg !152
  call void @llvm.dbg.value(metadata i8* %1, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 64, metadata !155, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 32, metadata !156, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 128, metadata !157, metadata !DIExpression()), !dbg !154
  %2 = call i32 @tmp(i8* %1, i32 64, i32 32, i32 128), !dbg !158
  ret i32 %2, !dbg !159
}

declare dso_local i8* @getchar(...) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_lt(i32 %0, i32 %1) #0 !dbg !160 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 %1, metadata !163, metadata !DIExpression()), !dbg !162
  %3 = xor i32 %0, %1, !dbg !164
  %4 = sub i32 %0, %1, !dbg !165
  %5 = xor i32 %4, %1, !dbg !166
  %6 = or i32 %3, %5, !dbg !167
  %7 = xor i32 %0, %6, !dbg !168
  %8 = call i32 @constant_time_msb(i32 %7), !dbg !169
  ret i32 %8, !dbg !170
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_msb(i32 %0) #0 !dbg !171 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !174, metadata !DIExpression()), !dbg !175
  %2 = lshr i32 %0, 31, !dbg !176
  %3 = sub i32 0, %2, !dbg !177
  ret i32 %3, !dbg !178
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @constant_time_select(i32 %0, i32 %1, i32 %2) #0 !dbg !179 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i32 %1, metadata !184, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i32 %2, metadata !185, metadata !DIExpression()), !dbg !183
  %4 = and i32 %0, %1, !dbg !186
  %5 = xor i32 %0, -1, !dbg !187
  %6 = and i32 %5, %2, !dbg !188
  %7 = or i32 %4, %6, !dbg !189
  ret i32 %7, !dbg !190
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

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
!59 = !DILocalVariable(name: "rec", arg: 2, scope: !10, file: !11, line: 53, type: !48)
!60 = !DILocalVariable(name: "block_size", arg: 3, scope: !10, file: !11, line: 54, type: !5)
!61 = !DILocalVariable(name: "mac_size", arg: 4, scope: !10, file: !11, line: 54, type: !5)
!62 = !DILocation(line: 57, column: 60, scope: !10)
!63 = !DILocalVariable(name: "overhead", scope: !10, file: !11, line: 57, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!65 = !DILocation(line: 62, column: 25, scope: !66)
!66 = distinct !DILexicalBlock(scope: !10, file: !11, line: 62, column: 9)
!67 = !DILocation(line: 62, column: 18, scope: !66)
!68 = !DILocation(line: 62, column: 9, scope: !10)
!69 = !DILocation(line: 63, column: 9, scope: !66)
!70 = !DILocation(line: 65, column: 27, scope: !10)
!71 = !DILocation(line: 65, column: 37, scope: !10)
!72 = !DILocation(line: 65, column: 44, scope: !10)
!73 = !DILocation(line: 65, column: 22, scope: !10)
!74 = !DILocalVariable(name: "padding_length", scope: !10, file: !11, line: 56, type: !5)
!75 = !DILocation(line: 66, column: 34, scope: !10)
!76 = !DILocation(line: 66, column: 57, scope: !10)
!77 = !DILocation(line: 66, column: 12, scope: !10)
!78 = !DILocalVariable(name: "good", scope: !10, file: !11, line: 56, type: !5)
!79 = !DILocation(line: 68, column: 57, scope: !10)
!80 = !DILocation(line: 68, column: 13, scope: !10)
!81 = !DILocation(line: 68, column: 10, scope: !10)
!82 = !DILocation(line: 69, column: 45, scope: !10)
!83 = !DILocation(line: 69, column: 27, scope: !10)
!84 = !DILocation(line: 70, column: 10, scope: !10)
!85 = !DILocation(line: 70, column: 17, scope: !10)
!86 = !DILocation(line: 71, column: 33, scope: !10)
!87 = !DILocation(line: 71, column: 10, scope: !10)
!88 = !DILocation(line: 71, column: 15, scope: !10)
!89 = !DILocation(line: 72, column: 12, scope: !10)
!90 = !DILocation(line: 72, column: 5, scope: !10)
!91 = !DILocation(line: 73, column: 1, scope: !10)
!92 = distinct !DISubprogram(name: "constant_time_ge", scope: !93, file: !93, line: 148, type: !94, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!93 = !DIFile(filename: "./../constant_time_locl.h", directory: "/home/luwei/bech-back/OpenSSL/ssl3_cbc")
!94 = !DISubroutineType(types: !95)
!95 = !{!5, !5, !5}
!96 = !DILocalVariable(name: "a", arg: 1, scope: !92, file: !93, line: 148, type: !5)
!97 = !DILocation(line: 0, scope: !92)
!98 = !DILocalVariable(name: "b", arg: 2, scope: !92, file: !93, line: 148, type: !5)
!99 = !DILocation(line: 150, column: 13, scope: !92)
!100 = !DILocation(line: 150, column: 12, scope: !92)
!101 = !DILocation(line: 150, column: 5, scope: !92)
!102 = distinct !DISubprogram(name: "constant_time_select_int", scope: !93, file: !93, line: 202, type: !103, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!103 = !DISubroutineType(types: !104)
!104 = !{!4, !5, !4, !4}
!105 = !DILocalVariable(name: "mask", arg: 1, scope: !102, file: !93, line: 202, type: !5)
!106 = !DILocation(line: 0, scope: !102)
!107 = !DILocalVariable(name: "a", arg: 2, scope: !102, file: !93, line: 202, type: !4)
!108 = !DILocalVariable(name: "b", arg: 3, scope: !102, file: !93, line: 202, type: !4)
!109 = !DILocation(line: 204, column: 18, scope: !102)
!110 = !DILocation(line: 204, column: 5, scope: !102)
!111 = distinct !DISubprogram(name: "remove_padding_wrapper", scope: !1, file: !1, line: 7, type: !112, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!112 = !DISubroutineType(types: !113)
!113 = !{!4, !54, !5, !5, !5}
!114 = !DILocalVariable(name: "data", arg: 1, scope: !111, file: !1, line: 7, type: !54)
!115 = !DILocation(line: 0, scope: !111)
!116 = !DILocalVariable(name: "length", arg: 2, scope: !111, file: !1, line: 8, type: !5)
!117 = !DILocalVariable(name: "block_size", arg: 3, scope: !111, file: !1, line: 9, type: !5)
!118 = !DILocalVariable(name: "mac_size", arg: 4, scope: !111, file: !1, line: 10, type: !5)
!119 = !DILocation(line: 13, column: 13, scope: !111)
!120 = !DILocation(line: 13, column: 3, scope: !111)
!121 = !DILocation(line: 16, column: 13, scope: !111)
!122 = !DILocation(line: 16, column: 3, scope: !111)
!123 = !DILocation(line: 17, column: 13, scope: !111)
!124 = !DILocation(line: 17, column: 3, scope: !111)
!125 = !DILocation(line: 18, column: 13, scope: !111)
!126 = !DILocation(line: 18, column: 3, scope: !111)
!127 = !DILocalVariable(name: "s_obj", scope: !111, file: !1, line: 21, type: !16)
!128 = !DILocation(line: 21, column: 7, scope: !111)
!129 = !DILocalVariable(name: "s", scope: !111, file: !1, line: 22, type: !14)
!130 = !DILocalVariable(name: "rec_obj", scope: !111, file: !1, line: 25, type: !49)
!131 = !DILocation(line: 25, column: 15, scope: !111)
!132 = !DILocation(line: 25, column: 25, scope: !111)
!133 = !DILocation(line: 27, column: 10, scope: !111)
!134 = !DILocation(line: 27, column: 3, scope: !111)
!135 = distinct !DISubprogram(name: "tmp", scope: !1, file: !1, line: 30, type: !112, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DILocalVariable(name: "data", arg: 1, scope: !135, file: !1, line: 30, type: !54)
!137 = !DILocation(line: 0, scope: !135)
!138 = !DILocalVariable(name: "length", arg: 2, scope: !135, file: !1, line: 31, type: !5)
!139 = !DILocalVariable(name: "block_size", arg: 3, scope: !135, file: !1, line: 32, type: !5)
!140 = !DILocalVariable(name: "mac_size", arg: 4, scope: !135, file: !1, line: 33, type: !5)
!141 = !DILocalVariable(name: "s_obj", scope: !135, file: !1, line: 36, type: !16)
!142 = !DILocation(line: 36, column: 7, scope: !135)
!143 = !DILocalVariable(name: "s", scope: !135, file: !1, line: 37, type: !14)
!144 = !DILocalVariable(name: "rec_obj", scope: !135, file: !1, line: 40, type: !49)
!145 = !DILocation(line: 40, column: 15, scope: !135)
!146 = !DILocation(line: 40, column: 25, scope: !135)
!147 = !DILocation(line: 41, column: 10, scope: !135)
!148 = !DILocation(line: 41, column: 3, scope: !135)
!149 = distinct !DISubprogram(name: "remove_padding_wrapper_t", scope: !1, file: !1, line: 46, type: !150, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!150 = !DISubroutineType(types: !151)
!151 = !{!4}
!152 = !DILocation(line: 48, column: 25, scope: !149)
!153 = !DILocalVariable(name: "data", scope: !149, file: !1, line: 48, type: !54)
!154 = !DILocation(line: 0, scope: !149)
!155 = !DILocalVariable(name: "length", scope: !149, file: !1, line: 49, type: !5)
!156 = !DILocalVariable(name: "block_size", scope: !149, file: !1, line: 50, type: !5)
!157 = !DILocalVariable(name: "mac_size", scope: !149, file: !1, line: 51, type: !5)
!158 = !DILocation(line: 54, column: 10, scope: !149)
!159 = !DILocation(line: 54, column: 3, scope: !149)
!160 = distinct !DISubprogram(name: "constant_time_lt", scope: !93, file: !93, line: 138, type: !94, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!161 = !DILocalVariable(name: "a", arg: 1, scope: !160, file: !93, line: 138, type: !5)
!162 = !DILocation(line: 0, scope: !160)
!163 = !DILocalVariable(name: "b", arg: 2, scope: !160, file: !93, line: 138, type: !5)
!164 = !DILocation(line: 140, column: 38, scope: !160)
!165 = !DILocation(line: 140, column: 49, scope: !160)
!166 = !DILocation(line: 140, column: 54, scope: !160)
!167 = !DILocation(line: 140, column: 43, scope: !160)
!168 = !DILocation(line: 140, column: 32, scope: !160)
!169 = !DILocation(line: 140, column: 12, scope: !160)
!170 = !DILocation(line: 140, column: 5, scope: !160)
!171 = distinct !DISubprogram(name: "constant_time_msb", scope: !93, file: !93, line: 133, type: !172, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!172 = !DISubroutineType(types: !173)
!173 = !{!5, !5}
!174 = !DILocalVariable(name: "a", arg: 1, scope: !171, file: !93, line: 133, type: !5)
!175 = !DILocation(line: 0, scope: !171)
!176 = !DILocation(line: 135, column: 19, scope: !171)
!177 = !DILocation(line: 135, column: 14, scope: !171)
!178 = !DILocation(line: 135, column: 5, scope: !171)
!179 = distinct !DISubprogram(name: "constant_time_select", scope: !93, file: !93, line: 188, type: !180, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!180 = !DISubroutineType(types: !181)
!181 = !{!5, !5, !5, !5}
!182 = !DILocalVariable(name: "mask", arg: 1, scope: !179, file: !93, line: 188, type: !5)
!183 = !DILocation(line: 0, scope: !179)
!184 = !DILocalVariable(name: "a", arg: 2, scope: !179, file: !93, line: 189, type: !5)
!185 = !DILocalVariable(name: "b", arg: 3, scope: !179, file: !93, line: 190, type: !5)
!186 = !DILocation(line: 192, column: 18, scope: !179)
!187 = !DILocation(line: 192, column: 26, scope: !179)
!188 = !DILocation(line: 192, column: 32, scope: !179)
!189 = !DILocation(line: 192, column: 23, scope: !179)
!190 = !DILocation(line: 192, column: 5, scope: !179)
