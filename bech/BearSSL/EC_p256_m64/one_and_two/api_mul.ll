; ModuleID = 'api_mul.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_ec_impl = type { i32, i8* (i32, i64*)*, i8* (i32, i64*)*, i64 (i32, i64*)*, i32 (i8*, i64, i8*, i64, i32)*, i64 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* }
%struct.p256_affine = type { [4 x i64], [4 x i64] }
%struct.smack_value = type { i8* }
%struct.p256_jacobian = type { [4 x i64], [4 x i64], [4 x i64] }
%union.anon = type { [15 x %struct.p256_jacobian] }

@br_ec_p256_m64 = dso_local constant %struct.br_ec_impl { i32 8388608, i8* (i32, i64*)* @api_generator, i8* (i32, i64*)* @api_order, i64 (i32, i64*)* @api_xoff, i32 (i8*, i64, i8*, i64, i32)* @api_mul, i64 (i8*, i8*, i64, i32)* @api_mulgen, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* @api_muladd }, align 8, !dbg !0
@f256_frommonty.one = internal constant [4 x i64] [i64 1, i64 0, i64 0, i64 0], align 16, !dbg !48
@P256_Gwin = internal constant [15 x %struct.p256_affine] [%struct.p256_affine { [4 x i64] [i64 8784043285714375740, i64 8483257759279461889, i64 8789745728267363600, i64 1770019616739251654], [4 x i64] [i64 -2453807210370345462, i64 -8409706061646666660, i64 -3249199208764148955, i64 -8830996915122840187] }, %struct.p256_affine { [4 x i64] [i64 -8863006190035151283, i64 -6166866318907440515, i64 8296198976379850969, i64 -667884163863463365], [4 x i64] [i64 3401986641240187301, i64 1525831644595056632, i64 1849003687033449918, i64 8702493044913179195] }, %struct.p256_affine { [4 x i64] [i64 -23574009011781337, i64 -5753357002088807941, i64 7398701556189346968, i64 2779682216903406718], [4 x i64] [i64 -5743114133209634837, i64 6358598532389273114, i64 8683512038509439374, i64 -3030805821043258361] }, %struct.p256_affine { [4 x i64] [i64 8408419572923862476, i64 5066733120953500019, i64 926242532005776114, i64 6301489109130024811], [4 x i64] [i64 3285079390283344806, i64 1685054835664548935, i64 7740622190510199342, i64 -8885236780847417245] }, %struct.p256_affine { [4 x i64] [i64 -4748048898908724747, i64 -8003911822661299331, i64 -7774139111501807092, i64 -3961032396731243576], [4 x i64] [i64 -1499527929896743152, i64 8342189264337602603, i64 3837253281927274344, i64 8331789856935110934] }, %struct.p256_affine { [4 x i64] [i64 4627808394696681034, i64 6174000022702321214, i64 -3095496753922202707, i64 1371147458593240691], [4 x i64] [i64 -7794778636921871285, i64 2998319090323362997, i64 -854324602394665199, i64 -6572562282591029409] }, %struct.p256_affine { [4 x i64] [i64 524165018444839759, i64 3157588572894920951, i64 -847051985329603832, i64 1421537803477597699], [4 x i64] [i64 2902517390503550285, i64 7440776657136679901, i64 -1183536458979786347, i64 -1518318813288593305] }, %struct.p256_affine { [4 x i64] [i64 2878166099891431311, i64 5056053391262430293, i64 -8101711662430749589, i64 -5232187577139387635], [4 x i64] [i64 -748262015433356937, i64 2441850938900527637, i64 1314061001345252336, i64 6263402014353842038] }, %struct.p256_affine { [4 x i64] [i64 8487436533858443496, i64 -6059945222448109503, i64 3224748875345095424, i64 -2280175455979642517], [4 x i64] [i64 2213369110503306004, i64 6246347469485852131, i64 3129440554298978074, i64 605269941184323483] }, %struct.p256_affine { [4 x i64] [i64 3177531230451277512, i64 -7423754583214685895, i64 8321856985295555401, i64 -3719470509835730289], [4 x i64] [i64 876865438755954294, i64 -4306978836819493368, i64 6880705719513638354, i64 8678887646434118325] }, %struct.p256_affine { [4 x i64] [i64 -1550040870705306620, i64 -7069517176679440416, i64 2302364246994590389, i64 4499255394192625779], [4 x i64] [i64 1906858144627445384, i64 2670515414718439880, i64 868537809054295101, i64 7535366755622172814] }, %struct.p256_affine { [4 x i64] [i64 339769604981749608, i64 -6062162901153326541, i64 2596838235904096350, i64 5684069910326796630], [4 x i64] [i64 913125548148611907, i64 1661497269948077623, i64 2892028918424825190, i64 9220412792897768138] }, %struct.p256_affine { [4 x i64] [i64 -3691784686143613175, i64 1023838193204581133, i64 -4846765730473011183, i64 8323909593307920217], [4 x i64] [i64 3852032956982813055, i64 7526785533690696419, i64 8993798556223495105, i64 -306095886232471657] }, %struct.p256_affine { [4 x i64] [i64 -6754656876898589110, i64 1328079167955601379, i64 1664008958165329504, i64 -383242255448488146], [4 x i64] [i64 2861243404839114859, i64 -4744165493653227582, i64 -1665178207430252581, i64 1524194541633674171] }, %struct.p256_affine { [4 x i64] [i64 8267721299596412251, i64 273633183929630283, i64 -1282553767069117584, i64 -2113861393989772791], [4 x i64] [i64 4663567915067622493, i64 -2925592271918982363, i64 7273215397645141911, i64 2324445691280731636] }], align 16, !dbg !51
@F256_R = internal constant [4 x i64] [i64 1, i64 -4294967296, i64 -1, i64 4294967294], align 16, !dbg !46
@P256_B_MONTY = internal constant [4 x i64] [i64 -2838148052449706529, i64 -5985277524727025520, i64 -1899920169839284522, i64 -2580555864783501260], align 16, !dbg !44
@f256_tomonty.R2 = internal constant [4 x i64] [i64 3, i64 -17179869185, i64 -2, i64 21474836477], align 16, !dbg !33
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
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_p256_m64, metadata !124, metadata !DIExpression()), !dbg !107
  %12 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_p256_m64, i32 0, i32 4, !dbg !137
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
  call void @llvm.dbg.value(metadata %struct.br_ec_impl* @br_ec_p256_m64, metadata !153, metadata !DIExpression()), !dbg !145
  %5 = getelementptr inbounds %struct.br_ec_impl, %struct.br_ec_impl* @br_ec_p256_m64, i32 0, i32 4, !dbg !154
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
  br label %51, !dbg !274

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
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 0, i64 0, !dbg !292
  call void @f256_final_reduce(i64* %23), !dbg !293
  %24 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !294
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %24, i64 0, i64 0, !dbg !295
  %26 = load i64, i64* %25, align 8, !dbg !295
  %27 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !296
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 1, !dbg !297
  %29 = load i64, i64* %28, align 8, !dbg !297
  %30 = or i64 %26, %29, !dbg !298
  %31 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !299
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %31, i64 0, i64 2, !dbg !300
  %33 = load i64, i64* %32, align 8, !dbg !300
  %34 = or i64 %30, %33, !dbg !301
  %35 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %9, i32 0, i32 2, !dbg !302
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %35, i64 0, i64 3, !dbg !303
  %37 = load i64, i64* %36, align 8, !dbg !303
  %38 = or i64 %34, %37, !dbg !304
  call void @llvm.dbg.value(metadata i64 %38, metadata !305, metadata !DIExpression()), !dbg !259
  %39 = lshr i64 %38, 32, !dbg !306
  %40 = or i64 %38, %39, !dbg !307
  %41 = trunc i64 %40 to i32, !dbg !308
  %42 = call i32 @EQ(i32 %41, i32 0), !dbg !309
  call void @llvm.dbg.value(metadata i32 %42, metadata !310, metadata !DIExpression()), !dbg !259
  call void @p256_double(%struct.p256_jacobian* %10), !dbg !311
  %43 = xor i32 %21, -1, !dbg !312
  %44 = and i32 %42, %43, !dbg !313
  %45 = bitcast %struct.p256_jacobian* %9 to i8*, !dbg !314
  %46 = bitcast %struct.p256_jacobian* %10 to i8*, !dbg !315
  call void @br_ccopy(i32 %44, i8* %45, i8* %46, i64 96), !dbg !316
  %47 = call i32 @point_encode(i8* %0, %struct.p256_jacobian* %9), !dbg !317
  %48 = and i32 %42, %21, !dbg !318
  %49 = xor i32 %48, -1, !dbg !319
  %50 = and i32 %.01, %49, !dbg !320
  call void @llvm.dbg.value(metadata i32 %50, metadata !277, metadata !DIExpression()), !dbg !259
  br label %51, !dbg !321

51:                                               ; preds = %20, %12
  %.0 = phi i32 [ 0, %12 ], [ %50, %20 ], !dbg !259
  ret i32 %.0, !dbg !322
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @point_decode(%struct.p256_jacobian* %0, i8* %1) #0 !dbg !323 {
  %3 = alloca [4 x i64], align 16
  %4 = alloca [4 x i64], align 16
  %5 = alloca [4 x i64], align 16
  %6 = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i8* %1, metadata !329, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata [4 x i64]* %6, metadata !336, metadata !DIExpression()), !dbg !337
  %7 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !338
  %8 = load i8, i8* %7, align 1, !dbg !338
  %9 = zext i8 %8 to i32, !dbg !338
  %10 = call i32 @EQ(i32 %9, i32 4), !dbg !339
  call void @llvm.dbg.value(metadata i32 %10, metadata !340, metadata !DIExpression()), !dbg !328
  %11 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !341
  %12 = call i64 @br_dec64be(i8* %11), !dbg !342
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3, !dbg !343
  store i64 %12, i64* %13, align 8, !dbg !344
  %14 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !345
  %15 = call i64 @br_dec64be(i8* %14), !dbg !346
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2, !dbg !347
  store i64 %15, i64* %16, align 16, !dbg !348
  %17 = getelementptr inbounds i8, i8* %1, i64 17, !dbg !349
  %18 = call i64 @br_dec64be(i8* %17), !dbg !350
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1, !dbg !351
  store i64 %18, i64* %19, align 8, !dbg !352
  %20 = getelementptr inbounds i8, i8* %1, i64 25, !dbg !353
  %21 = call i64 @br_dec64be(i8* %20), !dbg !354
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !355
  store i64 %21, i64* %22, align 16, !dbg !356
  %23 = getelementptr inbounds i8, i8* %1, i64 33, !dbg !357
  %24 = call i64 @br_dec64be(i8* %23), !dbg !358
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3, !dbg !359
  store i64 %24, i64* %25, align 8, !dbg !360
  %26 = getelementptr inbounds i8, i8* %1, i64 41, !dbg !361
  %27 = call i64 @br_dec64be(i8* %26), !dbg !362
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2, !dbg !363
  store i64 %27, i64* %28, align 16, !dbg !364
  %29 = getelementptr inbounds i8, i8* %1, i64 49, !dbg !365
  %30 = call i64 @br_dec64be(i8* %29), !dbg !366
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1, !dbg !367
  store i64 %30, i64* %31, align 8, !dbg !368
  %32 = getelementptr inbounds i8, i8* %1, i64 57, !dbg !369
  %33 = call i64 @br_dec64be(i8* %32), !dbg !370
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !371
  store i64 %33, i64* %34, align 16, !dbg !372
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !373
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !374
  call void @f256_tomonty(i64* %35, i64* %36), !dbg !375
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !376
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !377
  call void @f256_tomonty(i64* %37, i64* %38), !dbg !378
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !379
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !380
  call void @f256_montysquare(i64* %39, i64* %40), !dbg !381
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !382
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !383
  call void @f256_montysquare(i64* %41, i64* %42), !dbg !384
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !385
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !386
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !387
  call void @f256_montymul(i64* %43, i64* %44, i64* %45), !dbg !388
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !389
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !390
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !391
  call void @f256_sub(i64* %46, i64* %47, i64* %48), !dbg !392
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !393
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !394
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !395
  call void @f256_add(i64* %49, i64* %50, i64* %51), !dbg !396
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !397
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !398
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !399
  call void @f256_add(i64* %52, i64* %53, i64* %54), !dbg !400
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !401
  %56 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !402
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !403
  call void @f256_add(i64* %55, i64* %56, i64* %57), !dbg !404
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !405
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !406
  call void @f256_sub(i64* %58, i64* %59, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @P256_B_MONTY, i64 0, i64 0)), !dbg !407
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !408
  call void @f256_final_reduce(i64* %60), !dbg !409
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !410
  %62 = load i64, i64* %61, align 16, !dbg !410
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1, !dbg !411
  %64 = load i64, i64* %63, align 8, !dbg !411
  %65 = or i64 %62, %64, !dbg !412
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2, !dbg !413
  %67 = load i64, i64* %66, align 16, !dbg !413
  %68 = or i64 %65, %67, !dbg !414
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !415
  %70 = load i64, i64* %69, align 8, !dbg !415
  %71 = or i64 %68, %70, !dbg !416
  call void @llvm.dbg.value(metadata i64 %71, metadata !417, metadata !DIExpression()), !dbg !328
  %72 = lshr i64 %71, 32, !dbg !418
  %73 = or i64 %71, %72, !dbg !419
  %74 = trunc i64 %73 to i32, !dbg !420
  %75 = call i32 @EQ(i32 %74, i32 0), !dbg !421
  %76 = and i32 %10, %75, !dbg !422
  call void @llvm.dbg.value(metadata i32 %76, metadata !340, metadata !DIExpression()), !dbg !328
  %77 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !423
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %77, i64 0, i64 0, !dbg !424
  %79 = bitcast i64* %78 to i8*, !dbg !424
  %80 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !424
  %81 = bitcast i64* %80 to i8*, !dbg !424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 16 %81, i64 32, i1 false), !dbg !424
  %82 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !425
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %82, i64 0, i64 0, !dbg !426
  %84 = bitcast i64* %83 to i8*, !dbg !426
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !426
  %86 = bitcast i64* %85 to i8*, !dbg !426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 16 %86, i64 32, i1 false), !dbg !426
  %87 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !427
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %87, i64 0, i64 0, !dbg !428
  %89 = bitcast i64* %88 to i8*, !dbg !428
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 16 bitcast ([4 x i64]* @F256_R to i8*), i64 32, i1 false), !dbg !428
  ret i32 %76, !dbg !429
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_mul(%struct.p256_jacobian* %0, i8* %1, i64 %2) #0 !dbg !430 {
  %4 = alloca %union.anon, align 8
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i8* %1, metadata !435, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i64 %2, metadata !436, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata %union.anon* %4, metadata !437, metadata !DIExpression()), !dbg !444
  %5 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !445
  %6 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %5, i64 0, i64 0, !dbg !446
  %7 = bitcast %struct.p256_jacobian* %6 to i8*, !dbg !447
  %8 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !447
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 96, i1 false), !dbg !447
  call void @llvm.dbg.value(metadata i32 2, metadata !448, metadata !DIExpression()), !dbg !434
  br label %9, !dbg !449

9:                                                ; preds = %41, %3
  %.0 = phi i32 [ 2, %3 ], [ %42, %41 ], !dbg !451
  call void @llvm.dbg.value(metadata i32 %.0, metadata !448, metadata !DIExpression()), !dbg !434
  %10 = icmp slt i32 %.0, 16, !dbg !452
  br i1 %10, label %11, label %43, !dbg !454

11:                                               ; preds = %9
  %12 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !455
  %13 = sub nsw i32 %.0, 1, !dbg !457
  %14 = sext i32 %13 to i64, !dbg !458
  %15 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %12, i64 0, i64 %14, !dbg !458
  %16 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !459
  %17 = ashr i32 %.0, 1, !dbg !460
  %18 = sub nsw i32 %17, 1, !dbg !461
  %19 = sext i32 %18 to i64, !dbg !462
  %20 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %16, i64 0, i64 %19, !dbg !462
  %21 = bitcast %struct.p256_jacobian* %15 to i8*, !dbg !462
  %22 = bitcast %struct.p256_jacobian* %20 to i8*, !dbg !462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 96, i1 false), !dbg !462
  %23 = and i32 %.0, 1, !dbg !463
  %24 = icmp eq i32 %23, 0, !dbg !465
  br i1 %24, label %25, label %30, !dbg !466

25:                                               ; preds = %11
  %26 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !467
  %27 = sub nsw i32 %.0, 1, !dbg !469
  %28 = sext i32 %27 to i64, !dbg !470
  %29 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %26, i64 0, i64 %28, !dbg !470
  call void @p256_double(%struct.p256_jacobian* %29), !dbg !471
  br label %40, !dbg !472

30:                                               ; preds = %11
  %31 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !473
  %32 = sub nsw i32 %.0, 1, !dbg !475
  %33 = sext i32 %32 to i64, !dbg !476
  %34 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %31, i64 0, i64 %33, !dbg !476
  %35 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !477
  %36 = ashr i32 %.0, 1, !dbg !478
  %37 = sext i32 %36 to i64, !dbg !479
  %38 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %35, i64 0, i64 %37, !dbg !479
  %39 = call i32 @p256_add(%struct.p256_jacobian* %34, %struct.p256_jacobian* %38), !dbg !480
  br label %40

40:                                               ; preds = %30, %25
  br label %41, !dbg !481

41:                                               ; preds = %40
  %42 = add nsw i32 %.0, 1, !dbg !482
  call void @llvm.dbg.value(metadata i32 %42, metadata !448, metadata !DIExpression()), !dbg !434
  br label %9, !dbg !483, !llvm.loop !484

43:                                               ; preds = %9
  %44 = bitcast %union.anon* %4 to [15 x %struct.p256_affine]*, !dbg !486
  %45 = getelementptr inbounds [15 x %struct.p256_affine], [15 x %struct.p256_affine]* %44, i64 0, i64 0, !dbg !487
  %46 = bitcast %union.anon* %4 to [15 x %struct.p256_jacobian]*, !dbg !488
  %47 = getelementptr inbounds [15 x %struct.p256_jacobian], [15 x %struct.p256_jacobian]* %46, i64 0, i64 0, !dbg !489
  call void @window_to_affine(%struct.p256_affine* %45, %struct.p256_jacobian* %47, i32 15), !dbg !490
  %48 = bitcast %union.anon* %4 to [15 x %struct.p256_affine]*, !dbg !491
  %49 = getelementptr inbounds [15 x %struct.p256_affine], [15 x %struct.p256_affine]* %48, i64 0, i64 0, !dbg !492
  call void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* %49, i8* %1, i64 %2), !dbg !493
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_mulgen(%struct.p256_jacobian* %0, i8* %1, i64 %2) #0 !dbg !495 {
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i8* %1, metadata !498, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i64 %2, metadata !499, metadata !DIExpression()), !dbg !497
  call void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* getelementptr inbounds ([15 x %struct.p256_affine], [15 x %struct.p256_affine]* @P256_Gwin, i64 0, i64 0), i8* %1, i64 %2), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @p256_add(%struct.p256_jacobian* %0, %struct.p256_jacobian* %1) #0 !dbg !502 {
  %3 = alloca [4 x i64], align 16
  %4 = alloca [4 x i64], align 16
  %5 = alloca [4 x i64], align 16
  %6 = alloca [4 x i64], align 16
  %7 = alloca [4 x i64], align 16
  %8 = alloca [4 x i64], align 16
  %9 = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !507, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !509, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !512, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata [4 x i64]* %6, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata [4 x i64]* %7, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata [4 x i64]* %8, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.declare(metadata [4 x i64]* %9, metadata !522, metadata !DIExpression()), !dbg !523
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !524
  %11 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !525
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0, !dbg !526
  call void @f256_montysquare(i64* %10, i64* %12), !dbg !527
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !528
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !529
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0, !dbg !530
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !531
  call void @f256_montymul(i64* %13, i64* %15, i64* %16), !dbg !532
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !533
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !534
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0, !dbg !535
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !536
  call void @f256_montymul(i64* %17, i64* %19, i64* %20), !dbg !537
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !538
  %22 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !539
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 0, i64 0, !dbg !540
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !541
  call void @f256_montymul(i64* %21, i64* %23, i64* %24), !dbg !542
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !543
  %26 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !544
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %26, i64 0, i64 0, !dbg !545
  call void @f256_montysquare(i64* %25, i64* %27), !dbg !546
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !547
  %29 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 0, !dbg !548
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %29, i64 0, i64 0, !dbg !549
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !550
  call void @f256_montymul(i64* %28, i64* %30, i64* %31), !dbg !551
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !552
  %33 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !553
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %33, i64 0, i64 0, !dbg !554
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !555
  call void @f256_montymul(i64* %32, i64* %34, i64* %35), !dbg !556
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !557
  %37 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 1, !dbg !558
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %37, i64 0, i64 0, !dbg !559
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !560
  call void @f256_montymul(i64* %36, i64* %38, i64* %39), !dbg !561
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !562
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !563
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !564
  call void @f256_sub(i64* %40, i64* %41, i64* %42), !dbg !565
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !566
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !567
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !568
  call void @f256_sub(i64* %43, i64* %44, i64* %45), !dbg !569
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !570
  call void @f256_final_reduce(i64* %46), !dbg !571
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !572
  %48 = load i64, i64* %47, align 16, !dbg !572
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1, !dbg !573
  %50 = load i64, i64* %49, align 8, !dbg !573
  %51 = or i64 %48, %50, !dbg !574
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2, !dbg !575
  %53 = load i64, i64* %52, align 16, !dbg !575
  %54 = or i64 %51, %53, !dbg !576
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 3, !dbg !577
  %56 = load i64, i64* %55, align 8, !dbg !577
  %57 = or i64 %54, %56, !dbg !578
  call void @llvm.dbg.value(metadata i64 %57, metadata !579, metadata !DIExpression()), !dbg !508
  %58 = lshr i64 %57, 32, !dbg !580
  %59 = or i64 %57, %58, !dbg !581
  %60 = trunc i64 %59 to i32, !dbg !582
  call void @llvm.dbg.value(metadata i32 %60, metadata !583, metadata !DIExpression()), !dbg !508
  %61 = sub i32 0, %60, !dbg !584
  %62 = or i32 %60, %61, !dbg !585
  %63 = lshr i32 %62, 31, !dbg !586
  call void @llvm.dbg.value(metadata i32 %63, metadata !583, metadata !DIExpression()), !dbg !508
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !587
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !588
  call void @f256_montysquare(i64* %64, i64* %65), !dbg !589
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !590
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !591
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !592
  call void @f256_montymul(i64* %66, i64* %67, i64* %68), !dbg !593
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !594
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !595
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !596
  call void @f256_montymul(i64* %69, i64* %70, i64* %71), !dbg !597
  %72 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !598
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %72, i64 0, i64 0, !dbg !599
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !600
  call void @f256_montysquare(i64* %73, i64* %74), !dbg !601
  %75 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !602
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %75, i64 0, i64 0, !dbg !603
  %77 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !604
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %77, i64 0, i64 0, !dbg !605
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !606
  call void @f256_sub(i64* %76, i64* %78, i64* %79), !dbg !607
  %80 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !608
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %80, i64 0, i64 0, !dbg !609
  %82 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !610
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %82, i64 0, i64 0, !dbg !611
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !612
  call void @f256_sub(i64* %81, i64* %83, i64* %84), !dbg !613
  %85 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !614
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %85, i64 0, i64 0, !dbg !615
  %87 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !616
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %87, i64 0, i64 0, !dbg !617
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !618
  call void @f256_sub(i64* %86, i64* %88, i64* %89), !dbg !619
  %90 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !620
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !621
  %92 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !622
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %92, i64 0, i64 0, !dbg !623
  call void @f256_sub(i64* %90, i64* %91, i64* %93), !dbg !624
  %94 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !625
  %95 = getelementptr inbounds [4 x i64], [4 x i64]* %94, i64 0, i64 0, !dbg !626
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !627
  %97 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !628
  call void @f256_montymul(i64* %95, i64* %96, i64* %97), !dbg !629
  %98 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !630
  %99 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !631
  %100 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !632
  call void @f256_montymul(i64* %98, i64* %99, i64* %100), !dbg !633
  %101 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !634
  %102 = getelementptr inbounds [4 x i64], [4 x i64]* %101, i64 0, i64 0, !dbg !635
  %103 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !636
  %104 = getelementptr inbounds [4 x i64], [4 x i64]* %103, i64 0, i64 0, !dbg !637
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !638
  call void @f256_sub(i64* %102, i64* %104, i64* %105), !dbg !639
  %106 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !640
  %107 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !641
  %108 = getelementptr inbounds [4 x i64], [4 x i64]* %107, i64 0, i64 0, !dbg !642
  %109 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !643
  %110 = getelementptr inbounds [4 x i64], [4 x i64]* %109, i64 0, i64 0, !dbg !644
  call void @f256_montymul(i64* %106, i64* %108, i64* %110), !dbg !645
  %111 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !646
  %112 = getelementptr inbounds [4 x i64], [4 x i64]* %111, i64 0, i64 0, !dbg !647
  %113 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !648
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !649
  call void @f256_montymul(i64* %112, i64* %113, i64* %114), !dbg !650
  ret i32 %63, !dbg !651
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_final_reduce(i64* %0) #0 !dbg !652 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !655, metadata !DIExpression()), !dbg !656
  %2 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !657
  %3 = load i64, i64* %2, align 8, !dbg !657
  %4 = zext i64 %3 to i128, !dbg !658
  %5 = add i128 %4, 1, !dbg !659
  call void @llvm.dbg.value(metadata i128 %5, metadata !660, metadata !DIExpression()), !dbg !656
  %6 = trunc i128 %5 to i64, !dbg !661
  call void @llvm.dbg.value(metadata i64 %6, metadata !662, metadata !DIExpression()), !dbg !656
  %7 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !663
  %8 = load i64, i64* %7, align 8, !dbg !663
  %9 = zext i64 %8 to i128, !dbg !664
  %10 = lshr i128 %5, 64, !dbg !665
  %11 = add i128 %9, %10, !dbg !666
  %12 = sub i128 %11, 4294967296, !dbg !667
  call void @llvm.dbg.value(metadata i128 %12, metadata !660, metadata !DIExpression()), !dbg !656
  %13 = trunc i128 %12 to i64, !dbg !668
  call void @llvm.dbg.value(metadata i64 %13, metadata !669, metadata !DIExpression()), !dbg !656
  %14 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !670
  %15 = load i64, i64* %14, align 8, !dbg !670
  %16 = zext i64 %15 to i128, !dbg !671
  %17 = lshr i128 %12, 127, !dbg !672
  %18 = sub i128 %16, %17, !dbg !673
  call void @llvm.dbg.value(metadata i128 %18, metadata !660, metadata !DIExpression()), !dbg !656
  %19 = trunc i128 %18 to i64, !dbg !674
  call void @llvm.dbg.value(metadata i64 %19, metadata !675, metadata !DIExpression()), !dbg !656
  %20 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !676
  %21 = load i64, i64* %20, align 8, !dbg !676
  %22 = zext i64 %21 to i128, !dbg !677
  %23 = lshr i128 %18, 127, !dbg !678
  %24 = sub i128 %22, %23, !dbg !679
  %25 = add i128 %24, 4294967295, !dbg !680
  call void @llvm.dbg.value(metadata i128 %25, metadata !660, metadata !DIExpression()), !dbg !656
  %26 = trunc i128 %25 to i64, !dbg !681
  call void @llvm.dbg.value(metadata i64 %26, metadata !682, metadata !DIExpression()), !dbg !656
  %27 = lshr i128 %25, 64, !dbg !683
  %28 = trunc i128 %27 to i64, !dbg !684
  %29 = sub i64 0, %28, !dbg !685
  call void @llvm.dbg.value(metadata i64 %29, metadata !686, metadata !DIExpression()), !dbg !656
  %30 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !687
  %31 = load i64, i64* %30, align 8, !dbg !687
  %32 = xor i64 %31, %6, !dbg !688
  %33 = and i64 %29, %32, !dbg !689
  %34 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !690
  %35 = load i64, i64* %34, align 8, !dbg !691
  %36 = xor i64 %35, %33, !dbg !691
  store i64 %36, i64* %34, align 8, !dbg !691
  %37 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !692
  %38 = load i64, i64* %37, align 8, !dbg !692
  %39 = xor i64 %38, %13, !dbg !693
  %40 = and i64 %29, %39, !dbg !694
  %41 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !695
  %42 = load i64, i64* %41, align 8, !dbg !696
  %43 = xor i64 %42, %40, !dbg !696
  store i64 %43, i64* %41, align 8, !dbg !696
  %44 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !697
  %45 = load i64, i64* %44, align 8, !dbg !697
  %46 = xor i64 %45, %19, !dbg !698
  %47 = and i64 %29, %46, !dbg !699
  %48 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !700
  %49 = load i64, i64* %48, align 8, !dbg !701
  %50 = xor i64 %49, %47, !dbg !701
  store i64 %50, i64* %48, align 8, !dbg !701
  %51 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !702
  %52 = load i64, i64* %51, align 8, !dbg !702
  %53 = xor i64 %52, %26, !dbg !703
  %54 = and i64 %29, %53, !dbg !704
  %55 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !705
  %56 = load i64, i64* %55, align 8, !dbg !706
  %57 = xor i64 %56, %54, !dbg !706
  store i64 %57, i64* %55, align 8, !dbg !706
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !708 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !711, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i32 %1, metadata !713, metadata !DIExpression()), !dbg !712
  %3 = xor i32 %0, %1, !dbg !714
  call void @llvm.dbg.value(metadata i32 %3, metadata !715, metadata !DIExpression()), !dbg !712
  %4 = sub i32 0, %3, !dbg !716
  %5 = or i32 %3, %4, !dbg !717
  %6 = lshr i32 %5, 31, !dbg !718
  %7 = call i32 @NOT(i32 %6), !dbg !719
  ret i32 %7, !dbg !720
}

; Function Attrs: noinline nounwind uwtable
define internal void @p256_double(%struct.p256_jacobian* %0) #0 !dbg !721 {
  %2 = alloca [4 x i64], align 16
  %3 = alloca [4 x i64], align 16
  %4 = alloca [4 x i64], align 16
  %5 = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !724, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.declare(metadata [4 x i64]* %2, metadata !726, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !728, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !730, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !732, metadata !DIExpression()), !dbg !733
  %6 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !734
  %7 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !735
  %8 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !736
  call void @f256_montysquare(i64* %6, i64* %8), !dbg !737
  %9 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !738
  %10 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !739
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0, !dbg !740
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !741
  call void @f256_add(i64* %9, i64* %11, i64* %12), !dbg !742
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !743
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !744
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0, !dbg !745
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !746
  call void @f256_sub(i64* %13, i64* %15, i64* %16), !dbg !747
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !748
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !749
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !750
  call void @f256_montymul(i64* %17, i64* %18, i64* %19), !dbg !751
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !752
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !753
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !754
  call void @f256_add(i64* %20, i64* %21, i64* %22), !dbg !755
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !756
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !757
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !758
  call void @f256_add(i64* %23, i64* %24, i64* %25), !dbg !759
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !760
  %27 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !761
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 0, !dbg !762
  call void @f256_montysquare(i64* %26, i64* %28), !dbg !763
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !764
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !765
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !766
  call void @f256_add(i64* %29, i64* %30, i64* %31), !dbg !767
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !768
  %33 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !769
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %33, i64 0, i64 0, !dbg !770
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !771
  call void @f256_montymul(i64* %32, i64* %34, i64* %35), !dbg !772
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !773
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !774
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !775
  call void @f256_add(i64* %36, i64* %37, i64* %38), !dbg !776
  %39 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !777
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %39, i64 0, i64 0, !dbg !778
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !779
  call void @f256_montysquare(i64* %40, i64* %41), !dbg !780
  %42 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !781
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %42, i64 0, i64 0, !dbg !782
  %44 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !783
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %44, i64 0, i64 0, !dbg !784
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !785
  call void @f256_sub(i64* %43, i64* %45, i64* %46), !dbg !786
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !787
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %47, i64 0, i64 0, !dbg !788
  %49 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !789
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %49, i64 0, i64 0, !dbg !790
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !791
  call void @f256_sub(i64* %48, i64* %50, i64* %51), !dbg !792
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !793
  %53 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !794
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %53, i64 0, i64 0, !dbg !795
  %55 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !796
  %56 = getelementptr inbounds [4 x i64], [4 x i64]* %55, i64 0, i64 0, !dbg !797
  call void @f256_montymul(i64* %52, i64* %54, i64* %56), !dbg !798
  %57 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !799
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %57, i64 0, i64 0, !dbg !800
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !801
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !802
  call void @f256_add(i64* %58, i64* %59, i64* %60), !dbg !803
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !804
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !805
  %63 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !806
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %63, i64 0, i64 0, !dbg !807
  call void @f256_sub(i64* %61, i64* %62, i64* %64), !dbg !808
  %65 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !809
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %65, i64 0, i64 0, !dbg !810
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %2, i64 0, i64 0, !dbg !811
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !812
  call void @f256_montymul(i64* %66, i64* %67, i64* %68), !dbg !813
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !814
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !815
  call void @f256_montysquare(i64* %69, i64* %70), !dbg !816
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !817
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !818
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !819
  call void @f256_add(i64* %71, i64* %72, i64* %73), !dbg !820
  %74 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !821
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %74, i64 0, i64 0, !dbg !822
  %76 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !823
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %76, i64 0, i64 0, !dbg !824
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !825
  call void @f256_sub(i64* %75, i64* %77, i64* %78), !dbg !826
  ret void, !dbg !827
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @point_encode(i8* %0, %struct.p256_jacobian* %1) #0 !dbg !828 {
  %3 = alloca [4 x i64], align 16
  %4 = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !831, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !833, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !834, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !836, metadata !DIExpression()), !dbg !837
  %5 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !838
  %6 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !839
  %7 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !840
  call void @f256_invert(i64* %5, i64* %7), !dbg !841
  %8 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !842
  %9 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !843
  call void @f256_montysquare(i64* %8, i64* %9), !dbg !844
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !845
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !846
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !847
  call void @f256_montymul(i64* %10, i64* %11, i64* %12), !dbg !848
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !849
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 0, !dbg !850
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0, !dbg !851
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !852
  call void @f256_montymul(i64* %13, i64* %15, i64* %16), !dbg !853
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !854
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 1, !dbg !855
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0, !dbg !856
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !857
  call void @f256_montymul(i64* %17, i64* %19, i64* %20), !dbg !858
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !859
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !860
  call void @f256_frommonty(i64* %21, i64* %22), !dbg !861
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !862
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !863
  call void @f256_frommonty(i64* %23, i64* %24), !dbg !864
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !865
  call void @f256_final_reduce(i64* %25), !dbg !866
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !867
  call void @f256_final_reduce(i64* %26), !dbg !868
  %27 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !869
  store i8 4, i8* %27, align 1, !dbg !870
  %28 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !871
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3, !dbg !872
  %30 = load i64, i64* %29, align 8, !dbg !872
  call void @br_enc64be(i8* %28, i64 %30), !dbg !873
  %31 = getelementptr inbounds i8, i8* %0, i64 9, !dbg !874
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2, !dbg !875
  %33 = load i64, i64* %32, align 16, !dbg !875
  call void @br_enc64be(i8* %31, i64 %33), !dbg !876
  %34 = getelementptr inbounds i8, i8* %0, i64 17, !dbg !877
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1, !dbg !878
  %36 = load i64, i64* %35, align 8, !dbg !878
  call void @br_enc64be(i8* %34, i64 %36), !dbg !879
  %37 = getelementptr inbounds i8, i8* %0, i64 25, !dbg !880
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !881
  %39 = load i64, i64* %38, align 16, !dbg !881
  call void @br_enc64be(i8* %37, i64 %39), !dbg !882
  %40 = getelementptr inbounds i8, i8* %0, i64 33, !dbg !883
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3, !dbg !884
  %42 = load i64, i64* %41, align 8, !dbg !884
  call void @br_enc64be(i8* %40, i64 %42), !dbg !885
  %43 = getelementptr inbounds i8, i8* %0, i64 41, !dbg !886
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2, !dbg !887
  %45 = load i64, i64* %44, align 16, !dbg !887
  call void @br_enc64be(i8* %43, i64 %45), !dbg !888
  %46 = getelementptr inbounds i8, i8* %0, i64 49, !dbg !889
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1, !dbg !890
  %48 = load i64, i64* %47, align 8, !dbg !890
  call void @br_enc64be(i8* %46, i64 %48), !dbg !891
  %49 = getelementptr inbounds i8, i8* %0, i64 57, !dbg !892
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !893
  %51 = load i64, i64* %50, align 16, !dbg !893
  call void @br_enc64be(i8* %49, i64 %51), !dbg !894
  %52 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !895
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %52, i64 0, i64 0, !dbg !896
  %54 = load i64, i64* %53, align 8, !dbg !896
  %55 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !897
  %56 = getelementptr inbounds [4 x i64], [4 x i64]* %55, i64 0, i64 1, !dbg !898
  %57 = load i64, i64* %56, align 8, !dbg !898
  %58 = or i64 %54, %57, !dbg !899
  %59 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !900
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %59, i64 0, i64 2, !dbg !901
  %61 = load i64, i64* %60, align 8, !dbg !901
  %62 = or i64 %58, %61, !dbg !902
  %63 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i32 0, i32 2, !dbg !903
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %63, i64 0, i64 3, !dbg !904
  %65 = load i64, i64* %64, align 8, !dbg !904
  %66 = or i64 %62, %65, !dbg !905
  call void @llvm.dbg.value(metadata i64 %66, metadata !906, metadata !DIExpression()), !dbg !832
  %67 = lshr i64 %66, 32, !dbg !907
  %68 = or i64 %66, %67, !dbg !908
  %69 = trunc i64 %68 to i32, !dbg !909
  %70 = call i32 @NEQ(i32 %69, i32 0), !dbg !910
  ret i32 %70, !dbg !911
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_invert(i64* %0, i64* %1) #0 !dbg !912 {
  %3 = alloca [4 x i64], align 16
  %4 = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata i64* %0, metadata !913, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i64* %1, metadata !915, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !918, metadata !DIExpression()), !dbg !919
  %5 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !920
  %6 = bitcast i64* %5 to i8*, !dbg !920
  %7 = bitcast i64* %1 to i8*, !dbg !920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 8 %7, i64 32, i1 false), !dbg !920
  call void @llvm.dbg.value(metadata i32 0, metadata !921, metadata !DIExpression()), !dbg !914
  br label %8, !dbg !922

8:                                                ; preds = %15, %2
  %.0 = phi i32 [ 0, %2 ], [ %16, %15 ], !dbg !924
  call void @llvm.dbg.value(metadata i32 %.0, metadata !921, metadata !DIExpression()), !dbg !914
  %9 = icmp slt i32 %.0, 30, !dbg !925
  br i1 %9, label %10, label %17, !dbg !927

10:                                               ; preds = %8
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !928
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !930
  call void @f256_montysquare(i64* %11, i64* %12), !dbg !931
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !932
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !933
  call void @f256_montymul(i64* %13, i64* %14, i64* %1), !dbg !934
  br label %15, !dbg !935

15:                                               ; preds = %10
  %16 = add nsw i32 %.0, 1, !dbg !936
  call void @llvm.dbg.value(metadata i32 %16, metadata !921, metadata !DIExpression()), !dbg !914
  br label %8, !dbg !937, !llvm.loop !938

17:                                               ; preds = %8
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !940
  %19 = bitcast i64* %18 to i8*, !dbg !940
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !940
  %21 = bitcast i64* %20 to i8*, !dbg !940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 %21, i64 32, i1 false), !dbg !940
  call void @llvm.dbg.value(metadata i32 224, metadata !921, metadata !DIExpression()), !dbg !914
  br label %22, !dbg !941

22:                                               ; preds = %35, %17
  %.1 = phi i32 [ 224, %17 ], [ %36, %35 ], !dbg !943
  call void @llvm.dbg.value(metadata i32 %.1, metadata !921, metadata !DIExpression()), !dbg !914
  %23 = icmp sge i32 %.1, 0, !dbg !944
  br i1 %23, label %24, label %37, !dbg !946

24:                                               ; preds = %22
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !947
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !949
  call void @f256_montysquare(i64* %25, i64* %26), !dbg !950
  switch i32 %.1, label %34 [
    i32 0, label %27
    i32 2, label %27
    i32 192, label %27
    i32 224, label %27
    i32 3, label %30
    i32 34, label %30
    i32 65, label %30
  ], !dbg !951

27:                                               ; preds = %24, %24, %24, %24
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !952
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !954
  call void @f256_montymul(i64* %28, i64* %29, i64* %1), !dbg !955
  br label %34, !dbg !956

30:                                               ; preds = %24, %24, %24
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !957
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !958
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !959
  call void @f256_montymul(i64* %31, i64* %32, i64* %33), !dbg !960
  br label %34, !dbg !961

34:                                               ; preds = %30, %27, %24
  br label %35, !dbg !962

35:                                               ; preds = %34
  %36 = add nsw i32 %.1, -1, !dbg !963
  call void @llvm.dbg.value(metadata i32 %36, metadata !921, metadata !DIExpression()), !dbg !914
  br label %22, !dbg !964, !llvm.loop !965

37:                                               ; preds = %22
  %38 = bitcast i64* %0 to i8*, !dbg !967
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !967
  %40 = bitcast i64* %39 to i8*, !dbg !967
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 16 %40, i64 32, i1 false), !dbg !967
  ret void, !dbg !968
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_montysquare(i64* %0, i64* %1) #0 !dbg !969 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !970, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64* %1, metadata !972, metadata !DIExpression()), !dbg !971
  call void @f256_montymul(i64* %0, i64* %1, i64* %1), !dbg !973
  ret void, !dbg !974
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_montymul(i64* %0, i64* %1, i64* %2) #0 !dbg !975 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !978, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64* %1, metadata !980, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64* %2, metadata !981, metadata !DIExpression()), !dbg !979
  %4 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !982
  %5 = load i64, i64* %4, align 8, !dbg !982
  call void @llvm.dbg.value(metadata i64 %5, metadata !983, metadata !DIExpression()), !dbg !979
  %6 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !984
  %7 = load i64, i64* %6, align 8, !dbg !984
  %8 = zext i64 %7 to i128, !dbg !985
  %9 = zext i64 %5 to i128, !dbg !986
  %10 = mul i128 %8, %9, !dbg !987
  call void @llvm.dbg.value(metadata i128 %10, metadata !988, metadata !DIExpression()), !dbg !979
  %11 = trunc i128 %10 to i64, !dbg !989
  call void @llvm.dbg.value(metadata i64 %11, metadata !990, metadata !DIExpression()), !dbg !979
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !991
  %13 = load i64, i64* %12, align 8, !dbg !991
  %14 = zext i64 %13 to i128, !dbg !992
  %15 = zext i64 %5 to i128, !dbg !993
  %16 = mul i128 %14, %15, !dbg !994
  %17 = lshr i128 %10, 64, !dbg !995
  %18 = add i128 %16, %17, !dbg !996
  %19 = shl i64 %11, 32, !dbg !997
  %20 = zext i64 %19 to i128, !dbg !998
  %21 = add i128 %18, %20, !dbg !999
  call void @llvm.dbg.value(metadata i128 %21, metadata !988, metadata !DIExpression()), !dbg !979
  %22 = trunc i128 %21 to i64, !dbg !1000
  call void @llvm.dbg.value(metadata i64 %22, metadata !1001, metadata !DIExpression()), !dbg !979
  %23 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1002
  %24 = load i64, i64* %23, align 8, !dbg !1002
  %25 = zext i64 %24 to i128, !dbg !1003
  %26 = zext i64 %5 to i128, !dbg !1004
  %27 = mul i128 %25, %26, !dbg !1005
  %28 = lshr i128 %21, 64, !dbg !1006
  %29 = add i128 %27, %28, !dbg !1007
  %30 = lshr i64 %11, 32, !dbg !1008
  %31 = zext i64 %30 to i128, !dbg !1009
  %32 = add i128 %29, %31, !dbg !1010
  call void @llvm.dbg.value(metadata i128 %32, metadata !988, metadata !DIExpression()), !dbg !979
  %33 = trunc i128 %32 to i64, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %33, metadata !1012, metadata !DIExpression()), !dbg !979
  %34 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1013
  %35 = load i64, i64* %34, align 8, !dbg !1013
  %36 = zext i64 %35 to i128, !dbg !1014
  %37 = zext i64 %5 to i128, !dbg !1015
  %38 = mul i128 %36, %37, !dbg !1016
  %39 = lshr i128 %32, 64, !dbg !1017
  %40 = add i128 %38, %39, !dbg !1018
  %41 = zext i64 %11 to i128, !dbg !1019
  %42 = add i128 %40, %41, !dbg !1020
  call void @llvm.dbg.value(metadata i128 %42, metadata !988, metadata !DIExpression()), !dbg !979
  %43 = trunc i128 %42 to i64, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %43, metadata !1022, metadata !DIExpression()), !dbg !979
  %44 = lshr i128 %42, 64, !dbg !1023
  %45 = trunc i128 %44 to i64, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %45, metadata !1025, metadata !DIExpression()), !dbg !979
  %46 = zext i64 %11 to i128, !dbg !1026
  %47 = shl i128 %46, 64, !dbg !1027
  %48 = zext i64 %11 to i128, !dbg !1028
  %49 = shl i128 %48, 32, !dbg !1029
  %50 = sub i128 %47, %49, !dbg !1030
  call void @llvm.dbg.value(metadata i128 %50, metadata !1031, metadata !DIExpression()), !dbg !979
  %51 = zext i64 %43 to i128, !dbg !1032
  %52 = trunc i128 %50 to i64, !dbg !1033
  %53 = zext i64 %52 to i128, !dbg !1033
  %54 = add i128 %51, %53, !dbg !1034
  call void @llvm.dbg.value(metadata i128 %54, metadata !988, metadata !DIExpression()), !dbg !979
  %55 = trunc i128 %54 to i64, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %55, metadata !1022, metadata !DIExpression()), !dbg !979
  %56 = zext i64 %45 to i128, !dbg !1036
  %57 = lshr i128 %54, 64, !dbg !1037
  %58 = add i128 %56, %57, !dbg !1038
  %59 = lshr i128 %50, 64, !dbg !1039
  %60 = add i128 %58, %59, !dbg !1040
  call void @llvm.dbg.value(metadata i128 %60, metadata !988, metadata !DIExpression()), !dbg !979
  %61 = trunc i128 %60 to i64, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %61, metadata !1025, metadata !DIExpression()), !dbg !979
  %62 = lshr i128 %60, 64, !dbg !1042
  %63 = trunc i128 %62 to i64, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %63, metadata !1044, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i32 1, metadata !1045, metadata !DIExpression()), !dbg !979
  br label %64, !dbg !1046

64:                                               ; preds = %149, %3
  %.05 = phi i64 [ %63, %3 ], [ %148, %149 ], !dbg !979
  %.04 = phi i64 [ %61, %3 ], [ %145, %149 ], !dbg !979
  %.03 = phi i64 [ %55, %3 ], [ %139, %149 ], !dbg !979
  %.02 = phi i64 [ %33, %3 ], [ %125, %149 ], !dbg !979
  %.01 = phi i64 [ %22, %3 ], [ %118, %149 ], !dbg !979
  %.0 = phi i32 [ 1, %3 ], [ %150, %149 ], !dbg !1048
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1045, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1001, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1012, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1022, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1025, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1044, metadata !DIExpression()), !dbg !979
  %65 = icmp slt i32 %.0, 4, !dbg !1049
  br i1 %65, label %66, label %151, !dbg !1051

66:                                               ; preds = %64
  %67 = sext i32 %.0 to i64, !dbg !1052
  %68 = getelementptr inbounds i64, i64* %1, i64 %67, !dbg !1052
  %69 = load i64, i64* %68, align 8, !dbg !1052
  call void @llvm.dbg.value(metadata i64 %69, metadata !983, metadata !DIExpression()), !dbg !979
  %70 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1054
  %71 = load i64, i64* %70, align 8, !dbg !1054
  %72 = zext i64 %71 to i128, !dbg !1055
  %73 = zext i64 %69 to i128, !dbg !1056
  %74 = mul i128 %72, %73, !dbg !1057
  %75 = zext i64 %.01 to i128, !dbg !1058
  %76 = add i128 %74, %75, !dbg !1059
  call void @llvm.dbg.value(metadata i128 %76, metadata !988, metadata !DIExpression()), !dbg !979
  %77 = trunc i128 %76 to i64, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %77, metadata !990, metadata !DIExpression()), !dbg !979
  %78 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1061
  %79 = load i64, i64* %78, align 8, !dbg !1061
  %80 = zext i64 %79 to i128, !dbg !1062
  %81 = zext i64 %69 to i128, !dbg !1063
  %82 = mul i128 %80, %81, !dbg !1064
  %83 = zext i64 %.02 to i128, !dbg !1065
  %84 = add i128 %82, %83, !dbg !1066
  %85 = lshr i128 %76, 64, !dbg !1067
  %86 = add i128 %84, %85, !dbg !1068
  call void @llvm.dbg.value(metadata i128 %86, metadata !988, metadata !DIExpression()), !dbg !979
  %87 = trunc i128 %86 to i64, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %87, metadata !1001, metadata !DIExpression()), !dbg !979
  %88 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1070
  %89 = load i64, i64* %88, align 8, !dbg !1070
  %90 = zext i64 %89 to i128, !dbg !1071
  %91 = zext i64 %69 to i128, !dbg !1072
  %92 = mul i128 %90, %91, !dbg !1073
  %93 = zext i64 %.03 to i128, !dbg !1074
  %94 = add i128 %92, %93, !dbg !1075
  %95 = lshr i128 %86, 64, !dbg !1076
  %96 = add i128 %94, %95, !dbg !1077
  call void @llvm.dbg.value(metadata i128 %96, metadata !988, metadata !DIExpression()), !dbg !979
  %97 = trunc i128 %96 to i64, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %97, metadata !1012, metadata !DIExpression()), !dbg !979
  %98 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1079
  %99 = load i64, i64* %98, align 8, !dbg !1079
  %100 = zext i64 %99 to i128, !dbg !1080
  %101 = zext i64 %69 to i128, !dbg !1081
  %102 = mul i128 %100, %101, !dbg !1082
  %103 = zext i64 %.04 to i128, !dbg !1083
  %104 = add i128 %102, %103, !dbg !1084
  %105 = lshr i128 %96, 64, !dbg !1085
  %106 = add i128 %104, %105, !dbg !1086
  call void @llvm.dbg.value(metadata i128 %106, metadata !988, metadata !DIExpression()), !dbg !979
  %107 = trunc i128 %106 to i64, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %107, metadata !1022, metadata !DIExpression()), !dbg !979
  %108 = zext i64 %.05 to i128, !dbg !1088
  %109 = lshr i128 %106, 64, !dbg !1089
  %110 = add i128 %108, %109, !dbg !1090
  call void @llvm.dbg.value(metadata i128 %110, metadata !988, metadata !DIExpression()), !dbg !979
  %111 = trunc i128 %110 to i64, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %111, metadata !1025, metadata !DIExpression()), !dbg !979
  %112 = lshr i128 %110, 64, !dbg !1092
  %113 = trunc i128 %112 to i64, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %113, metadata !1044, metadata !DIExpression()), !dbg !979
  %114 = zext i64 %87 to i128, !dbg !1094
  %115 = shl i64 %77, 32, !dbg !1095
  %116 = zext i64 %115 to i128, !dbg !1096
  %117 = add i128 %114, %116, !dbg !1097
  call void @llvm.dbg.value(metadata i128 %117, metadata !988, metadata !DIExpression()), !dbg !979
  %118 = trunc i128 %117 to i64, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %118, metadata !1001, metadata !DIExpression()), !dbg !979
  %119 = lshr i128 %117, 64, !dbg !1099
  %120 = zext i64 %97 to i128, !dbg !1100
  %121 = add i128 %119, %120, !dbg !1101
  %122 = lshr i64 %77, 32, !dbg !1102
  %123 = zext i64 %122 to i128, !dbg !1103
  %124 = add i128 %121, %123, !dbg !1104
  call void @llvm.dbg.value(metadata i128 %124, metadata !988, metadata !DIExpression()), !dbg !979
  %125 = trunc i128 %124 to i64, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %125, metadata !1012, metadata !DIExpression()), !dbg !979
  %126 = zext i64 %77 to i128, !dbg !1106
  %127 = shl i128 %126, 64, !dbg !1107
  %128 = zext i64 %77 to i128, !dbg !1108
  %129 = shl i128 %128, 32, !dbg !1109
  %130 = sub i128 %127, %129, !dbg !1110
  %131 = zext i64 %77 to i128, !dbg !1111
  %132 = add i128 %130, %131, !dbg !1112
  call void @llvm.dbg.value(metadata i128 %132, metadata !1031, metadata !DIExpression()), !dbg !979
  %133 = lshr i128 %124, 64, !dbg !1113
  %134 = zext i64 %107 to i128, !dbg !1114
  %135 = add i128 %133, %134, !dbg !1115
  %136 = trunc i128 %132 to i64, !dbg !1116
  %137 = zext i64 %136 to i128, !dbg !1116
  %138 = add i128 %135, %137, !dbg !1117
  call void @llvm.dbg.value(metadata i128 %138, metadata !988, metadata !DIExpression()), !dbg !979
  %139 = trunc i128 %138 to i64, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %139, metadata !1022, metadata !DIExpression()), !dbg !979
  %140 = zext i64 %111 to i128, !dbg !1119
  %141 = lshr i128 %138, 64, !dbg !1120
  %142 = add i128 %140, %141, !dbg !1121
  %143 = lshr i128 %132, 64, !dbg !1122
  %144 = add i128 %142, %143, !dbg !1123
  call void @llvm.dbg.value(metadata i128 %144, metadata !988, metadata !DIExpression()), !dbg !979
  %145 = trunc i128 %144 to i64, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %145, metadata !1025, metadata !DIExpression()), !dbg !979
  %146 = lshr i128 %144, 64, !dbg !1125
  %147 = trunc i128 %146 to i64, !dbg !1126
  %148 = add i64 %113, %147, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %148, metadata !1044, metadata !DIExpression()), !dbg !979
  br label %149, !dbg !1128

149:                                              ; preds = %66
  %150 = add nsw i32 %.0, 1, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %150, metadata !1045, metadata !DIExpression()), !dbg !979
  br label %64, !dbg !1130, !llvm.loop !1131

151:                                              ; preds = %64
  %152 = zext i64 %.01 to i128, !dbg !1133
  %153 = zext i64 %.05 to i128, !dbg !1134
  %154 = add i128 %152, %153, !dbg !1135
  call void @llvm.dbg.value(metadata i128 %154, metadata !988, metadata !DIExpression()), !dbg !979
  %155 = trunc i128 %154 to i64, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %155, metadata !1001, metadata !DIExpression()), !dbg !979
  %156 = zext i64 %.02 to i128, !dbg !1137
  %157 = shl i64 %.05, 32, !dbg !1138
  %158 = zext i64 %157 to i128, !dbg !1139
  %159 = sub i128 %156, %158, !dbg !1140
  %160 = lshr i128 %154, 64, !dbg !1141
  %161 = add i128 %159, %160, !dbg !1142
  call void @llvm.dbg.value(metadata i128 %161, metadata !988, metadata !DIExpression()), !dbg !979
  %162 = trunc i128 %161 to i64, !dbg !1143
  call void @llvm.dbg.value(metadata i64 %162, metadata !1012, metadata !DIExpression()), !dbg !979
  %163 = zext i64 %.03 to i128, !dbg !1144
  %164 = lshr i128 %161, 127, !dbg !1145
  %165 = sub i128 %163, %164, !dbg !1146
  call void @llvm.dbg.value(metadata i128 %165, metadata !988, metadata !DIExpression()), !dbg !979
  %166 = trunc i128 %165 to i64, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %166, metadata !1022, metadata !DIExpression()), !dbg !979
  %167 = lshr i128 %165, 127, !dbg !1148
  %168 = trunc i128 %167 to i64, !dbg !1149
  %169 = sub i64 %.04, %168, !dbg !1150
  %170 = sub i64 %169, %.05, !dbg !1151
  %171 = shl i64 %.05, 32, !dbg !1152
  %172 = add i64 %170, %171, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %172, metadata !1025, metadata !DIExpression()), !dbg !979
  %173 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1154
  store i64 %155, i64* %173, align 8, !dbg !1155
  %174 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1156
  store i64 %162, i64* %174, align 8, !dbg !1157
  %175 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1158
  store i64 %166, i64* %175, align 8, !dbg !1159
  %176 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1160
  store i64 %172, i64* %176, align 8, !dbg !1161
  ret void, !dbg !1162
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_frommonty(i64* %0, i64* %1) #0 !dbg !50 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1163, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i64* %1, metadata !1165, metadata !DIExpression()), !dbg !1164
  call void @f256_montymul(i64* %0, i64* %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @f256_frommonty.one, i64 0, i64 0)), !dbg !1166
  ret void, !dbg !1167
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64be(i8* %0, i64 %1) #0 !dbg !1168 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1171, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %1, metadata !1173, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %0, metadata !1174, metadata !DIExpression()), !dbg !1172
  %3 = lshr i64 %1, 32, !dbg !1175
  %4 = trunc i64 %3 to i32, !dbg !1176
  call void @br_enc32be(i8* %0, i32 %4), !dbg !1177
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1178
  %6 = trunc i64 %1 to i32, !dbg !1179
  call void @br_enc32be(i8* %5, i32 %6), !dbg !1180
  ret void, !dbg !1181
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !1182 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1183, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 %1, metadata !1185, metadata !DIExpression()), !dbg !1184
  %3 = xor i32 %0, %1, !dbg !1186
  call void @llvm.dbg.value(metadata i32 %3, metadata !1187, metadata !DIExpression()), !dbg !1184
  %4 = sub i32 0, %3, !dbg !1188
  %5 = or i32 %3, %4, !dbg !1189
  %6 = lshr i32 %5, 31, !dbg !1190
  ret i32 %6, !dbg !1191
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !1192 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1195, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i32 %1, metadata !1197, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %0, metadata !1198, metadata !DIExpression()), !dbg !1196
  %3 = lshr i32 %1, 24, !dbg !1199
  %4 = trunc i32 %3 to i8, !dbg !1200
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1201
  store i8 %4, i8* %5, align 1, !dbg !1202
  %6 = lshr i32 %1, 16, !dbg !1203
  %7 = trunc i32 %6 to i8, !dbg !1204
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1205
  store i8 %7, i8* %8, align 1, !dbg !1206
  %9 = lshr i32 %1, 8, !dbg !1207
  %10 = trunc i32 %9 to i8, !dbg !1208
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1209
  store i8 %10, i8* %11, align 1, !dbg !1210
  %12 = trunc i32 %1 to i8, !dbg !1211
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1212
  store i8 %12, i8* %13, align 1, !dbg !1213
  ret void, !dbg !1214
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @f256_add(i64* %0, i64* %1, i64* %2) #0 !dbg !1215 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1216, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64* %1, metadata !1218, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64* %2, metadata !1219, metadata !DIExpression()), !dbg !1217
  %4 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1220
  %5 = load i64, i64* %4, align 8, !dbg !1220
  %6 = zext i64 %5 to i128, !dbg !1221
  %7 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1222
  %8 = load i64, i64* %7, align 8, !dbg !1222
  %9 = zext i64 %8 to i128, !dbg !1222
  %10 = add i128 %6, %9, !dbg !1223
  call void @llvm.dbg.value(metadata i128 %10, metadata !1224, metadata !DIExpression()), !dbg !1217
  %11 = trunc i128 %10 to i64, !dbg !1225
  %12 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1226
  store i64 %11, i64* %12, align 8, !dbg !1227
  %13 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1228
  %14 = load i64, i64* %13, align 8, !dbg !1228
  %15 = zext i64 %14 to i128, !dbg !1229
  %16 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1230
  %17 = load i64, i64* %16, align 8, !dbg !1230
  %18 = zext i64 %17 to i128, !dbg !1230
  %19 = add i128 %15, %18, !dbg !1231
  %20 = lshr i128 %10, 64, !dbg !1232
  %21 = add i128 %19, %20, !dbg !1233
  call void @llvm.dbg.value(metadata i128 %21, metadata !1224, metadata !DIExpression()), !dbg !1217
  %22 = trunc i128 %21 to i64, !dbg !1234
  %23 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1235
  store i64 %22, i64* %23, align 8, !dbg !1236
  %24 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1237
  %25 = load i64, i64* %24, align 8, !dbg !1237
  %26 = zext i64 %25 to i128, !dbg !1238
  %27 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1239
  %28 = load i64, i64* %27, align 8, !dbg !1239
  %29 = zext i64 %28 to i128, !dbg !1239
  %30 = add i128 %26, %29, !dbg !1240
  %31 = lshr i128 %21, 64, !dbg !1241
  %32 = add i128 %30, %31, !dbg !1242
  call void @llvm.dbg.value(metadata i128 %32, metadata !1224, metadata !DIExpression()), !dbg !1217
  %33 = trunc i128 %32 to i64, !dbg !1243
  %34 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1244
  store i64 %33, i64* %34, align 8, !dbg !1245
  %35 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1246
  %36 = load i64, i64* %35, align 8, !dbg !1246
  %37 = zext i64 %36 to i128, !dbg !1247
  %38 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1248
  %39 = load i64, i64* %38, align 8, !dbg !1248
  %40 = zext i64 %39 to i128, !dbg !1248
  %41 = add i128 %37, %40, !dbg !1249
  %42 = lshr i128 %32, 64, !dbg !1250
  %43 = add i128 %41, %42, !dbg !1251
  call void @llvm.dbg.value(metadata i128 %43, metadata !1224, metadata !DIExpression()), !dbg !1217
  %44 = trunc i128 %43 to i64, !dbg !1252
  %45 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1253
  store i64 %44, i64* %45, align 8, !dbg !1254
  %46 = lshr i128 %43, 64, !dbg !1255
  %47 = trunc i128 %46 to i64, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %47, metadata !1257, metadata !DIExpression()), !dbg !1217
  %48 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1258
  %49 = load i64, i64* %48, align 8, !dbg !1258
  %50 = zext i64 %49 to i128, !dbg !1259
  %51 = zext i64 %47 to i128, !dbg !1260
  %52 = add i128 %50, %51, !dbg !1261
  call void @llvm.dbg.value(metadata i128 %52, metadata !1224, metadata !DIExpression()), !dbg !1217
  %53 = trunc i128 %52 to i64, !dbg !1262
  %54 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1263
  store i64 %53, i64* %54, align 8, !dbg !1264
  %55 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1265
  %56 = load i64, i64* %55, align 8, !dbg !1265
  %57 = zext i64 %56 to i128, !dbg !1266
  %58 = lshr i128 %52, 64, !dbg !1267
  %59 = add i128 %57, %58, !dbg !1268
  %60 = shl i64 %47, 32, !dbg !1269
  %61 = zext i64 %60 to i128, !dbg !1270
  %62 = sub i128 %59, %61, !dbg !1271
  call void @llvm.dbg.value(metadata i128 %62, metadata !1224, metadata !DIExpression()), !dbg !1217
  %63 = trunc i128 %62 to i64, !dbg !1272
  %64 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1273
  store i64 %63, i64* %64, align 8, !dbg !1274
  %65 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1275
  %66 = load i64, i64* %65, align 8, !dbg !1275
  %67 = zext i64 %66 to i128, !dbg !1276
  %68 = lshr i128 %62, 64, !dbg !1277
  %69 = and i128 %68, 1, !dbg !1278
  %70 = sub i128 %67, %69, !dbg !1279
  call void @llvm.dbg.value(metadata i128 %70, metadata !1224, metadata !DIExpression()), !dbg !1217
  %71 = trunc i128 %70 to i64, !dbg !1280
  %72 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1281
  store i64 %71, i64* %72, align 8, !dbg !1282
  %73 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1283
  %74 = load i64, i64* %73, align 8, !dbg !1283
  %75 = zext i64 %74 to i128, !dbg !1284
  %76 = lshr i128 %70, 64, !dbg !1285
  %77 = and i128 %76, 1, !dbg !1286
  %78 = sub i128 %75, %77, !dbg !1287
  %79 = shl i64 %47, 32, !dbg !1288
  %80 = zext i64 %79 to i128, !dbg !1289
  %81 = add i128 %78, %80, !dbg !1290
  %82 = zext i64 %47 to i128, !dbg !1291
  %83 = sub i128 %81, %82, !dbg !1292
  call void @llvm.dbg.value(metadata i128 %83, metadata !1224, metadata !DIExpression()), !dbg !1217
  %84 = trunc i128 %83 to i64, !dbg !1293
  %85 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1294
  store i64 %84, i64* %85, align 8, !dbg !1295
  %86 = lshr i128 %83, 64, !dbg !1296
  %87 = trunc i128 %86 to i64, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %87, metadata !1257, metadata !DIExpression()), !dbg !1217
  %88 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1298
  %89 = load i64, i64* %88, align 8, !dbg !1298
  %90 = zext i64 %89 to i128, !dbg !1299
  %91 = zext i64 %87 to i128, !dbg !1300
  %92 = add i128 %90, %91, !dbg !1301
  call void @llvm.dbg.value(metadata i128 %92, metadata !1224, metadata !DIExpression()), !dbg !1217
  %93 = trunc i128 %92 to i64, !dbg !1302
  %94 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1303
  store i64 %93, i64* %94, align 8, !dbg !1304
  %95 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1305
  %96 = load i64, i64* %95, align 8, !dbg !1305
  %97 = zext i64 %96 to i128, !dbg !1306
  %98 = lshr i128 %92, 64, !dbg !1307
  %99 = add i128 %97, %98, !dbg !1308
  %100 = shl i64 %87, 32, !dbg !1309
  %101 = zext i64 %100 to i128, !dbg !1310
  %102 = sub i128 %99, %101, !dbg !1311
  call void @llvm.dbg.value(metadata i128 %102, metadata !1224, metadata !DIExpression()), !dbg !1217
  %103 = trunc i128 %102 to i64, !dbg !1312
  %104 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1313
  store i64 %103, i64* %104, align 8, !dbg !1314
  %105 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1315
  %106 = load i64, i64* %105, align 8, !dbg !1315
  %107 = zext i64 %106 to i128, !dbg !1316
  %108 = lshr i128 %102, 64, !dbg !1317
  %109 = and i128 %108, 1, !dbg !1318
  %110 = sub i128 %107, %109, !dbg !1319
  call void @llvm.dbg.value(metadata i128 %110, metadata !1224, metadata !DIExpression()), !dbg !1217
  %111 = trunc i128 %110 to i64, !dbg !1320
  %112 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1321
  store i64 %111, i64* %112, align 8, !dbg !1322
  %113 = shl i64 %87, 32, !dbg !1323
  %114 = sub i64 %113, %87, !dbg !1324
  %115 = lshr i128 %110, 64, !dbg !1325
  %116 = and i128 %115, 1, !dbg !1326
  %117 = trunc i128 %116 to i64, !dbg !1327
  %118 = sub i64 %114, %117, !dbg !1328
  %119 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1329
  %120 = load i64, i64* %119, align 8, !dbg !1330
  %121 = add i64 %120, %118, !dbg !1330
  store i64 %121, i64* %119, align 8, !dbg !1330
  ret void, !dbg !1331
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_sub(i64* %0, i64* %1, i64* %2) #0 !dbg !1332 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1333, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64* %1, metadata !1335, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64* %2, metadata !1336, metadata !DIExpression()), !dbg !1334
  %4 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1337
  %5 = load i64, i64* %4, align 8, !dbg !1337
  %6 = zext i64 %5 to i128, !dbg !1338
  %7 = getelementptr inbounds i64, i64* %2, i64 0, !dbg !1339
  %8 = load i64, i64* %7, align 8, !dbg !1339
  %9 = zext i64 %8 to i128, !dbg !1339
  %10 = sub i128 %6, %9, !dbg !1340
  call void @llvm.dbg.value(metadata i128 %10, metadata !1341, metadata !DIExpression()), !dbg !1334
  %11 = trunc i128 %10 to i64, !dbg !1342
  %12 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1343
  store i64 %11, i64* %12, align 8, !dbg !1344
  %13 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1345
  %14 = load i64, i64* %13, align 8, !dbg !1345
  %15 = zext i64 %14 to i128, !dbg !1346
  %16 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !1347
  %17 = load i64, i64* %16, align 8, !dbg !1347
  %18 = zext i64 %17 to i128, !dbg !1347
  %19 = sub i128 %15, %18, !dbg !1348
  %20 = lshr i128 %10, 64, !dbg !1349
  %21 = and i128 %20, 1, !dbg !1350
  %22 = sub i128 %19, %21, !dbg !1351
  call void @llvm.dbg.value(metadata i128 %22, metadata !1341, metadata !DIExpression()), !dbg !1334
  %23 = trunc i128 %22 to i64, !dbg !1352
  %24 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1353
  store i64 %23, i64* %24, align 8, !dbg !1354
  %25 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1355
  %26 = load i64, i64* %25, align 8, !dbg !1355
  %27 = zext i64 %26 to i128, !dbg !1356
  %28 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !1357
  %29 = load i64, i64* %28, align 8, !dbg !1357
  %30 = zext i64 %29 to i128, !dbg !1357
  %31 = sub i128 %27, %30, !dbg !1358
  %32 = lshr i128 %22, 64, !dbg !1359
  %33 = and i128 %32, 1, !dbg !1360
  %34 = sub i128 %31, %33, !dbg !1361
  call void @llvm.dbg.value(metadata i128 %34, metadata !1341, metadata !DIExpression()), !dbg !1334
  %35 = trunc i128 %34 to i64, !dbg !1362
  %36 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1363
  store i64 %35, i64* %36, align 8, !dbg !1364
  %37 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1365
  %38 = load i64, i64* %37, align 8, !dbg !1365
  %39 = zext i64 %38 to i128, !dbg !1366
  %40 = getelementptr inbounds i64, i64* %2, i64 3, !dbg !1367
  %41 = load i64, i64* %40, align 8, !dbg !1367
  %42 = zext i64 %41 to i128, !dbg !1367
  %43 = sub i128 %39, %42, !dbg !1368
  %44 = lshr i128 %34, 64, !dbg !1369
  %45 = and i128 %44, 1, !dbg !1370
  %46 = sub i128 %43, %45, !dbg !1371
  call void @llvm.dbg.value(metadata i128 %46, metadata !1341, metadata !DIExpression()), !dbg !1334
  %47 = trunc i128 %46 to i64, !dbg !1372
  %48 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1373
  store i64 %47, i64* %48, align 8, !dbg !1374
  %49 = lshr i128 %46, 64, !dbg !1375
  %50 = trunc i128 %49 to i64, !dbg !1376
  %51 = and i64 %50, 1, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %51, metadata !1378, metadata !DIExpression()), !dbg !1334
  %52 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1379
  %53 = load i64, i64* %52, align 8, !dbg !1379
  %54 = zext i64 %53 to i128, !dbg !1380
  %55 = zext i64 %51 to i128, !dbg !1381
  %56 = sub i128 %54, %55, !dbg !1382
  call void @llvm.dbg.value(metadata i128 %56, metadata !1341, metadata !DIExpression()), !dbg !1334
  %57 = trunc i128 %56 to i64, !dbg !1383
  %58 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1384
  store i64 %57, i64* %58, align 8, !dbg !1385
  %59 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1386
  %60 = load i64, i64* %59, align 8, !dbg !1386
  %61 = zext i64 %60 to i128, !dbg !1387
  %62 = shl i64 %51, 32, !dbg !1388
  %63 = zext i64 %62 to i128, !dbg !1389
  %64 = add i128 %61, %63, !dbg !1390
  %65 = lshr i128 %56, 64, !dbg !1391
  %66 = and i128 %65, 1, !dbg !1392
  %67 = sub i128 %64, %66, !dbg !1393
  call void @llvm.dbg.value(metadata i128 %67, metadata !1341, metadata !DIExpression()), !dbg !1334
  %68 = trunc i128 %67 to i64, !dbg !1394
  %69 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1395
  store i64 %68, i64* %69, align 8, !dbg !1396
  %70 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1397
  %71 = load i64, i64* %70, align 8, !dbg !1397
  %72 = zext i64 %71 to i128, !dbg !1398
  %73 = lshr i128 %67, 64, !dbg !1399
  %74 = add i128 %72, %73, !dbg !1400
  call void @llvm.dbg.value(metadata i128 %74, metadata !1341, metadata !DIExpression()), !dbg !1334
  %75 = trunc i128 %74 to i64, !dbg !1401
  %76 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1402
  store i64 %75, i64* %76, align 8, !dbg !1403
  %77 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1404
  %78 = load i64, i64* %77, align 8, !dbg !1404
  %79 = zext i64 %78 to i128, !dbg !1405
  %80 = lshr i128 %74, 64, !dbg !1406
  %81 = add i128 %79, %80, !dbg !1407
  %82 = shl i64 %51, 32, !dbg !1408
  %83 = zext i64 %82 to i128, !dbg !1409
  %84 = sub i128 %81, %83, !dbg !1410
  %85 = zext i64 %51 to i128, !dbg !1411
  %86 = add i128 %84, %85, !dbg !1412
  call void @llvm.dbg.value(metadata i128 %86, metadata !1341, metadata !DIExpression()), !dbg !1334
  %87 = trunc i128 %86 to i64, !dbg !1413
  %88 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1414
  store i64 %87, i64* %88, align 8, !dbg !1415
  %89 = lshr i128 %86, 64, !dbg !1416
  %90 = trunc i128 %89 to i64, !dbg !1417
  %91 = and i64 %90, 1, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %91, metadata !1378, metadata !DIExpression()), !dbg !1334
  %92 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1419
  %93 = load i64, i64* %92, align 8, !dbg !1419
  %94 = zext i64 %93 to i128, !dbg !1420
  %95 = zext i64 %91 to i128, !dbg !1421
  %96 = sub i128 %94, %95, !dbg !1422
  call void @llvm.dbg.value(metadata i128 %96, metadata !1341, metadata !DIExpression()), !dbg !1334
  %97 = trunc i128 %96 to i64, !dbg !1423
  %98 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1424
  store i64 %97, i64* %98, align 8, !dbg !1425
  %99 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1426
  %100 = load i64, i64* %99, align 8, !dbg !1426
  %101 = zext i64 %100 to i128, !dbg !1427
  %102 = shl i64 %91, 32, !dbg !1428
  %103 = zext i64 %102 to i128, !dbg !1429
  %104 = add i128 %101, %103, !dbg !1430
  %105 = lshr i128 %96, 64, !dbg !1431
  %106 = and i128 %105, 1, !dbg !1432
  %107 = sub i128 %104, %106, !dbg !1433
  call void @llvm.dbg.value(metadata i128 %107, metadata !1341, metadata !DIExpression()), !dbg !1334
  %108 = trunc i128 %107 to i64, !dbg !1434
  %109 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1435
  store i64 %108, i64* %109, align 8, !dbg !1436
  %110 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1437
  %111 = load i64, i64* %110, align 8, !dbg !1437
  %112 = zext i64 %111 to i128, !dbg !1438
  %113 = lshr i128 %107, 64, !dbg !1439
  %114 = add i128 %112, %113, !dbg !1440
  call void @llvm.dbg.value(metadata i128 %114, metadata !1341, metadata !DIExpression()), !dbg !1334
  %115 = trunc i128 %114 to i64, !dbg !1441
  %116 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1442
  store i64 %115, i64* %116, align 8, !dbg !1443
  %117 = lshr i128 %114, 64, !dbg !1444
  %118 = trunc i128 %117 to i64, !dbg !1445
  %119 = shl i64 %91, 32, !dbg !1446
  %120 = sub i64 %118, %119, !dbg !1447
  %121 = add i64 %120, %91, !dbg !1448
  %122 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !1449
  %123 = load i64, i64* %122, align 8, !dbg !1450
  %124 = add i64 %123, %121, !dbg !1450
  store i64 %124, i64* %122, align 8, !dbg !1450
  ret void, !dbg !1451
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !1452 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1455, metadata !DIExpression()), !dbg !1456
  %2 = xor i32 %0, 1, !dbg !1457
  ret i32 %2, !dbg !1458
}

; Function Attrs: noinline nounwind uwtable
define internal void @point_mul_inner(%struct.p256_jacobian* %0, %struct.p256_affine* %1, i8* %2, i64 %3) #0 !dbg !1459 {
  %5 = alloca %struct.p256_jacobian, align 8
  %6 = alloca %struct.p256_affine, align 8
  %7 = alloca %struct.p256_jacobian, align 8
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !1463, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata %struct.p256_affine* %1, metadata !1465, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8* %2, metadata !1466, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %3, metadata !1467, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %5, metadata !1468, metadata !DIExpression()), !dbg !1469
  %8 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !1470
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 96, i1 false), !dbg !1470
  call void @llvm.dbg.value(metadata i32 1, metadata !1471, metadata !DIExpression()), !dbg !1464
  br label %9, !dbg !1472

9:                                                ; preds = %163, %4
  %.03 = phi i32 [ 1, %4 ], [ %.1, %163 ], !dbg !1473
  %.02 = phi i64 [ %3, %4 ], [ %10, %163 ]
  %.01 = phi i8* [ %2, %4 ], [ %13, %163 ]
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1466, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1467, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1471, metadata !DIExpression()), !dbg !1464
  %10 = add i64 %.02, -1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %10, metadata !1467, metadata !DIExpression()), !dbg !1464
  %11 = icmp ugt i64 %.02, 0, !dbg !1475
  br i1 %11, label %12, label %164, !dbg !1472

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !1476
  call void @llvm.dbg.value(metadata i8* %13, metadata !1466, metadata !DIExpression()), !dbg !1464
  %14 = load i8, i8* %.01, align 1, !dbg !1478
  %15 = zext i8 %14 to i32, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %15, metadata !1479, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 0, metadata !1481, metadata !DIExpression()), !dbg !1480
  br label %16, !dbg !1482

16:                                               ; preds = %161, %12
  %.05 = phi i32 [ %15, %12 ], [ %160, %161 ], !dbg !1480
  %.04 = phi i32 [ 0, %12 ], [ %162, %161 ], !dbg !1484
  %.1 = phi i32 [ %.03, %12 ], [ %159, %161 ], !dbg !1464
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1471, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1481, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1479, metadata !DIExpression()), !dbg !1480
  %17 = icmp slt i32 %.04, 2, !dbg !1485
  br i1 %17, label %18, label %163, !dbg !1487

18:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.p256_affine* %6, metadata !1488, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.declare(metadata %struct.p256_jacobian* %7, metadata !1491, metadata !DIExpression()), !dbg !1492
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !1493
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !1494
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !1495
  call void @p256_double(%struct.p256_jacobian* %5), !dbg !1496
  %19 = lshr i32 %.05, 4, !dbg !1497
  %20 = and i32 %19, 15, !dbg !1498
  call void @llvm.dbg.value(metadata i32 %20, metadata !1499, metadata !DIExpression()), !dbg !1500
  %21 = call i32 @NEQ(i32 %20, i32 0), !dbg !1501
  call void @llvm.dbg.value(metadata i32 %21, metadata !1502, metadata !DIExpression()), !dbg !1500
  %22 = bitcast %struct.p256_affine* %6 to i8*, !dbg !1503
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 64, i1 false), !dbg !1503
  call void @llvm.dbg.value(metadata i32 0, metadata !1504, metadata !DIExpression()), !dbg !1500
  br label %23, !dbg !1505

23:                                               ; preds = %110, %18
  %.06 = phi i32 [ 0, %18 ], [ %111, %110 ], !dbg !1507
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1504, metadata !DIExpression()), !dbg !1500
  %24 = icmp ult i32 %.06, 15, !dbg !1508
  br i1 %24, label %25, label %112, !dbg !1510

25:                                               ; preds = %23
  %26 = add i32 %.06, 1, !dbg !1511
  %27 = call i32 @EQ(i32 %20, i32 %26), !dbg !1513
  %28 = zext i32 %27 to i64, !dbg !1514
  %29 = sub i64 0, %28, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %29, metadata !1516, metadata !DIExpression()), !dbg !1500
  %30 = zext i32 %.06 to i64, !dbg !1517
  %31 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %30, !dbg !1517
  %32 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %31, i32 0, i32 0, !dbg !1518
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %32, i64 0, i64 0, !dbg !1517
  %34 = load i64, i64* %33, align 8, !dbg !1517
  %35 = and i64 %29, %34, !dbg !1519
  %36 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !1520
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %36, i64 0, i64 0, !dbg !1521
  %38 = load i64, i64* %37, align 8, !dbg !1522
  %39 = or i64 %38, %35, !dbg !1522
  store i64 %39, i64* %37, align 8, !dbg !1522
  %40 = zext i32 %.06 to i64, !dbg !1523
  %41 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %40, !dbg !1523
  %42 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %41, i32 0, i32 0, !dbg !1524
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %42, i64 0, i64 1, !dbg !1523
  %44 = load i64, i64* %43, align 8, !dbg !1523
  %45 = and i64 %29, %44, !dbg !1525
  %46 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !1526
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %46, i64 0, i64 1, !dbg !1527
  %48 = load i64, i64* %47, align 8, !dbg !1528
  %49 = or i64 %48, %45, !dbg !1528
  store i64 %49, i64* %47, align 8, !dbg !1528
  %50 = zext i32 %.06 to i64, !dbg !1529
  %51 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %50, !dbg !1529
  %52 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %51, i32 0, i32 0, !dbg !1530
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %52, i64 0, i64 2, !dbg !1529
  %54 = load i64, i64* %53, align 8, !dbg !1529
  %55 = and i64 %29, %54, !dbg !1531
  %56 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !1532
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %56, i64 0, i64 2, !dbg !1533
  %58 = load i64, i64* %57, align 8, !dbg !1534
  %59 = or i64 %58, %55, !dbg !1534
  store i64 %59, i64* %57, align 8, !dbg !1534
  %60 = zext i32 %.06 to i64, !dbg !1535
  %61 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %60, !dbg !1535
  %62 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %61, i32 0, i32 0, !dbg !1536
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %62, i64 0, i64 3, !dbg !1535
  %64 = load i64, i64* %63, align 8, !dbg !1535
  %65 = and i64 %29, %64, !dbg !1537
  %66 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !1538
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %66, i64 0, i64 3, !dbg !1539
  %68 = load i64, i64* %67, align 8, !dbg !1540
  %69 = or i64 %68, %65, !dbg !1540
  store i64 %69, i64* %67, align 8, !dbg !1540
  %70 = zext i32 %.06 to i64, !dbg !1541
  %71 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %70, !dbg !1541
  %72 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %71, i32 0, i32 1, !dbg !1542
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %72, i64 0, i64 0, !dbg !1541
  %74 = load i64, i64* %73, align 8, !dbg !1541
  %75 = and i64 %29, %74, !dbg !1543
  %76 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !1544
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %76, i64 0, i64 0, !dbg !1545
  %78 = load i64, i64* %77, align 8, !dbg !1546
  %79 = or i64 %78, %75, !dbg !1546
  store i64 %79, i64* %77, align 8, !dbg !1546
  %80 = zext i32 %.06 to i64, !dbg !1547
  %81 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %80, !dbg !1547
  %82 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %81, i32 0, i32 1, !dbg !1548
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %82, i64 0, i64 1, !dbg !1547
  %84 = load i64, i64* %83, align 8, !dbg !1547
  %85 = and i64 %29, %84, !dbg !1549
  %86 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !1550
  %87 = getelementptr inbounds [4 x i64], [4 x i64]* %86, i64 0, i64 1, !dbg !1551
  %88 = load i64, i64* %87, align 8, !dbg !1552
  %89 = or i64 %88, %85, !dbg !1552
  store i64 %89, i64* %87, align 8, !dbg !1552
  %90 = zext i32 %.06 to i64, !dbg !1553
  %91 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %90, !dbg !1553
  %92 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %91, i32 0, i32 1, !dbg !1554
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %92, i64 0, i64 2, !dbg !1553
  %94 = load i64, i64* %93, align 8, !dbg !1553
  %95 = and i64 %29, %94, !dbg !1555
  %96 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !1556
  %97 = getelementptr inbounds [4 x i64], [4 x i64]* %96, i64 0, i64 2, !dbg !1557
  %98 = load i64, i64* %97, align 8, !dbg !1558
  %99 = or i64 %98, %95, !dbg !1558
  store i64 %99, i64* %97, align 8, !dbg !1558
  %100 = zext i32 %.06 to i64, !dbg !1559
  %101 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i64 %100, !dbg !1559
  %102 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %101, i32 0, i32 1, !dbg !1560
  %103 = getelementptr inbounds [4 x i64], [4 x i64]* %102, i64 0, i64 3, !dbg !1559
  %104 = load i64, i64* %103, align 8, !dbg !1559
  %105 = and i64 %29, %104, !dbg !1561
  %106 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !1562
  %107 = getelementptr inbounds [4 x i64], [4 x i64]* %106, i64 0, i64 3, !dbg !1563
  %108 = load i64, i64* %107, align 8, !dbg !1564
  %109 = or i64 %108, %105, !dbg !1564
  store i64 %109, i64* %107, align 8, !dbg !1564
  br label %110, !dbg !1565

110:                                              ; preds = %25
  %111 = add i32 %.06, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %111, metadata !1504, metadata !DIExpression()), !dbg !1500
  br label %23, !dbg !1567, !llvm.loop !1568

112:                                              ; preds = %23
  %113 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !1570
  %114 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !1570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 %114, i64 96, i1 false), !dbg !1570
  %115 = call i32 @p256_add_mixed(%struct.p256_jacobian* %7, %struct.p256_affine* %6), !dbg !1571
  %116 = and i32 %21, %.1, !dbg !1572
  %117 = zext i32 %116 to i64, !dbg !1573
  %118 = sub i64 0, %117, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %118, metadata !1516, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i32 0, metadata !1575, metadata !DIExpression()), !dbg !1500
  br label %119, !dbg !1576

119:                                              ; preds = %151, %112
  %.0 = phi i32 [ 0, %112 ], [ %152, %151 ], !dbg !1578
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1575, metadata !DIExpression()), !dbg !1500
  %120 = icmp slt i32 %.0, 4, !dbg !1579
  br i1 %120, label %121, label %153, !dbg !1581

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 0, !dbg !1582
  %123 = sext i32 %.0 to i64, !dbg !1584
  %124 = getelementptr inbounds [4 x i64], [4 x i64]* %122, i64 0, i64 %123, !dbg !1584
  %125 = load i64, i64* %124, align 8, !dbg !1584
  %126 = and i64 %118, %125, !dbg !1585
  %127 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 0, !dbg !1586
  %128 = sext i32 %.0 to i64, !dbg !1587
  %129 = getelementptr inbounds [4 x i64], [4 x i64]* %127, i64 0, i64 %128, !dbg !1587
  %130 = load i64, i64* %129, align 8, !dbg !1588
  %131 = or i64 %130, %126, !dbg !1588
  store i64 %131, i64* %129, align 8, !dbg !1588
  %132 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %6, i32 0, i32 1, !dbg !1589
  %133 = sext i32 %.0 to i64, !dbg !1590
  %134 = getelementptr inbounds [4 x i64], [4 x i64]* %132, i64 0, i64 %133, !dbg !1590
  %135 = load i64, i64* %134, align 8, !dbg !1590
  %136 = and i64 %118, %135, !dbg !1591
  %137 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 1, !dbg !1592
  %138 = sext i32 %.0 to i64, !dbg !1593
  %139 = getelementptr inbounds [4 x i64], [4 x i64]* %137, i64 0, i64 %138, !dbg !1593
  %140 = load i64, i64* %139, align 8, !dbg !1594
  %141 = or i64 %140, %136, !dbg !1594
  store i64 %141, i64* %139, align 8, !dbg !1594
  %142 = sext i32 %.0 to i64, !dbg !1595
  %143 = getelementptr inbounds [4 x i64], [4 x i64]* @F256_R, i64 0, i64 %142, !dbg !1595
  %144 = load i64, i64* %143, align 8, !dbg !1595
  %145 = and i64 %118, %144, !dbg !1596
  %146 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %5, i32 0, i32 2, !dbg !1597
  %147 = sext i32 %.0 to i64, !dbg !1598
  %148 = getelementptr inbounds [4 x i64], [4 x i64]* %146, i64 0, i64 %147, !dbg !1598
  %149 = load i64, i64* %148, align 8, !dbg !1599
  %150 = or i64 %149, %145, !dbg !1599
  store i64 %150, i64* %148, align 8, !dbg !1599
  br label %151, !dbg !1600

151:                                              ; preds = %121
  %152 = add nsw i32 %.0, 1, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %152, metadata !1575, metadata !DIExpression()), !dbg !1500
  br label %119, !dbg !1602, !llvm.loop !1603

153:                                              ; preds = %119
  %154 = xor i32 %.1, -1, !dbg !1605
  %155 = and i32 %21, %154, !dbg !1606
  %156 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !1607
  %157 = bitcast %struct.p256_jacobian* %7 to i8*, !dbg !1608
  call void @br_ccopy(i32 %155, i8* %156, i8* %157, i64 96), !dbg !1609
  %158 = xor i32 %21, -1, !dbg !1610
  %159 = and i32 %.1, %158, !dbg !1611
  call void @llvm.dbg.value(metadata i32 %159, metadata !1471, metadata !DIExpression()), !dbg !1464
  %160 = shl i32 %.05, 4, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %160, metadata !1479, metadata !DIExpression()), !dbg !1480
  br label %161, !dbg !1613

161:                                              ; preds = %153
  %162 = add nsw i32 %.04, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i32 %162, metadata !1481, metadata !DIExpression()), !dbg !1480
  br label %16, !dbg !1615, !llvm.loop !1616

163:                                              ; preds = %16
  br label %9, !dbg !1472, !llvm.loop !1618

164:                                              ; preds = %9
  %165 = bitcast %struct.p256_jacobian* %0 to i8*, !dbg !1620
  %166 = bitcast %struct.p256_jacobian* %5 to i8*, !dbg !1620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %165, i8* align 8 %166, i64 96, i1 false), !dbg !1620
  ret void, !dbg !1621
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @p256_add_mixed(%struct.p256_jacobian* %0, %struct.p256_affine* %1) #0 !dbg !1622 {
  %3 = alloca [4 x i64], align 16
  %4 = alloca [4 x i64], align 16
  %5 = alloca [4 x i64], align 16
  %6 = alloca [4 x i64], align 16
  %7 = alloca [4 x i64], align 16
  %8 = alloca [4 x i64], align 16
  %9 = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %0, metadata !1625, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata %struct.p256_affine* %1, metadata !1627, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !1628, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !1630, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !1632, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.declare(metadata [4 x i64]* %6, metadata !1634, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.declare(metadata [4 x i64]* %7, metadata !1636, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.declare(metadata [4 x i64]* %8, metadata !1638, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.declare(metadata [4 x i64]* %9, metadata !1640, metadata !DIExpression()), !dbg !1641
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1642
  %11 = bitcast i64* %10 to i8*, !dbg !1642
  %12 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1643
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0, !dbg !1642
  %14 = bitcast i64* %13 to i8*, !dbg !1642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %14, i64 32, i1 false), !dbg !1642
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1644
  %16 = bitcast i64* %15 to i8*, !dbg !1644
  %17 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1645
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 0, !dbg !1644
  %19 = bitcast i64* %18 to i8*, !dbg !1644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 8 %19, i64 32, i1 false), !dbg !1644
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1646
  %21 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1647
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0, !dbg !1648
  call void @f256_montysquare(i64* %20, i64* %22), !dbg !1649
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1650
  %24 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i32 0, i32 0, !dbg !1651
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %24, i64 0, i64 0, !dbg !1652
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1653
  call void @f256_montymul(i64* %23, i64* %25, i64* %26), !dbg !1654
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !1655
  %28 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1656
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0, !dbg !1657
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1658
  call void @f256_montymul(i64* %27, i64* %29, i64* %30), !dbg !1659
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1660
  %32 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %1, i32 0, i32 1, !dbg !1661
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %32, i64 0, i64 0, !dbg !1662
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !1663
  call void @f256_montymul(i64* %31, i64* %33, i64* %34), !dbg !1664
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1665
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1666
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1667
  call void @f256_sub(i64* %35, i64* %36, i64* %37), !dbg !1668
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1669
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1670
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1671
  call void @f256_sub(i64* %38, i64* %39, i64* %40), !dbg !1672
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1673
  call void @f256_final_reduce(i64* %41), !dbg !1674
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1675
  %43 = load i64, i64* %42, align 16, !dbg !1675
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1, !dbg !1676
  %45 = load i64, i64* %44, align 8, !dbg !1676
  %46 = or i64 %43, %45, !dbg !1677
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2, !dbg !1678
  %48 = load i64, i64* %47, align 16, !dbg !1678
  %49 = or i64 %46, %48, !dbg !1679
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 3, !dbg !1680
  %51 = load i64, i64* %50, align 8, !dbg !1680
  %52 = or i64 %49, %51, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %52, metadata !1682, metadata !DIExpression()), !dbg !1626
  %53 = lshr i64 %52, 32, !dbg !1683
  %54 = or i64 %52, %53, !dbg !1684
  %55 = trunc i64 %54 to i32, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %55, metadata !1686, metadata !DIExpression()), !dbg !1626
  %56 = sub i32 0, %55, !dbg !1687
  %57 = or i32 %55, %56, !dbg !1688
  %58 = lshr i32 %57, 31, !dbg !1689
  call void @llvm.dbg.value(metadata i32 %58, metadata !1686, metadata !DIExpression()), !dbg !1626
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !1690
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1691
  call void @f256_montysquare(i64* %59, i64* %60), !dbg !1692
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1693
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1694
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !1695
  call void @f256_montymul(i64* %61, i64* %62, i64* %63), !dbg !1696
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !1697
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !1698
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1699
  call void @f256_montymul(i64* %64, i64* %65, i64* %66), !dbg !1700
  %67 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1701
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %67, i64 0, i64 0, !dbg !1702
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1703
  call void @f256_montysquare(i64* %68, i64* %69), !dbg !1704
  %70 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1705
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %70, i64 0, i64 0, !dbg !1706
  %72 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1707
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %72, i64 0, i64 0, !dbg !1708
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !1709
  call void @f256_sub(i64* %71, i64* %73, i64* %74), !dbg !1710
  %75 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1711
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %75, i64 0, i64 0, !dbg !1712
  %77 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1713
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %77, i64 0, i64 0, !dbg !1714
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1715
  call void @f256_sub(i64* %76, i64* %78, i64* %79), !dbg !1716
  %80 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1717
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %80, i64 0, i64 0, !dbg !1718
  %82 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1719
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %82, i64 0, i64 0, !dbg !1720
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1721
  call void @f256_sub(i64* %81, i64* %83, i64* %84), !dbg !1722
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1723
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1724
  %87 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 0, !dbg !1725
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %87, i64 0, i64 0, !dbg !1726
  call void @f256_sub(i64* %85, i64* %86, i64* %88), !dbg !1727
  %89 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1728
  %90 = getelementptr inbounds [4 x i64], [4 x i64]* %89, i64 0, i64 0, !dbg !1729
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0, !dbg !1730
  %92 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0, !dbg !1731
  call void @f256_montymul(i64* %90, i64* %91, i64* %92), !dbg !1732
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1733
  %94 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0, !dbg !1734
  %95 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !1735
  call void @f256_montymul(i64* %93, i64* %94, i64* %95), !dbg !1736
  %96 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1737
  %97 = getelementptr inbounds [4 x i64], [4 x i64]* %96, i64 0, i64 0, !dbg !1738
  %98 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 1, !dbg !1739
  %99 = getelementptr inbounds [4 x i64], [4 x i64]* %98, i64 0, i64 0, !dbg !1740
  %100 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !1741
  call void @f256_sub(i64* %97, i64* %99, i64* %100), !dbg !1742
  %101 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1743
  %102 = getelementptr inbounds [4 x i64], [4 x i64]* %101, i64 0, i64 0, !dbg !1744
  %103 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %0, i32 0, i32 2, !dbg !1745
  %104 = getelementptr inbounds [4 x i64], [4 x i64]* %103, i64 0, i64 0, !dbg !1746
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !1747
  call void @f256_montymul(i64* %102, i64* %104, i64* %105), !dbg !1748
  ret i32 %58, !dbg !1749
}

; Function Attrs: noinline nounwind uwtable
define internal void @window_to_affine(%struct.p256_affine* %0, %struct.p256_jacobian* %1, i32 %2) #0 !dbg !1750 {
  %4 = alloca [16 x [4 x i64]], align 16
  call void @llvm.dbg.value(metadata %struct.p256_affine* %0, metadata !1754, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata %struct.p256_jacobian* %1, metadata !1756, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %2, metadata !1757, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.declare(metadata [16 x [4 x i64]]* %4, metadata !1758, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 0, metadata !1763, metadata !DIExpression()), !dbg !1755
  br label %5, !dbg !1764

5:                                                ; preds = %50, %3
  %.02 = phi i32 [ 0, %3 ], [ %51, %50 ], !dbg !1766
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1763, metadata !DIExpression()), !dbg !1755
  %6 = add nsw i32 %.02, 1, !dbg !1767
  %7 = icmp slt i32 %6, %2, !dbg !1769
  br i1 %7, label %8, label %52, !dbg !1770

8:                                                ; preds = %5
  %9 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 15, !dbg !1771
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0, !dbg !1773
  %11 = bitcast i64* %10 to i8*, !dbg !1773
  %12 = sext i32 %.02 to i64, !dbg !1774
  %13 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %12, !dbg !1774
  %14 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %13, i32 0, i32 2, !dbg !1775
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0, !dbg !1773
  %16 = bitcast i64* %15 to i8*, !dbg !1773
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %16, i64 32, i1 false), !dbg !1773
  %17 = sext i32 %.02 to i64, !dbg !1776
  %18 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %17, !dbg !1776
  %19 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %18, i32 0, i32 2, !dbg !1777
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %19, i64 0, i64 0, !dbg !1778
  %21 = bitcast i64* %20 to i8*, !dbg !1778
  %22 = add nsw i32 %.02, 1, !dbg !1779
  %23 = sext i32 %22 to i64, !dbg !1780
  %24 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %23, !dbg !1780
  %25 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %24, i32 0, i32 2, !dbg !1781
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %25, i64 0, i64 0, !dbg !1778
  %27 = bitcast i64* %26 to i8*, !dbg !1778
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %27, i64 32, i1 false), !dbg !1778
  %28 = add nsw i32 %.02, 1, !dbg !1782
  %29 = sext i32 %28 to i64, !dbg !1783
  %30 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %29, !dbg !1783
  %31 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %30, i32 0, i32 2, !dbg !1784
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %31, i64 0, i64 0, !dbg !1785
  %33 = bitcast i64* %32 to i8*, !dbg !1785
  %34 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 15, !dbg !1786
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %34, i64 0, i64 0, !dbg !1785
  %36 = bitcast i64* %35 to i8*, !dbg !1785
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 16 %36, i64 32, i1 false), !dbg !1785
  %37 = ashr i32 %.02, 1, !dbg !1787
  %38 = sext i32 %37 to i64, !dbg !1788
  %39 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %38, !dbg !1788
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %39, i64 0, i64 0, !dbg !1788
  %41 = sext i32 %.02 to i64, !dbg !1789
  %42 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %41, !dbg !1789
  %43 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %42, i32 0, i32 2, !dbg !1790
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %43, i64 0, i64 0, !dbg !1789
  %45 = add nsw i32 %.02, 1, !dbg !1791
  %46 = sext i32 %45 to i64, !dbg !1792
  %47 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %46, !dbg !1792
  %48 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %47, i32 0, i32 2, !dbg !1793
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %48, i64 0, i64 0, !dbg !1792
  call void @f256_montymul(i64* %40, i64* %44, i64* %49), !dbg !1794
  br label %50, !dbg !1795

50:                                               ; preds = %8
  %51 = add nsw i32 %.02, 2, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %51, metadata !1763, metadata !DIExpression()), !dbg !1755
  br label %5, !dbg !1797, !llvm.loop !1798

52:                                               ; preds = %5
  %53 = and i32 %2, 1, !dbg !1800
  %54 = icmp ne i32 %53, 0, !dbg !1802
  br i1 %54, label %55, label %73, !dbg !1803

55:                                               ; preds = %52
  %56 = ashr i32 %2, 1, !dbg !1804
  %57 = sext i32 %56 to i64, !dbg !1806
  %58 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %57, !dbg !1806
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %58, i64 0, i64 0, !dbg !1807
  %60 = bitcast i64* %59 to i8*, !dbg !1807
  %61 = sub nsw i32 %2, 1, !dbg !1808
  %62 = sext i32 %61 to i64, !dbg !1809
  %63 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %62, !dbg !1809
  %64 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %63, i32 0, i32 2, !dbg !1810
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %64, i64 0, i64 0, !dbg !1807
  %66 = bitcast i64* %65 to i8*, !dbg !1807
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %60, i8* align 8 %66, i64 32, i1 false), !dbg !1807
  %67 = sub nsw i32 %2, 1, !dbg !1811
  %68 = sext i32 %67 to i64, !dbg !1812
  %69 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %68, !dbg !1812
  %70 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %69, i32 0, i32 2, !dbg !1813
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %70, i64 0, i64 0, !dbg !1814
  %72 = bitcast i64* %71 to i8*, !dbg !1814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 16 bitcast ([4 x i64]* @F256_R to i8*), i64 32, i1 false), !dbg !1814
  br label %73, !dbg !1815

73:                                               ; preds = %55, %52
  call void @llvm.dbg.value(metadata i32 1, metadata !1816, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 2, metadata !1817, metadata !DIExpression()), !dbg !1755
  br label %74, !dbg !1818

74:                                               ; preds = %131, %73
  %.01 = phi i32 [ 1, %73 ], [ %132, %131 ], !dbg !1820
  %.0 = phi i32 [ 2, %73 ], [ %133, %131 ], !dbg !1820
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1817, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1816, metadata !DIExpression()), !dbg !1755
  %75 = icmp slt i32 %.0, %2, !dbg !1821
  br i1 %75, label %76, label %134, !dbg !1823

76:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i32 0, metadata !1763, metadata !DIExpression()), !dbg !1755
  br label %77, !dbg !1824

77:                                               ; preds = %93, %76
  %.1 = phi i32 [ 0, %76 ], [ %94, %93 ], !dbg !1827
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1763, metadata !DIExpression()), !dbg !1755
  %78 = icmp slt i32 %.1, %2, !dbg !1828
  br i1 %78, label %79, label %95, !dbg !1830

79:                                               ; preds = %77
  %80 = sext i32 %.1 to i64, !dbg !1831
  %81 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %80, !dbg !1831
  %82 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %81, i32 0, i32 2, !dbg !1833
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %82, i64 0, i64 0, !dbg !1831
  %84 = sext i32 %.1 to i64, !dbg !1834
  %85 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %84, !dbg !1834
  %86 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %85, i32 0, i32 2, !dbg !1835
  %87 = getelementptr inbounds [4 x i64], [4 x i64]* %86, i64 0, i64 0, !dbg !1834
  %88 = ashr i32 %.1, %.01, !dbg !1836
  %89 = xor i32 %88, 1, !dbg !1837
  %90 = sext i32 %89 to i64, !dbg !1838
  %91 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %90, !dbg !1838
  %92 = getelementptr inbounds [4 x i64], [4 x i64]* %91, i64 0, i64 0, !dbg !1838
  call void @f256_montymul(i64* %83, i64* %87, i64* %92), !dbg !1839
  br label %93, !dbg !1840

93:                                               ; preds = %79
  %94 = add nsw i32 %.1, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %94, metadata !1763, metadata !DIExpression()), !dbg !1755
  br label %77, !dbg !1842, !llvm.loop !1843

95:                                               ; preds = %77
  %96 = add nsw i32 %2, %.0, !dbg !1845
  %97 = sub nsw i32 %96, 1, !dbg !1846
  %98 = ashr i32 %97, %.01, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %98, metadata !1848, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i32 0, metadata !1763, metadata !DIExpression()), !dbg !1755
  br label %99, !dbg !1850

99:                                               ; preds = %115, %95
  %.2 = phi i32 [ 0, %95 ], [ %116, %115 ], !dbg !1852
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1763, metadata !DIExpression()), !dbg !1755
  %100 = ashr i32 %98, 1, !dbg !1853
  %101 = icmp slt i32 %.2, %100, !dbg !1855
  br i1 %101, label %102, label %117, !dbg !1856

102:                                              ; preds = %99
  %103 = sext i32 %.2 to i64, !dbg !1857
  %104 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %103, !dbg !1857
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %104, i64 0, i64 0, !dbg !1857
  %106 = shl i32 %.2, 1, !dbg !1859
  %107 = sext i32 %106 to i64, !dbg !1860
  %108 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %107, !dbg !1860
  %109 = getelementptr inbounds [4 x i64], [4 x i64]* %108, i64 0, i64 0, !dbg !1860
  %110 = shl i32 %.2, 1, !dbg !1861
  %111 = add nsw i32 %110, 1, !dbg !1862
  %112 = sext i32 %111 to i64, !dbg !1863
  %113 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %112, !dbg !1863
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %113, i64 0, i64 0, !dbg !1863
  call void @f256_montymul(i64* %105, i64* %109, i64* %114), !dbg !1864
  br label %115, !dbg !1865

115:                                              ; preds = %102
  %116 = add nsw i32 %.2, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i32 %116, metadata !1763, metadata !DIExpression()), !dbg !1755
  br label %99, !dbg !1867, !llvm.loop !1868

117:                                              ; preds = %99
  %118 = and i32 %98, 1, !dbg !1870
  %119 = icmp ne i32 %118, 0, !dbg !1872
  br i1 %119, label %120, label %130, !dbg !1873

120:                                              ; preds = %117
  %121 = ashr i32 %98, 1, !dbg !1874
  %122 = sext i32 %121 to i64, !dbg !1876
  %123 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %122, !dbg !1876
  %124 = getelementptr inbounds [4 x i64], [4 x i64]* %123, i64 0, i64 0, !dbg !1877
  %125 = bitcast i64* %124 to i8*, !dbg !1877
  %126 = sext i32 %98 to i64, !dbg !1878
  %127 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 %126, !dbg !1878
  %128 = getelementptr inbounds [4 x i64], [4 x i64]* %127, i64 0, i64 0, !dbg !1877
  %129 = bitcast i64* %128 to i8*, !dbg !1877
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 16 %125, i8* align 16 %129, i64 32, i1 false), !dbg !1877
  br label %130, !dbg !1879

130:                                              ; preds = %120, %117
  br label %131, !dbg !1880

131:                                              ; preds = %130
  %132 = add nsw i32 %.01, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %132, metadata !1816, metadata !DIExpression()), !dbg !1755
  %133 = shl i32 %.0, 1, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %133, metadata !1817, metadata !DIExpression()), !dbg !1755
  br label %74, !dbg !1883, !llvm.loop !1884

134:                                              ; preds = %74
  %135 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 15, !dbg !1886
  %136 = getelementptr inbounds [4 x i64], [4 x i64]* %135, i64 0, i64 0, !dbg !1886
  %137 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 0, !dbg !1887
  %138 = getelementptr inbounds [4 x i64], [4 x i64]* %137, i64 0, i64 0, !dbg !1887
  call void @f256_invert(i64* %136, i64* %138), !dbg !1888
  call void @llvm.dbg.value(metadata i32 0, metadata !1763, metadata !DIExpression()), !dbg !1755
  br label %139, !dbg !1889

139:                                              ; preds = %180, %134
  %.3 = phi i32 [ 0, %134 ], [ %181, %180 ], !dbg !1891
  call void @llvm.dbg.value(metadata i32 %.3, metadata !1763, metadata !DIExpression()), !dbg !1755
  %140 = icmp slt i32 %.3, %2, !dbg !1892
  br i1 %140, label %141, label %182, !dbg !1894

141:                                              ; preds = %139
  %142 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 13, !dbg !1895
  %143 = getelementptr inbounds [4 x i64], [4 x i64]* %142, i64 0, i64 0, !dbg !1895
  %144 = sext i32 %.3 to i64, !dbg !1897
  %145 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %144, !dbg !1897
  %146 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %145, i32 0, i32 2, !dbg !1898
  %147 = getelementptr inbounds [4 x i64], [4 x i64]* %146, i64 0, i64 0, !dbg !1897
  %148 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 15, !dbg !1899
  %149 = getelementptr inbounds [4 x i64], [4 x i64]* %148, i64 0, i64 0, !dbg !1899
  call void @f256_montymul(i64* %143, i64* %147, i64* %149), !dbg !1900
  %150 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 14, !dbg !1901
  %151 = getelementptr inbounds [4 x i64], [4 x i64]* %150, i64 0, i64 0, !dbg !1901
  %152 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 13, !dbg !1902
  %153 = getelementptr inbounds [4 x i64], [4 x i64]* %152, i64 0, i64 0, !dbg !1902
  call void @f256_montysquare(i64* %151, i64* %153), !dbg !1903
  %154 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 13, !dbg !1904
  %155 = getelementptr inbounds [4 x i64], [4 x i64]* %154, i64 0, i64 0, !dbg !1904
  %156 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 13, !dbg !1905
  %157 = getelementptr inbounds [4 x i64], [4 x i64]* %156, i64 0, i64 0, !dbg !1905
  %158 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 14, !dbg !1906
  %159 = getelementptr inbounds [4 x i64], [4 x i64]* %158, i64 0, i64 0, !dbg !1906
  call void @f256_montymul(i64* %155, i64* %157, i64* %159), !dbg !1907
  %160 = sext i32 %.3 to i64, !dbg !1908
  %161 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %0, i64 %160, !dbg !1908
  %162 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %161, i32 0, i32 0, !dbg !1909
  %163 = getelementptr inbounds [4 x i64], [4 x i64]* %162, i64 0, i64 0, !dbg !1908
  %164 = sext i32 %.3 to i64, !dbg !1910
  %165 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %164, !dbg !1910
  %166 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %165, i32 0, i32 0, !dbg !1911
  %167 = getelementptr inbounds [4 x i64], [4 x i64]* %166, i64 0, i64 0, !dbg !1910
  %168 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 14, !dbg !1912
  %169 = getelementptr inbounds [4 x i64], [4 x i64]* %168, i64 0, i64 0, !dbg !1912
  call void @f256_montymul(i64* %163, i64* %167, i64* %169), !dbg !1913
  %170 = sext i32 %.3 to i64, !dbg !1914
  %171 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %0, i64 %170, !dbg !1914
  %172 = getelementptr inbounds %struct.p256_affine, %struct.p256_affine* %171, i32 0, i32 1, !dbg !1915
  %173 = getelementptr inbounds [4 x i64], [4 x i64]* %172, i64 0, i64 0, !dbg !1914
  %174 = sext i32 %.3 to i64, !dbg !1916
  %175 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %1, i64 %174, !dbg !1916
  %176 = getelementptr inbounds %struct.p256_jacobian, %struct.p256_jacobian* %175, i32 0, i32 1, !dbg !1917
  %177 = getelementptr inbounds [4 x i64], [4 x i64]* %176, i64 0, i64 0, !dbg !1916
  %178 = getelementptr inbounds [16 x [4 x i64]], [16 x [4 x i64]]* %4, i64 0, i64 13, !dbg !1918
  %179 = getelementptr inbounds [4 x i64], [4 x i64]* %178, i64 0, i64 0, !dbg !1918
  call void @f256_montymul(i64* %173, i64* %177, i64* %179), !dbg !1919
  br label %180, !dbg !1920

180:                                              ; preds = %141
  %181 = add nsw i32 %.3, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i32 %181, metadata !1763, metadata !DIExpression()), !dbg !1755
  br label %139, !dbg !1922, !llvm.loop !1923

182:                                              ; preds = %139
  ret void, !dbg !1925
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @br_dec64be(i8* %0) #0 !dbg !1926 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1929, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8* %0, metadata !1931, metadata !DIExpression()), !dbg !1930
  %2 = call i32 @br_dec32be(i8* %0), !dbg !1932
  %3 = zext i32 %2 to i64, !dbg !1933
  %4 = shl i64 %3, 32, !dbg !1934
  %5 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1935
  %6 = call i32 @br_dec32be(i8* %5), !dbg !1936
  %7 = zext i32 %6 to i64, !dbg !1937
  %8 = or i64 %4, %7, !dbg !1938
  ret i64 %8, !dbg !1939
}

; Function Attrs: noinline nounwind uwtable
define internal void @f256_tomonty(i64* %0, i64* %1) #0 !dbg !35 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1940, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64* %1, metadata !1942, metadata !DIExpression()), !dbg !1941
  call void @f256_montymul(i64* %0, i64* %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @f256_tomonty.R2, i64 0, i64 0)), !dbg !1943
  ret void, !dbg !1944
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !1945 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1948, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %0, metadata !1950, metadata !DIExpression()), !dbg !1949
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1951
  %3 = load i8, i8* %2, align 1, !dbg !1951
  %4 = zext i8 %3 to i32, !dbg !1952
  %5 = shl i32 %4, 24, !dbg !1953
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1954
  %7 = load i8, i8* %6, align 1, !dbg !1954
  %8 = zext i8 %7 to i32, !dbg !1955
  %9 = shl i32 %8, 16, !dbg !1956
  %10 = or i32 %5, %9, !dbg !1957
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1958
  %12 = load i8, i8* %11, align 1, !dbg !1958
  %13 = zext i8 %12 to i32, !dbg !1959
  %14 = shl i32 %13, 8, !dbg !1960
  %15 = or i32 %10, %14, !dbg !1961
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1962
  %17 = load i8, i8* %16, align 1, !dbg !1962
  %18 = zext i8 %17 to i32, !dbg !1963
  %19 = or i32 %15, %18, !dbg !1964
  ret i32 %19, !dbg !1965
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_scalar(i8* %0, i64 %1) #0 !dbg !1966 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1969, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %1, metadata !1971, metadata !DIExpression()), !dbg !1970
  %3 = icmp ugt i64 %1, 32, !dbg !1972
  br i1 %3, label %4, label %5, !dbg !1974

4:                                                ; preds = %2
  br label %40, !dbg !1975

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1977, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 0, metadata !1978, metadata !DIExpression()), !dbg !1970
  br label %6, !dbg !1979

6:                                                ; preds = %13, %5
  %.04 = phi i32 [ 0, %5 ], [ %12, %13 ], !dbg !1970
  %.01 = phi i64 [ 0, %5 ], [ %14, %13 ], !dbg !1981
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1978, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1977, metadata !DIExpression()), !dbg !1970
  %7 = icmp ult i64 %.01, %1, !dbg !1982
  br i1 %7, label %8, label %15, !dbg !1984

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !1985
  %10 = load i8, i8* %9, align 1, !dbg !1985
  %11 = zext i8 %10 to i32, !dbg !1985
  %12 = or i32 %.04, %11, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %12, metadata !1977, metadata !DIExpression()), !dbg !1970
  br label %13, !dbg !1988

13:                                               ; preds = %8
  %14 = add i64 %.01, 1, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %14, metadata !1978, metadata !DIExpression()), !dbg !1970
  br label %6, !dbg !1990, !llvm.loop !1991

15:                                               ; preds = %6
  %16 = icmp eq i64 %1, 32, !dbg !1993
  br i1 %16, label %17, label %35, !dbg !1995

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 0, metadata !1996, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 0, metadata !1978, metadata !DIExpression()), !dbg !1970
  br label %18, !dbg !1997

18:                                               ; preds = %32, %17
  %.02 = phi i32 [ 0, %17 ], [ %31, %32 ], !dbg !2000
  %.1 = phi i64 [ 0, %17 ], [ %33, %32 ], !dbg !2001
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1978, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1996, metadata !DIExpression()), !dbg !1970
  %19 = icmp ult i64 %.1, %1, !dbg !2002
  br i1 %19, label %20, label %34, !dbg !2004

20:                                               ; preds = %18
  %21 = call i32 @EQ0(i32 %.02), !dbg !2005
  %22 = sub nsw i32 0, %21, !dbg !2007
  %23 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !2008
  %24 = load i8, i8* %23, align 1, !dbg !2008
  %25 = zext i8 %24 to i32, !dbg !2008
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* @P256_N, i64 0, i64 %.1, !dbg !2009
  %27 = load i8, i8* %26, align 1, !dbg !2009
  %28 = zext i8 %27 to i32, !dbg !2009
  %29 = call i32 @CMP(i32 %25, i32 %28), !dbg !2010
  %30 = and i32 %22, %29, !dbg !2011
  %31 = or i32 %.02, %30, !dbg !2012
  call void @llvm.dbg.value(metadata i32 %31, metadata !1996, metadata !DIExpression()), !dbg !1970
  br label %32, !dbg !2013

32:                                               ; preds = %20
  %33 = add i64 %.1, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %33, metadata !1978, metadata !DIExpression()), !dbg !1970
  br label %18, !dbg !2015, !llvm.loop !2016

34:                                               ; preds = %18
  br label %36, !dbg !2018

35:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 -1, metadata !1996, metadata !DIExpression()), !dbg !1970
  br label %36

36:                                               ; preds = %35, %34
  %.13 = phi i32 [ %.02, %34 ], [ -1, %35 ], !dbg !2019
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1996, metadata !DIExpression()), !dbg !1970
  %37 = call i32 @NEQ(i32 %.04, i32 0), !dbg !2020
  %38 = call i32 @LT0(i32 %.13), !dbg !2021
  %39 = and i32 %37, %38, !dbg !2022
  br label %40, !dbg !2023

40:                                               ; preds = %36, %4
  %.0 = phi i32 [ 0, %4 ], [ %39, %36 ], !dbg !1970
  ret i32 %.0, !dbg !2024
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ0(i32 %0) #0 !dbg !2025 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2028, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %0, metadata !2030, metadata !DIExpression()), !dbg !2029
  %2 = sub i32 0, %0, !dbg !2031
  %3 = or i32 %0, %2, !dbg !2032
  %4 = xor i32 %3, -1, !dbg !2033
  %5 = lshr i32 %4, 31, !dbg !2034
  ret i32 %5, !dbg !2035
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @CMP(i32 %0, i32 %1) #0 !dbg !2036 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2039, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %1, metadata !2041, metadata !DIExpression()), !dbg !2040
  %3 = call i32 @GT(i32 %0, i32 %1), !dbg !2042
  %4 = call i32 @GT(i32 %1, i32 %0), !dbg !2043
  %5 = sub nsw i32 0, %4, !dbg !2044
  %6 = or i32 %3, %5, !dbg !2045
  ret i32 %6, !dbg !2046
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LT0(i32 %0) #0 !dbg !2047 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2048, metadata !DIExpression()), !dbg !2049
  %2 = lshr i32 %0, 31, !dbg !2050
  ret i32 %2, !dbg !2051
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !2052 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2053, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %1, metadata !2055, metadata !DIExpression()), !dbg !2054
  %3 = sub i32 %1, %0, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %3, metadata !2057, metadata !DIExpression()), !dbg !2054
  %4 = xor i32 %0, %1, !dbg !2058
  %5 = xor i32 %0, %3, !dbg !2059
  %6 = and i32 %4, %5, !dbg !2060
  %7 = xor i32 %3, %6, !dbg !2061
  %8 = lshr i32 %7, 31, !dbg !2062
  ret i32 %8, !dbg !2063
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.br_ec_impl* @br_ec_p256_m64_get() #0 !dbg !2064 {
  ret %struct.br_ec_impl* @br_ec_p256_m64, !dbg !2068
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
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "api_mul.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m64")
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!98 = !DIFile(filename: "../BearSSL/src/codec/ccopy.c", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m64")
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
!187 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/EC_p256_m64")
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
!217 = distinct !DISubprogram(name: "api_mul", scope: !3, file: !3, line: 1651, type: !84, scopeLine: 1653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!218 = !DILocalVariable(name: "G", arg: 1, scope: !217, file: !3, line: 1651, type: !86)
!219 = !DILocation(line: 0, scope: !217)
!220 = !DILocalVariable(name: "Glen", arg: 2, scope: !217, file: !3, line: 1651, type: !75)
!221 = !DILocalVariable(name: "k", arg: 3, scope: !217, file: !3, line: 1652, type: !73)
!222 = !DILocalVariable(name: "klen", arg: 4, scope: !217, file: !3, line: 1652, type: !75)
!223 = !DILocalVariable(name: "curve", arg: 5, scope: !217, file: !3, line: 1652, type: !10)
!224 = !DILocalVariable(name: "P", scope: !217, file: !3, line: 1655, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "p256_jacobian", file: !3, line: 658, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 654, size: 768, elements: !227)
!227 = !{!228, !229, !230}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !226, file: !3, line: 655, baseType: !59, size: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !226, file: !3, line: 656, baseType: !59, size: 256, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !226, file: !3, line: 657, baseType: !59, size: 256, offset: 512)
!231 = !DILocation(line: 1655, column: 16, scope: !217)
!232 = !DILocation(line: 1658, column: 11, scope: !233)
!233 = distinct !DILexicalBlock(scope: !217, file: !3, line: 1658, column: 6)
!234 = !DILocation(line: 1658, column: 6, scope: !217)
!235 = !DILocation(line: 1659, column: 3, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !3, line: 1658, column: 18)
!237 = !DILocation(line: 1661, column: 6, scope: !217)
!238 = !DILocalVariable(name: "r", scope: !217, file: !3, line: 1654, type: !11)
!239 = !DILocation(line: 1662, column: 7, scope: !217)
!240 = !DILocation(line: 1662, column: 4, scope: !217)
!241 = !DILocation(line: 1663, column: 2, scope: !217)
!242 = !DILocation(line: 1664, column: 7, scope: !217)
!243 = !DILocation(line: 1664, column: 4, scope: !217)
!244 = !DILocation(line: 1665, column: 2, scope: !217)
!245 = !DILocation(line: 1666, column: 1, scope: !217)
!246 = distinct !DISubprogram(name: "api_mulgen", scope: !3, file: !3, line: 1669, type: !89, scopeLine: 1671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!247 = !DILocalVariable(name: "R", arg: 1, scope: !246, file: !3, line: 1669, type: !86)
!248 = !DILocation(line: 0, scope: !246)
!249 = !DILocalVariable(name: "k", arg: 2, scope: !246, file: !3, line: 1670, type: !73)
!250 = !DILocalVariable(name: "klen", arg: 3, scope: !246, file: !3, line: 1670, type: !75)
!251 = !DILocalVariable(name: "curve", arg: 4, scope: !246, file: !3, line: 1670, type: !10)
!252 = !DILocalVariable(name: "P", scope: !246, file: !3, line: 1672, type: !225)
!253 = !DILocation(line: 1672, column: 16, scope: !246)
!254 = !DILocation(line: 1675, column: 2, scope: !246)
!255 = !DILocation(line: 1676, column: 2, scope: !246)
!256 = !DILocation(line: 1677, column: 2, scope: !246)
!257 = distinct !DISubprogram(name: "api_muladd", scope: !3, file: !3, line: 1681, type: !93, scopeLine: 1684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!258 = !DILocalVariable(name: "A", arg: 1, scope: !257, file: !3, line: 1681, type: !86)
!259 = !DILocation(line: 0, scope: !257)
!260 = !DILocalVariable(name: "B", arg: 2, scope: !257, file: !3, line: 1681, type: !73)
!261 = !DILocalVariable(name: "len", arg: 3, scope: !257, file: !3, line: 1681, type: !75)
!262 = !DILocalVariable(name: "x", arg: 4, scope: !257, file: !3, line: 1682, type: !73)
!263 = !DILocalVariable(name: "xlen", arg: 5, scope: !257, file: !3, line: 1682, type: !75)
!264 = !DILocalVariable(name: "y", arg: 6, scope: !257, file: !3, line: 1683, type: !73)
!265 = !DILocalVariable(name: "ylen", arg: 7, scope: !257, file: !3, line: 1683, type: !75)
!266 = !DILocalVariable(name: "curve", arg: 8, scope: !257, file: !3, line: 1683, type: !10)
!267 = !DILocalVariable(name: "P", scope: !257, file: !3, line: 1713, type: !225)
!268 = !DILocation(line: 1713, column: 16, scope: !257)
!269 = !DILocalVariable(name: "Q", scope: !257, file: !3, line: 1713, type: !225)
!270 = !DILocation(line: 1713, column: 19, scope: !257)
!271 = !DILocation(line: 1718, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !257, file: !3, line: 1718, column: 6)
!273 = !DILocation(line: 1718, column: 6, scope: !257)
!274 = !DILocation(line: 1719, column: 3, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 1718, column: 17)
!276 = !DILocation(line: 1721, column: 6, scope: !257)
!277 = !DILocalVariable(name: "r", scope: !257, file: !3, line: 1714, type: !11)
!278 = !DILocation(line: 1722, column: 2, scope: !257)
!279 = !DILocation(line: 1723, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !257, file: !3, line: 1723, column: 6)
!281 = !DILocation(line: 1723, column: 6, scope: !257)
!282 = !DILocation(line: 1724, column: 3, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 1723, column: 17)
!284 = !DILocation(line: 1725, column: 2, scope: !283)
!285 = !DILocation(line: 1726, column: 8, scope: !286)
!286 = distinct !DILexicalBlock(scope: !280, file: !3, line: 1725, column: 9)
!287 = !DILocation(line: 1726, column: 5, scope: !286)
!288 = !DILocation(line: 1727, column: 3, scope: !286)
!289 = !DILocation(line: 1733, column: 6, scope: !257)
!290 = !DILocalVariable(name: "t", scope: !257, file: !3, line: 1714, type: !11)
!291 = !DILocation(line: 1734, column: 22, scope: !257)
!292 = !DILocation(line: 1734, column: 20, scope: !257)
!293 = !DILocation(line: 1734, column: 2, scope: !257)
!294 = !DILocation(line: 1735, column: 8, scope: !257)
!295 = !DILocation(line: 1735, column: 6, scope: !257)
!296 = !DILocation(line: 1735, column: 17, scope: !257)
!297 = !DILocation(line: 1735, column: 15, scope: !257)
!298 = !DILocation(line: 1735, column: 13, scope: !257)
!299 = !DILocation(line: 1735, column: 26, scope: !257)
!300 = !DILocation(line: 1735, column: 24, scope: !257)
!301 = !DILocation(line: 1735, column: 22, scope: !257)
!302 = !DILocation(line: 1735, column: 35, scope: !257)
!303 = !DILocation(line: 1735, column: 33, scope: !257)
!304 = !DILocation(line: 1735, column: 31, scope: !257)
!305 = !DILocalVariable(name: "z", scope: !257, file: !3, line: 1715, type: !15)
!306 = !DILocation(line: 1736, column: 27, scope: !257)
!307 = !DILocation(line: 1736, column: 22, scope: !257)
!308 = !DILocation(line: 1736, column: 9, scope: !257)
!309 = !DILocation(line: 1736, column: 6, scope: !257)
!310 = !DILocalVariable(name: "s", scope: !257, file: !3, line: 1714, type: !11)
!311 = !DILocation(line: 1737, column: 2, scope: !257)
!312 = !DILocation(line: 1748, column: 12, scope: !257)
!313 = !DILocation(line: 1748, column: 10, scope: !257)
!314 = !DILocation(line: 1748, column: 16, scope: !257)
!315 = !DILocation(line: 1748, column: 20, scope: !257)
!316 = !DILocation(line: 1748, column: 2, scope: !257)
!317 = !DILocation(line: 1749, column: 2, scope: !257)
!318 = !DILocation(line: 1750, column: 11, scope: !257)
!319 = !DILocation(line: 1750, column: 7, scope: !257)
!320 = !DILocation(line: 1750, column: 4, scope: !257)
!321 = !DILocation(line: 1751, column: 2, scope: !257)
!322 = !DILocation(line: 1752, column: 1, scope: !257)
!323 = distinct !DISubprogram(name: "point_decode", scope: !3, file: !3, line: 669, type: !324, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!324 = !DISubroutineType(types: !325)
!325 = !{!11, !326, !73}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!327 = !DILocalVariable(name: "P", arg: 1, scope: !323, file: !3, line: 669, type: !326)
!328 = !DILocation(line: 0, scope: !323)
!329 = !DILocalVariable(name: "buf", arg: 2, scope: !323, file: !3, line: 669, type: !73)
!330 = !DILocalVariable(name: "x", scope: !323, file: !3, line: 671, type: !59)
!331 = !DILocation(line: 671, column: 11, scope: !323)
!332 = !DILocalVariable(name: "y", scope: !323, file: !3, line: 671, type: !59)
!333 = !DILocation(line: 671, column: 17, scope: !323)
!334 = !DILocalVariable(name: "t", scope: !323, file: !3, line: 671, type: !59)
!335 = !DILocation(line: 671, column: 23, scope: !323)
!336 = !DILocalVariable(name: "x3", scope: !323, file: !3, line: 671, type: !59)
!337 = !DILocation(line: 671, column: 29, scope: !323)
!338 = !DILocation(line: 677, column: 9, scope: !323)
!339 = !DILocation(line: 677, column: 6, scope: !323)
!340 = !DILocalVariable(name: "r", scope: !323, file: !3, line: 672, type: !11)
!341 = !DILocation(line: 683, column: 24, scope: !323)
!342 = !DILocation(line: 683, column: 9, scope: !323)
!343 = !DILocation(line: 683, column: 2, scope: !323)
!344 = !DILocation(line: 683, column: 7, scope: !323)
!345 = !DILocation(line: 684, column: 24, scope: !323)
!346 = !DILocation(line: 684, column: 9, scope: !323)
!347 = !DILocation(line: 684, column: 2, scope: !323)
!348 = !DILocation(line: 684, column: 7, scope: !323)
!349 = !DILocation(line: 685, column: 24, scope: !323)
!350 = !DILocation(line: 685, column: 9, scope: !323)
!351 = !DILocation(line: 685, column: 2, scope: !323)
!352 = !DILocation(line: 685, column: 7, scope: !323)
!353 = !DILocation(line: 686, column: 24, scope: !323)
!354 = !DILocation(line: 686, column: 9, scope: !323)
!355 = !DILocation(line: 686, column: 2, scope: !323)
!356 = !DILocation(line: 686, column: 7, scope: !323)
!357 = !DILocation(line: 687, column: 24, scope: !323)
!358 = !DILocation(line: 687, column: 9, scope: !323)
!359 = !DILocation(line: 687, column: 2, scope: !323)
!360 = !DILocation(line: 687, column: 7, scope: !323)
!361 = !DILocation(line: 688, column: 24, scope: !323)
!362 = !DILocation(line: 688, column: 9, scope: !323)
!363 = !DILocation(line: 688, column: 2, scope: !323)
!364 = !DILocation(line: 688, column: 7, scope: !323)
!365 = !DILocation(line: 689, column: 24, scope: !323)
!366 = !DILocation(line: 689, column: 9, scope: !323)
!367 = !DILocation(line: 689, column: 2, scope: !323)
!368 = !DILocation(line: 689, column: 7, scope: !323)
!369 = !DILocation(line: 690, column: 24, scope: !323)
!370 = !DILocation(line: 690, column: 9, scope: !323)
!371 = !DILocation(line: 690, column: 2, scope: !323)
!372 = !DILocation(line: 690, column: 7, scope: !323)
!373 = !DILocation(line: 691, column: 15, scope: !323)
!374 = !DILocation(line: 691, column: 18, scope: !323)
!375 = !DILocation(line: 691, column: 2, scope: !323)
!376 = !DILocation(line: 692, column: 15, scope: !323)
!377 = !DILocation(line: 692, column: 18, scope: !323)
!378 = !DILocation(line: 692, column: 2, scope: !323)
!379 = !DILocation(line: 700, column: 19, scope: !323)
!380 = !DILocation(line: 700, column: 22, scope: !323)
!381 = !DILocation(line: 700, column: 2, scope: !323)
!382 = !DILocation(line: 701, column: 19, scope: !323)
!383 = !DILocation(line: 701, column: 23, scope: !323)
!384 = !DILocation(line: 701, column: 2, scope: !323)
!385 = !DILocation(line: 702, column: 16, scope: !323)
!386 = !DILocation(line: 702, column: 20, scope: !323)
!387 = !DILocation(line: 702, column: 24, scope: !323)
!388 = !DILocation(line: 702, column: 2, scope: !323)
!389 = !DILocation(line: 703, column: 11, scope: !323)
!390 = !DILocation(line: 703, column: 14, scope: !323)
!391 = !DILocation(line: 703, column: 17, scope: !323)
!392 = !DILocation(line: 703, column: 2, scope: !323)
!393 = !DILocation(line: 704, column: 11, scope: !323)
!394 = !DILocation(line: 704, column: 14, scope: !323)
!395 = !DILocation(line: 704, column: 17, scope: !323)
!396 = !DILocation(line: 704, column: 2, scope: !323)
!397 = !DILocation(line: 705, column: 11, scope: !323)
!398 = !DILocation(line: 705, column: 14, scope: !323)
!399 = !DILocation(line: 705, column: 17, scope: !323)
!400 = !DILocation(line: 705, column: 2, scope: !323)
!401 = !DILocation(line: 706, column: 11, scope: !323)
!402 = !DILocation(line: 706, column: 14, scope: !323)
!403 = !DILocation(line: 706, column: 17, scope: !323)
!404 = !DILocation(line: 706, column: 2, scope: !323)
!405 = !DILocation(line: 707, column: 11, scope: !323)
!406 = !DILocation(line: 707, column: 14, scope: !323)
!407 = !DILocation(line: 707, column: 2, scope: !323)
!408 = !DILocation(line: 708, column: 20, scope: !323)
!409 = !DILocation(line: 708, column: 2, scope: !323)
!410 = !DILocation(line: 709, column: 7, scope: !323)
!411 = !DILocation(line: 709, column: 14, scope: !323)
!412 = !DILocation(line: 709, column: 12, scope: !323)
!413 = !DILocation(line: 709, column: 21, scope: !323)
!414 = !DILocation(line: 709, column: 19, scope: !323)
!415 = !DILocation(line: 709, column: 28, scope: !323)
!416 = !DILocation(line: 709, column: 26, scope: !323)
!417 = !DILocalVariable(name: "tt", scope: !323, file: !3, line: 671, type: !15)
!418 = !DILocation(line: 710, column: 30, scope: !323)
!419 = !DILocation(line: 710, column: 24, scope: !323)
!420 = !DILocation(line: 710, column: 10, scope: !323)
!421 = !DILocation(line: 710, column: 7, scope: !323)
!422 = !DILocation(line: 710, column: 4, scope: !323)
!423 = !DILocation(line: 716, column: 12, scope: !323)
!424 = !DILocation(line: 716, column: 2, scope: !323)
!425 = !DILocation(line: 717, column: 12, scope: !323)
!426 = !DILocation(line: 717, column: 2, scope: !323)
!427 = !DILocation(line: 718, column: 12, scope: !323)
!428 = !DILocation(line: 718, column: 2, scope: !323)
!429 = !DILocation(line: 719, column: 2, scope: !323)
!430 = distinct !DISubprogram(name: "p256_mul", scope: !3, file: !3, line: 1471, type: !431, scopeLine: 1472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !326, !73, !75}
!433 = !DILocalVariable(name: "P", arg: 1, scope: !430, file: !3, line: 1471, type: !326)
!434 = !DILocation(line: 0, scope: !430)
!435 = !DILocalVariable(name: "k", arg: 2, scope: !430, file: !3, line: 1471, type: !73)
!436 = !DILocalVariable(name: "klen", arg: 3, scope: !430, file: !3, line: 1471, type: !75)
!437 = !DILocalVariable(name: "window", scope: !430, file: !3, line: 1476, type: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !3, line: 1473, size: 11520, elements: !439)
!439 = !{!440, !442}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "aff", scope: !438, file: !3, line: 1474, baseType: !441, size: 7680)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 7680, elements: !61)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "jac", scope: !438, file: !3, line: 1475, baseType: !443, size: 11520)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 11520, elements: !61)
!444 = !DILocation(line: 1476, column: 4, scope: !430)
!445 = !DILocation(line: 1482, column: 9, scope: !430)
!446 = !DILocation(line: 1482, column: 2, scope: !430)
!447 = !DILocation(line: 1482, column: 18, scope: !430)
!448 = !DILocalVariable(name: "i", scope: !430, file: !3, line: 1477, type: !10)
!449 = !DILocation(line: 1483, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !430, file: !3, line: 1483, column: 2)
!451 = !DILocation(line: 0, scope: !450)
!452 = !DILocation(line: 1483, column: 16, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !3, line: 1483, column: 2)
!454 = !DILocation(line: 1483, column: 2, scope: !450)
!455 = !DILocation(line: 1484, column: 10, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !3, line: 1483, column: 28)
!457 = !DILocation(line: 1484, column: 16, scope: !456)
!458 = !DILocation(line: 1484, column: 3, scope: !456)
!459 = !DILocation(line: 1484, column: 30, scope: !456)
!460 = !DILocation(line: 1484, column: 37, scope: !456)
!461 = !DILocation(line: 1484, column: 43, scope: !456)
!462 = !DILocation(line: 1484, column: 23, scope: !456)
!463 = !DILocation(line: 1485, column: 10, scope: !464)
!464 = distinct !DILexicalBlock(scope: !456, file: !3, line: 1485, column: 7)
!465 = !DILocation(line: 1485, column: 15, scope: !464)
!466 = !DILocation(line: 1485, column: 7, scope: !456)
!467 = !DILocation(line: 1486, column: 24, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !3, line: 1485, column: 21)
!469 = !DILocation(line: 1486, column: 30, scope: !468)
!470 = !DILocation(line: 1486, column: 17, scope: !468)
!471 = !DILocation(line: 1486, column: 4, scope: !468)
!472 = !DILocation(line: 1487, column: 3, scope: !468)
!473 = !DILocation(line: 1488, column: 21, scope: !474)
!474 = distinct !DILexicalBlock(scope: !464, file: !3, line: 1487, column: 10)
!475 = !DILocation(line: 1488, column: 27, scope: !474)
!476 = !DILocation(line: 1488, column: 14, scope: !474)
!477 = !DILocation(line: 1488, column: 41, scope: !474)
!478 = !DILocation(line: 1488, column: 47, scope: !474)
!479 = !DILocation(line: 1488, column: 34, scope: !474)
!480 = !DILocation(line: 1488, column: 4, scope: !474)
!481 = !DILocation(line: 1490, column: 2, scope: !456)
!482 = !DILocation(line: 1483, column: 24, scope: !453)
!483 = !DILocation(line: 1483, column: 2, scope: !453)
!484 = distinct !{!484, !454, !485, !184}
!485 = !DILocation(line: 1490, column: 2, scope: !450)
!486 = !DILocation(line: 1496, column: 26, scope: !430)
!487 = !DILocation(line: 1496, column: 19, scope: !430)
!488 = !DILocation(line: 1496, column: 38, scope: !430)
!489 = !DILocation(line: 1496, column: 31, scope: !430)
!490 = !DILocation(line: 1496, column: 2, scope: !430)
!491 = !DILocation(line: 1501, column: 28, scope: !430)
!492 = !DILocation(line: 1501, column: 21, scope: !430)
!493 = !DILocation(line: 1501, column: 2, scope: !430)
!494 = !DILocation(line: 1502, column: 1, scope: !430)
!495 = distinct !DISubprogram(name: "p256_mulgen", scope: !3, file: !3, line: 1611, type: !431, scopeLine: 1612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!496 = !DILocalVariable(name: "P", arg: 1, scope: !495, file: !3, line: 1611, type: !326)
!497 = !DILocation(line: 0, scope: !495)
!498 = !DILocalVariable(name: "k", arg: 2, scope: !495, file: !3, line: 1611, type: !73)
!499 = !DILocalVariable(name: "klen", arg: 3, scope: !495, file: !3, line: 1611, type: !75)
!500 = !DILocation(line: 1613, column: 2, scope: !495)
!501 = !DILocation(line: 1614, column: 1, scope: !495)
!502 = distinct !DISubprogram(name: "p256_add", scope: !3, file: !3, line: 884, type: !503, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!503 = !DISubroutineType(types: !504)
!504 = !{!11, !326, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!507 = !DILocalVariable(name: "P1", arg: 1, scope: !502, file: !3, line: 884, type: !326)
!508 = !DILocation(line: 0, scope: !502)
!509 = !DILocalVariable(name: "P2", arg: 2, scope: !502, file: !3, line: 884, type: !505)
!510 = !DILocalVariable(name: "t1", scope: !502, file: !3, line: 899, type: !59)
!511 = !DILocation(line: 899, column: 11, scope: !502)
!512 = !DILocalVariable(name: "t2", scope: !502, file: !3, line: 899, type: !59)
!513 = !DILocation(line: 899, column: 18, scope: !502)
!514 = !DILocalVariable(name: "t3", scope: !502, file: !3, line: 899, type: !59)
!515 = !DILocation(line: 899, column: 25, scope: !502)
!516 = !DILocalVariable(name: "t4", scope: !502, file: !3, line: 899, type: !59)
!517 = !DILocation(line: 899, column: 32, scope: !502)
!518 = !DILocalVariable(name: "t5", scope: !502, file: !3, line: 899, type: !59)
!519 = !DILocation(line: 899, column: 39, scope: !502)
!520 = !DILocalVariable(name: "t6", scope: !502, file: !3, line: 899, type: !59)
!521 = !DILocation(line: 899, column: 46, scope: !502)
!522 = !DILocalVariable(name: "t7", scope: !502, file: !3, line: 899, type: !59)
!523 = !DILocation(line: 899, column: 53, scope: !502)
!524 = !DILocation(line: 905, column: 19, scope: !502)
!525 = !DILocation(line: 905, column: 27, scope: !502)
!526 = !DILocation(line: 905, column: 23, scope: !502)
!527 = !DILocation(line: 905, column: 2, scope: !502)
!528 = !DILocation(line: 906, column: 16, scope: !502)
!529 = !DILocation(line: 906, column: 24, scope: !502)
!530 = !DILocation(line: 906, column: 20, scope: !502)
!531 = !DILocation(line: 906, column: 27, scope: !502)
!532 = !DILocation(line: 906, column: 2, scope: !502)
!533 = !DILocation(line: 907, column: 16, scope: !502)
!534 = !DILocation(line: 907, column: 24, scope: !502)
!535 = !DILocation(line: 907, column: 20, scope: !502)
!536 = !DILocation(line: 907, column: 27, scope: !502)
!537 = !DILocation(line: 907, column: 2, scope: !502)
!538 = !DILocation(line: 908, column: 16, scope: !502)
!539 = !DILocation(line: 908, column: 24, scope: !502)
!540 = !DILocation(line: 908, column: 20, scope: !502)
!541 = !DILocation(line: 908, column: 27, scope: !502)
!542 = !DILocation(line: 908, column: 2, scope: !502)
!543 = !DILocation(line: 913, column: 19, scope: !502)
!544 = !DILocation(line: 913, column: 27, scope: !502)
!545 = !DILocation(line: 913, column: 23, scope: !502)
!546 = !DILocation(line: 913, column: 2, scope: !502)
!547 = !DILocation(line: 914, column: 16, scope: !502)
!548 = !DILocation(line: 914, column: 24, scope: !502)
!549 = !DILocation(line: 914, column: 20, scope: !502)
!550 = !DILocation(line: 914, column: 27, scope: !502)
!551 = !DILocation(line: 914, column: 2, scope: !502)
!552 = !DILocation(line: 915, column: 16, scope: !502)
!553 = !DILocation(line: 915, column: 24, scope: !502)
!554 = !DILocation(line: 915, column: 20, scope: !502)
!555 = !DILocation(line: 915, column: 27, scope: !502)
!556 = !DILocation(line: 915, column: 2, scope: !502)
!557 = !DILocation(line: 916, column: 16, scope: !502)
!558 = !DILocation(line: 916, column: 24, scope: !502)
!559 = !DILocation(line: 916, column: 20, scope: !502)
!560 = !DILocation(line: 916, column: 27, scope: !502)
!561 = !DILocation(line: 916, column: 2, scope: !502)
!562 = !DILocation(line: 923, column: 11, scope: !502)
!563 = !DILocation(line: 923, column: 15, scope: !502)
!564 = !DILocation(line: 923, column: 19, scope: !502)
!565 = !DILocation(line: 923, column: 2, scope: !502)
!566 = !DILocation(line: 924, column: 11, scope: !502)
!567 = !DILocation(line: 924, column: 15, scope: !502)
!568 = !DILocation(line: 924, column: 19, scope: !502)
!569 = !DILocation(line: 924, column: 2, scope: !502)
!570 = !DILocation(line: 925, column: 20, scope: !502)
!571 = !DILocation(line: 925, column: 2, scope: !502)
!572 = !DILocation(line: 926, column: 7, scope: !502)
!573 = !DILocation(line: 926, column: 15, scope: !502)
!574 = !DILocation(line: 926, column: 13, scope: !502)
!575 = !DILocation(line: 926, column: 23, scope: !502)
!576 = !DILocation(line: 926, column: 21, scope: !502)
!577 = !DILocation(line: 926, column: 31, scope: !502)
!578 = !DILocation(line: 926, column: 29, scope: !502)
!579 = !DILocalVariable(name: "tt", scope: !502, file: !3, line: 899, type: !15)
!580 = !DILocation(line: 927, column: 28, scope: !502)
!581 = !DILocation(line: 927, column: 22, scope: !502)
!582 = !DILocation(line: 927, column: 8, scope: !502)
!583 = !DILocalVariable(name: "ret", scope: !502, file: !3, line: 900, type: !11)
!584 = !DILocation(line: 928, column: 15, scope: !502)
!585 = !DILocation(line: 928, column: 13, scope: !502)
!586 = !DILocation(line: 928, column: 21, scope: !502)
!587 = !DILocation(line: 933, column: 19, scope: !502)
!588 = !DILocation(line: 933, column: 23, scope: !502)
!589 = !DILocation(line: 933, column: 2, scope: !502)
!590 = !DILocation(line: 934, column: 16, scope: !502)
!591 = !DILocation(line: 934, column: 20, scope: !502)
!592 = !DILocation(line: 934, column: 24, scope: !502)
!593 = !DILocation(line: 934, column: 2, scope: !502)
!594 = !DILocation(line: 935, column: 16, scope: !502)
!595 = !DILocation(line: 935, column: 20, scope: !502)
!596 = !DILocation(line: 935, column: 24, scope: !502)
!597 = !DILocation(line: 935, column: 2, scope: !502)
!598 = !DILocation(line: 940, column: 23, scope: !502)
!599 = !DILocation(line: 940, column: 19, scope: !502)
!600 = !DILocation(line: 940, column: 26, scope: !502)
!601 = !DILocation(line: 940, column: 2, scope: !502)
!602 = !DILocation(line: 941, column: 15, scope: !502)
!603 = !DILocation(line: 941, column: 11, scope: !502)
!604 = !DILocation(line: 941, column: 22, scope: !502)
!605 = !DILocation(line: 941, column: 18, scope: !502)
!606 = !DILocation(line: 941, column: 25, scope: !502)
!607 = !DILocation(line: 941, column: 2, scope: !502)
!608 = !DILocation(line: 942, column: 15, scope: !502)
!609 = !DILocation(line: 942, column: 11, scope: !502)
!610 = !DILocation(line: 942, column: 22, scope: !502)
!611 = !DILocation(line: 942, column: 18, scope: !502)
!612 = !DILocation(line: 942, column: 25, scope: !502)
!613 = !DILocation(line: 942, column: 2, scope: !502)
!614 = !DILocation(line: 943, column: 15, scope: !502)
!615 = !DILocation(line: 943, column: 11, scope: !502)
!616 = !DILocation(line: 943, column: 22, scope: !502)
!617 = !DILocation(line: 943, column: 18, scope: !502)
!618 = !DILocation(line: 943, column: 25, scope: !502)
!619 = !DILocation(line: 943, column: 2, scope: !502)
!620 = !DILocation(line: 948, column: 11, scope: !502)
!621 = !DILocation(line: 948, column: 15, scope: !502)
!622 = !DILocation(line: 948, column: 23, scope: !502)
!623 = !DILocation(line: 948, column: 19, scope: !502)
!624 = !DILocation(line: 948, column: 2, scope: !502)
!625 = !DILocation(line: 949, column: 20, scope: !502)
!626 = !DILocation(line: 949, column: 16, scope: !502)
!627 = !DILocation(line: 949, column: 23, scope: !502)
!628 = !DILocation(line: 949, column: 27, scope: !502)
!629 = !DILocation(line: 949, column: 2, scope: !502)
!630 = !DILocation(line: 950, column: 16, scope: !502)
!631 = !DILocation(line: 950, column: 20, scope: !502)
!632 = !DILocation(line: 950, column: 24, scope: !502)
!633 = !DILocation(line: 950, column: 2, scope: !502)
!634 = !DILocation(line: 951, column: 15, scope: !502)
!635 = !DILocation(line: 951, column: 11, scope: !502)
!636 = !DILocation(line: 951, column: 22, scope: !502)
!637 = !DILocation(line: 951, column: 18, scope: !502)
!638 = !DILocation(line: 951, column: 25, scope: !502)
!639 = !DILocation(line: 951, column: 2, scope: !502)
!640 = !DILocation(line: 956, column: 16, scope: !502)
!641 = !DILocation(line: 956, column: 24, scope: !502)
!642 = !DILocation(line: 956, column: 20, scope: !502)
!643 = !DILocation(line: 956, column: 31, scope: !502)
!644 = !DILocation(line: 956, column: 27, scope: !502)
!645 = !DILocation(line: 956, column: 2, scope: !502)
!646 = !DILocation(line: 957, column: 20, scope: !502)
!647 = !DILocation(line: 957, column: 16, scope: !502)
!648 = !DILocation(line: 957, column: 23, scope: !502)
!649 = !DILocation(line: 957, column: 27, scope: !502)
!650 = !DILocation(line: 957, column: 2, scope: !502)
!651 = !DILocation(line: 959, column: 2, scope: !502)
!652 = distinct !DISubprogram(name: "f256_final_reduce", scope: !3, file: !3, line: 596, type: !653, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !38}
!655 = !DILocalVariable(name: "a", arg: 1, scope: !652, file: !3, line: 596, type: !38)
!656 = !DILocation(line: 0, scope: !652)
!657 = !DILocation(line: 608, column: 25, scope: !652)
!658 = !DILocation(line: 608, column: 6, scope: !652)
!659 = !DILocation(line: 608, column: 30, scope: !652)
!660 = !DILocalVariable(name: "z", scope: !652, file: !3, line: 601, type: !18)
!661 = !DILocation(line: 609, column: 7, scope: !652)
!662 = !DILocalVariable(name: "t0", scope: !652, file: !3, line: 600, type: !15)
!663 = !DILocation(line: 610, column: 25, scope: !652)
!664 = !DILocation(line: 610, column: 6, scope: !652)
!665 = !DILocation(line: 610, column: 35, scope: !652)
!666 = !DILocation(line: 610, column: 30, scope: !652)
!667 = !DILocation(line: 610, column: 42, scope: !652)
!668 = !DILocation(line: 611, column: 7, scope: !652)
!669 = !DILocalVariable(name: "t1", scope: !652, file: !3, line: 600, type: !15)
!670 = !DILocation(line: 612, column: 25, scope: !652)
!671 = !DILocation(line: 612, column: 6, scope: !652)
!672 = !DILocation(line: 612, column: 35, scope: !652)
!673 = !DILocation(line: 612, column: 30, scope: !652)
!674 = !DILocation(line: 613, column: 7, scope: !652)
!675 = !DILocalVariable(name: "t2", scope: !652, file: !3, line: 600, type: !15)
!676 = !DILocation(line: 614, column: 25, scope: !652)
!677 = !DILocation(line: 614, column: 6, scope: !652)
!678 = !DILocation(line: 614, column: 35, scope: !652)
!679 = !DILocation(line: 614, column: 30, scope: !652)
!680 = !DILocation(line: 614, column: 43, scope: !652)
!681 = !DILocation(line: 615, column: 7, scope: !652)
!682 = !DILocalVariable(name: "t3", scope: !652, file: !3, line: 600, type: !15)
!683 = !DILocation(line: 616, column: 21, scope: !652)
!684 = !DILocation(line: 616, column: 8, scope: !652)
!685 = !DILocation(line: 616, column: 7, scope: !652)
!686 = !DILocalVariable(name: "cc", scope: !652, file: !3, line: 600, type: !15)
!687 = !DILocation(line: 618, column: 16, scope: !652)
!688 = !DILocation(line: 618, column: 21, scope: !652)
!689 = !DILocation(line: 618, column: 13, scope: !652)
!690 = !DILocation(line: 618, column: 2, scope: !652)
!691 = !DILocation(line: 618, column: 7, scope: !652)
!692 = !DILocation(line: 619, column: 16, scope: !652)
!693 = !DILocation(line: 619, column: 21, scope: !652)
!694 = !DILocation(line: 619, column: 13, scope: !652)
!695 = !DILocation(line: 619, column: 2, scope: !652)
!696 = !DILocation(line: 619, column: 7, scope: !652)
!697 = !DILocation(line: 620, column: 16, scope: !652)
!698 = !DILocation(line: 620, column: 21, scope: !652)
!699 = !DILocation(line: 620, column: 13, scope: !652)
!700 = !DILocation(line: 620, column: 2, scope: !652)
!701 = !DILocation(line: 620, column: 7, scope: !652)
!702 = !DILocation(line: 621, column: 16, scope: !652)
!703 = !DILocation(line: 621, column: 21, scope: !652)
!704 = !DILocation(line: 621, column: 13, scope: !652)
!705 = !DILocation(line: 621, column: 2, scope: !652)
!706 = !DILocation(line: 621, column: 7, scope: !652)
!707 = !DILocation(line: 640, column: 1, scope: !652)
!708 = distinct !DISubprogram(name: "EQ", scope: !187, file: !187, line: 779, type: !709, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!709 = !DISubroutineType(types: !710)
!710 = !{!11, !11, !11}
!711 = !DILocalVariable(name: "x", arg: 1, scope: !708, file: !187, line: 779, type: !11)
!712 = !DILocation(line: 0, scope: !708)
!713 = !DILocalVariable(name: "y", arg: 2, scope: !708, file: !187, line: 779, type: !11)
!714 = !DILocation(line: 783, column: 8, scope: !708)
!715 = !DILocalVariable(name: "q", scope: !708, file: !187, line: 781, type: !11)
!716 = !DILocation(line: 784, column: 18, scope: !708)
!717 = !DILocation(line: 784, column: 16, scope: !708)
!718 = !DILocation(line: 784, column: 22, scope: !708)
!719 = !DILocation(line: 784, column: 9, scope: !708)
!720 = !DILocation(line: 784, column: 2, scope: !708)
!721 = distinct !DISubprogram(name: "p256_double", scope: !3, file: !3, line: 781, type: !722, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !326}
!724 = !DILocalVariable(name: "P", arg: 1, scope: !721, file: !3, line: 781, type: !326)
!725 = !DILocation(line: 0, scope: !721)
!726 = !DILocalVariable(name: "t1", scope: !721, file: !3, line: 798, type: !59)
!727 = !DILocation(line: 798, column: 11, scope: !721)
!728 = !DILocalVariable(name: "t2", scope: !721, file: !3, line: 798, type: !59)
!729 = !DILocation(line: 798, column: 18, scope: !721)
!730 = !DILocalVariable(name: "t3", scope: !721, file: !3, line: 798, type: !59)
!731 = !DILocation(line: 798, column: 25, scope: !721)
!732 = !DILocalVariable(name: "t4", scope: !721, file: !3, line: 798, type: !59)
!733 = !DILocation(line: 798, column: 32, scope: !721)
!734 = !DILocation(line: 803, column: 19, scope: !721)
!735 = !DILocation(line: 803, column: 26, scope: !721)
!736 = !DILocation(line: 803, column: 23, scope: !721)
!737 = !DILocation(line: 803, column: 2, scope: !721)
!738 = !DILocation(line: 808, column: 11, scope: !721)
!739 = !DILocation(line: 808, column: 18, scope: !721)
!740 = !DILocation(line: 808, column: 15, scope: !721)
!741 = !DILocation(line: 808, column: 21, scope: !721)
!742 = !DILocation(line: 808, column: 2, scope: !721)
!743 = !DILocation(line: 809, column: 11, scope: !721)
!744 = !DILocation(line: 809, column: 18, scope: !721)
!745 = !DILocation(line: 809, column: 15, scope: !721)
!746 = !DILocation(line: 809, column: 21, scope: !721)
!747 = !DILocation(line: 809, column: 2, scope: !721)
!748 = !DILocation(line: 814, column: 16, scope: !721)
!749 = !DILocation(line: 814, column: 20, scope: !721)
!750 = !DILocation(line: 814, column: 24, scope: !721)
!751 = !DILocation(line: 814, column: 2, scope: !721)
!752 = !DILocation(line: 815, column: 11, scope: !721)
!753 = !DILocation(line: 815, column: 15, scope: !721)
!754 = !DILocation(line: 815, column: 19, scope: !721)
!755 = !DILocation(line: 815, column: 2, scope: !721)
!756 = !DILocation(line: 816, column: 11, scope: !721)
!757 = !DILocation(line: 816, column: 15, scope: !721)
!758 = !DILocation(line: 816, column: 19, scope: !721)
!759 = !DILocation(line: 816, column: 2, scope: !721)
!760 = !DILocation(line: 821, column: 19, scope: !721)
!761 = !DILocation(line: 821, column: 26, scope: !721)
!762 = !DILocation(line: 821, column: 23, scope: !721)
!763 = !DILocation(line: 821, column: 2, scope: !721)
!764 = !DILocation(line: 822, column: 11, scope: !721)
!765 = !DILocation(line: 822, column: 15, scope: !721)
!766 = !DILocation(line: 822, column: 19, scope: !721)
!767 = !DILocation(line: 822, column: 2, scope: !721)
!768 = !DILocation(line: 823, column: 16, scope: !721)
!769 = !DILocation(line: 823, column: 23, scope: !721)
!770 = !DILocation(line: 823, column: 20, scope: !721)
!771 = !DILocation(line: 823, column: 26, scope: !721)
!772 = !DILocation(line: 823, column: 2, scope: !721)
!773 = !DILocation(line: 824, column: 11, scope: !721)
!774 = !DILocation(line: 824, column: 15, scope: !721)
!775 = !DILocation(line: 824, column: 19, scope: !721)
!776 = !DILocation(line: 824, column: 2, scope: !721)
!777 = !DILocation(line: 829, column: 22, scope: !721)
!778 = !DILocation(line: 829, column: 19, scope: !721)
!779 = !DILocation(line: 829, column: 25, scope: !721)
!780 = !DILocation(line: 829, column: 2, scope: !721)
!781 = !DILocation(line: 830, column: 14, scope: !721)
!782 = !DILocation(line: 830, column: 11, scope: !721)
!783 = !DILocation(line: 830, column: 20, scope: !721)
!784 = !DILocation(line: 830, column: 17, scope: !721)
!785 = !DILocation(line: 830, column: 23, scope: !721)
!786 = !DILocation(line: 830, column: 2, scope: !721)
!787 = !DILocation(line: 831, column: 14, scope: !721)
!788 = !DILocation(line: 831, column: 11, scope: !721)
!789 = !DILocation(line: 831, column: 20, scope: !721)
!790 = !DILocation(line: 831, column: 17, scope: !721)
!791 = !DILocation(line: 831, column: 23, scope: !721)
!792 = !DILocation(line: 831, column: 2, scope: !721)
!793 = !DILocation(line: 836, column: 16, scope: !721)
!794 = !DILocation(line: 836, column: 23, scope: !721)
!795 = !DILocation(line: 836, column: 20, scope: !721)
!796 = !DILocation(line: 836, column: 29, scope: !721)
!797 = !DILocation(line: 836, column: 26, scope: !721)
!798 = !DILocation(line: 836, column: 2, scope: !721)
!799 = !DILocation(line: 837, column: 14, scope: !721)
!800 = !DILocation(line: 837, column: 11, scope: !721)
!801 = !DILocation(line: 837, column: 17, scope: !721)
!802 = !DILocation(line: 837, column: 21, scope: !721)
!803 = !DILocation(line: 837, column: 2, scope: !721)
!804 = !DILocation(line: 843, column: 11, scope: !721)
!805 = !DILocation(line: 843, column: 15, scope: !721)
!806 = !DILocation(line: 843, column: 22, scope: !721)
!807 = !DILocation(line: 843, column: 19, scope: !721)
!808 = !DILocation(line: 843, column: 2, scope: !721)
!809 = !DILocation(line: 844, column: 19, scope: !721)
!810 = !DILocation(line: 844, column: 16, scope: !721)
!811 = !DILocation(line: 844, column: 22, scope: !721)
!812 = !DILocation(line: 844, column: 26, scope: !721)
!813 = !DILocation(line: 844, column: 2, scope: !721)
!814 = !DILocation(line: 845, column: 19, scope: !721)
!815 = !DILocation(line: 845, column: 23, scope: !721)
!816 = !DILocation(line: 845, column: 2, scope: !721)
!817 = !DILocation(line: 846, column: 11, scope: !721)
!818 = !DILocation(line: 846, column: 15, scope: !721)
!819 = !DILocation(line: 846, column: 19, scope: !721)
!820 = !DILocation(line: 846, column: 2, scope: !721)
!821 = !DILocation(line: 847, column: 14, scope: !721)
!822 = !DILocation(line: 847, column: 11, scope: !721)
!823 = !DILocation(line: 847, column: 20, scope: !721)
!824 = !DILocation(line: 847, column: 17, scope: !721)
!825 = !DILocation(line: 847, column: 23, scope: !721)
!826 = !DILocation(line: 847, column: 2, scope: !721)
!827 = !DILocation(line: 848, column: 1, scope: !721)
!828 = distinct !DISubprogram(name: "point_encode", scope: !3, file: !3, line: 733, type: !829, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!829 = !DISubroutineType(types: !830)
!830 = !{!11, !86, !505}
!831 = !DILocalVariable(name: "buf", arg: 1, scope: !828, file: !3, line: 733, type: !86)
!832 = !DILocation(line: 0, scope: !828)
!833 = !DILocalVariable(name: "P", arg: 2, scope: !828, file: !3, line: 733, type: !505)
!834 = !DILocalVariable(name: "t1", scope: !828, file: !3, line: 735, type: !59)
!835 = !DILocation(line: 735, column: 11, scope: !828)
!836 = !DILocalVariable(name: "t2", scope: !828, file: !3, line: 735, type: !59)
!837 = !DILocation(line: 735, column: 18, scope: !828)
!838 = !DILocation(line: 738, column: 14, scope: !828)
!839 = !DILocation(line: 738, column: 21, scope: !828)
!840 = !DILocation(line: 738, column: 18, scope: !828)
!841 = !DILocation(line: 738, column: 2, scope: !828)
!842 = !DILocation(line: 739, column: 19, scope: !828)
!843 = !DILocation(line: 739, column: 23, scope: !828)
!844 = !DILocation(line: 739, column: 2, scope: !828)
!845 = !DILocation(line: 740, column: 16, scope: !828)
!846 = !DILocation(line: 740, column: 20, scope: !828)
!847 = !DILocation(line: 740, column: 24, scope: !828)
!848 = !DILocation(line: 740, column: 2, scope: !828)
!849 = !DILocation(line: 743, column: 16, scope: !828)
!850 = !DILocation(line: 743, column: 23, scope: !828)
!851 = !DILocation(line: 743, column: 20, scope: !828)
!852 = !DILocation(line: 743, column: 26, scope: !828)
!853 = !DILocation(line: 743, column: 2, scope: !828)
!854 = !DILocation(line: 744, column: 16, scope: !828)
!855 = !DILocation(line: 744, column: 23, scope: !828)
!856 = !DILocation(line: 744, column: 20, scope: !828)
!857 = !DILocation(line: 744, column: 26, scope: !828)
!858 = !DILocation(line: 744, column: 2, scope: !828)
!859 = !DILocation(line: 748, column: 17, scope: !828)
!860 = !DILocation(line: 748, column: 21, scope: !828)
!861 = !DILocation(line: 748, column: 2, scope: !828)
!862 = !DILocation(line: 749, column: 17, scope: !828)
!863 = !DILocation(line: 749, column: 21, scope: !828)
!864 = !DILocation(line: 749, column: 2, scope: !828)
!865 = !DILocation(line: 750, column: 20, scope: !828)
!866 = !DILocation(line: 750, column: 2, scope: !828)
!867 = !DILocation(line: 751, column: 20, scope: !828)
!868 = !DILocation(line: 751, column: 2, scope: !828)
!869 = !DILocation(line: 754, column: 2, scope: !828)
!870 = !DILocation(line: 754, column: 9, scope: !828)
!871 = !DILocation(line: 755, column: 17, scope: !828)
!872 = !DILocation(line: 755, column: 23, scope: !828)
!873 = !DILocation(line: 755, column: 2, scope: !828)
!874 = !DILocation(line: 756, column: 17, scope: !828)
!875 = !DILocation(line: 756, column: 23, scope: !828)
!876 = !DILocation(line: 756, column: 2, scope: !828)
!877 = !DILocation(line: 757, column: 17, scope: !828)
!878 = !DILocation(line: 757, column: 23, scope: !828)
!879 = !DILocation(line: 757, column: 2, scope: !828)
!880 = !DILocation(line: 758, column: 17, scope: !828)
!881 = !DILocation(line: 758, column: 23, scope: !828)
!882 = !DILocation(line: 758, column: 2, scope: !828)
!883 = !DILocation(line: 759, column: 17, scope: !828)
!884 = !DILocation(line: 759, column: 23, scope: !828)
!885 = !DILocation(line: 759, column: 2, scope: !828)
!886 = !DILocation(line: 760, column: 17, scope: !828)
!887 = !DILocation(line: 760, column: 23, scope: !828)
!888 = !DILocation(line: 760, column: 2, scope: !828)
!889 = !DILocation(line: 761, column: 17, scope: !828)
!890 = !DILocation(line: 761, column: 23, scope: !828)
!891 = !DILocation(line: 761, column: 2, scope: !828)
!892 = !DILocation(line: 762, column: 17, scope: !828)
!893 = !DILocation(line: 762, column: 23, scope: !828)
!894 = !DILocation(line: 762, column: 2, scope: !828)
!895 = !DILocation(line: 765, column: 9, scope: !828)
!896 = !DILocation(line: 765, column: 6, scope: !828)
!897 = !DILocation(line: 765, column: 19, scope: !828)
!898 = !DILocation(line: 765, column: 16, scope: !828)
!899 = !DILocation(line: 765, column: 14, scope: !828)
!900 = !DILocation(line: 765, column: 29, scope: !828)
!901 = !DILocation(line: 765, column: 26, scope: !828)
!902 = !DILocation(line: 765, column: 24, scope: !828)
!903 = !DILocation(line: 765, column: 39, scope: !828)
!904 = !DILocation(line: 765, column: 36, scope: !828)
!905 = !DILocation(line: 765, column: 34, scope: !828)
!906 = !DILocalVariable(name: "z", scope: !828, file: !3, line: 735, type: !15)
!907 = !DILocation(line: 766, column: 30, scope: !828)
!908 = !DILocation(line: 766, column: 26, scope: !828)
!909 = !DILocation(line: 766, column: 13, scope: !828)
!910 = !DILocation(line: 766, column: 9, scope: !828)
!911 = !DILocation(line: 766, column: 2, scope: !828)
!912 = distinct !DISubprogram(name: "f256_invert", scope: !3, file: !3, line: 545, type: !36, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!913 = !DILocalVariable(name: "d", arg: 1, scope: !912, file: !3, line: 545, type: !38)
!914 = !DILocation(line: 0, scope: !912)
!915 = !DILocalVariable(name: "a", arg: 2, scope: !912, file: !3, line: 545, type: !39)
!916 = !DILocalVariable(name: "r", scope: !912, file: !3, line: 561, type: !59)
!917 = !DILocation(line: 561, column: 11, scope: !912)
!918 = !DILocalVariable(name: "t", scope: !912, file: !3, line: 561, type: !59)
!919 = !DILocation(line: 561, column: 17, scope: !912)
!920 = !DILocation(line: 564, column: 2, scope: !912)
!921 = !DILocalVariable(name: "i", scope: !912, file: !3, line: 562, type: !10)
!922 = !DILocation(line: 565, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !912, file: !3, line: 565, column: 2)
!924 = !DILocation(line: 0, scope: !923)
!925 = !DILocation(line: 565, column: 16, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !3, line: 565, column: 2)
!927 = !DILocation(line: 565, column: 2, scope: !923)
!928 = !DILocation(line: 566, column: 20, scope: !929)
!929 = distinct !DILexicalBlock(scope: !926, file: !3, line: 565, column: 28)
!930 = !DILocation(line: 566, column: 23, scope: !929)
!931 = !DILocation(line: 566, column: 3, scope: !929)
!932 = !DILocation(line: 567, column: 17, scope: !929)
!933 = !DILocation(line: 567, column: 20, scope: !929)
!934 = !DILocation(line: 567, column: 3, scope: !929)
!935 = !DILocation(line: 568, column: 2, scope: !929)
!936 = !DILocation(line: 565, column: 24, scope: !926)
!937 = !DILocation(line: 565, column: 2, scope: !926)
!938 = distinct !{!938, !927, !939, !184}
!939 = !DILocation(line: 568, column: 2, scope: !923)
!940 = !DILocation(line: 570, column: 2, scope: !912)
!941 = !DILocation(line: 571, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !912, file: !3, line: 571, column: 2)
!943 = !DILocation(line: 0, scope: !942)
!944 = !DILocation(line: 571, column: 18, scope: !945)
!945 = distinct !DILexicalBlock(scope: !942, file: !3, line: 571, column: 2)
!946 = !DILocation(line: 571, column: 2, scope: !942)
!947 = !DILocation(line: 572, column: 20, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 571, column: 30)
!949 = !DILocation(line: 572, column: 23, scope: !948)
!950 = !DILocation(line: 572, column: 3, scope: !948)
!951 = !DILocation(line: 573, column: 3, scope: !948)
!952 = !DILocation(line: 578, column: 18, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !3, line: 573, column: 14)
!954 = !DILocation(line: 578, column: 21, scope: !953)
!955 = !DILocation(line: 578, column: 4, scope: !953)
!956 = !DILocation(line: 579, column: 4, scope: !953)
!957 = !DILocation(line: 583, column: 18, scope: !953)
!958 = !DILocation(line: 583, column: 21, scope: !953)
!959 = !DILocation(line: 583, column: 24, scope: !953)
!960 = !DILocation(line: 583, column: 4, scope: !953)
!961 = !DILocation(line: 584, column: 4, scope: !953)
!962 = !DILocation(line: 586, column: 2, scope: !948)
!963 = !DILocation(line: 571, column: 26, scope: !945)
!964 = !DILocation(line: 571, column: 2, scope: !945)
!965 = distinct !{!965, !946, !966, !184}
!966 = !DILocation(line: 586, column: 2, scope: !942)
!967 = !DILocation(line: 587, column: 2, scope: !912)
!968 = !DILocation(line: 588, column: 1, scope: !912)
!969 = distinct !DISubprogram(name: "f256_montysquare", scope: !3, file: !3, line: 499, type: !36, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!970 = !DILocalVariable(name: "d", arg: 1, scope: !969, file: !3, line: 499, type: !38)
!971 = !DILocation(line: 0, scope: !969)
!972 = !DILocalVariable(name: "a", arg: 2, scope: !969, file: !3, line: 499, type: !39)
!973 = !DILocation(line: 501, column: 2, scope: !969)
!974 = !DILocation(line: 502, column: 1, scope: !969)
!975 = distinct !DISubprogram(name: "f256_montymul", scope: !3, file: !3, line: 259, type: !976, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !38, !39, !39}
!978 = !DILocalVariable(name: "d", arg: 1, scope: !975, file: !3, line: 259, type: !38)
!979 = !DILocation(line: 0, scope: !975)
!980 = !DILocalVariable(name: "a", arg: 2, scope: !975, file: !3, line: 259, type: !39)
!981 = !DILocalVariable(name: "b", arg: 3, scope: !975, file: !3, line: 259, type: !39)
!982 = !DILocation(line: 280, column: 6, scope: !975)
!983 = !DILocalVariable(name: "x", scope: !975, file: !3, line: 263, type: !15)
!984 = !DILocation(line: 281, column: 25, scope: !975)
!985 = !DILocation(line: 281, column: 6, scope: !975)
!986 = !DILocation(line: 281, column: 32, scope: !975)
!987 = !DILocation(line: 281, column: 30, scope: !975)
!988 = !DILocalVariable(name: "z", scope: !975, file: !3, line: 264, type: !18)
!989 = !DILocation(line: 282, column: 6, scope: !975)
!990 = !DILocalVariable(name: "f", scope: !975, file: !3, line: 263, type: !15)
!991 = !DILocation(line: 283, column: 25, scope: !975)
!992 = !DILocation(line: 283, column: 6, scope: !975)
!993 = !DILocation(line: 283, column: 32, scope: !975)
!994 = !DILocation(line: 283, column: 30, scope: !975)
!995 = !DILocation(line: 283, column: 39, scope: !975)
!996 = !DILocation(line: 283, column: 34, scope: !975)
!997 = !DILocation(line: 283, column: 61, scope: !975)
!998 = !DILocation(line: 283, column: 48, scope: !975)
!999 = !DILocation(line: 283, column: 46, scope: !975)
!1000 = !DILocation(line: 284, column: 7, scope: !975)
!1001 = !DILocalVariable(name: "t0", scope: !975, file: !3, line: 263, type: !15)
!1002 = !DILocation(line: 285, column: 25, scope: !975)
!1003 = !DILocation(line: 285, column: 6, scope: !975)
!1004 = !DILocation(line: 285, column: 32, scope: !975)
!1005 = !DILocation(line: 285, column: 30, scope: !975)
!1006 = !DILocation(line: 285, column: 39, scope: !975)
!1007 = !DILocation(line: 285, column: 34, scope: !975)
!1008 = !DILocation(line: 285, column: 61, scope: !975)
!1009 = !DILocation(line: 285, column: 48, scope: !975)
!1010 = !DILocation(line: 285, column: 46, scope: !975)
!1011 = !DILocation(line: 286, column: 7, scope: !975)
!1012 = !DILocalVariable(name: "t1", scope: !975, file: !3, line: 263, type: !15)
!1013 = !DILocation(line: 287, column: 25, scope: !975)
!1014 = !DILocation(line: 287, column: 6, scope: !975)
!1015 = !DILocation(line: 287, column: 32, scope: !975)
!1016 = !DILocation(line: 287, column: 30, scope: !975)
!1017 = !DILocation(line: 287, column: 39, scope: !975)
!1018 = !DILocation(line: 287, column: 34, scope: !975)
!1019 = !DILocation(line: 287, column: 48, scope: !975)
!1020 = !DILocation(line: 287, column: 46, scope: !975)
!1021 = !DILocation(line: 288, column: 7, scope: !975)
!1022 = !DILocalVariable(name: "t2", scope: !975, file: !3, line: 263, type: !15)
!1023 = !DILocation(line: 289, column: 20, scope: !975)
!1024 = !DILocation(line: 289, column: 7, scope: !975)
!1025 = !DILocalVariable(name: "t3", scope: !975, file: !3, line: 263, type: !15)
!1026 = !DILocation(line: 290, column: 8, scope: !975)
!1027 = !DILocation(line: 290, column: 29, scope: !975)
!1028 = !DILocation(line: 290, column: 39, scope: !975)
!1029 = !DILocation(line: 290, column: 60, scope: !975)
!1030 = !DILocation(line: 290, column: 36, scope: !975)
!1031 = !DILocalVariable(name: "ff", scope: !975, file: !3, line: 264, type: !18)
!1032 = !DILocation(line: 291, column: 6, scope: !975)
!1033 = !DILocation(line: 291, column: 30, scope: !975)
!1034 = !DILocation(line: 291, column: 28, scope: !975)
!1035 = !DILocation(line: 292, column: 7, scope: !975)
!1036 = !DILocation(line: 293, column: 6, scope: !975)
!1037 = !DILocation(line: 293, column: 33, scope: !975)
!1038 = !DILocation(line: 293, column: 28, scope: !975)
!1039 = !DILocation(line: 293, column: 46, scope: !975)
!1040 = !DILocation(line: 293, column: 40, scope: !975)
!1041 = !DILocation(line: 294, column: 7, scope: !975)
!1042 = !DILocation(line: 295, column: 20, scope: !975)
!1043 = !DILocation(line: 295, column: 7, scope: !975)
!1044 = !DILocalVariable(name: "t4", scope: !975, file: !3, line: 263, type: !15)
!1045 = !DILocalVariable(name: "i", scope: !975, file: !3, line: 265, type: !10)
!1046 = !DILocation(line: 300, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !975, file: !3, line: 300, column: 2)
!1048 = !DILocation(line: 0, scope: !1047)
!1049 = !DILocation(line: 300, column: 16, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 300, column: 2)
!1051 = !DILocation(line: 300, column: 2, scope: !1047)
!1052 = !DILocation(line: 301, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 300, column: 27)
!1054 = !DILocation(line: 304, column: 26, scope: !1053)
!1055 = !DILocation(line: 304, column: 7, scope: !1053)
!1056 = !DILocation(line: 304, column: 33, scope: !1053)
!1057 = !DILocation(line: 304, column: 31, scope: !1053)
!1058 = !DILocation(line: 304, column: 37, scope: !1053)
!1059 = !DILocation(line: 304, column: 35, scope: !1053)
!1060 = !DILocation(line: 305, column: 7, scope: !1053)
!1061 = !DILocation(line: 306, column: 26, scope: !1053)
!1062 = !DILocation(line: 306, column: 7, scope: !1053)
!1063 = !DILocation(line: 306, column: 33, scope: !1053)
!1064 = !DILocation(line: 306, column: 31, scope: !1053)
!1065 = !DILocation(line: 306, column: 37, scope: !1053)
!1066 = !DILocation(line: 306, column: 35, scope: !1053)
!1067 = !DILocation(line: 306, column: 45, scope: !1053)
!1068 = !DILocation(line: 306, column: 40, scope: !1053)
!1069 = !DILocation(line: 307, column: 8, scope: !1053)
!1070 = !DILocation(line: 308, column: 26, scope: !1053)
!1071 = !DILocation(line: 308, column: 7, scope: !1053)
!1072 = !DILocation(line: 308, column: 33, scope: !1053)
!1073 = !DILocation(line: 308, column: 31, scope: !1053)
!1074 = !DILocation(line: 308, column: 37, scope: !1053)
!1075 = !DILocation(line: 308, column: 35, scope: !1053)
!1076 = !DILocation(line: 308, column: 45, scope: !1053)
!1077 = !DILocation(line: 308, column: 40, scope: !1053)
!1078 = !DILocation(line: 309, column: 8, scope: !1053)
!1079 = !DILocation(line: 310, column: 26, scope: !1053)
!1080 = !DILocation(line: 310, column: 7, scope: !1053)
!1081 = !DILocation(line: 310, column: 33, scope: !1053)
!1082 = !DILocation(line: 310, column: 31, scope: !1053)
!1083 = !DILocation(line: 310, column: 37, scope: !1053)
!1084 = !DILocation(line: 310, column: 35, scope: !1053)
!1085 = !DILocation(line: 310, column: 45, scope: !1053)
!1086 = !DILocation(line: 310, column: 40, scope: !1053)
!1087 = !DILocation(line: 311, column: 8, scope: !1053)
!1088 = !DILocation(line: 312, column: 7, scope: !1053)
!1089 = !DILocation(line: 312, column: 15, scope: !1053)
!1090 = !DILocation(line: 312, column: 10, scope: !1053)
!1091 = !DILocation(line: 313, column: 8, scope: !1053)
!1092 = !DILocation(line: 314, column: 21, scope: !1053)
!1093 = !DILocation(line: 314, column: 8, scope: !1053)
!1094 = !DILocation(line: 317, column: 7, scope: !1053)
!1095 = !DILocation(line: 317, column: 44, scope: !1053)
!1096 = !DILocation(line: 317, column: 31, scope: !1053)
!1097 = !DILocation(line: 317, column: 29, scope: !1053)
!1098 = !DILocation(line: 318, column: 8, scope: !1053)
!1099 = !DILocation(line: 319, column: 10, scope: !1053)
!1100 = !DILocation(line: 319, column: 19, scope: !1053)
!1101 = !DILocation(line: 319, column: 17, scope: !1053)
!1102 = !DILocation(line: 319, column: 56, scope: !1053)
!1103 = !DILocation(line: 319, column: 43, scope: !1053)
!1104 = !DILocation(line: 319, column: 41, scope: !1053)
!1105 = !DILocation(line: 320, column: 8, scope: !1053)
!1106 = !DILocation(line: 323, column: 9, scope: !1053)
!1107 = !DILocation(line: 323, column: 30, scope: !1053)
!1108 = !DILocation(line: 324, column: 7, scope: !1053)
!1109 = !DILocation(line: 324, column: 28, scope: !1053)
!1110 = !DILocation(line: 324, column: 4, scope: !1053)
!1111 = !DILocation(line: 324, column: 37, scope: !1053)
!1112 = !DILocation(line: 324, column: 35, scope: !1053)
!1113 = !DILocation(line: 325, column: 10, scope: !1053)
!1114 = !DILocation(line: 325, column: 19, scope: !1053)
!1115 = !DILocation(line: 325, column: 17, scope: !1053)
!1116 = !DILocation(line: 325, column: 43, scope: !1053)
!1117 = !DILocation(line: 325, column: 41, scope: !1053)
!1118 = !DILocation(line: 326, column: 8, scope: !1053)
!1119 = !DILocation(line: 327, column: 7, scope: !1053)
!1120 = !DILocation(line: 327, column: 34, scope: !1053)
!1121 = !DILocation(line: 327, column: 29, scope: !1053)
!1122 = !DILocation(line: 327, column: 47, scope: !1053)
!1123 = !DILocation(line: 327, column: 41, scope: !1053)
!1124 = !DILocation(line: 328, column: 8, scope: !1053)
!1125 = !DILocation(line: 329, column: 22, scope: !1053)
!1126 = !DILocation(line: 329, column: 9, scope: !1053)
!1127 = !DILocation(line: 329, column: 6, scope: !1053)
!1128 = !DILocation(line: 330, column: 2, scope: !1053)
!1129 = !DILocation(line: 300, column: 23, scope: !1050)
!1130 = !DILocation(line: 300, column: 2, scope: !1050)
!1131 = distinct !{!1131, !1051, !1132, !184}
!1132 = !DILocation(line: 330, column: 2, scope: !1047)
!1133 = !DILocation(line: 350, column: 6, scope: !975)
!1134 = !DILocation(line: 350, column: 30, scope: !975)
!1135 = !DILocation(line: 350, column: 28, scope: !975)
!1136 = !DILocation(line: 351, column: 7, scope: !975)
!1137 = !DILocation(line: 352, column: 6, scope: !975)
!1138 = !DILocation(line: 352, column: 34, scope: !975)
!1139 = !DILocation(line: 352, column: 30, scope: !975)
!1140 = !DILocation(line: 352, column: 28, scope: !975)
!1141 = !DILocation(line: 352, column: 46, scope: !975)
!1142 = !DILocation(line: 352, column: 41, scope: !975)
!1143 = !DILocation(line: 353, column: 7, scope: !975)
!1144 = !DILocation(line: 354, column: 6, scope: !975)
!1145 = !DILocation(line: 354, column: 33, scope: !975)
!1146 = !DILocation(line: 354, column: 28, scope: !975)
!1147 = !DILocation(line: 355, column: 7, scope: !975)
!1148 = !DILocation(line: 356, column: 25, scope: !975)
!1149 = !DILocation(line: 356, column: 12, scope: !975)
!1150 = !DILocation(line: 356, column: 10, scope: !975)
!1151 = !DILocation(line: 356, column: 33, scope: !975)
!1152 = !DILocation(line: 356, column: 44, scope: !975)
!1153 = !DILocation(line: 356, column: 38, scope: !975)
!1154 = !DILocation(line: 358, column: 2, scope: !975)
!1155 = !DILocation(line: 358, column: 7, scope: !975)
!1156 = !DILocation(line: 359, column: 2, scope: !975)
!1157 = !DILocation(line: 359, column: 7, scope: !975)
!1158 = !DILocation(line: 360, column: 2, scope: !975)
!1159 = !DILocation(line: 360, column: 7, scope: !975)
!1160 = !DILocation(line: 361, column: 2, scope: !975)
!1161 = !DILocation(line: 361, column: 7, scope: !975)
!1162 = !DILocation(line: 491, column: 1, scope: !975)
!1163 = !DILocalVariable(name: "d", arg: 1, scope: !50, file: !3, line: 530, type: !38)
!1164 = !DILocation(line: 0, scope: !50)
!1165 = !DILocalVariable(name: "a", arg: 2, scope: !50, file: !3, line: 530, type: !39)
!1166 = !DILocation(line: 537, column: 2, scope: !50)
!1167 = !DILocation(line: 538, column: 1, scope: !50)
!1168 = distinct !DISubprogram(name: "br_enc64be", scope: !187, file: !187, line: 620, type: !1169, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !20, !15}
!1171 = !DILocalVariable(name: "dst", arg: 1, scope: !1168, file: !187, line: 620, type: !20)
!1172 = !DILocation(line: 0, scope: !1168)
!1173 = !DILocalVariable(name: "x", arg: 2, scope: !1168, file: !187, line: 620, type: !15)
!1174 = !DILocalVariable(name: "buf", scope: !1168, file: !187, line: 625, type: !86)
!1175 = !DILocation(line: 628, column: 31, scope: !1168)
!1176 = !DILocation(line: 628, column: 18, scope: !1168)
!1177 = !DILocation(line: 628, column: 2, scope: !1168)
!1178 = !DILocation(line: 629, column: 17, scope: !1168)
!1179 = !DILocation(line: 629, column: 22, scope: !1168)
!1180 = !DILocation(line: 629, column: 2, scope: !1168)
!1181 = !DILocation(line: 631, column: 1, scope: !1168)
!1182 = distinct !DISubprogram(name: "NEQ", scope: !187, file: !187, line: 791, type: !709, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1183 = !DILocalVariable(name: "x", arg: 1, scope: !1182, file: !187, line: 791, type: !11)
!1184 = !DILocation(line: 0, scope: !1182)
!1185 = !DILocalVariable(name: "y", arg: 2, scope: !1182, file: !187, line: 791, type: !11)
!1186 = !DILocation(line: 795, column: 8, scope: !1182)
!1187 = !DILocalVariable(name: "q", scope: !1182, file: !187, line: 793, type: !11)
!1188 = !DILocation(line: 796, column: 14, scope: !1182)
!1189 = !DILocation(line: 796, column: 12, scope: !1182)
!1190 = !DILocation(line: 796, column: 18, scope: !1182)
!1191 = !DILocation(line: 796, column: 2, scope: !1182)
!1192 = distinct !DISubprogram(name: "br_enc32be", scope: !187, file: !187, line: 558, type: !1193, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !20, !11}
!1195 = !DILocalVariable(name: "dst", arg: 1, scope: !1192, file: !187, line: 558, type: !20)
!1196 = !DILocation(line: 0, scope: !1192)
!1197 = !DILocalVariable(name: "x", arg: 2, scope: !1192, file: !187, line: 558, type: !11)
!1198 = !DILocalVariable(name: "buf", scope: !1192, file: !187, line: 563, type: !86)
!1199 = !DILocation(line: 566, column: 29, scope: !1192)
!1200 = !DILocation(line: 566, column: 11, scope: !1192)
!1201 = !DILocation(line: 566, column: 2, scope: !1192)
!1202 = !DILocation(line: 566, column: 9, scope: !1192)
!1203 = !DILocation(line: 567, column: 29, scope: !1192)
!1204 = !DILocation(line: 567, column: 11, scope: !1192)
!1205 = !DILocation(line: 567, column: 2, scope: !1192)
!1206 = !DILocation(line: 567, column: 9, scope: !1192)
!1207 = !DILocation(line: 568, column: 29, scope: !1192)
!1208 = !DILocation(line: 568, column: 11, scope: !1192)
!1209 = !DILocation(line: 568, column: 2, scope: !1192)
!1210 = !DILocation(line: 568, column: 9, scope: !1192)
!1211 = !DILocation(line: 569, column: 11, scope: !1192)
!1212 = !DILocation(line: 569, column: 2, scope: !1192)
!1213 = !DILocation(line: 569, column: 9, scope: !1192)
!1214 = !DILocation(line: 571, column: 1, scope: !1192)
!1215 = distinct !DISubprogram(name: "f256_add", scope: !3, file: !3, line: 96, type: !976, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1216 = !DILocalVariable(name: "d", arg: 1, scope: !1215, file: !3, line: 96, type: !38)
!1217 = !DILocation(line: 0, scope: !1215)
!1218 = !DILocalVariable(name: "a", arg: 2, scope: !1215, file: !3, line: 96, type: !39)
!1219 = !DILocalVariable(name: "b", arg: 3, scope: !1215, file: !3, line: 96, type: !39)
!1220 = !DILocation(line: 105, column: 25, scope: !1215)
!1221 = !DILocation(line: 105, column: 6, scope: !1215)
!1222 = !DILocation(line: 105, column: 32, scope: !1215)
!1223 = !DILocation(line: 105, column: 30, scope: !1215)
!1224 = !DILocalVariable(name: "w", scope: !1215, file: !3, line: 99, type: !18)
!1225 = !DILocation(line: 106, column: 9, scope: !1215)
!1226 = !DILocation(line: 106, column: 2, scope: !1215)
!1227 = !DILocation(line: 106, column: 7, scope: !1215)
!1228 = !DILocation(line: 107, column: 25, scope: !1215)
!1229 = !DILocation(line: 107, column: 6, scope: !1215)
!1230 = !DILocation(line: 107, column: 32, scope: !1215)
!1231 = !DILocation(line: 107, column: 30, scope: !1215)
!1232 = !DILocation(line: 107, column: 42, scope: !1215)
!1233 = !DILocation(line: 107, column: 37, scope: !1215)
!1234 = !DILocation(line: 108, column: 9, scope: !1215)
!1235 = !DILocation(line: 108, column: 2, scope: !1215)
!1236 = !DILocation(line: 108, column: 7, scope: !1215)
!1237 = !DILocation(line: 109, column: 25, scope: !1215)
!1238 = !DILocation(line: 109, column: 6, scope: !1215)
!1239 = !DILocation(line: 109, column: 32, scope: !1215)
!1240 = !DILocation(line: 109, column: 30, scope: !1215)
!1241 = !DILocation(line: 109, column: 42, scope: !1215)
!1242 = !DILocation(line: 109, column: 37, scope: !1215)
!1243 = !DILocation(line: 110, column: 9, scope: !1215)
!1244 = !DILocation(line: 110, column: 2, scope: !1215)
!1245 = !DILocation(line: 110, column: 7, scope: !1215)
!1246 = !DILocation(line: 111, column: 25, scope: !1215)
!1247 = !DILocation(line: 111, column: 6, scope: !1215)
!1248 = !DILocation(line: 111, column: 32, scope: !1215)
!1249 = !DILocation(line: 111, column: 30, scope: !1215)
!1250 = !DILocation(line: 111, column: 42, scope: !1215)
!1251 = !DILocation(line: 111, column: 37, scope: !1215)
!1252 = !DILocation(line: 112, column: 9, scope: !1215)
!1253 = !DILocation(line: 112, column: 2, scope: !1215)
!1254 = !DILocation(line: 112, column: 7, scope: !1215)
!1255 = !DILocation(line: 113, column: 19, scope: !1215)
!1256 = !DILocation(line: 113, column: 6, scope: !1215)
!1257 = !DILocalVariable(name: "t", scope: !1215, file: !3, line: 100, type: !15)
!1258 = !DILocation(line: 118, column: 25, scope: !1215)
!1259 = !DILocation(line: 118, column: 6, scope: !1215)
!1260 = !DILocation(line: 118, column: 32, scope: !1215)
!1261 = !DILocation(line: 118, column: 30, scope: !1215)
!1262 = !DILocation(line: 119, column: 9, scope: !1215)
!1263 = !DILocation(line: 119, column: 2, scope: !1215)
!1264 = !DILocation(line: 119, column: 7, scope: !1215)
!1265 = !DILocation(line: 120, column: 25, scope: !1215)
!1266 = !DILocation(line: 120, column: 6, scope: !1215)
!1267 = !DILocation(line: 120, column: 35, scope: !1215)
!1268 = !DILocation(line: 120, column: 30, scope: !1215)
!1269 = !DILocation(line: 120, column: 47, scope: !1215)
!1270 = !DILocation(line: 120, column: 44, scope: !1215)
!1271 = !DILocation(line: 120, column: 42, scope: !1215)
!1272 = !DILocation(line: 121, column: 9, scope: !1215)
!1273 = !DILocation(line: 121, column: 2, scope: !1215)
!1274 = !DILocation(line: 121, column: 7, scope: !1215)
!1275 = !DILocation(line: 123, column: 25, scope: !1215)
!1276 = !DILocation(line: 123, column: 6, scope: !1215)
!1277 = !DILocation(line: 123, column: 36, scope: !1215)
!1278 = !DILocation(line: 123, column: 43, scope: !1215)
!1279 = !DILocation(line: 123, column: 30, scope: !1215)
!1280 = !DILocation(line: 124, column: 9, scope: !1215)
!1281 = !DILocation(line: 124, column: 2, scope: !1215)
!1282 = !DILocation(line: 124, column: 7, scope: !1215)
!1283 = !DILocation(line: 127, column: 25, scope: !1215)
!1284 = !DILocation(line: 127, column: 6, scope: !1215)
!1285 = !DILocation(line: 127, column: 36, scope: !1215)
!1286 = !DILocation(line: 127, column: 43, scope: !1215)
!1287 = !DILocation(line: 127, column: 30, scope: !1215)
!1288 = !DILocation(line: 127, column: 53, scope: !1215)
!1289 = !DILocation(line: 127, column: 50, scope: !1215)
!1290 = !DILocation(line: 127, column: 48, scope: !1215)
!1291 = !DILocation(line: 127, column: 62, scope: !1215)
!1292 = !DILocation(line: 127, column: 60, scope: !1215)
!1293 = !DILocation(line: 128, column: 9, scope: !1215)
!1294 = !DILocation(line: 128, column: 2, scope: !1215)
!1295 = !DILocation(line: 128, column: 7, scope: !1215)
!1296 = !DILocation(line: 129, column: 19, scope: !1215)
!1297 = !DILocation(line: 129, column: 6, scope: !1215)
!1298 = !DILocation(line: 134, column: 25, scope: !1215)
!1299 = !DILocation(line: 134, column: 6, scope: !1215)
!1300 = !DILocation(line: 134, column: 32, scope: !1215)
!1301 = !DILocation(line: 134, column: 30, scope: !1215)
!1302 = !DILocation(line: 135, column: 9, scope: !1215)
!1303 = !DILocation(line: 135, column: 2, scope: !1215)
!1304 = !DILocation(line: 135, column: 7, scope: !1215)
!1305 = !DILocation(line: 136, column: 25, scope: !1215)
!1306 = !DILocation(line: 136, column: 6, scope: !1215)
!1307 = !DILocation(line: 136, column: 35, scope: !1215)
!1308 = !DILocation(line: 136, column: 30, scope: !1215)
!1309 = !DILocation(line: 136, column: 47, scope: !1215)
!1310 = !DILocation(line: 136, column: 44, scope: !1215)
!1311 = !DILocation(line: 136, column: 42, scope: !1215)
!1312 = !DILocation(line: 137, column: 9, scope: !1215)
!1313 = !DILocation(line: 137, column: 2, scope: !1215)
!1314 = !DILocation(line: 137, column: 7, scope: !1215)
!1315 = !DILocation(line: 138, column: 25, scope: !1215)
!1316 = !DILocation(line: 138, column: 6, scope: !1215)
!1317 = !DILocation(line: 138, column: 36, scope: !1215)
!1318 = !DILocation(line: 138, column: 43, scope: !1215)
!1319 = !DILocation(line: 138, column: 30, scope: !1215)
!1320 = !DILocation(line: 139, column: 9, scope: !1215)
!1321 = !DILocation(line: 139, column: 2, scope: !1215)
!1322 = !DILocation(line: 139, column: 7, scope: !1215)
!1323 = !DILocation(line: 140, column: 13, scope: !1215)
!1324 = !DILocation(line: 140, column: 20, scope: !1215)
!1325 = !DILocation(line: 140, column: 40, scope: !1215)
!1326 = !DILocation(line: 140, column: 47, scope: !1215)
!1327 = !DILocation(line: 140, column: 26, scope: !1215)
!1328 = !DILocation(line: 140, column: 24, scope: !1215)
!1329 = !DILocation(line: 140, column: 2, scope: !1215)
!1330 = !DILocation(line: 140, column: 7, scope: !1215)
!1331 = !DILocation(line: 172, column: 1, scope: !1215)
!1332 = distinct !DISubprogram(name: "f256_sub", scope: !3, file: !3, line: 178, type: !976, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1333 = !DILocalVariable(name: "d", arg: 1, scope: !1332, file: !3, line: 178, type: !38)
!1334 = !DILocation(line: 0, scope: !1332)
!1335 = !DILocalVariable(name: "a", arg: 2, scope: !1332, file: !3, line: 178, type: !39)
!1336 = !DILocalVariable(name: "b", arg: 3, scope: !1332, file: !3, line: 178, type: !39)
!1337 = !DILocation(line: 185, column: 25, scope: !1332)
!1338 = !DILocation(line: 185, column: 6, scope: !1332)
!1339 = !DILocation(line: 185, column: 32, scope: !1332)
!1340 = !DILocation(line: 185, column: 30, scope: !1332)
!1341 = !DILocalVariable(name: "w", scope: !1332, file: !3, line: 182, type: !18)
!1342 = !DILocation(line: 186, column: 9, scope: !1332)
!1343 = !DILocation(line: 186, column: 2, scope: !1332)
!1344 = !DILocation(line: 186, column: 7, scope: !1332)
!1345 = !DILocation(line: 187, column: 25, scope: !1332)
!1346 = !DILocation(line: 187, column: 6, scope: !1332)
!1347 = !DILocation(line: 187, column: 32, scope: !1332)
!1348 = !DILocation(line: 187, column: 30, scope: !1332)
!1349 = !DILocation(line: 187, column: 43, scope: !1332)
!1350 = !DILocation(line: 187, column: 50, scope: !1332)
!1351 = !DILocation(line: 187, column: 37, scope: !1332)
!1352 = !DILocation(line: 188, column: 9, scope: !1332)
!1353 = !DILocation(line: 188, column: 2, scope: !1332)
!1354 = !DILocation(line: 188, column: 7, scope: !1332)
!1355 = !DILocation(line: 189, column: 25, scope: !1332)
!1356 = !DILocation(line: 189, column: 6, scope: !1332)
!1357 = !DILocation(line: 189, column: 32, scope: !1332)
!1358 = !DILocation(line: 189, column: 30, scope: !1332)
!1359 = !DILocation(line: 189, column: 43, scope: !1332)
!1360 = !DILocation(line: 189, column: 50, scope: !1332)
!1361 = !DILocation(line: 189, column: 37, scope: !1332)
!1362 = !DILocation(line: 190, column: 9, scope: !1332)
!1363 = !DILocation(line: 190, column: 2, scope: !1332)
!1364 = !DILocation(line: 190, column: 7, scope: !1332)
!1365 = !DILocation(line: 191, column: 25, scope: !1332)
!1366 = !DILocation(line: 191, column: 6, scope: !1332)
!1367 = !DILocation(line: 191, column: 32, scope: !1332)
!1368 = !DILocation(line: 191, column: 30, scope: !1332)
!1369 = !DILocation(line: 191, column: 43, scope: !1332)
!1370 = !DILocation(line: 191, column: 50, scope: !1332)
!1371 = !DILocation(line: 191, column: 37, scope: !1332)
!1372 = !DILocation(line: 192, column: 9, scope: !1332)
!1373 = !DILocation(line: 192, column: 2, scope: !1332)
!1374 = !DILocation(line: 192, column: 7, scope: !1332)
!1375 = !DILocation(line: 193, column: 19, scope: !1332)
!1376 = !DILocation(line: 193, column: 6, scope: !1332)
!1377 = !DILocation(line: 193, column: 26, scope: !1332)
!1378 = !DILocalVariable(name: "t", scope: !1332, file: !3, line: 183, type: !15)
!1379 = !DILocation(line: 199, column: 25, scope: !1332)
!1380 = !DILocation(line: 199, column: 6, scope: !1332)
!1381 = !DILocation(line: 199, column: 32, scope: !1332)
!1382 = !DILocation(line: 199, column: 30, scope: !1332)
!1383 = !DILocation(line: 200, column: 9, scope: !1332)
!1384 = !DILocation(line: 200, column: 2, scope: !1332)
!1385 = !DILocation(line: 200, column: 7, scope: !1332)
!1386 = !DILocation(line: 201, column: 25, scope: !1332)
!1387 = !DILocation(line: 201, column: 6, scope: !1332)
!1388 = !DILocation(line: 201, column: 35, scope: !1332)
!1389 = !DILocation(line: 201, column: 32, scope: !1332)
!1390 = !DILocation(line: 201, column: 30, scope: !1332)
!1391 = !DILocation(line: 201, column: 48, scope: !1332)
!1392 = !DILocation(line: 201, column: 55, scope: !1332)
!1393 = !DILocation(line: 201, column: 42, scope: !1332)
!1394 = !DILocation(line: 202, column: 9, scope: !1332)
!1395 = !DILocation(line: 202, column: 2, scope: !1332)
!1396 = !DILocation(line: 202, column: 7, scope: !1332)
!1397 = !DILocation(line: 204, column: 25, scope: !1332)
!1398 = !DILocation(line: 204, column: 6, scope: !1332)
!1399 = !DILocation(line: 204, column: 35, scope: !1332)
!1400 = !DILocation(line: 204, column: 30, scope: !1332)
!1401 = !DILocation(line: 205, column: 9, scope: !1332)
!1402 = !DILocation(line: 205, column: 2, scope: !1332)
!1403 = !DILocation(line: 205, column: 7, scope: !1332)
!1404 = !DILocation(line: 207, column: 25, scope: !1332)
!1405 = !DILocation(line: 207, column: 6, scope: !1332)
!1406 = !DILocation(line: 207, column: 35, scope: !1332)
!1407 = !DILocation(line: 207, column: 30, scope: !1332)
!1408 = !DILocation(line: 207, column: 47, scope: !1332)
!1409 = !DILocation(line: 207, column: 44, scope: !1332)
!1410 = !DILocation(line: 207, column: 42, scope: !1332)
!1411 = !DILocation(line: 207, column: 56, scope: !1332)
!1412 = !DILocation(line: 207, column: 54, scope: !1332)
!1413 = !DILocation(line: 208, column: 9, scope: !1332)
!1414 = !DILocation(line: 208, column: 2, scope: !1332)
!1415 = !DILocation(line: 208, column: 7, scope: !1332)
!1416 = !DILocation(line: 209, column: 19, scope: !1332)
!1417 = !DILocation(line: 209, column: 6, scope: !1332)
!1418 = !DILocation(line: 209, column: 26, scope: !1332)
!1419 = !DILocation(line: 215, column: 25, scope: !1332)
!1420 = !DILocation(line: 215, column: 6, scope: !1332)
!1421 = !DILocation(line: 215, column: 32, scope: !1332)
!1422 = !DILocation(line: 215, column: 30, scope: !1332)
!1423 = !DILocation(line: 216, column: 9, scope: !1332)
!1424 = !DILocation(line: 216, column: 2, scope: !1332)
!1425 = !DILocation(line: 216, column: 7, scope: !1332)
!1426 = !DILocation(line: 217, column: 25, scope: !1332)
!1427 = !DILocation(line: 217, column: 6, scope: !1332)
!1428 = !DILocation(line: 217, column: 35, scope: !1332)
!1429 = !DILocation(line: 217, column: 32, scope: !1332)
!1430 = !DILocation(line: 217, column: 30, scope: !1332)
!1431 = !DILocation(line: 217, column: 48, scope: !1332)
!1432 = !DILocation(line: 217, column: 55, scope: !1332)
!1433 = !DILocation(line: 217, column: 42, scope: !1332)
!1434 = !DILocation(line: 218, column: 9, scope: !1332)
!1435 = !DILocation(line: 218, column: 2, scope: !1332)
!1436 = !DILocation(line: 218, column: 7, scope: !1332)
!1437 = !DILocation(line: 219, column: 25, scope: !1332)
!1438 = !DILocation(line: 219, column: 6, scope: !1332)
!1439 = !DILocation(line: 219, column: 35, scope: !1332)
!1440 = !DILocation(line: 219, column: 30, scope: !1332)
!1441 = !DILocation(line: 220, column: 9, scope: !1332)
!1442 = !DILocation(line: 220, column: 2, scope: !1332)
!1443 = !DILocation(line: 220, column: 7, scope: !1332)
!1444 = !DILocation(line: 221, column: 23, scope: !1332)
!1445 = !DILocation(line: 221, column: 10, scope: !1332)
!1446 = !DILocation(line: 221, column: 35, scope: !1332)
!1447 = !DILocation(line: 221, column: 30, scope: !1332)
!1448 = !DILocation(line: 221, column: 42, scope: !1332)
!1449 = !DILocation(line: 221, column: 2, scope: !1332)
!1450 = !DILocation(line: 221, column: 7, scope: !1332)
!1451 = !DILocation(line: 253, column: 1, scope: !1332)
!1452 = distinct !DISubprogram(name: "NOT", scope: !187, file: !187, line: 761, type: !1453, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!11, !11}
!1455 = !DILocalVariable(name: "ctl", arg: 1, scope: !1452, file: !187, line: 761, type: !11)
!1456 = !DILocation(line: 0, scope: !1452)
!1457 = !DILocation(line: 763, column: 13, scope: !1452)
!1458 = !DILocation(line: 763, column: 2, scope: !1452)
!1459 = distinct !DISubprogram(name: "point_mul_inner", scope: !3, file: !3, line: 1269, type: !1460, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !326, !1462, !73, !75}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!1463 = !DILocalVariable(name: "R", arg: 1, scope: !1459, file: !3, line: 1269, type: !326)
!1464 = !DILocation(line: 0, scope: !1459)
!1465 = !DILocalVariable(name: "W", arg: 2, scope: !1459, file: !3, line: 1269, type: !1462)
!1466 = !DILocalVariable(name: "k", arg: 3, scope: !1459, file: !3, line: 1270, type: !73)
!1467 = !DILocalVariable(name: "klen", arg: 4, scope: !1459, file: !3, line: 1270, type: !75)
!1468 = !DILocalVariable(name: "Q", scope: !1459, file: !3, line: 1272, type: !225)
!1469 = !DILocation(line: 1272, column: 16, scope: !1459)
!1470 = !DILocation(line: 1275, column: 2, scope: !1459)
!1471 = !DILocalVariable(name: "qz", scope: !1459, file: !3, line: 1273, type: !11)
!1472 = !DILocation(line: 1277, column: 2, scope: !1459)
!1473 = !DILocation(line: 1276, column: 5, scope: !1459)
!1474 = !DILocation(line: 1277, column: 14, scope: !1459)
!1475 = !DILocation(line: 1277, column: 17, scope: !1459)
!1476 = !DILocation(line: 1281, column: 11, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 1277, column: 22)
!1478 = !DILocation(line: 1281, column: 8, scope: !1477)
!1479 = !DILocalVariable(name: "bk", scope: !1477, file: !3, line: 1279, type: !14)
!1480 = !DILocation(line: 0, scope: !1477)
!1481 = !DILocalVariable(name: "i", scope: !1477, file: !3, line: 1278, type: !10)
!1482 = !DILocation(line: 1282, column: 8, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1282, column: 3)
!1484 = !DILocation(line: 0, scope: !1483)
!1485 = !DILocation(line: 1282, column: 17, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 1282, column: 3)
!1487 = !DILocation(line: 1282, column: 3, scope: !1483)
!1488 = !DILocalVariable(name: "T", scope: !1489, file: !3, line: 1285, type: !55)
!1489 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1282, column: 28)
!1490 = !DILocation(line: 1285, column: 16, scope: !1489)
!1491 = !DILocalVariable(name: "U", scope: !1489, file: !3, line: 1286, type: !225)
!1492 = !DILocation(line: 1286, column: 18, scope: !1489)
!1493 = !DILocation(line: 1291, column: 4, scope: !1489)
!1494 = !DILocation(line: 1292, column: 4, scope: !1489)
!1495 = !DILocation(line: 1293, column: 4, scope: !1489)
!1496 = !DILocation(line: 1294, column: 4, scope: !1489)
!1497 = !DILocation(line: 1295, column: 15, scope: !1489)
!1498 = !DILocation(line: 1295, column: 21, scope: !1489)
!1499 = !DILocalVariable(name: "bits", scope: !1489, file: !3, line: 1283, type: !11)
!1500 = !DILocation(line: 0, scope: !1489)
!1501 = !DILocation(line: 1296, column: 10, scope: !1489)
!1502 = !DILocalVariable(name: "bnz", scope: !1489, file: !3, line: 1284, type: !11)
!1503 = !DILocation(line: 1304, column: 4, scope: !1489)
!1504 = !DILocalVariable(name: "n", scope: !1489, file: !3, line: 1287, type: !11)
!1505 = !DILocation(line: 1305, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 1305, column: 4)
!1507 = !DILocation(line: 0, scope: !1506)
!1508 = !DILocation(line: 1305, column: 18, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 1305, column: 4)
!1510 = !DILocation(line: 1305, column: 4, scope: !1506)
!1511 = !DILocation(line: 1306, column: 31, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 1305, column: 30)
!1513 = !DILocation(line: 1306, column: 20, scope: !1512)
!1514 = !DILocation(line: 1306, column: 10, scope: !1512)
!1515 = !DILocation(line: 1306, column: 9, scope: !1512)
!1516 = !DILocalVariable(name: "m", scope: !1489, file: !3, line: 1289, type: !15)
!1517 = !DILocation(line: 1307, column: 19, scope: !1512)
!1518 = !DILocation(line: 1307, column: 24, scope: !1512)
!1519 = !DILocation(line: 1307, column: 17, scope: !1512)
!1520 = !DILocation(line: 1307, column: 7, scope: !1512)
!1521 = !DILocation(line: 1307, column: 5, scope: !1512)
!1522 = !DILocation(line: 1307, column: 12, scope: !1512)
!1523 = !DILocation(line: 1308, column: 19, scope: !1512)
!1524 = !DILocation(line: 1308, column: 24, scope: !1512)
!1525 = !DILocation(line: 1308, column: 17, scope: !1512)
!1526 = !DILocation(line: 1308, column: 7, scope: !1512)
!1527 = !DILocation(line: 1308, column: 5, scope: !1512)
!1528 = !DILocation(line: 1308, column: 12, scope: !1512)
!1529 = !DILocation(line: 1309, column: 19, scope: !1512)
!1530 = !DILocation(line: 1309, column: 24, scope: !1512)
!1531 = !DILocation(line: 1309, column: 17, scope: !1512)
!1532 = !DILocation(line: 1309, column: 7, scope: !1512)
!1533 = !DILocation(line: 1309, column: 5, scope: !1512)
!1534 = !DILocation(line: 1309, column: 12, scope: !1512)
!1535 = !DILocation(line: 1310, column: 19, scope: !1512)
!1536 = !DILocation(line: 1310, column: 24, scope: !1512)
!1537 = !DILocation(line: 1310, column: 17, scope: !1512)
!1538 = !DILocation(line: 1310, column: 7, scope: !1512)
!1539 = !DILocation(line: 1310, column: 5, scope: !1512)
!1540 = !DILocation(line: 1310, column: 12, scope: !1512)
!1541 = !DILocation(line: 1311, column: 19, scope: !1512)
!1542 = !DILocation(line: 1311, column: 24, scope: !1512)
!1543 = !DILocation(line: 1311, column: 17, scope: !1512)
!1544 = !DILocation(line: 1311, column: 7, scope: !1512)
!1545 = !DILocation(line: 1311, column: 5, scope: !1512)
!1546 = !DILocation(line: 1311, column: 12, scope: !1512)
!1547 = !DILocation(line: 1312, column: 19, scope: !1512)
!1548 = !DILocation(line: 1312, column: 24, scope: !1512)
!1549 = !DILocation(line: 1312, column: 17, scope: !1512)
!1550 = !DILocation(line: 1312, column: 7, scope: !1512)
!1551 = !DILocation(line: 1312, column: 5, scope: !1512)
!1552 = !DILocation(line: 1312, column: 12, scope: !1512)
!1553 = !DILocation(line: 1313, column: 19, scope: !1512)
!1554 = !DILocation(line: 1313, column: 24, scope: !1512)
!1555 = !DILocation(line: 1313, column: 17, scope: !1512)
!1556 = !DILocation(line: 1313, column: 7, scope: !1512)
!1557 = !DILocation(line: 1313, column: 5, scope: !1512)
!1558 = !DILocation(line: 1313, column: 12, scope: !1512)
!1559 = !DILocation(line: 1314, column: 19, scope: !1512)
!1560 = !DILocation(line: 1314, column: 24, scope: !1512)
!1561 = !DILocation(line: 1314, column: 17, scope: !1512)
!1562 = !DILocation(line: 1314, column: 7, scope: !1512)
!1563 = !DILocation(line: 1314, column: 5, scope: !1512)
!1564 = !DILocation(line: 1314, column: 12, scope: !1512)
!1565 = !DILocation(line: 1315, column: 4, scope: !1512)
!1566 = !DILocation(line: 1305, column: 26, scope: !1509)
!1567 = !DILocation(line: 1305, column: 4, scope: !1509)
!1568 = distinct !{!1568, !1510, !1569, !184}
!1569 = !DILocation(line: 1315, column: 4, scope: !1506)
!1570 = !DILocation(line: 1317, column: 8, scope: !1489)
!1571 = !DILocation(line: 1318, column: 4, scope: !1489)
!1572 = !DILocation(line: 1324, column: 24, scope: !1489)
!1573 = !DILocation(line: 1324, column: 9, scope: !1489)
!1574 = !DILocation(line: 1324, column: 8, scope: !1489)
!1575 = !DILocalVariable(name: "j", scope: !1489, file: !3, line: 1288, type: !10)
!1576 = !DILocation(line: 1325, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 1325, column: 4)
!1578 = !DILocation(line: 0, scope: !1577)
!1579 = !DILocation(line: 1325, column: 18, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 1325, column: 4)
!1581 = !DILocation(line: 1325, column: 4, scope: !1577)
!1582 = !DILocation(line: 1326, column: 21, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1325, column: 29)
!1584 = !DILocation(line: 1326, column: 19, scope: !1583)
!1585 = !DILocation(line: 1326, column: 17, scope: !1583)
!1586 = !DILocation(line: 1326, column: 7, scope: !1583)
!1587 = !DILocation(line: 1326, column: 5, scope: !1583)
!1588 = !DILocation(line: 1326, column: 12, scope: !1583)
!1589 = !DILocation(line: 1327, column: 21, scope: !1583)
!1590 = !DILocation(line: 1327, column: 19, scope: !1583)
!1591 = !DILocation(line: 1327, column: 17, scope: !1583)
!1592 = !DILocation(line: 1327, column: 7, scope: !1583)
!1593 = !DILocation(line: 1327, column: 5, scope: !1583)
!1594 = !DILocation(line: 1327, column: 12, scope: !1583)
!1595 = !DILocation(line: 1328, column: 19, scope: !1583)
!1596 = !DILocation(line: 1328, column: 17, scope: !1583)
!1597 = !DILocation(line: 1328, column: 7, scope: !1583)
!1598 = !DILocation(line: 1328, column: 5, scope: !1583)
!1599 = !DILocation(line: 1328, column: 12, scope: !1583)
!1600 = !DILocation(line: 1329, column: 4, scope: !1583)
!1601 = !DILocation(line: 1325, column: 25, scope: !1580)
!1602 = !DILocation(line: 1325, column: 4, scope: !1580)
!1603 = distinct !{!1603, !1581, !1604, !184}
!1604 = !DILocation(line: 1329, column: 4, scope: !1577)
!1605 = !DILocation(line: 1330, column: 16, scope: !1489)
!1606 = !DILocation(line: 1330, column: 14, scope: !1489)
!1607 = !DILocation(line: 1330, column: 21, scope: !1489)
!1608 = !DILocation(line: 1330, column: 25, scope: !1489)
!1609 = !DILocation(line: 1330, column: 4, scope: !1489)
!1610 = !DILocation(line: 1331, column: 10, scope: !1489)
!1611 = !DILocation(line: 1331, column: 7, scope: !1489)
!1612 = !DILocation(line: 1332, column: 7, scope: !1489)
!1613 = !DILocation(line: 1333, column: 3, scope: !1489)
!1614 = !DILocation(line: 1282, column: 24, scope: !1486)
!1615 = !DILocation(line: 1282, column: 3, scope: !1486)
!1616 = distinct !{!1616, !1487, !1617, !184}
!1617 = !DILocation(line: 1333, column: 3, scope: !1483)
!1618 = distinct !{!1618, !1472, !1619, !184}
!1619 = !DILocation(line: 1334, column: 2, scope: !1459)
!1620 = !DILocation(line: 1335, column: 7, scope: !1459)
!1621 = !DILocation(line: 1336, column: 1, scope: !1459)
!1622 = distinct !DISubprogram(name: "p256_add_mixed", scope: !3, file: !3, line: 996, type: !1623, scopeLine: 997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!11, !326, !1462}
!1625 = !DILocalVariable(name: "P1", arg: 1, scope: !1622, file: !3, line: 996, type: !326)
!1626 = !DILocation(line: 0, scope: !1622)
!1627 = !DILocalVariable(name: "P2", arg: 2, scope: !1622, file: !3, line: 996, type: !1462)
!1628 = !DILocalVariable(name: "t1", scope: !1622, file: !3, line: 1011, type: !59)
!1629 = !DILocation(line: 1011, column: 11, scope: !1622)
!1630 = !DILocalVariable(name: "t2", scope: !1622, file: !3, line: 1011, type: !59)
!1631 = !DILocation(line: 1011, column: 18, scope: !1622)
!1632 = !DILocalVariable(name: "t3", scope: !1622, file: !3, line: 1011, type: !59)
!1633 = !DILocation(line: 1011, column: 25, scope: !1622)
!1634 = !DILocalVariable(name: "t4", scope: !1622, file: !3, line: 1011, type: !59)
!1635 = !DILocation(line: 1011, column: 32, scope: !1622)
!1636 = !DILocalVariable(name: "t5", scope: !1622, file: !3, line: 1011, type: !59)
!1637 = !DILocation(line: 1011, column: 39, scope: !1622)
!1638 = !DILocalVariable(name: "t6", scope: !1622, file: !3, line: 1011, type: !59)
!1639 = !DILocation(line: 1011, column: 46, scope: !1622)
!1640 = !DILocalVariable(name: "t7", scope: !1622, file: !3, line: 1011, type: !59)
!1641 = !DILocation(line: 1011, column: 53, scope: !1622)
!1642 = !DILocation(line: 1017, column: 2, scope: !1622)
!1643 = !DILocation(line: 1017, column: 17, scope: !1622)
!1644 = !DILocation(line: 1018, column: 2, scope: !1622)
!1645 = !DILocation(line: 1018, column: 17, scope: !1622)
!1646 = !DILocation(line: 1023, column: 19, scope: !1622)
!1647 = !DILocation(line: 1023, column: 27, scope: !1622)
!1648 = !DILocation(line: 1023, column: 23, scope: !1622)
!1649 = !DILocation(line: 1023, column: 2, scope: !1622)
!1650 = !DILocation(line: 1024, column: 16, scope: !1622)
!1651 = !DILocation(line: 1024, column: 24, scope: !1622)
!1652 = !DILocation(line: 1024, column: 20, scope: !1622)
!1653 = !DILocation(line: 1024, column: 27, scope: !1622)
!1654 = !DILocation(line: 1024, column: 2, scope: !1622)
!1655 = !DILocation(line: 1025, column: 16, scope: !1622)
!1656 = !DILocation(line: 1025, column: 24, scope: !1622)
!1657 = !DILocation(line: 1025, column: 20, scope: !1622)
!1658 = !DILocation(line: 1025, column: 27, scope: !1622)
!1659 = !DILocation(line: 1025, column: 2, scope: !1622)
!1660 = !DILocation(line: 1026, column: 16, scope: !1622)
!1661 = !DILocation(line: 1026, column: 24, scope: !1622)
!1662 = !DILocation(line: 1026, column: 20, scope: !1622)
!1663 = !DILocation(line: 1026, column: 27, scope: !1622)
!1664 = !DILocation(line: 1026, column: 2, scope: !1622)
!1665 = !DILocation(line: 1033, column: 11, scope: !1622)
!1666 = !DILocation(line: 1033, column: 15, scope: !1622)
!1667 = !DILocation(line: 1033, column: 19, scope: !1622)
!1668 = !DILocation(line: 1033, column: 2, scope: !1622)
!1669 = !DILocation(line: 1034, column: 11, scope: !1622)
!1670 = !DILocation(line: 1034, column: 15, scope: !1622)
!1671 = !DILocation(line: 1034, column: 19, scope: !1622)
!1672 = !DILocation(line: 1034, column: 2, scope: !1622)
!1673 = !DILocation(line: 1035, column: 20, scope: !1622)
!1674 = !DILocation(line: 1035, column: 2, scope: !1622)
!1675 = !DILocation(line: 1036, column: 7, scope: !1622)
!1676 = !DILocation(line: 1036, column: 15, scope: !1622)
!1677 = !DILocation(line: 1036, column: 13, scope: !1622)
!1678 = !DILocation(line: 1036, column: 23, scope: !1622)
!1679 = !DILocation(line: 1036, column: 21, scope: !1622)
!1680 = !DILocation(line: 1036, column: 31, scope: !1622)
!1681 = !DILocation(line: 1036, column: 29, scope: !1622)
!1682 = !DILocalVariable(name: "tt", scope: !1622, file: !3, line: 1011, type: !15)
!1683 = !DILocation(line: 1037, column: 28, scope: !1622)
!1684 = !DILocation(line: 1037, column: 22, scope: !1622)
!1685 = !DILocation(line: 1037, column: 8, scope: !1622)
!1686 = !DILocalVariable(name: "ret", scope: !1622, file: !3, line: 1012, type: !11)
!1687 = !DILocation(line: 1038, column: 15, scope: !1622)
!1688 = !DILocation(line: 1038, column: 13, scope: !1622)
!1689 = !DILocation(line: 1038, column: 21, scope: !1622)
!1690 = !DILocation(line: 1043, column: 19, scope: !1622)
!1691 = !DILocation(line: 1043, column: 23, scope: !1622)
!1692 = !DILocation(line: 1043, column: 2, scope: !1622)
!1693 = !DILocation(line: 1044, column: 16, scope: !1622)
!1694 = !DILocation(line: 1044, column: 20, scope: !1622)
!1695 = !DILocation(line: 1044, column: 24, scope: !1622)
!1696 = !DILocation(line: 1044, column: 2, scope: !1622)
!1697 = !DILocation(line: 1045, column: 16, scope: !1622)
!1698 = !DILocation(line: 1045, column: 20, scope: !1622)
!1699 = !DILocation(line: 1045, column: 24, scope: !1622)
!1700 = !DILocation(line: 1045, column: 2, scope: !1622)
!1701 = !DILocation(line: 1050, column: 23, scope: !1622)
!1702 = !DILocation(line: 1050, column: 19, scope: !1622)
!1703 = !DILocation(line: 1050, column: 26, scope: !1622)
!1704 = !DILocation(line: 1050, column: 2, scope: !1622)
!1705 = !DILocation(line: 1051, column: 15, scope: !1622)
!1706 = !DILocation(line: 1051, column: 11, scope: !1622)
!1707 = !DILocation(line: 1051, column: 22, scope: !1622)
!1708 = !DILocation(line: 1051, column: 18, scope: !1622)
!1709 = !DILocation(line: 1051, column: 25, scope: !1622)
!1710 = !DILocation(line: 1051, column: 2, scope: !1622)
!1711 = !DILocation(line: 1052, column: 15, scope: !1622)
!1712 = !DILocation(line: 1052, column: 11, scope: !1622)
!1713 = !DILocation(line: 1052, column: 22, scope: !1622)
!1714 = !DILocation(line: 1052, column: 18, scope: !1622)
!1715 = !DILocation(line: 1052, column: 25, scope: !1622)
!1716 = !DILocation(line: 1052, column: 2, scope: !1622)
!1717 = !DILocation(line: 1053, column: 15, scope: !1622)
!1718 = !DILocation(line: 1053, column: 11, scope: !1622)
!1719 = !DILocation(line: 1053, column: 22, scope: !1622)
!1720 = !DILocation(line: 1053, column: 18, scope: !1622)
!1721 = !DILocation(line: 1053, column: 25, scope: !1622)
!1722 = !DILocation(line: 1053, column: 2, scope: !1622)
!1723 = !DILocation(line: 1058, column: 11, scope: !1622)
!1724 = !DILocation(line: 1058, column: 15, scope: !1622)
!1725 = !DILocation(line: 1058, column: 23, scope: !1622)
!1726 = !DILocation(line: 1058, column: 19, scope: !1622)
!1727 = !DILocation(line: 1058, column: 2, scope: !1622)
!1728 = !DILocation(line: 1059, column: 20, scope: !1622)
!1729 = !DILocation(line: 1059, column: 16, scope: !1622)
!1730 = !DILocation(line: 1059, column: 23, scope: !1622)
!1731 = !DILocation(line: 1059, column: 27, scope: !1622)
!1732 = !DILocation(line: 1059, column: 2, scope: !1622)
!1733 = !DILocation(line: 1060, column: 16, scope: !1622)
!1734 = !DILocation(line: 1060, column: 20, scope: !1622)
!1735 = !DILocation(line: 1060, column: 24, scope: !1622)
!1736 = !DILocation(line: 1060, column: 2, scope: !1622)
!1737 = !DILocation(line: 1061, column: 15, scope: !1622)
!1738 = !DILocation(line: 1061, column: 11, scope: !1622)
!1739 = !DILocation(line: 1061, column: 22, scope: !1622)
!1740 = !DILocation(line: 1061, column: 18, scope: !1622)
!1741 = !DILocation(line: 1061, column: 25, scope: !1622)
!1742 = !DILocation(line: 1061, column: 2, scope: !1622)
!1743 = !DILocation(line: 1066, column: 20, scope: !1622)
!1744 = !DILocation(line: 1066, column: 16, scope: !1622)
!1745 = !DILocation(line: 1066, column: 27, scope: !1622)
!1746 = !DILocation(line: 1066, column: 23, scope: !1622)
!1747 = !DILocation(line: 1066, column: 30, scope: !1622)
!1748 = !DILocation(line: 1066, column: 2, scope: !1622)
!1749 = !DILocation(line: 1068, column: 2, scope: !1622)
!1750 = distinct !DISubprogram(name: "window_to_affine", scope: !3, file: !3, line: 1349, type: !1751, scopeLine: 1350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1753, !326, !10}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!1754 = !DILocalVariable(name: "aff", arg: 1, scope: !1750, file: !3, line: 1349, type: !1753)
!1755 = !DILocation(line: 0, scope: !1750)
!1756 = !DILocalVariable(name: "jac", arg: 2, scope: !1750, file: !3, line: 1349, type: !326)
!1757 = !DILocalVariable(name: "num", arg: 3, scope: !1750, file: !3, line: 1349, type: !10)
!1758 = !DILocalVariable(name: "z", scope: !1750, file: !3, line: 1406, type: !1759)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 4096, elements: !1760)
!1760 = !{!1761, !43}
!1761 = !DISubrange(count: 16)
!1762 = !DILocation(line: 1406, column: 11, scope: !1750)
!1763 = !DILocalVariable(name: "i", scope: !1750, file: !3, line: 1407, type: !10)
!1764 = !DILocation(line: 1417, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 1417, column: 2)
!1766 = !DILocation(line: 0, scope: !1765)
!1767 = !DILocation(line: 1417, column: 17, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1417, column: 2)
!1769 = !DILocation(line: 1417, column: 22, scope: !1768)
!1770 = !DILocation(line: 1417, column: 2, scope: !1765)
!1771 = !DILocation(line: 1418, column: 10, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 1417, column: 37)
!1773 = !DILocation(line: 1418, column: 3, scope: !1772)
!1774 = !DILocation(line: 1418, column: 14, scope: !1772)
!1775 = !DILocation(line: 1418, column: 21, scope: !1772)
!1776 = !DILocation(line: 1419, column: 10, scope: !1772)
!1777 = !DILocation(line: 1419, column: 17, scope: !1772)
!1778 = !DILocation(line: 1419, column: 3, scope: !1772)
!1779 = !DILocation(line: 1419, column: 26, scope: !1772)
!1780 = !DILocation(line: 1419, column: 20, scope: !1772)
!1781 = !DILocation(line: 1419, column: 31, scope: !1772)
!1782 = !DILocation(line: 1420, column: 16, scope: !1772)
!1783 = !DILocation(line: 1420, column: 10, scope: !1772)
!1784 = !DILocation(line: 1420, column: 21, scope: !1772)
!1785 = !DILocation(line: 1420, column: 3, scope: !1772)
!1786 = !DILocation(line: 1420, column: 24, scope: !1772)
!1787 = !DILocation(line: 1421, column: 21, scope: !1772)
!1788 = !DILocation(line: 1421, column: 17, scope: !1772)
!1789 = !DILocation(line: 1421, column: 28, scope: !1772)
!1790 = !DILocation(line: 1421, column: 35, scope: !1772)
!1791 = !DILocation(line: 1421, column: 44, scope: !1772)
!1792 = !DILocation(line: 1421, column: 38, scope: !1772)
!1793 = !DILocation(line: 1421, column: 49, scope: !1772)
!1794 = !DILocation(line: 1421, column: 3, scope: !1772)
!1795 = !DILocation(line: 1422, column: 2, scope: !1772)
!1796 = !DILocation(line: 1417, column: 31, scope: !1768)
!1797 = !DILocation(line: 1417, column: 2, scope: !1768)
!1798 = distinct !{!1798, !1770, !1799, !184}
!1799 = !DILocation(line: 1422, column: 2, scope: !1765)
!1800 = !DILocation(line: 1423, column: 11, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 1423, column: 6)
!1802 = !DILocation(line: 1423, column: 16, scope: !1801)
!1803 = !DILocation(line: 1423, column: 6, scope: !1750)
!1804 = !DILocation(line: 1424, column: 16, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 1423, column: 22)
!1806 = !DILocation(line: 1424, column: 10, scope: !1805)
!1807 = !DILocation(line: 1424, column: 3, scope: !1805)
!1808 = !DILocation(line: 1424, column: 31, scope: !1805)
!1809 = !DILocation(line: 1424, column: 23, scope: !1805)
!1810 = !DILocation(line: 1424, column: 36, scope: !1805)
!1811 = !DILocation(line: 1425, column: 18, scope: !1805)
!1812 = !DILocation(line: 1425, column: 10, scope: !1805)
!1813 = !DILocation(line: 1425, column: 23, scope: !1805)
!1814 = !DILocation(line: 1425, column: 3, scope: !1805)
!1815 = !DILocation(line: 1426, column: 2, scope: !1805)
!1816 = !DILocalVariable(name: "k", scope: !1750, file: !3, line: 1407, type: !10)
!1817 = !DILocalVariable(name: "s", scope: !1750, file: !3, line: 1407, type: !10)
!1818 = !DILocation(line: 1433, column: 7, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 1433, column: 2)
!1820 = !DILocation(line: 0, scope: !1819)
!1821 = !DILocation(line: 1433, column: 23, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 1433, column: 2)
!1823 = !DILocation(line: 1433, column: 2, scope: !1819)
!1824 = !DILocation(line: 1436, column: 8, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 1436, column: 3)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 1433, column: 45)
!1827 = !DILocation(line: 0, scope: !1825)
!1828 = !DILocation(line: 1436, column: 17, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 1436, column: 3)
!1830 = !DILocation(line: 1436, column: 3, scope: !1825)
!1831 = !DILocation(line: 1437, column: 18, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 1436, column: 30)
!1833 = !DILocation(line: 1437, column: 25, scope: !1832)
!1834 = !DILocation(line: 1437, column: 28, scope: !1832)
!1835 = !DILocation(line: 1437, column: 35, scope: !1832)
!1836 = !DILocation(line: 1437, column: 43, scope: !1832)
!1837 = !DILocation(line: 1437, column: 49, scope: !1832)
!1838 = !DILocation(line: 1437, column: 38, scope: !1832)
!1839 = !DILocation(line: 1437, column: 4, scope: !1832)
!1840 = !DILocation(line: 1438, column: 3, scope: !1832)
!1841 = !DILocation(line: 1436, column: 26, scope: !1829)
!1842 = !DILocation(line: 1436, column: 3, scope: !1829)
!1843 = distinct !{!1843, !1830, !1844, !184}
!1844 = !DILocation(line: 1438, column: 3, scope: !1825)
!1845 = !DILocation(line: 1439, column: 12, scope: !1826)
!1846 = !DILocation(line: 1439, column: 16, scope: !1826)
!1847 = !DILocation(line: 1439, column: 21, scope: !1826)
!1848 = !DILocalVariable(name: "n", scope: !1826, file: !3, line: 1434, type: !10)
!1849 = !DILocation(line: 0, scope: !1826)
!1850 = !DILocation(line: 1440, column: 8, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 1440, column: 3)
!1852 = !DILocation(line: 0, scope: !1851)
!1853 = !DILocation(line: 1440, column: 22, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 1440, column: 3)
!1855 = !DILocation(line: 1440, column: 17, scope: !1854)
!1856 = !DILocation(line: 1440, column: 3, scope: !1851)
!1857 = !DILocation(line: 1441, column: 18, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 1440, column: 35)
!1859 = !DILocation(line: 1441, column: 28, scope: !1858)
!1860 = !DILocation(line: 1441, column: 24, scope: !1858)
!1861 = !DILocation(line: 1441, column: 40, scope: !1858)
!1862 = !DILocation(line: 1441, column: 46, scope: !1858)
!1863 = !DILocation(line: 1441, column: 35, scope: !1858)
!1864 = !DILocation(line: 1441, column: 4, scope: !1858)
!1865 = !DILocation(line: 1442, column: 3, scope: !1858)
!1866 = !DILocation(line: 1440, column: 31, scope: !1854)
!1867 = !DILocation(line: 1440, column: 3, scope: !1854)
!1868 = distinct !{!1868, !1856, !1869, !184}
!1869 = !DILocation(line: 1442, column: 3, scope: !1851)
!1870 = !DILocation(line: 1443, column: 10, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 1443, column: 7)
!1872 = !DILocation(line: 1443, column: 15, scope: !1871)
!1873 = !DILocation(line: 1443, column: 7, scope: !1826)
!1874 = !DILocation(line: 1444, column: 16, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 1443, column: 21)
!1876 = !DILocation(line: 1444, column: 12, scope: !1875)
!1877 = !DILocation(line: 1444, column: 4, scope: !1875)
!1878 = !DILocation(line: 1444, column: 23, scope: !1875)
!1879 = !DILocation(line: 1445, column: 3, scope: !1875)
!1880 = !DILocation(line: 1446, column: 2, scope: !1826)
!1881 = !DILocation(line: 1433, column: 32, scope: !1822)
!1882 = !DILocation(line: 1433, column: 38, scope: !1822)
!1883 = !DILocation(line: 1433, column: 2, scope: !1822)
!1884 = distinct !{!1884, !1823, !1885, !184}
!1885 = !DILocation(line: 1446, column: 2, scope: !1819)
!1886 = !DILocation(line: 1451, column: 14, scope: !1750)
!1887 = !DILocation(line: 1451, column: 18, scope: !1750)
!1888 = !DILocation(line: 1451, column: 2, scope: !1750)
!1889 = !DILocation(line: 1452, column: 7, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 1452, column: 2)
!1891 = !DILocation(line: 0, scope: !1890)
!1892 = !DILocation(line: 1452, column: 16, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 1452, column: 2)
!1894 = !DILocation(line: 1452, column: 2, scope: !1890)
!1895 = !DILocation(line: 1453, column: 17, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 1452, column: 29)
!1897 = !DILocation(line: 1453, column: 21, scope: !1896)
!1898 = !DILocation(line: 1453, column: 28, scope: !1896)
!1899 = !DILocation(line: 1453, column: 31, scope: !1896)
!1900 = !DILocation(line: 1453, column: 3, scope: !1896)
!1901 = !DILocation(line: 1454, column: 20, scope: !1896)
!1902 = !DILocation(line: 1454, column: 24, scope: !1896)
!1903 = !DILocation(line: 1454, column: 3, scope: !1896)
!1904 = !DILocation(line: 1455, column: 17, scope: !1896)
!1905 = !DILocation(line: 1455, column: 21, scope: !1896)
!1906 = !DILocation(line: 1455, column: 25, scope: !1896)
!1907 = !DILocation(line: 1455, column: 3, scope: !1896)
!1908 = !DILocation(line: 1456, column: 17, scope: !1896)
!1909 = !DILocation(line: 1456, column: 24, scope: !1896)
!1910 = !DILocation(line: 1456, column: 27, scope: !1896)
!1911 = !DILocation(line: 1456, column: 34, scope: !1896)
!1912 = !DILocation(line: 1456, column: 37, scope: !1896)
!1913 = !DILocation(line: 1456, column: 3, scope: !1896)
!1914 = !DILocation(line: 1457, column: 17, scope: !1896)
!1915 = !DILocation(line: 1457, column: 24, scope: !1896)
!1916 = !DILocation(line: 1457, column: 27, scope: !1896)
!1917 = !DILocation(line: 1457, column: 34, scope: !1896)
!1918 = !DILocation(line: 1457, column: 37, scope: !1896)
!1919 = !DILocation(line: 1457, column: 3, scope: !1896)
!1920 = !DILocation(line: 1458, column: 2, scope: !1896)
!1921 = !DILocation(line: 1452, column: 25, scope: !1893)
!1922 = !DILocation(line: 1452, column: 2, scope: !1893)
!1923 = distinct !{!1923, !1894, !1924, !184}
!1924 = !DILocation(line: 1458, column: 2, scope: !1890)
!1925 = !DILocation(line: 1459, column: 1, scope: !1750)
!1926 = distinct !DISubprogram(name: "br_dec64be", scope: !187, file: !187, line: 648, type: !1927, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!15, !160}
!1929 = !DILocalVariable(name: "src", arg: 1, scope: !1926, file: !187, line: 648, type: !160)
!1930 = !DILocation(line: 0, scope: !1926)
!1931 = !DILocalVariable(name: "buf", scope: !1926, file: !187, line: 653, type: !73)
!1932 = !DILocation(line: 656, column: 20, scope: !1926)
!1933 = !DILocation(line: 656, column: 10, scope: !1926)
!1934 = !DILocation(line: 656, column: 36, scope: !1926)
!1935 = !DILocation(line: 657, column: 30, scope: !1926)
!1936 = !DILocation(line: 657, column: 15, scope: !1926)
!1937 = !DILocation(line: 657, column: 5, scope: !1926)
!1938 = !DILocation(line: 657, column: 3, scope: !1926)
!1939 = !DILocation(line: 656, column: 2, scope: !1926)
!1940 = !DILocalVariable(name: "d", arg: 1, scope: !35, file: !3, line: 508, type: !38)
!1941 = !DILocation(line: 0, scope: !35)
!1942 = !DILocalVariable(name: "a", arg: 2, scope: !35, file: !3, line: 508, type: !39)
!1943 = !DILocation(line: 523, column: 2, scope: !35)
!1944 = !DILocation(line: 524, column: 1, scope: !35)
!1945 = distinct !DISubprogram(name: "br_dec32be", scope: !187, file: !187, line: 590, type: !1946, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!11, !160}
!1948 = !DILocalVariable(name: "src", arg: 1, scope: !1945, file: !187, line: 590, type: !160)
!1949 = !DILocation(line: 0, scope: !1945)
!1950 = !DILocalVariable(name: "buf", scope: !1945, file: !187, line: 595, type: !73)
!1951 = !DILocation(line: 598, column: 20, scope: !1945)
!1952 = !DILocation(line: 598, column: 10, scope: !1945)
!1953 = !DILocation(line: 598, column: 27, scope: !1945)
!1954 = !DILocation(line: 599, column: 16, scope: !1945)
!1955 = !DILocation(line: 599, column: 6, scope: !1945)
!1956 = !DILocation(line: 599, column: 23, scope: !1945)
!1957 = !DILocation(line: 599, column: 3, scope: !1945)
!1958 = !DILocation(line: 600, column: 16, scope: !1945)
!1959 = !DILocation(line: 600, column: 6, scope: !1945)
!1960 = !DILocation(line: 600, column: 23, scope: !1945)
!1961 = !DILocation(line: 600, column: 3, scope: !1945)
!1962 = !DILocation(line: 601, column: 15, scope: !1945)
!1963 = !DILocation(line: 601, column: 5, scope: !1945)
!1964 = !DILocation(line: 601, column: 3, scope: !1945)
!1965 = !DILocation(line: 598, column: 2, scope: !1945)
!1966 = distinct !DISubprogram(name: "check_scalar", scope: !3, file: !3, line: 1626, type: !1967, scopeLine: 1627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!11, !73, !75}
!1969 = !DILocalVariable(name: "k", arg: 1, scope: !1966, file: !3, line: 1626, type: !73)
!1970 = !DILocation(line: 0, scope: !1966)
!1971 = !DILocalVariable(name: "klen", arg: 2, scope: !1966, file: !3, line: 1626, type: !75)
!1972 = !DILocation(line: 1632, column: 11, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 1632, column: 6)
!1974 = !DILocation(line: 1632, column: 6, scope: !1966)
!1975 = !DILocation(line: 1633, column: 3, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 1632, column: 17)
!1977 = !DILocalVariable(name: "z", scope: !1966, file: !3, line: 1628, type: !11)
!1978 = !DILocalVariable(name: "u", scope: !1966, file: !3, line: 1630, type: !75)
!1979 = !DILocation(line: 1636, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 1636, column: 2)
!1981 = !DILocation(line: 0, scope: !1980)
!1982 = !DILocation(line: 1636, column: 16, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 1636, column: 2)
!1984 = !DILocation(line: 1636, column: 2, scope: !1980)
!1985 = !DILocation(line: 1637, column: 8, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 1636, column: 30)
!1987 = !DILocation(line: 1637, column: 5, scope: !1986)
!1988 = !DILocation(line: 1638, column: 2, scope: !1986)
!1989 = !DILocation(line: 1636, column: 26, scope: !1983)
!1990 = !DILocation(line: 1636, column: 2, scope: !1983)
!1991 = distinct !{!1991, !1984, !1992, !184}
!1992 = !DILocation(line: 1638, column: 2, scope: !1980)
!1993 = !DILocation(line: 1639, column: 11, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 1639, column: 6)
!1995 = !DILocation(line: 1639, column: 6, scope: !1966)
!1996 = !DILocalVariable(name: "c", scope: !1966, file: !3, line: 1629, type: !6)
!1997 = !DILocation(line: 1641, column: 8, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 1641, column: 3)
!1999 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1639, column: 18)
!2000 = !DILocation(line: 0, scope: !1999)
!2001 = !DILocation(line: 0, scope: !1998)
!2002 = !DILocation(line: 1641, column: 17, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 1641, column: 3)
!2004 = !DILocation(line: 1641, column: 3, scope: !1998)
!2005 = !DILocation(line: 1642, column: 19, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 1641, column: 31)
!2007 = !DILocation(line: 1642, column: 9, scope: !2006)
!2008 = !DILocation(line: 1642, column: 32, scope: !2006)
!2009 = !DILocation(line: 1642, column: 38, scope: !2006)
!2010 = !DILocation(line: 1642, column: 28, scope: !2006)
!2011 = !DILocation(line: 1642, column: 26, scope: !2006)
!2012 = !DILocation(line: 1642, column: 6, scope: !2006)
!2013 = !DILocation(line: 1643, column: 3, scope: !2006)
!2014 = !DILocation(line: 1641, column: 27, scope: !2003)
!2015 = !DILocation(line: 1641, column: 3, scope: !2003)
!2016 = distinct !{!2016, !2004, !2017, !184}
!2017 = !DILocation(line: 1643, column: 3, scope: !1998)
!2018 = !DILocation(line: 1644, column: 2, scope: !1999)
!2019 = !DILocation(line: 0, scope: !1994)
!2020 = !DILocation(line: 1647, column: 9, scope: !1966)
!2021 = !DILocation(line: 1647, column: 21, scope: !1966)
!2022 = !DILocation(line: 1647, column: 19, scope: !1966)
!2023 = !DILocation(line: 1647, column: 2, scope: !1966)
!2024 = !DILocation(line: 1648, column: 1, scope: !1966)
!2025 = distinct !DISubprogram(name: "EQ0", scope: !187, file: !187, line: 844, type: !2026, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!11, !6}
!2028 = !DILocalVariable(name: "x", arg: 1, scope: !2025, file: !187, line: 844, type: !6)
!2029 = !DILocation(line: 0, scope: !2025)
!2030 = !DILocalVariable(name: "q", scope: !2025, file: !187, line: 846, type: !11)
!2031 = !DILocation(line: 849, column: 15, scope: !2025)
!2032 = !DILocation(line: 849, column: 13, scope: !2025)
!2033 = !DILocation(line: 849, column: 9, scope: !2025)
!2034 = !DILocation(line: 849, column: 19, scope: !2025)
!2035 = !DILocation(line: 849, column: 2, scope: !2025)
!2036 = distinct !DISubprogram(name: "CMP", scope: !187, file: !187, line: 835, type: !2037, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!6, !11, !11}
!2039 = !DILocalVariable(name: "x", arg: 1, scope: !2036, file: !187, line: 835, type: !11)
!2040 = !DILocation(line: 0, scope: !2036)
!2041 = !DILocalVariable(name: "y", arg: 2, scope: !2036, file: !187, line: 835, type: !11)
!2042 = !DILocation(line: 837, column: 18, scope: !2036)
!2043 = !DILocation(line: 837, column: 39, scope: !2036)
!2044 = !DILocation(line: 837, column: 29, scope: !2036)
!2045 = !DILocation(line: 837, column: 27, scope: !2036)
!2046 = !DILocation(line: 837, column: 2, scope: !2036)
!2047 = distinct !DISubprogram(name: "LT0", scope: !187, file: !187, line: 880, type: !2026, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2048 = !DILocalVariable(name: "x", arg: 1, scope: !2047, file: !187, line: 880, type: !6)
!2049 = !DILocation(line: 0, scope: !2047)
!2050 = !DILocation(line: 882, column: 21, scope: !2047)
!2051 = !DILocation(line: 882, column: 2, scope: !2047)
!2052 = distinct !DISubprogram(name: "GT", scope: !187, file: !187, line: 803, type: !709, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2053 = !DILocalVariable(name: "x", arg: 1, scope: !2052, file: !187, line: 803, type: !11)
!2054 = !DILocation(line: 0, scope: !2052)
!2055 = !DILocalVariable(name: "y", arg: 2, scope: !2052, file: !187, line: 803, type: !11)
!2056 = !DILocation(line: 819, column: 8, scope: !2052)
!2057 = !DILocalVariable(name: "z", scope: !2052, file: !187, line: 817, type: !11)
!2058 = !DILocation(line: 820, column: 18, scope: !2052)
!2059 = !DILocation(line: 820, column: 28, scope: !2052)
!2060 = !DILocation(line: 820, column: 23, scope: !2052)
!2061 = !DILocation(line: 820, column: 12, scope: !2052)
!2062 = !DILocation(line: 820, column: 35, scope: !2052)
!2063 = !DILocation(line: 820, column: 2, scope: !2052)
!2064 = distinct !DISubprogram(name: "br_ec_p256_m64_get", scope: !3, file: !3, line: 1767, type: !2065, scopeLine: 1768, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!2067}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!2068 = !DILocation(line: 1769, column: 2, scope: !2064)
