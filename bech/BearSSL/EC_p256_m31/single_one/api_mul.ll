; ModuleID = 'api_mul.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_ec_impl = type { i32, i8* (i32, i64*)*, i8* (i32, i64*)*, i64 (i32, i64*)*, i32 (i8*, i64, i8*, i64, i32)*, i64 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* }
%struct.smack_value = type { i8* }
%struct.p256_jacobian = type { [9 x i32], [9 x i32], [9 x i32] }

@br_ec_p256_m31 = dso_local constant %struct.br_ec_impl { i32 8388608, i8* (i32, i64*)* @api_generator, i8* (i32, i64*)* @api_order, i64 (i32, i64*)* @api_xoff, i32 (i8*, i64, i8*, i64, i32)* @api_mul, i64 (i8*, i8*, i64, i32)* @api_mulgen, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* @api_muladd }, align 8, !dbg !0
@F256 = internal constant [9 x i32] [i32 1073741823, i32 1073741823, i32 1073741823, i32 63, i32 0, i32 0, i32 4096, i32 1073725440, i32 65535], align 16, !dbg !37
@Gwin = internal constant [15 x [18 x i32]] [[18 x i32] [i32 412664470, i32 310699287, i32 515062287, i32 14639179, i32 608236151, i32 865834382, i32 69500811, i32 880588875, i32 27415, i32 935285237, i32 785973664, i32 857074924, i32 864867802, i32 262018603, i32 531442160, i32 670677230, i32 280543110, i32 20451], [18 x i32] [i32 124164472, i32 405611505, i32 1059173210, i32 576354461, i32 890946496, i32 148900882, i32 888662181, i32 516301632, i32 31986, i32 578319313, i32 940760692, i32 244851353, i32 527137167, i32 875617210, i32 912988797, i32 755237523, i32 356792035, i32 1911], [18 x i32] [i32 115866988, i32 755341423, i32 987404383, i32 833472635, i32 200369638, i32 532567157, i32 816073871, i32 959736204, i32 24267, i32 578637874, i32 702989470, i32 83592153, i32 179047822, i32 614657240, i32 739981417, i32 267903860, i32 419631718, i32 34612], [18 x i32] [i32 721619026, i32 38537489, i32 89747189, i32 133740254, i32 640405507, i32 930715259, i32 150714882, i32 311250100, i32 57939, i32 407820486, i32 822806780, i32 820904021, i32 1059434748, i32 103642702, i32 1069121386, i32 869036445, i32 366383896, i32 57585], [18 x i32] [i32 63976429, i32 89466935, i32 901665346, i32 589348679, i32 646963183, i32 320952353, i32 336407928, i32 48141396, i32 20825, i32 1033989540, i32 121826579, i32 226527373, i32 4964405, i32 175711757, i32 117234430, i32 656922798, i32 527049746, i32 57537], [18 x i32] [i32 1008898473, i32 448965540, i32 992041804, i32 320668538, i32 400417538, i32 210809570, i32 100845869, i32 97164713, i32 45082, i32 264732642, i32 904995150, i32 132213727, i32 4054023, i32 654539036, i32 809023470, i32 1034770174, i32 69012621, i32 59484], [18 x i32] [i32 830976675, i32 1614272, i32 16709043, i32 1048456746, i32 33251454, i32 750885360, i32 934568539, i32 249292847, i32 36435, i32 32768180, i32 360213019, i32 809611804, i32 835554546, i32 898629715, i32 444468891, i32 830695120, i32 124745740, i32 29675], [18 x i32] [i32 460305299, i32 326530823, i32 1021935035, i32 881731075, i32 894217665, i32 164672746, i32 453325828, i32 501706682, i32 25305, i32 252286334, i32 693119400, i32 1047963533, i32 995392942, i32 667869346, i32 91610181, i32 495076607, i32 858743930, i32 44378], [18 x i32] [i32 278175456, i32 511322414, i32 115313469, i32 45277963, i32 838365854, i32 618878069, i32 817305720, i32 904773559, i32 60008, i32 231753978, i32 560498985, i32 233317374, i32 475265705, i32 245418061, i32 86661418, i32 533624944, i32 288513202, i32 10791], [18 x i32] [i32 80048703, i32 819468880, i32 75695844, i32 849023431, i32 574600517, i32 139675560, i32 697558417, i32 458934926, i32 52982, i32 78579571, i32 684912297, i32 659681004, i32 58411647, i32 994840665, i32 150173300, i32 719914721, i32 413698666, i32 34694], [18 x i32] [i32 884744657, i32 214845261, i32 352619508, i32 487306249, i32 35445270, i32 551450307, i32 885362787, i32 82698766, i32 16081, i32 673855296, i32 199474163, i32 696819118, i32 54605463, i32 885426697, i32 554614419, i32 210379340, i32 136753969, i32 37017], [18 x i32] [i32 103080900, i32 335747002, i32 797100445, i32 638323244, i32 634737017, i32 424529027, i32 1033233506, i32 896494085, i32 29725, i32 222593491, i32 643300491, i32 463850097, i32 988039949, i32 129062030, i32 235754786, i32 100517223, i32 756721422, i32 1904], [18 x i32] [i32 101133313, i32 595949173, i32 514676905, i32 193598169, i32 518192249, i32 24628065, i32 76916248, i32 551467051, i32 6012, i32 801619928, i32 823062411, i32 531947321, i32 998584552, i32 256799270, i32 38188752, i32 710248996, i32 372462511, i32 25531], [18 x i32] [i32 617779723, i32 472161740, i32 543802853, i32 162213790, i32 920599793, i32 428997900, i32 103520167, i32 511706894, i32 21735, i32 550548341, i32 782180541, i32 889782401, i32 477797852, i32 585614193, i32 142487574, i32 51860513, i32 1013893757, i32 62873], [18 x i32] [i32 630955359, i32 228209039, i32 597749526, i32 15459511, i32 142763438, i32 752756326, i32 732855007, i32 326215110, i32 61509, i32 218320694, i32 529953656, i32 459252724, i32 248017821, i32 373548586, i32 374576254, i32 584185062, i32 263771723, i32 46521]], align 16, !dbg !45
@P256_B = internal constant [9 x i32] [i32 668098635, i32 792260856, i32 87756643, i32 121744435, i32 411483237, i32 787830234, i32 691960638, i32 225847950, i32 23238], align 16, !dbg !43
@P256_N = internal constant [32 x i8] c"\FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\BC\E6\FA\AD\A7\17\9E\84\F3\B9\CA\C2\FCc%Q", align 16, !dbg !32
@P256_G = internal constant [65 x i8] c"\04k\17\D1\F2\E1,BG\F8\BC\E6\E5c\A4@\F2w\03}\81-\EB3\A0\F4\A19E\D8\98\C2\96O\E3B\E2\FE\1A\7F\9B\8E\E7\EBJ|\0F\9E\16+\CE3Wk1^\CE\CB\B6@h7\BFQ\F5", align 16, !dbg !26

; Function Attrs: noinline nounwind uwtable
define dso_local void @api_mul_wrapper(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 !dbg !91 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i64 %1, metadata !96, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i8* %2, metadata !97, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i64 %3, metadata !98, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i32 %4, metadata !99, metadata !DIExpression()), !dbg !95
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !100
  call void @public_in(%struct.smack_value* %6), !dbg !101
  %7 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %1), !dbg !102
  call void @public_in(%struct.smack_value* %7), !dbg !103
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !104
  call void @public_in(%struct.smack_value* %8), !dbg !105
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !106
  call void @public_in(%struct.smack_value* %9), !dbg !107
  %10 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %4), !dbg !108
  call void @public_in(%struct.smack_value* %10), !dbg !109
  %11 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 64), !dbg !110
  call void @public_in(%struct.smack_value* %11), !dbg !111
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_p256_m31, metadata !112, metadata !DIExpression()), !dbg !95
  %12 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_p256_m31, i32 0, i32 4, !dbg !125
  %13 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %12, align 8, !dbg !125
  %14 = call i32 %13(i8* %0, i64 %1, i8* %2, i64 %3, i32 23), !dbg !126
  ret void, !dbg !127
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @api_mul_wrapper_t() #0 !dbg !128 {
  %1 = call i8* (...) @getunsigned(), !dbg !131
  call void @llvm.dbg.value(metadata i8* %1, metadata !132, metadata !DIExpression()), !dbg !133
  %2 = call i64 (...) @getsize_t(), !dbg !134
  call void @llvm.dbg.value(metadata i64 %2, metadata !135, metadata !DIExpression()), !dbg !133
  %3 = call i8* (...) @getusn(), !dbg !136
  call void @llvm.dbg.value(metadata i8* %3, metadata !137, metadata !DIExpression()), !dbg !133
  %4 = call i64 (...) @getsize_t2(), !dbg !138
  call void @llvm.dbg.value(metadata i64 %4, metadata !139, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i32 29, metadata !140, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_p256_m31, metadata !141, metadata !DIExpression()), !dbg !133
  %5 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_p256_m31, i32 0, i32 4, !dbg !142
  %6 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %5, align 8, !dbg !142
  %7 = call i32 %6(i8* %1, i64 %2, i8* %3, i64 %4, i32 23), !dbg !143
  ret void, !dbg !144
}

declare dso_local i8* @getunsigned(...) #2

declare dso_local i64 @getsize_t(...) #2

declare dso_local i8* @getusn(...) #2

declare dso_local i64 @getsize_t2(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ccopy(i32 %0, i8* %1, i8* %2, i64 %3) #0 !dbg !145 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %1, metadata !152, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %2, metadata !153, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i64 %3, metadata !154, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %1, metadata !155, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %2, metadata !156, metadata !DIExpression()), !dbg !151
  br label %5, !dbg !157

5:                                                ; preds = %8, %4
  %.02 = phi i64 [ %3, %4 ], [ %6, %8 ]
  %.01 = phi i8* [ %1, %4 ], [ %16, %8 ], !dbg !151
  %.0 = phi i8* [ %2, %4 ], [ %9, %8 ], !dbg !151
  call void @llvm.dbg.value(metadata i8* %.0, metadata !156, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %.01, metadata !155, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i64 %.02, metadata !154, metadata !DIExpression()), !dbg !151
  %6 = add i64 %.02, -1, !dbg !158
  call void @llvm.dbg.value(metadata i64 %6, metadata !154, metadata !DIExpression()), !dbg !151
  %7 = icmp ugt i64 %.02, 0, !dbg !159
  br i1 %7, label %8, label %17, !dbg !157

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !160
  call void @llvm.dbg.value(metadata i8* %9, metadata !156, metadata !DIExpression()), !dbg !151
  %10 = load i8, i8* %.0, align 1, !dbg !162
  %11 = zext i8 %10 to i32, !dbg !162
  call void @llvm.dbg.value(metadata i32 %11, metadata !163, metadata !DIExpression()), !dbg !164
  %12 = load i8, i8* %.01, align 1, !dbg !165
  %13 = zext i8 %12 to i32, !dbg !165
  call void @llvm.dbg.value(metadata i32 %13, metadata !166, metadata !DIExpression()), !dbg !164
  %14 = call i32 @MUX(i32 %0, i32 %11, i32 %13), !dbg !167
  %15 = trunc i32 %14 to i8, !dbg !167
  store i8 %15, i8* %.01, align 1, !dbg !168
  %16 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !169
  call void @llvm.dbg.value(metadata i8* %16, metadata !155, metadata !DIExpression()), !dbg !151
  br label %5, !dbg !157, !llvm.loop !170

17:                                               ; preds = %5
  ret void, !dbg !173
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !174 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i32 %1, metadata !180, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i32 %2, metadata !181, metadata !DIExpression()), !dbg !179
  %4 = sub i32 0, %0, !dbg !182
  %5 = xor i32 %1, %2, !dbg !183
  %6 = and i32 %4, %5, !dbg !184
  %7 = xor i32 %2, %6, !dbg !185
  ret i32 %7, !dbg !186
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @api_generator(i32 %0, i64* %1) #0 !dbg !187 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64* %1, metadata !190, metadata !DIExpression()), !dbg !189
  store i64 65, i64* %1, align 8, !dbg !191
  ret i8* getelementptr inbounds ([65 x i8], [65 x i8]* @P256_G, i64 0, i64 0), !dbg !192
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @api_order(i32 %0, i64* %1) #0 !dbg !193 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i64* %1, metadata !196, metadata !DIExpression()), !dbg !195
  store i64 32, i64* %1, align 8, !dbg !197
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @P256_N, i64 0, i64 0), !dbg !198
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @api_xoff(i32 %0, i64* %1) #0 !dbg !199 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i64* %1, metadata !202, metadata !DIExpression()), !dbg !201
  store i64 32, i64* %1, align 8, !dbg !203
  ret i64 1, !dbg !204
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_mul(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 !dbg !205 {
  %6 = alloca %struct.p256_jacobian, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i64 %1, metadata !208, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i8* %2, metadata !209, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i64 %3, metadata !210, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i32 %4, metadata !211, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %6, metadata !212, metadata !DIExpression()), !dbg !220
  %7 = icmp ne i64 %1, 65, !dbg !221
  br i1 %7, label %8, label %9, !dbg !223

8:                                                ; preds = %5
  br label %11, !dbg !224

9:                                                ; preds = %5
  %10 = call i32 @p256_decode(%struct.p256_jacobian* %6, i8* %0, i64 %1), !dbg !226
  call void @llvm.dbg.value(metadata i32 %10, metadata !227, metadata !DIExpression()), !dbg !207
  call void @p256_mul(%struct.p256_jacobian* %6, i8* %2, i64 %3), !dbg !228
  call void @p256_to_affine(%struct.p256_jacobian* %6), !dbg !229
  call void @p256_encode(i8* %0, %struct.p256_jacobian* %6), !dbg !230
  br label %11, !dbg !231

11:                                               ; preds = %9, %8
  %.0 = phi i32 [ 0, %8 ], [ %10, %9 ], !dbg !207
  ret i32 %.0, !dbg !232
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @api_mulgen(i8* %0, i8* %1, i64 %2, i32 %3) #0 !dbg !233 {
  %5 = alloca %struct.p256_jacobian, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i8* %1, metadata !236, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i64 %2, metadata !237, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 %3, metadata !238, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %5, metadata !239, metadata !DIExpression()), !dbg !240
  call void @p256_mulgen(%struct.p256_jacobian* %5, i8* %1, i64 %2), !dbg !241
  call void @p256_to_affine(%struct.p256_jacobian* %5), !dbg !242
  call void @p256_encode(i8* %0, %struct.p256_jacobian* %5), !dbg !243
  ret i64 65, !dbg !244
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_muladd(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 !dbg !245 {
  %9 = alloca %struct.p256_jacobian, align 4
  %10 = alloca %struct.p256_jacobian, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i8* %1, metadata !248, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i64 %2, metadata !249, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i8* %3, metadata !250, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i64 %4, metadata !251, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i8* %5, metadata !252, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i64 %6, metadata !253, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i32 %7, metadata !254, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %9, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %10, metadata !257, metadata !DIExpression()), !dbg !258
  %11 = icmp ne i64 %2, 65, !dbg !259
  br i1 %11, label %12, label %13, !dbg !261

12:                                               ; preds = %8
  br label %44, !dbg !262

13:                                               ; preds = %8
  %14 = call i32 @p256_decode(%struct.p256_jacobian* %9, i8* %0, i64 %2), !dbg !264
  call void @llvm.dbg.value(metadata i32 %14, metadata !265, metadata !DIExpression()), !dbg !247
  call void @p256_mul(%struct.p256_jacobian* %9, i8* %3, i64 %4), !dbg !266
  %15 = icmp eq i8* %1, null, !dbg !267
  br i1 %15, label %16, label %17, !dbg !269

16:                                               ; preds = %13
  call void @p256_mulgen(%struct.p256_jacobian* %10, i8* %5, i64 %6), !dbg !270
  br label %20, !dbg !272

17:                                               ; preds = %13
  %18 = call i32 @p256_decode(%struct.p256_jacobian* %10, i8* %1, i64 %2), !dbg !273
  %19 = and i32 %14, %18, !dbg !275
  call void @llvm.dbg.value(metadata i32 %19, metadata !265, metadata !DIExpression()), !dbg !247
  call void @p256_mul(%struct.p256_jacobian* %10, i8* %5, i64 %6), !dbg !276
  br label %20

20:                                               ; preds = %17, %16
  %.03 = phi i32 [ %14, %16 ], [ %19, %17 ], !dbg !247
  call void @llvm.dbg.value(metadata i32 %.03, metadata !265, metadata !DIExpression()), !dbg !247
  %21 = call i32 @p256_add(%struct.p256_jacobian* %9, %struct.p256_jacobian* %10), !dbg !277
  call void @llvm.dbg.value(metadata i32 %21, metadata !278, metadata !DIExpression()), !dbg !247
  %22 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !279
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %22, i64 0, i64 0, !dbg !280
  %24 = call i32 @reduce_final_f256(i32* %23), !dbg !281
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i32 0, metadata !283, metadata !DIExpression()), !dbg !247
  br label %25, !dbg !284

25:                                               ; preds = %33, %20
  %.02 = phi i32 [ 0, %20 ], [ %32, %33 ], !dbg !247
  %.01 = phi i32 [ 0, %20 ], [ %34, %33 ], !dbg !286
  call void @llvm.dbg.value(metadata i32 %.01, metadata !283, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i32 %.02, metadata !282, metadata !DIExpression()), !dbg !247
  %26 = icmp slt i32 %.01, 9, !dbg !287
  br i1 %26, label %27, label %35, !dbg !289

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !290
  %29 = sext i32 %.01 to i64, !dbg !292
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %28, i64 0, i64 %29, !dbg !292
  %31 = load i32, i32* %30, align 4, !dbg !292
  %32 = or i32 %.02, %31, !dbg !293
  call void @llvm.dbg.value(metadata i32 %32, metadata !282, metadata !DIExpression()), !dbg !247
  br label %33, !dbg !294

33:                                               ; preds = %27
  %34 = add nsw i32 %.01, 1, !dbg !295
  call void @llvm.dbg.value(metadata i32 %34, metadata !283, metadata !DIExpression()), !dbg !247
  br label %25, !dbg !296, !llvm.loop !297

35:                                               ; preds = %25
  %36 = call i32 @EQ(i32 %.02, i32 0), !dbg !299
  call void @llvm.dbg.value(metadata i32 %36, metadata !282, metadata !DIExpression()), !dbg !247
  call void @p256_double(%struct.p256_jacobian* %10), !dbg !300
  %37 = xor i32 %21, -1, !dbg !301
  %38 = and i32 %36, %37, !dbg !302
  %39 = bitcast %struct.p256_jacobian* %9 to i8*, !dbg !303
  %40 = bitcast %struct.p256_jacobian* %10 to i8*, !dbg !304
  call void @br_ccopy(i32 %38, i8* %39, i8* %40, i64 108), !dbg !305
  call void @p256_to_affine(%struct.p256_jacobian* %9), !dbg !306
  call void @p256_encode(i8* %0, %struct.p256_jacobian* %9), !dbg !307
  %41 = and i32 %36, %21, !dbg !308
  %42 = xor i32 %41, -1, !dbg !309
  %43 = and i32 %.03, %42, !dbg !310
  call void @llvm.dbg.value(metadata i32 %43, metadata !265, metadata !DIExpression()), !dbg !247
  br label %44, !dbg !311

44:                                               ; preds = %35, %12
  %.0 = phi i32 [ 0, %12 ], [ %43, %35 ], !dbg !247
  ret i32 %.0, !dbg !312
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @p256_decode(%struct.p256_jacobian* %0, i8* %1, i64 %2) #0 !dbg !313 {
  %4 = alloca [9 x i32], align 16
  %5 = alloca [9 x i32], align 16
  %6 = alloca [9 x i32], align 16
  %7 = alloca [9 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i8* %1, metadata !319, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i64 %2, metadata !320, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata [9 x i32]* %4, metadata !321, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata [9 x i32]* %5, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata [9 x i32]* %6, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata [9 x i32]* %7, metadata !327, metadata !DIExpression()), !dbg !328
  %8 = icmp ne i64 %2, 65, !dbg !329
  br i1 %8, label %9, label %10, !dbg !331

9:                                                ; preds = %3
  br label %78, !dbg !332

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8* %1, metadata !334, metadata !DIExpression()), !dbg !318
  %11 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !335
  %12 = load i8, i8* %11, align 1, !dbg !335
  %13 = zext i8 %12 to i32, !dbg !335
  %14 = call i32 @NEQ(i32 %13, i32 4), !dbg !336
  call void @llvm.dbg.value(metadata i32 %14, metadata !337, metadata !DIExpression()), !dbg !318
  %15 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !338
  %16 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !339
  %17 = call i32 @be8_to_le30(i32* %15, i8* %16, i64 32), !dbg !340
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 8, !dbg !341
  store i32 %17, i32* %18, align 16, !dbg !342
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !343
  %20 = getelementptr inbounds i8, i8* %1, i64 33, !dbg !344
  %21 = call i32 @be8_to_le30(i32* %19, i8* %20, i64 32), !dbg !345
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 8, !dbg !346
  store i32 %21, i32* %22, align 16, !dbg !347
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !348
  %24 = call i32 @reduce_final_f256(i32* %23), !dbg !349
  %25 = or i32 %14, %24, !dbg !350
  call void @llvm.dbg.value(metadata i32 %25, metadata !337, metadata !DIExpression()), !dbg !318
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !351
  %27 = call i32 @reduce_final_f256(i32* %26), !dbg !352
  %28 = or i32 %25, %27, !dbg !353
  call void @llvm.dbg.value(metadata i32 %28, metadata !337, metadata !DIExpression()), !dbg !318
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !354
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !355
  call void @square_f256(i32* %29, i32* %30), !dbg !356
  %31 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !357
  %32 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !358
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !359
  call void @mul_f256(i32* %31, i32* %32, i32* %33), !dbg !360
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !361
  %35 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !362
  call void @square_f256(i32* %34, i32* %35), !dbg !363
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !364
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !365
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !366
  call void @sub_f256(i32* %36, i32* %37, i32* %38), !dbg !367
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !368
  %40 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !369
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !370
  call void @sub_f256(i32* %39, i32* %40, i32* %41), !dbg !371
  %42 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !372
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !373
  %44 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !374
  call void @sub_f256(i32* %42, i32* %43, i32* %44), !dbg !375
  %45 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !376
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !377
  call void @add_f256(i32* %45, i32* %46, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @P256_B, i64 0, i64 0)), !dbg !378
  %47 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !379
  %48 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !380
  %49 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !381
  call void @sub_f256(i32* %47, i32* %48, i32* %49), !dbg !382
  %50 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !383
  %51 = call i32 @reduce_final_f256(i32* %50), !dbg !384
  call void @llvm.dbg.value(metadata i32 0, metadata !385, metadata !DIExpression()), !dbg !318
  br label %52, !dbg !386

52:                                               ; preds = %59, %10
  %.02 = phi i32 [ %28, %10 ], [ %58, %59 ], !dbg !318
  %.01 = phi i32 [ 0, %10 ], [ %60, %59 ], !dbg !388
  call void @llvm.dbg.value(metadata i32 %.01, metadata !385, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 %.02, metadata !337, metadata !DIExpression()), !dbg !318
  %53 = icmp slt i32 %.01, 9, !dbg !389
  br i1 %53, label %54, label %61, !dbg !391

54:                                               ; preds = %52
  %55 = sext i32 %.01 to i64, !dbg !392
  %56 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 %55, !dbg !392
  %57 = load i32, i32* %56, align 4, !dbg !392
  %58 = or i32 %.02, %57, !dbg !394
  call void @llvm.dbg.value(metadata i32 %58, metadata !337, metadata !DIExpression()), !dbg !318
  br label %59, !dbg !395

59:                                               ; preds = %54
  %60 = add nsw i32 %.01, 1, !dbg !396
  call void @llvm.dbg.value(metadata i32 %60, metadata !385, metadata !DIExpression()), !dbg !318
  br label %52, !dbg !397, !llvm.loop !398

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !400
  %63 = getelementptr inbounds [9 x i32], [9 x i32]* %62, i64 0, i64 0, !dbg !401
  %64 = bitcast i32* %63 to i8*, !dbg !401
  %65 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !401
  %66 = bitcast i32* %65 to i8*, !dbg !401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 16 %66, i64 36, i1 false), !dbg !401
  %67 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !402
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %67, i64 0, i64 0, !dbg !403
  %69 = bitcast i32* %68 to i8*, !dbg !403
  %70 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !403
  %71 = bitcast i32* %70 to i8*, !dbg !403
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 16 %71, i64 36, i1 false), !dbg !403
  %72 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !404
  %73 = getelementptr inbounds [9 x i32], [9 x i32]* %72, i64 0, i64 0, !dbg !405
  %74 = bitcast i32* %73 to i8*, !dbg !405
  call void @llvm.memset.p0i8.i64(i8* align 4 %74, i8 0, i64 36, i1 false), !dbg !405
  %75 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !406
  %76 = getelementptr inbounds [9 x i32], [9 x i32]* %75, i64 0, i64 0, !dbg !407
  store i32 1, i32* %76, align 4, !dbg !408
  %77 = call i32 @EQ(i32 %.02, i32 0), !dbg !409
  br label %78, !dbg !410

78:                                               ; preds = %61, %9
  %.0 = phi i32 [ 0, %9 ], [ %77, %61 ], !dbg !318
  ret i32 %.0, !dbg !411
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_mul(%struct.p256_jacobian* %0, i8* %1, i64 %2) #0 !dbg !412 {
  %4 = alloca %struct.p256_jacobian, align 4
  %5 = alloca %struct.p256_jacobian, align 4
  %6 = alloca %struct.p256_jacobian, align 4
  %7 = alloca %struct.p256_jacobian, align 4
  %8 = alloca %struct.p256_jacobian, align 4
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i8* %1, metadata !417, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 %2, metadata !418, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %4, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %5, metadata !421, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %6, metadata !423, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %7, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %8, metadata !427, metadata !DIExpression()), !dbg !428
  %9 = bitcast %struct.p256_jacobian* %4 to i8*, !dbg !429
  %10 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !429
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 108, i1 false), !dbg !429
  call void @p256_double(%struct.p256_jacobian* %4), !dbg !430
  %11 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !431
  %12 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 108, i1 false), !dbg !431
  %13 = call i32 @p256_add(%struct.p256_jacobian* %5, %struct.p256_jacobian* %4), !dbg !432
  %14 = bitcast %struct.p256_jacobian* %6 to i8*, !dbg !433
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 108, i1 false), !dbg !433
  call void @llvm.dbg.value(metadata i32 1, metadata !434, metadata !DIExpression()), !dbg !416
  br label %15, !dbg !435

15:                                               ; preds = %49, %3
  %.03 = phi i32 [ 1, %3 ], [ %.1, %49 ], !dbg !436
  %.02 = phi i64 [ %2, %3 ], [ %16, %49 ]
  %.01 = phi i8* [ %1, %3 ], [ %50, %49 ]
  call void @llvm.dbg.value(metadata i8* %.01, metadata !417, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 %.02, metadata !418, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i32 %.03, metadata !434, metadata !DIExpression()), !dbg !416
  %16 = add i64 %.02, -1, !dbg !437
  call void @llvm.dbg.value(metadata i64 %16, metadata !418, metadata !DIExpression()), !dbg !416
  %17 = icmp ugt i64 %.02, 0, !dbg !438
  br i1 %17, label %18, label %51, !dbg !435

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 6, metadata !439, metadata !DIExpression()), !dbg !441
  br label %19, !dbg !442

19:                                               ; preds = %47, %18
  %.1 = phi i32 [ %.03, %18 ], [ %46, %47 ], !dbg !416
  %.0 = phi i32 [ 6, %18 ], [ %48, %47 ], !dbg !444
  call void @llvm.dbg.value(metadata i32 %.0, metadata !439, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i32 %.1, metadata !434, metadata !DIExpression()), !dbg !416
  %20 = icmp sge i32 %.0, 0, !dbg !445
  br i1 %20, label %21, label %49, !dbg !447

21:                                               ; preds = %19
  call void @p256_double(%struct.p256_jacobian* %6), !dbg !448
  call void @p256_double(%struct.p256_jacobian* %6), !dbg !450
  %22 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !451
  %23 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !451
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 108, i1 false), !dbg !451
  %24 = bitcast %struct.p256_jacobian* %8 to i8*, !dbg !452
  %25 = bitcast %struct.p256_jacobian* %6 to i8*, !dbg !452
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 108, i1 false), !dbg !452
  %26 = load i8, i8* %.01, align 1, !dbg !453
  %27 = zext i8 %26 to i32, !dbg !453
  %28 = ashr i32 %27, %.0, !dbg !454
  %29 = and i32 %28, 3, !dbg !455
  call void @llvm.dbg.value(metadata i32 %29, metadata !456, metadata !DIExpression()), !dbg !457
  %30 = call i32 @NEQ(i32 %29, i32 0), !dbg !458
  call void @llvm.dbg.value(metadata i32 %30, metadata !459, metadata !DIExpression()), !dbg !457
  %31 = call i32 @EQ(i32 %29, i32 2), !dbg !460
  %32 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !461
  %33 = bitcast %struct.p256_jacobian* %4 to i8*, !dbg !462
  call void @br_ccopy(i32 %31, i8* %32, i8* %33, i64 108), !dbg !463
  %34 = call i32 @EQ(i32 %29, i32 3), !dbg !464
  %35 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !465
  %36 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !466
  call void @br_ccopy(i32 %34, i8* %35, i8* %36, i64 108), !dbg !467
  %37 = call i32 @p256_add(%struct.p256_jacobian* %8, %struct.p256_jacobian* %7), !dbg !468
  %38 = and i32 %30, %.1, !dbg !469
  %39 = bitcast %struct.p256_jacobian* %6 to i8*, !dbg !470
  %40 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !471
  call void @br_ccopy(i32 %38, i8* %39, i8* %40, i64 108), !dbg !472
  %41 = xor i32 %.1, -1, !dbg !473
  %42 = and i32 %30, %41, !dbg !474
  %43 = bitcast %struct.p256_jacobian* %6 to i8*, !dbg !475
  %44 = bitcast %struct.p256_jacobian* %8 to i8*, !dbg !476
  call void @br_ccopy(i32 %42, i8* %43, i8* %44, i64 108), !dbg !477
  %45 = xor i32 %30, -1, !dbg !478
  %46 = and i32 %.1, %45, !dbg !479
  call void @llvm.dbg.value(metadata i32 %46, metadata !434, metadata !DIExpression()), !dbg !416
  br label %47, !dbg !480

47:                                               ; preds = %21
  %48 = sub nsw i32 %.0, 2, !dbg !481
  call void @llvm.dbg.value(metadata i32 %48, metadata !439, metadata !DIExpression()), !dbg !441
  br label %19, !dbg !482, !llvm.loop !483

49:                                               ; preds = %19
  %50 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !485
  call void @llvm.dbg.value(metadata i8* %50, metadata !417, metadata !DIExpression()), !dbg !416
  br label %15, !dbg !435, !llvm.loop !486

51:                                               ; preds = %15
  %52 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !488
  %53 = bitcast %struct.p256_jacobian* %6 to i8*, !dbg !488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 108, i1 false), !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_mulgen(%struct.p256_jacobian* %0, i8* %1, i64 %2) #0 !dbg !490 {
  %4 = alloca %struct.p256_jacobian, align 4
  %5 = alloca %struct.p256_jacobian, align 4
  %6 = alloca %struct.p256_jacobian, align 4
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata i8* %1, metadata !493, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata i64 %2, metadata !494, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %4, metadata !495, metadata !DIExpression()), !dbg !496
  %7 = bitcast %struct.p256_jacobian* %4 to i8*, !dbg !497
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 108, i1 false), !dbg !497
  call void @llvm.dbg.value(metadata i32 1, metadata !498, metadata !DIExpression()), !dbg !492
  br label %8, !dbg !499

8:                                                ; preds = %36, %3
  %.03 = phi i32 [ 1, %3 ], [ %.1, %36 ], !dbg !500
  %.02 = phi i64 [ %2, %3 ], [ %9, %36 ]
  %.01 = phi i8* [ %1, %3 ], [ %12, %36 ]
  call void @llvm.dbg.value(metadata i8* %.01, metadata !493, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata i64 %.02, metadata !494, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata i32 %.03, metadata !498, metadata !DIExpression()), !dbg !492
  %9 = add i64 %.02, -1, !dbg !501
  call void @llvm.dbg.value(metadata i64 %9, metadata !494, metadata !DIExpression()), !dbg !492
  %10 = icmp ugt i64 %.02, 0, !dbg !502
  br i1 %10, label %11, label %37, !dbg !499

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !503
  call void @llvm.dbg.value(metadata i8* %12, metadata !493, metadata !DIExpression()), !dbg !492
  %13 = load i8, i8* %.01, align 1, !dbg !505
  %14 = zext i8 %13 to i32, !dbg !505
  call void @llvm.dbg.value(metadata i32 %14, metadata !506, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i32 0, metadata !508, metadata !DIExpression()), !dbg !507
  br label %15, !dbg !509

15:                                               ; preds = %34, %11
  %.04 = phi i32 [ 0, %11 ], [ %35, %34 ], !dbg !511
  %.1 = phi i32 [ %.03, %11 ], [ %32, %34 ], !dbg !492
  %.0 = phi i32 [ %14, %11 ], [ %33, %34 ], !dbg !507
  call void @llvm.dbg.value(metadata i32 %.0, metadata !506, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i32 %.1, metadata !498, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata i32 %.04, metadata !508, metadata !DIExpression()), !dbg !507
  %16 = icmp slt i32 %.04, 2, !dbg !512
  br i1 %16, label %17, label %36, !dbg !514

17:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %5, metadata !515, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %6, metadata !518, metadata !DIExpression()), !dbg !519
  call void @p256_double(%struct.p256_jacobian* %4), !dbg !520
  call void @p256_double(%struct.p256_jacobian* %4), !dbg !521
  call void @p256_double(%struct.p256_jacobian* %4), !dbg !522
  call void @p256_double(%struct.p256_jacobian* %4), !dbg !523
  %18 = lshr i32 %.0, 4, !dbg !524
  %19 = and i32 %18, 15, !dbg !525
  call void @llvm.dbg.value(metadata i32 %19, metadata !526, metadata !DIExpression()), !dbg !527
  %20 = call i32 @NEQ(i32 %19, i32 0), !dbg !528
  call void @llvm.dbg.value(metadata i32 %20, metadata !529, metadata !DIExpression()), !dbg !527
  call void @lookup_Gwin(%struct.p256_jacobian* %5, i32 %19), !dbg !530
  %21 = bitcast %struct.p256_jacobian* %6 to i8*, !dbg !531
  %22 = bitcast %struct.p256_jacobian* %4 to i8*, !dbg !531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 108, i1 false), !dbg !531
  %23 = call i32 @p256_add_mixed(%struct.p256_jacobian* %6, %struct.p256_jacobian* %5), !dbg !532
  %24 = and i32 %20, %.1, !dbg !533
  %25 = bitcast %struct.p256_jacobian* %4 to i8*, !dbg !534
  %26 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !535
  call void @br_ccopy(i32 %24, i8* %25, i8* %26, i64 108), !dbg !536
  %27 = xor i32 %.1, -1, !dbg !537
  %28 = and i32 %20, %27, !dbg !538
  %29 = bitcast %struct.p256_jacobian* %4 to i8*, !dbg !539
  %30 = bitcast %struct.p256_jacobian* %6 to i8*, !dbg !540
  call void @br_ccopy(i32 %28, i8* %29, i8* %30, i64 108), !dbg !541
  %31 = xor i32 %20, -1, !dbg !542
  %32 = and i32 %.1, %31, !dbg !543
  call void @llvm.dbg.value(metadata i32 %32, metadata !498, metadata !DIExpression()), !dbg !492
  %33 = shl i32 %.0, 4, !dbg !544
  call void @llvm.dbg.value(metadata i32 %33, metadata !506, metadata !DIExpression()), !dbg !507
  br label %34, !dbg !545

34:                                               ; preds = %17
  %35 = add nsw i32 %.04, 1, !dbg !546
  call void @llvm.dbg.value(metadata i32 %35, metadata !508, metadata !DIExpression()), !dbg !507
  br label %15, !dbg !547, !llvm.loop !548

36:                                               ; preds = %15
  br label %8, !dbg !499, !llvm.loop !550

37:                                               ; preds = %8
  %38 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !552
  %39 = bitcast %struct.p256_jacobian* %4 to i8*, !dbg !552
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 108, i1 false), !dbg !552
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @p256_add(%struct.p256_jacobian* %0, %struct.p256_jacobian* %1) #0 !dbg !554 {
  %3 = alloca [9 x i32], align 16
  %4 = alloca [9 x i32], align 16
  %5 = alloca [9 x i32], align 16
  %6 = alloca [9 x i32], align 16
  %7 = alloca [9 x i32], align 16
  %8 = alloca [9 x i32], align 16
  %9 = alloca [9 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !559, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !561, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.declare(metadata [9 x i32]* %3, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata [9 x i32]* %4, metadata !564, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.declare(metadata [9 x i32]* %5, metadata !566, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.declare(metadata [9 x i32]* %6, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata [9 x i32]* %7, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata [9 x i32]* %8, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata [9 x i32]* %9, metadata !574, metadata !DIExpression()), !dbg !575
  %10 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !576
  %11 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !577
  %12 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0, !dbg !578
  call void @square_f256(i32* %10, i32* %12), !dbg !579
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !580
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !581
  %15 = getelementptr inbounds [9 x i32], [9 x i32]* %14, i64 0, i64 0, !dbg !582
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !583
  call void @mul_f256(i32* %13, i32* %15, i32* %16), !dbg !584
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !585
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !586
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %18, i64 0, i64 0, !dbg !587
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !588
  call void @mul_f256(i32* %17, i32* %19, i32* %20), !dbg !589
  %21 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !590
  %22 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !591
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %22, i64 0, i64 0, !dbg !592
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !593
  call void @mul_f256(i32* %21, i32* %23, i32* %24), !dbg !594
  %25 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !595
  %26 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !596
  %27 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0, !dbg !597
  call void @square_f256(i32* %25, i32* %27), !dbg !598
  %28 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !599
  %29 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 0, !dbg !600
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %29, i64 0, i64 0, !dbg !601
  %31 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !602
  call void @mul_f256(i32* %28, i32* %30, i32* %31), !dbg !603
  %32 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !604
  %33 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !605
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 0, !dbg !606
  %35 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !607
  call void @mul_f256(i32* %32, i32* %34, i32* %35), !dbg !608
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !609
  %37 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 1, !dbg !610
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %37, i64 0, i64 0, !dbg !611
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !612
  call void @mul_f256(i32* %36, i32* %38, i32* %39), !dbg !613
  %40 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !614
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !615
  %42 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !616
  call void @sub_f256(i32* %40, i32* %41, i32* %42), !dbg !617
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !618
  %44 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !619
  %45 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !620
  call void @sub_f256(i32* %43, i32* %44, i32* %45), !dbg !621
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !622
  %47 = call i32 @reduce_final_f256(i32* %46), !dbg !623
  call void @llvm.dbg.value(metadata i32 0, metadata !624, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 0, metadata !625, metadata !DIExpression()), !dbg !560
  br label %48, !dbg !626

48:                                               ; preds = %55, %2
  %.01 = phi i32 [ 0, %2 ], [ %54, %55 ], !dbg !560
  %.0 = phi i32 [ 0, %2 ], [ %56, %55 ], !dbg !628
  call void @llvm.dbg.value(metadata i32 %.0, metadata !625, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i32 %.01, metadata !624, metadata !DIExpression()), !dbg !560
  %49 = icmp slt i32 %.0, 9, !dbg !629
  br i1 %49, label %50, label %57, !dbg !631

50:                                               ; preds = %48
  %51 = sext i32 %.0 to i64, !dbg !632
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 %51, !dbg !632
  %53 = load i32, i32* %52, align 4, !dbg !632
  %54 = or i32 %.01, %53, !dbg !634
  call void @llvm.dbg.value(metadata i32 %54, metadata !624, metadata !DIExpression()), !dbg !560
  br label %55, !dbg !635

55:                                               ; preds = %50
  %56 = add nsw i32 %.0, 1, !dbg !636
  call void @llvm.dbg.value(metadata i32 %56, metadata !625, metadata !DIExpression()), !dbg !560
  br label %48, !dbg !637, !llvm.loop !638

57:                                               ; preds = %48
  %58 = sub i32 0, %.01, !dbg !640
  %59 = or i32 %.01, %58, !dbg !641
  %60 = lshr i32 %59, 31, !dbg !642
  call void @llvm.dbg.value(metadata i32 %60, metadata !624, metadata !DIExpression()), !dbg !560
  %61 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !643
  %62 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !644
  call void @square_f256(i32* %61, i32* %62), !dbg !645
  %63 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !646
  %64 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !647
  %65 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !648
  call void @mul_f256(i32* %63, i32* %64, i32* %65), !dbg !649
  %66 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !650
  %67 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !651
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !652
  call void @mul_f256(i32* %66, i32* %67, i32* %68), !dbg !653
  %69 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !654
  %70 = getelementptr inbounds [9 x i32], [9 x i32]* %69, i64 0, i64 0, !dbg !655
  %71 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !656
  call void @square_f256(i32* %70, i32* %71), !dbg !657
  %72 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !658
  %73 = getelementptr inbounds [9 x i32], [9 x i32]* %72, i64 0, i64 0, !dbg !659
  %74 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !660
  %75 = getelementptr inbounds [9 x i32], [9 x i32]* %74, i64 0, i64 0, !dbg !661
  %76 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !662
  call void @sub_f256(i32* %73, i32* %75, i32* %76), !dbg !663
  %77 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !664
  %78 = getelementptr inbounds [9 x i32], [9 x i32]* %77, i64 0, i64 0, !dbg !665
  %79 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !666
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %79, i64 0, i64 0, !dbg !667
  %81 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !668
  call void @sub_f256(i32* %78, i32* %80, i32* %81), !dbg !669
  %82 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !670
  %83 = getelementptr inbounds [9 x i32], [9 x i32]* %82, i64 0, i64 0, !dbg !671
  %84 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !672
  %85 = getelementptr inbounds [9 x i32], [9 x i32]* %84, i64 0, i64 0, !dbg !673
  %86 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !674
  call void @sub_f256(i32* %83, i32* %85, i32* %86), !dbg !675
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !676
  %88 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !677
  %89 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !678
  %90 = getelementptr inbounds [9 x i32], [9 x i32]* %89, i64 0, i64 0, !dbg !679
  call void @sub_f256(i32* %87, i32* %88, i32* %90), !dbg !680
  %91 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !681
  %92 = getelementptr inbounds [9 x i32], [9 x i32]* %91, i64 0, i64 0, !dbg !682
  %93 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !683
  %94 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !684
  call void @mul_f256(i32* %92, i32* %93, i32* %94), !dbg !685
  %95 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !686
  %96 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !687
  %97 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !688
  call void @mul_f256(i32* %95, i32* %96, i32* %97), !dbg !689
  %98 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !690
  %99 = getelementptr inbounds [9 x i32], [9 x i32]* %98, i64 0, i64 0, !dbg !691
  %100 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !692
  %101 = getelementptr inbounds [9 x i32], [9 x i32]* %100, i64 0, i64 0, !dbg !693
  %102 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !694
  call void @sub_f256(i32* %99, i32* %101, i32* %102), !dbg !695
  %103 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !696
  %104 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !697
  %105 = getelementptr inbounds [9 x i32], [9 x i32]* %104, i64 0, i64 0, !dbg !698
  %106 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !699
  %107 = getelementptr inbounds [9 x i32], [9 x i32]* %106, i64 0, i64 0, !dbg !700
  call void @mul_f256(i32* %103, i32* %105, i32* %107), !dbg !701
  %108 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !702
  %109 = getelementptr inbounds [9 x i32], [9 x i32]* %108, i64 0, i64 0, !dbg !703
  %110 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !704
  %111 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !705
  call void @mul_f256(i32* %109, i32* %110, i32* %111), !dbg !706
  ret i32 %60, !dbg !707
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @reduce_final_f256(i32* %0) #0 !dbg !708 {
  %2 = alloca [9 x i32], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !712, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.declare(metadata [9 x i32]* %2, metadata !714, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i32 0, metadata !716, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata i32 0, metadata !717, metadata !DIExpression()), !dbg !713
  br label %3, !dbg !718

3:                                                ; preds = %18, %1
  %.01 = phi i32 [ 0, %1 ], [ %14, %18 ], !dbg !713
  %.0 = phi i32 [ 0, %1 ], [ %19, %18 ], !dbg !720
  call void @llvm.dbg.value(metadata i32 %.0, metadata !717, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata i32 %.01, metadata !716, metadata !DIExpression()), !dbg !713
  %4 = icmp slt i32 %.0, 9, !dbg !721
  br i1 %4, label %5, label %20, !dbg !723

5:                                                ; preds = %3
  %6 = sext i32 %.0 to i64, !dbg !724
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !724
  %8 = load i32, i32* %7, align 4, !dbg !724
  %9 = sext i32 %.0 to i64, !dbg !726
  %10 = getelementptr inbounds [9 x i32], [9 x i32]* @F256, i64 0, i64 %9, !dbg !726
  %11 = load i32, i32* %10, align 4, !dbg !726
  %12 = sub i32 %8, %11, !dbg !727
  %13 = sub i32 %12, %.01, !dbg !728
  call void @llvm.dbg.value(metadata i32 %13, metadata !729, metadata !DIExpression()), !dbg !730
  %14 = lshr i32 %13, 31, !dbg !731
  call void @llvm.dbg.value(metadata i32 %14, metadata !716, metadata !DIExpression()), !dbg !713
  %15 = and i32 %13, 1073741823, !dbg !732
  %16 = sext i32 %.0 to i64, !dbg !733
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 %16, !dbg !733
  store i32 %15, i32* %17, align 4, !dbg !734
  br label %18, !dbg !735

18:                                               ; preds = %5
  %19 = add nsw i32 %.0, 1, !dbg !736
  call void @llvm.dbg.value(metadata i32 %19, metadata !717, metadata !DIExpression()), !dbg !713
  br label %3, !dbg !737, !llvm.loop !738

20:                                               ; preds = %3
  %21 = xor i32 %.01, 1, !dbg !740
  call void @llvm.dbg.value(metadata i32 %21, metadata !716, metadata !DIExpression()), !dbg !713
  %22 = bitcast i32* %0 to i8*, !dbg !741
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !742
  %24 = bitcast i32* %23 to i8*, !dbg !742
  call void @br_ccopy(i32 %21, i8* %22, i8* %24, i64 36), !dbg !743
  ret i32 %21, !dbg !744
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !745 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !748, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i32 %1, metadata !750, metadata !DIExpression()), !dbg !749
  %3 = xor i32 %0, %1, !dbg !751
  call void @llvm.dbg.value(metadata i32 %3, metadata !752, metadata !DIExpression()), !dbg !749
  %4 = sub i32 0, %3, !dbg !753
  %5 = or i32 %3, %4, !dbg !754
  %6 = lshr i32 %5, 31, !dbg !755
  %7 = call i32 @NOT(i32 %6), !dbg !756
  ret i32 %7, !dbg !757
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_double(%struct.p256_jacobian* %0) #0 !dbg !758 {
  %2 = alloca [9 x i32], align 16
  %3 = alloca [9 x i32], align 16
  %4 = alloca [9 x i32], align 16
  %5 = alloca [9 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !761, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.declare(metadata [9 x i32]* %2, metadata !763, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.declare(metadata [9 x i32]* %3, metadata !765, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.declare(metadata [9 x i32]* %4, metadata !767, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.declare(metadata [9 x i32]* %5, metadata !769, metadata !DIExpression()), !dbg !770
  %6 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !771
  %7 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !772
  %8 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !773
  call void @square_f256(i32* %6, i32* %8), !dbg !774
  %9 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !775
  %10 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !776
  %11 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0, !dbg !777
  %12 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !778
  call void @add_f256(i32* %9, i32* %11, i32* %12), !dbg !779
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !780
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !781
  %15 = getelementptr inbounds [9 x i32], [9 x i32]* %14, i64 0, i64 0, !dbg !782
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !783
  call void @sub_f256(i32* %13, i32* %15, i32* %16), !dbg !784
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !785
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !786
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !787
  call void @mul_f256(i32* %17, i32* %18, i32* %19), !dbg !788
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !789
  %21 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !790
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !791
  call void @add_f256(i32* %20, i32* %21, i32* %22), !dbg !792
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !793
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !794
  %25 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !795
  call void @add_f256(i32* %23, i32* %24, i32* %25), !dbg !796
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !797
  %27 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !798
  %28 = getelementptr inbounds [9 x i32], [9 x i32]* %27, i64 0, i64 0, !dbg !799
  call void @square_f256(i32* %26, i32* %28), !dbg !800
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !801
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !802
  %31 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !803
  call void @add_f256(i32* %29, i32* %30, i32* %31), !dbg !804
  %32 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !805
  %33 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !806
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %33, i64 0, i64 0, !dbg !807
  %35 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !808
  call void @mul_f256(i32* %32, i32* %34, i32* %35), !dbg !809
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !810
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !811
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !812
  call void @add_f256(i32* %36, i32* %37, i32* %38), !dbg !813
  %39 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !814
  %40 = getelementptr inbounds [9 x i32], [9 x i32]* %39, i64 0, i64 0, !dbg !815
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !816
  call void @square_f256(i32* %40, i32* %41), !dbg !817
  %42 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !818
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %42, i64 0, i64 0, !dbg !819
  %44 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !820
  %45 = getelementptr inbounds [9 x i32], [9 x i32]* %44, i64 0, i64 0, !dbg !821
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !822
  call void @sub_f256(i32* %43, i32* %45, i32* %46), !dbg !823
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !824
  %48 = getelementptr inbounds [9 x i32], [9 x i32]* %47, i64 0, i64 0, !dbg !825
  %49 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !826
  %50 = getelementptr inbounds [9 x i32], [9 x i32]* %49, i64 0, i64 0, !dbg !827
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !828
  call void @sub_f256(i32* %48, i32* %50, i32* %51), !dbg !829
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !830
  %53 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !831
  %54 = getelementptr inbounds [9 x i32], [9 x i32]* %53, i64 0, i64 0, !dbg !832
  %55 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !833
  %56 = getelementptr inbounds [9 x i32], [9 x i32]* %55, i64 0, i64 0, !dbg !834
  call void @mul_f256(i32* %52, i32* %54, i32* %56), !dbg !835
  %57 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !836
  %58 = getelementptr inbounds [9 x i32], [9 x i32]* %57, i64 0, i64 0, !dbg !837
  %59 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !838
  %60 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !839
  call void @add_f256(i32* %58, i32* %59, i32* %60), !dbg !840
  %61 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !841
  %62 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !842
  %63 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !843
  %64 = getelementptr inbounds [9 x i32], [9 x i32]* %63, i64 0, i64 0, !dbg !844
  call void @sub_f256(i32* %61, i32* %62, i32* %64), !dbg !845
  %65 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !846
  %66 = getelementptr inbounds [9 x i32], [9 x i32]* %65, i64 0, i64 0, !dbg !847
  %67 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !848
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !849
  call void @mul_f256(i32* %66, i32* %67, i32* %68), !dbg !850
  %69 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !851
  %70 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !852
  call void @square_f256(i32* %69, i32* %70), !dbg !853
  %71 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !854
  %72 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !855
  %73 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !856
  call void @add_f256(i32* %71, i32* %72, i32* %73), !dbg !857
  %74 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !858
  %75 = getelementptr inbounds [9 x i32], [9 x i32]* %74, i64 0, i64 0, !dbg !859
  %76 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !860
  %77 = getelementptr inbounds [9 x i32], [9 x i32]* %76, i64 0, i64 0, !dbg !861
  %78 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !862
  call void @sub_f256(i32* %75, i32* %77, i32* %78), !dbg !863
  ret void, !dbg !864
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_to_affine(%struct.p256_jacobian* %0) #0 !dbg !865 {
  %2 = alloca [9 x i32], align 16
  %3 = alloca [9 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !866, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.declare(metadata [9 x i32]* %2, metadata !868, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.declare(metadata [9 x i32]* %3, metadata !870, metadata !DIExpression()), !dbg !871
  %4 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !872
  %5 = bitcast i32* %4 to i8*, !dbg !872
  %6 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !873
  %7 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !872
  %8 = bitcast i32* %7 to i8*, !dbg !872
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 4 %8, i64 36, i1 false), !dbg !872
  call void @llvm.dbg.value(metadata i32 0, metadata !874, metadata !DIExpression()), !dbg !867
  br label %9, !dbg !875

9:                                                ; preds = %18, %1
  %.0 = phi i32 [ 0, %1 ], [ %19, %18 ], !dbg !877
  call void @llvm.dbg.value(metadata i32 %.0, metadata !874, metadata !DIExpression()), !dbg !867
  %10 = icmp slt i32 %.0, 30, !dbg !878
  br i1 %10, label %11, label %20, !dbg !880

11:                                               ; preds = %9
  %12 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !881
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !883
  call void @square_f256(i32* %12, i32* %13), !dbg !884
  %14 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !885
  %15 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !886
  %16 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !887
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 0, !dbg !888
  call void @mul_f256(i32* %14, i32* %15, i32* %17), !dbg !889
  br label %18, !dbg !890

18:                                               ; preds = %11
  %19 = add nsw i32 %.0, 1, !dbg !891
  call void @llvm.dbg.value(metadata i32 %19, metadata !874, metadata !DIExpression()), !dbg !867
  br label %9, !dbg !892, !llvm.loop !893

20:                                               ; preds = %9
  %21 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !895
  %22 = bitcast i32* %21 to i8*, !dbg !895
  %23 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !896
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 0, !dbg !895
  %25 = bitcast i32* %24 to i8*, !dbg !895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 4 %25, i64 36, i1 false), !dbg !895
  call void @llvm.dbg.value(metadata i32 1, metadata !874, metadata !DIExpression()), !dbg !867
  br label %26, !dbg !897

26:                                               ; preds = %41, %20
  %.1 = phi i32 [ 1, %20 ], [ %42, %41 ], !dbg !899
  call void @llvm.dbg.value(metadata i32 %.1, metadata !874, metadata !DIExpression()), !dbg !867
  %27 = icmp slt i32 %.1, 256, !dbg !900
  br i1 %27, label %28, label %43, !dbg !902

28:                                               ; preds = %26
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !903
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !905
  call void @square_f256(i32* %29, i32* %30), !dbg !906
  switch i32 %.1, label %40 [
    i32 31, label %31
    i32 190, label %31
    i32 221, label %31
    i32 252, label %31
    i32 63, label %35
    i32 253, label %35
    i32 255, label %35
  ], !dbg !907

31:                                               ; preds = %28, %28, %28, %28
  %32 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !908
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !910
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !911
  call void @mul_f256(i32* %32, i32* %33, i32* %34), !dbg !912
  br label %40, !dbg !913

35:                                               ; preds = %28, %28, %28
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !914
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !915
  %38 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !916
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %38, i64 0, i64 0, !dbg !917
  call void @mul_f256(i32* %36, i32* %37, i32* %39), !dbg !918
  br label %40, !dbg !919

40:                                               ; preds = %35, %31, %28
  br label %41, !dbg !920

41:                                               ; preds = %40
  %42 = add nsw i32 %.1, 1, !dbg !921
  call void @llvm.dbg.value(metadata i32 %42, metadata !874, metadata !DIExpression()), !dbg !867
  br label %26, !dbg !922, !llvm.loop !923

43:                                               ; preds = %26
  %44 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !925
  %45 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !926
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !927
  call void @mul_f256(i32* %44, i32* %45, i32* %46), !dbg !928
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !929
  %48 = getelementptr inbounds [9 x i32], [9 x i32]* %47, i64 0, i64 0, !dbg !930
  %49 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !931
  %50 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !932
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %50, i64 0, i64 0, !dbg !933
  call void @mul_f256(i32* %48, i32* %49, i32* %51), !dbg !934
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !935
  %53 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !936
  %54 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !937
  call void @mul_f256(i32* %52, i32* %53, i32* %54), !dbg !938
  %55 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !939
  %56 = getelementptr inbounds [9 x i32], [9 x i32]* %55, i64 0, i64 0, !dbg !940
  %57 = getelementptr inbounds [9 x i32], [9 x i32]* %2, i64 0, i64 0, !dbg !941
  %58 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !942
  %59 = getelementptr inbounds [9 x i32], [9 x i32]* %58, i64 0, i64 0, !dbg !943
  call void @mul_f256(i32* %56, i32* %57, i32* %59), !dbg !944
  %60 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !945
  %61 = getelementptr inbounds [9 x i32], [9 x i32]* %60, i64 0, i64 0, !dbg !946
  %62 = call i32 @reduce_final_f256(i32* %61), !dbg !947
  %63 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !948
  %64 = getelementptr inbounds [9 x i32], [9 x i32]* %63, i64 0, i64 0, !dbg !949
  %65 = call i32 @reduce_final_f256(i32* %64), !dbg !950
  %66 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !951
  %67 = getelementptr inbounds [9 x i32], [9 x i32]* %66, i64 0, i64 0, !dbg !952
  %68 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !953
  %69 = getelementptr inbounds [9 x i32], [9 x i32]* %68, i64 0, i64 0, !dbg !954
  %70 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !955
  call void @mul_f256(i32* %67, i32* %69, i32* %70), !dbg !956
  %71 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !957
  %72 = getelementptr inbounds [9 x i32], [9 x i32]* %71, i64 0, i64 0, !dbg !958
  %73 = call i32 @reduce_final_f256(i32* %72), !dbg !959
  ret void, !dbg !960
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_encode(i8* %0, %struct.p256_jacobian* %1) #0 !dbg !961 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !964, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !966, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i8* %0, metadata !967, metadata !DIExpression()), !dbg !965
  %3 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !968
  store i8 4, i8* %3, align 1, !dbg !969
  %4 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !970
  %5 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 0, !dbg !971
  %6 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !972
  call void @le30_to_be8(i8* %4, i64 32, i32* %6), !dbg !973
  %7 = getelementptr inbounds i8, i8* %0, i64 33, !dbg !974
  %8 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 1, !dbg !975
  %9 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !976
  call void @le30_to_be8(i8* %7, i64 32, i32* %9), !dbg !977
  ret void, !dbg !978
}

; Function Attrs: noinline nounwind uwtable
define internal void @le30_to_be8(i8* %0, i64 %1, i32* %2) #0 !dbg !979 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !983, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %1, metadata !985, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32* %2, metadata !986, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 0, metadata !987, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 0, metadata !988, metadata !DIExpression()), !dbg !984
  br label %4, !dbg !989

4:                                                ; preds = %24, %3
  %.04 = phi i32 [ 0, %3 ], [ %.15, %24 ], !dbg !984
  %.02 = phi i32* [ %2, %3 ], [ %.13, %24 ]
  %.01 = phi i64 [ %1, %3 ], [ %5, %24 ]
  %.0 = phi i32 [ 0, %3 ], [ %.1, %24 ], !dbg !984
  call void @llvm.dbg.value(metadata i32 %.0, metadata !988, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i64 %.01, metadata !985, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32* %.02, metadata !986, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %.04, metadata !987, metadata !DIExpression()), !dbg !984
  %5 = add i64 %.01, -1, !dbg !990
  call void @llvm.dbg.value(metadata i64 %5, metadata !985, metadata !DIExpression()), !dbg !984
  %6 = icmp ugt i64 %.01, 0, !dbg !991
  br i1 %6, label %7, label %25, !dbg !989

7:                                                ; preds = %4
  %8 = icmp slt i32 %.0, 8, !dbg !992
  br i1 %8, label %9, label %19, !dbg !995

9:                                                ; preds = %7
  %10 = getelementptr inbounds i32, i32* %.02, i32 1, !dbg !996
  call void @llvm.dbg.value(metadata i32* %10, metadata !986, metadata !DIExpression()), !dbg !984
  %11 = load i32, i32* %.02, align 4, !dbg !998
  call void @llvm.dbg.value(metadata i32 %11, metadata !999, metadata !DIExpression()), !dbg !1000
  %12 = shl i32 %11, %.0, !dbg !1001
  %13 = or i32 %.04, %12, !dbg !1002
  %14 = trunc i32 %13 to i8, !dbg !1003
  %15 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !1004
  store i8 %14, i8* %15, align 1, !dbg !1005
  %16 = sub nsw i32 8, %.0, !dbg !1006
  %17 = lshr i32 %11, %16, !dbg !1007
  call void @llvm.dbg.value(metadata i32 %17, metadata !987, metadata !DIExpression()), !dbg !984
  %18 = add nsw i32 %.0, 22, !dbg !1008
  call void @llvm.dbg.value(metadata i32 %18, metadata !988, metadata !DIExpression()), !dbg !984
  br label %24, !dbg !1009

19:                                               ; preds = %7
  %20 = trunc i32 %.04 to i8, !dbg !1010
  %21 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !1012
  store i8 %20, i8* %21, align 1, !dbg !1013
  %22 = lshr i32 %.04, 8, !dbg !1014
  call void @llvm.dbg.value(metadata i32 %22, metadata !987, metadata !DIExpression()), !dbg !984
  %23 = sub nsw i32 %.0, 8, !dbg !1015
  call void @llvm.dbg.value(metadata i32 %23, metadata !988, metadata !DIExpression()), !dbg !984
  br label %24

24:                                               ; preds = %19, %9
  %.15 = phi i32 [ %17, %9 ], [ %22, %19 ], !dbg !1016
  %.13 = phi i32* [ %10, %9 ], [ %.02, %19 ]
  %.1 = phi i32 [ %18, %9 ], [ %23, %19 ], !dbg !1016
  call void @llvm.dbg.value(metadata i32 %.1, metadata !988, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32* %.13, metadata !986, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 %.15, metadata !987, metadata !DIExpression()), !dbg !984
  br label %4, !dbg !989, !llvm.loop !1017

25:                                               ; preds = %4
  ret void, !dbg !1019
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @square_f256(i32* %0, i32* %1) #0 !dbg !1020 {
  %3 = alloca [18 x i32], align 16
  %4 = alloca [18 x i64], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !1023, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32* %1, metadata !1025, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.declare(metadata [18 x i32]* %3, metadata !1026, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata [18 x i64]* %4, metadata !1030, metadata !DIExpression()), !dbg !1032
  %5 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 0, !dbg !1033
  call void @square9(i32* %5, i32* %1), !dbg !1034
  call void @llvm.dbg.value(metadata i32 0, metadata !1035, metadata !DIExpression()), !dbg !1024
  br label %6, !dbg !1036

6:                                                ; preds = %15, %2
  %.0 = phi i32 [ 0, %2 ], [ %16, %15 ], !dbg !1038
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1035, metadata !DIExpression()), !dbg !1024
  %7 = icmp slt i32 %.0, 18, !dbg !1039
  br i1 %7, label %8, label %17, !dbg !1041

8:                                                ; preds = %6
  %9 = sext i32 %.0 to i64, !dbg !1042
  %10 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %9, !dbg !1042
  %11 = load i32, i32* %10, align 4, !dbg !1042
  %12 = zext i32 %11 to i64, !dbg !1042
  %13 = sext i32 %.0 to i64, !dbg !1044
  %14 = getelementptr inbounds [18 x i64], [18 x i64]* %4, i64 0, i64 %13, !dbg !1044
  store i64 %12, i64* %14, align 8, !dbg !1045
  br label %15, !dbg !1046

15:                                               ; preds = %8
  %16 = add nsw i32 %.0, 1, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %16, metadata !1035, metadata !DIExpression()), !dbg !1024
  br label %6, !dbg !1048, !llvm.loop !1049

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 17, metadata !1035, metadata !DIExpression()), !dbg !1024
  br label %18, !dbg !1051

18:                                               ; preds = %76, %17
  %.1 = phi i32 [ 17, %17 ], [ %77, %76 ], !dbg !1053
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1035, metadata !DIExpression()), !dbg !1024
  %19 = icmp sge i32 %.1, 9, !dbg !1054
  br i1 %19, label %20, label %78, !dbg !1056

20:                                               ; preds = %18
  %21 = sext i32 %.1 to i64, !dbg !1057
  %22 = getelementptr inbounds [18 x i64], [18 x i64]* %4, i64 0, i64 %21, !dbg !1057
  %23 = load i64, i64* %22, align 8, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %23, metadata !1059, metadata !DIExpression()), !dbg !1060
  %24 = ashr i64 %23, 2, !dbg !1061
  %25 = sub nsw i32 %.1, 1, !dbg !1062
  %26 = sext i32 %25 to i64, !dbg !1063
  %27 = getelementptr inbounds [18 x i64], [18 x i64]* %4, i64 0, i64 %26, !dbg !1063
  %28 = load i64, i64* %27, align 8, !dbg !1064
  %29 = add i64 %28, %24, !dbg !1064
  store i64 %29, i64* %27, align 8, !dbg !1064
  %30 = shl i64 %23, 28, !dbg !1065
  %31 = and i64 %30, 1073741823, !dbg !1066
  %32 = sub nsw i32 %.1, 2, !dbg !1067
  %33 = sext i32 %32 to i64, !dbg !1068
  %34 = getelementptr inbounds [18 x i64], [18 x i64]* %4, i64 0, i64 %33, !dbg !1068
  %35 = load i64, i64* %34, align 8, !dbg !1069
  %36 = add i64 %35, %31, !dbg !1069
  store i64 %36, i64* %34, align 8, !dbg !1069
  %37 = ashr i64 %23, 4, !dbg !1070
  %38 = sub nsw i32 %.1, 2, !dbg !1071
  %39 = sext i32 %38 to i64, !dbg !1072
  %40 = getelementptr inbounds [18 x i64], [18 x i64]* %4, i64 0, i64 %39, !dbg !1072
  %41 = load i64, i64* %40, align 8, !dbg !1073
  %42 = sub i64 %41, %37, !dbg !1073
  store i64 %42, i64* %40, align 8, !dbg !1073
  %43 = shl i64 %23, 26, !dbg !1074
  %44 = and i64 %43, 1073741823, !dbg !1075
  %45 = sub nsw i32 %.1, 3, !dbg !1076
  %46 = sext i32 %45 to i64, !dbg !1077
  %47 = getelementptr inbounds [18 x i64], [18 x i64]* %4, i64 0, i64 %46, !dbg !1077
  %48 = load i64, i64* %47, align 8, !dbg !1078
  %49 = sub i64 %48, %44, !dbg !1078
  store i64 %49, i64* %47, align 8, !dbg !1078
  %50 = ashr i64 %23, 10, !dbg !1079
  %51 = sub nsw i32 %.1, 5, !dbg !1080
  %52 = sext i32 %51 to i64, !dbg !1081
  %53 = getelementptr inbounds [18 x i64], [18 x i64]* %4, i64 0, i64 %52, !dbg !1081
  %54 = load i64, i64* %53, align 8, !dbg !1082
  %55 = sub i64 %54, %50, !dbg !1082
  store i64 %55, i64* %53, align 8, !dbg !1082
  %56 = shl i64 %23, 20, !dbg !1083
  %57 = and i64 %56, 1073741823, !dbg !1084
  %58 = sub nsw i32 %.1, 6, !dbg !1085
  %59 = sext i32 %58 to i64, !dbg !1086
  %60 = getelementptr inbounds [18 x i64], [18 x i64]* %4, i64 0, i64 %59, !dbg !1086
  %61 = load i64, i64* %60, align 8, !dbg !1087
  %62 = sub i64 %61, %57, !dbg !1087
  store i64 %62, i64* %60, align 8, !dbg !1087
  %63 = ashr i64 %23, 16, !dbg !1088
  %64 = sub nsw i32 %.1, 8, !dbg !1089
  %65 = sext i32 %64 to i64, !dbg !1090
  %66 = getelementptr inbounds [18 x i64], [18 x i64]* %4, i64 0, i64 %65, !dbg !1090
  %67 = load i64, i64* %66, align 8, !dbg !1091
  %68 = add i64 %67, %63, !dbg !1091
  store i64 %68, i64* %66, align 8, !dbg !1091
  %69 = shl i64 %23, 14, !dbg !1092
  %70 = and i64 %69, 1073741823, !dbg !1093
  %71 = sub nsw i32 %.1, 9, !dbg !1094
  %72 = sext i32 %71 to i64, !dbg !1095
  %73 = getelementptr inbounds [18 x i64], [18 x i64]* %4, i64 0, i64 %72, !dbg !1095
  %74 = load i64, i64* %73, align 8, !dbg !1096
  %75 = add i64 %74, %70, !dbg !1096
  store i64 %75, i64* %73, align 8, !dbg !1096
  br label %76, !dbg !1097

76:                                               ; preds = %20
  %77 = add nsw i32 %.1, -1, !dbg !1098
  call void @llvm.dbg.value(metadata i32 %77, metadata !1035, metadata !DIExpression()), !dbg !1024
  br label %18, !dbg !1099, !llvm.loop !1100

78:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i64 0, metadata !1102, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !1035, metadata !DIExpression()), !dbg !1024
  br label %79, !dbg !1103

79:                                               ; preds = %91, %78
  %.03 = phi i64 [ undef, %78 ], [ %85, %91 ]
  %.02 = phi i64 [ 0, %78 ], [ %90, %91 ], !dbg !1024
  %.2 = phi i32 [ 0, %78 ], [ %92, %91 ], !dbg !1105
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1035, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1102, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1106, metadata !DIExpression()), !dbg !1024
  %80 = icmp slt i32 %.2, 9, !dbg !1107
  br i1 %80, label %81, label %93, !dbg !1109

81:                                               ; preds = %79
  %82 = sext i32 %.2 to i64, !dbg !1110
  %83 = getelementptr inbounds [18 x i64], [18 x i64]* %4, i64 0, i64 %82, !dbg !1110
  %84 = load i64, i64* %83, align 8, !dbg !1110
  %85 = add i64 %84, %.02, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %85, metadata !1106, metadata !DIExpression()), !dbg !1024
  %86 = trunc i64 %85 to i32, !dbg !1113
  %87 = and i32 %86, 1073741823, !dbg !1114
  %88 = sext i32 %.2 to i64, !dbg !1115
  %89 = getelementptr inbounds i32, i32* %0, i64 %88, !dbg !1115
  store i32 %87, i32* %89, align 4, !dbg !1116
  %90 = ashr i64 %85, 30, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %90, metadata !1102, metadata !DIExpression()), !dbg !1024
  br label %91, !dbg !1118

91:                                               ; preds = %81
  %92 = add nsw i32 %.2, 1, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %92, metadata !1035, metadata !DIExpression()), !dbg !1024
  br label %79, !dbg !1120, !llvm.loop !1121

93:                                               ; preds = %79
  %94 = ashr i64 %.03, 16, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %94, metadata !1102, metadata !DIExpression()), !dbg !1024
  %95 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !1124
  %96 = load i32, i32* %95, align 4, !dbg !1125
  %97 = and i32 %96, 65535, !dbg !1125
  store i32 %97, i32* %95, align 4, !dbg !1125
  %98 = trunc i64 %94 to i32, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %98, metadata !1127, metadata !DIExpression()), !dbg !1024
  %99 = shl i32 %98, 6, !dbg !1128
  %100 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1129
  %101 = load i32, i32* %100, align 4, !dbg !1130
  %102 = sub i32 %101, %99, !dbg !1130
  store i32 %102, i32* %100, align 4, !dbg !1130
  %103 = shl i32 %98, 12, !dbg !1131
  %104 = and i32 %103, 1073741823, !dbg !1132
  %105 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !1133
  %106 = load i32, i32* %105, align 4, !dbg !1134
  %107 = sub i32 %106, %104, !dbg !1134
  store i32 %107, i32* %105, align 4, !dbg !1134
  %108 = ashr i32 %98, 18, !dbg !1135
  %109 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !1136
  %110 = load i32, i32* %109, align 4, !dbg !1137
  %111 = sub i32 %110, %108, !dbg !1137
  store i32 %111, i32* %109, align 4, !dbg !1137
  %112 = shl i32 %98, 14, !dbg !1138
  %113 = and i32 %112, 1073741823, !dbg !1139
  %114 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !1140
  %115 = load i32, i32* %114, align 4, !dbg !1141
  %116 = add i32 %115, %113, !dbg !1141
  store i32 %116, i32* %114, align 4, !dbg !1141
  %117 = ashr i32 %98, 16, !dbg !1142
  %118 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !1143
  %119 = load i32, i32* %118, align 4, !dbg !1144
  %120 = add i32 %119, %117, !dbg !1144
  store i32 %120, i32* %118, align 4, !dbg !1144
  %121 = lshr i32 %98, 31, !dbg !1145
  call void @llvm.dbg.value(metadata i32 %121, metadata !1146, metadata !DIExpression()), !dbg !1024
  %122 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1147
  %123 = load i32, i32* %122, align 4, !dbg !1148
  %124 = sub i32 %123, %121, !dbg !1148
  store i32 %124, i32* %122, align 4, !dbg !1148
  %125 = shl i32 %121, 6, !dbg !1149
  %126 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1150
  %127 = load i32, i32* %126, align 4, !dbg !1151
  %128 = add i32 %127, %125, !dbg !1151
  store i32 %128, i32* %126, align 4, !dbg !1151
  %129 = shl i32 %121, 12, !dbg !1152
  %130 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !1153
  %131 = load i32, i32* %130, align 4, !dbg !1154
  %132 = add i32 %131, %129, !dbg !1154
  store i32 %132, i32* %130, align 4, !dbg !1154
  %133 = shl i32 %121, 14, !dbg !1155
  %134 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !1156
  %135 = load i32, i32* %134, align 4, !dbg !1157
  %136 = sub i32 %135, %133, !dbg !1157
  store i32 %136, i32* %134, align 4, !dbg !1157
  %137 = shl i32 %121, 16, !dbg !1158
  %138 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !1159
  %139 = load i32, i32* %138, align 4, !dbg !1160
  %140 = add i32 %139, %137, !dbg !1160
  store i32 %140, i32* %138, align 4, !dbg !1160
  call void @llvm.dbg.value(metadata i32 0, metadata !1035, metadata !DIExpression()), !dbg !1024
  br label %141, !dbg !1161

141:                                              ; preds = %152, %93
  %.01 = phi i32 [ %98, %93 ], [ %151, %152 ], !dbg !1024
  %.3 = phi i32 [ 0, %93 ], [ %153, %152 ], !dbg !1163
  call void @llvm.dbg.value(metadata i32 %.3, metadata !1035, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1127, metadata !DIExpression()), !dbg !1024
  %142 = icmp slt i32 %.3, 9, !dbg !1164
  br i1 %142, label %143, label %154, !dbg !1166

143:                                              ; preds = %141
  %144 = sext i32 %.3 to i64, !dbg !1167
  %145 = getelementptr inbounds i32, i32* %0, i64 %144, !dbg !1167
  %146 = load i32, i32* %145, align 4, !dbg !1167
  %147 = add i32 %146, %.01, !dbg !1169
  call void @llvm.dbg.value(metadata i32 %147, metadata !1170, metadata !DIExpression()), !dbg !1171
  %148 = and i32 %147, 1073741823, !dbg !1172
  %149 = sext i32 %.3 to i64, !dbg !1173
  %150 = getelementptr inbounds i32, i32* %0, i64 %149, !dbg !1173
  store i32 %148, i32* %150, align 4, !dbg !1174
  %151 = ashr i32 %147, 30, !dbg !1175
  call void @llvm.dbg.value(metadata i32 %151, metadata !1127, metadata !DIExpression()), !dbg !1024
  br label %152, !dbg !1176

152:                                              ; preds = %143
  %153 = add nsw i32 %.3, 1, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %153, metadata !1035, metadata !DIExpression()), !dbg !1024
  br label %141, !dbg !1178, !llvm.loop !1179

154:                                              ; preds = %141
  ret void, !dbg !1181
}

; Function Attrs: noinline nounwind uwtable
define internal void @mul_f256(i32* %0, i32* %1, i32* %2) #0 !dbg !1182 {
  %4 = alloca [18 x i32], align 16
  %5 = alloca [18 x i64], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !1185, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32* %1, metadata !1187, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32* %2, metadata !1188, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.declare(metadata [18 x i32]* %4, metadata !1189, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.declare(metadata [18 x i64]* %5, metadata !1191, metadata !DIExpression()), !dbg !1192
  %6 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 0, !dbg !1193
  call void @mul9(i32* %6, i32* %1, i32* %2), !dbg !1194
  call void @llvm.dbg.value(metadata i32 0, metadata !1195, metadata !DIExpression()), !dbg !1186
  br label %7, !dbg !1196

7:                                                ; preds = %16, %3
  %.0 = phi i32 [ 0, %3 ], [ %17, %16 ], !dbg !1198
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1195, metadata !DIExpression()), !dbg !1186
  %8 = icmp slt i32 %.0, 18, !dbg !1199
  br i1 %8, label %9, label %18, !dbg !1201

9:                                                ; preds = %7
  %10 = sext i32 %.0 to i64, !dbg !1202
  %11 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 %10, !dbg !1202
  %12 = load i32, i32* %11, align 4, !dbg !1202
  %13 = zext i32 %12 to i64, !dbg !1202
  %14 = sext i32 %.0 to i64, !dbg !1204
  %15 = getelementptr inbounds [18 x i64], [18 x i64]* %5, i64 0, i64 %14, !dbg !1204
  store i64 %13, i64* %15, align 8, !dbg !1205
  br label %16, !dbg !1206

16:                                               ; preds = %9
  %17 = add nsw i32 %.0, 1, !dbg !1207
  call void @llvm.dbg.value(metadata i32 %17, metadata !1195, metadata !DIExpression()), !dbg !1186
  br label %7, !dbg !1208, !llvm.loop !1209

18:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 17, metadata !1195, metadata !DIExpression()), !dbg !1186
  br label %19, !dbg !1211

19:                                               ; preds = %77, %18
  %.1 = phi i32 [ 17, %18 ], [ %78, %77 ], !dbg !1213
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1195, metadata !DIExpression()), !dbg !1186
  %20 = icmp sge i32 %.1, 9, !dbg !1214
  br i1 %20, label %21, label %79, !dbg !1216

21:                                               ; preds = %19
  %22 = sext i32 %.1 to i64, !dbg !1217
  %23 = getelementptr inbounds [18 x i64], [18 x i64]* %5, i64 0, i64 %22, !dbg !1217
  %24 = load i64, i64* %23, align 8, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %24, metadata !1219, metadata !DIExpression()), !dbg !1220
  %25 = ashr i64 %24, 2, !dbg !1221
  %26 = sub nsw i32 %.1, 1, !dbg !1222
  %27 = sext i32 %26 to i64, !dbg !1223
  %28 = getelementptr inbounds [18 x i64], [18 x i64]* %5, i64 0, i64 %27, !dbg !1223
  %29 = load i64, i64* %28, align 8, !dbg !1224
  %30 = add i64 %29, %25, !dbg !1224
  store i64 %30, i64* %28, align 8, !dbg !1224
  %31 = shl i64 %24, 28, !dbg !1225
  %32 = and i64 %31, 1073741823, !dbg !1226
  %33 = sub nsw i32 %.1, 2, !dbg !1227
  %34 = sext i32 %33 to i64, !dbg !1228
  %35 = getelementptr inbounds [18 x i64], [18 x i64]* %5, i64 0, i64 %34, !dbg !1228
  %36 = load i64, i64* %35, align 8, !dbg !1229
  %37 = add i64 %36, %32, !dbg !1229
  store i64 %37, i64* %35, align 8, !dbg !1229
  %38 = ashr i64 %24, 4, !dbg !1230
  %39 = sub nsw i32 %.1, 2, !dbg !1231
  %40 = sext i32 %39 to i64, !dbg !1232
  %41 = getelementptr inbounds [18 x i64], [18 x i64]* %5, i64 0, i64 %40, !dbg !1232
  %42 = load i64, i64* %41, align 8, !dbg !1233
  %43 = sub i64 %42, %38, !dbg !1233
  store i64 %43, i64* %41, align 8, !dbg !1233
  %44 = shl i64 %24, 26, !dbg !1234
  %45 = and i64 %44, 1073741823, !dbg !1235
  %46 = sub nsw i32 %.1, 3, !dbg !1236
  %47 = sext i32 %46 to i64, !dbg !1237
  %48 = getelementptr inbounds [18 x i64], [18 x i64]* %5, i64 0, i64 %47, !dbg !1237
  %49 = load i64, i64* %48, align 8, !dbg !1238
  %50 = sub i64 %49, %45, !dbg !1238
  store i64 %50, i64* %48, align 8, !dbg !1238
  %51 = ashr i64 %24, 10, !dbg !1239
  %52 = sub nsw i32 %.1, 5, !dbg !1240
  %53 = sext i32 %52 to i64, !dbg !1241
  %54 = getelementptr inbounds [18 x i64], [18 x i64]* %5, i64 0, i64 %53, !dbg !1241
  %55 = load i64, i64* %54, align 8, !dbg !1242
  %56 = sub i64 %55, %51, !dbg !1242
  store i64 %56, i64* %54, align 8, !dbg !1242
  %57 = shl i64 %24, 20, !dbg !1243
  %58 = and i64 %57, 1073741823, !dbg !1244
  %59 = sub nsw i32 %.1, 6, !dbg !1245
  %60 = sext i32 %59 to i64, !dbg !1246
  %61 = getelementptr inbounds [18 x i64], [18 x i64]* %5, i64 0, i64 %60, !dbg !1246
  %62 = load i64, i64* %61, align 8, !dbg !1247
  %63 = sub i64 %62, %58, !dbg !1247
  store i64 %63, i64* %61, align 8, !dbg !1247
  %64 = ashr i64 %24, 16, !dbg !1248
  %65 = sub nsw i32 %.1, 8, !dbg !1249
  %66 = sext i32 %65 to i64, !dbg !1250
  %67 = getelementptr inbounds [18 x i64], [18 x i64]* %5, i64 0, i64 %66, !dbg !1250
  %68 = load i64, i64* %67, align 8, !dbg !1251
  %69 = add i64 %68, %64, !dbg !1251
  store i64 %69, i64* %67, align 8, !dbg !1251
  %70 = shl i64 %24, 14, !dbg !1252
  %71 = and i64 %70, 1073741823, !dbg !1253
  %72 = sub nsw i32 %.1, 9, !dbg !1254
  %73 = sext i32 %72 to i64, !dbg !1255
  %74 = getelementptr inbounds [18 x i64], [18 x i64]* %5, i64 0, i64 %73, !dbg !1255
  %75 = load i64, i64* %74, align 8, !dbg !1256
  %76 = add i64 %75, %71, !dbg !1256
  store i64 %76, i64* %74, align 8, !dbg !1256
  br label %77, !dbg !1257

77:                                               ; preds = %21
  %78 = add nsw i32 %.1, -1, !dbg !1258
  call void @llvm.dbg.value(metadata i32 %78, metadata !1195, metadata !DIExpression()), !dbg !1186
  br label %19, !dbg !1259, !llvm.loop !1260

79:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 0, metadata !1262, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32 0, metadata !1195, metadata !DIExpression()), !dbg !1186
  br label %80, !dbg !1263

80:                                               ; preds = %92, %79
  %.03 = phi i64 [ 0, %79 ], [ %91, %92 ], !dbg !1186
  %.02 = phi i64 [ undef, %79 ], [ %86, %92 ]
  %.2 = phi i32 [ 0, %79 ], [ %93, %92 ], !dbg !1265
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1195, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1266, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1262, metadata !DIExpression()), !dbg !1186
  %81 = icmp slt i32 %.2, 9, !dbg !1267
  br i1 %81, label %82, label %94, !dbg !1269

82:                                               ; preds = %80
  %83 = sext i32 %.2 to i64, !dbg !1270
  %84 = getelementptr inbounds [18 x i64], [18 x i64]* %5, i64 0, i64 %83, !dbg !1270
  %85 = load i64, i64* %84, align 8, !dbg !1270
  %86 = add i64 %85, %.03, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %86, metadata !1266, metadata !DIExpression()), !dbg !1186
  %87 = trunc i64 %86 to i32, !dbg !1273
  %88 = and i32 %87, 1073741823, !dbg !1274
  %89 = sext i32 %.2 to i64, !dbg !1275
  %90 = getelementptr inbounds i32, i32* %0, i64 %89, !dbg !1275
  store i32 %88, i32* %90, align 4, !dbg !1276
  %91 = ashr i64 %86, 30, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %91, metadata !1262, metadata !DIExpression()), !dbg !1186
  br label %92, !dbg !1278

92:                                               ; preds = %82
  %93 = add nsw i32 %.2, 1, !dbg !1279
  call void @llvm.dbg.value(metadata i32 %93, metadata !1195, metadata !DIExpression()), !dbg !1186
  br label %80, !dbg !1280, !llvm.loop !1281

94:                                               ; preds = %80
  %95 = ashr i64 %.02, 16, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %95, metadata !1262, metadata !DIExpression()), !dbg !1186
  %96 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !1284
  %97 = load i32, i32* %96, align 4, !dbg !1285
  %98 = and i32 %97, 65535, !dbg !1285
  store i32 %98, i32* %96, align 4, !dbg !1285
  %99 = trunc i64 %95 to i32, !dbg !1286
  call void @llvm.dbg.value(metadata i32 %99, metadata !1287, metadata !DIExpression()), !dbg !1186
  %100 = shl i32 %99, 6, !dbg !1288
  %101 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1289
  %102 = load i32, i32* %101, align 4, !dbg !1290
  %103 = sub i32 %102, %100, !dbg !1290
  store i32 %103, i32* %101, align 4, !dbg !1290
  %104 = shl i32 %99, 12, !dbg !1291
  %105 = and i32 %104, 1073741823, !dbg !1292
  %106 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !1293
  %107 = load i32, i32* %106, align 4, !dbg !1294
  %108 = sub i32 %107, %105, !dbg !1294
  store i32 %108, i32* %106, align 4, !dbg !1294
  %109 = ashr i32 %99, 18, !dbg !1295
  %110 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !1296
  %111 = load i32, i32* %110, align 4, !dbg !1297
  %112 = sub i32 %111, %109, !dbg !1297
  store i32 %112, i32* %110, align 4, !dbg !1297
  %113 = shl i32 %99, 14, !dbg !1298
  %114 = and i32 %113, 1073741823, !dbg !1299
  %115 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !1300
  %116 = load i32, i32* %115, align 4, !dbg !1301
  %117 = add i32 %116, %114, !dbg !1301
  store i32 %117, i32* %115, align 4, !dbg !1301
  %118 = ashr i32 %99, 16, !dbg !1302
  %119 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !1303
  %120 = load i32, i32* %119, align 4, !dbg !1304
  %121 = add i32 %120, %118, !dbg !1304
  store i32 %121, i32* %119, align 4, !dbg !1304
  %122 = lshr i32 %99, 31, !dbg !1305
  call void @llvm.dbg.value(metadata i32 %122, metadata !1306, metadata !DIExpression()), !dbg !1186
  %123 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1307
  %124 = load i32, i32* %123, align 4, !dbg !1308
  %125 = sub i32 %124, %122, !dbg !1308
  store i32 %125, i32* %123, align 4, !dbg !1308
  %126 = shl i32 %122, 6, !dbg !1309
  %127 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1310
  %128 = load i32, i32* %127, align 4, !dbg !1311
  %129 = add i32 %128, %126, !dbg !1311
  store i32 %129, i32* %127, align 4, !dbg !1311
  %130 = shl i32 %122, 12, !dbg !1312
  %131 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !1313
  %132 = load i32, i32* %131, align 4, !dbg !1314
  %133 = add i32 %132, %130, !dbg !1314
  store i32 %133, i32* %131, align 4, !dbg !1314
  %134 = shl i32 %122, 14, !dbg !1315
  %135 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !1316
  %136 = load i32, i32* %135, align 4, !dbg !1317
  %137 = sub i32 %136, %134, !dbg !1317
  store i32 %137, i32* %135, align 4, !dbg !1317
  %138 = shl i32 %122, 16, !dbg !1318
  %139 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !1319
  %140 = load i32, i32* %139, align 4, !dbg !1320
  %141 = add i32 %140, %138, !dbg !1320
  store i32 %141, i32* %139, align 4, !dbg !1320
  call void @llvm.dbg.value(metadata i32 0, metadata !1195, metadata !DIExpression()), !dbg !1186
  br label %142, !dbg !1321

142:                                              ; preds = %153, %94
  %.01 = phi i32 [ %99, %94 ], [ %152, %153 ], !dbg !1186
  %.3 = phi i32 [ 0, %94 ], [ %154, %153 ], !dbg !1323
  call void @llvm.dbg.value(metadata i32 %.3, metadata !1195, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1287, metadata !DIExpression()), !dbg !1186
  %143 = icmp slt i32 %.3, 9, !dbg !1324
  br i1 %143, label %144, label %155, !dbg !1326

144:                                              ; preds = %142
  %145 = sext i32 %.3 to i64, !dbg !1327
  %146 = getelementptr inbounds i32, i32* %0, i64 %145, !dbg !1327
  %147 = load i32, i32* %146, align 4, !dbg !1327
  %148 = add i32 %147, %.01, !dbg !1329
  call void @llvm.dbg.value(metadata i32 %148, metadata !1330, metadata !DIExpression()), !dbg !1331
  %149 = and i32 %148, 1073741823, !dbg !1332
  %150 = sext i32 %.3 to i64, !dbg !1333
  %151 = getelementptr inbounds i32, i32* %0, i64 %150, !dbg !1333
  store i32 %149, i32* %151, align 4, !dbg !1334
  %152 = ashr i32 %148, 30, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %152, metadata !1287, metadata !DIExpression()), !dbg !1186
  br label %153, !dbg !1336

153:                                              ; preds = %144
  %154 = add nsw i32 %.3, 1, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %154, metadata !1195, metadata !DIExpression()), !dbg !1186
  br label %142, !dbg !1338, !llvm.loop !1339

155:                                              ; preds = %142
  ret void, !dbg !1341
}

; Function Attrs: noinline nounwind uwtable
define internal void @mul9(i32* %0, i32* %1, i32* %2) #0 !dbg !1342 {
  %4 = alloca [17 x i64], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !1343, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i32* %1, metadata !1345, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i32* %2, metadata !1346, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.declare(metadata [17 x i64]* %4, metadata !1347, metadata !DIExpression()), !dbg !1351
  %5 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1352
  %6 = load i32, i32* %5, align 4, !dbg !1352
  %7 = zext i32 %6 to i64, !dbg !1352
  %8 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1352
  %9 = load i32, i32* %8, align 4, !dbg !1352
  %10 = zext i32 %9 to i64, !dbg !1352
  %11 = mul i64 %7, %10, !dbg !1352
  %12 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 0, !dbg !1353
  store i64 %11, i64* %12, align 16, !dbg !1354
  %13 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1355
  %14 = load i32, i32* %13, align 4, !dbg !1355
  %15 = zext i32 %14 to i64, !dbg !1355
  %16 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1355
  %17 = load i32, i32* %16, align 4, !dbg !1355
  %18 = zext i32 %17 to i64, !dbg !1355
  %19 = mul i64 %15, %18, !dbg !1355
  %20 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1356
  %21 = load i32, i32* %20, align 4, !dbg !1356
  %22 = zext i32 %21 to i64, !dbg !1356
  %23 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1356
  %24 = load i32, i32* %23, align 4, !dbg !1356
  %25 = zext i32 %24 to i64, !dbg !1356
  %26 = mul i64 %22, %25, !dbg !1356
  %27 = add i64 %19, %26, !dbg !1357
  %28 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 1, !dbg !1358
  store i64 %27, i64* %28, align 8, !dbg !1359
  %29 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1360
  %30 = load i32, i32* %29, align 4, !dbg !1360
  %31 = zext i32 %30 to i64, !dbg !1360
  %32 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !1360
  %33 = load i32, i32* %32, align 4, !dbg !1360
  %34 = zext i32 %33 to i64, !dbg !1360
  %35 = mul i64 %31, %34, !dbg !1360
  %36 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1361
  %37 = load i32, i32* %36, align 4, !dbg !1361
  %38 = zext i32 %37 to i64, !dbg !1361
  %39 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1361
  %40 = load i32, i32* %39, align 4, !dbg !1361
  %41 = zext i32 %40 to i64, !dbg !1361
  %42 = mul i64 %38, %41, !dbg !1361
  %43 = add i64 %35, %42, !dbg !1362
  %44 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1363
  %45 = load i32, i32* %44, align 4, !dbg !1363
  %46 = zext i32 %45 to i64, !dbg !1363
  %47 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1363
  %48 = load i32, i32* %47, align 4, !dbg !1363
  %49 = zext i32 %48 to i64, !dbg !1363
  %50 = mul i64 %46, %49, !dbg !1363
  %51 = add i64 %43, %50, !dbg !1364
  %52 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 2, !dbg !1365
  store i64 %51, i64* %52, align 16, !dbg !1366
  %53 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1367
  %54 = load i32, i32* %53, align 4, !dbg !1367
  %55 = zext i32 %54 to i64, !dbg !1367
  %56 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1367
  %57 = load i32, i32* %56, align 4, !dbg !1367
  %58 = zext i32 %57 to i64, !dbg !1367
  %59 = mul i64 %55, %58, !dbg !1367
  %60 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1368
  %61 = load i32, i32* %60, align 4, !dbg !1368
  %62 = zext i32 %61 to i64, !dbg !1368
  %63 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !1368
  %64 = load i32, i32* %63, align 4, !dbg !1368
  %65 = zext i32 %64 to i64, !dbg !1368
  %66 = mul i64 %62, %65, !dbg !1368
  %67 = add i64 %59, %66, !dbg !1369
  %68 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1370
  %69 = load i32, i32* %68, align 4, !dbg !1370
  %70 = zext i32 %69 to i64, !dbg !1370
  %71 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1370
  %72 = load i32, i32* %71, align 4, !dbg !1370
  %73 = zext i32 %72 to i64, !dbg !1370
  %74 = mul i64 %70, %73, !dbg !1370
  %75 = add i64 %67, %74, !dbg !1371
  %76 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1372
  %77 = load i32, i32* %76, align 4, !dbg !1372
  %78 = zext i32 %77 to i64, !dbg !1372
  %79 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1372
  %80 = load i32, i32* %79, align 4, !dbg !1372
  %81 = zext i32 %80 to i64, !dbg !1372
  %82 = mul i64 %78, %81, !dbg !1372
  %83 = add i64 %75, %82, !dbg !1373
  %84 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 3, !dbg !1374
  store i64 %83, i64* %84, align 8, !dbg !1375
  %85 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1376
  %86 = load i32, i32* %85, align 4, !dbg !1376
  %87 = zext i32 %86 to i64, !dbg !1376
  %88 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !1376
  %89 = load i32, i32* %88, align 4, !dbg !1376
  %90 = zext i32 %89 to i64, !dbg !1376
  %91 = mul i64 %87, %90, !dbg !1376
  %92 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1377
  %93 = load i32, i32* %92, align 4, !dbg !1377
  %94 = zext i32 %93 to i64, !dbg !1377
  %95 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1377
  %96 = load i32, i32* %95, align 4, !dbg !1377
  %97 = zext i32 %96 to i64, !dbg !1377
  %98 = mul i64 %94, %97, !dbg !1377
  %99 = add i64 %91, %98, !dbg !1378
  %100 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1379
  %101 = load i32, i32* %100, align 4, !dbg !1379
  %102 = zext i32 %101 to i64, !dbg !1379
  %103 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !1379
  %104 = load i32, i32* %103, align 4, !dbg !1379
  %105 = zext i32 %104 to i64, !dbg !1379
  %106 = mul i64 %102, %105, !dbg !1379
  %107 = add i64 %99, %106, !dbg !1380
  %108 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1381
  %109 = load i32, i32* %108, align 4, !dbg !1381
  %110 = zext i32 %109 to i64, !dbg !1381
  %111 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1381
  %112 = load i32, i32* %111, align 4, !dbg !1381
  %113 = zext i32 %112 to i64, !dbg !1381
  %114 = mul i64 %110, %113, !dbg !1381
  %115 = add i64 %107, %114, !dbg !1382
  %116 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1383
  %117 = load i32, i32* %116, align 4, !dbg !1383
  %118 = zext i32 %117 to i64, !dbg !1383
  %119 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1383
  %120 = load i32, i32* %119, align 4, !dbg !1383
  %121 = zext i32 %120 to i64, !dbg !1383
  %122 = mul i64 %118, %121, !dbg !1383
  %123 = add i64 %115, %122, !dbg !1384
  %124 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 4, !dbg !1385
  store i64 %123, i64* %124, align 16, !dbg !1386
  %125 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1387
  %126 = load i32, i32* %125, align 4, !dbg !1387
  %127 = zext i32 %126 to i64, !dbg !1387
  %128 = getelementptr inbounds i32, i32* %2, i64 5, !dbg !1387
  %129 = load i32, i32* %128, align 4, !dbg !1387
  %130 = zext i32 %129 to i64, !dbg !1387
  %131 = mul i64 %127, %130, !dbg !1387
  %132 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1388
  %133 = load i32, i32* %132, align 4, !dbg !1388
  %134 = zext i32 %133 to i64, !dbg !1388
  %135 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !1388
  %136 = load i32, i32* %135, align 4, !dbg !1388
  %137 = zext i32 %136 to i64, !dbg !1388
  %138 = mul i64 %134, %137, !dbg !1388
  %139 = add i64 %131, %138, !dbg !1389
  %140 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1390
  %141 = load i32, i32* %140, align 4, !dbg !1390
  %142 = zext i32 %141 to i64, !dbg !1390
  %143 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1390
  %144 = load i32, i32* %143, align 4, !dbg !1390
  %145 = zext i32 %144 to i64, !dbg !1390
  %146 = mul i64 %142, %145, !dbg !1390
  %147 = add i64 %139, %146, !dbg !1391
  %148 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1392
  %149 = load i32, i32* %148, align 4, !dbg !1392
  %150 = zext i32 %149 to i64, !dbg !1392
  %151 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !1392
  %152 = load i32, i32* %151, align 4, !dbg !1392
  %153 = zext i32 %152 to i64, !dbg !1392
  %154 = mul i64 %150, %153, !dbg !1392
  %155 = add i64 %147, %154, !dbg !1393
  %156 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1394
  %157 = load i32, i32* %156, align 4, !dbg !1394
  %158 = zext i32 %157 to i64, !dbg !1394
  %159 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1394
  %160 = load i32, i32* %159, align 4, !dbg !1394
  %161 = zext i32 %160 to i64, !dbg !1394
  %162 = mul i64 %158, %161, !dbg !1394
  %163 = add i64 %155, %162, !dbg !1395
  %164 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1396
  %165 = load i32, i32* %164, align 4, !dbg !1396
  %166 = zext i32 %165 to i64, !dbg !1396
  %167 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1396
  %168 = load i32, i32* %167, align 4, !dbg !1396
  %169 = zext i32 %168 to i64, !dbg !1396
  %170 = mul i64 %166, %169, !dbg !1396
  %171 = add i64 %163, %170, !dbg !1397
  %172 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 5, !dbg !1398
  store i64 %171, i64* %172, align 8, !dbg !1399
  %173 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1400
  %174 = load i32, i32* %173, align 4, !dbg !1400
  %175 = zext i32 %174 to i64, !dbg !1400
  %176 = getelementptr inbounds i32, i32* %2, i64 6, !dbg !1400
  %177 = load i32, i32* %176, align 4, !dbg !1400
  %178 = zext i32 %177 to i64, !dbg !1400
  %179 = mul i64 %175, %178, !dbg !1400
  %180 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1401
  %181 = load i32, i32* %180, align 4, !dbg !1401
  %182 = zext i32 %181 to i64, !dbg !1401
  %183 = getelementptr inbounds i32, i32* %2, i64 5, !dbg !1401
  %184 = load i32, i32* %183, align 4, !dbg !1401
  %185 = zext i32 %184 to i64, !dbg !1401
  %186 = mul i64 %182, %185, !dbg !1401
  %187 = add i64 %179, %186, !dbg !1402
  %188 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1403
  %189 = load i32, i32* %188, align 4, !dbg !1403
  %190 = zext i32 %189 to i64, !dbg !1403
  %191 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !1403
  %192 = load i32, i32* %191, align 4, !dbg !1403
  %193 = zext i32 %192 to i64, !dbg !1403
  %194 = mul i64 %190, %193, !dbg !1403
  %195 = add i64 %187, %194, !dbg !1404
  %196 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1405
  %197 = load i32, i32* %196, align 4, !dbg !1405
  %198 = zext i32 %197 to i64, !dbg !1405
  %199 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1405
  %200 = load i32, i32* %199, align 4, !dbg !1405
  %201 = zext i32 %200 to i64, !dbg !1405
  %202 = mul i64 %198, %201, !dbg !1405
  %203 = add i64 %195, %202, !dbg !1406
  %204 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1407
  %205 = load i32, i32* %204, align 4, !dbg !1407
  %206 = zext i32 %205 to i64, !dbg !1407
  %207 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !1407
  %208 = load i32, i32* %207, align 4, !dbg !1407
  %209 = zext i32 %208 to i64, !dbg !1407
  %210 = mul i64 %206, %209, !dbg !1407
  %211 = add i64 %203, %210, !dbg !1408
  %212 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1409
  %213 = load i32, i32* %212, align 4, !dbg !1409
  %214 = zext i32 %213 to i64, !dbg !1409
  %215 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1409
  %216 = load i32, i32* %215, align 4, !dbg !1409
  %217 = zext i32 %216 to i64, !dbg !1409
  %218 = mul i64 %214, %217, !dbg !1409
  %219 = add i64 %211, %218, !dbg !1410
  %220 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1411
  %221 = load i32, i32* %220, align 4, !dbg !1411
  %222 = zext i32 %221 to i64, !dbg !1411
  %223 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1411
  %224 = load i32, i32* %223, align 4, !dbg !1411
  %225 = zext i32 %224 to i64, !dbg !1411
  %226 = mul i64 %222, %225, !dbg !1411
  %227 = add i64 %219, %226, !dbg !1412
  %228 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 6, !dbg !1413
  store i64 %227, i64* %228, align 16, !dbg !1414
  %229 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1415
  %230 = load i32, i32* %229, align 4, !dbg !1415
  %231 = zext i32 %230 to i64, !dbg !1415
  %232 = getelementptr inbounds i32, i32* %2, i64 7, !dbg !1415
  %233 = load i32, i32* %232, align 4, !dbg !1415
  %234 = zext i32 %233 to i64, !dbg !1415
  %235 = mul i64 %231, %234, !dbg !1415
  %236 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1416
  %237 = load i32, i32* %236, align 4, !dbg !1416
  %238 = zext i32 %237 to i64, !dbg !1416
  %239 = getelementptr inbounds i32, i32* %2, i64 6, !dbg !1416
  %240 = load i32, i32* %239, align 4, !dbg !1416
  %241 = zext i32 %240 to i64, !dbg !1416
  %242 = mul i64 %238, %241, !dbg !1416
  %243 = add i64 %235, %242, !dbg !1417
  %244 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1418
  %245 = load i32, i32* %244, align 4, !dbg !1418
  %246 = zext i32 %245 to i64, !dbg !1418
  %247 = getelementptr inbounds i32, i32* %2, i64 5, !dbg !1418
  %248 = load i32, i32* %247, align 4, !dbg !1418
  %249 = zext i32 %248 to i64, !dbg !1418
  %250 = mul i64 %246, %249, !dbg !1418
  %251 = add i64 %243, %250, !dbg !1419
  %252 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1420
  %253 = load i32, i32* %252, align 4, !dbg !1420
  %254 = zext i32 %253 to i64, !dbg !1420
  %255 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !1420
  %256 = load i32, i32* %255, align 4, !dbg !1420
  %257 = zext i32 %256 to i64, !dbg !1420
  %258 = mul i64 %254, %257, !dbg !1420
  %259 = add i64 %251, %258, !dbg !1421
  %260 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1422
  %261 = load i32, i32* %260, align 4, !dbg !1422
  %262 = zext i32 %261 to i64, !dbg !1422
  %263 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1422
  %264 = load i32, i32* %263, align 4, !dbg !1422
  %265 = zext i32 %264 to i64, !dbg !1422
  %266 = mul i64 %262, %265, !dbg !1422
  %267 = add i64 %259, %266, !dbg !1423
  %268 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1424
  %269 = load i32, i32* %268, align 4, !dbg !1424
  %270 = zext i32 %269 to i64, !dbg !1424
  %271 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !1424
  %272 = load i32, i32* %271, align 4, !dbg !1424
  %273 = zext i32 %272 to i64, !dbg !1424
  %274 = mul i64 %270, %273, !dbg !1424
  %275 = add i64 %267, %274, !dbg !1425
  %276 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1426
  %277 = load i32, i32* %276, align 4, !dbg !1426
  %278 = zext i32 %277 to i64, !dbg !1426
  %279 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1426
  %280 = load i32, i32* %279, align 4, !dbg !1426
  %281 = zext i32 %280 to i64, !dbg !1426
  %282 = mul i64 %278, %281, !dbg !1426
  %283 = add i64 %275, %282, !dbg !1427
  %284 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1428
  %285 = load i32, i32* %284, align 4, !dbg !1428
  %286 = zext i32 %285 to i64, !dbg !1428
  %287 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1428
  %288 = load i32, i32* %287, align 4, !dbg !1428
  %289 = zext i32 %288 to i64, !dbg !1428
  %290 = mul i64 %286, %289, !dbg !1428
  %291 = add i64 %283, %290, !dbg !1429
  %292 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 7, !dbg !1430
  store i64 %291, i64* %292, align 8, !dbg !1431
  %293 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1432
  %294 = load i32, i32* %293, align 4, !dbg !1432
  %295 = zext i32 %294 to i64, !dbg !1432
  %296 = getelementptr inbounds i32, i32* %2, i64 8, !dbg !1432
  %297 = load i32, i32* %296, align 4, !dbg !1432
  %298 = zext i32 %297 to i64, !dbg !1432
  %299 = mul i64 %295, %298, !dbg !1432
  %300 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1433
  %301 = load i32, i32* %300, align 4, !dbg !1433
  %302 = zext i32 %301 to i64, !dbg !1433
  %303 = getelementptr inbounds i32, i32* %2, i64 7, !dbg !1433
  %304 = load i32, i32* %303, align 4, !dbg !1433
  %305 = zext i32 %304 to i64, !dbg !1433
  %306 = mul i64 %302, %305, !dbg !1433
  %307 = add i64 %299, %306, !dbg !1434
  %308 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1435
  %309 = load i32, i32* %308, align 4, !dbg !1435
  %310 = zext i32 %309 to i64, !dbg !1435
  %311 = getelementptr inbounds i32, i32* %2, i64 6, !dbg !1435
  %312 = load i32, i32* %311, align 4, !dbg !1435
  %313 = zext i32 %312 to i64, !dbg !1435
  %314 = mul i64 %310, %313, !dbg !1435
  %315 = add i64 %307, %314, !dbg !1436
  %316 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1437
  %317 = load i32, i32* %316, align 4, !dbg !1437
  %318 = zext i32 %317 to i64, !dbg !1437
  %319 = getelementptr inbounds i32, i32* %2, i64 5, !dbg !1437
  %320 = load i32, i32* %319, align 4, !dbg !1437
  %321 = zext i32 %320 to i64, !dbg !1437
  %322 = mul i64 %318, %321, !dbg !1437
  %323 = add i64 %315, %322, !dbg !1438
  %324 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1439
  %325 = load i32, i32* %324, align 4, !dbg !1439
  %326 = zext i32 %325 to i64, !dbg !1439
  %327 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !1439
  %328 = load i32, i32* %327, align 4, !dbg !1439
  %329 = zext i32 %328 to i64, !dbg !1439
  %330 = mul i64 %326, %329, !dbg !1439
  %331 = add i64 %323, %330, !dbg !1440
  %332 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1441
  %333 = load i32, i32* %332, align 4, !dbg !1441
  %334 = zext i32 %333 to i64, !dbg !1441
  %335 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1441
  %336 = load i32, i32* %335, align 4, !dbg !1441
  %337 = zext i32 %336 to i64, !dbg !1441
  %338 = mul i64 %334, %337, !dbg !1441
  %339 = add i64 %331, %338, !dbg !1442
  %340 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1443
  %341 = load i32, i32* %340, align 4, !dbg !1443
  %342 = zext i32 %341 to i64, !dbg !1443
  %343 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !1443
  %344 = load i32, i32* %343, align 4, !dbg !1443
  %345 = zext i32 %344 to i64, !dbg !1443
  %346 = mul i64 %342, %345, !dbg !1443
  %347 = add i64 %339, %346, !dbg !1444
  %348 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1445
  %349 = load i32, i32* %348, align 4, !dbg !1445
  %350 = zext i32 %349 to i64, !dbg !1445
  %351 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1445
  %352 = load i32, i32* %351, align 4, !dbg !1445
  %353 = zext i32 %352 to i64, !dbg !1445
  %354 = mul i64 %350, %353, !dbg !1445
  %355 = add i64 %347, %354, !dbg !1446
  %356 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1447
  %357 = load i32, i32* %356, align 4, !dbg !1447
  %358 = zext i32 %357 to i64, !dbg !1447
  %359 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1447
  %360 = load i32, i32* %359, align 4, !dbg !1447
  %361 = zext i32 %360 to i64, !dbg !1447
  %362 = mul i64 %358, %361, !dbg !1447
  %363 = add i64 %355, %362, !dbg !1448
  %364 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 8, !dbg !1449
  store i64 %363, i64* %364, align 16, !dbg !1450
  %365 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1451
  %366 = load i32, i32* %365, align 4, !dbg !1451
  %367 = zext i32 %366 to i64, !dbg !1451
  %368 = getelementptr inbounds i32, i32* %2, i64 8, !dbg !1451
  %369 = load i32, i32* %368, align 4, !dbg !1451
  %370 = zext i32 %369 to i64, !dbg !1451
  %371 = mul i64 %367, %370, !dbg !1451
  %372 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1452
  %373 = load i32, i32* %372, align 4, !dbg !1452
  %374 = zext i32 %373 to i64, !dbg !1452
  %375 = getelementptr inbounds i32, i32* %2, i64 7, !dbg !1452
  %376 = load i32, i32* %375, align 4, !dbg !1452
  %377 = zext i32 %376 to i64, !dbg !1452
  %378 = mul i64 %374, %377, !dbg !1452
  %379 = add i64 %371, %378, !dbg !1453
  %380 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1454
  %381 = load i32, i32* %380, align 4, !dbg !1454
  %382 = zext i32 %381 to i64, !dbg !1454
  %383 = getelementptr inbounds i32, i32* %2, i64 6, !dbg !1454
  %384 = load i32, i32* %383, align 4, !dbg !1454
  %385 = zext i32 %384 to i64, !dbg !1454
  %386 = mul i64 %382, %385, !dbg !1454
  %387 = add i64 %379, %386, !dbg !1455
  %388 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1456
  %389 = load i32, i32* %388, align 4, !dbg !1456
  %390 = zext i32 %389 to i64, !dbg !1456
  %391 = getelementptr inbounds i32, i32* %2, i64 5, !dbg !1456
  %392 = load i32, i32* %391, align 4, !dbg !1456
  %393 = zext i32 %392 to i64, !dbg !1456
  %394 = mul i64 %390, %393, !dbg !1456
  %395 = add i64 %387, %394, !dbg !1457
  %396 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1458
  %397 = load i32, i32* %396, align 4, !dbg !1458
  %398 = zext i32 %397 to i64, !dbg !1458
  %399 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !1458
  %400 = load i32, i32* %399, align 4, !dbg !1458
  %401 = zext i32 %400 to i64, !dbg !1458
  %402 = mul i64 %398, %401, !dbg !1458
  %403 = add i64 %395, %402, !dbg !1459
  %404 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1460
  %405 = load i32, i32* %404, align 4, !dbg !1460
  %406 = zext i32 %405 to i64, !dbg !1460
  %407 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1460
  %408 = load i32, i32* %407, align 4, !dbg !1460
  %409 = zext i32 %408 to i64, !dbg !1460
  %410 = mul i64 %406, %409, !dbg !1460
  %411 = add i64 %403, %410, !dbg !1461
  %412 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1462
  %413 = load i32, i32* %412, align 4, !dbg !1462
  %414 = zext i32 %413 to i64, !dbg !1462
  %415 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !1462
  %416 = load i32, i32* %415, align 4, !dbg !1462
  %417 = zext i32 %416 to i64, !dbg !1462
  %418 = mul i64 %414, %417, !dbg !1462
  %419 = add i64 %411, %418, !dbg !1463
  %420 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1464
  %421 = load i32, i32* %420, align 4, !dbg !1464
  %422 = zext i32 %421 to i64, !dbg !1464
  %423 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1464
  %424 = load i32, i32* %423, align 4, !dbg !1464
  %425 = zext i32 %424 to i64, !dbg !1464
  %426 = mul i64 %422, %425, !dbg !1464
  %427 = add i64 %419, %426, !dbg !1465
  %428 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 9, !dbg !1466
  store i64 %427, i64* %428, align 8, !dbg !1467
  %429 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1468
  %430 = load i32, i32* %429, align 4, !dbg !1468
  %431 = zext i32 %430 to i64, !dbg !1468
  %432 = getelementptr inbounds i32, i32* %2, i64 8, !dbg !1468
  %433 = load i32, i32* %432, align 4, !dbg !1468
  %434 = zext i32 %433 to i64, !dbg !1468
  %435 = mul i64 %431, %434, !dbg !1468
  %436 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1469
  %437 = load i32, i32* %436, align 4, !dbg !1469
  %438 = zext i32 %437 to i64, !dbg !1469
  %439 = getelementptr inbounds i32, i32* %2, i64 7, !dbg !1469
  %440 = load i32, i32* %439, align 4, !dbg !1469
  %441 = zext i32 %440 to i64, !dbg !1469
  %442 = mul i64 %438, %441, !dbg !1469
  %443 = add i64 %435, %442, !dbg !1470
  %444 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1471
  %445 = load i32, i32* %444, align 4, !dbg !1471
  %446 = zext i32 %445 to i64, !dbg !1471
  %447 = getelementptr inbounds i32, i32* %2, i64 6, !dbg !1471
  %448 = load i32, i32* %447, align 4, !dbg !1471
  %449 = zext i32 %448 to i64, !dbg !1471
  %450 = mul i64 %446, %449, !dbg !1471
  %451 = add i64 %443, %450, !dbg !1472
  %452 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1473
  %453 = load i32, i32* %452, align 4, !dbg !1473
  %454 = zext i32 %453 to i64, !dbg !1473
  %455 = getelementptr inbounds i32, i32* %2, i64 5, !dbg !1473
  %456 = load i32, i32* %455, align 4, !dbg !1473
  %457 = zext i32 %456 to i64, !dbg !1473
  %458 = mul i64 %454, %457, !dbg !1473
  %459 = add i64 %451, %458, !dbg !1474
  %460 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1475
  %461 = load i32, i32* %460, align 4, !dbg !1475
  %462 = zext i32 %461 to i64, !dbg !1475
  %463 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !1475
  %464 = load i32, i32* %463, align 4, !dbg !1475
  %465 = zext i32 %464 to i64, !dbg !1475
  %466 = mul i64 %462, %465, !dbg !1475
  %467 = add i64 %459, %466, !dbg !1476
  %468 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1477
  %469 = load i32, i32* %468, align 4, !dbg !1477
  %470 = zext i32 %469 to i64, !dbg !1477
  %471 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1477
  %472 = load i32, i32* %471, align 4, !dbg !1477
  %473 = zext i32 %472 to i64, !dbg !1477
  %474 = mul i64 %470, %473, !dbg !1477
  %475 = add i64 %467, %474, !dbg !1478
  %476 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1479
  %477 = load i32, i32* %476, align 4, !dbg !1479
  %478 = zext i32 %477 to i64, !dbg !1479
  %479 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !1479
  %480 = load i32, i32* %479, align 4, !dbg !1479
  %481 = zext i32 %480 to i64, !dbg !1479
  %482 = mul i64 %478, %481, !dbg !1479
  %483 = add i64 %475, %482, !dbg !1480
  %484 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 10, !dbg !1481
  store i64 %483, i64* %484, align 16, !dbg !1482
  %485 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1483
  %486 = load i32, i32* %485, align 4, !dbg !1483
  %487 = zext i32 %486 to i64, !dbg !1483
  %488 = getelementptr inbounds i32, i32* %2, i64 8, !dbg !1483
  %489 = load i32, i32* %488, align 4, !dbg !1483
  %490 = zext i32 %489 to i64, !dbg !1483
  %491 = mul i64 %487, %490, !dbg !1483
  %492 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1484
  %493 = load i32, i32* %492, align 4, !dbg !1484
  %494 = zext i32 %493 to i64, !dbg !1484
  %495 = getelementptr inbounds i32, i32* %2, i64 7, !dbg !1484
  %496 = load i32, i32* %495, align 4, !dbg !1484
  %497 = zext i32 %496 to i64, !dbg !1484
  %498 = mul i64 %494, %497, !dbg !1484
  %499 = add i64 %491, %498, !dbg !1485
  %500 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1486
  %501 = load i32, i32* %500, align 4, !dbg !1486
  %502 = zext i32 %501 to i64, !dbg !1486
  %503 = getelementptr inbounds i32, i32* %2, i64 6, !dbg !1486
  %504 = load i32, i32* %503, align 4, !dbg !1486
  %505 = zext i32 %504 to i64, !dbg !1486
  %506 = mul i64 %502, %505, !dbg !1486
  %507 = add i64 %499, %506, !dbg !1487
  %508 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1488
  %509 = load i32, i32* %508, align 4, !dbg !1488
  %510 = zext i32 %509 to i64, !dbg !1488
  %511 = getelementptr inbounds i32, i32* %2, i64 5, !dbg !1488
  %512 = load i32, i32* %511, align 4, !dbg !1488
  %513 = zext i32 %512 to i64, !dbg !1488
  %514 = mul i64 %510, %513, !dbg !1488
  %515 = add i64 %507, %514, !dbg !1489
  %516 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1490
  %517 = load i32, i32* %516, align 4, !dbg !1490
  %518 = zext i32 %517 to i64, !dbg !1490
  %519 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !1490
  %520 = load i32, i32* %519, align 4, !dbg !1490
  %521 = zext i32 %520 to i64, !dbg !1490
  %522 = mul i64 %518, %521, !dbg !1490
  %523 = add i64 %515, %522, !dbg !1491
  %524 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1492
  %525 = load i32, i32* %524, align 4, !dbg !1492
  %526 = zext i32 %525 to i64, !dbg !1492
  %527 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1492
  %528 = load i32, i32* %527, align 4, !dbg !1492
  %529 = zext i32 %528 to i64, !dbg !1492
  %530 = mul i64 %526, %529, !dbg !1492
  %531 = add i64 %523, %530, !dbg !1493
  %532 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 11, !dbg !1494
  store i64 %531, i64* %532, align 8, !dbg !1495
  %533 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1496
  %534 = load i32, i32* %533, align 4, !dbg !1496
  %535 = zext i32 %534 to i64, !dbg !1496
  %536 = getelementptr inbounds i32, i32* %2, i64 8, !dbg !1496
  %537 = load i32, i32* %536, align 4, !dbg !1496
  %538 = zext i32 %537 to i64, !dbg !1496
  %539 = mul i64 %535, %538, !dbg !1496
  %540 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1497
  %541 = load i32, i32* %540, align 4, !dbg !1497
  %542 = zext i32 %541 to i64, !dbg !1497
  %543 = getelementptr inbounds i32, i32* %2, i64 7, !dbg !1497
  %544 = load i32, i32* %543, align 4, !dbg !1497
  %545 = zext i32 %544 to i64, !dbg !1497
  %546 = mul i64 %542, %545, !dbg !1497
  %547 = add i64 %539, %546, !dbg !1498
  %548 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1499
  %549 = load i32, i32* %548, align 4, !dbg !1499
  %550 = zext i32 %549 to i64, !dbg !1499
  %551 = getelementptr inbounds i32, i32* %2, i64 6, !dbg !1499
  %552 = load i32, i32* %551, align 4, !dbg !1499
  %553 = zext i32 %552 to i64, !dbg !1499
  %554 = mul i64 %550, %553, !dbg !1499
  %555 = add i64 %547, %554, !dbg !1500
  %556 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1501
  %557 = load i32, i32* %556, align 4, !dbg !1501
  %558 = zext i32 %557 to i64, !dbg !1501
  %559 = getelementptr inbounds i32, i32* %2, i64 5, !dbg !1501
  %560 = load i32, i32* %559, align 4, !dbg !1501
  %561 = zext i32 %560 to i64, !dbg !1501
  %562 = mul i64 %558, %561, !dbg !1501
  %563 = add i64 %555, %562, !dbg !1502
  %564 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1503
  %565 = load i32, i32* %564, align 4, !dbg !1503
  %566 = zext i32 %565 to i64, !dbg !1503
  %567 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !1503
  %568 = load i32, i32* %567, align 4, !dbg !1503
  %569 = zext i32 %568 to i64, !dbg !1503
  %570 = mul i64 %566, %569, !dbg !1503
  %571 = add i64 %563, %570, !dbg !1504
  %572 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 12, !dbg !1505
  store i64 %571, i64* %572, align 16, !dbg !1506
  %573 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1507
  %574 = load i32, i32* %573, align 4, !dbg !1507
  %575 = zext i32 %574 to i64, !dbg !1507
  %576 = getelementptr inbounds i32, i32* %2, i64 8, !dbg !1507
  %577 = load i32, i32* %576, align 4, !dbg !1507
  %578 = zext i32 %577 to i64, !dbg !1507
  %579 = mul i64 %575, %578, !dbg !1507
  %580 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1508
  %581 = load i32, i32* %580, align 4, !dbg !1508
  %582 = zext i32 %581 to i64, !dbg !1508
  %583 = getelementptr inbounds i32, i32* %2, i64 7, !dbg !1508
  %584 = load i32, i32* %583, align 4, !dbg !1508
  %585 = zext i32 %584 to i64, !dbg !1508
  %586 = mul i64 %582, %585, !dbg !1508
  %587 = add i64 %579, %586, !dbg !1509
  %588 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1510
  %589 = load i32, i32* %588, align 4, !dbg !1510
  %590 = zext i32 %589 to i64, !dbg !1510
  %591 = getelementptr inbounds i32, i32* %2, i64 6, !dbg !1510
  %592 = load i32, i32* %591, align 4, !dbg !1510
  %593 = zext i32 %592 to i64, !dbg !1510
  %594 = mul i64 %590, %593, !dbg !1510
  %595 = add i64 %587, %594, !dbg !1511
  %596 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1512
  %597 = load i32, i32* %596, align 4, !dbg !1512
  %598 = zext i32 %597 to i64, !dbg !1512
  %599 = getelementptr inbounds i32, i32* %2, i64 5, !dbg !1512
  %600 = load i32, i32* %599, align 4, !dbg !1512
  %601 = zext i32 %600 to i64, !dbg !1512
  %602 = mul i64 %598, %601, !dbg !1512
  %603 = add i64 %595, %602, !dbg !1513
  %604 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 13, !dbg !1514
  store i64 %603, i64* %604, align 8, !dbg !1515
  %605 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1516
  %606 = load i32, i32* %605, align 4, !dbg !1516
  %607 = zext i32 %606 to i64, !dbg !1516
  %608 = getelementptr inbounds i32, i32* %2, i64 8, !dbg !1516
  %609 = load i32, i32* %608, align 4, !dbg !1516
  %610 = zext i32 %609 to i64, !dbg !1516
  %611 = mul i64 %607, %610, !dbg !1516
  %612 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1517
  %613 = load i32, i32* %612, align 4, !dbg !1517
  %614 = zext i32 %613 to i64, !dbg !1517
  %615 = getelementptr inbounds i32, i32* %2, i64 7, !dbg !1517
  %616 = load i32, i32* %615, align 4, !dbg !1517
  %617 = zext i32 %616 to i64, !dbg !1517
  %618 = mul i64 %614, %617, !dbg !1517
  %619 = add i64 %611, %618, !dbg !1518
  %620 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1519
  %621 = load i32, i32* %620, align 4, !dbg !1519
  %622 = zext i32 %621 to i64, !dbg !1519
  %623 = getelementptr inbounds i32, i32* %2, i64 6, !dbg !1519
  %624 = load i32, i32* %623, align 4, !dbg !1519
  %625 = zext i32 %624 to i64, !dbg !1519
  %626 = mul i64 %622, %625, !dbg !1519
  %627 = add i64 %619, %626, !dbg !1520
  %628 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 14, !dbg !1521
  store i64 %627, i64* %628, align 16, !dbg !1522
  %629 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1523
  %630 = load i32, i32* %629, align 4, !dbg !1523
  %631 = zext i32 %630 to i64, !dbg !1523
  %632 = getelementptr inbounds i32, i32* %2, i64 8, !dbg !1523
  %633 = load i32, i32* %632, align 4, !dbg !1523
  %634 = zext i32 %633 to i64, !dbg !1523
  %635 = mul i64 %631, %634, !dbg !1523
  %636 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1524
  %637 = load i32, i32* %636, align 4, !dbg !1524
  %638 = zext i32 %637 to i64, !dbg !1524
  %639 = getelementptr inbounds i32, i32* %2, i64 7, !dbg !1524
  %640 = load i32, i32* %639, align 4, !dbg !1524
  %641 = zext i32 %640 to i64, !dbg !1524
  %642 = mul i64 %638, %641, !dbg !1524
  %643 = add i64 %635, %642, !dbg !1525
  %644 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 15, !dbg !1526
  store i64 %643, i64* %644, align 8, !dbg !1527
  %645 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1528
  %646 = load i32, i32* %645, align 4, !dbg !1528
  %647 = zext i32 %646 to i64, !dbg !1528
  %648 = getelementptr inbounds i32, i32* %2, i64 8, !dbg !1528
  %649 = load i32, i32* %648, align 4, !dbg !1528
  %650 = zext i32 %649 to i64, !dbg !1528
  %651 = mul i64 %647, %650, !dbg !1528
  %652 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 16, !dbg !1529
  store i64 %651, i64* %652, align 16, !dbg !1530
  call void @llvm.dbg.value(metadata i64 0, metadata !1531, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i32 0, metadata !1532, metadata !DIExpression()), !dbg !1344
  br label %653, !dbg !1533

653:                                              ; preds = %665, %3
  %.01 = phi i64 [ 0, %3 ], [ %664, %665 ], !dbg !1344
  %.0 = phi i32 [ 0, %3 ], [ %666, %665 ], !dbg !1535
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1532, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1531, metadata !DIExpression()), !dbg !1344
  %654 = icmp slt i32 %.0, 17, !dbg !1536
  br i1 %654, label %655, label %667, !dbg !1538

655:                                              ; preds = %653
  %656 = sext i32 %.0 to i64, !dbg !1539
  %657 = getelementptr inbounds [17 x i64], [17 x i64]* %4, i64 0, i64 %656, !dbg !1539
  %658 = load i64, i64* %657, align 8, !dbg !1539
  %659 = add i64 %658, %.01, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %659, metadata !1542, metadata !DIExpression()), !dbg !1543
  %660 = trunc i64 %659 to i32, !dbg !1544
  %661 = and i32 %660, 1073741823, !dbg !1545
  %662 = sext i32 %.0 to i64, !dbg !1546
  %663 = getelementptr inbounds i32, i32* %0, i64 %662, !dbg !1546
  store i32 %661, i32* %663, align 4, !dbg !1547
  %664 = lshr i64 %659, 30, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %664, metadata !1531, metadata !DIExpression()), !dbg !1344
  br label %665, !dbg !1549

665:                                              ; preds = %655
  %666 = add nsw i32 %.0, 1, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %666, metadata !1532, metadata !DIExpression()), !dbg !1344
  br label %653, !dbg !1551, !llvm.loop !1552

667:                                              ; preds = %653
  %668 = trunc i64 %.01 to i32, !dbg !1554
  %669 = getelementptr inbounds i32, i32* %0, i64 17, !dbg !1555
  store i32 %668, i32* %669, align 4, !dbg !1556
  ret void, !dbg !1557
}

; Function Attrs: noinline nounwind uwtable
define internal void @square9(i32* %0, i32* %1) #0 !dbg !1558 {
  %3 = alloca [17 x i64], align 16
  call void @llvm.dbg.value(metadata i32* %0, metadata !1559, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i32* %1, metadata !1561, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.declare(metadata [17 x i64]* %3, metadata !1562, metadata !DIExpression()), !dbg !1563
  %4 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1564
  %5 = load i32, i32* %4, align 4, !dbg !1564
  %6 = zext i32 %5 to i64, !dbg !1564
  %7 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1564
  %8 = load i32, i32* %7, align 4, !dbg !1564
  %9 = zext i32 %8 to i64, !dbg !1564
  %10 = mul i64 %6, %9, !dbg !1564
  %11 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 0, !dbg !1565
  store i64 %10, i64* %11, align 16, !dbg !1566
  %12 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1567
  %13 = load i32, i32* %12, align 4, !dbg !1567
  %14 = zext i32 %13 to i64, !dbg !1567
  %15 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1567
  %16 = load i32, i32* %15, align 4, !dbg !1567
  %17 = zext i32 %16 to i64, !dbg !1567
  %18 = mul i64 %14, %17, !dbg !1567
  %19 = shl i64 %18, 1, !dbg !1568
  %20 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 1, !dbg !1569
  store i64 %19, i64* %20, align 8, !dbg !1570
  %21 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1571
  %22 = load i32, i32* %21, align 4, !dbg !1571
  %23 = zext i32 %22 to i64, !dbg !1571
  %24 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1571
  %25 = load i32, i32* %24, align 4, !dbg !1571
  %26 = zext i32 %25 to i64, !dbg !1571
  %27 = mul i64 %23, %26, !dbg !1571
  %28 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1572
  %29 = load i32, i32* %28, align 4, !dbg !1572
  %30 = zext i32 %29 to i64, !dbg !1572
  %31 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1572
  %32 = load i32, i32* %31, align 4, !dbg !1572
  %33 = zext i32 %32 to i64, !dbg !1572
  %34 = mul i64 %30, %33, !dbg !1572
  %35 = shl i64 %34, 1, !dbg !1573
  %36 = add i64 %27, %35, !dbg !1574
  %37 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 2, !dbg !1575
  store i64 %36, i64* %37, align 16, !dbg !1576
  %38 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1577
  %39 = load i32, i32* %38, align 4, !dbg !1577
  %40 = zext i32 %39 to i64, !dbg !1577
  %41 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1577
  %42 = load i32, i32* %41, align 4, !dbg !1577
  %43 = zext i32 %42 to i64, !dbg !1577
  %44 = mul i64 %40, %43, !dbg !1577
  %45 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1578
  %46 = load i32, i32* %45, align 4, !dbg !1578
  %47 = zext i32 %46 to i64, !dbg !1578
  %48 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1578
  %49 = load i32, i32* %48, align 4, !dbg !1578
  %50 = zext i32 %49 to i64, !dbg !1578
  %51 = mul i64 %47, %50, !dbg !1578
  %52 = add i64 %44, %51, !dbg !1579
  %53 = shl i64 %52, 1, !dbg !1580
  %54 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 3, !dbg !1581
  store i64 %53, i64* %54, align 8, !dbg !1582
  %55 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1583
  %56 = load i32, i32* %55, align 4, !dbg !1583
  %57 = zext i32 %56 to i64, !dbg !1583
  %58 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1583
  %59 = load i32, i32* %58, align 4, !dbg !1583
  %60 = zext i32 %59 to i64, !dbg !1583
  %61 = mul i64 %57, %60, !dbg !1583
  %62 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1584
  %63 = load i32, i32* %62, align 4, !dbg !1584
  %64 = zext i32 %63 to i64, !dbg !1584
  %65 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1584
  %66 = load i32, i32* %65, align 4, !dbg !1584
  %67 = zext i32 %66 to i64, !dbg !1584
  %68 = mul i64 %64, %67, !dbg !1584
  %69 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1585
  %70 = load i32, i32* %69, align 4, !dbg !1585
  %71 = zext i32 %70 to i64, !dbg !1585
  %72 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1585
  %73 = load i32, i32* %72, align 4, !dbg !1585
  %74 = zext i32 %73 to i64, !dbg !1585
  %75 = mul i64 %71, %74, !dbg !1585
  %76 = add i64 %68, %75, !dbg !1586
  %77 = shl i64 %76, 1, !dbg !1587
  %78 = add i64 %61, %77, !dbg !1588
  %79 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 4, !dbg !1589
  store i64 %78, i64* %79, align 16, !dbg !1590
  %80 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1591
  %81 = load i32, i32* %80, align 4, !dbg !1591
  %82 = zext i32 %81 to i64, !dbg !1591
  %83 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1591
  %84 = load i32, i32* %83, align 4, !dbg !1591
  %85 = zext i32 %84 to i64, !dbg !1591
  %86 = mul i64 %82, %85, !dbg !1591
  %87 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1592
  %88 = load i32, i32* %87, align 4, !dbg !1592
  %89 = zext i32 %88 to i64, !dbg !1592
  %90 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1592
  %91 = load i32, i32* %90, align 4, !dbg !1592
  %92 = zext i32 %91 to i64, !dbg !1592
  %93 = mul i64 %89, %92, !dbg !1592
  %94 = add i64 %86, %93, !dbg !1593
  %95 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1594
  %96 = load i32, i32* %95, align 4, !dbg !1594
  %97 = zext i32 %96 to i64, !dbg !1594
  %98 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1594
  %99 = load i32, i32* %98, align 4, !dbg !1594
  %100 = zext i32 %99 to i64, !dbg !1594
  %101 = mul i64 %97, %100, !dbg !1594
  %102 = add i64 %94, %101, !dbg !1595
  %103 = shl i64 %102, 1, !dbg !1596
  %104 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 5, !dbg !1597
  store i64 %103, i64* %104, align 8, !dbg !1598
  %105 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1599
  %106 = load i32, i32* %105, align 4, !dbg !1599
  %107 = zext i32 %106 to i64, !dbg !1599
  %108 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1599
  %109 = load i32, i32* %108, align 4, !dbg !1599
  %110 = zext i32 %109 to i64, !dbg !1599
  %111 = mul i64 %107, %110, !dbg !1599
  %112 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1600
  %113 = load i32, i32* %112, align 4, !dbg !1600
  %114 = zext i32 %113 to i64, !dbg !1600
  %115 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1600
  %116 = load i32, i32* %115, align 4, !dbg !1600
  %117 = zext i32 %116 to i64, !dbg !1600
  %118 = mul i64 %114, %117, !dbg !1600
  %119 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1601
  %120 = load i32, i32* %119, align 4, !dbg !1601
  %121 = zext i32 %120 to i64, !dbg !1601
  %122 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1601
  %123 = load i32, i32* %122, align 4, !dbg !1601
  %124 = zext i32 %123 to i64, !dbg !1601
  %125 = mul i64 %121, %124, !dbg !1601
  %126 = add i64 %118, %125, !dbg !1602
  %127 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1603
  %128 = load i32, i32* %127, align 4, !dbg !1603
  %129 = zext i32 %128 to i64, !dbg !1603
  %130 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1603
  %131 = load i32, i32* %130, align 4, !dbg !1603
  %132 = zext i32 %131 to i64, !dbg !1603
  %133 = mul i64 %129, %132, !dbg !1603
  %134 = add i64 %126, %133, !dbg !1604
  %135 = shl i64 %134, 1, !dbg !1605
  %136 = add i64 %111, %135, !dbg !1606
  %137 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 6, !dbg !1607
  store i64 %136, i64* %137, align 16, !dbg !1608
  %138 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1609
  %139 = load i32, i32* %138, align 4, !dbg !1609
  %140 = zext i32 %139 to i64, !dbg !1609
  %141 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1609
  %142 = load i32, i32* %141, align 4, !dbg !1609
  %143 = zext i32 %142 to i64, !dbg !1609
  %144 = mul i64 %140, %143, !dbg !1609
  %145 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1610
  %146 = load i32, i32* %145, align 4, !dbg !1610
  %147 = zext i32 %146 to i64, !dbg !1610
  %148 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1610
  %149 = load i32, i32* %148, align 4, !dbg !1610
  %150 = zext i32 %149 to i64, !dbg !1610
  %151 = mul i64 %147, %150, !dbg !1610
  %152 = add i64 %144, %151, !dbg !1611
  %153 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1612
  %154 = load i32, i32* %153, align 4, !dbg !1612
  %155 = zext i32 %154 to i64, !dbg !1612
  %156 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1612
  %157 = load i32, i32* %156, align 4, !dbg !1612
  %158 = zext i32 %157 to i64, !dbg !1612
  %159 = mul i64 %155, %158, !dbg !1612
  %160 = add i64 %152, %159, !dbg !1613
  %161 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1614
  %162 = load i32, i32* %161, align 4, !dbg !1614
  %163 = zext i32 %162 to i64, !dbg !1614
  %164 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1614
  %165 = load i32, i32* %164, align 4, !dbg !1614
  %166 = zext i32 %165 to i64, !dbg !1614
  %167 = mul i64 %163, %166, !dbg !1614
  %168 = add i64 %160, %167, !dbg !1615
  %169 = shl i64 %168, 1, !dbg !1616
  %170 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 7, !dbg !1617
  store i64 %169, i64* %170, align 8, !dbg !1618
  %171 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1619
  %172 = load i32, i32* %171, align 4, !dbg !1619
  %173 = zext i32 %172 to i64, !dbg !1619
  %174 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1619
  %175 = load i32, i32* %174, align 4, !dbg !1619
  %176 = zext i32 %175 to i64, !dbg !1619
  %177 = mul i64 %173, %176, !dbg !1619
  %178 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1620
  %179 = load i32, i32* %178, align 4, !dbg !1620
  %180 = zext i32 %179 to i64, !dbg !1620
  %181 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1620
  %182 = load i32, i32* %181, align 4, !dbg !1620
  %183 = zext i32 %182 to i64, !dbg !1620
  %184 = mul i64 %180, %183, !dbg !1620
  %185 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1621
  %186 = load i32, i32* %185, align 4, !dbg !1621
  %187 = zext i32 %186 to i64, !dbg !1621
  %188 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1621
  %189 = load i32, i32* %188, align 4, !dbg !1621
  %190 = zext i32 %189 to i64, !dbg !1621
  %191 = mul i64 %187, %190, !dbg !1621
  %192 = add i64 %184, %191, !dbg !1622
  %193 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1623
  %194 = load i32, i32* %193, align 4, !dbg !1623
  %195 = zext i32 %194 to i64, !dbg !1623
  %196 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1623
  %197 = load i32, i32* %196, align 4, !dbg !1623
  %198 = zext i32 %197 to i64, !dbg !1623
  %199 = mul i64 %195, %198, !dbg !1623
  %200 = add i64 %192, %199, !dbg !1624
  %201 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1625
  %202 = load i32, i32* %201, align 4, !dbg !1625
  %203 = zext i32 %202 to i64, !dbg !1625
  %204 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1625
  %205 = load i32, i32* %204, align 4, !dbg !1625
  %206 = zext i32 %205 to i64, !dbg !1625
  %207 = mul i64 %203, %206, !dbg !1625
  %208 = add i64 %200, %207, !dbg !1626
  %209 = shl i64 %208, 1, !dbg !1627
  %210 = add i64 %177, %209, !dbg !1628
  %211 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 8, !dbg !1629
  store i64 %210, i64* %211, align 16, !dbg !1630
  %212 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1631
  %213 = load i32, i32* %212, align 4, !dbg !1631
  %214 = zext i32 %213 to i64, !dbg !1631
  %215 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1631
  %216 = load i32, i32* %215, align 4, !dbg !1631
  %217 = zext i32 %216 to i64, !dbg !1631
  %218 = mul i64 %214, %217, !dbg !1631
  %219 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1632
  %220 = load i32, i32* %219, align 4, !dbg !1632
  %221 = zext i32 %220 to i64, !dbg !1632
  %222 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1632
  %223 = load i32, i32* %222, align 4, !dbg !1632
  %224 = zext i32 %223 to i64, !dbg !1632
  %225 = mul i64 %221, %224, !dbg !1632
  %226 = add i64 %218, %225, !dbg !1633
  %227 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1634
  %228 = load i32, i32* %227, align 4, !dbg !1634
  %229 = zext i32 %228 to i64, !dbg !1634
  %230 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1634
  %231 = load i32, i32* %230, align 4, !dbg !1634
  %232 = zext i32 %231 to i64, !dbg !1634
  %233 = mul i64 %229, %232, !dbg !1634
  %234 = add i64 %226, %233, !dbg !1635
  %235 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1636
  %236 = load i32, i32* %235, align 4, !dbg !1636
  %237 = zext i32 %236 to i64, !dbg !1636
  %238 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1636
  %239 = load i32, i32* %238, align 4, !dbg !1636
  %240 = zext i32 %239 to i64, !dbg !1636
  %241 = mul i64 %237, %240, !dbg !1636
  %242 = add i64 %234, %241, !dbg !1637
  %243 = shl i64 %242, 1, !dbg !1638
  %244 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 9, !dbg !1639
  store i64 %243, i64* %244, align 8, !dbg !1640
  %245 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1641
  %246 = load i32, i32* %245, align 4, !dbg !1641
  %247 = zext i32 %246 to i64, !dbg !1641
  %248 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1641
  %249 = load i32, i32* %248, align 4, !dbg !1641
  %250 = zext i32 %249 to i64, !dbg !1641
  %251 = mul i64 %247, %250, !dbg !1641
  %252 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1642
  %253 = load i32, i32* %252, align 4, !dbg !1642
  %254 = zext i32 %253 to i64, !dbg !1642
  %255 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1642
  %256 = load i32, i32* %255, align 4, !dbg !1642
  %257 = zext i32 %256 to i64, !dbg !1642
  %258 = mul i64 %254, %257, !dbg !1642
  %259 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1643
  %260 = load i32, i32* %259, align 4, !dbg !1643
  %261 = zext i32 %260 to i64, !dbg !1643
  %262 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1643
  %263 = load i32, i32* %262, align 4, !dbg !1643
  %264 = zext i32 %263 to i64, !dbg !1643
  %265 = mul i64 %261, %264, !dbg !1643
  %266 = add i64 %258, %265, !dbg !1644
  %267 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1645
  %268 = load i32, i32* %267, align 4, !dbg !1645
  %269 = zext i32 %268 to i64, !dbg !1645
  %270 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1645
  %271 = load i32, i32* %270, align 4, !dbg !1645
  %272 = zext i32 %271 to i64, !dbg !1645
  %273 = mul i64 %269, %272, !dbg !1645
  %274 = add i64 %266, %273, !dbg !1646
  %275 = shl i64 %274, 1, !dbg !1647
  %276 = add i64 %251, %275, !dbg !1648
  %277 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 10, !dbg !1649
  store i64 %276, i64* %277, align 16, !dbg !1650
  %278 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1651
  %279 = load i32, i32* %278, align 4, !dbg !1651
  %280 = zext i32 %279 to i64, !dbg !1651
  %281 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1651
  %282 = load i32, i32* %281, align 4, !dbg !1651
  %283 = zext i32 %282 to i64, !dbg !1651
  %284 = mul i64 %280, %283, !dbg !1651
  %285 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1652
  %286 = load i32, i32* %285, align 4, !dbg !1652
  %287 = zext i32 %286 to i64, !dbg !1652
  %288 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1652
  %289 = load i32, i32* %288, align 4, !dbg !1652
  %290 = zext i32 %289 to i64, !dbg !1652
  %291 = mul i64 %287, %290, !dbg !1652
  %292 = add i64 %284, %291, !dbg !1653
  %293 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1654
  %294 = load i32, i32* %293, align 4, !dbg !1654
  %295 = zext i32 %294 to i64, !dbg !1654
  %296 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1654
  %297 = load i32, i32* %296, align 4, !dbg !1654
  %298 = zext i32 %297 to i64, !dbg !1654
  %299 = mul i64 %295, %298, !dbg !1654
  %300 = add i64 %292, %299, !dbg !1655
  %301 = shl i64 %300, 1, !dbg !1656
  %302 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 11, !dbg !1657
  store i64 %301, i64* %302, align 8, !dbg !1658
  %303 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1659
  %304 = load i32, i32* %303, align 4, !dbg !1659
  %305 = zext i32 %304 to i64, !dbg !1659
  %306 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1659
  %307 = load i32, i32* %306, align 4, !dbg !1659
  %308 = zext i32 %307 to i64, !dbg !1659
  %309 = mul i64 %305, %308, !dbg !1659
  %310 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1660
  %311 = load i32, i32* %310, align 4, !dbg !1660
  %312 = zext i32 %311 to i64, !dbg !1660
  %313 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1660
  %314 = load i32, i32* %313, align 4, !dbg !1660
  %315 = zext i32 %314 to i64, !dbg !1660
  %316 = mul i64 %312, %315, !dbg !1660
  %317 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1661
  %318 = load i32, i32* %317, align 4, !dbg !1661
  %319 = zext i32 %318 to i64, !dbg !1661
  %320 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1661
  %321 = load i32, i32* %320, align 4, !dbg !1661
  %322 = zext i32 %321 to i64, !dbg !1661
  %323 = mul i64 %319, %322, !dbg !1661
  %324 = add i64 %316, %323, !dbg !1662
  %325 = shl i64 %324, 1, !dbg !1663
  %326 = add i64 %309, %325, !dbg !1664
  %327 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 12, !dbg !1665
  store i64 %326, i64* %327, align 16, !dbg !1666
  %328 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1667
  %329 = load i32, i32* %328, align 4, !dbg !1667
  %330 = zext i32 %329 to i64, !dbg !1667
  %331 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1667
  %332 = load i32, i32* %331, align 4, !dbg !1667
  %333 = zext i32 %332 to i64, !dbg !1667
  %334 = mul i64 %330, %333, !dbg !1667
  %335 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1668
  %336 = load i32, i32* %335, align 4, !dbg !1668
  %337 = zext i32 %336 to i64, !dbg !1668
  %338 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1668
  %339 = load i32, i32* %338, align 4, !dbg !1668
  %340 = zext i32 %339 to i64, !dbg !1668
  %341 = mul i64 %337, %340, !dbg !1668
  %342 = add i64 %334, %341, !dbg !1669
  %343 = shl i64 %342, 1, !dbg !1670
  %344 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 13, !dbg !1671
  store i64 %343, i64* %344, align 8, !dbg !1672
  %345 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1673
  %346 = load i32, i32* %345, align 4, !dbg !1673
  %347 = zext i32 %346 to i64, !dbg !1673
  %348 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1673
  %349 = load i32, i32* %348, align 4, !dbg !1673
  %350 = zext i32 %349 to i64, !dbg !1673
  %351 = mul i64 %347, %350, !dbg !1673
  %352 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1674
  %353 = load i32, i32* %352, align 4, !dbg !1674
  %354 = zext i32 %353 to i64, !dbg !1674
  %355 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1674
  %356 = load i32, i32* %355, align 4, !dbg !1674
  %357 = zext i32 %356 to i64, !dbg !1674
  %358 = mul i64 %354, %357, !dbg !1674
  %359 = shl i64 %358, 1, !dbg !1675
  %360 = add i64 %351, %359, !dbg !1676
  %361 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 14, !dbg !1677
  store i64 %360, i64* %361, align 16, !dbg !1678
  %362 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1679
  %363 = load i32, i32* %362, align 4, !dbg !1679
  %364 = zext i32 %363 to i64, !dbg !1679
  %365 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1679
  %366 = load i32, i32* %365, align 4, !dbg !1679
  %367 = zext i32 %366 to i64, !dbg !1679
  %368 = mul i64 %364, %367, !dbg !1679
  %369 = shl i64 %368, 1, !dbg !1680
  %370 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 15, !dbg !1681
  store i64 %369, i64* %370, align 8, !dbg !1682
  %371 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1683
  %372 = load i32, i32* %371, align 4, !dbg !1683
  %373 = zext i32 %372 to i64, !dbg !1683
  %374 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1683
  %375 = load i32, i32* %374, align 4, !dbg !1683
  %376 = zext i32 %375 to i64, !dbg !1683
  %377 = mul i64 %373, %376, !dbg !1683
  %378 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 16, !dbg !1684
  store i64 %377, i64* %378, align 16, !dbg !1685
  call void @llvm.dbg.value(metadata i64 0, metadata !1686, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i32 0, metadata !1687, metadata !DIExpression()), !dbg !1560
  br label %379, !dbg !1688

379:                                              ; preds = %391, %2
  %.01 = phi i64 [ 0, %2 ], [ %390, %391 ], !dbg !1560
  %.0 = phi i32 [ 0, %2 ], [ %392, %391 ], !dbg !1690
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1687, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1686, metadata !DIExpression()), !dbg !1560
  %380 = icmp slt i32 %.0, 17, !dbg !1691
  br i1 %380, label %381, label %393, !dbg !1693

381:                                              ; preds = %379
  %382 = sext i32 %.0 to i64, !dbg !1694
  %383 = getelementptr inbounds [17 x i64], [17 x i64]* %3, i64 0, i64 %382, !dbg !1694
  %384 = load i64, i64* %383, align 8, !dbg !1694
  %385 = add i64 %384, %.01, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %385, metadata !1697, metadata !DIExpression()), !dbg !1698
  %386 = trunc i64 %385 to i32, !dbg !1699
  %387 = and i32 %386, 1073741823, !dbg !1700
  %388 = sext i32 %.0 to i64, !dbg !1701
  %389 = getelementptr inbounds i32, i32* %0, i64 %388, !dbg !1701
  store i32 %387, i32* %389, align 4, !dbg !1702
  %390 = lshr i64 %385, 30, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %390, metadata !1686, metadata !DIExpression()), !dbg !1560
  br label %391, !dbg !1704

391:                                              ; preds = %381
  %392 = add nsw i32 %.0, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %392, metadata !1687, metadata !DIExpression()), !dbg !1560
  br label %379, !dbg !1706, !llvm.loop !1707

393:                                              ; preds = %379
  %394 = trunc i64 %.01 to i32, !dbg !1709
  %395 = getelementptr inbounds i32, i32* %0, i64 17, !dbg !1710
  store i32 %394, i32* %395, align 4, !dbg !1711
  ret void, !dbg !1712
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_f256(i32* %0, i32* %1, i32* %2) #0 !dbg !1713 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1714, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32* %1, metadata !1716, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32* %2, metadata !1717, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 0, metadata !1719, metadata !DIExpression()), !dbg !1715
  br label %4, !dbg !1720

4:                                                ; preds = %19, %3
  %.03 = phi i32 [ undef, %3 ], [ %14, %19 ]
  %.01 = phi i32 [ 0, %3 ], [ %18, %19 ], !dbg !1715
  %.0 = phi i32 [ 0, %3 ], [ %20, %19 ], !dbg !1722
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1719, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1718, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1723, metadata !DIExpression()), !dbg !1715
  %5 = icmp slt i32 %.0, 9, !dbg !1724
  br i1 %5, label %6, label %21, !dbg !1726

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64, !dbg !1727
  %8 = getelementptr inbounds i32, i32* %1, i64 %7, !dbg !1727
  %9 = load i32, i32* %8, align 4, !dbg !1727
  %10 = sext i32 %.0 to i64, !dbg !1729
  %11 = getelementptr inbounds i32, i32* %2, i64 %10, !dbg !1729
  %12 = load i32, i32* %11, align 4, !dbg !1729
  %13 = add i32 %9, %12, !dbg !1730
  %14 = add i32 %13, %.01, !dbg !1731
  call void @llvm.dbg.value(metadata i32 %14, metadata !1723, metadata !DIExpression()), !dbg !1715
  %15 = and i32 %14, 1073741823, !dbg !1732
  %16 = sext i32 %.0 to i64, !dbg !1733
  %17 = getelementptr inbounds i32, i32* %0, i64 %16, !dbg !1733
  store i32 %15, i32* %17, align 4, !dbg !1734
  %18 = lshr i32 %14, 30, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %18, metadata !1718, metadata !DIExpression()), !dbg !1715
  br label %19, !dbg !1736

19:                                               ; preds = %6
  %20 = add nsw i32 %.0, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %20, metadata !1719, metadata !DIExpression()), !dbg !1715
  br label %4, !dbg !1738, !llvm.loop !1739

21:                                               ; preds = %4
  %22 = lshr i32 %.03, 16, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %22, metadata !1723, metadata !DIExpression()), !dbg !1715
  %23 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !1742
  %24 = load i32, i32* %23, align 4, !dbg !1743
  %25 = and i32 %24, 65535, !dbg !1743
  store i32 %25, i32* %23, align 4, !dbg !1743
  %26 = shl i32 %22, 6, !dbg !1744
  %27 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1745
  %28 = load i32, i32* %27, align 4, !dbg !1746
  %29 = sub i32 %28, %26, !dbg !1746
  store i32 %29, i32* %27, align 4, !dbg !1746
  %30 = shl i32 %22, 12, !dbg !1747
  %31 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !1748
  %32 = load i32, i32* %31, align 4, !dbg !1749
  %33 = sub i32 %32, %30, !dbg !1749
  store i32 %33, i32* %31, align 4, !dbg !1749
  %34 = shl i32 %22, 14, !dbg !1750
  %35 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !1751
  %36 = load i32, i32* %35, align 4, !dbg !1752
  %37 = add i32 %36, %34, !dbg !1752
  store i32 %37, i32* %35, align 4, !dbg !1752
  call void @llvm.dbg.value(metadata i32 %22, metadata !1718, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 0, metadata !1719, metadata !DIExpression()), !dbg !1715
  br label %38, !dbg !1753

38:                                               ; preds = %49, %21
  %.12 = phi i32 [ %22, %21 ], [ %48, %49 ], !dbg !1715
  %.1 = phi i32 [ 0, %21 ], [ %50, %49 ], !dbg !1755
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1719, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 %.12, metadata !1718, metadata !DIExpression()), !dbg !1715
  %39 = icmp slt i32 %.1, 9, !dbg !1756
  br i1 %39, label %40, label %51, !dbg !1758

40:                                               ; preds = %38
  %41 = sext i32 %.1 to i64, !dbg !1759
  %42 = getelementptr inbounds i32, i32* %0, i64 %41, !dbg !1759
  %43 = load i32, i32* %42, align 4, !dbg !1759
  %44 = add i32 %43, %.12, !dbg !1761
  call void @llvm.dbg.value(metadata i32 %44, metadata !1723, metadata !DIExpression()), !dbg !1715
  %45 = and i32 %44, 1073741823, !dbg !1762
  %46 = sext i32 %.1 to i64, !dbg !1763
  %47 = getelementptr inbounds i32, i32* %0, i64 %46, !dbg !1763
  store i32 %45, i32* %47, align 4, !dbg !1764
  %48 = ashr i32 %44, 30, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %48, metadata !1718, metadata !DIExpression()), !dbg !1715
  br label %49, !dbg !1766

49:                                               ; preds = %40
  %50 = add nsw i32 %.1, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i32 %50, metadata !1719, metadata !DIExpression()), !dbg !1715
  br label %38, !dbg !1768, !llvm.loop !1769

51:                                               ; preds = %38
  ret void, !dbg !1771
}

; Function Attrs: noinline nounwind uwtable
define internal void @sub_f256(i32* %0, i32* %1, i32* %2) #0 !dbg !1772 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1773, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32* %1, metadata !1775, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32* %2, metadata !1776, metadata !DIExpression()), !dbg !1774
  %4 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1777
  %5 = load i32, i32* %4, align 4, !dbg !1777
  %6 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1778
  %7 = load i32, i32* %6, align 4, !dbg !1778
  %8 = sub i32 %5, %7, !dbg !1779
  %9 = sub i32 %8, 2, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %9, metadata !1781, metadata !DIExpression()), !dbg !1774
  %10 = and i32 %9, 1073741823, !dbg !1782
  %11 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1783
  store i32 %10, i32* %11, align 4, !dbg !1784
  %12 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1785
  %13 = load i32, i32* %12, align 4, !dbg !1785
  %14 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1786
  %15 = load i32, i32* %14, align 4, !dbg !1786
  %16 = sub i32 %13, %15, !dbg !1787
  %17 = ashr i32 %9, 30, !dbg !1788
  %18 = add i32 %16, %17, !dbg !1789
  call void @llvm.dbg.value(metadata i32 %18, metadata !1781, metadata !DIExpression()), !dbg !1774
  %19 = and i32 %18, 1073741823, !dbg !1790
  %20 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1791
  store i32 %19, i32* %20, align 4, !dbg !1792
  %21 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1793
  %22 = load i32, i32* %21, align 4, !dbg !1793
  %23 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !1794
  %24 = load i32, i32* %23, align 4, !dbg !1794
  %25 = sub i32 %22, %24, !dbg !1795
  %26 = ashr i32 %18, 30, !dbg !1796
  %27 = add i32 %25, %26, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %27, metadata !1781, metadata !DIExpression()), !dbg !1774
  %28 = and i32 %27, 1073741823, !dbg !1798
  %29 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !1799
  store i32 %28, i32* %29, align 4, !dbg !1800
  %30 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1801
  %31 = load i32, i32* %30, align 4, !dbg !1801
  %32 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !1802
  %33 = load i32, i32* %32, align 4, !dbg !1802
  %34 = sub i32 %31, %33, !dbg !1803
  %35 = ashr i32 %27, 30, !dbg !1804
  %36 = add i32 %34, %35, !dbg !1805
  %37 = add i32 %36, 128, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %37, metadata !1781, metadata !DIExpression()), !dbg !1774
  %38 = and i32 %37, 1073741823, !dbg !1807
  %39 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1808
  store i32 %38, i32* %39, align 4, !dbg !1809
  %40 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1810
  %41 = load i32, i32* %40, align 4, !dbg !1810
  %42 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !1811
  %43 = load i32, i32* %42, align 4, !dbg !1811
  %44 = sub i32 %41, %43, !dbg !1812
  %45 = ashr i32 %37, 30, !dbg !1813
  %46 = add i32 %44, %45, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %46, metadata !1781, metadata !DIExpression()), !dbg !1774
  %47 = and i32 %46, 1073741823, !dbg !1815
  %48 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !1816
  store i32 %47, i32* %48, align 4, !dbg !1817
  %49 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !1818
  %50 = load i32, i32* %49, align 4, !dbg !1818
  %51 = getelementptr inbounds i32, i32* %2, i64 5, !dbg !1819
  %52 = load i32, i32* %51, align 4, !dbg !1819
  %53 = sub i32 %50, %52, !dbg !1820
  %54 = ashr i32 %46, 30, !dbg !1821
  %55 = add i32 %53, %54, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %55, metadata !1781, metadata !DIExpression()), !dbg !1774
  %56 = and i32 %55, 1073741823, !dbg !1823
  %57 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !1824
  store i32 %56, i32* %57, align 4, !dbg !1825
  %58 = getelementptr inbounds i32, i32* %1, i64 6, !dbg !1826
  %59 = load i32, i32* %58, align 4, !dbg !1826
  %60 = getelementptr inbounds i32, i32* %2, i64 6, !dbg !1827
  %61 = load i32, i32* %60, align 4, !dbg !1827
  %62 = sub i32 %59, %61, !dbg !1828
  %63 = ashr i32 %55, 30, !dbg !1829
  %64 = add i32 %62, %63, !dbg !1830
  %65 = add i32 %64, 8192, !dbg !1831
  call void @llvm.dbg.value(metadata i32 %65, metadata !1781, metadata !DIExpression()), !dbg !1774
  %66 = and i32 %65, 1073741823, !dbg !1832
  %67 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !1833
  store i32 %66, i32* %67, align 4, !dbg !1834
  %68 = getelementptr inbounds i32, i32* %1, i64 7, !dbg !1835
  %69 = load i32, i32* %68, align 4, !dbg !1835
  %70 = getelementptr inbounds i32, i32* %2, i64 7, !dbg !1836
  %71 = load i32, i32* %70, align 4, !dbg !1836
  %72 = sub i32 %69, %71, !dbg !1837
  %73 = ashr i32 %65, 30, !dbg !1838
  %74 = add i32 %72, %73, !dbg !1839
  %75 = sub i32 %74, 32768, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %75, metadata !1781, metadata !DIExpression()), !dbg !1774
  %76 = and i32 %75, 1073741823, !dbg !1841
  %77 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !1842
  store i32 %76, i32* %77, align 4, !dbg !1843
  %78 = getelementptr inbounds i32, i32* %1, i64 8, !dbg !1844
  %79 = load i32, i32* %78, align 4, !dbg !1844
  %80 = getelementptr inbounds i32, i32* %2, i64 8, !dbg !1845
  %81 = load i32, i32* %80, align 4, !dbg !1845
  %82 = sub i32 %79, %81, !dbg !1846
  %83 = ashr i32 %75, 30, !dbg !1847
  %84 = add i32 %82, %83, !dbg !1848
  %85 = add i32 %84, 131072, !dbg !1849
  call void @llvm.dbg.value(metadata i32 %85, metadata !1781, metadata !DIExpression()), !dbg !1774
  %86 = and i32 %85, 65535, !dbg !1850
  %87 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !1851
  store i32 %86, i32* %87, align 4, !dbg !1852
  %88 = lshr i32 %85, 16, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %88, metadata !1781, metadata !DIExpression()), !dbg !1774
  %89 = getelementptr inbounds i32, i32* %0, i64 8, !dbg !1854
  %90 = load i32, i32* %89, align 4, !dbg !1855
  %91 = and i32 %90, 65535, !dbg !1855
  store i32 %91, i32* %89, align 4, !dbg !1855
  %92 = shl i32 %88, 6, !dbg !1856
  %93 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1857
  %94 = load i32, i32* %93, align 4, !dbg !1858
  %95 = sub i32 %94, %92, !dbg !1858
  store i32 %95, i32* %93, align 4, !dbg !1858
  %96 = shl i32 %88, 12, !dbg !1859
  %97 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !1860
  %98 = load i32, i32* %97, align 4, !dbg !1861
  %99 = sub i32 %98, %96, !dbg !1861
  store i32 %99, i32* %97, align 4, !dbg !1861
  %100 = shl i32 %88, 14, !dbg !1862
  %101 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !1863
  %102 = load i32, i32* %101, align 4, !dbg !1864
  %103 = add i32 %102, %100, !dbg !1864
  store i32 %103, i32* %101, align 4, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %88, metadata !1865, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1774
  br label %104, !dbg !1867

104:                                              ; preds = %115, %3
  %.01 = phi i32 [ %88, %3 ], [ %114, %115 ], !dbg !1774
  %.0 = phi i32 [ 0, %3 ], [ %116, %115 ], !dbg !1869
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1866, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1865, metadata !DIExpression()), !dbg !1774
  %105 = icmp slt i32 %.0, 9, !dbg !1870
  br i1 %105, label %106, label %117, !dbg !1872

106:                                              ; preds = %104
  %107 = sext i32 %.0 to i64, !dbg !1873
  %108 = getelementptr inbounds i32, i32* %0, i64 %107, !dbg !1873
  %109 = load i32, i32* %108, align 4, !dbg !1873
  %110 = add i32 %109, %.01, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %110, metadata !1781, metadata !DIExpression()), !dbg !1774
  %111 = and i32 %110, 1073741823, !dbg !1876
  %112 = sext i32 %.0 to i64, !dbg !1877
  %113 = getelementptr inbounds i32, i32* %0, i64 %112, !dbg !1877
  store i32 %111, i32* %113, align 4, !dbg !1878
  %114 = ashr i32 %110, 30, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %114, metadata !1865, metadata !DIExpression()), !dbg !1774
  br label %115, !dbg !1880

115:                                              ; preds = %106
  %116 = add nsw i32 %.0, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %116, metadata !1866, metadata !DIExpression()), !dbg !1774
  br label %104, !dbg !1882, !llvm.loop !1883

117:                                              ; preds = %104
  ret void, !dbg !1885
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !1886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1889, metadata !DIExpression()), !dbg !1890
  %2 = xor i32 %0, 1, !dbg !1891
  ret i32 %2, !dbg !1892
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !1893 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1894, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i32 %1, metadata !1896, metadata !DIExpression()), !dbg !1895
  %3 = xor i32 %0, %1, !dbg !1897
  call void @llvm.dbg.value(metadata i32 %3, metadata !1898, metadata !DIExpression()), !dbg !1895
  %4 = sub i32 0, %3, !dbg !1899
  %5 = or i32 %3, %4, !dbg !1900
  %6 = lshr i32 %5, 31, !dbg !1901
  ret i32 %6, !dbg !1902
}

; Function Attrs: noinline nounwind uwtable
define internal void @lookup_Gwin(%struct.p256_jacobian* %0, i32 %1) #0 !dbg !1903 {
  %3 = alloca [18 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !1906, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i32 %1, metadata !1908, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.declare(metadata [18 x i32]* %3, metadata !1909, metadata !DIExpression()), !dbg !1910
  %4 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 0, !dbg !1911
  %5 = bitcast i32* %4 to i8*, !dbg !1911
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 72, i1 false), !dbg !1911
  call void @llvm.dbg.value(metadata i32 0, metadata !1912, metadata !DIExpression()), !dbg !1907
  br label %6, !dbg !1913

6:                                                ; preds = %26, %2
  %.01 = phi i32 [ 0, %2 ], [ %27, %26 ], !dbg !1915
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1912, metadata !DIExpression()), !dbg !1907
  %7 = icmp ult i32 %.01, 15, !dbg !1916
  br i1 %7, label %8, label %28, !dbg !1918

8:                                                ; preds = %6
  %9 = add i32 %.01, 1, !dbg !1919
  %10 = call i32 @EQ(i32 %1, i32 %9), !dbg !1921
  %11 = sub i32 0, %10, !dbg !1922
  call void @llvm.dbg.value(metadata i32 %11, metadata !1923, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 0, metadata !1925, metadata !DIExpression()), !dbg !1907
  br label %12, !dbg !1926

12:                                               ; preds = %23, %8
  %.0 = phi i64 [ 0, %8 ], [ %24, %23 ], !dbg !1928
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1925, metadata !DIExpression()), !dbg !1907
  %13 = icmp ult i64 %.0, 18, !dbg !1929
  br i1 %13, label %14, label %25, !dbg !1931

14:                                               ; preds = %12
  %15 = zext i32 %.01 to i64, !dbg !1932
  %16 = getelementptr inbounds [15 x [18 x i32]], [15 x [18 x i32]]* @Gwin, i64 0, i64 %15, !dbg !1932
  %17 = getelementptr inbounds [18 x i32], [18 x i32]* %16, i64 0, i64 %.0, !dbg !1932
  %18 = load i32, i32* %17, align 4, !dbg !1932
  %19 = and i32 %11, %18, !dbg !1934
  %20 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 %.0, !dbg !1935
  %21 = load i32, i32* %20, align 4, !dbg !1936
  %22 = or i32 %21, %19, !dbg !1936
  store i32 %22, i32* %20, align 4, !dbg !1936
  br label %23, !dbg !1937

23:                                               ; preds = %14
  %24 = add i64 %.0, 1, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %24, metadata !1925, metadata !DIExpression()), !dbg !1907
  br label %12, !dbg !1939, !llvm.loop !1940

25:                                               ; preds = %12
  br label %26, !dbg !1942

26:                                               ; preds = %25
  %27 = add i32 %.01, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %27, metadata !1912, metadata !DIExpression()), !dbg !1907
  br label %6, !dbg !1944, !llvm.loop !1945

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1947
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %29, i64 0, i64 0, !dbg !1948
  %31 = bitcast i32* %30 to i8*, !dbg !1948
  %32 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 0, !dbg !1949
  %33 = bitcast i32* %32 to i8*, !dbg !1948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 16 %33, i64 36, i1 false), !dbg !1948
  %34 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1950
  %35 = getelementptr inbounds [9 x i32], [9 x i32]* %34, i64 0, i64 0, !dbg !1951
  %36 = bitcast i32* %35 to i8*, !dbg !1951
  %37 = getelementptr inbounds [18 x i32], [18 x i32]* %3, i64 0, i64 9, !dbg !1952
  %38 = bitcast i32* %37 to i8*, !dbg !1951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %38, i64 36, i1 false), !dbg !1951
  %39 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1953
  %40 = getelementptr inbounds [9 x i32], [9 x i32]* %39, i64 0, i64 0, !dbg !1954
  %41 = bitcast i32* %40 to i8*, !dbg !1954
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 36, i1 false), !dbg !1954
  %42 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1955
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %42, i64 0, i64 0, !dbg !1956
  store i32 1, i32* %43, align 4, !dbg !1957
  ret void, !dbg !1958
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @p256_add_mixed(%struct.p256_jacobian* %0, %struct.p256_jacobian* %1) #0 !dbg !1959 {
  %3 = alloca [9 x i32], align 16
  %4 = alloca [9 x i32], align 16
  %5 = alloca [9 x i32], align 16
  %6 = alloca [9 x i32], align 16
  %7 = alloca [9 x i32], align 16
  %8 = alloca [9 x i32], align 16
  %9 = alloca [9 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !1960, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !1962, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.declare(metadata [9 x i32]* %3, metadata !1963, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.declare(metadata [9 x i32]* %4, metadata !1965, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.declare(metadata [9 x i32]* %5, metadata !1967, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.declare(metadata [9 x i32]* %6, metadata !1969, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.declare(metadata [9 x i32]* %7, metadata !1971, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.declare(metadata [9 x i32]* %8, metadata !1973, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.declare(metadata [9 x i32]* %9, metadata !1975, metadata !DIExpression()), !dbg !1976
  %10 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !1977
  %11 = bitcast i32* %10 to i8*, !dbg !1977
  %12 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1978
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %12, i64 0, i64 0, !dbg !1977
  %14 = bitcast i32* %13 to i8*, !dbg !1977
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 4 %14, i64 36, i1 false), !dbg !1977
  %15 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !1979
  %16 = bitcast i32* %15 to i8*, !dbg !1979
  %17 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1980
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 0, !dbg !1979
  %19 = bitcast i32* %18 to i8*, !dbg !1979
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 4 %19, i64 36, i1 false), !dbg !1979
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !1981
  %21 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1982
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* %21, i64 0, i64 0, !dbg !1983
  call void @square_f256(i32* %20, i32* %22), !dbg !1984
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !1985
  %24 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 0, !dbg !1986
  %25 = getelementptr inbounds [9 x i32], [9 x i32]* %24, i64 0, i64 0, !dbg !1987
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !1988
  call void @mul_f256(i32* %23, i32* %25, i32* %26), !dbg !1989
  %27 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !1990
  %28 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1991
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %28, i64 0, i64 0, !dbg !1992
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !1993
  call void @mul_f256(i32* %27, i32* %29, i32* %30), !dbg !1994
  %31 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !1995
  %32 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 1, !dbg !1996
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %32, i64 0, i64 0, !dbg !1997
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !1998
  call void @mul_f256(i32* %31, i32* %33, i32* %34), !dbg !1999
  %35 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !2000
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !2001
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !2002
  call void @sub_f256(i32* %35, i32* %36, i32* %37), !dbg !2003
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !2004
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !2005
  %40 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !2006
  call void @sub_f256(i32* %38, i32* %39, i32* %40), !dbg !2007
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !2008
  %42 = call i32 @reduce_final_f256(i32* %41), !dbg !2009
  call void @llvm.dbg.value(metadata i32 0, metadata !2010, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 0, metadata !2011, metadata !DIExpression()), !dbg !1961
  br label %43, !dbg !2012

43:                                               ; preds = %50, %2
  %.01 = phi i32 [ 0, %2 ], [ %49, %50 ], !dbg !1961
  %.0 = phi i32 [ 0, %2 ], [ %51, %50 ], !dbg !2014
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2011, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2010, metadata !DIExpression()), !dbg !1961
  %44 = icmp slt i32 %.0, 9, !dbg !2015
  br i1 %44, label %45, label %52, !dbg !2017

45:                                               ; preds = %43
  %46 = sext i32 %.0 to i64, !dbg !2018
  %47 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 %46, !dbg !2018
  %48 = load i32, i32* %47, align 4, !dbg !2018
  %49 = or i32 %.01, %48, !dbg !2020
  call void @llvm.dbg.value(metadata i32 %49, metadata !2010, metadata !DIExpression()), !dbg !1961
  br label %50, !dbg !2021

50:                                               ; preds = %45
  %51 = add nsw i32 %.0, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i32 %51, metadata !2011, metadata !DIExpression()), !dbg !1961
  br label %43, !dbg !2023, !llvm.loop !2024

52:                                               ; preds = %43
  %53 = sub i32 0, %.01, !dbg !2026
  %54 = or i32 %.01, %53, !dbg !2027
  %55 = lshr i32 %54, 31, !dbg !2028
  call void @llvm.dbg.value(metadata i32 %55, metadata !2010, metadata !DIExpression()), !dbg !1961
  %56 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !2029
  %57 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !2030
  call void @square_f256(i32* %56, i32* %57), !dbg !2031
  %58 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !2032
  %59 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !2033
  %60 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !2034
  call void @mul_f256(i32* %58, i32* %59, i32* %60), !dbg !2035
  %61 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !2036
  %62 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !2037
  %63 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !2038
  call void @mul_f256(i32* %61, i32* %62, i32* %63), !dbg !2039
  %64 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !2040
  %65 = getelementptr inbounds [9 x i32], [9 x i32]* %64, i64 0, i64 0, !dbg !2041
  %66 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !2042
  call void @square_f256(i32* %65, i32* %66), !dbg !2043
  %67 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !2044
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %67, i64 0, i64 0, !dbg !2045
  %69 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !2046
  %70 = getelementptr inbounds [9 x i32], [9 x i32]* %69, i64 0, i64 0, !dbg !2047
  %71 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !2048
  call void @sub_f256(i32* %68, i32* %70, i32* %71), !dbg !2049
  %72 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !2050
  %73 = getelementptr inbounds [9 x i32], [9 x i32]* %72, i64 0, i64 0, !dbg !2051
  %74 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !2052
  %75 = getelementptr inbounds [9 x i32], [9 x i32]* %74, i64 0, i64 0, !dbg !2053
  %76 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !2054
  call void @sub_f256(i32* %73, i32* %75, i32* %76), !dbg !2055
  %77 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !2056
  %78 = getelementptr inbounds [9 x i32], [9 x i32]* %77, i64 0, i64 0, !dbg !2057
  %79 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !2058
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %79, i64 0, i64 0, !dbg !2059
  %81 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !2060
  call void @sub_f256(i32* %78, i32* %80, i32* %81), !dbg !2061
  %82 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !2062
  %83 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !2063
  %84 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !2064
  %85 = getelementptr inbounds [9 x i32], [9 x i32]* %84, i64 0, i64 0, !dbg !2065
  call void @sub_f256(i32* %82, i32* %83, i32* %85), !dbg !2066
  %86 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !2067
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %86, i64 0, i64 0, !dbg !2068
  %88 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0, !dbg !2069
  %89 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !2070
  call void @mul_f256(i32* %87, i32* %88, i32* %89), !dbg !2071
  %90 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !2072
  %91 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0, !dbg !2073
  %92 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0, !dbg !2074
  call void @mul_f256(i32* %90, i32* %91, i32* %92), !dbg !2075
  %93 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !2076
  %94 = getelementptr inbounds [9 x i32], [9 x i32]* %93, i64 0, i64 0, !dbg !2077
  %95 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !2078
  %96 = getelementptr inbounds [9 x i32], [9 x i32]* %95, i64 0, i64 0, !dbg !2079
  %97 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0, !dbg !2080
  call void @sub_f256(i32* %94, i32* %96, i32* %97), !dbg !2081
  %98 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !2082
  %99 = getelementptr inbounds [9 x i32], [9 x i32]* %98, i64 0, i64 0, !dbg !2083
  %100 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !2084
  %101 = getelementptr inbounds [9 x i32], [9 x i32]* %100, i64 0, i64 0, !dbg !2085
  %102 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0, !dbg !2086
  call void @mul_f256(i32* %99, i32* %101, i32* %102), !dbg !2087
  ret i32 %55, !dbg !2088
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @be8_to_le30(i32* %0, i8* %1, i64 %2) #0 !dbg !2089 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2092, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8* %1, metadata !2094, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %2, metadata !2095, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 0, metadata !2096, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 0, metadata !2097, metadata !DIExpression()), !dbg !2093
  br label %4, !dbg !2098

4:                                                ; preds = %24, %3
  %.04 = phi i32 [ 0, %3 ], [ %.15, %24 ], !dbg !2093
  %.03 = phi i64 [ %2, %3 ], [ %5, %24 ]
  %.01 = phi i32 [ 0, %3 ], [ %.12, %24 ], !dbg !2093
  %.0 = phi i32* [ %0, %3 ], [ %.1, %24 ]
  call void @llvm.dbg.value(metadata i32* %.0, metadata !2092, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2097, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %.03, metadata !2095, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2096, metadata !DIExpression()), !dbg !2093
  %5 = add i64 %.03, -1, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %5, metadata !2095, metadata !DIExpression()), !dbg !2093
  %6 = icmp ugt i64 %.03, 0, !dbg !2100
  br i1 %6, label %7, label %25, !dbg !2098

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %1, i64 %5, !dbg !2101
  %9 = load i8, i8* %8, align 1, !dbg !2101
  %10 = zext i8 %9 to i32, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %10, metadata !2103, metadata !DIExpression()), !dbg !2104
  %11 = icmp slt i32 %.01, 22, !dbg !2105
  br i1 %11, label %12, label %16, !dbg !2107

12:                                               ; preds = %7
  %13 = shl i32 %10, %.01, !dbg !2108
  %14 = or i32 %.04, %13, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %14, metadata !2096, metadata !DIExpression()), !dbg !2093
  %15 = add nsw i32 %.01, 8, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %15, metadata !2097, metadata !DIExpression()), !dbg !2093
  br label %24, !dbg !2112

16:                                               ; preds = %7
  %17 = shl i32 %10, %.01, !dbg !2113
  %18 = or i32 %.04, %17, !dbg !2115
  %19 = and i32 %18, 1073741823, !dbg !2116
  %20 = getelementptr inbounds i32, i32* %.0, i32 1, !dbg !2117
  call void @llvm.dbg.value(metadata i32* %20, metadata !2092, metadata !DIExpression()), !dbg !2093
  store i32 %19, i32* %.0, align 4, !dbg !2118
  %21 = sub nsw i32 30, %.01, !dbg !2119
  %22 = lshr i32 %10, %21, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %22, metadata !2096, metadata !DIExpression()), !dbg !2093
  %23 = sub nsw i32 %.01, 22, !dbg !2121
  call void @llvm.dbg.value(metadata i32 %23, metadata !2097, metadata !DIExpression()), !dbg !2093
  br label %24

24:                                               ; preds = %16, %12
  %.15 = phi i32 [ %14, %12 ], [ %22, %16 ], !dbg !2122
  %.12 = phi i32 [ %15, %12 ], [ %23, %16 ], !dbg !2122
  %.1 = phi i32* [ %.0, %12 ], [ %20, %16 ]
  call void @llvm.dbg.value(metadata i32* %.1, metadata !2092, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2097, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2096, metadata !DIExpression()), !dbg !2093
  br label %4, !dbg !2098, !llvm.loop !2123

25:                                               ; preds = %4
  ret i32 %.04, !dbg !2125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.dbg.cu = !{!83, !85, !2}
!llvm.ident = !{!87, !87, !87}
!llvm.module.flags = !{!88, !89, !90}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "br_ec_p256_m31", scope: !2, file: !3, line: 1461, type: !51, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/ec/ec_p256_m31.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m31")
!4 = !{}
!5 = !{!6, !12, !16, !20, !23, !24}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !10, line: 44, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!11 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !15)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !8, line: 26, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !10, line: 41, baseType: !19)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 27, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 45, baseType: !22)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !{!0, !26, !32, !37, !43, !45}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "P256_G", scope: !2, file: !3, line: 1338, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 520, elements: !30)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!30 = !{!31}
!31 = !DISubrange(count: 65)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "P256_N", scope: !2, file: !3, line: 1348, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 32)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "F256", scope: !2, file: !3, line: 298, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 288, elements: !41)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!41 = !{!42}
!42 = !DISubrange(count: 9)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "P256_B", scope: !2, file: !3, line: 307, type: !39, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "Gwin", scope: !2, file: !3, line: 1172, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8640, elements: !48)
!48 = !{!49, !50}
!49 = !DISubrange(count: 15)
!50 = !DISubrange(count: 18)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_ec_impl", file: !53, line: 415, baseType: !54)
!53 = !DIFile(filename: "../BearSSL/inc/bearssl_ec.h", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m31")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 270, size: 448, elements: !55)
!55 = !{!56, !57, !65, !66, !70, !75, !79}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "supported_curves", scope: !54, file: !53, line: 279, baseType: !12, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !54, file: !53, line: 292, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !19, !62}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 46, baseType: !22)
!64 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!65 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !54, file: !53, line: 306, baseType: !58, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !54, file: !53, line: 318, baseType: !67, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!63, !19, !62}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "mul", scope: !54, file: !53, line: 350, baseType: !71, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!12, !74, !63, !61, !63, !19}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "mulgen", scope: !54, file: !53, line: 366, baseType: !76, size: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!63, !74, !61, !63, !19}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "muladd", scope: !54, file: !53, line: 412, baseType: !80, size: 64, offset: 384)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!12, !74, !61, !63, !61, !63, !61, !63, !19}
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "api_mul.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m31")
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../BearSSL/src/codec/ccopy.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m31")
!87 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!88 = !{i32 7, !"Dwarf Version", i32 4}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{i32 1, !"wchar_size", i32 4}
!91 = distinct !DISubprogram(name: "api_mul_wrapper", scope: !84, file: !84, line: 7, type: !92, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !4)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !74, !63, !61, !63, !19}
!94 = !DILocalVariable(name: "G", arg: 1, scope: !91, file: !84, line: 7, type: !74)
!95 = !DILocation(line: 0, scope: !91)
!96 = !DILocalVariable(name: "Glen", arg: 2, scope: !91, file: !84, line: 7, type: !63)
!97 = !DILocalVariable(name: "kb", arg: 3, scope: !91, file: !84, line: 8, type: !61)
!98 = !DILocalVariable(name: "kblen", arg: 4, scope: !91, file: !84, line: 8, type: !63)
!99 = !DILocalVariable(name: "curve", arg: 5, scope: !91, file: !84, line: 8, type: !19)
!100 = !DILocation(line: 9, column: 12, scope: !91)
!101 = !DILocation(line: 9, column: 2, scope: !91)
!102 = !DILocation(line: 10, column: 12, scope: !91)
!103 = !DILocation(line: 10, column: 2, scope: !91)
!104 = !DILocation(line: 11, column: 12, scope: !91)
!105 = !DILocation(line: 11, column: 2, scope: !91)
!106 = !DILocation(line: 12, column: 12, scope: !91)
!107 = !DILocation(line: 12, column: 2, scope: !91)
!108 = !DILocation(line: 13, column: 12, scope: !91)
!109 = !DILocation(line: 13, column: 2, scope: !91)
!110 = !DILocation(line: 15, column: 12, scope: !91)
!111 = !DILocation(line: 15, column: 2, scope: !91)
!112 = !DILocalVariable(name: "iec", scope: !91, file: !84, line: 16, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_ec_impl", file: !53, line: 415, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 270, size: 448, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "supported_curves", scope: !116, file: !53, line: 279, baseType: !12, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !116, file: !53, line: 292, baseType: !58, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !116, file: !53, line: 306, baseType: !58, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !116, file: !53, line: 318, baseType: !67, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "mul", scope: !116, file: !53, line: 350, baseType: !71, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mulgen", scope: !116, file: !53, line: 366, baseType: !76, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "muladd", scope: !116, file: !53, line: 412, baseType: !80, size: 64, offset: 384)
!125 = !DILocation(line: 18, column: 7, scope: !91)
!126 = !DILocation(line: 18, column: 2, scope: !91)
!127 = !DILocation(line: 19, column: 1, scope: !91)
!128 = distinct !DISubprogram(name: "api_mul_wrapper_t", scope: !84, file: !84, line: 30, type: !129, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !4)
!129 = !DISubroutineType(types: !130)
!130 = !{null}
!131 = !DILocation(line: 32, column: 21, scope: !128)
!132 = !DILocalVariable(name: "G", scope: !128, file: !84, line: 32, type: !74)
!133 = !DILocation(line: 0, scope: !128)
!134 = !DILocation(line: 33, column: 17, scope: !128)
!135 = !DILocalVariable(name: "Glen", scope: !128, file: !84, line: 33, type: !63)
!136 = !DILocation(line: 34, column: 28, scope: !128)
!137 = !DILocalVariable(name: "kb", scope: !128, file: !84, line: 34, type: !61)
!138 = !DILocation(line: 35, column: 18, scope: !128)
!139 = !DILocalVariable(name: "kblen", scope: !128, file: !84, line: 35, type: !63)
!140 = !DILocalVariable(name: "curve", scope: !128, file: !84, line: 36, type: !19)
!141 = !DILocalVariable(name: "iec", scope: !128, file: !84, line: 38, type: !113)
!142 = !DILocation(line: 40, column: 7, scope: !128)
!143 = !DILocation(line: 40, column: 2, scope: !128)
!144 = !DILocation(line: 41, column: 1, scope: !128)
!145 = distinct !DISubprogram(name: "br_ccopy", scope: !86, file: !86, line: 29, type: !146, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !85, retainedNodes: !4)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !12, !24, !148, !63}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!150 = !DILocalVariable(name: "ctl", arg: 1, scope: !145, file: !86, line: 29, type: !12)
!151 = !DILocation(line: 0, scope: !145)
!152 = !DILocalVariable(name: "dst", arg: 2, scope: !145, file: !86, line: 29, type: !24)
!153 = !DILocalVariable(name: "src", arg: 3, scope: !145, file: !86, line: 29, type: !148)
!154 = !DILocalVariable(name: "len", arg: 4, scope: !145, file: !86, line: 29, type: !63)
!155 = !DILocalVariable(name: "d", scope: !145, file: !86, line: 31, type: !74)
!156 = !DILocalVariable(name: "s", scope: !145, file: !86, line: 32, type: !61)
!157 = !DILocation(line: 36, column: 2, scope: !145)
!158 = !DILocation(line: 36, column: 13, scope: !145)
!159 = !DILocation(line: 36, column: 16, scope: !145)
!160 = !DILocation(line: 39, column: 10, scope: !161)
!161 = distinct !DILexicalBlock(scope: !145, file: !86, line: 36, column: 21)
!162 = !DILocation(line: 39, column: 7, scope: !161)
!163 = !DILocalVariable(name: "x", scope: !161, file: !86, line: 37, type: !12)
!164 = !DILocation(line: 0, scope: !161)
!165 = !DILocation(line: 40, column: 7, scope: !161)
!166 = !DILocalVariable(name: "y", scope: !161, file: !86, line: 37, type: !12)
!167 = !DILocation(line: 41, column: 8, scope: !161)
!168 = !DILocation(line: 41, column: 6, scope: !161)
!169 = !DILocation(line: 42, column: 5, scope: !161)
!170 = distinct !{!170, !157, !171, !172}
!171 = !DILocation(line: 43, column: 2, scope: !145)
!172 = !{!"llvm.loop.mustprogress"}
!173 = !DILocation(line: 44, column: 1, scope: !145)
!174 = distinct !DISubprogram(name: "MUX", scope: !175, file: !175, line: 770, type: !176, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !85, retainedNodes: !4)
!175 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m31")
!176 = !DISubroutineType(types: !177)
!177 = !{!12, !12, !12, !12}
!178 = !DILocalVariable(name: "ctl", arg: 1, scope: !174, file: !175, line: 770, type: !12)
!179 = !DILocation(line: 0, scope: !174)
!180 = !DILocalVariable(name: "x", arg: 2, scope: !174, file: !175, line: 770, type: !12)
!181 = !DILocalVariable(name: "y", arg: 3, scope: !174, file: !175, line: 770, type: !12)
!182 = !DILocation(line: 772, column: 14, scope: !174)
!183 = !DILocation(line: 772, column: 24, scope: !174)
!184 = !DILocation(line: 772, column: 19, scope: !174)
!185 = !DILocation(line: 772, column: 11, scope: !174)
!186 = !DILocation(line: 772, column: 2, scope: !174)
!187 = distinct !DISubprogram(name: "api_generator", scope: !3, file: !3, line: 1356, type: !59, scopeLine: 1357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!188 = !DILocalVariable(name: "curve", arg: 1, scope: !187, file: !3, line: 1356, type: !19)
!189 = !DILocation(line: 0, scope: !187)
!190 = !DILocalVariable(name: "len", arg: 2, scope: !187, file: !3, line: 1356, type: !62)
!191 = !DILocation(line: 1359, column: 7, scope: !187)
!192 = !DILocation(line: 1360, column: 2, scope: !187)
!193 = distinct !DISubprogram(name: "api_order", scope: !3, file: !3, line: 1364, type: !59, scopeLine: 1365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!194 = !DILocalVariable(name: "curve", arg: 1, scope: !193, file: !3, line: 1364, type: !19)
!195 = !DILocation(line: 0, scope: !193)
!196 = !DILocalVariable(name: "len", arg: 2, scope: !193, file: !3, line: 1364, type: !62)
!197 = !DILocation(line: 1367, column: 7, scope: !193)
!198 = !DILocation(line: 1368, column: 2, scope: !193)
!199 = distinct !DISubprogram(name: "api_xoff", scope: !3, file: !3, line: 1372, type: !68, scopeLine: 1373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!200 = !DILocalVariable(name: "curve", arg: 1, scope: !199, file: !3, line: 1372, type: !19)
!201 = !DILocation(line: 0, scope: !199)
!202 = !DILocalVariable(name: "len", arg: 2, scope: !199, file: !3, line: 1372, type: !62)
!203 = !DILocation(line: 1375, column: 7, scope: !199)
!204 = !DILocation(line: 1376, column: 2, scope: !199)
!205 = distinct !DISubprogram(name: "api_mul", scope: !3, file: !3, line: 1380, type: !72, scopeLine: 1382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!206 = !DILocalVariable(name: "G", arg: 1, scope: !205, file: !3, line: 1380, type: !74)
!207 = !DILocation(line: 0, scope: !205)
!208 = !DILocalVariable(name: "Glen", arg: 2, scope: !205, file: !3, line: 1380, type: !63)
!209 = !DILocalVariable(name: "x", arg: 3, scope: !205, file: !3, line: 1381, type: !61)
!210 = !DILocalVariable(name: "xlen", arg: 4, scope: !205, file: !3, line: 1381, type: !63)
!211 = !DILocalVariable(name: "curve", arg: 5, scope: !205, file: !3, line: 1381, type: !19)
!212 = !DILocalVariable(name: "P", scope: !205, file: !3, line: 1384, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "p256_jacobian", file: !3, line: 654, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 650, size: 864, elements: !215)
!215 = !{!216, !218, !219}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !214, file: !3, line: 651, baseType: !217, size: 288)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 288, elements: !41)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !214, file: !3, line: 652, baseType: !217, size: 288, offset: 288)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !214, file: !3, line: 653, baseType: !217, size: 288, offset: 576)
!220 = !DILocation(line: 1384, column: 16, scope: !205)
!221 = !DILocation(line: 1387, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !205, file: !3, line: 1387, column: 6)
!223 = !DILocation(line: 1387, column: 6, scope: !205)
!224 = !DILocation(line: 1388, column: 3, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !3, line: 1387, column: 18)
!226 = !DILocation(line: 1390, column: 6, scope: !205)
!227 = !DILocalVariable(name: "r", scope: !205, file: !3, line: 1383, type: !12)
!228 = !DILocation(line: 1391, column: 2, scope: !205)
!229 = !DILocation(line: 1392, column: 2, scope: !205)
!230 = !DILocation(line: 1393, column: 2, scope: !205)
!231 = !DILocation(line: 1394, column: 2, scope: !205)
!232 = !DILocation(line: 1395, column: 1, scope: !205)
!233 = distinct !DISubprogram(name: "api_mulgen", scope: !3, file: !3, line: 1398, type: !77, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!234 = !DILocalVariable(name: "R", arg: 1, scope: !233, file: !3, line: 1398, type: !74)
!235 = !DILocation(line: 0, scope: !233)
!236 = !DILocalVariable(name: "x", arg: 2, scope: !233, file: !3, line: 1399, type: !61)
!237 = !DILocalVariable(name: "xlen", arg: 3, scope: !233, file: !3, line: 1399, type: !63)
!238 = !DILocalVariable(name: "curve", arg: 4, scope: !233, file: !3, line: 1399, type: !19)
!239 = !DILocalVariable(name: "P", scope: !233, file: !3, line: 1401, type: !213)
!240 = !DILocation(line: 1401, column: 16, scope: !233)
!241 = !DILocation(line: 1404, column: 2, scope: !233)
!242 = !DILocation(line: 1405, column: 2, scope: !233)
!243 = !DILocation(line: 1406, column: 2, scope: !233)
!244 = !DILocation(line: 1407, column: 2, scope: !233)
!245 = distinct !DISubprogram(name: "api_muladd", scope: !3, file: !3, line: 1411, type: !81, scopeLine: 1414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!246 = !DILocalVariable(name: "A", arg: 1, scope: !245, file: !3, line: 1411, type: !74)
!247 = !DILocation(line: 0, scope: !245)
!248 = !DILocalVariable(name: "B", arg: 2, scope: !245, file: !3, line: 1411, type: !61)
!249 = !DILocalVariable(name: "len", arg: 3, scope: !245, file: !3, line: 1411, type: !63)
!250 = !DILocalVariable(name: "x", arg: 4, scope: !245, file: !3, line: 1412, type: !61)
!251 = !DILocalVariable(name: "xlen", arg: 5, scope: !245, file: !3, line: 1412, type: !63)
!252 = !DILocalVariable(name: "y", arg: 6, scope: !245, file: !3, line: 1413, type: !61)
!253 = !DILocalVariable(name: "ylen", arg: 7, scope: !245, file: !3, line: 1413, type: !63)
!254 = !DILocalVariable(name: "curve", arg: 8, scope: !245, file: !3, line: 1413, type: !19)
!255 = !DILocalVariable(name: "P", scope: !245, file: !3, line: 1415, type: !213)
!256 = !DILocation(line: 1415, column: 16, scope: !245)
!257 = !DILocalVariable(name: "Q", scope: !245, file: !3, line: 1415, type: !213)
!258 = !DILocation(line: 1415, column: 19, scope: !245)
!259 = !DILocation(line: 1420, column: 10, scope: !260)
!260 = distinct !DILexicalBlock(scope: !245, file: !3, line: 1420, column: 6)
!261 = !DILocation(line: 1420, column: 6, scope: !245)
!262 = !DILocation(line: 1421, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !3, line: 1420, column: 17)
!264 = !DILocation(line: 1423, column: 6, scope: !245)
!265 = !DILocalVariable(name: "r", scope: !245, file: !3, line: 1416, type: !12)
!266 = !DILocation(line: 1424, column: 2, scope: !245)
!267 = !DILocation(line: 1425, column: 8, scope: !268)
!268 = distinct !DILexicalBlock(scope: !245, file: !3, line: 1425, column: 6)
!269 = !DILocation(line: 1425, column: 6, scope: !245)
!270 = !DILocation(line: 1426, column: 3, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !3, line: 1425, column: 17)
!272 = !DILocation(line: 1427, column: 2, scope: !271)
!273 = !DILocation(line: 1428, column: 8, scope: !274)
!274 = distinct !DILexicalBlock(scope: !268, file: !3, line: 1427, column: 9)
!275 = !DILocation(line: 1428, column: 5, scope: !274)
!276 = !DILocation(line: 1429, column: 3, scope: !274)
!277 = !DILocation(line: 1435, column: 6, scope: !245)
!278 = !DILocalVariable(name: "t", scope: !245, file: !3, line: 1416, type: !12)
!279 = !DILocation(line: 1436, column: 22, scope: !245)
!280 = !DILocation(line: 1436, column: 20, scope: !245)
!281 = !DILocation(line: 1436, column: 2, scope: !245)
!282 = !DILocalVariable(name: "z", scope: !245, file: !3, line: 1416, type: !12)
!283 = !DILocalVariable(name: "i", scope: !245, file: !3, line: 1417, type: !19)
!284 = !DILocation(line: 1438, column: 7, scope: !285)
!285 = distinct !DILexicalBlock(scope: !245, file: !3, line: 1438, column: 2)
!286 = !DILocation(line: 0, scope: !285)
!287 = !DILocation(line: 1438, column: 16, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !3, line: 1438, column: 2)
!289 = !DILocation(line: 1438, column: 2, scope: !285)
!290 = !DILocation(line: 1439, column: 10, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 1438, column: 27)
!292 = !DILocation(line: 1439, column: 8, scope: !291)
!293 = !DILocation(line: 1439, column: 5, scope: !291)
!294 = !DILocation(line: 1440, column: 2, scope: !291)
!295 = !DILocation(line: 1438, column: 23, scope: !288)
!296 = !DILocation(line: 1438, column: 2, scope: !288)
!297 = distinct !{!297, !289, !298, !172}
!298 = !DILocation(line: 1440, column: 2, scope: !285)
!299 = !DILocation(line: 1441, column: 6, scope: !245)
!300 = !DILocation(line: 1442, column: 2, scope: !245)
!301 = !DILocation(line: 1453, column: 12, scope: !245)
!302 = !DILocation(line: 1453, column: 10, scope: !245)
!303 = !DILocation(line: 1453, column: 16, scope: !245)
!304 = !DILocation(line: 1453, column: 20, scope: !245)
!305 = !DILocation(line: 1453, column: 2, scope: !245)
!306 = !DILocation(line: 1454, column: 2, scope: !245)
!307 = !DILocation(line: 1455, column: 2, scope: !245)
!308 = !DILocation(line: 1456, column: 11, scope: !245)
!309 = !DILocation(line: 1456, column: 7, scope: !245)
!310 = !DILocation(line: 1456, column: 4, scope: !245)
!311 = !DILocation(line: 1457, column: 2, scope: !245)
!312 = !DILocation(line: 1458, column: 1, scope: !245)
!313 = distinct !DISubprogram(name: "p256_decode", scope: !3, file: !3, line: 1040, type: !314, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!314 = !DISubroutineType(types: !315)
!315 = !{!12, !316, !148, !63}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!317 = !DILocalVariable(name: "P", arg: 1, scope: !313, file: !3, line: 1040, type: !316)
!318 = !DILocation(line: 0, scope: !313)
!319 = !DILocalVariable(name: "src", arg: 2, scope: !313, file: !3, line: 1040, type: !148)
!320 = !DILocalVariable(name: "len", arg: 3, scope: !313, file: !3, line: 1040, type: !63)
!321 = !DILocalVariable(name: "tx", scope: !313, file: !3, line: 1043, type: !217)
!322 = !DILocation(line: 1043, column: 11, scope: !313)
!323 = !DILocalVariable(name: "ty", scope: !313, file: !3, line: 1043, type: !217)
!324 = !DILocation(line: 1043, column: 18, scope: !313)
!325 = !DILocalVariable(name: "t1", scope: !313, file: !3, line: 1043, type: !217)
!326 = !DILocation(line: 1043, column: 25, scope: !313)
!327 = !DILocalVariable(name: "t2", scope: !313, file: !3, line: 1043, type: !217)
!328 = !DILocation(line: 1043, column: 32, scope: !313)
!329 = !DILocation(line: 1047, column: 10, scope: !330)
!330 = distinct !DILexicalBlock(scope: !313, file: !3, line: 1047, column: 6)
!331 = !DILocation(line: 1047, column: 6, scope: !313)
!332 = !DILocation(line: 1048, column: 3, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !3, line: 1047, column: 17)
!334 = !DILocalVariable(name: "buf", scope: !313, file: !3, line: 1042, type: !61)
!335 = !DILocation(line: 1058, column: 12, scope: !313)
!336 = !DILocation(line: 1058, column: 8, scope: !313)
!337 = !DILocalVariable(name: "bad", scope: !313, file: !3, line: 1044, type: !12)
!338 = !DILocation(line: 1064, column: 22, scope: !313)
!339 = !DILocation(line: 1064, column: 30, scope: !313)
!340 = !DILocation(line: 1064, column: 10, scope: !313)
!341 = !DILocation(line: 1064, column: 2, scope: !313)
!342 = !DILocation(line: 1064, column: 8, scope: !313)
!343 = !DILocation(line: 1065, column: 22, scope: !313)
!344 = !DILocation(line: 1065, column: 30, scope: !313)
!345 = !DILocation(line: 1065, column: 10, scope: !313)
!346 = !DILocation(line: 1065, column: 2, scope: !313)
!347 = !DILocation(line: 1065, column: 8, scope: !313)
!348 = !DILocation(line: 1066, column: 27, scope: !313)
!349 = !DILocation(line: 1066, column: 9, scope: !313)
!350 = !DILocation(line: 1066, column: 6, scope: !313)
!351 = !DILocation(line: 1067, column: 27, scope: !313)
!352 = !DILocation(line: 1067, column: 9, scope: !313)
!353 = !DILocation(line: 1067, column: 6, scope: !313)
!354 = !DILocation(line: 1072, column: 14, scope: !313)
!355 = !DILocation(line: 1072, column: 18, scope: !313)
!356 = !DILocation(line: 1072, column: 2, scope: !313)
!357 = !DILocation(line: 1073, column: 11, scope: !313)
!358 = !DILocation(line: 1073, column: 15, scope: !313)
!359 = !DILocation(line: 1073, column: 19, scope: !313)
!360 = !DILocation(line: 1073, column: 2, scope: !313)
!361 = !DILocation(line: 1074, column: 14, scope: !313)
!362 = !DILocation(line: 1074, column: 18, scope: !313)
!363 = !DILocation(line: 1074, column: 2, scope: !313)
!364 = !DILocation(line: 1075, column: 11, scope: !313)
!365 = !DILocation(line: 1075, column: 15, scope: !313)
!366 = !DILocation(line: 1075, column: 19, scope: !313)
!367 = !DILocation(line: 1075, column: 2, scope: !313)
!368 = !DILocation(line: 1076, column: 11, scope: !313)
!369 = !DILocation(line: 1076, column: 15, scope: !313)
!370 = !DILocation(line: 1076, column: 19, scope: !313)
!371 = !DILocation(line: 1076, column: 2, scope: !313)
!372 = !DILocation(line: 1077, column: 11, scope: !313)
!373 = !DILocation(line: 1077, column: 15, scope: !313)
!374 = !DILocation(line: 1077, column: 19, scope: !313)
!375 = !DILocation(line: 1077, column: 2, scope: !313)
!376 = !DILocation(line: 1078, column: 11, scope: !313)
!377 = !DILocation(line: 1078, column: 15, scope: !313)
!378 = !DILocation(line: 1078, column: 2, scope: !313)
!379 = !DILocation(line: 1079, column: 11, scope: !313)
!380 = !DILocation(line: 1079, column: 15, scope: !313)
!381 = !DILocation(line: 1079, column: 19, scope: !313)
!382 = !DILocation(line: 1079, column: 2, scope: !313)
!383 = !DILocation(line: 1080, column: 20, scope: !313)
!384 = !DILocation(line: 1080, column: 2, scope: !313)
!385 = !DILocalVariable(name: "i", scope: !313, file: !3, line: 1045, type: !19)
!386 = !DILocation(line: 1081, column: 7, scope: !387)
!387 = distinct !DILexicalBlock(scope: !313, file: !3, line: 1081, column: 2)
!388 = !DILocation(line: 0, scope: !387)
!389 = !DILocation(line: 1081, column: 16, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !3, line: 1081, column: 2)
!391 = !DILocation(line: 1081, column: 2, scope: !387)
!392 = !DILocation(line: 1082, column: 10, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !3, line: 1081, column: 27)
!394 = !DILocation(line: 1082, column: 7, scope: !393)
!395 = !DILocation(line: 1083, column: 2, scope: !393)
!396 = !DILocation(line: 1081, column: 23, scope: !390)
!397 = !DILocation(line: 1081, column: 2, scope: !390)
!398 = distinct !{!398, !391, !399, !172}
!399 = !DILocation(line: 1083, column: 2, scope: !387)
!400 = !DILocation(line: 1088, column: 12, scope: !313)
!401 = !DILocation(line: 1088, column: 2, scope: !313)
!402 = !DILocation(line: 1089, column: 12, scope: !313)
!403 = !DILocation(line: 1089, column: 2, scope: !313)
!404 = !DILocation(line: 1090, column: 12, scope: !313)
!405 = !DILocation(line: 1090, column: 2, scope: !313)
!406 = !DILocation(line: 1091, column: 5, scope: !313)
!407 = !DILocation(line: 1091, column: 2, scope: !313)
!408 = !DILocation(line: 1091, column: 10, scope: !313)
!409 = !DILocation(line: 1092, column: 9, scope: !313)
!410 = !DILocation(line: 1092, column: 2, scope: !313)
!411 = !DILocation(line: 1093, column: 1, scope: !313)
!412 = distinct !DISubprogram(name: "p256_mul", scope: !3, file: !3, line: 1116, type: !413, scopeLine: 1117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !316, !61, !63}
!415 = !DILocalVariable(name: "P", arg: 1, scope: !412, file: !3, line: 1116, type: !316)
!416 = !DILocation(line: 0, scope: !412)
!417 = !DILocalVariable(name: "x", arg: 2, scope: !412, file: !3, line: 1116, type: !61)
!418 = !DILocalVariable(name: "xlen", arg: 3, scope: !412, file: !3, line: 1116, type: !63)
!419 = !DILocalVariable(name: "P2", scope: !412, file: !3, line: 1126, type: !213)
!420 = !DILocation(line: 1126, column: 16, scope: !412)
!421 = !DILocalVariable(name: "P3", scope: !412, file: !3, line: 1126, type: !213)
!422 = !DILocation(line: 1126, column: 20, scope: !412)
!423 = !DILocalVariable(name: "Q", scope: !412, file: !3, line: 1126, type: !213)
!424 = !DILocation(line: 1126, column: 24, scope: !412)
!425 = !DILocalVariable(name: "T", scope: !412, file: !3, line: 1126, type: !213)
!426 = !DILocation(line: 1126, column: 27, scope: !412)
!427 = !DILocalVariable(name: "U", scope: !412, file: !3, line: 1126, type: !213)
!428 = !DILocation(line: 1126, column: 30, scope: !412)
!429 = !DILocation(line: 1131, column: 7, scope: !412)
!430 = !DILocation(line: 1132, column: 2, scope: !412)
!431 = !DILocation(line: 1133, column: 7, scope: !412)
!432 = !DILocation(line: 1134, column: 2, scope: !412)
!433 = !DILocation(line: 1139, column: 2, scope: !412)
!434 = !DILocalVariable(name: "qz", scope: !412, file: !3, line: 1125, type: !12)
!435 = !DILocation(line: 1141, column: 2, scope: !412)
!436 = !DILocation(line: 1140, column: 5, scope: !412)
!437 = !DILocation(line: 1141, column: 14, scope: !412)
!438 = !DILocation(line: 1141, column: 17, scope: !412)
!439 = !DILocalVariable(name: "k", scope: !440, file: !3, line: 1142, type: !19)
!440 = distinct !DILexicalBlock(scope: !412, file: !3, line: 1141, column: 22)
!441 = !DILocation(line: 0, scope: !440)
!442 = !DILocation(line: 1144, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !3, line: 1144, column: 3)
!444 = !DILocation(line: 0, scope: !443)
!445 = !DILocation(line: 1144, column: 17, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1144, column: 3)
!447 = !DILocation(line: 1144, column: 3, scope: !443)
!448 = !DILocation(line: 1148, column: 4, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !3, line: 1144, column: 31)
!450 = !DILocation(line: 1149, column: 4, scope: !449)
!451 = !DILocation(line: 1150, column: 8, scope: !449)
!452 = !DILocation(line: 1151, column: 8, scope: !449)
!453 = !DILocation(line: 1152, column: 12, scope: !449)
!454 = !DILocation(line: 1152, column: 15, scope: !449)
!455 = !DILocation(line: 1152, column: 21, scope: !449)
!456 = !DILocalVariable(name: "bits", scope: !449, file: !3, line: 1145, type: !12)
!457 = !DILocation(line: 0, scope: !449)
!458 = !DILocation(line: 1153, column: 10, scope: !449)
!459 = !DILocalVariable(name: "bnz", scope: !449, file: !3, line: 1146, type: !12)
!460 = !DILocation(line: 1154, column: 10, scope: !449)
!461 = !DILocation(line: 1154, column: 23, scope: !449)
!462 = !DILocation(line: 1154, column: 27, scope: !449)
!463 = !DILocation(line: 1154, column: 4, scope: !449)
!464 = !DILocation(line: 1155, column: 10, scope: !449)
!465 = !DILocation(line: 1155, column: 23, scope: !449)
!466 = !DILocation(line: 1155, column: 27, scope: !449)
!467 = !DILocation(line: 1155, column: 4, scope: !449)
!468 = !DILocation(line: 1156, column: 4, scope: !449)
!469 = !DILocation(line: 1157, column: 14, scope: !449)
!470 = !DILocation(line: 1157, column: 20, scope: !449)
!471 = !DILocation(line: 1157, column: 24, scope: !449)
!472 = !DILocation(line: 1157, column: 4, scope: !449)
!473 = !DILocation(line: 1158, column: 16, scope: !449)
!474 = !DILocation(line: 1158, column: 14, scope: !449)
!475 = !DILocation(line: 1158, column: 21, scope: !449)
!476 = !DILocation(line: 1158, column: 25, scope: !449)
!477 = !DILocation(line: 1158, column: 4, scope: !449)
!478 = !DILocation(line: 1159, column: 10, scope: !449)
!479 = !DILocation(line: 1159, column: 7, scope: !449)
!480 = !DILocation(line: 1160, column: 3, scope: !449)
!481 = !DILocation(line: 1144, column: 25, scope: !446)
!482 = !DILocation(line: 1144, column: 3, scope: !446)
!483 = distinct !{!483, !447, !484, !172}
!484 = !DILocation(line: 1160, column: 3, scope: !443)
!485 = !DILocation(line: 1161, column: 5, scope: !440)
!486 = distinct !{!486, !435, !487, !172}
!487 = !DILocation(line: 1162, column: 2, scope: !412)
!488 = !DILocation(line: 1163, column: 7, scope: !412)
!489 = !DILocation(line: 1164, column: 1, scope: !412)
!490 = distinct !DISubprogram(name: "p256_mulgen", scope: !3, file: !3, line: 1295, type: !413, scopeLine: 1296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!491 = !DILocalVariable(name: "P", arg: 1, scope: !490, file: !3, line: 1295, type: !316)
!492 = !DILocation(line: 0, scope: !490)
!493 = !DILocalVariable(name: "x", arg: 2, scope: !490, file: !3, line: 1295, type: !61)
!494 = !DILocalVariable(name: "xlen", arg: 3, scope: !490, file: !3, line: 1295, type: !63)
!495 = !DILocalVariable(name: "Q", scope: !490, file: !3, line: 1305, type: !213)
!496 = !DILocation(line: 1305, column: 16, scope: !490)
!497 = !DILocation(line: 1308, column: 2, scope: !490)
!498 = !DILocalVariable(name: "qz", scope: !490, file: !3, line: 1306, type: !12)
!499 = !DILocation(line: 1310, column: 2, scope: !490)
!500 = !DILocation(line: 1309, column: 5, scope: !490)
!501 = !DILocation(line: 1310, column: 14, scope: !490)
!502 = !DILocation(line: 1310, column: 17, scope: !490)
!503 = !DILocation(line: 1314, column: 11, scope: !504)
!504 = distinct !DILexicalBlock(scope: !490, file: !3, line: 1310, column: 22)
!505 = !DILocation(line: 1314, column: 8, scope: !504)
!506 = !DILocalVariable(name: "bx", scope: !504, file: !3, line: 1312, type: !15)
!507 = !DILocation(line: 0, scope: !504)
!508 = !DILocalVariable(name: "k", scope: !504, file: !3, line: 1311, type: !19)
!509 = !DILocation(line: 1315, column: 8, scope: !510)
!510 = distinct !DILexicalBlock(scope: !504, file: !3, line: 1315, column: 3)
!511 = !DILocation(line: 0, scope: !510)
!512 = !DILocation(line: 1315, column: 17, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !3, line: 1315, column: 3)
!514 = !DILocation(line: 1315, column: 3, scope: !510)
!515 = !DILocalVariable(name: "T", scope: !516, file: !3, line: 1318, type: !213)
!516 = distinct !DILexicalBlock(scope: !513, file: !3, line: 1315, column: 28)
!517 = !DILocation(line: 1318, column: 18, scope: !516)
!518 = !DILocalVariable(name: "U", scope: !516, file: !3, line: 1318, type: !213)
!519 = !DILocation(line: 1318, column: 21, scope: !516)
!520 = !DILocation(line: 1320, column: 4, scope: !516)
!521 = !DILocation(line: 1321, column: 4, scope: !516)
!522 = !DILocation(line: 1322, column: 4, scope: !516)
!523 = !DILocation(line: 1323, column: 4, scope: !516)
!524 = !DILocation(line: 1324, column: 15, scope: !516)
!525 = !DILocation(line: 1324, column: 21, scope: !516)
!526 = !DILocalVariable(name: "bits", scope: !516, file: !3, line: 1316, type: !12)
!527 = !DILocation(line: 0, scope: !516)
!528 = !DILocation(line: 1325, column: 10, scope: !516)
!529 = !DILocalVariable(name: "bnz", scope: !516, file: !3, line: 1317, type: !12)
!530 = !DILocation(line: 1326, column: 4, scope: !516)
!531 = !DILocation(line: 1327, column: 8, scope: !516)
!532 = !DILocation(line: 1328, column: 4, scope: !516)
!533 = !DILocation(line: 1329, column: 14, scope: !516)
!534 = !DILocation(line: 1329, column: 20, scope: !516)
!535 = !DILocation(line: 1329, column: 24, scope: !516)
!536 = !DILocation(line: 1329, column: 4, scope: !516)
!537 = !DILocation(line: 1330, column: 16, scope: !516)
!538 = !DILocation(line: 1330, column: 14, scope: !516)
!539 = !DILocation(line: 1330, column: 21, scope: !516)
!540 = !DILocation(line: 1330, column: 25, scope: !516)
!541 = !DILocation(line: 1330, column: 4, scope: !516)
!542 = !DILocation(line: 1331, column: 10, scope: !516)
!543 = !DILocation(line: 1331, column: 7, scope: !516)
!544 = !DILocation(line: 1332, column: 7, scope: !516)
!545 = !DILocation(line: 1333, column: 3, scope: !516)
!546 = !DILocation(line: 1315, column: 24, scope: !513)
!547 = !DILocation(line: 1315, column: 3, scope: !513)
!548 = distinct !{!548, !514, !549, !172}
!549 = !DILocation(line: 1333, column: 3, scope: !510)
!550 = distinct !{!550, !499, !551, !172}
!551 = !DILocation(line: 1334, column: 2, scope: !490)
!552 = !DILocation(line: 1335, column: 7, scope: !490)
!553 = !DILocation(line: 1336, column: 1, scope: !490)
!554 = distinct !DISubprogram(name: "p256_add", scope: !3, file: !3, line: 846, type: !555, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!555 = !DISubroutineType(types: !556)
!556 = !{!12, !316, !557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!559 = !DILocalVariable(name: "P1", arg: 1, scope: !554, file: !3, line: 846, type: !316)
!560 = !DILocation(line: 0, scope: !554)
!561 = !DILocalVariable(name: "P2", arg: 2, scope: !554, file: !3, line: 846, type: !557)
!562 = !DILocalVariable(name: "t1", scope: !554, file: !3, line: 861, type: !217)
!563 = !DILocation(line: 861, column: 11, scope: !554)
!564 = !DILocalVariable(name: "t2", scope: !554, file: !3, line: 861, type: !217)
!565 = !DILocation(line: 861, column: 18, scope: !554)
!566 = !DILocalVariable(name: "t3", scope: !554, file: !3, line: 861, type: !217)
!567 = !DILocation(line: 861, column: 25, scope: !554)
!568 = !DILocalVariable(name: "t4", scope: !554, file: !3, line: 861, type: !217)
!569 = !DILocation(line: 861, column: 32, scope: !554)
!570 = !DILocalVariable(name: "t5", scope: !554, file: !3, line: 861, type: !217)
!571 = !DILocation(line: 861, column: 39, scope: !554)
!572 = !DILocalVariable(name: "t6", scope: !554, file: !3, line: 861, type: !217)
!573 = !DILocation(line: 861, column: 46, scope: !554)
!574 = !DILocalVariable(name: "t7", scope: !554, file: !3, line: 861, type: !217)
!575 = !DILocation(line: 861, column: 53, scope: !554)
!576 = !DILocation(line: 868, column: 14, scope: !554)
!577 = !DILocation(line: 868, column: 22, scope: !554)
!578 = !DILocation(line: 868, column: 18, scope: !554)
!579 = !DILocation(line: 868, column: 2, scope: !554)
!580 = !DILocation(line: 869, column: 11, scope: !554)
!581 = !DILocation(line: 869, column: 19, scope: !554)
!582 = !DILocation(line: 869, column: 15, scope: !554)
!583 = !DILocation(line: 869, column: 22, scope: !554)
!584 = !DILocation(line: 869, column: 2, scope: !554)
!585 = !DILocation(line: 870, column: 11, scope: !554)
!586 = !DILocation(line: 870, column: 19, scope: !554)
!587 = !DILocation(line: 870, column: 15, scope: !554)
!588 = !DILocation(line: 870, column: 22, scope: !554)
!589 = !DILocation(line: 870, column: 2, scope: !554)
!590 = !DILocation(line: 871, column: 11, scope: !554)
!591 = !DILocation(line: 871, column: 19, scope: !554)
!592 = !DILocation(line: 871, column: 15, scope: !554)
!593 = !DILocation(line: 871, column: 22, scope: !554)
!594 = !DILocation(line: 871, column: 2, scope: !554)
!595 = !DILocation(line: 876, column: 14, scope: !554)
!596 = !DILocation(line: 876, column: 22, scope: !554)
!597 = !DILocation(line: 876, column: 18, scope: !554)
!598 = !DILocation(line: 876, column: 2, scope: !554)
!599 = !DILocation(line: 877, column: 11, scope: !554)
!600 = !DILocation(line: 877, column: 19, scope: !554)
!601 = !DILocation(line: 877, column: 15, scope: !554)
!602 = !DILocation(line: 877, column: 22, scope: !554)
!603 = !DILocation(line: 877, column: 2, scope: !554)
!604 = !DILocation(line: 878, column: 11, scope: !554)
!605 = !DILocation(line: 878, column: 19, scope: !554)
!606 = !DILocation(line: 878, column: 15, scope: !554)
!607 = !DILocation(line: 878, column: 22, scope: !554)
!608 = !DILocation(line: 878, column: 2, scope: !554)
!609 = !DILocation(line: 879, column: 11, scope: !554)
!610 = !DILocation(line: 879, column: 19, scope: !554)
!611 = !DILocation(line: 879, column: 15, scope: !554)
!612 = !DILocation(line: 879, column: 22, scope: !554)
!613 = !DILocation(line: 879, column: 2, scope: !554)
!614 = !DILocation(line: 886, column: 11, scope: !554)
!615 = !DILocation(line: 886, column: 15, scope: !554)
!616 = !DILocation(line: 886, column: 19, scope: !554)
!617 = !DILocation(line: 886, column: 2, scope: !554)
!618 = !DILocation(line: 887, column: 11, scope: !554)
!619 = !DILocation(line: 887, column: 15, scope: !554)
!620 = !DILocation(line: 887, column: 19, scope: !554)
!621 = !DILocation(line: 887, column: 2, scope: !554)
!622 = !DILocation(line: 888, column: 20, scope: !554)
!623 = !DILocation(line: 888, column: 2, scope: !554)
!624 = !DILocalVariable(name: "ret", scope: !554, file: !3, line: 862, type: !12)
!625 = !DILocalVariable(name: "i", scope: !554, file: !3, line: 863, type: !19)
!626 = !DILocation(line: 890, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !554, file: !3, line: 890, column: 2)
!628 = !DILocation(line: 0, scope: !627)
!629 = !DILocation(line: 890, column: 16, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !3, line: 890, column: 2)
!631 = !DILocation(line: 890, column: 2, scope: !627)
!632 = !DILocation(line: 891, column: 10, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !3, line: 890, column: 27)
!634 = !DILocation(line: 891, column: 7, scope: !633)
!635 = !DILocation(line: 892, column: 2, scope: !633)
!636 = !DILocation(line: 890, column: 23, scope: !630)
!637 = !DILocation(line: 890, column: 2, scope: !630)
!638 = distinct !{!638, !631, !639, !172}
!639 = !DILocation(line: 892, column: 2, scope: !627)
!640 = !DILocation(line: 893, column: 15, scope: !554)
!641 = !DILocation(line: 893, column: 13, scope: !554)
!642 = !DILocation(line: 893, column: 21, scope: !554)
!643 = !DILocation(line: 898, column: 14, scope: !554)
!644 = !DILocation(line: 898, column: 18, scope: !554)
!645 = !DILocation(line: 898, column: 2, scope: !554)
!646 = !DILocation(line: 899, column: 11, scope: !554)
!647 = !DILocation(line: 899, column: 15, scope: !554)
!648 = !DILocation(line: 899, column: 19, scope: !554)
!649 = !DILocation(line: 899, column: 2, scope: !554)
!650 = !DILocation(line: 900, column: 11, scope: !554)
!651 = !DILocation(line: 900, column: 15, scope: !554)
!652 = !DILocation(line: 900, column: 19, scope: !554)
!653 = !DILocation(line: 900, column: 2, scope: !554)
!654 = !DILocation(line: 905, column: 18, scope: !554)
!655 = !DILocation(line: 905, column: 14, scope: !554)
!656 = !DILocation(line: 905, column: 21, scope: !554)
!657 = !DILocation(line: 905, column: 2, scope: !554)
!658 = !DILocation(line: 906, column: 15, scope: !554)
!659 = !DILocation(line: 906, column: 11, scope: !554)
!660 = !DILocation(line: 906, column: 22, scope: !554)
!661 = !DILocation(line: 906, column: 18, scope: !554)
!662 = !DILocation(line: 906, column: 25, scope: !554)
!663 = !DILocation(line: 906, column: 2, scope: !554)
!664 = !DILocation(line: 907, column: 15, scope: !554)
!665 = !DILocation(line: 907, column: 11, scope: !554)
!666 = !DILocation(line: 907, column: 22, scope: !554)
!667 = !DILocation(line: 907, column: 18, scope: !554)
!668 = !DILocation(line: 907, column: 25, scope: !554)
!669 = !DILocation(line: 907, column: 2, scope: !554)
!670 = !DILocation(line: 908, column: 15, scope: !554)
!671 = !DILocation(line: 908, column: 11, scope: !554)
!672 = !DILocation(line: 908, column: 22, scope: !554)
!673 = !DILocation(line: 908, column: 18, scope: !554)
!674 = !DILocation(line: 908, column: 25, scope: !554)
!675 = !DILocation(line: 908, column: 2, scope: !554)
!676 = !DILocation(line: 913, column: 11, scope: !554)
!677 = !DILocation(line: 913, column: 15, scope: !554)
!678 = !DILocation(line: 913, column: 23, scope: !554)
!679 = !DILocation(line: 913, column: 19, scope: !554)
!680 = !DILocation(line: 913, column: 2, scope: !554)
!681 = !DILocation(line: 914, column: 15, scope: !554)
!682 = !DILocation(line: 914, column: 11, scope: !554)
!683 = !DILocation(line: 914, column: 18, scope: !554)
!684 = !DILocation(line: 914, column: 22, scope: !554)
!685 = !DILocation(line: 914, column: 2, scope: !554)
!686 = !DILocation(line: 915, column: 11, scope: !554)
!687 = !DILocation(line: 915, column: 15, scope: !554)
!688 = !DILocation(line: 915, column: 19, scope: !554)
!689 = !DILocation(line: 915, column: 2, scope: !554)
!690 = !DILocation(line: 916, column: 15, scope: !554)
!691 = !DILocation(line: 916, column: 11, scope: !554)
!692 = !DILocation(line: 916, column: 22, scope: !554)
!693 = !DILocation(line: 916, column: 18, scope: !554)
!694 = !DILocation(line: 916, column: 25, scope: !554)
!695 = !DILocation(line: 916, column: 2, scope: !554)
!696 = !DILocation(line: 921, column: 11, scope: !554)
!697 = !DILocation(line: 921, column: 19, scope: !554)
!698 = !DILocation(line: 921, column: 15, scope: !554)
!699 = !DILocation(line: 921, column: 26, scope: !554)
!700 = !DILocation(line: 921, column: 22, scope: !554)
!701 = !DILocation(line: 921, column: 2, scope: !554)
!702 = !DILocation(line: 922, column: 15, scope: !554)
!703 = !DILocation(line: 922, column: 11, scope: !554)
!704 = !DILocation(line: 922, column: 18, scope: !554)
!705 = !DILocation(line: 922, column: 22, scope: !554)
!706 = !DILocation(line: 922, column: 2, scope: !554)
!707 = !DILocation(line: 924, column: 2, scope: !554)
!708 = distinct !DISubprogram(name: "reduce_final_f256", scope: !3, file: !3, line: 619, type: !709, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!709 = !DISubroutineType(types: !710)
!710 = !{!12, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!712 = !DILocalVariable(name: "d", arg: 1, scope: !708, file: !3, line: 619, type: !711)
!713 = !DILocation(line: 0, scope: !708)
!714 = !DILocalVariable(name: "t", scope: !708, file: !3, line: 621, type: !217)
!715 = !DILocation(line: 621, column: 11, scope: !708)
!716 = !DILocalVariable(name: "cc", scope: !708, file: !3, line: 622, type: !12)
!717 = !DILocalVariable(name: "i", scope: !708, file: !3, line: 623, type: !19)
!718 = !DILocation(line: 626, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !708, file: !3, line: 626, column: 2)
!720 = !DILocation(line: 0, scope: !719)
!721 = !DILocation(line: 626, column: 16, scope: !722)
!722 = distinct !DILexicalBlock(scope: !719, file: !3, line: 626, column: 2)
!723 = !DILocation(line: 626, column: 2, scope: !719)
!724 = !DILocation(line: 629, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !3, line: 626, column: 27)
!726 = !DILocation(line: 629, column: 14, scope: !725)
!727 = !DILocation(line: 629, column: 12, scope: !725)
!728 = !DILocation(line: 629, column: 22, scope: !725)
!729 = !DILocalVariable(name: "w", scope: !725, file: !3, line: 627, type: !12)
!730 = !DILocation(line: 0, scope: !725)
!731 = !DILocation(line: 630, column: 10, scope: !725)
!732 = !DILocation(line: 631, column: 12, scope: !725)
!733 = !DILocation(line: 631, column: 3, scope: !725)
!734 = !DILocation(line: 631, column: 8, scope: !725)
!735 = !DILocation(line: 632, column: 2, scope: !725)
!736 = !DILocation(line: 626, column: 23, scope: !722)
!737 = !DILocation(line: 626, column: 2, scope: !722)
!738 = distinct !{!738, !723, !739, !172}
!739 = !DILocation(line: 632, column: 2, scope: !719)
!740 = !DILocation(line: 633, column: 5, scope: !708)
!741 = !DILocation(line: 634, column: 12, scope: !708)
!742 = !DILocation(line: 634, column: 15, scope: !708)
!743 = !DILocation(line: 634, column: 2, scope: !708)
!744 = !DILocation(line: 635, column: 2, scope: !708)
!745 = distinct !DISubprogram(name: "EQ", scope: !175, file: !175, line: 779, type: !746, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!746 = !DISubroutineType(types: !747)
!747 = !{!12, !12, !12}
!748 = !DILocalVariable(name: "x", arg: 1, scope: !745, file: !175, line: 779, type: !12)
!749 = !DILocation(line: 0, scope: !745)
!750 = !DILocalVariable(name: "y", arg: 2, scope: !745, file: !175, line: 779, type: !12)
!751 = !DILocation(line: 783, column: 8, scope: !745)
!752 = !DILocalVariable(name: "q", scope: !745, file: !175, line: 781, type: !12)
!753 = !DILocation(line: 784, column: 18, scope: !745)
!754 = !DILocation(line: 784, column: 16, scope: !745)
!755 = !DILocation(line: 784, column: 22, scope: !745)
!756 = !DILocation(line: 784, column: 9, scope: !745)
!757 = !DILocation(line: 784, column: 2, scope: !745)
!758 = distinct !DISubprogram(name: "p256_double", scope: !3, file: !3, line: 745, type: !759, scopeLine: 746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !316}
!761 = !DILocalVariable(name: "Q", arg: 1, scope: !758, file: !3, line: 745, type: !316)
!762 = !DILocation(line: 0, scope: !758)
!763 = !DILocalVariable(name: "t1", scope: !758, file: !3, line: 762, type: !217)
!764 = !DILocation(line: 762, column: 11, scope: !758)
!765 = !DILocalVariable(name: "t2", scope: !758, file: !3, line: 762, type: !217)
!766 = !DILocation(line: 762, column: 18, scope: !758)
!767 = !DILocalVariable(name: "t3", scope: !758, file: !3, line: 762, type: !217)
!768 = !DILocation(line: 762, column: 25, scope: !758)
!769 = !DILocalVariable(name: "t4", scope: !758, file: !3, line: 762, type: !217)
!770 = !DILocation(line: 762, column: 32, scope: !758)
!771 = !DILocation(line: 767, column: 14, scope: !758)
!772 = !DILocation(line: 767, column: 21, scope: !758)
!773 = !DILocation(line: 767, column: 18, scope: !758)
!774 = !DILocation(line: 767, column: 2, scope: !758)
!775 = !DILocation(line: 772, column: 11, scope: !758)
!776 = !DILocation(line: 772, column: 18, scope: !758)
!777 = !DILocation(line: 772, column: 15, scope: !758)
!778 = !DILocation(line: 772, column: 21, scope: !758)
!779 = !DILocation(line: 772, column: 2, scope: !758)
!780 = !DILocation(line: 773, column: 11, scope: !758)
!781 = !DILocation(line: 773, column: 18, scope: !758)
!782 = !DILocation(line: 773, column: 15, scope: !758)
!783 = !DILocation(line: 773, column: 21, scope: !758)
!784 = !DILocation(line: 773, column: 2, scope: !758)
!785 = !DILocation(line: 778, column: 11, scope: !758)
!786 = !DILocation(line: 778, column: 15, scope: !758)
!787 = !DILocation(line: 778, column: 19, scope: !758)
!788 = !DILocation(line: 778, column: 2, scope: !758)
!789 = !DILocation(line: 779, column: 11, scope: !758)
!790 = !DILocation(line: 779, column: 15, scope: !758)
!791 = !DILocation(line: 779, column: 19, scope: !758)
!792 = !DILocation(line: 779, column: 2, scope: !758)
!793 = !DILocation(line: 780, column: 11, scope: !758)
!794 = !DILocation(line: 780, column: 15, scope: !758)
!795 = !DILocation(line: 780, column: 19, scope: !758)
!796 = !DILocation(line: 780, column: 2, scope: !758)
!797 = !DILocation(line: 785, column: 14, scope: !758)
!798 = !DILocation(line: 785, column: 21, scope: !758)
!799 = !DILocation(line: 785, column: 18, scope: !758)
!800 = !DILocation(line: 785, column: 2, scope: !758)
!801 = !DILocation(line: 786, column: 11, scope: !758)
!802 = !DILocation(line: 786, column: 15, scope: !758)
!803 = !DILocation(line: 786, column: 19, scope: !758)
!804 = !DILocation(line: 786, column: 2, scope: !758)
!805 = !DILocation(line: 787, column: 11, scope: !758)
!806 = !DILocation(line: 787, column: 18, scope: !758)
!807 = !DILocation(line: 787, column: 15, scope: !758)
!808 = !DILocation(line: 787, column: 21, scope: !758)
!809 = !DILocation(line: 787, column: 2, scope: !758)
!810 = !DILocation(line: 788, column: 11, scope: !758)
!811 = !DILocation(line: 788, column: 15, scope: !758)
!812 = !DILocation(line: 788, column: 19, scope: !758)
!813 = !DILocation(line: 788, column: 2, scope: !758)
!814 = !DILocation(line: 793, column: 17, scope: !758)
!815 = !DILocation(line: 793, column: 14, scope: !758)
!816 = !DILocation(line: 793, column: 20, scope: !758)
!817 = !DILocation(line: 793, column: 2, scope: !758)
!818 = !DILocation(line: 794, column: 14, scope: !758)
!819 = !DILocation(line: 794, column: 11, scope: !758)
!820 = !DILocation(line: 794, column: 20, scope: !758)
!821 = !DILocation(line: 794, column: 17, scope: !758)
!822 = !DILocation(line: 794, column: 23, scope: !758)
!823 = !DILocation(line: 794, column: 2, scope: !758)
!824 = !DILocation(line: 795, column: 14, scope: !758)
!825 = !DILocation(line: 795, column: 11, scope: !758)
!826 = !DILocation(line: 795, column: 20, scope: !758)
!827 = !DILocation(line: 795, column: 17, scope: !758)
!828 = !DILocation(line: 795, column: 23, scope: !758)
!829 = !DILocation(line: 795, column: 2, scope: !758)
!830 = !DILocation(line: 800, column: 11, scope: !758)
!831 = !DILocation(line: 800, column: 18, scope: !758)
!832 = !DILocation(line: 800, column: 15, scope: !758)
!833 = !DILocation(line: 800, column: 24, scope: !758)
!834 = !DILocation(line: 800, column: 21, scope: !758)
!835 = !DILocation(line: 800, column: 2, scope: !758)
!836 = !DILocation(line: 801, column: 14, scope: !758)
!837 = !DILocation(line: 801, column: 11, scope: !758)
!838 = !DILocation(line: 801, column: 17, scope: !758)
!839 = !DILocation(line: 801, column: 21, scope: !758)
!840 = !DILocation(line: 801, column: 2, scope: !758)
!841 = !DILocation(line: 807, column: 11, scope: !758)
!842 = !DILocation(line: 807, column: 15, scope: !758)
!843 = !DILocation(line: 807, column: 22, scope: !758)
!844 = !DILocation(line: 807, column: 19, scope: !758)
!845 = !DILocation(line: 807, column: 2, scope: !758)
!846 = !DILocation(line: 808, column: 14, scope: !758)
!847 = !DILocation(line: 808, column: 11, scope: !758)
!848 = !DILocation(line: 808, column: 17, scope: !758)
!849 = !DILocation(line: 808, column: 21, scope: !758)
!850 = !DILocation(line: 808, column: 2, scope: !758)
!851 = !DILocation(line: 809, column: 14, scope: !758)
!852 = !DILocation(line: 809, column: 18, scope: !758)
!853 = !DILocation(line: 809, column: 2, scope: !758)
!854 = !DILocation(line: 810, column: 11, scope: !758)
!855 = !DILocation(line: 810, column: 15, scope: !758)
!856 = !DILocation(line: 810, column: 19, scope: !758)
!857 = !DILocation(line: 810, column: 2, scope: !758)
!858 = !DILocation(line: 811, column: 14, scope: !758)
!859 = !DILocation(line: 811, column: 11, scope: !758)
!860 = !DILocation(line: 811, column: 20, scope: !758)
!861 = !DILocation(line: 811, column: 17, scope: !758)
!862 = !DILocation(line: 811, column: 23, scope: !758)
!863 = !DILocation(line: 811, column: 2, scope: !758)
!864 = !DILocation(line: 812, column: 1, scope: !758)
!865 = distinct !DISubprogram(name: "p256_to_affine", scope: !3, file: !3, line: 665, type: !759, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!866 = !DILocalVariable(name: "P", arg: 1, scope: !865, file: !3, line: 665, type: !316)
!867 = !DILocation(line: 0, scope: !865)
!868 = !DILocalVariable(name: "t1", scope: !865, file: !3, line: 667, type: !217)
!869 = !DILocation(line: 667, column: 11, scope: !865)
!870 = !DILocalVariable(name: "t2", scope: !865, file: !3, line: 667, type: !217)
!871 = !DILocation(line: 667, column: 18, scope: !865)
!872 = !DILocation(line: 693, column: 2, scope: !865)
!873 = !DILocation(line: 693, column: 16, scope: !865)
!874 = !DILocalVariable(name: "i", scope: !865, file: !3, line: 668, type: !19)
!875 = !DILocation(line: 694, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !865, file: !3, line: 694, column: 2)
!877 = !DILocation(line: 0, scope: !876)
!878 = !DILocation(line: 694, column: 16, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !3, line: 694, column: 2)
!880 = !DILocation(line: 694, column: 2, scope: !876)
!881 = !DILocation(line: 695, column: 15, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 694, column: 28)
!883 = !DILocation(line: 695, column: 19, scope: !882)
!884 = !DILocation(line: 695, column: 3, scope: !882)
!885 = !DILocation(line: 696, column: 12, scope: !882)
!886 = !DILocation(line: 696, column: 16, scope: !882)
!887 = !DILocation(line: 696, column: 23, scope: !882)
!888 = !DILocation(line: 696, column: 20, scope: !882)
!889 = !DILocation(line: 696, column: 3, scope: !882)
!890 = !DILocation(line: 697, column: 2, scope: !882)
!891 = !DILocation(line: 694, column: 24, scope: !879)
!892 = !DILocation(line: 694, column: 2, scope: !879)
!893 = distinct !{!893, !880, !894, !172}
!894 = !DILocation(line: 697, column: 2, scope: !876)
!895 = !DILocation(line: 704, column: 2, scope: !865)
!896 = !DILocation(line: 704, column: 16, scope: !865)
!897 = !DILocation(line: 705, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !865, file: !3, line: 705, column: 2)
!899 = !DILocation(line: 0, scope: !898)
!900 = !DILocation(line: 705, column: 16, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !3, line: 705, column: 2)
!902 = !DILocation(line: 705, column: 2, scope: !898)
!903 = !DILocation(line: 706, column: 15, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !3, line: 705, column: 29)
!905 = !DILocation(line: 706, column: 19, scope: !904)
!906 = !DILocation(line: 706, column: 3, scope: !904)
!907 = !DILocation(line: 707, column: 3, scope: !904)
!908 = !DILocation(line: 712, column: 13, scope: !909)
!909 = distinct !DILexicalBlock(scope: !904, file: !3, line: 707, column: 14)
!910 = !DILocation(line: 712, column: 17, scope: !909)
!911 = !DILocation(line: 712, column: 21, scope: !909)
!912 = !DILocation(line: 712, column: 4, scope: !909)
!913 = !DILocation(line: 713, column: 4, scope: !909)
!914 = !DILocation(line: 717, column: 13, scope: !909)
!915 = !DILocation(line: 717, column: 17, scope: !909)
!916 = !DILocation(line: 717, column: 24, scope: !909)
!917 = !DILocation(line: 717, column: 21, scope: !909)
!918 = !DILocation(line: 717, column: 4, scope: !909)
!919 = !DILocation(line: 718, column: 4, scope: !909)
!920 = !DILocation(line: 720, column: 2, scope: !904)
!921 = !DILocation(line: 705, column: 25, scope: !901)
!922 = !DILocation(line: 705, column: 2, scope: !901)
!923 = distinct !{!923, !902, !924, !172}
!924 = !DILocation(line: 720, column: 2, scope: !898)
!925 = !DILocation(line: 725, column: 11, scope: !865)
!926 = !DILocation(line: 725, column: 15, scope: !865)
!927 = !DILocation(line: 725, column: 19, scope: !865)
!928 = !DILocation(line: 725, column: 2, scope: !865)
!929 = !DILocation(line: 726, column: 14, scope: !865)
!930 = !DILocation(line: 726, column: 11, scope: !865)
!931 = !DILocation(line: 726, column: 17, scope: !865)
!932 = !DILocation(line: 726, column: 24, scope: !865)
!933 = !DILocation(line: 726, column: 21, scope: !865)
!934 = !DILocation(line: 726, column: 2, scope: !865)
!935 = !DILocation(line: 727, column: 11, scope: !865)
!936 = !DILocation(line: 727, column: 15, scope: !865)
!937 = !DILocation(line: 727, column: 19, scope: !865)
!938 = !DILocation(line: 727, column: 2, scope: !865)
!939 = !DILocation(line: 728, column: 14, scope: !865)
!940 = !DILocation(line: 728, column: 11, scope: !865)
!941 = !DILocation(line: 728, column: 17, scope: !865)
!942 = !DILocation(line: 728, column: 24, scope: !865)
!943 = !DILocation(line: 728, column: 21, scope: !865)
!944 = !DILocation(line: 728, column: 2, scope: !865)
!945 = !DILocation(line: 729, column: 23, scope: !865)
!946 = !DILocation(line: 729, column: 20, scope: !865)
!947 = !DILocation(line: 729, column: 2, scope: !865)
!948 = !DILocation(line: 730, column: 23, scope: !865)
!949 = !DILocation(line: 730, column: 20, scope: !865)
!950 = !DILocation(line: 730, column: 2, scope: !865)
!951 = !DILocation(line: 736, column: 14, scope: !865)
!952 = !DILocation(line: 736, column: 11, scope: !865)
!953 = !DILocation(line: 736, column: 20, scope: !865)
!954 = !DILocation(line: 736, column: 17, scope: !865)
!955 = !DILocation(line: 736, column: 23, scope: !865)
!956 = !DILocation(line: 736, column: 2, scope: !865)
!957 = !DILocation(line: 737, column: 23, scope: !865)
!958 = !DILocation(line: 737, column: 20, scope: !865)
!959 = !DILocation(line: 737, column: 2, scope: !865)
!960 = !DILocation(line: 738, column: 1, scope: !865)
!961 = distinct !DISubprogram(name: "p256_encode", scope: !3, file: !3, line: 1100, type: !962, scopeLine: 1101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !24, !557}
!964 = !DILocalVariable(name: "dst", arg: 1, scope: !961, file: !3, line: 1100, type: !24)
!965 = !DILocation(line: 0, scope: !961)
!966 = !DILocalVariable(name: "P", arg: 2, scope: !961, file: !3, line: 1100, type: !557)
!967 = !DILocalVariable(name: "buf", scope: !961, file: !3, line: 1102, type: !74)
!968 = !DILocation(line: 1105, column: 2, scope: !961)
!969 = !DILocation(line: 1105, column: 9, scope: !961)
!970 = !DILocation(line: 1106, column: 18, scope: !961)
!971 = !DILocation(line: 1106, column: 30, scope: !961)
!972 = !DILocation(line: 1106, column: 27, scope: !961)
!973 = !DILocation(line: 1106, column: 2, scope: !961)
!974 = !DILocation(line: 1107, column: 18, scope: !961)
!975 = !DILocation(line: 1107, column: 31, scope: !961)
!976 = !DILocation(line: 1107, column: 28, scope: !961)
!977 = !DILocation(line: 1107, column: 2, scope: !961)
!978 = !DILocation(line: 1108, column: 1, scope: !961)
!979 = distinct !DISubprogram(name: "le30_to_be8", scope: !3, file: !3, line: 82, type: !980, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !74, !63, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!983 = !DILocalVariable(name: "dst", arg: 1, scope: !979, file: !3, line: 82, type: !74)
!984 = !DILocation(line: 0, scope: !979)
!985 = !DILocalVariable(name: "len", arg: 2, scope: !979, file: !3, line: 82, type: !63)
!986 = !DILocalVariable(name: "src", arg: 3, scope: !979, file: !3, line: 82, type: !982)
!987 = !DILocalVariable(name: "acc", scope: !979, file: !3, line: 84, type: !12)
!988 = !DILocalVariable(name: "acc_len", scope: !979, file: !3, line: 85, type: !19)
!989 = !DILocation(line: 89, column: 2, scope: !979)
!990 = !DILocation(line: 89, column: 13, scope: !979)
!991 = !DILocation(line: 89, column: 16, scope: !979)
!992 = !DILocation(line: 90, column: 15, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 90, column: 7)
!994 = distinct !DILexicalBlock(scope: !979, file: !3, line: 89, column: 21)
!995 = !DILocation(line: 90, column: 7, scope: !994)
!996 = !DILocation(line: 93, column: 13, scope: !997)
!997 = distinct !DILexicalBlock(scope: !993, file: !3, line: 90, column: 20)
!998 = !DILocation(line: 93, column: 8, scope: !997)
!999 = !DILocalVariable(name: "w", scope: !997, file: !3, line: 91, type: !12)
!1000 = !DILocation(line: 0, scope: !997)
!1001 = !DILocation(line: 94, column: 40, scope: !997)
!1002 = !DILocation(line: 94, column: 35, scope: !997)
!1003 = !DILocation(line: 94, column: 15, scope: !997)
!1004 = !DILocation(line: 94, column: 4, scope: !997)
!1005 = !DILocation(line: 94, column: 13, scope: !997)
!1006 = !DILocation(line: 95, column: 18, scope: !997)
!1007 = !DILocation(line: 95, column: 12, scope: !997)
!1008 = !DILocation(line: 96, column: 12, scope: !997)
!1009 = !DILocation(line: 97, column: 3, scope: !997)
!1010 = !DILocation(line: 98, column: 15, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !993, file: !3, line: 97, column: 10)
!1012 = !DILocation(line: 98, column: 4, scope: !1011)
!1013 = !DILocation(line: 98, column: 13, scope: !1011)
!1014 = !DILocation(line: 99, column: 8, scope: !1011)
!1015 = !DILocation(line: 100, column: 12, scope: !1011)
!1016 = !DILocation(line: 0, scope: !993)
!1017 = distinct !{!1017, !989, !1018, !172}
!1018 = !DILocation(line: 102, column: 2, scope: !979)
!1019 = !DILocation(line: 103, column: 1, scope: !979)
!1020 = distinct !DISubprogram(name: "square_f256", scope: !3, file: !3, line: 504, type: !1021, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !711, !982}
!1023 = !DILocalVariable(name: "d", arg: 1, scope: !1020, file: !3, line: 504, type: !711)
!1024 = !DILocation(line: 0, scope: !1020)
!1025 = !DILocalVariable(name: "a", arg: 2, scope: !1020, file: !3, line: 504, type: !982)
!1026 = !DILocalVariable(name: "t", scope: !1020, file: !3, line: 506, type: !1027)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !1028)
!1028 = !{!50}
!1029 = !DILocation(line: 506, column: 11, scope: !1020)
!1030 = !DILocalVariable(name: "s", scope: !1020, file: !3, line: 507, type: !1031)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1152, elements: !1028)
!1032 = !DILocation(line: 507, column: 11, scope: !1020)
!1033 = !DILocation(line: 512, column: 10, scope: !1020)
!1034 = !DILocation(line: 512, column: 2, scope: !1020)
!1035 = !DILocalVariable(name: "i", scope: !1020, file: !3, line: 510, type: !19)
!1036 = !DILocation(line: 533, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 533, column: 2)
!1038 = !DILocation(line: 0, scope: !1037)
!1039 = !DILocation(line: 533, column: 16, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 533, column: 2)
!1041 = !DILocation(line: 533, column: 2, scope: !1037)
!1042 = !DILocation(line: 534, column: 10, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 533, column: 28)
!1044 = !DILocation(line: 534, column: 3, scope: !1043)
!1045 = !DILocation(line: 534, column: 8, scope: !1043)
!1046 = !DILocation(line: 535, column: 2, scope: !1043)
!1047 = !DILocation(line: 533, column: 24, scope: !1040)
!1048 = !DILocation(line: 533, column: 2, scope: !1040)
!1049 = distinct !{!1049, !1041, !1050, !172}
!1050 = !DILocation(line: 535, column: 2, scope: !1037)
!1051 = !DILocation(line: 537, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 537, column: 2)
!1053 = !DILocation(line: 0, scope: !1052)
!1054 = !DILocation(line: 537, column: 17, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 537, column: 2)
!1056 = !DILocation(line: 537, column: 2, scope: !1052)
!1057 = !DILocation(line: 540, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 537, column: 29)
!1059 = !DILocalVariable(name: "y", scope: !1058, file: !3, line: 538, type: !20)
!1060 = !DILocation(line: 0, scope: !1058)
!1061 = !DILocation(line: 541, column: 15, scope: !1058)
!1062 = !DILocation(line: 541, column: 7, scope: !1058)
!1063 = !DILocation(line: 541, column: 3, scope: !1058)
!1064 = !DILocation(line: 541, column: 12, scope: !1058)
!1065 = !DILocation(line: 542, column: 18, scope: !1058)
!1066 = !DILocation(line: 542, column: 25, scope: !1058)
!1067 = !DILocation(line: 542, column: 7, scope: !1058)
!1068 = !DILocation(line: 542, column: 3, scope: !1058)
!1069 = !DILocation(line: 542, column: 12, scope: !1058)
!1070 = !DILocation(line: 543, column: 15, scope: !1058)
!1071 = !DILocation(line: 543, column: 7, scope: !1058)
!1072 = !DILocation(line: 543, column: 3, scope: !1058)
!1073 = !DILocation(line: 543, column: 12, scope: !1058)
!1074 = !DILocation(line: 544, column: 18, scope: !1058)
!1075 = !DILocation(line: 544, column: 25, scope: !1058)
!1076 = !DILocation(line: 544, column: 7, scope: !1058)
!1077 = !DILocation(line: 544, column: 3, scope: !1058)
!1078 = !DILocation(line: 544, column: 12, scope: !1058)
!1079 = !DILocation(line: 545, column: 15, scope: !1058)
!1080 = !DILocation(line: 545, column: 7, scope: !1058)
!1081 = !DILocation(line: 545, column: 3, scope: !1058)
!1082 = !DILocation(line: 545, column: 12, scope: !1058)
!1083 = !DILocation(line: 546, column: 18, scope: !1058)
!1084 = !DILocation(line: 546, column: 25, scope: !1058)
!1085 = !DILocation(line: 546, column: 7, scope: !1058)
!1086 = !DILocation(line: 546, column: 3, scope: !1058)
!1087 = !DILocation(line: 546, column: 12, scope: !1058)
!1088 = !DILocation(line: 547, column: 15, scope: !1058)
!1089 = !DILocation(line: 547, column: 7, scope: !1058)
!1090 = !DILocation(line: 547, column: 3, scope: !1058)
!1091 = !DILocation(line: 547, column: 12, scope: !1058)
!1092 = !DILocation(line: 548, column: 18, scope: !1058)
!1093 = !DILocation(line: 548, column: 25, scope: !1058)
!1094 = !DILocation(line: 548, column: 7, scope: !1058)
!1095 = !DILocation(line: 548, column: 3, scope: !1058)
!1096 = !DILocation(line: 548, column: 12, scope: !1058)
!1097 = !DILocation(line: 549, column: 2, scope: !1058)
!1098 = !DILocation(line: 537, column: 25, scope: !1055)
!1099 = !DILocation(line: 537, column: 2, scope: !1055)
!1100 = distinct !{!1100, !1056, !1101, !172}
!1101 = !DILocation(line: 549, column: 2, scope: !1052)
!1102 = !DILocalVariable(name: "cc", scope: !1020, file: !3, line: 508, type: !20)
!1103 = !DILocation(line: 561, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 561, column: 2)
!1105 = !DILocation(line: 0, scope: !1104)
!1106 = !DILocalVariable(name: "x", scope: !1020, file: !3, line: 508, type: !20)
!1107 = !DILocation(line: 561, column: 16, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 561, column: 2)
!1109 = !DILocation(line: 561, column: 2, scope: !1104)
!1110 = !DILocation(line: 562, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 561, column: 27)
!1112 = !DILocation(line: 562, column: 12, scope: !1111)
!1113 = !DILocation(line: 563, column: 10, scope: !1111)
!1114 = !DILocation(line: 563, column: 22, scope: !1111)
!1115 = !DILocation(line: 563, column: 3, scope: !1111)
!1116 = !DILocation(line: 563, column: 8, scope: !1111)
!1117 = !DILocation(line: 564, column: 8, scope: !1111)
!1118 = !DILocation(line: 565, column: 2, scope: !1111)
!1119 = !DILocation(line: 561, column: 23, scope: !1108)
!1120 = !DILocation(line: 561, column: 2, scope: !1108)
!1121 = distinct !{!1121, !1109, !1122, !172}
!1122 = !DILocation(line: 565, column: 2, scope: !1104)
!1123 = !DILocation(line: 576, column: 7, scope: !1020)
!1124 = !DILocation(line: 577, column: 2, scope: !1020)
!1125 = !DILocation(line: 577, column: 7, scope: !1020)
!1126 = !DILocation(line: 590, column: 6, scope: !1020)
!1127 = !DILocalVariable(name: "z", scope: !1020, file: !3, line: 509, type: !12)
!1128 = !DILocation(line: 591, column: 12, scope: !1020)
!1129 = !DILocation(line: 591, column: 2, scope: !1020)
!1130 = !DILocation(line: 591, column: 7, scope: !1020)
!1131 = !DILocation(line: 592, column: 13, scope: !1020)
!1132 = !DILocation(line: 592, column: 20, scope: !1020)
!1133 = !DILocation(line: 592, column: 2, scope: !1020)
!1134 = !DILocation(line: 592, column: 7, scope: !1020)
!1135 = !DILocation(line: 593, column: 10, scope: !1020)
!1136 = !DILocation(line: 593, column: 2, scope: !1020)
!1137 = !DILocation(line: 593, column: 7, scope: !1020)
!1138 = !DILocation(line: 594, column: 13, scope: !1020)
!1139 = !DILocation(line: 594, column: 20, scope: !1020)
!1140 = !DILocation(line: 594, column: 2, scope: !1020)
!1141 = !DILocation(line: 594, column: 7, scope: !1020)
!1142 = !DILocation(line: 595, column: 10, scope: !1020)
!1143 = !DILocation(line: 595, column: 2, scope: !1020)
!1144 = !DILocation(line: 595, column: 7, scope: !1020)
!1145 = !DILocation(line: 596, column: 8, scope: !1020)
!1146 = !DILocalVariable(name: "c", scope: !1020, file: !3, line: 509, type: !12)
!1147 = !DILocation(line: 597, column: 2, scope: !1020)
!1148 = !DILocation(line: 597, column: 7, scope: !1020)
!1149 = !DILocation(line: 598, column: 12, scope: !1020)
!1150 = !DILocation(line: 598, column: 2, scope: !1020)
!1151 = !DILocation(line: 598, column: 7, scope: !1020)
!1152 = !DILocation(line: 599, column: 12, scope: !1020)
!1153 = !DILocation(line: 599, column: 2, scope: !1020)
!1154 = !DILocation(line: 599, column: 7, scope: !1020)
!1155 = !DILocation(line: 600, column: 12, scope: !1020)
!1156 = !DILocation(line: 600, column: 2, scope: !1020)
!1157 = !DILocation(line: 600, column: 7, scope: !1020)
!1158 = !DILocation(line: 601, column: 12, scope: !1020)
!1159 = !DILocation(line: 601, column: 2, scope: !1020)
!1160 = !DILocation(line: 601, column: 7, scope: !1020)
!1161 = !DILocation(line: 602, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 602, column: 2)
!1163 = !DILocation(line: 0, scope: !1162)
!1164 = !DILocation(line: 602, column: 16, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 602, column: 2)
!1166 = !DILocation(line: 602, column: 2, scope: !1162)
!1167 = !DILocation(line: 605, column: 7, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 602, column: 27)
!1169 = !DILocation(line: 605, column: 12, scope: !1168)
!1170 = !DILocalVariable(name: "w", scope: !1168, file: !3, line: 603, type: !12)
!1171 = !DILocation(line: 0, scope: !1168)
!1172 = !DILocation(line: 606, column: 12, scope: !1168)
!1173 = !DILocation(line: 606, column: 3, scope: !1168)
!1174 = !DILocation(line: 606, column: 8, scope: !1168)
!1175 = !DILocation(line: 607, column: 7, scope: !1168)
!1176 = !DILocation(line: 608, column: 2, scope: !1168)
!1177 = !DILocation(line: 602, column: 23, scope: !1165)
!1178 = !DILocation(line: 602, column: 2, scope: !1165)
!1179 = distinct !{!1179, !1166, !1180, !172}
!1180 = !DILocation(line: 608, column: 2, scope: !1162)
!1181 = !DILocation(line: 609, column: 1, scope: !1020)
!1182 = distinct !DISubprogram(name: "mul_f256", scope: !3, file: !3, line: 392, type: !1183, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !711, !982, !982}
!1185 = !DILocalVariable(name: "d", arg: 1, scope: !1182, file: !3, line: 392, type: !711)
!1186 = !DILocation(line: 0, scope: !1182)
!1187 = !DILocalVariable(name: "a", arg: 2, scope: !1182, file: !3, line: 392, type: !982)
!1188 = !DILocalVariable(name: "b", arg: 3, scope: !1182, file: !3, line: 392, type: !982)
!1189 = !DILocalVariable(name: "t", scope: !1182, file: !3, line: 394, type: !1027)
!1190 = !DILocation(line: 394, column: 11, scope: !1182)
!1191 = !DILocalVariable(name: "s", scope: !1182, file: !3, line: 395, type: !1031)
!1192 = !DILocation(line: 395, column: 11, scope: !1182)
!1193 = !DILocation(line: 400, column: 7, scope: !1182)
!1194 = !DILocation(line: 400, column: 2, scope: !1182)
!1195 = !DILocalVariable(name: "i", scope: !1182, file: !3, line: 398, type: !19)
!1196 = !DILocation(line: 421, column: 7, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 421, column: 2)
!1198 = !DILocation(line: 0, scope: !1197)
!1199 = !DILocation(line: 421, column: 16, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 421, column: 2)
!1201 = !DILocation(line: 421, column: 2, scope: !1197)
!1202 = !DILocation(line: 422, column: 10, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 421, column: 28)
!1204 = !DILocation(line: 422, column: 3, scope: !1203)
!1205 = !DILocation(line: 422, column: 8, scope: !1203)
!1206 = !DILocation(line: 423, column: 2, scope: !1203)
!1207 = !DILocation(line: 421, column: 24, scope: !1200)
!1208 = !DILocation(line: 421, column: 2, scope: !1200)
!1209 = distinct !{!1209, !1201, !1210, !172}
!1210 = !DILocation(line: 423, column: 2, scope: !1197)
!1211 = !DILocation(line: 425, column: 7, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 425, column: 2)
!1213 = !DILocation(line: 0, scope: !1212)
!1214 = !DILocation(line: 425, column: 17, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 425, column: 2)
!1216 = !DILocation(line: 425, column: 2, scope: !1212)
!1217 = !DILocation(line: 428, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 425, column: 29)
!1219 = !DILocalVariable(name: "y", scope: !1218, file: !3, line: 426, type: !20)
!1220 = !DILocation(line: 0, scope: !1218)
!1221 = !DILocation(line: 429, column: 15, scope: !1218)
!1222 = !DILocation(line: 429, column: 7, scope: !1218)
!1223 = !DILocation(line: 429, column: 3, scope: !1218)
!1224 = !DILocation(line: 429, column: 12, scope: !1218)
!1225 = !DILocation(line: 430, column: 18, scope: !1218)
!1226 = !DILocation(line: 430, column: 25, scope: !1218)
!1227 = !DILocation(line: 430, column: 7, scope: !1218)
!1228 = !DILocation(line: 430, column: 3, scope: !1218)
!1229 = !DILocation(line: 430, column: 12, scope: !1218)
!1230 = !DILocation(line: 431, column: 15, scope: !1218)
!1231 = !DILocation(line: 431, column: 7, scope: !1218)
!1232 = !DILocation(line: 431, column: 3, scope: !1218)
!1233 = !DILocation(line: 431, column: 12, scope: !1218)
!1234 = !DILocation(line: 432, column: 18, scope: !1218)
!1235 = !DILocation(line: 432, column: 25, scope: !1218)
!1236 = !DILocation(line: 432, column: 7, scope: !1218)
!1237 = !DILocation(line: 432, column: 3, scope: !1218)
!1238 = !DILocation(line: 432, column: 12, scope: !1218)
!1239 = !DILocation(line: 433, column: 15, scope: !1218)
!1240 = !DILocation(line: 433, column: 7, scope: !1218)
!1241 = !DILocation(line: 433, column: 3, scope: !1218)
!1242 = !DILocation(line: 433, column: 12, scope: !1218)
!1243 = !DILocation(line: 434, column: 18, scope: !1218)
!1244 = !DILocation(line: 434, column: 25, scope: !1218)
!1245 = !DILocation(line: 434, column: 7, scope: !1218)
!1246 = !DILocation(line: 434, column: 3, scope: !1218)
!1247 = !DILocation(line: 434, column: 12, scope: !1218)
!1248 = !DILocation(line: 435, column: 15, scope: !1218)
!1249 = !DILocation(line: 435, column: 7, scope: !1218)
!1250 = !DILocation(line: 435, column: 3, scope: !1218)
!1251 = !DILocation(line: 435, column: 12, scope: !1218)
!1252 = !DILocation(line: 436, column: 18, scope: !1218)
!1253 = !DILocation(line: 436, column: 25, scope: !1218)
!1254 = !DILocation(line: 436, column: 7, scope: !1218)
!1255 = !DILocation(line: 436, column: 3, scope: !1218)
!1256 = !DILocation(line: 436, column: 12, scope: !1218)
!1257 = !DILocation(line: 437, column: 2, scope: !1218)
!1258 = !DILocation(line: 425, column: 25, scope: !1215)
!1259 = !DILocation(line: 425, column: 2, scope: !1215)
!1260 = distinct !{!1260, !1216, !1261, !172}
!1261 = !DILocation(line: 437, column: 2, scope: !1212)
!1262 = !DILocalVariable(name: "cc", scope: !1182, file: !3, line: 396, type: !20)
!1263 = !DILocation(line: 449, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 449, column: 2)
!1265 = !DILocation(line: 0, scope: !1264)
!1266 = !DILocalVariable(name: "x", scope: !1182, file: !3, line: 396, type: !20)
!1267 = !DILocation(line: 449, column: 16, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 449, column: 2)
!1269 = !DILocation(line: 449, column: 2, scope: !1264)
!1270 = !DILocation(line: 450, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 449, column: 27)
!1272 = !DILocation(line: 450, column: 12, scope: !1271)
!1273 = !DILocation(line: 451, column: 10, scope: !1271)
!1274 = !DILocation(line: 451, column: 22, scope: !1271)
!1275 = !DILocation(line: 451, column: 3, scope: !1271)
!1276 = !DILocation(line: 451, column: 8, scope: !1271)
!1277 = !DILocation(line: 452, column: 8, scope: !1271)
!1278 = !DILocation(line: 453, column: 2, scope: !1271)
!1279 = !DILocation(line: 449, column: 23, scope: !1268)
!1280 = !DILocation(line: 449, column: 2, scope: !1268)
!1281 = distinct !{!1281, !1269, !1282, !172}
!1282 = !DILocation(line: 453, column: 2, scope: !1264)
!1283 = !DILocation(line: 464, column: 7, scope: !1182)
!1284 = !DILocation(line: 465, column: 2, scope: !1182)
!1285 = !DILocation(line: 465, column: 7, scope: !1182)
!1286 = !DILocation(line: 478, column: 6, scope: !1182)
!1287 = !DILocalVariable(name: "z", scope: !1182, file: !3, line: 397, type: !12)
!1288 = !DILocation(line: 479, column: 12, scope: !1182)
!1289 = !DILocation(line: 479, column: 2, scope: !1182)
!1290 = !DILocation(line: 479, column: 7, scope: !1182)
!1291 = !DILocation(line: 480, column: 13, scope: !1182)
!1292 = !DILocation(line: 480, column: 20, scope: !1182)
!1293 = !DILocation(line: 480, column: 2, scope: !1182)
!1294 = !DILocation(line: 480, column: 7, scope: !1182)
!1295 = !DILocation(line: 481, column: 10, scope: !1182)
!1296 = !DILocation(line: 481, column: 2, scope: !1182)
!1297 = !DILocation(line: 481, column: 7, scope: !1182)
!1298 = !DILocation(line: 482, column: 13, scope: !1182)
!1299 = !DILocation(line: 482, column: 20, scope: !1182)
!1300 = !DILocation(line: 482, column: 2, scope: !1182)
!1301 = !DILocation(line: 482, column: 7, scope: !1182)
!1302 = !DILocation(line: 483, column: 10, scope: !1182)
!1303 = !DILocation(line: 483, column: 2, scope: !1182)
!1304 = !DILocation(line: 483, column: 7, scope: !1182)
!1305 = !DILocation(line: 484, column: 8, scope: !1182)
!1306 = !DILocalVariable(name: "c", scope: !1182, file: !3, line: 397, type: !12)
!1307 = !DILocation(line: 485, column: 2, scope: !1182)
!1308 = !DILocation(line: 485, column: 7, scope: !1182)
!1309 = !DILocation(line: 486, column: 12, scope: !1182)
!1310 = !DILocation(line: 486, column: 2, scope: !1182)
!1311 = !DILocation(line: 486, column: 7, scope: !1182)
!1312 = !DILocation(line: 487, column: 12, scope: !1182)
!1313 = !DILocation(line: 487, column: 2, scope: !1182)
!1314 = !DILocation(line: 487, column: 7, scope: !1182)
!1315 = !DILocation(line: 488, column: 12, scope: !1182)
!1316 = !DILocation(line: 488, column: 2, scope: !1182)
!1317 = !DILocation(line: 488, column: 7, scope: !1182)
!1318 = !DILocation(line: 489, column: 12, scope: !1182)
!1319 = !DILocation(line: 489, column: 2, scope: !1182)
!1320 = !DILocation(line: 489, column: 7, scope: !1182)
!1321 = !DILocation(line: 490, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 490, column: 2)
!1323 = !DILocation(line: 0, scope: !1322)
!1324 = !DILocation(line: 490, column: 16, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 490, column: 2)
!1326 = !DILocation(line: 490, column: 2, scope: !1322)
!1327 = !DILocation(line: 493, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 490, column: 27)
!1329 = !DILocation(line: 493, column: 12, scope: !1328)
!1330 = !DILocalVariable(name: "w", scope: !1328, file: !3, line: 491, type: !12)
!1331 = !DILocation(line: 0, scope: !1328)
!1332 = !DILocation(line: 494, column: 12, scope: !1328)
!1333 = !DILocation(line: 494, column: 3, scope: !1328)
!1334 = !DILocation(line: 494, column: 8, scope: !1328)
!1335 = !DILocation(line: 495, column: 7, scope: !1328)
!1336 = !DILocation(line: 496, column: 2, scope: !1328)
!1337 = !DILocation(line: 490, column: 23, scope: !1325)
!1338 = !DILocation(line: 490, column: 2, scope: !1325)
!1339 = distinct !{!1339, !1326, !1340, !172}
!1340 = !DILocation(line: 496, column: 2, scope: !1322)
!1341 = !DILocation(line: 497, column: 1, scope: !1182)
!1342 = distinct !DISubprogram(name: "mul9", scope: !3, file: !3, line: 111, type: !1183, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1343 = !DILocalVariable(name: "d", arg: 1, scope: !1342, file: !3, line: 111, type: !711)
!1344 = !DILocation(line: 0, scope: !1342)
!1345 = !DILocalVariable(name: "a", arg: 2, scope: !1342, file: !3, line: 111, type: !982)
!1346 = !DILocalVariable(name: "b", arg: 3, scope: !1342, file: !3, line: 111, type: !982)
!1347 = !DILocalVariable(name: "t", scope: !1342, file: !3, line: 124, type: !1348)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1088, elements: !1349)
!1349 = !{!1350}
!1350 = !DISubrange(count: 17)
!1351 = !DILocation(line: 124, column: 11, scope: !1342)
!1352 = !DILocation(line: 128, column: 10, scope: !1342)
!1353 = !DILocation(line: 128, column: 2, scope: !1342)
!1354 = !DILocation(line: 128, column: 8, scope: !1342)
!1355 = !DILocation(line: 129, column: 10, scope: !1342)
!1356 = !DILocation(line: 130, column: 5, scope: !1342)
!1357 = !DILocation(line: 130, column: 3, scope: !1342)
!1358 = !DILocation(line: 129, column: 2, scope: !1342)
!1359 = !DILocation(line: 129, column: 8, scope: !1342)
!1360 = !DILocation(line: 131, column: 10, scope: !1342)
!1361 = !DILocation(line: 132, column: 5, scope: !1342)
!1362 = !DILocation(line: 132, column: 3, scope: !1342)
!1363 = !DILocation(line: 133, column: 5, scope: !1342)
!1364 = !DILocation(line: 133, column: 3, scope: !1342)
!1365 = !DILocation(line: 131, column: 2, scope: !1342)
!1366 = !DILocation(line: 131, column: 8, scope: !1342)
!1367 = !DILocation(line: 134, column: 10, scope: !1342)
!1368 = !DILocation(line: 135, column: 5, scope: !1342)
!1369 = !DILocation(line: 135, column: 3, scope: !1342)
!1370 = !DILocation(line: 136, column: 5, scope: !1342)
!1371 = !DILocation(line: 136, column: 3, scope: !1342)
!1372 = !DILocation(line: 137, column: 5, scope: !1342)
!1373 = !DILocation(line: 137, column: 3, scope: !1342)
!1374 = !DILocation(line: 134, column: 2, scope: !1342)
!1375 = !DILocation(line: 134, column: 8, scope: !1342)
!1376 = !DILocation(line: 138, column: 10, scope: !1342)
!1377 = !DILocation(line: 139, column: 5, scope: !1342)
!1378 = !DILocation(line: 139, column: 3, scope: !1342)
!1379 = !DILocation(line: 140, column: 5, scope: !1342)
!1380 = !DILocation(line: 140, column: 3, scope: !1342)
!1381 = !DILocation(line: 141, column: 5, scope: !1342)
!1382 = !DILocation(line: 141, column: 3, scope: !1342)
!1383 = !DILocation(line: 142, column: 5, scope: !1342)
!1384 = !DILocation(line: 142, column: 3, scope: !1342)
!1385 = !DILocation(line: 138, column: 2, scope: !1342)
!1386 = !DILocation(line: 138, column: 8, scope: !1342)
!1387 = !DILocation(line: 143, column: 10, scope: !1342)
!1388 = !DILocation(line: 144, column: 5, scope: !1342)
!1389 = !DILocation(line: 144, column: 3, scope: !1342)
!1390 = !DILocation(line: 145, column: 5, scope: !1342)
!1391 = !DILocation(line: 145, column: 3, scope: !1342)
!1392 = !DILocation(line: 146, column: 5, scope: !1342)
!1393 = !DILocation(line: 146, column: 3, scope: !1342)
!1394 = !DILocation(line: 147, column: 5, scope: !1342)
!1395 = !DILocation(line: 147, column: 3, scope: !1342)
!1396 = !DILocation(line: 148, column: 5, scope: !1342)
!1397 = !DILocation(line: 148, column: 3, scope: !1342)
!1398 = !DILocation(line: 143, column: 2, scope: !1342)
!1399 = !DILocation(line: 143, column: 8, scope: !1342)
!1400 = !DILocation(line: 149, column: 10, scope: !1342)
!1401 = !DILocation(line: 150, column: 5, scope: !1342)
!1402 = !DILocation(line: 150, column: 3, scope: !1342)
!1403 = !DILocation(line: 151, column: 5, scope: !1342)
!1404 = !DILocation(line: 151, column: 3, scope: !1342)
!1405 = !DILocation(line: 152, column: 5, scope: !1342)
!1406 = !DILocation(line: 152, column: 3, scope: !1342)
!1407 = !DILocation(line: 153, column: 5, scope: !1342)
!1408 = !DILocation(line: 153, column: 3, scope: !1342)
!1409 = !DILocation(line: 154, column: 5, scope: !1342)
!1410 = !DILocation(line: 154, column: 3, scope: !1342)
!1411 = !DILocation(line: 155, column: 5, scope: !1342)
!1412 = !DILocation(line: 155, column: 3, scope: !1342)
!1413 = !DILocation(line: 149, column: 2, scope: !1342)
!1414 = !DILocation(line: 149, column: 8, scope: !1342)
!1415 = !DILocation(line: 156, column: 10, scope: !1342)
!1416 = !DILocation(line: 157, column: 5, scope: !1342)
!1417 = !DILocation(line: 157, column: 3, scope: !1342)
!1418 = !DILocation(line: 158, column: 5, scope: !1342)
!1419 = !DILocation(line: 158, column: 3, scope: !1342)
!1420 = !DILocation(line: 159, column: 5, scope: !1342)
!1421 = !DILocation(line: 159, column: 3, scope: !1342)
!1422 = !DILocation(line: 160, column: 5, scope: !1342)
!1423 = !DILocation(line: 160, column: 3, scope: !1342)
!1424 = !DILocation(line: 161, column: 5, scope: !1342)
!1425 = !DILocation(line: 161, column: 3, scope: !1342)
!1426 = !DILocation(line: 162, column: 5, scope: !1342)
!1427 = !DILocation(line: 162, column: 3, scope: !1342)
!1428 = !DILocation(line: 163, column: 5, scope: !1342)
!1429 = !DILocation(line: 163, column: 3, scope: !1342)
!1430 = !DILocation(line: 156, column: 2, scope: !1342)
!1431 = !DILocation(line: 156, column: 8, scope: !1342)
!1432 = !DILocation(line: 164, column: 10, scope: !1342)
!1433 = !DILocation(line: 165, column: 5, scope: !1342)
!1434 = !DILocation(line: 165, column: 3, scope: !1342)
!1435 = !DILocation(line: 166, column: 5, scope: !1342)
!1436 = !DILocation(line: 166, column: 3, scope: !1342)
!1437 = !DILocation(line: 167, column: 5, scope: !1342)
!1438 = !DILocation(line: 167, column: 3, scope: !1342)
!1439 = !DILocation(line: 168, column: 5, scope: !1342)
!1440 = !DILocation(line: 168, column: 3, scope: !1342)
!1441 = !DILocation(line: 169, column: 5, scope: !1342)
!1442 = !DILocation(line: 169, column: 3, scope: !1342)
!1443 = !DILocation(line: 170, column: 5, scope: !1342)
!1444 = !DILocation(line: 170, column: 3, scope: !1342)
!1445 = !DILocation(line: 171, column: 5, scope: !1342)
!1446 = !DILocation(line: 171, column: 3, scope: !1342)
!1447 = !DILocation(line: 172, column: 5, scope: !1342)
!1448 = !DILocation(line: 172, column: 3, scope: !1342)
!1449 = !DILocation(line: 164, column: 2, scope: !1342)
!1450 = !DILocation(line: 164, column: 8, scope: !1342)
!1451 = !DILocation(line: 173, column: 10, scope: !1342)
!1452 = !DILocation(line: 174, column: 5, scope: !1342)
!1453 = !DILocation(line: 174, column: 3, scope: !1342)
!1454 = !DILocation(line: 175, column: 5, scope: !1342)
!1455 = !DILocation(line: 175, column: 3, scope: !1342)
!1456 = !DILocation(line: 176, column: 5, scope: !1342)
!1457 = !DILocation(line: 176, column: 3, scope: !1342)
!1458 = !DILocation(line: 177, column: 5, scope: !1342)
!1459 = !DILocation(line: 177, column: 3, scope: !1342)
!1460 = !DILocation(line: 178, column: 5, scope: !1342)
!1461 = !DILocation(line: 178, column: 3, scope: !1342)
!1462 = !DILocation(line: 179, column: 5, scope: !1342)
!1463 = !DILocation(line: 179, column: 3, scope: !1342)
!1464 = !DILocation(line: 180, column: 5, scope: !1342)
!1465 = !DILocation(line: 180, column: 3, scope: !1342)
!1466 = !DILocation(line: 173, column: 2, scope: !1342)
!1467 = !DILocation(line: 173, column: 8, scope: !1342)
!1468 = !DILocation(line: 181, column: 10, scope: !1342)
!1469 = !DILocation(line: 182, column: 5, scope: !1342)
!1470 = !DILocation(line: 182, column: 3, scope: !1342)
!1471 = !DILocation(line: 183, column: 5, scope: !1342)
!1472 = !DILocation(line: 183, column: 3, scope: !1342)
!1473 = !DILocation(line: 184, column: 5, scope: !1342)
!1474 = !DILocation(line: 184, column: 3, scope: !1342)
!1475 = !DILocation(line: 185, column: 5, scope: !1342)
!1476 = !DILocation(line: 185, column: 3, scope: !1342)
!1477 = !DILocation(line: 186, column: 5, scope: !1342)
!1478 = !DILocation(line: 186, column: 3, scope: !1342)
!1479 = !DILocation(line: 187, column: 5, scope: !1342)
!1480 = !DILocation(line: 187, column: 3, scope: !1342)
!1481 = !DILocation(line: 181, column: 2, scope: !1342)
!1482 = !DILocation(line: 181, column: 8, scope: !1342)
!1483 = !DILocation(line: 188, column: 10, scope: !1342)
!1484 = !DILocation(line: 189, column: 5, scope: !1342)
!1485 = !DILocation(line: 189, column: 3, scope: !1342)
!1486 = !DILocation(line: 190, column: 5, scope: !1342)
!1487 = !DILocation(line: 190, column: 3, scope: !1342)
!1488 = !DILocation(line: 191, column: 5, scope: !1342)
!1489 = !DILocation(line: 191, column: 3, scope: !1342)
!1490 = !DILocation(line: 192, column: 5, scope: !1342)
!1491 = !DILocation(line: 192, column: 3, scope: !1342)
!1492 = !DILocation(line: 193, column: 5, scope: !1342)
!1493 = !DILocation(line: 193, column: 3, scope: !1342)
!1494 = !DILocation(line: 188, column: 2, scope: !1342)
!1495 = !DILocation(line: 188, column: 8, scope: !1342)
!1496 = !DILocation(line: 194, column: 10, scope: !1342)
!1497 = !DILocation(line: 195, column: 5, scope: !1342)
!1498 = !DILocation(line: 195, column: 3, scope: !1342)
!1499 = !DILocation(line: 196, column: 5, scope: !1342)
!1500 = !DILocation(line: 196, column: 3, scope: !1342)
!1501 = !DILocation(line: 197, column: 5, scope: !1342)
!1502 = !DILocation(line: 197, column: 3, scope: !1342)
!1503 = !DILocation(line: 198, column: 5, scope: !1342)
!1504 = !DILocation(line: 198, column: 3, scope: !1342)
!1505 = !DILocation(line: 194, column: 2, scope: !1342)
!1506 = !DILocation(line: 194, column: 8, scope: !1342)
!1507 = !DILocation(line: 199, column: 10, scope: !1342)
!1508 = !DILocation(line: 200, column: 5, scope: !1342)
!1509 = !DILocation(line: 200, column: 3, scope: !1342)
!1510 = !DILocation(line: 201, column: 5, scope: !1342)
!1511 = !DILocation(line: 201, column: 3, scope: !1342)
!1512 = !DILocation(line: 202, column: 5, scope: !1342)
!1513 = !DILocation(line: 202, column: 3, scope: !1342)
!1514 = !DILocation(line: 199, column: 2, scope: !1342)
!1515 = !DILocation(line: 199, column: 8, scope: !1342)
!1516 = !DILocation(line: 203, column: 10, scope: !1342)
!1517 = !DILocation(line: 204, column: 5, scope: !1342)
!1518 = !DILocation(line: 204, column: 3, scope: !1342)
!1519 = !DILocation(line: 205, column: 5, scope: !1342)
!1520 = !DILocation(line: 205, column: 3, scope: !1342)
!1521 = !DILocation(line: 203, column: 2, scope: !1342)
!1522 = !DILocation(line: 203, column: 8, scope: !1342)
!1523 = !DILocation(line: 206, column: 10, scope: !1342)
!1524 = !DILocation(line: 207, column: 5, scope: !1342)
!1525 = !DILocation(line: 207, column: 3, scope: !1342)
!1526 = !DILocation(line: 206, column: 2, scope: !1342)
!1527 = !DILocation(line: 206, column: 8, scope: !1342)
!1528 = !DILocation(line: 208, column: 10, scope: !1342)
!1529 = !DILocation(line: 208, column: 2, scope: !1342)
!1530 = !DILocation(line: 208, column: 8, scope: !1342)
!1531 = !DILocalVariable(name: "cc", scope: !1342, file: !3, line: 125, type: !20)
!1532 = !DILocalVariable(name: "i", scope: !1342, file: !3, line: 126, type: !19)
!1533 = !DILocation(line: 214, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 214, column: 2)
!1535 = !DILocation(line: 0, scope: !1534)
!1536 = !DILocation(line: 214, column: 16, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 214, column: 2)
!1538 = !DILocation(line: 214, column: 2, scope: !1534)
!1539 = !DILocation(line: 217, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 214, column: 28)
!1541 = !DILocation(line: 217, column: 12, scope: !1540)
!1542 = !DILocalVariable(name: "w", scope: !1540, file: !3, line: 215, type: !20)
!1543 = !DILocation(line: 0, scope: !1540)
!1544 = !DILocation(line: 218, column: 10, scope: !1540)
!1545 = !DILocation(line: 218, column: 22, scope: !1540)
!1546 = !DILocation(line: 218, column: 3, scope: !1540)
!1547 = !DILocation(line: 218, column: 8, scope: !1540)
!1548 = !DILocation(line: 219, column: 10, scope: !1540)
!1549 = !DILocation(line: 220, column: 2, scope: !1540)
!1550 = !DILocation(line: 214, column: 24, scope: !1537)
!1551 = !DILocation(line: 214, column: 2, scope: !1537)
!1552 = distinct !{!1552, !1538, !1553, !172}
!1553 = !DILocation(line: 220, column: 2, scope: !1534)
!1554 = !DILocation(line: 221, column: 10, scope: !1342)
!1555 = !DILocation(line: 221, column: 2, scope: !1342)
!1556 = !DILocation(line: 221, column: 8, scope: !1342)
!1557 = !DILocation(line: 222, column: 1, scope: !1342)
!1558 = distinct !DISubprogram(name: "square9", scope: !3, file: !3, line: 229, type: !1021, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1559 = !DILocalVariable(name: "d", arg: 1, scope: !1558, file: !3, line: 229, type: !711)
!1560 = !DILocation(line: 0, scope: !1558)
!1561 = !DILocalVariable(name: "a", arg: 2, scope: !1558, file: !3, line: 229, type: !982)
!1562 = !DILocalVariable(name: "t", scope: !1558, file: !3, line: 231, type: !1348)
!1563 = !DILocation(line: 231, column: 11, scope: !1558)
!1564 = !DILocation(line: 235, column: 10, scope: !1558)
!1565 = !DILocation(line: 235, column: 2, scope: !1558)
!1566 = !DILocation(line: 235, column: 8, scope: !1558)
!1567 = !DILocation(line: 236, column: 12, scope: !1558)
!1568 = !DILocation(line: 236, column: 31, scope: !1558)
!1569 = !DILocation(line: 236, column: 2, scope: !1558)
!1570 = !DILocation(line: 236, column: 8, scope: !1558)
!1571 = !DILocation(line: 237, column: 10, scope: !1558)
!1572 = !DILocation(line: 238, column: 7, scope: !1558)
!1573 = !DILocation(line: 238, column: 26, scope: !1558)
!1574 = !DILocation(line: 238, column: 3, scope: !1558)
!1575 = !DILocation(line: 237, column: 2, scope: !1558)
!1576 = !DILocation(line: 237, column: 8, scope: !1558)
!1577 = !DILocation(line: 239, column: 12, scope: !1558)
!1578 = !DILocation(line: 240, column: 5, scope: !1558)
!1579 = !DILocation(line: 240, column: 3, scope: !1558)
!1580 = !DILocation(line: 240, column: 24, scope: !1558)
!1581 = !DILocation(line: 239, column: 2, scope: !1558)
!1582 = !DILocation(line: 239, column: 8, scope: !1558)
!1583 = !DILocation(line: 241, column: 10, scope: !1558)
!1584 = !DILocation(line: 242, column: 7, scope: !1558)
!1585 = !DILocation(line: 243, column: 5, scope: !1558)
!1586 = !DILocation(line: 243, column: 3, scope: !1558)
!1587 = !DILocation(line: 243, column: 24, scope: !1558)
!1588 = !DILocation(line: 242, column: 3, scope: !1558)
!1589 = !DILocation(line: 241, column: 2, scope: !1558)
!1590 = !DILocation(line: 241, column: 8, scope: !1558)
!1591 = !DILocation(line: 244, column: 12, scope: !1558)
!1592 = !DILocation(line: 245, column: 5, scope: !1558)
!1593 = !DILocation(line: 245, column: 3, scope: !1558)
!1594 = !DILocation(line: 246, column: 5, scope: !1558)
!1595 = !DILocation(line: 246, column: 3, scope: !1558)
!1596 = !DILocation(line: 246, column: 24, scope: !1558)
!1597 = !DILocation(line: 244, column: 2, scope: !1558)
!1598 = !DILocation(line: 244, column: 8, scope: !1558)
!1599 = !DILocation(line: 247, column: 10, scope: !1558)
!1600 = !DILocation(line: 248, column: 7, scope: !1558)
!1601 = !DILocation(line: 249, column: 5, scope: !1558)
!1602 = !DILocation(line: 249, column: 3, scope: !1558)
!1603 = !DILocation(line: 250, column: 5, scope: !1558)
!1604 = !DILocation(line: 250, column: 3, scope: !1558)
!1605 = !DILocation(line: 250, column: 24, scope: !1558)
!1606 = !DILocation(line: 248, column: 3, scope: !1558)
!1607 = !DILocation(line: 247, column: 2, scope: !1558)
!1608 = !DILocation(line: 247, column: 8, scope: !1558)
!1609 = !DILocation(line: 251, column: 12, scope: !1558)
!1610 = !DILocation(line: 252, column: 5, scope: !1558)
!1611 = !DILocation(line: 252, column: 3, scope: !1558)
!1612 = !DILocation(line: 253, column: 5, scope: !1558)
!1613 = !DILocation(line: 253, column: 3, scope: !1558)
!1614 = !DILocation(line: 254, column: 5, scope: !1558)
!1615 = !DILocation(line: 254, column: 3, scope: !1558)
!1616 = !DILocation(line: 254, column: 24, scope: !1558)
!1617 = !DILocation(line: 251, column: 2, scope: !1558)
!1618 = !DILocation(line: 251, column: 8, scope: !1558)
!1619 = !DILocation(line: 255, column: 10, scope: !1558)
!1620 = !DILocation(line: 256, column: 7, scope: !1558)
!1621 = !DILocation(line: 257, column: 5, scope: !1558)
!1622 = !DILocation(line: 257, column: 3, scope: !1558)
!1623 = !DILocation(line: 258, column: 5, scope: !1558)
!1624 = !DILocation(line: 258, column: 3, scope: !1558)
!1625 = !DILocation(line: 259, column: 5, scope: !1558)
!1626 = !DILocation(line: 259, column: 3, scope: !1558)
!1627 = !DILocation(line: 259, column: 24, scope: !1558)
!1628 = !DILocation(line: 256, column: 3, scope: !1558)
!1629 = !DILocation(line: 255, column: 2, scope: !1558)
!1630 = !DILocation(line: 255, column: 8, scope: !1558)
!1631 = !DILocation(line: 260, column: 12, scope: !1558)
!1632 = !DILocation(line: 261, column: 5, scope: !1558)
!1633 = !DILocation(line: 261, column: 3, scope: !1558)
!1634 = !DILocation(line: 262, column: 5, scope: !1558)
!1635 = !DILocation(line: 262, column: 3, scope: !1558)
!1636 = !DILocation(line: 263, column: 5, scope: !1558)
!1637 = !DILocation(line: 263, column: 3, scope: !1558)
!1638 = !DILocation(line: 263, column: 24, scope: !1558)
!1639 = !DILocation(line: 260, column: 2, scope: !1558)
!1640 = !DILocation(line: 260, column: 8, scope: !1558)
!1641 = !DILocation(line: 264, column: 10, scope: !1558)
!1642 = !DILocation(line: 265, column: 7, scope: !1558)
!1643 = !DILocation(line: 266, column: 5, scope: !1558)
!1644 = !DILocation(line: 266, column: 3, scope: !1558)
!1645 = !DILocation(line: 267, column: 5, scope: !1558)
!1646 = !DILocation(line: 267, column: 3, scope: !1558)
!1647 = !DILocation(line: 267, column: 24, scope: !1558)
!1648 = !DILocation(line: 265, column: 3, scope: !1558)
!1649 = !DILocation(line: 264, column: 2, scope: !1558)
!1650 = !DILocation(line: 264, column: 8, scope: !1558)
!1651 = !DILocation(line: 268, column: 12, scope: !1558)
!1652 = !DILocation(line: 269, column: 5, scope: !1558)
!1653 = !DILocation(line: 269, column: 3, scope: !1558)
!1654 = !DILocation(line: 270, column: 5, scope: !1558)
!1655 = !DILocation(line: 270, column: 3, scope: !1558)
!1656 = !DILocation(line: 270, column: 24, scope: !1558)
!1657 = !DILocation(line: 268, column: 2, scope: !1558)
!1658 = !DILocation(line: 268, column: 8, scope: !1558)
!1659 = !DILocation(line: 271, column: 10, scope: !1558)
!1660 = !DILocation(line: 272, column: 7, scope: !1558)
!1661 = !DILocation(line: 273, column: 5, scope: !1558)
!1662 = !DILocation(line: 273, column: 3, scope: !1558)
!1663 = !DILocation(line: 273, column: 24, scope: !1558)
!1664 = !DILocation(line: 272, column: 3, scope: !1558)
!1665 = !DILocation(line: 271, column: 2, scope: !1558)
!1666 = !DILocation(line: 271, column: 8, scope: !1558)
!1667 = !DILocation(line: 274, column: 12, scope: !1558)
!1668 = !DILocation(line: 275, column: 5, scope: !1558)
!1669 = !DILocation(line: 275, column: 3, scope: !1558)
!1670 = !DILocation(line: 275, column: 24, scope: !1558)
!1671 = !DILocation(line: 274, column: 2, scope: !1558)
!1672 = !DILocation(line: 274, column: 8, scope: !1558)
!1673 = !DILocation(line: 276, column: 10, scope: !1558)
!1674 = !DILocation(line: 277, column: 7, scope: !1558)
!1675 = !DILocation(line: 277, column: 26, scope: !1558)
!1676 = !DILocation(line: 277, column: 3, scope: !1558)
!1677 = !DILocation(line: 276, column: 2, scope: !1558)
!1678 = !DILocation(line: 276, column: 8, scope: !1558)
!1679 = !DILocation(line: 278, column: 12, scope: !1558)
!1680 = !DILocation(line: 278, column: 31, scope: !1558)
!1681 = !DILocation(line: 278, column: 2, scope: !1558)
!1682 = !DILocation(line: 278, column: 8, scope: !1558)
!1683 = !DILocation(line: 279, column: 10, scope: !1558)
!1684 = !DILocation(line: 279, column: 2, scope: !1558)
!1685 = !DILocation(line: 279, column: 8, scope: !1558)
!1686 = !DILocalVariable(name: "cc", scope: !1558, file: !3, line: 232, type: !20)
!1687 = !DILocalVariable(name: "i", scope: !1558, file: !3, line: 233, type: !19)
!1688 = !DILocation(line: 285, column: 7, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 285, column: 2)
!1690 = !DILocation(line: 0, scope: !1689)
!1691 = !DILocation(line: 285, column: 16, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 285, column: 2)
!1693 = !DILocation(line: 285, column: 2, scope: !1689)
!1694 = !DILocation(line: 288, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 285, column: 28)
!1696 = !DILocation(line: 288, column: 12, scope: !1695)
!1697 = !DILocalVariable(name: "w", scope: !1695, file: !3, line: 286, type: !20)
!1698 = !DILocation(line: 0, scope: !1695)
!1699 = !DILocation(line: 289, column: 10, scope: !1695)
!1700 = !DILocation(line: 289, column: 22, scope: !1695)
!1701 = !DILocation(line: 289, column: 3, scope: !1695)
!1702 = !DILocation(line: 289, column: 8, scope: !1695)
!1703 = !DILocation(line: 290, column: 10, scope: !1695)
!1704 = !DILocation(line: 291, column: 2, scope: !1695)
!1705 = !DILocation(line: 285, column: 24, scope: !1692)
!1706 = !DILocation(line: 285, column: 2, scope: !1692)
!1707 = distinct !{!1707, !1693, !1708, !172}
!1708 = !DILocation(line: 291, column: 2, scope: !1689)
!1709 = !DILocation(line: 292, column: 10, scope: !1558)
!1710 = !DILocation(line: 292, column: 2, scope: !1558)
!1711 = !DILocation(line: 292, column: 8, scope: !1558)
!1712 = !DILocation(line: 293, column: 1, scope: !1558)
!1713 = distinct !DISubprogram(name: "add_f256", scope: !3, file: !3, line: 318, type: !1183, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1714 = !DILocalVariable(name: "d", arg: 1, scope: !1713, file: !3, line: 318, type: !711)
!1715 = !DILocation(line: 0, scope: !1713)
!1716 = !DILocalVariable(name: "a", arg: 2, scope: !1713, file: !3, line: 318, type: !982)
!1717 = !DILocalVariable(name: "b", arg: 3, scope: !1713, file: !3, line: 318, type: !982)
!1718 = !DILocalVariable(name: "cc", scope: !1713, file: !3, line: 320, type: !12)
!1719 = !DILocalVariable(name: "i", scope: !1713, file: !3, line: 321, type: !19)
!1720 = !DILocation(line: 324, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 324, column: 2)
!1722 = !DILocation(line: 0, scope: !1721)
!1723 = !DILocalVariable(name: "w", scope: !1713, file: !3, line: 320, type: !12)
!1724 = !DILocation(line: 324, column: 16, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 324, column: 2)
!1726 = !DILocation(line: 324, column: 2, scope: !1721)
!1727 = !DILocation(line: 325, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 324, column: 27)
!1729 = !DILocation(line: 325, column: 14, scope: !1728)
!1730 = !DILocation(line: 325, column: 12, scope: !1728)
!1731 = !DILocation(line: 325, column: 19, scope: !1728)
!1732 = !DILocation(line: 326, column: 12, scope: !1728)
!1733 = !DILocation(line: 326, column: 3, scope: !1728)
!1734 = !DILocation(line: 326, column: 8, scope: !1728)
!1735 = !DILocation(line: 327, column: 10, scope: !1728)
!1736 = !DILocation(line: 328, column: 2, scope: !1728)
!1737 = !DILocation(line: 324, column: 23, scope: !1725)
!1738 = !DILocation(line: 324, column: 2, scope: !1725)
!1739 = distinct !{!1739, !1726, !1740, !172}
!1740 = !DILocation(line: 328, column: 2, scope: !1721)
!1741 = !DILocation(line: 329, column: 4, scope: !1713)
!1742 = !DILocation(line: 330, column: 2, scope: !1713)
!1743 = !DILocation(line: 330, column: 7, scope: !1713)
!1744 = !DILocation(line: 331, column: 12, scope: !1713)
!1745 = !DILocation(line: 331, column: 2, scope: !1713)
!1746 = !DILocation(line: 331, column: 7, scope: !1713)
!1747 = !DILocation(line: 332, column: 12, scope: !1713)
!1748 = !DILocation(line: 332, column: 2, scope: !1713)
!1749 = !DILocation(line: 332, column: 7, scope: !1713)
!1750 = !DILocation(line: 333, column: 12, scope: !1713)
!1751 = !DILocation(line: 333, column: 2, scope: !1713)
!1752 = !DILocation(line: 333, column: 7, scope: !1713)
!1753 = !DILocation(line: 335, column: 7, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 335, column: 2)
!1755 = !DILocation(line: 0, scope: !1754)
!1756 = !DILocation(line: 335, column: 16, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 335, column: 2)
!1758 = !DILocation(line: 335, column: 2, scope: !1754)
!1759 = !DILocation(line: 336, column: 7, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 335, column: 27)
!1761 = !DILocation(line: 336, column: 12, scope: !1760)
!1762 = !DILocation(line: 337, column: 12, scope: !1760)
!1763 = !DILocation(line: 337, column: 3, scope: !1760)
!1764 = !DILocation(line: 337, column: 8, scope: !1760)
!1765 = !DILocation(line: 338, column: 8, scope: !1760)
!1766 = !DILocation(line: 339, column: 2, scope: !1760)
!1767 = !DILocation(line: 335, column: 23, scope: !1757)
!1768 = !DILocation(line: 335, column: 2, scope: !1757)
!1769 = distinct !{!1769, !1758, !1770, !172}
!1770 = !DILocation(line: 339, column: 2, scope: !1754)
!1771 = !DILocation(line: 340, column: 1, scope: !1713)
!1772 = distinct !DISubprogram(name: "sub_f256", scope: !3, file: !3, line: 347, type: !1183, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1773 = !DILocalVariable(name: "d", arg: 1, scope: !1772, file: !3, line: 347, type: !711)
!1774 = !DILocation(line: 0, scope: !1772)
!1775 = !DILocalVariable(name: "a", arg: 2, scope: !1772, file: !3, line: 347, type: !982)
!1776 = !DILocalVariable(name: "b", arg: 3, scope: !1772, file: !3, line: 347, type: !982)
!1777 = !DILocation(line: 356, column: 6, scope: !1772)
!1778 = !DILocation(line: 356, column: 13, scope: !1772)
!1779 = !DILocation(line: 356, column: 11, scope: !1772)
!1780 = !DILocation(line: 356, column: 18, scope: !1772)
!1781 = !DILocalVariable(name: "w", scope: !1772, file: !3, line: 349, type: !12)
!1782 = !DILocation(line: 357, column: 11, scope: !1772)
!1783 = !DILocation(line: 357, column: 2, scope: !1772)
!1784 = !DILocation(line: 357, column: 7, scope: !1772)
!1785 = !DILocation(line: 358, column: 6, scope: !1772)
!1786 = !DILocation(line: 358, column: 13, scope: !1772)
!1787 = !DILocation(line: 358, column: 11, scope: !1772)
!1788 = !DILocation(line: 358, column: 20, scope: !1772)
!1789 = !DILocation(line: 358, column: 18, scope: !1772)
!1790 = !DILocation(line: 359, column: 11, scope: !1772)
!1791 = !DILocation(line: 359, column: 2, scope: !1772)
!1792 = !DILocation(line: 359, column: 7, scope: !1772)
!1793 = !DILocation(line: 360, column: 6, scope: !1772)
!1794 = !DILocation(line: 360, column: 13, scope: !1772)
!1795 = !DILocation(line: 360, column: 11, scope: !1772)
!1796 = !DILocation(line: 360, column: 20, scope: !1772)
!1797 = !DILocation(line: 360, column: 18, scope: !1772)
!1798 = !DILocation(line: 361, column: 11, scope: !1772)
!1799 = !DILocation(line: 361, column: 2, scope: !1772)
!1800 = !DILocation(line: 361, column: 7, scope: !1772)
!1801 = !DILocation(line: 362, column: 6, scope: !1772)
!1802 = !DILocation(line: 362, column: 13, scope: !1772)
!1803 = !DILocation(line: 362, column: 11, scope: !1772)
!1804 = !DILocation(line: 362, column: 20, scope: !1772)
!1805 = !DILocation(line: 362, column: 18, scope: !1772)
!1806 = !DILocation(line: 362, column: 32, scope: !1772)
!1807 = !DILocation(line: 363, column: 11, scope: !1772)
!1808 = !DILocation(line: 363, column: 2, scope: !1772)
!1809 = !DILocation(line: 363, column: 7, scope: !1772)
!1810 = !DILocation(line: 364, column: 6, scope: !1772)
!1811 = !DILocation(line: 364, column: 13, scope: !1772)
!1812 = !DILocation(line: 364, column: 11, scope: !1772)
!1813 = !DILocation(line: 364, column: 20, scope: !1772)
!1814 = !DILocation(line: 364, column: 18, scope: !1772)
!1815 = !DILocation(line: 365, column: 11, scope: !1772)
!1816 = !DILocation(line: 365, column: 2, scope: !1772)
!1817 = !DILocation(line: 365, column: 7, scope: !1772)
!1818 = !DILocation(line: 366, column: 6, scope: !1772)
!1819 = !DILocation(line: 366, column: 13, scope: !1772)
!1820 = !DILocation(line: 366, column: 11, scope: !1772)
!1821 = !DILocation(line: 366, column: 20, scope: !1772)
!1822 = !DILocation(line: 366, column: 18, scope: !1772)
!1823 = !DILocation(line: 367, column: 11, scope: !1772)
!1824 = !DILocation(line: 367, column: 2, scope: !1772)
!1825 = !DILocation(line: 367, column: 7, scope: !1772)
!1826 = !DILocation(line: 368, column: 6, scope: !1772)
!1827 = !DILocation(line: 368, column: 13, scope: !1772)
!1828 = !DILocation(line: 368, column: 11, scope: !1772)
!1829 = !DILocation(line: 368, column: 20, scope: !1772)
!1830 = !DILocation(line: 368, column: 18, scope: !1772)
!1831 = !DILocation(line: 368, column: 32, scope: !1772)
!1832 = !DILocation(line: 369, column: 11, scope: !1772)
!1833 = !DILocation(line: 369, column: 2, scope: !1772)
!1834 = !DILocation(line: 369, column: 7, scope: !1772)
!1835 = !DILocation(line: 370, column: 6, scope: !1772)
!1836 = !DILocation(line: 370, column: 13, scope: !1772)
!1837 = !DILocation(line: 370, column: 11, scope: !1772)
!1838 = !DILocation(line: 370, column: 20, scope: !1772)
!1839 = !DILocation(line: 370, column: 18, scope: !1772)
!1840 = !DILocation(line: 370, column: 32, scope: !1772)
!1841 = !DILocation(line: 371, column: 11, scope: !1772)
!1842 = !DILocation(line: 371, column: 2, scope: !1772)
!1843 = !DILocation(line: 371, column: 7, scope: !1772)
!1844 = !DILocation(line: 372, column: 6, scope: !1772)
!1845 = !DILocation(line: 372, column: 13, scope: !1772)
!1846 = !DILocation(line: 372, column: 11, scope: !1772)
!1847 = !DILocation(line: 372, column: 20, scope: !1772)
!1848 = !DILocation(line: 372, column: 18, scope: !1772)
!1849 = !DILocation(line: 372, column: 32, scope: !1772)
!1850 = !DILocation(line: 373, column: 11, scope: !1772)
!1851 = !DILocation(line: 373, column: 2, scope: !1772)
!1852 = !DILocation(line: 373, column: 7, scope: !1772)
!1853 = !DILocation(line: 374, column: 4, scope: !1772)
!1854 = !DILocation(line: 375, column: 2, scope: !1772)
!1855 = !DILocation(line: 375, column: 7, scope: !1772)
!1856 = !DILocation(line: 376, column: 12, scope: !1772)
!1857 = !DILocation(line: 376, column: 2, scope: !1772)
!1858 = !DILocation(line: 376, column: 7, scope: !1772)
!1859 = !DILocation(line: 377, column: 12, scope: !1772)
!1860 = !DILocation(line: 377, column: 2, scope: !1772)
!1861 = !DILocation(line: 377, column: 7, scope: !1772)
!1862 = !DILocation(line: 378, column: 12, scope: !1772)
!1863 = !DILocation(line: 378, column: 2, scope: !1772)
!1864 = !DILocation(line: 378, column: 7, scope: !1772)
!1865 = !DILocalVariable(name: "cc", scope: !1772, file: !3, line: 349, type: !12)
!1866 = !DILocalVariable(name: "i", scope: !1772, file: !3, line: 350, type: !19)
!1867 = !DILocation(line: 380, column: 7, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 380, column: 2)
!1869 = !DILocation(line: 0, scope: !1868)
!1870 = !DILocation(line: 380, column: 16, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 380, column: 2)
!1872 = !DILocation(line: 380, column: 2, scope: !1868)
!1873 = !DILocation(line: 381, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 380, column: 27)
!1875 = !DILocation(line: 381, column: 12, scope: !1874)
!1876 = !DILocation(line: 382, column: 12, scope: !1874)
!1877 = !DILocation(line: 382, column: 3, scope: !1874)
!1878 = !DILocation(line: 382, column: 8, scope: !1874)
!1879 = !DILocation(line: 383, column: 8, scope: !1874)
!1880 = !DILocation(line: 384, column: 2, scope: !1874)
!1881 = !DILocation(line: 380, column: 23, scope: !1871)
!1882 = !DILocation(line: 380, column: 2, scope: !1871)
!1883 = distinct !{!1883, !1872, !1884, !172}
!1884 = !DILocation(line: 384, column: 2, scope: !1868)
!1885 = !DILocation(line: 385, column: 1, scope: !1772)
!1886 = distinct !DISubprogram(name: "NOT", scope: !175, file: !175, line: 761, type: !1887, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!12, !12}
!1889 = !DILocalVariable(name: "ctl", arg: 1, scope: !1886, file: !175, line: 761, type: !12)
!1890 = !DILocation(line: 0, scope: !1886)
!1891 = !DILocation(line: 763, column: 13, scope: !1886)
!1892 = !DILocation(line: 763, column: 2, scope: !1886)
!1893 = distinct !DISubprogram(name: "NEQ", scope: !175, file: !175, line: 791, type: !746, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1894 = !DILocalVariable(name: "x", arg: 1, scope: !1893, file: !175, line: 791, type: !12)
!1895 = !DILocation(line: 0, scope: !1893)
!1896 = !DILocalVariable(name: "y", arg: 2, scope: !1893, file: !175, line: 791, type: !12)
!1897 = !DILocation(line: 795, column: 8, scope: !1893)
!1898 = !DILocalVariable(name: "q", scope: !1893, file: !175, line: 793, type: !12)
!1899 = !DILocation(line: 796, column: 14, scope: !1893)
!1900 = !DILocation(line: 796, column: 12, scope: !1893)
!1901 = !DILocation(line: 796, column: 18, scope: !1893)
!1902 = !DILocation(line: 796, column: 2, scope: !1893)
!1903 = distinct !DISubprogram(name: "lookup_Gwin", scope: !3, file: !3, line: 1269, type: !1904, scopeLine: 1270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{null, !316, !12}
!1906 = !DILocalVariable(name: "T", arg: 1, scope: !1903, file: !3, line: 1269, type: !316)
!1907 = !DILocation(line: 0, scope: !1903)
!1908 = !DILocalVariable(name: "idx", arg: 2, scope: !1903, file: !3, line: 1269, type: !12)
!1909 = !DILocalVariable(name: "xy", scope: !1903, file: !3, line: 1271, type: !1027)
!1910 = !DILocation(line: 1271, column: 11, scope: !1903)
!1911 = !DILocation(line: 1275, column: 2, scope: !1903)
!1912 = !DILocalVariable(name: "k", scope: !1903, file: !3, line: 1272, type: !12)
!1913 = !DILocation(line: 1276, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 1276, column: 2)
!1915 = !DILocation(line: 0, scope: !1914)
!1916 = !DILocation(line: 1276, column: 16, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 1276, column: 2)
!1918 = !DILocation(line: 1276, column: 2, scope: !1914)
!1919 = !DILocation(line: 1279, column: 18, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 1276, column: 28)
!1921 = !DILocation(line: 1279, column: 8, scope: !1920)
!1922 = !DILocation(line: 1279, column: 7, scope: !1920)
!1923 = !DILocalVariable(name: "m", scope: !1920, file: !3, line: 1277, type: !12)
!1924 = !DILocation(line: 0, scope: !1920)
!1925 = !DILocalVariable(name: "u", scope: !1903, file: !3, line: 1273, type: !63)
!1926 = !DILocation(line: 1280, column: 8, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1280, column: 3)
!1928 = !DILocation(line: 0, scope: !1927)
!1929 = !DILocation(line: 1280, column: 17, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 1280, column: 3)
!1931 = !DILocation(line: 1280, column: 3, scope: !1927)
!1932 = !DILocation(line: 1281, column: 17, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 1280, column: 29)
!1934 = !DILocation(line: 1281, column: 15, scope: !1933)
!1935 = !DILocation(line: 1281, column: 4, scope: !1933)
!1936 = !DILocation(line: 1281, column: 10, scope: !1933)
!1937 = !DILocation(line: 1282, column: 3, scope: !1933)
!1938 = !DILocation(line: 1280, column: 25, scope: !1930)
!1939 = !DILocation(line: 1280, column: 3, scope: !1930)
!1940 = distinct !{!1940, !1931, !1941, !172}
!1941 = !DILocation(line: 1282, column: 3, scope: !1927)
!1942 = !DILocation(line: 1283, column: 2, scope: !1920)
!1943 = !DILocation(line: 1276, column: 24, scope: !1917)
!1944 = !DILocation(line: 1276, column: 2, scope: !1917)
!1945 = distinct !{!1945, !1918, !1946, !172}
!1946 = !DILocation(line: 1283, column: 2, scope: !1914)
!1947 = !DILocation(line: 1284, column: 12, scope: !1903)
!1948 = !DILocation(line: 1284, column: 2, scope: !1903)
!1949 = !DILocation(line: 1284, column: 16, scope: !1903)
!1950 = !DILocation(line: 1285, column: 12, scope: !1903)
!1951 = !DILocation(line: 1285, column: 2, scope: !1903)
!1952 = !DILocation(line: 1285, column: 16, scope: !1903)
!1953 = !DILocation(line: 1286, column: 12, scope: !1903)
!1954 = !DILocation(line: 1286, column: 2, scope: !1903)
!1955 = !DILocation(line: 1287, column: 5, scope: !1903)
!1956 = !DILocation(line: 1287, column: 2, scope: !1903)
!1957 = !DILocation(line: 1287, column: 10, scope: !1903)
!1958 = !DILocation(line: 1288, column: 1, scope: !1903)
!1959 = distinct !DISubprogram(name: "p256_add_mixed", scope: !3, file: !3, line: 957, type: !555, scopeLine: 958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1960 = !DILocalVariable(name: "P1", arg: 1, scope: !1959, file: !3, line: 957, type: !316)
!1961 = !DILocation(line: 0, scope: !1959)
!1962 = !DILocalVariable(name: "P2", arg: 2, scope: !1959, file: !3, line: 957, type: !557)
!1963 = !DILocalVariable(name: "t1", scope: !1959, file: !3, line: 972, type: !217)
!1964 = !DILocation(line: 972, column: 11, scope: !1959)
!1965 = !DILocalVariable(name: "t2", scope: !1959, file: !3, line: 972, type: !217)
!1966 = !DILocation(line: 972, column: 18, scope: !1959)
!1967 = !DILocalVariable(name: "t3", scope: !1959, file: !3, line: 972, type: !217)
!1968 = !DILocation(line: 972, column: 25, scope: !1959)
!1969 = !DILocalVariable(name: "t4", scope: !1959, file: !3, line: 972, type: !217)
!1970 = !DILocation(line: 972, column: 32, scope: !1959)
!1971 = !DILocalVariable(name: "t5", scope: !1959, file: !3, line: 972, type: !217)
!1972 = !DILocation(line: 972, column: 39, scope: !1959)
!1973 = !DILocalVariable(name: "t6", scope: !1959, file: !3, line: 972, type: !217)
!1974 = !DILocation(line: 972, column: 46, scope: !1959)
!1975 = !DILocalVariable(name: "t7", scope: !1959, file: !3, line: 972, type: !217)
!1976 = !DILocation(line: 972, column: 53, scope: !1959)
!1977 = !DILocation(line: 979, column: 2, scope: !1959)
!1978 = !DILocation(line: 979, column: 17, scope: !1959)
!1979 = !DILocation(line: 980, column: 2, scope: !1959)
!1980 = !DILocation(line: 980, column: 17, scope: !1959)
!1981 = !DILocation(line: 985, column: 14, scope: !1959)
!1982 = !DILocation(line: 985, column: 22, scope: !1959)
!1983 = !DILocation(line: 985, column: 18, scope: !1959)
!1984 = !DILocation(line: 985, column: 2, scope: !1959)
!1985 = !DILocation(line: 986, column: 11, scope: !1959)
!1986 = !DILocation(line: 986, column: 19, scope: !1959)
!1987 = !DILocation(line: 986, column: 15, scope: !1959)
!1988 = !DILocation(line: 986, column: 22, scope: !1959)
!1989 = !DILocation(line: 986, column: 2, scope: !1959)
!1990 = !DILocation(line: 987, column: 11, scope: !1959)
!1991 = !DILocation(line: 987, column: 19, scope: !1959)
!1992 = !DILocation(line: 987, column: 15, scope: !1959)
!1993 = !DILocation(line: 987, column: 22, scope: !1959)
!1994 = !DILocation(line: 987, column: 2, scope: !1959)
!1995 = !DILocation(line: 988, column: 11, scope: !1959)
!1996 = !DILocation(line: 988, column: 19, scope: !1959)
!1997 = !DILocation(line: 988, column: 15, scope: !1959)
!1998 = !DILocation(line: 988, column: 22, scope: !1959)
!1999 = !DILocation(line: 988, column: 2, scope: !1959)
!2000 = !DILocation(line: 995, column: 11, scope: !1959)
!2001 = !DILocation(line: 995, column: 15, scope: !1959)
!2002 = !DILocation(line: 995, column: 19, scope: !1959)
!2003 = !DILocation(line: 995, column: 2, scope: !1959)
!2004 = !DILocation(line: 996, column: 11, scope: !1959)
!2005 = !DILocation(line: 996, column: 15, scope: !1959)
!2006 = !DILocation(line: 996, column: 19, scope: !1959)
!2007 = !DILocation(line: 996, column: 2, scope: !1959)
!2008 = !DILocation(line: 997, column: 20, scope: !1959)
!2009 = !DILocation(line: 997, column: 2, scope: !1959)
!2010 = !DILocalVariable(name: "ret", scope: !1959, file: !3, line: 973, type: !12)
!2011 = !DILocalVariable(name: "i", scope: !1959, file: !3, line: 974, type: !19)
!2012 = !DILocation(line: 999, column: 7, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 999, column: 2)
!2014 = !DILocation(line: 0, scope: !2013)
!2015 = !DILocation(line: 999, column: 16, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 999, column: 2)
!2017 = !DILocation(line: 999, column: 2, scope: !2013)
!2018 = !DILocation(line: 1000, column: 10, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 999, column: 27)
!2020 = !DILocation(line: 1000, column: 7, scope: !2019)
!2021 = !DILocation(line: 1001, column: 2, scope: !2019)
!2022 = !DILocation(line: 999, column: 23, scope: !2016)
!2023 = !DILocation(line: 999, column: 2, scope: !2016)
!2024 = distinct !{!2024, !2017, !2025, !172}
!2025 = !DILocation(line: 1001, column: 2, scope: !2013)
!2026 = !DILocation(line: 1002, column: 15, scope: !1959)
!2027 = !DILocation(line: 1002, column: 13, scope: !1959)
!2028 = !DILocation(line: 1002, column: 21, scope: !1959)
!2029 = !DILocation(line: 1007, column: 14, scope: !1959)
!2030 = !DILocation(line: 1007, column: 18, scope: !1959)
!2031 = !DILocation(line: 1007, column: 2, scope: !1959)
!2032 = !DILocation(line: 1008, column: 11, scope: !1959)
!2033 = !DILocation(line: 1008, column: 15, scope: !1959)
!2034 = !DILocation(line: 1008, column: 19, scope: !1959)
!2035 = !DILocation(line: 1008, column: 2, scope: !1959)
!2036 = !DILocation(line: 1009, column: 11, scope: !1959)
!2037 = !DILocation(line: 1009, column: 15, scope: !1959)
!2038 = !DILocation(line: 1009, column: 19, scope: !1959)
!2039 = !DILocation(line: 1009, column: 2, scope: !1959)
!2040 = !DILocation(line: 1014, column: 18, scope: !1959)
!2041 = !DILocation(line: 1014, column: 14, scope: !1959)
!2042 = !DILocation(line: 1014, column: 21, scope: !1959)
!2043 = !DILocation(line: 1014, column: 2, scope: !1959)
!2044 = !DILocation(line: 1015, column: 15, scope: !1959)
!2045 = !DILocation(line: 1015, column: 11, scope: !1959)
!2046 = !DILocation(line: 1015, column: 22, scope: !1959)
!2047 = !DILocation(line: 1015, column: 18, scope: !1959)
!2048 = !DILocation(line: 1015, column: 25, scope: !1959)
!2049 = !DILocation(line: 1015, column: 2, scope: !1959)
!2050 = !DILocation(line: 1016, column: 15, scope: !1959)
!2051 = !DILocation(line: 1016, column: 11, scope: !1959)
!2052 = !DILocation(line: 1016, column: 22, scope: !1959)
!2053 = !DILocation(line: 1016, column: 18, scope: !1959)
!2054 = !DILocation(line: 1016, column: 25, scope: !1959)
!2055 = !DILocation(line: 1016, column: 2, scope: !1959)
!2056 = !DILocation(line: 1017, column: 15, scope: !1959)
!2057 = !DILocation(line: 1017, column: 11, scope: !1959)
!2058 = !DILocation(line: 1017, column: 22, scope: !1959)
!2059 = !DILocation(line: 1017, column: 18, scope: !1959)
!2060 = !DILocation(line: 1017, column: 25, scope: !1959)
!2061 = !DILocation(line: 1017, column: 2, scope: !1959)
!2062 = !DILocation(line: 1022, column: 11, scope: !1959)
!2063 = !DILocation(line: 1022, column: 15, scope: !1959)
!2064 = !DILocation(line: 1022, column: 23, scope: !1959)
!2065 = !DILocation(line: 1022, column: 19, scope: !1959)
!2066 = !DILocation(line: 1022, column: 2, scope: !1959)
!2067 = !DILocation(line: 1023, column: 15, scope: !1959)
!2068 = !DILocation(line: 1023, column: 11, scope: !1959)
!2069 = !DILocation(line: 1023, column: 18, scope: !1959)
!2070 = !DILocation(line: 1023, column: 22, scope: !1959)
!2071 = !DILocation(line: 1023, column: 2, scope: !1959)
!2072 = !DILocation(line: 1024, column: 11, scope: !1959)
!2073 = !DILocation(line: 1024, column: 15, scope: !1959)
!2074 = !DILocation(line: 1024, column: 19, scope: !1959)
!2075 = !DILocation(line: 1024, column: 2, scope: !1959)
!2076 = !DILocation(line: 1025, column: 15, scope: !1959)
!2077 = !DILocation(line: 1025, column: 11, scope: !1959)
!2078 = !DILocation(line: 1025, column: 22, scope: !1959)
!2079 = !DILocation(line: 1025, column: 18, scope: !1959)
!2080 = !DILocation(line: 1025, column: 25, scope: !1959)
!2081 = !DILocation(line: 1025, column: 2, scope: !1959)
!2082 = !DILocation(line: 1030, column: 15, scope: !1959)
!2083 = !DILocation(line: 1030, column: 11, scope: !1959)
!2084 = !DILocation(line: 1030, column: 22, scope: !1959)
!2085 = !DILocation(line: 1030, column: 18, scope: !1959)
!2086 = !DILocation(line: 1030, column: 25, scope: !1959)
!2087 = !DILocation(line: 1030, column: 2, scope: !1959)
!2088 = !DILocation(line: 1032, column: 2, scope: !1959)
!2089 = distinct !DISubprogram(name: "be8_to_le30", scope: !3, file: !3, line: 53, type: !2090, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!12, !711, !61, !63}
!2092 = !DILocalVariable(name: "dst", arg: 1, scope: !2089, file: !3, line: 53, type: !711)
!2093 = !DILocation(line: 0, scope: !2089)
!2094 = !DILocalVariable(name: "src", arg: 2, scope: !2089, file: !3, line: 53, type: !61)
!2095 = !DILocalVariable(name: "len", arg: 3, scope: !2089, file: !3, line: 53, type: !63)
!2096 = !DILocalVariable(name: "acc", scope: !2089, file: !3, line: 55, type: !12)
!2097 = !DILocalVariable(name: "acc_len", scope: !2089, file: !3, line: 56, type: !19)
!2098 = !DILocation(line: 60, column: 2, scope: !2089)
!2099 = !DILocation(line: 60, column: 13, scope: !2089)
!2100 = !DILocation(line: 60, column: 16, scope: !2089)
!2101 = !DILocation(line: 63, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 60, column: 21)
!2103 = !DILocalVariable(name: "b", scope: !2102, file: !3, line: 61, type: !12)
!2104 = !DILocation(line: 0, scope: !2102)
!2105 = !DILocation(line: 64, column: 15, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 64, column: 7)
!2107 = !DILocation(line: 64, column: 7, scope: !2102)
!2108 = !DILocation(line: 65, column: 13, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 64, column: 21)
!2110 = !DILocation(line: 65, column: 8, scope: !2109)
!2111 = !DILocation(line: 66, column: 12, scope: !2109)
!2112 = !DILocation(line: 67, column: 3, scope: !2109)
!2113 = !DILocation(line: 68, column: 24, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 67, column: 10)
!2115 = !DILocation(line: 68, column: 19, scope: !2114)
!2116 = !DILocation(line: 68, column: 37, scope: !2114)
!2117 = !DILocation(line: 68, column: 9, scope: !2114)
!2118 = !DILocation(line: 68, column: 12, scope: !2114)
!2119 = !DILocation(line: 69, column: 19, scope: !2114)
!2120 = !DILocation(line: 69, column: 12, scope: !2114)
!2121 = !DILocation(line: 70, column: 12, scope: !2114)
!2122 = !DILocation(line: 0, scope: !2106)
!2123 = distinct !{!2123, !2098, !2124, !172}
!2124 = !DILocation(line: 72, column: 2, scope: !2089)
!2125 = !DILocation(line: 73, column: 2, scope: !2089)
