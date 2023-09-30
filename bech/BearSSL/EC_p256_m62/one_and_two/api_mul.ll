; ModuleID = 'api_mul.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_ec_impl = type { i32, i8* (i32, i64*)*, i8* (i32, i64*)*, i64 (i32, i64*)*, i32 (i8*, i64, i8*, i64, i32)*, i64 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* }
%struct.p256_affine = type { [5 x i64], [5 x i64] }
%struct.smack_value = type { i8* }
%struct.p256_jacobian = type { [5 x i64], [5 x i64], [5 x i64] }
%union.anon = type { [15 x %struct.p256_jacobian] }

@br_ec_p256_m62 = dso_local constant %struct.br_ec_impl { i32 8388608, i8* (i32, i64*)* @api_generator, i8* (i32, i64*)* @api_order, i64 (i32, i64*)* @api_xoff, i32 (i8*, i64, i8*, i64, i32)* @api_mul, i64 (i8*, i8*, i64, i32)* @api_mulgen, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* @api_muladd }, align 8, !dbg !0
@f256_frommonty.one = internal constant [5 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0], align 16, !dbg !48
@P256_Gwin = internal constant [15 x %struct.p256_affine] [%struct.p256_affine { [5 x i64] [i64 859000078943169, i64 3465582099921383, i64 1726581271406943, i64 1625533376047991, i64 150658718847861], [5 x i64] [i64 1466185490456744, i64 1189782786727410, i64 597251050482574, i64 3805765832181981, i64 95794707978373] }, %struct.p256_affine { [5 x i64] [i64 1246026079757535, i64 198133325595904, i64 361797754727996, i64 2879084652987277, i64 118417320500467], [5 x i64] [i64 1281163443182167, i64 3231616876425014, i64 73512145571196, i64 2879250126016146, i64 154307254527416] }, %struct.p256_affine { [5 x i64] [i64 1118224510620274, i64 2788900539727788, i64 3584174015545220, i64 1264741929966983, i64 115683400445943], [5 x i64] [i64 1620665513443005, i64 3439693246672972, i64 825290406487162, i64 3385020526375194, i64 104482103580796] }, %struct.p256_affine { [5 x i64] [i64 3185097970343109, i64 3789070638740656, i64 282227206589038, i64 2087684192120040, i64 131074606308097], [5 x i64] [i64 4262593119828584, i64 416538616606102, i64 3902316578482247, i64 2360563086057189, i64 82552553260459] }, %struct.p256_affine { [5 x i64] [i64 2439731573301084, i64 2767167225183771, i64 2089212904916553, i64 1064138758793936, i64 158850982645842], [5 x i64] [i64 2731936282112263, i64 4351779113003824, i64 2148405039879822, i64 2557211727988606, i64 63803546524958] }, %struct.p256_affine { [5 x i64] [i64 1252841548571809, i64 4262174922784825, i64 415868082906948, i64 1816139983624795, i64 53277820862995], [5 x i64] [i64 1726290021205178, i64 859814145397715, i64 1752557422232245, i64 2075139836759279, i64 84220397396095] }, %struct.p256_affine { [5 x i64] [i64 937788953572593, i64 1057987900147526, i64 628579247136801, i64 3944928512750860, i64 65580151157027], [5 x i64] [i64 3662490239620318, i64 419628972845127, i64 3540536266075951, i64 2365116406029431, i64 192266650313280] }, %struct.p256_affine { [5 x i64] [i64 1351408399579387, i64 1336573225674737, i64 791402290260828, i64 858579279031024, i64 129985339074130], [5 x i64] [i64 2879162244437877, i64 3799494400800157, i64 1701764862456615, i64 4351601749492926, i64 121775999185005] }, %struct.p256_affine { [5 x i64] [i64 1944977632530062, i64 3511460709889481, i64 3534586466167806, i64 398352858219588, i64 6266493406286], [5 x i64] [i64 2101898038686016, i64 3886074697031351, i64 3117053815486398, i64 4392735482157704, i64 147770981734453] }, %struct.p256_affine { [5 x i64] [i64 3867093462281356, i64 2621027435228184, i64 651686554081384, i64 719851503801928, i64 217826052688692], [5 x i64] [i64 1134180836173671, i64 220176096693291, i64 2742582174263449, i64 3013690457417079, i64 148544217789364] }, %struct.p256_affine { [5 x i64] [i64 669216644415555, i64 1476093821381245, i64 3027691458412665, i64 126374910367117, i64 254026094037449], [5 x i64] [i64 2346438231386246, i64 4087431821793910, i64 3050336546781497, i64 2407569916856606, i64 150839289451099] }, %struct.p256_affine { [5 x i64] [i64 468929471805060, i64 1559332339778743, i64 971443936292335, i64 375912882413038, i64 261812473870398], [5 x i64] [i64 331579187901495, i64 1788395763731628, i64 3912983129419055, i64 3036542457936522, i64 280752505500216] }, %struct.p256_affine { [5 x i64] [i64 657734293614743, i64 2556844816846020, i64 2790015333783158, i64 2068510957387605, i64 61879654037851], [5 x i64] [i64 766411159771135, i64 4367461292127605, i64 551663157332024, i64 2135856372785853, i64 206744536718971] }, %struct.p256_affine { [5 x i64] [i64 2873827259737263, i64 1846728695456322, i64 2307213501064335, i64 2019970762364102, i64 187909973922092], [5 x i64] [i64 804265204745905, i64 4067240475502517, i64 1792743976375657, i64 3302764958006826, i64 90642831370913] }, %struct.p256_affine { [5 x i64] [i64 3812538416387518, i64 3789889850798780, i64 2279523831562814, i64 2824706364548324, i64 46870512446781], [5 x i64] [i64 1448014807582162, i64 1163988132249784, i64 2432641516594005, i64 3927751612882551, i64 4541670557594] }], align 16, !dbg !51
@F256_R = internal constant [5 x i64] [i64 16, i64 4222124650659840, i64 4503599627370495, i64 4502500115742719, i64 1048575], align 16, !dbg !46
@P256_B_MONTY = internal constant [5 x i64] [i64 3929803208777213, i64 3562985424476316, i64 583760861921372, i64 2309067332692983, i64 214406409308276], align 16, !dbg !44
@f256_tomonty.R2 = internal constant [5 x i64] [i64 768, i64 4503599626321920, i64 4503595332403195, i64 4468415255281663, i64 83886079], align 16, !dbg !33
@P256_N = internal constant [32 x i8] c"\FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\BC\E6\FA\AD\A7\17\9E\84\F3\B9\CA\C2\FCc%Q", align 16, !dbg !28
@P256_G = internal constant [65 x i8] c"\04k\17\D1\F2\E1,BG\F8\BC\E6\E5c\A4@\F2w\03}\81-\EB3\A0\F4\A19E\D8\98\C2\96O\E3B\E2\FE\1A\7F\9B\8E\E7\EBJ|\0F\9E\16+\CE3Wk1^\CE\CB\B6@h7\BFQ\F5", align 16, !dbg !22

; Function Attrs: noinline nounwind uwtable
define dso_local void @api_mul_wrapper(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 !dbg !103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i64 %1, metadata !108, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i8* %2, metadata !109, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i64 %3, metadata !110, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 %4, metadata !111, metadata !DIExpression()), !dbg !107
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !112
  call void @public_in(%struct.smack_value* %6), !dbg !113
  %7 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %1), !dbg !114
  call void @public_in(%struct.smack_value* %7), !dbg !115
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !116
  call void @public_in(%struct.smack_value* %8), !dbg !117
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !118
  call void @public_in(%struct.smack_value* %9), !dbg !119
  %10 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %4), !dbg !120
  call void @public_in(%struct.smack_value* %10), !dbg !121
  %11 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 64), !dbg !122
  call void @public_in(%struct.smack_value* %11), !dbg !123
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_p256_m62, metadata !124, metadata !DIExpression()), !dbg !107
  %12 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_p256_m62, i32 0, i32 4, !dbg !137
  %13 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %12, align 8, !dbg !137
  %14 = call i32 %13(i8* %0, i64 %1, i8* %2, i64 %3, i32 23), !dbg !138
  ret void, !dbg !139
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @api_mul_wrapper_t() #0 !dbg !140 {
  %1 = call i8* (...) @getunsigned(), !dbg !143
  call void @llvm.dbg.value(metadata i8* %1, metadata !144, metadata !DIExpression()), !dbg !145
  %2 = call i64 (...) @getsize_t(), !dbg !146
  call void @llvm.dbg.value(metadata i64 %2, metadata !147, metadata !DIExpression()), !dbg !145
  %3 = call i8* (...) @getusn(), !dbg !148
  call void @llvm.dbg.value(metadata i8* %3, metadata !149, metadata !DIExpression()), !dbg !145
  %4 = call i64 (...) @getsize_t2(), !dbg !150
  call void @llvm.dbg.value(metadata i64 %4, metadata !151, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 29, metadata !152, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_p256_m62, metadata !153, metadata !DIExpression()), !dbg !145
  %5 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_p256_m62, i32 0, i32 4, !dbg !154
  %6 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %5, align 8, !dbg !154
  %7 = call i32 %6(i8* %1, i64 %2, i8* %3, i64 %4, i32 23), !dbg !155
  ret void, !dbg !156
}

declare dso_local i8* @getunsigned(...) #2

declare dso_local i64 @getsize_t(...) #2

declare dso_local i8* @getusn(...) #2

declare dso_local i64 @getsize_t2(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ccopy(i32 %0, i8* %1, i8* %2, i64 %3) #0 !dbg !157 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i8* %1, metadata !164, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i8* %2, metadata !165, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64 %3, metadata !166, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i8* %1, metadata !167, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i8* %2, metadata !168, metadata !DIExpression()), !dbg !163
  br label %5, !dbg !169

5:                                                ; preds = %8, %4
  %.02 = phi i64 [ %3, %4 ], [ %6, %8 ]
  %.01 = phi i8* [ %1, %4 ], [ %16, %8 ], !dbg !163
  %.0 = phi i8* [ %2, %4 ], [ %9, %8 ], !dbg !163
  call void @llvm.dbg.value(metadata i8* %.0, metadata !168, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i8* %.01, metadata !167, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64 %.02, metadata !166, metadata !DIExpression()), !dbg !163
  %6 = add i64 %.02, -1, !dbg !170
  call void @llvm.dbg.value(metadata i64 %6, metadata !166, metadata !DIExpression()), !dbg !163
  %7 = icmp ugt i64 %.02, 0, !dbg !171
  br i1 %7, label %8, label %17, !dbg !169

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !172
  call void @llvm.dbg.value(metadata i8* %9, metadata !168, metadata !DIExpression()), !dbg !163
  %10 = load i8, i8* %.0, align 1, !dbg !174
  %11 = zext i8 %10 to i32, !dbg !174
  call void @llvm.dbg.value(metadata i32 %11, metadata !175, metadata !DIExpression()), !dbg !176
  %12 = load i8, i8* %.01, align 1, !dbg !177
  %13 = zext i8 %12 to i32, !dbg !177
  call void @llvm.dbg.value(metadata i32 %13, metadata !178, metadata !DIExpression()), !dbg !176
  %14 = call i32 @MUX(i32 %0, i32 %11, i32 %13), !dbg !179
  %15 = trunc i32 %14 to i8, !dbg !179
  store i8 %15, i8* %.01, align 1, !dbg !180
  %16 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !181
  call void @llvm.dbg.value(metadata i8* %16, metadata !167, metadata !DIExpression()), !dbg !163
  br label %5, !dbg !169, !llvm.loop !182

17:                                               ; preds = %5
  ret void, !dbg !185
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %1, metadata !192, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %2, metadata !193, metadata !DIExpression()), !dbg !191
  %4 = sub i32 0, %0, !dbg !194
  %5 = xor i32 %1, %2, !dbg !195
  %6 = and i32 %4, %5, !dbg !196
  %7 = xor i32 %2, %6, !dbg !197
  ret i32 %7, !dbg !198
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @api_generator(i32 %0, i64* %1) #0 !dbg !199 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i64* %1, metadata !202, metadata !DIExpression()), !dbg !201
  store i64 65, i64* %1, align 8, !dbg !203
  ret i8* getelementptr inbounds ([65 x i8], [65 x i8]* @P256_G, i64 0, i64 0), !dbg !204
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @api_order(i32 %0, i64* %1) #0 !dbg !205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i64* %1, metadata !208, metadata !DIExpression()), !dbg !207
  store i64 32, i64* %1, align 8, !dbg !209
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @P256_N, i64 0, i64 0), !dbg !210
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @api_xoff(i32 %0, i64* %1) #0 !dbg !211 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i64* %1, metadata !214, metadata !DIExpression()), !dbg !213
  store i64 32, i64* %1, align 8, !dbg !215
  ret i64 1, !dbg !216
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_mul(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 !dbg !217 {
  %6 = alloca %struct.p256_jacobian, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i64 %1, metadata !220, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i8* %2, metadata !221, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i64 %3, metadata !222, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i32 %4, metadata !223, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %6, metadata !224, metadata !DIExpression()), !dbg !231
  %7 = icmp ne i64 %1, 65, !dbg !232
  br i1 %7, label %8, label %9, !dbg !234

8:                                                ; preds = %5
  br label %15, !dbg !235

9:                                                ; preds = %5
  %10 = call i32 @check_scalar(i8* %2, i64 %3), !dbg !237
  call void @llvm.dbg.value(metadata i32 %10, metadata !238, metadata !DIExpression()), !dbg !219
  %11 = call i32 @point_decode(%struct.p256_jacobian* %6, i8* %0), !dbg !239
  %12 = and i32 %10, %11, !dbg !240
  call void @llvm.dbg.value(metadata i32 %12, metadata !238, metadata !DIExpression()), !dbg !219
  call void @p256_mul(%struct.p256_jacobian* %6, i8* %2, i64 %3), !dbg !241
  %13 = call i32 @point_encode(i8* %0, %struct.p256_jacobian* %6), !dbg !242
  %14 = and i32 %12, %13, !dbg !243
  call void @llvm.dbg.value(metadata i32 %14, metadata !238, metadata !DIExpression()), !dbg !219
  br label %15, !dbg !244

15:                                               ; preds = %9, %8
  %.0 = phi i32 [ 0, %8 ], [ %14, %9 ], !dbg !219
  ret i32 %.0, !dbg !245
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @api_mulgen(i8* %0, i8* %1, i64 %2, i32 %3) #0 !dbg !246 {
  %5 = alloca %struct.p256_jacobian, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %1, metadata !249, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i64 %2, metadata !250, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 %3, metadata !251, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %5, metadata !252, metadata !DIExpression()), !dbg !253
  call void @p256_mulgen(%struct.p256_jacobian* %5, i8* %1, i64 %2), !dbg !254
  %6 = call i32 @point_encode(i8* %0, %struct.p256_jacobian* %5), !dbg !255
  ret i64 65, !dbg !256
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_muladd(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 !dbg !257 {
  %9 = alloca %struct.p256_jacobian, align 8
  %10 = alloca %struct.p256_jacobian, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i8* %1, metadata !260, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %2, metadata !261, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i8* %3, metadata !262, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %4, metadata !263, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i8* %5, metadata !264, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i64 %6, metadata !265, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i32 %7, metadata !266, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %9, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %10, metadata !269, metadata !DIExpression()), !dbg !270
  %11 = icmp ne i64 %2, 65, !dbg !271
  br i1 %11, label %12, label %13, !dbg !273

12:                                               ; preds = %8
  br label %55, !dbg !274

13:                                               ; preds = %8
  %14 = call i32 @point_decode(%struct.p256_jacobian* %9, i8* %0), !dbg !276
  call void @llvm.dbg.value(metadata i32 %14, metadata !277, metadata !DIExpression()), !dbg !259
  call void @p256_mul(%struct.p256_jacobian* %9, i8* %3, i64 %4), !dbg !278
  %15 = icmp eq i8* %1, null, !dbg !279
  br i1 %15, label %16, label %17, !dbg !281

16:                                               ; preds = %13
  call void @p256_mulgen(%struct.p256_jacobian* %10, i8* %5, i64 %6), !dbg !282
  br label %20, !dbg !284

17:                                               ; preds = %13
  %18 = call i32 @point_decode(%struct.p256_jacobian* %10, i8* %1), !dbg !285
  %19 = and i32 %14, %18, !dbg !287
  call void @llvm.dbg.value(metadata i32 %19, metadata !277, metadata !DIExpression()), !dbg !259
  call void @p256_mul(%struct.p256_jacobian* %10, i8* %5, i64 %6), !dbg !288
  br label %20

20:                                               ; preds = %17, %16
  %.01 = phi i32 [ %14, %16 ], [ %19, %17 ], !dbg !259
  call void @llvm.dbg.value(metadata i32 %.01, metadata !277, metadata !DIExpression()), !dbg !259
  %21 = call i32 @p256_add(%struct.p256_jacobian* %9, %struct.p256_jacobian* %10), !dbg !289
  call void @llvm.dbg.value(metadata i32 %21, metadata !290, metadata !DIExpression()), !dbg !259
  %22 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !291
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %22, i64 0, i64 0, !dbg !292
  call void @f256_final_reduce(i64* %23), !dbg !293
  %24 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !294
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 0, !dbg !295
  %26 = load i64, i64* %25, align 8, !dbg !295
  %27 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !296
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %27, i64 0, i64 1, !dbg !297
  %29 = load i64, i64* %28, align 8, !dbg !297
  %30 = or i64 %26, %29, !dbg !298
  %31 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !299
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %31, i64 0, i64 2, !dbg !300
  %33 = load i64, i64* %32, align 8, !dbg !300
  %34 = or i64 %30, %33, !dbg !301
  %35 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !302
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %35, i64 0, i64 3, !dbg !303
  %37 = load i64, i64* %36, align 8, !dbg !303
  %38 = or i64 %34, %37, !dbg !304
  %39 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !305
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 4, !dbg !306
  %41 = load i64, i64* %40, align 8, !dbg !306
  %42 = or i64 %38, %41, !dbg !307
  call void @llvm.dbg.value(metadata i64 %42, metadata !308, metadata !DIExpression()), !dbg !259
  %43 = lshr i64 %42, 32, !dbg !309
  %44 = or i64 %42, %43, !dbg !310
  %45 = trunc i64 %44 to i32, !dbg !311
  %46 = call i32 @EQ(i32 %45, i32 0), !dbg !312
  call void @llvm.dbg.value(metadata i32 %46, metadata !313, metadata !DIExpression()), !dbg !259
  call void @p256_double(%struct.p256_jacobian* %10), !dbg !314
  %47 = xor i32 %21, -1, !dbg !315
  %48 = and i32 %46, %47, !dbg !316
  %49 = bitcast %struct.p256_jacobian* %9 to i8*, !dbg !317
  %50 = bitcast %struct.p256_jacobian* %10 to i8*, !dbg !318
  call void @br_ccopy(i32 %48, i8* %49, i8* %50, i64 120), !dbg !319
  %51 = call i32 @point_encode(i8* %0, %struct.p256_jacobian* %9), !dbg !320
  %52 = and i32 %46, %21, !dbg !321
  %53 = xor i32 %52, -1, !dbg !322
  %54 = and i32 %.01, %53, !dbg !323
  call void @llvm.dbg.value(metadata i32 %54, metadata !277, metadata !DIExpression()), !dbg !259
  br label %55, !dbg !324

55:                                               ; preds = %20, %12
  %.0 = phi i32 [ 0, %12 ], [ %54, %20 ], !dbg !259
  ret i32 %.0, !dbg !325
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @point_decode(%struct.p256_jacobian* %0, i8* %1) #0 !dbg !326 {
  %3 = alloca [5 x i64], align 16
  %4 = alloca [5 x i64], align 16
  %5 = alloca [5 x i64], align 16
  %6 = alloca [5 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i8* %1, metadata !332, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata [5 x i64]* %5, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata [5 x i64]* %6, metadata !339, metadata !DIExpression()), !dbg !340
  %7 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !341
  %8 = load i8, i8* %7, align 1, !dbg !341
  %9 = zext i8 %8 to i32, !dbg !341
  %10 = call i32 @EQ(i32 %9, i32 4), !dbg !342
  call void @llvm.dbg.value(metadata i32 %10, metadata !343, metadata !DIExpression()), !dbg !331
  %11 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !344
  %12 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !345
  call void @f256_decode(i64* %11, i8* %12), !dbg !346
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !347
  %14 = getelementptr inbounds i8, i8* %1, i64 33, !dbg !348
  call void @f256_decode(i64* %13, i8* %14), !dbg !349
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !350
  %16 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !351
  call void @f256_tomonty(i64* %15, i64* %16), !dbg !352
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !353
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !354
  call void @f256_tomonty(i64* %17, i64* %18), !dbg !355
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !356
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !357
  call void @f256_montysquare(i64* %19, i64* %20), !dbg !358
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !359
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !360
  call void @f256_montysquare(i64* %21, i64* %22), !dbg !361
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !362
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !363
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !364
  call void @f256_montymul(i64* %23, i64* %24, i64* %25), !dbg !365
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !366
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !367
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !368
  call void @f256_sub(i64* %26, i64* %27, i64* %28), !dbg !369
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !370
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !371
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !372
  call void @f256_add(i64* %29, i64* %30, i64* %31), !dbg !373
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !374
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !375
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !376
  call void @f256_add(i64* %32, i64* %33, i64* %34), !dbg !377
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !378
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !379
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !380
  call void @f256_add(i64* %35, i64* %36, i64* %37), !dbg !381
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !382
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !383
  call void @f256_sub(i64* %38, i64* %39, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P256_B_MONTY, i64 0, i64 0)), !dbg !384
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !385
  call void @f256_final_reduce(i64* %40), !dbg !386
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !387
  %42 = load i64, i64* %41, align 16, !dbg !387
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 1, !dbg !388
  %44 = load i64, i64* %43, align 8, !dbg !388
  %45 = or i64 %42, %44, !dbg !389
  %46 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 2, !dbg !390
  %47 = load i64, i64* %46, align 16, !dbg !390
  %48 = or i64 %45, %47, !dbg !391
  %49 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 3, !dbg !392
  %50 = load i64, i64* %49, align 8, !dbg !392
  %51 = or i64 %48, %50, !dbg !393
  %52 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 4, !dbg !394
  %53 = load i64, i64* %52, align 16, !dbg !394
  %54 = or i64 %51, %53, !dbg !395
  call void @llvm.dbg.value(metadata i64 %54, metadata !396, metadata !DIExpression()), !dbg !331
  %55 = lshr i64 %54, 32, !dbg !397
  %56 = or i64 %54, %55, !dbg !398
  %57 = trunc i64 %56 to i32, !dbg !399
  %58 = call i32 @EQ(i32 %57, i32 0), !dbg !400
  %59 = and i32 %10, %58, !dbg !401
  call void @llvm.dbg.value(metadata i32 %59, metadata !343, metadata !DIExpression()), !dbg !331
  %60 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !402
  %61 = getelementptr inbounds [5 x i64], [5 x i64]* %60, i64 0, i64 0, !dbg !403
  %62 = bitcast i64* %61 to i8*, !dbg !403
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !403
  %64 = bitcast i64* %63 to i8*, !dbg !403
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 16 %64, i64 40, i1 false), !dbg !403
  %65 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !404
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %65, i64 0, i64 0, !dbg !405
  %67 = bitcast i64* %66 to i8*, !dbg !405
  %68 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !405
  %69 = bitcast i64* %68 to i8*, !dbg !405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 16 %69, i64 40, i1 false), !dbg !405
  %70 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !406
  %71 = getelementptr inbounds [5 x i64], [5 x i64]* %70, i64 0, i64 0, !dbg !407
  %72 = bitcast i64* %71 to i8*, !dbg !407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 16 bitcast ([5 x i64]* @F256_R to i8*), i64 40, i1 false), !dbg !407
  ret i32 %59, !dbg !408
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_mul(%struct.p256_jacobian* %0, i8* %1, i64 %2) #0 !dbg !409 {
  %4 = alloca %union.anon, align 8
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i8* %1, metadata !414, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i64 %2, metadata !415, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata %union.anon* %4, metadata !416, metadata !DIExpression()), !dbg !423
  %5 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !424
  %6 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %5, i64 0, i64 0, !dbg !425
  %7 = bitcast %struct.p256_jacobian* %6 to i8*, !dbg !426
  %8 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 120, i1 false), !dbg !426
  call void @llvm.dbg.value(metadata i32 2, metadata !427, metadata !DIExpression()), !dbg !413
  br label %9, !dbg !428

9:                                                ; preds = %41, %3
  %.0 = phi i32 [ 2, %3 ], [ %42, %41 ], !dbg !430
  call void @llvm.dbg.value(metadata i32 %.0, metadata !427, metadata !DIExpression()), !dbg !413
  %10 = icmp slt i32 %.0, 16, !dbg !431
  br i1 %10, label %11, label %43, !dbg !433

11:                                               ; preds = %9
  %12 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !434
  %13 = sub nsw i32 %.0, 1, !dbg !436
  %14 = sext i32 %13 to i64, !dbg !437
  %15 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %12, i64 0, i64 %14, !dbg !437
  %16 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !438
  %17 = ashr i32 %.0, 1, !dbg !439
  %18 = sub nsw i32 %17, 1, !dbg !440
  %19 = sext i32 %18 to i64, !dbg !441
  %20 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %16, i64 0, i64 %19, !dbg !441
  %21 = bitcast %struct.p256_jacobian* %15 to i8*, !dbg !441
  %22 = bitcast %struct.p256_jacobian* %20 to i8*, !dbg !441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 120, i1 false), !dbg !441
  %23 = and i32 %.0, 1, !dbg !442
  %24 = icmp eq i32 %23, 0, !dbg !444
  br i1 %24, label %25, label %30, !dbg !445

25:                                               ; preds = %11
  %26 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !446
  %27 = sub nsw i32 %.0, 1, !dbg !448
  %28 = sext i32 %27 to i64, !dbg !449
  %29 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %26, i64 0, i64 %28, !dbg !449
  call void @p256_double(%struct.p256_jacobian* %29), !dbg !450
  br label %40, !dbg !451

30:                                               ; preds = %11
  %31 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !452
  %32 = sub nsw i32 %.0, 1, !dbg !454
  %33 = sext i32 %32 to i64, !dbg !455
  %34 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %31, i64 0, i64 %33, !dbg !455
  %35 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !456
  %36 = ashr i32 %.0, 1, !dbg !457
  %37 = sext i32 %36 to i64, !dbg !458
  %38 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %35, i64 0, i64 %37, !dbg !458
  %39 = call i32 @p256_add(%struct.p256_jacobian* %34, %struct.p256_jacobian* %38), !dbg !459
  br label %40

40:                                               ; preds = %30, %25
  br label %41, !dbg !460

41:                                               ; preds = %40
  %42 = add nsw i32 %.0, 1, !dbg !461
  call void @llvm.dbg.value(metadata i32 %42, metadata !427, metadata !DIExpression()), !dbg !413
  br label %9, !dbg !462, !llvm.loop !463

43:                                               ; preds = %9
  %44 = bitcast %union.anon* %4 to [15 x %struct.p256_affine]*, !dbg !465
  %45 = getelementptr inbounds [15 x %struct.p256_affine], [15 x %struct.p256_affine]* %44, i64 0, i64 0, !dbg !466
  %46 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !467
  %47 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %46, i64 0, i64 0, !dbg !468
  call void @window_to_affine(%struct.p256_affine* %45, %struct.p256_jacobian* %47, i32 15), !dbg !469
  %48 = bitcast %union.anon* %4 to [15 x %struct.p256_affine]*, !dbg !470
  %49 = getelementptr inbounds [15 x %struct.p256_affine], [15 x %struct.p256_affine]* %48, i64 0, i64 0, !dbg !471
  call void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* %49, i8* %1, i64 %2), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_mulgen(%struct.p256_jacobian* %0, i8* %1, i64 %2) #0 !dbg !474 {
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.value(metadata i8* %1, metadata !477, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.value(metadata i64 %2, metadata !478, metadata !DIExpression()), !dbg !476
  call void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* getelementptr inbounds ([15 x %struct.p256_affine], [15 x %struct.p256_affine]* @P256_Gwin, i64 0, i64 0), i8* %1, i64 %2), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @p256_add(%struct.p256_jacobian* %0, %struct.p256_jacobian* %1) #0 !dbg !481 {
  %3 = alloca [5 x i64], align 16
  %4 = alloca [5 x i64], align 16
  %5 = alloca [5 x i64], align 16
  %6 = alloca [5 x i64], align 16
  %7 = alloca [5 x i64], align 16
  %8 = alloca [5 x i64], align 16
  %9 = alloca [5 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !486, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !488, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata [5 x i64]* %5, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata [5 x i64]* %6, metadata !495, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.declare(metadata [5 x i64]* %7, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata [5 x i64]* %8, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata [5 x i64]* %9, metadata !501, metadata !DIExpression()), !dbg !502
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !503
  %11 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !504
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 0, !dbg !505
  call void @f256_montysquare(i64* %10, i64* %12), !dbg !506
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !507
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !508
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0, !dbg !509
  %16 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !510
  call void @f256_montymul(i64* %13, i64* %15, i64* %16), !dbg !511
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !512
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !513
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %18, i64 0, i64 0, !dbg !514
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !515
  call void @f256_montymul(i64* %17, i64* %19, i64* %20), !dbg !516
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !517
  %22 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !518
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %22, i64 0, i64 0, !dbg !519
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !520
  call void @f256_montymul(i64* %21, i64* %23, i64* %24), !dbg !521
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !522
  %26 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !523
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 0, !dbg !524
  call void @f256_montysquare(i64* %25, i64* %27), !dbg !525
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !526
  %29 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 0, !dbg !527
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %29, i64 0, i64 0, !dbg !528
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !529
  call void @f256_montymul(i64* %28, i64* %30, i64* %31), !dbg !530
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !531
  %33 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !532
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %33, i64 0, i64 0, !dbg !533
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !534
  call void @f256_montymul(i64* %32, i64* %34, i64* %35), !dbg !535
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !536
  %37 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 1, !dbg !537
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %37, i64 0, i64 0, !dbg !538
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !539
  call void @f256_montymul(i64* %36, i64* %38, i64* %39), !dbg !540
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !541
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !542
  %42 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !543
  call void @f256_sub(i64* %40, i64* %41, i64* %42), !dbg !544
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !545
  %44 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !546
  %45 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !547
  call void @f256_sub(i64* %43, i64* %44, i64* %45), !dbg !548
  %46 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !549
  call void @f256_final_reduce(i64* %46), !dbg !550
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !551
  %48 = load i64, i64* %47, align 16, !dbg !551
  %49 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 1, !dbg !552
  %50 = load i64, i64* %49, align 8, !dbg !552
  %51 = or i64 %48, %50, !dbg !553
  %52 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 2, !dbg !554
  %53 = load i64, i64* %52, align 16, !dbg !554
  %54 = or i64 %51, %53, !dbg !555
  %55 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 3, !dbg !556
  %56 = load i64, i64* %55, align 8, !dbg !556
  %57 = or i64 %54, %56, !dbg !557
  %58 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 4, !dbg !558
  %59 = load i64, i64* %58, align 16, !dbg !558
  %60 = or i64 %57, %59, !dbg !559
  call void @llvm.dbg.value(metadata i64 %60, metadata !560, metadata !DIExpression()), !dbg !487
  %61 = lshr i64 %60, 32, !dbg !561
  %62 = or i64 %60, %61, !dbg !562
  %63 = trunc i64 %62 to i32, !dbg !563
  call void @llvm.dbg.value(metadata i32 %63, metadata !564, metadata !DIExpression()), !dbg !487
  %64 = sub i32 0, %63, !dbg !565
  %65 = or i32 %63, %64, !dbg !566
  %66 = lshr i32 %65, 31, !dbg !567
  call void @llvm.dbg.value(metadata i32 %66, metadata !564, metadata !DIExpression()), !dbg !487
  %67 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !568
  %68 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !569
  call void @f256_montysquare(i64* %67, i64* %68), !dbg !570
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !571
  %70 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !572
  %71 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !573
  call void @f256_montymul(i64* %69, i64* %70, i64* %71), !dbg !574
  %72 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !575
  %73 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !576
  %74 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !577
  call void @f256_montymul(i64* %72, i64* %73, i64* %74), !dbg !578
  %75 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !579
  %76 = getelementptr inbounds [5 x i64], [5 x i64]* %75, i64 0, i64 0, !dbg !580
  %77 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !581
  call void @f256_montysquare(i64* %76, i64* %77), !dbg !582
  %78 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !583
  %79 = getelementptr inbounds [5 x i64], [5 x i64]* %78, i64 0, i64 0, !dbg !584
  %80 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !585
  %81 = getelementptr inbounds [5 x i64], [5 x i64]* %80, i64 0, i64 0, !dbg !586
  %82 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !587
  call void @f256_sub(i64* %79, i64* %81, i64* %82), !dbg !588
  %83 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !589
  %84 = getelementptr inbounds [5 x i64], [5 x i64]* %83, i64 0, i64 0, !dbg !590
  %85 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !591
  %86 = getelementptr inbounds [5 x i64], [5 x i64]* %85, i64 0, i64 0, !dbg !592
  %87 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !593
  call void @f256_sub(i64* %84, i64* %86, i64* %87), !dbg !594
  %88 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !595
  %89 = getelementptr inbounds [5 x i64], [5 x i64]* %88, i64 0, i64 0, !dbg !596
  %90 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !597
  %91 = getelementptr inbounds [5 x i64], [5 x i64]* %90, i64 0, i64 0, !dbg !598
  %92 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !599
  call void @f256_sub(i64* %89, i64* %91, i64* %92), !dbg !600
  %93 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !601
  %94 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !602
  %95 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !603
  %96 = getelementptr inbounds [5 x i64], [5 x i64]* %95, i64 0, i64 0, !dbg !604
  call void @f256_sub(i64* %93, i64* %94, i64* %96), !dbg !605
  %97 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !606
  %98 = getelementptr inbounds [5 x i64], [5 x i64]* %97, i64 0, i64 0, !dbg !607
  %99 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !608
  %100 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !609
  call void @f256_montymul(i64* %98, i64* %99, i64* %100), !dbg !610
  %101 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !611
  %102 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !612
  %103 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !613
  call void @f256_montymul(i64* %101, i64* %102, i64* %103), !dbg !614
  %104 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !615
  %105 = getelementptr inbounds [5 x i64], [5 x i64]* %104, i64 0, i64 0, !dbg !616
  %106 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !617
  %107 = getelementptr inbounds [5 x i64], [5 x i64]* %106, i64 0, i64 0, !dbg !618
  %108 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !619
  call void @f256_sub(i64* %105, i64* %107, i64* %108), !dbg !620
  %109 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !621
  %110 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !622
  %111 = getelementptr inbounds [5 x i64], [5 x i64]* %110, i64 0, i64 0, !dbg !623
  %112 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !624
  %113 = getelementptr inbounds [5 x i64], [5 x i64]* %112, i64 0, i64 0, !dbg !625
  call void @f256_montymul(i64* %109, i64* %111, i64* %113), !dbg !626
  %114 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !627
  %115 = getelementptr inbounds [5 x i64], [5 x i64]* %114, i64 0, i64 0, !dbg !628
  %116 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !629
  %117 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !630
  call void @f256_montymul(i64* %115, i64* %116, i64* %117), !dbg !631
  ret i32 %66, !dbg !632
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_final_reduce(i64* %0) #0 !dbg !633 {
  %2 = alloca [5 x i64], align 16
  %3 = alloca [5 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !636, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.declare(metadata [5 x i64]* %2, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !640, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i64 0, metadata !642, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 0, metadata !643, metadata !DIExpression()), !dbg !637
  br label %4, !dbg !644

4:                                                ; preds = %15, %1
  %.01 = phi i64 [ 0, %1 ], [ %14, %15 ], !dbg !637
  %.0 = phi i32 [ 0, %1 ], [ %16, %15 ], !dbg !646
  call void @llvm.dbg.value(metadata i32 %.0, metadata !643, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i64 %.01, metadata !642, metadata !DIExpression()), !dbg !637
  %5 = icmp slt i32 %.0, 5, !dbg !647
  br i1 %5, label %6, label %17, !dbg !649

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64, !dbg !650
  %8 = getelementptr inbounds i64, i64* %0, i64 %7, !dbg !650
  %9 = load i64, i64* %8, align 8, !dbg !650
  %10 = add i64 %9, %.01, !dbg !652
  call void @llvm.dbg.value(metadata i64 %10, metadata !653, metadata !DIExpression()), !dbg !637
  %11 = and i64 %10, 4503599627370495, !dbg !654
  %12 = sext i32 %.0 to i64, !dbg !655
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 %12, !dbg !655
  store i64 %11, i64* %13, align 8, !dbg !656
  %14 = lshr i64 %10, 52, !dbg !657
  call void @llvm.dbg.value(metadata i64 %14, metadata !642, metadata !DIExpression()), !dbg !637
  br label %15, !dbg !658

15:                                               ; preds = %6
  %16 = add nsw i32 %.0, 1, !dbg !659
  call void @llvm.dbg.value(metadata i32 %16, metadata !643, metadata !DIExpression()), !dbg !637
  br label %4, !dbg !660, !llvm.loop !661

17:                                               ; preds = %4
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !663
  %19 = load i64, i64* %18, align 16, !dbg !663
  %20 = add i64 %19, 1, !dbg !664
  call void @llvm.dbg.value(metadata i64 %20, metadata !653, metadata !DIExpression()), !dbg !637
  %21 = and i64 %20, 4503599627370495, !dbg !665
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !666
  store i64 %21, i64* %22, align 16, !dbg !667
  %23 = lshr i64 %20, 52, !dbg !668
  call void @llvm.dbg.value(metadata i64 %23, metadata !642, metadata !DIExpression()), !dbg !637
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 1, !dbg !669
  %25 = load i64, i64* %24, align 8, !dbg !669
  %26 = add i64 %25, %23, !dbg !670
  call void @llvm.dbg.value(metadata i64 %26, metadata !653, metadata !DIExpression()), !dbg !637
  %27 = and i64 %26, 4503599627370495, !dbg !671
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 1, !dbg !672
  store i64 %27, i64* %28, align 8, !dbg !673
  %29 = lshr i64 %26, 52, !dbg !674
  call void @llvm.dbg.value(metadata i64 %29, metadata !642, metadata !DIExpression()), !dbg !637
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 2, !dbg !675
  %31 = load i64, i64* %30, align 16, !dbg !675
  %32 = add i64 %31, %29, !dbg !676
  call void @llvm.dbg.value(metadata i64 %32, metadata !653, metadata !DIExpression()), !dbg !637
  %33 = and i64 %32, 4503599627370495, !dbg !677
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 2, !dbg !678
  store i64 %33, i64* %34, align 16, !dbg !679
  %35 = lshr i64 %32, 52, !dbg !680
  call void @llvm.dbg.value(metadata i64 %35, metadata !642, metadata !DIExpression()), !dbg !637
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 3, !dbg !681
  %37 = load i64, i64* %36, align 8, !dbg !681
  %38 = add i64 %37, %35, !dbg !682
  call void @llvm.dbg.value(metadata i64 %38, metadata !653, metadata !DIExpression()), !dbg !637
  %39 = and i64 %38, 4503599627370495, !dbg !683
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 3, !dbg !684
  store i64 %39, i64* %40, align 8, !dbg !685
  %41 = lshr i64 %38, 52, !dbg !686
  call void @llvm.dbg.value(metadata i64 %41, metadata !642, metadata !DIExpression()), !dbg !637
  %42 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 4, !dbg !687
  %43 = load i64, i64* %42, align 16, !dbg !687
  %44 = add i64 %43, %41, !dbg !688
  %45 = add i64 %44, 65536, !dbg !689
  %46 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !690
  store i64 %45, i64* %46, align 16, !dbg !691
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 1, !dbg !692
  %48 = load i64, i64* %47, align 8, !dbg !692
  %49 = sub i64 %48, 17592186044416, !dbg !693
  call void @llvm.dbg.value(metadata i64 %49, metadata !653, metadata !DIExpression()), !dbg !637
  %50 = and i64 %49, 4503599627370495, !dbg !694
  %51 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 1, !dbg !695
  store i64 %50, i64* %51, align 8, !dbg !696
  %52 = lshr i64 %49, 63, !dbg !697
  call void @llvm.dbg.value(metadata i64 %52, metadata !642, metadata !DIExpression()), !dbg !637
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 2, !dbg !698
  %54 = load i64, i64* %53, align 16, !dbg !698
  %55 = sub i64 %54, %52, !dbg !699
  call void @llvm.dbg.value(metadata i64 %55, metadata !653, metadata !DIExpression()), !dbg !637
  %56 = and i64 %55, 4503599627370495, !dbg !700
  %57 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 2, !dbg !701
  store i64 %56, i64* %57, align 16, !dbg !702
  %58 = lshr i64 %55, 63, !dbg !703
  call void @llvm.dbg.value(metadata i64 %58, metadata !642, metadata !DIExpression()), !dbg !637
  %59 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 3, !dbg !704
  %60 = load i64, i64* %59, align 8, !dbg !704
  %61 = sub i64 %60, 68719476736, !dbg !705
  %62 = sub i64 %61, %58, !dbg !706
  call void @llvm.dbg.value(metadata i64 %62, metadata !653, metadata !DIExpression()), !dbg !637
  %63 = and i64 %62, 4503599627370495, !dbg !707
  %64 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 3, !dbg !708
  store i64 %63, i64* %64, align 8, !dbg !709
  %65 = lshr i64 %62, 63, !dbg !710
  call void @llvm.dbg.value(metadata i64 %65, metadata !642, metadata !DIExpression()), !dbg !637
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !711
  %67 = load i64, i64* %66, align 16, !dbg !712
  %68 = sub i64 %67, %65, !dbg !712
  store i64 %68, i64* %66, align 16, !dbg !712
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !713
  %70 = load i64, i64* %69, align 16, !dbg !713
  %71 = lshr i64 %70, 48, !dbg !714
  %72 = sub i64 0, %71, !dbg !715
  call void @llvm.dbg.value(metadata i64 %72, metadata !642, metadata !DIExpression()), !dbg !637
  %73 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !716
  %74 = load i64, i64* %73, align 16, !dbg !717
  %75 = and i64 %74, 281474976710655, !dbg !717
  store i64 %75, i64* %73, align 16, !dbg !717
  call void @llvm.dbg.value(metadata i32 0, metadata !643, metadata !DIExpression()), !dbg !637
  br label %76, !dbg !718

76:                                               ; preds = %93, %17
  %.1 = phi i32 [ 0, %17 ], [ %94, %93 ], !dbg !720
  call void @llvm.dbg.value(metadata i32 %.1, metadata !643, metadata !DIExpression()), !dbg !637
  %77 = icmp slt i32 %.1, 5, !dbg !721
  br i1 %77, label %78, label %95, !dbg !723

78:                                               ; preds = %76
  %79 = sext i32 %.1 to i64, !dbg !724
  %80 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 %79, !dbg !724
  %81 = load i64, i64* %80, align 8, !dbg !724
  %82 = sext i32 %.1 to i64, !dbg !726
  %83 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 %82, !dbg !726
  %84 = load i64, i64* %83, align 8, !dbg !726
  %85 = sext i32 %.1 to i64, !dbg !727
  %86 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 %85, !dbg !727
  %87 = load i64, i64* %86, align 8, !dbg !727
  %88 = xor i64 %84, %87, !dbg !728
  %89 = and i64 %72, %88, !dbg !729
  %90 = xor i64 %81, %89, !dbg !730
  %91 = sext i32 %.1 to i64, !dbg !731
  %92 = getelementptr inbounds i64, i64* %0, i64 %91, !dbg !731
  store i64 %90, i64* %92, align 8, !dbg !732
  br label %93, !dbg !733

93:                                               ; preds = %78
  %94 = add nsw i32 %.1, 1, !dbg !734
  call void @llvm.dbg.value(metadata i32 %94, metadata !643, metadata !DIExpression()), !dbg !637
  br label %76, !dbg !735, !llvm.loop !736

95:                                               ; preds = %76
  ret void, !dbg !738
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !739 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !742, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 %1, metadata !744, metadata !DIExpression()), !dbg !743
  %3 = xor i32 %0, %1, !dbg !745
  call void @llvm.dbg.value(metadata i32 %3, metadata !746, metadata !DIExpression()), !dbg !743
  %4 = sub i32 0, %3, !dbg !747
  %5 = or i32 %3, %4, !dbg !748
  %6 = lshr i32 %5, 31, !dbg !749
  %7 = call i32 @NOT(i32 %6), !dbg !750
  ret i32 %7, !dbg !751
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_double(%struct.p256_jacobian* %0) #0 !dbg !752 {
  %2 = alloca [5 x i64], align 16
  %3 = alloca [5 x i64], align 16
  %4 = alloca [5 x i64], align 16
  %5 = alloca [5 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata [5 x i64]* %2, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !759, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !761, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.declare(metadata [5 x i64]* %5, metadata !763, metadata !DIExpression()), !dbg !764
  %6 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !765
  %7 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !766
  %8 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !767
  call void @f256_montysquare(i64* %6, i64* %8), !dbg !768
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !769
  %10 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !770
  %11 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0, !dbg !771
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !772
  call void @f256_add(i64* %9, i64* %11, i64* %12), !dbg !773
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !774
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !775
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0, !dbg !776
  %16 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !777
  call void @f256_sub(i64* %13, i64* %15, i64* %16), !dbg !778
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !779
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !780
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !781
  call void @f256_montymul(i64* %17, i64* %18, i64* %19), !dbg !782
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !783
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !784
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !785
  call void @f256_add(i64* %20, i64* %21, i64* %22), !dbg !786
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !787
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !788
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !789
  call void @f256_add(i64* %23, i64* %24, i64* %25), !dbg !790
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !791
  %27 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !792
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %27, i64 0, i64 0, !dbg !793
  call void @f256_montysquare(i64* %26, i64* %28), !dbg !794
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !795
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !796
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !797
  call void @f256_add(i64* %29, i64* %30, i64* %31), !dbg !798
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !799
  %33 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !800
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %33, i64 0, i64 0, !dbg !801
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !802
  call void @f256_montymul(i64* %32, i64* %34, i64* %35), !dbg !803
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !804
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !805
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !806
  call void @f256_add(i64* %36, i64* %37, i64* %38), !dbg !807
  %39 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !808
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 0, !dbg !809
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !810
  call void @f256_montysquare(i64* %40, i64* %41), !dbg !811
  %42 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !812
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 0, !dbg !813
  %44 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !814
  %45 = getelementptr inbounds [5 x i64], [5 x i64]* %44, i64 0, i64 0, !dbg !815
  %46 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !816
  call void @f256_sub(i64* %43, i64* %45, i64* %46), !dbg !817
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !818
  %48 = getelementptr inbounds [5 x i64], [5 x i64]* %47, i64 0, i64 0, !dbg !819
  %49 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !820
  %50 = getelementptr inbounds [5 x i64], [5 x i64]* %49, i64 0, i64 0, !dbg !821
  %51 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !822
  call void @f256_sub(i64* %48, i64* %50, i64* %51), !dbg !823
  %52 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !824
  %53 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !825
  %54 = getelementptr inbounds [5 x i64], [5 x i64]* %53, i64 0, i64 0, !dbg !826
  %55 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !827
  %56 = getelementptr inbounds [5 x i64], [5 x i64]* %55, i64 0, i64 0, !dbg !828
  call void @f256_montymul(i64* %52, i64* %54, i64* %56), !dbg !829
  %57 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !830
  %58 = getelementptr inbounds [5 x i64], [5 x i64]* %57, i64 0, i64 0, !dbg !831
  %59 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !832
  %60 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !833
  call void @f256_add(i64* %58, i64* %59, i64* %60), !dbg !834
  %61 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !835
  %62 = getelementptr inbounds [5 x i64], [5 x i64]* %61, i64 0, i64 0, !dbg !836
  call void @f256_partial_reduce(i64* %62), !dbg !837
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !838
  %64 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !839
  %65 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !840
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %65, i64 0, i64 0, !dbg !841
  call void @f256_sub(i64* %63, i64* %64, i64* %66), !dbg !842
  %67 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !843
  %68 = getelementptr inbounds [5 x i64], [5 x i64]* %67, i64 0, i64 0, !dbg !844
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !845
  %70 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !846
  call void @f256_montymul(i64* %68, i64* %69, i64* %70), !dbg !847
  %71 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !848
  %72 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !849
  call void @f256_montysquare(i64* %71, i64* %72), !dbg !850
  %73 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !851
  %74 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !852
  %75 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !853
  call void @f256_add(i64* %73, i64* %74, i64* %75), !dbg !854
  %76 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !855
  %77 = getelementptr inbounds [5 x i64], [5 x i64]* %76, i64 0, i64 0, !dbg !856
  %78 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !857
  %79 = getelementptr inbounds [5 x i64], [5 x i64]* %78, i64 0, i64 0, !dbg !858
  %80 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !859
  call void @f256_sub(i64* %77, i64* %79, i64* %80), !dbg !860
  ret void, !dbg !861
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @point_encode(i8* %0, %struct.p256_jacobian* %1) #0 !dbg !862 {
  %3 = alloca [5 x i64], align 16
  %4 = alloca [5 x i64], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !865, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !867, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !868, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !870, metadata !DIExpression()), !dbg !871
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !872
  %6 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !873
  %7 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !874
  call void @f256_invert(i64* %5, i64* %7), !dbg !875
  %8 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !876
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !877
  call void @f256_montysquare(i64* %8, i64* %9), !dbg !878
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !879
  %11 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !880
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !881
  call void @f256_montymul(i64* %10, i64* %11, i64* %12), !dbg !882
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !883
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 0, !dbg !884
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0, !dbg !885
  %16 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !886
  call void @f256_montymul(i64* %13, i64* %15, i64* %16), !dbg !887
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !888
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 1, !dbg !889
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %18, i64 0, i64 0, !dbg !890
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !891
  call void @f256_montymul(i64* %17, i64* %19, i64* %20), !dbg !892
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !893
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !894
  call void @f256_frommonty(i64* %21, i64* %22), !dbg !895
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !896
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !897
  call void @f256_frommonty(i64* %23, i64* %24), !dbg !898
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !899
  call void @f256_final_reduce(i64* %25), !dbg !900
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !901
  call void @f256_final_reduce(i64* %26), !dbg !902
  %27 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !903
  store i8 4, i8* %27, align 1, !dbg !904
  %28 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !905
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !906
  call void @f256_encode(i8* %28, i64* %29), !dbg !907
  %30 = getelementptr inbounds i8, i8* %0, i64 33, !dbg !908
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !909
  call void @f256_encode(i8* %30, i64* %31), !dbg !910
  %32 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !911
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 0, !dbg !912
  %34 = load i64, i64* %33, align 8, !dbg !912
  %35 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !913
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %35, i64 0, i64 1, !dbg !914
  %37 = load i64, i64* %36, align 8, !dbg !914
  %38 = or i64 %34, %37, !dbg !915
  %39 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !916
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 2, !dbg !917
  %41 = load i64, i64* %40, align 8, !dbg !917
  %42 = or i64 %38, %41, !dbg !918
  %43 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !919
  %44 = getelementptr inbounds [5 x i64], [5 x i64]* %43, i64 0, i64 3, !dbg !920
  %45 = load i64, i64* %44, align 8, !dbg !920
  %46 = or i64 %42, %45, !dbg !921
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !922
  %48 = getelementptr inbounds [5 x i64], [5 x i64]* %47, i64 0, i64 4, !dbg !923
  %49 = load i64, i64* %48, align 8, !dbg !923
  %50 = or i64 %46, %49, !dbg !924
  call void @llvm.dbg.value(metadata i64 %50, metadata !925, metadata !DIExpression()), !dbg !866
  %51 = lshr i64 %50, 32, !dbg !926
  %52 = or i64 %50, %51, !dbg !927
  %53 = trunc i64 %52 to i32, !dbg !928
  %54 = call i32 @NEQ(i32 %53, i32 0), !dbg !929
  ret i32 %54, !dbg !930
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_invert(i64* %0, i64* %1) #0 !dbg !931 {
  %3 = alloca [5 x i64], align 16
  %4 = alloca [5 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !932, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64* %1, metadata !934, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !935, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !937, metadata !DIExpression()), !dbg !938
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !939
  %6 = bitcast i64* %5 to i8*, !dbg !939
  %7 = bitcast i64* %1 to i8*, !dbg !939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 8 %7, i64 40, i1 false), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !940, metadata !DIExpression()), !dbg !933
  br label %8, !dbg !941

8:                                                ; preds = %15, %2
  %.0 = phi i32 [ 0, %2 ], [ %16, %15 ], !dbg !943
  call void @llvm.dbg.value(metadata i32 %.0, metadata !940, metadata !DIExpression()), !dbg !933
  %9 = icmp slt i32 %.0, 30, !dbg !944
  br i1 %9, label %10, label %17, !dbg !946

10:                                               ; preds = %8
  %11 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !947
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !949
  call void @f256_montysquare(i64* %11, i64* %12), !dbg !950
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !951
  %14 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !952
  call void @f256_montymul(i64* %13, i64* %14, i64* %1), !dbg !953
  br label %15, !dbg !954

15:                                               ; preds = %10
  %16 = add nsw i32 %.0, 1, !dbg !955
  call void @llvm.dbg.value(metadata i32 %16, metadata !940, metadata !DIExpression()), !dbg !933
  br label %8, !dbg !956, !llvm.loop !957

17:                                               ; preds = %8
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !959
  %19 = bitcast i64* %18 to i8*, !dbg !959
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !959
  %21 = bitcast i64* %20 to i8*, !dbg !959
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 %21, i64 40, i1 false), !dbg !959
  call void @llvm.dbg.value(metadata i32 224, metadata !940, metadata !DIExpression()), !dbg !933
  br label %22, !dbg !960

22:                                               ; preds = %35, %17
  %.1 = phi i32 [ 224, %17 ], [ %36, %35 ], !dbg !962
  call void @llvm.dbg.value(metadata i32 %.1, metadata !940, metadata !DIExpression()), !dbg !933
  %23 = icmp sge i32 %.1, 0, !dbg !963
  br i1 %23, label %24, label %37, !dbg !965

24:                                               ; preds = %22
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !966
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !968
  call void @f256_montysquare(i64* %25, i64* %26), !dbg !969
  switch i32 %.1, label %34 [
    i32 0, label %27
    i32 2, label %27
    i32 192, label %27
    i32 224, label %27
    i32 3, label %30
    i32 34, label %30
    i32 65, label %30
  ], !dbg !970

27:                                               ; preds = %24, %24, %24, %24
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !971
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !973
  call void @f256_montymul(i64* %28, i64* %29, i64* %1), !dbg !974
  br label %34, !dbg !975

30:                                               ; preds = %24, %24, %24
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !976
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !977
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !978
  call void @f256_montymul(i64* %31, i64* %32, i64* %33), !dbg !979
  br label %34, !dbg !980

34:                                               ; preds = %30, %27, %24
  br label %35, !dbg !981

35:                                               ; preds = %34
  %36 = add nsw i32 %.1, -1, !dbg !982
  call void @llvm.dbg.value(metadata i32 %36, metadata !940, metadata !DIExpression()), !dbg !933
  br label %22, !dbg !983, !llvm.loop !984

37:                                               ; preds = %22
  %38 = bitcast i64* %0 to i8*, !dbg !986
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !986
  %40 = bitcast i64* %39 to i8*, !dbg !986
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 16 %40, i64 40, i1 false), !dbg !986
  ret void, !dbg !987
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_montysquare(i64* %0, i64* %1) #0 !dbg !988 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !989, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64* %1, metadata !991, metadata !DIExpression()), !dbg !990
  call void @f256_montymul(i64* %0, i64* %1, i64* %1), !dbg !992
  ret void, !dbg !993
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_montymul(i64* %0, i64* %1, i64* %2) #0 !dbg !994 {
  %4 = alloca [5 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !997, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64* %1, metadata !999, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64* %2, metadata !1000, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !1001, metadata !DIExpression()), !dbg !1002
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1003
  store i64 0, i64* %5, align 16, !dbg !1004
  %6 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !1005
  store i64 0, i64* %6, align 8, !dbg !1006
  %7 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !1007
  store i64 0, i64* %7, align 16, !dbg !1008
  %8 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !1009
  store i64 0, i64* %8, align 8, !dbg !1010
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !1011
  store i64 0, i64* %9, align 16, !dbg !1012
  call void @llvm.dbg.value(metadata i32 0, metadata !1013, metadata !DIExpression()), !dbg !998
  br label %10, !dbg !1014

10:                                               ; preds = %142, %3
  %.0 = phi i32 [ 0, %3 ], [ %143, %142 ], !dbg !1016
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1013, metadata !DIExpression()), !dbg !998
  %11 = icmp slt i32 %.0, 5, !dbg !1017
  br i1 %11, label %12, label %144, !dbg !1019

12:                                               ; preds = %10
  %13 = sext i32 %.0 to i64, !dbg !1020
  %14 = getelementptr inbounds i64, i64* %1, i64 %13, !dbg !1020
  %15 = load i64, i64* %14, align 8, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %15, metadata !1022, metadata !DIExpression()), !dbg !1023
  %16 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1024
  %17 = load i64, i64* %16, align 8, !dbg !1024
  %18 = zext i64 %17 to i128, !dbg !1025
  %19 = zext i64 %15 to i128, !dbg !1026
  %20 = mul i128 %18, %19, !dbg !1027
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1028
  %22 = load i64, i64* %21, align 16, !dbg !1028
  %23 = zext i64 %22 to i128, !dbg !1029
  %24 = add i128 %20, %23, !dbg !1030
  call void @llvm.dbg.value(metadata i128 %24, metadata !1031, metadata !DIExpression()), !dbg !1023
  %25 = trunc i128 %24 to i64, !dbg !1032
  %26 = and i64 %25, 4503599627370495, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %26, metadata !1034, metadata !DIExpression()), !dbg !1023
  %27 = lshr i128 %24, 52, !dbg !1035
  %28 = trunc i128 %27 to i64, !dbg !1036
  call void @llvm.dbg.value(metadata i64 %28, metadata !1037, metadata !DIExpression()), !dbg !1023
  %29 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1038
  %30 = load i64, i64* %29, align 8, !dbg !1038
  %31 = zext i64 %30 to i128, !dbg !1039
  %32 = zext i64 %15 to i128, !dbg !1040
  %33 = mul i128 %31, %32, !dbg !1041
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !1042
  %35 = load i64, i64* %34, align 8, !dbg !1042
  %36 = zext i64 %35 to i128, !dbg !1043
  %37 = add i128 %33, %36, !dbg !1044
  %38 = zext i64 %28 to i128, !dbg !1045
  %39 = add i128 %37, %38, !dbg !1046
  %40 = zext i64 %26 to i128, !dbg !1047
  %41 = shl i128 %40, 44, !dbg !1048
  %42 = add i128 %39, %41, !dbg !1049
  call void @llvm.dbg.value(metadata i128 %42, metadata !1031, metadata !DIExpression()), !dbg !1023
  %43 = trunc i128 %42 to i64, !dbg !1050
  %44 = and i64 %43, 4503599627370495, !dbg !1051
  %45 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1052
  store i64 %44, i64* %45, align 16, !dbg !1053
  %46 = lshr i128 %42, 52, !dbg !1054
  %47 = trunc i128 %46 to i64, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %47, metadata !1037, metadata !DIExpression()), !dbg !1023
  %48 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1056
  %49 = load i64, i64* %48, align 8, !dbg !1056
  %50 = zext i64 %49 to i128, !dbg !1057
  %51 = zext i64 %15 to i128, !dbg !1058
  %52 = mul i128 %50, %51, !dbg !1059
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !1060
  %54 = load i64, i64* %53, align 16, !dbg !1060
  %55 = zext i64 %54 to i128, !dbg !1061
  %56 = add i128 %52, %55, !dbg !1062
  %57 = zext i64 %47 to i128, !dbg !1063
  %58 = add i128 %56, %57, !dbg !1064
  call void @llvm.dbg.value(metadata i128 %58, metadata !1031, metadata !DIExpression()), !dbg !1023
  %59 = trunc i128 %58 to i64, !dbg !1065
  %60 = and i64 %59, 4503599627370495, !dbg !1066
  %61 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !1067
  store i64 %60, i64* %61, align 8, !dbg !1068
  %62 = lshr i128 %58, 52, !dbg !1069
  %63 = trunc i128 %62 to i64, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %63, metadata !1037, metadata !DIExpression()), !dbg !1023
  %64 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1071
  %65 = load i64, i64* %64, align 8, !dbg !1071
  %66 = zext i64 %65 to i128, !dbg !1072
  %67 = zext i64 %15 to i128, !dbg !1073
  %68 = mul i128 %66, %67, !dbg !1074
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !1075
  %70 = load i64, i64* %69, align 8, !dbg !1075
  %71 = zext i64 %70 to i128, !dbg !1076
  %72 = add i128 %68, %71, !dbg !1077
  %73 = zext i64 %63 to i128, !dbg !1078
  %74 = add i128 %72, %73, !dbg !1079
  %75 = zext i64 %26 to i128, !dbg !1080
  %76 = shl i128 %75, 36, !dbg !1081
  %77 = add i128 %74, %76, !dbg !1082
  call void @llvm.dbg.value(metadata i128 %77, metadata !1031, metadata !DIExpression()), !dbg !1023
  %78 = trunc i128 %77 to i64, !dbg !1083
  %79 = and i64 %78, 4503599627370495, !dbg !1084
  %80 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !1085
  store i64 %79, i64* %80, align 16, !dbg !1086
  %81 = lshr i128 %77, 52, !dbg !1087
  %82 = trunc i128 %81 to i64, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %82, metadata !1037, metadata !DIExpression()), !dbg !1023
  %83 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !1089
  %84 = load i64, i64* %83, align 8, !dbg !1089
  %85 = zext i64 %84 to i128, !dbg !1090
  %86 = zext i64 %15 to i128, !dbg !1091
  %87 = mul i128 %85, %86, !dbg !1092
  %88 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !1093
  %89 = load i64, i64* %88, align 16, !dbg !1093
  %90 = zext i64 %89 to i128, !dbg !1094
  %91 = add i128 %87, %90, !dbg !1095
  %92 = zext i64 %82 to i128, !dbg !1096
  %93 = add i128 %91, %92, !dbg !1097
  %94 = zext i64 %26 to i128, !dbg !1098
  %95 = shl i128 %94, 48, !dbg !1099
  %96 = add i128 %93, %95, !dbg !1100
  %97 = zext i64 %26 to i128, !dbg !1101
  %98 = shl i128 %97, 16, !dbg !1102
  %99 = sub i128 %96, %98, !dbg !1103
  call void @llvm.dbg.value(metadata i128 %99, metadata !1031, metadata !DIExpression()), !dbg !1023
  %100 = trunc i128 %99 to i64, !dbg !1104
  %101 = and i64 %100, 4503599627370495, !dbg !1105
  %102 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !1106
  store i64 %101, i64* %102, align 8, !dbg !1107
  %103 = lshr i128 %99, 52, !dbg !1108
  %104 = trunc i128 %103 to i64, !dbg !1109
  %105 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !1110
  store i64 %104, i64* %105, align 16, !dbg !1111
  %106 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !1112
  %107 = load i64, i64* %106, align 16, !dbg !1112
  %108 = lshr i64 %107, 48, !dbg !1113
  call void @llvm.dbg.value(metadata i64 %108, metadata !1114, metadata !DIExpression()), !dbg !1023
  %109 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1115
  %110 = load i64, i64* %109, align 16, !dbg !1116
  %111 = add i64 %110, %108, !dbg !1116
  store i64 %111, i64* %109, align 16, !dbg !1116
  %112 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !1117
  %113 = load i64, i64* %112, align 8, !dbg !1117
  %114 = shl i64 %108, 44, !dbg !1118
  %115 = sub i64 %113, %114, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %115, metadata !1120, metadata !DIExpression()), !dbg !1023
  %116 = and i64 %115, 4503599627370495, !dbg !1121
  %117 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !1122
  store i64 %116, i64* %117, align 8, !dbg !1123
  %118 = lshr i64 %115, 52, !dbg !1124
  %119 = sub i64 0, %118, !dbg !1125
  %120 = and i64 %119, 4095, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %120, metadata !1037, metadata !DIExpression()), !dbg !1023
  %121 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !1127
  %122 = load i64, i64* %121, align 16, !dbg !1127
  %123 = sub i64 %122, %120, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %123, metadata !1120, metadata !DIExpression()), !dbg !1023
  %124 = and i64 %123, 4503599627370495, !dbg !1129
  %125 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !1130
  store i64 %124, i64* %125, align 16, !dbg !1131
  %126 = lshr i64 %123, 63, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %126, metadata !1037, metadata !DIExpression()), !dbg !1023
  %127 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !1133
  %128 = load i64, i64* %127, align 8, !dbg !1133
  %129 = sub i64 %128, %126, !dbg !1134
  %130 = shl i64 %108, 36, !dbg !1135
  %131 = sub i64 %129, %130, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %131, metadata !1120, metadata !DIExpression()), !dbg !1023
  %132 = and i64 %131, 4503599627370495, !dbg !1137
  %133 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !1138
  store i64 %132, i64* %133, align 8, !dbg !1139
  %134 = lshr i64 %131, 63, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %134, metadata !1037, metadata !DIExpression()), !dbg !1023
  %135 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !1141
  %136 = load i64, i64* %135, align 16, !dbg !1141
  %137 = and i64 %136, 281474976710655, !dbg !1142
  call void @llvm.dbg.value(metadata i64 %137, metadata !1120, metadata !DIExpression()), !dbg !1023
  %138 = shl i64 %108, 16, !dbg !1143
  %139 = add i64 %137, %138, !dbg !1144
  %140 = sub i64 %139, %134, !dbg !1145
  %141 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !1146
  store i64 %140, i64* %141, align 16, !dbg !1147
  br label %142, !dbg !1148

142:                                              ; preds = %12
  %143 = add nsw i32 %.0, 1, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %143, metadata !1013, metadata !DIExpression()), !dbg !998
  br label %10, !dbg !1150, !llvm.loop !1151

144:                                              ; preds = %10
  %145 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1153
  %146 = load i64, i64* %145, align 16, !dbg !1153
  %147 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1154
  store i64 %146, i64* %147, align 8, !dbg !1155
  %148 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !1156
  %149 = load i64, i64* %148, align 8, !dbg !1156
  %150 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1157
  store i64 %149, i64* %150, align 8, !dbg !1158
  %151 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !1159
  %152 = load i64, i64* %151, align 16, !dbg !1159
  %153 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1160
  store i64 %152, i64* %153, align 8, !dbg !1161
  %154 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !1162
  %155 = load i64, i64* %154, align 8, !dbg !1162
  %156 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1163
  store i64 %155, i64* %156, align 8, !dbg !1164
  %157 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !1165
  %158 = load i64, i64* %157, align 16, !dbg !1165
  %159 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1166
  store i64 %158, i64* %159, align 8, !dbg !1167
  ret void, !dbg !1168
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_frommonty(i64* %0, i64* %1) #0 !dbg !50 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i64* %1, metadata !1171, metadata !DIExpression()), !dbg !1170
  call void @f256_montymul(i64* %0, i64* %1, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @f256_frommonty.one, i64 0, i64 0)), !dbg !1172
  ret void, !dbg !1173
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_encode(i8* %0, i64* %1) #0 !dbg !1174 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1177, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i64* %1, metadata !1179, metadata !DIExpression()), !dbg !1178
  %3 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1180
  %4 = load i64, i64* %3, align 8, !dbg !1180
  %5 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1181
  %6 = load i64, i64* %5, align 8, !dbg !1181
  %7 = shl i64 %6, 52, !dbg !1182
  %8 = or i64 %4, %7, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %8, metadata !1184, metadata !DIExpression()), !dbg !1178
  %9 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1185
  %10 = load i64, i64* %9, align 8, !dbg !1185
  %11 = lshr i64 %10, 12, !dbg !1186
  %12 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1187
  %13 = load i64, i64* %12, align 8, !dbg !1187
  %14 = shl i64 %13, 40, !dbg !1188
  %15 = or i64 %11, %14, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %15, metadata !1190, metadata !DIExpression()), !dbg !1178
  %16 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1191
  %17 = load i64, i64* %16, align 8, !dbg !1191
  %18 = lshr i64 %17, 24, !dbg !1192
  %19 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1193
  %20 = load i64, i64* %19, align 8, !dbg !1193
  %21 = shl i64 %20, 28, !dbg !1194
  %22 = or i64 %18, %21, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %22, metadata !1196, metadata !DIExpression()), !dbg !1178
  %23 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1197
  %24 = load i64, i64* %23, align 8, !dbg !1197
  %25 = lshr i64 %24, 36, !dbg !1198
  %26 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1199
  %27 = load i64, i64* %26, align 8, !dbg !1199
  %28 = shl i64 %27, 16, !dbg !1200
  %29 = or i64 %25, %28, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %29, metadata !1202, metadata !DIExpression()), !dbg !1178
  %30 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1203
  call void @br_enc64be(i8* %30, i64 %29), !dbg !1204
  %31 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1205
  call void @br_enc64be(i8* %31, i64 %22), !dbg !1206
  %32 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1207
  call void @br_enc64be(i8* %32, i64 %15), !dbg !1208
  %33 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !1209
  call void @br_enc64be(i8* %33, i64 %8), !dbg !1210
  ret void, !dbg !1211
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !1212 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1213, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i32 %1, metadata !1215, metadata !DIExpression()), !dbg !1214
  %3 = xor i32 %0, %1, !dbg !1216
  call void @llvm.dbg.value(metadata i32 %3, metadata !1217, metadata !DIExpression()), !dbg !1214
  %4 = sub i32 0, %3, !dbg !1218
  %5 = or i32 %3, %4, !dbg !1219
  %6 = lshr i32 %5, 31, !dbg !1220
  ret i32 %6, !dbg !1221
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64be(i8* %0, i64 %1) #0 !dbg !1222 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1225, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 %1, metadata !1227, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i8* %0, metadata !1228, metadata !DIExpression()), !dbg !1226
  %3 = lshr i64 %1, 32, !dbg !1229
  %4 = trunc i64 %3 to i32, !dbg !1230
  call void @br_enc32be(i8* %0, i32 %4), !dbg !1231
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1232
  %6 = trunc i64 %1 to i32, !dbg !1233
  call void @br_enc32be(i8* %5, i32 %6), !dbg !1234
  ret void, !dbg !1235
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !1236 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1239, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 %1, metadata !1241, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %0, metadata !1242, metadata !DIExpression()), !dbg !1240
  %3 = lshr i32 %1, 24, !dbg !1243
  %4 = trunc i32 %3 to i8, !dbg !1244
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1245
  store i8 %4, i8* %5, align 1, !dbg !1246
  %6 = lshr i32 %1, 16, !dbg !1247
  %7 = trunc i32 %6 to i8, !dbg !1248
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1249
  store i8 %7, i8* %8, align 1, !dbg !1250
  %9 = lshr i32 %1, 8, !dbg !1251
  %10 = trunc i32 %9 to i8, !dbg !1252
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1253
  store i8 %10, i8* %11, align 1, !dbg !1254
  %12 = trunc i32 %1 to i8, !dbg !1255
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1256
  store i8 %12, i8* %13, align 1, !dbg !1257
  ret void, !dbg !1258
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @f256_add(i64* %0, i64* %1, i64* %2) #0 !dbg !1259 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1260, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64* %1, metadata !1262, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64* %2, metadata !1263, metadata !DIExpression()), !dbg !1261
  %4 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1264
  %5 = load i64, i64* %4, align 8, !dbg !1264
  %6 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1265
  %7 = load i64, i64* %6, align 8, !dbg !1265
  %8 = add i64 %5, %7, !dbg !1266
  %9 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1267
  store i64 %8, i64* %9, align 8, !dbg !1268
  %10 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1269
  %11 = load i64, i64* %10, align 8, !dbg !1269
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1270
  %13 = load i64, i64* %12, align 8, !dbg !1270
  %14 = add i64 %11, %13, !dbg !1271
  %15 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1272
  store i64 %14, i64* %15, align 8, !dbg !1273
  %16 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1274
  %17 = load i64, i64* %16, align 8, !dbg !1274
  %18 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1275
  %19 = load i64, i64* %18, align 8, !dbg !1275
  %20 = add i64 %17, %19, !dbg !1276
  %21 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1277
  store i64 %20, i64* %21, align 8, !dbg !1278
  %22 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1279
  %23 = load i64, i64* %22, align 8, !dbg !1279
  %24 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1280
  %25 = load i64, i64* %24, align 8, !dbg !1280
  %26 = add i64 %23, %25, !dbg !1281
  %27 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1282
  store i64 %26, i64* %27, align 8, !dbg !1283
  %28 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1284
  %29 = load i64, i64* %28, align 8, !dbg !1284
  %30 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !1285
  %31 = load i64, i64* %30, align 8, !dbg !1285
  %32 = add i64 %29, %31, !dbg !1286
  %33 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1287
  store i64 %32, i64* %33, align 8, !dbg !1288
  ret void, !dbg !1289
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_sub(i64* %0, i64* %1, i64* %2) #0 !dbg !1290 {
  %4 = alloca [5 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !1291, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64* %1, metadata !1293, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64* %2, metadata !1294, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !1295, metadata !DIExpression()), !dbg !1296
  %5 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1297
  %6 = load i64, i64* %5, align 8, !dbg !1297
  %7 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1298
  %8 = load i64, i64* %7, align 8, !dbg !1298
  %9 = sub i64 %6, %8, !dbg !1299
  %10 = sub i64 %9, 8192, !dbg !1300
  call void @llvm.dbg.value(metadata i64 %10, metadata !1301, metadata !DIExpression()), !dbg !1292
  %11 = and i64 %10, 4503599627370495, !dbg !1302
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1303
  store i64 %11, i64* %12, align 16, !dbg !1304
  %13 = lshr i64 %10, 52, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %13, metadata !1306, metadata !DIExpression()), !dbg !1292
  %14 = and i64 %13, 2048, !dbg !1307
  %15 = sub i64 0, %14, !dbg !1308
  %16 = or i64 %13, %15, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %16, metadata !1306, metadata !DIExpression()), !dbg !1292
  %17 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1310
  %18 = load i64, i64* %17, align 8, !dbg !1310
  %19 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1311
  %20 = load i64, i64* %19, align 8, !dbg !1311
  %21 = sub i64 %18, %20, !dbg !1312
  %22 = add i64 %21, %16, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %22, metadata !1301, metadata !DIExpression()), !dbg !1292
  %23 = and i64 %22, 4503599627370495, !dbg !1314
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !1315
  store i64 %23, i64* %24, align 8, !dbg !1316
  %25 = lshr i64 %22, 52, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %25, metadata !1306, metadata !DIExpression()), !dbg !1292
  %26 = and i64 %25, 2048, !dbg !1318
  %27 = sub i64 0, %26, !dbg !1319
  %28 = or i64 %25, %27, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %28, metadata !1306, metadata !DIExpression()), !dbg !1292
  %29 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1321
  %30 = load i64, i64* %29, align 8, !dbg !1321
  %31 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1322
  %32 = load i64, i64* %31, align 8, !dbg !1322
  %33 = sub i64 %30, %32, !dbg !1323
  %34 = add i64 %33, %28, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %34, metadata !1301, metadata !DIExpression()), !dbg !1292
  %35 = and i64 %34, 4503599627370495, !dbg !1325
  %36 = add i64 %35, 32, !dbg !1326
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !1327
  store i64 %36, i64* %37, align 16, !dbg !1328
  %38 = lshr i64 %34, 52, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %38, metadata !1306, metadata !DIExpression()), !dbg !1292
  %39 = and i64 %38, 2048, !dbg !1330
  %40 = sub i64 0, %39, !dbg !1331
  %41 = or i64 %38, %40, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %41, metadata !1306, metadata !DIExpression()), !dbg !1292
  %42 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1333
  %43 = load i64, i64* %42, align 8, !dbg !1333
  %44 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1334
  %45 = load i64, i64* %44, align 8, !dbg !1334
  %46 = sub i64 %43, %45, !dbg !1335
  %47 = add i64 %46, %41, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %47, metadata !1301, metadata !DIExpression()), !dbg !1292
  %48 = and i64 %47, 4503599627370495, !dbg !1337
  %49 = add i64 %48, 562949953421312, !dbg !1338
  %50 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !1339
  store i64 %49, i64* %50, align 8, !dbg !1340
  %51 = lshr i64 %47, 52, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %51, metadata !1306, metadata !DIExpression()), !dbg !1292
  %52 = and i64 %51, 2048, !dbg !1342
  %53 = sub i64 0, %52, !dbg !1343
  %54 = or i64 %51, %53, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %54, metadata !1306, metadata !DIExpression()), !dbg !1292
  %55 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1345
  %56 = load i64, i64* %55, align 8, !dbg !1345
  %57 = add i64 2305843008676823040, %56, !dbg !1346
  %58 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !1347
  %59 = load i64, i64* %58, align 8, !dbg !1347
  %60 = sub i64 %57, %59, !dbg !1348
  %61 = add i64 %60, %54, !dbg !1349
  %62 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !1350
  store i64 %61, i64* %62, align 16, !dbg !1351
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !1352
  %64 = load i64, i64* %63, align 16, !dbg !1352
  %65 = lshr i64 %64, 48, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %65, metadata !1354, metadata !DIExpression()), !dbg !1292
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1355
  %67 = load i64, i64* %66, align 16, !dbg !1355
  %68 = add i64 %67, %65, !dbg !1356
  %69 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1357
  store i64 %68, i64* %69, align 8, !dbg !1358
  %70 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !1359
  %71 = load i64, i64* %70, align 8, !dbg !1359
  %72 = shl i64 %65, 44, !dbg !1360
  %73 = sub i64 %71, %72, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %73, metadata !1301, metadata !DIExpression()), !dbg !1292
  %74 = and i64 %73, 4503599627370495, !dbg !1362
  %75 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1363
  store i64 %74, i64* %75, align 8, !dbg !1364
  %76 = lshr i64 %73, 52, !dbg !1365
  %77 = sub i64 0, %76, !dbg !1366
  %78 = and i64 %77, 4095, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %78, metadata !1306, metadata !DIExpression()), !dbg !1292
  %79 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !1368
  %80 = load i64, i64* %79, align 16, !dbg !1368
  %81 = sub i64 %80, %78, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %81, metadata !1301, metadata !DIExpression()), !dbg !1292
  %82 = lshr i64 %81, 63, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %82, metadata !1306, metadata !DIExpression()), !dbg !1292
  %83 = shl i64 %82, 52, !dbg !1371
  %84 = add i64 %81, %83, !dbg !1372
  %85 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1373
  store i64 %84, i64* %85, align 8, !dbg !1374
  %86 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !1375
  %87 = load i64, i64* %86, align 8, !dbg !1375
  %88 = sub i64 %87, %82, !dbg !1376
  %89 = shl i64 %65, 36, !dbg !1377
  %90 = sub i64 %88, %89, !dbg !1378
  call void @llvm.dbg.value(metadata i64 %90, metadata !1301, metadata !DIExpression()), !dbg !1292
  %91 = lshr i64 %90, 63, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %91, metadata !1306, metadata !DIExpression()), !dbg !1292
  %92 = shl i64 %91, 52, !dbg !1380
  %93 = add i64 %90, %92, !dbg !1381
  %94 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1382
  store i64 %93, i64* %94, align 8, !dbg !1383
  %95 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !1384
  %96 = load i64, i64* %95, align 16, !dbg !1384
  %97 = and i64 %96, 281474976710655, !dbg !1385
  %98 = shl i64 %65, 16, !dbg !1386
  %99 = add i64 %97, %98, !dbg !1387
  %100 = sub i64 %99, %91, !dbg !1388
  %101 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1389
  store i64 %100, i64* %101, align 8, !dbg !1390
  ret void, !dbg !1391
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_partial_reduce(i64* %0) #0 !dbg !1392 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1393, metadata !DIExpression()), !dbg !1394
  %2 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1395
  %3 = load i64, i64* %2, align 8, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %3, metadata !1396, metadata !DIExpression()), !dbg !1394
  %4 = and i64 %3, 4503599627370495, !dbg !1397
  %5 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1398
  store i64 %4, i64* %5, align 8, !dbg !1399
  %6 = lshr i64 %3, 52, !dbg !1400
  call void @llvm.dbg.value(metadata i64 %6, metadata !1401, metadata !DIExpression()), !dbg !1394
  %7 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1402
  %8 = load i64, i64* %7, align 8, !dbg !1402
  %9 = add i64 %8, %6, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %9, metadata !1396, metadata !DIExpression()), !dbg !1394
  %10 = and i64 %9, 4503599627370495, !dbg !1404
  %11 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1405
  store i64 %10, i64* %11, align 8, !dbg !1406
  %12 = lshr i64 %9, 52, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %12, metadata !1401, metadata !DIExpression()), !dbg !1394
  %13 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1408
  %14 = load i64, i64* %13, align 8, !dbg !1408
  %15 = add i64 %14, %12, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %15, metadata !1396, metadata !DIExpression()), !dbg !1394
  %16 = and i64 %15, 4503599627370495, !dbg !1410
  %17 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1411
  store i64 %16, i64* %17, align 8, !dbg !1412
  %18 = lshr i64 %15, 52, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %18, metadata !1401, metadata !DIExpression()), !dbg !1394
  %19 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1414
  %20 = load i64, i64* %19, align 8, !dbg !1414
  %21 = add i64 %20, %18, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %21, metadata !1396, metadata !DIExpression()), !dbg !1394
  %22 = and i64 %21, 4503599627370495, !dbg !1416
  %23 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1417
  store i64 %22, i64* %23, align 8, !dbg !1418
  %24 = lshr i64 %21, 52, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %24, metadata !1401, metadata !DIExpression()), !dbg !1394
  %25 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1420
  %26 = load i64, i64* %25, align 8, !dbg !1421
  %27 = add i64 %26, %24, !dbg !1421
  store i64 %27, i64* %25, align 8, !dbg !1421
  %28 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1422
  %29 = load i64, i64* %28, align 8, !dbg !1422
  %30 = lshr i64 %29, 48, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %30, metadata !1424, metadata !DIExpression()), !dbg !1394
  %31 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1425
  %32 = load i64, i64* %31, align 8, !dbg !1426
  %33 = add i64 %32, %30, !dbg !1426
  store i64 %33, i64* %31, align 8, !dbg !1426
  %34 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1427
  %35 = load i64, i64* %34, align 8, !dbg !1427
  %36 = shl i64 %30, 44, !dbg !1428
  %37 = sub i64 %35, %36, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %37, metadata !1396, metadata !DIExpression()), !dbg !1394
  %38 = and i64 %37, 4503599627370495, !dbg !1430
  %39 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1431
  store i64 %38, i64* %39, align 8, !dbg !1432
  %40 = lshr i64 %37, 52, !dbg !1433
  %41 = sub i64 0, %40, !dbg !1434
  %42 = and i64 %41, 4095, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %42, metadata !1401, metadata !DIExpression()), !dbg !1394
  %43 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1436
  %44 = load i64, i64* %43, align 8, !dbg !1436
  %45 = sub i64 %44, %42, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %45, metadata !1396, metadata !DIExpression()), !dbg !1394
  %46 = and i64 %45, 4503599627370495, !dbg !1438
  %47 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1439
  store i64 %46, i64* %47, align 8, !dbg !1440
  %48 = lshr i64 %45, 63, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %48, metadata !1401, metadata !DIExpression()), !dbg !1394
  %49 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1442
  %50 = load i64, i64* %49, align 8, !dbg !1442
  %51 = sub i64 %50, %48, !dbg !1443
  %52 = shl i64 %30, 36, !dbg !1444
  %53 = sub i64 %51, %52, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %53, metadata !1396, metadata !DIExpression()), !dbg !1394
  %54 = and i64 %53, 4503599627370495, !dbg !1446
  %55 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1447
  store i64 %54, i64* %55, align 8, !dbg !1448
  %56 = lshr i64 %53, 63, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %56, metadata !1401, metadata !DIExpression()), !dbg !1394
  %57 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1450
  %58 = load i64, i64* %57, align 8, !dbg !1450
  %59 = and i64 %58, 281474976710655, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %59, metadata !1396, metadata !DIExpression()), !dbg !1394
  %60 = shl i64 %30, 16, !dbg !1452
  %61 = add i64 %59, %60, !dbg !1453
  %62 = sub i64 %61, %56, !dbg !1454
  %63 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1455
  store i64 %62, i64* %63, align 8, !dbg !1456
  ret void, !dbg !1457
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !1458 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1461, metadata !DIExpression()), !dbg !1462
  %2 = xor i32 %0, 1, !dbg !1463
  ret i32 %2, !dbg !1464
}

; Function Attrs: noinline nounwind uwtable
define internal void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* %1, i8* %2, i64 %3) #0 !dbg !1465 {
  %5 = alloca %struct.p256_jacobian, align 8
  %6 = alloca %struct.p256_affine, align 8
  %7 = alloca %struct.p256_jacobian, align 8
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !1469, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata %struct.p256_affine* %1, metadata !1471, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8* %2, metadata !1472, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %3, metadata !1473, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %5, metadata !1474, metadata !DIExpression()), !dbg !1475
  %8 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !1476
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 120, i1 false), !dbg !1476
  call void @llvm.dbg.value(metadata i32 1, metadata !1477, metadata !DIExpression()), !dbg !1470
  br label %9, !dbg !1478

9:                                                ; preds = %198, %4
  %.03 = phi i32 [ 1, %4 ], [ %.1, %198 ], !dbg !1479
  %.02 = phi i64 [ %3, %4 ], [ %10, %198 ]
  %.01 = phi i8* [ %2, %4 ], [ %13, %198 ]
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1472, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1473, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1477, metadata !DIExpression()), !dbg !1470
  %10 = add i64 %.02, -1, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %10, metadata !1473, metadata !DIExpression()), !dbg !1470
  %11 = icmp ugt i64 %.02, 0, !dbg !1481
  br i1 %11, label %12, label %199, !dbg !1478

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !1482
  call void @llvm.dbg.value(metadata i8* %13, metadata !1472, metadata !DIExpression()), !dbg !1470
  %14 = load i8, i8* %.01, align 1, !dbg !1484
  %15 = zext i8 %14 to i32, !dbg !1484
  call void @llvm.dbg.value(metadata i32 %15, metadata !1485, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 0, metadata !1487, metadata !DIExpression()), !dbg !1486
  br label %16, !dbg !1488

16:                                               ; preds = %196, %12
  %.05 = phi i32 [ %15, %12 ], [ %195, %196 ], !dbg !1486
  %.04 = phi i32 [ 0, %12 ], [ %197, %196 ], !dbg !1490
  %.1 = phi i32 [ %.03, %12 ], [ %194, %196 ], !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1477, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1487, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1485, metadata !DIExpression()), !dbg !1486
  %17 = icmp slt i32 %.04, 2, !dbg !1491
  br i1 %17, label %18, label %198, !dbg !1493

18:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.p256_affine* %6, metadata !1494, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %7, metadata !1497, metadata !DIExpression()), !dbg !1498
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !1499
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !1500
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !1501
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !1502
  %19 = lshr i32 %.05, 4, !dbg !1503
  %20 = and i32 %19, 15, !dbg !1504
  call void @llvm.dbg.value(metadata i32 %20, metadata !1505, metadata !DIExpression()), !dbg !1506
  %21 = call i32 @NEQ(i32 %20, i32 0), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %21, metadata !1508, metadata !DIExpression()), !dbg !1506
  %22 = bitcast %struct.p256_affine* %6 to i8*, !dbg !1509
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 80, i1 false), !dbg !1509
  call void @llvm.dbg.value(metadata i32 0, metadata !1510, metadata !DIExpression()), !dbg !1506
  br label %23, !dbg !1511

23:                                               ; preds = %130, %18
  %.06 = phi i32 [ 0, %18 ], [ %131, %130 ], !dbg !1513
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1510, metadata !DIExpression()), !dbg !1506
  %24 = icmp ult i32 %.06, 15, !dbg !1514
  br i1 %24, label %25, label %132, !dbg !1516

25:                                               ; preds = %23
  %26 = add i32 %.06, 1, !dbg !1517
  %27 = call i32 @EQ(i32 %20, i32 %26), !dbg !1519
  %28 = zext i32 %27 to i64, !dbg !1520
  %29 = sub i64 0, %28, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %29, metadata !1522, metadata !DIExpression()), !dbg !1506
  %30 = zext i32 %.06 to i64, !dbg !1523
  %31 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %30, !dbg !1523
  %32 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %31, i32 0, i32 0, !dbg !1524
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 0, !dbg !1523
  %34 = load i64, i64* %33, align 8, !dbg !1523
  %35 = and i64 %29, %34, !dbg !1525
  %36 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !1526
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %36, i64 0, i64 0, !dbg !1527
  %38 = load i64, i64* %37, align 8, !dbg !1528
  %39 = or i64 %38, %35, !dbg !1528
  store i64 %39, i64* %37, align 8, !dbg !1528
  %40 = zext i32 %.06 to i64, !dbg !1529
  %41 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %40, !dbg !1529
  %42 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %41, i32 0, i32 0, !dbg !1530
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 1, !dbg !1529
  %44 = load i64, i64* %43, align 8, !dbg !1529
  %45 = and i64 %29, %44, !dbg !1531
  %46 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !1532
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %46, i64 0, i64 1, !dbg !1533
  %48 = load i64, i64* %47, align 8, !dbg !1534
  %49 = or i64 %48, %45, !dbg !1534
  store i64 %49, i64* %47, align 8, !dbg !1534
  %50 = zext i32 %.06 to i64, !dbg !1535
  %51 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %50, !dbg !1535
  %52 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %51, i32 0, i32 0, !dbg !1536
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %52, i64 0, i64 2, !dbg !1535
  %54 = load i64, i64* %53, align 8, !dbg !1535
  %55 = and i64 %29, %54, !dbg !1537
  %56 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !1538
  %57 = getelementptr inbounds [5 x i64], [5 x i64]* %56, i64 0, i64 2, !dbg !1539
  %58 = load i64, i64* %57, align 8, !dbg !1540
  %59 = or i64 %58, %55, !dbg !1540
  store i64 %59, i64* %57, align 8, !dbg !1540
  %60 = zext i32 %.06 to i64, !dbg !1541
  %61 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %60, !dbg !1541
  %62 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %61, i32 0, i32 0, !dbg !1542
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %62, i64 0, i64 3, !dbg !1541
  %64 = load i64, i64* %63, align 8, !dbg !1541
  %65 = and i64 %29, %64, !dbg !1543
  %66 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !1544
  %67 = getelementptr inbounds [5 x i64], [5 x i64]* %66, i64 0, i64 3, !dbg !1545
  %68 = load i64, i64* %67, align 8, !dbg !1546
  %69 = or i64 %68, %65, !dbg !1546
  store i64 %69, i64* %67, align 8, !dbg !1546
  %70 = zext i32 %.06 to i64, !dbg !1547
  %71 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %70, !dbg !1547
  %72 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %71, i32 0, i32 0, !dbg !1548
  %73 = getelementptr inbounds [5 x i64], [5 x i64]* %72, i64 0, i64 4, !dbg !1547
  %74 = load i64, i64* %73, align 8, !dbg !1547
  %75 = and i64 %29, %74, !dbg !1549
  %76 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !1550
  %77 = getelementptr inbounds [5 x i64], [5 x i64]* %76, i64 0, i64 4, !dbg !1551
  %78 = load i64, i64* %77, align 8, !dbg !1552
  %79 = or i64 %78, %75, !dbg !1552
  store i64 %79, i64* %77, align 8, !dbg !1552
  %80 = zext i32 %.06 to i64, !dbg !1553
  %81 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %80, !dbg !1553
  %82 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %81, i32 0, i32 1, !dbg !1554
  %83 = getelementptr inbounds [5 x i64], [5 x i64]* %82, i64 0, i64 0, !dbg !1553
  %84 = load i64, i64* %83, align 8, !dbg !1553
  %85 = and i64 %29, %84, !dbg !1555
  %86 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !1556
  %87 = getelementptr inbounds [5 x i64], [5 x i64]* %86, i64 0, i64 0, !dbg !1557
  %88 = load i64, i64* %87, align 8, !dbg !1558
  %89 = or i64 %88, %85, !dbg !1558
  store i64 %89, i64* %87, align 8, !dbg !1558
  %90 = zext i32 %.06 to i64, !dbg !1559
  %91 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %90, !dbg !1559
  %92 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %91, i32 0, i32 1, !dbg !1560
  %93 = getelementptr inbounds [5 x i64], [5 x i64]* %92, i64 0, i64 1, !dbg !1559
  %94 = load i64, i64* %93, align 8, !dbg !1559
  %95 = and i64 %29, %94, !dbg !1561
  %96 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !1562
  %97 = getelementptr inbounds [5 x i64], [5 x i64]* %96, i64 0, i64 1, !dbg !1563
  %98 = load i64, i64* %97, align 8, !dbg !1564
  %99 = or i64 %98, %95, !dbg !1564
  store i64 %99, i64* %97, align 8, !dbg !1564
  %100 = zext i32 %.06 to i64, !dbg !1565
  %101 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %100, !dbg !1565
  %102 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %101, i32 0, i32 1, !dbg !1566
  %103 = getelementptr inbounds [5 x i64], [5 x i64]* %102, i64 0, i64 2, !dbg !1565
  %104 = load i64, i64* %103, align 8, !dbg !1565
  %105 = and i64 %29, %104, !dbg !1567
  %106 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !1568
  %107 = getelementptr inbounds [5 x i64], [5 x i64]* %106, i64 0, i64 2, !dbg !1569
  %108 = load i64, i64* %107, align 8, !dbg !1570
  %109 = or i64 %108, %105, !dbg !1570
  store i64 %109, i64* %107, align 8, !dbg !1570
  %110 = zext i32 %.06 to i64, !dbg !1571
  %111 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %110, !dbg !1571
  %112 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %111, i32 0, i32 1, !dbg !1572
  %113 = getelementptr inbounds [5 x i64], [5 x i64]* %112, i64 0, i64 3, !dbg !1571
  %114 = load i64, i64* %113, align 8, !dbg !1571
  %115 = and i64 %29, %114, !dbg !1573
  %116 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !1574
  %117 = getelementptr inbounds [5 x i64], [5 x i64]* %116, i64 0, i64 3, !dbg !1575
  %118 = load i64, i64* %117, align 8, !dbg !1576
  %119 = or i64 %118, %115, !dbg !1576
  store i64 %119, i64* %117, align 8, !dbg !1576
  %120 = zext i32 %.06 to i64, !dbg !1577
  %121 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %120, !dbg !1577
  %122 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %121, i32 0, i32 1, !dbg !1578
  %123 = getelementptr inbounds [5 x i64], [5 x i64]* %122, i64 0, i64 4, !dbg !1577
  %124 = load i64, i64* %123, align 8, !dbg !1577
  %125 = and i64 %29, %124, !dbg !1579
  %126 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !1580
  %127 = getelementptr inbounds [5 x i64], [5 x i64]* %126, i64 0, i64 4, !dbg !1581
  %128 = load i64, i64* %127, align 8, !dbg !1582
  %129 = or i64 %128, %125, !dbg !1582
  store i64 %129, i64* %127, align 8, !dbg !1582
  br label %130, !dbg !1583

130:                                              ; preds = %25
  %131 = add i32 %.06, 1, !dbg !1584
  call void @llvm.dbg.value(metadata i32 %131, metadata !1510, metadata !DIExpression()), !dbg !1506
  br label %23, !dbg !1585, !llvm.loop !1586

132:                                              ; preds = %23
  %133 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !1588
  %134 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !1588
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 120, i1 false), !dbg !1588
  %135 = call i32 @p256_add_mixed(%struct.p256_jacobian* %7, %struct.p256_affine* %6), !dbg !1589
  %136 = and i32 %21, %.1, !dbg !1590
  %137 = zext i32 %136 to i64, !dbg !1591
  %138 = sub i64 0, %137, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %138, metadata !1522, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i32 0, metadata !1593, metadata !DIExpression()), !dbg !1506
  br label %139, !dbg !1594

139:                                              ; preds = %186, %132
  %.0 = phi i32 [ 0, %132 ], [ %187, %186 ], !dbg !1596
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1593, metadata !DIExpression()), !dbg !1506
  %140 = icmp slt i32 %.0, 5, !dbg !1597
  br i1 %140, label %141, label %188, !dbg !1599

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 0, !dbg !1600
  %143 = sext i32 %.0 to i64, !dbg !1602
  %144 = getelementptr inbounds [5 x i64], [5 x i64]* %142, i64 0, i64 %143, !dbg !1602
  %145 = load i64, i64* %144, align 8, !dbg !1602
  %146 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !1603
  %147 = sext i32 %.0 to i64, !dbg !1604
  %148 = getelementptr inbounds [5 x i64], [5 x i64]* %146, i64 0, i64 %147, !dbg !1604
  %149 = load i64, i64* %148, align 8, !dbg !1604
  %150 = xor i64 %145, %149, !dbg !1605
  %151 = and i64 %138, %150, !dbg !1606
  %152 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 0, !dbg !1607
  %153 = sext i32 %.0 to i64, !dbg !1608
  %154 = getelementptr inbounds [5 x i64], [5 x i64]* %152, i64 0, i64 %153, !dbg !1608
  %155 = load i64, i64* %154, align 8, !dbg !1609
  %156 = xor i64 %155, %151, !dbg !1609
  store i64 %156, i64* %154, align 8, !dbg !1609
  %157 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 1, !dbg !1610
  %158 = sext i32 %.0 to i64, !dbg !1611
  %159 = getelementptr inbounds [5 x i64], [5 x i64]* %157, i64 0, i64 %158, !dbg !1611
  %160 = load i64, i64* %159, align 8, !dbg !1611
  %161 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !1612
  %162 = sext i32 %.0 to i64, !dbg !1613
  %163 = getelementptr inbounds [5 x i64], [5 x i64]* %161, i64 0, i64 %162, !dbg !1613
  %164 = load i64, i64* %163, align 8, !dbg !1613
  %165 = xor i64 %160, %164, !dbg !1614
  %166 = and i64 %138, %165, !dbg !1615
  %167 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 1, !dbg !1616
  %168 = sext i32 %.0 to i64, !dbg !1617
  %169 = getelementptr inbounds [5 x i64], [5 x i64]* %167, i64 0, i64 %168, !dbg !1617
  %170 = load i64, i64* %169, align 8, !dbg !1618
  %171 = xor i64 %170, %166, !dbg !1618
  store i64 %171, i64* %169, align 8, !dbg !1618
  %172 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 2, !dbg !1619
  %173 = sext i32 %.0 to i64, !dbg !1620
  %174 = getelementptr inbounds [5 x i64], [5 x i64]* %172, i64 0, i64 %173, !dbg !1620
  %175 = load i64, i64* %174, align 8, !dbg !1620
  %176 = sext i32 %.0 to i64, !dbg !1621
  %177 = getelementptr inbounds [5 x i64], [5 x i64]* @F256_R, i64 0, i64 %176, !dbg !1621
  %178 = load i64, i64* %177, align 8, !dbg !1621
  %179 = xor i64 %175, %178, !dbg !1622
  %180 = and i64 %138, %179, !dbg !1623
  %181 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 2, !dbg !1624
  %182 = sext i32 %.0 to i64, !dbg !1625
  %183 = getelementptr inbounds [5 x i64], [5 x i64]* %181, i64 0, i64 %182, !dbg !1625
  %184 = load i64, i64* %183, align 8, !dbg !1626
  %185 = xor i64 %184, %180, !dbg !1626
  store i64 %185, i64* %183, align 8, !dbg !1626
  br label %186, !dbg !1627

186:                                              ; preds = %141
  %187 = add nsw i32 %.0, 1, !dbg !1628
  call void @llvm.dbg.value(metadata i32 %187, metadata !1593, metadata !DIExpression()), !dbg !1506
  br label %139, !dbg !1629, !llvm.loop !1630

188:                                              ; preds = %139
  %189 = xor i32 %.1, -1, !dbg !1632
  %190 = and i32 %21, %189, !dbg !1633
  %191 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !1634
  %192 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !1635
  call void @br_ccopy(i32 %190, i8* %191, i8* %192, i64 120), !dbg !1636
  %193 = xor i32 %21, -1, !dbg !1637
  %194 = and i32 %.1, %193, !dbg !1638
  call void @llvm.dbg.value(metadata i32 %194, metadata !1477, metadata !DIExpression()), !dbg !1470
  %195 = shl i32 %.05, 4, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %195, metadata !1485, metadata !DIExpression()), !dbg !1486
  br label %196, !dbg !1640

196:                                              ; preds = %188
  %197 = add nsw i32 %.04, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i32 %197, metadata !1487, metadata !DIExpression()), !dbg !1486
  br label %16, !dbg !1642, !llvm.loop !1643

198:                                              ; preds = %16
  br label %9, !dbg !1478, !llvm.loop !1645

199:                                              ; preds = %9
  %200 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !1647
  %201 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !1647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 120, i1 false), !dbg !1647
  ret void, !dbg !1648
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @p256_add_mixed(%struct.p256_jacobian* %0, %struct.p256_affine* %1) #0 !dbg !1649 {
  %3 = alloca [5 x i64], align 16
  %4 = alloca [5 x i64], align 16
  %5 = alloca [5 x i64], align 16
  %6 = alloca [5 x i64], align 16
  %7 = alloca [5 x i64], align 16
  %8 = alloca [5 x i64], align 16
  %9 = alloca [5 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata %struct.p256_affine* %1, metadata !1654, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !1655, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !1657, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.declare(metadata [5 x i64]* %5, metadata !1659, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.declare(metadata [5 x i64]* %6, metadata !1661, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.declare(metadata [5 x i64]* %7, metadata !1663, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.declare(metadata [5 x i64]* %8, metadata !1665, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.declare(metadata [5 x i64]* %9, metadata !1667, metadata !DIExpression()), !dbg !1668
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1669
  %11 = bitcast i64* %10 to i8*, !dbg !1669
  %12 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1670
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 0, !dbg !1669
  %14 = bitcast i64* %13 to i8*, !dbg !1669
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %14, i64 40, i1 false), !dbg !1669
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1671
  %16 = bitcast i64* %15 to i8*, !dbg !1671
  %17 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1672
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %17, i64 0, i64 0, !dbg !1671
  %19 = bitcast i64* %18 to i8*, !dbg !1671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 8 %19, i64 40, i1 false), !dbg !1671
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1673
  %21 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1674
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %21, i64 0, i64 0, !dbg !1675
  call void @f256_montysquare(i64* %20, i64* %22), !dbg !1676
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1677
  %24 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i32 0, i32 0, !dbg !1678
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 0, !dbg !1679
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1680
  call void @f256_montymul(i64* %23, i64* %25, i64* %26), !dbg !1681
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !1682
  %28 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1683
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %28, i64 0, i64 0, !dbg !1684
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1685
  call void @f256_montymul(i64* %27, i64* %29, i64* %30), !dbg !1686
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1687
  %32 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i32 0, i32 1, !dbg !1688
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 0, !dbg !1689
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !1690
  call void @f256_montymul(i64* %31, i64* %33, i64* %34), !dbg !1691
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1692
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1693
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1694
  call void @f256_sub(i64* %35, i64* %36, i64* %37), !dbg !1695
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1696
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1697
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1698
  call void @f256_sub(i64* %38, i64* %39, i64* %40), !dbg !1699
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1700
  call void @f256_final_reduce(i64* %41), !dbg !1701
  %42 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1702
  %43 = load i64, i64* %42, align 16, !dbg !1702
  %44 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 1, !dbg !1703
  %45 = load i64, i64* %44, align 8, !dbg !1703
  %46 = or i64 %43, %45, !dbg !1704
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 2, !dbg !1705
  %48 = load i64, i64* %47, align 16, !dbg !1705
  %49 = or i64 %46, %48, !dbg !1706
  %50 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 3, !dbg !1707
  %51 = load i64, i64* %50, align 8, !dbg !1707
  %52 = or i64 %49, %51, !dbg !1708
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 4, !dbg !1709
  %54 = load i64, i64* %53, align 16, !dbg !1709
  %55 = or i64 %52, %54, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %55, metadata !1711, metadata !DIExpression()), !dbg !1653
  %56 = lshr i64 %55, 32, !dbg !1712
  %57 = or i64 %55, %56, !dbg !1713
  %58 = trunc i64 %57 to i32, !dbg !1714
  call void @llvm.dbg.value(metadata i32 %58, metadata !1715, metadata !DIExpression()), !dbg !1653
  %59 = sub i32 0, %58, !dbg !1716
  %60 = or i32 %58, %59, !dbg !1717
  %61 = lshr i32 %60, 31, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %61, metadata !1715, metadata !DIExpression()), !dbg !1653
  %62 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !1719
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1720
  call void @f256_montysquare(i64* %62, i64* %63), !dbg !1721
  %64 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1722
  %65 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1723
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !1724
  call void @f256_montymul(i64* %64, i64* %65, i64* %66), !dbg !1725
  %67 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !1726
  %68 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !1727
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1728
  call void @f256_montymul(i64* %67, i64* %68, i64* %69), !dbg !1729
  %70 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1730
  %71 = getelementptr inbounds [5 x i64], [5 x i64]* %70, i64 0, i64 0, !dbg !1731
  %72 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1732
  call void @f256_montysquare(i64* %71, i64* %72), !dbg !1733
  %73 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1734
  %74 = getelementptr inbounds [5 x i64], [5 x i64]* %73, i64 0, i64 0, !dbg !1735
  %75 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1736
  %76 = getelementptr inbounds [5 x i64], [5 x i64]* %75, i64 0, i64 0, !dbg !1737
  %77 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !1738
  call void @f256_sub(i64* %74, i64* %76, i64* %77), !dbg !1739
  %78 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1740
  %79 = getelementptr inbounds [5 x i64], [5 x i64]* %78, i64 0, i64 0, !dbg !1741
  %80 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1742
  %81 = getelementptr inbounds [5 x i64], [5 x i64]* %80, i64 0, i64 0, !dbg !1743
  %82 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1744
  call void @f256_sub(i64* %79, i64* %81, i64* %82), !dbg !1745
  %83 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1746
  %84 = getelementptr inbounds [5 x i64], [5 x i64]* %83, i64 0, i64 0, !dbg !1747
  %85 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1748
  %86 = getelementptr inbounds [5 x i64], [5 x i64]* %85, i64 0, i64 0, !dbg !1749
  %87 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1750
  call void @f256_sub(i64* %84, i64* %86, i64* %87), !dbg !1751
  %88 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1752
  %89 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1753
  %90 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1754
  %91 = getelementptr inbounds [5 x i64], [5 x i64]* %90, i64 0, i64 0, !dbg !1755
  call void @f256_sub(i64* %88, i64* %89, i64* %91), !dbg !1756
  %92 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1757
  %93 = getelementptr inbounds [5 x i64], [5 x i64]* %92, i64 0, i64 0, !dbg !1758
  %94 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1759
  %95 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1760
  call void @f256_montymul(i64* %93, i64* %94, i64* %95), !dbg !1761
  %96 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1762
  %97 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !1763
  %98 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1764
  call void @f256_montymul(i64* %96, i64* %97, i64* %98), !dbg !1765
  %99 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1766
  %100 = getelementptr inbounds [5 x i64], [5 x i64]* %99, i64 0, i64 0, !dbg !1767
  %101 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1768
  %102 = getelementptr inbounds [5 x i64], [5 x i64]* %101, i64 0, i64 0, !dbg !1769
  %103 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1770
  call void @f256_sub(i64* %100, i64* %102, i64* %103), !dbg !1771
  %104 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1772
  %105 = getelementptr inbounds [5 x i64], [5 x i64]* %104, i64 0, i64 0, !dbg !1773
  %106 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1774
  %107 = getelementptr inbounds [5 x i64], [5 x i64]* %106, i64 0, i64 0, !dbg !1775
  %108 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1776
  call void @f256_montymul(i64* %105, i64* %107, i64* %108), !dbg !1777
  ret i32 %61, !dbg !1778
}

; Function Attrs: noinline nounwind uwtable
define internal void @window_to_affine(%struct.p256_affine* %0, %struct.p256_jacobian* %1, i32 %2) #0 !dbg !1779 {
  %4 = alloca [16 x [5 x i64]], align 16
  call void @llvm.dbg.value(metadata %struct.p256_affine* %0, metadata !1783, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !1785, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i32 %2, metadata !1786, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.declare(metadata [16 x [5 x i64]]* %4, metadata !1787, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i32 0, metadata !1792, metadata !DIExpression()), !dbg !1784
  br label %5, !dbg !1793

5:                                                ; preds = %50, %3
  %.02 = phi i32 [ 0, %3 ], [ %51, %50 ], !dbg !1795
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1792, metadata !DIExpression()), !dbg !1784
  %6 = add nsw i32 %.02, 1, !dbg !1796
  %7 = icmp slt i32 %6, %2, !dbg !1798
  br i1 %7, label %8, label %52, !dbg !1799

8:                                                ; preds = %5
  %9 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 15, !dbg !1800
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !1802
  %11 = bitcast i64* %10 to i8*, !dbg !1802
  %12 = sext i32 %.02 to i64, !dbg !1803
  %13 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %12, !dbg !1803
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %13, i32 0, i32 2, !dbg !1804
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0, !dbg !1802
  %16 = bitcast i64* %15 to i8*, !dbg !1802
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %16, i64 40, i1 false), !dbg !1802
  %17 = sext i32 %.02 to i64, !dbg !1805
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %17, !dbg !1805
  %19 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %18, i32 0, i32 2, !dbg !1806
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %19, i64 0, i64 0, !dbg !1807
  %21 = bitcast i64* %20 to i8*, !dbg !1807
  %22 = add nsw i32 %.02, 1, !dbg !1808
  %23 = sext i32 %22 to i64, !dbg !1809
  %24 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %23, !dbg !1809
  %25 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %24, i32 0, i32 2, !dbg !1810
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %25, i64 0, i64 0, !dbg !1807
  %27 = bitcast i64* %26 to i8*, !dbg !1807
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %27, i64 40, i1 false), !dbg !1807
  %28 = add nsw i32 %.02, 1, !dbg !1811
  %29 = sext i32 %28 to i64, !dbg !1812
  %30 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %29, !dbg !1812
  %31 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %30, i32 0, i32 2, !dbg !1813
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %31, i64 0, i64 0, !dbg !1814
  %33 = bitcast i64* %32 to i8*, !dbg !1814
  %34 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 15, !dbg !1815
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %34, i64 0, i64 0, !dbg !1814
  %36 = bitcast i64* %35 to i8*, !dbg !1814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %36, i64 40, i1 false), !dbg !1814
  %37 = ashr i32 %.02, 1, !dbg !1816
  %38 = sext i32 %37 to i64, !dbg !1817
  %39 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %38, !dbg !1817
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 0, !dbg !1817
  %41 = sext i32 %.02 to i64, !dbg !1818
  %42 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %41, !dbg !1818
  %43 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %42, i32 0, i32 2, !dbg !1819
  %44 = getelementptr inbounds [5 x i64], [5 x i64]* %43, i64 0, i64 0, !dbg !1818
  %45 = add nsw i32 %.02, 1, !dbg !1820
  %46 = sext i32 %45 to i64, !dbg !1821
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %46, !dbg !1821
  %48 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %47, i32 0, i32 2, !dbg !1822
  %49 = getelementptr inbounds [5 x i64], [5 x i64]* %48, i64 0, i64 0, !dbg !1821
  call void @f256_montymul(i64* %40, i64* %44, i64* %49), !dbg !1823
  br label %50, !dbg !1824

50:                                               ; preds = %8
  %51 = add nsw i32 %.02, 2, !dbg !1825
  call void @llvm.dbg.value(metadata i32 %51, metadata !1792, metadata !DIExpression()), !dbg !1784
  br label %5, !dbg !1826, !llvm.loop !1827

52:                                               ; preds = %5
  %53 = and i32 %2, 1, !dbg !1829
  %54 = icmp ne i32 %53, 0, !dbg !1831
  br i1 %54, label %55, label %73, !dbg !1832

55:                                               ; preds = %52
  %56 = ashr i32 %2, 1, !dbg !1833
  %57 = sext i32 %56 to i64, !dbg !1835
  %58 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %57, !dbg !1835
  %59 = getelementptr inbounds [5 x i64], [5 x i64]* %58, i64 0, i64 0, !dbg !1836
  %60 = bitcast i64* %59 to i8*, !dbg !1836
  %61 = sub nsw i32 %2, 1, !dbg !1837
  %62 = sext i32 %61 to i64, !dbg !1838
  %63 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %62, !dbg !1838
  %64 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %63, i32 0, i32 2, !dbg !1839
  %65 = getelementptr inbounds [5 x i64], [5 x i64]* %64, i64 0, i64 0, !dbg !1836
  %66 = bitcast i64* %65 to i8*, !dbg !1836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %66, i64 40, i1 false), !dbg !1836
  %67 = sub nsw i32 %2, 1, !dbg !1840
  %68 = sext i32 %67 to i64, !dbg !1841
  %69 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %68, !dbg !1841
  %70 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %69, i32 0, i32 2, !dbg !1842
  %71 = getelementptr inbounds [5 x i64], [5 x i64]* %70, i64 0, i64 0, !dbg !1843
  %72 = bitcast i64* %71 to i8*, !dbg !1843
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 16 bitcast ([5 x i64]* @F256_R to i8*), i64 40, i1 false), !dbg !1843
  br label %73, !dbg !1844

73:                                               ; preds = %55, %52
  call void @llvm.dbg.value(metadata i32 1, metadata !1845, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i32 2, metadata !1846, metadata !DIExpression()), !dbg !1784
  br label %74, !dbg !1847

74:                                               ; preds = %131, %73
  %.01 = phi i32 [ 1, %73 ], [ %132, %131 ], !dbg !1849
  %.0 = phi i32 [ 2, %73 ], [ %133, %131 ], !dbg !1849
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1846, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1845, metadata !DIExpression()), !dbg !1784
  %75 = icmp slt i32 %.0, %2, !dbg !1850
  br i1 %75, label %76, label %134, !dbg !1852

76:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i32 0, metadata !1792, metadata !DIExpression()), !dbg !1784
  br label %77, !dbg !1853

77:                                               ; preds = %93, %76
  %.1 = phi i32 [ 0, %76 ], [ %94, %93 ], !dbg !1856
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1792, metadata !DIExpression()), !dbg !1784
  %78 = icmp slt i32 %.1, %2, !dbg !1857
  br i1 %78, label %79, label %95, !dbg !1859

79:                                               ; preds = %77
  %80 = sext i32 %.1 to i64, !dbg !1860
  %81 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %80, !dbg !1860
  %82 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %81, i32 0, i32 2, !dbg !1862
  %83 = getelementptr inbounds [5 x i64], [5 x i64]* %82, i64 0, i64 0, !dbg !1860
  %84 = sext i32 %.1 to i64, !dbg !1863
  %85 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %84, !dbg !1863
  %86 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %85, i32 0, i32 2, !dbg !1864
  %87 = getelementptr inbounds [5 x i64], [5 x i64]* %86, i64 0, i64 0, !dbg !1863
  %88 = ashr i32 %.1, %.01, !dbg !1865
  %89 = xor i32 %88, 1, !dbg !1866
  %90 = sext i32 %89 to i64, !dbg !1867
  %91 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %90, !dbg !1867
  %92 = getelementptr inbounds [5 x i64], [5 x i64]* %91, i64 0, i64 0, !dbg !1867
  call void @f256_montymul(i64* %83, i64* %87, i64* %92), !dbg !1868
  br label %93, !dbg !1869

93:                                               ; preds = %79
  %94 = add nsw i32 %.1, 1, !dbg !1870
  call void @llvm.dbg.value(metadata i32 %94, metadata !1792, metadata !DIExpression()), !dbg !1784
  br label %77, !dbg !1871, !llvm.loop !1872

95:                                               ; preds = %77
  %96 = add nsw i32 %2, %.0, !dbg !1874
  %97 = sub nsw i32 %96, 1, !dbg !1875
  %98 = ashr i32 %97, %.01, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %98, metadata !1877, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i32 0, metadata !1792, metadata !DIExpression()), !dbg !1784
  br label %99, !dbg !1879

99:                                               ; preds = %115, %95
  %.2 = phi i32 [ 0, %95 ], [ %116, %115 ], !dbg !1881
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1792, metadata !DIExpression()), !dbg !1784
  %100 = ashr i32 %98, 1, !dbg !1882
  %101 = icmp slt i32 %.2, %100, !dbg !1884
  br i1 %101, label %102, label %117, !dbg !1885

102:                                              ; preds = %99
  %103 = sext i32 %.2 to i64, !dbg !1886
  %104 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %103, !dbg !1886
  %105 = getelementptr inbounds [5 x i64], [5 x i64]* %104, i64 0, i64 0, !dbg !1886
  %106 = shl i32 %.2, 1, !dbg !1888
  %107 = sext i32 %106 to i64, !dbg !1889
  %108 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %107, !dbg !1889
  %109 = getelementptr inbounds [5 x i64], [5 x i64]* %108, i64 0, i64 0, !dbg !1889
  %110 = shl i32 %.2, 1, !dbg !1890
  %111 = add nsw i32 %110, 1, !dbg !1891
  %112 = sext i32 %111 to i64, !dbg !1892
  %113 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %112, !dbg !1892
  %114 = getelementptr inbounds [5 x i64], [5 x i64]* %113, i64 0, i64 0, !dbg !1892
  call void @f256_montymul(i64* %105, i64* %109, i64* %114), !dbg !1893
  br label %115, !dbg !1894

115:                                              ; preds = %102
  %116 = add nsw i32 %.2, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %116, metadata !1792, metadata !DIExpression()), !dbg !1784
  br label %99, !dbg !1896, !llvm.loop !1897

117:                                              ; preds = %99
  %118 = and i32 %98, 1, !dbg !1899
  %119 = icmp ne i32 %118, 0, !dbg !1901
  br i1 %119, label %120, label %130, !dbg !1902

120:                                              ; preds = %117
  %121 = ashr i32 %98, 1, !dbg !1903
  %122 = sext i32 %121 to i64, !dbg !1905
  %123 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %122, !dbg !1905
  %124 = getelementptr inbounds [5 x i64], [5 x i64]* %123, i64 0, i64 0, !dbg !1906
  %125 = bitcast i64* %124 to i8*, !dbg !1906
  %126 = sext i32 %98 to i64, !dbg !1907
  %127 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %126, !dbg !1907
  %128 = getelementptr inbounds [5 x i64], [5 x i64]* %127, i64 0, i64 0, !dbg !1906
  %129 = bitcast i64* %128 to i8*, !dbg !1906
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %129, i64 40, i1 false), !dbg !1906
  br label %130, !dbg !1908

130:                                              ; preds = %120, %117
  br label %131, !dbg !1909

131:                                              ; preds = %130
  %132 = add nsw i32 %.01, 1, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %132, metadata !1845, metadata !DIExpression()), !dbg !1784
  %133 = shl i32 %.0, 1, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %133, metadata !1846, metadata !DIExpression()), !dbg !1784
  br label %74, !dbg !1912, !llvm.loop !1913

134:                                              ; preds = %74
  %135 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 15, !dbg !1915
  %136 = getelementptr inbounds [5 x i64], [5 x i64]* %135, i64 0, i64 0, !dbg !1915
  %137 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 0, !dbg !1916
  %138 = getelementptr inbounds [5 x i64], [5 x i64]* %137, i64 0, i64 0, !dbg !1916
  call void @f256_invert(i64* %136, i64* %138), !dbg !1917
  call void @llvm.dbg.value(metadata i32 0, metadata !1792, metadata !DIExpression()), !dbg !1784
  br label %139, !dbg !1918

139:                                              ; preds = %180, %134
  %.3 = phi i32 [ 0, %134 ], [ %181, %180 ], !dbg !1920
  call void @llvm.dbg.value(metadata i32 %.3, metadata !1792, metadata !DIExpression()), !dbg !1784
  %140 = icmp slt i32 %.3, %2, !dbg !1921
  br i1 %140, label %141, label %182, !dbg !1923

141:                                              ; preds = %139
  %142 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 13, !dbg !1924
  %143 = getelementptr inbounds [5 x i64], [5 x i64]* %142, i64 0, i64 0, !dbg !1924
  %144 = sext i32 %.3 to i64, !dbg !1926
  %145 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %144, !dbg !1926
  %146 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %145, i32 0, i32 2, !dbg !1927
  %147 = getelementptr inbounds [5 x i64], [5 x i64]* %146, i64 0, i64 0, !dbg !1926
  %148 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 15, !dbg !1928
  %149 = getelementptr inbounds [5 x i64], [5 x i64]* %148, i64 0, i64 0, !dbg !1928
  call void @f256_montymul(i64* %143, i64* %147, i64* %149), !dbg !1929
  %150 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 14, !dbg !1930
  %151 = getelementptr inbounds [5 x i64], [5 x i64]* %150, i64 0, i64 0, !dbg !1930
  %152 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 13, !dbg !1931
  %153 = getelementptr inbounds [5 x i64], [5 x i64]* %152, i64 0, i64 0, !dbg !1931
  call void @f256_montysquare(i64* %151, i64* %153), !dbg !1932
  %154 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 13, !dbg !1933
  %155 = getelementptr inbounds [5 x i64], [5 x i64]* %154, i64 0, i64 0, !dbg !1933
  %156 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 13, !dbg !1934
  %157 = getelementptr inbounds [5 x i64], [5 x i64]* %156, i64 0, i64 0, !dbg !1934
  %158 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 14, !dbg !1935
  %159 = getelementptr inbounds [5 x i64], [5 x i64]* %158, i64 0, i64 0, !dbg !1935
  call void @f256_montymul(i64* %155, i64* %157, i64* %159), !dbg !1936
  %160 = sext i32 %.3 to i64, !dbg !1937
  %161 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %0, i64 %160, !dbg !1937
  %162 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %161, i32 0, i32 0, !dbg !1938
  %163 = getelementptr inbounds [5 x i64], [5 x i64]* %162, i64 0, i64 0, !dbg !1937
  %164 = sext i32 %.3 to i64, !dbg !1939
  %165 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %164, !dbg !1939
  %166 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %165, i32 0, i32 0, !dbg !1940
  %167 = getelementptr inbounds [5 x i64], [5 x i64]* %166, i64 0, i64 0, !dbg !1939
  %168 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 14, !dbg !1941
  %169 = getelementptr inbounds [5 x i64], [5 x i64]* %168, i64 0, i64 0, !dbg !1941
  call void @f256_montymul(i64* %163, i64* %167, i64* %169), !dbg !1942
  %170 = sext i32 %.3 to i64, !dbg !1943
  %171 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %0, i64 %170, !dbg !1943
  %172 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %171, i32 0, i32 1, !dbg !1944
  %173 = getelementptr inbounds [5 x i64], [5 x i64]* %172, i64 0, i64 0, !dbg !1943
  %174 = sext i32 %.3 to i64, !dbg !1945
  %175 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %174, !dbg !1945
  %176 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %175, i32 0, i32 1, !dbg !1946
  %177 = getelementptr inbounds [5 x i64], [5 x i64]* %176, i64 0, i64 0, !dbg !1945
  %178 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 13, !dbg !1947
  %179 = getelementptr inbounds [5 x i64], [5 x i64]* %178, i64 0, i64 0, !dbg !1947
  call void @f256_montymul(i64* %173, i64* %177, i64* %179), !dbg !1948
  br label %180, !dbg !1949

180:                                              ; preds = %141
  %181 = add nsw i32 %.3, 1, !dbg !1950
  call void @llvm.dbg.value(metadata i32 %181, metadata !1792, metadata !DIExpression()), !dbg !1784
  br label %139, !dbg !1951, !llvm.loop !1952

182:                                              ; preds = %139
  ret void, !dbg !1954
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @f256_decode(i64* %0, i8* %1) #0 !dbg !1955 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1958, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8* %1, metadata !1960, metadata !DIExpression()), !dbg !1959
  %3 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1961
  %4 = call i64 @br_dec64be(i8* %3), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %4, metadata !1963, metadata !DIExpression()), !dbg !1959
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1964
  %6 = call i64 @br_dec64be(i8* %5), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %6, metadata !1966, metadata !DIExpression()), !dbg !1959
  %7 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1967
  %8 = call i64 @br_dec64be(i8* %7), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %8, metadata !1969, metadata !DIExpression()), !dbg !1959
  %9 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1970
  %10 = call i64 @br_dec64be(i8* %9), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %10, metadata !1972, metadata !DIExpression()), !dbg !1959
  %11 = and i64 %10, 4503599627370495, !dbg !1973
  %12 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1974
  store i64 %11, i64* %12, align 8, !dbg !1975
  %13 = lshr i64 %10, 52, !dbg !1976
  %14 = shl i64 %8, 12, !dbg !1977
  %15 = or i64 %13, %14, !dbg !1978
  %16 = and i64 %15, 4503599627370495, !dbg !1979
  %17 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1980
  store i64 %16, i64* %17, align 8, !dbg !1981
  %18 = lshr i64 %8, 40, !dbg !1982
  %19 = shl i64 %6, 24, !dbg !1983
  %20 = or i64 %18, %19, !dbg !1984
  %21 = and i64 %20, 4503599627370495, !dbg !1985
  %22 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1986
  store i64 %21, i64* %22, align 8, !dbg !1987
  %23 = lshr i64 %6, 28, !dbg !1988
  %24 = shl i64 %4, 36, !dbg !1989
  %25 = or i64 %23, %24, !dbg !1990
  %26 = and i64 %25, 4503599627370495, !dbg !1991
  %27 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1992
  store i64 %26, i64* %27, align 8, !dbg !1993
  %28 = lshr i64 %4, 16, !dbg !1994
  %29 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1995
  store i64 %28, i64* %29, align 8, !dbg !1996
  ret void, !dbg !1997
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_tomonty(i64* %0, i64* %1) #0 !dbg !35 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1998, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64* %1, metadata !2000, metadata !DIExpression()), !dbg !1999
  call void @f256_montymul(i64* %0, i64* %1, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @f256_tomonty.R2, i64 0, i64 0)), !dbg !2001
  ret void, !dbg !2002
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @br_dec64be(i8* %0) #0 !dbg !2003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2006, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8* %0, metadata !2008, metadata !DIExpression()), !dbg !2007
  %2 = call i32 @br_dec32be(i8* %0), !dbg !2009
  %3 = zext i32 %2 to i64, !dbg !2010
  %4 = shl i64 %3, 32, !dbg !2011
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2012
  %6 = call i32 @br_dec32be(i8* %5), !dbg !2013
  %7 = zext i32 %6 to i64, !dbg !2014
  %8 = or i64 %4, %7, !dbg !2015
  ret i64 %8, !dbg !2016
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !2017 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2020, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8* %0, metadata !2022, metadata !DIExpression()), !dbg !2021
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2023
  %3 = load i8, i8* %2, align 1, !dbg !2023
  %4 = zext i8 %3 to i32, !dbg !2024
  %5 = shl i32 %4, 24, !dbg !2025
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2026
  %7 = load i8, i8* %6, align 1, !dbg !2026
  %8 = zext i8 %7 to i32, !dbg !2027
  %9 = shl i32 %8, 16, !dbg !2028
  %10 = or i32 %5, %9, !dbg !2029
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2030
  %12 = load i8, i8* %11, align 1, !dbg !2030
  %13 = zext i8 %12 to i32, !dbg !2031
  %14 = shl i32 %13, 8, !dbg !2032
  %15 = or i32 %10, %14, !dbg !2033
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2034
  %17 = load i8, i8* %16, align 1, !dbg !2034
  %18 = zext i8 %17 to i32, !dbg !2035
  %19 = or i32 %15, %18, !dbg !2036
  ret i32 %19, !dbg !2037
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_scalar(i8* %0, i64 %1) #0 !dbg !2038 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2041, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 %1, metadata !2043, metadata !DIExpression()), !dbg !2042
  %3 = icmp ugt i64 %1, 32, !dbg !2044
  br i1 %3, label %4, label %5, !dbg !2046

4:                                                ; preds = %2
  br label %40, !dbg !2047

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 0, metadata !2050, metadata !DIExpression()), !dbg !2042
  br label %6, !dbg !2051

6:                                                ; preds = %13, %5
  %.04 = phi i32 [ 0, %5 ], [ %12, %13 ], !dbg !2042
  %.01 = phi i64 [ 0, %5 ], [ %14, %13 ], !dbg !2053
  call void @llvm.dbg.value(metadata i64 %.01, metadata !2050, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2049, metadata !DIExpression()), !dbg !2042
  %7 = icmp ult i64 %.01, %1, !dbg !2054
  br i1 %7, label %8, label %15, !dbg !2056

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !2057
  %10 = load i8, i8* %9, align 1, !dbg !2057
  %11 = zext i8 %10 to i32, !dbg !2057
  %12 = or i32 %.04, %11, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %12, metadata !2049, metadata !DIExpression()), !dbg !2042
  br label %13, !dbg !2060

13:                                               ; preds = %8
  %14 = add i64 %.01, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %14, metadata !2050, metadata !DIExpression()), !dbg !2042
  br label %6, !dbg !2062, !llvm.loop !2063

15:                                               ; preds = %6
  %16 = icmp eq i64 %1, 32, !dbg !2065
  br i1 %16, label %17, label %35, !dbg !2067

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 0, metadata !2068, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 0, metadata !2050, metadata !DIExpression()), !dbg !2042
  br label %18, !dbg !2069

18:                                               ; preds = %32, %17
  %.02 = phi i32 [ 0, %17 ], [ %31, %32 ], !dbg !2072
  %.1 = phi i64 [ 0, %17 ], [ %33, %32 ], !dbg !2073
  call void @llvm.dbg.value(metadata i64 %.1, metadata !2050, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2068, metadata !DIExpression()), !dbg !2042
  %19 = icmp ult i64 %.1, %1, !dbg !2074
  br i1 %19, label %20, label %34, !dbg !2076

20:                                               ; preds = %18
  %21 = call i32 @EQ0(i32 %.02), !dbg !2077
  %22 = sub nsw i32 0, %21, !dbg !2079
  %23 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !2080
  %24 = load i8, i8* %23, align 1, !dbg !2080
  %25 = zext i8 %24 to i32, !dbg !2080
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* @P256_N, i64 0, i64 %.1, !dbg !2081
  %27 = load i8, i8* %26, align 1, !dbg !2081
  %28 = zext i8 %27 to i32, !dbg !2081
  %29 = call i32 @CMP(i32 %25, i32 %28), !dbg !2082
  %30 = and i32 %22, %29, !dbg !2083
  %31 = or i32 %.02, %30, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %31, metadata !2068, metadata !DIExpression()), !dbg !2042
  br label %32, !dbg !2085

32:                                               ; preds = %20
  %33 = add i64 %.1, 1, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %33, metadata !2050, metadata !DIExpression()), !dbg !2042
  br label %18, !dbg !2087, !llvm.loop !2088

34:                                               ; preds = %18
  br label %36, !dbg !2090

35:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 -1, metadata !2068, metadata !DIExpression()), !dbg !2042
  br label %36

36:                                               ; preds = %35, %34
  %.13 = phi i32 [ %.02, %34 ], [ -1, %35 ], !dbg !2091
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2068, metadata !DIExpression()), !dbg !2042
  %37 = call i32 @NEQ(i32 %.04, i32 0), !dbg !2092
  %38 = call i32 @LT0(i32 %.13), !dbg !2093
  %39 = and i32 %37, %38, !dbg !2094
  br label %40, !dbg !2095

40:                                               ; preds = %36, %4
  %.0 = phi i32 [ 0, %4 ], [ %39, %36 ], !dbg !2042
  ret i32 %.0, !dbg !2096
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ0(i32 %0) #0 !dbg !2097 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2100, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %0, metadata !2102, metadata !DIExpression()), !dbg !2101
  %2 = sub i32 0, %0, !dbg !2103
  %3 = or i32 %0, %2, !dbg !2104
  %4 = xor i32 %3, -1, !dbg !2105
  %5 = lshr i32 %4, 31, !dbg !2106
  ret i32 %5, !dbg !2107
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @CMP(i32 %0, i32 %1) #0 !dbg !2108 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2111, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i32 %1, metadata !2113, metadata !DIExpression()), !dbg !2112
  %3 = call i32 @GT(i32 %0, i32 %1), !dbg !2114
  %4 = call i32 @GT(i32 %1, i32 %0), !dbg !2115
  %5 = sub nsw i32 0, %4, !dbg !2116
  %6 = or i32 %3, %5, !dbg !2117
  ret i32 %6, !dbg !2118
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LT0(i32 %0) #0 !dbg !2119 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2120, metadata !DIExpression()), !dbg !2121
  %2 = lshr i32 %0, 31, !dbg !2122
  ret i32 %2, !dbg !2123
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !2124 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2125, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %1, metadata !2127, metadata !DIExpression()), !dbg !2126
  %3 = sub i32 %1, %0, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %3, metadata !2129, metadata !DIExpression()), !dbg !2126
  %4 = xor i32 %0, %1, !dbg !2130
  %5 = xor i32 %0, %3, !dbg !2131
  %6 = and i32 %4, %5, !dbg !2132
  %7 = xor i32 %3, %6, !dbg !2133
  %8 = lshr i32 %7, 31, !dbg !2134
  ret i32 %8, !dbg !2135
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.br_ec_impl* @br_ec_p256_m62_get() #0 !dbg !2136 {
  ret %struct.br_ec_impl* @br_ec_p256_m62, !dbg !2140
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.dbg.cu = !{!95, !97, !2}
!llvm.ident = !{!99, !99, !99}
!llvm.module.flags = !{!100, !101, !102}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "br_ec_p256_m62", scope: !2, file: !3, line: 1739, type: !63, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/ec/ec_p256_m62.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m62")
!4 = !{}
!5 = !{!6, !11, !15, !18, !19, !20}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !9, line: 41, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 26, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !12, line: 27, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !17)
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !{!0, !22, !28, !33, !44, !46, !48, !51}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "P256_G", scope: !2, file: !3, line: 33, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 520, elements: !26)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!26 = !{!27}
!27 = !DISubrange(count: 65)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "P256_N", scope: !2, file: !3, line: 43, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 32)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "R2", scope: !35, file: !3, line: 455, type: !41, isLocal: true, isDefinition: true)
!35 = distinct !DISubprogram(name: "f256_tomonty", scope: !3, file: !3, line: 447, type: !36, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !39}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 320, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 5)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "P256_B_MONTY", scope: !2, file: !3, line: 96, type: !41, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "F256_R", scope: !2, file: !3, line: 89, type: !41, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "one", scope: !50, file: !3, line: 472, type: !41, isLocal: true, isDefinition: true)
!50 = distinct !DISubprogram(name: "f256_frommonty", scope: !3, file: !3, line: 467, type: !36, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "P256_Gwin", scope: !2, file: !3, line: 1492, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 9600, elements: !61)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "p256_affine", file: !3, line: 610, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 607, size: 640, elements: !57)
!57 = !{!58, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !56, file: !3, line: 608, baseType: !59, size: 320)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !42)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !56, file: !3, line: 609, baseType: !59, size: 320, offset: 320)
!61 = !{!62}
!62 = !DISubrange(count: 15)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_ec_impl", file: !65, line: 415, baseType: !66)
!65 = !DIFile(filename: "../BearSSL/inc/bearssl_ec.h", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m62")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 270, size: 448, elements: !67)
!67 = !{!68, !69, !77, !78, !82, !87, !91}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "supported_curves", scope: !66, file: !65, line: 279, baseType: !11, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !66, file: !65, line: 292, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !10, !74}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !17)
!76 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !66, file: !65, line: 306, baseType: !70, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !66, file: !65, line: 318, baseType: !79, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!75, !10, !74}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "mul", scope: !66, file: !65, line: 350, baseType: !83, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!11, !86, !75, !73, !75, !10}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "mulgen", scope: !66, file: !65, line: 366, baseType: !88, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!75, !86, !73, !75, !10}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "muladd", scope: !66, file: !65, line: 412, baseType: !92, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!11, !86, !73, !75, !73, !75, !73, !75, !10}
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "api_mul.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m62")
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!98 = !DIFile(filename: "../BearSSL/src/codec/ccopy.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m62")
!99 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!100 = !{i32 7, !"Dwarf Version", i32 4}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{i32 1, !"wchar_size", i32 4}
!103 = distinct !DISubprogram(name: "api_mul_wrapper", scope: !96, file: !96, line: 7, type: !104, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !4)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !86, !75, !73, !75, !10}
!106 = !DILocalVariable(name: "G", arg: 1, scope: !103, file: !96, line: 7, type: !86)
!107 = !DILocation(line: 0, scope: !103)
!108 = !DILocalVariable(name: "Glen", arg: 2, scope: !103, file: !96, line: 7, type: !75)
!109 = !DILocalVariable(name: "kb", arg: 3, scope: !103, file: !96, line: 8, type: !73)
!110 = !DILocalVariable(name: "kblen", arg: 4, scope: !103, file: !96, line: 8, type: !75)
!111 = !DILocalVariable(name: "curve", arg: 5, scope: !103, file: !96, line: 8, type: !10)
!112 = !DILocation(line: 9, column: 12, scope: !103)
!113 = !DILocation(line: 9, column: 2, scope: !103)
!114 = !DILocation(line: 10, column: 12, scope: !103)
!115 = !DILocation(line: 10, column: 2, scope: !103)
!116 = !DILocation(line: 11, column: 12, scope: !103)
!117 = !DILocation(line: 11, column: 2, scope: !103)
!118 = !DILocation(line: 12, column: 12, scope: !103)
!119 = !DILocation(line: 12, column: 2, scope: !103)
!120 = !DILocation(line: 13, column: 12, scope: !103)
!121 = !DILocation(line: 13, column: 2, scope: !103)
!122 = !DILocation(line: 15, column: 12, scope: !103)
!123 = !DILocation(line: 15, column: 2, scope: !103)
!124 = !DILocalVariable(name: "iec", scope: !103, file: !96, line: 16, type: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_ec_impl", file: !65, line: 415, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 270, size: 448, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "supported_curves", scope: !128, file: !65, line: 279, baseType: !11, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !128, file: !65, line: 292, baseType: !70, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !128, file: !65, line: 306, baseType: !70, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !128, file: !65, line: 318, baseType: !79, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "mul", scope: !128, file: !65, line: 350, baseType: !83, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mulgen", scope: !128, file: !65, line: 366, baseType: !88, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "muladd", scope: !128, file: !65, line: 412, baseType: !92, size: 64, offset: 384)
!137 = !DILocation(line: 18, column: 7, scope: !103)
!138 = !DILocation(line: 18, column: 2, scope: !103)
!139 = !DILocation(line: 19, column: 1, scope: !103)
!140 = distinct !DISubprogram(name: "api_mul_wrapper_t", scope: !96, file: !96, line: 30, type: !141, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !4)
!141 = !DISubroutineType(types: !142)
!142 = !{null}
!143 = !DILocation(line: 32, column: 21, scope: !140)
!144 = !DILocalVariable(name: "G", scope: !140, file: !96, line: 32, type: !86)
!145 = !DILocation(line: 0, scope: !140)
!146 = !DILocation(line: 33, column: 17, scope: !140)
!147 = !DILocalVariable(name: "Glen", scope: !140, file: !96, line: 33, type: !75)
!148 = !DILocation(line: 34, column: 28, scope: !140)
!149 = !DILocalVariable(name: "kb", scope: !140, file: !96, line: 34, type: !73)
!150 = !DILocation(line: 35, column: 18, scope: !140)
!151 = !DILocalVariable(name: "kblen", scope: !140, file: !96, line: 35, type: !75)
!152 = !DILocalVariable(name: "curve", scope: !140, file: !96, line: 36, type: !10)
!153 = !DILocalVariable(name: "iec", scope: !140, file: !96, line: 38, type: !125)
!154 = !DILocation(line: 40, column: 7, scope: !140)
!155 = !DILocation(line: 40, column: 2, scope: !140)
!156 = !DILocation(line: 41, column: 1, scope: !140)
!157 = distinct !DISubprogram(name: "br_ccopy", scope: !98, file: !98, line: 29, type: !158, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !97, retainedNodes: !4)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !11, !20, !160, !75}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!162 = !DILocalVariable(name: "ctl", arg: 1, scope: !157, file: !98, line: 29, type: !11)
!163 = !DILocation(line: 0, scope: !157)
!164 = !DILocalVariable(name: "dst", arg: 2, scope: !157, file: !98, line: 29, type: !20)
!165 = !DILocalVariable(name: "src", arg: 3, scope: !157, file: !98, line: 29, type: !160)
!166 = !DILocalVariable(name: "len", arg: 4, scope: !157, file: !98, line: 29, type: !75)
!167 = !DILocalVariable(name: "d", scope: !157, file: !98, line: 31, type: !86)
!168 = !DILocalVariable(name: "s", scope: !157, file: !98, line: 32, type: !73)
!169 = !DILocation(line: 36, column: 2, scope: !157)
!170 = !DILocation(line: 36, column: 13, scope: !157)
!171 = !DILocation(line: 36, column: 16, scope: !157)
!172 = !DILocation(line: 39, column: 10, scope: !173)
!173 = distinct !DILexicalBlock(scope: !157, file: !98, line: 36, column: 21)
!174 = !DILocation(line: 39, column: 7, scope: !173)
!175 = !DILocalVariable(name: "x", scope: !173, file: !98, line: 37, type: !11)
!176 = !DILocation(line: 0, scope: !173)
!177 = !DILocation(line: 40, column: 7, scope: !173)
!178 = !DILocalVariable(name: "y", scope: !173, file: !98, line: 37, type: !11)
!179 = !DILocation(line: 41, column: 8, scope: !173)
!180 = !DILocation(line: 41, column: 6, scope: !173)
!181 = !DILocation(line: 42, column: 5, scope: !173)
!182 = distinct !{!182, !169, !183, !184}
!183 = !DILocation(line: 43, column: 2, scope: !157)
!184 = !{!"llvm.loop.mustprogress"}
!185 = !DILocation(line: 44, column: 1, scope: !157)
!186 = distinct !DISubprogram(name: "MUX", scope: !187, file: !187, line: 770, type: !188, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !97, retainedNodes: !4)
!187 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m62")
!188 = !DISubroutineType(types: !189)
!189 = !{!11, !11, !11, !11}
!190 = !DILocalVariable(name: "ctl", arg: 1, scope: !186, file: !187, line: 770, type: !11)
!191 = !DILocation(line: 0, scope: !186)
!192 = !DILocalVariable(name: "x", arg: 2, scope: !186, file: !187, line: 770, type: !11)
!193 = !DILocalVariable(name: "y", arg: 3, scope: !186, file: !187, line: 770, type: !11)
!194 = !DILocation(line: 772, column: 14, scope: !186)
!195 = !DILocation(line: 772, column: 24, scope: !186)
!196 = !DILocation(line: 772, column: 19, scope: !186)
!197 = !DILocation(line: 772, column: 11, scope: !186)
!198 = !DILocation(line: 772, column: 2, scope: !186)
!199 = distinct !DISubprogram(name: "api_generator", scope: !3, file: !3, line: 51, type: !71, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!200 = !DILocalVariable(name: "curve", arg: 1, scope: !199, file: !3, line: 51, type: !10)
!201 = !DILocation(line: 0, scope: !199)
!202 = !DILocalVariable(name: "len", arg: 2, scope: !199, file: !3, line: 51, type: !74)
!203 = !DILocation(line: 54, column: 7, scope: !199)
!204 = !DILocation(line: 55, column: 2, scope: !199)
!205 = distinct !DISubprogram(name: "api_order", scope: !3, file: !3, line: 59, type: !71, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!206 = !DILocalVariable(name: "curve", arg: 1, scope: !205, file: !3, line: 59, type: !10)
!207 = !DILocation(line: 0, scope: !205)
!208 = !DILocalVariable(name: "len", arg: 2, scope: !205, file: !3, line: 59, type: !74)
!209 = !DILocation(line: 62, column: 7, scope: !205)
!210 = !DILocation(line: 63, column: 2, scope: !205)
!211 = distinct !DISubprogram(name: "api_xoff", scope: !3, file: !3, line: 67, type: !80, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!212 = !DILocalVariable(name: "curve", arg: 1, scope: !211, file: !3, line: 67, type: !10)
!213 = !DILocation(line: 0, scope: !211)
!214 = !DILocalVariable(name: "len", arg: 2, scope: !211, file: !3, line: 67, type: !74)
!215 = !DILocation(line: 70, column: 7, scope: !211)
!216 = !DILocation(line: 71, column: 2, scope: !211)
!217 = distinct !DISubprogram(name: "api_mul", scope: !3, file: !3, line: 1635, type: !84, scopeLine: 1637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!218 = !DILocalVariable(name: "G", arg: 1, scope: !217, file: !3, line: 1635, type: !86)
!219 = !DILocation(line: 0, scope: !217)
!220 = !DILocalVariable(name: "Glen", arg: 2, scope: !217, file: !3, line: 1635, type: !75)
!221 = !DILocalVariable(name: "k", arg: 3, scope: !217, file: !3, line: 1636, type: !73)
!222 = !DILocalVariable(name: "klen", arg: 4, scope: !217, file: !3, line: 1636, type: !75)
!223 = !DILocalVariable(name: "curve", arg: 5, scope: !217, file: !3, line: 1636, type: !10)
!224 = !DILocalVariable(name: "P", scope: !217, file: !3, line: 1639, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "p256_jacobian", file: !3, line: 616, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 612, size: 960, elements: !227)
!227 = !{!228, !229, !230}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !226, file: !3, line: 613, baseType: !59, size: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !226, file: !3, line: 614, baseType: !59, size: 320, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !226, file: !3, line: 615, baseType: !59, size: 320, offset: 640)
!231 = !DILocation(line: 1639, column: 16, scope: !217)
!232 = !DILocation(line: 1642, column: 11, scope: !233)
!233 = distinct !DILexicalBlock(scope: !217, file: !3, line: 1642, column: 6)
!234 = !DILocation(line: 1642, column: 6, scope: !217)
!235 = !DILocation(line: 1643, column: 3, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !3, line: 1642, column: 18)
!237 = !DILocation(line: 1645, column: 6, scope: !217)
!238 = !DILocalVariable(name: "r", scope: !217, file: !3, line: 1638, type: !11)
!239 = !DILocation(line: 1646, column: 7, scope: !217)
!240 = !DILocation(line: 1646, column: 4, scope: !217)
!241 = !DILocation(line: 1647, column: 2, scope: !217)
!242 = !DILocation(line: 1648, column: 7, scope: !217)
!243 = !DILocation(line: 1648, column: 4, scope: !217)
!244 = !DILocation(line: 1649, column: 2, scope: !217)
!245 = !DILocation(line: 1650, column: 1, scope: !217)
!246 = distinct !DISubprogram(name: "api_mulgen", scope: !3, file: !3, line: 1653, type: !89, scopeLine: 1655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!247 = !DILocalVariable(name: "R", arg: 1, scope: !246, file: !3, line: 1653, type: !86)
!248 = !DILocation(line: 0, scope: !246)
!249 = !DILocalVariable(name: "k", arg: 2, scope: !246, file: !3, line: 1654, type: !73)
!250 = !DILocalVariable(name: "klen", arg: 3, scope: !246, file: !3, line: 1654, type: !75)
!251 = !DILocalVariable(name: "curve", arg: 4, scope: !246, file: !3, line: 1654, type: !10)
!252 = !DILocalVariable(name: "P", scope: !246, file: !3, line: 1656, type: !225)
!253 = !DILocation(line: 1656, column: 16, scope: !246)
!254 = !DILocation(line: 1659, column: 2, scope: !246)
!255 = !DILocation(line: 1660, column: 2, scope: !246)
!256 = !DILocation(line: 1661, column: 2, scope: !246)
!257 = distinct !DISubprogram(name: "api_muladd", scope: !3, file: !3, line: 1665, type: !93, scopeLine: 1668, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!258 = !DILocalVariable(name: "A", arg: 1, scope: !257, file: !3, line: 1665, type: !86)
!259 = !DILocation(line: 0, scope: !257)
!260 = !DILocalVariable(name: "B", arg: 2, scope: !257, file: !3, line: 1665, type: !73)
!261 = !DILocalVariable(name: "len", arg: 3, scope: !257, file: !3, line: 1665, type: !75)
!262 = !DILocalVariable(name: "x", arg: 4, scope: !257, file: !3, line: 1666, type: !73)
!263 = !DILocalVariable(name: "xlen", arg: 5, scope: !257, file: !3, line: 1666, type: !75)
!264 = !DILocalVariable(name: "y", arg: 6, scope: !257, file: !3, line: 1667, type: !73)
!265 = !DILocalVariable(name: "ylen", arg: 7, scope: !257, file: !3, line: 1667, type: !75)
!266 = !DILocalVariable(name: "curve", arg: 8, scope: !257, file: !3, line: 1667, type: !10)
!267 = !DILocalVariable(name: "P", scope: !257, file: !3, line: 1697, type: !225)
!268 = !DILocation(line: 1697, column: 16, scope: !257)
!269 = !DILocalVariable(name: "Q", scope: !257, file: !3, line: 1697, type: !225)
!270 = !DILocation(line: 1697, column: 19, scope: !257)
!271 = !DILocation(line: 1702, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !257, file: !3, line: 1702, column: 6)
!273 = !DILocation(line: 1702, column: 6, scope: !257)
!274 = !DILocation(line: 1703, column: 3, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 1702, column: 17)
!276 = !DILocation(line: 1705, column: 6, scope: !257)
!277 = !DILocalVariable(name: "r", scope: !257, file: !3, line: 1698, type: !11)
!278 = !DILocation(line: 1706, column: 2, scope: !257)
!279 = !DILocation(line: 1707, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !257, file: !3, line: 1707, column: 6)
!281 = !DILocation(line: 1707, column: 6, scope: !257)
!282 = !DILocation(line: 1708, column: 3, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 1707, column: 17)
!284 = !DILocation(line: 1709, column: 2, scope: !283)
!285 = !DILocation(line: 1710, column: 8, scope: !286)
!286 = distinct !DILexicalBlock(scope: !280, file: !3, line: 1709, column: 9)
!287 = !DILocation(line: 1710, column: 5, scope: !286)
!288 = !DILocation(line: 1711, column: 3, scope: !286)
!289 = !DILocation(line: 1717, column: 6, scope: !257)
!290 = !DILocalVariable(name: "t", scope: !257, file: !3, line: 1698, type: !11)
!291 = !DILocation(line: 1718, column: 22, scope: !257)
!292 = !DILocation(line: 1718, column: 20, scope: !257)
!293 = !DILocation(line: 1718, column: 2, scope: !257)
!294 = !DILocation(line: 1719, column: 8, scope: !257)
!295 = !DILocation(line: 1719, column: 6, scope: !257)
!296 = !DILocation(line: 1719, column: 17, scope: !257)
!297 = !DILocation(line: 1719, column: 15, scope: !257)
!298 = !DILocation(line: 1719, column: 13, scope: !257)
!299 = !DILocation(line: 1719, column: 26, scope: !257)
!300 = !DILocation(line: 1719, column: 24, scope: !257)
!301 = !DILocation(line: 1719, column: 22, scope: !257)
!302 = !DILocation(line: 1719, column: 35, scope: !257)
!303 = !DILocation(line: 1719, column: 33, scope: !257)
!304 = !DILocation(line: 1719, column: 31, scope: !257)
!305 = !DILocation(line: 1719, column: 44, scope: !257)
!306 = !DILocation(line: 1719, column: 42, scope: !257)
!307 = !DILocation(line: 1719, column: 40, scope: !257)
!308 = !DILocalVariable(name: "z", scope: !257, file: !3, line: 1699, type: !15)
!309 = !DILocation(line: 1720, column: 27, scope: !257)
!310 = !DILocation(line: 1720, column: 22, scope: !257)
!311 = !DILocation(line: 1720, column: 9, scope: !257)
!312 = !DILocation(line: 1720, column: 6, scope: !257)
!313 = !DILocalVariable(name: "s", scope: !257, file: !3, line: 1698, type: !11)
!314 = !DILocation(line: 1721, column: 2, scope: !257)
!315 = !DILocation(line: 1732, column: 12, scope: !257)
!316 = !DILocation(line: 1732, column: 10, scope: !257)
!317 = !DILocation(line: 1732, column: 16, scope: !257)
!318 = !DILocation(line: 1732, column: 20, scope: !257)
!319 = !DILocation(line: 1732, column: 2, scope: !257)
!320 = !DILocation(line: 1733, column: 2, scope: !257)
!321 = !DILocation(line: 1734, column: 11, scope: !257)
!322 = !DILocation(line: 1734, column: 7, scope: !257)
!323 = !DILocation(line: 1734, column: 4, scope: !257)
!324 = !DILocation(line: 1735, column: 2, scope: !257)
!325 = !DILocation(line: 1736, column: 1, scope: !257)
!326 = distinct !DISubprogram(name: "point_decode", scope: !3, file: !3, line: 665, type: !327, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!327 = !DISubroutineType(types: !328)
!328 = !{!11, !329, !73}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!330 = !DILocalVariable(name: "P", arg: 1, scope: !326, file: !3, line: 665, type: !329)
!331 = !DILocation(line: 0, scope: !326)
!332 = !DILocalVariable(name: "buf", arg: 2, scope: !326, file: !3, line: 665, type: !73)
!333 = !DILocalVariable(name: "x", scope: !326, file: !3, line: 667, type: !59)
!334 = !DILocation(line: 667, column: 11, scope: !326)
!335 = !DILocalVariable(name: "y", scope: !326, file: !3, line: 667, type: !59)
!336 = !DILocation(line: 667, column: 17, scope: !326)
!337 = !DILocalVariable(name: "t", scope: !326, file: !3, line: 667, type: !59)
!338 = !DILocation(line: 667, column: 23, scope: !326)
!339 = !DILocalVariable(name: "x3", scope: !326, file: !3, line: 667, type: !59)
!340 = !DILocation(line: 667, column: 29, scope: !326)
!341 = !DILocation(line: 673, column: 9, scope: !326)
!342 = !DILocation(line: 673, column: 6, scope: !326)
!343 = !DILocalVariable(name: "r", scope: !326, file: !3, line: 668, type: !11)
!344 = !DILocation(line: 679, column: 14, scope: !326)
!345 = !DILocation(line: 679, column: 21, scope: !326)
!346 = !DILocation(line: 679, column: 2, scope: !326)
!347 = !DILocation(line: 680, column: 14, scope: !326)
!348 = !DILocation(line: 680, column: 21, scope: !326)
!349 = !DILocation(line: 680, column: 2, scope: !326)
!350 = !DILocation(line: 681, column: 15, scope: !326)
!351 = !DILocation(line: 681, column: 18, scope: !326)
!352 = !DILocation(line: 681, column: 2, scope: !326)
!353 = !DILocation(line: 682, column: 15, scope: !326)
!354 = !DILocation(line: 682, column: 18, scope: !326)
!355 = !DILocation(line: 682, column: 2, scope: !326)
!356 = !DILocation(line: 690, column: 19, scope: !326)
!357 = !DILocation(line: 690, column: 22, scope: !326)
!358 = !DILocation(line: 690, column: 2, scope: !326)
!359 = !DILocation(line: 691, column: 19, scope: !326)
!360 = !DILocation(line: 691, column: 23, scope: !326)
!361 = !DILocation(line: 691, column: 2, scope: !326)
!362 = !DILocation(line: 692, column: 16, scope: !326)
!363 = !DILocation(line: 692, column: 20, scope: !326)
!364 = !DILocation(line: 692, column: 24, scope: !326)
!365 = !DILocation(line: 692, column: 2, scope: !326)
!366 = !DILocation(line: 693, column: 11, scope: !326)
!367 = !DILocation(line: 693, column: 14, scope: !326)
!368 = !DILocation(line: 693, column: 17, scope: !326)
!369 = !DILocation(line: 693, column: 2, scope: !326)
!370 = !DILocation(line: 694, column: 11, scope: !326)
!371 = !DILocation(line: 694, column: 14, scope: !326)
!372 = !DILocation(line: 694, column: 17, scope: !326)
!373 = !DILocation(line: 694, column: 2, scope: !326)
!374 = !DILocation(line: 695, column: 11, scope: !326)
!375 = !DILocation(line: 695, column: 14, scope: !326)
!376 = !DILocation(line: 695, column: 17, scope: !326)
!377 = !DILocation(line: 695, column: 2, scope: !326)
!378 = !DILocation(line: 696, column: 11, scope: !326)
!379 = !DILocation(line: 696, column: 14, scope: !326)
!380 = !DILocation(line: 696, column: 17, scope: !326)
!381 = !DILocation(line: 696, column: 2, scope: !326)
!382 = !DILocation(line: 697, column: 11, scope: !326)
!383 = !DILocation(line: 697, column: 14, scope: !326)
!384 = !DILocation(line: 697, column: 2, scope: !326)
!385 = !DILocation(line: 698, column: 20, scope: !326)
!386 = !DILocation(line: 698, column: 2, scope: !326)
!387 = !DILocation(line: 699, column: 7, scope: !326)
!388 = !DILocation(line: 699, column: 14, scope: !326)
!389 = !DILocation(line: 699, column: 12, scope: !326)
!390 = !DILocation(line: 699, column: 21, scope: !326)
!391 = !DILocation(line: 699, column: 19, scope: !326)
!392 = !DILocation(line: 699, column: 28, scope: !326)
!393 = !DILocation(line: 699, column: 26, scope: !326)
!394 = !DILocation(line: 699, column: 35, scope: !326)
!395 = !DILocation(line: 699, column: 33, scope: !326)
!396 = !DILocalVariable(name: "tt", scope: !326, file: !3, line: 667, type: !15)
!397 = !DILocation(line: 700, column: 30, scope: !326)
!398 = !DILocation(line: 700, column: 24, scope: !326)
!399 = !DILocation(line: 700, column: 10, scope: !326)
!400 = !DILocation(line: 700, column: 7, scope: !326)
!401 = !DILocation(line: 700, column: 4, scope: !326)
!402 = !DILocation(line: 706, column: 12, scope: !326)
!403 = !DILocation(line: 706, column: 2, scope: !326)
!404 = !DILocation(line: 707, column: 12, scope: !326)
!405 = !DILocation(line: 707, column: 2, scope: !326)
!406 = !DILocation(line: 708, column: 12, scope: !326)
!407 = !DILocation(line: 708, column: 2, scope: !326)
!408 = !DILocation(line: 709, column: 2, scope: !326)
!409 = distinct !DISubprogram(name: "p256_mul", scope: !3, file: !3, line: 1455, type: !410, scopeLine: 1456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !329, !73, !75}
!412 = !DILocalVariable(name: "P", arg: 1, scope: !409, file: !3, line: 1455, type: !329)
!413 = !DILocation(line: 0, scope: !409)
!414 = !DILocalVariable(name: "k", arg: 2, scope: !409, file: !3, line: 1455, type: !73)
!415 = !DILocalVariable(name: "klen", arg: 3, scope: !409, file: !3, line: 1455, type: !75)
!416 = !DILocalVariable(name: "window", scope: !409, file: !3, line: 1460, type: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !3, line: 1457, size: 14400, elements: !418)
!418 = !{!419, !421}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "aff", scope: !417, file: !3, line: 1458, baseType: !420, size: 9600)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 9600, elements: !61)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "jac", scope: !417, file: !3, line: 1459, baseType: !422, size: 14400)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 14400, elements: !61)
!423 = !DILocation(line: 1460, column: 4, scope: !409)
!424 = !DILocation(line: 1466, column: 9, scope: !409)
!425 = !DILocation(line: 1466, column: 2, scope: !409)
!426 = !DILocation(line: 1466, column: 18, scope: !409)
!427 = !DILocalVariable(name: "i", scope: !409, file: !3, line: 1461, type: !10)
!428 = !DILocation(line: 1467, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !409, file: !3, line: 1467, column: 2)
!430 = !DILocation(line: 0, scope: !429)
!431 = !DILocation(line: 1467, column: 16, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !3, line: 1467, column: 2)
!433 = !DILocation(line: 1467, column: 2, scope: !429)
!434 = !DILocation(line: 1468, column: 10, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !3, line: 1467, column: 28)
!436 = !DILocation(line: 1468, column: 16, scope: !435)
!437 = !DILocation(line: 1468, column: 3, scope: !435)
!438 = !DILocation(line: 1468, column: 30, scope: !435)
!439 = !DILocation(line: 1468, column: 37, scope: !435)
!440 = !DILocation(line: 1468, column: 43, scope: !435)
!441 = !DILocation(line: 1468, column: 23, scope: !435)
!442 = !DILocation(line: 1469, column: 10, scope: !443)
!443 = distinct !DILexicalBlock(scope: !435, file: !3, line: 1469, column: 7)
!444 = !DILocation(line: 1469, column: 15, scope: !443)
!445 = !DILocation(line: 1469, column: 7, scope: !435)
!446 = !DILocation(line: 1470, column: 24, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1469, column: 21)
!448 = !DILocation(line: 1470, column: 30, scope: !447)
!449 = !DILocation(line: 1470, column: 17, scope: !447)
!450 = !DILocation(line: 1470, column: 4, scope: !447)
!451 = !DILocation(line: 1471, column: 3, scope: !447)
!452 = !DILocation(line: 1472, column: 21, scope: !453)
!453 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1471, column: 10)
!454 = !DILocation(line: 1472, column: 27, scope: !453)
!455 = !DILocation(line: 1472, column: 14, scope: !453)
!456 = !DILocation(line: 1472, column: 41, scope: !453)
!457 = !DILocation(line: 1472, column: 47, scope: !453)
!458 = !DILocation(line: 1472, column: 34, scope: !453)
!459 = !DILocation(line: 1472, column: 4, scope: !453)
!460 = !DILocation(line: 1474, column: 2, scope: !435)
!461 = !DILocation(line: 1467, column: 24, scope: !432)
!462 = !DILocation(line: 1467, column: 2, scope: !432)
!463 = distinct !{!463, !433, !464, !184}
!464 = !DILocation(line: 1474, column: 2, scope: !429)
!465 = !DILocation(line: 1480, column: 26, scope: !409)
!466 = !DILocation(line: 1480, column: 19, scope: !409)
!467 = !DILocation(line: 1480, column: 38, scope: !409)
!468 = !DILocation(line: 1480, column: 31, scope: !409)
!469 = !DILocation(line: 1480, column: 2, scope: !409)
!470 = !DILocation(line: 1485, column: 28, scope: !409)
!471 = !DILocation(line: 1485, column: 21, scope: !409)
!472 = !DILocation(line: 1485, column: 2, scope: !409)
!473 = !DILocation(line: 1486, column: 1, scope: !409)
!474 = distinct !DISubprogram(name: "p256_mulgen", scope: !3, file: !3, line: 1595, type: !410, scopeLine: 1596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!475 = !DILocalVariable(name: "P", arg: 1, scope: !474, file: !3, line: 1595, type: !329)
!476 = !DILocation(line: 0, scope: !474)
!477 = !DILocalVariable(name: "k", arg: 2, scope: !474, file: !3, line: 1595, type: !73)
!478 = !DILocalVariable(name: "klen", arg: 3, scope: !474, file: !3, line: 1595, type: !75)
!479 = !DILocation(line: 1597, column: 2, scope: !474)
!480 = !DILocation(line: 1598, column: 1, scope: !474)
!481 = distinct !DISubprogram(name: "p256_add", scope: !3, file: !3, line: 864, type: !482, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!482 = !DISubroutineType(types: !483)
!483 = !{!11, !329, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!486 = !DILocalVariable(name: "P1", arg: 1, scope: !481, file: !3, line: 864, type: !329)
!487 = !DILocation(line: 0, scope: !481)
!488 = !DILocalVariable(name: "P2", arg: 2, scope: !481, file: !3, line: 864, type: !484)
!489 = !DILocalVariable(name: "t1", scope: !481, file: !3, line: 879, type: !59)
!490 = !DILocation(line: 879, column: 11, scope: !481)
!491 = !DILocalVariable(name: "t2", scope: !481, file: !3, line: 879, type: !59)
!492 = !DILocation(line: 879, column: 18, scope: !481)
!493 = !DILocalVariable(name: "t3", scope: !481, file: !3, line: 879, type: !59)
!494 = !DILocation(line: 879, column: 25, scope: !481)
!495 = !DILocalVariable(name: "t4", scope: !481, file: !3, line: 879, type: !59)
!496 = !DILocation(line: 879, column: 32, scope: !481)
!497 = !DILocalVariable(name: "t5", scope: !481, file: !3, line: 879, type: !59)
!498 = !DILocation(line: 879, column: 39, scope: !481)
!499 = !DILocalVariable(name: "t6", scope: !481, file: !3, line: 879, type: !59)
!500 = !DILocation(line: 879, column: 46, scope: !481)
!501 = !DILocalVariable(name: "t7", scope: !481, file: !3, line: 879, type: !59)
!502 = !DILocation(line: 879, column: 53, scope: !481)
!503 = !DILocation(line: 885, column: 19, scope: !481)
!504 = !DILocation(line: 885, column: 27, scope: !481)
!505 = !DILocation(line: 885, column: 23, scope: !481)
!506 = !DILocation(line: 885, column: 2, scope: !481)
!507 = !DILocation(line: 886, column: 16, scope: !481)
!508 = !DILocation(line: 886, column: 24, scope: !481)
!509 = !DILocation(line: 886, column: 20, scope: !481)
!510 = !DILocation(line: 886, column: 27, scope: !481)
!511 = !DILocation(line: 886, column: 2, scope: !481)
!512 = !DILocation(line: 887, column: 16, scope: !481)
!513 = !DILocation(line: 887, column: 24, scope: !481)
!514 = !DILocation(line: 887, column: 20, scope: !481)
!515 = !DILocation(line: 887, column: 27, scope: !481)
!516 = !DILocation(line: 887, column: 2, scope: !481)
!517 = !DILocation(line: 888, column: 16, scope: !481)
!518 = !DILocation(line: 888, column: 24, scope: !481)
!519 = !DILocation(line: 888, column: 20, scope: !481)
!520 = !DILocation(line: 888, column: 27, scope: !481)
!521 = !DILocation(line: 888, column: 2, scope: !481)
!522 = !DILocation(line: 893, column: 19, scope: !481)
!523 = !DILocation(line: 893, column: 27, scope: !481)
!524 = !DILocation(line: 893, column: 23, scope: !481)
!525 = !DILocation(line: 893, column: 2, scope: !481)
!526 = !DILocation(line: 894, column: 16, scope: !481)
!527 = !DILocation(line: 894, column: 24, scope: !481)
!528 = !DILocation(line: 894, column: 20, scope: !481)
!529 = !DILocation(line: 894, column: 27, scope: !481)
!530 = !DILocation(line: 894, column: 2, scope: !481)
!531 = !DILocation(line: 895, column: 16, scope: !481)
!532 = !DILocation(line: 895, column: 24, scope: !481)
!533 = !DILocation(line: 895, column: 20, scope: !481)
!534 = !DILocation(line: 895, column: 27, scope: !481)
!535 = !DILocation(line: 895, column: 2, scope: !481)
!536 = !DILocation(line: 896, column: 16, scope: !481)
!537 = !DILocation(line: 896, column: 24, scope: !481)
!538 = !DILocation(line: 896, column: 20, scope: !481)
!539 = !DILocation(line: 896, column: 27, scope: !481)
!540 = !DILocation(line: 896, column: 2, scope: !481)
!541 = !DILocation(line: 903, column: 11, scope: !481)
!542 = !DILocation(line: 903, column: 15, scope: !481)
!543 = !DILocation(line: 903, column: 19, scope: !481)
!544 = !DILocation(line: 903, column: 2, scope: !481)
!545 = !DILocation(line: 904, column: 11, scope: !481)
!546 = !DILocation(line: 904, column: 15, scope: !481)
!547 = !DILocation(line: 904, column: 19, scope: !481)
!548 = !DILocation(line: 904, column: 2, scope: !481)
!549 = !DILocation(line: 905, column: 20, scope: !481)
!550 = !DILocation(line: 905, column: 2, scope: !481)
!551 = !DILocation(line: 906, column: 7, scope: !481)
!552 = !DILocation(line: 906, column: 15, scope: !481)
!553 = !DILocation(line: 906, column: 13, scope: !481)
!554 = !DILocation(line: 906, column: 23, scope: !481)
!555 = !DILocation(line: 906, column: 21, scope: !481)
!556 = !DILocation(line: 906, column: 31, scope: !481)
!557 = !DILocation(line: 906, column: 29, scope: !481)
!558 = !DILocation(line: 906, column: 39, scope: !481)
!559 = !DILocation(line: 906, column: 37, scope: !481)
!560 = !DILocalVariable(name: "tt", scope: !481, file: !3, line: 879, type: !15)
!561 = !DILocation(line: 907, column: 28, scope: !481)
!562 = !DILocation(line: 907, column: 22, scope: !481)
!563 = !DILocation(line: 907, column: 8, scope: !481)
!564 = !DILocalVariable(name: "ret", scope: !481, file: !3, line: 880, type: !11)
!565 = !DILocation(line: 908, column: 15, scope: !481)
!566 = !DILocation(line: 908, column: 13, scope: !481)
!567 = !DILocation(line: 908, column: 21, scope: !481)
!568 = !DILocation(line: 913, column: 19, scope: !481)
!569 = !DILocation(line: 913, column: 23, scope: !481)
!570 = !DILocation(line: 913, column: 2, scope: !481)
!571 = !DILocation(line: 914, column: 16, scope: !481)
!572 = !DILocation(line: 914, column: 20, scope: !481)
!573 = !DILocation(line: 914, column: 24, scope: !481)
!574 = !DILocation(line: 914, column: 2, scope: !481)
!575 = !DILocation(line: 915, column: 16, scope: !481)
!576 = !DILocation(line: 915, column: 20, scope: !481)
!577 = !DILocation(line: 915, column: 24, scope: !481)
!578 = !DILocation(line: 915, column: 2, scope: !481)
!579 = !DILocation(line: 920, column: 23, scope: !481)
!580 = !DILocation(line: 920, column: 19, scope: !481)
!581 = !DILocation(line: 920, column: 26, scope: !481)
!582 = !DILocation(line: 920, column: 2, scope: !481)
!583 = !DILocation(line: 921, column: 15, scope: !481)
!584 = !DILocation(line: 921, column: 11, scope: !481)
!585 = !DILocation(line: 921, column: 22, scope: !481)
!586 = !DILocation(line: 921, column: 18, scope: !481)
!587 = !DILocation(line: 921, column: 25, scope: !481)
!588 = !DILocation(line: 921, column: 2, scope: !481)
!589 = !DILocation(line: 922, column: 15, scope: !481)
!590 = !DILocation(line: 922, column: 11, scope: !481)
!591 = !DILocation(line: 922, column: 22, scope: !481)
!592 = !DILocation(line: 922, column: 18, scope: !481)
!593 = !DILocation(line: 922, column: 25, scope: !481)
!594 = !DILocation(line: 922, column: 2, scope: !481)
!595 = !DILocation(line: 923, column: 15, scope: !481)
!596 = !DILocation(line: 923, column: 11, scope: !481)
!597 = !DILocation(line: 923, column: 22, scope: !481)
!598 = !DILocation(line: 923, column: 18, scope: !481)
!599 = !DILocation(line: 923, column: 25, scope: !481)
!600 = !DILocation(line: 923, column: 2, scope: !481)
!601 = !DILocation(line: 928, column: 11, scope: !481)
!602 = !DILocation(line: 928, column: 15, scope: !481)
!603 = !DILocation(line: 928, column: 23, scope: !481)
!604 = !DILocation(line: 928, column: 19, scope: !481)
!605 = !DILocation(line: 928, column: 2, scope: !481)
!606 = !DILocation(line: 929, column: 20, scope: !481)
!607 = !DILocation(line: 929, column: 16, scope: !481)
!608 = !DILocation(line: 929, column: 23, scope: !481)
!609 = !DILocation(line: 929, column: 27, scope: !481)
!610 = !DILocation(line: 929, column: 2, scope: !481)
!611 = !DILocation(line: 930, column: 16, scope: !481)
!612 = !DILocation(line: 930, column: 20, scope: !481)
!613 = !DILocation(line: 930, column: 24, scope: !481)
!614 = !DILocation(line: 930, column: 2, scope: !481)
!615 = !DILocation(line: 931, column: 15, scope: !481)
!616 = !DILocation(line: 931, column: 11, scope: !481)
!617 = !DILocation(line: 931, column: 22, scope: !481)
!618 = !DILocation(line: 931, column: 18, scope: !481)
!619 = !DILocation(line: 931, column: 25, scope: !481)
!620 = !DILocation(line: 931, column: 2, scope: !481)
!621 = !DILocation(line: 936, column: 16, scope: !481)
!622 = !DILocation(line: 936, column: 24, scope: !481)
!623 = !DILocation(line: 936, column: 20, scope: !481)
!624 = !DILocation(line: 936, column: 31, scope: !481)
!625 = !DILocation(line: 936, column: 27, scope: !481)
!626 = !DILocation(line: 936, column: 2, scope: !481)
!627 = !DILocation(line: 937, column: 20, scope: !481)
!628 = !DILocation(line: 937, column: 16, scope: !481)
!629 = !DILocation(line: 937, column: 23, scope: !481)
!630 = !DILocation(line: 937, column: 27, scope: !481)
!631 = !DILocation(line: 937, column: 2, scope: !481)
!632 = !DILocation(line: 939, column: 2, scope: !481)
!633 = distinct !DISubprogram(name: "f256_final_reduce", scope: !3, file: !3, line: 534, type: !634, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !38}
!636 = !DILocalVariable(name: "a", arg: 1, scope: !633, file: !3, line: 534, type: !38)
!637 = !DILocation(line: 0, scope: !633)
!638 = !DILocalVariable(name: "r", scope: !633, file: !3, line: 536, type: !59)
!639 = !DILocation(line: 536, column: 11, scope: !633)
!640 = !DILocalVariable(name: "t", scope: !633, file: !3, line: 536, type: !59)
!641 = !DILocation(line: 536, column: 17, scope: !633)
!642 = !DILocalVariable(name: "cc", scope: !633, file: !3, line: 536, type: !15)
!643 = !DILocalVariable(name: "i", scope: !633, file: !3, line: 537, type: !10)
!644 = !DILocation(line: 543, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !633, file: !3, line: 543, column: 2)
!646 = !DILocation(line: 0, scope: !645)
!647 = !DILocation(line: 543, column: 16, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !3, line: 543, column: 2)
!649 = !DILocation(line: 543, column: 2, scope: !645)
!650 = !DILocation(line: 544, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !3, line: 543, column: 27)
!652 = !DILocation(line: 544, column: 12, scope: !651)
!653 = !DILocalVariable(name: "w", scope: !633, file: !3, line: 536, type: !15)
!654 = !DILocation(line: 545, column: 12, scope: !651)
!655 = !DILocation(line: 545, column: 3, scope: !651)
!656 = !DILocation(line: 545, column: 8, scope: !651)
!657 = !DILocation(line: 546, column: 10, scope: !651)
!658 = !DILocation(line: 547, column: 2, scope: !651)
!659 = !DILocation(line: 543, column: 23, scope: !648)
!660 = !DILocation(line: 543, column: 2, scope: !648)
!661 = distinct !{!661, !649, !662, !184}
!662 = !DILocation(line: 547, column: 2, scope: !645)
!663 = !DILocation(line: 559, column: 6, scope: !633)
!664 = !DILocation(line: 559, column: 11, scope: !633)
!665 = !DILocation(line: 560, column: 11, scope: !633)
!666 = !DILocation(line: 560, column: 2, scope: !633)
!667 = !DILocation(line: 560, column: 7, scope: !633)
!668 = !DILocation(line: 561, column: 9, scope: !633)
!669 = !DILocation(line: 562, column: 6, scope: !633)
!670 = !DILocation(line: 562, column: 11, scope: !633)
!671 = !DILocation(line: 563, column: 11, scope: !633)
!672 = !DILocation(line: 563, column: 2, scope: !633)
!673 = !DILocation(line: 563, column: 7, scope: !633)
!674 = !DILocation(line: 564, column: 9, scope: !633)
!675 = !DILocation(line: 565, column: 6, scope: !633)
!676 = !DILocation(line: 565, column: 11, scope: !633)
!677 = !DILocation(line: 566, column: 11, scope: !633)
!678 = !DILocation(line: 566, column: 2, scope: !633)
!679 = !DILocation(line: 566, column: 7, scope: !633)
!680 = !DILocation(line: 567, column: 9, scope: !633)
!681 = !DILocation(line: 568, column: 6, scope: !633)
!682 = !DILocation(line: 568, column: 11, scope: !633)
!683 = !DILocation(line: 569, column: 11, scope: !633)
!684 = !DILocation(line: 569, column: 2, scope: !633)
!685 = !DILocation(line: 569, column: 7, scope: !633)
!686 = !DILocation(line: 570, column: 9, scope: !633)
!687 = !DILocation(line: 571, column: 9, scope: !633)
!688 = !DILocation(line: 571, column: 14, scope: !633)
!689 = !DILocation(line: 571, column: 19, scope: !633)
!690 = !DILocation(line: 571, column: 2, scope: !633)
!691 = !DILocation(line: 571, column: 7, scope: !633)
!692 = !DILocation(line: 577, column: 6, scope: !633)
!693 = !DILocation(line: 577, column: 11, scope: !633)
!694 = !DILocation(line: 578, column: 11, scope: !633)
!695 = !DILocation(line: 578, column: 2, scope: !633)
!696 = !DILocation(line: 578, column: 7, scope: !633)
!697 = !DILocation(line: 579, column: 9, scope: !633)
!698 = !DILocation(line: 580, column: 6, scope: !633)
!699 = !DILocation(line: 580, column: 11, scope: !633)
!700 = !DILocation(line: 581, column: 11, scope: !633)
!701 = !DILocation(line: 581, column: 2, scope: !633)
!702 = !DILocation(line: 581, column: 7, scope: !633)
!703 = !DILocation(line: 582, column: 9, scope: !633)
!704 = !DILocation(line: 583, column: 6, scope: !633)
!705 = !DILocation(line: 583, column: 11, scope: !633)
!706 = !DILocation(line: 583, column: 21, scope: !633)
!707 = !DILocation(line: 584, column: 11, scope: !633)
!708 = !DILocation(line: 584, column: 2, scope: !633)
!709 = !DILocation(line: 584, column: 7, scope: !633)
!710 = !DILocation(line: 585, column: 9, scope: !633)
!711 = !DILocation(line: 586, column: 2, scope: !633)
!712 = !DILocation(line: 586, column: 7, scope: !633)
!713 = !DILocation(line: 593, column: 9, scope: !633)
!714 = !DILocation(line: 593, column: 14, scope: !633)
!715 = !DILocation(line: 593, column: 7, scope: !633)
!716 = !DILocation(line: 594, column: 2, scope: !633)
!717 = !DILocation(line: 594, column: 7, scope: !633)
!718 = !DILocation(line: 595, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !633, file: !3, line: 595, column: 2)
!720 = !DILocation(line: 0, scope: !719)
!721 = !DILocation(line: 595, column: 16, scope: !722)
!722 = distinct !DILexicalBlock(scope: !719, file: !3, line: 595, column: 2)
!723 = !DILocation(line: 595, column: 2, scope: !719)
!724 = !DILocation(line: 596, column: 10, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !3, line: 595, column: 27)
!726 = !DILocation(line: 596, column: 24, scope: !725)
!727 = !DILocation(line: 596, column: 31, scope: !725)
!728 = !DILocation(line: 596, column: 29, scope: !725)
!729 = !DILocation(line: 596, column: 21, scope: !725)
!730 = !DILocation(line: 596, column: 15, scope: !725)
!731 = !DILocation(line: 596, column: 3, scope: !725)
!732 = !DILocation(line: 596, column: 8, scope: !725)
!733 = !DILocation(line: 597, column: 2, scope: !725)
!734 = !DILocation(line: 595, column: 23, scope: !722)
!735 = !DILocation(line: 595, column: 2, scope: !722)
!736 = distinct !{!736, !723, !737, !184}
!737 = !DILocation(line: 597, column: 2, scope: !719)
!738 = !DILocation(line: 598, column: 1, scope: !633)
!739 = distinct !DISubprogram(name: "EQ", scope: !187, file: !187, line: 779, type: !740, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!740 = !DISubroutineType(types: !741)
!741 = !{!11, !11, !11}
!742 = !DILocalVariable(name: "x", arg: 1, scope: !739, file: !187, line: 779, type: !11)
!743 = !DILocation(line: 0, scope: !739)
!744 = !DILocalVariable(name: "y", arg: 2, scope: !739, file: !187, line: 779, type: !11)
!745 = !DILocation(line: 783, column: 8, scope: !739)
!746 = !DILocalVariable(name: "q", scope: !739, file: !187, line: 781, type: !11)
!747 = !DILocation(line: 784, column: 18, scope: !739)
!748 = !DILocation(line: 784, column: 16, scope: !739)
!749 = !DILocation(line: 784, column: 22, scope: !739)
!750 = !DILocation(line: 784, column: 9, scope: !739)
!751 = !DILocation(line: 784, column: 2, scope: !739)
!752 = distinct !DISubprogram(name: "p256_double", scope: !3, file: !3, line: 760, type: !753, scopeLine: 761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !329}
!755 = !DILocalVariable(name: "P", arg: 1, scope: !752, file: !3, line: 760, type: !329)
!756 = !DILocation(line: 0, scope: !752)
!757 = !DILocalVariable(name: "t1", scope: !752, file: !3, line: 777, type: !59)
!758 = !DILocation(line: 777, column: 11, scope: !752)
!759 = !DILocalVariable(name: "t2", scope: !752, file: !3, line: 777, type: !59)
!760 = !DILocation(line: 777, column: 18, scope: !752)
!761 = !DILocalVariable(name: "t3", scope: !752, file: !3, line: 777, type: !59)
!762 = !DILocation(line: 777, column: 25, scope: !752)
!763 = !DILocalVariable(name: "t4", scope: !752, file: !3, line: 777, type: !59)
!764 = !DILocation(line: 777, column: 32, scope: !752)
!765 = !DILocation(line: 782, column: 19, scope: !752)
!766 = !DILocation(line: 782, column: 26, scope: !752)
!767 = !DILocation(line: 782, column: 23, scope: !752)
!768 = !DILocation(line: 782, column: 2, scope: !752)
!769 = !DILocation(line: 787, column: 11, scope: !752)
!770 = !DILocation(line: 787, column: 18, scope: !752)
!771 = !DILocation(line: 787, column: 15, scope: !752)
!772 = !DILocation(line: 787, column: 21, scope: !752)
!773 = !DILocation(line: 787, column: 2, scope: !752)
!774 = !DILocation(line: 788, column: 11, scope: !752)
!775 = !DILocation(line: 788, column: 18, scope: !752)
!776 = !DILocation(line: 788, column: 15, scope: !752)
!777 = !DILocation(line: 788, column: 21, scope: !752)
!778 = !DILocation(line: 788, column: 2, scope: !752)
!779 = !DILocation(line: 793, column: 16, scope: !752)
!780 = !DILocation(line: 793, column: 20, scope: !752)
!781 = !DILocation(line: 793, column: 24, scope: !752)
!782 = !DILocation(line: 793, column: 2, scope: !752)
!783 = !DILocation(line: 794, column: 11, scope: !752)
!784 = !DILocation(line: 794, column: 15, scope: !752)
!785 = !DILocation(line: 794, column: 19, scope: !752)
!786 = !DILocation(line: 794, column: 2, scope: !752)
!787 = !DILocation(line: 795, column: 11, scope: !752)
!788 = !DILocation(line: 795, column: 15, scope: !752)
!789 = !DILocation(line: 795, column: 19, scope: !752)
!790 = !DILocation(line: 795, column: 2, scope: !752)
!791 = !DILocation(line: 800, column: 19, scope: !752)
!792 = !DILocation(line: 800, column: 26, scope: !752)
!793 = !DILocation(line: 800, column: 23, scope: !752)
!794 = !DILocation(line: 800, column: 2, scope: !752)
!795 = !DILocation(line: 801, column: 11, scope: !752)
!796 = !DILocation(line: 801, column: 15, scope: !752)
!797 = !DILocation(line: 801, column: 19, scope: !752)
!798 = !DILocation(line: 801, column: 2, scope: !752)
!799 = !DILocation(line: 802, column: 16, scope: !752)
!800 = !DILocation(line: 802, column: 23, scope: !752)
!801 = !DILocation(line: 802, column: 20, scope: !752)
!802 = !DILocation(line: 802, column: 26, scope: !752)
!803 = !DILocation(line: 802, column: 2, scope: !752)
!804 = !DILocation(line: 803, column: 11, scope: !752)
!805 = !DILocation(line: 803, column: 15, scope: !752)
!806 = !DILocation(line: 803, column: 19, scope: !752)
!807 = !DILocation(line: 803, column: 2, scope: !752)
!808 = !DILocation(line: 808, column: 22, scope: !752)
!809 = !DILocation(line: 808, column: 19, scope: !752)
!810 = !DILocation(line: 808, column: 25, scope: !752)
!811 = !DILocation(line: 808, column: 2, scope: !752)
!812 = !DILocation(line: 809, column: 14, scope: !752)
!813 = !DILocation(line: 809, column: 11, scope: !752)
!814 = !DILocation(line: 809, column: 20, scope: !752)
!815 = !DILocation(line: 809, column: 17, scope: !752)
!816 = !DILocation(line: 809, column: 23, scope: !752)
!817 = !DILocation(line: 809, column: 2, scope: !752)
!818 = !DILocation(line: 810, column: 14, scope: !752)
!819 = !DILocation(line: 810, column: 11, scope: !752)
!820 = !DILocation(line: 810, column: 20, scope: !752)
!821 = !DILocation(line: 810, column: 17, scope: !752)
!822 = !DILocation(line: 810, column: 23, scope: !752)
!823 = !DILocation(line: 810, column: 2, scope: !752)
!824 = !DILocation(line: 815, column: 16, scope: !752)
!825 = !DILocation(line: 815, column: 23, scope: !752)
!826 = !DILocation(line: 815, column: 20, scope: !752)
!827 = !DILocation(line: 815, column: 29, scope: !752)
!828 = !DILocation(line: 815, column: 26, scope: !752)
!829 = !DILocation(line: 815, column: 2, scope: !752)
!830 = !DILocation(line: 816, column: 14, scope: !752)
!831 = !DILocation(line: 816, column: 11, scope: !752)
!832 = !DILocation(line: 816, column: 17, scope: !752)
!833 = !DILocation(line: 816, column: 21, scope: !752)
!834 = !DILocation(line: 816, column: 2, scope: !752)
!835 = !DILocation(line: 817, column: 25, scope: !752)
!836 = !DILocation(line: 817, column: 22, scope: !752)
!837 = !DILocation(line: 817, column: 2, scope: !752)
!838 = !DILocation(line: 823, column: 11, scope: !752)
!839 = !DILocation(line: 823, column: 15, scope: !752)
!840 = !DILocation(line: 823, column: 22, scope: !752)
!841 = !DILocation(line: 823, column: 19, scope: !752)
!842 = !DILocation(line: 823, column: 2, scope: !752)
!843 = !DILocation(line: 824, column: 19, scope: !752)
!844 = !DILocation(line: 824, column: 16, scope: !752)
!845 = !DILocation(line: 824, column: 22, scope: !752)
!846 = !DILocation(line: 824, column: 26, scope: !752)
!847 = !DILocation(line: 824, column: 2, scope: !752)
!848 = !DILocation(line: 825, column: 19, scope: !752)
!849 = !DILocation(line: 825, column: 23, scope: !752)
!850 = !DILocation(line: 825, column: 2, scope: !752)
!851 = !DILocation(line: 826, column: 11, scope: !752)
!852 = !DILocation(line: 826, column: 15, scope: !752)
!853 = !DILocation(line: 826, column: 19, scope: !752)
!854 = !DILocation(line: 826, column: 2, scope: !752)
!855 = !DILocation(line: 827, column: 14, scope: !752)
!856 = !DILocation(line: 827, column: 11, scope: !752)
!857 = !DILocation(line: 827, column: 20, scope: !752)
!858 = !DILocation(line: 827, column: 17, scope: !752)
!859 = !DILocation(line: 827, column: 23, scope: !752)
!860 = !DILocation(line: 827, column: 2, scope: !752)
!861 = !DILocation(line: 828, column: 1, scope: !752)
!862 = distinct !DISubprogram(name: "point_encode", scope: !3, file: !3, line: 723, type: !863, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!863 = !DISubroutineType(types: !864)
!864 = !{!11, !86, !484}
!865 = !DILocalVariable(name: "buf", arg: 1, scope: !862, file: !3, line: 723, type: !86)
!866 = !DILocation(line: 0, scope: !862)
!867 = !DILocalVariable(name: "P", arg: 2, scope: !862, file: !3, line: 723, type: !484)
!868 = !DILocalVariable(name: "t1", scope: !862, file: !3, line: 725, type: !59)
!869 = !DILocation(line: 725, column: 11, scope: !862)
!870 = !DILocalVariable(name: "t2", scope: !862, file: !3, line: 725, type: !59)
!871 = !DILocation(line: 725, column: 18, scope: !862)
!872 = !DILocation(line: 728, column: 14, scope: !862)
!873 = !DILocation(line: 728, column: 21, scope: !862)
!874 = !DILocation(line: 728, column: 18, scope: !862)
!875 = !DILocation(line: 728, column: 2, scope: !862)
!876 = !DILocation(line: 729, column: 19, scope: !862)
!877 = !DILocation(line: 729, column: 23, scope: !862)
!878 = !DILocation(line: 729, column: 2, scope: !862)
!879 = !DILocation(line: 730, column: 16, scope: !862)
!880 = !DILocation(line: 730, column: 20, scope: !862)
!881 = !DILocation(line: 730, column: 24, scope: !862)
!882 = !DILocation(line: 730, column: 2, scope: !862)
!883 = !DILocation(line: 733, column: 16, scope: !862)
!884 = !DILocation(line: 733, column: 23, scope: !862)
!885 = !DILocation(line: 733, column: 20, scope: !862)
!886 = !DILocation(line: 733, column: 26, scope: !862)
!887 = !DILocation(line: 733, column: 2, scope: !862)
!888 = !DILocation(line: 734, column: 16, scope: !862)
!889 = !DILocation(line: 734, column: 23, scope: !862)
!890 = !DILocation(line: 734, column: 20, scope: !862)
!891 = !DILocation(line: 734, column: 26, scope: !862)
!892 = !DILocation(line: 734, column: 2, scope: !862)
!893 = !DILocation(line: 738, column: 17, scope: !862)
!894 = !DILocation(line: 738, column: 21, scope: !862)
!895 = !DILocation(line: 738, column: 2, scope: !862)
!896 = !DILocation(line: 739, column: 17, scope: !862)
!897 = !DILocation(line: 739, column: 21, scope: !862)
!898 = !DILocation(line: 739, column: 2, scope: !862)
!899 = !DILocation(line: 740, column: 20, scope: !862)
!900 = !DILocation(line: 740, column: 2, scope: !862)
!901 = !DILocation(line: 741, column: 20, scope: !862)
!902 = !DILocation(line: 741, column: 2, scope: !862)
!903 = !DILocation(line: 744, column: 2, scope: !862)
!904 = !DILocation(line: 744, column: 9, scope: !862)
!905 = !DILocation(line: 745, column: 18, scope: !862)
!906 = !DILocation(line: 745, column: 24, scope: !862)
!907 = !DILocation(line: 745, column: 2, scope: !862)
!908 = !DILocation(line: 746, column: 18, scope: !862)
!909 = !DILocation(line: 746, column: 24, scope: !862)
!910 = !DILocation(line: 746, column: 2, scope: !862)
!911 = !DILocation(line: 749, column: 9, scope: !862)
!912 = !DILocation(line: 749, column: 6, scope: !862)
!913 = !DILocation(line: 749, column: 19, scope: !862)
!914 = !DILocation(line: 749, column: 16, scope: !862)
!915 = !DILocation(line: 749, column: 14, scope: !862)
!916 = !DILocation(line: 749, column: 29, scope: !862)
!917 = !DILocation(line: 749, column: 26, scope: !862)
!918 = !DILocation(line: 749, column: 24, scope: !862)
!919 = !DILocation(line: 749, column: 39, scope: !862)
!920 = !DILocation(line: 749, column: 36, scope: !862)
!921 = !DILocation(line: 749, column: 34, scope: !862)
!922 = !DILocation(line: 749, column: 49, scope: !862)
!923 = !DILocation(line: 749, column: 46, scope: !862)
!924 = !DILocation(line: 749, column: 44, scope: !862)
!925 = !DILocalVariable(name: "z", scope: !862, file: !3, line: 725, type: !15)
!926 = !DILocation(line: 750, column: 30, scope: !862)
!927 = !DILocation(line: 750, column: 26, scope: !862)
!928 = !DILocation(line: 750, column: 13, scope: !862)
!929 = !DILocation(line: 750, column: 9, scope: !862)
!930 = !DILocation(line: 750, column: 2, scope: !862)
!931 = distinct !DISubprogram(name: "f256_invert", scope: !3, file: !3, line: 482, type: !36, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!932 = !DILocalVariable(name: "d", arg: 1, scope: !931, file: !3, line: 482, type: !38)
!933 = !DILocation(line: 0, scope: !931)
!934 = !DILocalVariable(name: "a", arg: 2, scope: !931, file: !3, line: 482, type: !39)
!935 = !DILocalVariable(name: "r", scope: !931, file: !3, line: 498, type: !59)
!936 = !DILocation(line: 498, column: 11, scope: !931)
!937 = !DILocalVariable(name: "t", scope: !931, file: !3, line: 498, type: !59)
!938 = !DILocation(line: 498, column: 17, scope: !931)
!939 = !DILocation(line: 501, column: 2, scope: !931)
!940 = !DILocalVariable(name: "i", scope: !931, file: !3, line: 499, type: !10)
!941 = !DILocation(line: 502, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !931, file: !3, line: 502, column: 2)
!943 = !DILocation(line: 0, scope: !942)
!944 = !DILocation(line: 502, column: 16, scope: !945)
!945 = distinct !DILexicalBlock(scope: !942, file: !3, line: 502, column: 2)
!946 = !DILocation(line: 502, column: 2, scope: !942)
!947 = !DILocation(line: 503, column: 20, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 502, column: 28)
!949 = !DILocation(line: 503, column: 23, scope: !948)
!950 = !DILocation(line: 503, column: 3, scope: !948)
!951 = !DILocation(line: 504, column: 17, scope: !948)
!952 = !DILocation(line: 504, column: 20, scope: !948)
!953 = !DILocation(line: 504, column: 3, scope: !948)
!954 = !DILocation(line: 505, column: 2, scope: !948)
!955 = !DILocation(line: 502, column: 24, scope: !945)
!956 = !DILocation(line: 502, column: 2, scope: !945)
!957 = distinct !{!957, !946, !958, !184}
!958 = !DILocation(line: 505, column: 2, scope: !942)
!959 = !DILocation(line: 507, column: 2, scope: !931)
!960 = !DILocation(line: 508, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !931, file: !3, line: 508, column: 2)
!962 = !DILocation(line: 0, scope: !961)
!963 = !DILocation(line: 508, column: 18, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !3, line: 508, column: 2)
!965 = !DILocation(line: 508, column: 2, scope: !961)
!966 = !DILocation(line: 509, column: 20, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !3, line: 508, column: 30)
!968 = !DILocation(line: 509, column: 23, scope: !967)
!969 = !DILocation(line: 509, column: 3, scope: !967)
!970 = !DILocation(line: 510, column: 3, scope: !967)
!971 = !DILocation(line: 515, column: 18, scope: !972)
!972 = distinct !DILexicalBlock(scope: !967, file: !3, line: 510, column: 14)
!973 = !DILocation(line: 515, column: 21, scope: !972)
!974 = !DILocation(line: 515, column: 4, scope: !972)
!975 = !DILocation(line: 516, column: 4, scope: !972)
!976 = !DILocation(line: 520, column: 18, scope: !972)
!977 = !DILocation(line: 520, column: 21, scope: !972)
!978 = !DILocation(line: 520, column: 24, scope: !972)
!979 = !DILocation(line: 520, column: 4, scope: !972)
!980 = !DILocation(line: 521, column: 4, scope: !972)
!981 = !DILocation(line: 523, column: 2, scope: !967)
!982 = !DILocation(line: 508, column: 26, scope: !964)
!983 = !DILocation(line: 508, column: 2, scope: !964)
!984 = distinct !{!984, !965, !985, !184}
!985 = !DILocation(line: 523, column: 2, scope: !961)
!986 = !DILocation(line: 524, column: 2, scope: !931)
!987 = !DILocation(line: 525, column: 1, scope: !931)
!988 = distinct !DISubprogram(name: "f256_montysquare", scope: !3, file: !3, line: 438, type: !36, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!989 = !DILocalVariable(name: "d", arg: 1, scope: !988, file: !3, line: 438, type: !38)
!990 = !DILocation(line: 0, scope: !988)
!991 = !DILocalVariable(name: "a", arg: 2, scope: !988, file: !3, line: 438, type: !39)
!992 = !DILocation(line: 440, column: 2, scope: !988)
!993 = !DILocation(line: 441, column: 1, scope: !988)
!994 = distinct !DISubprogram(name: "f256_montymul", scope: !3, file: !3, line: 244, type: !995, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !38, !39, !39}
!997 = !DILocalVariable(name: "d", arg: 1, scope: !994, file: !3, line: 244, type: !38)
!998 = !DILocation(line: 0, scope: !994)
!999 = !DILocalVariable(name: "a", arg: 2, scope: !994, file: !3, line: 244, type: !39)
!1000 = !DILocalVariable(name: "b", arg: 3, scope: !994, file: !3, line: 244, type: !39)
!1001 = !DILocalVariable(name: "t", scope: !994, file: !3, line: 249, type: !59)
!1002 = !DILocation(line: 249, column: 11, scope: !994)
!1003 = !DILocation(line: 251, column: 2, scope: !994)
!1004 = !DILocation(line: 251, column: 7, scope: !994)
!1005 = !DILocation(line: 252, column: 2, scope: !994)
!1006 = !DILocation(line: 252, column: 7, scope: !994)
!1007 = !DILocation(line: 253, column: 2, scope: !994)
!1008 = !DILocation(line: 253, column: 7, scope: !994)
!1009 = !DILocation(line: 254, column: 2, scope: !994)
!1010 = !DILocation(line: 254, column: 7, scope: !994)
!1011 = !DILocation(line: 255, column: 2, scope: !994)
!1012 = !DILocation(line: 255, column: 7, scope: !994)
!1013 = !DILocalVariable(name: "i", scope: !994, file: !3, line: 248, type: !10)
!1014 = !DILocation(line: 256, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !994, file: !3, line: 256, column: 2)
!1016 = !DILocation(line: 0, scope: !1015)
!1017 = !DILocation(line: 256, column: 16, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 256, column: 2)
!1019 = !DILocation(line: 256, column: 2, scope: !1015)
!1020 = !DILocation(line: 270, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 256, column: 27)
!1022 = !DILocalVariable(name: "x", scope: !1021, file: !3, line: 257, type: !15)
!1023 = !DILocation(line: 0, scope: !1021)
!1024 = !DILocation(line: 271, column: 26, scope: !1021)
!1025 = !DILocation(line: 271, column: 7, scope: !1021)
!1026 = !DILocation(line: 271, column: 33, scope: !1021)
!1027 = !DILocation(line: 271, column: 31, scope: !1021)
!1028 = !DILocation(line: 272, column: 25, scope: !1021)
!1029 = !DILocation(line: 272, column: 6, scope: !1021)
!1030 = !DILocation(line: 272, column: 4, scope: !1021)
!1031 = !DILocalVariable(name: "z", scope: !1021, file: !3, line: 258, type: !18)
!1032 = !DILocation(line: 273, column: 7, scope: !1021)
!1033 = !DILocation(line: 273, column: 19, scope: !1021)
!1034 = !DILocalVariable(name: "f", scope: !1021, file: !3, line: 257, type: !15)
!1035 = !DILocation(line: 274, column: 21, scope: !1021)
!1036 = !DILocation(line: 274, column: 8, scope: !1021)
!1037 = !DILocalVariable(name: "cc", scope: !1021, file: !3, line: 257, type: !15)
!1038 = !DILocation(line: 275, column: 26, scope: !1021)
!1039 = !DILocation(line: 275, column: 7, scope: !1021)
!1040 = !DILocation(line: 275, column: 33, scope: !1021)
!1041 = !DILocation(line: 275, column: 31, scope: !1021)
!1042 = !DILocation(line: 276, column: 25, scope: !1021)
!1043 = !DILocation(line: 276, column: 6, scope: !1021)
!1044 = !DILocation(line: 276, column: 4, scope: !1021)
!1045 = !DILocation(line: 276, column: 32, scope: !1021)
!1046 = !DILocation(line: 276, column: 30, scope: !1021)
!1047 = !DILocation(line: 277, column: 7, scope: !1021)
!1048 = !DILocation(line: 277, column: 28, scope: !1021)
!1049 = !DILocation(line: 277, column: 4, scope: !1021)
!1050 = !DILocation(line: 278, column: 10, scope: !1021)
!1051 = !DILocation(line: 278, column: 22, scope: !1021)
!1052 = !DILocation(line: 278, column: 3, scope: !1021)
!1053 = !DILocation(line: 278, column: 8, scope: !1021)
!1054 = !DILocation(line: 279, column: 21, scope: !1021)
!1055 = !DILocation(line: 279, column: 8, scope: !1021)
!1056 = !DILocation(line: 280, column: 26, scope: !1021)
!1057 = !DILocation(line: 280, column: 7, scope: !1021)
!1058 = !DILocation(line: 280, column: 33, scope: !1021)
!1059 = !DILocation(line: 280, column: 31, scope: !1021)
!1060 = !DILocation(line: 281, column: 25, scope: !1021)
!1061 = !DILocation(line: 281, column: 6, scope: !1021)
!1062 = !DILocation(line: 281, column: 4, scope: !1021)
!1063 = !DILocation(line: 281, column: 32, scope: !1021)
!1064 = !DILocation(line: 281, column: 30, scope: !1021)
!1065 = !DILocation(line: 282, column: 10, scope: !1021)
!1066 = !DILocation(line: 282, column: 22, scope: !1021)
!1067 = !DILocation(line: 282, column: 3, scope: !1021)
!1068 = !DILocation(line: 282, column: 8, scope: !1021)
!1069 = !DILocation(line: 283, column: 21, scope: !1021)
!1070 = !DILocation(line: 283, column: 8, scope: !1021)
!1071 = !DILocation(line: 284, column: 26, scope: !1021)
!1072 = !DILocation(line: 284, column: 7, scope: !1021)
!1073 = !DILocation(line: 284, column: 33, scope: !1021)
!1074 = !DILocation(line: 284, column: 31, scope: !1021)
!1075 = !DILocation(line: 285, column: 25, scope: !1021)
!1076 = !DILocation(line: 285, column: 6, scope: !1021)
!1077 = !DILocation(line: 285, column: 4, scope: !1021)
!1078 = !DILocation(line: 285, column: 32, scope: !1021)
!1079 = !DILocation(line: 285, column: 30, scope: !1021)
!1080 = !DILocation(line: 286, column: 7, scope: !1021)
!1081 = !DILocation(line: 286, column: 28, scope: !1021)
!1082 = !DILocation(line: 286, column: 4, scope: !1021)
!1083 = !DILocation(line: 287, column: 10, scope: !1021)
!1084 = !DILocation(line: 287, column: 22, scope: !1021)
!1085 = !DILocation(line: 287, column: 3, scope: !1021)
!1086 = !DILocation(line: 287, column: 8, scope: !1021)
!1087 = !DILocation(line: 288, column: 21, scope: !1021)
!1088 = !DILocation(line: 288, column: 8, scope: !1021)
!1089 = !DILocation(line: 289, column: 26, scope: !1021)
!1090 = !DILocation(line: 289, column: 7, scope: !1021)
!1091 = !DILocation(line: 289, column: 33, scope: !1021)
!1092 = !DILocation(line: 289, column: 31, scope: !1021)
!1093 = !DILocation(line: 290, column: 25, scope: !1021)
!1094 = !DILocation(line: 290, column: 6, scope: !1021)
!1095 = !DILocation(line: 290, column: 4, scope: !1021)
!1096 = !DILocation(line: 290, column: 32, scope: !1021)
!1097 = !DILocation(line: 290, column: 30, scope: !1021)
!1098 = !DILocation(line: 291, column: 7, scope: !1021)
!1099 = !DILocation(line: 291, column: 28, scope: !1021)
!1100 = !DILocation(line: 291, column: 4, scope: !1021)
!1101 = !DILocation(line: 292, column: 7, scope: !1021)
!1102 = !DILocation(line: 292, column: 28, scope: !1021)
!1103 = !DILocation(line: 292, column: 4, scope: !1021)
!1104 = !DILocation(line: 293, column: 10, scope: !1021)
!1105 = !DILocation(line: 293, column: 22, scope: !1021)
!1106 = !DILocation(line: 293, column: 3, scope: !1021)
!1107 = !DILocation(line: 293, column: 8, scope: !1021)
!1108 = !DILocation(line: 294, column: 23, scope: !1021)
!1109 = !DILocation(line: 294, column: 10, scope: !1021)
!1110 = !DILocation(line: 294, column: 3, scope: !1021)
!1111 = !DILocation(line: 294, column: 8, scope: !1021)
!1112 = !DILocation(line: 301, column: 7, scope: !1021)
!1113 = !DILocation(line: 301, column: 12, scope: !1021)
!1114 = !DILocalVariable(name: "s", scope: !1021, file: !3, line: 257, type: !15)
!1115 = !DILocation(line: 302, column: 3, scope: !1021)
!1116 = !DILocation(line: 302, column: 8, scope: !1021)
!1117 = !DILocation(line: 303, column: 7, scope: !1021)
!1118 = !DILocation(line: 303, column: 17, scope: !1021)
!1119 = !DILocation(line: 303, column: 12, scope: !1021)
!1120 = !DILocalVariable(name: "w", scope: !1021, file: !3, line: 257, type: !15)
!1121 = !DILocation(line: 304, column: 12, scope: !1021)
!1122 = !DILocation(line: 304, column: 3, scope: !1021)
!1123 = !DILocation(line: 304, column: 8, scope: !1021)
!1124 = !DILocation(line: 305, column: 12, scope: !1021)
!1125 = !DILocation(line: 305, column: 8, scope: !1021)
!1126 = !DILocation(line: 305, column: 19, scope: !1021)
!1127 = !DILocation(line: 306, column: 7, scope: !1021)
!1128 = !DILocation(line: 306, column: 12, scope: !1021)
!1129 = !DILocation(line: 307, column: 12, scope: !1021)
!1130 = !DILocation(line: 307, column: 3, scope: !1021)
!1131 = !DILocation(line: 307, column: 8, scope: !1021)
!1132 = !DILocation(line: 308, column: 10, scope: !1021)
!1133 = !DILocation(line: 309, column: 7, scope: !1021)
!1134 = !DILocation(line: 309, column: 12, scope: !1021)
!1135 = !DILocation(line: 309, column: 22, scope: !1021)
!1136 = !DILocation(line: 309, column: 17, scope: !1021)
!1137 = !DILocation(line: 310, column: 12, scope: !1021)
!1138 = !DILocation(line: 310, column: 3, scope: !1021)
!1139 = !DILocation(line: 310, column: 8, scope: !1021)
!1140 = !DILocation(line: 311, column: 10, scope: !1021)
!1141 = !DILocation(line: 312, column: 7, scope: !1021)
!1142 = !DILocation(line: 312, column: 12, scope: !1021)
!1143 = !DILocation(line: 313, column: 17, scope: !1021)
!1144 = !DILocation(line: 313, column: 12, scope: !1021)
!1145 = !DILocation(line: 313, column: 24, scope: !1021)
!1146 = !DILocation(line: 313, column: 3, scope: !1021)
!1147 = !DILocation(line: 313, column: 8, scope: !1021)
!1148 = !DILocation(line: 319, column: 2, scope: !1021)
!1149 = !DILocation(line: 256, column: 23, scope: !1018)
!1150 = !DILocation(line: 256, column: 2, scope: !1018)
!1151 = distinct !{!1151, !1019, !1152, !184}
!1152 = !DILocation(line: 319, column: 2, scope: !1015)
!1153 = !DILocation(line: 321, column: 9, scope: !994)
!1154 = !DILocation(line: 321, column: 2, scope: !994)
!1155 = !DILocation(line: 321, column: 7, scope: !994)
!1156 = !DILocation(line: 322, column: 9, scope: !994)
!1157 = !DILocation(line: 322, column: 2, scope: !994)
!1158 = !DILocation(line: 322, column: 7, scope: !994)
!1159 = !DILocation(line: 323, column: 9, scope: !994)
!1160 = !DILocation(line: 323, column: 2, scope: !994)
!1161 = !DILocation(line: 323, column: 7, scope: !994)
!1162 = !DILocation(line: 324, column: 9, scope: !994)
!1163 = !DILocation(line: 324, column: 2, scope: !994)
!1164 = !DILocation(line: 324, column: 7, scope: !994)
!1165 = !DILocation(line: 325, column: 9, scope: !994)
!1166 = !DILocation(line: 325, column: 2, scope: !994)
!1167 = !DILocation(line: 325, column: 7, scope: !994)
!1168 = !DILocation(line: 430, column: 1, scope: !994)
!1169 = !DILocalVariable(name: "d", arg: 1, scope: !50, file: !3, line: 467, type: !38)
!1170 = !DILocation(line: 0, scope: !50)
!1171 = !DILocalVariable(name: "a", arg: 2, scope: !50, file: !3, line: 467, type: !39)
!1172 = !DILocation(line: 474, column: 2, scope: !50)
!1173 = !DILocation(line: 475, column: 1, scope: !50)
!1174 = distinct !DISubprogram(name: "f256_encode", scope: !3, file: !3, line: 642, type: !1175, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !86, !39}
!1177 = !DILocalVariable(name: "buf", arg: 1, scope: !1174, file: !3, line: 642, type: !86)
!1178 = !DILocation(line: 0, scope: !1174)
!1179 = !DILocalVariable(name: "a", arg: 2, scope: !1174, file: !3, line: 642, type: !39)
!1180 = !DILocation(line: 646, column: 7, scope: !1174)
!1181 = !DILocation(line: 646, column: 15, scope: !1174)
!1182 = !DILocation(line: 646, column: 20, scope: !1174)
!1183 = !DILocation(line: 646, column: 12, scope: !1174)
!1184 = !DILocalVariable(name: "w0", scope: !1174, file: !3, line: 644, type: !15)
!1185 = !DILocation(line: 647, column: 8, scope: !1174)
!1186 = !DILocation(line: 647, column: 13, scope: !1174)
!1187 = !DILocation(line: 647, column: 23, scope: !1174)
!1188 = !DILocation(line: 647, column: 28, scope: !1174)
!1189 = !DILocation(line: 647, column: 20, scope: !1174)
!1190 = !DILocalVariable(name: "w1", scope: !1174, file: !3, line: 644, type: !15)
!1191 = !DILocation(line: 648, column: 8, scope: !1174)
!1192 = !DILocation(line: 648, column: 13, scope: !1174)
!1193 = !DILocation(line: 648, column: 23, scope: !1174)
!1194 = !DILocation(line: 648, column: 28, scope: !1174)
!1195 = !DILocation(line: 648, column: 20, scope: !1174)
!1196 = !DILocalVariable(name: "w2", scope: !1174, file: !3, line: 644, type: !15)
!1197 = !DILocation(line: 649, column: 8, scope: !1174)
!1198 = !DILocation(line: 649, column: 13, scope: !1174)
!1199 = !DILocation(line: 649, column: 23, scope: !1174)
!1200 = !DILocation(line: 649, column: 28, scope: !1174)
!1201 = !DILocation(line: 649, column: 20, scope: !1174)
!1202 = !DILocalVariable(name: "w3", scope: !1174, file: !3, line: 644, type: !15)
!1203 = !DILocation(line: 650, column: 17, scope: !1174)
!1204 = !DILocation(line: 650, column: 2, scope: !1174)
!1205 = !DILocation(line: 651, column: 17, scope: !1174)
!1206 = !DILocation(line: 651, column: 2, scope: !1174)
!1207 = !DILocation(line: 652, column: 17, scope: !1174)
!1208 = !DILocation(line: 652, column: 2, scope: !1174)
!1209 = !DILocation(line: 653, column: 17, scope: !1174)
!1210 = !DILocation(line: 653, column: 2, scope: !1174)
!1211 = !DILocation(line: 654, column: 1, scope: !1174)
!1212 = distinct !DISubprogram(name: "NEQ", scope: !187, file: !187, line: 791, type: !740, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1213 = !DILocalVariable(name: "x", arg: 1, scope: !1212, file: !187, line: 791, type: !11)
!1214 = !DILocation(line: 0, scope: !1212)
!1215 = !DILocalVariable(name: "y", arg: 2, scope: !1212, file: !187, line: 791, type: !11)
!1216 = !DILocation(line: 795, column: 8, scope: !1212)
!1217 = !DILocalVariable(name: "q", scope: !1212, file: !187, line: 793, type: !11)
!1218 = !DILocation(line: 796, column: 14, scope: !1212)
!1219 = !DILocation(line: 796, column: 12, scope: !1212)
!1220 = !DILocation(line: 796, column: 18, scope: !1212)
!1221 = !DILocation(line: 796, column: 2, scope: !1212)
!1222 = distinct !DISubprogram(name: "br_enc64be", scope: !187, file: !187, line: 620, type: !1223, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !20, !15}
!1225 = !DILocalVariable(name: "dst", arg: 1, scope: !1222, file: !187, line: 620, type: !20)
!1226 = !DILocation(line: 0, scope: !1222)
!1227 = !DILocalVariable(name: "x", arg: 2, scope: !1222, file: !187, line: 620, type: !15)
!1228 = !DILocalVariable(name: "buf", scope: !1222, file: !187, line: 625, type: !86)
!1229 = !DILocation(line: 628, column: 31, scope: !1222)
!1230 = !DILocation(line: 628, column: 18, scope: !1222)
!1231 = !DILocation(line: 628, column: 2, scope: !1222)
!1232 = !DILocation(line: 629, column: 17, scope: !1222)
!1233 = !DILocation(line: 629, column: 22, scope: !1222)
!1234 = !DILocation(line: 629, column: 2, scope: !1222)
!1235 = !DILocation(line: 631, column: 1, scope: !1222)
!1236 = distinct !DISubprogram(name: "br_enc32be", scope: !187, file: !187, line: 558, type: !1237, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !20, !11}
!1239 = !DILocalVariable(name: "dst", arg: 1, scope: !1236, file: !187, line: 558, type: !20)
!1240 = !DILocation(line: 0, scope: !1236)
!1241 = !DILocalVariable(name: "x", arg: 2, scope: !1236, file: !187, line: 558, type: !11)
!1242 = !DILocalVariable(name: "buf", scope: !1236, file: !187, line: 563, type: !86)
!1243 = !DILocation(line: 566, column: 29, scope: !1236)
!1244 = !DILocation(line: 566, column: 11, scope: !1236)
!1245 = !DILocation(line: 566, column: 2, scope: !1236)
!1246 = !DILocation(line: 566, column: 9, scope: !1236)
!1247 = !DILocation(line: 567, column: 29, scope: !1236)
!1248 = !DILocation(line: 567, column: 11, scope: !1236)
!1249 = !DILocation(line: 567, column: 2, scope: !1236)
!1250 = !DILocation(line: 567, column: 9, scope: !1236)
!1251 = !DILocation(line: 568, column: 29, scope: !1236)
!1252 = !DILocation(line: 568, column: 11, scope: !1236)
!1253 = !DILocation(line: 568, column: 2, scope: !1236)
!1254 = !DILocation(line: 568, column: 9, scope: !1236)
!1255 = !DILocation(line: 569, column: 11, scope: !1236)
!1256 = !DILocation(line: 569, column: 2, scope: !1236)
!1257 = !DILocation(line: 569, column: 9, scope: !1236)
!1258 = !DILocation(line: 571, column: 1, scope: !1236)
!1259 = distinct !DISubprogram(name: "f256_add", scope: !3, file: !3, line: 107, type: !995, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1260 = !DILocalVariable(name: "d", arg: 1, scope: !1259, file: !3, line: 107, type: !38)
!1261 = !DILocation(line: 0, scope: !1259)
!1262 = !DILocalVariable(name: "a", arg: 2, scope: !1259, file: !3, line: 107, type: !39)
!1263 = !DILocalVariable(name: "b", arg: 3, scope: !1259, file: !3, line: 107, type: !39)
!1264 = !DILocation(line: 109, column: 9, scope: !1259)
!1265 = !DILocation(line: 109, column: 16, scope: !1259)
!1266 = !DILocation(line: 109, column: 14, scope: !1259)
!1267 = !DILocation(line: 109, column: 2, scope: !1259)
!1268 = !DILocation(line: 109, column: 7, scope: !1259)
!1269 = !DILocation(line: 110, column: 9, scope: !1259)
!1270 = !DILocation(line: 110, column: 16, scope: !1259)
!1271 = !DILocation(line: 110, column: 14, scope: !1259)
!1272 = !DILocation(line: 110, column: 2, scope: !1259)
!1273 = !DILocation(line: 110, column: 7, scope: !1259)
!1274 = !DILocation(line: 111, column: 9, scope: !1259)
!1275 = !DILocation(line: 111, column: 16, scope: !1259)
!1276 = !DILocation(line: 111, column: 14, scope: !1259)
!1277 = !DILocation(line: 111, column: 2, scope: !1259)
!1278 = !DILocation(line: 111, column: 7, scope: !1259)
!1279 = !DILocation(line: 112, column: 9, scope: !1259)
!1280 = !DILocation(line: 112, column: 16, scope: !1259)
!1281 = !DILocation(line: 112, column: 14, scope: !1259)
!1282 = !DILocation(line: 112, column: 2, scope: !1259)
!1283 = !DILocation(line: 112, column: 7, scope: !1259)
!1284 = !DILocation(line: 113, column: 9, scope: !1259)
!1285 = !DILocation(line: 113, column: 16, scope: !1259)
!1286 = !DILocation(line: 113, column: 14, scope: !1259)
!1287 = !DILocation(line: 113, column: 2, scope: !1259)
!1288 = !DILocation(line: 113, column: 7, scope: !1259)
!1289 = !DILocation(line: 114, column: 1, scope: !1259)
!1290 = distinct !DISubprogram(name: "f256_sub", scope: !3, file: !3, line: 165, type: !995, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1291 = !DILocalVariable(name: "d", arg: 1, scope: !1290, file: !3, line: 165, type: !38)
!1292 = !DILocation(line: 0, scope: !1290)
!1293 = !DILocalVariable(name: "a", arg: 2, scope: !1290, file: !3, line: 165, type: !39)
!1294 = !DILocalVariable(name: "b", arg: 3, scope: !1290, file: !3, line: 165, type: !39)
!1295 = !DILocalVariable(name: "t", scope: !1290, file: !3, line: 167, type: !59)
!1296 = !DILocation(line: 167, column: 11, scope: !1290)
!1297 = !DILocation(line: 185, column: 6, scope: !1290)
!1298 = !DILocation(line: 185, column: 13, scope: !1290)
!1299 = !DILocation(line: 185, column: 11, scope: !1290)
!1300 = !DILocation(line: 185, column: 18, scope: !1290)
!1301 = !DILocalVariable(name: "w", scope: !1290, file: !3, line: 167, type: !15)
!1302 = !DILocation(line: 186, column: 11, scope: !1290)
!1303 = !DILocation(line: 186, column: 2, scope: !1290)
!1304 = !DILocation(line: 186, column: 7, scope: !1290)
!1305 = !DILocation(line: 187, column: 9, scope: !1290)
!1306 = !DILocalVariable(name: "cc", scope: !1290, file: !3, line: 167, type: !15)
!1307 = !DILocation(line: 188, column: 13, scope: !1290)
!1308 = !DILocation(line: 188, column: 8, scope: !1290)
!1309 = !DILocation(line: 188, column: 5, scope: !1290)
!1310 = !DILocation(line: 189, column: 6, scope: !1290)
!1311 = !DILocation(line: 189, column: 13, scope: !1290)
!1312 = !DILocation(line: 189, column: 11, scope: !1290)
!1313 = !DILocation(line: 189, column: 18, scope: !1290)
!1314 = !DILocation(line: 190, column: 11, scope: !1290)
!1315 = !DILocation(line: 190, column: 2, scope: !1290)
!1316 = !DILocation(line: 190, column: 7, scope: !1290)
!1317 = !DILocation(line: 191, column: 9, scope: !1290)
!1318 = !DILocation(line: 192, column: 13, scope: !1290)
!1319 = !DILocation(line: 192, column: 8, scope: !1290)
!1320 = !DILocation(line: 192, column: 5, scope: !1290)
!1321 = !DILocation(line: 193, column: 6, scope: !1290)
!1322 = !DILocation(line: 193, column: 13, scope: !1290)
!1323 = !DILocation(line: 193, column: 11, scope: !1290)
!1324 = !DILocation(line: 193, column: 18, scope: !1290)
!1325 = !DILocation(line: 194, column: 12, scope: !1290)
!1326 = !DILocation(line: 194, column: 22, scope: !1290)
!1327 = !DILocation(line: 194, column: 2, scope: !1290)
!1328 = !DILocation(line: 194, column: 7, scope: !1290)
!1329 = !DILocation(line: 195, column: 9, scope: !1290)
!1330 = !DILocation(line: 196, column: 13, scope: !1290)
!1331 = !DILocation(line: 196, column: 8, scope: !1290)
!1332 = !DILocation(line: 196, column: 5, scope: !1290)
!1333 = !DILocation(line: 197, column: 6, scope: !1290)
!1334 = !DILocation(line: 197, column: 13, scope: !1290)
!1335 = !DILocation(line: 197, column: 11, scope: !1290)
!1336 = !DILocation(line: 197, column: 18, scope: !1290)
!1337 = !DILocation(line: 198, column: 12, scope: !1290)
!1338 = !DILocation(line: 198, column: 22, scope: !1290)
!1339 = !DILocation(line: 198, column: 2, scope: !1290)
!1340 = !DILocation(line: 198, column: 7, scope: !1290)
!1341 = !DILocation(line: 199, column: 9, scope: !1290)
!1342 = !DILocation(line: 200, column: 13, scope: !1290)
!1343 = !DILocation(line: 200, column: 8, scope: !1290)
!1344 = !DILocation(line: 200, column: 5, scope: !1290)
!1345 = !DILocation(line: 201, column: 31, scope: !1290)
!1346 = !DILocation(line: 201, column: 29, scope: !1290)
!1347 = !DILocation(line: 201, column: 38, scope: !1290)
!1348 = !DILocation(line: 201, column: 36, scope: !1290)
!1349 = !DILocation(line: 201, column: 43, scope: !1290)
!1350 = !DILocation(line: 201, column: 2, scope: !1290)
!1351 = !DILocation(line: 201, column: 7, scope: !1290)
!1352 = !DILocation(line: 217, column: 6, scope: !1290)
!1353 = !DILocation(line: 217, column: 11, scope: !1290)
!1354 = !DILocalVariable(name: "s", scope: !1290, file: !3, line: 167, type: !15)
!1355 = !DILocation(line: 219, column: 9, scope: !1290)
!1356 = !DILocation(line: 219, column: 14, scope: !1290)
!1357 = !DILocation(line: 219, column: 2, scope: !1290)
!1358 = !DILocation(line: 219, column: 7, scope: !1290)
!1359 = !DILocation(line: 220, column: 6, scope: !1290)
!1360 = !DILocation(line: 220, column: 16, scope: !1290)
!1361 = !DILocation(line: 220, column: 11, scope: !1290)
!1362 = !DILocation(line: 221, column: 11, scope: !1290)
!1363 = !DILocation(line: 221, column: 2, scope: !1290)
!1364 = !DILocation(line: 221, column: 7, scope: !1290)
!1365 = !DILocation(line: 222, column: 11, scope: !1290)
!1366 = !DILocation(line: 222, column: 7, scope: !1290)
!1367 = !DILocation(line: 222, column: 18, scope: !1290)
!1368 = !DILocation(line: 223, column: 6, scope: !1290)
!1369 = !DILocation(line: 223, column: 11, scope: !1290)
!1370 = !DILocation(line: 224, column: 9, scope: !1290)
!1371 = !DILocation(line: 225, column: 17, scope: !1290)
!1372 = !DILocation(line: 225, column: 11, scope: !1290)
!1373 = !DILocation(line: 225, column: 2, scope: !1290)
!1374 = !DILocation(line: 225, column: 7, scope: !1290)
!1375 = !DILocation(line: 226, column: 6, scope: !1290)
!1376 = !DILocation(line: 226, column: 11, scope: !1290)
!1377 = !DILocation(line: 226, column: 21, scope: !1290)
!1378 = !DILocation(line: 226, column: 16, scope: !1290)
!1379 = !DILocation(line: 227, column: 9, scope: !1290)
!1380 = !DILocation(line: 228, column: 17, scope: !1290)
!1381 = !DILocation(line: 228, column: 11, scope: !1290)
!1382 = !DILocation(line: 228, column: 2, scope: !1290)
!1383 = !DILocation(line: 228, column: 7, scope: !1290)
!1384 = !DILocation(line: 229, column: 10, scope: !1290)
!1385 = !DILocation(line: 229, column: 15, scope: !1290)
!1386 = !DILocation(line: 229, column: 30, scope: !1290)
!1387 = !DILocation(line: 229, column: 25, scope: !1290)
!1388 = !DILocation(line: 229, column: 37, scope: !1290)
!1389 = !DILocation(line: 229, column: 2, scope: !1290)
!1390 = !DILocation(line: 229, column: 7, scope: !1290)
!1391 = !DILocation(line: 236, column: 1, scope: !1290)
!1392 = distinct !DISubprogram(name: "f256_partial_reduce", scope: !3, file: !3, line: 122, type: !634, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1393 = !DILocalVariable(name: "a", arg: 1, scope: !1392, file: !3, line: 122, type: !38)
!1394 = !DILocation(line: 0, scope: !1392)
!1395 = !DILocation(line: 129, column: 6, scope: !1392)
!1396 = !DILocalVariable(name: "w", scope: !1392, file: !3, line: 124, type: !15)
!1397 = !DILocation(line: 130, column: 11, scope: !1392)
!1398 = !DILocation(line: 130, column: 2, scope: !1392)
!1399 = !DILocation(line: 130, column: 7, scope: !1392)
!1400 = !DILocation(line: 131, column: 9, scope: !1392)
!1401 = !DILocalVariable(name: "cc", scope: !1392, file: !3, line: 124, type: !15)
!1402 = !DILocation(line: 132, column: 6, scope: !1392)
!1403 = !DILocation(line: 132, column: 11, scope: !1392)
!1404 = !DILocation(line: 133, column: 11, scope: !1392)
!1405 = !DILocation(line: 133, column: 2, scope: !1392)
!1406 = !DILocation(line: 133, column: 7, scope: !1392)
!1407 = !DILocation(line: 134, column: 9, scope: !1392)
!1408 = !DILocation(line: 135, column: 6, scope: !1392)
!1409 = !DILocation(line: 135, column: 11, scope: !1392)
!1410 = !DILocation(line: 136, column: 11, scope: !1392)
!1411 = !DILocation(line: 136, column: 2, scope: !1392)
!1412 = !DILocation(line: 136, column: 7, scope: !1392)
!1413 = !DILocation(line: 137, column: 9, scope: !1392)
!1414 = !DILocation(line: 138, column: 6, scope: !1392)
!1415 = !DILocation(line: 138, column: 11, scope: !1392)
!1416 = !DILocation(line: 139, column: 11, scope: !1392)
!1417 = !DILocation(line: 139, column: 2, scope: !1392)
!1418 = !DILocation(line: 139, column: 7, scope: !1392)
!1419 = !DILocation(line: 140, column: 9, scope: !1392)
!1420 = !DILocation(line: 141, column: 2, scope: !1392)
!1421 = !DILocation(line: 141, column: 7, scope: !1392)
!1422 = !DILocation(line: 143, column: 6, scope: !1392)
!1423 = !DILocation(line: 143, column: 11, scope: !1392)
!1424 = !DILocalVariable(name: "s", scope: !1392, file: !3, line: 124, type: !15)
!1425 = !DILocation(line: 144, column: 2, scope: !1392)
!1426 = !DILocation(line: 144, column: 7, scope: !1392)
!1427 = !DILocation(line: 145, column: 6, scope: !1392)
!1428 = !DILocation(line: 145, column: 16, scope: !1392)
!1429 = !DILocation(line: 145, column: 11, scope: !1392)
!1430 = !DILocation(line: 146, column: 11, scope: !1392)
!1431 = !DILocation(line: 146, column: 2, scope: !1392)
!1432 = !DILocation(line: 146, column: 7, scope: !1392)
!1433 = !DILocation(line: 147, column: 11, scope: !1392)
!1434 = !DILocation(line: 147, column: 7, scope: !1392)
!1435 = !DILocation(line: 147, column: 18, scope: !1392)
!1436 = !DILocation(line: 148, column: 6, scope: !1392)
!1437 = !DILocation(line: 148, column: 11, scope: !1392)
!1438 = !DILocation(line: 149, column: 11, scope: !1392)
!1439 = !DILocation(line: 149, column: 2, scope: !1392)
!1440 = !DILocation(line: 149, column: 7, scope: !1392)
!1441 = !DILocation(line: 150, column: 9, scope: !1392)
!1442 = !DILocation(line: 151, column: 6, scope: !1392)
!1443 = !DILocation(line: 151, column: 11, scope: !1392)
!1444 = !DILocation(line: 151, column: 21, scope: !1392)
!1445 = !DILocation(line: 151, column: 16, scope: !1392)
!1446 = !DILocation(line: 152, column: 11, scope: !1392)
!1447 = !DILocation(line: 152, column: 2, scope: !1392)
!1448 = !DILocation(line: 152, column: 7, scope: !1392)
!1449 = !DILocation(line: 153, column: 9, scope: !1392)
!1450 = !DILocation(line: 154, column: 6, scope: !1392)
!1451 = !DILocation(line: 154, column: 11, scope: !1392)
!1452 = !DILocation(line: 155, column: 16, scope: !1392)
!1453 = !DILocation(line: 155, column: 11, scope: !1392)
!1454 = !DILocation(line: 155, column: 23, scope: !1392)
!1455 = !DILocation(line: 155, column: 2, scope: !1392)
!1456 = !DILocation(line: 155, column: 7, scope: !1392)
!1457 = !DILocation(line: 156, column: 1, scope: !1392)
!1458 = distinct !DISubprogram(name: "NOT", scope: !187, file: !187, line: 761, type: !1459, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!11, !11}
!1461 = !DILocalVariable(name: "ctl", arg: 1, scope: !1458, file: !187, line: 761, type: !11)
!1462 = !DILocation(line: 0, scope: !1458)
!1463 = !DILocation(line: 763, column: 13, scope: !1458)
!1464 = !DILocation(line: 763, column: 2, scope: !1458)
!1465 = distinct !DISubprogram(name: "point_mul_inner", scope: !3, file: !3, line: 1251, type: !1466, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !329, !1468, !73, !75}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!1469 = !DILocalVariable(name: "R", arg: 1, scope: !1465, file: !3, line: 1251, type: !329)
!1470 = !DILocation(line: 0, scope: !1465)
!1471 = !DILocalVariable(name: "W", arg: 2, scope: !1465, file: !3, line: 1251, type: !1468)
!1472 = !DILocalVariable(name: "k", arg: 3, scope: !1465, file: !3, line: 1252, type: !73)
!1473 = !DILocalVariable(name: "klen", arg: 4, scope: !1465, file: !3, line: 1252, type: !75)
!1474 = !DILocalVariable(name: "Q", scope: !1465, file: !3, line: 1254, type: !225)
!1475 = !DILocation(line: 1254, column: 16, scope: !1465)
!1476 = !DILocation(line: 1257, column: 2, scope: !1465)
!1477 = !DILocalVariable(name: "qz", scope: !1465, file: !3, line: 1255, type: !11)
!1478 = !DILocation(line: 1259, column: 2, scope: !1465)
!1479 = !DILocation(line: 1258, column: 5, scope: !1465)
!1480 = !DILocation(line: 1259, column: 14, scope: !1465)
!1481 = !DILocation(line: 1259, column: 17, scope: !1465)
!1482 = !DILocation(line: 1263, column: 11, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 1259, column: 22)
!1484 = !DILocation(line: 1263, column: 8, scope: !1483)
!1485 = !DILocalVariable(name: "bk", scope: !1483, file: !3, line: 1261, type: !14)
!1486 = !DILocation(line: 0, scope: !1483)
!1487 = !DILocalVariable(name: "i", scope: !1483, file: !3, line: 1260, type: !10)
!1488 = !DILocation(line: 1264, column: 8, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 1264, column: 3)
!1490 = !DILocation(line: 0, scope: !1489)
!1491 = !DILocation(line: 1264, column: 17, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 1264, column: 3)
!1493 = !DILocation(line: 1264, column: 3, scope: !1489)
!1494 = !DILocalVariable(name: "T", scope: !1495, file: !3, line: 1267, type: !55)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 1264, column: 28)
!1496 = !DILocation(line: 1267, column: 16, scope: !1495)
!1497 = !DILocalVariable(name: "U", scope: !1495, file: !3, line: 1268, type: !225)
!1498 = !DILocation(line: 1268, column: 18, scope: !1495)
!1499 = !DILocation(line: 1273, column: 4, scope: !1495)
!1500 = !DILocation(line: 1274, column: 4, scope: !1495)
!1501 = !DILocation(line: 1275, column: 4, scope: !1495)
!1502 = !DILocation(line: 1276, column: 4, scope: !1495)
!1503 = !DILocation(line: 1277, column: 15, scope: !1495)
!1504 = !DILocation(line: 1277, column: 21, scope: !1495)
!1505 = !DILocalVariable(name: "bits", scope: !1495, file: !3, line: 1265, type: !11)
!1506 = !DILocation(line: 0, scope: !1495)
!1507 = !DILocation(line: 1278, column: 10, scope: !1495)
!1508 = !DILocalVariable(name: "bnz", scope: !1495, file: !3, line: 1266, type: !11)
!1509 = !DILocation(line: 1286, column: 4, scope: !1495)
!1510 = !DILocalVariable(name: "n", scope: !1495, file: !3, line: 1269, type: !11)
!1511 = !DILocation(line: 1287, column: 9, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 1287, column: 4)
!1513 = !DILocation(line: 0, scope: !1512)
!1514 = !DILocation(line: 1287, column: 18, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 1287, column: 4)
!1516 = !DILocation(line: 1287, column: 4, scope: !1512)
!1517 = !DILocation(line: 1288, column: 31, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1287, column: 30)
!1519 = !DILocation(line: 1288, column: 20, scope: !1518)
!1520 = !DILocation(line: 1288, column: 10, scope: !1518)
!1521 = !DILocation(line: 1288, column: 9, scope: !1518)
!1522 = !DILocalVariable(name: "m", scope: !1495, file: !3, line: 1271, type: !15)
!1523 = !DILocation(line: 1289, column: 19, scope: !1518)
!1524 = !DILocation(line: 1289, column: 24, scope: !1518)
!1525 = !DILocation(line: 1289, column: 17, scope: !1518)
!1526 = !DILocation(line: 1289, column: 7, scope: !1518)
!1527 = !DILocation(line: 1289, column: 5, scope: !1518)
!1528 = !DILocation(line: 1289, column: 12, scope: !1518)
!1529 = !DILocation(line: 1290, column: 19, scope: !1518)
!1530 = !DILocation(line: 1290, column: 24, scope: !1518)
!1531 = !DILocation(line: 1290, column: 17, scope: !1518)
!1532 = !DILocation(line: 1290, column: 7, scope: !1518)
!1533 = !DILocation(line: 1290, column: 5, scope: !1518)
!1534 = !DILocation(line: 1290, column: 12, scope: !1518)
!1535 = !DILocation(line: 1291, column: 19, scope: !1518)
!1536 = !DILocation(line: 1291, column: 24, scope: !1518)
!1537 = !DILocation(line: 1291, column: 17, scope: !1518)
!1538 = !DILocation(line: 1291, column: 7, scope: !1518)
!1539 = !DILocation(line: 1291, column: 5, scope: !1518)
!1540 = !DILocation(line: 1291, column: 12, scope: !1518)
!1541 = !DILocation(line: 1292, column: 19, scope: !1518)
!1542 = !DILocation(line: 1292, column: 24, scope: !1518)
!1543 = !DILocation(line: 1292, column: 17, scope: !1518)
!1544 = !DILocation(line: 1292, column: 7, scope: !1518)
!1545 = !DILocation(line: 1292, column: 5, scope: !1518)
!1546 = !DILocation(line: 1292, column: 12, scope: !1518)
!1547 = !DILocation(line: 1293, column: 19, scope: !1518)
!1548 = !DILocation(line: 1293, column: 24, scope: !1518)
!1549 = !DILocation(line: 1293, column: 17, scope: !1518)
!1550 = !DILocation(line: 1293, column: 7, scope: !1518)
!1551 = !DILocation(line: 1293, column: 5, scope: !1518)
!1552 = !DILocation(line: 1293, column: 12, scope: !1518)
!1553 = !DILocation(line: 1294, column: 19, scope: !1518)
!1554 = !DILocation(line: 1294, column: 24, scope: !1518)
!1555 = !DILocation(line: 1294, column: 17, scope: !1518)
!1556 = !DILocation(line: 1294, column: 7, scope: !1518)
!1557 = !DILocation(line: 1294, column: 5, scope: !1518)
!1558 = !DILocation(line: 1294, column: 12, scope: !1518)
!1559 = !DILocation(line: 1295, column: 19, scope: !1518)
!1560 = !DILocation(line: 1295, column: 24, scope: !1518)
!1561 = !DILocation(line: 1295, column: 17, scope: !1518)
!1562 = !DILocation(line: 1295, column: 7, scope: !1518)
!1563 = !DILocation(line: 1295, column: 5, scope: !1518)
!1564 = !DILocation(line: 1295, column: 12, scope: !1518)
!1565 = !DILocation(line: 1296, column: 19, scope: !1518)
!1566 = !DILocation(line: 1296, column: 24, scope: !1518)
!1567 = !DILocation(line: 1296, column: 17, scope: !1518)
!1568 = !DILocation(line: 1296, column: 7, scope: !1518)
!1569 = !DILocation(line: 1296, column: 5, scope: !1518)
!1570 = !DILocation(line: 1296, column: 12, scope: !1518)
!1571 = !DILocation(line: 1297, column: 19, scope: !1518)
!1572 = !DILocation(line: 1297, column: 24, scope: !1518)
!1573 = !DILocation(line: 1297, column: 17, scope: !1518)
!1574 = !DILocation(line: 1297, column: 7, scope: !1518)
!1575 = !DILocation(line: 1297, column: 5, scope: !1518)
!1576 = !DILocation(line: 1297, column: 12, scope: !1518)
!1577 = !DILocation(line: 1298, column: 19, scope: !1518)
!1578 = !DILocation(line: 1298, column: 24, scope: !1518)
!1579 = !DILocation(line: 1298, column: 17, scope: !1518)
!1580 = !DILocation(line: 1298, column: 7, scope: !1518)
!1581 = !DILocation(line: 1298, column: 5, scope: !1518)
!1582 = !DILocation(line: 1298, column: 12, scope: !1518)
!1583 = !DILocation(line: 1299, column: 4, scope: !1518)
!1584 = !DILocation(line: 1287, column: 26, scope: !1515)
!1585 = !DILocation(line: 1287, column: 4, scope: !1515)
!1586 = distinct !{!1586, !1516, !1587, !184}
!1587 = !DILocation(line: 1299, column: 4, scope: !1512)
!1588 = !DILocation(line: 1301, column: 8, scope: !1495)
!1589 = !DILocation(line: 1302, column: 4, scope: !1495)
!1590 = !DILocation(line: 1308, column: 24, scope: !1495)
!1591 = !DILocation(line: 1308, column: 9, scope: !1495)
!1592 = !DILocation(line: 1308, column: 8, scope: !1495)
!1593 = !DILocalVariable(name: "j", scope: !1495, file: !3, line: 1270, type: !10)
!1594 = !DILocation(line: 1309, column: 9, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 1309, column: 4)
!1596 = !DILocation(line: 0, scope: !1595)
!1597 = !DILocation(line: 1309, column: 18, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 1309, column: 4)
!1599 = !DILocation(line: 1309, column: 4, scope: !1595)
!1600 = !DILocation(line: 1310, column: 22, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 1309, column: 29)
!1602 = !DILocation(line: 1310, column: 20, scope: !1601)
!1603 = !DILocation(line: 1310, column: 31, scope: !1601)
!1604 = !DILocation(line: 1310, column: 29, scope: !1601)
!1605 = !DILocation(line: 1310, column: 27, scope: !1601)
!1606 = !DILocation(line: 1310, column: 17, scope: !1601)
!1607 = !DILocation(line: 1310, column: 7, scope: !1601)
!1608 = !DILocation(line: 1310, column: 5, scope: !1601)
!1609 = !DILocation(line: 1310, column: 12, scope: !1601)
!1610 = !DILocation(line: 1311, column: 22, scope: !1601)
!1611 = !DILocation(line: 1311, column: 20, scope: !1601)
!1612 = !DILocation(line: 1311, column: 31, scope: !1601)
!1613 = !DILocation(line: 1311, column: 29, scope: !1601)
!1614 = !DILocation(line: 1311, column: 27, scope: !1601)
!1615 = !DILocation(line: 1311, column: 17, scope: !1601)
!1616 = !DILocation(line: 1311, column: 7, scope: !1601)
!1617 = !DILocation(line: 1311, column: 5, scope: !1601)
!1618 = !DILocation(line: 1311, column: 12, scope: !1601)
!1619 = !DILocation(line: 1312, column: 22, scope: !1601)
!1620 = !DILocation(line: 1312, column: 20, scope: !1601)
!1621 = !DILocation(line: 1312, column: 29, scope: !1601)
!1622 = !DILocation(line: 1312, column: 27, scope: !1601)
!1623 = !DILocation(line: 1312, column: 17, scope: !1601)
!1624 = !DILocation(line: 1312, column: 7, scope: !1601)
!1625 = !DILocation(line: 1312, column: 5, scope: !1601)
!1626 = !DILocation(line: 1312, column: 12, scope: !1601)
!1627 = !DILocation(line: 1313, column: 4, scope: !1601)
!1628 = !DILocation(line: 1309, column: 25, scope: !1598)
!1629 = !DILocation(line: 1309, column: 4, scope: !1598)
!1630 = distinct !{!1630, !1599, !1631, !184}
!1631 = !DILocation(line: 1313, column: 4, scope: !1595)
!1632 = !DILocation(line: 1314, column: 16, scope: !1495)
!1633 = !DILocation(line: 1314, column: 14, scope: !1495)
!1634 = !DILocation(line: 1314, column: 21, scope: !1495)
!1635 = !DILocation(line: 1314, column: 25, scope: !1495)
!1636 = !DILocation(line: 1314, column: 4, scope: !1495)
!1637 = !DILocation(line: 1315, column: 10, scope: !1495)
!1638 = !DILocation(line: 1315, column: 7, scope: !1495)
!1639 = !DILocation(line: 1316, column: 7, scope: !1495)
!1640 = !DILocation(line: 1317, column: 3, scope: !1495)
!1641 = !DILocation(line: 1264, column: 24, scope: !1492)
!1642 = !DILocation(line: 1264, column: 3, scope: !1492)
!1643 = distinct !{!1643, !1493, !1644, !184}
!1644 = !DILocation(line: 1317, column: 3, scope: !1489)
!1645 = distinct !{!1645, !1478, !1646, !184}
!1646 = !DILocation(line: 1318, column: 2, scope: !1465)
!1647 = !DILocation(line: 1319, column: 7, scope: !1465)
!1648 = !DILocation(line: 1320, column: 1, scope: !1465)
!1649 = distinct !DISubprogram(name: "p256_add_mixed", scope: !3, file: !3, line: 976, type: !1650, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!11, !329, !1468}
!1652 = !DILocalVariable(name: "P1", arg: 1, scope: !1649, file: !3, line: 976, type: !329)
!1653 = !DILocation(line: 0, scope: !1649)
!1654 = !DILocalVariable(name: "P2", arg: 2, scope: !1649, file: !3, line: 976, type: !1468)
!1655 = !DILocalVariable(name: "t1", scope: !1649, file: !3, line: 991, type: !59)
!1656 = !DILocation(line: 991, column: 11, scope: !1649)
!1657 = !DILocalVariable(name: "t2", scope: !1649, file: !3, line: 991, type: !59)
!1658 = !DILocation(line: 991, column: 18, scope: !1649)
!1659 = !DILocalVariable(name: "t3", scope: !1649, file: !3, line: 991, type: !59)
!1660 = !DILocation(line: 991, column: 25, scope: !1649)
!1661 = !DILocalVariable(name: "t4", scope: !1649, file: !3, line: 991, type: !59)
!1662 = !DILocation(line: 991, column: 32, scope: !1649)
!1663 = !DILocalVariable(name: "t5", scope: !1649, file: !3, line: 991, type: !59)
!1664 = !DILocation(line: 991, column: 39, scope: !1649)
!1665 = !DILocalVariable(name: "t6", scope: !1649, file: !3, line: 991, type: !59)
!1666 = !DILocation(line: 991, column: 46, scope: !1649)
!1667 = !DILocalVariable(name: "t7", scope: !1649, file: !3, line: 991, type: !59)
!1668 = !DILocation(line: 991, column: 53, scope: !1649)
!1669 = !DILocation(line: 997, column: 2, scope: !1649)
!1670 = !DILocation(line: 997, column: 17, scope: !1649)
!1671 = !DILocation(line: 998, column: 2, scope: !1649)
!1672 = !DILocation(line: 998, column: 17, scope: !1649)
!1673 = !DILocation(line: 1003, column: 19, scope: !1649)
!1674 = !DILocation(line: 1003, column: 27, scope: !1649)
!1675 = !DILocation(line: 1003, column: 23, scope: !1649)
!1676 = !DILocation(line: 1003, column: 2, scope: !1649)
!1677 = !DILocation(line: 1004, column: 16, scope: !1649)
!1678 = !DILocation(line: 1004, column: 24, scope: !1649)
!1679 = !DILocation(line: 1004, column: 20, scope: !1649)
!1680 = !DILocation(line: 1004, column: 27, scope: !1649)
!1681 = !DILocation(line: 1004, column: 2, scope: !1649)
!1682 = !DILocation(line: 1005, column: 16, scope: !1649)
!1683 = !DILocation(line: 1005, column: 24, scope: !1649)
!1684 = !DILocation(line: 1005, column: 20, scope: !1649)
!1685 = !DILocation(line: 1005, column: 27, scope: !1649)
!1686 = !DILocation(line: 1005, column: 2, scope: !1649)
!1687 = !DILocation(line: 1006, column: 16, scope: !1649)
!1688 = !DILocation(line: 1006, column: 24, scope: !1649)
!1689 = !DILocation(line: 1006, column: 20, scope: !1649)
!1690 = !DILocation(line: 1006, column: 27, scope: !1649)
!1691 = !DILocation(line: 1006, column: 2, scope: !1649)
!1692 = !DILocation(line: 1013, column: 11, scope: !1649)
!1693 = !DILocation(line: 1013, column: 15, scope: !1649)
!1694 = !DILocation(line: 1013, column: 19, scope: !1649)
!1695 = !DILocation(line: 1013, column: 2, scope: !1649)
!1696 = !DILocation(line: 1014, column: 11, scope: !1649)
!1697 = !DILocation(line: 1014, column: 15, scope: !1649)
!1698 = !DILocation(line: 1014, column: 19, scope: !1649)
!1699 = !DILocation(line: 1014, column: 2, scope: !1649)
!1700 = !DILocation(line: 1015, column: 20, scope: !1649)
!1701 = !DILocation(line: 1015, column: 2, scope: !1649)
!1702 = !DILocation(line: 1016, column: 7, scope: !1649)
!1703 = !DILocation(line: 1016, column: 15, scope: !1649)
!1704 = !DILocation(line: 1016, column: 13, scope: !1649)
!1705 = !DILocation(line: 1016, column: 23, scope: !1649)
!1706 = !DILocation(line: 1016, column: 21, scope: !1649)
!1707 = !DILocation(line: 1016, column: 31, scope: !1649)
!1708 = !DILocation(line: 1016, column: 29, scope: !1649)
!1709 = !DILocation(line: 1016, column: 39, scope: !1649)
!1710 = !DILocation(line: 1016, column: 37, scope: !1649)
!1711 = !DILocalVariable(name: "tt", scope: !1649, file: !3, line: 991, type: !15)
!1712 = !DILocation(line: 1017, column: 28, scope: !1649)
!1713 = !DILocation(line: 1017, column: 22, scope: !1649)
!1714 = !DILocation(line: 1017, column: 8, scope: !1649)
!1715 = !DILocalVariable(name: "ret", scope: !1649, file: !3, line: 992, type: !11)
!1716 = !DILocation(line: 1018, column: 15, scope: !1649)
!1717 = !DILocation(line: 1018, column: 13, scope: !1649)
!1718 = !DILocation(line: 1018, column: 21, scope: !1649)
!1719 = !DILocation(line: 1023, column: 19, scope: !1649)
!1720 = !DILocation(line: 1023, column: 23, scope: !1649)
!1721 = !DILocation(line: 1023, column: 2, scope: !1649)
!1722 = !DILocation(line: 1024, column: 16, scope: !1649)
!1723 = !DILocation(line: 1024, column: 20, scope: !1649)
!1724 = !DILocation(line: 1024, column: 24, scope: !1649)
!1725 = !DILocation(line: 1024, column: 2, scope: !1649)
!1726 = !DILocation(line: 1025, column: 16, scope: !1649)
!1727 = !DILocation(line: 1025, column: 20, scope: !1649)
!1728 = !DILocation(line: 1025, column: 24, scope: !1649)
!1729 = !DILocation(line: 1025, column: 2, scope: !1649)
!1730 = !DILocation(line: 1030, column: 23, scope: !1649)
!1731 = !DILocation(line: 1030, column: 19, scope: !1649)
!1732 = !DILocation(line: 1030, column: 26, scope: !1649)
!1733 = !DILocation(line: 1030, column: 2, scope: !1649)
!1734 = !DILocation(line: 1031, column: 15, scope: !1649)
!1735 = !DILocation(line: 1031, column: 11, scope: !1649)
!1736 = !DILocation(line: 1031, column: 22, scope: !1649)
!1737 = !DILocation(line: 1031, column: 18, scope: !1649)
!1738 = !DILocation(line: 1031, column: 25, scope: !1649)
!1739 = !DILocation(line: 1031, column: 2, scope: !1649)
!1740 = !DILocation(line: 1032, column: 15, scope: !1649)
!1741 = !DILocation(line: 1032, column: 11, scope: !1649)
!1742 = !DILocation(line: 1032, column: 22, scope: !1649)
!1743 = !DILocation(line: 1032, column: 18, scope: !1649)
!1744 = !DILocation(line: 1032, column: 25, scope: !1649)
!1745 = !DILocation(line: 1032, column: 2, scope: !1649)
!1746 = !DILocation(line: 1033, column: 15, scope: !1649)
!1747 = !DILocation(line: 1033, column: 11, scope: !1649)
!1748 = !DILocation(line: 1033, column: 22, scope: !1649)
!1749 = !DILocation(line: 1033, column: 18, scope: !1649)
!1750 = !DILocation(line: 1033, column: 25, scope: !1649)
!1751 = !DILocation(line: 1033, column: 2, scope: !1649)
!1752 = !DILocation(line: 1038, column: 11, scope: !1649)
!1753 = !DILocation(line: 1038, column: 15, scope: !1649)
!1754 = !DILocation(line: 1038, column: 23, scope: !1649)
!1755 = !DILocation(line: 1038, column: 19, scope: !1649)
!1756 = !DILocation(line: 1038, column: 2, scope: !1649)
!1757 = !DILocation(line: 1039, column: 20, scope: !1649)
!1758 = !DILocation(line: 1039, column: 16, scope: !1649)
!1759 = !DILocation(line: 1039, column: 23, scope: !1649)
!1760 = !DILocation(line: 1039, column: 27, scope: !1649)
!1761 = !DILocation(line: 1039, column: 2, scope: !1649)
!1762 = !DILocation(line: 1040, column: 16, scope: !1649)
!1763 = !DILocation(line: 1040, column: 20, scope: !1649)
!1764 = !DILocation(line: 1040, column: 24, scope: !1649)
!1765 = !DILocation(line: 1040, column: 2, scope: !1649)
!1766 = !DILocation(line: 1041, column: 15, scope: !1649)
!1767 = !DILocation(line: 1041, column: 11, scope: !1649)
!1768 = !DILocation(line: 1041, column: 22, scope: !1649)
!1769 = !DILocation(line: 1041, column: 18, scope: !1649)
!1770 = !DILocation(line: 1041, column: 25, scope: !1649)
!1771 = !DILocation(line: 1041, column: 2, scope: !1649)
!1772 = !DILocation(line: 1046, column: 20, scope: !1649)
!1773 = !DILocation(line: 1046, column: 16, scope: !1649)
!1774 = !DILocation(line: 1046, column: 27, scope: !1649)
!1775 = !DILocation(line: 1046, column: 23, scope: !1649)
!1776 = !DILocation(line: 1046, column: 30, scope: !1649)
!1777 = !DILocation(line: 1046, column: 2, scope: !1649)
!1778 = !DILocation(line: 1048, column: 2, scope: !1649)
!1779 = distinct !DISubprogram(name: "window_to_affine", scope: !3, file: !3, line: 1333, type: !1780, scopeLine: 1334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !1782, !329, !10}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!1783 = !DILocalVariable(name: "aff", arg: 1, scope: !1779, file: !3, line: 1333, type: !1782)
!1784 = !DILocation(line: 0, scope: !1779)
!1785 = !DILocalVariable(name: "jac", arg: 2, scope: !1779, file: !3, line: 1333, type: !329)
!1786 = !DILocalVariable(name: "num", arg: 3, scope: !1779, file: !3, line: 1333, type: !10)
!1787 = !DILocalVariable(name: "z", scope: !1779, file: !3, line: 1390, type: !1788)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 5120, elements: !1789)
!1789 = !{!1790, !43}
!1790 = !DISubrange(count: 16)
!1791 = !DILocation(line: 1390, column: 11, scope: !1779)
!1792 = !DILocalVariable(name: "i", scope: !1779, file: !3, line: 1391, type: !10)
!1793 = !DILocation(line: 1401, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 1401, column: 2)
!1795 = !DILocation(line: 0, scope: !1794)
!1796 = !DILocation(line: 1401, column: 17, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 1401, column: 2)
!1798 = !DILocation(line: 1401, column: 22, scope: !1797)
!1799 = !DILocation(line: 1401, column: 2, scope: !1794)
!1800 = !DILocation(line: 1402, column: 10, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 1401, column: 37)
!1802 = !DILocation(line: 1402, column: 3, scope: !1801)
!1803 = !DILocation(line: 1402, column: 14, scope: !1801)
!1804 = !DILocation(line: 1402, column: 21, scope: !1801)
!1805 = !DILocation(line: 1403, column: 10, scope: !1801)
!1806 = !DILocation(line: 1403, column: 17, scope: !1801)
!1807 = !DILocation(line: 1403, column: 3, scope: !1801)
!1808 = !DILocation(line: 1403, column: 26, scope: !1801)
!1809 = !DILocation(line: 1403, column: 20, scope: !1801)
!1810 = !DILocation(line: 1403, column: 31, scope: !1801)
!1811 = !DILocation(line: 1404, column: 16, scope: !1801)
!1812 = !DILocation(line: 1404, column: 10, scope: !1801)
!1813 = !DILocation(line: 1404, column: 21, scope: !1801)
!1814 = !DILocation(line: 1404, column: 3, scope: !1801)
!1815 = !DILocation(line: 1404, column: 24, scope: !1801)
!1816 = !DILocation(line: 1405, column: 21, scope: !1801)
!1817 = !DILocation(line: 1405, column: 17, scope: !1801)
!1818 = !DILocation(line: 1405, column: 28, scope: !1801)
!1819 = !DILocation(line: 1405, column: 35, scope: !1801)
!1820 = !DILocation(line: 1405, column: 44, scope: !1801)
!1821 = !DILocation(line: 1405, column: 38, scope: !1801)
!1822 = !DILocation(line: 1405, column: 49, scope: !1801)
!1823 = !DILocation(line: 1405, column: 3, scope: !1801)
!1824 = !DILocation(line: 1406, column: 2, scope: !1801)
!1825 = !DILocation(line: 1401, column: 31, scope: !1797)
!1826 = !DILocation(line: 1401, column: 2, scope: !1797)
!1827 = distinct !{!1827, !1799, !1828, !184}
!1828 = !DILocation(line: 1406, column: 2, scope: !1794)
!1829 = !DILocation(line: 1407, column: 11, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 1407, column: 6)
!1831 = !DILocation(line: 1407, column: 16, scope: !1830)
!1832 = !DILocation(line: 1407, column: 6, scope: !1779)
!1833 = !DILocation(line: 1408, column: 16, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 1407, column: 22)
!1835 = !DILocation(line: 1408, column: 10, scope: !1834)
!1836 = !DILocation(line: 1408, column: 3, scope: !1834)
!1837 = !DILocation(line: 1408, column: 31, scope: !1834)
!1838 = !DILocation(line: 1408, column: 23, scope: !1834)
!1839 = !DILocation(line: 1408, column: 36, scope: !1834)
!1840 = !DILocation(line: 1409, column: 18, scope: !1834)
!1841 = !DILocation(line: 1409, column: 10, scope: !1834)
!1842 = !DILocation(line: 1409, column: 23, scope: !1834)
!1843 = !DILocation(line: 1409, column: 3, scope: !1834)
!1844 = !DILocation(line: 1410, column: 2, scope: !1834)
!1845 = !DILocalVariable(name: "k", scope: !1779, file: !3, line: 1391, type: !10)
!1846 = !DILocalVariable(name: "s", scope: !1779, file: !3, line: 1391, type: !10)
!1847 = !DILocation(line: 1417, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 1417, column: 2)
!1849 = !DILocation(line: 0, scope: !1848)
!1850 = !DILocation(line: 1417, column: 23, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 1417, column: 2)
!1852 = !DILocation(line: 1417, column: 2, scope: !1848)
!1853 = !DILocation(line: 1420, column: 8, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 1420, column: 3)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 1417, column: 45)
!1856 = !DILocation(line: 0, scope: !1854)
!1857 = !DILocation(line: 1420, column: 17, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 1420, column: 3)
!1859 = !DILocation(line: 1420, column: 3, scope: !1854)
!1860 = !DILocation(line: 1421, column: 18, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 1420, column: 30)
!1862 = !DILocation(line: 1421, column: 25, scope: !1861)
!1863 = !DILocation(line: 1421, column: 28, scope: !1861)
!1864 = !DILocation(line: 1421, column: 35, scope: !1861)
!1865 = !DILocation(line: 1421, column: 43, scope: !1861)
!1866 = !DILocation(line: 1421, column: 49, scope: !1861)
!1867 = !DILocation(line: 1421, column: 38, scope: !1861)
!1868 = !DILocation(line: 1421, column: 4, scope: !1861)
!1869 = !DILocation(line: 1422, column: 3, scope: !1861)
!1870 = !DILocation(line: 1420, column: 26, scope: !1858)
!1871 = !DILocation(line: 1420, column: 3, scope: !1858)
!1872 = distinct !{!1872, !1859, !1873, !184}
!1873 = !DILocation(line: 1422, column: 3, scope: !1854)
!1874 = !DILocation(line: 1423, column: 12, scope: !1855)
!1875 = !DILocation(line: 1423, column: 16, scope: !1855)
!1876 = !DILocation(line: 1423, column: 21, scope: !1855)
!1877 = !DILocalVariable(name: "n", scope: !1855, file: !3, line: 1418, type: !10)
!1878 = !DILocation(line: 0, scope: !1855)
!1879 = !DILocation(line: 1424, column: 8, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 1424, column: 3)
!1881 = !DILocation(line: 0, scope: !1880)
!1882 = !DILocation(line: 1424, column: 22, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 1424, column: 3)
!1884 = !DILocation(line: 1424, column: 17, scope: !1883)
!1885 = !DILocation(line: 1424, column: 3, scope: !1880)
!1886 = !DILocation(line: 1425, column: 18, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 1424, column: 35)
!1888 = !DILocation(line: 1425, column: 28, scope: !1887)
!1889 = !DILocation(line: 1425, column: 24, scope: !1887)
!1890 = !DILocation(line: 1425, column: 40, scope: !1887)
!1891 = !DILocation(line: 1425, column: 46, scope: !1887)
!1892 = !DILocation(line: 1425, column: 35, scope: !1887)
!1893 = !DILocation(line: 1425, column: 4, scope: !1887)
!1894 = !DILocation(line: 1426, column: 3, scope: !1887)
!1895 = !DILocation(line: 1424, column: 31, scope: !1883)
!1896 = !DILocation(line: 1424, column: 3, scope: !1883)
!1897 = distinct !{!1897, !1885, !1898, !184}
!1898 = !DILocation(line: 1426, column: 3, scope: !1880)
!1899 = !DILocation(line: 1427, column: 10, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 1427, column: 7)
!1901 = !DILocation(line: 1427, column: 15, scope: !1900)
!1902 = !DILocation(line: 1427, column: 7, scope: !1855)
!1903 = !DILocation(line: 1428, column: 16, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1427, column: 21)
!1905 = !DILocation(line: 1428, column: 12, scope: !1904)
!1906 = !DILocation(line: 1428, column: 4, scope: !1904)
!1907 = !DILocation(line: 1428, column: 23, scope: !1904)
!1908 = !DILocation(line: 1429, column: 3, scope: !1904)
!1909 = !DILocation(line: 1430, column: 2, scope: !1855)
!1910 = !DILocation(line: 1417, column: 32, scope: !1851)
!1911 = !DILocation(line: 1417, column: 38, scope: !1851)
!1912 = !DILocation(line: 1417, column: 2, scope: !1851)
!1913 = distinct !{!1913, !1852, !1914, !184}
!1914 = !DILocation(line: 1430, column: 2, scope: !1848)
!1915 = !DILocation(line: 1435, column: 14, scope: !1779)
!1916 = !DILocation(line: 1435, column: 18, scope: !1779)
!1917 = !DILocation(line: 1435, column: 2, scope: !1779)
!1918 = !DILocation(line: 1436, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 1436, column: 2)
!1920 = !DILocation(line: 0, scope: !1919)
!1921 = !DILocation(line: 1436, column: 16, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 1436, column: 2)
!1923 = !DILocation(line: 1436, column: 2, scope: !1919)
!1924 = !DILocation(line: 1437, column: 17, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 1436, column: 29)
!1926 = !DILocation(line: 1437, column: 21, scope: !1925)
!1927 = !DILocation(line: 1437, column: 28, scope: !1925)
!1928 = !DILocation(line: 1437, column: 31, scope: !1925)
!1929 = !DILocation(line: 1437, column: 3, scope: !1925)
!1930 = !DILocation(line: 1438, column: 20, scope: !1925)
!1931 = !DILocation(line: 1438, column: 24, scope: !1925)
!1932 = !DILocation(line: 1438, column: 3, scope: !1925)
!1933 = !DILocation(line: 1439, column: 17, scope: !1925)
!1934 = !DILocation(line: 1439, column: 21, scope: !1925)
!1935 = !DILocation(line: 1439, column: 25, scope: !1925)
!1936 = !DILocation(line: 1439, column: 3, scope: !1925)
!1937 = !DILocation(line: 1440, column: 17, scope: !1925)
!1938 = !DILocation(line: 1440, column: 24, scope: !1925)
!1939 = !DILocation(line: 1440, column: 27, scope: !1925)
!1940 = !DILocation(line: 1440, column: 34, scope: !1925)
!1941 = !DILocation(line: 1440, column: 37, scope: !1925)
!1942 = !DILocation(line: 1440, column: 3, scope: !1925)
!1943 = !DILocation(line: 1441, column: 17, scope: !1925)
!1944 = !DILocation(line: 1441, column: 24, scope: !1925)
!1945 = !DILocation(line: 1441, column: 27, scope: !1925)
!1946 = !DILocation(line: 1441, column: 34, scope: !1925)
!1947 = !DILocation(line: 1441, column: 37, scope: !1925)
!1948 = !DILocation(line: 1441, column: 3, scope: !1925)
!1949 = !DILocation(line: 1442, column: 2, scope: !1925)
!1950 = !DILocation(line: 1436, column: 25, scope: !1922)
!1951 = !DILocation(line: 1436, column: 2, scope: !1922)
!1952 = distinct !{!1952, !1923, !1953, !184}
!1953 = !DILocation(line: 1442, column: 2, scope: !1919)
!1954 = !DILocation(line: 1443, column: 1, scope: !1779)
!1955 = distinct !DISubprogram(name: "f256_decode", scope: !3, file: !3, line: 622, type: !1956, scopeLine: 623, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !38, !73}
!1958 = !DILocalVariable(name: "a", arg: 1, scope: !1955, file: !3, line: 622, type: !38)
!1959 = !DILocation(line: 0, scope: !1955)
!1960 = !DILocalVariable(name: "buf", arg: 2, scope: !1955, file: !3, line: 622, type: !73)
!1961 = !DILocation(line: 626, column: 22, scope: !1955)
!1962 = !DILocation(line: 626, column: 7, scope: !1955)
!1963 = !DILocalVariable(name: "w3", scope: !1955, file: !3, line: 624, type: !15)
!1964 = !DILocation(line: 627, column: 22, scope: !1955)
!1965 = !DILocation(line: 627, column: 7, scope: !1955)
!1966 = !DILocalVariable(name: "w2", scope: !1955, file: !3, line: 624, type: !15)
!1967 = !DILocation(line: 628, column: 22, scope: !1955)
!1968 = !DILocation(line: 628, column: 7, scope: !1955)
!1969 = !DILocalVariable(name: "w1", scope: !1955, file: !3, line: 624, type: !15)
!1970 = !DILocation(line: 629, column: 22, scope: !1955)
!1971 = !DILocation(line: 629, column: 7, scope: !1955)
!1972 = !DILocalVariable(name: "w0", scope: !1955, file: !3, line: 624, type: !15)
!1973 = !DILocation(line: 630, column: 12, scope: !1955)
!1974 = !DILocation(line: 630, column: 2, scope: !1955)
!1975 = !DILocation(line: 630, column: 7, scope: !1955)
!1976 = !DILocation(line: 631, column: 14, scope: !1955)
!1977 = !DILocation(line: 631, column: 27, scope: !1955)
!1978 = !DILocation(line: 631, column: 21, scope: !1955)
!1979 = !DILocation(line: 631, column: 35, scope: !1955)
!1980 = !DILocation(line: 631, column: 2, scope: !1955)
!1981 = !DILocation(line: 631, column: 7, scope: !1955)
!1982 = !DILocation(line: 632, column: 14, scope: !1955)
!1983 = !DILocation(line: 632, column: 27, scope: !1955)
!1984 = !DILocation(line: 632, column: 21, scope: !1955)
!1985 = !DILocation(line: 632, column: 35, scope: !1955)
!1986 = !DILocation(line: 632, column: 2, scope: !1955)
!1987 = !DILocation(line: 632, column: 7, scope: !1955)
!1988 = !DILocation(line: 633, column: 14, scope: !1955)
!1989 = !DILocation(line: 633, column: 27, scope: !1955)
!1990 = !DILocation(line: 633, column: 21, scope: !1955)
!1991 = !DILocation(line: 633, column: 35, scope: !1955)
!1992 = !DILocation(line: 633, column: 2, scope: !1955)
!1993 = !DILocation(line: 633, column: 7, scope: !1955)
!1994 = !DILocation(line: 634, column: 12, scope: !1955)
!1995 = !DILocation(line: 634, column: 2, scope: !1955)
!1996 = !DILocation(line: 634, column: 7, scope: !1955)
!1997 = !DILocation(line: 635, column: 1, scope: !1955)
!1998 = !DILocalVariable(name: "d", arg: 1, scope: !35, file: !3, line: 447, type: !38)
!1999 = !DILocation(line: 0, scope: !35)
!2000 = !DILocalVariable(name: "a", arg: 2, scope: !35, file: !3, line: 447, type: !39)
!2001 = !DILocation(line: 460, column: 2, scope: !35)
!2002 = !DILocation(line: 461, column: 1, scope: !35)
!2003 = distinct !DISubprogram(name: "br_dec64be", scope: !187, file: !187, line: 648, type: !2004, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!15, !160}
!2006 = !DILocalVariable(name: "src", arg: 1, scope: !2003, file: !187, line: 648, type: !160)
!2007 = !DILocation(line: 0, scope: !2003)
!2008 = !DILocalVariable(name: "buf", scope: !2003, file: !187, line: 653, type: !73)
!2009 = !DILocation(line: 656, column: 20, scope: !2003)
!2010 = !DILocation(line: 656, column: 10, scope: !2003)
!2011 = !DILocation(line: 656, column: 36, scope: !2003)
!2012 = !DILocation(line: 657, column: 30, scope: !2003)
!2013 = !DILocation(line: 657, column: 15, scope: !2003)
!2014 = !DILocation(line: 657, column: 5, scope: !2003)
!2015 = !DILocation(line: 657, column: 3, scope: !2003)
!2016 = !DILocation(line: 656, column: 2, scope: !2003)
!2017 = distinct !DISubprogram(name: "br_dec32be", scope: !187, file: !187, line: 590, type: !2018, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!11, !160}
!2020 = !DILocalVariable(name: "src", arg: 1, scope: !2017, file: !187, line: 590, type: !160)
!2021 = !DILocation(line: 0, scope: !2017)
!2022 = !DILocalVariable(name: "buf", scope: !2017, file: !187, line: 595, type: !73)
!2023 = !DILocation(line: 598, column: 20, scope: !2017)
!2024 = !DILocation(line: 598, column: 10, scope: !2017)
!2025 = !DILocation(line: 598, column: 27, scope: !2017)
!2026 = !DILocation(line: 599, column: 16, scope: !2017)
!2027 = !DILocation(line: 599, column: 6, scope: !2017)
!2028 = !DILocation(line: 599, column: 23, scope: !2017)
!2029 = !DILocation(line: 599, column: 3, scope: !2017)
!2030 = !DILocation(line: 600, column: 16, scope: !2017)
!2031 = !DILocation(line: 600, column: 6, scope: !2017)
!2032 = !DILocation(line: 600, column: 23, scope: !2017)
!2033 = !DILocation(line: 600, column: 3, scope: !2017)
!2034 = !DILocation(line: 601, column: 15, scope: !2017)
!2035 = !DILocation(line: 601, column: 5, scope: !2017)
!2036 = !DILocation(line: 601, column: 3, scope: !2017)
!2037 = !DILocation(line: 598, column: 2, scope: !2017)
!2038 = distinct !DISubprogram(name: "check_scalar", scope: !3, file: !3, line: 1610, type: !2039, scopeLine: 1611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!11, !73, !75}
!2041 = !DILocalVariable(name: "k", arg: 1, scope: !2038, file: !3, line: 1610, type: !73)
!2042 = !DILocation(line: 0, scope: !2038)
!2043 = !DILocalVariable(name: "klen", arg: 2, scope: !2038, file: !3, line: 1610, type: !75)
!2044 = !DILocation(line: 1616, column: 11, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 1616, column: 6)
!2046 = !DILocation(line: 1616, column: 6, scope: !2038)
!2047 = !DILocation(line: 1617, column: 3, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 1616, column: 17)
!2049 = !DILocalVariable(name: "z", scope: !2038, file: !3, line: 1612, type: !11)
!2050 = !DILocalVariable(name: "u", scope: !2038, file: !3, line: 1614, type: !75)
!2051 = !DILocation(line: 1620, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 1620, column: 2)
!2053 = !DILocation(line: 0, scope: !2052)
!2054 = !DILocation(line: 1620, column: 16, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1620, column: 2)
!2056 = !DILocation(line: 1620, column: 2, scope: !2052)
!2057 = !DILocation(line: 1621, column: 8, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1620, column: 30)
!2059 = !DILocation(line: 1621, column: 5, scope: !2058)
!2060 = !DILocation(line: 1622, column: 2, scope: !2058)
!2061 = !DILocation(line: 1620, column: 26, scope: !2055)
!2062 = !DILocation(line: 1620, column: 2, scope: !2055)
!2063 = distinct !{!2063, !2056, !2064, !184}
!2064 = !DILocation(line: 1622, column: 2, scope: !2052)
!2065 = !DILocation(line: 1623, column: 11, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 1623, column: 6)
!2067 = !DILocation(line: 1623, column: 6, scope: !2038)
!2068 = !DILocalVariable(name: "c", scope: !2038, file: !3, line: 1613, type: !6)
!2069 = !DILocation(line: 1625, column: 8, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 1625, column: 3)
!2071 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1623, column: 18)
!2072 = !DILocation(line: 0, scope: !2071)
!2073 = !DILocation(line: 0, scope: !2070)
!2074 = !DILocation(line: 1625, column: 17, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 1625, column: 3)
!2076 = !DILocation(line: 1625, column: 3, scope: !2070)
!2077 = !DILocation(line: 1626, column: 19, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 1625, column: 31)
!2079 = !DILocation(line: 1626, column: 9, scope: !2078)
!2080 = !DILocation(line: 1626, column: 32, scope: !2078)
!2081 = !DILocation(line: 1626, column: 38, scope: !2078)
!2082 = !DILocation(line: 1626, column: 28, scope: !2078)
!2083 = !DILocation(line: 1626, column: 26, scope: !2078)
!2084 = !DILocation(line: 1626, column: 6, scope: !2078)
!2085 = !DILocation(line: 1627, column: 3, scope: !2078)
!2086 = !DILocation(line: 1625, column: 27, scope: !2075)
!2087 = !DILocation(line: 1625, column: 3, scope: !2075)
!2088 = distinct !{!2088, !2076, !2089, !184}
!2089 = !DILocation(line: 1627, column: 3, scope: !2070)
!2090 = !DILocation(line: 1628, column: 2, scope: !2071)
!2091 = !DILocation(line: 0, scope: !2066)
!2092 = !DILocation(line: 1631, column: 9, scope: !2038)
!2093 = !DILocation(line: 1631, column: 21, scope: !2038)
!2094 = !DILocation(line: 1631, column: 19, scope: !2038)
!2095 = !DILocation(line: 1631, column: 2, scope: !2038)
!2096 = !DILocation(line: 1632, column: 1, scope: !2038)
!2097 = distinct !DISubprogram(name: "EQ0", scope: !187, file: !187, line: 844, type: !2098, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!11, !6}
!2100 = !DILocalVariable(name: "x", arg: 1, scope: !2097, file: !187, line: 844, type: !6)
!2101 = !DILocation(line: 0, scope: !2097)
!2102 = !DILocalVariable(name: "q", scope: !2097, file: !187, line: 846, type: !11)
!2103 = !DILocation(line: 849, column: 15, scope: !2097)
!2104 = !DILocation(line: 849, column: 13, scope: !2097)
!2105 = !DILocation(line: 849, column: 9, scope: !2097)
!2106 = !DILocation(line: 849, column: 19, scope: !2097)
!2107 = !DILocation(line: 849, column: 2, scope: !2097)
!2108 = distinct !DISubprogram(name: "CMP", scope: !187, file: !187, line: 835, type: !2109, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!6, !11, !11}
!2111 = !DILocalVariable(name: "x", arg: 1, scope: !2108, file: !187, line: 835, type: !11)
!2112 = !DILocation(line: 0, scope: !2108)
!2113 = !DILocalVariable(name: "y", arg: 2, scope: !2108, file: !187, line: 835, type: !11)
!2114 = !DILocation(line: 837, column: 18, scope: !2108)
!2115 = !DILocation(line: 837, column: 39, scope: !2108)
!2116 = !DILocation(line: 837, column: 29, scope: !2108)
!2117 = !DILocation(line: 837, column: 27, scope: !2108)
!2118 = !DILocation(line: 837, column: 2, scope: !2108)
!2119 = distinct !DISubprogram(name: "LT0", scope: !187, file: !187, line: 880, type: !2098, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2120 = !DILocalVariable(name: "x", arg: 1, scope: !2119, file: !187, line: 880, type: !6)
!2121 = !DILocation(line: 0, scope: !2119)
!2122 = !DILocation(line: 882, column: 21, scope: !2119)
!2123 = !DILocation(line: 882, column: 2, scope: !2119)
!2124 = distinct !DISubprogram(name: "GT", scope: !187, file: !187, line: 803, type: !740, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2125 = !DILocalVariable(name: "x", arg: 1, scope: !2124, file: !187, line: 803, type: !11)
!2126 = !DILocation(line: 0, scope: !2124)
!2127 = !DILocalVariable(name: "y", arg: 2, scope: !2124, file: !187, line: 803, type: !11)
!2128 = !DILocation(line: 819, column: 8, scope: !2124)
!2129 = !DILocalVariable(name: "z", scope: !2124, file: !187, line: 817, type: !11)
!2130 = !DILocation(line: 820, column: 18, scope: !2124)
!2131 = !DILocation(line: 820, column: 28, scope: !2124)
!2132 = !DILocation(line: 820, column: 23, scope: !2124)
!2133 = !DILocation(line: 820, column: 12, scope: !2124)
!2134 = !DILocation(line: 820, column: 35, scope: !2124)
!2135 = !DILocation(line: 820, column: 2, scope: !2124)
!2136 = distinct !DISubprogram(name: "br_ec_p256_m62_get", scope: !3, file: !3, line: 1751, type: !2137, scopeLine: 1752, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!2139}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!2140 = !DILocation(line: 1753, column: 2, scope: !2136)
