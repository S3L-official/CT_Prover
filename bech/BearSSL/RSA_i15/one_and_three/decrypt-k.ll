; ModuleID = 'decrypt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_rsa_private_key = type { i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64 }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ccopy(i32 %0, i8* %1, i8* %2, i64 %3) #0 !dbg !61 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i8* %1, metadata !68, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i8* %2, metadata !69, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i64 %3, metadata !70, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i8* %1, metadata !71, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i8* %2, metadata !72, metadata !DIExpression()), !dbg !67
  br label %5, !dbg !75

5:                                                ; preds = %8, %4
  %.02 = phi i64 [ %3, %4 ], [ %6, %8 ]
  %.01 = phi i8* [ %1, %4 ], [ %16, %8 ], !dbg !67
  %.0 = phi i8* [ %2, %4 ], [ %9, %8 ], !dbg !67
  call void @llvm.dbg.value(metadata i8* %.0, metadata !72, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i8* %.01, metadata !71, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i64 %.02, metadata !70, metadata !DIExpression()), !dbg !67
  %6 = add i64 %.02, -1, !dbg !76
  call void @llvm.dbg.value(metadata i64 %6, metadata !70, metadata !DIExpression()), !dbg !67
  %7 = icmp ugt i64 %.02, 0, !dbg !77
  br i1 %7, label %8, label %17, !dbg !75

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !78
  call void @llvm.dbg.value(metadata i8* %9, metadata !72, metadata !DIExpression()), !dbg !67
  %10 = load i8, i8* %.0, align 1, !dbg !80
  %11 = zext i8 %10 to i32, !dbg !80
  call void @llvm.dbg.value(metadata i32 %11, metadata !81, metadata !DIExpression()), !dbg !82
  %12 = load i8, i8* %.01, align 1, !dbg !83
  %13 = zext i8 %12 to i32, !dbg !83
  call void @llvm.dbg.value(metadata i32 %13, metadata !84, metadata !DIExpression()), !dbg !82
  %14 = call i32 @MUX(i32 %0, i32 %11, i32 %13), !dbg !85
  %15 = trunc i32 %14 to i8, !dbg !85
  store i8 %15, i8* %.01, align 1, !dbg !86
  %16 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !87
  call void @llvm.dbg.value(metadata i8* %16, metadata !71, metadata !DIExpression()), !dbg !67
  br label %5, !dbg !75, !llvm.loop !88

17:                                               ; preds = %5
  ret void, !dbg !91
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !92 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i32 %1, metadata !98, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i32 %2, metadata !99, metadata !DIExpression()), !dbg !97
  %4 = sub i32 0, %0, !dbg !100
  %5 = xor i32 %1, %2, !dbg !101
  %6 = and i32 %4, %5, !dbg !102
  %7 = xor i32 %2, %6, !dbg !103
  ret i32 %7, !dbg !104
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @decrypt_wrapper(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !105 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !127, metadata !DIExpression()), !dbg !126
  %3 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !128
  call void @public_in(%struct.smack_value* %3), !dbg !129
  %4 = call %struct.smack_value* (%struct.br_rsa_private_key*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_rsa_private_key*, ...)*)(%struct.br_rsa_private_key* %1), !dbg !130
  call void @public_in(%struct.smack_value* %4), !dbg !131
  %5 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !132
  %6 = load i8*, i8** %5, align 8, !dbg !132
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !133
  call void @public_in(%struct.smack_value* %7), !dbg !134
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !135
  %9 = load i8*, i8** %8, align 8, !dbg !135
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %9), !dbg !136
  call void @public_in(%struct.smack_value* %10), !dbg !137
  %11 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !138
  %12 = load i8*, i8** %11, align 8, !dbg !138
  %13 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %12), !dbg !139
  call void @public_in(%struct.smack_value* %13), !dbg !140
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !141
  %15 = load i8*, i8** %14, align 8, !dbg !141
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %15), !dbg !142
  call void @public_in(%struct.smack_value* %16), !dbg !143
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !144
  %18 = load i8*, i8** %17, align 8, !dbg !144
  %19 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %18), !dbg !145
  call void @public_in(%struct.smack_value* %19), !dbg !146
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !147
  %21 = load i64, i64* %20, align 8, !dbg !147
  %22 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %21), !dbg !148
  call void @public_in(%struct.smack_value* %22), !dbg !149
  %23 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !150
  %24 = load i64, i64* %23, align 8, !dbg !150
  %25 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %24), !dbg !151
  call void @public_in(%struct.smack_value* %25), !dbg !152
  %26 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !153
  %27 = load i64, i64* %26, align 8, !dbg !153
  %28 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %27), !dbg !154
  call void @public_in(%struct.smack_value* %28), !dbg !155
  %29 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !156
  %30 = load i64, i64* %29, align 8, !dbg !156
  %31 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %30), !dbg !157
  call void @public_in(%struct.smack_value* %31), !dbg !158
  %32 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !159
  %33 = load i64, i64* %32, align 8, !dbg !159
  %34 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %33), !dbg !160
  call void @public_in(%struct.smack_value* %34), !dbg !161
  %35 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !162
  %36 = load i32, i32* %35, align 8, !dbg !162
  %37 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %36), !dbg !163
  call void @public_in(%struct.smack_value* %37), !dbg !164
  %38 = call i32 @br_rsa_i15_private(i8* %0, %struct.br_rsa_private_key* %1), !dbg !165
  ret void, !dbg !166
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @decrypt_wrapper_t() #0 !dbg !167 {
  %1 = alloca i8, align 1
  %2 = alloca %struct.br_rsa_private_key, align 8
  call void @llvm.dbg.declare(metadata i8* %1, metadata !170, metadata !DIExpression()), !dbg !171
  %3 = call zeroext i8 (...) @getcharpt(), !dbg !172
  store i8 %3, i8* %1, align 1, !dbg !171
  call void @llvm.dbg.value(metadata i8* %1, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata %struct.br_rsa_private_key* %2, metadata !175, metadata !DIExpression()), !dbg !176
  call void (%struct.br_rsa_private_key*, ...) @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8 %2), !dbg !177
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %2, metadata !178, metadata !DIExpression()), !dbg !174
  %4 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 1, !dbg !180
  %5 = load i8*, i8** %4, align 8, !dbg !180
  call void @llvm.dbg.value(metadata i8* %5, metadata !181, metadata !DIExpression()), !dbg !174
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 3, !dbg !182
  %7 = load i8*, i8** %6, align 8, !dbg !182
  call void @llvm.dbg.value(metadata i8* %7, metadata !183, metadata !DIExpression()), !dbg !174
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 5, !dbg !184
  %9 = load i8*, i8** %8, align 8, !dbg !184
  call void @llvm.dbg.value(metadata i8* %9, metadata !185, metadata !DIExpression()), !dbg !174
  %10 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 7, !dbg !186
  %11 = load i8*, i8** %10, align 8, !dbg !186
  call void @llvm.dbg.value(metadata i8* %11, metadata !187, metadata !DIExpression()), !dbg !174
  %12 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 9, !dbg !188
  %13 = load i8*, i8** %12, align 8, !dbg !188
  call void @llvm.dbg.value(metadata i8* %13, metadata !189, metadata !DIExpression()), !dbg !174
  call void @vfct_taintseed(i8* %5, i8* %7, i8* %9, i8* %11, i8* %13), !dbg !190
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 1, !dbg !191
  store i8* %5, i8** %14, align 8, !dbg !192
  %15 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 3, !dbg !193
  store i8* %7, i8** %15, align 8, !dbg !194
  %16 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 5, !dbg !195
  store i8* %9, i8** %16, align 8, !dbg !196
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 7, !dbg !197
  store i8* %11, i8** %17, align 8, !dbg !198
  %18 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 9, !dbg !199
  store i8* %13, i8** %18, align 8, !dbg !200
  %19 = call i32 @br_rsa_i15_private(i8* %1, %struct.br_rsa_private_key* %2), !dbg !201
  ret void, !dbg !202
}

declare dso_local zeroext i8 @getcharpt(...) #2

declare dso_local void @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8, ...) #2

declare dso_local void @vfct_taintseed(i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_add(i16* %0, i16* %1, i32 %2) #0 !dbg !203 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i16* %1, metadata !214, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i32 %2, metadata !215, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i32 0, metadata !216, metadata !DIExpression()), !dbg !213
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !217
  %5 = load i16, i16* %4, align 2, !dbg !217
  %6 = zext i16 %5 to i32, !dbg !217
  %7 = add nsw i32 %6, 31, !dbg !218
  %8 = ashr i32 %7, 4, !dbg !219
  %9 = sext i32 %8 to i64, !dbg !220
  call void @llvm.dbg.value(metadata i64 %9, metadata !221, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i64 1, metadata !222, metadata !DIExpression()), !dbg !213
  br label %10, !dbg !223

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !213
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !225
  call void @llvm.dbg.value(metadata i64 %.0, metadata !222, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i32 %.01, metadata !216, metadata !DIExpression()), !dbg !213
  %11 = icmp ult i64 %.0, %9, !dbg !226
  br i1 %11, label %12, label %28, !dbg !228

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !229
  %14 = load i16, i16* %13, align 2, !dbg !229
  %15 = zext i16 %14 to i32, !dbg !229
  call void @llvm.dbg.value(metadata i32 %15, metadata !231, metadata !DIExpression()), !dbg !232
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !233
  %17 = load i16, i16* %16, align 2, !dbg !233
  %18 = zext i16 %17 to i32, !dbg !233
  call void @llvm.dbg.value(metadata i32 %18, metadata !234, metadata !DIExpression()), !dbg !232
  %19 = add i32 %15, %18, !dbg !235
  %20 = add i32 %19, %.01, !dbg !236
  call void @llvm.dbg.value(metadata i32 %20, metadata !237, metadata !DIExpression()), !dbg !232
  %21 = lshr i32 %20, 15, !dbg !238
  call void @llvm.dbg.value(metadata i32 %21, metadata !216, metadata !DIExpression()), !dbg !213
  %22 = and i32 %20, 32767, !dbg !239
  %23 = call i32 @MUX.1(i32 %2, i32 %22, i32 %15), !dbg !240
  %24 = trunc i32 %23 to i16, !dbg !240
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !241
  store i16 %24, i16* %25, align 2, !dbg !242
  br label %26, !dbg !243

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !244
  call void @llvm.dbg.value(metadata i64 %27, metadata !222, metadata !DIExpression()), !dbg !213
  br label %10, !dbg !245, !llvm.loop !246

28:                                               ; preds = %10
  ret i32 %.01, !dbg !248
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.1(i32 %0, i32 %1, i32 %2) #0 !dbg !249 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 %1, metadata !252, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 %2, metadata !253, metadata !DIExpression()), !dbg !251
  %4 = sub i32 0, %0, !dbg !254
  %5 = xor i32 %1, %2, !dbg !255
  %6 = and i32 %4, %5, !dbg !256
  %7 = xor i32 %2, %6, !dbg !257
  ret i32 %7, !dbg !258
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_bit_length(i16* %0, i64 %1) #0 !dbg !259 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %1, metadata !264, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 0, metadata !265, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 0, metadata !266, metadata !DIExpression()), !dbg !263
  br label %3, !dbg !267

3:                                                ; preds = %6, %2
  %.02 = phi i32 [ 0, %2 ], [ %11, %6 ], !dbg !263
  %.01 = phi i64 [ %1, %2 ], [ %4, %6 ]
  %.0 = phi i32 [ 0, %2 ], [ %13, %6 ], !dbg !263
  call void @llvm.dbg.value(metadata i32 %.0, metadata !266, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %.01, metadata !264, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %.02, metadata !265, metadata !DIExpression()), !dbg !263
  %4 = add i64 %.01, -1, !dbg !268
  call void @llvm.dbg.value(metadata i64 %4, metadata !264, metadata !DIExpression()), !dbg !263
  %5 = icmp ugt i64 %.01, 0, !dbg !269
  br i1 %5, label %6, label %14, !dbg !267

6:                                                ; preds = %3
  %7 = call i32 @EQ(i32 %.02, i32 0), !dbg !270
  call void @llvm.dbg.value(metadata i32 %7, metadata !272, metadata !DIExpression()), !dbg !273
  %8 = getelementptr inbounds i16, i16* %0, i64 %4, !dbg !274
  %9 = load i16, i16* %8, align 2, !dbg !274
  %10 = zext i16 %9 to i32, !dbg !274
  call void @llvm.dbg.value(metadata i32 %10, metadata !275, metadata !DIExpression()), !dbg !273
  %11 = call i32 @MUX.2(i32 %7, i32 %10, i32 %.02), !dbg !276
  call void @llvm.dbg.value(metadata i32 %11, metadata !265, metadata !DIExpression()), !dbg !263
  %12 = trunc i64 %4 to i32, !dbg !277
  %13 = call i32 @MUX.2(i32 %7, i32 %12, i32 %.0), !dbg !278
  call void @llvm.dbg.value(metadata i32 %13, metadata !266, metadata !DIExpression()), !dbg !263
  br label %3, !dbg !267, !llvm.loop !279

14:                                               ; preds = %3
  %15 = shl i32 %.0, 4, !dbg !281
  %16 = call i32 @BIT_LENGTH(i32 %.02), !dbg !282
  %17 = add i32 %15, %16, !dbg !283
  ret i32 %17, !dbg !284
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !285 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata i32 %1, metadata !290, metadata !DIExpression()), !dbg !289
  %3 = xor i32 %0, %1, !dbg !291
  call void @llvm.dbg.value(metadata i32 %3, metadata !292, metadata !DIExpression()), !dbg !289
  %4 = sub i32 0, %3, !dbg !293
  %5 = or i32 %3, %4, !dbg !294
  %6 = lshr i32 %5, 31, !dbg !295
  %7 = call i32 @NOT(i32 %6), !dbg !296
  ret i32 %7, !dbg !297
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.2(i32 %0, i32 %1, i32 %2) #0 !dbg !298 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 %1, metadata !301, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 %2, metadata !302, metadata !DIExpression()), !dbg !300
  %4 = sub i32 0, %0, !dbg !303
  %5 = xor i32 %1, %2, !dbg !304
  %6 = and i32 %4, %5, !dbg !305
  %7 = xor i32 %2, %6, !dbg !306
  ret i32 %7, !dbg !307
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @BIT_LENGTH(i32 %0) #0 !dbg !308 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !311, metadata !DIExpression()), !dbg !312
  %2 = call i32 @NEQ(i32 %0, i32 0), !dbg !313
  call void @llvm.dbg.value(metadata i32 %2, metadata !314, metadata !DIExpression()), !dbg !312
  %3 = call i32 @GT(i32 %0, i32 65535), !dbg !315
  call void @llvm.dbg.value(metadata i32 %3, metadata !316, metadata !DIExpression()), !dbg !312
  %4 = lshr i32 %0, 16, !dbg !317
  %5 = call i32 @MUX.2(i32 %3, i32 %4, i32 %0), !dbg !318
  call void @llvm.dbg.value(metadata i32 %5, metadata !311, metadata !DIExpression()), !dbg !312
  %6 = shl i32 %3, 4, !dbg !319
  %7 = add i32 %2, %6, !dbg !320
  call void @llvm.dbg.value(metadata i32 %7, metadata !314, metadata !DIExpression()), !dbg !312
  %8 = call i32 @GT(i32 %5, i32 255), !dbg !321
  call void @llvm.dbg.value(metadata i32 %8, metadata !316, metadata !DIExpression()), !dbg !312
  %9 = lshr i32 %5, 8, !dbg !322
  %10 = call i32 @MUX.2(i32 %8, i32 %9, i32 %5), !dbg !323
  call void @llvm.dbg.value(metadata i32 %10, metadata !311, metadata !DIExpression()), !dbg !312
  %11 = shl i32 %8, 3, !dbg !324
  %12 = add i32 %7, %11, !dbg !325
  call void @llvm.dbg.value(metadata i32 %12, metadata !314, metadata !DIExpression()), !dbg !312
  %13 = call i32 @GT(i32 %10, i32 15), !dbg !326
  call void @llvm.dbg.value(metadata i32 %13, metadata !316, metadata !DIExpression()), !dbg !312
  %14 = lshr i32 %10, 4, !dbg !327
  %15 = call i32 @MUX.2(i32 %13, i32 %14, i32 %10), !dbg !328
  call void @llvm.dbg.value(metadata i32 %15, metadata !311, metadata !DIExpression()), !dbg !312
  %16 = shl i32 %13, 2, !dbg !329
  %17 = add i32 %12, %16, !dbg !330
  call void @llvm.dbg.value(metadata i32 %17, metadata !314, metadata !DIExpression()), !dbg !312
  %18 = call i32 @GT(i32 %15, i32 3), !dbg !331
  call void @llvm.dbg.value(metadata i32 %18, metadata !316, metadata !DIExpression()), !dbg !312
  %19 = lshr i32 %15, 2, !dbg !332
  %20 = call i32 @MUX.2(i32 %18, i32 %19, i32 %15), !dbg !333
  call void @llvm.dbg.value(metadata i32 %20, metadata !311, metadata !DIExpression()), !dbg !312
  %21 = shl i32 %18, 1, !dbg !334
  %22 = add i32 %17, %21, !dbg !335
  call void @llvm.dbg.value(metadata i32 %22, metadata !314, metadata !DIExpression()), !dbg !312
  %23 = call i32 @GT(i32 %20, i32 1), !dbg !336
  %24 = add i32 %22, %23, !dbg !337
  call void @llvm.dbg.value(metadata i32 %24, metadata !314, metadata !DIExpression()), !dbg !312
  ret i32 %24, !dbg !338
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !339 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !340, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i32 %1, metadata !342, metadata !DIExpression()), !dbg !341
  %3 = xor i32 %0, %1, !dbg !343
  call void @llvm.dbg.value(metadata i32 %3, metadata !344, metadata !DIExpression()), !dbg !341
  %4 = sub i32 0, %3, !dbg !345
  %5 = or i32 %3, %4, !dbg !346
  %6 = lshr i32 %5, 31, !dbg !347
  ret i32 %6, !dbg !348
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !349 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i32 %1, metadata !352, metadata !DIExpression()), !dbg !351
  %3 = sub i32 %1, %0, !dbg !353
  call void @llvm.dbg.value(metadata i32 %3, metadata !354, metadata !DIExpression()), !dbg !351
  %4 = xor i32 %0, %1, !dbg !355
  %5 = xor i32 %0, %3, !dbg !356
  %6 = and i32 %4, %5, !dbg !357
  %7 = xor i32 %3, %6, !dbg !358
  %8 = lshr i32 %7, 31, !dbg !359
  ret i32 %8, !dbg !360
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !361 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !362, metadata !DIExpression()), !dbg !363
  %2 = xor i32 %0, 1, !dbg !364
  ret i32 %2, !dbg !365
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_decode(i16* %0, i8* %1, i64 %2) #0 !dbg !366 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i8* %1, metadata !371, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 %2, metadata !372, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i8* %1, metadata !373, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 1, metadata !374, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i32 0, metadata !375, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i32 0, metadata !376, metadata !DIExpression()), !dbg !370
  br label %4, !dbg !378

4:                                                ; preds = %22, %3
  %.04 = phi i64 [ 1, %3 ], [ %.15, %22 ], !dbg !370
  %.03 = phi i64 [ %2, %3 ], [ %5, %22 ]
  %.01 = phi i32 [ 0, %3 ], [ %.12, %22 ], !dbg !370
  %.0 = phi i32 [ 0, %3 ], [ %.1, %22 ], !dbg !370
  call void @llvm.dbg.value(metadata i32 %.0, metadata !376, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i32 %.01, metadata !375, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 %.03, metadata !372, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 %.04, metadata !374, metadata !DIExpression()), !dbg !370
  %5 = add i64 %.03, -1, !dbg !379
  call void @llvm.dbg.value(metadata i64 %5, metadata !372, metadata !DIExpression()), !dbg !370
  %6 = icmp ugt i64 %.03, 0, !dbg !380
  br i1 %6, label %7, label %23, !dbg !378

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %1, i64 %5, !dbg !381
  %9 = load i8, i8* %8, align 1, !dbg !381
  %10 = zext i8 %9 to i32, !dbg !381
  call void @llvm.dbg.value(metadata i32 %10, metadata !383, metadata !DIExpression()), !dbg !384
  %11 = shl i32 %10, %.0, !dbg !385
  %12 = or i32 %.01, %11, !dbg !386
  call void @llvm.dbg.value(metadata i32 %12, metadata !375, metadata !DIExpression()), !dbg !370
  %13 = add nsw i32 %.0, 8, !dbg !387
  call void @llvm.dbg.value(metadata i32 %13, metadata !376, metadata !DIExpression()), !dbg !370
  %14 = icmp sge i32 %13, 15, !dbg !388
  br i1 %14, label %15, label %22, !dbg !390

15:                                               ; preds = %7
  %16 = and i32 %12, 32767, !dbg !391
  %17 = trunc i32 %16 to i16, !dbg !393
  %18 = add i64 %.04, 1, !dbg !394
  call void @llvm.dbg.value(metadata i64 %18, metadata !374, metadata !DIExpression()), !dbg !370
  %19 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !395
  store i16 %17, i16* %19, align 2, !dbg !396
  %20 = sub nsw i32 %13, 15, !dbg !397
  call void @llvm.dbg.value(metadata i32 %20, metadata !376, metadata !DIExpression()), !dbg !370
  %21 = lshr i32 %12, 15, !dbg !398
  call void @llvm.dbg.value(metadata i32 %21, metadata !375, metadata !DIExpression()), !dbg !370
  br label %22, !dbg !399

22:                                               ; preds = %15, %7
  %.15 = phi i64 [ %18, %15 ], [ %.04, %7 ], !dbg !370
  %.12 = phi i32 [ %21, %15 ], [ %12, %7 ], !dbg !384
  %.1 = phi i32 [ %20, %15 ], [ %13, %7 ], !dbg !384
  call void @llvm.dbg.value(metadata i32 %.1, metadata !376, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i32 %.12, metadata !375, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 %.15, metadata !374, metadata !DIExpression()), !dbg !370
  br label %4, !dbg !378, !llvm.loop !400

23:                                               ; preds = %4
  %24 = icmp ne i32 %.0, 0, !dbg !402
  br i1 %24, label %25, label %29, !dbg !404

25:                                               ; preds = %23
  %26 = trunc i32 %.01 to i16, !dbg !405
  %27 = add i64 %.04, 1, !dbg !407
  call void @llvm.dbg.value(metadata i64 %27, metadata !374, metadata !DIExpression()), !dbg !370
  %28 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !408
  store i16 %26, i16* %28, align 2, !dbg !409
  br label %29, !dbg !410

29:                                               ; preds = %25, %23
  %.2 = phi i64 [ %27, %25 ], [ %.04, %23 ], !dbg !370
  call void @llvm.dbg.value(metadata i64 %.2, metadata !374, metadata !DIExpression()), !dbg !370
  %30 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !411
  %31 = sub i64 %.2, 1, !dbg !412
  %32 = call i32 @br_i15_bit_length(i16* %30, i64 %31), !dbg !413
  %33 = trunc i32 %32 to i16, !dbg !413
  %34 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !414
  store i16 %33, i16* %34, align 2, !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_decode_reduce(i16* %0, i8* %1, i64 %2, i16* %3) #0 !dbg !417 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i8* %1, metadata !422, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i64 %2, metadata !423, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i16* %3, metadata !424, metadata !DIExpression()), !dbg !421
  %5 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !425
  %6 = load i16, i16* %5, align 2, !dbg !425
  %7 = zext i16 %6 to i32, !dbg !425
  call void @llvm.dbg.value(metadata i32 %7, metadata !426, metadata !DIExpression()), !dbg !421
  %8 = icmp eq i32 %7, 0, !dbg !427
  br i1 %8, label %9, label %11, !dbg !429

9:                                                ; preds = %4
  %10 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !430
  store i16 0, i16* %10, align 2, !dbg !432
  br label %60, !dbg !433

11:                                               ; preds = %4
  %12 = trunc i32 %7 to i16, !dbg !434
  call void @br_i15_zero(i16* %0, i16 zeroext %12), !dbg !435
  %13 = lshr i32 %7, 4, !dbg !436
  call void @llvm.dbg.value(metadata i32 %13, metadata !437, metadata !DIExpression()), !dbg !421
  %14 = and i32 %7, 15, !dbg !438
  %15 = shl i32 %13, 4, !dbg !439
  %16 = add i32 %14, %15, !dbg !440
  %17 = sub i32 %16, %13, !dbg !441
  call void @llvm.dbg.value(metadata i32 %17, metadata !437, metadata !DIExpression()), !dbg !421
  %18 = add i32 %17, 7, !dbg !442
  %19 = lshr i32 %18, 3, !dbg !443
  %20 = zext i32 %19 to i64, !dbg !444
  call void @llvm.dbg.value(metadata i64 %20, metadata !445, metadata !DIExpression()), !dbg !421
  %21 = sub i64 %20, 1, !dbg !446
  call void @llvm.dbg.value(metadata i64 %21, metadata !447, metadata !DIExpression()), !dbg !421
  %22 = icmp uge i64 %21, %2, !dbg !448
  br i1 %22, label %23, label %26, !dbg !450

23:                                               ; preds = %11
  call void @br_i15_decode(i16* %0, i8* %1, i64 %2), !dbg !451
  %24 = trunc i32 %7 to i16, !dbg !453
  %25 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !454
  store i16 %24, i16* %25, align 2, !dbg !455
  br label %60, !dbg !456

26:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8* %1, metadata !457, metadata !DIExpression()), !dbg !421
  call void @br_i15_decode(i16* %0, i8* %1, i64 %21), !dbg !458
  %27 = trunc i32 %7 to i16, !dbg !459
  %28 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !460
  store i16 %27, i16* %28, align 2, !dbg !461
  call void @llvm.dbg.value(metadata i32 0, metadata !462, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32 0, metadata !463, metadata !DIExpression()), !dbg !421
  br label %29, !dbg !464

29:                                               ; preds = %48, %26
  %.03 = phi i64 [ %21, %26 ], [ %32, %48 ], !dbg !421
  %.01 = phi i32 [ 0, %26 ], [ %.12, %48 ], !dbg !421
  %.0 = phi i32 [ 0, %26 ], [ %.1, %48 ], !dbg !421
  call void @llvm.dbg.value(metadata i32 %.0, metadata !463, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32 %.01, metadata !462, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i64 %.03, metadata !447, metadata !DIExpression()), !dbg !421
  %30 = icmp ult i64 %.03, %2, !dbg !465
  br i1 %30, label %31, label %49, !dbg !464

31:                                               ; preds = %29
  %32 = add i64 %.03, 1, !dbg !466
  call void @llvm.dbg.value(metadata i64 %32, metadata !447, metadata !DIExpression()), !dbg !421
  %33 = getelementptr inbounds i8, i8* %1, i64 %.03, !dbg !468
  %34 = load i8, i8* %33, align 1, !dbg !468
  %35 = zext i8 %34 to i32, !dbg !468
  call void @llvm.dbg.value(metadata i32 %35, metadata !469, metadata !DIExpression()), !dbg !470
  %36 = shl i32 %.01, 8, !dbg !471
  %37 = or i32 %36, %35, !dbg !472
  call void @llvm.dbg.value(metadata i32 %37, metadata !462, metadata !DIExpression()), !dbg !421
  %38 = add nsw i32 %.0, 8, !dbg !473
  call void @llvm.dbg.value(metadata i32 %38, metadata !463, metadata !DIExpression()), !dbg !421
  %39 = icmp sge i32 %38, 15, !dbg !474
  br i1 %39, label %40, label %48, !dbg !476

40:                                               ; preds = %31
  %41 = sub nsw i32 %38, 15, !dbg !477
  %42 = lshr i32 %37, %41, !dbg !479
  %43 = trunc i32 %42 to i16, !dbg !480
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %43, i16* %3), !dbg !481
  %44 = sub nsw i32 %38, 15, !dbg !482
  call void @llvm.dbg.value(metadata i32 %44, metadata !463, metadata !DIExpression()), !dbg !421
  %45 = shl i32 -1, %44, !dbg !483
  %46 = xor i32 %45, -1, !dbg !484
  %47 = and i32 %37, %46, !dbg !485
  call void @llvm.dbg.value(metadata i32 %47, metadata !462, metadata !DIExpression()), !dbg !421
  br label %48, !dbg !486

48:                                               ; preds = %40, %31
  %.12 = phi i32 [ %47, %40 ], [ %37, %31 ], !dbg !470
  %.1 = phi i32 [ %44, %40 ], [ %38, %31 ], !dbg !470
  call void @llvm.dbg.value(metadata i32 %.1, metadata !463, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32 %.12, metadata !462, metadata !DIExpression()), !dbg !421
  br label %29, !dbg !464, !llvm.loop !487

49:                                               ; preds = %29
  %50 = icmp ne i32 %.0, 0, !dbg !489
  br i1 %50, label %51, label %60, !dbg !491

51:                                               ; preds = %49
  %52 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !492
  %53 = load i16, i16* %52, align 2, !dbg !492
  %54 = zext i16 %53 to i32, !dbg !492
  %55 = shl i32 %54, %.0, !dbg !494
  %56 = or i32 %.01, %55, !dbg !495
  %57 = and i32 %56, 32767, !dbg !496
  call void @llvm.dbg.value(metadata i32 %57, metadata !462, metadata !DIExpression()), !dbg !421
  %58 = sub nsw i32 15, %.0, !dbg !497
  call void @br_i15_rshift(i16* %0, i32 %58), !dbg !498
  %59 = trunc i32 %57 to i16, !dbg !499
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %59, i16* %3), !dbg !500
  br label %60, !dbg !501

60:                                               ; preds = %51, %49, %23, %9
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero(i16* %0, i16 zeroext %1) #0 !dbg !503 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !506, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i16 %1, metadata !508, metadata !DIExpression()), !dbg !507
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !509
  call void @llvm.dbg.value(metadata i16* %3, metadata !506, metadata !DIExpression()), !dbg !507
  store i16 %1, i16* %0, align 2, !dbg !510
  %4 = bitcast i16* %3 to i8*, !dbg !511
  %5 = zext i16 %1 to i32, !dbg !512
  %6 = add nsw i32 %5, 15, !dbg !513
  %7 = ashr i32 %6, 4, !dbg !514
  %8 = sext i32 %7 to i64, !dbg !515
  %9 = mul i64 %8, 2, !dbg !516
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !511
  ret void, !dbg !517
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_encode(i8* %0, i64 %1, i16* %2) #0 !dbg !518 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i64 %1, metadata !523, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i16* %2, metadata !524, metadata !DIExpression()), !dbg !522
  %4 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !525
  %5 = load i16, i16* %4, align 2, !dbg !525
  %6 = zext i16 %5 to i32, !dbg !525
  %7 = add nsw i32 %6, 15, !dbg !526
  %8 = ashr i32 %7, 4, !dbg !527
  %9 = sext i32 %8 to i64, !dbg !528
  call void @llvm.dbg.value(metadata i64 %9, metadata !529, metadata !DIExpression()), !dbg !522
  %10 = icmp eq i64 %9, 0, !dbg !530
  br i1 %10, label %11, label %12, !dbg !532

11:                                               ; preds = %3
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !533
  br label %34, !dbg !535

12:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i64 1, metadata !536, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 0, metadata !537, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 0, metadata !538, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i8* %0, metadata !539, metadata !DIExpression()), !dbg !522
  br label %13, !dbg !540

13:                                               ; preds = %29, %12
  %.04 = phi i64 [ 1, %12 ], [ %.26, %29 ], !dbg !522
  %.02 = phi i32 [ 0, %12 ], [ %32, %29 ], !dbg !522
  %.01 = phi i64 [ %1, %12 ], [ %14, %29 ]
  %.0 = phi i32 [ 0, %12 ], [ %33, %29 ], !dbg !522
  call void @llvm.dbg.value(metadata i32 %.0, metadata !538, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i64 %.01, metadata !523, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 %.02, metadata !537, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i64 %.04, metadata !536, metadata !DIExpression()), !dbg !522
  %14 = add i64 %.01, -1, !dbg !541
  call void @llvm.dbg.value(metadata i64 %14, metadata !523, metadata !DIExpression()), !dbg !522
  %15 = icmp ugt i64 %.01, 0, !dbg !542
  br i1 %15, label %16, label %34, !dbg !540

16:                                               ; preds = %13
  %17 = icmp slt i32 %.0, 8, !dbg !543
  br i1 %17, label %18, label %29, !dbg !546

18:                                               ; preds = %16
  %19 = icmp ule i64 %.04, %9, !dbg !547
  br i1 %19, label %20, label %27, !dbg !550

20:                                               ; preds = %18
  %21 = add i64 %.04, 1, !dbg !551
  call void @llvm.dbg.value(metadata i64 %21, metadata !536, metadata !DIExpression()), !dbg !522
  %22 = getelementptr inbounds i16, i16* %2, i64 %.04, !dbg !553
  %23 = load i16, i16* %22, align 2, !dbg !553
  %24 = zext i16 %23 to i32, !dbg !554
  %25 = shl i32 %24, %.0, !dbg !555
  %26 = add i32 %.02, %25, !dbg !556
  call void @llvm.dbg.value(metadata i32 %26, metadata !537, metadata !DIExpression()), !dbg !522
  br label %27, !dbg !557

27:                                               ; preds = %20, %18
  %.15 = phi i64 [ %21, %20 ], [ %.04, %18 ], !dbg !522
  %.13 = phi i32 [ %26, %20 ], [ %.02, %18 ], !dbg !522
  call void @llvm.dbg.value(metadata i32 %.13, metadata !537, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i64 %.15, metadata !536, metadata !DIExpression()), !dbg !522
  %28 = add nsw i32 %.0, 15, !dbg !558
  call void @llvm.dbg.value(metadata i32 %28, metadata !538, metadata !DIExpression()), !dbg !522
  br label %29, !dbg !559

29:                                               ; preds = %27, %16
  %.26 = phi i64 [ %.15, %27 ], [ %.04, %16 ], !dbg !522
  %.2 = phi i32 [ %.13, %27 ], [ %.02, %16 ], !dbg !522
  %.1 = phi i32 [ %28, %27 ], [ %.0, %16 ], !dbg !522
  call void @llvm.dbg.value(metadata i32 %.1, metadata !538, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 %.2, metadata !537, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i64 %.26, metadata !536, metadata !DIExpression()), !dbg !522
  %30 = trunc i32 %.2 to i8, !dbg !560
  %31 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !561
  store i8 %30, i8* %31, align 1, !dbg !562
  %32 = lshr i32 %.2, 8, !dbg !563
  call void @llvm.dbg.value(metadata i32 %32, metadata !537, metadata !DIExpression()), !dbg !522
  %33 = sub nsw i32 %.1, 8, !dbg !564
  call void @llvm.dbg.value(metadata i32 %33, metadata !538, metadata !DIExpression()), !dbg !522
  br label %13, !dbg !540, !llvm.loop !565

34:                                               ; preds = %13, %11
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_from_monty(i16* %0, i16* %1, i16 zeroext %2) #0 !dbg !568 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !571, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i16* %1, metadata !573, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i16 %2, metadata !574, metadata !DIExpression()), !dbg !572
  %4 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !575
  %5 = load i16, i16* %4, align 2, !dbg !575
  %6 = zext i16 %5 to i32, !dbg !575
  %7 = add nsw i32 %6, 15, !dbg !576
  %8 = ashr i32 %7, 4, !dbg !577
  %9 = sext i32 %8 to i64, !dbg !578
  call void @llvm.dbg.value(metadata i64 %9, metadata !579, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i64 0, metadata !580, metadata !DIExpression()), !dbg !572
  br label %10, !dbg !581

10:                                               ; preds = %45, %3
  %.02 = phi i64 [ 0, %3 ], [ %46, %45 ], !dbg !583
  call void @llvm.dbg.value(metadata i64 %.02, metadata !580, metadata !DIExpression()), !dbg !572
  %11 = icmp ult i64 %.02, %9, !dbg !584
  br i1 %11, label %12, label %47, !dbg !586

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !587
  %14 = load i16, i16* %13, align 2, !dbg !587
  %15 = zext i16 %14 to i32, !dbg !587
  %16 = zext i16 %2 to i32, !dbg !587
  %17 = mul i32 %15, %16, !dbg !587
  %18 = and i32 %17, 32767, !dbg !589
  call void @llvm.dbg.value(metadata i32 %18, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i32 0, metadata !592, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i64 0, metadata !593, metadata !DIExpression()), !dbg !572
  br label %19, !dbg !594

19:                                               ; preds = %40, %12
  %.01 = phi i64 [ 0, %12 ], [ %41, %40 ], !dbg !596
  %.0 = phi i32 [ 0, %12 ], [ %33, %40 ], !dbg !591
  call void @llvm.dbg.value(metadata i32 %.0, metadata !592, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i64 %.01, metadata !593, metadata !DIExpression()), !dbg !572
  %20 = icmp ult i64 %.01, %9, !dbg !597
  br i1 %20, label %21, label %42, !dbg !599

21:                                               ; preds = %19
  %22 = add i64 %.01, 1, !dbg !600
  %23 = getelementptr inbounds i16, i16* %0, i64 %22, !dbg !602
  %24 = load i16, i16* %23, align 2, !dbg !602
  %25 = zext i16 %24 to i32, !dbg !603
  %26 = add i64 %.01, 1, !dbg !604
  %27 = getelementptr inbounds i16, i16* %1, i64 %26, !dbg !604
  %28 = load i16, i16* %27, align 2, !dbg !604
  %29 = zext i16 %28 to i32, !dbg !604
  %30 = mul i32 %18, %29, !dbg !604
  %31 = add i32 %25, %30, !dbg !605
  %32 = add i32 %31, %.0, !dbg !606
  call void @llvm.dbg.value(metadata i32 %32, metadata !607, metadata !DIExpression()), !dbg !608
  %33 = lshr i32 %32, 15, !dbg !609
  call void @llvm.dbg.value(metadata i32 %33, metadata !592, metadata !DIExpression()), !dbg !591
  %34 = icmp ne i64 %.01, 0, !dbg !610
  br i1 %34, label %35, label %39, !dbg !612

35:                                               ; preds = %21
  %36 = and i32 %32, 32767, !dbg !613
  %37 = trunc i32 %36 to i16, !dbg !615
  %38 = getelementptr inbounds i16, i16* %0, i64 %.01, !dbg !616
  store i16 %37, i16* %38, align 2, !dbg !617
  br label %39, !dbg !618

39:                                               ; preds = %35, %21
  br label %40, !dbg !619

40:                                               ; preds = %39
  %41 = add i64 %.01, 1, !dbg !620
  call void @llvm.dbg.value(metadata i64 %41, metadata !593, metadata !DIExpression()), !dbg !572
  br label %19, !dbg !621, !llvm.loop !622

42:                                               ; preds = %19
  %43 = trunc i32 %.0 to i16, !dbg !624
  %44 = getelementptr inbounds i16, i16* %0, i64 %9, !dbg !625
  store i16 %43, i16* %44, align 2, !dbg !626
  br label %45, !dbg !627

45:                                               ; preds = %42
  %46 = add i64 %.02, 1, !dbg !628
  call void @llvm.dbg.value(metadata i64 %46, metadata !580, metadata !DIExpression()), !dbg !572
  br label %10, !dbg !629, !llvm.loop !630

47:                                               ; preds = %10
  %48 = call i32 @br_i15_sub(i16* %0, i16* %1, i32 0), !dbg !632
  %49 = call i32 @NOT.3(i32 %48), !dbg !633
  %50 = call i32 @br_i15_sub(i16* %0, i16* %1, i32 %49), !dbg !634
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.3(i32 %0) #0 !dbg !636 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !637, metadata !DIExpression()), !dbg !638
  %2 = xor i32 %0, 1, !dbg !639
  ret i32 %2, !dbg !640
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_modpow_opt(i16* %0, i8* %1, i64 %2, i16* %3, i16 zeroext %4, i16* %5, i64 %6) #0 !dbg !641 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !644, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i8* %1, metadata !646, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i64 %2, metadata !647, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i16* %3, metadata !648, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i16 %4, metadata !649, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i16* %5, metadata !650, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i64 %6, metadata !651, metadata !DIExpression()), !dbg !645
  %8 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !652
  %9 = load i16, i16* %8, align 2, !dbg !652
  %10 = zext i16 %9 to i32, !dbg !652
  %11 = add nsw i32 %10, 31, !dbg !653
  %12 = ashr i32 %11, 4, !dbg !654
  %13 = sext i32 %12 to i64, !dbg !655
  call void @llvm.dbg.value(metadata i64 %13, metadata !656, metadata !DIExpression()), !dbg !645
  %14 = mul i64 %13, 2, !dbg !657
  call void @llvm.dbg.value(metadata i64 %14, metadata !658, metadata !DIExpression()), !dbg !645
  %15 = and i64 %13, 1, !dbg !659
  %16 = add i64 %13, %15, !dbg !660
  call void @llvm.dbg.value(metadata i64 %16, metadata !656, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i16* %5, metadata !661, metadata !DIExpression()), !dbg !645
  %17 = getelementptr inbounds i16, i16* %5, i64 %16, !dbg !662
  call void @llvm.dbg.value(metadata i16* %17, metadata !663, metadata !DIExpression()), !dbg !645
  %18 = shl i64 %16, 1, !dbg !664
  %19 = icmp ult i64 %6, %18, !dbg !666
  br i1 %19, label %20, label %21, !dbg !667

20:                                               ; preds = %7
  br label %136, !dbg !668

21:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 5, metadata !670, metadata !DIExpression()), !dbg !645
  br label %22, !dbg !671

22:                                               ; preds = %32, %21
  %.08 = phi i32 [ 5, %21 ], [ %33, %32 ], !dbg !673
  call void @llvm.dbg.value(metadata i32 %.08, metadata !670, metadata !DIExpression()), !dbg !645
  %23 = icmp sgt i32 %.08, 1, !dbg !674
  br i1 %23, label %24, label %34, !dbg !676

24:                                               ; preds = %22
  %25 = shl i32 1, %.08, !dbg !677
  %26 = add i32 %25, 1, !dbg !680
  %27 = zext i32 %26 to i64, !dbg !681
  %28 = mul i64 %27, %16, !dbg !682
  %29 = icmp ule i64 %28, %6, !dbg !683
  br i1 %29, label %30, label %31, !dbg !684

30:                                               ; preds = %24
  br label %34, !dbg !685

31:                                               ; preds = %24
  br label %32, !dbg !687

32:                                               ; preds = %31
  %33 = add nsw i32 %.08, -1, !dbg !688
  call void @llvm.dbg.value(metadata i32 %33, metadata !670, metadata !DIExpression()), !dbg !645
  br label %22, !dbg !689, !llvm.loop !690

34:                                               ; preds = %30, %22
  call void @br_i15_to_monty(i16* %0, i16* %3), !dbg !692
  %35 = icmp eq i32 %.08, 1, !dbg !693
  br i1 %35, label %36, label %39, !dbg !695

36:                                               ; preds = %34
  %37 = bitcast i16* %17 to i8*, !dbg !696
  %38 = bitcast i16* %0 to i8*, !dbg !696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %37, i8* align 2 %38, i64 %14, i1 false), !dbg !696
  br label %54, !dbg !698

39:                                               ; preds = %34
  %40 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !699
  %41 = bitcast i16* %40 to i8*, !dbg !701
  %42 = bitcast i16* %0 to i8*, !dbg !701
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %41, i8* align 2 %42, i64 %14, i1 false), !dbg !701
  %43 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !702
  call void @llvm.dbg.value(metadata i16* %43, metadata !703, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i64 2, metadata !704, metadata !DIExpression()), !dbg !645
  br label %44, !dbg !705

44:                                               ; preds = %51, %39
  %.018 = phi i16* [ %43, %39 ], [ %50, %51 ], !dbg !707
  %.016 = phi i64 [ 2, %39 ], [ %52, %51 ], !dbg !708
  call void @llvm.dbg.value(metadata i64 %.016, metadata !704, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i16* %.018, metadata !703, metadata !DIExpression()), !dbg !645
  %45 = shl i32 1, %.08, !dbg !709
  %46 = zext i32 %45 to i64, !dbg !711
  %47 = icmp ult i64 %.016, %46, !dbg !712
  br i1 %47, label %48, label %53, !dbg !713

48:                                               ; preds = %44
  %49 = getelementptr inbounds i16, i16* %.018, i64 %16, !dbg !714
  call void @br_i15_montymul(i16* %49, i16* %.018, i16* %0, i16* %3, i16 zeroext %4), !dbg !716
  %50 = getelementptr inbounds i16, i16* %.018, i64 %16, !dbg !717
  call void @llvm.dbg.value(metadata i16* %50, metadata !703, metadata !DIExpression()), !dbg !645
  br label %51, !dbg !718

51:                                               ; preds = %48
  %52 = add i64 %.016, 1, !dbg !719
  call void @llvm.dbg.value(metadata i64 %52, metadata !704, metadata !DIExpression()), !dbg !645
  br label %44, !dbg !720, !llvm.loop !721

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %36
  %55 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !723
  %56 = load i16, i16* %55, align 2, !dbg !723
  call void @br_i15_zero.4(i16* %0, i16 zeroext %56), !dbg !724
  %57 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !725
  %58 = load i16, i16* %57, align 2, !dbg !725
  %59 = zext i16 %58 to i32, !dbg !725
  %60 = add nsw i32 %59, 15, !dbg !726
  %61 = ashr i32 %60, 4, !dbg !727
  %62 = sext i32 %61 to i64, !dbg !728
  %63 = getelementptr inbounds i16, i16* %0, i64 %62, !dbg !728
  store i16 1, i16* %63, align 2, !dbg !729
  call void @br_i15_muladd_small(i16* %0, i16 zeroext 0, i16* %3), !dbg !730
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 0, metadata !732, metadata !DIExpression()), !dbg !645
  br label %64, !dbg !733

64:                                               ; preds = %131, %54
  %.012 = phi i32 [ 0, %54 ], [ %.214, %131 ], !dbg !645
  %.09 = phi i32 [ 0, %54 ], [ %90, %131 ], !dbg !645
  %.04 = phi i64 [ %2, %54 ], [ %.26, %131 ]
  %.02 = phi i8* [ %1, %54 ], [ %.2, %131 ]
  call void @llvm.dbg.value(metadata i8* %.02, metadata !646, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i64 %.04, metadata !647, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %.09, metadata !732, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %.012, metadata !731, metadata !DIExpression()), !dbg !645
  %65 = icmp sgt i32 %.09, 0, !dbg !734
  br i1 %65, label %68, label %66, !dbg !735

66:                                               ; preds = %64
  %67 = icmp ugt i64 %.04, 0, !dbg !736
  br label %68, !dbg !735

68:                                               ; preds = %66, %64
  %69 = phi i1 [ true, %64 ], [ %67, %66 ]
  br i1 %69, label %70, label %135, !dbg !733

70:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 %.08, metadata !737, metadata !DIExpression()), !dbg !739
  %71 = icmp slt i32 %.09, %.08, !dbg !740
  br i1 %71, label %72, label %84, !dbg !742

72:                                               ; preds = %70
  %73 = icmp ugt i64 %.04, 0, !dbg !743
  br i1 %73, label %74, label %82, !dbg !746

74:                                               ; preds = %72
  %75 = shl i32 %.012, 8, !dbg !747
  %76 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !749
  call void @llvm.dbg.value(metadata i8* %76, metadata !646, metadata !DIExpression()), !dbg !645
  %77 = load i8, i8* %.02, align 1, !dbg !750
  %78 = zext i8 %77 to i32, !dbg !750
  %79 = or i32 %75, %78, !dbg !751
  call void @llvm.dbg.value(metadata i32 %79, metadata !731, metadata !DIExpression()), !dbg !645
  %80 = add i64 %.04, -1, !dbg !752
  call void @llvm.dbg.value(metadata i64 %80, metadata !647, metadata !DIExpression()), !dbg !645
  %81 = add nsw i32 %.09, 8, !dbg !753
  call void @llvm.dbg.value(metadata i32 %81, metadata !732, metadata !DIExpression()), !dbg !645
  br label %83, !dbg !754

82:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 %.09, metadata !737, metadata !DIExpression()), !dbg !739
  br label %83

83:                                               ; preds = %82, %74
  %.113 = phi i32 [ %79, %74 ], [ %.012, %82 ], !dbg !645
  %.110 = phi i32 [ %81, %74 ], [ %.09, %82 ], !dbg !645
  %.15 = phi i64 [ %80, %74 ], [ %.04, %82 ]
  %.13 = phi i8* [ %76, %74 ], [ %.02, %82 ]
  %.01 = phi i32 [ %.08, %74 ], [ %.09, %82 ], !dbg !739
  call void @llvm.dbg.value(metadata i32 %.01, metadata !737, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i8* %.13, metadata !646, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i64 %.15, metadata !647, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %.110, metadata !732, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %.113, metadata !731, metadata !DIExpression()), !dbg !645
  br label %84, !dbg !755

84:                                               ; preds = %83, %70
  %.214 = phi i32 [ %.113, %83 ], [ %.012, %70 ], !dbg !645
  %.211 = phi i32 [ %.110, %83 ], [ %.09, %70 ], !dbg !645
  %.26 = phi i64 [ %.15, %83 ], [ %.04, %70 ]
  %.2 = phi i8* [ %.13, %83 ], [ %.02, %70 ]
  %.1 = phi i32 [ %.01, %83 ], [ %.08, %70 ], !dbg !756
  call void @llvm.dbg.value(metadata i32 %.1, metadata !737, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i8* %.2, metadata !646, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i64 %.26, metadata !647, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %.211, metadata !732, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %.214, metadata !731, metadata !DIExpression()), !dbg !645
  %85 = sub nsw i32 %.211, %.1, !dbg !757
  %86 = lshr i32 %.214, %85, !dbg !758
  %87 = shl i32 1, %.1, !dbg !759
  %88 = sub i32 %87, 1, !dbg !760
  %89 = and i32 %86, %88, !dbg !761
  call void @llvm.dbg.value(metadata i32 %89, metadata !762, metadata !DIExpression()), !dbg !739
  %90 = sub nsw i32 %.211, %.1, !dbg !763
  call void @llvm.dbg.value(metadata i32 %90, metadata !732, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 0, metadata !764, metadata !DIExpression()), !dbg !739
  br label %91, !dbg !765

91:                                               ; preds = %96, %84
  %.07 = phi i32 [ 0, %84 ], [ %97, %96 ], !dbg !767
  call void @llvm.dbg.value(metadata i32 %.07, metadata !764, metadata !DIExpression()), !dbg !739
  %92 = icmp slt i32 %.07, %.1, !dbg !768
  br i1 %92, label %93, label %98, !dbg !770

93:                                               ; preds = %91
  call void @br_i15_montymul(i16* %5, i16* %0, i16* %0, i16* %3, i16 zeroext %4), !dbg !771
  %94 = bitcast i16* %0 to i8*, !dbg !773
  %95 = bitcast i16* %5 to i8*, !dbg !773
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %94, i8* align 2 %95, i64 %14, i1 false), !dbg !773
  br label %96, !dbg !774

96:                                               ; preds = %93
  %97 = add nsw i32 %.07, 1, !dbg !775
  call void @llvm.dbg.value(metadata i32 %97, metadata !764, metadata !DIExpression()), !dbg !739
  br label %91, !dbg !776, !llvm.loop !777

98:                                               ; preds = %91
  %99 = icmp sgt i32 %.08, 1, !dbg !779
  br i1 %99, label %100, label %131, !dbg !781

100:                                              ; preds = %98
  %101 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !782
  %102 = load i16, i16* %101, align 2, !dbg !782
  call void @br_i15_zero.4(i16* %17, i16 zeroext %102), !dbg !784
  %103 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !785
  call void @llvm.dbg.value(metadata i16* %103, metadata !703, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i64 1, metadata !704, metadata !DIExpression()), !dbg !645
  br label %104, !dbg !786

104:                                              ; preds = %128, %100
  %.119 = phi i16* [ %103, %100 ], [ %127, %128 ], !dbg !788
  %.117 = phi i64 [ 1, %100 ], [ %129, %128 ], !dbg !789
  call void @llvm.dbg.value(metadata i64 %.117, metadata !704, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i16* %.119, metadata !703, metadata !DIExpression()), !dbg !645
  %105 = shl i32 1, %.1, !dbg !790
  %106 = zext i32 %105 to i64, !dbg !792
  %107 = icmp ult i64 %.117, %106, !dbg !793
  br i1 %107, label %108, label %130, !dbg !794

108:                                              ; preds = %104
  %109 = trunc i64 %.117 to i32, !dbg !795
  %110 = call i32 @EQ.5(i32 %109, i32 %89), !dbg !797
  %111 = sub i32 0, %110, !dbg !798
  call void @llvm.dbg.value(metadata i32 %111, metadata !799, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 1, metadata !801, metadata !DIExpression()), !dbg !645
  br label %112, !dbg !802

112:                                              ; preds = %124, %108
  %.015 = phi i64 [ 1, %108 ], [ %125, %124 ], !dbg !804
  call void @llvm.dbg.value(metadata i64 %.015, metadata !801, metadata !DIExpression()), !dbg !645
  %113 = icmp ult i64 %.015, %16, !dbg !805
  br i1 %113, label %114, label %126, !dbg !807

114:                                              ; preds = %112
  %115 = getelementptr inbounds i16, i16* %.119, i64 %.015, !dbg !808
  %116 = load i16, i16* %115, align 2, !dbg !808
  %117 = zext i16 %116 to i32, !dbg !808
  %118 = and i32 %111, %117, !dbg !810
  %119 = getelementptr inbounds i16, i16* %17, i64 %.015, !dbg !811
  %120 = load i16, i16* %119, align 2, !dbg !812
  %121 = zext i16 %120 to i32, !dbg !812
  %122 = or i32 %121, %118, !dbg !812
  %123 = trunc i32 %122 to i16, !dbg !812
  store i16 %123, i16* %119, align 2, !dbg !812
  br label %124, !dbg !813

124:                                              ; preds = %114
  %125 = add i64 %.015, 1, !dbg !814
  call void @llvm.dbg.value(metadata i64 %125, metadata !801, metadata !DIExpression()), !dbg !645
  br label %112, !dbg !815, !llvm.loop !816

126:                                              ; preds = %112
  %127 = getelementptr inbounds i16, i16* %.119, i64 %16, !dbg !818
  call void @llvm.dbg.value(metadata i16* %127, metadata !703, metadata !DIExpression()), !dbg !645
  br label %128, !dbg !819

128:                                              ; preds = %126
  %129 = add i64 %.117, 1, !dbg !820
  call void @llvm.dbg.value(metadata i64 %129, metadata !704, metadata !DIExpression()), !dbg !645
  br label %104, !dbg !821, !llvm.loop !822

130:                                              ; preds = %104
  br label %131, !dbg !824

131:                                              ; preds = %130, %98
  call void @br_i15_montymul(i16* %5, i16* %0, i16* %17, i16* %3, i16 zeroext %4), !dbg !825
  %132 = call i32 @NEQ.6(i32 %89, i32 0), !dbg !826
  %133 = bitcast i16* %0 to i8*, !dbg !827
  %134 = bitcast i16* %5 to i8*, !dbg !828
  call void @br_ccopy(i32 %132, i8* %133, i8* %134, i64 %14), !dbg !829
  br label %64, !dbg !733, !llvm.loop !830

135:                                              ; preds = %68
  call void @br_i15_from_monty(i16* %0, i16* %3, i16 zeroext %4), !dbg !832
  br label %136, !dbg !833

136:                                              ; preds = %135, %20
  %.0 = phi i32 [ 0, %20 ], [ 1, %135 ], !dbg !645
  ret i32 %.0, !dbg !834
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.4(i16* %0, i16 zeroext %1) #0 !dbg !835 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !836, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i16 %1, metadata !838, metadata !DIExpression()), !dbg !837
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !839
  call void @llvm.dbg.value(metadata i16* %3, metadata !836, metadata !DIExpression()), !dbg !837
  store i16 %1, i16* %0, align 2, !dbg !840
  %4 = bitcast i16* %3 to i8*, !dbg !841
  %5 = zext i16 %1 to i32, !dbg !842
  %6 = add nsw i32 %5, 15, !dbg !843
  %7 = ashr i32 %6, 4, !dbg !844
  %8 = sext i32 %7 to i64, !dbg !845
  %9 = mul i64 %8, 2, !dbg !846
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !841
  ret void, !dbg !847
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.5(i32 %0, i32 %1) #0 !dbg !848 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !849, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i32 %1, metadata !851, metadata !DIExpression()), !dbg !850
  %3 = xor i32 %0, %1, !dbg !852
  call void @llvm.dbg.value(metadata i32 %3, metadata !853, metadata !DIExpression()), !dbg !850
  %4 = sub i32 0, %3, !dbg !854
  %5 = or i32 %3, %4, !dbg !855
  %6 = lshr i32 %5, 31, !dbg !856
  %7 = call i32 @NOT.7(i32 %6), !dbg !857
  ret i32 %7, !dbg !858
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.6(i32 %0, i32 %1) #0 !dbg !859 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !860, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i32 %1, metadata !862, metadata !DIExpression()), !dbg !861
  %3 = xor i32 %0, %1, !dbg !863
  call void @llvm.dbg.value(metadata i32 %3, metadata !864, metadata !DIExpression()), !dbg !861
  %4 = sub i32 0, %3, !dbg !865
  %5 = or i32 %3, %4, !dbg !866
  %6 = lshr i32 %5, 31, !dbg !867
  ret i32 %6, !dbg !868
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.7(i32 %0) #0 !dbg !869 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !870, metadata !DIExpression()), !dbg !871
  %2 = xor i32 %0, 1, !dbg !872
  ret i32 %2, !dbg !873
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_montymul(i16* %0, i16* %1, i16* %2, i16* %3, i16 zeroext %4) #0 !dbg !874 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !877, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata i16* %1, metadata !879, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata i16* %2, metadata !880, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata i16* %3, metadata !881, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata i16 %4, metadata !882, metadata !DIExpression()), !dbg !878
  %6 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !883
  %7 = load i16, i16* %6, align 2, !dbg !883
  %8 = zext i16 %7 to i32, !dbg !883
  %9 = add nsw i32 %8, 15, !dbg !884
  %10 = ashr i32 %9, 4, !dbg !885
  %11 = sext i32 %10 to i64, !dbg !886
  call void @llvm.dbg.value(metadata i64 %11, metadata !887, metadata !DIExpression()), !dbg !878
  %12 = and i64 %11, -4, !dbg !888
  call void @llvm.dbg.value(metadata i64 %12, metadata !889, metadata !DIExpression()), !dbg !878
  %13 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !890
  %14 = load i16, i16* %13, align 2, !dbg !890
  call void @br_i15_zero.10(i16* %0, i16 zeroext %14), !dbg !891
  call void @llvm.dbg.value(metadata i32 0, metadata !892, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata i64 0, metadata !893, metadata !DIExpression()), !dbg !878
  br label %15, !dbg !894

15:                                               ; preds = %165, %5
  %.04 = phi i64 [ 0, %5 ], [ %166, %165 ], !dbg !896
  %.01 = phi i32 [ 0, %5 ], [ %164, %165 ], !dbg !878
  call void @llvm.dbg.value(metadata i32 %.01, metadata !892, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata i64 %.04, metadata !893, metadata !DIExpression()), !dbg !878
  %16 = icmp ult i64 %.04, %11, !dbg !897
  br i1 %16, label %17, label %167, !dbg !899

17:                                               ; preds = %15
  %18 = add i64 %.04, 1, !dbg !900
  %19 = getelementptr inbounds i16, i16* %1, i64 %18, !dbg !902
  %20 = load i16, i16* %19, align 2, !dbg !902
  %21 = zext i16 %20 to i32, !dbg !902
  call void @llvm.dbg.value(metadata i32 %21, metadata !903, metadata !DIExpression()), !dbg !904
  %22 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !905
  %23 = load i16, i16* %22, align 2, !dbg !905
  %24 = zext i16 %23 to i32, !dbg !905
  %25 = add i64 %.04, 1, !dbg !905
  %26 = getelementptr inbounds i16, i16* %1, i64 %25, !dbg !905
  %27 = load i16, i16* %26, align 2, !dbg !905
  %28 = zext i16 %27 to i32, !dbg !905
  %29 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !905
  %30 = load i16, i16* %29, align 2, !dbg !905
  %31 = zext i16 %30 to i32, !dbg !905
  %32 = mul i32 %28, %31, !dbg !905
  %33 = add i32 %24, %32, !dbg !905
  %34 = and i32 %33, 32767, !dbg !905
  %35 = zext i16 %4 to i32, !dbg !905
  %36 = mul i32 %34, %35, !dbg !905
  %37 = and i32 %36, 32767, !dbg !906
  call void @llvm.dbg.value(metadata i32 %37, metadata !907, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i32 0, metadata !908, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i64 0, metadata !909, metadata !DIExpression()), !dbg !878
  br label %38, !dbg !910

38:                                               ; preds = %129, %17
  %.02 = phi i64 [ 0, %17 ], [ %130, %129 ], !dbg !912
  %.0 = phi i32 [ 0, %17 ], [ %124, %129 ], !dbg !904
  call void @llvm.dbg.value(metadata i32 %.0, metadata !908, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i64 %.02, metadata !909, metadata !DIExpression()), !dbg !878
  %39 = icmp ult i64 %.02, %12, !dbg !913
  br i1 %39, label %40, label %131, !dbg !915

40:                                               ; preds = %38
  %41 = add i64 %.02, 1, !dbg !916
  %42 = getelementptr inbounds i16, i16* %0, i64 %41, !dbg !918
  %43 = load i16, i16* %42, align 2, !dbg !918
  %44 = zext i16 %43 to i32, !dbg !918
  %45 = add i64 %.02, 1, !dbg !919
  %46 = getelementptr inbounds i16, i16* %2, i64 %45, !dbg !919
  %47 = load i16, i16* %46, align 2, !dbg !919
  %48 = zext i16 %47 to i32, !dbg !919
  %49 = mul i32 %21, %48, !dbg !919
  %50 = add i32 %44, %49, !dbg !920
  %51 = add i64 %.02, 1, !dbg !921
  %52 = getelementptr inbounds i16, i16* %3, i64 %51, !dbg !921
  %53 = load i16, i16* %52, align 2, !dbg !921
  %54 = zext i16 %53 to i32, !dbg !921
  %55 = mul i32 %37, %54, !dbg !921
  %56 = add i32 %50, %55, !dbg !922
  %57 = add i32 %56, %.0, !dbg !923
  call void @llvm.dbg.value(metadata i32 %57, metadata !924, metadata !DIExpression()), !dbg !925
  %58 = lshr i32 %57, 15, !dbg !926
  call void @llvm.dbg.value(metadata i32 %58, metadata !908, metadata !DIExpression()), !dbg !904
  %59 = and i32 %57, 32767, !dbg !927
  %60 = trunc i32 %59 to i16, !dbg !928
  %61 = add i64 %.02, 0, !dbg !929
  %62 = getelementptr inbounds i16, i16* %0, i64 %61, !dbg !930
  store i16 %60, i16* %62, align 2, !dbg !931
  %63 = add i64 %.02, 2, !dbg !932
  %64 = getelementptr inbounds i16, i16* %0, i64 %63, !dbg !933
  %65 = load i16, i16* %64, align 2, !dbg !933
  %66 = zext i16 %65 to i32, !dbg !933
  %67 = add i64 %.02, 2, !dbg !934
  %68 = getelementptr inbounds i16, i16* %2, i64 %67, !dbg !934
  %69 = load i16, i16* %68, align 2, !dbg !934
  %70 = zext i16 %69 to i32, !dbg !934
  %71 = mul i32 %21, %70, !dbg !934
  %72 = add i32 %66, %71, !dbg !935
  %73 = add i64 %.02, 2, !dbg !936
  %74 = getelementptr inbounds i16, i16* %3, i64 %73, !dbg !936
  %75 = load i16, i16* %74, align 2, !dbg !936
  %76 = zext i16 %75 to i32, !dbg !936
  %77 = mul i32 %37, %76, !dbg !936
  %78 = add i32 %72, %77, !dbg !937
  %79 = add i32 %78, %58, !dbg !938
  call void @llvm.dbg.value(metadata i32 %79, metadata !924, metadata !DIExpression()), !dbg !925
  %80 = lshr i32 %79, 15, !dbg !939
  call void @llvm.dbg.value(metadata i32 %80, metadata !908, metadata !DIExpression()), !dbg !904
  %81 = and i32 %79, 32767, !dbg !940
  %82 = trunc i32 %81 to i16, !dbg !941
  %83 = add i64 %.02, 1, !dbg !942
  %84 = getelementptr inbounds i16, i16* %0, i64 %83, !dbg !943
  store i16 %82, i16* %84, align 2, !dbg !944
  %85 = add i64 %.02, 3, !dbg !945
  %86 = getelementptr inbounds i16, i16* %0, i64 %85, !dbg !946
  %87 = load i16, i16* %86, align 2, !dbg !946
  %88 = zext i16 %87 to i32, !dbg !946
  %89 = add i64 %.02, 3, !dbg !947
  %90 = getelementptr inbounds i16, i16* %2, i64 %89, !dbg !947
  %91 = load i16, i16* %90, align 2, !dbg !947
  %92 = zext i16 %91 to i32, !dbg !947
  %93 = mul i32 %21, %92, !dbg !947
  %94 = add i32 %88, %93, !dbg !948
  %95 = add i64 %.02, 3, !dbg !949
  %96 = getelementptr inbounds i16, i16* %3, i64 %95, !dbg !949
  %97 = load i16, i16* %96, align 2, !dbg !949
  %98 = zext i16 %97 to i32, !dbg !949
  %99 = mul i32 %37, %98, !dbg !949
  %100 = add i32 %94, %99, !dbg !950
  %101 = add i32 %100, %80, !dbg !951
  call void @llvm.dbg.value(metadata i32 %101, metadata !924, metadata !DIExpression()), !dbg !925
  %102 = lshr i32 %101, 15, !dbg !952
  call void @llvm.dbg.value(metadata i32 %102, metadata !908, metadata !DIExpression()), !dbg !904
  %103 = and i32 %101, 32767, !dbg !953
  %104 = trunc i32 %103 to i16, !dbg !954
  %105 = add i64 %.02, 2, !dbg !955
  %106 = getelementptr inbounds i16, i16* %0, i64 %105, !dbg !956
  store i16 %104, i16* %106, align 2, !dbg !957
  %107 = add i64 %.02, 4, !dbg !958
  %108 = getelementptr inbounds i16, i16* %0, i64 %107, !dbg !959
  %109 = load i16, i16* %108, align 2, !dbg !959
  %110 = zext i16 %109 to i32, !dbg !959
  %111 = add i64 %.02, 4, !dbg !960
  %112 = getelementptr inbounds i16, i16* %2, i64 %111, !dbg !960
  %113 = load i16, i16* %112, align 2, !dbg !960
  %114 = zext i16 %113 to i32, !dbg !960
  %115 = mul i32 %21, %114, !dbg !960
  %116 = add i32 %110, %115, !dbg !961
  %117 = add i64 %.02, 4, !dbg !962
  %118 = getelementptr inbounds i16, i16* %3, i64 %117, !dbg !962
  %119 = load i16, i16* %118, align 2, !dbg !962
  %120 = zext i16 %119 to i32, !dbg !962
  %121 = mul i32 %37, %120, !dbg !962
  %122 = add i32 %116, %121, !dbg !963
  %123 = add i32 %122, %102, !dbg !964
  call void @llvm.dbg.value(metadata i32 %123, metadata !924, metadata !DIExpression()), !dbg !925
  %124 = lshr i32 %123, 15, !dbg !965
  call void @llvm.dbg.value(metadata i32 %124, metadata !908, metadata !DIExpression()), !dbg !904
  %125 = and i32 %123, 32767, !dbg !966
  %126 = trunc i32 %125 to i16, !dbg !967
  %127 = add i64 %.02, 3, !dbg !968
  %128 = getelementptr inbounds i16, i16* %0, i64 %127, !dbg !969
  store i16 %126, i16* %128, align 2, !dbg !970
  br label %129, !dbg !971

129:                                              ; preds = %40
  %130 = add i64 %.02, 4, !dbg !972
  call void @llvm.dbg.value(metadata i64 %130, metadata !909, metadata !DIExpression()), !dbg !878
  br label %38, !dbg !973, !llvm.loop !974

131:                                              ; preds = %38
  br label %132, !dbg !976

132:                                              ; preds = %157, %131
  %.13 = phi i64 [ %.02, %131 ], [ %158, %157 ], !dbg !904
  %.1 = phi i32 [ %.0, %131 ], [ %152, %157 ], !dbg !904
  call void @llvm.dbg.value(metadata i32 %.1, metadata !908, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i64 %.13, metadata !909, metadata !DIExpression()), !dbg !878
  %133 = icmp ult i64 %.13, %11, !dbg !977
  br i1 %133, label %134, label %159, !dbg !980

134:                                              ; preds = %132
  %135 = add i64 %.13, 1, !dbg !981
  %136 = getelementptr inbounds i16, i16* %0, i64 %135, !dbg !983
  %137 = load i16, i16* %136, align 2, !dbg !983
  %138 = zext i16 %137 to i32, !dbg !983
  %139 = add i64 %.13, 1, !dbg !984
  %140 = getelementptr inbounds i16, i16* %2, i64 %139, !dbg !984
  %141 = load i16, i16* %140, align 2, !dbg !984
  %142 = zext i16 %141 to i32, !dbg !984
  %143 = mul i32 %21, %142, !dbg !984
  %144 = add i32 %138, %143, !dbg !985
  %145 = add i64 %.13, 1, !dbg !986
  %146 = getelementptr inbounds i16, i16* %3, i64 %145, !dbg !986
  %147 = load i16, i16* %146, align 2, !dbg !986
  %148 = zext i16 %147 to i32, !dbg !986
  %149 = mul i32 %37, %148, !dbg !986
  %150 = add i32 %144, %149, !dbg !987
  %151 = add i32 %150, %.1, !dbg !988
  call void @llvm.dbg.value(metadata i32 %151, metadata !989, metadata !DIExpression()), !dbg !990
  %152 = lshr i32 %151, 15, !dbg !991
  call void @llvm.dbg.value(metadata i32 %152, metadata !908, metadata !DIExpression()), !dbg !904
  %153 = and i32 %151, 32767, !dbg !992
  %154 = trunc i32 %153 to i16, !dbg !993
  %155 = add i64 %.13, 0, !dbg !994
  %156 = getelementptr inbounds i16, i16* %0, i64 %155, !dbg !995
  store i16 %154, i16* %156, align 2, !dbg !996
  br label %157, !dbg !997

157:                                              ; preds = %134
  %158 = add i64 %.13, 1, !dbg !998
  call void @llvm.dbg.value(metadata i64 %158, metadata !909, metadata !DIExpression()), !dbg !878
  br label %132, !dbg !999, !llvm.loop !1000

159:                                              ; preds = %132
  %160 = add i32 %.01, %.1, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %160, metadata !1003, metadata !DIExpression()), !dbg !904
  %161 = and i32 %160, 32767, !dbg !1004
  %162 = trunc i32 %161 to i16, !dbg !1005
  %163 = getelementptr inbounds i16, i16* %0, i64 %11, !dbg !1006
  store i16 %162, i16* %163, align 2, !dbg !1007
  %164 = lshr i32 %160, 15, !dbg !1008
  call void @llvm.dbg.value(metadata i32 %164, metadata !892, metadata !DIExpression()), !dbg !878
  br label %165, !dbg !1009

165:                                              ; preds = %159
  %166 = add i64 %.04, 1, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %166, metadata !893, metadata !DIExpression()), !dbg !878
  br label %15, !dbg !1011, !llvm.loop !1012

167:                                              ; preds = %15
  %168 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1014
  %169 = load i16, i16* %168, align 2, !dbg !1014
  %170 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1015
  store i16 %169, i16* %170, align 2, !dbg !1016
  %171 = call i32 @NEQ.11(i32 %.01, i32 0), !dbg !1017
  %172 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 0), !dbg !1018
  %173 = call i32 @NOT.12(i32 %172), !dbg !1019
  %174 = or i32 %171, %173, !dbg !1020
  %175 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 %174), !dbg !1021
  ret void, !dbg !1022
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.10(i16* %0, i16 zeroext %1) #0 !dbg !1023 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1024, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata i16 %1, metadata !1026, metadata !DIExpression()), !dbg !1025
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !1027
  call void @llvm.dbg.value(metadata i16* %3, metadata !1024, metadata !DIExpression()), !dbg !1025
  store i16 %1, i16* %0, align 2, !dbg !1028
  %4 = bitcast i16* %3 to i8*, !dbg !1029
  %5 = zext i16 %1 to i32, !dbg !1030
  %6 = add nsw i32 %5, 15, !dbg !1031
  %7 = ashr i32 %6, 4, !dbg !1032
  %8 = sext i32 %7 to i64, !dbg !1033
  %9 = mul i64 %8, 2, !dbg !1034
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !1029
  ret void, !dbg !1035
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.11(i32 %0, i32 %1) #0 !dbg !1036 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1037, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i32 %1, metadata !1039, metadata !DIExpression()), !dbg !1038
  %3 = xor i32 %0, %1, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %3, metadata !1041, metadata !DIExpression()), !dbg !1038
  %4 = sub i32 0, %3, !dbg !1042
  %5 = or i32 %3, %4, !dbg !1043
  %6 = lshr i32 %5, 31, !dbg !1044
  ret i32 %6, !dbg !1045
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.12(i32 %0) #0 !dbg !1046 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1047, metadata !DIExpression()), !dbg !1048
  %2 = xor i32 %0, 1, !dbg !1049
  ret i32 %2, !dbg !1050
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_mulacc(i16* %0, i16* %1, i16* %2) #0 !dbg !1051 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1054, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i16* %1, metadata !1056, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i16* %2, metadata !1057, metadata !DIExpression()), !dbg !1055
  %4 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !1058
  %5 = load i16, i16* %4, align 2, !dbg !1058
  %6 = zext i16 %5 to i32, !dbg !1058
  %7 = add nsw i32 %6, 15, !dbg !1059
  %8 = ashr i32 %7, 4, !dbg !1060
  %9 = sext i32 %8 to i64, !dbg !1061
  call void @llvm.dbg.value(metadata i64 %9, metadata !1062, metadata !DIExpression()), !dbg !1055
  %10 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !1063
  %11 = load i16, i16* %10, align 2, !dbg !1063
  %12 = zext i16 %11 to i32, !dbg !1063
  %13 = add nsw i32 %12, 15, !dbg !1064
  %14 = ashr i32 %13, 4, !dbg !1065
  %15 = sext i32 %14 to i64, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %15, metadata !1067, metadata !DIExpression()), !dbg !1055
  %16 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !1068
  %17 = load i16, i16* %16, align 2, !dbg !1068
  %18 = zext i16 %17 to i32, !dbg !1068
  %19 = and i32 %18, 15, !dbg !1069
  %20 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !1070
  %21 = load i16, i16* %20, align 2, !dbg !1070
  %22 = zext i16 %21 to i32, !dbg !1070
  %23 = and i32 %22, 15, !dbg !1071
  %24 = add nsw i32 %19, %23, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %24, metadata !1073, metadata !DIExpression()), !dbg !1055
  %25 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !1074
  %26 = load i16, i16* %25, align 2, !dbg !1074
  %27 = zext i16 %26 to i32, !dbg !1074
  %28 = ashr i32 %27, 4, !dbg !1075
  %29 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !1076
  %30 = load i16, i16* %29, align 2, !dbg !1076
  %31 = zext i16 %30 to i32, !dbg !1076
  %32 = ashr i32 %31, 4, !dbg !1077
  %33 = add nsw i32 %28, %32, !dbg !1078
  call void @llvm.dbg.value(metadata i32 %33, metadata !1079, metadata !DIExpression()), !dbg !1055
  %34 = shl i32 %33, 4, !dbg !1080
  %35 = add i32 %34, %24, !dbg !1081
  %36 = sub i32 %24, 15, !dbg !1082
  %37 = xor i32 %36, -1, !dbg !1083
  %38 = lshr i32 %37, 31, !dbg !1084
  %39 = add i32 %35, %38, !dbg !1085
  %40 = trunc i32 %39 to i16, !dbg !1086
  %41 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1087
  store i16 %40, i16* %41, align 2, !dbg !1088
  call void @llvm.dbg.value(metadata i64 0, metadata !1089, metadata !DIExpression()), !dbg !1055
  br label %42, !dbg !1090

42:                                               ; preds = %77, %3
  %.02 = phi i64 [ 0, %3 ], [ %78, %77 ], !dbg !1092
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1089, metadata !DIExpression()), !dbg !1055
  %43 = icmp ult i64 %.02, %15, !dbg !1093
  br i1 %43, label %44, label %79, !dbg !1095

44:                                               ; preds = %42
  %45 = add i64 1, %.02, !dbg !1096
  %46 = getelementptr inbounds i16, i16* %2, i64 %45, !dbg !1098
  %47 = load i16, i16* %46, align 2, !dbg !1098
  %48 = zext i16 %47 to i32, !dbg !1098
  call void @llvm.dbg.value(metadata i32 %48, metadata !1099, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 0, metadata !1101, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i64 0, metadata !1102, metadata !DIExpression()), !dbg !1100
  br label %49, !dbg !1103

49:                                               ; preds = %70, %44
  %.01 = phi i64 [ 0, %44 ], [ %71, %70 ], !dbg !1105
  %.0 = phi i32 [ 0, %44 ], [ %64, %70 ], !dbg !1100
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1101, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1102, metadata !DIExpression()), !dbg !1100
  %50 = icmp ult i64 %.01, %9, !dbg !1106
  br i1 %50, label %51, label %72, !dbg !1108

51:                                               ; preds = %49
  %52 = add i64 1, %.02, !dbg !1109
  %53 = add i64 %52, %.01, !dbg !1111
  %54 = getelementptr inbounds i16, i16* %0, i64 %53, !dbg !1112
  %55 = load i16, i16* %54, align 2, !dbg !1112
  %56 = zext i16 %55 to i32, !dbg !1113
  %57 = add i64 1, %.01, !dbg !1114
  %58 = getelementptr inbounds i16, i16* %1, i64 %57, !dbg !1114
  %59 = load i16, i16* %58, align 2, !dbg !1114
  %60 = zext i16 %59 to i32, !dbg !1114
  %61 = mul i32 %48, %60, !dbg !1114
  %62 = add i32 %56, %61, !dbg !1115
  %63 = add i32 %62, %.0, !dbg !1116
  call void @llvm.dbg.value(metadata i32 %63, metadata !1117, metadata !DIExpression()), !dbg !1118
  %64 = lshr i32 %63, 15, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %64, metadata !1101, metadata !DIExpression()), !dbg !1100
  %65 = and i32 %63, 32767, !dbg !1120
  %66 = trunc i32 %65 to i16, !dbg !1121
  %67 = add i64 1, %.02, !dbg !1122
  %68 = add i64 %67, %.01, !dbg !1123
  %69 = getelementptr inbounds i16, i16* %0, i64 %68, !dbg !1124
  store i16 %66, i16* %69, align 2, !dbg !1125
  br label %70, !dbg !1126

70:                                               ; preds = %51
  %71 = add i64 %.01, 1, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %71, metadata !1102, metadata !DIExpression()), !dbg !1100
  br label %49, !dbg !1128, !llvm.loop !1129

72:                                               ; preds = %49
  %73 = trunc i32 %.0 to i16, !dbg !1131
  %74 = add i64 1, %.02, !dbg !1132
  %75 = add i64 %74, %9, !dbg !1133
  %76 = getelementptr inbounds i16, i16* %0, i64 %75, !dbg !1134
  store i16 %73, i16* %76, align 2, !dbg !1135
  br label %77, !dbg !1136

77:                                               ; preds = %72
  %78 = add i64 %.02, 1, !dbg !1137
  call void @llvm.dbg.value(metadata i64 %78, metadata !1089, metadata !DIExpression()), !dbg !1055
  br label %42, !dbg !1138, !llvm.loop !1139

79:                                               ; preds = %42
  ret void, !dbg !1141
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_muladd_small(i16* %0, i16 zeroext %1, i16* %2) #0 !dbg !1142 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i16* %0, metadata !1145, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i16 %1, metadata !1147, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i16* %2, metadata !1148, metadata !DIExpression()), !dbg !1146
  %5 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !1149
  %6 = load i16, i16* %5, align 2, !dbg !1149
  %7 = zext i16 %6 to i32, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %7, metadata !1150, metadata !DIExpression()), !dbg !1146
  %8 = icmp eq i32 %7, 0, !dbg !1151
  br i1 %8, label %9, label %10, !dbg !1153

9:                                                ; preds = %3
  br label %138, !dbg !1154

10:                                               ; preds = %3
  %11 = icmp ule i32 %7, 15, !dbg !1156
  br i1 %11, label %12, label %26, !dbg !1158

12:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1159, metadata !DIExpression()), !dbg !1161
  %13 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1162
  %14 = load i16, i16* %13, align 2, !dbg !1162
  %15 = zext i16 %14 to i32, !dbg !1163
  %16 = shl i32 %15, 15, !dbg !1164
  %17 = zext i16 %1 to i32, !dbg !1165
  %18 = or i32 %16, %17, !dbg !1166
  %19 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !1167
  %20 = load i16, i16* %19, align 2, !dbg !1167
  %21 = zext i16 %20 to i32, !dbg !1167
  %22 = call i32 @divrem16(i32 %18, i32 %21, i32* %4), !dbg !1168
  %23 = load i32, i32* %4, align 4, !dbg !1169
  %24 = trunc i32 %23 to i16, !dbg !1169
  %25 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1170
  store i16 %24, i16* %25, align 2, !dbg !1171
  br label %138, !dbg !1172

26:                                               ; preds = %10
  %27 = add i32 %7, 15, !dbg !1173
  %28 = lshr i32 %27, 4, !dbg !1174
  %29 = zext i32 %28 to i64, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %29, metadata !1176, metadata !DIExpression()), !dbg !1146
  %30 = and i32 %7, 15, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %30, metadata !1178, metadata !DIExpression()), !dbg !1146
  %31 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !1179
  %32 = load i16, i16* %31, align 2, !dbg !1179
  %33 = zext i16 %32 to i32, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %33, metadata !1180, metadata !DIExpression()), !dbg !1146
  %34 = icmp eq i32 %30, 0, !dbg !1181
  br i1 %34, label %35, label %54, !dbg !1183

35:                                               ; preds = %26
  %36 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !1184
  %37 = load i16, i16* %36, align 2, !dbg !1184
  %38 = zext i16 %37 to i32, !dbg !1184
  call void @llvm.dbg.value(metadata i32 %38, metadata !1186, metadata !DIExpression()), !dbg !1146
  %39 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !1187
  %40 = bitcast i16* %39 to i8*, !dbg !1188
  %41 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1189
  %42 = bitcast i16* %41 to i8*, !dbg !1188
  %43 = sub i64 %29, 1, !dbg !1190
  %44 = mul i64 %43, 2, !dbg !1191
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %40, i8* align 2 %42, i64 %44, i1 false), !dbg !1188
  %45 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1192
  store i16 %1, i16* %45, align 2, !dbg !1193
  %46 = shl i32 %38, 15, !dbg !1194
  %47 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !1195
  %48 = load i16, i16* %47, align 2, !dbg !1195
  %49 = zext i16 %48 to i32, !dbg !1195
  %50 = add i32 %46, %49, !dbg !1196
  call void @llvm.dbg.value(metadata i32 %50, metadata !1197, metadata !DIExpression()), !dbg !1146
  %51 = getelementptr inbounds i16, i16* %2, i64 %29, !dbg !1198
  %52 = load i16, i16* %51, align 2, !dbg !1198
  %53 = zext i16 %52 to i32, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %53, metadata !1199, metadata !DIExpression()), !dbg !1146
  br label %98, !dbg !1200

54:                                               ; preds = %26
  %55 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !1201
  %56 = load i16, i16* %55, align 2, !dbg !1201
  %57 = zext i16 %56 to i32, !dbg !1201
  %58 = sub i32 15, %30, !dbg !1203
  %59 = shl i32 %57, %58, !dbg !1204
  %60 = sub i64 %29, 1, !dbg !1205
  %61 = getelementptr inbounds i16, i16* %0, i64 %60, !dbg !1206
  %62 = load i16, i16* %61, align 2, !dbg !1206
  %63 = zext i16 %62 to i32, !dbg !1206
  %64 = ashr i32 %63, %30, !dbg !1207
  %65 = or i32 %59, %64, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %65, metadata !1186, metadata !DIExpression()), !dbg !1146
  %66 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !1209
  %67 = bitcast i16* %66 to i8*, !dbg !1210
  %68 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1211
  %69 = bitcast i16* %68 to i8*, !dbg !1210
  %70 = sub i64 %29, 1, !dbg !1212
  %71 = mul i64 %70, 2, !dbg !1213
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %67, i8* align 2 %69, i64 %71, i1 false), !dbg !1210
  %72 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1214
  store i16 %1, i16* %72, align 2, !dbg !1215
  %73 = shl i32 %65, 15, !dbg !1216
  %74 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !1217
  %75 = load i16, i16* %74, align 2, !dbg !1217
  %76 = zext i16 %75 to i32, !dbg !1217
  %77 = sub i32 15, %30, !dbg !1218
  %78 = shl i32 %76, %77, !dbg !1219
  %79 = sub i64 %29, 1, !dbg !1220
  %80 = getelementptr inbounds i16, i16* %0, i64 %79, !dbg !1221
  %81 = load i16, i16* %80, align 2, !dbg !1221
  %82 = zext i16 %81 to i32, !dbg !1221
  %83 = ashr i32 %82, %30, !dbg !1222
  %84 = or i32 %78, %83, !dbg !1223
  %85 = and i32 %84, 32767, !dbg !1224
  %86 = or i32 %73, %85, !dbg !1225
  call void @llvm.dbg.value(metadata i32 %86, metadata !1197, metadata !DIExpression()), !dbg !1146
  %87 = getelementptr inbounds i16, i16* %2, i64 %29, !dbg !1226
  %88 = load i16, i16* %87, align 2, !dbg !1226
  %89 = zext i16 %88 to i32, !dbg !1226
  %90 = sub i32 15, %30, !dbg !1227
  %91 = shl i32 %89, %90, !dbg !1228
  %92 = sub i64 %29, 1, !dbg !1229
  %93 = getelementptr inbounds i16, i16* %2, i64 %92, !dbg !1230
  %94 = load i16, i16* %93, align 2, !dbg !1230
  %95 = zext i16 %94 to i32, !dbg !1230
  %96 = ashr i32 %95, %30, !dbg !1231
  %97 = or i32 %91, %96, !dbg !1232
  call void @llvm.dbg.value(metadata i32 %97, metadata !1199, metadata !DIExpression()), !dbg !1146
  br label %98

98:                                               ; preds = %54, %35
  %.05 = phi i32 [ %38, %35 ], [ %65, %54 ], !dbg !1233
  %.03 = phi i32 [ %50, %35 ], [ %86, %54 ], !dbg !1233
  %.02 = phi i32 [ %53, %35 ], [ %97, %54 ], !dbg !1233
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1199, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1197, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1186, metadata !DIExpression()), !dbg !1146
  %99 = call i32 @divrem16(i32 %.03, i32 %.02, i32* null), !dbg !1234
  call void @llvm.dbg.value(metadata i32 %99, metadata !1235, metadata !DIExpression()), !dbg !1146
  %100 = call i32 @EQ.15(i32 %.02, i32 %.05), !dbg !1236
  %101 = sub i32 %99, 1, !dbg !1237
  %102 = sub i32 %99, 1, !dbg !1238
  %103 = lshr i32 %102, 31, !dbg !1239
  %104 = add i32 %101, %103, !dbg !1240
  %105 = call i32 @MUX.16(i32 %100, i32 32767, i32 %104), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %105, metadata !1235, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 0, metadata !1242, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 1, metadata !1243, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 1, metadata !1244, metadata !DIExpression()), !dbg !1146
  br label %106, !dbg !1245

106:                                              ; preds = %128, %98
  %.04 = phi i64 [ 1, %98 ], [ %129, %128 ], !dbg !1247
  %.01 = phi i32 [ 0, %98 ], [ %121, %128 ], !dbg !1146
  %.0 = phi i32 [ 1, %98 ], [ %127, %128 ], !dbg !1146
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1243, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1242, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1244, metadata !DIExpression()), !dbg !1146
  %107 = icmp ule i64 %.04, %29, !dbg !1248
  br i1 %107, label %108, label %130, !dbg !1250

108:                                              ; preds = %106
  %109 = getelementptr inbounds i16, i16* %2, i64 %.04, !dbg !1251
  %110 = load i16, i16* %109, align 2, !dbg !1251
  %111 = zext i16 %110 to i32, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %111, metadata !1253, metadata !DIExpression()), !dbg !1254
  %112 = mul i32 %111, %105, !dbg !1255
  %113 = add i32 %112, %.01, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %113, metadata !1257, metadata !DIExpression()), !dbg !1254
  %114 = lshr i32 %113, 15, !dbg !1258
  call void @llvm.dbg.value(metadata i32 %114, metadata !1242, metadata !DIExpression()), !dbg !1146
  %115 = and i32 %113, 32767, !dbg !1259
  call void @llvm.dbg.value(metadata i32 %115, metadata !1257, metadata !DIExpression()), !dbg !1254
  %116 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !1260
  %117 = load i16, i16* %116, align 2, !dbg !1260
  %118 = zext i16 %117 to i32, !dbg !1260
  call void @llvm.dbg.value(metadata i32 %118, metadata !1261, metadata !DIExpression()), !dbg !1254
  %119 = sub i32 %118, %115, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %119, metadata !1263, metadata !DIExpression()), !dbg !1254
  %120 = lshr i32 %119, 31, !dbg !1264
  %121 = add i32 %114, %120, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %121, metadata !1242, metadata !DIExpression()), !dbg !1146
  %122 = and i32 %119, 32767, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %122, metadata !1263, metadata !DIExpression()), !dbg !1254
  %123 = trunc i32 %122 to i16, !dbg !1267
  %124 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !1268
  store i16 %123, i16* %124, align 2, !dbg !1269
  %125 = call i32 @EQ.15(i32 %122, i32 %111), !dbg !1270
  %126 = call i32 @GT.17(i32 %122, i32 %111), !dbg !1271
  %127 = call i32 @MUX.16(i32 %125, i32 %.0, i32 %126), !dbg !1272
  call void @llvm.dbg.value(metadata i32 %127, metadata !1243, metadata !DIExpression()), !dbg !1146
  br label %128, !dbg !1273

128:                                              ; preds = %108
  %129 = add i64 %.04, 1, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %129, metadata !1244, metadata !DIExpression()), !dbg !1146
  br label %106, !dbg !1275, !llvm.loop !1276

130:                                              ; preds = %106
  %131 = call i32 @GT.17(i32 %.01, i32 %33), !dbg !1278
  call void @llvm.dbg.value(metadata i32 %131, metadata !1279, metadata !DIExpression()), !dbg !1146
  %132 = xor i32 %131, -1, !dbg !1280
  %133 = call i32 @GT.17(i32 %33, i32 %.01), !dbg !1281
  %134 = or i32 %.0, %133, !dbg !1282
  %135 = and i32 %132, %134, !dbg !1283
  call void @llvm.dbg.value(metadata i32 %135, metadata !1284, metadata !DIExpression()), !dbg !1146
  %136 = call i32 @br_i15_add(i16* %0, i16* %2, i32 %131), !dbg !1285
  %137 = call i32 @br_i15_sub(i16* %0, i16* %2, i32 %135), !dbg !1286
  br label %138, !dbg !1287

138:                                              ; preds = %130, %12, %9
  ret void, !dbg !1287
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @divrem16(i32 %0, i32 %1, i32* %2) #0 !dbg !1288 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1292, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 %1, metadata !1294, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32* %2, metadata !1295, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 0, metadata !1296, metadata !DIExpression()), !dbg !1293
  %4 = shl i32 %1, 16, !dbg !1297
  call void @llvm.dbg.value(metadata i32 %4, metadata !1294, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 16, metadata !1298, metadata !DIExpression()), !dbg !1293
  br label %5, !dbg !1299

5:                                                ; preds = %16, %3
  %.03 = phi i32 [ 16, %3 ], [ %17, %16 ], !dbg !1301
  %.02 = phi i32 [ 0, %3 ], [ %11, %16 ], !dbg !1293
  %.01 = phi i32 [ %4, %3 ], [ %15, %16 ], !dbg !1293
  %.0 = phi i32 [ %0, %3 ], [ %14, %16 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1292, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1294, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1296, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1298, metadata !DIExpression()), !dbg !1293
  %6 = icmp sge i32 %.03, 0, !dbg !1302
  br i1 %6, label %7, label %18, !dbg !1304

7:                                                ; preds = %5
  %8 = call i32 @GT.17(i32 %.01, i32 %.0), !dbg !1305
  %9 = call i32 @NOT.18(i32 %8), !dbg !1305
  call void @llvm.dbg.value(metadata i32 %9, metadata !1307, metadata !DIExpression()), !dbg !1308
  %10 = shl i32 %9, %.03, !dbg !1309
  %11 = or i32 %.02, %10, !dbg !1310
  call void @llvm.dbg.value(metadata i32 %11, metadata !1296, metadata !DIExpression()), !dbg !1293
  %12 = sub i32 0, %9, !dbg !1311
  %13 = and i32 %12, %.01, !dbg !1312
  %14 = sub i32 %.0, %13, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %14, metadata !1292, metadata !DIExpression()), !dbg !1293
  %15 = lshr i32 %.01, 1, !dbg !1314
  call void @llvm.dbg.value(metadata i32 %15, metadata !1294, metadata !DIExpression()), !dbg !1293
  br label %16, !dbg !1315

16:                                               ; preds = %7
  %17 = add nsw i32 %.03, -1, !dbg !1316
  call void @llvm.dbg.value(metadata i32 %17, metadata !1298, metadata !DIExpression()), !dbg !1293
  br label %5, !dbg !1317, !llvm.loop !1318

18:                                               ; preds = %5
  %19 = icmp ne i32* %2, null, !dbg !1320
  br i1 %19, label %20, label %21, !dbg !1322

20:                                               ; preds = %18
  store i32 %.0, i32* %2, align 4, !dbg !1323
  br label %21, !dbg !1325

21:                                               ; preds = %20, %18
  ret i32 %.02, !dbg !1326
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.15(i32 %0, i32 %1) #0 !dbg !1327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1328, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i32 %1, metadata !1330, metadata !DIExpression()), !dbg !1329
  %3 = xor i32 %0, %1, !dbg !1331
  call void @llvm.dbg.value(metadata i32 %3, metadata !1332, metadata !DIExpression()), !dbg !1329
  %4 = sub i32 0, %3, !dbg !1333
  %5 = or i32 %3, %4, !dbg !1334
  %6 = lshr i32 %5, 31, !dbg !1335
  %7 = call i32 @NOT.18(i32 %6), !dbg !1336
  ret i32 %7, !dbg !1337
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.16(i32 %0, i32 %1, i32 %2) #0 !dbg !1338 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1339, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i32 %1, metadata !1341, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i32 %2, metadata !1342, metadata !DIExpression()), !dbg !1340
  %4 = sub i32 0, %0, !dbg !1343
  %5 = xor i32 %1, %2, !dbg !1344
  %6 = and i32 %4, %5, !dbg !1345
  %7 = xor i32 %2, %6, !dbg !1346
  ret i32 %7, !dbg !1347
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.17(i32 %0, i32 %1) #0 !dbg !1348 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1349, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %1, metadata !1351, metadata !DIExpression()), !dbg !1350
  %3 = sub i32 %1, %0, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %3, metadata !1353, metadata !DIExpression()), !dbg !1350
  %4 = xor i32 %0, %1, !dbg !1354
  %5 = xor i32 %0, %3, !dbg !1355
  %6 = and i32 %4, %5, !dbg !1356
  %7 = xor i32 %3, %6, !dbg !1357
  %8 = lshr i32 %7, 31, !dbg !1358
  ret i32 %8, !dbg !1359
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.18(i32 %0) #0 !dbg !1360 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1361, metadata !DIExpression()), !dbg !1362
  %2 = xor i32 %0, 1, !dbg !1363
  ret i32 %2, !dbg !1364
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @br_i15_ninv15(i16 zeroext %0) #0 !dbg !1365 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1368, metadata !DIExpression()), !dbg !1369
  %2 = zext i16 %0 to i32, !dbg !1370
  %3 = sub nsw i32 2, %2, !dbg !1371
  call void @llvm.dbg.value(metadata i32 %3, metadata !1372, metadata !DIExpression()), !dbg !1369
  %4 = zext i16 %0 to i32, !dbg !1373
  %5 = mul i32 %4, %3, !dbg !1373
  %6 = sub i32 2, %5, !dbg !1373
  %7 = mul i32 %3, %6, !dbg !1373
  call void @llvm.dbg.value(metadata i32 %7, metadata !1372, metadata !DIExpression()), !dbg !1369
  %8 = zext i16 %0 to i32, !dbg !1374
  %9 = mul i32 %8, %7, !dbg !1374
  %10 = sub i32 2, %9, !dbg !1374
  %11 = mul i32 %7, %10, !dbg !1374
  call void @llvm.dbg.value(metadata i32 %11, metadata !1372, metadata !DIExpression()), !dbg !1369
  %12 = zext i16 %0 to i32, !dbg !1375
  %13 = mul i32 %12, %11, !dbg !1375
  %14 = sub i32 2, %13, !dbg !1375
  %15 = mul i32 %11, %14, !dbg !1375
  call void @llvm.dbg.value(metadata i32 %15, metadata !1372, metadata !DIExpression()), !dbg !1369
  %16 = zext i16 %0 to i32, !dbg !1376
  %17 = and i32 %16, 1, !dbg !1377
  %18 = sub i32 0, %15, !dbg !1378
  %19 = call i32 @MUX.19(i32 %17, i32 %18, i32 0), !dbg !1379
  %20 = and i32 %19, 32767, !dbg !1380
  %21 = trunc i32 %20 to i16, !dbg !1379
  ret i16 %21, !dbg !1381
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.19(i32 %0, i32 %1, i32 %2) #0 !dbg !1382 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1383, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i32 %1, metadata !1385, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i32 %2, metadata !1386, metadata !DIExpression()), !dbg !1384
  %4 = sub i32 0, %0, !dbg !1387
  %5 = xor i32 %1, %2, !dbg !1388
  %6 = and i32 %4, %5, !dbg !1389
  %7 = xor i32 %2, %6, !dbg !1390
  ret i32 %7, !dbg !1391
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_reduce(i16* %0, i16* %1, i16* %2) #0 !dbg !1392 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1393, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i16* %1, metadata !1395, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i16* %2, metadata !1396, metadata !DIExpression()), !dbg !1394
  %4 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !1397
  %5 = load i16, i16* %4, align 2, !dbg !1397
  %6 = zext i16 %5 to i32, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %6, metadata !1398, metadata !DIExpression()), !dbg !1394
  %7 = add i32 %6, 15, !dbg !1399
  %8 = lshr i32 %7, 4, !dbg !1400
  %9 = zext i32 %8 to i64, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %9, metadata !1402, metadata !DIExpression()), !dbg !1394
  %10 = trunc i32 %6 to i16, !dbg !1403
  %11 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1404
  store i16 %10, i16* %11, align 2, !dbg !1405
  %12 = icmp eq i32 %6, 0, !dbg !1406
  br i1 %12, label %13, label %14, !dbg !1408

13:                                               ; preds = %3
  br label %55, !dbg !1409

14:                                               ; preds = %3
  %15 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !1411
  %16 = load i16, i16* %15, align 2, !dbg !1411
  %17 = zext i16 %16 to i32, !dbg !1411
  call void @llvm.dbg.value(metadata i32 %17, metadata !1412, metadata !DIExpression()), !dbg !1394
  %18 = add i32 %17, 15, !dbg !1413
  %19 = lshr i32 %18, 4, !dbg !1414
  %20 = zext i32 %19 to i64, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %20, metadata !1416, metadata !DIExpression()), !dbg !1394
  %21 = icmp ult i32 %17, %6, !dbg !1417
  br i1 %21, label %22, label %36, !dbg !1419

22:                                               ; preds = %14
  %23 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1420
  %24 = bitcast i16* %23 to i8*, !dbg !1422
  %25 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !1423
  %26 = bitcast i16* %25 to i8*, !dbg !1422
  %27 = mul i64 %20, 2, !dbg !1424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %24, i8* align 2 %26, i64 %27, i1 false), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %20, metadata !1425, metadata !DIExpression()), !dbg !1394
  br label %28, !dbg !1426

28:                                               ; preds = %33, %22
  %.0 = phi i64 [ %20, %22 ], [ %34, %33 ], !dbg !1428
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1425, metadata !DIExpression()), !dbg !1394
  %29 = icmp ult i64 %.0, %9, !dbg !1429
  br i1 %29, label %30, label %35, !dbg !1431

30:                                               ; preds = %28
  %31 = add i64 %.0, 1, !dbg !1432
  %32 = getelementptr inbounds i16, i16* %0, i64 %31, !dbg !1434
  store i16 0, i16* %32, align 2, !dbg !1435
  br label %33, !dbg !1436

33:                                               ; preds = %30
  %34 = add i64 %.0, 1, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %34, metadata !1425, metadata !DIExpression()), !dbg !1394
  br label %28, !dbg !1438, !llvm.loop !1439

35:                                               ; preds = %28
  br label %55, !dbg !1441

36:                                               ; preds = %14
  %37 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1442
  %38 = bitcast i16* %37 to i8*, !dbg !1443
  %39 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !1444
  %40 = sub i64 %20, %9, !dbg !1445
  %41 = getelementptr inbounds i16, i16* %39, i64 %40, !dbg !1446
  %42 = bitcast i16* %41 to i8*, !dbg !1443
  %43 = sub i64 %9, 1, !dbg !1447
  %44 = mul i64 %43, 2, !dbg !1448
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %38, i8* align 2 %42, i64 %44, i1 false), !dbg !1443
  %45 = getelementptr inbounds i16, i16* %0, i64 %9, !dbg !1449
  store i16 0, i16* %45, align 2, !dbg !1450
  %46 = add i64 1, %20, !dbg !1451
  %47 = sub i64 %46, %9, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %47, metadata !1425, metadata !DIExpression()), !dbg !1394
  br label %48, !dbg !1454

48:                                               ; preds = %53, %36
  %.1 = phi i64 [ %47, %36 ], [ %54, %53 ], !dbg !1455
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1425, metadata !DIExpression()), !dbg !1394
  %49 = icmp ugt i64 %.1, 0, !dbg !1456
  br i1 %49, label %50, label %55, !dbg !1458

50:                                               ; preds = %48
  %51 = getelementptr inbounds i16, i16* %1, i64 %.1, !dbg !1459
  %52 = load i16, i16* %51, align 2, !dbg !1459
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %52, i16* %2), !dbg !1461
  br label %53, !dbg !1462

53:                                               ; preds = %50
  %54 = add i64 %.1, -1, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %54, metadata !1425, metadata !DIExpression()), !dbg !1394
  br label %48, !dbg !1464, !llvm.loop !1465

55:                                               ; preds = %48, %35, %13
  ret void, !dbg !1467
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_rshift(i16* %0, i32 %1) #0 !dbg !1468 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1471, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32 %1, metadata !1473, metadata !DIExpression()), !dbg !1472
  %3 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1474
  %4 = load i16, i16* %3, align 2, !dbg !1474
  %5 = zext i16 %4 to i32, !dbg !1474
  %6 = add nsw i32 %5, 15, !dbg !1475
  %7 = ashr i32 %6, 4, !dbg !1476
  %8 = sext i32 %7 to i64, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %8, metadata !1478, metadata !DIExpression()), !dbg !1472
  %9 = icmp eq i64 %8, 0, !dbg !1479
  br i1 %9, label %10, label %11, !dbg !1481

10:                                               ; preds = %2
  br label %35, !dbg !1482

11:                                               ; preds = %2
  %12 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1484
  %13 = load i16, i16* %12, align 2, !dbg !1484
  %14 = zext i16 %13 to i32, !dbg !1484
  %15 = ashr i32 %14, %1, !dbg !1485
  call void @llvm.dbg.value(metadata i32 %15, metadata !1486, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 2, metadata !1487, metadata !DIExpression()), !dbg !1472
  br label %16, !dbg !1488

16:                                               ; preds = %30, %11
  %.01 = phi i64 [ 2, %11 ], [ %31, %30 ], !dbg !1490
  %.0 = phi i32 [ %15, %11 ], [ %29, %30 ], !dbg !1472
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1486, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1487, metadata !DIExpression()), !dbg !1472
  %17 = icmp ule i64 %.01, %8, !dbg !1491
  br i1 %17, label %18, label %32, !dbg !1493

18:                                               ; preds = %16
  %19 = getelementptr inbounds i16, i16* %0, i64 %.01, !dbg !1494
  %20 = load i16, i16* %19, align 2, !dbg !1494
  %21 = zext i16 %20 to i32, !dbg !1494
  call void @llvm.dbg.value(metadata i32 %21, metadata !1496, metadata !DIExpression()), !dbg !1497
  %22 = sub nsw i32 15, %1, !dbg !1498
  %23 = shl i32 %21, %22, !dbg !1499
  %24 = or i32 %23, %.0, !dbg !1500
  %25 = and i32 %24, 32767, !dbg !1501
  %26 = trunc i32 %25 to i16, !dbg !1502
  %27 = sub i64 %.01, 1, !dbg !1503
  %28 = getelementptr inbounds i16, i16* %0, i64 %27, !dbg !1504
  store i16 %26, i16* %28, align 2, !dbg !1505
  %29 = lshr i32 %21, %1, !dbg !1506
  call void @llvm.dbg.value(metadata i32 %29, metadata !1486, metadata !DIExpression()), !dbg !1472
  br label %30, !dbg !1507

30:                                               ; preds = %18
  %31 = add i64 %.01, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %31, metadata !1487, metadata !DIExpression()), !dbg !1472
  br label %16, !dbg !1509, !llvm.loop !1510

32:                                               ; preds = %16
  %33 = trunc i32 %.0 to i16, !dbg !1512
  %34 = getelementptr inbounds i16, i16* %0, i64 %8, !dbg !1513
  store i16 %33, i16* %34, align 2, !dbg !1514
  br label %35, !dbg !1515

35:                                               ; preds = %32, %10
  ret void, !dbg !1515
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_sub(i16* %0, i16* %1, i32 %2) #0 !dbg !1516 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1517, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i16* %1, metadata !1519, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i32 %2, metadata !1520, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i32 0, metadata !1521, metadata !DIExpression()), !dbg !1518
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1522
  %5 = load i16, i16* %4, align 2, !dbg !1522
  %6 = zext i16 %5 to i32, !dbg !1522
  %7 = add nsw i32 %6, 31, !dbg !1523
  %8 = ashr i32 %7, 4, !dbg !1524
  %9 = sext i32 %8 to i64, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %9, metadata !1526, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i64 1, metadata !1527, metadata !DIExpression()), !dbg !1518
  br label %10, !dbg !1528

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !1518
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !1530
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1527, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1521, metadata !DIExpression()), !dbg !1518
  %11 = icmp ult i64 %.0, %9, !dbg !1531
  br i1 %11, label %12, label %28, !dbg !1533

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !1534
  %14 = load i16, i16* %13, align 2, !dbg !1534
  %15 = zext i16 %14 to i32, !dbg !1534
  call void @llvm.dbg.value(metadata i32 %15, metadata !1536, metadata !DIExpression()), !dbg !1537
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !1538
  %17 = load i16, i16* %16, align 2, !dbg !1538
  %18 = zext i16 %17 to i32, !dbg !1538
  call void @llvm.dbg.value(metadata i32 %18, metadata !1539, metadata !DIExpression()), !dbg !1537
  %19 = sub i32 %15, %18, !dbg !1540
  %20 = sub i32 %19, %.01, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %20, metadata !1542, metadata !DIExpression()), !dbg !1537
  %21 = lshr i32 %20, 31, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %21, metadata !1521, metadata !DIExpression()), !dbg !1518
  %22 = and i32 %20, 32767, !dbg !1544
  %23 = call i32 @MUX.24(i32 %2, i32 %22, i32 %15), !dbg !1545
  %24 = trunc i32 %23 to i16, !dbg !1545
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !1546
  store i16 %24, i16* %25, align 2, !dbg !1547
  br label %26, !dbg !1548

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %27, metadata !1527, metadata !DIExpression()), !dbg !1518
  br label %10, !dbg !1550, !llvm.loop !1551

28:                                               ; preds = %10
  ret i32 %.01, !dbg !1553
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.24(i32 %0, i32 %1, i32 %2) #0 !dbg !1554 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1555, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %1, metadata !1557, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %2, metadata !1558, metadata !DIExpression()), !dbg !1556
  %4 = sub i32 0, %0, !dbg !1559
  %5 = xor i32 %1, %2, !dbg !1560
  %6 = and i32 %4, %5, !dbg !1561
  %7 = xor i32 %2, %6, !dbg !1562
  ret i32 %7, !dbg !1563
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_to_monty(i16* %0, i16* %1) #0 !dbg !1564 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1567, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i16* %1, metadata !1569, metadata !DIExpression()), !dbg !1568
  %3 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !1570
  %4 = load i16, i16* %3, align 2, !dbg !1570
  %5 = zext i16 %4 to i32, !dbg !1570
  %6 = add nsw i32 %5, 15, !dbg !1572
  %7 = ashr i32 %6, 4, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %7, metadata !1574, metadata !DIExpression()), !dbg !1568
  br label %8, !dbg !1575

8:                                                ; preds = %11, %2
  %.0 = phi i32 [ %7, %2 ], [ %12, %11 ], !dbg !1576
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1574, metadata !DIExpression()), !dbg !1568
  %9 = icmp ugt i32 %.0, 0, !dbg !1577
  br i1 %9, label %10, label %13, !dbg !1579

10:                                               ; preds = %8
  call void @br_i15_muladd_small(i16* %0, i16 zeroext 0, i16* %1), !dbg !1580
  br label %11, !dbg !1582

11:                                               ; preds = %10
  %12 = add i32 %.0, -1, !dbg !1583
  call void @llvm.dbg.value(metadata i32 %12, metadata !1574, metadata !DIExpression()), !dbg !1568
  br label %8, !dbg !1584, !llvm.loop !1585

13:                                               ; preds = %8
  ret void, !dbg !1587
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i15_private(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !1588 {
  %3 = alloca [1129 x i16], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1607, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !1609, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.declare(metadata [1129 x i16]* %3, metadata !1610, metadata !DIExpression()), !dbg !1614
  %4 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !1615
  %5 = load i8*, i8** %4, align 8, !dbg !1615
  call void @llvm.dbg.value(metadata i8* %5, metadata !1616, metadata !DIExpression()), !dbg !1608
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !1617
  %7 = load i64, i64* %6, align 8, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %7, metadata !1618, metadata !DIExpression()), !dbg !1608
  br label %8, !dbg !1619

8:                                                ; preds = %16, %2
  %.04 = phi i64 [ %7, %2 ], [ %18, %16 ], !dbg !1608
  %.02 = phi i8* [ %5, %2 ], [ %17, %16 ], !dbg !1608
  call void @llvm.dbg.value(metadata i8* %.02, metadata !1616, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1618, metadata !DIExpression()), !dbg !1608
  %9 = icmp ugt i64 %.04, 0, !dbg !1620
  br i1 %9, label %10, label %14, !dbg !1621

10:                                               ; preds = %8
  %11 = load i8, i8* %.02, align 1, !dbg !1622
  %12 = zext i8 %11 to i32, !dbg !1622
  %13 = icmp eq i32 %12, 0, !dbg !1623
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i1 [ false, %8 ], [ %13, %10 ], !dbg !1608
  br i1 %15, label %16, label %19, !dbg !1619

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !1624
  call void @llvm.dbg.value(metadata i8* %17, metadata !1616, metadata !DIExpression()), !dbg !1608
  %18 = add i64 %.04, -1, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %18, metadata !1618, metadata !DIExpression()), !dbg !1608
  br label %8, !dbg !1619, !llvm.loop !1627

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !1629
  %21 = load i8*, i8** %20, align 8, !dbg !1629
  call void @llvm.dbg.value(metadata i8* %21, metadata !1630, metadata !DIExpression()), !dbg !1608
  %22 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !1631
  %23 = load i64, i64* %22, align 8, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %23, metadata !1632, metadata !DIExpression()), !dbg !1608
  br label %24, !dbg !1633

24:                                               ; preds = %32, %19
  %.05 = phi i64 [ %23, %19 ], [ %34, %32 ], !dbg !1608
  %.03 = phi i8* [ %21, %19 ], [ %33, %32 ], !dbg !1608
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1630, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1632, metadata !DIExpression()), !dbg !1608
  %25 = icmp ugt i64 %.05, 0, !dbg !1634
  br i1 %25, label %26, label %30, !dbg !1635

26:                                               ; preds = %24
  %27 = load i8, i8* %.03, align 1, !dbg !1636
  %28 = zext i8 %27 to i32, !dbg !1636
  %29 = icmp eq i32 %28, 0, !dbg !1637
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i1 [ false, %24 ], [ %29, %26 ], !dbg !1608
  br i1 %31, label %32, label %35, !dbg !1633

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, i8* %.03, i32 1, !dbg !1638
  call void @llvm.dbg.value(metadata i8* %33, metadata !1630, metadata !DIExpression()), !dbg !1608
  %34 = add i64 %.05, -1, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %34, metadata !1632, metadata !DIExpression()), !dbg !1608
  br label %24, !dbg !1633, !llvm.loop !1641

35:                                               ; preds = %30
  %36 = icmp ugt i64 %.04, %.05, !dbg !1643
  br i1 %36, label %37, label %38, !dbg !1644

37:                                               ; preds = %35
  br label %39, !dbg !1644

38:                                               ; preds = %35
  br label %39, !dbg !1644

39:                                               ; preds = %38, %37
  %40 = phi i64 [ %.04, %37 ], [ %.05, %38 ], !dbg !1644
  %41 = shl i64 %40, 3, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %41, metadata !1646, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i64 1, metadata !1647, metadata !DIExpression()), !dbg !1608
  br label %42, !dbg !1648

42:                                               ; preds = %44, %39
  %.09 = phi i64 [ %41, %39 ], [ %45, %44 ], !dbg !1608
  %.06 = phi i64 [ 1, %39 ], [ %46, %44 ], !dbg !1608
  call void @llvm.dbg.value(metadata i64 %.06, metadata !1647, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %.09, metadata !1646, metadata !DIExpression()), !dbg !1608
  %43 = icmp sgt i64 %.09, 0, !dbg !1649
  br i1 %43, label %44, label %47, !dbg !1648

44:                                               ; preds = %42
  %45 = sub nsw i64 %.09, 15, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %45, metadata !1646, metadata !DIExpression()), !dbg !1608
  %46 = add i64 %.06, 1, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %46, metadata !1647, metadata !DIExpression()), !dbg !1608
  br label %42, !dbg !1648, !llvm.loop !1653

47:                                               ; preds = %42
  %48 = and i64 %.06, 1, !dbg !1655
  %49 = add i64 %.06, %48, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %49, metadata !1647, metadata !DIExpression()), !dbg !1608
  %50 = mul i64 6, %49, !dbg !1657
  %51 = icmp ugt i64 %50, 1128, !dbg !1659
  br i1 %51, label %52, label %53, !dbg !1660

52:                                               ; preds = %47
  br label %138, !dbg !1661

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !1663
  %55 = load i32, i32* %54, align 8, !dbg !1663
  %56 = add i32 %55, 7, !dbg !1664
  %57 = lshr i32 %56, 3, !dbg !1665
  %58 = zext i32 %57 to i64, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %58, metadata !1667, metadata !DIExpression()), !dbg !1608
  %59 = getelementptr inbounds [1129 x i16], [1129 x i16]* %3, i64 0, i64 0, !dbg !1668
  call void @llvm.dbg.value(metadata i16* %59, metadata !1669, metadata !DIExpression()), !dbg !1608
  %60 = ptrtoint i16* %59 to i64, !dbg !1670
  %61 = and i64 %60, 2, !dbg !1672
  %62 = icmp eq i64 %61, 0, !dbg !1673
  br i1 %62, label %63, label %65, !dbg !1674

63:                                               ; preds = %53
  %64 = getelementptr inbounds i16, i16* %59, i32 1, !dbg !1675
  call void @llvm.dbg.value(metadata i16* %64, metadata !1669, metadata !DIExpression()), !dbg !1608
  br label %65, !dbg !1677

65:                                               ; preds = %63, %53
  %.07 = phi i16* [ %64, %63 ], [ %59, %53 ], !dbg !1608
  call void @llvm.dbg.value(metadata i16* %.07, metadata !1669, metadata !DIExpression()), !dbg !1608
  call void @br_i15_decode(i16* %.07, i8* %.03, i64 %.05), !dbg !1678
  %66 = getelementptr inbounds i16, i16* %.07, i64 %49, !dbg !1679
  call void @llvm.dbg.value(metadata i16* %66, metadata !1680, metadata !DIExpression()), !dbg !1608
  call void @br_i15_decode(i16* %66, i8* %.02, i64 %.04), !dbg !1681
  %67 = mul i64 2, %49, !dbg !1682
  %68 = getelementptr inbounds i16, i16* %.07, i64 %67, !dbg !1683
  call void @llvm.dbg.value(metadata i16* %68, metadata !1684, metadata !DIExpression()), !dbg !1608
  %69 = getelementptr inbounds i16, i16* %.07, i64 0, !dbg !1685
  %70 = load i16, i16* %69, align 2, !dbg !1685
  call void @br_i15_zero.29(i16* %68, i16 zeroext %70), !dbg !1686
  call void @br_i15_mulacc(i16* %68, i16* %.07, i16* %66), !dbg !1687
  %71 = mul i64 4, %49, !dbg !1688
  %72 = getelementptr inbounds i16, i16* %.07, i64 %71, !dbg !1689
  call void @llvm.dbg.value(metadata i16* %72, metadata !1690, metadata !DIExpression()), !dbg !1608
  %73 = bitcast i16* %72 to i8*, !dbg !1691
  call void @br_i15_encode(i8* %73, i64 %58, i16* %68), !dbg !1692
  call void @llvm.dbg.value(metadata i64 %58, metadata !1693, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i32 0, metadata !1694, metadata !DIExpression()), !dbg !1608
  br label %74, !dbg !1695

74:                                               ; preds = %76, %65
  %.08 = phi i64 [ %58, %65 ], [ %77, %76 ], !dbg !1608
  %.01 = phi i32 [ 0, %65 ], [ %88, %76 ], !dbg !1608
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1694, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %.08, metadata !1693, metadata !DIExpression()), !dbg !1608
  %75 = icmp ugt i64 %.08, 0, !dbg !1696
  br i1 %75, label %76, label %89, !dbg !1695

76:                                               ; preds = %74
  %77 = add i64 %.08, -1, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %77, metadata !1693, metadata !DIExpression()), !dbg !1608
  %78 = bitcast i16* %72 to i8*, !dbg !1699
  %79 = getelementptr inbounds i8, i8* %78, i64 %77, !dbg !1699
  %80 = load i8, i8* %79, align 1, !dbg !1699
  %81 = zext i8 %80 to i32, !dbg !1699
  call void @llvm.dbg.value(metadata i32 %81, metadata !1700, metadata !DIExpression()), !dbg !1701
  %82 = getelementptr inbounds i8, i8* %0, i64 %77, !dbg !1702
  %83 = load i8, i8* %82, align 1, !dbg !1702
  %84 = zext i8 %83 to i32, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %84, metadata !1703, metadata !DIExpression()), !dbg !1701
  %85 = add i32 %81, %.01, !dbg !1704
  %86 = sub i32 %84, %85, !dbg !1705
  %87 = lshr i32 %86, 8, !dbg !1706
  %88 = and i32 %87, 1, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %88, metadata !1694, metadata !DIExpression()), !dbg !1608
  br label %74, !dbg !1695, !llvm.loop !1708

89:                                               ; preds = %74
  %90 = mul i64 2, %49, !dbg !1710
  %91 = getelementptr inbounds i16, i16* %.07, i64 %90, !dbg !1711
  call void @llvm.dbg.value(metadata i16* %91, metadata !1712, metadata !DIExpression()), !dbg !1608
  %92 = bitcast i16* %91 to i8*, !dbg !1713
  %93 = bitcast i16* %66 to i8*, !dbg !1713
  %94 = mul i64 %49, 2, !dbg !1714
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %92, i8* align 2 %93, i64 %94, i1 false), !dbg !1713
  %95 = getelementptr inbounds i16, i16* %.07, i64 1, !dbg !1715
  %96 = load i16, i16* %95, align 2, !dbg !1715
  %97 = call zeroext i16 @br_i15_ninv15(i16 zeroext %96), !dbg !1716
  call void @llvm.dbg.value(metadata i16 %97, metadata !1717, metadata !DIExpression()), !dbg !1608
  %98 = getelementptr inbounds i16, i16* %.07, i64 %49, !dbg !1718
  call void @llvm.dbg.value(metadata i16* %98, metadata !1719, metadata !DIExpression()), !dbg !1608
  call void @br_i15_decode_reduce(i16* %98, i8* %0, i64 %58, i16* %.07), !dbg !1720
  %99 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !1721
  %100 = load i8*, i8** %99, align 8, !dbg !1721
  %101 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !1722
  %102 = load i64, i64* %101, align 8, !dbg !1722
  %103 = mul i64 3, %49, !dbg !1723
  %104 = getelementptr inbounds i16, i16* %.07, i64 %103, !dbg !1724
  %105 = mul i64 3, %49, !dbg !1725
  %106 = sub i64 1128, %105, !dbg !1726
  %107 = call i32 @br_i15_modpow_opt(i16* %98, i8* %100, i64 %102, i16* %.07, i16 zeroext %97, i16* %104, i64 %106), !dbg !1727
  %108 = and i32 %.01, %107, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %108, metadata !1694, metadata !DIExpression()), !dbg !1608
  %109 = getelementptr inbounds i16, i16* %91, i64 1, !dbg !1729
  %110 = load i16, i16* %109, align 2, !dbg !1729
  %111 = call zeroext i16 @br_i15_ninv15(i16 zeroext %110), !dbg !1730
  call void @llvm.dbg.value(metadata i16 %111, metadata !1731, metadata !DIExpression()), !dbg !1608
  %112 = mul i64 3, %49, !dbg !1732
  %113 = getelementptr inbounds i16, i16* %.07, i64 %112, !dbg !1733
  call void @llvm.dbg.value(metadata i16* %113, metadata !1734, metadata !DIExpression()), !dbg !1608
  call void @br_i15_decode_reduce(i16* %113, i8* %0, i64 %58, i16* %91), !dbg !1735
  %114 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !1736
  %115 = load i8*, i8** %114, align 8, !dbg !1736
  %116 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !1737
  %117 = load i64, i64* %116, align 8, !dbg !1737
  %118 = mul i64 4, %49, !dbg !1738
  %119 = getelementptr inbounds i16, i16* %.07, i64 %118, !dbg !1739
  %120 = mul i64 4, %49, !dbg !1740
  %121 = sub i64 1128, %120, !dbg !1741
  %122 = call i32 @br_i15_modpow_opt(i16* %113, i8* %115, i64 %117, i16* %91, i16 zeroext %111, i16* %119, i64 %121), !dbg !1742
  %123 = and i32 %108, %122, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %123, metadata !1694, metadata !DIExpression()), !dbg !1608
  %124 = mul i64 4, %49, !dbg !1744
  %125 = getelementptr inbounds i16, i16* %.07, i64 %124, !dbg !1745
  call void @llvm.dbg.value(metadata i16* %125, metadata !1680, metadata !DIExpression()), !dbg !1608
  %126 = mul i64 5, %49, !dbg !1746
  %127 = getelementptr inbounds i16, i16* %.07, i64 %126, !dbg !1747
  call void @llvm.dbg.value(metadata i16* %127, metadata !1684, metadata !DIExpression()), !dbg !1608
  call void @br_i15_reduce(i16* %127, i16* %98, i16* %91), !dbg !1748
  %128 = call i32 @br_i15_sub(i16* %113, i16* %127, i32 1), !dbg !1749
  %129 = call i32 @br_i15_add(i16* %113, i16* %91, i32 %128), !dbg !1750
  call void @br_i15_to_monty(i16* %113, i16* %91), !dbg !1751
  %130 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !1752
  %131 = load i8*, i8** %130, align 8, !dbg !1752
  %132 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !1753
  %133 = load i64, i64* %132, align 8, !dbg !1753
  call void @br_i15_decode_reduce(i16* %125, i8* %131, i64 %133, i16* %91), !dbg !1754
  call void @br_i15_montymul(i16* %127, i16* %113, i16* %125, i16* %91, i16 zeroext %111), !dbg !1755
  call void @llvm.dbg.value(metadata i16* %98, metadata !1690, metadata !DIExpression()), !dbg !1608
  call void @br_i15_mulacc(i16* %98, i16* %.07, i16* %127), !dbg !1756
  call void @br_i15_encode(i8* %0, i64 %58, i16* %98), !dbg !1757
  %134 = zext i16 %111 to i32, !dbg !1758
  %135 = zext i16 %97 to i32, !dbg !1759
  %136 = and i32 %134, %135, !dbg !1760
  %137 = and i32 %136, %123, !dbg !1761
  br label %138, !dbg !1762

138:                                              ; preds = %89, %52
  %.0 = phi i32 [ 0, %52 ], [ %137, %89 ], !dbg !1608
  ret i32 %.0, !dbg !1763
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.29(i16* %0, i16 zeroext %1) #0 !dbg !1764 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1765, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i16 %1, metadata !1767, metadata !DIExpression()), !dbg !1766
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !1768
  call void @llvm.dbg.value(metadata i16* %3, metadata !1765, metadata !DIExpression()), !dbg !1766
  store i16 %1, i16* %0, align 2, !dbg !1769
  %4 = bitcast i16* %3 to i8*, !dbg !1770
  %5 = zext i16 %1 to i32, !dbg !1771
  %6 = add nsw i32 %5, 15, !dbg !1772
  %7 = ashr i32 %6, 4, !dbg !1773
  %8 = sext i32 %7 to i64, !dbg !1774
  %9 = mul i64 %8, 2, !dbg !1775
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !1770
  ret void, !dbg !1776
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0, !3, !5, !7, !15, !17, !19, !23, !25, !28, !34, !36, !40, !42, !44, !46, !48, !50}
!llvm.ident = !{!57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../BearSSL/src/codec/ccopy.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "decrypt.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "../BearSSL/src/int/i15_add.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "../BearSSL/src/int/i15_bitlen.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 26, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 42, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "../BearSSL/src/int/i15_decode.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "../BearSSL/src/int/i15_decred.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "../BearSSL/src/int/i15_encode.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!21 = !{!10, !22}
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "../BearSSL/src/int/i15_fmont.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !27, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "../BearSSL/src/int/i15_modpow2.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!27 = !{!10, !14}
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../BearSSL/src/int/i15_montmul.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!30 = !{!31, !10}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../BearSSL/src/int/i15_mulacc.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !38, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../BearSSL/src/int/i15_muladd.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!38 = !{!10, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../BearSSL/src/int/i15_ninv15.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../BearSSL/src/int/i15_reduce.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../BearSSL/src/int/i15_rshift.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../BearSSL/src/int/i15_sub.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../BearSSL/src/int/i15_tmont.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !52, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../BearSSL/src/rsa/rsa_i15_priv.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!52 = !{!53, !54, !56}
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 90, baseType: !33)
!55 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!57 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "br_ccopy", scope: !1, file: !1, line: 29, type: !62, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !10, !39, !64, !31}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!66 = !DILocalVariable(name: "ctl", arg: 1, scope: !61, file: !1, line: 29, type: !10)
!67 = !DILocation(line: 0, scope: !61)
!68 = !DILocalVariable(name: "dst", arg: 2, scope: !61, file: !1, line: 29, type: !39)
!69 = !DILocalVariable(name: "src", arg: 3, scope: !61, file: !1, line: 29, type: !64)
!70 = !DILocalVariable(name: "len", arg: 4, scope: !61, file: !1, line: 29, type: !31)
!71 = !DILocalVariable(name: "d", scope: !61, file: !1, line: 31, type: !56)
!72 = !DILocalVariable(name: "s", scope: !61, file: !1, line: 32, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!75 = !DILocation(line: 36, column: 2, scope: !61)
!76 = !DILocation(line: 36, column: 13, scope: !61)
!77 = !DILocation(line: 36, column: 16, scope: !61)
!78 = !DILocation(line: 39, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !61, file: !1, line: 36, column: 21)
!80 = !DILocation(line: 39, column: 7, scope: !79)
!81 = !DILocalVariable(name: "x", scope: !79, file: !1, line: 37, type: !10)
!82 = !DILocation(line: 0, scope: !79)
!83 = !DILocation(line: 40, column: 7, scope: !79)
!84 = !DILocalVariable(name: "y", scope: !79, file: !1, line: 37, type: !10)
!85 = !DILocation(line: 41, column: 8, scope: !79)
!86 = !DILocation(line: 41, column: 6, scope: !79)
!87 = !DILocation(line: 42, column: 5, scope: !79)
!88 = distinct !{!88, !75, !89, !90}
!89 = !DILocation(line: 43, column: 2, scope: !61)
!90 = !{!"llvm.loop.mustprogress"}
!91 = !DILocation(line: 44, column: 1, scope: !61)
!92 = distinct !DISubprogram(name: "MUX", scope: !93, file: !93, line: 770, type: !94, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!93 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!94 = !DISubroutineType(types: !95)
!95 = !{!10, !10, !10, !10}
!96 = !DILocalVariable(name: "ctl", arg: 1, scope: !92, file: !93, line: 770, type: !10)
!97 = !DILocation(line: 0, scope: !92)
!98 = !DILocalVariable(name: "x", arg: 2, scope: !92, file: !93, line: 770, type: !10)
!99 = !DILocalVariable(name: "y", arg: 3, scope: !92, file: !93, line: 770, type: !10)
!100 = !DILocation(line: 772, column: 14, scope: !92)
!101 = !DILocation(line: 772, column: 24, scope: !92)
!102 = !DILocation(line: 772, column: 19, scope: !92)
!103 = !DILocation(line: 772, column: 11, scope: !92)
!104 = !DILocation(line: 772, column: 2, scope: !92)
!105 = distinct !DISubprogram(name: "decrypt_wrapper", scope: !4, file: !4, line: 3, type: !106, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !56, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !111, line: 205, baseType: !112)
!111 = !DIFile(filename: "../BearSSL/inc/bearssl_rsa.h", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 182, size: 704, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !112, file: !111, line: 184, baseType: !10, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !112, file: !111, line: 186, baseType: !56, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !112, file: !111, line: 188, baseType: !31, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !112, file: !111, line: 190, baseType: !56, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !112, file: !111, line: 192, baseType: !31, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !112, file: !111, line: 194, baseType: !56, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !112, file: !111, line: 196, baseType: !31, size: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !112, file: !111, line: 198, baseType: !56, size: 64, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !112, file: !111, line: 200, baseType: !31, size: 64, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !112, file: !111, line: 202, baseType: !56, size: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !112, file: !111, line: 204, baseType: !31, size: 64, offset: 640)
!125 = !DILocalVariable(name: "x", arg: 1, scope: !105, file: !4, line: 3, type: !56)
!126 = !DILocation(line: 0, scope: !105)
!127 = !DILocalVariable(name: "sk", arg: 2, scope: !105, file: !4, line: 3, type: !108)
!128 = !DILocation(line: 4, column: 12, scope: !105)
!129 = !DILocation(line: 4, column: 2, scope: !105)
!130 = !DILocation(line: 5, column: 12, scope: !105)
!131 = !DILocation(line: 5, column: 2, scope: !105)
!132 = !DILocation(line: 6, column: 30, scope: !105)
!133 = !DILocation(line: 6, column: 12, scope: !105)
!134 = !DILocation(line: 6, column: 2, scope: !105)
!135 = !DILocation(line: 7, column: 30, scope: !105)
!136 = !DILocation(line: 7, column: 12, scope: !105)
!137 = !DILocation(line: 7, column: 2, scope: !105)
!138 = !DILocation(line: 8, column: 30, scope: !105)
!139 = !DILocation(line: 8, column: 12, scope: !105)
!140 = !DILocation(line: 8, column: 2, scope: !105)
!141 = !DILocation(line: 9, column: 30, scope: !105)
!142 = !DILocation(line: 9, column: 12, scope: !105)
!143 = !DILocation(line: 9, column: 2, scope: !105)
!144 = !DILocation(line: 10, column: 30, scope: !105)
!145 = !DILocation(line: 10, column: 12, scope: !105)
!146 = !DILocation(line: 10, column: 2, scope: !105)
!147 = !DILocation(line: 12, column: 30, scope: !105)
!148 = !DILocation(line: 12, column: 12, scope: !105)
!149 = !DILocation(line: 12, column: 2, scope: !105)
!150 = !DILocation(line: 13, column: 30, scope: !105)
!151 = !DILocation(line: 13, column: 12, scope: !105)
!152 = !DILocation(line: 13, column: 2, scope: !105)
!153 = !DILocation(line: 14, column: 30, scope: !105)
!154 = !DILocation(line: 14, column: 12, scope: !105)
!155 = !DILocation(line: 14, column: 2, scope: !105)
!156 = !DILocation(line: 15, column: 30, scope: !105)
!157 = !DILocation(line: 15, column: 12, scope: !105)
!158 = !DILocation(line: 15, column: 2, scope: !105)
!159 = !DILocation(line: 16, column: 30, scope: !105)
!160 = !DILocation(line: 16, column: 12, scope: !105)
!161 = !DILocation(line: 16, column: 2, scope: !105)
!162 = !DILocation(line: 18, column: 30, scope: !105)
!163 = !DILocation(line: 18, column: 12, scope: !105)
!164 = !DILocation(line: 18, column: 2, scope: !105)
!165 = !DILocation(line: 21, column: 2, scope: !105)
!166 = !DILocation(line: 22, column: 1, scope: !105)
!167 = distinct !DISubprogram(name: "decrypt_wrapper_t", scope: !4, file: !4, line: 34, type: !168, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!168 = !DISubroutineType(types: !169)
!169 = !{null}
!170 = !DILocalVariable(name: "xx", scope: !167, file: !4, line: 35, type: !22)
!171 = !DILocation(line: 35, column: 15, scope: !167)
!172 = !DILocation(line: 35, column: 20, scope: !167)
!173 = !DILocalVariable(name: "x", scope: !167, file: !4, line: 36, type: !56)
!174 = !DILocation(line: 0, scope: !167)
!175 = !DILocalVariable(name: "key", scope: !167, file: !4, line: 37, type: !110)
!176 = !DILocation(line: 37, column: 20, scope: !167)
!177 = !DILocation(line: 37, column: 26, scope: !167)
!178 = !DILocalVariable(name: "sk", scope: !167, file: !4, line: 38, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!180 = !DILocation(line: 39, column: 24, scope: !167)
!181 = !DILocalVariable(name: "p", scope: !167, file: !4, line: 39, type: !56)
!182 = !DILocation(line: 40, column: 24, scope: !167)
!183 = !DILocalVariable(name: "q", scope: !167, file: !4, line: 40, type: !56)
!184 = !DILocation(line: 41, column: 25, scope: !167)
!185 = !DILocalVariable(name: "dp", scope: !167, file: !4, line: 41, type: !56)
!186 = !DILocation(line: 42, column: 25, scope: !167)
!187 = !DILocalVariable(name: "dq", scope: !167, file: !4, line: 42, type: !56)
!188 = !DILocation(line: 43, column: 25, scope: !167)
!189 = !DILocalVariable(name: "iq", scope: !167, file: !4, line: 43, type: !56)
!190 = !DILocation(line: 45, column: 1, scope: !167)
!191 = !DILocation(line: 47, column: 5, scope: !167)
!192 = !DILocation(line: 47, column: 7, scope: !167)
!193 = !DILocation(line: 48, column: 5, scope: !167)
!194 = !DILocation(line: 48, column: 7, scope: !167)
!195 = !DILocation(line: 49, column: 5, scope: !167)
!196 = !DILocation(line: 49, column: 8, scope: !167)
!197 = !DILocation(line: 50, column: 5, scope: !167)
!198 = !DILocation(line: 50, column: 8, scope: !167)
!199 = !DILocation(line: 51, column: 5, scope: !167)
!200 = !DILocation(line: 51, column: 8, scope: !167)
!201 = !DILocation(line: 52, column: 1, scope: !167)
!202 = !DILocation(line: 54, column: 1, scope: !167)
!203 = distinct !DISubprogram(name: "br_i15_add", scope: !6, file: !6, line: 29, type: !204, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !2)
!204 = !DISubroutineType(types: !205)
!205 = !{!10, !206, !210, !10}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !11, line: 25, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !13, line: 40, baseType: !209)
!209 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!212 = !DILocalVariable(name: "a", arg: 1, scope: !203, file: !6, line: 29, type: !206)
!213 = !DILocation(line: 0, scope: !203)
!214 = !DILocalVariable(name: "b", arg: 2, scope: !203, file: !6, line: 29, type: !210)
!215 = !DILocalVariable(name: "ctl", arg: 3, scope: !203, file: !6, line: 29, type: !10)
!216 = !DILocalVariable(name: "cc", scope: !203, file: !6, line: 31, type: !10)
!217 = !DILocation(line: 35, column: 7, scope: !203)
!218 = !DILocation(line: 35, column: 12, scope: !203)
!219 = !DILocation(line: 35, column: 18, scope: !203)
!220 = !DILocation(line: 35, column: 6, scope: !203)
!221 = !DILocalVariable(name: "m", scope: !203, file: !6, line: 32, type: !31)
!222 = !DILocalVariable(name: "u", scope: !203, file: !6, line: 32, type: !31)
!223 = !DILocation(line: 36, column: 7, scope: !224)
!224 = distinct !DILexicalBlock(scope: !203, file: !6, line: 36, column: 2)
!225 = !DILocation(line: 0, scope: !224)
!226 = !DILocation(line: 36, column: 16, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !6, line: 36, column: 2)
!228 = !DILocation(line: 36, column: 2, scope: !224)
!229 = !DILocation(line: 39, column: 8, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !6, line: 36, column: 27)
!231 = !DILocalVariable(name: "aw", scope: !230, file: !6, line: 37, type: !10)
!232 = !DILocation(line: 0, scope: !230)
!233 = !DILocation(line: 40, column: 8, scope: !230)
!234 = !DILocalVariable(name: "bw", scope: !230, file: !6, line: 37, type: !10)
!235 = !DILocation(line: 41, column: 12, scope: !230)
!236 = !DILocation(line: 41, column: 17, scope: !230)
!237 = !DILocalVariable(name: "naw", scope: !230, file: !6, line: 37, type: !10)
!238 = !DILocation(line: 42, column: 12, scope: !230)
!239 = !DILocation(line: 43, column: 23, scope: !230)
!240 = !DILocation(line: 43, column: 10, scope: !230)
!241 = !DILocation(line: 43, column: 3, scope: !230)
!242 = !DILocation(line: 43, column: 8, scope: !230)
!243 = !DILocation(line: 44, column: 2, scope: !230)
!244 = !DILocation(line: 36, column: 23, scope: !227)
!245 = !DILocation(line: 36, column: 2, scope: !227)
!246 = distinct !{!246, !228, !247, !90}
!247 = !DILocation(line: 44, column: 2, scope: !224)
!248 = !DILocation(line: 45, column: 2, scope: !203)
!249 = distinct !DISubprogram(name: "MUX", scope: !93, file: !93, line: 770, type: !94, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!250 = !DILocalVariable(name: "ctl", arg: 1, scope: !249, file: !93, line: 770, type: !10)
!251 = !DILocation(line: 0, scope: !249)
!252 = !DILocalVariable(name: "x", arg: 2, scope: !249, file: !93, line: 770, type: !10)
!253 = !DILocalVariable(name: "y", arg: 3, scope: !249, file: !93, line: 770, type: !10)
!254 = !DILocation(line: 772, column: 14, scope: !249)
!255 = !DILocation(line: 772, column: 24, scope: !249)
!256 = !DILocation(line: 772, column: 19, scope: !249)
!257 = !DILocation(line: 772, column: 11, scope: !249)
!258 = !DILocation(line: 772, column: 2, scope: !249)
!259 = distinct !DISubprogram(name: "br_i15_bit_length", scope: !8, file: !8, line: 29, type: !260, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!260 = !DISubroutineType(types: !261)
!261 = !{!10, !206, !31}
!262 = !DILocalVariable(name: "x", arg: 1, scope: !259, file: !8, line: 29, type: !206)
!263 = !DILocation(line: 0, scope: !259)
!264 = !DILocalVariable(name: "xlen", arg: 2, scope: !259, file: !8, line: 29, type: !31)
!265 = !DILocalVariable(name: "tw", scope: !259, file: !8, line: 31, type: !10)
!266 = !DILocalVariable(name: "twk", scope: !259, file: !8, line: 31, type: !10)
!267 = !DILocation(line: 35, column: 2, scope: !259)
!268 = !DILocation(line: 35, column: 14, scope: !259)
!269 = !DILocation(line: 35, column: 17, scope: !259)
!270 = !DILocation(line: 38, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !259, file: !8, line: 35, column: 22)
!272 = !DILocalVariable(name: "c", scope: !271, file: !8, line: 36, type: !10)
!273 = !DILocation(line: 0, scope: !271)
!274 = !DILocation(line: 39, column: 7, scope: !271)
!275 = !DILocalVariable(name: "w", scope: !271, file: !8, line: 36, type: !10)
!276 = !DILocation(line: 40, column: 8, scope: !271)
!277 = !DILocation(line: 41, column: 16, scope: !271)
!278 = !DILocation(line: 41, column: 9, scope: !271)
!279 = distinct !{!279, !267, !280, !90}
!280 = !DILocation(line: 42, column: 2, scope: !259)
!281 = !DILocation(line: 43, column: 14, scope: !259)
!282 = !DILocation(line: 43, column: 22, scope: !259)
!283 = !DILocation(line: 43, column: 20, scope: !259)
!284 = !DILocation(line: 43, column: 2, scope: !259)
!285 = distinct !DISubprogram(name: "EQ", scope: !93, file: !93, line: 779, type: !286, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!286 = !DISubroutineType(types: !287)
!287 = !{!10, !10, !10}
!288 = !DILocalVariable(name: "x", arg: 1, scope: !285, file: !93, line: 779, type: !10)
!289 = !DILocation(line: 0, scope: !285)
!290 = !DILocalVariable(name: "y", arg: 2, scope: !285, file: !93, line: 779, type: !10)
!291 = !DILocation(line: 783, column: 8, scope: !285)
!292 = !DILocalVariable(name: "q", scope: !285, file: !93, line: 781, type: !10)
!293 = !DILocation(line: 784, column: 18, scope: !285)
!294 = !DILocation(line: 784, column: 16, scope: !285)
!295 = !DILocation(line: 784, column: 22, scope: !285)
!296 = !DILocation(line: 784, column: 9, scope: !285)
!297 = !DILocation(line: 784, column: 2, scope: !285)
!298 = distinct !DISubprogram(name: "MUX", scope: !93, file: !93, line: 770, type: !94, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!299 = !DILocalVariable(name: "ctl", arg: 1, scope: !298, file: !93, line: 770, type: !10)
!300 = !DILocation(line: 0, scope: !298)
!301 = !DILocalVariable(name: "x", arg: 2, scope: !298, file: !93, line: 770, type: !10)
!302 = !DILocalVariable(name: "y", arg: 3, scope: !298, file: !93, line: 770, type: !10)
!303 = !DILocation(line: 772, column: 14, scope: !298)
!304 = !DILocation(line: 772, column: 24, scope: !298)
!305 = !DILocation(line: 772, column: 19, scope: !298)
!306 = !DILocation(line: 772, column: 11, scope: !298)
!307 = !DILocation(line: 772, column: 2, scope: !298)
!308 = distinct !DISubprogram(name: "BIT_LENGTH", scope: !93, file: !93, line: 915, type: !309, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!309 = !DISubroutineType(types: !310)
!310 = !{!10, !10}
!311 = !DILocalVariable(name: "x", arg: 1, scope: !308, file: !93, line: 915, type: !10)
!312 = !DILocation(line: 0, scope: !308)
!313 = !DILocation(line: 919, column: 6, scope: !308)
!314 = !DILocalVariable(name: "k", scope: !308, file: !93, line: 917, type: !10)
!315 = !DILocation(line: 920, column: 6, scope: !308)
!316 = !DILocalVariable(name: "c", scope: !308, file: !93, line: 917, type: !10)
!317 = !DILocation(line: 920, column: 34, scope: !308)
!318 = !DILocation(line: 920, column: 25, scope: !308)
!319 = !DILocation(line: 920, column: 52, scope: !308)
!320 = !DILocation(line: 920, column: 47, scope: !308)
!321 = !DILocation(line: 921, column: 6, scope: !308)
!322 = !DILocation(line: 921, column: 34, scope: !308)
!323 = !DILocation(line: 921, column: 25, scope: !308)
!324 = !DILocation(line: 921, column: 52, scope: !308)
!325 = !DILocation(line: 921, column: 47, scope: !308)
!326 = !DILocation(line: 922, column: 6, scope: !308)
!327 = !DILocation(line: 922, column: 34, scope: !308)
!328 = !DILocation(line: 922, column: 25, scope: !308)
!329 = !DILocation(line: 922, column: 52, scope: !308)
!330 = !DILocation(line: 922, column: 47, scope: !308)
!331 = !DILocation(line: 923, column: 6, scope: !308)
!332 = !DILocation(line: 923, column: 34, scope: !308)
!333 = !DILocation(line: 923, column: 25, scope: !308)
!334 = !DILocation(line: 923, column: 52, scope: !308)
!335 = !DILocation(line: 923, column: 47, scope: !308)
!336 = !DILocation(line: 924, column: 7, scope: !308)
!337 = !DILocation(line: 924, column: 4, scope: !308)
!338 = !DILocation(line: 925, column: 2, scope: !308)
!339 = distinct !DISubprogram(name: "NEQ", scope: !93, file: !93, line: 791, type: !286, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!340 = !DILocalVariable(name: "x", arg: 1, scope: !339, file: !93, line: 791, type: !10)
!341 = !DILocation(line: 0, scope: !339)
!342 = !DILocalVariable(name: "y", arg: 2, scope: !339, file: !93, line: 791, type: !10)
!343 = !DILocation(line: 795, column: 8, scope: !339)
!344 = !DILocalVariable(name: "q", scope: !339, file: !93, line: 793, type: !10)
!345 = !DILocation(line: 796, column: 14, scope: !339)
!346 = !DILocation(line: 796, column: 12, scope: !339)
!347 = !DILocation(line: 796, column: 18, scope: !339)
!348 = !DILocation(line: 796, column: 2, scope: !339)
!349 = distinct !DISubprogram(name: "GT", scope: !93, file: !93, line: 803, type: !286, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!350 = !DILocalVariable(name: "x", arg: 1, scope: !349, file: !93, line: 803, type: !10)
!351 = !DILocation(line: 0, scope: !349)
!352 = !DILocalVariable(name: "y", arg: 2, scope: !349, file: !93, line: 803, type: !10)
!353 = !DILocation(line: 819, column: 8, scope: !349)
!354 = !DILocalVariable(name: "z", scope: !349, file: !93, line: 817, type: !10)
!355 = !DILocation(line: 820, column: 18, scope: !349)
!356 = !DILocation(line: 820, column: 28, scope: !349)
!357 = !DILocation(line: 820, column: 23, scope: !349)
!358 = !DILocation(line: 820, column: 12, scope: !349)
!359 = !DILocation(line: 820, column: 35, scope: !349)
!360 = !DILocation(line: 820, column: 2, scope: !349)
!361 = distinct !DISubprogram(name: "NOT", scope: !93, file: !93, line: 761, type: !309, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!362 = !DILocalVariable(name: "ctl", arg: 1, scope: !361, file: !93, line: 761, type: !10)
!363 = !DILocation(line: 0, scope: !361)
!364 = !DILocation(line: 763, column: 13, scope: !361)
!365 = !DILocation(line: 763, column: 2, scope: !361)
!366 = distinct !DISubprogram(name: "br_i15_decode", scope: !16, file: !16, line: 29, type: !367, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !2)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !206, !64, !31}
!369 = !DILocalVariable(name: "x", arg: 1, scope: !366, file: !16, line: 29, type: !206)
!370 = !DILocation(line: 0, scope: !366)
!371 = !DILocalVariable(name: "src", arg: 2, scope: !366, file: !16, line: 29, type: !64)
!372 = !DILocalVariable(name: "len", arg: 3, scope: !366, file: !16, line: 29, type: !31)
!373 = !DILocalVariable(name: "buf", scope: !366, file: !16, line: 31, type: !73)
!374 = !DILocalVariable(name: "v", scope: !366, file: !16, line: 32, type: !31)
!375 = !DILocalVariable(name: "acc", scope: !366, file: !16, line: 33, type: !10)
!376 = !DILocalVariable(name: "acc_len", scope: !366, file: !16, line: 34, type: !377)
!377 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!378 = !DILocation(line: 40, column: 2, scope: !366)
!379 = !DILocation(line: 40, column: 13, scope: !366)
!380 = !DILocation(line: 40, column: 16, scope: !366)
!381 = !DILocation(line: 43, column: 7, scope: !382)
!382 = distinct !DILexicalBlock(scope: !366, file: !16, line: 40, column: 21)
!383 = !DILocalVariable(name: "b", scope: !382, file: !16, line: 41, type: !10)
!384 = !DILocation(line: 0, scope: !382)
!385 = !DILocation(line: 44, column: 13, scope: !382)
!386 = !DILocation(line: 44, column: 7, scope: !382)
!387 = !DILocation(line: 45, column: 11, scope: !382)
!388 = !DILocation(line: 46, column: 15, scope: !389)
!389 = distinct !DILexicalBlock(scope: !382, file: !16, line: 46, column: 7)
!390 = !DILocation(line: 46, column: 7, scope: !382)
!391 = !DILocation(line: 47, column: 18, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !16, line: 46, column: 22)
!393 = !DILocation(line: 47, column: 14, scope: !392)
!394 = !DILocation(line: 47, column: 8, scope: !392)
!395 = !DILocation(line: 47, column: 4, scope: !392)
!396 = !DILocation(line: 47, column: 12, scope: !392)
!397 = !DILocation(line: 48, column: 12, scope: !392)
!398 = !DILocation(line: 49, column: 8, scope: !392)
!399 = !DILocation(line: 50, column: 3, scope: !392)
!400 = distinct !{!400, !378, !401, !90}
!401 = !DILocation(line: 51, column: 2, scope: !366)
!402 = !DILocation(line: 52, column: 14, scope: !403)
!403 = distinct !DILexicalBlock(scope: !366, file: !16, line: 52, column: 6)
!404 = !DILocation(line: 52, column: 6, scope: !366)
!405 = !DILocation(line: 53, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !16, line: 52, column: 20)
!407 = !DILocation(line: 53, column: 7, scope: !406)
!408 = !DILocation(line: 53, column: 3, scope: !406)
!409 = !DILocation(line: 53, column: 11, scope: !406)
!410 = !DILocation(line: 54, column: 2, scope: !406)
!411 = !DILocation(line: 55, column: 29, scope: !366)
!412 = !DILocation(line: 55, column: 36, scope: !366)
!413 = !DILocation(line: 55, column: 9, scope: !366)
!414 = !DILocation(line: 55, column: 2, scope: !366)
!415 = !DILocation(line: 55, column: 7, scope: !366)
!416 = !DILocation(line: 56, column: 1, scope: !366)
!417 = distinct !DISubprogram(name: "br_i15_decode_reduce", scope: !18, file: !18, line: 29, type: !418, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !2)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !206, !64, !31, !210}
!420 = !DILocalVariable(name: "x", arg: 1, scope: !417, file: !18, line: 29, type: !206)
!421 = !DILocation(line: 0, scope: !417)
!422 = !DILocalVariable(name: "src", arg: 2, scope: !417, file: !18, line: 30, type: !64)
!423 = !DILocalVariable(name: "len", arg: 3, scope: !417, file: !18, line: 30, type: !31)
!424 = !DILocalVariable(name: "m", arg: 4, scope: !417, file: !18, line: 30, type: !210)
!425 = !DILocation(line: 41, column: 14, scope: !417)
!426 = !DILocalVariable(name: "m_ebitlen", scope: !417, file: !18, line: 32, type: !10)
!427 = !DILocation(line: 46, column: 16, scope: !428)
!428 = distinct !DILexicalBlock(scope: !417, file: !18, line: 46, column: 6)
!429 = !DILocation(line: 46, column: 6, scope: !417)
!430 = !DILocation(line: 47, column: 3, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !18, line: 46, column: 22)
!432 = !DILocation(line: 47, column: 8, scope: !431)
!433 = !DILocation(line: 48, column: 3, scope: !431)
!434 = !DILocation(line: 54, column: 17, scope: !417)
!435 = !DILocation(line: 54, column: 2, scope: !417)
!436 = !DILocation(line: 60, column: 24, scope: !417)
!437 = !DILocalVariable(name: "m_rbitlen", scope: !417, file: !18, line: 32, type: !10)
!438 = !DILocation(line: 61, column: 25, scope: !417)
!439 = !DILocation(line: 61, column: 44, scope: !417)
!440 = !DILocation(line: 61, column: 31, scope: !417)
!441 = !DILocation(line: 61, column: 50, scope: !417)
!442 = !DILocation(line: 62, column: 21, scope: !417)
!443 = !DILocation(line: 62, column: 26, scope: !417)
!444 = !DILocation(line: 62, column: 10, scope: !417)
!445 = !DILocalVariable(name: "mblen", scope: !417, file: !18, line: 33, type: !31)
!446 = !DILocation(line: 63, column: 12, scope: !417)
!447 = !DILocalVariable(name: "k", scope: !417, file: !18, line: 33, type: !31)
!448 = !DILocation(line: 64, column: 8, scope: !449)
!449 = distinct !DILexicalBlock(scope: !417, file: !18, line: 64, column: 6)
!450 = !DILocation(line: 64, column: 6, scope: !417)
!451 = !DILocation(line: 65, column: 3, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !18, line: 64, column: 16)
!453 = !DILocation(line: 66, column: 10, scope: !452)
!454 = !DILocation(line: 66, column: 3, scope: !452)
!455 = !DILocation(line: 66, column: 8, scope: !452)
!456 = !DILocation(line: 67, column: 3, scope: !452)
!457 = !DILocalVariable(name: "buf", scope: !417, file: !18, line: 34, type: !73)
!458 = !DILocation(line: 70, column: 2, scope: !417)
!459 = !DILocation(line: 71, column: 9, scope: !417)
!460 = !DILocation(line: 71, column: 2, scope: !417)
!461 = !DILocation(line: 71, column: 7, scope: !417)
!462 = !DILocalVariable(name: "acc", scope: !417, file: !18, line: 35, type: !10)
!463 = !DILocalVariable(name: "acc_len", scope: !417, file: !18, line: 36, type: !377)
!464 = !DILocation(line: 78, column: 2, scope: !417)
!465 = !DILocation(line: 78, column: 11, scope: !417)
!466 = !DILocation(line: 81, column: 13, scope: !467)
!467 = distinct !DILexicalBlock(scope: !417, file: !18, line: 78, column: 18)
!468 = !DILocation(line: 81, column: 7, scope: !467)
!469 = !DILocalVariable(name: "v", scope: !467, file: !18, line: 79, type: !10)
!470 = !DILocation(line: 0, scope: !467)
!471 = !DILocation(line: 82, column: 14, scope: !467)
!472 = !DILocation(line: 82, column: 20, scope: !467)
!473 = !DILocation(line: 83, column: 11, scope: !467)
!474 = !DILocation(line: 84, column: 15, scope: !475)
!475 = distinct !DILexicalBlock(scope: !467, file: !18, line: 84, column: 7)
!476 = !DILocation(line: 84, column: 7, scope: !467)
!477 = !DILocation(line: 85, column: 43, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !18, line: 84, column: 22)
!479 = !DILocation(line: 85, column: 31, scope: !478)
!480 = !DILocation(line: 85, column: 27, scope: !478)
!481 = !DILocation(line: 85, column: 4, scope: !478)
!482 = !DILocation(line: 86, column: 12, scope: !478)
!483 = !DILocation(line: 87, column: 26, scope: !478)
!484 = !DILocation(line: 87, column: 11, scope: !478)
!485 = !DILocation(line: 87, column: 8, scope: !478)
!486 = !DILocation(line: 88, column: 3, scope: !478)
!487 = distinct !{!487, !464, !488, !90}
!488 = !DILocation(line: 89, column: 2, scope: !417)
!489 = !DILocation(line: 95, column: 14, scope: !490)
!490 = distinct !DILexicalBlock(scope: !417, file: !18, line: 95, column: 6)
!491 = !DILocation(line: 95, column: 6, scope: !417)
!492 = !DILocation(line: 96, column: 17, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !18, line: 95, column: 20)
!494 = !DILocation(line: 96, column: 22, scope: !493)
!495 = !DILocation(line: 96, column: 14, scope: !493)
!496 = !DILocation(line: 96, column: 35, scope: !493)
!497 = !DILocation(line: 97, column: 23, scope: !493)
!498 = !DILocation(line: 97, column: 3, scope: !493)
!499 = !DILocation(line: 98, column: 26, scope: !493)
!500 = !DILocation(line: 98, column: 3, scope: !493)
!501 = !DILocation(line: 99, column: 2, scope: !493)
!502 = !DILocation(line: 100, column: 1, scope: !417)
!503 = distinct !DISubprogram(name: "br_i15_zero", scope: !93, file: !93, line: 1537, type: !504, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !2)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !206, !207}
!506 = !DILocalVariable(name: "x", arg: 1, scope: !503, file: !93, line: 1537, type: !206)
!507 = !DILocation(line: 0, scope: !503)
!508 = !DILocalVariable(name: "bit_len", arg: 2, scope: !503, file: !93, line: 1537, type: !207)
!509 = !DILocation(line: 1539, column: 5, scope: !503)
!510 = !DILocation(line: 1539, column: 8, scope: !503)
!511 = !DILocation(line: 1540, column: 2, scope: !503)
!512 = !DILocation(line: 1540, column: 17, scope: !503)
!513 = !DILocation(line: 1540, column: 25, scope: !503)
!514 = !DILocation(line: 1540, column: 31, scope: !503)
!515 = !DILocation(line: 1540, column: 15, scope: !503)
!516 = !DILocation(line: 1540, column: 37, scope: !503)
!517 = !DILocation(line: 1541, column: 1, scope: !503)
!518 = distinct !DISubprogram(name: "br_i15_encode", scope: !20, file: !20, line: 29, type: !519, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !2)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !39, !31, !210}
!521 = !DILocalVariable(name: "dst", arg: 1, scope: !518, file: !20, line: 29, type: !39)
!522 = !DILocation(line: 0, scope: !518)
!523 = !DILocalVariable(name: "len", arg: 2, scope: !518, file: !20, line: 29, type: !31)
!524 = !DILocalVariable(name: "x", arg: 3, scope: !518, file: !20, line: 29, type: !210)
!525 = !DILocation(line: 36, column: 10, scope: !518)
!526 = !DILocation(line: 36, column: 15, scope: !518)
!527 = !DILocation(line: 36, column: 21, scope: !518)
!528 = !DILocation(line: 36, column: 9, scope: !518)
!529 = !DILocalVariable(name: "xlen", scope: !518, file: !20, line: 32, type: !31)
!530 = !DILocation(line: 37, column: 11, scope: !531)
!531 = distinct !DILexicalBlock(scope: !518, file: !20, line: 37, column: 6)
!532 = !DILocation(line: 37, column: 6, scope: !518)
!533 = !DILocation(line: 38, column: 3, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !20, line: 37, column: 17)
!535 = !DILocation(line: 39, column: 3, scope: !534)
!536 = !DILocalVariable(name: "u", scope: !518, file: !20, line: 32, type: !31)
!537 = !DILocalVariable(name: "acc", scope: !518, file: !20, line: 33, type: !10)
!538 = !DILocalVariable(name: "acc_len", scope: !518, file: !20, line: 34, type: !377)
!539 = !DILocalVariable(name: "buf", scope: !518, file: !20, line: 31, type: !56)
!540 = !DILocation(line: 45, column: 2, scope: !518)
!541 = !DILocation(line: 45, column: 13, scope: !518)
!542 = !DILocation(line: 45, column: 16, scope: !518)
!543 = !DILocation(line: 46, column: 15, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !20, line: 46, column: 7)
!545 = distinct !DILexicalBlock(scope: !518, file: !20, line: 45, column: 21)
!546 = !DILocation(line: 46, column: 7, scope: !545)
!547 = !DILocation(line: 47, column: 10, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !20, line: 47, column: 8)
!549 = distinct !DILexicalBlock(scope: !544, file: !20, line: 46, column: 20)
!550 = !DILocation(line: 47, column: 8, scope: !549)
!551 = !DILocation(line: 48, column: 26, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !20, line: 47, column: 19)
!553 = !DILocation(line: 48, column: 22, scope: !552)
!554 = !DILocation(line: 48, column: 12, scope: !552)
!555 = !DILocation(line: 48, column: 30, scope: !552)
!556 = !DILocation(line: 48, column: 9, scope: !552)
!557 = !DILocation(line: 49, column: 4, scope: !552)
!558 = !DILocation(line: 50, column: 12, scope: !549)
!559 = !DILocation(line: 51, column: 3, scope: !549)
!560 = !DILocation(line: 52, column: 14, scope: !545)
!561 = !DILocation(line: 52, column: 3, scope: !545)
!562 = !DILocation(line: 52, column: 12, scope: !545)
!563 = !DILocation(line: 53, column: 7, scope: !545)
!564 = !DILocation(line: 54, column: 11, scope: !545)
!565 = distinct !{!565, !540, !566, !90}
!566 = !DILocation(line: 55, column: 2, scope: !518)
!567 = !DILocation(line: 56, column: 1, scope: !518)
!568 = distinct !DISubprogram(name: "br_i15_from_monty", scope: !24, file: !24, line: 29, type: !569, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !2)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !206, !210, !207}
!571 = !DILocalVariable(name: "x", arg: 1, scope: !568, file: !24, line: 29, type: !206)
!572 = !DILocation(line: 0, scope: !568)
!573 = !DILocalVariable(name: "m", arg: 2, scope: !568, file: !24, line: 29, type: !210)
!574 = !DILocalVariable(name: "m0i", arg: 3, scope: !568, file: !24, line: 29, type: !207)
!575 = !DILocation(line: 33, column: 9, scope: !568)
!576 = !DILocation(line: 33, column: 14, scope: !568)
!577 = !DILocation(line: 33, column: 20, scope: !568)
!578 = !DILocation(line: 33, column: 8, scope: !568)
!579 = !DILocalVariable(name: "len", scope: !568, file: !24, line: 31, type: !31)
!580 = !DILocalVariable(name: "u", scope: !568, file: !24, line: 31, type: !31)
!581 = !DILocation(line: 34, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !568, file: !24, line: 34, column: 2)
!583 = !DILocation(line: 0, scope: !582)
!584 = !DILocation(line: 34, column: 16, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !24, line: 34, column: 2)
!586 = !DILocation(line: 34, column: 2, scope: !582)
!587 = !DILocation(line: 37, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !585, file: !24, line: 34, column: 29)
!589 = !DILocation(line: 37, column: 24, scope: !588)
!590 = !DILocalVariable(name: "f", scope: !588, file: !24, line: 35, type: !10)
!591 = !DILocation(line: 0, scope: !588)
!592 = !DILocalVariable(name: "cc", scope: !588, file: !24, line: 35, type: !10)
!593 = !DILocalVariable(name: "v", scope: !568, file: !24, line: 31, type: !31)
!594 = !DILocation(line: 39, column: 8, scope: !595)
!595 = distinct !DILexicalBlock(scope: !588, file: !24, line: 39, column: 3)
!596 = !DILocation(line: 0, scope: !595)
!597 = !DILocation(line: 39, column: 17, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !24, line: 39, column: 3)
!599 = !DILocation(line: 39, column: 3, scope: !595)
!600 = !DILocation(line: 42, column: 22, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !24, line: 39, column: 30)
!602 = !DILocation(line: 42, column: 18, scope: !601)
!603 = !DILocation(line: 42, column: 8, scope: !601)
!604 = !DILocation(line: 42, column: 29, scope: !601)
!605 = !DILocation(line: 42, column: 27, scope: !601)
!606 = !DILocation(line: 42, column: 48, scope: !601)
!607 = !DILocalVariable(name: "z", scope: !601, file: !24, line: 40, type: !10)
!608 = !DILocation(line: 0, scope: !601)
!609 = !DILocation(line: 43, column: 11, scope: !601)
!610 = !DILocation(line: 44, column: 10, scope: !611)
!611 = distinct !DILexicalBlock(scope: !601, file: !24, line: 44, column: 8)
!612 = !DILocation(line: 44, column: 8, scope: !601)
!613 = !DILocation(line: 45, column: 14, scope: !614)
!614 = distinct !DILexicalBlock(scope: !611, file: !24, line: 44, column: 16)
!615 = !DILocation(line: 45, column: 12, scope: !614)
!616 = !DILocation(line: 45, column: 5, scope: !614)
!617 = !DILocation(line: 45, column: 10, scope: !614)
!618 = !DILocation(line: 46, column: 4, scope: !614)
!619 = !DILocation(line: 47, column: 3, scope: !601)
!620 = !DILocation(line: 39, column: 26, scope: !598)
!621 = !DILocation(line: 39, column: 3, scope: !598)
!622 = distinct !{!622, !599, !623, !90}
!623 = !DILocation(line: 47, column: 3, scope: !595)
!624 = !DILocation(line: 48, column: 12, scope: !588)
!625 = !DILocation(line: 48, column: 3, scope: !588)
!626 = !DILocation(line: 48, column: 10, scope: !588)
!627 = !DILocation(line: 49, column: 2, scope: !588)
!628 = !DILocation(line: 34, column: 25, scope: !585)
!629 = !DILocation(line: 34, column: 2, scope: !585)
!630 = distinct !{!630, !586, !631, !90}
!631 = !DILocation(line: 49, column: 2, scope: !582)
!632 = !DILocation(line: 58, column: 23, scope: !568)
!633 = !DILocation(line: 58, column: 19, scope: !568)
!634 = !DILocation(line: 58, column: 2, scope: !568)
!635 = !DILocation(line: 59, column: 1, scope: !568)
!636 = distinct !DISubprogram(name: "NOT", scope: !93, file: !93, line: 761, type: !309, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!637 = !DILocalVariable(name: "ctl", arg: 1, scope: !636, file: !93, line: 761, type: !10)
!638 = !DILocation(line: 0, scope: !636)
!639 = !DILocation(line: 763, column: 13, scope: !636)
!640 = !DILocation(line: 763, column: 2, scope: !636)
!641 = distinct !DISubprogram(name: "br_i15_modpow_opt", scope: !26, file: !26, line: 29, type: !642, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !2)
!642 = !DISubroutineType(types: !643)
!643 = !{!10, !206, !73, !31, !210, !207, !206, !31}
!644 = !DILocalVariable(name: "x", arg: 1, scope: !641, file: !26, line: 29, type: !206)
!645 = !DILocation(line: 0, scope: !641)
!646 = !DILocalVariable(name: "e", arg: 2, scope: !641, file: !26, line: 30, type: !73)
!647 = !DILocalVariable(name: "elen", arg: 3, scope: !641, file: !26, line: 30, type: !31)
!648 = !DILocalVariable(name: "m", arg: 4, scope: !641, file: !26, line: 31, type: !210)
!649 = !DILocalVariable(name: "m0i", arg: 5, scope: !641, file: !26, line: 31, type: !207)
!650 = !DILocalVariable(name: "tmp", arg: 6, scope: !641, file: !26, line: 31, type: !206)
!651 = !DILocalVariable(name: "twlen", arg: 7, scope: !641, file: !26, line: 31, type: !31)
!652 = !DILocation(line: 42, column: 11, scope: !641)
!653 = !DILocation(line: 42, column: 16, scope: !641)
!654 = !DILocation(line: 42, column: 22, scope: !641)
!655 = !DILocation(line: 42, column: 10, scope: !641)
!656 = !DILocalVariable(name: "mwlen", scope: !641, file: !26, line: 33, type: !31)
!657 = !DILocation(line: 43, column: 15, scope: !641)
!658 = !DILocalVariable(name: "mlen", scope: !641, file: !26, line: 33, type: !31)
!659 = !DILocation(line: 44, column: 18, scope: !641)
!660 = !DILocation(line: 44, column: 8, scope: !641)
!661 = !DILocalVariable(name: "t1", scope: !641, file: !26, line: 34, type: !206)
!662 = !DILocation(line: 46, column: 11, scope: !641)
!663 = !DILocalVariable(name: "t2", scope: !641, file: !26, line: 34, type: !206)
!664 = !DILocation(line: 54, column: 21, scope: !665)
!665 = distinct !DILexicalBlock(scope: !641, file: !26, line: 54, column: 6)
!666 = !DILocation(line: 54, column: 12, scope: !665)
!667 = !DILocation(line: 54, column: 6, scope: !641)
!668 = !DILocation(line: 55, column: 3, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !26, line: 54, column: 28)
!670 = !DILocalVariable(name: "win_len", scope: !641, file: !26, line: 37, type: !377)
!671 = !DILocation(line: 57, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !641, file: !26, line: 57, column: 2)
!673 = !DILocation(line: 0, scope: !672)
!674 = !DILocation(line: 57, column: 28, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !26, line: 57, column: 2)
!676 = !DILocation(line: 57, column: 2, scope: !672)
!677 = !DILocation(line: 58, column: 21, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !26, line: 58, column: 7)
!679 = distinct !DILexicalBlock(scope: !675, file: !26, line: 57, column: 45)
!680 = !DILocation(line: 58, column: 33, scope: !678)
!681 = !DILocation(line: 58, column: 7, scope: !678)
!682 = !DILocation(line: 58, column: 38, scope: !678)
!683 = !DILocation(line: 58, column: 46, scope: !678)
!684 = !DILocation(line: 58, column: 7, scope: !679)
!685 = !DILocation(line: 59, column: 4, scope: !686)
!686 = distinct !DILexicalBlock(scope: !678, file: !26, line: 58, column: 56)
!687 = !DILocation(line: 61, column: 2, scope: !679)
!688 = !DILocation(line: 57, column: 41, scope: !675)
!689 = !DILocation(line: 57, column: 2, scope: !675)
!690 = distinct !{!690, !676, !691, !90}
!691 = !DILocation(line: 61, column: 2, scope: !672)
!692 = !DILocation(line: 66, column: 2, scope: !641)
!693 = !DILocation(line: 73, column: 14, scope: !694)
!694 = distinct !DILexicalBlock(scope: !641, file: !26, line: 73, column: 6)
!695 = !DILocation(line: 73, column: 6, scope: !641)
!696 = !DILocation(line: 74, column: 3, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !26, line: 73, column: 20)
!698 = !DILocation(line: 75, column: 2, scope: !697)
!699 = !DILocation(line: 76, column: 13, scope: !700)
!700 = distinct !DILexicalBlock(scope: !694, file: !26, line: 75, column: 9)
!701 = !DILocation(line: 76, column: 3, scope: !700)
!702 = !DILocation(line: 77, column: 13, scope: !700)
!703 = !DILocalVariable(name: "base", scope: !641, file: !26, line: 34, type: !206)
!704 = !DILocalVariable(name: "u", scope: !641, file: !26, line: 35, type: !31)
!705 = !DILocation(line: 78, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !700, file: !26, line: 78, column: 3)
!707 = !DILocation(line: 0, scope: !700)
!708 = !DILocation(line: 0, scope: !706)
!709 = !DILocation(line: 78, column: 32, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !26, line: 78, column: 3)
!711 = !DILocation(line: 78, column: 19, scope: !710)
!712 = !DILocation(line: 78, column: 17, scope: !710)
!713 = !DILocation(line: 78, column: 3, scope: !706)
!714 = !DILocation(line: 79, column: 25, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !26, line: 78, column: 51)
!716 = !DILocation(line: 79, column: 4, scope: !715)
!717 = !DILocation(line: 80, column: 9, scope: !715)
!718 = !DILocation(line: 81, column: 3, scope: !715)
!719 = !DILocation(line: 78, column: 47, scope: !710)
!720 = !DILocation(line: 78, column: 3, scope: !710)
!721 = distinct !{!721, !713, !722, !90}
!722 = !DILocation(line: 81, column: 3, scope: !706)
!723 = !DILocation(line: 89, column: 17, scope: !641)
!724 = !DILocation(line: 89, column: 2, scope: !641)
!725 = !DILocation(line: 90, column: 5, scope: !641)
!726 = !DILocation(line: 90, column: 10, scope: !641)
!727 = !DILocation(line: 90, column: 16, scope: !641)
!728 = !DILocation(line: 90, column: 2, scope: !641)
!729 = !DILocation(line: 90, column: 22, scope: !641)
!730 = !DILocation(line: 91, column: 2, scope: !641)
!731 = !DILocalVariable(name: "acc", scope: !641, file: !26, line: 36, type: !10)
!732 = !DILocalVariable(name: "acc_len", scope: !641, file: !26, line: 37, type: !377)
!733 = !DILocation(line: 99, column: 2, scope: !641)
!734 = !DILocation(line: 99, column: 17, scope: !641)
!735 = !DILocation(line: 99, column: 21, scope: !641)
!736 = !DILocation(line: 99, column: 29, scope: !641)
!737 = !DILocalVariable(name: "k", scope: !738, file: !26, line: 100, type: !377)
!738 = distinct !DILexicalBlock(scope: !641, file: !26, line: 99, column: 34)
!739 = !DILocation(line: 0, scope: !738)
!740 = !DILocation(line: 107, column: 15, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !26, line: 107, column: 7)
!742 = !DILocation(line: 107, column: 7, scope: !738)
!743 = !DILocation(line: 108, column: 13, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !26, line: 108, column: 8)
!745 = distinct !DILexicalBlock(scope: !741, file: !26, line: 107, column: 26)
!746 = !DILocation(line: 108, column: 8, scope: !745)
!747 = !DILocation(line: 109, column: 16, scope: !748)
!748 = distinct !DILexicalBlock(scope: !744, file: !26, line: 108, column: 18)
!749 = !DILocation(line: 109, column: 27, scope: !748)
!750 = !DILocation(line: 109, column: 24, scope: !748)
!751 = !DILocation(line: 109, column: 22, scope: !748)
!752 = !DILocation(line: 110, column: 10, scope: !748)
!753 = !DILocation(line: 111, column: 13, scope: !748)
!754 = !DILocation(line: 112, column: 4, scope: !748)
!755 = !DILocation(line: 115, column: 3, scope: !745)
!756 = !DILocation(line: 106, column: 5, scope: !738)
!757 = !DILocation(line: 116, column: 27, scope: !738)
!758 = !DILocation(line: 116, column: 15, scope: !738)
!759 = !DILocation(line: 116, column: 49, scope: !738)
!760 = !DILocation(line: 116, column: 55, scope: !738)
!761 = !DILocation(line: 116, column: 33, scope: !738)
!762 = !DILocalVariable(name: "bits", scope: !738, file: !26, line: 101, type: !10)
!763 = !DILocation(line: 117, column: 11, scope: !738)
!764 = !DILocalVariable(name: "i", scope: !738, file: !26, line: 100, type: !377)
!765 = !DILocation(line: 122, column: 8, scope: !766)
!766 = distinct !DILexicalBlock(scope: !738, file: !26, line: 122, column: 3)
!767 = !DILocation(line: 0, scope: !766)
!768 = !DILocation(line: 122, column: 17, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !26, line: 122, column: 3)
!770 = !DILocation(line: 122, column: 3, scope: !766)
!771 = !DILocation(line: 123, column: 4, scope: !772)
!772 = distinct !DILexicalBlock(scope: !769, file: !26, line: 122, column: 28)
!773 = !DILocation(line: 124, column: 4, scope: !772)
!774 = !DILocation(line: 125, column: 3, scope: !772)
!775 = !DILocation(line: 122, column: 24, scope: !769)
!776 = !DILocation(line: 122, column: 3, scope: !769)
!777 = distinct !{!777, !770, !778, !90}
!778 = !DILocation(line: 125, column: 3, scope: !766)
!779 = !DILocation(line: 133, column: 15, scope: !780)
!780 = distinct !DILexicalBlock(scope: !738, file: !26, line: 133, column: 7)
!781 = !DILocation(line: 133, column: 7, scope: !738)
!782 = !DILocation(line: 134, column: 20, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !26, line: 133, column: 20)
!784 = !DILocation(line: 134, column: 4, scope: !783)
!785 = !DILocation(line: 135, column: 14, scope: !783)
!786 = !DILocation(line: 136, column: 9, scope: !787)
!787 = distinct !DILexicalBlock(scope: !783, file: !26, line: 136, column: 4)
!788 = !DILocation(line: 0, scope: !783)
!789 = !DILocation(line: 0, scope: !787)
!790 = !DILocation(line: 136, column: 33, scope: !791)
!791 = distinct !DILexicalBlock(scope: !787, file: !26, line: 136, column: 4)
!792 = !DILocation(line: 136, column: 20, scope: !791)
!793 = !DILocation(line: 136, column: 18, scope: !791)
!794 = !DILocation(line: 136, column: 4, scope: !787)
!795 = !DILocation(line: 139, column: 16, scope: !796)
!796 = distinct !DILexicalBlock(scope: !791, file: !26, line: 136, column: 46)
!797 = !DILocation(line: 139, column: 13, scope: !796)
!798 = !DILocation(line: 139, column: 12, scope: !796)
!799 = !DILocalVariable(name: "mask", scope: !796, file: !26, line: 137, type: !10)
!800 = !DILocation(line: 0, scope: !796)
!801 = !DILocalVariable(name: "v", scope: !641, file: !26, line: 35, type: !31)
!802 = !DILocation(line: 140, column: 10, scope: !803)
!803 = distinct !DILexicalBlock(scope: !796, file: !26, line: 140, column: 5)
!804 = !DILocation(line: 0, scope: !803)
!805 = !DILocation(line: 140, column: 19, scope: !806)
!806 = distinct !DILexicalBlock(scope: !803, file: !26, line: 140, column: 5)
!807 = !DILocation(line: 140, column: 5, scope: !803)
!808 = !DILocation(line: 141, column: 22, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !26, line: 140, column: 34)
!810 = !DILocation(line: 141, column: 20, scope: !809)
!811 = !DILocation(line: 141, column: 6, scope: !809)
!812 = !DILocation(line: 141, column: 12, scope: !809)
!813 = !DILocation(line: 142, column: 5, scope: !809)
!814 = !DILocation(line: 140, column: 30, scope: !806)
!815 = !DILocation(line: 140, column: 5, scope: !806)
!816 = distinct !{!816, !807, !817, !90}
!817 = !DILocation(line: 142, column: 5, scope: !803)
!818 = !DILocation(line: 143, column: 10, scope: !796)
!819 = !DILocation(line: 144, column: 4, scope: !796)
!820 = !DILocation(line: 136, column: 42, scope: !791)
!821 = !DILocation(line: 136, column: 4, scope: !791)
!822 = distinct !{!822, !794, !823, !90}
!823 = !DILocation(line: 144, column: 4, scope: !787)
!824 = !DILocation(line: 145, column: 3, scope: !783)
!825 = !DILocation(line: 151, column: 3, scope: !738)
!826 = !DILocation(line: 152, column: 9, scope: !738)
!827 = !DILocation(line: 152, column: 23, scope: !738)
!828 = !DILocation(line: 152, column: 26, scope: !738)
!829 = !DILocation(line: 152, column: 3, scope: !738)
!830 = distinct !{!830, !733, !831, !90}
!831 = !DILocation(line: 153, column: 2, scope: !641)
!832 = !DILocation(line: 158, column: 2, scope: !641)
!833 = !DILocation(line: 159, column: 2, scope: !641)
!834 = !DILocation(line: 160, column: 1, scope: !641)
!835 = distinct !DISubprogram(name: "br_i15_zero", scope: !93, file: !93, line: 1537, type: !504, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !25, retainedNodes: !2)
!836 = !DILocalVariable(name: "x", arg: 1, scope: !835, file: !93, line: 1537, type: !206)
!837 = !DILocation(line: 0, scope: !835)
!838 = !DILocalVariable(name: "bit_len", arg: 2, scope: !835, file: !93, line: 1537, type: !207)
!839 = !DILocation(line: 1539, column: 5, scope: !835)
!840 = !DILocation(line: 1539, column: 8, scope: !835)
!841 = !DILocation(line: 1540, column: 2, scope: !835)
!842 = !DILocation(line: 1540, column: 17, scope: !835)
!843 = !DILocation(line: 1540, column: 25, scope: !835)
!844 = !DILocation(line: 1540, column: 31, scope: !835)
!845 = !DILocation(line: 1540, column: 15, scope: !835)
!846 = !DILocation(line: 1540, column: 37, scope: !835)
!847 = !DILocation(line: 1541, column: 1, scope: !835)
!848 = distinct !DISubprogram(name: "EQ", scope: !93, file: !93, line: 779, type: !286, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !25, retainedNodes: !2)
!849 = !DILocalVariable(name: "x", arg: 1, scope: !848, file: !93, line: 779, type: !10)
!850 = !DILocation(line: 0, scope: !848)
!851 = !DILocalVariable(name: "y", arg: 2, scope: !848, file: !93, line: 779, type: !10)
!852 = !DILocation(line: 783, column: 8, scope: !848)
!853 = !DILocalVariable(name: "q", scope: !848, file: !93, line: 781, type: !10)
!854 = !DILocation(line: 784, column: 18, scope: !848)
!855 = !DILocation(line: 784, column: 16, scope: !848)
!856 = !DILocation(line: 784, column: 22, scope: !848)
!857 = !DILocation(line: 784, column: 9, scope: !848)
!858 = !DILocation(line: 784, column: 2, scope: !848)
!859 = distinct !DISubprogram(name: "NEQ", scope: !93, file: !93, line: 791, type: !286, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !25, retainedNodes: !2)
!860 = !DILocalVariable(name: "x", arg: 1, scope: !859, file: !93, line: 791, type: !10)
!861 = !DILocation(line: 0, scope: !859)
!862 = !DILocalVariable(name: "y", arg: 2, scope: !859, file: !93, line: 791, type: !10)
!863 = !DILocation(line: 795, column: 8, scope: !859)
!864 = !DILocalVariable(name: "q", scope: !859, file: !93, line: 793, type: !10)
!865 = !DILocation(line: 796, column: 14, scope: !859)
!866 = !DILocation(line: 796, column: 12, scope: !859)
!867 = !DILocation(line: 796, column: 18, scope: !859)
!868 = !DILocation(line: 796, column: 2, scope: !859)
!869 = distinct !DISubprogram(name: "NOT", scope: !93, file: !93, line: 761, type: !309, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !25, retainedNodes: !2)
!870 = !DILocalVariable(name: "ctl", arg: 1, scope: !869, file: !93, line: 761, type: !10)
!871 = !DILocation(line: 0, scope: !869)
!872 = !DILocation(line: 763, column: 13, scope: !869)
!873 = !DILocation(line: 763, column: 2, scope: !869)
!874 = distinct !DISubprogram(name: "br_i15_montymul", scope: !29, file: !29, line: 29, type: !875, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !2)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !206, !210, !210, !210, !207}
!877 = !DILocalVariable(name: "d", arg: 1, scope: !874, file: !29, line: 29, type: !206)
!878 = !DILocation(line: 0, scope: !874)
!879 = !DILocalVariable(name: "x", arg: 2, scope: !874, file: !29, line: 29, type: !210)
!880 = !DILocalVariable(name: "y", arg: 3, scope: !874, file: !29, line: 29, type: !210)
!881 = !DILocalVariable(name: "m", arg: 4, scope: !874, file: !29, line: 30, type: !210)
!882 = !DILocalVariable(name: "m0i", arg: 5, scope: !874, file: !29, line: 30, type: !207)
!883 = !DILocation(line: 35, column: 9, scope: !874)
!884 = !DILocation(line: 35, column: 14, scope: !874)
!885 = !DILocation(line: 35, column: 20, scope: !874)
!886 = !DILocation(line: 35, column: 8, scope: !874)
!887 = !DILocalVariable(name: "len", scope: !874, file: !29, line: 32, type: !31)
!888 = !DILocation(line: 36, column: 13, scope: !874)
!889 = !DILocalVariable(name: "len4", scope: !874, file: !29, line: 32, type: !31)
!890 = !DILocation(line: 37, column: 17, scope: !874)
!891 = !DILocation(line: 37, column: 2, scope: !874)
!892 = !DILocalVariable(name: "dh", scope: !874, file: !29, line: 33, type: !10)
!893 = !DILocalVariable(name: "u", scope: !874, file: !29, line: 32, type: !31)
!894 = !DILocation(line: 39, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !874, file: !29, line: 39, column: 2)
!896 = !DILocation(line: 0, scope: !895)
!897 = !DILocation(line: 39, column: 16, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !29, line: 39, column: 2)
!899 = !DILocation(line: 39, column: 2, scope: !895)
!900 = !DILocation(line: 42, column: 12, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !29, line: 39, column: 29)
!902 = !DILocation(line: 42, column: 8, scope: !901)
!903 = !DILocalVariable(name: "xu", scope: !901, file: !29, line: 40, type: !10)
!904 = !DILocation(line: 0, scope: !901)
!905 = !DILocation(line: 43, column: 7, scope: !901)
!906 = !DILocation(line: 44, column: 4, scope: !901)
!907 = !DILocalVariable(name: "f", scope: !901, file: !29, line: 40, type: !10)
!908 = !DILocalVariable(name: "r", scope: !901, file: !29, line: 40, type: !10)
!909 = !DILocalVariable(name: "v", scope: !874, file: !29, line: 32, type: !31)
!910 = !DILocation(line: 139, column: 8, scope: !911)
!911 = distinct !DILexicalBlock(scope: !901, file: !29, line: 139, column: 3)
!912 = !DILocation(line: 0, scope: !911)
!913 = !DILocation(line: 139, column: 17, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !29, line: 139, column: 3)
!915 = !DILocation(line: 139, column: 3, scope: !911)
!916 = !DILocation(line: 142, column: 12, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !29, line: 139, column: 33)
!918 = !DILocation(line: 142, column: 8, scope: !917)
!919 = !DILocation(line: 142, column: 19, scope: !917)
!920 = !DILocation(line: 142, column: 17, scope: !917)
!921 = !DILocation(line: 143, column: 7, scope: !917)
!922 = !DILocation(line: 143, column: 5, scope: !917)
!923 = !DILocation(line: 143, column: 26, scope: !917)
!924 = !DILocalVariable(name: "z", scope: !917, file: !29, line: 140, type: !10)
!925 = !DILocation(line: 0, scope: !917)
!926 = !DILocation(line: 144, column: 10, scope: !917)
!927 = !DILocation(line: 145, column: 17, scope: !917)
!928 = !DILocation(line: 145, column: 15, scope: !917)
!929 = !DILocation(line: 145, column: 8, scope: !917)
!930 = !DILocation(line: 145, column: 4, scope: !917)
!931 = !DILocation(line: 145, column: 13, scope: !917)
!932 = !DILocation(line: 146, column: 12, scope: !917)
!933 = !DILocation(line: 146, column: 8, scope: !917)
!934 = !DILocation(line: 146, column: 19, scope: !917)
!935 = !DILocation(line: 146, column: 17, scope: !917)
!936 = !DILocation(line: 147, column: 7, scope: !917)
!937 = !DILocation(line: 147, column: 5, scope: !917)
!938 = !DILocation(line: 147, column: 26, scope: !917)
!939 = !DILocation(line: 148, column: 10, scope: !917)
!940 = !DILocation(line: 149, column: 17, scope: !917)
!941 = !DILocation(line: 149, column: 15, scope: !917)
!942 = !DILocation(line: 149, column: 8, scope: !917)
!943 = !DILocation(line: 149, column: 4, scope: !917)
!944 = !DILocation(line: 149, column: 13, scope: !917)
!945 = !DILocation(line: 150, column: 12, scope: !917)
!946 = !DILocation(line: 150, column: 8, scope: !917)
!947 = !DILocation(line: 150, column: 19, scope: !917)
!948 = !DILocation(line: 150, column: 17, scope: !917)
!949 = !DILocation(line: 151, column: 7, scope: !917)
!950 = !DILocation(line: 151, column: 5, scope: !917)
!951 = !DILocation(line: 151, column: 26, scope: !917)
!952 = !DILocation(line: 152, column: 10, scope: !917)
!953 = !DILocation(line: 153, column: 17, scope: !917)
!954 = !DILocation(line: 153, column: 15, scope: !917)
!955 = !DILocation(line: 153, column: 8, scope: !917)
!956 = !DILocation(line: 153, column: 4, scope: !917)
!957 = !DILocation(line: 153, column: 13, scope: !917)
!958 = !DILocation(line: 154, column: 12, scope: !917)
!959 = !DILocation(line: 154, column: 8, scope: !917)
!960 = !DILocation(line: 154, column: 19, scope: !917)
!961 = !DILocation(line: 154, column: 17, scope: !917)
!962 = !DILocation(line: 155, column: 7, scope: !917)
!963 = !DILocation(line: 155, column: 5, scope: !917)
!964 = !DILocation(line: 155, column: 26, scope: !917)
!965 = !DILocation(line: 156, column: 10, scope: !917)
!966 = !DILocation(line: 157, column: 17, scope: !917)
!967 = !DILocation(line: 157, column: 15, scope: !917)
!968 = !DILocation(line: 157, column: 8, scope: !917)
!969 = !DILocation(line: 157, column: 4, scope: !917)
!970 = !DILocation(line: 157, column: 13, scope: !917)
!971 = !DILocation(line: 158, column: 3, scope: !917)
!972 = !DILocation(line: 139, column: 27, scope: !914)
!973 = !DILocation(line: 139, column: 3, scope: !914)
!974 = distinct !{!974, !915, !975, !90}
!975 = !DILocation(line: 158, column: 3, scope: !911)
!976 = !DILocation(line: 160, column: 3, scope: !901)
!977 = !DILocation(line: 160, column: 12, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !29, line: 160, column: 3)
!979 = distinct !DILexicalBlock(scope: !901, file: !29, line: 160, column: 3)
!980 = !DILocation(line: 160, column: 3, scope: !979)
!981 = !DILocation(line: 163, column: 12, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !29, line: 160, column: 25)
!983 = !DILocation(line: 163, column: 8, scope: !982)
!984 = !DILocation(line: 163, column: 19, scope: !982)
!985 = !DILocation(line: 163, column: 17, scope: !982)
!986 = !DILocation(line: 164, column: 7, scope: !982)
!987 = !DILocation(line: 164, column: 5, scope: !982)
!988 = !DILocation(line: 164, column: 26, scope: !982)
!989 = !DILocalVariable(name: "z", scope: !982, file: !29, line: 161, type: !10)
!990 = !DILocation(line: 0, scope: !982)
!991 = !DILocation(line: 165, column: 10, scope: !982)
!992 = !DILocation(line: 166, column: 17, scope: !982)
!993 = !DILocation(line: 166, column: 15, scope: !982)
!994 = !DILocation(line: 166, column: 8, scope: !982)
!995 = !DILocation(line: 166, column: 4, scope: !982)
!996 = !DILocation(line: 166, column: 13, scope: !982)
!997 = !DILocation(line: 167, column: 3, scope: !982)
!998 = !DILocation(line: 160, column: 21, scope: !978)
!999 = !DILocation(line: 160, column: 3, scope: !978)
!1000 = distinct !{!1000, !980, !1001, !90}
!1001 = !DILocation(line: 167, column: 3, scope: !979)
!1002 = !DILocation(line: 169, column: 11, scope: !901)
!1003 = !DILocalVariable(name: "zh", scope: !901, file: !29, line: 40, type: !10)
!1004 = !DILocation(line: 170, column: 15, scope: !901)
!1005 = !DILocation(line: 170, column: 12, scope: !901)
!1006 = !DILocation(line: 170, column: 3, scope: !901)
!1007 = !DILocation(line: 170, column: 10, scope: !901)
!1008 = !DILocation(line: 171, column: 11, scope: !901)
!1009 = !DILocation(line: 172, column: 2, scope: !901)
!1010 = !DILocation(line: 39, column: 25, scope: !898)
!1011 = !DILocation(line: 39, column: 2, scope: !898)
!1012 = distinct !{!1012, !899, !1013, !90}
!1013 = !DILocation(line: 172, column: 2, scope: !895)
!1014 = !DILocation(line: 177, column: 9, scope: !874)
!1015 = !DILocation(line: 177, column: 2, scope: !874)
!1016 = !DILocation(line: 177, column: 7, scope: !874)
!1017 = !DILocation(line: 183, column: 19, scope: !874)
!1018 = !DILocation(line: 183, column: 36, scope: !874)
!1019 = !DILocation(line: 183, column: 32, scope: !874)
!1020 = !DILocation(line: 183, column: 30, scope: !874)
!1021 = !DILocation(line: 183, column: 2, scope: !874)
!1022 = !DILocation(line: 184, column: 1, scope: !874)
!1023 = distinct !DISubprogram(name: "br_i15_zero", scope: !93, file: !93, line: 1537, type: !504, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!1024 = !DILocalVariable(name: "x", arg: 1, scope: !1023, file: !93, line: 1537, type: !206)
!1025 = !DILocation(line: 0, scope: !1023)
!1026 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1023, file: !93, line: 1537, type: !207)
!1027 = !DILocation(line: 1539, column: 5, scope: !1023)
!1028 = !DILocation(line: 1539, column: 8, scope: !1023)
!1029 = !DILocation(line: 1540, column: 2, scope: !1023)
!1030 = !DILocation(line: 1540, column: 17, scope: !1023)
!1031 = !DILocation(line: 1540, column: 25, scope: !1023)
!1032 = !DILocation(line: 1540, column: 31, scope: !1023)
!1033 = !DILocation(line: 1540, column: 15, scope: !1023)
!1034 = !DILocation(line: 1540, column: 37, scope: !1023)
!1035 = !DILocation(line: 1541, column: 1, scope: !1023)
!1036 = distinct !DISubprogram(name: "NEQ", scope: !93, file: !93, line: 791, type: !286, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!1037 = !DILocalVariable(name: "x", arg: 1, scope: !1036, file: !93, line: 791, type: !10)
!1038 = !DILocation(line: 0, scope: !1036)
!1039 = !DILocalVariable(name: "y", arg: 2, scope: !1036, file: !93, line: 791, type: !10)
!1040 = !DILocation(line: 795, column: 8, scope: !1036)
!1041 = !DILocalVariable(name: "q", scope: !1036, file: !93, line: 793, type: !10)
!1042 = !DILocation(line: 796, column: 14, scope: !1036)
!1043 = !DILocation(line: 796, column: 12, scope: !1036)
!1044 = !DILocation(line: 796, column: 18, scope: !1036)
!1045 = !DILocation(line: 796, column: 2, scope: !1036)
!1046 = distinct !DISubprogram(name: "NOT", scope: !93, file: !93, line: 761, type: !309, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!1047 = !DILocalVariable(name: "ctl", arg: 1, scope: !1046, file: !93, line: 761, type: !10)
!1048 = !DILocation(line: 0, scope: !1046)
!1049 = !DILocation(line: 763, column: 13, scope: !1046)
!1050 = !DILocation(line: 763, column: 2, scope: !1046)
!1051 = distinct !DISubprogram(name: "br_i15_mulacc", scope: !35, file: !35, line: 29, type: !1052, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !2)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !206, !210, !210}
!1054 = !DILocalVariable(name: "d", arg: 1, scope: !1051, file: !35, line: 29, type: !206)
!1055 = !DILocation(line: 0, scope: !1051)
!1056 = !DILocalVariable(name: "a", arg: 2, scope: !1051, file: !35, line: 29, type: !210)
!1057 = !DILocalVariable(name: "b", arg: 3, scope: !1051, file: !35, line: 29, type: !210)
!1058 = !DILocation(line: 34, column: 10, scope: !1051)
!1059 = !DILocation(line: 34, column: 15, scope: !1051)
!1060 = !DILocation(line: 34, column: 21, scope: !1051)
!1061 = !DILocation(line: 34, column: 9, scope: !1051)
!1062 = !DILocalVariable(name: "alen", scope: !1051, file: !35, line: 31, type: !31)
!1063 = !DILocation(line: 35, column: 10, scope: !1051)
!1064 = !DILocation(line: 35, column: 15, scope: !1051)
!1065 = !DILocation(line: 35, column: 21, scope: !1051)
!1066 = !DILocation(line: 35, column: 9, scope: !1051)
!1067 = !DILocalVariable(name: "blen", scope: !1051, file: !35, line: 31, type: !31)
!1068 = !DILocation(line: 41, column: 8, scope: !1051)
!1069 = !DILocation(line: 41, column: 13, scope: !1051)
!1070 = !DILocation(line: 41, column: 22, scope: !1051)
!1071 = !DILocation(line: 41, column: 27, scope: !1051)
!1072 = !DILocation(line: 41, column: 19, scope: !1051)
!1073 = !DILocalVariable(name: "dl", scope: !1051, file: !35, line: 32, type: !14)
!1074 = !DILocation(line: 42, column: 8, scope: !1051)
!1075 = !DILocation(line: 42, column: 13, scope: !1051)
!1076 = !DILocation(line: 42, column: 22, scope: !1051)
!1077 = !DILocation(line: 42, column: 27, scope: !1051)
!1078 = !DILocation(line: 42, column: 19, scope: !1051)
!1079 = !DILocalVariable(name: "dh", scope: !1051, file: !35, line: 32, type: !14)
!1080 = !DILocation(line: 43, column: 13, scope: !1051)
!1081 = !DILocation(line: 43, column: 19, scope: !1051)
!1082 = !DILocation(line: 43, column: 42, scope: !1051)
!1083 = !DILocation(line: 43, column: 27, scope: !1051)
!1084 = !DILocation(line: 43, column: 48, scope: !1051)
!1085 = !DILocation(line: 43, column: 24, scope: !1051)
!1086 = !DILocation(line: 43, column: 9, scope: !1051)
!1087 = !DILocation(line: 43, column: 2, scope: !1051)
!1088 = !DILocation(line: 43, column: 7, scope: !1051)
!1089 = !DILocalVariable(name: "u", scope: !1051, file: !35, line: 31, type: !31)
!1090 = !DILocation(line: 45, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1051, file: !35, line: 45, column: 2)
!1092 = !DILocation(line: 0, scope: !1091)
!1093 = !DILocation(line: 45, column: 16, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1091, file: !35, line: 45, column: 2)
!1095 = !DILocation(line: 45, column: 2, scope: !1091)
!1096 = !DILocation(line: 50, column: 11, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !35, line: 45, column: 30)
!1098 = !DILocation(line: 50, column: 7, scope: !1097)
!1099 = !DILocalVariable(name: "f", scope: !1097, file: !35, line: 46, type: !10)
!1100 = !DILocation(line: 0, scope: !1097)
!1101 = !DILocalVariable(name: "cc", scope: !1097, file: !35, line: 48, type: !10)
!1102 = !DILocalVariable(name: "v", scope: !1097, file: !35, line: 47, type: !31)
!1103 = !DILocation(line: 52, column: 8, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1097, file: !35, line: 52, column: 3)
!1105 = !DILocation(line: 0, scope: !1104)
!1106 = !DILocation(line: 52, column: 17, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1104, file: !35, line: 52, column: 3)
!1108 = !DILocation(line: 52, column: 3, scope: !1104)
!1109 = !DILocation(line: 55, column: 22, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !35, line: 52, column: 31)
!1111 = !DILocation(line: 55, column: 26, scope: !1110)
!1112 = !DILocation(line: 55, column: 18, scope: !1110)
!1113 = !DILocation(line: 55, column: 8, scope: !1110)
!1114 = !DILocation(line: 55, column: 33, scope: !1110)
!1115 = !DILocation(line: 55, column: 31, scope: !1110)
!1116 = !DILocation(line: 55, column: 52, scope: !1110)
!1117 = !DILocalVariable(name: "z", scope: !1110, file: !35, line: 53, type: !10)
!1118 = !DILocation(line: 0, scope: !1110)
!1119 = !DILocation(line: 56, column: 11, scope: !1110)
!1120 = !DILocation(line: 57, column: 21, scope: !1110)
!1121 = !DILocation(line: 57, column: 19, scope: !1110)
!1122 = !DILocation(line: 57, column: 8, scope: !1110)
!1123 = !DILocation(line: 57, column: 12, scope: !1110)
!1124 = !DILocation(line: 57, column: 4, scope: !1110)
!1125 = !DILocation(line: 57, column: 17, scope: !1110)
!1126 = !DILocation(line: 58, column: 3, scope: !1110)
!1127 = !DILocation(line: 52, column: 27, scope: !1107)
!1128 = !DILocation(line: 52, column: 3, scope: !1107)
!1129 = distinct !{!1129, !1108, !1130, !90}
!1130 = !DILocation(line: 58, column: 3, scope: !1104)
!1131 = !DILocation(line: 59, column: 21, scope: !1097)
!1132 = !DILocation(line: 59, column: 7, scope: !1097)
!1133 = !DILocation(line: 59, column: 11, scope: !1097)
!1134 = !DILocation(line: 59, column: 3, scope: !1097)
!1135 = !DILocation(line: 59, column: 19, scope: !1097)
!1136 = !DILocation(line: 60, column: 2, scope: !1097)
!1137 = !DILocation(line: 45, column: 26, scope: !1094)
!1138 = !DILocation(line: 45, column: 2, scope: !1094)
!1139 = distinct !{!1139, !1095, !1140, !90}
!1140 = !DILocation(line: 60, column: 2, scope: !1091)
!1141 = !DILocation(line: 61, column: 1, scope: !1051)
!1142 = distinct !DISubprogram(name: "br_i15_muladd_small", scope: !37, file: !37, line: 55, type: !1143, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !2)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !206, !207, !210}
!1145 = !DILocalVariable(name: "x", arg: 1, scope: !1142, file: !37, line: 55, type: !206)
!1146 = !DILocation(line: 0, scope: !1142)
!1147 = !DILocalVariable(name: "z", arg: 2, scope: !1142, file: !37, line: 55, type: !207)
!1148 = !DILocalVariable(name: "m", arg: 3, scope: !1142, file: !37, line: 55, type: !210)
!1149 = !DILocation(line: 69, column: 13, scope: !1142)
!1150 = !DILocalVariable(name: "m_bitlen", scope: !1142, file: !37, line: 61, type: !14)
!1151 = !DILocation(line: 70, column: 15, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1142, file: !37, line: 70, column: 6)
!1153 = !DILocation(line: 70, column: 6, scope: !1142)
!1154 = !DILocation(line: 71, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !37, line: 70, column: 21)
!1156 = !DILocation(line: 73, column: 15, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1142, file: !37, line: 73, column: 6)
!1158 = !DILocation(line: 73, column: 6, scope: !1142)
!1159 = !DILocalVariable(name: "rem", scope: !1160, file: !37, line: 74, type: !10)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !37, line: 73, column: 22)
!1161 = !DILocation(line: 74, column: 12, scope: !1160)
!1162 = !DILocation(line: 76, column: 23, scope: !1160)
!1163 = !DILocation(line: 76, column: 13, scope: !1160)
!1164 = !DILocation(line: 76, column: 28, scope: !1160)
!1165 = !DILocation(line: 76, column: 37, scope: !1160)
!1166 = !DILocation(line: 76, column: 35, scope: !1160)
!1167 = !DILocation(line: 76, column: 40, scope: !1160)
!1168 = !DILocation(line: 76, column: 3, scope: !1160)
!1169 = !DILocation(line: 77, column: 10, scope: !1160)
!1170 = !DILocation(line: 77, column: 3, scope: !1160)
!1171 = !DILocation(line: 77, column: 8, scope: !1160)
!1172 = !DILocation(line: 78, column: 3, scope: !1160)
!1173 = !DILocation(line: 80, column: 19, scope: !1142)
!1174 = !DILocation(line: 80, column: 25, scope: !1142)
!1175 = !DILocation(line: 80, column: 9, scope: !1142)
!1176 = !DILocalVariable(name: "mlen", scope: !1142, file: !37, line: 62, type: !31)
!1177 = !DILocation(line: 81, column: 18, scope: !1142)
!1178 = !DILocalVariable(name: "mblr", scope: !1142, file: !37, line: 61, type: !14)
!1179 = !DILocation(line: 109, column: 7, scope: !1142)
!1180 = !DILocalVariable(name: "hi", scope: !1142, file: !37, line: 63, type: !10)
!1181 = !DILocation(line: 110, column: 11, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1142, file: !37, line: 110, column: 6)
!1183 = !DILocation(line: 110, column: 6, scope: !1142)
!1184 = !DILocation(line: 111, column: 8, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !37, line: 110, column: 17)
!1186 = !DILocalVariable(name: "a0", scope: !1142, file: !37, line: 63, type: !10)
!1187 = !DILocation(line: 112, column: 13, scope: !1185)
!1188 = !DILocation(line: 112, column: 3, scope: !1185)
!1189 = !DILocation(line: 112, column: 20, scope: !1185)
!1190 = !DILocation(line: 112, column: 31, scope: !1185)
!1191 = !DILocation(line: 112, column: 36, scope: !1185)
!1192 = !DILocation(line: 113, column: 3, scope: !1185)
!1193 = !DILocation(line: 113, column: 8, scope: !1185)
!1194 = !DILocation(line: 114, column: 11, scope: !1185)
!1195 = !DILocation(line: 114, column: 20, scope: !1185)
!1196 = !DILocation(line: 114, column: 18, scope: !1185)
!1197 = !DILocalVariable(name: "a", scope: !1142, file: !37, line: 63, type: !10)
!1198 = !DILocation(line: 115, column: 7, scope: !1185)
!1199 = !DILocalVariable(name: "b", scope: !1142, file: !37, line: 63, type: !10)
!1200 = !DILocation(line: 116, column: 2, scope: !1185)
!1201 = !DILocation(line: 117, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1182, file: !37, line: 116, column: 9)
!1203 = !DILocation(line: 117, column: 24, scope: !1202)
!1204 = !DILocation(line: 117, column: 17, scope: !1202)
!1205 = !DILocation(line: 117, column: 43, scope: !1202)
!1206 = !DILocation(line: 117, column: 36, scope: !1202)
!1207 = !DILocation(line: 117, column: 48, scope: !1202)
!1208 = !DILocation(line: 117, column: 33, scope: !1202)
!1209 = !DILocation(line: 118, column: 13, scope: !1202)
!1210 = !DILocation(line: 118, column: 3, scope: !1202)
!1211 = !DILocation(line: 118, column: 20, scope: !1202)
!1212 = !DILocation(line: 118, column: 31, scope: !1202)
!1213 = !DILocation(line: 118, column: 36, scope: !1202)
!1214 = !DILocation(line: 119, column: 3, scope: !1202)
!1215 = !DILocation(line: 119, column: 8, scope: !1202)
!1216 = !DILocation(line: 120, column: 11, scope: !1202)
!1217 = !DILocation(line: 120, column: 23, scope: !1202)
!1218 = !DILocation(line: 120, column: 38, scope: !1202)
!1219 = !DILocation(line: 120, column: 31, scope: !1202)
!1220 = !DILocation(line: 121, column: 14, scope: !1202)
!1221 = !DILocation(line: 121, column: 7, scope: !1202)
!1222 = !DILocation(line: 121, column: 19, scope: !1202)
!1223 = !DILocation(line: 121, column: 4, scope: !1202)
!1224 = !DILocation(line: 121, column: 29, scope: !1202)
!1225 = !DILocation(line: 120, column: 18, scope: !1202)
!1226 = !DILocation(line: 122, column: 8, scope: !1202)
!1227 = !DILocation(line: 122, column: 23, scope: !1202)
!1228 = !DILocation(line: 122, column: 16, scope: !1202)
!1229 = !DILocation(line: 122, column: 42, scope: !1202)
!1230 = !DILocation(line: 122, column: 35, scope: !1202)
!1231 = !DILocation(line: 122, column: 47, scope: !1202)
!1232 = !DILocation(line: 122, column: 32, scope: !1202)
!1233 = !DILocation(line: 0, scope: !1182)
!1234 = !DILocation(line: 124, column: 6, scope: !1142)
!1235 = !DILocalVariable(name: "q", scope: !1142, file: !37, line: 63, type: !10)
!1236 = !DILocation(line: 134, column: 10, scope: !1142)
!1237 = !DILocation(line: 134, column: 31, scope: !1142)
!1238 = !DILocation(line: 134, column: 41, scope: !1142)
!1239 = !DILocation(line: 134, column: 46, scope: !1142)
!1240 = !DILocation(line: 134, column: 35, scope: !1142)
!1241 = !DILocation(line: 134, column: 6, scope: !1142)
!1242 = !DILocalVariable(name: "cc", scope: !1142, file: !37, line: 64, type: !10)
!1243 = !DILocalVariable(name: "tb", scope: !1142, file: !37, line: 64, type: !10)
!1244 = !DILocalVariable(name: "u", scope: !1142, file: !37, line: 62, type: !31)
!1245 = !DILocation(line: 147, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1142, file: !37, line: 147, column: 2)
!1247 = !DILocation(line: 0, scope: !1246)
!1248 = !DILocation(line: 147, column: 16, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !37, line: 147, column: 2)
!1250 = !DILocation(line: 147, column: 2, scope: !1246)
!1251 = !DILocation(line: 150, column: 8, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !37, line: 147, column: 31)
!1253 = !DILocalVariable(name: "mw", scope: !1252, file: !37, line: 148, type: !10)
!1254 = !DILocation(line: 0, scope: !1252)
!1255 = !DILocation(line: 151, column: 8, scope: !1252)
!1256 = !DILocation(line: 151, column: 21, scope: !1252)
!1257 = !DILocalVariable(name: "zl", scope: !1252, file: !37, line: 148, type: !10)
!1258 = !DILocation(line: 152, column: 11, scope: !1252)
!1259 = !DILocation(line: 153, column: 6, scope: !1252)
!1260 = !DILocation(line: 154, column: 8, scope: !1252)
!1261 = !DILocalVariable(name: "xw", scope: !1252, file: !37, line: 148, type: !10)
!1262 = !DILocation(line: 155, column: 12, scope: !1252)
!1263 = !DILocalVariable(name: "nxw", scope: !1252, file: !37, line: 148, type: !10)
!1264 = !DILocation(line: 156, column: 13, scope: !1252)
!1265 = !DILocation(line: 156, column: 6, scope: !1252)
!1266 = !DILocation(line: 157, column: 7, scope: !1252)
!1267 = !DILocation(line: 158, column: 10, scope: !1252)
!1268 = !DILocation(line: 158, column: 3, scope: !1252)
!1269 = !DILocation(line: 158, column: 8, scope: !1252)
!1270 = !DILocation(line: 159, column: 12, scope: !1252)
!1271 = !DILocation(line: 159, column: 29, scope: !1252)
!1272 = !DILocation(line: 159, column: 8, scope: !1252)
!1273 = !DILocation(line: 160, column: 2, scope: !1252)
!1274 = !DILocation(line: 147, column: 27, scope: !1249)
!1275 = !DILocation(line: 147, column: 2, scope: !1249)
!1276 = distinct !{!1276, !1250, !1277, !90}
!1277 = !DILocation(line: 160, column: 2, scope: !1246)
!1278 = !DILocation(line: 169, column: 9, scope: !1142)
!1279 = !DILocalVariable(name: "over", scope: !1142, file: !37, line: 64, type: !10)
!1280 = !DILocation(line: 170, column: 10, scope: !1142)
!1281 = !DILocation(line: 170, column: 24, scope: !1142)
!1282 = !DILocation(line: 170, column: 22, scope: !1142)
!1283 = !DILocation(line: 170, column: 16, scope: !1142)
!1284 = !DILocalVariable(name: "under", scope: !1142, file: !37, line: 64, type: !10)
!1285 = !DILocation(line: 171, column: 2, scope: !1142)
!1286 = !DILocation(line: 172, column: 2, scope: !1142)
!1287 = !DILocation(line: 173, column: 1, scope: !1142)
!1288 = distinct !DISubprogram(name: "divrem16", scope: !37, file: !37, line: 32, type: !1289, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !2)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!10, !10, !10, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!1292 = !DILocalVariable(name: "x", arg: 1, scope: !1288, file: !37, line: 32, type: !10)
!1293 = !DILocation(line: 0, scope: !1288)
!1294 = !DILocalVariable(name: "d", arg: 2, scope: !1288, file: !37, line: 32, type: !10)
!1295 = !DILocalVariable(name: "r", arg: 3, scope: !1288, file: !37, line: 32, type: !1291)
!1296 = !DILocalVariable(name: "q", scope: !1288, file: !37, line: 35, type: !10)
!1297 = !DILocation(line: 38, column: 4, scope: !1288)
!1298 = !DILocalVariable(name: "i", scope: !1288, file: !37, line: 34, type: !377)
!1299 = !DILocation(line: 39, column: 7, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1288, file: !37, line: 39, column: 2)
!1301 = !DILocation(line: 0, scope: !1300)
!1302 = !DILocation(line: 39, column: 17, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !37, line: 39, column: 2)
!1304 = !DILocation(line: 39, column: 2, scope: !1300)
!1305 = !DILocation(line: 42, column: 9, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1303, file: !37, line: 39, column: 29)
!1307 = !DILocalVariable(name: "ctl", scope: !1306, file: !37, line: 40, type: !10)
!1308 = !DILocation(line: 0, scope: !1306)
!1309 = !DILocation(line: 43, column: 12, scope: !1306)
!1310 = !DILocation(line: 43, column: 5, scope: !1306)
!1311 = !DILocation(line: 44, column: 9, scope: !1306)
!1312 = !DILocation(line: 44, column: 15, scope: !1306)
!1313 = !DILocation(line: 44, column: 5, scope: !1306)
!1314 = !DILocation(line: 45, column: 5, scope: !1306)
!1315 = !DILocation(line: 46, column: 2, scope: !1306)
!1316 = !DILocation(line: 39, column: 25, scope: !1303)
!1317 = !DILocation(line: 39, column: 2, scope: !1303)
!1318 = distinct !{!1318, !1304, !1319, !90}
!1319 = !DILocation(line: 46, column: 2, scope: !1300)
!1320 = !DILocation(line: 47, column: 8, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1288, file: !37, line: 47, column: 6)
!1322 = !DILocation(line: 47, column: 6, scope: !1288)
!1323 = !DILocation(line: 48, column: 6, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !37, line: 47, column: 17)
!1325 = !DILocation(line: 49, column: 2, scope: !1324)
!1326 = !DILocation(line: 50, column: 2, scope: !1288)
!1327 = distinct !DISubprogram(name: "EQ", scope: !93, file: !93, line: 779, type: !286, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !2)
!1328 = !DILocalVariable(name: "x", arg: 1, scope: !1327, file: !93, line: 779, type: !10)
!1329 = !DILocation(line: 0, scope: !1327)
!1330 = !DILocalVariable(name: "y", arg: 2, scope: !1327, file: !93, line: 779, type: !10)
!1331 = !DILocation(line: 783, column: 8, scope: !1327)
!1332 = !DILocalVariable(name: "q", scope: !1327, file: !93, line: 781, type: !10)
!1333 = !DILocation(line: 784, column: 18, scope: !1327)
!1334 = !DILocation(line: 784, column: 16, scope: !1327)
!1335 = !DILocation(line: 784, column: 22, scope: !1327)
!1336 = !DILocation(line: 784, column: 9, scope: !1327)
!1337 = !DILocation(line: 784, column: 2, scope: !1327)
!1338 = distinct !DISubprogram(name: "MUX", scope: !93, file: !93, line: 770, type: !94, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !2)
!1339 = !DILocalVariable(name: "ctl", arg: 1, scope: !1338, file: !93, line: 770, type: !10)
!1340 = !DILocation(line: 0, scope: !1338)
!1341 = !DILocalVariable(name: "x", arg: 2, scope: !1338, file: !93, line: 770, type: !10)
!1342 = !DILocalVariable(name: "y", arg: 3, scope: !1338, file: !93, line: 770, type: !10)
!1343 = !DILocation(line: 772, column: 14, scope: !1338)
!1344 = !DILocation(line: 772, column: 24, scope: !1338)
!1345 = !DILocation(line: 772, column: 19, scope: !1338)
!1346 = !DILocation(line: 772, column: 11, scope: !1338)
!1347 = !DILocation(line: 772, column: 2, scope: !1338)
!1348 = distinct !DISubprogram(name: "GT", scope: !93, file: !93, line: 803, type: !286, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !2)
!1349 = !DILocalVariable(name: "x", arg: 1, scope: !1348, file: !93, line: 803, type: !10)
!1350 = !DILocation(line: 0, scope: !1348)
!1351 = !DILocalVariable(name: "y", arg: 2, scope: !1348, file: !93, line: 803, type: !10)
!1352 = !DILocation(line: 819, column: 8, scope: !1348)
!1353 = !DILocalVariable(name: "z", scope: !1348, file: !93, line: 817, type: !10)
!1354 = !DILocation(line: 820, column: 18, scope: !1348)
!1355 = !DILocation(line: 820, column: 28, scope: !1348)
!1356 = !DILocation(line: 820, column: 23, scope: !1348)
!1357 = !DILocation(line: 820, column: 12, scope: !1348)
!1358 = !DILocation(line: 820, column: 35, scope: !1348)
!1359 = !DILocation(line: 820, column: 2, scope: !1348)
!1360 = distinct !DISubprogram(name: "NOT", scope: !93, file: !93, line: 761, type: !309, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !2)
!1361 = !DILocalVariable(name: "ctl", arg: 1, scope: !1360, file: !93, line: 761, type: !10)
!1362 = !DILocation(line: 0, scope: !1360)
!1363 = !DILocation(line: 763, column: 13, scope: !1360)
!1364 = !DILocation(line: 763, column: 2, scope: !1360)
!1365 = distinct !DISubprogram(name: "br_i15_ninv15", scope: !41, file: !41, line: 29, type: !1366, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !2)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!207, !207}
!1368 = !DILocalVariable(name: "x", arg: 1, scope: !1365, file: !41, line: 29, type: !207)
!1369 = !DILocation(line: 0, scope: !1365)
!1370 = !DILocation(line: 33, column: 10, scope: !1365)
!1371 = !DILocation(line: 33, column: 8, scope: !1365)
!1372 = !DILocalVariable(name: "y", scope: !1365, file: !41, line: 31, type: !10)
!1373 = !DILocation(line: 34, column: 6, scope: !1365)
!1374 = !DILocation(line: 35, column: 6, scope: !1365)
!1375 = !DILocation(line: 36, column: 6, scope: !1365)
!1376 = !DILocation(line: 37, column: 13, scope: !1365)
!1377 = !DILocation(line: 37, column: 15, scope: !1365)
!1378 = !DILocation(line: 37, column: 20, scope: !1365)
!1379 = !DILocation(line: 37, column: 9, scope: !1365)
!1380 = !DILocation(line: 37, column: 27, scope: !1365)
!1381 = !DILocation(line: 37, column: 2, scope: !1365)
!1382 = distinct !DISubprogram(name: "MUX", scope: !93, file: !93, line: 770, type: !94, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !2)
!1383 = !DILocalVariable(name: "ctl", arg: 1, scope: !1382, file: !93, line: 770, type: !10)
!1384 = !DILocation(line: 0, scope: !1382)
!1385 = !DILocalVariable(name: "x", arg: 2, scope: !1382, file: !93, line: 770, type: !10)
!1386 = !DILocalVariable(name: "y", arg: 3, scope: !1382, file: !93, line: 770, type: !10)
!1387 = !DILocation(line: 772, column: 14, scope: !1382)
!1388 = !DILocation(line: 772, column: 24, scope: !1382)
!1389 = !DILocation(line: 772, column: 19, scope: !1382)
!1390 = !DILocation(line: 772, column: 11, scope: !1382)
!1391 = !DILocation(line: 772, column: 2, scope: !1382)
!1392 = distinct !DISubprogram(name: "br_i15_reduce", scope: !43, file: !43, line: 29, type: !1052, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !2)
!1393 = !DILocalVariable(name: "x", arg: 1, scope: !1392, file: !43, line: 29, type: !206)
!1394 = !DILocation(line: 0, scope: !1392)
!1395 = !DILocalVariable(name: "a", arg: 2, scope: !1392, file: !43, line: 29, type: !210)
!1396 = !DILocalVariable(name: "m", arg: 3, scope: !1392, file: !43, line: 29, type: !210)
!1397 = !DILocation(line: 34, column: 13, scope: !1392)
!1398 = !DILocalVariable(name: "m_bitlen", scope: !1392, file: !43, line: 31, type: !10)
!1399 = !DILocation(line: 35, column: 19, scope: !1392)
!1400 = !DILocation(line: 35, column: 25, scope: !1392)
!1401 = !DILocation(line: 35, column: 9, scope: !1392)
!1402 = !DILocalVariable(name: "mlen", scope: !1392, file: !43, line: 32, type: !31)
!1403 = !DILocation(line: 37, column: 9, scope: !1392)
!1404 = !DILocation(line: 37, column: 2, scope: !1392)
!1405 = !DILocation(line: 37, column: 7, scope: !1392)
!1406 = !DILocation(line: 38, column: 15, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1392, file: !43, line: 38, column: 6)
!1408 = !DILocation(line: 38, column: 6, scope: !1392)
!1409 = !DILocation(line: 39, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1407, file: !43, line: 38, column: 21)
!1411 = !DILocation(line: 46, column: 13, scope: !1392)
!1412 = !DILocalVariable(name: "a_bitlen", scope: !1392, file: !43, line: 31, type: !10)
!1413 = !DILocation(line: 47, column: 19, scope: !1392)
!1414 = !DILocation(line: 47, column: 25, scope: !1392)
!1415 = !DILocation(line: 47, column: 9, scope: !1392)
!1416 = !DILocalVariable(name: "alen", scope: !1392, file: !43, line: 32, type: !31)
!1417 = !DILocation(line: 48, column: 15, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1392, file: !43, line: 48, column: 6)
!1419 = !DILocation(line: 48, column: 6, scope: !1392)
!1420 = !DILocation(line: 49, column: 12, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !43, line: 48, column: 27)
!1422 = !DILocation(line: 49, column: 3, scope: !1421)
!1423 = !DILocation(line: 49, column: 19, scope: !1421)
!1424 = !DILocation(line: 49, column: 29, scope: !1421)
!1425 = !DILocalVariable(name: "u", scope: !1392, file: !43, line: 32, type: !31)
!1426 = !DILocation(line: 50, column: 8, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1421, file: !43, line: 50, column: 3)
!1428 = !DILocation(line: 0, scope: !1427)
!1429 = !DILocation(line: 50, column: 20, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1427, file: !43, line: 50, column: 3)
!1431 = !DILocation(line: 50, column: 3, scope: !1427)
!1432 = !DILocation(line: 51, column: 8, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1430, file: !43, line: 50, column: 34)
!1434 = !DILocation(line: 51, column: 4, scope: !1433)
!1435 = !DILocation(line: 51, column: 13, scope: !1433)
!1436 = !DILocation(line: 52, column: 3, scope: !1433)
!1437 = !DILocation(line: 50, column: 30, scope: !1430)
!1438 = !DILocation(line: 50, column: 3, scope: !1430)
!1439 = distinct !{!1439, !1431, !1440, !90}
!1440 = !DILocation(line: 52, column: 3, scope: !1427)
!1441 = !DILocation(line: 53, column: 3, scope: !1421)
!1442 = !DILocation(line: 61, column: 11, scope: !1392)
!1443 = !DILocation(line: 61, column: 2, scope: !1392)
!1444 = !DILocation(line: 61, column: 18, scope: !1392)
!1445 = !DILocation(line: 61, column: 30, scope: !1392)
!1446 = !DILocation(line: 61, column: 22, scope: !1392)
!1447 = !DILocation(line: 61, column: 45, scope: !1392)
!1448 = !DILocation(line: 61, column: 50, scope: !1392)
!1449 = !DILocation(line: 62, column: 2, scope: !1392)
!1450 = !DILocation(line: 62, column: 10, scope: !1392)
!1451 = !DILocation(line: 63, column: 13, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1392, file: !43, line: 63, column: 2)
!1453 = !DILocation(line: 63, column: 20, scope: !1452)
!1454 = !DILocation(line: 63, column: 7, scope: !1452)
!1455 = !DILocation(line: 0, scope: !1452)
!1456 = !DILocation(line: 63, column: 30, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !43, line: 63, column: 2)
!1458 = !DILocation(line: 63, column: 2, scope: !1452)
!1459 = !DILocation(line: 64, column: 26, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !43, line: 63, column: 41)
!1461 = !DILocation(line: 64, column: 3, scope: !1460)
!1462 = !DILocation(line: 65, column: 2, scope: !1460)
!1463 = !DILocation(line: 63, column: 37, scope: !1457)
!1464 = !DILocation(line: 63, column: 2, scope: !1457)
!1465 = distinct !{!1465, !1458, !1466, !90}
!1466 = !DILocation(line: 65, column: 2, scope: !1452)
!1467 = !DILocation(line: 66, column: 1, scope: !1392)
!1468 = distinct !DISubprogram(name: "br_i15_rshift", scope: !45, file: !45, line: 29, type: !1469, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !2)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{null, !206, !377}
!1471 = !DILocalVariable(name: "x", arg: 1, scope: !1468, file: !45, line: 29, type: !206)
!1472 = !DILocation(line: 0, scope: !1468)
!1473 = !DILocalVariable(name: "count", arg: 2, scope: !1468, file: !45, line: 29, type: !377)
!1474 = !DILocation(line: 34, column: 9, scope: !1468)
!1475 = !DILocation(line: 34, column: 14, scope: !1468)
!1476 = !DILocation(line: 34, column: 20, scope: !1468)
!1477 = !DILocation(line: 34, column: 8, scope: !1468)
!1478 = !DILocalVariable(name: "len", scope: !1468, file: !45, line: 31, type: !31)
!1479 = !DILocation(line: 35, column: 10, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1468, file: !45, line: 35, column: 6)
!1481 = !DILocation(line: 35, column: 6, scope: !1468)
!1482 = !DILocation(line: 36, column: 3, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !45, line: 35, column: 16)
!1484 = !DILocation(line: 38, column: 6, scope: !1468)
!1485 = !DILocation(line: 38, column: 11, scope: !1468)
!1486 = !DILocalVariable(name: "r", scope: !1468, file: !45, line: 32, type: !14)
!1487 = !DILocalVariable(name: "u", scope: !1468, file: !45, line: 31, type: !31)
!1488 = !DILocation(line: 39, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1468, file: !45, line: 39, column: 2)
!1490 = !DILocation(line: 0, scope: !1489)
!1491 = !DILocation(line: 39, column: 16, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !45, line: 39, column: 2)
!1493 = !DILocation(line: 39, column: 2, scope: !1489)
!1494 = !DILocation(line: 42, column: 7, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !45, line: 39, column: 30)
!1496 = !DILocalVariable(name: "w", scope: !1495, file: !45, line: 40, type: !14)
!1497 = !DILocation(line: 0, scope: !1495)
!1498 = !DILocation(line: 43, column: 25, scope: !1495)
!1499 = !DILocation(line: 43, column: 18, scope: !1495)
!1500 = !DILocation(line: 43, column: 35, scope: !1495)
!1501 = !DILocation(line: 43, column: 40, scope: !1495)
!1502 = !DILocation(line: 43, column: 14, scope: !1495)
!1503 = !DILocation(line: 43, column: 7, scope: !1495)
!1504 = !DILocation(line: 43, column: 3, scope: !1495)
!1505 = !DILocation(line: 43, column: 12, scope: !1495)
!1506 = !DILocation(line: 44, column: 9, scope: !1495)
!1507 = !DILocation(line: 45, column: 2, scope: !1495)
!1508 = !DILocation(line: 39, column: 26, scope: !1492)
!1509 = !DILocation(line: 39, column: 2, scope: !1492)
!1510 = distinct !{!1510, !1493, !1511, !90}
!1511 = !DILocation(line: 45, column: 2, scope: !1489)
!1512 = !DILocation(line: 46, column: 11, scope: !1468)
!1513 = !DILocation(line: 46, column: 2, scope: !1468)
!1514 = !DILocation(line: 46, column: 9, scope: !1468)
!1515 = !DILocation(line: 47, column: 1, scope: !1468)
!1516 = distinct !DISubprogram(name: "br_i15_sub", scope: !47, file: !47, line: 29, type: !204, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !2)
!1517 = !DILocalVariable(name: "a", arg: 1, scope: !1516, file: !47, line: 29, type: !206)
!1518 = !DILocation(line: 0, scope: !1516)
!1519 = !DILocalVariable(name: "b", arg: 2, scope: !1516, file: !47, line: 29, type: !210)
!1520 = !DILocalVariable(name: "ctl", arg: 3, scope: !1516, file: !47, line: 29, type: !10)
!1521 = !DILocalVariable(name: "cc", scope: !1516, file: !47, line: 31, type: !10)
!1522 = !DILocation(line: 35, column: 7, scope: !1516)
!1523 = !DILocation(line: 35, column: 12, scope: !1516)
!1524 = !DILocation(line: 35, column: 18, scope: !1516)
!1525 = !DILocation(line: 35, column: 6, scope: !1516)
!1526 = !DILocalVariable(name: "m", scope: !1516, file: !47, line: 32, type: !31)
!1527 = !DILocalVariable(name: "u", scope: !1516, file: !47, line: 32, type: !31)
!1528 = !DILocation(line: 36, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1516, file: !47, line: 36, column: 2)
!1530 = !DILocation(line: 0, scope: !1529)
!1531 = !DILocation(line: 36, column: 16, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !47, line: 36, column: 2)
!1533 = !DILocation(line: 36, column: 2, scope: !1529)
!1534 = !DILocation(line: 39, column: 8, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !47, line: 36, column: 27)
!1536 = !DILocalVariable(name: "aw", scope: !1535, file: !47, line: 37, type: !10)
!1537 = !DILocation(line: 0, scope: !1535)
!1538 = !DILocation(line: 40, column: 8, scope: !1535)
!1539 = !DILocalVariable(name: "bw", scope: !1535, file: !47, line: 37, type: !10)
!1540 = !DILocation(line: 41, column: 12, scope: !1535)
!1541 = !DILocation(line: 41, column: 17, scope: !1535)
!1542 = !DILocalVariable(name: "naw", scope: !1535, file: !47, line: 37, type: !10)
!1543 = !DILocation(line: 42, column: 12, scope: !1535)
!1544 = !DILocation(line: 43, column: 23, scope: !1535)
!1545 = !DILocation(line: 43, column: 10, scope: !1535)
!1546 = !DILocation(line: 43, column: 3, scope: !1535)
!1547 = !DILocation(line: 43, column: 8, scope: !1535)
!1548 = !DILocation(line: 44, column: 2, scope: !1535)
!1549 = !DILocation(line: 36, column: 23, scope: !1532)
!1550 = !DILocation(line: 36, column: 2, scope: !1532)
!1551 = distinct !{!1551, !1533, !1552, !90}
!1552 = !DILocation(line: 44, column: 2, scope: !1529)
!1553 = !DILocation(line: 45, column: 2, scope: !1516)
!1554 = distinct !DISubprogram(name: "MUX", scope: !93, file: !93, line: 770, type: !94, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !46, retainedNodes: !2)
!1555 = !DILocalVariable(name: "ctl", arg: 1, scope: !1554, file: !93, line: 770, type: !10)
!1556 = !DILocation(line: 0, scope: !1554)
!1557 = !DILocalVariable(name: "x", arg: 2, scope: !1554, file: !93, line: 770, type: !10)
!1558 = !DILocalVariable(name: "y", arg: 3, scope: !1554, file: !93, line: 770, type: !10)
!1559 = !DILocation(line: 772, column: 14, scope: !1554)
!1560 = !DILocation(line: 772, column: 24, scope: !1554)
!1561 = !DILocation(line: 772, column: 19, scope: !1554)
!1562 = !DILocation(line: 772, column: 11, scope: !1554)
!1563 = !DILocation(line: 772, column: 2, scope: !1554)
!1564 = distinct !DISubprogram(name: "br_i15_to_monty", scope: !49, file: !49, line: 29, type: !1565, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !2)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !206, !210}
!1567 = !DILocalVariable(name: "x", arg: 1, scope: !1564, file: !49, line: 29, type: !206)
!1568 = !DILocation(line: 0, scope: !1564)
!1569 = !DILocalVariable(name: "m", arg: 2, scope: !1564, file: !49, line: 29, type: !210)
!1570 = !DILocation(line: 33, column: 12, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1564, file: !49, line: 33, column: 2)
!1572 = !DILocation(line: 33, column: 17, scope: !1571)
!1573 = !DILocation(line: 33, column: 23, scope: !1571)
!1574 = !DILocalVariable(name: "k", scope: !1564, file: !49, line: 31, type: !14)
!1575 = !DILocation(line: 33, column: 7, scope: !1571)
!1576 = !DILocation(line: 0, scope: !1571)
!1577 = !DILocation(line: 33, column: 31, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1571, file: !49, line: 33, column: 2)
!1579 = !DILocation(line: 33, column: 2, scope: !1571)
!1580 = !DILocation(line: 34, column: 3, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !49, line: 33, column: 42)
!1582 = !DILocation(line: 35, column: 2, scope: !1581)
!1583 = !DILocation(line: 33, column: 38, scope: !1578)
!1584 = !DILocation(line: 33, column: 2, scope: !1578)
!1585 = distinct !{!1585, !1579, !1586, !90}
!1586 = !DILocation(line: 35, column: 2, scope: !1571)
!1587 = !DILocation(line: 36, column: 1, scope: !1564)
!1588 = distinct !DISubprogram(name: "br_rsa_i15_private", scope: !51, file: !51, line: 32, type: !1589, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !2)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!10, !56, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !111, line: 205, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 182, size: 704, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !1594, file: !111, line: 184, baseType: !10, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1594, file: !111, line: 186, baseType: !56, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !1594, file: !111, line: 188, baseType: !31, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1594, file: !111, line: 190, baseType: !56, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1594, file: !111, line: 192, baseType: !31, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1594, file: !111, line: 194, baseType: !56, size: 64, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !1594, file: !111, line: 196, baseType: !31, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !1594, file: !111, line: 198, baseType: !56, size: 64, offset: 448)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !1594, file: !111, line: 200, baseType: !31, size: 64, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !1594, file: !111, line: 202, baseType: !56, size: 64, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !1594, file: !111, line: 204, baseType: !31, size: 64, offset: 640)
!1607 = !DILocalVariable(name: "x", arg: 1, scope: !1588, file: !51, line: 32, type: !56)
!1608 = !DILocation(line: 0, scope: !1588)
!1609 = !DILocalVariable(name: "sk", arg: 2, scope: !1588, file: !51, line: 32, type: !1591)
!1610 = !DILocalVariable(name: "tmp", scope: !1588, file: !51, line: 39, type: !1611)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 18064, elements: !1612)
!1612 = !{!1613}
!1613 = !DISubrange(count: 1129)
!1614 = !DILocation(line: 39, column: 11, scope: !1588)
!1615 = !DILocation(line: 49, column: 10, scope: !1588)
!1616 = !DILocalVariable(name: "p", scope: !1588, file: !51, line: 34, type: !73)
!1617 = !DILocation(line: 50, column: 13, scope: !1588)
!1618 = !DILocalVariable(name: "plen", scope: !1588, file: !51, line: 35, type: !31)
!1619 = !DILocation(line: 51, column: 2, scope: !1588)
!1620 = !DILocation(line: 51, column: 14, scope: !1588)
!1621 = !DILocation(line: 51, column: 18, scope: !1588)
!1622 = !DILocation(line: 51, column: 21, scope: !1588)
!1623 = !DILocation(line: 51, column: 24, scope: !1588)
!1624 = !DILocation(line: 52, column: 5, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1588, file: !51, line: 51, column: 30)
!1626 = !DILocation(line: 53, column: 8, scope: !1625)
!1627 = distinct !{!1627, !1619, !1628, !90}
!1628 = !DILocation(line: 54, column: 2, scope: !1588)
!1629 = !DILocation(line: 55, column: 10, scope: !1588)
!1630 = !DILocalVariable(name: "q", scope: !1588, file: !51, line: 34, type: !73)
!1631 = !DILocation(line: 56, column: 13, scope: !1588)
!1632 = !DILocalVariable(name: "qlen", scope: !1588, file: !51, line: 35, type: !31)
!1633 = !DILocation(line: 57, column: 2, scope: !1588)
!1634 = !DILocation(line: 57, column: 14, scope: !1588)
!1635 = !DILocation(line: 57, column: 18, scope: !1588)
!1636 = !DILocation(line: 57, column: 21, scope: !1588)
!1637 = !DILocation(line: 57, column: 24, scope: !1588)
!1638 = !DILocation(line: 58, column: 5, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1588, file: !51, line: 57, column: 30)
!1640 = !DILocation(line: 59, column: 8, scope: !1639)
!1641 = distinct !{!1641, !1633, !1642, !90}
!1642 = !DILocation(line: 60, column: 2, scope: !1588)
!1643 = !DILocation(line: 65, column: 18, scope: !1588)
!1644 = !DILocation(line: 65, column: 13, scope: !1588)
!1645 = !DILocation(line: 65, column: 40, scope: !1588)
!1646 = !DILocalVariable(name: "z", scope: !1588, file: !51, line: 40, type: !53)
!1647 = !DILocalVariable(name: "fwlen", scope: !1588, file: !51, line: 36, type: !31)
!1648 = !DILocation(line: 67, column: 2, scope: !1588)
!1649 = !DILocation(line: 67, column: 11, scope: !1588)
!1650 = !DILocation(line: 68, column: 5, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1588, file: !51, line: 67, column: 16)
!1652 = !DILocation(line: 69, column: 9, scope: !1651)
!1653 = distinct !{!1653, !1648, !1654, !90}
!1654 = !DILocation(line: 70, column: 2, scope: !1588)
!1655 = !DILocation(line: 74, column: 18, scope: !1588)
!1656 = !DILocation(line: 74, column: 8, scope: !1588)
!1657 = !DILocation(line: 79, column: 8, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1588, file: !51, line: 79, column: 6)
!1659 = !DILocation(line: 79, column: 16, scope: !1658)
!1660 = !DILocation(line: 79, column: 6, scope: !1588)
!1661 = !DILocation(line: 80, column: 3, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !51, line: 79, column: 24)
!1663 = !DILocation(line: 86, column: 14, scope: !1588)
!1664 = !DILocation(line: 86, column: 23, scope: !1588)
!1665 = !DILocation(line: 86, column: 28, scope: !1588)
!1666 = !DILocation(line: 86, column: 9, scope: !1588)
!1667 = !DILocalVariable(name: "xlen", scope: !1588, file: !51, line: 38, type: !31)
!1668 = !DILocation(line: 91, column: 7, scope: !1588)
!1669 = !DILocalVariable(name: "mq", scope: !1588, file: !51, line: 41, type: !206)
!1670 = !DILocation(line: 92, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1588, file: !51, line: 92, column: 6)
!1672 = !DILocation(line: 92, column: 21, scope: !1671)
!1673 = !DILocation(line: 92, column: 26, scope: !1671)
!1674 = !DILocation(line: 92, column: 6, scope: !1588)
!1675 = !DILocation(line: 93, column: 6, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1671, file: !51, line: 92, column: 32)
!1677 = !DILocation(line: 94, column: 2, scope: !1676)
!1678 = !DILocation(line: 99, column: 2, scope: !1588)
!1679 = !DILocation(line: 104, column: 10, scope: !1588)
!1680 = !DILocalVariable(name: "t1", scope: !1588, file: !51, line: 41, type: !206)
!1681 = !DILocation(line: 105, column: 2, scope: !1588)
!1682 = !DILocation(line: 112, column: 14, scope: !1588)
!1683 = !DILocation(line: 112, column: 10, scope: !1588)
!1684 = !DILocalVariable(name: "t2", scope: !1588, file: !51, line: 41, type: !206)
!1685 = !DILocation(line: 113, column: 18, scope: !1588)
!1686 = !DILocation(line: 113, column: 2, scope: !1588)
!1687 = !DILocation(line: 114, column: 2, scope: !1588)
!1688 = !DILocation(line: 125, column: 14, scope: !1588)
!1689 = !DILocation(line: 125, column: 10, scope: !1588)
!1690 = !DILocalVariable(name: "t3", scope: !1588, file: !51, line: 41, type: !206)
!1691 = !DILocation(line: 126, column: 16, scope: !1588)
!1692 = !DILocation(line: 126, column: 2, scope: !1588)
!1693 = !DILocalVariable(name: "u", scope: !1588, file: !51, line: 38, type: !31)
!1694 = !DILocalVariable(name: "r", scope: !1588, file: !51, line: 42, type: !10)
!1695 = !DILocation(line: 129, column: 2, scope: !1588)
!1696 = !DILocation(line: 129, column: 11, scope: !1588)
!1697 = !DILocation(line: 132, column: 5, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1588, file: !51, line: 129, column: 16)
!1699 = !DILocation(line: 133, column: 8, scope: !1698)
!1700 = !DILocalVariable(name: "wn", scope: !1698, file: !51, line: 130, type: !10)
!1701 = !DILocation(line: 0, scope: !1698)
!1702 = !DILocation(line: 134, column: 8, scope: !1698)
!1703 = !DILocalVariable(name: "wx", scope: !1698, file: !51, line: 130, type: !10)
!1704 = !DILocation(line: 135, column: 18, scope: !1698)
!1705 = !DILocation(line: 135, column: 12, scope: !1698)
!1706 = !DILocation(line: 135, column: 24, scope: !1698)
!1707 = !DILocation(line: 135, column: 30, scope: !1698)
!1708 = distinct !{!1708, !1695, !1709, !90}
!1709 = !DILocation(line: 136, column: 2, scope: !1588)
!1710 = !DILocation(line: 141, column: 14, scope: !1588)
!1711 = !DILocation(line: 141, column: 10, scope: !1588)
!1712 = !DILocalVariable(name: "mp", scope: !1588, file: !51, line: 41, type: !206)
!1713 = !DILocation(line: 142, column: 2, scope: !1588)
!1714 = !DILocation(line: 142, column: 24, scope: !1588)
!1715 = !DILocation(line: 147, column: 22, scope: !1588)
!1716 = !DILocation(line: 147, column: 8, scope: !1588)
!1717 = !DILocalVariable(name: "q0i", scope: !1588, file: !51, line: 37, type: !207)
!1718 = !DILocation(line: 148, column: 10, scope: !1588)
!1719 = !DILocalVariable(name: "s2", scope: !1588, file: !51, line: 41, type: !206)
!1720 = !DILocation(line: 149, column: 2, scope: !1588)
!1721 = !DILocation(line: 150, column: 33, scope: !1588)
!1722 = !DILocation(line: 150, column: 41, scope: !1588)
!1723 = !DILocation(line: 151, column: 10, scope: !1588)
!1724 = !DILocation(line: 151, column: 6, scope: !1588)
!1725 = !DILocation(line: 151, column: 28, scope: !1588)
!1726 = !DILocation(line: 151, column: 24, scope: !1588)
!1727 = !DILocation(line: 150, column: 7, scope: !1588)
!1728 = !DILocation(line: 150, column: 4, scope: !1588)
!1729 = !DILocation(line: 156, column: 22, scope: !1588)
!1730 = !DILocation(line: 156, column: 8, scope: !1588)
!1731 = !DILocalVariable(name: "p0i", scope: !1588, file: !51, line: 37, type: !207)
!1732 = !DILocation(line: 157, column: 14, scope: !1588)
!1733 = !DILocation(line: 157, column: 10, scope: !1588)
!1734 = !DILocalVariable(name: "s1", scope: !1588, file: !51, line: 41, type: !206)
!1735 = !DILocation(line: 158, column: 2, scope: !1588)
!1736 = !DILocation(line: 159, column: 33, scope: !1588)
!1737 = !DILocation(line: 159, column: 41, scope: !1588)
!1738 = !DILocation(line: 160, column: 10, scope: !1588)
!1739 = !DILocation(line: 160, column: 6, scope: !1588)
!1740 = !DILocation(line: 160, column: 28, scope: !1588)
!1741 = !DILocation(line: 160, column: 24, scope: !1588)
!1742 = !DILocation(line: 159, column: 7, scope: !1588)
!1743 = !DILocation(line: 159, column: 4, scope: !1588)
!1744 = !DILocation(line: 175, column: 14, scope: !1588)
!1745 = !DILocation(line: 175, column: 10, scope: !1588)
!1746 = !DILocation(line: 176, column: 14, scope: !1588)
!1747 = !DILocation(line: 176, column: 10, scope: !1588)
!1748 = !DILocation(line: 177, column: 2, scope: !1588)
!1749 = !DILocation(line: 178, column: 21, scope: !1588)
!1750 = !DILocation(line: 178, column: 2, scope: !1588)
!1751 = !DILocation(line: 179, column: 2, scope: !1588)
!1752 = !DILocation(line: 180, column: 31, scope: !1588)
!1753 = !DILocation(line: 180, column: 39, scope: !1588)
!1754 = !DILocation(line: 180, column: 2, scope: !1588)
!1755 = !DILocation(line: 181, column: 2, scope: !1588)
!1756 = !DILocation(line: 196, column: 2, scope: !1588)
!1757 = !DILocation(line: 202, column: 2, scope: !1588)
!1758 = !DILocation(line: 208, column: 9, scope: !1588)
!1759 = !DILocation(line: 208, column: 15, scope: !1588)
!1760 = !DILocation(line: 208, column: 13, scope: !1588)
!1761 = !DILocation(line: 208, column: 19, scope: !1588)
!1762 = !DILocation(line: 208, column: 2, scope: !1588)
!1763 = !DILocation(line: 209, column: 1, scope: !1588)
!1764 = distinct !DISubprogram(name: "br_i15_zero", scope: !93, file: !93, line: 1537, type: !504, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !2)
!1765 = !DILocalVariable(name: "x", arg: 1, scope: !1764, file: !93, line: 1537, type: !206)
!1766 = !DILocation(line: 0, scope: !1764)
!1767 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1764, file: !93, line: 1537, type: !207)
!1768 = !DILocation(line: 1539, column: 5, scope: !1764)
!1769 = !DILocation(line: 1539, column: 8, scope: !1764)
!1770 = !DILocation(line: 1540, column: 2, scope: !1764)
!1771 = !DILocation(line: 1540, column: 17, scope: !1764)
!1772 = !DILocation(line: 1540, column: 25, scope: !1764)
!1773 = !DILocation(line: 1540, column: 31, scope: !1764)
!1774 = !DILocation(line: 1540, column: 15, scope: !1764)
!1775 = !DILocation(line: 1540, column: 37, scope: !1764)
!1776 = !DILocation(line: 1541, column: 1, scope: !1764)
