; ModuleID = 'api_mul-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_ec_impl = type { i32, i8* (i32, i64*)*, i8* (i32, i64*)*, i64 (i32, i64*)*, i32 (i8*, i64, i8*, i64, i32)*, i64 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* }
%struct.p256_affine = type { [5 x i64], [5 x i64] }
%struct.smack_value = type { i8* }
%struct.p256_jacobian = type { [5 x i64], [5 x i64], [5 x i64] }
%union.anon = type { [15 x %struct.p256_jacobian] }

@br_ec_p256_m62 = dso_local constant %struct.br_ec_impl { i32 8388608, i8* (i32, i64*)* @api_generator, i8* (i32, i64*)* @api_order, i64 (i32, i64*)* @api_xoff, i32 (i8*, i64, i8*, i64, i32)* @api_mul, i64 (i8*, i8*, i64, i32)* @api_mulgen, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* @api_muladd }, align 8, !dbg !0, !psr.id !95
@f256_frommonty.one = internal constant [5 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0], align 16, !dbg !48, !psr.id !96
@P256_Gwin = internal constant [15 x %struct.p256_affine] [%struct.p256_affine { [5 x i64] [i64 859000078943169, i64 3465582099921383, i64 1726581271406943, i64 1625533376047991, i64 150658718847861], [5 x i64] [i64 1466185490456744, i64 1189782786727410, i64 597251050482574, i64 3805765832181981, i64 95794707978373] }, %struct.p256_affine { [5 x i64] [i64 1246026079757535, i64 198133325595904, i64 361797754727996, i64 2879084652987277, i64 118417320500467], [5 x i64] [i64 1281163443182167, i64 3231616876425014, i64 73512145571196, i64 2879250126016146, i64 154307254527416] }, %struct.p256_affine { [5 x i64] [i64 1118224510620274, i64 2788900539727788, i64 3584174015545220, i64 1264741929966983, i64 115683400445943], [5 x i64] [i64 1620665513443005, i64 3439693246672972, i64 825290406487162, i64 3385020526375194, i64 104482103580796] }, %struct.p256_affine { [5 x i64] [i64 3185097970343109, i64 3789070638740656, i64 282227206589038, i64 2087684192120040, i64 131074606308097], [5 x i64] [i64 4262593119828584, i64 416538616606102, i64 3902316578482247, i64 2360563086057189, i64 82552553260459] }, %struct.p256_affine { [5 x i64] [i64 2439731573301084, i64 2767167225183771, i64 2089212904916553, i64 1064138758793936, i64 158850982645842], [5 x i64] [i64 2731936282112263, i64 4351779113003824, i64 2148405039879822, i64 2557211727988606, i64 63803546524958] }, %struct.p256_affine { [5 x i64] [i64 1252841548571809, i64 4262174922784825, i64 415868082906948, i64 1816139983624795, i64 53277820862995], [5 x i64] [i64 1726290021205178, i64 859814145397715, i64 1752557422232245, i64 2075139836759279, i64 84220397396095] }, %struct.p256_affine { [5 x i64] [i64 937788953572593, i64 1057987900147526, i64 628579247136801, i64 3944928512750860, i64 65580151157027], [5 x i64] [i64 3662490239620318, i64 419628972845127, i64 3540536266075951, i64 2365116406029431, i64 192266650313280] }, %struct.p256_affine { [5 x i64] [i64 1351408399579387, i64 1336573225674737, i64 791402290260828, i64 858579279031024, i64 129985339074130], [5 x i64] [i64 2879162244437877, i64 3799494400800157, i64 1701764862456615, i64 4351601749492926, i64 121775999185005] }, %struct.p256_affine { [5 x i64] [i64 1944977632530062, i64 3511460709889481, i64 3534586466167806, i64 398352858219588, i64 6266493406286], [5 x i64] [i64 2101898038686016, i64 3886074697031351, i64 3117053815486398, i64 4392735482157704, i64 147770981734453] }, %struct.p256_affine { [5 x i64] [i64 3867093462281356, i64 2621027435228184, i64 651686554081384, i64 719851503801928, i64 217826052688692], [5 x i64] [i64 1134180836173671, i64 220176096693291, i64 2742582174263449, i64 3013690457417079, i64 148544217789364] }, %struct.p256_affine { [5 x i64] [i64 669216644415555, i64 1476093821381245, i64 3027691458412665, i64 126374910367117, i64 254026094037449], [5 x i64] [i64 2346438231386246, i64 4087431821793910, i64 3050336546781497, i64 2407569916856606, i64 150839289451099] }, %struct.p256_affine { [5 x i64] [i64 468929471805060, i64 1559332339778743, i64 971443936292335, i64 375912882413038, i64 261812473870398], [5 x i64] [i64 331579187901495, i64 1788395763731628, i64 3912983129419055, i64 3036542457936522, i64 280752505500216] }, %struct.p256_affine { [5 x i64] [i64 657734293614743, i64 2556844816846020, i64 2790015333783158, i64 2068510957387605, i64 61879654037851], [5 x i64] [i64 766411159771135, i64 4367461292127605, i64 551663157332024, i64 2135856372785853, i64 206744536718971] }, %struct.p256_affine { [5 x i64] [i64 2873827259737263, i64 1846728695456322, i64 2307213501064335, i64 2019970762364102, i64 187909973922092], [5 x i64] [i64 804265204745905, i64 4067240475502517, i64 1792743976375657, i64 3302764958006826, i64 90642831370913] }, %struct.p256_affine { [5 x i64] [i64 3812538416387518, i64 3789889850798780, i64 2279523831562814, i64 2824706364548324, i64 46870512446781], [5 x i64] [i64 1448014807582162, i64 1163988132249784, i64 2432641516594005, i64 3927751612882551, i64 4541670557594] }], align 16, !dbg !51, !psr.id !97
@F256_R = internal constant [5 x i64] [i64 16, i64 4222124650659840, i64 4503599627370495, i64 4502500115742719, i64 1048575], align 16, !dbg !46, !psr.id !98
@P256_B_MONTY = internal constant [5 x i64] [i64 3929803208777213, i64 3562985424476316, i64 583760861921372, i64 2309067332692983, i64 214406409308276], align 16, !dbg !44, !psr.id !99
@f256_tomonty.R2 = internal constant [5 x i64] [i64 768, i64 4503599626321920, i64 4503595332403195, i64 4468415255281663, i64 83886079], align 16, !dbg !33, !psr.id !100
@P256_N = internal constant [32 x i8] c"\FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\BC\E6\FA\AD\A7\17\9E\84\F3\B9\CA\C2\FCc%Q", align 16, !dbg !28, !psr.id !101
@P256_G = internal constant [65 x i8] c"\04k\17\D1\F2\E1,BG\F8\BC\E6\E5c\A4@\F2w\03}\81-\EB3\A0\F4\A19E\D8\98\C2\96O\E3B\E2\FE\1A\7F\9B\8E\E7\EBJ|\0F\9E\16+\CE3Wk1^\CE\CB\B6@h7\BFQ\F5", align 16, !dbg !22, !psr.id !102

; Function Attrs: noinline nounwind uwtable
define dso_local void @api_mul_wrapper(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 !dbg !111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !114, metadata !DIExpression()), !dbg !115, !psr.id !116
  call void @llvm.dbg.value(metadata i64 %1, metadata !117, metadata !DIExpression()), !dbg !115, !psr.id !118
  call void @llvm.dbg.value(metadata i8* %2, metadata !119, metadata !DIExpression()), !dbg !115, !psr.id !120
  call void @llvm.dbg.value(metadata i64 %3, metadata !121, metadata !DIExpression()), !dbg !115, !psr.id !122
  call void @llvm.dbg.value(metadata i32 %4, metadata !123, metadata !DIExpression()), !dbg !115, !psr.id !124
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !125, !psr.id !126
  call void @public_in(%struct.smack_value* %6), !dbg !127, !psr.id !128
  %7 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %1), !dbg !129, !psr.id !130
  call void @public_in(%struct.smack_value* %7), !dbg !131, !psr.id !132
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !133, !psr.id !134
  call void @public_in(%struct.smack_value* %8), !dbg !135, !psr.id !136
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !137, !psr.id !138
  call void @public_in(%struct.smack_value* %9), !dbg !139, !psr.id !140
  %10 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %4), !dbg !141, !psr.id !142
  call void @public_in(%struct.smack_value* %10), !dbg !143, !psr.id !144
  %11 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 64), !dbg !145, !psr.id !146
  call void @public_in(%struct.smack_value* %11), !dbg !147, !psr.id !148
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_p256_m62, metadata !149, metadata !DIExpression()), !dbg !115, !psr.id !162
  %12 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_p256_m62, i32 0, i32 4, !dbg !163, !psr.id !164
  %13 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %12, align 8, !dbg !163, !psr.id !165
  %14 = call i32 %13(i8* %0, i64 %1, i8* %2, i64 %3, i32 23), !dbg !166, !psr.id !167
  ret void, !dbg !168, !psr.id !169
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @api_mul_wrapper_t() #0 !dbg !170 {
  %1 = call i8* (...) @getunsigned(), !dbg !173, !psr.id !174
  call void @llvm.dbg.value(metadata i8* %1, metadata !175, metadata !DIExpression()), !dbg !176, !psr.id !177
  %2 = call i64 (...) @getsize_t(), !dbg !178, !psr.id !179
  call void @llvm.dbg.value(metadata i64 %2, metadata !180, metadata !DIExpression()), !dbg !176, !psr.id !181
  %3 = call i8* (...) @getusn(), !dbg !182, !psr.id !183
  call void @llvm.dbg.value(metadata i8* %3, metadata !184, metadata !DIExpression()), !dbg !176, !psr.id !185
  %4 = call i64 (...) @getsize_t2(), !dbg !186, !psr.id !187
  call void @llvm.dbg.value(metadata i64 %4, metadata !188, metadata !DIExpression()), !dbg !176, !psr.id !189
  call void @llvm.dbg.value(metadata i32 29, metadata !190, metadata !DIExpression()), !dbg !176, !psr.id !191
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_p256_m62, metadata !192, metadata !DIExpression()), !dbg !176, !psr.id !193
  %5 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_p256_m62, i32 0, i32 4, !dbg !194, !psr.id !195
  %6 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %5, align 8, !dbg !194, !psr.id !196
  %7 = call i32 %6(i8* %1, i64 %2, i8* %3, i64 %4, i32 23), !dbg !197, !psr.id !198
  ret void, !dbg !199, !psr.id !200
}

declare dso_local i8* @getunsigned(...) #2

declare dso_local i64 @getsize_t(...) #2

declare dso_local i8* @getusn(...) #2

declare dso_local i64 @getsize_t2(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ccopy(i32 %0, i8* %1, i8* %2, i64 %3) #0 !dbg !201 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !206, metadata !DIExpression()), !dbg !207, !psr.id !208
  call void @llvm.dbg.value(metadata i8* %1, metadata !209, metadata !DIExpression()), !dbg !207, !psr.id !210
  call void @llvm.dbg.value(metadata i8* %2, metadata !211, metadata !DIExpression()), !dbg !207, !psr.id !212
  call void @llvm.dbg.value(metadata i64 %3, metadata !213, metadata !DIExpression()), !dbg !207, !psr.id !214
  call void @llvm.dbg.value(metadata i8* %1, metadata !215, metadata !DIExpression()), !dbg !207, !psr.id !216
  call void @llvm.dbg.value(metadata i8* %2, metadata !217, metadata !DIExpression()), !dbg !207, !psr.id !218
  br label %5, !dbg !219, !psr.id !220

5:                                                ; preds = %8, %4
  %.02 = phi i64 [ %3, %4 ], [ %6, %8 ], !psr.id !221
  %.01 = phi i8* [ %1, %4 ], [ %16, %8 ], !dbg !207, !psr.id !222, !PointTainted !223
  %.0 = phi i8* [ %2, %4 ], [ %9, %8 ], !dbg !207, !psr.id !224
  call void @llvm.dbg.value(metadata i8* %.0, metadata !217, metadata !DIExpression()), !dbg !207, !psr.id !225
  call void @llvm.dbg.value(metadata i8* %.01, metadata !215, metadata !DIExpression()), !dbg !207, !psr.id !226
  call void @llvm.dbg.value(metadata i64 %.02, metadata !213, metadata !DIExpression()), !dbg !207, !psr.id !227
  %6 = add i64 %.02, -1, !dbg !228, !psr.id !229
  call void @llvm.dbg.value(metadata i64 %6, metadata !213, metadata !DIExpression()), !dbg !207, !psr.id !230
  %7 = icmp ugt i64 %.02, 0, !dbg !231, !psr.id !232
  br i1 %7, label %8, label %17, !dbg !219, !psr.id !233

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !234, !psr.id !236
  call void @llvm.dbg.value(metadata i8* %9, metadata !217, metadata !DIExpression()), !dbg !207, !psr.id !237
  %10 = load i8, i8* %.0, align 1, !dbg !238, !psr.id !239
  %11 = zext i8 %10 to i32, !dbg !238, !psr.id !240
  call void @llvm.dbg.value(metadata i32 %11, metadata !241, metadata !DIExpression()), !dbg !242, !psr.id !243
  %12 = load i8, i8* %.01, align 1, !dbg !244, !psr.id !245, !ValueTainted !246
  %13 = zext i8 %12 to i32, !dbg !244, !psr.id !247, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %13, metadata !248, metadata !DIExpression()), !dbg !242, !psr.id !249
  %14 = call i32 @MUX(i32 %0, i32 %11, i32 %13), !dbg !250, !psr.id !251, !ValueTainted !246
  %15 = trunc i32 %14 to i8, !dbg !250, !psr.id !252, !ValueTainted !246
  store i8 %15, i8* %.01, align 1, !dbg !253, !psr.id !254
  %16 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !255, !psr.id !256, !PointTainted !223
  call void @llvm.dbg.value(metadata i8* %16, metadata !215, metadata !DIExpression()), !dbg !207, !psr.id !257
  br label %5, !dbg !219, !llvm.loop !258, !psr.id !261

17:                                               ; preds = %5
  ret void, !dbg !262, !psr.id !263
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !264 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !268, metadata !DIExpression()), !dbg !269, !psr.id !270
  call void @llvm.dbg.value(metadata i32 %1, metadata !271, metadata !DIExpression()), !dbg !269, !psr.id !272
  call void @llvm.dbg.value(metadata i32 %2, metadata !273, metadata !DIExpression()), !dbg !269, !psr.id !274
  %4 = sub i32 0, %0, !dbg !275, !psr.id !276, !ValueTainted !246
  %5 = xor i32 %1, %2, !dbg !277, !psr.id !278, !ValueTainted !246
  %6 = and i32 %4, %5, !dbg !279, !psr.id !280, !ValueTainted !246
  %7 = xor i32 %2, %6, !dbg !281, !psr.id !282, !ValueTainted !246
  ret i32 %7, !dbg !283, !psr.id !284
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @api_generator(i32 %0, i64* %1) #0 !dbg !285 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !286, metadata !DIExpression()), !dbg !287, !psr.id !288
  call void @llvm.dbg.value(metadata i64* %1, metadata !289, metadata !DIExpression()), !dbg !287, !psr.id !290
  store i64 65, i64* %1, align 8, !dbg !291, !psr.id !292
  %3 = getelementptr inbounds [65 x i8], [65 x i8]* @P256_G, i64 0, i64 0, !psr.id !293
  ret i8* %3, !dbg !294, !psr.id !295
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @api_order(i32 %0, i64* %1) #0 !dbg !296 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !297, metadata !DIExpression()), !dbg !298, !psr.id !299
  call void @llvm.dbg.value(metadata i64* %1, metadata !300, metadata !DIExpression()), !dbg !298, !psr.id !301
  store i64 32, i64* %1, align 8, !dbg !302, !psr.id !303
  %3 = getelementptr inbounds [32 x i8], [32 x i8]* @P256_N, i64 0, i64 0, !psr.id !304
  ret i8* %3, !dbg !305, !psr.id !306
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @api_xoff(i32 %0, i64* %1) #0 !dbg !307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !308, metadata !DIExpression()), !dbg !309, !psr.id !310
  call void @llvm.dbg.value(metadata i64* %1, metadata !311, metadata !DIExpression()), !dbg !309, !psr.id !312
  store i64 32, i64* %1, align 8, !dbg !313, !psr.id !314
  ret i64 1, !dbg !315, !psr.id !316
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_mul(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 !dbg !317 {
  %6 = alloca %struct.p256_jacobian, align 8, !psr.id !318
  call void @llvm.dbg.value(metadata i8* %0, metadata !319, metadata !DIExpression()), !dbg !320, !psr.id !321
  call void @llvm.dbg.value(metadata i64 %1, metadata !322, metadata !DIExpression()), !dbg !320, !psr.id !323
  call void @llvm.dbg.value(metadata i8* %2, metadata !324, metadata !DIExpression()), !dbg !320, !psr.id !325
  call void @llvm.dbg.value(metadata i64 %3, metadata !326, metadata !DIExpression()), !dbg !320, !psr.id !327
  call void @llvm.dbg.value(metadata i32 %4, metadata !328, metadata !DIExpression()), !dbg !320, !psr.id !329
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %6, metadata !330, metadata !DIExpression()), !dbg !337, !psr.id !338
  %7 = icmp ne i64 %1, 65, !dbg !339, !psr.id !341
  br i1 %7, label %8, label %9, !dbg !342, !psr.id !343

8:                                                ; preds = %5
  br label %15, !dbg !344, !psr.id !346

9:                                                ; preds = %5
  %10 = call i32 @check_scalar(i8* %2, i64 %3), !dbg !347, !psr.id !348, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %10, metadata !349, metadata !DIExpression()), !dbg !320, !psr.id !350
  %11 = call i32 @point_decode(%struct.p256_jacobian* %6, i8* %0), !dbg !351, !psr.id !352
  %12 = and i32 %10, %11, !dbg !353, !psr.id !354, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %12, metadata !349, metadata !DIExpression()), !dbg !320, !psr.id !355
  call void @p256_mul(%struct.p256_jacobian* %6, i8* %2, i64 %3), !dbg !356, !psr.id !357
  %13 = call i32 @point_encode(i8* %0, %struct.p256_jacobian* %6), !dbg !358, !psr.id !359
  %14 = and i32 %12, %13, !dbg !360, !psr.id !361, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %14, metadata !349, metadata !DIExpression()), !dbg !320, !psr.id !362
  br label %15, !dbg !363, !psr.id !364

15:                                               ; preds = %9, %8
  %.0 = phi i32 [ 0, %8 ], [ %14, %9 ], !dbg !320, !psr.id !365, !ValueTainted !246
  ret i32 %.0, !dbg !366, !psr.id !367
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @api_mulgen(i8* %0, i8* %1, i64 %2, i32 %3) #0 !dbg !368 {
  %5 = alloca %struct.p256_jacobian, align 8, !psr.id !369
  call void @llvm.dbg.value(metadata i8* %0, metadata !370, metadata !DIExpression()), !dbg !371, !psr.id !372
  call void @llvm.dbg.value(metadata i8* %1, metadata !373, metadata !DIExpression()), !dbg !371, !psr.id !374
  call void @llvm.dbg.value(metadata i64 %2, metadata !375, metadata !DIExpression()), !dbg !371, !psr.id !376
  call void @llvm.dbg.value(metadata i32 %3, metadata !377, metadata !DIExpression()), !dbg !371, !psr.id !378
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %5, metadata !379, metadata !DIExpression()), !dbg !380, !psr.id !381
  call void @p256_mulgen(%struct.p256_jacobian* %5, i8* %1, i64 %2), !dbg !382, !psr.id !383
  %6 = call i32 @point_encode(i8* %0, %struct.p256_jacobian* %5), !dbg !384, !psr.id !385
  ret i64 65, !dbg !386, !psr.id !387
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @api_muladd(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 !dbg !388 {
  %9 = alloca %struct.p256_jacobian, align 8, !psr.id !389
  %10 = alloca %struct.p256_jacobian, align 8, !psr.id !390
  call void @llvm.dbg.value(metadata i8* %0, metadata !391, metadata !DIExpression()), !dbg !392, !psr.id !393
  call void @llvm.dbg.value(metadata i8* %1, metadata !394, metadata !DIExpression()), !dbg !392, !psr.id !395
  call void @llvm.dbg.value(metadata i64 %2, metadata !396, metadata !DIExpression()), !dbg !392, !psr.id !397
  call void @llvm.dbg.value(metadata i8* %3, metadata !398, metadata !DIExpression()), !dbg !392, !psr.id !399
  call void @llvm.dbg.value(metadata i64 %4, metadata !400, metadata !DIExpression()), !dbg !392, !psr.id !401
  call void @llvm.dbg.value(metadata i8* %5, metadata !402, metadata !DIExpression()), !dbg !392, !psr.id !403
  call void @llvm.dbg.value(metadata i64 %6, metadata !404, metadata !DIExpression()), !dbg !392, !psr.id !405
  call void @llvm.dbg.value(metadata i32 %7, metadata !406, metadata !DIExpression()), !dbg !392, !psr.id !407
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %9, metadata !408, metadata !DIExpression()), !dbg !409, !psr.id !410
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %10, metadata !411, metadata !DIExpression()), !dbg !412, !psr.id !413
  %11 = icmp ne i64 %2, 65, !dbg !414, !psr.id !416
  br i1 %11, label %12, label %13, !dbg !417, !psr.id !418

12:                                               ; preds = %8
  br label %55, !dbg !419, !psr.id !421

13:                                               ; preds = %8
  %14 = call i32 @point_decode(%struct.p256_jacobian* %9, i8* %0), !dbg !422, !psr.id !423
  call void @llvm.dbg.value(metadata i32 %14, metadata !424, metadata !DIExpression()), !dbg !392, !psr.id !425
  call void @p256_mul(%struct.p256_jacobian* %9, i8* %3, i64 %4), !dbg !426, !psr.id !427
  %15 = icmp eq i8* %1, null, !dbg !428, !psr.id !430
  br i1 %15, label %16, label %17, !dbg !431, !psr.id !432

16:                                               ; preds = %13
  call void @p256_mulgen(%struct.p256_jacobian* %10, i8* %5, i64 %6), !dbg !433, !psr.id !435
  br label %20, !dbg !436, !psr.id !437

17:                                               ; preds = %13
  %18 = call i32 @point_decode(%struct.p256_jacobian* %10, i8* %1), !dbg !438, !psr.id !440
  %19 = and i32 %14, %18, !dbg !441, !psr.id !442
  call void @llvm.dbg.value(metadata i32 %19, metadata !424, metadata !DIExpression()), !dbg !392, !psr.id !443
  call void @p256_mul(%struct.p256_jacobian* %10, i8* %5, i64 %6), !dbg !444, !psr.id !445
  br label %20, !psr.id !446

20:                                               ; preds = %17, %16
  %.01 = phi i32 [ %14, %16 ], [ %19, %17 ], !dbg !392, !psr.id !447
  call void @llvm.dbg.value(metadata i32 %.01, metadata !424, metadata !DIExpression()), !dbg !392, !psr.id !448
  %21 = call i32 @p256_add(%struct.p256_jacobian* %9, %struct.p256_jacobian* %10), !dbg !449, !psr.id !450
  call void @llvm.dbg.value(metadata i32 %21, metadata !451, metadata !DIExpression()), !dbg !392, !psr.id !452
  %22 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !453, !psr.id !454
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %22, i64 0, i64 0, !dbg !455, !psr.id !456
  call void @f256_final_reduce(i64* %23), !dbg !457, !psr.id !458
  %24 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !459, !psr.id !460
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 0, !dbg !461, !psr.id !462
  %26 = load i64, i64* %25, align 8, !dbg !461, !psr.id !463
  %27 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !464, !psr.id !465
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %27, i64 0, i64 1, !dbg !466, !psr.id !467
  %29 = load i64, i64* %28, align 8, !dbg !466, !psr.id !468
  %30 = or i64 %26, %29, !dbg !469, !psr.id !470
  %31 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !471, !psr.id !472
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %31, i64 0, i64 2, !dbg !473, !psr.id !474
  %33 = load i64, i64* %32, align 8, !dbg !473, !psr.id !475
  %34 = or i64 %30, %33, !dbg !476, !psr.id !477
  %35 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !478, !psr.id !479
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %35, i64 0, i64 3, !dbg !480, !psr.id !481
  %37 = load i64, i64* %36, align 8, !dbg !480, !psr.id !482
  %38 = or i64 %34, %37, !dbg !483, !psr.id !484
  %39 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !485, !psr.id !486
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 4, !dbg !487, !psr.id !488
  %41 = load i64, i64* %40, align 8, !dbg !487, !psr.id !489
  %42 = or i64 %38, %41, !dbg !490, !psr.id !491
  call void @llvm.dbg.value(metadata i64 %42, metadata !492, metadata !DIExpression()), !dbg !392, !psr.id !493
  %43 = lshr i64 %42, 32, !dbg !494, !psr.id !495
  %44 = or i64 %42, %43, !dbg !496, !psr.id !497
  %45 = trunc i64 %44 to i32, !dbg !498, !psr.id !499
  %46 = call i32 @EQ(i32 %45, i32 0), !dbg !500, !psr.id !501
  call void @llvm.dbg.value(metadata i32 %46, metadata !502, metadata !DIExpression()), !dbg !392, !psr.id !503
  call void @p256_double(%struct.p256_jacobian* %10), !dbg !504, !psr.id !505
  %47 = xor i32 %21, -1, !dbg !506, !psr.id !507
  %48 = and i32 %46, %47, !dbg !508, !psr.id !509
  %49 = bitcast %struct.p256_jacobian* %9 to i8*, !dbg !510, !psr.id !511
  %50 = bitcast %struct.p256_jacobian* %10 to i8*, !dbg !512, !psr.id !513
  call void @br_ccopy(i32 %48, i8* %49, i8* %50, i64 120), !dbg !514, !psr.id !515
  %51 = call i32 @point_encode(i8* %0, %struct.p256_jacobian* %9), !dbg !516, !psr.id !517
  %52 = and i32 %46, %21, !dbg !518, !psr.id !519
  %53 = xor i32 %52, -1, !dbg !520, !psr.id !521
  %54 = and i32 %.01, %53, !dbg !522, !psr.id !523
  call void @llvm.dbg.value(metadata i32 %54, metadata !424, metadata !DIExpression()), !dbg !392, !psr.id !524
  br label %55, !dbg !525, !psr.id !526

55:                                               ; preds = %20, %12
  %.0 = phi i32 [ 0, %12 ], [ %54, %20 ], !dbg !392, !psr.id !527
  ret i32 %.0, !dbg !528, !psr.id !529
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @point_decode(%struct.p256_jacobian* %0, i8* %1) #0 !dbg !530 {
  %3 = alloca [5 x i64], align 16, !psr.id !534
  %4 = alloca [5 x i64], align 16, !psr.id !535
  %5 = alloca [5 x i64], align 16, !psr.id !536
  %6 = alloca [5 x i64], align 16, !psr.id !537
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !538, metadata !DIExpression()), !dbg !539, !psr.id !540
  call void @llvm.dbg.value(metadata i8* %1, metadata !541, metadata !DIExpression()), !dbg !539, !psr.id !542
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !543, metadata !DIExpression()), !dbg !544, !psr.id !545
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !546, metadata !DIExpression()), !dbg !547, !psr.id !548
  call void @llvm.dbg.declare(metadata [5 x i64]* %5, metadata !549, metadata !DIExpression()), !dbg !550, !psr.id !551
  call void @llvm.dbg.declare(metadata [5 x i64]* %6, metadata !552, metadata !DIExpression()), !dbg !553, !psr.id !554
  %7 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !555, !psr.id !556
  %8 = load i8, i8* %7, align 1, !dbg !555, !psr.id !557
  %9 = zext i8 %8 to i32, !dbg !555, !psr.id !558
  %10 = call i32 @EQ(i32 %9, i32 4), !dbg !559, !psr.id !560
  call void @llvm.dbg.value(metadata i32 %10, metadata !561, metadata !DIExpression()), !dbg !539, !psr.id !562
  %11 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !563, !psr.id !564
  %12 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !565, !psr.id !566
  call void @f256_decode(i64* %11, i8* %12), !dbg !567, !psr.id !568
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !569, !psr.id !570
  %14 = getelementptr inbounds i8, i8* %1, i64 33, !dbg !571, !psr.id !572
  call void @f256_decode(i64* %13, i8* %14), !dbg !573, !psr.id !574
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !575, !psr.id !576
  %16 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !577, !psr.id !578
  call void @f256_tomonty(i64* %15, i64* %16), !dbg !579, !psr.id !580
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !581, !psr.id !582
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !583, !psr.id !584
  call void @f256_tomonty(i64* %17, i64* %18), !dbg !585, !psr.id !586
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !587, !psr.id !588
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !589, !psr.id !590
  call void @f256_montysquare(i64* %19, i64* %20), !dbg !591, !psr.id !592
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !593, !psr.id !594
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !595, !psr.id !596
  call void @f256_montysquare(i64* %21, i64* %22), !dbg !597, !psr.id !598
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !599, !psr.id !600
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !601, !psr.id !602
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !603, !psr.id !604
  call void @f256_montymul(i64* %23, i64* %24, i64* %25), !dbg !605, !psr.id !606
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !607, !psr.id !608
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !609, !psr.id !610
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !611, !psr.id !612
  call void @f256_sub(i64* %26, i64* %27, i64* %28), !dbg !613, !psr.id !614
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !615, !psr.id !616
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !617, !psr.id !618
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !619, !psr.id !620
  call void @f256_add(i64* %29, i64* %30, i64* %31), !dbg !621, !psr.id !622
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !623, !psr.id !624
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !625, !psr.id !626
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !627, !psr.id !628
  call void @f256_add(i64* %32, i64* %33, i64* %34), !dbg !629, !psr.id !630
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !631, !psr.id !632
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !633, !psr.id !634
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !635, !psr.id !636
  call void @f256_add(i64* %35, i64* %36, i64* %37), !dbg !637, !psr.id !638
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !639, !psr.id !640
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !641, !psr.id !642
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* @P256_B_MONTY, i64 0, i64 0, !psr.id !643
  call void @f256_sub(i64* %38, i64* %39, i64* %40), !dbg !644, !psr.id !645
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !646, !psr.id !647
  call void @f256_final_reduce(i64* %41), !dbg !648, !psr.id !649
  %42 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !650, !psr.id !651
  %43 = load i64, i64* %42, align 16, !dbg !650, !psr.id !652
  %44 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 1, !dbg !653, !psr.id !654
  %45 = load i64, i64* %44, align 8, !dbg !653, !psr.id !655
  %46 = or i64 %43, %45, !dbg !656, !psr.id !657
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 2, !dbg !658, !psr.id !659
  %48 = load i64, i64* %47, align 16, !dbg !658, !psr.id !660
  %49 = or i64 %46, %48, !dbg !661, !psr.id !662
  %50 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 3, !dbg !663, !psr.id !664
  %51 = load i64, i64* %50, align 8, !dbg !663, !psr.id !665
  %52 = or i64 %49, %51, !dbg !666, !psr.id !667
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 4, !dbg !668, !psr.id !669
  %54 = load i64, i64* %53, align 16, !dbg !668, !psr.id !670
  %55 = or i64 %52, %54, !dbg !671, !psr.id !672
  call void @llvm.dbg.value(metadata i64 %55, metadata !673, metadata !DIExpression()), !dbg !539, !psr.id !674
  %56 = lshr i64 %55, 32, !dbg !675, !psr.id !676
  %57 = or i64 %55, %56, !dbg !677, !psr.id !678
  %58 = trunc i64 %57 to i32, !dbg !679, !psr.id !680
  %59 = call i32 @EQ(i32 %58, i32 0), !dbg !681, !psr.id !682
  %60 = and i32 %10, %59, !dbg !683, !psr.id !684
  call void @llvm.dbg.value(metadata i32 %60, metadata !561, metadata !DIExpression()), !dbg !539, !psr.id !685
  %61 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !686, !psr.id !687
  %62 = getelementptr inbounds [5 x i64], [5 x i64]* %61, i64 0, i64 0, !dbg !688, !psr.id !689
  %63 = bitcast i64* %62 to i8*, !dbg !688, !psr.id !690
  %64 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !688, !psr.id !691
  %65 = bitcast i64* %64 to i8*, !dbg !688, !psr.id !692
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 16 %65, i64 40, i1 false), !dbg !688, !psr.id !693
  %66 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !694, !psr.id !695
  %67 = getelementptr inbounds [5 x i64], [5 x i64]* %66, i64 0, i64 0, !dbg !696, !psr.id !697
  %68 = bitcast i64* %67 to i8*, !dbg !696, !psr.id !698
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !696, !psr.id !699
  %70 = bitcast i64* %69 to i8*, !dbg !696, !psr.id !700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 16 %70, i64 40, i1 false), !dbg !696, !psr.id !701
  %71 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !702, !psr.id !703
  %72 = getelementptr inbounds [5 x i64], [5 x i64]* %71, i64 0, i64 0, !dbg !704, !psr.id !705
  %73 = bitcast i64* %72 to i8*, !dbg !704, !psr.id !706
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 16 bitcast ([5 x i64]* @F256_R to i8*), i64 40, i1 false), !dbg !704, !psr.id !707
  ret i32 %60, !dbg !708, !psr.id !709
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_mul(%struct.p256_jacobian* %0, i8* %1, i64 %2) #0 !dbg !710 {
  %4 = alloca %union.anon, align 8, !psr.id !713
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !714, metadata !DIExpression()), !dbg !715, !psr.id !716
  call void @llvm.dbg.value(metadata i8* %1, metadata !717, metadata !DIExpression()), !dbg !715, !psr.id !718
  call void @llvm.dbg.value(metadata i64 %2, metadata !719, metadata !DIExpression()), !dbg !715, !psr.id !720
  call void @llvm.dbg.declare(metadata %union.anon* %4, metadata !721, metadata !DIExpression()), !dbg !728, !psr.id !729
  %5 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !730, !psr.id !731
  %6 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %5, i64 0, i64 0, !dbg !732, !psr.id !733
  %7 = bitcast %struct.p256_jacobian* %6 to i8*, !dbg !734, !psr.id !735
  %8 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !734, !psr.id !736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 120, i1 false), !dbg !734, !psr.id !737
  call void @llvm.dbg.value(metadata i32 2, metadata !738, metadata !DIExpression()), !dbg !715, !psr.id !739
  br label %9, !dbg !740, !psr.id !742

9:                                                ; preds = %41, %3
  %.0 = phi i32 [ 2, %3 ], [ %42, %41 ], !dbg !743, !psr.id !744
  call void @llvm.dbg.value(metadata i32 %.0, metadata !738, metadata !DIExpression()), !dbg !715, !psr.id !745
  %10 = icmp slt i32 %.0, 16, !dbg !746, !psr.id !748
  br i1 %10, label %11, label %43, !dbg !749, !psr.id !750

11:                                               ; preds = %9
  %12 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !751, !psr.id !753
  %13 = sub nsw i32 %.0, 1, !dbg !754, !psr.id !755
  %14 = sext i32 %13 to i64, !dbg !756, !psr.id !757
  %15 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %12, i64 0, i64 %14, !dbg !756, !psr.id !758
  %16 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !759, !psr.id !760
  %17 = ashr i32 %.0, 1, !dbg !761, !psr.id !762
  %18 = sub nsw i32 %17, 1, !dbg !763, !psr.id !764
  %19 = sext i32 %18 to i64, !dbg !765, !psr.id !766
  %20 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %16, i64 0, i64 %19, !dbg !765, !psr.id !767
  %21 = bitcast %struct.p256_jacobian* %15 to i8*, !dbg !765, !psr.id !768
  %22 = bitcast %struct.p256_jacobian* %20 to i8*, !dbg !765, !psr.id !769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 120, i1 false), !dbg !765, !psr.id !770
  %23 = and i32 %.0, 1, !dbg !771, !psr.id !773
  %24 = icmp eq i32 %23, 0, !dbg !774, !psr.id !775
  br i1 %24, label %25, label %30, !dbg !776, !psr.id !777

25:                                               ; preds = %11
  %26 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !778, !psr.id !780
  %27 = sub nsw i32 %.0, 1, !dbg !781, !psr.id !782
  %28 = sext i32 %27 to i64, !dbg !783, !psr.id !784
  %29 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %26, i64 0, i64 %28, !dbg !783, !psr.id !785
  call void @p256_double(%struct.p256_jacobian* %29), !dbg !786, !psr.id !787
  br label %40, !dbg !788, !psr.id !789

30:                                               ; preds = %11
  %31 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !790, !psr.id !792
  %32 = sub nsw i32 %.0, 1, !dbg !793, !psr.id !794
  %33 = sext i32 %32 to i64, !dbg !795, !psr.id !796
  %34 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %31, i64 0, i64 %33, !dbg !795, !psr.id !797
  %35 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !798, !psr.id !799
  %36 = ashr i32 %.0, 1, !dbg !800, !psr.id !801
  %37 = sext i32 %36 to i64, !dbg !802, !psr.id !803
  %38 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %35, i64 0, i64 %37, !dbg !802, !psr.id !804
  %39 = call i32 @p256_add(%struct.p256_jacobian* %34, %struct.p256_jacobian* %38), !dbg !805, !psr.id !806
  br label %40, !psr.id !807

40:                                               ; preds = %30, %25
  br label %41, !dbg !808, !psr.id !809

41:                                               ; preds = %40
  %42 = add nsw i32 %.0, 1, !dbg !810, !psr.id !811
  call void @llvm.dbg.value(metadata i32 %42, metadata !738, metadata !DIExpression()), !dbg !715, !psr.id !812
  br label %9, !dbg !813, !llvm.loop !814, !psr.id !816

43:                                               ; preds = %9
  %44 = bitcast %union.anon* %4 to [15 x %struct.p256_affine]*, !dbg !817, !psr.id !818
  %45 = getelementptr inbounds [15 x %struct.p256_affine], [15 x %struct.p256_affine]* %44, i64 0, i64 0, !dbg !819, !psr.id !820
  %46 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !821, !psr.id !822
  %47 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %46, i64 0, i64 0, !dbg !823, !psr.id !824
  call void @window_to_affine(%struct.p256_affine* %45, %struct.p256_jacobian* %47, i32 15), !dbg !825, !psr.id !826
  %48 = bitcast %union.anon* %4 to [15 x %struct.p256_affine]*, !dbg !827, !psr.id !828
  %49 = getelementptr inbounds [15 x %struct.p256_affine], [15 x %struct.p256_affine]* %48, i64 0, i64 0, !dbg !829, !psr.id !830
  call void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* %49, i8* %1, i64 %2), !dbg !831, !psr.id !832
  ret void, !dbg !833, !psr.id !834
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_mulgen(%struct.p256_jacobian* %0, i8* %1, i64 %2) #0 !dbg !835 {
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !836, metadata !DIExpression()), !dbg !837, !psr.id !838
  call void @llvm.dbg.value(metadata i8* %1, metadata !839, metadata !DIExpression()), !dbg !837, !psr.id !840
  call void @llvm.dbg.value(metadata i64 %2, metadata !841, metadata !DIExpression()), !dbg !837, !psr.id !842
  %4 = getelementptr inbounds [15 x %struct.p256_affine], [15 x %struct.p256_affine]* @P256_Gwin, i64 0, i64 0, !psr.id !843
  call void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* %4, i8* %1, i64 %2), !dbg !844, !psr.id !845
  ret void, !dbg !846, !psr.id !847
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @p256_add(%struct.p256_jacobian* %0, %struct.p256_jacobian* %1) #0 !dbg !848 {
  %3 = alloca [5 x i64], align 16, !psr.id !853
  %4 = alloca [5 x i64], align 16, !psr.id !854
  %5 = alloca [5 x i64], align 16, !psr.id !855
  %6 = alloca [5 x i64], align 16, !psr.id !856
  %7 = alloca [5 x i64], align 16, !psr.id !857
  %8 = alloca [5 x i64], align 16, !psr.id !858
  %9 = alloca [5 x i64], align 16, !psr.id !859
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !860, metadata !DIExpression()), !dbg !861, !psr.id !862
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !863, metadata !DIExpression()), !dbg !861, !psr.id !864
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !865, metadata !DIExpression()), !dbg !866, !psr.id !867
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !868, metadata !DIExpression()), !dbg !869, !psr.id !870
  call void @llvm.dbg.declare(metadata [5 x i64]* %5, metadata !871, metadata !DIExpression()), !dbg !872, !psr.id !873
  call void @llvm.dbg.declare(metadata [5 x i64]* %6, metadata !874, metadata !DIExpression()), !dbg !875, !psr.id !876
  call void @llvm.dbg.declare(metadata [5 x i64]* %7, metadata !877, metadata !DIExpression()), !dbg !878, !psr.id !879
  call void @llvm.dbg.declare(metadata [5 x i64]* %8, metadata !880, metadata !DIExpression()), !dbg !881, !psr.id !882
  call void @llvm.dbg.declare(metadata [5 x i64]* %9, metadata !883, metadata !DIExpression()), !dbg !884, !psr.id !885
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !886, !psr.id !887
  %11 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !888, !psr.id !889
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 0, !dbg !890, !psr.id !891
  call void @f256_montysquare(i64* %10, i64* %12), !dbg !892, !psr.id !893
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !894, !psr.id !895
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !896, !psr.id !897
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0, !dbg !898, !psr.id !899
  %16 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !900, !psr.id !901
  call void @f256_montymul(i64* %13, i64* %15, i64* %16), !dbg !902, !psr.id !903
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !904, !psr.id !905
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !906, !psr.id !907
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %18, i64 0, i64 0, !dbg !908, !psr.id !909
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !910, !psr.id !911
  call void @f256_montymul(i64* %17, i64* %19, i64* %20), !dbg !912, !psr.id !913
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !914, !psr.id !915
  %22 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !916, !psr.id !917
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %22, i64 0, i64 0, !dbg !918, !psr.id !919
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !920, !psr.id !921
  call void @f256_montymul(i64* %21, i64* %23, i64* %24), !dbg !922, !psr.id !923
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !924, !psr.id !925
  %26 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !926, !psr.id !927
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 0, !dbg !928, !psr.id !929
  call void @f256_montysquare(i64* %25, i64* %27), !dbg !930, !psr.id !931
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !932, !psr.id !933
  %29 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 0, !dbg !934, !psr.id !935
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %29, i64 0, i64 0, !dbg !936, !psr.id !937
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !938, !psr.id !939
  call void @f256_montymul(i64* %28, i64* %30, i64* %31), !dbg !940, !psr.id !941
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !942, !psr.id !943
  %33 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !944, !psr.id !945
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %33, i64 0, i64 0, !dbg !946, !psr.id !947
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !948, !psr.id !949
  call void @f256_montymul(i64* %32, i64* %34, i64* %35), !dbg !950, !psr.id !951
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !952, !psr.id !953
  %37 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 1, !dbg !954, !psr.id !955
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %37, i64 0, i64 0, !dbg !956, !psr.id !957
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !958, !psr.id !959
  call void @f256_montymul(i64* %36, i64* %38, i64* %39), !dbg !960, !psr.id !961
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !962, !psr.id !963
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !964, !psr.id !965
  %42 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !966, !psr.id !967
  call void @f256_sub(i64* %40, i64* %41, i64* %42), !dbg !968, !psr.id !969
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !970, !psr.id !971
  %44 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !972, !psr.id !973
  %45 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !974, !psr.id !975
  call void @f256_sub(i64* %43, i64* %44, i64* %45), !dbg !976, !psr.id !977
  %46 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !978, !psr.id !979
  call void @f256_final_reduce(i64* %46), !dbg !980, !psr.id !981
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !982, !psr.id !983
  %48 = load i64, i64* %47, align 16, !dbg !982, !psr.id !984
  %49 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 1, !dbg !985, !psr.id !986
  %50 = load i64, i64* %49, align 8, !dbg !985, !psr.id !987
  %51 = or i64 %48, %50, !dbg !988, !psr.id !989
  %52 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 2, !dbg !990, !psr.id !991
  %53 = load i64, i64* %52, align 16, !dbg !990, !psr.id !992
  %54 = or i64 %51, %53, !dbg !993, !psr.id !994
  %55 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 3, !dbg !995, !psr.id !996
  %56 = load i64, i64* %55, align 8, !dbg !995, !psr.id !997
  %57 = or i64 %54, %56, !dbg !998, !psr.id !999
  %58 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 4, !dbg !1000, !psr.id !1001
  %59 = load i64, i64* %58, align 16, !dbg !1000, !psr.id !1002
  %60 = or i64 %57, %59, !dbg !1003, !psr.id !1004
  call void @llvm.dbg.value(metadata i64 %60, metadata !1005, metadata !DIExpression()), !dbg !861, !psr.id !1006
  %61 = lshr i64 %60, 32, !dbg !1007, !psr.id !1008
  %62 = or i64 %60, %61, !dbg !1009, !psr.id !1010
  %63 = trunc i64 %62 to i32, !dbg !1011, !psr.id !1012
  call void @llvm.dbg.value(metadata i32 %63, metadata !1013, metadata !DIExpression()), !dbg !861, !psr.id !1014
  %64 = sub i32 0, %63, !dbg !1015, !psr.id !1016
  %65 = or i32 %63, %64, !dbg !1017, !psr.id !1018
  %66 = lshr i32 %65, 31, !dbg !1019, !psr.id !1020
  call void @llvm.dbg.value(metadata i32 %66, metadata !1013, metadata !DIExpression()), !dbg !861, !psr.id !1021
  %67 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !1022, !psr.id !1023
  %68 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1024, !psr.id !1025
  call void @f256_montysquare(i64* %67, i64* %68), !dbg !1026, !psr.id !1027
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1028, !psr.id !1029
  %70 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1030, !psr.id !1031
  %71 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !1032, !psr.id !1033
  call void @f256_montymul(i64* %69, i64* %70, i64* %71), !dbg !1034, !psr.id !1035
  %72 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !1036, !psr.id !1037
  %73 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !1038, !psr.id !1039
  %74 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1040, !psr.id !1041
  call void @f256_montymul(i64* %72, i64* %73, i64* %74), !dbg !1042, !psr.id !1043
  %75 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1044, !psr.id !1045
  %76 = getelementptr inbounds [5 x i64], [5 x i64]* %75, i64 0, i64 0, !dbg !1046, !psr.id !1047
  %77 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1048, !psr.id !1049
  call void @f256_montysquare(i64* %76, i64* %77), !dbg !1050, !psr.id !1051
  %78 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1052, !psr.id !1053
  %79 = getelementptr inbounds [5 x i64], [5 x i64]* %78, i64 0, i64 0, !dbg !1054, !psr.id !1055
  %80 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1056, !psr.id !1057
  %81 = getelementptr inbounds [5 x i64], [5 x i64]* %80, i64 0, i64 0, !dbg !1058, !psr.id !1059
  %82 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !1060, !psr.id !1061
  call void @f256_sub(i64* %79, i64* %81, i64* %82), !dbg !1062, !psr.id !1063
  %83 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1064, !psr.id !1065
  %84 = getelementptr inbounds [5 x i64], [5 x i64]* %83, i64 0, i64 0, !dbg !1066, !psr.id !1067
  %85 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1068, !psr.id !1069
  %86 = getelementptr inbounds [5 x i64], [5 x i64]* %85, i64 0, i64 0, !dbg !1070, !psr.id !1071
  %87 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1072, !psr.id !1073
  call void @f256_sub(i64* %84, i64* %86, i64* %87), !dbg !1074, !psr.id !1075
  %88 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1076, !psr.id !1077
  %89 = getelementptr inbounds [5 x i64], [5 x i64]* %88, i64 0, i64 0, !dbg !1078, !psr.id !1079
  %90 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1080, !psr.id !1081
  %91 = getelementptr inbounds [5 x i64], [5 x i64]* %90, i64 0, i64 0, !dbg !1082, !psr.id !1083
  %92 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1084, !psr.id !1085
  call void @f256_sub(i64* %89, i64* %91, i64* %92), !dbg !1086, !psr.id !1087
  %93 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1088, !psr.id !1089
  %94 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1090, !psr.id !1091
  %95 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1092, !psr.id !1093
  %96 = getelementptr inbounds [5 x i64], [5 x i64]* %95, i64 0, i64 0, !dbg !1094, !psr.id !1095
  call void @f256_sub(i64* %93, i64* %94, i64* %96), !dbg !1096, !psr.id !1097
  %97 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1098, !psr.id !1099
  %98 = getelementptr inbounds [5 x i64], [5 x i64]* %97, i64 0, i64 0, !dbg !1100, !psr.id !1101
  %99 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1102, !psr.id !1103
  %100 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1104, !psr.id !1105
  call void @f256_montymul(i64* %98, i64* %99, i64* %100), !dbg !1106, !psr.id !1107
  %101 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1108, !psr.id !1109
  %102 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !1110, !psr.id !1111
  %103 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1112, !psr.id !1113
  call void @f256_montymul(i64* %101, i64* %102, i64* %103), !dbg !1114, !psr.id !1115
  %104 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1116, !psr.id !1117
  %105 = getelementptr inbounds [5 x i64], [5 x i64]* %104, i64 0, i64 0, !dbg !1118, !psr.id !1119
  %106 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1120, !psr.id !1121
  %107 = getelementptr inbounds [5 x i64], [5 x i64]* %106, i64 0, i64 0, !dbg !1122, !psr.id !1123
  %108 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1124, !psr.id !1125
  call void @f256_sub(i64* %105, i64* %107, i64* %108), !dbg !1126, !psr.id !1127
  %109 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1128, !psr.id !1129
  %110 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1130, !psr.id !1131
  %111 = getelementptr inbounds [5 x i64], [5 x i64]* %110, i64 0, i64 0, !dbg !1132, !psr.id !1133
  %112 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1134, !psr.id !1135
  %113 = getelementptr inbounds [5 x i64], [5 x i64]* %112, i64 0, i64 0, !dbg !1136, !psr.id !1137
  call void @f256_montymul(i64* %109, i64* %111, i64* %113), !dbg !1138, !psr.id !1139
  %114 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1140, !psr.id !1141
  %115 = getelementptr inbounds [5 x i64], [5 x i64]* %114, i64 0, i64 0, !dbg !1142, !psr.id !1143
  %116 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1144, !psr.id !1145
  %117 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1146, !psr.id !1147
  call void @f256_montymul(i64* %115, i64* %116, i64* %117), !dbg !1148, !psr.id !1149
  ret i32 %66, !dbg !1150, !psr.id !1151
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_final_reduce(i64* %0) #0 !dbg !1152 {
  %2 = alloca [5 x i64], align 16, !psr.id !1155
  %3 = alloca [5 x i64], align 16, !psr.id !1156
  call void @llvm.dbg.value(metadata i64* %0, metadata !1157, metadata !DIExpression()), !dbg !1158, !psr.id !1159
  call void @llvm.dbg.declare(metadata [5 x i64]* %2, metadata !1160, metadata !DIExpression()), !dbg !1161, !psr.id !1162
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !1163, metadata !DIExpression()), !dbg !1164, !psr.id !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !1166, metadata !DIExpression()), !dbg !1158, !psr.id !1167
  call void @llvm.dbg.value(metadata i32 0, metadata !1168, metadata !DIExpression()), !dbg !1158, !psr.id !1169
  br label %4, !dbg !1170, !psr.id !1172

4:                                                ; preds = %15, %1
  %.01 = phi i64 [ 0, %1 ], [ %14, %15 ], !dbg !1158, !psr.id !1173, !ValueTainted !246
  %.0 = phi i32 [ 0, %1 ], [ %16, %15 ], !dbg !1174, !psr.id !1175
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1168, metadata !DIExpression()), !dbg !1158, !psr.id !1176
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1166, metadata !DIExpression()), !dbg !1158, !psr.id !1177
  %5 = icmp slt i32 %.0, 5, !dbg !1178, !psr.id !1180
  br i1 %5, label %6, label %17, !dbg !1181, !psr.id !1182

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64, !dbg !1183, !psr.id !1185
  %8 = getelementptr inbounds i64, i64* %0, i64 %7, !dbg !1183, !psr.id !1186
  %9 = load i64, i64* %8, align 8, !dbg !1183, !psr.id !1187, !ValueTainted !246
  %10 = add i64 %9, %.01, !dbg !1188, !psr.id !1189, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %10, metadata !1190, metadata !DIExpression()), !dbg !1158, !psr.id !1191
  %11 = and i64 %10, 4503599627370495, !dbg !1192, !psr.id !1193, !ValueTainted !246
  %12 = sext i32 %.0 to i64, !dbg !1194, !psr.id !1195
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 %12, !dbg !1194, !psr.id !1196, !PointTainted !223
  store i64 %11, i64* %13, align 8, !dbg !1197, !psr.id !1198
  %14 = lshr i64 %10, 52, !dbg !1199, !psr.id !1200, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %14, metadata !1166, metadata !DIExpression()), !dbg !1158, !psr.id !1201
  br label %15, !dbg !1202, !psr.id !1203

15:                                               ; preds = %6
  %16 = add nsw i32 %.0, 1, !dbg !1204, !psr.id !1205
  call void @llvm.dbg.value(metadata i32 %16, metadata !1168, metadata !DIExpression()), !dbg !1158, !psr.id !1206
  br label %4, !dbg !1207, !llvm.loop !1208, !psr.id !1210

17:                                               ; preds = %4
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !1211, !psr.id !1212
  %19 = load i64, i64* %18, align 16, !dbg !1211, !psr.id !1213, !ValueTainted !246
  %20 = add i64 %19, 1, !dbg !1214, !psr.id !1215, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %20, metadata !1190, metadata !DIExpression()), !dbg !1158, !psr.id !1216
  %21 = and i64 %20, 4503599627370495, !dbg !1217, !psr.id !1218, !ValueTainted !246
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1219, !psr.id !1220
  store i64 %21, i64* %22, align 16, !dbg !1221, !psr.id !1222
  %23 = lshr i64 %20, 52, !dbg !1223, !psr.id !1224, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %23, metadata !1166, metadata !DIExpression()), !dbg !1158, !psr.id !1225
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 1, !dbg !1226, !psr.id !1227
  %25 = load i64, i64* %24, align 8, !dbg !1226, !psr.id !1228, !ValueTainted !246
  %26 = add i64 %25, %23, !dbg !1229, !psr.id !1230, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %26, metadata !1190, metadata !DIExpression()), !dbg !1158, !psr.id !1231
  %27 = and i64 %26, 4503599627370495, !dbg !1232, !psr.id !1233, !ValueTainted !246
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 1, !dbg !1234, !psr.id !1235
  store i64 %27, i64* %28, align 8, !dbg !1236, !psr.id !1237
  %29 = lshr i64 %26, 52, !dbg !1238, !psr.id !1239, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %29, metadata !1166, metadata !DIExpression()), !dbg !1158, !psr.id !1240
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 2, !dbg !1241, !psr.id !1242
  %31 = load i64, i64* %30, align 16, !dbg !1241, !psr.id !1243, !ValueTainted !246
  %32 = add i64 %31, %29, !dbg !1244, !psr.id !1245, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %32, metadata !1190, metadata !DIExpression()), !dbg !1158, !psr.id !1246
  %33 = and i64 %32, 4503599627370495, !dbg !1247, !psr.id !1248, !ValueTainted !246
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 2, !dbg !1249, !psr.id !1250
  store i64 %33, i64* %34, align 16, !dbg !1251, !psr.id !1252
  %35 = lshr i64 %32, 52, !dbg !1253, !psr.id !1254, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %35, metadata !1166, metadata !DIExpression()), !dbg !1158, !psr.id !1255
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 3, !dbg !1256, !psr.id !1257
  %37 = load i64, i64* %36, align 8, !dbg !1256, !psr.id !1258, !ValueTainted !246
  %38 = add i64 %37, %35, !dbg !1259, !psr.id !1260, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %38, metadata !1190, metadata !DIExpression()), !dbg !1158, !psr.id !1261
  %39 = and i64 %38, 4503599627370495, !dbg !1262, !psr.id !1263, !ValueTainted !246
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 3, !dbg !1264, !psr.id !1265
  store i64 %39, i64* %40, align 8, !dbg !1266, !psr.id !1267
  %41 = lshr i64 %38, 52, !dbg !1268, !psr.id !1269, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %41, metadata !1166, metadata !DIExpression()), !dbg !1158, !psr.id !1270
  %42 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 4, !dbg !1271, !psr.id !1272
  %43 = load i64, i64* %42, align 16, !dbg !1271, !psr.id !1273, !ValueTainted !246
  %44 = add i64 %43, %41, !dbg !1274, !psr.id !1275, !ValueTainted !246
  %45 = add i64 %44, 65536, !dbg !1276, !psr.id !1277, !ValueTainted !246
  %46 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !1278, !psr.id !1279
  store i64 %45, i64* %46, align 16, !dbg !1280, !psr.id !1281
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 1, !dbg !1282, !psr.id !1283
  %48 = load i64, i64* %47, align 8, !dbg !1282, !psr.id !1284, !ValueTainted !246
  %49 = sub i64 %48, 17592186044416, !dbg !1285, !psr.id !1286, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %49, metadata !1190, metadata !DIExpression()), !dbg !1158, !psr.id !1287
  %50 = and i64 %49, 4503599627370495, !dbg !1288, !psr.id !1289, !ValueTainted !246
  %51 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 1, !dbg !1290, !psr.id !1291
  store i64 %50, i64* %51, align 8, !dbg !1292, !psr.id !1293
  %52 = lshr i64 %49, 63, !dbg !1294, !psr.id !1295, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %52, metadata !1166, metadata !DIExpression()), !dbg !1158, !psr.id !1296
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 2, !dbg !1297, !psr.id !1298
  %54 = load i64, i64* %53, align 16, !dbg !1297, !psr.id !1299, !ValueTainted !246
  %55 = sub i64 %54, %52, !dbg !1300, !psr.id !1301, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %55, metadata !1190, metadata !DIExpression()), !dbg !1158, !psr.id !1302
  %56 = and i64 %55, 4503599627370495, !dbg !1303, !psr.id !1304, !ValueTainted !246
  %57 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 2, !dbg !1305, !psr.id !1306
  store i64 %56, i64* %57, align 16, !dbg !1307, !psr.id !1308
  %58 = lshr i64 %55, 63, !dbg !1309, !psr.id !1310, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %58, metadata !1166, metadata !DIExpression()), !dbg !1158, !psr.id !1311
  %59 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 3, !dbg !1312, !psr.id !1313
  %60 = load i64, i64* %59, align 8, !dbg !1312, !psr.id !1314, !ValueTainted !246
  %61 = sub i64 %60, 68719476736, !dbg !1315, !psr.id !1316, !ValueTainted !246
  %62 = sub i64 %61, %58, !dbg !1317, !psr.id !1318, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %62, metadata !1190, metadata !DIExpression()), !dbg !1158, !psr.id !1319
  %63 = and i64 %62, 4503599627370495, !dbg !1320, !psr.id !1321, !ValueTainted !246
  %64 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 3, !dbg !1322, !psr.id !1323
  store i64 %63, i64* %64, align 8, !dbg !1324, !psr.id !1325
  %65 = lshr i64 %62, 63, !dbg !1326, !psr.id !1327, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %65, metadata !1166, metadata !DIExpression()), !dbg !1158, !psr.id !1328
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !1329, !psr.id !1330
  %67 = load i64, i64* %66, align 16, !dbg !1331, !psr.id !1332, !ValueTainted !246
  %68 = sub i64 %67, %65, !dbg !1331, !psr.id !1333, !ValueTainted !246
  store i64 %68, i64* %66, align 16, !dbg !1331, !psr.id !1334
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !1335, !psr.id !1336
  %70 = load i64, i64* %69, align 16, !dbg !1335, !psr.id !1337, !ValueTainted !246
  %71 = lshr i64 %70, 48, !dbg !1338, !psr.id !1339, !ValueTainted !246
  %72 = sub i64 0, %71, !dbg !1340, !psr.id !1341, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %72, metadata !1166, metadata !DIExpression()), !dbg !1158, !psr.id !1342
  %73 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 4, !dbg !1343, !psr.id !1344
  %74 = load i64, i64* %73, align 16, !dbg !1345, !psr.id !1346, !ValueTainted !246
  %75 = and i64 %74, 281474976710655, !dbg !1345, !psr.id !1347, !ValueTainted !246
  store i64 %75, i64* %73, align 16, !dbg !1345, !psr.id !1348
  call void @llvm.dbg.value(metadata i32 0, metadata !1168, metadata !DIExpression()), !dbg !1158, !psr.id !1349
  br label %76, !dbg !1350, !psr.id !1352

76:                                               ; preds = %93, %17
  %.1 = phi i32 [ 0, %17 ], [ %94, %93 ], !dbg !1353, !psr.id !1354
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1168, metadata !DIExpression()), !dbg !1158, !psr.id !1355
  %77 = icmp slt i32 %.1, 5, !dbg !1356, !psr.id !1358
  br i1 %77, label %78, label %95, !dbg !1359, !psr.id !1360

78:                                               ; preds = %76
  %79 = sext i32 %.1 to i64, !dbg !1361, !psr.id !1363
  %80 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 %79, !dbg !1361, !psr.id !1364
  %81 = load i64, i64* %80, align 8, !dbg !1361, !psr.id !1365, !ValueTainted !246
  %82 = sext i32 %.1 to i64, !dbg !1366, !psr.id !1367
  %83 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 %82, !dbg !1366, !psr.id !1368
  %84 = load i64, i64* %83, align 8, !dbg !1366, !psr.id !1369, !ValueTainted !246
  %85 = sext i32 %.1 to i64, !dbg !1370, !psr.id !1371
  %86 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 %85, !dbg !1370, !psr.id !1372
  %87 = load i64, i64* %86, align 8, !dbg !1370, !psr.id !1373, !ValueTainted !246
  %88 = xor i64 %84, %87, !dbg !1374, !psr.id !1375, !ValueTainted !246
  %89 = and i64 %72, %88, !dbg !1376, !psr.id !1377, !ValueTainted !246
  %90 = xor i64 %81, %89, !dbg !1378, !psr.id !1379, !ValueTainted !246
  %91 = sext i32 %.1 to i64, !dbg !1380, !psr.id !1381
  %92 = getelementptr inbounds i64, i64* %0, i64 %91, !dbg !1380, !psr.id !1382, !PointTainted !223
  store i64 %90, i64* %92, align 8, !dbg !1383, !psr.id !1384
  br label %93, !dbg !1385, !psr.id !1386

93:                                               ; preds = %78
  %94 = add nsw i32 %.1, 1, !dbg !1387, !psr.id !1388
  call void @llvm.dbg.value(metadata i32 %94, metadata !1168, metadata !DIExpression()), !dbg !1158, !psr.id !1389
  br label %76, !dbg !1390, !llvm.loop !1391, !psr.id !1393

95:                                               ; preds = %76
  ret void, !dbg !1394, !psr.id !1395
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !1396 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1399, metadata !DIExpression()), !dbg !1400, !psr.id !1401
  call void @llvm.dbg.value(metadata i32 %1, metadata !1402, metadata !DIExpression()), !dbg !1400, !psr.id !1403
  %3 = xor i32 %0, %1, !dbg !1404, !psr.id !1405, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %3, metadata !1406, metadata !DIExpression()), !dbg !1400, !psr.id !1407
  %4 = sub i32 0, %3, !dbg !1408, !psr.id !1409, !ValueTainted !246
  %5 = or i32 %3, %4, !dbg !1410, !psr.id !1411, !ValueTainted !246
  %6 = lshr i32 %5, 31, !dbg !1412, !psr.id !1413, !ValueTainted !246
  %7 = call i32 @NOT(i32 %6), !dbg !1414, !psr.id !1415, !ValueTainted !246
  ret i32 %7, !dbg !1416, !psr.id !1417
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_double(%struct.p256_jacobian* %0) #0 !dbg !1418 {
  %2 = alloca [5 x i64], align 16, !psr.id !1421
  %3 = alloca [5 x i64], align 16, !psr.id !1422
  %4 = alloca [5 x i64], align 16, !psr.id !1423
  %5 = alloca [5 x i64], align 16, !psr.id !1424
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !1425, metadata !DIExpression()), !dbg !1426, !psr.id !1427
  call void @llvm.dbg.declare(metadata [5 x i64]* %2, metadata !1428, metadata !DIExpression()), !dbg !1429, !psr.id !1430
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !1431, metadata !DIExpression()), !dbg !1432, !psr.id !1433
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !1434, metadata !DIExpression()), !dbg !1435, !psr.id !1436
  call void @llvm.dbg.declare(metadata [5 x i64]* %5, metadata !1437, metadata !DIExpression()), !dbg !1438, !psr.id !1439
  %6 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !1440, !psr.id !1441
  %7 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1442, !psr.id !1443
  %8 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !1444, !psr.id !1445
  call void @f256_montysquare(i64* %6, i64* %8), !dbg !1446, !psr.id !1447
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1448, !psr.id !1449
  %10 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1450, !psr.id !1451
  %11 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0, !dbg !1452, !psr.id !1453
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !1454, !psr.id !1455
  call void @f256_add(i64* %9, i64* %11, i64* %12), !dbg !1456, !psr.id !1457
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !1458, !psr.id !1459
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1460, !psr.id !1461
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0, !dbg !1462, !psr.id !1463
  %16 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !1464, !psr.id !1465
  call void @f256_sub(i64* %13, i64* %15, i64* %16), !dbg !1466, !psr.id !1467
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1468, !psr.id !1469
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !1470, !psr.id !1471
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1472, !psr.id !1473
  call void @f256_montymul(i64* %17, i64* %18, i64* %19), !dbg !1474, !psr.id !1475
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !1476, !psr.id !1477
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1478, !psr.id !1479
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1480, !psr.id !1481
  call void @f256_add(i64* %20, i64* %21, i64* %22), !dbg !1482, !psr.id !1483
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !1484, !psr.id !1485
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1486, !psr.id !1487
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !1488, !psr.id !1489
  call void @f256_add(i64* %23, i64* %24, i64* %25), !dbg !1490, !psr.id !1491
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1492, !psr.id !1493
  %27 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1494, !psr.id !1495
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %27, i64 0, i64 0, !dbg !1496, !psr.id !1497
  call void @f256_montysquare(i64* %26, i64* %28), !dbg !1498, !psr.id !1499
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1500, !psr.id !1501
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1502, !psr.id !1503
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1504, !psr.id !1505
  call void @f256_add(i64* %29, i64* %30, i64* %31), !dbg !1506, !psr.id !1507
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1508, !psr.id !1509
  %33 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1510, !psr.id !1511
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %33, i64 0, i64 0, !dbg !1512, !psr.id !1513
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1514, !psr.id !1515
  call void @f256_montymul(i64* %32, i64* %34, i64* %35), !dbg !1516, !psr.id !1517
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1518, !psr.id !1519
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1520, !psr.id !1521
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1522, !psr.id !1523
  call void @f256_add(i64* %36, i64* %37, i64* %38), !dbg !1524, !psr.id !1525
  %39 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1526, !psr.id !1527
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 0, !dbg !1528, !psr.id !1529
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !1530, !psr.id !1531
  call void @f256_montysquare(i64* %40, i64* %41), !dbg !1532, !psr.id !1533
  %42 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1534, !psr.id !1535
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 0, !dbg !1536, !psr.id !1537
  %44 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1538, !psr.id !1539
  %45 = getelementptr inbounds [5 x i64], [5 x i64]* %44, i64 0, i64 0, !dbg !1540, !psr.id !1541
  %46 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1542, !psr.id !1543
  call void @f256_sub(i64* %43, i64* %45, i64* %46), !dbg !1544, !psr.id !1545
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1546, !psr.id !1547
  %48 = getelementptr inbounds [5 x i64], [5 x i64]* %47, i64 0, i64 0, !dbg !1548, !psr.id !1549
  %49 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1550, !psr.id !1551
  %50 = getelementptr inbounds [5 x i64], [5 x i64]* %49, i64 0, i64 0, !dbg !1552, !psr.id !1553
  %51 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1554, !psr.id !1555
  call void @f256_sub(i64* %48, i64* %50, i64* %51), !dbg !1556, !psr.id !1557
  %52 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1558, !psr.id !1559
  %53 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1560, !psr.id !1561
  %54 = getelementptr inbounds [5 x i64], [5 x i64]* %53, i64 0, i64 0, !dbg !1562, !psr.id !1563
  %55 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1564, !psr.id !1565
  %56 = getelementptr inbounds [5 x i64], [5 x i64]* %55, i64 0, i64 0, !dbg !1566, !psr.id !1567
  call void @f256_montymul(i64* %52, i64* %54, i64* %56), !dbg !1568, !psr.id !1569
  %57 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1570, !psr.id !1571
  %58 = getelementptr inbounds [5 x i64], [5 x i64]* %57, i64 0, i64 0, !dbg !1572, !psr.id !1573
  %59 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1574, !psr.id !1575
  %60 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1576, !psr.id !1577
  call void @f256_add(i64* %58, i64* %59, i64* %60), !dbg !1578, !psr.id !1579
  %61 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1580, !psr.id !1581
  %62 = getelementptr inbounds [5 x i64], [5 x i64]* %61, i64 0, i64 0, !dbg !1582, !psr.id !1583
  call void @f256_partial_reduce(i64* %62), !dbg !1584, !psr.id !1585
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1586, !psr.id !1587
  %64 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1588, !psr.id !1589
  %65 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1590, !psr.id !1591
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %65, i64 0, i64 0, !dbg !1592, !psr.id !1593
  call void @f256_sub(i64* %63, i64* %64, i64* %66), !dbg !1594, !psr.id !1595
  %67 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1596, !psr.id !1597
  %68 = getelementptr inbounds [5 x i64], [5 x i64]* %67, i64 0, i64 0, !dbg !1598, !psr.id !1599
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %2, i64 0, i64 0, !dbg !1600, !psr.id !1601
  %70 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1602, !psr.id !1603
  call void @f256_montymul(i64* %68, i64* %69, i64* %70), !dbg !1604, !psr.id !1605
  %71 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1606, !psr.id !1607
  %72 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1608, !psr.id !1609
  call void @f256_montysquare(i64* %71, i64* %72), !dbg !1610, !psr.id !1611
  %73 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1612, !psr.id !1613
  %74 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1614, !psr.id !1615
  %75 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1616, !psr.id !1617
  call void @f256_add(i64* %73, i64* %74, i64* %75), !dbg !1618, !psr.id !1619
  %76 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1620, !psr.id !1621
  %77 = getelementptr inbounds [5 x i64], [5 x i64]* %76, i64 0, i64 0, !dbg !1622, !psr.id !1623
  %78 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1624, !psr.id !1625
  %79 = getelementptr inbounds [5 x i64], [5 x i64]* %78, i64 0, i64 0, !dbg !1626, !psr.id !1627
  %80 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !1628, !psr.id !1629
  call void @f256_sub(i64* %77, i64* %79, i64* %80), !dbg !1630, !psr.id !1631
  ret void, !dbg !1632, !psr.id !1633
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @point_encode(i8* %0, %struct.p256_jacobian* %1) #0 !dbg !1634 {
  %3 = alloca [5 x i64], align 16, !psr.id !1637
  %4 = alloca [5 x i64], align 16, !psr.id !1638
  call void @llvm.dbg.value(metadata i8* %0, metadata !1639, metadata !DIExpression()), !dbg !1640, !psr.id !1641
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !1642, metadata !DIExpression()), !dbg !1640, !psr.id !1643
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !1644, metadata !DIExpression()), !dbg !1645, !psr.id !1646
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !1647, metadata !DIExpression()), !dbg !1648, !psr.id !1649
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1650, !psr.id !1651
  %6 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1652, !psr.id !1653
  %7 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !1654, !psr.id !1655
  call void @f256_invert(i64* %5, i64* %7), !dbg !1656, !psr.id !1657
  %8 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1658, !psr.id !1659
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1660, !psr.id !1661
  call void @f256_montysquare(i64* %8, i64* %9), !dbg !1662, !psr.id !1663
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1664, !psr.id !1665
  %11 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1666, !psr.id !1667
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1668, !psr.id !1669
  call void @f256_montymul(i64* %10, i64* %11, i64* %12), !dbg !1670, !psr.id !1671
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1672, !psr.id !1673
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 0, !dbg !1674, !psr.id !1675
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0, !dbg !1676, !psr.id !1677
  %16 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1678, !psr.id !1679
  call void @f256_montymul(i64* %13, i64* %15, i64* %16), !dbg !1680, !psr.id !1681
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1682, !psr.id !1683
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 1, !dbg !1684, !psr.id !1685
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %18, i64 0, i64 0, !dbg !1686, !psr.id !1687
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1688, !psr.id !1689
  call void @f256_montymul(i64* %17, i64* %19, i64* %20), !dbg !1690, !psr.id !1691
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1692, !psr.id !1693
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1694, !psr.id !1695
  call void @f256_frommonty(i64* %21, i64* %22), !dbg !1696, !psr.id !1697
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1698, !psr.id !1699
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1700, !psr.id !1701
  call void @f256_frommonty(i64* %23, i64* %24), !dbg !1702, !psr.id !1703
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1704, !psr.id !1705
  call void @f256_final_reduce(i64* %25), !dbg !1706, !psr.id !1707
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1708, !psr.id !1709
  call void @f256_final_reduce(i64* %26), !dbg !1710, !psr.id !1711
  %27 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1712, !psr.id !1713
  store i8 4, i8* %27, align 1, !dbg !1714, !psr.id !1715
  %28 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1716, !psr.id !1717
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1718, !psr.id !1719
  call void @f256_encode(i8* %28, i64* %29), !dbg !1720, !psr.id !1721
  %30 = getelementptr inbounds i8, i8* %0, i64 33, !dbg !1722, !psr.id !1723
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1724, !psr.id !1725
  call void @f256_encode(i8* %30, i64* %31), !dbg !1726, !psr.id !1727
  %32 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1728, !psr.id !1729
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 0, !dbg !1730, !psr.id !1731
  %34 = load i64, i64* %33, align 8, !dbg !1730, !psr.id !1732
  %35 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1733, !psr.id !1734
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %35, i64 0, i64 1, !dbg !1735, !psr.id !1736
  %37 = load i64, i64* %36, align 8, !dbg !1735, !psr.id !1737
  %38 = or i64 %34, %37, !dbg !1738, !psr.id !1739
  %39 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1740, !psr.id !1741
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 2, !dbg !1742, !psr.id !1743
  %41 = load i64, i64* %40, align 8, !dbg !1742, !psr.id !1744
  %42 = or i64 %38, %41, !dbg !1745, !psr.id !1746
  %43 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1747, !psr.id !1748
  %44 = getelementptr inbounds [5 x i64], [5 x i64]* %43, i64 0, i64 3, !dbg !1749, !psr.id !1750
  %45 = load i64, i64* %44, align 8, !dbg !1749, !psr.id !1751
  %46 = or i64 %42, %45, !dbg !1752, !psr.id !1753
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1754, !psr.id !1755
  %48 = getelementptr inbounds [5 x i64], [5 x i64]* %47, i64 0, i64 4, !dbg !1756, !psr.id !1757
  %49 = load i64, i64* %48, align 8, !dbg !1756, !psr.id !1758
  %50 = or i64 %46, %49, !dbg !1759, !psr.id !1760
  call void @llvm.dbg.value(metadata i64 %50, metadata !1761, metadata !DIExpression()), !dbg !1640, !psr.id !1762
  %51 = lshr i64 %50, 32, !dbg !1763, !psr.id !1764
  %52 = or i64 %50, %51, !dbg !1765, !psr.id !1766
  %53 = trunc i64 %52 to i32, !dbg !1767, !psr.id !1768
  %54 = call i32 @NEQ(i32 %53, i32 0), !dbg !1769, !psr.id !1770
  ret i32 %54, !dbg !1771, !psr.id !1772
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_invert(i64* %0, i64* %1) #0 !dbg !1773 {
  %3 = alloca [5 x i64], align 16, !psr.id !1774
  %4 = alloca [5 x i64], align 16, !psr.id !1775
  call void @llvm.dbg.value(metadata i64* %0, metadata !1776, metadata !DIExpression()), !dbg !1777, !psr.id !1778
  call void @llvm.dbg.value(metadata i64* %1, metadata !1779, metadata !DIExpression()), !dbg !1777, !psr.id !1780
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !1781, metadata !DIExpression()), !dbg !1782, !psr.id !1783
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !1784, metadata !DIExpression()), !dbg !1785, !psr.id !1786
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1787, !psr.id !1788
  %6 = bitcast i64* %5 to i8*, !dbg !1787, !psr.id !1789
  %7 = bitcast i64* %1 to i8*, !dbg !1787, !psr.id !1790
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 8 %7, i64 40, i1 false), !dbg !1787, !psr.id !1791
  call void @llvm.dbg.value(metadata i32 0, metadata !1792, metadata !DIExpression()), !dbg !1777, !psr.id !1793
  br label %8, !dbg !1794, !psr.id !1796

8:                                                ; preds = %15, %2
  %.0 = phi i32 [ 0, %2 ], [ %16, %15 ], !dbg !1797, !psr.id !1798
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1792, metadata !DIExpression()), !dbg !1777, !psr.id !1799
  %9 = icmp slt i32 %.0, 30, !dbg !1800, !psr.id !1802
  br i1 %9, label %10, label %17, !dbg !1803, !psr.id !1804

10:                                               ; preds = %8
  %11 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1805, !psr.id !1807
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1808, !psr.id !1809
  call void @f256_montysquare(i64* %11, i64* %12), !dbg !1810, !psr.id !1811
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1812, !psr.id !1813
  %14 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1814, !psr.id !1815
  call void @f256_montymul(i64* %13, i64* %14, i64* %1), !dbg !1816, !psr.id !1817
  br label %15, !dbg !1818, !psr.id !1819

15:                                               ; preds = %10
  %16 = add nsw i32 %.0, 1, !dbg !1820, !psr.id !1821
  call void @llvm.dbg.value(metadata i32 %16, metadata !1792, metadata !DIExpression()), !dbg !1777, !psr.id !1822
  br label %8, !dbg !1823, !llvm.loop !1824, !psr.id !1826

17:                                               ; preds = %8
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1827, !psr.id !1828
  %19 = bitcast i64* %18 to i8*, !dbg !1827, !psr.id !1829
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1827, !psr.id !1830
  %21 = bitcast i64* %20 to i8*, !dbg !1827, !psr.id !1831
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 %21, i64 40, i1 false), !dbg !1827, !psr.id !1832
  call void @llvm.dbg.value(metadata i32 224, metadata !1792, metadata !DIExpression()), !dbg !1777, !psr.id !1833
  br label %22, !dbg !1834, !psr.id !1836

22:                                               ; preds = %35, %17
  %.1 = phi i32 [ 224, %17 ], [ %36, %35 ], !dbg !1837, !psr.id !1838
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1792, metadata !DIExpression()), !dbg !1777, !psr.id !1839
  %23 = icmp sge i32 %.1, 0, !dbg !1840, !psr.id !1842
  br i1 %23, label %24, label %37, !dbg !1843, !psr.id !1844

24:                                               ; preds = %22
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1845, !psr.id !1847
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1848, !psr.id !1849
  call void @f256_montysquare(i64* %25, i64* %26), !dbg !1850, !psr.id !1851
  switch i32 %.1, label %34 [
    i32 0, label %27
    i32 2, label %27
    i32 192, label %27
    i32 224, label %27
    i32 3, label %30
    i32 34, label %30
    i32 65, label %30
  ], !dbg !1852, !psr.id !1853

27:                                               ; preds = %24, %24, %24, %24
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1854, !psr.id !1856
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1857, !psr.id !1858
  call void @f256_montymul(i64* %28, i64* %29, i64* %1), !dbg !1859, !psr.id !1860
  br label %34, !dbg !1861, !psr.id !1862

30:                                               ; preds = %24, %24, %24
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1863, !psr.id !1864
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1865, !psr.id !1866
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1867, !psr.id !1868
  call void @f256_montymul(i64* %31, i64* %32, i64* %33), !dbg !1869, !psr.id !1870
  br label %34, !dbg !1871, !psr.id !1872

34:                                               ; preds = %30, %27, %24
  br label %35, !dbg !1873, !psr.id !1874

35:                                               ; preds = %34
  %36 = add nsw i32 %.1, -1, !dbg !1875, !psr.id !1876
  call void @llvm.dbg.value(metadata i32 %36, metadata !1792, metadata !DIExpression()), !dbg !1777, !psr.id !1877
  br label %22, !dbg !1878, !llvm.loop !1879, !psr.id !1881

37:                                               ; preds = %22
  %38 = bitcast i64* %0 to i8*, !dbg !1882, !psr.id !1883
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !1882, !psr.id !1884
  %40 = bitcast i64* %39 to i8*, !dbg !1882, !psr.id !1885
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 16 %40, i64 40, i1 false), !dbg !1882, !psr.id !1886
  ret void, !dbg !1887, !psr.id !1888
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_montysquare(i64* %0, i64* %1) #0 !dbg !1889 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1890, metadata !DIExpression()), !dbg !1891, !psr.id !1892
  call void @llvm.dbg.value(metadata i64* %1, metadata !1893, metadata !DIExpression()), !dbg !1891, !psr.id !1894
  call void @f256_montymul(i64* %0, i64* %1, i64* %1), !dbg !1895, !psr.id !1896
  ret void, !dbg !1897, !psr.id !1898
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_montymul(i64* %0, i64* %1, i64* %2) #0 !dbg !1899 {
  %4 = alloca [5 x i64], align 16, !psr.id !1902
  call void @llvm.dbg.value(metadata i64* %0, metadata !1903, metadata !DIExpression()), !dbg !1904, !psr.id !1905
  call void @llvm.dbg.value(metadata i64* %1, metadata !1906, metadata !DIExpression()), !dbg !1904, !psr.id !1907
  call void @llvm.dbg.value(metadata i64* %2, metadata !1908, metadata !DIExpression()), !dbg !1904, !psr.id !1909
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !1910, metadata !DIExpression()), !dbg !1911, !psr.id !1912
  %5 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1913, !psr.id !1914
  store i64 0, i64* %5, align 16, !dbg !1915, !psr.id !1916
  %6 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !1917, !psr.id !1918
  store i64 0, i64* %6, align 8, !dbg !1919, !psr.id !1920
  %7 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !1921, !psr.id !1922
  store i64 0, i64* %7, align 16, !dbg !1923, !psr.id !1924
  %8 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !1925, !psr.id !1926
  store i64 0, i64* %8, align 8, !dbg !1927, !psr.id !1928
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !1929, !psr.id !1930
  store i64 0, i64* %9, align 16, !dbg !1931, !psr.id !1932
  call void @llvm.dbg.value(metadata i32 0, metadata !1933, metadata !DIExpression()), !dbg !1904, !psr.id !1934
  br label %10, !dbg !1935, !psr.id !1937

10:                                               ; preds = %142, %3
  %.0 = phi i32 [ 0, %3 ], [ %143, %142 ], !dbg !1938, !psr.id !1939
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1933, metadata !DIExpression()), !dbg !1904, !psr.id !1940
  %11 = icmp slt i32 %.0, 5, !dbg !1941, !psr.id !1943
  br i1 %11, label %12, label %144, !dbg !1944, !psr.id !1945

12:                                               ; preds = %10
  %13 = sext i32 %.0 to i64, !dbg !1946, !psr.id !1948
  %14 = getelementptr inbounds i64, i64* %1, i64 %13, !dbg !1946, !psr.id !1949
  %15 = load i64, i64* %14, align 8, !dbg !1946, !psr.id !1950, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %15, metadata !1951, metadata !DIExpression()), !dbg !1952, !psr.id !1953
  %16 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1954, !psr.id !1955
  %17 = load i64, i64* %16, align 8, !dbg !1954, !psr.id !1956, !ValueTainted !246
  %18 = zext i64 %17 to i128, !dbg !1957, !psr.id !1958, !ValueTainted !246
  %19 = zext i64 %15 to i128, !dbg !1959, !psr.id !1960, !ValueTainted !246
  %20 = mul i128 %18, %19, !dbg !1961, !psr.id !1962, !ValueTainted !246
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !1963, !psr.id !1964
  %22 = load i64, i64* %21, align 16, !dbg !1963, !psr.id !1965, !ValueTainted !246
  %23 = zext i64 %22 to i128, !dbg !1966, !psr.id !1967, !ValueTainted !246
  %24 = add i128 %20, %23, !dbg !1968, !psr.id !1969, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %24, metadata !1970, metadata !DIExpression()), !dbg !1952, !psr.id !1971
  %25 = trunc i128 %24 to i64, !dbg !1972, !psr.id !1973, !ValueTainted !246
  %26 = and i64 %25, 4503599627370495, !dbg !1974, !psr.id !1975, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %26, metadata !1976, metadata !DIExpression()), !dbg !1952, !psr.id !1977
  %27 = lshr i128 %24, 52, !dbg !1978, !psr.id !1979, !ValueTainted !246
  %28 = trunc i128 %27 to i64, !dbg !1980, !psr.id !1981, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %28, metadata !1982, metadata !DIExpression()), !dbg !1952, !psr.id !1983
  %29 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1984, !psr.id !1985
  %30 = load i64, i64* %29, align 8, !dbg !1984, !psr.id !1986, !ValueTainted !246
  %31 = zext i64 %30 to i128, !dbg !1987, !psr.id !1988, !ValueTainted !246
  %32 = zext i64 %15 to i128, !dbg !1989, !psr.id !1990, !ValueTainted !246
  %33 = mul i128 %31, %32, !dbg !1991, !psr.id !1992, !ValueTainted !246
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !1993, !psr.id !1994
  %35 = load i64, i64* %34, align 8, !dbg !1993, !psr.id !1995, !ValueTainted !246
  %36 = zext i64 %35 to i128, !dbg !1996, !psr.id !1997, !ValueTainted !246
  %37 = add i128 %33, %36, !dbg !1998, !psr.id !1999, !ValueTainted !246
  %38 = zext i64 %28 to i128, !dbg !2000, !psr.id !2001, !ValueTainted !246
  %39 = add i128 %37, %38, !dbg !2002, !psr.id !2003, !ValueTainted !246
  %40 = zext i64 %26 to i128, !dbg !2004, !psr.id !2005, !ValueTainted !246
  %41 = shl i128 %40, 44, !dbg !2006, !psr.id !2007, !ValueTainted !246
  %42 = add i128 %39, %41, !dbg !2008, !psr.id !2009, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %42, metadata !1970, metadata !DIExpression()), !dbg !1952, !psr.id !2010
  %43 = trunc i128 %42 to i64, !dbg !2011, !psr.id !2012, !ValueTainted !246
  %44 = and i64 %43, 4503599627370495, !dbg !2013, !psr.id !2014, !ValueTainted !246
  %45 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !2015, !psr.id !2016, !PointTainted !223
  store i64 %44, i64* %45, align 16, !dbg !2017, !psr.id !2018
  %46 = lshr i128 %42, 52, !dbg !2019, !psr.id !2020, !ValueTainted !246
  %47 = trunc i128 %46 to i64, !dbg !2021, !psr.id !2022, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %47, metadata !1982, metadata !DIExpression()), !dbg !1952, !psr.id !2023
  %48 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !2024, !psr.id !2025
  %49 = load i64, i64* %48, align 8, !dbg !2024, !psr.id !2026, !ValueTainted !246
  %50 = zext i64 %49 to i128, !dbg !2027, !psr.id !2028, !ValueTainted !246
  %51 = zext i64 %15 to i128, !dbg !2029, !psr.id !2030, !ValueTainted !246
  %52 = mul i128 %50, %51, !dbg !2031, !psr.id !2032, !ValueTainted !246
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !2033, !psr.id !2034
  %54 = load i64, i64* %53, align 16, !dbg !2033, !psr.id !2035, !ValueTainted !246
  %55 = zext i64 %54 to i128, !dbg !2036, !psr.id !2037, !ValueTainted !246
  %56 = add i128 %52, %55, !dbg !2038, !psr.id !2039, !ValueTainted !246
  %57 = zext i64 %47 to i128, !dbg !2040, !psr.id !2041, !ValueTainted !246
  %58 = add i128 %56, %57, !dbg !2042, !psr.id !2043, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %58, metadata !1970, metadata !DIExpression()), !dbg !1952, !psr.id !2044
  %59 = trunc i128 %58 to i64, !dbg !2045, !psr.id !2046, !ValueTainted !246
  %60 = and i64 %59, 4503599627370495, !dbg !2047, !psr.id !2048, !ValueTainted !246
  %61 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !2049, !psr.id !2050, !PointTainted !223
  store i64 %60, i64* %61, align 8, !dbg !2051, !psr.id !2052
  %62 = lshr i128 %58, 52, !dbg !2053, !psr.id !2054, !ValueTainted !246
  %63 = trunc i128 %62 to i64, !dbg !2055, !psr.id !2056, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %63, metadata !1982, metadata !DIExpression()), !dbg !1952, !psr.id !2057
  %64 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !2058, !psr.id !2059
  %65 = load i64, i64* %64, align 8, !dbg !2058, !psr.id !2060, !ValueTainted !246
  %66 = zext i64 %65 to i128, !dbg !2061, !psr.id !2062, !ValueTainted !246
  %67 = zext i64 %15 to i128, !dbg !2063, !psr.id !2064, !ValueTainted !246
  %68 = mul i128 %66, %67, !dbg !2065, !psr.id !2066, !ValueTainted !246
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !2067, !psr.id !2068
  %70 = load i64, i64* %69, align 8, !dbg !2067, !psr.id !2069, !ValueTainted !246
  %71 = zext i64 %70 to i128, !dbg !2070, !psr.id !2071, !ValueTainted !246
  %72 = add i128 %68, %71, !dbg !2072, !psr.id !2073, !ValueTainted !246
  %73 = zext i64 %63 to i128, !dbg !2074, !psr.id !2075, !ValueTainted !246
  %74 = add i128 %72, %73, !dbg !2076, !psr.id !2077, !ValueTainted !246
  %75 = zext i64 %26 to i128, !dbg !2078, !psr.id !2079, !ValueTainted !246
  %76 = shl i128 %75, 36, !dbg !2080, !psr.id !2081, !ValueTainted !246
  %77 = add i128 %74, %76, !dbg !2082, !psr.id !2083, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %77, metadata !1970, metadata !DIExpression()), !dbg !1952, !psr.id !2084
  %78 = trunc i128 %77 to i64, !dbg !2085, !psr.id !2086, !ValueTainted !246
  %79 = and i64 %78, 4503599627370495, !dbg !2087, !psr.id !2088, !ValueTainted !246
  %80 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !2089, !psr.id !2090, !PointTainted !223
  store i64 %79, i64* %80, align 16, !dbg !2091, !psr.id !2092
  %81 = lshr i128 %77, 52, !dbg !2093, !psr.id !2094, !ValueTainted !246
  %82 = trunc i128 %81 to i64, !dbg !2095, !psr.id !2096, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %82, metadata !1982, metadata !DIExpression()), !dbg !1952, !psr.id !2097
  %83 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !2098, !psr.id !2099
  %84 = load i64, i64* %83, align 8, !dbg !2098, !psr.id !2100, !ValueTainted !246
  %85 = zext i64 %84 to i128, !dbg !2101, !psr.id !2102, !ValueTainted !246
  %86 = zext i64 %15 to i128, !dbg !2103, !psr.id !2104, !ValueTainted !246
  %87 = mul i128 %85, %86, !dbg !2105, !psr.id !2106, !ValueTainted !246
  %88 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !2107, !psr.id !2108
  %89 = load i64, i64* %88, align 16, !dbg !2107, !psr.id !2109, !ValueTainted !246
  %90 = zext i64 %89 to i128, !dbg !2110, !psr.id !2111, !ValueTainted !246
  %91 = add i128 %87, %90, !dbg !2112, !psr.id !2113, !ValueTainted !246
  %92 = zext i64 %82 to i128, !dbg !2114, !psr.id !2115, !ValueTainted !246
  %93 = add i128 %91, %92, !dbg !2116, !psr.id !2117, !ValueTainted !246
  %94 = zext i64 %26 to i128, !dbg !2118, !psr.id !2119, !ValueTainted !246
  %95 = shl i128 %94, 48, !dbg !2120, !psr.id !2121, !ValueTainted !246
  %96 = add i128 %93, %95, !dbg !2122, !psr.id !2123, !ValueTainted !246
  %97 = zext i64 %26 to i128, !dbg !2124, !psr.id !2125, !ValueTainted !246
  %98 = shl i128 %97, 16, !dbg !2126, !psr.id !2127, !ValueTainted !246
  %99 = sub i128 %96, %98, !dbg !2128, !psr.id !2129, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %99, metadata !1970, metadata !DIExpression()), !dbg !1952, !psr.id !2130
  %100 = trunc i128 %99 to i64, !dbg !2131, !psr.id !2132, !ValueTainted !246
  %101 = and i64 %100, 4503599627370495, !dbg !2133, !psr.id !2134, !ValueTainted !246
  %102 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !2135, !psr.id !2136, !PointTainted !223
  store i64 %101, i64* %102, align 8, !dbg !2137, !psr.id !2138
  %103 = lshr i128 %99, 52, !dbg !2139, !psr.id !2140, !ValueTainted !246
  %104 = trunc i128 %103 to i64, !dbg !2141, !psr.id !2142, !ValueTainted !246
  %105 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !2143, !psr.id !2144, !PointTainted !223
  store i64 %104, i64* %105, align 16, !dbg !2145, !psr.id !2146
  %106 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !2147, !psr.id !2148
  %107 = load i64, i64* %106, align 16, !dbg !2147, !psr.id !2149, !ValueTainted !246
  %108 = lshr i64 %107, 48, !dbg !2150, !psr.id !2151, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %108, metadata !2152, metadata !DIExpression()), !dbg !1952, !psr.id !2153
  %109 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !2154, !psr.id !2155, !PointTainted !223
  %110 = load i64, i64* %109, align 16, !dbg !2156, !psr.id !2157, !ValueTainted !246
  %111 = add i64 %110, %108, !dbg !2156, !psr.id !2158, !ValueTainted !246
  store i64 %111, i64* %109, align 16, !dbg !2156, !psr.id !2159
  %112 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !2160, !psr.id !2161
  %113 = load i64, i64* %112, align 8, !dbg !2160, !psr.id !2162, !ValueTainted !246
  %114 = shl i64 %108, 44, !dbg !2163, !psr.id !2164, !ValueTainted !246
  %115 = sub i64 %113, %114, !dbg !2165, !psr.id !2166, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %115, metadata !2167, metadata !DIExpression()), !dbg !1952, !psr.id !2168
  %116 = and i64 %115, 4503599627370495, !dbg !2169, !psr.id !2170, !ValueTainted !246
  %117 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !2171, !psr.id !2172, !PointTainted !223
  store i64 %116, i64* %117, align 8, !dbg !2173, !psr.id !2174
  %118 = lshr i64 %115, 52, !dbg !2175, !psr.id !2176, !ValueTainted !246
  %119 = sub i64 0, %118, !dbg !2177, !psr.id !2178, !ValueTainted !246
  %120 = and i64 %119, 4095, !dbg !2179, !psr.id !2180, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %120, metadata !1982, metadata !DIExpression()), !dbg !1952, !psr.id !2181
  %121 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !2182, !psr.id !2183
  %122 = load i64, i64* %121, align 16, !dbg !2182, !psr.id !2184, !ValueTainted !246
  %123 = sub i64 %122, %120, !dbg !2185, !psr.id !2186, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %123, metadata !2167, metadata !DIExpression()), !dbg !1952, !psr.id !2187
  %124 = and i64 %123, 4503599627370495, !dbg !2188, !psr.id !2189, !ValueTainted !246
  %125 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !2190, !psr.id !2191, !PointTainted !223
  store i64 %124, i64* %125, align 16, !dbg !2192, !psr.id !2193
  %126 = lshr i64 %123, 63, !dbg !2194, !psr.id !2195, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %126, metadata !1982, metadata !DIExpression()), !dbg !1952, !psr.id !2196
  %127 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !2197, !psr.id !2198
  %128 = load i64, i64* %127, align 8, !dbg !2197, !psr.id !2199, !ValueTainted !246
  %129 = sub i64 %128, %126, !dbg !2200, !psr.id !2201, !ValueTainted !246
  %130 = shl i64 %108, 36, !dbg !2202, !psr.id !2203, !ValueTainted !246
  %131 = sub i64 %129, %130, !dbg !2204, !psr.id !2205, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %131, metadata !2167, metadata !DIExpression()), !dbg !1952, !psr.id !2206
  %132 = and i64 %131, 4503599627370495, !dbg !2207, !psr.id !2208, !ValueTainted !246
  %133 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !2209, !psr.id !2210, !PointTainted !223
  store i64 %132, i64* %133, align 8, !dbg !2211, !psr.id !2212
  %134 = lshr i64 %131, 63, !dbg !2213, !psr.id !2214, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %134, metadata !1982, metadata !DIExpression()), !dbg !1952, !psr.id !2215
  %135 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !2216, !psr.id !2217
  %136 = load i64, i64* %135, align 16, !dbg !2216, !psr.id !2218, !ValueTainted !246
  %137 = and i64 %136, 281474976710655, !dbg !2219, !psr.id !2220, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %137, metadata !2167, metadata !DIExpression()), !dbg !1952, !psr.id !2221
  %138 = shl i64 %108, 16, !dbg !2222, !psr.id !2223, !ValueTainted !246
  %139 = add i64 %137, %138, !dbg !2224, !psr.id !2225, !ValueTainted !246
  %140 = sub i64 %139, %134, !dbg !2226, !psr.id !2227, !ValueTainted !246
  %141 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !2228, !psr.id !2229, !PointTainted !223
  store i64 %140, i64* %141, align 16, !dbg !2230, !psr.id !2231
  br label %142, !dbg !2232, !psr.id !2233

142:                                              ; preds = %12
  %143 = add nsw i32 %.0, 1, !dbg !2234, !psr.id !2235
  call void @llvm.dbg.value(metadata i32 %143, metadata !1933, metadata !DIExpression()), !dbg !1904, !psr.id !2236
  br label %10, !dbg !2237, !llvm.loop !2238, !psr.id !2240

144:                                              ; preds = %10
  %145 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !2241, !psr.id !2242
  %146 = load i64, i64* %145, align 16, !dbg !2241, !psr.id !2243, !ValueTainted !246
  %147 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2244, !psr.id !2245
  store i64 %146, i64* %147, align 8, !dbg !2246, !psr.id !2247
  %148 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !2248, !psr.id !2249
  %149 = load i64, i64* %148, align 8, !dbg !2248, !psr.id !2250, !ValueTainted !246
  %150 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2251, !psr.id !2252
  store i64 %149, i64* %150, align 8, !dbg !2253, !psr.id !2254
  %151 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !2255, !psr.id !2256
  %152 = load i64, i64* %151, align 16, !dbg !2255, !psr.id !2257, !ValueTainted !246
  %153 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2258, !psr.id !2259
  store i64 %152, i64* %153, align 8, !dbg !2260, !psr.id !2261
  %154 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !2262, !psr.id !2263
  %155 = load i64, i64* %154, align 8, !dbg !2262, !psr.id !2264, !ValueTainted !246
  %156 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2265, !psr.id !2266
  store i64 %155, i64* %156, align 8, !dbg !2267, !psr.id !2268
  %157 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !2269, !psr.id !2270
  %158 = load i64, i64* %157, align 16, !dbg !2269, !psr.id !2271, !ValueTainted !246
  %159 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !2272, !psr.id !2273
  store i64 %158, i64* %159, align 8, !dbg !2274, !psr.id !2275
  ret void, !dbg !2276, !psr.id !2277
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_frommonty(i64* %0, i64* %1) #0 !dbg !50 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2278, metadata !DIExpression()), !dbg !2279, !psr.id !2280
  call void @llvm.dbg.value(metadata i64* %1, metadata !2281, metadata !DIExpression()), !dbg !2279, !psr.id !2282
  %3 = getelementptr inbounds [5 x i64], [5 x i64]* @f256_frommonty.one, i64 0, i64 0, !psr.id !2283
  call void @f256_montymul(i64* %0, i64* %1, i64* %3), !dbg !2284, !psr.id !2285
  ret void, !dbg !2286, !psr.id !2287
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_encode(i8* %0, i64* %1) #0 !dbg !2288 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2291, metadata !DIExpression()), !dbg !2292, !psr.id !2293
  call void @llvm.dbg.value(metadata i64* %1, metadata !2294, metadata !DIExpression()), !dbg !2292, !psr.id !2295
  %3 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !2296, !psr.id !2297
  %4 = load i64, i64* %3, align 8, !dbg !2296, !psr.id !2298
  %5 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !2299, !psr.id !2300
  %6 = load i64, i64* %5, align 8, !dbg !2299, !psr.id !2301
  %7 = shl i64 %6, 52, !dbg !2302, !psr.id !2303
  %8 = or i64 %4, %7, !dbg !2304, !psr.id !2305
  call void @llvm.dbg.value(metadata i64 %8, metadata !2306, metadata !DIExpression()), !dbg !2292, !psr.id !2307
  %9 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !2308, !psr.id !2309
  %10 = load i64, i64* %9, align 8, !dbg !2308, !psr.id !2310
  %11 = lshr i64 %10, 12, !dbg !2311, !psr.id !2312
  %12 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !2313, !psr.id !2314
  %13 = load i64, i64* %12, align 8, !dbg !2313, !psr.id !2315
  %14 = shl i64 %13, 40, !dbg !2316, !psr.id !2317
  %15 = or i64 %11, %14, !dbg !2318, !psr.id !2319
  call void @llvm.dbg.value(metadata i64 %15, metadata !2320, metadata !DIExpression()), !dbg !2292, !psr.id !2321
  %16 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !2322, !psr.id !2323
  %17 = load i64, i64* %16, align 8, !dbg !2322, !psr.id !2324
  %18 = lshr i64 %17, 24, !dbg !2325, !psr.id !2326
  %19 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !2327, !psr.id !2328
  %20 = load i64, i64* %19, align 8, !dbg !2327, !psr.id !2329
  %21 = shl i64 %20, 28, !dbg !2330, !psr.id !2331
  %22 = or i64 %18, %21, !dbg !2332, !psr.id !2333
  call void @llvm.dbg.value(metadata i64 %22, metadata !2334, metadata !DIExpression()), !dbg !2292, !psr.id !2335
  %23 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !2336, !psr.id !2337
  %24 = load i64, i64* %23, align 8, !dbg !2336, !psr.id !2338
  %25 = lshr i64 %24, 36, !dbg !2339, !psr.id !2340
  %26 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !2341, !psr.id !2342
  %27 = load i64, i64* %26, align 8, !dbg !2341, !psr.id !2343
  %28 = shl i64 %27, 16, !dbg !2344, !psr.id !2345
  %29 = or i64 %25, %28, !dbg !2346, !psr.id !2347
  call void @llvm.dbg.value(metadata i64 %29, metadata !2348, metadata !DIExpression()), !dbg !2292, !psr.id !2349
  %30 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2350, !psr.id !2351
  call void @br_enc64be(i8* %30, i64 %29), !dbg !2352, !psr.id !2353
  %31 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2354, !psr.id !2355
  call void @br_enc64be(i8* %31, i64 %22), !dbg !2356, !psr.id !2357
  %32 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2358, !psr.id !2359
  call void @br_enc64be(i8* %32, i64 %15), !dbg !2360, !psr.id !2361
  %33 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !2362, !psr.id !2363
  call void @br_enc64be(i8* %33, i64 %8), !dbg !2364, !psr.id !2365
  ret void, !dbg !2366, !psr.id !2367
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !2368 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2369, metadata !DIExpression()), !dbg !2370, !psr.id !2371
  call void @llvm.dbg.value(metadata i32 %1, metadata !2372, metadata !DIExpression()), !dbg !2370, !psr.id !2373
  %3 = xor i32 %0, %1, !dbg !2374, !psr.id !2375, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %3, metadata !2376, metadata !DIExpression()), !dbg !2370, !psr.id !2377
  %4 = sub i32 0, %3, !dbg !2378, !psr.id !2379, !ValueTainted !246
  %5 = or i32 %3, %4, !dbg !2380, !psr.id !2381, !ValueTainted !246
  %6 = lshr i32 %5, 31, !dbg !2382, !psr.id !2383, !ValueTainted !246
  ret i32 %6, !dbg !2384, !psr.id !2385
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64be(i8* %0, i64 %1) #0 !dbg !2386 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2389, metadata !DIExpression()), !dbg !2390, !psr.id !2391
  call void @llvm.dbg.value(metadata i64 %1, metadata !2392, metadata !DIExpression()), !dbg !2390, !psr.id !2393
  call void @llvm.dbg.value(metadata i8* %0, metadata !2394, metadata !DIExpression()), !dbg !2390, !psr.id !2395
  %3 = lshr i64 %1, 32, !dbg !2396, !psr.id !2397
  %4 = trunc i64 %3 to i32, !dbg !2398, !psr.id !2399
  call void @br_enc32be(i8* %0, i32 %4), !dbg !2400, !psr.id !2401
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2402, !psr.id !2403
  %6 = trunc i64 %1 to i32, !dbg !2404, !psr.id !2405
  call void @br_enc32be(i8* %5, i32 %6), !dbg !2406, !psr.id !2407
  ret void, !dbg !2408, !psr.id !2409
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !2410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2413, metadata !DIExpression()), !dbg !2414, !psr.id !2415
  call void @llvm.dbg.value(metadata i32 %1, metadata !2416, metadata !DIExpression()), !dbg !2414, !psr.id !2417
  call void @llvm.dbg.value(metadata i8* %0, metadata !2418, metadata !DIExpression()), !dbg !2414, !psr.id !2419
  %3 = lshr i32 %1, 24, !dbg !2420, !psr.id !2421
  %4 = trunc i32 %3 to i8, !dbg !2422, !psr.id !2423
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2424, !psr.id !2425
  store i8 %4, i8* %5, align 1, !dbg !2426, !psr.id !2427
  %6 = lshr i32 %1, 16, !dbg !2428, !psr.id !2429
  %7 = trunc i32 %6 to i8, !dbg !2430, !psr.id !2431
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2432, !psr.id !2433
  store i8 %7, i8* %8, align 1, !dbg !2434, !psr.id !2435
  %9 = lshr i32 %1, 8, !dbg !2436, !psr.id !2437
  %10 = trunc i32 %9 to i8, !dbg !2438, !psr.id !2439
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2440, !psr.id !2441
  store i8 %10, i8* %11, align 1, !dbg !2442, !psr.id !2443
  %12 = trunc i32 %1 to i8, !dbg !2444, !psr.id !2445
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2446, !psr.id !2447
  store i8 %12, i8* %13, align 1, !dbg !2448, !psr.id !2449
  ret void, !dbg !2450, !psr.id !2451
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @f256_add(i64* %0, i64* %1, i64* %2) #0 !dbg !2452 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2453, metadata !DIExpression()), !dbg !2454, !psr.id !2455
  call void @llvm.dbg.value(metadata i64* %1, metadata !2456, metadata !DIExpression()), !dbg !2454, !psr.id !2457
  call void @llvm.dbg.value(metadata i64* %2, metadata !2458, metadata !DIExpression()), !dbg !2454, !psr.id !2459
  %4 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !2460, !psr.id !2461
  %5 = load i64, i64* %4, align 8, !dbg !2460, !psr.id !2462, !ValueTainted !246
  %6 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !2463, !psr.id !2464
  %7 = load i64, i64* %6, align 8, !dbg !2463, !psr.id !2465
  %8 = add i64 %5, %7, !dbg !2466, !psr.id !2467, !ValueTainted !246
  %9 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2468, !psr.id !2469
  store i64 %8, i64* %9, align 8, !dbg !2470, !psr.id !2471
  %10 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !2472, !psr.id !2473
  %11 = load i64, i64* %10, align 8, !dbg !2472, !psr.id !2474, !ValueTainted !246
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !2475, !psr.id !2476
  %13 = load i64, i64* %12, align 8, !dbg !2475, !psr.id !2477, !ValueTainted !246
  %14 = add i64 %11, %13, !dbg !2478, !psr.id !2479, !ValueTainted !246
  %15 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2480, !psr.id !2481
  store i64 %14, i64* %15, align 8, !dbg !2482, !psr.id !2483
  %16 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !2484, !psr.id !2485
  %17 = load i64, i64* %16, align 8, !dbg !2484, !psr.id !2486, !ValueTainted !246
  %18 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !2487, !psr.id !2488
  %19 = load i64, i64* %18, align 8, !dbg !2487, !psr.id !2489, !ValueTainted !246
  %20 = add i64 %17, %19, !dbg !2490, !psr.id !2491, !ValueTainted !246
  %21 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2492, !psr.id !2493
  store i64 %20, i64* %21, align 8, !dbg !2494, !psr.id !2495
  %22 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !2496, !psr.id !2497
  %23 = load i64, i64* %22, align 8, !dbg !2496, !psr.id !2498, !ValueTainted !246
  %24 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !2499, !psr.id !2500
  %25 = load i64, i64* %24, align 8, !dbg !2499, !psr.id !2501, !ValueTainted !246
  %26 = add i64 %23, %25, !dbg !2502, !psr.id !2503, !ValueTainted !246
  %27 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2504, !psr.id !2505
  store i64 %26, i64* %27, align 8, !dbg !2506, !psr.id !2507
  %28 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !2508, !psr.id !2509
  %29 = load i64, i64* %28, align 8, !dbg !2508, !psr.id !2510, !ValueTainted !246
  %30 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !2511, !psr.id !2512
  %31 = load i64, i64* %30, align 8, !dbg !2511, !psr.id !2513, !ValueTainted !246
  %32 = add i64 %29, %31, !dbg !2514, !psr.id !2515, !ValueTainted !246
  %33 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !2516, !psr.id !2517
  store i64 %32, i64* %33, align 8, !dbg !2518, !psr.id !2519
  ret void, !dbg !2520, !psr.id !2521
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_sub(i64* %0, i64* %1, i64* %2) #0 !dbg !2522 {
  %4 = alloca [5 x i64], align 16, !psr.id !2523
  call void @llvm.dbg.value(metadata i64* %0, metadata !2524, metadata !DIExpression()), !dbg !2525, !psr.id !2526
  call void @llvm.dbg.value(metadata i64* %1, metadata !2527, metadata !DIExpression()), !dbg !2525, !psr.id !2528
  call void @llvm.dbg.value(metadata i64* %2, metadata !2529, metadata !DIExpression()), !dbg !2525, !psr.id !2530
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !2531, metadata !DIExpression()), !dbg !2532, !psr.id !2533
  %5 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !2534, !psr.id !2535
  %6 = load i64, i64* %5, align 8, !dbg !2534, !psr.id !2536, !ValueTainted !246
  %7 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !2537, !psr.id !2538
  %8 = load i64, i64* %7, align 8, !dbg !2537, !psr.id !2539, !ValueTainted !246
  %9 = sub i64 %6, %8, !dbg !2540, !psr.id !2541, !ValueTainted !246
  %10 = sub i64 %9, 8192, !dbg !2542, !psr.id !2543, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %10, metadata !2544, metadata !DIExpression()), !dbg !2525, !psr.id !2545
  %11 = and i64 %10, 4503599627370495, !dbg !2546, !psr.id !2547, !ValueTainted !246
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !2548, !psr.id !2549
  store i64 %11, i64* %12, align 16, !dbg !2550, !psr.id !2551
  %13 = lshr i64 %10, 52, !dbg !2552, !psr.id !2553, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %13, metadata !2554, metadata !DIExpression()), !dbg !2525, !psr.id !2555
  %14 = and i64 %13, 2048, !dbg !2556, !psr.id !2557, !ValueTainted !246
  %15 = sub i64 0, %14, !dbg !2558, !psr.id !2559, !ValueTainted !246
  %16 = or i64 %13, %15, !dbg !2560, !psr.id !2561, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %16, metadata !2554, metadata !DIExpression()), !dbg !2525, !psr.id !2562
  %17 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !2563, !psr.id !2564
  %18 = load i64, i64* %17, align 8, !dbg !2563, !psr.id !2565, !ValueTainted !246
  %19 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !2566, !psr.id !2567
  %20 = load i64, i64* %19, align 8, !dbg !2566, !psr.id !2568, !ValueTainted !246
  %21 = sub i64 %18, %20, !dbg !2569, !psr.id !2570, !ValueTainted !246
  %22 = add i64 %21, %16, !dbg !2571, !psr.id !2572, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %22, metadata !2544, metadata !DIExpression()), !dbg !2525, !psr.id !2573
  %23 = and i64 %22, 4503599627370495, !dbg !2574, !psr.id !2575, !ValueTainted !246
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !2576, !psr.id !2577
  store i64 %23, i64* %24, align 8, !dbg !2578, !psr.id !2579
  %25 = lshr i64 %22, 52, !dbg !2580, !psr.id !2581, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %25, metadata !2554, metadata !DIExpression()), !dbg !2525, !psr.id !2582
  %26 = and i64 %25, 2048, !dbg !2583, !psr.id !2584, !ValueTainted !246
  %27 = sub i64 0, %26, !dbg !2585, !psr.id !2586, !ValueTainted !246
  %28 = or i64 %25, %27, !dbg !2587, !psr.id !2588, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %28, metadata !2554, metadata !DIExpression()), !dbg !2525, !psr.id !2589
  %29 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !2590, !psr.id !2591
  %30 = load i64, i64* %29, align 8, !dbg !2590, !psr.id !2592, !ValueTainted !246
  %31 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !2593, !psr.id !2594
  %32 = load i64, i64* %31, align 8, !dbg !2593, !psr.id !2595, !ValueTainted !246
  %33 = sub i64 %30, %32, !dbg !2596, !psr.id !2597, !ValueTainted !246
  %34 = add i64 %33, %28, !dbg !2598, !psr.id !2599, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %34, metadata !2544, metadata !DIExpression()), !dbg !2525, !psr.id !2600
  %35 = and i64 %34, 4503599627370495, !dbg !2601, !psr.id !2602, !ValueTainted !246
  %36 = add i64 %35, 32, !dbg !2603, !psr.id !2604, !ValueTainted !246
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !2605, !psr.id !2606
  store i64 %36, i64* %37, align 16, !dbg !2607, !psr.id !2608
  %38 = lshr i64 %34, 52, !dbg !2609, !psr.id !2610, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %38, metadata !2554, metadata !DIExpression()), !dbg !2525, !psr.id !2611
  %39 = and i64 %38, 2048, !dbg !2612, !psr.id !2613, !ValueTainted !246
  %40 = sub i64 0, %39, !dbg !2614, !psr.id !2615, !ValueTainted !246
  %41 = or i64 %38, %40, !dbg !2616, !psr.id !2617, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %41, metadata !2554, metadata !DIExpression()), !dbg !2525, !psr.id !2618
  %42 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !2619, !psr.id !2620
  %43 = load i64, i64* %42, align 8, !dbg !2619, !psr.id !2621, !ValueTainted !246
  %44 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !2622, !psr.id !2623
  %45 = load i64, i64* %44, align 8, !dbg !2622, !psr.id !2624, !ValueTainted !246
  %46 = sub i64 %43, %45, !dbg !2625, !psr.id !2626, !ValueTainted !246
  %47 = add i64 %46, %41, !dbg !2627, !psr.id !2628, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %47, metadata !2544, metadata !DIExpression()), !dbg !2525, !psr.id !2629
  %48 = and i64 %47, 4503599627370495, !dbg !2630, !psr.id !2631, !ValueTainted !246
  %49 = add i64 %48, 562949953421312, !dbg !2632, !psr.id !2633, !ValueTainted !246
  %50 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !2634, !psr.id !2635
  store i64 %49, i64* %50, align 8, !dbg !2636, !psr.id !2637
  %51 = lshr i64 %47, 52, !dbg !2638, !psr.id !2639, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %51, metadata !2554, metadata !DIExpression()), !dbg !2525, !psr.id !2640
  %52 = and i64 %51, 2048, !dbg !2641, !psr.id !2642, !ValueTainted !246
  %53 = sub i64 0, %52, !dbg !2643, !psr.id !2644, !ValueTainted !246
  %54 = or i64 %51, %53, !dbg !2645, !psr.id !2646, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %54, metadata !2554, metadata !DIExpression()), !dbg !2525, !psr.id !2647
  %55 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !2648, !psr.id !2649
  %56 = load i64, i64* %55, align 8, !dbg !2648, !psr.id !2650, !ValueTainted !246
  %57 = add i64 2305843008676823040, %56, !dbg !2651, !psr.id !2652, !ValueTainted !246
  %58 = getelementptr inbounds i64, i64* %2, i64 4, !dbg !2653, !psr.id !2654
  %59 = load i64, i64* %58, align 8, !dbg !2653, !psr.id !2655, !ValueTainted !246
  %60 = sub i64 %57, %59, !dbg !2656, !psr.id !2657, !ValueTainted !246
  %61 = add i64 %60, %54, !dbg !2658, !psr.id !2659, !ValueTainted !246
  %62 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !2660, !psr.id !2661
  store i64 %61, i64* %62, align 16, !dbg !2662, !psr.id !2663
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !2664, !psr.id !2665
  %64 = load i64, i64* %63, align 16, !dbg !2664, !psr.id !2666, !ValueTainted !246
  %65 = lshr i64 %64, 48, !dbg !2667, !psr.id !2668, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %65, metadata !2669, metadata !DIExpression()), !dbg !2525, !psr.id !2670
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !2671, !psr.id !2672
  %67 = load i64, i64* %66, align 16, !dbg !2671, !psr.id !2673, !ValueTainted !246
  %68 = add i64 %67, %65, !dbg !2674, !psr.id !2675, !ValueTainted !246
  %69 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2676, !psr.id !2677
  store i64 %68, i64* %69, align 8, !dbg !2678, !psr.id !2679
  %70 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1, !dbg !2680, !psr.id !2681
  %71 = load i64, i64* %70, align 8, !dbg !2680, !psr.id !2682, !ValueTainted !246
  %72 = shl i64 %65, 44, !dbg !2683, !psr.id !2684, !ValueTainted !246
  %73 = sub i64 %71, %72, !dbg !2685, !psr.id !2686, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %73, metadata !2544, metadata !DIExpression()), !dbg !2525, !psr.id !2687
  %74 = and i64 %73, 4503599627370495, !dbg !2688, !psr.id !2689, !ValueTainted !246
  %75 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2690, !psr.id !2691
  store i64 %74, i64* %75, align 8, !dbg !2692, !psr.id !2693
  %76 = lshr i64 %73, 52, !dbg !2694, !psr.id !2695, !ValueTainted !246
  %77 = sub i64 0, %76, !dbg !2696, !psr.id !2697, !ValueTainted !246
  %78 = and i64 %77, 4095, !dbg !2698, !psr.id !2699, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %78, metadata !2554, metadata !DIExpression()), !dbg !2525, !psr.id !2700
  %79 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2, !dbg !2701, !psr.id !2702
  %80 = load i64, i64* %79, align 16, !dbg !2701, !psr.id !2703, !ValueTainted !246
  %81 = sub i64 %80, %78, !dbg !2704, !psr.id !2705, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %81, metadata !2544, metadata !DIExpression()), !dbg !2525, !psr.id !2706
  %82 = lshr i64 %81, 63, !dbg !2707, !psr.id !2708, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %82, metadata !2554, metadata !DIExpression()), !dbg !2525, !psr.id !2709
  %83 = shl i64 %82, 52, !dbg !2710, !psr.id !2711, !ValueTainted !246
  %84 = add i64 %81, %83, !dbg !2712, !psr.id !2713, !ValueTainted !246
  %85 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2714, !psr.id !2715
  store i64 %84, i64* %85, align 8, !dbg !2716, !psr.id !2717
  %86 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3, !dbg !2718, !psr.id !2719
  %87 = load i64, i64* %86, align 8, !dbg !2718, !psr.id !2720, !ValueTainted !246
  %88 = sub i64 %87, %82, !dbg !2721, !psr.id !2722, !ValueTainted !246
  %89 = shl i64 %65, 36, !dbg !2723, !psr.id !2724, !ValueTainted !246
  %90 = sub i64 %88, %89, !dbg !2725, !psr.id !2726, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %90, metadata !2544, metadata !DIExpression()), !dbg !2525, !psr.id !2727
  %91 = lshr i64 %90, 63, !dbg !2728, !psr.id !2729, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %91, metadata !2554, metadata !DIExpression()), !dbg !2525, !psr.id !2730
  %92 = shl i64 %91, 52, !dbg !2731, !psr.id !2732, !ValueTainted !246
  %93 = add i64 %90, %92, !dbg !2733, !psr.id !2734, !ValueTainted !246
  %94 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2735, !psr.id !2736
  store i64 %93, i64* %94, align 8, !dbg !2737, !psr.id !2738
  %95 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4, !dbg !2739, !psr.id !2740
  %96 = load i64, i64* %95, align 16, !dbg !2739, !psr.id !2741, !ValueTainted !246
  %97 = and i64 %96, 281474976710655, !dbg !2742, !psr.id !2743, !ValueTainted !246
  %98 = shl i64 %65, 16, !dbg !2744, !psr.id !2745, !ValueTainted !246
  %99 = add i64 %97, %98, !dbg !2746, !psr.id !2747, !ValueTainted !246
  %100 = sub i64 %99, %91, !dbg !2748, !psr.id !2749, !ValueTainted !246
  %101 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !2750, !psr.id !2751
  store i64 %100, i64* %101, align 8, !dbg !2752, !psr.id !2753
  ret void, !dbg !2754, !psr.id !2755
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_partial_reduce(i64* %0) #0 !dbg !2756 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2757, metadata !DIExpression()), !dbg !2758, !psr.id !2759
  %2 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2760, !psr.id !2761
  %3 = load i64, i64* %2, align 8, !dbg !2760, !psr.id !2762, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %3, metadata !2763, metadata !DIExpression()), !dbg !2758, !psr.id !2764
  %4 = and i64 %3, 4503599627370495, !dbg !2765, !psr.id !2766, !ValueTainted !246
  %5 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2767, !psr.id !2768
  store i64 %4, i64* %5, align 8, !dbg !2769, !psr.id !2770
  %6 = lshr i64 %3, 52, !dbg !2771, !psr.id !2772, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %6, metadata !2773, metadata !DIExpression()), !dbg !2758, !psr.id !2774
  %7 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2775, !psr.id !2776
  %8 = load i64, i64* %7, align 8, !dbg !2775, !psr.id !2777, !ValueTainted !246
  %9 = add i64 %8, %6, !dbg !2778, !psr.id !2779, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %9, metadata !2763, metadata !DIExpression()), !dbg !2758, !psr.id !2780
  %10 = and i64 %9, 4503599627370495, !dbg !2781, !psr.id !2782, !ValueTainted !246
  %11 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2783, !psr.id !2784
  store i64 %10, i64* %11, align 8, !dbg !2785, !psr.id !2786
  %12 = lshr i64 %9, 52, !dbg !2787, !psr.id !2788, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %12, metadata !2773, metadata !DIExpression()), !dbg !2758, !psr.id !2789
  %13 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2790, !psr.id !2791
  %14 = load i64, i64* %13, align 8, !dbg !2790, !psr.id !2792, !ValueTainted !246
  %15 = add i64 %14, %12, !dbg !2793, !psr.id !2794, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %15, metadata !2763, metadata !DIExpression()), !dbg !2758, !psr.id !2795
  %16 = and i64 %15, 4503599627370495, !dbg !2796, !psr.id !2797, !ValueTainted !246
  %17 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2798, !psr.id !2799
  store i64 %16, i64* %17, align 8, !dbg !2800, !psr.id !2801
  %18 = lshr i64 %15, 52, !dbg !2802, !psr.id !2803, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %18, metadata !2773, metadata !DIExpression()), !dbg !2758, !psr.id !2804
  %19 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2805, !psr.id !2806
  %20 = load i64, i64* %19, align 8, !dbg !2805, !psr.id !2807, !ValueTainted !246
  %21 = add i64 %20, %18, !dbg !2808, !psr.id !2809, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %21, metadata !2763, metadata !DIExpression()), !dbg !2758, !psr.id !2810
  %22 = and i64 %21, 4503599627370495, !dbg !2811, !psr.id !2812, !ValueTainted !246
  %23 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2813, !psr.id !2814
  store i64 %22, i64* %23, align 8, !dbg !2815, !psr.id !2816
  %24 = lshr i64 %21, 52, !dbg !2817, !psr.id !2818, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %24, metadata !2773, metadata !DIExpression()), !dbg !2758, !psr.id !2819
  %25 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !2820, !psr.id !2821
  %26 = load i64, i64* %25, align 8, !dbg !2822, !psr.id !2823, !ValueTainted !246
  %27 = add i64 %26, %24, !dbg !2822, !psr.id !2824, !ValueTainted !246
  store i64 %27, i64* %25, align 8, !dbg !2822, !psr.id !2825
  %28 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !2826, !psr.id !2827
  %29 = load i64, i64* %28, align 8, !dbg !2826, !psr.id !2828, !ValueTainted !246
  %30 = lshr i64 %29, 48, !dbg !2829, !psr.id !2830, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %30, metadata !2831, metadata !DIExpression()), !dbg !2758, !psr.id !2832
  %31 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2833, !psr.id !2834
  %32 = load i64, i64* %31, align 8, !dbg !2835, !psr.id !2836, !ValueTainted !246
  %33 = add i64 %32, %30, !dbg !2835, !psr.id !2837, !ValueTainted !246
  store i64 %33, i64* %31, align 8, !dbg !2835, !psr.id !2838
  %34 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2839, !psr.id !2840
  %35 = load i64, i64* %34, align 8, !dbg !2839, !psr.id !2841, !ValueTainted !246
  %36 = shl i64 %30, 44, !dbg !2842, !psr.id !2843, !ValueTainted !246
  %37 = sub i64 %35, %36, !dbg !2844, !psr.id !2845, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %37, metadata !2763, metadata !DIExpression()), !dbg !2758, !psr.id !2846
  %38 = and i64 %37, 4503599627370495, !dbg !2847, !psr.id !2848, !ValueTainted !246
  %39 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2849, !psr.id !2850
  store i64 %38, i64* %39, align 8, !dbg !2851, !psr.id !2852
  %40 = lshr i64 %37, 52, !dbg !2853, !psr.id !2854, !ValueTainted !246
  %41 = sub i64 0, %40, !dbg !2855, !psr.id !2856, !ValueTainted !246
  %42 = and i64 %41, 4095, !dbg !2857, !psr.id !2858, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %42, metadata !2773, metadata !DIExpression()), !dbg !2758, !psr.id !2859
  %43 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2860, !psr.id !2861
  %44 = load i64, i64* %43, align 8, !dbg !2860, !psr.id !2862, !ValueTainted !246
  %45 = sub i64 %44, %42, !dbg !2863, !psr.id !2864, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %45, metadata !2763, metadata !DIExpression()), !dbg !2758, !psr.id !2865
  %46 = and i64 %45, 4503599627370495, !dbg !2866, !psr.id !2867, !ValueTainted !246
  %47 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2868, !psr.id !2869
  store i64 %46, i64* %47, align 8, !dbg !2870, !psr.id !2871
  %48 = lshr i64 %45, 63, !dbg !2872, !psr.id !2873, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %48, metadata !2773, metadata !DIExpression()), !dbg !2758, !psr.id !2874
  %49 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2875, !psr.id !2876
  %50 = load i64, i64* %49, align 8, !dbg !2875, !psr.id !2877, !ValueTainted !246
  %51 = sub i64 %50, %48, !dbg !2878, !psr.id !2879, !ValueTainted !246
  %52 = shl i64 %30, 36, !dbg !2880, !psr.id !2881, !ValueTainted !246
  %53 = sub i64 %51, %52, !dbg !2882, !psr.id !2883, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %53, metadata !2763, metadata !DIExpression()), !dbg !2758, !psr.id !2884
  %54 = and i64 %53, 4503599627370495, !dbg !2885, !psr.id !2886, !ValueTainted !246
  %55 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2887, !psr.id !2888
  store i64 %54, i64* %55, align 8, !dbg !2889, !psr.id !2890
  %56 = lshr i64 %53, 63, !dbg !2891, !psr.id !2892, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %56, metadata !2773, metadata !DIExpression()), !dbg !2758, !psr.id !2893
  %57 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !2894, !psr.id !2895
  %58 = load i64, i64* %57, align 8, !dbg !2894, !psr.id !2896, !ValueTainted !246
  %59 = and i64 %58, 281474976710655, !dbg !2897, !psr.id !2898, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %59, metadata !2763, metadata !DIExpression()), !dbg !2758, !psr.id !2899
  %60 = shl i64 %30, 16, !dbg !2900, !psr.id !2901, !ValueTainted !246
  %61 = add i64 %59, %60, !dbg !2902, !psr.id !2903, !ValueTainted !246
  %62 = sub i64 %61, %56, !dbg !2904, !psr.id !2905, !ValueTainted !246
  %63 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !2906, !psr.id !2907
  store i64 %62, i64* %63, align 8, !dbg !2908, !psr.id !2909
  ret void, !dbg !2910, !psr.id !2911
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !2912 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2915, metadata !DIExpression()), !dbg !2916, !psr.id !2917
  %2 = xor i32 %0, 1, !dbg !2918, !psr.id !2919, !ValueTainted !246
  ret i32 %2, !dbg !2920, !psr.id !2921
}

; Function Attrs: noinline nounwind uwtable
define internal void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* %1, i8* %2, i64 %3) #0 !dbg !2922 {
  %5 = alloca %struct.p256_jacobian, align 8, !psr.id !2926
  %6 = alloca %struct.p256_affine, align 8, !psr.id !2927
  %7 = alloca %struct.p256_jacobian, align 8, !psr.id !2928
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !2929, metadata !DIExpression()), !dbg !2930, !psr.id !2931
  call void @llvm.dbg.value(metadata %struct.p256_affine* %1, metadata !2932, metadata !DIExpression()), !dbg !2930, !psr.id !2933
  call void @llvm.dbg.value(metadata i8* %2, metadata !2934, metadata !DIExpression()), !dbg !2930, !psr.id !2935
  call void @llvm.dbg.value(metadata i64 %3, metadata !2936, metadata !DIExpression()), !dbg !2930, !psr.id !2937
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %5, metadata !2938, metadata !DIExpression()), !dbg !2939, !psr.id !2940
  %8 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !2941, !psr.id !2942
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 120, i1 false), !dbg !2941, !psr.id !2943
  call void @llvm.dbg.value(metadata i32 1, metadata !2944, metadata !DIExpression()), !dbg !2930, !psr.id !2945
  br label %9, !dbg !2946, !psr.id !2947

9:                                                ; preds = %198, %4
  %.03 = phi i32 [ 1, %4 ], [ %.1, %198 ], !dbg !2948, !psr.id !2949, !ValueTainted !246
  %.02 = phi i64 [ %3, %4 ], [ %10, %198 ], !psr.id !2950
  %.01 = phi i8* [ %2, %4 ], [ %13, %198 ], !psr.id !2951, !PointTainted !223
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2934, metadata !DIExpression()), !dbg !2930, !psr.id !2952
  call void @llvm.dbg.value(metadata i64 %.02, metadata !2936, metadata !DIExpression()), !dbg !2930, !psr.id !2953
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2944, metadata !DIExpression()), !dbg !2930, !psr.id !2954
  %10 = add i64 %.02, -1, !dbg !2955, !psr.id !2956
  call void @llvm.dbg.value(metadata i64 %10, metadata !2936, metadata !DIExpression()), !dbg !2930, !psr.id !2957
  %11 = icmp ugt i64 %.02, 0, !dbg !2958, !psr.id !2959
  br i1 %11, label %12, label %199, !dbg !2946, !psr.id !2960

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !2961, !psr.id !2963, !PointTainted !223
  call void @llvm.dbg.value(metadata i8* %13, metadata !2934, metadata !DIExpression()), !dbg !2930, !psr.id !2964
  %14 = load i8, i8* %.01, align 1, !dbg !2965, !psr.id !2966, !ValueTainted !246
  %15 = zext i8 %14 to i32, !dbg !2965, !psr.id !2967, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %15, metadata !2968, metadata !DIExpression()), !dbg !2969, !psr.id !2970
  call void @llvm.dbg.value(metadata i32 0, metadata !2971, metadata !DIExpression()), !dbg !2969, !psr.id !2972
  br label %16, !dbg !2973, !psr.id !2975

16:                                               ; preds = %196, %12
  %.05 = phi i32 [ %15, %12 ], [ %195, %196 ], !dbg !2969, !psr.id !2976, !ValueTainted !246
  %.04 = phi i32 [ 0, %12 ], [ %197, %196 ], !dbg !2977, !psr.id !2978
  %.1 = phi i32 [ %.03, %12 ], [ %194, %196 ], !dbg !2930, !psr.id !2979, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2944, metadata !DIExpression()), !dbg !2930, !psr.id !2980
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2971, metadata !DIExpression()), !dbg !2969, !psr.id !2981
  call void @llvm.dbg.value(metadata i32 %.05, metadata !2968, metadata !DIExpression()), !dbg !2969, !psr.id !2982
  %17 = icmp slt i32 %.04, 2, !dbg !2983, !psr.id !2985
  br i1 %17, label %18, label %198, !dbg !2986, !psr.id !2987

18:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.p256_affine* %6, metadata !2988, metadata !DIExpression()), !dbg !2990, !psr.id !2991
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %7, metadata !2992, metadata !DIExpression()), !dbg !2993, !psr.id !2994
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !2995, !psr.id !2996
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !2997, !psr.id !2998
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !2999, !psr.id !3000
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !3001, !psr.id !3002
  %19 = lshr i32 %.05, 4, !dbg !3003, !psr.id !3004, !ValueTainted !246
  %20 = and i32 %19, 15, !dbg !3005, !psr.id !3006, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %20, metadata !3007, metadata !DIExpression()), !dbg !3008, !psr.id !3009
  %21 = call i32 @NEQ(i32 %20, i32 0), !dbg !3010, !psr.id !3011, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %21, metadata !3012, metadata !DIExpression()), !dbg !3008, !psr.id !3013
  %22 = bitcast %struct.p256_affine* %6 to i8*, !dbg !3014, !psr.id !3015
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 80, i1 false), !dbg !3014, !psr.id !3016
  call void @llvm.dbg.value(metadata i32 0, metadata !3017, metadata !DIExpression()), !dbg !3008, !psr.id !3018
  br label %23, !dbg !3019, !psr.id !3021

23:                                               ; preds = %130, %18
  %.06 = phi i32 [ 0, %18 ], [ %131, %130 ], !dbg !3022, !psr.id !3023
  call void @llvm.dbg.value(metadata i32 %.06, metadata !3017, metadata !DIExpression()), !dbg !3008, !psr.id !3024
  %24 = icmp ult i32 %.06, 15, !dbg !3025, !psr.id !3027
  br i1 %24, label %25, label %132, !dbg !3028, !psr.id !3029

25:                                               ; preds = %23
  %26 = add i32 %.06, 1, !dbg !3030, !psr.id !3032
  %27 = call i32 @EQ(i32 %20, i32 %26), !dbg !3033, !psr.id !3034, !ValueTainted !246
  %28 = zext i32 %27 to i64, !dbg !3035, !psr.id !3036, !ValueTainted !246
  %29 = sub i64 0, %28, !dbg !3037, !psr.id !3038, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %29, metadata !3039, metadata !DIExpression()), !dbg !3008, !psr.id !3040
  %30 = zext i32 %.06 to i64, !dbg !3041, !psr.id !3042
  %31 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %30, !dbg !3041, !psr.id !3043
  %32 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %31, i32 0, i32 0, !dbg !3044, !psr.id !3045
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 0, !dbg !3041, !psr.id !3046
  %34 = load i64, i64* %33, align 8, !dbg !3041, !psr.id !3047, !ValueTainted !246
  %35 = and i64 %29, %34, !dbg !3048, !psr.id !3049, !ValueTainted !246
  %36 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !3050, !psr.id !3051
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %36, i64 0, i64 0, !dbg !3052, !psr.id !3053, !PointTainted !223
  %38 = load i64, i64* %37, align 8, !dbg !3054, !psr.id !3055, !ValueTainted !246
  %39 = or i64 %38, %35, !dbg !3054, !psr.id !3056, !ValueTainted !246
  store i64 %39, i64* %37, align 8, !dbg !3054, !psr.id !3057
  %40 = zext i32 %.06 to i64, !dbg !3058, !psr.id !3059
  %41 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %40, !dbg !3058, !psr.id !3060
  %42 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %41, i32 0, i32 0, !dbg !3061, !psr.id !3062
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 1, !dbg !3058, !psr.id !3063
  %44 = load i64, i64* %43, align 8, !dbg !3058, !psr.id !3064, !ValueTainted !246
  %45 = and i64 %29, %44, !dbg !3065, !psr.id !3066, !ValueTainted !246
  %46 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !3067, !psr.id !3068
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %46, i64 0, i64 1, !dbg !3069, !psr.id !3070, !PointTainted !223
  %48 = load i64, i64* %47, align 8, !dbg !3071, !psr.id !3072, !ValueTainted !246
  %49 = or i64 %48, %45, !dbg !3071, !psr.id !3073, !ValueTainted !246
  store i64 %49, i64* %47, align 8, !dbg !3071, !psr.id !3074
  %50 = zext i32 %.06 to i64, !dbg !3075, !psr.id !3076
  %51 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %50, !dbg !3075, !psr.id !3077
  %52 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %51, i32 0, i32 0, !dbg !3078, !psr.id !3079
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %52, i64 0, i64 2, !dbg !3075, !psr.id !3080
  %54 = load i64, i64* %53, align 8, !dbg !3075, !psr.id !3081, !ValueTainted !246
  %55 = and i64 %29, %54, !dbg !3082, !psr.id !3083, !ValueTainted !246
  %56 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !3084, !psr.id !3085
  %57 = getelementptr inbounds [5 x i64], [5 x i64]* %56, i64 0, i64 2, !dbg !3086, !psr.id !3087, !PointTainted !223
  %58 = load i64, i64* %57, align 8, !dbg !3088, !psr.id !3089, !ValueTainted !246
  %59 = or i64 %58, %55, !dbg !3088, !psr.id !3090, !ValueTainted !246
  store i64 %59, i64* %57, align 8, !dbg !3088, !psr.id !3091
  %60 = zext i32 %.06 to i64, !dbg !3092, !psr.id !3093
  %61 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %60, !dbg !3092, !psr.id !3094
  %62 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %61, i32 0, i32 0, !dbg !3095, !psr.id !3096
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %62, i64 0, i64 3, !dbg !3092, !psr.id !3097
  %64 = load i64, i64* %63, align 8, !dbg !3092, !psr.id !3098, !ValueTainted !246
  %65 = and i64 %29, %64, !dbg !3099, !psr.id !3100, !ValueTainted !246
  %66 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !3101, !psr.id !3102
  %67 = getelementptr inbounds [5 x i64], [5 x i64]* %66, i64 0, i64 3, !dbg !3103, !psr.id !3104, !PointTainted !223
  %68 = load i64, i64* %67, align 8, !dbg !3105, !psr.id !3106, !ValueTainted !246
  %69 = or i64 %68, %65, !dbg !3105, !psr.id !3107, !ValueTainted !246
  store i64 %69, i64* %67, align 8, !dbg !3105, !psr.id !3108
  %70 = zext i32 %.06 to i64, !dbg !3109, !psr.id !3110
  %71 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %70, !dbg !3109, !psr.id !3111
  %72 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %71, i32 0, i32 0, !dbg !3112, !psr.id !3113
  %73 = getelementptr inbounds [5 x i64], [5 x i64]* %72, i64 0, i64 4, !dbg !3109, !psr.id !3114
  %74 = load i64, i64* %73, align 8, !dbg !3109, !psr.id !3115, !ValueTainted !246
  %75 = and i64 %29, %74, !dbg !3116, !psr.id !3117, !ValueTainted !246
  %76 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !3118, !psr.id !3119
  %77 = getelementptr inbounds [5 x i64], [5 x i64]* %76, i64 0, i64 4, !dbg !3120, !psr.id !3121, !PointTainted !223
  %78 = load i64, i64* %77, align 8, !dbg !3122, !psr.id !3123, !ValueTainted !246
  %79 = or i64 %78, %75, !dbg !3122, !psr.id !3124, !ValueTainted !246
  store i64 %79, i64* %77, align 8, !dbg !3122, !psr.id !3125
  %80 = zext i32 %.06 to i64, !dbg !3126, !psr.id !3127
  %81 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %80, !dbg !3126, !psr.id !3128
  %82 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %81, i32 0, i32 1, !dbg !3129, !psr.id !3130
  %83 = getelementptr inbounds [5 x i64], [5 x i64]* %82, i64 0, i64 0, !dbg !3126, !psr.id !3131
  %84 = load i64, i64* %83, align 8, !dbg !3126, !psr.id !3132, !ValueTainted !246
  %85 = and i64 %29, %84, !dbg !3133, !psr.id !3134, !ValueTainted !246
  %86 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !3135, !psr.id !3136
  %87 = getelementptr inbounds [5 x i64], [5 x i64]* %86, i64 0, i64 0, !dbg !3137, !psr.id !3138, !PointTainted !223
  %88 = load i64, i64* %87, align 8, !dbg !3139, !psr.id !3140, !ValueTainted !246
  %89 = or i64 %88, %85, !dbg !3139, !psr.id !3141, !ValueTainted !246
  store i64 %89, i64* %87, align 8, !dbg !3139, !psr.id !3142
  %90 = zext i32 %.06 to i64, !dbg !3143, !psr.id !3144
  %91 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %90, !dbg !3143, !psr.id !3145
  %92 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %91, i32 0, i32 1, !dbg !3146, !psr.id !3147
  %93 = getelementptr inbounds [5 x i64], [5 x i64]* %92, i64 0, i64 1, !dbg !3143, !psr.id !3148
  %94 = load i64, i64* %93, align 8, !dbg !3143, !psr.id !3149, !ValueTainted !246
  %95 = and i64 %29, %94, !dbg !3150, !psr.id !3151, !ValueTainted !246
  %96 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !3152, !psr.id !3153
  %97 = getelementptr inbounds [5 x i64], [5 x i64]* %96, i64 0, i64 1, !dbg !3154, !psr.id !3155, !PointTainted !223
  %98 = load i64, i64* %97, align 8, !dbg !3156, !psr.id !3157, !ValueTainted !246
  %99 = or i64 %98, %95, !dbg !3156, !psr.id !3158, !ValueTainted !246
  store i64 %99, i64* %97, align 8, !dbg !3156, !psr.id !3159
  %100 = zext i32 %.06 to i64, !dbg !3160, !psr.id !3161
  %101 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %100, !dbg !3160, !psr.id !3162
  %102 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %101, i32 0, i32 1, !dbg !3163, !psr.id !3164
  %103 = getelementptr inbounds [5 x i64], [5 x i64]* %102, i64 0, i64 2, !dbg !3160, !psr.id !3165
  %104 = load i64, i64* %103, align 8, !dbg !3160, !psr.id !3166, !ValueTainted !246
  %105 = and i64 %29, %104, !dbg !3167, !psr.id !3168, !ValueTainted !246
  %106 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !3169, !psr.id !3170
  %107 = getelementptr inbounds [5 x i64], [5 x i64]* %106, i64 0, i64 2, !dbg !3171, !psr.id !3172, !PointTainted !223
  %108 = load i64, i64* %107, align 8, !dbg !3173, !psr.id !3174, !ValueTainted !246
  %109 = or i64 %108, %105, !dbg !3173, !psr.id !3175, !ValueTainted !246
  store i64 %109, i64* %107, align 8, !dbg !3173, !psr.id !3176
  %110 = zext i32 %.06 to i64, !dbg !3177, !psr.id !3178
  %111 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %110, !dbg !3177, !psr.id !3179
  %112 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %111, i32 0, i32 1, !dbg !3180, !psr.id !3181
  %113 = getelementptr inbounds [5 x i64], [5 x i64]* %112, i64 0, i64 3, !dbg !3177, !psr.id !3182
  %114 = load i64, i64* %113, align 8, !dbg !3177, !psr.id !3183, !ValueTainted !246
  %115 = and i64 %29, %114, !dbg !3184, !psr.id !3185, !ValueTainted !246
  %116 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !3186, !psr.id !3187
  %117 = getelementptr inbounds [5 x i64], [5 x i64]* %116, i64 0, i64 3, !dbg !3188, !psr.id !3189, !PointTainted !223
  %118 = load i64, i64* %117, align 8, !dbg !3190, !psr.id !3191, !ValueTainted !246
  %119 = or i64 %118, %115, !dbg !3190, !psr.id !3192, !ValueTainted !246
  store i64 %119, i64* %117, align 8, !dbg !3190, !psr.id !3193
  %120 = zext i32 %.06 to i64, !dbg !3194, !psr.id !3195
  %121 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %120, !dbg !3194, !psr.id !3196
  %122 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %121, i32 0, i32 1, !dbg !3197, !psr.id !3198
  %123 = getelementptr inbounds [5 x i64], [5 x i64]* %122, i64 0, i64 4, !dbg !3194, !psr.id !3199
  %124 = load i64, i64* %123, align 8, !dbg !3194, !psr.id !3200, !ValueTainted !246
  %125 = and i64 %29, %124, !dbg !3201, !psr.id !3202, !ValueTainted !246
  %126 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !3203, !psr.id !3204
  %127 = getelementptr inbounds [5 x i64], [5 x i64]* %126, i64 0, i64 4, !dbg !3205, !psr.id !3206, !PointTainted !223
  %128 = load i64, i64* %127, align 8, !dbg !3207, !psr.id !3208, !ValueTainted !246
  %129 = or i64 %128, %125, !dbg !3207, !psr.id !3209, !ValueTainted !246
  store i64 %129, i64* %127, align 8, !dbg !3207, !psr.id !3210
  br label %130, !dbg !3211, !psr.id !3212

130:                                              ; preds = %25
  %131 = add i32 %.06, 1, !dbg !3213, !psr.id !3214
  call void @llvm.dbg.value(metadata i32 %131, metadata !3017, metadata !DIExpression()), !dbg !3008, !psr.id !3215
  br label %23, !dbg !3216, !llvm.loop !3217, !psr.id !3219

132:                                              ; preds = %23
  %133 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !3220, !psr.id !3221
  %134 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !3220, !psr.id !3222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 120, i1 false), !dbg !3220, !psr.id !3223
  %135 = call i32 @p256_add_mixed(%struct.p256_jacobian* %7, %struct.p256_affine* %6), !dbg !3224, !psr.id !3225, !ValueTainted !246
  %136 = and i32 %21, %.1, !dbg !3226, !psr.id !3227, !ValueTainted !246
  %137 = zext i32 %136 to i64, !dbg !3228, !psr.id !3229, !ValueTainted !246
  %138 = sub i64 0, %137, !dbg !3230, !psr.id !3231, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %138, metadata !3039, metadata !DIExpression()), !dbg !3008, !psr.id !3232
  call void @llvm.dbg.value(metadata i32 0, metadata !3233, metadata !DIExpression()), !dbg !3008, !psr.id !3234
  br label %139, !dbg !3235, !psr.id !3237

139:                                              ; preds = %186, %132
  %.0 = phi i32 [ 0, %132 ], [ %187, %186 ], !dbg !3238, !psr.id !3239
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3233, metadata !DIExpression()), !dbg !3008, !psr.id !3240
  %140 = icmp slt i32 %.0, 5, !dbg !3241, !psr.id !3243
  br i1 %140, label %141, label %188, !dbg !3244, !psr.id !3245

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 0, !dbg !3246, !psr.id !3248
  %143 = sext i32 %.0 to i64, !dbg !3249, !psr.id !3250
  %144 = getelementptr inbounds [5 x i64], [5 x i64]* %142, i64 0, i64 %143, !dbg !3249, !psr.id !3251
  %145 = load i64, i64* %144, align 8, !dbg !3249, !psr.id !3252, !ValueTainted !246
  %146 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !3253, !psr.id !3254
  %147 = sext i32 %.0 to i64, !dbg !3255, !psr.id !3256
  %148 = getelementptr inbounds [5 x i64], [5 x i64]* %146, i64 0, i64 %147, !dbg !3255, !psr.id !3257
  %149 = load i64, i64* %148, align 8, !dbg !3255, !psr.id !3258, !ValueTainted !246
  %150 = xor i64 %145, %149, !dbg !3259, !psr.id !3260, !ValueTainted !246
  %151 = and i64 %138, %150, !dbg !3261, !psr.id !3262, !ValueTainted !246
  %152 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 0, !dbg !3263, !psr.id !3264
  %153 = sext i32 %.0 to i64, !dbg !3265, !psr.id !3266
  %154 = getelementptr inbounds [5 x i64], [5 x i64]* %152, i64 0, i64 %153, !dbg !3265, !psr.id !3267, !PointTainted !223
  %155 = load i64, i64* %154, align 8, !dbg !3268, !psr.id !3269, !ValueTainted !246
  %156 = xor i64 %155, %151, !dbg !3268, !psr.id !3270, !ValueTainted !246
  store i64 %156, i64* %154, align 8, !dbg !3268, !psr.id !3271
  %157 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 1, !dbg !3272, !psr.id !3273
  %158 = sext i32 %.0 to i64, !dbg !3274, !psr.id !3275
  %159 = getelementptr inbounds [5 x i64], [5 x i64]* %157, i64 0, i64 %158, !dbg !3274, !psr.id !3276
  %160 = load i64, i64* %159, align 8, !dbg !3274, !psr.id !3277, !ValueTainted !246
  %161 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !3278, !psr.id !3279
  %162 = sext i32 %.0 to i64, !dbg !3280, !psr.id !3281
  %163 = getelementptr inbounds [5 x i64], [5 x i64]* %161, i64 0, i64 %162, !dbg !3280, !psr.id !3282
  %164 = load i64, i64* %163, align 8, !dbg !3280, !psr.id !3283, !ValueTainted !246
  %165 = xor i64 %160, %164, !dbg !3284, !psr.id !3285, !ValueTainted !246
  %166 = and i64 %138, %165, !dbg !3286, !psr.id !3287, !ValueTainted !246
  %167 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 1, !dbg !3288, !psr.id !3289
  %168 = sext i32 %.0 to i64, !dbg !3290, !psr.id !3291
  %169 = getelementptr inbounds [5 x i64], [5 x i64]* %167, i64 0, i64 %168, !dbg !3290, !psr.id !3292, !PointTainted !223
  %170 = load i64, i64* %169, align 8, !dbg !3293, !psr.id !3294, !ValueTainted !246
  %171 = xor i64 %170, %166, !dbg !3293, !psr.id !3295, !ValueTainted !246
  store i64 %171, i64* %169, align 8, !dbg !3293, !psr.id !3296
  %172 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 2, !dbg !3297, !psr.id !3298
  %173 = sext i32 %.0 to i64, !dbg !3299, !psr.id !3300
  %174 = getelementptr inbounds [5 x i64], [5 x i64]* %172, i64 0, i64 %173, !dbg !3299, !psr.id !3301
  %175 = load i64, i64* %174, align 8, !dbg !3299, !psr.id !3302, !ValueTainted !246
  %176 = sext i32 %.0 to i64, !dbg !3303, !psr.id !3304
  %177 = getelementptr inbounds [5 x i64], [5 x i64]* @F256_R, i64 0, i64 %176, !dbg !3303, !psr.id !3305
  %178 = load i64, i64* %177, align 8, !dbg !3303, !psr.id !3306
  %179 = xor i64 %175, %178, !dbg !3307, !psr.id !3308, !ValueTainted !246
  %180 = and i64 %138, %179, !dbg !3309, !psr.id !3310, !ValueTainted !246
  %181 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 2, !dbg !3311, !psr.id !3312
  %182 = sext i32 %.0 to i64, !dbg !3313, !psr.id !3314
  %183 = getelementptr inbounds [5 x i64], [5 x i64]* %181, i64 0, i64 %182, !dbg !3313, !psr.id !3315, !PointTainted !223
  %184 = load i64, i64* %183, align 8, !dbg !3316, !psr.id !3317, !ValueTainted !246
  %185 = xor i64 %184, %180, !dbg !3316, !psr.id !3318, !ValueTainted !246
  store i64 %185, i64* %183, align 8, !dbg !3316, !psr.id !3319
  br label %186, !dbg !3320, !psr.id !3321

186:                                              ; preds = %141
  %187 = add nsw i32 %.0, 1, !dbg !3322, !psr.id !3323
  call void @llvm.dbg.value(metadata i32 %187, metadata !3233, metadata !DIExpression()), !dbg !3008, !psr.id !3324
  br label %139, !dbg !3325, !llvm.loop !3326, !psr.id !3328

188:                                              ; preds = %139
  %189 = xor i32 %.1, -1, !dbg !3329, !psr.id !3330, !ValueTainted !246
  %190 = and i32 %21, %189, !dbg !3331, !psr.id !3332, !ValueTainted !246
  %191 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !3333, !psr.id !3334
  %192 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !3335, !psr.id !3336
  call void @br_ccopy(i32 %190, i8* %191, i8* %192, i64 120), !dbg !3337, !psr.id !3338
  %193 = xor i32 %21, -1, !dbg !3339, !psr.id !3340, !ValueTainted !246
  %194 = and i32 %.1, %193, !dbg !3341, !psr.id !3342, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %194, metadata !2944, metadata !DIExpression()), !dbg !2930, !psr.id !3343
  %195 = shl i32 %.05, 4, !dbg !3344, !psr.id !3345, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %195, metadata !2968, metadata !DIExpression()), !dbg !2969, !psr.id !3346
  br label %196, !dbg !3347, !psr.id !3348

196:                                              ; preds = %188
  %197 = add nsw i32 %.04, 1, !dbg !3349, !psr.id !3350
  call void @llvm.dbg.value(metadata i32 %197, metadata !2971, metadata !DIExpression()), !dbg !2969, !psr.id !3351
  br label %16, !dbg !3352, !llvm.loop !3353, !psr.id !3355

198:                                              ; preds = %16
  br label %9, !dbg !2946, !llvm.loop !3356, !psr.id !3358

199:                                              ; preds = %9
  %200 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !3359, !psr.id !3360
  %201 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !3359, !psr.id !3361
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 120, i1 false), !dbg !3359, !psr.id !3362
  ret void, !dbg !3363, !psr.id !3364
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @p256_add_mixed(%struct.p256_jacobian* %0, %struct.p256_affine* %1) #0 !dbg !3365 {
  %3 = alloca [5 x i64], align 16, !psr.id !3368
  %4 = alloca [5 x i64], align 16, !psr.id !3369
  %5 = alloca [5 x i64], align 16, !psr.id !3370
  %6 = alloca [5 x i64], align 16, !psr.id !3371
  %7 = alloca [5 x i64], align 16, !psr.id !3372
  %8 = alloca [5 x i64], align 16, !psr.id !3373
  %9 = alloca [5 x i64], align 16, !psr.id !3374
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !3375, metadata !DIExpression()), !dbg !3376, !psr.id !3377
  call void @llvm.dbg.value(metadata %struct.p256_affine* %1, metadata !3378, metadata !DIExpression()), !dbg !3376, !psr.id !3379
  call void @llvm.dbg.declare(metadata [5 x i64]* %3, metadata !3380, metadata !DIExpression()), !dbg !3381, !psr.id !3382
  call void @llvm.dbg.declare(metadata [5 x i64]* %4, metadata !3383, metadata !DIExpression()), !dbg !3384, !psr.id !3385
  call void @llvm.dbg.declare(metadata [5 x i64]* %5, metadata !3386, metadata !DIExpression()), !dbg !3387, !psr.id !3388
  call void @llvm.dbg.declare(metadata [5 x i64]* %6, metadata !3389, metadata !DIExpression()), !dbg !3390, !psr.id !3391
  call void @llvm.dbg.declare(metadata [5 x i64]* %7, metadata !3392, metadata !DIExpression()), !dbg !3393, !psr.id !3394
  call void @llvm.dbg.declare(metadata [5 x i64]* %8, metadata !3395, metadata !DIExpression()), !dbg !3396, !psr.id !3397
  call void @llvm.dbg.declare(metadata [5 x i64]* %9, metadata !3398, metadata !DIExpression()), !dbg !3399, !psr.id !3400
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !3401, !psr.id !3402
  %11 = bitcast i64* %10 to i8*, !dbg !3401, !psr.id !3403
  %12 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3404, !psr.id !3405
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 0, !dbg !3401, !psr.id !3406
  %14 = bitcast i64* %13 to i8*, !dbg !3401, !psr.id !3407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %14, i64 40, i1 false), !dbg !3401, !psr.id !3408
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !3409, !psr.id !3410
  %16 = bitcast i64* %15 to i8*, !dbg !3409, !psr.id !3411
  %17 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !3412, !psr.id !3413
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %17, i64 0, i64 0, !dbg !3409, !psr.id !3414
  %19 = bitcast i64* %18 to i8*, !dbg !3409, !psr.id !3415
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 8 %19, i64 40, i1 false), !dbg !3409, !psr.id !3416
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !3417, !psr.id !3418
  %21 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !3419, !psr.id !3420
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %21, i64 0, i64 0, !dbg !3421, !psr.id !3422
  call void @f256_montysquare(i64* %20, i64* %22), !dbg !3423, !psr.id !3424
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !3425, !psr.id !3426
  %24 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i32 0, i32 0, !dbg !3427, !psr.id !3428
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %24, i64 0, i64 0, !dbg !3429, !psr.id !3430
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !3431, !psr.id !3432
  call void @f256_montymul(i64* %23, i64* %25, i64* %26), !dbg !3433, !psr.id !3434
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !3435, !psr.id !3436
  %28 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !3437, !psr.id !3438
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* %28, i64 0, i64 0, !dbg !3439, !psr.id !3440
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !3441, !psr.id !3442
  call void @f256_montymul(i64* %27, i64* %29, i64* %30), !dbg !3443, !psr.id !3444
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !3445, !psr.id !3446
  %32 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i32 0, i32 1, !dbg !3447, !psr.id !3448
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 0, !dbg !3449, !psr.id !3450
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !3451, !psr.id !3452
  call void @f256_montymul(i64* %31, i64* %33, i64* %34), !dbg !3453, !psr.id !3454
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !3455, !psr.id !3456
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !3457, !psr.id !3458
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !3459, !psr.id !3460
  call void @f256_sub(i64* %35, i64* %36, i64* %37), !dbg !3461, !psr.id !3462
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !3463, !psr.id !3464
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !3465, !psr.id !3466
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !3467, !psr.id !3468
  call void @f256_sub(i64* %38, i64* %39, i64* %40), !dbg !3469, !psr.id !3470
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !3471, !psr.id !3472
  call void @f256_final_reduce(i64* %41), !dbg !3473, !psr.id !3474
  %42 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !3475, !psr.id !3476
  %43 = load i64, i64* %42, align 16, !dbg !3475, !psr.id !3477, !ValueTainted !246
  %44 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 1, !dbg !3478, !psr.id !3479
  %45 = load i64, i64* %44, align 8, !dbg !3478, !psr.id !3480, !ValueTainted !246
  %46 = or i64 %43, %45, !dbg !3481, !psr.id !3482, !ValueTainted !246
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 2, !dbg !3483, !psr.id !3484
  %48 = load i64, i64* %47, align 16, !dbg !3483, !psr.id !3485, !ValueTainted !246
  %49 = or i64 %46, %48, !dbg !3486, !psr.id !3487, !ValueTainted !246
  %50 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 3, !dbg !3488, !psr.id !3489
  %51 = load i64, i64* %50, align 8, !dbg !3488, !psr.id !3490, !ValueTainted !246
  %52 = or i64 %49, %51, !dbg !3491, !psr.id !3492, !ValueTainted !246
  %53 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 4, !dbg !3493, !psr.id !3494
  %54 = load i64, i64* %53, align 16, !dbg !3493, !psr.id !3495, !ValueTainted !246
  %55 = or i64 %52, %54, !dbg !3496, !psr.id !3497, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %55, metadata !3498, metadata !DIExpression()), !dbg !3376, !psr.id !3499
  %56 = lshr i64 %55, 32, !dbg !3500, !psr.id !3501, !ValueTainted !246
  %57 = or i64 %55, %56, !dbg !3502, !psr.id !3503, !ValueTainted !246
  %58 = trunc i64 %57 to i32, !dbg !3504, !psr.id !3505, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %58, metadata !3506, metadata !DIExpression()), !dbg !3376, !psr.id !3507
  %59 = sub i32 0, %58, !dbg !3508, !psr.id !3509, !ValueTainted !246
  %60 = or i32 %58, %59, !dbg !3510, !psr.id !3511, !ValueTainted !246
  %61 = lshr i32 %60, 31, !dbg !3512, !psr.id !3513, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %61, metadata !3506, metadata !DIExpression()), !dbg !3376, !psr.id !3514
  %62 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !3515, !psr.id !3516
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !3517, !psr.id !3518
  call void @f256_montysquare(i64* %62, i64* %63), !dbg !3519, !psr.id !3520
  %64 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !3521, !psr.id !3522
  %65 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !3523, !psr.id !3524
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !3525, !psr.id !3526
  call void @f256_montymul(i64* %64, i64* %65, i64* %66), !dbg !3527, !psr.id !3528
  %67 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !3529, !psr.id !3530
  %68 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !3531, !psr.id !3532
  %69 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !3533, !psr.id !3534
  call void @f256_montymul(i64* %67, i64* %68, i64* %69), !dbg !3535, !psr.id !3536
  %70 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3537, !psr.id !3538
  %71 = getelementptr inbounds [5 x i64], [5 x i64]* %70, i64 0, i64 0, !dbg !3539, !psr.id !3540
  %72 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !3541, !psr.id !3542
  call void @f256_montysquare(i64* %71, i64* %72), !dbg !3543, !psr.id !3544
  %73 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3545, !psr.id !3546
  %74 = getelementptr inbounds [5 x i64], [5 x i64]* %73, i64 0, i64 0, !dbg !3547, !psr.id !3548
  %75 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3549, !psr.id !3550
  %76 = getelementptr inbounds [5 x i64], [5 x i64]* %75, i64 0, i64 0, !dbg !3551, !psr.id !3552
  %77 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !3553, !psr.id !3554
  call void @f256_sub(i64* %74, i64* %76, i64* %77), !dbg !3555, !psr.id !3556
  %78 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3557, !psr.id !3558
  %79 = getelementptr inbounds [5 x i64], [5 x i64]* %78, i64 0, i64 0, !dbg !3559, !psr.id !3560
  %80 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3561, !psr.id !3562
  %81 = getelementptr inbounds [5 x i64], [5 x i64]* %80, i64 0, i64 0, !dbg !3563, !psr.id !3564
  %82 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !3565, !psr.id !3566
  call void @f256_sub(i64* %79, i64* %81, i64* %82), !dbg !3567, !psr.id !3568
  %83 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3569, !psr.id !3570
  %84 = getelementptr inbounds [5 x i64], [5 x i64]* %83, i64 0, i64 0, !dbg !3571, !psr.id !3572
  %85 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3573, !psr.id !3574
  %86 = getelementptr inbounds [5 x i64], [5 x i64]* %85, i64 0, i64 0, !dbg !3575, !psr.id !3576
  %87 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !3577, !psr.id !3578
  call void @f256_sub(i64* %84, i64* %86, i64* %87), !dbg !3579, !psr.id !3580
  %88 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !3581, !psr.id !3582
  %89 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !3583, !psr.id !3584
  %90 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3585, !psr.id !3586
  %91 = getelementptr inbounds [5 x i64], [5 x i64]* %90, i64 0, i64 0, !dbg !3587, !psr.id !3588
  call void @f256_sub(i64* %88, i64* %89, i64* %91), !dbg !3589, !psr.id !3590
  %92 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !3591, !psr.id !3592
  %93 = getelementptr inbounds [5 x i64], [5 x i64]* %92, i64 0, i64 0, !dbg !3593, !psr.id !3594
  %94 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0, !dbg !3595, !psr.id !3596
  %95 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !3597, !psr.id !3598
  call void @f256_montymul(i64* %93, i64* %94, i64* %95), !dbg !3599, !psr.id !3600
  %96 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !3601, !psr.id !3602
  %97 = getelementptr inbounds [5 x i64], [5 x i64]* %7, i64 0, i64 0, !dbg !3603, !psr.id !3604
  %98 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0, !dbg !3605, !psr.id !3606
  call void @f256_montymul(i64* %96, i64* %97, i64* %98), !dbg !3607, !psr.id !3608
  %99 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !3609, !psr.id !3610
  %100 = getelementptr inbounds [5 x i64], [5 x i64]* %99, i64 0, i64 0, !dbg !3611, !psr.id !3612
  %101 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !3613, !psr.id !3614
  %102 = getelementptr inbounds [5 x i64], [5 x i64]* %101, i64 0, i64 0, !dbg !3615, !psr.id !3616
  %103 = getelementptr inbounds [5 x i64], [5 x i64]* %3, i64 0, i64 0, !dbg !3617, !psr.id !3618
  call void @f256_sub(i64* %100, i64* %102, i64* %103), !dbg !3619, !psr.id !3620
  %104 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !3621, !psr.id !3622
  %105 = getelementptr inbounds [5 x i64], [5 x i64]* %104, i64 0, i64 0, !dbg !3623, !psr.id !3624
  %106 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !3625, !psr.id !3626
  %107 = getelementptr inbounds [5 x i64], [5 x i64]* %106, i64 0, i64 0, !dbg !3627, !psr.id !3628
  %108 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0, !dbg !3629, !psr.id !3630
  call void @f256_montymul(i64* %105, i64* %107, i64* %108), !dbg !3631, !psr.id !3632
  ret i32 %61, !dbg !3633, !psr.id !3634
}

; Function Attrs: noinline nounwind uwtable
define internal void @window_to_affine(%struct.p256_affine* %0, %struct.p256_jacobian* %1, i32 %2) #0 !dbg !3635 {
  %4 = alloca [16 x [5 x i64]], align 16, !psr.id !3639
  call void @llvm.dbg.value(metadata %struct.p256_affine* %0, metadata !3640, metadata !DIExpression()), !dbg !3641, !psr.id !3642
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !3643, metadata !DIExpression()), !dbg !3641, !psr.id !3644
  call void @llvm.dbg.value(metadata i32 %2, metadata !3645, metadata !DIExpression()), !dbg !3641, !psr.id !3646
  call void @llvm.dbg.declare(metadata [16 x [5 x i64]]* %4, metadata !3647, metadata !DIExpression()), !dbg !3651, !psr.id !3652
  call void @llvm.dbg.value(metadata i32 0, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !3654
  br label %5, !dbg !3655, !psr.id !3657

5:                                                ; preds = %50, %3
  %.02 = phi i32 [ 0, %3 ], [ %51, %50 ], !dbg !3658, !psr.id !3659
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !3660
  %6 = add nsw i32 %.02, 1, !dbg !3661, !psr.id !3663
  %7 = icmp slt i32 %6, %2, !dbg !3664, !psr.id !3665
  br i1 %7, label %8, label %52, !dbg !3666, !psr.id !3667

8:                                                ; preds = %5
  %9 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 15, !dbg !3668, !psr.id !3670
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0, !dbg !3671, !psr.id !3672
  %11 = bitcast i64* %10 to i8*, !dbg !3671, !psr.id !3673
  %12 = sext i32 %.02 to i64, !dbg !3674, !psr.id !3675
  %13 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %12, !dbg !3674, !psr.id !3676
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %13, i32 0, i32 2, !dbg !3677, !psr.id !3678
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0, !dbg !3671, !psr.id !3679
  %16 = bitcast i64* %15 to i8*, !dbg !3671, !psr.id !3680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %16, i64 40, i1 false), !dbg !3671, !psr.id !3681
  %17 = sext i32 %.02 to i64, !dbg !3682, !psr.id !3683
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %17, !dbg !3682, !psr.id !3684
  %19 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %18, i32 0, i32 2, !dbg !3685, !psr.id !3686
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %19, i64 0, i64 0, !dbg !3687, !psr.id !3688
  %21 = bitcast i64* %20 to i8*, !dbg !3687, !psr.id !3689
  %22 = add nsw i32 %.02, 1, !dbg !3690, !psr.id !3691
  %23 = sext i32 %22 to i64, !dbg !3692, !psr.id !3693
  %24 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %23, !dbg !3692, !psr.id !3694
  %25 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %24, i32 0, i32 2, !dbg !3695, !psr.id !3696
  %26 = getelementptr inbounds [5 x i64], [5 x i64]* %25, i64 0, i64 0, !dbg !3687, !psr.id !3697
  %27 = bitcast i64* %26 to i8*, !dbg !3687, !psr.id !3698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %27, i64 40, i1 false), !dbg !3687, !psr.id !3699
  %28 = add nsw i32 %.02, 1, !dbg !3700, !psr.id !3701
  %29 = sext i32 %28 to i64, !dbg !3702, !psr.id !3703
  %30 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %29, !dbg !3702, !psr.id !3704
  %31 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %30, i32 0, i32 2, !dbg !3705, !psr.id !3706
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %31, i64 0, i64 0, !dbg !3707, !psr.id !3708
  %33 = bitcast i64* %32 to i8*, !dbg !3707, !psr.id !3709
  %34 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 15, !dbg !3710, !psr.id !3711
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %34, i64 0, i64 0, !dbg !3707, !psr.id !3712
  %36 = bitcast i64* %35 to i8*, !dbg !3707, !psr.id !3713
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %36, i64 40, i1 false), !dbg !3707, !psr.id !3714
  %37 = ashr i32 %.02, 1, !dbg !3715, !psr.id !3716
  %38 = sext i32 %37 to i64, !dbg !3717, !psr.id !3718
  %39 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %38, !dbg !3717, !psr.id !3719
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 0, !dbg !3717, !psr.id !3720
  %41 = sext i32 %.02 to i64, !dbg !3721, !psr.id !3722
  %42 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %41, !dbg !3721, !psr.id !3723
  %43 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %42, i32 0, i32 2, !dbg !3724, !psr.id !3725
  %44 = getelementptr inbounds [5 x i64], [5 x i64]* %43, i64 0, i64 0, !dbg !3721, !psr.id !3726
  %45 = add nsw i32 %.02, 1, !dbg !3727, !psr.id !3728
  %46 = sext i32 %45 to i64, !dbg !3729, !psr.id !3730
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %46, !dbg !3729, !psr.id !3731
  %48 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %47, i32 0, i32 2, !dbg !3732, !psr.id !3733
  %49 = getelementptr inbounds [5 x i64], [5 x i64]* %48, i64 0, i64 0, !dbg !3729, !psr.id !3734
  call void @f256_montymul(i64* %40, i64* %44, i64* %49), !dbg !3735, !psr.id !3736
  br label %50, !dbg !3737, !psr.id !3738

50:                                               ; preds = %8
  %51 = add nsw i32 %.02, 2, !dbg !3739, !psr.id !3740
  call void @llvm.dbg.value(metadata i32 %51, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !3741
  br label %5, !dbg !3742, !llvm.loop !3743, !psr.id !3745

52:                                               ; preds = %5
  %53 = and i32 %2, 1, !dbg !3746, !psr.id !3748
  %54 = icmp ne i32 %53, 0, !dbg !3749, !psr.id !3750
  br i1 %54, label %55, label %73, !dbg !3751, !psr.id !3752

55:                                               ; preds = %52
  %56 = ashr i32 %2, 1, !dbg !3753, !psr.id !3755
  %57 = sext i32 %56 to i64, !dbg !3756, !psr.id !3757
  %58 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %57, !dbg !3756, !psr.id !3758
  %59 = getelementptr inbounds [5 x i64], [5 x i64]* %58, i64 0, i64 0, !dbg !3759, !psr.id !3760
  %60 = bitcast i64* %59 to i8*, !dbg !3759, !psr.id !3761
  %61 = sub nsw i32 %2, 1, !dbg !3762, !psr.id !3763
  %62 = sext i32 %61 to i64, !dbg !3764, !psr.id !3765
  %63 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %62, !dbg !3764, !psr.id !3766
  %64 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %63, i32 0, i32 2, !dbg !3767, !psr.id !3768
  %65 = getelementptr inbounds [5 x i64], [5 x i64]* %64, i64 0, i64 0, !dbg !3759, !psr.id !3769
  %66 = bitcast i64* %65 to i8*, !dbg !3759, !psr.id !3770
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %66, i64 40, i1 false), !dbg !3759, !psr.id !3771
  %67 = sub nsw i32 %2, 1, !dbg !3772, !psr.id !3773
  %68 = sext i32 %67 to i64, !dbg !3774, !psr.id !3775
  %69 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %68, !dbg !3774, !psr.id !3776
  %70 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %69, i32 0, i32 2, !dbg !3777, !psr.id !3778
  %71 = getelementptr inbounds [5 x i64], [5 x i64]* %70, i64 0, i64 0, !dbg !3779, !psr.id !3780
  %72 = bitcast i64* %71 to i8*, !dbg !3779, !psr.id !3781
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 16 bitcast ([5 x i64]* @F256_R to i8*), i64 40, i1 false), !dbg !3779, !psr.id !3782
  br label %73, !dbg !3783, !psr.id !3784

73:                                               ; preds = %55, %52
  call void @llvm.dbg.value(metadata i32 1, metadata !3785, metadata !DIExpression()), !dbg !3641, !psr.id !3786
  call void @llvm.dbg.value(metadata i32 2, metadata !3787, metadata !DIExpression()), !dbg !3641, !psr.id !3788
  br label %74, !dbg !3789, !psr.id !3791

74:                                               ; preds = %131, %73
  %.01 = phi i32 [ 1, %73 ], [ %132, %131 ], !dbg !3792, !psr.id !3793
  %.0 = phi i32 [ 2, %73 ], [ %133, %131 ], !dbg !3792, !psr.id !3794
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3787, metadata !DIExpression()), !dbg !3641, !psr.id !3795
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3785, metadata !DIExpression()), !dbg !3641, !psr.id !3796
  %75 = icmp slt i32 %.0, %2, !dbg !3797, !psr.id !3799
  br i1 %75, label %76, label %134, !dbg !3800, !psr.id !3801

76:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i32 0, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !3802
  br label %77, !dbg !3803, !psr.id !3806

77:                                               ; preds = %93, %76
  %.1 = phi i32 [ 0, %76 ], [ %94, %93 ], !dbg !3807, !psr.id !3808
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !3809
  %78 = icmp slt i32 %.1, %2, !dbg !3810, !psr.id !3812
  br i1 %78, label %79, label %95, !dbg !3813, !psr.id !3814

79:                                               ; preds = %77
  %80 = sext i32 %.1 to i64, !dbg !3815, !psr.id !3817
  %81 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %80, !dbg !3815, !psr.id !3818
  %82 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %81, i32 0, i32 2, !dbg !3819, !psr.id !3820
  %83 = getelementptr inbounds [5 x i64], [5 x i64]* %82, i64 0, i64 0, !dbg !3815, !psr.id !3821
  %84 = sext i32 %.1 to i64, !dbg !3822, !psr.id !3823
  %85 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %84, !dbg !3822, !psr.id !3824
  %86 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %85, i32 0, i32 2, !dbg !3825, !psr.id !3826
  %87 = getelementptr inbounds [5 x i64], [5 x i64]* %86, i64 0, i64 0, !dbg !3822, !psr.id !3827
  %88 = ashr i32 %.1, %.01, !dbg !3828, !psr.id !3829
  %89 = xor i32 %88, 1, !dbg !3830, !psr.id !3831
  %90 = sext i32 %89 to i64, !dbg !3832, !psr.id !3833
  %91 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %90, !dbg !3832, !psr.id !3834
  %92 = getelementptr inbounds [5 x i64], [5 x i64]* %91, i64 0, i64 0, !dbg !3832, !psr.id !3835
  call void @f256_montymul(i64* %83, i64* %87, i64* %92), !dbg !3836, !psr.id !3837
  br label %93, !dbg !3838, !psr.id !3839

93:                                               ; preds = %79
  %94 = add nsw i32 %.1, 1, !dbg !3840, !psr.id !3841
  call void @llvm.dbg.value(metadata i32 %94, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !3842
  br label %77, !dbg !3843, !llvm.loop !3844, !psr.id !3846

95:                                               ; preds = %77
  %96 = add nsw i32 %2, %.0, !dbg !3847, !psr.id !3848
  %97 = sub nsw i32 %96, 1, !dbg !3849, !psr.id !3850
  %98 = ashr i32 %97, %.01, !dbg !3851, !psr.id !3852
  call void @llvm.dbg.value(metadata i32 %98, metadata !3853, metadata !DIExpression()), !dbg !3854, !psr.id !3855
  call void @llvm.dbg.value(metadata i32 0, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !3856
  br label %99, !dbg !3857, !psr.id !3859

99:                                               ; preds = %115, %95
  %.2 = phi i32 [ 0, %95 ], [ %116, %115 ], !dbg !3860, !psr.id !3861
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !3862
  %100 = ashr i32 %98, 1, !dbg !3863, !psr.id !3865
  %101 = icmp slt i32 %.2, %100, !dbg !3866, !psr.id !3867
  br i1 %101, label %102, label %117, !dbg !3868, !psr.id !3869

102:                                              ; preds = %99
  %103 = sext i32 %.2 to i64, !dbg !3870, !psr.id !3872
  %104 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %103, !dbg !3870, !psr.id !3873
  %105 = getelementptr inbounds [5 x i64], [5 x i64]* %104, i64 0, i64 0, !dbg !3870, !psr.id !3874
  %106 = shl i32 %.2, 1, !dbg !3875, !psr.id !3876
  %107 = sext i32 %106 to i64, !dbg !3877, !psr.id !3878
  %108 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %107, !dbg !3877, !psr.id !3879
  %109 = getelementptr inbounds [5 x i64], [5 x i64]* %108, i64 0, i64 0, !dbg !3877, !psr.id !3880
  %110 = shl i32 %.2, 1, !dbg !3881, !psr.id !3882
  %111 = add nsw i32 %110, 1, !dbg !3883, !psr.id !3884
  %112 = sext i32 %111 to i64, !dbg !3885, !psr.id !3886
  %113 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %112, !dbg !3885, !psr.id !3887
  %114 = getelementptr inbounds [5 x i64], [5 x i64]* %113, i64 0, i64 0, !dbg !3885, !psr.id !3888
  call void @f256_montymul(i64* %105, i64* %109, i64* %114), !dbg !3889, !psr.id !3890
  br label %115, !dbg !3891, !psr.id !3892

115:                                              ; preds = %102
  %116 = add nsw i32 %.2, 1, !dbg !3893, !psr.id !3894
  call void @llvm.dbg.value(metadata i32 %116, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !3895
  br label %99, !dbg !3896, !llvm.loop !3897, !psr.id !3899

117:                                              ; preds = %99
  %118 = and i32 %98, 1, !dbg !3900, !psr.id !3902
  %119 = icmp ne i32 %118, 0, !dbg !3903, !psr.id !3904
  br i1 %119, label %120, label %130, !dbg !3905, !psr.id !3906

120:                                              ; preds = %117
  %121 = ashr i32 %98, 1, !dbg !3907, !psr.id !3909
  %122 = sext i32 %121 to i64, !dbg !3910, !psr.id !3911
  %123 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %122, !dbg !3910, !psr.id !3912
  %124 = getelementptr inbounds [5 x i64], [5 x i64]* %123, i64 0, i64 0, !dbg !3913, !psr.id !3914
  %125 = bitcast i64* %124 to i8*, !dbg !3913, !psr.id !3915
  %126 = sext i32 %98 to i64, !dbg !3916, !psr.id !3917
  %127 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 %126, !dbg !3916, !psr.id !3918
  %128 = getelementptr inbounds [5 x i64], [5 x i64]* %127, i64 0, i64 0, !dbg !3913, !psr.id !3919
  %129 = bitcast i64* %128 to i8*, !dbg !3913, !psr.id !3920
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %129, i64 40, i1 false), !dbg !3913, !psr.id !3921
  br label %130, !dbg !3922, !psr.id !3923

130:                                              ; preds = %120, %117
  br label %131, !dbg !3924, !psr.id !3925

131:                                              ; preds = %130
  %132 = add nsw i32 %.01, 1, !dbg !3926, !psr.id !3927
  call void @llvm.dbg.value(metadata i32 %132, metadata !3785, metadata !DIExpression()), !dbg !3641, !psr.id !3928
  %133 = shl i32 %.0, 1, !dbg !3929, !psr.id !3930
  call void @llvm.dbg.value(metadata i32 %133, metadata !3787, metadata !DIExpression()), !dbg !3641, !psr.id !3931
  br label %74, !dbg !3932, !llvm.loop !3933, !psr.id !3935

134:                                              ; preds = %74
  %135 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 15, !dbg !3936, !psr.id !3937
  %136 = getelementptr inbounds [5 x i64], [5 x i64]* %135, i64 0, i64 0, !dbg !3936, !psr.id !3938
  %137 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 0, !dbg !3939, !psr.id !3940
  %138 = getelementptr inbounds [5 x i64], [5 x i64]* %137, i64 0, i64 0, !dbg !3939, !psr.id !3941
  call void @f256_invert(i64* %136, i64* %138), !dbg !3942, !psr.id !3943
  call void @llvm.dbg.value(metadata i32 0, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !3944
  br label %139, !dbg !3945, !psr.id !3947

139:                                              ; preds = %180, %134
  %.3 = phi i32 [ 0, %134 ], [ %181, %180 ], !dbg !3948, !psr.id !3949
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !3950
  %140 = icmp slt i32 %.3, %2, !dbg !3951, !psr.id !3953
  br i1 %140, label %141, label %182, !dbg !3954, !psr.id !3955

141:                                              ; preds = %139
  %142 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 13, !dbg !3956, !psr.id !3958
  %143 = getelementptr inbounds [5 x i64], [5 x i64]* %142, i64 0, i64 0, !dbg !3956, !psr.id !3959
  %144 = sext i32 %.3 to i64, !dbg !3960, !psr.id !3961
  %145 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %144, !dbg !3960, !psr.id !3962
  %146 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %145, i32 0, i32 2, !dbg !3963, !psr.id !3964
  %147 = getelementptr inbounds [5 x i64], [5 x i64]* %146, i64 0, i64 0, !dbg !3960, !psr.id !3965
  %148 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 15, !dbg !3966, !psr.id !3967
  %149 = getelementptr inbounds [5 x i64], [5 x i64]* %148, i64 0, i64 0, !dbg !3966, !psr.id !3968
  call void @f256_montymul(i64* %143, i64* %147, i64* %149), !dbg !3969, !psr.id !3970
  %150 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 14, !dbg !3971, !psr.id !3972
  %151 = getelementptr inbounds [5 x i64], [5 x i64]* %150, i64 0, i64 0, !dbg !3971, !psr.id !3973
  %152 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 13, !dbg !3974, !psr.id !3975
  %153 = getelementptr inbounds [5 x i64], [5 x i64]* %152, i64 0, i64 0, !dbg !3974, !psr.id !3976
  call void @f256_montysquare(i64* %151, i64* %153), !dbg !3977, !psr.id !3978
  %154 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 13, !dbg !3979, !psr.id !3980
  %155 = getelementptr inbounds [5 x i64], [5 x i64]* %154, i64 0, i64 0, !dbg !3979, !psr.id !3981
  %156 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 13, !dbg !3982, !psr.id !3983
  %157 = getelementptr inbounds [5 x i64], [5 x i64]* %156, i64 0, i64 0, !dbg !3982, !psr.id !3984
  %158 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 14, !dbg !3985, !psr.id !3986
  %159 = getelementptr inbounds [5 x i64], [5 x i64]* %158, i64 0, i64 0, !dbg !3985, !psr.id !3987
  call void @f256_montymul(i64* %155, i64* %157, i64* %159), !dbg !3988, !psr.id !3989
  %160 = sext i32 %.3 to i64, !dbg !3990, !psr.id !3991
  %161 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %0, i64 %160, !dbg !3990, !psr.id !3992
  %162 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %161, i32 0, i32 0, !dbg !3993, !psr.id !3994
  %163 = getelementptr inbounds [5 x i64], [5 x i64]* %162, i64 0, i64 0, !dbg !3990, !psr.id !3995
  %164 = sext i32 %.3 to i64, !dbg !3996, !psr.id !3997
  %165 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %164, !dbg !3996, !psr.id !3998
  %166 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %165, i32 0, i32 0, !dbg !3999, !psr.id !4000
  %167 = getelementptr inbounds [5 x i64], [5 x i64]* %166, i64 0, i64 0, !dbg !3996, !psr.id !4001
  %168 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 14, !dbg !4002, !psr.id !4003
  %169 = getelementptr inbounds [5 x i64], [5 x i64]* %168, i64 0, i64 0, !dbg !4002, !psr.id !4004
  call void @f256_montymul(i64* %163, i64* %167, i64* %169), !dbg !4005, !psr.id !4006
  %170 = sext i32 %.3 to i64, !dbg !4007, !psr.id !4008
  %171 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %0, i64 %170, !dbg !4007, !psr.id !4009
  %172 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %171, i32 0, i32 1, !dbg !4010, !psr.id !4011
  %173 = getelementptr inbounds [5 x i64], [5 x i64]* %172, i64 0, i64 0, !dbg !4007, !psr.id !4012
  %174 = sext i32 %.3 to i64, !dbg !4013, !psr.id !4014
  %175 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %174, !dbg !4013, !psr.id !4015
  %176 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %175, i32 0, i32 1, !dbg !4016, !psr.id !4017
  %177 = getelementptr inbounds [5 x i64], [5 x i64]* %176, i64 0, i64 0, !dbg !4013, !psr.id !4018
  %178 = getelementptr inbounds [16 x [5 x i64]], [16 x [5 x i64]]* %4, i64 0, i64 13, !dbg !4019, !psr.id !4020
  %179 = getelementptr inbounds [5 x i64], [5 x i64]* %178, i64 0, i64 0, !dbg !4019, !psr.id !4021
  call void @f256_montymul(i64* %173, i64* %177, i64* %179), !dbg !4022, !psr.id !4023
  br label %180, !dbg !4024, !psr.id !4025

180:                                              ; preds = %141
  %181 = add nsw i32 %.3, 1, !dbg !4026, !psr.id !4027
  call void @llvm.dbg.value(metadata i32 %181, metadata !3653, metadata !DIExpression()), !dbg !3641, !psr.id !4028
  br label %139, !dbg !4029, !llvm.loop !4030, !psr.id !4032

182:                                              ; preds = %139
  ret void, !dbg !4033, !psr.id !4034
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @f256_decode(i64* %0, i8* %1) #0 !dbg !4035 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4038, metadata !DIExpression()), !dbg !4039, !psr.id !4040
  call void @llvm.dbg.value(metadata i8* %1, metadata !4041, metadata !DIExpression()), !dbg !4039, !psr.id !4042
  %3 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !4043, !psr.id !4044
  %4 = call i64 @br_dec64be(i8* %3), !dbg !4045, !psr.id !4046
  call void @llvm.dbg.value(metadata i64 %4, metadata !4047, metadata !DIExpression()), !dbg !4039, !psr.id !4048
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !4049, !psr.id !4050
  %6 = call i64 @br_dec64be(i8* %5), !dbg !4051, !psr.id !4052
  call void @llvm.dbg.value(metadata i64 %6, metadata !4053, metadata !DIExpression()), !dbg !4039, !psr.id !4054
  %7 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !4055, !psr.id !4056
  %8 = call i64 @br_dec64be(i8* %7), !dbg !4057, !psr.id !4058
  call void @llvm.dbg.value(metadata i64 %8, metadata !4059, metadata !DIExpression()), !dbg !4039, !psr.id !4060
  %9 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !4061, !psr.id !4062
  %10 = call i64 @br_dec64be(i8* %9), !dbg !4063, !psr.id !4064
  call void @llvm.dbg.value(metadata i64 %10, metadata !4065, metadata !DIExpression()), !dbg !4039, !psr.id !4066
  %11 = and i64 %10, 4503599627370495, !dbg !4067, !psr.id !4068
  %12 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !4069, !psr.id !4070
  store i64 %11, i64* %12, align 8, !dbg !4071, !psr.id !4072
  %13 = lshr i64 %10, 52, !dbg !4073, !psr.id !4074
  %14 = shl i64 %8, 12, !dbg !4075, !psr.id !4076
  %15 = or i64 %13, %14, !dbg !4077, !psr.id !4078
  %16 = and i64 %15, 4503599627370495, !dbg !4079, !psr.id !4080
  %17 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !4081, !psr.id !4082
  store i64 %16, i64* %17, align 8, !dbg !4083, !psr.id !4084
  %18 = lshr i64 %8, 40, !dbg !4085, !psr.id !4086
  %19 = shl i64 %6, 24, !dbg !4087, !psr.id !4088
  %20 = or i64 %18, %19, !dbg !4089, !psr.id !4090
  %21 = and i64 %20, 4503599627370495, !dbg !4091, !psr.id !4092
  %22 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !4093, !psr.id !4094
  store i64 %21, i64* %22, align 8, !dbg !4095, !psr.id !4096
  %23 = lshr i64 %6, 28, !dbg !4097, !psr.id !4098
  %24 = shl i64 %4, 36, !dbg !4099, !psr.id !4100
  %25 = or i64 %23, %24, !dbg !4101, !psr.id !4102
  %26 = and i64 %25, 4503599627370495, !dbg !4103, !psr.id !4104
  %27 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !4105, !psr.id !4106
  store i64 %26, i64* %27, align 8, !dbg !4107, !psr.id !4108
  %28 = lshr i64 %4, 16, !dbg !4109, !psr.id !4110
  %29 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !4111, !psr.id !4112
  store i64 %28, i64* %29, align 8, !dbg !4113, !psr.id !4114
  ret void, !dbg !4115, !psr.id !4116
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_tomonty(i64* %0, i64* %1) #0 !dbg !35 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !4117, metadata !DIExpression()), !dbg !4118, !psr.id !4119
  call void @llvm.dbg.value(metadata i64* %1, metadata !4120, metadata !DIExpression()), !dbg !4118, !psr.id !4121
  %3 = getelementptr inbounds [5 x i64], [5 x i64]* @f256_tomonty.R2, i64 0, i64 0, !psr.id !4122
  call void @f256_montymul(i64* %0, i64* %1, i64* %3), !dbg !4123, !psr.id !4124
  ret void, !dbg !4125, !psr.id !4126
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @br_dec64be(i8* %0) #0 !dbg !4127 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4130, metadata !DIExpression()), !dbg !4131, !psr.id !4132
  call void @llvm.dbg.value(metadata i8* %0, metadata !4133, metadata !DIExpression()), !dbg !4131, !psr.id !4134
  %2 = call i32 @br_dec32be(i8* %0), !dbg !4135, !psr.id !4136
  %3 = zext i32 %2 to i64, !dbg !4137, !psr.id !4138
  %4 = shl i64 %3, 32, !dbg !4139, !psr.id !4140
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !4141, !psr.id !4142
  %6 = call i32 @br_dec32be(i8* %5), !dbg !4143, !psr.id !4144
  %7 = zext i32 %6 to i64, !dbg !4145, !psr.id !4146
  %8 = or i64 %4, %7, !dbg !4147, !psr.id !4148
  ret i64 %8, !dbg !4149, !psr.id !4150
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !4151 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4154, metadata !DIExpression()), !dbg !4155, !psr.id !4156
  call void @llvm.dbg.value(metadata i8* %0, metadata !4157, metadata !DIExpression()), !dbg !4155, !psr.id !4158
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !4159, !psr.id !4160
  %3 = load i8, i8* %2, align 1, !dbg !4159, !psr.id !4161
  %4 = zext i8 %3 to i32, !dbg !4162, !psr.id !4163
  %5 = shl i32 %4, 24, !dbg !4164, !psr.id !4165
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !4166, !psr.id !4167
  %7 = load i8, i8* %6, align 1, !dbg !4166, !psr.id !4168
  %8 = zext i8 %7 to i32, !dbg !4169, !psr.id !4170
  %9 = shl i32 %8, 16, !dbg !4171, !psr.id !4172
  %10 = or i32 %5, %9, !dbg !4173, !psr.id !4174
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !4175, !psr.id !4176
  %12 = load i8, i8* %11, align 1, !dbg !4175, !psr.id !4177
  %13 = zext i8 %12 to i32, !dbg !4178, !psr.id !4179
  %14 = shl i32 %13, 8, !dbg !4180, !psr.id !4181
  %15 = or i32 %10, %14, !dbg !4182, !psr.id !4183
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !4184, !psr.id !4185
  %17 = load i8, i8* %16, align 1, !dbg !4184, !psr.id !4186
  %18 = zext i8 %17 to i32, !dbg !4187, !psr.id !4188
  %19 = or i32 %15, %18, !dbg !4189, !psr.id !4190
  ret i32 %19, !dbg !4191, !psr.id !4192
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_scalar(i8* %0, i64 %1) #0 !dbg !4193 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4196, metadata !DIExpression()), !dbg !4197, !psr.id !4198
  call void @llvm.dbg.value(metadata i64 %1, metadata !4199, metadata !DIExpression()), !dbg !4197, !psr.id !4200
  %3 = icmp ugt i64 %1, 32, !dbg !4201, !psr.id !4203
  br i1 %3, label %4, label %5, !dbg !4204, !psr.id !4205

4:                                                ; preds = %2
  br label %40, !dbg !4206, !psr.id !4208

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !4209, metadata !DIExpression()), !dbg !4197, !psr.id !4210
  call void @llvm.dbg.value(metadata i64 0, metadata !4211, metadata !DIExpression()), !dbg !4197, !psr.id !4212
  br label %6, !dbg !4213, !psr.id !4215

6:                                                ; preds = %13, %5
  %.04 = phi i32 [ 0, %5 ], [ %12, %13 ], !dbg !4197, !psr.id !4216
  %.01 = phi i64 [ 0, %5 ], [ %14, %13 ], !dbg !4217, !psr.id !4218
  call void @llvm.dbg.value(metadata i64 %.01, metadata !4211, metadata !DIExpression()), !dbg !4197, !psr.id !4219
  call void @llvm.dbg.value(metadata i32 %.04, metadata !4209, metadata !DIExpression()), !dbg !4197, !psr.id !4220
  %7 = icmp ult i64 %.01, %1, !dbg !4221, !psr.id !4223
  br i1 %7, label %8, label %15, !dbg !4224, !psr.id !4225

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !4226, !psr.id !4228, !PointTainted !223
  %10 = load i8, i8* %9, align 1, !dbg !4226, !psr.id !4229, !ValueTainted !246
  %11 = zext i8 %10 to i32, !dbg !4226, !psr.id !4230, !ValueTainted !246
  %12 = or i32 %.04, %11, !dbg !4231, !psr.id !4232, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %12, metadata !4209, metadata !DIExpression()), !dbg !4197, !psr.id !4233
  br label %13, !dbg !4234, !psr.id !4235

13:                                               ; preds = %8
  %14 = add i64 %.01, 1, !dbg !4236, !psr.id !4237
  call void @llvm.dbg.value(metadata i64 %14, metadata !4211, metadata !DIExpression()), !dbg !4197, !psr.id !4238
  br label %6, !dbg !4239, !llvm.loop !4240, !psr.id !4242

15:                                               ; preds = %6
  %16 = icmp eq i64 %1, 32, !dbg !4243, !psr.id !4245
  br i1 %16, label %17, label %35, !dbg !4246, !psr.id !4247

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 0, metadata !4248, metadata !DIExpression()), !dbg !4197, !psr.id !4249
  call void @llvm.dbg.value(metadata i64 0, metadata !4211, metadata !DIExpression()), !dbg !4197, !psr.id !4250
  br label %18, !dbg !4251, !psr.id !4254

18:                                               ; preds = %32, %17
  %.02 = phi i32 [ 0, %17 ], [ %31, %32 ], !dbg !4255, !psr.id !4256, !ValueTainted !246
  %.1 = phi i64 [ 0, %17 ], [ %33, %32 ], !dbg !4257, !psr.id !4258
  call void @llvm.dbg.value(metadata i64 %.1, metadata !4211, metadata !DIExpression()), !dbg !4197, !psr.id !4259
  call void @llvm.dbg.value(metadata i32 %.02, metadata !4248, metadata !DIExpression()), !dbg !4197, !psr.id !4260
  %19 = icmp ult i64 %.1, %1, !dbg !4261, !psr.id !4263
  br i1 %19, label %20, label %34, !dbg !4264, !psr.id !4265

20:                                               ; preds = %18
  %21 = call i32 @EQ0(i32 %.02), !dbg !4266, !psr.id !4268, !ValueTainted !246
  %22 = sub nsw i32 0, %21, !dbg !4269, !psr.id !4270, !ValueTainted !246
  %23 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !4271, !psr.id !4272, !PointTainted !223
  %24 = load i8, i8* %23, align 1, !dbg !4271, !psr.id !4273, !ValueTainted !246
  %25 = zext i8 %24 to i32, !dbg !4271, !psr.id !4274, !ValueTainted !246
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* @P256_N, i64 0, i64 %.1, !dbg !4275, !psr.id !4276
  %27 = load i8, i8* %26, align 1, !dbg !4275, !psr.id !4277
  %28 = zext i8 %27 to i32, !dbg !4275, !psr.id !4278
  %29 = call i32 @CMP(i32 %25, i32 %28), !dbg !4279, !psr.id !4280, !ValueTainted !246
  %30 = and i32 %22, %29, !dbg !4281, !psr.id !4282, !ValueTainted !246
  %31 = or i32 %.02, %30, !dbg !4283, !psr.id !4284, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %31, metadata !4248, metadata !DIExpression()), !dbg !4197, !psr.id !4285
  br label %32, !dbg !4286, !psr.id !4287

32:                                               ; preds = %20
  %33 = add i64 %.1, 1, !dbg !4288, !psr.id !4289
  call void @llvm.dbg.value(metadata i64 %33, metadata !4211, metadata !DIExpression()), !dbg !4197, !psr.id !4290
  br label %18, !dbg !4291, !llvm.loop !4292, !psr.id !4294

34:                                               ; preds = %18
  br label %36, !dbg !4295, !psr.id !4296

35:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 -1, metadata !4248, metadata !DIExpression()), !dbg !4197, !psr.id !4297
  br label %36, !psr.id !4298

36:                                               ; preds = %35, %34
  %.13 = phi i32 [ %.02, %34 ], [ -1, %35 ], !dbg !4299, !psr.id !4300, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %.13, metadata !4248, metadata !DIExpression()), !dbg !4197, !psr.id !4301
  %37 = call i32 @NEQ(i32 %.04, i32 0), !dbg !4302, !psr.id !4303, !ValueTainted !246
  %38 = call i32 @LT0(i32 %.13), !dbg !4304, !psr.id !4305, !ValueTainted !246
  %39 = and i32 %37, %38, !dbg !4306, !psr.id !4307, !ValueTainted !246
  br label %40, !dbg !4308, !psr.id !4309

40:                                               ; preds = %36, %4
  %.0 = phi i32 [ 0, %4 ], [ %39, %36 ], !dbg !4197, !psr.id !4310, !ValueTainted !246
  ret i32 %.0, !dbg !4311, !psr.id !4312
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ0(i32 %0) #0 !dbg !4313 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4316, metadata !DIExpression()), !dbg !4317, !psr.id !4318
  call void @llvm.dbg.value(metadata i32 %0, metadata !4319, metadata !DIExpression()), !dbg !4317, !psr.id !4320
  %2 = sub i32 0, %0, !dbg !4321, !psr.id !4322, !ValueTainted !246
  %3 = or i32 %0, %2, !dbg !4323, !psr.id !4324, !ValueTainted !246
  %4 = xor i32 %3, -1, !dbg !4325, !psr.id !4326, !ValueTainted !246
  %5 = lshr i32 %4, 31, !dbg !4327, !psr.id !4328, !ValueTainted !246
  ret i32 %5, !dbg !4329, !psr.id !4330
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @CMP(i32 %0, i32 %1) #0 !dbg !4331 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4334, metadata !DIExpression()), !dbg !4335, !psr.id !4336
  call void @llvm.dbg.value(metadata i32 %1, metadata !4337, metadata !DIExpression()), !dbg !4335, !psr.id !4338
  %3 = call i32 @GT(i32 %0, i32 %1), !dbg !4339, !psr.id !4340, !ValueTainted !246
  %4 = call i32 @GT(i32 %1, i32 %0), !dbg !4341, !psr.id !4342, !ValueTainted !246
  %5 = sub nsw i32 0, %4, !dbg !4343, !psr.id !4344, !ValueTainted !246
  %6 = or i32 %3, %5, !dbg !4345, !psr.id !4346, !ValueTainted !246
  ret i32 %6, !dbg !4347, !psr.id !4348
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LT0(i32 %0) #0 !dbg !4349 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4350, metadata !DIExpression()), !dbg !4351, !psr.id !4352
  %2 = lshr i32 %0, 31, !dbg !4353, !psr.id !4354, !ValueTainted !246
  ret i32 %2, !dbg !4355, !psr.id !4356
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !4357 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4358, metadata !DIExpression()), !dbg !4359, !psr.id !4360
  call void @llvm.dbg.value(metadata i32 %1, metadata !4361, metadata !DIExpression()), !dbg !4359, !psr.id !4362
  %3 = sub i32 %1, %0, !dbg !4363, !psr.id !4364, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %3, metadata !4365, metadata !DIExpression()), !dbg !4359, !psr.id !4366
  %4 = xor i32 %0, %1, !dbg !4367, !psr.id !4368, !ValueTainted !246
  %5 = xor i32 %0, %3, !dbg !4369, !psr.id !4370, !ValueTainted !246
  %6 = and i32 %4, %5, !dbg !4371, !psr.id !4372, !ValueTainted !246
  %7 = xor i32 %3, %6, !dbg !4373, !psr.id !4374, !ValueTainted !246
  %8 = lshr i32 %7, 31, !dbg !4375, !psr.id !4376, !ValueTainted !246
  ret i32 %8, !dbg !4377, !psr.id !4378
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.br_ec_impl* @br_ec_p256_m62_get() #0 !dbg !4379 {
  ret %struct.br_ec_impl* @br_ec_p256_m62, !dbg !4383, !psr.id !4384
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @api_mul_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!103, !105, !2}
!llvm.ident = !{!107, !107, !107}
!llvm.module.flags = !{!108, !109, !110}

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
!95 = !{!"0"}
!96 = !{!"1"}
!97 = !{!"2"}
!98 = !{!"3"}
!99 = !{!"4"}
!100 = !{!"5"}
!101 = !{!"6"}
!102 = !{!"7"}
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!104 = !DIFile(filename: "api_mul.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m62")
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "../BearSSL/src/codec/ccopy.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m62")
!107 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!108 = !{i32 7, !"Dwarf Version", i32 4}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 4}
!111 = distinct !DISubprogram(name: "api_mul_wrapper", scope: !104, file: !104, line: 7, type: !112, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !86, !75, !73, !75, !10}
!114 = !DILocalVariable(name: "G", arg: 1, scope: !111, file: !104, line: 7, type: !86)
!115 = !DILocation(line: 0, scope: !111)
!116 = !{!"8"}
!117 = !DILocalVariable(name: "Glen", arg: 2, scope: !111, file: !104, line: 7, type: !75)
!118 = !{!"9"}
!119 = !DILocalVariable(name: "kb", arg: 3, scope: !111, file: !104, line: 8, type: !73)
!120 = !{!"10"}
!121 = !DILocalVariable(name: "kblen", arg: 4, scope: !111, file: !104, line: 8, type: !75)
!122 = !{!"11"}
!123 = !DILocalVariable(name: "curve", arg: 5, scope: !111, file: !104, line: 8, type: !10)
!124 = !{!"12"}
!125 = !DILocation(line: 9, column: 12, scope: !111)
!126 = !{!"13"}
!127 = !DILocation(line: 9, column: 2, scope: !111)
!128 = !{!"14"}
!129 = !DILocation(line: 10, column: 12, scope: !111)
!130 = !{!"15"}
!131 = !DILocation(line: 10, column: 2, scope: !111)
!132 = !{!"16"}
!133 = !DILocation(line: 11, column: 12, scope: !111)
!134 = !{!"17"}
!135 = !DILocation(line: 11, column: 2, scope: !111)
!136 = !{!"18"}
!137 = !DILocation(line: 12, column: 12, scope: !111)
!138 = !{!"19"}
!139 = !DILocation(line: 12, column: 2, scope: !111)
!140 = !{!"20"}
!141 = !DILocation(line: 13, column: 12, scope: !111)
!142 = !{!"21"}
!143 = !DILocation(line: 13, column: 2, scope: !111)
!144 = !{!"22"}
!145 = !DILocation(line: 15, column: 12, scope: !111)
!146 = !{!"23"}
!147 = !DILocation(line: 15, column: 2, scope: !111)
!148 = !{!"24"}
!149 = !DILocalVariable(name: "iec", scope: !111, file: !104, line: 16, type: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_ec_impl", file: !65, line: 415, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 270, size: 448, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "supported_curves", scope: !153, file: !65, line: 279, baseType: !11, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !153, file: !65, line: 292, baseType: !70, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !153, file: !65, line: 306, baseType: !70, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !153, file: !65, line: 318, baseType: !79, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "mul", scope: !153, file: !65, line: 350, baseType: !83, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "mulgen", scope: !153, file: !65, line: 366, baseType: !88, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "muladd", scope: !153, file: !65, line: 412, baseType: !92, size: 64, offset: 384)
!162 = !{!"25"}
!163 = !DILocation(line: 18, column: 7, scope: !111)
!164 = !{!"26"}
!165 = !{!"27"}
!166 = !DILocation(line: 18, column: 2, scope: !111)
!167 = !{!"28"}
!168 = !DILocation(line: 19, column: 1, scope: !111)
!169 = !{!"29"}
!170 = distinct !DISubprogram(name: "api_mul_wrapper_t", scope: !104, file: !104, line: 30, type: !171, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !4)
!171 = !DISubroutineType(types: !172)
!172 = !{null}
!173 = !DILocation(line: 32, column: 21, scope: !170)
!174 = !{!"30"}
!175 = !DILocalVariable(name: "G", scope: !170, file: !104, line: 32, type: !86)
!176 = !DILocation(line: 0, scope: !170)
!177 = !{!"31"}
!178 = !DILocation(line: 33, column: 17, scope: !170)
!179 = !{!"32"}
!180 = !DILocalVariable(name: "Glen", scope: !170, file: !104, line: 33, type: !75)
!181 = !{!"33"}
!182 = !DILocation(line: 34, column: 28, scope: !170)
!183 = !{!"34"}
!184 = !DILocalVariable(name: "kb", scope: !170, file: !104, line: 34, type: !73)
!185 = !{!"35"}
!186 = !DILocation(line: 35, column: 18, scope: !170)
!187 = !{!"36"}
!188 = !DILocalVariable(name: "kblen", scope: !170, file: !104, line: 35, type: !75)
!189 = !{!"37"}
!190 = !DILocalVariable(name: "curve", scope: !170, file: !104, line: 36, type: !10)
!191 = !{!"38"}
!192 = !DILocalVariable(name: "iec", scope: !170, file: !104, line: 38, type: !150)
!193 = !{!"39"}
!194 = !DILocation(line: 40, column: 7, scope: !170)
!195 = !{!"40"}
!196 = !{!"41"}
!197 = !DILocation(line: 40, column: 2, scope: !170)
!198 = !{!"42"}
!199 = !DILocation(line: 41, column: 1, scope: !170)
!200 = !{!"43"}
!201 = distinct !DISubprogram(name: "br_ccopy", scope: !106, file: !106, line: 29, type: !202, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !4)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !11, !20, !204, !75}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!206 = !DILocalVariable(name: "ctl", arg: 1, scope: !201, file: !106, line: 29, type: !11)
!207 = !DILocation(line: 0, scope: !201)
!208 = !{!"44"}
!209 = !DILocalVariable(name: "dst", arg: 2, scope: !201, file: !106, line: 29, type: !20)
!210 = !{!"45"}
!211 = !DILocalVariable(name: "src", arg: 3, scope: !201, file: !106, line: 29, type: !204)
!212 = !{!"46"}
!213 = !DILocalVariable(name: "len", arg: 4, scope: !201, file: !106, line: 29, type: !75)
!214 = !{!"47"}
!215 = !DILocalVariable(name: "d", scope: !201, file: !106, line: 31, type: !86)
!216 = !{!"48"}
!217 = !DILocalVariable(name: "s", scope: !201, file: !106, line: 32, type: !73)
!218 = !{!"49"}
!219 = !DILocation(line: 36, column: 2, scope: !201)
!220 = !{!"50"}
!221 = !{!"51"}
!222 = !{!"52"}
!223 = !{!"PointTainted"}
!224 = !{!"53"}
!225 = !{!"54"}
!226 = !{!"55"}
!227 = !{!"56"}
!228 = !DILocation(line: 36, column: 13, scope: !201)
!229 = !{!"57"}
!230 = !{!"58"}
!231 = !DILocation(line: 36, column: 16, scope: !201)
!232 = !{!"59"}
!233 = !{!"60"}
!234 = !DILocation(line: 39, column: 10, scope: !235)
!235 = distinct !DILexicalBlock(scope: !201, file: !106, line: 36, column: 21)
!236 = !{!"61"}
!237 = !{!"62"}
!238 = !DILocation(line: 39, column: 7, scope: !235)
!239 = !{!"63"}
!240 = !{!"64"}
!241 = !DILocalVariable(name: "x", scope: !235, file: !106, line: 37, type: !11)
!242 = !DILocation(line: 0, scope: !235)
!243 = !{!"65"}
!244 = !DILocation(line: 40, column: 7, scope: !235)
!245 = !{!"66"}
!246 = !{!"ValueTainted"}
!247 = !{!"67"}
!248 = !DILocalVariable(name: "y", scope: !235, file: !106, line: 37, type: !11)
!249 = !{!"68"}
!250 = !DILocation(line: 41, column: 8, scope: !235)
!251 = !{!"69"}
!252 = !{!"70"}
!253 = !DILocation(line: 41, column: 6, scope: !235)
!254 = !{!"71"}
!255 = !DILocation(line: 42, column: 5, scope: !235)
!256 = !{!"72"}
!257 = !{!"73"}
!258 = distinct !{!258, !219, !259, !260}
!259 = !DILocation(line: 43, column: 2, scope: !201)
!260 = !{!"llvm.loop.mustprogress"}
!261 = !{!"74"}
!262 = !DILocation(line: 44, column: 1, scope: !201)
!263 = !{!"75"}
!264 = distinct !DISubprogram(name: "MUX", scope: !265, file: !265, line: 770, type: !266, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !4)
!265 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m62")
!266 = !DISubroutineType(types: !267)
!267 = !{!11, !11, !11, !11}
!268 = !DILocalVariable(name: "ctl", arg: 1, scope: !264, file: !265, line: 770, type: !11)
!269 = !DILocation(line: 0, scope: !264)
!270 = !{!"76"}
!271 = !DILocalVariable(name: "x", arg: 2, scope: !264, file: !265, line: 770, type: !11)
!272 = !{!"77"}
!273 = !DILocalVariable(name: "y", arg: 3, scope: !264, file: !265, line: 770, type: !11)
!274 = !{!"78"}
!275 = !DILocation(line: 772, column: 14, scope: !264)
!276 = !{!"79"}
!277 = !DILocation(line: 772, column: 24, scope: !264)
!278 = !{!"80"}
!279 = !DILocation(line: 772, column: 19, scope: !264)
!280 = !{!"81"}
!281 = !DILocation(line: 772, column: 11, scope: !264)
!282 = !{!"82"}
!283 = !DILocation(line: 772, column: 2, scope: !264)
!284 = !{!"83"}
!285 = distinct !DISubprogram(name: "api_generator", scope: !3, file: !3, line: 51, type: !71, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!286 = !DILocalVariable(name: "curve", arg: 1, scope: !285, file: !3, line: 51, type: !10)
!287 = !DILocation(line: 0, scope: !285)
!288 = !{!"84"}
!289 = !DILocalVariable(name: "len", arg: 2, scope: !285, file: !3, line: 51, type: !74)
!290 = !{!"85"}
!291 = !DILocation(line: 54, column: 7, scope: !285)
!292 = !{!"86"}
!293 = !{!"87"}
!294 = !DILocation(line: 55, column: 2, scope: !285)
!295 = !{!"88"}
!296 = distinct !DISubprogram(name: "api_order", scope: !3, file: !3, line: 59, type: !71, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!297 = !DILocalVariable(name: "curve", arg: 1, scope: !296, file: !3, line: 59, type: !10)
!298 = !DILocation(line: 0, scope: !296)
!299 = !{!"89"}
!300 = !DILocalVariable(name: "len", arg: 2, scope: !296, file: !3, line: 59, type: !74)
!301 = !{!"90"}
!302 = !DILocation(line: 62, column: 7, scope: !296)
!303 = !{!"91"}
!304 = !{!"92"}
!305 = !DILocation(line: 63, column: 2, scope: !296)
!306 = !{!"93"}
!307 = distinct !DISubprogram(name: "api_xoff", scope: !3, file: !3, line: 67, type: !80, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!308 = !DILocalVariable(name: "curve", arg: 1, scope: !307, file: !3, line: 67, type: !10)
!309 = !DILocation(line: 0, scope: !307)
!310 = !{!"94"}
!311 = !DILocalVariable(name: "len", arg: 2, scope: !307, file: !3, line: 67, type: !74)
!312 = !{!"95"}
!313 = !DILocation(line: 70, column: 7, scope: !307)
!314 = !{!"96"}
!315 = !DILocation(line: 71, column: 2, scope: !307)
!316 = !{!"97"}
!317 = distinct !DISubprogram(name: "api_mul", scope: !3, file: !3, line: 1635, type: !84, scopeLine: 1637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!318 = !{!"98"}
!319 = !DILocalVariable(name: "G", arg: 1, scope: !317, file: !3, line: 1635, type: !86)
!320 = !DILocation(line: 0, scope: !317)
!321 = !{!"99"}
!322 = !DILocalVariable(name: "Glen", arg: 2, scope: !317, file: !3, line: 1635, type: !75)
!323 = !{!"100"}
!324 = !DILocalVariable(name: "k", arg: 3, scope: !317, file: !3, line: 1636, type: !73)
!325 = !{!"101"}
!326 = !DILocalVariable(name: "klen", arg: 4, scope: !317, file: !3, line: 1636, type: !75)
!327 = !{!"102"}
!328 = !DILocalVariable(name: "curve", arg: 5, scope: !317, file: !3, line: 1636, type: !10)
!329 = !{!"103"}
!330 = !DILocalVariable(name: "P", scope: !317, file: !3, line: 1639, type: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "p256_jacobian", file: !3, line: 616, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 612, size: 960, elements: !333)
!333 = !{!334, !335, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !332, file: !3, line: 613, baseType: !59, size: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !332, file: !3, line: 614, baseType: !59, size: 320, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !332, file: !3, line: 615, baseType: !59, size: 320, offset: 640)
!337 = !DILocation(line: 1639, column: 16, scope: !317)
!338 = !{!"104"}
!339 = !DILocation(line: 1642, column: 11, scope: !340)
!340 = distinct !DILexicalBlock(scope: !317, file: !3, line: 1642, column: 6)
!341 = !{!"105"}
!342 = !DILocation(line: 1642, column: 6, scope: !317)
!343 = !{!"106"}
!344 = !DILocation(line: 1643, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !340, file: !3, line: 1642, column: 18)
!346 = !{!"107"}
!347 = !DILocation(line: 1645, column: 6, scope: !317)
!348 = !{!"108"}
!349 = !DILocalVariable(name: "r", scope: !317, file: !3, line: 1638, type: !11)
!350 = !{!"109"}
!351 = !DILocation(line: 1646, column: 7, scope: !317)
!352 = !{!"110"}
!353 = !DILocation(line: 1646, column: 4, scope: !317)
!354 = !{!"111"}
!355 = !{!"112"}
!356 = !DILocation(line: 1647, column: 2, scope: !317)
!357 = !{!"113"}
!358 = !DILocation(line: 1648, column: 7, scope: !317)
!359 = !{!"114"}
!360 = !DILocation(line: 1648, column: 4, scope: !317)
!361 = !{!"115"}
!362 = !{!"116"}
!363 = !DILocation(line: 1649, column: 2, scope: !317)
!364 = !{!"117"}
!365 = !{!"118"}
!366 = !DILocation(line: 1650, column: 1, scope: !317)
!367 = !{!"119"}
!368 = distinct !DISubprogram(name: "api_mulgen", scope: !3, file: !3, line: 1653, type: !89, scopeLine: 1655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!369 = !{!"120"}
!370 = !DILocalVariable(name: "R", arg: 1, scope: !368, file: !3, line: 1653, type: !86)
!371 = !DILocation(line: 0, scope: !368)
!372 = !{!"121"}
!373 = !DILocalVariable(name: "k", arg: 2, scope: !368, file: !3, line: 1654, type: !73)
!374 = !{!"122"}
!375 = !DILocalVariable(name: "klen", arg: 3, scope: !368, file: !3, line: 1654, type: !75)
!376 = !{!"123"}
!377 = !DILocalVariable(name: "curve", arg: 4, scope: !368, file: !3, line: 1654, type: !10)
!378 = !{!"124"}
!379 = !DILocalVariable(name: "P", scope: !368, file: !3, line: 1656, type: !331)
!380 = !DILocation(line: 1656, column: 16, scope: !368)
!381 = !{!"125"}
!382 = !DILocation(line: 1659, column: 2, scope: !368)
!383 = !{!"126"}
!384 = !DILocation(line: 1660, column: 2, scope: !368)
!385 = !{!"127"}
!386 = !DILocation(line: 1661, column: 2, scope: !368)
!387 = !{!"128"}
!388 = distinct !DISubprogram(name: "api_muladd", scope: !3, file: !3, line: 1665, type: !93, scopeLine: 1668, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!389 = !{!"129"}
!390 = !{!"130"}
!391 = !DILocalVariable(name: "A", arg: 1, scope: !388, file: !3, line: 1665, type: !86)
!392 = !DILocation(line: 0, scope: !388)
!393 = !{!"131"}
!394 = !DILocalVariable(name: "B", arg: 2, scope: !388, file: !3, line: 1665, type: !73)
!395 = !{!"132"}
!396 = !DILocalVariable(name: "len", arg: 3, scope: !388, file: !3, line: 1665, type: !75)
!397 = !{!"133"}
!398 = !DILocalVariable(name: "x", arg: 4, scope: !388, file: !3, line: 1666, type: !73)
!399 = !{!"134"}
!400 = !DILocalVariable(name: "xlen", arg: 5, scope: !388, file: !3, line: 1666, type: !75)
!401 = !{!"135"}
!402 = !DILocalVariable(name: "y", arg: 6, scope: !388, file: !3, line: 1667, type: !73)
!403 = !{!"136"}
!404 = !DILocalVariable(name: "ylen", arg: 7, scope: !388, file: !3, line: 1667, type: !75)
!405 = !{!"137"}
!406 = !DILocalVariable(name: "curve", arg: 8, scope: !388, file: !3, line: 1667, type: !10)
!407 = !{!"138"}
!408 = !DILocalVariable(name: "P", scope: !388, file: !3, line: 1697, type: !331)
!409 = !DILocation(line: 1697, column: 16, scope: !388)
!410 = !{!"139"}
!411 = !DILocalVariable(name: "Q", scope: !388, file: !3, line: 1697, type: !331)
!412 = !DILocation(line: 1697, column: 19, scope: !388)
!413 = !{!"140"}
!414 = !DILocation(line: 1702, column: 10, scope: !415)
!415 = distinct !DILexicalBlock(scope: !388, file: !3, line: 1702, column: 6)
!416 = !{!"141"}
!417 = !DILocation(line: 1702, column: 6, scope: !388)
!418 = !{!"142"}
!419 = !DILocation(line: 1703, column: 3, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !3, line: 1702, column: 17)
!421 = !{!"143"}
!422 = !DILocation(line: 1705, column: 6, scope: !388)
!423 = !{!"144"}
!424 = !DILocalVariable(name: "r", scope: !388, file: !3, line: 1698, type: !11)
!425 = !{!"145"}
!426 = !DILocation(line: 1706, column: 2, scope: !388)
!427 = !{!"146"}
!428 = !DILocation(line: 1707, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !388, file: !3, line: 1707, column: 6)
!430 = !{!"147"}
!431 = !DILocation(line: 1707, column: 6, scope: !388)
!432 = !{!"148"}
!433 = !DILocation(line: 1708, column: 3, scope: !434)
!434 = distinct !DILexicalBlock(scope: !429, file: !3, line: 1707, column: 17)
!435 = !{!"149"}
!436 = !DILocation(line: 1709, column: 2, scope: !434)
!437 = !{!"150"}
!438 = !DILocation(line: 1710, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !429, file: !3, line: 1709, column: 9)
!440 = !{!"151"}
!441 = !DILocation(line: 1710, column: 5, scope: !439)
!442 = !{!"152"}
!443 = !{!"153"}
!444 = !DILocation(line: 1711, column: 3, scope: !439)
!445 = !{!"154"}
!446 = !{!"155"}
!447 = !{!"156"}
!448 = !{!"157"}
!449 = !DILocation(line: 1717, column: 6, scope: !388)
!450 = !{!"158"}
!451 = !DILocalVariable(name: "t", scope: !388, file: !3, line: 1698, type: !11)
!452 = !{!"159"}
!453 = !DILocation(line: 1718, column: 22, scope: !388)
!454 = !{!"160"}
!455 = !DILocation(line: 1718, column: 20, scope: !388)
!456 = !{!"161"}
!457 = !DILocation(line: 1718, column: 2, scope: !388)
!458 = !{!"162"}
!459 = !DILocation(line: 1719, column: 8, scope: !388)
!460 = !{!"163"}
!461 = !DILocation(line: 1719, column: 6, scope: !388)
!462 = !{!"164"}
!463 = !{!"165"}
!464 = !DILocation(line: 1719, column: 17, scope: !388)
!465 = !{!"166"}
!466 = !DILocation(line: 1719, column: 15, scope: !388)
!467 = !{!"167"}
!468 = !{!"168"}
!469 = !DILocation(line: 1719, column: 13, scope: !388)
!470 = !{!"169"}
!471 = !DILocation(line: 1719, column: 26, scope: !388)
!472 = !{!"170"}
!473 = !DILocation(line: 1719, column: 24, scope: !388)
!474 = !{!"171"}
!475 = !{!"172"}
!476 = !DILocation(line: 1719, column: 22, scope: !388)
!477 = !{!"173"}
!478 = !DILocation(line: 1719, column: 35, scope: !388)
!479 = !{!"174"}
!480 = !DILocation(line: 1719, column: 33, scope: !388)
!481 = !{!"175"}
!482 = !{!"176"}
!483 = !DILocation(line: 1719, column: 31, scope: !388)
!484 = !{!"177"}
!485 = !DILocation(line: 1719, column: 44, scope: !388)
!486 = !{!"178"}
!487 = !DILocation(line: 1719, column: 42, scope: !388)
!488 = !{!"179"}
!489 = !{!"180"}
!490 = !DILocation(line: 1719, column: 40, scope: !388)
!491 = !{!"181"}
!492 = !DILocalVariable(name: "z", scope: !388, file: !3, line: 1699, type: !15)
!493 = !{!"182"}
!494 = !DILocation(line: 1720, column: 27, scope: !388)
!495 = !{!"183"}
!496 = !DILocation(line: 1720, column: 22, scope: !388)
!497 = !{!"184"}
!498 = !DILocation(line: 1720, column: 9, scope: !388)
!499 = !{!"185"}
!500 = !DILocation(line: 1720, column: 6, scope: !388)
!501 = !{!"186"}
!502 = !DILocalVariable(name: "s", scope: !388, file: !3, line: 1698, type: !11)
!503 = !{!"187"}
!504 = !DILocation(line: 1721, column: 2, scope: !388)
!505 = !{!"188"}
!506 = !DILocation(line: 1732, column: 12, scope: !388)
!507 = !{!"189"}
!508 = !DILocation(line: 1732, column: 10, scope: !388)
!509 = !{!"190"}
!510 = !DILocation(line: 1732, column: 16, scope: !388)
!511 = !{!"191"}
!512 = !DILocation(line: 1732, column: 20, scope: !388)
!513 = !{!"192"}
!514 = !DILocation(line: 1732, column: 2, scope: !388)
!515 = !{!"193"}
!516 = !DILocation(line: 1733, column: 2, scope: !388)
!517 = !{!"194"}
!518 = !DILocation(line: 1734, column: 11, scope: !388)
!519 = !{!"195"}
!520 = !DILocation(line: 1734, column: 7, scope: !388)
!521 = !{!"196"}
!522 = !DILocation(line: 1734, column: 4, scope: !388)
!523 = !{!"197"}
!524 = !{!"198"}
!525 = !DILocation(line: 1735, column: 2, scope: !388)
!526 = !{!"199"}
!527 = !{!"200"}
!528 = !DILocation(line: 1736, column: 1, scope: !388)
!529 = !{!"201"}
!530 = distinct !DISubprogram(name: "point_decode", scope: !3, file: !3, line: 665, type: !531, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!531 = !DISubroutineType(types: !532)
!532 = !{!11, !533, !73}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!534 = !{!"202"}
!535 = !{!"203"}
!536 = !{!"204"}
!537 = !{!"205"}
!538 = !DILocalVariable(name: "P", arg: 1, scope: !530, file: !3, line: 665, type: !533)
!539 = !DILocation(line: 0, scope: !530)
!540 = !{!"206"}
!541 = !DILocalVariable(name: "buf", arg: 2, scope: !530, file: !3, line: 665, type: !73)
!542 = !{!"207"}
!543 = !DILocalVariable(name: "x", scope: !530, file: !3, line: 667, type: !59)
!544 = !DILocation(line: 667, column: 11, scope: !530)
!545 = !{!"208"}
!546 = !DILocalVariable(name: "y", scope: !530, file: !3, line: 667, type: !59)
!547 = !DILocation(line: 667, column: 17, scope: !530)
!548 = !{!"209"}
!549 = !DILocalVariable(name: "t", scope: !530, file: !3, line: 667, type: !59)
!550 = !DILocation(line: 667, column: 23, scope: !530)
!551 = !{!"210"}
!552 = !DILocalVariable(name: "x3", scope: !530, file: !3, line: 667, type: !59)
!553 = !DILocation(line: 667, column: 29, scope: !530)
!554 = !{!"211"}
!555 = !DILocation(line: 673, column: 9, scope: !530)
!556 = !{!"212"}
!557 = !{!"213"}
!558 = !{!"214"}
!559 = !DILocation(line: 673, column: 6, scope: !530)
!560 = !{!"215"}
!561 = !DILocalVariable(name: "r", scope: !530, file: !3, line: 668, type: !11)
!562 = !{!"216"}
!563 = !DILocation(line: 679, column: 14, scope: !530)
!564 = !{!"217"}
!565 = !DILocation(line: 679, column: 21, scope: !530)
!566 = !{!"218"}
!567 = !DILocation(line: 679, column: 2, scope: !530)
!568 = !{!"219"}
!569 = !DILocation(line: 680, column: 14, scope: !530)
!570 = !{!"220"}
!571 = !DILocation(line: 680, column: 21, scope: !530)
!572 = !{!"221"}
!573 = !DILocation(line: 680, column: 2, scope: !530)
!574 = !{!"222"}
!575 = !DILocation(line: 681, column: 15, scope: !530)
!576 = !{!"223"}
!577 = !DILocation(line: 681, column: 18, scope: !530)
!578 = !{!"224"}
!579 = !DILocation(line: 681, column: 2, scope: !530)
!580 = !{!"225"}
!581 = !DILocation(line: 682, column: 15, scope: !530)
!582 = !{!"226"}
!583 = !DILocation(line: 682, column: 18, scope: !530)
!584 = !{!"227"}
!585 = !DILocation(line: 682, column: 2, scope: !530)
!586 = !{!"228"}
!587 = !DILocation(line: 690, column: 19, scope: !530)
!588 = !{!"229"}
!589 = !DILocation(line: 690, column: 22, scope: !530)
!590 = !{!"230"}
!591 = !DILocation(line: 690, column: 2, scope: !530)
!592 = !{!"231"}
!593 = !DILocation(line: 691, column: 19, scope: !530)
!594 = !{!"232"}
!595 = !DILocation(line: 691, column: 23, scope: !530)
!596 = !{!"233"}
!597 = !DILocation(line: 691, column: 2, scope: !530)
!598 = !{!"234"}
!599 = !DILocation(line: 692, column: 16, scope: !530)
!600 = !{!"235"}
!601 = !DILocation(line: 692, column: 20, scope: !530)
!602 = !{!"236"}
!603 = !DILocation(line: 692, column: 24, scope: !530)
!604 = !{!"237"}
!605 = !DILocation(line: 692, column: 2, scope: !530)
!606 = !{!"238"}
!607 = !DILocation(line: 693, column: 11, scope: !530)
!608 = !{!"239"}
!609 = !DILocation(line: 693, column: 14, scope: !530)
!610 = !{!"240"}
!611 = !DILocation(line: 693, column: 17, scope: !530)
!612 = !{!"241"}
!613 = !DILocation(line: 693, column: 2, scope: !530)
!614 = !{!"242"}
!615 = !DILocation(line: 694, column: 11, scope: !530)
!616 = !{!"243"}
!617 = !DILocation(line: 694, column: 14, scope: !530)
!618 = !{!"244"}
!619 = !DILocation(line: 694, column: 17, scope: !530)
!620 = !{!"245"}
!621 = !DILocation(line: 694, column: 2, scope: !530)
!622 = !{!"246"}
!623 = !DILocation(line: 695, column: 11, scope: !530)
!624 = !{!"247"}
!625 = !DILocation(line: 695, column: 14, scope: !530)
!626 = !{!"248"}
!627 = !DILocation(line: 695, column: 17, scope: !530)
!628 = !{!"249"}
!629 = !DILocation(line: 695, column: 2, scope: !530)
!630 = !{!"250"}
!631 = !DILocation(line: 696, column: 11, scope: !530)
!632 = !{!"251"}
!633 = !DILocation(line: 696, column: 14, scope: !530)
!634 = !{!"252"}
!635 = !DILocation(line: 696, column: 17, scope: !530)
!636 = !{!"253"}
!637 = !DILocation(line: 696, column: 2, scope: !530)
!638 = !{!"254"}
!639 = !DILocation(line: 697, column: 11, scope: !530)
!640 = !{!"255"}
!641 = !DILocation(line: 697, column: 14, scope: !530)
!642 = !{!"256"}
!643 = !{!"257"}
!644 = !DILocation(line: 697, column: 2, scope: !530)
!645 = !{!"258"}
!646 = !DILocation(line: 698, column: 20, scope: !530)
!647 = !{!"259"}
!648 = !DILocation(line: 698, column: 2, scope: !530)
!649 = !{!"260"}
!650 = !DILocation(line: 699, column: 7, scope: !530)
!651 = !{!"261"}
!652 = !{!"262"}
!653 = !DILocation(line: 699, column: 14, scope: !530)
!654 = !{!"263"}
!655 = !{!"264"}
!656 = !DILocation(line: 699, column: 12, scope: !530)
!657 = !{!"265"}
!658 = !DILocation(line: 699, column: 21, scope: !530)
!659 = !{!"266"}
!660 = !{!"267"}
!661 = !DILocation(line: 699, column: 19, scope: !530)
!662 = !{!"268"}
!663 = !DILocation(line: 699, column: 28, scope: !530)
!664 = !{!"269"}
!665 = !{!"270"}
!666 = !DILocation(line: 699, column: 26, scope: !530)
!667 = !{!"271"}
!668 = !DILocation(line: 699, column: 35, scope: !530)
!669 = !{!"272"}
!670 = !{!"273"}
!671 = !DILocation(line: 699, column: 33, scope: !530)
!672 = !{!"274"}
!673 = !DILocalVariable(name: "tt", scope: !530, file: !3, line: 667, type: !15)
!674 = !{!"275"}
!675 = !DILocation(line: 700, column: 30, scope: !530)
!676 = !{!"276"}
!677 = !DILocation(line: 700, column: 24, scope: !530)
!678 = !{!"277"}
!679 = !DILocation(line: 700, column: 10, scope: !530)
!680 = !{!"278"}
!681 = !DILocation(line: 700, column: 7, scope: !530)
!682 = !{!"279"}
!683 = !DILocation(line: 700, column: 4, scope: !530)
!684 = !{!"280"}
!685 = !{!"281"}
!686 = !DILocation(line: 706, column: 12, scope: !530)
!687 = !{!"282"}
!688 = !DILocation(line: 706, column: 2, scope: !530)
!689 = !{!"283"}
!690 = !{!"284"}
!691 = !{!"285"}
!692 = !{!"286"}
!693 = !{!"287"}
!694 = !DILocation(line: 707, column: 12, scope: !530)
!695 = !{!"288"}
!696 = !DILocation(line: 707, column: 2, scope: !530)
!697 = !{!"289"}
!698 = !{!"290"}
!699 = !{!"291"}
!700 = !{!"292"}
!701 = !{!"293"}
!702 = !DILocation(line: 708, column: 12, scope: !530)
!703 = !{!"294"}
!704 = !DILocation(line: 708, column: 2, scope: !530)
!705 = !{!"295"}
!706 = !{!"296"}
!707 = !{!"297"}
!708 = !DILocation(line: 709, column: 2, scope: !530)
!709 = !{!"298"}
!710 = distinct !DISubprogram(name: "p256_mul", scope: !3, file: !3, line: 1455, type: !711, scopeLine: 1456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !533, !73, !75}
!713 = !{!"299"}
!714 = !DILocalVariable(name: "P", arg: 1, scope: !710, file: !3, line: 1455, type: !533)
!715 = !DILocation(line: 0, scope: !710)
!716 = !{!"300"}
!717 = !DILocalVariable(name: "k", arg: 2, scope: !710, file: !3, line: 1455, type: !73)
!718 = !{!"301"}
!719 = !DILocalVariable(name: "klen", arg: 3, scope: !710, file: !3, line: 1455, type: !75)
!720 = !{!"302"}
!721 = !DILocalVariable(name: "window", scope: !710, file: !3, line: 1460, type: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !3, line: 1457, size: 14400, elements: !723)
!723 = !{!724, !726}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "aff", scope: !722, file: !3, line: 1458, baseType: !725, size: 9600)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 9600, elements: !61)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "jac", scope: !722, file: !3, line: 1459, baseType: !727, size: 14400)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 14400, elements: !61)
!728 = !DILocation(line: 1460, column: 4, scope: !710)
!729 = !{!"303"}
!730 = !DILocation(line: 1466, column: 9, scope: !710)
!731 = !{!"304"}
!732 = !DILocation(line: 1466, column: 2, scope: !710)
!733 = !{!"305"}
!734 = !DILocation(line: 1466, column: 18, scope: !710)
!735 = !{!"306"}
!736 = !{!"307"}
!737 = !{!"308"}
!738 = !DILocalVariable(name: "i", scope: !710, file: !3, line: 1461, type: !10)
!739 = !{!"309"}
!740 = !DILocation(line: 1467, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !710, file: !3, line: 1467, column: 2)
!742 = !{!"310"}
!743 = !DILocation(line: 0, scope: !741)
!744 = !{!"311"}
!745 = !{!"312"}
!746 = !DILocation(line: 1467, column: 16, scope: !747)
!747 = distinct !DILexicalBlock(scope: !741, file: !3, line: 1467, column: 2)
!748 = !{!"313"}
!749 = !DILocation(line: 1467, column: 2, scope: !741)
!750 = !{!"314"}
!751 = !DILocation(line: 1468, column: 10, scope: !752)
!752 = distinct !DILexicalBlock(scope: !747, file: !3, line: 1467, column: 28)
!753 = !{!"315"}
!754 = !DILocation(line: 1468, column: 16, scope: !752)
!755 = !{!"316"}
!756 = !DILocation(line: 1468, column: 3, scope: !752)
!757 = !{!"317"}
!758 = !{!"318"}
!759 = !DILocation(line: 1468, column: 30, scope: !752)
!760 = !{!"319"}
!761 = !DILocation(line: 1468, column: 37, scope: !752)
!762 = !{!"320"}
!763 = !DILocation(line: 1468, column: 43, scope: !752)
!764 = !{!"321"}
!765 = !DILocation(line: 1468, column: 23, scope: !752)
!766 = !{!"322"}
!767 = !{!"323"}
!768 = !{!"324"}
!769 = !{!"325"}
!770 = !{!"326"}
!771 = !DILocation(line: 1469, column: 10, scope: !772)
!772 = distinct !DILexicalBlock(scope: !752, file: !3, line: 1469, column: 7)
!773 = !{!"327"}
!774 = !DILocation(line: 1469, column: 15, scope: !772)
!775 = !{!"328"}
!776 = !DILocation(line: 1469, column: 7, scope: !752)
!777 = !{!"329"}
!778 = !DILocation(line: 1470, column: 24, scope: !779)
!779 = distinct !DILexicalBlock(scope: !772, file: !3, line: 1469, column: 21)
!780 = !{!"330"}
!781 = !DILocation(line: 1470, column: 30, scope: !779)
!782 = !{!"331"}
!783 = !DILocation(line: 1470, column: 17, scope: !779)
!784 = !{!"332"}
!785 = !{!"333"}
!786 = !DILocation(line: 1470, column: 4, scope: !779)
!787 = !{!"334"}
!788 = !DILocation(line: 1471, column: 3, scope: !779)
!789 = !{!"335"}
!790 = !DILocation(line: 1472, column: 21, scope: !791)
!791 = distinct !DILexicalBlock(scope: !772, file: !3, line: 1471, column: 10)
!792 = !{!"336"}
!793 = !DILocation(line: 1472, column: 27, scope: !791)
!794 = !{!"337"}
!795 = !DILocation(line: 1472, column: 14, scope: !791)
!796 = !{!"338"}
!797 = !{!"339"}
!798 = !DILocation(line: 1472, column: 41, scope: !791)
!799 = !{!"340"}
!800 = !DILocation(line: 1472, column: 47, scope: !791)
!801 = !{!"341"}
!802 = !DILocation(line: 1472, column: 34, scope: !791)
!803 = !{!"342"}
!804 = !{!"343"}
!805 = !DILocation(line: 1472, column: 4, scope: !791)
!806 = !{!"344"}
!807 = !{!"345"}
!808 = !DILocation(line: 1474, column: 2, scope: !752)
!809 = !{!"346"}
!810 = !DILocation(line: 1467, column: 24, scope: !747)
!811 = !{!"347"}
!812 = !{!"348"}
!813 = !DILocation(line: 1467, column: 2, scope: !747)
!814 = distinct !{!814, !749, !815, !260}
!815 = !DILocation(line: 1474, column: 2, scope: !741)
!816 = !{!"349"}
!817 = !DILocation(line: 1480, column: 26, scope: !710)
!818 = !{!"350"}
!819 = !DILocation(line: 1480, column: 19, scope: !710)
!820 = !{!"351"}
!821 = !DILocation(line: 1480, column: 38, scope: !710)
!822 = !{!"352"}
!823 = !DILocation(line: 1480, column: 31, scope: !710)
!824 = !{!"353"}
!825 = !DILocation(line: 1480, column: 2, scope: !710)
!826 = !{!"354"}
!827 = !DILocation(line: 1485, column: 28, scope: !710)
!828 = !{!"355"}
!829 = !DILocation(line: 1485, column: 21, scope: !710)
!830 = !{!"356"}
!831 = !DILocation(line: 1485, column: 2, scope: !710)
!832 = !{!"357"}
!833 = !DILocation(line: 1486, column: 1, scope: !710)
!834 = !{!"358"}
!835 = distinct !DISubprogram(name: "p256_mulgen", scope: !3, file: !3, line: 1595, type: !711, scopeLine: 1596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!836 = !DILocalVariable(name: "P", arg: 1, scope: !835, file: !3, line: 1595, type: !533)
!837 = !DILocation(line: 0, scope: !835)
!838 = !{!"359"}
!839 = !DILocalVariable(name: "k", arg: 2, scope: !835, file: !3, line: 1595, type: !73)
!840 = !{!"360"}
!841 = !DILocalVariable(name: "klen", arg: 3, scope: !835, file: !3, line: 1595, type: !75)
!842 = !{!"361"}
!843 = !{!"362"}
!844 = !DILocation(line: 1597, column: 2, scope: !835)
!845 = !{!"363"}
!846 = !DILocation(line: 1598, column: 1, scope: !835)
!847 = !{!"364"}
!848 = distinct !DISubprogram(name: "p256_add", scope: !3, file: !3, line: 864, type: !849, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!849 = !DISubroutineType(types: !850)
!850 = !{!11, !533, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!853 = !{!"365"}
!854 = !{!"366"}
!855 = !{!"367"}
!856 = !{!"368"}
!857 = !{!"369"}
!858 = !{!"370"}
!859 = !{!"371"}
!860 = !DILocalVariable(name: "P1", arg: 1, scope: !848, file: !3, line: 864, type: !533)
!861 = !DILocation(line: 0, scope: !848)
!862 = !{!"372"}
!863 = !DILocalVariable(name: "P2", arg: 2, scope: !848, file: !3, line: 864, type: !851)
!864 = !{!"373"}
!865 = !DILocalVariable(name: "t1", scope: !848, file: !3, line: 879, type: !59)
!866 = !DILocation(line: 879, column: 11, scope: !848)
!867 = !{!"374"}
!868 = !DILocalVariable(name: "t2", scope: !848, file: !3, line: 879, type: !59)
!869 = !DILocation(line: 879, column: 18, scope: !848)
!870 = !{!"375"}
!871 = !DILocalVariable(name: "t3", scope: !848, file: !3, line: 879, type: !59)
!872 = !DILocation(line: 879, column: 25, scope: !848)
!873 = !{!"376"}
!874 = !DILocalVariable(name: "t4", scope: !848, file: !3, line: 879, type: !59)
!875 = !DILocation(line: 879, column: 32, scope: !848)
!876 = !{!"377"}
!877 = !DILocalVariable(name: "t5", scope: !848, file: !3, line: 879, type: !59)
!878 = !DILocation(line: 879, column: 39, scope: !848)
!879 = !{!"378"}
!880 = !DILocalVariable(name: "t6", scope: !848, file: !3, line: 879, type: !59)
!881 = !DILocation(line: 879, column: 46, scope: !848)
!882 = !{!"379"}
!883 = !DILocalVariable(name: "t7", scope: !848, file: !3, line: 879, type: !59)
!884 = !DILocation(line: 879, column: 53, scope: !848)
!885 = !{!"380"}
!886 = !DILocation(line: 885, column: 19, scope: !848)
!887 = !{!"381"}
!888 = !DILocation(line: 885, column: 27, scope: !848)
!889 = !{!"382"}
!890 = !DILocation(line: 885, column: 23, scope: !848)
!891 = !{!"383"}
!892 = !DILocation(line: 885, column: 2, scope: !848)
!893 = !{!"384"}
!894 = !DILocation(line: 886, column: 16, scope: !848)
!895 = !{!"385"}
!896 = !DILocation(line: 886, column: 24, scope: !848)
!897 = !{!"386"}
!898 = !DILocation(line: 886, column: 20, scope: !848)
!899 = !{!"387"}
!900 = !DILocation(line: 886, column: 27, scope: !848)
!901 = !{!"388"}
!902 = !DILocation(line: 886, column: 2, scope: !848)
!903 = !{!"389"}
!904 = !DILocation(line: 887, column: 16, scope: !848)
!905 = !{!"390"}
!906 = !DILocation(line: 887, column: 24, scope: !848)
!907 = !{!"391"}
!908 = !DILocation(line: 887, column: 20, scope: !848)
!909 = !{!"392"}
!910 = !DILocation(line: 887, column: 27, scope: !848)
!911 = !{!"393"}
!912 = !DILocation(line: 887, column: 2, scope: !848)
!913 = !{!"394"}
!914 = !DILocation(line: 888, column: 16, scope: !848)
!915 = !{!"395"}
!916 = !DILocation(line: 888, column: 24, scope: !848)
!917 = !{!"396"}
!918 = !DILocation(line: 888, column: 20, scope: !848)
!919 = !{!"397"}
!920 = !DILocation(line: 888, column: 27, scope: !848)
!921 = !{!"398"}
!922 = !DILocation(line: 888, column: 2, scope: !848)
!923 = !{!"399"}
!924 = !DILocation(line: 893, column: 19, scope: !848)
!925 = !{!"400"}
!926 = !DILocation(line: 893, column: 27, scope: !848)
!927 = !{!"401"}
!928 = !DILocation(line: 893, column: 23, scope: !848)
!929 = !{!"402"}
!930 = !DILocation(line: 893, column: 2, scope: !848)
!931 = !{!"403"}
!932 = !DILocation(line: 894, column: 16, scope: !848)
!933 = !{!"404"}
!934 = !DILocation(line: 894, column: 24, scope: !848)
!935 = !{!"405"}
!936 = !DILocation(line: 894, column: 20, scope: !848)
!937 = !{!"406"}
!938 = !DILocation(line: 894, column: 27, scope: !848)
!939 = !{!"407"}
!940 = !DILocation(line: 894, column: 2, scope: !848)
!941 = !{!"408"}
!942 = !DILocation(line: 895, column: 16, scope: !848)
!943 = !{!"409"}
!944 = !DILocation(line: 895, column: 24, scope: !848)
!945 = !{!"410"}
!946 = !DILocation(line: 895, column: 20, scope: !848)
!947 = !{!"411"}
!948 = !DILocation(line: 895, column: 27, scope: !848)
!949 = !{!"412"}
!950 = !DILocation(line: 895, column: 2, scope: !848)
!951 = !{!"413"}
!952 = !DILocation(line: 896, column: 16, scope: !848)
!953 = !{!"414"}
!954 = !DILocation(line: 896, column: 24, scope: !848)
!955 = !{!"415"}
!956 = !DILocation(line: 896, column: 20, scope: !848)
!957 = !{!"416"}
!958 = !DILocation(line: 896, column: 27, scope: !848)
!959 = !{!"417"}
!960 = !DILocation(line: 896, column: 2, scope: !848)
!961 = !{!"418"}
!962 = !DILocation(line: 903, column: 11, scope: !848)
!963 = !{!"419"}
!964 = !DILocation(line: 903, column: 15, scope: !848)
!965 = !{!"420"}
!966 = !DILocation(line: 903, column: 19, scope: !848)
!967 = !{!"421"}
!968 = !DILocation(line: 903, column: 2, scope: !848)
!969 = !{!"422"}
!970 = !DILocation(line: 904, column: 11, scope: !848)
!971 = !{!"423"}
!972 = !DILocation(line: 904, column: 15, scope: !848)
!973 = !{!"424"}
!974 = !DILocation(line: 904, column: 19, scope: !848)
!975 = !{!"425"}
!976 = !DILocation(line: 904, column: 2, scope: !848)
!977 = !{!"426"}
!978 = !DILocation(line: 905, column: 20, scope: !848)
!979 = !{!"427"}
!980 = !DILocation(line: 905, column: 2, scope: !848)
!981 = !{!"428"}
!982 = !DILocation(line: 906, column: 7, scope: !848)
!983 = !{!"429"}
!984 = !{!"430"}
!985 = !DILocation(line: 906, column: 15, scope: !848)
!986 = !{!"431"}
!987 = !{!"432"}
!988 = !DILocation(line: 906, column: 13, scope: !848)
!989 = !{!"433"}
!990 = !DILocation(line: 906, column: 23, scope: !848)
!991 = !{!"434"}
!992 = !{!"435"}
!993 = !DILocation(line: 906, column: 21, scope: !848)
!994 = !{!"436"}
!995 = !DILocation(line: 906, column: 31, scope: !848)
!996 = !{!"437"}
!997 = !{!"438"}
!998 = !DILocation(line: 906, column: 29, scope: !848)
!999 = !{!"439"}
!1000 = !DILocation(line: 906, column: 39, scope: !848)
!1001 = !{!"440"}
!1002 = !{!"441"}
!1003 = !DILocation(line: 906, column: 37, scope: !848)
!1004 = !{!"442"}
!1005 = !DILocalVariable(name: "tt", scope: !848, file: !3, line: 879, type: !15)
!1006 = !{!"443"}
!1007 = !DILocation(line: 907, column: 28, scope: !848)
!1008 = !{!"444"}
!1009 = !DILocation(line: 907, column: 22, scope: !848)
!1010 = !{!"445"}
!1011 = !DILocation(line: 907, column: 8, scope: !848)
!1012 = !{!"446"}
!1013 = !DILocalVariable(name: "ret", scope: !848, file: !3, line: 880, type: !11)
!1014 = !{!"447"}
!1015 = !DILocation(line: 908, column: 15, scope: !848)
!1016 = !{!"448"}
!1017 = !DILocation(line: 908, column: 13, scope: !848)
!1018 = !{!"449"}
!1019 = !DILocation(line: 908, column: 21, scope: !848)
!1020 = !{!"450"}
!1021 = !{!"451"}
!1022 = !DILocation(line: 913, column: 19, scope: !848)
!1023 = !{!"452"}
!1024 = !DILocation(line: 913, column: 23, scope: !848)
!1025 = !{!"453"}
!1026 = !DILocation(line: 913, column: 2, scope: !848)
!1027 = !{!"454"}
!1028 = !DILocation(line: 914, column: 16, scope: !848)
!1029 = !{!"455"}
!1030 = !DILocation(line: 914, column: 20, scope: !848)
!1031 = !{!"456"}
!1032 = !DILocation(line: 914, column: 24, scope: !848)
!1033 = !{!"457"}
!1034 = !DILocation(line: 914, column: 2, scope: !848)
!1035 = !{!"458"}
!1036 = !DILocation(line: 915, column: 16, scope: !848)
!1037 = !{!"459"}
!1038 = !DILocation(line: 915, column: 20, scope: !848)
!1039 = !{!"460"}
!1040 = !DILocation(line: 915, column: 24, scope: !848)
!1041 = !{!"461"}
!1042 = !DILocation(line: 915, column: 2, scope: !848)
!1043 = !{!"462"}
!1044 = !DILocation(line: 920, column: 23, scope: !848)
!1045 = !{!"463"}
!1046 = !DILocation(line: 920, column: 19, scope: !848)
!1047 = !{!"464"}
!1048 = !DILocation(line: 920, column: 26, scope: !848)
!1049 = !{!"465"}
!1050 = !DILocation(line: 920, column: 2, scope: !848)
!1051 = !{!"466"}
!1052 = !DILocation(line: 921, column: 15, scope: !848)
!1053 = !{!"467"}
!1054 = !DILocation(line: 921, column: 11, scope: !848)
!1055 = !{!"468"}
!1056 = !DILocation(line: 921, column: 22, scope: !848)
!1057 = !{!"469"}
!1058 = !DILocation(line: 921, column: 18, scope: !848)
!1059 = !{!"470"}
!1060 = !DILocation(line: 921, column: 25, scope: !848)
!1061 = !{!"471"}
!1062 = !DILocation(line: 921, column: 2, scope: !848)
!1063 = !{!"472"}
!1064 = !DILocation(line: 922, column: 15, scope: !848)
!1065 = !{!"473"}
!1066 = !DILocation(line: 922, column: 11, scope: !848)
!1067 = !{!"474"}
!1068 = !DILocation(line: 922, column: 22, scope: !848)
!1069 = !{!"475"}
!1070 = !DILocation(line: 922, column: 18, scope: !848)
!1071 = !{!"476"}
!1072 = !DILocation(line: 922, column: 25, scope: !848)
!1073 = !{!"477"}
!1074 = !DILocation(line: 922, column: 2, scope: !848)
!1075 = !{!"478"}
!1076 = !DILocation(line: 923, column: 15, scope: !848)
!1077 = !{!"479"}
!1078 = !DILocation(line: 923, column: 11, scope: !848)
!1079 = !{!"480"}
!1080 = !DILocation(line: 923, column: 22, scope: !848)
!1081 = !{!"481"}
!1082 = !DILocation(line: 923, column: 18, scope: !848)
!1083 = !{!"482"}
!1084 = !DILocation(line: 923, column: 25, scope: !848)
!1085 = !{!"483"}
!1086 = !DILocation(line: 923, column: 2, scope: !848)
!1087 = !{!"484"}
!1088 = !DILocation(line: 928, column: 11, scope: !848)
!1089 = !{!"485"}
!1090 = !DILocation(line: 928, column: 15, scope: !848)
!1091 = !{!"486"}
!1092 = !DILocation(line: 928, column: 23, scope: !848)
!1093 = !{!"487"}
!1094 = !DILocation(line: 928, column: 19, scope: !848)
!1095 = !{!"488"}
!1096 = !DILocation(line: 928, column: 2, scope: !848)
!1097 = !{!"489"}
!1098 = !DILocation(line: 929, column: 20, scope: !848)
!1099 = !{!"490"}
!1100 = !DILocation(line: 929, column: 16, scope: !848)
!1101 = !{!"491"}
!1102 = !DILocation(line: 929, column: 23, scope: !848)
!1103 = !{!"492"}
!1104 = !DILocation(line: 929, column: 27, scope: !848)
!1105 = !{!"493"}
!1106 = !DILocation(line: 929, column: 2, scope: !848)
!1107 = !{!"494"}
!1108 = !DILocation(line: 930, column: 16, scope: !848)
!1109 = !{!"495"}
!1110 = !DILocation(line: 930, column: 20, scope: !848)
!1111 = !{!"496"}
!1112 = !DILocation(line: 930, column: 24, scope: !848)
!1113 = !{!"497"}
!1114 = !DILocation(line: 930, column: 2, scope: !848)
!1115 = !{!"498"}
!1116 = !DILocation(line: 931, column: 15, scope: !848)
!1117 = !{!"499"}
!1118 = !DILocation(line: 931, column: 11, scope: !848)
!1119 = !{!"500"}
!1120 = !DILocation(line: 931, column: 22, scope: !848)
!1121 = !{!"501"}
!1122 = !DILocation(line: 931, column: 18, scope: !848)
!1123 = !{!"502"}
!1124 = !DILocation(line: 931, column: 25, scope: !848)
!1125 = !{!"503"}
!1126 = !DILocation(line: 931, column: 2, scope: !848)
!1127 = !{!"504"}
!1128 = !DILocation(line: 936, column: 16, scope: !848)
!1129 = !{!"505"}
!1130 = !DILocation(line: 936, column: 24, scope: !848)
!1131 = !{!"506"}
!1132 = !DILocation(line: 936, column: 20, scope: !848)
!1133 = !{!"507"}
!1134 = !DILocation(line: 936, column: 31, scope: !848)
!1135 = !{!"508"}
!1136 = !DILocation(line: 936, column: 27, scope: !848)
!1137 = !{!"509"}
!1138 = !DILocation(line: 936, column: 2, scope: !848)
!1139 = !{!"510"}
!1140 = !DILocation(line: 937, column: 20, scope: !848)
!1141 = !{!"511"}
!1142 = !DILocation(line: 937, column: 16, scope: !848)
!1143 = !{!"512"}
!1144 = !DILocation(line: 937, column: 23, scope: !848)
!1145 = !{!"513"}
!1146 = !DILocation(line: 937, column: 27, scope: !848)
!1147 = !{!"514"}
!1148 = !DILocation(line: 937, column: 2, scope: !848)
!1149 = !{!"515"}
!1150 = !DILocation(line: 939, column: 2, scope: !848)
!1151 = !{!"516"}
!1152 = distinct !DISubprogram(name: "f256_final_reduce", scope: !3, file: !3, line: 534, type: !1153, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !38}
!1155 = !{!"517"}
!1156 = !{!"518"}
!1157 = !DILocalVariable(name: "a", arg: 1, scope: !1152, file: !3, line: 534, type: !38)
!1158 = !DILocation(line: 0, scope: !1152)
!1159 = !{!"519"}
!1160 = !DILocalVariable(name: "r", scope: !1152, file: !3, line: 536, type: !59)
!1161 = !DILocation(line: 536, column: 11, scope: !1152)
!1162 = !{!"520"}
!1163 = !DILocalVariable(name: "t", scope: !1152, file: !3, line: 536, type: !59)
!1164 = !DILocation(line: 536, column: 17, scope: !1152)
!1165 = !{!"521"}
!1166 = !DILocalVariable(name: "cc", scope: !1152, file: !3, line: 536, type: !15)
!1167 = !{!"522"}
!1168 = !DILocalVariable(name: "i", scope: !1152, file: !3, line: 537, type: !10)
!1169 = !{!"523"}
!1170 = !DILocation(line: 543, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 543, column: 2)
!1172 = !{!"524"}
!1173 = !{!"525"}
!1174 = !DILocation(line: 0, scope: !1171)
!1175 = !{!"526"}
!1176 = !{!"527"}
!1177 = !{!"528"}
!1178 = !DILocation(line: 543, column: 16, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 543, column: 2)
!1180 = !{!"529"}
!1181 = !DILocation(line: 543, column: 2, scope: !1171)
!1182 = !{!"530"}
!1183 = !DILocation(line: 544, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 543, column: 27)
!1185 = !{!"531"}
!1186 = !{!"532"}
!1187 = !{!"533"}
!1188 = !DILocation(line: 544, column: 12, scope: !1184)
!1189 = !{!"534"}
!1190 = !DILocalVariable(name: "w", scope: !1152, file: !3, line: 536, type: !15)
!1191 = !{!"535"}
!1192 = !DILocation(line: 545, column: 12, scope: !1184)
!1193 = !{!"536"}
!1194 = !DILocation(line: 545, column: 3, scope: !1184)
!1195 = !{!"537"}
!1196 = !{!"538"}
!1197 = !DILocation(line: 545, column: 8, scope: !1184)
!1198 = !{!"539"}
!1199 = !DILocation(line: 546, column: 10, scope: !1184)
!1200 = !{!"540"}
!1201 = !{!"541"}
!1202 = !DILocation(line: 547, column: 2, scope: !1184)
!1203 = !{!"542"}
!1204 = !DILocation(line: 543, column: 23, scope: !1179)
!1205 = !{!"543"}
!1206 = !{!"544"}
!1207 = !DILocation(line: 543, column: 2, scope: !1179)
!1208 = distinct !{!1208, !1181, !1209, !260}
!1209 = !DILocation(line: 547, column: 2, scope: !1171)
!1210 = !{!"545"}
!1211 = !DILocation(line: 559, column: 6, scope: !1152)
!1212 = !{!"546"}
!1213 = !{!"547"}
!1214 = !DILocation(line: 559, column: 11, scope: !1152)
!1215 = !{!"548"}
!1216 = !{!"549"}
!1217 = !DILocation(line: 560, column: 11, scope: !1152)
!1218 = !{!"550"}
!1219 = !DILocation(line: 560, column: 2, scope: !1152)
!1220 = !{!"551"}
!1221 = !DILocation(line: 560, column: 7, scope: !1152)
!1222 = !{!"552"}
!1223 = !DILocation(line: 561, column: 9, scope: !1152)
!1224 = !{!"553"}
!1225 = !{!"554"}
!1226 = !DILocation(line: 562, column: 6, scope: !1152)
!1227 = !{!"555"}
!1228 = !{!"556"}
!1229 = !DILocation(line: 562, column: 11, scope: !1152)
!1230 = !{!"557"}
!1231 = !{!"558"}
!1232 = !DILocation(line: 563, column: 11, scope: !1152)
!1233 = !{!"559"}
!1234 = !DILocation(line: 563, column: 2, scope: !1152)
!1235 = !{!"560"}
!1236 = !DILocation(line: 563, column: 7, scope: !1152)
!1237 = !{!"561"}
!1238 = !DILocation(line: 564, column: 9, scope: !1152)
!1239 = !{!"562"}
!1240 = !{!"563"}
!1241 = !DILocation(line: 565, column: 6, scope: !1152)
!1242 = !{!"564"}
!1243 = !{!"565"}
!1244 = !DILocation(line: 565, column: 11, scope: !1152)
!1245 = !{!"566"}
!1246 = !{!"567"}
!1247 = !DILocation(line: 566, column: 11, scope: !1152)
!1248 = !{!"568"}
!1249 = !DILocation(line: 566, column: 2, scope: !1152)
!1250 = !{!"569"}
!1251 = !DILocation(line: 566, column: 7, scope: !1152)
!1252 = !{!"570"}
!1253 = !DILocation(line: 567, column: 9, scope: !1152)
!1254 = !{!"571"}
!1255 = !{!"572"}
!1256 = !DILocation(line: 568, column: 6, scope: !1152)
!1257 = !{!"573"}
!1258 = !{!"574"}
!1259 = !DILocation(line: 568, column: 11, scope: !1152)
!1260 = !{!"575"}
!1261 = !{!"576"}
!1262 = !DILocation(line: 569, column: 11, scope: !1152)
!1263 = !{!"577"}
!1264 = !DILocation(line: 569, column: 2, scope: !1152)
!1265 = !{!"578"}
!1266 = !DILocation(line: 569, column: 7, scope: !1152)
!1267 = !{!"579"}
!1268 = !DILocation(line: 570, column: 9, scope: !1152)
!1269 = !{!"580"}
!1270 = !{!"581"}
!1271 = !DILocation(line: 571, column: 9, scope: !1152)
!1272 = !{!"582"}
!1273 = !{!"583"}
!1274 = !DILocation(line: 571, column: 14, scope: !1152)
!1275 = !{!"584"}
!1276 = !DILocation(line: 571, column: 19, scope: !1152)
!1277 = !{!"585"}
!1278 = !DILocation(line: 571, column: 2, scope: !1152)
!1279 = !{!"586"}
!1280 = !DILocation(line: 571, column: 7, scope: !1152)
!1281 = !{!"587"}
!1282 = !DILocation(line: 577, column: 6, scope: !1152)
!1283 = !{!"588"}
!1284 = !{!"589"}
!1285 = !DILocation(line: 577, column: 11, scope: !1152)
!1286 = !{!"590"}
!1287 = !{!"591"}
!1288 = !DILocation(line: 578, column: 11, scope: !1152)
!1289 = !{!"592"}
!1290 = !DILocation(line: 578, column: 2, scope: !1152)
!1291 = !{!"593"}
!1292 = !DILocation(line: 578, column: 7, scope: !1152)
!1293 = !{!"594"}
!1294 = !DILocation(line: 579, column: 9, scope: !1152)
!1295 = !{!"595"}
!1296 = !{!"596"}
!1297 = !DILocation(line: 580, column: 6, scope: !1152)
!1298 = !{!"597"}
!1299 = !{!"598"}
!1300 = !DILocation(line: 580, column: 11, scope: !1152)
!1301 = !{!"599"}
!1302 = !{!"600"}
!1303 = !DILocation(line: 581, column: 11, scope: !1152)
!1304 = !{!"601"}
!1305 = !DILocation(line: 581, column: 2, scope: !1152)
!1306 = !{!"602"}
!1307 = !DILocation(line: 581, column: 7, scope: !1152)
!1308 = !{!"603"}
!1309 = !DILocation(line: 582, column: 9, scope: !1152)
!1310 = !{!"604"}
!1311 = !{!"605"}
!1312 = !DILocation(line: 583, column: 6, scope: !1152)
!1313 = !{!"606"}
!1314 = !{!"607"}
!1315 = !DILocation(line: 583, column: 11, scope: !1152)
!1316 = !{!"608"}
!1317 = !DILocation(line: 583, column: 21, scope: !1152)
!1318 = !{!"609"}
!1319 = !{!"610"}
!1320 = !DILocation(line: 584, column: 11, scope: !1152)
!1321 = !{!"611"}
!1322 = !DILocation(line: 584, column: 2, scope: !1152)
!1323 = !{!"612"}
!1324 = !DILocation(line: 584, column: 7, scope: !1152)
!1325 = !{!"613"}
!1326 = !DILocation(line: 585, column: 9, scope: !1152)
!1327 = !{!"614"}
!1328 = !{!"615"}
!1329 = !DILocation(line: 586, column: 2, scope: !1152)
!1330 = !{!"616"}
!1331 = !DILocation(line: 586, column: 7, scope: !1152)
!1332 = !{!"617"}
!1333 = !{!"618"}
!1334 = !{!"619"}
!1335 = !DILocation(line: 593, column: 9, scope: !1152)
!1336 = !{!"620"}
!1337 = !{!"621"}
!1338 = !DILocation(line: 593, column: 14, scope: !1152)
!1339 = !{!"622"}
!1340 = !DILocation(line: 593, column: 7, scope: !1152)
!1341 = !{!"623"}
!1342 = !{!"624"}
!1343 = !DILocation(line: 594, column: 2, scope: !1152)
!1344 = !{!"625"}
!1345 = !DILocation(line: 594, column: 7, scope: !1152)
!1346 = !{!"626"}
!1347 = !{!"627"}
!1348 = !{!"628"}
!1349 = !{!"629"}
!1350 = !DILocation(line: 595, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 595, column: 2)
!1352 = !{!"630"}
!1353 = !DILocation(line: 0, scope: !1351)
!1354 = !{!"631"}
!1355 = !{!"632"}
!1356 = !DILocation(line: 595, column: 16, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 595, column: 2)
!1358 = !{!"633"}
!1359 = !DILocation(line: 595, column: 2, scope: !1351)
!1360 = !{!"634"}
!1361 = !DILocation(line: 596, column: 10, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 595, column: 27)
!1363 = !{!"635"}
!1364 = !{!"636"}
!1365 = !{!"637"}
!1366 = !DILocation(line: 596, column: 24, scope: !1362)
!1367 = !{!"638"}
!1368 = !{!"639"}
!1369 = !{!"640"}
!1370 = !DILocation(line: 596, column: 31, scope: !1362)
!1371 = !{!"641"}
!1372 = !{!"642"}
!1373 = !{!"643"}
!1374 = !DILocation(line: 596, column: 29, scope: !1362)
!1375 = !{!"644"}
!1376 = !DILocation(line: 596, column: 21, scope: !1362)
!1377 = !{!"645"}
!1378 = !DILocation(line: 596, column: 15, scope: !1362)
!1379 = !{!"646"}
!1380 = !DILocation(line: 596, column: 3, scope: !1362)
!1381 = !{!"647"}
!1382 = !{!"648"}
!1383 = !DILocation(line: 596, column: 8, scope: !1362)
!1384 = !{!"649"}
!1385 = !DILocation(line: 597, column: 2, scope: !1362)
!1386 = !{!"650"}
!1387 = !DILocation(line: 595, column: 23, scope: !1357)
!1388 = !{!"651"}
!1389 = !{!"652"}
!1390 = !DILocation(line: 595, column: 2, scope: !1357)
!1391 = distinct !{!1391, !1359, !1392, !260}
!1392 = !DILocation(line: 597, column: 2, scope: !1351)
!1393 = !{!"653"}
!1394 = !DILocation(line: 598, column: 1, scope: !1152)
!1395 = !{!"654"}
!1396 = distinct !DISubprogram(name: "EQ", scope: !265, file: !265, line: 779, type: !1397, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!11, !11, !11}
!1399 = !DILocalVariable(name: "x", arg: 1, scope: !1396, file: !265, line: 779, type: !11)
!1400 = !DILocation(line: 0, scope: !1396)
!1401 = !{!"655"}
!1402 = !DILocalVariable(name: "y", arg: 2, scope: !1396, file: !265, line: 779, type: !11)
!1403 = !{!"656"}
!1404 = !DILocation(line: 783, column: 8, scope: !1396)
!1405 = !{!"657"}
!1406 = !DILocalVariable(name: "q", scope: !1396, file: !265, line: 781, type: !11)
!1407 = !{!"658"}
!1408 = !DILocation(line: 784, column: 18, scope: !1396)
!1409 = !{!"659"}
!1410 = !DILocation(line: 784, column: 16, scope: !1396)
!1411 = !{!"660"}
!1412 = !DILocation(line: 784, column: 22, scope: !1396)
!1413 = !{!"661"}
!1414 = !DILocation(line: 784, column: 9, scope: !1396)
!1415 = !{!"662"}
!1416 = !DILocation(line: 784, column: 2, scope: !1396)
!1417 = !{!"663"}
!1418 = distinct !DISubprogram(name: "p256_double", scope: !3, file: !3, line: 760, type: !1419, scopeLine: 761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !533}
!1421 = !{!"664"}
!1422 = !{!"665"}
!1423 = !{!"666"}
!1424 = !{!"667"}
!1425 = !DILocalVariable(name: "P", arg: 1, scope: !1418, file: !3, line: 760, type: !533)
!1426 = !DILocation(line: 0, scope: !1418)
!1427 = !{!"668"}
!1428 = !DILocalVariable(name: "t1", scope: !1418, file: !3, line: 777, type: !59)
!1429 = !DILocation(line: 777, column: 11, scope: !1418)
!1430 = !{!"669"}
!1431 = !DILocalVariable(name: "t2", scope: !1418, file: !3, line: 777, type: !59)
!1432 = !DILocation(line: 777, column: 18, scope: !1418)
!1433 = !{!"670"}
!1434 = !DILocalVariable(name: "t3", scope: !1418, file: !3, line: 777, type: !59)
!1435 = !DILocation(line: 777, column: 25, scope: !1418)
!1436 = !{!"671"}
!1437 = !DILocalVariable(name: "t4", scope: !1418, file: !3, line: 777, type: !59)
!1438 = !DILocation(line: 777, column: 32, scope: !1418)
!1439 = !{!"672"}
!1440 = !DILocation(line: 782, column: 19, scope: !1418)
!1441 = !{!"673"}
!1442 = !DILocation(line: 782, column: 26, scope: !1418)
!1443 = !{!"674"}
!1444 = !DILocation(line: 782, column: 23, scope: !1418)
!1445 = !{!"675"}
!1446 = !DILocation(line: 782, column: 2, scope: !1418)
!1447 = !{!"676"}
!1448 = !DILocation(line: 787, column: 11, scope: !1418)
!1449 = !{!"677"}
!1450 = !DILocation(line: 787, column: 18, scope: !1418)
!1451 = !{!"678"}
!1452 = !DILocation(line: 787, column: 15, scope: !1418)
!1453 = !{!"679"}
!1454 = !DILocation(line: 787, column: 21, scope: !1418)
!1455 = !{!"680"}
!1456 = !DILocation(line: 787, column: 2, scope: !1418)
!1457 = !{!"681"}
!1458 = !DILocation(line: 788, column: 11, scope: !1418)
!1459 = !{!"682"}
!1460 = !DILocation(line: 788, column: 18, scope: !1418)
!1461 = !{!"683"}
!1462 = !DILocation(line: 788, column: 15, scope: !1418)
!1463 = !{!"684"}
!1464 = !DILocation(line: 788, column: 21, scope: !1418)
!1465 = !{!"685"}
!1466 = !DILocation(line: 788, column: 2, scope: !1418)
!1467 = !{!"686"}
!1468 = !DILocation(line: 793, column: 16, scope: !1418)
!1469 = !{!"687"}
!1470 = !DILocation(line: 793, column: 20, scope: !1418)
!1471 = !{!"688"}
!1472 = !DILocation(line: 793, column: 24, scope: !1418)
!1473 = !{!"689"}
!1474 = !DILocation(line: 793, column: 2, scope: !1418)
!1475 = !{!"690"}
!1476 = !DILocation(line: 794, column: 11, scope: !1418)
!1477 = !{!"691"}
!1478 = !DILocation(line: 794, column: 15, scope: !1418)
!1479 = !{!"692"}
!1480 = !DILocation(line: 794, column: 19, scope: !1418)
!1481 = !{!"693"}
!1482 = !DILocation(line: 794, column: 2, scope: !1418)
!1483 = !{!"694"}
!1484 = !DILocation(line: 795, column: 11, scope: !1418)
!1485 = !{!"695"}
!1486 = !DILocation(line: 795, column: 15, scope: !1418)
!1487 = !{!"696"}
!1488 = !DILocation(line: 795, column: 19, scope: !1418)
!1489 = !{!"697"}
!1490 = !DILocation(line: 795, column: 2, scope: !1418)
!1491 = !{!"698"}
!1492 = !DILocation(line: 800, column: 19, scope: !1418)
!1493 = !{!"699"}
!1494 = !DILocation(line: 800, column: 26, scope: !1418)
!1495 = !{!"700"}
!1496 = !DILocation(line: 800, column: 23, scope: !1418)
!1497 = !{!"701"}
!1498 = !DILocation(line: 800, column: 2, scope: !1418)
!1499 = !{!"702"}
!1500 = !DILocation(line: 801, column: 11, scope: !1418)
!1501 = !{!"703"}
!1502 = !DILocation(line: 801, column: 15, scope: !1418)
!1503 = !{!"704"}
!1504 = !DILocation(line: 801, column: 19, scope: !1418)
!1505 = !{!"705"}
!1506 = !DILocation(line: 801, column: 2, scope: !1418)
!1507 = !{!"706"}
!1508 = !DILocation(line: 802, column: 16, scope: !1418)
!1509 = !{!"707"}
!1510 = !DILocation(line: 802, column: 23, scope: !1418)
!1511 = !{!"708"}
!1512 = !DILocation(line: 802, column: 20, scope: !1418)
!1513 = !{!"709"}
!1514 = !DILocation(line: 802, column: 26, scope: !1418)
!1515 = !{!"710"}
!1516 = !DILocation(line: 802, column: 2, scope: !1418)
!1517 = !{!"711"}
!1518 = !DILocation(line: 803, column: 11, scope: !1418)
!1519 = !{!"712"}
!1520 = !DILocation(line: 803, column: 15, scope: !1418)
!1521 = !{!"713"}
!1522 = !DILocation(line: 803, column: 19, scope: !1418)
!1523 = !{!"714"}
!1524 = !DILocation(line: 803, column: 2, scope: !1418)
!1525 = !{!"715"}
!1526 = !DILocation(line: 808, column: 22, scope: !1418)
!1527 = !{!"716"}
!1528 = !DILocation(line: 808, column: 19, scope: !1418)
!1529 = !{!"717"}
!1530 = !DILocation(line: 808, column: 25, scope: !1418)
!1531 = !{!"718"}
!1532 = !DILocation(line: 808, column: 2, scope: !1418)
!1533 = !{!"719"}
!1534 = !DILocation(line: 809, column: 14, scope: !1418)
!1535 = !{!"720"}
!1536 = !DILocation(line: 809, column: 11, scope: !1418)
!1537 = !{!"721"}
!1538 = !DILocation(line: 809, column: 20, scope: !1418)
!1539 = !{!"722"}
!1540 = !DILocation(line: 809, column: 17, scope: !1418)
!1541 = !{!"723"}
!1542 = !DILocation(line: 809, column: 23, scope: !1418)
!1543 = !{!"724"}
!1544 = !DILocation(line: 809, column: 2, scope: !1418)
!1545 = !{!"725"}
!1546 = !DILocation(line: 810, column: 14, scope: !1418)
!1547 = !{!"726"}
!1548 = !DILocation(line: 810, column: 11, scope: !1418)
!1549 = !{!"727"}
!1550 = !DILocation(line: 810, column: 20, scope: !1418)
!1551 = !{!"728"}
!1552 = !DILocation(line: 810, column: 17, scope: !1418)
!1553 = !{!"729"}
!1554 = !DILocation(line: 810, column: 23, scope: !1418)
!1555 = !{!"730"}
!1556 = !DILocation(line: 810, column: 2, scope: !1418)
!1557 = !{!"731"}
!1558 = !DILocation(line: 815, column: 16, scope: !1418)
!1559 = !{!"732"}
!1560 = !DILocation(line: 815, column: 23, scope: !1418)
!1561 = !{!"733"}
!1562 = !DILocation(line: 815, column: 20, scope: !1418)
!1563 = !{!"734"}
!1564 = !DILocation(line: 815, column: 29, scope: !1418)
!1565 = !{!"735"}
!1566 = !DILocation(line: 815, column: 26, scope: !1418)
!1567 = !{!"736"}
!1568 = !DILocation(line: 815, column: 2, scope: !1418)
!1569 = !{!"737"}
!1570 = !DILocation(line: 816, column: 14, scope: !1418)
!1571 = !{!"738"}
!1572 = !DILocation(line: 816, column: 11, scope: !1418)
!1573 = !{!"739"}
!1574 = !DILocation(line: 816, column: 17, scope: !1418)
!1575 = !{!"740"}
!1576 = !DILocation(line: 816, column: 21, scope: !1418)
!1577 = !{!"741"}
!1578 = !DILocation(line: 816, column: 2, scope: !1418)
!1579 = !{!"742"}
!1580 = !DILocation(line: 817, column: 25, scope: !1418)
!1581 = !{!"743"}
!1582 = !DILocation(line: 817, column: 22, scope: !1418)
!1583 = !{!"744"}
!1584 = !DILocation(line: 817, column: 2, scope: !1418)
!1585 = !{!"745"}
!1586 = !DILocation(line: 823, column: 11, scope: !1418)
!1587 = !{!"746"}
!1588 = !DILocation(line: 823, column: 15, scope: !1418)
!1589 = !{!"747"}
!1590 = !DILocation(line: 823, column: 22, scope: !1418)
!1591 = !{!"748"}
!1592 = !DILocation(line: 823, column: 19, scope: !1418)
!1593 = !{!"749"}
!1594 = !DILocation(line: 823, column: 2, scope: !1418)
!1595 = !{!"750"}
!1596 = !DILocation(line: 824, column: 19, scope: !1418)
!1597 = !{!"751"}
!1598 = !DILocation(line: 824, column: 16, scope: !1418)
!1599 = !{!"752"}
!1600 = !DILocation(line: 824, column: 22, scope: !1418)
!1601 = !{!"753"}
!1602 = !DILocation(line: 824, column: 26, scope: !1418)
!1603 = !{!"754"}
!1604 = !DILocation(line: 824, column: 2, scope: !1418)
!1605 = !{!"755"}
!1606 = !DILocation(line: 825, column: 19, scope: !1418)
!1607 = !{!"756"}
!1608 = !DILocation(line: 825, column: 23, scope: !1418)
!1609 = !{!"757"}
!1610 = !DILocation(line: 825, column: 2, scope: !1418)
!1611 = !{!"758"}
!1612 = !DILocation(line: 826, column: 11, scope: !1418)
!1613 = !{!"759"}
!1614 = !DILocation(line: 826, column: 15, scope: !1418)
!1615 = !{!"760"}
!1616 = !DILocation(line: 826, column: 19, scope: !1418)
!1617 = !{!"761"}
!1618 = !DILocation(line: 826, column: 2, scope: !1418)
!1619 = !{!"762"}
!1620 = !DILocation(line: 827, column: 14, scope: !1418)
!1621 = !{!"763"}
!1622 = !DILocation(line: 827, column: 11, scope: !1418)
!1623 = !{!"764"}
!1624 = !DILocation(line: 827, column: 20, scope: !1418)
!1625 = !{!"765"}
!1626 = !DILocation(line: 827, column: 17, scope: !1418)
!1627 = !{!"766"}
!1628 = !DILocation(line: 827, column: 23, scope: !1418)
!1629 = !{!"767"}
!1630 = !DILocation(line: 827, column: 2, scope: !1418)
!1631 = !{!"768"}
!1632 = !DILocation(line: 828, column: 1, scope: !1418)
!1633 = !{!"769"}
!1634 = distinct !DISubprogram(name: "point_encode", scope: !3, file: !3, line: 723, type: !1635, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!11, !86, !851}
!1637 = !{!"770"}
!1638 = !{!"771"}
!1639 = !DILocalVariable(name: "buf", arg: 1, scope: !1634, file: !3, line: 723, type: !86)
!1640 = !DILocation(line: 0, scope: !1634)
!1641 = !{!"772"}
!1642 = !DILocalVariable(name: "P", arg: 2, scope: !1634, file: !3, line: 723, type: !851)
!1643 = !{!"773"}
!1644 = !DILocalVariable(name: "t1", scope: !1634, file: !3, line: 725, type: !59)
!1645 = !DILocation(line: 725, column: 11, scope: !1634)
!1646 = !{!"774"}
!1647 = !DILocalVariable(name: "t2", scope: !1634, file: !3, line: 725, type: !59)
!1648 = !DILocation(line: 725, column: 18, scope: !1634)
!1649 = !{!"775"}
!1650 = !DILocation(line: 728, column: 14, scope: !1634)
!1651 = !{!"776"}
!1652 = !DILocation(line: 728, column: 21, scope: !1634)
!1653 = !{!"777"}
!1654 = !DILocation(line: 728, column: 18, scope: !1634)
!1655 = !{!"778"}
!1656 = !DILocation(line: 728, column: 2, scope: !1634)
!1657 = !{!"779"}
!1658 = !DILocation(line: 729, column: 19, scope: !1634)
!1659 = !{!"780"}
!1660 = !DILocation(line: 729, column: 23, scope: !1634)
!1661 = !{!"781"}
!1662 = !DILocation(line: 729, column: 2, scope: !1634)
!1663 = !{!"782"}
!1664 = !DILocation(line: 730, column: 16, scope: !1634)
!1665 = !{!"783"}
!1666 = !DILocation(line: 730, column: 20, scope: !1634)
!1667 = !{!"784"}
!1668 = !DILocation(line: 730, column: 24, scope: !1634)
!1669 = !{!"785"}
!1670 = !DILocation(line: 730, column: 2, scope: !1634)
!1671 = !{!"786"}
!1672 = !DILocation(line: 733, column: 16, scope: !1634)
!1673 = !{!"787"}
!1674 = !DILocation(line: 733, column: 23, scope: !1634)
!1675 = !{!"788"}
!1676 = !DILocation(line: 733, column: 20, scope: !1634)
!1677 = !{!"789"}
!1678 = !DILocation(line: 733, column: 26, scope: !1634)
!1679 = !{!"790"}
!1680 = !DILocation(line: 733, column: 2, scope: !1634)
!1681 = !{!"791"}
!1682 = !DILocation(line: 734, column: 16, scope: !1634)
!1683 = !{!"792"}
!1684 = !DILocation(line: 734, column: 23, scope: !1634)
!1685 = !{!"793"}
!1686 = !DILocation(line: 734, column: 20, scope: !1634)
!1687 = !{!"794"}
!1688 = !DILocation(line: 734, column: 26, scope: !1634)
!1689 = !{!"795"}
!1690 = !DILocation(line: 734, column: 2, scope: !1634)
!1691 = !{!"796"}
!1692 = !DILocation(line: 738, column: 17, scope: !1634)
!1693 = !{!"797"}
!1694 = !DILocation(line: 738, column: 21, scope: !1634)
!1695 = !{!"798"}
!1696 = !DILocation(line: 738, column: 2, scope: !1634)
!1697 = !{!"799"}
!1698 = !DILocation(line: 739, column: 17, scope: !1634)
!1699 = !{!"800"}
!1700 = !DILocation(line: 739, column: 21, scope: !1634)
!1701 = !{!"801"}
!1702 = !DILocation(line: 739, column: 2, scope: !1634)
!1703 = !{!"802"}
!1704 = !DILocation(line: 740, column: 20, scope: !1634)
!1705 = !{!"803"}
!1706 = !DILocation(line: 740, column: 2, scope: !1634)
!1707 = !{!"804"}
!1708 = !DILocation(line: 741, column: 20, scope: !1634)
!1709 = !{!"805"}
!1710 = !DILocation(line: 741, column: 2, scope: !1634)
!1711 = !{!"806"}
!1712 = !DILocation(line: 744, column: 2, scope: !1634)
!1713 = !{!"807"}
!1714 = !DILocation(line: 744, column: 9, scope: !1634)
!1715 = !{!"808"}
!1716 = !DILocation(line: 745, column: 18, scope: !1634)
!1717 = !{!"809"}
!1718 = !DILocation(line: 745, column: 24, scope: !1634)
!1719 = !{!"810"}
!1720 = !DILocation(line: 745, column: 2, scope: !1634)
!1721 = !{!"811"}
!1722 = !DILocation(line: 746, column: 18, scope: !1634)
!1723 = !{!"812"}
!1724 = !DILocation(line: 746, column: 24, scope: !1634)
!1725 = !{!"813"}
!1726 = !DILocation(line: 746, column: 2, scope: !1634)
!1727 = !{!"814"}
!1728 = !DILocation(line: 749, column: 9, scope: !1634)
!1729 = !{!"815"}
!1730 = !DILocation(line: 749, column: 6, scope: !1634)
!1731 = !{!"816"}
!1732 = !{!"817"}
!1733 = !DILocation(line: 749, column: 19, scope: !1634)
!1734 = !{!"818"}
!1735 = !DILocation(line: 749, column: 16, scope: !1634)
!1736 = !{!"819"}
!1737 = !{!"820"}
!1738 = !DILocation(line: 749, column: 14, scope: !1634)
!1739 = !{!"821"}
!1740 = !DILocation(line: 749, column: 29, scope: !1634)
!1741 = !{!"822"}
!1742 = !DILocation(line: 749, column: 26, scope: !1634)
!1743 = !{!"823"}
!1744 = !{!"824"}
!1745 = !DILocation(line: 749, column: 24, scope: !1634)
!1746 = !{!"825"}
!1747 = !DILocation(line: 749, column: 39, scope: !1634)
!1748 = !{!"826"}
!1749 = !DILocation(line: 749, column: 36, scope: !1634)
!1750 = !{!"827"}
!1751 = !{!"828"}
!1752 = !DILocation(line: 749, column: 34, scope: !1634)
!1753 = !{!"829"}
!1754 = !DILocation(line: 749, column: 49, scope: !1634)
!1755 = !{!"830"}
!1756 = !DILocation(line: 749, column: 46, scope: !1634)
!1757 = !{!"831"}
!1758 = !{!"832"}
!1759 = !DILocation(line: 749, column: 44, scope: !1634)
!1760 = !{!"833"}
!1761 = !DILocalVariable(name: "z", scope: !1634, file: !3, line: 725, type: !15)
!1762 = !{!"834"}
!1763 = !DILocation(line: 750, column: 30, scope: !1634)
!1764 = !{!"835"}
!1765 = !DILocation(line: 750, column: 26, scope: !1634)
!1766 = !{!"836"}
!1767 = !DILocation(line: 750, column: 13, scope: !1634)
!1768 = !{!"837"}
!1769 = !DILocation(line: 750, column: 9, scope: !1634)
!1770 = !{!"838"}
!1771 = !DILocation(line: 750, column: 2, scope: !1634)
!1772 = !{!"839"}
!1773 = distinct !DISubprogram(name: "f256_invert", scope: !3, file: !3, line: 482, type: !36, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1774 = !{!"840"}
!1775 = !{!"841"}
!1776 = !DILocalVariable(name: "d", arg: 1, scope: !1773, file: !3, line: 482, type: !38)
!1777 = !DILocation(line: 0, scope: !1773)
!1778 = !{!"842"}
!1779 = !DILocalVariable(name: "a", arg: 2, scope: !1773, file: !3, line: 482, type: !39)
!1780 = !{!"843"}
!1781 = !DILocalVariable(name: "r", scope: !1773, file: !3, line: 498, type: !59)
!1782 = !DILocation(line: 498, column: 11, scope: !1773)
!1783 = !{!"844"}
!1784 = !DILocalVariable(name: "t", scope: !1773, file: !3, line: 498, type: !59)
!1785 = !DILocation(line: 498, column: 17, scope: !1773)
!1786 = !{!"845"}
!1787 = !DILocation(line: 501, column: 2, scope: !1773)
!1788 = !{!"846"}
!1789 = !{!"847"}
!1790 = !{!"848"}
!1791 = !{!"849"}
!1792 = !DILocalVariable(name: "i", scope: !1773, file: !3, line: 499, type: !10)
!1793 = !{!"850"}
!1794 = !DILocation(line: 502, column: 7, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 502, column: 2)
!1796 = !{!"851"}
!1797 = !DILocation(line: 0, scope: !1795)
!1798 = !{!"852"}
!1799 = !{!"853"}
!1800 = !DILocation(line: 502, column: 16, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 502, column: 2)
!1802 = !{!"854"}
!1803 = !DILocation(line: 502, column: 2, scope: !1795)
!1804 = !{!"855"}
!1805 = !DILocation(line: 503, column: 20, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 502, column: 28)
!1807 = !{!"856"}
!1808 = !DILocation(line: 503, column: 23, scope: !1806)
!1809 = !{!"857"}
!1810 = !DILocation(line: 503, column: 3, scope: !1806)
!1811 = !{!"858"}
!1812 = !DILocation(line: 504, column: 17, scope: !1806)
!1813 = !{!"859"}
!1814 = !DILocation(line: 504, column: 20, scope: !1806)
!1815 = !{!"860"}
!1816 = !DILocation(line: 504, column: 3, scope: !1806)
!1817 = !{!"861"}
!1818 = !DILocation(line: 505, column: 2, scope: !1806)
!1819 = !{!"862"}
!1820 = !DILocation(line: 502, column: 24, scope: !1801)
!1821 = !{!"863"}
!1822 = !{!"864"}
!1823 = !DILocation(line: 502, column: 2, scope: !1801)
!1824 = distinct !{!1824, !1803, !1825, !260}
!1825 = !DILocation(line: 505, column: 2, scope: !1795)
!1826 = !{!"865"}
!1827 = !DILocation(line: 507, column: 2, scope: !1773)
!1828 = !{!"866"}
!1829 = !{!"867"}
!1830 = !{!"868"}
!1831 = !{!"869"}
!1832 = !{!"870"}
!1833 = !{!"871"}
!1834 = !DILocation(line: 508, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 508, column: 2)
!1836 = !{!"872"}
!1837 = !DILocation(line: 0, scope: !1835)
!1838 = !{!"873"}
!1839 = !{!"874"}
!1840 = !DILocation(line: 508, column: 18, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 508, column: 2)
!1842 = !{!"875"}
!1843 = !DILocation(line: 508, column: 2, scope: !1835)
!1844 = !{!"876"}
!1845 = !DILocation(line: 509, column: 20, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 508, column: 30)
!1847 = !{!"877"}
!1848 = !DILocation(line: 509, column: 23, scope: !1846)
!1849 = !{!"878"}
!1850 = !DILocation(line: 509, column: 3, scope: !1846)
!1851 = !{!"879"}
!1852 = !DILocation(line: 510, column: 3, scope: !1846)
!1853 = !{!"880"}
!1854 = !DILocation(line: 515, column: 18, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 510, column: 14)
!1856 = !{!"881"}
!1857 = !DILocation(line: 515, column: 21, scope: !1855)
!1858 = !{!"882"}
!1859 = !DILocation(line: 515, column: 4, scope: !1855)
!1860 = !{!"883"}
!1861 = !DILocation(line: 516, column: 4, scope: !1855)
!1862 = !{!"884"}
!1863 = !DILocation(line: 520, column: 18, scope: !1855)
!1864 = !{!"885"}
!1865 = !DILocation(line: 520, column: 21, scope: !1855)
!1866 = !{!"886"}
!1867 = !DILocation(line: 520, column: 24, scope: !1855)
!1868 = !{!"887"}
!1869 = !DILocation(line: 520, column: 4, scope: !1855)
!1870 = !{!"888"}
!1871 = !DILocation(line: 521, column: 4, scope: !1855)
!1872 = !{!"889"}
!1873 = !DILocation(line: 523, column: 2, scope: !1846)
!1874 = !{!"890"}
!1875 = !DILocation(line: 508, column: 26, scope: !1841)
!1876 = !{!"891"}
!1877 = !{!"892"}
!1878 = !DILocation(line: 508, column: 2, scope: !1841)
!1879 = distinct !{!1879, !1843, !1880, !260}
!1880 = !DILocation(line: 523, column: 2, scope: !1835)
!1881 = !{!"893"}
!1882 = !DILocation(line: 524, column: 2, scope: !1773)
!1883 = !{!"894"}
!1884 = !{!"895"}
!1885 = !{!"896"}
!1886 = !{!"897"}
!1887 = !DILocation(line: 525, column: 1, scope: !1773)
!1888 = !{!"898"}
!1889 = distinct !DISubprogram(name: "f256_montysquare", scope: !3, file: !3, line: 438, type: !36, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1890 = !DILocalVariable(name: "d", arg: 1, scope: !1889, file: !3, line: 438, type: !38)
!1891 = !DILocation(line: 0, scope: !1889)
!1892 = !{!"899"}
!1893 = !DILocalVariable(name: "a", arg: 2, scope: !1889, file: !3, line: 438, type: !39)
!1894 = !{!"900"}
!1895 = !DILocation(line: 440, column: 2, scope: !1889)
!1896 = !{!"901"}
!1897 = !DILocation(line: 441, column: 1, scope: !1889)
!1898 = !{!"902"}
!1899 = distinct !DISubprogram(name: "f256_montymul", scope: !3, file: !3, line: 244, type: !1900, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !38, !39, !39}
!1902 = !{!"903"}
!1903 = !DILocalVariable(name: "d", arg: 1, scope: !1899, file: !3, line: 244, type: !38)
!1904 = !DILocation(line: 0, scope: !1899)
!1905 = !{!"904"}
!1906 = !DILocalVariable(name: "a", arg: 2, scope: !1899, file: !3, line: 244, type: !39)
!1907 = !{!"905"}
!1908 = !DILocalVariable(name: "b", arg: 3, scope: !1899, file: !3, line: 244, type: !39)
!1909 = !{!"906"}
!1910 = !DILocalVariable(name: "t", scope: !1899, file: !3, line: 249, type: !59)
!1911 = !DILocation(line: 249, column: 11, scope: !1899)
!1912 = !{!"907"}
!1913 = !DILocation(line: 251, column: 2, scope: !1899)
!1914 = !{!"908"}
!1915 = !DILocation(line: 251, column: 7, scope: !1899)
!1916 = !{!"909"}
!1917 = !DILocation(line: 252, column: 2, scope: !1899)
!1918 = !{!"910"}
!1919 = !DILocation(line: 252, column: 7, scope: !1899)
!1920 = !{!"911"}
!1921 = !DILocation(line: 253, column: 2, scope: !1899)
!1922 = !{!"912"}
!1923 = !DILocation(line: 253, column: 7, scope: !1899)
!1924 = !{!"913"}
!1925 = !DILocation(line: 254, column: 2, scope: !1899)
!1926 = !{!"914"}
!1927 = !DILocation(line: 254, column: 7, scope: !1899)
!1928 = !{!"915"}
!1929 = !DILocation(line: 255, column: 2, scope: !1899)
!1930 = !{!"916"}
!1931 = !DILocation(line: 255, column: 7, scope: !1899)
!1932 = !{!"917"}
!1933 = !DILocalVariable(name: "i", scope: !1899, file: !3, line: 248, type: !10)
!1934 = !{!"918"}
!1935 = !DILocation(line: 256, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 256, column: 2)
!1937 = !{!"919"}
!1938 = !DILocation(line: 0, scope: !1936)
!1939 = !{!"920"}
!1940 = !{!"921"}
!1941 = !DILocation(line: 256, column: 16, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 256, column: 2)
!1943 = !{!"922"}
!1944 = !DILocation(line: 256, column: 2, scope: !1936)
!1945 = !{!"923"}
!1946 = !DILocation(line: 270, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 256, column: 27)
!1948 = !{!"924"}
!1949 = !{!"925"}
!1950 = !{!"926"}
!1951 = !DILocalVariable(name: "x", scope: !1947, file: !3, line: 257, type: !15)
!1952 = !DILocation(line: 0, scope: !1947)
!1953 = !{!"927"}
!1954 = !DILocation(line: 271, column: 26, scope: !1947)
!1955 = !{!"928"}
!1956 = !{!"929"}
!1957 = !DILocation(line: 271, column: 7, scope: !1947)
!1958 = !{!"930"}
!1959 = !DILocation(line: 271, column: 33, scope: !1947)
!1960 = !{!"931"}
!1961 = !DILocation(line: 271, column: 31, scope: !1947)
!1962 = !{!"932"}
!1963 = !DILocation(line: 272, column: 25, scope: !1947)
!1964 = !{!"933"}
!1965 = !{!"934"}
!1966 = !DILocation(line: 272, column: 6, scope: !1947)
!1967 = !{!"935"}
!1968 = !DILocation(line: 272, column: 4, scope: !1947)
!1969 = !{!"936"}
!1970 = !DILocalVariable(name: "z", scope: !1947, file: !3, line: 258, type: !18)
!1971 = !{!"937"}
!1972 = !DILocation(line: 273, column: 7, scope: !1947)
!1973 = !{!"938"}
!1974 = !DILocation(line: 273, column: 19, scope: !1947)
!1975 = !{!"939"}
!1976 = !DILocalVariable(name: "f", scope: !1947, file: !3, line: 257, type: !15)
!1977 = !{!"940"}
!1978 = !DILocation(line: 274, column: 21, scope: !1947)
!1979 = !{!"941"}
!1980 = !DILocation(line: 274, column: 8, scope: !1947)
!1981 = !{!"942"}
!1982 = !DILocalVariable(name: "cc", scope: !1947, file: !3, line: 257, type: !15)
!1983 = !{!"943"}
!1984 = !DILocation(line: 275, column: 26, scope: !1947)
!1985 = !{!"944"}
!1986 = !{!"945"}
!1987 = !DILocation(line: 275, column: 7, scope: !1947)
!1988 = !{!"946"}
!1989 = !DILocation(line: 275, column: 33, scope: !1947)
!1990 = !{!"947"}
!1991 = !DILocation(line: 275, column: 31, scope: !1947)
!1992 = !{!"948"}
!1993 = !DILocation(line: 276, column: 25, scope: !1947)
!1994 = !{!"949"}
!1995 = !{!"950"}
!1996 = !DILocation(line: 276, column: 6, scope: !1947)
!1997 = !{!"951"}
!1998 = !DILocation(line: 276, column: 4, scope: !1947)
!1999 = !{!"952"}
!2000 = !DILocation(line: 276, column: 32, scope: !1947)
!2001 = !{!"953"}
!2002 = !DILocation(line: 276, column: 30, scope: !1947)
!2003 = !{!"954"}
!2004 = !DILocation(line: 277, column: 7, scope: !1947)
!2005 = !{!"955"}
!2006 = !DILocation(line: 277, column: 28, scope: !1947)
!2007 = !{!"956"}
!2008 = !DILocation(line: 277, column: 4, scope: !1947)
!2009 = !{!"957"}
!2010 = !{!"958"}
!2011 = !DILocation(line: 278, column: 10, scope: !1947)
!2012 = !{!"959"}
!2013 = !DILocation(line: 278, column: 22, scope: !1947)
!2014 = !{!"960"}
!2015 = !DILocation(line: 278, column: 3, scope: !1947)
!2016 = !{!"961"}
!2017 = !DILocation(line: 278, column: 8, scope: !1947)
!2018 = !{!"962"}
!2019 = !DILocation(line: 279, column: 21, scope: !1947)
!2020 = !{!"963"}
!2021 = !DILocation(line: 279, column: 8, scope: !1947)
!2022 = !{!"964"}
!2023 = !{!"965"}
!2024 = !DILocation(line: 280, column: 26, scope: !1947)
!2025 = !{!"966"}
!2026 = !{!"967"}
!2027 = !DILocation(line: 280, column: 7, scope: !1947)
!2028 = !{!"968"}
!2029 = !DILocation(line: 280, column: 33, scope: !1947)
!2030 = !{!"969"}
!2031 = !DILocation(line: 280, column: 31, scope: !1947)
!2032 = !{!"970"}
!2033 = !DILocation(line: 281, column: 25, scope: !1947)
!2034 = !{!"971"}
!2035 = !{!"972"}
!2036 = !DILocation(line: 281, column: 6, scope: !1947)
!2037 = !{!"973"}
!2038 = !DILocation(line: 281, column: 4, scope: !1947)
!2039 = !{!"974"}
!2040 = !DILocation(line: 281, column: 32, scope: !1947)
!2041 = !{!"975"}
!2042 = !DILocation(line: 281, column: 30, scope: !1947)
!2043 = !{!"976"}
!2044 = !{!"977"}
!2045 = !DILocation(line: 282, column: 10, scope: !1947)
!2046 = !{!"978"}
!2047 = !DILocation(line: 282, column: 22, scope: !1947)
!2048 = !{!"979"}
!2049 = !DILocation(line: 282, column: 3, scope: !1947)
!2050 = !{!"980"}
!2051 = !DILocation(line: 282, column: 8, scope: !1947)
!2052 = !{!"981"}
!2053 = !DILocation(line: 283, column: 21, scope: !1947)
!2054 = !{!"982"}
!2055 = !DILocation(line: 283, column: 8, scope: !1947)
!2056 = !{!"983"}
!2057 = !{!"984"}
!2058 = !DILocation(line: 284, column: 26, scope: !1947)
!2059 = !{!"985"}
!2060 = !{!"986"}
!2061 = !DILocation(line: 284, column: 7, scope: !1947)
!2062 = !{!"987"}
!2063 = !DILocation(line: 284, column: 33, scope: !1947)
!2064 = !{!"988"}
!2065 = !DILocation(line: 284, column: 31, scope: !1947)
!2066 = !{!"989"}
!2067 = !DILocation(line: 285, column: 25, scope: !1947)
!2068 = !{!"990"}
!2069 = !{!"991"}
!2070 = !DILocation(line: 285, column: 6, scope: !1947)
!2071 = !{!"992"}
!2072 = !DILocation(line: 285, column: 4, scope: !1947)
!2073 = !{!"993"}
!2074 = !DILocation(line: 285, column: 32, scope: !1947)
!2075 = !{!"994"}
!2076 = !DILocation(line: 285, column: 30, scope: !1947)
!2077 = !{!"995"}
!2078 = !DILocation(line: 286, column: 7, scope: !1947)
!2079 = !{!"996"}
!2080 = !DILocation(line: 286, column: 28, scope: !1947)
!2081 = !{!"997"}
!2082 = !DILocation(line: 286, column: 4, scope: !1947)
!2083 = !{!"998"}
!2084 = !{!"999"}
!2085 = !DILocation(line: 287, column: 10, scope: !1947)
!2086 = !{!"1000"}
!2087 = !DILocation(line: 287, column: 22, scope: !1947)
!2088 = !{!"1001"}
!2089 = !DILocation(line: 287, column: 3, scope: !1947)
!2090 = !{!"1002"}
!2091 = !DILocation(line: 287, column: 8, scope: !1947)
!2092 = !{!"1003"}
!2093 = !DILocation(line: 288, column: 21, scope: !1947)
!2094 = !{!"1004"}
!2095 = !DILocation(line: 288, column: 8, scope: !1947)
!2096 = !{!"1005"}
!2097 = !{!"1006"}
!2098 = !DILocation(line: 289, column: 26, scope: !1947)
!2099 = !{!"1007"}
!2100 = !{!"1008"}
!2101 = !DILocation(line: 289, column: 7, scope: !1947)
!2102 = !{!"1009"}
!2103 = !DILocation(line: 289, column: 33, scope: !1947)
!2104 = !{!"1010"}
!2105 = !DILocation(line: 289, column: 31, scope: !1947)
!2106 = !{!"1011"}
!2107 = !DILocation(line: 290, column: 25, scope: !1947)
!2108 = !{!"1012"}
!2109 = !{!"1013"}
!2110 = !DILocation(line: 290, column: 6, scope: !1947)
!2111 = !{!"1014"}
!2112 = !DILocation(line: 290, column: 4, scope: !1947)
!2113 = !{!"1015"}
!2114 = !DILocation(line: 290, column: 32, scope: !1947)
!2115 = !{!"1016"}
!2116 = !DILocation(line: 290, column: 30, scope: !1947)
!2117 = !{!"1017"}
!2118 = !DILocation(line: 291, column: 7, scope: !1947)
!2119 = !{!"1018"}
!2120 = !DILocation(line: 291, column: 28, scope: !1947)
!2121 = !{!"1019"}
!2122 = !DILocation(line: 291, column: 4, scope: !1947)
!2123 = !{!"1020"}
!2124 = !DILocation(line: 292, column: 7, scope: !1947)
!2125 = !{!"1021"}
!2126 = !DILocation(line: 292, column: 28, scope: !1947)
!2127 = !{!"1022"}
!2128 = !DILocation(line: 292, column: 4, scope: !1947)
!2129 = !{!"1023"}
!2130 = !{!"1024"}
!2131 = !DILocation(line: 293, column: 10, scope: !1947)
!2132 = !{!"1025"}
!2133 = !DILocation(line: 293, column: 22, scope: !1947)
!2134 = !{!"1026"}
!2135 = !DILocation(line: 293, column: 3, scope: !1947)
!2136 = !{!"1027"}
!2137 = !DILocation(line: 293, column: 8, scope: !1947)
!2138 = !{!"1028"}
!2139 = !DILocation(line: 294, column: 23, scope: !1947)
!2140 = !{!"1029"}
!2141 = !DILocation(line: 294, column: 10, scope: !1947)
!2142 = !{!"1030"}
!2143 = !DILocation(line: 294, column: 3, scope: !1947)
!2144 = !{!"1031"}
!2145 = !DILocation(line: 294, column: 8, scope: !1947)
!2146 = !{!"1032"}
!2147 = !DILocation(line: 301, column: 7, scope: !1947)
!2148 = !{!"1033"}
!2149 = !{!"1034"}
!2150 = !DILocation(line: 301, column: 12, scope: !1947)
!2151 = !{!"1035"}
!2152 = !DILocalVariable(name: "s", scope: !1947, file: !3, line: 257, type: !15)
!2153 = !{!"1036"}
!2154 = !DILocation(line: 302, column: 3, scope: !1947)
!2155 = !{!"1037"}
!2156 = !DILocation(line: 302, column: 8, scope: !1947)
!2157 = !{!"1038"}
!2158 = !{!"1039"}
!2159 = !{!"1040"}
!2160 = !DILocation(line: 303, column: 7, scope: !1947)
!2161 = !{!"1041"}
!2162 = !{!"1042"}
!2163 = !DILocation(line: 303, column: 17, scope: !1947)
!2164 = !{!"1043"}
!2165 = !DILocation(line: 303, column: 12, scope: !1947)
!2166 = !{!"1044"}
!2167 = !DILocalVariable(name: "w", scope: !1947, file: !3, line: 257, type: !15)
!2168 = !{!"1045"}
!2169 = !DILocation(line: 304, column: 12, scope: !1947)
!2170 = !{!"1046"}
!2171 = !DILocation(line: 304, column: 3, scope: !1947)
!2172 = !{!"1047"}
!2173 = !DILocation(line: 304, column: 8, scope: !1947)
!2174 = !{!"1048"}
!2175 = !DILocation(line: 305, column: 12, scope: !1947)
!2176 = !{!"1049"}
!2177 = !DILocation(line: 305, column: 8, scope: !1947)
!2178 = !{!"1050"}
!2179 = !DILocation(line: 305, column: 19, scope: !1947)
!2180 = !{!"1051"}
!2181 = !{!"1052"}
!2182 = !DILocation(line: 306, column: 7, scope: !1947)
!2183 = !{!"1053"}
!2184 = !{!"1054"}
!2185 = !DILocation(line: 306, column: 12, scope: !1947)
!2186 = !{!"1055"}
!2187 = !{!"1056"}
!2188 = !DILocation(line: 307, column: 12, scope: !1947)
!2189 = !{!"1057"}
!2190 = !DILocation(line: 307, column: 3, scope: !1947)
!2191 = !{!"1058"}
!2192 = !DILocation(line: 307, column: 8, scope: !1947)
!2193 = !{!"1059"}
!2194 = !DILocation(line: 308, column: 10, scope: !1947)
!2195 = !{!"1060"}
!2196 = !{!"1061"}
!2197 = !DILocation(line: 309, column: 7, scope: !1947)
!2198 = !{!"1062"}
!2199 = !{!"1063"}
!2200 = !DILocation(line: 309, column: 12, scope: !1947)
!2201 = !{!"1064"}
!2202 = !DILocation(line: 309, column: 22, scope: !1947)
!2203 = !{!"1065"}
!2204 = !DILocation(line: 309, column: 17, scope: !1947)
!2205 = !{!"1066"}
!2206 = !{!"1067"}
!2207 = !DILocation(line: 310, column: 12, scope: !1947)
!2208 = !{!"1068"}
!2209 = !DILocation(line: 310, column: 3, scope: !1947)
!2210 = !{!"1069"}
!2211 = !DILocation(line: 310, column: 8, scope: !1947)
!2212 = !{!"1070"}
!2213 = !DILocation(line: 311, column: 10, scope: !1947)
!2214 = !{!"1071"}
!2215 = !{!"1072"}
!2216 = !DILocation(line: 312, column: 7, scope: !1947)
!2217 = !{!"1073"}
!2218 = !{!"1074"}
!2219 = !DILocation(line: 312, column: 12, scope: !1947)
!2220 = !{!"1075"}
!2221 = !{!"1076"}
!2222 = !DILocation(line: 313, column: 17, scope: !1947)
!2223 = !{!"1077"}
!2224 = !DILocation(line: 313, column: 12, scope: !1947)
!2225 = !{!"1078"}
!2226 = !DILocation(line: 313, column: 24, scope: !1947)
!2227 = !{!"1079"}
!2228 = !DILocation(line: 313, column: 3, scope: !1947)
!2229 = !{!"1080"}
!2230 = !DILocation(line: 313, column: 8, scope: !1947)
!2231 = !{!"1081"}
!2232 = !DILocation(line: 319, column: 2, scope: !1947)
!2233 = !{!"1082"}
!2234 = !DILocation(line: 256, column: 23, scope: !1942)
!2235 = !{!"1083"}
!2236 = !{!"1084"}
!2237 = !DILocation(line: 256, column: 2, scope: !1942)
!2238 = distinct !{!2238, !1944, !2239, !260}
!2239 = !DILocation(line: 319, column: 2, scope: !1936)
!2240 = !{!"1085"}
!2241 = !DILocation(line: 321, column: 9, scope: !1899)
!2242 = !{!"1086"}
!2243 = !{!"1087"}
!2244 = !DILocation(line: 321, column: 2, scope: !1899)
!2245 = !{!"1088"}
!2246 = !DILocation(line: 321, column: 7, scope: !1899)
!2247 = !{!"1089"}
!2248 = !DILocation(line: 322, column: 9, scope: !1899)
!2249 = !{!"1090"}
!2250 = !{!"1091"}
!2251 = !DILocation(line: 322, column: 2, scope: !1899)
!2252 = !{!"1092"}
!2253 = !DILocation(line: 322, column: 7, scope: !1899)
!2254 = !{!"1093"}
!2255 = !DILocation(line: 323, column: 9, scope: !1899)
!2256 = !{!"1094"}
!2257 = !{!"1095"}
!2258 = !DILocation(line: 323, column: 2, scope: !1899)
!2259 = !{!"1096"}
!2260 = !DILocation(line: 323, column: 7, scope: !1899)
!2261 = !{!"1097"}
!2262 = !DILocation(line: 324, column: 9, scope: !1899)
!2263 = !{!"1098"}
!2264 = !{!"1099"}
!2265 = !DILocation(line: 324, column: 2, scope: !1899)
!2266 = !{!"1100"}
!2267 = !DILocation(line: 324, column: 7, scope: !1899)
!2268 = !{!"1101"}
!2269 = !DILocation(line: 325, column: 9, scope: !1899)
!2270 = !{!"1102"}
!2271 = !{!"1103"}
!2272 = !DILocation(line: 325, column: 2, scope: !1899)
!2273 = !{!"1104"}
!2274 = !DILocation(line: 325, column: 7, scope: !1899)
!2275 = !{!"1105"}
!2276 = !DILocation(line: 430, column: 1, scope: !1899)
!2277 = !{!"1106"}
!2278 = !DILocalVariable(name: "d", arg: 1, scope: !50, file: !3, line: 467, type: !38)
!2279 = !DILocation(line: 0, scope: !50)
!2280 = !{!"1107"}
!2281 = !DILocalVariable(name: "a", arg: 2, scope: !50, file: !3, line: 467, type: !39)
!2282 = !{!"1108"}
!2283 = !{!"1109"}
!2284 = !DILocation(line: 474, column: 2, scope: !50)
!2285 = !{!"1110"}
!2286 = !DILocation(line: 475, column: 1, scope: !50)
!2287 = !{!"1111"}
!2288 = distinct !DISubprogram(name: "f256_encode", scope: !3, file: !3, line: 642, type: !2289, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{null, !86, !39}
!2291 = !DILocalVariable(name: "buf", arg: 1, scope: !2288, file: !3, line: 642, type: !86)
!2292 = !DILocation(line: 0, scope: !2288)
!2293 = !{!"1112"}
!2294 = !DILocalVariable(name: "a", arg: 2, scope: !2288, file: !3, line: 642, type: !39)
!2295 = !{!"1113"}
!2296 = !DILocation(line: 646, column: 7, scope: !2288)
!2297 = !{!"1114"}
!2298 = !{!"1115"}
!2299 = !DILocation(line: 646, column: 15, scope: !2288)
!2300 = !{!"1116"}
!2301 = !{!"1117"}
!2302 = !DILocation(line: 646, column: 20, scope: !2288)
!2303 = !{!"1118"}
!2304 = !DILocation(line: 646, column: 12, scope: !2288)
!2305 = !{!"1119"}
!2306 = !DILocalVariable(name: "w0", scope: !2288, file: !3, line: 644, type: !15)
!2307 = !{!"1120"}
!2308 = !DILocation(line: 647, column: 8, scope: !2288)
!2309 = !{!"1121"}
!2310 = !{!"1122"}
!2311 = !DILocation(line: 647, column: 13, scope: !2288)
!2312 = !{!"1123"}
!2313 = !DILocation(line: 647, column: 23, scope: !2288)
!2314 = !{!"1124"}
!2315 = !{!"1125"}
!2316 = !DILocation(line: 647, column: 28, scope: !2288)
!2317 = !{!"1126"}
!2318 = !DILocation(line: 647, column: 20, scope: !2288)
!2319 = !{!"1127"}
!2320 = !DILocalVariable(name: "w1", scope: !2288, file: !3, line: 644, type: !15)
!2321 = !{!"1128"}
!2322 = !DILocation(line: 648, column: 8, scope: !2288)
!2323 = !{!"1129"}
!2324 = !{!"1130"}
!2325 = !DILocation(line: 648, column: 13, scope: !2288)
!2326 = !{!"1131"}
!2327 = !DILocation(line: 648, column: 23, scope: !2288)
!2328 = !{!"1132"}
!2329 = !{!"1133"}
!2330 = !DILocation(line: 648, column: 28, scope: !2288)
!2331 = !{!"1134"}
!2332 = !DILocation(line: 648, column: 20, scope: !2288)
!2333 = !{!"1135"}
!2334 = !DILocalVariable(name: "w2", scope: !2288, file: !3, line: 644, type: !15)
!2335 = !{!"1136"}
!2336 = !DILocation(line: 649, column: 8, scope: !2288)
!2337 = !{!"1137"}
!2338 = !{!"1138"}
!2339 = !DILocation(line: 649, column: 13, scope: !2288)
!2340 = !{!"1139"}
!2341 = !DILocation(line: 649, column: 23, scope: !2288)
!2342 = !{!"1140"}
!2343 = !{!"1141"}
!2344 = !DILocation(line: 649, column: 28, scope: !2288)
!2345 = !{!"1142"}
!2346 = !DILocation(line: 649, column: 20, scope: !2288)
!2347 = !{!"1143"}
!2348 = !DILocalVariable(name: "w3", scope: !2288, file: !3, line: 644, type: !15)
!2349 = !{!"1144"}
!2350 = !DILocation(line: 650, column: 17, scope: !2288)
!2351 = !{!"1145"}
!2352 = !DILocation(line: 650, column: 2, scope: !2288)
!2353 = !{!"1146"}
!2354 = !DILocation(line: 651, column: 17, scope: !2288)
!2355 = !{!"1147"}
!2356 = !DILocation(line: 651, column: 2, scope: !2288)
!2357 = !{!"1148"}
!2358 = !DILocation(line: 652, column: 17, scope: !2288)
!2359 = !{!"1149"}
!2360 = !DILocation(line: 652, column: 2, scope: !2288)
!2361 = !{!"1150"}
!2362 = !DILocation(line: 653, column: 17, scope: !2288)
!2363 = !{!"1151"}
!2364 = !DILocation(line: 653, column: 2, scope: !2288)
!2365 = !{!"1152"}
!2366 = !DILocation(line: 654, column: 1, scope: !2288)
!2367 = !{!"1153"}
!2368 = distinct !DISubprogram(name: "NEQ", scope: !265, file: !265, line: 791, type: !1397, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2369 = !DILocalVariable(name: "x", arg: 1, scope: !2368, file: !265, line: 791, type: !11)
!2370 = !DILocation(line: 0, scope: !2368)
!2371 = !{!"1154"}
!2372 = !DILocalVariable(name: "y", arg: 2, scope: !2368, file: !265, line: 791, type: !11)
!2373 = !{!"1155"}
!2374 = !DILocation(line: 795, column: 8, scope: !2368)
!2375 = !{!"1156"}
!2376 = !DILocalVariable(name: "q", scope: !2368, file: !265, line: 793, type: !11)
!2377 = !{!"1157"}
!2378 = !DILocation(line: 796, column: 14, scope: !2368)
!2379 = !{!"1158"}
!2380 = !DILocation(line: 796, column: 12, scope: !2368)
!2381 = !{!"1159"}
!2382 = !DILocation(line: 796, column: 18, scope: !2368)
!2383 = !{!"1160"}
!2384 = !DILocation(line: 796, column: 2, scope: !2368)
!2385 = !{!"1161"}
!2386 = distinct !DISubprogram(name: "br_enc64be", scope: !265, file: !265, line: 620, type: !2387, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !20, !15}
!2389 = !DILocalVariable(name: "dst", arg: 1, scope: !2386, file: !265, line: 620, type: !20)
!2390 = !DILocation(line: 0, scope: !2386)
!2391 = !{!"1162"}
!2392 = !DILocalVariable(name: "x", arg: 2, scope: !2386, file: !265, line: 620, type: !15)
!2393 = !{!"1163"}
!2394 = !DILocalVariable(name: "buf", scope: !2386, file: !265, line: 625, type: !86)
!2395 = !{!"1164"}
!2396 = !DILocation(line: 628, column: 31, scope: !2386)
!2397 = !{!"1165"}
!2398 = !DILocation(line: 628, column: 18, scope: !2386)
!2399 = !{!"1166"}
!2400 = !DILocation(line: 628, column: 2, scope: !2386)
!2401 = !{!"1167"}
!2402 = !DILocation(line: 629, column: 17, scope: !2386)
!2403 = !{!"1168"}
!2404 = !DILocation(line: 629, column: 22, scope: !2386)
!2405 = !{!"1169"}
!2406 = !DILocation(line: 629, column: 2, scope: !2386)
!2407 = !{!"1170"}
!2408 = !DILocation(line: 631, column: 1, scope: !2386)
!2409 = !{!"1171"}
!2410 = distinct !DISubprogram(name: "br_enc32be", scope: !265, file: !265, line: 558, type: !2411, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !20, !11}
!2413 = !DILocalVariable(name: "dst", arg: 1, scope: !2410, file: !265, line: 558, type: !20)
!2414 = !DILocation(line: 0, scope: !2410)
!2415 = !{!"1172"}
!2416 = !DILocalVariable(name: "x", arg: 2, scope: !2410, file: !265, line: 558, type: !11)
!2417 = !{!"1173"}
!2418 = !DILocalVariable(name: "buf", scope: !2410, file: !265, line: 563, type: !86)
!2419 = !{!"1174"}
!2420 = !DILocation(line: 566, column: 29, scope: !2410)
!2421 = !{!"1175"}
!2422 = !DILocation(line: 566, column: 11, scope: !2410)
!2423 = !{!"1176"}
!2424 = !DILocation(line: 566, column: 2, scope: !2410)
!2425 = !{!"1177"}
!2426 = !DILocation(line: 566, column: 9, scope: !2410)
!2427 = !{!"1178"}
!2428 = !DILocation(line: 567, column: 29, scope: !2410)
!2429 = !{!"1179"}
!2430 = !DILocation(line: 567, column: 11, scope: !2410)
!2431 = !{!"1180"}
!2432 = !DILocation(line: 567, column: 2, scope: !2410)
!2433 = !{!"1181"}
!2434 = !DILocation(line: 567, column: 9, scope: !2410)
!2435 = !{!"1182"}
!2436 = !DILocation(line: 568, column: 29, scope: !2410)
!2437 = !{!"1183"}
!2438 = !DILocation(line: 568, column: 11, scope: !2410)
!2439 = !{!"1184"}
!2440 = !DILocation(line: 568, column: 2, scope: !2410)
!2441 = !{!"1185"}
!2442 = !DILocation(line: 568, column: 9, scope: !2410)
!2443 = !{!"1186"}
!2444 = !DILocation(line: 569, column: 11, scope: !2410)
!2445 = !{!"1187"}
!2446 = !DILocation(line: 569, column: 2, scope: !2410)
!2447 = !{!"1188"}
!2448 = !DILocation(line: 569, column: 9, scope: !2410)
!2449 = !{!"1189"}
!2450 = !DILocation(line: 571, column: 1, scope: !2410)
!2451 = !{!"1190"}
!2452 = distinct !DISubprogram(name: "f256_add", scope: !3, file: !3, line: 107, type: !1900, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2453 = !DILocalVariable(name: "d", arg: 1, scope: !2452, file: !3, line: 107, type: !38)
!2454 = !DILocation(line: 0, scope: !2452)
!2455 = !{!"1191"}
!2456 = !DILocalVariable(name: "a", arg: 2, scope: !2452, file: !3, line: 107, type: !39)
!2457 = !{!"1192"}
!2458 = !DILocalVariable(name: "b", arg: 3, scope: !2452, file: !3, line: 107, type: !39)
!2459 = !{!"1193"}
!2460 = !DILocation(line: 109, column: 9, scope: !2452)
!2461 = !{!"1194"}
!2462 = !{!"1195"}
!2463 = !DILocation(line: 109, column: 16, scope: !2452)
!2464 = !{!"1196"}
!2465 = !{!"1197"}
!2466 = !DILocation(line: 109, column: 14, scope: !2452)
!2467 = !{!"1198"}
!2468 = !DILocation(line: 109, column: 2, scope: !2452)
!2469 = !{!"1199"}
!2470 = !DILocation(line: 109, column: 7, scope: !2452)
!2471 = !{!"1200"}
!2472 = !DILocation(line: 110, column: 9, scope: !2452)
!2473 = !{!"1201"}
!2474 = !{!"1202"}
!2475 = !DILocation(line: 110, column: 16, scope: !2452)
!2476 = !{!"1203"}
!2477 = !{!"1204"}
!2478 = !DILocation(line: 110, column: 14, scope: !2452)
!2479 = !{!"1205"}
!2480 = !DILocation(line: 110, column: 2, scope: !2452)
!2481 = !{!"1206"}
!2482 = !DILocation(line: 110, column: 7, scope: !2452)
!2483 = !{!"1207"}
!2484 = !DILocation(line: 111, column: 9, scope: !2452)
!2485 = !{!"1208"}
!2486 = !{!"1209"}
!2487 = !DILocation(line: 111, column: 16, scope: !2452)
!2488 = !{!"1210"}
!2489 = !{!"1211"}
!2490 = !DILocation(line: 111, column: 14, scope: !2452)
!2491 = !{!"1212"}
!2492 = !DILocation(line: 111, column: 2, scope: !2452)
!2493 = !{!"1213"}
!2494 = !DILocation(line: 111, column: 7, scope: !2452)
!2495 = !{!"1214"}
!2496 = !DILocation(line: 112, column: 9, scope: !2452)
!2497 = !{!"1215"}
!2498 = !{!"1216"}
!2499 = !DILocation(line: 112, column: 16, scope: !2452)
!2500 = !{!"1217"}
!2501 = !{!"1218"}
!2502 = !DILocation(line: 112, column: 14, scope: !2452)
!2503 = !{!"1219"}
!2504 = !DILocation(line: 112, column: 2, scope: !2452)
!2505 = !{!"1220"}
!2506 = !DILocation(line: 112, column: 7, scope: !2452)
!2507 = !{!"1221"}
!2508 = !DILocation(line: 113, column: 9, scope: !2452)
!2509 = !{!"1222"}
!2510 = !{!"1223"}
!2511 = !DILocation(line: 113, column: 16, scope: !2452)
!2512 = !{!"1224"}
!2513 = !{!"1225"}
!2514 = !DILocation(line: 113, column: 14, scope: !2452)
!2515 = !{!"1226"}
!2516 = !DILocation(line: 113, column: 2, scope: !2452)
!2517 = !{!"1227"}
!2518 = !DILocation(line: 113, column: 7, scope: !2452)
!2519 = !{!"1228"}
!2520 = !DILocation(line: 114, column: 1, scope: !2452)
!2521 = !{!"1229"}
!2522 = distinct !DISubprogram(name: "f256_sub", scope: !3, file: !3, line: 165, type: !1900, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2523 = !{!"1230"}
!2524 = !DILocalVariable(name: "d", arg: 1, scope: !2522, file: !3, line: 165, type: !38)
!2525 = !DILocation(line: 0, scope: !2522)
!2526 = !{!"1231"}
!2527 = !DILocalVariable(name: "a", arg: 2, scope: !2522, file: !3, line: 165, type: !39)
!2528 = !{!"1232"}
!2529 = !DILocalVariable(name: "b", arg: 3, scope: !2522, file: !3, line: 165, type: !39)
!2530 = !{!"1233"}
!2531 = !DILocalVariable(name: "t", scope: !2522, file: !3, line: 167, type: !59)
!2532 = !DILocation(line: 167, column: 11, scope: !2522)
!2533 = !{!"1234"}
!2534 = !DILocation(line: 185, column: 6, scope: !2522)
!2535 = !{!"1235"}
!2536 = !{!"1236"}
!2537 = !DILocation(line: 185, column: 13, scope: !2522)
!2538 = !{!"1237"}
!2539 = !{!"1238"}
!2540 = !DILocation(line: 185, column: 11, scope: !2522)
!2541 = !{!"1239"}
!2542 = !DILocation(line: 185, column: 18, scope: !2522)
!2543 = !{!"1240"}
!2544 = !DILocalVariable(name: "w", scope: !2522, file: !3, line: 167, type: !15)
!2545 = !{!"1241"}
!2546 = !DILocation(line: 186, column: 11, scope: !2522)
!2547 = !{!"1242"}
!2548 = !DILocation(line: 186, column: 2, scope: !2522)
!2549 = !{!"1243"}
!2550 = !DILocation(line: 186, column: 7, scope: !2522)
!2551 = !{!"1244"}
!2552 = !DILocation(line: 187, column: 9, scope: !2522)
!2553 = !{!"1245"}
!2554 = !DILocalVariable(name: "cc", scope: !2522, file: !3, line: 167, type: !15)
!2555 = !{!"1246"}
!2556 = !DILocation(line: 188, column: 13, scope: !2522)
!2557 = !{!"1247"}
!2558 = !DILocation(line: 188, column: 8, scope: !2522)
!2559 = !{!"1248"}
!2560 = !DILocation(line: 188, column: 5, scope: !2522)
!2561 = !{!"1249"}
!2562 = !{!"1250"}
!2563 = !DILocation(line: 189, column: 6, scope: !2522)
!2564 = !{!"1251"}
!2565 = !{!"1252"}
!2566 = !DILocation(line: 189, column: 13, scope: !2522)
!2567 = !{!"1253"}
!2568 = !{!"1254"}
!2569 = !DILocation(line: 189, column: 11, scope: !2522)
!2570 = !{!"1255"}
!2571 = !DILocation(line: 189, column: 18, scope: !2522)
!2572 = !{!"1256"}
!2573 = !{!"1257"}
!2574 = !DILocation(line: 190, column: 11, scope: !2522)
!2575 = !{!"1258"}
!2576 = !DILocation(line: 190, column: 2, scope: !2522)
!2577 = !{!"1259"}
!2578 = !DILocation(line: 190, column: 7, scope: !2522)
!2579 = !{!"1260"}
!2580 = !DILocation(line: 191, column: 9, scope: !2522)
!2581 = !{!"1261"}
!2582 = !{!"1262"}
!2583 = !DILocation(line: 192, column: 13, scope: !2522)
!2584 = !{!"1263"}
!2585 = !DILocation(line: 192, column: 8, scope: !2522)
!2586 = !{!"1264"}
!2587 = !DILocation(line: 192, column: 5, scope: !2522)
!2588 = !{!"1265"}
!2589 = !{!"1266"}
!2590 = !DILocation(line: 193, column: 6, scope: !2522)
!2591 = !{!"1267"}
!2592 = !{!"1268"}
!2593 = !DILocation(line: 193, column: 13, scope: !2522)
!2594 = !{!"1269"}
!2595 = !{!"1270"}
!2596 = !DILocation(line: 193, column: 11, scope: !2522)
!2597 = !{!"1271"}
!2598 = !DILocation(line: 193, column: 18, scope: !2522)
!2599 = !{!"1272"}
!2600 = !{!"1273"}
!2601 = !DILocation(line: 194, column: 12, scope: !2522)
!2602 = !{!"1274"}
!2603 = !DILocation(line: 194, column: 22, scope: !2522)
!2604 = !{!"1275"}
!2605 = !DILocation(line: 194, column: 2, scope: !2522)
!2606 = !{!"1276"}
!2607 = !DILocation(line: 194, column: 7, scope: !2522)
!2608 = !{!"1277"}
!2609 = !DILocation(line: 195, column: 9, scope: !2522)
!2610 = !{!"1278"}
!2611 = !{!"1279"}
!2612 = !DILocation(line: 196, column: 13, scope: !2522)
!2613 = !{!"1280"}
!2614 = !DILocation(line: 196, column: 8, scope: !2522)
!2615 = !{!"1281"}
!2616 = !DILocation(line: 196, column: 5, scope: !2522)
!2617 = !{!"1282"}
!2618 = !{!"1283"}
!2619 = !DILocation(line: 197, column: 6, scope: !2522)
!2620 = !{!"1284"}
!2621 = !{!"1285"}
!2622 = !DILocation(line: 197, column: 13, scope: !2522)
!2623 = !{!"1286"}
!2624 = !{!"1287"}
!2625 = !DILocation(line: 197, column: 11, scope: !2522)
!2626 = !{!"1288"}
!2627 = !DILocation(line: 197, column: 18, scope: !2522)
!2628 = !{!"1289"}
!2629 = !{!"1290"}
!2630 = !DILocation(line: 198, column: 12, scope: !2522)
!2631 = !{!"1291"}
!2632 = !DILocation(line: 198, column: 22, scope: !2522)
!2633 = !{!"1292"}
!2634 = !DILocation(line: 198, column: 2, scope: !2522)
!2635 = !{!"1293"}
!2636 = !DILocation(line: 198, column: 7, scope: !2522)
!2637 = !{!"1294"}
!2638 = !DILocation(line: 199, column: 9, scope: !2522)
!2639 = !{!"1295"}
!2640 = !{!"1296"}
!2641 = !DILocation(line: 200, column: 13, scope: !2522)
!2642 = !{!"1297"}
!2643 = !DILocation(line: 200, column: 8, scope: !2522)
!2644 = !{!"1298"}
!2645 = !DILocation(line: 200, column: 5, scope: !2522)
!2646 = !{!"1299"}
!2647 = !{!"1300"}
!2648 = !DILocation(line: 201, column: 31, scope: !2522)
!2649 = !{!"1301"}
!2650 = !{!"1302"}
!2651 = !DILocation(line: 201, column: 29, scope: !2522)
!2652 = !{!"1303"}
!2653 = !DILocation(line: 201, column: 38, scope: !2522)
!2654 = !{!"1304"}
!2655 = !{!"1305"}
!2656 = !DILocation(line: 201, column: 36, scope: !2522)
!2657 = !{!"1306"}
!2658 = !DILocation(line: 201, column: 43, scope: !2522)
!2659 = !{!"1307"}
!2660 = !DILocation(line: 201, column: 2, scope: !2522)
!2661 = !{!"1308"}
!2662 = !DILocation(line: 201, column: 7, scope: !2522)
!2663 = !{!"1309"}
!2664 = !DILocation(line: 217, column: 6, scope: !2522)
!2665 = !{!"1310"}
!2666 = !{!"1311"}
!2667 = !DILocation(line: 217, column: 11, scope: !2522)
!2668 = !{!"1312"}
!2669 = !DILocalVariable(name: "s", scope: !2522, file: !3, line: 167, type: !15)
!2670 = !{!"1313"}
!2671 = !DILocation(line: 219, column: 9, scope: !2522)
!2672 = !{!"1314"}
!2673 = !{!"1315"}
!2674 = !DILocation(line: 219, column: 14, scope: !2522)
!2675 = !{!"1316"}
!2676 = !DILocation(line: 219, column: 2, scope: !2522)
!2677 = !{!"1317"}
!2678 = !DILocation(line: 219, column: 7, scope: !2522)
!2679 = !{!"1318"}
!2680 = !DILocation(line: 220, column: 6, scope: !2522)
!2681 = !{!"1319"}
!2682 = !{!"1320"}
!2683 = !DILocation(line: 220, column: 16, scope: !2522)
!2684 = !{!"1321"}
!2685 = !DILocation(line: 220, column: 11, scope: !2522)
!2686 = !{!"1322"}
!2687 = !{!"1323"}
!2688 = !DILocation(line: 221, column: 11, scope: !2522)
!2689 = !{!"1324"}
!2690 = !DILocation(line: 221, column: 2, scope: !2522)
!2691 = !{!"1325"}
!2692 = !DILocation(line: 221, column: 7, scope: !2522)
!2693 = !{!"1326"}
!2694 = !DILocation(line: 222, column: 11, scope: !2522)
!2695 = !{!"1327"}
!2696 = !DILocation(line: 222, column: 7, scope: !2522)
!2697 = !{!"1328"}
!2698 = !DILocation(line: 222, column: 18, scope: !2522)
!2699 = !{!"1329"}
!2700 = !{!"1330"}
!2701 = !DILocation(line: 223, column: 6, scope: !2522)
!2702 = !{!"1331"}
!2703 = !{!"1332"}
!2704 = !DILocation(line: 223, column: 11, scope: !2522)
!2705 = !{!"1333"}
!2706 = !{!"1334"}
!2707 = !DILocation(line: 224, column: 9, scope: !2522)
!2708 = !{!"1335"}
!2709 = !{!"1336"}
!2710 = !DILocation(line: 225, column: 17, scope: !2522)
!2711 = !{!"1337"}
!2712 = !DILocation(line: 225, column: 11, scope: !2522)
!2713 = !{!"1338"}
!2714 = !DILocation(line: 225, column: 2, scope: !2522)
!2715 = !{!"1339"}
!2716 = !DILocation(line: 225, column: 7, scope: !2522)
!2717 = !{!"1340"}
!2718 = !DILocation(line: 226, column: 6, scope: !2522)
!2719 = !{!"1341"}
!2720 = !{!"1342"}
!2721 = !DILocation(line: 226, column: 11, scope: !2522)
!2722 = !{!"1343"}
!2723 = !DILocation(line: 226, column: 21, scope: !2522)
!2724 = !{!"1344"}
!2725 = !DILocation(line: 226, column: 16, scope: !2522)
!2726 = !{!"1345"}
!2727 = !{!"1346"}
!2728 = !DILocation(line: 227, column: 9, scope: !2522)
!2729 = !{!"1347"}
!2730 = !{!"1348"}
!2731 = !DILocation(line: 228, column: 17, scope: !2522)
!2732 = !{!"1349"}
!2733 = !DILocation(line: 228, column: 11, scope: !2522)
!2734 = !{!"1350"}
!2735 = !DILocation(line: 228, column: 2, scope: !2522)
!2736 = !{!"1351"}
!2737 = !DILocation(line: 228, column: 7, scope: !2522)
!2738 = !{!"1352"}
!2739 = !DILocation(line: 229, column: 10, scope: !2522)
!2740 = !{!"1353"}
!2741 = !{!"1354"}
!2742 = !DILocation(line: 229, column: 15, scope: !2522)
!2743 = !{!"1355"}
!2744 = !DILocation(line: 229, column: 30, scope: !2522)
!2745 = !{!"1356"}
!2746 = !DILocation(line: 229, column: 25, scope: !2522)
!2747 = !{!"1357"}
!2748 = !DILocation(line: 229, column: 37, scope: !2522)
!2749 = !{!"1358"}
!2750 = !DILocation(line: 229, column: 2, scope: !2522)
!2751 = !{!"1359"}
!2752 = !DILocation(line: 229, column: 7, scope: !2522)
!2753 = !{!"1360"}
!2754 = !DILocation(line: 236, column: 1, scope: !2522)
!2755 = !{!"1361"}
!2756 = distinct !DISubprogram(name: "f256_partial_reduce", scope: !3, file: !3, line: 122, type: !1153, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2757 = !DILocalVariable(name: "a", arg: 1, scope: !2756, file: !3, line: 122, type: !38)
!2758 = !DILocation(line: 0, scope: !2756)
!2759 = !{!"1362"}
!2760 = !DILocation(line: 129, column: 6, scope: !2756)
!2761 = !{!"1363"}
!2762 = !{!"1364"}
!2763 = !DILocalVariable(name: "w", scope: !2756, file: !3, line: 124, type: !15)
!2764 = !{!"1365"}
!2765 = !DILocation(line: 130, column: 11, scope: !2756)
!2766 = !{!"1366"}
!2767 = !DILocation(line: 130, column: 2, scope: !2756)
!2768 = !{!"1367"}
!2769 = !DILocation(line: 130, column: 7, scope: !2756)
!2770 = !{!"1368"}
!2771 = !DILocation(line: 131, column: 9, scope: !2756)
!2772 = !{!"1369"}
!2773 = !DILocalVariable(name: "cc", scope: !2756, file: !3, line: 124, type: !15)
!2774 = !{!"1370"}
!2775 = !DILocation(line: 132, column: 6, scope: !2756)
!2776 = !{!"1371"}
!2777 = !{!"1372"}
!2778 = !DILocation(line: 132, column: 11, scope: !2756)
!2779 = !{!"1373"}
!2780 = !{!"1374"}
!2781 = !DILocation(line: 133, column: 11, scope: !2756)
!2782 = !{!"1375"}
!2783 = !DILocation(line: 133, column: 2, scope: !2756)
!2784 = !{!"1376"}
!2785 = !DILocation(line: 133, column: 7, scope: !2756)
!2786 = !{!"1377"}
!2787 = !DILocation(line: 134, column: 9, scope: !2756)
!2788 = !{!"1378"}
!2789 = !{!"1379"}
!2790 = !DILocation(line: 135, column: 6, scope: !2756)
!2791 = !{!"1380"}
!2792 = !{!"1381"}
!2793 = !DILocation(line: 135, column: 11, scope: !2756)
!2794 = !{!"1382"}
!2795 = !{!"1383"}
!2796 = !DILocation(line: 136, column: 11, scope: !2756)
!2797 = !{!"1384"}
!2798 = !DILocation(line: 136, column: 2, scope: !2756)
!2799 = !{!"1385"}
!2800 = !DILocation(line: 136, column: 7, scope: !2756)
!2801 = !{!"1386"}
!2802 = !DILocation(line: 137, column: 9, scope: !2756)
!2803 = !{!"1387"}
!2804 = !{!"1388"}
!2805 = !DILocation(line: 138, column: 6, scope: !2756)
!2806 = !{!"1389"}
!2807 = !{!"1390"}
!2808 = !DILocation(line: 138, column: 11, scope: !2756)
!2809 = !{!"1391"}
!2810 = !{!"1392"}
!2811 = !DILocation(line: 139, column: 11, scope: !2756)
!2812 = !{!"1393"}
!2813 = !DILocation(line: 139, column: 2, scope: !2756)
!2814 = !{!"1394"}
!2815 = !DILocation(line: 139, column: 7, scope: !2756)
!2816 = !{!"1395"}
!2817 = !DILocation(line: 140, column: 9, scope: !2756)
!2818 = !{!"1396"}
!2819 = !{!"1397"}
!2820 = !DILocation(line: 141, column: 2, scope: !2756)
!2821 = !{!"1398"}
!2822 = !DILocation(line: 141, column: 7, scope: !2756)
!2823 = !{!"1399"}
!2824 = !{!"1400"}
!2825 = !{!"1401"}
!2826 = !DILocation(line: 143, column: 6, scope: !2756)
!2827 = !{!"1402"}
!2828 = !{!"1403"}
!2829 = !DILocation(line: 143, column: 11, scope: !2756)
!2830 = !{!"1404"}
!2831 = !DILocalVariable(name: "s", scope: !2756, file: !3, line: 124, type: !15)
!2832 = !{!"1405"}
!2833 = !DILocation(line: 144, column: 2, scope: !2756)
!2834 = !{!"1406"}
!2835 = !DILocation(line: 144, column: 7, scope: !2756)
!2836 = !{!"1407"}
!2837 = !{!"1408"}
!2838 = !{!"1409"}
!2839 = !DILocation(line: 145, column: 6, scope: !2756)
!2840 = !{!"1410"}
!2841 = !{!"1411"}
!2842 = !DILocation(line: 145, column: 16, scope: !2756)
!2843 = !{!"1412"}
!2844 = !DILocation(line: 145, column: 11, scope: !2756)
!2845 = !{!"1413"}
!2846 = !{!"1414"}
!2847 = !DILocation(line: 146, column: 11, scope: !2756)
!2848 = !{!"1415"}
!2849 = !DILocation(line: 146, column: 2, scope: !2756)
!2850 = !{!"1416"}
!2851 = !DILocation(line: 146, column: 7, scope: !2756)
!2852 = !{!"1417"}
!2853 = !DILocation(line: 147, column: 11, scope: !2756)
!2854 = !{!"1418"}
!2855 = !DILocation(line: 147, column: 7, scope: !2756)
!2856 = !{!"1419"}
!2857 = !DILocation(line: 147, column: 18, scope: !2756)
!2858 = !{!"1420"}
!2859 = !{!"1421"}
!2860 = !DILocation(line: 148, column: 6, scope: !2756)
!2861 = !{!"1422"}
!2862 = !{!"1423"}
!2863 = !DILocation(line: 148, column: 11, scope: !2756)
!2864 = !{!"1424"}
!2865 = !{!"1425"}
!2866 = !DILocation(line: 149, column: 11, scope: !2756)
!2867 = !{!"1426"}
!2868 = !DILocation(line: 149, column: 2, scope: !2756)
!2869 = !{!"1427"}
!2870 = !DILocation(line: 149, column: 7, scope: !2756)
!2871 = !{!"1428"}
!2872 = !DILocation(line: 150, column: 9, scope: !2756)
!2873 = !{!"1429"}
!2874 = !{!"1430"}
!2875 = !DILocation(line: 151, column: 6, scope: !2756)
!2876 = !{!"1431"}
!2877 = !{!"1432"}
!2878 = !DILocation(line: 151, column: 11, scope: !2756)
!2879 = !{!"1433"}
!2880 = !DILocation(line: 151, column: 21, scope: !2756)
!2881 = !{!"1434"}
!2882 = !DILocation(line: 151, column: 16, scope: !2756)
!2883 = !{!"1435"}
!2884 = !{!"1436"}
!2885 = !DILocation(line: 152, column: 11, scope: !2756)
!2886 = !{!"1437"}
!2887 = !DILocation(line: 152, column: 2, scope: !2756)
!2888 = !{!"1438"}
!2889 = !DILocation(line: 152, column: 7, scope: !2756)
!2890 = !{!"1439"}
!2891 = !DILocation(line: 153, column: 9, scope: !2756)
!2892 = !{!"1440"}
!2893 = !{!"1441"}
!2894 = !DILocation(line: 154, column: 6, scope: !2756)
!2895 = !{!"1442"}
!2896 = !{!"1443"}
!2897 = !DILocation(line: 154, column: 11, scope: !2756)
!2898 = !{!"1444"}
!2899 = !{!"1445"}
!2900 = !DILocation(line: 155, column: 16, scope: !2756)
!2901 = !{!"1446"}
!2902 = !DILocation(line: 155, column: 11, scope: !2756)
!2903 = !{!"1447"}
!2904 = !DILocation(line: 155, column: 23, scope: !2756)
!2905 = !{!"1448"}
!2906 = !DILocation(line: 155, column: 2, scope: !2756)
!2907 = !{!"1449"}
!2908 = !DILocation(line: 155, column: 7, scope: !2756)
!2909 = !{!"1450"}
!2910 = !DILocation(line: 156, column: 1, scope: !2756)
!2911 = !{!"1451"}
!2912 = distinct !DISubprogram(name: "NOT", scope: !265, file: !265, line: 761, type: !2913, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!11, !11}
!2915 = !DILocalVariable(name: "ctl", arg: 1, scope: !2912, file: !265, line: 761, type: !11)
!2916 = !DILocation(line: 0, scope: !2912)
!2917 = !{!"1452"}
!2918 = !DILocation(line: 763, column: 13, scope: !2912)
!2919 = !{!"1453"}
!2920 = !DILocation(line: 763, column: 2, scope: !2912)
!2921 = !{!"1454"}
!2922 = distinct !DISubprogram(name: "point_mul_inner", scope: !3, file: !3, line: 1251, type: !2923, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !533, !2925, !73, !75}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!2926 = !{!"1455"}
!2927 = !{!"1456"}
!2928 = !{!"1457"}
!2929 = !DILocalVariable(name: "R", arg: 1, scope: !2922, file: !3, line: 1251, type: !533)
!2930 = !DILocation(line: 0, scope: !2922)
!2931 = !{!"1458"}
!2932 = !DILocalVariable(name: "W", arg: 2, scope: !2922, file: !3, line: 1251, type: !2925)
!2933 = !{!"1459"}
!2934 = !DILocalVariable(name: "k", arg: 3, scope: !2922, file: !3, line: 1252, type: !73)
!2935 = !{!"1460"}
!2936 = !DILocalVariable(name: "klen", arg: 4, scope: !2922, file: !3, line: 1252, type: !75)
!2937 = !{!"1461"}
!2938 = !DILocalVariable(name: "Q", scope: !2922, file: !3, line: 1254, type: !331)
!2939 = !DILocation(line: 1254, column: 16, scope: !2922)
!2940 = !{!"1462"}
!2941 = !DILocation(line: 1257, column: 2, scope: !2922)
!2942 = !{!"1463"}
!2943 = !{!"1464"}
!2944 = !DILocalVariable(name: "qz", scope: !2922, file: !3, line: 1255, type: !11)
!2945 = !{!"1465"}
!2946 = !DILocation(line: 1259, column: 2, scope: !2922)
!2947 = !{!"1466"}
!2948 = !DILocation(line: 1258, column: 5, scope: !2922)
!2949 = !{!"1467"}
!2950 = !{!"1468"}
!2951 = !{!"1469"}
!2952 = !{!"1470"}
!2953 = !{!"1471"}
!2954 = !{!"1472"}
!2955 = !DILocation(line: 1259, column: 14, scope: !2922)
!2956 = !{!"1473"}
!2957 = !{!"1474"}
!2958 = !DILocation(line: 1259, column: 17, scope: !2922)
!2959 = !{!"1475"}
!2960 = !{!"1476"}
!2961 = !DILocation(line: 1263, column: 11, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 1259, column: 22)
!2963 = !{!"1477"}
!2964 = !{!"1478"}
!2965 = !DILocation(line: 1263, column: 8, scope: !2962)
!2966 = !{!"1479"}
!2967 = !{!"1480"}
!2968 = !DILocalVariable(name: "bk", scope: !2962, file: !3, line: 1261, type: !14)
!2969 = !DILocation(line: 0, scope: !2962)
!2970 = !{!"1481"}
!2971 = !DILocalVariable(name: "i", scope: !2962, file: !3, line: 1260, type: !10)
!2972 = !{!"1482"}
!2973 = !DILocation(line: 1264, column: 8, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 1264, column: 3)
!2975 = !{!"1483"}
!2976 = !{!"1484"}
!2977 = !DILocation(line: 0, scope: !2974)
!2978 = !{!"1485"}
!2979 = !{!"1486"}
!2980 = !{!"1487"}
!2981 = !{!"1488"}
!2982 = !{!"1489"}
!2983 = !DILocation(line: 1264, column: 17, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 1264, column: 3)
!2985 = !{!"1490"}
!2986 = !DILocation(line: 1264, column: 3, scope: !2974)
!2987 = !{!"1491"}
!2988 = !DILocalVariable(name: "T", scope: !2989, file: !3, line: 1267, type: !55)
!2989 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 1264, column: 28)
!2990 = !DILocation(line: 1267, column: 16, scope: !2989)
!2991 = !{!"1492"}
!2992 = !DILocalVariable(name: "U", scope: !2989, file: !3, line: 1268, type: !331)
!2993 = !DILocation(line: 1268, column: 18, scope: !2989)
!2994 = !{!"1493"}
!2995 = !DILocation(line: 1273, column: 4, scope: !2989)
!2996 = !{!"1494"}
!2997 = !DILocation(line: 1274, column: 4, scope: !2989)
!2998 = !{!"1495"}
!2999 = !DILocation(line: 1275, column: 4, scope: !2989)
!3000 = !{!"1496"}
!3001 = !DILocation(line: 1276, column: 4, scope: !2989)
!3002 = !{!"1497"}
!3003 = !DILocation(line: 1277, column: 15, scope: !2989)
!3004 = !{!"1498"}
!3005 = !DILocation(line: 1277, column: 21, scope: !2989)
!3006 = !{!"1499"}
!3007 = !DILocalVariable(name: "bits", scope: !2989, file: !3, line: 1265, type: !11)
!3008 = !DILocation(line: 0, scope: !2989)
!3009 = !{!"1500"}
!3010 = !DILocation(line: 1278, column: 10, scope: !2989)
!3011 = !{!"1501"}
!3012 = !DILocalVariable(name: "bnz", scope: !2989, file: !3, line: 1266, type: !11)
!3013 = !{!"1502"}
!3014 = !DILocation(line: 1286, column: 4, scope: !2989)
!3015 = !{!"1503"}
!3016 = !{!"1504"}
!3017 = !DILocalVariable(name: "n", scope: !2989, file: !3, line: 1269, type: !11)
!3018 = !{!"1505"}
!3019 = !DILocation(line: 1287, column: 9, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1287, column: 4)
!3021 = !{!"1506"}
!3022 = !DILocation(line: 0, scope: !3020)
!3023 = !{!"1507"}
!3024 = !{!"1508"}
!3025 = !DILocation(line: 1287, column: 18, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 1287, column: 4)
!3027 = !{!"1509"}
!3028 = !DILocation(line: 1287, column: 4, scope: !3020)
!3029 = !{!"1510"}
!3030 = !DILocation(line: 1288, column: 31, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1287, column: 30)
!3032 = !{!"1511"}
!3033 = !DILocation(line: 1288, column: 20, scope: !3031)
!3034 = !{!"1512"}
!3035 = !DILocation(line: 1288, column: 10, scope: !3031)
!3036 = !{!"1513"}
!3037 = !DILocation(line: 1288, column: 9, scope: !3031)
!3038 = !{!"1514"}
!3039 = !DILocalVariable(name: "m", scope: !2989, file: !3, line: 1271, type: !15)
!3040 = !{!"1515"}
!3041 = !DILocation(line: 1289, column: 19, scope: !3031)
!3042 = !{!"1516"}
!3043 = !{!"1517"}
!3044 = !DILocation(line: 1289, column: 24, scope: !3031)
!3045 = !{!"1518"}
!3046 = !{!"1519"}
!3047 = !{!"1520"}
!3048 = !DILocation(line: 1289, column: 17, scope: !3031)
!3049 = !{!"1521"}
!3050 = !DILocation(line: 1289, column: 7, scope: !3031)
!3051 = !{!"1522"}
!3052 = !DILocation(line: 1289, column: 5, scope: !3031)
!3053 = !{!"1523"}
!3054 = !DILocation(line: 1289, column: 12, scope: !3031)
!3055 = !{!"1524"}
!3056 = !{!"1525"}
!3057 = !{!"1526"}
!3058 = !DILocation(line: 1290, column: 19, scope: !3031)
!3059 = !{!"1527"}
!3060 = !{!"1528"}
!3061 = !DILocation(line: 1290, column: 24, scope: !3031)
!3062 = !{!"1529"}
!3063 = !{!"1530"}
!3064 = !{!"1531"}
!3065 = !DILocation(line: 1290, column: 17, scope: !3031)
!3066 = !{!"1532"}
!3067 = !DILocation(line: 1290, column: 7, scope: !3031)
!3068 = !{!"1533"}
!3069 = !DILocation(line: 1290, column: 5, scope: !3031)
!3070 = !{!"1534"}
!3071 = !DILocation(line: 1290, column: 12, scope: !3031)
!3072 = !{!"1535"}
!3073 = !{!"1536"}
!3074 = !{!"1537"}
!3075 = !DILocation(line: 1291, column: 19, scope: !3031)
!3076 = !{!"1538"}
!3077 = !{!"1539"}
!3078 = !DILocation(line: 1291, column: 24, scope: !3031)
!3079 = !{!"1540"}
!3080 = !{!"1541"}
!3081 = !{!"1542"}
!3082 = !DILocation(line: 1291, column: 17, scope: !3031)
!3083 = !{!"1543"}
!3084 = !DILocation(line: 1291, column: 7, scope: !3031)
!3085 = !{!"1544"}
!3086 = !DILocation(line: 1291, column: 5, scope: !3031)
!3087 = !{!"1545"}
!3088 = !DILocation(line: 1291, column: 12, scope: !3031)
!3089 = !{!"1546"}
!3090 = !{!"1547"}
!3091 = !{!"1548"}
!3092 = !DILocation(line: 1292, column: 19, scope: !3031)
!3093 = !{!"1549"}
!3094 = !{!"1550"}
!3095 = !DILocation(line: 1292, column: 24, scope: !3031)
!3096 = !{!"1551"}
!3097 = !{!"1552"}
!3098 = !{!"1553"}
!3099 = !DILocation(line: 1292, column: 17, scope: !3031)
!3100 = !{!"1554"}
!3101 = !DILocation(line: 1292, column: 7, scope: !3031)
!3102 = !{!"1555"}
!3103 = !DILocation(line: 1292, column: 5, scope: !3031)
!3104 = !{!"1556"}
!3105 = !DILocation(line: 1292, column: 12, scope: !3031)
!3106 = !{!"1557"}
!3107 = !{!"1558"}
!3108 = !{!"1559"}
!3109 = !DILocation(line: 1293, column: 19, scope: !3031)
!3110 = !{!"1560"}
!3111 = !{!"1561"}
!3112 = !DILocation(line: 1293, column: 24, scope: !3031)
!3113 = !{!"1562"}
!3114 = !{!"1563"}
!3115 = !{!"1564"}
!3116 = !DILocation(line: 1293, column: 17, scope: !3031)
!3117 = !{!"1565"}
!3118 = !DILocation(line: 1293, column: 7, scope: !3031)
!3119 = !{!"1566"}
!3120 = !DILocation(line: 1293, column: 5, scope: !3031)
!3121 = !{!"1567"}
!3122 = !DILocation(line: 1293, column: 12, scope: !3031)
!3123 = !{!"1568"}
!3124 = !{!"1569"}
!3125 = !{!"1570"}
!3126 = !DILocation(line: 1294, column: 19, scope: !3031)
!3127 = !{!"1571"}
!3128 = !{!"1572"}
!3129 = !DILocation(line: 1294, column: 24, scope: !3031)
!3130 = !{!"1573"}
!3131 = !{!"1574"}
!3132 = !{!"1575"}
!3133 = !DILocation(line: 1294, column: 17, scope: !3031)
!3134 = !{!"1576"}
!3135 = !DILocation(line: 1294, column: 7, scope: !3031)
!3136 = !{!"1577"}
!3137 = !DILocation(line: 1294, column: 5, scope: !3031)
!3138 = !{!"1578"}
!3139 = !DILocation(line: 1294, column: 12, scope: !3031)
!3140 = !{!"1579"}
!3141 = !{!"1580"}
!3142 = !{!"1581"}
!3143 = !DILocation(line: 1295, column: 19, scope: !3031)
!3144 = !{!"1582"}
!3145 = !{!"1583"}
!3146 = !DILocation(line: 1295, column: 24, scope: !3031)
!3147 = !{!"1584"}
!3148 = !{!"1585"}
!3149 = !{!"1586"}
!3150 = !DILocation(line: 1295, column: 17, scope: !3031)
!3151 = !{!"1587"}
!3152 = !DILocation(line: 1295, column: 7, scope: !3031)
!3153 = !{!"1588"}
!3154 = !DILocation(line: 1295, column: 5, scope: !3031)
!3155 = !{!"1589"}
!3156 = !DILocation(line: 1295, column: 12, scope: !3031)
!3157 = !{!"1590"}
!3158 = !{!"1591"}
!3159 = !{!"1592"}
!3160 = !DILocation(line: 1296, column: 19, scope: !3031)
!3161 = !{!"1593"}
!3162 = !{!"1594"}
!3163 = !DILocation(line: 1296, column: 24, scope: !3031)
!3164 = !{!"1595"}
!3165 = !{!"1596"}
!3166 = !{!"1597"}
!3167 = !DILocation(line: 1296, column: 17, scope: !3031)
!3168 = !{!"1598"}
!3169 = !DILocation(line: 1296, column: 7, scope: !3031)
!3170 = !{!"1599"}
!3171 = !DILocation(line: 1296, column: 5, scope: !3031)
!3172 = !{!"1600"}
!3173 = !DILocation(line: 1296, column: 12, scope: !3031)
!3174 = !{!"1601"}
!3175 = !{!"1602"}
!3176 = !{!"1603"}
!3177 = !DILocation(line: 1297, column: 19, scope: !3031)
!3178 = !{!"1604"}
!3179 = !{!"1605"}
!3180 = !DILocation(line: 1297, column: 24, scope: !3031)
!3181 = !{!"1606"}
!3182 = !{!"1607"}
!3183 = !{!"1608"}
!3184 = !DILocation(line: 1297, column: 17, scope: !3031)
!3185 = !{!"1609"}
!3186 = !DILocation(line: 1297, column: 7, scope: !3031)
!3187 = !{!"1610"}
!3188 = !DILocation(line: 1297, column: 5, scope: !3031)
!3189 = !{!"1611"}
!3190 = !DILocation(line: 1297, column: 12, scope: !3031)
!3191 = !{!"1612"}
!3192 = !{!"1613"}
!3193 = !{!"1614"}
!3194 = !DILocation(line: 1298, column: 19, scope: !3031)
!3195 = !{!"1615"}
!3196 = !{!"1616"}
!3197 = !DILocation(line: 1298, column: 24, scope: !3031)
!3198 = !{!"1617"}
!3199 = !{!"1618"}
!3200 = !{!"1619"}
!3201 = !DILocation(line: 1298, column: 17, scope: !3031)
!3202 = !{!"1620"}
!3203 = !DILocation(line: 1298, column: 7, scope: !3031)
!3204 = !{!"1621"}
!3205 = !DILocation(line: 1298, column: 5, scope: !3031)
!3206 = !{!"1622"}
!3207 = !DILocation(line: 1298, column: 12, scope: !3031)
!3208 = !{!"1623"}
!3209 = !{!"1624"}
!3210 = !{!"1625"}
!3211 = !DILocation(line: 1299, column: 4, scope: !3031)
!3212 = !{!"1626"}
!3213 = !DILocation(line: 1287, column: 26, scope: !3026)
!3214 = !{!"1627"}
!3215 = !{!"1628"}
!3216 = !DILocation(line: 1287, column: 4, scope: !3026)
!3217 = distinct !{!3217, !3028, !3218, !260}
!3218 = !DILocation(line: 1299, column: 4, scope: !3020)
!3219 = !{!"1629"}
!3220 = !DILocation(line: 1301, column: 8, scope: !2989)
!3221 = !{!"1630"}
!3222 = !{!"1631"}
!3223 = !{!"1632"}
!3224 = !DILocation(line: 1302, column: 4, scope: !2989)
!3225 = !{!"1633"}
!3226 = !DILocation(line: 1308, column: 24, scope: !2989)
!3227 = !{!"1634"}
!3228 = !DILocation(line: 1308, column: 9, scope: !2989)
!3229 = !{!"1635"}
!3230 = !DILocation(line: 1308, column: 8, scope: !2989)
!3231 = !{!"1636"}
!3232 = !{!"1637"}
!3233 = !DILocalVariable(name: "j", scope: !2989, file: !3, line: 1270, type: !10)
!3234 = !{!"1638"}
!3235 = !DILocation(line: 1309, column: 9, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1309, column: 4)
!3237 = !{!"1639"}
!3238 = !DILocation(line: 0, scope: !3236)
!3239 = !{!"1640"}
!3240 = !{!"1641"}
!3241 = !DILocation(line: 1309, column: 18, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 1309, column: 4)
!3243 = !{!"1642"}
!3244 = !DILocation(line: 1309, column: 4, scope: !3236)
!3245 = !{!"1643"}
!3246 = !DILocation(line: 1310, column: 22, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 1309, column: 29)
!3248 = !{!"1644"}
!3249 = !DILocation(line: 1310, column: 20, scope: !3247)
!3250 = !{!"1645"}
!3251 = !{!"1646"}
!3252 = !{!"1647"}
!3253 = !DILocation(line: 1310, column: 31, scope: !3247)
!3254 = !{!"1648"}
!3255 = !DILocation(line: 1310, column: 29, scope: !3247)
!3256 = !{!"1649"}
!3257 = !{!"1650"}
!3258 = !{!"1651"}
!3259 = !DILocation(line: 1310, column: 27, scope: !3247)
!3260 = !{!"1652"}
!3261 = !DILocation(line: 1310, column: 17, scope: !3247)
!3262 = !{!"1653"}
!3263 = !DILocation(line: 1310, column: 7, scope: !3247)
!3264 = !{!"1654"}
!3265 = !DILocation(line: 1310, column: 5, scope: !3247)
!3266 = !{!"1655"}
!3267 = !{!"1656"}
!3268 = !DILocation(line: 1310, column: 12, scope: !3247)
!3269 = !{!"1657"}
!3270 = !{!"1658"}
!3271 = !{!"1659"}
!3272 = !DILocation(line: 1311, column: 22, scope: !3247)
!3273 = !{!"1660"}
!3274 = !DILocation(line: 1311, column: 20, scope: !3247)
!3275 = !{!"1661"}
!3276 = !{!"1662"}
!3277 = !{!"1663"}
!3278 = !DILocation(line: 1311, column: 31, scope: !3247)
!3279 = !{!"1664"}
!3280 = !DILocation(line: 1311, column: 29, scope: !3247)
!3281 = !{!"1665"}
!3282 = !{!"1666"}
!3283 = !{!"1667"}
!3284 = !DILocation(line: 1311, column: 27, scope: !3247)
!3285 = !{!"1668"}
!3286 = !DILocation(line: 1311, column: 17, scope: !3247)
!3287 = !{!"1669"}
!3288 = !DILocation(line: 1311, column: 7, scope: !3247)
!3289 = !{!"1670"}
!3290 = !DILocation(line: 1311, column: 5, scope: !3247)
!3291 = !{!"1671"}
!3292 = !{!"1672"}
!3293 = !DILocation(line: 1311, column: 12, scope: !3247)
!3294 = !{!"1673"}
!3295 = !{!"1674"}
!3296 = !{!"1675"}
!3297 = !DILocation(line: 1312, column: 22, scope: !3247)
!3298 = !{!"1676"}
!3299 = !DILocation(line: 1312, column: 20, scope: !3247)
!3300 = !{!"1677"}
!3301 = !{!"1678"}
!3302 = !{!"1679"}
!3303 = !DILocation(line: 1312, column: 29, scope: !3247)
!3304 = !{!"1680"}
!3305 = !{!"1681"}
!3306 = !{!"1682"}
!3307 = !DILocation(line: 1312, column: 27, scope: !3247)
!3308 = !{!"1683"}
!3309 = !DILocation(line: 1312, column: 17, scope: !3247)
!3310 = !{!"1684"}
!3311 = !DILocation(line: 1312, column: 7, scope: !3247)
!3312 = !{!"1685"}
!3313 = !DILocation(line: 1312, column: 5, scope: !3247)
!3314 = !{!"1686"}
!3315 = !{!"1687"}
!3316 = !DILocation(line: 1312, column: 12, scope: !3247)
!3317 = !{!"1688"}
!3318 = !{!"1689"}
!3319 = !{!"1690"}
!3320 = !DILocation(line: 1313, column: 4, scope: !3247)
!3321 = !{!"1691"}
!3322 = !DILocation(line: 1309, column: 25, scope: !3242)
!3323 = !{!"1692"}
!3324 = !{!"1693"}
!3325 = !DILocation(line: 1309, column: 4, scope: !3242)
!3326 = distinct !{!3326, !3244, !3327, !260}
!3327 = !DILocation(line: 1313, column: 4, scope: !3236)
!3328 = !{!"1694"}
!3329 = !DILocation(line: 1314, column: 16, scope: !2989)
!3330 = !{!"1695"}
!3331 = !DILocation(line: 1314, column: 14, scope: !2989)
!3332 = !{!"1696"}
!3333 = !DILocation(line: 1314, column: 21, scope: !2989)
!3334 = !{!"1697"}
!3335 = !DILocation(line: 1314, column: 25, scope: !2989)
!3336 = !{!"1698"}
!3337 = !DILocation(line: 1314, column: 4, scope: !2989)
!3338 = !{!"1699"}
!3339 = !DILocation(line: 1315, column: 10, scope: !2989)
!3340 = !{!"1700"}
!3341 = !DILocation(line: 1315, column: 7, scope: !2989)
!3342 = !{!"1701"}
!3343 = !{!"1702"}
!3344 = !DILocation(line: 1316, column: 7, scope: !2989)
!3345 = !{!"1703"}
!3346 = !{!"1704"}
!3347 = !DILocation(line: 1317, column: 3, scope: !2989)
!3348 = !{!"1705"}
!3349 = !DILocation(line: 1264, column: 24, scope: !2984)
!3350 = !{!"1706"}
!3351 = !{!"1707"}
!3352 = !DILocation(line: 1264, column: 3, scope: !2984)
!3353 = distinct !{!3353, !2986, !3354, !260}
!3354 = !DILocation(line: 1317, column: 3, scope: !2974)
!3355 = !{!"1708"}
!3356 = distinct !{!3356, !2946, !3357, !260}
!3357 = !DILocation(line: 1318, column: 2, scope: !2922)
!3358 = !{!"1709"}
!3359 = !DILocation(line: 1319, column: 7, scope: !2922)
!3360 = !{!"1710"}
!3361 = !{!"1711"}
!3362 = !{!"1712"}
!3363 = !DILocation(line: 1320, column: 1, scope: !2922)
!3364 = !{!"1713"}
!3365 = distinct !DISubprogram(name: "p256_add_mixed", scope: !3, file: !3, line: 976, type: !3366, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!11, !533, !2925}
!3368 = !{!"1714"}
!3369 = !{!"1715"}
!3370 = !{!"1716"}
!3371 = !{!"1717"}
!3372 = !{!"1718"}
!3373 = !{!"1719"}
!3374 = !{!"1720"}
!3375 = !DILocalVariable(name: "P1", arg: 1, scope: !3365, file: !3, line: 976, type: !533)
!3376 = !DILocation(line: 0, scope: !3365)
!3377 = !{!"1721"}
!3378 = !DILocalVariable(name: "P2", arg: 2, scope: !3365, file: !3, line: 976, type: !2925)
!3379 = !{!"1722"}
!3380 = !DILocalVariable(name: "t1", scope: !3365, file: !3, line: 991, type: !59)
!3381 = !DILocation(line: 991, column: 11, scope: !3365)
!3382 = !{!"1723"}
!3383 = !DILocalVariable(name: "t2", scope: !3365, file: !3, line: 991, type: !59)
!3384 = !DILocation(line: 991, column: 18, scope: !3365)
!3385 = !{!"1724"}
!3386 = !DILocalVariable(name: "t3", scope: !3365, file: !3, line: 991, type: !59)
!3387 = !DILocation(line: 991, column: 25, scope: !3365)
!3388 = !{!"1725"}
!3389 = !DILocalVariable(name: "t4", scope: !3365, file: !3, line: 991, type: !59)
!3390 = !DILocation(line: 991, column: 32, scope: !3365)
!3391 = !{!"1726"}
!3392 = !DILocalVariable(name: "t5", scope: !3365, file: !3, line: 991, type: !59)
!3393 = !DILocation(line: 991, column: 39, scope: !3365)
!3394 = !{!"1727"}
!3395 = !DILocalVariable(name: "t6", scope: !3365, file: !3, line: 991, type: !59)
!3396 = !DILocation(line: 991, column: 46, scope: !3365)
!3397 = !{!"1728"}
!3398 = !DILocalVariable(name: "t7", scope: !3365, file: !3, line: 991, type: !59)
!3399 = !DILocation(line: 991, column: 53, scope: !3365)
!3400 = !{!"1729"}
!3401 = !DILocation(line: 997, column: 2, scope: !3365)
!3402 = !{!"1730"}
!3403 = !{!"1731"}
!3404 = !DILocation(line: 997, column: 17, scope: !3365)
!3405 = !{!"1732"}
!3406 = !{!"1733"}
!3407 = !{!"1734"}
!3408 = !{!"1735"}
!3409 = !DILocation(line: 998, column: 2, scope: !3365)
!3410 = !{!"1736"}
!3411 = !{!"1737"}
!3412 = !DILocation(line: 998, column: 17, scope: !3365)
!3413 = !{!"1738"}
!3414 = !{!"1739"}
!3415 = !{!"1740"}
!3416 = !{!"1741"}
!3417 = !DILocation(line: 1003, column: 19, scope: !3365)
!3418 = !{!"1742"}
!3419 = !DILocation(line: 1003, column: 27, scope: !3365)
!3420 = !{!"1743"}
!3421 = !DILocation(line: 1003, column: 23, scope: !3365)
!3422 = !{!"1744"}
!3423 = !DILocation(line: 1003, column: 2, scope: !3365)
!3424 = !{!"1745"}
!3425 = !DILocation(line: 1004, column: 16, scope: !3365)
!3426 = !{!"1746"}
!3427 = !DILocation(line: 1004, column: 24, scope: !3365)
!3428 = !{!"1747"}
!3429 = !DILocation(line: 1004, column: 20, scope: !3365)
!3430 = !{!"1748"}
!3431 = !DILocation(line: 1004, column: 27, scope: !3365)
!3432 = !{!"1749"}
!3433 = !DILocation(line: 1004, column: 2, scope: !3365)
!3434 = !{!"1750"}
!3435 = !DILocation(line: 1005, column: 16, scope: !3365)
!3436 = !{!"1751"}
!3437 = !DILocation(line: 1005, column: 24, scope: !3365)
!3438 = !{!"1752"}
!3439 = !DILocation(line: 1005, column: 20, scope: !3365)
!3440 = !{!"1753"}
!3441 = !DILocation(line: 1005, column: 27, scope: !3365)
!3442 = !{!"1754"}
!3443 = !DILocation(line: 1005, column: 2, scope: !3365)
!3444 = !{!"1755"}
!3445 = !DILocation(line: 1006, column: 16, scope: !3365)
!3446 = !{!"1756"}
!3447 = !DILocation(line: 1006, column: 24, scope: !3365)
!3448 = !{!"1757"}
!3449 = !DILocation(line: 1006, column: 20, scope: !3365)
!3450 = !{!"1758"}
!3451 = !DILocation(line: 1006, column: 27, scope: !3365)
!3452 = !{!"1759"}
!3453 = !DILocation(line: 1006, column: 2, scope: !3365)
!3454 = !{!"1760"}
!3455 = !DILocation(line: 1013, column: 11, scope: !3365)
!3456 = !{!"1761"}
!3457 = !DILocation(line: 1013, column: 15, scope: !3365)
!3458 = !{!"1762"}
!3459 = !DILocation(line: 1013, column: 19, scope: !3365)
!3460 = !{!"1763"}
!3461 = !DILocation(line: 1013, column: 2, scope: !3365)
!3462 = !{!"1764"}
!3463 = !DILocation(line: 1014, column: 11, scope: !3365)
!3464 = !{!"1765"}
!3465 = !DILocation(line: 1014, column: 15, scope: !3365)
!3466 = !{!"1766"}
!3467 = !DILocation(line: 1014, column: 19, scope: !3365)
!3468 = !{!"1767"}
!3469 = !DILocation(line: 1014, column: 2, scope: !3365)
!3470 = !{!"1768"}
!3471 = !DILocation(line: 1015, column: 20, scope: !3365)
!3472 = !{!"1769"}
!3473 = !DILocation(line: 1015, column: 2, scope: !3365)
!3474 = !{!"1770"}
!3475 = !DILocation(line: 1016, column: 7, scope: !3365)
!3476 = !{!"1771"}
!3477 = !{!"1772"}
!3478 = !DILocation(line: 1016, column: 15, scope: !3365)
!3479 = !{!"1773"}
!3480 = !{!"1774"}
!3481 = !DILocation(line: 1016, column: 13, scope: !3365)
!3482 = !{!"1775"}
!3483 = !DILocation(line: 1016, column: 23, scope: !3365)
!3484 = !{!"1776"}
!3485 = !{!"1777"}
!3486 = !DILocation(line: 1016, column: 21, scope: !3365)
!3487 = !{!"1778"}
!3488 = !DILocation(line: 1016, column: 31, scope: !3365)
!3489 = !{!"1779"}
!3490 = !{!"1780"}
!3491 = !DILocation(line: 1016, column: 29, scope: !3365)
!3492 = !{!"1781"}
!3493 = !DILocation(line: 1016, column: 39, scope: !3365)
!3494 = !{!"1782"}
!3495 = !{!"1783"}
!3496 = !DILocation(line: 1016, column: 37, scope: !3365)
!3497 = !{!"1784"}
!3498 = !DILocalVariable(name: "tt", scope: !3365, file: !3, line: 991, type: !15)
!3499 = !{!"1785"}
!3500 = !DILocation(line: 1017, column: 28, scope: !3365)
!3501 = !{!"1786"}
!3502 = !DILocation(line: 1017, column: 22, scope: !3365)
!3503 = !{!"1787"}
!3504 = !DILocation(line: 1017, column: 8, scope: !3365)
!3505 = !{!"1788"}
!3506 = !DILocalVariable(name: "ret", scope: !3365, file: !3, line: 992, type: !11)
!3507 = !{!"1789"}
!3508 = !DILocation(line: 1018, column: 15, scope: !3365)
!3509 = !{!"1790"}
!3510 = !DILocation(line: 1018, column: 13, scope: !3365)
!3511 = !{!"1791"}
!3512 = !DILocation(line: 1018, column: 21, scope: !3365)
!3513 = !{!"1792"}
!3514 = !{!"1793"}
!3515 = !DILocation(line: 1023, column: 19, scope: !3365)
!3516 = !{!"1794"}
!3517 = !DILocation(line: 1023, column: 23, scope: !3365)
!3518 = !{!"1795"}
!3519 = !DILocation(line: 1023, column: 2, scope: !3365)
!3520 = !{!"1796"}
!3521 = !DILocation(line: 1024, column: 16, scope: !3365)
!3522 = !{!"1797"}
!3523 = !DILocation(line: 1024, column: 20, scope: !3365)
!3524 = !{!"1798"}
!3525 = !DILocation(line: 1024, column: 24, scope: !3365)
!3526 = !{!"1799"}
!3527 = !DILocation(line: 1024, column: 2, scope: !3365)
!3528 = !{!"1800"}
!3529 = !DILocation(line: 1025, column: 16, scope: !3365)
!3530 = !{!"1801"}
!3531 = !DILocation(line: 1025, column: 20, scope: !3365)
!3532 = !{!"1802"}
!3533 = !DILocation(line: 1025, column: 24, scope: !3365)
!3534 = !{!"1803"}
!3535 = !DILocation(line: 1025, column: 2, scope: !3365)
!3536 = !{!"1804"}
!3537 = !DILocation(line: 1030, column: 23, scope: !3365)
!3538 = !{!"1805"}
!3539 = !DILocation(line: 1030, column: 19, scope: !3365)
!3540 = !{!"1806"}
!3541 = !DILocation(line: 1030, column: 26, scope: !3365)
!3542 = !{!"1807"}
!3543 = !DILocation(line: 1030, column: 2, scope: !3365)
!3544 = !{!"1808"}
!3545 = !DILocation(line: 1031, column: 15, scope: !3365)
!3546 = !{!"1809"}
!3547 = !DILocation(line: 1031, column: 11, scope: !3365)
!3548 = !{!"1810"}
!3549 = !DILocation(line: 1031, column: 22, scope: !3365)
!3550 = !{!"1811"}
!3551 = !DILocation(line: 1031, column: 18, scope: !3365)
!3552 = !{!"1812"}
!3553 = !DILocation(line: 1031, column: 25, scope: !3365)
!3554 = !{!"1813"}
!3555 = !DILocation(line: 1031, column: 2, scope: !3365)
!3556 = !{!"1814"}
!3557 = !DILocation(line: 1032, column: 15, scope: !3365)
!3558 = !{!"1815"}
!3559 = !DILocation(line: 1032, column: 11, scope: !3365)
!3560 = !{!"1816"}
!3561 = !DILocation(line: 1032, column: 22, scope: !3365)
!3562 = !{!"1817"}
!3563 = !DILocation(line: 1032, column: 18, scope: !3365)
!3564 = !{!"1818"}
!3565 = !DILocation(line: 1032, column: 25, scope: !3365)
!3566 = !{!"1819"}
!3567 = !DILocation(line: 1032, column: 2, scope: !3365)
!3568 = !{!"1820"}
!3569 = !DILocation(line: 1033, column: 15, scope: !3365)
!3570 = !{!"1821"}
!3571 = !DILocation(line: 1033, column: 11, scope: !3365)
!3572 = !{!"1822"}
!3573 = !DILocation(line: 1033, column: 22, scope: !3365)
!3574 = !{!"1823"}
!3575 = !DILocation(line: 1033, column: 18, scope: !3365)
!3576 = !{!"1824"}
!3577 = !DILocation(line: 1033, column: 25, scope: !3365)
!3578 = !{!"1825"}
!3579 = !DILocation(line: 1033, column: 2, scope: !3365)
!3580 = !{!"1826"}
!3581 = !DILocation(line: 1038, column: 11, scope: !3365)
!3582 = !{!"1827"}
!3583 = !DILocation(line: 1038, column: 15, scope: !3365)
!3584 = !{!"1828"}
!3585 = !DILocation(line: 1038, column: 23, scope: !3365)
!3586 = !{!"1829"}
!3587 = !DILocation(line: 1038, column: 19, scope: !3365)
!3588 = !{!"1830"}
!3589 = !DILocation(line: 1038, column: 2, scope: !3365)
!3590 = !{!"1831"}
!3591 = !DILocation(line: 1039, column: 20, scope: !3365)
!3592 = !{!"1832"}
!3593 = !DILocation(line: 1039, column: 16, scope: !3365)
!3594 = !{!"1833"}
!3595 = !DILocation(line: 1039, column: 23, scope: !3365)
!3596 = !{!"1834"}
!3597 = !DILocation(line: 1039, column: 27, scope: !3365)
!3598 = !{!"1835"}
!3599 = !DILocation(line: 1039, column: 2, scope: !3365)
!3600 = !{!"1836"}
!3601 = !DILocation(line: 1040, column: 16, scope: !3365)
!3602 = !{!"1837"}
!3603 = !DILocation(line: 1040, column: 20, scope: !3365)
!3604 = !{!"1838"}
!3605 = !DILocation(line: 1040, column: 24, scope: !3365)
!3606 = !{!"1839"}
!3607 = !DILocation(line: 1040, column: 2, scope: !3365)
!3608 = !{!"1840"}
!3609 = !DILocation(line: 1041, column: 15, scope: !3365)
!3610 = !{!"1841"}
!3611 = !DILocation(line: 1041, column: 11, scope: !3365)
!3612 = !{!"1842"}
!3613 = !DILocation(line: 1041, column: 22, scope: !3365)
!3614 = !{!"1843"}
!3615 = !DILocation(line: 1041, column: 18, scope: !3365)
!3616 = !{!"1844"}
!3617 = !DILocation(line: 1041, column: 25, scope: !3365)
!3618 = !{!"1845"}
!3619 = !DILocation(line: 1041, column: 2, scope: !3365)
!3620 = !{!"1846"}
!3621 = !DILocation(line: 1046, column: 20, scope: !3365)
!3622 = !{!"1847"}
!3623 = !DILocation(line: 1046, column: 16, scope: !3365)
!3624 = !{!"1848"}
!3625 = !DILocation(line: 1046, column: 27, scope: !3365)
!3626 = !{!"1849"}
!3627 = !DILocation(line: 1046, column: 23, scope: !3365)
!3628 = !{!"1850"}
!3629 = !DILocation(line: 1046, column: 30, scope: !3365)
!3630 = !{!"1851"}
!3631 = !DILocation(line: 1046, column: 2, scope: !3365)
!3632 = !{!"1852"}
!3633 = !DILocation(line: 1048, column: 2, scope: !3365)
!3634 = !{!"1853"}
!3635 = distinct !DISubprogram(name: "window_to_affine", scope: !3, file: !3, line: 1333, type: !3636, scopeLine: 1334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !3638, !533, !10}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!3639 = !{!"1854"}
!3640 = !DILocalVariable(name: "aff", arg: 1, scope: !3635, file: !3, line: 1333, type: !3638)
!3641 = !DILocation(line: 0, scope: !3635)
!3642 = !{!"1855"}
!3643 = !DILocalVariable(name: "jac", arg: 2, scope: !3635, file: !3, line: 1333, type: !533)
!3644 = !{!"1856"}
!3645 = !DILocalVariable(name: "num", arg: 3, scope: !3635, file: !3, line: 1333, type: !10)
!3646 = !{!"1857"}
!3647 = !DILocalVariable(name: "z", scope: !3635, file: !3, line: 1390, type: !3648)
!3648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 5120, elements: !3649)
!3649 = !{!3650, !43}
!3650 = !DISubrange(count: 16)
!3651 = !DILocation(line: 1390, column: 11, scope: !3635)
!3652 = !{!"1858"}
!3653 = !DILocalVariable(name: "i", scope: !3635, file: !3, line: 1391, type: !10)
!3654 = !{!"1859"}
!3655 = !DILocation(line: 1401, column: 7, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1401, column: 2)
!3657 = !{!"1860"}
!3658 = !DILocation(line: 0, scope: !3656)
!3659 = !{!"1861"}
!3660 = !{!"1862"}
!3661 = !DILocation(line: 1401, column: 17, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1401, column: 2)
!3663 = !{!"1863"}
!3664 = !DILocation(line: 1401, column: 22, scope: !3662)
!3665 = !{!"1864"}
!3666 = !DILocation(line: 1401, column: 2, scope: !3656)
!3667 = !{!"1865"}
!3668 = !DILocation(line: 1402, column: 10, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 1401, column: 37)
!3670 = !{!"1866"}
!3671 = !DILocation(line: 1402, column: 3, scope: !3669)
!3672 = !{!"1867"}
!3673 = !{!"1868"}
!3674 = !DILocation(line: 1402, column: 14, scope: !3669)
!3675 = !{!"1869"}
!3676 = !{!"1870"}
!3677 = !DILocation(line: 1402, column: 21, scope: !3669)
!3678 = !{!"1871"}
!3679 = !{!"1872"}
!3680 = !{!"1873"}
!3681 = !{!"1874"}
!3682 = !DILocation(line: 1403, column: 10, scope: !3669)
!3683 = !{!"1875"}
!3684 = !{!"1876"}
!3685 = !DILocation(line: 1403, column: 17, scope: !3669)
!3686 = !{!"1877"}
!3687 = !DILocation(line: 1403, column: 3, scope: !3669)
!3688 = !{!"1878"}
!3689 = !{!"1879"}
!3690 = !DILocation(line: 1403, column: 26, scope: !3669)
!3691 = !{!"1880"}
!3692 = !DILocation(line: 1403, column: 20, scope: !3669)
!3693 = !{!"1881"}
!3694 = !{!"1882"}
!3695 = !DILocation(line: 1403, column: 31, scope: !3669)
!3696 = !{!"1883"}
!3697 = !{!"1884"}
!3698 = !{!"1885"}
!3699 = !{!"1886"}
!3700 = !DILocation(line: 1404, column: 16, scope: !3669)
!3701 = !{!"1887"}
!3702 = !DILocation(line: 1404, column: 10, scope: !3669)
!3703 = !{!"1888"}
!3704 = !{!"1889"}
!3705 = !DILocation(line: 1404, column: 21, scope: !3669)
!3706 = !{!"1890"}
!3707 = !DILocation(line: 1404, column: 3, scope: !3669)
!3708 = !{!"1891"}
!3709 = !{!"1892"}
!3710 = !DILocation(line: 1404, column: 24, scope: !3669)
!3711 = !{!"1893"}
!3712 = !{!"1894"}
!3713 = !{!"1895"}
!3714 = !{!"1896"}
!3715 = !DILocation(line: 1405, column: 21, scope: !3669)
!3716 = !{!"1897"}
!3717 = !DILocation(line: 1405, column: 17, scope: !3669)
!3718 = !{!"1898"}
!3719 = !{!"1899"}
!3720 = !{!"1900"}
!3721 = !DILocation(line: 1405, column: 28, scope: !3669)
!3722 = !{!"1901"}
!3723 = !{!"1902"}
!3724 = !DILocation(line: 1405, column: 35, scope: !3669)
!3725 = !{!"1903"}
!3726 = !{!"1904"}
!3727 = !DILocation(line: 1405, column: 44, scope: !3669)
!3728 = !{!"1905"}
!3729 = !DILocation(line: 1405, column: 38, scope: !3669)
!3730 = !{!"1906"}
!3731 = !{!"1907"}
!3732 = !DILocation(line: 1405, column: 49, scope: !3669)
!3733 = !{!"1908"}
!3734 = !{!"1909"}
!3735 = !DILocation(line: 1405, column: 3, scope: !3669)
!3736 = !{!"1910"}
!3737 = !DILocation(line: 1406, column: 2, scope: !3669)
!3738 = !{!"1911"}
!3739 = !DILocation(line: 1401, column: 31, scope: !3662)
!3740 = !{!"1912"}
!3741 = !{!"1913"}
!3742 = !DILocation(line: 1401, column: 2, scope: !3662)
!3743 = distinct !{!3743, !3666, !3744, !260}
!3744 = !DILocation(line: 1406, column: 2, scope: !3656)
!3745 = !{!"1914"}
!3746 = !DILocation(line: 1407, column: 11, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1407, column: 6)
!3748 = !{!"1915"}
!3749 = !DILocation(line: 1407, column: 16, scope: !3747)
!3750 = !{!"1916"}
!3751 = !DILocation(line: 1407, column: 6, scope: !3635)
!3752 = !{!"1917"}
!3753 = !DILocation(line: 1408, column: 16, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3747, file: !3, line: 1407, column: 22)
!3755 = !{!"1918"}
!3756 = !DILocation(line: 1408, column: 10, scope: !3754)
!3757 = !{!"1919"}
!3758 = !{!"1920"}
!3759 = !DILocation(line: 1408, column: 3, scope: !3754)
!3760 = !{!"1921"}
!3761 = !{!"1922"}
!3762 = !DILocation(line: 1408, column: 31, scope: !3754)
!3763 = !{!"1923"}
!3764 = !DILocation(line: 1408, column: 23, scope: !3754)
!3765 = !{!"1924"}
!3766 = !{!"1925"}
!3767 = !DILocation(line: 1408, column: 36, scope: !3754)
!3768 = !{!"1926"}
!3769 = !{!"1927"}
!3770 = !{!"1928"}
!3771 = !{!"1929"}
!3772 = !DILocation(line: 1409, column: 18, scope: !3754)
!3773 = !{!"1930"}
!3774 = !DILocation(line: 1409, column: 10, scope: !3754)
!3775 = !{!"1931"}
!3776 = !{!"1932"}
!3777 = !DILocation(line: 1409, column: 23, scope: !3754)
!3778 = !{!"1933"}
!3779 = !DILocation(line: 1409, column: 3, scope: !3754)
!3780 = !{!"1934"}
!3781 = !{!"1935"}
!3782 = !{!"1936"}
!3783 = !DILocation(line: 1410, column: 2, scope: !3754)
!3784 = !{!"1937"}
!3785 = !DILocalVariable(name: "k", scope: !3635, file: !3, line: 1391, type: !10)
!3786 = !{!"1938"}
!3787 = !DILocalVariable(name: "s", scope: !3635, file: !3, line: 1391, type: !10)
!3788 = !{!"1939"}
!3789 = !DILocation(line: 1417, column: 7, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1417, column: 2)
!3791 = !{!"1940"}
!3792 = !DILocation(line: 0, scope: !3790)
!3793 = !{!"1941"}
!3794 = !{!"1942"}
!3795 = !{!"1943"}
!3796 = !{!"1944"}
!3797 = !DILocation(line: 1417, column: 23, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 1417, column: 2)
!3799 = !{!"1945"}
!3800 = !DILocation(line: 1417, column: 2, scope: !3790)
!3801 = !{!"1946"}
!3802 = !{!"1947"}
!3803 = !DILocation(line: 1420, column: 8, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 1420, column: 3)
!3805 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 1417, column: 45)
!3806 = !{!"1948"}
!3807 = !DILocation(line: 0, scope: !3804)
!3808 = !{!"1949"}
!3809 = !{!"1950"}
!3810 = !DILocation(line: 1420, column: 17, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 1420, column: 3)
!3812 = !{!"1951"}
!3813 = !DILocation(line: 1420, column: 3, scope: !3804)
!3814 = !{!"1952"}
!3815 = !DILocation(line: 1421, column: 18, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 1420, column: 30)
!3817 = !{!"1953"}
!3818 = !{!"1954"}
!3819 = !DILocation(line: 1421, column: 25, scope: !3816)
!3820 = !{!"1955"}
!3821 = !{!"1956"}
!3822 = !DILocation(line: 1421, column: 28, scope: !3816)
!3823 = !{!"1957"}
!3824 = !{!"1958"}
!3825 = !DILocation(line: 1421, column: 35, scope: !3816)
!3826 = !{!"1959"}
!3827 = !{!"1960"}
!3828 = !DILocation(line: 1421, column: 43, scope: !3816)
!3829 = !{!"1961"}
!3830 = !DILocation(line: 1421, column: 49, scope: !3816)
!3831 = !{!"1962"}
!3832 = !DILocation(line: 1421, column: 38, scope: !3816)
!3833 = !{!"1963"}
!3834 = !{!"1964"}
!3835 = !{!"1965"}
!3836 = !DILocation(line: 1421, column: 4, scope: !3816)
!3837 = !{!"1966"}
!3838 = !DILocation(line: 1422, column: 3, scope: !3816)
!3839 = !{!"1967"}
!3840 = !DILocation(line: 1420, column: 26, scope: !3811)
!3841 = !{!"1968"}
!3842 = !{!"1969"}
!3843 = !DILocation(line: 1420, column: 3, scope: !3811)
!3844 = distinct !{!3844, !3813, !3845, !260}
!3845 = !DILocation(line: 1422, column: 3, scope: !3804)
!3846 = !{!"1970"}
!3847 = !DILocation(line: 1423, column: 12, scope: !3805)
!3848 = !{!"1971"}
!3849 = !DILocation(line: 1423, column: 16, scope: !3805)
!3850 = !{!"1972"}
!3851 = !DILocation(line: 1423, column: 21, scope: !3805)
!3852 = !{!"1973"}
!3853 = !DILocalVariable(name: "n", scope: !3805, file: !3, line: 1418, type: !10)
!3854 = !DILocation(line: 0, scope: !3805)
!3855 = !{!"1974"}
!3856 = !{!"1975"}
!3857 = !DILocation(line: 1424, column: 8, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 1424, column: 3)
!3859 = !{!"1976"}
!3860 = !DILocation(line: 0, scope: !3858)
!3861 = !{!"1977"}
!3862 = !{!"1978"}
!3863 = !DILocation(line: 1424, column: 22, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 1424, column: 3)
!3865 = !{!"1979"}
!3866 = !DILocation(line: 1424, column: 17, scope: !3864)
!3867 = !{!"1980"}
!3868 = !DILocation(line: 1424, column: 3, scope: !3858)
!3869 = !{!"1981"}
!3870 = !DILocation(line: 1425, column: 18, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 1424, column: 35)
!3872 = !{!"1982"}
!3873 = !{!"1983"}
!3874 = !{!"1984"}
!3875 = !DILocation(line: 1425, column: 28, scope: !3871)
!3876 = !{!"1985"}
!3877 = !DILocation(line: 1425, column: 24, scope: !3871)
!3878 = !{!"1986"}
!3879 = !{!"1987"}
!3880 = !{!"1988"}
!3881 = !DILocation(line: 1425, column: 40, scope: !3871)
!3882 = !{!"1989"}
!3883 = !DILocation(line: 1425, column: 46, scope: !3871)
!3884 = !{!"1990"}
!3885 = !DILocation(line: 1425, column: 35, scope: !3871)
!3886 = !{!"1991"}
!3887 = !{!"1992"}
!3888 = !{!"1993"}
!3889 = !DILocation(line: 1425, column: 4, scope: !3871)
!3890 = !{!"1994"}
!3891 = !DILocation(line: 1426, column: 3, scope: !3871)
!3892 = !{!"1995"}
!3893 = !DILocation(line: 1424, column: 31, scope: !3864)
!3894 = !{!"1996"}
!3895 = !{!"1997"}
!3896 = !DILocation(line: 1424, column: 3, scope: !3864)
!3897 = distinct !{!3897, !3868, !3898, !260}
!3898 = !DILocation(line: 1426, column: 3, scope: !3858)
!3899 = !{!"1998"}
!3900 = !DILocation(line: 1427, column: 10, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 1427, column: 7)
!3902 = !{!"1999"}
!3903 = !DILocation(line: 1427, column: 15, scope: !3901)
!3904 = !{!"2000"}
!3905 = !DILocation(line: 1427, column: 7, scope: !3805)
!3906 = !{!"2001"}
!3907 = !DILocation(line: 1428, column: 16, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1427, column: 21)
!3909 = !{!"2002"}
!3910 = !DILocation(line: 1428, column: 12, scope: !3908)
!3911 = !{!"2003"}
!3912 = !{!"2004"}
!3913 = !DILocation(line: 1428, column: 4, scope: !3908)
!3914 = !{!"2005"}
!3915 = !{!"2006"}
!3916 = !DILocation(line: 1428, column: 23, scope: !3908)
!3917 = !{!"2007"}
!3918 = !{!"2008"}
!3919 = !{!"2009"}
!3920 = !{!"2010"}
!3921 = !{!"2011"}
!3922 = !DILocation(line: 1429, column: 3, scope: !3908)
!3923 = !{!"2012"}
!3924 = !DILocation(line: 1430, column: 2, scope: !3805)
!3925 = !{!"2013"}
!3926 = !DILocation(line: 1417, column: 32, scope: !3798)
!3927 = !{!"2014"}
!3928 = !{!"2015"}
!3929 = !DILocation(line: 1417, column: 38, scope: !3798)
!3930 = !{!"2016"}
!3931 = !{!"2017"}
!3932 = !DILocation(line: 1417, column: 2, scope: !3798)
!3933 = distinct !{!3933, !3800, !3934, !260}
!3934 = !DILocation(line: 1430, column: 2, scope: !3790)
!3935 = !{!"2018"}
!3936 = !DILocation(line: 1435, column: 14, scope: !3635)
!3937 = !{!"2019"}
!3938 = !{!"2020"}
!3939 = !DILocation(line: 1435, column: 18, scope: !3635)
!3940 = !{!"2021"}
!3941 = !{!"2022"}
!3942 = !DILocation(line: 1435, column: 2, scope: !3635)
!3943 = !{!"2023"}
!3944 = !{!"2024"}
!3945 = !DILocation(line: 1436, column: 7, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1436, column: 2)
!3947 = !{!"2025"}
!3948 = !DILocation(line: 0, scope: !3946)
!3949 = !{!"2026"}
!3950 = !{!"2027"}
!3951 = !DILocation(line: 1436, column: 16, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 1436, column: 2)
!3953 = !{!"2028"}
!3954 = !DILocation(line: 1436, column: 2, scope: !3946)
!3955 = !{!"2029"}
!3956 = !DILocation(line: 1437, column: 17, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 1436, column: 29)
!3958 = !{!"2030"}
!3959 = !{!"2031"}
!3960 = !DILocation(line: 1437, column: 21, scope: !3957)
!3961 = !{!"2032"}
!3962 = !{!"2033"}
!3963 = !DILocation(line: 1437, column: 28, scope: !3957)
!3964 = !{!"2034"}
!3965 = !{!"2035"}
!3966 = !DILocation(line: 1437, column: 31, scope: !3957)
!3967 = !{!"2036"}
!3968 = !{!"2037"}
!3969 = !DILocation(line: 1437, column: 3, scope: !3957)
!3970 = !{!"2038"}
!3971 = !DILocation(line: 1438, column: 20, scope: !3957)
!3972 = !{!"2039"}
!3973 = !{!"2040"}
!3974 = !DILocation(line: 1438, column: 24, scope: !3957)
!3975 = !{!"2041"}
!3976 = !{!"2042"}
!3977 = !DILocation(line: 1438, column: 3, scope: !3957)
!3978 = !{!"2043"}
!3979 = !DILocation(line: 1439, column: 17, scope: !3957)
!3980 = !{!"2044"}
!3981 = !{!"2045"}
!3982 = !DILocation(line: 1439, column: 21, scope: !3957)
!3983 = !{!"2046"}
!3984 = !{!"2047"}
!3985 = !DILocation(line: 1439, column: 25, scope: !3957)
!3986 = !{!"2048"}
!3987 = !{!"2049"}
!3988 = !DILocation(line: 1439, column: 3, scope: !3957)
!3989 = !{!"2050"}
!3990 = !DILocation(line: 1440, column: 17, scope: !3957)
!3991 = !{!"2051"}
!3992 = !{!"2052"}
!3993 = !DILocation(line: 1440, column: 24, scope: !3957)
!3994 = !{!"2053"}
!3995 = !{!"2054"}
!3996 = !DILocation(line: 1440, column: 27, scope: !3957)
!3997 = !{!"2055"}
!3998 = !{!"2056"}
!3999 = !DILocation(line: 1440, column: 34, scope: !3957)
!4000 = !{!"2057"}
!4001 = !{!"2058"}
!4002 = !DILocation(line: 1440, column: 37, scope: !3957)
!4003 = !{!"2059"}
!4004 = !{!"2060"}
!4005 = !DILocation(line: 1440, column: 3, scope: !3957)
!4006 = !{!"2061"}
!4007 = !DILocation(line: 1441, column: 17, scope: !3957)
!4008 = !{!"2062"}
!4009 = !{!"2063"}
!4010 = !DILocation(line: 1441, column: 24, scope: !3957)
!4011 = !{!"2064"}
!4012 = !{!"2065"}
!4013 = !DILocation(line: 1441, column: 27, scope: !3957)
!4014 = !{!"2066"}
!4015 = !{!"2067"}
!4016 = !DILocation(line: 1441, column: 34, scope: !3957)
!4017 = !{!"2068"}
!4018 = !{!"2069"}
!4019 = !DILocation(line: 1441, column: 37, scope: !3957)
!4020 = !{!"2070"}
!4021 = !{!"2071"}
!4022 = !DILocation(line: 1441, column: 3, scope: !3957)
!4023 = !{!"2072"}
!4024 = !DILocation(line: 1442, column: 2, scope: !3957)
!4025 = !{!"2073"}
!4026 = !DILocation(line: 1436, column: 25, scope: !3952)
!4027 = !{!"2074"}
!4028 = !{!"2075"}
!4029 = !DILocation(line: 1436, column: 2, scope: !3952)
!4030 = distinct !{!4030, !3954, !4031, !260}
!4031 = !DILocation(line: 1442, column: 2, scope: !3946)
!4032 = !{!"2076"}
!4033 = !DILocation(line: 1443, column: 1, scope: !3635)
!4034 = !{!"2077"}
!4035 = distinct !DISubprogram(name: "f256_decode", scope: !3, file: !3, line: 622, type: !4036, scopeLine: 623, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !38, !73}
!4038 = !DILocalVariable(name: "a", arg: 1, scope: !4035, file: !3, line: 622, type: !38)
!4039 = !DILocation(line: 0, scope: !4035)
!4040 = !{!"2078"}
!4041 = !DILocalVariable(name: "buf", arg: 2, scope: !4035, file: !3, line: 622, type: !73)
!4042 = !{!"2079"}
!4043 = !DILocation(line: 626, column: 22, scope: !4035)
!4044 = !{!"2080"}
!4045 = !DILocation(line: 626, column: 7, scope: !4035)
!4046 = !{!"2081"}
!4047 = !DILocalVariable(name: "w3", scope: !4035, file: !3, line: 624, type: !15)
!4048 = !{!"2082"}
!4049 = !DILocation(line: 627, column: 22, scope: !4035)
!4050 = !{!"2083"}
!4051 = !DILocation(line: 627, column: 7, scope: !4035)
!4052 = !{!"2084"}
!4053 = !DILocalVariable(name: "w2", scope: !4035, file: !3, line: 624, type: !15)
!4054 = !{!"2085"}
!4055 = !DILocation(line: 628, column: 22, scope: !4035)
!4056 = !{!"2086"}
!4057 = !DILocation(line: 628, column: 7, scope: !4035)
!4058 = !{!"2087"}
!4059 = !DILocalVariable(name: "w1", scope: !4035, file: !3, line: 624, type: !15)
!4060 = !{!"2088"}
!4061 = !DILocation(line: 629, column: 22, scope: !4035)
!4062 = !{!"2089"}
!4063 = !DILocation(line: 629, column: 7, scope: !4035)
!4064 = !{!"2090"}
!4065 = !DILocalVariable(name: "w0", scope: !4035, file: !3, line: 624, type: !15)
!4066 = !{!"2091"}
!4067 = !DILocation(line: 630, column: 12, scope: !4035)
!4068 = !{!"2092"}
!4069 = !DILocation(line: 630, column: 2, scope: !4035)
!4070 = !{!"2093"}
!4071 = !DILocation(line: 630, column: 7, scope: !4035)
!4072 = !{!"2094"}
!4073 = !DILocation(line: 631, column: 14, scope: !4035)
!4074 = !{!"2095"}
!4075 = !DILocation(line: 631, column: 27, scope: !4035)
!4076 = !{!"2096"}
!4077 = !DILocation(line: 631, column: 21, scope: !4035)
!4078 = !{!"2097"}
!4079 = !DILocation(line: 631, column: 35, scope: !4035)
!4080 = !{!"2098"}
!4081 = !DILocation(line: 631, column: 2, scope: !4035)
!4082 = !{!"2099"}
!4083 = !DILocation(line: 631, column: 7, scope: !4035)
!4084 = !{!"2100"}
!4085 = !DILocation(line: 632, column: 14, scope: !4035)
!4086 = !{!"2101"}
!4087 = !DILocation(line: 632, column: 27, scope: !4035)
!4088 = !{!"2102"}
!4089 = !DILocation(line: 632, column: 21, scope: !4035)
!4090 = !{!"2103"}
!4091 = !DILocation(line: 632, column: 35, scope: !4035)
!4092 = !{!"2104"}
!4093 = !DILocation(line: 632, column: 2, scope: !4035)
!4094 = !{!"2105"}
!4095 = !DILocation(line: 632, column: 7, scope: !4035)
!4096 = !{!"2106"}
!4097 = !DILocation(line: 633, column: 14, scope: !4035)
!4098 = !{!"2107"}
!4099 = !DILocation(line: 633, column: 27, scope: !4035)
!4100 = !{!"2108"}
!4101 = !DILocation(line: 633, column: 21, scope: !4035)
!4102 = !{!"2109"}
!4103 = !DILocation(line: 633, column: 35, scope: !4035)
!4104 = !{!"2110"}
!4105 = !DILocation(line: 633, column: 2, scope: !4035)
!4106 = !{!"2111"}
!4107 = !DILocation(line: 633, column: 7, scope: !4035)
!4108 = !{!"2112"}
!4109 = !DILocation(line: 634, column: 12, scope: !4035)
!4110 = !{!"2113"}
!4111 = !DILocation(line: 634, column: 2, scope: !4035)
!4112 = !{!"2114"}
!4113 = !DILocation(line: 634, column: 7, scope: !4035)
!4114 = !{!"2115"}
!4115 = !DILocation(line: 635, column: 1, scope: !4035)
!4116 = !{!"2116"}
!4117 = !DILocalVariable(name: "d", arg: 1, scope: !35, file: !3, line: 447, type: !38)
!4118 = !DILocation(line: 0, scope: !35)
!4119 = !{!"2117"}
!4120 = !DILocalVariable(name: "a", arg: 2, scope: !35, file: !3, line: 447, type: !39)
!4121 = !{!"2118"}
!4122 = !{!"2119"}
!4123 = !DILocation(line: 460, column: 2, scope: !35)
!4124 = !{!"2120"}
!4125 = !DILocation(line: 461, column: 1, scope: !35)
!4126 = !{!"2121"}
!4127 = distinct !DISubprogram(name: "br_dec64be", scope: !265, file: !265, line: 648, type: !4128, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!15, !204}
!4130 = !DILocalVariable(name: "src", arg: 1, scope: !4127, file: !265, line: 648, type: !204)
!4131 = !DILocation(line: 0, scope: !4127)
!4132 = !{!"2122"}
!4133 = !DILocalVariable(name: "buf", scope: !4127, file: !265, line: 653, type: !73)
!4134 = !{!"2123"}
!4135 = !DILocation(line: 656, column: 20, scope: !4127)
!4136 = !{!"2124"}
!4137 = !DILocation(line: 656, column: 10, scope: !4127)
!4138 = !{!"2125"}
!4139 = !DILocation(line: 656, column: 36, scope: !4127)
!4140 = !{!"2126"}
!4141 = !DILocation(line: 657, column: 30, scope: !4127)
!4142 = !{!"2127"}
!4143 = !DILocation(line: 657, column: 15, scope: !4127)
!4144 = !{!"2128"}
!4145 = !DILocation(line: 657, column: 5, scope: !4127)
!4146 = !{!"2129"}
!4147 = !DILocation(line: 657, column: 3, scope: !4127)
!4148 = !{!"2130"}
!4149 = !DILocation(line: 656, column: 2, scope: !4127)
!4150 = !{!"2131"}
!4151 = distinct !DISubprogram(name: "br_dec32be", scope: !265, file: !265, line: 590, type: !4152, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!11, !204}
!4154 = !DILocalVariable(name: "src", arg: 1, scope: !4151, file: !265, line: 590, type: !204)
!4155 = !DILocation(line: 0, scope: !4151)
!4156 = !{!"2132"}
!4157 = !DILocalVariable(name: "buf", scope: !4151, file: !265, line: 595, type: !73)
!4158 = !{!"2133"}
!4159 = !DILocation(line: 598, column: 20, scope: !4151)
!4160 = !{!"2134"}
!4161 = !{!"2135"}
!4162 = !DILocation(line: 598, column: 10, scope: !4151)
!4163 = !{!"2136"}
!4164 = !DILocation(line: 598, column: 27, scope: !4151)
!4165 = !{!"2137"}
!4166 = !DILocation(line: 599, column: 16, scope: !4151)
!4167 = !{!"2138"}
!4168 = !{!"2139"}
!4169 = !DILocation(line: 599, column: 6, scope: !4151)
!4170 = !{!"2140"}
!4171 = !DILocation(line: 599, column: 23, scope: !4151)
!4172 = !{!"2141"}
!4173 = !DILocation(line: 599, column: 3, scope: !4151)
!4174 = !{!"2142"}
!4175 = !DILocation(line: 600, column: 16, scope: !4151)
!4176 = !{!"2143"}
!4177 = !{!"2144"}
!4178 = !DILocation(line: 600, column: 6, scope: !4151)
!4179 = !{!"2145"}
!4180 = !DILocation(line: 600, column: 23, scope: !4151)
!4181 = !{!"2146"}
!4182 = !DILocation(line: 600, column: 3, scope: !4151)
!4183 = !{!"2147"}
!4184 = !DILocation(line: 601, column: 15, scope: !4151)
!4185 = !{!"2148"}
!4186 = !{!"2149"}
!4187 = !DILocation(line: 601, column: 5, scope: !4151)
!4188 = !{!"2150"}
!4189 = !DILocation(line: 601, column: 3, scope: !4151)
!4190 = !{!"2151"}
!4191 = !DILocation(line: 598, column: 2, scope: !4151)
!4192 = !{!"2152"}
!4193 = distinct !DISubprogram(name: "check_scalar", scope: !3, file: !3, line: 1610, type: !4194, scopeLine: 1611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!11, !73, !75}
!4196 = !DILocalVariable(name: "k", arg: 1, scope: !4193, file: !3, line: 1610, type: !73)
!4197 = !DILocation(line: 0, scope: !4193)
!4198 = !{!"2153"}
!4199 = !DILocalVariable(name: "klen", arg: 2, scope: !4193, file: !3, line: 1610, type: !75)
!4200 = !{!"2154"}
!4201 = !DILocation(line: 1616, column: 11, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 1616, column: 6)
!4203 = !{!"2155"}
!4204 = !DILocation(line: 1616, column: 6, scope: !4193)
!4205 = !{!"2156"}
!4206 = !DILocation(line: 1617, column: 3, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 1616, column: 17)
!4208 = !{!"2157"}
!4209 = !DILocalVariable(name: "z", scope: !4193, file: !3, line: 1612, type: !11)
!4210 = !{!"2158"}
!4211 = !DILocalVariable(name: "u", scope: !4193, file: !3, line: 1614, type: !75)
!4212 = !{!"2159"}
!4213 = !DILocation(line: 1620, column: 7, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 1620, column: 2)
!4215 = !{!"2160"}
!4216 = !{!"2161"}
!4217 = !DILocation(line: 0, scope: !4214)
!4218 = !{!"2162"}
!4219 = !{!"2163"}
!4220 = !{!"2164"}
!4221 = !DILocation(line: 1620, column: 16, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 1620, column: 2)
!4223 = !{!"2165"}
!4224 = !DILocation(line: 1620, column: 2, scope: !4214)
!4225 = !{!"2166"}
!4226 = !DILocation(line: 1621, column: 8, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 1620, column: 30)
!4228 = !{!"2167"}
!4229 = !{!"2168"}
!4230 = !{!"2169"}
!4231 = !DILocation(line: 1621, column: 5, scope: !4227)
!4232 = !{!"2170"}
!4233 = !{!"2171"}
!4234 = !DILocation(line: 1622, column: 2, scope: !4227)
!4235 = !{!"2172"}
!4236 = !DILocation(line: 1620, column: 26, scope: !4222)
!4237 = !{!"2173"}
!4238 = !{!"2174"}
!4239 = !DILocation(line: 1620, column: 2, scope: !4222)
!4240 = distinct !{!4240, !4224, !4241, !260}
!4241 = !DILocation(line: 1622, column: 2, scope: !4214)
!4242 = !{!"2175"}
!4243 = !DILocation(line: 1623, column: 11, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 1623, column: 6)
!4245 = !{!"2176"}
!4246 = !DILocation(line: 1623, column: 6, scope: !4193)
!4247 = !{!"2177"}
!4248 = !DILocalVariable(name: "c", scope: !4193, file: !3, line: 1613, type: !6)
!4249 = !{!"2178"}
!4250 = !{!"2179"}
!4251 = !DILocation(line: 1625, column: 8, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 1625, column: 3)
!4253 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 1623, column: 18)
!4254 = !{!"2180"}
!4255 = !DILocation(line: 0, scope: !4253)
!4256 = !{!"2181"}
!4257 = !DILocation(line: 0, scope: !4252)
!4258 = !{!"2182"}
!4259 = !{!"2183"}
!4260 = !{!"2184"}
!4261 = !DILocation(line: 1625, column: 17, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 1625, column: 3)
!4263 = !{!"2185"}
!4264 = !DILocation(line: 1625, column: 3, scope: !4252)
!4265 = !{!"2186"}
!4266 = !DILocation(line: 1626, column: 19, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 1625, column: 31)
!4268 = !{!"2187"}
!4269 = !DILocation(line: 1626, column: 9, scope: !4267)
!4270 = !{!"2188"}
!4271 = !DILocation(line: 1626, column: 32, scope: !4267)
!4272 = !{!"2189"}
!4273 = !{!"2190"}
!4274 = !{!"2191"}
!4275 = !DILocation(line: 1626, column: 38, scope: !4267)
!4276 = !{!"2192"}
!4277 = !{!"2193"}
!4278 = !{!"2194"}
!4279 = !DILocation(line: 1626, column: 28, scope: !4267)
!4280 = !{!"2195"}
!4281 = !DILocation(line: 1626, column: 26, scope: !4267)
!4282 = !{!"2196"}
!4283 = !DILocation(line: 1626, column: 6, scope: !4267)
!4284 = !{!"2197"}
!4285 = !{!"2198"}
!4286 = !DILocation(line: 1627, column: 3, scope: !4267)
!4287 = !{!"2199"}
!4288 = !DILocation(line: 1625, column: 27, scope: !4262)
!4289 = !{!"2200"}
!4290 = !{!"2201"}
!4291 = !DILocation(line: 1625, column: 3, scope: !4262)
!4292 = distinct !{!4292, !4264, !4293, !260}
!4293 = !DILocation(line: 1627, column: 3, scope: !4252)
!4294 = !{!"2202"}
!4295 = !DILocation(line: 1628, column: 2, scope: !4253)
!4296 = !{!"2203"}
!4297 = !{!"2204"}
!4298 = !{!"2205"}
!4299 = !DILocation(line: 0, scope: !4244)
!4300 = !{!"2206"}
!4301 = !{!"2207"}
!4302 = !DILocation(line: 1631, column: 9, scope: !4193)
!4303 = !{!"2208"}
!4304 = !DILocation(line: 1631, column: 21, scope: !4193)
!4305 = !{!"2209"}
!4306 = !DILocation(line: 1631, column: 19, scope: !4193)
!4307 = !{!"2210"}
!4308 = !DILocation(line: 1631, column: 2, scope: !4193)
!4309 = !{!"2211"}
!4310 = !{!"2212"}
!4311 = !DILocation(line: 1632, column: 1, scope: !4193)
!4312 = !{!"2213"}
!4313 = distinct !DISubprogram(name: "EQ0", scope: !265, file: !265, line: 844, type: !4314, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!11, !6}
!4316 = !DILocalVariable(name: "x", arg: 1, scope: !4313, file: !265, line: 844, type: !6)
!4317 = !DILocation(line: 0, scope: !4313)
!4318 = !{!"2214"}
!4319 = !DILocalVariable(name: "q", scope: !4313, file: !265, line: 846, type: !11)
!4320 = !{!"2215"}
!4321 = !DILocation(line: 849, column: 15, scope: !4313)
!4322 = !{!"2216"}
!4323 = !DILocation(line: 849, column: 13, scope: !4313)
!4324 = !{!"2217"}
!4325 = !DILocation(line: 849, column: 9, scope: !4313)
!4326 = !{!"2218"}
!4327 = !DILocation(line: 849, column: 19, scope: !4313)
!4328 = !{!"2219"}
!4329 = !DILocation(line: 849, column: 2, scope: !4313)
!4330 = !{!"2220"}
!4331 = distinct !DISubprogram(name: "CMP", scope: !265, file: !265, line: 835, type: !4332, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!6, !11, !11}
!4334 = !DILocalVariable(name: "x", arg: 1, scope: !4331, file: !265, line: 835, type: !11)
!4335 = !DILocation(line: 0, scope: !4331)
!4336 = !{!"2221"}
!4337 = !DILocalVariable(name: "y", arg: 2, scope: !4331, file: !265, line: 835, type: !11)
!4338 = !{!"2222"}
!4339 = !DILocation(line: 837, column: 18, scope: !4331)
!4340 = !{!"2223"}
!4341 = !DILocation(line: 837, column: 39, scope: !4331)
!4342 = !{!"2224"}
!4343 = !DILocation(line: 837, column: 29, scope: !4331)
!4344 = !{!"2225"}
!4345 = !DILocation(line: 837, column: 27, scope: !4331)
!4346 = !{!"2226"}
!4347 = !DILocation(line: 837, column: 2, scope: !4331)
!4348 = !{!"2227"}
!4349 = distinct !DISubprogram(name: "LT0", scope: !265, file: !265, line: 880, type: !4314, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4350 = !DILocalVariable(name: "x", arg: 1, scope: !4349, file: !265, line: 880, type: !6)
!4351 = !DILocation(line: 0, scope: !4349)
!4352 = !{!"2228"}
!4353 = !DILocation(line: 882, column: 21, scope: !4349)
!4354 = !{!"2229"}
!4355 = !DILocation(line: 882, column: 2, scope: !4349)
!4356 = !{!"2230"}
!4357 = distinct !DISubprogram(name: "GT", scope: !265, file: !265, line: 803, type: !1397, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4358 = !DILocalVariable(name: "x", arg: 1, scope: !4357, file: !265, line: 803, type: !11)
!4359 = !DILocation(line: 0, scope: !4357)
!4360 = !{!"2231"}
!4361 = !DILocalVariable(name: "y", arg: 2, scope: !4357, file: !265, line: 803, type: !11)
!4362 = !{!"2232"}
!4363 = !DILocation(line: 819, column: 8, scope: !4357)
!4364 = !{!"2233"}
!4365 = !DILocalVariable(name: "z", scope: !4357, file: !265, line: 817, type: !11)
!4366 = !{!"2234"}
!4367 = !DILocation(line: 820, column: 18, scope: !4357)
!4368 = !{!"2235"}
!4369 = !DILocation(line: 820, column: 28, scope: !4357)
!4370 = !{!"2236"}
!4371 = !DILocation(line: 820, column: 23, scope: !4357)
!4372 = !{!"2237"}
!4373 = !DILocation(line: 820, column: 12, scope: !4357)
!4374 = !{!"2238"}
!4375 = !DILocation(line: 820, column: 35, scope: !4357)
!4376 = !{!"2239"}
!4377 = !DILocation(line: 820, column: 2, scope: !4357)
!4378 = !{!"2240"}
!4379 = distinct !DISubprogram(name: "br_ec_p256_m62_get", scope: !3, file: !3, line: 1751, type: !4380, scopeLine: 1752, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!4382}
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!4383 = !DILocation(line: 1753, column: 2, scope: !4379)
!4384 = !{!"2241"}
