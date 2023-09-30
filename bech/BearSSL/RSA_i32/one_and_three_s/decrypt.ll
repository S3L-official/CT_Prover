; ModuleID = 'decrypt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_rsa_private_key = type { i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64 }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ccopy(i32 %0, i8* %1, i8* %2, i64 %3) #0 !dbg !58 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i8* %1, metadata !66, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i8* %2, metadata !67, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i64 %3, metadata !68, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i8* %1, metadata !69, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i8* %2, metadata !70, metadata !DIExpression()), !dbg !65
  br label %5, !dbg !73

5:                                                ; preds = %8, %4
  %.02 = phi i64 [ %3, %4 ], [ %6, %8 ]
  %.01 = phi i8* [ %1, %4 ], [ %16, %8 ], !dbg !65
  %.0 = phi i8* [ %2, %4 ], [ %9, %8 ], !dbg !65
  call void @llvm.dbg.value(metadata i8* %.0, metadata !70, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i8* %.01, metadata !69, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i64 %.02, metadata !68, metadata !DIExpression()), !dbg !65
  %6 = add i64 %.02, -1, !dbg !74
  call void @llvm.dbg.value(metadata i64 %6, metadata !68, metadata !DIExpression()), !dbg !65
  %7 = icmp ugt i64 %.02, 0, !dbg !75
  br i1 %7, label %8, label %17, !dbg !73

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !76
  call void @llvm.dbg.value(metadata i8* %9, metadata !70, metadata !DIExpression()), !dbg !65
  %10 = load i8, i8* %.0, align 1, !dbg !78
  %11 = zext i8 %10 to i32, !dbg !78
  call void @llvm.dbg.value(metadata i32 %11, metadata !79, metadata !DIExpression()), !dbg !80
  %12 = load i8, i8* %.01, align 1, !dbg !81
  %13 = zext i8 %12 to i32, !dbg !81
  call void @llvm.dbg.value(metadata i32 %13, metadata !82, metadata !DIExpression()), !dbg !80
  %14 = call i32 @MUX(i32 %0, i32 %11, i32 %13), !dbg !83
  %15 = trunc i32 %14 to i8, !dbg !83
  store i8 %15, i8* %.01, align 1, !dbg !84
  %16 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !85
  call void @llvm.dbg.value(metadata i8* %16, metadata !69, metadata !DIExpression()), !dbg !65
  br label %5, !dbg !73, !llvm.loop !86

17:                                               ; preds = %5
  ret void, !dbg !89
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !90 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i32 %1, metadata !96, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i32 %2, metadata !97, metadata !DIExpression()), !dbg !95
  %4 = sub i32 0, %0, !dbg !98
  %5 = xor i32 %1, %2, !dbg !99
  %6 = and i32 %4, %5, !dbg !100
  %7 = xor i32 %2, %6, !dbg !101
  ret i32 %7, !dbg !102
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @decrypt_wrapper(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !125, metadata !DIExpression()), !dbg !124
  %3 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !126
  call void @public_in(%struct.smack_value* %3), !dbg !127
  %4 = call %struct.smack_value* (%struct.br_rsa_private_key*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_rsa_private_key*, ...)*)(%struct.br_rsa_private_key* %1), !dbg !128
  call void @public_in(%struct.smack_value* %4), !dbg !129
  %5 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !130
  %6 = load i8*, i8** %5, align 8, !dbg !130
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !131
  call void @public_in(%struct.smack_value* %7), !dbg !132
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !133
  %9 = load i8*, i8** %8, align 8, !dbg !133
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %9), !dbg !134
  call void @public_in(%struct.smack_value* %10), !dbg !135
  %11 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !136
  %12 = load i8*, i8** %11, align 8, !dbg !136
  %13 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %12), !dbg !137
  call void @public_in(%struct.smack_value* %13), !dbg !138
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !139
  %15 = load i8*, i8** %14, align 8, !dbg !139
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %15), !dbg !140
  call void @public_in(%struct.smack_value* %16), !dbg !141
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !142
  %18 = load i8*, i8** %17, align 8, !dbg !142
  %19 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %18), !dbg !143
  call void @public_in(%struct.smack_value* %19), !dbg !144
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !145
  %21 = load i64, i64* %20, align 8, !dbg !145
  %22 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %21), !dbg !146
  call void @public_in(%struct.smack_value* %22), !dbg !147
  %23 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !148
  %24 = load i64, i64* %23, align 8, !dbg !148
  %25 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %24), !dbg !149
  call void @public_in(%struct.smack_value* %25), !dbg !150
  %26 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !151
  %27 = load i64, i64* %26, align 8, !dbg !151
  %28 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %27), !dbg !152
  call void @public_in(%struct.smack_value* %28), !dbg !153
  %29 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !154
  %30 = load i64, i64* %29, align 8, !dbg !154
  %31 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %30), !dbg !155
  call void @public_in(%struct.smack_value* %31), !dbg !156
  %32 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !157
  %33 = load i64, i64* %32, align 8, !dbg !157
  %34 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %33), !dbg !158
  call void @public_in(%struct.smack_value* %34), !dbg !159
  %35 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !160
  %36 = load i32, i32* %35, align 8, !dbg !160
  %37 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %36), !dbg !161
  call void @public_in(%struct.smack_value* %37), !dbg !162
  %38 = call i32 @br_rsa_i32_private(i8* %0, %struct.br_rsa_private_key* %1), !dbg !163
  ret void, !dbg !164
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @decrypt_wrapper_t() #0 !dbg !165 {
  %1 = alloca i8, align 1
  %2 = alloca %struct.br_rsa_private_key, align 8
  call void @llvm.dbg.declare(metadata i8* %1, metadata !168, metadata !DIExpression()), !dbg !169
  %3 = call zeroext i8 (...) @getcharpt(), !dbg !170
  store i8 %3, i8* %1, align 1, !dbg !169
  call void @llvm.dbg.value(metadata i8* %1, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata %struct.br_rsa_private_key* %2, metadata !173, metadata !DIExpression()), !dbg !174
  call void (%struct.br_rsa_private_key*, ...) @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8 %2), !dbg !175
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %2, metadata !176, metadata !DIExpression()), !dbg !172
  %4 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 1, !dbg !178
  %5 = load i8*, i8** %4, align 8, !dbg !178
  call void @llvm.dbg.value(metadata i8* %5, metadata !179, metadata !DIExpression()), !dbg !172
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 3, !dbg !180
  %7 = load i8*, i8** %6, align 8, !dbg !180
  call void @llvm.dbg.value(metadata i8* %7, metadata !181, metadata !DIExpression()), !dbg !172
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 5, !dbg !182
  %9 = load i8*, i8** %8, align 8, !dbg !182
  call void @llvm.dbg.value(metadata i8* %9, metadata !183, metadata !DIExpression()), !dbg !172
  %10 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 7, !dbg !184
  %11 = load i8*, i8** %10, align 8, !dbg !184
  call void @llvm.dbg.value(metadata i8* %11, metadata !185, metadata !DIExpression()), !dbg !172
  %12 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 9, !dbg !186
  %13 = load i8*, i8** %12, align 8, !dbg !186
  call void @llvm.dbg.value(metadata i8* %13, metadata !187, metadata !DIExpression()), !dbg !172
  call void @vfct_taintseed(i8* %5, i8* %7, i8* %9, i8* %11, i8* %13), !dbg !188
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 1, !dbg !189
  store i8* %5, i8** %14, align 8, !dbg !190
  %15 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 3, !dbg !191
  store i8* %7, i8** %15, align 8, !dbg !192
  %16 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 5, !dbg !193
  store i8* %9, i8** %16, align 8, !dbg !194
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 7, !dbg !195
  store i8* %11, i8** %17, align 8, !dbg !196
  %18 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 9, !dbg !197
  store i8* %13, i8** %18, align 8, !dbg !198
  %19 = call i32 @br_rsa_i32_private(i8* %1, %struct.br_rsa_private_key* %2), !dbg !199
  ret void, !dbg !200
}

declare dso_local zeroext i8 @getcharpt(...) #2

declare dso_local void @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8, ...) #2

declare dso_local void @vfct_taintseed(i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i32_add(i32* %0, i32* %1, i32 %2) #0 !dbg !201 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i32* %1, metadata !209, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i32 %2, metadata !210, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i32 0, metadata !211, metadata !DIExpression()), !dbg !208
  %4 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !212
  %5 = load i32, i32* %4, align 4, !dbg !212
  %6 = add i32 %5, 63, !dbg !213
  %7 = lshr i32 %6, 5, !dbg !214
  %8 = zext i32 %7 to i64, !dbg !215
  call void @llvm.dbg.value(metadata i64 %8, metadata !216, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i64 1, metadata !217, metadata !DIExpression()), !dbg !208
  br label %9, !dbg !218

9:                                                ; preds = %24, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %24 ], !dbg !208
  %.0 = phi i64 [ 1, %3 ], [ %25, %24 ], !dbg !220
  call void @llvm.dbg.value(metadata i64 %.0, metadata !217, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i32 %.01, metadata !211, metadata !DIExpression()), !dbg !208
  %10 = icmp ult i64 %.0, %8, !dbg !221
  br i1 %10, label %11, label %26, !dbg !223

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !224
  %13 = load i32, i32* %12, align 4, !dbg !224
  call void @llvm.dbg.value(metadata i32 %13, metadata !226, metadata !DIExpression()), !dbg !227
  %14 = getelementptr inbounds i32, i32* %1, i64 %.0, !dbg !228
  %15 = load i32, i32* %14, align 4, !dbg !228
  call void @llvm.dbg.value(metadata i32 %15, metadata !229, metadata !DIExpression()), !dbg !227
  %16 = add i32 %13, %15, !dbg !230
  %17 = add i32 %16, %.01, !dbg !231
  call void @llvm.dbg.value(metadata i32 %17, metadata !232, metadata !DIExpression()), !dbg !227
  %18 = call i32 @EQ(i32 %17, i32 %13), !dbg !233
  %19 = and i32 %.01, %18, !dbg !234
  %20 = call i32 @GT(i32 %13, i32 %17), !dbg !235
  %21 = or i32 %19, %20, !dbg !236
  call void @llvm.dbg.value(metadata i32 %21, metadata !211, metadata !DIExpression()), !dbg !208
  %22 = call i32 @MUX.1(i32 %2, i32 %17, i32 %13), !dbg !237
  %23 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !238
  store i32 %22, i32* %23, align 4, !dbg !239
  br label %24, !dbg !240

24:                                               ; preds = %11
  %25 = add i64 %.0, 1, !dbg !241
  call void @llvm.dbg.value(metadata i64 %25, metadata !217, metadata !DIExpression()), !dbg !208
  br label %9, !dbg !242, !llvm.loop !243

26:                                               ; preds = %9
  ret i32 %.01, !dbg !245
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !246 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i32 %1, metadata !251, metadata !DIExpression()), !dbg !250
  %3 = xor i32 %0, %1, !dbg !252
  call void @llvm.dbg.value(metadata i32 %3, metadata !253, metadata !DIExpression()), !dbg !250
  %4 = sub i32 0, %3, !dbg !254
  %5 = or i32 %3, %4, !dbg !255
  %6 = lshr i32 %5, 31, !dbg !256
  %7 = call i32 @NOT(i32 %6), !dbg !257
  ret i32 %7, !dbg !258
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !259 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 %1, metadata !262, metadata !DIExpression()), !dbg !261
  %3 = sub i32 %1, %0, !dbg !263
  call void @llvm.dbg.value(metadata i32 %3, metadata !264, metadata !DIExpression()), !dbg !261
  %4 = xor i32 %0, %1, !dbg !265
  %5 = xor i32 %0, %3, !dbg !266
  %6 = and i32 %4, %5, !dbg !267
  %7 = xor i32 %3, %6, !dbg !268
  %8 = lshr i32 %7, 31, !dbg !269
  ret i32 %8, !dbg !270
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.1(i32 %0, i32 %1, i32 %2) #0 !dbg !271 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 %2, metadata !275, metadata !DIExpression()), !dbg !273
  %4 = sub i32 0, %0, !dbg !276
  %5 = xor i32 %1, %2, !dbg !277
  %6 = and i32 %4, %5, !dbg !278
  %7 = xor i32 %2, %6, !dbg !279
  ret i32 %7, !dbg !280
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !281 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !284, metadata !DIExpression()), !dbg !285
  %2 = xor i32 %0, 1, !dbg !286
  ret i32 %2, !dbg !287
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i32_bit_length(i32* %0, i64 %1) #0 !dbg !288 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 %1, metadata !293, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 0, metadata !294, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 0, metadata !295, metadata !DIExpression()), !dbg !292
  br label %3, !dbg !296

3:                                                ; preds = %6, %2
  %.02 = phi i32 [ 0, %2 ], [ %10, %6 ], !dbg !292
  %.01 = phi i64 [ %1, %2 ], [ %4, %6 ]
  %.0 = phi i32 [ 0, %2 ], [ %12, %6 ], !dbg !292
  call void @llvm.dbg.value(metadata i32 %.0, metadata !295, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 %.01, metadata !293, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %.02, metadata !294, metadata !DIExpression()), !dbg !292
  %4 = add i64 %.01, -1, !dbg !297
  call void @llvm.dbg.value(metadata i64 %4, metadata !293, metadata !DIExpression()), !dbg !292
  %5 = icmp ugt i64 %.01, 0, !dbg !298
  br i1 %5, label %6, label %13, !dbg !296

6:                                                ; preds = %3
  %7 = call i32 @EQ.2(i32 %.02, i32 0), !dbg !299
  call void @llvm.dbg.value(metadata i32 %7, metadata !301, metadata !DIExpression()), !dbg !302
  %8 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !303
  %9 = load i32, i32* %8, align 4, !dbg !303
  call void @llvm.dbg.value(metadata i32 %9, metadata !304, metadata !DIExpression()), !dbg !302
  %10 = call i32 @MUX.3(i32 %7, i32 %9, i32 %.02), !dbg !305
  call void @llvm.dbg.value(metadata i32 %10, metadata !294, metadata !DIExpression()), !dbg !292
  %11 = trunc i64 %4 to i32, !dbg !306
  %12 = call i32 @MUX.3(i32 %7, i32 %11, i32 %.0), !dbg !307
  call void @llvm.dbg.value(metadata i32 %12, metadata !295, metadata !DIExpression()), !dbg !292
  br label %3, !dbg !296, !llvm.loop !308

13:                                               ; preds = %3
  %14 = shl i32 %.0, 5, !dbg !310
  %15 = call i32 @BIT_LENGTH(i32 %.02), !dbg !311
  %16 = add i32 %14, %15, !dbg !312
  ret i32 %16, !dbg !313
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.2(i32 %0, i32 %1) #0 !dbg !314 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !315, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32 %1, metadata !317, metadata !DIExpression()), !dbg !316
  %3 = xor i32 %0, %1, !dbg !318
  call void @llvm.dbg.value(metadata i32 %3, metadata !319, metadata !DIExpression()), !dbg !316
  %4 = sub i32 0, %3, !dbg !320
  %5 = or i32 %3, %4, !dbg !321
  %6 = lshr i32 %5, 31, !dbg !322
  %7 = call i32 @NOT.5(i32 %6), !dbg !323
  ret i32 %7, !dbg !324
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.3(i32 %0, i32 %1, i32 %2) #0 !dbg !325 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 %1, metadata !328, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 %2, metadata !329, metadata !DIExpression()), !dbg !327
  %4 = sub i32 0, %0, !dbg !330
  %5 = xor i32 %1, %2, !dbg !331
  %6 = and i32 %4, %5, !dbg !332
  %7 = xor i32 %2, %6, !dbg !333
  ret i32 %7, !dbg !334
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @BIT_LENGTH(i32 %0) #0 !dbg !335 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !336, metadata !DIExpression()), !dbg !337
  %2 = call i32 @NEQ(i32 %0, i32 0), !dbg !338
  call void @llvm.dbg.value(metadata i32 %2, metadata !339, metadata !DIExpression()), !dbg !337
  %3 = call i32 @GT.4(i32 %0, i32 65535), !dbg !340
  call void @llvm.dbg.value(metadata i32 %3, metadata !341, metadata !DIExpression()), !dbg !337
  %4 = lshr i32 %0, 16, !dbg !342
  %5 = call i32 @MUX.3(i32 %3, i32 %4, i32 %0), !dbg !343
  call void @llvm.dbg.value(metadata i32 %5, metadata !336, metadata !DIExpression()), !dbg !337
  %6 = shl i32 %3, 4, !dbg !344
  %7 = add i32 %2, %6, !dbg !345
  call void @llvm.dbg.value(metadata i32 %7, metadata !339, metadata !DIExpression()), !dbg !337
  %8 = call i32 @GT.4(i32 %5, i32 255), !dbg !346
  call void @llvm.dbg.value(metadata i32 %8, metadata !341, metadata !DIExpression()), !dbg !337
  %9 = lshr i32 %5, 8, !dbg !347
  %10 = call i32 @MUX.3(i32 %8, i32 %9, i32 %5), !dbg !348
  call void @llvm.dbg.value(metadata i32 %10, metadata !336, metadata !DIExpression()), !dbg !337
  %11 = shl i32 %8, 3, !dbg !349
  %12 = add i32 %7, %11, !dbg !350
  call void @llvm.dbg.value(metadata i32 %12, metadata !339, metadata !DIExpression()), !dbg !337
  %13 = call i32 @GT.4(i32 %10, i32 15), !dbg !351
  call void @llvm.dbg.value(metadata i32 %13, metadata !341, metadata !DIExpression()), !dbg !337
  %14 = lshr i32 %10, 4, !dbg !352
  %15 = call i32 @MUX.3(i32 %13, i32 %14, i32 %10), !dbg !353
  call void @llvm.dbg.value(metadata i32 %15, metadata !336, metadata !DIExpression()), !dbg !337
  %16 = shl i32 %13, 2, !dbg !354
  %17 = add i32 %12, %16, !dbg !355
  call void @llvm.dbg.value(metadata i32 %17, metadata !339, metadata !DIExpression()), !dbg !337
  %18 = call i32 @GT.4(i32 %15, i32 3), !dbg !356
  call void @llvm.dbg.value(metadata i32 %18, metadata !341, metadata !DIExpression()), !dbg !337
  %19 = lshr i32 %15, 2, !dbg !357
  %20 = call i32 @MUX.3(i32 %18, i32 %19, i32 %15), !dbg !358
  call void @llvm.dbg.value(metadata i32 %20, metadata !336, metadata !DIExpression()), !dbg !337
  %21 = shl i32 %18, 1, !dbg !359
  %22 = add i32 %17, %21, !dbg !360
  call void @llvm.dbg.value(metadata i32 %22, metadata !339, metadata !DIExpression()), !dbg !337
  %23 = call i32 @GT.4(i32 %20, i32 1), !dbg !361
  %24 = add i32 %22, %23, !dbg !362
  call void @llvm.dbg.value(metadata i32 %24, metadata !339, metadata !DIExpression()), !dbg !337
  ret i32 %24, !dbg !363
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !364 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 %1, metadata !367, metadata !DIExpression()), !dbg !366
  %3 = xor i32 %0, %1, !dbg !368
  call void @llvm.dbg.value(metadata i32 %3, metadata !369, metadata !DIExpression()), !dbg !366
  %4 = sub i32 0, %3, !dbg !370
  %5 = or i32 %3, %4, !dbg !371
  %6 = lshr i32 %5, 31, !dbg !372
  ret i32 %6, !dbg !373
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.4(i32 %0, i32 %1) #0 !dbg !374 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 %1, metadata !377, metadata !DIExpression()), !dbg !376
  %3 = sub i32 %1, %0, !dbg !378
  call void @llvm.dbg.value(metadata i32 %3, metadata !379, metadata !DIExpression()), !dbg !376
  %4 = xor i32 %0, %1, !dbg !380
  %5 = xor i32 %0, %3, !dbg !381
  %6 = and i32 %4, %5, !dbg !382
  %7 = xor i32 %3, %6, !dbg !383
  %8 = lshr i32 %7, 31, !dbg !384
  ret i32 %8, !dbg !385
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.5(i32 %0) #0 !dbg !386 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !387, metadata !DIExpression()), !dbg !388
  %2 = xor i32 %0, 1, !dbg !389
  ret i32 %2, !dbg !390
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_decode(i32* %0, i8* %1, i64 %2) #0 !dbg !391 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i8* %1, metadata !396, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i64 %2, metadata !397, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i8* %1, metadata !398, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i64 %2, metadata !399, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i64 1, metadata !400, metadata !DIExpression()), !dbg !395
  br label %4, !dbg !401

4:                                                ; preds = %38, %3
  %.02 = phi i64 [ %2, %3 ], [ %33, %38 ], !dbg !395
  %.01 = phi i64 [ 1, %3 ], [ %36, %38 ], !dbg !395
  call void @llvm.dbg.value(metadata i64 %.01, metadata !400, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i64 %.02, metadata !399, metadata !DIExpression()), !dbg !395
  %5 = icmp ult i64 %.02, 4, !dbg !402
  br i1 %5, label %6, label %32, !dbg !407

6:                                                ; preds = %4
  %7 = icmp ult i64 %.02, 2, !dbg !408
  br i1 %7, label %8, label %16, !dbg !411

8:                                                ; preds = %6
  %9 = icmp eq i64 %.02, 0, !dbg !412
  br i1 %9, label %10, label %11, !dbg !415

10:                                               ; preds = %8
  br label %39, !dbg !416

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !418
  %13 = load i8, i8* %12, align 1, !dbg !418
  %14 = zext i8 %13 to i32, !dbg !418
  call void @llvm.dbg.value(metadata i32 %14, metadata !420, metadata !DIExpression()), !dbg !421
  br label %15

15:                                               ; preds = %11
  br label %29, !dbg !422

16:                                               ; preds = %6
  %17 = icmp eq i64 %.02, 2, !dbg !423
  br i1 %17, label %18, label %20, !dbg !426

18:                                               ; preds = %16
  %19 = call i32 @br_dec16be(i8* %1), !dbg !427
  call void @llvm.dbg.value(metadata i32 %19, metadata !420, metadata !DIExpression()), !dbg !421
  br label %28, !dbg !429

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !430
  %22 = load i8, i8* %21, align 1, !dbg !430
  %23 = zext i8 %22 to i32, !dbg !432
  %24 = shl i32 %23, 16, !dbg !433
  %25 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !434
  %26 = call i32 @br_dec16be(i8* %25), !dbg !435
  %27 = or i32 %24, %26, !dbg !436
  call void @llvm.dbg.value(metadata i32 %27, metadata !420, metadata !DIExpression()), !dbg !421
  br label %28

28:                                               ; preds = %20, %18
  %.0 = phi i32 [ %19, %18 ], [ %27, %20 ], !dbg !437
  call void @llvm.dbg.value(metadata i32 %.0, metadata !420, metadata !DIExpression()), !dbg !421
  br label %29

29:                                               ; preds = %28, %15
  %.1 = phi i32 [ %14, %15 ], [ %.0, %28 ], !dbg !438
  call void @llvm.dbg.value(metadata i32 %.1, metadata !420, metadata !DIExpression()), !dbg !421
  %30 = add i64 %.01, 1, !dbg !439
  call void @llvm.dbg.value(metadata i64 %30, metadata !400, metadata !DIExpression()), !dbg !395
  %31 = getelementptr inbounds i32, i32* %0, i64 %.01, !dbg !440
  store i32 %.1, i32* %31, align 4, !dbg !441
  br label %39, !dbg !442

32:                                               ; preds = %4
  %33 = sub i64 %.02, 4, !dbg !443
  call void @llvm.dbg.value(metadata i64 %33, metadata !399, metadata !DIExpression()), !dbg !395
  %34 = getelementptr inbounds i8, i8* %1, i64 %33, !dbg !445
  %35 = call i32 @br_dec32be(i8* %34), !dbg !446
  %36 = add i64 %.01, 1, !dbg !447
  call void @llvm.dbg.value(metadata i64 %36, metadata !400, metadata !DIExpression()), !dbg !395
  %37 = getelementptr inbounds i32, i32* %0, i64 %.01, !dbg !448
  store i32 %35, i32* %37, align 4, !dbg !449
  br label %38

38:                                               ; preds = %32
  br label %4, !dbg !450, !llvm.loop !451

39:                                               ; preds = %29, %10
  %40 = udiv i64 %2, 4, !dbg !454
  %41 = shl i64 %40, 37, !dbg !455
  %42 = trunc i64 %41 to i32, !dbg !456
  %43 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !457
  store i32 %42, i32* %43, align 4, !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec16be(i8* %0) #0 !dbg !460 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i8* %0, metadata !465, metadata !DIExpression()), !dbg !464
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !466
  %3 = load i8, i8* %2, align 1, !dbg !466
  %4 = zext i8 %3 to i32, !dbg !467
  %5 = shl i32 %4, 8, !dbg !468
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !469
  %7 = load i8, i8* %6, align 1, !dbg !469
  %8 = zext i8 %7 to i32, !dbg !470
  %9 = or i32 %5, %8, !dbg !471
  ret i32 %9, !dbg !472
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !473 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !476, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i8* %0, metadata !478, metadata !DIExpression()), !dbg !477
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !479
  %3 = load i8, i8* %2, align 1, !dbg !479
  %4 = zext i8 %3 to i32, !dbg !480
  %5 = shl i32 %4, 24, !dbg !481
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !482
  %7 = load i8, i8* %6, align 1, !dbg !482
  %8 = zext i8 %7 to i32, !dbg !483
  %9 = shl i32 %8, 16, !dbg !484
  %10 = or i32 %5, %9, !dbg !485
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !486
  %12 = load i8, i8* %11, align 1, !dbg !486
  %13 = zext i8 %12 to i32, !dbg !487
  %14 = shl i32 %13, 8, !dbg !488
  %15 = or i32 %10, %14, !dbg !489
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !490
  %17 = load i8, i8* %16, align 1, !dbg !490
  %18 = zext i8 %17 to i32, !dbg !491
  %19 = or i32 %15, %18, !dbg !492
  ret i32 %19, !dbg !493
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_decode_reduce(i32* %0, i8* %1, i64 %2, i32* %3) #0 !dbg !494 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i8* %1, metadata !499, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i64 %2, metadata !500, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i32* %3, metadata !501, metadata !DIExpression()), !dbg !498
  %5 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !502
  %6 = load i32, i32* %5, align 4, !dbg !502
  call void @llvm.dbg.value(metadata i32 %6, metadata !503, metadata !DIExpression()), !dbg !498
  %7 = icmp eq i32 %6, 0, !dbg !504
  br i1 %7, label %8, label %10, !dbg !506

8:                                                ; preds = %4
  %9 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !507
  store i32 0, i32* %9, align 4, !dbg !509
  br label %52, !dbg !510

10:                                               ; preds = %4
  call void @br_i32_zero(i32* %0, i32 %6), !dbg !511
  %11 = add i32 %6, 7, !dbg !512
  %12 = lshr i32 %11, 3, !dbg !513
  %13 = zext i32 %12 to i64, !dbg !514
  call void @llvm.dbg.value(metadata i64 %13, metadata !515, metadata !DIExpression()), !dbg !498
  %14 = sub i64 %13, 1, !dbg !516
  call void @llvm.dbg.value(metadata i64 %14, metadata !517, metadata !DIExpression()), !dbg !498
  %15 = icmp uge i64 %14, %2, !dbg !518
  br i1 %15, label %16, label %18, !dbg !520

16:                                               ; preds = %10
  call void @br_i32_decode(i32* %0, i8* %1, i64 %2), !dbg !521
  %17 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !523
  store i32 %6, i32* %17, align 4, !dbg !524
  br label %52, !dbg !525

18:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %1, metadata !526, metadata !DIExpression()), !dbg !498
  %19 = sub i64 %2, %14, !dbg !527
  %20 = add i64 %19, 3, !dbg !528
  %21 = and i64 %20, -4, !dbg !529
  call void @llvm.dbg.value(metadata i64 %21, metadata !530, metadata !DIExpression()), !dbg !498
  %22 = icmp ugt i64 %21, %2, !dbg !531
  br i1 %22, label %23, label %40, !dbg !533

23:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 0, metadata !534, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i32 0, metadata !537, metadata !DIExpression()), !dbg !536
  br label %24, !dbg !539

24:                                               ; preds = %37, %23
  %.02 = phi i64 [ %21, %23 ], [ %36, %37 ], !dbg !498
  %.01 = phi i32 [ 0, %23 ], [ %38, %37 ], !dbg !541
  %.0 = phi i32 [ 0, %23 ], [ %.1, %37 ], !dbg !536
  call void @llvm.dbg.value(metadata i32 %.0, metadata !534, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i32 %.01, metadata !537, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i64 %.02, metadata !530, metadata !DIExpression()), !dbg !498
  %25 = icmp slt i32 %.01, 4, !dbg !542
  br i1 %25, label %26, label %39, !dbg !544

26:                                               ; preds = %24
  %27 = shl i32 %.0, 8, !dbg !545
  call void @llvm.dbg.value(metadata i32 %27, metadata !534, metadata !DIExpression()), !dbg !536
  %28 = icmp ule i64 %.02, %2, !dbg !547
  br i1 %28, label %29, label %35, !dbg !549

29:                                               ; preds = %26
  %30 = sub i64 %2, %.02, !dbg !550
  %31 = getelementptr inbounds i8, i8* %1, i64 %30, !dbg !552
  %32 = load i8, i8* %31, align 1, !dbg !552
  %33 = zext i8 %32 to i32, !dbg !552
  %34 = or i32 %27, %33, !dbg !553
  call void @llvm.dbg.value(metadata i32 %34, metadata !534, metadata !DIExpression()), !dbg !536
  br label %35, !dbg !554

35:                                               ; preds = %29, %26
  %.1 = phi i32 [ %34, %29 ], [ %27, %26 ], !dbg !555
  call void @llvm.dbg.value(metadata i32 %.1, metadata !534, metadata !DIExpression()), !dbg !536
  %36 = add i64 %.02, -1, !dbg !556
  call void @llvm.dbg.value(metadata i64 %36, metadata !530, metadata !DIExpression()), !dbg !498
  br label %37, !dbg !557

37:                                               ; preds = %35
  %38 = add nsw i32 %.01, 1, !dbg !558
  call void @llvm.dbg.value(metadata i32 %38, metadata !537, metadata !DIExpression()), !dbg !536
  br label %24, !dbg !559, !llvm.loop !560

39:                                               ; preds = %24
  call void @br_i32_muladd_small(i32* %0, i32 %.0, i32* %3), !dbg !562
  br label %43, !dbg !563

40:                                               ; preds = %18
  %41 = sub i64 %2, %21, !dbg !564
  call void @br_i32_decode(i32* %0, i8* %1, i64 %41), !dbg !566
  %42 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !567
  store i32 %6, i32* %42, align 4, !dbg !568
  br label %43

43:                                               ; preds = %40, %39
  %.13 = phi i64 [ %.02, %39 ], [ %21, %40 ], !dbg !569
  call void @llvm.dbg.value(metadata i64 %.13, metadata !530, metadata !DIExpression()), !dbg !498
  %44 = sub i64 %2, %.13, !dbg !570
  call void @llvm.dbg.value(metadata i64 %44, metadata !517, metadata !DIExpression()), !dbg !498
  br label %45, !dbg !572

45:                                               ; preds = %50, %43
  %.04 = phi i64 [ %44, %43 ], [ %51, %50 ], !dbg !573
  call void @llvm.dbg.value(metadata i64 %.04, metadata !517, metadata !DIExpression()), !dbg !498
  %46 = icmp ult i64 %.04, %2, !dbg !574
  br i1 %46, label %47, label %52, !dbg !576

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, i8* %1, i64 %.04, !dbg !577
  %49 = call i32 @br_dec32be.6(i8* %48), !dbg !579
  call void @br_i32_muladd_small(i32* %0, i32 %49, i32* %3), !dbg !580
  br label %50, !dbg !581

50:                                               ; preds = %47
  %51 = add i64 %.04, 4, !dbg !582
  call void @llvm.dbg.value(metadata i64 %51, metadata !517, metadata !DIExpression()), !dbg !498
  br label %45, !dbg !583, !llvm.loop !584

52:                                               ; preds = %45, %16, %8
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i32_zero(i32* %0, i32 %1) #0 !dbg !587 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i32 %1, metadata !592, metadata !DIExpression()), !dbg !591
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !593
  call void @llvm.dbg.value(metadata i32* %3, metadata !590, metadata !DIExpression()), !dbg !591
  store i32 %1, i32* %0, align 4, !dbg !594
  %4 = bitcast i32* %3 to i8*, !dbg !595
  %5 = add i32 %1, 31, !dbg !596
  %6 = lshr i32 %5, 5, !dbg !597
  %7 = zext i32 %6 to i64, !dbg !598
  %8 = mul i64 %7, 4, !dbg !599
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !595
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.6(i8* %0) #0 !dbg !601 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !602, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata i8* %0, metadata !604, metadata !DIExpression()), !dbg !603
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !605
  %3 = load i8, i8* %2, align 1, !dbg !605
  %4 = zext i8 %3 to i32, !dbg !606
  %5 = shl i32 %4, 24, !dbg !607
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !608
  %7 = load i8, i8* %6, align 1, !dbg !608
  %8 = zext i8 %7 to i32, !dbg !609
  %9 = shl i32 %8, 16, !dbg !610
  %10 = or i32 %5, %9, !dbg !611
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !612
  %12 = load i8, i8* %11, align 1, !dbg !612
  %13 = zext i8 %12 to i32, !dbg !613
  %14 = shl i32 %13, 8, !dbg !614
  %15 = or i32 %10, %14, !dbg !615
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !616
  %17 = load i8, i8* %16, align 1, !dbg !616
  %18 = zext i8 %17 to i32, !dbg !617
  %19 = or i32 %15, %18, !dbg !618
  ret i32 %19, !dbg !619
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_encode(i8* %0, i64 %1, i32* %2) #0 !dbg !620 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i64 %1, metadata !625, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i32* %2, metadata !626, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i8* %0, metadata !627, metadata !DIExpression()), !dbg !624
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !628
  %5 = load i32, i32* %4, align 4, !dbg !628
  %6 = add i32 %5, 7, !dbg !629
  %7 = lshr i32 %6, 3, !dbg !630
  %8 = zext i32 %7 to i64, !dbg !631
  call void @llvm.dbg.value(metadata i64 %8, metadata !632, metadata !DIExpression()), !dbg !624
  br label %9, !dbg !633

9:                                                ; preds = %11, %3
  %.02 = phi i8* [ %0, %3 ], [ %12, %11 ], !dbg !624
  %.01 = phi i64 [ %1, %3 ], [ %13, %11 ]
  call void @llvm.dbg.value(metadata i64 %.01, metadata !625, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i8* %.02, metadata !627, metadata !DIExpression()), !dbg !624
  %10 = icmp ugt i64 %.01, %8, !dbg !634
  br i1 %10, label %11, label %14, !dbg !633

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !635
  call void @llvm.dbg.value(metadata i8* %12, metadata !627, metadata !DIExpression()), !dbg !624
  store i8 0, i8* %.02, align 1, !dbg !637
  %13 = add i64 %.01, -1, !dbg !638
  call void @llvm.dbg.value(metadata i64 %13, metadata !625, metadata !DIExpression()), !dbg !624
  br label %9, !dbg !633, !llvm.loop !639

14:                                               ; preds = %9
  %15 = add i64 %.01, 3, !dbg !641
  %16 = lshr i64 %15, 2, !dbg !642
  call void @llvm.dbg.value(metadata i64 %16, metadata !632, metadata !DIExpression()), !dbg !624
  %17 = and i64 %.01, 3, !dbg !643
  switch i64 %17, label %36 [
    i64 3, label %18
    i64 2, label %24
    i64 1, label %30
  ], !dbg !644

18:                                               ; preds = %14
  %19 = getelementptr inbounds i32, i32* %2, i64 %16, !dbg !645
  %20 = load i32, i32* %19, align 4, !dbg !645
  %21 = lshr i32 %20, 16, !dbg !647
  %22 = trunc i32 %21 to i8, !dbg !645
  %23 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !648
  call void @llvm.dbg.value(metadata i8* %23, metadata !627, metadata !DIExpression()), !dbg !624
  store i8 %22, i8* %.02, align 1, !dbg !649
  br label %24, !dbg !650

24:                                               ; preds = %18, %14
  %.13 = phi i8* [ %.02, %14 ], [ %23, %18 ], !dbg !624
  call void @llvm.dbg.value(metadata i8* %.13, metadata !627, metadata !DIExpression()), !dbg !624
  %25 = getelementptr inbounds i32, i32* %2, i64 %16, !dbg !651
  %26 = load i32, i32* %25, align 4, !dbg !651
  %27 = lshr i32 %26, 8, !dbg !652
  %28 = trunc i32 %27 to i8, !dbg !651
  %29 = getelementptr inbounds i8, i8* %.13, i32 1, !dbg !653
  call void @llvm.dbg.value(metadata i8* %29, metadata !627, metadata !DIExpression()), !dbg !624
  store i8 %28, i8* %.13, align 1, !dbg !654
  br label %30, !dbg !655

30:                                               ; preds = %24, %14
  %.2 = phi i8* [ %.02, %14 ], [ %29, %24 ], !dbg !624
  call void @llvm.dbg.value(metadata i8* %.2, metadata !627, metadata !DIExpression()), !dbg !624
  %31 = getelementptr inbounds i32, i32* %2, i64 %16, !dbg !656
  %32 = load i32, i32* %31, align 4, !dbg !656
  %33 = trunc i32 %32 to i8, !dbg !656
  %34 = getelementptr inbounds i8, i8* %.2, i32 1, !dbg !657
  call void @llvm.dbg.value(metadata i8* %34, metadata !627, metadata !DIExpression()), !dbg !624
  store i8 %33, i8* %.2, align 1, !dbg !658
  %35 = add i64 %16, -1, !dbg !659
  call void @llvm.dbg.value(metadata i64 %35, metadata !632, metadata !DIExpression()), !dbg !624
  br label %36, !dbg !660

36:                                               ; preds = %30, %14
  %.3 = phi i8* [ %.02, %14 ], [ %34, %30 ], !dbg !624
  %.0 = phi i64 [ %16, %14 ], [ %35, %30 ], !dbg !624
  call void @llvm.dbg.value(metadata i64 %.0, metadata !632, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i8* %.3, metadata !627, metadata !DIExpression()), !dbg !624
  br label %37, !dbg !661

37:                                               ; preds = %39, %36
  %.4 = phi i8* [ %.3, %36 ], [ %43, %39 ], !dbg !624
  %.1 = phi i64 [ %.0, %36 ], [ %42, %39 ], !dbg !624
  call void @llvm.dbg.value(metadata i64 %.1, metadata !632, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i8* %.4, metadata !627, metadata !DIExpression()), !dbg !624
  %38 = icmp ugt i64 %.1, 0, !dbg !662
  br i1 %38, label %39, label %44, !dbg !661

39:                                               ; preds = %37
  %40 = getelementptr inbounds i32, i32* %2, i64 %.1, !dbg !663
  %41 = load i32, i32* %40, align 4, !dbg !663
  call void @br_enc32be(i8* %.4, i32 %41), !dbg !665
  %42 = add i64 %.1, -1, !dbg !666
  call void @llvm.dbg.value(metadata i64 %42, metadata !632, metadata !DIExpression()), !dbg !624
  %43 = getelementptr inbounds i8, i8* %.4, i64 4, !dbg !667
  call void @llvm.dbg.value(metadata i8* %43, metadata !627, metadata !DIExpression()), !dbg !624
  br label %37, !dbg !661, !llvm.loop !668

44:                                               ; preds = %37
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !671 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !674, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 %1, metadata !676, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i8* %0, metadata !677, metadata !DIExpression()), !dbg !675
  %3 = lshr i32 %1, 24, !dbg !678
  %4 = trunc i32 %3 to i8, !dbg !679
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !680
  store i8 %4, i8* %5, align 1, !dbg !681
  %6 = lshr i32 %1, 16, !dbg !682
  %7 = trunc i32 %6 to i8, !dbg !683
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !684
  store i8 %7, i8* %8, align 1, !dbg !685
  %9 = lshr i32 %1, 8, !dbg !686
  %10 = trunc i32 %9 to i8, !dbg !687
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !688
  store i8 %10, i8* %11, align 1, !dbg !689
  %12 = trunc i32 %1 to i8, !dbg !690
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !691
  store i8 %12, i8* %13, align 1, !dbg !692
  ret void, !dbg !693
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_from_monty(i32* %0, i32* %1, i32 %2) #0 !dbg !694 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i32* %1, metadata !699, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i32 %2, metadata !700, metadata !DIExpression()), !dbg !698
  %4 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !701
  %5 = load i32, i32* %4, align 4, !dbg !701
  %6 = add i32 %5, 31, !dbg !702
  %7 = lshr i32 %6, 5, !dbg !703
  %8 = zext i32 %7 to i64, !dbg !704
  call void @llvm.dbg.value(metadata i64 %8, metadata !705, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i64 0, metadata !706, metadata !DIExpression()), !dbg !698
  br label %9, !dbg !707

9:                                                ; preds = %41, %3
  %.02 = phi i64 [ 0, %3 ], [ %42, %41 ], !dbg !709
  call void @llvm.dbg.value(metadata i64 %.02, metadata !706, metadata !DIExpression()), !dbg !698
  %10 = icmp ult i64 %.02, %8, !dbg !710
  br i1 %10, label %11, label %43, !dbg !712

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !713
  %13 = load i32, i32* %12, align 4, !dbg !713
  %14 = mul i32 %13, %2, !dbg !715
  call void @llvm.dbg.value(metadata i32 %14, metadata !716, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64 0, metadata !718, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64 0, metadata !719, metadata !DIExpression()), !dbg !698
  br label %15, !dbg !720

15:                                               ; preds = %36, %11
  %.01 = phi i64 [ 0, %11 ], [ %37, %36 ], !dbg !722
  %.0 = phi i64 [ 0, %11 ], [ %30, %36 ], !dbg !717
  call void @llvm.dbg.value(metadata i64 %.0, metadata !718, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64 %.01, metadata !719, metadata !DIExpression()), !dbg !698
  %16 = icmp ult i64 %.01, %8, !dbg !723
  br i1 %16, label %17, label %38, !dbg !725

17:                                               ; preds = %15
  %18 = add i64 %.01, 1, !dbg !726
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !728
  %20 = load i32, i32* %19, align 4, !dbg !728
  %21 = zext i32 %20 to i64, !dbg !729
  %22 = zext i32 %14 to i64, !dbg !730
  %23 = add i64 %.01, 1, !dbg !730
  %24 = getelementptr inbounds i32, i32* %1, i64 %23, !dbg !730
  %25 = load i32, i32* %24, align 4, !dbg !730
  %26 = zext i32 %25 to i64, !dbg !730
  %27 = mul i64 %22, %26, !dbg !730
  %28 = add i64 %21, %27, !dbg !731
  %29 = add i64 %28, %.0, !dbg !732
  call void @llvm.dbg.value(metadata i64 %29, metadata !733, metadata !DIExpression()), !dbg !734
  %30 = lshr i64 %29, 32, !dbg !735
  call void @llvm.dbg.value(metadata i64 %30, metadata !718, metadata !DIExpression()), !dbg !717
  %31 = icmp ne i64 %.01, 0, !dbg !736
  br i1 %31, label %32, label %35, !dbg !738

32:                                               ; preds = %17
  %33 = trunc i64 %29 to i32, !dbg !739
  %34 = getelementptr inbounds i32, i32* %0, i64 %.01, !dbg !741
  store i32 %33, i32* %34, align 4, !dbg !742
  br label %35, !dbg !743

35:                                               ; preds = %32, %17
  br label %36, !dbg !744

36:                                               ; preds = %35
  %37 = add i64 %.01, 1, !dbg !745
  call void @llvm.dbg.value(metadata i64 %37, metadata !719, metadata !DIExpression()), !dbg !698
  br label %15, !dbg !746, !llvm.loop !747

38:                                               ; preds = %15
  %39 = trunc i64 %.0 to i32, !dbg !749
  %40 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !750
  store i32 %39, i32* %40, align 4, !dbg !751
  br label %41, !dbg !752

41:                                               ; preds = %38
  %42 = add i64 %.02, 1, !dbg !753
  call void @llvm.dbg.value(metadata i64 %42, metadata !706, metadata !DIExpression()), !dbg !698
  br label %9, !dbg !754, !llvm.loop !755

43:                                               ; preds = %9
  %44 = call i32 @br_i32_sub(i32* %0, i32* %1, i32 0), !dbg !757
  %45 = call i32 @NOT.7(i32 %44), !dbg !758
  %46 = call i32 @br_i32_sub(i32* %0, i32* %1, i32 %45), !dbg !759
  ret void, !dbg !760
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.7(i32 %0) #0 !dbg !761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !762, metadata !DIExpression()), !dbg !763
  %2 = xor i32 %0, 1, !dbg !764
  ret i32 %2, !dbg !765
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_modpow(i32* %0, i8* %1, i64 %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 !dbg !766 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !769, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i8* %1, metadata !771, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i64 %2, metadata !772, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i32* %3, metadata !773, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i32 %4, metadata !774, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i32* %5, metadata !775, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i32* %6, metadata !776, metadata !DIExpression()), !dbg !770
  %8 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !777
  %9 = load i32, i32* %8, align 4, !dbg !777
  %10 = add i32 %9, 63, !dbg !778
  %11 = lshr i32 %10, 5, !dbg !779
  %12 = zext i32 %11 to i64, !dbg !780
  %13 = mul i64 %12, 4, !dbg !781
  call void @llvm.dbg.value(metadata i64 %13, metadata !782, metadata !DIExpression()), !dbg !770
  %14 = bitcast i32* %5 to i8*, !dbg !783
  %15 = bitcast i32* %0 to i8*, !dbg !783
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 %13, i1 false), !dbg !783
  call void @br_i32_to_monty(i32* %5, i32* %3), !dbg !784
  %16 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !785
  %17 = load i32, i32* %16, align 4, !dbg !785
  call void @br_i32_zero.8(i32* %0, i32 %17), !dbg !786
  %18 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !787
  store i32 1, i32* %18, align 4, !dbg !788
  call void @llvm.dbg.value(metadata i32 0, metadata !789, metadata !DIExpression()), !dbg !770
  br label %19, !dbg !790

19:                                               ; preds = %38, %7
  %.0 = phi i32 [ 0, %7 ], [ %39, %38 ], !dbg !792
  call void @llvm.dbg.value(metadata i32 %.0, metadata !789, metadata !DIExpression()), !dbg !770
  %20 = trunc i64 %2 to i32, !dbg !793
  %21 = shl i32 %20, 3, !dbg !795
  %22 = icmp ult i32 %.0, %21, !dbg !796
  br i1 %22, label %23, label %40, !dbg !797

23:                                               ; preds = %19
  %24 = sub i64 %2, 1, !dbg !798
  %25 = lshr i32 %.0, 3, !dbg !800
  %26 = zext i32 %25 to i64, !dbg !801
  %27 = sub i64 %24, %26, !dbg !802
  %28 = getelementptr inbounds i8, i8* %1, i64 %27, !dbg !803
  %29 = load i8, i8* %28, align 1, !dbg !803
  %30 = zext i8 %29 to i32, !dbg !803
  %31 = and i32 %.0, 7, !dbg !804
  %32 = ashr i32 %30, %31, !dbg !805
  %33 = and i32 %32, 1, !dbg !806
  call void @llvm.dbg.value(metadata i32 %33, metadata !807, metadata !DIExpression()), !dbg !808
  call void @br_i32_montymul(i32* %6, i32* %0, i32* %5, i32* %3, i32 %4), !dbg !809
  %34 = bitcast i32* %0 to i8*, !dbg !810
  %35 = bitcast i32* %6 to i8*, !dbg !811
  call void @br_ccopy(i32 %33, i8* %34, i8* %35, i64 %13), !dbg !812
  call void @br_i32_montymul(i32* %6, i32* %5, i32* %5, i32* %3, i32 %4), !dbg !813
  %36 = bitcast i32* %5 to i8*, !dbg !814
  %37 = bitcast i32* %6 to i8*, !dbg !814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 %13, i1 false), !dbg !814
  br label %38, !dbg !815

38:                                               ; preds = %23
  %39 = add i32 %.0, 1, !dbg !816
  call void @llvm.dbg.value(metadata i32 %39, metadata !789, metadata !DIExpression()), !dbg !770
  br label %19, !dbg !817, !llvm.loop !818

40:                                               ; preds = %19
  ret void, !dbg !820
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @br_i32_zero.8(i32* %0, i32 %1) #0 !dbg !821 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 %1, metadata !824, metadata !DIExpression()), !dbg !823
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !825
  call void @llvm.dbg.value(metadata i32* %3, metadata !822, metadata !DIExpression()), !dbg !823
  store i32 %1, i32* %0, align 4, !dbg !826
  %4 = bitcast i32* %3 to i8*, !dbg !827
  %5 = add i32 %1, 31, !dbg !828
  %6 = lshr i32 %5, 5, !dbg !829
  %7 = zext i32 %6 to i64, !dbg !830
  %8 = mul i64 %7, 4, !dbg !831
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !827
  ret void, !dbg !832
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_montymul(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 !dbg !833 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !836, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i32* %1, metadata !838, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i32* %2, metadata !839, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i32* %3, metadata !840, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i32 %4, metadata !841, metadata !DIExpression()), !dbg !837
  %6 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !842
  %7 = load i32, i32* %6, align 4, !dbg !842
  %8 = add i32 %7, 31, !dbg !843
  %9 = lshr i32 %8, 5, !dbg !844
  %10 = zext i32 %9 to i64, !dbg !845
  call void @llvm.dbg.value(metadata i64 %10, metadata !846, metadata !DIExpression()), !dbg !837
  %11 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !847
  %12 = load i32, i32* %11, align 4, !dbg !847
  call void @br_i32_zero.11(i32* %0, i32 %12), !dbg !848
  call void @llvm.dbg.value(metadata i64 0, metadata !849, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i64 0, metadata !850, metadata !DIExpression()), !dbg !837
  br label %13, !dbg !851

13:                                               ; preds = %69, %5
  %.04 = phi i64 [ 0, %5 ], [ %70, %69 ], !dbg !853
  %.02 = phi i64 [ 0, %5 ], [ %68, %69 ], !dbg !837
  call void @llvm.dbg.value(metadata i64 %.02, metadata !849, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i64 %.04, metadata !850, metadata !DIExpression()), !dbg !837
  %14 = icmp ult i64 %.04, %10, !dbg !854
  br i1 %14, label %15, label %71, !dbg !856

15:                                               ; preds = %13
  %16 = add i64 %.04, 1, !dbg !857
  %17 = getelementptr inbounds i32, i32* %1, i64 %16, !dbg !859
  %18 = load i32, i32* %17, align 4, !dbg !859
  call void @llvm.dbg.value(metadata i32 %18, metadata !860, metadata !DIExpression()), !dbg !861
  %19 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !862
  %20 = load i32, i32* %19, align 4, !dbg !862
  %21 = add i64 %.04, 1, !dbg !863
  %22 = getelementptr inbounds i32, i32* %1, i64 %21, !dbg !864
  %23 = load i32, i32* %22, align 4, !dbg !864
  %24 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !865
  %25 = load i32, i32* %24, align 4, !dbg !865
  %26 = mul i32 %23, %25, !dbg !866
  %27 = add i32 %20, %26, !dbg !867
  %28 = mul i32 %27, %4, !dbg !868
  call void @llvm.dbg.value(metadata i32 %28, metadata !869, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 0, metadata !870, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 0, metadata !871, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 0, metadata !872, metadata !DIExpression()), !dbg !837
  br label %29, !dbg !873

29:                                               ; preds = %61, %15
  %.03 = phi i64 [ 0, %15 ], [ %62, %61 ], !dbg !875
  %.01 = phi i64 [ 0, %15 ], [ %44, %61 ], !dbg !861
  %.0 = phi i64 [ 0, %15 ], [ %55, %61 ], !dbg !861
  call void @llvm.dbg.value(metadata i64 %.0, metadata !871, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %.01, metadata !870, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %.03, metadata !872, metadata !DIExpression()), !dbg !837
  %30 = icmp ult i64 %.03, %10, !dbg !876
  br i1 %30, label %31, label %63, !dbg !878

31:                                               ; preds = %29
  %32 = add i64 %.03, 1, !dbg !879
  %33 = getelementptr inbounds i32, i32* %0, i64 %32, !dbg !881
  %34 = load i32, i32* %33, align 4, !dbg !881
  %35 = zext i32 %34 to i64, !dbg !882
  %36 = zext i32 %18 to i64, !dbg !883
  %37 = add i64 %.03, 1, !dbg !883
  %38 = getelementptr inbounds i32, i32* %2, i64 %37, !dbg !883
  %39 = load i32, i32* %38, align 4, !dbg !883
  %40 = zext i32 %39 to i64, !dbg !883
  %41 = mul i64 %36, %40, !dbg !883
  %42 = add i64 %35, %41, !dbg !884
  %43 = add i64 %42, %.01, !dbg !885
  call void @llvm.dbg.value(metadata i64 %43, metadata !886, metadata !DIExpression()), !dbg !887
  %44 = lshr i64 %43, 32, !dbg !888
  call void @llvm.dbg.value(metadata i64 %44, metadata !870, metadata !DIExpression()), !dbg !861
  %45 = trunc i64 %43 to i32, !dbg !889
  call void @llvm.dbg.value(metadata i32 %45, metadata !890, metadata !DIExpression()), !dbg !887
  %46 = zext i32 %45 to i64, !dbg !891
  %47 = zext i32 %28 to i64, !dbg !892
  %48 = add i64 %.03, 1, !dbg !892
  %49 = getelementptr inbounds i32, i32* %3, i64 %48, !dbg !892
  %50 = load i32, i32* %49, align 4, !dbg !892
  %51 = zext i32 %50 to i64, !dbg !892
  %52 = mul i64 %47, %51, !dbg !892
  %53 = add i64 %46, %52, !dbg !893
  %54 = add i64 %53, %.0, !dbg !894
  call void @llvm.dbg.value(metadata i64 %54, metadata !886, metadata !DIExpression()), !dbg !887
  %55 = lshr i64 %54, 32, !dbg !895
  call void @llvm.dbg.value(metadata i64 %55, metadata !871, metadata !DIExpression()), !dbg !861
  %56 = icmp ne i64 %.03, 0, !dbg !896
  br i1 %56, label %57, label %60, !dbg !898

57:                                               ; preds = %31
  %58 = trunc i64 %54 to i32, !dbg !899
  %59 = getelementptr inbounds i32, i32* %0, i64 %.03, !dbg !901
  store i32 %58, i32* %59, align 4, !dbg !902
  br label %60, !dbg !903

60:                                               ; preds = %57, %31
  br label %61, !dbg !904

61:                                               ; preds = %60
  %62 = add i64 %.03, 1, !dbg !905
  call void @llvm.dbg.value(metadata i64 %62, metadata !872, metadata !DIExpression()), !dbg !837
  br label %29, !dbg !906, !llvm.loop !907

63:                                               ; preds = %29
  %64 = add i64 %.02, %.01, !dbg !909
  %65 = add i64 %64, %.0, !dbg !910
  call void @llvm.dbg.value(metadata i64 %65, metadata !911, metadata !DIExpression()), !dbg !861
  %66 = trunc i64 %65 to i32, !dbg !912
  %67 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !913
  store i32 %66, i32* %67, align 4, !dbg !914
  %68 = lshr i64 %65, 32, !dbg !915
  call void @llvm.dbg.value(metadata i64 %68, metadata !849, metadata !DIExpression()), !dbg !837
  br label %69, !dbg !916

69:                                               ; preds = %63
  %70 = add i64 %.04, 1, !dbg !917
  call void @llvm.dbg.value(metadata i64 %70, metadata !850, metadata !DIExpression()), !dbg !837
  br label %13, !dbg !918, !llvm.loop !919

71:                                               ; preds = %13
  %72 = trunc i64 %.02 to i32, !dbg !921
  %73 = call i32 @NEQ.12(i32 %72, i32 0), !dbg !922
  %74 = call i32 @br_i32_sub(i32* %0, i32* %3, i32 0), !dbg !923
  %75 = call i32 @NOT.13(i32 %74), !dbg !924
  %76 = or i32 %73, %75, !dbg !925
  %77 = call i32 @br_i32_sub(i32* %0, i32* %3, i32 %76), !dbg !926
  ret void, !dbg !927
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i32_zero.11(i32* %0, i32 %1) #0 !dbg !928 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 %1, metadata !931, metadata !DIExpression()), !dbg !930
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !932
  call void @llvm.dbg.value(metadata i32* %3, metadata !929, metadata !DIExpression()), !dbg !930
  store i32 %1, i32* %0, align 4, !dbg !933
  %4 = bitcast i32* %3 to i8*, !dbg !934
  %5 = add i32 %1, 31, !dbg !935
  %6 = lshr i32 %5, 5, !dbg !936
  %7 = zext i32 %6 to i64, !dbg !937
  %8 = mul i64 %7, 4, !dbg !938
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !934
  ret void, !dbg !939
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.12(i32 %0, i32 %1) #0 !dbg !940 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !941, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i32 %1, metadata !943, metadata !DIExpression()), !dbg !942
  %3 = xor i32 %0, %1, !dbg !944
  call void @llvm.dbg.value(metadata i32 %3, metadata !945, metadata !DIExpression()), !dbg !942
  %4 = sub i32 0, %3, !dbg !946
  %5 = or i32 %3, %4, !dbg !947
  %6 = lshr i32 %5, 31, !dbg !948
  ret i32 %6, !dbg !949
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.13(i32 %0) #0 !dbg !950 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !951, metadata !DIExpression()), !dbg !952
  %2 = xor i32 %0, 1, !dbg !953
  ret i32 %2, !dbg !954
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_mulacc(i32* %0, i32* %1, i32* %2) #0 !dbg !955 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i32* %1, metadata !960, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i32* %2, metadata !961, metadata !DIExpression()), !dbg !959
  %4 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !962
  %5 = load i32, i32* %4, align 4, !dbg !962
  %6 = add i32 %5, 31, !dbg !963
  %7 = lshr i32 %6, 5, !dbg !964
  %8 = zext i32 %7 to i64, !dbg !965
  call void @llvm.dbg.value(metadata i64 %8, metadata !966, metadata !DIExpression()), !dbg !959
  %9 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !967
  %10 = load i32, i32* %9, align 4, !dbg !967
  %11 = add i32 %10, 31, !dbg !968
  %12 = lshr i32 %11, 5, !dbg !969
  %13 = zext i32 %12 to i64, !dbg !970
  call void @llvm.dbg.value(metadata i64 %13, metadata !971, metadata !DIExpression()), !dbg !959
  %14 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !972
  %15 = load i32, i32* %14, align 4, !dbg !972
  %16 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !973
  %17 = load i32, i32* %16, align 4, !dbg !973
  %18 = add i32 %15, %17, !dbg !974
  %19 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !975
  store i32 %18, i32* %19, align 4, !dbg !976
  call void @llvm.dbg.value(metadata i64 0, metadata !977, metadata !DIExpression()), !dbg !959
  br label %20, !dbg !978

20:                                               ; preds = %54, %3
  %.02 = phi i64 [ 0, %3 ], [ %55, %54 ], !dbg !980
  call void @llvm.dbg.value(metadata i64 %.02, metadata !977, metadata !DIExpression()), !dbg !959
  %21 = icmp ult i64 %.02, %13, !dbg !981
  br i1 %21, label %22, label %56, !dbg !983

22:                                               ; preds = %20
  %23 = add i64 1, %.02, !dbg !984
  %24 = getelementptr inbounds i32, i32* %2, i64 %23, !dbg !986
  %25 = load i32, i32* %24, align 4, !dbg !986
  call void @llvm.dbg.value(metadata i32 %25, metadata !987, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 0, metadata !989, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 0, metadata !990, metadata !DIExpression()), !dbg !988
  br label %26, !dbg !991

26:                                               ; preds = %47, %22
  %.01 = phi i64 [ 0, %22 ], [ %48, %47 ], !dbg !993
  %.0 = phi i64 [ 0, %22 ], [ %42, %47 ], !dbg !988
  call void @llvm.dbg.value(metadata i64 %.0, metadata !989, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i64 %.01, metadata !990, metadata !DIExpression()), !dbg !988
  %27 = icmp ult i64 %.01, %8, !dbg !994
  br i1 %27, label %28, label %49, !dbg !996

28:                                               ; preds = %26
  %29 = add i64 1, %.02, !dbg !997
  %30 = add i64 %29, %.01, !dbg !999
  %31 = getelementptr inbounds i32, i32* %0, i64 %30, !dbg !1000
  %32 = load i32, i32* %31, align 4, !dbg !1000
  %33 = zext i32 %32 to i64, !dbg !1001
  %34 = zext i32 %25 to i64, !dbg !1002
  %35 = add i64 1, %.01, !dbg !1002
  %36 = getelementptr inbounds i32, i32* %1, i64 %35, !dbg !1002
  %37 = load i32, i32* %36, align 4, !dbg !1002
  %38 = zext i32 %37 to i64, !dbg !1002
  %39 = mul i64 %34, %38, !dbg !1002
  %40 = add i64 %33, %39, !dbg !1003
  %41 = add i64 %40, %.0, !dbg !1004
  call void @llvm.dbg.value(metadata i64 %41, metadata !1005, metadata !DIExpression()), !dbg !1006
  %42 = lshr i64 %41, 32, !dbg !1007
  call void @llvm.dbg.value(metadata i64 %42, metadata !989, metadata !DIExpression()), !dbg !988
  %43 = trunc i64 %41 to i32, !dbg !1008
  %44 = add i64 1, %.02, !dbg !1009
  %45 = add i64 %44, %.01, !dbg !1010
  %46 = getelementptr inbounds i32, i32* %0, i64 %45, !dbg !1011
  store i32 %43, i32* %46, align 4, !dbg !1012
  br label %47, !dbg !1013

47:                                               ; preds = %28
  %48 = add i64 %.01, 1, !dbg !1014
  call void @llvm.dbg.value(metadata i64 %48, metadata !990, metadata !DIExpression()), !dbg !988
  br label %26, !dbg !1015, !llvm.loop !1016

49:                                               ; preds = %26
  %50 = trunc i64 %.0 to i32, !dbg !1018
  %51 = add i64 1, %.02, !dbg !1019
  %52 = add i64 %51, %8, !dbg !1020
  %53 = getelementptr inbounds i32, i32* %0, i64 %52, !dbg !1021
  store i32 %50, i32* %53, align 4, !dbg !1022
  br label %54, !dbg !1023

54:                                               ; preds = %49
  %55 = add i64 %.02, 1, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %55, metadata !977, metadata !DIExpression()), !dbg !959
  br label %20, !dbg !1025, !llvm.loop !1026

56:                                               ; preds = %20
  ret void, !dbg !1028
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_muladd_small(i32* %0, i32 %1, i32* %2) #0 !dbg !1029 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1032, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 %1, metadata !1034, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32* %2, metadata !1035, metadata !DIExpression()), !dbg !1033
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1036
  %5 = load i32, i32* %4, align 4, !dbg !1036
  call void @llvm.dbg.value(metadata i32 %5, metadata !1037, metadata !DIExpression()), !dbg !1033
  %6 = icmp eq i32 %5, 0, !dbg !1038
  br i1 %6, label %7, label %8, !dbg !1040

7:                                                ; preds = %3
  br label %81, !dbg !1041

8:                                                ; preds = %3
  %9 = icmp ule i32 %5, 32, !dbg !1043
  br i1 %9, label %10, label %17, !dbg !1045

10:                                               ; preds = %8
  %11 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1046
  %12 = load i32, i32* %11, align 4, !dbg !1046
  %13 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1048
  %14 = load i32, i32* %13, align 4, !dbg !1048
  %15 = call i32 @br_rem(i32 %12, i32 %1, i32 %14), !dbg !1049
  %16 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1050
  store i32 %15, i32* %16, align 4, !dbg !1051
  br label %81, !dbg !1052

17:                                               ; preds = %8
  %18 = add i32 %5, 31, !dbg !1053
  %19 = lshr i32 %18, 5, !dbg !1054
  %20 = zext i32 %19 to i64, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %20, metadata !1056, metadata !DIExpression()), !dbg !1033
  %21 = sub i32 %5, 32, !dbg !1057
  %22 = call i32 @br_i32_word(i32* %0, i32 %21), !dbg !1058
  call void @llvm.dbg.value(metadata i32 %22, metadata !1059, metadata !DIExpression()), !dbg !1033
  %23 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !1060
  %24 = load i32, i32* %23, align 4, !dbg !1060
  call void @llvm.dbg.value(metadata i32 %24, metadata !1061, metadata !DIExpression()), !dbg !1033
  %25 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !1062
  %26 = bitcast i32* %25 to i8*, !dbg !1063
  %27 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1064
  %28 = bitcast i32* %27 to i8*, !dbg !1063
  %29 = sub i64 %20, 1, !dbg !1065
  %30 = mul i64 %29, 4, !dbg !1066
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %28, i64 %30, i1 false), !dbg !1063
  %31 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1067
  store i32 %1, i32* %31, align 4, !dbg !1068
  %32 = sub i32 %5, 32, !dbg !1069
  %33 = call i32 @br_i32_word(i32* %0, i32 %32), !dbg !1070
  call void @llvm.dbg.value(metadata i32 %33, metadata !1071, metadata !DIExpression()), !dbg !1033
  %34 = sub i32 %5, 32, !dbg !1072
  %35 = call i32 @br_i32_word(i32* %2, i32 %34), !dbg !1073
  call void @llvm.dbg.value(metadata i32 %35, metadata !1074, metadata !DIExpression()), !dbg !1033
  %36 = call i32 @br_div(i32 %22, i32 %33, i32 %35), !dbg !1075
  call void @llvm.dbg.value(metadata i32 %36, metadata !1076, metadata !DIExpression()), !dbg !1033
  %37 = call i32 @EQ.16(i32 %22, i32 %35), !dbg !1077
  %38 = call i32 @EQ.16(i32 %36, i32 0), !dbg !1078
  %39 = sub i32 %36, 1, !dbg !1079
  %40 = call i32 @MUX.17(i32 %38, i32 0, i32 %39), !dbg !1080
  %41 = call i32 @MUX.17(i32 %37, i32 -1, i32 %40), !dbg !1081
  call void @llvm.dbg.value(metadata i32 %41, metadata !1082, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i64 0, metadata !1083, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 1, metadata !1084, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i64 1, metadata !1085, metadata !DIExpression()), !dbg !1033
  br label %42, !dbg !1086

42:                                               ; preds = %65, %17
  %.02 = phi i64 [ 1, %17 ], [ %66, %65 ], !dbg !1088
  %.01 = phi i32 [ 1, %17 ], [ %64, %65 ], !dbg !1033
  %.0 = phi i64 [ 0, %17 ], [ %60, %65 ], !dbg !1033
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1083, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1084, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1085, metadata !DIExpression()), !dbg !1033
  %43 = icmp ule i64 %.02, %20, !dbg !1089
  br i1 %43, label %44, label %67, !dbg !1091

44:                                               ; preds = %42
  %45 = getelementptr inbounds i32, i32* %2, i64 %.02, !dbg !1092
  %46 = load i32, i32* %45, align 4, !dbg !1092
  call void @llvm.dbg.value(metadata i32 %46, metadata !1094, metadata !DIExpression()), !dbg !1095
  %47 = zext i32 %46 to i64, !dbg !1096
  %48 = zext i32 %41 to i64, !dbg !1096
  %49 = mul i64 %47, %48, !dbg !1096
  %50 = add i64 %49, %.0, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %50, metadata !1098, metadata !DIExpression()), !dbg !1095
  %51 = lshr i64 %50, 32, !dbg !1099
  %52 = trunc i64 %51 to i32, !dbg !1100
  %53 = zext i32 %52 to i64, !dbg !1100
  call void @llvm.dbg.value(metadata i64 %53, metadata !1083, metadata !DIExpression()), !dbg !1033
  %54 = trunc i64 %50 to i32, !dbg !1101
  call void @llvm.dbg.value(metadata i32 %54, metadata !1102, metadata !DIExpression()), !dbg !1095
  %55 = getelementptr inbounds i32, i32* %0, i64 %.02, !dbg !1103
  %56 = load i32, i32* %55, align 4, !dbg !1103
  call void @llvm.dbg.value(metadata i32 %56, metadata !1104, metadata !DIExpression()), !dbg !1095
  %57 = sub i32 %56, %54, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %57, metadata !1106, metadata !DIExpression()), !dbg !1095
  %58 = call i32 @GT.18(i32 %57, i32 %56), !dbg !1107
  %59 = zext i32 %58 to i64, !dbg !1108
  %60 = add i64 %53, %59, !dbg !1109
  call void @llvm.dbg.value(metadata i64 %60, metadata !1083, metadata !DIExpression()), !dbg !1033
  %61 = getelementptr inbounds i32, i32* %0, i64 %.02, !dbg !1110
  store i32 %57, i32* %61, align 4, !dbg !1111
  %62 = call i32 @EQ.16(i32 %57, i32 %46), !dbg !1112
  %63 = call i32 @GT.18(i32 %57, i32 %46), !dbg !1113
  %64 = call i32 @MUX.17(i32 %62, i32 %.01, i32 %63), !dbg !1114
  call void @llvm.dbg.value(metadata i32 %64, metadata !1084, metadata !DIExpression()), !dbg !1033
  br label %65, !dbg !1115

65:                                               ; preds = %44
  %66 = add i64 %.02, 1, !dbg !1116
  call void @llvm.dbg.value(metadata i64 %66, metadata !1085, metadata !DIExpression()), !dbg !1033
  br label %42, !dbg !1117, !llvm.loop !1118

67:                                               ; preds = %42
  %68 = lshr i64 %.0, 32, !dbg !1120
  %69 = trunc i64 %68 to i32, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %69, metadata !1122, metadata !DIExpression()), !dbg !1033
  %70 = trunc i64 %.0 to i32, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %70, metadata !1124, metadata !DIExpression()), !dbg !1033
  %71 = call i32 @GT.18(i32 %70, i32 %24), !dbg !1125
  %72 = or i32 %69, %71, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %72, metadata !1127, metadata !DIExpression()), !dbg !1033
  %73 = xor i32 %72, -1, !dbg !1128
  %74 = xor i32 %69, -1, !dbg !1129
  %75 = call i32 @GT.18(i32 %24, i32 %70), !dbg !1130
  %76 = and i32 %74, %75, !dbg !1131
  %77 = or i32 %.01, %76, !dbg !1132
  %78 = and i32 %73, %77, !dbg !1133
  call void @llvm.dbg.value(metadata i32 %78, metadata !1134, metadata !DIExpression()), !dbg !1033
  %79 = call i32 @br_i32_add(i32* %0, i32* %2, i32 %72), !dbg !1135
  %80 = call i32 @br_i32_sub(i32* %0, i32* %2, i32 %78), !dbg !1136
  br label %81, !dbg !1137

81:                                               ; preds = %67, %10, %7
  ret void, !dbg !1137
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_rem(i32 %0, i32 %1, i32 %2) #0 !dbg !1138 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1139, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i32 %1, metadata !1141, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i32 %2, metadata !1142, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1143, metadata !DIExpression()), !dbg !1144
  %5 = call i32 @br_divrem(i32 %0, i32 %1, i32 %2, i32* %4), !dbg !1145
  %6 = load i32, i32* %4, align 4, !dbg !1146
  ret i32 %6, !dbg !1147
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_i32_word(i32* %0, i32 %1) #0 !dbg !1148 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1151, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i32 %1, metadata !1153, metadata !DIExpression()), !dbg !1152
  %3 = lshr i32 %1, 5, !dbg !1154
  %4 = zext i32 %3 to i64, !dbg !1155
  %5 = add i64 %4, 1, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %5, metadata !1157, metadata !DIExpression()), !dbg !1152
  %6 = and i32 %1, 31, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %6, metadata !1159, metadata !DIExpression()), !dbg !1152
  %7 = icmp eq i32 %6, 0, !dbg !1160
  br i1 %7, label %8, label %11, !dbg !1162

8:                                                ; preds = %2
  %9 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !1163
  %10 = load i32, i32* %9, align 4, !dbg !1163
  br label %21, !dbg !1165

11:                                               ; preds = %2
  %12 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !1166
  %13 = load i32, i32* %12, align 4, !dbg !1166
  %14 = lshr i32 %13, %6, !dbg !1168
  %15 = add i64 %5, 1, !dbg !1169
  %16 = getelementptr inbounds i32, i32* %0, i64 %15, !dbg !1170
  %17 = load i32, i32* %16, align 4, !dbg !1170
  %18 = sub i32 32, %6, !dbg !1171
  %19 = shl i32 %17, %18, !dbg !1172
  %20 = or i32 %14, %19, !dbg !1173
  br label %21, !dbg !1174

21:                                               ; preds = %11, %8
  %.0 = phi i32 [ %10, %8 ], [ %20, %11 ], !dbg !1175
  ret i32 %.0, !dbg !1176
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_div(i32 %0, i32 %1, i32 %2) #0 !dbg !1177 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1178, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i32 %1, metadata !1180, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i32 %2, metadata !1181, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1182, metadata !DIExpression()), !dbg !1183
  %5 = call i32 @br_divrem(i32 %0, i32 %1, i32 %2, i32* %4), !dbg !1184
  ret i32 %5, !dbg !1185
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.16(i32 %0, i32 %1) #0 !dbg !1186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1187, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i32 %1, metadata !1189, metadata !DIExpression()), !dbg !1188
  %3 = xor i32 %0, %1, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %3, metadata !1191, metadata !DIExpression()), !dbg !1188
  %4 = sub i32 0, %3, !dbg !1192
  %5 = or i32 %3, %4, !dbg !1193
  %6 = lshr i32 %5, 31, !dbg !1194
  %7 = call i32 @NOT.19(i32 %6), !dbg !1195
  ret i32 %7, !dbg !1196
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.17(i32 %0, i32 %1, i32 %2) #0 !dbg !1197 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1198, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i32 %1, metadata !1200, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i32 %2, metadata !1201, metadata !DIExpression()), !dbg !1199
  %4 = sub i32 0, %0, !dbg !1202
  %5 = xor i32 %1, %2, !dbg !1203
  %6 = and i32 %4, %5, !dbg !1204
  %7 = xor i32 %2, %6, !dbg !1205
  ret i32 %7, !dbg !1206
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.18(i32 %0, i32 %1) #0 !dbg !1207 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1208, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %1, metadata !1210, metadata !DIExpression()), !dbg !1209
  %3 = sub i32 %1, %0, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %3, metadata !1212, metadata !DIExpression()), !dbg !1209
  %4 = xor i32 %0, %1, !dbg !1213
  %5 = xor i32 %0, %3, !dbg !1214
  %6 = and i32 %4, %5, !dbg !1215
  %7 = xor i32 %3, %6, !dbg !1216
  %8 = lshr i32 %7, 31, !dbg !1217
  ret i32 %8, !dbg !1218
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.19(i32 %0) #0 !dbg !1219 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1220, metadata !DIExpression()), !dbg !1221
  %2 = xor i32 %0, 1, !dbg !1222
  ret i32 %2, !dbg !1223
}

declare dso_local i32 @br_divrem(i32, i32, i32, i32*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i32_ninv32(i32 %0) #0 !dbg !1224 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1225, metadata !DIExpression()), !dbg !1226
  %2 = sub i32 2, %0, !dbg !1227
  call void @llvm.dbg.value(metadata i32 %2, metadata !1228, metadata !DIExpression()), !dbg !1226
  %3 = mul i32 %2, %0, !dbg !1229
  %4 = sub i32 2, %3, !dbg !1230
  %5 = mul i32 %2, %4, !dbg !1231
  call void @llvm.dbg.value(metadata i32 %5, metadata !1228, metadata !DIExpression()), !dbg !1226
  %6 = mul i32 %5, %0, !dbg !1232
  %7 = sub i32 2, %6, !dbg !1233
  %8 = mul i32 %5, %7, !dbg !1234
  call void @llvm.dbg.value(metadata i32 %8, metadata !1228, metadata !DIExpression()), !dbg !1226
  %9 = mul i32 %8, %0, !dbg !1235
  %10 = sub i32 2, %9, !dbg !1236
  %11 = mul i32 %8, %10, !dbg !1237
  call void @llvm.dbg.value(metadata i32 %11, metadata !1228, metadata !DIExpression()), !dbg !1226
  %12 = mul i32 %11, %0, !dbg !1238
  %13 = sub i32 2, %12, !dbg !1239
  %14 = mul i32 %11, %13, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %14, metadata !1228, metadata !DIExpression()), !dbg !1226
  %15 = and i32 %0, 1, !dbg !1241
  %16 = sub i32 0, %14, !dbg !1242
  %17 = call i32 @MUX.20(i32 %15, i32 %16, i32 0), !dbg !1243
  ret i32 %17, !dbg !1244
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.20(i32 %0, i32 %1, i32 %2) #0 !dbg !1245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 %1, metadata !1248, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 %2, metadata !1249, metadata !DIExpression()), !dbg !1247
  %4 = sub i32 0, %0, !dbg !1250
  %5 = xor i32 %1, %2, !dbg !1251
  %6 = and i32 %4, %5, !dbg !1252
  %7 = xor i32 %2, %6, !dbg !1253
  ret i32 %7, !dbg !1254
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_reduce(i32* %0, i32* %1, i32* %2) #0 !dbg !1255 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1256, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32* %1, metadata !1258, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32* %2, metadata !1259, metadata !DIExpression()), !dbg !1257
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1260
  %5 = load i32, i32* %4, align 4, !dbg !1260
  call void @llvm.dbg.value(metadata i32 %5, metadata !1261, metadata !DIExpression()), !dbg !1257
  %6 = add i32 %5, 31, !dbg !1262
  %7 = lshr i32 %6, 5, !dbg !1263
  %8 = zext i32 %7 to i64, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %8, metadata !1265, metadata !DIExpression()), !dbg !1257
  %9 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1266
  store i32 %5, i32* %9, align 4, !dbg !1267
  %10 = icmp eq i32 %5, 0, !dbg !1268
  br i1 %10, label %11, label %12, !dbg !1270

11:                                               ; preds = %3
  br label %52, !dbg !1271

12:                                               ; preds = %3
  %13 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1273
  %14 = load i32, i32* %13, align 4, !dbg !1273
  call void @llvm.dbg.value(metadata i32 %14, metadata !1274, metadata !DIExpression()), !dbg !1257
  %15 = add i32 %14, 31, !dbg !1275
  %16 = lshr i32 %15, 5, !dbg !1276
  %17 = zext i32 %16 to i64, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %17, metadata !1278, metadata !DIExpression()), !dbg !1257
  %18 = icmp ult i32 %14, %5, !dbg !1279
  br i1 %18, label %19, label %33, !dbg !1281

19:                                               ; preds = %12
  %20 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1282
  %21 = bitcast i32* %20 to i8*, !dbg !1284
  %22 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1285
  %23 = bitcast i32* %22 to i8*, !dbg !1284
  %24 = mul i64 %17, 4, !dbg !1286
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %23, i64 %24, i1 false), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %17, metadata !1287, metadata !DIExpression()), !dbg !1257
  br label %25, !dbg !1288

25:                                               ; preds = %30, %19
  %.0 = phi i64 [ %17, %19 ], [ %31, %30 ], !dbg !1290
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1287, metadata !DIExpression()), !dbg !1257
  %26 = icmp ult i64 %.0, %8, !dbg !1291
  br i1 %26, label %27, label %32, !dbg !1293

27:                                               ; preds = %25
  %28 = add i64 %.0, 1, !dbg !1294
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !1296
  store i32 0, i32* %29, align 4, !dbg !1297
  br label %30, !dbg !1298

30:                                               ; preds = %27
  %31 = add i64 %.0, 1, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %31, metadata !1287, metadata !DIExpression()), !dbg !1257
  br label %25, !dbg !1300, !llvm.loop !1301

32:                                               ; preds = %25
  br label %52, !dbg !1303

33:                                               ; preds = %12
  %34 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1304
  %35 = bitcast i32* %34 to i8*, !dbg !1305
  %36 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1306
  %37 = sub i64 %17, %8, !dbg !1307
  %38 = getelementptr inbounds i32, i32* %36, i64 %37, !dbg !1308
  %39 = bitcast i32* %38 to i8*, !dbg !1305
  %40 = sub i64 %8, 1, !dbg !1309
  %41 = mul i64 %40, 4, !dbg !1310
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %39, i64 %41, i1 false), !dbg !1305
  %42 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !1311
  store i32 0, i32* %42, align 4, !dbg !1312
  %43 = add i64 1, %17, !dbg !1313
  %44 = sub i64 %43, %8, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %44, metadata !1287, metadata !DIExpression()), !dbg !1257
  br label %45, !dbg !1316

45:                                               ; preds = %50, %33
  %.1 = phi i64 [ %44, %33 ], [ %51, %50 ], !dbg !1317
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1287, metadata !DIExpression()), !dbg !1257
  %46 = icmp ugt i64 %.1, 0, !dbg !1318
  br i1 %46, label %47, label %52, !dbg !1320

47:                                               ; preds = %45
  %48 = getelementptr inbounds i32, i32* %1, i64 %.1, !dbg !1321
  %49 = load i32, i32* %48, align 4, !dbg !1321
  call void @br_i32_muladd_small(i32* %0, i32 %49, i32* %2), !dbg !1323
  br label %50, !dbg !1324

50:                                               ; preds = %47
  %51 = add i64 %.1, -1, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %51, metadata !1287, metadata !DIExpression()), !dbg !1257
  br label %45, !dbg !1326, !llvm.loop !1327

52:                                               ; preds = %45, %32, %11
  ret void, !dbg !1329
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i32_sub(i32* %0, i32* %1, i32 %2) #0 !dbg !1330 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1331, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i32* %1, metadata !1333, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i32 %2, metadata !1334, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i32 0, metadata !1335, metadata !DIExpression()), !dbg !1332
  %4 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1336
  %5 = load i32, i32* %4, align 4, !dbg !1336
  %6 = add i32 %5, 63, !dbg !1337
  %7 = lshr i32 %6, 5, !dbg !1338
  %8 = zext i32 %7 to i64, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %8, metadata !1340, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i64 1, metadata !1341, metadata !DIExpression()), !dbg !1332
  br label %9, !dbg !1342

9:                                                ; preds = %24, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %24 ], !dbg !1332
  %.0 = phi i64 [ 1, %3 ], [ %25, %24 ], !dbg !1344
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1341, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1335, metadata !DIExpression()), !dbg !1332
  %10 = icmp ult i64 %.0, %8, !dbg !1345
  br i1 %10, label %11, label %26, !dbg !1347

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !1348
  %13 = load i32, i32* %12, align 4, !dbg !1348
  call void @llvm.dbg.value(metadata i32 %13, metadata !1350, metadata !DIExpression()), !dbg !1351
  %14 = getelementptr inbounds i32, i32* %1, i64 %.0, !dbg !1352
  %15 = load i32, i32* %14, align 4, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %15, metadata !1353, metadata !DIExpression()), !dbg !1351
  %16 = sub i32 %13, %15, !dbg !1354
  %17 = sub i32 %16, %.01, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %17, metadata !1356, metadata !DIExpression()), !dbg !1351
  %18 = call i32 @EQ.23(i32 %17, i32 %13), !dbg !1357
  %19 = and i32 %.01, %18, !dbg !1358
  %20 = call i32 @GT.24(i32 %17, i32 %13), !dbg !1359
  %21 = or i32 %19, %20, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %21, metadata !1335, metadata !DIExpression()), !dbg !1332
  %22 = call i32 @MUX.25(i32 %2, i32 %17, i32 %13), !dbg !1361
  %23 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !1362
  store i32 %22, i32* %23, align 4, !dbg !1363
  br label %24, !dbg !1364

24:                                               ; preds = %11
  %25 = add i64 %.0, 1, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %25, metadata !1341, metadata !DIExpression()), !dbg !1332
  br label %9, !dbg !1366, !llvm.loop !1367

26:                                               ; preds = %9
  ret i32 %.01, !dbg !1369
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.23(i32 %0, i32 %1) #0 !dbg !1370 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1371, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i32 %1, metadata !1373, metadata !DIExpression()), !dbg !1372
  %3 = xor i32 %0, %1, !dbg !1374
  call void @llvm.dbg.value(metadata i32 %3, metadata !1375, metadata !DIExpression()), !dbg !1372
  %4 = sub i32 0, %3, !dbg !1376
  %5 = or i32 %3, %4, !dbg !1377
  %6 = lshr i32 %5, 31, !dbg !1378
  %7 = call i32 @NOT.26(i32 %6), !dbg !1379
  ret i32 %7, !dbg !1380
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.24(i32 %0, i32 %1) #0 !dbg !1381 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1382, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i32 %1, metadata !1384, metadata !DIExpression()), !dbg !1383
  %3 = sub i32 %1, %0, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %3, metadata !1386, metadata !DIExpression()), !dbg !1383
  %4 = xor i32 %0, %1, !dbg !1387
  %5 = xor i32 %0, %3, !dbg !1388
  %6 = and i32 %4, %5, !dbg !1389
  %7 = xor i32 %3, %6, !dbg !1390
  %8 = lshr i32 %7, 31, !dbg !1391
  ret i32 %8, !dbg !1392
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.25(i32 %0, i32 %1, i32 %2) #0 !dbg !1393 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1394, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i32 %1, metadata !1396, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i32 %2, metadata !1397, metadata !DIExpression()), !dbg !1395
  %4 = sub i32 0, %0, !dbg !1398
  %5 = xor i32 %1, %2, !dbg !1399
  %6 = and i32 %4, %5, !dbg !1400
  %7 = xor i32 %2, %6, !dbg !1401
  ret i32 %7, !dbg !1402
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.26(i32 %0) #0 !dbg !1403 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1404, metadata !DIExpression()), !dbg !1405
  %2 = xor i32 %0, 1, !dbg !1406
  ret i32 %2, !dbg !1407
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_to_monty(i32* %0, i32* %1) #0 !dbg !1408 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32* %1, metadata !1413, metadata !DIExpression()), !dbg !1412
  %3 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1414
  %4 = load i32, i32* %3, align 4, !dbg !1414
  %5 = add i32 %4, 31, !dbg !1416
  %6 = lshr i32 %5, 5, !dbg !1417
  call void @llvm.dbg.value(metadata i32 %6, metadata !1418, metadata !DIExpression()), !dbg !1412
  br label %7, !dbg !1419

7:                                                ; preds = %10, %2
  %.0 = phi i32 [ %6, %2 ], [ %11, %10 ], !dbg !1420
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1418, metadata !DIExpression()), !dbg !1412
  %8 = icmp ugt i32 %.0, 0, !dbg !1421
  br i1 %8, label %9, label %12, !dbg !1423

9:                                                ; preds = %7
  call void @br_i32_muladd_small(i32* %0, i32 0, i32* %1), !dbg !1424
  br label %10, !dbg !1426

10:                                               ; preds = %9
  %11 = add i32 %.0, -1, !dbg !1427
  call void @llvm.dbg.value(metadata i32 %11, metadata !1418, metadata !DIExpression()), !dbg !1412
  br label %7, !dbg !1428, !llvm.loop !1429

12:                                               ; preds = %7
  ret void, !dbg !1431
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i32_private(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !1432 {
  %3 = alloca [396 x i32], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1451, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !1453, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.declare(metadata [396 x i32]* %3, metadata !1454, metadata !DIExpression()), !dbg !1458
  %4 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !1459
  call void @llvm.dbg.value(metadata i32* %4, metadata !1460, metadata !DIExpression()), !dbg !1452
  %5 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !1461
  %6 = getelementptr inbounds i32, i32* %5, i64 66, !dbg !1462
  call void @llvm.dbg.value(metadata i32* %6, metadata !1463, metadata !DIExpression()), !dbg !1452
  %7 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !1464
  %8 = getelementptr inbounds i32, i32* %7, i64 132, !dbg !1465
  call void @llvm.dbg.value(metadata i32* %8, metadata !1466, metadata !DIExpression()), !dbg !1452
  %9 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !1467
  %10 = getelementptr inbounds i32, i32* %9, i64 198, !dbg !1468
  call void @llvm.dbg.value(metadata i32* %10, metadata !1469, metadata !DIExpression()), !dbg !1452
  %11 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !1470
  %12 = getelementptr inbounds i32, i32* %11, i64 264, !dbg !1471
  call void @llvm.dbg.value(metadata i32* %12, metadata !1472, metadata !DIExpression()), !dbg !1452
  %13 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !1473
  %14 = getelementptr inbounds i32, i32* %13, i64 330, !dbg !1474
  call void @llvm.dbg.value(metadata i32* %14, metadata !1475, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32* %10, metadata !1476, metadata !DIExpression()), !dbg !1452
  %15 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !1477
  %16 = load i8*, i8** %15, align 8, !dbg !1477
  call void @llvm.dbg.value(metadata i8* %16, metadata !1478, metadata !DIExpression()), !dbg !1452
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !1479
  %18 = load i64, i64* %17, align 8, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %18, metadata !1480, metadata !DIExpression()), !dbg !1452
  br label %19, !dbg !1481

19:                                               ; preds = %27, %2
  %.05 = phi i64 [ %18, %2 ], [ %29, %27 ], !dbg !1452
  %.03 = phi i8* [ %16, %2 ], [ %28, %27 ], !dbg !1452
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1478, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1480, metadata !DIExpression()), !dbg !1452
  %20 = icmp ugt i64 %.05, 0, !dbg !1482
  br i1 %20, label %21, label %25, !dbg !1483

21:                                               ; preds = %19
  %22 = load i8, i8* %.03, align 1, !dbg !1484
  %23 = zext i8 %22 to i32, !dbg !1484
  %24 = icmp eq i32 %23, 0, !dbg !1485
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i1 [ false, %19 ], [ %24, %21 ], !dbg !1452
  br i1 %26, label %27, label %30, !dbg !1481

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, i8* %.03, i32 1, !dbg !1486
  call void @llvm.dbg.value(metadata i8* %28, metadata !1478, metadata !DIExpression()), !dbg !1452
  %29 = add i64 %.05, -1, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %29, metadata !1480, metadata !DIExpression()), !dbg !1452
  br label %19, !dbg !1481, !llvm.loop !1489

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !1491
  %32 = load i8*, i8** %31, align 8, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %32, metadata !1492, metadata !DIExpression()), !dbg !1452
  %33 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !1493
  %34 = load i64, i64* %33, align 8, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %34, metadata !1494, metadata !DIExpression()), !dbg !1452
  br label %35, !dbg !1495

35:                                               ; preds = %43, %30
  %.06 = phi i64 [ %34, %30 ], [ %45, %43 ], !dbg !1452
  %.04 = phi i8* [ %32, %30 ], [ %44, %43 ], !dbg !1452
  call void @llvm.dbg.value(metadata i8* %.04, metadata !1492, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %.06, metadata !1494, metadata !DIExpression()), !dbg !1452
  %36 = icmp ugt i64 %.06, 0, !dbg !1496
  br i1 %36, label %37, label %41, !dbg !1497

37:                                               ; preds = %35
  %38 = load i8, i8* %.04, align 1, !dbg !1498
  %39 = zext i8 %38 to i32, !dbg !1498
  %40 = icmp eq i32 %39, 0, !dbg !1499
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i1 [ false, %35 ], [ %40, %37 ], !dbg !1452
  br i1 %42, label %43, label %46, !dbg !1495

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, i8* %.04, i32 1, !dbg !1500
  call void @llvm.dbg.value(metadata i8* %44, metadata !1492, metadata !DIExpression()), !dbg !1452
  %45 = add i64 %.06, -1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %45, metadata !1494, metadata !DIExpression()), !dbg !1452
  br label %35, !dbg !1495, !llvm.loop !1503

46:                                               ; preds = %41
  %47 = icmp ugt i64 %.05, 260, !dbg !1505
  br i1 %47, label %50, label %48, !dbg !1507

48:                                               ; preds = %46
  %49 = icmp ugt i64 %.06, 260, !dbg !1508
  br i1 %49, label %50, label %51, !dbg !1509

50:                                               ; preds = %48, %46
  br label %100, !dbg !1510

51:                                               ; preds = %48
  call void @br_i32_decode(i32* %6, i8* %.03, i64 %.05), !dbg !1512
  %52 = getelementptr inbounds i32, i32* %6, i64 0, !dbg !1513
  %53 = load i32, i32* %52, align 4, !dbg !1513
  call void @br_i32_zero.31(i32* %8, i32 %53), !dbg !1514
  call void @br_i32_decode(i32* %4, i8* %.04, i64 %.06), !dbg !1515
  call void @br_i32_mulacc(i32* %8, i32* %6, i32* %4), !dbg !1516
  %54 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !1517
  %55 = load i32, i32* %54, align 8, !dbg !1517
  %56 = add i32 %55, 7, !dbg !1518
  %57 = lshr i32 %56, 3, !dbg !1519
  %58 = zext i32 %57 to i64, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %58, metadata !1521, metadata !DIExpression()), !dbg !1452
  %59 = getelementptr inbounds i32, i32* %8, i64 132, !dbg !1522
  %60 = bitcast i32* %59 to i8*, !dbg !1523
  call void @br_i32_encode(i8* %60, i64 %58, i32* %8), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %58, metadata !1525, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 0, metadata !1526, metadata !DIExpression()), !dbg !1452
  br label %61, !dbg !1527

61:                                               ; preds = %63, %51
  %.02 = phi i64 [ %58, %51 ], [ %64, %63 ], !dbg !1452
  %.01 = phi i32 [ 0, %51 ], [ %76, %63 ], !dbg !1452
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1526, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1525, metadata !DIExpression()), !dbg !1452
  %62 = icmp ugt i64 %.02, 0, !dbg !1528
  br i1 %62, label %63, label %77, !dbg !1527

63:                                               ; preds = %61
  %64 = add i64 %.02, -1, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %64, metadata !1525, metadata !DIExpression()), !dbg !1452
  %65 = getelementptr inbounds i32, i32* %8, i64 132, !dbg !1531
  %66 = bitcast i32* %65 to i8*, !dbg !1532
  %67 = getelementptr inbounds i8, i8* %66, i64 %64, !dbg !1532
  %68 = load i8, i8* %67, align 1, !dbg !1532
  %69 = zext i8 %68 to i32, !dbg !1532
  call void @llvm.dbg.value(metadata i32 %69, metadata !1533, metadata !DIExpression()), !dbg !1534
  %70 = getelementptr inbounds i8, i8* %0, i64 %64, !dbg !1535
  %71 = load i8, i8* %70, align 1, !dbg !1535
  %72 = zext i8 %71 to i32, !dbg !1535
  call void @llvm.dbg.value(metadata i32 %72, metadata !1536, metadata !DIExpression()), !dbg !1534
  %73 = add i32 %69, %.01, !dbg !1537
  %74 = sub i32 %72, %73, !dbg !1538
  %75 = lshr i32 %74, 8, !dbg !1539
  %76 = and i32 %75, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %76, metadata !1526, metadata !DIExpression()), !dbg !1452
  br label %61, !dbg !1527, !llvm.loop !1541

77:                                               ; preds = %61
  %78 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !1543
  %79 = load i32, i32* %78, align 4, !dbg !1543
  %80 = call i32 @br_i32_ninv32(i32 %79), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %80, metadata !1545, metadata !DIExpression()), !dbg !1452
  call void @br_i32_decode_reduce(i32* %12, i8* %0, i64 %58, i32* %6), !dbg !1546
  %81 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !1547
  %82 = load i8*, i8** %81, align 8, !dbg !1547
  %83 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !1548
  %84 = load i64, i64* %83, align 8, !dbg !1548
  call void @br_i32_modpow(i32* %12, i8* %82, i64 %84, i32* %6, i32 %80, i32* %14, i32* %8), !dbg !1549
  %85 = getelementptr inbounds i32, i32* %4, i64 1, !dbg !1550
  %86 = load i32, i32* %85, align 4, !dbg !1550
  %87 = call i32 @br_i32_ninv32(i32 %86), !dbg !1551
  call void @llvm.dbg.value(metadata i32 %87, metadata !1552, metadata !DIExpression()), !dbg !1452
  call void @br_i32_decode_reduce(i32* %10, i8* %0, i64 %58, i32* %4), !dbg !1553
  %88 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !1554
  %89 = load i8*, i8** %88, align 8, !dbg !1554
  %90 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !1555
  %91 = load i64, i64* %90, align 8, !dbg !1555
  call void @br_i32_modpow(i32* %10, i8* %89, i64 %91, i32* %4, i32 %87, i32* %14, i32* %8), !dbg !1556
  call void @br_i32_reduce(i32* %8, i32* %10, i32* %6), !dbg !1557
  %92 = call i32 @br_i32_sub(i32* %12, i32* %8, i32 1), !dbg !1558
  %93 = call i32 @br_i32_add(i32* %12, i32* %6, i32 %92), !dbg !1559
  call void @br_i32_to_monty(i32* %12, i32* %6), !dbg !1560
  %94 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !1561
  %95 = load i8*, i8** %94, align 8, !dbg !1561
  %96 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !1562
  %97 = load i64, i64* %96, align 8, !dbg !1562
  call void @br_i32_decode_reduce(i32* %14, i8* %95, i64 %97, i32* %6), !dbg !1563
  call void @br_i32_montymul(i32* %8, i32* %12, i32* %14, i32* %6, i32 %80), !dbg !1564
  call void @br_i32_mulacc(i32* %10, i32* %4, i32* %8), !dbg !1565
  call void @br_i32_encode(i8* %0, i64 %58, i32* %10), !dbg !1566
  %98 = and i32 %80, %87, !dbg !1567
  %99 = and i32 %98, %.01, !dbg !1568
  br label %100, !dbg !1569

100:                                              ; preds = %77, %50
  %.0 = phi i32 [ 0, %50 ], [ %99, %77 ], !dbg !1452
  ret i32 %.0, !dbg !1570
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i32_zero.31(i32* %0, i32 %1) #0 !dbg !1571 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1572, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i32 %1, metadata !1574, metadata !DIExpression()), !dbg !1573
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !1575
  call void @llvm.dbg.value(metadata i32* %3, metadata !1572, metadata !DIExpression()), !dbg !1573
  store i32 %1, i32* %0, align 4, !dbg !1576
  %4 = bitcast i32* %3 to i8*, !dbg !1577
  %5 = add i32 %1, 31, !dbg !1578
  %6 = lshr i32 %5, 5, !dbg !1579
  %7 = zext i32 %6 to i64, !dbg !1580
  %8 = mul i64 %7, 4, !dbg !1581
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !1577
  ret void, !dbg !1582
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!0, !3, !5, !7, !15, !18, !24, !28, !33, !35, !37, !39, !42, !44, !46, !48, !50}
!llvm.ident = !{!54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54}
!llvm.module.flags = !{!55, !56, !57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../BearSSL/src/codec/ccopy.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "decrypt.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "../BearSSL/src/int/i32_add.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "../BearSSL/src/int/i32_bitlen.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 26, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 42, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !17, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "../BearSSL/src/int/i32_decode.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!17 = !{!10, !14}
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !20, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../BearSSL/src/int/i32_decred.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!20 = !{!21, !10}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 46, baseType: !23)
!22 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !26, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../BearSSL/src/int/i32_encode.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!26 = !{!27}
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../BearSSL/src/int/i32_fmont.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!30 = !{!31, !10}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 27, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 45, baseType: !23)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "../BearSSL/src/int/i32_modpow.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "../BearSSL/src/int/i32_montmul.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "../BearSSL/src/int/i32_mulacc.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, splitDebugInlining: false, nameTableKind: None)
!40 = !DIFile(filename: "../BearSSL/src/int/i32_muladd.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!41 = !{!31, !10, !21, !14}
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../BearSSL/src/int/i32_ninv32.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../BearSSL/src/int/i32_reduce.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../BearSSL/src/int/i32_sub.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../BearSSL/src/int/i32_tmont.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !52, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../BearSSL/src/rsa/rsa_i32_priv.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!54 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!55 = !{i32 7, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = distinct !DISubprogram(name: "br_ccopy", scope: !1, file: !1, line: 29, type: !59, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !10, !61, !62, !21}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!64 = !DILocalVariable(name: "ctl", arg: 1, scope: !58, file: !1, line: 29, type: !10)
!65 = !DILocation(line: 0, scope: !58)
!66 = !DILocalVariable(name: "dst", arg: 2, scope: !58, file: !1, line: 29, type: !61)
!67 = !DILocalVariable(name: "src", arg: 3, scope: !58, file: !1, line: 29, type: !62)
!68 = !DILocalVariable(name: "len", arg: 4, scope: !58, file: !1, line: 29, type: !21)
!69 = !DILocalVariable(name: "d", scope: !58, file: !1, line: 31, type: !53)
!70 = !DILocalVariable(name: "s", scope: !58, file: !1, line: 32, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!73 = !DILocation(line: 36, column: 2, scope: !58)
!74 = !DILocation(line: 36, column: 13, scope: !58)
!75 = !DILocation(line: 36, column: 16, scope: !58)
!76 = !DILocation(line: 39, column: 10, scope: !77)
!77 = distinct !DILexicalBlock(scope: !58, file: !1, line: 36, column: 21)
!78 = !DILocation(line: 39, column: 7, scope: !77)
!79 = !DILocalVariable(name: "x", scope: !77, file: !1, line: 37, type: !10)
!80 = !DILocation(line: 0, scope: !77)
!81 = !DILocation(line: 40, column: 7, scope: !77)
!82 = !DILocalVariable(name: "y", scope: !77, file: !1, line: 37, type: !10)
!83 = !DILocation(line: 41, column: 8, scope: !77)
!84 = !DILocation(line: 41, column: 6, scope: !77)
!85 = !DILocation(line: 42, column: 5, scope: !77)
!86 = distinct !{!86, !73, !87, !88}
!87 = !DILocation(line: 43, column: 2, scope: !58)
!88 = !{!"llvm.loop.mustprogress"}
!89 = !DILocation(line: 44, column: 1, scope: !58)
!90 = distinct !DISubprogram(name: "MUX", scope: !91, file: !91, line: 770, type: !92, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!91 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!92 = !DISubroutineType(types: !93)
!93 = !{!10, !10, !10, !10}
!94 = !DILocalVariable(name: "ctl", arg: 1, scope: !90, file: !91, line: 770, type: !10)
!95 = !DILocation(line: 0, scope: !90)
!96 = !DILocalVariable(name: "x", arg: 2, scope: !90, file: !91, line: 770, type: !10)
!97 = !DILocalVariable(name: "y", arg: 3, scope: !90, file: !91, line: 770, type: !10)
!98 = !DILocation(line: 772, column: 14, scope: !90)
!99 = !DILocation(line: 772, column: 24, scope: !90)
!100 = !DILocation(line: 772, column: 19, scope: !90)
!101 = !DILocation(line: 772, column: 11, scope: !90)
!102 = !DILocation(line: 772, column: 2, scope: !90)
!103 = distinct !DISubprogram(name: "decrypt_wrapper", scope: !4, file: !4, line: 3, type: !104, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !53, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !109, line: 205, baseType: !110)
!109 = !DIFile(filename: "../BearSSL/inc/bearssl_rsa.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 182, size: 704, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !110, file: !109, line: 184, baseType: !10, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !110, file: !109, line: 186, baseType: !53, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !110, file: !109, line: 188, baseType: !21, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !110, file: !109, line: 190, baseType: !53, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !110, file: !109, line: 192, baseType: !21, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !110, file: !109, line: 194, baseType: !53, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !110, file: !109, line: 196, baseType: !21, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !110, file: !109, line: 198, baseType: !53, size: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !110, file: !109, line: 200, baseType: !21, size: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !110, file: !109, line: 202, baseType: !53, size: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !110, file: !109, line: 204, baseType: !21, size: 64, offset: 640)
!123 = !DILocalVariable(name: "x", arg: 1, scope: !103, file: !4, line: 3, type: !53)
!124 = !DILocation(line: 0, scope: !103)
!125 = !DILocalVariable(name: "sk", arg: 2, scope: !103, file: !4, line: 3, type: !106)
!126 = !DILocation(line: 4, column: 12, scope: !103)
!127 = !DILocation(line: 4, column: 2, scope: !103)
!128 = !DILocation(line: 5, column: 12, scope: !103)
!129 = !DILocation(line: 5, column: 2, scope: !103)
!130 = !DILocation(line: 6, column: 30, scope: !103)
!131 = !DILocation(line: 6, column: 12, scope: !103)
!132 = !DILocation(line: 6, column: 2, scope: !103)
!133 = !DILocation(line: 7, column: 30, scope: !103)
!134 = !DILocation(line: 7, column: 12, scope: !103)
!135 = !DILocation(line: 7, column: 2, scope: !103)
!136 = !DILocation(line: 8, column: 30, scope: !103)
!137 = !DILocation(line: 8, column: 12, scope: !103)
!138 = !DILocation(line: 8, column: 2, scope: !103)
!139 = !DILocation(line: 9, column: 30, scope: !103)
!140 = !DILocation(line: 9, column: 12, scope: !103)
!141 = !DILocation(line: 9, column: 2, scope: !103)
!142 = !DILocation(line: 10, column: 30, scope: !103)
!143 = !DILocation(line: 10, column: 12, scope: !103)
!144 = !DILocation(line: 10, column: 2, scope: !103)
!145 = !DILocation(line: 12, column: 30, scope: !103)
!146 = !DILocation(line: 12, column: 12, scope: !103)
!147 = !DILocation(line: 12, column: 2, scope: !103)
!148 = !DILocation(line: 13, column: 30, scope: !103)
!149 = !DILocation(line: 13, column: 12, scope: !103)
!150 = !DILocation(line: 13, column: 2, scope: !103)
!151 = !DILocation(line: 14, column: 30, scope: !103)
!152 = !DILocation(line: 14, column: 12, scope: !103)
!153 = !DILocation(line: 14, column: 2, scope: !103)
!154 = !DILocation(line: 15, column: 30, scope: !103)
!155 = !DILocation(line: 15, column: 12, scope: !103)
!156 = !DILocation(line: 15, column: 2, scope: !103)
!157 = !DILocation(line: 16, column: 30, scope: !103)
!158 = !DILocation(line: 16, column: 12, scope: !103)
!159 = !DILocation(line: 16, column: 2, scope: !103)
!160 = !DILocation(line: 18, column: 30, scope: !103)
!161 = !DILocation(line: 18, column: 12, scope: !103)
!162 = !DILocation(line: 18, column: 2, scope: !103)
!163 = !DILocation(line: 21, column: 2, scope: !103)
!164 = !DILocation(line: 22, column: 1, scope: !103)
!165 = distinct !DISubprogram(name: "decrypt_wrapper_t", scope: !4, file: !4, line: 34, type: !166, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!166 = !DISubroutineType(types: !167)
!167 = !{null}
!168 = !DILocalVariable(name: "xx", scope: !165, file: !4, line: 35, type: !27)
!169 = !DILocation(line: 35, column: 15, scope: !165)
!170 = !DILocation(line: 35, column: 20, scope: !165)
!171 = !DILocalVariable(name: "x", scope: !165, file: !4, line: 36, type: !53)
!172 = !DILocation(line: 0, scope: !165)
!173 = !DILocalVariable(name: "key", scope: !165, file: !4, line: 37, type: !108)
!174 = !DILocation(line: 37, column: 20, scope: !165)
!175 = !DILocation(line: 37, column: 26, scope: !165)
!176 = !DILocalVariable(name: "sk", scope: !165, file: !4, line: 38, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!178 = !DILocation(line: 39, column: 24, scope: !165)
!179 = !DILocalVariable(name: "p", scope: !165, file: !4, line: 39, type: !53)
!180 = !DILocation(line: 40, column: 24, scope: !165)
!181 = !DILocalVariable(name: "q", scope: !165, file: !4, line: 40, type: !53)
!182 = !DILocation(line: 41, column: 25, scope: !165)
!183 = !DILocalVariable(name: "dp", scope: !165, file: !4, line: 41, type: !53)
!184 = !DILocation(line: 42, column: 25, scope: !165)
!185 = !DILocalVariable(name: "dq", scope: !165, file: !4, line: 42, type: !53)
!186 = !DILocation(line: 43, column: 25, scope: !165)
!187 = !DILocalVariable(name: "iq", scope: !165, file: !4, line: 43, type: !53)
!188 = !DILocation(line: 45, column: 1, scope: !165)
!189 = !DILocation(line: 47, column: 5, scope: !165)
!190 = !DILocation(line: 47, column: 7, scope: !165)
!191 = !DILocation(line: 48, column: 5, scope: !165)
!192 = !DILocation(line: 48, column: 7, scope: !165)
!193 = !DILocation(line: 49, column: 5, scope: !165)
!194 = !DILocation(line: 49, column: 8, scope: !165)
!195 = !DILocation(line: 50, column: 5, scope: !165)
!196 = !DILocation(line: 50, column: 8, scope: !165)
!197 = !DILocation(line: 51, column: 5, scope: !165)
!198 = !DILocation(line: 51, column: 8, scope: !165)
!199 = !DILocation(line: 52, column: 1, scope: !165)
!200 = !DILocation(line: 54, column: 1, scope: !165)
!201 = distinct !DISubprogram(name: "br_i32_add", scope: !6, file: !6, line: 29, type: !202, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !2)
!202 = !DISubroutineType(types: !203)
!203 = !{!10, !204, !205, !10}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!207 = !DILocalVariable(name: "a", arg: 1, scope: !201, file: !6, line: 29, type: !204)
!208 = !DILocation(line: 0, scope: !201)
!209 = !DILocalVariable(name: "b", arg: 2, scope: !201, file: !6, line: 29, type: !205)
!210 = !DILocalVariable(name: "ctl", arg: 3, scope: !201, file: !6, line: 29, type: !10)
!211 = !DILocalVariable(name: "cc", scope: !201, file: !6, line: 31, type: !10)
!212 = !DILocation(line: 35, column: 7, scope: !201)
!213 = !DILocation(line: 35, column: 12, scope: !201)
!214 = !DILocation(line: 35, column: 18, scope: !201)
!215 = !DILocation(line: 35, column: 6, scope: !201)
!216 = !DILocalVariable(name: "m", scope: !201, file: !6, line: 32, type: !21)
!217 = !DILocalVariable(name: "u", scope: !201, file: !6, line: 32, type: !21)
!218 = !DILocation(line: 36, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !201, file: !6, line: 36, column: 2)
!220 = !DILocation(line: 0, scope: !219)
!221 = !DILocation(line: 36, column: 16, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !6, line: 36, column: 2)
!223 = !DILocation(line: 36, column: 2, scope: !219)
!224 = !DILocation(line: 39, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !6, line: 36, column: 27)
!226 = !DILocalVariable(name: "aw", scope: !225, file: !6, line: 37, type: !10)
!227 = !DILocation(line: 0, scope: !225)
!228 = !DILocation(line: 40, column: 8, scope: !225)
!229 = !DILocalVariable(name: "bw", scope: !225, file: !6, line: 37, type: !10)
!230 = !DILocation(line: 41, column: 12, scope: !225)
!231 = !DILocation(line: 41, column: 17, scope: !225)
!232 = !DILocalVariable(name: "naw", scope: !225, file: !6, line: 37, type: !10)
!233 = !DILocation(line: 47, column: 14, scope: !225)
!234 = !DILocation(line: 47, column: 12, scope: !225)
!235 = !DILocation(line: 47, column: 29, scope: !225)
!236 = !DILocation(line: 47, column: 27, scope: !225)
!237 = !DILocation(line: 48, column: 10, scope: !225)
!238 = !DILocation(line: 48, column: 3, scope: !225)
!239 = !DILocation(line: 48, column: 8, scope: !225)
!240 = !DILocation(line: 49, column: 2, scope: !225)
!241 = !DILocation(line: 36, column: 23, scope: !222)
!242 = !DILocation(line: 36, column: 2, scope: !222)
!243 = distinct !{!243, !223, !244, !88}
!244 = !DILocation(line: 49, column: 2, scope: !219)
!245 = !DILocation(line: 50, column: 2, scope: !201)
!246 = distinct !DISubprogram(name: "EQ", scope: !91, file: !91, line: 779, type: !247, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!247 = !DISubroutineType(types: !248)
!248 = !{!10, !10, !10}
!249 = !DILocalVariable(name: "x", arg: 1, scope: !246, file: !91, line: 779, type: !10)
!250 = !DILocation(line: 0, scope: !246)
!251 = !DILocalVariable(name: "y", arg: 2, scope: !246, file: !91, line: 779, type: !10)
!252 = !DILocation(line: 783, column: 8, scope: !246)
!253 = !DILocalVariable(name: "q", scope: !246, file: !91, line: 781, type: !10)
!254 = !DILocation(line: 784, column: 18, scope: !246)
!255 = !DILocation(line: 784, column: 16, scope: !246)
!256 = !DILocation(line: 784, column: 22, scope: !246)
!257 = !DILocation(line: 784, column: 9, scope: !246)
!258 = !DILocation(line: 784, column: 2, scope: !246)
!259 = distinct !DISubprogram(name: "GT", scope: !91, file: !91, line: 803, type: !247, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!260 = !DILocalVariable(name: "x", arg: 1, scope: !259, file: !91, line: 803, type: !10)
!261 = !DILocation(line: 0, scope: !259)
!262 = !DILocalVariable(name: "y", arg: 2, scope: !259, file: !91, line: 803, type: !10)
!263 = !DILocation(line: 819, column: 8, scope: !259)
!264 = !DILocalVariable(name: "z", scope: !259, file: !91, line: 817, type: !10)
!265 = !DILocation(line: 820, column: 18, scope: !259)
!266 = !DILocation(line: 820, column: 28, scope: !259)
!267 = !DILocation(line: 820, column: 23, scope: !259)
!268 = !DILocation(line: 820, column: 12, scope: !259)
!269 = !DILocation(line: 820, column: 35, scope: !259)
!270 = !DILocation(line: 820, column: 2, scope: !259)
!271 = distinct !DISubprogram(name: "MUX", scope: !91, file: !91, line: 770, type: !92, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!272 = !DILocalVariable(name: "ctl", arg: 1, scope: !271, file: !91, line: 770, type: !10)
!273 = !DILocation(line: 0, scope: !271)
!274 = !DILocalVariable(name: "x", arg: 2, scope: !271, file: !91, line: 770, type: !10)
!275 = !DILocalVariable(name: "y", arg: 3, scope: !271, file: !91, line: 770, type: !10)
!276 = !DILocation(line: 772, column: 14, scope: !271)
!277 = !DILocation(line: 772, column: 24, scope: !271)
!278 = !DILocation(line: 772, column: 19, scope: !271)
!279 = !DILocation(line: 772, column: 11, scope: !271)
!280 = !DILocation(line: 772, column: 2, scope: !271)
!281 = distinct !DISubprogram(name: "NOT", scope: !91, file: !91, line: 761, type: !282, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!282 = !DISubroutineType(types: !283)
!283 = !{!10, !10}
!284 = !DILocalVariable(name: "ctl", arg: 1, scope: !281, file: !91, line: 761, type: !10)
!285 = !DILocation(line: 0, scope: !281)
!286 = !DILocation(line: 763, column: 13, scope: !281)
!287 = !DILocation(line: 763, column: 2, scope: !281)
!288 = distinct !DISubprogram(name: "br_i32_bit_length", scope: !8, file: !8, line: 29, type: !289, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!289 = !DISubroutineType(types: !290)
!290 = !{!10, !204, !21}
!291 = !DILocalVariable(name: "x", arg: 1, scope: !288, file: !8, line: 29, type: !204)
!292 = !DILocation(line: 0, scope: !288)
!293 = !DILocalVariable(name: "xlen", arg: 2, scope: !288, file: !8, line: 29, type: !21)
!294 = !DILocalVariable(name: "tw", scope: !288, file: !8, line: 31, type: !10)
!295 = !DILocalVariable(name: "twk", scope: !288, file: !8, line: 31, type: !10)
!296 = !DILocation(line: 35, column: 2, scope: !288)
!297 = !DILocation(line: 35, column: 14, scope: !288)
!298 = !DILocation(line: 35, column: 17, scope: !288)
!299 = !DILocation(line: 38, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !288, file: !8, line: 35, column: 22)
!301 = !DILocalVariable(name: "c", scope: !300, file: !8, line: 36, type: !10)
!302 = !DILocation(line: 0, scope: !300)
!303 = !DILocation(line: 39, column: 7, scope: !300)
!304 = !DILocalVariable(name: "w", scope: !300, file: !8, line: 36, type: !10)
!305 = !DILocation(line: 40, column: 8, scope: !300)
!306 = !DILocation(line: 41, column: 16, scope: !300)
!307 = !DILocation(line: 41, column: 9, scope: !300)
!308 = distinct !{!308, !296, !309, !88}
!309 = !DILocation(line: 42, column: 2, scope: !288)
!310 = !DILocation(line: 43, column: 14, scope: !288)
!311 = !DILocation(line: 43, column: 22, scope: !288)
!312 = !DILocation(line: 43, column: 20, scope: !288)
!313 = !DILocation(line: 43, column: 2, scope: !288)
!314 = distinct !DISubprogram(name: "EQ", scope: !91, file: !91, line: 779, type: !247, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!315 = !DILocalVariable(name: "x", arg: 1, scope: !314, file: !91, line: 779, type: !10)
!316 = !DILocation(line: 0, scope: !314)
!317 = !DILocalVariable(name: "y", arg: 2, scope: !314, file: !91, line: 779, type: !10)
!318 = !DILocation(line: 783, column: 8, scope: !314)
!319 = !DILocalVariable(name: "q", scope: !314, file: !91, line: 781, type: !10)
!320 = !DILocation(line: 784, column: 18, scope: !314)
!321 = !DILocation(line: 784, column: 16, scope: !314)
!322 = !DILocation(line: 784, column: 22, scope: !314)
!323 = !DILocation(line: 784, column: 9, scope: !314)
!324 = !DILocation(line: 784, column: 2, scope: !314)
!325 = distinct !DISubprogram(name: "MUX", scope: !91, file: !91, line: 770, type: !92, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!326 = !DILocalVariable(name: "ctl", arg: 1, scope: !325, file: !91, line: 770, type: !10)
!327 = !DILocation(line: 0, scope: !325)
!328 = !DILocalVariable(name: "x", arg: 2, scope: !325, file: !91, line: 770, type: !10)
!329 = !DILocalVariable(name: "y", arg: 3, scope: !325, file: !91, line: 770, type: !10)
!330 = !DILocation(line: 772, column: 14, scope: !325)
!331 = !DILocation(line: 772, column: 24, scope: !325)
!332 = !DILocation(line: 772, column: 19, scope: !325)
!333 = !DILocation(line: 772, column: 11, scope: !325)
!334 = !DILocation(line: 772, column: 2, scope: !325)
!335 = distinct !DISubprogram(name: "BIT_LENGTH", scope: !91, file: !91, line: 915, type: !282, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!336 = !DILocalVariable(name: "x", arg: 1, scope: !335, file: !91, line: 915, type: !10)
!337 = !DILocation(line: 0, scope: !335)
!338 = !DILocation(line: 919, column: 6, scope: !335)
!339 = !DILocalVariable(name: "k", scope: !335, file: !91, line: 917, type: !10)
!340 = !DILocation(line: 920, column: 6, scope: !335)
!341 = !DILocalVariable(name: "c", scope: !335, file: !91, line: 917, type: !10)
!342 = !DILocation(line: 920, column: 34, scope: !335)
!343 = !DILocation(line: 920, column: 25, scope: !335)
!344 = !DILocation(line: 920, column: 52, scope: !335)
!345 = !DILocation(line: 920, column: 47, scope: !335)
!346 = !DILocation(line: 921, column: 6, scope: !335)
!347 = !DILocation(line: 921, column: 34, scope: !335)
!348 = !DILocation(line: 921, column: 25, scope: !335)
!349 = !DILocation(line: 921, column: 52, scope: !335)
!350 = !DILocation(line: 921, column: 47, scope: !335)
!351 = !DILocation(line: 922, column: 6, scope: !335)
!352 = !DILocation(line: 922, column: 34, scope: !335)
!353 = !DILocation(line: 922, column: 25, scope: !335)
!354 = !DILocation(line: 922, column: 52, scope: !335)
!355 = !DILocation(line: 922, column: 47, scope: !335)
!356 = !DILocation(line: 923, column: 6, scope: !335)
!357 = !DILocation(line: 923, column: 34, scope: !335)
!358 = !DILocation(line: 923, column: 25, scope: !335)
!359 = !DILocation(line: 923, column: 52, scope: !335)
!360 = !DILocation(line: 923, column: 47, scope: !335)
!361 = !DILocation(line: 924, column: 7, scope: !335)
!362 = !DILocation(line: 924, column: 4, scope: !335)
!363 = !DILocation(line: 925, column: 2, scope: !335)
!364 = distinct !DISubprogram(name: "NEQ", scope: !91, file: !91, line: 791, type: !247, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!365 = !DILocalVariable(name: "x", arg: 1, scope: !364, file: !91, line: 791, type: !10)
!366 = !DILocation(line: 0, scope: !364)
!367 = !DILocalVariable(name: "y", arg: 2, scope: !364, file: !91, line: 791, type: !10)
!368 = !DILocation(line: 795, column: 8, scope: !364)
!369 = !DILocalVariable(name: "q", scope: !364, file: !91, line: 793, type: !10)
!370 = !DILocation(line: 796, column: 14, scope: !364)
!371 = !DILocation(line: 796, column: 12, scope: !364)
!372 = !DILocation(line: 796, column: 18, scope: !364)
!373 = !DILocation(line: 796, column: 2, scope: !364)
!374 = distinct !DISubprogram(name: "GT", scope: !91, file: !91, line: 803, type: !247, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!375 = !DILocalVariable(name: "x", arg: 1, scope: !374, file: !91, line: 803, type: !10)
!376 = !DILocation(line: 0, scope: !374)
!377 = !DILocalVariable(name: "y", arg: 2, scope: !374, file: !91, line: 803, type: !10)
!378 = !DILocation(line: 819, column: 8, scope: !374)
!379 = !DILocalVariable(name: "z", scope: !374, file: !91, line: 817, type: !10)
!380 = !DILocation(line: 820, column: 18, scope: !374)
!381 = !DILocation(line: 820, column: 28, scope: !374)
!382 = !DILocation(line: 820, column: 23, scope: !374)
!383 = !DILocation(line: 820, column: 12, scope: !374)
!384 = !DILocation(line: 820, column: 35, scope: !374)
!385 = !DILocation(line: 820, column: 2, scope: !374)
!386 = distinct !DISubprogram(name: "NOT", scope: !91, file: !91, line: 761, type: !282, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!387 = !DILocalVariable(name: "ctl", arg: 1, scope: !386, file: !91, line: 761, type: !10)
!388 = !DILocation(line: 0, scope: !386)
!389 = !DILocation(line: 763, column: 13, scope: !386)
!390 = !DILocation(line: 763, column: 2, scope: !386)
!391 = distinct !DISubprogram(name: "br_i32_decode", scope: !16, file: !16, line: 29, type: !392, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !2)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !204, !62, !21}
!394 = !DILocalVariable(name: "x", arg: 1, scope: !391, file: !16, line: 29, type: !204)
!395 = !DILocation(line: 0, scope: !391)
!396 = !DILocalVariable(name: "src", arg: 2, scope: !391, file: !16, line: 29, type: !62)
!397 = !DILocalVariable(name: "len", arg: 3, scope: !391, file: !16, line: 29, type: !21)
!398 = !DILocalVariable(name: "buf", scope: !391, file: !16, line: 31, type: !71)
!399 = !DILocalVariable(name: "u", scope: !391, file: !16, line: 32, type: !21)
!400 = !DILocalVariable(name: "v", scope: !391, file: !16, line: 32, type: !21)
!401 = !DILocation(line: 37, column: 2, scope: !391)
!402 = !DILocation(line: 38, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !16, line: 38, column: 7)
!404 = distinct !DILexicalBlock(scope: !405, file: !16, line: 37, column: 11)
!405 = distinct !DILexicalBlock(scope: !406, file: !16, line: 37, column: 2)
!406 = distinct !DILexicalBlock(scope: !391, file: !16, line: 37, column: 2)
!407 = !DILocation(line: 38, column: 7, scope: !404)
!408 = !DILocation(line: 41, column: 10, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !16, line: 41, column: 8)
!410 = distinct !DILexicalBlock(scope: !403, file: !16, line: 38, column: 14)
!411 = !DILocation(line: 41, column: 8, scope: !410)
!412 = !DILocation(line: 42, column: 11, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !16, line: 42, column: 9)
!414 = distinct !DILexicalBlock(scope: !409, file: !16, line: 41, column: 15)
!415 = !DILocation(line: 42, column: 9, scope: !414)
!416 = !DILocation(line: 43, column: 6, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !16, line: 42, column: 17)
!418 = !DILocation(line: 45, column: 10, scope: !419)
!419 = distinct !DILexicalBlock(scope: !413, file: !16, line: 44, column: 12)
!420 = !DILocalVariable(name: "w", scope: !410, file: !16, line: 39, type: !10)
!421 = !DILocation(line: 0, scope: !410)
!422 = !DILocation(line: 47, column: 4, scope: !414)
!423 = !DILocation(line: 48, column: 11, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !16, line: 48, column: 9)
!425 = distinct !DILexicalBlock(scope: !409, file: !16, line: 47, column: 11)
!426 = !DILocation(line: 48, column: 9, scope: !425)
!427 = !DILocation(line: 49, column: 10, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !16, line: 48, column: 17)
!429 = !DILocation(line: 50, column: 5, scope: !428)
!430 = !DILocation(line: 51, column: 21, scope: !431)
!431 = distinct !DILexicalBlock(scope: !424, file: !16, line: 50, column: 12)
!432 = !DILocation(line: 51, column: 11, scope: !431)
!433 = !DILocation(line: 51, column: 28, scope: !431)
!434 = !DILocation(line: 52, column: 24, scope: !431)
!435 = !DILocation(line: 52, column: 9, scope: !431)
!436 = !DILocation(line: 52, column: 7, scope: !431)
!437 = !DILocation(line: 0, scope: !424)
!438 = !DILocation(line: 0, scope: !409)
!439 = !DILocation(line: 55, column: 8, scope: !410)
!440 = !DILocation(line: 55, column: 4, scope: !410)
!441 = !DILocation(line: 55, column: 12, scope: !410)
!442 = !DILocation(line: 56, column: 4, scope: !410)
!443 = !DILocation(line: 58, column: 6, scope: !444)
!444 = distinct !DILexicalBlock(scope: !403, file: !16, line: 57, column: 10)
!445 = !DILocation(line: 59, column: 29, scope: !444)
!446 = !DILocation(line: 59, column: 14, scope: !444)
!447 = !DILocation(line: 59, column: 8, scope: !444)
!448 = !DILocation(line: 59, column: 4, scope: !444)
!449 = !DILocation(line: 59, column: 12, scope: !444)
!450 = !DILocation(line: 37, column: 2, scope: !405)
!451 = distinct !{!451, !452, !453}
!452 = !DILocation(line: 37, column: 2, scope: !406)
!453 = !DILocation(line: 61, column: 2, scope: !406)
!454 = !DILocation(line: 62, column: 14, scope: !391)
!455 = !DILocation(line: 62, column: 19, scope: !391)
!456 = !DILocation(line: 62, column: 9, scope: !391)
!457 = !DILocation(line: 62, column: 2, scope: !391)
!458 = !DILocation(line: 62, column: 7, scope: !391)
!459 = !DILocation(line: 63, column: 1, scope: !391)
!460 = distinct !DISubprogram(name: "br_dec16be", scope: !91, file: !91, line: 529, type: !461, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!461 = !DISubroutineType(types: !462)
!462 = !{!14, !62}
!463 = !DILocalVariable(name: "src", arg: 1, scope: !460, file: !91, line: 529, type: !62)
!464 = !DILocation(line: 0, scope: !460)
!465 = !DILocalVariable(name: "buf", scope: !460, file: !91, line: 534, type: !71)
!466 = !DILocation(line: 537, column: 20, scope: !460)
!467 = !DILocation(line: 537, column: 10, scope: !460)
!468 = !DILocation(line: 537, column: 27, scope: !460)
!469 = !DILocation(line: 537, column: 45, scope: !460)
!470 = !DILocation(line: 537, column: 35, scope: !460)
!471 = !DILocation(line: 537, column: 33, scope: !460)
!472 = !DILocation(line: 537, column: 2, scope: !460)
!473 = distinct !DISubprogram(name: "br_dec32be", scope: !91, file: !91, line: 590, type: !474, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!474 = !DISubroutineType(types: !475)
!475 = !{!10, !62}
!476 = !DILocalVariable(name: "src", arg: 1, scope: !473, file: !91, line: 590, type: !62)
!477 = !DILocation(line: 0, scope: !473)
!478 = !DILocalVariable(name: "buf", scope: !473, file: !91, line: 595, type: !71)
!479 = !DILocation(line: 598, column: 20, scope: !473)
!480 = !DILocation(line: 598, column: 10, scope: !473)
!481 = !DILocation(line: 598, column: 27, scope: !473)
!482 = !DILocation(line: 599, column: 16, scope: !473)
!483 = !DILocation(line: 599, column: 6, scope: !473)
!484 = !DILocation(line: 599, column: 23, scope: !473)
!485 = !DILocation(line: 599, column: 3, scope: !473)
!486 = !DILocation(line: 600, column: 16, scope: !473)
!487 = !DILocation(line: 600, column: 6, scope: !473)
!488 = !DILocation(line: 600, column: 23, scope: !473)
!489 = !DILocation(line: 600, column: 3, scope: !473)
!490 = !DILocation(line: 601, column: 15, scope: !473)
!491 = !DILocation(line: 601, column: 5, scope: !473)
!492 = !DILocation(line: 601, column: 3, scope: !473)
!493 = !DILocation(line: 598, column: 2, scope: !473)
!494 = distinct !DISubprogram(name: "br_i32_decode_reduce", scope: !19, file: !19, line: 29, type: !495, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !2)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !204, !62, !21, !205}
!497 = !DILocalVariable(name: "x", arg: 1, scope: !494, file: !19, line: 29, type: !204)
!498 = !DILocation(line: 0, scope: !494)
!499 = !DILocalVariable(name: "src", arg: 2, scope: !494, file: !19, line: 30, type: !62)
!500 = !DILocalVariable(name: "len", arg: 3, scope: !494, file: !19, line: 30, type: !21)
!501 = !DILocalVariable(name: "m", arg: 4, scope: !494, file: !19, line: 30, type: !205)
!502 = !DILocation(line: 36, column: 13, scope: !494)
!503 = !DILocalVariable(name: "m_bitlen", scope: !494, file: !19, line: 32, type: !10)
!504 = !DILocation(line: 41, column: 15, scope: !505)
!505 = distinct !DILexicalBlock(scope: !494, file: !19, line: 41, column: 6)
!506 = !DILocation(line: 41, column: 6, scope: !494)
!507 = !DILocation(line: 42, column: 3, scope: !508)
!508 = distinct !DILexicalBlock(scope: !505, file: !19, line: 41, column: 21)
!509 = !DILocation(line: 42, column: 8, scope: !508)
!510 = !DILocation(line: 43, column: 3, scope: !508)
!511 = !DILocation(line: 49, column: 2, scope: !494)
!512 = !DILocation(line: 56, column: 20, scope: !494)
!513 = !DILocation(line: 56, column: 25, scope: !494)
!514 = !DILocation(line: 56, column: 10, scope: !494)
!515 = !DILocalVariable(name: "mblen", scope: !494, file: !19, line: 33, type: !21)
!516 = !DILocation(line: 57, column: 12, scope: !494)
!517 = !DILocalVariable(name: "k", scope: !494, file: !19, line: 33, type: !21)
!518 = !DILocation(line: 62, column: 8, scope: !519)
!519 = distinct !DILexicalBlock(scope: !494, file: !19, line: 62, column: 6)
!520 = !DILocation(line: 62, column: 6, scope: !494)
!521 = !DILocation(line: 63, column: 3, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !19, line: 62, column: 16)
!523 = !DILocation(line: 64, column: 3, scope: !522)
!524 = !DILocation(line: 64, column: 8, scope: !522)
!525 = !DILocation(line: 65, column: 3, scope: !522)
!526 = !DILocalVariable(name: "buf", scope: !494, file: !19, line: 34, type: !71)
!527 = !DILocation(line: 74, column: 11, scope: !494)
!528 = !DILocation(line: 74, column: 15, scope: !494)
!529 = !DILocation(line: 74, column: 20, scope: !494)
!530 = !DILocalVariable(name: "q", scope: !494, file: !19, line: 33, type: !21)
!531 = !DILocation(line: 82, column: 8, scope: !532)
!532 = distinct !DILexicalBlock(scope: !494, file: !19, line: 82, column: 6)
!533 = !DILocation(line: 82, column: 6, scope: !494)
!534 = !DILocalVariable(name: "w", scope: !535, file: !19, line: 84, type: !10)
!535 = distinct !DILexicalBlock(scope: !532, file: !19, line: 82, column: 15)
!536 = !DILocation(line: 0, scope: !535)
!537 = !DILocalVariable(name: "i", scope: !535, file: !19, line: 83, type: !538)
!538 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!539 = !DILocation(line: 87, column: 8, scope: !540)
!540 = distinct !DILexicalBlock(scope: !535, file: !19, line: 87, column: 3)
!541 = !DILocation(line: 0, scope: !540)
!542 = !DILocation(line: 87, column: 17, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !19, line: 87, column: 3)
!544 = !DILocation(line: 87, column: 3, scope: !540)
!545 = !DILocation(line: 88, column: 6, scope: !546)
!546 = distinct !DILexicalBlock(scope: !543, file: !19, line: 87, column: 28)
!547 = !DILocation(line: 89, column: 10, scope: !548)
!548 = distinct !DILexicalBlock(scope: !546, file: !19, line: 89, column: 8)
!549 = !DILocation(line: 89, column: 8, scope: !546)
!550 = !DILocation(line: 90, column: 18, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !19, line: 89, column: 18)
!552 = !DILocation(line: 90, column: 10, scope: !551)
!553 = !DILocation(line: 90, column: 7, scope: !551)
!554 = !DILocation(line: 91, column: 4, scope: !551)
!555 = !DILocation(line: 0, scope: !546)
!556 = !DILocation(line: 92, column: 6, scope: !546)
!557 = !DILocation(line: 93, column: 3, scope: !546)
!558 = !DILocation(line: 87, column: 24, scope: !543)
!559 = !DILocation(line: 87, column: 3, scope: !543)
!560 = distinct !{!560, !544, !561, !88}
!561 = !DILocation(line: 93, column: 3, scope: !540)
!562 = !DILocation(line: 94, column: 3, scope: !535)
!563 = !DILocation(line: 95, column: 2, scope: !535)
!564 = !DILocation(line: 96, column: 29, scope: !565)
!565 = distinct !DILexicalBlock(scope: !532, file: !19, line: 95, column: 9)
!566 = !DILocation(line: 96, column: 3, scope: !565)
!567 = !DILocation(line: 97, column: 3, scope: !565)
!568 = !DILocation(line: 97, column: 8, scope: !565)
!569 = !DILocation(line: 74, column: 4, scope: !494)
!570 = !DILocation(line: 104, column: 15, scope: !571)
!571 = distinct !DILexicalBlock(scope: !494, file: !19, line: 104, column: 2)
!572 = !DILocation(line: 104, column: 7, scope: !571)
!573 = !DILocation(line: 0, scope: !571)
!574 = !DILocation(line: 104, column: 22, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !19, line: 104, column: 2)
!576 = !DILocation(line: 104, column: 2, scope: !571)
!577 = !DILocation(line: 105, column: 41, scope: !578)
!578 = distinct !DILexicalBlock(scope: !575, file: !19, line: 104, column: 37)
!579 = !DILocation(line: 105, column: 26, scope: !578)
!580 = !DILocation(line: 105, column: 3, scope: !578)
!581 = !DILocation(line: 106, column: 2, scope: !578)
!582 = !DILocation(line: 104, column: 31, scope: !575)
!583 = !DILocation(line: 104, column: 2, scope: !575)
!584 = distinct !{!584, !576, !585, !88}
!585 = !DILocation(line: 106, column: 2, scope: !571)
!586 = !DILocation(line: 107, column: 1, scope: !494)
!587 = distinct !DISubprogram(name: "br_i32_zero", scope: !91, file: !91, line: 1235, type: !588, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !2)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !204, !10}
!590 = !DILocalVariable(name: "x", arg: 1, scope: !587, file: !91, line: 1235, type: !204)
!591 = !DILocation(line: 0, scope: !587)
!592 = !DILocalVariable(name: "bit_len", arg: 2, scope: !587, file: !91, line: 1235, type: !10)
!593 = !DILocation(line: 1237, column: 5, scope: !587)
!594 = !DILocation(line: 1237, column: 8, scope: !587)
!595 = !DILocation(line: 1238, column: 2, scope: !587)
!596 = !DILocation(line: 1238, column: 25, scope: !587)
!597 = !DILocation(line: 1238, column: 31, scope: !587)
!598 = !DILocation(line: 1238, column: 15, scope: !587)
!599 = !DILocation(line: 1238, column: 37, scope: !587)
!600 = !DILocation(line: 1239, column: 1, scope: !587)
!601 = distinct !DISubprogram(name: "br_dec32be", scope: !91, file: !91, line: 590, type: !474, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !2)
!602 = !DILocalVariable(name: "src", arg: 1, scope: !601, file: !91, line: 590, type: !62)
!603 = !DILocation(line: 0, scope: !601)
!604 = !DILocalVariable(name: "buf", scope: !601, file: !91, line: 595, type: !71)
!605 = !DILocation(line: 598, column: 20, scope: !601)
!606 = !DILocation(line: 598, column: 10, scope: !601)
!607 = !DILocation(line: 598, column: 27, scope: !601)
!608 = !DILocation(line: 599, column: 16, scope: !601)
!609 = !DILocation(line: 599, column: 6, scope: !601)
!610 = !DILocation(line: 599, column: 23, scope: !601)
!611 = !DILocation(line: 599, column: 3, scope: !601)
!612 = !DILocation(line: 600, column: 16, scope: !601)
!613 = !DILocation(line: 600, column: 6, scope: !601)
!614 = !DILocation(line: 600, column: 23, scope: !601)
!615 = !DILocation(line: 600, column: 3, scope: !601)
!616 = !DILocation(line: 601, column: 15, scope: !601)
!617 = !DILocation(line: 601, column: 5, scope: !601)
!618 = !DILocation(line: 601, column: 3, scope: !601)
!619 = !DILocation(line: 598, column: 2, scope: !601)
!620 = distinct !DISubprogram(name: "br_i32_encode", scope: !25, file: !25, line: 29, type: !621, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !2)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !61, !21, !205}
!623 = !DILocalVariable(name: "dst", arg: 1, scope: !620, file: !25, line: 29, type: !61)
!624 = !DILocation(line: 0, scope: !620)
!625 = !DILocalVariable(name: "len", arg: 2, scope: !620, file: !25, line: 29, type: !21)
!626 = !DILocalVariable(name: "x", arg: 3, scope: !620, file: !25, line: 29, type: !205)
!627 = !DILocalVariable(name: "buf", scope: !620, file: !25, line: 31, type: !53)
!628 = !DILocation(line: 40, column: 7, scope: !620)
!629 = !DILocation(line: 40, column: 12, scope: !620)
!630 = !DILocation(line: 40, column: 17, scope: !620)
!631 = !DILocation(line: 40, column: 6, scope: !620)
!632 = !DILocalVariable(name: "k", scope: !620, file: !25, line: 32, type: !21)
!633 = !DILocation(line: 41, column: 2, scope: !620)
!634 = !DILocation(line: 41, column: 13, scope: !620)
!635 = !DILocation(line: 42, column: 8, scope: !636)
!636 = distinct !DILexicalBlock(scope: !620, file: !25, line: 41, column: 18)
!637 = !DILocation(line: 42, column: 11, scope: !636)
!638 = !DILocation(line: 43, column: 7, scope: !636)
!639 = distinct !{!639, !633, !640, !88}
!640 = !DILocation(line: 44, column: 2, scope: !620)
!641 = !DILocation(line: 51, column: 11, scope: !620)
!642 = !DILocation(line: 51, column: 16, scope: !620)
!643 = !DILocation(line: 52, column: 14, scope: !620)
!644 = !DILocation(line: 52, column: 2, scope: !620)
!645 = !DILocation(line: 54, column: 13, scope: !646)
!646 = distinct !DILexicalBlock(scope: !620, file: !25, line: 52, column: 19)
!647 = !DILocation(line: 54, column: 18, scope: !646)
!648 = !DILocation(line: 54, column: 8, scope: !646)
!649 = !DILocation(line: 54, column: 11, scope: !646)
!650 = !DILocation(line: 54, column: 3, scope: !646)
!651 = !DILocation(line: 57, column: 13, scope: !646)
!652 = !DILocation(line: 57, column: 18, scope: !646)
!653 = !DILocation(line: 57, column: 8, scope: !646)
!654 = !DILocation(line: 57, column: 11, scope: !646)
!655 = !DILocation(line: 57, column: 3, scope: !646)
!656 = !DILocation(line: 60, column: 13, scope: !646)
!657 = !DILocation(line: 60, column: 8, scope: !646)
!658 = !DILocation(line: 60, column: 11, scope: !646)
!659 = !DILocation(line: 61, column: 5, scope: !646)
!660 = !DILocation(line: 62, column: 2, scope: !646)
!661 = !DILocation(line: 67, column: 2, scope: !620)
!662 = !DILocation(line: 67, column: 11, scope: !620)
!663 = !DILocation(line: 68, column: 19, scope: !664)
!664 = distinct !DILexicalBlock(scope: !620, file: !25, line: 67, column: 16)
!665 = !DILocation(line: 68, column: 3, scope: !664)
!666 = !DILocation(line: 69, column: 5, scope: !664)
!667 = !DILocation(line: 70, column: 7, scope: !664)
!668 = distinct !{!668, !661, !669, !88}
!669 = !DILocation(line: 71, column: 2, scope: !620)
!670 = !DILocation(line: 72, column: 1, scope: !620)
!671 = distinct !DISubprogram(name: "br_enc32be", scope: !91, file: !91, line: 558, type: !672, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !2)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !61, !10}
!674 = !DILocalVariable(name: "dst", arg: 1, scope: !671, file: !91, line: 558, type: !61)
!675 = !DILocation(line: 0, scope: !671)
!676 = !DILocalVariable(name: "x", arg: 2, scope: !671, file: !91, line: 558, type: !10)
!677 = !DILocalVariable(name: "buf", scope: !671, file: !91, line: 563, type: !53)
!678 = !DILocation(line: 566, column: 29, scope: !671)
!679 = !DILocation(line: 566, column: 11, scope: !671)
!680 = !DILocation(line: 566, column: 2, scope: !671)
!681 = !DILocation(line: 566, column: 9, scope: !671)
!682 = !DILocation(line: 567, column: 29, scope: !671)
!683 = !DILocation(line: 567, column: 11, scope: !671)
!684 = !DILocation(line: 567, column: 2, scope: !671)
!685 = !DILocation(line: 567, column: 9, scope: !671)
!686 = !DILocation(line: 568, column: 29, scope: !671)
!687 = !DILocation(line: 568, column: 11, scope: !671)
!688 = !DILocation(line: 568, column: 2, scope: !671)
!689 = !DILocation(line: 568, column: 9, scope: !671)
!690 = !DILocation(line: 569, column: 11, scope: !671)
!691 = !DILocation(line: 569, column: 2, scope: !671)
!692 = !DILocation(line: 569, column: 9, scope: !671)
!693 = !DILocation(line: 571, column: 1, scope: !671)
!694 = distinct !DISubprogram(name: "br_i32_from_monty", scope: !29, file: !29, line: 29, type: !695, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !2)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !204, !205, !10}
!697 = !DILocalVariable(name: "x", arg: 1, scope: !694, file: !29, line: 29, type: !204)
!698 = !DILocation(line: 0, scope: !694)
!699 = !DILocalVariable(name: "m", arg: 2, scope: !694, file: !29, line: 29, type: !205)
!700 = !DILocalVariable(name: "m0i", arg: 3, scope: !694, file: !29, line: 29, type: !10)
!701 = !DILocation(line: 33, column: 9, scope: !694)
!702 = !DILocation(line: 33, column: 14, scope: !694)
!703 = !DILocation(line: 33, column: 20, scope: !694)
!704 = !DILocation(line: 33, column: 8, scope: !694)
!705 = !DILocalVariable(name: "len", scope: !694, file: !29, line: 31, type: !21)
!706 = !DILocalVariable(name: "u", scope: !694, file: !29, line: 31, type: !21)
!707 = !DILocation(line: 34, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !694, file: !29, line: 34, column: 2)
!709 = !DILocation(line: 0, scope: !708)
!710 = !DILocation(line: 34, column: 16, scope: !711)
!711 = distinct !DILexicalBlock(scope: !708, file: !29, line: 34, column: 2)
!712 = !DILocation(line: 34, column: 2, scope: !708)
!713 = !DILocation(line: 38, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !29, line: 34, column: 29)
!715 = !DILocation(line: 38, column: 12, scope: !714)
!716 = !DILocalVariable(name: "f", scope: !714, file: !29, line: 35, type: !10)
!717 = !DILocation(line: 0, scope: !714)
!718 = !DILocalVariable(name: "cc", scope: !714, file: !29, line: 36, type: !31)
!719 = !DILocalVariable(name: "v", scope: !694, file: !29, line: 31, type: !21)
!720 = !DILocation(line: 40, column: 8, scope: !721)
!721 = distinct !DILexicalBlock(scope: !714, file: !29, line: 40, column: 3)
!722 = !DILocation(line: 0, scope: !721)
!723 = !DILocation(line: 40, column: 17, scope: !724)
!724 = distinct !DILexicalBlock(scope: !721, file: !29, line: 40, column: 3)
!725 = !DILocation(line: 40, column: 3, scope: !721)
!726 = !DILocation(line: 43, column: 22, scope: !727)
!727 = distinct !DILexicalBlock(scope: !724, file: !29, line: 40, column: 30)
!728 = !DILocation(line: 43, column: 18, scope: !727)
!729 = !DILocation(line: 43, column: 8, scope: !727)
!730 = !DILocation(line: 43, column: 29, scope: !727)
!731 = !DILocation(line: 43, column: 27, scope: !727)
!732 = !DILocation(line: 43, column: 46, scope: !727)
!733 = !DILocalVariable(name: "z", scope: !727, file: !29, line: 41, type: !31)
!734 = !DILocation(line: 0, scope: !727)
!735 = !DILocation(line: 44, column: 11, scope: !727)
!736 = !DILocation(line: 45, column: 10, scope: !737)
!737 = distinct !DILexicalBlock(scope: !727, file: !29, line: 45, column: 8)
!738 = !DILocation(line: 45, column: 8, scope: !727)
!739 = !DILocation(line: 46, column: 12, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !29, line: 45, column: 16)
!741 = !DILocation(line: 46, column: 5, scope: !740)
!742 = !DILocation(line: 46, column: 10, scope: !740)
!743 = !DILocation(line: 47, column: 4, scope: !740)
!744 = !DILocation(line: 48, column: 3, scope: !727)
!745 = !DILocation(line: 40, column: 26, scope: !724)
!746 = !DILocation(line: 40, column: 3, scope: !724)
!747 = distinct !{!747, !725, !748, !88}
!748 = !DILocation(line: 48, column: 3, scope: !721)
!749 = !DILocation(line: 49, column: 12, scope: !714)
!750 = !DILocation(line: 49, column: 3, scope: !714)
!751 = !DILocation(line: 49, column: 10, scope: !714)
!752 = !DILocation(line: 50, column: 2, scope: !714)
!753 = !DILocation(line: 34, column: 25, scope: !711)
!754 = !DILocation(line: 34, column: 2, scope: !711)
!755 = distinct !{!755, !712, !756, !88}
!756 = !DILocation(line: 50, column: 2, scope: !708)
!757 = !DILocation(line: 59, column: 23, scope: !694)
!758 = !DILocation(line: 59, column: 19, scope: !694)
!759 = !DILocation(line: 59, column: 2, scope: !694)
!760 = !DILocation(line: 60, column: 1, scope: !694)
!761 = distinct !DISubprogram(name: "NOT", scope: !91, file: !91, line: 761, type: !282, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!762 = !DILocalVariable(name: "ctl", arg: 1, scope: !761, file: !91, line: 761, type: !10)
!763 = !DILocation(line: 0, scope: !761)
!764 = !DILocation(line: 763, column: 13, scope: !761)
!765 = !DILocation(line: 763, column: 2, scope: !761)
!766 = distinct !DISubprogram(name: "br_i32_modpow", scope: !34, file: !34, line: 29, type: !767, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !2)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !204, !71, !21, !205, !10, !204, !204}
!769 = !DILocalVariable(name: "x", arg: 1, scope: !766, file: !34, line: 29, type: !204)
!770 = !DILocation(line: 0, scope: !766)
!771 = !DILocalVariable(name: "e", arg: 2, scope: !766, file: !34, line: 30, type: !71)
!772 = !DILocalVariable(name: "elen", arg: 3, scope: !766, file: !34, line: 30, type: !21)
!773 = !DILocalVariable(name: "m", arg: 4, scope: !766, file: !34, line: 31, type: !205)
!774 = !DILocalVariable(name: "m0i", arg: 5, scope: !766, file: !34, line: 31, type: !10)
!775 = !DILocalVariable(name: "t1", arg: 6, scope: !766, file: !34, line: 31, type: !204)
!776 = !DILocalVariable(name: "t2", arg: 7, scope: !766, file: !34, line: 31, type: !204)
!777 = !DILocation(line: 40, column: 11, scope: !766)
!778 = !DILocation(line: 40, column: 16, scope: !766)
!779 = !DILocation(line: 40, column: 22, scope: !766)
!780 = !DILocation(line: 40, column: 9, scope: !766)
!781 = !DILocation(line: 40, column: 28, scope: !766)
!782 = !DILocalVariable(name: "mlen", scope: !766, file: !34, line: 33, type: !21)
!783 = !DILocation(line: 52, column: 2, scope: !766)
!784 = !DILocation(line: 53, column: 2, scope: !766)
!785 = !DILocation(line: 54, column: 17, scope: !766)
!786 = !DILocation(line: 54, column: 2, scope: !766)
!787 = !DILocation(line: 55, column: 2, scope: !766)
!788 = !DILocation(line: 55, column: 7, scope: !766)
!789 = !DILocalVariable(name: "k", scope: !766, file: !34, line: 34, type: !10)
!790 = !DILocation(line: 56, column: 7, scope: !791)
!791 = distinct !DILexicalBlock(scope: !766, file: !34, line: 56, column: 2)
!792 = !DILocation(line: 0, scope: !791)
!793 = !DILocation(line: 56, column: 19, scope: !794)
!794 = distinct !DILexicalBlock(scope: !791, file: !34, line: 56, column: 2)
!795 = !DILocation(line: 56, column: 34, scope: !794)
!796 = !DILocation(line: 56, column: 16, scope: !794)
!797 = !DILocation(line: 56, column: 2, scope: !791)
!798 = !DILocation(line: 59, column: 17, scope: !799)
!799 = distinct !DILexicalBlock(scope: !794, file: !34, line: 56, column: 47)
!800 = !DILocation(line: 59, column: 26, scope: !799)
!801 = !DILocation(line: 59, column: 23, scope: !799)
!802 = !DILocation(line: 59, column: 21, scope: !799)
!803 = !DILocation(line: 59, column: 10, scope: !799)
!804 = !DILocation(line: 59, column: 39, scope: !799)
!805 = !DILocation(line: 59, column: 33, scope: !799)
!806 = !DILocation(line: 59, column: 45, scope: !799)
!807 = !DILocalVariable(name: "ctl", scope: !799, file: !34, line: 57, type: !10)
!808 = !DILocation(line: 0, scope: !799)
!809 = !DILocation(line: 60, column: 3, scope: !799)
!810 = !DILocation(line: 61, column: 14, scope: !799)
!811 = !DILocation(line: 61, column: 17, scope: !799)
!812 = !DILocation(line: 61, column: 3, scope: !799)
!813 = !DILocation(line: 62, column: 3, scope: !799)
!814 = !DILocation(line: 63, column: 3, scope: !799)
!815 = !DILocation(line: 64, column: 2, scope: !799)
!816 = !DILocation(line: 56, column: 43, scope: !794)
!817 = !DILocation(line: 56, column: 2, scope: !794)
!818 = distinct !{!818, !797, !819, !88}
!819 = !DILocation(line: 64, column: 2, scope: !791)
!820 = !DILocation(line: 65, column: 1, scope: !766)
!821 = distinct !DISubprogram(name: "br_i32_zero", scope: !91, file: !91, line: 1235, type: !588, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !33, retainedNodes: !2)
!822 = !DILocalVariable(name: "x", arg: 1, scope: !821, file: !91, line: 1235, type: !204)
!823 = !DILocation(line: 0, scope: !821)
!824 = !DILocalVariable(name: "bit_len", arg: 2, scope: !821, file: !91, line: 1235, type: !10)
!825 = !DILocation(line: 1237, column: 5, scope: !821)
!826 = !DILocation(line: 1237, column: 8, scope: !821)
!827 = !DILocation(line: 1238, column: 2, scope: !821)
!828 = !DILocation(line: 1238, column: 25, scope: !821)
!829 = !DILocation(line: 1238, column: 31, scope: !821)
!830 = !DILocation(line: 1238, column: 15, scope: !821)
!831 = !DILocation(line: 1238, column: 37, scope: !821)
!832 = !DILocation(line: 1239, column: 1, scope: !821)
!833 = distinct !DISubprogram(name: "br_i32_montymul", scope: !36, file: !36, line: 29, type: !834, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !2)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !204, !205, !205, !205, !10}
!836 = !DILocalVariable(name: "d", arg: 1, scope: !833, file: !36, line: 29, type: !204)
!837 = !DILocation(line: 0, scope: !833)
!838 = !DILocalVariable(name: "x", arg: 2, scope: !833, file: !36, line: 29, type: !205)
!839 = !DILocalVariable(name: "y", arg: 3, scope: !833, file: !36, line: 29, type: !205)
!840 = !DILocalVariable(name: "m", arg: 4, scope: !833, file: !36, line: 30, type: !205)
!841 = !DILocalVariable(name: "m0i", arg: 5, scope: !833, file: !36, line: 30, type: !10)
!842 = !DILocation(line: 35, column: 9, scope: !833)
!843 = !DILocation(line: 35, column: 14, scope: !833)
!844 = !DILocation(line: 35, column: 20, scope: !833)
!845 = !DILocation(line: 35, column: 8, scope: !833)
!846 = !DILocalVariable(name: "len", scope: !833, file: !36, line: 32, type: !21)
!847 = !DILocation(line: 36, column: 17, scope: !833)
!848 = !DILocation(line: 36, column: 2, scope: !833)
!849 = !DILocalVariable(name: "dh", scope: !833, file: !36, line: 33, type: !31)
!850 = !DILocalVariable(name: "u", scope: !833, file: !36, line: 32, type: !21)
!851 = !DILocation(line: 38, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !833, file: !36, line: 38, column: 2)
!853 = !DILocation(line: 0, scope: !852)
!854 = !DILocation(line: 38, column: 16, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !36, line: 38, column: 2)
!856 = !DILocation(line: 38, column: 2, scope: !852)
!857 = !DILocation(line: 42, column: 12, scope: !858)
!858 = distinct !DILexicalBlock(scope: !855, file: !36, line: 38, column: 29)
!859 = !DILocation(line: 42, column: 8, scope: !858)
!860 = !DILocalVariable(name: "xu", scope: !858, file: !36, line: 39, type: !10)
!861 = !DILocation(line: 0, scope: !858)
!862 = !DILocation(line: 43, column: 8, scope: !858)
!863 = !DILocation(line: 43, column: 19, scope: !858)
!864 = !DILocation(line: 43, column: 15, scope: !858)
!865 = !DILocation(line: 43, column: 26, scope: !858)
!866 = !DILocation(line: 43, column: 24, scope: !858)
!867 = !DILocation(line: 43, column: 13, scope: !858)
!868 = !DILocation(line: 43, column: 32, scope: !858)
!869 = !DILocalVariable(name: "f", scope: !858, file: !36, line: 39, type: !10)
!870 = !DILocalVariable(name: "r1", scope: !858, file: !36, line: 40, type: !31)
!871 = !DILocalVariable(name: "r2", scope: !858, file: !36, line: 40, type: !31)
!872 = !DILocalVariable(name: "v", scope: !833, file: !36, line: 32, type: !21)
!873 = !DILocation(line: 46, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !858, file: !36, line: 46, column: 3)
!875 = !DILocation(line: 0, scope: !874)
!876 = !DILocation(line: 46, column: 17, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !36, line: 46, column: 3)
!878 = !DILocation(line: 46, column: 3, scope: !874)
!879 = !DILocation(line: 50, column: 22, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !36, line: 46, column: 30)
!881 = !DILocation(line: 50, column: 18, scope: !880)
!882 = !DILocation(line: 50, column: 8, scope: !880)
!883 = !DILocation(line: 50, column: 29, scope: !880)
!884 = !DILocation(line: 50, column: 27, scope: !880)
!885 = !DILocation(line: 50, column: 47, scope: !880)
!886 = !DILocalVariable(name: "z", scope: !880, file: !36, line: 47, type: !31)
!887 = !DILocation(line: 0, scope: !880)
!888 = !DILocation(line: 51, column: 11, scope: !880)
!889 = !DILocation(line: 52, column: 8, scope: !880)
!890 = !DILocalVariable(name: "t", scope: !880, file: !36, line: 48, type: !10)
!891 = !DILocation(line: 53, column: 8, scope: !880)
!892 = !DILocation(line: 53, column: 22, scope: !880)
!893 = !DILocation(line: 53, column: 20, scope: !880)
!894 = !DILocation(line: 53, column: 39, scope: !880)
!895 = !DILocation(line: 54, column: 11, scope: !880)
!896 = !DILocation(line: 55, column: 10, scope: !897)
!897 = distinct !DILexicalBlock(scope: !880, file: !36, line: 55, column: 8)
!898 = !DILocation(line: 55, column: 8, scope: !880)
!899 = !DILocation(line: 56, column: 12, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !36, line: 55, column: 16)
!901 = !DILocation(line: 56, column: 5, scope: !900)
!902 = !DILocation(line: 56, column: 10, scope: !900)
!903 = !DILocation(line: 57, column: 4, scope: !900)
!904 = !DILocation(line: 58, column: 3, scope: !880)
!905 = !DILocation(line: 46, column: 26, scope: !877)
!906 = !DILocation(line: 46, column: 3, scope: !877)
!907 = distinct !{!907, !878, !908, !88}
!908 = !DILocation(line: 58, column: 3, scope: !874)
!909 = !DILocation(line: 59, column: 11, scope: !858)
!910 = !DILocation(line: 59, column: 16, scope: !858)
!911 = !DILocalVariable(name: "zh", scope: !858, file: !36, line: 40, type: !31)
!912 = !DILocation(line: 60, column: 12, scope: !858)
!913 = !DILocation(line: 60, column: 3, scope: !858)
!914 = !DILocation(line: 60, column: 10, scope: !858)
!915 = !DILocation(line: 61, column: 11, scope: !858)
!916 = !DILocation(line: 62, column: 2, scope: !858)
!917 = !DILocation(line: 38, column: 25, scope: !855)
!918 = !DILocation(line: 38, column: 2, scope: !855)
!919 = distinct !{!919, !856, !920, !88}
!920 = !DILocation(line: 62, column: 2, scope: !852)
!921 = !DILocation(line: 68, column: 23, scope: !833)
!922 = !DILocation(line: 68, column: 19, scope: !833)
!923 = !DILocation(line: 68, column: 36, scope: !833)
!924 = !DILocation(line: 68, column: 32, scope: !833)
!925 = !DILocation(line: 68, column: 30, scope: !833)
!926 = !DILocation(line: 68, column: 2, scope: !833)
!927 = !DILocation(line: 69, column: 1, scope: !833)
!928 = distinct !DISubprogram(name: "br_i32_zero", scope: !91, file: !91, line: 1235, type: !588, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !2)
!929 = !DILocalVariable(name: "x", arg: 1, scope: !928, file: !91, line: 1235, type: !204)
!930 = !DILocation(line: 0, scope: !928)
!931 = !DILocalVariable(name: "bit_len", arg: 2, scope: !928, file: !91, line: 1235, type: !10)
!932 = !DILocation(line: 1237, column: 5, scope: !928)
!933 = !DILocation(line: 1237, column: 8, scope: !928)
!934 = !DILocation(line: 1238, column: 2, scope: !928)
!935 = !DILocation(line: 1238, column: 25, scope: !928)
!936 = !DILocation(line: 1238, column: 31, scope: !928)
!937 = !DILocation(line: 1238, column: 15, scope: !928)
!938 = !DILocation(line: 1238, column: 37, scope: !928)
!939 = !DILocation(line: 1239, column: 1, scope: !928)
!940 = distinct !DISubprogram(name: "NEQ", scope: !91, file: !91, line: 791, type: !247, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !2)
!941 = !DILocalVariable(name: "x", arg: 1, scope: !940, file: !91, line: 791, type: !10)
!942 = !DILocation(line: 0, scope: !940)
!943 = !DILocalVariable(name: "y", arg: 2, scope: !940, file: !91, line: 791, type: !10)
!944 = !DILocation(line: 795, column: 8, scope: !940)
!945 = !DILocalVariable(name: "q", scope: !940, file: !91, line: 793, type: !10)
!946 = !DILocation(line: 796, column: 14, scope: !940)
!947 = !DILocation(line: 796, column: 12, scope: !940)
!948 = !DILocation(line: 796, column: 18, scope: !940)
!949 = !DILocation(line: 796, column: 2, scope: !940)
!950 = distinct !DISubprogram(name: "NOT", scope: !91, file: !91, line: 761, type: !282, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !2)
!951 = !DILocalVariable(name: "ctl", arg: 1, scope: !950, file: !91, line: 761, type: !10)
!952 = !DILocation(line: 0, scope: !950)
!953 = !DILocation(line: 763, column: 13, scope: !950)
!954 = !DILocation(line: 763, column: 2, scope: !950)
!955 = distinct !DISubprogram(name: "br_i32_mulacc", scope: !38, file: !38, line: 29, type: !956, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !37, retainedNodes: !2)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !204, !205, !205}
!958 = !DILocalVariable(name: "d", arg: 1, scope: !955, file: !38, line: 29, type: !204)
!959 = !DILocation(line: 0, scope: !955)
!960 = !DILocalVariable(name: "a", arg: 2, scope: !955, file: !38, line: 29, type: !205)
!961 = !DILocalVariable(name: "b", arg: 3, scope: !955, file: !38, line: 29, type: !205)
!962 = !DILocation(line: 33, column: 10, scope: !955)
!963 = !DILocation(line: 33, column: 15, scope: !955)
!964 = !DILocation(line: 33, column: 21, scope: !955)
!965 = !DILocation(line: 33, column: 9, scope: !955)
!966 = !DILocalVariable(name: "alen", scope: !955, file: !38, line: 31, type: !21)
!967 = !DILocation(line: 34, column: 10, scope: !955)
!968 = !DILocation(line: 34, column: 15, scope: !955)
!969 = !DILocation(line: 34, column: 21, scope: !955)
!970 = !DILocation(line: 34, column: 9, scope: !955)
!971 = !DILocalVariable(name: "blen", scope: !955, file: !38, line: 31, type: !21)
!972 = !DILocation(line: 35, column: 9, scope: !955)
!973 = !DILocation(line: 35, column: 16, scope: !955)
!974 = !DILocation(line: 35, column: 14, scope: !955)
!975 = !DILocation(line: 35, column: 2, scope: !955)
!976 = !DILocation(line: 35, column: 7, scope: !955)
!977 = !DILocalVariable(name: "u", scope: !955, file: !38, line: 31, type: !21)
!978 = !DILocation(line: 36, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !955, file: !38, line: 36, column: 2)
!980 = !DILocation(line: 0, scope: !979)
!981 = !DILocation(line: 36, column: 16, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !38, line: 36, column: 2)
!983 = !DILocation(line: 36, column: 2, scope: !979)
!984 = !DILocation(line: 45, column: 11, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !38, line: 36, column: 30)
!986 = !DILocation(line: 45, column: 7, scope: !985)
!987 = !DILocalVariable(name: "f", scope: !985, file: !38, line: 37, type: !10)
!988 = !DILocation(line: 0, scope: !985)
!989 = !DILocalVariable(name: "cc", scope: !985, file: !38, line: 40, type: !31)
!990 = !DILocalVariable(name: "v", scope: !985, file: !38, line: 38, type: !21)
!991 = !DILocation(line: 47, column: 8, scope: !992)
!992 = distinct !DILexicalBlock(scope: !985, file: !38, line: 47, column: 3)
!993 = !DILocation(line: 0, scope: !992)
!994 = !DILocation(line: 47, column: 17, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !38, line: 47, column: 3)
!996 = !DILocation(line: 47, column: 3, scope: !992)
!997 = !DILocation(line: 50, column: 22, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !38, line: 47, column: 31)
!999 = !DILocation(line: 50, column: 26, scope: !998)
!1000 = !DILocation(line: 50, column: 18, scope: !998)
!1001 = !DILocation(line: 50, column: 8, scope: !998)
!1002 = !DILocation(line: 50, column: 33, scope: !998)
!1003 = !DILocation(line: 50, column: 31, scope: !998)
!1004 = !DILocation(line: 50, column: 50, scope: !998)
!1005 = !DILocalVariable(name: "z", scope: !998, file: !38, line: 48, type: !31)
!1006 = !DILocation(line: 0, scope: !998)
!1007 = !DILocation(line: 51, column: 11, scope: !998)
!1008 = !DILocation(line: 52, column: 19, scope: !998)
!1009 = !DILocation(line: 52, column: 8, scope: !998)
!1010 = !DILocation(line: 52, column: 12, scope: !998)
!1011 = !DILocation(line: 52, column: 4, scope: !998)
!1012 = !DILocation(line: 52, column: 17, scope: !998)
!1013 = !DILocation(line: 53, column: 3, scope: !998)
!1014 = !DILocation(line: 47, column: 27, scope: !995)
!1015 = !DILocation(line: 47, column: 3, scope: !995)
!1016 = distinct !{!1016, !996, !1017, !88}
!1017 = !DILocation(line: 53, column: 3, scope: !992)
!1018 = !DILocation(line: 54, column: 21, scope: !985)
!1019 = !DILocation(line: 54, column: 7, scope: !985)
!1020 = !DILocation(line: 54, column: 11, scope: !985)
!1021 = !DILocation(line: 54, column: 3, scope: !985)
!1022 = !DILocation(line: 54, column: 19, scope: !985)
!1023 = !DILocation(line: 55, column: 2, scope: !985)
!1024 = !DILocation(line: 36, column: 26, scope: !982)
!1025 = !DILocation(line: 36, column: 2, scope: !982)
!1026 = distinct !{!1026, !983, !1027, !88}
!1027 = !DILocation(line: 55, column: 2, scope: !979)
!1028 = !DILocation(line: 56, column: 1, scope: !955)
!1029 = distinct !DISubprogram(name: "br_i32_muladd_small", scope: !40, file: !40, line: 29, type: !1030, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !2)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !204, !10, !205}
!1032 = !DILocalVariable(name: "x", arg: 1, scope: !1029, file: !40, line: 29, type: !204)
!1033 = !DILocation(line: 0, scope: !1029)
!1034 = !DILocalVariable(name: "z", arg: 2, scope: !1029, file: !40, line: 29, type: !10)
!1035 = !DILocalVariable(name: "m", arg: 3, scope: !1029, file: !40, line: 29, type: !205)
!1036 = !DILocation(line: 41, column: 13, scope: !1029)
!1037 = !DILocalVariable(name: "m_bitlen", scope: !1029, file: !40, line: 31, type: !10)
!1038 = !DILocation(line: 42, column: 15, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1029, file: !40, line: 42, column: 6)
!1040 = !DILocation(line: 42, column: 6, scope: !1029)
!1041 = !DILocation(line: 43, column: 3, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !40, line: 42, column: 21)
!1043 = !DILocation(line: 45, column: 15, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1029, file: !40, line: 45, column: 6)
!1045 = !DILocation(line: 45, column: 6, scope: !1029)
!1046 = !DILocation(line: 46, column: 17, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !40, line: 45, column: 22)
!1048 = !DILocation(line: 46, column: 26, scope: !1047)
!1049 = !DILocation(line: 46, column: 10, scope: !1047)
!1050 = !DILocation(line: 46, column: 3, scope: !1047)
!1051 = !DILocation(line: 46, column: 8, scope: !1047)
!1052 = !DILocation(line: 47, column: 3, scope: !1047)
!1053 = !DILocation(line: 49, column: 19, scope: !1029)
!1054 = !DILocation(line: 49, column: 25, scope: !1029)
!1055 = !DILocation(line: 49, column: 9, scope: !1029)
!1056 = !DILocalVariable(name: "mlen", scope: !1029, file: !40, line: 32, type: !21)
!1057 = !DILocation(line: 77, column: 31, scope: !1029)
!1058 = !DILocation(line: 77, column: 7, scope: !1029)
!1059 = !DILocalVariable(name: "a0", scope: !1029, file: !40, line: 33, type: !10)
!1060 = !DILocation(line: 78, column: 7, scope: !1029)
!1061 = !DILocalVariable(name: "hi", scope: !1029, file: !40, line: 33, type: !10)
!1062 = !DILocation(line: 79, column: 12, scope: !1029)
!1063 = !DILocation(line: 79, column: 2, scope: !1029)
!1064 = !DILocation(line: 79, column: 19, scope: !1029)
!1065 = !DILocation(line: 79, column: 30, scope: !1029)
!1066 = !DILocation(line: 79, column: 35, scope: !1029)
!1067 = !DILocation(line: 80, column: 2, scope: !1029)
!1068 = !DILocation(line: 80, column: 7, scope: !1029)
!1069 = !DILocation(line: 81, column: 31, scope: !1029)
!1070 = !DILocation(line: 81, column: 7, scope: !1029)
!1071 = !DILocalVariable(name: "a1", scope: !1029, file: !40, line: 33, type: !10)
!1072 = !DILocation(line: 82, column: 31, scope: !1029)
!1073 = !DILocation(line: 82, column: 7, scope: !1029)
!1074 = !DILocalVariable(name: "b0", scope: !1029, file: !40, line: 33, type: !10)
!1075 = !DILocation(line: 94, column: 6, scope: !1029)
!1076 = !DILocalVariable(name: "g", scope: !1029, file: !40, line: 33, type: !10)
!1077 = !DILocation(line: 95, column: 10, scope: !1029)
!1078 = !DILocation(line: 95, column: 38, scope: !1029)
!1079 = !DILocation(line: 95, column: 53, scope: !1029)
!1080 = !DILocation(line: 95, column: 34, scope: !1029)
!1081 = !DILocation(line: 95, column: 6, scope: !1029)
!1082 = !DILocalVariable(name: "q", scope: !1029, file: !40, line: 33, type: !10)
!1083 = !DILocalVariable(name: "cc", scope: !1029, file: !40, line: 35, type: !31)
!1084 = !DILocalVariable(name: "tb", scope: !1029, file: !40, line: 33, type: !10)
!1085 = !DILocalVariable(name: "u", scope: !1029, file: !40, line: 32, type: !21)
!1086 = !DILocation(line: 108, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1029, file: !40, line: 108, column: 2)
!1088 = !DILocation(line: 0, scope: !1087)
!1089 = !DILocation(line: 108, column: 16, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !40, line: 108, column: 2)
!1091 = !DILocation(line: 108, column: 2, scope: !1087)
!1092 = !DILocation(line: 112, column: 8, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !40, line: 108, column: 31)
!1094 = !DILocalVariable(name: "mw", scope: !1093, file: !40, line: 109, type: !10)
!1095 = !DILocation(line: 0, scope: !1093)
!1096 = !DILocation(line: 113, column: 8, scope: !1093)
!1097 = !DILocation(line: 113, column: 19, scope: !1093)
!1098 = !DILocalVariable(name: "zl", scope: !1093, file: !40, line: 110, type: !31)
!1099 = !DILocation(line: 114, column: 22, scope: !1093)
!1100 = !DILocation(line: 114, column: 8, scope: !1093)
!1101 = !DILocation(line: 115, column: 8, scope: !1093)
!1102 = !DILocalVariable(name: "zw", scope: !1093, file: !40, line: 109, type: !10)
!1103 = !DILocation(line: 116, column: 8, scope: !1093)
!1104 = !DILocalVariable(name: "xw", scope: !1093, file: !40, line: 109, type: !10)
!1105 = !DILocation(line: 117, column: 12, scope: !1093)
!1106 = !DILocalVariable(name: "nxw", scope: !1093, file: !40, line: 109, type: !10)
!1107 = !DILocation(line: 118, column: 19, scope: !1093)
!1108 = !DILocation(line: 118, column: 9, scope: !1093)
!1109 = !DILocation(line: 118, column: 6, scope: !1093)
!1110 = !DILocation(line: 119, column: 3, scope: !1093)
!1111 = !DILocation(line: 119, column: 8, scope: !1093)
!1112 = !DILocation(line: 120, column: 12, scope: !1093)
!1113 = !DILocation(line: 120, column: 29, scope: !1093)
!1114 = !DILocation(line: 120, column: 8, scope: !1093)
!1115 = !DILocation(line: 121, column: 2, scope: !1093)
!1116 = !DILocation(line: 108, column: 27, scope: !1090)
!1117 = !DILocation(line: 108, column: 2, scope: !1090)
!1118 = distinct !{!1118, !1091, !1119, !88}
!1119 = !DILocation(line: 121, column: 2, scope: !1087)
!1120 = !DILocation(line: 132, column: 22, scope: !1029)
!1121 = !DILocation(line: 132, column: 8, scope: !1029)
!1122 = !DILocalVariable(name: "chf", scope: !1029, file: !40, line: 34, type: !10)
!1123 = !DILocation(line: 133, column: 9, scope: !1029)
!1124 = !DILocalVariable(name: "clow", scope: !1029, file: !40, line: 34, type: !10)
!1125 = !DILocation(line: 134, column: 15, scope: !1029)
!1126 = !DILocation(line: 134, column: 13, scope: !1029)
!1127 = !DILocalVariable(name: "over", scope: !1029, file: !40, line: 34, type: !10)
!1128 = !DILocation(line: 135, column: 10, scope: !1029)
!1129 = !DILocation(line: 135, column: 25, scope: !1029)
!1130 = !DILocation(line: 135, column: 32, scope: !1029)
!1131 = !DILocation(line: 135, column: 30, scope: !1029)
!1132 = !DILocation(line: 135, column: 22, scope: !1029)
!1133 = !DILocation(line: 135, column: 16, scope: !1029)
!1134 = !DILocalVariable(name: "under", scope: !1029, file: !40, line: 34, type: !10)
!1135 = !DILocation(line: 136, column: 2, scope: !1029)
!1136 = !DILocation(line: 137, column: 2, scope: !1029)
!1137 = !DILocation(line: 138, column: 1, scope: !1029)
!1138 = distinct !DISubprogram(name: "br_rem", scope: !91, file: !91, line: 1050, type: !92, scopeLine: 1051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!1139 = !DILocalVariable(name: "hi", arg: 1, scope: !1138, file: !91, line: 1050, type: !10)
!1140 = !DILocation(line: 0, scope: !1138)
!1141 = !DILocalVariable(name: "lo", arg: 2, scope: !1138, file: !91, line: 1050, type: !10)
!1142 = !DILocalVariable(name: "d", arg: 3, scope: !1138, file: !91, line: 1050, type: !10)
!1143 = !DILocalVariable(name: "r", scope: !1138, file: !91, line: 1052, type: !10)
!1144 = !DILocation(line: 1052, column: 11, scope: !1138)
!1145 = !DILocation(line: 1054, column: 2, scope: !1138)
!1146 = !DILocation(line: 1055, column: 9, scope: !1138)
!1147 = !DILocation(line: 1055, column: 2, scope: !1138)
!1148 = distinct !DISubprogram(name: "br_i32_word", scope: !91, file: !91, line: 1180, type: !1149, scopeLine: 1181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!10, !205, !10}
!1151 = !DILocalVariable(name: "a", arg: 1, scope: !1148, file: !91, line: 1180, type: !205)
!1152 = !DILocation(line: 0, scope: !1148)
!1153 = !DILocalVariable(name: "off", arg: 2, scope: !1148, file: !91, line: 1180, type: !10)
!1154 = !DILocation(line: 1185, column: 19, scope: !1148)
!1155 = !DILocation(line: 1185, column: 6, scope: !1148)
!1156 = !DILocation(line: 1185, column: 25, scope: !1148)
!1157 = !DILocalVariable(name: "u", scope: !1148, file: !91, line: 1182, type: !21)
!1158 = !DILocation(line: 1186, column: 20, scope: !1148)
!1159 = !DILocalVariable(name: "j", scope: !1148, file: !91, line: 1183, type: !14)
!1160 = !DILocation(line: 1187, column: 8, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1148, file: !91, line: 1187, column: 6)
!1162 = !DILocation(line: 1187, column: 6, scope: !1148)
!1163 = !DILocation(line: 1188, column: 10, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !91, line: 1187, column: 14)
!1165 = !DILocation(line: 1188, column: 3, scope: !1164)
!1166 = !DILocation(line: 1190, column: 11, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1161, file: !91, line: 1189, column: 9)
!1168 = !DILocation(line: 1190, column: 16, scope: !1167)
!1169 = !DILocation(line: 1190, column: 29, scope: !1167)
!1170 = !DILocation(line: 1190, column: 25, scope: !1167)
!1171 = !DILocation(line: 1190, column: 41, scope: !1167)
!1172 = !DILocation(line: 1190, column: 34, scope: !1167)
!1173 = !DILocation(line: 1190, column: 22, scope: !1167)
!1174 = !DILocation(line: 1190, column: 3, scope: !1167)
!1175 = !DILocation(line: 0, scope: !1161)
!1176 = !DILocation(line: 1192, column: 1, scope: !1148)
!1177 = distinct !DISubprogram(name: "br_div", scope: !91, file: !91, line: 1063, type: !92, scopeLine: 1064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!1178 = !DILocalVariable(name: "hi", arg: 1, scope: !1177, file: !91, line: 1063, type: !10)
!1179 = !DILocation(line: 0, scope: !1177)
!1180 = !DILocalVariable(name: "lo", arg: 2, scope: !1177, file: !91, line: 1063, type: !10)
!1181 = !DILocalVariable(name: "d", arg: 3, scope: !1177, file: !91, line: 1063, type: !10)
!1182 = !DILocalVariable(name: "r", scope: !1177, file: !91, line: 1065, type: !10)
!1183 = !DILocation(line: 1065, column: 11, scope: !1177)
!1184 = !DILocation(line: 1067, column: 9, scope: !1177)
!1185 = !DILocation(line: 1067, column: 2, scope: !1177)
!1186 = distinct !DISubprogram(name: "EQ", scope: !91, file: !91, line: 779, type: !247, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!1187 = !DILocalVariable(name: "x", arg: 1, scope: !1186, file: !91, line: 779, type: !10)
!1188 = !DILocation(line: 0, scope: !1186)
!1189 = !DILocalVariable(name: "y", arg: 2, scope: !1186, file: !91, line: 779, type: !10)
!1190 = !DILocation(line: 783, column: 8, scope: !1186)
!1191 = !DILocalVariable(name: "q", scope: !1186, file: !91, line: 781, type: !10)
!1192 = !DILocation(line: 784, column: 18, scope: !1186)
!1193 = !DILocation(line: 784, column: 16, scope: !1186)
!1194 = !DILocation(line: 784, column: 22, scope: !1186)
!1195 = !DILocation(line: 784, column: 9, scope: !1186)
!1196 = !DILocation(line: 784, column: 2, scope: !1186)
!1197 = distinct !DISubprogram(name: "MUX", scope: !91, file: !91, line: 770, type: !92, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!1198 = !DILocalVariable(name: "ctl", arg: 1, scope: !1197, file: !91, line: 770, type: !10)
!1199 = !DILocation(line: 0, scope: !1197)
!1200 = !DILocalVariable(name: "x", arg: 2, scope: !1197, file: !91, line: 770, type: !10)
!1201 = !DILocalVariable(name: "y", arg: 3, scope: !1197, file: !91, line: 770, type: !10)
!1202 = !DILocation(line: 772, column: 14, scope: !1197)
!1203 = !DILocation(line: 772, column: 24, scope: !1197)
!1204 = !DILocation(line: 772, column: 19, scope: !1197)
!1205 = !DILocation(line: 772, column: 11, scope: !1197)
!1206 = !DILocation(line: 772, column: 2, scope: !1197)
!1207 = distinct !DISubprogram(name: "GT", scope: !91, file: !91, line: 803, type: !247, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!1208 = !DILocalVariable(name: "x", arg: 1, scope: !1207, file: !91, line: 803, type: !10)
!1209 = !DILocation(line: 0, scope: !1207)
!1210 = !DILocalVariable(name: "y", arg: 2, scope: !1207, file: !91, line: 803, type: !10)
!1211 = !DILocation(line: 819, column: 8, scope: !1207)
!1212 = !DILocalVariable(name: "z", scope: !1207, file: !91, line: 817, type: !10)
!1213 = !DILocation(line: 820, column: 18, scope: !1207)
!1214 = !DILocation(line: 820, column: 28, scope: !1207)
!1215 = !DILocation(line: 820, column: 23, scope: !1207)
!1216 = !DILocation(line: 820, column: 12, scope: !1207)
!1217 = !DILocation(line: 820, column: 35, scope: !1207)
!1218 = !DILocation(line: 820, column: 2, scope: !1207)
!1219 = distinct !DISubprogram(name: "NOT", scope: !91, file: !91, line: 761, type: !282, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!1220 = !DILocalVariable(name: "ctl", arg: 1, scope: !1219, file: !91, line: 761, type: !10)
!1221 = !DILocation(line: 0, scope: !1219)
!1222 = !DILocation(line: 763, column: 13, scope: !1219)
!1223 = !DILocation(line: 763, column: 2, scope: !1219)
!1224 = distinct !DISubprogram(name: "br_i32_ninv32", scope: !43, file: !43, line: 29, type: !282, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !2)
!1225 = !DILocalVariable(name: "x", arg: 1, scope: !1224, file: !43, line: 29, type: !10)
!1226 = !DILocation(line: 0, scope: !1224)
!1227 = !DILocation(line: 33, column: 8, scope: !1224)
!1228 = !DILocalVariable(name: "y", scope: !1224, file: !43, line: 31, type: !10)
!1229 = !DILocation(line: 34, column: 13, scope: !1224)
!1230 = !DILocation(line: 34, column: 9, scope: !1224)
!1231 = !DILocation(line: 34, column: 4, scope: !1224)
!1232 = !DILocation(line: 35, column: 13, scope: !1224)
!1233 = !DILocation(line: 35, column: 9, scope: !1224)
!1234 = !DILocation(line: 35, column: 4, scope: !1224)
!1235 = !DILocation(line: 36, column: 13, scope: !1224)
!1236 = !DILocation(line: 36, column: 9, scope: !1224)
!1237 = !DILocation(line: 36, column: 4, scope: !1224)
!1238 = !DILocation(line: 37, column: 13, scope: !1224)
!1239 = !DILocation(line: 37, column: 9, scope: !1224)
!1240 = !DILocation(line: 37, column: 4, scope: !1224)
!1241 = !DILocation(line: 38, column: 15, scope: !1224)
!1242 = !DILocation(line: 38, column: 20, scope: !1224)
!1243 = !DILocation(line: 38, column: 9, scope: !1224)
!1244 = !DILocation(line: 38, column: 2, scope: !1224)
!1245 = distinct !DISubprogram(name: "MUX", scope: !91, file: !91, line: 770, type: !92, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !42, retainedNodes: !2)
!1246 = !DILocalVariable(name: "ctl", arg: 1, scope: !1245, file: !91, line: 770, type: !10)
!1247 = !DILocation(line: 0, scope: !1245)
!1248 = !DILocalVariable(name: "x", arg: 2, scope: !1245, file: !91, line: 770, type: !10)
!1249 = !DILocalVariable(name: "y", arg: 3, scope: !1245, file: !91, line: 770, type: !10)
!1250 = !DILocation(line: 772, column: 14, scope: !1245)
!1251 = !DILocation(line: 772, column: 24, scope: !1245)
!1252 = !DILocation(line: 772, column: 19, scope: !1245)
!1253 = !DILocation(line: 772, column: 11, scope: !1245)
!1254 = !DILocation(line: 772, column: 2, scope: !1245)
!1255 = distinct !DISubprogram(name: "br_i32_reduce", scope: !45, file: !45, line: 29, type: !956, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !2)
!1256 = !DILocalVariable(name: "x", arg: 1, scope: !1255, file: !45, line: 29, type: !204)
!1257 = !DILocation(line: 0, scope: !1255)
!1258 = !DILocalVariable(name: "a", arg: 2, scope: !1255, file: !45, line: 29, type: !205)
!1259 = !DILocalVariable(name: "m", arg: 3, scope: !1255, file: !45, line: 29, type: !205)
!1260 = !DILocation(line: 34, column: 13, scope: !1255)
!1261 = !DILocalVariable(name: "m_bitlen", scope: !1255, file: !45, line: 31, type: !10)
!1262 = !DILocation(line: 35, column: 19, scope: !1255)
!1263 = !DILocation(line: 35, column: 25, scope: !1255)
!1264 = !DILocation(line: 35, column: 9, scope: !1255)
!1265 = !DILocalVariable(name: "mlen", scope: !1255, file: !45, line: 32, type: !21)
!1266 = !DILocation(line: 37, column: 2, scope: !1255)
!1267 = !DILocation(line: 37, column: 7, scope: !1255)
!1268 = !DILocation(line: 38, column: 15, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1255, file: !45, line: 38, column: 6)
!1270 = !DILocation(line: 38, column: 6, scope: !1255)
!1271 = !DILocation(line: 39, column: 3, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !45, line: 38, column: 21)
!1273 = !DILocation(line: 46, column: 13, scope: !1255)
!1274 = !DILocalVariable(name: "a_bitlen", scope: !1255, file: !45, line: 31, type: !10)
!1275 = !DILocation(line: 47, column: 19, scope: !1255)
!1276 = !DILocation(line: 47, column: 25, scope: !1255)
!1277 = !DILocation(line: 47, column: 9, scope: !1255)
!1278 = !DILocalVariable(name: "alen", scope: !1255, file: !45, line: 32, type: !21)
!1279 = !DILocation(line: 48, column: 15, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1255, file: !45, line: 48, column: 6)
!1281 = !DILocation(line: 48, column: 6, scope: !1255)
!1282 = !DILocation(line: 49, column: 12, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1280, file: !45, line: 48, column: 27)
!1284 = !DILocation(line: 49, column: 3, scope: !1283)
!1285 = !DILocation(line: 49, column: 19, scope: !1283)
!1286 = !DILocation(line: 49, column: 29, scope: !1283)
!1287 = !DILocalVariable(name: "u", scope: !1255, file: !45, line: 32, type: !21)
!1288 = !DILocation(line: 50, column: 8, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1283, file: !45, line: 50, column: 3)
!1290 = !DILocation(line: 0, scope: !1289)
!1291 = !DILocation(line: 50, column: 20, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !45, line: 50, column: 3)
!1293 = !DILocation(line: 50, column: 3, scope: !1289)
!1294 = !DILocation(line: 51, column: 8, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !45, line: 50, column: 34)
!1296 = !DILocation(line: 51, column: 4, scope: !1295)
!1297 = !DILocation(line: 51, column: 13, scope: !1295)
!1298 = !DILocation(line: 52, column: 3, scope: !1295)
!1299 = !DILocation(line: 50, column: 30, scope: !1292)
!1300 = !DILocation(line: 50, column: 3, scope: !1292)
!1301 = distinct !{!1301, !1293, !1302, !88}
!1302 = !DILocation(line: 52, column: 3, scope: !1289)
!1303 = !DILocation(line: 53, column: 3, scope: !1283)
!1304 = !DILocation(line: 61, column: 11, scope: !1255)
!1305 = !DILocation(line: 61, column: 2, scope: !1255)
!1306 = !DILocation(line: 61, column: 18, scope: !1255)
!1307 = !DILocation(line: 61, column: 30, scope: !1255)
!1308 = !DILocation(line: 61, column: 22, scope: !1255)
!1309 = !DILocation(line: 61, column: 45, scope: !1255)
!1310 = !DILocation(line: 61, column: 50, scope: !1255)
!1311 = !DILocation(line: 62, column: 2, scope: !1255)
!1312 = !DILocation(line: 62, column: 10, scope: !1255)
!1313 = !DILocation(line: 63, column: 13, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1255, file: !45, line: 63, column: 2)
!1315 = !DILocation(line: 63, column: 20, scope: !1314)
!1316 = !DILocation(line: 63, column: 7, scope: !1314)
!1317 = !DILocation(line: 0, scope: !1314)
!1318 = !DILocation(line: 63, column: 30, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !45, line: 63, column: 2)
!1320 = !DILocation(line: 63, column: 2, scope: !1314)
!1321 = !DILocation(line: 64, column: 26, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !45, line: 63, column: 41)
!1323 = !DILocation(line: 64, column: 3, scope: !1322)
!1324 = !DILocation(line: 65, column: 2, scope: !1322)
!1325 = !DILocation(line: 63, column: 37, scope: !1319)
!1326 = !DILocation(line: 63, column: 2, scope: !1319)
!1327 = distinct !{!1327, !1320, !1328, !88}
!1328 = !DILocation(line: 65, column: 2, scope: !1314)
!1329 = !DILocation(line: 66, column: 1, scope: !1255)
!1330 = distinct !DISubprogram(name: "br_i32_sub", scope: !47, file: !47, line: 29, type: !202, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !2)
!1331 = !DILocalVariable(name: "a", arg: 1, scope: !1330, file: !47, line: 29, type: !204)
!1332 = !DILocation(line: 0, scope: !1330)
!1333 = !DILocalVariable(name: "b", arg: 2, scope: !1330, file: !47, line: 29, type: !205)
!1334 = !DILocalVariable(name: "ctl", arg: 3, scope: !1330, file: !47, line: 29, type: !10)
!1335 = !DILocalVariable(name: "cc", scope: !1330, file: !47, line: 31, type: !10)
!1336 = !DILocation(line: 35, column: 7, scope: !1330)
!1337 = !DILocation(line: 35, column: 12, scope: !1330)
!1338 = !DILocation(line: 35, column: 18, scope: !1330)
!1339 = !DILocation(line: 35, column: 6, scope: !1330)
!1340 = !DILocalVariable(name: "m", scope: !1330, file: !47, line: 32, type: !21)
!1341 = !DILocalVariable(name: "u", scope: !1330, file: !47, line: 32, type: !21)
!1342 = !DILocation(line: 36, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1330, file: !47, line: 36, column: 2)
!1344 = !DILocation(line: 0, scope: !1343)
!1345 = !DILocation(line: 36, column: 16, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !47, line: 36, column: 2)
!1347 = !DILocation(line: 36, column: 2, scope: !1343)
!1348 = !DILocation(line: 39, column: 8, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !47, line: 36, column: 27)
!1350 = !DILocalVariable(name: "aw", scope: !1349, file: !47, line: 37, type: !10)
!1351 = !DILocation(line: 0, scope: !1349)
!1352 = !DILocation(line: 40, column: 8, scope: !1349)
!1353 = !DILocalVariable(name: "bw", scope: !1349, file: !47, line: 37, type: !10)
!1354 = !DILocation(line: 41, column: 12, scope: !1349)
!1355 = !DILocation(line: 41, column: 17, scope: !1349)
!1356 = !DILocalVariable(name: "naw", scope: !1349, file: !47, line: 37, type: !10)
!1357 = !DILocation(line: 47, column: 14, scope: !1349)
!1358 = !DILocation(line: 47, column: 12, scope: !1349)
!1359 = !DILocation(line: 47, column: 29, scope: !1349)
!1360 = !DILocation(line: 47, column: 27, scope: !1349)
!1361 = !DILocation(line: 48, column: 10, scope: !1349)
!1362 = !DILocation(line: 48, column: 3, scope: !1349)
!1363 = !DILocation(line: 48, column: 8, scope: !1349)
!1364 = !DILocation(line: 49, column: 2, scope: !1349)
!1365 = !DILocation(line: 36, column: 23, scope: !1346)
!1366 = !DILocation(line: 36, column: 2, scope: !1346)
!1367 = distinct !{!1367, !1347, !1368, !88}
!1368 = !DILocation(line: 49, column: 2, scope: !1343)
!1369 = !DILocation(line: 50, column: 2, scope: !1330)
!1370 = distinct !DISubprogram(name: "EQ", scope: !91, file: !91, line: 779, type: !247, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !46, retainedNodes: !2)
!1371 = !DILocalVariable(name: "x", arg: 1, scope: !1370, file: !91, line: 779, type: !10)
!1372 = !DILocation(line: 0, scope: !1370)
!1373 = !DILocalVariable(name: "y", arg: 2, scope: !1370, file: !91, line: 779, type: !10)
!1374 = !DILocation(line: 783, column: 8, scope: !1370)
!1375 = !DILocalVariable(name: "q", scope: !1370, file: !91, line: 781, type: !10)
!1376 = !DILocation(line: 784, column: 18, scope: !1370)
!1377 = !DILocation(line: 784, column: 16, scope: !1370)
!1378 = !DILocation(line: 784, column: 22, scope: !1370)
!1379 = !DILocation(line: 784, column: 9, scope: !1370)
!1380 = !DILocation(line: 784, column: 2, scope: !1370)
!1381 = distinct !DISubprogram(name: "GT", scope: !91, file: !91, line: 803, type: !247, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !46, retainedNodes: !2)
!1382 = !DILocalVariable(name: "x", arg: 1, scope: !1381, file: !91, line: 803, type: !10)
!1383 = !DILocation(line: 0, scope: !1381)
!1384 = !DILocalVariable(name: "y", arg: 2, scope: !1381, file: !91, line: 803, type: !10)
!1385 = !DILocation(line: 819, column: 8, scope: !1381)
!1386 = !DILocalVariable(name: "z", scope: !1381, file: !91, line: 817, type: !10)
!1387 = !DILocation(line: 820, column: 18, scope: !1381)
!1388 = !DILocation(line: 820, column: 28, scope: !1381)
!1389 = !DILocation(line: 820, column: 23, scope: !1381)
!1390 = !DILocation(line: 820, column: 12, scope: !1381)
!1391 = !DILocation(line: 820, column: 35, scope: !1381)
!1392 = !DILocation(line: 820, column: 2, scope: !1381)
!1393 = distinct !DISubprogram(name: "MUX", scope: !91, file: !91, line: 770, type: !92, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !46, retainedNodes: !2)
!1394 = !DILocalVariable(name: "ctl", arg: 1, scope: !1393, file: !91, line: 770, type: !10)
!1395 = !DILocation(line: 0, scope: !1393)
!1396 = !DILocalVariable(name: "x", arg: 2, scope: !1393, file: !91, line: 770, type: !10)
!1397 = !DILocalVariable(name: "y", arg: 3, scope: !1393, file: !91, line: 770, type: !10)
!1398 = !DILocation(line: 772, column: 14, scope: !1393)
!1399 = !DILocation(line: 772, column: 24, scope: !1393)
!1400 = !DILocation(line: 772, column: 19, scope: !1393)
!1401 = !DILocation(line: 772, column: 11, scope: !1393)
!1402 = !DILocation(line: 772, column: 2, scope: !1393)
!1403 = distinct !DISubprogram(name: "NOT", scope: !91, file: !91, line: 761, type: !282, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !46, retainedNodes: !2)
!1404 = !DILocalVariable(name: "ctl", arg: 1, scope: !1403, file: !91, line: 761, type: !10)
!1405 = !DILocation(line: 0, scope: !1403)
!1406 = !DILocation(line: 763, column: 13, scope: !1403)
!1407 = !DILocation(line: 763, column: 2, scope: !1403)
!1408 = distinct !DISubprogram(name: "br_i32_to_monty", scope: !49, file: !49, line: 29, type: !1409, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !2)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !204, !205}
!1411 = !DILocalVariable(name: "x", arg: 1, scope: !1408, file: !49, line: 29, type: !204)
!1412 = !DILocation(line: 0, scope: !1408)
!1413 = !DILocalVariable(name: "m", arg: 2, scope: !1408, file: !49, line: 29, type: !205)
!1414 = !DILocation(line: 33, column: 12, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1408, file: !49, line: 33, column: 2)
!1416 = !DILocation(line: 33, column: 17, scope: !1415)
!1417 = !DILocation(line: 33, column: 23, scope: !1415)
!1418 = !DILocalVariable(name: "k", scope: !1408, file: !49, line: 31, type: !10)
!1419 = !DILocation(line: 33, column: 7, scope: !1415)
!1420 = !DILocation(line: 0, scope: !1415)
!1421 = !DILocation(line: 33, column: 31, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1415, file: !49, line: 33, column: 2)
!1423 = !DILocation(line: 33, column: 2, scope: !1415)
!1424 = !DILocation(line: 34, column: 3, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !49, line: 33, column: 42)
!1426 = !DILocation(line: 35, column: 2, scope: !1425)
!1427 = !DILocation(line: 33, column: 38, scope: !1422)
!1428 = !DILocation(line: 33, column: 2, scope: !1422)
!1429 = distinct !{!1429, !1423, !1430, !88}
!1430 = !DILocation(line: 35, column: 2, scope: !1415)
!1431 = !DILocation(line: 36, column: 1, scope: !1408)
!1432 = distinct !DISubprogram(name: "br_rsa_i32_private", scope: !51, file: !51, line: 31, type: !1433, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !2)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!10, !53, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !109, line: 205, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 182, size: 704, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !1438, file: !109, line: 184, baseType: !10, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1438, file: !109, line: 186, baseType: !53, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !1438, file: !109, line: 188, baseType: !21, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1438, file: !109, line: 190, baseType: !53, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1438, file: !109, line: 192, baseType: !21, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1438, file: !109, line: 194, baseType: !53, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !1438, file: !109, line: 196, baseType: !21, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !1438, file: !109, line: 198, baseType: !53, size: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !1438, file: !109, line: 200, baseType: !21, size: 64, offset: 512)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !1438, file: !109, line: 202, baseType: !53, size: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !1438, file: !109, line: 204, baseType: !21, size: 64, offset: 640)
!1451 = !DILocalVariable(name: "x", arg: 1, scope: !1432, file: !51, line: 31, type: !53)
!1452 = !DILocation(line: 0, scope: !1432)
!1453 = !DILocalVariable(name: "sk", arg: 2, scope: !1432, file: !51, line: 31, type: !1435)
!1454 = !DILocalVariable(name: "tmp", scope: !1432, file: !51, line: 35, type: !1455)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 12672, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 396)
!1458 = !DILocation(line: 35, column: 11, scope: !1432)
!1459 = !DILocation(line: 49, column: 7, scope: !1432)
!1460 = !DILocalVariable(name: "mq", scope: !1432, file: !51, line: 36, type: !204)
!1461 = !DILocation(line: 50, column: 7, scope: !1432)
!1462 = !DILocation(line: 50, column: 11, scope: !1432)
!1463 = !DILocalVariable(name: "mp", scope: !1432, file: !51, line: 36, type: !204)
!1464 = !DILocation(line: 51, column: 7, scope: !1432)
!1465 = !DILocation(line: 51, column: 11, scope: !1432)
!1466 = !DILocalVariable(name: "t2", scope: !1432, file: !51, line: 36, type: !204)
!1467 = !DILocation(line: 52, column: 7, scope: !1432)
!1468 = !DILocation(line: 52, column: 11, scope: !1432)
!1469 = !DILocalVariable(name: "s2", scope: !1432, file: !51, line: 36, type: !204)
!1470 = !DILocation(line: 53, column: 7, scope: !1432)
!1471 = !DILocation(line: 53, column: 11, scope: !1432)
!1472 = !DILocalVariable(name: "s1", scope: !1432, file: !51, line: 36, type: !204)
!1473 = !DILocation(line: 54, column: 7, scope: !1432)
!1474 = !DILocation(line: 54, column: 11, scope: !1432)
!1475 = !DILocalVariable(name: "t1", scope: !1432, file: !51, line: 36, type: !204)
!1476 = !DILocalVariable(name: "t3", scope: !1432, file: !51, line: 36, type: !204)
!1477 = !DILocation(line: 61, column: 10, scope: !1432)
!1478 = !DILocalVariable(name: "p", scope: !1432, file: !51, line: 33, type: !71)
!1479 = !DILocation(line: 62, column: 13, scope: !1432)
!1480 = !DILocalVariable(name: "plen", scope: !1432, file: !51, line: 34, type: !21)
!1481 = !DILocation(line: 63, column: 2, scope: !1432)
!1482 = !DILocation(line: 63, column: 14, scope: !1432)
!1483 = !DILocation(line: 63, column: 18, scope: !1432)
!1484 = !DILocation(line: 63, column: 21, scope: !1432)
!1485 = !DILocation(line: 63, column: 24, scope: !1432)
!1486 = !DILocation(line: 64, column: 5, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1432, file: !51, line: 63, column: 30)
!1488 = !DILocation(line: 65, column: 8, scope: !1487)
!1489 = distinct !{!1489, !1481, !1490, !88}
!1490 = !DILocation(line: 66, column: 2, scope: !1432)
!1491 = !DILocation(line: 67, column: 10, scope: !1432)
!1492 = !DILocalVariable(name: "q", scope: !1432, file: !51, line: 33, type: !71)
!1493 = !DILocation(line: 68, column: 13, scope: !1432)
!1494 = !DILocalVariable(name: "qlen", scope: !1432, file: !51, line: 34, type: !21)
!1495 = !DILocation(line: 69, column: 2, scope: !1432)
!1496 = !DILocation(line: 69, column: 14, scope: !1432)
!1497 = !DILocation(line: 69, column: 18, scope: !1432)
!1498 = !DILocation(line: 69, column: 21, scope: !1432)
!1499 = !DILocation(line: 69, column: 24, scope: !1432)
!1500 = !DILocation(line: 70, column: 5, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1432, file: !51, line: 69, column: 30)
!1502 = !DILocation(line: 71, column: 8, scope: !1501)
!1503 = distinct !{!1503, !1495, !1504, !88}
!1504 = !DILocation(line: 72, column: 2, scope: !1432)
!1505 = !DILocation(line: 73, column: 11, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1432, file: !51, line: 73, column: 6)
!1507 = !DILocation(line: 74, column: 3, scope: !1506)
!1508 = !DILocation(line: 74, column: 11, scope: !1506)
!1509 = !DILocation(line: 73, column: 6, scope: !1432)
!1510 = !DILocation(line: 76, column: 3, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !51, line: 75, column: 2)
!1512 = !DILocation(line: 82, column: 2, scope: !1432)
!1513 = !DILocation(line: 83, column: 18, scope: !1432)
!1514 = !DILocation(line: 83, column: 2, scope: !1432)
!1515 = !DILocation(line: 84, column: 2, scope: !1432)
!1516 = !DILocation(line: 90, column: 2, scope: !1432)
!1517 = !DILocation(line: 91, column: 14, scope: !1432)
!1518 = !DILocation(line: 91, column: 23, scope: !1432)
!1519 = !DILocation(line: 91, column: 28, scope: !1432)
!1520 = !DILocation(line: 91, column: 9, scope: !1432)
!1521 = !DILocalVariable(name: "xlen", scope: !1432, file: !51, line: 38, type: !21)
!1522 = !DILocation(line: 92, column: 19, scope: !1432)
!1523 = !DILocation(line: 92, column: 16, scope: !1432)
!1524 = !DILocation(line: 92, column: 2, scope: !1432)
!1525 = !DILocalVariable(name: "u", scope: !1432, file: !51, line: 38, type: !21)
!1526 = !DILocalVariable(name: "r", scope: !1432, file: !51, line: 39, type: !10)
!1527 = !DILocation(line: 95, column: 2, scope: !1432)
!1528 = !DILocation(line: 95, column: 11, scope: !1432)
!1529 = !DILocation(line: 98, column: 5, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1432, file: !51, line: 95, column: 16)
!1531 = !DILocation(line: 99, column: 30, scope: !1530)
!1532 = !DILocation(line: 99, column: 8, scope: !1530)
!1533 = !DILocalVariable(name: "wn", scope: !1530, file: !51, line: 96, type: !10)
!1534 = !DILocation(line: 0, scope: !1530)
!1535 = !DILocation(line: 100, column: 8, scope: !1530)
!1536 = !DILocalVariable(name: "wx", scope: !1530, file: !51, line: 96, type: !10)
!1537 = !DILocation(line: 101, column: 18, scope: !1530)
!1538 = !DILocation(line: 101, column: 12, scope: !1530)
!1539 = !DILocation(line: 101, column: 24, scope: !1530)
!1540 = !DILocation(line: 101, column: 30, scope: !1530)
!1541 = distinct !{!1541, !1527, !1542, !88}
!1542 = !DILocation(line: 102, column: 2, scope: !1432)
!1543 = !DILocation(line: 107, column: 22, scope: !1432)
!1544 = !DILocation(line: 107, column: 8, scope: !1432)
!1545 = !DILocalVariable(name: "p0i", scope: !1432, file: !51, line: 37, type: !10)
!1546 = !DILocation(line: 108, column: 2, scope: !1432)
!1547 = !DILocation(line: 109, column: 24, scope: !1432)
!1548 = !DILocation(line: 109, column: 32, scope: !1432)
!1549 = !DILocation(line: 109, column: 2, scope: !1432)
!1550 = !DILocation(line: 114, column: 22, scope: !1432)
!1551 = !DILocation(line: 114, column: 8, scope: !1432)
!1552 = !DILocalVariable(name: "q0i", scope: !1432, file: !51, line: 37, type: !10)
!1553 = !DILocation(line: 115, column: 2, scope: !1432)
!1554 = !DILocation(line: 116, column: 24, scope: !1432)
!1555 = !DILocation(line: 116, column: 32, scope: !1432)
!1556 = !DILocation(line: 116, column: 2, scope: !1432)
!1557 = !DILocation(line: 131, column: 2, scope: !1432)
!1558 = !DILocation(line: 132, column: 21, scope: !1432)
!1559 = !DILocation(line: 132, column: 2, scope: !1432)
!1560 = !DILocation(line: 133, column: 2, scope: !1432)
!1561 = !DILocation(line: 134, column: 31, scope: !1432)
!1562 = !DILocation(line: 134, column: 39, scope: !1432)
!1563 = !DILocation(line: 134, column: 2, scope: !1432)
!1564 = !DILocation(line: 135, column: 2, scope: !1432)
!1565 = !DILocation(line: 148, column: 2, scope: !1432)
!1566 = !DILocation(line: 154, column: 2, scope: !1432)
!1567 = !DILocation(line: 160, column: 13, scope: !1432)
!1568 = !DILocation(line: 160, column: 19, scope: !1432)
!1569 = !DILocation(line: 160, column: 2, scope: !1432)
!1570 = !DILocation(line: 161, column: 1, scope: !1432)
!1571 = distinct !DISubprogram(name: "br_i32_zero", scope: !91, file: !91, line: 1235, type: !588, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !2)
!1572 = !DILocalVariable(name: "x", arg: 1, scope: !1571, file: !91, line: 1235, type: !204)
!1573 = !DILocation(line: 0, scope: !1571)
!1574 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1571, file: !91, line: 1235, type: !10)
!1575 = !DILocation(line: 1237, column: 5, scope: !1571)
!1576 = !DILocation(line: 1237, column: 8, scope: !1571)
!1577 = !DILocation(line: 1238, column: 2, scope: !1571)
!1578 = !DILocation(line: 1238, column: 25, scope: !1571)
!1579 = !DILocation(line: 1238, column: 31, scope: !1571)
!1580 = !DILocation(line: 1238, column: 15, scope: !1571)
!1581 = !DILocation(line: 1238, column: 37, scope: !1571)
!1582 = !DILocation(line: 1239, column: 1, scope: !1571)
