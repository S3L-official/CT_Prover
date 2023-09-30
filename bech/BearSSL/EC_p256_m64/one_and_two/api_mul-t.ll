; ModuleID = 'api_mul-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_ec_impl = type { i32, i8* (i32, i64*)*, i8* (i32, i64*)*, i64 (i32, i64*)*, i32 (i8*, i64, i8*, i64, i32)*, i64 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* }
%struct.p256_affine = type { [4 x i64], [4 x i64] }
%struct.smack_value = type { i8* }
%struct.p256_jacobian = type { [4 x i64], [4 x i64], [4 x i64] }
%union.anon = type { [15 x %struct.p256_jacobian] }

@br_ec_p256_m64 = dso_local constant %struct.br_ec_impl { i32 8388608, i8* (i32, i64*)* @api_generator, i8* (i32, i64*)* @api_order, i64 (i32, i64*)* @api_xoff, i32 (i8*, i64, i8*, i64, i32)* @api_mul, i64 (i8*, i8*, i64, i32)* @api_mulgen, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* @api_muladd }, align 8, !dbg !0, !psr.id !95
@f256_frommonty.one = internal constant [4 x i64] [i64 1, i64 0, i64 0, i64 0], align 16, !dbg !48, !psr.id !96
@P256_Gwin = internal constant [15 x %struct.p256_affine] [%struct.p256_affine { [4 x i64] [i64 8784043285714375740, i64 8483257759279461889, i64 8789745728267363600, i64 1770019616739251654], [4 x i64] [i64 -2453807210370345462, i64 -8409706061646666660, i64 -3249199208764148955, i64 -8830996915122840187] }, %struct.p256_affine { [4 x i64] [i64 -8863006190035151283, i64 -6166866318907440515, i64 8296198976379850969, i64 -667884163863463365], [4 x i64] [i64 3401986641240187301, i64 1525831644595056632, i64 1849003687033449918, i64 8702493044913179195] }, %struct.p256_affine { [4 x i64] [i64 -23574009011781337, i64 -5753357002088807941, i64 7398701556189346968, i64 2779682216903406718], [4 x i64] [i64 -5743114133209634837, i64 6358598532389273114, i64 8683512038509439374, i64 -3030805821043258361] }, %struct.p256_affine { [4 x i64] [i64 8408419572923862476, i64 5066733120953500019, i64 926242532005776114, i64 6301489109130024811], [4 x i64] [i64 3285079390283344806, i64 1685054835664548935, i64 7740622190510199342, i64 -8885236780847417245] }, %struct.p256_affine { [4 x i64] [i64 -4748048898908724747, i64 -8003911822661299331, i64 -7774139111501807092, i64 -3961032396731243576], [4 x i64] [i64 -1499527929896743152, i64 8342189264337602603, i64 3837253281927274344, i64 8331789856935110934] }, %struct.p256_affine { [4 x i64] [i64 4627808394696681034, i64 6174000022702321214, i64 -3095496753922202707, i64 1371147458593240691], [4 x i64] [i64 -7794778636921871285, i64 2998319090323362997, i64 -854324602394665199, i64 -6572562282591029409] }, %struct.p256_affine { [4 x i64] [i64 524165018444839759, i64 3157588572894920951, i64 -847051985329603832, i64 1421537803477597699], [4 x i64] [i64 2902517390503550285, i64 7440776657136679901, i64 -1183536458979786347, i64 -1518318813288593305] }, %struct.p256_affine { [4 x i64] [i64 2878166099891431311, i64 5056053391262430293, i64 -8101711662430749589, i64 -5232187577139387635], [4 x i64] [i64 -748262015433356937, i64 2441850938900527637, i64 1314061001345252336, i64 6263402014353842038] }, %struct.p256_affine { [4 x i64] [i64 8487436533858443496, i64 -6059945222448109503, i64 3224748875345095424, i64 -2280175455979642517], [4 x i64] [i64 2213369110503306004, i64 6246347469485852131, i64 3129440554298978074, i64 605269941184323483] }, %struct.p256_affine { [4 x i64] [i64 3177531230451277512, i64 -7423754583214685895, i64 8321856985295555401, i64 -3719470509835730289], [4 x i64] [i64 876865438755954294, i64 -4306978836819493368, i64 6880705719513638354, i64 8678887646434118325] }, %struct.p256_affine { [4 x i64] [i64 -1550040870705306620, i64 -7069517176679440416, i64 2302364246994590389, i64 4499255394192625779], [4 x i64] [i64 1906858144627445384, i64 2670515414718439880, i64 868537809054295101, i64 7535366755622172814] }, %struct.p256_affine { [4 x i64] [i64 339769604981749608, i64 -6062162901153326541, i64 2596838235904096350, i64 5684069910326796630], [4 x i64] [i64 913125548148611907, i64 1661497269948077623, i64 2892028918424825190, i64 9220412792897768138] }, %struct.p256_affine { [4 x i64] [i64 -3691784686143613175, i64 1023838193204581133, i64 -4846765730473011183, i64 8323909593307920217], [4 x i64] [i64 3852032956982813055, i64 7526785533690696419, i64 8993798556223495105, i64 -306095886232471657] }, %struct.p256_affine { [4 x i64] [i64 -6754656876898589110, i64 1328079167955601379, i64 1664008958165329504, i64 -383242255448488146], [4 x i64] [i64 2861243404839114859, i64 -4744165493653227582, i64 -1665178207430252581, i64 1524194541633674171] }, %struct.p256_affine { [4 x i64] [i64 8267721299596412251, i64 273633183929630283, i64 -1282553767069117584, i64 -2113861393989772791], [4 x i64] [i64 4663567915067622493, i64 -2925592271918982363, i64 7273215397645141911, i64 2324445691280731636] }], align 16, !dbg !51, !psr.id !97
@F256_R = internal constant [4 x i64] [i64 1, i64 -4294967296, i64 -1, i64 4294967294], align 16, !dbg !46, !psr.id !98
@P256_B_MONTY = internal constant [4 x i64] [i64 -2838148052449706529, i64 -5985277524727025520, i64 -1899920169839284522, i64 -2580555864783501260], align 16, !dbg !44, !psr.id !99
@f256_tomonty.R2 = internal constant [4 x i64] [i64 3, i64 -17179869185, i64 -2, i64 21474836477], align 16, !dbg !33, !psr.id !100
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
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_p256_m64, metadata !149, metadata !DIExpression()), !dbg !115, !psr.id !162
  %12 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_p256_m64, i32 0, i32 4, !dbg !163, !psr.id !164
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
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_p256_m64, metadata !192, metadata !DIExpression()), !dbg !176, !psr.id !193
  %5 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_p256_m64, i32 0, i32 4, !dbg !194, !psr.id !195
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
  br label %51, !dbg !419, !psr.id !421

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
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 0, i64 0, !dbg !455, !psr.id !456
  call void @f256_final_reduce(i64* %23), !dbg !457, !psr.id !458
  %24 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !459, !psr.id !460
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %24, i64 0, i64 0, !dbg !461, !psr.id !462
  %26 = load i64, i64* %25, align 8, !dbg !461, !psr.id !463
  %27 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !464, !psr.id !465
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 1, !dbg !466, !psr.id !467
  %29 = load i64, i64* %28, align 8, !dbg !466, !psr.id !468
  %30 = or i64 %26, %29, !dbg !469, !psr.id !470
  %31 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !471, !psr.id !472
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %31, i64 0, i64 2, !dbg !473, !psr.id !474
  %33 = load i64, i64* %32, align 8, !dbg !473, !psr.id !475
  %34 = or i64 %30, %33, !dbg !476, !psr.id !477
  %35 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !478, !psr.id !479
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %35, i64 0, i64 3, !dbg !480, !psr.id !481
  %37 = load i64, i64* %36, align 8, !dbg !480, !psr.id !482
  %38 = or i64 %34, %37, !dbg !483, !psr.id !484
  call void @llvm.dbg.value(metadata i64 %38, metadata !485, metadata !DIExpression()), !dbg !392, !psr.id !486
  %39 = lshr i64 %38, 32, !dbg !487, !psr.id !488
  %40 = or i64 %38, %39, !dbg !489, !psr.id !490
  %41 = trunc i64 %40 to i32, !dbg !491, !psr.id !492
  %42 = call i32 @EQ(i32 %41, i32 0), !dbg !493, !psr.id !494
  call void @llvm.dbg.value(metadata i32 %42, metadata !495, metadata !DIExpression()), !dbg !392, !psr.id !496
  call void @p256_double(%struct.p256_jacobian* %10), !dbg !497, !psr.id !498
  %43 = xor i32 %21, -1, !dbg !499, !psr.id !500
  %44 = and i32 %42, %43, !dbg !501, !psr.id !502
  %45 = bitcast %struct.p256_jacobian* %9 to i8*, !dbg !503, !psr.id !504
  %46 = bitcast %struct.p256_jacobian* %10 to i8*, !dbg !505, !psr.id !506
  call void @br_ccopy(i32 %44, i8* %45, i8* %46, i64 96), !dbg !507, !psr.id !508
  %47 = call i32 @point_encode(i8* %0, %struct.p256_jacobian* %9), !dbg !509, !psr.id !510
  %48 = and i32 %42, %21, !dbg !511, !psr.id !512
  %49 = xor i32 %48, -1, !dbg !513, !psr.id !514
  %50 = and i32 %.01, %49, !dbg !515, !psr.id !516
  call void @llvm.dbg.value(metadata i32 %50, metadata !424, metadata !DIExpression()), !dbg !392, !psr.id !517
  br label %51, !dbg !518, !psr.id !519

51:                                               ; preds = %20, %12
  %.0 = phi i32 [ 0, %12 ], [ %50, %20 ], !dbg !392, !psr.id !520
  ret i32 %.0, !dbg !521, !psr.id !522
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @point_decode(%struct.p256_jacobian* %0, i8* %1) #0 !dbg !523 {
  %3 = alloca [4 x i64], align 16, !psr.id !527
  %4 = alloca [4 x i64], align 16, !psr.id !528
  %5 = alloca [4 x i64], align 16, !psr.id !529
  %6 = alloca [4 x i64], align 16, !psr.id !530
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !531, metadata !DIExpression()), !dbg !532, !psr.id !533
  call void @llvm.dbg.value(metadata i8* %1, metadata !534, metadata !DIExpression()), !dbg !532, !psr.id !535
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !536, metadata !DIExpression()), !dbg !537, !psr.id !538
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !539, metadata !DIExpression()), !dbg !540, !psr.id !541
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !542, metadata !DIExpression()), !dbg !543, !psr.id !544
  call void @llvm.dbg.declare(metadata [4 x i64]* %6, metadata !545, metadata !DIExpression()), !dbg !546, !psr.id !547
  %7 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !548, !psr.id !549
  %8 = load i8, i8* %7, align 1, !dbg !548, !psr.id !550
  %9 = zext i8 %8 to i32, !dbg !548, !psr.id !551
  %10 = call i32 @EQ(i32 %9, i32 4), !dbg !552, !psr.id !553
  call void @llvm.dbg.value(metadata i32 %10, metadata !554, metadata !DIExpression()), !dbg !532, !psr.id !555
  %11 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !556, !psr.id !557
  %12 = call i64 @br_dec64be(i8* %11), !dbg !558, !psr.id !559
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3, !dbg !560, !psr.id !561
  store i64 %12, i64* %13, align 8, !dbg !562, !psr.id !563
  %14 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !564, !psr.id !565
  %15 = call i64 @br_dec64be(i8* %14), !dbg !566, !psr.id !567
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2, !dbg !568, !psr.id !569
  store i64 %15, i64* %16, align 16, !dbg !570, !psr.id !571
  %17 = getelementptr inbounds i8, i8* %1, i64 17, !dbg !572, !psr.id !573
  %18 = call i64 @br_dec64be(i8* %17), !dbg !574, !psr.id !575
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1, !dbg !576, !psr.id !577
  store i64 %18, i64* %19, align 8, !dbg !578, !psr.id !579
  %20 = getelementptr inbounds i8, i8* %1, i64 25, !dbg !580, !psr.id !581
  %21 = call i64 @br_dec64be(i8* %20), !dbg !582, !psr.id !583
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !584, !psr.id !585
  store i64 %21, i64* %22, align 16, !dbg !586, !psr.id !587
  %23 = getelementptr inbounds i8, i8* %1, i64 33, !dbg !588, !psr.id !589
  %24 = call i64 @br_dec64be(i8* %23), !dbg !590, !psr.id !591
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3, !dbg !592, !psr.id !593
  store i64 %24, i64* %25, align 8, !dbg !594, !psr.id !595
  %26 = getelementptr inbounds i8, i8* %1, i64 41, !dbg !596, !psr.id !597
  %27 = call i64 @br_dec64be(i8* %26), !dbg !598, !psr.id !599
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2, !dbg !600, !psr.id !601
  store i64 %27, i64* %28, align 16, !dbg !602, !psr.id !603
  %29 = getelementptr inbounds i8, i8* %1, i64 49, !dbg !604, !psr.id !605
  %30 = call i64 @br_dec64be(i8* %29), !dbg !606, !psr.id !607
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1, !dbg !608, !psr.id !609
  store i64 %30, i64* %31, align 8, !dbg !610, !psr.id !611
  %32 = getelementptr inbounds i8, i8* %1, i64 57, !dbg !612, !psr.id !613
  %33 = call i64 @br_dec64be(i8* %32), !dbg !614, !psr.id !615
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !616, !psr.id !617
  store i64 %33, i64* %34, align 16, !dbg !618, !psr.id !619
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !620, !psr.id !621
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !622, !psr.id !623
  call void @f256_tomonty(i64* %35, i64* %36), !dbg !624, !psr.id !625
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !626, !psr.id !627
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !628, !psr.id !629
  call void @f256_tomonty(i64* %37, i64* %38), !dbg !630, !psr.id !631
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !632, !psr.id !633
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !634, !psr.id !635
  call void @f256_montysquare(i64* %39, i64* %40), !dbg !636, !psr.id !637
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !638, !psr.id !639
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !640, !psr.id !641
  call void @f256_montysquare(i64* %41, i64* %42), !dbg !642, !psr.id !643
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !644, !psr.id !645
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !646, !psr.id !647
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !648, !psr.id !649
  call void @f256_montymul(i64* %43, i64* %44, i64* %45), !dbg !650, !psr.id !651
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !652, !psr.id !653
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !654, !psr.id !655
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !656, !psr.id !657
  call void @f256_sub(i64* %46, i64* %47, i64* %48), !dbg !658, !psr.id !659
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !660, !psr.id !661
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !662, !psr.id !663
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !664, !psr.id !665
  call void @f256_add(i64* %49, i64* %50, i64* %51), !dbg !666, !psr.id !667
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !668, !psr.id !669
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !670, !psr.id !671
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !672, !psr.id !673
  call void @f256_add(i64* %52, i64* %53, i64* %54), !dbg !674, !psr.id !675
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !676, !psr.id !677
  %56 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !678, !psr.id !679
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !680, !psr.id !681
  call void @f256_add(i64* %55, i64* %56, i64* %57), !dbg !682, !psr.id !683
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !684, !psr.id !685
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !686, !psr.id !687
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* @P256_B_MONTY, i64 0, i64 0, !psr.id !688
  call void @f256_sub(i64* %58, i64* %59, i64* %60), !dbg !689, !psr.id !690
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !691, !psr.id !692
  call void @f256_final_reduce(i64* %61), !dbg !693, !psr.id !694
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !695, !psr.id !696
  %63 = load i64, i64* %62, align 16, !dbg !695, !psr.id !697
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1, !dbg !698, !psr.id !699
  %65 = load i64, i64* %64, align 8, !dbg !698, !psr.id !700
  %66 = or i64 %63, %65, !dbg !701, !psr.id !702
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2, !dbg !703, !psr.id !704
  %68 = load i64, i64* %67, align 16, !dbg !703, !psr.id !705
  %69 = or i64 %66, %68, !dbg !706, !psr.id !707
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !708, !psr.id !709
  %71 = load i64, i64* %70, align 8, !dbg !708, !psr.id !710
  %72 = or i64 %69, %71, !dbg !711, !psr.id !712
  call void @llvm.dbg.value(metadata i64 %72, metadata !713, metadata !DIExpression()), !dbg !532, !psr.id !714
  %73 = lshr i64 %72, 32, !dbg !715, !psr.id !716
  %74 = or i64 %72, %73, !dbg !717, !psr.id !718
  %75 = trunc i64 %74 to i32, !dbg !719, !psr.id !720
  %76 = call i32 @EQ(i32 %75, i32 0), !dbg !721, !psr.id !722
  %77 = and i32 %10, %76, !dbg !723, !psr.id !724
  call void @llvm.dbg.value(metadata i32 %77, metadata !554, metadata !DIExpression()), !dbg !532, !psr.id !725
  %78 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !726, !psr.id !727
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %78, i64 0, i64 0, !dbg !728, !psr.id !729
  %80 = bitcast i64* %79 to i8*, !dbg !728, !psr.id !730
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !728, !psr.id !731
  %82 = bitcast i64* %81 to i8*, !dbg !728, !psr.id !732
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 16 %82, i64 32, i1 false), !dbg !728, !psr.id !733
  %83 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !734, !psr.id !735
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %83, i64 0, i64 0, !dbg !736, !psr.id !737
  %85 = bitcast i64* %84 to i8*, !dbg !736, !psr.id !738
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !736, !psr.id !739
  %87 = bitcast i64* %86 to i8*, !dbg !736, !psr.id !740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 16 %87, i64 32, i1 false), !dbg !736, !psr.id !741
  %88 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !742, !psr.id !743
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %88, i64 0, i64 0, !dbg !744, !psr.id !745
  %90 = bitcast i64* %89 to i8*, !dbg !744, !psr.id !746
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 16 bitcast ([4 x i64]* @F256_R to i8*), i64 32, i1 false), !dbg !744, !psr.id !747
  ret i32 %77, !dbg !748, !psr.id !749
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_mul(%struct.p256_jacobian* %0, i8* %1, i64 %2) #0 !dbg !750 {
  %4 = alloca %union.anon, align 8, !psr.id !753
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !754, metadata !DIExpression()), !dbg !755, !psr.id !756
  call void @llvm.dbg.value(metadata i8* %1, metadata !757, metadata !DIExpression()), !dbg !755, !psr.id !758
  call void @llvm.dbg.value(metadata i64 %2, metadata !759, metadata !DIExpression()), !dbg !755, !psr.id !760
  call void @llvm.dbg.declare(metadata %union.anon* %4, metadata !761, metadata !DIExpression()), !dbg !768, !psr.id !769
  %5 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !770, !psr.id !771
  %6 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %5, i64 0, i64 0, !dbg !772, !psr.id !773
  %7 = bitcast %struct.p256_jacobian* %6 to i8*, !dbg !774, !psr.id !775
  %8 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !774, !psr.id !776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 96, i1 false), !dbg !774, !psr.id !777
  call void @llvm.dbg.value(metadata i32 2, metadata !778, metadata !DIExpression()), !dbg !755, !psr.id !779
  br label %9, !dbg !780, !psr.id !782

9:                                                ; preds = %41, %3
  %.0 = phi i32 [ 2, %3 ], [ %42, %41 ], !dbg !783, !psr.id !784
  call void @llvm.dbg.value(metadata i32 %.0, metadata !778, metadata !DIExpression()), !dbg !755, !psr.id !785
  %10 = icmp slt i32 %.0, 16, !dbg !786, !psr.id !788
  br i1 %10, label %11, label %43, !dbg !789, !psr.id !790

11:                                               ; preds = %9
  %12 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !791, !psr.id !793
  %13 = sub nsw i32 %.0, 1, !dbg !794, !psr.id !795
  %14 = sext i32 %13 to i64, !dbg !796, !psr.id !797
  %15 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %12, i64 0, i64 %14, !dbg !796, !psr.id !798
  %16 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !799, !psr.id !800
  %17 = ashr i32 %.0, 1, !dbg !801, !psr.id !802
  %18 = sub nsw i32 %17, 1, !dbg !803, !psr.id !804
  %19 = sext i32 %18 to i64, !dbg !805, !psr.id !806
  %20 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %16, i64 0, i64 %19, !dbg !805, !psr.id !807
  %21 = bitcast %struct.p256_jacobian* %15 to i8*, !dbg !805, !psr.id !808
  %22 = bitcast %struct.p256_jacobian* %20 to i8*, !dbg !805, !psr.id !809
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 96, i1 false), !dbg !805, !psr.id !810
  %23 = and i32 %.0, 1, !dbg !811, !psr.id !813
  %24 = icmp eq i32 %23, 0, !dbg !814, !psr.id !815
  br i1 %24, label %25, label %30, !dbg !816, !psr.id !817

25:                                               ; preds = %11
  %26 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !818, !psr.id !820
  %27 = sub nsw i32 %.0, 1, !dbg !821, !psr.id !822
  %28 = sext i32 %27 to i64, !dbg !823, !psr.id !824
  %29 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %26, i64 0, i64 %28, !dbg !823, !psr.id !825
  call void @p256_double(%struct.p256_jacobian* %29), !dbg !826, !psr.id !827
  br label %40, !dbg !828, !psr.id !829

30:                                               ; preds = %11
  %31 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !830, !psr.id !832
  %32 = sub nsw i32 %.0, 1, !dbg !833, !psr.id !834
  %33 = sext i32 %32 to i64, !dbg !835, !psr.id !836
  %34 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %31, i64 0, i64 %33, !dbg !835, !psr.id !837
  %35 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !838, !psr.id !839
  %36 = ashr i32 %.0, 1, !dbg !840, !psr.id !841
  %37 = sext i32 %36 to i64, !dbg !842, !psr.id !843
  %38 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %35, i64 0, i64 %37, !dbg !842, !psr.id !844
  %39 = call i32 @p256_add(%struct.p256_jacobian* %34, %struct.p256_jacobian* %38), !dbg !845, !psr.id !846
  br label %40, !psr.id !847

40:                                               ; preds = %30, %25
  br label %41, !dbg !848, !psr.id !849

41:                                               ; preds = %40
  %42 = add nsw i32 %.0, 1, !dbg !850, !psr.id !851
  call void @llvm.dbg.value(metadata i32 %42, metadata !778, metadata !DIExpression()), !dbg !755, !psr.id !852
  br label %9, !dbg !853, !llvm.loop !854, !psr.id !856

43:                                               ; preds = %9
  %44 = bitcast %union.anon* %4 to [15 x %struct.p256_affine]*, !dbg !857, !psr.id !858
  %45 = getelementptr inbounds [15 x %struct.p256_affine], [15 x %struct.p256_affine]* %44, i64 0, i64 0, !dbg !859, !psr.id !860
  %46 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !861, !psr.id !862
  %47 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %46, i64 0, i64 0, !dbg !863, !psr.id !864
  call void @window_to_affine(%struct.p256_affine* %45, %struct.p256_jacobian* %47, i32 15), !dbg !865, !psr.id !866
  %48 = bitcast %union.anon* %4 to [15 x %struct.p256_affine]*, !dbg !867, !psr.id !868
  %49 = getelementptr inbounds [15 x %struct.p256_affine], [15 x %struct.p256_affine]* %48, i64 0, i64 0, !dbg !869, !psr.id !870
  call void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* %49, i8* %1, i64 %2), !dbg !871, !psr.id !872
  ret void, !dbg !873, !psr.id !874
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_mulgen(%struct.p256_jacobian* %0, i8* %1, i64 %2) #0 !dbg !875 {
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !876, metadata !DIExpression()), !dbg !877, !psr.id !878
  call void @llvm.dbg.value(metadata i8* %1, metadata !879, metadata !DIExpression()), !dbg !877, !psr.id !880
  call void @llvm.dbg.value(metadata i64 %2, metadata !881, metadata !DIExpression()), !dbg !877, !psr.id !882
  %4 = getelementptr inbounds [15 x %struct.p256_affine], [15 x %struct.p256_affine]* @P256_Gwin, i64 0, i64 0, !psr.id !883
  call void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* %4, i8* %1, i64 %2), !dbg !884, !psr.id !885
  ret void, !dbg !886, !psr.id !887
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @p256_add(%struct.p256_jacobian* %0, %struct.p256_jacobian* %1) #0 !dbg !888 {
  %3 = alloca [4 x i64], align 16, !psr.id !893
  %4 = alloca [4 x i64], align 16, !psr.id !894
  %5 = alloca [4 x i64], align 16, !psr.id !895
  %6 = alloca [4 x i64], align 16, !psr.id !896
  %7 = alloca [4 x i64], align 16, !psr.id !897
  %8 = alloca [4 x i64], align 16, !psr.id !898
  %9 = alloca [4 x i64], align 16, !psr.id !899
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !900, metadata !DIExpression()), !dbg !901, !psr.id !902
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !903, metadata !DIExpression()), !dbg !901, !psr.id !904
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !905, metadata !DIExpression()), !dbg !906, !psr.id !907
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !908, metadata !DIExpression()), !dbg !909, !psr.id !910
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !911, metadata !DIExpression()), !dbg !912, !psr.id !913
  call void @llvm.dbg.declare(metadata [4 x i64]* %6, metadata !914, metadata !DIExpression()), !dbg !915, !psr.id !916
  call void @llvm.dbg.declare(metadata [4 x i64]* %7, metadata !917, metadata !DIExpression()), !dbg !918, !psr.id !919
  call void @llvm.dbg.declare(metadata [4 x i64]* %8, metadata !920, metadata !DIExpression()), !dbg !921, !psr.id !922
  call void @llvm.dbg.declare(metadata [4 x i64]* %9, metadata !923, metadata !DIExpression()), !dbg !924, !psr.id !925
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !926, !psr.id !927
  %11 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !928, !psr.id !929
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0, !dbg !930, !psr.id !931
  call void @f256_montysquare(i64* %10, i64* %12), !dbg !932, !psr.id !933
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !934, !psr.id !935
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !936, !psr.id !937
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0, !dbg !938, !psr.id !939
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !940, !psr.id !941
  call void @f256_montymul(i64* %13, i64* %15, i64* %16), !dbg !942, !psr.id !943
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !944, !psr.id !945
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !946, !psr.id !947
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0, !dbg !948, !psr.id !949
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !950, !psr.id !951
  call void @f256_montymul(i64* %17, i64* %19, i64* %20), !dbg !952, !psr.id !953
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !954, !psr.id !955
  %22 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !956, !psr.id !957
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 0, i64 0, !dbg !958, !psr.id !959
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !960, !psr.id !961
  call void @f256_montymul(i64* %21, i64* %23, i64* %24), !dbg !962, !psr.id !963
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !964, !psr.id !965
  %26 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !966, !psr.id !967
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %26, i64 0, i64 0, !dbg !968, !psr.id !969
  call void @f256_montysquare(i64* %25, i64* %27), !dbg !970, !psr.id !971
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !972, !psr.id !973
  %29 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 0, !dbg !974, !psr.id !975
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %29, i64 0, i64 0, !dbg !976, !psr.id !977
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !978, !psr.id !979
  call void @f256_montymul(i64* %28, i64* %30, i64* %31), !dbg !980, !psr.id !981
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !982, !psr.id !983
  %33 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !984, !psr.id !985
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %33, i64 0, i64 0, !dbg !986, !psr.id !987
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !988, !psr.id !989
  call void @f256_montymul(i64* %32, i64* %34, i64* %35), !dbg !990, !psr.id !991
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !992, !psr.id !993
  %37 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 1, !dbg !994, !psr.id !995
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %37, i64 0, i64 0, !dbg !996, !psr.id !997
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !998, !psr.id !999
  call void @f256_montymul(i64* %36, i64* %38, i64* %39), !dbg !1000, !psr.id !1001
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1002, !psr.id !1003
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1004, !psr.id !1005
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1006, !psr.id !1007
  call void @f256_sub(i64* %40, i64* %41, i64* %42), !dbg !1008, !psr.id !1009
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1010, !psr.id !1011
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1012, !psr.id !1013
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1014, !psr.id !1015
  call void @f256_sub(i64* %43, i64* %44, i64* %45), !dbg !1016, !psr.id !1017
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1018, !psr.id !1019
  call void @f256_final_reduce(i64* %46), !dbg !1020, !psr.id !1021
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1022, !psr.id !1023
  %48 = load i64, i64* %47, align 16, !dbg !1022, !psr.id !1024
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1, !dbg !1025, !psr.id !1026
  %50 = load i64, i64* %49, align 8, !dbg !1025, !psr.id !1027
  %51 = or i64 %48, %50, !dbg !1028, !psr.id !1029
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2, !dbg !1030, !psr.id !1031
  %53 = load i64, i64* %52, align 16, !dbg !1030, !psr.id !1032
  %54 = or i64 %51, %53, !dbg !1033, !psr.id !1034
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 3, !dbg !1035, !psr.id !1036
  %56 = load i64, i64* %55, align 8, !dbg !1035, !psr.id !1037
  %57 = or i64 %54, %56, !dbg !1038, !psr.id !1039
  call void @llvm.dbg.value(metadata i64 %57, metadata !1040, metadata !DIExpression()), !dbg !901, !psr.id !1041
  %58 = lshr i64 %57, 32, !dbg !1042, !psr.id !1043
  %59 = or i64 %57, %58, !dbg !1044, !psr.id !1045
  %60 = trunc i64 %59 to i32, !dbg !1046, !psr.id !1047
  call void @llvm.dbg.value(metadata i32 %60, metadata !1048, metadata !DIExpression()), !dbg !901, !psr.id !1049
  %61 = sub i32 0, %60, !dbg !1050, !psr.id !1051
  %62 = or i32 %60, %61, !dbg !1052, !psr.id !1053
  %63 = lshr i32 %62, 31, !dbg !1054, !psr.id !1055
  call void @llvm.dbg.value(metadata i32 %63, metadata !1048, metadata !DIExpression()), !dbg !901, !psr.id !1056
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !1057, !psr.id !1058
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1059, !psr.id !1060
  call void @f256_montysquare(i64* %64, i64* %65), !dbg !1061, !psr.id !1062
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1063, !psr.id !1064
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1065, !psr.id !1066
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !1067, !psr.id !1068
  call void @f256_montymul(i64* %66, i64* %67, i64* %68), !dbg !1069, !psr.id !1070
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !1071, !psr.id !1072
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !1073, !psr.id !1074
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1075, !psr.id !1076
  call void @f256_montymul(i64* %69, i64* %70, i64* %71), !dbg !1077, !psr.id !1078
  %72 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1079, !psr.id !1080
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %72, i64 0, i64 0, !dbg !1081, !psr.id !1082
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1083, !psr.id !1084
  call void @f256_montysquare(i64* %73, i64* %74), !dbg !1085, !psr.id !1086
  %75 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1087, !psr.id !1088
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %75, i64 0, i64 0, !dbg !1089, !psr.id !1090
  %77 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1091, !psr.id !1092
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %77, i64 0, i64 0, !dbg !1093, !psr.id !1094
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !1095, !psr.id !1096
  call void @f256_sub(i64* %76, i64* %78, i64* %79), !dbg !1097, !psr.id !1098
  %80 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1099, !psr.id !1100
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %80, i64 0, i64 0, !dbg !1101, !psr.id !1102
  %82 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1103, !psr.id !1104
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %82, i64 0, i64 0, !dbg !1105, !psr.id !1106
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1107, !psr.id !1108
  call void @f256_sub(i64* %81, i64* %83, i64* %84), !dbg !1109, !psr.id !1110
  %85 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1111, !psr.id !1112
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %85, i64 0, i64 0, !dbg !1113, !psr.id !1114
  %87 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1115, !psr.id !1116
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %87, i64 0, i64 0, !dbg !1117, !psr.id !1118
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1119, !psr.id !1120
  call void @f256_sub(i64* %86, i64* %88, i64* %89), !dbg !1121, !psr.id !1122
  %90 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1123, !psr.id !1124
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1125, !psr.id !1126
  %92 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1127, !psr.id !1128
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %92, i64 0, i64 0, !dbg !1129, !psr.id !1130
  call void @f256_sub(i64* %90, i64* %91, i64* %93), !dbg !1131, !psr.id !1132
  %94 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1133, !psr.id !1134
  %95 = getelementptr inbounds [4 x i64], [4 x i64]* %94, i64 0, i64 0, !dbg !1135, !psr.id !1136
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1137, !psr.id !1138
  %97 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1139, !psr.id !1140
  call void @f256_montymul(i64* %95, i64* %96, i64* %97), !dbg !1141, !psr.id !1142
  %98 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1143, !psr.id !1144
  %99 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !1145, !psr.id !1146
  %100 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1147, !psr.id !1148
  call void @f256_montymul(i64* %98, i64* %99, i64* %100), !dbg !1149, !psr.id !1150
  %101 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1151, !psr.id !1152
  %102 = getelementptr inbounds [4 x i64], [4 x i64]* %101, i64 0, i64 0, !dbg !1153, !psr.id !1154
  %103 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1155, !psr.id !1156
  %104 = getelementptr inbounds [4 x i64], [4 x i64]* %103, i64 0, i64 0, !dbg !1157, !psr.id !1158
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1159, !psr.id !1160
  call void @f256_sub(i64* %102, i64* %104, i64* %105), !dbg !1161, !psr.id !1162
  %106 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1163, !psr.id !1164
  %107 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1165, !psr.id !1166
  %108 = getelementptr inbounds [4 x i64], [4 x i64]* %107, i64 0, i64 0, !dbg !1167, !psr.id !1168
  %109 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1169, !psr.id !1170
  %110 = getelementptr inbounds [4 x i64], [4 x i64]* %109, i64 0, i64 0, !dbg !1171, !psr.id !1172
  call void @f256_montymul(i64* %106, i64* %108, i64* %110), !dbg !1173, !psr.id !1174
  %111 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1175, !psr.id !1176
  %112 = getelementptr inbounds [4 x i64], [4 x i64]* %111, i64 0, i64 0, !dbg !1177, !psr.id !1178
  %113 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1179, !psr.id !1180
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1181, !psr.id !1182
  call void @f256_montymul(i64* %112, i64* %113, i64* %114), !dbg !1183, !psr.id !1184
  ret i32 %63, !dbg !1185, !psr.id !1186
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_final_reduce(i64* %0) #0 !dbg !1187 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1190, metadata !DIExpression()), !dbg !1191, !psr.id !1192
  %2 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1193, !psr.id !1194
  %3 = load i64, i64* %2, align 8, !dbg !1193, !psr.id !1195, !ValueTainted !246
  %4 = zext i64 %3 to i128, !dbg !1196, !psr.id !1197, !ValueTainted !246
  %5 = add i128 %4, 1, !dbg !1198, !psr.id !1199, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %5, metadata !1200, metadata !DIExpression()), !dbg !1191, !psr.id !1201
  %6 = trunc i128 %5 to i64, !dbg !1202, !psr.id !1203, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %6, metadata !1204, metadata !DIExpression()), !dbg !1191, !psr.id !1205
  %7 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1206, !psr.id !1207
  %8 = load i64, i64* %7, align 8, !dbg !1206, !psr.id !1208, !ValueTainted !246
  %9 = zext i64 %8 to i128, !dbg !1209, !psr.id !1210, !ValueTainted !246
  %10 = lshr i128 %5, 64, !dbg !1211, !psr.id !1212, !ValueTainted !246
  %11 = add i128 %9, %10, !dbg !1213, !psr.id !1214, !ValueTainted !246
  %12 = sub i128 %11, 4294967296, !dbg !1215, !psr.id !1216, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %12, metadata !1200, metadata !DIExpression()), !dbg !1191, !psr.id !1217
  %13 = trunc i128 %12 to i64, !dbg !1218, !psr.id !1219, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %13, metadata !1220, metadata !DIExpression()), !dbg !1191, !psr.id !1221
  %14 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1222, !psr.id !1223
  %15 = load i64, i64* %14, align 8, !dbg !1222, !psr.id !1224, !ValueTainted !246
  %16 = zext i64 %15 to i128, !dbg !1225, !psr.id !1226, !ValueTainted !246
  %17 = lshr i128 %12, 127, !dbg !1227, !psr.id !1228, !ValueTainted !246
  %18 = sub i128 %16, %17, !dbg !1229, !psr.id !1230, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %18, metadata !1200, metadata !DIExpression()), !dbg !1191, !psr.id !1231
  %19 = trunc i128 %18 to i64, !dbg !1232, !psr.id !1233, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %19, metadata !1234, metadata !DIExpression()), !dbg !1191, !psr.id !1235
  %20 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1236, !psr.id !1237
  %21 = load i64, i64* %20, align 8, !dbg !1236, !psr.id !1238, !ValueTainted !246
  %22 = zext i64 %21 to i128, !dbg !1239, !psr.id !1240, !ValueTainted !246
  %23 = lshr i128 %18, 127, !dbg !1241, !psr.id !1242, !ValueTainted !246
  %24 = sub i128 %22, %23, !dbg !1243, !psr.id !1244, !ValueTainted !246
  %25 = add i128 %24, 4294967295, !dbg !1245, !psr.id !1246, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %25, metadata !1200, metadata !DIExpression()), !dbg !1191, !psr.id !1247
  %26 = trunc i128 %25 to i64, !dbg !1248, !psr.id !1249, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %26, metadata !1250, metadata !DIExpression()), !dbg !1191, !psr.id !1251
  %27 = lshr i128 %25, 64, !dbg !1252, !psr.id !1253, !ValueTainted !246
  %28 = trunc i128 %27 to i64, !dbg !1254, !psr.id !1255, !ValueTainted !246
  %29 = sub i64 0, %28, !dbg !1256, !psr.id !1257, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %29, metadata !1258, metadata !DIExpression()), !dbg !1191, !psr.id !1259
  %30 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1260, !psr.id !1261
  %31 = load i64, i64* %30, align 8, !dbg !1260, !psr.id !1262, !ValueTainted !246
  %32 = xor i64 %31, %6, !dbg !1263, !psr.id !1264, !ValueTainted !246
  %33 = and i64 %29, %32, !dbg !1265, !psr.id !1266, !ValueTainted !246
  %34 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1267, !psr.id !1268
  %35 = load i64, i64* %34, align 8, !dbg !1269, !psr.id !1270, !ValueTainted !246
  %36 = xor i64 %35, %33, !dbg !1269, !psr.id !1271, !ValueTainted !246
  store i64 %36, i64* %34, align 8, !dbg !1269, !psr.id !1272
  %37 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1273, !psr.id !1274
  %38 = load i64, i64* %37, align 8, !dbg !1273, !psr.id !1275, !ValueTainted !246
  %39 = xor i64 %38, %13, !dbg !1276, !psr.id !1277, !ValueTainted !246
  %40 = and i64 %29, %39, !dbg !1278, !psr.id !1279, !ValueTainted !246
  %41 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1280, !psr.id !1281
  %42 = load i64, i64* %41, align 8, !dbg !1282, !psr.id !1283, !ValueTainted !246
  %43 = xor i64 %42, %40, !dbg !1282, !psr.id !1284, !ValueTainted !246
  store i64 %43, i64* %41, align 8, !dbg !1282, !psr.id !1285
  %44 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1286, !psr.id !1287
  %45 = load i64, i64* %44, align 8, !dbg !1286, !psr.id !1288, !ValueTainted !246
  %46 = xor i64 %45, %19, !dbg !1289, !psr.id !1290, !ValueTainted !246
  %47 = and i64 %29, %46, !dbg !1291, !psr.id !1292, !ValueTainted !246
  %48 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1293, !psr.id !1294
  %49 = load i64, i64* %48, align 8, !dbg !1295, !psr.id !1296, !ValueTainted !246
  %50 = xor i64 %49, %47, !dbg !1295, !psr.id !1297, !ValueTainted !246
  store i64 %50, i64* %48, align 8, !dbg !1295, !psr.id !1298
  %51 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1299, !psr.id !1300
  %52 = load i64, i64* %51, align 8, !dbg !1299, !psr.id !1301, !ValueTainted !246
  %53 = xor i64 %52, %26, !dbg !1302, !psr.id !1303, !ValueTainted !246
  %54 = and i64 %29, %53, !dbg !1304, !psr.id !1305, !ValueTainted !246
  %55 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1306, !psr.id !1307
  %56 = load i64, i64* %55, align 8, !dbg !1308, !psr.id !1309, !ValueTainted !246
  %57 = xor i64 %56, %54, !dbg !1308, !psr.id !1310, !ValueTainted !246
  store i64 %57, i64* %55, align 8, !dbg !1308, !psr.id !1311
  ret void, !dbg !1312, !psr.id !1313
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !1314 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1317, metadata !DIExpression()), !dbg !1318, !psr.id !1319
  call void @llvm.dbg.value(metadata i32 %1, metadata !1320, metadata !DIExpression()), !dbg !1318, !psr.id !1321
  %3 = xor i32 %0, %1, !dbg !1322, !psr.id !1323, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %3, metadata !1324, metadata !DIExpression()), !dbg !1318, !psr.id !1325
  %4 = sub i32 0, %3, !dbg !1326, !psr.id !1327, !ValueTainted !246
  %5 = or i32 %3, %4, !dbg !1328, !psr.id !1329, !ValueTainted !246
  %6 = lshr i32 %5, 31, !dbg !1330, !psr.id !1331, !ValueTainted !246
  %7 = call i32 @NOT(i32 %6), !dbg !1332, !psr.id !1333, !ValueTainted !246
  ret i32 %7, !dbg !1334, !psr.id !1335
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_double(%struct.p256_jacobian* %0) #0 !dbg !1336 {
  %2 = alloca [4 x i64], align 16, !psr.id !1339
  %3 = alloca [4 x i64], align 16, !psr.id !1340
  %4 = alloca [4 x i64], align 16, !psr.id !1341
  %5 = alloca [4 x i64], align 16, !psr.id !1342
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !1343, metadata !DIExpression()), !dbg !1344, !psr.id !1345
  call void @llvm.dbg.declare(metadata [4 x i64]* %2, metadata !1346, metadata !DIExpression()), !dbg !1347, !psr.id !1348
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !1349, metadata !DIExpression()), !dbg !1350, !psr.id !1351
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !1352, metadata !DIExpression()), !dbg !1353, !psr.id !1354
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !1355, metadata !DIExpression()), !dbg !1356, !psr.id !1357
  %6 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !1358, !psr.id !1359
  %7 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1360, !psr.id !1361
  %8 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !1362, !psr.id !1363
  call void @f256_montysquare(i64* %6, i64* %8), !dbg !1364, !psr.id !1365
  %9 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1366, !psr.id !1367
  %10 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1368, !psr.id !1369
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0, !dbg !1370, !psr.id !1371
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !1372, !psr.id !1373
  call void @f256_add(i64* %9, i64* %11, i64* %12), !dbg !1374, !psr.id !1375
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !1376, !psr.id !1377
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1378, !psr.id !1379
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0, !dbg !1380, !psr.id !1381
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !1382, !psr.id !1383
  call void @f256_sub(i64* %13, i64* %15, i64* %16), !dbg !1384, !psr.id !1385
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1386, !psr.id !1387
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !1388, !psr.id !1389
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1390, !psr.id !1391
  call void @f256_montymul(i64* %17, i64* %18, i64* %19), !dbg !1392, !psr.id !1393
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !1394, !psr.id !1395
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1396, !psr.id !1397
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1398, !psr.id !1399
  call void @f256_add(i64* %20, i64* %21, i64* %22), !dbg !1400, !psr.id !1401
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !1402, !psr.id !1403
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1404, !psr.id !1405
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !1406, !psr.id !1407
  call void @f256_add(i64* %23, i64* %24, i64* %25), !dbg !1408, !psr.id !1409
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1410, !psr.id !1411
  %27 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1412, !psr.id !1413
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 0, !dbg !1414, !psr.id !1415
  call void @f256_montysquare(i64* %26, i64* %28), !dbg !1416, !psr.id !1417
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1418, !psr.id !1419
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1420, !psr.id !1421
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1422, !psr.id !1423
  call void @f256_add(i64* %29, i64* %30, i64* %31), !dbg !1424, !psr.id !1425
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1426, !psr.id !1427
  %33 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1428, !psr.id !1429
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %33, i64 0, i64 0, !dbg !1430, !psr.id !1431
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1432, !psr.id !1433
  call void @f256_montymul(i64* %32, i64* %34, i64* %35), !dbg !1434, !psr.id !1435
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1436, !psr.id !1437
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1438, !psr.id !1439
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1440, !psr.id !1441
  call void @f256_add(i64* %36, i64* %37, i64* %38), !dbg !1442, !psr.id !1443
  %39 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1444, !psr.id !1445
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %39, i64 0, i64 0, !dbg !1446, !psr.id !1447
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !1448, !psr.id !1449
  call void @f256_montysquare(i64* %40, i64* %41), !dbg !1450, !psr.id !1451
  %42 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1452, !psr.id !1453
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %42, i64 0, i64 0, !dbg !1454, !psr.id !1455
  %44 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1456, !psr.id !1457
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %44, i64 0, i64 0, !dbg !1458, !psr.id !1459
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1460, !psr.id !1461
  call void @f256_sub(i64* %43, i64* %45, i64* %46), !dbg !1462, !psr.id !1463
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1464, !psr.id !1465
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %47, i64 0, i64 0, !dbg !1466, !psr.id !1467
  %49 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1468, !psr.id !1469
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %49, i64 0, i64 0, !dbg !1470, !psr.id !1471
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1472, !psr.id !1473
  call void @f256_sub(i64* %48, i64* %50, i64* %51), !dbg !1474, !psr.id !1475
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1476, !psr.id !1477
  %53 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1478, !psr.id !1479
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %53, i64 0, i64 0, !dbg !1480, !psr.id !1481
  %55 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1482, !psr.id !1483
  %56 = getelementptr inbounds [4 x i64], [4 x i64]* %55, i64 0, i64 0, !dbg !1484, !psr.id !1485
  call void @f256_montymul(i64* %52, i64* %54, i64* %56), !dbg !1486, !psr.id !1487
  %57 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1488, !psr.id !1489
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %57, i64 0, i64 0, !dbg !1490, !psr.id !1491
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1492, !psr.id !1493
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1494, !psr.id !1495
  call void @f256_add(i64* %58, i64* %59, i64* %60), !dbg !1496, !psr.id !1497
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1498, !psr.id !1499
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1500, !psr.id !1501
  %63 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1502, !psr.id !1503
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %63, i64 0, i64 0, !dbg !1504, !psr.id !1505
  call void @f256_sub(i64* %61, i64* %62, i64* %64), !dbg !1506, !psr.id !1507
  %65 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1508, !psr.id !1509
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %65, i64 0, i64 0, !dbg !1510, !psr.id !1511
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !1512, !psr.id !1513
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1514, !psr.id !1515
  call void @f256_montymul(i64* %66, i64* %67, i64* %68), !dbg !1516, !psr.id !1517
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1518, !psr.id !1519
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1520, !psr.id !1521
  call void @f256_montysquare(i64* %69, i64* %70), !dbg !1522, !psr.id !1523
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1524, !psr.id !1525
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1526, !psr.id !1527
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1528, !psr.id !1529
  call void @f256_add(i64* %71, i64* %72, i64* %73), !dbg !1530, !psr.id !1531
  %74 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1532, !psr.id !1533
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %74, i64 0, i64 0, !dbg !1534, !psr.id !1535
  %76 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1536, !psr.id !1537
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %76, i64 0, i64 0, !dbg !1538, !psr.id !1539
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1540, !psr.id !1541
  call void @f256_sub(i64* %75, i64* %77, i64* %78), !dbg !1542, !psr.id !1543
  ret void, !dbg !1544, !psr.id !1545
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @point_encode(i8* %0, %struct.p256_jacobian* %1) #0 !dbg !1546 {
  %3 = alloca [4 x i64], align 16, !psr.id !1549
  %4 = alloca [4 x i64], align 16, !psr.id !1550
  call void @llvm.dbg.value(metadata i8* %0, metadata !1551, metadata !DIExpression()), !dbg !1552, !psr.id !1553
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !1554, metadata !DIExpression()), !dbg !1552, !psr.id !1555
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !1556, metadata !DIExpression()), !dbg !1557, !psr.id !1558
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !1559, metadata !DIExpression()), !dbg !1560, !psr.id !1561
  %5 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1562, !psr.id !1563
  %6 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1564, !psr.id !1565
  %7 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1566, !psr.id !1567
  call void @f256_invert(i64* %5, i64* %7), !dbg !1568, !psr.id !1569
  %8 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1570, !psr.id !1571
  %9 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1572, !psr.id !1573
  call void @f256_montysquare(i64* %8, i64* %9), !dbg !1574, !psr.id !1575
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1576, !psr.id !1577
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1578, !psr.id !1579
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1580, !psr.id !1581
  call void @f256_montymul(i64* %10, i64* %11, i64* %12), !dbg !1582, !psr.id !1583
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1584, !psr.id !1585
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 0, !dbg !1586, !psr.id !1587
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0, !dbg !1588, !psr.id !1589
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1590, !psr.id !1591
  call void @f256_montymul(i64* %13, i64* %15, i64* %16), !dbg !1592, !psr.id !1593
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1594, !psr.id !1595
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 1, !dbg !1596, !psr.id !1597
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0, !dbg !1598, !psr.id !1599
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1600, !psr.id !1601
  call void @f256_montymul(i64* %17, i64* %19, i64* %20), !dbg !1602, !psr.id !1603
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1604, !psr.id !1605
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1606, !psr.id !1607
  call void @f256_frommonty(i64* %21, i64* %22), !dbg !1608, !psr.id !1609
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1610, !psr.id !1611
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1612, !psr.id !1613
  call void @f256_frommonty(i64* %23, i64* %24), !dbg !1614, !psr.id !1615
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1616, !psr.id !1617
  call void @f256_final_reduce(i64* %25), !dbg !1618, !psr.id !1619
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1620, !psr.id !1621
  call void @f256_final_reduce(i64* %26), !dbg !1622, !psr.id !1623
  %27 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1624, !psr.id !1625
  store i8 4, i8* %27, align 1, !dbg !1626, !psr.id !1627
  %28 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1628, !psr.id !1629
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3, !dbg !1630, !psr.id !1631
  %30 = load i64, i64* %29, align 8, !dbg !1630, !psr.id !1632
  call void @br_enc64be(i8* %28, i64 %30), !dbg !1633, !psr.id !1634
  %31 = getelementptr inbounds i8, i8* %0, i64 9, !dbg !1635, !psr.id !1636
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2, !dbg !1637, !psr.id !1638
  %33 = load i64, i64* %32, align 16, !dbg !1637, !psr.id !1639
  call void @br_enc64be(i8* %31, i64 %33), !dbg !1640, !psr.id !1641
  %34 = getelementptr inbounds i8, i8* %0, i64 17, !dbg !1642, !psr.id !1643
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1, !dbg !1644, !psr.id !1645
  %36 = load i64, i64* %35, align 8, !dbg !1644, !psr.id !1646
  call void @br_enc64be(i8* %34, i64 %36), !dbg !1647, !psr.id !1648
  %37 = getelementptr inbounds i8, i8* %0, i64 25, !dbg !1649, !psr.id !1650
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1651, !psr.id !1652
  %39 = load i64, i64* %38, align 16, !dbg !1651, !psr.id !1653
  call void @br_enc64be(i8* %37, i64 %39), !dbg !1654, !psr.id !1655
  %40 = getelementptr inbounds i8, i8* %0, i64 33, !dbg !1656, !psr.id !1657
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3, !dbg !1658, !psr.id !1659
  %42 = load i64, i64* %41, align 8, !dbg !1658, !psr.id !1660
  call void @br_enc64be(i8* %40, i64 %42), !dbg !1661, !psr.id !1662
  %43 = getelementptr inbounds i8, i8* %0, i64 41, !dbg !1663, !psr.id !1664
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2, !dbg !1665, !psr.id !1666
  %45 = load i64, i64* %44, align 16, !dbg !1665, !psr.id !1667
  call void @br_enc64be(i8* %43, i64 %45), !dbg !1668, !psr.id !1669
  %46 = getelementptr inbounds i8, i8* %0, i64 49, !dbg !1670, !psr.id !1671
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1, !dbg !1672, !psr.id !1673
  %48 = load i64, i64* %47, align 8, !dbg !1672, !psr.id !1674
  call void @br_enc64be(i8* %46, i64 %48), !dbg !1675, !psr.id !1676
  %49 = getelementptr inbounds i8, i8* %0, i64 57, !dbg !1677, !psr.id !1678
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1679, !psr.id !1680
  %51 = load i64, i64* %50, align 16, !dbg !1679, !psr.id !1681
  call void @br_enc64be(i8* %49, i64 %51), !dbg !1682, !psr.id !1683
  %52 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1684, !psr.id !1685
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %52, i64 0, i64 0, !dbg !1686, !psr.id !1687
  %54 = load i64, i64* %53, align 8, !dbg !1686, !psr.id !1688
  %55 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1689, !psr.id !1690
  %56 = getelementptr inbounds [4 x i64], [4 x i64]* %55, i64 0, i64 1, !dbg !1691, !psr.id !1692
  %57 = load i64, i64* %56, align 8, !dbg !1691, !psr.id !1693
  %58 = or i64 %54, %57, !dbg !1694, !psr.id !1695
  %59 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1696, !psr.id !1697
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %59, i64 0, i64 2, !dbg !1698, !psr.id !1699
  %61 = load i64, i64* %60, align 8, !dbg !1698, !psr.id !1700
  %62 = or i64 %58, %61, !dbg !1701, !psr.id !1702
  %63 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !1703, !psr.id !1704
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %63, i64 0, i64 3, !dbg !1705, !psr.id !1706
  %65 = load i64, i64* %64, align 8, !dbg !1705, !psr.id !1707
  %66 = or i64 %62, %65, !dbg !1708, !psr.id !1709
  call void @llvm.dbg.value(metadata i64 %66, metadata !1710, metadata !DIExpression()), !dbg !1552, !psr.id !1711
  %67 = lshr i64 %66, 32, !dbg !1712, !psr.id !1713
  %68 = or i64 %66, %67, !dbg !1714, !psr.id !1715
  %69 = trunc i64 %68 to i32, !dbg !1716, !psr.id !1717
  %70 = call i32 @NEQ(i32 %69, i32 0), !dbg !1718, !psr.id !1719
  ret i32 %70, !dbg !1720, !psr.id !1721
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_invert(i64* %0, i64* %1) #0 !dbg !1722 {
  %3 = alloca [4 x i64], align 16, !psr.id !1723
  %4 = alloca [4 x i64], align 16, !psr.id !1724
  call void @llvm.dbg.value(metadata i64* %0, metadata !1725, metadata !DIExpression()), !dbg !1726, !psr.id !1727
  call void @llvm.dbg.value(metadata i64* %1, metadata !1728, metadata !DIExpression()), !dbg !1726, !psr.id !1729
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !1730, metadata !DIExpression()), !dbg !1731, !psr.id !1732
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !1733, metadata !DIExpression()), !dbg !1734, !psr.id !1735
  %5 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1736, !psr.id !1737
  %6 = bitcast i64* %5 to i8*, !dbg !1736, !psr.id !1738
  %7 = bitcast i64* %1 to i8*, !dbg !1736, !psr.id !1739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 8 %7, i64 32, i1 false), !dbg !1736, !psr.id !1740
  call void @llvm.dbg.value(metadata i32 0, metadata !1741, metadata !DIExpression()), !dbg !1726, !psr.id !1742
  br label %8, !dbg !1743, !psr.id !1745

8:                                                ; preds = %15, %2
  %.0 = phi i32 [ 0, %2 ], [ %16, %15 ], !dbg !1746, !psr.id !1747
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1741, metadata !DIExpression()), !dbg !1726, !psr.id !1748
  %9 = icmp slt i32 %.0, 30, !dbg !1749, !psr.id !1751
  br i1 %9, label %10, label %17, !dbg !1752, !psr.id !1753

10:                                               ; preds = %8
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1754, !psr.id !1756
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1757, !psr.id !1758
  call void @f256_montysquare(i64* %11, i64* %12), !dbg !1759, !psr.id !1760
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1761, !psr.id !1762
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1763, !psr.id !1764
  call void @f256_montymul(i64* %13, i64* %14, i64* %1), !dbg !1765, !psr.id !1766
  br label %15, !dbg !1767, !psr.id !1768

15:                                               ; preds = %10
  %16 = add nsw i32 %.0, 1, !dbg !1769, !psr.id !1770
  call void @llvm.dbg.value(metadata i32 %16, metadata !1741, metadata !DIExpression()), !dbg !1726, !psr.id !1771
  br label %8, !dbg !1772, !llvm.loop !1773, !psr.id !1775

17:                                               ; preds = %8
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1776, !psr.id !1777
  %19 = bitcast i64* %18 to i8*, !dbg !1776, !psr.id !1778
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1776, !psr.id !1779
  %21 = bitcast i64* %20 to i8*, !dbg !1776, !psr.id !1780
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 %21, i64 32, i1 false), !dbg !1776, !psr.id !1781
  call void @llvm.dbg.value(metadata i32 224, metadata !1741, metadata !DIExpression()), !dbg !1726, !psr.id !1782
  br label %22, !dbg !1783, !psr.id !1785

22:                                               ; preds = %35, %17
  %.1 = phi i32 [ 224, %17 ], [ %36, %35 ], !dbg !1786, !psr.id !1787
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1741, metadata !DIExpression()), !dbg !1726, !psr.id !1788
  %23 = icmp sge i32 %.1, 0, !dbg !1789, !psr.id !1791
  br i1 %23, label %24, label %37, !dbg !1792, !psr.id !1793

24:                                               ; preds = %22
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1794, !psr.id !1796
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1797, !psr.id !1798
  call void @f256_montysquare(i64* %25, i64* %26), !dbg !1799, !psr.id !1800
  switch i32 %.1, label %34 [
    i32 0, label %27
    i32 2, label %27
    i32 192, label %27
    i32 224, label %27
    i32 3, label %30
    i32 34, label %30
    i32 65, label %30
  ], !dbg !1801, !psr.id !1802

27:                                               ; preds = %24, %24, %24, %24
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1803, !psr.id !1805
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1806, !psr.id !1807
  call void @f256_montymul(i64* %28, i64* %29, i64* %1), !dbg !1808, !psr.id !1809
  br label %34, !dbg !1810, !psr.id !1811

30:                                               ; preds = %24, %24, %24
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1812, !psr.id !1813
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1814, !psr.id !1815
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1816, !psr.id !1817
  call void @f256_montymul(i64* %31, i64* %32, i64* %33), !dbg !1818, !psr.id !1819
  br label %34, !dbg !1820, !psr.id !1821

34:                                               ; preds = %30, %27, %24
  br label %35, !dbg !1822, !psr.id !1823

35:                                               ; preds = %34
  %36 = add nsw i32 %.1, -1, !dbg !1824, !psr.id !1825
  call void @llvm.dbg.value(metadata i32 %36, metadata !1741, metadata !DIExpression()), !dbg !1726, !psr.id !1826
  br label %22, !dbg !1827, !llvm.loop !1828, !psr.id !1830

37:                                               ; preds = %22
  %38 = bitcast i64* %0 to i8*, !dbg !1831, !psr.id !1832
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1831, !psr.id !1833
  %40 = bitcast i64* %39 to i8*, !dbg !1831, !psr.id !1834
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 16 %40, i64 32, i1 false), !dbg !1831, !psr.id !1835
  ret void, !dbg !1836, !psr.id !1837
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_montysquare(i64* %0, i64* %1) #0 !dbg !1838 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1839, metadata !DIExpression()), !dbg !1840, !psr.id !1841
  call void @llvm.dbg.value(metadata i64* %1, metadata !1842, metadata !DIExpression()), !dbg !1840, !psr.id !1843
  call void @f256_montymul(i64* %0, i64* %1, i64* %1), !dbg !1844, !psr.id !1845
  ret void, !dbg !1846, !psr.id !1847
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_montymul(i64* %0, i64* %1, i64* %2) #0 !dbg !1848 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1851, metadata !DIExpression()), !dbg !1852, !psr.id !1853
  call void @llvm.dbg.value(metadata i64* %1, metadata !1854, metadata !DIExpression()), !dbg !1852, !psr.id !1855
  call void @llvm.dbg.value(metadata i64* %2, metadata !1856, metadata !DIExpression()), !dbg !1852, !psr.id !1857
  %4 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1858, !psr.id !1859
  %5 = load i64, i64* %4, align 8, !dbg !1858, !psr.id !1860, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %5, metadata !1861, metadata !DIExpression()), !dbg !1852, !psr.id !1862
  %6 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1863, !psr.id !1864
  %7 = load i64, i64* %6, align 8, !dbg !1863, !psr.id !1865, !ValueTainted !246
  %8 = zext i64 %7 to i128, !dbg !1866, !psr.id !1867, !ValueTainted !246
  %9 = zext i64 %5 to i128, !dbg !1868, !psr.id !1869, !ValueTainted !246
  %10 = mul i128 %8, %9, !dbg !1870, !psr.id !1871, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %10, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !1873
  %11 = trunc i128 %10 to i64, !dbg !1874, !psr.id !1875, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %11, metadata !1876, metadata !DIExpression()), !dbg !1852, !psr.id !1877
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1878, !psr.id !1879
  %13 = load i64, i64* %12, align 8, !dbg !1878, !psr.id !1880, !ValueTainted !246
  %14 = zext i64 %13 to i128, !dbg !1881, !psr.id !1882, !ValueTainted !246
  %15 = zext i64 %5 to i128, !dbg !1883, !psr.id !1884, !ValueTainted !246
  %16 = mul i128 %14, %15, !dbg !1885, !psr.id !1886, !ValueTainted !246
  %17 = lshr i128 %10, 64, !dbg !1887, !psr.id !1888, !ValueTainted !246
  %18 = add i128 %16, %17, !dbg !1889, !psr.id !1890, !ValueTainted !246
  %19 = shl i64 %11, 32, !dbg !1891, !psr.id !1892, !ValueTainted !246
  %20 = zext i64 %19 to i128, !dbg !1893, !psr.id !1894, !ValueTainted !246
  %21 = add i128 %18, %20, !dbg !1895, !psr.id !1896, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %21, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !1897
  %22 = trunc i128 %21 to i64, !dbg !1898, !psr.id !1899, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %22, metadata !1900, metadata !DIExpression()), !dbg !1852, !psr.id !1901
  %23 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1902, !psr.id !1903
  %24 = load i64, i64* %23, align 8, !dbg !1902, !psr.id !1904, !ValueTainted !246
  %25 = zext i64 %24 to i128, !dbg !1905, !psr.id !1906, !ValueTainted !246
  %26 = zext i64 %5 to i128, !dbg !1907, !psr.id !1908, !ValueTainted !246
  %27 = mul i128 %25, %26, !dbg !1909, !psr.id !1910, !ValueTainted !246
  %28 = lshr i128 %21, 64, !dbg !1911, !psr.id !1912, !ValueTainted !246
  %29 = add i128 %27, %28, !dbg !1913, !psr.id !1914, !ValueTainted !246
  %30 = lshr i64 %11, 32, !dbg !1915, !psr.id !1916, !ValueTainted !246
  %31 = zext i64 %30 to i128, !dbg !1917, !psr.id !1918, !ValueTainted !246
  %32 = add i128 %29, %31, !dbg !1919, !psr.id !1920, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %32, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !1921
  %33 = trunc i128 %32 to i64, !dbg !1922, !psr.id !1923, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %33, metadata !1924, metadata !DIExpression()), !dbg !1852, !psr.id !1925
  %34 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1926, !psr.id !1927
  %35 = load i64, i64* %34, align 8, !dbg !1926, !psr.id !1928, !ValueTainted !246
  %36 = zext i64 %35 to i128, !dbg !1929, !psr.id !1930, !ValueTainted !246
  %37 = zext i64 %5 to i128, !dbg !1931, !psr.id !1932, !ValueTainted !246
  %38 = mul i128 %36, %37, !dbg !1933, !psr.id !1934, !ValueTainted !246
  %39 = lshr i128 %32, 64, !dbg !1935, !psr.id !1936, !ValueTainted !246
  %40 = add i128 %38, %39, !dbg !1937, !psr.id !1938, !ValueTainted !246
  %41 = zext i64 %11 to i128, !dbg !1939, !psr.id !1940, !ValueTainted !246
  %42 = add i128 %40, %41, !dbg !1941, !psr.id !1942, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %42, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !1943
  %43 = trunc i128 %42 to i64, !dbg !1944, !psr.id !1945, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %43, metadata !1946, metadata !DIExpression()), !dbg !1852, !psr.id !1947
  %44 = lshr i128 %42, 64, !dbg !1948, !psr.id !1949, !ValueTainted !246
  %45 = trunc i128 %44 to i64, !dbg !1950, !psr.id !1951, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %45, metadata !1952, metadata !DIExpression()), !dbg !1852, !psr.id !1953
  %46 = zext i64 %11 to i128, !dbg !1954, !psr.id !1955, !ValueTainted !246
  %47 = shl i128 %46, 64, !dbg !1956, !psr.id !1957, !ValueTainted !246
  %48 = zext i64 %11 to i128, !dbg !1958, !psr.id !1959, !ValueTainted !246
  %49 = shl i128 %48, 32, !dbg !1960, !psr.id !1961, !ValueTainted !246
  %50 = sub i128 %47, %49, !dbg !1962, !psr.id !1963, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %50, metadata !1964, metadata !DIExpression()), !dbg !1852, !psr.id !1965
  %51 = zext i64 %43 to i128, !dbg !1966, !psr.id !1967, !ValueTainted !246
  %52 = trunc i128 %50 to i64, !dbg !1968, !psr.id !1969, !ValueTainted !246
  %53 = zext i64 %52 to i128, !dbg !1968, !psr.id !1970, !ValueTainted !246
  %54 = add i128 %51, %53, !dbg !1971, !psr.id !1972, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %54, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !1973
  %55 = trunc i128 %54 to i64, !dbg !1974, !psr.id !1975, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %55, metadata !1946, metadata !DIExpression()), !dbg !1852, !psr.id !1976
  %56 = zext i64 %45 to i128, !dbg !1977, !psr.id !1978, !ValueTainted !246
  %57 = lshr i128 %54, 64, !dbg !1979, !psr.id !1980, !ValueTainted !246
  %58 = add i128 %56, %57, !dbg !1981, !psr.id !1982, !ValueTainted !246
  %59 = lshr i128 %50, 64, !dbg !1983, !psr.id !1984, !ValueTainted !246
  %60 = add i128 %58, %59, !dbg !1985, !psr.id !1986, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %60, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !1987
  %61 = trunc i128 %60 to i64, !dbg !1988, !psr.id !1989, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %61, metadata !1952, metadata !DIExpression()), !dbg !1852, !psr.id !1990
  %62 = lshr i128 %60, 64, !dbg !1991, !psr.id !1992, !ValueTainted !246
  %63 = trunc i128 %62 to i64, !dbg !1993, !psr.id !1994, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %63, metadata !1995, metadata !DIExpression()), !dbg !1852, !psr.id !1996
  call void @llvm.dbg.value(metadata i32 1, metadata !1997, metadata !DIExpression()), !dbg !1852, !psr.id !1998
  br label %64, !dbg !1999, !psr.id !2001

64:                                               ; preds = %149, %3
  %.05 = phi i64 [ %63, %3 ], [ %148, %149 ], !dbg !1852, !psr.id !2002, !ValueTainted !246
  %.04 = phi i64 [ %61, %3 ], [ %145, %149 ], !dbg !1852, !psr.id !2003, !ValueTainted !246
  %.03 = phi i64 [ %55, %3 ], [ %139, %149 ], !dbg !1852, !psr.id !2004, !ValueTainted !246
  %.02 = phi i64 [ %33, %3 ], [ %125, %149 ], !dbg !1852, !psr.id !2005, !ValueTainted !246
  %.01 = phi i64 [ %22, %3 ], [ %118, %149 ], !dbg !1852, !psr.id !2006, !ValueTainted !246
  %.0 = phi i32 [ 1, %3 ], [ %150, %149 ], !dbg !2007, !psr.id !2008
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1997, metadata !DIExpression()), !dbg !1852, !psr.id !2009
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1900, metadata !DIExpression()), !dbg !1852, !psr.id !2010
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1924, metadata !DIExpression()), !dbg !1852, !psr.id !2011
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1946, metadata !DIExpression()), !dbg !1852, !psr.id !2012
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1952, metadata !DIExpression()), !dbg !1852, !psr.id !2013
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1995, metadata !DIExpression()), !dbg !1852, !psr.id !2014
  %65 = icmp slt i32 %.0, 4, !dbg !2015, !psr.id !2017
  br i1 %65, label %66, label %151, !dbg !2018, !psr.id !2019

66:                                               ; preds = %64
  %67 = sext i32 %.0 to i64, !dbg !2020, !psr.id !2022
  %68 = getelementptr inbounds i64, i64* %1, i64 %67, !dbg !2020, !psr.id !2023
  %69 = load i64, i64* %68, align 8, !dbg !2020, !psr.id !2024, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %69, metadata !1861, metadata !DIExpression()), !dbg !1852, !psr.id !2025
  %70 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !2026, !psr.id !2027
  %71 = load i64, i64* %70, align 8, !dbg !2026, !psr.id !2028, !ValueTainted !246
  %72 = zext i64 %71 to i128, !dbg !2029, !psr.id !2030, !ValueTainted !246
  %73 = zext i64 %69 to i128, !dbg !2031, !psr.id !2032, !ValueTainted !246
  %74 = mul i128 %72, %73, !dbg !2033, !psr.id !2034, !ValueTainted !246
  %75 = zext i64 %.01 to i128, !dbg !2035, !psr.id !2036, !ValueTainted !246
  %76 = add i128 %74, %75, !dbg !2037, !psr.id !2038, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %76, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2039
  %77 = trunc i128 %76 to i64, !dbg !2040, !psr.id !2041, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %77, metadata !1876, metadata !DIExpression()), !dbg !1852, !psr.id !2042
  %78 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !2043, !psr.id !2044
  %79 = load i64, i64* %78, align 8, !dbg !2043, !psr.id !2045, !ValueTainted !246
  %80 = zext i64 %79 to i128, !dbg !2046, !psr.id !2047, !ValueTainted !246
  %81 = zext i64 %69 to i128, !dbg !2048, !psr.id !2049, !ValueTainted !246
  %82 = mul i128 %80, %81, !dbg !2050, !psr.id !2051, !ValueTainted !246
  %83 = zext i64 %.02 to i128, !dbg !2052, !psr.id !2053, !ValueTainted !246
  %84 = add i128 %82, %83, !dbg !2054, !psr.id !2055, !ValueTainted !246
  %85 = lshr i128 %76, 64, !dbg !2056, !psr.id !2057, !ValueTainted !246
  %86 = add i128 %84, %85, !dbg !2058, !psr.id !2059, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %86, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2060
  %87 = trunc i128 %86 to i64, !dbg !2061, !psr.id !2062, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %87, metadata !1900, metadata !DIExpression()), !dbg !1852, !psr.id !2063
  %88 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !2064, !psr.id !2065
  %89 = load i64, i64* %88, align 8, !dbg !2064, !psr.id !2066, !ValueTainted !246
  %90 = zext i64 %89 to i128, !dbg !2067, !psr.id !2068, !ValueTainted !246
  %91 = zext i64 %69 to i128, !dbg !2069, !psr.id !2070, !ValueTainted !246
  %92 = mul i128 %90, %91, !dbg !2071, !psr.id !2072, !ValueTainted !246
  %93 = zext i64 %.03 to i128, !dbg !2073, !psr.id !2074, !ValueTainted !246
  %94 = add i128 %92, %93, !dbg !2075, !psr.id !2076, !ValueTainted !246
  %95 = lshr i128 %86, 64, !dbg !2077, !psr.id !2078, !ValueTainted !246
  %96 = add i128 %94, %95, !dbg !2079, !psr.id !2080, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %96, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2081
  %97 = trunc i128 %96 to i64, !dbg !2082, !psr.id !2083, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %97, metadata !1924, metadata !DIExpression()), !dbg !1852, !psr.id !2084
  %98 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !2085, !psr.id !2086
  %99 = load i64, i64* %98, align 8, !dbg !2085, !psr.id !2087, !ValueTainted !246
  %100 = zext i64 %99 to i128, !dbg !2088, !psr.id !2089, !ValueTainted !246
  %101 = zext i64 %69 to i128, !dbg !2090, !psr.id !2091, !ValueTainted !246
  %102 = mul i128 %100, %101, !dbg !2092, !psr.id !2093, !ValueTainted !246
  %103 = zext i64 %.04 to i128, !dbg !2094, !psr.id !2095, !ValueTainted !246
  %104 = add i128 %102, %103, !dbg !2096, !psr.id !2097, !ValueTainted !246
  %105 = lshr i128 %96, 64, !dbg !2098, !psr.id !2099, !ValueTainted !246
  %106 = add i128 %104, %105, !dbg !2100, !psr.id !2101, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %106, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2102
  %107 = trunc i128 %106 to i64, !dbg !2103, !psr.id !2104, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %107, metadata !1946, metadata !DIExpression()), !dbg !1852, !psr.id !2105
  %108 = zext i64 %.05 to i128, !dbg !2106, !psr.id !2107, !ValueTainted !246
  %109 = lshr i128 %106, 64, !dbg !2108, !psr.id !2109, !ValueTainted !246
  %110 = add i128 %108, %109, !dbg !2110, !psr.id !2111, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %110, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2112
  %111 = trunc i128 %110 to i64, !dbg !2113, !psr.id !2114, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %111, metadata !1952, metadata !DIExpression()), !dbg !1852, !psr.id !2115
  %112 = lshr i128 %110, 64, !dbg !2116, !psr.id !2117, !ValueTainted !246
  %113 = trunc i128 %112 to i64, !dbg !2118, !psr.id !2119, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %113, metadata !1995, metadata !DIExpression()), !dbg !1852, !psr.id !2120
  %114 = zext i64 %87 to i128, !dbg !2121, !psr.id !2122, !ValueTainted !246
  %115 = shl i64 %77, 32, !dbg !2123, !psr.id !2124, !ValueTainted !246
  %116 = zext i64 %115 to i128, !dbg !2125, !psr.id !2126, !ValueTainted !246
  %117 = add i128 %114, %116, !dbg !2127, !psr.id !2128, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %117, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2129
  %118 = trunc i128 %117 to i64, !dbg !2130, !psr.id !2131, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %118, metadata !1900, metadata !DIExpression()), !dbg !1852, !psr.id !2132
  %119 = lshr i128 %117, 64, !dbg !2133, !psr.id !2134, !ValueTainted !246
  %120 = zext i64 %97 to i128, !dbg !2135, !psr.id !2136, !ValueTainted !246
  %121 = add i128 %119, %120, !dbg !2137, !psr.id !2138, !ValueTainted !246
  %122 = lshr i64 %77, 32, !dbg !2139, !psr.id !2140, !ValueTainted !246
  %123 = zext i64 %122 to i128, !dbg !2141, !psr.id !2142, !ValueTainted !246
  %124 = add i128 %121, %123, !dbg !2143, !psr.id !2144, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %124, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2145
  %125 = trunc i128 %124 to i64, !dbg !2146, !psr.id !2147, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %125, metadata !1924, metadata !DIExpression()), !dbg !1852, !psr.id !2148
  %126 = zext i64 %77 to i128, !dbg !2149, !psr.id !2150, !ValueTainted !246
  %127 = shl i128 %126, 64, !dbg !2151, !psr.id !2152, !ValueTainted !246
  %128 = zext i64 %77 to i128, !dbg !2153, !psr.id !2154, !ValueTainted !246
  %129 = shl i128 %128, 32, !dbg !2155, !psr.id !2156, !ValueTainted !246
  %130 = sub i128 %127, %129, !dbg !2157, !psr.id !2158, !ValueTainted !246
  %131 = zext i64 %77 to i128, !dbg !2159, !psr.id !2160, !ValueTainted !246
  %132 = add i128 %130, %131, !dbg !2161, !psr.id !2162, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %132, metadata !1964, metadata !DIExpression()), !dbg !1852, !psr.id !2163
  %133 = lshr i128 %124, 64, !dbg !2164, !psr.id !2165, !ValueTainted !246
  %134 = zext i64 %107 to i128, !dbg !2166, !psr.id !2167, !ValueTainted !246
  %135 = add i128 %133, %134, !dbg !2168, !psr.id !2169, !ValueTainted !246
  %136 = trunc i128 %132 to i64, !dbg !2170, !psr.id !2171, !ValueTainted !246
  %137 = zext i64 %136 to i128, !dbg !2170, !psr.id !2172, !ValueTainted !246
  %138 = add i128 %135, %137, !dbg !2173, !psr.id !2174, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %138, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2175
  %139 = trunc i128 %138 to i64, !dbg !2176, !psr.id !2177, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %139, metadata !1946, metadata !DIExpression()), !dbg !1852, !psr.id !2178
  %140 = zext i64 %111 to i128, !dbg !2179, !psr.id !2180, !ValueTainted !246
  %141 = lshr i128 %138, 64, !dbg !2181, !psr.id !2182, !ValueTainted !246
  %142 = add i128 %140, %141, !dbg !2183, !psr.id !2184, !ValueTainted !246
  %143 = lshr i128 %132, 64, !dbg !2185, !psr.id !2186, !ValueTainted !246
  %144 = add i128 %142, %143, !dbg !2187, !psr.id !2188, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %144, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2189
  %145 = trunc i128 %144 to i64, !dbg !2190, !psr.id !2191, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %145, metadata !1952, metadata !DIExpression()), !dbg !1852, !psr.id !2192
  %146 = lshr i128 %144, 64, !dbg !2193, !psr.id !2194, !ValueTainted !246
  %147 = trunc i128 %146 to i64, !dbg !2195, !psr.id !2196, !ValueTainted !246
  %148 = add i64 %113, %147, !dbg !2197, !psr.id !2198, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %148, metadata !1995, metadata !DIExpression()), !dbg !1852, !psr.id !2199
  br label %149, !dbg !2200, !psr.id !2201

149:                                              ; preds = %66
  %150 = add nsw i32 %.0, 1, !dbg !2202, !psr.id !2203
  call void @llvm.dbg.value(metadata i32 %150, metadata !1997, metadata !DIExpression()), !dbg !1852, !psr.id !2204
  br label %64, !dbg !2205, !llvm.loop !2206, !psr.id !2208

151:                                              ; preds = %64
  %152 = zext i64 %.01 to i128, !dbg !2209, !psr.id !2210, !ValueTainted !246
  %153 = zext i64 %.05 to i128, !dbg !2211, !psr.id !2212, !ValueTainted !246
  %154 = add i128 %152, %153, !dbg !2213, !psr.id !2214, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %154, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2215
  %155 = trunc i128 %154 to i64, !dbg !2216, !psr.id !2217, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %155, metadata !1900, metadata !DIExpression()), !dbg !1852, !psr.id !2218
  %156 = zext i64 %.02 to i128, !dbg !2219, !psr.id !2220, !ValueTainted !246
  %157 = shl i64 %.05, 32, !dbg !2221, !psr.id !2222, !ValueTainted !246
  %158 = zext i64 %157 to i128, !dbg !2223, !psr.id !2224, !ValueTainted !246
  %159 = sub i128 %156, %158, !dbg !2225, !psr.id !2226, !ValueTainted !246
  %160 = lshr i128 %154, 64, !dbg !2227, !psr.id !2228, !ValueTainted !246
  %161 = add i128 %159, %160, !dbg !2229, !psr.id !2230, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %161, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2231
  %162 = trunc i128 %161 to i64, !dbg !2232, !psr.id !2233, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %162, metadata !1924, metadata !DIExpression()), !dbg !1852, !psr.id !2234
  %163 = zext i64 %.03 to i128, !dbg !2235, !psr.id !2236, !ValueTainted !246
  %164 = lshr i128 %161, 127, !dbg !2237, !psr.id !2238, !ValueTainted !246
  %165 = sub i128 %163, %164, !dbg !2239, !psr.id !2240, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %165, metadata !1872, metadata !DIExpression()), !dbg !1852, !psr.id !2241
  %166 = trunc i128 %165 to i64, !dbg !2242, !psr.id !2243, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %166, metadata !1946, metadata !DIExpression()), !dbg !1852, !psr.id !2244
  %167 = lshr i128 %165, 127, !dbg !2245, !psr.id !2246, !ValueTainted !246
  %168 = trunc i128 %167 to i64, !dbg !2247, !psr.id !2248, !ValueTainted !246
  %169 = sub i64 %.04, %168, !dbg !2249, !psr.id !2250, !ValueTainted !246
  %170 = sub i64 %169, %.05, !dbg !2251, !psr.id !2252, !ValueTainted !246
  %171 = shl i64 %.05, 32, !dbg !2253, !psr.id !2254, !ValueTainted !246
  %172 = add i64 %170, %171, !dbg !2255, !psr.id !2256, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %172, metadata !1952, metadata !DIExpression()), !dbg !1852, !psr.id !2257
  %173 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2258, !psr.id !2259
  store i64 %155, i64* %173, align 8, !dbg !2260, !psr.id !2261
  %174 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2262, !psr.id !2263
  store i64 %162, i64* %174, align 8, !dbg !2264, !psr.id !2265
  %175 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2266, !psr.id !2267
  store i64 %166, i64* %175, align 8, !dbg !2268, !psr.id !2269
  %176 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2270, !psr.id !2271
  store i64 %172, i64* %176, align 8, !dbg !2272, !psr.id !2273
  ret void, !dbg !2274, !psr.id !2275
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_frommonty(i64* %0, i64* %1) #0 !dbg !50 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2276, metadata !DIExpression()), !dbg !2277, !psr.id !2278
  call void @llvm.dbg.value(metadata i64* %1, metadata !2279, metadata !DIExpression()), !dbg !2277, !psr.id !2280
  %3 = getelementptr inbounds [4 x i64], [4 x i64]* @f256_frommonty.one, i64 0, i64 0, !psr.id !2281
  call void @f256_montymul(i64* %0, i64* %1, i64* %3), !dbg !2282, !psr.id !2283
  ret void, !dbg !2284, !psr.id !2285
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64be(i8* %0, i64 %1) #0 !dbg !2286 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2289, metadata !DIExpression()), !dbg !2290, !psr.id !2291
  call void @llvm.dbg.value(metadata i64 %1, metadata !2292, metadata !DIExpression()), !dbg !2290, !psr.id !2293
  call void @llvm.dbg.value(metadata i8* %0, metadata !2294, metadata !DIExpression()), !dbg !2290, !psr.id !2295
  %3 = lshr i64 %1, 32, !dbg !2296, !psr.id !2297
  %4 = trunc i64 %3 to i32, !dbg !2298, !psr.id !2299
  call void @br_enc32be(i8* %0, i32 %4), !dbg !2300, !psr.id !2301
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2302, !psr.id !2303
  %6 = trunc i64 %1 to i32, !dbg !2304, !psr.id !2305
  call void @br_enc32be(i8* %5, i32 %6), !dbg !2306, !psr.id !2307
  ret void, !dbg !2308, !psr.id !2309
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !2310 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2311, metadata !DIExpression()), !dbg !2312, !psr.id !2313
  call void @llvm.dbg.value(metadata i32 %1, metadata !2314, metadata !DIExpression()), !dbg !2312, !psr.id !2315
  %3 = xor i32 %0, %1, !dbg !2316, !psr.id !2317, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %3, metadata !2318, metadata !DIExpression()), !dbg !2312, !psr.id !2319
  %4 = sub i32 0, %3, !dbg !2320, !psr.id !2321, !ValueTainted !246
  %5 = or i32 %3, %4, !dbg !2322, !psr.id !2323, !ValueTainted !246
  %6 = lshr i32 %5, 31, !dbg !2324, !psr.id !2325, !ValueTainted !246
  ret i32 %6, !dbg !2326, !psr.id !2327
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !2328 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2331, metadata !DIExpression()), !dbg !2332, !psr.id !2333
  call void @llvm.dbg.value(metadata i32 %1, metadata !2334, metadata !DIExpression()), !dbg !2332, !psr.id !2335
  call void @llvm.dbg.value(metadata i8* %0, metadata !2336, metadata !DIExpression()), !dbg !2332, !psr.id !2337
  %3 = lshr i32 %1, 24, !dbg !2338, !psr.id !2339
  %4 = trunc i32 %3 to i8, !dbg !2340, !psr.id !2341
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2342, !psr.id !2343
  store i8 %4, i8* %5, align 1, !dbg !2344, !psr.id !2345
  %6 = lshr i32 %1, 16, !dbg !2346, !psr.id !2347
  %7 = trunc i32 %6 to i8, !dbg !2348, !psr.id !2349
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2350, !psr.id !2351
  store i8 %7, i8* %8, align 1, !dbg !2352, !psr.id !2353
  %9 = lshr i32 %1, 8, !dbg !2354, !psr.id !2355
  %10 = trunc i32 %9 to i8, !dbg !2356, !psr.id !2357
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2358, !psr.id !2359
  store i8 %10, i8* %11, align 1, !dbg !2360, !psr.id !2361
  %12 = trunc i32 %1 to i8, !dbg !2362, !psr.id !2363
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2364, !psr.id !2365
  store i8 %12, i8* %13, align 1, !dbg !2366, !psr.id !2367
  ret void, !dbg !2368, !psr.id !2369
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @f256_add(i64* %0, i64* %1, i64* %2) #0 !dbg !2370 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2371, metadata !DIExpression()), !dbg !2372, !psr.id !2373
  call void @llvm.dbg.value(metadata i64* %1, metadata !2374, metadata !DIExpression()), !dbg !2372, !psr.id !2375
  call void @llvm.dbg.value(metadata i64* %2, metadata !2376, metadata !DIExpression()), !dbg !2372, !psr.id !2377
  %4 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !2378, !psr.id !2379
  %5 = load i64, i64* %4, align 8, !dbg !2378, !psr.id !2380, !ValueTainted !246
  %6 = zext i64 %5 to i128, !dbg !2381, !psr.id !2382, !ValueTainted !246
  %7 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !2383, !psr.id !2384
  %8 = load i64, i64* %7, align 8, !dbg !2383, !psr.id !2385
  %9 = zext i64 %8 to i128, !dbg !2383, !psr.id !2386
  %10 = add i128 %6, %9, !dbg !2387, !psr.id !2388, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %10, metadata !2389, metadata !DIExpression()), !dbg !2372, !psr.id !2390
  %11 = trunc i128 %10 to i64, !dbg !2391, !psr.id !2392, !ValueTainted !246
  %12 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2393, !psr.id !2394
  store i64 %11, i64* %12, align 8, !dbg !2395, !psr.id !2396
  %13 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !2397, !psr.id !2398
  %14 = load i64, i64* %13, align 8, !dbg !2397, !psr.id !2399, !ValueTainted !246
  %15 = zext i64 %14 to i128, !dbg !2400, !psr.id !2401, !ValueTainted !246
  %16 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !2402, !psr.id !2403
  %17 = load i64, i64* %16, align 8, !dbg !2402, !psr.id !2404, !ValueTainted !246
  %18 = zext i64 %17 to i128, !dbg !2402, !psr.id !2405, !ValueTainted !246
  %19 = add i128 %15, %18, !dbg !2406, !psr.id !2407, !ValueTainted !246
  %20 = lshr i128 %10, 64, !dbg !2408, !psr.id !2409, !ValueTainted !246
  %21 = add i128 %19, %20, !dbg !2410, !psr.id !2411, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %21, metadata !2389, metadata !DIExpression()), !dbg !2372, !psr.id !2412
  %22 = trunc i128 %21 to i64, !dbg !2413, !psr.id !2414, !ValueTainted !246
  %23 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2415, !psr.id !2416
  store i64 %22, i64* %23, align 8, !dbg !2417, !psr.id !2418
  %24 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !2419, !psr.id !2420
  %25 = load i64, i64* %24, align 8, !dbg !2419, !psr.id !2421, !ValueTainted !246
  %26 = zext i64 %25 to i128, !dbg !2422, !psr.id !2423, !ValueTainted !246
  %27 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !2424, !psr.id !2425
  %28 = load i64, i64* %27, align 8, !dbg !2424, !psr.id !2426, !ValueTainted !246
  %29 = zext i64 %28 to i128, !dbg !2424, !psr.id !2427, !ValueTainted !246
  %30 = add i128 %26, %29, !dbg !2428, !psr.id !2429, !ValueTainted !246
  %31 = lshr i128 %21, 64, !dbg !2430, !psr.id !2431, !ValueTainted !246
  %32 = add i128 %30, %31, !dbg !2432, !psr.id !2433, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %32, metadata !2389, metadata !DIExpression()), !dbg !2372, !psr.id !2434
  %33 = trunc i128 %32 to i64, !dbg !2435, !psr.id !2436, !ValueTainted !246
  %34 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2437, !psr.id !2438
  store i64 %33, i64* %34, align 8, !dbg !2439, !psr.id !2440
  %35 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !2441, !psr.id !2442
  %36 = load i64, i64* %35, align 8, !dbg !2441, !psr.id !2443, !ValueTainted !246
  %37 = zext i64 %36 to i128, !dbg !2444, !psr.id !2445, !ValueTainted !246
  %38 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !2446, !psr.id !2447
  %39 = load i64, i64* %38, align 8, !dbg !2446, !psr.id !2448, !ValueTainted !246
  %40 = zext i64 %39 to i128, !dbg !2446, !psr.id !2449, !ValueTainted !246
  %41 = add i128 %37, %40, !dbg !2450, !psr.id !2451, !ValueTainted !246
  %42 = lshr i128 %32, 64, !dbg !2452, !psr.id !2453, !ValueTainted !246
  %43 = add i128 %41, %42, !dbg !2454, !psr.id !2455, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %43, metadata !2389, metadata !DIExpression()), !dbg !2372, !psr.id !2456
  %44 = trunc i128 %43 to i64, !dbg !2457, !psr.id !2458, !ValueTainted !246
  %45 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2459, !psr.id !2460
  store i64 %44, i64* %45, align 8, !dbg !2461, !psr.id !2462
  %46 = lshr i128 %43, 64, !dbg !2463, !psr.id !2464, !ValueTainted !246
  %47 = trunc i128 %46 to i64, !dbg !2465, !psr.id !2466, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %47, metadata !2467, metadata !DIExpression()), !dbg !2372, !psr.id !2468
  %48 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2469, !psr.id !2470
  %49 = load i64, i64* %48, align 8, !dbg !2469, !psr.id !2471, !ValueTainted !246
  %50 = zext i64 %49 to i128, !dbg !2472, !psr.id !2473, !ValueTainted !246
  %51 = zext i64 %47 to i128, !dbg !2474, !psr.id !2475, !ValueTainted !246
  %52 = add i128 %50, %51, !dbg !2476, !psr.id !2477, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %52, metadata !2389, metadata !DIExpression()), !dbg !2372, !psr.id !2478
  %53 = trunc i128 %52 to i64, !dbg !2479, !psr.id !2480, !ValueTainted !246
  %54 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2481, !psr.id !2482
  store i64 %53, i64* %54, align 8, !dbg !2483, !psr.id !2484
  %55 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2485, !psr.id !2486
  %56 = load i64, i64* %55, align 8, !dbg !2485, !psr.id !2487, !ValueTainted !246
  %57 = zext i64 %56 to i128, !dbg !2488, !psr.id !2489, !ValueTainted !246
  %58 = lshr i128 %52, 64, !dbg !2490, !psr.id !2491, !ValueTainted !246
  %59 = add i128 %57, %58, !dbg !2492, !psr.id !2493, !ValueTainted !246
  %60 = shl i64 %47, 32, !dbg !2494, !psr.id !2495, !ValueTainted !246
  %61 = zext i64 %60 to i128, !dbg !2496, !psr.id !2497, !ValueTainted !246
  %62 = sub i128 %59, %61, !dbg !2498, !psr.id !2499, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %62, metadata !2389, metadata !DIExpression()), !dbg !2372, !psr.id !2500
  %63 = trunc i128 %62 to i64, !dbg !2501, !psr.id !2502, !ValueTainted !246
  %64 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2503, !psr.id !2504
  store i64 %63, i64* %64, align 8, !dbg !2505, !psr.id !2506
  %65 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2507, !psr.id !2508
  %66 = load i64, i64* %65, align 8, !dbg !2507, !psr.id !2509, !ValueTainted !246
  %67 = zext i64 %66 to i128, !dbg !2510, !psr.id !2511, !ValueTainted !246
  %68 = lshr i128 %62, 64, !dbg !2512, !psr.id !2513, !ValueTainted !246
  %69 = and i128 %68, 1, !dbg !2514, !psr.id !2515, !ValueTainted !246
  %70 = sub i128 %67, %69, !dbg !2516, !psr.id !2517, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %70, metadata !2389, metadata !DIExpression()), !dbg !2372, !psr.id !2518
  %71 = trunc i128 %70 to i64, !dbg !2519, !psr.id !2520, !ValueTainted !246
  %72 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2521, !psr.id !2522
  store i64 %71, i64* %72, align 8, !dbg !2523, !psr.id !2524
  %73 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2525, !psr.id !2526
  %74 = load i64, i64* %73, align 8, !dbg !2525, !psr.id !2527, !ValueTainted !246
  %75 = zext i64 %74 to i128, !dbg !2528, !psr.id !2529, !ValueTainted !246
  %76 = lshr i128 %70, 64, !dbg !2530, !psr.id !2531, !ValueTainted !246
  %77 = and i128 %76, 1, !dbg !2532, !psr.id !2533, !ValueTainted !246
  %78 = sub i128 %75, %77, !dbg !2534, !psr.id !2535, !ValueTainted !246
  %79 = shl i64 %47, 32, !dbg !2536, !psr.id !2537, !ValueTainted !246
  %80 = zext i64 %79 to i128, !dbg !2538, !psr.id !2539, !ValueTainted !246
  %81 = add i128 %78, %80, !dbg !2540, !psr.id !2541, !ValueTainted !246
  %82 = zext i64 %47 to i128, !dbg !2542, !psr.id !2543, !ValueTainted !246
  %83 = sub i128 %81, %82, !dbg !2544, !psr.id !2545, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %83, metadata !2389, metadata !DIExpression()), !dbg !2372, !psr.id !2546
  %84 = trunc i128 %83 to i64, !dbg !2547, !psr.id !2548, !ValueTainted !246
  %85 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2549, !psr.id !2550
  store i64 %84, i64* %85, align 8, !dbg !2551, !psr.id !2552
  %86 = lshr i128 %83, 64, !dbg !2553, !psr.id !2554, !ValueTainted !246
  %87 = trunc i128 %86 to i64, !dbg !2555, !psr.id !2556, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %87, metadata !2467, metadata !DIExpression()), !dbg !2372, !psr.id !2557
  %88 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2558, !psr.id !2559
  %89 = load i64, i64* %88, align 8, !dbg !2558, !psr.id !2560, !ValueTainted !246
  %90 = zext i64 %89 to i128, !dbg !2561, !psr.id !2562, !ValueTainted !246
  %91 = zext i64 %87 to i128, !dbg !2563, !psr.id !2564, !ValueTainted !246
  %92 = add i128 %90, %91, !dbg !2565, !psr.id !2566, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %92, metadata !2389, metadata !DIExpression()), !dbg !2372, !psr.id !2567
  %93 = trunc i128 %92 to i64, !dbg !2568, !psr.id !2569, !ValueTainted !246
  %94 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2570, !psr.id !2571
  store i64 %93, i64* %94, align 8, !dbg !2572, !psr.id !2573
  %95 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2574, !psr.id !2575
  %96 = load i64, i64* %95, align 8, !dbg !2574, !psr.id !2576, !ValueTainted !246
  %97 = zext i64 %96 to i128, !dbg !2577, !psr.id !2578, !ValueTainted !246
  %98 = lshr i128 %92, 64, !dbg !2579, !psr.id !2580, !ValueTainted !246
  %99 = add i128 %97, %98, !dbg !2581, !psr.id !2582, !ValueTainted !246
  %100 = shl i64 %87, 32, !dbg !2583, !psr.id !2584, !ValueTainted !246
  %101 = zext i64 %100 to i128, !dbg !2585, !psr.id !2586, !ValueTainted !246
  %102 = sub i128 %99, %101, !dbg !2587, !psr.id !2588, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %102, metadata !2389, metadata !DIExpression()), !dbg !2372, !psr.id !2589
  %103 = trunc i128 %102 to i64, !dbg !2590, !psr.id !2591, !ValueTainted !246
  %104 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2592, !psr.id !2593
  store i64 %103, i64* %104, align 8, !dbg !2594, !psr.id !2595
  %105 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2596, !psr.id !2597
  %106 = load i64, i64* %105, align 8, !dbg !2596, !psr.id !2598, !ValueTainted !246
  %107 = zext i64 %106 to i128, !dbg !2599, !psr.id !2600, !ValueTainted !246
  %108 = lshr i128 %102, 64, !dbg !2601, !psr.id !2602, !ValueTainted !246
  %109 = and i128 %108, 1, !dbg !2603, !psr.id !2604, !ValueTainted !246
  %110 = sub i128 %107, %109, !dbg !2605, !psr.id !2606, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %110, metadata !2389, metadata !DIExpression()), !dbg !2372, !psr.id !2607
  %111 = trunc i128 %110 to i64, !dbg !2608, !psr.id !2609, !ValueTainted !246
  %112 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2610, !psr.id !2611
  store i64 %111, i64* %112, align 8, !dbg !2612, !psr.id !2613
  %113 = shl i64 %87, 32, !dbg !2614, !psr.id !2615, !ValueTainted !246
  %114 = sub i64 %113, %87, !dbg !2616, !psr.id !2617, !ValueTainted !246
  %115 = lshr i128 %110, 64, !dbg !2618, !psr.id !2619, !ValueTainted !246
  %116 = and i128 %115, 1, !dbg !2620, !psr.id !2621, !ValueTainted !246
  %117 = trunc i128 %116 to i64, !dbg !2622, !psr.id !2623, !ValueTainted !246
  %118 = sub i64 %114, %117, !dbg !2624, !psr.id !2625, !ValueTainted !246
  %119 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2626, !psr.id !2627
  %120 = load i64, i64* %119, align 8, !dbg !2628, !psr.id !2629, !ValueTainted !246
  %121 = add i64 %120, %118, !dbg !2628, !psr.id !2630, !ValueTainted !246
  store i64 %121, i64* %119, align 8, !dbg !2628, !psr.id !2631
  ret void, !dbg !2632, !psr.id !2633
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_sub(i64* %0, i64* %1, i64* %2) #0 !dbg !2634 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2635, metadata !DIExpression()), !dbg !2636, !psr.id !2637
  call void @llvm.dbg.value(metadata i64* %1, metadata !2638, metadata !DIExpression()), !dbg !2636, !psr.id !2639
  call void @llvm.dbg.value(metadata i64* %2, metadata !2640, metadata !DIExpression()), !dbg !2636, !psr.id !2641
  %4 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !2642, !psr.id !2643
  %5 = load i64, i64* %4, align 8, !dbg !2642, !psr.id !2644, !ValueTainted !246
  %6 = zext i64 %5 to i128, !dbg !2645, !psr.id !2646, !ValueTainted !246
  %7 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !2647, !psr.id !2648
  %8 = load i64, i64* %7, align 8, !dbg !2647, !psr.id !2649, !ValueTainted !246
  %9 = zext i64 %8 to i128, !dbg !2647, !psr.id !2650, !ValueTainted !246
  %10 = sub i128 %6, %9, !dbg !2651, !psr.id !2652, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %10, metadata !2653, metadata !DIExpression()), !dbg !2636, !psr.id !2654
  %11 = trunc i128 %10 to i64, !dbg !2655, !psr.id !2656, !ValueTainted !246
  %12 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2657, !psr.id !2658
  store i64 %11, i64* %12, align 8, !dbg !2659, !psr.id !2660
  %13 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !2661, !psr.id !2662
  %14 = load i64, i64* %13, align 8, !dbg !2661, !psr.id !2663, !ValueTainted !246
  %15 = zext i64 %14 to i128, !dbg !2664, !psr.id !2665, !ValueTainted !246
  %16 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !2666, !psr.id !2667
  %17 = load i64, i64* %16, align 8, !dbg !2666, !psr.id !2668, !ValueTainted !246
  %18 = zext i64 %17 to i128, !dbg !2666, !psr.id !2669, !ValueTainted !246
  %19 = sub i128 %15, %18, !dbg !2670, !psr.id !2671, !ValueTainted !246
  %20 = lshr i128 %10, 64, !dbg !2672, !psr.id !2673, !ValueTainted !246
  %21 = and i128 %20, 1, !dbg !2674, !psr.id !2675, !ValueTainted !246
  %22 = sub i128 %19, %21, !dbg !2676, !psr.id !2677, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %22, metadata !2653, metadata !DIExpression()), !dbg !2636, !psr.id !2678
  %23 = trunc i128 %22 to i64, !dbg !2679, !psr.id !2680, !ValueTainted !246
  %24 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2681, !psr.id !2682
  store i64 %23, i64* %24, align 8, !dbg !2683, !psr.id !2684
  %25 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !2685, !psr.id !2686
  %26 = load i64, i64* %25, align 8, !dbg !2685, !psr.id !2687, !ValueTainted !246
  %27 = zext i64 %26 to i128, !dbg !2688, !psr.id !2689, !ValueTainted !246
  %28 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !2690, !psr.id !2691
  %29 = load i64, i64* %28, align 8, !dbg !2690, !psr.id !2692, !ValueTainted !246
  %30 = zext i64 %29 to i128, !dbg !2690, !psr.id !2693, !ValueTainted !246
  %31 = sub i128 %27, %30, !dbg !2694, !psr.id !2695, !ValueTainted !246
  %32 = lshr i128 %22, 64, !dbg !2696, !psr.id !2697, !ValueTainted !246
  %33 = and i128 %32, 1, !dbg !2698, !psr.id !2699, !ValueTainted !246
  %34 = sub i128 %31, %33, !dbg !2700, !psr.id !2701, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %34, metadata !2653, metadata !DIExpression()), !dbg !2636, !psr.id !2702
  %35 = trunc i128 %34 to i64, !dbg !2703, !psr.id !2704, !ValueTainted !246
  %36 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2705, !psr.id !2706
  store i64 %35, i64* %36, align 8, !dbg !2707, !psr.id !2708
  %37 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !2709, !psr.id !2710
  %38 = load i64, i64* %37, align 8, !dbg !2709, !psr.id !2711, !ValueTainted !246
  %39 = zext i64 %38 to i128, !dbg !2712, !psr.id !2713, !ValueTainted !246
  %40 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !2714, !psr.id !2715
  %41 = load i64, i64* %40, align 8, !dbg !2714, !psr.id !2716, !ValueTainted !246
  %42 = zext i64 %41 to i128, !dbg !2714, !psr.id !2717, !ValueTainted !246
  %43 = sub i128 %39, %42, !dbg !2718, !psr.id !2719, !ValueTainted !246
  %44 = lshr i128 %34, 64, !dbg !2720, !psr.id !2721, !ValueTainted !246
  %45 = and i128 %44, 1, !dbg !2722, !psr.id !2723, !ValueTainted !246
  %46 = sub i128 %43, %45, !dbg !2724, !psr.id !2725, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %46, metadata !2653, metadata !DIExpression()), !dbg !2636, !psr.id !2726
  %47 = trunc i128 %46 to i64, !dbg !2727, !psr.id !2728, !ValueTainted !246
  %48 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2729, !psr.id !2730
  store i64 %47, i64* %48, align 8, !dbg !2731, !psr.id !2732
  %49 = lshr i128 %46, 64, !dbg !2733, !psr.id !2734, !ValueTainted !246
  %50 = trunc i128 %49 to i64, !dbg !2735, !psr.id !2736, !ValueTainted !246
  %51 = and i64 %50, 1, !dbg !2737, !psr.id !2738, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %51, metadata !2739, metadata !DIExpression()), !dbg !2636, !psr.id !2740
  %52 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2741, !psr.id !2742
  %53 = load i64, i64* %52, align 8, !dbg !2741, !psr.id !2743, !ValueTainted !246
  %54 = zext i64 %53 to i128, !dbg !2744, !psr.id !2745, !ValueTainted !246
  %55 = zext i64 %51 to i128, !dbg !2746, !psr.id !2747, !ValueTainted !246
  %56 = sub i128 %54, %55, !dbg !2748, !psr.id !2749, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %56, metadata !2653, metadata !DIExpression()), !dbg !2636, !psr.id !2750
  %57 = trunc i128 %56 to i64, !dbg !2751, !psr.id !2752, !ValueTainted !246
  %58 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2753, !psr.id !2754
  store i64 %57, i64* %58, align 8, !dbg !2755, !psr.id !2756
  %59 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2757, !psr.id !2758
  %60 = load i64, i64* %59, align 8, !dbg !2757, !psr.id !2759, !ValueTainted !246
  %61 = zext i64 %60 to i128, !dbg !2760, !psr.id !2761, !ValueTainted !246
  %62 = shl i64 %51, 32, !dbg !2762, !psr.id !2763, !ValueTainted !246
  %63 = zext i64 %62 to i128, !dbg !2764, !psr.id !2765, !ValueTainted !246
  %64 = add i128 %61, %63, !dbg !2766, !psr.id !2767, !ValueTainted !246
  %65 = lshr i128 %56, 64, !dbg !2768, !psr.id !2769, !ValueTainted !246
  %66 = and i128 %65, 1, !dbg !2770, !psr.id !2771, !ValueTainted !246
  %67 = sub i128 %64, %66, !dbg !2772, !psr.id !2773, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %67, metadata !2653, metadata !DIExpression()), !dbg !2636, !psr.id !2774
  %68 = trunc i128 %67 to i64, !dbg !2775, !psr.id !2776, !ValueTainted !246
  %69 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2777, !psr.id !2778
  store i64 %68, i64* %69, align 8, !dbg !2779, !psr.id !2780
  %70 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2781, !psr.id !2782
  %71 = load i64, i64* %70, align 8, !dbg !2781, !psr.id !2783, !ValueTainted !246
  %72 = zext i64 %71 to i128, !dbg !2784, !psr.id !2785, !ValueTainted !246
  %73 = lshr i128 %67, 64, !dbg !2786, !psr.id !2787, !ValueTainted !246
  %74 = add i128 %72, %73, !dbg !2788, !psr.id !2789, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %74, metadata !2653, metadata !DIExpression()), !dbg !2636, !psr.id !2790
  %75 = trunc i128 %74 to i64, !dbg !2791, !psr.id !2792, !ValueTainted !246
  %76 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2793, !psr.id !2794
  store i64 %75, i64* %76, align 8, !dbg !2795, !psr.id !2796
  %77 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2797, !psr.id !2798
  %78 = load i64, i64* %77, align 8, !dbg !2797, !psr.id !2799, !ValueTainted !246
  %79 = zext i64 %78 to i128, !dbg !2800, !psr.id !2801, !ValueTainted !246
  %80 = lshr i128 %74, 64, !dbg !2802, !psr.id !2803, !ValueTainted !246
  %81 = add i128 %79, %80, !dbg !2804, !psr.id !2805, !ValueTainted !246
  %82 = shl i64 %51, 32, !dbg !2806, !psr.id !2807, !ValueTainted !246
  %83 = zext i64 %82 to i128, !dbg !2808, !psr.id !2809, !ValueTainted !246
  %84 = sub i128 %81, %83, !dbg !2810, !psr.id !2811, !ValueTainted !246
  %85 = zext i64 %51 to i128, !dbg !2812, !psr.id !2813, !ValueTainted !246
  %86 = add i128 %84, %85, !dbg !2814, !psr.id !2815, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %86, metadata !2653, metadata !DIExpression()), !dbg !2636, !psr.id !2816
  %87 = trunc i128 %86 to i64, !dbg !2817, !psr.id !2818, !ValueTainted !246
  %88 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2819, !psr.id !2820
  store i64 %87, i64* %88, align 8, !dbg !2821, !psr.id !2822
  %89 = lshr i128 %86, 64, !dbg !2823, !psr.id !2824, !ValueTainted !246
  %90 = trunc i128 %89 to i64, !dbg !2825, !psr.id !2826, !ValueTainted !246
  %91 = and i64 %90, 1, !dbg !2827, !psr.id !2828, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %91, metadata !2739, metadata !DIExpression()), !dbg !2636, !psr.id !2829
  %92 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2830, !psr.id !2831
  %93 = load i64, i64* %92, align 8, !dbg !2830, !psr.id !2832, !ValueTainted !246
  %94 = zext i64 %93 to i128, !dbg !2833, !psr.id !2834, !ValueTainted !246
  %95 = zext i64 %91 to i128, !dbg !2835, !psr.id !2836, !ValueTainted !246
  %96 = sub i128 %94, %95, !dbg !2837, !psr.id !2838, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %96, metadata !2653, metadata !DIExpression()), !dbg !2636, !psr.id !2839
  %97 = trunc i128 %96 to i64, !dbg !2840, !psr.id !2841, !ValueTainted !246
  %98 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2842, !psr.id !2843
  store i64 %97, i64* %98, align 8, !dbg !2844, !psr.id !2845
  %99 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2846, !psr.id !2847
  %100 = load i64, i64* %99, align 8, !dbg !2846, !psr.id !2848, !ValueTainted !246
  %101 = zext i64 %100 to i128, !dbg !2849, !psr.id !2850, !ValueTainted !246
  %102 = shl i64 %91, 32, !dbg !2851, !psr.id !2852, !ValueTainted !246
  %103 = zext i64 %102 to i128, !dbg !2853, !psr.id !2854, !ValueTainted !246
  %104 = add i128 %101, %103, !dbg !2855, !psr.id !2856, !ValueTainted !246
  %105 = lshr i128 %96, 64, !dbg !2857, !psr.id !2858, !ValueTainted !246
  %106 = and i128 %105, 1, !dbg !2859, !psr.id !2860, !ValueTainted !246
  %107 = sub i128 %104, %106, !dbg !2861, !psr.id !2862, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %107, metadata !2653, metadata !DIExpression()), !dbg !2636, !psr.id !2863
  %108 = trunc i128 %107 to i64, !dbg !2864, !psr.id !2865, !ValueTainted !246
  %109 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2866, !psr.id !2867
  store i64 %108, i64* %109, align 8, !dbg !2868, !psr.id !2869
  %110 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2870, !psr.id !2871
  %111 = load i64, i64* %110, align 8, !dbg !2870, !psr.id !2872, !ValueTainted !246
  %112 = zext i64 %111 to i128, !dbg !2873, !psr.id !2874, !ValueTainted !246
  %113 = lshr i128 %107, 64, !dbg !2875, !psr.id !2876, !ValueTainted !246
  %114 = add i128 %112, %113, !dbg !2877, !psr.id !2878, !ValueTainted !246
  call void @llvm.dbg.value(metadata i128 %114, metadata !2653, metadata !DIExpression()), !dbg !2636, !psr.id !2879
  %115 = trunc i128 %114 to i64, !dbg !2880, !psr.id !2881, !ValueTainted !246
  %116 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2882, !psr.id !2883
  store i64 %115, i64* %116, align 8, !dbg !2884, !psr.id !2885
  %117 = lshr i128 %114, 64, !dbg !2886, !psr.id !2887, !ValueTainted !246
  %118 = trunc i128 %117 to i64, !dbg !2888, !psr.id !2889, !ValueTainted !246
  %119 = shl i64 %91, 32, !dbg !2890, !psr.id !2891, !ValueTainted !246
  %120 = sub i64 %118, %119, !dbg !2892, !psr.id !2893, !ValueTainted !246
  %121 = add i64 %120, %91, !dbg !2894, !psr.id !2895, !ValueTainted !246
  %122 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !2896, !psr.id !2897
  %123 = load i64, i64* %122, align 8, !dbg !2898, !psr.id !2899, !ValueTainted !246
  %124 = add i64 %123, %121, !dbg !2898, !psr.id !2900, !ValueTainted !246
  store i64 %124, i64* %122, align 8, !dbg !2898, !psr.id !2901
  ret void, !dbg !2902, !psr.id !2903
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !2904 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2907, metadata !DIExpression()), !dbg !2908, !psr.id !2909
  %2 = xor i32 %0, 1, !dbg !2910, !psr.id !2911, !ValueTainted !246
  ret i32 %2, !dbg !2912, !psr.id !2913
}

; Function Attrs: noinline nounwind uwtable
define internal void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* %1, i8* %2, i64 %3) #0 !dbg !2914 {
  %5 = alloca %struct.p256_jacobian, align 8, !psr.id !2918
  %6 = alloca %struct.p256_affine, align 8, !psr.id !2919
  %7 = alloca %struct.p256_jacobian, align 8, !psr.id !2920
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !2921, metadata !DIExpression()), !dbg !2922, !psr.id !2923
  call void @llvm.dbg.value(metadata %struct.p256_affine* %1, metadata !2924, metadata !DIExpression()), !dbg !2922, !psr.id !2925
  call void @llvm.dbg.value(metadata i8* %2, metadata !2926, metadata !DIExpression()), !dbg !2922, !psr.id !2927
  call void @llvm.dbg.value(metadata i64 %3, metadata !2928, metadata !DIExpression()), !dbg !2922, !psr.id !2929
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %5, metadata !2930, metadata !DIExpression()), !dbg !2931, !psr.id !2932
  %8 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !2933, !psr.id !2934
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 96, i1 false), !dbg !2933, !psr.id !2935
  call void @llvm.dbg.value(metadata i32 1, metadata !2936, metadata !DIExpression()), !dbg !2922, !psr.id !2937
  br label %9, !dbg !2938, !psr.id !2939

9:                                                ; preds = %163, %4
  %.03 = phi i32 [ 1, %4 ], [ %.1, %163 ], !dbg !2940, !psr.id !2941, !ValueTainted !246
  %.02 = phi i64 [ %3, %4 ], [ %10, %163 ], !psr.id !2942
  %.01 = phi i8* [ %2, %4 ], [ %13, %163 ], !psr.id !2943, !PointTainted !223
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2926, metadata !DIExpression()), !dbg !2922, !psr.id !2944
  call void @llvm.dbg.value(metadata i64 %.02, metadata !2928, metadata !DIExpression()), !dbg !2922, !psr.id !2945
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2936, metadata !DIExpression()), !dbg !2922, !psr.id !2946
  %10 = add i64 %.02, -1, !dbg !2947, !psr.id !2948
  call void @llvm.dbg.value(metadata i64 %10, metadata !2928, metadata !DIExpression()), !dbg !2922, !psr.id !2949
  %11 = icmp ugt i64 %.02, 0, !dbg !2950, !psr.id !2951
  br i1 %11, label %12, label %164, !dbg !2938, !psr.id !2952

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !2953, !psr.id !2955, !PointTainted !223
  call void @llvm.dbg.value(metadata i8* %13, metadata !2926, metadata !DIExpression()), !dbg !2922, !psr.id !2956
  %14 = load i8, i8* %.01, align 1, !dbg !2957, !psr.id !2958, !ValueTainted !246
  %15 = zext i8 %14 to i32, !dbg !2957, !psr.id !2959, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %15, metadata !2960, metadata !DIExpression()), !dbg !2961, !psr.id !2962
  call void @llvm.dbg.value(metadata i32 0, metadata !2963, metadata !DIExpression()), !dbg !2961, !psr.id !2964
  br label %16, !dbg !2965, !psr.id !2967

16:                                               ; preds = %161, %12
  %.05 = phi i32 [ %15, %12 ], [ %160, %161 ], !dbg !2961, !psr.id !2968, !ValueTainted !246
  %.04 = phi i32 [ 0, %12 ], [ %162, %161 ], !dbg !2969, !psr.id !2970
  %.1 = phi i32 [ %.03, %12 ], [ %159, %161 ], !dbg !2922, !psr.id !2971, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2936, metadata !DIExpression()), !dbg !2922, !psr.id !2972
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2963, metadata !DIExpression()), !dbg !2961, !psr.id !2973
  call void @llvm.dbg.value(metadata i32 %.05, metadata !2960, metadata !DIExpression()), !dbg !2961, !psr.id !2974
  %17 = icmp slt i32 %.04, 2, !dbg !2975, !psr.id !2977
  br i1 %17, label %18, label %163, !dbg !2978, !psr.id !2979

18:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.p256_affine* %6, metadata !2980, metadata !DIExpression()), !dbg !2982, !psr.id !2983
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %7, metadata !2984, metadata !DIExpression()), !dbg !2985, !psr.id !2986
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !2987, !psr.id !2988
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !2989, !psr.id !2990
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !2991, !psr.id !2992
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !2993, !psr.id !2994
  %19 = lshr i32 %.05, 4, !dbg !2995, !psr.id !2996, !ValueTainted !246
  %20 = and i32 %19, 15, !dbg !2997, !psr.id !2998, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %20, metadata !2999, metadata !DIExpression()), !dbg !3000, !psr.id !3001
  %21 = call i32 @NEQ(i32 %20, i32 0), !dbg !3002, !psr.id !3003, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %21, metadata !3004, metadata !DIExpression()), !dbg !3000, !psr.id !3005
  %22 = bitcast %struct.p256_affine* %6 to i8*, !dbg !3006, !psr.id !3007
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 64, i1 false), !dbg !3006, !psr.id !3008
  call void @llvm.dbg.value(metadata i32 0, metadata !3009, metadata !DIExpression()), !dbg !3000, !psr.id !3010
  br label %23, !dbg !3011, !psr.id !3013

23:                                               ; preds = %110, %18
  %.06 = phi i32 [ 0, %18 ], [ %111, %110 ], !dbg !3014, !psr.id !3015
  call void @llvm.dbg.value(metadata i32 %.06, metadata !3009, metadata !DIExpression()), !dbg !3000, !psr.id !3016
  %24 = icmp ult i32 %.06, 15, !dbg !3017, !psr.id !3019
  br i1 %24, label %25, label %112, !dbg !3020, !psr.id !3021

25:                                               ; preds = %23
  %26 = add i32 %.06, 1, !dbg !3022, !psr.id !3024
  %27 = call i32 @EQ(i32 %20, i32 %26), !dbg !3025, !psr.id !3026, !ValueTainted !246
  %28 = zext i32 %27 to i64, !dbg !3027, !psr.id !3028, !ValueTainted !246
  %29 = sub i64 0, %28, !dbg !3029, !psr.id !3030, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %29, metadata !3031, metadata !DIExpression()), !dbg !3000, !psr.id !3032
  %30 = zext i32 %.06 to i64, !dbg !3033, !psr.id !3034
  %31 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %30, !dbg !3033, !psr.id !3035
  %32 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %31, i32 0, i32 0, !dbg !3036, !psr.id !3037
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %32, i64 0, i64 0, !dbg !3033, !psr.id !3038
  %34 = load i64, i64* %33, align 8, !dbg !3033, !psr.id !3039, !ValueTainted !246
  %35 = and i64 %29, %34, !dbg !3040, !psr.id !3041, !ValueTainted !246
  %36 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !3042, !psr.id !3043
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %36, i64 0, i64 0, !dbg !3044, !psr.id !3045, !PointTainted !223
  %38 = load i64, i64* %37, align 8, !dbg !3046, !psr.id !3047, !ValueTainted !246
  %39 = or i64 %38, %35, !dbg !3046, !psr.id !3048, !ValueTainted !246
  store i64 %39, i64* %37, align 8, !dbg !3046, !psr.id !3049
  %40 = zext i32 %.06 to i64, !dbg !3050, !psr.id !3051
  %41 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %40, !dbg !3050, !psr.id !3052
  %42 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %41, i32 0, i32 0, !dbg !3053, !psr.id !3054
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %42, i64 0, i64 1, !dbg !3050, !psr.id !3055
  %44 = load i64, i64* %43, align 8, !dbg !3050, !psr.id !3056, !ValueTainted !246
  %45 = and i64 %29, %44, !dbg !3057, !psr.id !3058, !ValueTainted !246
  %46 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !3059, !psr.id !3060
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %46, i64 0, i64 1, !dbg !3061, !psr.id !3062, !PointTainted !223
  %48 = load i64, i64* %47, align 8, !dbg !3063, !psr.id !3064, !ValueTainted !246
  %49 = or i64 %48, %45, !dbg !3063, !psr.id !3065, !ValueTainted !246
  store i64 %49, i64* %47, align 8, !dbg !3063, !psr.id !3066
  %50 = zext i32 %.06 to i64, !dbg !3067, !psr.id !3068
  %51 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %50, !dbg !3067, !psr.id !3069
  %52 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %51, i32 0, i32 0, !dbg !3070, !psr.id !3071
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %52, i64 0, i64 2, !dbg !3067, !psr.id !3072
  %54 = load i64, i64* %53, align 8, !dbg !3067, !psr.id !3073, !ValueTainted !246
  %55 = and i64 %29, %54, !dbg !3074, !psr.id !3075, !ValueTainted !246
  %56 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !3076, !psr.id !3077
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %56, i64 0, i64 2, !dbg !3078, !psr.id !3079, !PointTainted !223
  %58 = load i64, i64* %57, align 8, !dbg !3080, !psr.id !3081, !ValueTainted !246
  %59 = or i64 %58, %55, !dbg !3080, !psr.id !3082, !ValueTainted !246
  store i64 %59, i64* %57, align 8, !dbg !3080, !psr.id !3083
  %60 = zext i32 %.06 to i64, !dbg !3084, !psr.id !3085
  %61 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %60, !dbg !3084, !psr.id !3086
  %62 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %61, i32 0, i32 0, !dbg !3087, !psr.id !3088
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %62, i64 0, i64 3, !dbg !3084, !psr.id !3089
  %64 = load i64, i64* %63, align 8, !dbg !3084, !psr.id !3090, !ValueTainted !246
  %65 = and i64 %29, %64, !dbg !3091, !psr.id !3092, !ValueTainted !246
  %66 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !3093, !psr.id !3094
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %66, i64 0, i64 3, !dbg !3095, !psr.id !3096, !PointTainted !223
  %68 = load i64, i64* %67, align 8, !dbg !3097, !psr.id !3098, !ValueTainted !246
  %69 = or i64 %68, %65, !dbg !3097, !psr.id !3099, !ValueTainted !246
  store i64 %69, i64* %67, align 8, !dbg !3097, !psr.id !3100
  %70 = zext i32 %.06 to i64, !dbg !3101, !psr.id !3102
  %71 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %70, !dbg !3101, !psr.id !3103
  %72 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %71, i32 0, i32 1, !dbg !3104, !psr.id !3105
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %72, i64 0, i64 0, !dbg !3101, !psr.id !3106
  %74 = load i64, i64* %73, align 8, !dbg !3101, !psr.id !3107, !ValueTainted !246
  %75 = and i64 %29, %74, !dbg !3108, !psr.id !3109, !ValueTainted !246
  %76 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !3110, !psr.id !3111
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %76, i64 0, i64 0, !dbg !3112, !psr.id !3113, !PointTainted !223
  %78 = load i64, i64* %77, align 8, !dbg !3114, !psr.id !3115, !ValueTainted !246
  %79 = or i64 %78, %75, !dbg !3114, !psr.id !3116, !ValueTainted !246
  store i64 %79, i64* %77, align 8, !dbg !3114, !psr.id !3117
  %80 = zext i32 %.06 to i64, !dbg !3118, !psr.id !3119
  %81 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %80, !dbg !3118, !psr.id !3120
  %82 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %81, i32 0, i32 1, !dbg !3121, !psr.id !3122
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %82, i64 0, i64 1, !dbg !3118, !psr.id !3123
  %84 = load i64, i64* %83, align 8, !dbg !3118, !psr.id !3124, !ValueTainted !246
  %85 = and i64 %29, %84, !dbg !3125, !psr.id !3126, !ValueTainted !246
  %86 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !3127, !psr.id !3128
  %87 = getelementptr inbounds [4 x i64], [4 x i64]* %86, i64 0, i64 1, !dbg !3129, !psr.id !3130, !PointTainted !223
  %88 = load i64, i64* %87, align 8, !dbg !3131, !psr.id !3132, !ValueTainted !246
  %89 = or i64 %88, %85, !dbg !3131, !psr.id !3133, !ValueTainted !246
  store i64 %89, i64* %87, align 8, !dbg !3131, !psr.id !3134
  %90 = zext i32 %.06 to i64, !dbg !3135, !psr.id !3136
  %91 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %90, !dbg !3135, !psr.id !3137
  %92 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %91, i32 0, i32 1, !dbg !3138, !psr.id !3139
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %92, i64 0, i64 2, !dbg !3135, !psr.id !3140
  %94 = load i64, i64* %93, align 8, !dbg !3135, !psr.id !3141, !ValueTainted !246
  %95 = and i64 %29, %94, !dbg !3142, !psr.id !3143, !ValueTainted !246
  %96 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !3144, !psr.id !3145
  %97 = getelementptr inbounds [4 x i64], [4 x i64]* %96, i64 0, i64 2, !dbg !3146, !psr.id !3147, !PointTainted !223
  %98 = load i64, i64* %97, align 8, !dbg !3148, !psr.id !3149, !ValueTainted !246
  %99 = or i64 %98, %95, !dbg !3148, !psr.id !3150, !ValueTainted !246
  store i64 %99, i64* %97, align 8, !dbg !3148, !psr.id !3151
  %100 = zext i32 %.06 to i64, !dbg !3152, !psr.id !3153
  %101 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %100, !dbg !3152, !psr.id !3154
  %102 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %101, i32 0, i32 1, !dbg !3155, !psr.id !3156
  %103 = getelementptr inbounds [4 x i64], [4 x i64]* %102, i64 0, i64 3, !dbg !3152, !psr.id !3157
  %104 = load i64, i64* %103, align 8, !dbg !3152, !psr.id !3158, !ValueTainted !246
  %105 = and i64 %29, %104, !dbg !3159, !psr.id !3160, !ValueTainted !246
  %106 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !3161, !psr.id !3162
  %107 = getelementptr inbounds [4 x i64], [4 x i64]* %106, i64 0, i64 3, !dbg !3163, !psr.id !3164, !PointTainted !223
  %108 = load i64, i64* %107, align 8, !dbg !3165, !psr.id !3166, !ValueTainted !246
  %109 = or i64 %108, %105, !dbg !3165, !psr.id !3167, !ValueTainted !246
  store i64 %109, i64* %107, align 8, !dbg !3165, !psr.id !3168
  br label %110, !dbg !3169, !psr.id !3170

110:                                              ; preds = %25
  %111 = add i32 %.06, 1, !dbg !3171, !psr.id !3172
  call void @llvm.dbg.value(metadata i32 %111, metadata !3009, metadata !DIExpression()), !dbg !3000, !psr.id !3173
  br label %23, !dbg !3174, !llvm.loop !3175, !psr.id !3177

112:                                              ; preds = %23
  %113 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !3178, !psr.id !3179
  %114 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !3178, !psr.id !3180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 %114, i64 96, i1 false), !dbg !3178, !psr.id !3181
  %115 = call i32 @p256_add_mixed(%struct.p256_jacobian* %7, %struct.p256_affine* %6), !dbg !3182, !psr.id !3183, !ValueTainted !246
  %116 = and i32 %21, %.1, !dbg !3184, !psr.id !3185, !ValueTainted !246
  %117 = zext i32 %116 to i64, !dbg !3186, !psr.id !3187, !ValueTainted !246
  %118 = sub i64 0, %117, !dbg !3188, !psr.id !3189, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %118, metadata !3031, metadata !DIExpression()), !dbg !3000, !psr.id !3190
  call void @llvm.dbg.value(metadata i32 0, metadata !3191, metadata !DIExpression()), !dbg !3000, !psr.id !3192
  br label %119, !dbg !3193, !psr.id !3195

119:                                              ; preds = %151, %112
  %.0 = phi i32 [ 0, %112 ], [ %152, %151 ], !dbg !3196, !psr.id !3197
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3191, metadata !DIExpression()), !dbg !3000, !psr.id !3198
  %120 = icmp slt i32 %.0, 4, !dbg !3199, !psr.id !3201
  br i1 %120, label %121, label %153, !dbg !3202, !psr.id !3203

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !3204, !psr.id !3206
  %123 = sext i32 %.0 to i64, !dbg !3207, !psr.id !3208
  %124 = getelementptr inbounds [4 x i64], [4 x i64]* %122, i64 0, i64 %123, !dbg !3207, !psr.id !3209
  %125 = load i64, i64* %124, align 8, !dbg !3207, !psr.id !3210, !ValueTainted !246
  %126 = and i64 %118, %125, !dbg !3211, !psr.id !3212, !ValueTainted !246
  %127 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 0, !dbg !3213, !psr.id !3214
  %128 = sext i32 %.0 to i64, !dbg !3215, !psr.id !3216
  %129 = getelementptr inbounds [4 x i64], [4 x i64]* %127, i64 0, i64 %128, !dbg !3215, !psr.id !3217, !PointTainted !223
  %130 = load i64, i64* %129, align 8, !dbg !3218, !psr.id !3219, !ValueTainted !246
  %131 = or i64 %130, %126, !dbg !3218, !psr.id !3220, !ValueTainted !246
  store i64 %131, i64* %129, align 8, !dbg !3218, !psr.id !3221
  %132 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !3222, !psr.id !3223
  %133 = sext i32 %.0 to i64, !dbg !3224, !psr.id !3225
  %134 = getelementptr inbounds [4 x i64], [4 x i64]* %132, i64 0, i64 %133, !dbg !3224, !psr.id !3226
  %135 = load i64, i64* %134, align 8, !dbg !3224, !psr.id !3227, !ValueTainted !246
  %136 = and i64 %118, %135, !dbg !3228, !psr.id !3229, !ValueTainted !246
  %137 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 1, !dbg !3230, !psr.id !3231
  %138 = sext i32 %.0 to i64, !dbg !3232, !psr.id !3233
  %139 = getelementptr inbounds [4 x i64], [4 x i64]* %137, i64 0, i64 %138, !dbg !3232, !psr.id !3234, !PointTainted !223
  %140 = load i64, i64* %139, align 8, !dbg !3235, !psr.id !3236, !ValueTainted !246
  %141 = or i64 %140, %136, !dbg !3235, !psr.id !3237, !ValueTainted !246
  store i64 %141, i64* %139, align 8, !dbg !3235, !psr.id !3238
  %142 = sext i32 %.0 to i64, !dbg !3239, !psr.id !3240
  %143 = getelementptr inbounds [4 x i64], [4 x i64]* @F256_R, i64 0, i64 %142, !dbg !3239, !psr.id !3241
  %144 = load i64, i64* %143, align 8, !dbg !3239, !psr.id !3242
  %145 = and i64 %118, %144, !dbg !3243, !psr.id !3244, !ValueTainted !246
  %146 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 2, !dbg !3245, !psr.id !3246
  %147 = sext i32 %.0 to i64, !dbg !3247, !psr.id !3248
  %148 = getelementptr inbounds [4 x i64], [4 x i64]* %146, i64 0, i64 %147, !dbg !3247, !psr.id !3249, !PointTainted !223
  %149 = load i64, i64* %148, align 8, !dbg !3250, !psr.id !3251, !ValueTainted !246
  %150 = or i64 %149, %145, !dbg !3250, !psr.id !3252, !ValueTainted !246
  store i64 %150, i64* %148, align 8, !dbg !3250, !psr.id !3253
  br label %151, !dbg !3254, !psr.id !3255

151:                                              ; preds = %121
  %152 = add nsw i32 %.0, 1, !dbg !3256, !psr.id !3257
  call void @llvm.dbg.value(metadata i32 %152, metadata !3191, metadata !DIExpression()), !dbg !3000, !psr.id !3258
  br label %119, !dbg !3259, !llvm.loop !3260, !psr.id !3262

153:                                              ; preds = %119
  %154 = xor i32 %.1, -1, !dbg !3263, !psr.id !3264, !ValueTainted !246
  %155 = and i32 %21, %154, !dbg !3265, !psr.id !3266, !ValueTainted !246
  %156 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !3267, !psr.id !3268
  %157 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !3269, !psr.id !3270
  call void @br_ccopy(i32 %155, i8* %156, i8* %157, i64 96), !dbg !3271, !psr.id !3272
  %158 = xor i32 %21, -1, !dbg !3273, !psr.id !3274, !ValueTainted !246
  %159 = and i32 %.1, %158, !dbg !3275, !psr.id !3276, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %159, metadata !2936, metadata !DIExpression()), !dbg !2922, !psr.id !3277
  %160 = shl i32 %.05, 4, !dbg !3278, !psr.id !3279, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %160, metadata !2960, metadata !DIExpression()), !dbg !2961, !psr.id !3280
  br label %161, !dbg !3281, !psr.id !3282

161:                                              ; preds = %153
  %162 = add nsw i32 %.04, 1, !dbg !3283, !psr.id !3284
  call void @llvm.dbg.value(metadata i32 %162, metadata !2963, metadata !DIExpression()), !dbg !2961, !psr.id !3285
  br label %16, !dbg !3286, !llvm.loop !3287, !psr.id !3289

163:                                              ; preds = %16
  br label %9, !dbg !2938, !llvm.loop !3290, !psr.id !3292

164:                                              ; preds = %9
  %165 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !3293, !psr.id !3294
  %166 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !3293, !psr.id !3295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %165, i8* align 8 %166, i64 96, i1 false), !dbg !3293, !psr.id !3296
  ret void, !dbg !3297, !psr.id !3298
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @p256_add_mixed(%struct.p256_jacobian* %0, %struct.p256_affine* %1) #0 !dbg !3299 {
  %3 = alloca [4 x i64], align 16, !psr.id !3302
  %4 = alloca [4 x i64], align 16, !psr.id !3303
  %5 = alloca [4 x i64], align 16, !psr.id !3304
  %6 = alloca [4 x i64], align 16, !psr.id !3305
  %7 = alloca [4 x i64], align 16, !psr.id !3306
  %8 = alloca [4 x i64], align 16, !psr.id !3307
  %9 = alloca [4 x i64], align 16, !psr.id !3308
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !3309, metadata !DIExpression()), !dbg !3310, !psr.id !3311
  call void @llvm.dbg.value(metadata %struct.p256_affine* %1, metadata !3312, metadata !DIExpression()), !dbg !3310, !psr.id !3313
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !3314, metadata !DIExpression()), !dbg !3315, !psr.id !3316
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !3317, metadata !DIExpression()), !dbg !3318, !psr.id !3319
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !3320, metadata !DIExpression()), !dbg !3321, !psr.id !3322
  call void @llvm.dbg.declare(metadata [4 x i64]* %6, metadata !3323, metadata !DIExpression()), !dbg !3324, !psr.id !3325
  call void @llvm.dbg.declare(metadata [4 x i64]* %7, metadata !3326, metadata !DIExpression()), !dbg !3327, !psr.id !3328
  call void @llvm.dbg.declare(metadata [4 x i64]* %8, metadata !3329, metadata !DIExpression()), !dbg !3330, !psr.id !3331
  call void @llvm.dbg.declare(metadata [4 x i64]* %9, metadata !3332, metadata !DIExpression()), !dbg !3333, !psr.id !3334
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !3335, !psr.id !3336
  %11 = bitcast i64* %10 to i8*, !dbg !3335, !psr.id !3337
  %12 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3338, !psr.id !3339
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0, !dbg !3335, !psr.id !3340
  %14 = bitcast i64* %13 to i8*, !dbg !3335, !psr.id !3341
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %14, i64 32, i1 false), !dbg !3335, !psr.id !3342
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !3343, !psr.id !3344
  %16 = bitcast i64* %15 to i8*, !dbg !3343, !psr.id !3345
  %17 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !3346, !psr.id !3347
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 0, !dbg !3343, !psr.id !3348
  %19 = bitcast i64* %18 to i8*, !dbg !3343, !psr.id !3349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 8 %19, i64 32, i1 false), !dbg !3343, !psr.id !3350
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !3351, !psr.id !3352
  %21 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !3353, !psr.id !3354
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0, !dbg !3355, !psr.id !3356
  call void @f256_montysquare(i64* %20, i64* %22), !dbg !3357, !psr.id !3358
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !3359, !psr.id !3360
  %24 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i32 0, i32 0, !dbg !3361, !psr.id !3362
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %24, i64 0, i64 0, !dbg !3363, !psr.id !3364
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !3365, !psr.id !3366
  call void @f256_montymul(i64* %23, i64* %25, i64* %26), !dbg !3367, !psr.id !3368
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !3369, !psr.id !3370
  %28 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !3371, !psr.id !3372
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0, !dbg !3373, !psr.id !3374
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !3375, !psr.id !3376
  call void @f256_montymul(i64* %27, i64* %29, i64* %30), !dbg !3377, !psr.id !3378
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !3379, !psr.id !3380
  %32 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i32 0, i32 1, !dbg !3381, !psr.id !3382
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %32, i64 0, i64 0, !dbg !3383, !psr.id !3384
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !3385, !psr.id !3386
  call void @f256_montymul(i64* %31, i64* %33, i64* %34), !dbg !3387, !psr.id !3388
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !3389, !psr.id !3390
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !3391, !psr.id !3392
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !3393, !psr.id !3394
  call void @f256_sub(i64* %35, i64* %36, i64* %37), !dbg !3395, !psr.id !3396
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !3397, !psr.id !3398
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !3399, !psr.id !3400
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !3401, !psr.id !3402
  call void @f256_sub(i64* %38, i64* %39, i64* %40), !dbg !3403, !psr.id !3404
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !3405, !psr.id !3406
  call void @f256_final_reduce(i64* %41), !dbg !3407, !psr.id !3408
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !3409, !psr.id !3410
  %43 = load i64, i64* %42, align 16, !dbg !3409, !psr.id !3411, !ValueTainted !246
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1, !dbg !3412, !psr.id !3413
  %45 = load i64, i64* %44, align 8, !dbg !3412, !psr.id !3414, !ValueTainted !246
  %46 = or i64 %43, %45, !dbg !3415, !psr.id !3416, !ValueTainted !246
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2, !dbg !3417, !psr.id !3418
  %48 = load i64, i64* %47, align 16, !dbg !3417, !psr.id !3419, !ValueTainted !246
  %49 = or i64 %46, %48, !dbg !3420, !psr.id !3421, !ValueTainted !246
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 3, !dbg !3422, !psr.id !3423
  %51 = load i64, i64* %50, align 8, !dbg !3422, !psr.id !3424, !ValueTainted !246
  %52 = or i64 %49, %51, !dbg !3425, !psr.id !3426, !ValueTainted !246
  call void @llvm.dbg.value(metadata i64 %52, metadata !3427, metadata !DIExpression()), !dbg !3310, !psr.id !3428
  %53 = lshr i64 %52, 32, !dbg !3429, !psr.id !3430, !ValueTainted !246
  %54 = or i64 %52, %53, !dbg !3431, !psr.id !3432, !ValueTainted !246
  %55 = trunc i64 %54 to i32, !dbg !3433, !psr.id !3434, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %55, metadata !3435, metadata !DIExpression()), !dbg !3310, !psr.id !3436
  %56 = sub i32 0, %55, !dbg !3437, !psr.id !3438, !ValueTainted !246
  %57 = or i32 %55, %56, !dbg !3439, !psr.id !3440, !ValueTainted !246
  %58 = lshr i32 %57, 31, !dbg !3441, !psr.id !3442, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %58, metadata !3435, metadata !DIExpression()), !dbg !3310, !psr.id !3443
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !3444, !psr.id !3445
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !3446, !psr.id !3447
  call void @f256_montysquare(i64* %59, i64* %60), !dbg !3448, !psr.id !3449
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !3450, !psr.id !3451
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !3452, !psr.id !3453
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !3454, !psr.id !3455
  call void @f256_montymul(i64* %61, i64* %62, i64* %63), !dbg !3456, !psr.id !3457
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !3458, !psr.id !3459
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !3460, !psr.id !3461
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !3462, !psr.id !3463
  call void @f256_montymul(i64* %64, i64* %65, i64* %66), !dbg !3464, !psr.id !3465
  %67 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3466, !psr.id !3467
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %67, i64 0, i64 0, !dbg !3468, !psr.id !3469
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !3470, !psr.id !3471
  call void @f256_montysquare(i64* %68, i64* %69), !dbg !3472, !psr.id !3473
  %70 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3474, !psr.id !3475
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %70, i64 0, i64 0, !dbg !3476, !psr.id !3477
  %72 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3478, !psr.id !3479
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %72, i64 0, i64 0, !dbg !3480, !psr.id !3481
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !3482, !psr.id !3483
  call void @f256_sub(i64* %71, i64* %73, i64* %74), !dbg !3484, !psr.id !3485
  %75 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3486, !psr.id !3487
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %75, i64 0, i64 0, !dbg !3488, !psr.id !3489
  %77 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3490, !psr.id !3491
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %77, i64 0, i64 0, !dbg !3492, !psr.id !3493
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !3494, !psr.id !3495
  call void @f256_sub(i64* %76, i64* %78, i64* %79), !dbg !3496, !psr.id !3497
  %80 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3498, !psr.id !3499
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %80, i64 0, i64 0, !dbg !3500, !psr.id !3501
  %82 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3502, !psr.id !3503
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %82, i64 0, i64 0, !dbg !3504, !psr.id !3505
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !3506, !psr.id !3507
  call void @f256_sub(i64* %81, i64* %83, i64* %84), !dbg !3508, !psr.id !3509
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !3510, !psr.id !3511
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !3512, !psr.id !3513
  %87 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !3514, !psr.id !3515
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %87, i64 0, i64 0, !dbg !3516, !psr.id !3517
  call void @f256_sub(i64* %85, i64* %86, i64* %88), !dbg !3518, !psr.id !3519
  %89 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !3520, !psr.id !3521
  %90 = getelementptr inbounds [4 x i64], [4 x i64]* %89, i64 0, i64 0, !dbg !3522, !psr.id !3523
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !3524, !psr.id !3525
  %92 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !3526, !psr.id !3527
  call void @f256_montymul(i64* %90, i64* %91, i64* %92), !dbg !3528, !psr.id !3529
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !3530, !psr.id !3531
  %94 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !3532, !psr.id !3533
  %95 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !3534, !psr.id !3535
  call void @f256_montymul(i64* %93, i64* %94, i64* %95), !dbg !3536, !psr.id !3537
  %96 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !3538, !psr.id !3539
  %97 = getelementptr inbounds [4 x i64], [4 x i64]* %96, i64 0, i64 0, !dbg !3540, !psr.id !3541
  %98 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !3542, !psr.id !3543
  %99 = getelementptr inbounds [4 x i64], [4 x i64]* %98, i64 0, i64 0, !dbg !3544, !psr.id !3545
  %100 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !3546, !psr.id !3547
  call void @f256_sub(i64* %97, i64* %99, i64* %100), !dbg !3548, !psr.id !3549
  %101 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !3550, !psr.id !3551
  %102 = getelementptr inbounds [4 x i64], [4 x i64]* %101, i64 0, i64 0, !dbg !3552, !psr.id !3553
  %103 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !3554, !psr.id !3555
  %104 = getelementptr inbounds [4 x i64], [4 x i64]* %103, i64 0, i64 0, !dbg !3556, !psr.id !3557
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !3558, !psr.id !3559
  call void @f256_montymul(i64* %102, i64* %104, i64* %105), !dbg !3560, !psr.id !3561
  ret i32 %58, !dbg !3562, !psr.id !3563
}

; Function Attrs: noinline nounwind uwtable
define internal void @window_to_affine(%struct.p256_affine* %0, %struct.p256_jacobian* %1, i32 %2) #0 !dbg !3564 {
  %4 = alloca [16 x [4 x i64]], align 16, !psr.id !3568
  call void @llvm.dbg.value(metadata %struct.p256_affine* %0, metadata !3569, metadata !DIExpression()), !dbg !3570, !psr.id !3571
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !3572, metadata !DIExpression()), !dbg !3570, !psr.id !3573
  call void @llvm.dbg.value(metadata i32 %2, metadata !3574, metadata !DIExpression()), !dbg !3570, !psr.id !3575
  call void @llvm.dbg.declare(metadata [16 x [4 x i64]]* %4, metadata !3576, metadata !DIExpression()), !dbg !3580, !psr.id !3581
  call void @llvm.dbg.value(metadata i32 0, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3583
  br label %5, !dbg !3584, !psr.id !3586

5:                                                ; preds = %50, %3
  %.02 = phi i32 [ 0, %3 ], [ %51, %50 ], !dbg !3587, !psr.id !3588
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3589
  %6 = add nsw i32 %.02, 1, !dbg !3590, !psr.id !3592
  %7 = icmp slt i32 %6, %2, !dbg !3593, !psr.id !3594
  br i1 %7, label %8, label %52, !dbg !3595, !psr.id !3596

8:                                                ; preds = %5
  %9 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 15, !dbg !3597, !psr.id !3599
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !3600, !psr.id !3601
  %11 = bitcast i64* %10 to i8*, !dbg !3600, !psr.id !3602
  %12 = sext i32 %.02 to i64, !dbg !3603, !psr.id !3604
  %13 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %12, !dbg !3603, !psr.id !3605
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %13, i32 0, i32 2, !dbg !3606, !psr.id !3607
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0, !dbg !3600, !psr.id !3608
  %16 = bitcast i64* %15 to i8*, !dbg !3600, !psr.id !3609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %16, i64 32, i1 false), !dbg !3600, !psr.id !3610
  %17 = sext i32 %.02 to i64, !dbg !3611, !psr.id !3612
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %17, !dbg !3611, !psr.id !3613
  %19 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %18, i32 0, i32 2, !dbg !3614, !psr.id !3615
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %19, i64 0, i64 0, !dbg !3616, !psr.id !3617
  %21 = bitcast i64* %20 to i8*, !dbg !3616, !psr.id !3618
  %22 = add nsw i32 %.02, 1, !dbg !3619, !psr.id !3620
  %23 = sext i32 %22 to i64, !dbg !3621, !psr.id !3622
  %24 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %23, !dbg !3621, !psr.id !3623
  %25 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %24, i32 0, i32 2, !dbg !3624, !psr.id !3625
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %25, i64 0, i64 0, !dbg !3616, !psr.id !3626
  %27 = bitcast i64* %26 to i8*, !dbg !3616, !psr.id !3627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %27, i64 32, i1 false), !dbg !3616, !psr.id !3628
  %28 = add nsw i32 %.02, 1, !dbg !3629, !psr.id !3630
  %29 = sext i32 %28 to i64, !dbg !3631, !psr.id !3632
  %30 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %29, !dbg !3631, !psr.id !3633
  %31 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %30, i32 0, i32 2, !dbg !3634, !psr.id !3635
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %31, i64 0, i64 0, !dbg !3636, !psr.id !3637
  %33 = bitcast i64* %32 to i8*, !dbg !3636, !psr.id !3638
  %34 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 15, !dbg !3639, !psr.id !3640
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %34, i64 0, i64 0, !dbg !3636, !psr.id !3641
  %36 = bitcast i64* %35 to i8*, !dbg !3636, !psr.id !3642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 16 %36, i64 32, i1 false), !dbg !3636, !psr.id !3643
  %37 = ashr i32 %.02, 1, !dbg !3644, !psr.id !3645
  %38 = sext i32 %37 to i64, !dbg !3646, !psr.id !3647
  %39 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %38, !dbg !3646, !psr.id !3648
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %39, i64 0, i64 0, !dbg !3646, !psr.id !3649
  %41 = sext i32 %.02 to i64, !dbg !3650, !psr.id !3651
  %42 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %41, !dbg !3650, !psr.id !3652
  %43 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %42, i32 0, i32 2, !dbg !3653, !psr.id !3654
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %43, i64 0, i64 0, !dbg !3650, !psr.id !3655
  %45 = add nsw i32 %.02, 1, !dbg !3656, !psr.id !3657
  %46 = sext i32 %45 to i64, !dbg !3658, !psr.id !3659
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %46, !dbg !3658, !psr.id !3660
  %48 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %47, i32 0, i32 2, !dbg !3661, !psr.id !3662
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %48, i64 0, i64 0, !dbg !3658, !psr.id !3663
  call void @f256_montymul(i64* %40, i64* %44, i64* %49), !dbg !3664, !psr.id !3665
  br label %50, !dbg !3666, !psr.id !3667

50:                                               ; preds = %8
  %51 = add nsw i32 %.02, 2, !dbg !3668, !psr.id !3669
  call void @llvm.dbg.value(metadata i32 %51, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3670
  br label %5, !dbg !3671, !llvm.loop !3672, !psr.id !3674

52:                                               ; preds = %5
  %53 = and i32 %2, 1, !dbg !3675, !psr.id !3677
  %54 = icmp ne i32 %53, 0, !dbg !3678, !psr.id !3679
  br i1 %54, label %55, label %73, !dbg !3680, !psr.id !3681

55:                                               ; preds = %52
  %56 = ashr i32 %2, 1, !dbg !3682, !psr.id !3684
  %57 = sext i32 %56 to i64, !dbg !3685, !psr.id !3686
  %58 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %57, !dbg !3685, !psr.id !3687
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %58, i64 0, i64 0, !dbg !3688, !psr.id !3689
  %60 = bitcast i64* %59 to i8*, !dbg !3688, !psr.id !3690
  %61 = sub nsw i32 %2, 1, !dbg !3691, !psr.id !3692
  %62 = sext i32 %61 to i64, !dbg !3693, !psr.id !3694
  %63 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %62, !dbg !3693, !psr.id !3695
  %64 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %63, i32 0, i32 2, !dbg !3696, !psr.id !3697
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %64, i64 0, i64 0, !dbg !3688, !psr.id !3698
  %66 = bitcast i64* %65 to i8*, !dbg !3688, !psr.id !3699
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %60, i8* align 8 %66, i64 32, i1 false), !dbg !3688, !psr.id !3700
  %67 = sub nsw i32 %2, 1, !dbg !3701, !psr.id !3702
  %68 = sext i32 %67 to i64, !dbg !3703, !psr.id !3704
  %69 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %68, !dbg !3703, !psr.id !3705
  %70 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %69, i32 0, i32 2, !dbg !3706, !psr.id !3707
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %70, i64 0, i64 0, !dbg !3708, !psr.id !3709
  %72 = bitcast i64* %71 to i8*, !dbg !3708, !psr.id !3710
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 16 bitcast ([4 x i64]* @F256_R to i8*), i64 32, i1 false), !dbg !3708, !psr.id !3711
  br label %73, !dbg !3712, !psr.id !3713

73:                                               ; preds = %55, %52
  call void @llvm.dbg.value(metadata i32 1, metadata !3714, metadata !DIExpression()), !dbg !3570, !psr.id !3715
  call void @llvm.dbg.value(metadata i32 2, metadata !3716, metadata !DIExpression()), !dbg !3570, !psr.id !3717
  br label %74, !dbg !3718, !psr.id !3720

74:                                               ; preds = %131, %73
  %.01 = phi i32 [ 1, %73 ], [ %132, %131 ], !dbg !3721, !psr.id !3722
  %.0 = phi i32 [ 2, %73 ], [ %133, %131 ], !dbg !3721, !psr.id !3723
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3716, metadata !DIExpression()), !dbg !3570, !psr.id !3724
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3714, metadata !DIExpression()), !dbg !3570, !psr.id !3725
  %75 = icmp slt i32 %.0, %2, !dbg !3726, !psr.id !3728
  br i1 %75, label %76, label %134, !dbg !3729, !psr.id !3730

76:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i32 0, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3731
  br label %77, !dbg !3732, !psr.id !3735

77:                                               ; preds = %93, %76
  %.1 = phi i32 [ 0, %76 ], [ %94, %93 ], !dbg !3736, !psr.id !3737
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3738
  %78 = icmp slt i32 %.1, %2, !dbg !3739, !psr.id !3741
  br i1 %78, label %79, label %95, !dbg !3742, !psr.id !3743

79:                                               ; preds = %77
  %80 = sext i32 %.1 to i64, !dbg !3744, !psr.id !3746
  %81 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %80, !dbg !3744, !psr.id !3747
  %82 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %81, i32 0, i32 2, !dbg !3748, !psr.id !3749
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %82, i64 0, i64 0, !dbg !3744, !psr.id !3750
  %84 = sext i32 %.1 to i64, !dbg !3751, !psr.id !3752
  %85 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %84, !dbg !3751, !psr.id !3753
  %86 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %85, i32 0, i32 2, !dbg !3754, !psr.id !3755
  %87 = getelementptr inbounds [4 x i64], [4 x i64]* %86, i64 0, i64 0, !dbg !3751, !psr.id !3756
  %88 = ashr i32 %.1, %.01, !dbg !3757, !psr.id !3758
  %89 = xor i32 %88, 1, !dbg !3759, !psr.id !3760
  %90 = sext i32 %89 to i64, !dbg !3761, !psr.id !3762
  %91 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %90, !dbg !3761, !psr.id !3763
  %92 = getelementptr inbounds [4 x i64], [4 x i64]* %91, i64 0, i64 0, !dbg !3761, !psr.id !3764
  call void @f256_montymul(i64* %83, i64* %87, i64* %92), !dbg !3765, !psr.id !3766
  br label %93, !dbg !3767, !psr.id !3768

93:                                               ; preds = %79
  %94 = add nsw i32 %.1, 1, !dbg !3769, !psr.id !3770
  call void @llvm.dbg.value(metadata i32 %94, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3771
  br label %77, !dbg !3772, !llvm.loop !3773, !psr.id !3775

95:                                               ; preds = %77
  %96 = add nsw i32 %2, %.0, !dbg !3776, !psr.id !3777
  %97 = sub nsw i32 %96, 1, !dbg !3778, !psr.id !3779
  %98 = ashr i32 %97, %.01, !dbg !3780, !psr.id !3781
  call void @llvm.dbg.value(metadata i32 %98, metadata !3782, metadata !DIExpression()), !dbg !3783, !psr.id !3784
  call void @llvm.dbg.value(metadata i32 0, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3785
  br label %99, !dbg !3786, !psr.id !3788

99:                                               ; preds = %115, %95
  %.2 = phi i32 [ 0, %95 ], [ %116, %115 ], !dbg !3789, !psr.id !3790
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3791
  %100 = ashr i32 %98, 1, !dbg !3792, !psr.id !3794
  %101 = icmp slt i32 %.2, %100, !dbg !3795, !psr.id !3796
  br i1 %101, label %102, label %117, !dbg !3797, !psr.id !3798

102:                                              ; preds = %99
  %103 = sext i32 %.2 to i64, !dbg !3799, !psr.id !3801
  %104 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %103, !dbg !3799, !psr.id !3802
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %104, i64 0, i64 0, !dbg !3799, !psr.id !3803
  %106 = shl i32 %.2, 1, !dbg !3804, !psr.id !3805
  %107 = sext i32 %106 to i64, !dbg !3806, !psr.id !3807
  %108 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %107, !dbg !3806, !psr.id !3808
  %109 = getelementptr inbounds [4 x i64], [4 x i64]* %108, i64 0, i64 0, !dbg !3806, !psr.id !3809
  %110 = shl i32 %.2, 1, !dbg !3810, !psr.id !3811
  %111 = add nsw i32 %110, 1, !dbg !3812, !psr.id !3813
  %112 = sext i32 %111 to i64, !dbg !3814, !psr.id !3815
  %113 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %112, !dbg !3814, !psr.id !3816
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %113, i64 0, i64 0, !dbg !3814, !psr.id !3817
  call void @f256_montymul(i64* %105, i64* %109, i64* %114), !dbg !3818, !psr.id !3819
  br label %115, !dbg !3820, !psr.id !3821

115:                                              ; preds = %102
  %116 = add nsw i32 %.2, 1, !dbg !3822, !psr.id !3823
  call void @llvm.dbg.value(metadata i32 %116, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3824
  br label %99, !dbg !3825, !llvm.loop !3826, !psr.id !3828

117:                                              ; preds = %99
  %118 = and i32 %98, 1, !dbg !3829, !psr.id !3831
  %119 = icmp ne i32 %118, 0, !dbg !3832, !psr.id !3833
  br i1 %119, label %120, label %130, !dbg !3834, !psr.id !3835

120:                                              ; preds = %117
  %121 = ashr i32 %98, 1, !dbg !3836, !psr.id !3838
  %122 = sext i32 %121 to i64, !dbg !3839, !psr.id !3840
  %123 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %122, !dbg !3839, !psr.id !3841
  %124 = getelementptr inbounds [4 x i64], [4 x i64]* %123, i64 0, i64 0, !dbg !3842, !psr.id !3843
  %125 = bitcast i64* %124 to i8*, !dbg !3842, !psr.id !3844
  %126 = sext i32 %98 to i64, !dbg !3845, !psr.id !3846
  %127 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %126, !dbg !3845, !psr.id !3847
  %128 = getelementptr inbounds [4 x i64], [4 x i64]* %127, i64 0, i64 0, !dbg !3842, !psr.id !3848
  %129 = bitcast i64* %128 to i8*, !dbg !3842, !psr.id !3849
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 16 %125, i8* align 16 %129, i64 32, i1 false), !dbg !3842, !psr.id !3850
  br label %130, !dbg !3851, !psr.id !3852

130:                                              ; preds = %120, %117
  br label %131, !dbg !3853, !psr.id !3854

131:                                              ; preds = %130
  %132 = add nsw i32 %.01, 1, !dbg !3855, !psr.id !3856
  call void @llvm.dbg.value(metadata i32 %132, metadata !3714, metadata !DIExpression()), !dbg !3570, !psr.id !3857
  %133 = shl i32 %.0, 1, !dbg !3858, !psr.id !3859
  call void @llvm.dbg.value(metadata i32 %133, metadata !3716, metadata !DIExpression()), !dbg !3570, !psr.id !3860
  br label %74, !dbg !3861, !llvm.loop !3862, !psr.id !3864

134:                                              ; preds = %74
  %135 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 15, !dbg !3865, !psr.id !3866
  %136 = getelementptr inbounds [4 x i64], [4 x i64]* %135, i64 0, i64 0, !dbg !3865, !psr.id !3867
  %137 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 0, !dbg !3868, !psr.id !3869
  %138 = getelementptr inbounds [4 x i64], [4 x i64]* %137, i64 0, i64 0, !dbg !3868, !psr.id !3870
  call void @f256_invert(i64* %136, i64* %138), !dbg !3871, !psr.id !3872
  call void @llvm.dbg.value(metadata i32 0, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3873
  br label %139, !dbg !3874, !psr.id !3876

139:                                              ; preds = %180, %134
  %.3 = phi i32 [ 0, %134 ], [ %181, %180 ], !dbg !3877, !psr.id !3878
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3879
  %140 = icmp slt i32 %.3, %2, !dbg !3880, !psr.id !3882
  br i1 %140, label %141, label %182, !dbg !3883, !psr.id !3884

141:                                              ; preds = %139
  %142 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 13, !dbg !3885, !psr.id !3887
  %143 = getelementptr inbounds [4 x i64], [4 x i64]* %142, i64 0, i64 0, !dbg !3885, !psr.id !3888
  %144 = sext i32 %.3 to i64, !dbg !3889, !psr.id !3890
  %145 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %144, !dbg !3889, !psr.id !3891
  %146 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %145, i32 0, i32 2, !dbg !3892, !psr.id !3893
  %147 = getelementptr inbounds [4 x i64], [4 x i64]* %146, i64 0, i64 0, !dbg !3889, !psr.id !3894
  %148 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 15, !dbg !3895, !psr.id !3896
  %149 = getelementptr inbounds [4 x i64], [4 x i64]* %148, i64 0, i64 0, !dbg !3895, !psr.id !3897
  call void @f256_montymul(i64* %143, i64* %147, i64* %149), !dbg !3898, !psr.id !3899
  %150 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 14, !dbg !3900, !psr.id !3901
  %151 = getelementptr inbounds [4 x i64], [4 x i64]* %150, i64 0, i64 0, !dbg !3900, !psr.id !3902
  %152 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 13, !dbg !3903, !psr.id !3904
  %153 = getelementptr inbounds [4 x i64], [4 x i64]* %152, i64 0, i64 0, !dbg !3903, !psr.id !3905
  call void @f256_montysquare(i64* %151, i64* %153), !dbg !3906, !psr.id !3907
  %154 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 13, !dbg !3908, !psr.id !3909
  %155 = getelementptr inbounds [4 x i64], [4 x i64]* %154, i64 0, i64 0, !dbg !3908, !psr.id !3910
  %156 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 13, !dbg !3911, !psr.id !3912
  %157 = getelementptr inbounds [4 x i64], [4 x i64]* %156, i64 0, i64 0, !dbg !3911, !psr.id !3913
  %158 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 14, !dbg !3914, !psr.id !3915
  %159 = getelementptr inbounds [4 x i64], [4 x i64]* %158, i64 0, i64 0, !dbg !3914, !psr.id !3916
  call void @f256_montymul(i64* %155, i64* %157, i64* %159), !dbg !3917, !psr.id !3918
  %160 = sext i32 %.3 to i64, !dbg !3919, !psr.id !3920
  %161 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %0, i64 %160, !dbg !3919, !psr.id !3921
  %162 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %161, i32 0, i32 0, !dbg !3922, !psr.id !3923
  %163 = getelementptr inbounds [4 x i64], [4 x i64]* %162, i64 0, i64 0, !dbg !3919, !psr.id !3924
  %164 = sext i32 %.3 to i64, !dbg !3925, !psr.id !3926
  %165 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %164, !dbg !3925, !psr.id !3927
  %166 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %165, i32 0, i32 0, !dbg !3928, !psr.id !3929
  %167 = getelementptr inbounds [4 x i64], [4 x i64]* %166, i64 0, i64 0, !dbg !3925, !psr.id !3930
  %168 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 14, !dbg !3931, !psr.id !3932
  %169 = getelementptr inbounds [4 x i64], [4 x i64]* %168, i64 0, i64 0, !dbg !3931, !psr.id !3933
  call void @f256_montymul(i64* %163, i64* %167, i64* %169), !dbg !3934, !psr.id !3935
  %170 = sext i32 %.3 to i64, !dbg !3936, !psr.id !3937
  %171 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %0, i64 %170, !dbg !3936, !psr.id !3938
  %172 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %171, i32 0, i32 1, !dbg !3939, !psr.id !3940
  %173 = getelementptr inbounds [4 x i64], [4 x i64]* %172, i64 0, i64 0, !dbg !3936, !psr.id !3941
  %174 = sext i32 %.3 to i64, !dbg !3942, !psr.id !3943
  %175 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %174, !dbg !3942, !psr.id !3944
  %176 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %175, i32 0, i32 1, !dbg !3945, !psr.id !3946
  %177 = getelementptr inbounds [4 x i64], [4 x i64]* %176, i64 0, i64 0, !dbg !3942, !psr.id !3947
  %178 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 13, !dbg !3948, !psr.id !3949
  %179 = getelementptr inbounds [4 x i64], [4 x i64]* %178, i64 0, i64 0, !dbg !3948, !psr.id !3950
  call void @f256_montymul(i64* %173, i64* %177, i64* %179), !dbg !3951, !psr.id !3952
  br label %180, !dbg !3953, !psr.id !3954

180:                                              ; preds = %141
  %181 = add nsw i32 %.3, 1, !dbg !3955, !psr.id !3956
  call void @llvm.dbg.value(metadata i32 %181, metadata !3582, metadata !DIExpression()), !dbg !3570, !psr.id !3957
  br label %139, !dbg !3958, !llvm.loop !3959, !psr.id !3961

182:                                              ; preds = %139
  ret void, !dbg !3962, !psr.id !3963
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @br_dec64be(i8* %0) #0 !dbg !3964 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3967, metadata !DIExpression()), !dbg !3968, !psr.id !3969
  call void @llvm.dbg.value(metadata i8* %0, metadata !3970, metadata !DIExpression()), !dbg !3968, !psr.id !3971
  %2 = call i32 @br_dec32be(i8* %0), !dbg !3972, !psr.id !3973
  %3 = zext i32 %2 to i64, !dbg !3974, !psr.id !3975
  %4 = shl i64 %3, 32, !dbg !3976, !psr.id !3977
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !3978, !psr.id !3979
  %6 = call i32 @br_dec32be(i8* %5), !dbg !3980, !psr.id !3981
  %7 = zext i32 %6 to i64, !dbg !3982, !psr.id !3983
  %8 = or i64 %4, %7, !dbg !3984, !psr.id !3985
  ret i64 %8, !dbg !3986, !psr.id !3987
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_tomonty(i64* %0, i64* %1) #0 !dbg !35 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !3988, metadata !DIExpression()), !dbg !3989, !psr.id !3990
  call void @llvm.dbg.value(metadata i64* %1, metadata !3991, metadata !DIExpression()), !dbg !3989, !psr.id !3992
  %3 = getelementptr inbounds [4 x i64], [4 x i64]* @f256_tomonty.R2, i64 0, i64 0, !psr.id !3993
  call void @f256_montymul(i64* %0, i64* %1, i64* %3), !dbg !3994, !psr.id !3995
  ret void, !dbg !3996, !psr.id !3997
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !3998 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4001, metadata !DIExpression()), !dbg !4002, !psr.id !4003
  call void @llvm.dbg.value(metadata i8* %0, metadata !4004, metadata !DIExpression()), !dbg !4002, !psr.id !4005
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !4006, !psr.id !4007
  %3 = load i8, i8* %2, align 1, !dbg !4006, !psr.id !4008
  %4 = zext i8 %3 to i32, !dbg !4009, !psr.id !4010
  %5 = shl i32 %4, 24, !dbg !4011, !psr.id !4012
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !4013, !psr.id !4014
  %7 = load i8, i8* %6, align 1, !dbg !4013, !psr.id !4015
  %8 = zext i8 %7 to i32, !dbg !4016, !psr.id !4017
  %9 = shl i32 %8, 16, !dbg !4018, !psr.id !4019
  %10 = or i32 %5, %9, !dbg !4020, !psr.id !4021
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !4022, !psr.id !4023
  %12 = load i8, i8* %11, align 1, !dbg !4022, !psr.id !4024
  %13 = zext i8 %12 to i32, !dbg !4025, !psr.id !4026
  %14 = shl i32 %13, 8, !dbg !4027, !psr.id !4028
  %15 = or i32 %10, %14, !dbg !4029, !psr.id !4030
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !4031, !psr.id !4032
  %17 = load i8, i8* %16, align 1, !dbg !4031, !psr.id !4033
  %18 = zext i8 %17 to i32, !dbg !4034, !psr.id !4035
  %19 = or i32 %15, %18, !dbg !4036, !psr.id !4037
  ret i32 %19, !dbg !4038, !psr.id !4039
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_scalar(i8* %0, i64 %1) #0 !dbg !4040 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4043, metadata !DIExpression()), !dbg !4044, !psr.id !4045
  call void @llvm.dbg.value(metadata i64 %1, metadata !4046, metadata !DIExpression()), !dbg !4044, !psr.id !4047
  %3 = icmp ugt i64 %1, 32, !dbg !4048, !psr.id !4050
  br i1 %3, label %4, label %5, !dbg !4051, !psr.id !4052

4:                                                ; preds = %2
  br label %40, !dbg !4053, !psr.id !4055

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !4056, metadata !DIExpression()), !dbg !4044, !psr.id !4057
  call void @llvm.dbg.value(metadata i64 0, metadata !4058, metadata !DIExpression()), !dbg !4044, !psr.id !4059
  br label %6, !dbg !4060, !psr.id !4062

6:                                                ; preds = %13, %5
  %.04 = phi i32 [ 0, %5 ], [ %12, %13 ], !dbg !4044, !psr.id !4063
  %.01 = phi i64 [ 0, %5 ], [ %14, %13 ], !dbg !4064, !psr.id !4065
  call void @llvm.dbg.value(metadata i64 %.01, metadata !4058, metadata !DIExpression()), !dbg !4044, !psr.id !4066
  call void @llvm.dbg.value(metadata i32 %.04, metadata !4056, metadata !DIExpression()), !dbg !4044, !psr.id !4067
  %7 = icmp ult i64 %.01, %1, !dbg !4068, !psr.id !4070
  br i1 %7, label %8, label %15, !dbg !4071, !psr.id !4072

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !4073, !psr.id !4075, !PointTainted !223
  %10 = load i8, i8* %9, align 1, !dbg !4073, !psr.id !4076, !ValueTainted !246
  %11 = zext i8 %10 to i32, !dbg !4073, !psr.id !4077, !ValueTainted !246
  %12 = or i32 %.04, %11, !dbg !4078, !psr.id !4079, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %12, metadata !4056, metadata !DIExpression()), !dbg !4044, !psr.id !4080
  br label %13, !dbg !4081, !psr.id !4082

13:                                               ; preds = %8
  %14 = add i64 %.01, 1, !dbg !4083, !psr.id !4084
  call void @llvm.dbg.value(metadata i64 %14, metadata !4058, metadata !DIExpression()), !dbg !4044, !psr.id !4085
  br label %6, !dbg !4086, !llvm.loop !4087, !psr.id !4089

15:                                               ; preds = %6
  %16 = icmp eq i64 %1, 32, !dbg !4090, !psr.id !4092
  br i1 %16, label %17, label %35, !dbg !4093, !psr.id !4094

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 0, metadata !4095, metadata !DIExpression()), !dbg !4044, !psr.id !4096
  call void @llvm.dbg.value(metadata i64 0, metadata !4058, metadata !DIExpression()), !dbg !4044, !psr.id !4097
  br label %18, !dbg !4098, !psr.id !4101

18:                                               ; preds = %32, %17
  %.02 = phi i32 [ 0, %17 ], [ %31, %32 ], !dbg !4102, !psr.id !4103, !ValueTainted !246
  %.1 = phi i64 [ 0, %17 ], [ %33, %32 ], !dbg !4104, !psr.id !4105
  call void @llvm.dbg.value(metadata i64 %.1, metadata !4058, metadata !DIExpression()), !dbg !4044, !psr.id !4106
  call void @llvm.dbg.value(metadata i32 %.02, metadata !4095, metadata !DIExpression()), !dbg !4044, !psr.id !4107
  %19 = icmp ult i64 %.1, %1, !dbg !4108, !psr.id !4110
  br i1 %19, label %20, label %34, !dbg !4111, !psr.id !4112

20:                                               ; preds = %18
  %21 = call i32 @EQ0(i32 %.02), !dbg !4113, !psr.id !4115, !ValueTainted !246
  %22 = sub nsw i32 0, %21, !dbg !4116, !psr.id !4117, !ValueTainted !246
  %23 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !4118, !psr.id !4119, !PointTainted !223
  %24 = load i8, i8* %23, align 1, !dbg !4118, !psr.id !4120, !ValueTainted !246
  %25 = zext i8 %24 to i32, !dbg !4118, !psr.id !4121, !ValueTainted !246
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* @P256_N, i64 0, i64 %.1, !dbg !4122, !psr.id !4123
  %27 = load i8, i8* %26, align 1, !dbg !4122, !psr.id !4124
  %28 = zext i8 %27 to i32, !dbg !4122, !psr.id !4125
  %29 = call i32 @CMP(i32 %25, i32 %28), !dbg !4126, !psr.id !4127, !ValueTainted !246
  %30 = and i32 %22, %29, !dbg !4128, !psr.id !4129, !ValueTainted !246
  %31 = or i32 %.02, %30, !dbg !4130, !psr.id !4131, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %31, metadata !4095, metadata !DIExpression()), !dbg !4044, !psr.id !4132
  br label %32, !dbg !4133, !psr.id !4134

32:                                               ; preds = %20
  %33 = add i64 %.1, 1, !dbg !4135, !psr.id !4136
  call void @llvm.dbg.value(metadata i64 %33, metadata !4058, metadata !DIExpression()), !dbg !4044, !psr.id !4137
  br label %18, !dbg !4138, !llvm.loop !4139, !psr.id !4141

34:                                               ; preds = %18
  br label %36, !dbg !4142, !psr.id !4143

35:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 -1, metadata !4095, metadata !DIExpression()), !dbg !4044, !psr.id !4144
  br label %36, !psr.id !4145

36:                                               ; preds = %35, %34
  %.13 = phi i32 [ %.02, %34 ], [ -1, %35 ], !dbg !4146, !psr.id !4147, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %.13, metadata !4095, metadata !DIExpression()), !dbg !4044, !psr.id !4148
  %37 = call i32 @NEQ(i32 %.04, i32 0), !dbg !4149, !psr.id !4150, !ValueTainted !246
  %38 = call i32 @LT0(i32 %.13), !dbg !4151, !psr.id !4152, !ValueTainted !246
  %39 = and i32 %37, %38, !dbg !4153, !psr.id !4154, !ValueTainted !246
  br label %40, !dbg !4155, !psr.id !4156

40:                                               ; preds = %36, %4
  %.0 = phi i32 [ 0, %4 ], [ %39, %36 ], !dbg !4044, !psr.id !4157, !ValueTainted !246
  ret i32 %.0, !dbg !4158, !psr.id !4159
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ0(i32 %0) #0 !dbg !4160 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4163, metadata !DIExpression()), !dbg !4164, !psr.id !4165
  call void @llvm.dbg.value(metadata i32 %0, metadata !4166, metadata !DIExpression()), !dbg !4164, !psr.id !4167
  %2 = sub i32 0, %0, !dbg !4168, !psr.id !4169, !ValueTainted !246
  %3 = or i32 %0, %2, !dbg !4170, !psr.id !4171, !ValueTainted !246
  %4 = xor i32 %3, -1, !dbg !4172, !psr.id !4173, !ValueTainted !246
  %5 = lshr i32 %4, 31, !dbg !4174, !psr.id !4175, !ValueTainted !246
  ret i32 %5, !dbg !4176, !psr.id !4177
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @CMP(i32 %0, i32 %1) #0 !dbg !4178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4181, metadata !DIExpression()), !dbg !4182, !psr.id !4183
  call void @llvm.dbg.value(metadata i32 %1, metadata !4184, metadata !DIExpression()), !dbg !4182, !psr.id !4185
  %3 = call i32 @GT(i32 %0, i32 %1), !dbg !4186, !psr.id !4187, !ValueTainted !246
  %4 = call i32 @GT(i32 %1, i32 %0), !dbg !4188, !psr.id !4189, !ValueTainted !246
  %5 = sub nsw i32 0, %4, !dbg !4190, !psr.id !4191, !ValueTainted !246
  %6 = or i32 %3, %5, !dbg !4192, !psr.id !4193, !ValueTainted !246
  ret i32 %6, !dbg !4194, !psr.id !4195
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LT0(i32 %0) #0 !dbg !4196 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4197, metadata !DIExpression()), !dbg !4198, !psr.id !4199
  %2 = lshr i32 %0, 31, !dbg !4200, !psr.id !4201, !ValueTainted !246
  ret i32 %2, !dbg !4202, !psr.id !4203
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !4204 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4205, metadata !DIExpression()), !dbg !4206, !psr.id !4207
  call void @llvm.dbg.value(metadata i32 %1, metadata !4208, metadata !DIExpression()), !dbg !4206, !psr.id !4209
  %3 = sub i32 %1, %0, !dbg !4210, !psr.id !4211, !ValueTainted !246
  call void @llvm.dbg.value(metadata i32 %3, metadata !4212, metadata !DIExpression()), !dbg !4206, !psr.id !4213
  %4 = xor i32 %0, %1, !dbg !4214, !psr.id !4215, !ValueTainted !246
  %5 = xor i32 %0, %3, !dbg !4216, !psr.id !4217, !ValueTainted !246
  %6 = and i32 %4, %5, !dbg !4218, !psr.id !4219, !ValueTainted !246
  %7 = xor i32 %3, %6, !dbg !4220, !psr.id !4221, !ValueTainted !246
  %8 = lshr i32 %7, 31, !dbg !4222, !psr.id !4223, !ValueTainted !246
  ret i32 %8, !dbg !4224, !psr.id !4225
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.br_ec_impl* @br_ec_p256_m64_get() #0 !dbg !4226 {
  ret %struct.br_ec_impl* @br_ec_p256_m64, !dbg !4230, !psr.id !4231
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
!1 = distinct !DIGlobalVariable(name: "br_ec_p256_m64", scope: !2, file: !3, line: 1755, type: !63, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/ec/ec_p256_m64.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m64")
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
!34 = distinct !DIGlobalVariable(name: "R2", scope: !35, file: !3, line: 516, type: !41, isLocal: true, isDefinition: true)
!35 = distinct !DISubprogram(name: "f256_tomonty", scope: !3, file: !3, line: 508, type: !36, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !39}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 4)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "P256_B_MONTY", scope: !2, file: !3, line: 87, type: !41, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "F256_R", scope: !2, file: !3, line: 80, type: !41, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "one", scope: !50, file: !3, line: 535, type: !41, isLocal: true, isDefinition: true)
!50 = distinct !DISubprogram(name: "f256_frommonty", scope: !3, file: !3, line: 530, type: !36, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "P256_Gwin", scope: !2, file: !3, line: 1508, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 7680, elements: !61)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "p256_affine", file: !3, line: 652, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 649, size: 512, elements: !57)
!57 = !{!58, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !56, file: !3, line: 650, baseType: !59, size: 256)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, elements: !42)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !56, file: !3, line: 651, baseType: !59, size: 256, offset: 256)
!61 = !{!62}
!62 = !DISubrange(count: 15)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_ec_impl", file: !65, line: 415, baseType: !66)
!65 = !DIFile(filename: "../BearSSL/inc/bearssl_ec.h", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m64")
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
!104 = !DIFile(filename: "api_mul.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m64")
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "../BearSSL/src/codec/ccopy.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m64")
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
!265 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m64")
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
!317 = distinct !DISubprogram(name: "api_mul", scope: !3, file: !3, line: 1651, type: !84, scopeLine: 1653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!318 = !{!"98"}
!319 = !DILocalVariable(name: "G", arg: 1, scope: !317, file: !3, line: 1651, type: !86)
!320 = !DILocation(line: 0, scope: !317)
!321 = !{!"99"}
!322 = !DILocalVariable(name: "Glen", arg: 2, scope: !317, file: !3, line: 1651, type: !75)
!323 = !{!"100"}
!324 = !DILocalVariable(name: "k", arg: 3, scope: !317, file: !3, line: 1652, type: !73)
!325 = !{!"101"}
!326 = !DILocalVariable(name: "klen", arg: 4, scope: !317, file: !3, line: 1652, type: !75)
!327 = !{!"102"}
!328 = !DILocalVariable(name: "curve", arg: 5, scope: !317, file: !3, line: 1652, type: !10)
!329 = !{!"103"}
!330 = !DILocalVariable(name: "P", scope: !317, file: !3, line: 1655, type: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "p256_jacobian", file: !3, line: 658, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 654, size: 768, elements: !333)
!333 = !{!334, !335, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !332, file: !3, line: 655, baseType: !59, size: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !332, file: !3, line: 656, baseType: !59, size: 256, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !332, file: !3, line: 657, baseType: !59, size: 256, offset: 512)
!337 = !DILocation(line: 1655, column: 16, scope: !317)
!338 = !{!"104"}
!339 = !DILocation(line: 1658, column: 11, scope: !340)
!340 = distinct !DILexicalBlock(scope: !317, file: !3, line: 1658, column: 6)
!341 = !{!"105"}
!342 = !DILocation(line: 1658, column: 6, scope: !317)
!343 = !{!"106"}
!344 = !DILocation(line: 1659, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !340, file: !3, line: 1658, column: 18)
!346 = !{!"107"}
!347 = !DILocation(line: 1661, column: 6, scope: !317)
!348 = !{!"108"}
!349 = !DILocalVariable(name: "r", scope: !317, file: !3, line: 1654, type: !11)
!350 = !{!"109"}
!351 = !DILocation(line: 1662, column: 7, scope: !317)
!352 = !{!"110"}
!353 = !DILocation(line: 1662, column: 4, scope: !317)
!354 = !{!"111"}
!355 = !{!"112"}
!356 = !DILocation(line: 1663, column: 2, scope: !317)
!357 = !{!"113"}
!358 = !DILocation(line: 1664, column: 7, scope: !317)
!359 = !{!"114"}
!360 = !DILocation(line: 1664, column: 4, scope: !317)
!361 = !{!"115"}
!362 = !{!"116"}
!363 = !DILocation(line: 1665, column: 2, scope: !317)
!364 = !{!"117"}
!365 = !{!"118"}
!366 = !DILocation(line: 1666, column: 1, scope: !317)
!367 = !{!"119"}
!368 = distinct !DISubprogram(name: "api_mulgen", scope: !3, file: !3, line: 1669, type: !89, scopeLine: 1671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!369 = !{!"120"}
!370 = !DILocalVariable(name: "R", arg: 1, scope: !368, file: !3, line: 1669, type: !86)
!371 = !DILocation(line: 0, scope: !368)
!372 = !{!"121"}
!373 = !DILocalVariable(name: "k", arg: 2, scope: !368, file: !3, line: 1670, type: !73)
!374 = !{!"122"}
!375 = !DILocalVariable(name: "klen", arg: 3, scope: !368, file: !3, line: 1670, type: !75)
!376 = !{!"123"}
!377 = !DILocalVariable(name: "curve", arg: 4, scope: !368, file: !3, line: 1670, type: !10)
!378 = !{!"124"}
!379 = !DILocalVariable(name: "P", scope: !368, file: !3, line: 1672, type: !331)
!380 = !DILocation(line: 1672, column: 16, scope: !368)
!381 = !{!"125"}
!382 = !DILocation(line: 1675, column: 2, scope: !368)
!383 = !{!"126"}
!384 = !DILocation(line: 1676, column: 2, scope: !368)
!385 = !{!"127"}
!386 = !DILocation(line: 1677, column: 2, scope: !368)
!387 = !{!"128"}
!388 = distinct !DISubprogram(name: "api_muladd", scope: !3, file: !3, line: 1681, type: !93, scopeLine: 1684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!389 = !{!"129"}
!390 = !{!"130"}
!391 = !DILocalVariable(name: "A", arg: 1, scope: !388, file: !3, line: 1681, type: !86)
!392 = !DILocation(line: 0, scope: !388)
!393 = !{!"131"}
!394 = !DILocalVariable(name: "B", arg: 2, scope: !388, file: !3, line: 1681, type: !73)
!395 = !{!"132"}
!396 = !DILocalVariable(name: "len", arg: 3, scope: !388, file: !3, line: 1681, type: !75)
!397 = !{!"133"}
!398 = !DILocalVariable(name: "x", arg: 4, scope: !388, file: !3, line: 1682, type: !73)
!399 = !{!"134"}
!400 = !DILocalVariable(name: "xlen", arg: 5, scope: !388, file: !3, line: 1682, type: !75)
!401 = !{!"135"}
!402 = !DILocalVariable(name: "y", arg: 6, scope: !388, file: !3, line: 1683, type: !73)
!403 = !{!"136"}
!404 = !DILocalVariable(name: "ylen", arg: 7, scope: !388, file: !3, line: 1683, type: !75)
!405 = !{!"137"}
!406 = !DILocalVariable(name: "curve", arg: 8, scope: !388, file: !3, line: 1683, type: !10)
!407 = !{!"138"}
!408 = !DILocalVariable(name: "P", scope: !388, file: !3, line: 1713, type: !331)
!409 = !DILocation(line: 1713, column: 16, scope: !388)
!410 = !{!"139"}
!411 = !DILocalVariable(name: "Q", scope: !388, file: !3, line: 1713, type: !331)
!412 = !DILocation(line: 1713, column: 19, scope: !388)
!413 = !{!"140"}
!414 = !DILocation(line: 1718, column: 10, scope: !415)
!415 = distinct !DILexicalBlock(scope: !388, file: !3, line: 1718, column: 6)
!416 = !{!"141"}
!417 = !DILocation(line: 1718, column: 6, scope: !388)
!418 = !{!"142"}
!419 = !DILocation(line: 1719, column: 3, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !3, line: 1718, column: 17)
!421 = !{!"143"}
!422 = !DILocation(line: 1721, column: 6, scope: !388)
!423 = !{!"144"}
!424 = !DILocalVariable(name: "r", scope: !388, file: !3, line: 1714, type: !11)
!425 = !{!"145"}
!426 = !DILocation(line: 1722, column: 2, scope: !388)
!427 = !{!"146"}
!428 = !DILocation(line: 1723, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !388, file: !3, line: 1723, column: 6)
!430 = !{!"147"}
!431 = !DILocation(line: 1723, column: 6, scope: !388)
!432 = !{!"148"}
!433 = !DILocation(line: 1724, column: 3, scope: !434)
!434 = distinct !DILexicalBlock(scope: !429, file: !3, line: 1723, column: 17)
!435 = !{!"149"}
!436 = !DILocation(line: 1725, column: 2, scope: !434)
!437 = !{!"150"}
!438 = !DILocation(line: 1726, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !429, file: !3, line: 1725, column: 9)
!440 = !{!"151"}
!441 = !DILocation(line: 1726, column: 5, scope: !439)
!442 = !{!"152"}
!443 = !{!"153"}
!444 = !DILocation(line: 1727, column: 3, scope: !439)
!445 = !{!"154"}
!446 = !{!"155"}
!447 = !{!"156"}
!448 = !{!"157"}
!449 = !DILocation(line: 1733, column: 6, scope: !388)
!450 = !{!"158"}
!451 = !DILocalVariable(name: "t", scope: !388, file: !3, line: 1714, type: !11)
!452 = !{!"159"}
!453 = !DILocation(line: 1734, column: 22, scope: !388)
!454 = !{!"160"}
!455 = !DILocation(line: 1734, column: 20, scope: !388)
!456 = !{!"161"}
!457 = !DILocation(line: 1734, column: 2, scope: !388)
!458 = !{!"162"}
!459 = !DILocation(line: 1735, column: 8, scope: !388)
!460 = !{!"163"}
!461 = !DILocation(line: 1735, column: 6, scope: !388)
!462 = !{!"164"}
!463 = !{!"165"}
!464 = !DILocation(line: 1735, column: 17, scope: !388)
!465 = !{!"166"}
!466 = !DILocation(line: 1735, column: 15, scope: !388)
!467 = !{!"167"}
!468 = !{!"168"}
!469 = !DILocation(line: 1735, column: 13, scope: !388)
!470 = !{!"169"}
!471 = !DILocation(line: 1735, column: 26, scope: !388)
!472 = !{!"170"}
!473 = !DILocation(line: 1735, column: 24, scope: !388)
!474 = !{!"171"}
!475 = !{!"172"}
!476 = !DILocation(line: 1735, column: 22, scope: !388)
!477 = !{!"173"}
!478 = !DILocation(line: 1735, column: 35, scope: !388)
!479 = !{!"174"}
!480 = !DILocation(line: 1735, column: 33, scope: !388)
!481 = !{!"175"}
!482 = !{!"176"}
!483 = !DILocation(line: 1735, column: 31, scope: !388)
!484 = !{!"177"}
!485 = !DILocalVariable(name: "z", scope: !388, file: !3, line: 1715, type: !15)
!486 = !{!"178"}
!487 = !DILocation(line: 1736, column: 27, scope: !388)
!488 = !{!"179"}
!489 = !DILocation(line: 1736, column: 22, scope: !388)
!490 = !{!"180"}
!491 = !DILocation(line: 1736, column: 9, scope: !388)
!492 = !{!"181"}
!493 = !DILocation(line: 1736, column: 6, scope: !388)
!494 = !{!"182"}
!495 = !DILocalVariable(name: "s", scope: !388, file: !3, line: 1714, type: !11)
!496 = !{!"183"}
!497 = !DILocation(line: 1737, column: 2, scope: !388)
!498 = !{!"184"}
!499 = !DILocation(line: 1748, column: 12, scope: !388)
!500 = !{!"185"}
!501 = !DILocation(line: 1748, column: 10, scope: !388)
!502 = !{!"186"}
!503 = !DILocation(line: 1748, column: 16, scope: !388)
!504 = !{!"187"}
!505 = !DILocation(line: 1748, column: 20, scope: !388)
!506 = !{!"188"}
!507 = !DILocation(line: 1748, column: 2, scope: !388)
!508 = !{!"189"}
!509 = !DILocation(line: 1749, column: 2, scope: !388)
!510 = !{!"190"}
!511 = !DILocation(line: 1750, column: 11, scope: !388)
!512 = !{!"191"}
!513 = !DILocation(line: 1750, column: 7, scope: !388)
!514 = !{!"192"}
!515 = !DILocation(line: 1750, column: 4, scope: !388)
!516 = !{!"193"}
!517 = !{!"194"}
!518 = !DILocation(line: 1751, column: 2, scope: !388)
!519 = !{!"195"}
!520 = !{!"196"}
!521 = !DILocation(line: 1752, column: 1, scope: !388)
!522 = !{!"197"}
!523 = distinct !DISubprogram(name: "point_decode", scope: !3, file: !3, line: 669, type: !524, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!524 = !DISubroutineType(types: !525)
!525 = !{!11, !526, !73}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!527 = !{!"198"}
!528 = !{!"199"}
!529 = !{!"200"}
!530 = !{!"201"}
!531 = !DILocalVariable(name: "P", arg: 1, scope: !523, file: !3, line: 669, type: !526)
!532 = !DILocation(line: 0, scope: !523)
!533 = !{!"202"}
!534 = !DILocalVariable(name: "buf", arg: 2, scope: !523, file: !3, line: 669, type: !73)
!535 = !{!"203"}
!536 = !DILocalVariable(name: "x", scope: !523, file: !3, line: 671, type: !59)
!537 = !DILocation(line: 671, column: 11, scope: !523)
!538 = !{!"204"}
!539 = !DILocalVariable(name: "y", scope: !523, file: !3, line: 671, type: !59)
!540 = !DILocation(line: 671, column: 17, scope: !523)
!541 = !{!"205"}
!542 = !DILocalVariable(name: "t", scope: !523, file: !3, line: 671, type: !59)
!543 = !DILocation(line: 671, column: 23, scope: !523)
!544 = !{!"206"}
!545 = !DILocalVariable(name: "x3", scope: !523, file: !3, line: 671, type: !59)
!546 = !DILocation(line: 671, column: 29, scope: !523)
!547 = !{!"207"}
!548 = !DILocation(line: 677, column: 9, scope: !523)
!549 = !{!"208"}
!550 = !{!"209"}
!551 = !{!"210"}
!552 = !DILocation(line: 677, column: 6, scope: !523)
!553 = !{!"211"}
!554 = !DILocalVariable(name: "r", scope: !523, file: !3, line: 672, type: !11)
!555 = !{!"212"}
!556 = !DILocation(line: 683, column: 24, scope: !523)
!557 = !{!"213"}
!558 = !DILocation(line: 683, column: 9, scope: !523)
!559 = !{!"214"}
!560 = !DILocation(line: 683, column: 2, scope: !523)
!561 = !{!"215"}
!562 = !DILocation(line: 683, column: 7, scope: !523)
!563 = !{!"216"}
!564 = !DILocation(line: 684, column: 24, scope: !523)
!565 = !{!"217"}
!566 = !DILocation(line: 684, column: 9, scope: !523)
!567 = !{!"218"}
!568 = !DILocation(line: 684, column: 2, scope: !523)
!569 = !{!"219"}
!570 = !DILocation(line: 684, column: 7, scope: !523)
!571 = !{!"220"}
!572 = !DILocation(line: 685, column: 24, scope: !523)
!573 = !{!"221"}
!574 = !DILocation(line: 685, column: 9, scope: !523)
!575 = !{!"222"}
!576 = !DILocation(line: 685, column: 2, scope: !523)
!577 = !{!"223"}
!578 = !DILocation(line: 685, column: 7, scope: !523)
!579 = !{!"224"}
!580 = !DILocation(line: 686, column: 24, scope: !523)
!581 = !{!"225"}
!582 = !DILocation(line: 686, column: 9, scope: !523)
!583 = !{!"226"}
!584 = !DILocation(line: 686, column: 2, scope: !523)
!585 = !{!"227"}
!586 = !DILocation(line: 686, column: 7, scope: !523)
!587 = !{!"228"}
!588 = !DILocation(line: 687, column: 24, scope: !523)
!589 = !{!"229"}
!590 = !DILocation(line: 687, column: 9, scope: !523)
!591 = !{!"230"}
!592 = !DILocation(line: 687, column: 2, scope: !523)
!593 = !{!"231"}
!594 = !DILocation(line: 687, column: 7, scope: !523)
!595 = !{!"232"}
!596 = !DILocation(line: 688, column: 24, scope: !523)
!597 = !{!"233"}
!598 = !DILocation(line: 688, column: 9, scope: !523)
!599 = !{!"234"}
!600 = !DILocation(line: 688, column: 2, scope: !523)
!601 = !{!"235"}
!602 = !DILocation(line: 688, column: 7, scope: !523)
!603 = !{!"236"}
!604 = !DILocation(line: 689, column: 24, scope: !523)
!605 = !{!"237"}
!606 = !DILocation(line: 689, column: 9, scope: !523)
!607 = !{!"238"}
!608 = !DILocation(line: 689, column: 2, scope: !523)
!609 = !{!"239"}
!610 = !DILocation(line: 689, column: 7, scope: !523)
!611 = !{!"240"}
!612 = !DILocation(line: 690, column: 24, scope: !523)
!613 = !{!"241"}
!614 = !DILocation(line: 690, column: 9, scope: !523)
!615 = !{!"242"}
!616 = !DILocation(line: 690, column: 2, scope: !523)
!617 = !{!"243"}
!618 = !DILocation(line: 690, column: 7, scope: !523)
!619 = !{!"244"}
!620 = !DILocation(line: 691, column: 15, scope: !523)
!621 = !{!"245"}
!622 = !DILocation(line: 691, column: 18, scope: !523)
!623 = !{!"246"}
!624 = !DILocation(line: 691, column: 2, scope: !523)
!625 = !{!"247"}
!626 = !DILocation(line: 692, column: 15, scope: !523)
!627 = !{!"248"}
!628 = !DILocation(line: 692, column: 18, scope: !523)
!629 = !{!"249"}
!630 = !DILocation(line: 692, column: 2, scope: !523)
!631 = !{!"250"}
!632 = !DILocation(line: 700, column: 19, scope: !523)
!633 = !{!"251"}
!634 = !DILocation(line: 700, column: 22, scope: !523)
!635 = !{!"252"}
!636 = !DILocation(line: 700, column: 2, scope: !523)
!637 = !{!"253"}
!638 = !DILocation(line: 701, column: 19, scope: !523)
!639 = !{!"254"}
!640 = !DILocation(line: 701, column: 23, scope: !523)
!641 = !{!"255"}
!642 = !DILocation(line: 701, column: 2, scope: !523)
!643 = !{!"256"}
!644 = !DILocation(line: 702, column: 16, scope: !523)
!645 = !{!"257"}
!646 = !DILocation(line: 702, column: 20, scope: !523)
!647 = !{!"258"}
!648 = !DILocation(line: 702, column: 24, scope: !523)
!649 = !{!"259"}
!650 = !DILocation(line: 702, column: 2, scope: !523)
!651 = !{!"260"}
!652 = !DILocation(line: 703, column: 11, scope: !523)
!653 = !{!"261"}
!654 = !DILocation(line: 703, column: 14, scope: !523)
!655 = !{!"262"}
!656 = !DILocation(line: 703, column: 17, scope: !523)
!657 = !{!"263"}
!658 = !DILocation(line: 703, column: 2, scope: !523)
!659 = !{!"264"}
!660 = !DILocation(line: 704, column: 11, scope: !523)
!661 = !{!"265"}
!662 = !DILocation(line: 704, column: 14, scope: !523)
!663 = !{!"266"}
!664 = !DILocation(line: 704, column: 17, scope: !523)
!665 = !{!"267"}
!666 = !DILocation(line: 704, column: 2, scope: !523)
!667 = !{!"268"}
!668 = !DILocation(line: 705, column: 11, scope: !523)
!669 = !{!"269"}
!670 = !DILocation(line: 705, column: 14, scope: !523)
!671 = !{!"270"}
!672 = !DILocation(line: 705, column: 17, scope: !523)
!673 = !{!"271"}
!674 = !DILocation(line: 705, column: 2, scope: !523)
!675 = !{!"272"}
!676 = !DILocation(line: 706, column: 11, scope: !523)
!677 = !{!"273"}
!678 = !DILocation(line: 706, column: 14, scope: !523)
!679 = !{!"274"}
!680 = !DILocation(line: 706, column: 17, scope: !523)
!681 = !{!"275"}
!682 = !DILocation(line: 706, column: 2, scope: !523)
!683 = !{!"276"}
!684 = !DILocation(line: 707, column: 11, scope: !523)
!685 = !{!"277"}
!686 = !DILocation(line: 707, column: 14, scope: !523)
!687 = !{!"278"}
!688 = !{!"279"}
!689 = !DILocation(line: 707, column: 2, scope: !523)
!690 = !{!"280"}
!691 = !DILocation(line: 708, column: 20, scope: !523)
!692 = !{!"281"}
!693 = !DILocation(line: 708, column: 2, scope: !523)
!694 = !{!"282"}
!695 = !DILocation(line: 709, column: 7, scope: !523)
!696 = !{!"283"}
!697 = !{!"284"}
!698 = !DILocation(line: 709, column: 14, scope: !523)
!699 = !{!"285"}
!700 = !{!"286"}
!701 = !DILocation(line: 709, column: 12, scope: !523)
!702 = !{!"287"}
!703 = !DILocation(line: 709, column: 21, scope: !523)
!704 = !{!"288"}
!705 = !{!"289"}
!706 = !DILocation(line: 709, column: 19, scope: !523)
!707 = !{!"290"}
!708 = !DILocation(line: 709, column: 28, scope: !523)
!709 = !{!"291"}
!710 = !{!"292"}
!711 = !DILocation(line: 709, column: 26, scope: !523)
!712 = !{!"293"}
!713 = !DILocalVariable(name: "tt", scope: !523, file: !3, line: 671, type: !15)
!714 = !{!"294"}
!715 = !DILocation(line: 710, column: 30, scope: !523)
!716 = !{!"295"}
!717 = !DILocation(line: 710, column: 24, scope: !523)
!718 = !{!"296"}
!719 = !DILocation(line: 710, column: 10, scope: !523)
!720 = !{!"297"}
!721 = !DILocation(line: 710, column: 7, scope: !523)
!722 = !{!"298"}
!723 = !DILocation(line: 710, column: 4, scope: !523)
!724 = !{!"299"}
!725 = !{!"300"}
!726 = !DILocation(line: 716, column: 12, scope: !523)
!727 = !{!"301"}
!728 = !DILocation(line: 716, column: 2, scope: !523)
!729 = !{!"302"}
!730 = !{!"303"}
!731 = !{!"304"}
!732 = !{!"305"}
!733 = !{!"306"}
!734 = !DILocation(line: 717, column: 12, scope: !523)
!735 = !{!"307"}
!736 = !DILocation(line: 717, column: 2, scope: !523)
!737 = !{!"308"}
!738 = !{!"309"}
!739 = !{!"310"}
!740 = !{!"311"}
!741 = !{!"312"}
!742 = !DILocation(line: 718, column: 12, scope: !523)
!743 = !{!"313"}
!744 = !DILocation(line: 718, column: 2, scope: !523)
!745 = !{!"314"}
!746 = !{!"315"}
!747 = !{!"316"}
!748 = !DILocation(line: 719, column: 2, scope: !523)
!749 = !{!"317"}
!750 = distinct !DISubprogram(name: "p256_mul", scope: !3, file: !3, line: 1471, type: !751, scopeLine: 1472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !526, !73, !75}
!753 = !{!"318"}
!754 = !DILocalVariable(name: "P", arg: 1, scope: !750, file: !3, line: 1471, type: !526)
!755 = !DILocation(line: 0, scope: !750)
!756 = !{!"319"}
!757 = !DILocalVariable(name: "k", arg: 2, scope: !750, file: !3, line: 1471, type: !73)
!758 = !{!"320"}
!759 = !DILocalVariable(name: "klen", arg: 3, scope: !750, file: !3, line: 1471, type: !75)
!760 = !{!"321"}
!761 = !DILocalVariable(name: "window", scope: !750, file: !3, line: 1476, type: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !3, line: 1473, size: 11520, elements: !763)
!763 = !{!764, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aff", scope: !762, file: !3, line: 1474, baseType: !765, size: 7680)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 7680, elements: !61)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "jac", scope: !762, file: !3, line: 1475, baseType: !767, size: 11520)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 11520, elements: !61)
!768 = !DILocation(line: 1476, column: 4, scope: !750)
!769 = !{!"322"}
!770 = !DILocation(line: 1482, column: 9, scope: !750)
!771 = !{!"323"}
!772 = !DILocation(line: 1482, column: 2, scope: !750)
!773 = !{!"324"}
!774 = !DILocation(line: 1482, column: 18, scope: !750)
!775 = !{!"325"}
!776 = !{!"326"}
!777 = !{!"327"}
!778 = !DILocalVariable(name: "i", scope: !750, file: !3, line: 1477, type: !10)
!779 = !{!"328"}
!780 = !DILocation(line: 1483, column: 7, scope: !781)
!781 = distinct !DILexicalBlock(scope: !750, file: !3, line: 1483, column: 2)
!782 = !{!"329"}
!783 = !DILocation(line: 0, scope: !781)
!784 = !{!"330"}
!785 = !{!"331"}
!786 = !DILocation(line: 1483, column: 16, scope: !787)
!787 = distinct !DILexicalBlock(scope: !781, file: !3, line: 1483, column: 2)
!788 = !{!"332"}
!789 = !DILocation(line: 1483, column: 2, scope: !781)
!790 = !{!"333"}
!791 = !DILocation(line: 1484, column: 10, scope: !792)
!792 = distinct !DILexicalBlock(scope: !787, file: !3, line: 1483, column: 28)
!793 = !{!"334"}
!794 = !DILocation(line: 1484, column: 16, scope: !792)
!795 = !{!"335"}
!796 = !DILocation(line: 1484, column: 3, scope: !792)
!797 = !{!"336"}
!798 = !{!"337"}
!799 = !DILocation(line: 1484, column: 30, scope: !792)
!800 = !{!"338"}
!801 = !DILocation(line: 1484, column: 37, scope: !792)
!802 = !{!"339"}
!803 = !DILocation(line: 1484, column: 43, scope: !792)
!804 = !{!"340"}
!805 = !DILocation(line: 1484, column: 23, scope: !792)
!806 = !{!"341"}
!807 = !{!"342"}
!808 = !{!"343"}
!809 = !{!"344"}
!810 = !{!"345"}
!811 = !DILocation(line: 1485, column: 10, scope: !812)
!812 = distinct !DILexicalBlock(scope: !792, file: !3, line: 1485, column: 7)
!813 = !{!"346"}
!814 = !DILocation(line: 1485, column: 15, scope: !812)
!815 = !{!"347"}
!816 = !DILocation(line: 1485, column: 7, scope: !792)
!817 = !{!"348"}
!818 = !DILocation(line: 1486, column: 24, scope: !819)
!819 = distinct !DILexicalBlock(scope: !812, file: !3, line: 1485, column: 21)
!820 = !{!"349"}
!821 = !DILocation(line: 1486, column: 30, scope: !819)
!822 = !{!"350"}
!823 = !DILocation(line: 1486, column: 17, scope: !819)
!824 = !{!"351"}
!825 = !{!"352"}
!826 = !DILocation(line: 1486, column: 4, scope: !819)
!827 = !{!"353"}
!828 = !DILocation(line: 1487, column: 3, scope: !819)
!829 = !{!"354"}
!830 = !DILocation(line: 1488, column: 21, scope: !831)
!831 = distinct !DILexicalBlock(scope: !812, file: !3, line: 1487, column: 10)
!832 = !{!"355"}
!833 = !DILocation(line: 1488, column: 27, scope: !831)
!834 = !{!"356"}
!835 = !DILocation(line: 1488, column: 14, scope: !831)
!836 = !{!"357"}
!837 = !{!"358"}
!838 = !DILocation(line: 1488, column: 41, scope: !831)
!839 = !{!"359"}
!840 = !DILocation(line: 1488, column: 47, scope: !831)
!841 = !{!"360"}
!842 = !DILocation(line: 1488, column: 34, scope: !831)
!843 = !{!"361"}
!844 = !{!"362"}
!845 = !DILocation(line: 1488, column: 4, scope: !831)
!846 = !{!"363"}
!847 = !{!"364"}
!848 = !DILocation(line: 1490, column: 2, scope: !792)
!849 = !{!"365"}
!850 = !DILocation(line: 1483, column: 24, scope: !787)
!851 = !{!"366"}
!852 = !{!"367"}
!853 = !DILocation(line: 1483, column: 2, scope: !787)
!854 = distinct !{!854, !789, !855, !260}
!855 = !DILocation(line: 1490, column: 2, scope: !781)
!856 = !{!"368"}
!857 = !DILocation(line: 1496, column: 26, scope: !750)
!858 = !{!"369"}
!859 = !DILocation(line: 1496, column: 19, scope: !750)
!860 = !{!"370"}
!861 = !DILocation(line: 1496, column: 38, scope: !750)
!862 = !{!"371"}
!863 = !DILocation(line: 1496, column: 31, scope: !750)
!864 = !{!"372"}
!865 = !DILocation(line: 1496, column: 2, scope: !750)
!866 = !{!"373"}
!867 = !DILocation(line: 1501, column: 28, scope: !750)
!868 = !{!"374"}
!869 = !DILocation(line: 1501, column: 21, scope: !750)
!870 = !{!"375"}
!871 = !DILocation(line: 1501, column: 2, scope: !750)
!872 = !{!"376"}
!873 = !DILocation(line: 1502, column: 1, scope: !750)
!874 = !{!"377"}
!875 = distinct !DISubprogram(name: "p256_mulgen", scope: !3, file: !3, line: 1611, type: !751, scopeLine: 1612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!876 = !DILocalVariable(name: "P", arg: 1, scope: !875, file: !3, line: 1611, type: !526)
!877 = !DILocation(line: 0, scope: !875)
!878 = !{!"378"}
!879 = !DILocalVariable(name: "k", arg: 2, scope: !875, file: !3, line: 1611, type: !73)
!880 = !{!"379"}
!881 = !DILocalVariable(name: "klen", arg: 3, scope: !875, file: !3, line: 1611, type: !75)
!882 = !{!"380"}
!883 = !{!"381"}
!884 = !DILocation(line: 1613, column: 2, scope: !875)
!885 = !{!"382"}
!886 = !DILocation(line: 1614, column: 1, scope: !875)
!887 = !{!"383"}
!888 = distinct !DISubprogram(name: "p256_add", scope: !3, file: !3, line: 884, type: !889, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!889 = !DISubroutineType(types: !890)
!890 = !{!11, !526, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!893 = !{!"384"}
!894 = !{!"385"}
!895 = !{!"386"}
!896 = !{!"387"}
!897 = !{!"388"}
!898 = !{!"389"}
!899 = !{!"390"}
!900 = !DILocalVariable(name: "P1", arg: 1, scope: !888, file: !3, line: 884, type: !526)
!901 = !DILocation(line: 0, scope: !888)
!902 = !{!"391"}
!903 = !DILocalVariable(name: "P2", arg: 2, scope: !888, file: !3, line: 884, type: !891)
!904 = !{!"392"}
!905 = !DILocalVariable(name: "t1", scope: !888, file: !3, line: 899, type: !59)
!906 = !DILocation(line: 899, column: 11, scope: !888)
!907 = !{!"393"}
!908 = !DILocalVariable(name: "t2", scope: !888, file: !3, line: 899, type: !59)
!909 = !DILocation(line: 899, column: 18, scope: !888)
!910 = !{!"394"}
!911 = !DILocalVariable(name: "t3", scope: !888, file: !3, line: 899, type: !59)
!912 = !DILocation(line: 899, column: 25, scope: !888)
!913 = !{!"395"}
!914 = !DILocalVariable(name: "t4", scope: !888, file: !3, line: 899, type: !59)
!915 = !DILocation(line: 899, column: 32, scope: !888)
!916 = !{!"396"}
!917 = !DILocalVariable(name: "t5", scope: !888, file: !3, line: 899, type: !59)
!918 = !DILocation(line: 899, column: 39, scope: !888)
!919 = !{!"397"}
!920 = !DILocalVariable(name: "t6", scope: !888, file: !3, line: 899, type: !59)
!921 = !DILocation(line: 899, column: 46, scope: !888)
!922 = !{!"398"}
!923 = !DILocalVariable(name: "t7", scope: !888, file: !3, line: 899, type: !59)
!924 = !DILocation(line: 899, column: 53, scope: !888)
!925 = !{!"399"}
!926 = !DILocation(line: 905, column: 19, scope: !888)
!927 = !{!"400"}
!928 = !DILocation(line: 905, column: 27, scope: !888)
!929 = !{!"401"}
!930 = !DILocation(line: 905, column: 23, scope: !888)
!931 = !{!"402"}
!932 = !DILocation(line: 905, column: 2, scope: !888)
!933 = !{!"403"}
!934 = !DILocation(line: 906, column: 16, scope: !888)
!935 = !{!"404"}
!936 = !DILocation(line: 906, column: 24, scope: !888)
!937 = !{!"405"}
!938 = !DILocation(line: 906, column: 20, scope: !888)
!939 = !{!"406"}
!940 = !DILocation(line: 906, column: 27, scope: !888)
!941 = !{!"407"}
!942 = !DILocation(line: 906, column: 2, scope: !888)
!943 = !{!"408"}
!944 = !DILocation(line: 907, column: 16, scope: !888)
!945 = !{!"409"}
!946 = !DILocation(line: 907, column: 24, scope: !888)
!947 = !{!"410"}
!948 = !DILocation(line: 907, column: 20, scope: !888)
!949 = !{!"411"}
!950 = !DILocation(line: 907, column: 27, scope: !888)
!951 = !{!"412"}
!952 = !DILocation(line: 907, column: 2, scope: !888)
!953 = !{!"413"}
!954 = !DILocation(line: 908, column: 16, scope: !888)
!955 = !{!"414"}
!956 = !DILocation(line: 908, column: 24, scope: !888)
!957 = !{!"415"}
!958 = !DILocation(line: 908, column: 20, scope: !888)
!959 = !{!"416"}
!960 = !DILocation(line: 908, column: 27, scope: !888)
!961 = !{!"417"}
!962 = !DILocation(line: 908, column: 2, scope: !888)
!963 = !{!"418"}
!964 = !DILocation(line: 913, column: 19, scope: !888)
!965 = !{!"419"}
!966 = !DILocation(line: 913, column: 27, scope: !888)
!967 = !{!"420"}
!968 = !DILocation(line: 913, column: 23, scope: !888)
!969 = !{!"421"}
!970 = !DILocation(line: 913, column: 2, scope: !888)
!971 = !{!"422"}
!972 = !DILocation(line: 914, column: 16, scope: !888)
!973 = !{!"423"}
!974 = !DILocation(line: 914, column: 24, scope: !888)
!975 = !{!"424"}
!976 = !DILocation(line: 914, column: 20, scope: !888)
!977 = !{!"425"}
!978 = !DILocation(line: 914, column: 27, scope: !888)
!979 = !{!"426"}
!980 = !DILocation(line: 914, column: 2, scope: !888)
!981 = !{!"427"}
!982 = !DILocation(line: 915, column: 16, scope: !888)
!983 = !{!"428"}
!984 = !DILocation(line: 915, column: 24, scope: !888)
!985 = !{!"429"}
!986 = !DILocation(line: 915, column: 20, scope: !888)
!987 = !{!"430"}
!988 = !DILocation(line: 915, column: 27, scope: !888)
!989 = !{!"431"}
!990 = !DILocation(line: 915, column: 2, scope: !888)
!991 = !{!"432"}
!992 = !DILocation(line: 916, column: 16, scope: !888)
!993 = !{!"433"}
!994 = !DILocation(line: 916, column: 24, scope: !888)
!995 = !{!"434"}
!996 = !DILocation(line: 916, column: 20, scope: !888)
!997 = !{!"435"}
!998 = !DILocation(line: 916, column: 27, scope: !888)
!999 = !{!"436"}
!1000 = !DILocation(line: 916, column: 2, scope: !888)
!1001 = !{!"437"}
!1002 = !DILocation(line: 923, column: 11, scope: !888)
!1003 = !{!"438"}
!1004 = !DILocation(line: 923, column: 15, scope: !888)
!1005 = !{!"439"}
!1006 = !DILocation(line: 923, column: 19, scope: !888)
!1007 = !{!"440"}
!1008 = !DILocation(line: 923, column: 2, scope: !888)
!1009 = !{!"441"}
!1010 = !DILocation(line: 924, column: 11, scope: !888)
!1011 = !{!"442"}
!1012 = !DILocation(line: 924, column: 15, scope: !888)
!1013 = !{!"443"}
!1014 = !DILocation(line: 924, column: 19, scope: !888)
!1015 = !{!"444"}
!1016 = !DILocation(line: 924, column: 2, scope: !888)
!1017 = !{!"445"}
!1018 = !DILocation(line: 925, column: 20, scope: !888)
!1019 = !{!"446"}
!1020 = !DILocation(line: 925, column: 2, scope: !888)
!1021 = !{!"447"}
!1022 = !DILocation(line: 926, column: 7, scope: !888)
!1023 = !{!"448"}
!1024 = !{!"449"}
!1025 = !DILocation(line: 926, column: 15, scope: !888)
!1026 = !{!"450"}
!1027 = !{!"451"}
!1028 = !DILocation(line: 926, column: 13, scope: !888)
!1029 = !{!"452"}
!1030 = !DILocation(line: 926, column: 23, scope: !888)
!1031 = !{!"453"}
!1032 = !{!"454"}
!1033 = !DILocation(line: 926, column: 21, scope: !888)
!1034 = !{!"455"}
!1035 = !DILocation(line: 926, column: 31, scope: !888)
!1036 = !{!"456"}
!1037 = !{!"457"}
!1038 = !DILocation(line: 926, column: 29, scope: !888)
!1039 = !{!"458"}
!1040 = !DILocalVariable(name: "tt", scope: !888, file: !3, line: 899, type: !15)
!1041 = !{!"459"}
!1042 = !DILocation(line: 927, column: 28, scope: !888)
!1043 = !{!"460"}
!1044 = !DILocation(line: 927, column: 22, scope: !888)
!1045 = !{!"461"}
!1046 = !DILocation(line: 927, column: 8, scope: !888)
!1047 = !{!"462"}
!1048 = !DILocalVariable(name: "ret", scope: !888, file: !3, line: 900, type: !11)
!1049 = !{!"463"}
!1050 = !DILocation(line: 928, column: 15, scope: !888)
!1051 = !{!"464"}
!1052 = !DILocation(line: 928, column: 13, scope: !888)
!1053 = !{!"465"}
!1054 = !DILocation(line: 928, column: 21, scope: !888)
!1055 = !{!"466"}
!1056 = !{!"467"}
!1057 = !DILocation(line: 933, column: 19, scope: !888)
!1058 = !{!"468"}
!1059 = !DILocation(line: 933, column: 23, scope: !888)
!1060 = !{!"469"}
!1061 = !DILocation(line: 933, column: 2, scope: !888)
!1062 = !{!"470"}
!1063 = !DILocation(line: 934, column: 16, scope: !888)
!1064 = !{!"471"}
!1065 = !DILocation(line: 934, column: 20, scope: !888)
!1066 = !{!"472"}
!1067 = !DILocation(line: 934, column: 24, scope: !888)
!1068 = !{!"473"}
!1069 = !DILocation(line: 934, column: 2, scope: !888)
!1070 = !{!"474"}
!1071 = !DILocation(line: 935, column: 16, scope: !888)
!1072 = !{!"475"}
!1073 = !DILocation(line: 935, column: 20, scope: !888)
!1074 = !{!"476"}
!1075 = !DILocation(line: 935, column: 24, scope: !888)
!1076 = !{!"477"}
!1077 = !DILocation(line: 935, column: 2, scope: !888)
!1078 = !{!"478"}
!1079 = !DILocation(line: 940, column: 23, scope: !888)
!1080 = !{!"479"}
!1081 = !DILocation(line: 940, column: 19, scope: !888)
!1082 = !{!"480"}
!1083 = !DILocation(line: 940, column: 26, scope: !888)
!1084 = !{!"481"}
!1085 = !DILocation(line: 940, column: 2, scope: !888)
!1086 = !{!"482"}
!1087 = !DILocation(line: 941, column: 15, scope: !888)
!1088 = !{!"483"}
!1089 = !DILocation(line: 941, column: 11, scope: !888)
!1090 = !{!"484"}
!1091 = !DILocation(line: 941, column: 22, scope: !888)
!1092 = !{!"485"}
!1093 = !DILocation(line: 941, column: 18, scope: !888)
!1094 = !{!"486"}
!1095 = !DILocation(line: 941, column: 25, scope: !888)
!1096 = !{!"487"}
!1097 = !DILocation(line: 941, column: 2, scope: !888)
!1098 = !{!"488"}
!1099 = !DILocation(line: 942, column: 15, scope: !888)
!1100 = !{!"489"}
!1101 = !DILocation(line: 942, column: 11, scope: !888)
!1102 = !{!"490"}
!1103 = !DILocation(line: 942, column: 22, scope: !888)
!1104 = !{!"491"}
!1105 = !DILocation(line: 942, column: 18, scope: !888)
!1106 = !{!"492"}
!1107 = !DILocation(line: 942, column: 25, scope: !888)
!1108 = !{!"493"}
!1109 = !DILocation(line: 942, column: 2, scope: !888)
!1110 = !{!"494"}
!1111 = !DILocation(line: 943, column: 15, scope: !888)
!1112 = !{!"495"}
!1113 = !DILocation(line: 943, column: 11, scope: !888)
!1114 = !{!"496"}
!1115 = !DILocation(line: 943, column: 22, scope: !888)
!1116 = !{!"497"}
!1117 = !DILocation(line: 943, column: 18, scope: !888)
!1118 = !{!"498"}
!1119 = !DILocation(line: 943, column: 25, scope: !888)
!1120 = !{!"499"}
!1121 = !DILocation(line: 943, column: 2, scope: !888)
!1122 = !{!"500"}
!1123 = !DILocation(line: 948, column: 11, scope: !888)
!1124 = !{!"501"}
!1125 = !DILocation(line: 948, column: 15, scope: !888)
!1126 = !{!"502"}
!1127 = !DILocation(line: 948, column: 23, scope: !888)
!1128 = !{!"503"}
!1129 = !DILocation(line: 948, column: 19, scope: !888)
!1130 = !{!"504"}
!1131 = !DILocation(line: 948, column: 2, scope: !888)
!1132 = !{!"505"}
!1133 = !DILocation(line: 949, column: 20, scope: !888)
!1134 = !{!"506"}
!1135 = !DILocation(line: 949, column: 16, scope: !888)
!1136 = !{!"507"}
!1137 = !DILocation(line: 949, column: 23, scope: !888)
!1138 = !{!"508"}
!1139 = !DILocation(line: 949, column: 27, scope: !888)
!1140 = !{!"509"}
!1141 = !DILocation(line: 949, column: 2, scope: !888)
!1142 = !{!"510"}
!1143 = !DILocation(line: 950, column: 16, scope: !888)
!1144 = !{!"511"}
!1145 = !DILocation(line: 950, column: 20, scope: !888)
!1146 = !{!"512"}
!1147 = !DILocation(line: 950, column: 24, scope: !888)
!1148 = !{!"513"}
!1149 = !DILocation(line: 950, column: 2, scope: !888)
!1150 = !{!"514"}
!1151 = !DILocation(line: 951, column: 15, scope: !888)
!1152 = !{!"515"}
!1153 = !DILocation(line: 951, column: 11, scope: !888)
!1154 = !{!"516"}
!1155 = !DILocation(line: 951, column: 22, scope: !888)
!1156 = !{!"517"}
!1157 = !DILocation(line: 951, column: 18, scope: !888)
!1158 = !{!"518"}
!1159 = !DILocation(line: 951, column: 25, scope: !888)
!1160 = !{!"519"}
!1161 = !DILocation(line: 951, column: 2, scope: !888)
!1162 = !{!"520"}
!1163 = !DILocation(line: 956, column: 16, scope: !888)
!1164 = !{!"521"}
!1165 = !DILocation(line: 956, column: 24, scope: !888)
!1166 = !{!"522"}
!1167 = !DILocation(line: 956, column: 20, scope: !888)
!1168 = !{!"523"}
!1169 = !DILocation(line: 956, column: 31, scope: !888)
!1170 = !{!"524"}
!1171 = !DILocation(line: 956, column: 27, scope: !888)
!1172 = !{!"525"}
!1173 = !DILocation(line: 956, column: 2, scope: !888)
!1174 = !{!"526"}
!1175 = !DILocation(line: 957, column: 20, scope: !888)
!1176 = !{!"527"}
!1177 = !DILocation(line: 957, column: 16, scope: !888)
!1178 = !{!"528"}
!1179 = !DILocation(line: 957, column: 23, scope: !888)
!1180 = !{!"529"}
!1181 = !DILocation(line: 957, column: 27, scope: !888)
!1182 = !{!"530"}
!1183 = !DILocation(line: 957, column: 2, scope: !888)
!1184 = !{!"531"}
!1185 = !DILocation(line: 959, column: 2, scope: !888)
!1186 = !{!"532"}
!1187 = distinct !DISubprogram(name: "f256_final_reduce", scope: !3, file: !3, line: 596, type: !1188, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !38}
!1190 = !DILocalVariable(name: "a", arg: 1, scope: !1187, file: !3, line: 596, type: !38)
!1191 = !DILocation(line: 0, scope: !1187)
!1192 = !{!"533"}
!1193 = !DILocation(line: 608, column: 25, scope: !1187)
!1194 = !{!"534"}
!1195 = !{!"535"}
!1196 = !DILocation(line: 608, column: 6, scope: !1187)
!1197 = !{!"536"}
!1198 = !DILocation(line: 608, column: 30, scope: !1187)
!1199 = !{!"537"}
!1200 = !DILocalVariable(name: "z", scope: !1187, file: !3, line: 601, type: !18)
!1201 = !{!"538"}
!1202 = !DILocation(line: 609, column: 7, scope: !1187)
!1203 = !{!"539"}
!1204 = !DILocalVariable(name: "t0", scope: !1187, file: !3, line: 600, type: !15)
!1205 = !{!"540"}
!1206 = !DILocation(line: 610, column: 25, scope: !1187)
!1207 = !{!"541"}
!1208 = !{!"542"}
!1209 = !DILocation(line: 610, column: 6, scope: !1187)
!1210 = !{!"543"}
!1211 = !DILocation(line: 610, column: 35, scope: !1187)
!1212 = !{!"544"}
!1213 = !DILocation(line: 610, column: 30, scope: !1187)
!1214 = !{!"545"}
!1215 = !DILocation(line: 610, column: 42, scope: !1187)
!1216 = !{!"546"}
!1217 = !{!"547"}
!1218 = !DILocation(line: 611, column: 7, scope: !1187)
!1219 = !{!"548"}
!1220 = !DILocalVariable(name: "t1", scope: !1187, file: !3, line: 600, type: !15)
!1221 = !{!"549"}
!1222 = !DILocation(line: 612, column: 25, scope: !1187)
!1223 = !{!"550"}
!1224 = !{!"551"}
!1225 = !DILocation(line: 612, column: 6, scope: !1187)
!1226 = !{!"552"}
!1227 = !DILocation(line: 612, column: 35, scope: !1187)
!1228 = !{!"553"}
!1229 = !DILocation(line: 612, column: 30, scope: !1187)
!1230 = !{!"554"}
!1231 = !{!"555"}
!1232 = !DILocation(line: 613, column: 7, scope: !1187)
!1233 = !{!"556"}
!1234 = !DILocalVariable(name: "t2", scope: !1187, file: !3, line: 600, type: !15)
!1235 = !{!"557"}
!1236 = !DILocation(line: 614, column: 25, scope: !1187)
!1237 = !{!"558"}
!1238 = !{!"559"}
!1239 = !DILocation(line: 614, column: 6, scope: !1187)
!1240 = !{!"560"}
!1241 = !DILocation(line: 614, column: 35, scope: !1187)
!1242 = !{!"561"}
!1243 = !DILocation(line: 614, column: 30, scope: !1187)
!1244 = !{!"562"}
!1245 = !DILocation(line: 614, column: 43, scope: !1187)
!1246 = !{!"563"}
!1247 = !{!"564"}
!1248 = !DILocation(line: 615, column: 7, scope: !1187)
!1249 = !{!"565"}
!1250 = !DILocalVariable(name: "t3", scope: !1187, file: !3, line: 600, type: !15)
!1251 = !{!"566"}
!1252 = !DILocation(line: 616, column: 21, scope: !1187)
!1253 = !{!"567"}
!1254 = !DILocation(line: 616, column: 8, scope: !1187)
!1255 = !{!"568"}
!1256 = !DILocation(line: 616, column: 7, scope: !1187)
!1257 = !{!"569"}
!1258 = !DILocalVariable(name: "cc", scope: !1187, file: !3, line: 600, type: !15)
!1259 = !{!"570"}
!1260 = !DILocation(line: 618, column: 16, scope: !1187)
!1261 = !{!"571"}
!1262 = !{!"572"}
!1263 = !DILocation(line: 618, column: 21, scope: !1187)
!1264 = !{!"573"}
!1265 = !DILocation(line: 618, column: 13, scope: !1187)
!1266 = !{!"574"}
!1267 = !DILocation(line: 618, column: 2, scope: !1187)
!1268 = !{!"575"}
!1269 = !DILocation(line: 618, column: 7, scope: !1187)
!1270 = !{!"576"}
!1271 = !{!"577"}
!1272 = !{!"578"}
!1273 = !DILocation(line: 619, column: 16, scope: !1187)
!1274 = !{!"579"}
!1275 = !{!"580"}
!1276 = !DILocation(line: 619, column: 21, scope: !1187)
!1277 = !{!"581"}
!1278 = !DILocation(line: 619, column: 13, scope: !1187)
!1279 = !{!"582"}
!1280 = !DILocation(line: 619, column: 2, scope: !1187)
!1281 = !{!"583"}
!1282 = !DILocation(line: 619, column: 7, scope: !1187)
!1283 = !{!"584"}
!1284 = !{!"585"}
!1285 = !{!"586"}
!1286 = !DILocation(line: 620, column: 16, scope: !1187)
!1287 = !{!"587"}
!1288 = !{!"588"}
!1289 = !DILocation(line: 620, column: 21, scope: !1187)
!1290 = !{!"589"}
!1291 = !DILocation(line: 620, column: 13, scope: !1187)
!1292 = !{!"590"}
!1293 = !DILocation(line: 620, column: 2, scope: !1187)
!1294 = !{!"591"}
!1295 = !DILocation(line: 620, column: 7, scope: !1187)
!1296 = !{!"592"}
!1297 = !{!"593"}
!1298 = !{!"594"}
!1299 = !DILocation(line: 621, column: 16, scope: !1187)
!1300 = !{!"595"}
!1301 = !{!"596"}
!1302 = !DILocation(line: 621, column: 21, scope: !1187)
!1303 = !{!"597"}
!1304 = !DILocation(line: 621, column: 13, scope: !1187)
!1305 = !{!"598"}
!1306 = !DILocation(line: 621, column: 2, scope: !1187)
!1307 = !{!"599"}
!1308 = !DILocation(line: 621, column: 7, scope: !1187)
!1309 = !{!"600"}
!1310 = !{!"601"}
!1311 = !{!"602"}
!1312 = !DILocation(line: 640, column: 1, scope: !1187)
!1313 = !{!"603"}
!1314 = distinct !DISubprogram(name: "EQ", scope: !265, file: !265, line: 779, type: !1315, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!11, !11, !11}
!1317 = !DILocalVariable(name: "x", arg: 1, scope: !1314, file: !265, line: 779, type: !11)
!1318 = !DILocation(line: 0, scope: !1314)
!1319 = !{!"604"}
!1320 = !DILocalVariable(name: "y", arg: 2, scope: !1314, file: !265, line: 779, type: !11)
!1321 = !{!"605"}
!1322 = !DILocation(line: 783, column: 8, scope: !1314)
!1323 = !{!"606"}
!1324 = !DILocalVariable(name: "q", scope: !1314, file: !265, line: 781, type: !11)
!1325 = !{!"607"}
!1326 = !DILocation(line: 784, column: 18, scope: !1314)
!1327 = !{!"608"}
!1328 = !DILocation(line: 784, column: 16, scope: !1314)
!1329 = !{!"609"}
!1330 = !DILocation(line: 784, column: 22, scope: !1314)
!1331 = !{!"610"}
!1332 = !DILocation(line: 784, column: 9, scope: !1314)
!1333 = !{!"611"}
!1334 = !DILocation(line: 784, column: 2, scope: !1314)
!1335 = !{!"612"}
!1336 = distinct !DISubprogram(name: "p256_double", scope: !3, file: !3, line: 781, type: !1337, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{null, !526}
!1339 = !{!"613"}
!1340 = !{!"614"}
!1341 = !{!"615"}
!1342 = !{!"616"}
!1343 = !DILocalVariable(name: "P", arg: 1, scope: !1336, file: !3, line: 781, type: !526)
!1344 = !DILocation(line: 0, scope: !1336)
!1345 = !{!"617"}
!1346 = !DILocalVariable(name: "t1", scope: !1336, file: !3, line: 798, type: !59)
!1347 = !DILocation(line: 798, column: 11, scope: !1336)
!1348 = !{!"618"}
!1349 = !DILocalVariable(name: "t2", scope: !1336, file: !3, line: 798, type: !59)
!1350 = !DILocation(line: 798, column: 18, scope: !1336)
!1351 = !{!"619"}
!1352 = !DILocalVariable(name: "t3", scope: !1336, file: !3, line: 798, type: !59)
!1353 = !DILocation(line: 798, column: 25, scope: !1336)
!1354 = !{!"620"}
!1355 = !DILocalVariable(name: "t4", scope: !1336, file: !3, line: 798, type: !59)
!1356 = !DILocation(line: 798, column: 32, scope: !1336)
!1357 = !{!"621"}
!1358 = !DILocation(line: 803, column: 19, scope: !1336)
!1359 = !{!"622"}
!1360 = !DILocation(line: 803, column: 26, scope: !1336)
!1361 = !{!"623"}
!1362 = !DILocation(line: 803, column: 23, scope: !1336)
!1363 = !{!"624"}
!1364 = !DILocation(line: 803, column: 2, scope: !1336)
!1365 = !{!"625"}
!1366 = !DILocation(line: 808, column: 11, scope: !1336)
!1367 = !{!"626"}
!1368 = !DILocation(line: 808, column: 18, scope: !1336)
!1369 = !{!"627"}
!1370 = !DILocation(line: 808, column: 15, scope: !1336)
!1371 = !{!"628"}
!1372 = !DILocation(line: 808, column: 21, scope: !1336)
!1373 = !{!"629"}
!1374 = !DILocation(line: 808, column: 2, scope: !1336)
!1375 = !{!"630"}
!1376 = !DILocation(line: 809, column: 11, scope: !1336)
!1377 = !{!"631"}
!1378 = !DILocation(line: 809, column: 18, scope: !1336)
!1379 = !{!"632"}
!1380 = !DILocation(line: 809, column: 15, scope: !1336)
!1381 = !{!"633"}
!1382 = !DILocation(line: 809, column: 21, scope: !1336)
!1383 = !{!"634"}
!1384 = !DILocation(line: 809, column: 2, scope: !1336)
!1385 = !{!"635"}
!1386 = !DILocation(line: 814, column: 16, scope: !1336)
!1387 = !{!"636"}
!1388 = !DILocation(line: 814, column: 20, scope: !1336)
!1389 = !{!"637"}
!1390 = !DILocation(line: 814, column: 24, scope: !1336)
!1391 = !{!"638"}
!1392 = !DILocation(line: 814, column: 2, scope: !1336)
!1393 = !{!"639"}
!1394 = !DILocation(line: 815, column: 11, scope: !1336)
!1395 = !{!"640"}
!1396 = !DILocation(line: 815, column: 15, scope: !1336)
!1397 = !{!"641"}
!1398 = !DILocation(line: 815, column: 19, scope: !1336)
!1399 = !{!"642"}
!1400 = !DILocation(line: 815, column: 2, scope: !1336)
!1401 = !{!"643"}
!1402 = !DILocation(line: 816, column: 11, scope: !1336)
!1403 = !{!"644"}
!1404 = !DILocation(line: 816, column: 15, scope: !1336)
!1405 = !{!"645"}
!1406 = !DILocation(line: 816, column: 19, scope: !1336)
!1407 = !{!"646"}
!1408 = !DILocation(line: 816, column: 2, scope: !1336)
!1409 = !{!"647"}
!1410 = !DILocation(line: 821, column: 19, scope: !1336)
!1411 = !{!"648"}
!1412 = !DILocation(line: 821, column: 26, scope: !1336)
!1413 = !{!"649"}
!1414 = !DILocation(line: 821, column: 23, scope: !1336)
!1415 = !{!"650"}
!1416 = !DILocation(line: 821, column: 2, scope: !1336)
!1417 = !{!"651"}
!1418 = !DILocation(line: 822, column: 11, scope: !1336)
!1419 = !{!"652"}
!1420 = !DILocation(line: 822, column: 15, scope: !1336)
!1421 = !{!"653"}
!1422 = !DILocation(line: 822, column: 19, scope: !1336)
!1423 = !{!"654"}
!1424 = !DILocation(line: 822, column: 2, scope: !1336)
!1425 = !{!"655"}
!1426 = !DILocation(line: 823, column: 16, scope: !1336)
!1427 = !{!"656"}
!1428 = !DILocation(line: 823, column: 23, scope: !1336)
!1429 = !{!"657"}
!1430 = !DILocation(line: 823, column: 20, scope: !1336)
!1431 = !{!"658"}
!1432 = !DILocation(line: 823, column: 26, scope: !1336)
!1433 = !{!"659"}
!1434 = !DILocation(line: 823, column: 2, scope: !1336)
!1435 = !{!"660"}
!1436 = !DILocation(line: 824, column: 11, scope: !1336)
!1437 = !{!"661"}
!1438 = !DILocation(line: 824, column: 15, scope: !1336)
!1439 = !{!"662"}
!1440 = !DILocation(line: 824, column: 19, scope: !1336)
!1441 = !{!"663"}
!1442 = !DILocation(line: 824, column: 2, scope: !1336)
!1443 = !{!"664"}
!1444 = !DILocation(line: 829, column: 22, scope: !1336)
!1445 = !{!"665"}
!1446 = !DILocation(line: 829, column: 19, scope: !1336)
!1447 = !{!"666"}
!1448 = !DILocation(line: 829, column: 25, scope: !1336)
!1449 = !{!"667"}
!1450 = !DILocation(line: 829, column: 2, scope: !1336)
!1451 = !{!"668"}
!1452 = !DILocation(line: 830, column: 14, scope: !1336)
!1453 = !{!"669"}
!1454 = !DILocation(line: 830, column: 11, scope: !1336)
!1455 = !{!"670"}
!1456 = !DILocation(line: 830, column: 20, scope: !1336)
!1457 = !{!"671"}
!1458 = !DILocation(line: 830, column: 17, scope: !1336)
!1459 = !{!"672"}
!1460 = !DILocation(line: 830, column: 23, scope: !1336)
!1461 = !{!"673"}
!1462 = !DILocation(line: 830, column: 2, scope: !1336)
!1463 = !{!"674"}
!1464 = !DILocation(line: 831, column: 14, scope: !1336)
!1465 = !{!"675"}
!1466 = !DILocation(line: 831, column: 11, scope: !1336)
!1467 = !{!"676"}
!1468 = !DILocation(line: 831, column: 20, scope: !1336)
!1469 = !{!"677"}
!1470 = !DILocation(line: 831, column: 17, scope: !1336)
!1471 = !{!"678"}
!1472 = !DILocation(line: 831, column: 23, scope: !1336)
!1473 = !{!"679"}
!1474 = !DILocation(line: 831, column: 2, scope: !1336)
!1475 = !{!"680"}
!1476 = !DILocation(line: 836, column: 16, scope: !1336)
!1477 = !{!"681"}
!1478 = !DILocation(line: 836, column: 23, scope: !1336)
!1479 = !{!"682"}
!1480 = !DILocation(line: 836, column: 20, scope: !1336)
!1481 = !{!"683"}
!1482 = !DILocation(line: 836, column: 29, scope: !1336)
!1483 = !{!"684"}
!1484 = !DILocation(line: 836, column: 26, scope: !1336)
!1485 = !{!"685"}
!1486 = !DILocation(line: 836, column: 2, scope: !1336)
!1487 = !{!"686"}
!1488 = !DILocation(line: 837, column: 14, scope: !1336)
!1489 = !{!"687"}
!1490 = !DILocation(line: 837, column: 11, scope: !1336)
!1491 = !{!"688"}
!1492 = !DILocation(line: 837, column: 17, scope: !1336)
!1493 = !{!"689"}
!1494 = !DILocation(line: 837, column: 21, scope: !1336)
!1495 = !{!"690"}
!1496 = !DILocation(line: 837, column: 2, scope: !1336)
!1497 = !{!"691"}
!1498 = !DILocation(line: 843, column: 11, scope: !1336)
!1499 = !{!"692"}
!1500 = !DILocation(line: 843, column: 15, scope: !1336)
!1501 = !{!"693"}
!1502 = !DILocation(line: 843, column: 22, scope: !1336)
!1503 = !{!"694"}
!1504 = !DILocation(line: 843, column: 19, scope: !1336)
!1505 = !{!"695"}
!1506 = !DILocation(line: 843, column: 2, scope: !1336)
!1507 = !{!"696"}
!1508 = !DILocation(line: 844, column: 19, scope: !1336)
!1509 = !{!"697"}
!1510 = !DILocation(line: 844, column: 16, scope: !1336)
!1511 = !{!"698"}
!1512 = !DILocation(line: 844, column: 22, scope: !1336)
!1513 = !{!"699"}
!1514 = !DILocation(line: 844, column: 26, scope: !1336)
!1515 = !{!"700"}
!1516 = !DILocation(line: 844, column: 2, scope: !1336)
!1517 = !{!"701"}
!1518 = !DILocation(line: 845, column: 19, scope: !1336)
!1519 = !{!"702"}
!1520 = !DILocation(line: 845, column: 23, scope: !1336)
!1521 = !{!"703"}
!1522 = !DILocation(line: 845, column: 2, scope: !1336)
!1523 = !{!"704"}
!1524 = !DILocation(line: 846, column: 11, scope: !1336)
!1525 = !{!"705"}
!1526 = !DILocation(line: 846, column: 15, scope: !1336)
!1527 = !{!"706"}
!1528 = !DILocation(line: 846, column: 19, scope: !1336)
!1529 = !{!"707"}
!1530 = !DILocation(line: 846, column: 2, scope: !1336)
!1531 = !{!"708"}
!1532 = !DILocation(line: 847, column: 14, scope: !1336)
!1533 = !{!"709"}
!1534 = !DILocation(line: 847, column: 11, scope: !1336)
!1535 = !{!"710"}
!1536 = !DILocation(line: 847, column: 20, scope: !1336)
!1537 = !{!"711"}
!1538 = !DILocation(line: 847, column: 17, scope: !1336)
!1539 = !{!"712"}
!1540 = !DILocation(line: 847, column: 23, scope: !1336)
!1541 = !{!"713"}
!1542 = !DILocation(line: 847, column: 2, scope: !1336)
!1543 = !{!"714"}
!1544 = !DILocation(line: 848, column: 1, scope: !1336)
!1545 = !{!"715"}
!1546 = distinct !DISubprogram(name: "point_encode", scope: !3, file: !3, line: 733, type: !1547, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!11, !86, !891}
!1549 = !{!"716"}
!1550 = !{!"717"}
!1551 = !DILocalVariable(name: "buf", arg: 1, scope: !1546, file: !3, line: 733, type: !86)
!1552 = !DILocation(line: 0, scope: !1546)
!1553 = !{!"718"}
!1554 = !DILocalVariable(name: "P", arg: 2, scope: !1546, file: !3, line: 733, type: !891)
!1555 = !{!"719"}
!1556 = !DILocalVariable(name: "t1", scope: !1546, file: !3, line: 735, type: !59)
!1557 = !DILocation(line: 735, column: 11, scope: !1546)
!1558 = !{!"720"}
!1559 = !DILocalVariable(name: "t2", scope: !1546, file: !3, line: 735, type: !59)
!1560 = !DILocation(line: 735, column: 18, scope: !1546)
!1561 = !{!"721"}
!1562 = !DILocation(line: 738, column: 14, scope: !1546)
!1563 = !{!"722"}
!1564 = !DILocation(line: 738, column: 21, scope: !1546)
!1565 = !{!"723"}
!1566 = !DILocation(line: 738, column: 18, scope: !1546)
!1567 = !{!"724"}
!1568 = !DILocation(line: 738, column: 2, scope: !1546)
!1569 = !{!"725"}
!1570 = !DILocation(line: 739, column: 19, scope: !1546)
!1571 = !{!"726"}
!1572 = !DILocation(line: 739, column: 23, scope: !1546)
!1573 = !{!"727"}
!1574 = !DILocation(line: 739, column: 2, scope: !1546)
!1575 = !{!"728"}
!1576 = !DILocation(line: 740, column: 16, scope: !1546)
!1577 = !{!"729"}
!1578 = !DILocation(line: 740, column: 20, scope: !1546)
!1579 = !{!"730"}
!1580 = !DILocation(line: 740, column: 24, scope: !1546)
!1581 = !{!"731"}
!1582 = !DILocation(line: 740, column: 2, scope: !1546)
!1583 = !{!"732"}
!1584 = !DILocation(line: 743, column: 16, scope: !1546)
!1585 = !{!"733"}
!1586 = !DILocation(line: 743, column: 23, scope: !1546)
!1587 = !{!"734"}
!1588 = !DILocation(line: 743, column: 20, scope: !1546)
!1589 = !{!"735"}
!1590 = !DILocation(line: 743, column: 26, scope: !1546)
!1591 = !{!"736"}
!1592 = !DILocation(line: 743, column: 2, scope: !1546)
!1593 = !{!"737"}
!1594 = !DILocation(line: 744, column: 16, scope: !1546)
!1595 = !{!"738"}
!1596 = !DILocation(line: 744, column: 23, scope: !1546)
!1597 = !{!"739"}
!1598 = !DILocation(line: 744, column: 20, scope: !1546)
!1599 = !{!"740"}
!1600 = !DILocation(line: 744, column: 26, scope: !1546)
!1601 = !{!"741"}
!1602 = !DILocation(line: 744, column: 2, scope: !1546)
!1603 = !{!"742"}
!1604 = !DILocation(line: 748, column: 17, scope: !1546)
!1605 = !{!"743"}
!1606 = !DILocation(line: 748, column: 21, scope: !1546)
!1607 = !{!"744"}
!1608 = !DILocation(line: 748, column: 2, scope: !1546)
!1609 = !{!"745"}
!1610 = !DILocation(line: 749, column: 17, scope: !1546)
!1611 = !{!"746"}
!1612 = !DILocation(line: 749, column: 21, scope: !1546)
!1613 = !{!"747"}
!1614 = !DILocation(line: 749, column: 2, scope: !1546)
!1615 = !{!"748"}
!1616 = !DILocation(line: 750, column: 20, scope: !1546)
!1617 = !{!"749"}
!1618 = !DILocation(line: 750, column: 2, scope: !1546)
!1619 = !{!"750"}
!1620 = !DILocation(line: 751, column: 20, scope: !1546)
!1621 = !{!"751"}
!1622 = !DILocation(line: 751, column: 2, scope: !1546)
!1623 = !{!"752"}
!1624 = !DILocation(line: 754, column: 2, scope: !1546)
!1625 = !{!"753"}
!1626 = !DILocation(line: 754, column: 9, scope: !1546)
!1627 = !{!"754"}
!1628 = !DILocation(line: 755, column: 17, scope: !1546)
!1629 = !{!"755"}
!1630 = !DILocation(line: 755, column: 23, scope: !1546)
!1631 = !{!"756"}
!1632 = !{!"757"}
!1633 = !DILocation(line: 755, column: 2, scope: !1546)
!1634 = !{!"758"}
!1635 = !DILocation(line: 756, column: 17, scope: !1546)
!1636 = !{!"759"}
!1637 = !DILocation(line: 756, column: 23, scope: !1546)
!1638 = !{!"760"}
!1639 = !{!"761"}
!1640 = !DILocation(line: 756, column: 2, scope: !1546)
!1641 = !{!"762"}
!1642 = !DILocation(line: 757, column: 17, scope: !1546)
!1643 = !{!"763"}
!1644 = !DILocation(line: 757, column: 23, scope: !1546)
!1645 = !{!"764"}
!1646 = !{!"765"}
!1647 = !DILocation(line: 757, column: 2, scope: !1546)
!1648 = !{!"766"}
!1649 = !DILocation(line: 758, column: 17, scope: !1546)
!1650 = !{!"767"}
!1651 = !DILocation(line: 758, column: 23, scope: !1546)
!1652 = !{!"768"}
!1653 = !{!"769"}
!1654 = !DILocation(line: 758, column: 2, scope: !1546)
!1655 = !{!"770"}
!1656 = !DILocation(line: 759, column: 17, scope: !1546)
!1657 = !{!"771"}
!1658 = !DILocation(line: 759, column: 23, scope: !1546)
!1659 = !{!"772"}
!1660 = !{!"773"}
!1661 = !DILocation(line: 759, column: 2, scope: !1546)
!1662 = !{!"774"}
!1663 = !DILocation(line: 760, column: 17, scope: !1546)
!1664 = !{!"775"}
!1665 = !DILocation(line: 760, column: 23, scope: !1546)
!1666 = !{!"776"}
!1667 = !{!"777"}
!1668 = !DILocation(line: 760, column: 2, scope: !1546)
!1669 = !{!"778"}
!1670 = !DILocation(line: 761, column: 17, scope: !1546)
!1671 = !{!"779"}
!1672 = !DILocation(line: 761, column: 23, scope: !1546)
!1673 = !{!"780"}
!1674 = !{!"781"}
!1675 = !DILocation(line: 761, column: 2, scope: !1546)
!1676 = !{!"782"}
!1677 = !DILocation(line: 762, column: 17, scope: !1546)
!1678 = !{!"783"}
!1679 = !DILocation(line: 762, column: 23, scope: !1546)
!1680 = !{!"784"}
!1681 = !{!"785"}
!1682 = !DILocation(line: 762, column: 2, scope: !1546)
!1683 = !{!"786"}
!1684 = !DILocation(line: 765, column: 9, scope: !1546)
!1685 = !{!"787"}
!1686 = !DILocation(line: 765, column: 6, scope: !1546)
!1687 = !{!"788"}
!1688 = !{!"789"}
!1689 = !DILocation(line: 765, column: 19, scope: !1546)
!1690 = !{!"790"}
!1691 = !DILocation(line: 765, column: 16, scope: !1546)
!1692 = !{!"791"}
!1693 = !{!"792"}
!1694 = !DILocation(line: 765, column: 14, scope: !1546)
!1695 = !{!"793"}
!1696 = !DILocation(line: 765, column: 29, scope: !1546)
!1697 = !{!"794"}
!1698 = !DILocation(line: 765, column: 26, scope: !1546)
!1699 = !{!"795"}
!1700 = !{!"796"}
!1701 = !DILocation(line: 765, column: 24, scope: !1546)
!1702 = !{!"797"}
!1703 = !DILocation(line: 765, column: 39, scope: !1546)
!1704 = !{!"798"}
!1705 = !DILocation(line: 765, column: 36, scope: !1546)
!1706 = !{!"799"}
!1707 = !{!"800"}
!1708 = !DILocation(line: 765, column: 34, scope: !1546)
!1709 = !{!"801"}
!1710 = !DILocalVariable(name: "z", scope: !1546, file: !3, line: 735, type: !15)
!1711 = !{!"802"}
!1712 = !DILocation(line: 766, column: 30, scope: !1546)
!1713 = !{!"803"}
!1714 = !DILocation(line: 766, column: 26, scope: !1546)
!1715 = !{!"804"}
!1716 = !DILocation(line: 766, column: 13, scope: !1546)
!1717 = !{!"805"}
!1718 = !DILocation(line: 766, column: 9, scope: !1546)
!1719 = !{!"806"}
!1720 = !DILocation(line: 766, column: 2, scope: !1546)
!1721 = !{!"807"}
!1722 = distinct !DISubprogram(name: "f256_invert", scope: !3, file: !3, line: 545, type: !36, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1723 = !{!"808"}
!1724 = !{!"809"}
!1725 = !DILocalVariable(name: "d", arg: 1, scope: !1722, file: !3, line: 545, type: !38)
!1726 = !DILocation(line: 0, scope: !1722)
!1727 = !{!"810"}
!1728 = !DILocalVariable(name: "a", arg: 2, scope: !1722, file: !3, line: 545, type: !39)
!1729 = !{!"811"}
!1730 = !DILocalVariable(name: "r", scope: !1722, file: !3, line: 561, type: !59)
!1731 = !DILocation(line: 561, column: 11, scope: !1722)
!1732 = !{!"812"}
!1733 = !DILocalVariable(name: "t", scope: !1722, file: !3, line: 561, type: !59)
!1734 = !DILocation(line: 561, column: 17, scope: !1722)
!1735 = !{!"813"}
!1736 = !DILocation(line: 564, column: 2, scope: !1722)
!1737 = !{!"814"}
!1738 = !{!"815"}
!1739 = !{!"816"}
!1740 = !{!"817"}
!1741 = !DILocalVariable(name: "i", scope: !1722, file: !3, line: 562, type: !10)
!1742 = !{!"818"}
!1743 = !DILocation(line: 565, column: 7, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 565, column: 2)
!1745 = !{!"819"}
!1746 = !DILocation(line: 0, scope: !1744)
!1747 = !{!"820"}
!1748 = !{!"821"}
!1749 = !DILocation(line: 565, column: 16, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 565, column: 2)
!1751 = !{!"822"}
!1752 = !DILocation(line: 565, column: 2, scope: !1744)
!1753 = !{!"823"}
!1754 = !DILocation(line: 566, column: 20, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 565, column: 28)
!1756 = !{!"824"}
!1757 = !DILocation(line: 566, column: 23, scope: !1755)
!1758 = !{!"825"}
!1759 = !DILocation(line: 566, column: 3, scope: !1755)
!1760 = !{!"826"}
!1761 = !DILocation(line: 567, column: 17, scope: !1755)
!1762 = !{!"827"}
!1763 = !DILocation(line: 567, column: 20, scope: !1755)
!1764 = !{!"828"}
!1765 = !DILocation(line: 567, column: 3, scope: !1755)
!1766 = !{!"829"}
!1767 = !DILocation(line: 568, column: 2, scope: !1755)
!1768 = !{!"830"}
!1769 = !DILocation(line: 565, column: 24, scope: !1750)
!1770 = !{!"831"}
!1771 = !{!"832"}
!1772 = !DILocation(line: 565, column: 2, scope: !1750)
!1773 = distinct !{!1773, !1752, !1774, !260}
!1774 = !DILocation(line: 568, column: 2, scope: !1744)
!1775 = !{!"833"}
!1776 = !DILocation(line: 570, column: 2, scope: !1722)
!1777 = !{!"834"}
!1778 = !{!"835"}
!1779 = !{!"836"}
!1780 = !{!"837"}
!1781 = !{!"838"}
!1782 = !{!"839"}
!1783 = !DILocation(line: 571, column: 7, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 571, column: 2)
!1785 = !{!"840"}
!1786 = !DILocation(line: 0, scope: !1784)
!1787 = !{!"841"}
!1788 = !{!"842"}
!1789 = !DILocation(line: 571, column: 18, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 571, column: 2)
!1791 = !{!"843"}
!1792 = !DILocation(line: 571, column: 2, scope: !1784)
!1793 = !{!"844"}
!1794 = !DILocation(line: 572, column: 20, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 571, column: 30)
!1796 = !{!"845"}
!1797 = !DILocation(line: 572, column: 23, scope: !1795)
!1798 = !{!"846"}
!1799 = !DILocation(line: 572, column: 3, scope: !1795)
!1800 = !{!"847"}
!1801 = !DILocation(line: 573, column: 3, scope: !1795)
!1802 = !{!"848"}
!1803 = !DILocation(line: 578, column: 18, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 573, column: 14)
!1805 = !{!"849"}
!1806 = !DILocation(line: 578, column: 21, scope: !1804)
!1807 = !{!"850"}
!1808 = !DILocation(line: 578, column: 4, scope: !1804)
!1809 = !{!"851"}
!1810 = !DILocation(line: 579, column: 4, scope: !1804)
!1811 = !{!"852"}
!1812 = !DILocation(line: 583, column: 18, scope: !1804)
!1813 = !{!"853"}
!1814 = !DILocation(line: 583, column: 21, scope: !1804)
!1815 = !{!"854"}
!1816 = !DILocation(line: 583, column: 24, scope: !1804)
!1817 = !{!"855"}
!1818 = !DILocation(line: 583, column: 4, scope: !1804)
!1819 = !{!"856"}
!1820 = !DILocation(line: 584, column: 4, scope: !1804)
!1821 = !{!"857"}
!1822 = !DILocation(line: 586, column: 2, scope: !1795)
!1823 = !{!"858"}
!1824 = !DILocation(line: 571, column: 26, scope: !1790)
!1825 = !{!"859"}
!1826 = !{!"860"}
!1827 = !DILocation(line: 571, column: 2, scope: !1790)
!1828 = distinct !{!1828, !1792, !1829, !260}
!1829 = !DILocation(line: 586, column: 2, scope: !1784)
!1830 = !{!"861"}
!1831 = !DILocation(line: 587, column: 2, scope: !1722)
!1832 = !{!"862"}
!1833 = !{!"863"}
!1834 = !{!"864"}
!1835 = !{!"865"}
!1836 = !DILocation(line: 588, column: 1, scope: !1722)
!1837 = !{!"866"}
!1838 = distinct !DISubprogram(name: "f256_montysquare", scope: !3, file: !3, line: 499, type: !36, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1839 = !DILocalVariable(name: "d", arg: 1, scope: !1838, file: !3, line: 499, type: !38)
!1840 = !DILocation(line: 0, scope: !1838)
!1841 = !{!"867"}
!1842 = !DILocalVariable(name: "a", arg: 2, scope: !1838, file: !3, line: 499, type: !39)
!1843 = !{!"868"}
!1844 = !DILocation(line: 501, column: 2, scope: !1838)
!1845 = !{!"869"}
!1846 = !DILocation(line: 502, column: 1, scope: !1838)
!1847 = !{!"870"}
!1848 = distinct !DISubprogram(name: "f256_montymul", scope: !3, file: !3, line: 259, type: !1849, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !38, !39, !39}
!1851 = !DILocalVariable(name: "d", arg: 1, scope: !1848, file: !3, line: 259, type: !38)
!1852 = !DILocation(line: 0, scope: !1848)
!1853 = !{!"871"}
!1854 = !DILocalVariable(name: "a", arg: 2, scope: !1848, file: !3, line: 259, type: !39)
!1855 = !{!"872"}
!1856 = !DILocalVariable(name: "b", arg: 3, scope: !1848, file: !3, line: 259, type: !39)
!1857 = !{!"873"}
!1858 = !DILocation(line: 280, column: 6, scope: !1848)
!1859 = !{!"874"}
!1860 = !{!"875"}
!1861 = !DILocalVariable(name: "x", scope: !1848, file: !3, line: 263, type: !15)
!1862 = !{!"876"}
!1863 = !DILocation(line: 281, column: 25, scope: !1848)
!1864 = !{!"877"}
!1865 = !{!"878"}
!1866 = !DILocation(line: 281, column: 6, scope: !1848)
!1867 = !{!"879"}
!1868 = !DILocation(line: 281, column: 32, scope: !1848)
!1869 = !{!"880"}
!1870 = !DILocation(line: 281, column: 30, scope: !1848)
!1871 = !{!"881"}
!1872 = !DILocalVariable(name: "z", scope: !1848, file: !3, line: 264, type: !18)
!1873 = !{!"882"}
!1874 = !DILocation(line: 282, column: 6, scope: !1848)
!1875 = !{!"883"}
!1876 = !DILocalVariable(name: "f", scope: !1848, file: !3, line: 263, type: !15)
!1877 = !{!"884"}
!1878 = !DILocation(line: 283, column: 25, scope: !1848)
!1879 = !{!"885"}
!1880 = !{!"886"}
!1881 = !DILocation(line: 283, column: 6, scope: !1848)
!1882 = !{!"887"}
!1883 = !DILocation(line: 283, column: 32, scope: !1848)
!1884 = !{!"888"}
!1885 = !DILocation(line: 283, column: 30, scope: !1848)
!1886 = !{!"889"}
!1887 = !DILocation(line: 283, column: 39, scope: !1848)
!1888 = !{!"890"}
!1889 = !DILocation(line: 283, column: 34, scope: !1848)
!1890 = !{!"891"}
!1891 = !DILocation(line: 283, column: 61, scope: !1848)
!1892 = !{!"892"}
!1893 = !DILocation(line: 283, column: 48, scope: !1848)
!1894 = !{!"893"}
!1895 = !DILocation(line: 283, column: 46, scope: !1848)
!1896 = !{!"894"}
!1897 = !{!"895"}
!1898 = !DILocation(line: 284, column: 7, scope: !1848)
!1899 = !{!"896"}
!1900 = !DILocalVariable(name: "t0", scope: !1848, file: !3, line: 263, type: !15)
!1901 = !{!"897"}
!1902 = !DILocation(line: 285, column: 25, scope: !1848)
!1903 = !{!"898"}
!1904 = !{!"899"}
!1905 = !DILocation(line: 285, column: 6, scope: !1848)
!1906 = !{!"900"}
!1907 = !DILocation(line: 285, column: 32, scope: !1848)
!1908 = !{!"901"}
!1909 = !DILocation(line: 285, column: 30, scope: !1848)
!1910 = !{!"902"}
!1911 = !DILocation(line: 285, column: 39, scope: !1848)
!1912 = !{!"903"}
!1913 = !DILocation(line: 285, column: 34, scope: !1848)
!1914 = !{!"904"}
!1915 = !DILocation(line: 285, column: 61, scope: !1848)
!1916 = !{!"905"}
!1917 = !DILocation(line: 285, column: 48, scope: !1848)
!1918 = !{!"906"}
!1919 = !DILocation(line: 285, column: 46, scope: !1848)
!1920 = !{!"907"}
!1921 = !{!"908"}
!1922 = !DILocation(line: 286, column: 7, scope: !1848)
!1923 = !{!"909"}
!1924 = !DILocalVariable(name: "t1", scope: !1848, file: !3, line: 263, type: !15)
!1925 = !{!"910"}
!1926 = !DILocation(line: 287, column: 25, scope: !1848)
!1927 = !{!"911"}
!1928 = !{!"912"}
!1929 = !DILocation(line: 287, column: 6, scope: !1848)
!1930 = !{!"913"}
!1931 = !DILocation(line: 287, column: 32, scope: !1848)
!1932 = !{!"914"}
!1933 = !DILocation(line: 287, column: 30, scope: !1848)
!1934 = !{!"915"}
!1935 = !DILocation(line: 287, column: 39, scope: !1848)
!1936 = !{!"916"}
!1937 = !DILocation(line: 287, column: 34, scope: !1848)
!1938 = !{!"917"}
!1939 = !DILocation(line: 287, column: 48, scope: !1848)
!1940 = !{!"918"}
!1941 = !DILocation(line: 287, column: 46, scope: !1848)
!1942 = !{!"919"}
!1943 = !{!"920"}
!1944 = !DILocation(line: 288, column: 7, scope: !1848)
!1945 = !{!"921"}
!1946 = !DILocalVariable(name: "t2", scope: !1848, file: !3, line: 263, type: !15)
!1947 = !{!"922"}
!1948 = !DILocation(line: 289, column: 20, scope: !1848)
!1949 = !{!"923"}
!1950 = !DILocation(line: 289, column: 7, scope: !1848)
!1951 = !{!"924"}
!1952 = !DILocalVariable(name: "t3", scope: !1848, file: !3, line: 263, type: !15)
!1953 = !{!"925"}
!1954 = !DILocation(line: 290, column: 8, scope: !1848)
!1955 = !{!"926"}
!1956 = !DILocation(line: 290, column: 29, scope: !1848)
!1957 = !{!"927"}
!1958 = !DILocation(line: 290, column: 39, scope: !1848)
!1959 = !{!"928"}
!1960 = !DILocation(line: 290, column: 60, scope: !1848)
!1961 = !{!"929"}
!1962 = !DILocation(line: 290, column: 36, scope: !1848)
!1963 = !{!"930"}
!1964 = !DILocalVariable(name: "ff", scope: !1848, file: !3, line: 264, type: !18)
!1965 = !{!"931"}
!1966 = !DILocation(line: 291, column: 6, scope: !1848)
!1967 = !{!"932"}
!1968 = !DILocation(line: 291, column: 30, scope: !1848)
!1969 = !{!"933"}
!1970 = !{!"934"}
!1971 = !DILocation(line: 291, column: 28, scope: !1848)
!1972 = !{!"935"}
!1973 = !{!"936"}
!1974 = !DILocation(line: 292, column: 7, scope: !1848)
!1975 = !{!"937"}
!1976 = !{!"938"}
!1977 = !DILocation(line: 293, column: 6, scope: !1848)
!1978 = !{!"939"}
!1979 = !DILocation(line: 293, column: 33, scope: !1848)
!1980 = !{!"940"}
!1981 = !DILocation(line: 293, column: 28, scope: !1848)
!1982 = !{!"941"}
!1983 = !DILocation(line: 293, column: 46, scope: !1848)
!1984 = !{!"942"}
!1985 = !DILocation(line: 293, column: 40, scope: !1848)
!1986 = !{!"943"}
!1987 = !{!"944"}
!1988 = !DILocation(line: 294, column: 7, scope: !1848)
!1989 = !{!"945"}
!1990 = !{!"946"}
!1991 = !DILocation(line: 295, column: 20, scope: !1848)
!1992 = !{!"947"}
!1993 = !DILocation(line: 295, column: 7, scope: !1848)
!1994 = !{!"948"}
!1995 = !DILocalVariable(name: "t4", scope: !1848, file: !3, line: 263, type: !15)
!1996 = !{!"949"}
!1997 = !DILocalVariable(name: "i", scope: !1848, file: !3, line: 265, type: !10)
!1998 = !{!"950"}
!1999 = !DILocation(line: 300, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 300, column: 2)
!2001 = !{!"951"}
!2002 = !{!"952"}
!2003 = !{!"953"}
!2004 = !{!"954"}
!2005 = !{!"955"}
!2006 = !{!"956"}
!2007 = !DILocation(line: 0, scope: !2000)
!2008 = !{!"957"}
!2009 = !{!"958"}
!2010 = !{!"959"}
!2011 = !{!"960"}
!2012 = !{!"961"}
!2013 = !{!"962"}
!2014 = !{!"963"}
!2015 = !DILocation(line: 300, column: 16, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 300, column: 2)
!2017 = !{!"964"}
!2018 = !DILocation(line: 300, column: 2, scope: !2000)
!2019 = !{!"965"}
!2020 = !DILocation(line: 301, column: 7, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 300, column: 27)
!2022 = !{!"966"}
!2023 = !{!"967"}
!2024 = !{!"968"}
!2025 = !{!"969"}
!2026 = !DILocation(line: 304, column: 26, scope: !2021)
!2027 = !{!"970"}
!2028 = !{!"971"}
!2029 = !DILocation(line: 304, column: 7, scope: !2021)
!2030 = !{!"972"}
!2031 = !DILocation(line: 304, column: 33, scope: !2021)
!2032 = !{!"973"}
!2033 = !DILocation(line: 304, column: 31, scope: !2021)
!2034 = !{!"974"}
!2035 = !DILocation(line: 304, column: 37, scope: !2021)
!2036 = !{!"975"}
!2037 = !DILocation(line: 304, column: 35, scope: !2021)
!2038 = !{!"976"}
!2039 = !{!"977"}
!2040 = !DILocation(line: 305, column: 7, scope: !2021)
!2041 = !{!"978"}
!2042 = !{!"979"}
!2043 = !DILocation(line: 306, column: 26, scope: !2021)
!2044 = !{!"980"}
!2045 = !{!"981"}
!2046 = !DILocation(line: 306, column: 7, scope: !2021)
!2047 = !{!"982"}
!2048 = !DILocation(line: 306, column: 33, scope: !2021)
!2049 = !{!"983"}
!2050 = !DILocation(line: 306, column: 31, scope: !2021)
!2051 = !{!"984"}
!2052 = !DILocation(line: 306, column: 37, scope: !2021)
!2053 = !{!"985"}
!2054 = !DILocation(line: 306, column: 35, scope: !2021)
!2055 = !{!"986"}
!2056 = !DILocation(line: 306, column: 45, scope: !2021)
!2057 = !{!"987"}
!2058 = !DILocation(line: 306, column: 40, scope: !2021)
!2059 = !{!"988"}
!2060 = !{!"989"}
!2061 = !DILocation(line: 307, column: 8, scope: !2021)
!2062 = !{!"990"}
!2063 = !{!"991"}
!2064 = !DILocation(line: 308, column: 26, scope: !2021)
!2065 = !{!"992"}
!2066 = !{!"993"}
!2067 = !DILocation(line: 308, column: 7, scope: !2021)
!2068 = !{!"994"}
!2069 = !DILocation(line: 308, column: 33, scope: !2021)
!2070 = !{!"995"}
!2071 = !DILocation(line: 308, column: 31, scope: !2021)
!2072 = !{!"996"}
!2073 = !DILocation(line: 308, column: 37, scope: !2021)
!2074 = !{!"997"}
!2075 = !DILocation(line: 308, column: 35, scope: !2021)
!2076 = !{!"998"}
!2077 = !DILocation(line: 308, column: 45, scope: !2021)
!2078 = !{!"999"}
!2079 = !DILocation(line: 308, column: 40, scope: !2021)
!2080 = !{!"1000"}
!2081 = !{!"1001"}
!2082 = !DILocation(line: 309, column: 8, scope: !2021)
!2083 = !{!"1002"}
!2084 = !{!"1003"}
!2085 = !DILocation(line: 310, column: 26, scope: !2021)
!2086 = !{!"1004"}
!2087 = !{!"1005"}
!2088 = !DILocation(line: 310, column: 7, scope: !2021)
!2089 = !{!"1006"}
!2090 = !DILocation(line: 310, column: 33, scope: !2021)
!2091 = !{!"1007"}
!2092 = !DILocation(line: 310, column: 31, scope: !2021)
!2093 = !{!"1008"}
!2094 = !DILocation(line: 310, column: 37, scope: !2021)
!2095 = !{!"1009"}
!2096 = !DILocation(line: 310, column: 35, scope: !2021)
!2097 = !{!"1010"}
!2098 = !DILocation(line: 310, column: 45, scope: !2021)
!2099 = !{!"1011"}
!2100 = !DILocation(line: 310, column: 40, scope: !2021)
!2101 = !{!"1012"}
!2102 = !{!"1013"}
!2103 = !DILocation(line: 311, column: 8, scope: !2021)
!2104 = !{!"1014"}
!2105 = !{!"1015"}
!2106 = !DILocation(line: 312, column: 7, scope: !2021)
!2107 = !{!"1016"}
!2108 = !DILocation(line: 312, column: 15, scope: !2021)
!2109 = !{!"1017"}
!2110 = !DILocation(line: 312, column: 10, scope: !2021)
!2111 = !{!"1018"}
!2112 = !{!"1019"}
!2113 = !DILocation(line: 313, column: 8, scope: !2021)
!2114 = !{!"1020"}
!2115 = !{!"1021"}
!2116 = !DILocation(line: 314, column: 21, scope: !2021)
!2117 = !{!"1022"}
!2118 = !DILocation(line: 314, column: 8, scope: !2021)
!2119 = !{!"1023"}
!2120 = !{!"1024"}
!2121 = !DILocation(line: 317, column: 7, scope: !2021)
!2122 = !{!"1025"}
!2123 = !DILocation(line: 317, column: 44, scope: !2021)
!2124 = !{!"1026"}
!2125 = !DILocation(line: 317, column: 31, scope: !2021)
!2126 = !{!"1027"}
!2127 = !DILocation(line: 317, column: 29, scope: !2021)
!2128 = !{!"1028"}
!2129 = !{!"1029"}
!2130 = !DILocation(line: 318, column: 8, scope: !2021)
!2131 = !{!"1030"}
!2132 = !{!"1031"}
!2133 = !DILocation(line: 319, column: 10, scope: !2021)
!2134 = !{!"1032"}
!2135 = !DILocation(line: 319, column: 19, scope: !2021)
!2136 = !{!"1033"}
!2137 = !DILocation(line: 319, column: 17, scope: !2021)
!2138 = !{!"1034"}
!2139 = !DILocation(line: 319, column: 56, scope: !2021)
!2140 = !{!"1035"}
!2141 = !DILocation(line: 319, column: 43, scope: !2021)
!2142 = !{!"1036"}
!2143 = !DILocation(line: 319, column: 41, scope: !2021)
!2144 = !{!"1037"}
!2145 = !{!"1038"}
!2146 = !DILocation(line: 320, column: 8, scope: !2021)
!2147 = !{!"1039"}
!2148 = !{!"1040"}
!2149 = !DILocation(line: 323, column: 9, scope: !2021)
!2150 = !{!"1041"}
!2151 = !DILocation(line: 323, column: 30, scope: !2021)
!2152 = !{!"1042"}
!2153 = !DILocation(line: 324, column: 7, scope: !2021)
!2154 = !{!"1043"}
!2155 = !DILocation(line: 324, column: 28, scope: !2021)
!2156 = !{!"1044"}
!2157 = !DILocation(line: 324, column: 4, scope: !2021)
!2158 = !{!"1045"}
!2159 = !DILocation(line: 324, column: 37, scope: !2021)
!2160 = !{!"1046"}
!2161 = !DILocation(line: 324, column: 35, scope: !2021)
!2162 = !{!"1047"}
!2163 = !{!"1048"}
!2164 = !DILocation(line: 325, column: 10, scope: !2021)
!2165 = !{!"1049"}
!2166 = !DILocation(line: 325, column: 19, scope: !2021)
!2167 = !{!"1050"}
!2168 = !DILocation(line: 325, column: 17, scope: !2021)
!2169 = !{!"1051"}
!2170 = !DILocation(line: 325, column: 43, scope: !2021)
!2171 = !{!"1052"}
!2172 = !{!"1053"}
!2173 = !DILocation(line: 325, column: 41, scope: !2021)
!2174 = !{!"1054"}
!2175 = !{!"1055"}
!2176 = !DILocation(line: 326, column: 8, scope: !2021)
!2177 = !{!"1056"}
!2178 = !{!"1057"}
!2179 = !DILocation(line: 327, column: 7, scope: !2021)
!2180 = !{!"1058"}
!2181 = !DILocation(line: 327, column: 34, scope: !2021)
!2182 = !{!"1059"}
!2183 = !DILocation(line: 327, column: 29, scope: !2021)
!2184 = !{!"1060"}
!2185 = !DILocation(line: 327, column: 47, scope: !2021)
!2186 = !{!"1061"}
!2187 = !DILocation(line: 327, column: 41, scope: !2021)
!2188 = !{!"1062"}
!2189 = !{!"1063"}
!2190 = !DILocation(line: 328, column: 8, scope: !2021)
!2191 = !{!"1064"}
!2192 = !{!"1065"}
!2193 = !DILocation(line: 329, column: 22, scope: !2021)
!2194 = !{!"1066"}
!2195 = !DILocation(line: 329, column: 9, scope: !2021)
!2196 = !{!"1067"}
!2197 = !DILocation(line: 329, column: 6, scope: !2021)
!2198 = !{!"1068"}
!2199 = !{!"1069"}
!2200 = !DILocation(line: 330, column: 2, scope: !2021)
!2201 = !{!"1070"}
!2202 = !DILocation(line: 300, column: 23, scope: !2016)
!2203 = !{!"1071"}
!2204 = !{!"1072"}
!2205 = !DILocation(line: 300, column: 2, scope: !2016)
!2206 = distinct !{!2206, !2018, !2207, !260}
!2207 = !DILocation(line: 330, column: 2, scope: !2000)
!2208 = !{!"1073"}
!2209 = !DILocation(line: 350, column: 6, scope: !1848)
!2210 = !{!"1074"}
!2211 = !DILocation(line: 350, column: 30, scope: !1848)
!2212 = !{!"1075"}
!2213 = !DILocation(line: 350, column: 28, scope: !1848)
!2214 = !{!"1076"}
!2215 = !{!"1077"}
!2216 = !DILocation(line: 351, column: 7, scope: !1848)
!2217 = !{!"1078"}
!2218 = !{!"1079"}
!2219 = !DILocation(line: 352, column: 6, scope: !1848)
!2220 = !{!"1080"}
!2221 = !DILocation(line: 352, column: 34, scope: !1848)
!2222 = !{!"1081"}
!2223 = !DILocation(line: 352, column: 30, scope: !1848)
!2224 = !{!"1082"}
!2225 = !DILocation(line: 352, column: 28, scope: !1848)
!2226 = !{!"1083"}
!2227 = !DILocation(line: 352, column: 46, scope: !1848)
!2228 = !{!"1084"}
!2229 = !DILocation(line: 352, column: 41, scope: !1848)
!2230 = !{!"1085"}
!2231 = !{!"1086"}
!2232 = !DILocation(line: 353, column: 7, scope: !1848)
!2233 = !{!"1087"}
!2234 = !{!"1088"}
!2235 = !DILocation(line: 354, column: 6, scope: !1848)
!2236 = !{!"1089"}
!2237 = !DILocation(line: 354, column: 33, scope: !1848)
!2238 = !{!"1090"}
!2239 = !DILocation(line: 354, column: 28, scope: !1848)
!2240 = !{!"1091"}
!2241 = !{!"1092"}
!2242 = !DILocation(line: 355, column: 7, scope: !1848)
!2243 = !{!"1093"}
!2244 = !{!"1094"}
!2245 = !DILocation(line: 356, column: 25, scope: !1848)
!2246 = !{!"1095"}
!2247 = !DILocation(line: 356, column: 12, scope: !1848)
!2248 = !{!"1096"}
!2249 = !DILocation(line: 356, column: 10, scope: !1848)
!2250 = !{!"1097"}
!2251 = !DILocation(line: 356, column: 33, scope: !1848)
!2252 = !{!"1098"}
!2253 = !DILocation(line: 356, column: 44, scope: !1848)
!2254 = !{!"1099"}
!2255 = !DILocation(line: 356, column: 38, scope: !1848)
!2256 = !{!"1100"}
!2257 = !{!"1101"}
!2258 = !DILocation(line: 358, column: 2, scope: !1848)
!2259 = !{!"1102"}
!2260 = !DILocation(line: 358, column: 7, scope: !1848)
!2261 = !{!"1103"}
!2262 = !DILocation(line: 359, column: 2, scope: !1848)
!2263 = !{!"1104"}
!2264 = !DILocation(line: 359, column: 7, scope: !1848)
!2265 = !{!"1105"}
!2266 = !DILocation(line: 360, column: 2, scope: !1848)
!2267 = !{!"1106"}
!2268 = !DILocation(line: 360, column: 7, scope: !1848)
!2269 = !{!"1107"}
!2270 = !DILocation(line: 361, column: 2, scope: !1848)
!2271 = !{!"1108"}
!2272 = !DILocation(line: 361, column: 7, scope: !1848)
!2273 = !{!"1109"}
!2274 = !DILocation(line: 491, column: 1, scope: !1848)
!2275 = !{!"1110"}
!2276 = !DILocalVariable(name: "d", arg: 1, scope: !50, file: !3, line: 530, type: !38)
!2277 = !DILocation(line: 0, scope: !50)
!2278 = !{!"1111"}
!2279 = !DILocalVariable(name: "a", arg: 2, scope: !50, file: !3, line: 530, type: !39)
!2280 = !{!"1112"}
!2281 = !{!"1113"}
!2282 = !DILocation(line: 537, column: 2, scope: !50)
!2283 = !{!"1114"}
!2284 = !DILocation(line: 538, column: 1, scope: !50)
!2285 = !{!"1115"}
!2286 = distinct !DISubprogram(name: "br_enc64be", scope: !265, file: !265, line: 620, type: !2287, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{null, !20, !15}
!2289 = !DILocalVariable(name: "dst", arg: 1, scope: !2286, file: !265, line: 620, type: !20)
!2290 = !DILocation(line: 0, scope: !2286)
!2291 = !{!"1116"}
!2292 = !DILocalVariable(name: "x", arg: 2, scope: !2286, file: !265, line: 620, type: !15)
!2293 = !{!"1117"}
!2294 = !DILocalVariable(name: "buf", scope: !2286, file: !265, line: 625, type: !86)
!2295 = !{!"1118"}
!2296 = !DILocation(line: 628, column: 31, scope: !2286)
!2297 = !{!"1119"}
!2298 = !DILocation(line: 628, column: 18, scope: !2286)
!2299 = !{!"1120"}
!2300 = !DILocation(line: 628, column: 2, scope: !2286)
!2301 = !{!"1121"}
!2302 = !DILocation(line: 629, column: 17, scope: !2286)
!2303 = !{!"1122"}
!2304 = !DILocation(line: 629, column: 22, scope: !2286)
!2305 = !{!"1123"}
!2306 = !DILocation(line: 629, column: 2, scope: !2286)
!2307 = !{!"1124"}
!2308 = !DILocation(line: 631, column: 1, scope: !2286)
!2309 = !{!"1125"}
!2310 = distinct !DISubprogram(name: "NEQ", scope: !265, file: !265, line: 791, type: !1315, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2311 = !DILocalVariable(name: "x", arg: 1, scope: !2310, file: !265, line: 791, type: !11)
!2312 = !DILocation(line: 0, scope: !2310)
!2313 = !{!"1126"}
!2314 = !DILocalVariable(name: "y", arg: 2, scope: !2310, file: !265, line: 791, type: !11)
!2315 = !{!"1127"}
!2316 = !DILocation(line: 795, column: 8, scope: !2310)
!2317 = !{!"1128"}
!2318 = !DILocalVariable(name: "q", scope: !2310, file: !265, line: 793, type: !11)
!2319 = !{!"1129"}
!2320 = !DILocation(line: 796, column: 14, scope: !2310)
!2321 = !{!"1130"}
!2322 = !DILocation(line: 796, column: 12, scope: !2310)
!2323 = !{!"1131"}
!2324 = !DILocation(line: 796, column: 18, scope: !2310)
!2325 = !{!"1132"}
!2326 = !DILocation(line: 796, column: 2, scope: !2310)
!2327 = !{!"1133"}
!2328 = distinct !DISubprogram(name: "br_enc32be", scope: !265, file: !265, line: 558, type: !2329, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !20, !11}
!2331 = !DILocalVariable(name: "dst", arg: 1, scope: !2328, file: !265, line: 558, type: !20)
!2332 = !DILocation(line: 0, scope: !2328)
!2333 = !{!"1134"}
!2334 = !DILocalVariable(name: "x", arg: 2, scope: !2328, file: !265, line: 558, type: !11)
!2335 = !{!"1135"}
!2336 = !DILocalVariable(name: "buf", scope: !2328, file: !265, line: 563, type: !86)
!2337 = !{!"1136"}
!2338 = !DILocation(line: 566, column: 29, scope: !2328)
!2339 = !{!"1137"}
!2340 = !DILocation(line: 566, column: 11, scope: !2328)
!2341 = !{!"1138"}
!2342 = !DILocation(line: 566, column: 2, scope: !2328)
!2343 = !{!"1139"}
!2344 = !DILocation(line: 566, column: 9, scope: !2328)
!2345 = !{!"1140"}
!2346 = !DILocation(line: 567, column: 29, scope: !2328)
!2347 = !{!"1141"}
!2348 = !DILocation(line: 567, column: 11, scope: !2328)
!2349 = !{!"1142"}
!2350 = !DILocation(line: 567, column: 2, scope: !2328)
!2351 = !{!"1143"}
!2352 = !DILocation(line: 567, column: 9, scope: !2328)
!2353 = !{!"1144"}
!2354 = !DILocation(line: 568, column: 29, scope: !2328)
!2355 = !{!"1145"}
!2356 = !DILocation(line: 568, column: 11, scope: !2328)
!2357 = !{!"1146"}
!2358 = !DILocation(line: 568, column: 2, scope: !2328)
!2359 = !{!"1147"}
!2360 = !DILocation(line: 568, column: 9, scope: !2328)
!2361 = !{!"1148"}
!2362 = !DILocation(line: 569, column: 11, scope: !2328)
!2363 = !{!"1149"}
!2364 = !DILocation(line: 569, column: 2, scope: !2328)
!2365 = !{!"1150"}
!2366 = !DILocation(line: 569, column: 9, scope: !2328)
!2367 = !{!"1151"}
!2368 = !DILocation(line: 571, column: 1, scope: !2328)
!2369 = !{!"1152"}
!2370 = distinct !DISubprogram(name: "f256_add", scope: !3, file: !3, line: 96, type: !1849, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2371 = !DILocalVariable(name: "d", arg: 1, scope: !2370, file: !3, line: 96, type: !38)
!2372 = !DILocation(line: 0, scope: !2370)
!2373 = !{!"1153"}
!2374 = !DILocalVariable(name: "a", arg: 2, scope: !2370, file: !3, line: 96, type: !39)
!2375 = !{!"1154"}
!2376 = !DILocalVariable(name: "b", arg: 3, scope: !2370, file: !3, line: 96, type: !39)
!2377 = !{!"1155"}
!2378 = !DILocation(line: 105, column: 25, scope: !2370)
!2379 = !{!"1156"}
!2380 = !{!"1157"}
!2381 = !DILocation(line: 105, column: 6, scope: !2370)
!2382 = !{!"1158"}
!2383 = !DILocation(line: 105, column: 32, scope: !2370)
!2384 = !{!"1159"}
!2385 = !{!"1160"}
!2386 = !{!"1161"}
!2387 = !DILocation(line: 105, column: 30, scope: !2370)
!2388 = !{!"1162"}
!2389 = !DILocalVariable(name: "w", scope: !2370, file: !3, line: 99, type: !18)
!2390 = !{!"1163"}
!2391 = !DILocation(line: 106, column: 9, scope: !2370)
!2392 = !{!"1164"}
!2393 = !DILocation(line: 106, column: 2, scope: !2370)
!2394 = !{!"1165"}
!2395 = !DILocation(line: 106, column: 7, scope: !2370)
!2396 = !{!"1166"}
!2397 = !DILocation(line: 107, column: 25, scope: !2370)
!2398 = !{!"1167"}
!2399 = !{!"1168"}
!2400 = !DILocation(line: 107, column: 6, scope: !2370)
!2401 = !{!"1169"}
!2402 = !DILocation(line: 107, column: 32, scope: !2370)
!2403 = !{!"1170"}
!2404 = !{!"1171"}
!2405 = !{!"1172"}
!2406 = !DILocation(line: 107, column: 30, scope: !2370)
!2407 = !{!"1173"}
!2408 = !DILocation(line: 107, column: 42, scope: !2370)
!2409 = !{!"1174"}
!2410 = !DILocation(line: 107, column: 37, scope: !2370)
!2411 = !{!"1175"}
!2412 = !{!"1176"}
!2413 = !DILocation(line: 108, column: 9, scope: !2370)
!2414 = !{!"1177"}
!2415 = !DILocation(line: 108, column: 2, scope: !2370)
!2416 = !{!"1178"}
!2417 = !DILocation(line: 108, column: 7, scope: !2370)
!2418 = !{!"1179"}
!2419 = !DILocation(line: 109, column: 25, scope: !2370)
!2420 = !{!"1180"}
!2421 = !{!"1181"}
!2422 = !DILocation(line: 109, column: 6, scope: !2370)
!2423 = !{!"1182"}
!2424 = !DILocation(line: 109, column: 32, scope: !2370)
!2425 = !{!"1183"}
!2426 = !{!"1184"}
!2427 = !{!"1185"}
!2428 = !DILocation(line: 109, column: 30, scope: !2370)
!2429 = !{!"1186"}
!2430 = !DILocation(line: 109, column: 42, scope: !2370)
!2431 = !{!"1187"}
!2432 = !DILocation(line: 109, column: 37, scope: !2370)
!2433 = !{!"1188"}
!2434 = !{!"1189"}
!2435 = !DILocation(line: 110, column: 9, scope: !2370)
!2436 = !{!"1190"}
!2437 = !DILocation(line: 110, column: 2, scope: !2370)
!2438 = !{!"1191"}
!2439 = !DILocation(line: 110, column: 7, scope: !2370)
!2440 = !{!"1192"}
!2441 = !DILocation(line: 111, column: 25, scope: !2370)
!2442 = !{!"1193"}
!2443 = !{!"1194"}
!2444 = !DILocation(line: 111, column: 6, scope: !2370)
!2445 = !{!"1195"}
!2446 = !DILocation(line: 111, column: 32, scope: !2370)
!2447 = !{!"1196"}
!2448 = !{!"1197"}
!2449 = !{!"1198"}
!2450 = !DILocation(line: 111, column: 30, scope: !2370)
!2451 = !{!"1199"}
!2452 = !DILocation(line: 111, column: 42, scope: !2370)
!2453 = !{!"1200"}
!2454 = !DILocation(line: 111, column: 37, scope: !2370)
!2455 = !{!"1201"}
!2456 = !{!"1202"}
!2457 = !DILocation(line: 112, column: 9, scope: !2370)
!2458 = !{!"1203"}
!2459 = !DILocation(line: 112, column: 2, scope: !2370)
!2460 = !{!"1204"}
!2461 = !DILocation(line: 112, column: 7, scope: !2370)
!2462 = !{!"1205"}
!2463 = !DILocation(line: 113, column: 19, scope: !2370)
!2464 = !{!"1206"}
!2465 = !DILocation(line: 113, column: 6, scope: !2370)
!2466 = !{!"1207"}
!2467 = !DILocalVariable(name: "t", scope: !2370, file: !3, line: 100, type: !15)
!2468 = !{!"1208"}
!2469 = !DILocation(line: 118, column: 25, scope: !2370)
!2470 = !{!"1209"}
!2471 = !{!"1210"}
!2472 = !DILocation(line: 118, column: 6, scope: !2370)
!2473 = !{!"1211"}
!2474 = !DILocation(line: 118, column: 32, scope: !2370)
!2475 = !{!"1212"}
!2476 = !DILocation(line: 118, column: 30, scope: !2370)
!2477 = !{!"1213"}
!2478 = !{!"1214"}
!2479 = !DILocation(line: 119, column: 9, scope: !2370)
!2480 = !{!"1215"}
!2481 = !DILocation(line: 119, column: 2, scope: !2370)
!2482 = !{!"1216"}
!2483 = !DILocation(line: 119, column: 7, scope: !2370)
!2484 = !{!"1217"}
!2485 = !DILocation(line: 120, column: 25, scope: !2370)
!2486 = !{!"1218"}
!2487 = !{!"1219"}
!2488 = !DILocation(line: 120, column: 6, scope: !2370)
!2489 = !{!"1220"}
!2490 = !DILocation(line: 120, column: 35, scope: !2370)
!2491 = !{!"1221"}
!2492 = !DILocation(line: 120, column: 30, scope: !2370)
!2493 = !{!"1222"}
!2494 = !DILocation(line: 120, column: 47, scope: !2370)
!2495 = !{!"1223"}
!2496 = !DILocation(line: 120, column: 44, scope: !2370)
!2497 = !{!"1224"}
!2498 = !DILocation(line: 120, column: 42, scope: !2370)
!2499 = !{!"1225"}
!2500 = !{!"1226"}
!2501 = !DILocation(line: 121, column: 9, scope: !2370)
!2502 = !{!"1227"}
!2503 = !DILocation(line: 121, column: 2, scope: !2370)
!2504 = !{!"1228"}
!2505 = !DILocation(line: 121, column: 7, scope: !2370)
!2506 = !{!"1229"}
!2507 = !DILocation(line: 123, column: 25, scope: !2370)
!2508 = !{!"1230"}
!2509 = !{!"1231"}
!2510 = !DILocation(line: 123, column: 6, scope: !2370)
!2511 = !{!"1232"}
!2512 = !DILocation(line: 123, column: 36, scope: !2370)
!2513 = !{!"1233"}
!2514 = !DILocation(line: 123, column: 43, scope: !2370)
!2515 = !{!"1234"}
!2516 = !DILocation(line: 123, column: 30, scope: !2370)
!2517 = !{!"1235"}
!2518 = !{!"1236"}
!2519 = !DILocation(line: 124, column: 9, scope: !2370)
!2520 = !{!"1237"}
!2521 = !DILocation(line: 124, column: 2, scope: !2370)
!2522 = !{!"1238"}
!2523 = !DILocation(line: 124, column: 7, scope: !2370)
!2524 = !{!"1239"}
!2525 = !DILocation(line: 127, column: 25, scope: !2370)
!2526 = !{!"1240"}
!2527 = !{!"1241"}
!2528 = !DILocation(line: 127, column: 6, scope: !2370)
!2529 = !{!"1242"}
!2530 = !DILocation(line: 127, column: 36, scope: !2370)
!2531 = !{!"1243"}
!2532 = !DILocation(line: 127, column: 43, scope: !2370)
!2533 = !{!"1244"}
!2534 = !DILocation(line: 127, column: 30, scope: !2370)
!2535 = !{!"1245"}
!2536 = !DILocation(line: 127, column: 53, scope: !2370)
!2537 = !{!"1246"}
!2538 = !DILocation(line: 127, column: 50, scope: !2370)
!2539 = !{!"1247"}
!2540 = !DILocation(line: 127, column: 48, scope: !2370)
!2541 = !{!"1248"}
!2542 = !DILocation(line: 127, column: 62, scope: !2370)
!2543 = !{!"1249"}
!2544 = !DILocation(line: 127, column: 60, scope: !2370)
!2545 = !{!"1250"}
!2546 = !{!"1251"}
!2547 = !DILocation(line: 128, column: 9, scope: !2370)
!2548 = !{!"1252"}
!2549 = !DILocation(line: 128, column: 2, scope: !2370)
!2550 = !{!"1253"}
!2551 = !DILocation(line: 128, column: 7, scope: !2370)
!2552 = !{!"1254"}
!2553 = !DILocation(line: 129, column: 19, scope: !2370)
!2554 = !{!"1255"}
!2555 = !DILocation(line: 129, column: 6, scope: !2370)
!2556 = !{!"1256"}
!2557 = !{!"1257"}
!2558 = !DILocation(line: 134, column: 25, scope: !2370)
!2559 = !{!"1258"}
!2560 = !{!"1259"}
!2561 = !DILocation(line: 134, column: 6, scope: !2370)
!2562 = !{!"1260"}
!2563 = !DILocation(line: 134, column: 32, scope: !2370)
!2564 = !{!"1261"}
!2565 = !DILocation(line: 134, column: 30, scope: !2370)
!2566 = !{!"1262"}
!2567 = !{!"1263"}
!2568 = !DILocation(line: 135, column: 9, scope: !2370)
!2569 = !{!"1264"}
!2570 = !DILocation(line: 135, column: 2, scope: !2370)
!2571 = !{!"1265"}
!2572 = !DILocation(line: 135, column: 7, scope: !2370)
!2573 = !{!"1266"}
!2574 = !DILocation(line: 136, column: 25, scope: !2370)
!2575 = !{!"1267"}
!2576 = !{!"1268"}
!2577 = !DILocation(line: 136, column: 6, scope: !2370)
!2578 = !{!"1269"}
!2579 = !DILocation(line: 136, column: 35, scope: !2370)
!2580 = !{!"1270"}
!2581 = !DILocation(line: 136, column: 30, scope: !2370)
!2582 = !{!"1271"}
!2583 = !DILocation(line: 136, column: 47, scope: !2370)
!2584 = !{!"1272"}
!2585 = !DILocation(line: 136, column: 44, scope: !2370)
!2586 = !{!"1273"}
!2587 = !DILocation(line: 136, column: 42, scope: !2370)
!2588 = !{!"1274"}
!2589 = !{!"1275"}
!2590 = !DILocation(line: 137, column: 9, scope: !2370)
!2591 = !{!"1276"}
!2592 = !DILocation(line: 137, column: 2, scope: !2370)
!2593 = !{!"1277"}
!2594 = !DILocation(line: 137, column: 7, scope: !2370)
!2595 = !{!"1278"}
!2596 = !DILocation(line: 138, column: 25, scope: !2370)
!2597 = !{!"1279"}
!2598 = !{!"1280"}
!2599 = !DILocation(line: 138, column: 6, scope: !2370)
!2600 = !{!"1281"}
!2601 = !DILocation(line: 138, column: 36, scope: !2370)
!2602 = !{!"1282"}
!2603 = !DILocation(line: 138, column: 43, scope: !2370)
!2604 = !{!"1283"}
!2605 = !DILocation(line: 138, column: 30, scope: !2370)
!2606 = !{!"1284"}
!2607 = !{!"1285"}
!2608 = !DILocation(line: 139, column: 9, scope: !2370)
!2609 = !{!"1286"}
!2610 = !DILocation(line: 139, column: 2, scope: !2370)
!2611 = !{!"1287"}
!2612 = !DILocation(line: 139, column: 7, scope: !2370)
!2613 = !{!"1288"}
!2614 = !DILocation(line: 140, column: 13, scope: !2370)
!2615 = !{!"1289"}
!2616 = !DILocation(line: 140, column: 20, scope: !2370)
!2617 = !{!"1290"}
!2618 = !DILocation(line: 140, column: 40, scope: !2370)
!2619 = !{!"1291"}
!2620 = !DILocation(line: 140, column: 47, scope: !2370)
!2621 = !{!"1292"}
!2622 = !DILocation(line: 140, column: 26, scope: !2370)
!2623 = !{!"1293"}
!2624 = !DILocation(line: 140, column: 24, scope: !2370)
!2625 = !{!"1294"}
!2626 = !DILocation(line: 140, column: 2, scope: !2370)
!2627 = !{!"1295"}
!2628 = !DILocation(line: 140, column: 7, scope: !2370)
!2629 = !{!"1296"}
!2630 = !{!"1297"}
!2631 = !{!"1298"}
!2632 = !DILocation(line: 172, column: 1, scope: !2370)
!2633 = !{!"1299"}
!2634 = distinct !DISubprogram(name: "f256_sub", scope: !3, file: !3, line: 178, type: !1849, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2635 = !DILocalVariable(name: "d", arg: 1, scope: !2634, file: !3, line: 178, type: !38)
!2636 = !DILocation(line: 0, scope: !2634)
!2637 = !{!"1300"}
!2638 = !DILocalVariable(name: "a", arg: 2, scope: !2634, file: !3, line: 178, type: !39)
!2639 = !{!"1301"}
!2640 = !DILocalVariable(name: "b", arg: 3, scope: !2634, file: !3, line: 178, type: !39)
!2641 = !{!"1302"}
!2642 = !DILocation(line: 185, column: 25, scope: !2634)
!2643 = !{!"1303"}
!2644 = !{!"1304"}
!2645 = !DILocation(line: 185, column: 6, scope: !2634)
!2646 = !{!"1305"}
!2647 = !DILocation(line: 185, column: 32, scope: !2634)
!2648 = !{!"1306"}
!2649 = !{!"1307"}
!2650 = !{!"1308"}
!2651 = !DILocation(line: 185, column: 30, scope: !2634)
!2652 = !{!"1309"}
!2653 = !DILocalVariable(name: "w", scope: !2634, file: !3, line: 182, type: !18)
!2654 = !{!"1310"}
!2655 = !DILocation(line: 186, column: 9, scope: !2634)
!2656 = !{!"1311"}
!2657 = !DILocation(line: 186, column: 2, scope: !2634)
!2658 = !{!"1312"}
!2659 = !DILocation(line: 186, column: 7, scope: !2634)
!2660 = !{!"1313"}
!2661 = !DILocation(line: 187, column: 25, scope: !2634)
!2662 = !{!"1314"}
!2663 = !{!"1315"}
!2664 = !DILocation(line: 187, column: 6, scope: !2634)
!2665 = !{!"1316"}
!2666 = !DILocation(line: 187, column: 32, scope: !2634)
!2667 = !{!"1317"}
!2668 = !{!"1318"}
!2669 = !{!"1319"}
!2670 = !DILocation(line: 187, column: 30, scope: !2634)
!2671 = !{!"1320"}
!2672 = !DILocation(line: 187, column: 43, scope: !2634)
!2673 = !{!"1321"}
!2674 = !DILocation(line: 187, column: 50, scope: !2634)
!2675 = !{!"1322"}
!2676 = !DILocation(line: 187, column: 37, scope: !2634)
!2677 = !{!"1323"}
!2678 = !{!"1324"}
!2679 = !DILocation(line: 188, column: 9, scope: !2634)
!2680 = !{!"1325"}
!2681 = !DILocation(line: 188, column: 2, scope: !2634)
!2682 = !{!"1326"}
!2683 = !DILocation(line: 188, column: 7, scope: !2634)
!2684 = !{!"1327"}
!2685 = !DILocation(line: 189, column: 25, scope: !2634)
!2686 = !{!"1328"}
!2687 = !{!"1329"}
!2688 = !DILocation(line: 189, column: 6, scope: !2634)
!2689 = !{!"1330"}
!2690 = !DILocation(line: 189, column: 32, scope: !2634)
!2691 = !{!"1331"}
!2692 = !{!"1332"}
!2693 = !{!"1333"}
!2694 = !DILocation(line: 189, column: 30, scope: !2634)
!2695 = !{!"1334"}
!2696 = !DILocation(line: 189, column: 43, scope: !2634)
!2697 = !{!"1335"}
!2698 = !DILocation(line: 189, column: 50, scope: !2634)
!2699 = !{!"1336"}
!2700 = !DILocation(line: 189, column: 37, scope: !2634)
!2701 = !{!"1337"}
!2702 = !{!"1338"}
!2703 = !DILocation(line: 190, column: 9, scope: !2634)
!2704 = !{!"1339"}
!2705 = !DILocation(line: 190, column: 2, scope: !2634)
!2706 = !{!"1340"}
!2707 = !DILocation(line: 190, column: 7, scope: !2634)
!2708 = !{!"1341"}
!2709 = !DILocation(line: 191, column: 25, scope: !2634)
!2710 = !{!"1342"}
!2711 = !{!"1343"}
!2712 = !DILocation(line: 191, column: 6, scope: !2634)
!2713 = !{!"1344"}
!2714 = !DILocation(line: 191, column: 32, scope: !2634)
!2715 = !{!"1345"}
!2716 = !{!"1346"}
!2717 = !{!"1347"}
!2718 = !DILocation(line: 191, column: 30, scope: !2634)
!2719 = !{!"1348"}
!2720 = !DILocation(line: 191, column: 43, scope: !2634)
!2721 = !{!"1349"}
!2722 = !DILocation(line: 191, column: 50, scope: !2634)
!2723 = !{!"1350"}
!2724 = !DILocation(line: 191, column: 37, scope: !2634)
!2725 = !{!"1351"}
!2726 = !{!"1352"}
!2727 = !DILocation(line: 192, column: 9, scope: !2634)
!2728 = !{!"1353"}
!2729 = !DILocation(line: 192, column: 2, scope: !2634)
!2730 = !{!"1354"}
!2731 = !DILocation(line: 192, column: 7, scope: !2634)
!2732 = !{!"1355"}
!2733 = !DILocation(line: 193, column: 19, scope: !2634)
!2734 = !{!"1356"}
!2735 = !DILocation(line: 193, column: 6, scope: !2634)
!2736 = !{!"1357"}
!2737 = !DILocation(line: 193, column: 26, scope: !2634)
!2738 = !{!"1358"}
!2739 = !DILocalVariable(name: "t", scope: !2634, file: !3, line: 183, type: !15)
!2740 = !{!"1359"}
!2741 = !DILocation(line: 199, column: 25, scope: !2634)
!2742 = !{!"1360"}
!2743 = !{!"1361"}
!2744 = !DILocation(line: 199, column: 6, scope: !2634)
!2745 = !{!"1362"}
!2746 = !DILocation(line: 199, column: 32, scope: !2634)
!2747 = !{!"1363"}
!2748 = !DILocation(line: 199, column: 30, scope: !2634)
!2749 = !{!"1364"}
!2750 = !{!"1365"}
!2751 = !DILocation(line: 200, column: 9, scope: !2634)
!2752 = !{!"1366"}
!2753 = !DILocation(line: 200, column: 2, scope: !2634)
!2754 = !{!"1367"}
!2755 = !DILocation(line: 200, column: 7, scope: !2634)
!2756 = !{!"1368"}
!2757 = !DILocation(line: 201, column: 25, scope: !2634)
!2758 = !{!"1369"}
!2759 = !{!"1370"}
!2760 = !DILocation(line: 201, column: 6, scope: !2634)
!2761 = !{!"1371"}
!2762 = !DILocation(line: 201, column: 35, scope: !2634)
!2763 = !{!"1372"}
!2764 = !DILocation(line: 201, column: 32, scope: !2634)
!2765 = !{!"1373"}
!2766 = !DILocation(line: 201, column: 30, scope: !2634)
!2767 = !{!"1374"}
!2768 = !DILocation(line: 201, column: 48, scope: !2634)
!2769 = !{!"1375"}
!2770 = !DILocation(line: 201, column: 55, scope: !2634)
!2771 = !{!"1376"}
!2772 = !DILocation(line: 201, column: 42, scope: !2634)
!2773 = !{!"1377"}
!2774 = !{!"1378"}
!2775 = !DILocation(line: 202, column: 9, scope: !2634)
!2776 = !{!"1379"}
!2777 = !DILocation(line: 202, column: 2, scope: !2634)
!2778 = !{!"1380"}
!2779 = !DILocation(line: 202, column: 7, scope: !2634)
!2780 = !{!"1381"}
!2781 = !DILocation(line: 204, column: 25, scope: !2634)
!2782 = !{!"1382"}
!2783 = !{!"1383"}
!2784 = !DILocation(line: 204, column: 6, scope: !2634)
!2785 = !{!"1384"}
!2786 = !DILocation(line: 204, column: 35, scope: !2634)
!2787 = !{!"1385"}
!2788 = !DILocation(line: 204, column: 30, scope: !2634)
!2789 = !{!"1386"}
!2790 = !{!"1387"}
!2791 = !DILocation(line: 205, column: 9, scope: !2634)
!2792 = !{!"1388"}
!2793 = !DILocation(line: 205, column: 2, scope: !2634)
!2794 = !{!"1389"}
!2795 = !DILocation(line: 205, column: 7, scope: !2634)
!2796 = !{!"1390"}
!2797 = !DILocation(line: 207, column: 25, scope: !2634)
!2798 = !{!"1391"}
!2799 = !{!"1392"}
!2800 = !DILocation(line: 207, column: 6, scope: !2634)
!2801 = !{!"1393"}
!2802 = !DILocation(line: 207, column: 35, scope: !2634)
!2803 = !{!"1394"}
!2804 = !DILocation(line: 207, column: 30, scope: !2634)
!2805 = !{!"1395"}
!2806 = !DILocation(line: 207, column: 47, scope: !2634)
!2807 = !{!"1396"}
!2808 = !DILocation(line: 207, column: 44, scope: !2634)
!2809 = !{!"1397"}
!2810 = !DILocation(line: 207, column: 42, scope: !2634)
!2811 = !{!"1398"}
!2812 = !DILocation(line: 207, column: 56, scope: !2634)
!2813 = !{!"1399"}
!2814 = !DILocation(line: 207, column: 54, scope: !2634)
!2815 = !{!"1400"}
!2816 = !{!"1401"}
!2817 = !DILocation(line: 208, column: 9, scope: !2634)
!2818 = !{!"1402"}
!2819 = !DILocation(line: 208, column: 2, scope: !2634)
!2820 = !{!"1403"}
!2821 = !DILocation(line: 208, column: 7, scope: !2634)
!2822 = !{!"1404"}
!2823 = !DILocation(line: 209, column: 19, scope: !2634)
!2824 = !{!"1405"}
!2825 = !DILocation(line: 209, column: 6, scope: !2634)
!2826 = !{!"1406"}
!2827 = !DILocation(line: 209, column: 26, scope: !2634)
!2828 = !{!"1407"}
!2829 = !{!"1408"}
!2830 = !DILocation(line: 215, column: 25, scope: !2634)
!2831 = !{!"1409"}
!2832 = !{!"1410"}
!2833 = !DILocation(line: 215, column: 6, scope: !2634)
!2834 = !{!"1411"}
!2835 = !DILocation(line: 215, column: 32, scope: !2634)
!2836 = !{!"1412"}
!2837 = !DILocation(line: 215, column: 30, scope: !2634)
!2838 = !{!"1413"}
!2839 = !{!"1414"}
!2840 = !DILocation(line: 216, column: 9, scope: !2634)
!2841 = !{!"1415"}
!2842 = !DILocation(line: 216, column: 2, scope: !2634)
!2843 = !{!"1416"}
!2844 = !DILocation(line: 216, column: 7, scope: !2634)
!2845 = !{!"1417"}
!2846 = !DILocation(line: 217, column: 25, scope: !2634)
!2847 = !{!"1418"}
!2848 = !{!"1419"}
!2849 = !DILocation(line: 217, column: 6, scope: !2634)
!2850 = !{!"1420"}
!2851 = !DILocation(line: 217, column: 35, scope: !2634)
!2852 = !{!"1421"}
!2853 = !DILocation(line: 217, column: 32, scope: !2634)
!2854 = !{!"1422"}
!2855 = !DILocation(line: 217, column: 30, scope: !2634)
!2856 = !{!"1423"}
!2857 = !DILocation(line: 217, column: 48, scope: !2634)
!2858 = !{!"1424"}
!2859 = !DILocation(line: 217, column: 55, scope: !2634)
!2860 = !{!"1425"}
!2861 = !DILocation(line: 217, column: 42, scope: !2634)
!2862 = !{!"1426"}
!2863 = !{!"1427"}
!2864 = !DILocation(line: 218, column: 9, scope: !2634)
!2865 = !{!"1428"}
!2866 = !DILocation(line: 218, column: 2, scope: !2634)
!2867 = !{!"1429"}
!2868 = !DILocation(line: 218, column: 7, scope: !2634)
!2869 = !{!"1430"}
!2870 = !DILocation(line: 219, column: 25, scope: !2634)
!2871 = !{!"1431"}
!2872 = !{!"1432"}
!2873 = !DILocation(line: 219, column: 6, scope: !2634)
!2874 = !{!"1433"}
!2875 = !DILocation(line: 219, column: 35, scope: !2634)
!2876 = !{!"1434"}
!2877 = !DILocation(line: 219, column: 30, scope: !2634)
!2878 = !{!"1435"}
!2879 = !{!"1436"}
!2880 = !DILocation(line: 220, column: 9, scope: !2634)
!2881 = !{!"1437"}
!2882 = !DILocation(line: 220, column: 2, scope: !2634)
!2883 = !{!"1438"}
!2884 = !DILocation(line: 220, column: 7, scope: !2634)
!2885 = !{!"1439"}
!2886 = !DILocation(line: 221, column: 23, scope: !2634)
!2887 = !{!"1440"}
!2888 = !DILocation(line: 221, column: 10, scope: !2634)
!2889 = !{!"1441"}
!2890 = !DILocation(line: 221, column: 35, scope: !2634)
!2891 = !{!"1442"}
!2892 = !DILocation(line: 221, column: 30, scope: !2634)
!2893 = !{!"1443"}
!2894 = !DILocation(line: 221, column: 42, scope: !2634)
!2895 = !{!"1444"}
!2896 = !DILocation(line: 221, column: 2, scope: !2634)
!2897 = !{!"1445"}
!2898 = !DILocation(line: 221, column: 7, scope: !2634)
!2899 = !{!"1446"}
!2900 = !{!"1447"}
!2901 = !{!"1448"}
!2902 = !DILocation(line: 253, column: 1, scope: !2634)
!2903 = !{!"1449"}
!2904 = distinct !DISubprogram(name: "NOT", scope: !265, file: !265, line: 761, type: !2905, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!11, !11}
!2907 = !DILocalVariable(name: "ctl", arg: 1, scope: !2904, file: !265, line: 761, type: !11)
!2908 = !DILocation(line: 0, scope: !2904)
!2909 = !{!"1450"}
!2910 = !DILocation(line: 763, column: 13, scope: !2904)
!2911 = !{!"1451"}
!2912 = !DILocation(line: 763, column: 2, scope: !2904)
!2913 = !{!"1452"}
!2914 = distinct !DISubprogram(name: "point_mul_inner", scope: !3, file: !3, line: 1269, type: !2915, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !526, !2917, !73, !75}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!2918 = !{!"1453"}
!2919 = !{!"1454"}
!2920 = !{!"1455"}
!2921 = !DILocalVariable(name: "R", arg: 1, scope: !2914, file: !3, line: 1269, type: !526)
!2922 = !DILocation(line: 0, scope: !2914)
!2923 = !{!"1456"}
!2924 = !DILocalVariable(name: "W", arg: 2, scope: !2914, file: !3, line: 1269, type: !2917)
!2925 = !{!"1457"}
!2926 = !DILocalVariable(name: "k", arg: 3, scope: !2914, file: !3, line: 1270, type: !73)
!2927 = !{!"1458"}
!2928 = !DILocalVariable(name: "klen", arg: 4, scope: !2914, file: !3, line: 1270, type: !75)
!2929 = !{!"1459"}
!2930 = !DILocalVariable(name: "Q", scope: !2914, file: !3, line: 1272, type: !331)
!2931 = !DILocation(line: 1272, column: 16, scope: !2914)
!2932 = !{!"1460"}
!2933 = !DILocation(line: 1275, column: 2, scope: !2914)
!2934 = !{!"1461"}
!2935 = !{!"1462"}
!2936 = !DILocalVariable(name: "qz", scope: !2914, file: !3, line: 1273, type: !11)
!2937 = !{!"1463"}
!2938 = !DILocation(line: 1277, column: 2, scope: !2914)
!2939 = !{!"1464"}
!2940 = !DILocation(line: 1276, column: 5, scope: !2914)
!2941 = !{!"1465"}
!2942 = !{!"1466"}
!2943 = !{!"1467"}
!2944 = !{!"1468"}
!2945 = !{!"1469"}
!2946 = !{!"1470"}
!2947 = !DILocation(line: 1277, column: 14, scope: !2914)
!2948 = !{!"1471"}
!2949 = !{!"1472"}
!2950 = !DILocation(line: 1277, column: 17, scope: !2914)
!2951 = !{!"1473"}
!2952 = !{!"1474"}
!2953 = !DILocation(line: 1281, column: 11, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1277, column: 22)
!2955 = !{!"1475"}
!2956 = !{!"1476"}
!2957 = !DILocation(line: 1281, column: 8, scope: !2954)
!2958 = !{!"1477"}
!2959 = !{!"1478"}
!2960 = !DILocalVariable(name: "bk", scope: !2954, file: !3, line: 1279, type: !14)
!2961 = !DILocation(line: 0, scope: !2954)
!2962 = !{!"1479"}
!2963 = !DILocalVariable(name: "i", scope: !2954, file: !3, line: 1278, type: !10)
!2964 = !{!"1480"}
!2965 = !DILocation(line: 1282, column: 8, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1282, column: 3)
!2967 = !{!"1481"}
!2968 = !{!"1482"}
!2969 = !DILocation(line: 0, scope: !2966)
!2970 = !{!"1483"}
!2971 = !{!"1484"}
!2972 = !{!"1485"}
!2973 = !{!"1486"}
!2974 = !{!"1487"}
!2975 = !DILocation(line: 1282, column: 17, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 1282, column: 3)
!2977 = !{!"1488"}
!2978 = !DILocation(line: 1282, column: 3, scope: !2966)
!2979 = !{!"1489"}
!2980 = !DILocalVariable(name: "T", scope: !2981, file: !3, line: 1285, type: !55)
!2981 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 1282, column: 28)
!2982 = !DILocation(line: 1285, column: 16, scope: !2981)
!2983 = !{!"1490"}
!2984 = !DILocalVariable(name: "U", scope: !2981, file: !3, line: 1286, type: !331)
!2985 = !DILocation(line: 1286, column: 18, scope: !2981)
!2986 = !{!"1491"}
!2987 = !DILocation(line: 1291, column: 4, scope: !2981)
!2988 = !{!"1492"}
!2989 = !DILocation(line: 1292, column: 4, scope: !2981)
!2990 = !{!"1493"}
!2991 = !DILocation(line: 1293, column: 4, scope: !2981)
!2992 = !{!"1494"}
!2993 = !DILocation(line: 1294, column: 4, scope: !2981)
!2994 = !{!"1495"}
!2995 = !DILocation(line: 1295, column: 15, scope: !2981)
!2996 = !{!"1496"}
!2997 = !DILocation(line: 1295, column: 21, scope: !2981)
!2998 = !{!"1497"}
!2999 = !DILocalVariable(name: "bits", scope: !2981, file: !3, line: 1283, type: !11)
!3000 = !DILocation(line: 0, scope: !2981)
!3001 = !{!"1498"}
!3002 = !DILocation(line: 1296, column: 10, scope: !2981)
!3003 = !{!"1499"}
!3004 = !DILocalVariable(name: "bnz", scope: !2981, file: !3, line: 1284, type: !11)
!3005 = !{!"1500"}
!3006 = !DILocation(line: 1304, column: 4, scope: !2981)
!3007 = !{!"1501"}
!3008 = !{!"1502"}
!3009 = !DILocalVariable(name: "n", scope: !2981, file: !3, line: 1287, type: !11)
!3010 = !{!"1503"}
!3011 = !DILocation(line: 1305, column: 9, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 1305, column: 4)
!3013 = !{!"1504"}
!3014 = !DILocation(line: 0, scope: !3012)
!3015 = !{!"1505"}
!3016 = !{!"1506"}
!3017 = !DILocation(line: 1305, column: 18, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 1305, column: 4)
!3019 = !{!"1507"}
!3020 = !DILocation(line: 1305, column: 4, scope: !3012)
!3021 = !{!"1508"}
!3022 = !DILocation(line: 1306, column: 31, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1305, column: 30)
!3024 = !{!"1509"}
!3025 = !DILocation(line: 1306, column: 20, scope: !3023)
!3026 = !{!"1510"}
!3027 = !DILocation(line: 1306, column: 10, scope: !3023)
!3028 = !{!"1511"}
!3029 = !DILocation(line: 1306, column: 9, scope: !3023)
!3030 = !{!"1512"}
!3031 = !DILocalVariable(name: "m", scope: !2981, file: !3, line: 1289, type: !15)
!3032 = !{!"1513"}
!3033 = !DILocation(line: 1307, column: 19, scope: !3023)
!3034 = !{!"1514"}
!3035 = !{!"1515"}
!3036 = !DILocation(line: 1307, column: 24, scope: !3023)
!3037 = !{!"1516"}
!3038 = !{!"1517"}
!3039 = !{!"1518"}
!3040 = !DILocation(line: 1307, column: 17, scope: !3023)
!3041 = !{!"1519"}
!3042 = !DILocation(line: 1307, column: 7, scope: !3023)
!3043 = !{!"1520"}
!3044 = !DILocation(line: 1307, column: 5, scope: !3023)
!3045 = !{!"1521"}
!3046 = !DILocation(line: 1307, column: 12, scope: !3023)
!3047 = !{!"1522"}
!3048 = !{!"1523"}
!3049 = !{!"1524"}
!3050 = !DILocation(line: 1308, column: 19, scope: !3023)
!3051 = !{!"1525"}
!3052 = !{!"1526"}
!3053 = !DILocation(line: 1308, column: 24, scope: !3023)
!3054 = !{!"1527"}
!3055 = !{!"1528"}
!3056 = !{!"1529"}
!3057 = !DILocation(line: 1308, column: 17, scope: !3023)
!3058 = !{!"1530"}
!3059 = !DILocation(line: 1308, column: 7, scope: !3023)
!3060 = !{!"1531"}
!3061 = !DILocation(line: 1308, column: 5, scope: !3023)
!3062 = !{!"1532"}
!3063 = !DILocation(line: 1308, column: 12, scope: !3023)
!3064 = !{!"1533"}
!3065 = !{!"1534"}
!3066 = !{!"1535"}
!3067 = !DILocation(line: 1309, column: 19, scope: !3023)
!3068 = !{!"1536"}
!3069 = !{!"1537"}
!3070 = !DILocation(line: 1309, column: 24, scope: !3023)
!3071 = !{!"1538"}
!3072 = !{!"1539"}
!3073 = !{!"1540"}
!3074 = !DILocation(line: 1309, column: 17, scope: !3023)
!3075 = !{!"1541"}
!3076 = !DILocation(line: 1309, column: 7, scope: !3023)
!3077 = !{!"1542"}
!3078 = !DILocation(line: 1309, column: 5, scope: !3023)
!3079 = !{!"1543"}
!3080 = !DILocation(line: 1309, column: 12, scope: !3023)
!3081 = !{!"1544"}
!3082 = !{!"1545"}
!3083 = !{!"1546"}
!3084 = !DILocation(line: 1310, column: 19, scope: !3023)
!3085 = !{!"1547"}
!3086 = !{!"1548"}
!3087 = !DILocation(line: 1310, column: 24, scope: !3023)
!3088 = !{!"1549"}
!3089 = !{!"1550"}
!3090 = !{!"1551"}
!3091 = !DILocation(line: 1310, column: 17, scope: !3023)
!3092 = !{!"1552"}
!3093 = !DILocation(line: 1310, column: 7, scope: !3023)
!3094 = !{!"1553"}
!3095 = !DILocation(line: 1310, column: 5, scope: !3023)
!3096 = !{!"1554"}
!3097 = !DILocation(line: 1310, column: 12, scope: !3023)
!3098 = !{!"1555"}
!3099 = !{!"1556"}
!3100 = !{!"1557"}
!3101 = !DILocation(line: 1311, column: 19, scope: !3023)
!3102 = !{!"1558"}
!3103 = !{!"1559"}
!3104 = !DILocation(line: 1311, column: 24, scope: !3023)
!3105 = !{!"1560"}
!3106 = !{!"1561"}
!3107 = !{!"1562"}
!3108 = !DILocation(line: 1311, column: 17, scope: !3023)
!3109 = !{!"1563"}
!3110 = !DILocation(line: 1311, column: 7, scope: !3023)
!3111 = !{!"1564"}
!3112 = !DILocation(line: 1311, column: 5, scope: !3023)
!3113 = !{!"1565"}
!3114 = !DILocation(line: 1311, column: 12, scope: !3023)
!3115 = !{!"1566"}
!3116 = !{!"1567"}
!3117 = !{!"1568"}
!3118 = !DILocation(line: 1312, column: 19, scope: !3023)
!3119 = !{!"1569"}
!3120 = !{!"1570"}
!3121 = !DILocation(line: 1312, column: 24, scope: !3023)
!3122 = !{!"1571"}
!3123 = !{!"1572"}
!3124 = !{!"1573"}
!3125 = !DILocation(line: 1312, column: 17, scope: !3023)
!3126 = !{!"1574"}
!3127 = !DILocation(line: 1312, column: 7, scope: !3023)
!3128 = !{!"1575"}
!3129 = !DILocation(line: 1312, column: 5, scope: !3023)
!3130 = !{!"1576"}
!3131 = !DILocation(line: 1312, column: 12, scope: !3023)
!3132 = !{!"1577"}
!3133 = !{!"1578"}
!3134 = !{!"1579"}
!3135 = !DILocation(line: 1313, column: 19, scope: !3023)
!3136 = !{!"1580"}
!3137 = !{!"1581"}
!3138 = !DILocation(line: 1313, column: 24, scope: !3023)
!3139 = !{!"1582"}
!3140 = !{!"1583"}
!3141 = !{!"1584"}
!3142 = !DILocation(line: 1313, column: 17, scope: !3023)
!3143 = !{!"1585"}
!3144 = !DILocation(line: 1313, column: 7, scope: !3023)
!3145 = !{!"1586"}
!3146 = !DILocation(line: 1313, column: 5, scope: !3023)
!3147 = !{!"1587"}
!3148 = !DILocation(line: 1313, column: 12, scope: !3023)
!3149 = !{!"1588"}
!3150 = !{!"1589"}
!3151 = !{!"1590"}
!3152 = !DILocation(line: 1314, column: 19, scope: !3023)
!3153 = !{!"1591"}
!3154 = !{!"1592"}
!3155 = !DILocation(line: 1314, column: 24, scope: !3023)
!3156 = !{!"1593"}
!3157 = !{!"1594"}
!3158 = !{!"1595"}
!3159 = !DILocation(line: 1314, column: 17, scope: !3023)
!3160 = !{!"1596"}
!3161 = !DILocation(line: 1314, column: 7, scope: !3023)
!3162 = !{!"1597"}
!3163 = !DILocation(line: 1314, column: 5, scope: !3023)
!3164 = !{!"1598"}
!3165 = !DILocation(line: 1314, column: 12, scope: !3023)
!3166 = !{!"1599"}
!3167 = !{!"1600"}
!3168 = !{!"1601"}
!3169 = !DILocation(line: 1315, column: 4, scope: !3023)
!3170 = !{!"1602"}
!3171 = !DILocation(line: 1305, column: 26, scope: !3018)
!3172 = !{!"1603"}
!3173 = !{!"1604"}
!3174 = !DILocation(line: 1305, column: 4, scope: !3018)
!3175 = distinct !{!3175, !3020, !3176, !260}
!3176 = !DILocation(line: 1315, column: 4, scope: !3012)
!3177 = !{!"1605"}
!3178 = !DILocation(line: 1317, column: 8, scope: !2981)
!3179 = !{!"1606"}
!3180 = !{!"1607"}
!3181 = !{!"1608"}
!3182 = !DILocation(line: 1318, column: 4, scope: !2981)
!3183 = !{!"1609"}
!3184 = !DILocation(line: 1324, column: 24, scope: !2981)
!3185 = !{!"1610"}
!3186 = !DILocation(line: 1324, column: 9, scope: !2981)
!3187 = !{!"1611"}
!3188 = !DILocation(line: 1324, column: 8, scope: !2981)
!3189 = !{!"1612"}
!3190 = !{!"1613"}
!3191 = !DILocalVariable(name: "j", scope: !2981, file: !3, line: 1288, type: !10)
!3192 = !{!"1614"}
!3193 = !DILocation(line: 1325, column: 9, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 1325, column: 4)
!3195 = !{!"1615"}
!3196 = !DILocation(line: 0, scope: !3194)
!3197 = !{!"1616"}
!3198 = !{!"1617"}
!3199 = !DILocation(line: 1325, column: 18, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 1325, column: 4)
!3201 = !{!"1618"}
!3202 = !DILocation(line: 1325, column: 4, scope: !3194)
!3203 = !{!"1619"}
!3204 = !DILocation(line: 1326, column: 21, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 1325, column: 29)
!3206 = !{!"1620"}
!3207 = !DILocation(line: 1326, column: 19, scope: !3205)
!3208 = !{!"1621"}
!3209 = !{!"1622"}
!3210 = !{!"1623"}
!3211 = !DILocation(line: 1326, column: 17, scope: !3205)
!3212 = !{!"1624"}
!3213 = !DILocation(line: 1326, column: 7, scope: !3205)
!3214 = !{!"1625"}
!3215 = !DILocation(line: 1326, column: 5, scope: !3205)
!3216 = !{!"1626"}
!3217 = !{!"1627"}
!3218 = !DILocation(line: 1326, column: 12, scope: !3205)
!3219 = !{!"1628"}
!3220 = !{!"1629"}
!3221 = !{!"1630"}
!3222 = !DILocation(line: 1327, column: 21, scope: !3205)
!3223 = !{!"1631"}
!3224 = !DILocation(line: 1327, column: 19, scope: !3205)
!3225 = !{!"1632"}
!3226 = !{!"1633"}
!3227 = !{!"1634"}
!3228 = !DILocation(line: 1327, column: 17, scope: !3205)
!3229 = !{!"1635"}
!3230 = !DILocation(line: 1327, column: 7, scope: !3205)
!3231 = !{!"1636"}
!3232 = !DILocation(line: 1327, column: 5, scope: !3205)
!3233 = !{!"1637"}
!3234 = !{!"1638"}
!3235 = !DILocation(line: 1327, column: 12, scope: !3205)
!3236 = !{!"1639"}
!3237 = !{!"1640"}
!3238 = !{!"1641"}
!3239 = !DILocation(line: 1328, column: 19, scope: !3205)
!3240 = !{!"1642"}
!3241 = !{!"1643"}
!3242 = !{!"1644"}
!3243 = !DILocation(line: 1328, column: 17, scope: !3205)
!3244 = !{!"1645"}
!3245 = !DILocation(line: 1328, column: 7, scope: !3205)
!3246 = !{!"1646"}
!3247 = !DILocation(line: 1328, column: 5, scope: !3205)
!3248 = !{!"1647"}
!3249 = !{!"1648"}
!3250 = !DILocation(line: 1328, column: 12, scope: !3205)
!3251 = !{!"1649"}
!3252 = !{!"1650"}
!3253 = !{!"1651"}
!3254 = !DILocation(line: 1329, column: 4, scope: !3205)
!3255 = !{!"1652"}
!3256 = !DILocation(line: 1325, column: 25, scope: !3200)
!3257 = !{!"1653"}
!3258 = !{!"1654"}
!3259 = !DILocation(line: 1325, column: 4, scope: !3200)
!3260 = distinct !{!3260, !3202, !3261, !260}
!3261 = !DILocation(line: 1329, column: 4, scope: !3194)
!3262 = !{!"1655"}
!3263 = !DILocation(line: 1330, column: 16, scope: !2981)
!3264 = !{!"1656"}
!3265 = !DILocation(line: 1330, column: 14, scope: !2981)
!3266 = !{!"1657"}
!3267 = !DILocation(line: 1330, column: 21, scope: !2981)
!3268 = !{!"1658"}
!3269 = !DILocation(line: 1330, column: 25, scope: !2981)
!3270 = !{!"1659"}
!3271 = !DILocation(line: 1330, column: 4, scope: !2981)
!3272 = !{!"1660"}
!3273 = !DILocation(line: 1331, column: 10, scope: !2981)
!3274 = !{!"1661"}
!3275 = !DILocation(line: 1331, column: 7, scope: !2981)
!3276 = !{!"1662"}
!3277 = !{!"1663"}
!3278 = !DILocation(line: 1332, column: 7, scope: !2981)
!3279 = !{!"1664"}
!3280 = !{!"1665"}
!3281 = !DILocation(line: 1333, column: 3, scope: !2981)
!3282 = !{!"1666"}
!3283 = !DILocation(line: 1282, column: 24, scope: !2976)
!3284 = !{!"1667"}
!3285 = !{!"1668"}
!3286 = !DILocation(line: 1282, column: 3, scope: !2976)
!3287 = distinct !{!3287, !2978, !3288, !260}
!3288 = !DILocation(line: 1333, column: 3, scope: !2966)
!3289 = !{!"1669"}
!3290 = distinct !{!3290, !2938, !3291, !260}
!3291 = !DILocation(line: 1334, column: 2, scope: !2914)
!3292 = !{!"1670"}
!3293 = !DILocation(line: 1335, column: 7, scope: !2914)
!3294 = !{!"1671"}
!3295 = !{!"1672"}
!3296 = !{!"1673"}
!3297 = !DILocation(line: 1336, column: 1, scope: !2914)
!3298 = !{!"1674"}
!3299 = distinct !DISubprogram(name: "p256_add_mixed", scope: !3, file: !3, line: 996, type: !3300, scopeLine: 997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!11, !526, !2917}
!3302 = !{!"1675"}
!3303 = !{!"1676"}
!3304 = !{!"1677"}
!3305 = !{!"1678"}
!3306 = !{!"1679"}
!3307 = !{!"1680"}
!3308 = !{!"1681"}
!3309 = !DILocalVariable(name: "P1", arg: 1, scope: !3299, file: !3, line: 996, type: !526)
!3310 = !DILocation(line: 0, scope: !3299)
!3311 = !{!"1682"}
!3312 = !DILocalVariable(name: "P2", arg: 2, scope: !3299, file: !3, line: 996, type: !2917)
!3313 = !{!"1683"}
!3314 = !DILocalVariable(name: "t1", scope: !3299, file: !3, line: 1011, type: !59)
!3315 = !DILocation(line: 1011, column: 11, scope: !3299)
!3316 = !{!"1684"}
!3317 = !DILocalVariable(name: "t2", scope: !3299, file: !3, line: 1011, type: !59)
!3318 = !DILocation(line: 1011, column: 18, scope: !3299)
!3319 = !{!"1685"}
!3320 = !DILocalVariable(name: "t3", scope: !3299, file: !3, line: 1011, type: !59)
!3321 = !DILocation(line: 1011, column: 25, scope: !3299)
!3322 = !{!"1686"}
!3323 = !DILocalVariable(name: "t4", scope: !3299, file: !3, line: 1011, type: !59)
!3324 = !DILocation(line: 1011, column: 32, scope: !3299)
!3325 = !{!"1687"}
!3326 = !DILocalVariable(name: "t5", scope: !3299, file: !3, line: 1011, type: !59)
!3327 = !DILocation(line: 1011, column: 39, scope: !3299)
!3328 = !{!"1688"}
!3329 = !DILocalVariable(name: "t6", scope: !3299, file: !3, line: 1011, type: !59)
!3330 = !DILocation(line: 1011, column: 46, scope: !3299)
!3331 = !{!"1689"}
!3332 = !DILocalVariable(name: "t7", scope: !3299, file: !3, line: 1011, type: !59)
!3333 = !DILocation(line: 1011, column: 53, scope: !3299)
!3334 = !{!"1690"}
!3335 = !DILocation(line: 1017, column: 2, scope: !3299)
!3336 = !{!"1691"}
!3337 = !{!"1692"}
!3338 = !DILocation(line: 1017, column: 17, scope: !3299)
!3339 = !{!"1693"}
!3340 = !{!"1694"}
!3341 = !{!"1695"}
!3342 = !{!"1696"}
!3343 = !DILocation(line: 1018, column: 2, scope: !3299)
!3344 = !{!"1697"}
!3345 = !{!"1698"}
!3346 = !DILocation(line: 1018, column: 17, scope: !3299)
!3347 = !{!"1699"}
!3348 = !{!"1700"}
!3349 = !{!"1701"}
!3350 = !{!"1702"}
!3351 = !DILocation(line: 1023, column: 19, scope: !3299)
!3352 = !{!"1703"}
!3353 = !DILocation(line: 1023, column: 27, scope: !3299)
!3354 = !{!"1704"}
!3355 = !DILocation(line: 1023, column: 23, scope: !3299)
!3356 = !{!"1705"}
!3357 = !DILocation(line: 1023, column: 2, scope: !3299)
!3358 = !{!"1706"}
!3359 = !DILocation(line: 1024, column: 16, scope: !3299)
!3360 = !{!"1707"}
!3361 = !DILocation(line: 1024, column: 24, scope: !3299)
!3362 = !{!"1708"}
!3363 = !DILocation(line: 1024, column: 20, scope: !3299)
!3364 = !{!"1709"}
!3365 = !DILocation(line: 1024, column: 27, scope: !3299)
!3366 = !{!"1710"}
!3367 = !DILocation(line: 1024, column: 2, scope: !3299)
!3368 = !{!"1711"}
!3369 = !DILocation(line: 1025, column: 16, scope: !3299)
!3370 = !{!"1712"}
!3371 = !DILocation(line: 1025, column: 24, scope: !3299)
!3372 = !{!"1713"}
!3373 = !DILocation(line: 1025, column: 20, scope: !3299)
!3374 = !{!"1714"}
!3375 = !DILocation(line: 1025, column: 27, scope: !3299)
!3376 = !{!"1715"}
!3377 = !DILocation(line: 1025, column: 2, scope: !3299)
!3378 = !{!"1716"}
!3379 = !DILocation(line: 1026, column: 16, scope: !3299)
!3380 = !{!"1717"}
!3381 = !DILocation(line: 1026, column: 24, scope: !3299)
!3382 = !{!"1718"}
!3383 = !DILocation(line: 1026, column: 20, scope: !3299)
!3384 = !{!"1719"}
!3385 = !DILocation(line: 1026, column: 27, scope: !3299)
!3386 = !{!"1720"}
!3387 = !DILocation(line: 1026, column: 2, scope: !3299)
!3388 = !{!"1721"}
!3389 = !DILocation(line: 1033, column: 11, scope: !3299)
!3390 = !{!"1722"}
!3391 = !DILocation(line: 1033, column: 15, scope: !3299)
!3392 = !{!"1723"}
!3393 = !DILocation(line: 1033, column: 19, scope: !3299)
!3394 = !{!"1724"}
!3395 = !DILocation(line: 1033, column: 2, scope: !3299)
!3396 = !{!"1725"}
!3397 = !DILocation(line: 1034, column: 11, scope: !3299)
!3398 = !{!"1726"}
!3399 = !DILocation(line: 1034, column: 15, scope: !3299)
!3400 = !{!"1727"}
!3401 = !DILocation(line: 1034, column: 19, scope: !3299)
!3402 = !{!"1728"}
!3403 = !DILocation(line: 1034, column: 2, scope: !3299)
!3404 = !{!"1729"}
!3405 = !DILocation(line: 1035, column: 20, scope: !3299)
!3406 = !{!"1730"}
!3407 = !DILocation(line: 1035, column: 2, scope: !3299)
!3408 = !{!"1731"}
!3409 = !DILocation(line: 1036, column: 7, scope: !3299)
!3410 = !{!"1732"}
!3411 = !{!"1733"}
!3412 = !DILocation(line: 1036, column: 15, scope: !3299)
!3413 = !{!"1734"}
!3414 = !{!"1735"}
!3415 = !DILocation(line: 1036, column: 13, scope: !3299)
!3416 = !{!"1736"}
!3417 = !DILocation(line: 1036, column: 23, scope: !3299)
!3418 = !{!"1737"}
!3419 = !{!"1738"}
!3420 = !DILocation(line: 1036, column: 21, scope: !3299)
!3421 = !{!"1739"}
!3422 = !DILocation(line: 1036, column: 31, scope: !3299)
!3423 = !{!"1740"}
!3424 = !{!"1741"}
!3425 = !DILocation(line: 1036, column: 29, scope: !3299)
!3426 = !{!"1742"}
!3427 = !DILocalVariable(name: "tt", scope: !3299, file: !3, line: 1011, type: !15)
!3428 = !{!"1743"}
!3429 = !DILocation(line: 1037, column: 28, scope: !3299)
!3430 = !{!"1744"}
!3431 = !DILocation(line: 1037, column: 22, scope: !3299)
!3432 = !{!"1745"}
!3433 = !DILocation(line: 1037, column: 8, scope: !3299)
!3434 = !{!"1746"}
!3435 = !DILocalVariable(name: "ret", scope: !3299, file: !3, line: 1012, type: !11)
!3436 = !{!"1747"}
!3437 = !DILocation(line: 1038, column: 15, scope: !3299)
!3438 = !{!"1748"}
!3439 = !DILocation(line: 1038, column: 13, scope: !3299)
!3440 = !{!"1749"}
!3441 = !DILocation(line: 1038, column: 21, scope: !3299)
!3442 = !{!"1750"}
!3443 = !{!"1751"}
!3444 = !DILocation(line: 1043, column: 19, scope: !3299)
!3445 = !{!"1752"}
!3446 = !DILocation(line: 1043, column: 23, scope: !3299)
!3447 = !{!"1753"}
!3448 = !DILocation(line: 1043, column: 2, scope: !3299)
!3449 = !{!"1754"}
!3450 = !DILocation(line: 1044, column: 16, scope: !3299)
!3451 = !{!"1755"}
!3452 = !DILocation(line: 1044, column: 20, scope: !3299)
!3453 = !{!"1756"}
!3454 = !DILocation(line: 1044, column: 24, scope: !3299)
!3455 = !{!"1757"}
!3456 = !DILocation(line: 1044, column: 2, scope: !3299)
!3457 = !{!"1758"}
!3458 = !DILocation(line: 1045, column: 16, scope: !3299)
!3459 = !{!"1759"}
!3460 = !DILocation(line: 1045, column: 20, scope: !3299)
!3461 = !{!"1760"}
!3462 = !DILocation(line: 1045, column: 24, scope: !3299)
!3463 = !{!"1761"}
!3464 = !DILocation(line: 1045, column: 2, scope: !3299)
!3465 = !{!"1762"}
!3466 = !DILocation(line: 1050, column: 23, scope: !3299)
!3467 = !{!"1763"}
!3468 = !DILocation(line: 1050, column: 19, scope: !3299)
!3469 = !{!"1764"}
!3470 = !DILocation(line: 1050, column: 26, scope: !3299)
!3471 = !{!"1765"}
!3472 = !DILocation(line: 1050, column: 2, scope: !3299)
!3473 = !{!"1766"}
!3474 = !DILocation(line: 1051, column: 15, scope: !3299)
!3475 = !{!"1767"}
!3476 = !DILocation(line: 1051, column: 11, scope: !3299)
!3477 = !{!"1768"}
!3478 = !DILocation(line: 1051, column: 22, scope: !3299)
!3479 = !{!"1769"}
!3480 = !DILocation(line: 1051, column: 18, scope: !3299)
!3481 = !{!"1770"}
!3482 = !DILocation(line: 1051, column: 25, scope: !3299)
!3483 = !{!"1771"}
!3484 = !DILocation(line: 1051, column: 2, scope: !3299)
!3485 = !{!"1772"}
!3486 = !DILocation(line: 1052, column: 15, scope: !3299)
!3487 = !{!"1773"}
!3488 = !DILocation(line: 1052, column: 11, scope: !3299)
!3489 = !{!"1774"}
!3490 = !DILocation(line: 1052, column: 22, scope: !3299)
!3491 = !{!"1775"}
!3492 = !DILocation(line: 1052, column: 18, scope: !3299)
!3493 = !{!"1776"}
!3494 = !DILocation(line: 1052, column: 25, scope: !3299)
!3495 = !{!"1777"}
!3496 = !DILocation(line: 1052, column: 2, scope: !3299)
!3497 = !{!"1778"}
!3498 = !DILocation(line: 1053, column: 15, scope: !3299)
!3499 = !{!"1779"}
!3500 = !DILocation(line: 1053, column: 11, scope: !3299)
!3501 = !{!"1780"}
!3502 = !DILocation(line: 1053, column: 22, scope: !3299)
!3503 = !{!"1781"}
!3504 = !DILocation(line: 1053, column: 18, scope: !3299)
!3505 = !{!"1782"}
!3506 = !DILocation(line: 1053, column: 25, scope: !3299)
!3507 = !{!"1783"}
!3508 = !DILocation(line: 1053, column: 2, scope: !3299)
!3509 = !{!"1784"}
!3510 = !DILocation(line: 1058, column: 11, scope: !3299)
!3511 = !{!"1785"}
!3512 = !DILocation(line: 1058, column: 15, scope: !3299)
!3513 = !{!"1786"}
!3514 = !DILocation(line: 1058, column: 23, scope: !3299)
!3515 = !{!"1787"}
!3516 = !DILocation(line: 1058, column: 19, scope: !3299)
!3517 = !{!"1788"}
!3518 = !DILocation(line: 1058, column: 2, scope: !3299)
!3519 = !{!"1789"}
!3520 = !DILocation(line: 1059, column: 20, scope: !3299)
!3521 = !{!"1790"}
!3522 = !DILocation(line: 1059, column: 16, scope: !3299)
!3523 = !{!"1791"}
!3524 = !DILocation(line: 1059, column: 23, scope: !3299)
!3525 = !{!"1792"}
!3526 = !DILocation(line: 1059, column: 27, scope: !3299)
!3527 = !{!"1793"}
!3528 = !DILocation(line: 1059, column: 2, scope: !3299)
!3529 = !{!"1794"}
!3530 = !DILocation(line: 1060, column: 16, scope: !3299)
!3531 = !{!"1795"}
!3532 = !DILocation(line: 1060, column: 20, scope: !3299)
!3533 = !{!"1796"}
!3534 = !DILocation(line: 1060, column: 24, scope: !3299)
!3535 = !{!"1797"}
!3536 = !DILocation(line: 1060, column: 2, scope: !3299)
!3537 = !{!"1798"}
!3538 = !DILocation(line: 1061, column: 15, scope: !3299)
!3539 = !{!"1799"}
!3540 = !DILocation(line: 1061, column: 11, scope: !3299)
!3541 = !{!"1800"}
!3542 = !DILocation(line: 1061, column: 22, scope: !3299)
!3543 = !{!"1801"}
!3544 = !DILocation(line: 1061, column: 18, scope: !3299)
!3545 = !{!"1802"}
!3546 = !DILocation(line: 1061, column: 25, scope: !3299)
!3547 = !{!"1803"}
!3548 = !DILocation(line: 1061, column: 2, scope: !3299)
!3549 = !{!"1804"}
!3550 = !DILocation(line: 1066, column: 20, scope: !3299)
!3551 = !{!"1805"}
!3552 = !DILocation(line: 1066, column: 16, scope: !3299)
!3553 = !{!"1806"}
!3554 = !DILocation(line: 1066, column: 27, scope: !3299)
!3555 = !{!"1807"}
!3556 = !DILocation(line: 1066, column: 23, scope: !3299)
!3557 = !{!"1808"}
!3558 = !DILocation(line: 1066, column: 30, scope: !3299)
!3559 = !{!"1809"}
!3560 = !DILocation(line: 1066, column: 2, scope: !3299)
!3561 = !{!"1810"}
!3562 = !DILocation(line: 1068, column: 2, scope: !3299)
!3563 = !{!"1811"}
!3564 = distinct !DISubprogram(name: "window_to_affine", scope: !3, file: !3, line: 1349, type: !3565, scopeLine: 1350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3567, !526, !10}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!3568 = !{!"1812"}
!3569 = !DILocalVariable(name: "aff", arg: 1, scope: !3564, file: !3, line: 1349, type: !3567)
!3570 = !DILocation(line: 0, scope: !3564)
!3571 = !{!"1813"}
!3572 = !DILocalVariable(name: "jac", arg: 2, scope: !3564, file: !3, line: 1349, type: !526)
!3573 = !{!"1814"}
!3574 = !DILocalVariable(name: "num", arg: 3, scope: !3564, file: !3, line: 1349, type: !10)
!3575 = !{!"1815"}
!3576 = !DILocalVariable(name: "z", scope: !3564, file: !3, line: 1406, type: !3577)
!3577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 4096, elements: !3578)
!3578 = !{!3579, !43}
!3579 = !DISubrange(count: 16)
!3580 = !DILocation(line: 1406, column: 11, scope: !3564)
!3581 = !{!"1816"}
!3582 = !DILocalVariable(name: "i", scope: !3564, file: !3, line: 1407, type: !10)
!3583 = !{!"1817"}
!3584 = !DILocation(line: 1417, column: 7, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1417, column: 2)
!3586 = !{!"1818"}
!3587 = !DILocation(line: 0, scope: !3585)
!3588 = !{!"1819"}
!3589 = !{!"1820"}
!3590 = !DILocation(line: 1417, column: 17, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 1417, column: 2)
!3592 = !{!"1821"}
!3593 = !DILocation(line: 1417, column: 22, scope: !3591)
!3594 = !{!"1822"}
!3595 = !DILocation(line: 1417, column: 2, scope: !3585)
!3596 = !{!"1823"}
!3597 = !DILocation(line: 1418, column: 10, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 1417, column: 37)
!3599 = !{!"1824"}
!3600 = !DILocation(line: 1418, column: 3, scope: !3598)
!3601 = !{!"1825"}
!3602 = !{!"1826"}
!3603 = !DILocation(line: 1418, column: 14, scope: !3598)
!3604 = !{!"1827"}
!3605 = !{!"1828"}
!3606 = !DILocation(line: 1418, column: 21, scope: !3598)
!3607 = !{!"1829"}
!3608 = !{!"1830"}
!3609 = !{!"1831"}
!3610 = !{!"1832"}
!3611 = !DILocation(line: 1419, column: 10, scope: !3598)
!3612 = !{!"1833"}
!3613 = !{!"1834"}
!3614 = !DILocation(line: 1419, column: 17, scope: !3598)
!3615 = !{!"1835"}
!3616 = !DILocation(line: 1419, column: 3, scope: !3598)
!3617 = !{!"1836"}
!3618 = !{!"1837"}
!3619 = !DILocation(line: 1419, column: 26, scope: !3598)
!3620 = !{!"1838"}
!3621 = !DILocation(line: 1419, column: 20, scope: !3598)
!3622 = !{!"1839"}
!3623 = !{!"1840"}
!3624 = !DILocation(line: 1419, column: 31, scope: !3598)
!3625 = !{!"1841"}
!3626 = !{!"1842"}
!3627 = !{!"1843"}
!3628 = !{!"1844"}
!3629 = !DILocation(line: 1420, column: 16, scope: !3598)
!3630 = !{!"1845"}
!3631 = !DILocation(line: 1420, column: 10, scope: !3598)
!3632 = !{!"1846"}
!3633 = !{!"1847"}
!3634 = !DILocation(line: 1420, column: 21, scope: !3598)
!3635 = !{!"1848"}
!3636 = !DILocation(line: 1420, column: 3, scope: !3598)
!3637 = !{!"1849"}
!3638 = !{!"1850"}
!3639 = !DILocation(line: 1420, column: 24, scope: !3598)
!3640 = !{!"1851"}
!3641 = !{!"1852"}
!3642 = !{!"1853"}
!3643 = !{!"1854"}
!3644 = !DILocation(line: 1421, column: 21, scope: !3598)
!3645 = !{!"1855"}
!3646 = !DILocation(line: 1421, column: 17, scope: !3598)
!3647 = !{!"1856"}
!3648 = !{!"1857"}
!3649 = !{!"1858"}
!3650 = !DILocation(line: 1421, column: 28, scope: !3598)
!3651 = !{!"1859"}
!3652 = !{!"1860"}
!3653 = !DILocation(line: 1421, column: 35, scope: !3598)
!3654 = !{!"1861"}
!3655 = !{!"1862"}
!3656 = !DILocation(line: 1421, column: 44, scope: !3598)
!3657 = !{!"1863"}
!3658 = !DILocation(line: 1421, column: 38, scope: !3598)
!3659 = !{!"1864"}
!3660 = !{!"1865"}
!3661 = !DILocation(line: 1421, column: 49, scope: !3598)
!3662 = !{!"1866"}
!3663 = !{!"1867"}
!3664 = !DILocation(line: 1421, column: 3, scope: !3598)
!3665 = !{!"1868"}
!3666 = !DILocation(line: 1422, column: 2, scope: !3598)
!3667 = !{!"1869"}
!3668 = !DILocation(line: 1417, column: 31, scope: !3591)
!3669 = !{!"1870"}
!3670 = !{!"1871"}
!3671 = !DILocation(line: 1417, column: 2, scope: !3591)
!3672 = distinct !{!3672, !3595, !3673, !260}
!3673 = !DILocation(line: 1422, column: 2, scope: !3585)
!3674 = !{!"1872"}
!3675 = !DILocation(line: 1423, column: 11, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1423, column: 6)
!3677 = !{!"1873"}
!3678 = !DILocation(line: 1423, column: 16, scope: !3676)
!3679 = !{!"1874"}
!3680 = !DILocation(line: 1423, column: 6, scope: !3564)
!3681 = !{!"1875"}
!3682 = !DILocation(line: 1424, column: 16, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 1423, column: 22)
!3684 = !{!"1876"}
!3685 = !DILocation(line: 1424, column: 10, scope: !3683)
!3686 = !{!"1877"}
!3687 = !{!"1878"}
!3688 = !DILocation(line: 1424, column: 3, scope: !3683)
!3689 = !{!"1879"}
!3690 = !{!"1880"}
!3691 = !DILocation(line: 1424, column: 31, scope: !3683)
!3692 = !{!"1881"}
!3693 = !DILocation(line: 1424, column: 23, scope: !3683)
!3694 = !{!"1882"}
!3695 = !{!"1883"}
!3696 = !DILocation(line: 1424, column: 36, scope: !3683)
!3697 = !{!"1884"}
!3698 = !{!"1885"}
!3699 = !{!"1886"}
!3700 = !{!"1887"}
!3701 = !DILocation(line: 1425, column: 18, scope: !3683)
!3702 = !{!"1888"}
!3703 = !DILocation(line: 1425, column: 10, scope: !3683)
!3704 = !{!"1889"}
!3705 = !{!"1890"}
!3706 = !DILocation(line: 1425, column: 23, scope: !3683)
!3707 = !{!"1891"}
!3708 = !DILocation(line: 1425, column: 3, scope: !3683)
!3709 = !{!"1892"}
!3710 = !{!"1893"}
!3711 = !{!"1894"}
!3712 = !DILocation(line: 1426, column: 2, scope: !3683)
!3713 = !{!"1895"}
!3714 = !DILocalVariable(name: "k", scope: !3564, file: !3, line: 1407, type: !10)
!3715 = !{!"1896"}
!3716 = !DILocalVariable(name: "s", scope: !3564, file: !3, line: 1407, type: !10)
!3717 = !{!"1897"}
!3718 = !DILocation(line: 1433, column: 7, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1433, column: 2)
!3720 = !{!"1898"}
!3721 = !DILocation(line: 0, scope: !3719)
!3722 = !{!"1899"}
!3723 = !{!"1900"}
!3724 = !{!"1901"}
!3725 = !{!"1902"}
!3726 = !DILocation(line: 1433, column: 23, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 1433, column: 2)
!3728 = !{!"1903"}
!3729 = !DILocation(line: 1433, column: 2, scope: !3719)
!3730 = !{!"1904"}
!3731 = !{!"1905"}
!3732 = !DILocation(line: 1436, column: 8, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1436, column: 3)
!3734 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1433, column: 45)
!3735 = !{!"1906"}
!3736 = !DILocation(line: 0, scope: !3733)
!3737 = !{!"1907"}
!3738 = !{!"1908"}
!3739 = !DILocation(line: 1436, column: 17, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 1436, column: 3)
!3741 = !{!"1909"}
!3742 = !DILocation(line: 1436, column: 3, scope: !3733)
!3743 = !{!"1910"}
!3744 = !DILocation(line: 1437, column: 18, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 1436, column: 30)
!3746 = !{!"1911"}
!3747 = !{!"1912"}
!3748 = !DILocation(line: 1437, column: 25, scope: !3745)
!3749 = !{!"1913"}
!3750 = !{!"1914"}
!3751 = !DILocation(line: 1437, column: 28, scope: !3745)
!3752 = !{!"1915"}
!3753 = !{!"1916"}
!3754 = !DILocation(line: 1437, column: 35, scope: !3745)
!3755 = !{!"1917"}
!3756 = !{!"1918"}
!3757 = !DILocation(line: 1437, column: 43, scope: !3745)
!3758 = !{!"1919"}
!3759 = !DILocation(line: 1437, column: 49, scope: !3745)
!3760 = !{!"1920"}
!3761 = !DILocation(line: 1437, column: 38, scope: !3745)
!3762 = !{!"1921"}
!3763 = !{!"1922"}
!3764 = !{!"1923"}
!3765 = !DILocation(line: 1437, column: 4, scope: !3745)
!3766 = !{!"1924"}
!3767 = !DILocation(line: 1438, column: 3, scope: !3745)
!3768 = !{!"1925"}
!3769 = !DILocation(line: 1436, column: 26, scope: !3740)
!3770 = !{!"1926"}
!3771 = !{!"1927"}
!3772 = !DILocation(line: 1436, column: 3, scope: !3740)
!3773 = distinct !{!3773, !3742, !3774, !260}
!3774 = !DILocation(line: 1438, column: 3, scope: !3733)
!3775 = !{!"1928"}
!3776 = !DILocation(line: 1439, column: 12, scope: !3734)
!3777 = !{!"1929"}
!3778 = !DILocation(line: 1439, column: 16, scope: !3734)
!3779 = !{!"1930"}
!3780 = !DILocation(line: 1439, column: 21, scope: !3734)
!3781 = !{!"1931"}
!3782 = !DILocalVariable(name: "n", scope: !3734, file: !3, line: 1434, type: !10)
!3783 = !DILocation(line: 0, scope: !3734)
!3784 = !{!"1932"}
!3785 = !{!"1933"}
!3786 = !DILocation(line: 1440, column: 8, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1440, column: 3)
!3788 = !{!"1934"}
!3789 = !DILocation(line: 0, scope: !3787)
!3790 = !{!"1935"}
!3791 = !{!"1936"}
!3792 = !DILocation(line: 1440, column: 22, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 1440, column: 3)
!3794 = !{!"1937"}
!3795 = !DILocation(line: 1440, column: 17, scope: !3793)
!3796 = !{!"1938"}
!3797 = !DILocation(line: 1440, column: 3, scope: !3787)
!3798 = !{!"1939"}
!3799 = !DILocation(line: 1441, column: 18, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3793, file: !3, line: 1440, column: 35)
!3801 = !{!"1940"}
!3802 = !{!"1941"}
!3803 = !{!"1942"}
!3804 = !DILocation(line: 1441, column: 28, scope: !3800)
!3805 = !{!"1943"}
!3806 = !DILocation(line: 1441, column: 24, scope: !3800)
!3807 = !{!"1944"}
!3808 = !{!"1945"}
!3809 = !{!"1946"}
!3810 = !DILocation(line: 1441, column: 40, scope: !3800)
!3811 = !{!"1947"}
!3812 = !DILocation(line: 1441, column: 46, scope: !3800)
!3813 = !{!"1948"}
!3814 = !DILocation(line: 1441, column: 35, scope: !3800)
!3815 = !{!"1949"}
!3816 = !{!"1950"}
!3817 = !{!"1951"}
!3818 = !DILocation(line: 1441, column: 4, scope: !3800)
!3819 = !{!"1952"}
!3820 = !DILocation(line: 1442, column: 3, scope: !3800)
!3821 = !{!"1953"}
!3822 = !DILocation(line: 1440, column: 31, scope: !3793)
!3823 = !{!"1954"}
!3824 = !{!"1955"}
!3825 = !DILocation(line: 1440, column: 3, scope: !3793)
!3826 = distinct !{!3826, !3797, !3827, !260}
!3827 = !DILocation(line: 1442, column: 3, scope: !3787)
!3828 = !{!"1956"}
!3829 = !DILocation(line: 1443, column: 10, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1443, column: 7)
!3831 = !{!"1957"}
!3832 = !DILocation(line: 1443, column: 15, scope: !3830)
!3833 = !{!"1958"}
!3834 = !DILocation(line: 1443, column: 7, scope: !3734)
!3835 = !{!"1959"}
!3836 = !DILocation(line: 1444, column: 16, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 1443, column: 21)
!3838 = !{!"1960"}
!3839 = !DILocation(line: 1444, column: 12, scope: !3837)
!3840 = !{!"1961"}
!3841 = !{!"1962"}
!3842 = !DILocation(line: 1444, column: 4, scope: !3837)
!3843 = !{!"1963"}
!3844 = !{!"1964"}
!3845 = !DILocation(line: 1444, column: 23, scope: !3837)
!3846 = !{!"1965"}
!3847 = !{!"1966"}
!3848 = !{!"1967"}
!3849 = !{!"1968"}
!3850 = !{!"1969"}
!3851 = !DILocation(line: 1445, column: 3, scope: !3837)
!3852 = !{!"1970"}
!3853 = !DILocation(line: 1446, column: 2, scope: !3734)
!3854 = !{!"1971"}
!3855 = !DILocation(line: 1433, column: 32, scope: !3727)
!3856 = !{!"1972"}
!3857 = !{!"1973"}
!3858 = !DILocation(line: 1433, column: 38, scope: !3727)
!3859 = !{!"1974"}
!3860 = !{!"1975"}
!3861 = !DILocation(line: 1433, column: 2, scope: !3727)
!3862 = distinct !{!3862, !3729, !3863, !260}
!3863 = !DILocation(line: 1446, column: 2, scope: !3719)
!3864 = !{!"1976"}
!3865 = !DILocation(line: 1451, column: 14, scope: !3564)
!3866 = !{!"1977"}
!3867 = !{!"1978"}
!3868 = !DILocation(line: 1451, column: 18, scope: !3564)
!3869 = !{!"1979"}
!3870 = !{!"1980"}
!3871 = !DILocation(line: 1451, column: 2, scope: !3564)
!3872 = !{!"1981"}
!3873 = !{!"1982"}
!3874 = !DILocation(line: 1452, column: 7, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1452, column: 2)
!3876 = !{!"1983"}
!3877 = !DILocation(line: 0, scope: !3875)
!3878 = !{!"1984"}
!3879 = !{!"1985"}
!3880 = !DILocation(line: 1452, column: 16, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 1452, column: 2)
!3882 = !{!"1986"}
!3883 = !DILocation(line: 1452, column: 2, scope: !3875)
!3884 = !{!"1987"}
!3885 = !DILocation(line: 1453, column: 17, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 1452, column: 29)
!3887 = !{!"1988"}
!3888 = !{!"1989"}
!3889 = !DILocation(line: 1453, column: 21, scope: !3886)
!3890 = !{!"1990"}
!3891 = !{!"1991"}
!3892 = !DILocation(line: 1453, column: 28, scope: !3886)
!3893 = !{!"1992"}
!3894 = !{!"1993"}
!3895 = !DILocation(line: 1453, column: 31, scope: !3886)
!3896 = !{!"1994"}
!3897 = !{!"1995"}
!3898 = !DILocation(line: 1453, column: 3, scope: !3886)
!3899 = !{!"1996"}
!3900 = !DILocation(line: 1454, column: 20, scope: !3886)
!3901 = !{!"1997"}
!3902 = !{!"1998"}
!3903 = !DILocation(line: 1454, column: 24, scope: !3886)
!3904 = !{!"1999"}
!3905 = !{!"2000"}
!3906 = !DILocation(line: 1454, column: 3, scope: !3886)
!3907 = !{!"2001"}
!3908 = !DILocation(line: 1455, column: 17, scope: !3886)
!3909 = !{!"2002"}
!3910 = !{!"2003"}
!3911 = !DILocation(line: 1455, column: 21, scope: !3886)
!3912 = !{!"2004"}
!3913 = !{!"2005"}
!3914 = !DILocation(line: 1455, column: 25, scope: !3886)
!3915 = !{!"2006"}
!3916 = !{!"2007"}
!3917 = !DILocation(line: 1455, column: 3, scope: !3886)
!3918 = !{!"2008"}
!3919 = !DILocation(line: 1456, column: 17, scope: !3886)
!3920 = !{!"2009"}
!3921 = !{!"2010"}
!3922 = !DILocation(line: 1456, column: 24, scope: !3886)
!3923 = !{!"2011"}
!3924 = !{!"2012"}
!3925 = !DILocation(line: 1456, column: 27, scope: !3886)
!3926 = !{!"2013"}
!3927 = !{!"2014"}
!3928 = !DILocation(line: 1456, column: 34, scope: !3886)
!3929 = !{!"2015"}
!3930 = !{!"2016"}
!3931 = !DILocation(line: 1456, column: 37, scope: !3886)
!3932 = !{!"2017"}
!3933 = !{!"2018"}
!3934 = !DILocation(line: 1456, column: 3, scope: !3886)
!3935 = !{!"2019"}
!3936 = !DILocation(line: 1457, column: 17, scope: !3886)
!3937 = !{!"2020"}
!3938 = !{!"2021"}
!3939 = !DILocation(line: 1457, column: 24, scope: !3886)
!3940 = !{!"2022"}
!3941 = !{!"2023"}
!3942 = !DILocation(line: 1457, column: 27, scope: !3886)
!3943 = !{!"2024"}
!3944 = !{!"2025"}
!3945 = !DILocation(line: 1457, column: 34, scope: !3886)
!3946 = !{!"2026"}
!3947 = !{!"2027"}
!3948 = !DILocation(line: 1457, column: 37, scope: !3886)
!3949 = !{!"2028"}
!3950 = !{!"2029"}
!3951 = !DILocation(line: 1457, column: 3, scope: !3886)
!3952 = !{!"2030"}
!3953 = !DILocation(line: 1458, column: 2, scope: !3886)
!3954 = !{!"2031"}
!3955 = !DILocation(line: 1452, column: 25, scope: !3881)
!3956 = !{!"2032"}
!3957 = !{!"2033"}
!3958 = !DILocation(line: 1452, column: 2, scope: !3881)
!3959 = distinct !{!3959, !3883, !3960, !260}
!3960 = !DILocation(line: 1458, column: 2, scope: !3875)
!3961 = !{!"2034"}
!3962 = !DILocation(line: 1459, column: 1, scope: !3564)
!3963 = !{!"2035"}
!3964 = distinct !DISubprogram(name: "br_dec64be", scope: !265, file: !265, line: 648, type: !3965, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!15, !204}
!3967 = !DILocalVariable(name: "src", arg: 1, scope: !3964, file: !265, line: 648, type: !204)
!3968 = !DILocation(line: 0, scope: !3964)
!3969 = !{!"2036"}
!3970 = !DILocalVariable(name: "buf", scope: !3964, file: !265, line: 653, type: !73)
!3971 = !{!"2037"}
!3972 = !DILocation(line: 656, column: 20, scope: !3964)
!3973 = !{!"2038"}
!3974 = !DILocation(line: 656, column: 10, scope: !3964)
!3975 = !{!"2039"}
!3976 = !DILocation(line: 656, column: 36, scope: !3964)
!3977 = !{!"2040"}
!3978 = !DILocation(line: 657, column: 30, scope: !3964)
!3979 = !{!"2041"}
!3980 = !DILocation(line: 657, column: 15, scope: !3964)
!3981 = !{!"2042"}
!3982 = !DILocation(line: 657, column: 5, scope: !3964)
!3983 = !{!"2043"}
!3984 = !DILocation(line: 657, column: 3, scope: !3964)
!3985 = !{!"2044"}
!3986 = !DILocation(line: 656, column: 2, scope: !3964)
!3987 = !{!"2045"}
!3988 = !DILocalVariable(name: "d", arg: 1, scope: !35, file: !3, line: 508, type: !38)
!3989 = !DILocation(line: 0, scope: !35)
!3990 = !{!"2046"}
!3991 = !DILocalVariable(name: "a", arg: 2, scope: !35, file: !3, line: 508, type: !39)
!3992 = !{!"2047"}
!3993 = !{!"2048"}
!3994 = !DILocation(line: 523, column: 2, scope: !35)
!3995 = !{!"2049"}
!3996 = !DILocation(line: 524, column: 1, scope: !35)
!3997 = !{!"2050"}
!3998 = distinct !DISubprogram(name: "br_dec32be", scope: !265, file: !265, line: 590, type: !3999, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!11, !204}
!4001 = !DILocalVariable(name: "src", arg: 1, scope: !3998, file: !265, line: 590, type: !204)
!4002 = !DILocation(line: 0, scope: !3998)
!4003 = !{!"2051"}
!4004 = !DILocalVariable(name: "buf", scope: !3998, file: !265, line: 595, type: !73)
!4005 = !{!"2052"}
!4006 = !DILocation(line: 598, column: 20, scope: !3998)
!4007 = !{!"2053"}
!4008 = !{!"2054"}
!4009 = !DILocation(line: 598, column: 10, scope: !3998)
!4010 = !{!"2055"}
!4011 = !DILocation(line: 598, column: 27, scope: !3998)
!4012 = !{!"2056"}
!4013 = !DILocation(line: 599, column: 16, scope: !3998)
!4014 = !{!"2057"}
!4015 = !{!"2058"}
!4016 = !DILocation(line: 599, column: 6, scope: !3998)
!4017 = !{!"2059"}
!4018 = !DILocation(line: 599, column: 23, scope: !3998)
!4019 = !{!"2060"}
!4020 = !DILocation(line: 599, column: 3, scope: !3998)
!4021 = !{!"2061"}
!4022 = !DILocation(line: 600, column: 16, scope: !3998)
!4023 = !{!"2062"}
!4024 = !{!"2063"}
!4025 = !DILocation(line: 600, column: 6, scope: !3998)
!4026 = !{!"2064"}
!4027 = !DILocation(line: 600, column: 23, scope: !3998)
!4028 = !{!"2065"}
!4029 = !DILocation(line: 600, column: 3, scope: !3998)
!4030 = !{!"2066"}
!4031 = !DILocation(line: 601, column: 15, scope: !3998)
!4032 = !{!"2067"}
!4033 = !{!"2068"}
!4034 = !DILocation(line: 601, column: 5, scope: !3998)
!4035 = !{!"2069"}
!4036 = !DILocation(line: 601, column: 3, scope: !3998)
!4037 = !{!"2070"}
!4038 = !DILocation(line: 598, column: 2, scope: !3998)
!4039 = !{!"2071"}
!4040 = distinct !DISubprogram(name: "check_scalar", scope: !3, file: !3, line: 1626, type: !4041, scopeLine: 1627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!11, !73, !75}
!4043 = !DILocalVariable(name: "k", arg: 1, scope: !4040, file: !3, line: 1626, type: !73)
!4044 = !DILocation(line: 0, scope: !4040)
!4045 = !{!"2072"}
!4046 = !DILocalVariable(name: "klen", arg: 2, scope: !4040, file: !3, line: 1626, type: !75)
!4047 = !{!"2073"}
!4048 = !DILocation(line: 1632, column: 11, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 1632, column: 6)
!4050 = !{!"2074"}
!4051 = !DILocation(line: 1632, column: 6, scope: !4040)
!4052 = !{!"2075"}
!4053 = !DILocation(line: 1633, column: 3, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 1632, column: 17)
!4055 = !{!"2076"}
!4056 = !DILocalVariable(name: "z", scope: !4040, file: !3, line: 1628, type: !11)
!4057 = !{!"2077"}
!4058 = !DILocalVariable(name: "u", scope: !4040, file: !3, line: 1630, type: !75)
!4059 = !{!"2078"}
!4060 = !DILocation(line: 1636, column: 7, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 1636, column: 2)
!4062 = !{!"2079"}
!4063 = !{!"2080"}
!4064 = !DILocation(line: 0, scope: !4061)
!4065 = !{!"2081"}
!4066 = !{!"2082"}
!4067 = !{!"2083"}
!4068 = !DILocation(line: 1636, column: 16, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4061, file: !3, line: 1636, column: 2)
!4070 = !{!"2084"}
!4071 = !DILocation(line: 1636, column: 2, scope: !4061)
!4072 = !{!"2085"}
!4073 = !DILocation(line: 1637, column: 8, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 1636, column: 30)
!4075 = !{!"2086"}
!4076 = !{!"2087"}
!4077 = !{!"2088"}
!4078 = !DILocation(line: 1637, column: 5, scope: !4074)
!4079 = !{!"2089"}
!4080 = !{!"2090"}
!4081 = !DILocation(line: 1638, column: 2, scope: !4074)
!4082 = !{!"2091"}
!4083 = !DILocation(line: 1636, column: 26, scope: !4069)
!4084 = !{!"2092"}
!4085 = !{!"2093"}
!4086 = !DILocation(line: 1636, column: 2, scope: !4069)
!4087 = distinct !{!4087, !4071, !4088, !260}
!4088 = !DILocation(line: 1638, column: 2, scope: !4061)
!4089 = !{!"2094"}
!4090 = !DILocation(line: 1639, column: 11, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 1639, column: 6)
!4092 = !{!"2095"}
!4093 = !DILocation(line: 1639, column: 6, scope: !4040)
!4094 = !{!"2096"}
!4095 = !DILocalVariable(name: "c", scope: !4040, file: !3, line: 1629, type: !6)
!4096 = !{!"2097"}
!4097 = !{!"2098"}
!4098 = !DILocation(line: 1641, column: 8, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 1641, column: 3)
!4100 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 1639, column: 18)
!4101 = !{!"2099"}
!4102 = !DILocation(line: 0, scope: !4100)
!4103 = !{!"2100"}
!4104 = !DILocation(line: 0, scope: !4099)
!4105 = !{!"2101"}
!4106 = !{!"2102"}
!4107 = !{!"2103"}
!4108 = !DILocation(line: 1641, column: 17, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 1641, column: 3)
!4110 = !{!"2104"}
!4111 = !DILocation(line: 1641, column: 3, scope: !4099)
!4112 = !{!"2105"}
!4113 = !DILocation(line: 1642, column: 19, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 1641, column: 31)
!4115 = !{!"2106"}
!4116 = !DILocation(line: 1642, column: 9, scope: !4114)
!4117 = !{!"2107"}
!4118 = !DILocation(line: 1642, column: 32, scope: !4114)
!4119 = !{!"2108"}
!4120 = !{!"2109"}
!4121 = !{!"2110"}
!4122 = !DILocation(line: 1642, column: 38, scope: !4114)
!4123 = !{!"2111"}
!4124 = !{!"2112"}
!4125 = !{!"2113"}
!4126 = !DILocation(line: 1642, column: 28, scope: !4114)
!4127 = !{!"2114"}
!4128 = !DILocation(line: 1642, column: 26, scope: !4114)
!4129 = !{!"2115"}
!4130 = !DILocation(line: 1642, column: 6, scope: !4114)
!4131 = !{!"2116"}
!4132 = !{!"2117"}
!4133 = !DILocation(line: 1643, column: 3, scope: !4114)
!4134 = !{!"2118"}
!4135 = !DILocation(line: 1641, column: 27, scope: !4109)
!4136 = !{!"2119"}
!4137 = !{!"2120"}
!4138 = !DILocation(line: 1641, column: 3, scope: !4109)
!4139 = distinct !{!4139, !4111, !4140, !260}
!4140 = !DILocation(line: 1643, column: 3, scope: !4099)
!4141 = !{!"2121"}
!4142 = !DILocation(line: 1644, column: 2, scope: !4100)
!4143 = !{!"2122"}
!4144 = !{!"2123"}
!4145 = !{!"2124"}
!4146 = !DILocation(line: 0, scope: !4091)
!4147 = !{!"2125"}
!4148 = !{!"2126"}
!4149 = !DILocation(line: 1647, column: 9, scope: !4040)
!4150 = !{!"2127"}
!4151 = !DILocation(line: 1647, column: 21, scope: !4040)
!4152 = !{!"2128"}
!4153 = !DILocation(line: 1647, column: 19, scope: !4040)
!4154 = !{!"2129"}
!4155 = !DILocation(line: 1647, column: 2, scope: !4040)
!4156 = !{!"2130"}
!4157 = !{!"2131"}
!4158 = !DILocation(line: 1648, column: 1, scope: !4040)
!4159 = !{!"2132"}
!4160 = distinct !DISubprogram(name: "EQ0", scope: !265, file: !265, line: 844, type: !4161, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!11, !6}
!4163 = !DILocalVariable(name: "x", arg: 1, scope: !4160, file: !265, line: 844, type: !6)
!4164 = !DILocation(line: 0, scope: !4160)
!4165 = !{!"2133"}
!4166 = !DILocalVariable(name: "q", scope: !4160, file: !265, line: 846, type: !11)
!4167 = !{!"2134"}
!4168 = !DILocation(line: 849, column: 15, scope: !4160)
!4169 = !{!"2135"}
!4170 = !DILocation(line: 849, column: 13, scope: !4160)
!4171 = !{!"2136"}
!4172 = !DILocation(line: 849, column: 9, scope: !4160)
!4173 = !{!"2137"}
!4174 = !DILocation(line: 849, column: 19, scope: !4160)
!4175 = !{!"2138"}
!4176 = !DILocation(line: 849, column: 2, scope: !4160)
!4177 = !{!"2139"}
!4178 = distinct !DISubprogram(name: "CMP", scope: !265, file: !265, line: 835, type: !4179, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!6, !11, !11}
!4181 = !DILocalVariable(name: "x", arg: 1, scope: !4178, file: !265, line: 835, type: !11)
!4182 = !DILocation(line: 0, scope: !4178)
!4183 = !{!"2140"}
!4184 = !DILocalVariable(name: "y", arg: 2, scope: !4178, file: !265, line: 835, type: !11)
!4185 = !{!"2141"}
!4186 = !DILocation(line: 837, column: 18, scope: !4178)
!4187 = !{!"2142"}
!4188 = !DILocation(line: 837, column: 39, scope: !4178)
!4189 = !{!"2143"}
!4190 = !DILocation(line: 837, column: 29, scope: !4178)
!4191 = !{!"2144"}
!4192 = !DILocation(line: 837, column: 27, scope: !4178)
!4193 = !{!"2145"}
!4194 = !DILocation(line: 837, column: 2, scope: !4178)
!4195 = !{!"2146"}
!4196 = distinct !DISubprogram(name: "LT0", scope: !265, file: !265, line: 880, type: !4161, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4197 = !DILocalVariable(name: "x", arg: 1, scope: !4196, file: !265, line: 880, type: !6)
!4198 = !DILocation(line: 0, scope: !4196)
!4199 = !{!"2147"}
!4200 = !DILocation(line: 882, column: 21, scope: !4196)
!4201 = !{!"2148"}
!4202 = !DILocation(line: 882, column: 2, scope: !4196)
!4203 = !{!"2149"}
!4204 = distinct !DISubprogram(name: "GT", scope: !265, file: !265, line: 803, type: !1315, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4205 = !DILocalVariable(name: "x", arg: 1, scope: !4204, file: !265, line: 803, type: !11)
!4206 = !DILocation(line: 0, scope: !4204)
!4207 = !{!"2150"}
!4208 = !DILocalVariable(name: "y", arg: 2, scope: !4204, file: !265, line: 803, type: !11)
!4209 = !{!"2151"}
!4210 = !DILocation(line: 819, column: 8, scope: !4204)
!4211 = !{!"2152"}
!4212 = !DILocalVariable(name: "z", scope: !4204, file: !265, line: 817, type: !11)
!4213 = !{!"2153"}
!4214 = !DILocation(line: 820, column: 18, scope: !4204)
!4215 = !{!"2154"}
!4216 = !DILocation(line: 820, column: 28, scope: !4204)
!4217 = !{!"2155"}
!4218 = !DILocation(line: 820, column: 23, scope: !4204)
!4219 = !{!"2156"}
!4220 = !DILocation(line: 820, column: 12, scope: !4204)
!4221 = !{!"2157"}
!4222 = !DILocation(line: 820, column: 35, scope: !4204)
!4223 = !{!"2158"}
!4224 = !DILocation(line: 820, column: 2, scope: !4204)
!4225 = !{!"2159"}
!4226 = distinct !DISubprogram(name: "br_ec_p256_m64_get", scope: !3, file: !3, line: 1767, type: !4227, scopeLine: 1768, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!4229}
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!4230 = !DILocation(line: 1769, column: 2, scope: !4226)
!4231 = !{!"2160"}
